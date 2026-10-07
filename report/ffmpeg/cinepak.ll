Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cinepak?download=true
inline.NumInlined: 5
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@cinepak_decode_frame:bb.a
  store i8 %i.jl, ptr %i.jn, align 1, !tbaa !49
  %i.jo = getelementptr inbounds nuw i8, ptr %.1184261.i.i, i64 3
  store i8 %i.jl, ptr %i.jo, align 1, !tbaa !49
  %i.jp = getelementptr inbounds nuw i8, ptr %.1184261.i.i, i64 2
  store i8 %i.jl, ptr %i.jp, align 1, !tbaa !49
  %i.jq = load i8, ptr %i.jf, align 1, !tbaa !49  ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0192258.i.i, i64 1
  store i8 %i.jq, ptr %i.jr, align 1, !tbaa !49
  store i8 %i.jq, ptr %.0192258.i.i, align 1, !tbaa !49
  %i.js = getelementptr inbounds nuw i8, ptr %.1190259.i.i, i64 1
  store i8 %i.jq, ptr %i.js, align 1, !tbaa !49
  store i8 %i.jq, ptr %.1190259.i.i, align 1, !tbaa !49
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jf, i64 3
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !49  ; 4 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.0192258.i.i, i64 3
  store i8 %i.ju, ptr %i.jv, align 1, !tbaa !49
  %i.jw = getelementptr inbounds nuw i8, ptr %.0192258.i.i, i64 2
  store i8 %i.ju, ptr %i.jw, align 1, !tbaa !49
  %i.jx = getelementptr inbounds nuw i8, ptr %.1190259.i.i, i64 3
  store i8 %i.ju, ptr %i.jx, align 1, !tbaa !49
  %i.jy = getelementptr inbounds nuw i8, ptr %.1190259.i.i, i64 2
  store i8 %i.ju, ptr %i.jy, align 1, !tbaa !49
  br label %.thread248.i.i

bb.be:                                            ; preds = %bb.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.1184261.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.jg, i64 3, i1 false)
  %i.jz = getelementptr inbounds nuw i8, ptr %.1184261.i.i, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.jz, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.jg, i64 3, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.1187260.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.jg, i64 3, i1 false)
  %i.ka = getelementptr inbounds nuw i8, ptr %.1187260.i.i, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ka, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.jg, i64 3, i1 false)
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jf, i64 9 ; 4 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.1184261.i.i, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kc, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.kb, i64 3, i1 false)
  %i.kd = getelementptr inbounds nuw i8, ptr %.1184261.i.i, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kd, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.kb, i64 3, i1 false)
  %i.ke = getelementptr inbounds nuw i8, ptr %.1187260.i.i, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ke, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.kb, i64 3, i1 false)
  %i.kf = getelementptr inbounds nuw i8, ptr %.1187260.i.i, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kf, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.kb, i64 3, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.1190259.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.jf, i64 3, i1 false)
  %i.kg = getelementptr inbounds nuw i8, ptr %.1190259.i.i, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kg, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.jf, i64 3, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.0192258.i.i, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.jf, i64 3, i1 false)
  %i.kh = getelementptr inbounds nuw i8, ptr %.0192258.i.i, i64 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kh, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.jf, i64 3, i1 false)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jf, i64 3 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.1190259.i.i, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kj, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ki, i64 3, i1 false)
  %i.kk = getelementptr inbounds nuw i8, ptr %.1190259.i.i, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kk, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ki, i64 3, i1 false)
  %i.kl = getelementptr inbounds nuw i8, ptr %.0192258.i.i, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.kl, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ki, i64 3, i1 false)
  %i.km = getelementptr inbounds nuw i8, ptr %.0192258.i.i, i64 9
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.km, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.ki, i64 3, i1 false)
  br label %.thread248.i.i

