Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_yuv?download=true
inline.NumInlined: 47
inline.NumDeleted: 29
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@SDL_ConvertPixels_YUV_to_YUV:bb.a
  %lcmp.mod1000.not = icmp eq i32 %xtraiter999, 0
  br i1 %lcmp.mod1000.not, label %.prol.loopexit998, label %.prol.preheader997

.prol.preheader997:                               ; preds = %.lr.ph103.i, %.prol.preheader997
  %.3101.i.prol = phi i32 [ %i.dm, %.prol.preheader997 ], [ %i.dk, %.lr.ph103.i ]
  %.372100.i.prol = phi ptr [ %i.do, %.prol.preheader997 ], [ %.069.lcssa.i, %.lr.ph103.i ] ; 2 uses
  %.37799.i.prol = phi ptr [ %i.dn, %.prol.preheader997 ], [ %.074.lcssa.i, %.lr.ph103.i ] ; 2 uses
  %prol.iter1001 = phi i32 [ %prol.iter1001.next, %.prol.preheader997 ], [ 0, %.lr.ph103.i ]
  %i.dm = add nsw i32 %.3101.i.prol, -1           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.372100.i.prol, ptr align 1 %.37799.i.prol, i64 %i.dg, i1 false)
  %i.dn = getelementptr inbounds i8, ptr %.37799.i.prol, i64 %i.di ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %.372100.i.prol, i64 %i.dj ; 2 uses
  %prol.iter1001.next = add i32 %prol.iter1001, 1 ; 2 uses
  %prol.iter1001.cmp.not = icmp eq i32 %prol.iter1001.next, %xtraiter999
  br i1 %prol.iter1001.cmp.not, label %.prol.loopexit998, label %.prol.preheader997, !llvm.loop !137

.prol.loopexit998:                                ; preds = %.prol.preheader997, %.lr.ph103.i
  %.3101.i.unr = phi i32 [ %i.dk, %.lr.ph103.i ], [ %i.dm, %.prol.preheader997 ]
  %.372100.i.unr = phi ptr [ %.069.lcssa.i, %.lr.ph103.i ], [ %i.do, %.prol.preheader997 ]
  %.37799.i.unr = phi ptr [ %.074.lcssa.i, %.lr.ph103.i ], [ %i.dn, %.prol.preheader997 ]
  %i.dp = icmp ult i32 %i.dl, 3
  br i1 %i.dp, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.lr.ph103.i.new

.lr.ph103.i.new:                                  ; preds = %.prol.loopexit998, %.lr.ph103.i.new
  %.3101.i = phi i32 [ %i.dw, %.lr.ph103.i.new ], [ %.3101.i.unr, %.prol.loopexit998 ]
  %.372100.i = phi ptr [ %i.dy, %.lr.ph103.i.new ], [ %.372100.i.unr, %.prol.loopexit998 ] ; 2 uses
  %.37799.i = phi ptr [ %i.dx, %.lr.ph103.i.new ], [ %.37799.i.unr, %.prol.loopexit998 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.372100.i, ptr align 1 %.37799.i, i64 %i.dg, i1 false)
  %i.dq = getelementptr inbounds i8, ptr %.37799.i, i64 %i.di ; 2 uses
  %i.dr = getelementptr inbounds i8, ptr %.372100.i, i64 %i.dj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dr, ptr align 1 %i.dq, i64 %i.dg, i1 false)
  %i.ds = getelementptr inbounds i8, ptr %i.dq, i64 %i.di ; 2 uses
  %i.dt = getelementptr inbounds i8, ptr %i.dr, i64 %i.dj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dt, ptr align 1 %i.ds, i64 %i.dg, i1 false)
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 %i.di ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %i.dt, i64 %i.dj ; 2 uses
  %i.dw = add nsw i32 %.3101.i, -4                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dv, ptr align 1 %i.du, i64 %i.dg, i1 false)
  %i.dx = getelementptr inbounds i8, ptr %i.du, i64 %i.di
  %i.dy = getelementptr inbounds i8, ptr %i.dv, i64 %i.dj
  %.not82.i.3 = icmp eq i32 %i.dw, 0
  br i1 %.not82.i.3, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.lr.ph103.i.new, !llvm.loop !138

bb.i:                                             ; preds = %bb.e, %bb.e, %bb.e
  %.not88.i = icmp eq i32 %1, 0
  br i1 %.not88.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.dz = add nsw i32 %0, 1
  %i.ea = sdiv i32 %i.dz, 2
  %i.eb = shl nsw i32 %i.ea, 2
  %i.ec = sext i32 %i.eb to i64                   ; 5 uses
  %i.ed = sext i32 %6 to i64                      ; 5 uses
  %i.ee = sext i32 %11 to i64                     ; 5 uses
  %i.ef = add i32 %1, -1
  %xtraiter989 = and i32 %1, 3                    ; 2 uses
  %lcmp.mod990.not = icmp eq i32 %xtraiter989, 0
  br i1 %lcmp.mod990.not, label %.prol.loopexit988, label %.prol.preheader987

.prol.preheader987:                               ; preds = %.lr.ph.i, %.prol.preheader987
  %.491.i.prol = phi i32 [ %i.eg, %.prol.preheader987 ], [ %1, %.lr.ph.i ]
  %.47390.i.prol = phi ptr [ %i.ei, %.prol.preheader987 ], [ %10, %.lr.ph.i ] ; 2 uses
  %.47889.i.prol = phi ptr [ %i.eh, %.prol.preheader987 ], [ %5, %.lr.ph.i ] ; 2 uses
  %prol.iter991 = phi i32 [ %prol.iter991.next, %.prol.preheader987 ], [ 0, %.lr.ph.i ]
  %i.eg = add nsw i32 %.491.i.prol, -1            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.47390.i.prol, ptr align 1 %.47889.i.prol, i64 %i.ec, i1 false)
  %i.eh = getelementptr inbounds i8, ptr %.47889.i.prol, i64 %i.ed ; 2 uses
  %i.ei = getelementptr inbounds i8, ptr %.47390.i.prol, i64 %i.ee ; 2 uses
  %prol.iter991.next = add i32 %prol.iter991, 1   ; 2 uses
  %prol.iter991.cmp.not = icmp eq i32 %prol.iter991.next, %xtraiter989
  br i1 %prol.iter991.cmp.not, label %.prol.loopexit988, label %.prol.preheader987, !llvm.loop !139

.prol.loopexit988:                                ; preds = %.prol.preheader987, %.lr.ph.i
  %.491.i.unr = phi i32 [ %1, %.lr.ph.i ], [ %i.eg, %.prol.preheader987 ]
  %.47390.i.unr = phi ptr [ %10, %.lr.ph.i ], [ %i.ei, %.prol.preheader987 ]
  %.47889.i.unr = phi ptr [ %5, %.lr.ph.i ], [ %i.eh, %.prol.preheader987 ]
  %i.ej = icmp ult i32 %i.ef, 3
  br i1 %i.ej, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit988, %.lr.ph.i.new
  %.491.i = phi i32 [ %i.eq, %.lr.ph.i.new ], [ %.491.i.unr, %.prol.loopexit988 ]
  %.47390.i = phi ptr [ %i.es, %.lr.ph.i.new ], [ %.47390.i.unr, %.prol.loopexit988 ] ; 2 uses
  %.47889.i = phi ptr [ %i.er, %.lr.ph.i.new ], [ %.47889.i.unr, %.prol.loopexit988 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.47390.i, ptr align 1 %.47889.i, i64 %i.ec, i1 false)
  %i.ek = getelementptr inbounds i8, ptr %.47889.i, i64 %i.ed ; 2 uses
  %i.el = getelementptr inbounds i8, ptr %.47390.i, i64 %i.ee ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr align 1 %i.ek, i64 %i.ec, i1 false)
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.ed ; 2 uses
  %i.en = getelementptr inbounds i8, ptr %i.el, i64 %i.ee ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.en, ptr align 1 %i.em, i64 %i.ec, i1 false)
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 %i.ed ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 %i.ee ; 2 uses
  %i.eq = add nsw i32 %.491.i, -4                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ep, ptr align 1 %i.eo, i64 %i.ec, i1 false)
  %i.er = getelementptr inbounds i8, ptr %i.eo, i64 %i.ed
  %i.es = getelementptr inbounds i8, ptr %i.ep, i64 %i.ee
  %.not.i.3 = icmp eq i32 %i.eq, 0
  br i1 %.not.i.3, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.lr.ph.i.new, !llvm.loop !140

IsPacked4Format.exit.i:                           ; preds = %bb.e
  %i.et = tail call ptr @SDL_GetPixelFormatName_REAL(i32 noundef %2) #6
  %i.eu = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.16, ptr noundef %i.et) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.j:                                             ; preds = %bb.c
  switch i32 %2, label %IsPacked4Format.exit74 [
    i32 1448433993, label %bb.k
    i32 842094169, label %bb.k
    i32 842094158, label %bb.k
    i32 825382478, label %bb.k
    i32 808530000, label %bb.k
    i32 1498831189, label %bb.bf
    i32 844715353, label %bb.bf
    i32 1431918169, label %bb.bf
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  switch i32 %7, label %IsPlanar2x2Format.exit [
    i32 1448433993, label %bb.l
    i32 842094169, label %bb.l
    i32 842094158, label %bb.l
    i32 825382478, label %bb.l
    i32 808530000, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k, %bb.k, %bb.k
  %.not.i60 = icmp eq ptr %5, %10
  %.not97328.i = icmp eq i32 %1, 0
  %or.cond.i = or i1 %.not97328.i, %.not.i60
  br i1 %or.cond.i, label %.loopexit.i, label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %bb.l
  %i.ev = sext i32 %0 to i64                      ; 5 uses
  %i.ew = sext i32 %6 to i64                      ; 5 uses
  %i.ex = sext i32 %11 to i64                     ; 5 uses
  %i.ey = add i32 %1, -1
  %xtraiter = and i32 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i61, %.prol.preheader
  %.0331.i.prol = phi ptr [ %i.fb, %.prol.preheader ], [ %10, %.lr.ph.i61 ] ; 2 uses
  %.092330.i.prol = phi ptr [ %i.fa, %.prol.preheader ], [ %5, %.lr.ph.i61 ] ; 2 uses
  %.093329.i.prol = phi i32 [ %i.ez, %.prol.preheader ], [ %1, %.lr.ph.i61 ]
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i61 ]
  %i.ez = add nsw i32 %.093329.i.prol, -1         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0331.i.prol, ptr align 1 %.092330.i.prol, i64 %i.ev, i1 false)
  %i.fa = getelementptr inbounds i8, ptr %.092330.i.prol, i64 %i.ew ; 2 uses
  %i.fb = getelementptr inbounds i8, ptr %.0331.i.prol, i64 %i.ex ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !141

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i61
  %.0331.i.unr = phi ptr [ %10, %.lr.ph.i61 ], [ %i.fb, %.prol.preheader ]
  %.092330.i.unr = phi ptr [ %5, %.lr.ph.i61 ], [ %i.fa, %.prol.preheader ]
  %.093329.i.unr = phi i32 [ %1, %.lr.ph.i61 ], [ %i.ez, %.prol.preheader ]
  %i.fc = icmp ult i32 %i.ey, 3
  br i1 %i.fc, label %.loopexit.i, label %.lr.ph.i61.new

.lr.ph.i61.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i61.new
  %.0331.i = phi ptr [ %i.fl, %.lr.ph.i61.new ], [ %.0331.i.unr, %.prol.loopexit ] ; 2 uses
  %.092330.i = phi ptr [ %i.fk, %.lr.ph.i61.new ], [ %.092330.i.unr, %.prol.loopexit ] ; 2 uses
  %.093329.i = phi i32 [ %i.fj, %.lr.ph.i61.new ], [ %.093329.i.unr, %.prol.loopexit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0331.i, ptr align 1 %.092330.i, i64 %i.ev, i1 false)
  %i.fd = getelementptr inbounds i8, ptr %.092330.i, i64 %i.ew ; 2 uses
  %i.fe = getelementptr inbounds i8, ptr %.0331.i, i64 %i.ex ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fe, ptr align 1 %i.fd, i64 %i.ev, i1 false)
  %i.ff = getelementptr inbounds i8, ptr %i.fd, i64 %i.ew ; 2 uses
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 %i.ex ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fg, ptr align 1 %i.ff, i64 %i.ev, i1 false)
  %i.fh = getelementptr inbounds i8, ptr %i.ff, i64 %i.ew ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %i.fg, i64 %i.ex ; 2 uses
  %i.fj = add nsw i32 %.093329.i, -4              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fi, ptr align 1 %i.fh, i64 %i.ev, i1 false)
  %i.fk = getelementptr inbounds i8, ptr %i.fh, i64 %i.ew
  %i.fl = getelementptr inbounds i8, ptr %i.fi, i64 %i.ex
  %.not97.i.3 = icmp eq i32 %i.fj, 0
  br i1 %.not97.i.3, label %.loopexit.i, label %.lr.ph.i61.new, !llvm.loop !142

.loopexit.i:                                      ; preds = %.prol.loopexit, %.lr.ph.i61.new, %bb.l
  switch i32 %2, label %bb.be [
    i32 842094169, label %bb.m
    i32 1448433993, label %bb.w
    i32 842094158, label %bb.ag
    i32 825382478, label %bb.as
  ]

bb.m:                                             ; preds = %.loopexit.i
  switch i32 %7, label %bb.be [
    i32 1448433993, label %bb.n
    i32 842094158, label %bb.o
    i32 825382478, label %bb.s
  ]

bb.n:                                             ; preds = %bb.m
  %i.fm = tail call fastcc zeroext i1 @SDL_ConvertPixels_SwapUVPlanes(i32 noundef %0, i32 noundef %1, ptr noundef %5, i32 noundef %6, ptr noundef %10, i32 noundef %11)
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.o:                                             ; preds = %bb.m
  %i.fn = add i32 %0, 1
  %i.fo = sdiv i32 %i.fn, 2                       ; 7 uses
  %i.fp = add nsw i32 %1, 1
  %i.fq = sdiv i32 %i.fp, 2                       ; 3 uses
  %i.fr = add nsw i32 %6, 1
  %i.fs = sdiv i32 %i.fr, 2                       ; 3 uses
  %i.ft = sub nsw i32 %i.fs, %i.fo
  %i.fu = add nsw i32 %11, 1
  %i.fv = sdiv i32 %i.fu, 2
  %i.fw = sub nsw i32 %i.fv, %i.fo
  %i.fx = shl nsw i32 %i.fw, 1
  %i.fy = mul nsw i32 %6, %1
  %i.fz = sext i32 %i.fy to i64
  %i.ga = getelementptr inbounds i8, ptr %5, i64 %i.fz ; 3 uses
  %i.gb = mul nsw i32 %11, %1
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds i8, ptr %10, i64 %i.gc ; 2 uses
  %i.ge = icmp eq ptr %i.ga, %i.gd
  br i1 %i.ge, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gf = sext i32 %i.fq to i64
  %i.gg = shl nsw i64 %i.gf, 1
  %i.gh = sext i32 %i.fs to i64
  %i.gi = mul nsw i64 %i.gg, %i.gh                ; 2 uses
  %i.gj = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.gi) #6 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gj, ptr readonly align 1 %i.ga, i64 %i.gi, i1 false)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.058.i.i.i = phi ptr [ %i.gj, %bb.q ], [ %i.ga, %bb.o ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.gj, %bb.q ], [ null, %bb.o ]
  %.off.i.i.i = add i32 %1, 2
  %.not6271.i.i.i = icmp ult i32 %.off.i.i.i, 3
  br i1 %.not6271.i.i.i, label %._crit_edge75.split.i.i.i, label %.preheader.lr.ph.i.i.i

.preheader.lr.ph.i.i.i:                           ; preds = %bb.r
  %.off76.i.i.i = add i32 %0, 2
  %.not6364.i.i.i = icmp ult i32 %.off76.i.i.i, 3
  %i.gk = sext i32 %i.ft to i64                   ; 2 uses
  %i.gl = sext i32 %i.fx to i64
  br i1 %.not6364.i.i.i, label %._crit_edge75.split.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.preheader.lr.ph.i.i.i
  %i.gm = mul nsw i32 %i.fs, %i.fq
  %i.gn = sext i32 %i.gm to i64
  %i.go = getelementptr inbounds i8, ptr %.058.i.i.i, i64 %i.gn
  %i.gp = add nsw i32 %i.fo, -1                   ; 4 uses
  %i.gq = zext i32 %i.gp to i64                   ; 2 uses
  %i.gr = shl nuw nsw i64 %i.gq, 1
  %i.gs = add nuw nsw i64 %i.gq, 1                ; 2 uses
  %i.gt = zext i32 %i.gp to i64
  %i.gu = add nuw nsw i64 %i.gt, 1                ; 5 uses
  %min.iters.check733 = icmp ult i32 %i.gp, 3
  %min.iters.check735 = icmp ult i32 %i.gp, 15
  %i.gv = and i64 %i.gu, 12
  %n.vec737 = and i64 %i.gu, 8589934576           ; 7 uses
  %i.gw = shl nuw nsw i64 %n.vec737, 1
  %i.gx = trunc i64 %n.vec737 to i32
  %i.gy = sub i32 %i.fo, %i.gx
  %cmp.n752 = icmp eq i64 %i.gu, %n.vec737
  %min.epilog.iters.check760 = icmp eq i64 %i.gv, 0
  %n.vec762 = and i64 %i.gu, 8589934588           ; 6 uses
  %i.gz = shl nuw nsw i64 %n.vec762, 1
  %i.ha = trunc i64 %n.vec762 to i32
  %i.hb = sub i32 %i.fo, %i.ha
  %cmp.n773 = icmp eq i64 %i.gu, %n.vec762
  br label %iter.check757

iter.check757:                                    ; preds = %._crit_edge.i.i.i, %.preheader.preheader.i.i.i
  %.in.i.i.i = phi i32 [ %i.iy, %._crit_edge.i.i.i ], [ %i.fq, %.preheader.preheader.i.i.i ]
  %.04974.i.i.i = phi ptr [ %i.jb, %._crit_edge.i.i.i ], [ %i.gd, %.preheader.preheader.i.i.i ] ; 10 uses
  %.15173.i.i.i = phi ptr [ %i.ja, %._crit_edge.i.i.i ], [ %.058.i.i.i, %.preheader.preheader.i.i.i ] ; 8 uses
  %.15372.i.i.i = phi ptr [ %i.iz, %._crit_edge.i.i.i ], [ %i.go, %.preheader.preheader.i.i.i ] ; 8 uses
  br i1 %min.iters.check733, label %vec.epilog.scalar.ph758.preheader, label %vector.memcheck722

vector.memcheck722:                               ; preds = %iter.check757
  %i.hc = getelementptr i8, ptr %.04974.i.i.i, i64 %i.gr
  %scevgep723 = getelementptr i8, ptr %i.hc, i64 2 ; 2 uses
  %scevgep724 = getelementptr i8, ptr %.15173.i.i.i, i64 %i.gs
  %scevgep725 = getelementptr i8, ptr %.15372.i.i.i, i64 %i.gs
  %bound0726 = icmp ult ptr %.04974.i.i.i, %scevgep724
  %bound1727 = icmp ult ptr %.15173.i.i.i, %scevgep723
  %found.conflict728 = and i1 %bound0726, %bound1727
  %bound0729 = icmp ult ptr %.04974.i.i.i, %scevgep725
  %bound1730 = icmp ult ptr %.15372.i.i.i, %scevgep723
  %found.conflict731 = and i1 %bound0729, %bound1730
  %conflict.rdx732 = or i1 %found.conflict728, %found.conflict731
  br i1 %conflict.rdx732, label %vec.epilog.scalar.ph758.preheader, label %vector.main.loop.iter.check734

vector.main.loop.iter.check734:                   ; preds = %vector.memcheck722
  br i1 %min.iters.check735, label %vec.epilog.ph761, label %vector.ph736

vector.ph736:                                     ; preds = %vector.main.loop.iter.check734
  %i.hd = getelementptr i8, ptr %.04974.i.i.i, i64 %i.gw ; 2 uses
  %i.he = getelementptr i8, ptr %.15173.i.i.i, i64 %n.vec737 ; 2 uses
  %i.hf = getelementptr i8, ptr %.15372.i.i.i, i64 %n.vec737 ; 2 uses
  br label %vector.body738

vector.body738:                                   ; preds = %vector.body738, %vector.ph736
  %index739 = phi i64 [ 0, %vector.ph736 ], [ %index.next750, %vector.body738 ] ; 4 uses
  %i.hg = shl i64 %index739, 1                    ; 2 uses
  %next.gep740 = getelementptr i8, ptr %.04974.i.i.i, i64 %i.hg
  %i.hh = getelementptr i8, ptr %.04974.i.i.i, i64 %i.hg
  %next.gep741 = getelementptr i8, ptr %i.hh, i64 16
  %next.gep742 = getelementptr i8, ptr %.15173.i.i.i, i64 %index739 ; 2 uses
  %next.gep743 = getelementptr i8, ptr %.15372.i.i.i, i64 %index739 ; 2 uses
  %i.hi = getelementptr i8, ptr %next.gep743, i64 8
  %wide.load744 = load <8 x i8>, ptr %next.gep743, align 1, !alias.scope !143
  %wide.load745 = load <8 x i8>, ptr %i.hi, align 1, !alias.scope !143
  %i.hj = getelementptr i8, ptr %next.gep742, i64 8
  %wide.load746 = load <8 x i8>, ptr %next.gep742, align 1, !alias.scope !146
  %wide.load747 = load <8 x i8>, ptr %i.hj, align 1, !alias.scope !146
  %interleaved.vec748 = shufflevector <8 x i8> %wide.load744, <8 x i8> %wide.load746, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec748, ptr %next.gep740, align 1, !alias.scope !148, !noalias !150
  %interleaved.vec749 = shufflevector <8 x i8> %wide.load745, <8 x i8> %wide.load747, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec749, ptr %next.gep741, align 1, !alias.scope !148, !noalias !150
  %index.next750 = add nuw i64 %index739, 16      ; 2 uses
  %i.hk = icmp eq i64 %index.next750, %n.vec737
  br i1 %i.hk, label %middle.block751, label %vector.body738, !llvm.loop !151

middle.block751:                                  ; preds = %vector.body738
  br i1 %cmp.n752, label %._crit_edge.i.i.i, label %vec.epilog.iter.check759

vec.epilog.iter.check759:                         ; preds = %middle.block751
  br i1 %min.epilog.iters.check760, label %vec.epilog.scalar.ph758.preheader, label %vec.epilog.ph761, !prof !152

vec.epilog.ph761:                                 ; preds = %vector.main.loop.iter.check734, %vec.epilog.iter.check759
  %vec.epilog.resume.val753 = phi i64 [ %n.vec737, %vec.epilog.iter.check759 ], [ 0, %vector.main.loop.iter.check734 ]
  %i.hl = getelementptr i8, ptr %.04974.i.i.i, i64 %i.gz ; 2 uses
  %i.hm = getelementptr i8, ptr %.15173.i.i.i, i64 %n.vec762 ; 2 uses
  %i.hn = getelementptr i8, ptr %.15372.i.i.i, i64 %n.vec762 ; 2 uses
  br label %vec.epilog.vector.body763

vec.epilog.vector.body763:                        ; preds = %vec.epilog.vector.body763, %vec.epilog.ph761
  %index764 = phi i64 [ %vec.epilog.resume.val753, %vec.epilog.ph761 ], [ %index.next771, %vec.epilog.vector.body763 ] ; 4 uses
  %i.ho = shl i64 %index764, 1
  %next.gep765 = getelementptr i8, ptr %.04974.i.i.i, i64 %i.ho
  %next.gep766 = getelementptr i8, ptr %.15173.i.i.i, i64 %index764
  %next.gep767 = getelementptr i8, ptr %.15372.i.i.i, i64 %index764
  %wide.load768 = load <4 x i8>, ptr %next.gep767, align 1, !alias.scope !143
  %wide.load769 = load <4 x i8>, ptr %next.gep766, align 1, !alias.scope !146
  %interleaved.vec770 = shufflevector <4 x i8> %wide.load768, <4 x i8> %wide.load769, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec770, ptr %next.gep765, align 1, !alias.scope !148, !noalias !150
  %index.next771 = add nuw i64 %index764, 4       ; 2 uses
  %i.hp = icmp eq i64 %index.next771, %n.vec762
  br i1 %i.hp, label %vec.epilog.middle.block772, label %vec.epilog.vector.body763, !llvm.loop !153

vec.epilog.middle.block772:                       ; preds = %vec.epilog.vector.body763
  br i1 %cmp.n773, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph758.preheader

vec.epilog.scalar.ph758.preheader:                ; preds = %vector.memcheck722, %iter.check757, %vec.epilog.iter.check759, %vec.epilog.middle.block772
  %.168.i.i.i.ph = phi ptr [ %.04974.i.i.i, %iter.check757 ], [ %.04974.i.i.i, %vector.memcheck722 ], [ %i.hd, %vec.epilog.iter.check759 ], [ %i.hl, %vec.epilog.middle.block772 ] ; 2 uses
  %.267.i.i.i.ph = phi ptr [ %.15173.i.i.i, %iter.check757 ], [ %.15173.i.i.i, %vector.memcheck722 ], [ %i.he, %vec.epilog.iter.check759 ], [ %i.hm, %vec.epilog.middle.block772 ] ; 2 uses
  %.25466.i.i.i.ph = phi ptr [ %.15372.i.i.i, %iter.check757 ], [ %.15372.i.i.i, %vector.memcheck722 ], [ %i.hf, %vec.epilog.iter.check759 ], [ %i.hn, %vec.epilog.middle.block772 ] ; 2 uses
  %.05665.i.i.i.ph = phi i32 [ %i.fo, %iter.check757 ], [ %i.fo, %vector.memcheck722 ], [ %i.gy, %vec.epilog.iter.check759 ], [ %i.hb, %vec.epilog.middle.block772 ] ; 4 uses
  %i.hq = add nsw i32 %.05665.i.i.i.ph, -1
  %xtraiter912 = and i32 %.05665.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod913.not = icmp eq i32 %xtraiter912, 0
  br i1 %lcmp.mod913.not, label %vec.epilog.scalar.ph758.prol.loopexit, label %vec.epilog.scalar.ph758.prol

vec.epilog.scalar.ph758.prol:                     ; preds = %vec.epilog.scalar.ph758.preheader, %vec.epilog.scalar.ph758.prol
  %.168.i.i.i.prol = phi ptr [ %i.hx, %vec.epilog.scalar.ph758.prol ], [ %.168.i.i.i.ph, %vec.epilog.scalar.ph758.preheader ] ; 3 uses
  %.267.i.i.i.prol = phi ptr [ %i.hv, %vec.epilog.scalar.ph758.prol ], [ %.267.i.i.i.ph, %vec.epilog.scalar.ph758.preheader ] ; 2 uses
  %.25466.i.i.i.prol = phi ptr [ %i.hs, %vec.epilog.scalar.ph758.prol ], [ %.25466.i.i.i.ph, %vec.epilog.scalar.ph758.preheader ] ; 2 uses
  %.05665.i.i.i.prol = phi i32 [ %i.hr, %vec.epilog.scalar.ph758.prol ], [ %.05665.i.i.i.ph, %vec.epilog.scalar.ph758.preheader ]
  %prol.iter914 = phi i32 [ %prol.iter914.next, %vec.epilog.scalar.ph758.prol ], [ 0, %vec.epilog.scalar.ph758.preheader ]
  %i.hr = add nsw i32 %.05665.i.i.i.prol, -1      ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.25466.i.i.i.prol, i64 1 ; 3 uses
  %i.ht = load i8, ptr %.25466.i.i.i.prol, align 1
  %i.hu = getelementptr inbounds nuw i8, ptr %.168.i.i.i.prol, i64 1
  store i8 %i.ht, ptr %.168.i.i.i.prol, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %.267.i.i.i.prol, i64 1 ; 3 uses
  %i.hw = load i8, ptr %.267.i.i.i.prol, align 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.168.i.i.i.prol, i64 2 ; 3 uses
  store i8 %i.hw, ptr %i.hu, align 1
  %prol.iter914.next = add i32 %prol.iter914, 1   ; 2 uses
  %prol.iter914.cmp.not = icmp eq i32 %prol.iter914.next, %xtraiter912
  br i1 %prol.iter914.cmp.not, label %vec.epilog.scalar.ph758.prol.loopexit, label %vec.epilog.scalar.ph758.prol, !llvm.loop !154

vec.epilog.scalar.ph758.prol.loopexit:            ; preds = %vec.epilog.scalar.ph758.prol, %vec.epilog.scalar.ph758.preheader
  %.lcssa833.unr = phi ptr [ poison, %vec.epilog.scalar.ph758.preheader ], [ %i.hs, %vec.epilog.scalar.ph758.prol ]
  %.lcssa832.unr = phi ptr [ poison, %vec.epilog.scalar.ph758.preheader ], [ %i.hv, %vec.epilog.scalar.ph758.prol ]
  %.lcssa831.unr = phi ptr [ poison, %vec.epilog.scalar.ph758.preheader ], [ %i.hx, %vec.epilog.scalar.ph758.prol ]
  %.168.i.i.i.unr = phi ptr [ %.168.i.i.i.ph, %vec.epilog.scalar.ph758.preheader ], [ %i.hx, %vec.epilog.scalar.ph758.prol ]
  %.267.i.i.i.unr = phi ptr [ %.267.i.i.i.ph, %vec.epilog.scalar.ph758.preheader ], [ %i.hv, %vec.epilog.scalar.ph758.prol ]
  %.25466.i.i.i.unr = phi ptr [ %.25466.i.i.i.ph, %vec.epilog.scalar.ph758.preheader ], [ %i.hs, %vec.epilog.scalar.ph758.prol ]
  %.05665.i.i.i.unr = phi i32 [ %.05665.i.i.i.ph, %vec.epilog.scalar.ph758.preheader ], [ %i.hr, %vec.epilog.scalar.ph758.prol ]
  %i.hy = icmp ult i32 %i.hq, 3
  br i1 %i.hy, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph758

vec.epilog.scalar.ph758:                          ; preds = %vec.epilog.scalar.ph758.prol.loopexit, %vec.epilog.scalar.ph758
  %.168.i.i.i = phi ptr [ %i.ix, %vec.epilog.scalar.ph758 ], [ %.168.i.i.i.unr, %vec.epilog.scalar.ph758.prol.loopexit ] ; 9 uses
  %.267.i.i.i = phi ptr [ %i.iv, %vec.epilog.scalar.ph758 ], [ %.267.i.i.i.unr, %vec.epilog.scalar.ph758.prol.loopexit ] ; 5 uses
  %.25466.i.i.i = phi ptr [ %i.is, %vec.epilog.scalar.ph758 ], [ %.25466.i.i.i.unr, %vec.epilog.scalar.ph758.prol.loopexit ] ; 5 uses
  %.05665.i.i.i = phi i32 [ %i.ir, %vec.epilog.scalar.ph758 ], [ %.05665.i.i.i.unr, %vec.epilog.scalar.ph758.prol.loopexit ]
  %i.hz = getelementptr inbounds nuw i8, ptr %.25466.i.i.i, i64 1
  %i.ia = load i8, ptr %.25466.i.i.i, align 1
  %i.ib = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 1
  store i8 %i.ia, ptr %.168.i.i.i, align 1
  %i.ic = getelementptr inbounds nuw i8, ptr %.267.i.i.i, i64 1
  %i.id = load i8, ptr %.267.i.i.i, align 1
  %i.ie = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 2
  store i8 %i.id, ptr %i.ib, align 1
  %i.if = getelementptr inbounds nuw i8, ptr %.25466.i.i.i, i64 2
  %i.ig = load i8, ptr %i.hz, align 1
  %i.ih = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 3
  store i8 %i.ig, ptr %i.ie, align 1
  %i.ii = getelementptr inbounds nuw i8, ptr %.267.i.i.i, i64 2
  %i.ij = load i8, ptr %i.ic, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 4
  store i8 %i.ij, ptr %i.ih, align 1
  %i.il = getelementptr inbounds nuw i8, ptr %.25466.i.i.i, i64 3
  %i.im = load i8, ptr %i.if, align 1
  %i.in = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 5
  store i8 %i.im, ptr %i.ik, align 1
  %i.io = getelementptr inbounds nuw i8, ptr %.267.i.i.i, i64 3
  %i.ip = load i8, ptr %i.ii, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 6
  store i8 %i.ip, ptr %i.in, align 1
  %i.ir = add nsw i32 %.05665.i.i.i, -4           ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.25466.i.i.i, i64 4 ; 2 uses
  %i.it = load i8, ptr %i.il, align 1
  %i.iu = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 7
  store i8 %i.it, ptr %i.iq, align 1
  %i.iv = getelementptr inbounds nuw i8, ptr %.267.i.i.i, i64 4 ; 2 uses
  %i.iw = load i8, ptr %i.io, align 1
  %i.ix = getelementptr inbounds nuw i8, ptr %.168.i.i.i, i64 8 ; 2 uses
  store i8 %i.iw, ptr %i.iu, align 1
  %.not63.i.i.i.3 = icmp eq i32 %i.ir, 0
  br i1 %.not63.i.i.i.3, label %._crit_edge.i.i.i, label %vec.epilog.scalar.ph758, !llvm.loop !155

._crit_edge.i.i.i:                                ; preds = %vec.epilog.scalar.ph758.prol.loopexit, %vec.epilog.scalar.ph758, %vec.epilog.middle.block772, %middle.block751
  %.lcssa475 = phi ptr [ %i.hn, %vec.epilog.middle.block772 ], [ %i.hf, %middle.block751 ], [ %.lcssa833.unr, %vec.epilog.scalar.ph758.prol.loopexit ], [ %i.is, %vec.epilog.scalar.ph758 ]
  %.lcssa474 = phi ptr [ %i.hm, %vec.epilog.middle.block772 ], [ %i.he, %middle.block751 ], [ %.lcssa832.unr, %vec.epilog.scalar.ph758.prol.loopexit ], [ %i.iv, %vec.epilog.scalar.ph758 ]
  %.lcssa473 = phi ptr [ %i.hl, %vec.epilog.middle.block772 ], [ %i.hd, %middle.block751 ], [ %.lcssa831.unr, %vec.epilog.scalar.ph758.prol.loopexit ], [ %i.ix, %vec.epilog.scalar.ph758 ]
  %i.iy = add nsw i32 %.in.i.i.i, -1              ; 2 uses
  %i.iz = getelementptr inbounds i8, ptr %.lcssa475, i64 %i.gk
  %i.ja = getelementptr inbounds i8, ptr %.lcssa474, i64 %i.gk
  %i.jb = getelementptr inbounds i8, ptr %.lcssa473, i64 %i.gl
  %.not62.i.i.i = icmp eq i32 %i.iy, 0
  br i1 %.not62.i.i.i, label %._crit_edge75.split.i.i.i, label %iter.check757, !llvm.loop !156

._crit_edge75.split.i.i.i:                        ; preds = %._crit_edge.i.i.i, %.preheader.lr.ph.i.i.i, %bb.r
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.s:                                             ; preds = %bb.m
  %i.jc = add i32 %0, 1
  %i.jd = sdiv i32 %i.jc, 2                       ; 7 uses
  %i.je = add nsw i32 %1, 1
  %i.jf = sdiv i32 %i.je, 2                       ; 3 uses
  %i.jg = add nsw i32 %6, 1
  %i.jh = sdiv i32 %i.jg, 2                       ; 3 uses
  %i.ji = sub nsw i32 %i.jh, %i.jd
  %i.jj = add nsw i32 %11, 1
  %i.jk = sdiv i32 %i.jj, 2
  %i.jl = sub nsw i32 %i.jk, %i.jd
  %i.jm = shl nsw i32 %i.jl, 1
  %i.jn = mul nsw i32 %6, %1
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds i8, ptr %5, i64 %i.jo ; 3 uses
  %i.jq = mul nsw i32 %11, %1
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds i8, ptr %10, i64 %i.jr ; 2 uses
  %i.jt = icmp eq ptr %i.jp, %i.js
  br i1 %i.jt, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.ju = sext i32 %i.jf to i64
  %i.jv = shl nsw i64 %i.ju, 1
  %i.jw = sext i32 %i.jh to i64
  %i.jx = mul nsw i64 %i.jv, %i.jw                ; 2 uses
  %i.jy = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.jx) #6 ; 4 uses
  %.not.i.i120.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i120.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jy, ptr readonly align 1 %i.jp, i64 %i.jx, i1 false)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %.058.i.i98.i = phi ptr [ %i.jy, %bb.u ], [ %i.jp, %bb.s ] ; 2 uses
  %.0.i.i99.i = phi ptr [ %i.jy, %bb.u ], [ null, %bb.s ]
  %.off.i.i100.i = add i32 %1, 2
  %.not6271.i.i101.i = icmp ult i32 %.off.i.i100.i, 3
  br i1 %.not6271.i.i101.i, label %._crit_edge75.split.i.i118.i, label %.preheader.lr.ph.i.i102.i

