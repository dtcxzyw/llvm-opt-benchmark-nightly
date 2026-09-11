Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/UriRecompose?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@uriToStringEngineA:bb.a
  store i8 0, ptr %0, align 1, !tbaa !10
  %.not531 = icmp eq ptr %3, null
  br i1 %.not531, label %.critedge, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.ba:                                            ; preds = %bb.an
  %i.ev = load i32, ptr %4, align 4, !tbaa !6
  %i.ew = add nsw i32 %i.ev, 41
  store i32 %i.ew, ptr %4, align 4, !tbaa !6
  br label %.thread601

bb.bb:                                            ; preds = %bb.am
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !25 ; 2 uses
  %.not516 = icmp eq ptr %i.ey, null
  br i1 %.not516, label %bb.bo, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !26
  %i.fb = ptrtoint ptr %i.fa to i64
  %i.fc = ptrtoint ptr %i.ey to i64
  %i.fd = sub i64 %i.fb, %i.fc                    ; 2 uses
  %i.fe = trunc i64 %i.fd to i32                  ; 2 uses
  br i1 %i.c, label %bb.bn, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ff = add nsw i32 %.7388, 1                   ; 2 uses
  %.not521.not = icmp slt i32 %.7388, %i.f
  br i1 %.not521.not, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fg = sext i32 %.7388 to i64
  %i.fh = getelementptr inbounds i8, ptr %0, i64 %i.fg
  store i8 91, ptr %i.fh, align 1
  %i.fi = add nsw i32 %i.ff, %i.fe                ; 4 uses
  %.not523.not = icmp slt i32 %i.fi, %2
  br i1 %.not523.not, label %bb.bh, label %bb.bi

bb.bf:                                            ; preds = %bb.bd
  store i8 0, ptr %0, align 1, !tbaa !10
  %.not522 = icmp eq ptr %3, null
  br i1 %.not522, label %.critedge, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.bh:                                            ; preds = %bb.be
  %i.fj = sext i32 %i.ff to i64
  %i.fk = getelementptr inbounds i8, ptr %0, i64 %i.fj
  %i.fl = load ptr, ptr %i.ex, align 8, !tbaa !25
  %sext525 = shl i64 %i.fd, 32
  %i.fm = ashr exact i64 %sext525, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fk, ptr align 1 %i.fl, i64 %i.fm, i1 false)
  %.not526.not = icmp slt i32 %i.fi, %i.f
  br i1 %.not526.not, label %bb.bk, label %bb.bl

bb.bi:                                            ; preds = %bb.be
  store i8 0, ptr %0, align 1, !tbaa !10
  %.not524 = icmp eq ptr %3, null
  br i1 %.not524, label %.critedge, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.bk:                                            ; preds = %bb.bh
  %i.fn = add nsw i32 %i.fi, 1
  %i.fo = sext i32 %i.fi to i64
  %i.fp = getelementptr inbounds i8, ptr %0, i64 %i.fo
  store i8 93, ptr %i.fp, align 1
  br label %.thread601

bb.bl:                                            ; preds = %bb.bh
  store i8 0, ptr %0, align 1, !tbaa !10
  %.not527 = icmp eq ptr %3, null
  br i1 %.not527, label %.critedge, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.bn:                                            ; preds = %bb.bc
  %i.fq = add nsw i32 %i.fe, 2
  %i.fr = load i32, ptr %4, align 4, !tbaa !6
  %i.fs = add nsw i32 %i.fq, %i.fr
  store i32 %i.fs, ptr %4, align 4, !tbaa !6
  br label %.thread601

bb.bo:                                            ; preds = %bb.bb
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !27 ; 3 uses
  %.not517 = icmp eq ptr %i.fu, null
  br i1 %.not517, label %.thread601, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !28
  %i.fx = ptrtoint ptr %i.fw to i64
  %i.fy = ptrtoint ptr %i.fu to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 2 uses
  %i.ga = trunc i64 %i.fz to i32                  ; 2 uses
  br i1 %i.c, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gb = add nsw i32 %.7388, %i.ga               ; 2 uses
  %.not518.not = icmp slt i32 %i.gb, %2
  br i1 %.not518.not, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gc = sext i32 %.7388 to i64
  %i.gd = getelementptr inbounds i8, ptr %0, i64 %i.gc
  %sext520 = shl i64 %i.fz, 32
  %i.ge = ashr exact i64 %sext520, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gd, ptr nonnull align 1 %i.fu, i64 %i.ge, i1 false)
  br label %.thread601

bb.bs:                                            ; preds = %bb.bq
  store i8 0, ptr %0, align 1, !tbaa !10
  %.not519 = icmp eq ptr %3, null
  br i1 %.not519, label %.critedge, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.bu:                                            ; preds = %bb.bp
  %i.gf = load i32, ptr %4, align 4, !tbaa !6
  %i.gg = add nsw i32 %i.gf, %i.ga
  store i32 %i.gg, ptr %4, align 4, !tbaa !6
  br label %.thread601

.thread601:                                       ; preds = %bb.ah, %.preheader682.split.us, %bb.br, %bb.bu, %bb.bn, %bb.bk, %bb.ba, %bb.ax, %bb.bo
  %.23 = phi i32 [ %.7388, %bb.bn ], [ %.7388, %bb.bo ], [ %i.es, %bb.ax ], [ %i.gb, %bb.br ], [ %.7388, %bb.ba ], [ %i.fn, %bb.bk ], [ %.7388, %bb.bu ], [ %.7388, %.preheader682.split.us ], [ %i.cr, %bb.ah ] ; 5 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !29 ; 2 uses
  %.not541 = icmp eq ptr %i.gi, null
  br i1 %.not541, label %bb.ce, label %bb.bv

bb.bv:                                            ; preds = %.thread601
  %i.gj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !30
  %i.gl = ptrtoint ptr %i.gk to i64
  %i.gm = ptrtoint ptr %i.gi to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 2 uses
  %i.go = trunc i64 %i.gn to i32                  ; 2 uses
  br i1 %i.c, label %bb.cd, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.gp = add nsw i32 %.23, 1                     ; 2 uses
  %.not542.not = icmp slt i32 %.23, %i.f
  br i1 %.not542.not, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.gq = sext i32 %.23 to i64
  %i.gr = getelementptr inbounds i8, ptr %0, i64 %i.gq
  store i8 58, ptr %i.gr, align 1
  %i.gs = add nsw i32 %i.gp, %i.go                ; 2 uses
  %.not544.not = icmp slt i32 %i.gs, %2
  br i1 %.not544.not, label %bb.ca, label %bb.cb