bb.bf:                                            ; preds = %bb.ba
  %i.kn = and i32 %.3199.ph.i.i, %.3204.ph.i.i
  %.not223.i.i = icmp eq i32 %i.kn, 0
  br i1 %.not223.i.i, label %.thread248.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ko = getelementptr inbounds nuw i8, ptr %.3209.ph.i.i, i64 4 ; 3 uses
  %i.kp = icmp ugt ptr %i.ko, %i.hg
  br i1 %i.kp, label %.loopexit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kq = getelementptr inbounds nuw i8, ptr %.3209.ph.i.i, i64 1
  %i.kr = load i8, ptr %.3209.ph.i.i, align 1, !tbaa !49
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [12 x i8], ptr %i.gf, i64 %i.ks ; 6 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.3209.ph.i.i, i64 2
  %i.kv = load i8, ptr %i.kq, align 1, !tbaa !49
  %i.kw = zext i8 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [12 x i8], ptr %i.gf, i64 %i.kw ; 6 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.3209.ph.i.i, i64 3
  %i.kz = load i8, ptr %i.ku, align 1, !tbaa !49
  %i.la = zext i8 %i.kz to i64
  %i.lb = getelementptr inbounds nuw [12 x i8], ptr %i.gf, i64 %i.la ; 5 uses
  %i.lc = load i8, ptr %i.ky, align 1, !tbaa !49
  %i.ld = zext i8 %i.lc to i64
  %i.le = getelementptr inbounds nuw [12 x i8], ptr %i.gf, i64 %i.ld ; 6 uses
  %.not224.i.i = icmp eq i32 %i.io, 0
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 6 ; 2 uses
  br i1 %.not224.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !49
  %i.lh = getelementptr inbounds nuw i8, ptr %.1184261.i.i, i64 1
  store i8 %i.lg, ptr %.1184261.i.i, align 1, !tbaa !49
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 9
  %i.lj = load i8, ptr %i.li, align 1, !tbaa !49
  %i.lk = getelementptr inbounds nuw i8, ptr %.1184261.i.i, i64 2
  store i8 %i.lj, ptr %i.lh, align 1, !tbaa !49
  %i.ll = getelementptr inbounds nuw i8, ptr %i.le, i64 6
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !49
  %i.ln = getelementptr inbounds nuw i8, ptr %.1184261.i.i, i64 3
  store i8 %i.lm, ptr %i.lk, align 1, !tbaa !49
  %i.lo = getelementptr inbounds nuw i8, ptr %i.le, i64 9
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !49
  store i8 %i.lp, ptr %i.ln, align 1, !tbaa !49
  %i.lq = load i8, ptr %i.lb, align 1, !tbaa !49
  %i.lr = getelementptr inbounds nuw i8, ptr %.1187260.i.i, i64 1
  store i8 %i.lq, ptr %.1187260.i.i, align 1, !tbaa !49
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lb, i64 3
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !49
  %i.lu = getelementptr inbounds nuw i8, ptr %.1187260.i.i, i64 2
  store i8 %i.lt, ptr %i.lr, align 1, !tbaa !49
  %i.lv = load i8, ptr %i.le, align 1, !tbaa !49
  %i.lw = getelementptr inbounds nuw i8, ptr %.1187260.i.i, i64 3
  store i8 %i.lv, ptr %i.lu, align 1, !tbaa !49
  %i.lx = getelementptr inbounds nuw i8, ptr %i.le, i64 3
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !49
  store i8 %i.ly, ptr %i.lw, align 1, !tbaa !49
  %i.lz = getelementptr inbounds nuw i8, ptr %i.kt, i64 6
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !49
  %i.mb = getelementptr inbounds nuw i8, ptr %.1190259.i.i, i64 1
  store i8 %i.ma, ptr %.1190259.i.i, align 1, !tbaa !49
  %i.mc = getelementptr inbounds nuw i8, ptr %i.kt, i64 9
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !49
  %i.me = getelementptr inbounds nuw i8, ptr %.1190259.i.i, i64 2
  store i8 %i.md, ptr %i.mb, align 1, !tbaa !49
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kx, i64 6
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !49
  %i.mh = getelementptr inbounds nuw i8, ptr %.1190259.i.i, i64 3
  store i8 %i.mg, ptr %i.me, align 1, !tbaa !49
  %i.mi = getelementptr inbounds nuw i8, ptr %i.kx, i64 9
  %i.mj = load i8, ptr %i.mi, align 1, !tbaa !49
  store i8 %i.mj, ptr %i.mh, align 1, !tbaa !49
  %i.mk = load i8, ptr %i.kt, align 1, !tbaa !49
  %i.ml = getelementptr inbounds nuw i8, ptr %.0192258.i.i, i64 1
  store i8 %i.mk, ptr %.0192258.i.i, align 1, !tbaa !49
  %i.mm = getelementptr inbounds nuw i8, ptr %i.kt, i64 3
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !49
  %i.mo = getelementptr inbounds nuw i8, ptr %.0192258.i.i, i64 2
  store i8 %i.mn, ptr %i.ml, align 1, !tbaa !49
  %i.mp = load i8, ptr %i.kx, align 1, !tbaa !49
  %i.mq = getelementptr inbounds nuw i8, ptr %.0192258.i.i, i64 3
  store i8 %i.mp, ptr %i.mo, align 1, !tbaa !49
  %i.mr = getelementptr inbounds nuw i8, ptr %i.kx, i64 3
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !49
  store i8 %i.ms, ptr %i.mq, align 1, !tbaa !49
  br label %.thread248.i.i

bb.bj:                                            ; preds = %bb.bh
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1184261.i.i, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.lf, i64 6, i1 false)
  %i.mt = getelementptr inbounds nuw i8, ptr %.1184261.i.i, i64 6
  %i.mu = getelementptr inbounds nuw i8, ptr %i.le, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.mt, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.mu, i64 6, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1187260.i.i, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.lb, i64 6, i1 false)
  %i.mv = getelementptr inbounds nuw i8, ptr %.1187260.i.i, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.mv, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.le, i64 6, i1 false)
  %i.mw = getelementptr inbounds nuw i8, ptr %i.kt, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.1190259.i.i, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.mw, i64 6, i1 false)
  %i.mx = getelementptr inbounds nuw i8, ptr %.1190259.i.i, i64 6
  %i.my = getelementptr inbounds nuw i8, ptr %i.kx, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.mx, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.my, i64 6, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.0192258.i.i, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.kt, i64 6, i1 false)
  %i.mz = getelementptr inbounds nuw i8, ptr %.0192258.i.i, i64 6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.mz, ptr noundef nonnull readonly align 1 dereferenceable(6) %i.kx, i64 6, i1 false)
  br label %.thread248.i.i

