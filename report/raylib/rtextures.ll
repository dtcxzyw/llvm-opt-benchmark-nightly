Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rtextures?download=true
inline.NumInlined: 812
inline.NumDeleted: 134
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 115
begin_hunk_0_@stbi_write_png_to_mem:bb.a
  %i.fv = zext nneg i32 %i.fu to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.fv
  %i.fx = load i32, ptr %i.fw, align 4
  %i.fy = xor i32 %i.fx, %i.fs                    ; 2 uses
  %i.fz = lshr i32 %i.fy, 8
  %i.ga = xor i32 %i.fy, %i.eb
  %i.gb = and i32 %i.ga, 255
  %i.gc = zext nneg i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4
  %i.gf = xor i32 %i.ge, %i.fz                    ; 2 uses
  %i.gg = lshr i32 %i.gf, 8
  %i.gh = xor i32 %i.gf, %i.ee
  %i.gi = and i32 %i.gh, 255
  %i.gj = zext nneg i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4
  %i.gm = xor i32 %i.gl, %i.gg                    ; 2 uses
  %i.gn = lshr i32 %i.gm, 8
  %i.go = xor i32 %i.gm, %3
  %i.gp = and i32 %i.go, 255
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 4
  %i.gt = xor i32 %i.gs, %i.gn                    ; 2 uses
  %i.gu = lshr i32 %i.gt, 8
  %i.gv = and i32 %i.gt, 255
  %i.gw = xor i32 %i.gv, 8
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.gx
  %i.gz = load i32, ptr %i.gy, align 4
  %i.ha = xor i32 %i.gz, %i.gu                    ; 2 uses
  %i.hb = lshr i32 %i.ha, 8
  %i.hc = xor i32 %i.ha, %i.en
  %i.hd = and i32 %i.hc, 255
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4
  %i.hh = xor i32 %i.hg, %i.hb                    ; 2 uses
  %i.hi = lshr i32 %i.hh, 8
  %i.hj = and i32 %i.hh, 255
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4
  %i.hn = xor i32 %i.hm, %i.hi                    ; 2 uses
  %i.ho = lshr i32 %i.hn, 8
  %i.hp = and i32 %i.hn, 255
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4
  %i.ht = xor i32 %i.hs, %i.ho                    ; 2 uses
  %i.hu = lshr i32 %i.ht, 8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.dl, i64 28
  %i.hw = load i8, ptr %i.hv, align 1
  %i.hx = zext i8 %i.hw to i32
  %i.hy = and i32 %i.ht, 255
  %i.hz = xor i32 %i.hy, %i.hx
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4
  %i.id = xor i32 %i.ic, %i.hu
  %i.ie = getelementptr inbounds nuw i8, ptr %i.dl, i64 29
  %i.if = xor i32 %i.id, -1                       ; 4 uses
  %i.ig = lshr i32 %i.if, 24
  %i.ih = trunc nuw i32 %i.ig to i8
  store i8 %i.ih, ptr %i.ie, align 1
  %i.ii = lshr i32 %i.if, 16
  %i.ij = trunc i32 %i.ii to i8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dl, i64 30
  store i8 %i.ij, ptr %i.ik, align 1
  %i.il = lshr i32 %i.if, 8
  %i.im = trunc i32 %i.il to i8
  %i.in = getelementptr inbounds nuw i8, ptr %i.dl, i64 31
  store i8 %i.im, ptr %i.in, align 1
  %i.io = trunc i32 %i.if to i8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store i8 %i.io, ptr %i.ip, align 1
  %i.iq = getelementptr inbounds nuw i8, ptr %i.dl, i64 33
  %i.ir = lshr i32 %i.di, 24
  %i.is = trunc nuw i32 %i.ir to i8
  store i8 %i.is, ptr %i.iq, align 1
  %i.it = lshr i32 %i.di, 16
  %i.iu = trunc i32 %i.it to i8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.dl, i64 34
  store i8 %i.iu, ptr %i.iv, align 1
  %i.iw = lshr i32 %i.di, 8
  %i.ix = trunc i32 %i.iw to i8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.dl, i64 35
  store i8 %i.ix, ptr %i.iy, align 1
  %i.iz = trunc i32 %i.di to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %i.dl, i64 36
  store i8 %i.iz, ptr %i.ja, align 1
  %i.jb = getelementptr inbounds nuw i8, ptr %i.dl, i64 37 ; 4 uses
  store <4 x i8> <i8 73, i8 68, i8 65, i8 84>, ptr %i.jb, align 1
  %i.jc = getelementptr inbounds nuw i8, ptr %i.dl, i64 41 ; 2 uses
  %i.jd = sext i32 %i.di to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jc, ptr nonnull align 1 %i.dh, i64 %i.jd, i1 false)
  %i.je = getelementptr inbounds i8, ptr %i.jc, i64 %i.jd ; 6 uses
  tail call void @free(ptr noundef nonnull %i.dh) #52
  %i.jf = icmp sgt i32 %i.di, -4
  br i1 %i.jf, label %.lr.ph.preheader.i.i, label %stbiw__wpcrc.exit119

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i.i
  %i.jg = add nsw i32 %i.di, 4                    ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.jg to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.jh = icmp eq i32 %i.jg, 1
  br i1 %i.jh, label %.lr.ph.i.i114.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %.lr.ph.i.i114

.lr.ph.i.i114:                                    ; preds = %.lr.ph.i.i114, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i115 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i117.1, %.lr.ph.i.i114 ] ; 3 uses
  %.078.i.i116 = phi i32 [ -1, %.lr.ph.preheader.i.i.new ], [ %i.kc, %.lr.ph.i.i114 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i114 ]
  %i.ji = lshr i32 %.078.i.i116, 8
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 %indvars.iv.i.i115
  %i.jk = load i8, ptr %i.jj, align 1
  %i.jl = zext i8 %i.jk to i32
  %i.jm = and i32 %.078.i.i116, 255
  %i.jn = xor i32 %i.jm, %i.jl
  %i.jo = zext nneg i32 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.jo
  %i.jq = load i32, ptr %i.jp, align 4
  %i.jr = xor i32 %i.jq, %i.ji                    ; 2 uses
  %i.js = lshr i32 %i.jr, 8
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jb, i64 %indvars.iv.i.i115
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 1
  %i.jv = load i8, ptr %i.ju, align 1
  %i.jw = zext i8 %i.jv to i32
  %i.jx = and i32 %i.jr, 255
  %i.jy = xor i32 %i.jx, %i.jw
  %i.jz = zext nneg i32 %i.jy to i64
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4
  %i.kc = xor i32 %i.kb, %i.js                    ; 3 uses
  %indvars.iv.next.i.i117.1 = add nuw nsw i64 %indvars.iv.i.i115, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i114

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i.i114
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i114.epil.preheader

.lr.ph.i.i114.epil.preheader:                     ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i115.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i117.1, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.078.i.i116.epil.init = phi i32 [ -1, %.lr.ph.preheader.i.i ], [ %i.kc, %._crit_edge.loopexit.i.i.unr-lcssa ] ; 2 uses
  %lcmp.mod320 = trunc i32 %i.di to i1
  tail call void @llvm.assume(i1 %lcmp.mod320)
  %i.kd = lshr i32 %.078.i.i116.epil.init, 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jb, i64 %indvars.iv.i.i115.epil.init
  %i.kf = load i8, ptr %i.ke, align 1
  %i.kg = zext i8 %i.kf to i32
  %i.kh = and i32 %.078.i.i116.epil.init, 255
  %i.ki = xor i32 %i.kh, %i.kg
  %i.kj = zext nneg i32 %i.ki to i64
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr @stbiw__crc32.crc_table, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4
  %i.km = xor i32 %i.kl, %i.kd
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i114.epil.preheader
  %.lcssa = phi i32 [ %i.kc, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.km, %.lr.ph.i.i114.epil.preheader ]
  %i.kn = xor i32 %.lcssa, -1
  br label %stbiw__wpcrc.exit119