.preheader.lr.ph.i.i102.i:                        ; preds = %bb.v
  %.off76.i.i103.i = add i32 %0, 2
  %.not6364.i.i104.i = icmp ult i32 %.off76.i.i103.i, 3
  %i.jz = sext i32 %i.ji to i64                   ; 2 uses
  %i.ka = sext i32 %i.jm to i64
  br i1 %.not6364.i.i104.i, label %._crit_edge75.split.i.i118.i, label %.preheader.preheader.i.i105.i

.preheader.preheader.i.i105.i:                    ; preds = %.preheader.lr.ph.i.i102.i
  %i.kb = mul nsw i32 %i.jh, %i.jf
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds i8, ptr %.058.i.i98.i, i64 %i.kc
  %i.ke = add nsw i32 %i.jd, -1                   ; 4 uses
  %i.kf = zext i32 %i.ke to i64                   ; 2 uses
  %i.kg = shl nuw nsw i64 %i.kf, 1
  %i.kh = add nuw nsw i64 %i.kf, 1                ; 2 uses
  %i.ki = zext i32 %i.ke to i64
  %i.kj = add nuw nsw i64 %i.ki, 1                ; 5 uses
  %min.iters.check677 = icmp ult i32 %i.ke, 3
  %min.iters.check679 = icmp ult i32 %i.ke, 15
  %i.kk = and i64 %i.kj, 12
  %n.vec681 = and i64 %i.kj, 8589934576           ; 7 uses
  %i.kl = shl nuw nsw i64 %n.vec681, 1
  %i.km = trunc i64 %n.vec681 to i32
  %i.kn = sub i32 %i.jd, %i.km
  %cmp.n696 = icmp eq i64 %i.kj, %n.vec681
  %min.epilog.iters.check704 = icmp eq i64 %i.kk, 0
  %n.vec706 = and i64 %i.kj, 8589934588           ; 6 uses
  %i.ko = shl nuw nsw i64 %n.vec706, 1
  %i.kp = trunc i64 %n.vec706 to i32
  %i.kq = sub i32 %i.jd, %i.kp
  %cmp.n717 = icmp eq i64 %i.kj, %n.vec706
  br label %iter.check701

iter.check701:                                    ; preds = %._crit_edge.i.i116.i, %.preheader.preheader.i.i105.i
  %.in.i.i107.i = phi i32 [ %i.mn, %._crit_edge.i.i116.i ], [ %i.jf, %.preheader.preheader.i.i105.i ]
  %.04974.i.i108.i = phi ptr [ %i.mq, %._crit_edge.i.i116.i ], [ %i.js, %.preheader.preheader.i.i105.i ] ; 10 uses
  %.15173.i.i109.i = phi ptr [ %i.mp, %._crit_edge.i.i116.i ], [ %i.kd, %.preheader.preheader.i.i105.i ] ; 8 uses
  %.15372.i.i110.i = phi ptr [ %i.mo, %._crit_edge.i.i116.i ], [ %.058.i.i98.i, %.preheader.preheader.i.i105.i ] ; 8 uses
  br i1 %min.iters.check677, label %vec.epilog.scalar.ph702.preheader, label %vector.memcheck666

vector.memcheck666:                               ; preds = %iter.check701
  %i.kr = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.kg
  %scevgep667 = getelementptr i8, ptr %i.kr, i64 2 ; 2 uses
  %scevgep668 = getelementptr i8, ptr %.15173.i.i109.i, i64 %i.kh
  %scevgep669 = getelementptr i8, ptr %.15372.i.i110.i, i64 %i.kh
  %bound0670 = icmp ult ptr %.04974.i.i108.i, %scevgep668
  %bound1671 = icmp ult ptr %.15173.i.i109.i, %scevgep667
  %found.conflict672 = and i1 %bound0670, %bound1671
  %bound0673 = icmp ult ptr %.04974.i.i108.i, %scevgep669
  %bound1674 = icmp ult ptr %.15372.i.i110.i, %scevgep667
  %found.conflict675 = and i1 %bound0673, %bound1674
  %conflict.rdx676 = or i1 %found.conflict672, %found.conflict675
  br i1 %conflict.rdx676, label %vec.epilog.scalar.ph702.preheader, label %vector.main.loop.iter.check678

vector.main.loop.iter.check678:                   ; preds = %vector.memcheck666
  br i1 %min.iters.check679, label %vec.epilog.ph705, label %vector.ph680

vector.ph680:                                     ; preds = %vector.main.loop.iter.check678
  %i.ks = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.kl ; 2 uses
  %i.kt = getelementptr i8, ptr %.15173.i.i109.i, i64 %n.vec681 ; 2 uses
  %i.ku = getelementptr i8, ptr %.15372.i.i110.i, i64 %n.vec681 ; 2 uses
  br label %vector.body682

vector.body682:                                   ; preds = %vector.body682, %vector.ph680
  %index683 = phi i64 [ 0, %vector.ph680 ], [ %index.next694, %vector.body682 ] ; 4 uses
  %i.kv = shl i64 %index683, 1                    ; 2 uses
  %next.gep684 = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.kv
  %i.kw = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.kv
  %next.gep685 = getelementptr i8, ptr %i.kw, i64 16
  %next.gep686 = getelementptr i8, ptr %.15173.i.i109.i, i64 %index683 ; 2 uses
  %next.gep687 = getelementptr i8, ptr %.15372.i.i110.i, i64 %index683 ; 2 uses
  %i.kx = getelementptr i8, ptr %next.gep687, i64 8
  %wide.load688 = load <8 x i8>, ptr %next.gep687, align 1, !alias.scope !157
  %wide.load689 = load <8 x i8>, ptr %i.kx, align 1, !alias.scope !157
  %i.ky = getelementptr i8, ptr %next.gep686, i64 8
  %wide.load690 = load <8 x i8>, ptr %next.gep686, align 1, !alias.scope !160
  %wide.load691 = load <8 x i8>, ptr %i.ky, align 1, !alias.scope !160
  %interleaved.vec692 = shufflevector <8 x i8> %wide.load688, <8 x i8> %wide.load690, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec692, ptr %next.gep684, align 1, !alias.scope !162, !noalias !164
  %interleaved.vec693 = shufflevector <8 x i8> %wide.load689, <8 x i8> %wide.load691, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec693, ptr %next.gep685, align 1, !alias.scope !162, !noalias !164
  %index.next694 = add nuw i64 %index683, 16      ; 2 uses
  %i.kz = icmp eq i64 %index.next694, %n.vec681
  br i1 %i.kz, label %middle.block695, label %vector.body682, !llvm.loop !165

middle.block695:                                  ; preds = %vector.body682
  br i1 %cmp.n696, label %._crit_edge.i.i116.i, label %vec.epilog.iter.check703

vec.epilog.iter.check703:                         ; preds = %middle.block695
  br i1 %min.epilog.iters.check704, label %vec.epilog.scalar.ph702.preheader, label %vec.epilog.ph705, !prof !152

vec.epilog.ph705:                                 ; preds = %vector.main.loop.iter.check678, %vec.epilog.iter.check703
  %vec.epilog.resume.val697 = phi i64 [ %n.vec681, %vec.epilog.iter.check703 ], [ 0, %vector.main.loop.iter.check678 ]
  %i.la = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.ko ; 2 uses
  %i.lb = getelementptr i8, ptr %.15173.i.i109.i, i64 %n.vec706 ; 2 uses
  %i.lc = getelementptr i8, ptr %.15372.i.i110.i, i64 %n.vec706 ; 2 uses
  br label %vec.epilog.vector.body707

vec.epilog.vector.body707:                        ; preds = %vec.epilog.vector.body707, %vec.epilog.ph705
  %index708 = phi i64 [ %vec.epilog.resume.val697, %vec.epilog.ph705 ], [ %index.next715, %vec.epilog.vector.body707 ] ; 4 uses
  %i.ld = shl i64 %index708, 1
  %next.gep709 = getelementptr i8, ptr %.04974.i.i108.i, i64 %i.ld
  %next.gep710 = getelementptr i8, ptr %.15173.i.i109.i, i64 %index708
  %next.gep711 = getelementptr i8, ptr %.15372.i.i110.i, i64 %index708
  %wide.load712 = load <4 x i8>, ptr %next.gep711, align 1, !alias.scope !157
  %wide.load713 = load <4 x i8>, ptr %next.gep710, align 1, !alias.scope !160
  %interleaved.vec714 = shufflevector <4 x i8> %wide.load712, <4 x i8> %wide.load713, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec714, ptr %next.gep709, align 1, !alias.scope !162, !noalias !164
  %index.next715 = add nuw i64 %index708, 4       ; 2 uses
  %i.le = icmp eq i64 %index.next715, %n.vec706
  br i1 %i.le, label %vec.epilog.middle.block716, label %vec.epilog.vector.body707, !llvm.loop !166

vec.epilog.middle.block716:                       ; preds = %vec.epilog.vector.body707
  br i1 %cmp.n717, label %._crit_edge.i.i116.i, label %vec.epilog.scalar.ph702.preheader

vec.epilog.scalar.ph702.preheader:                ; preds = %vector.memcheck666, %iter.check701, %vec.epilog.iter.check703, %vec.epilog.middle.block716
  %.168.i.i111.i.ph = phi ptr [ %.04974.i.i108.i, %iter.check701 ], [ %.04974.i.i108.i, %vector.memcheck666 ], [ %i.ks, %vec.epilog.iter.check703 ], [ %i.la, %vec.epilog.middle.block716 ] ; 2 uses
  %.267.i.i112.i.ph = phi ptr [ %.15173.i.i109.i, %iter.check701 ], [ %.15173.i.i109.i, %vector.memcheck666 ], [ %i.kt, %vec.epilog.iter.check703 ], [ %i.lb, %vec.epilog.middle.block716 ] ; 2 uses
  %.25466.i.i113.i.ph = phi ptr [ %.15372.i.i110.i, %iter.check701 ], [ %.15372.i.i110.i, %vector.memcheck666 ], [ %i.ku, %vec.epilog.iter.check703 ], [ %i.lc, %vec.epilog.middle.block716 ] ; 2 uses
  %.05665.i.i114.i.ph = phi i32 [ %i.jd, %iter.check701 ], [ %i.jd, %vector.memcheck666 ], [ %i.kn, %vec.epilog.iter.check703 ], [ %i.kq, %vec.epilog.middle.block716 ] ; 4 uses
  %i.lf = add nsw i32 %.05665.i.i114.i.ph, -1
  %xtraiter909 = and i32 %.05665.i.i114.i.ph, 3   ; 2 uses
  %lcmp.mod910.not = icmp eq i32 %xtraiter909, 0
  br i1 %lcmp.mod910.not, label %vec.epilog.scalar.ph702.prol.loopexit, label %vec.epilog.scalar.ph702.prol

vec.epilog.scalar.ph702.prol:                     ; preds = %vec.epilog.scalar.ph702.preheader, %vec.epilog.scalar.ph702.prol
  %.168.i.i111.i.prol = phi ptr [ %i.lm, %vec.epilog.scalar.ph702.prol ], [ %.168.i.i111.i.ph, %vec.epilog.scalar.ph702.preheader ] ; 3 uses
  %.267.i.i112.i.prol = phi ptr [ %i.lk, %vec.epilog.scalar.ph702.prol ], [ %.267.i.i112.i.ph, %vec.epilog.scalar.ph702.preheader ] ; 2 uses
  %.25466.i.i113.i.prol = phi ptr [ %i.lh, %vec.epilog.scalar.ph702.prol ], [ %.25466.i.i113.i.ph, %vec.epilog.scalar.ph702.preheader ] ; 2 uses
  %.05665.i.i114.i.prol = phi i32 [ %i.lg, %vec.epilog.scalar.ph702.prol ], [ %.05665.i.i114.i.ph, %vec.epilog.scalar.ph702.preheader ]
  %prol.iter911 = phi i32 [ %prol.iter911.next, %vec.epilog.scalar.ph702.prol ], [ 0, %vec.epilog.scalar.ph702.preheader ]
  %i.lg = add nsw i32 %.05665.i.i114.i.prol, -1   ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.25466.i.i113.i.prol, i64 1 ; 3 uses
  %i.li = load i8, ptr %.25466.i.i113.i.prol, align 1
  %i.lj = getelementptr inbounds nuw i8, ptr %.168.i.i111.i.prol, i64 1
  store i8 %i.li, ptr %.168.i.i111.i.prol, align 1
  %i.lk = getelementptr inbounds nuw i8, ptr %.267.i.i112.i.prol, i64 1 ; 3 uses
  %i.ll = load i8, ptr %.267.i.i112.i.prol, align 1
  %i.lm = getelementptr inbounds nuw i8, ptr %.168.i.i111.i.prol, i64 2 ; 3 uses
  store i8 %i.ll, ptr %i.lj, align 1
  %prol.iter911.next = add i32 %prol.iter911, 1   ; 2 uses
  %prol.iter911.cmp.not = icmp eq i32 %prol.iter911.next, %xtraiter909
  br i1 %prol.iter911.cmp.not, label %vec.epilog.scalar.ph702.prol.loopexit, label %vec.epilog.scalar.ph702.prol, !llvm.loop !167

vec.epilog.scalar.ph702.prol.loopexit:            ; preds = %vec.epilog.scalar.ph702.prol, %vec.epilog.scalar.ph702.preheader
  %.lcssa836.unr = phi ptr [ poison, %vec.epilog.scalar.ph702.preheader ], [ %i.lh, %vec.epilog.scalar.ph702.prol ]
  %.lcssa835.unr = phi ptr [ poison, %vec.epilog.scalar.ph702.preheader ], [ %i.lk, %vec.epilog.scalar.ph702.prol ]
  %.lcssa834.unr = phi ptr [ poison, %vec.epilog.scalar.ph702.preheader ], [ %i.lm, %vec.epilog.scalar.ph702.prol ]
  %.168.i.i111.i.unr = phi ptr [ %.168.i.i111.i.ph, %vec.epilog.scalar.ph702.preheader ], [ %i.lm, %vec.epilog.scalar.ph702.prol ]
  %.267.i.i112.i.unr = phi ptr [ %.267.i.i112.i.ph, %vec.epilog.scalar.ph702.preheader ], [ %i.lk, %vec.epilog.scalar.ph702.prol ]
  %.25466.i.i113.i.unr = phi ptr [ %.25466.i.i113.i.ph, %vec.epilog.scalar.ph702.preheader ], [ %i.lh, %vec.epilog.scalar.ph702.prol ]
  %.05665.i.i114.i.unr = phi i32 [ %.05665.i.i114.i.ph, %vec.epilog.scalar.ph702.preheader ], [ %i.lg, %vec.epilog.scalar.ph702.prol ]
  %i.ln = icmp ult i32 %i.lf, 3
  br i1 %i.ln, label %._crit_edge.i.i116.i, label %vec.epilog.scalar.ph702

vec.epilog.scalar.ph702:                          ; preds = %vec.epilog.scalar.ph702.prol.loopexit, %vec.epilog.scalar.ph702
  %.168.i.i111.i = phi ptr [ %i.mm, %vec.epilog.scalar.ph702 ], [ %.168.i.i111.i.unr, %vec.epilog.scalar.ph702.prol.loopexit ] ; 9 uses
  %.267.i.i112.i = phi ptr [ %i.mk, %vec.epilog.scalar.ph702 ], [ %.267.i.i112.i.unr, %vec.epilog.scalar.ph702.prol.loopexit ] ; 5 uses
  %.25466.i.i113.i = phi ptr [ %i.mh, %vec.epilog.scalar.ph702 ], [ %.25466.i.i113.i.unr, %vec.epilog.scalar.ph702.prol.loopexit ] ; 5 uses
  %.05665.i.i114.i = phi i32 [ %i.mg, %vec.epilog.scalar.ph702 ], [ %.05665.i.i114.i.unr, %vec.epilog.scalar.ph702.prol.loopexit ]
  %i.lo = getelementptr inbounds nuw i8, ptr %.25466.i.i113.i, i64 1
  %i.lp = load i8, ptr %.25466.i.i113.i, align 1
  %i.lq = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 1
  store i8 %i.lp, ptr %.168.i.i111.i, align 1
  %i.lr = getelementptr inbounds nuw i8, ptr %.267.i.i112.i, i64 1
  %i.ls = load i8, ptr %.267.i.i112.i, align 1
  %i.lt = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 2
  store i8 %i.ls, ptr %i.lq, align 1
  %i.lu = getelementptr inbounds nuw i8, ptr %.25466.i.i113.i, i64 2
  %i.lv = load i8, ptr %i.lo, align 1
  %i.lw = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 3
  store i8 %i.lv, ptr %i.lt, align 1
  %i.lx = getelementptr inbounds nuw i8, ptr %.267.i.i112.i, i64 2
  %i.ly = load i8, ptr %i.lr, align 1
  %i.lz = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 4
  store i8 %i.ly, ptr %i.lw, align 1
  %i.ma = getelementptr inbounds nuw i8, ptr %.25466.i.i113.i, i64 3
  %i.mb = load i8, ptr %i.lu, align 1
  %i.mc = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 5
  store i8 %i.mb, ptr %i.lz, align 1
  %i.md = getelementptr inbounds nuw i8, ptr %.267.i.i112.i, i64 3
  %i.me = load i8, ptr %i.lx, align 1
  %i.mf = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 6
  store i8 %i.me, ptr %i.mc, align 1
  %i.mg = add nsw i32 %.05665.i.i114.i, -4        ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %.25466.i.i113.i, i64 4 ; 2 uses
  %i.mi = load i8, ptr %i.ma, align 1
  %i.mj = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 7
  store i8 %i.mi, ptr %i.mf, align 1
  %i.mk = getelementptr inbounds nuw i8, ptr %.267.i.i112.i, i64 4 ; 2 uses
  %i.ml = load i8, ptr %i.md, align 1
  %i.mm = getelementptr inbounds nuw i8, ptr %.168.i.i111.i, i64 8 ; 2 uses
  store i8 %i.ml, ptr %i.mj, align 1
  %.not63.i.i115.i.3 = icmp eq i32 %i.mg, 0
  br i1 %.not63.i.i115.i.3, label %._crit_edge.i.i116.i, label %vec.epilog.scalar.ph702, !llvm.loop !168

._crit_edge.i.i116.i:                             ; preds = %vec.epilog.scalar.ph702.prol.loopexit, %vec.epilog.scalar.ph702, %vec.epilog.middle.block716, %middle.block695
  %.lcssa478 = phi ptr [ %i.lc, %vec.epilog.middle.block716 ], [ %i.ku, %middle.block695 ], [ %.lcssa836.unr, %vec.epilog.scalar.ph702.prol.loopexit ], [ %i.mh, %vec.epilog.scalar.ph702 ]
  %.lcssa477 = phi ptr [ %i.lb, %vec.epilog.middle.block716 ], [ %i.kt, %middle.block695 ], [ %.lcssa835.unr, %vec.epilog.scalar.ph702.prol.loopexit ], [ %i.mk, %vec.epilog.scalar.ph702 ]
  %.lcssa476 = phi ptr [ %i.la, %vec.epilog.middle.block716 ], [ %i.ks, %middle.block695 ], [ %.lcssa834.unr, %vec.epilog.scalar.ph702.prol.loopexit ], [ %i.mm, %vec.epilog.scalar.ph702 ]
  %i.mn = add nsw i32 %.in.i.i107.i, -1           ; 2 uses
  %i.mo = getelementptr inbounds i8, ptr %.lcssa478, i64 %i.jz
  %i.mp = getelementptr inbounds i8, ptr %.lcssa477, i64 %i.jz
  %i.mq = getelementptr inbounds i8, ptr %.lcssa476, i64 %i.ka
  %.not62.i.i117.i = icmp eq i32 %i.mn, 0
  br i1 %.not62.i.i117.i, label %._crit_edge75.split.i.i118.i, label %iter.check701, !llvm.loop !156

._crit_edge75.split.i.i118.i:                     ; preds = %._crit_edge.i.i116.i, %.preheader.lr.ph.i.i102.i, %bb.v
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i99.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.w:                                             ; preds = %.loopexit.i
  switch i32 %7, label %bb.be [
    i32 842094169, label %bb.x
    i32 842094158, label %bb.y
    i32 825382478, label %bb.ac
  ]

bb.x:                                             ; preds = %bb.w
  %i.mr = tail call fastcc zeroext i1 @SDL_ConvertPixels_SwapUVPlanes(i32 noundef %0, i32 noundef %1, ptr noundef %5, i32 noundef %6, ptr noundef %10, i32 noundef %11)
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.y:                                             ; preds = %bb.w
  %i.ms = add i32 %0, 1
  %i.mt = sdiv i32 %i.ms, 2                       ; 7 uses
  %i.mu = add nsw i32 %1, 1
  %i.mv = sdiv i32 %i.mu, 2                       ; 3 uses
  %i.mw = add nsw i32 %6, 1
  %i.mx = sdiv i32 %i.mw, 2                       ; 3 uses
  %i.my = sub nsw i32 %i.mx, %i.mt
  %i.mz = add nsw i32 %11, 1
  %i.na = sdiv i32 %i.mz, 2
  %i.nb = sub nsw i32 %i.na, %i.mt
  %i.nc = shl nsw i32 %i.nb, 1
  %i.nd = mul nsw i32 %6, %1
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds i8, ptr %5, i64 %i.ne ; 3 uses
  %i.ng = mul nsw i32 %11, %1
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds i8, ptr %10, i64 %i.nh ; 2 uses
  %i.nj = icmp eq ptr %i.nf, %i.ni
  br i1 %i.nj, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.nk = sext i32 %i.mv to i64
  %i.nl = shl nsw i64 %i.nk, 1
  %i.nm = sext i32 %i.mx to i64
  %i.nn = mul nsw i64 %i.nl, %i.nm                ; 2 uses
  %i.no = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.nn) #6 ; 4 uses
  %.not.i.i144.i = icmp eq ptr %i.no, null
  br i1 %.not.i.i144.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.no, ptr readonly align 1 %i.nf, i64 %i.nn, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.y
  %.058.i.i122.i = phi ptr [ %i.no, %bb.aa ], [ %i.nf, %bb.y ] ; 2 uses
  %.0.i.i123.i = phi ptr [ %i.no, %bb.aa ], [ null, %bb.y ]
  %.off.i.i124.i = add i32 %1, 2
  %.not6271.i.i125.i = icmp ult i32 %.off.i.i124.i, 3
  br i1 %.not6271.i.i125.i, label %._crit_edge75.split.i.i142.i, label %.preheader.lr.ph.i.i126.i

.preheader.lr.ph.i.i126.i:                        ; preds = %bb.ab
  %.off76.i.i127.i = add i32 %0, 2
  %.not6364.i.i128.i = icmp ult i32 %.off76.i.i127.i, 3
  %i.np = sext i32 %i.my to i64                   ; 2 uses
  %i.nq = sext i32 %i.nc to i64
  br i1 %.not6364.i.i128.i, label %._crit_edge75.split.i.i142.i, label %.preheader.preheader.i.i129.i

.preheader.preheader.i.i129.i:                    ; preds = %.preheader.lr.ph.i.i126.i
  %i.nr = mul nsw i32 %i.mx, %i.mv
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds i8, ptr %.058.i.i122.i, i64 %i.ns
  %i.nu = add nsw i32 %i.mt, -1                   ; 4 uses
  %i.nv = zext i32 %i.nu to i64                   ; 2 uses
  %i.nw = shl nuw nsw i64 %i.nv, 1
  %i.nx = add nuw nsw i64 %i.nv, 1                ; 2 uses
  %i.ny = zext i32 %i.nu to i64
  %i.nz = add nuw nsw i64 %i.ny, 1                ; 5 uses
  %min.iters.check621 = icmp ult i32 %i.nu, 3
  %min.iters.check623 = icmp ult i32 %i.nu, 15
  %i.oa = and i64 %i.nz, 12
  %n.vec625 = and i64 %i.nz, 8589934576           ; 7 uses
  %i.ob = shl nuw nsw i64 %n.vec625, 1
  %i.oc = trunc i64 %n.vec625 to i32
  %i.od = sub i32 %i.mt, %i.oc
  %cmp.n640 = icmp eq i64 %i.nz, %n.vec625
  %min.epilog.iters.check648 = icmp eq i64 %i.oa, 0
  %n.vec650 = and i64 %i.nz, 8589934588           ; 6 uses
  %i.oe = shl nuw nsw i64 %n.vec650, 1
  %i.of = trunc i64 %n.vec650 to i32
  %i.og = sub i32 %i.mt, %i.of
  %cmp.n661 = icmp eq i64 %i.nz, %n.vec650
  br label %iter.check645

iter.check645:                                    ; preds = %._crit_edge.i.i140.i, %.preheader.preheader.i.i129.i
  %.in.i.i131.i = phi i32 [ %i.qd, %._crit_edge.i.i140.i ], [ %i.mv, %.preheader.preheader.i.i129.i ]
  %.04974.i.i132.i = phi ptr [ %i.qg, %._crit_edge.i.i140.i ], [ %i.ni, %.preheader.preheader.i.i129.i ] ; 10 uses
  %.15173.i.i133.i = phi ptr [ %i.qf, %._crit_edge.i.i140.i ], [ %i.nt, %.preheader.preheader.i.i129.i ] ; 8 uses
  %.15372.i.i134.i = phi ptr [ %i.qe, %._crit_edge.i.i140.i ], [ %.058.i.i122.i, %.preheader.preheader.i.i129.i ] ; 8 uses
  br i1 %min.iters.check621, label %vec.epilog.scalar.ph646.preheader, label %vector.memcheck610

vector.memcheck610:                               ; preds = %iter.check645
  %i.oh = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.nw
  %scevgep611 = getelementptr i8, ptr %i.oh, i64 2 ; 2 uses
  %scevgep612 = getelementptr i8, ptr %.15173.i.i133.i, i64 %i.nx
  %scevgep613 = getelementptr i8, ptr %.15372.i.i134.i, i64 %i.nx
  %bound0614 = icmp ult ptr %.04974.i.i132.i, %scevgep612
  %bound1615 = icmp ult ptr %.15173.i.i133.i, %scevgep611
  %found.conflict616 = and i1 %bound0614, %bound1615
  %bound0617 = icmp ult ptr %.04974.i.i132.i, %scevgep613
  %bound1618 = icmp ult ptr %.15372.i.i134.i, %scevgep611
  %found.conflict619 = and i1 %bound0617, %bound1618
  %conflict.rdx620 = or i1 %found.conflict616, %found.conflict619
  br i1 %conflict.rdx620, label %vec.epilog.scalar.ph646.preheader, label %vector.main.loop.iter.check622

vector.main.loop.iter.check622:                   ; preds = %vector.memcheck610
  br i1 %min.iters.check623, label %vec.epilog.ph649, label %vector.ph624

vector.ph624:                                     ; preds = %vector.main.loop.iter.check622
  %i.oi = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.ob ; 2 uses
  %i.oj = getelementptr i8, ptr %.15173.i.i133.i, i64 %n.vec625 ; 2 uses
  %i.ok = getelementptr i8, ptr %.15372.i.i134.i, i64 %n.vec625 ; 2 uses
  br label %vector.body626

vector.body626:                                   ; preds = %vector.body626, %vector.ph624
  %index627 = phi i64 [ 0, %vector.ph624 ], [ %index.next638, %vector.body626 ] ; 4 uses
  %i.ol = shl i64 %index627, 1                    ; 2 uses
  %next.gep628 = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.ol
  %i.om = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.ol
  %next.gep629 = getelementptr i8, ptr %i.om, i64 16
  %next.gep630 = getelementptr i8, ptr %.15173.i.i133.i, i64 %index627 ; 2 uses
  %next.gep631 = getelementptr i8, ptr %.15372.i.i134.i, i64 %index627 ; 2 uses
  %i.on = getelementptr i8, ptr %next.gep631, i64 8
  %wide.load632 = load <8 x i8>, ptr %next.gep631, align 1, !alias.scope !169
  %wide.load633 = load <8 x i8>, ptr %i.on, align 1, !alias.scope !169
  %i.oo = getelementptr i8, ptr %next.gep630, i64 8
  %wide.load634 = load <8 x i8>, ptr %next.gep630, align 1, !alias.scope !172
  %wide.load635 = load <8 x i8>, ptr %i.oo, align 1, !alias.scope !172
  %interleaved.vec636 = shufflevector <8 x i8> %wide.load632, <8 x i8> %wide.load634, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec636, ptr %next.gep628, align 1, !alias.scope !174, !noalias !176
  %interleaved.vec637 = shufflevector <8 x i8> %wide.load633, <8 x i8> %wide.load635, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec637, ptr %next.gep629, align 1, !alias.scope !174, !noalias !176
  %index.next638 = add nuw i64 %index627, 16      ; 2 uses
  %i.op = icmp eq i64 %index.next638, %n.vec625
  br i1 %i.op, label %middle.block639, label %vector.body626, !llvm.loop !177

middle.block639:                                  ; preds = %vector.body626
  br i1 %cmp.n640, label %._crit_edge.i.i140.i, label %vec.epilog.iter.check647

vec.epilog.iter.check647:                         ; preds = %middle.block639
  br i1 %min.epilog.iters.check648, label %vec.epilog.scalar.ph646.preheader, label %vec.epilog.ph649, !prof !152

vec.epilog.ph649:                                 ; preds = %vector.main.loop.iter.check622, %vec.epilog.iter.check647
  %vec.epilog.resume.val641 = phi i64 [ %n.vec625, %vec.epilog.iter.check647 ], [ 0, %vector.main.loop.iter.check622 ]
  %i.oq = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.oe ; 2 uses
  %i.or = getelementptr i8, ptr %.15173.i.i133.i, i64 %n.vec650 ; 2 uses
  %i.os = getelementptr i8, ptr %.15372.i.i134.i, i64 %n.vec650 ; 2 uses
  br label %vec.epilog.vector.body651

vec.epilog.vector.body651:                        ; preds = %vec.epilog.vector.body651, %vec.epilog.ph649
  %index652 = phi i64 [ %vec.epilog.resume.val641, %vec.epilog.ph649 ], [ %index.next659, %vec.epilog.vector.body651 ] ; 4 uses
  %i.ot = shl i64 %index652, 1
  %next.gep653 = getelementptr i8, ptr %.04974.i.i132.i, i64 %i.ot
  %next.gep654 = getelementptr i8, ptr %.15173.i.i133.i, i64 %index652
  %next.gep655 = getelementptr i8, ptr %.15372.i.i134.i, i64 %index652
  %wide.load656 = load <4 x i8>, ptr %next.gep655, align 1, !alias.scope !169
  %wide.load657 = load <4 x i8>, ptr %next.gep654, align 1, !alias.scope !172
  %interleaved.vec658 = shufflevector <4 x i8> %wide.load656, <4 x i8> %wide.load657, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec658, ptr %next.gep653, align 1, !alias.scope !174, !noalias !176
  %index.next659 = add nuw i64 %index652, 4       ; 2 uses
  %i.ou = icmp eq i64 %index.next659, %n.vec650
  br i1 %i.ou, label %vec.epilog.middle.block660, label %vec.epilog.vector.body651, !llvm.loop !178

vec.epilog.middle.block660:                       ; preds = %vec.epilog.vector.body651
  br i1 %cmp.n661, label %._crit_edge.i.i140.i, label %vec.epilog.scalar.ph646.preheader

vec.epilog.scalar.ph646.preheader:                ; preds = %vector.memcheck610, %iter.check645, %vec.epilog.iter.check647, %vec.epilog.middle.block660
  %.168.i.i135.i.ph = phi ptr [ %.04974.i.i132.i, %iter.check645 ], [ %.04974.i.i132.i, %vector.memcheck610 ], [ %i.oi, %vec.epilog.iter.check647 ], [ %i.oq, %vec.epilog.middle.block660 ] ; 2 uses
  %.267.i.i136.i.ph = phi ptr [ %.15173.i.i133.i, %iter.check645 ], [ %.15173.i.i133.i, %vector.memcheck610 ], [ %i.oj, %vec.epilog.iter.check647 ], [ %i.or, %vec.epilog.middle.block660 ] ; 2 uses
  %.25466.i.i137.i.ph = phi ptr [ %.15372.i.i134.i, %iter.check645 ], [ %.15372.i.i134.i, %vector.memcheck610 ], [ %i.ok, %vec.epilog.iter.check647 ], [ %i.os, %vec.epilog.middle.block660 ] ; 2 uses
  %.05665.i.i138.i.ph = phi i32 [ %i.mt, %iter.check645 ], [ %i.mt, %vector.memcheck610 ], [ %i.od, %vec.epilog.iter.check647 ], [ %i.og, %vec.epilog.middle.block660 ] ; 4 uses
  %i.ov = add nsw i32 %.05665.i.i138.i.ph, -1
  %xtraiter906 = and i32 %.05665.i.i138.i.ph, 3   ; 2 uses
  %lcmp.mod907.not = icmp eq i32 %xtraiter906, 0
  br i1 %lcmp.mod907.not, label %vec.epilog.scalar.ph646.prol.loopexit, label %vec.epilog.scalar.ph646.prol

vec.epilog.scalar.ph646.prol:                     ; preds = %vec.epilog.scalar.ph646.preheader, %vec.epilog.scalar.ph646.prol
  %.168.i.i135.i.prol = phi ptr [ %i.pc, %vec.epilog.scalar.ph646.prol ], [ %.168.i.i135.i.ph, %vec.epilog.scalar.ph646.preheader ] ; 3 uses
  %.267.i.i136.i.prol = phi ptr [ %i.pa, %vec.epilog.scalar.ph646.prol ], [ %.267.i.i136.i.ph, %vec.epilog.scalar.ph646.preheader ] ; 2 uses
  %.25466.i.i137.i.prol = phi ptr [ %i.ox, %vec.epilog.scalar.ph646.prol ], [ %.25466.i.i137.i.ph, %vec.epilog.scalar.ph646.preheader ] ; 2 uses
  %.05665.i.i138.i.prol = phi i32 [ %i.ow, %vec.epilog.scalar.ph646.prol ], [ %.05665.i.i138.i.ph, %vec.epilog.scalar.ph646.preheader ]
  %prol.iter908 = phi i32 [ %prol.iter908.next, %vec.epilog.scalar.ph646.prol ], [ 0, %vec.epilog.scalar.ph646.preheader ]
  %i.ow = add nsw i32 %.05665.i.i138.i.prol, -1   ; 2 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %.25466.i.i137.i.prol, i64 1 ; 3 uses
  %i.oy = load i8, ptr %.25466.i.i137.i.prol, align 1
  %i.oz = getelementptr inbounds nuw i8, ptr %.168.i.i135.i.prol, i64 1
  store i8 %i.oy, ptr %.168.i.i135.i.prol, align 1
  %i.pa = getelementptr inbounds nuw i8, ptr %.267.i.i136.i.prol, i64 1 ; 3 uses
  %i.pb = load i8, ptr %.267.i.i136.i.prol, align 1
  %i.pc = getelementptr inbounds nuw i8, ptr %.168.i.i135.i.prol, i64 2 ; 3 uses
  store i8 %i.pb, ptr %i.oz, align 1
  %prol.iter908.next = add i32 %prol.iter908, 1   ; 2 uses
  %prol.iter908.cmp.not = icmp eq i32 %prol.iter908.next, %xtraiter906
  br i1 %prol.iter908.cmp.not, label %vec.epilog.scalar.ph646.prol.loopexit, label %vec.epilog.scalar.ph646.prol, !llvm.loop !179