.thread248.i.i:                                   ; preds = %bb.bj, %bb.bi, %bb.bf, %bb.be, %bb.bd, %bb.aw
  %.5.i.i = phi ptr [ %.2208.i.i, %bb.aw ], [ %i.ko, %bb.bi ], [ %i.ko, %bb.bj ], [ %.3209.ph.i.i, %bb.bf ], [ %i.jc, %bb.bd ], [ %i.jc, %bb.be ] ; 2 uses
  %.4205.i.i = phi i32 [ %.2203.i.i, %bb.aw ], [ %.3204.ph.i.i, %bb.bi ], [ %.3204.ph.i.i, %bb.bj ], [ %.3204.ph.i.i, %bb.bf ], [ %.3204244.i.i, %bb.bd ], [ %.3204244.i.i, %bb.be ] ; 2 uses
  %.4200.i.i = phi i32 [ %.2198.i.i, %bb.aw ], [ %.3199.ph.i.i, %bb.bi ], [ %.3199.ph.i.i, %bb.bj ], [ %.3199.ph.i.i, %bb.bf ], [ %.3199246.i.i, %bb.bd ], [ %.3199246.i.i, %bb.be ] ; 2 uses
  %i.na = load i32, ptr %i.cn, align 4, !tbaa !35 ; 3 uses
  %.not227.i.i = icmp eq i32 %i.na, 0
  %..i.i = select i1 %.not227.i.i, i64 12, i64 4  ; 4 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %.0192258.i.i, i64 %..i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %.1190259.i.i, i64 %..i.i
  %i.nd = getelementptr inbounds nuw i8, ptr %.1187260.i.i, i64 %..i.i
  %i.ne = getelementptr inbounds nuw i8, ptr %.1184261.i.i, i64 %..i.i
  %i.nf = add nuw nsw i32 %.0195257.i.i, 4        ; 2 uses
  %i.ng = load i16, ptr %i.eo, align 2, !tbaa !62
  %i.nh = zext i16 %i.ng to i32
  %i.ni = icmp samesign ult i32 %i.nf, %i.nh
  br i1 %i.ni, label %.lr.ph.i80.i, label %._crit_edge.loopexit.i.i, !llvm.loop !39

._crit_edge.loopexit.i.i:                         ; preds = %.thread248.i.i
  %.pre271.i.i = load i16, ptr %i.eg, align 2, !tbaa !60
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.as
  %i.nj = phi i16 [ %i.hn, %bb.as ], [ %.pre271.i.i, %._crit_edge.loopexit.i.i ] ; 3 uses
  %i.nk = phi i32 [ %i.ho, %bb.as ], [ %i.na, %._crit_edge.loopexit.i.i ]
  %.1207.lcssa.i.i = phi ptr [ %.0206264.i.i, %bb.as ], [ %.5.i.i, %._crit_edge.loopexit.i.i ]
  %.1202.lcssa.i.i = phi i32 [ %.0201265.i.i, %bb.as ], [ %.4205.i.i, %._crit_edge.loopexit.i.i ]
  %.1197.lcssa.i.i = phi i32 [ %.0196266.i.i, %bb.as ], [ %.4200.i.i, %._crit_edge.loopexit.i.i ]
  %i.nl = add nuw nsw i32 %.0194267.i.i, 4        ; 2 uses
  %i.nm = zext i16 %i.nj to i32
  %i.nn = icmp samesign ult i32 %i.nl, %i.nm
  br i1 %i.nn, label %bb.ap, label %cinepak_decode_strip.exit.i, !llvm.loop !40

.sink.split.i.i:                                  ; preds = %bb.an, %bb.am, %bb.am, %bb.am, %bb.am
  %.sink.i.i = phi ptr [ %i.ge, %bb.an ], [ %i.gf, %bb.am ], [ %i.gf, %bb.am ], [ %i.gf, %bb.am ], [ %i.gf, %bb.am ] ; 3 uses
  %i.no = sext i32 %i.he to i64                   ; 10 uses
  %i.np = getelementptr inbounds i8, ptr %i.gg, i64 %i.no ; 6 uses
  %i.nq = and i32 %i.gi, 4
  %.not.i78.i = icmp eq i32 %i.nq, 0              ; 2 uses
  %4 = select i1 %.not.i78.i, i64 6, i64 4        ; 4 uses
  %i.nr = and i32 %i.gi, 1
  %.not63.i.i = icmp eq i32 %i.nr, 0              ; 2 uses
  br i1 %.not.i78.i, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %.sink.split.i.i, %.thread81.us.i.i
  %.048100.us.i.i = phi ptr [ %.6.us.i.i, %.thread81.us.i.i ], [ %.sink.i.i, %.sink.split.i.i ] ; 14 uses
  %.05099.us.i.i = phi i32 [ %i.qa, %.thread81.us.i.i ], [ 0, %.sink.split.i.i ]
  %.05198.us.i.i = phi i32 [ %.15279.us.i.i, %.thread81.us.i.i ], [ 0, %.sink.split.i.i ] ; 2 uses
  %.05397.us.i.i = phi i32 [ %.15477.us.i.i, %.thread81.us.i.i ], [ 0, %.sink.split.i.i ] ; 2 uses
  %.05596.us.i.i = phi ptr [ %.560.us.i.i, %.thread81.us.i.i ], [ %i.gg, %.sink.split.i.i ] ; 4 uses
  br i1 %.not63.i.i, label %.thread.us.i.i, label %bb.bk

