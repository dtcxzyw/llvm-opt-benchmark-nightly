Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/zstd_lazy?download=true
inline.NumInlined: 1316
inline.NumDeleted: 37
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 169
begin_hunk_0_@ZSTD_HcFindBestMatch_dedicatedDictSearch_4:bb.a
  %.val.i = load i64, ptr %1, align 1, !tbaa !46  ; 2 uses
  %.not.i17 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i17, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.di = xor i64 %.val.i, %.val60.i
  %i.dj = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.di, i1 true)
  %i.dk = lshr i64 %i.dj, 3
  br label %ZSTD_count.exit

.preheader.i:                                     ; preds = %bb.e, %bb.g
  %.pn.i = phi ptr [ %.049.i, %bb.g ], [ %1, %bb.e ]
  %.pn67.i = phi ptr [ %.045.i, %bb.g ], [ %i.dc, %bb.e ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.dl = icmp ult ptr %.049.i, %i.cw
  br i1 %i.dl, label %bb.g, label %.loopexit.i

bb.g:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !46 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !46 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.g
  %i.dm = xor i64 %.049.val.i, %.045.val.i
  %i.dn = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dm, i1 true)
  %i.do = lshr i64 %i.dn, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.do
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.n
  br label %ZSTD_count.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.d
  %.251.i = phi ptr [ %1, %bb.d ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.dc, %bb.d ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.ds = icmp ult ptr %.251.i, %i.cy
  br i1 %i.ds, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !45
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !45
  %i.dt = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.dt, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.du = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.loopexit.i
  %.352.i = phi ptr [ %i.du, %bb.i ], [ %.251.i, %bb.h ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.dv, %bb.i ], [ %.247.i, %bb.h ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.dw = icmp ult ptr %.352.i, %i.cz
  br i1 %i.dw, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !60
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !60
  %i.dx = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.dx, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dy = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.dz = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.453.i = phi ptr [ %i.dy, %bb.l ], [ %.352.i, %bb.k ], [ %.352.i, %bb.j ] ; 4 uses
  %.4.i = phi ptr [ %i.dz, %bb.l ], [ %.348.i, %bb.k ], [ %.348.i, %bb.j ]
  %i.ea = icmp ult ptr %.453.i, %2
  br i1 %i.ea, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.eb = load i8, ptr %.4.i, align 1, !tbaa !53
  %i.ec = load i8, ptr %.453.i, align 1, !tbaa !53
  %i.ed = icmp eq i8 %i.eb, %i.ec
  %spec.select.idx.i = zext i1 %i.ed to i64
  %spec.select.i16 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.5.i14 = phi ptr [ %.453.i, %bb.m ], [ %spec.select.i16, %bb.n ]
  %i.ee = ptrtoint ptr %.5.i14 to i64
  %i.ef = sub i64 %i.ee, %i.n
  br label %ZSTD_count.exit

ZSTD_count.exit:                                  ; preds = %bb.o, %.thread63.i, %bb.f
  %.2.i = phi i64 [ %i.dk, %bb.f ], [ %i.dr, %.thread63.i ], [ %i.ef, %bb.o ] ; 4 uses
  %i.eg = icmp ugt i64 %.2.i, %.0151.i57
  br i1 %i.eg, label %bb.p, label %ZSTD_count.exit.thread

bb.p:                                             ; preds = %ZSTD_count.exit
  %i.eh = sub i32 %i.da, %.0148.i58
  %i.ei = zext i32 %i.eh to i64
  store i64 %i.ei, ptr %3, align 8, !tbaa !46
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %.2.i
  %i.ek = icmp eq ptr %i.ej, %2
  br i1 %i.ek, label %ZSTD_HcFindBestMatch.exit, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.c, %bb.p, %ZSTD_count.exit
  %.1152.i = phi i64 [ %.2.i, %bb.p ], [ %.0151.i57, %ZSTD_count.exit ], [ %.0151.i57, %bb.c ] ; 3 uses
  %.not160.i = icmp ugt i32 %.0148.i58, %i.ac
  br i1 %.not160.i, label %bb.q, label %ZSTD_HcFindBestMatch.exit

bb.q:                                             ; preds = %ZSTD_count.exit.thread
  %i.el = and i32 %.0148.i58, %i.g
  %i.em = zext nneg i32 %i.el to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.em
  %i.eo = add i32 %.0155.i56, -1                  ; 3 uses
  %.0148.i = load i32, ptr %i.en, align 4, !tbaa !45 ; 2 uses
  %i.ep = icmp uge i32 %.0148.i, %i.ab
  %i.eq = icmp ne i32 %i.eo, 0
  %i.er = and i1 %i.eq, %i.ep
  br i1 %i.er, label %bb.c, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !7

ZSTD_HcFindBestMatch.exit:                        ; preds = %bb.q, %bb.p, %ZSTD_count.exit.thread, %.split53.us
  %.0155.i.lcssa = phi i32 [ %i.af, %.split53.us ], [ %.0155.i56, %ZSTD_count.exit.thread ], [ %.0155.i56, %bb.p ], [ %i.eo, %bb.q ] ; 3 uses
  %.3154.i = phi i64 [ 3, %.split53.us ], [ %.1152.i, %ZSTD_count.exit.thread ], [ %.2.i, %bb.p ], [ %.1152.i, %bb.q ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !37 ; 15 uses
  %i.eu = load ptr, ptr %i.ah, align 8, !tbaa !79 ; 3 uses
  %i.ev = load i32, ptr %i.aq, align 4, !tbaa !45
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ew
  tail call void @llvm.prefetch.p0(ptr %i.ex, i32 0, i32 3, i32 1)
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !45
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fa
  tail call void @llvm.prefetch.p0(ptr %i.fb, i32 0, i32 3, i32 1)
  %i.fc = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !45
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fe
  tail call void @llvm.prefetch.p0(ptr %i.ff, i32 0, i32 3, i32 1)
  %i.fg = ptrtoint ptr %i.eu to i64
  %i.fh = ptrtoint ptr %i.et to i64
  %.neg.i.neg = sub i64 %i.fg, %i.fh
  %.neg107.i.neg = trunc i64 %.neg.i.neg to i32
  %.neg84 = sub i32 %.neg107.i.neg, %i.k          ; 2 uses
  %i.fi = tail call i32 @llvm.umin.i32(i32 %.0155.i.lcssa, i32 3) ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !45 ; 3 uses
  %i.fl = lshr i32 %i.fk, 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !39 ; 3 uses
  %i.fo = zext nneg i32 %i.fl to i64              ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fo
  tail call void @llvm.prefetch.p0(ptr %i.fp, i32 0, i32 3, i32 1)
  %.not85 = icmp eq i32 %.0155.i.lcssa, 0
  br i1 %.not85, label %._crit_edge, label %.lr.ph70

.lr.ph70:                                         ; preds = %ZSTD_HcFindBestMatch.exit
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg45 = add i32 %i.q, 3
  %i.fr = add i32 %.neg45, %.neg84
  %wide.trip.count = zext nneg i32 %i.fi to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph70, %.thread25
  %indvars.iv96 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next97, %.thread25 ] ; 2 uses
  %.0100.i68 = phi i64 [ %.3154.i, %.lr.ph70 ], [ %.2102.i29, %.thread25 ] ; 4 uses
  %i.fs = getelementptr [4 x i8], ptr %i.aq, i64 %indvars.iv96
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !45 ; 3 uses
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.fu ; 2 uses
  %.not.i5 = icmp eq i32 %i.ft, 0
  br i1 %.not.i5, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val6 = load i32, ptr %i.fv, align 1, !tbaa !45
  %i.fw = icmp eq i32 %.val6, %.val12
  br i1 %i.fw, label %bb.t, label %.thread25

bb.t:                                             ; preds = %bb.s
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.fy = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.fq, ptr noundef nonnull %i.fx, ptr noundef %2, ptr noundef %i.eu, ptr noundef %i.m)
  %i.fz = add i64 %i.fy, 4                        ; 4 uses
  %i.ga = icmp ugt i64 %i.fz, %.0100.i68
  br i1 %i.ga, label %bb.u, label %.thread25

bb.u:                                             ; preds = %bb.t
  %i.gb = sub i32 %i.fr, %i.ft
  %i.gc = zext i32 %i.gb to i64
  store i64 %i.gc, ptr %3, align 8, !tbaa !46
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 %i.fz
  %.not = icmp eq ptr %i.gd, %2
  br i1 %.not, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.thread25

.thread25:                                        ; preds = %bb.s, %bb.t, %bb.u
  %.2102.i29 = phi i64 [ %i.fz, %bb.u ], [ %.0100.i68, %bb.t ], [ %.0100.i68, %bb.s ] ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !14

._crit_edge:                                      ; preds = %.thread25, %ZSTD_HcFindBestMatch.exit
  %.1104.i.lcssa = phi i32 [ 0, %ZSTD_HcFindBestMatch.exit ], [ %i.fi, %.thread25 ]
  %.0100.i.lcssa = phi i64 [ %.3154.i, %ZSTD_HcFindBestMatch.exit ], [ %.2102.i29, %.thread25 ] ; 2 uses
  %i.ge = and i32 %i.fk, 255
  %i.gf = sub i32 %.0155.i.lcssa, %.1104.i.lcssa
  %i.gg = tail call i32 @llvm.umin.i32(i32 %i.gf, i32 %i.ge) ; 4 uses
  %.not86 = icmp eq i32 %i.gg, 0
  br i1 %.not86, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %._crit_edge
  %wide.trip.count102 = zext nneg i32 %i.gg to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fo ; 9 uses
  %xtraiter131 = and i64 %wide.trip.count102, 7   ; 3 uses
  %i.gh = icmp samesign ult i32 %i.gg, 8
  br i1 %i.gh, label %.lr.ph75.epil.preheader, label %.lr.ph75.preheader.new

.lr.ph75.preheader.new:                           ; preds = %.lr.ph75.preheader
  %unroll_iter = and i64 %wide.trip.count102, 248
  br label %.lr.ph75

.lr.ph79.unr-lcssa:                               ; preds = %.lr.ph75
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph79, label %.lr.ph75.epil.preheader

.lr.ph75.epil.preheader:                          ; preds = %.lr.ph79.unr-lcssa, %.lr.ph75.preheader
  %indvars.iv99.epil.init = phi i64 [ 0, %.lr.ph75.preheader ], [ %indvars.iv.next100.7, %.lr.ph79.unr-lcssa ]
  %lcmp.mod133 = icmp ne i64 %xtraiter131, 0
  tail call void @llvm.assume(i1 %lcmp.mod133)
  br label %.lr.ph75.epil

.lr.ph75.epil:                                    ; preds = %.lr.ph75.epil, %.lr.ph75.epil.preheader
  %indvars.iv99.epil = phi i64 [ %indvars.iv99.epil.init, %.lr.ph75.epil.preheader ], [ %indvars.iv.next100.epil, %.lr.ph75.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph75.epil.preheader ], [ %epil.iter.next, %.lr.ph75.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99.epil
  %i.gi = load i32, ptr %gep.epil, align 4, !tbaa !45
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gj
  tail call void @llvm.prefetch.p0(ptr %i.gk, i32 0, i32 3, i32 1)
  %indvars.iv.next100.epil = add nuw nsw i64 %indvars.iv99.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter131
  br i1 %epil.iter.cmp.not, label %.lr.ph79, label %.lr.ph75.epil, !llvm.loop !200

.lr.ph79:                                         ; preds = %.lr.ph75.epil, %.lr.ph79.unr-lcssa
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg43 = add i32 %i.q, 3
  %i.gm = add i32 %.neg43, %.neg84
  %i.gn = lshr i32 %i.fk, 8
  %i.go = zext nneg i32 %i.gn to i64
  br label %bb.v

.lr.ph75:                                         ; preds = %.lr.ph75, %.lr.ph75.preheader.new
  %indvars.iv99 = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %indvars.iv.next100.7, %.lr.ph75 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %niter.next.7, %.lr.ph75 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %i.gp = load i32, ptr %gep, align 4, !tbaa !45
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gq
  tail call void @llvm.prefetch.p0(ptr %i.gr, i32 0, i32 3, i32 1)
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  %i.gt = load i32, ptr %gep.1, align 4, !tbaa !45
  %i.gu = zext i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gu
  tail call void @llvm.prefetch.p0(ptr %i.gv, i32 0, i32 3, i32 1)
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  %i.gx = load i32, ptr %gep.2, align 4, !tbaa !45
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.gy
  tail call void @llvm.prefetch.p0(ptr %i.gz, i32 0, i32 3, i32 1)
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.ha, i64 12
  %i.hb = load i32, ptr %gep.3, align 4, !tbaa !45
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hc
  tail call void @llvm.prefetch.p0(ptr %i.hd, i32 0, i32 3, i32 1)
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.he, i64 16
  %i.hf = load i32, ptr %gep.4, align 4, !tbaa !45
  %i.hg = zext i32 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hg
  tail call void @llvm.prefetch.p0(ptr %i.hh, i32 0, i32 3, i32 1)
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.hi, i64 20
  %i.hj = load i32, ptr %gep.5, align 4, !tbaa !45
  %i.hk = zext i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hk
  tail call void @llvm.prefetch.p0(ptr %i.hl, i32 0, i32 3, i32 1)
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.hm, i64 24
  %i.hn = load i32, ptr %gep.6, align 4, !tbaa !45
  %i.ho = zext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.ho
  tail call void @llvm.prefetch.p0(ptr %i.hp, i32 0, i32 3, i32 1)
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.hq, i64 28
  %i.hr = load i32, ptr %gep.7, align 4, !tbaa !45
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hs
  tail call void @llvm.prefetch.p0(ptr %i.ht, i32 0, i32 3, i32 1)
  %indvars.iv.next100.7 = add nuw nsw i64 %indvars.iv99, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph79.unr-lcssa, label %.lr.ph75, !llvm.loop !15

bb.v:                                             ; preds = %.lr.ph79, %.thread35
  %indvars.iv104 = phi i64 [ %i.go, %.lr.ph79 ], [ %indvars.iv.next105, %.thread35 ] ; 2 uses
  %.1.i78 = phi i32 [ 0, %.lr.ph79 ], [ %i.ih, %.thread35 ]
  %.3.i76 = phi i64 [ %.0100.i.lcssa, %.lr.ph79 ], [ %.5.i.ph, %.thread35 ] ; 3 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %indvars.iv104
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !45 ; 2 uses
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.et, i64 %i.hw ; 2 uses
  %.val8 = load i32, ptr %i.hx, align 1, !tbaa !45
  %i.hy = icmp eq i32 %.val8, %.val12
  br i1 %i.hy, label %bb.w, label %.thread35

bb.w:                                             ; preds = %bb.v
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 4
  %i.ia = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.gl, ptr noundef nonnull %i.hz, ptr noundef %2, ptr noundef %i.eu, ptr noundef %i.m)
  %i.ib = add i64 %i.ia, 4                        ; 4 uses
  %i.ic = icmp ugt i64 %i.ib, %.3.i76
  br i1 %i.ic, label %bb.x, label %.thread35

bb.x:                                             ; preds = %bb.w
  %i.id = sub i32 %i.gm, %i.hv
  %i.ie = zext i32 %i.id to i64
  store i64 %i.ie, ptr %3, align 8, !tbaa !46
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 %i.ib
  %i.ig = icmp eq ptr %i.if, %2
  br i1 %i.ig, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.thread35

.thread35:                                        ; preds = %bb.v, %bb.x, %bb.w
  %.5.i.ph = phi i64 [ %i.ib, %bb.x ], [ %.3.i76, %bb.w ], [ %.3.i76, %bb.v ] ; 2 uses
  %i.ih = add nuw nsw i32 %.1.i78, 1              ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %exitcond106.not = icmp eq i32 %i.ih, %i.gg
  br i1 %exitcond106.not, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %bb.v, !llvm.loop !16

ZSTD_dedicatedDictSearch_lazy_search.exit:        ; preds = %bb.r, %bb.u, %.thread35, %bb.x, %._crit_edge
  %.2.i4 = phi i64 [ %.0100.i.lcssa, %._crit_edge ], [ %i.ib, %bb.x ], [ %.5.i.ph, %.thread35 ], [ %.0100.i68, %bb.r ], [ %i.fz, %bb.u ]
  ret i64 %.2.i4
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_HcFindBestMatch_dedicatedDictSearch_5(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49   ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 2 uses
  %i.g = add i32 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !54   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = trunc i64 %i.p to i32                    ; 8 uses
  %i.r = load i32, ptr %i.a, align 8, !tbaa !83
  %i.s = shl nuw i32 1, %i.r                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !81   ; 2 uses
  %i.v = sub i32 %i.q, %i.u
  %i.w = icmp ugt i32 %i.v, %i.s
  %i.x = sub i32 %i.q, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !56
  %.not.i = icmp eq i32 %i.z, 0
  %i.aa = select i1 %.not.i, i1 %i.w, i1 false
  %i.ab = select i1 %i.aa, i32 %i.x, i32 %i.u     ; 2 uses
  %i.ac = tail call i32 @llvm.usub.sat.i32(i32 %i.q, i32 %i.f)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !84
  %i.af = shl nuw i32 1, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !78 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 264
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !43
  %.val13 = load i64, ptr %1, align 1, !tbaa !46
  %i.ak = mul i64 %.val13, -3523014627271114752   ; 2 uses
  %i.al = sub i32 66, %i.aj
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i64 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !38
  %.idx = shl i64 %i.an, 4
  %i.aq = getelementptr i8, ptr %i.ap, i64 %.idx  ; 6 uses
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !57
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !48
  %notmask.i.i = shl nsw i32 -1, %i.e
  %i.ax = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !41 ; 6 uses
end_hunk_0
begin_hunk_1_@ZSTD_HcFindBestMatch_dedicatedDictSearch_5:bb.a
  %.not.i17 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i17, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dd = xor i64 %.val.i, %.val60.i
  %i.de = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dd, i1 true)
  %i.df = lshr i64 %i.de, 3
  br label %ZSTD_count.exit

.preheader.i:                                     ; preds = %bb.e, %bb.g
  %.pn.i = phi ptr [ %.049.i, %bb.g ], [ %1, %bb.e ]
  %.pn67.i = phi ptr [ %.045.i, %bb.g ], [ %i.cx, %bb.e ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.dg = icmp ult ptr %.049.i, %i.cr
  br i1 %i.dg, label %bb.g, label %.loopexit.i

bb.g:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !46 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !46 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.g
  %i.dh = xor i64 %.049.val.i, %.045.val.i
  %i.di = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dh, i1 true)
  %i.dj = lshr i64 %i.di, 3
  %i.dk = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.dj
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = sub i64 %i.dl, %i.n
  br label %ZSTD_count.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.d
  %.251.i = phi ptr [ %1, %bb.d ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.cx, %bb.d ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.dn = icmp ult ptr %.251.i, %i.ct
  br i1 %i.dn, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !45
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !45
  %i.do = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.do, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dp = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.loopexit.i
  %.352.i = phi ptr [ %i.dp, %bb.i ], [ %.251.i, %bb.h ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.dq, %bb.i ], [ %.247.i, %bb.h ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.dr = icmp ult ptr %.352.i, %i.cu
  br i1 %i.dr, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !60
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !60
  %i.ds = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.ds, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dt = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.du = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.453.i = phi ptr [ %i.dt, %bb.l ], [ %.352.i, %bb.k ], [ %.352.i, %bb.j ] ; 4 uses
  %.4.i = phi ptr [ %i.du, %bb.l ], [ %.348.i, %bb.k ], [ %.348.i, %bb.j ]
  %i.dv = icmp ult ptr %.453.i, %2
  br i1 %i.dv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dw = load i8, ptr %.4.i, align 1, !tbaa !53
  %i.dx = load i8, ptr %.453.i, align 1, !tbaa !53
  %i.dy = icmp eq i8 %i.dw, %i.dx
  %spec.select.idx.i = zext i1 %i.dy to i64
  %spec.select.i16 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.5.i14 = phi ptr [ %.453.i, %bb.m ], [ %spec.select.i16, %bb.n ]
  %i.dz = ptrtoint ptr %.5.i14 to i64
  %i.ea = sub i64 %i.dz, %i.n
  br label %ZSTD_count.exit

ZSTD_count.exit:                                  ; preds = %bb.o, %.thread63.i, %bb.f
  %.2.i = phi i64 [ %i.df, %bb.f ], [ %i.dm, %.thread63.i ], [ %i.ea, %bb.o ] ; 4 uses
  %i.eb = icmp ugt i64 %.2.i, %.0151.i57
  br i1 %i.eb, label %bb.p, label %ZSTD_count.exit.thread

bb.p:                                             ; preds = %ZSTD_count.exit
  %i.ec = sub i32 %i.cv, %.0148.i58
  %i.ed = zext i32 %i.ec to i64
  store i64 %i.ed, ptr %3, align 8, !tbaa !46
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 %.2.i
  %i.ef = icmp eq ptr %i.ee, %2
  br i1 %i.ef, label %ZSTD_HcFindBestMatch.exit, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.c, %bb.p, %ZSTD_count.exit
  %.1152.i = phi i64 [ %.2.i, %bb.p ], [ %.0151.i57, %ZSTD_count.exit ], [ %.0151.i57, %bb.c ] ; 3 uses
  %.not160.i = icmp ugt i32 %.0148.i58, %i.ac
  br i1 %.not160.i, label %bb.q, label %ZSTD_HcFindBestMatch.exit

bb.q:                                             ; preds = %ZSTD_count.exit.thread
  %i.eg = and i32 %.0148.i58, %i.g
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eh
  %i.ej = add i32 %.0155.i56, -1                  ; 3 uses
  %.0148.i = load i32, ptr %i.ei, align 4, !tbaa !45 ; 2 uses
  %i.ek = icmp uge i32 %.0148.i, %i.ab
  %i.el = icmp ne i32 %i.ej, 0
  %i.em = and i1 %i.el, %i.ek
  br i1 %i.em, label %bb.c, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !7

ZSTD_HcFindBestMatch.exit:                        ; preds = %bb.q, %bb.p, %ZSTD_count.exit.thread, %.split53.us
  %.0155.i.lcssa = phi i32 [ %i.af, %.split53.us ], [ %.0155.i56, %ZSTD_count.exit.thread ], [ %.0155.i56, %bb.p ], [ %i.ej, %bb.q ] ; 3 uses
  %.3154.i = phi i64 [ 3, %.split53.us ], [ %.1152.i, %ZSTD_count.exit.thread ], [ %.2.i, %bb.p ], [ %.1152.i, %bb.q ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !37 ; 15 uses
  %i.ep = load ptr, ptr %i.ah, align 8, !tbaa !79 ; 3 uses
  %i.eq = load i32, ptr %i.aq, align 4, !tbaa !45
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.er
  tail call void @llvm.prefetch.p0(ptr %i.es, i32 0, i32 3, i32 1)
  %i.et = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !45
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ev
  tail call void @llvm.prefetch.p0(ptr %i.ew, i32 0, i32 3, i32 1)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !45
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ez
  tail call void @llvm.prefetch.p0(ptr %i.fa, i32 0, i32 3, i32 1)
  %i.fb = ptrtoint ptr %i.ep to i64
  %i.fc = ptrtoint ptr %i.eo to i64
  %.neg.i.neg = sub i64 %i.fb, %i.fc
  %.neg107.i.neg = trunc i64 %.neg.i.neg to i32
  %.neg84 = sub i32 %.neg107.i.neg, %i.k          ; 2 uses
  %i.fd = tail call i32 @llvm.umin.i32(i32 %.0155.i.lcssa, i32 3) ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !45 ; 3 uses
  %i.fg = lshr i32 %i.ff, 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !39 ; 3 uses
  %i.fj = zext nneg i32 %i.fg to i64              ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fj
  tail call void @llvm.prefetch.p0(ptr %i.fk, i32 0, i32 3, i32 1)
  %.not85 = icmp eq i32 %.0155.i.lcssa, 0
  br i1 %.not85, label %._crit_edge, label %.lr.ph70

.lr.ph70:                                         ; preds = %ZSTD_HcFindBestMatch.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg45 = add i32 %i.q, 3
  %i.fm = add i32 %.neg45, %.neg84
  %wide.trip.count = zext nneg i32 %i.fd to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph70, %.thread25
  %indvars.iv96 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next97, %.thread25 ] ; 2 uses
  %.0100.i68 = phi i64 [ %.3154.i, %.lr.ph70 ], [ %.2102.i29, %.thread25 ] ; 4 uses
  %i.fn = getelementptr [4 x i8], ptr %i.aq, i64 %indvars.iv96
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !45 ; 3 uses
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fp ; 2 uses
  %.not.i5 = icmp eq i32 %i.fo, 0
  br i1 %.not.i5, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val6 = load i32, ptr %i.fq, align 1, !tbaa !45
  %.val = load i32, ptr %1, align 1, !tbaa !45
  %i.fr = icmp eq i32 %.val6, %.val
  br i1 %i.fr, label %bb.t, label %.thread25

bb.t:                                             ; preds = %bb.s
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.ft = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.fl, ptr noundef nonnull %i.fs, ptr noundef %2, ptr noundef %i.ep, ptr noundef %i.m)
  %i.fu = add i64 %i.ft, 4                        ; 4 uses
  %i.fv = icmp ugt i64 %i.fu, %.0100.i68
  br i1 %i.fv, label %bb.u, label %.thread25

bb.u:                                             ; preds = %bb.t
  %i.fw = sub i32 %i.fm, %i.fo
  %i.fx = zext i32 %i.fw to i64
  store i64 %i.fx, ptr %3, align 8, !tbaa !46
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 %i.fu
  %.not = icmp eq ptr %i.fy, %2
  br i1 %.not, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.thread25

.thread25:                                        ; preds = %bb.s, %bb.t, %bb.u
  %.2102.i29 = phi i64 [ %i.fu, %bb.u ], [ %.0100.i68, %bb.t ], [ %.0100.i68, %bb.s ] ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !14

._crit_edge:                                      ; preds = %.thread25, %ZSTD_HcFindBestMatch.exit
  %.1104.i.lcssa = phi i32 [ 0, %ZSTD_HcFindBestMatch.exit ], [ %i.fd, %.thread25 ]
  %.0100.i.lcssa = phi i64 [ %.3154.i, %ZSTD_HcFindBestMatch.exit ], [ %.2102.i29, %.thread25 ] ; 2 uses
  %i.fz = and i32 %i.ff, 255
  %i.ga = sub i32 %.0155.i.lcssa, %.1104.i.lcssa
  %i.gb = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 %i.fz) ; 4 uses
  %.not86 = icmp eq i32 %i.gb, 0
  br i1 %.not86, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %._crit_edge
  %wide.trip.count102 = zext nneg i32 %i.gb to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fj ; 9 uses
  %xtraiter131 = and i64 %wide.trip.count102, 7   ; 3 uses
  %i.gc = icmp samesign ult i32 %i.gb, 8
  br i1 %i.gc, label %.lr.ph75.epil.preheader, label %.lr.ph75.preheader.new

.lr.ph75.preheader.new:                           ; preds = %.lr.ph75.preheader
  %unroll_iter = and i64 %wide.trip.count102, 248
  br label %.lr.ph75

.lr.ph79.unr-lcssa:                               ; preds = %.lr.ph75
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph79, label %.lr.ph75.epil.preheader

.lr.ph75.epil.preheader:                          ; preds = %.lr.ph79.unr-lcssa, %.lr.ph75.preheader
  %indvars.iv99.epil.init = phi i64 [ 0, %.lr.ph75.preheader ], [ %indvars.iv.next100.7, %.lr.ph79.unr-lcssa ]
  %lcmp.mod133 = icmp ne i64 %xtraiter131, 0
  tail call void @llvm.assume(i1 %lcmp.mod133)
  br label %.lr.ph75.epil

.lr.ph75.epil:                                    ; preds = %.lr.ph75.epil, %.lr.ph75.epil.preheader
  %indvars.iv99.epil = phi i64 [ %indvars.iv99.epil.init, %.lr.ph75.epil.preheader ], [ %indvars.iv.next100.epil, %.lr.ph75.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph75.epil.preheader ], [ %epil.iter.next, %.lr.ph75.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99.epil
  %i.gd = load i32, ptr %gep.epil, align 4, !tbaa !45
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ge
  tail call void @llvm.prefetch.p0(ptr %i.gf, i32 0, i32 3, i32 1)
  %indvars.iv.next100.epil = add nuw nsw i64 %indvars.iv99.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter131
  br i1 %epil.iter.cmp.not, label %.lr.ph79, label %.lr.ph75.epil, !llvm.loop !201

.lr.ph79:                                         ; preds = %.lr.ph75.epil, %.lr.ph79.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !45
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg43 = add i32 %i.q, 3
  %i.gh = add i32 %.neg43, %.neg84
  %i.gi = lshr i32 %i.ff, 8
  %i.gj = zext nneg i32 %i.gi to i64
  br label %bb.v

.lr.ph75:                                         ; preds = %.lr.ph75, %.lr.ph75.preheader.new
  %indvars.iv99 = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %indvars.iv.next100.7, %.lr.ph75 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %niter.next.7, %.lr.ph75 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %i.gk = load i32, ptr %gep, align 4, !tbaa !45
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gl
  tail call void @llvm.prefetch.p0(ptr %i.gm, i32 0, i32 3, i32 1)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.go = load i32, ptr %gep.1, align 4, !tbaa !45
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gp
  tail call void @llvm.prefetch.p0(ptr %i.gq, i32 0, i32 3, i32 1)
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gs = load i32, ptr %gep.2, align 4, !tbaa !45
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gt
  tail call void @llvm.prefetch.p0(ptr %i.gu, i32 0, i32 3, i32 1)
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  %i.gw = load i32, ptr %gep.3, align 4, !tbaa !45
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gx
  tail call void @llvm.prefetch.p0(ptr %i.gy, i32 0, i32 3, i32 1)
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.ha = load i32, ptr %gep.4, align 4, !tbaa !45
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hb
  tail call void @llvm.prefetch.p0(ptr %i.hc, i32 0, i32 3, i32 1)
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.hd, i64 20
  %i.he = load i32, ptr %gep.5, align 4, !tbaa !45
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hf
  tail call void @llvm.prefetch.p0(ptr %i.hg, i32 0, i32 3, i32 1)
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hi = load i32, ptr %gep.6, align 4, !tbaa !45
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hj
  tail call void @llvm.prefetch.p0(ptr %i.hk, i32 0, i32 3, i32 1)
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.hl, i64 28
  %i.hm = load i32, ptr %gep.7, align 4, !tbaa !45
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hn
  tail call void @llvm.prefetch.p0(ptr %i.ho, i32 0, i32 3, i32 1)
  %indvars.iv.next100.7 = add nuw nsw i64 %indvars.iv99, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph79.unr-lcssa, label %.lr.ph75, !llvm.loop !15

bb.v:                                             ; preds = %.lr.ph79, %.thread35
  %indvars.iv104 = phi i64 [ %i.gj, %.lr.ph79 ], [ %indvars.iv.next105, %.thread35 ] ; 2 uses
  %.1.i78 = phi i32 [ 0, %.lr.ph79 ], [ %i.ic, %.thread35 ]
  %.3.i76 = phi i64 [ %.0100.i.lcssa, %.lr.ph79 ], [ %.5.i.ph, %.thread35 ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv104
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !45 ; 2 uses
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hr ; 2 uses
  %.val8 = load i32, ptr %i.hs, align 1, !tbaa !45
  %i.ht = icmp eq i32 %.val8, %.val7
  br i1 %i.ht, label %bb.w, label %.thread35

bb.w:                                             ; preds = %bb.v
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hv = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.gg, ptr noundef nonnull %i.hu, ptr noundef %2, ptr noundef %i.ep, ptr noundef %i.m)
  %i.hw = add i64 %i.hv, 4                        ; 4 uses
  %i.hx = icmp ugt i64 %i.hw, %.3.i76
  br i1 %i.hx, label %bb.x, label %.thread35

bb.x:                                             ; preds = %bb.w
  %i.hy = sub i32 %i.gh, %i.hq
  %i.hz = zext i32 %i.hy to i64
  store i64 %i.hz, ptr %3, align 8, !tbaa !46
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 %i.hw
  %i.ib = icmp eq ptr %i.ia, %2
  br i1 %i.ib, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.thread35

.thread35:                                        ; preds = %bb.v, %bb.x, %bb.w
  %.5.i.ph = phi i64 [ %i.hw, %bb.x ], [ %.3.i76, %bb.w ], [ %.3.i76, %bb.v ] ; 2 uses
  %i.ic = add nuw nsw i32 %.1.i78, 1              ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %exitcond106.not = icmp eq i32 %i.ic, %i.gb
  br i1 %exitcond106.not, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %bb.v, !llvm.loop !16

ZSTD_dedicatedDictSearch_lazy_search.exit:        ; preds = %bb.r, %bb.u, %.thread35, %bb.x, %._crit_edge
  %.2.i4 = phi i64 [ %.0100.i.lcssa, %._crit_edge ], [ %i.hw, %bb.x ], [ %.5.i.ph, %.thread35 ], [ %.0100.i68, %bb.r ], [ %i.fu, %bb.u ]
  ret i64 %.2.i4
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_HcFindBestMatch_dedicatedDictSearch_6(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.e = load i32, ptr %i.d, align 4, !tbaa !49   ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 2 uses
  %i.g = add i32 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37   ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !54   ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l ; 2 uses
  %i.n = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = trunc i64 %i.p to i32                    ; 8 uses
  %i.r = load i32, ptr %i.a, align 8, !tbaa !83
  %i.s = shl nuw i32 1, %i.r                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !81   ; 2 uses
  %i.v = sub i32 %i.q, %i.u
  %i.w = icmp ugt i32 %i.v, %i.s
  %i.x = sub i32 %i.q, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !56
  %.not.i = icmp eq i32 %i.z, 0
  %i.aa = select i1 %.not.i, i1 %i.w, i1 false
  %i.ab = select i1 %i.aa, i32 %i.x, i32 %i.u     ; 2 uses
  %i.ac = tail call i32 @llvm.usub.sat.i32(i32 %i.q, i32 %i.f)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !84
  %i.af = shl nuw i32 1, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !78 ; 5 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 264
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !43
  %.val13 = load i64, ptr %1, align 1, !tbaa !46
  %i.ak = mul i64 %.val13, -3523014627193847808   ; 2 uses
  %i.al = sub i32 66, %i.aj
  %i.am = zext nneg i32 %i.al to i64
  %i.an = lshr i64 %i.ak, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !38
  %.idx = shl i64 %i.an, 4
  %i.aq = getelementptr i8, ptr %i.ap, i64 %.idx  ; 6 uses
  tail call void @llvm.prefetch.p0(ptr %i.aq, i32 0, i32 3, i32 1)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !57
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !38 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !48
  %notmask.i.i = shl nsw i32 -1, %i.e
  %i.ax = xor i32 %notmask.i.i, -1                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
end_hunk_1
begin_hunk_2_@ZSTD_HcFindBestMatch_dedicatedDictSearch_6:bb.a
  %.not.i17 = icmp eq i64 %.val60.i, %.val.i
  br i1 %.not.i17, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dd = xor i64 %.val.i, %.val60.i
  %i.de = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dd, i1 true)
  %i.df = lshr i64 %i.de, 3
  br label %ZSTD_count.exit

.preheader.i:                                     ; preds = %bb.e, %bb.g
  %.pn.i = phi ptr [ %.049.i, %bb.g ], [ %1, %bb.e ]
  %.pn67.i = phi ptr [ %.045.i, %bb.g ], [ %i.cx, %bb.e ]
  %.045.i = getelementptr inbounds nuw i8, ptr %.pn67.i, i64 8 ; 3 uses
  %.049.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 8 ; 5 uses
  %i.dg = icmp ult ptr %.049.i, %i.cr
  br i1 %i.dg, label %bb.g, label %.loopexit.i

bb.g:                                             ; preds = %.preheader.i
  %.045.val.i = load i64, ptr %.045.i, align 1, !tbaa !46 ; 2 uses
  %.049.val.i = load i64, ptr %.049.i, align 1, !tbaa !46 ; 2 uses
  %.not59.i = icmp eq i64 %.045.val.i, %.049.val.i
  br i1 %.not59.i, label %.preheader.i, label %.thread63.i

.thread63.i:                                      ; preds = %bb.g
  %i.dh = xor i64 %.049.val.i, %.045.val.i
  %i.di = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 0) %i.dh, i1 true)
  %i.dj = lshr i64 %i.di, 3
  %i.dk = getelementptr inbounds nuw i8, ptr %.049.i, i64 %i.dj
  %i.dl = ptrtoint ptr %i.dk to i64
  %i.dm = sub i64 %i.dl, %i.n
  br label %ZSTD_count.exit