vec.epilog.scalar.ph646.prol.loopexit:            ; preds = %vec.epilog.scalar.ph646.prol, %vec.epilog.scalar.ph646.preheader
  %.lcssa839.unr = phi ptr [ poison, %vec.epilog.scalar.ph646.preheader ], [ %i.ox, %vec.epilog.scalar.ph646.prol ]
  %.lcssa838.unr = phi ptr [ poison, %vec.epilog.scalar.ph646.preheader ], [ %i.pa, %vec.epilog.scalar.ph646.prol ]
  %.lcssa837.unr = phi ptr [ poison, %vec.epilog.scalar.ph646.preheader ], [ %i.pc, %vec.epilog.scalar.ph646.prol ]
  %.168.i.i135.i.unr = phi ptr [ %.168.i.i135.i.ph, %vec.epilog.scalar.ph646.preheader ], [ %i.pc, %vec.epilog.scalar.ph646.prol ]
  %.267.i.i136.i.unr = phi ptr [ %.267.i.i136.i.ph, %vec.epilog.scalar.ph646.preheader ], [ %i.pa, %vec.epilog.scalar.ph646.prol ]
  %.25466.i.i137.i.unr = phi ptr [ %.25466.i.i137.i.ph, %vec.epilog.scalar.ph646.preheader ], [ %i.ox, %vec.epilog.scalar.ph646.prol ]
  %.05665.i.i138.i.unr = phi i32 [ %.05665.i.i138.i.ph, %vec.epilog.scalar.ph646.preheader ], [ %i.ow, %vec.epilog.scalar.ph646.prol ]
  %i.pd = icmp ult i32 %i.ov, 3
  br i1 %i.pd, label %._crit_edge.i.i140.i, label %vec.epilog.scalar.ph646

vec.epilog.scalar.ph646:                          ; preds = %vec.epilog.scalar.ph646.prol.loopexit, %vec.epilog.scalar.ph646
  %.168.i.i135.i = phi ptr [ %i.qc, %vec.epilog.scalar.ph646 ], [ %.168.i.i135.i.unr, %vec.epilog.scalar.ph646.prol.loopexit ] ; 9 uses
  %.267.i.i136.i = phi ptr [ %i.qa, %vec.epilog.scalar.ph646 ], [ %.267.i.i136.i.unr, %vec.epilog.scalar.ph646.prol.loopexit ] ; 5 uses
  %.25466.i.i137.i = phi ptr [ %i.px, %vec.epilog.scalar.ph646 ], [ %.25466.i.i137.i.unr, %vec.epilog.scalar.ph646.prol.loopexit ] ; 5 uses
  %.05665.i.i138.i = phi i32 [ %i.pw, %vec.epilog.scalar.ph646 ], [ %.05665.i.i138.i.unr, %vec.epilog.scalar.ph646.prol.loopexit ]
  %i.pe = getelementptr inbounds nuw i8, ptr %.25466.i.i137.i, i64 1
  %i.pf = load i8, ptr %.25466.i.i137.i, align 1
  %i.pg = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 1
  store i8 %i.pf, ptr %.168.i.i135.i, align 1
  %i.ph = getelementptr inbounds nuw i8, ptr %.267.i.i136.i, i64 1
  %i.pi = load i8, ptr %.267.i.i136.i, align 1
  %i.pj = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 2
  store i8 %i.pi, ptr %i.pg, align 1
  %i.pk = getelementptr inbounds nuw i8, ptr %.25466.i.i137.i, i64 2
  %i.pl = load i8, ptr %i.pe, align 1
  %i.pm = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 3
  store i8 %i.pl, ptr %i.pj, align 1
  %i.pn = getelementptr inbounds nuw i8, ptr %.267.i.i136.i, i64 2
  %i.po = load i8, ptr %i.ph, align 1
  %i.pp = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 4
  store i8 %i.po, ptr %i.pm, align 1
  %i.pq = getelementptr inbounds nuw i8, ptr %.25466.i.i137.i, i64 3
  %i.pr = load i8, ptr %i.pk, align 1
  %i.ps = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 5
  store i8 %i.pr, ptr %i.pp, align 1
  %i.pt = getelementptr inbounds nuw i8, ptr %.267.i.i136.i, i64 3
  %i.pu = load i8, ptr %i.pn, align 1
  %i.pv = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 6
  store i8 %i.pu, ptr %i.ps, align 1
  %i.pw = add nsw i32 %.05665.i.i138.i, -4        ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %.25466.i.i137.i, i64 4 ; 2 uses
  %i.py = load i8, ptr %i.pq, align 1
  %i.pz = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 7
  store i8 %i.py, ptr %i.pv, align 1
  %i.qa = getelementptr inbounds nuw i8, ptr %.267.i.i136.i, i64 4 ; 2 uses
  %i.qb = load i8, ptr %i.pt, align 1
  %i.qc = getelementptr inbounds nuw i8, ptr %.168.i.i135.i, i64 8 ; 2 uses
  store i8 %i.qb, ptr %i.pz, align 1
  %.not63.i.i139.i.3 = icmp eq i32 %i.pw, 0
  br i1 %.not63.i.i139.i.3, label %._crit_edge.i.i140.i, label %vec.epilog.scalar.ph646, !llvm.loop !180

._crit_edge.i.i140.i:                             ; preds = %vec.epilog.scalar.ph646.prol.loopexit, %vec.epilog.scalar.ph646, %vec.epilog.middle.block660, %middle.block639
  %.lcssa481 = phi ptr [ %i.os, %vec.epilog.middle.block660 ], [ %i.ok, %middle.block639 ], [ %.lcssa839.unr, %vec.epilog.scalar.ph646.prol.loopexit ], [ %i.px, %vec.epilog.scalar.ph646 ]
  %.lcssa480 = phi ptr [ %i.or, %vec.epilog.middle.block660 ], [ %i.oj, %middle.block639 ], [ %.lcssa838.unr, %vec.epilog.scalar.ph646.prol.loopexit ], [ %i.qa, %vec.epilog.scalar.ph646 ]
  %.lcssa479 = phi ptr [ %i.oq, %vec.epilog.middle.block660 ], [ %i.oi, %middle.block639 ], [ %.lcssa837.unr, %vec.epilog.scalar.ph646.prol.loopexit ], [ %i.qc, %vec.epilog.scalar.ph646 ]
  %i.qd = add nsw i32 %.in.i.i131.i, -1           ; 2 uses
  %i.qe = getelementptr inbounds i8, ptr %.lcssa481, i64 %i.np
  %i.qf = getelementptr inbounds i8, ptr %.lcssa480, i64 %i.np
  %i.qg = getelementptr inbounds i8, ptr %.lcssa479, i64 %i.nq
  %.not62.i.i141.i = icmp eq i32 %i.qd, 0
  br i1 %.not62.i.i141.i, label %._crit_edge75.split.i.i142.i, label %iter.check645, !llvm.loop !156

._crit_edge75.split.i.i142.i:                     ; preds = %._crit_edge.i.i140.i, %.preheader.lr.ph.i.i126.i, %bb.ab
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i123.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.ac:                                            ; preds = %bb.w
  %i.qh = add i32 %0, 1
  %i.qi = sdiv i32 %i.qh, 2                       ; 7 uses
  %i.qj = add nsw i32 %1, 1
  %i.qk = sdiv i32 %i.qj, 2                       ; 3 uses
  %i.ql = add nsw i32 %6, 1
  %i.qm = sdiv i32 %i.ql, 2                       ; 3 uses
  %i.qn = sub nsw i32 %i.qm, %i.qi
  %i.qo = add nsw i32 %11, 1
  %i.qp = sdiv i32 %i.qo, 2
  %i.qq = sub nsw i32 %i.qp, %i.qi
  %i.qr = shl nsw i32 %i.qq, 1
  %i.qs = mul nsw i32 %6, %1
  %i.qt = sext i32 %i.qs to i64
  %i.qu = getelementptr inbounds i8, ptr %5, i64 %i.qt ; 3 uses
  %i.qv = mul nsw i32 %11, %1
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds i8, ptr %10, i64 %i.qw ; 2 uses
  %i.qy = icmp eq ptr %i.qu, %i.qx
  br i1 %i.qy, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.qz = sext i32 %i.qk to i64
  %i.ra = shl nsw i64 %i.qz, 1
  %i.rb = sext i32 %i.qm to i64
  %i.rc = mul nsw i64 %i.ra, %i.rb                ; 2 uses
  %i.rd = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.rc) #6 ; 4 uses
  %.not.i.i168.i = icmp eq ptr %i.rd, null
  br i1 %.not.i.i168.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rd, ptr readonly align 1 %i.qu, i64 %i.rc, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %.058.i.i146.i = phi ptr [ %i.rd, %bb.ae ], [ %i.qu, %bb.ac ] ; 2 uses
  %.0.i.i147.i = phi ptr [ %i.rd, %bb.ae ], [ null, %bb.ac ]
  %.off.i.i148.i = add i32 %1, 2
  %.not6271.i.i149.i = icmp ult i32 %.off.i.i148.i, 3
  br i1 %.not6271.i.i149.i, label %._crit_edge75.split.i.i166.i, label %.preheader.lr.ph.i.i150.i

.preheader.lr.ph.i.i150.i:                        ; preds = %bb.af
  %.off76.i.i151.i = add i32 %0, 2
  %.not6364.i.i152.i = icmp ult i32 %.off76.i.i151.i, 3
  %i.re = sext i32 %i.qn to i64                   ; 2 uses
  %i.rf = sext i32 %i.qr to i64
  br i1 %.not6364.i.i152.i, label %._crit_edge75.split.i.i166.i, label %.preheader.preheader.i.i153.i

.preheader.preheader.i.i153.i:                    ; preds = %.preheader.lr.ph.i.i150.i
  %i.rg = mul nsw i32 %i.qm, %i.qk
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds i8, ptr %.058.i.i146.i, i64 %i.rh
  %i.rj = add nsw i32 %i.qi, -1                   ; 4 uses
  %i.rk = zext i32 %i.rj to i64                   ; 2 uses
  %i.rl = shl nuw nsw i64 %i.rk, 1
  %i.rm = add nuw nsw i64 %i.rk, 1                ; 2 uses
  %i.rn = zext i32 %i.rj to i64
  %i.ro = add nuw nsw i64 %i.rn, 1                ; 5 uses
  %min.iters.check566 = icmp ult i32 %i.rj, 3
  %min.iters.check568 = icmp ult i32 %i.rj, 15
  %i.rp = and i64 %i.ro, 12
  %n.vec570 = and i64 %i.ro, 8589934576           ; 7 uses
  %i.rq = shl nuw nsw i64 %n.vec570, 1
  %i.rr = trunc i64 %n.vec570 to i32
  %i.rs = sub i32 %i.qi, %i.rr
  %cmp.n584 = icmp eq i64 %i.ro, %n.vec570
  %min.epilog.iters.check592 = icmp eq i64 %i.rp, 0
  %n.vec594 = and i64 %i.ro, 8589934588           ; 6 uses
  %i.rt = shl nuw nsw i64 %n.vec594, 1
  %i.ru = trunc i64 %n.vec594 to i32
  %i.rv = sub i32 %i.qi, %i.ru
  %cmp.n605 = icmp eq i64 %i.ro, %n.vec594
  br label %iter.check589

iter.check589:                                    ; preds = %._crit_edge.i.i164.i, %.preheader.preheader.i.i153.i
  %.in.i.i155.i = phi i32 [ %i.ts, %._crit_edge.i.i164.i ], [ %i.qk, %.preheader.preheader.i.i153.i ]
  %.04974.i.i156.i = phi ptr [ %i.tv, %._crit_edge.i.i164.i ], [ %i.qx, %.preheader.preheader.i.i153.i ] ; 10 uses
  %.15173.i.i157.i = phi ptr [ %i.tu, %._crit_edge.i.i164.i ], [ %.058.i.i146.i, %.preheader.preheader.i.i153.i ] ; 8 uses
  %.15372.i.i158.i = phi ptr [ %i.tt, %._crit_edge.i.i164.i ], [ %i.ri, %.preheader.preheader.i.i153.i ] ; 8 uses
  br i1 %min.iters.check566, label %vec.epilog.scalar.ph590.preheader, label %vector.memcheck560

vector.memcheck560:                               ; preds = %iter.check589
  %i.rw = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.rl
  %scevgep = getelementptr i8, ptr %i.rw, i64 2   ; 2 uses
  %scevgep561 = getelementptr i8, ptr %.15173.i.i157.i, i64 %i.rm
  %scevgep562 = getelementptr i8, ptr %.15372.i.i158.i, i64 %i.rm
  %bound0 = icmp ult ptr %.04974.i.i156.i, %scevgep561
  %bound1 = icmp ult ptr %.15173.i.i157.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0563 = icmp ult ptr %.04974.i.i156.i, %scevgep562
  %bound1564 = icmp ult ptr %.15372.i.i158.i, %scevgep
  %found.conflict565 = and i1 %bound0563, %bound1564
  %conflict.rdx = or i1 %found.conflict, %found.conflict565
  br i1 %conflict.rdx, label %vec.epilog.scalar.ph590.preheader, label %vector.main.loop.iter.check567

vector.main.loop.iter.check567:                   ; preds = %vector.memcheck560
  br i1 %min.iters.check568, label %vec.epilog.ph593, label %vector.ph569

vector.ph569:                                     ; preds = %vector.main.loop.iter.check567
  %i.rx = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.rq ; 2 uses
  %i.ry = getelementptr i8, ptr %.15173.i.i157.i, i64 %n.vec570 ; 2 uses
  %i.rz = getelementptr i8, ptr %.15372.i.i158.i, i64 %n.vec570 ; 2 uses
  br label %vector.body571

vector.body571:                                   ; preds = %vector.body571, %vector.ph569
  %index572 = phi i64 [ 0, %vector.ph569 ], [ %index.next582, %vector.body571 ] ; 4 uses
  %i.sa = shl i64 %index572, 1                    ; 2 uses
  %next.gep573 = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.sa
  %i.sb = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.sa
  %next.gep574 = getelementptr i8, ptr %i.sb, i64 16
  %next.gep575 = getelementptr i8, ptr %.15173.i.i157.i, i64 %index572 ; 2 uses
  %next.gep576 = getelementptr i8, ptr %.15372.i.i158.i, i64 %index572 ; 2 uses
  %i.sc = getelementptr i8, ptr %next.gep576, i64 8
  %wide.load577 = load <8 x i8>, ptr %next.gep576, align 1, !alias.scope !181
  %wide.load578 = load <8 x i8>, ptr %i.sc, align 1, !alias.scope !181
  %i.sd = getelementptr i8, ptr %next.gep575, i64 8
  %wide.load579 = load <8 x i8>, ptr %next.gep575, align 1, !alias.scope !184
  %wide.load580 = load <8 x i8>, ptr %i.sd, align 1, !alias.scope !184
  %interleaved.vec = shufflevector <8 x i8> %wide.load577, <8 x i8> %wide.load579, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %next.gep573, align 1, !alias.scope !186, !noalias !188
  %interleaved.vec581 = shufflevector <8 x i8> %wide.load578, <8 x i8> %wide.load580, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec581, ptr %next.gep574, align 1, !alias.scope !186, !noalias !188
  %index.next582 = add nuw i64 %index572, 16      ; 2 uses
  %i.se = icmp eq i64 %index.next582, %n.vec570
  br i1 %i.se, label %middle.block583, label %vector.body571, !llvm.loop !189

middle.block583:                                  ; preds = %vector.body571
  br i1 %cmp.n584, label %._crit_edge.i.i164.i, label %vec.epilog.iter.check591

vec.epilog.iter.check591:                         ; preds = %middle.block583
  br i1 %min.epilog.iters.check592, label %vec.epilog.scalar.ph590.preheader, label %vec.epilog.ph593, !prof !152

vec.epilog.ph593:                                 ; preds = %vector.main.loop.iter.check567, %vec.epilog.iter.check591
  %vec.epilog.resume.val585 = phi i64 [ %n.vec570, %vec.epilog.iter.check591 ], [ 0, %vector.main.loop.iter.check567 ]
  %i.sf = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.rt ; 2 uses
  %i.sg = getelementptr i8, ptr %.15173.i.i157.i, i64 %n.vec594 ; 2 uses
  %i.sh = getelementptr i8, ptr %.15372.i.i158.i, i64 %n.vec594 ; 2 uses
  br label %vec.epilog.vector.body595

vec.epilog.vector.body595:                        ; preds = %vec.epilog.vector.body595, %vec.epilog.ph593
  %index596 = phi i64 [ %vec.epilog.resume.val585, %vec.epilog.ph593 ], [ %index.next603, %vec.epilog.vector.body595 ] ; 4 uses
  %i.si = shl i64 %index596, 1
  %next.gep597 = getelementptr i8, ptr %.04974.i.i156.i, i64 %i.si
  %next.gep598 = getelementptr i8, ptr %.15173.i.i157.i, i64 %index596
  %next.gep599 = getelementptr i8, ptr %.15372.i.i158.i, i64 %index596
  %wide.load600 = load <4 x i8>, ptr %next.gep599, align 1, !alias.scope !181
  %wide.load601 = load <4 x i8>, ptr %next.gep598, align 1, !alias.scope !184
  %interleaved.vec602 = shufflevector <4 x i8> %wide.load600, <4 x i8> %wide.load601, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i8> %interleaved.vec602, ptr %next.gep597, align 1, !alias.scope !186, !noalias !188
  %index.next603 = add nuw i64 %index596, 4       ; 2 uses
  %i.sj = icmp eq i64 %index.next603, %n.vec594
  br i1 %i.sj, label %vec.epilog.middle.block604, label %vec.epilog.vector.body595, !llvm.loop !190

vec.epilog.middle.block604:                       ; preds = %vec.epilog.vector.body595
  br i1 %cmp.n605, label %._crit_edge.i.i164.i, label %vec.epilog.scalar.ph590.preheader

vec.epilog.scalar.ph590.preheader:                ; preds = %vector.memcheck560, %iter.check589, %vec.epilog.iter.check591, %vec.epilog.middle.block604
  %.168.i.i159.i.ph = phi ptr [ %.04974.i.i156.i, %iter.check589 ], [ %.04974.i.i156.i, %vector.memcheck560 ], [ %i.rx, %vec.epilog.iter.check591 ], [ %i.sf, %vec.epilog.middle.block604 ] ; 2 uses
  %.267.i.i160.i.ph = phi ptr [ %.15173.i.i157.i, %iter.check589 ], [ %.15173.i.i157.i, %vector.memcheck560 ], [ %i.ry, %vec.epilog.iter.check591 ], [ %i.sg, %vec.epilog.middle.block604 ] ; 2 uses
  %.25466.i.i161.i.ph = phi ptr [ %.15372.i.i158.i, %iter.check589 ], [ %.15372.i.i158.i, %vector.memcheck560 ], [ %i.rz, %vec.epilog.iter.check591 ], [ %i.sh, %vec.epilog.middle.block604 ] ; 2 uses
  %.05665.i.i162.i.ph = phi i32 [ %i.qi, %iter.check589 ], [ %i.qi, %vector.memcheck560 ], [ %i.rs, %vec.epilog.iter.check591 ], [ %i.rv, %vec.epilog.middle.block604 ] ; 4 uses
  %i.sk = add nsw i32 %.05665.i.i162.i.ph, -1
  %xtraiter903 = and i32 %.05665.i.i162.i.ph, 3   ; 2 uses
  %lcmp.mod904.not = icmp eq i32 %xtraiter903, 0
  br i1 %lcmp.mod904.not, label %vec.epilog.scalar.ph590.prol.loopexit, label %vec.epilog.scalar.ph590.prol

vec.epilog.scalar.ph590.prol:                     ; preds = %vec.epilog.scalar.ph590.preheader, %vec.epilog.scalar.ph590.prol
  %.168.i.i159.i.prol = phi ptr [ %i.sr, %vec.epilog.scalar.ph590.prol ], [ %.168.i.i159.i.ph, %vec.epilog.scalar.ph590.preheader ] ; 3 uses
  %.267.i.i160.i.prol = phi ptr [ %i.sp, %vec.epilog.scalar.ph590.prol ], [ %.267.i.i160.i.ph, %vec.epilog.scalar.ph590.preheader ] ; 2 uses
  %.25466.i.i161.i.prol = phi ptr [ %i.sm, %vec.epilog.scalar.ph590.prol ], [ %.25466.i.i161.i.ph, %vec.epilog.scalar.ph590.preheader ] ; 2 uses
  %.05665.i.i162.i.prol = phi i32 [ %i.sl, %vec.epilog.scalar.ph590.prol ], [ %.05665.i.i162.i.ph, %vec.epilog.scalar.ph590.preheader ]
  %prol.iter905 = phi i32 [ %prol.iter905.next, %vec.epilog.scalar.ph590.prol ], [ 0, %vec.epilog.scalar.ph590.preheader ]
  %i.sl = add nsw i32 %.05665.i.i162.i.prol, -1   ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %.25466.i.i161.i.prol, i64 1 ; 3 uses
  %i.sn = load i8, ptr %.25466.i.i161.i.prol, align 1
  %i.so = getelementptr inbounds nuw i8, ptr %.168.i.i159.i.prol, i64 1
  store i8 %i.sn, ptr %.168.i.i159.i.prol, align 1
  %i.sp = getelementptr inbounds nuw i8, ptr %.267.i.i160.i.prol, i64 1 ; 3 uses
  %i.sq = load i8, ptr %.267.i.i160.i.prol, align 1
  %i.sr = getelementptr inbounds nuw i8, ptr %.168.i.i159.i.prol, i64 2 ; 3 uses
  store i8 %i.sq, ptr %i.so, align 1
  %prol.iter905.next = add i32 %prol.iter905, 1   ; 2 uses
  %prol.iter905.cmp.not = icmp eq i32 %prol.iter905.next, %xtraiter903
  br i1 %prol.iter905.cmp.not, label %vec.epilog.scalar.ph590.prol.loopexit, label %vec.epilog.scalar.ph590.prol, !llvm.loop !191

vec.epilog.scalar.ph590.prol.loopexit:            ; preds = %vec.epilog.scalar.ph590.prol, %vec.epilog.scalar.ph590.preheader
  %.lcssa842.unr = phi ptr [ poison, %vec.epilog.scalar.ph590.preheader ], [ %i.sm, %vec.epilog.scalar.ph590.prol ]
  %.lcssa841.unr = phi ptr [ poison, %vec.epilog.scalar.ph590.preheader ], [ %i.sp, %vec.epilog.scalar.ph590.prol ]
  %.lcssa840.unr = phi ptr [ poison, %vec.epilog.scalar.ph590.preheader ], [ %i.sr, %vec.epilog.scalar.ph590.prol ]
  %.168.i.i159.i.unr = phi ptr [ %.168.i.i159.i.ph, %vec.epilog.scalar.ph590.preheader ], [ %i.sr, %vec.epilog.scalar.ph590.prol ]
  %.267.i.i160.i.unr = phi ptr [ %.267.i.i160.i.ph, %vec.epilog.scalar.ph590.preheader ], [ %i.sp, %vec.epilog.scalar.ph590.prol ]
  %.25466.i.i161.i.unr = phi ptr [ %.25466.i.i161.i.ph, %vec.epilog.scalar.ph590.preheader ], [ %i.sm, %vec.epilog.scalar.ph590.prol ]
  %.05665.i.i162.i.unr = phi i32 [ %.05665.i.i162.i.ph, %vec.epilog.scalar.ph590.preheader ], [ %i.sl, %vec.epilog.scalar.ph590.prol ]
  %i.ss = icmp ult i32 %i.sk, 3
  br i1 %i.ss, label %._crit_edge.i.i164.i, label %vec.epilog.scalar.ph590

vec.epilog.scalar.ph590:                          ; preds = %vec.epilog.scalar.ph590.prol.loopexit, %vec.epilog.scalar.ph590
  %.168.i.i159.i = phi ptr [ %i.tr, %vec.epilog.scalar.ph590 ], [ %.168.i.i159.i.unr, %vec.epilog.scalar.ph590.prol.loopexit ] ; 9 uses
  %.267.i.i160.i = phi ptr [ %i.tp, %vec.epilog.scalar.ph590 ], [ %.267.i.i160.i.unr, %vec.epilog.scalar.ph590.prol.loopexit ] ; 5 uses
  %.25466.i.i161.i = phi ptr [ %i.tm, %vec.epilog.scalar.ph590 ], [ %.25466.i.i161.i.unr, %vec.epilog.scalar.ph590.prol.loopexit ] ; 5 uses
  %.05665.i.i162.i = phi i32 [ %i.tl, %vec.epilog.scalar.ph590 ], [ %.05665.i.i162.i.unr, %vec.epilog.scalar.ph590.prol.loopexit ]
  %i.st = getelementptr inbounds nuw i8, ptr %.25466.i.i161.i, i64 1
  %i.su = load i8, ptr %.25466.i.i161.i, align 1
  %i.sv = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 1
  store i8 %i.su, ptr %.168.i.i159.i, align 1
  %i.sw = getelementptr inbounds nuw i8, ptr %.267.i.i160.i, i64 1
  %i.sx = load i8, ptr %.267.i.i160.i, align 1
  %i.sy = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 2
  store i8 %i.sx, ptr %i.sv, align 1
  %i.sz = getelementptr inbounds nuw i8, ptr %.25466.i.i161.i, i64 2
  %i.ta = load i8, ptr %i.st, align 1
  %i.tb = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 3
  store i8 %i.ta, ptr %i.sy, align 1
  %i.tc = getelementptr inbounds nuw i8, ptr %.267.i.i160.i, i64 2
  %i.td = load i8, ptr %i.sw, align 1
  %i.te = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 4
  store i8 %i.td, ptr %i.tb, align 1
  %i.tf = getelementptr inbounds nuw i8, ptr %.25466.i.i161.i, i64 3
  %i.tg = load i8, ptr %i.sz, align 1
  %i.th = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 5
  store i8 %i.tg, ptr %i.te, align 1
  %i.ti = getelementptr inbounds nuw i8, ptr %.267.i.i160.i, i64 3
  %i.tj = load i8, ptr %i.tc, align 1
  %i.tk = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 6
  store i8 %i.tj, ptr %i.th, align 1
  %i.tl = add nsw i32 %.05665.i.i162.i, -4        ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.25466.i.i161.i, i64 4 ; 2 uses
  %i.tn = load i8, ptr %i.tf, align 1
  %i.to = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 7
  store i8 %i.tn, ptr %i.tk, align 1
  %i.tp = getelementptr inbounds nuw i8, ptr %.267.i.i160.i, i64 4 ; 2 uses
  %i.tq = load i8, ptr %i.ti, align 1
  %i.tr = getelementptr inbounds nuw i8, ptr %.168.i.i159.i, i64 8 ; 2 uses
  store i8 %i.tq, ptr %i.to, align 1
  %.not63.i.i163.i.3 = icmp eq i32 %i.tl, 0
  br i1 %.not63.i.i163.i.3, label %._crit_edge.i.i164.i, label %vec.epilog.scalar.ph590, !llvm.loop !192

._crit_edge.i.i164.i:                             ; preds = %vec.epilog.scalar.ph590.prol.loopexit, %vec.epilog.scalar.ph590, %vec.epilog.middle.block604, %middle.block583
  %.lcssa484 = phi ptr [ %i.sh, %vec.epilog.middle.block604 ], [ %i.rz, %middle.block583 ], [ %.lcssa842.unr, %vec.epilog.scalar.ph590.prol.loopexit ], [ %i.tm, %vec.epilog.scalar.ph590 ]
  %.lcssa483 = phi ptr [ %i.sg, %vec.epilog.middle.block604 ], [ %i.ry, %middle.block583 ], [ %.lcssa841.unr, %vec.epilog.scalar.ph590.prol.loopexit ], [ %i.tp, %vec.epilog.scalar.ph590 ]
  %.lcssa482 = phi ptr [ %i.sf, %vec.epilog.middle.block604 ], [ %i.rx, %middle.block583 ], [ %.lcssa840.unr, %vec.epilog.scalar.ph590.prol.loopexit ], [ %i.tr, %vec.epilog.scalar.ph590 ]
  %i.ts = add nsw i32 %.in.i.i155.i, -1           ; 2 uses
  %i.tt = getelementptr inbounds i8, ptr %.lcssa484, i64 %i.re
  %i.tu = getelementptr inbounds i8, ptr %.lcssa483, i64 %i.re
  %i.tv = getelementptr inbounds i8, ptr %.lcssa482, i64 %i.rf
  %.not62.i.i165.i = icmp eq i32 %i.ts, 0
  br i1 %.not62.i.i165.i, label %._crit_edge75.split.i.i166.i, label %iter.check589, !llvm.loop !156

._crit_edge75.split.i.i166.i:                     ; preds = %._crit_edge.i.i164.i, %.preheader.lr.ph.i.i150.i, %bb.af
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i147.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.ag:                                            ; preds = %.loopexit.i
  switch i32 %7, label %bb.be [
    i32 842094169, label %bb.ah
    i32 1448433993, label %bb.al
    i32 825382478, label %bb.ap
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.tw = add i32 %0, 1
  %i.tx = sdiv i32 %i.tw, 2                       ; 6 uses
  %i.ty = add nsw i32 %1, 1
  %i.tz = sdiv i32 %i.ty, 2                       ; 3 uses
  %i.ua = add nsw i32 %6, 1
  %i.ub = sdiv i32 %i.ua, 2                       ; 2 uses
  %i.uc = sub nsw i32 %i.ub, %i.tx
  %i.ud = shl nsw i32 %i.uc, 1
  %i.ue = add nsw i32 %11, 1
  %i.uf = sdiv i32 %i.ue, 2                       ; 2 uses
  %i.ug = sub nsw i32 %i.uf, %i.tx
  %i.uh = mul nsw i32 %6, %1
  %i.ui = sext i32 %i.uh to i64
  %i.uj = getelementptr inbounds i8, ptr %5, i64 %i.ui ; 3 uses
  %i.uk = mul nsw i32 %11, %1
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr inbounds i8, ptr %10, i64 %i.ul ; 3 uses
  %i.un = icmp eq ptr %i.uj, %i.um
  br i1 %i.un, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.uo = shl nsw i32 %i.ub, 1
  %i.up = sext i32 %i.tz to i64
  %i.uq = sext i32 %i.uo to i64
  %i.ur = mul nsw i64 %i.uq, %i.up                ; 2 uses
  %i.us = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.ur) #6 ; 4 uses
  %.not.i.i187.i = icmp eq ptr %i.us, null
  br i1 %.not.i.i187.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.us, ptr readonly align 1 %i.uj, i64 %i.ur, i1 false)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %.058.i.i170.i = phi ptr [ %i.us, %bb.aj ], [ %i.uj, %bb.ah ]
  %.0.i.i171.i = phi ptr [ %i.us, %bb.aj ], [ null, %bb.ah ]
  %.off.i.i172.i = add i32 %1, 2
  %.not6271.i.i173.i = icmp ult i32 %.off.i.i172.i, 3
  br i1 %.not6271.i.i173.i, label %._crit_edge75.split.i.i185.i, label %.preheader.lr.ph.i.i174.i

.preheader.lr.ph.i.i174.i:                        ; preds = %bb.ak
  %.off76.i.i175.i = add i32 %0, 2
  %.not6364.i.i176.i = icmp ult i32 %.off76.i.i175.i, 3
  %i.ut = sext i32 %i.ud to i64
  %i.uu = sext i32 %i.ug to i64                   ; 2 uses
  br i1 %.not6364.i.i176.i, label %._crit_edge75.split.i.i185.i, label %.preheader.preheader.i.i177.i

.preheader.preheader.i.i177.i:                    ; preds = %.preheader.lr.ph.i.i174.i
  %i.uv = mul nsw i32 %i.uf, %i.tz
  %i.uw = sext i32 %i.uv to i64
  %i.ux = getelementptr inbounds i8, ptr %i.um, i64 %i.uw
  %i.uy = add nsw i32 %i.tx, -1
  %xtraiter900 = and i32 %i.tx, 3                 ; 2 uses
  %lcmp.mod901.not = icmp eq i32 %xtraiter900, 0
  %i.uz = icmp ult i32 %i.uy, 3
  br label %.preheader.i.i178.i

.preheader.i.i178.i:                              ; preds = %._crit_edge.i.i183.i, %.preheader.preheader.i.i177.i
  %.in.i.i179.i = phi i32 [ %i.wg, %._crit_edge.i.i183.i ], [ %i.tz, %.preheader.preheader.i.i177.i ]
  %.174.i.i.i = phi ptr [ %i.wj, %._crit_edge.i.i183.i ], [ %i.um, %.preheader.preheader.i.i177.i ] ; 2 uses
  %.15173.i.i180.i = phi ptr [ %i.wi, %._crit_edge.i.i183.i ], [ %i.ux, %.preheader.preheader.i.i177.i ] ; 2 uses
  %.05372.i.i.i = phi ptr [ %i.wh, %._crit_edge.i.i183.i ], [ %.058.i.i170.i, %.preheader.preheader.i.i177.i ] ; 2 uses
  br i1 %lcmp.mod901.not, label %.prol.loopexit899, label %.prol.preheader898

.prol.preheader898:                               ; preds = %.preheader.i.i178.i, %.prol.preheader898
  %.268.i.i.i.prol = phi ptr [ %i.vg, %.prol.preheader898 ], [ %.174.i.i.i, %.preheader.i.i178.i ] ; 2 uses
  %.25267.i.i.i.prol = phi ptr [ %i.vd, %.prol.preheader898 ], [ %.15173.i.i180.i, %.preheader.i.i178.i ] ; 2 uses
  %.15466.i.i.i.prol = phi ptr [ %i.ve, %.prol.preheader898 ], [ %.05372.i.i.i, %.preheader.i.i178.i ] ; 3 uses
  %.05665.i.i181.i.prol = phi i32 [ %i.va, %.prol.preheader898 ], [ %i.tx, %.preheader.i.i178.i ]
  %prol.iter902 = phi i32 [ %prol.iter902.next, %.prol.preheader898 ], [ 0, %.preheader.i.i178.i ]
  %i.va = add nsw i32 %.05665.i.i181.i.prol, -1   ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %.15466.i.i.i.prol, i64 1
  %i.vc = load i8, ptr %.15466.i.i.i.prol, align 1
  %i.vd = getelementptr inbounds nuw i8, ptr %.25267.i.i.i.prol, i64 1 ; 3 uses
  store i8 %i.vc, ptr %.25267.i.i.i.prol, align 1
  %i.ve = getelementptr inbounds nuw i8, ptr %.15466.i.i.i.prol, i64 2 ; 3 uses
  %i.vf = load i8, ptr %i.vb, align 1
  %i.vg = getelementptr inbounds nuw i8, ptr %.268.i.i.i.prol, i64 1 ; 3 uses
  store i8 %i.vf, ptr %.268.i.i.i.prol, align 1
  %prol.iter902.next = add i32 %prol.iter902, 1   ; 2 uses
  %prol.iter902.cmp.not = icmp eq i32 %prol.iter902.next, %xtraiter900
  br i1 %prol.iter902.cmp.not, label %.prol.loopexit899, label %.prol.preheader898, !llvm.loop !193