bb.bk:                                            ; preds = %.split.us.i.i
  %i.ns = lshr i32 %.05198.us.i.i, 1              ; 2 uses
  %.not64.us.i.i = icmp eq i32 %i.ns, 0
  br i1 %.not64.us.i.i, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.nt = getelementptr inbounds nuw i8, ptr %.05596.us.i.i, i64 4 ; 2 uses
  %i.nu = icmp ugt ptr %i.nt, %i.np
  br i1 %i.nu, label %cinepak_decode_codebook.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.nv = load i32, ptr %.05596.us.i.i, align 1, !tbaa !49
  %i.nw = tail call i32 @llvm.bswap.i32(i32 %i.nv)
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bk
  %.156.us.i.i = phi ptr [ %.05596.us.i.i, %bb.bk ], [ %i.nt, %bb.bm ] ; 2 uses
  %.154.us.i.i = phi i32 [ %.05397.us.i.i, %bb.bk ], [ %i.nw, %bb.bm ] ; 3 uses
  %.152.us.i.i = phi i32 [ %i.ns, %bb.bk ], [ -2147483648, %bb.bm ] ; 3 uses
  %i.nx = and i32 %.152.us.i.i, %.154.us.i.i
  %.not65.us.i.i = icmp eq i32 %i.nx, 0
  br i1 %.not65.us.i.i, label %.thread81.us.i.i, label %.thread.us.i.i