.loopexit.i:                                      ; preds = %.preheader.i, %bb.d
  %.251.i = phi ptr [ %1, %bb.d ], [ %.049.i, %.preheader.i ] ; 5 uses
  %.247.i = phi ptr [ %i.cx, %bb.d ], [ %.045.i, %.preheader.i ] ; 4 uses
  %i.dn = icmp ult ptr %.251.i, %i.ct
  br i1 %i.dn, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.loopexit.i
  %.247.val.i = load i32, ptr %.247.i, align 1, !tbaa !45
  %.251.val.i = load i32, ptr %.251.i, align 1, !tbaa !45
  %i.do = icmp eq i32 %.247.val.i, %.251.val.i
  br i1 %i.do, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dp = getelementptr inbounds nuw i8, ptr %.251.i, i64 4
  %i.dq = getelementptr inbounds nuw i8, ptr %.247.i, i64 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.loopexit.i
  %.352.i = phi ptr [ %i.dp, %bb.i ], [ %.251.i, %bb.h ], [ %.251.i, %.loopexit.i ] ; 5 uses
  %.348.i = phi ptr [ %i.dq, %bb.i ], [ %.247.i, %bb.h ], [ %.247.i, %.loopexit.i ] ; 4 uses
  %i.dr = icmp ult ptr %.352.i, %i.cu
  br i1 %i.dr, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.348.val.i = load i16, ptr %.348.i, align 1, !tbaa !60
  %.352.val.i = load i16, ptr %.352.i, align 1, !tbaa !60
  %i.ds = icmp eq i16 %.348.val.i, %.352.val.i
  br i1 %i.ds, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dt = getelementptr inbounds nuw i8, ptr %.352.i, i64 2
  %i.du = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.453.i = phi ptr [ %i.dt, %bb.l ], [ %.352.i, %bb.k ], [ %.352.i, %bb.j ] ; 4 uses
  %.4.i = phi ptr [ %i.du, %bb.l ], [ %.348.i, %bb.k ], [ %.348.i, %bb.j ]
  %i.dv = icmp ult ptr %.453.i, %2
  br i1 %i.dv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dw = load i8, ptr %.4.i, align 1, !tbaa !53
  %i.dx = load i8, ptr %.453.i, align 1, !tbaa !53
  %i.dy = icmp eq i8 %i.dw, %i.dx
  %spec.select.idx.i = zext i1 %i.dy to i64
  %spec.select.i16 = getelementptr inbounds nuw i8, ptr %.453.i, i64 %spec.select.idx.i
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.5.i14 = phi ptr [ %.453.i, %bb.m ], [ %spec.select.i16, %bb.n ]
  %i.dz = ptrtoint ptr %.5.i14 to i64
  %i.ea = sub i64 %i.dz, %i.n
  br label %ZSTD_count.exit