bb.by:                                            ; preds = %bb.bw
  store i8 0, ptr %0, align 1, !tbaa !10
  %.not543 = icmp eq ptr %3, null
  br i1 %.not543, label %.critedge, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.ca:                                            ; preds = %bb.bx
  %i.gt = sext i32 %i.gp to i64
  %i.gu = getelementptr inbounds i8, ptr %0, i64 %i.gt
  %i.gv = load ptr, ptr %i.gh, align 8, !tbaa !29
  %sext546 = shl i64 %i.gn, 32
  %i.gw = ashr exact i64 %sext546, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gu, ptr align 1 %i.gv, i64 %i.gw, i1 false)
  br label %bb.ce

bb.cb:                                            ; preds = %bb.bx
  store i8 0, ptr %0, align 1, !tbaa !10
  %.not545 = icmp eq ptr %3, null
  br i1 %.not545, label %.critedge, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.cd:                                            ; preds = %bb.bv
  %i.gx = add nsw i32 %i.go, 1
  %i.gy = load i32, ptr %4, align 4, !tbaa !6
  %i.gz = add nsw i32 %i.gx, %i.gy
  store i32 %i.gz, ptr %4, align 4, !tbaa !6
  br label %bb.ce

bb.ce:                                            ; preds = %.thread761, %bb.cd, %bb.ca, %.thread584, %.thread601, %bb.q
  %.26 = phi i32 [ 0, %.thread584 ], [ %.23, %.thread601 ], [ %.3384, %bb.q ], [ %i.gs, %bb.ca ], [ %.23, %bb.cd ], [ 0, %.thread761 ] ; 7 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !31
  %.not547 = icmp eq i32 %i.hb, 0
  br i1 %.not547, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !32
  %.not548 = icmp eq ptr %i.hd, null
  br i1 %.not548, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.he = tail call i32 @uriIsHostSetA(ptr noundef nonnull %1) #4
  %.not549 = icmp eq i32 %i.he, 0
  br i1 %.not549, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ce
  br i1 %i.c, label %.thread783, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.not550.not = icmp slt i32 %.26, %i.f
  br i1 %.not550.not, label %.thread777, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i8 0, ptr %0, align 1, !tbaa !10
  %.not551 = icmp eq ptr %3, null
  br i1 %.not551, label %.critedge, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.cl:                                            ; preds = %bb.cg, %bb.cf
  %i.hf = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !32 ; 3 uses
  %.not552 = icmp eq ptr %i.hg, null
  br i1 %.not552, label %.thread647, label %.preheader

.thread783:                                       ; preds = %bb.ch
  %i.hh = load i32, ptr %4, align 4, !tbaa !6
  %i.hi = add nsw i32 %i.hh, 1
  store i32 %i.hi, ptr %4, align 4, !tbaa !6
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !32 ; 2 uses
  %.not552784 = icmp eq ptr %i.hk, null
  br i1 %.not552784, label %.thread647.thread794, label %.preheader.split.us

.thread777:                                       ; preds = %bb.ci
  %i.hl = add nsw i32 %.26, 1                     ; 4 uses
  %i.hm = sext i32 %.26 to i64
  %i.hn = getelementptr inbounds i8, ptr %0, i64 %i.hm
  store i8 47, ptr %i.hn, align 1
  %i.ho = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !32 ; 2 uses
  %.not552779 = icmp eq ptr %i.hp, null
  br i1 %.not552779, label %.thread647.thread788, label %.preheader.split.preheader

.preheader:                                       ; preds = %bb.cl
  br i1 %i.c, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.thread777, %.preheader
  %.28.ph = phi i32 [ %i.hl, %.thread777 ], [ %.26, %.preheader ]
  %.0.ph = phi ptr [ %i.hp, %.thread777 ], [ %i.hg, %.preheader ]
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.thread783, %.preheader
  %i.hq = phi ptr [ %i.hg, %.preheader ], [ %i.hk, %.thread783 ] ; 3 uses
  %.promoted699 = load i32, ptr %4, align 4, !tbaa !6
  %5 = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !34
  %7 = load ptr, ptr %i.hq, align 8, !tbaa !35
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = trunc i64 %10 to i32
  %12 = add nsw i32 %.promoted699, %11            ; 2 uses
  store i32 %12, ptr %4, align 4, !tbaa !6
  %13 = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %14 = load ptr, ptr %13, align 8, !tbaa !36     ; 2 uses
  %.not556.us832 = icmp eq ptr %14, null
  br i1 %.not556.us832, label %.thread647, label %.lr.ph833

.lr.ph833:                                        ; preds = %.preheader.split.us, %.lr.ph833
  %15 = phi ptr [ %i.ib, %.lr.ph833 ], [ %14, %.preheader.split.us ] ; 3 uses
  %i.hr = phi i32 [ %i.hz, %.lr.ph833 ], [ %12, %.preheader.split.us ]
  %16 = add nsw i32 %i.hr, 1
  %i.hs = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !34
  %i.hu = load ptr, ptr %15, align 8, !tbaa !35
  %i.hv = ptrtoint ptr %i.ht to i64
  %i.hw = ptrtoint ptr %i.hu to i64
  %i.hx = sub i64 %i.hv, %i.hw
  %i.hy = trunc i64 %i.hx to i32
  %i.hz = add nsw i32 %16, %i.hy                  ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !36 ; 2 uses
  %.not556.us = icmp eq ptr %i.ib, null
  br i1 %.not556.us, label %.thread647.loopexit, label %.lr.ph833

.preheader.split:                                 ; preds = %.preheader.split.preheader, %bb.co
  %.28 = phi i32 [ %i.ip, %bb.co ], [ %.28.ph, %.preheader.split.preheader ] ; 2 uses
  %.0 = phi ptr [ %.pr, %bb.co ], [ %.0.ph, %.preheader.split.preheader ] ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !34
  %i.ie = load ptr, ptr %.0, align 8, !tbaa !35   ; 2 uses
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig                    ; 2 uses
  %i.ii = trunc i64 %i.ih to i32
  %i.ij = add nsw i32 %.28, %i.ii                 ; 6 uses
  %.not553.not = icmp slt i32 %i.ij, %2
  br i1 %.not553.not, label %.thread631, label %bb.cm