.thread.us.i.i:                                   ; preds = %bb.bn, %.split.us.i.i
  %.15280.us.i.i = phi i32 [ %.152.us.i.i, %bb.bn ], [ %.05198.us.i.i, %.split.us.i.i ]
  %.15478.us.i.i = phi i32 [ %.154.us.i.i, %bb.bn ], [ %.05397.us.i.i, %.split.us.i.i ]
  %.15676.us.i.i = phi ptr [ %.156.us.i.i, %bb.bn ], [ %.05596.us.i.i, %.split.us.i.i ] ; 8 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.15676.us.i.i, i64 %4
  %i.nz = icmp ugt ptr %i.ny, %i.np
  br i1 %i.nz, label %cinepak_decode_codebook.exit.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %.thread.us.i.i
  %i.oa = load i8, ptr %.15676.us.i.i, align 1, !tbaa !49 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.048100.us.i.i, i8 %i.oa, i64 3, i1 false), !tbaa !49
  %i.ob = getelementptr inbounds nuw i8, ptr %.15676.us.i.i, i64 1
  %scevgep138.i.i = getelementptr i8, ptr %.048100.us.i.i, i64 3 ; 2 uses
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !49  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep138.i.i, i8 %i.oc, i64 3, i1 false), !tbaa !49
  %i.od = getelementptr inbounds nuw i8, ptr %.15676.us.i.i, i64 2
  %scevgep138.1.i.i = getelementptr i8, ptr %.048100.us.i.i, i64 6 ; 2 uses
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !49  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep138.1.i.i, i8 %i.oe, i64 3, i1 false), !tbaa !49
  %i.of = getelementptr inbounds nuw i8, ptr %.15676.us.i.i, i64 3
  %scevgep138.2.i.i = getelementptr i8, ptr %.048100.us.i.i, i64 9 ; 2 uses
  %i.og = load i8, ptr %i.of, align 1, !tbaa !49  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep138.2.i.i, i8 %i.og, i64 3, i1 false), !tbaa !49
  %i.oh = getelementptr inbounds nuw i8, ptr %.15676.us.i.i, i64 4
  %i.oi = getelementptr inbounds nuw i8, ptr %.15676.us.i.i, i64 5
  %i.oj = load i8, ptr %i.oh, align 1, !tbaa !49  ; 2 uses
  %i.ok = sext i8 %i.oj to i32
  %i.ol = load i8, ptr %i.oi, align 1, !tbaa !49
  %i.om = sext i8 %i.ol to i32                    ; 2 uses
  %i.on = shl nsw i32 %i.om, 1                    ; 4 uses
  %.neg.us149.i.i = sdiv i8 %i.oj, -2
  %.neg.us.sext.i.i = sext i8 %.neg.us149.i.i to i32
  %i.oo = sub nsw i32 %.neg.us.sext.i.i, %i.om    ; 4 uses
  %i.op = shl nsw i32 %i.ok, 1                    ; 4 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.048100.us.i.i, i64 1
  %i.or = zext i8 %i.oa to i32                    ; 3 uses
  %i.os = add nsw i32 %i.on, %i.or
  %i.ot = getelementptr inbounds nuw i8, ptr %.048100.us.i.i, i64 2
  %i.ou = add nsw i32 %i.oo, %i.or
  %i.ov = add nsw i32 %i.op, %i.or
  %i.ow = tail call i32 @llvm.smax.i32(i32 %i.os, i32 0)
  %.0.i6985.us.i.i = tail call i32 @llvm.umin.i32(i32 %i.ow, i32 255)
  %.0.i69.us.i.i = trunc nuw i32 %.0.i6985.us.i.i to i8
  store i8 %.0.i69.us.i.i, ptr %.048100.us.i.i, align 1, !tbaa !49
  %i.ox = tail call i32 @llvm.smax.i32(i32 %i.ou, i32 0)
  %.0.i6786.us.i.i = tail call i32 @llvm.umin.i32(i32 %i.ox, i32 255)
  %.0.i67.us.i.i = trunc nuw i32 %.0.i6786.us.i.i to i8
  store i8 %.0.i67.us.i.i, ptr %i.oq, align 1, !tbaa !49
  %i.oy = tail call i32 @llvm.smax.i32(i32 %i.ov, i32 0)
  %.0.i87.us.i.i = tail call i32 @llvm.umin.i32(i32 %i.oy, i32 255)
  %.0.i.us.i.i = trunc nuw i32 %.0.i87.us.i.i to i8
  store i8 %.0.i.us.i.i, ptr %i.ot, align 1, !tbaa !49
  %i.oz = getelementptr inbounds nuw i8, ptr %.048100.us.i.i, i64 4
  %i.pa = zext i8 %i.oc to i32                    ; 3 uses
  %i.pb = add nsw i32 %i.on, %i.pa
  %i.pc = getelementptr inbounds nuw i8, ptr %.048100.us.i.i, i64 5
  %i.pd = add nsw i32 %i.oo, %i.pa
  %i.pe = add nsw i32 %i.op, %i.pa
  %i.pf = tail call i32 @llvm.smax.i32(i32 %i.pb, i32 0)
  %.0.i6985.us.1.i.i = tail call i32 @llvm.umin.i32(i32 %i.pf, i32 255)
  %.0.i69.us.1.i.i = trunc nuw i32 %.0.i6985.us.1.i.i to i8
  store i8 %.0.i69.us.1.i.i, ptr %scevgep138.i.i, align 1, !tbaa !49
  %i.pg = tail call i32 @llvm.smax.i32(i32 %i.pd, i32 0)
  %.0.i6786.us.1.i.i = tail call i32 @llvm.umin.i32(i32 %i.pg, i32 255)
  %.0.i67.us.1.i.i = trunc nuw i32 %.0.i6786.us.1.i.i to i8
  store i8 %.0.i67.us.1.i.i, ptr %i.oz, align 1, !tbaa !49
  %i.ph = tail call i32 @llvm.smax.i32(i32 %i.pe, i32 0)
  %.0.i87.us.1.i.i = tail call i32 @llvm.umin.i32(i32 %i.ph, i32 255)
  %.0.i.us.1.i.i = trunc nuw i32 %.0.i87.us.1.i.i to i8
  store i8 %.0.i.us.1.i.i, ptr %i.pc, align 1, !tbaa !49
  %i.pi = getelementptr inbounds nuw i8, ptr %.048100.us.i.i, i64 7
  %i.pj = zext i8 %i.oe to i32                    ; 3 uses
  %i.pk = add nsw i32 %i.on, %i.pj
  %i.pl = getelementptr inbounds nuw i8, ptr %.048100.us.i.i, i64 8
  %i.pm = add nsw i32 %i.oo, %i.pj
  %i.pn = add nsw i32 %i.op, %i.pj
  %i.po = tail call i32 @llvm.smax.i32(i32 %i.pk, i32 0)
  %.0.i6985.us.2.i.i = tail call i32 @llvm.umin.i32(i32 %i.po, i32 255)
  %.0.i69.us.2.i.i = trunc nuw i32 %.0.i6985.us.2.i.i to i8
  store i8 %.0.i69.us.2.i.i, ptr %scevgep138.1.i.i, align 1, !tbaa !49
  %i.pp = tail call i32 @llvm.smax.i32(i32 %i.pm, i32 0)
  %.0.i6786.us.2.i.i = tail call i32 @llvm.umin.i32(i32 %i.pp, i32 255)
  %.0.i67.us.2.i.i = trunc nuw i32 %.0.i6786.us.2.i.i to i8
  store i8 %.0.i67.us.2.i.i, ptr %i.pi, align 1, !tbaa !49
  %i.pq = tail call i32 @llvm.smax.i32(i32 %i.pn, i32 0)
  %.0.i87.us.2.i.i = tail call i32 @llvm.umin.i32(i32 %i.pq, i32 255)
  %.0.i.us.2.i.i = trunc nuw i32 %.0.i87.us.2.i.i to i8
  store i8 %.0.i.us.2.i.i, ptr %i.pl, align 1, !tbaa !49
  %i.pr = getelementptr inbounds nuw i8, ptr %.048100.us.i.i, i64 10
  %i.ps = zext i8 %i.og to i32                    ; 3 uses
  %i.pt = add nsw i32 %i.on, %i.ps
  %i.pu = getelementptr inbounds nuw i8, ptr %.048100.us.i.i, i64 11
  %i.pv = add nsw i32 %i.oo, %i.ps
  %i.pw = add nsw i32 %i.op, %i.ps
  %i.px = tail call i32 @llvm.smax.i32(i32 %i.pt, i32 0)
  %.0.i6985.us.3.i.i = tail call i32 @llvm.umin.i32(i32 %i.px, i32 255)
  %.0.i69.us.3.i.i = trunc nuw i32 %.0.i6985.us.3.i.i to i8
  store i8 %.0.i69.us.3.i.i, ptr %scevgep138.2.i.i, align 1, !tbaa !49
  %i.py = tail call i32 @llvm.smax.i32(i32 %i.pv, i32 0)
  %.0.i6786.us.3.i.i = tail call i32 @llvm.umin.i32(i32 %i.py, i32 255)
  %.0.i67.us.3.i.i = trunc nuw i32 %.0.i6786.us.3.i.i to i8
  store i8 %.0.i67.us.3.i.i, ptr %i.pr, align 1, !tbaa !49
  %i.pz = tail call i32 @llvm.smax.i32(i32 %i.pw, i32 0)
  %.0.i87.us.3.i.i = tail call i32 @llvm.umin.i32(i32 %i.pz, i32 255)
  %.0.i.us.3.i.i = trunc nuw i32 %.0.i87.us.3.i.i to i8
  store i8 %.0.i.us.3.i.i, ptr %i.pu, align 1, !tbaa !49
  %5 = getelementptr inbounds nuw i8, ptr %.15676.us.i.i, i64 6
  br label %.thread81.us.i.i

