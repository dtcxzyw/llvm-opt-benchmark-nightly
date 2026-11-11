Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/jpeg2000dec?download=true
inline.NumInlined: 106
inline.NumDeleted: 40
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 21
begin_hunk_0_@jpeg2000_decode_frame:bb.a
  %i.kh = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.kh, i32 noundef 24, ptr noundef nonnull @.str.14) #10
  br label %bb.bh

bb.bb:                                            ; preds = %bb.az
  %i.ki = icmp ugt i8 %i.jt, %i.jw
  br i1 %i.ki, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.kj = sub nuw nsw i64 %i.ju, %i.jx
  %i.kk = uitofp nsz nneg i64 %i.kj to double
  %i.kl = tail call nsz double @llvm.pow.f64(double 1.000000e+01, double %i.kk)
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  %i.km = sub nuw nsw i64 %i.jx, %i.ju
  %i.kn = uitofp nsz nneg i64 %i.km to double
  %i.ko = tail call nsz double @llvm.pow.f64(double 1.000000e+01, double %i.kn)
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0191.i = phi double [ %i.kl, %bb.bc ], [ 1.000000e+00, %bb.bd ] ; 2 uses
  %.0.i71 = phi double [ 1.000000e+00, %bb.bc ], [ %i.ko, %bb.bd ] ; 2 uses
  %narrow.i = mul nuw i32 %i.jn, %i.jj            ; 2 uses
  %i.kp = zext i32 %narrow.i to i64
  %i.kq = udiv i64 9223372036854775807, %i.kp
  %i.kr = uitofp nsz nneg i64 %i.kq to double
  %i.ks = fcmp nsz olt double %.0.i71, %i.kr
  br i1 %i.ks, label %bb.bf, label %.thread.i

bb.bf:                                            ; preds = %bb.be
  %narrow230.i = mul nuw i32 %i.jr, %i.jf         ; 2 uses
  %i.kt = zext i32 %narrow230.i to i64
  %i.ku = udiv i64 9223372036854775807, %i.kt
  %i.kv = uitofp nsz nneg i64 %i.ku to double
  %i.kw = fcmp nsz olt double %.0191.i, %i.kv
  br i1 %i.kw, label %bb.bg, label %.thread.i

bb.bg:                                            ; preds = %bb.bf
  %i.kx = uitofp i32 %narrow.i to double
  %i.ky = fmul nsz double %.0.i71, %i.kx
  %i.kz = fptosi double %i.ky to i64
  %i.la = uitofp i32 %narrow230.i to double
  %i.lb = fmul nsz double %.0191.i, %i.la
  %i.lc = fptosi double %i.lb to i64
  %i.ld = tail call i32 @av_reduce(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ad, i64 noundef %i.kz, i64 noundef %i.lc, i64 noundef 2147483647) #10 ; 0 uses
  %.pre269.i = load ptr, ptr %i.p, align 8, !tbaa !40
  %.pre270.i = load ptr, ptr %i.m, align 8, !tbaa !39 ; 2 uses
  %.pre275.i = ptrtoint ptr %.pre269.i to i64
  %.pre277.i = ptrtoint ptr %.pre270.i to i64
  br label %.thread.i

.thread.i:                                        ; preds = %bb.av, %bb.am, %bb.bg, %bb.bf, %bb.be, %bb.aw, %bb.ap, %bb.ac, %bb.y, %bb.x
  %.pre-phi278.i = phi i64 [ %i.cx, %bb.am ], [ %i.cx, %bb.aw ], [ %i.cx, %bb.ap ], [ %i.cx, %bb.ac ], [ %i.cx, %bb.be ], [ %i.cx, %bb.bf ], [ %.pre277.i, %bb.bg ], [ %i.cx, %bb.x ], [ %i.cx, %bb.y ], [ %i.cx, %bb.av ]
  %.pre-phi276.i = phi i64 [ %i.cl, %bb.am ], [ %i.cl, %bb.aw ], [ %i.cl, %bb.ap ], [ %i.cl, %bb.ac ], [ %i.cl, %bb.be ], [ %i.cl, %bb.bf ], [ %.pre275.i, %bb.bg ], [ %i.cl, %bb.x ], [ %i.cl, %bb.y ], [ %i.cl, %bb.av ]
  %i.le = phi ptr [ %i.cv, %bb.am ], [ %i.cv, %bb.aw ], [ %i.cv, %bb.ap ], [ %i.cv, %bb.ac ], [ %i.cv, %bb.be ], [ %i.cv, %bb.bf ], [ %.pre270.i, %bb.bg ], [ %i.cv, %bb.x ], [ %i.cv, %bb.y ], [ %i.cv, %bb.av ]
  %i.lf = sub i64 %.pre-phi276.i, %.pre-phi278.i
  %i.lg = trunc i64 %i.lf to i32
  %i.lh = icmp slt i32 %i.db, 0
  %..i246.i = tail call i32 @llvm.smin.i32(i32 %i.db, i32 %i.lg)
  %.0.i247.i = select i1 %i.lh, i32 0, i32 %..i246.i
  %i.li = sext i32 %.0.i247.i to i64
  %i.lj = getelementptr inbounds i8, ptr %i.le, i64 %i.li
  store ptr %i.lj, ptr %i.f, align 8, !tbaa !38
  br label %bb.bh

bb.bh:                                            ; preds = %.thread.i, %bb.ba, %bb.ay, %bb.an
  %i.lk = sub nuw i32 %.0200.i, %i.db
  %i.ll = icmp ugt i32 %i.lk, 7
  br i1 %i.ll, label %.preheader.i, label %..loopexit.loopexit_crit_edge.i, !llvm.loop !131

..loopexit.loopexit_crit_edge.i:                  ; preds = %bb.bh
  %.pre271.pre.i = load ptr, ptr %i.p, align 8, !tbaa !40 ; 2 uses
  %.pre281.i = ptrtoint ptr %.pre271.pre.i to i64
  br label %.loopexit.loopexit.i, !llvm.loop !131

bb.bi:                                            ; preds = %bb.t
  %i.lm = add nsw i32 %.0198262.i, -1
  br label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.u, %.preheader.i, %..loopexit.loopexit_crit_edge.i
  %.pre274.pre-phi.i = phi i64 [ %.pre281.i, %..loopexit.loopexit_crit_edge.i ], [ %i.cl, %.preheader.i ], [ %i.cl, %bb.u ]
  %.pre271.i = phi ptr [ %.pre271.pre.i, %..loopexit.loopexit_crit_edge.i ], [ %i.cj, %.preheader.i ], [ %i.cj, %bb.u ]
  %.pre272.i = load ptr, ptr %i.m, align 8, !tbaa !39 ; 2 uses
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.bi
  %i.ln = phi ptr [ %.pre272.i, %.loopexit.loopexit.i ], [ %i.ai, %bb.bi ]
  %i.lo = phi ptr [ %.pre272.i, %.loopexit.loopexit.i ], [ %i.bz, %bb.bi ] ; 3 uses
  %.pre-phi.i = phi i64 [ %.pre274.pre-phi.i, %.loopexit.loopexit.i ], [ %i.am, %bb.bi ]
  %i.lp = phi ptr [ %.pre271.i, %.loopexit.loopexit.i ], [ %i.ak, %bb.bi ]
  %.1199.i = phi i32 [ %.0198262.i, %.loopexit.loopexit.i ], [ %i.lm, %bb.bi ] ; 2 uses
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = sub i64 %.pre-phi.i, %i.lq
  %i.ls = trunc i64 %i.lr to i32
  %i.lt = icmp slt i32 %.0200.i, 0
  %..i248.i = tail call i32 @llvm.smin.i32(i32 %.0200.i, i32 %i.ls)
  %.0.i249.i = select i1 %i.lt, i32 0, i32 %..i248.i
  %i.lu = sext i32 %.0.i249.i to i64
  %i.lv = getelementptr inbounds i8, ptr %i.lo, i64 %i.lu ; 2 uses
  store ptr %i.lv, ptr %i.f, align 8, !tbaa !38
  %.not.i = icmp eq i32 %.1199.i, 0
  br i1 %.not.i, label %jp2_find_codestream.exit, label %bb.h, !llvm.loop !132

jp2_find_codestream.exit:                         ; preds = %.loopexit.i, %bb.s, %bb.h, %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.7) #10
  br label %jpeg2000_read_main_headers.exit.thread

bb.bj:                                            ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.lw = ptrtoint ptr %i.o to i64
  store ptr %i.h, ptr %i.f, align 8, !tbaa !38
  br label %jp2_find_codestream.exit.thread

jp2_find_codestream.exit.thread:                  ; preds = %bb.o, %bb.r, %bb.l, %bb.m, %bb.p, %bb.v, %bb.bj
  %.pre-phi = phi i64 [ %i.cl, %bb.v ], [ %i.lw, %bb.bj ], [ %i.am, %bb.p ], [ %i.am, %bb.m ], [ %i.am, %bb.l ], [ %i.am, %bb.r ], [ %i.am, %bb.o ] ; 4 uses
  %.promoted = phi ptr [ %i.ct, %bb.v ], [ %i.h, %bb.bj ], [ %i.ca, %bb.r ], [ %i.ba, %bb.l ], [ %i.ba, %bb.m ], [ %i.au, %bb.p ], [ %i.au, %bb.o ] ; 3 uses
  %i.lx = phi ptr [ %i.cj, %bb.v ], [ %i.o, %bb.bj ], [ %i.ak, %bb.p ], [ %i.ak, %bb.m ], [ %i.ak, %bb.l ], [ %i.ak, %bb.r ], [ %i.ak, %bb.o ]
  %i.ly = ptrtoint ptr %.promoted to i64
  %i.lz = sub i64 %.pre-phi, %i.ly                ; 2 uses
  %i.ma = trunc i64 %i.lz to i32
  %i.mb = icmp sgt i32 %i.ma, 2
  br i1 %i.mb, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %jp2_find_codestream.exit.thread, %bytestream2_peek_be16.exit.thread
  %i.mc = phi i64 [ %i.mi, %bytestream2_peek_be16.exit.thread ], [ %i.lz, %jp2_find_codestream.exit.thread ] ; 2 uses
  %i.md = phi ptr [ %i.mg, %bytestream2_peek_be16.exit.thread ], [ %.promoted, %jp2_find_codestream.exit.thread ] ; 3 uses
  %i.me = icmp slt i64 %i.mc, 2
  br i1 %i.me, label %bytestream2_peek_be16.exit.thread, label %bytestream2_peek_be16.exit

bytestream2_peek_be16.exit:                       ; preds = %.lr.ph
  %i.mf = load i16, ptr %i.md, align 1, !tbaa !43
  %.not62 = icmp eq i16 %i.mf, 20479
  br i1 %.not62, label %.critedge, label %bytestream2_peek_be16.exit.thread

bytestream2_peek_be16.exit.thread:                ; preds = %.lr.ph, %bytestream2_peek_be16.exit
  %..i = tail call i64 @llvm.smin.i64(i64 %i.mc, i64 1)
  %i.mg = getelementptr inbounds i8, ptr %i.md, i64 %..i ; 4 uses
  store ptr %i.mg, ptr %i.f, align 8, !tbaa !38
  %i.mh = ptrtoint ptr %i.mg to i64
  %i.mi = sub i64 %.pre-phi, %i.mh                ; 2 uses
  %i.mj = trunc i64 %i.mi to i32
  %i.mk = icmp sgt i32 %i.mj, 2
  br i1 %i.mk, label %.lr.ph, label %.critedge, !llvm.loop !133