stbiw__wpcrc.exit119:                             ; preds = %.lr.ph.i.i, %._crit_edge.loopexit.i.i
  %.07.lcssa.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.kn, %._crit_edge.loopexit.i.i ] ; 4 uses
  %i.ko = lshr i32 %.07.lcssa.i.i, 24
  %i.kp = trunc nuw i32 %i.ko to i8
  store i8 %i.kp, ptr %i.je, align 1
  %i.kq = lshr i32 %.07.lcssa.i.i, 16
  %i.kr = trunc i32 %i.kq to i8
  %i.ks = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  store i8 %i.kr, ptr %i.ks, align 1
  %i.kt = lshr i32 %.07.lcssa.i.i, 8
  %i.ku = trunc i32 %i.kt to i8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  store i8 %i.ku, ptr %i.kv, align 1
  %i.kw = trunc i32 %.07.lcssa.i.i to i8
  %i.kx = getelementptr inbounds nuw i8, ptr %i.je, i64 3
  store i8 %i.kw, ptr %i.kx, align 1
  %i.ky = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  %i.kz = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store i32 0, ptr %i.ky, align 1
  store <8 x i8> <i8 73, i8 69, i8 78, i8 68, i8 -82, i8 66, i8 96, i8 -126>, ptr %i.kz, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge, %bb.a, %stbiw__wpcrc.exit119, %bb.d
  %.099 = phi ptr [ %i.dl, %stbiw__wpcrc.exit119 ], [ null, %._crit_edge ], [ null, %bb.a ], [ null, %bb.d ], [ null, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #52
  ret ptr %.099
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @stbiw__encode_png_line(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef nonnull writeonly captures(none) %7) unnamed_addr #15 {
bb.a:
  %i.a = ptrtoaddr ptr %7 to i64                  ; 14 uses
  %i.b = ptrtoaddr ptr %0 to i64                  ; 7 uses
  %.not = icmp eq i32 %4, 0
  %i.c = select i1 %.not, ptr @stbiw__encode_png_line.firstmap, ptr @stbiw__encode_png_line.mapping
  %i.d = sext i32 %6 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %i.g = load i32, ptr @stbi__flip_vertically_on_write, align 4
  %.not136 = icmp eq i32 %i.g, 0                  ; 2 uses
  %i.h = xor i32 %4, -1
  %i.i = add i32 %3, %i.h
  %i.j = select i1 %.not136, i32 %4, i32 %i.i
  %i.k = mul i32 %i.j, %1
  %i.l = sext i32 %i.k to i64                     ; 8 uses
  %i.m = getelementptr inbounds i8, ptr %0, i64 %i.l ; 77 uses
  %i.n = sub nsw i32 0, %1
  %i.o = select i1 %.not136, i32 %1, i32 %i.n     ; 4 uses
  %i.p = icmp eq i32 %i.f, 0
  br i1 %i.p, label %bb.b, label %.preheader160

.preheader160:                                    ; preds = %bb.a
  %i.q = icmp sgt i32 %5, 0
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader160
  %i.r = sext i32 %i.o to i64                     ; 3 uses
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.s = mul nsw i32 %5, %2
  %i.t = sext i32 %i.s to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %7, ptr align 1 %i.m, i64 %i.t, i1 false)
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 11 uses
  switch i32 %i.f, label %bb.i [
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.v = load i8, ptr %i.u, align 1
  br label %.sink.split

bb.d:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1
  %i.y = sub nsw i64 %indvars.iv, %i.r
  %i.z = getelementptr inbounds i8, ptr %i.m, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1
  %i.ab = sub i8 %i.x, %i.aa
  br label %.sink.split

bb.e:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = sub nsw i64 %indvars.iv, %i.r
  %i.af = getelementptr inbounds i8, ptr %i.m, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1
  %i.ah = lshr i8 %i.ag, 1
  %i.ai = sub i8 %i.ad, %i.ah
  br label %.sink.split

bb.f:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = sub nsw i64 %indvars.iv, %i.r
  %i.am = getelementptr inbounds i8, ptr %i.m, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = sub i8 %i.ak, %i.an
  br label %.sink.split

bb.g:                                             ; preds = %.lr.ph
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.aq = load i8, ptr %i.ap, align 1
  br label %.sink.split

bb.h:                                             ; preds = %.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %i.m, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sink = phi i8 [ %i.v, %bb.c ], [ %i.ab, %bb.d ], [ %i.ai, %bb.e ], [ %i.ao, %bb.f ], [ %i.aq, %bb.g ], [ %i.as, %bb.h ]
  %i.at = getelementptr inbounds nuw i8, ptr %7, i64 %indvars.iv
  store i8 %.sink, ptr %i.at, align 1
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %.preheader160
  switch i32 %i.f, label %.loopexit [
    i32 1, label %.preheader
    i32 2, label %.preheader150
    i32 3, label %.preheader152
    i32 4, label %.preheader154
    i32 5, label %.preheader156
    i32 6, label %.preheader158
  ]

.preheader158:                                    ; preds = %._crit_edge
  %i.au = mul nsw i32 %5, %2                      ; 2 uses
  %i.av = icmp slt i32 %5, %i.au
  br i1 %i.av, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %.preheader158
  %i.aw = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count183 = sext i32 %i.au to i64     ; 4 uses
  %i.ax = sub nsw i64 %wide.trip.count183, %i.aw  ; 7 uses
  %min.iters.check = icmp ult i64 %i.ax, 8
  br i1 %min.iters.check, label %.lr.ph163.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ay = add i64 %i.b, %i.l                      ; 2 uses
  %i.az = add i64 %i.a, %i.aw
  %i.ba = sub i64 %i.ay, %i.az
  %diff.check = icmp ugt i64 %i.ba, -32
  %i.bb = sub i64 %i.ay, %i.a
  %diff.check228 = icmp ugt i64 %i.bb, -32
  %conflict.rdx = or i1 %diff.check, %diff.check228
  br i1 %conflict.rdx, label %.lr.ph163.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check229 = icmp ult i64 %i.ax, 32
  br i1 %min.iters.check229, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %i.ax, 24
  %n.vec = and i64 %i.ax, -32                     ; 4 uses
  %i.bd = add nsw i64 %n.vec, %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.be = add i64 %index, %i.aw                   ; 2 uses
  %i.bf = getelementptr inbounds i8, ptr %i.m, i64 %i.be ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load = load <16 x i8>, ptr %i.bf, align 1
  %wide.load230 = load <16 x i8>, ptr %i.bg, align 1
  %i.bh = getelementptr inbounds i8, ptr %i.m, i64 %index ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %wide.load231 = load <16 x i8>, ptr %i.bh, align 1
  %wide.load232 = load <16 x i8>, ptr %i.bi, align 1
  %i.bj = sub <16 x i8> %wide.load, %wide.load231
  %i.bk = sub <16 x i8> %wide.load230, %wide.load232
  %i.bl = getelementptr inbounds i8, ptr %7, i64 %i.be ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <16 x i8> %i.bj, ptr %i.bl, align 1
  store <16 x i8> %i.bk, ptr %i.bm, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph163.preheader, label %vec.epilog.ph, !prof !17

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec233 = and i64 %i.ax, -8                   ; 3 uses
  %i.bo = add nsw i64 %n.vec233, %i.aw
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index234 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next237, %vec.epilog.vector.body ] ; 3 uses
  %i.bp = add i64 %index234, %i.aw                ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.m, i64 %i.bp
  %wide.load235 = load <8 x i8>, ptr %i.bq, align 1
  %i.br = getelementptr inbounds i8, ptr %i.m, i64 %index234
  %wide.load236 = load <8 x i8>, ptr %i.br, align 1
  %i.bs = sub <8 x i8> %wide.load235, %wide.load236
  %i.bt = getelementptr inbounds i8, ptr %7, i64 %i.bp
  store <8 x i8> %i.bs, ptr %i.bt, align 1
  %index.next237 = add nuw i64 %index234, 8       ; 2 uses
  %i.bu = icmp eq i64 %index.next237, %n.vec233
  br i1 %i.bu, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n238 = icmp eq i64 %i.ax, %n.vec233
  br i1 %cmp.n238, label %.loopexit, label %.lr.ph163.preheader

.lr.ph163.preheader:                              ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv180.ph = phi i64 [ %i.aw, %iter.check ], [ %i.aw, %vector.memcheck ], [ %i.bd, %vec.epilog.iter.check ], [ %i.bo, %vec.epilog.middle.block ] ; 7 uses
  %i.bv = sub nsw i64 %wide.trip.count183, %indvars.iv180.ph
  %xtraiter = and i64 %i.bv, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph163.prol.loopexit, label %.lr.ph163.prol

.lr.ph163.prol:                                   ; preds = %.lr.ph163.preheader
  %i.bw = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv180.ph
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = sub nsw i64 %indvars.iv180.ph, %i.aw
  %i.bz = getelementptr inbounds i8, ptr %i.m, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = sub i8 %i.bx, %i.ca
  %i.cc = getelementptr inbounds i8, ptr %7, i64 %indvars.iv180.ph
  store i8 %i.cb, ptr %i.cc, align 1
  %indvars.iv.next181.prol = add nsw i64 %indvars.iv180.ph, 1
  br label %.lr.ph163.prol.loopexit