bb.cm:                                            ; preds = %.preheader.split
  store i8 0, ptr %0, align 1, !tbaa !10
  %.not554 = icmp eq ptr %3, null
  br i1 %.not554, label %.critedge, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

.thread631:                                       ; preds = %.preheader.split
  %i.ik = sext i32 %.28 to i64
  %i.il = getelementptr inbounds i8, ptr %0, i64 %i.ik
  %sext555 = shl i64 %i.ih, 32
  %i.im = ashr exact i64 %sext555, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.il, ptr align 1 %i.ie, i64 %i.im, i1 false)
  %i.in = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !36
  %.not556633 = icmp eq ptr %i.io, null
  br i1 %.not556633, label %.thread647.thread, label %.thread635

.thread635:                                       ; preds = %.thread631
  %.not557.not = icmp slt i32 %i.ij, %i.f
  br i1 %.not557.not, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.thread635
  %i.ip = add nsw i32 %i.ij, 1                    ; 2 uses
  %i.iq = sext i32 %i.ij to i64
  %i.ir = getelementptr inbounds i8, ptr %0, i64 %i.iq
  store i8 47, ptr %i.ir, align 1
  %.pr = load ptr, ptr %i.in, align 8, !tbaa !36  ; 2 uses
  %.not559 = icmp eq ptr %.pr, null
  br i1 %.not559, label %.thread647, label %.preheader.split, !llvm.loop !13

bb.cp:                                            ; preds = %.thread635
  store i8 0, ptr %0, align 1, !tbaa !10
  %.not558 = icmp eq ptr %3, null
  br i1 %.not558, label %.critedge, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

.thread647.loopexit:                              ; preds = %.lr.ph833
  store i32 %i.hz, ptr %4, align 4, !tbaa !6
  br label %.thread647

.thread647:                                       ; preds = %bb.co, %.thread647.loopexit, %.preheader.split.us, %bb.cl
  %.32 = phi i32 [ %.26, %bb.cl ], [ %.26, %.preheader.split.us ], [ %.26, %.thread647.loopexit ], [ %i.ip, %bb.co ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !37 ; 2 uses
  %.not560 = icmp eq ptr %i.it, null
  br i1 %.not560, label %.thread655, label %bb.cr

.thread647.thread794:                             ; preds = %.thread783
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !37 ; 2 uses
  %.not560796 = icmp eq ptr %i.iv, null
  br i1 %.not560796, label %.thread655.thread807, label %.thread655.thread

.thread647.thread788:                             ; preds = %.thread777
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !37
  %.not560790 = icmp eq ptr %i.ix, null
  br i1 %.not560790, label %.thread655.thread799, label %.thread668

.thread647.thread:                                ; preds = %.thread631
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !37
  %.not560666 = icmp eq ptr %i.iz, null
  br i1 %.not560666, label %.thread655, label %.thread668

bb.cr:                                            ; preds = %.thread647
  br i1 %i.c, label %.thread655.thread, label %.thread668

.thread668:                                       ; preds = %.thread647.thread788, %.thread647.thread, %bb.cr
  %.32667670 = phi i32 [ %.32, %bb.cr ], [ %i.ij, %.thread647.thread ], [ %i.hl, %.thread647.thread788 ] ; 3 uses
  %i.ja = phi ptr [ %i.is, %bb.cr ], [ %i.iy, %.thread647.thread ], [ %i.iw, %.thread647.thread788 ]
  %.not561.not = icmp slt i32 %.32667670, %i.f
  br i1 %.not561.not, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %.thread668
  store i8 0, ptr %0, align 1, !tbaa !10
  %.not562 = icmp eq ptr %3, null
  br i1 %.not562, label %.critedge, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.cu:                                            ; preds = %.thread668
  %i.jb = add nsw i32 %.32667670, 1               ; 2 uses
  %i.jc = sext i32 %.32667670 to i64
  %i.jd = getelementptr inbounds i8, ptr %0, i64 %i.jc
  store i8 63, ptr %i.jd, align 1
  %i.je = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !38
  %i.jg = load ptr, ptr %i.ja, align 8, !tbaa !37 ; 2 uses
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = sub i64 %i.jh, %i.ji                    ; 2 uses
  %i.jk = trunc i64 %i.jj to i32
  %i.jl = add nsw i32 %i.jb, %i.jk                ; 2 uses
  %.not563.not = icmp slt i32 %i.jl, %2
  br i1 %.not563.not, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.jm = sext i32 %i.jb to i64
  %i.jn = getelementptr inbounds i8, ptr %0, i64 %i.jm
  %sext565 = shl i64 %i.jj, 32
  %i.jo = ashr exact i64 %sext565, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jn, ptr align 1 %i.jg, i64 %i.jo, i1 false)
  br label %.thread655

bb.cw:                                            ; preds = %bb.cu
  store i8 0, ptr %0, align 1, !tbaa !10
  %.not564 = icmp eq ptr %3, null
  br i1 %.not564, label %.critedge, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

.thread655:                                       ; preds = %bb.cv, %.thread647.thread, %.thread647
  %.36 = phi i32 [ %i.ij, %.thread647.thread ], [ %.32, %.thread647 ], [ %i.jl, %bb.cv ] ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !39 ; 2 uses
  %.not566 = icmp eq ptr %i.jq, null
  br i1 %.not566, label %.thread662, label %bb.cy

.thread655.thread807:                             ; preds = %.thread647.thread794
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !39 ; 2 uses
  %.not566809 = icmp eq ptr %i.js, null
  br i1 %.not566809, label %.critedge, label %..thread674_crit_edge

.thread655.thread799:                             ; preds = %.thread647.thread788
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !39
  %.not566801 = icmp eq ptr %i.ju, null
  br i1 %.not566801, label %.thread662.thread813, label %.thread804

.thread655.thread:                                ; preds = %.thread647.thread794, %bb.cr
  %i.jv = phi ptr [ %i.it, %bb.cr ], [ %i.iv, %.thread647.thread794 ]
  %i.jw = load i32, ptr %4, align 4, !tbaa !6
  %i.jx = add nsw i32 %i.jw, 1
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !38
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = ptrtoint ptr %i.jv to i64
  %i.kc = sub i64 %i.ka, %i.kb
  %i.kd = trunc i64 %i.kc to i32
  %i.ke = add nsw i32 %i.jx, %i.kd                ; 2 uses
  store i32 %i.ke, ptr %4, align 4, !tbaa !6
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !39 ; 2 uses
  %.not566672 = icmp eq ptr %i.kg, null
  br i1 %.not566672, label %.critedge, label %.thread674