.thread81.us.i.i:                                 ; preds = %.preheader.us.preheader.i.i, %bb.bn
  %.15279.us.i.i = phi i32 [ %.15280.us.i.i, %.preheader.us.preheader.i.i ], [ %.152.us.i.i, %bb.bn ]
  %.15477.us.i.i = phi i32 [ %.15478.us.i.i, %.preheader.us.preheader.i.i ], [ %.154.us.i.i, %bb.bn ]
  %.560.us.i.i = phi ptr [ %5, %.preheader.us.preheader.i.i ], [ %.156.us.i.i, %bb.bn ]
  %.6.us.i.i = getelementptr inbounds nuw i8, ptr %.048100.us.i.i, i64 12
  %i.qa = add nuw nsw i32 %.05099.us.i.i, 1       ; 2 uses
  %exitcond142.not.i.i = icmp eq i32 %i.qa, 256
  br i1 %exitcond142.not.i.i, label %cinepak_decode_codebook.exit.i, label %.split.us.i.i, !llvm.loop !41

.split.i.i:                                       ; preds = %.sink.split.i.i
  br i1 %.not63.i.i, label %.thread.us108.i.i, label %.split.split.i.i

.thread.us108.i.i:                                ; preds = %.split.i.i, %.preheader.us112.preheader.i.i.1
  %.048100.us103.i.i = phi ptr [ %scevgep134.3.i.i.1, %.preheader.us112.preheader.i.i.1 ], [ %.sink.i.i, %.split.i.i ] ; 9 uses
  %.05099.us104.i.i = phi i32 [ %i.qt, %.preheader.us112.preheader.i.i.1 ], [ 0, %.split.i.i ]
  %.05596.us107.i.i = phi ptr [ %7, %.preheader.us112.preheader.i.i.1 ], [ %i.gg, %.split.i.i ] ; 10 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %.05596.us107.i.i, i64 %4
  %i.qc = icmp ugt ptr %i.qb, %i.np
  br i1 %i.qc, label %cinepak_decode_codebook.exit.i, label %.preheader.us112.preheader.i.i

.preheader.us112.preheader.i.i:                   ; preds = %.thread.us108.i.i
  %i.qd = load i8, ptr %.05596.us107.i.i, align 1, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.048100.us103.i.i, i8 %i.qd, i64 3, i1 false), !tbaa !49
  %i.qe = getelementptr inbounds nuw i8, ptr %.05596.us107.i.i, i64 1
  %scevgep134.i.i = getelementptr i8, ptr %.048100.us103.i.i, i64 3
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep134.i.i, i8 %i.qf, i64 3, i1 false), !tbaa !49
  %i.qg = getelementptr inbounds nuw i8, ptr %.05596.us107.i.i, i64 2
  %scevgep134.1.i.i = getelementptr i8, ptr %.048100.us103.i.i, i64 6
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep134.1.i.i, i8 %i.qh, i64 3, i1 false), !tbaa !49
  %i.qi = getelementptr inbounds nuw i8, ptr %.05596.us107.i.i, i64 3
  %scevgep134.2.i.i = getelementptr i8, ptr %.048100.us103.i.i, i64 9
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep134.2.i.i, i8 %i.qj, i64 3, i1 false), !tbaa !49
  %6 = getelementptr inbounds nuw i8, ptr %.05596.us107.i.i, i64 4 ; 2 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %6, i64 %4
  %i.ql = icmp ugt ptr %i.qk, %i.np
  br i1 %i.ql, label %cinepak_decode_codebook.exit.i, label %.preheader.us112.preheader.i.i.1

.preheader.us112.preheader.i.i.1:                 ; preds = %.preheader.us112.preheader.i.i
  %scevgep134.3.i.i = getelementptr i8, ptr %.048100.us103.i.i, i64 12
  %i.qm = load i8, ptr %6, align 1, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep134.3.i.i, i8 %i.qm, i64 3, i1 false), !tbaa !49
  %i.qn = getelementptr inbounds nuw i8, ptr %.05596.us107.i.i, i64 5
  %scevgep134.i.i.1 = getelementptr i8, ptr %.048100.us103.i.i, i64 15
  %i.qo = load i8, ptr %i.qn, align 1, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep134.i.i.1, i8 %i.qo, i64 3, i1 false), !tbaa !49
  %i.qp = getelementptr inbounds nuw i8, ptr %.05596.us107.i.i, i64 6
  %scevgep134.1.i.i.1 = getelementptr i8, ptr %.048100.us103.i.i, i64 18
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep134.1.i.i.1, i8 %i.qq, i64 3, i1 false), !tbaa !49
  %i.qr = getelementptr inbounds nuw i8, ptr %.05596.us107.i.i, i64 7
  %scevgep134.2.i.i.1 = getelementptr i8, ptr %.048100.us103.i.i, i64 21
  %i.qs = load i8, ptr %i.qr, align 1, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep134.2.i.i.1, i8 %i.qs, i64 3, i1 false), !tbaa !49
  %7 = getelementptr inbounds nuw i8, ptr %.05596.us107.i.i, i64 8
  %scevgep134.3.i.i.1 = getelementptr i8, ptr %.048100.us103.i.i, i64 24
  %i.qt = add nuw nsw i32 %.05099.us104.i.i, 2    ; 2 uses
  %exitcond136.not.i.i.1 = icmp eq i32 %i.qt, 256
  br i1 %exitcond136.not.i.i.1, label %cinepak_decode_codebook.exit.i, label %.thread.us108.i.i, !llvm.loop !41