ZSTD_count.exit:                                  ; preds = %bb.o, %.thread63.i, %bb.f
  %.2.i = phi i64 [ %i.df, %bb.f ], [ %i.dm, %.thread63.i ], [ %i.ea, %bb.o ] ; 4 uses
  %i.eb = icmp ugt i64 %.2.i, %.0151.i57
  br i1 %i.eb, label %bb.p, label %ZSTD_count.exit.thread

bb.p:                                             ; preds = %ZSTD_count.exit
  %i.ec = sub i32 %i.cv, %.0148.i58
  %i.ed = zext i32 %i.ec to i64
  store i64 %i.ed, ptr %3, align 8, !tbaa !46
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 %.2.i
  %i.ef = icmp eq ptr %i.ee, %2
  br i1 %i.ef, label %ZSTD_HcFindBestMatch.exit, label %ZSTD_count.exit.thread

ZSTD_count.exit.thread:                           ; preds = %bb.c, %bb.p, %ZSTD_count.exit
  %.1152.i = phi i64 [ %.2.i, %bb.p ], [ %.0151.i57, %ZSTD_count.exit ], [ %.0151.i57, %bb.c ] ; 3 uses
  %.not160.i = icmp ugt i32 %.0148.i58, %i.ac
  br i1 %.not160.i, label %bb.q, label %ZSTD_HcFindBestMatch.exit