.critedge:                                        ; preds = %bytestream2_peek_be16.exit, %bytestream2_peek_be16.exit.thread, %jp2_find_codestream.exit.thread
  %.lcssa221 = phi ptr [ %.promoted, %jp2_find_codestream.exit.thread ], [ %i.mg, %bytestream2_peek_be16.exit.thread ], [ %i.md, %bytestream2_peek_be16.exit ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.lcssa221, i64 2 ; 3 uses
  store ptr %i.ml, ptr %i.f, align 8, !tbaa !42
  %i.mm = load i16, ptr %.lcssa221, align 1, !tbaa !43
  %.not63 = icmp eq i16 %i.mm, 20479
  br i1 %.not63, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %.critedge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.8) #10
  br label %jpeg2000_read_main_headers.exit.thread

bb.bl:                                            ; preds = %.critedge
  %i.mn = getelementptr inbounds nuw i8, ptr %i.d, i64 1236 ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.d, i64 1588 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.d, i64 2788 ; 2 uses
  %i.mq = ptrtoint ptr %i.ml to i64
  %i.mr = sub i64 %.pre-phi, %i.mq
  %i.ms = trunc i64 %i.mr to i32
  %i.mt = icmp slt i32 %i.ms, 2
  br i1 %i.mt, label %._crit_edge.i, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %bb.bl
  %i.mu = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.mv = getelementptr inbounds nuw i8, ptr %i.d, i64 3128 ; 5 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.d, i64 76 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.d, i64 96 ; 6 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.d, i64 104 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.d, i64 3163 ; 8 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.d, i64 3160 ; 9 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 156 ; 14 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.ne = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.nf = getelementptr inbounds nuw i8, ptr %i.d, i64 1216 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 1220 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %4, i64 320
  %i.ni = getelementptr inbounds nuw i8, ptr %i.d, i64 3116
  %i.nj = getelementptr inbounds nuw i8, ptr %i.d, i64 3162 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %6, i64 11
  %i.nl = getelementptr inbounds nuw i8, ptr %6, i64 15
  %i.nm = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.nn = getelementptr inbounds nuw i8, ptr %6, i64 13
  %i.no = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.np = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.nq = getelementptr inbounds nuw i8, ptr %i.d, i64 3161
  %i.nr = getelementptr inbounds nuw i8, ptr %i.d, i64 3164
  %i.ns = getelementptr inbounds nuw i8, ptr %i.d, i64 3165 ; 4 uses
  br label %bb.bm

._crit_edge.i:                                    ; preds = %bb.hs, %bb.bl
  %i.nt = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.nt, i32 noundef 16, ptr noundef nonnull @.str.15) #10
  br label %jpeg2000_read_main_headers.exit

bb.bm:                                            ; preds = %bb.hs, %.lr.ph.i72
  %i.nu = phi ptr [ %i.lx, %.lr.ph.i72 ], [ %i.anw, %bb.hs ] ; 35 uses
  %i.nv = phi i64 [ %.pre-phi, %.lr.ph.i72 ], [ %i.anx, %bb.hs ]
  %i.nw = phi ptr [ %i.ml, %.lr.ph.i72 ], [ %i.anv, %bb.hs ] ; 18 uses
  %.0166445.i = phi i8 [ 0, %.lr.ph.i72 ], [ %.3.i75, %bb.hs ] ; 43 uses
  %.0169444.i = phi ptr [ %i.mu, %.lr.ph.i72 ], [ %.2171.i, %bb.hs ] ; 44 uses
  %.0172443.i = phi ptr [ %i.mp, %.lr.ph.i72 ], [ %.2174.i, %bb.hs ] ; 45 uses
  %.0175442.i = phi ptr [ %i.mo, %.lr.ph.i72 ], [ %.2177.i, %bb.hs ] ; 42 uses
  %.0178441.i = phi ptr [ %i.mn, %.lr.ph.i72 ], [ %.2180.i, %bb.hs ] ; 42 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 2 ; 5 uses
  store ptr %i.nx, ptr %i.f, align 8, !tbaa !42
  %i.ny = load i16, ptr %i.nw, align 1, !tbaa !43
  %i.nz = tail call i16 @llvm.bswap.i16(i16 %i.ny) ; 3 uses
  %i.oa = zext i16 %i.nz to i32                   ; 3 uses
  %i.ob = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.oc = ptrtoint ptr %i.nx to i64               ; 3 uses
  %i.od = ptrtoint ptr %i.ob to i64               ; 3 uses
  %.neg.i = sub i64 %i.od, %i.oc
  %.neg301.i = trunc i64 %.neg.i to i32
  %i.oe = and i32 %i.oa, 65520
  %or.cond.i73 = icmp eq i32 %i.oe, 65328
  br i1 %or.cond.i73, label %bb.hs, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  switch i16 %i.nz, label %bb.ce [
    i16 -109, label %bb.bo
    i16 -39, label %jpeg2000_read_main_headers.exit
  ]

bb.bo:                                            ; preds = %bb.bn
  %i.of = load ptr, ptr %i.mv, align 8, !tbaa !48 ; 2 uses
  %.not216.i = icmp eq ptr %i.of, null
  br i1 %.not216.i, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.og = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.og, i32 noundef 16, ptr noundef nonnull @.str.16) #10
  br label %jpeg2000_read_main_headers.exit.thread

bb.bq:                                            ; preds = %bb.bo
  %i.oh = load i32, ptr %i.q, align 4, !tbaa !41  ; 2 uses
  %i.oi = icmp slt i32 %i.oh, 0
  br i1 %i.oi, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.oj = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.oj, i32 noundef 16, ptr noundef nonnull @.str.17) #10
  br label %jpeg2000_read_main_headers.exit.thread

bb.bs:                                            ; preds = %bb.bq
  %i.ok = zext nneg i32 %i.oh to i64
  %i.ol = getelementptr inbounds nuw [4016 x i8], ptr %i.of, i64 %i.ok ; 8 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 1896
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 3992
  %i.oo = load i16, ptr %i.on, align 8, !tbaa !52 ; 2 uses
  %i.op = zext i16 %i.oo to i64
  %i.oq = getelementptr inbounds nuw [64 x i8], ptr %i.om, i64 %i.op ; 7 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 8 ; 2 uses
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !149
  %i.ot = icmp ult ptr %i.os, %i.nx
  br i1 %i.ot, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.ou = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ou, i32 noundef 16, ptr noundef nonnull @.str.18) #10
  br label %jpeg2000_read_main_headers.exit.thread

bb.bu:                                            ; preds = %bb.bs
  %i.ov = load i8, ptr %i.mw, align 4, !tbaa !53
  %.not217.i = icmp eq i8 %i.ov, 0
  br i1 %.not217.i, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ow = load ptr, ptr %i.my, align 8, !tbaa !40 ; 3 uses
  %i.ox = load ptr, ptr %i.mx, align 8, !tbaa !38 ; 3 uses
  %i.oy = ptrtoint ptr %i.ow to i64               ; 2 uses
  %i.oz = ptrtoint ptr %i.ox to i64
  %i.pa = sub i64 %i.oy, %i.oz
  %i.pb = icmp slt i64 %i.pa, 4
  br i1 %i.pb, label %bytestream2_get_be32.exit.thread.i, label %bytestream2_get_be32.exit.i

bytestream2_get_be32.exit.thread.i:               ; preds = %bb.bv
  store ptr %i.ow, ptr %i.mx, align 8, !tbaa !38
  br label %bb.bw

bytestream2_get_be32.exit.i:                      ; preds = %bb.bv
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ox, i64 4 ; 3 uses
  store ptr %i.pc, ptr %i.mx, align 8, !tbaa !42
  %i.pd = load i32, ptr %i.ox, align 1, !tbaa !43
  %i.pe = tail call i32 @llvm.bswap.i32(i32 %i.pd) ; 2 uses
  %i.pf = ptrtoint ptr %i.pc to i64
  %i.pg = sub i64 %i.oy, %i.pf
  %i.ph = trunc i64 %i.pg to i32
  %.not218.i = icmp ugt i32 %i.pe, %i.ph
  br i1 %.not218.i, label %jpeg2000_read_main_headers.exit.thread, label %bb.bw

bb.bw:                                            ; preds = %bytestream2_get_be32.exit.i, %bytestream2_get_be32.exit.thread.i
  %i.pi = phi ptr [ %i.ow, %bytestream2_get_be32.exit.thread.i ], [ %i.pc, %bytestream2_get_be32.exit.i ] ; 4 uses
  %.0.i229274.i = phi i32 [ 0, %bytestream2_get_be32.exit.thread.i ], [ %i.pe, %bytestream2_get_be32.exit.i ] ; 2 uses
  %i.pj = icmp ne ptr %i.pi, null
  %i.pk = icmp sgt i32 %.0.i229274.i, -1
  %or.cond.i224.i = and i1 %i.pj, %i.pk
  br i1 %or.cond.i224.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 141) #10
  tail call void @abort() #11
  unreachable

bb.by:                                            ; preds = %bb.bw
  %i.pl = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  store ptr %i.pi, ptr %i.pl, align 8, !tbaa !38
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oq, i64 32
  store ptr %i.pi, ptr %i.pm, align 8, !tbaa !39
  %i.pn = zext nneg i32 %.0.i229274.i to i64      ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.pn
  %i.pp = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  store ptr %i.po, ptr %i.pp, align 8, !tbaa !40
  %i.pq = load ptr, ptr %i.my, align 8, !tbaa !40
  %i.pr = load ptr, ptr %i.mx, align 8, !tbaa !38 ; 2 uses
  %i.ps = ptrtoint ptr %i.pq to i64
  %i.pt = ptrtoint ptr %i.pr to i64
  %i.pu = sub i64 %i.ps, %i.pt
  %..i228.i = tail call i64 @llvm.smin.i64(i64 %i.pu, i64 %i.pn)
  %i.pv = getelementptr inbounds i8, ptr %i.pr, i64 %..i228.i
  store ptr %i.pv, ptr %i.mx, align 8, !tbaa !38
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bu
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ol, i64 3944
  %i.px = load i8, ptr %i.pw, align 8, !tbaa !54
  %.not219.i = icmp ne i8 %i.px, 0
  %i.py = icmp eq i16 %i.oo, 0
  %or.cond300.i = and i1 %i.py, %.not219.i
  br i1 %or.cond300.i, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ol, i64 3952
  %i.qa = load ptr, ptr %i.pz, align 8, !tbaa !55 ; 4 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ol, i64 3960
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !56 ; 2 uses
  %i.qd = icmp ne ptr %i.qa, null
  %i.qe = icmp sgt i32 %i.qc, -1
  %or.cond.i222.i = and i1 %i.qd, %i.qe
  br i1 %or.cond.i222.i, label %bytestream2_init.exit223.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 141) #10
  tail call void @abort() #11
  unreachable

bytestream2_init.exit223.i:                       ; preds = %bb.ca
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ol, i64 3968
  store ptr %i.qa, ptr %i.qf, align 8, !tbaa !38
  %i.qg = getelementptr inbounds nuw i8, ptr %i.ol, i64 3984
  store ptr %i.qa, ptr %i.qg, align 8, !tbaa !39
  %i.qh = zext nneg i32 %i.qc to i64
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qa, i64 %i.qh
  %i.qj = getelementptr inbounds nuw i8, ptr %i.ol, i64 3976
  store ptr %i.qi, ptr %i.qj, align 8, !tbaa !40
  br label %bb.cc

bb.cc:                                            ; preds = %bytestream2_init.exit223.i, %bb.bz
  %i.qk = load ptr, ptr %i.f, align 8, !tbaa !150 ; 5 uses
  %i.ql = load ptr, ptr %i.or, align 8, !tbaa !149
  %i.qm = ptrtoint ptr %i.ql to i64               ; 2 uses
  %i.qn = ptrtoint ptr %i.qk to i64
  %i.qo = sub i64 %i.qm, %i.qn                    ; 2 uses
  %i.qp = icmp ne ptr %i.qk, null
  %i.qq = and i64 %i.qo, 2147483648
  %i.qr = icmp eq i64 %i.qq, 0
  %or.cond.i220.i = and i1 %i.qp, %i.qr
  br i1 %or.cond.i220.i, label %bytestream2_init.exit221.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, i32 noundef 141) #10
  tail call void @abort() #11
  unreachable