.split.split.i.i:                                 ; preds = %.split.i.i, %.thread81.i.i
  %.048100.i.i = phi ptr [ %.6.i.i, %.thread81.i.i ], [ %.sink.i.i, %.split.i.i ] ; 5 uses
  %.05099.i.i = phi i32 [ %i.rj, %.thread81.i.i ], [ 0, %.split.i.i ]
  %.05198.i.i = phi i32 [ %.152.i.i, %.thread81.i.i ], [ 0, %.split.i.i ]
  %.05397.i.i = phi i32 [ %.154.i.i, %.thread81.i.i ], [ 0, %.split.i.i ]
  %.05596.i.i = phi ptr [ %.560.i.i, %.thread81.i.i ], [ %i.gg, %.split.i.i ] ; 3 uses
  %i.qu = lshr i32 %.05198.i.i, 1                 ; 2 uses
  %.not64.i.i = icmp eq i32 %i.qu, 0
  br i1 %.not64.i.i, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %.split.split.i.i
  %i.qv = getelementptr inbounds nuw i8, ptr %.05596.i.i, i64 4 ; 2 uses
  %i.qw = icmp ugt ptr %i.qv, %i.np
  br i1 %i.qw, label %cinepak_decode_codebook.exit.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.qx = load i32, ptr %.05596.i.i, align 1, !tbaa !49
  %i.qy = tail call i32 @llvm.bswap.i32(i32 %i.qx)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.split.split.i.i
  %.156.i.i = phi ptr [ %.05596.i.i, %.split.split.i.i ], [ %i.qv, %bb.bp ] ; 7 uses
  %.154.i.i = phi i32 [ %.05397.i.i, %.split.split.i.i ], [ %i.qy, %bb.bp ] ; 2 uses
  %.152.i.i = phi i32 [ %i.qu, %.split.split.i.i ], [ -2147483648, %bb.bp ] ; 2 uses
  %i.qz = and i32 %.152.i.i, %.154.i.i
  %.not65.i.i = icmp eq i32 %i.qz, 0
  br i1 %.not65.i.i, label %.thread81.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bq
  %i.ra = getelementptr inbounds nuw i8, ptr %.156.i.i, i64 %4
  %i.rb = icmp ugt ptr %i.ra, %i.np
  br i1 %i.rb, label %cinepak_decode_codebook.exit.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %.thread.i.i
  %i.rc = load i8, ptr %.156.i.i, align 1, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.048100.i.i, i8 %i.rc, i64 3, i1 false), !tbaa !49
  %i.rd = getelementptr inbounds nuw i8, ptr %.156.i.i, i64 1
  %scevgep.i.i = getelementptr i8, ptr %.048100.i.i, i64 3
  %i.re = load i8, ptr %i.rd, align 1, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.i.i, i8 %i.re, i64 3, i1 false), !tbaa !49
  %i.rf = getelementptr inbounds nuw i8, ptr %.156.i.i, i64 2
  %scevgep.1.i.i = getelementptr i8, ptr %.048100.i.i, i64 6
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.1.i.i, i8 %i.rg, i64 3, i1 false), !tbaa !49
  %i.rh = getelementptr inbounds nuw i8, ptr %.156.i.i, i64 3
  %scevgep.2.i.i = getelementptr i8, ptr %.048100.i.i, i64 9
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep.2.i.i, i8 %i.ri, i64 3, i1 false), !tbaa !49
  %8 = getelementptr inbounds nuw i8, ptr %.156.i.i, i64 4
  br label %.thread81.i.i

.thread81.i.i:                                    ; preds = %.preheader.preheader.i.i, %bb.bq
  %.560.i.i = phi ptr [ %8, %.preheader.preheader.i.i ], [ %.156.i.i, %bb.bq ]
  %.6.i.i = getelementptr i8, ptr %.048100.i.i, i64 12
  %i.rj = add nuw nsw i32 %.05099.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.rj, 256
  br i1 %exitcond.not.i.i, label %cinepak_decode_codebook.exit.i, label %.split.split.i.i, !llvm.loop !41