.prol.loopexit899:                                ; preds = %.prol.preheader898, %.preheader.i.i178.i
  %.lcssa845.unr = phi ptr [ poison, %.preheader.i.i178.i ], [ %i.vd, %.prol.preheader898 ]
  %.lcssa844.unr = phi ptr [ poison, %.preheader.i.i178.i ], [ %i.ve, %.prol.preheader898 ]
  %.lcssa843.unr = phi ptr [ poison, %.preheader.i.i178.i ], [ %i.vg, %.prol.preheader898 ]
  %.268.i.i.i.unr = phi ptr [ %.174.i.i.i, %.preheader.i.i178.i ], [ %i.vg, %.prol.preheader898 ]
  %.25267.i.i.i.unr = phi ptr [ %.15173.i.i180.i, %.preheader.i.i178.i ], [ %i.vd, %.prol.preheader898 ]
  %.15466.i.i.i.unr = phi ptr [ %.05372.i.i.i, %.preheader.i.i178.i ], [ %i.ve, %.prol.preheader898 ]
  %.05665.i.i181.i.unr = phi i32 [ %i.tx, %.preheader.i.i178.i ], [ %i.va, %.prol.preheader898 ]
  br i1 %i.uz, label %._crit_edge.i.i183.i, label %.preheader.i.i178.i.new

.preheader.i.i178.i.new:                          ; preds = %.prol.loopexit899, %.preheader.i.i178.i.new
  %.268.i.i.i = phi ptr [ %i.wf, %.preheader.i.i178.i.new ], [ %.268.i.i.i.unr, %.prol.loopexit899 ] ; 5 uses
  %.25267.i.i.i = phi ptr [ %i.wc, %.preheader.i.i178.i.new ], [ %.25267.i.i.i.unr, %.prol.loopexit899 ] ; 5 uses
  %.15466.i.i.i = phi ptr [ %i.wd, %.preheader.i.i178.i.new ], [ %.15466.i.i.i.unr, %.prol.loopexit899 ] ; 9 uses
  %.05665.i.i181.i = phi i32 [ %i.vz, %.preheader.i.i178.i.new ], [ %.05665.i.i181.i.unr, %.prol.loopexit899 ]
  %i.vh = getelementptr inbounds nuw i8, ptr %.15466.i.i.i, i64 1
  %i.vi = load i8, ptr %.15466.i.i.i, align 1
  %i.vj = getelementptr inbounds nuw i8, ptr %.25267.i.i.i, i64 1
  store i8 %i.vi, ptr %.25267.i.i.i, align 1
  %i.vk = getelementptr inbounds nuw i8, ptr %.15466.i.i.i, i64 2
  %i.vl = load i8, ptr %i.vh, align 1
  %i.vm = getelementptr inbounds nuw i8, ptr %.268.i.i.i, i64 1
  store i8 %i.vl, ptr %.268.i.i.i, align 1
  %i.vn = getelementptr inbounds nuw i8, ptr %.15466.i.i.i, i64 3
  %i.vo = load i8, ptr %i.vk, align 1
  %i.vp = getelementptr inbounds nuw i8, ptr %.25267.i.i.i, i64 2
  store i8 %i.vo, ptr %i.vj, align 1
  %i.vq = getelementptr inbounds nuw i8, ptr %.15466.i.i.i, i64 4
  %i.vr = load i8, ptr %i.vn, align 1
  %i.vs = getelementptr inbounds nuw i8, ptr %.268.i.i.i, i64 2
  store i8 %i.vr, ptr %i.vm, align 1
  %i.vt = getelementptr inbounds nuw i8, ptr %.15466.i.i.i, i64 5
  %i.vu = load i8, ptr %i.vq, align 1
  %i.vv = getelementptr inbounds nuw i8, ptr %.25267.i.i.i, i64 3
  store i8 %i.vu, ptr %i.vp, align 1
  %i.vw = getelementptr inbounds nuw i8, ptr %.15466.i.i.i, i64 6
  %i.vx = load i8, ptr %i.vt, align 1
  %i.vy = getelementptr inbounds nuw i8, ptr %.268.i.i.i, i64 3
  store i8 %i.vx, ptr %i.vs, align 1
  %i.vz = add nsw i32 %.05665.i.i181.i, -4        ; 2 uses
  %i.wa = getelementptr inbounds nuw i8, ptr %.15466.i.i.i, i64 7
  %i.wb = load i8, ptr %i.vw, align 1
  %i.wc = getelementptr inbounds nuw i8, ptr %.25267.i.i.i, i64 4 ; 2 uses
  store i8 %i.wb, ptr %i.vv, align 1
  %i.wd = getelementptr inbounds nuw i8, ptr %.15466.i.i.i, i64 8 ; 2 uses
  %i.we = load i8, ptr %i.wa, align 1
  %i.wf = getelementptr inbounds nuw i8, ptr %.268.i.i.i, i64 4 ; 2 uses
  store i8 %i.we, ptr %i.vy, align 1
  %.not63.i.i182.i.3 = icmp eq i32 %i.vz, 0
  br i1 %.not63.i.i182.i.3, label %._crit_edge.i.i183.i, label %.preheader.i.i178.i.new, !llvm.loop !194

._crit_edge.i.i183.i:                             ; preds = %.preheader.i.i178.i.new, %.prol.loopexit899
  %.lcssa845 = phi ptr [ %.lcssa845.unr, %.prol.loopexit899 ], [ %i.wc, %.preheader.i.i178.i.new ]
  %.lcssa844 = phi ptr [ %.lcssa844.unr, %.prol.loopexit899 ], [ %i.wd, %.preheader.i.i178.i.new ]
  %.lcssa843 = phi ptr [ %.lcssa843.unr, %.prol.loopexit899 ], [ %i.wf, %.preheader.i.i178.i.new ]
  %i.wg = add nsw i32 %.in.i.i179.i, -1           ; 2 uses
  %i.wh = getelementptr inbounds i8, ptr %.lcssa844, i64 %i.ut
  %i.wi = getelementptr inbounds i8, ptr %.lcssa845, i64 %i.uu
  %i.wj = getelementptr inbounds i8, ptr %.lcssa843, i64 %i.uu
  %.not62.i.i184.i = icmp eq i32 %i.wg, 0
  br i1 %.not62.i.i184.i, label %._crit_edge75.split.i.i185.i, label %.preheader.i.i178.i, !llvm.loop !195

._crit_edge75.split.i.i185.i:                     ; preds = %._crit_edge.i.i183.i, %.preheader.lr.ph.i.i174.i, %bb.ak
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i171.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.al:                                            ; preds = %bb.ag
  %i.wk = add i32 %0, 1
  %i.wl = sdiv i32 %i.wk, 2                       ; 6 uses
  %i.wm = add nsw i32 %1, 1
  %i.wn = sdiv i32 %i.wm, 2                       ; 3 uses
  %i.wo = add nsw i32 %6, 1
  %i.wp = sdiv i32 %i.wo, 2                       ; 2 uses
  %i.wq = sub nsw i32 %i.wp, %i.wl
  %i.wr = shl nsw i32 %i.wq, 1
  %i.ws = add nsw i32 %11, 1
  %i.wt = sdiv i32 %i.ws, 2                       ; 2 uses
  %i.wu = sub nsw i32 %i.wt, %i.wl
  %i.wv = mul nsw i32 %6, %1
  %i.ww = sext i32 %i.wv to i64
  %i.wx = getelementptr inbounds i8, ptr %5, i64 %i.ww ; 3 uses
  %i.wy = mul nsw i32 %11, %1
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds i8, ptr %10, i64 %i.wz ; 3 uses
  %i.xb = icmp eq ptr %i.wx, %i.xa
  br i1 %i.xb, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.xc = shl nsw i32 %i.wp, 1
  %i.xd = sext i32 %i.wn to i64
  %i.xe = sext i32 %i.xc to i64
  %i.xf = mul nsw i64 %i.xe, %i.xd                ; 2 uses
  %i.xg = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.xf) #6 ; 4 uses
  %.not.i.i210.i = icmp eq ptr %i.xg, null
  br i1 %.not.i.i210.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xg, ptr readonly align 1 %i.wx, i64 %i.xf, i1 false)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.al
  %.058.i.i188.i = phi ptr [ %i.xg, %bb.an ], [ %i.wx, %bb.al ]
  %.0.i.i189.i = phi ptr [ %i.xg, %bb.an ], [ null, %bb.al ]
  %.off.i.i190.i = add i32 %1, 2
  %.not6271.i.i191.i = icmp ult i32 %.off.i.i190.i, 3
  br i1 %.not6271.i.i191.i, label %._crit_edge75.split.i.i208.i, label %.preheader.lr.ph.i.i192.i

.preheader.lr.ph.i.i192.i:                        ; preds = %bb.ao
  %.off76.i.i193.i = add i32 %0, 2
  %.not6364.i.i194.i = icmp ult i32 %.off76.i.i193.i, 3
  %i.xh = sext i32 %i.wr to i64
  %i.xi = sext i32 %i.wu to i64                   ; 2 uses
  br i1 %.not6364.i.i194.i, label %._crit_edge75.split.i.i208.i, label %.preheader.preheader.i.i195.i

.preheader.preheader.i.i195.i:                    ; preds = %.preheader.lr.ph.i.i192.i
  %i.xj = mul nsw i32 %i.wt, %i.wn
  %i.xk = sext i32 %i.xj to i64
  %i.xl = getelementptr inbounds i8, ptr %i.xa, i64 %i.xk
  %i.xm = add nsw i32 %i.wl, -1
  %xtraiter895 = and i32 %i.wl, 3                 ; 2 uses
  %lcmp.mod896.not = icmp eq i32 %xtraiter895, 0
  %i.xn = icmp ult i32 %i.xm, 3
  br label %.preheader.i.i196.i

.preheader.i.i196.i:                              ; preds = %._crit_edge.i.i206.i, %.preheader.preheader.i.i195.i
  %.in.i.i197.i = phi i32 [ %i.yu, %._crit_edge.i.i206.i ], [ %i.wn, %.preheader.preheader.i.i195.i ]
  %.174.i.i198.i = phi ptr [ %i.yx, %._crit_edge.i.i206.i ], [ %i.xl, %.preheader.preheader.i.i195.i ] ; 2 uses
  %.15173.i.i199.i = phi ptr [ %i.yw, %._crit_edge.i.i206.i ], [ %i.xa, %.preheader.preheader.i.i195.i ] ; 2 uses
  %.05372.i.i200.i = phi ptr [ %i.yv, %._crit_edge.i.i206.i ], [ %.058.i.i188.i, %.preheader.preheader.i.i195.i ] ; 2 uses
  br i1 %lcmp.mod896.not, label %.prol.loopexit894, label %.prol.preheader893

.prol.preheader893:                               ; preds = %.preheader.i.i196.i, %.prol.preheader893
  %.268.i.i201.i.prol = phi ptr [ %i.xu, %.prol.preheader893 ], [ %.174.i.i198.i, %.preheader.i.i196.i ] ; 2 uses
  %.25267.i.i202.i.prol = phi ptr [ %i.xr, %.prol.preheader893 ], [ %.15173.i.i199.i, %.preheader.i.i196.i ] ; 2 uses
  %.15466.i.i203.i.prol = phi ptr [ %i.xs, %.prol.preheader893 ], [ %.05372.i.i200.i, %.preheader.i.i196.i ] ; 3 uses
  %.05665.i.i204.i.prol = phi i32 [ %i.xo, %.prol.preheader893 ], [ %i.wl, %.preheader.i.i196.i ]
  %prol.iter897 = phi i32 [ %prol.iter897.next, %.prol.preheader893 ], [ 0, %.preheader.i.i196.i ]
  %i.xo = add nsw i32 %.05665.i.i204.i.prol, -1   ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i.prol, i64 1
  %i.xq = load i8, ptr %.15466.i.i203.i.prol, align 1
  %i.xr = getelementptr inbounds nuw i8, ptr %.25267.i.i202.i.prol, i64 1 ; 3 uses
  store i8 %i.xq, ptr %.25267.i.i202.i.prol, align 1
  %i.xs = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i.prol, i64 2 ; 3 uses
  %i.xt = load i8, ptr %i.xp, align 1
  %i.xu = getelementptr inbounds nuw i8, ptr %.268.i.i201.i.prol, i64 1 ; 3 uses
  store i8 %i.xt, ptr %.268.i.i201.i.prol, align 1
  %prol.iter897.next = add i32 %prol.iter897, 1   ; 2 uses
  %prol.iter897.cmp.not = icmp eq i32 %prol.iter897.next, %xtraiter895
  br i1 %prol.iter897.cmp.not, label %.prol.loopexit894, label %.prol.preheader893, !llvm.loop !196

.prol.loopexit894:                                ; preds = %.prol.preheader893, %.preheader.i.i196.i
  %.lcssa848.unr = phi ptr [ poison, %.preheader.i.i196.i ], [ %i.xr, %.prol.preheader893 ]
  %.lcssa847.unr = phi ptr [ poison, %.preheader.i.i196.i ], [ %i.xs, %.prol.preheader893 ]
  %.lcssa846.unr = phi ptr [ poison, %.preheader.i.i196.i ], [ %i.xu, %.prol.preheader893 ]
  %.268.i.i201.i.unr = phi ptr [ %.174.i.i198.i, %.preheader.i.i196.i ], [ %i.xu, %.prol.preheader893 ]
  %.25267.i.i202.i.unr = phi ptr [ %.15173.i.i199.i, %.preheader.i.i196.i ], [ %i.xr, %.prol.preheader893 ]
  %.15466.i.i203.i.unr = phi ptr [ %.05372.i.i200.i, %.preheader.i.i196.i ], [ %i.xs, %.prol.preheader893 ]
  %.05665.i.i204.i.unr = phi i32 [ %i.wl, %.preheader.i.i196.i ], [ %i.xo, %.prol.preheader893 ]
  br i1 %i.xn, label %._crit_edge.i.i206.i, label %.preheader.i.i196.i.new

.preheader.i.i196.i.new:                          ; preds = %.prol.loopexit894, %.preheader.i.i196.i.new
  %.268.i.i201.i = phi ptr [ %i.yt, %.preheader.i.i196.i.new ], [ %.268.i.i201.i.unr, %.prol.loopexit894 ] ; 5 uses
  %.25267.i.i202.i = phi ptr [ %i.yq, %.preheader.i.i196.i.new ], [ %.25267.i.i202.i.unr, %.prol.loopexit894 ] ; 5 uses
  %.15466.i.i203.i = phi ptr [ %i.yr, %.preheader.i.i196.i.new ], [ %.15466.i.i203.i.unr, %.prol.loopexit894 ] ; 9 uses
  %.05665.i.i204.i = phi i32 [ %i.yn, %.preheader.i.i196.i.new ], [ %.05665.i.i204.i.unr, %.prol.loopexit894 ]
  %i.xv = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i, i64 1
  %i.xw = load i8, ptr %.15466.i.i203.i, align 1
  %i.xx = getelementptr inbounds nuw i8, ptr %.25267.i.i202.i, i64 1
  store i8 %i.xw, ptr %.25267.i.i202.i, align 1
  %i.xy = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i, i64 2
  %i.xz = load i8, ptr %i.xv, align 1
  %i.ya = getelementptr inbounds nuw i8, ptr %.268.i.i201.i, i64 1
  store i8 %i.xz, ptr %.268.i.i201.i, align 1
  %i.yb = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i, i64 3
  %i.yc = load i8, ptr %i.xy, align 1
  %i.yd = getelementptr inbounds nuw i8, ptr %.25267.i.i202.i, i64 2
  store i8 %i.yc, ptr %i.xx, align 1
  %i.ye = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i, i64 4
  %i.yf = load i8, ptr %i.yb, align 1
  %i.yg = getelementptr inbounds nuw i8, ptr %.268.i.i201.i, i64 2
  store i8 %i.yf, ptr %i.ya, align 1
  %i.yh = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i, i64 5
  %i.yi = load i8, ptr %i.ye, align 1
  %i.yj = getelementptr inbounds nuw i8, ptr %.25267.i.i202.i, i64 3
  store i8 %i.yi, ptr %i.yd, align 1
  %i.yk = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i, i64 6
  %i.yl = load i8, ptr %i.yh, align 1
  %i.ym = getelementptr inbounds nuw i8, ptr %.268.i.i201.i, i64 3
  store i8 %i.yl, ptr %i.yg, align 1
  %i.yn = add nsw i32 %.05665.i.i204.i, -4        ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i, i64 7
  %i.yp = load i8, ptr %i.yk, align 1
  %i.yq = getelementptr inbounds nuw i8, ptr %.25267.i.i202.i, i64 4 ; 2 uses
  store i8 %i.yp, ptr %i.yj, align 1
  %i.yr = getelementptr inbounds nuw i8, ptr %.15466.i.i203.i, i64 8 ; 2 uses
  %i.ys = load i8, ptr %i.yo, align 1
  %i.yt = getelementptr inbounds nuw i8, ptr %.268.i.i201.i, i64 4 ; 2 uses
  store i8 %i.ys, ptr %i.ym, align 1
  %.not63.i.i205.i.3 = icmp eq i32 %i.yn, 0
  br i1 %.not63.i.i205.i.3, label %._crit_edge.i.i206.i, label %.preheader.i.i196.i.new, !llvm.loop !194

._crit_edge.i.i206.i:                             ; preds = %.preheader.i.i196.i.new, %.prol.loopexit894
  %.lcssa848 = phi ptr [ %.lcssa848.unr, %.prol.loopexit894 ], [ %i.yq, %.preheader.i.i196.i.new ]
  %.lcssa847 = phi ptr [ %.lcssa847.unr, %.prol.loopexit894 ], [ %i.yr, %.preheader.i.i196.i.new ]
  %.lcssa846 = phi ptr [ %.lcssa846.unr, %.prol.loopexit894 ], [ %i.yt, %.preheader.i.i196.i.new ]
  %i.yu = add nsw i32 %.in.i.i197.i, -1           ; 2 uses
  %i.yv = getelementptr inbounds i8, ptr %.lcssa847, i64 %i.xh
  %i.yw = getelementptr inbounds i8, ptr %.lcssa848, i64 %i.xi
  %i.yx = getelementptr inbounds i8, ptr %.lcssa846, i64 %i.xi
  %.not62.i.i207.i = icmp eq i32 %i.yu, 0
  br i1 %.not62.i.i207.i, label %._crit_edge75.split.i.i208.i, label %.preheader.i.i196.i, !llvm.loop !195

._crit_edge75.split.i.i208.i:                     ; preds = %._crit_edge.i.i206.i, %.preheader.lr.ph.i.i192.i, %bb.ao
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i189.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.ap:                                            ; preds = %bb.ag
  %i.yy = add i32 %0, 1
  %i.yz = sdiv i32 %i.yy, 2                       ; 10 uses
  %i.za = add nsw i32 %1, 1
  %i.zb = sdiv i32 %i.za, 2                       ; 2 uses
  %i.zc = add nsw i32 %6, 1
  %i.zd = sdiv i32 %i.zc, 2
  %i.ze = shl nsw i32 %i.zd, 1                    ; 2 uses
  %i.zf = add nsw i32 %11, 1
  %i.zg = sdiv i32 %i.zf, 2
  %i.zh = shl nsw i32 %i.zg, 1                    ; 2 uses
  %i.zi = mul nsw i32 %6, %1
  %i.zj = sext i32 %i.zi to i64
  %i.zk = getelementptr inbounds i8, ptr %5, i64 %i.zj ; 3 uses
  %i.zl = mul nsw i32 %11, %1
  %i.zm = sext i32 %i.zl to i64
  %i.zn = getelementptr inbounds i8, ptr %10, i64 %i.zm ; 3 uses
  %i.zo = ptrtoint ptr %i.zk to i64
  %i.zp = ptrtoint ptr %i.zn to i64
  %i.zq = or i64 %i.zp, %i.zo
  %i.zr = and i64 %i.zq, 1
  %i.zs = icmp eq i64 %i.zr, 0
  %.off82.i.i.i = add i32 %1, 2
  %.not5978.i.i.i = icmp ult i32 %.off82.i.i.i, 3 ; 2 uses
  br i1 %i.zs, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not5978.i.i.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.lr.ph.i.i215.i

.preheader.lr.ph.i.i215.i:                        ; preds = %bb.aq
  %i.zt = shl nsw i32 %i.yz, 1                    ; 2 uses
  %i.zu = sub nsw i32 %i.zh, %i.zt
  %i.zv = ashr exact i32 %i.zu, 1
  %i.zw = sub nsw i32 %i.ze, %i.zt
  %i.zx = ashr exact i32 %i.zw, 1
  %.off83.i.i.i = add i32 %0, 2
  %.not6071.i.i.i = icmp ult i32 %.off83.i.i.i, 3
  %i.zy = sext i32 %i.zx to i64
  %i.zz = sext i32 %i.zv to i64
  br i1 %.not6071.i.i.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.i.i216.i.preheader

.preheader.i.i216.i.preheader:                    ; preds = %.preheader.lr.ph.i.i215.i
  %i.aaa = add nsw i32 %i.yz, -1                  ; 3 uses
  %i.aab = zext i32 %i.aaa to i64
  %i.aac = add nuw nsw i64 %i.aab, 1              ; 5 uses
  %min.iters.check526 = icmp ult i32 %i.aaa, 7
  %min.iters.check528 = icmp ult i32 %i.aaa, 15
  %i.aad = and i64 %i.aac, 8
  %n.vec530 = and i64 %i.aac, 8589934576          ; 5 uses
  %i.aae = shl nuw nsw i64 %n.vec530, 1           ; 2 uses
  %i.aaf = trunc i64 %n.vec530 to i32
  %i.aag = sub i32 %i.yz, %i.aaf
  %cmp.n539 = icmp eq i64 %i.aac, %n.vec530
  %min.epilog.iters.check546.not.not = icmp eq i64 %i.aad, 0
  %n.vec548 = and i64 %i.aac, 8589934584          ; 4 uses
  %i.aah = shl nuw nsw i64 %n.vec548, 1           ; 2 uses
  %i.aai = trunc i64 %n.vec548 to i32
  %i.aaj = sub i32 %i.yz, %i.aai
  %cmp.n556 = icmp eq i64 %i.aac, %n.vec548
  br label %iter.check543

iter.check543:                                    ; preds = %.preheader.i.i216.i.preheader, %._crit_edge75.i.i.i
  %.in84.i.i.i = phi i32 [ %i.abw, %._crit_edge75.i.i.i ], [ %i.zb, %.preheader.i.i216.i.preheader ]
  %.05080.i.i.i = phi ptr [ %i.aby, %._crit_edge75.i.i.i ], [ %i.zn, %.preheader.i.i216.i.preheader ] ; 6 uses
  %.05279.i.i.i = phi ptr [ %i.abx, %._crit_edge75.i.i.i ], [ %i.zk, %.preheader.i.i216.i.preheader ] ; 6 uses
  %.05279.i.i.i524 = ptrtoaddr ptr %.05279.i.i.i to i64
  %.05080.i.i.i523 = ptrtoaddr ptr %.05080.i.i.i to i64
  %i.aak = sub i64 %.05279.i.i.i524, %.05080.i.i.i523
  %diff.check525 = icmp ugt i64 %i.aak, -32
  %or.cond = select i1 %min.iters.check526, i1 true, i1 %diff.check525
  br i1 %or.cond, label %vec.epilog.scalar.ph544.preheader, label %vector.main.loop.iter.check527

vector.main.loop.iter.check527:                   ; preds = %iter.check543
  br i1 %min.iters.check528, label %vec.epilog.ph547, label %vector.ph529

vector.ph529:                                     ; preds = %vector.main.loop.iter.check527
  %i.aal = getelementptr i8, ptr %.05080.i.i.i, i64 %i.aae ; 2 uses
  %i.aam = getelementptr i8, ptr %.05279.i.i.i, i64 %i.aae ; 2 uses
  br label %vector.body531

vector.body531:                                   ; preds = %vector.body531, %vector.ph529
  %index532 = phi i64 [ 0, %vector.ph529 ], [ %index.next537, %vector.body531 ] ; 2 uses
  %i.aan = shl i64 %index532, 1                   ; 2 uses
  %next.gep533 = getelementptr i8, ptr %.05080.i.i.i, i64 %i.aan ; 2 uses
  %next.gep534 = getelementptr i8, ptr %.05279.i.i.i, i64 %i.aan ; 2 uses
  %i.aao = getelementptr i8, ptr %next.gep534, i64 16
  %wide.load535 = load <8 x i16>, ptr %next.gep534, align 2
  %wide.load536 = load <8 x i16>, ptr %i.aao, align 2
  %i.aap = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load535)
  %i.aaq = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load536)
  %i.aar = getelementptr i8, ptr %next.gep533, i64 16
  store <8 x i16> %i.aap, ptr %next.gep533, align 2
  store <8 x i16> %i.aaq, ptr %i.aar, align 2
  %index.next537 = add nuw i64 %index532, 16      ; 2 uses
  %i.aas = icmp eq i64 %index.next537, %n.vec530
  br i1 %i.aas, label %middle.block538, label %vector.body531, !llvm.loop !197

middle.block538:                                  ; preds = %vector.body531
  br i1 %cmp.n539, label %._crit_edge75.i.i.i, label %vec.epilog.iter.check545

vec.epilog.iter.check545:                         ; preds = %middle.block538
  br i1 %min.epilog.iters.check546.not.not, label %vec.epilog.scalar.ph544.preheader, label %vec.epilog.ph547, !prof !198

vec.epilog.ph547:                                 ; preds = %vector.main.loop.iter.check527, %vec.epilog.iter.check545
  %vec.epilog.resume.val540 = phi i64 [ %n.vec530, %vec.epilog.iter.check545 ], [ 0, %vector.main.loop.iter.check527 ]
  %i.aat = getelementptr i8, ptr %.05080.i.i.i, i64 %i.aah ; 2 uses
  %i.aau = getelementptr i8, ptr %.05279.i.i.i, i64 %i.aah ; 2 uses
  br label %vec.epilog.vector.body549

vec.epilog.vector.body549:                        ; preds = %vec.epilog.vector.body549, %vec.epilog.ph547
  %index550 = phi i64 [ %vec.epilog.resume.val540, %vec.epilog.ph547 ], [ %index.next554, %vec.epilog.vector.body549 ] ; 2 uses
  %i.aav = shl i64 %index550, 1                   ; 2 uses
  %next.gep551 = getelementptr i8, ptr %.05080.i.i.i, i64 %i.aav
  %next.gep552 = getelementptr i8, ptr %.05279.i.i.i, i64 %i.aav
  %wide.load553 = load <8 x i16>, ptr %next.gep552, align 2
  %i.aaw = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load553)
  store <8 x i16> %i.aaw, ptr %next.gep551, align 2
  %index.next554 = add nuw i64 %index550, 8       ; 2 uses
  %i.aax = icmp eq i64 %index.next554, %n.vec548
  br i1 %i.aax, label %vec.epilog.middle.block555, label %vec.epilog.vector.body549, !llvm.loop !199

vec.epilog.middle.block555:                       ; preds = %vec.epilog.vector.body549
  br i1 %cmp.n556, label %._crit_edge75.i.i.i, label %vec.epilog.scalar.ph544.preheader

vec.epilog.scalar.ph544.preheader:                ; preds = %iter.check543, %vec.epilog.iter.check545, %vec.epilog.middle.block555
  %.15174.i.i.i.ph = phi ptr [ %.05080.i.i.i, %iter.check543 ], [ %i.aal, %vec.epilog.iter.check545 ], [ %i.aat, %vec.epilog.middle.block555 ] ; 2 uses
  %.15373.i.i.i.ph = phi ptr [ %.05279.i.i.i, %iter.check543 ], [ %i.aam, %vec.epilog.iter.check545 ], [ %i.aau, %vec.epilog.middle.block555 ] ; 2 uses
  %.05672.i.i.i.ph = phi i32 [ %i.yz, %iter.check543 ], [ %i.aag, %vec.epilog.iter.check545 ], [ %i.aaj, %vec.epilog.middle.block555 ] ; 4 uses
  %i.aay = add nsw i32 %.05672.i.i.i.ph, -1
  %xtraiter890 = and i32 %.05672.i.i.i.ph, 3      ; 2 uses
  %lcmp.mod891.not = icmp eq i32 %xtraiter890, 0
  br i1 %lcmp.mod891.not, label %vec.epilog.scalar.ph544.prol.loopexit, label %vec.epilog.scalar.ph544.prol

vec.epilog.scalar.ph544.prol:                     ; preds = %vec.epilog.scalar.ph544.preheader, %vec.epilog.scalar.ph544.prol
  %.15174.i.i.i.prol = phi ptr [ %i.abd, %vec.epilog.scalar.ph544.prol ], [ %.15174.i.i.i.ph, %vec.epilog.scalar.ph544.preheader ] ; 2 uses
  %.15373.i.i.i.prol = phi ptr [ %i.aba, %vec.epilog.scalar.ph544.prol ], [ %.15373.i.i.i.ph, %vec.epilog.scalar.ph544.preheader ] ; 2 uses
  %.05672.i.i.i.prol = phi i32 [ %i.aaz, %vec.epilog.scalar.ph544.prol ], [ %.05672.i.i.i.ph, %vec.epilog.scalar.ph544.preheader ]
  %prol.iter892 = phi i32 [ %prol.iter892.next, %vec.epilog.scalar.ph544.prol ], [ 0, %vec.epilog.scalar.ph544.preheader ]
  %i.aaz = add nsw i32 %.05672.i.i.i.prol, -1     ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %.15373.i.i.i.prol, i64 2 ; 3 uses
  %i.abb = load i16, ptr %.15373.i.i.i.prol, align 2
  %i.abc = tail call i16 @llvm.bswap.i16(i16 %i.abb)
  %i.abd = getelementptr inbounds nuw i8, ptr %.15174.i.i.i.prol, i64 2 ; 3 uses
  store i16 %i.abc, ptr %.15174.i.i.i.prol, align 2
  %prol.iter892.next = add i32 %prol.iter892, 1   ; 2 uses
  %prol.iter892.cmp.not = icmp eq i32 %prol.iter892.next, %xtraiter890
  br i1 %prol.iter892.cmp.not, label %vec.epilog.scalar.ph544.prol.loopexit, label %vec.epilog.scalar.ph544.prol, !llvm.loop !200

vec.epilog.scalar.ph544.prol.loopexit:            ; preds = %vec.epilog.scalar.ph544.prol, %vec.epilog.scalar.ph544.preheader
  %.lcssa851.unr = phi ptr [ poison, %vec.epilog.scalar.ph544.preheader ], [ %i.aba, %vec.epilog.scalar.ph544.prol ]
  %.lcssa850.unr = phi ptr [ poison, %vec.epilog.scalar.ph544.preheader ], [ %i.abd, %vec.epilog.scalar.ph544.prol ]
  %.15174.i.i.i.unr = phi ptr [ %.15174.i.i.i.ph, %vec.epilog.scalar.ph544.preheader ], [ %i.abd, %vec.epilog.scalar.ph544.prol ]
  %.15373.i.i.i.unr = phi ptr [ %.15373.i.i.i.ph, %vec.epilog.scalar.ph544.preheader ], [ %i.aba, %vec.epilog.scalar.ph544.prol ]
  %.05672.i.i.i.unr = phi i32 [ %.05672.i.i.i.ph, %vec.epilog.scalar.ph544.preheader ], [ %i.aaz, %vec.epilog.scalar.ph544.prol ]
  %i.abe = icmp ult i32 %i.aay, 3
  br i1 %i.abe, label %._crit_edge75.i.i.i, label %vec.epilog.scalar.ph544

vec.epilog.scalar.ph544:                          ; preds = %vec.epilog.scalar.ph544.prol.loopexit, %vec.epilog.scalar.ph544
  %.15174.i.i.i = phi ptr [ %i.abv, %vec.epilog.scalar.ph544 ], [ %.15174.i.i.i.unr, %vec.epilog.scalar.ph544.prol.loopexit ] ; 5 uses
  %.15373.i.i.i = phi ptr [ %i.abs, %vec.epilog.scalar.ph544 ], [ %.15373.i.i.i.unr, %vec.epilog.scalar.ph544.prol.loopexit ] ; 5 uses
  %.05672.i.i.i = phi i32 [ %i.abr, %vec.epilog.scalar.ph544 ], [ %.05672.i.i.i.unr, %vec.epilog.scalar.ph544.prol.loopexit ]
  %i.abf = getelementptr inbounds nuw i8, ptr %.15373.i.i.i, i64 2
  %i.abg = load i16, ptr %.15373.i.i.i, align 2
  %i.abh = tail call i16 @llvm.bswap.i16(i16 %i.abg)
  %i.abi = getelementptr inbounds nuw i8, ptr %.15174.i.i.i, i64 2
  store i16 %i.abh, ptr %.15174.i.i.i, align 2
  %i.abj = getelementptr inbounds nuw i8, ptr %.15373.i.i.i, i64 4
  %i.abk = load i16, ptr %i.abf, align 2
  %i.abl = tail call i16 @llvm.bswap.i16(i16 %i.abk)
  %i.abm = getelementptr inbounds nuw i8, ptr %.15174.i.i.i, i64 4
  store i16 %i.abl, ptr %i.abi, align 2
  %i.abn = getelementptr inbounds nuw i8, ptr %.15373.i.i.i, i64 6
  %i.abo = load i16, ptr %i.abj, align 2
  %i.abp = tail call i16 @llvm.bswap.i16(i16 %i.abo)
  %i.abq = getelementptr inbounds nuw i8, ptr %.15174.i.i.i, i64 6
  store i16 %i.abp, ptr %i.abm, align 2
  %i.abr = add nsw i32 %.05672.i.i.i, -4          ; 2 uses
  %i.abs = getelementptr inbounds nuw i8, ptr %.15373.i.i.i, i64 8 ; 2 uses
  %i.abt = load i16, ptr %i.abn, align 2
  %i.abu = tail call i16 @llvm.bswap.i16(i16 %i.abt)
  %i.abv = getelementptr inbounds nuw i8, ptr %.15174.i.i.i, i64 8 ; 2 uses
  store i16 %i.abu, ptr %i.abq, align 2
  %.not60.i.i.i.3 = icmp eq i32 %i.abr, 0
  br i1 %.not60.i.i.i.3, label %._crit_edge75.i.i.i, label %vec.epilog.scalar.ph544, !llvm.loop !201

._crit_edge75.i.i.i:                              ; preds = %vec.epilog.scalar.ph544.prol.loopexit, %vec.epilog.scalar.ph544, %vec.epilog.middle.block555, %middle.block538
  %.lcssa492 = phi ptr [ %i.aau, %vec.epilog.middle.block555 ], [ %i.aam, %middle.block538 ], [ %.lcssa851.unr, %vec.epilog.scalar.ph544.prol.loopexit ], [ %i.abs, %vec.epilog.scalar.ph544 ]
  %.lcssa491 = phi ptr [ %i.aat, %vec.epilog.middle.block555 ], [ %i.aal, %middle.block538 ], [ %.lcssa850.unr, %vec.epilog.scalar.ph544.prol.loopexit ], [ %i.abv, %vec.epilog.scalar.ph544 ]
  %i.abw = add nsw i32 %.in84.i.i.i, -1           ; 2 uses
  %i.abx = getelementptr inbounds [2 x i8], ptr %.lcssa492, i64 %i.zy
  %i.aby = getelementptr inbounds [2 x i8], ptr %.lcssa491, i64 %i.zz
  %.not59.i.i.i = icmp eq i32 %i.abw, 0
  br i1 %.not59.i.i.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %iter.check543, !llvm.loop !202

bb.ar:                                            ; preds = %bb.ap
  br i1 %.not5978.i.i.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader61.lr.ph.i.i.i

.preheader61.lr.ph.i.i.i:                         ; preds = %bb.ar
  %i.abz = shl nsw i32 %i.yz, 1                   ; 2 uses
  %i.aca = sub nsw i32 %i.zh, %i.abz
  %i.acb = sub nsw i32 %i.ze, %i.abz
  %.off81.i.i.i = add i32 %0, 2
  %.not5863.i.i.i = icmp ult i32 %.off81.i.i.i, 3
  %i.acc = sext i32 %i.acb to i64
  %i.acd = sext i32 %i.aca to i64
  br i1 %.not5863.i.i.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader61.i.i.i.preheader