bb.cy:                                            ; preds = %.thread655
  br i1 %i.c, label %..thread674_crit_edge, label %.thread804

..thread674_crit_edge:                            ; preds = %.thread655.thread807, %bb.cy
  %i.kh = phi ptr [ %i.jq, %bb.cy ], [ %i.js, %.thread655.thread807 ]
  %.pre = load i32, ptr %4, align 4, !tbaa !6
  br label %.thread674

.thread804:                                       ; preds = %.thread655.thread799, %bb.cy
  %.36803806 = phi i32 [ %.36, %bb.cy ], [ %i.hl, %.thread655.thread799 ] ; 3 uses
  %i.ki = phi ptr [ %i.jp, %bb.cy ], [ %i.jt, %.thread655.thread799 ]
  %.not567.not = icmp slt i32 %.36803806, %i.f
  br i1 %.not567.not, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %.thread804
  store i8 0, ptr %0, align 1, !tbaa !10
  %.not568 = icmp eq ptr %3, null
  br i1 %.not568, label %.critedge, label %bb.da

bb.da:                                            ; preds = %bb.cz
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.db:                                            ; preds = %.thread804
  %i.kj = add nsw i32 %.36803806, 1               ; 2 uses
  %i.kk = sext i32 %.36803806 to i64
  %i.kl = getelementptr inbounds i8, ptr %0, i64 %i.kk
  store i8 35, ptr %i.kl, align 1
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !40
  %i.ko = load ptr, ptr %i.ki, align 8, !tbaa !39 ; 2 uses
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = ptrtoint ptr %i.ko to i64
  %i.kr = sub i64 %i.kp, %i.kq                    ; 2 uses
  %i.ks = trunc i64 %i.kr to i32
  %i.kt = add nsw i32 %i.kj, %i.ks                ; 2 uses
  %.not569.not = icmp slt i32 %i.kt, %2
  br i1 %.not569.not, label %.thread662.thread678, label %bb.dc

.thread662.thread678:                             ; preds = %bb.db
  %i.ku = sext i32 %i.kj to i64
  %i.kv = getelementptr inbounds i8, ptr %0, i64 %i.ku
  %sext571 = shl i64 %i.kr, 32
  %i.kw = ashr exact i64 %sext571, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kv, ptr align 1 %i.ko, i64 %i.kw, i1 false)
  br label %.thread662.thread813

bb.dc:                                            ; preds = %bb.db
  store i8 0, ptr %0, align 1, !tbaa !10
  %.not570 = icmp eq ptr %3, null
  br i1 %.not570, label %.critedge, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

.thread674:                                       ; preds = %..thread674_crit_edge, %.thread655.thread
  %i.kx = phi ptr [ %i.kh, %..thread674_crit_edge ], [ %i.kg, %.thread655.thread ]
  %i.ky = phi i32 [ %.pre, %..thread674_crit_edge ], [ %i.ke, %.thread655.thread ]
  %i.kz = add nsw i32 %i.ky, 1
  %i.la = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !40
  %i.lc = ptrtoint ptr %i.lb to i64
  %i.ld = ptrtoint ptr %i.kx to i64
  %i.le = sub i64 %i.lc, %i.ld
  %i.lf = trunc i64 %i.le to i32
  %i.lg = add nsw i32 %i.kz, %i.lf
  store i32 %i.lg, ptr %4, align 4, !tbaa !6
  br label %.critedge

.thread662:                                       ; preds = %.thread655
  br i1 %i.c, label %.critedge, label %.thread662.thread813

.thread662.thread813:                             ; preds = %.thread655.thread799, %.thread662.thread678, %.thread662
  %.40680 = phi i32 [ %i.kt, %.thread662.thread678 ], [ %.36, %.thread662 ], [ %i.hl, %.thread655.thread799 ] ; 2 uses
  %i.lh = sext i32 %.40680 to i64
  %i.li = getelementptr inbounds i8, ptr %0, i64 %i.lh
  store i8 0, ptr %i.li, align 1, !tbaa !10
  %.not572 = icmp eq ptr %3, null
  br i1 %.not572, label %.critedge, label %bb.de

bb.de:                                            ; preds = %.thread662.thread813
  %i.lj = add nsw i32 %.40680, 1
  store i32 %i.lj, ptr %3, align 4, !tbaa !6
  br label %.critedge

.critedge:                                        ; preds = %.thread655.thread807, %.thread655.thread, %.thread674, %bb.cp, %bb.cq, %bb.cn, %bb.cm, %bb.cc, %bb.bz, %bb.by, %bb.cb, %bb.bm, %bb.bj, %bb.bg, %bb.bf, %bb.bi, %bb.bl, %bb.as, %bb.ar, %bb.av, %bb.au, %bb.az, %bb.aq, %bb.ap, %bb.ay, %bb.dd, %bb.dc, %bb.cx, %bb.cw, %bb.bt, %bb.bs, %bb.al, %bb.ai, %.preheader682.split._crit_edge, %bb.ak, %bb.z, %bb.w, %bb.x, %bb.aa, %bb.o, %bb.k, %bb.l, %bb.p, %.thread662, %bb.de, %.thread662.thread813, %bb.cz, %bb.da, %bb.cs, %bb.ct, %bb.cj, %bb.ck, %bb.s, %bb.t, %bb.f, %bb.g, %bb.c, %bb.d
  %.21 = phi i32 [ 0, %.thread662 ], [ 2, %bb.c ], [ 4, %bb.cz ], [ 4, %bb.cx ], [ 4, %bb.cs ], [ 4, %bb.bs ], [ 4, %bb.z ], [ 4, %bb.bt ], [ 4, %bb.s ], [ 4, %bb.bm ], [ 4, %bb.cc ], [ 4, %bb.dd ], [ 4, %bb.as ], [ 4, %bb.al ], [ 4, %bb.o ], [ 4, %bb.f ], [ 2, %bb.d ], [ 4, %bb.g ], [ 4, %bb.t ], [ 4, %bb.ck ], [ 4, %bb.cj ], [ 4, %bb.ct ], [ 4, %bb.da ], [ 0, %.thread662.thread813 ], [ 0, %bb.de ], [ 4, %bb.p ], [ 4, %bb.l ], [ 4, %bb.k ], [ 4, %bb.aa ], [ 4, %bb.x ], [ 4, %bb.w ], [ 4, %bb.ak ], [ 4, %.preheader682.split._crit_edge ], [ 4, %bb.ai ], [ 4, %bb.cw ], [ 4, %bb.dc ], [ 4, %bb.ay ], [ 4, %bb.ap ], [ 4, %bb.aq ], [ 4, %bb.az ], [ 4, %bb.au ], [ 4, %bb.av ], [ 4, %bb.ar ], [ 4, %bb.bl ], [ 4, %bb.bi ], [ 4, %bb.bf ], [ 4, %bb.bg ], [ 4, %bb.bj ], [ 4, %bb.cb ], [ 4, %bb.by ], [ 4, %bb.bz ], [ 4, %bb.cm ], [ 4, %bb.cn ], [ 4, %bb.cq ], [ 4, %bb.cp ], [ 0, %.thread674 ], [ 0, %.thread655.thread ], [ 0, %.thread655.thread807 ]
  ret i32 %.21
}
end_hunk_0
begin_hunk_1_@uriToStringEngineW:bb.a
  br label %.critedge