bb.q:                                             ; preds = %ZSTD_count.exit.thread
  %i.eg = and i32 %.0148.i58, %i.g
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.eh
  %i.ej = add i32 %.0155.i56, -1                  ; 3 uses
  %.0148.i = load i32, ptr %i.ei, align 4, !tbaa !45 ; 2 uses
  %i.ek = icmp uge i32 %.0148.i, %i.ab
  %i.el = icmp ne i32 %i.ej, 0
  %i.em = and i1 %i.el, %i.ek
  br i1 %i.em, label %bb.c, label %ZSTD_HcFindBestMatch.exit, !llvm.loop !7

ZSTD_HcFindBestMatch.exit:                        ; preds = %bb.q, %bb.p, %ZSTD_count.exit.thread, %.split53.us
  %.0155.i.lcssa = phi i32 [ %i.af, %.split53.us ], [ %.0155.i56, %ZSTD_count.exit.thread ], [ %.0155.i56, %bb.p ], [ %i.ej, %bb.q ] ; 3 uses
  %.3154.i = phi i64 [ 3, %.split53.us ], [ %.1152.i, %ZSTD_count.exit.thread ], [ %.2.i, %bb.p ], [ %.1152.i, %bb.q ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !37 ; 15 uses
  %i.ep = load ptr, ptr %i.ah, align 8, !tbaa !79 ; 3 uses
  %i.eq = load i32, ptr %i.aq, align 4, !tbaa !45
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.er
  tail call void @llvm.prefetch.p0(ptr %i.es, i32 0, i32 3, i32 1)
  %i.et = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !45
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ev
  tail call void @llvm.prefetch.p0(ptr %i.ew, i32 0, i32 3, i32 1)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !45
  %i.ez = zext i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ez
  tail call void @llvm.prefetch.p0(ptr %i.fa, i32 0, i32 3, i32 1)
  %i.fb = ptrtoint ptr %i.ep to i64
  %i.fc = ptrtoint ptr %i.eo to i64
  %.neg.i.neg = sub i64 %i.fb, %i.fc
  %.neg107.i.neg = trunc i64 %.neg.i.neg to i32
  %.neg84 = sub i32 %.neg107.i.neg, %i.k          ; 2 uses
  %i.fd = tail call i32 @llvm.umin.i32(i32 %.0155.i.lcssa, i32 3) ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !45 ; 3 uses
  %i.fg = lshr i32 %i.ff, 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ah, i64 128
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !39 ; 3 uses
  %i.fj = zext nneg i32 %i.fg to i64              ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fj
  tail call void @llvm.prefetch.p0(ptr %i.fk, i32 0, i32 3, i32 1)
  %.not85 = icmp eq i32 %.0155.i.lcssa, 0
  br i1 %.not85, label %._crit_edge, label %.lr.ph70

.lr.ph70:                                         ; preds = %ZSTD_HcFindBestMatch.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg45 = add i32 %i.q, 3
  %i.fm = add i32 %.neg45, %.neg84
  %wide.trip.count = zext nneg i32 %i.fd to i64
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph70, %.thread25
  %indvars.iv96 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next97, %.thread25 ] ; 2 uses
  %.0100.i68 = phi i64 [ %.3154.i, %.lr.ph70 ], [ %.2102.i29, %.thread25 ] ; 4 uses
  %i.fn = getelementptr [4 x i8], ptr %i.aq, i64 %indvars.iv96
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !45 ; 3 uses
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.fp ; 2 uses
  %.not.i5 = icmp eq i32 %i.fo, 0
  br i1 %.not.i5, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.val6 = load i32, ptr %i.fq, align 1, !tbaa !45
  %.val = load i32, ptr %1, align 1, !tbaa !45
  %i.fr = icmp eq i32 %.val6, %.val
  br i1 %i.fr, label %bb.t, label %.thread25