.preheader61.i.i.i.preheader:                     ; preds = %.preheader61.lr.ph.i.i.i
  %i.ace = add nsw i32 %i.yz, -1
  %xtraiter887 = and i32 %i.yz, 3                 ; 2 uses
  %lcmp.mod888.not = icmp eq i32 %xtraiter887, 0
  %i.acf = icmp ult i32 %i.ace, 3
  br label %.preheader61.i.i.i

.preheader61.i.i.i:                               ; preds = %.preheader61.i.i.i.preheader, %._crit_edge.i.i213.i
  %.in.i.i212.i = phi i32 [ %i.adm, %._crit_edge.i.i213.i ], [ %i.zb, %.preheader61.i.i.i.preheader ]
  %.070.i.i.i = phi ptr [ %i.ado, %._crit_edge.i.i213.i ], [ %i.zn, %.preheader61.i.i.i.preheader ] ; 2 uses
  %.04869.i.i.i = phi ptr [ %i.adn, %._crit_edge.i.i213.i ], [ %i.zk, %.preheader61.i.i.i.preheader ] ; 2 uses
  br i1 %lcmp.mod888.not, label %.prol.loopexit886, label %.prol.preheader885

.prol.preheader885:                               ; preds = %.preheader61.i.i.i, %.prol.preheader885
  %.166.i.i.i.prol = phi ptr [ %i.acm, %.prol.preheader885 ], [ %.070.i.i.i, %.preheader61.i.i.i ] ; 3 uses
  %.14965.i.i.i.prol = phi ptr [ %i.acj, %.prol.preheader885 ], [ %.04869.i.i.i, %.preheader61.i.i.i ] ; 3 uses
  %.15764.i.i.i.prol = phi i32 [ %i.acg, %.prol.preheader885 ], [ %i.yz, %.preheader61.i.i.i ]
  %prol.iter889 = phi i32 [ %prol.iter889.next, %.prol.preheader885 ], [ 0, %.preheader61.i.i.i ]
  %i.acg = add nsw i32 %.15764.i.i.i.prol, -1     ; 2 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %.14965.i.i.i.prol, i64 1
  %i.aci = load i8, ptr %.14965.i.i.i.prol, align 1
  %i.acj = getelementptr inbounds nuw i8, ptr %.14965.i.i.i.prol, i64 2 ; 3 uses
  %i.ack = load i8, ptr %i.ach, align 1
  %i.acl = getelementptr inbounds nuw i8, ptr %.166.i.i.i.prol, i64 1
  store i8 %i.ack, ptr %.166.i.i.i.prol, align 1
  %i.acm = getelementptr inbounds nuw i8, ptr %.166.i.i.i.prol, i64 2 ; 3 uses
  store i8 %i.aci, ptr %i.acl, align 1
  %prol.iter889.next = add i32 %prol.iter889, 1   ; 2 uses
  %prol.iter889.cmp.not = icmp eq i32 %prol.iter889.next, %xtraiter887
  br i1 %prol.iter889.cmp.not, label %.prol.loopexit886, label %.prol.preheader885, !llvm.loop !203

.prol.loopexit886:                                ; preds = %.prol.preheader885, %.preheader61.i.i.i
  %.lcssa854.unr = phi ptr [ poison, %.preheader61.i.i.i ], [ %i.acj, %.prol.preheader885 ]
  %.lcssa853.unr = phi ptr [ poison, %.preheader61.i.i.i ], [ %i.acm, %.prol.preheader885 ]
  %.166.i.i.i.unr = phi ptr [ %.070.i.i.i, %.preheader61.i.i.i ], [ %i.acm, %.prol.preheader885 ]
  %.14965.i.i.i.unr = phi ptr [ %.04869.i.i.i, %.preheader61.i.i.i ], [ %i.acj, %.prol.preheader885 ]
  %.15764.i.i.i.unr = phi i32 [ %i.yz, %.preheader61.i.i.i ], [ %i.acg, %.prol.preheader885 ]
  br i1 %i.acf, label %._crit_edge.i.i213.i, label %.preheader61.i.i.i.new

.preheader61.i.i.i.new:                           ; preds = %.prol.loopexit886, %.preheader61.i.i.i.new
  %.166.i.i.i = phi ptr [ %i.adl, %.preheader61.i.i.i.new ], [ %.166.i.i.i.unr, %.prol.loopexit886 ] ; 9 uses
  %.14965.i.i.i = phi ptr [ %i.adi, %.preheader61.i.i.i.new ], [ %.14965.i.i.i.unr, %.prol.loopexit886 ] ; 9 uses
  %.15764.i.i.i = phi i32 [ %i.adf, %.preheader61.i.i.i.new ], [ %.15764.i.i.i.unr, %.prol.loopexit886 ]
  %i.acn = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 1
  %i.aco = load i8, ptr %.14965.i.i.i, align 1
  %i.acp = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 2
  %i.acq = load i8, ptr %i.acn, align 1
  %i.acr = getelementptr inbounds nuw i8, ptr %.166.i.i.i, i64 1
  store i8 %i.acq, ptr %.166.i.i.i, align 1
  %i.acs = getelementptr inbounds nuw i8, ptr %.166.i.i.i, i64 2
  store i8 %i.aco, ptr %i.acr, align 1
  %i.act = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 3
  %i.acu = load i8, ptr %i.acp, align 1
  %i.acv = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 4
  %i.acw = load i8, ptr %i.act, align 1
  %i.acx = getelementptr inbounds nuw i8, ptr %.166.i.i.i, i64 3
  store i8 %i.acw, ptr %i.acs, align 1
  %i.acy = getelementptr inbounds nuw i8, ptr %.166.i.i.i, i64 4
  store i8 %i.acu, ptr %i.acx, align 1
  %i.acz = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 5
  %i.ada = load i8, ptr %i.acv, align 1
  %i.adb = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 6
  %i.adc = load i8, ptr %i.acz, align 1
  %i.add = getelementptr inbounds nuw i8, ptr %.166.i.i.i, i64 5
  store i8 %i.adc, ptr %i.acy, align 1
  %i.ade = getelementptr inbounds nuw i8, ptr %.166.i.i.i, i64 6
  store i8 %i.ada, ptr %i.add, align 1
  %i.adf = add nsw i32 %.15764.i.i.i, -4          ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 7
  %i.adh = load i8, ptr %i.adb, align 1
  %i.adi = getelementptr inbounds nuw i8, ptr %.14965.i.i.i, i64 8 ; 2 uses
  %i.adj = load i8, ptr %i.adg, align 1
  %i.adk = getelementptr inbounds nuw i8, ptr %.166.i.i.i, i64 7
  store i8 %i.adj, ptr %i.ade, align 1
  %i.adl = getelementptr inbounds nuw i8, ptr %.166.i.i.i, i64 8 ; 2 uses
  store i8 %i.adh, ptr %i.adk, align 1
  %.not58.i.i.i.3 = icmp eq i32 %i.adf, 0
  br i1 %.not58.i.i.i.3, label %._crit_edge.i.i213.i, label %.preheader61.i.i.i.new, !llvm.loop !204

._crit_edge.i.i213.i:                             ; preds = %.preheader61.i.i.i.new, %.prol.loopexit886
  %.lcssa854 = phi ptr [ %.lcssa854.unr, %.prol.loopexit886 ], [ %i.adi, %.preheader61.i.i.i.new ]
  %.lcssa853 = phi ptr [ %.lcssa853.unr, %.prol.loopexit886 ], [ %i.adl, %.preheader61.i.i.i.new ]
  %i.adm = add nsw i32 %.in.i.i212.i, -1          ; 2 uses
  %i.adn = getelementptr inbounds i8, ptr %.lcssa854, i64 %i.acc
  %i.ado = getelementptr inbounds i8, ptr %.lcssa853, i64 %i.acd
  %.not.i.i214.i = icmp eq i32 %i.adm, 0
  br i1 %.not.i.i214.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader61.i.i.i, !llvm.loop !205

bb.as:                                            ; preds = %.loopexit.i
  switch i32 %7, label %bb.be [
    i32 842094169, label %bb.at
    i32 1448433993, label %bb.ax
    i32 842094158, label %bb.bb
  ]

bb.at:                                            ; preds = %bb.as
  %i.adp = add i32 %0, 1
  %i.adq = sdiv i32 %i.adp, 2                     ; 6 uses
  %i.adr = add nsw i32 %1, 1
  %i.ads = sdiv i32 %i.adr, 2                     ; 3 uses
  %i.adt = add nsw i32 %6, 1
  %i.adu = sdiv i32 %i.adt, 2                     ; 2 uses
  %i.adv = sub nsw i32 %i.adu, %i.adq
  %i.adw = shl nsw i32 %i.adv, 1
  %i.adx = add nsw i32 %11, 1
  %i.ady = sdiv i32 %i.adx, 2                     ; 2 uses
  %i.adz = sub nsw i32 %i.ady, %i.adq
  %i.aea = mul nsw i32 %6, %1
  %i.aeb = sext i32 %i.aea to i64
  %i.aec = getelementptr inbounds i8, ptr %5, i64 %i.aeb ; 3 uses
  %i.aed = mul nsw i32 %11, %1
  %i.aee = sext i32 %i.aed to i64
  %i.aef = getelementptr inbounds i8, ptr %10, i64 %i.aee ; 3 uses
  %i.aeg = icmp eq ptr %i.aec, %i.aef
  br i1 %i.aeg, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.aeh = shl nsw i32 %i.adu, 1
  %i.aei = sext i32 %i.ads to i64
  %i.aej = sext i32 %i.aeh to i64
  %i.aek = mul nsw i64 %i.aej, %i.aei             ; 2 uses
  %i.ael = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.aek) #6 ; 4 uses
  %.not.i.i239.i = icmp eq ptr %i.ael, null
  br i1 %.not.i.i239.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ael, ptr readonly align 1 %i.aec, i64 %i.aek, i1 false)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.at
  %.058.i.i217.i = phi ptr [ %i.ael, %bb.av ], [ %i.aec, %bb.at ]
  %.0.i.i218.i = phi ptr [ %i.ael, %bb.av ], [ null, %bb.at ]
  %.off.i.i219.i = add i32 %1, 2
  %.not6271.i.i220.i = icmp ult i32 %.off.i.i219.i, 3
  br i1 %.not6271.i.i220.i, label %._crit_edge75.split.i.i237.i, label %.preheader.lr.ph.i.i221.i

.preheader.lr.ph.i.i221.i:                        ; preds = %bb.aw
  %.off76.i.i222.i = add i32 %0, 2
  %.not6364.i.i223.i = icmp ult i32 %.off76.i.i222.i, 3
  %i.aem = sext i32 %i.adw to i64
  %i.aen = sext i32 %i.adz to i64                 ; 2 uses
  br i1 %.not6364.i.i223.i, label %._crit_edge75.split.i.i237.i, label %.preheader.preheader.i.i224.i

.preheader.preheader.i.i224.i:                    ; preds = %.preheader.lr.ph.i.i221.i
  %i.aeo = mul nsw i32 %i.ady, %i.ads
  %i.aep = sext i32 %i.aeo to i64
  %i.aeq = getelementptr inbounds i8, ptr %i.aef, i64 %i.aep
  %i.aer = add nsw i32 %i.adq, -1
  %xtraiter882 = and i32 %i.adq, 3                ; 2 uses
  %lcmp.mod883.not = icmp eq i32 %xtraiter882, 0
  %i.aes = icmp ult i32 %i.aer, 3
  br label %.preheader.i.i225.i

.preheader.i.i225.i:                              ; preds = %._crit_edge.i.i235.i, %.preheader.preheader.i.i224.i
  %.in.i.i226.i = phi i32 [ %i.afz, %._crit_edge.i.i235.i ], [ %i.ads, %.preheader.preheader.i.i224.i ]
  %.174.i.i227.i = phi ptr [ %i.agc, %._crit_edge.i.i235.i ], [ %i.aeq, %.preheader.preheader.i.i224.i ] ; 2 uses
  %.15173.i.i228.i = phi ptr [ %i.agb, %._crit_edge.i.i235.i ], [ %i.aef, %.preheader.preheader.i.i224.i ] ; 2 uses
  %.05372.i.i229.i = phi ptr [ %i.aga, %._crit_edge.i.i235.i ], [ %.058.i.i217.i, %.preheader.preheader.i.i224.i ] ; 2 uses
  br i1 %lcmp.mod883.not, label %.prol.loopexit881, label %.prol.preheader880

.prol.preheader880:                               ; preds = %.preheader.i.i225.i, %.prol.preheader880
  %.268.i.i230.i.prol = phi ptr [ %i.aez, %.prol.preheader880 ], [ %.174.i.i227.i, %.preheader.i.i225.i ] ; 2 uses
  %.25267.i.i231.i.prol = phi ptr [ %i.aew, %.prol.preheader880 ], [ %.15173.i.i228.i, %.preheader.i.i225.i ] ; 2 uses
  %.15466.i.i232.i.prol = phi ptr [ %i.aex, %.prol.preheader880 ], [ %.05372.i.i229.i, %.preheader.i.i225.i ] ; 3 uses
  %.05665.i.i233.i.prol = phi i32 [ %i.aet, %.prol.preheader880 ], [ %i.adq, %.preheader.i.i225.i ]
  %prol.iter884 = phi i32 [ %prol.iter884.next, %.prol.preheader880 ], [ 0, %.preheader.i.i225.i ]
  %i.aet = add nsw i32 %.05665.i.i233.i.prol, -1  ; 2 uses
  %i.aeu = getelementptr inbounds nuw i8, ptr %.15466.i.i232.i.prol, i64 1
  %i.aev = load i8, ptr %.15466.i.i232.i.prol, align 1
  %i.aew = getelementptr inbounds nuw i8, ptr %.25267.i.i231.i.prol, i64 1 ; 3 uses
  store i8 %i.aev, ptr %.25267.i.i231.i.prol, align 1
  %i.aex = getelementptr inbounds nuw i8, ptr %.15466.i.i232.i.prol, i64 2 ; 3 uses
  %i.aey = load i8, ptr %i.aeu, align 1
  %i.aez = getelementptr inbounds nuw i8, ptr %.268.i.i230.i.prol, i64 1 ; 3 uses
  store i8 %i.aey, ptr %.268.i.i230.i.prol, align 1
  %prol.iter884.next = add i32 %prol.iter884, 1   ; 2 uses
  %prol.iter884.cmp.not = icmp eq i32 %prol.iter884.next, %xtraiter882
  br i1 %prol.iter884.cmp.not, label %.prol.loopexit881, label %.prol.preheader880, !llvm.loop !206

.prol.loopexit881:                                ; preds = %.prol.preheader880, %.preheader.i.i225.i
  %.lcssa857.unr = phi ptr [ poison, %.preheader.i.i225.i ], [ %i.aew, %.prol.preheader880 ]
  %.lcssa856.unr = phi ptr [ poison, %.preheader.i.i225.i ], [ %i.aex, %.prol.preheader880 ]
  %.lcssa855.unr = phi ptr [ poison, %.preheader.i.i225.i ], [ %i.aez, %.prol.preheader880 ]
  %.268.i.i230.i.unr = phi ptr [ %.174.i.i227.i, %.preheader.i.i225.i ], [ %i.aez, %.prol.preheader880 ]
  %.25267.i.i231.i.unr = phi ptr [ %.15173.i.i228.i, %.preheader.i.i225.i ], [ %i.aew, %.prol.preheader880 ]
  %.15466.i.i232.i.unr = phi ptr [ %.05372.i.i229.i, %.preheader.i.i225.i ], [ %i.aex, %.prol.preheader880 ]
  %.05665.i.i233.i.unr = phi i32 [ %i.adq, %.preheader.i.i225.i ], [ %i.aet, %.prol.preheader880 ]
  br i1 %i.aes, label %._crit_edge.i.i235.i, label %.preheader.i.i225.i.new

.preheader.i.i225.i.new:                          ; preds = %.prol.loopexit881, %.preheader.i.i225.i.new
  %.268.i.i230.i = phi ptr [ %i.afy, %.preheader.i.i225.i.new ], [ %.268.i.i230.i.unr, %.prol.loopexit881 ] ; 5 uses
  %.25267.i.i231.i = phi ptr [ %i.afv, %.preheader.i.i225.i.new ], [ %.25267.i.i231.i.unr, %.prol.loopexit881 ] ; 5 uses
  %.15466.i.i232.i = phi ptr [ %i.afw, %.preheader.i.i225.i.new ], [ %.15466.i.i232.i.unr, %.prol.loopexit881 ] ; 9 uses
  %.05665.i.i233.i = phi i32 [ %i.afs, %.preheader.i.i225.i.new ], [ %.05665.i.i233.i.unr, %.prol.loopexit881 ]
  %i.afa = getelementptr inbounds nuw i8, ptr %.15466.i.i232.i, i64 1
  %i.afb = load i8, ptr %.15466.i.i232.i, align 1
  %i.afc = getelementptr inbounds nuw i8, ptr %.25267.i.i231.i, i64 1
  store i8 %i.afb, ptr %.25267.i.i231.i, align 1
  %i.afd = getelementptr inbounds nuw i8, ptr %.15466.i.i232.i, i64 2
  %i.afe = load i8, ptr %i.afa, align 1
  %i.aff = getelementptr inbounds nuw i8, ptr %.268.i.i230.i, i64 1
  store i8 %i.afe, ptr %.268.i.i230.i, align 1
  %i.afg = getelementptr inbounds nuw i8, ptr %.15466.i.i232.i, i64 3
  %i.afh = load i8, ptr %i.afd, align 1
  %i.afi = getelementptr inbounds nuw i8, ptr %.25267.i.i231.i, i64 2
  store i8 %i.afh, ptr %i.afc, align 1
  %i.afj = getelementptr inbounds nuw i8, ptr %.15466.i.i232.i, i64 4
  %i.afk = load i8, ptr %i.afg, align 1
  %i.afl = getelementptr inbounds nuw i8, ptr %.268.i.i230.i, i64 2
  store i8 %i.afk, ptr %i.aff, align 1
  %i.afm = getelementptr inbounds nuw i8, ptr %.15466.i.i232.i, i64 5
  %i.afn = load i8, ptr %i.afj, align 1
  %i.afo = getelementptr inbounds nuw i8, ptr %.25267.i.i231.i, i64 3
  store i8 %i.afn, ptr %i.afi, align 1
  %i.afp = getelementptr inbounds nuw i8, ptr %.15466.i.i232.i, i64 6
  %i.afq = load i8, ptr %i.afm, align 1
  %i.afr = getelementptr inbounds nuw i8, ptr %.268.i.i230.i, i64 3
  store i8 %i.afq, ptr %i.afl, align 1
  %i.afs = add nsw i32 %.05665.i.i233.i, -4       ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %.15466.i.i232.i, i64 7
  %i.afu = load i8, ptr %i.afp, align 1
  %i.afv = getelementptr inbounds nuw i8, ptr %.25267.i.i231.i, i64 4 ; 2 uses
  store i8 %i.afu, ptr %i.afo, align 1
  %i.afw = getelementptr inbounds nuw i8, ptr %.15466.i.i232.i, i64 8 ; 2 uses
  %i.afx = load i8, ptr %i.aft, align 1
  %i.afy = getelementptr inbounds nuw i8, ptr %.268.i.i230.i, i64 4 ; 2 uses
  store i8 %i.afx, ptr %i.afr, align 1
  %.not63.i.i234.i.3 = icmp eq i32 %i.afs, 0
  br i1 %.not63.i.i234.i.3, label %._crit_edge.i.i235.i, label %.preheader.i.i225.i.new, !llvm.loop !194

._crit_edge.i.i235.i:                             ; preds = %.preheader.i.i225.i.new, %.prol.loopexit881
  %.lcssa857 = phi ptr [ %.lcssa857.unr, %.prol.loopexit881 ], [ %i.afv, %.preheader.i.i225.i.new ]
  %.lcssa856 = phi ptr [ %.lcssa856.unr, %.prol.loopexit881 ], [ %i.afw, %.preheader.i.i225.i.new ]
  %.lcssa855 = phi ptr [ %.lcssa855.unr, %.prol.loopexit881 ], [ %i.afy, %.preheader.i.i225.i.new ]
  %i.afz = add nsw i32 %.in.i.i226.i, -1          ; 2 uses
  %i.aga = getelementptr inbounds i8, ptr %.lcssa856, i64 %i.aem
  %i.agb = getelementptr inbounds i8, ptr %.lcssa857, i64 %i.aen
  %i.agc = getelementptr inbounds i8, ptr %.lcssa855, i64 %i.aen
  %.not62.i.i236.i = icmp eq i32 %i.afz, 0
  br i1 %.not62.i.i236.i, label %._crit_edge75.split.i.i237.i, label %.preheader.i.i225.i, !llvm.loop !195

._crit_edge75.split.i.i237.i:                     ; preds = %._crit_edge.i.i235.i, %.preheader.lr.ph.i.i221.i, %bb.aw
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i218.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.ax:                                            ; preds = %bb.as
  %i.agd = add i32 %0, 1
  %i.age = sdiv i32 %i.agd, 2                     ; 6 uses
  %i.agf = add nsw i32 %1, 1
  %i.agg = sdiv i32 %i.agf, 2                     ; 3 uses
  %i.agh = add nsw i32 %6, 1
  %i.agi = sdiv i32 %i.agh, 2                     ; 2 uses
  %i.agj = sub nsw i32 %i.agi, %i.age
  %i.agk = shl nsw i32 %i.agj, 1
  %i.agl = add nsw i32 %11, 1
  %i.agm = sdiv i32 %i.agl, 2                     ; 2 uses
  %i.agn = sub nsw i32 %i.agm, %i.age
  %i.ago = mul nsw i32 %6, %1
  %i.agp = sext i32 %i.ago to i64
  %i.agq = getelementptr inbounds i8, ptr %5, i64 %i.agp ; 3 uses
  %i.agr = mul nsw i32 %11, %1
  %i.ags = sext i32 %i.agr to i64
  %i.agt = getelementptr inbounds i8, ptr %10, i64 %i.ags ; 3 uses
  %i.agu = icmp eq ptr %i.agq, %i.agt
  br i1 %i.agu, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.agv = shl nsw i32 %i.agi, 1
  %i.agw = sext i32 %i.agg to i64
  %i.agx = sext i32 %i.agv to i64
  %i.agy = mul nsw i64 %i.agx, %i.agw             ; 2 uses
  %i.agz = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.agy) #6 ; 4 uses
  %.not.i.i263.i = icmp eq ptr %i.agz, null
  br i1 %.not.i.i263.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.agz, ptr readonly align 1 %i.agq, i64 %i.agy, i1 false)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.058.i.i241.i = phi ptr [ %i.agz, %bb.az ], [ %i.agq, %bb.ax ]
  %.0.i.i242.i = phi ptr [ %i.agz, %bb.az ], [ null, %bb.ax ]
  %.off.i.i243.i = add i32 %1, 2
  %.not6271.i.i244.i = icmp ult i32 %.off.i.i243.i, 3
  br i1 %.not6271.i.i244.i, label %._crit_edge75.split.i.i261.i, label %.preheader.lr.ph.i.i245.i

.preheader.lr.ph.i.i245.i:                        ; preds = %bb.ba
  %.off76.i.i246.i = add i32 %0, 2
  %.not6364.i.i247.i = icmp ult i32 %.off76.i.i246.i, 3
  %i.aha = sext i32 %i.agk to i64
  %i.ahb = sext i32 %i.agn to i64                 ; 2 uses
  br i1 %.not6364.i.i247.i, label %._crit_edge75.split.i.i261.i, label %.preheader.preheader.i.i248.i

.preheader.preheader.i.i248.i:                    ; preds = %.preheader.lr.ph.i.i245.i
  %i.ahc = mul nsw i32 %i.agm, %i.agg
  %i.ahd = sext i32 %i.ahc to i64
  %i.ahe = getelementptr inbounds i8, ptr %i.agt, i64 %i.ahd
  %i.ahf = add nsw i32 %i.age, -1
  %xtraiter877 = and i32 %i.age, 3                ; 2 uses
  %lcmp.mod878.not = icmp eq i32 %xtraiter877, 0
  %i.ahg = icmp ult i32 %i.ahf, 3
  br label %.preheader.i.i249.i

.preheader.i.i249.i:                              ; preds = %._crit_edge.i.i259.i, %.preheader.preheader.i.i248.i
  %.in.i.i250.i = phi i32 [ %i.ain, %._crit_edge.i.i259.i ], [ %i.agg, %.preheader.preheader.i.i248.i ]
  %.174.i.i251.i = phi ptr [ %i.aiq, %._crit_edge.i.i259.i ], [ %i.agt, %.preheader.preheader.i.i248.i ] ; 2 uses
  %.15173.i.i252.i = phi ptr [ %i.aip, %._crit_edge.i.i259.i ], [ %i.ahe, %.preheader.preheader.i.i248.i ] ; 2 uses
  %.05372.i.i253.i = phi ptr [ %i.aio, %._crit_edge.i.i259.i ], [ %.058.i.i241.i, %.preheader.preheader.i.i248.i ] ; 2 uses
  br i1 %lcmp.mod878.not, label %.prol.loopexit876, label %.prol.preheader875

.prol.preheader875:                               ; preds = %.preheader.i.i249.i, %.prol.preheader875
  %.268.i.i254.i.prol = phi ptr [ %i.ahn, %.prol.preheader875 ], [ %.174.i.i251.i, %.preheader.i.i249.i ] ; 2 uses
  %.25267.i.i255.i.prol = phi ptr [ %i.ahk, %.prol.preheader875 ], [ %.15173.i.i252.i, %.preheader.i.i249.i ] ; 2 uses
  %.15466.i.i256.i.prol = phi ptr [ %i.ahl, %.prol.preheader875 ], [ %.05372.i.i253.i, %.preheader.i.i249.i ] ; 3 uses
  %.05665.i.i257.i.prol = phi i32 [ %i.ahh, %.prol.preheader875 ], [ %i.age, %.preheader.i.i249.i ]
  %prol.iter879 = phi i32 [ %prol.iter879.next, %.prol.preheader875 ], [ 0, %.preheader.i.i249.i ]
  %i.ahh = add nsw i32 %.05665.i.i257.i.prol, -1  ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i.prol, i64 1
  %i.ahj = load i8, ptr %.15466.i.i256.i.prol, align 1
  %i.ahk = getelementptr inbounds nuw i8, ptr %.25267.i.i255.i.prol, i64 1 ; 3 uses
  store i8 %i.ahj, ptr %.25267.i.i255.i.prol, align 1
  %i.ahl = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i.prol, i64 2 ; 3 uses
  %i.ahm = load i8, ptr %i.ahi, align 1
  %i.ahn = getelementptr inbounds nuw i8, ptr %.268.i.i254.i.prol, i64 1 ; 3 uses
  store i8 %i.ahm, ptr %.268.i.i254.i.prol, align 1
  %prol.iter879.next = add i32 %prol.iter879, 1   ; 2 uses
  %prol.iter879.cmp.not = icmp eq i32 %prol.iter879.next, %xtraiter877
  br i1 %prol.iter879.cmp.not, label %.prol.loopexit876, label %.prol.preheader875, !llvm.loop !207

.prol.loopexit876:                                ; preds = %.prol.preheader875, %.preheader.i.i249.i
  %.lcssa860.unr = phi ptr [ poison, %.preheader.i.i249.i ], [ %i.ahk, %.prol.preheader875 ]
  %.lcssa859.unr = phi ptr [ poison, %.preheader.i.i249.i ], [ %i.ahl, %.prol.preheader875 ]
  %.lcssa858.unr = phi ptr [ poison, %.preheader.i.i249.i ], [ %i.ahn, %.prol.preheader875 ]
  %.268.i.i254.i.unr = phi ptr [ %.174.i.i251.i, %.preheader.i.i249.i ], [ %i.ahn, %.prol.preheader875 ]
  %.25267.i.i255.i.unr = phi ptr [ %.15173.i.i252.i, %.preheader.i.i249.i ], [ %i.ahk, %.prol.preheader875 ]
  %.15466.i.i256.i.unr = phi ptr [ %.05372.i.i253.i, %.preheader.i.i249.i ], [ %i.ahl, %.prol.preheader875 ]
  %.05665.i.i257.i.unr = phi i32 [ %i.age, %.preheader.i.i249.i ], [ %i.ahh, %.prol.preheader875 ]
  br i1 %i.ahg, label %._crit_edge.i.i259.i, label %.preheader.i.i249.i.new

.preheader.i.i249.i.new:                          ; preds = %.prol.loopexit876, %.preheader.i.i249.i.new
  %.268.i.i254.i = phi ptr [ %i.aim, %.preheader.i.i249.i.new ], [ %.268.i.i254.i.unr, %.prol.loopexit876 ] ; 5 uses
  %.25267.i.i255.i = phi ptr [ %i.aij, %.preheader.i.i249.i.new ], [ %.25267.i.i255.i.unr, %.prol.loopexit876 ] ; 5 uses
  %.15466.i.i256.i = phi ptr [ %i.aik, %.preheader.i.i249.i.new ], [ %.15466.i.i256.i.unr, %.prol.loopexit876 ] ; 9 uses
  %.05665.i.i257.i = phi i32 [ %i.aig, %.preheader.i.i249.i.new ], [ %.05665.i.i257.i.unr, %.prol.loopexit876 ]
  %i.aho = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i, i64 1
  %i.ahp = load i8, ptr %.15466.i.i256.i, align 1
  %i.ahq = getelementptr inbounds nuw i8, ptr %.25267.i.i255.i, i64 1
  store i8 %i.ahp, ptr %.25267.i.i255.i, align 1
  %i.ahr = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i, i64 2
  %i.ahs = load i8, ptr %i.aho, align 1
  %i.aht = getelementptr inbounds nuw i8, ptr %.268.i.i254.i, i64 1
  store i8 %i.ahs, ptr %.268.i.i254.i, align 1
  %i.ahu = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i, i64 3
  %i.ahv = load i8, ptr %i.ahr, align 1
  %i.ahw = getelementptr inbounds nuw i8, ptr %.25267.i.i255.i, i64 2
  store i8 %i.ahv, ptr %i.ahq, align 1
  %i.ahx = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i, i64 4
  %i.ahy = load i8, ptr %i.ahu, align 1
  %i.ahz = getelementptr inbounds nuw i8, ptr %.268.i.i254.i, i64 2
  store i8 %i.ahy, ptr %i.aht, align 1
  %i.aia = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i, i64 5
  %i.aib = load i8, ptr %i.ahx, align 1
  %i.aic = getelementptr inbounds nuw i8, ptr %.25267.i.i255.i, i64 3
  store i8 %i.aib, ptr %i.ahw, align 1
  %i.aid = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i, i64 6
  %i.aie = load i8, ptr %i.aia, align 1
  %i.aif = getelementptr inbounds nuw i8, ptr %.268.i.i254.i, i64 3
  store i8 %i.aie, ptr %i.ahz, align 1
  %i.aig = add nsw i32 %.05665.i.i257.i, -4       ; 2 uses
  %i.aih = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i, i64 7
  %i.aii = load i8, ptr %i.aid, align 1
  %i.aij = getelementptr inbounds nuw i8, ptr %.25267.i.i255.i, i64 4 ; 2 uses
  store i8 %i.aii, ptr %i.aic, align 1
  %i.aik = getelementptr inbounds nuw i8, ptr %.15466.i.i256.i, i64 8 ; 2 uses
  %i.ail = load i8, ptr %i.aih, align 1
  %i.aim = getelementptr inbounds nuw i8, ptr %.268.i.i254.i, i64 4 ; 2 uses
  store i8 %i.ail, ptr %i.aif, align 1
  %.not63.i.i258.i.3 = icmp eq i32 %i.aig, 0
  br i1 %.not63.i.i258.i.3, label %._crit_edge.i.i259.i, label %.preheader.i.i249.i.new, !llvm.loop !194

._crit_edge.i.i259.i:                             ; preds = %.preheader.i.i249.i.new, %.prol.loopexit876
  %.lcssa860 = phi ptr [ %.lcssa860.unr, %.prol.loopexit876 ], [ %i.aij, %.preheader.i.i249.i.new ]
  %.lcssa859 = phi ptr [ %.lcssa859.unr, %.prol.loopexit876 ], [ %i.aik, %.preheader.i.i249.i.new ]
  %.lcssa858 = phi ptr [ %.lcssa858.unr, %.prol.loopexit876 ], [ %i.aim, %.preheader.i.i249.i.new ]
  %i.ain = add nsw i32 %.in.i.i250.i, -1          ; 2 uses
  %i.aio = getelementptr inbounds i8, ptr %.lcssa859, i64 %i.aha
  %i.aip = getelementptr inbounds i8, ptr %.lcssa860, i64 %i.ahb
  %i.aiq = getelementptr inbounds i8, ptr %.lcssa858, i64 %i.ahb
  %.not62.i.i260.i = icmp eq i32 %i.ain, 0
  br i1 %.not62.i.i260.i, label %._crit_edge75.split.i.i261.i, label %.preheader.i.i249.i, !llvm.loop !195

._crit_edge75.split.i.i261.i:                     ; preds = %._crit_edge.i.i259.i, %.preheader.lr.ph.i.i245.i, %bb.ba
  tail call void @SDL_free_REAL(ptr noundef %.0.i.i242.i) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

bb.bb:                                            ; preds = %bb.as
  %i.air = add i32 %0, 1
  %i.ais = sdiv i32 %i.air, 2                     ; 10 uses
  %i.ait = add nsw i32 %1, 1
  %i.aiu = sdiv i32 %i.ait, 2                     ; 2 uses
  %i.aiv = add nsw i32 %6, 1
  %i.aiw = sdiv i32 %i.aiv, 2
  %i.aix = shl nsw i32 %i.aiw, 1                  ; 2 uses
  %i.aiy = add nsw i32 %11, 1
  %i.aiz = sdiv i32 %i.aiy, 2
  %i.aja = shl nsw i32 %i.aiz, 1                  ; 2 uses
  %i.ajb = mul nsw i32 %6, %1
  %i.ajc = sext i32 %i.ajb to i64
  %i.ajd = getelementptr inbounds i8, ptr %5, i64 %i.ajc ; 3 uses
  %i.aje = mul nsw i32 %11, %1
  %i.ajf = sext i32 %i.aje to i64
  %i.ajg = getelementptr inbounds i8, ptr %10, i64 %i.ajf ; 3 uses
  %i.ajh = ptrtoint ptr %i.ajd to i64
  %i.aji = ptrtoint ptr %i.ajg to i64
  %i.ajj = or i64 %i.aji, %i.ajh
  %i.ajk = and i64 %i.ajj, 1
  %i.ajl = icmp eq i64 %i.ajk, 0
  %.off82.i.i265.i = add i32 %1, 2
  %.not5978.i.i266.i = icmp ult i32 %.off82.i.i265.i, 3 ; 2 uses
  br i1 %i.ajl, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  br i1 %.not5978.i.i266.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.lr.ph.i.i280.i

.preheader.lr.ph.i.i280.i:                        ; preds = %bb.bc
  %i.ajm = shl nsw i32 %i.ais, 1                  ; 2 uses
  %i.ajn = sub nsw i32 %i.aja, %i.ajm
  %i.ajo = ashr exact i32 %i.ajn, 1
  %i.ajp = sub nsw i32 %i.aix, %i.ajm
  %i.ajq = ashr exact i32 %i.ajp, 1
  %.off83.i.i281.i = add i32 %0, 2
  %.not6071.i.i282.i = icmp ult i32 %.off83.i.i281.i, 3
  %i.ajr = sext i32 %i.ajq to i64
  %i.ajs = sext i32 %i.ajo to i64
  br i1 %.not6071.i.i282.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.i.i283.i.preheader