.lr.ph163.prol.loopexit:                          ; preds = %.lr.ph163.prol, %.lr.ph163.preheader
  %indvars.iv180.unr = phi i64 [ %indvars.iv180.ph, %.lr.ph163.preheader ], [ %indvars.iv.next181.prol, %.lr.ph163.prol ]
  %i.cd = add nsw i64 %wide.trip.count183, -1
  %i.ce = icmp eq i64 %indvars.iv180.ph, %i.cd
  br i1 %i.ce, label %.loopexit, label %.lr.ph163

.preheader156:                                    ; preds = %._crit_edge
  %i.cf = mul nsw i32 %5, %2                      ; 2 uses
  %i.cg = icmp slt i32 %5, %i.cf
  br i1 %i.cg, label %iter.check259, label %.loopexit

iter.check259:                                    ; preds = %.preheader156
  %i.ch = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count188 = sext i32 %i.cf to i64     ; 4 uses
  %i.ci = sub nsw i64 %wide.trip.count188, %i.ch  ; 7 uses
  %min.iters.check244 = icmp ult i64 %i.ci, 8
  br i1 %min.iters.check244, label %.lr.ph165.preheader, label %vector.memcheck240

vector.memcheck240:                               ; preds = %iter.check259
  %i.cj = add i64 %i.b, %i.l                      ; 2 uses
  %i.ck = add i64 %i.a, %i.ch
  %i.cl = sub i64 %i.cj, %i.ck
  %diff.check241 = icmp ugt i64 %i.cl, -32
  %i.cm = sub i64 %i.cj, %i.a
  %diff.check242 = icmp ugt i64 %i.cm, -32
  %conflict.rdx243 = or i1 %diff.check241, %diff.check242
  br i1 %conflict.rdx243, label %.lr.ph165.preheader, label %vector.main.loop.iter.check245

vector.main.loop.iter.check245:                   ; preds = %vector.memcheck240
  %min.iters.check246 = icmp ult i64 %i.ci, 32
  br i1 %min.iters.check246, label %vec.epilog.ph263, label %vector.ph247

vector.ph247:                                     ; preds = %vector.main.loop.iter.check245
  %i.cn = and i64 %i.ci, 24
  %n.vec248 = and i64 %i.ci, -32                  ; 4 uses
  %i.co = add nsw i64 %n.vec248, %i.ch
  br label %vector.body249

vector.body249:                                   ; preds = %vector.ph247, %vector.body249
  %index250 = phi i64 [ 0, %vector.ph247 ], [ %index.next255, %vector.body249 ] ; 3 uses
  %i.cp = add i64 %index250, %i.ch                ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.m, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load251 = load <16 x i8>, ptr %i.cq, align 1
  %wide.load252 = load <16 x i8>, ptr %i.cr, align 1
  %i.cs = getelementptr inbounds i8, ptr %i.m, i64 %index250 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load253 = load <16 x i8>, ptr %i.cs, align 1
  %wide.load254 = load <16 x i8>, ptr %i.ct, align 1
  %i.cu = lshr <16 x i8> %wide.load253, splat (i8 1)
  %i.cv = lshr <16 x i8> %wide.load254, splat (i8 1)
  %i.cw = sub <16 x i8> %wide.load251, %i.cu
  %i.cx = sub <16 x i8> %wide.load252, %i.cv
  %i.cy = getelementptr inbounds i8, ptr %7, i64 %i.cp ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store <16 x i8> %i.cw, ptr %i.cy, align 1
  store <16 x i8> %i.cx, ptr %i.cz, align 1
  %index.next255 = add nuw i64 %index250, 32      ; 2 uses
  %i.da = icmp eq i64 %index.next255, %n.vec248
  br i1 %i.da, label %middle.block256, label %vector.body249, !llvm.loop !70

middle.block256:                                  ; preds = %vector.body249
  %cmp.n257 = icmp eq i64 %i.ci, %n.vec248
  br i1 %cmp.n257, label %.loopexit, label %vec.epilog.iter.check261

vec.epilog.iter.check261:                         ; preds = %middle.block256
  %min.epilog.iters.check262 = icmp eq i64 %i.cn, 0
  br i1 %min.epilog.iters.check262, label %.lr.ph165.preheader, label %vec.epilog.ph263, !prof !17

vec.epilog.ph263:                                 ; preds = %vector.main.loop.iter.check245, %vec.epilog.iter.check261
  %vec.epilog.resume.val258 = phi i64 [ %n.vec248, %vec.epilog.iter.check261 ], [ 0, %vector.main.loop.iter.check245 ]
  %n.vec264 = and i64 %i.ci, -8                   ; 3 uses
  %i.db = add nsw i64 %n.vec264, %i.ch
  br label %vec.epilog.vector.body265

vec.epilog.vector.body265:                        ; preds = %vec.epilog.vector.body265, %vec.epilog.ph263
  %index266 = phi i64 [ %vec.epilog.resume.val258, %vec.epilog.ph263 ], [ %index.next269, %vec.epilog.vector.body265 ] ; 3 uses
  %i.dc = add i64 %index266, %i.ch                ; 2 uses
  %i.dd = getelementptr inbounds i8, ptr %i.m, i64 %i.dc
  %wide.load267 = load <8 x i8>, ptr %i.dd, align 1
  %i.de = getelementptr inbounds i8, ptr %i.m, i64 %index266
  %wide.load268 = load <8 x i8>, ptr %i.de, align 1
  %i.df = lshr <8 x i8> %wide.load268, splat (i8 1)
  %i.dg = sub <8 x i8> %wide.load267, %i.df
  %i.dh = getelementptr inbounds i8, ptr %7, i64 %i.dc
  store <8 x i8> %i.dg, ptr %i.dh, align 1
  %index.next269 = add nuw i64 %index266, 8       ; 2 uses
  %i.di = icmp eq i64 %index.next269, %n.vec264
  br i1 %i.di, label %vec.epilog.middle.block270, label %vec.epilog.vector.body265, !llvm.loop !71

vec.epilog.middle.block270:                       ; preds = %vec.epilog.vector.body265
  %cmp.n271 = icmp eq i64 %i.ci, %n.vec264
  br i1 %cmp.n271, label %.loopexit, label %.lr.ph165.preheader

.lr.ph165.preheader:                              ; preds = %iter.check259, %vector.memcheck240, %vec.epilog.iter.check261, %vec.epilog.middle.block270
  %indvars.iv185.ph = phi i64 [ %i.ch, %iter.check259 ], [ %i.ch, %vector.memcheck240 ], [ %i.co, %vec.epilog.iter.check261 ], [ %i.db, %vec.epilog.middle.block270 ] ; 7 uses
  %i.dj = sub nsw i64 %wide.trip.count188, %indvars.iv185.ph
  %xtraiter418 = and i64 %i.dj, 1
  %lcmp.mod419.not = icmp eq i64 %xtraiter418, 0
  br i1 %lcmp.mod419.not, label %.lr.ph165.prol.loopexit, label %.lr.ph165.prol

.lr.ph165.prol:                                   ; preds = %.lr.ph165.preheader
  %i.dk = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv185.ph
  %i.dl = load i8, ptr %i.dk, align 1
  %i.dm = sub nsw i64 %indvars.iv185.ph, %i.ch
  %i.dn = getelementptr inbounds i8, ptr %i.m, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1
  %i.dp = lshr i8 %i.do, 1
  %i.dq = sub i8 %i.dl, %i.dp
  %i.dr = getelementptr inbounds i8, ptr %7, i64 %indvars.iv185.ph
  store i8 %i.dq, ptr %i.dr, align 1
  %indvars.iv.next186.prol = add nsw i64 %indvars.iv185.ph, 1
  br label %.lr.ph165.prol.loopexit

.lr.ph165.prol.loopexit:                          ; preds = %.lr.ph165.prol, %.lr.ph165.preheader
  %indvars.iv185.unr = phi i64 [ %indvars.iv185.ph, %.lr.ph165.preheader ], [ %indvars.iv.next186.prol, %.lr.ph165.prol ]
  %i.ds = add nsw i64 %wide.trip.count188, -1
  %i.dt = icmp eq i64 %indvars.iv185.ph, %i.ds
  br i1 %i.dt, label %.loopexit, label %.lr.ph165

.preheader154:                                    ; preds = %._crit_edge
  %i.du = mul nsw i32 %5, %2                      ; 2 uses
  %i.dv = icmp slt i32 %5, %i.du
  br i1 %i.dv, label %iter.check296, label %.loopexit