bb.ba:                                            ; preds = %bb.an
  %i.fi = load i32, ptr %4, align 4, !tbaa !6
  %i.fj = add nsw i32 %i.fi, 41
  store i32 %i.fj, ptr %4, align 4, !tbaa !6
  br label %.thread601

bb.bb:                                            ; preds = %bb.am
  %i.fk = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !54 ; 2 uses
  %.not516 = icmp eq ptr %i.fl, null
  br i1 %.not516, label %bb.bo, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !55
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = sub i64 %i.fo, %i.fp                    ; 2 uses
  %i.fr = lshr exact i64 %i.fq, 2
  %i.fs = trunc i64 %i.fr to i32                  ; 2 uses
  br i1 %i.c, label %bb.bn, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ft = add nsw i32 %.7388, 1                   ; 2 uses
  %.not521.not = icmp slt i32 %.7388, %i.f
  br i1 %.not521.not, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.fu = sext i32 %.7388 to i64
  %i.fv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fu
  store i32 91, ptr %i.fv, align 4
  %i.fw = add nsw i32 %i.ft, %i.fs                ; 4 uses
  %.not523.not = icmp slt i32 %i.fw, %2
  br i1 %.not523.not, label %bb.bh, label %bb.bi

bb.bf:                                            ; preds = %bb.bd
  store i32 0, ptr %0, align 4, !tbaa !6
  %.not522 = icmp eq ptr %3, null
  br i1 %.not522, label %.critedge, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.bh:                                            ; preds = %bb.be
  %i.fx = sext i32 %i.ft to i64
  %i.fy = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fx
  %i.fz = load ptr, ptr %i.fk, align 8, !tbaa !54
  %sext525 = shl i64 %i.fq, 30
  %i.ga = ashr exact i64 %sext525, 30
  %i.gb = and i64 %i.ga, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.fy, ptr align 4 %i.fz, i64 %i.gb, i1 false)
  %.not526.not = icmp slt i32 %i.fw, %i.f
  br i1 %.not526.not, label %bb.bk, label %bb.bl

bb.bi:                                            ; preds = %bb.be
  store i32 0, ptr %0, align 4, !tbaa !6
  %.not524 = icmp eq ptr %3, null
  br i1 %.not524, label %.critedge, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.bk:                                            ; preds = %bb.bh
  %i.gc = add nsw i32 %i.fw, 1
  %i.gd = sext i32 %i.fw to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gd
  store i32 93, ptr %i.ge, align 4
  br label %.thread601

bb.bl:                                            ; preds = %bb.bh
  store i32 0, ptr %0, align 4, !tbaa !6
  %.not527 = icmp eq ptr %3, null
  br i1 %.not527, label %.critedge, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.bn:                                            ; preds = %bb.bc
  %i.gf = add nsw i32 %i.fs, 2
  %i.gg = load i32, ptr %4, align 4, !tbaa !6
  %i.gh = add nsw i32 %i.gf, %i.gg
  store i32 %i.gh, ptr %4, align 4, !tbaa !6
  br label %.thread601

bb.bo:                                            ; preds = %bb.bb
  %i.gi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !56 ; 3 uses
  %.not517 = icmp eq ptr %i.gj, null
  br i1 %.not517, label %.thread601, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !57
  %i.gm = ptrtoint ptr %i.gl to i64
  %i.gn = ptrtoint ptr %i.gj to i64
  %i.go = sub i64 %i.gm, %i.gn                    ; 2 uses
  %i.gp = lshr exact i64 %i.go, 2
  %i.gq = trunc i64 %i.gp to i32                  ; 2 uses
  br i1 %i.c, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gr = add nsw i32 %.7388, %i.gq               ; 2 uses
  %.not518.not = icmp slt i32 %i.gr, %2
  br i1 %.not518.not, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.gs = sext i32 %.7388 to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gs
  %sext520 = shl i64 %i.go, 30
  %i.gu = ashr exact i64 %sext520, 30
  %i.gv = and i64 %i.gu, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.gt, ptr nonnull align 4 %i.gj, i64 %i.gv, i1 false)
  br label %.thread601

bb.bs:                                            ; preds = %bb.bq
  store i32 0, ptr %0, align 4, !tbaa !6
  %.not519 = icmp eq ptr %3, null
  br i1 %.not519, label %.critedge, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.bu:                                            ; preds = %bb.bp
  %i.gw = load i32, ptr %4, align 4, !tbaa !6
  %i.gx = add nsw i32 %i.gw, %i.gq
  store i32 %i.gx, ptr %4, align 4, !tbaa !6
  br label %.thread601

.thread601:                                       ; preds = %bb.ah, %.preheader692.split.us, %bb.br, %bb.bu, %bb.bn, %bb.bk, %bb.ba, %bb.ax, %bb.bo
  %.23 = phi i32 [ %.7388, %bb.bn ], [ %.7388, %bb.bo ], [ %i.ff, %bb.ax ], [ %i.gr, %bb.br ], [ %.7388, %bb.ba ], [ %i.gc, %bb.bk ], [ %.7388, %bb.bu ], [ %.7388, %.preheader692.split.us ], [ %i.cx, %bb.ah ] ; 5 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !58 ; 2 uses
  %.not541 = icmp eq ptr %i.gz, null
  br i1 %.not541, label %bb.ce, label %bb.bv