bytestream2_init.exit221.i:                       ; preds = %bb.cc
  %i.qs = getelementptr inbounds nuw i8, ptr %i.oq, i64 40
  store ptr %i.qk, ptr %i.qs, align 8, !tbaa !38
  %i.qt = getelementptr inbounds nuw i8, ptr %i.oq, i64 56
  store ptr %i.qk, ptr %i.qt, align 8, !tbaa !39
  %i.qu = and i64 %i.qo, 2147483647
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qk, i64 %i.qu
  %i.qw = getelementptr inbounds nuw i8, ptr %i.oq, i64 48
  store ptr %i.qv, ptr %i.qw, align 8, !tbaa !40
  %i.qx = load ptr, ptr %i.f, align 8, !tbaa !150 ; 2 uses
  %i.qy = ptrtoint ptr %i.qx to i64               ; 2 uses
  %i.qz = sub i64 %i.qm, %i.qy
  %i.ra = load ptr, ptr %i.p, align 8, !tbaa !40  ; 2 uses
  %i.rb = ptrtoint ptr %i.ra to i64
  %i.rc = sub i64 %i.rb, %i.qy
  %i.rd = and i64 %i.qz, 4294967295
  %..i227.i = tail call i64 @llvm.smin.i64(i64 %i.rc, i64 %i.rd)
  %i.re = getelementptr inbounds i8, ptr %i.qx, i64 %..i227.i ; 3 uses
  store ptr %i.re, ptr %i.f, align 8, !tbaa !38
  %.pre538.i = ptrtoint ptr %i.re to i64
  br label %bb.hs

bb.ce:                                            ; preds = %bb.bn
end_hunk_0
begin_hunk_1_@jpeg2000_decode_frame:bb.a
  %i.acf = zext i16 %i.ace to i32                 ; 3 uses
  %i.acg = load i32, ptr %i.nf, align 8, !tbaa !59
  %i.ach = load i32, ptr %i.ng, align 4, !tbaa !58
  %i.aci = mul i32 %i.ach, %i.acg
  %.not.i252.i = icmp ugt i32 %i.aci, %i.acf
  br i1 %.not.i252.i, label %bb.go, label %get_coc.exit.i

bb.go:                                            ; preds = %bb.gn
  store i32 %i.acf, ptr %i.q, align 4, !tbaa !41
  %i.acj = getelementptr inbounds nuw i8, ptr %i.nw, i64 10 ; 2 uses
  store ptr %i.acj, ptr %i.f, align 8, !tbaa !42
  %i.ack = load i32, ptr %i.acc, align 1, !tbaa !43 ; 2 uses
  %i.acl = tail call i32 @llvm.bswap.i32(i32 %i.ack)
  %i.acm = getelementptr inbounds nuw i8, ptr %i.nw, i64 11
  store ptr %i.acm, ptr %i.f, align 8, !tbaa !42
  %i.acn = load i8, ptr %i.acj, align 1, !tbaa !43 ; 4 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.nw, i64 12 ; 3 uses
  store ptr %i.aco, ptr %i.f, align 8, !tbaa !42
  %.not49.i.i = icmp eq i32 %i.ack, 0
  %i.acp = ptrtoint ptr %i.aco to i64
  %i.acq = sub i64 %i.rm, %i.acp
  %i.acr = trunc i64 %i.acq to i32
  %i.acs = add i32 %i.rk, %i.acr                  ; 2 uses
  %.045.i.i = select i1 %.not49.i.i, i32 %i.acs, i32 %i.acl ; 3 uses
  %i.act = icmp ugt i32 %.045.i.i, %i.acs
  br i1 %i.act, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %i.acu = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.acu, i32 noundef 16, ptr noundef nonnull @.str.68, i32 noundef %.045.i.i) #10
  br label %get_coc.exit.i

bb.gq:                                            ; preds = %bb.go
  %i.acv = icmp ugt i8 %i.acn, 31
  br i1 %i.acv, label %bb.gr, label %bb.gs

bb.gr:                                            ; preds = %bb.gq
  %i.acw = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.acw, ptr noundef nonnull @.str.69) #10
  br label %get_coc.exit.i

bb.gs:                                            ; preds = %bb.gq
  %i.acx = zext nneg i8 %i.acn to i64
  %i.acy = zext nneg i8 %i.acn to i16
  %i.acz = load ptr, ptr %i.mv, align 8, !tbaa !48 ; 2 uses
  %i.ada = zext i16 %i.ace to i64
  %i.adb = getelementptr inbounds nuw [4016 x i8], ptr %i.acz, i64 %i.ada ; 6 uses
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 3992
  store i16 %i.acy, ptr %i.adc, align 8, !tbaa !52
  %i.add = getelementptr inbounds nuw i8, ptr %i.adb, i64 1896
  %i.ade = getelementptr inbounds nuw [64 x i8], ptr %i.add, i64 %i.acx ; 2 uses
  %i.adf = trunc i16 %i.ace to i8
  store i8 %i.adf, ptr %i.ade, align 8, !tbaa !170
  %i.adg = zext i32 %.045.i.i to i64
  %i.adh = getelementptr inbounds nuw i8, ptr %i.aco, i64 %i.adg
  %i.adi = zext i16 %i.rj to i64
  %i.adj = sub nsw i64 0, %i.adi
  %i.adk = getelementptr inbounds i8, ptr %i.adh, i64 %i.adj
  %i.adl = getelementptr inbounds i8, ptr %i.adk, i64 -2
  %i.adm = getelementptr inbounds nuw i8, ptr %i.ade, i64 8
  store ptr %i.adl, ptr %i.adm, align 8, !tbaa !149
  %.not50.i.i = icmp eq i8 %i.acn, 0
  br i1 %.not50.i.i, label %bb.gt, label %get_sot.exit.i

bb.gt:                                            ; preds = %bb.gs
  %i.adn = getelementptr inbounds nuw i8, ptr %i.adb, i64 12
  %i.ado = load i32, ptr %i.nb, align 4, !tbaa !57
  %i.adp = sext i32 %i.ado to i64
  %i.adq = mul nsw i64 %i.adp, 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.adn, ptr nonnull align 4 %i.mn, i64 %i.adq, i1 false)
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adb, i64 364
  %i.ads = load i32, ptr %i.nb, align 4, !tbaa !57
  %i.adt = sext i32 %i.ads to i64
  %i.adu = mul nsw i64 %i.adt, 300
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.adr, ptr nonnull align 4 %i.mo, i64 %i.adu, i1 false)
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adb, i64 1564
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(328) %i.adv, ptr noundef nonnull align 4 dereferenceable(328) %i.mp, i64 324, i1 false)
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adb, i64 1888
  store i32 1, ptr %i.adw, align 8, !tbaa !171
  %.pre.i78 = load ptr, ptr %i.mv, align 8, !tbaa !48
  %.pre536.i = load i32, ptr %i.q, align 4, !tbaa !41
  br label %get_sot.exit.i

get_sot.exit.i:                                   ; preds = %bb.gt, %bb.gs
  %i.adx = phi i32 [ %.pre536.i, %bb.gt ], [ %i.acf, %bb.gs ]
  %i.ady = phi ptr [ %.pre.i78, %bb.gt ], [ %i.acz, %bb.gs ]
  %i.adz = sext i32 %i.adx to i64
  %i.aea = getelementptr inbounds [4016 x i8], ptr %i.ady, i64 %i.adz ; 4 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.aea, i64 12
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aea, i64 364
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aea, i64 1564
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aea, i64 8
  br label %get_coc.exit.i

bb.gu:                                            ; preds = %bb.ci, %bb.ci
  %i.aef = zext nneg i32 %i.rq to i64
  %..i226.i = tail call i64 @llvm.smin.i64(i64 %i.ro, i64 %i.aef)
  %i.aeg = getelementptr inbounds i8, ptr %i.rh, i64 %..i226.i
  store ptr %i.aeg, ptr %i.f, align 8, !tbaa !38
  br label %get_coc.exit.i

bb.gv:                                            ; preds = %bb.ci
  %i.aeh = load i32, ptr %i.nb, align 4, !tbaa !57
  %i.aei = shl nsw i32 %i.aeh, 2
  %.not.i254.i = icmp eq i32 %i.aei, %i.rq
  br i1 %.not.i254.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.aej = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aej, i32 noundef 16, ptr noundef nonnull @.str.70) #10
  br label %get_coc.exit.i

bb.gx:                                            ; preds = %bb.gv
  %i.aek = zext nneg i32 %i.rq to i64
  %..i.i.i = tail call i64 @llvm.smin.i64(i64 %i.ro, i64 %i.aek)
  %i.ael = getelementptr inbounds i8, ptr %i.rh, i64 %..i.i.i
  store ptr %i.ael, ptr %i.f, align 8, !tbaa !38
  br label %get_coc.exit.i

bb.gy:                                            ; preds = %bb.ci
  %i.aem = icmp slt i64 %i.ro, 1
  %i.aen = getelementptr inbounds nuw i8, ptr %i.nw, i64 5
  %storemerge.i.i = select i1 %i.aem, ptr %i.nu, ptr %i.aen ; 3 uses
  %i.aeo = ptrtoint ptr %storemerge.i.i to i64
  %i.aep = sub i64 %i.rm, %i.aeo
  %i.aeq = icmp slt i64 %i.aep, 1
  br i1 %i.aeq, label %bytestream2_get_byte.exit25.thread.i.i, label %bytestream2_get_byte.exit25.i.i

bytestream2_get_byte.exit25.thread.i.i:           ; preds = %bb.gy
  store ptr %i.nu, ptr %i.f, align 8, !tbaa !38
  br label %bb.ha

bytestream2_get_byte.exit25.i.i:                  ; preds = %bb.gy
  %i.aer = getelementptr inbounds nuw i8, ptr %storemerge.i.i, i64 1 ; 2 uses
  store ptr %i.aer, ptr %i.f, align 8, !tbaa !42
  %i.aes = load i8, ptr %storemerge.i.i, align 1, !tbaa !43
  %i.aet = zext i8 %i.aes to i32                  ; 2 uses
  %i.aeu = lshr i32 %i.aet, 4
  %i.aev = and i32 %i.aeu, 3                      ; 2 uses
  %i.aew = icmp eq i32 %i.aev, 3
  br i1 %i.aew, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bytestream2_get_byte.exit25.i.i
  %i.aex = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aex, i32 noundef 16, ptr noundef nonnull @.str.71) #10
  br label %get_coc.exit.i

bb.ha:                                            ; preds = %bytestream2_get_byte.exit25.i.i, %bytestream2_get_byte.exit25.thread.i.i
  %.promoted38.i.i = phi ptr [ %i.nu, %bytestream2_get_byte.exit25.thread.i.i ], [ %i.aer, %bytestream2_get_byte.exit25.i.i ] ; 12 uses
  %i.aey = phi i32 [ 0, %bytestream2_get_byte.exit25.thread.i.i ], [ %i.aev, %bytestream2_get_byte.exit25.i.i ] ; 3 uses
  %.0.i2429.i.i = phi i32 [ 0, %bytestream2_get_byte.exit25.thread.i.i ], [ %i.aet, %bytestream2_get_byte.exit25.i.i ]
  %i.aez = lshr i32 %.0.i2429.i.i, 6
  %i.afa = and i32 %i.aez, 1                      ; 2 uses
  %i.afb = add nsw i32 %i.rk, -4
  %i.afc = shl nuw nsw i32 %i.afa, 1
  %i.afd = add nuw nsw i32 %i.aey, 2
  %i.afe = add nuw nsw i32 %i.afd, %i.afc
  %i.aff = sdiv i32 %i.afb, %i.afe                ; 17 uses
  %i.afg = and i32 %i.aff, 255                    ; 7 uses
  %.not.i256.i = icmp eq i32 %i.afg, 0
  br i1 %.not.i256.i, label %get_coc.exit.i, label %.lr.ph.i257.i