iter.check296:                                    ; preds = %.preheader154
  %i.dw = sext i32 %5 to i64                      ; 13 uses
  %i.dx = sext i32 %i.o to i64                    ; 4 uses
  %wide.trip.count193 = sext i32 %i.du to i64     ; 2 uses
  %i.dy = sub nsw i64 %wide.trip.count193, %i.dw  ; 7 uses
  %min.iters.check281 = icmp ult i64 %i.dy, 4
  br i1 %min.iters.check281, label %.lr.ph167.preheader, label %vector.memcheck273

vector.memcheck273:                               ; preds = %iter.check296
  %i.dz = add i64 %i.a, %i.dx                     ; 2 uses
  %i.ea = add i64 %i.dz, %i.dw
  %i.eb = add i64 %i.b, %i.l
  %i.ec = sub i64 %i.eb, %i.ea
  %diff.check274 = icmp ugt i64 %i.ec, -16
  %i.ed = add i64 %i.b, %i.l                      ; 3 uses
  %i.ee = sub i64 %i.ed, %i.dz
  %diff.check275 = icmp ugt i64 %i.ee, -16
  %conflict.rdx276 = or i1 %diff.check274, %diff.check275
  %i.ef = add i64 %i.a, %i.dw
  %i.eg = sub i64 %i.ed, %i.ef
  %diff.check277 = icmp ugt i64 %i.eg, -16
  %conflict.rdx278 = or i1 %conflict.rdx276, %diff.check277
  %i.eh = sub i64 %i.ed, %i.a
  %diff.check279 = icmp ugt i64 %i.eh, -16
  %conflict.rdx280 = or i1 %conflict.rdx278, %diff.check279
  br i1 %conflict.rdx280, label %.lr.ph167.preheader, label %vector.main.loop.iter.check282

vector.main.loop.iter.check282:                   ; preds = %vector.memcheck273
  %min.iters.check283 = icmp ult i64 %i.dy, 16
  br i1 %min.iters.check283, label %vec.epilog.ph300, label %vector.ph284

vector.ph284:                                     ; preds = %vector.main.loop.iter.check282
  %i.ei = and i64 %i.dy, 12
  %n.vec285 = and i64 %i.dy, -16                  ; 4 uses
  %i.ej = add nsw i64 %n.vec285, %i.dw
  br label %vector.body286

vector.body286:                                   ; preds = %vector.ph284, %vector.body286
  %index287 = phi i64 [ 0, %vector.ph284 ], [ %index.next292, %vector.body286 ] ; 3 uses
  %i.ek = add i64 %index287, %i.dw                ; 3 uses
  %i.el = getelementptr inbounds i8, ptr %i.m, i64 %i.ek
  %wide.load288 = load <16 x i8>, ptr %i.el, align 1
  %i.em = getelementptr inbounds i8, ptr %i.m, i64 %index287
  %wide.load289 = load <16 x i8>, ptr %i.em, align 1 ; 2 uses
  %i.en = zext <16 x i8> %wide.load289 to <16 x i32> ; 2 uses
  %i.eo = sub nsw i64 %i.ek, %i.dx                ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.m, i64 %i.eo
  %wide.load290 = load <16 x i8>, ptr %i.ep, align 1 ; 2 uses
  %i.eq = zext <16 x i8> %wide.load290 to <16 x i32> ; 2 uses
  %i.er = sub nsw i64 %i.eo, %i.dw
  %i.es = getelementptr inbounds i8, ptr %i.m, i64 %i.er
  %wide.load291 = load <16 x i8>, ptr %i.es, align 1 ; 2 uses
  %i.et = zext <16 x i8> %wide.load291 to <16 x i32> ; 2 uses
  %i.eu = add nuw nsw <16 x i32> %i.eq, %i.en
  %i.ev = sub nsw <16 x i32> %i.eu, %i.et         ; 3 uses
  %i.ew = sub nsw <16 x i32> %i.ev, %i.en
  %i.ex = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ew, i1 true) ; 2 uses
  %i.ey = sub nsw <16 x i32> %i.ev, %i.eq
  %i.ez = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.ey, i1 true) ; 2 uses
  %i.fa = sub nsw <16 x i32> %i.ev, %i.et
  %i.fb = tail call <16 x i32> @llvm.abs.v16i32(<16 x i32> %i.fa, i1 true) ; 2 uses
  %i.fc = icmp samesign ugt <16 x i32> %i.ex, %i.ez
  %i.fd = icmp samesign ugt <16 x i32> %i.ex, %i.fb
  %i.fe = select <16 x i1> %i.fc, <16 x i1> splat (i1 true), <16 x i1> %i.fd
  %i.ff = icmp samesign ugt <16 x i32> %i.ez, %i.fb
  %i.fg = select <16 x i1> %i.ff, <16 x i8> %wide.load291, <16 x i8> %wide.load290
  %i.fh = select <16 x i1> %i.fe, <16 x i8> %i.fg, <16 x i8> %wide.load289
  %i.fi = sub <16 x i8> %wide.load288, %i.fh
  %i.fj = getelementptr inbounds i8, ptr %7, i64 %i.ek
  store <16 x i8> %i.fi, ptr %i.fj, align 1
  %index.next292 = add nuw i64 %index287, 16      ; 2 uses
  %i.fk = icmp eq i64 %index.next292, %n.vec285
  br i1 %i.fk, label %middle.block293, label %vector.body286, !llvm.loop !72

middle.block293:                                  ; preds = %vector.body286
  %cmp.n294 = icmp eq i64 %i.dy, %n.vec285
  br i1 %cmp.n294, label %.loopexit, label %vec.epilog.iter.check298

vec.epilog.iter.check298:                         ; preds = %middle.block293
  %min.epilog.iters.check299 = icmp eq i64 %i.ei, 0
  br i1 %min.epilog.iters.check299, label %.lr.ph167.preheader, label %vec.epilog.ph300, !prof !13

vec.epilog.ph300:                                 ; preds = %vector.main.loop.iter.check282, %vec.epilog.iter.check298
  %vec.epilog.resume.val295 = phi i64 [ %n.vec285, %vec.epilog.iter.check298 ], [ 0, %vector.main.loop.iter.check282 ]
  %n.vec301 = and i64 %i.dy, -4                   ; 3 uses
  %i.fl = add nsw i64 %n.vec301, %i.dw
  br label %vec.epilog.vector.body302

vec.epilog.vector.body302:                        ; preds = %vec.epilog.vector.body302, %vec.epilog.ph300
  %index303 = phi i64 [ %vec.epilog.resume.val295, %vec.epilog.ph300 ], [ %index.next308, %vec.epilog.vector.body302 ] ; 3 uses
  %i.fm = add i64 %index303, %i.dw                ; 3 uses
  %i.fn = getelementptr inbounds i8, ptr %i.m, i64 %i.fm
  %wide.load304 = load <4 x i8>, ptr %i.fn, align 1
  %i.fo = getelementptr inbounds i8, ptr %i.m, i64 %index303
  %wide.load305 = load <4 x i8>, ptr %i.fo, align 1 ; 2 uses
  %i.fp = zext <4 x i8> %wide.load305 to <4 x i32> ; 2 uses
  %i.fq = sub nsw i64 %i.fm, %i.dx                ; 2 uses
  %i.fr = getelementptr inbounds i8, ptr %i.m, i64 %i.fq
  %wide.load306 = load <4 x i8>, ptr %i.fr, align 1 ; 2 uses
  %i.fs = zext <4 x i8> %wide.load306 to <4 x i32> ; 2 uses
  %i.ft = sub nsw i64 %i.fq, %i.dw
  %i.fu = getelementptr inbounds i8, ptr %i.m, i64 %i.ft
  %wide.load307 = load <4 x i8>, ptr %i.fu, align 1 ; 2 uses
  %i.fv = zext <4 x i8> %wide.load307 to <4 x i32> ; 2 uses
  %i.fw = add nuw nsw <4 x i32> %i.fs, %i.fp
  %i.fx = sub nsw <4 x i32> %i.fw, %i.fv          ; 3 uses
  %i.fy = sub nsw <4 x i32> %i.fx, %i.fp
  %i.fz = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fy, i1 true) ; 2 uses
  %i.ga = sub nsw <4 x i32> %i.fx, %i.fs
  %i.gb = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ga, i1 true) ; 2 uses
  %i.gc = sub nsw <4 x i32> %i.fx, %i.fv
  %i.gd = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.gc, i1 true) ; 2 uses
  %i.ge = icmp samesign ugt <4 x i32> %i.fz, %i.gb
  %i.gf = icmp samesign ugt <4 x i32> %i.fz, %i.gd
  %i.gg = select <4 x i1> %i.ge, <4 x i1> splat (i1 true), <4 x i1> %i.gf
  %i.gh = icmp samesign ugt <4 x i32> %i.gb, %i.gd
  %i.gi = select <4 x i1> %i.gh, <4 x i8> %wide.load307, <4 x i8> %wide.load306
  %i.gj = select <4 x i1> %i.gg, <4 x i8> %i.gi, <4 x i8> %wide.load305
  %i.gk = sub <4 x i8> %wide.load304, %i.gj
  %i.gl = getelementptr inbounds i8, ptr %7, i64 %i.fm
  store <4 x i8> %i.gk, ptr %i.gl, align 1
  %index.next308 = add nuw i64 %index303, 4       ; 2 uses
  %i.gm = icmp eq i64 %index.next308, %n.vec301
  br i1 %i.gm, label %vec.epilog.middle.block309, label %vec.epilog.vector.body302, !llvm.loop !73