bb.bv:                                            ; preds = %.thread601
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !59
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = sub i64 %i.hc, %i.hd                    ; 2 uses
  %i.hf = lshr exact i64 %i.he, 2
  %i.hg = trunc i64 %i.hf to i32                  ; 2 uses
  br i1 %i.c, label %bb.cd, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hh = add nsw i32 %.23, 1                     ; 2 uses
  %.not542.not = icmp slt i32 %.23, %i.f
  br i1 %.not542.not, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.hi = sext i32 %.23 to i64
  %i.hj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hi
  store i32 58, ptr %i.hj, align 4
  %i.hk = add nsw i32 %i.hh, %i.hg                ; 2 uses
  %.not544.not = icmp slt i32 %i.hk, %2
  br i1 %.not544.not, label %bb.ca, label %bb.cb

bb.by:                                            ; preds = %bb.bw
  store i32 0, ptr %0, align 4, !tbaa !6
  %.not543 = icmp eq ptr %3, null
  br i1 %.not543, label %.critedge, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.ca:                                            ; preds = %bb.bx
  %i.hl = sext i32 %i.hh to i64
  %i.hm = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hl
  %i.hn = load ptr, ptr %i.gy, align 8, !tbaa !58
  %sext546 = shl i64 %i.he, 30
  %i.ho = ashr exact i64 %sext546, 30
  %i.hp = and i64 %i.ho, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hm, ptr align 4 %i.hn, i64 %i.hp, i1 false)
  br label %bb.ce

bb.cb:                                            ; preds = %bb.bx
  store i32 0, ptr %0, align 4, !tbaa !6
  %.not545 = icmp eq ptr %3, null
  br i1 %.not545, label %.critedge, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.cd:                                            ; preds = %bb.bv
  %i.hq = add nsw i32 %i.hg, 1
  %i.hr = load i32, ptr %4, align 4, !tbaa !6
  %i.hs = add nsw i32 %i.hq, %i.hr
  store i32 %i.hs, ptr %4, align 4, !tbaa !6
  br label %bb.ce

bb.ce:                                            ; preds = %.thread771, %bb.cd, %bb.ca, %.thread584, %.thread601, %bb.q
  %.26 = phi i32 [ 0, %.thread584 ], [ %.23, %.thread601 ], [ %.3384, %bb.q ], [ %i.hk, %bb.ca ], [ %.23, %bb.cd ], [ 0, %.thread771 ] ; 7 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !60
  %.not547 = icmp eq i32 %i.hu, 0
  br i1 %.not547, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.hv = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !61
  %.not548 = icmp eq ptr %i.hw, null
  br i1 %.not548, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.hx = tail call i32 @uriIsHostSetW(ptr noundef nonnull %1) #4
  %.not549 = icmp eq i32 %i.hx, 0
  br i1 %.not549, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.ce
  br i1 %i.c, label %.thread793, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.not550.not = icmp slt i32 %.26, %i.f
  br i1 %.not550.not, label %.thread787, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  store i32 0, ptr %0, align 4, !tbaa !6
  %.not551 = icmp eq ptr %3, null
  br i1 %.not551, label %.critedge, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.cl:                                            ; preds = %bb.cg, %bb.cf
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !61 ; 3 uses
  %.not552 = icmp eq ptr %i.hz, null
  br i1 %.not552, label %.thread647, label %.preheader

.thread793:                                       ; preds = %bb.ch
  %i.ia = load i32, ptr %4, align 4, !tbaa !6
  %i.ib = add nsw i32 %i.ia, 1
  store i32 %i.ib, ptr %4, align 4, !tbaa !6
  %i.ic = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !61 ; 2 uses
  %.not552794 = icmp eq ptr %i.id, null
  br i1 %.not552794, label %.thread647.thread804, label %.preheader.split.us

.thread787:                                       ; preds = %bb.ci
  %i.ie = add nsw i32 %.26, 1                     ; 4 uses
  %i.if = sext i32 %.26 to i64
  %i.ig = getelementptr inbounds [4 x i8], ptr %0, i64 %i.if
  store i32 47, ptr %i.ig, align 4
  %i.ih = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !61 ; 2 uses
  %.not552789 = icmp eq ptr %i.ii, null
  br i1 %.not552789, label %.thread647.thread798, label %.preheader.split.preheader

.preheader:                                       ; preds = %bb.cl
  br i1 %i.c, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.thread787, %.preheader
  %.28.ph = phi i32 [ %i.ie, %.thread787 ], [ %.26, %.preheader ]
  %.0.ph = phi ptr [ %i.ii, %.thread787 ], [ %i.hz, %.preheader ]
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.thread793, %.preheader
  %i.ij = phi ptr [ %i.hz, %.preheader ], [ %i.id, %.thread793 ] ; 3 uses
  %.promoted709 = load i32, ptr %4, align 4, !tbaa !6
  %5 = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = load ptr, ptr %i.ij, align 8, !tbaa !64
  %8 = ptrtoint ptr %6 to i64
  %9 = ptrtoint ptr %7 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 2
  %12 = trunc i64 %11 to i32
  %13 = add nsw i32 %.promoted709, %12            ; 2 uses
  store i32 %13, ptr %4, align 4, !tbaa !6
  %14 = getelementptr inbounds nuw i8, ptr %i.ij, i64 16
  %15 = load ptr, ptr %14, align 8, !tbaa !65     ; 2 uses
  %.not556.us842 = icmp eq ptr %15, null
  br i1 %.not556.us842, label %.thread647, label %.lr.ph843