cinepak_decode_codebook.exit.i:                   ; preds = %.thread81.i.i, %.thread.i.i, %bb.bo, %.thread.us108.i.i, %.preheader.us112.preheader.i.i, %.preheader.us112.preheader.i.i.1, %.thread81.us.i.i, %.thread.us.i.i, %bb.bl, %.cinepak_decode_codebook.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.cinepak_decode_codebook.exit_crit_edge.i ], [ %i.no, %.thread.us108.i.i ], [ %i.no, %.thread81.us.i.i ], [ %i.no, %bb.bl ], [ %i.no, %.thread.us.i.i ], [ %i.no, %.preheader.us112.preheader.i.i.1 ], [ %i.no, %.preheader.us112.preheader.i.i ], [ %i.no, %bb.bo ], [ %i.no, %.thread.i.i ], [ %i.no, %.thread81.i.i ]
  %i.rk = getelementptr inbounds i8, ptr %i.gg, i64 %.pre-phi.i ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 4 ; 2 uses
  %.not47.i.i = icmp ugt ptr %i.rl, %i.fv
  br i1 %.not47.i.i, label %.loopexit, label %bb.al, !llvm.loop !42

cinepak_decode_strip.exit.i:                      ; preds = %._crit_edge.i.i, %bb.ao
  %i.rm = phi i16 [ %i.hi, %bb.ao ], [ %i.nj, %._crit_edge.i.i ]
  %i.rn = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 %i.fu ; 2 uses
  store ptr %i.ro, ptr %i.g, align 8, !tbaa !47
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %cinepak_decode.exit, label %bb.z, !llvm.loop !43

.loopexit:                                        ; preds = %bb.ai, %bb.aj, %bb.z, %bb.af, %bb.ak, %cinepak_decode_codebook.exit.i, %bb.al, %bb.bg, %bb.bb, %bb.au, %bb.ay
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3) #6
  br label %cinepak_decode.exit

cinepak_decode.exit:                              ; preds = %cinepak_decode_strip.exit.i, %bb.y, %.loopexit
  %i.rp = load i32, ptr %i.cn, align 4, !tbaa !35
  %.not40 = icmp eq i32 %i.rp, 0
  %.pre68 = load ptr, ptr %i.cj, align 8, !tbaa !36 ; 2 uses
  br i1 %.not40, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %cinepak_decode.exit
  %i.rq = getelementptr inbounds nuw i8, ptr %.pre68, i64 8
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !65
  %i.rs = getelementptr inbounds nuw i8, ptr %i.f, i64 196972
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %i.rr, ptr noundef nonnull align 4 dereferenceable(1024) %i.rs, i64 1024, i1 false)
  %.pre67 = load ptr, ptr %i.cj, align 8, !tbaa !36
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %cinepak_decode.exit
  %i.rt = phi ptr [ %.pre67, %bb.br ], [ %.pre68, %cinepak_decode.exit ]
  %i.ru = tail call i32 @av_frame_ref(ptr noundef %1, ptr noundef %i.rt) #6 ; 2 uses
  %i.rv = icmp slt i32 %i.ru, 0
  br i1 %i.rv, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i32 1, ptr %2, align 4, !tbaa !33
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bs, %cinepak_predecode_check.exit, %bb.c, %bb.d, %bb.a, %bb.bt, %bb.v
  %.0 = phi i32 [ -1094995529, %bb.a ], [ %.1.i.ph, %bb.v ], [ %i.d, %bb.c ], [ %i.cl, %cinepak_predecode_check.exit ], [ %i.d, %bb.bt ], [ %i.d, %bb.d ], [ %i.ru, %bb.bs ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @cinepak_decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @av_frame_free(ptr noundef nonnull %i.c) #6
  ret i32 0
}

declare ptr @av_frame_alloc() local_unnamed_addr #2

declare ptr @av_packet_get_side_data(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @ff_copy_palette(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @avpriv_request_sample(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!30 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!31 = !{!"CinepakContext", !29, i64 0, !30, i64 8, !14, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !5, i64 40, !6, i64 196968, !5, i64 196972}
!32 = !{!31, !29, i64 0}
!33 = !{!6, !6, i64 0}
!34 = !{!31, !6, i64 196968}
!35 = !{!31, !6, i64 36}
!36 = !{!31, !30, i64 8}
!37 = !{!27, !6, i64 648}
!38 = !{!27, !6, i64 136}
!39 = distinct !{!39, !67}
!40 = distinct !{!40, !67}
!41 = distinct !{!41, !67}
!42 = distinct !{!42, !67}
!43 = distinct !{!43, !67}
!44 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!45 = !{!44, !14, i64 24}
!46 = !{!44, !6, i64 32}
!47 = !{!31, !14, i64 16}
!48 = !{!31, !6, i64 24}
!49 = !{!5, !5, i64 0}
!50 = !{!27, !6, i64 804}
!51 = !{!"p2 omnipotent char", !25, i64 0}
!52 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!53 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!54 = !{!"AVFrame", !5, i64 0, !5, i64 64, !51, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !52, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !53, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!55 = !{!54, !6, i64 276}
!56 = !{!"short", !5, i64 0}
!57 = !{!"cvid_strip", !56, i64 0, !56, i64 2, !56, i64 4, !56, i64 6, !56, i64 8, !5, i64 10, !5, i64 3082}
!58 = !{!57, !56, i64 0}
!59 = !{!57, !56, i64 4}
!60 = !{!57, !56, i64 8}
!61 = !{!57, !56, i64 2}
!62 = !{!57, !56, i64 6}
!63 = !{!31, !6, i64 28}
!64 = !{!31, !6, i64 32}
!65 = !{!14, !14, i64 0}
!66 = !{!27, !6, i64 116}
!67 = !{!"llvm.loop.mustprogress"}
end_hunk_0