vec.epilog.middle.block309:                       ; preds = %vec.epilog.vector.body302
  %cmp.n310 = icmp eq i64 %i.dy, %n.vec301
  br i1 %cmp.n310, label %.loopexit, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %iter.check296, %vector.memcheck273, %vec.epilog.iter.check298, %vec.epilog.middle.block309
  %indvars.iv190.ph = phi i64 [ %i.dw, %iter.check296 ], [ %i.dw, %vector.memcheck273 ], [ %i.ej, %vec.epilog.iter.check298 ], [ %i.fl, %vec.epilog.middle.block309 ]
  br label %.lr.ph167

.preheader152:                                    ; preds = %._crit_edge
  %i.gn = mul nsw i32 %5, %2                      ; 2 uses
  %i.go = icmp slt i32 %5, %i.gn
  br i1 %i.go, label %iter.check332, label %.loopexit

iter.check332:                                    ; preds = %.preheader152
  %i.gp = sext i32 %5 to i64                      ; 11 uses
  %i.gq = sext i32 %i.o to i64                    ; 6 uses
  %wide.trip.count198 = sext i32 %i.gn to i64     ; 4 uses
  %i.gr = sub nsw i64 %wide.trip.count198, %i.gp  ; 7 uses
  %min.iters.check318 = icmp ult i64 %i.gr, 4
  br i1 %min.iters.check318, label %.lr.ph169.preheader, label %vector.memcheck312

vector.memcheck312:                               ; preds = %iter.check332
  %i.gs = add i64 %i.b, %i.l                      ; 3 uses
  %i.gt = add i64 %i.a, %i.gq
  %i.gu = sub i64 %i.gs, %i.gt
  %diff.check313 = icmp ugt i64 %i.gu, -16
  %i.gv = add i64 %i.a, %i.gp
  %i.gw = sub i64 %i.gs, %i.gv
  %diff.check314 = icmp ugt i64 %i.gw, -16
  %conflict.rdx315 = or i1 %diff.check313, %diff.check314
  %i.gx = sub i64 %i.gs, %i.a
  %diff.check316 = icmp ugt i64 %i.gx, -16
  %conflict.rdx317 = or i1 %conflict.rdx315, %diff.check316
  br i1 %conflict.rdx317, label %.lr.ph169.preheader, label %vector.main.loop.iter.check319

vector.main.loop.iter.check319:                   ; preds = %vector.memcheck312
  %min.iters.check320 = icmp ult i64 %i.gr, 16
  br i1 %min.iters.check320, label %vec.epilog.ph336, label %vector.ph321

vector.ph321:                                     ; preds = %vector.main.loop.iter.check319
  %i.gy = and i64 %i.gr, 12
  %n.vec322 = and i64 %i.gr, -16                  ; 4 uses
  %i.gz = add nsw i64 %n.vec322, %i.gp
  br label %vector.body323

vector.body323:                                   ; preds = %vector.ph321, %vector.body323
  %index324 = phi i64 [ 0, %vector.ph321 ], [ %index.next328, %vector.body323 ] ; 3 uses
  %i.ha = add i64 %index324, %i.gp                ; 3 uses
  %i.hb = getelementptr inbounds i8, ptr %i.m, i64 %i.ha
  %wide.load325 = load <16 x i8>, ptr %i.hb, align 1
  %i.hc = getelementptr inbounds i8, ptr %i.m, i64 %index324
  %wide.load326 = load <16 x i8>, ptr %i.hc, align 1
  %i.hd = zext <16 x i8> %wide.load326 to <16 x i16>
  %i.he = sub nsw i64 %i.ha, %i.gq
  %i.hf = getelementptr inbounds i8, ptr %i.m, i64 %i.he
  %wide.load327 = load <16 x i8>, ptr %i.hf, align 1
  %i.hg = zext <16 x i8> %wide.load327 to <16 x i16>
  %i.hh = add nuw nsw <16 x i16> %i.hg, %i.hd
  %i.hi = lshr <16 x i16> %i.hh, splat (i16 1)
  %i.hj = trunc nuw <16 x i16> %i.hi to <16 x i8>
  %i.hk = sub <16 x i8> %wide.load325, %i.hj
  %i.hl = getelementptr inbounds i8, ptr %7, i64 %i.ha
  store <16 x i8> %i.hk, ptr %i.hl, align 1
  %index.next328 = add nuw i64 %index324, 16      ; 2 uses
  %i.hm = icmp eq i64 %index.next328, %n.vec322
  br i1 %i.hm, label %middle.block329, label %vector.body323, !llvm.loop !74

middle.block329:                                  ; preds = %vector.body323
  %cmp.n330 = icmp eq i64 %i.gr, %n.vec322
  br i1 %cmp.n330, label %.loopexit, label %vec.epilog.iter.check334

vec.epilog.iter.check334:                         ; preds = %middle.block329
  %min.epilog.iters.check335 = icmp eq i64 %i.gy, 0
  br i1 %min.epilog.iters.check335, label %.lr.ph169.preheader, label %vec.epilog.ph336, !prof !13

vec.epilog.ph336:                                 ; preds = %vector.main.loop.iter.check319, %vec.epilog.iter.check334
  %vec.epilog.resume.val331 = phi i64 [ %n.vec322, %vec.epilog.iter.check334 ], [ 0, %vector.main.loop.iter.check319 ]
  %n.vec337 = and i64 %i.gr, -4                   ; 3 uses
  %i.hn = add nsw i64 %n.vec337, %i.gp
  br label %vec.epilog.vector.body338

vec.epilog.vector.body338:                        ; preds = %vec.epilog.vector.body338, %vec.epilog.ph336
  %index339 = phi i64 [ %vec.epilog.resume.val331, %vec.epilog.ph336 ], [ %index.next343, %vec.epilog.vector.body338 ] ; 3 uses
  %i.ho = add i64 %index339, %i.gp                ; 3 uses
  %i.hp = getelementptr inbounds i8, ptr %i.m, i64 %i.ho
  %wide.load340 = load <4 x i8>, ptr %i.hp, align 1
  %i.hq = getelementptr inbounds i8, ptr %i.m, i64 %index339
  %wide.load341 = load <4 x i8>, ptr %i.hq, align 1
  %i.hr = zext <4 x i8> %wide.load341 to <4 x i16>
  %i.hs = sub nsw i64 %i.ho, %i.gq
  %i.ht = getelementptr inbounds i8, ptr %i.m, i64 %i.hs
  %wide.load342 = load <4 x i8>, ptr %i.ht, align 1
  %i.hu = zext <4 x i8> %wide.load342 to <4 x i16>
  %i.hv = add nuw nsw <4 x i16> %i.hu, %i.hr
  %i.hw = lshr <4 x i16> %i.hv, splat (i16 1)
  %i.hx = trunc nuw <4 x i16> %i.hw to <4 x i8>
  %i.hy = sub <4 x i8> %wide.load340, %i.hx
  %i.hz = getelementptr inbounds i8, ptr %7, i64 %i.ho
  store <4 x i8> %i.hy, ptr %i.hz, align 1
  %index.next343 = add nuw i64 %index339, 4       ; 2 uses
  %i.ia = icmp eq i64 %index.next343, %n.vec337
  br i1 %i.ia, label %vec.epilog.middle.block344, label %vec.epilog.vector.body338, !llvm.loop !75

vec.epilog.middle.block344:                       ; preds = %vec.epilog.vector.body338
  %cmp.n345 = icmp eq i64 %i.gr, %n.vec337
  br i1 %cmp.n345, label %.loopexit, label %.lr.ph169.preheader