.lr.ph.i257.i:                                    ; preds = %bb.ha
  %i.afh = icmp eq i32 %i.afa, 0
  br i1 %i.afh, label %.lr.ph.split.us.i.i, label %.lr.ph.split.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i257.i
  switch i32 %i.aey, label %bytestream2_get_byte.exit.us.i.i.preheader [
    i32 2, label %.lr.ph.split.us.split.us.i.i.preheader
    i32 1, label %.lr.ph.split.us.split.us39.i.i.preheader
  ]

.lr.ph.split.us.split.us39.i.i.preheader:         ; preds = %.lr.ph.split.us.i.i
  %xtraiter833 = and i32 %i.aff, 1
  %i.afi = icmp eq i32 %i.afg, 1
  br i1 %i.afi, label %.lr.ph.split.us.split.us39.i.i.epil.preheader, label %.lr.ph.split.us.split.us39.i.i.preheader.new

.lr.ph.split.us.split.us39.i.i.preheader.new:     ; preds = %.lr.ph.split.us.split.us39.i.i.preheader
  %unroll_iter840 = and i32 %i.aff, 254
  br label %.lr.ph.split.us.split.us39.i.i

.lr.ph.split.us.split.us.i.i.preheader:           ; preds = %.lr.ph.split.us.i.i
  %xtraiter842 = and i32 %i.aff, 1
  %i.afj = icmp eq i32 %i.afg, 1
  br i1 %i.afj, label %.lr.ph.split.us.split.us.i.i.epil.preheader, label %.lr.ph.split.us.split.us.i.i.preheader.new

.lr.ph.split.us.split.us.i.i.preheader.new:       ; preds = %.lr.ph.split.us.split.us.i.i.preheader
  %unroll_iter849 = and i32 %i.aff, 254
  br label %.lr.ph.split.us.split.us.i.i

bytestream2_get_byte.exit.us.i.i.preheader:       ; preds = %.lr.ph.split.us.i.i
  %xtraiter851 = and i32 %i.aff, 3                ; 3 uses
  %i.afk = icmp samesign ult i32 %i.afg, 4
  br i1 %i.afk, label %bytestream2_get_byte.exit.us.i.i.epil.preheader, label %bytestream2_get_byte.exit.us.i.i.preheader.new

bytestream2_get_byte.exit.us.i.i.preheader.new:   ; preds = %bytestream2_get_byte.exit.us.i.i.preheader
  %unroll_iter858 = and i32 %i.aff, 252
  br label %bytestream2_get_byte.exit.us.i.i

.lr.ph.split.us.split.us.i.i:                     ; preds = %.lr.ph.split.us.split.us.i.i, %.lr.ph.split.us.split.us.i.i.preheader.new
  %i.afl = phi ptr [ %.promoted38.i.i, %.lr.ph.split.us.split.us.i.i.preheader.new ], [ %storemerge51.i.i.1, %.lr.ph.split.us.split.us.i.i ] ; 3 uses
  %niter850 = phi i32 [ 0, %.lr.ph.split.us.split.us.i.i.preheader.new ], [ %niter850.next.1, %.lr.ph.split.us.split.us.i.i ]
  %i.afm = ptrtoint ptr %i.afl to i64
  %i.afn = sub i64 %i.rm, %i.afm
  %i.afo = icmp slt i64 %i.afn, 2
  %i.afp = getelementptr inbounds nuw i8, ptr %i.afl, i64 2
  %.pre.i263.i = ptrtoint ptr %i.afp to i64
  %i.afq = sub i64 %i.rm, %.pre.i263.i
  %i.afr = icmp slt i64 %i.afq, 2
  %i.afs = select i1 %i.afo, i1 true, i1 %i.afr
  %i.aft = getelementptr inbounds nuw i8, ptr %i.afl, i64 4
  %storemerge51.i.i = select i1 %i.afs, ptr %i.nu, ptr %i.aft ; 3 uses
  %i.afu = ptrtoint ptr %storemerge51.i.i to i64
  %i.afv = sub i64 %i.rm, %i.afu
  %i.afw = icmp slt i64 %i.afv, 2
  %i.afx = getelementptr inbounds nuw i8, ptr %storemerge51.i.i, i64 2
  %.pre.i263.i.1 = ptrtoint ptr %i.afx to i64
  %i.afy = sub i64 %i.rm, %.pre.i263.i.1
  %i.afz = icmp slt i64 %i.afy, 2
  %i.aga = select i1 %i.afw, i1 true, i1 %i.afz
  %i.agb = getelementptr inbounds nuw i8, ptr %storemerge51.i.i, i64 4
  %storemerge51.i.i.1 = select i1 %i.aga, ptr %i.nu, ptr %i.agb ; 3 uses
  %niter850.next.1 = add i32 %niter850, 2         ; 2 uses
  %niter850.ncmp.1 = icmp eq i32 %niter850.next.1, %unroll_iter849
  br i1 %niter850.ncmp.1, label %.loopexit.loopexit87.i.i.unr-lcssa, label %.lr.ph.split.us.split.us.i.i, !llvm.loop !138

.lr.ph.split.us.split.us39.i.i:                   ; preds = %.lr.ph.split.us.split.us39.i.i, %.lr.ph.split.us.split.us39.i.i.preheader.new
  %i.agc = phi ptr [ %.promoted38.i.i, %.lr.ph.split.us.split.us39.i.i.preheader.new ], [ %storemerge49.i.i.1, %.lr.ph.split.us.split.us39.i.i ] ; 3 uses
  %niter841 = phi i32 [ 0, %.lr.ph.split.us.split.us39.i.i.preheader.new ], [ %niter841.next.1, %.lr.ph.split.us.split.us39.i.i ]
  %i.agd = ptrtoint ptr %i.agc to i64
  %i.age = sub i64 %i.rm, %i.agd
  %i.agf = icmp slt i64 %i.age, 1
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agc, i64 1
  %.pre80.i.i = ptrtoint ptr %i.agg to i64
  %i.agh = sub i64 %i.rm, %.pre80.i.i
  %i.agi = icmp slt i64 %i.agh, 2
  %i.agj = select i1 %i.agf, i1 true, i1 %i.agi
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agc, i64 3
  %storemerge49.i.i = select i1 %i.agj, ptr %i.nu, ptr %i.agk ; 3 uses
  %i.agl = ptrtoint ptr %storemerge49.i.i to i64
  %i.agm = sub i64 %i.rm, %i.agl
  %i.agn = icmp slt i64 %i.agm, 1
  %i.ago = getelementptr inbounds nuw i8, ptr %storemerge49.i.i, i64 1
  %.pre80.i.i.1 = ptrtoint ptr %i.ago to i64
  %i.agp = sub i64 %i.rm, %.pre80.i.i.1
  %i.agq = icmp slt i64 %i.agp, 2
  %i.agr = select i1 %i.agn, i1 true, i1 %i.agq
  %i.ags = getelementptr inbounds nuw i8, ptr %storemerge49.i.i, i64 3
  %storemerge49.i.i.1 = select i1 %i.agr, ptr %i.nu, ptr %i.ags ; 3 uses
  %niter841.next.1 = add i32 %niter841, 2         ; 2 uses
  %niter841.ncmp.1 = icmp eq i32 %niter841.next.1, %unroll_iter840
  br i1 %niter841.ncmp.1, label %.loopexit.loopexit88.i.i.unr-lcssa, label %.lr.ph.split.us.split.us39.i.i, !llvm.loop !138

bytestream2_get_byte.exit.us.i.i:                 ; preds = %bytestream2_get_byte.exit.us.i.i, %bytestream2_get_byte.exit.us.i.i.preheader.new
  %i.agt = phi ptr [ %.promoted38.i.i, %bytestream2_get_byte.exit.us.i.i.preheader.new ], [ %spec.select.i.i.3, %bytestream2_get_byte.exit.us.i.i ] ; 2 uses
  %niter859 = phi i32 [ 0, %bytestream2_get_byte.exit.us.i.i.preheader.new ], [ %niter859.next.3, %bytestream2_get_byte.exit.us.i.i ]
  %i.agu = ptrtoint ptr %i.agt to i64
  %i.agv = sub i64 %i.rm, %i.agu
  %i.agw = icmp slt i64 %i.agv, 2
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agt, i64 2
  %spec.select.i.i = select i1 %i.agw, ptr %i.nu, ptr %i.agx ; 2 uses
  %i.agy = ptrtoint ptr %spec.select.i.i to i64
  %i.agz = sub i64 %i.rm, %i.agy
  %i.aha = icmp slt i64 %i.agz, 2
  %i.ahb = getelementptr inbounds nuw i8, ptr %spec.select.i.i, i64 2
  %spec.select.i.i.1 = select i1 %i.aha, ptr %i.nu, ptr %i.ahb ; 2 uses
  %i.ahc = ptrtoint ptr %spec.select.i.i.1 to i64
  %i.ahd = sub i64 %i.rm, %i.ahc
  %i.ahe = icmp slt i64 %i.ahd, 2
  %i.ahf = getelementptr inbounds nuw i8, ptr %spec.select.i.i.1, i64 2
  %spec.select.i.i.2 = select i1 %i.ahe, ptr %i.nu, ptr %i.ahf ; 2 uses
  %i.ahg = ptrtoint ptr %spec.select.i.i.2 to i64
  %i.ahh = sub i64 %i.rm, %i.ahg
  %i.ahi = icmp slt i64 %i.ahh, 2
  %i.ahj = getelementptr inbounds nuw i8, ptr %spec.select.i.i.2, i64 2
  %spec.select.i.i.3 = select i1 %i.ahi, ptr %i.nu, ptr %i.ahj ; 3 uses
  %niter859.next.3 = add i32 %niter859, 4         ; 2 uses
  %niter859.ncmp.3 = icmp eq i32 %niter859.next.3, %unroll_iter858
  br i1 %niter859.ncmp.3, label %.loopexit.loopexit.i.i.unr-lcssa, label %bytestream2_get_byte.exit.us.i.i, !llvm.loop !138

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i257.i
  switch i32 %i.aey, label %bytestream2_get_byte.exit.i262.i.preheader [
    i32 2, label %.lr.ph.split.split.us.i.i.preheader
    i32 1, label %.lr.ph.split.split.us34.i.i.preheader
  ]

.lr.ph.split.split.us34.i.i.preheader:            ; preds = %.lr.ph.split.i.i
  %xtraiter809 = and i32 %i.aff, 1
  %i.ahk = icmp eq i32 %i.afg, 1
  br i1 %i.ahk, label %.lr.ph.split.split.us34.i.i.epil.preheader, label %.lr.ph.split.split.us34.i.i.preheader.new

.lr.ph.split.split.us34.i.i.preheader.new:        ; preds = %.lr.ph.split.split.us34.i.i.preheader
  %unroll_iter815 = and i32 %i.aff, 254
  br label %.lr.ph.split.split.us34.i.i

.lr.ph.split.split.us.i.i.preheader:              ; preds = %.lr.ph.split.i.i
  %xtraiter817 = and i32 %i.aff, 1
  %i.ahl = icmp eq i32 %i.afg, 1
  br i1 %i.ahl, label %.lr.ph.split.split.us.i.i.epil.preheader, label %.lr.ph.split.split.us.i.i.preheader.new

.lr.ph.split.split.us.i.i.preheader.new:          ; preds = %.lr.ph.split.split.us.i.i.preheader
  %unroll_iter823 = and i32 %i.aff, 254
  br label %.lr.ph.split.split.us.i.i