.preheader.i.i283.i.preheader:                    ; preds = %.preheader.lr.ph.i.i280.i
  %i.ajt = add nsw i32 %i.ais, -1                 ; 3 uses
  %i.aju = zext i32 %i.ajt to i64
  %i.ajv = add nuw nsw i64 %i.aju, 1              ; 5 uses
  %min.iters.check = icmp ult i32 %i.ajt, 7
  %min.iters.check507 = icmp ult i32 %i.ajt, 15
  %i.ajw = and i64 %i.ajv, 8
  %n.vec = and i64 %i.ajv, 8589934576             ; 5 uses
  %i.ajx = shl nuw nsw i64 %n.vec, 1              ; 2 uses
  %i.ajy = trunc i64 %n.vec to i32
  %i.ajz = sub i32 %i.ais, %i.ajy
  %cmp.n = icmp eq i64 %i.ajv, %n.vec
  %min.epilog.iters.check.not.not = icmp eq i64 %i.ajw, 0
  %n.vec512 = and i64 %i.ajv, 8589934584          ; 4 uses
  %i.aka = shl nuw nsw i64 %n.vec512, 1           ; 2 uses
  %i.akb = trunc i64 %n.vec512 to i32
  %i.akc = sub i32 %i.ais, %i.akb
  %cmp.n518 = icmp eq i64 %i.ajv, %n.vec512
  br label %iter.check