.lr.ph169.preheader:                              ; preds = %iter.check332, %vector.memcheck312, %vec.epilog.iter.check334, %vec.epilog.middle.block344
  %indvars.iv195.ph = phi i64 [ %i.gp, %iter.check332 ], [ %i.gp, %vector.memcheck312 ], [ %i.gz, %vec.epilog.iter.check334 ], [ %i.hn, %vec.epilog.middle.block344 ] ; 8 uses
  %i.ib = sub nsw i64 %wide.trip.count198, %indvars.iv195.ph
  %xtraiter420 = and i64 %i.ib, 1
  %lcmp.mod421.not = icmp eq i64 %xtraiter420, 0
  br i1 %lcmp.mod421.not, label %.lr.ph169.prol.loopexit, label %.lr.ph169.prol

.lr.ph169.prol:                                   ; preds = %.lr.ph169.preheader
  %i.ic = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv195.ph
  %i.id = load i8, ptr %i.ic, align 1
  %i.ie = sub nsw i64 %indvars.iv195.ph, %i.gp
  %i.if = getelementptr inbounds i8, ptr %i.m, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1
  %i.ih = zext i8 %i.ig to i16
  %i.ii = sub nsw i64 %indvars.iv195.ph, %i.gq
  %i.ij = getelementptr inbounds i8, ptr %i.m, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1
  %i.il = zext i8 %i.ik to i16
  %i.im = add nuw nsw i16 %i.il, %i.ih
  %i.in = lshr i16 %i.im, 1
  %i.io = trunc nuw i16 %i.in to i8
  %i.ip = sub i8 %i.id, %i.io
  %i.iq = getelementptr inbounds i8, ptr %7, i64 %indvars.iv195.ph
  store i8 %i.ip, ptr %i.iq, align 1
  %indvars.iv.next196.prol = add nsw i64 %indvars.iv195.ph, 1
  br label %.lr.ph169.prol.loopexit

.lr.ph169.prol.loopexit:                          ; preds = %.lr.ph169.prol, %.lr.ph169.preheader
  %indvars.iv195.unr = phi i64 [ %indvars.iv195.ph, %.lr.ph169.preheader ], [ %indvars.iv.next196.prol, %.lr.ph169.prol ]
  %i.ir = add nsw i64 %wide.trip.count198, -1
  %i.is = icmp eq i64 %indvars.iv195.ph, %i.ir
  br i1 %i.is, label %.loopexit, label %.lr.ph169

.preheader150:                                    ; preds = %._crit_edge
  %i.it = mul nsw i32 %5, %2                      ; 2 uses
  %i.iu = icmp slt i32 %5, %i.it
  br i1 %i.iu, label %iter.check366, label %.loopexit

iter.check366:                                    ; preds = %.preheader150
  %i.iv = sext i32 %5 to i64                      ; 7 uses
  %i.iw = sext i32 %i.o to i64                    ; 6 uses
  %wide.trip.count203 = sext i32 %i.it to i64     ; 4 uses
  %i.ix = sub nsw i64 %wide.trip.count203, %i.iv  ; 7 uses
  %min.iters.check351 = icmp ult i64 %i.ix, 8
  br i1 %min.iters.check351, label %.lr.ph171.preheader, label %vector.memcheck347

vector.memcheck347:                               ; preds = %iter.check366
  %i.iy = add i64 %i.b, %i.l                      ; 2 uses
  %i.iz = add i64 %i.a, %i.iw
  %i.ja = sub i64 %i.iy, %i.iz
  %diff.check348 = icmp ugt i64 %i.ja, -32
  %i.jb = sub i64 %i.iy, %i.a
  %diff.check349 = icmp ugt i64 %i.jb, -32
  %conflict.rdx350 = or i1 %diff.check348, %diff.check349
  br i1 %conflict.rdx350, label %.lr.ph171.preheader, label %vector.main.loop.iter.check352

vector.main.loop.iter.check352:                   ; preds = %vector.memcheck347
  %min.iters.check353 = icmp ult i64 %i.ix, 32
  br i1 %min.iters.check353, label %vec.epilog.ph370, label %vector.ph354

vector.ph354:                                     ; preds = %vector.main.loop.iter.check352
  %i.jc = and i64 %i.ix, 24
  %n.vec355 = and i64 %i.ix, -32                  ; 4 uses
  %i.jd = add nsw i64 %n.vec355, %i.iv
  br label %vector.body356

vector.body356:                                   ; preds = %vector.ph354, %vector.body356
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next362, %vector.body356 ] ; 2 uses
  %i.je = add i64 %index357, %i.iv                ; 3 uses
  %i.jf = getelementptr inbounds i8, ptr %i.m, i64 %i.je ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 16
  %wide.load358 = load <16 x i8>, ptr %i.jf, align 1
  %wide.load359 = load <16 x i8>, ptr %i.jg, align 1
  %i.jh = sub nsw i64 %i.je, %i.iw
  %i.ji = getelementptr inbounds i8, ptr %i.m, i64 %i.jh ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %wide.load360 = load <16 x i8>, ptr %i.ji, align 1
  %wide.load361 = load <16 x i8>, ptr %i.jj, align 1
  %i.jk = sub <16 x i8> %wide.load358, %wide.load360
  %i.jl = sub <16 x i8> %wide.load359, %wide.load361
  %i.jm = getelementptr inbounds i8, ptr %7, i64 %i.je ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  store <16 x i8> %i.jk, ptr %i.jm, align 1
  store <16 x i8> %i.jl, ptr %i.jn, align 1
  %index.next362 = add nuw i64 %index357, 32      ; 2 uses
  %i.jo = icmp eq i64 %index.next362, %n.vec355
  br i1 %i.jo, label %middle.block363, label %vector.body356, !llvm.loop !76

middle.block363:                                  ; preds = %vector.body356
  %cmp.n364 = icmp eq i64 %i.ix, %n.vec355
  br i1 %cmp.n364, label %.loopexit, label %vec.epilog.iter.check368

vec.epilog.iter.check368:                         ; preds = %middle.block363
  %min.epilog.iters.check369 = icmp eq i64 %i.jc, 0
  br i1 %min.epilog.iters.check369, label %.lr.ph171.preheader, label %vec.epilog.ph370, !prof !17

vec.epilog.ph370:                                 ; preds = %vector.main.loop.iter.check352, %vec.epilog.iter.check368
  %vec.epilog.resume.val365 = phi i64 [ %n.vec355, %vec.epilog.iter.check368 ], [ 0, %vector.main.loop.iter.check352 ]
  %n.vec371 = and i64 %i.ix, -8                   ; 3 uses
  %i.jp = add nsw i64 %n.vec371, %i.iv
  br label %vec.epilog.vector.body372

vec.epilog.vector.body372:                        ; preds = %vec.epilog.vector.body372, %vec.epilog.ph370
  %index373 = phi i64 [ %vec.epilog.resume.val365, %vec.epilog.ph370 ], [ %index.next376, %vec.epilog.vector.body372 ] ; 2 uses
  %i.jq = add i64 %index373, %i.iv                ; 3 uses
  %i.jr = getelementptr inbounds i8, ptr %i.m, i64 %i.jq
  %wide.load374 = load <8 x i8>, ptr %i.jr, align 1
  %i.js = sub nsw i64 %i.jq, %i.iw
  %i.jt = getelementptr inbounds i8, ptr %i.m, i64 %i.js
  %wide.load375 = load <8 x i8>, ptr %i.jt, align 1
  %i.ju = sub <8 x i8> %wide.load374, %wide.load375
  %i.jv = getelementptr inbounds i8, ptr %7, i64 %i.jq
  store <8 x i8> %i.ju, ptr %i.jv, align 1
  %index.next376 = add nuw i64 %index373, 8       ; 2 uses
  %i.jw = icmp eq i64 %index.next376, %n.vec371
  br i1 %i.jw, label %vec.epilog.middle.block377, label %vec.epilog.vector.body372, !llvm.loop !77

vec.epilog.middle.block377:                       ; preds = %vec.epilog.vector.body372
  %cmp.n378 = icmp eq i64 %i.ix, %n.vec371
  br i1 %cmp.n378, label %.loopexit, label %.lr.ph171.preheader

.lr.ph171.preheader:                              ; preds = %iter.check366, %vector.memcheck347, %vec.epilog.iter.check368, %vec.epilog.middle.block377
  %indvars.iv200.ph = phi i64 [ %i.iv, %iter.check366 ], [ %i.iv, %vector.memcheck347 ], [ %i.jd, %vec.epilog.iter.check368 ], [ %i.jp, %vec.epilog.middle.block377 ] ; 7 uses
  %i.jx = sub nsw i64 %wide.trip.count203, %indvars.iv200.ph
  %xtraiter422 = and i64 %i.jx, 1
  %lcmp.mod423.not = icmp eq i64 %xtraiter422, 0
  br i1 %lcmp.mod423.not, label %.lr.ph171.prol.loopexit, label %.lr.ph171.prol