.lr.ph843:                                        ; preds = %.preheader.split.us, %.lr.ph843
  %16 = phi ptr [ %i.iv, %.lr.ph843 ], [ %15, %.preheader.split.us ] ; 3 uses
  %i.ik = phi i32 [ %i.it, %.lr.ph843 ], [ %13, %.preheader.split.us ]
  %17 = add nsw i32 %i.ik, 1
  %i.il = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !63
  %i.in = load ptr, ptr %16, align 8, !tbaa !64
  %i.io = ptrtoint ptr %i.im to i64
  %i.ip = ptrtoint ptr %i.in to i64
  %i.iq = sub i64 %i.io, %i.ip
  %i.ir = lshr exact i64 %i.iq, 2
  %i.is = trunc i64 %i.ir to i32
  %i.it = add nsw i32 %17, %i.is                  ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !65 ; 2 uses
  %.not556.us = icmp eq ptr %i.iv, null
  br i1 %.not556.us, label %.thread647.loopexit, label %.lr.ph843

.preheader.split:                                 ; preds = %.preheader.split.preheader, %bb.co
  %.28 = phi i32 [ %i.jl, %bb.co ], [ %.28.ph, %.preheader.split.preheader ] ; 2 uses
  %.0 = phi ptr [ %.pr, %bb.co ], [ %.0.ph, %.preheader.split.preheader ] ; 3 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !63
  %i.iy = load ptr, ptr %.0, align 8, !tbaa !64   ; 2 uses
  %i.iz = ptrtoint ptr %i.ix to i64
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja                    ; 2 uses
  %i.jc = lshr exact i64 %i.jb, 2
  %i.jd = trunc i64 %i.jc to i32
  %i.je = add nsw i32 %.28, %i.jd                 ; 6 uses
  %.not553.not = icmp slt i32 %i.je, %2
  br i1 %.not553.not, label %.thread631, label %bb.cm

bb.cm:                                            ; preds = %.preheader.split
  store i32 0, ptr %0, align 4, !tbaa !6
  %.not554 = icmp eq ptr %3, null
  br i1 %.not554, label %.critedge, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

.thread631:                                       ; preds = %.preheader.split
  %i.jf = sext i32 %.28 to i64
  %i.jg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.jf
  %sext555 = shl i64 %i.jb, 30
  %i.jh = ashr exact i64 %sext555, 30
  %i.ji = and i64 %i.jh, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.jg, ptr align 4 %i.iy, i64 %i.ji, i1 false)
  %i.jj = getelementptr inbounds nuw i8, ptr %.0, i64 16 ; 2 uses
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !65
  %.not556633 = icmp eq ptr %i.jk, null
  br i1 %.not556633, label %.thread647.thread, label %.thread635

.thread635:                                       ; preds = %.thread631
  %.not557.not = icmp slt i32 %i.je, %i.f
  br i1 %.not557.not, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.thread635
  %i.jl = add nsw i32 %i.je, 1                    ; 2 uses
  %i.jm = sext i32 %i.je to i64
  %i.jn = getelementptr inbounds [4 x i8], ptr %0, i64 %i.jm
  store i32 47, ptr %i.jn, align 4
  %.pr = load ptr, ptr %i.jj, align 8, !tbaa !65  ; 2 uses
  %.not559 = icmp eq ptr %.pr, null
  br i1 %.not559, label %.thread647, label %.preheader.split, !llvm.loop !42

bb.cp:                                            ; preds = %.thread635
  store i32 0, ptr %0, align 4, !tbaa !6
  %.not558 = icmp eq ptr %3, null
  br i1 %.not558, label %.critedge, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

.thread647.loopexit:                              ; preds = %.lr.ph843
  store i32 %i.it, ptr %4, align 4, !tbaa !6
  br label %.thread647

.thread647:                                       ; preds = %bb.co, %.thread647.loopexit, %.preheader.split.us, %bb.cl
  %.32 = phi i32 [ %.26, %bb.cl ], [ %.26, %.preheader.split.us ], [ %.26, %.thread647.loopexit ], [ %i.jl, %bb.co ] ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !66 ; 2 uses
  %.not560 = icmp eq ptr %i.jp, null
  br i1 %.not560, label %.thread655, label %bb.cr

.thread647.thread804:                             ; preds = %.thread793
  %i.jq = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !66 ; 2 uses
  %.not560806 = icmp eq ptr %i.jr, null
  br i1 %.not560806, label %.thread655.thread817, label %.thread655.thread

.thread647.thread798:                             ; preds = %.thread787
  %i.js = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !66
  %.not560800 = icmp eq ptr %i.jt, null
  br i1 %.not560800, label %.thread655.thread809, label %.thread668

.thread647.thread:                                ; preds = %.thread631
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !66
  %.not560666 = icmp eq ptr %i.jv, null
  br i1 %.not560666, label %.thread655, label %.thread668

bb.cr:                                            ; preds = %.thread647
  br i1 %i.c, label %.thread655.thread, label %.thread668

.thread668:                                       ; preds = %.thread647.thread798, %.thread647.thread, %bb.cr
  %.32667670 = phi i32 [ %.32, %bb.cr ], [ %i.je, %.thread647.thread ], [ %i.ie, %.thread647.thread798 ] ; 3 uses
  %i.jw = phi ptr [ %i.jo, %bb.cr ], [ %i.ju, %.thread647.thread ], [ %i.js, %.thread647.thread798 ]
  %.not561.not = icmp slt i32 %.32667670, %i.f
  br i1 %.not561.not, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %.thread668
  store i32 0, ptr %0, align 4, !tbaa !6
  %.not562 = icmp eq ptr %3, null
  br i1 %.not562, label %.critedge, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.cu:                                            ; preds = %.thread668
  %i.jx = add nsw i32 %.32667670, 1               ; 2 uses
  %i.jy = sext i32 %.32667670 to i64
  %i.jz = getelementptr inbounds [4 x i8], ptr %0, i64 %i.jy
  store i32 63, ptr %i.jz, align 4
  %i.ka = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !67
  %i.kc = load ptr, ptr %i.jw, align 8, !tbaa !66 ; 2 uses
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kd, %i.ke                    ; 2 uses
  %i.kg = lshr exact i64 %i.kf, 2
  %i.kh = trunc i64 %i.kg to i32
  %i.ki = add nsw i32 %i.jx, %i.kh                ; 2 uses
  %.not563.not = icmp slt i32 %i.ki, %2
  br i1 %.not563.not, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.kj = sext i32 %i.jx to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.kj
  %sext565 = shl i64 %i.kf, 30
  %i.kl = ashr exact i64 %sext565, 30
  %i.km = and i64 %i.kl, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.kk, ptr align 4 %i.kc, i64 %i.km, i1 false)
  br label %.thread655