bytestream2_get_byte.exit.i262.i.preheader:       ; preds = %.lr.ph.split.i.i
  %xtraiter825 = and i32 %i.aff, 3                ; 3 uses
  %i.ahm = icmp samesign ult i32 %i.afg, 4
  br i1 %i.ahm, label %bytestream2_get_byte.exit.i262.i.epil.preheader, label %bytestream2_get_byte.exit.i262.i.preheader.new

bytestream2_get_byte.exit.i262.i.preheader.new:   ; preds = %bytestream2_get_byte.exit.i262.i.preheader
  %unroll_iter831 = and i32 %i.aff, 252
  br label %bytestream2_get_byte.exit.i262.i

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i, %.lr.ph.split.split.us.i.i.preheader.new
  %i.ahn = phi ptr [ %.promoted38.i.i, %.lr.ph.split.split.us.i.i.preheader.new ], [ %i.aif, %.lr.ph.split.split.us.i.i ] ; 3 uses
  %niter824 = phi i32 [ 0, %.lr.ph.split.split.us.i.i.preheader.new ], [ %niter824.next.1, %.lr.ph.split.split.us.i.i ]
  %i.aho = ptrtoint ptr %i.ahn to i64
  %i.ahp = sub i64 %i.rm, %i.aho
  %i.ahq = icmp slt i64 %i.ahp, 2
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.ahn, i64 2
  %.pre82.i.i = ptrtoint ptr %i.ahr to i64
  %i.ahs = sub i64 %i.rm, %.pre82.i.i
  %i.aht = icmp slt i64 %i.ahs, 4
  %i.ahu = select i1 %i.ahq, i1 true, i1 %i.aht
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahn, i64 6
  %i.ahw = select i1 %i.ahu, ptr %i.nu, ptr %i.ahv ; 3 uses
  %i.ahx = ptrtoint ptr %i.ahw to i64
  %i.ahy = sub i64 %i.rm, %i.ahx
  %i.ahz = icmp slt i64 %i.ahy, 2
  %i.aia = getelementptr inbounds nuw i8, ptr %i.ahw, i64 2
  %.pre82.i.i.1 = ptrtoint ptr %i.aia to i64
  %i.aib = sub i64 %i.rm, %.pre82.i.i.1
  %i.aic = icmp slt i64 %i.aib, 4
  %i.aid = select i1 %i.ahz, i1 true, i1 %i.aic
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahw, i64 6
  %i.aif = select i1 %i.aid, ptr %i.nu, ptr %i.aie ; 3 uses
  %niter824.next.1 = add i32 %niter824, 2         ; 2 uses
  %niter824.ncmp.1 = icmp eq i32 %niter824.next.1, %unroll_iter823
  br i1 %niter824.ncmp.1, label %.loopexit.loopexit90.i.i.unr-lcssa, label %.lr.ph.split.split.us.i.i, !llvm.loop !138

.lr.ph.split.split.us34.i.i:                      ; preds = %.lr.ph.split.split.us34.i.i, %.lr.ph.split.split.us34.i.i.preheader.new
  %i.aig = phi ptr [ %.promoted38.i.i, %.lr.ph.split.split.us34.i.i.preheader.new ], [ %i.aiy, %.lr.ph.split.split.us34.i.i ] ; 3 uses
  %niter816 = phi i32 [ 0, %.lr.ph.split.split.us34.i.i.preheader.new ], [ %niter816.next.1, %.lr.ph.split.split.us34.i.i ]
  %i.aih = ptrtoint ptr %i.aig to i64
  %i.aii = sub i64 %i.rm, %i.aih
  %i.aij = icmp slt i64 %i.aii, 1
  %i.aik = getelementptr inbounds nuw i8, ptr %i.aig, i64 1
  %.pre84.i.i = ptrtoint ptr %i.aik to i64
  %i.ail = sub i64 %i.rm, %.pre84.i.i
  %i.aim = icmp slt i64 %i.ail, 4
  %i.ain = select i1 %i.aij, i1 true, i1 %i.aim
  %i.aio = getelementptr inbounds nuw i8, ptr %i.aig, i64 5
  %i.aip = select i1 %i.ain, ptr %i.nu, ptr %i.aio ; 3 uses
  %i.aiq = ptrtoint ptr %i.aip to i64
  %i.air = sub i64 %i.rm, %i.aiq
  %i.ais = icmp slt i64 %i.air, 1
  %i.ait = getelementptr inbounds nuw i8, ptr %i.aip, i64 1
  %.pre84.i.i.1 = ptrtoint ptr %i.ait to i64
  %i.aiu = sub i64 %i.rm, %.pre84.i.i.1
  %i.aiv = icmp slt i64 %i.aiu, 4
  %i.aiw = select i1 %i.ais, i1 true, i1 %i.aiv
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aip, i64 5
  %i.aiy = select i1 %i.aiw, ptr %i.nu, ptr %i.aix ; 3 uses
  %niter816.next.1 = add i32 %niter816, 2         ; 2 uses
  %niter816.ncmp.1 = icmp eq i32 %niter816.next.1, %unroll_iter815
  br i1 %niter816.ncmp.1, label %.loopexit.loopexit91.i.i.unr-lcssa, label %.lr.ph.split.split.us34.i.i, !llvm.loop !138

bytestream2_get_byte.exit.i262.i:                 ; preds = %bytestream2_get_byte.exit.i262.i, %bytestream2_get_byte.exit.i262.i.preheader.new
  %i.aiz = phi ptr [ %.promoted38.i.i, %bytestream2_get_byte.exit.i262.i.preheader.new ], [ %spec.select94.i.i.3, %bytestream2_get_byte.exit.i262.i ] ; 2 uses
  %niter832 = phi i32 [ 0, %bytestream2_get_byte.exit.i262.i.preheader.new ], [ %niter832.next.3, %bytestream2_get_byte.exit.i262.i ]
  %i.aja = ptrtoint ptr %i.aiz to i64
  %i.ajb = sub i64 %i.rm, %i.aja
  %i.ajc = icmp slt i64 %i.ajb, 4
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.aiz, i64 4
  %spec.select94.i.i = select i1 %i.ajc, ptr %i.nu, ptr %i.ajd ; 2 uses
  %i.aje = ptrtoint ptr %spec.select94.i.i to i64
  %i.ajf = sub i64 %i.rm, %i.aje
  %i.ajg = icmp slt i64 %i.ajf, 4
  %i.ajh = getelementptr inbounds nuw i8, ptr %spec.select94.i.i, i64 4
  %spec.select94.i.i.1 = select i1 %i.ajg, ptr %i.nu, ptr %i.ajh ; 2 uses
  %i.aji = ptrtoint ptr %spec.select94.i.i.1 to i64
  %i.ajj = sub i64 %i.rm, %i.aji
  %i.ajk = icmp slt i64 %i.ajj, 4
  %i.ajl = getelementptr inbounds nuw i8, ptr %spec.select94.i.i.1, i64 4
  %spec.select94.i.i.2 = select i1 %i.ajk, ptr %i.nu, ptr %i.ajl ; 2 uses
  %i.ajm = ptrtoint ptr %spec.select94.i.i.2 to i64
  %i.ajn = sub i64 %i.rm, %i.ajm
  %i.ajo = icmp slt i64 %i.ajn, 4
  %i.ajp = getelementptr inbounds nuw i8, ptr %spec.select94.i.i.2, i64 4
  %spec.select94.i.i.3 = select i1 %i.ajo, ptr %i.nu, ptr %i.ajp ; 3 uses
  %niter832.next.3 = add i32 %niter832, 4         ; 2 uses
  %niter832.ncmp.3 = icmp eq i32 %niter832.next.3, %unroll_iter831
  br i1 %niter832.ncmp.3, label %.loopexit.loopexit89.i.i.unr-lcssa, label %bytestream2_get_byte.exit.i262.i, !llvm.loop !138

.loopexit.loopexit.i.i.unr-lcssa:                 ; preds = %bytestream2_get_byte.exit.us.i.i
  %lcmp.mod855.not = icmp eq i32 %xtraiter851, 0
  br i1 %lcmp.mod855.not, label %.loopexit.loopexit.i.i, label %bytestream2_get_byte.exit.us.i.i.epil.preheader

bytestream2_get_byte.exit.us.i.i.epil.preheader:  ; preds = %.loopexit.loopexit.i.i.unr-lcssa, %bytestream2_get_byte.exit.us.i.i.preheader
  %.epil.init854 = phi ptr [ %.promoted38.i.i, %bytestream2_get_byte.exit.us.i.i.preheader ], [ %spec.select.i.i.3, %.loopexit.loopexit.i.i.unr-lcssa ]
  %lcmp.mod857 = icmp ne i32 %xtraiter851, 0
  tail call void @llvm.assume(i1 %lcmp.mod857)
  br label %bytestream2_get_byte.exit.us.i.i.epil

bytestream2_get_byte.exit.us.i.i.epil:            ; preds = %bytestream2_get_byte.exit.us.i.i.epil, %bytestream2_get_byte.exit.us.i.i.epil.preheader
  %i.ajq = phi ptr [ %spec.select.i.i.epil, %bytestream2_get_byte.exit.us.i.i.epil ], [ %.epil.init854, %bytestream2_get_byte.exit.us.i.i.epil.preheader ] ; 2 uses
  %epil.iter852 = phi i32 [ %epil.iter852.next, %bytestream2_get_byte.exit.us.i.i.epil ], [ 0, %bytestream2_get_byte.exit.us.i.i.epil.preheader ]
  %i.ajr = ptrtoint ptr %i.ajq to i64
  %i.ajs = sub i64 %i.rm, %i.ajr
  %i.ajt = icmp slt i64 %i.ajs, 2
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ajq, i64 2
  %spec.select.i.i.epil = select i1 %i.ajt, ptr %i.nu, ptr %i.aju ; 2 uses
  %epil.iter852.next = add i32 %epil.iter852, 1   ; 2 uses
  %epil.iter852.cmp.not = icmp eq i32 %epil.iter852.next, %xtraiter851
  br i1 %epil.iter852.cmp.not, label %.loopexit.loopexit.i.i, label %bytestream2_get_byte.exit.us.i.i.epil, !llvm.loop !139

.loopexit.loopexit.i.i:                           ; preds = %bytestream2_get_byte.exit.us.i.i.epil, %.loopexit.loopexit.i.i.unr-lcssa
  %spec.select.i.i.lcssa = phi ptr [ %spec.select.i.i.3, %.loopexit.loopexit.i.i.unr-lcssa ], [ %spec.select.i.i.epil, %bytestream2_get_byte.exit.us.i.i.epil ]
  store ptr %spec.select.i.i.lcssa, ptr %i.f, align 8, !tbaa !42
  br label %get_coc.exit.i

.loopexit.loopexit87.i.i.unr-lcssa:               ; preds = %.lr.ph.split.us.split.us.i.i
  %lcmp.mod846.not = icmp eq i32 %xtraiter842, 0
  br i1 %lcmp.mod846.not, label %.loopexit.loopexit87.i.i, label %.lr.ph.split.us.split.us.i.i.epil.preheader