.lr.ph171.prol:                                   ; preds = %.lr.ph171.preheader
  %i.jy = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv200.ph
  %i.jz = load i8, ptr %i.jy, align 1
  %i.ka = sub nsw i64 %indvars.iv200.ph, %i.iw
  %i.kb = getelementptr inbounds i8, ptr %i.m, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1
  %i.kd = sub i8 %i.jz, %i.kc
  %i.ke = getelementptr inbounds i8, ptr %7, i64 %indvars.iv200.ph
  store i8 %i.kd, ptr %i.ke, align 1
  %indvars.iv.next201.prol = add nsw i64 %indvars.iv200.ph, 1
  br label %.lr.ph171.prol.loopexit

.lr.ph171.prol.loopexit:                          ; preds = %.lr.ph171.prol, %.lr.ph171.preheader
  %indvars.iv200.unr = phi i64 [ %indvars.iv200.ph, %.lr.ph171.preheader ], [ %indvars.iv.next201.prol, %.lr.ph171.prol ]
  %i.kf = add nsw i64 %wide.trip.count203, -1
  %i.kg = icmp eq i64 %indvars.iv200.ph, %i.kf
  br i1 %i.kg, label %.loopexit, label %.lr.ph171

.preheader:                                       ; preds = %._crit_edge
  %i.kh = mul nsw i32 %5, %2                      ; 2 uses
  %i.ki = icmp slt i32 %5, %i.kh
  br i1 %i.ki, label %iter.check399, label %.loopexit

iter.check399:                                    ; preds = %.preheader
  %i.kj = sext i32 %5 to i64                      ; 11 uses
  %wide.trip.count208 = sext i32 %i.kh to i64     ; 4 uses
  %i.kk = sub nsw i64 %wide.trip.count208, %i.kj  ; 7 uses
  %min.iters.check384 = icmp ult i64 %i.kk, 8
  br i1 %min.iters.check384, label %.lr.ph173.preheader, label %vector.memcheck380

vector.memcheck380:                               ; preds = %iter.check399
  %i.kl = add i64 %i.b, %i.l                      ; 2 uses
  %i.km = add i64 %i.a, %i.kj
  %i.kn = sub i64 %i.kl, %i.km
  %diff.check381 = icmp ugt i64 %i.kn, -32
  %i.ko = sub i64 %i.kl, %i.a
  %diff.check382 = icmp ugt i64 %i.ko, -32
  %conflict.rdx383 = or i1 %diff.check381, %diff.check382
  br i1 %conflict.rdx383, label %.lr.ph173.preheader, label %vector.main.loop.iter.check385

vector.main.loop.iter.check385:                   ; preds = %vector.memcheck380
  %min.iters.check386 = icmp ult i64 %i.kk, 32
  br i1 %min.iters.check386, label %vec.epilog.ph403, label %vector.ph387

vector.ph387:                                     ; preds = %vector.main.loop.iter.check385
  %i.kp = and i64 %i.kk, 24
  %n.vec388 = and i64 %i.kk, -32                  ; 4 uses
  %i.kq = add nsw i64 %n.vec388, %i.kj
  br label %vector.body389

vector.body389:                                   ; preds = %vector.ph387, %vector.body389
  %index390 = phi i64 [ 0, %vector.ph387 ], [ %index.next395, %vector.body389 ] ; 3 uses
  %i.kr = add i64 %index390, %i.kj                ; 2 uses
  %i.ks = getelementptr inbounds i8, ptr %i.m, i64 %i.kr ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 16
  %wide.load391 = load <16 x i8>, ptr %i.ks, align 1
  %wide.load392 = load <16 x i8>, ptr %i.kt, align 1
  %i.ku = getelementptr inbounds i8, ptr %i.m, i64 %index390 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %wide.load393 = load <16 x i8>, ptr %i.ku, align 1
  %wide.load394 = load <16 x i8>, ptr %i.kv, align 1
  %i.kw = sub <16 x i8> %wide.load391, %wide.load393
  %i.kx = sub <16 x i8> %wide.load392, %wide.load394
  %i.ky = getelementptr inbounds i8, ptr %7, i64 %i.kr ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 16
  store <16 x i8> %i.kw, ptr %i.ky, align 1
  store <16 x i8> %i.kx, ptr %i.kz, align 1
  %index.next395 = add nuw i64 %index390, 32      ; 2 uses
  %i.la = icmp eq i64 %index.next395, %n.vec388
  br i1 %i.la, label %middle.block396, label %vector.body389, !llvm.loop !78

middle.block396:                                  ; preds = %vector.body389
  %cmp.n397 = icmp eq i64 %i.kk, %n.vec388
  br i1 %cmp.n397, label %.loopexit, label %vec.epilog.iter.check401

vec.epilog.iter.check401:                         ; preds = %middle.block396
  %min.epilog.iters.check402 = icmp eq i64 %i.kp, 0
  br i1 %min.epilog.iters.check402, label %.lr.ph173.preheader, label %vec.epilog.ph403, !prof !17

vec.epilog.ph403:                                 ; preds = %vector.main.loop.iter.check385, %vec.epilog.iter.check401
  %vec.epilog.resume.val398 = phi i64 [ %n.vec388, %vec.epilog.iter.check401 ], [ 0, %vector.main.loop.iter.check385 ]
  %n.vec404 = and i64 %i.kk, -8                   ; 3 uses
  %i.lb = add nsw i64 %n.vec404, %i.kj
  br label %vec.epilog.vector.body405

vec.epilog.vector.body405:                        ; preds = %vec.epilog.vector.body405, %vec.epilog.ph403
  %index406 = phi i64 [ %vec.epilog.resume.val398, %vec.epilog.ph403 ], [ %index.next409, %vec.epilog.vector.body405 ] ; 3 uses
  %i.lc = add i64 %index406, %i.kj                ; 2 uses
  %i.ld = getelementptr inbounds i8, ptr %i.m, i64 %i.lc
  %wide.load407 = load <8 x i8>, ptr %i.ld, align 1
  %i.le = getelementptr inbounds i8, ptr %i.m, i64 %index406
  %wide.load408 = load <8 x i8>, ptr %i.le, align 1
  %i.lf = sub <8 x i8> %wide.load407, %wide.load408
  %i.lg = getelementptr inbounds i8, ptr %7, i64 %i.lc
  store <8 x i8> %i.lf, ptr %i.lg, align 1
  %index.next409 = add nuw i64 %index406, 8       ; 2 uses
  %i.lh = icmp eq i64 %index.next409, %n.vec404
  br i1 %i.lh, label %vec.epilog.middle.block410, label %vec.epilog.vector.body405, !llvm.loop !79

vec.epilog.middle.block410:                       ; preds = %vec.epilog.vector.body405
  %cmp.n411 = icmp eq i64 %i.kk, %n.vec404
  br i1 %cmp.n411, label %.loopexit, label %.lr.ph173.preheader

.lr.ph173.preheader:                              ; preds = %iter.check399, %vector.memcheck380, %vec.epilog.iter.check401, %vec.epilog.middle.block410
  %indvars.iv205.ph = phi i64 [ %i.kj, %iter.check399 ], [ %i.kj, %vector.memcheck380 ], [ %i.kq, %vec.epilog.iter.check401 ], [ %i.lb, %vec.epilog.middle.block410 ] ; 7 uses
  %i.li = sub nsw i64 %wide.trip.count208, %indvars.iv205.ph
  %xtraiter424 = and i64 %i.li, 1
  %lcmp.mod425.not = icmp eq i64 %xtraiter424, 0
  br i1 %lcmp.mod425.not, label %.lr.ph173.prol.loopexit, label %.lr.ph173.prol

.lr.ph173.prol:                                   ; preds = %.lr.ph173.preheader
  %i.lj = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv205.ph
  %i.lk = load i8, ptr %i.lj, align 1
  %i.ll = sub nsw i64 %indvars.iv205.ph, %i.kj
  %i.lm = getelementptr inbounds i8, ptr %i.m, i64 %i.ll
  %i.ln = load i8, ptr %i.lm, align 1
  %i.lo = sub i8 %i.lk, %i.ln
  %i.lp = getelementptr inbounds i8, ptr %7, i64 %indvars.iv205.ph
  store i8 %i.lo, ptr %i.lp, align 1
  %indvars.iv.next206.prol = add nsw i64 %indvars.iv205.ph, 1
  br label %.lr.ph173.prol.loopexit