bb.t:                                             ; preds = %bb.s
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.ft = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.fl, ptr noundef nonnull %i.fs, ptr noundef %2, ptr noundef %i.ep, ptr noundef %i.m)
  %i.fu = add i64 %i.ft, 4                        ; 4 uses
  %i.fv = icmp ugt i64 %i.fu, %.0100.i68
  br i1 %i.fv, label %bb.u, label %.thread25

bb.u:                                             ; preds = %bb.t
  %i.fw = sub i32 %i.fm, %i.fo
  %i.fx = zext i32 %i.fw to i64
  store i64 %i.fx, ptr %3, align 8, !tbaa !46
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 %i.fu
  %.not = icmp eq ptr %i.fy, %2
  br i1 %.not, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.thread25

.thread25:                                        ; preds = %bb.s, %bb.t, %bb.u
  %.2102.i29 = phi i64 [ %i.fu, %bb.u ], [ %.0100.i68, %bb.t ], [ %.0100.i68, %bb.s ] ; 2 uses
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next97, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !14

._crit_edge:                                      ; preds = %.thread25, %ZSTD_HcFindBestMatch.exit
  %.1104.i.lcssa = phi i32 [ 0, %ZSTD_HcFindBestMatch.exit ], [ %i.fd, %.thread25 ]
  %.0100.i.lcssa = phi i64 [ %.3154.i, %ZSTD_HcFindBestMatch.exit ], [ %.2102.i29, %.thread25 ] ; 2 uses
  %i.fz = and i32 %i.ff, 255
  %i.ga = sub i32 %.0155.i.lcssa, %.1104.i.lcssa
  %i.gb = tail call i32 @llvm.umin.i32(i32 %i.ga, i32 %i.fz) ; 4 uses
  %.not86 = icmp eq i32 %i.gb, 0
  br i1 %.not86, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %._crit_edge
  %wide.trip.count102 = zext nneg i32 %i.gb to i64 ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fj ; 9 uses
  %xtraiter131 = and i64 %wide.trip.count102, 7   ; 3 uses
  %i.gc = icmp samesign ult i32 %i.gb, 8
  br i1 %i.gc, label %.lr.ph75.epil.preheader, label %.lr.ph75.preheader.new