.lr.ph.split.us.split.us.i.i.epil.preheader:      ; preds = %.loopexit.loopexit87.i.i.unr-lcssa, %.lr.ph.split.us.split.us.i.i.preheader
  %.epil.init845 = phi ptr [ %.promoted38.i.i, %.lr.ph.split.us.split.us.i.i.preheader ], [ %storemerge51.i.i.1, %.loopexit.loopexit87.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod848 = trunc i32 %i.aff to i1
  tail call void @llvm.assume(i1 %lcmp.mod848)
  %i.ajv = ptrtoint ptr %.epil.init845 to i64
  %i.ajw = sub i64 %i.rm, %i.ajv
  %i.ajx = icmp slt i64 %i.ajw, 2
  %i.ajy = getelementptr inbounds nuw i8, ptr %.epil.init845, i64 2
  %.pre.i263.i.epil = ptrtoint ptr %i.ajy to i64
  %i.ajz = sub i64 %i.rm, %.pre.i263.i.epil
  %i.aka = icmp slt i64 %i.ajz, 2
  %i.akb = select i1 %i.ajx, i1 true, i1 %i.aka
  %i.akc = getelementptr inbounds nuw i8, ptr %.epil.init845, i64 4
  %storemerge51.i.i.epil = select i1 %i.akb, ptr %i.nu, ptr %i.akc
  br label %.loopexit.loopexit87.i.i

.loopexit.loopexit87.i.i:                         ; preds = %.loopexit.loopexit87.i.i.unr-lcssa, %.lr.ph.split.us.split.us.i.i.epil.preheader
  %storemerge51.i.i.lcssa = phi ptr [ %storemerge51.i.i.1, %.loopexit.loopexit87.i.i.unr-lcssa ], [ %storemerge51.i.i.epil, %.lr.ph.split.us.split.us.i.i.epil.preheader ]
  store ptr %storemerge51.i.i.lcssa, ptr %i.f, align 8, !tbaa !42
  br label %get_coc.exit.i

.loopexit.loopexit88.i.i.unr-lcssa:               ; preds = %.lr.ph.split.us.split.us39.i.i
  %lcmp.mod837.not = icmp eq i32 %xtraiter833, 0
  br i1 %lcmp.mod837.not, label %.loopexit.loopexit88.i.i, label %.lr.ph.split.us.split.us39.i.i.epil.preheader

.lr.ph.split.us.split.us39.i.i.epil.preheader:    ; preds = %.loopexit.loopexit88.i.i.unr-lcssa, %.lr.ph.split.us.split.us39.i.i.preheader
  %.epil.init836 = phi ptr [ %.promoted38.i.i, %.lr.ph.split.us.split.us39.i.i.preheader ], [ %storemerge49.i.i.1, %.loopexit.loopexit88.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod839 = trunc i32 %i.aff to i1
  tail call void @llvm.assume(i1 %lcmp.mod839)
  %i.akd = ptrtoint ptr %.epil.init836 to i64
  %i.ake = sub i64 %i.rm, %i.akd
  %i.akf = icmp slt i64 %i.ake, 1
  %i.akg = getelementptr inbounds nuw i8, ptr %.epil.init836, i64 1
  %.pre80.i.i.epil = ptrtoint ptr %i.akg to i64
  %i.akh = sub i64 %i.rm, %.pre80.i.i.epil
  %i.aki = icmp slt i64 %i.akh, 2
  %i.akj = select i1 %i.akf, i1 true, i1 %i.aki
  %i.akk = getelementptr inbounds nuw i8, ptr %.epil.init836, i64 3
  %storemerge49.i.i.epil = select i1 %i.akj, ptr %i.nu, ptr %i.akk
  br label %.loopexit.loopexit88.i.i

.loopexit.loopexit88.i.i:                         ; preds = %.loopexit.loopexit88.i.i.unr-lcssa, %.lr.ph.split.us.split.us39.i.i.epil.preheader
  %storemerge49.i.i.lcssa = phi ptr [ %storemerge49.i.i.1, %.loopexit.loopexit88.i.i.unr-lcssa ], [ %storemerge49.i.i.epil, %.lr.ph.split.us.split.us39.i.i.epil.preheader ]
  store ptr %storemerge49.i.i.lcssa, ptr %i.f, align 8, !tbaa !42
  br label %get_coc.exit.i

.loopexit.loopexit89.i.i.unr-lcssa:               ; preds = %bytestream2_get_byte.exit.i262.i
  %lcmp.mod828.not = icmp eq i32 %xtraiter825, 0
  br i1 %lcmp.mod828.not, label %.loopexit.loopexit89.i.i, label %bytestream2_get_byte.exit.i262.i.epil.preheader

bytestream2_get_byte.exit.i262.i.epil.preheader:  ; preds = %.loopexit.loopexit89.i.i.unr-lcssa, %bytestream2_get_byte.exit.i262.i.preheader
  %.epil.init827 = phi ptr [ %.promoted38.i.i, %bytestream2_get_byte.exit.i262.i.preheader ], [ %spec.select94.i.i.3, %.loopexit.loopexit89.i.i.unr-lcssa ]
  %lcmp.mod830 = icmp ne i32 %xtraiter825, 0
  tail call void @llvm.assume(i1 %lcmp.mod830)
  br label %bytestream2_get_byte.exit.i262.i.epil

bytestream2_get_byte.exit.i262.i.epil:            ; preds = %bytestream2_get_byte.exit.i262.i.epil, %bytestream2_get_byte.exit.i262.i.epil.preheader
  %i.akl = phi ptr [ %spec.select94.i.i.epil, %bytestream2_get_byte.exit.i262.i.epil ], [ %.epil.init827, %bytestream2_get_byte.exit.i262.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %bytestream2_get_byte.exit.i262.i.epil ], [ 0, %bytestream2_get_byte.exit.i262.i.epil.preheader ]
  %i.akm = ptrtoint ptr %i.akl to i64
  %i.akn = sub i64 %i.rm, %i.akm
  %i.ako = icmp slt i64 %i.akn, 4
  %i.akp = getelementptr inbounds nuw i8, ptr %i.akl, i64 4
  %spec.select94.i.i.epil = select i1 %i.ako, ptr %i.nu, ptr %i.akp ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter825
  br i1 %epil.iter.cmp.not, label %.loopexit.loopexit89.i.i, label %bytestream2_get_byte.exit.i262.i.epil, !llvm.loop !140

.loopexit.loopexit89.i.i:                         ; preds = %bytestream2_get_byte.exit.i262.i.epil, %.loopexit.loopexit89.i.i.unr-lcssa
  %spec.select94.i.i.lcssa = phi ptr [ %spec.select94.i.i.3, %.loopexit.loopexit89.i.i.unr-lcssa ], [ %spec.select94.i.i.epil, %bytestream2_get_byte.exit.i262.i.epil ]
  store ptr %spec.select94.i.i.lcssa, ptr %i.f, align 8, !tbaa !42
  br label %get_coc.exit.i

.loopexit.loopexit90.i.i.unr-lcssa:               ; preds = %.lr.ph.split.split.us.i.i
  %lcmp.mod820.not = icmp eq i32 %xtraiter817, 0
  br i1 %lcmp.mod820.not, label %.loopexit.loopexit90.i.i, label %.lr.ph.split.split.us.i.i.epil.preheader

.lr.ph.split.split.us.i.i.epil.preheader:         ; preds = %.loopexit.loopexit90.i.i.unr-lcssa, %.lr.ph.split.split.us.i.i.preheader
  %.epil.init819 = phi ptr [ %.promoted38.i.i, %.lr.ph.split.split.us.i.i.preheader ], [ %i.aif, %.loopexit.loopexit90.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod822 = trunc i32 %i.aff to i1
  tail call void @llvm.assume(i1 %lcmp.mod822)
  %i.akq = ptrtoint ptr %.epil.init819 to i64
  %i.akr = sub i64 %i.rm, %i.akq
  %i.aks = icmp slt i64 %i.akr, 2
  %i.akt = getelementptr inbounds nuw i8, ptr %.epil.init819, i64 2
  %.pre82.i.i.epil = ptrtoint ptr %i.akt to i64
  %i.aku = sub i64 %i.rm, %.pre82.i.i.epil
  %i.akv = icmp slt i64 %i.aku, 4
  %i.akw = select i1 %i.aks, i1 true, i1 %i.akv
  %i.akx = getelementptr inbounds nuw i8, ptr %.epil.init819, i64 6
  %i.aky = select i1 %i.akw, ptr %i.nu, ptr %i.akx
  br label %.loopexit.loopexit90.i.i

.loopexit.loopexit90.i.i:                         ; preds = %.loopexit.loopexit90.i.i.unr-lcssa, %.lr.ph.split.split.us.i.i.epil.preheader
  %.lcssa681 = phi ptr [ %i.aif, %.loopexit.loopexit90.i.i.unr-lcssa ], [ %i.aky, %.lr.ph.split.split.us.i.i.epil.preheader ]
  store ptr %.lcssa681, ptr %i.f, align 8, !tbaa !42
  br label %get_coc.exit.i

.loopexit.loopexit91.i.i.unr-lcssa:               ; preds = %.lr.ph.split.split.us34.i.i
  %lcmp.mod812.not = icmp eq i32 %xtraiter809, 0
  br i1 %lcmp.mod812.not, label %.loopexit.loopexit91.i.i, label %.lr.ph.split.split.us34.i.i.epil.preheader

.lr.ph.split.split.us34.i.i.epil.preheader:       ; preds = %.loopexit.loopexit91.i.i.unr-lcssa, %.lr.ph.split.split.us34.i.i.preheader
  %.epil.init811 = phi ptr [ %.promoted38.i.i, %.lr.ph.split.split.us34.i.i.preheader ], [ %i.aiy, %.loopexit.loopexit91.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod814 = trunc i32 %i.aff to i1
  tail call void @llvm.assume(i1 %lcmp.mod814)
  %i.akz = ptrtoint ptr %.epil.init811 to i64
  %i.ala = sub i64 %i.rm, %i.akz
  %i.alb = icmp slt i64 %i.ala, 1
  %i.alc = getelementptr inbounds nuw i8, ptr %.epil.init811, i64 1
  %.pre84.i.i.epil = ptrtoint ptr %i.alc to i64
  %i.ald = sub i64 %i.rm, %.pre84.i.i.epil
  %i.ale = icmp slt i64 %i.ald, 4
  %i.alf = select i1 %i.alb, i1 true, i1 %i.ale
  %i.alg = getelementptr inbounds nuw i8, ptr %.epil.init811, i64 5
  %i.alh = select i1 %i.alf, ptr %i.nu, ptr %i.alg
  br label %.loopexit.loopexit91.i.i

.loopexit.loopexit91.i.i:                         ; preds = %.loopexit.loopexit91.i.i.unr-lcssa, %.lr.ph.split.split.us34.i.i.epil.preheader
  %.lcssa680 = phi ptr [ %i.aiy, %.loopexit.loopexit91.i.i.unr-lcssa ], [ %i.alh, %.lr.ph.split.split.us34.i.i.epil.preheader ]
  store ptr %.lcssa680, ptr %i.f, align 8, !tbaa !42
  br label %get_coc.exit.i

bb.hb:                                            ; preds = %bb.ci
  %i.ali = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.alj = sub i64 %i.rn, %i.od
  %i.alk = trunc i64 %i.alj to i32
  %i.all = add nsw i32 %i.alk, -4
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ali, i32 noundef 48, ptr noundef nonnull @.str.72, i32 noundef %i.all) #10
  %i.alm = icmp ult i16 %i.rj, 4
  br i1 %i.alm, label %get_coc.exit.i, label %.lr.ph.i264.i

.lr.ph.i264.i:                                    ; preds = %bb.hb
  %i.aln = load ptr, ptr %i.p, align 8, !tbaa !40 ; 6 uses
  %i.alo = load ptr, ptr %i.f, align 8, !tbaa !38 ; 2 uses
  %i.alp = ptrtoint ptr %i.aln to i64             ; 4 uses
  %i.alq = ptrtoint ptr %i.alo to i64
  %i.alr = sub i64 %i.alp, %i.alq
  %i.als = icmp slt i64 %i.alr, 1
  %i.alt = getelementptr inbounds nuw i8, ptr %i.alo, i64 1
  %storemerge.i265.i = select i1 %i.als, ptr %i.aln, ptr %i.alt ; 2 uses
  %i.alu = add nsw i32 %i.rk, -3                  ; 3 uses
  %xtraiter = and i32 %i.alu, 1
  %i.alv = icmp eq i16 %i.ri, 1024
  br i1 %i.alv, label %.epil.preheader, label %.lr.ph.i264.i.new

.lr.ph.i264.i.new:                                ; preds = %.lr.ph.i264.i
  %unroll_iter = and i32 %i.alu, -2
  br label %bytestream2_get_byte.exit.i266.i

bytestream2_get_byte.exit.i266.i:                 ; preds = %bytestream2_get_byte.exit.i266.i.1, %.lr.ph.i264.i.new
  %i.alw = phi ptr [ %storemerge.i265.i, %.lr.ph.i264.i.new ], [ %i.ami, %bytestream2_get_byte.exit.i266.i.1 ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i264.i.new ], [ %niter.next.1, %bytestream2_get_byte.exit.i266.i.1 ]
  %i.alx = ptrtoint ptr %i.alw to i64
  %i.aly = sub i64 %i.alp, %i.alx
  %i.alz = icmp slt i64 %i.aly, 1
  %i.ama = getelementptr inbounds nuw i8, ptr %i.alw, i64 1
  %storemerge = select i1 %i.alz, ptr %i.aln, ptr %i.ama ; 4 uses
  store ptr %storemerge, ptr %i.f, align 8, !tbaa !42
  %i.amb = ptrtoint ptr %storemerge to i64
  %i.amc = sub i64 %i.alp, %i.amb
  %i.amd = icmp slt i64 %i.amc, 1
  br i1 %i.amd, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %bytestream2_get_byte.exit.i266.i
  %i.ame = getelementptr inbounds nuw i8, ptr %storemerge, i64 1 ; 2 uses
  store ptr %i.ame, ptr %i.f, align 8, !tbaa !42
  %i.amf = load i8, ptr %storemerge, align 1, !tbaa !43
  %i.amg = icmp sgt i8 %i.amf, -1
  %i.amh = select i1 %i.amg, i32 0, i32 -1094995529
  br label %bytestream2_get_byte.exit.i266.i.1

bb.hd:                                            ; preds = %bytestream2_get_byte.exit.i266.i
  store ptr %i.aln, ptr %i.f, align 8, !tbaa !38
  br label %bytestream2_get_byte.exit.i266.i.1

bytestream2_get_byte.exit.i266.i.1:               ; preds = %bb.hd, %bb.hc
  %i.ami = phi ptr [ %i.aln, %bb.hd ], [ %i.ame, %bb.hc ] ; 2 uses
  %.0.i.i.i.1 = phi i32 [ 0, %bb.hd ], [ %i.amh, %bb.hc ]
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %get_coc.exit.i.loopexit.unr-lcssa, label %bytestream2_get_byte.exit.i266.i, !llvm.loop !141

bb.he:                                            ; preds = %bb.ci
  %.not195.i = icmp eq i8 %.0166445.i, 0
  br i1 %.not195.i, label %bb.hg, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.amj = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.amj, i32 noundef 16, ptr noundef nonnull @.str.30) #10
  br label %jpeg2000_read_main_headers.exit.thread

bb.hg:                                            ; preds = %bb.he
  %i.amk = tail call fastcc i32 @get_ppm(ptr noundef nonnull %i.d, i32 noundef %i.rk)
  br label %get_coc.exit.i

bb.hh:                                            ; preds = %bb.ci
  %i.aml = load i8, ptr %i.mw, align 4, !tbaa !53
  %.not.i77 = icmp eq i8 %i.aml, 0
  br i1 %.not.i77, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.amm = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.amm, i32 noundef 16, ptr noundef nonnull @.str.31) #10
  br label %jpeg2000_read_main_headers.exit.thread

bb.hj:                                            ; preds = %bb.hh
  %i.amn = load i8, ptr %i.mz, align 1, !tbaa !154
  %.not193.i = icmp eq i8 %i.amn, 0
  br i1 %.not193.i, label %bb.hk, label %bb.hm

bb.hk:                                            ; preds = %bb.hj
  %i.amo = load i8, ptr %i.na, align 8, !tbaa !60
  %.not194.i = icmp eq i8 %i.amo, 0
  br i1 %.not194.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.amp = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.amp, i32 noundef 16, ptr noundef nonnull @.str.32) #10
  br label %jpeg2000_read_main_headers.exit.thread