bb.cw:                                            ; preds = %bb.cu
  store i32 0, ptr %0, align 4, !tbaa !6
  %.not564 = icmp eq ptr %3, null
  br i1 %.not564, label %.critedge, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

.thread655:                                       ; preds = %bb.cv, %.thread647.thread, %.thread647
  %.36 = phi i32 [ %i.je, %.thread647.thread ], [ %.32, %.thread647 ], [ %i.ki, %bb.cv ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !68 ; 2 uses
  %.not566 = icmp eq ptr %i.ko, null
  br i1 %.not566, label %.thread662, label %bb.cy

.thread655.thread817:                             ; preds = %.thread647.thread804
  %i.kp = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !68 ; 2 uses
  %.not566819 = icmp eq ptr %i.kq, null
  br i1 %.not566819, label %.critedge, label %..thread674_crit_edge

.thread655.thread809:                             ; preds = %.thread647.thread798
  %i.kr = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !68
  %.not566811 = icmp eq ptr %i.ks, null
  br i1 %.not566811, label %.thread662.thread823, label %.thread814

.thread655.thread:                                ; preds = %.thread647.thread804, %bb.cr
  %i.kt = phi ptr [ %i.jp, %bb.cr ], [ %i.jr, %.thread647.thread804 ]
  %i.ku = load i32, ptr %4, align 4, !tbaa !6
  %i.kv = add nsw i32 %i.ku, 1
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !67
  %i.ky = ptrtoint ptr %i.kx to i64
  %i.kz = ptrtoint ptr %i.kt to i64
  %i.la = sub i64 %i.ky, %i.kz
  %i.lb = lshr exact i64 %i.la, 2
  %i.lc = trunc i64 %i.lb to i32
  %i.ld = add nsw i32 %i.kv, %i.lc                ; 2 uses
  store i32 %i.ld, ptr %4, align 4, !tbaa !6
  %i.le = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !68 ; 2 uses
  %.not566672 = icmp eq ptr %i.lf, null
  br i1 %.not566672, label %.critedge, label %.thread674

bb.cy:                                            ; preds = %.thread655
  br i1 %i.c, label %..thread674_crit_edge, label %.thread814

..thread674_crit_edge:                            ; preds = %.thread655.thread817, %bb.cy
  %i.lg = phi ptr [ %i.ko, %bb.cy ], [ %i.kq, %.thread655.thread817 ]
  %.pre = load i32, ptr %4, align 4, !tbaa !6
  br label %.thread674

.thread814:                                       ; preds = %.thread655.thread809, %bb.cy
  %.36813816 = phi i32 [ %.36, %bb.cy ], [ %i.ie, %.thread655.thread809 ] ; 3 uses
  %i.lh = phi ptr [ %i.kn, %bb.cy ], [ %i.kr, %.thread655.thread809 ]
  %.not567.not = icmp slt i32 %.36813816, %i.f
  br i1 %.not567.not, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %.thread814
  store i32 0, ptr %0, align 4, !tbaa !6
  %.not568 = icmp eq ptr %3, null
  br i1 %.not568, label %.critedge, label %bb.da

bb.da:                                            ; preds = %bb.cz
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

bb.db:                                            ; preds = %.thread814
  %i.li = add nsw i32 %.36813816, 1               ; 2 uses
  %i.lj = sext i32 %.36813816 to i64
  %i.lk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.lj
  store i32 35, ptr %i.lk, align 4
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !69
  %i.ln = load ptr, ptr %i.lh, align 8, !tbaa !68 ; 2 uses
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = ptrtoint ptr %i.ln to i64
  %i.lq = sub i64 %i.lo, %i.lp                    ; 2 uses
  %i.lr = lshr exact i64 %i.lq, 2
  %i.ls = trunc i64 %i.lr to i32
  %i.lt = add nsw i32 %i.li, %i.ls                ; 2 uses
  %.not569.not = icmp slt i32 %i.lt, %2
  br i1 %.not569.not, label %.thread662.thread678, label %bb.dc

.thread662.thread678:                             ; preds = %bb.db
  %i.lu = sext i32 %i.li to i64
  %i.lv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.lu
  %sext571 = shl i64 %i.lq, 30
  %i.lw = ashr exact i64 %sext571, 30
  %i.lx = and i64 %i.lw, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.lv, ptr align 4 %i.ln, i64 %i.lx, i1 false)
  br label %.thread662.thread823

bb.dc:                                            ; preds = %bb.db
  store i32 0, ptr %0, align 4, !tbaa !6
  %.not570 = icmp eq ptr %3, null
  br i1 %.not570, label %.critedge, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  store i32 0, ptr %3, align 4, !tbaa !6
  br label %.critedge

.thread674:                                       ; preds = %..thread674_crit_edge, %.thread655.thread
  %i.ly = phi ptr [ %i.lg, %..thread674_crit_edge ], [ %i.lf, %.thread655.thread ]
  %i.lz = phi i32 [ %.pre, %..thread674_crit_edge ], [ %i.ld, %.thread655.thread ]
  %i.ma = add nsw i32 %i.lz, 1
  %i.mb = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !69
  %i.md = ptrtoint ptr %i.mc to i64
  %i.me = ptrtoint ptr %i.ly to i64
  %i.mf = sub i64 %i.md, %i.me
  %i.mg = lshr exact i64 %i.mf, 2
  %i.mh = trunc i64 %i.mg to i32
  %i.mi = add nsw i32 %i.ma, %i.mh
  store i32 %i.mi, ptr %4, align 4, !tbaa !6
  br label %.critedge

.thread662:                                       ; preds = %.thread655
  br i1 %i.c, label %.critedge, label %.thread662.thread823

.thread662.thread823:                             ; preds = %.thread655.thread809, %.thread662.thread678, %.thread662
  %.40680 = phi i32 [ %i.lt, %.thread662.thread678 ], [ %.36, %.thread662 ], [ %i.ie, %.thread655.thread809 ] ; 2 uses
  %i.mj = sext i32 %.40680 to i64
  %i.mk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.mj
  store i32 0, ptr %i.mk, align 4, !tbaa !6
  %.not572 = icmp eq ptr %3, null
  br i1 %.not572, label %.critedge, label %bb.de

bb.de:                                            ; preds = %.thread662.thread823
  %i.ml = add nsw i32 %.40680, 1
  store i32 %i.ml, ptr %3, align 4, !tbaa !6
end_hunk_1