iter.check:                                       ; preds = %.preheader.i.i283.i.preheader, %._crit_edge75.i.i291.i
  %.in84.i.i284.i = phi i32 [ %i.alp, %._crit_edge75.i.i291.i ], [ %i.aiu, %.preheader.i.i283.i.preheader ]
  %.05080.i.i285.i = phi ptr [ %i.alr, %._crit_edge75.i.i291.i ], [ %i.ajg, %.preheader.i.i283.i.preheader ] ; 6 uses
  %.05279.i.i286.i = phi ptr [ %i.alq, %._crit_edge75.i.i291.i ], [ %i.ajd, %.preheader.i.i283.i.preheader ] ; 6 uses
  %.05279.i.i286.i506 = ptrtoaddr ptr %.05279.i.i286.i to i64
  %.05080.i.i285.i505 = ptrtoaddr ptr %.05080.i.i285.i to i64
  %i.akd = sub i64 %.05279.i.i286.i506, %.05080.i.i285.i505
  %diff.check = icmp ugt i64 %i.akd, -32
  %or.cond778 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond778, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check507, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ake = getelementptr i8, ptr %.05080.i.i285.i, i64 %i.ajx ; 2 uses
  %i.akf = getelementptr i8, ptr %.05279.i.i286.i, i64 %i.ajx ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.akg = shl i64 %index, 1                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.05080.i.i285.i, i64 %i.akg ; 2 uses
  %next.gep508 = getelementptr i8, ptr %.05279.i.i286.i, i64 %i.akg ; 2 uses
  %i.akh = getelementptr i8, ptr %next.gep508, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep508, align 2
  %wide.load509 = load <8 x i16>, ptr %i.akh, align 2
  %i.aki = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load)
  %i.akj = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load509)
  %i.akk = getelementptr i8, ptr %next.gep, i64 16
  store <8 x i16> %i.aki, ptr %next.gep, align 2
  store <8 x i16> %i.akj, ptr %i.akk, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.akl = icmp eq i64 %index.next, %n.vec
  br i1 %i.akl, label %middle.block, label %vector.body, !llvm.loop !208

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge75.i.i291.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check.not.not, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !198

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.akm = getelementptr i8, ptr %.05080.i.i285.i, i64 %i.aka ; 2 uses
  %i.akn = getelementptr i8, ptr %.05279.i.i286.i, i64 %i.aka ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index513 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next517, %vec.epilog.vector.body ] ; 2 uses
  %i.ako = shl i64 %index513, 1                   ; 2 uses
  %next.gep514 = getelementptr i8, ptr %.05080.i.i285.i, i64 %i.ako
  %next.gep515 = getelementptr i8, ptr %.05279.i.i286.i, i64 %i.ako
  %wide.load516 = load <8 x i16>, ptr %next.gep515, align 2
  %i.akp = tail call <8 x i16> @llvm.bswap.v8i16(<8 x i16> %wide.load516)
  store <8 x i16> %i.akp, ptr %next.gep514, align 2
  %index.next517 = add nuw i64 %index513, 8       ; 2 uses
  %i.akq = icmp eq i64 %index.next517, %n.vec512
  br i1 %i.akq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !209

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n518, label %._crit_edge75.i.i291.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.15174.i.i287.i.ph = phi ptr [ %.05080.i.i285.i, %iter.check ], [ %i.ake, %vec.epilog.iter.check ], [ %i.akm, %vec.epilog.middle.block ] ; 2 uses
  %.15373.i.i288.i.ph = phi ptr [ %.05279.i.i286.i, %iter.check ], [ %i.akf, %vec.epilog.iter.check ], [ %i.akn, %vec.epilog.middle.block ] ; 2 uses
  %.05672.i.i289.i.ph = phi i32 [ %i.ais, %iter.check ], [ %i.ajz, %vec.epilog.iter.check ], [ %i.akc, %vec.epilog.middle.block ] ; 4 uses
  %i.akr = add nsw i32 %.05672.i.i289.i.ph, -1
  %xtraiter872 = and i32 %.05672.i.i289.i.ph, 3   ; 2 uses
  %lcmp.mod873.not = icmp eq i32 %xtraiter872, 0
  br i1 %lcmp.mod873.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.15174.i.i287.i.prol = phi ptr [ %i.akw, %vec.epilog.scalar.ph.prol ], [ %.15174.i.i287.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.15373.i.i288.i.prol = phi ptr [ %i.akt, %vec.epilog.scalar.ph.prol ], [ %.15373.i.i288.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.05672.i.i289.i.prol = phi i32 [ %i.aks, %vec.epilog.scalar.ph.prol ], [ %.05672.i.i289.i.ph, %vec.epilog.scalar.ph.preheader ]
  %prol.iter874 = phi i32 [ %prol.iter874.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aks = add nsw i32 %.05672.i.i289.i.prol, -1  ; 2 uses
  %i.akt = getelementptr inbounds nuw i8, ptr %.15373.i.i288.i.prol, i64 2 ; 3 uses
  %i.aku = load i16, ptr %.15373.i.i288.i.prol, align 2
  %i.akv = tail call i16 @llvm.bswap.i16(i16 %i.aku)
  %i.akw = getelementptr inbounds nuw i8, ptr %.15174.i.i287.i.prol, i64 2 ; 3 uses
  store i16 %i.akv, ptr %.15174.i.i287.i.prol, align 2
  %prol.iter874.next = add i32 %prol.iter874, 1   ; 2 uses
  %prol.iter874.cmp.not = icmp eq i32 %prol.iter874.next, %xtraiter872
  br i1 %prol.iter874.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !210

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.lcssa863.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.akt, %vec.epilog.scalar.ph.prol ]
  %.lcssa862.unr = phi ptr [ poison, %vec.epilog.scalar.ph.preheader ], [ %i.akw, %vec.epilog.scalar.ph.prol ]
  %.15174.i.i287.i.unr = phi ptr [ %.15174.i.i287.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.akw, %vec.epilog.scalar.ph.prol ]
  %.15373.i.i288.i.unr = phi ptr [ %.15373.i.i288.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.akt, %vec.epilog.scalar.ph.prol ]
  %.05672.i.i289.i.unr = phi i32 [ %.05672.i.i289.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.aks, %vec.epilog.scalar.ph.prol ]
  %i.akx = icmp ult i32 %i.akr, 3
  br i1 %i.akx, label %._crit_edge75.i.i291.i, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.15174.i.i287.i = phi ptr [ %i.alo, %vec.epilog.scalar.ph ], [ %.15174.i.i287.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.15373.i.i288.i = phi ptr [ %i.all, %vec.epilog.scalar.ph ], [ %.15373.i.i288.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %.05672.i.i289.i = phi i32 [ %i.alk, %vec.epilog.scalar.ph ], [ %.05672.i.i289.i.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %i.aky = getelementptr inbounds nuw i8, ptr %.15373.i.i288.i, i64 2
  %i.akz = load i16, ptr %.15373.i.i288.i, align 2
  %i.ala = tail call i16 @llvm.bswap.i16(i16 %i.akz)
  %i.alb = getelementptr inbounds nuw i8, ptr %.15174.i.i287.i, i64 2
  store i16 %i.ala, ptr %.15174.i.i287.i, align 2
  %i.alc = getelementptr inbounds nuw i8, ptr %.15373.i.i288.i, i64 4
  %i.ald = load i16, ptr %i.aky, align 2
  %i.ale = tail call i16 @llvm.bswap.i16(i16 %i.ald)
  %i.alf = getelementptr inbounds nuw i8, ptr %.15174.i.i287.i, i64 4
  store i16 %i.ale, ptr %i.alb, align 2
  %i.alg = getelementptr inbounds nuw i8, ptr %.15373.i.i288.i, i64 6
  %i.alh = load i16, ptr %i.alc, align 2
  %i.ali = tail call i16 @llvm.bswap.i16(i16 %i.alh)
  %i.alj = getelementptr inbounds nuw i8, ptr %.15174.i.i287.i, i64 6
  store i16 %i.ali, ptr %i.alf, align 2
  %i.alk = add nsw i32 %.05672.i.i289.i, -4       ; 2 uses
  %i.all = getelementptr inbounds nuw i8, ptr %.15373.i.i288.i, i64 8 ; 2 uses
  %i.alm = load i16, ptr %i.alg, align 2
  %i.aln = tail call i16 @llvm.bswap.i16(i16 %i.alm)
  %i.alo = getelementptr inbounds nuw i8, ptr %.15174.i.i287.i, i64 8 ; 2 uses
  store i16 %i.aln, ptr %i.alj, align 2
  %.not60.i.i290.i.3 = icmp eq i32 %i.alk, 0
  br i1 %.not60.i.i290.i.3, label %._crit_edge75.i.i291.i, label %vec.epilog.scalar.ph, !llvm.loop !211

._crit_edge75.i.i291.i:                           ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa502 = phi ptr [ %i.akn, %vec.epilog.middle.block ], [ %i.akf, %middle.block ], [ %.lcssa863.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.all, %vec.epilog.scalar.ph ]
  %.lcssa501 = phi ptr [ %i.akm, %vec.epilog.middle.block ], [ %i.ake, %middle.block ], [ %.lcssa862.unr, %vec.epilog.scalar.ph.prol.loopexit ], [ %i.alo, %vec.epilog.scalar.ph ]
  %i.alp = add nsw i32 %.in84.i.i284.i, -1        ; 2 uses
  %i.alq = getelementptr inbounds [2 x i8], ptr %.lcssa502, i64 %i.ajr
  %i.alr = getelementptr inbounds [2 x i8], ptr %.lcssa501, i64 %i.ajs
  %.not59.i.i292.i = icmp eq i32 %i.alp, 0
  br i1 %.not59.i.i292.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %iter.check, !llvm.loop !202

bb.bd:                                            ; preds = %bb.bb
  br i1 %.not5978.i.i266.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader61.lr.ph.i.i267.i

.preheader61.lr.ph.i.i267.i:                      ; preds = %bb.bd
  %i.als = shl nsw i32 %i.ais, 1                  ; 2 uses
  %i.alt = sub nsw i32 %i.aja, %i.als
  %i.alu = sub nsw i32 %i.aix, %i.als
  %.off81.i.i268.i = add i32 %0, 2
  %.not5863.i.i269.i = icmp ult i32 %.off81.i.i268.i, 3
  %i.alv = sext i32 %i.alu to i64
  %i.alw = sext i32 %i.alt to i64
  br i1 %.not5863.i.i269.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader61.i.i270.i.preheader

.preheader61.i.i270.i.preheader:                  ; preds = %.preheader61.lr.ph.i.i267.i
  %i.alx = add nsw i32 %i.ais, -1
  %xtraiter869 = and i32 %i.ais, 3                ; 2 uses
  %lcmp.mod870.not = icmp eq i32 %xtraiter869, 0
  %i.aly = icmp ult i32 %i.alx, 3
  br label %.preheader61.i.i270.i

.preheader61.i.i270.i:                            ; preds = %.preheader61.i.i270.i.preheader, %._crit_edge.i.i278.i
  %.in.i.i271.i = phi i32 [ %i.anf, %._crit_edge.i.i278.i ], [ %i.aiu, %.preheader61.i.i270.i.preheader ]
  %.070.i.i272.i = phi ptr [ %i.anh, %._crit_edge.i.i278.i ], [ %i.ajg, %.preheader61.i.i270.i.preheader ] ; 2 uses
  %.04869.i.i273.i = phi ptr [ %i.ang, %._crit_edge.i.i278.i ], [ %i.ajd, %.preheader61.i.i270.i.preheader ] ; 2 uses
  br i1 %lcmp.mod870.not, label %.prol.loopexit868, label %.prol.preheader867

.prol.preheader867:                               ; preds = %.preheader61.i.i270.i, %.prol.preheader867
  %.166.i.i274.i.prol = phi ptr [ %i.amf, %.prol.preheader867 ], [ %.070.i.i272.i, %.preheader61.i.i270.i ] ; 3 uses
  %.14965.i.i275.i.prol = phi ptr [ %i.amc, %.prol.preheader867 ], [ %.04869.i.i273.i, %.preheader61.i.i270.i ] ; 3 uses
  %.15764.i.i276.i.prol = phi i32 [ %i.alz, %.prol.preheader867 ], [ %i.ais, %.preheader61.i.i270.i ]
  %prol.iter871 = phi i32 [ %prol.iter871.next, %.prol.preheader867 ], [ 0, %.preheader61.i.i270.i ]
  %i.alz = add nsw i32 %.15764.i.i276.i.prol, -1  ; 2 uses
  %i.ama = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i.prol, i64 1
  %i.amb = load i8, ptr %.14965.i.i275.i.prol, align 1
  %i.amc = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i.prol, i64 2 ; 3 uses
  %i.amd = load i8, ptr %i.ama, align 1
  %i.ame = getelementptr inbounds nuw i8, ptr %.166.i.i274.i.prol, i64 1
  store i8 %i.amd, ptr %.166.i.i274.i.prol, align 1
  %i.amf = getelementptr inbounds nuw i8, ptr %.166.i.i274.i.prol, i64 2 ; 3 uses
  store i8 %i.amb, ptr %i.ame, align 1
  %prol.iter871.next = add i32 %prol.iter871, 1   ; 2 uses
  %prol.iter871.cmp.not = icmp eq i32 %prol.iter871.next, %xtraiter869
  br i1 %prol.iter871.cmp.not, label %.prol.loopexit868, label %.prol.preheader867, !llvm.loop !212

.prol.loopexit868:                                ; preds = %.prol.preheader867, %.preheader61.i.i270.i
  %.lcssa866.unr = phi ptr [ poison, %.preheader61.i.i270.i ], [ %i.amc, %.prol.preheader867 ]
  %.lcssa865.unr = phi ptr [ poison, %.preheader61.i.i270.i ], [ %i.amf, %.prol.preheader867 ]
  %.166.i.i274.i.unr = phi ptr [ %.070.i.i272.i, %.preheader61.i.i270.i ], [ %i.amf, %.prol.preheader867 ]
  %.14965.i.i275.i.unr = phi ptr [ %.04869.i.i273.i, %.preheader61.i.i270.i ], [ %i.amc, %.prol.preheader867 ]
  %.15764.i.i276.i.unr = phi i32 [ %i.ais, %.preheader61.i.i270.i ], [ %i.alz, %.prol.preheader867 ]
  br i1 %i.aly, label %._crit_edge.i.i278.i, label %.preheader61.i.i270.i.new

.preheader61.i.i270.i.new:                        ; preds = %.prol.loopexit868, %.preheader61.i.i270.i.new
  %.166.i.i274.i = phi ptr [ %i.ane, %.preheader61.i.i270.i.new ], [ %.166.i.i274.i.unr, %.prol.loopexit868 ] ; 9 uses
  %.14965.i.i275.i = phi ptr [ %i.anb, %.preheader61.i.i270.i.new ], [ %.14965.i.i275.i.unr, %.prol.loopexit868 ] ; 9 uses
  %.15764.i.i276.i = phi i32 [ %i.amy, %.preheader61.i.i270.i.new ], [ %.15764.i.i276.i.unr, %.prol.loopexit868 ]
  %i.amg = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i, i64 1
  %i.amh = load i8, ptr %.14965.i.i275.i, align 1
  %i.ami = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i, i64 2
  %i.amj = load i8, ptr %i.amg, align 1
  %i.amk = getelementptr inbounds nuw i8, ptr %.166.i.i274.i, i64 1
  store i8 %i.amj, ptr %.166.i.i274.i, align 1
  %i.aml = getelementptr inbounds nuw i8, ptr %.166.i.i274.i, i64 2
  store i8 %i.amh, ptr %i.amk, align 1
  %i.amm = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i, i64 3
  %i.amn = load i8, ptr %i.ami, align 1
  %i.amo = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i, i64 4
  %i.amp = load i8, ptr %i.amm, align 1
  %i.amq = getelementptr inbounds nuw i8, ptr %.166.i.i274.i, i64 3
  store i8 %i.amp, ptr %i.aml, align 1
  %i.amr = getelementptr inbounds nuw i8, ptr %.166.i.i274.i, i64 4
  store i8 %i.amn, ptr %i.amq, align 1
  %i.ams = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i, i64 5
  %i.amt = load i8, ptr %i.amo, align 1
  %i.amu = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i, i64 6
  %i.amv = load i8, ptr %i.ams, align 1
  %i.amw = getelementptr inbounds nuw i8, ptr %.166.i.i274.i, i64 5
  store i8 %i.amv, ptr %i.amr, align 1
  %i.amx = getelementptr inbounds nuw i8, ptr %.166.i.i274.i, i64 6
  store i8 %i.amt, ptr %i.amw, align 1
  %i.amy = add nsw i32 %.15764.i.i276.i, -4       ; 2 uses
  %i.amz = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i, i64 7
  %i.ana = load i8, ptr %i.amu, align 1
  %i.anb = getelementptr inbounds nuw i8, ptr %.14965.i.i275.i, i64 8 ; 2 uses
  %i.anc = load i8, ptr %i.amz, align 1
  %i.and = getelementptr inbounds nuw i8, ptr %.166.i.i274.i, i64 7
  store i8 %i.anc, ptr %i.amx, align 1
  %i.ane = getelementptr inbounds nuw i8, ptr %.166.i.i274.i, i64 8 ; 2 uses
  store i8 %i.ana, ptr %i.and, align 1
  %.not58.i.i277.i.3 = icmp eq i32 %i.amy, 0
  br i1 %.not58.i.i277.i.3, label %._crit_edge.i.i278.i, label %.preheader61.i.i270.i.new, !llvm.loop !204

._crit_edge.i.i278.i:                             ; preds = %.preheader61.i.i270.i.new, %.prol.loopexit868
  %.lcssa866 = phi ptr [ %.lcssa866.unr, %.prol.loopexit868 ], [ %i.anb, %.preheader61.i.i270.i.new ]
  %.lcssa865 = phi ptr [ %.lcssa865.unr, %.prol.loopexit868 ], [ %i.ane, %.preheader61.i.i270.i.new ]
  %i.anf = add nsw i32 %.in.i.i271.i, -1          ; 2 uses
  %i.ang = getelementptr inbounds i8, ptr %.lcssa866, i64 %i.alv
  %i.anh = getelementptr inbounds i8, ptr %.lcssa865, i64 %i.alw
  %.not.i.i279.i = icmp eq i32 %i.anf, 0
  br i1 %.not.i.i279.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader61.i.i270.i, !llvm.loop !205

bb.be:                                            ; preds = %bb.as, %bb.ag, %bb.w, %bb.m, %.loopexit.i
  %i.ani = tail call ptr @SDL_GetPixelFormatName_REAL(i32 noundef %2) #6
  %i.anj = tail call ptr @SDL_GetPixelFormatName_REAL(i32 noundef %7) #6
  %i.ank = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.17, ptr noundef %i.ani, ptr noundef %i.anj) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

IsPlanar2x2Format.exit:                           ; preds = %bb.k
  switch i32 %2, label %IsPacked4Format.exit74 [
    i32 808530000, label %bb.br
    i32 844715353, label %bb.bf
    i32 1431918169, label %bb.bf
    i32 1448433993, label %bb.br
    i32 842094169, label %bb.br
    i32 842094158, label %bb.br
    i32 825382478, label %bb.br
  ]

bb.bf:                                            ; preds = %bb.j, %bb.j, %bb.j, %IsPlanar2x2Format.exit, %IsPlanar2x2Format.exit
  switch i32 %7, label %IsPacked4Format.exit [
    i32 1498831189, label %bb.bg
    i32 844715353, label %bb.bg
    i32 1431918169, label %bb.bg
  ]

bb.bg:                                            ; preds = %bb.bf, %bb.bf, %bb.bf
  switch i32 %2, label %bb.bq [
    i32 844715353, label %bb.bh
    i32 1498831189, label %bb.bk
    i32 1431918169, label %bb.bn
  ]

bb.bh:                                            ; preds = %bb.bg
  switch i32 %7, label %bb.bq [
    i32 1498831189, label %bb.bi
    i32 1431918169, label %bb.bj
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.anl = add i32 %0, 1
  %i.anm = sdiv i32 %i.anl, 2                     ; 5 uses
  %.not38.i.i.i = icmp eq i32 %1, 0
  br i1 %.not38.i.i.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.lr.ph.i.i.i64

.preheader.lr.ph.i.i.i64:                         ; preds = %bb.bi
  %i.ann = shl nsw i32 %i.anm, 2                  ; 2 uses
  %i.ano = sub nsw i32 %11, %i.ann
  %i.anp = sub nsw i32 %6, %i.ann
  %.off.i.i.i65 = add i32 %0, 2
  %.not3233.i.i.i = icmp ult i32 %.off.i.i.i65, 3
  %i.anq = sext i32 %i.anp to i64
  %i.anr = sext i32 %i.ano to i64
  br i1 %.not3233.i.i.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.i.i.i66.preheader

.preheader.i.i.i66.preheader:                     ; preds = %.preheader.lr.ph.i.i.i64
  %i.ans = add nsw i32 %i.anm, -1
  %xtraiter942 = and i32 %i.anm, 3                ; 2 uses
  %lcmp.mod943.not = icmp eq i32 %xtraiter942, 0
  %i.ant = icmp ult i32 %i.ans, 3
  br label %.preheader.i.i.i66

.preheader.i.i.i66:                               ; preds = %.preheader.i.i.i66.preheader, %._crit_edge.i.i.i68
  %.in.i.i.i67 = phi i32 [ %i.aoq, %._crit_edge.i.i.i68 ], [ %1, %.preheader.i.i.i66.preheader ]
  %.02940.i.i.i = phi ptr [ %i.aos, %._crit_edge.i.i.i68 ], [ %10, %.preheader.i.i.i66.preheader ] ; 2 uses
  %.03039.i.i.i = phi ptr [ %i.aor, %._crit_edge.i.i.i68 ], [ %5, %.preheader.i.i.i66.preheader ] ; 2 uses
  br i1 %lcmp.mod943.not, label %.prol.loopexit941, label %.prol.preheader940

.prol.preheader940:                               ; preds = %.preheader.i.i.i66, %.prol.preheader940
  %.036.i.i.i.prol = phi i32 [ %i.anu, %.prol.preheader940 ], [ %i.anm, %.preheader.i.i.i66 ]
  %.135.i.i.i.prol = phi ptr [ %i.any, %.prol.preheader940 ], [ %.02940.i.i.i, %.preheader.i.i.i66 ] ; 2 uses
  %.13134.i.i.i.prol = phi ptr [ %i.anv, %.prol.preheader940 ], [ %.03039.i.i.i, %.preheader.i.i.i66 ] ; 2 uses
  %prol.iter944 = phi i32 [ %prol.iter944.next, %.prol.preheader940 ], [ 0, %.preheader.i.i.i66 ]
  %i.anu = add nsw i32 %.036.i.i.i.prol, -1       ; 2 uses
  %i.anv = getelementptr inbounds nuw i8, ptr %.13134.i.i.i.prol, i64 4 ; 3 uses
  %i.anw = load <4 x i8>, ptr %.13134.i.i.i.prol, align 1
  %i.anx = shufflevector <4 x i8> %i.anw, <4 x i8> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i8> %i.anx, ptr %.135.i.i.i.prol, align 1
  %i.any = getelementptr inbounds nuw i8, ptr %.135.i.i.i.prol, i64 4 ; 3 uses
  %prol.iter944.next = add i32 %prol.iter944, 1   ; 2 uses
  %prol.iter944.cmp.not = icmp eq i32 %prol.iter944.next, %xtraiter942
  br i1 %prol.iter944.cmp.not, label %.prol.loopexit941, label %.prol.preheader940, !llvm.loop !213

.prol.loopexit941:                                ; preds = %.prol.preheader940, %.preheader.i.i.i66
  %.lcssa815.unr = phi ptr [ poison, %.preheader.i.i.i66 ], [ %i.anv, %.prol.preheader940 ]
  %.lcssa814.unr = phi ptr [ poison, %.preheader.i.i.i66 ], [ %i.any, %.prol.preheader940 ]
  %.036.i.i.i.unr = phi i32 [ %i.anm, %.preheader.i.i.i66 ], [ %i.anu, %.prol.preheader940 ]
  %.135.i.i.i.unr = phi ptr [ %.02940.i.i.i, %.preheader.i.i.i66 ], [ %i.any, %.prol.preheader940 ]
  %.13134.i.i.i.unr = phi ptr [ %.03039.i.i.i, %.preheader.i.i.i66 ], [ %i.anv, %.prol.preheader940 ]
  br i1 %i.ant, label %._crit_edge.i.i.i68, label %.preheader.i.i.i66.new

.preheader.i.i.i66.new:                           ; preds = %.prol.loopexit941, %.preheader.i.i.i66.new
  %.036.i.i.i = phi i32 [ %i.aol, %.preheader.i.i.i66.new ], [ %.036.i.i.i.unr, %.prol.loopexit941 ]
  %.135.i.i.i = phi ptr [ %i.aop, %.preheader.i.i.i66.new ], [ %.135.i.i.i.unr, %.prol.loopexit941 ] ; 5 uses
  %.13134.i.i.i = phi ptr [ %i.aom, %.preheader.i.i.i66.new ], [ %.13134.i.i.i.unr, %.prol.loopexit941 ] ; 5 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %.13134.i.i.i, i64 4
  %i.aoa = load <4 x i8>, ptr %.13134.i.i.i, align 1
  %i.aob = shufflevector <4 x i8> %i.aoa, <4 x i8> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i8> %i.aob, ptr %.135.i.i.i, align 1
  %i.aoc = getelementptr inbounds nuw i8, ptr %.135.i.i.i, i64 4
  %i.aod = getelementptr inbounds nuw i8, ptr %.13134.i.i.i, i64 8
  %i.aoe = load <4 x i8>, ptr %i.anz, align 1
  %i.aof = shufflevector <4 x i8> %i.aoe, <4 x i8> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i8> %i.aof, ptr %i.aoc, align 1
  %i.aog = getelementptr inbounds nuw i8, ptr %.135.i.i.i, i64 8
  %i.aoh = getelementptr inbounds nuw i8, ptr %.13134.i.i.i, i64 12
  %i.aoi = load <4 x i8>, ptr %i.aod, align 1
  %i.aoj = shufflevector <4 x i8> %i.aoi, <4 x i8> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i8> %i.aoj, ptr %i.aog, align 1
  %i.aok = getelementptr inbounds nuw i8, ptr %.135.i.i.i, i64 12
  %i.aol = add nsw i32 %.036.i.i.i, -4            ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %.13134.i.i.i, i64 16 ; 2 uses
  %i.aon = load <4 x i8>, ptr %i.aoh, align 1
  %i.aoo = shufflevector <4 x i8> %i.aon, <4 x i8> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i8> %i.aoo, ptr %i.aok, align 1
  %i.aop = getelementptr inbounds nuw i8, ptr %.135.i.i.i, i64 16 ; 2 uses
  %.not32.i.i.i.3 = icmp eq i32 %i.aol, 0
  br i1 %.not32.i.i.i.3, label %._crit_edge.i.i.i68, label %.preheader.i.i.i66.new, !llvm.loop !214

._crit_edge.i.i.i68:                              ; preds = %.preheader.i.i.i66.new, %.prol.loopexit941
  %.lcssa815 = phi ptr [ %.lcssa815.unr, %.prol.loopexit941 ], [ %i.aom, %.preheader.i.i.i66.new ]
  %.lcssa814 = phi ptr [ %.lcssa814.unr, %.prol.loopexit941 ], [ %i.aop, %.preheader.i.i.i66.new ]
  %i.aoq = add nsw i32 %.in.i.i.i67, -1           ; 2 uses
  %i.aor = getelementptr inbounds i8, ptr %.lcssa815, i64 %i.anq
  %i.aos = getelementptr inbounds i8, ptr %.lcssa814, i64 %i.anr
  %.not.i.i.i69 = icmp eq i32 %i.aoq, 0
  br i1 %.not.i.i.i69, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.i.i.i66, !llvm.loop !215

bb.bj:                                            ; preds = %bb.bh
  %i.aot = add i32 %0, 1
  %i.aou = sdiv i32 %i.aot, 2                     ; 5 uses
  %.not38.i.i42.i = icmp eq i32 %1, 0
  br i1 %.not38.i.i42.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.lr.ph.i.i43.i

.preheader.lr.ph.i.i43.i:                         ; preds = %bb.bj
  %i.aov = shl nsw i32 %i.aou, 2                  ; 2 uses
  %i.aow = sub nsw i32 %11, %i.aov
  %i.aox = sub nsw i32 %6, %i.aov
  %.off.i.i44.i = add i32 %0, 2
  %.not3233.i.i45.i = icmp ult i32 %.off.i.i44.i, 3
  %i.aoy = sext i32 %i.aox to i64
  %i.aoz = sext i32 %i.aow to i64
  br i1 %.not3233.i.i45.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.i.i46.i.preheader

.preheader.i.i46.i.preheader:                     ; preds = %.preheader.lr.ph.i.i43.i
  %i.apa = add nsw i32 %i.aou, -1
  %xtraiter937 = and i32 %i.aou, 3                ; 2 uses
  %lcmp.mod938.not = icmp eq i32 %xtraiter937, 0
  %i.apb = icmp ult i32 %i.apa, 3
  br label %.preheader.i.i46.i

.preheader.i.i46.i:                               ; preds = %.preheader.i.i46.i.preheader, %._crit_edge.i.i54.i
  %.in.i.i47.i = phi i32 [ %i.apy, %._crit_edge.i.i54.i ], [ %1, %.preheader.i.i46.i.preheader ]
  %.02940.i.i48.i = phi ptr [ %i.aqa, %._crit_edge.i.i54.i ], [ %10, %.preheader.i.i46.i.preheader ] ; 2 uses
  %.03039.i.i49.i = phi ptr [ %i.apz, %._crit_edge.i.i54.i ], [ %5, %.preheader.i.i46.i.preheader ] ; 2 uses
  br i1 %lcmp.mod938.not, label %.prol.loopexit936, label %.prol.preheader935

.prol.preheader935:                               ; preds = %.preheader.i.i46.i, %.prol.preheader935
  %.036.i.i50.i.prol = phi i32 [ %i.apc, %.prol.preheader935 ], [ %i.aou, %.preheader.i.i46.i ]
  %.135.i.i51.i.prol = phi ptr [ %i.apg, %.prol.preheader935 ], [ %.02940.i.i48.i, %.preheader.i.i46.i ] ; 2 uses
  %.13134.i.i52.i.prol = phi ptr [ %i.apd, %.prol.preheader935 ], [ %.03039.i.i49.i, %.preheader.i.i46.i ] ; 2 uses
  %prol.iter939 = phi i32 [ %prol.iter939.next, %.prol.preheader935 ], [ 0, %.preheader.i.i46.i ]
  %i.apc = add nsw i32 %.036.i.i50.i.prol, -1     ; 2 uses
  %i.apd = getelementptr inbounds nuw i8, ptr %.13134.i.i52.i.prol, i64 4 ; 3 uses
  %i.ape = load <4 x i8>, ptr %.13134.i.i52.i.prol, align 1
  %i.apf = shufflevector <4 x i8> %i.ape, <4 x i8> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  store <4 x i8> %i.apf, ptr %.135.i.i51.i.prol, align 1
  %i.apg = getelementptr inbounds nuw i8, ptr %.135.i.i51.i.prol, i64 4 ; 3 uses
  %prol.iter939.next = add i32 %prol.iter939, 1   ; 2 uses
  %prol.iter939.cmp.not = icmp eq i32 %prol.iter939.next, %xtraiter937
  br i1 %prol.iter939.cmp.not, label %.prol.loopexit936, label %.prol.preheader935, !llvm.loop !216

.prol.loopexit936:                                ; preds = %.prol.preheader935, %.preheader.i.i46.i
  %.lcssa818.unr = phi ptr [ poison, %.preheader.i.i46.i ], [ %i.apd, %.prol.preheader935 ]
  %.lcssa817.unr = phi ptr [ poison, %.preheader.i.i46.i ], [ %i.apg, %.prol.preheader935 ]
  %.036.i.i50.i.unr = phi i32 [ %i.aou, %.preheader.i.i46.i ], [ %i.apc, %.prol.preheader935 ]
  %.135.i.i51.i.unr = phi ptr [ %.02940.i.i48.i, %.preheader.i.i46.i ], [ %i.apg, %.prol.preheader935 ]
  %.13134.i.i52.i.unr = phi ptr [ %.03039.i.i49.i, %.preheader.i.i46.i ], [ %i.apd, %.prol.preheader935 ]
  br i1 %i.apb, label %._crit_edge.i.i54.i, label %.preheader.i.i46.i.new

.preheader.i.i46.i.new:                           ; preds = %.prol.loopexit936, %.preheader.i.i46.i.new
  %.036.i.i50.i = phi i32 [ %i.apt, %.preheader.i.i46.i.new ], [ %.036.i.i50.i.unr, %.prol.loopexit936 ]
  %.135.i.i51.i = phi ptr [ %i.apx, %.preheader.i.i46.i.new ], [ %.135.i.i51.i.unr, %.prol.loopexit936 ] ; 5 uses
  %.13134.i.i52.i = phi ptr [ %i.apu, %.preheader.i.i46.i.new ], [ %.13134.i.i52.i.unr, %.prol.loopexit936 ] ; 5 uses
  %i.aph = getelementptr inbounds nuw i8, ptr %.13134.i.i52.i, i64 4
  %i.api = load <4 x i8>, ptr %.13134.i.i52.i, align 1
  %i.apj = shufflevector <4 x i8> %i.api, <4 x i8> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  store <4 x i8> %i.apj, ptr %.135.i.i51.i, align 1
  %i.apk = getelementptr inbounds nuw i8, ptr %.135.i.i51.i, i64 4
  %i.apl = getelementptr inbounds nuw i8, ptr %.13134.i.i52.i, i64 8
  %i.apm = load <4 x i8>, ptr %i.aph, align 1
  %i.apn = shufflevector <4 x i8> %i.apm, <4 x i8> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  store <4 x i8> %i.apn, ptr %i.apk, align 1
  %i.apo = getelementptr inbounds nuw i8, ptr %.135.i.i51.i, i64 8
  %i.app = getelementptr inbounds nuw i8, ptr %.13134.i.i52.i, i64 12
  %i.apq = load <4 x i8>, ptr %i.apl, align 1
  %i.apr = shufflevector <4 x i8> %i.apq, <4 x i8> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  store <4 x i8> %i.apr, ptr %i.apo, align 1
  %i.aps = getelementptr inbounds nuw i8, ptr %.135.i.i51.i, i64 12
  %i.apt = add nsw i32 %.036.i.i50.i, -4          ; 2 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %.13134.i.i52.i, i64 16 ; 2 uses
  %i.apv = load <4 x i8>, ptr %i.app, align 1
  %i.apw = shufflevector <4 x i8> %i.apv, <4 x i8> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  store <4 x i8> %i.apw, ptr %i.aps, align 1
  %i.apx = getelementptr inbounds nuw i8, ptr %.135.i.i51.i, i64 16 ; 2 uses
  %.not32.i.i53.i.3 = icmp eq i32 %i.apt, 0
  br i1 %.not32.i.i53.i.3, label %._crit_edge.i.i54.i, label %.preheader.i.i46.i.new, !llvm.loop !217

._crit_edge.i.i54.i:                              ; preds = %.preheader.i.i46.i.new, %.prol.loopexit936
  %.lcssa818 = phi ptr [ %.lcssa818.unr, %.prol.loopexit936 ], [ %i.apu, %.preheader.i.i46.i.new ]
  %.lcssa817 = phi ptr [ %.lcssa817.unr, %.prol.loopexit936 ], [ %i.apx, %.preheader.i.i46.i.new ]
  %i.apy = add nsw i32 %.in.i.i47.i, -1           ; 2 uses
  %i.apz = getelementptr inbounds i8, ptr %.lcssa818, i64 %i.aoy
  %i.aqa = getelementptr inbounds i8, ptr %.lcssa817, i64 %i.aoz
  %.not.i.i55.i = icmp eq i32 %i.apy, 0
  br i1 %.not.i.i55.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.i.i46.i, !llvm.loop !218

bb.bk:                                            ; preds = %bb.bg
  switch i32 %7, label %bb.bq [
    i32 844715353, label %bb.bl
    i32 1431918169, label %bb.bm
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.aqb = add i32 %0, 1
  %i.aqc = sdiv i32 %i.aqb, 2                     ; 5 uses
  %.not38.i.i56.i = icmp eq i32 %1, 0
  br i1 %.not38.i.i56.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.lr.ph.i.i57.i

.preheader.lr.ph.i.i57.i:                         ; preds = %bb.bl
  %i.aqd = shl nsw i32 %i.aqc, 2                  ; 2 uses
  %i.aqe = sub nsw i32 %11, %i.aqd
  %i.aqf = sub nsw i32 %6, %i.aqd
  %.off.i.i58.i = add i32 %0, 2
  %.not3233.i.i59.i = icmp ult i32 %.off.i.i58.i, 3
  %i.aqg = sext i32 %i.aqf to i64
  %i.aqh = sext i32 %i.aqe to i64
  br i1 %.not3233.i.i59.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.i.i60.i.preheader

.preheader.i.i60.i.preheader:                     ; preds = %.preheader.lr.ph.i.i57.i
  %i.aqi = add nsw i32 %i.aqc, -1
  %xtraiter932 = and i32 %i.aqc, 3                ; 2 uses
  %lcmp.mod933.not = icmp eq i32 %xtraiter932, 0
  %i.aqj = icmp ult i32 %i.aqi, 3
  br label %.preheader.i.i60.i

.preheader.i.i60.i:                               ; preds = %.preheader.i.i60.i.preheader, %._crit_edge.i.i68.i
  %.in.i.i61.i = phi i32 [ %i.arg, %._crit_edge.i.i68.i ], [ %1, %.preheader.i.i60.i.preheader ]
  %.02940.i.i62.i = phi ptr [ %i.ari, %._crit_edge.i.i68.i ], [ %10, %.preheader.i.i60.i.preheader ] ; 2 uses
  %.03039.i.i63.i = phi ptr [ %i.arh, %._crit_edge.i.i68.i ], [ %5, %.preheader.i.i60.i.preheader ] ; 2 uses
  br i1 %lcmp.mod933.not, label %.prol.loopexit931, label %.prol.preheader930

.prol.preheader930:                               ; preds = %.preheader.i.i60.i, %.prol.preheader930
  %.036.i.i64.i.prol = phi i32 [ %i.aqk, %.prol.preheader930 ], [ %i.aqc, %.preheader.i.i60.i ]
  %.135.i.i65.i.prol = phi ptr [ %i.aqo, %.prol.preheader930 ], [ %.02940.i.i62.i, %.preheader.i.i60.i ] ; 2 uses
  %.13134.i.i66.i.prol = phi ptr [ %i.aql, %.prol.preheader930 ], [ %.03039.i.i63.i, %.preheader.i.i60.i ] ; 2 uses
  %prol.iter934 = phi i32 [ %prol.iter934.next, %.prol.preheader930 ], [ 0, %.preheader.i.i60.i ]
  %i.aqk = add nsw i32 %.036.i.i64.i.prol, -1     ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %.13134.i.i66.i.prol, i64 4 ; 3 uses
  %i.aqm = load <4 x i8>, ptr %.13134.i.i66.i.prol, align 1
  %i.aqn = shufflevector <4 x i8> %i.aqm, <4 x i8> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i8> %i.aqn, ptr %.135.i.i65.i.prol, align 1
  %i.aqo = getelementptr inbounds nuw i8, ptr %.135.i.i65.i.prol, i64 4 ; 3 uses
  %prol.iter934.next = add i32 %prol.iter934, 1   ; 2 uses
  %prol.iter934.cmp.not = icmp eq i32 %prol.iter934.next, %xtraiter932
  br i1 %prol.iter934.cmp.not, label %.prol.loopexit931, label %.prol.preheader930, !llvm.loop !219

.prol.loopexit931:                                ; preds = %.prol.preheader930, %.preheader.i.i60.i
  %.lcssa821.unr = phi ptr [ poison, %.preheader.i.i60.i ], [ %i.aql, %.prol.preheader930 ]
  %.lcssa820.unr = phi ptr [ poison, %.preheader.i.i60.i ], [ %i.aqo, %.prol.preheader930 ]
  %.036.i.i64.i.unr = phi i32 [ %i.aqc, %.preheader.i.i60.i ], [ %i.aqk, %.prol.preheader930 ]
  %.135.i.i65.i.unr = phi ptr [ %.02940.i.i62.i, %.preheader.i.i60.i ], [ %i.aqo, %.prol.preheader930 ]
  %.13134.i.i66.i.unr = phi ptr [ %.03039.i.i63.i, %.preheader.i.i60.i ], [ %i.aql, %.prol.preheader930 ]
  br i1 %i.aqj, label %._crit_edge.i.i68.i, label %.preheader.i.i60.i.new

.preheader.i.i60.i.new:                           ; preds = %.prol.loopexit931, %.preheader.i.i60.i.new
  %.036.i.i64.i = phi i32 [ %i.arb, %.preheader.i.i60.i.new ], [ %.036.i.i64.i.unr, %.prol.loopexit931 ]
  %.135.i.i65.i = phi ptr [ %i.arf, %.preheader.i.i60.i.new ], [ %.135.i.i65.i.unr, %.prol.loopexit931 ] ; 5 uses
  %.13134.i.i66.i = phi ptr [ %i.arc, %.preheader.i.i60.i.new ], [ %.13134.i.i66.i.unr, %.prol.loopexit931 ] ; 5 uses
  %i.aqp = getelementptr inbounds nuw i8, ptr %.13134.i.i66.i, i64 4
  %i.aqq = load <4 x i8>, ptr %.13134.i.i66.i, align 1
  %i.aqr = shufflevector <4 x i8> %i.aqq, <4 x i8> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i8> %i.aqr, ptr %.135.i.i65.i, align 1
  %i.aqs = getelementptr inbounds nuw i8, ptr %.135.i.i65.i, i64 4
  %i.aqt = getelementptr inbounds nuw i8, ptr %.13134.i.i66.i, i64 8
  %i.aqu = load <4 x i8>, ptr %i.aqp, align 1
  %i.aqv = shufflevector <4 x i8> %i.aqu, <4 x i8> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i8> %i.aqv, ptr %i.aqs, align 1
  %i.aqw = getelementptr inbounds nuw i8, ptr %.135.i.i65.i, i64 8
  %i.aqx = getelementptr inbounds nuw i8, ptr %.13134.i.i66.i, i64 12
  %i.aqy = load <4 x i8>, ptr %i.aqt, align 1
  %i.aqz = shufflevector <4 x i8> %i.aqy, <4 x i8> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i8> %i.aqz, ptr %i.aqw, align 1
  %i.ara = getelementptr inbounds nuw i8, ptr %.135.i.i65.i, i64 12
  %i.arb = add nsw i32 %.036.i.i64.i, -4          ; 2 uses
  %i.arc = getelementptr inbounds nuw i8, ptr %.13134.i.i66.i, i64 16 ; 2 uses
  %i.ard = load <4 x i8>, ptr %i.aqx, align 1
  %i.are = shufflevector <4 x i8> %i.ard, <4 x i8> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  store <4 x i8> %i.are, ptr %i.ara, align 1
  %i.arf = getelementptr inbounds nuw i8, ptr %.135.i.i65.i, i64 16 ; 2 uses
  %.not32.i.i67.i.3 = icmp eq i32 %i.arb, 0
  br i1 %.not32.i.i67.i.3, label %._crit_edge.i.i68.i, label %.preheader.i.i60.i.new, !llvm.loop !220

._crit_edge.i.i68.i:                              ; preds = %.preheader.i.i60.i.new, %.prol.loopexit931
  %.lcssa821 = phi ptr [ %.lcssa821.unr, %.prol.loopexit931 ], [ %i.arc, %.preheader.i.i60.i.new ]
  %.lcssa820 = phi ptr [ %.lcssa820.unr, %.prol.loopexit931 ], [ %i.arf, %.preheader.i.i60.i.new ]
  %i.arg = add nsw i32 %.in.i.i61.i, -1           ; 2 uses
  %i.arh = getelementptr inbounds i8, ptr %.lcssa821, i64 %i.aqg
  %i.ari = getelementptr inbounds i8, ptr %.lcssa820, i64 %i.aqh
  %.not.i.i69.i = icmp eq i32 %i.arg, 0
  br i1 %.not.i.i69.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.i.i60.i, !llvm.loop !221

bb.bm:                                            ; preds = %bb.bk
  %i.arj = add i32 %0, 1
  %i.ark = sdiv i32 %i.arj, 2                     ; 5 uses
  %.not38.i.i70.i = icmp eq i32 %1, 0
  br i1 %.not38.i.i70.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.lr.ph.i.i71.i

.preheader.lr.ph.i.i71.i:                         ; preds = %bb.bm
  %i.arl = shl nsw i32 %i.ark, 2                  ; 2 uses
  %i.arm = sub nsw i32 %11, %i.arl
  %i.arn = sub nsw i32 %6, %i.arl
  %.off.i.i72.i = add i32 %0, 2
  %.not3233.i.i73.i = icmp ult i32 %.off.i.i72.i, 3
  %i.aro = sext i32 %i.arn to i64
  %i.arp = sext i32 %i.arm to i64
  br i1 %.not3233.i.i73.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.i.i74.i.preheader

.preheader.i.i74.i.preheader:                     ; preds = %.preheader.lr.ph.i.i71.i
  %i.arq = add nsw i32 %i.ark, -1
  %xtraiter927 = and i32 %i.ark, 3                ; 2 uses
  %lcmp.mod928.not = icmp eq i32 %xtraiter927, 0
  %i.arr = icmp ult i32 %i.arq, 3
  br label %.preheader.i.i74.i

.preheader.i.i74.i:                               ; preds = %.preheader.i.i74.i.preheader, %._crit_edge.i.i82.i
  %.in.i.i75.i = phi i32 [ %i.aso, %._crit_edge.i.i82.i ], [ %1, %.preheader.i.i74.i.preheader ]
  %.02940.i.i76.i = phi ptr [ %i.asq, %._crit_edge.i.i82.i ], [ %10, %.preheader.i.i74.i.preheader ] ; 2 uses
  %.03039.i.i77.i = phi ptr [ %i.asp, %._crit_edge.i.i82.i ], [ %5, %.preheader.i.i74.i.preheader ] ; 2 uses
  br i1 %lcmp.mod928.not, label %.prol.loopexit926, label %.prol.preheader925

.prol.preheader925:                               ; preds = %.preheader.i.i74.i, %.prol.preheader925
  %.036.i.i78.i.prol = phi i32 [ %i.ars, %.prol.preheader925 ], [ %i.ark, %.preheader.i.i74.i ]
  %.135.i.i79.i.prol = phi ptr [ %i.arw, %.prol.preheader925 ], [ %.02940.i.i76.i, %.preheader.i.i74.i ] ; 2 uses
  %.13134.i.i80.i.prol = phi ptr [ %i.art, %.prol.preheader925 ], [ %.03039.i.i77.i, %.preheader.i.i74.i ] ; 2 uses
  %prol.iter929 = phi i32 [ %prol.iter929.next, %.prol.preheader925 ], [ 0, %.preheader.i.i74.i ]
  %i.ars = add nsw i32 %.036.i.i78.i.prol, -1     ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %.13134.i.i80.i.prol, i64 4 ; 3 uses
  %i.aru = load <4 x i8>, ptr %.13134.i.i80.i.prol, align 1
  %i.arv = shufflevector <4 x i8> %i.aru, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %i.arv, ptr %.135.i.i79.i.prol, align 1
  %i.arw = getelementptr inbounds nuw i8, ptr %.135.i.i79.i.prol, i64 4 ; 3 uses
  %prol.iter929.next = add i32 %prol.iter929, 1   ; 2 uses
  %prol.iter929.cmp.not = icmp eq i32 %prol.iter929.next, %xtraiter927
  br i1 %prol.iter929.cmp.not, label %.prol.loopexit926, label %.prol.preheader925, !llvm.loop !222

.prol.loopexit926:                                ; preds = %.prol.preheader925, %.preheader.i.i74.i
  %.lcssa824.unr = phi ptr [ poison, %.preheader.i.i74.i ], [ %i.art, %.prol.preheader925 ]
  %.lcssa823.unr = phi ptr [ poison, %.preheader.i.i74.i ], [ %i.arw, %.prol.preheader925 ]
  %.036.i.i78.i.unr = phi i32 [ %i.ark, %.preheader.i.i74.i ], [ %i.ars, %.prol.preheader925 ]
  %.135.i.i79.i.unr = phi ptr [ %.02940.i.i76.i, %.preheader.i.i74.i ], [ %i.arw, %.prol.preheader925 ]
  %.13134.i.i80.i.unr = phi ptr [ %.03039.i.i77.i, %.preheader.i.i74.i ], [ %i.art, %.prol.preheader925 ]
  br i1 %i.arr, label %._crit_edge.i.i82.i, label %.preheader.i.i74.i.new

.preheader.i.i74.i.new:                           ; preds = %.prol.loopexit926, %.preheader.i.i74.i.new
  %.036.i.i78.i = phi i32 [ %i.asj, %.preheader.i.i74.i.new ], [ %.036.i.i78.i.unr, %.prol.loopexit926 ]
  %.135.i.i79.i = phi ptr [ %i.asn, %.preheader.i.i74.i.new ], [ %.135.i.i79.i.unr, %.prol.loopexit926 ] ; 5 uses
  %.13134.i.i80.i = phi ptr [ %i.ask, %.preheader.i.i74.i.new ], [ %.13134.i.i80.i.unr, %.prol.loopexit926 ] ; 5 uses
  %i.arx = getelementptr inbounds nuw i8, ptr %.13134.i.i80.i, i64 4
  %i.ary = load <4 x i8>, ptr %.13134.i.i80.i, align 1
  %i.arz = shufflevector <4 x i8> %i.ary, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %i.arz, ptr %.135.i.i79.i, align 1
  %i.asa = getelementptr inbounds nuw i8, ptr %.135.i.i79.i, i64 4
  %i.asb = getelementptr inbounds nuw i8, ptr %.13134.i.i80.i, i64 8
  %i.asc = load <4 x i8>, ptr %i.arx, align 1
  %i.asd = shufflevector <4 x i8> %i.asc, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %i.asd, ptr %i.asa, align 1
  %i.ase = getelementptr inbounds nuw i8, ptr %.135.i.i79.i, i64 8
  %i.asf = getelementptr inbounds nuw i8, ptr %.13134.i.i80.i, i64 12
  %i.asg = load <4 x i8>, ptr %i.asb, align 1
  %i.ash = shufflevector <4 x i8> %i.asg, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %i.ash, ptr %i.ase, align 1
  %i.asi = getelementptr inbounds nuw i8, ptr %.135.i.i79.i, i64 12
  %i.asj = add nsw i32 %.036.i.i78.i, -4          ; 2 uses
  %i.ask = getelementptr inbounds nuw i8, ptr %.13134.i.i80.i, i64 16 ; 2 uses
  %i.asl = load <4 x i8>, ptr %i.asf, align 1
  %i.asm = shufflevector <4 x i8> %i.asl, <4 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  store <4 x i8> %i.asm, ptr %i.asi, align 1
  %i.asn = getelementptr inbounds nuw i8, ptr %.135.i.i79.i, i64 16 ; 2 uses
  %.not32.i.i81.i.3 = icmp eq i32 %i.asj, 0
  br i1 %.not32.i.i81.i.3, label %._crit_edge.i.i82.i, label %.preheader.i.i74.i.new, !llvm.loop !223

._crit_edge.i.i82.i:                              ; preds = %.preheader.i.i74.i.new, %.prol.loopexit926
  %.lcssa824 = phi ptr [ %.lcssa824.unr, %.prol.loopexit926 ], [ %i.ask, %.preheader.i.i74.i.new ]
  %.lcssa823 = phi ptr [ %.lcssa823.unr, %.prol.loopexit926 ], [ %i.asn, %.preheader.i.i74.i.new ]
  %i.aso = add nsw i32 %.in.i.i75.i, -1           ; 2 uses
  %i.asp = getelementptr inbounds i8, ptr %.lcssa824, i64 %i.aro
  %i.asq = getelementptr inbounds i8, ptr %.lcssa823, i64 %i.arp
  %.not.i.i83.i = icmp eq i32 %i.aso, 0
  br i1 %.not.i.i83.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.i.i74.i, !llvm.loop !224

bb.bn:                                            ; preds = %bb.bg
  switch i32 %7, label %bb.bq [
    i32 844715353, label %bb.bo
    i32 1498831189, label %bb.bp
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.asr = add i32 %0, 1
  %i.ass = sdiv i32 %i.asr, 2                     ; 5 uses
  %.not38.i.i84.i = icmp eq i32 %1, 0
  br i1 %.not38.i.i84.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.lr.ph.i.i85.i

.preheader.lr.ph.i.i85.i:                         ; preds = %bb.bo
  %i.ast = shl nsw i32 %i.ass, 2                  ; 2 uses
  %i.asu = sub nsw i32 %11, %i.ast
  %i.asv = sub nsw i32 %6, %i.ast
  %.off.i.i86.i = add i32 %0, 2
  %.not3233.i.i87.i = icmp ult i32 %.off.i.i86.i, 3
  %i.asw = sext i32 %i.asv to i64
  %i.asx = sext i32 %i.asu to i64
  br i1 %.not3233.i.i87.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.i.i88.i.preheader

.preheader.i.i88.i.preheader:                     ; preds = %.preheader.lr.ph.i.i85.i
  %i.asy = add nsw i32 %i.ass, -1
  %xtraiter922 = and i32 %i.ass, 3                ; 2 uses
  %lcmp.mod923.not = icmp eq i32 %xtraiter922, 0
  %i.asz = icmp ult i32 %i.asy, 3
  br label %.preheader.i.i88.i

.preheader.i.i88.i:                               ; preds = %.preheader.i.i88.i.preheader, %._crit_edge.i.i96.i
  %.in.i.i89.i = phi i32 [ %i.atw, %._crit_edge.i.i96.i ], [ %1, %.preheader.i.i88.i.preheader ]
  %.02940.i.i90.i = phi ptr [ %i.aty, %._crit_edge.i.i96.i ], [ %10, %.preheader.i.i88.i.preheader ] ; 2 uses
  %.03039.i.i91.i = phi ptr [ %i.atx, %._crit_edge.i.i96.i ], [ %5, %.preheader.i.i88.i.preheader ] ; 2 uses
  br i1 %lcmp.mod923.not, label %.prol.loopexit921, label %.prol.preheader920

.prol.preheader920:                               ; preds = %.preheader.i.i88.i, %.prol.preheader920
  %.036.i.i92.i.prol = phi i32 [ %i.ata, %.prol.preheader920 ], [ %i.ass, %.preheader.i.i88.i ]
  %.135.i.i93.i.prol = phi ptr [ %i.ate, %.prol.preheader920 ], [ %.02940.i.i90.i, %.preheader.i.i88.i ] ; 2 uses
  %.13134.i.i94.i.prol = phi ptr [ %i.atb, %.prol.preheader920 ], [ %.03039.i.i91.i, %.preheader.i.i88.i ] ; 2 uses
  %prol.iter924 = phi i32 [ %prol.iter924.next, %.prol.preheader920 ], [ 0, %.preheader.i.i88.i ]
  %i.ata = add nsw i32 %.036.i.i92.i.prol, -1     ; 2 uses
  %i.atb = getelementptr inbounds nuw i8, ptr %.13134.i.i94.i.prol, i64 4 ; 3 uses
  %i.atc = load <4 x i8>, ptr %.13134.i.i94.i.prol, align 1
  %i.atd = shufflevector <4 x i8> %i.atc, <4 x i8> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  store <4 x i8> %i.atd, ptr %.135.i.i93.i.prol, align 1
  %i.ate = getelementptr inbounds nuw i8, ptr %.135.i.i93.i.prol, i64 4 ; 3 uses
  %prol.iter924.next = add i32 %prol.iter924, 1   ; 2 uses
  %prol.iter924.cmp.not = icmp eq i32 %prol.iter924.next, %xtraiter922
  br i1 %prol.iter924.cmp.not, label %.prol.loopexit921, label %.prol.preheader920, !llvm.loop !225

.prol.loopexit921:                                ; preds = %.prol.preheader920, %.preheader.i.i88.i
  %.lcssa827.unr = phi ptr [ poison, %.preheader.i.i88.i ], [ %i.atb, %.prol.preheader920 ]
  %.lcssa826.unr = phi ptr [ poison, %.preheader.i.i88.i ], [ %i.ate, %.prol.preheader920 ]
  %.036.i.i92.i.unr = phi i32 [ %i.ass, %.preheader.i.i88.i ], [ %i.ata, %.prol.preheader920 ]
  %.135.i.i93.i.unr = phi ptr [ %.02940.i.i90.i, %.preheader.i.i88.i ], [ %i.ate, %.prol.preheader920 ]
  %.13134.i.i94.i.unr = phi ptr [ %.03039.i.i91.i, %.preheader.i.i88.i ], [ %i.atb, %.prol.preheader920 ]
  br i1 %i.asz, label %._crit_edge.i.i96.i, label %.preheader.i.i88.i.new

.preheader.i.i88.i.new:                           ; preds = %.prol.loopexit921, %.preheader.i.i88.i.new
  %.036.i.i92.i = phi i32 [ %i.atr, %.preheader.i.i88.i.new ], [ %.036.i.i92.i.unr, %.prol.loopexit921 ]
  %.135.i.i93.i = phi ptr [ %i.atv, %.preheader.i.i88.i.new ], [ %.135.i.i93.i.unr, %.prol.loopexit921 ] ; 5 uses
  %.13134.i.i94.i = phi ptr [ %i.ats, %.preheader.i.i88.i.new ], [ %.13134.i.i94.i.unr, %.prol.loopexit921 ] ; 5 uses
  %i.atf = getelementptr inbounds nuw i8, ptr %.13134.i.i94.i, i64 4
  %i.atg = load <4 x i8>, ptr %.13134.i.i94.i, align 1
  %i.ath = shufflevector <4 x i8> %i.atg, <4 x i8> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  store <4 x i8> %i.ath, ptr %.135.i.i93.i, align 1
  %i.ati = getelementptr inbounds nuw i8, ptr %.135.i.i93.i, i64 4
  %i.atj = getelementptr inbounds nuw i8, ptr %.13134.i.i94.i, i64 8
  %i.atk = load <4 x i8>, ptr %i.atf, align 1
  %i.atl = shufflevector <4 x i8> %i.atk, <4 x i8> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  store <4 x i8> %i.atl, ptr %i.ati, align 1
  %i.atm = getelementptr inbounds nuw i8, ptr %.135.i.i93.i, i64 8
  %i.atn = getelementptr inbounds nuw i8, ptr %.13134.i.i94.i, i64 12
  %i.ato = load <4 x i8>, ptr %i.atj, align 1
  %i.atp = shufflevector <4 x i8> %i.ato, <4 x i8> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  store <4 x i8> %i.atp, ptr %i.atm, align 1
  %i.atq = getelementptr inbounds nuw i8, ptr %.135.i.i93.i, i64 12
  %i.atr = add nsw i32 %.036.i.i92.i, -4          ; 2 uses
  %i.ats = getelementptr inbounds nuw i8, ptr %.13134.i.i94.i, i64 16 ; 2 uses
  %i.att = load <4 x i8>, ptr %i.atn, align 1
  %i.atu = shufflevector <4 x i8> %i.att, <4 x i8> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  store <4 x i8> %i.atu, ptr %i.atq, align 1
  %i.atv = getelementptr inbounds nuw i8, ptr %.135.i.i93.i, i64 16 ; 2 uses
  %.not32.i.i95.i.3 = icmp eq i32 %i.atr, 0
  br i1 %.not32.i.i95.i.3, label %._crit_edge.i.i96.i, label %.preheader.i.i88.i.new, !llvm.loop !226

._crit_edge.i.i96.i:                              ; preds = %.preheader.i.i88.i.new, %.prol.loopexit921
  %.lcssa827 = phi ptr [ %.lcssa827.unr, %.prol.loopexit921 ], [ %i.ats, %.preheader.i.i88.i.new ]
  %.lcssa826 = phi ptr [ %.lcssa826.unr, %.prol.loopexit921 ], [ %i.atv, %.preheader.i.i88.i.new ]
  %i.atw = add nsw i32 %.in.i.i89.i, -1           ; 2 uses
  %i.atx = getelementptr inbounds i8, ptr %.lcssa827, i64 %i.asw
  %i.aty = getelementptr inbounds i8, ptr %.lcssa826, i64 %i.asx
  %.not.i.i97.i = icmp eq i32 %i.atw, 0
  br i1 %.not.i.i97.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.i.i88.i, !llvm.loop !227

bb.bp:                                            ; preds = %bb.bn
  %i.atz = add i32 %0, 1
  %i.aua = sdiv i32 %i.atz, 2                     ; 5 uses
  %.not38.i.i98.i = icmp eq i32 %1, 0
  br i1 %.not38.i.i98.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.lr.ph.i.i99.i

.preheader.lr.ph.i.i99.i:                         ; preds = %bb.bp
  %i.aub = shl nsw i32 %i.aua, 2                  ; 2 uses
  %i.auc = sub nsw i32 %11, %i.aub
  %i.aud = sub nsw i32 %6, %i.aub
  %.off.i.i100.i63 = add i32 %0, 2
  %.not3233.i.i101.i = icmp ult i32 %.off.i.i100.i63, 3
  %i.aue = sext i32 %i.aud to i64
  %i.auf = sext i32 %i.auc to i64
  br i1 %.not3233.i.i101.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.i.i102.i.preheader

.preheader.i.i102.i.preheader:                    ; preds = %.preheader.lr.ph.i.i99.i
  %i.aug = add nsw i32 %i.aua, -1
  %xtraiter917 = and i32 %i.aua, 3                ; 2 uses
  %lcmp.mod918.not = icmp eq i32 %xtraiter917, 0
  %i.auh = icmp ult i32 %i.aug, 3
  br label %.preheader.i.i102.i

.preheader.i.i102.i:                              ; preds = %.preheader.i.i102.i.preheader, %._crit_edge.i.i110.i
  %.in.i.i103.i = phi i32 [ %i.ave, %._crit_edge.i.i110.i ], [ %1, %.preheader.i.i102.i.preheader ]
  %.02940.i.i104.i = phi ptr [ %i.avg, %._crit_edge.i.i110.i ], [ %10, %.preheader.i.i102.i.preheader ] ; 2 uses
  %.03039.i.i105.i = phi ptr [ %i.avf, %._crit_edge.i.i110.i ], [ %5, %.preheader.i.i102.i.preheader ] ; 2 uses
  br i1 %lcmp.mod918.not, label %.prol.loopexit916, label %.prol.preheader915

.prol.preheader915:                               ; preds = %.preheader.i.i102.i, %.prol.preheader915
  %.036.i.i106.i.prol = phi i32 [ %i.aui, %.prol.preheader915 ], [ %i.aua, %.preheader.i.i102.i ]
  %.135.i.i107.i.prol = phi ptr [ %i.aum, %.prol.preheader915 ], [ %.02940.i.i104.i, %.preheader.i.i102.i ] ; 2 uses
  %.13134.i.i108.i.prol = phi ptr [ %i.auj, %.prol.preheader915 ], [ %.03039.i.i105.i, %.preheader.i.i102.i ] ; 2 uses
  %prol.iter919 = phi i32 [ %prol.iter919.next, %.prol.preheader915 ], [ 0, %.preheader.i.i102.i ]
  %i.aui = add nsw i32 %.036.i.i106.i.prol, -1    ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %.13134.i.i108.i.prol, i64 4 ; 3 uses
  %i.auk = load <4 x i8>, ptr %.13134.i.i108.i.prol, align 1
  %i.aul = shufflevector <4 x i8> %i.auk, <4 x i8> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i8> %i.aul, ptr %.135.i.i107.i.prol, align 1
  %i.aum = getelementptr inbounds nuw i8, ptr %.135.i.i107.i.prol, i64 4 ; 3 uses
  %prol.iter919.next = add i32 %prol.iter919, 1   ; 2 uses
  %prol.iter919.cmp.not = icmp eq i32 %prol.iter919.next, %xtraiter917
  br i1 %prol.iter919.cmp.not, label %.prol.loopexit916, label %.prol.preheader915, !llvm.loop !228

.prol.loopexit916:                                ; preds = %.prol.preheader915, %.preheader.i.i102.i
  %.lcssa830.unr = phi ptr [ poison, %.preheader.i.i102.i ], [ %i.auj, %.prol.preheader915 ]
  %.lcssa829.unr = phi ptr [ poison, %.preheader.i.i102.i ], [ %i.aum, %.prol.preheader915 ]
  %.036.i.i106.i.unr = phi i32 [ %i.aua, %.preheader.i.i102.i ], [ %i.aui, %.prol.preheader915 ]
  %.135.i.i107.i.unr = phi ptr [ %.02940.i.i104.i, %.preheader.i.i102.i ], [ %i.aum, %.prol.preheader915 ]
  %.13134.i.i108.i.unr = phi ptr [ %.03039.i.i105.i, %.preheader.i.i102.i ], [ %i.auj, %.prol.preheader915 ]
  br i1 %i.auh, label %._crit_edge.i.i110.i, label %.preheader.i.i102.i.new

.preheader.i.i102.i.new:                          ; preds = %.prol.loopexit916, %.preheader.i.i102.i.new
  %.036.i.i106.i = phi i32 [ %i.auz, %.preheader.i.i102.i.new ], [ %.036.i.i106.i.unr, %.prol.loopexit916 ]
  %.135.i.i107.i = phi ptr [ %i.avd, %.preheader.i.i102.i.new ], [ %.135.i.i107.i.unr, %.prol.loopexit916 ] ; 5 uses
  %.13134.i.i108.i = phi ptr [ %i.ava, %.preheader.i.i102.i.new ], [ %.13134.i.i108.i.unr, %.prol.loopexit916 ] ; 5 uses
  %i.aun = getelementptr inbounds nuw i8, ptr %.13134.i.i108.i, i64 4
  %i.auo = load <4 x i8>, ptr %.13134.i.i108.i, align 1
  %i.aup = shufflevector <4 x i8> %i.auo, <4 x i8> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i8> %i.aup, ptr %.135.i.i107.i, align 1
  %i.auq = getelementptr inbounds nuw i8, ptr %.135.i.i107.i, i64 4
  %i.aur = getelementptr inbounds nuw i8, ptr %.13134.i.i108.i, i64 8
  %i.aus = load <4 x i8>, ptr %i.aun, align 1
  %i.aut = shufflevector <4 x i8> %i.aus, <4 x i8> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i8> %i.aut, ptr %i.auq, align 1
  %i.auu = getelementptr inbounds nuw i8, ptr %.135.i.i107.i, i64 8
  %i.auv = getelementptr inbounds nuw i8, ptr %.13134.i.i108.i, i64 12
  %i.auw = load <4 x i8>, ptr %i.aur, align 1
  %i.aux = shufflevector <4 x i8> %i.auw, <4 x i8> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i8> %i.aux, ptr %i.auu, align 1
  %i.auy = getelementptr inbounds nuw i8, ptr %.135.i.i107.i, i64 12
  %i.auz = add nsw i32 %.036.i.i106.i, -4         ; 2 uses
  %i.ava = getelementptr inbounds nuw i8, ptr %.13134.i.i108.i, i64 16 ; 2 uses
  %i.avb = load <4 x i8>, ptr %i.auv, align 1
  %i.avc = shufflevector <4 x i8> %i.avb, <4 x i8> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x i8> %i.avc, ptr %i.auy, align 1
  %i.avd = getelementptr inbounds nuw i8, ptr %.135.i.i107.i, i64 16 ; 2 uses
  %.not32.i.i109.i.3 = icmp eq i32 %i.auz, 0
  br i1 %.not32.i.i109.i.3, label %._crit_edge.i.i110.i, label %.preheader.i.i102.i.new, !llvm.loop !229

._crit_edge.i.i110.i:                             ; preds = %.preheader.i.i102.i.new, %.prol.loopexit916
  %.lcssa830 = phi ptr [ %.lcssa830.unr, %.prol.loopexit916 ], [ %i.ava, %.preheader.i.i102.i.new ]
  %.lcssa829 = phi ptr [ %.lcssa829.unr, %.prol.loopexit916 ], [ %i.avd, %.preheader.i.i102.i.new ]
  %i.ave = add nsw i32 %.in.i.i103.i, -1          ; 2 uses
  %i.avf = getelementptr inbounds i8, ptr %.lcssa830, i64 %i.aue
  %i.avg = getelementptr inbounds i8, ptr %.lcssa829, i64 %i.auf
  %.not.i.i111.i = icmp eq i32 %i.ave, 0
  br i1 %.not.i.i111.i, label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit, label %.preheader.i.i102.i, !llvm.loop !230

bb.bq:                                            ; preds = %bb.bn, %bb.bk, %bb.bh, %bb.bg
  %i.avh = tail call ptr @SDL_GetPixelFormatName_REAL(i32 noundef %2) #6
  %i.avi = tail call ptr @SDL_GetPixelFormatName_REAL(i32 noundef %7) #6
  %i.avj = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.18, ptr noundef %i.avh, ptr noundef %i.avi) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

IsPacked4Format.exit:                             ; preds = %bb.bf
  switch i32 %2, label %IsPacked4Format.exit74 [
    i32 1448433993, label %bb.br
    i32 1431918169, label %bb.cc
    i32 844715353, label %bb.cc
    i32 1498831189, label %bb.cc
  ]

bb.br:                                            ; preds = %IsPlanar2x2Format.exit, %IsPlanar2x2Format.exit, %IsPlanar2x2Format.exit, %IsPlanar2x2Format.exit, %IsPlanar2x2Format.exit, %IsPacked4Format.exit
  switch i32 %7, label %IsPlanar2x2Format.exit70 [
    i32 1498831189, label %bb.bs
    i32 844715353, label %bb.bs
    i32 1431918169, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br, %bb.br, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #6
  %i.avk = icmp eq ptr %5, %10
  br i1 %i.avk, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.avl = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.19) #6
  br label %SDL_ConvertPixels_Planar2x2_to_Packed4.exit

bb.bu:                                            ; preds = %bb.bs
  %i.avm = call fastcc zeroext i1 @GetYUVPlanes(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %5, i32 noundef %6, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o)
  br i1 %i.avm, label %bb.bv, label %SDL_ConvertPixels_Planar2x2_to_Packed4.exit

bb.bv:                                            ; preds = %bb.bu
  %i.avn = load ptr, ptr %i.k, align 8            ; 3 uses
  %i.avo = load i32, ptr %i.n, align 4            ; 2 uses
  %i.avp = zext i32 %i.avo to i64
  %i.avq = getelementptr inbounds nuw i8, ptr %i.avn, i64 %i.avp
  %i.avr = sub i32 %i.avo, %0
  %i.avs = load i32, ptr %i.o, align 4
  %i.avt = add nsw i32 %0, 1
  %.neg.i = sdiv i32 %i.avt, -2                   ; 3 uses
  switch i32 %2, label %bb.bx [
    i32 842094158, label %bb.bw
    i32 825382478, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv, %bb.bv
  %.neg97.i = shl nsw i32 %.neg.i, 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.neg.sink.i = phi i32 [ %.neg97.i, %bb.bw ], [ %.neg.i, %bb.bv ]
  %.082.i = phi i64 [ 2, %bb.bw ], [ 1, %bb.bv ]  ; 10 uses
  %i.avu = add i32 %.neg.sink.i, %i.avs
  %i.avv = call fastcc zeroext i1 @GetYUVPlanes(i32 noundef %0, i32 noundef %1, i32 noundef %7, ptr noundef %10, i32 noundef %11, ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.r, ptr noundef %i.s, ptr noundef %i.t)
  br i1 %i.avv, label %bb.by, label %SDL_ConvertPixels_Planar2x2_to_Packed4.exit

bb.by:                                            ; preds = %bb.bx
  %i.avw = load i32, ptr %i.s, align 4            ; 2 uses
  %.neg99.i = shl i32 %.neg.i, 2
  %i.avx = add i32 %i.avw, %.neg99.i              ; 2 uses
  %i.avy = add nsw i32 %1, -1                     ; 2 uses
  %i.avz = icmp sgt i32 %1, 1
  br i1 %i.avz, label %.preheader101.lr.ph.i, label %._crit_edge119.i

.preheader101.lr.ph.i:                            ; preds = %bb.by
  %i.awa = load ptr, ptr %i.r, align 8            ; 2 uses
  %i.awb = load i32, ptr %i.t, align 4
  %i.awc = zext i32 %i.awb to i64                 ; 2 uses
  %i.awd = getelementptr inbounds nuw i8, ptr %i.awa, i64 %i.awc
  %i.awe = load ptr, ptr %i.q, align 8            ; 2 uses
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 %i.awc
  %i.awg = load ptr, ptr %i.p, align 8
  %i.awh = zext i32 %i.avw to i64
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awg, i64 %i.awh
  %i.awj = add nsw i32 %0, -1                     ; 2 uses
  %i.awk = icmp sgt i32 %0, 1
  %i.awl = zext i32 %i.avu to i64                 ; 2 uses
  %i.awm = and i32 %0, -2
  %.pre158.pre.pre.i = load ptr, ptr %i.l, align 8
  br label %.preheader101.i

.preheader101.i:                                  ; preds = %bb.ca, %.preheader101.lr.ph.i
  %.pre158.pre.i = phi ptr [ %.pre158.pre.pre.i, %.preheader101.lr.ph.i ], [ %i.azo, %bb.ca ] ; 2 uses
  %.pre157162.i = phi ptr [ %i.avn, %.preheader101.lr.ph.i ], [ %i.azm, %bb.ca ]
  %i.awn = phi ptr [ %i.awa, %.preheader101.lr.ph.i ], [ %i.bab, %bb.ca ]
  %i.awo = phi ptr [ %i.awe, %.preheader101.lr.ph.i ], [ %i.azz, %bb.ca ] ; 2 uses
  %.0118.i = phi ptr [ %i.awd, %.preheader101.lr.ph.i ], [ %i.bac, %bb.ca ] ; 2 uses
  %.076117.i = phi ptr [ %i.awf, %.preheader101.lr.ph.i ], [ %i.baa, %bb.ca ] ; 2 uses
  %.079116.i = phi ptr [ %i.awi, %.preheader101.lr.ph.i ], [ %i.azv, %bb.ca ] ; 2 uses
  %.084115.i = phi ptr [ %i.avq, %.preheader101.lr.ph.i ], [ %i.azn, %bb.ca ] ; 2 uses
  %.087114.i = phi i32 [ 0, %.preheader101.lr.ph.i ], [ %i.bad, %bb.ca ]
  br i1 %i.awk, label %.lr.ph.i73, label %._crit_edge.i72

.lr.ph.i73:                                       ; preds = %.preheader101.i, %.lr.ph.i73
  %i.awp = phi ptr [ %i.axs, %.lr.ph.i73 ], [ %i.awo, %.preheader101.i ]
  %i.awq = phi ptr [ %i.axo, %.lr.ph.i73 ], [ %.pre158.pre.i, %.preheader101.i ]
  %.1108.i = phi ptr [ %i.axw, %.lr.ph.i73 ], [ %.0118.i, %.preheader101.i ] ; 2 uses
  %.177107.i = phi ptr [ %i.axt, %.lr.ph.i73 ], [ %.076117.i, %.preheader101.i ] ; 2 uses
  %.180106.i = phi ptr [ %i.axi, %.lr.ph.i73 ], [ %.079116.i, %.preheader101.i ] ; 3 uses
  %.185105.i = phi ptr [ %i.axg, %.lr.ph.i73 ], [ %.084115.i, %.preheader101.i ] ; 3 uses
  %.088104.i = phi i32 [ %i.axx, %.lr.ph.i73 ], [ 0, %.preheader101.i ]
end_hunk_0
begin_hunk_1_@SDL_ConvertPixels_YUV_to_YUV:bb.a
  br label %.lr.ph127.i

.lr.ph127.i:                                      ; preds = %.lr.ph127.i, %.lr.ph127.i.preheader.new
  %i.bik = phi ptr [ %.promoted.i77, %.lr.ph127.i.preheader.new ], [ %i.bjh, %.lr.ph127.i ] ; 5 uses
  %i.bil = phi ptr [ %.promoted116.i, %.lr.ph127.i.preheader.new ], [ %i.bjg, %.lr.ph127.i ] ; 5 uses
  %i.bim = phi ptr [ %.promoted118.i, %.lr.ph127.i.preheader.new ], [ %i.bjk, %.lr.ph127.i ] ; 3 uses
  %i.bin = phi ptr [ %.promoted120.i, %.lr.ph127.i.preheader.new ], [ %i.bjm, %.lr.ph127.i ] ; 2 uses
  %i.bio = phi ptr [ %.promoted122.i, %.lr.ph127.i.preheader.new ], [ %i.bjl, %.lr.ph127.i ] ; 3 uses
  %i.bip = phi ptr [ %.promoted124.i, %.lr.ph127.i.preheader.new ], [ %i.bjn, %.lr.ph127.i ] ; 2 uses
  %niter986 = phi i32 [ 0, %.lr.ph127.i.preheader.new ], [ %niter986.next.1, %.lr.ph127.i ]
  %i.biq = load i8, ptr %i.bik, align 1
  %i.bir = getelementptr inbounds nuw i8, ptr %i.bil, i64 1
  store i8 %i.biq, ptr %i.bil, align 1
  %i.bis = getelementptr inbounds nuw i8, ptr %i.bik, i64 2
  %i.bit = load i8, ptr %i.bis, align 1
  %i.biu = getelementptr inbounds nuw i8, ptr %i.bil, i64 2
  store i8 %i.bit, ptr %i.bir, align 1
  %i.biv = getelementptr inbounds nuw i8, ptr %i.bik, i64 4
  %i.biw = load i8, ptr %i.bim, align 1
  store i8 %i.biw, ptr %i.bin, align 1
  %i.bix = load i8, ptr %i.bio, align 1
  store i8 %i.bix, ptr %i.bip, align 1
  %i.biy = getelementptr inbounds nuw i8, ptr %i.bim, i64 4
  %i.biz = getelementptr inbounds nuw i8, ptr %i.bio, i64 4
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bin, i64 %.0.i76 ; 2 uses
  %i.bjb = getelementptr inbounds nuw i8, ptr %i.bip, i64 %.0.i76 ; 2 uses
  %i.bjc = load i8, ptr %i.biv, align 1
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.bil, i64 3
  store i8 %i.bjc, ptr %i.biu, align 1
  %i.bje = getelementptr inbounds nuw i8, ptr %i.bik, i64 6
  %i.bjf = load i8, ptr %i.bje, align 1
  %i.bjg = getelementptr inbounds nuw i8, ptr %i.bil, i64 4 ; 3 uses
  store i8 %i.bjf, ptr %i.bjd, align 1
  %i.bjh = getelementptr inbounds nuw i8, ptr %i.bik, i64 8 ; 3 uses
  %i.bji = load i8, ptr %i.biy, align 1
  store i8 %i.bji, ptr %i.bja, align 1
  %i.bjj = load i8, ptr %i.biz, align 1
  store i8 %i.bjj, ptr %i.bjb, align 1
  %i.bjk = getelementptr inbounds nuw i8, ptr %i.bim, i64 8 ; 3 uses
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bio, i64 8 ; 3 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.bja, i64 %.0.i76 ; 3 uses
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.bjb, i64 %.0.i76 ; 3 uses
  %niter986.next.1 = add nuw nsw i32 %niter986, 2 ; 2 uses
  %niter986.ncmp.1.not = icmp eq i32 %niter986.next.1, %unroll_iter985
  br i1 %niter986.ncmp.1.not, label %._crit_edge128.loopexit.i.unr-lcssa, label %.lr.ph127.i, !llvm.loop !236

._crit_edge128.loopexit.i.unr-lcssa:              ; preds = %.lr.ph127.i
  %i.bjo = and i32 %i.big, 2
  %lcmp.mod977.not.not = icmp eq i32 %i.bjo, 0
  br i1 %lcmp.mod977.not.not, label %.lr.ph127.i.epil.preheader, label %._crit_edge128.loopexit.i

.lr.ph127.i.epil.preheader:                       ; preds = %._crit_edge128.loopexit.i.unr-lcssa, %.lr.ph127.i.preheader
  %.epil.init966 = phi ptr [ %.promoted.i77, %.lr.ph127.i.preheader ], [ %i.bjh, %._crit_edge128.loopexit.i.unr-lcssa ] ; 3 uses
  %.epil.init968 = phi ptr [ %.promoted116.i, %.lr.ph127.i.preheader ], [ %i.bjg, %._crit_edge128.loopexit.i.unr-lcssa ] ; 3 uses
  %.epil.init970 = phi ptr [ %.promoted118.i, %.lr.ph127.i.preheader ], [ %i.bjk, %._crit_edge128.loopexit.i.unr-lcssa ] ; 2 uses
  %.epil.init972 = phi ptr [ %.promoted120.i, %.lr.ph127.i.preheader ], [ %i.bjm, %._crit_edge128.loopexit.i.unr-lcssa ] ; 2 uses
  %.epil.init974 = phi ptr [ %.promoted122.i, %.lr.ph127.i.preheader ], [ %i.bjl, %._crit_edge128.loopexit.i.unr-lcssa ] ; 2 uses
  %.epil.init976 = phi ptr [ %.promoted124.i, %.lr.ph127.i.preheader ], [ %i.bjn, %._crit_edge128.loopexit.i.unr-lcssa ] ; 2 uses
  %lcmp.mod984 = trunc i32 %i.bii to i1
  tail call void @llvm.assume(i1 %lcmp.mod984)
  %i.bjp = load i8, ptr %.epil.init966, align 1
  %i.bjq = getelementptr inbounds nuw i8, ptr %.epil.init968, i64 1
  store i8 %i.bjp, ptr %.epil.init968, align 1
  %i.bjr = getelementptr inbounds nuw i8, ptr %.epil.init966, i64 2
  %i.bjs = load i8, ptr %i.bjr, align 1
  %i.bjt = getelementptr inbounds nuw i8, ptr %.epil.init968, i64 2
  store i8 %i.bjs, ptr %i.bjq, align 1
  %i.bju = getelementptr inbounds nuw i8, ptr %.epil.init966, i64 4
  %i.bjv = load i8, ptr %.epil.init970, align 1
  store i8 %i.bjv, ptr %.epil.init972, align 1
  %i.bjw = load i8, ptr %.epil.init974, align 1
  store i8 %i.bjw, ptr %.epil.init976, align 1
  %i.bjx = getelementptr inbounds nuw i8, ptr %.epil.init970, i64 4
  %i.bjy = getelementptr inbounds nuw i8, ptr %.epil.init974, i64 4
  %i.bjz = getelementptr inbounds nuw i8, ptr %.epil.init972, i64 %.0.i76
  %i.bka = getelementptr inbounds nuw i8, ptr %.epil.init976, i64 %.0.i76
  br label %._crit_edge128.loopexit.i

._crit_edge128.loopexit.i:                        ; preds = %._crit_edge128.loopexit.i.unr-lcssa, %.lr.ph127.i.epil.preheader
  %.lcssa788 = phi ptr [ %i.bjg, %._crit_edge128.loopexit.i.unr-lcssa ], [ %i.bjt, %.lr.ph127.i.epil.preheader ]
  %.lcssa787 = phi ptr [ %i.bjh, %._crit_edge128.loopexit.i.unr-lcssa ], [ %i.bju, %.lr.ph127.i.epil.preheader ]
  %.lcssa786 = phi ptr [ %i.bjk, %._crit_edge128.loopexit.i.unr-lcssa ], [ %i.bjx, %.lr.ph127.i.epil.preheader ]
  %.lcssa785 = phi ptr [ %i.bjl, %._crit_edge128.loopexit.i.unr-lcssa ], [ %i.bjy, %.lr.ph127.i.epil.preheader ]
  %.lcssa784 = phi ptr [ %i.bjm, %._crit_edge128.loopexit.i.unr-lcssa ], [ %i.bjz, %.lr.ph127.i.epil.preheader ]
  %.lcssa783 = phi ptr [ %i.bjn, %._crit_edge128.loopexit.i.unr-lcssa ], [ %i.bka, %.lr.ph127.i.epil.preheader ]
  %i.bkb = and i32 %0, 2147483646
  br label %._crit_edge128.i

._crit_edge128.i:                                 ; preds = %._crit_edge128.loopexit.i, %.preheader.i78
  %.lcssa125.i = phi ptr [ %.promoted124.i, %.preheader.i78 ], [ %.lcssa783, %._crit_edge128.loopexit.i ]
  %.lcssa123.i = phi ptr [ %.promoted122.i, %.preheader.i78 ], [ %.lcssa785, %._crit_edge128.loopexit.i ]
  %.lcssa121.i = phi ptr [ %.promoted120.i, %.preheader.i78 ], [ %.lcssa784, %._crit_edge128.loopexit.i ]
  %.lcssa119.i = phi ptr [ %.promoted118.i, %.preheader.i78 ], [ %.lcssa786, %._crit_edge128.loopexit.i ]
  %i.bkc = phi ptr [ %.promoted116.i, %.preheader.i78 ], [ %.lcssa788, %._crit_edge128.loopexit.i ] ; 2 uses
  %i.bkd = phi ptr [ %.promoted.i77, %.preheader.i78 ], [ %.lcssa787, %._crit_edge128.loopexit.i ] ; 2 uses
  %.187.lcssa.i = phi i32 [ 0, %.preheader.i78 ], [ %i.bkb, %._crit_edge128.loopexit.i ]
  store ptr %i.bkd, ptr %i.a, align 8
  store ptr %i.bkc, ptr %i.f, align 8
  store ptr %.lcssa119.i, ptr %i.b, align 8
  store ptr %.lcssa121.i, ptr %i.g, align 8
  store ptr %.lcssa123.i, ptr %i.c, align 8
  store ptr %.lcssa125.i, ptr %i.h, align 8
  %i.bke = icmp eq i32 %.187.lcssa.i, %i.bie
  br i1 %i.bke, label %bb.cm, label %SDL_ConvertPixels_Packed4_to_Planar2x2.exit

bb.cm:                                            ; preds = %._crit_edge128.i
  %i.bkf = load i8, ptr %i.bkd, align 1
  store i8 %i.bkf, ptr %i.bkc, align 1
  %i.bkg = load ptr, ptr %i.b, align 8
  %i.bkh = load i8, ptr %i.bkg, align 1
  %i.bki = load ptr, ptr %i.g, align 8
  store i8 %i.bkh, ptr %i.bki, align 1
  %i.bkj = load ptr, ptr %i.c, align 8
  %i.bkk = load i8, ptr %i.bkj, align 1
  %i.bkl = load ptr, ptr %i.h, align 8
  store i8 %i.bkk, ptr %i.bkl, align 1
  br label %SDL_ConvertPixels_Packed4_to_Planar2x2.exit

SDL_ConvertPixels_Packed4_to_Planar2x2.exit:      ; preds = %bb.ce, %bb.cf, %bb.cg, %._crit_edge112.i, %._crit_edge128.i, %bb.cm
  %.088.i = phi i1 [ %i.bct, %bb.ce ], [ false, %bb.cg ], [ false, %bb.cf ], [ true, %._crit_edge128.i ], [ true, %bb.cm ], [ true, %._crit_edge112.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

IsPacked4Format.exit74:                           ; preds = %bb.j, %IsPlanar2x2Format.exit, %IsPacked4Format.exit, %bb.cc, %IsPlanar2x2Format.exit70
  %i.bkm = tail call ptr @SDL_GetPixelFormatName_REAL(i32 noundef %2) #6
  %i.bkn = tail call ptr @SDL_GetPixelFormatName_REAL(i32 noundef %7) #6
  %i.bko = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.10, ptr noundef %i.bkm, ptr noundef %i.bkn) #6
  br label %SDL_ConvertPixels_YUV_to_YUV_Copy.exit

SDL_ConvertPixels_YUV_to_YUV_Copy.exit:           ; preds = %._crit_edge.i.i278.i, %._crit_edge75.i.i291.i, %._crit_edge.i.i213.i, %._crit_edge75.i.i.i, %._crit_edge.i.i110.i, %._crit_edge.i.i96.i, %._crit_edge.i.i82.i, %._crit_edge.i.i68.i, %._crit_edge.i.i54.i, %._crit_edge.i.i.i68, %.prol.loopexit988, %.lr.ph.i.new, %.prol.loopexit998, %.lr.ph103.i.new, %.prol.loopexit1003, %.lr.ph109.i.new, %.prol.loopexit1008, %.lr.ph115.i.new, %bb.bq, %.preheader.lr.ph.i.i99.i, %bb.bp, %.preheader.lr.ph.i.i85.i, %bb.bo, %.preheader.lr.ph.i.i71.i, %bb.bm, %.preheader.lr.ph.i.i57.i, %bb.bl, %.preheader.lr.ph.i.i43.i, %bb.bj, %.preheader.lr.ph.i.i.i64, %bb.bi, %bb.be, %.preheader61.lr.ph.i.i267.i, %bb.bd, %.preheader.lr.ph.i.i280.i, %bb.bc, %._crit_edge75.split.i.i261.i, %bb.ay, %._crit_edge75.split.i.i237.i, %bb.au, %.preheader61.lr.ph.i.i.i, %bb.ar, %.preheader.lr.ph.i.i215.i, %bb.aq, %._crit_edge75.split.i.i208.i, %bb.am, %._crit_edge75.split.i.i185.i, %bb.ai, %._crit_edge75.split.i.i166.i, %bb.ad, %._crit_edge75.split.i.i142.i, %bb.z, %bb.x, %._crit_edge75.split.i.i118.i, %bb.t, %._crit_edge75.split.i.i.i, %bb.p, %bb.n, %IsPacked4Format.exit.i, %bb.i, %bb.h, %bb.g, %bb.f, %._crit_edge.i, %bb.d, %IsPacked4Format.exit74, %SDL_ConvertPixels_Packed4_to_Planar2x2.exit, %SDL_ConvertPixels_Planar2x2_to_Packed4.exit, %bb.b
  %.0 = phi i1 [ %i.u, %bb.b ], [ %i.bko, %IsPacked4Format.exit74 ], [ true, %bb.d ], [ true, %._crit_edge.i.i68.i ], [ true, %.prol.loopexit988 ], [ %.090.i, %SDL_ConvertPixels_Planar2x2_to_Packed4.exit ], [ %.088.i, %SDL_ConvertPixels_Packed4_to_Planar2x2.exit ], [ %i.eu, %IsPacked4Format.exit.i ], [ true, %bb.g ], [ true, %._crit_edge.i ], [ true, %bb.h ], [ true, %bb.f ], [ true, %bb.i ], [ true, %._crit_edge75.i.i291.i ], [ true, %._crit_edge.i.i.i68 ], [ true, %._crit_edge.i.i54.i ], [ %i.ank, %bb.be ], [ %i.fm, %bb.n ], [ false, %bb.ay ], [ false, %bb.p ], [ %i.mr, %bb.x ], [ false, %bb.t ], [ false, %bb.z ], [ false, %bb.ad ], [ false, %bb.ai ], [ false, %bb.am ], [ true, %.prol.loopexit1003 ], [ false, %bb.au ], [ true, %._crit_edge75.split.i.i.i ], [ true, %._crit_edge75.split.i.i118.i ], [ true, %._crit_edge75.split.i.i142.i ], [ true, %._crit_edge75.split.i.i166.i ], [ true, %._crit_edge75.split.i.i185.i ], [ true, %._crit_edge75.split.i.i208.i ], [ true, %bb.aq ], [ true, %.preheader.lr.ph.i.i215.i ], [ true, %.prol.loopexit1008 ], [ true, %bb.ar ], [ true, %.preheader61.lr.ph.i.i.i ], [ true, %._crit_edge75.split.i.i237.i ], [ true, %._crit_edge75.split.i.i261.i ], [ true, %bb.bc ], [ true, %.preheader.lr.ph.i.i280.i ], [ true, %.prol.loopexit998 ], [ true, %bb.bd ], [ true, %.preheader61.lr.ph.i.i267.i ], [ %i.avj, %bb.bq ], [ true, %._crit_edge75.i.i.i ], [ true, %._crit_edge.i.i213.i ], [ true, %._crit_edge.i.i82.i ], [ true, %._crit_edge.i.i96.i ], [ true, %._crit_edge.i.i110.i ], [ true, %bb.bi ], [ true, %.preheader.lr.ph.i.i.i64 ], [ true, %bb.bj ], [ true, %.preheader.lr.ph.i.i43.i ], [ true, %bb.bl ], [ true, %.preheader.lr.ph.i.i57.i ], [ true, %bb.bm ], [ true, %.preheader.lr.ph.i.i71.i ], [ true, %bb.bo ], [ true, %.preheader.lr.ph.i.i85.i ], [ true, %bb.bp ], [ true, %.preheader.lr.ph.i.i99.i ], [ true, %.lr.ph115.i.new ], [ true, %.lr.ph109.i.new ], [ true, %.lr.ph103.i.new ], [ true, %.lr.ph.i.new ], [ true, %._crit_edge.i.i278.i ]
  ret i1 %.0
}

declare ptr @SDL_GetPixelFormatName_REAL(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

declare void @yuv420_rgb565_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv420_rgb24_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv420_rgba_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv420_bgra_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv420_argb_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv420_abgr_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv422_rgb565_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv422_rgb24_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv422_rgba_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv422_bgra_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv422_argb_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuv422_abgr_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuvnv12_rgb565_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuvnv12_rgb24_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuvnv12_rgba_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuvnv12_bgra_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuvnv12_argb_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuvnv12_abgr_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @yuvp010_xbgr2101010_std(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @SDL_ConvertPixels_SwapUVPlanes(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address) %2, i32 noundef %3, ptr nofree noundef captures(address) %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = sdiv i32 %i.a, 2                         ; 3 uses
  %i.c = add i32 %1, 1                            ; 4 uses
  %i.d = sdiv i32 %i.c, 2                         ; 4 uses
  %i.e = mul nsw i32 %3, %1
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %2, i64 %i.f ; 3 uses
  %i.h = mul nsw i32 %5, %1
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %4, i64 %i.i ; 7 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %5, 1
  %i.m = sdiv i32 %i.l, 2                         ; 2 uses
  %i.n = sext i32 %i.b to i64                     ; 10 uses
  %i.o = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.n) #6 ; 8 uses
  %.not.not = icmp eq ptr %i.o, null
  br i1 %.not.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = icmp sgt i32 %1, 0
  br i1 %i.p, label %.lr.ph86, label %._crit_edge

.lr.ph86:                                         ; preds = %bb.c
  %i.q = mul nsw i32 %i.m, %i.d
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds i8, ptr %i.j, i64 %i.r ; 2 uses
  %i.t = sext i32 %i.m to i64                     ; 4 uses
  %smax89 = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1) ; 3 uses
  %xtraiter105 = and i32 %smax89, 1
  %i.u = icmp slt i32 %i.c, 4
  br i1 %i.u, label %.epil.preheader104, label %.lr.ph86.new

.lr.ph86.new:                                     ; preds = %.lr.ph86
  %unroll_iter109 = and i32 %smax89, 1073741822
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph86.new
  %.06585 = phi ptr [ %i.s, %.lr.ph86.new ], [ %i.y, %bb.d ] ; 3 uses
  %.06684 = phi ptr [ %i.j, %.lr.ph86.new ], [ %i.x, %bb.d ] ; 3 uses
  %niter110 = phi i32 [ 0, %.lr.ph86.new ], [ %niter110.next.1, %bb.d ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %.06684, i64 %i.n, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06684, ptr align 1 %.06585, i64 %i.n, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06585, ptr nonnull align 1 %i.o, i64 %i.n, i1 false)
  %i.v = getelementptr inbounds i8, ptr %.06684, i64 %i.t ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %.06585, i64 %i.t ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %i.v, i64 %i.n, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr align 1 %i.w, i64 %i.n, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 %i.o, i64 %i.n, i1 false)
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 %i.t ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 %i.t ; 2 uses
  %niter110.next.1 = add i32 %niter110, 2         ; 2 uses
  %niter110.ncmp.1 = icmp eq i32 %niter110.next.1, %unroll_iter109
  br i1 %niter110.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !237

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod107.not = icmp eq i32 %xtraiter105, 0
  br i1 %lcmp.mod107.not, label %._crit_edge, label %.epil.preheader104

.epil.preheader104:                               ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph86
  %.06585.epil.init = phi ptr [ %i.s, %.lr.ph86 ], [ %i.y, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.06684.epil.init = phi ptr [ %i.j, %.lr.ph86 ], [ %i.x, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod108 = trunc i32 %smax89 to i1
  tail call void @llvm.assume(i1 %lcmp.mod108)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr align 1 %.06684.epil.init, i64 %i.n, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06684.epil.init, ptr align 1 %.06585.epil.init, i64 %i.n, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.06585.epil.init, ptr nonnull align 1 %i.o, i64 %i.n, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader104, %._crit_edge.loopexit.unr-lcssa, %bb.c
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.o) #6
  br label %.critedge

bb.e:                                             ; preds = %bb.a
  %i.z = add nsw i32 %3, 1
  %i.aa = sdiv i32 %i.z, 2                        ; 2 uses
  %i.ab = add nsw i32 %5, 1
  %i.ac = sdiv i32 %i.ab, 2                       ; 3 uses
  %i.ad = icmp sgt i32 %1, 0
  br i1 %i.ad, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.e
  %i.ae = mul nsw i32 %i.ac, %i.d
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.j, i64 %i.af ; 2 uses
  %i.ah = sext i32 %i.b to i64                    ; 5 uses
  %i.ai = sext i32 %i.aa to i64                   ; 5 uses
  %i.aj = sext i32 %i.ac to i64                   ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1) ; 4 uses
  %xtraiter = and i32 %smax, 3                    ; 3 uses
  %i.ak = icmp slt i32 %i.c, 8
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %smax, 1073741820
  br label %bb.g

.lr.ph82.unr-lcssa:                               ; preds = %bb.g
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph82, label %.epil.preheader

.epil.preheader:                                  ; preds = %.lr.ph82.unr-lcssa, %.lr.ph
  %.078.epil.init = phi ptr [ %i.ag, %.lr.ph ], [ %i.ay, %.lr.ph82.unr-lcssa ]
  %.06277.epil.init = phi ptr [ %i.g, %.lr.ph ], [ %i.ax, %.lr.ph82.unr-lcssa ]
  %lcmp.mod96 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod96)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader
  %.078.epil = phi ptr [ %.078.epil.init, %.epil.preheader ], [ %i.am, %bb.f ] ; 2 uses
  %.06277.epil = phi ptr [ %.06277.epil.init, %.epil.preheader ], [ %i.al, %bb.f ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.f ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078.epil, ptr align 1 %.06277.epil, i64 %i.ah, i1 false)
  %i.al = getelementptr inbounds i8, ptr %.06277.epil, i64 %i.ai ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.078.epil, i64 %i.aj
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph82, label %bb.f, !llvm.loop !238

.lr.ph82:                                         ; preds = %bb.f, %.lr.ph82.unr-lcssa
  %.lcssa = phi ptr [ %i.ax, %.lr.ph82.unr-lcssa ], [ %i.al, %bb.f ] ; 2 uses
  %i.an = sext i32 %i.b to i64                    ; 5 uses
  %i.ao = sext i32 %i.aa to i64                   ; 5 uses
  %i.ap = sext i32 %i.ac to i64                   ; 5 uses
  %xtraiter98 = and i32 %smax, 3                  ; 3 uses
  %i.aq = icmp slt i32 %i.c, 8
  br i1 %i.aq, label %.epil.preheader97, label %.lr.ph82.new

.lr.ph82.new:                                     ; preds = %.lr.ph82
  %unroll_iter102 = and i32 %smax, 1073741820
  br label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %.078 = phi ptr [ %i.ag, %.lr.ph.new ], [ %i.ay, %bb.g ] ; 2 uses
  %.06277 = phi ptr [ %i.g, %.lr.ph.new ], [ %i.ax, %bb.g ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.078, ptr align 1 %.06277, i64 %i.ah, i1 false)
  %i.ar = getelementptr inbounds i8, ptr %.06277, i64 %i.ai ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %.078, i64 %i.aj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %i.ar, i64 %i.ah, i1 false)
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.ai ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.aj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %i.at, i64 %i.ah, i1 false)
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.ai ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 %i.aj ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr align 1 %i.av, i64 %i.ah, i1 false)
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.ai ; 3 uses
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 %i.aj ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph82.unr-lcssa, label %bb.g, !llvm.loop !239

bb.h:                                             ; preds = %bb.h, %.lr.ph82.new
  %.181 = phi ptr [ %i.j, %.lr.ph82.new ], [ %i.bg, %bb.h ] ; 2 uses
  %.16380 = phi ptr [ %.lcssa, %.lr.ph82.new ], [ %i.bf, %bb.h ] ; 2 uses
  %niter103 = phi i32 [ 0, %.lr.ph82.new ], [ %niter103.next.3, %bb.h ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.181, ptr align 1 %.16380, i64 %i.an, i1 false)
  %i.az = getelementptr inbounds i8, ptr %.16380, i64 %i.ao ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %.181, i64 %i.ap ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ba, ptr align 1 %i.az, i64 %i.an, i1 false)
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 %i.ao ; 2 uses
  %i.bc = getelementptr inbounds i8, ptr %i.ba, i64 %i.ap ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bc, ptr align 1 %i.bb, i64 %i.an, i1 false)
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 %i.ao ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.bc, i64 %i.ap ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.be, ptr align 1 %i.bd, i64 %i.an, i1 false)
  %i.bf = getelementptr inbounds i8, ptr %i.bd, i64 %i.ao ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.ap ; 2 uses
  %niter103.next.3 = add i32 %niter103, 4         ; 2 uses
  %niter103.ncmp.3 = icmp eq i32 %niter103.next.3, %unroll_iter102
  br i1 %niter103.ncmp.3, label %.critedge.loopexit.unr-lcssa, label %bb.h, !llvm.loop !240

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.h
  %lcmp.mod100.not = icmp eq i32 %xtraiter98, 0
  br i1 %lcmp.mod100.not, label %.critedge, label %.epil.preheader97