.lr.ph173.prol.loopexit:                          ; preds = %.lr.ph173.prol, %.lr.ph173.preheader
  %indvars.iv205.unr = phi i64 [ %indvars.iv205.ph, %.lr.ph173.preheader ], [ %indvars.iv.next206.prol, %.lr.ph173.prol ]
  %i.lq = add nsw i64 %wide.trip.count208, -1
  %i.lr = icmp eq i64 %indvars.iv205.ph, %i.lq
  br i1 %i.lr, label %.loopexit, label %.lr.ph173

.lr.ph173:                                        ; preds = %.lr.ph173.prol.loopexit, %.lr.ph173
  %indvars.iv205 = phi i64 [ %indvars.iv.next206.1, %.lr.ph173 ], [ %indvars.iv205.unr, %.lr.ph173.prol.loopexit ] ; 5 uses
  %i.ls = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv205
  %i.lt = load i8, ptr %i.ls, align 1
  %i.lu = sub nsw i64 %indvars.iv205, %i.kj
  %i.lv = getelementptr inbounds i8, ptr %i.m, i64 %i.lu
  %i.lw = load i8, ptr %i.lv, align 1
  %i.lx = sub i8 %i.lt, %i.lw
  %i.ly = getelementptr inbounds i8, ptr %7, i64 %indvars.iv205
  store i8 %i.lx, ptr %i.ly, align 1
  %indvars.iv.next206 = add nsw i64 %indvars.iv205, 1 ; 3 uses
  %i.lz = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv.next206
  %i.ma = load i8, ptr %i.lz, align 1
  %i.mb = sub nsw i64 %indvars.iv.next206, %i.kj
  %i.mc = getelementptr inbounds i8, ptr %i.m, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1
  %i.me = sub i8 %i.ma, %i.md
  %i.mf = getelementptr inbounds i8, ptr %7, i64 %indvars.iv.next206
  store i8 %i.me, ptr %i.mf, align 1
  %indvars.iv.next206.1 = add nsw i64 %indvars.iv205, 2 ; 2 uses
  %exitcond209.not.1 = icmp eq i64 %indvars.iv.next206.1, %wide.trip.count208
  br i1 %exitcond209.not.1, label %.loopexit, label %.lr.ph173, !llvm.loop !80

.lr.ph171:                                        ; preds = %.lr.ph171.prol.loopexit, %.lr.ph171
  %indvars.iv200 = phi i64 [ %indvars.iv.next201.1, %.lr.ph171 ], [ %indvars.iv200.unr, %.lr.ph171.prol.loopexit ] ; 5 uses
  %i.mg = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv200
  %i.mh = load i8, ptr %i.mg, align 1
  %i.mi = sub nsw i64 %indvars.iv200, %i.iw
  %i.mj = getelementptr inbounds i8, ptr %i.m, i64 %i.mi
  %i.mk = load i8, ptr %i.mj, align 1
  %i.ml = sub i8 %i.mh, %i.mk
  %i.mm = getelementptr inbounds i8, ptr %7, i64 %indvars.iv200
  store i8 %i.ml, ptr %i.mm, align 1
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, 1 ; 3 uses
  %i.mn = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv.next201
  %i.mo = load i8, ptr %i.mn, align 1
  %i.mp = sub nsw i64 %indvars.iv.next201, %i.iw
  %i.mq = getelementptr inbounds i8, ptr %i.m, i64 %i.mp
  %i.mr = load i8, ptr %i.mq, align 1
  %i.ms = sub i8 %i.mo, %i.mr
  %i.mt = getelementptr inbounds i8, ptr %7, i64 %indvars.iv.next201
  store i8 %i.ms, ptr %i.mt, align 1
  %indvars.iv.next201.1 = add nsw i64 %indvars.iv200, 2 ; 2 uses
  %exitcond204.not.1 = icmp eq i64 %indvars.iv.next201.1, %wide.trip.count203
  br i1 %exitcond204.not.1, label %.loopexit, label %.lr.ph171, !llvm.loop !81

.lr.ph169:                                        ; preds = %.lr.ph169.prol.loopexit, %.lr.ph169
  %indvars.iv195 = phi i64 [ %indvars.iv.next196.1, %.lr.ph169 ], [ %indvars.iv195.unr, %.lr.ph169.prol.loopexit ] ; 6 uses
  %i.mu = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv195
  %i.mv = load i8, ptr %i.mu, align 1
  %i.mw = sub nsw i64 %indvars.iv195, %i.gp
  %i.mx = getelementptr inbounds i8, ptr %i.m, i64 %i.mw
  %i.my = load i8, ptr %i.mx, align 1
  %i.mz = zext i8 %i.my to i16
  %i.na = sub nsw i64 %indvars.iv195, %i.gq
  %i.nb = getelementptr inbounds i8, ptr %i.m, i64 %i.na
  %i.nc = load i8, ptr %i.nb, align 1
  %i.nd = zext i8 %i.nc to i16
  %i.ne = add nuw nsw i16 %i.nd, %i.mz
  %i.nf = lshr i16 %i.ne, 1
  %i.ng = trunc nuw i16 %i.nf to i8
  %i.nh = sub i8 %i.mv, %i.ng
  %i.ni = getelementptr inbounds i8, ptr %7, i64 %indvars.iv195
  store i8 %i.nh, ptr %i.ni, align 1
  %indvars.iv.next196 = add nsw i64 %indvars.iv195, 1 ; 4 uses
  %i.nj = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv.next196
  %i.nk = load i8, ptr %i.nj, align 1
  %i.nl = sub nsw i64 %indvars.iv.next196, %i.gp
  %i.nm = getelementptr inbounds i8, ptr %i.m, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 1
  %i.no = zext i8 %i.nn to i16
  %i.np = sub nsw i64 %indvars.iv.next196, %i.gq
  %i.nq = getelementptr inbounds i8, ptr %i.m, i64 %i.np
  %i.nr = load i8, ptr %i.nq, align 1
  %i.ns = zext i8 %i.nr to i16
  %i.nt = add nuw nsw i16 %i.ns, %i.no
  %i.nu = lshr i16 %i.nt, 1
  %i.nv = trunc nuw i16 %i.nu to i8
  %i.nw = sub i8 %i.nk, %i.nv
  %i.nx = getelementptr inbounds i8, ptr %7, i64 %indvars.iv.next196
  store i8 %i.nw, ptr %i.nx, align 1
  %indvars.iv.next196.1 = add nsw i64 %indvars.iv195, 2 ; 2 uses
  %exitcond199.not.1 = icmp eq i64 %indvars.iv.next196.1, %wide.trip.count198
  br i1 %exitcond199.not.1, label %.loopexit, label %.lr.ph169, !llvm.loop !82

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %indvars.iv190 = phi i64 [ %indvars.iv.next191, %.lr.ph167 ], [ %indvars.iv190.ph, %.lr.ph167.preheader ] ; 5 uses
  %i.ny = getelementptr inbounds i8, ptr %i.m, i64 %indvars.iv190
  %i.nz = load i8, ptr %i.ny, align 1
  %i.oa = sub nsw i64 %indvars.iv190, %i.dw
  %i.ob = getelementptr inbounds i8, ptr %i.m, i64 %i.oa
  %i.oc = load i8, ptr %i.ob, align 1             ; 2 uses
  %i.od = zext i8 %i.oc to i32                    ; 2 uses
  %i.oe = sub nsw i64 %indvars.iv190, %i.dx       ; 2 uses
  %i.of = getelementptr inbounds i8, ptr %i.m, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1             ; 2 uses
  %i.oh = zext i8 %i.og to i32                    ; 2 uses
  %i.oi = sub nsw i64 %i.oe, %i.dw
  %i.oj = getelementptr inbounds i8, ptr %i.m, i64 %i.oi
  %i.ok = load i8, ptr %i.oj, align 1             ; 2 uses
  %i.ol = zext i8 %i.ok to i32                    ; 2 uses
  %i.om = add nuw nsw i32 %i.oh, %i.od
  %i.on = sub nsw i32 %i.om, %i.ol                ; 3 uses
  %i.oo = sub nsw i32 %i.on, %i.od
  %i.op = tail call i32 @llvm.abs.i32(i32 %i.oo, i1 true) ; 2 uses
  %i.oq = sub nsw i32 %i.on, %i.oh
  %i.or = tail call i32 @llvm.abs.i32(i32 %i.oq, i1 true) ; 2 uses
  %i.os = sub nsw i32 %i.on, %i.ol
end_hunk_0