bb.hm:                                            ; preds = %bb.hk, %bb.hj
  %i.amq = tail call fastcc i32 @get_ppt(ptr noundef nonnull %i.d, i32 noundef %i.rk)
  br label %get_coc.exit.i

bb.hn:                                            ; preds = %bb.ci
  %i.amr = zext nneg i32 %i.rq to i64
  %..i.i270.i = tail call i64 @llvm.smin.i64(i64 %i.ro, i64 %i.amr)
  %i.ams = getelementptr inbounds i8, ptr %i.rh, i64 %..i.i270.i
  store ptr %i.ams, ptr %i.f, align 8, !tbaa !38
  br label %get_coc.exit.i

bb.ho:                                            ; preds = %bb.ci
  %i.amt = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.amu = sub i64 %i.rn, %i.od
  %i.amv = trunc i64 %i.amu to i32
  %i.amw = add nsw i32 %i.amv, -4
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.amt, i32 noundef 16, ptr noundef nonnull @.str.33, i32 noundef %i.oa, i32 noundef %i.amw) #10
  %i.amx = load ptr, ptr %i.p, align 8, !tbaa !40
  %i.amy = load ptr, ptr %i.f, align 8, !tbaa !38 ; 2 uses
  %i.amz = ptrtoint ptr %i.amx to i64
  %i.ana = ptrtoint ptr %i.amy to i64
  %i.anb = sub i64 %i.amz, %i.ana
  %i.anc = zext nneg i32 %i.rq to i64
  %..i.i79 = tail call i64 @llvm.smin.i64(i64 %i.anb, i64 %i.anc)
  %i.and = getelementptr inbounds i8, ptr %i.amy, i64 %..i.i79
  store ptr %i.and, ptr %i.f, align 8, !tbaa !38
  br label %get_coc.exit.i