.lr.ph75.preheader.new:                           ; preds = %.lr.ph75.preheader
  %unroll_iter = and i64 %wide.trip.count102, 248
  br label %.lr.ph75

.lr.ph79.unr-lcssa:                               ; preds = %.lr.ph75
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph79, label %.lr.ph75.epil.preheader

.lr.ph75.epil.preheader:                          ; preds = %.lr.ph79.unr-lcssa, %.lr.ph75.preheader
  %indvars.iv99.epil.init = phi i64 [ 0, %.lr.ph75.preheader ], [ %indvars.iv.next100.7, %.lr.ph79.unr-lcssa ]
  %lcmp.mod133 = icmp ne i64 %xtraiter131, 0
  tail call void @llvm.assume(i1 %lcmp.mod133)
  br label %.lr.ph75.epil

.lr.ph75.epil:                                    ; preds = %.lr.ph75.epil, %.lr.ph75.epil.preheader
  %indvars.iv99.epil = phi i64 [ %indvars.iv99.epil.init, %.lr.ph75.epil.preheader ], [ %indvars.iv.next100.epil, %.lr.ph75.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph75.epil.preheader ], [ %epil.iter.next, %.lr.ph75.epil ]
  %gep.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99.epil
  %i.gd = load i32, ptr %gep.epil, align 4, !tbaa !45
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.ge
  tail call void @llvm.prefetch.p0(ptr %i.gf, i32 0, i32 3, i32 1)
  %indvars.iv.next100.epil = add nuw nsw i64 %indvars.iv99.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter131
  br i1 %epil.iter.cmp.not, label %.lr.ph79, label %.lr.ph75.epil, !llvm.loop !202