.epil.preheader97:                                ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph82
  %.181.epil.init = phi ptr [ %i.j, %.lr.ph82 ], [ %i.bg, %.critedge.loopexit.unr-lcssa ]
  %.16380.epil.init = phi ptr [ %.lcssa, %.lr.ph82 ], [ %i.bf, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod101 = icmp ne i32 %xtraiter98, 0
  tail call void @llvm.assume(i1 %lcmp.mod101)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader97
  %.181.epil = phi ptr [ %.181.epil.init, %.epil.preheader97 ], [ %i.bi, %bb.i ] ; 2 uses
  %.16380.epil = phi ptr [ %.16380.epil.init, %.epil.preheader97 ], [ %i.bh, %bb.i ] ; 2 uses
  %epil.iter99 = phi i32 [ 0, %.epil.preheader97 ], [ %epil.iter99.next, %bb.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.181.epil, ptr align 1 %.16380.epil, i64 %i.an, i1 false)
  %i.bh = getelementptr inbounds i8, ptr %.16380.epil, i64 %i.ao
  %i.bi = getelementptr inbounds i8, ptr %.181.epil, i64 %i.ap
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %.critedge, label %bb.i, !llvm.loop !241

.critedge:                                        ; preds = %.critedge.loopexit.unr-lcssa, %bb.i, %bb.e, %._crit_edge, %bb.b
  %.170 = phi i1 [ false, %bb.b ], [ true, %._crit_edge ], [ true, %bb.e ], [ true, %bb.i ], [ true, %.critedge.loopexit.unr-lcssa ]
  ret i1 %.170
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.bswap.v8i16(<8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!4}
!4 = distinct !{!4, !5}
!5 = distinct !{!5, !"LVerDomain"}
!6 = !{!7}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !9, !10, !11}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9}
!14 = !{!15}
!15 = distinct !{!15, !16}
!16 = distinct !{!16, !"LVerDomain"}
!17 = !{!18}
!18 = distinct !{!18, !16}
!19 = !{!20}
!20 = distinct !{!20, !16}
!21 = !{!22, !18, !15}
!22 = distinct !{!22, !16}
!23 = !{!22}
!24 = !{!18, !15}
!25 = distinct !{!25, !9, !10, !11}
!26 = distinct !{!26, !9, !10}
!27 = distinct !{!27, !9}
!28 = !{!29}
!29 = distinct !{!29, !30}
!30 = distinct !{!30, !"LVerDomain"}
!31 = !{!32}
!32 = distinct !{!32, !30}
!33 = !{!34, !35, !29}
!34 = distinct !{!34, !30}
!35 = distinct !{!35, !30}
!36 = !{!35}
!37 = distinct !{!37, !9, !10, !11}
!38 = !{!39}
!39 = distinct !{!39, !30}
!40 = !{!32, !34, !35, !29}
!41 = !{!34}
!42 = !{!35, !29}
!43 = distinct !{!43, !9, !10}
!44 = !{!45}
!45 = distinct !{!45, !46}
!46 = distinct !{!46, !"LVerDomain"}
!47 = !{!48}
!48 = distinct !{!48, !46}
!49 = !{!50}
!50 = distinct !{!50, !46}
!51 = !{!48, !45}
!52 = distinct !{!52, !9, !10, !11}
!53 = distinct !{!53, !9, !10}
!54 = distinct !{!54, !9}
!55 = !{!56}
!56 = distinct !{!56, !57}
!57 = distinct !{!57, !"LVerDomain"}
!58 = !{!59}
!59 = distinct !{!59, !57}
!60 = distinct !{!60, !9, !10, !11}
!61 = distinct !{!61, !9, !10}
!62 = !{!63}
!63 = distinct !{!63, !64}
!64 = distinct !{!64, !"LVerDomain"}
!65 = !{!66}
!66 = distinct !{!66, !64}
!67 = !{!68}
!68 = distinct !{!68, !64}
!69 = !{!66, !63}
!70 = distinct !{!70, !9, !10, !11}
!71 = distinct !{!71, !9, !10}
!72 = distinct !{!72, !9}
!73 = !{!74}
!74 = distinct !{!74, !75}
!75 = distinct !{!75, !"LVerDomain"}
!76 = !{!77}
!77 = distinct !{!77, !75}
!78 = distinct !{!78, !9, !10, !11}
!79 = distinct !{!79, !9, !10}
!80 = !{!81}
!81 = distinct !{!81, !82}
!82 = distinct !{!82, !"LVerDomain"}
!83 = !{!84}
!84 = distinct !{!84, !82}
!85 = distinct !{!85, !9, !10, !11}
!86 = distinct !{!86, !9, !10}
!87 = distinct !{!87, !9}
!88 = !{!89}
end_hunk_1