get_coc.exit.i.loopexit.unr-lcssa:                ; preds = %bytestream2_get_byte.exit.i266.i.1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %get_coc.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %get_coc.exit.i.loopexit.unr-lcssa, %.lr.ph.i264.i
  %.epil.init = phi ptr [ %storemerge.i265.i, %.lr.ph.i264.i ], [ %i.ami, %get_coc.exit.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod808 = trunc i32 %i.alu to i1
  tail call void @llvm.assume(i1 %lcmp.mod808)
  %i.ane = ptrtoint ptr %.epil.init to i64
  %i.anf = sub i64 %i.alp, %i.ane
  %i.ang = icmp slt i64 %i.anf, 1
  br i1 %i.ang, label %bb.hq, label %bb.hp

bb.hp:                                            ; preds = %.epil.preheader
  %i.anh = getelementptr inbounds nuw i8, ptr %.epil.init, i64 1
  store ptr %i.anh, ptr %i.f, align 8, !tbaa !42
  %i.ani = load i8, ptr %.epil.init, align 1, !tbaa !43
  %i.anj = icmp sgt i8 %i.ani, -1
  %i.ank = select i1 %i.anj, i32 0, i32 -1094995529
  br label %get_coc.exit.i

bb.hq:                                            ; preds = %.epil.preheader
  store ptr %i.aln, ptr %i.f, align 8, !tbaa !38
  br label %get_coc.exit.i

get_coc.exit.i:                                   ; preds = %get_coc.exit.i.loopexit.unr-lcssa, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hg, %bb.hb, %.loopexit.loopexit91.i.i, %.loopexit.loopexit90.i.i, %.loopexit.loopexit89.i.i, %.loopexit.loopexit88.i.i, %.loopexit.loopexit87.i.i, %.loopexit.loopexit.i.i, %bb.ha, %bb.gz, %bb.gx, %bb.gw, %bb.gu, %get_sot.exit.i, %bb.gr, %bb.gp, %bb.gn, %bb.gm, %get_poc.exit.i, %get_qcd.exit.i, %bb.fh, %bb.fg, %bb.fe, %bb.ey, %get_rgn.exit.i, %get_cod.exit.i, %bb.du, %bb.dt, %bb.ds, %bb.dq, %get_cap.exit.i, %bb.cm, %bb.cl
  %.1179.i = phi ptr [ %.0178441.i, %bb.ho ], [ %.0178441.i, %bb.cl ], [ %.0178441.i, %bb.cm ], [ %.0178441.i, %get_cap.exit.i ], [ %.0178441.i, %bb.gr ], [ %.0178441.i, %get_cod.exit.i ], [ %.0178441.i, %get_rgn.exit.i ], [ %.0178441.i, %bb.ey ], [ %.0178441.i, %bb.du ], [ %.0178441.i, %get_qcd.exit.i ], [ %.0178441.i, %get_poc.exit.i ], [ %.0178441.i, %bb.hn ], [ %i.aeb, %get_sot.exit.i ], [ %.0178441.i, %bb.gu ], [ %.0178441.i, %bb.fh ], [ %.0178441.i, %bb.gx ], [ %.0178441.i, %.loopexit.loopexit91.i.i ], [ %.0178441.i, %bb.hg ], [ %.0178441.i, %bb.hm ], [ %.0178441.i, %bb.dq ], [ %.0178441.i, %bb.ds ], [ %.0178441.i, %bb.dt ], [ %.0178441.i, %bb.fe ], [ %.0178441.i, %bb.fg ], [ %.0178441.i, %bb.gw ], [ %.0178441.i, %bb.gz ], [ %.0178441.i, %bb.ha ], [ %.0178441.i, %.loopexit.loopexit.i.i ], [ %.0178441.i, %.loopexit.loopexit87.i.i ], [ %.0178441.i, %.loopexit.loopexit88.i.i ], [ %.0178441.i, %.loopexit.loopexit89.i.i ], [ %.0178441.i, %.loopexit.loopexit90.i.i ], [ %.0178441.i, %bb.hb ], [ %.0178441.i, %bb.gp ], [ %.0178441.i, %bb.gn ], [ %.0178441.i, %bb.gm ], [ %.0178441.i, %bb.hp ], [ %.0178441.i, %bb.hq ], [ %.0178441.i, %get_coc.exit.i.loopexit.unr-lcssa ]
  %.1176.i = phi ptr [ %.0175442.i, %bb.ho ], [ %.0175442.i, %bb.cl ], [ %.0175442.i, %bb.cm ], [ %.0175442.i, %get_cap.exit.i ], [ %.0175442.i, %bb.gr ], [ %.0175442.i, %get_cod.exit.i ], [ %.0175442.i, %get_rgn.exit.i ], [ %.0175442.i, %bb.ey ], [ %.0175442.i, %bb.du ], [ %.0175442.i, %get_qcd.exit.i ], [ %.0175442.i, %get_poc.exit.i ], [ %.0175442.i, %bb.hn ], [ %i.aec, %get_sot.exit.i ], [ %.0175442.i, %bb.gu ], [ %.0175442.i, %bb.fh ], [ %.0175442.i, %bb.gx ], [ %.0175442.i, %.loopexit.loopexit91.i.i ], [ %.0175442.i, %bb.hg ], [ %.0175442.i, %bb.hm ], [ %.0175442.i, %bb.dq ], [ %.0175442.i, %bb.ds ], [ %.0175442.i, %bb.dt ], [ %.0175442.i, %bb.fe ], [ %.0175442.i, %bb.fg ], [ %.0175442.i, %bb.gw ], [ %.0175442.i, %bb.gz ], [ %.0175442.i, %bb.ha ], [ %.0175442.i, %.loopexit.loopexit.i.i ], [ %.0175442.i, %.loopexit.loopexit87.i.i ], [ %.0175442.i, %.loopexit.loopexit88.i.i ], [ %.0175442.i, %.loopexit.loopexit89.i.i ], [ %.0175442.i, %.loopexit.loopexit90.i.i ], [ %.0175442.i, %bb.hb ], [ %.0175442.i, %bb.gp ], [ %.0175442.i, %bb.gn ], [ %.0175442.i, %bb.gm ], [ %.0175442.i, %bb.hp ], [ %.0175442.i, %bb.hq ], [ %.0175442.i, %get_coc.exit.i.loopexit.unr-lcssa ]
  %.1173.i = phi ptr [ %.0172443.i, %bb.ho ], [ %.0172443.i, %bb.cl ], [ %.0172443.i, %bb.cm ], [ %.0172443.i, %get_cap.exit.i ], [ %.0172443.i, %bb.gr ], [ %.0172443.i, %get_cod.exit.i ], [ %.0172443.i, %get_rgn.exit.i ], [ %.0172443.i, %bb.ey ], [ %.0172443.i, %bb.du ], [ %.0172443.i, %get_qcd.exit.i ], [ %.0172443.i, %get_poc.exit.i ], [ %.0172443.i, %bb.hn ], [ %i.aed, %get_sot.exit.i ], [ %.0172443.i, %bb.gu ], [ %.0172443.i, %bb.fh ], [ %.0172443.i, %bb.gx ], [ %.0172443.i, %.loopexit.loopexit91.i.i ], [ %.0172443.i, %bb.hg ], [ %.0172443.i, %bb.hm ], [ %.0172443.i, %bb.dq ], [ %.0172443.i, %bb.ds ], [ %.0172443.i, %bb.dt ], [ %.0172443.i, %bb.fe ], [ %.0172443.i, %bb.fg ], [ %.0172443.i, %bb.gw ], [ %.0172443.i, %bb.gz ], [ %.0172443.i, %bb.ha ], [ %.0172443.i, %.loopexit.loopexit.i.i ], [ %.0172443.i, %.loopexit.loopexit87.i.i ], [ %.0172443.i, %.loopexit.loopexit88.i.i ], [ %.0172443.i, %.loopexit.loopexit89.i.i ], [ %.0172443.i, %.loopexit.loopexit90.i.i ], [ %.0172443.i, %bb.hb ], [ %.0172443.i, %bb.gp ], [ %.0172443.i, %bb.gn ], [ %.0172443.i, %bb.gm ], [ %.0172443.i, %bb.hp ], [ %.0172443.i, %bb.hq ], [ %.0172443.i, %get_coc.exit.i.loopexit.unr-lcssa ]
  %.1170.i = phi ptr [ %.0169444.i, %bb.ho ], [ %.0169444.i, %bb.cl ], [ %.0169444.i, %bb.cm ], [ %.0169444.i, %get_cap.exit.i ], [ %.0169444.i, %bb.gr ], [ %.0169444.i, %get_cod.exit.i ], [ %.0169444.i, %get_rgn.exit.i ], [ %.0169444.i, %bb.ey ], [ %.0169444.i, %bb.du ], [ %.0169444.i, %get_qcd.exit.i ], [ %.0169444.i, %get_poc.exit.i ], [ %.0169444.i, %bb.hn ], [ %i.aee, %get_sot.exit.i ], [ %.0169444.i, %bb.gu ], [ %.0169444.i, %bb.fh ], [ %.0169444.i, %bb.gx ], [ %.0169444.i, %.loopexit.loopexit91.i.i ], [ %.0169444.i, %bb.hg ], [ %.0169444.i, %bb.hm ], [ %.0169444.i, %bb.dq ], [ %.0169444.i, %bb.ds ], [ %.0169444.i, %bb.dt ], [ %.0169444.i, %bb.fe ], [ %.0169444.i, %bb.fg ], [ %.0169444.i, %bb.gw ], [ %.0169444.i, %bb.gz ], [ %.0169444.i, %bb.ha ], [ %.0169444.i, %.loopexit.loopexit.i.i ], [ %.0169444.i, %.loopexit.loopexit87.i.i ], [ %.0169444.i, %.loopexit.loopexit88.i.i ], [ %.0169444.i, %.loopexit.loopexit89.i.i ], [ %.0169444.i, %.loopexit.loopexit90.i.i ], [ %.0169444.i, %bb.hb ], [ %.0169444.i, %bb.gp ], [ %.0169444.i, %bb.gn ], [ %.0169444.i, %bb.gm ], [ %.0169444.i, %bb.hp ], [ %.0169444.i, %bb.hq ], [ %.0169444.i, %get_coc.exit.i.loopexit.unr-lcssa ]
  %.2168.i = phi i8 [ %.0166445.i, %bb.ho ], [ %.0166445.i, %bb.cl ], [ %.0166445.i, %bb.cm ], [ %.0166445.i, %get_cap.exit.i ], [ 1, %bb.gr ], [ %.0166445.i, %get_cod.exit.i ], [ %.0166445.i, %get_rgn.exit.i ], [ %.0166445.i, %bb.ey ], [ %.0166445.i, %bb.du ], [ %.0166445.i, %get_qcd.exit.i ], [ %.0166445.i, %get_poc.exit.i ], [ %.0166445.i, %bb.hn ], [ 1, %get_sot.exit.i ], [ %.0166445.i, %bb.gu ], [ %.0166445.i, %bb.fh ], [ %.0166445.i, %bb.gx ], [ %.0166445.i, %.loopexit.loopexit91.i.i ], [ 0, %bb.hg ], [ %.0166445.i, %bb.hm ], [ %.0166445.i, %bb.dq ], [ %.0166445.i, %bb.ds ], [ %.0166445.i, %bb.dt ], [ %.0166445.i, %bb.fe ], [ %.0166445.i, %bb.fg ], [ %.0166445.i, %bb.gw ], [ %.0166445.i, %bb.gz ], [ %.0166445.i, %bb.ha ], [ %.0166445.i, %.loopexit.loopexit.i.i ], [ %.0166445.i, %.loopexit.loopexit87.i.i ], [ %.0166445.i, %.loopexit.loopexit88.i.i ], [ %.0166445.i, %.loopexit.loopexit89.i.i ], [ %.0166445.i, %.loopexit.loopexit90.i.i ], [ %.0166445.i, %bb.hb ], [ 1, %bb.gp ], [ 1, %bb.gn ], [ 1, %bb.gm ], [ %.0166445.i, %bb.hp ], [ %.0166445.i, %bb.hq ], [ %.0166445.i, %get_coc.exit.i.loopexit.unr-lcssa ]
  %.0165.i = phi i32 [ 0, %bb.ho ], [ %i.sd, %bb.cl ], [ %i.sd, %bb.cm ], [ %.038.i.i, %get_cap.exit.i ], [ -1163346256, %bb.gr ], [ %.018.i.i, %get_cod.exit.i ], [ %.1.i.i, %get_rgn.exit.i ], [ %.1.i.i, %bb.ey ], [ 0, %bb.du ], [ %.010.i.i, %get_qcd.exit.i ], [ %.2.i.i, %get_poc.exit.i ], [ 0, %bb.hn ], [ 0, %get_sot.exit.i ], [ 0, %bb.gu ], [ %i.yv, %bb.fh ], [ 0, %bb.gx ], [ 0, %.loopexit.loopexit91.i.i ], [ %i.amk, %bb.hg ], [ %i.amq, %bb.hm ], [ -1094995529, %bb.dq ], [ -1094995529, %bb.ds ], [ %i.uu, %bb.dt ], [ -1094995529, %bb.fe ], [ -1094995529, %bb.fg ], [ -1094995529, %bb.gw ], [ -1094995529, %bb.gz ], [ 0, %bb.ha ], [ 0, %.loopexit.loopexit.i.i ], [ 0, %.loopexit.loopexit87.i.i ], [ 0, %.loopexit.loopexit88.i.i ], [ 0, %.loopexit.loopexit89.i.i ], [ 0, %.loopexit.loopexit90.i.i ], [ -1094995529, %bb.hb ], [ -1094995529, %bb.gp ], [ -1094995529, %bb.gn ], [ -1094995529, %bb.gm ], [ %.0.i.i.i.1, %get_coc.exit.i.loopexit.unr-lcssa ], [ 0, %bb.hq ], [ %i.ank, %bb.hp ] ; 2 uses
  %i.anl = load ptr, ptr %i.f, align 8, !tbaa !38 ; 2 uses
  %i.anm = load ptr, ptr %i.m, align 8, !tbaa !39
  %i.ann = ptrtoint ptr %i.anl to i64             ; 2 uses
  %i.ano = ptrtoint ptr %i.anm to i64
  %i.anp = sub i64 %i.ann, %i.ano
  %i.anq = trunc i64 %i.anp to i32
  %i.anr = add i32 %i.anq, %.neg301.i
  %i.ans = icmp ne i32 %i.anr, %i.rk
  %i.ant = icmp ne i32 %.0165.i, 0                ; 2 uses
  %or.cond4.i = select i1 %i.ans, i1 true, i1 %i.ant
  br i1 %or.cond4.i, label %bb.hr, label %get_coc.exit._crit_edge.i

get_coc.exit._crit_edge.i:                        ; preds = %get_coc.exit.i
  %.pre537.i = load ptr, ptr %i.p, align 8, !tbaa !40
  br label %bb.hs

bb.hr:                                            ; preds = %get_coc.exit.i
  %i.anu = load ptr, ptr %i.e, align 8, !tbaa !37
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.anu, i32 noundef 16, ptr noundef nonnull @.str.34, i32 noundef %i.oa) #10
  %spec.select = select i1 %i.ant, i32 %.0165.i, i32 -1
  br label %jpeg2000_read_main_headers.exit.thread

bb.hs:                                            ; preds = %get_coc.exit._crit_edge.i, %bytestream2_init.exit221.i, %bb.bm
  %.pre-phi.i74 = phi i64 [ %i.ann, %get_coc.exit._crit_edge.i ], [ %.pre538.i, %bytestream2_init.exit221.i ], [ %i.oc, %bb.bm ]
  %i.anv = phi ptr [ %i.anl, %get_coc.exit._crit_edge.i ], [ %i.re, %bytestream2_init.exit221.i ], [ %i.nx, %bb.bm ]
  %i.anw = phi ptr [ %.pre537.i, %get_coc.exit._crit_edge.i ], [ %i.ra, %bytestream2_init.exit221.i ], [ %i.nu, %bb.bm ] ; 2 uses
  %.2180.i = phi ptr [ %.1179.i, %get_coc.exit._crit_edge.i ], [ %.0178441.i, %bytestream2_init.exit221.i ], [ %.0178441.i, %bb.bm ]
  %.2177.i = phi ptr [ %.1176.i, %get_coc.exit._crit_edge.i ], [ %.0175442.i, %bytestream2_init.exit221.i ], [ %.0175442.i, %bb.bm ]
  %.2174.i = phi ptr [ %.1173.i, %get_coc.exit._crit_edge.i ], [ %.0172443.i, %bytestream2_init.exit221.i ], [ %.0172443.i, %bb.bm ]
  %.2171.i = phi ptr [ %.1170.i, %get_coc.exit._crit_edge.i ], [ %.0169444.i, %bytestream2_init.exit221.i ], [ %.0169444.i, %bb.bm ]
  %.3.i75 = phi i8 [ %.2168.i, %get_coc.exit._crit_edge.i ], [ %.0166445.i, %bytestream2_init.exit221.i ], [ %.0166445.i, %bb.bm ]
  %i.anx = ptrtoint ptr %i.anw to i64             ; 2 uses
  %i.any = sub i64 %i.anx, %.pre-phi.i74
  %i.anz = trunc i64 %i.any to i32
end_hunk_1