.lr.ph79:                                         ; preds = %.lr.ph75.epil, %.lr.ph79.unr-lcssa
  %.val7 = load i32, ptr %1, align 1, !tbaa !45
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.neg43 = add i32 %i.q, 3
  %i.gh = add i32 %.neg43, %.neg84
  %i.gi = lshr i32 %i.ff, 8
  %i.gj = zext nneg i32 %i.gi to i64
  br label %bb.v

.lr.ph75:                                         ; preds = %.lr.ph75, %.lr.ph75.preheader.new
  %indvars.iv99 = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %indvars.iv.next100.7, %.lr.ph75 ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %niter.next.7, %.lr.ph75 ]
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %i.gk = load i32, ptr %gep, align 4, !tbaa !45
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gl
  tail call void @llvm.prefetch.p0(ptr %i.gm, i32 0, i32 3, i32 1)
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.1 = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.go = load i32, ptr %gep.1, align 4, !tbaa !45
  %i.gp = zext i32 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gp
  tail call void @llvm.prefetch.p0(ptr %i.gq, i32 0, i32 3, i32 1)
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gs = load i32, ptr %gep.2, align 4, !tbaa !45
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gt
  tail call void @llvm.prefetch.p0(ptr %i.gu, i32 0, i32 3, i32 1)
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.3 = getelementptr inbounds nuw i8, ptr %i.gv, i64 12
  %i.gw = load i32, ptr %gep.3, align 4, !tbaa !45
  %i.gx = zext i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.gx
  tail call void @llvm.prefetch.p0(ptr %i.gy, i32 0, i32 3, i32 1)
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.4 = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.ha = load i32, ptr %gep.4, align 4, !tbaa !45
  %i.hb = zext i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hb
  tail call void @llvm.prefetch.p0(ptr %i.hc, i32 0, i32 3, i32 1)
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.5 = getelementptr inbounds nuw i8, ptr %i.hd, i64 20
  %i.he = load i32, ptr %gep.5, align 4, !tbaa !45
  %i.hf = zext i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hf
  tail call void @llvm.prefetch.p0(ptr %i.hg, i32 0, i32 3, i32 1)
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.6 = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  %i.hi = load i32, ptr %gep.6, align 4, !tbaa !45
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hj
  tail call void @llvm.prefetch.p0(ptr %i.hk, i32 0, i32 3, i32 1)
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv99
  %gep.7 = getelementptr inbounds nuw i8, ptr %i.hl, i64 28
  %i.hm = load i32, ptr %gep.7, align 4, !tbaa !45
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hn
  tail call void @llvm.prefetch.p0(ptr %i.ho, i32 0, i32 3, i32 1)
  %indvars.iv.next100.7 = add nuw nsw i64 %indvars.iv99, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.lr.ph79.unr-lcssa, label %.lr.ph75, !llvm.loop !15

bb.v:                                             ; preds = %.lr.ph79, %.thread35
  %indvars.iv104 = phi i64 [ %i.gj, %.lr.ph79 ], [ %indvars.iv.next105, %.thread35 ] ; 2 uses
  %.1.i78 = phi i32 [ 0, %.lr.ph79 ], [ %i.ic, %.thread35 ]
  %.3.i76 = phi i64 [ %.0100.i.lcssa, %.lr.ph79 ], [ %.5.i.ph, %.thread35 ] ; 3 uses
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %indvars.iv104
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !45 ; 2 uses
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.hr ; 2 uses
  %.val8 = load i32, ptr %i.hs, align 1, !tbaa !45
  %i.ht = icmp eq i32 %.val8, %.val7
  br i1 %i.ht, label %bb.w, label %.thread35

bb.w:                                             ; preds = %bb.v
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  %i.hv = tail call fastcc i64 @ZSTD_count_2segments(ptr noundef nonnull %i.gg, ptr noundef nonnull %i.hu, ptr noundef %2, ptr noundef %i.ep, ptr noundef %i.m)
  %i.hw = add i64 %i.hv, 4                        ; 4 uses
  %i.hx = icmp ugt i64 %i.hw, %.3.i76
  br i1 %i.hx, label %bb.x, label %.thread35

bb.x:                                             ; preds = %bb.w
  %i.hy = sub i32 %i.gh, %i.hq
  %i.hz = zext i32 %i.hy to i64
  store i64 %i.hz, ptr %3, align 8, !tbaa !46
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 %i.hw
  %i.ib = icmp eq ptr %i.ia, %2
  br i1 %i.ib, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %.thread35

.thread35:                                        ; preds = %bb.v, %bb.x, %bb.w
  %.5.i.ph = phi i64 [ %i.hw, %bb.x ], [ %.3.i76, %bb.w ], [ %.3.i76, %bb.v ] ; 2 uses
  %i.ic = add nuw nsw i32 %.1.i78, 1              ; 2 uses
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1
  %exitcond106.not = icmp eq i32 %i.ic, %i.gb
  br i1 %exitcond106.not, label %ZSTD_dedicatedDictSearch_lazy_search.exit, label %bb.v, !llvm.loop !16

ZSTD_dedicatedDictSearch_lazy_search.exit:        ; preds = %bb.r, %bb.u, %.thread35, %bb.x, %._crit_edge
  %.2.i4 = phi i64 [ %.0100.i.lcssa, %._crit_edge ], [ %i.hw, %bb.x ], [ %.5.i.ph, %.thread35 ], [ %.0100.i68, %bb.r ], [ %i.fu, %bb.u ]
  ret i64 %.2.i4
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i64 @ZSTD_RowFindBestMatch_dedicatedDictSearch_4_4(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr nofree noundef readnone captures(address) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !51   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.n ; 2 uses
  %i.p = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.q = ptrtoint ptr %i.k to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = trunc i64 %i.r to i32                    ; 10 uses
  %i.t = load i32, ptr %i.i, align 8, !tbaa !83
  %i.u = shl nuw i32 1, %i.t                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !81   ; 2 uses
  %i.x = sub i32 %i.s, %i.w
  %i.y = icmp ugt i32 %i.x, %i.u
  %i.z = sub i32 %i.s, %i.u
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !56
  %.not.i = icmp eq i32 %i.ab, 0
  %i.ac = select i1 %.not.i, i1 %i.y, i1 false
  %i.ad = select i1 %i.ac, i32 %i.z, i32 %i.w
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !84 ; 3 uses
  %..i = tail call i32 @llvm.umin.i32(i32 %i.af, i32 4)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52 ; 2 uses
  %i.ai = shl nuw nsw i32 1, %..i                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !78 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 264
  %i.am = load i32, ptr %i.al, align 8, !tbaa !43
  %.val9 = load i32, ptr %1, align 1, !tbaa !45
  %i.an = mul i32 %.val9, -1640531535             ; 2 uses
  %i.ao = sub i32 34, %i.am
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 112 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar
  tail call void @llvm.prefetch.p0(ptr %i.au, i32 0, i32 3, i32 1)
  %i.av = icmp ugt i32 %i.af, 4
  %i.aw = add i32 %i.af, -4
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 %i.ax, i32 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 300
end_hunk_2
