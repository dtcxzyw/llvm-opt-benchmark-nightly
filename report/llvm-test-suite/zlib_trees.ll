inline.NumInlined: 18
inline.NumDeleted: 12
begin_hunk_0_@_tr_flush_block:bb.a
  br i1 %exitcond.not.i35.i, label %scan_tree.exit36.i, label %bb.ar, !llvm.loop !40

scan_tree.exit36.i:                               ; preds = %bb.bd, %scan_tree.exit.i
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 2952
  tail call fastcc void @build_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 2810
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !27
  %.not.i92 = icmp eq i16 %i.ey, 0
  br i1 %.not.i92, label %bb.be, label %build_bl_tree.exit

bb.be:                                            ; preds = %scan_tree.exit36.i
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2754
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !27
  %.not.1.i = icmp eq i16 %i.fa, 0
  br i1 %.not.1.i, label %bb.bf, label %build_bl_tree.exit

bb.bf:                                            ; preds = %bb.be
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 2806
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !27
  %.not.2.i = icmp eq i16 %i.fc, 0
  br i1 %.not.2.i, label %bb.bg, label %build_bl_tree.exit

bb.bg:                                            ; preds = %bb.bf
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 2758
  %i.fe = load i16, ptr %i.fd, align 2, !tbaa !27
  %.not.3.i = icmp eq i16 %i.fe, 0
  br i1 %.not.3.i, label %bb.bh, label %build_bl_tree.exit

bb.bh:                                            ; preds = %bb.bg
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 2802
  %i.fg = load i16, ptr %i.ff, align 2, !tbaa !27
  %.not.4.i = icmp eq i16 %i.fg, 0
  br i1 %.not.4.i, label %bb.bi, label %build_bl_tree.exit

bb.bi:                                            ; preds = %bb.bh
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 2762
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !27
  %.not.5.i = icmp eq i16 %i.fi, 0
  br i1 %.not.5.i, label %bb.bj, label %build_bl_tree.exit

bb.bj:                                            ; preds = %bb.bi
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 2798
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !27
  %.not.6.i = icmp eq i16 %i.fk, 0
  br i1 %.not.6.i, label %bb.bk, label %build_bl_tree.exit

bb.bk:                                            ; preds = %bb.bj
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 2766
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !27
  %.not.7.i = icmp eq i16 %i.fm, 0
  br i1 %.not.7.i, label %bb.bl, label %build_bl_tree.exit

bb.bl:                                            ; preds = %bb.bk
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 2794
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !27
  %.not.8.i = icmp eq i16 %i.fo, 0
  br i1 %.not.8.i, label %bb.bm, label %build_bl_tree.exit

bb.bm:                                            ; preds = %bb.bl
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 2770
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !27
  %.not.9.i = icmp eq i16 %i.fq, 0
  br i1 %.not.9.i, label %bb.bn, label %build_bl_tree.exit

bb.bn:                                            ; preds = %bb.bm
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 2790
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !27
  %.not.10.i = icmp eq i16 %i.fs, 0
  br i1 %.not.10.i, label %bb.bo, label %build_bl_tree.exit

bb.bo:                                            ; preds = %bb.bn
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 2774
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !27
  %.not.11.i = icmp eq i16 %i.fu, 0
  br i1 %.not.11.i, label %bb.bp, label %build_bl_tree.exit

bb.bp:                                            ; preds = %bb.bo
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 2786
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !27
  %.not.12.i = icmp eq i16 %i.fw, 0
  br i1 %.not.12.i, label %bb.bq, label %build_bl_tree.exit

bb.bq:                                            ; preds = %bb.bp
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 2778
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !27
  %.not.13.i = icmp eq i16 %i.fy, 0
  br i1 %.not.13.i, label %bb.br, label %build_bl_tree.exit

bb.br:                                            ; preds = %bb.bq
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 2782
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !27
  %.not.14.i = icmp eq i16 %i.ga, 0
  br i1 %.not.14.i, label %bb.bs, label %build_bl_tree.exit

bb.bs:                                            ; preds = %bb.br
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 2750
  %i.gc = load i16, ptr %i.gb, align 2, !tbaa !27
  %.not.15.i = icmp eq i16 %i.gc, 0
  %spec.select.i = select i1 %.not.15.i, i32 2, i32 3
  br label %build_bl_tree.exit

build_bl_tree.exit:                               ; preds = %scan_tree.exit36.i, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp, %bb.bq, %bb.br, %bb.bs
  %.0.lcssa.i = phi i32 [ 18, %scan_tree.exit36.i ], [ 10, %bb.bl ], [ 17, %bb.be ], [ %spec.select.i, %bb.bs ], [ 16, %bb.bf ], [ 8, %bb.bn ], [ 15, %bb.bg ], [ 4, %bb.br ], [ 14, %bb.bh ], [ 9, %bb.bm ], [ 13, %bb.bi ], [ 5, %bb.bq ], [ 12, %bb.bj ], [ 7, %bb.bo ], [ 11, %bb.bk ], [ 6, %bb.bp ] ; 2 uses
  %narrow.i = mul nuw nsw i32 %.0.lcssa.i, 3
  %narrow42.i = add nuw nsw i32 %narrow.i, 17
  %i.gd = zext nneg i32 %narrow42.i to i64
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 5912 ; 2 uses
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !42
  %i.gg = add i64 %i.gf, %i.gd                    ; 2 uses
  store i64 %i.gg, ptr %i.ge, align 8, !tbaa !42
  %i.gh = add i64 %i.gg, 10
  %i.gi = lshr i64 %i.gh, 3                       ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 5920
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !43
  %i.gl = add i64 %i.gk, 10
  %i.gm = lshr i64 %i.gl, 3                       ; 2 uses
  %.not = icmp samesign ule i64 %i.gm, %i.gi
  %spec.select91 = tail call i64 @llvm.umin.i64(i64 %i.gm, i64 %i.gi)
  %i.gn = add nuw nsw i32 %.0.lcssa.i, 1
  br label %bb.bu

bb.bt:                                            ; preds = %bb.a
  %i.go = add i64 %2, 5
  br label %bb.bu

bb.bu:                                            ; preds = %build_bl_tree.exit, %bb.bt
  %.081 = phi i32 [ 1, %bb.bt ], [ %i.gn, %build_bl_tree.exit ] ; 2 uses
  %.080 = phi i1 [ true, %bb.bt ], [ %.not, %build_bl_tree.exit ]
  %.0 = phi i64 [ %i.go, %bb.bt ], [ %spec.select91, %build_bl_tree.exit ]
  %i.gp = add i64 %2, 4
  %i.gq = icmp ule i64 %i.gp, %.0
  %i.gr = icmp ne ptr %1, null
  %or.cond = and i1 %i.gr, %i.gq
  br i1 %or.cond, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %2, i32 noundef %3)
  br label %bb.cr

bb.bw:                                            ; preds = %bb.bu
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !44
  %i.gu = icmp eq i32 %i.gt, 4
  %brmerge = or i1 %.080, %i.gu
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 13 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !26 ; 7 uses
  %i.gx = icmp sgt i32 %i.gw, 13                  ; 2 uses
  br i1 %brmerge, label %bb.bx, label %bb.cb

bb.bx:                                            ; preds = %bb.bw
  %i.gy = add i32 %3, 2                           ; 3 uses
  br i1 %i.gx, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.gz = and i32 %i.gy, 65535
  %i.ha = shl i32 %i.gy, %i.gw
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 4 uses
  %i.hc = load i16, ptr %i.hb, align 8, !tbaa !25
  %i.hd = trunc i32 %i.ha to i16
  %i.he = or i16 %i.hc, %i.hd                     ; 2 uses
  store i16 %i.he, ptr %i.hb, align 8, !tbaa !25
  %i.hf = trunc i16 %i.he to i8
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !31
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !32 ; 2 uses
  %i.hk = add i64 %i.hj, 1
  store i64 %i.hk, ptr %i.hi, align 8, !tbaa !32
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hj
  store i8 %i.hf, ptr %i.hl, align 1, !tbaa !27
  %i.hm = load i16, ptr %i.hb, align 8, !tbaa !25
  %i.hn = lshr i16 %i.hm, 8
  %i.ho = trunc nuw i16 %i.hn to i8
  %i.hp = load ptr, ptr %i.hg, align 8, !tbaa !31
  %i.hq = load i64, ptr %i.hi, align 8, !tbaa !32 ; 2 uses
  %i.hr = add i64 %i.hq, 1
  store i64 %i.hr, ptr %i.hi, align 8, !tbaa !32
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 %i.hq
  store i8 %i.ho, ptr %i.hs, align 1, !tbaa !27
  %i.ht = load i32, ptr %i.gv, align 4, !tbaa !26 ; 2 uses
  %i.hu = sub nsw i32 16, %i.ht
  %i.hv = lshr i32 %i.gz, %i.hu
  %i.hw = trunc nuw i32 %i.hv to i16
  store i16 %i.hw, ptr %i.hb, align 8, !tbaa !25
  %i.hx = add nsw i32 %i.ht, -13
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.hy = shl i32 %i.gy, %i.gw
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.ia = load i16, ptr %i.hz, align 8, !tbaa !25
  %i.ib = trunc i32 %i.hy to i16
  %i.ic = or i16 %i.ia, %i.ib
  store i16 %i.ic, ptr %i.hz, align 8, !tbaa !25
  %i.id = add nsw i32 %i.gw, 3
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %storemerge89 = phi i32 [ %i.id, %bb.bz ], [ %i.hx, %bb.by ]
  store i32 %storemerge89, ptr %i.gv, align 4, !tbaa !26
  tail call fastcc void @compress_block(ptr noundef nonnull %0, ptr noundef nonnull @static_ltree, ptr noundef nonnull @static_dtree)
  br label %bb.cr

bb.cb:                                            ; preds = %bb.bw
  %i.ie = add i32 %3, 4                           ; 3 uses
  br i1 %i.gx, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.if = and i32 %i.ie, 65535
  %i.ig = shl i32 %i.ie, %i.gw
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 3 uses
  %i.ii = load i16, ptr %i.ih, align 8, !tbaa !25
  %i.ij = trunc i32 %i.ig to i16
  %i.ik = or i16 %i.ii, %i.ij                     ; 2 uses
  store i16 %i.ik, ptr %i.ih, align 8, !tbaa !25
  %i.il = trunc i16 %i.ik to i8
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !31
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ip = load i64, ptr %i.io, align 8, !tbaa !32 ; 2 uses
  %i.iq = add i64 %i.ip, 1
  store i64 %i.iq, ptr %i.io, align 8, !tbaa !32
  %i.ir = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ip
  store i8 %i.il, ptr %i.ir, align 1, !tbaa !27
  %i.is = load i16, ptr %i.ih, align 8, !tbaa !25
  %i.it = lshr i16 %i.is, 8
  %i.iu = trunc nuw i16 %i.it to i8
  %i.iv = load ptr, ptr %i.im, align 8, !tbaa !31
  %i.iw = load i64, ptr %i.io, align 8, !tbaa !32 ; 2 uses
  %i.ix = add i64 %i.iw, 1
  store i64 %i.ix, ptr %i.io, align 8, !tbaa !32
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.iw
  store i8 %i.iu, ptr %i.iy, align 1, !tbaa !27
  %i.iz = load i32, ptr %i.gv, align 4, !tbaa !26 ; 2 uses
  %i.ja = sub nsw i32 16, %i.iz
  %i.jb = lshr i32 %i.if, %i.ja
  %i.jc = trunc nuw i32 %i.jb to i16
  %i.jd = add nsw i32 %i.iz, -13
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.je = shl i32 %i.ie, %i.gw
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.jg = load i16, ptr %i.jf, align 8, !tbaa !25
  %i.jh = trunc i32 %i.je to i16
  %i.ji = or i16 %i.jg, %i.jh
  %i.jj = add nsw i32 %i.gw, 3
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %i.jk = phi i16 [ %i.ji, %bb.cd ], [ %i.jc, %bb.cc ] ; 2 uses
  %storemerge = phi i32 [ %i.jj, %bb.cd ], [ %i.jd, %bb.cc ] ; 5 uses
  store i32 %storemerge, ptr %i.gv, align 4, !tbaa !26
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 2912
  %i.jm = load i32, ptr %i.jl, align 8, !tbaa !39 ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 2936
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !41 ; 4 uses
  %i.jp = icmp sgt i32 %storemerge, 11
  %i.jq = add i32 %i.jm, 65280                    ; 3 uses
  br i1 %i.jp, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.jr = and i32 %i.jq, 65535
  %i.js = shl i32 %i.jq, %storemerge
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.ju = trunc i32 %i.js to i16
  %i.jv = or i16 %i.jk, %i.ju                     ; 2 uses
  store i16 %i.jv, ptr %i.jt, align 8, !tbaa !25
  %i.jw = trunc i16 %i.jv to i8
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !31
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !32 ; 2 uses
  %i.kb = add i64 %i.ka, 1
  store i64 %i.kb, ptr %i.jz, align 8, !tbaa !32
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 %i.ka
  store i8 %i.jw, ptr %i.kc, align 1, !tbaa !27
  %i.kd = load i16, ptr %i.jt, align 8, !tbaa !25
  %i.ke = lshr i16 %i.kd, 8
  %i.kf = trunc nuw i16 %i.ke to i8
  %i.kg = load ptr, ptr %i.jx, align 8, !tbaa !31
  %i.kh = load i64, ptr %i.jz, align 8, !tbaa !32 ; 2 uses
  %i.ki = add i64 %i.kh, 1
  store i64 %i.ki, ptr %i.jz, align 8, !tbaa !32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.kh
  store i8 %i.kf, ptr %i.kj, align 1, !tbaa !27
  %i.kk = load i32, ptr %i.gv, align 4, !tbaa !26 ; 2 uses
  %i.kl = sub nsw i32 16, %i.kk
  %i.km = lshr i32 %i.jr, %i.kl
  %i.kn = trunc nuw i32 %i.km to i16
  %i.ko = add nsw i32 %i.kk, -11
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.kp = shl i32 %i.jq, %storemerge
  %i.kq = trunc i32 %i.kp to i16
  %i.kr = or i16 %i.jk, %i.kq
  %i.ks = add nsw i32 %storemerge, 5
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.kt = phi i16 [ %i.kr, %bb.cg ], [ %i.kn, %bb.cf ] ; 2 uses
  %storemerge.i = phi i32 [ %i.ks, %bb.cg ], [ %i.ko, %bb.cf ] ; 5 uses
  store i32 %storemerge.i, ptr %i.gv, align 4, !tbaa !26
  %i.ku = icmp sgt i32 %storemerge.i, 11
  br i1 %i.ku, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.kv = and i32 %i.jo, 65535
  %i.kw = shl i32 %i.jo, %storemerge.i
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.ky = trunc i32 %i.kw to i16
  %i.kz = or i16 %i.kt, %i.ky                     ; 2 uses
  store i16 %i.kz, ptr %i.kx, align 8, !tbaa !25
  %i.la = trunc i16 %i.kz to i8
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !31
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !32 ; 2 uses
  %i.lf = add i64 %i.le, 1
  store i64 %i.lf, ptr %i.ld, align 8, !tbaa !32
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 %i.le
  store i8 %i.la, ptr %i.lg, align 1, !tbaa !27
  %i.lh = load i16, ptr %i.kx, align 8, !tbaa !25
  %i.li = lshr i16 %i.lh, 8
  %i.lj = trunc nuw i16 %i.li to i8
  %i.lk = load ptr, ptr %i.lb, align 8, !tbaa !31
  %i.ll = load i64, ptr %i.ld, align 8, !tbaa !32 ; 2 uses
  %i.lm = add i64 %i.ll, 1
  store i64 %i.lm, ptr %i.ld, align 8, !tbaa !32
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.ll
  store i8 %i.lj, ptr %i.ln, align 1, !tbaa !27
  %i.lo = load i32, ptr %i.gv, align 4, !tbaa !26 ; 2 uses
  %i.lp = sub nsw i32 16, %i.lo
  %i.lq = lshr i32 %i.kv, %i.lp
  %i.lr = trunc nuw i32 %i.lq to i16
  %i.ls = add nsw i32 %i.lo, -11
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ch
  %i.lt = shl i32 %i.jo, %storemerge.i
  %i.lu = trunc i32 %i.lt to i16
  %i.lv = or i16 %i.kt, %i.lu
  %i.lw = add nsw i32 %storemerge.i, 5
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.lx = phi i16 [ %i.lv, %bb.cj ], [ %i.lr, %bb.ci ] ; 2 uses
  %storemerge105.i = phi i32 [ %i.lw, %bb.cj ], [ %i.ls, %bb.ci ] ; 5 uses
  store i32 %storemerge105.i, ptr %i.gv, align 4, !tbaa !26
  %i.ly = icmp sgt i32 %storemerge105.i, 12
  %i.lz = add nuw nsw i32 %.081, 65532            ; 3 uses
  br i1 %i.ly, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ma = and i32 %i.lz, 65535
  %i.mb = shl i32 %i.lz, %storemerge105.i
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.md = trunc i32 %i.mb to i16
  %i.me = or i16 %i.lx, %i.md                     ; 2 uses
  store i16 %i.me, ptr %i.mc, align 8, !tbaa !25
  %i.mf = trunc i16 %i.me to i8
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !31
  %i.mi = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !32 ; 2 uses
  %i.mk = add i64 %i.mj, 1
  store i64 %i.mk, ptr %i.mi, align 8, !tbaa !32
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mj
  store i8 %i.mf, ptr %i.ml, align 1, !tbaa !27
  %i.mm = load i16, ptr %i.mc, align 8, !tbaa !25
  %i.mn = lshr i16 %i.mm, 8
  %i.mo = trunc nuw i16 %i.mn to i8
  %i.mp = load ptr, ptr %i.mg, align 8, !tbaa !31
  %i.mq = load i64, ptr %i.mi, align 8, !tbaa !32 ; 2 uses
  %i.mr = add i64 %i.mq, 1
  store i64 %i.mr, ptr %i.mi, align 8, !tbaa !32
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mq
  store i8 %i.mo, ptr %i.ms, align 1, !tbaa !27
  %i.mt = load i32, ptr %i.gv, align 4, !tbaa !26 ; 2 uses
  %i.mu = sub nsw i32 16, %i.mt
  %i.mv = lshr i32 %i.ma, %i.mu
  %i.mw = trunc nuw i32 %i.mv to i16
  %i.mx = add nsw i32 %i.mt, -12
  br label %.lr.ph.i

bb.cm:                                            ; preds = %bb.ck
  %i.my = shl nuw nsw i32 %i.lz, %storemerge105.i
  %i.mz = trunc i32 %i.my to i16
  %i.na = or i16 %i.lx, %i.mz
  %i.nb = add nsw i32 %storemerge105.i, 4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cl, %bb.cm
  %i.nc = phi i16 [ %i.na, %bb.cm ], [ %i.mw, %bb.cl ]
  %storemerge106.i = phi i32 [ %i.nb, %bb.cm ], [ %i.mx, %bb.cl ] ; 2 uses
  store i32 %storemerge106.i, ptr %i.gv, align 4, !tbaa !26
  %i.nd = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %wide.trip.count.i = zext nneg i32 %.081 to i64
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cq, %.lr.ph.i
  %i.ng = phi i16 [ %i.nc, %.lr.ph.i ], [ %i.ol, %bb.cq ]
  %i.nh = phi i32 [ %storemerge106.i, %.lr.ph.i ], [ %storemerge107.i, %bb.cq ] ; 3 uses
  %indvars.iv.i93 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i94, %bb.cq ] ; 2 uses
  %i.ni = icmp sgt i32 %i.nh, 13
  %i.nj = getelementptr inbounds nuw i8, ptr @bl_order, i64 %indvars.iv.i93
  %i.nk = load i8, ptr %i.nj, align 1, !tbaa !27
  %i.nl = zext i8 %i.nk to i64
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 2750
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !27
  %i.np = zext i16 %i.no to i32                   ; 2 uses
  %i.nq = shl i32 %i.np, %i.nh
  %i.nr = trunc i32 %i.nq to i16
  %i.ns = or i16 %i.ng, %i.nr                     ; 3 uses
  store i16 %i.ns, ptr %i.nd, align 8, !tbaa !25
  br i1 %i.ni, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.nt = trunc i16 %i.ns to i8
  %i.nu = load ptr, ptr %i.ne, align 8, !tbaa !31
  %i.nv = load i64, ptr %i.nf, align 8, !tbaa !32 ; 2 uses
  %i.nw = add i64 %i.nv, 1
  store i64 %i.nw, ptr %i.nf, align 8, !tbaa !32
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.nv
  store i8 %i.nt, ptr %i.nx, align 1, !tbaa !27
  %i.ny = load i16, ptr %i.nd, align 8, !tbaa !25
  %i.nz = lshr i16 %i.ny, 8
  %i.oa = trunc nuw i16 %i.nz to i8
  %i.ob = load ptr, ptr %i.ne, align 8, !tbaa !31
  %i.oc = load i64, ptr %i.nf, align 8, !tbaa !32 ; 2 uses
  %i.od = add i64 %i.oc, 1
  store i64 %i.od, ptr %i.nf, align 8, !tbaa !32
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.oc
  store i8 %i.oa, ptr %i.oe, align 1, !tbaa !27
  %i.of = load i32, ptr %i.gv, align 4, !tbaa !26 ; 2 uses
  %i.og = sub nsw i32 16, %i.of
  %i.oh = lshr i32 %i.np, %i.og
  %i.oi = trunc nuw i32 %i.oh to i16              ; 2 uses
  store i16 %i.oi, ptr %i.nd, align 8, !tbaa !25
  %i.oj = add nsw i32 %i.of, -13
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.ok = add nsw i32 %i.nh, 3
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.ol = phi i16 [ %i.ns, %bb.cp ], [ %i.oi, %bb.co ]
  %storemerge107.i = phi i32 [ %i.ok, %bb.cp ], [ %i.oj, %bb.co ] ; 2 uses
  store i32 %storemerge107.i, ptr %i.gv, align 4, !tbaa !26
  %indvars.iv.next.i94 = add nuw nsw i64 %indvars.iv.i93, 1 ; 2 uses
  %exitcond.not.i95 = icmp eq i64 %indvars.iv.next.i94, %wide.trip.count.i
  br i1 %exitcond.not.i95, label %send_all_trees.exit, label %bb.cn, !llvm.loop !45

send_all_trees.exit:                              ; preds = %bb.cq
  %i.om = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  tail call fastcc void @send_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.om, i32 noundef %i.jm)
  %i.on = getelementptr inbounds nuw i8, ptr %0, i64 2504 ; 2 uses
  tail call fastcc void @send_tree(ptr noundef nonnull %0, ptr noundef nonnull %i.on, i32 noundef %i.jo)
  tail call fastcc void @compress_block(ptr noundef nonnull %0, ptr noundef nonnull %i.om, ptr noundef nonnull %i.on)
  br label %bb.cr

bb.cr:                                            ; preds = %bb.ca, %send_all_trees.exit, %bb.bv
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cs, %bb.cr
  %indvars.iv.i96 = phi i64 [ 0, %bb.cr ], [ %indvars.iv.next.i97.1, %bb.cs ] ; 3 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.i96
  store i16 0, ptr %i.op, align 4, !tbaa !27
  %i.oq = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv.i96
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  store i16 0, ptr %i.or, align 4, !tbaa !27
  %indvars.iv.next.i97.1 = add nuw nsw i64 %indvars.iv.i96, 2 ; 2 uses
  %exitcond.not.i98.1 = icmp eq i64 %indvars.iv.next.i97.1, 286
  br i1 %exitcond.not.i98.1, label %init_block.exit, label %bb.cs, !llvm.loop !28

init_block.exit:                                  ; preds = %bb.cs
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 2504
  store i16 0, ptr %i.os, align 4, !tbaa !27
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 2508
  store i16 0, ptr %i.ot, align 4, !tbaa !27
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 2512
  store i16 0, ptr %i.ou, align 4, !tbaa !27
  %i.ov = getelementptr inbounds nuw i8, ptr %0, i64 2516
  store i16 0, ptr %i.ov, align 4, !tbaa !27
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 2520
  store i16 0, ptr %i.ow, align 4, !tbaa !27
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 2524
  store i16 0, ptr %i.ox, align 4, !tbaa !27
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 2528
  store i16 0, ptr %i.oy, align 4, !tbaa !27
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 2532
  store i16 0, ptr %i.oz, align 4, !tbaa !27
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 2536
  store i16 0, ptr %i.pa, align 4, !tbaa !27
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 2540
  store i16 0, ptr %i.pb, align 4, !tbaa !27
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 2544
  store i16 0, ptr %i.pc, align 4, !tbaa !27
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 2548
  store i16 0, ptr %i.pd, align 4, !tbaa !27
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 2552
  store i16 0, ptr %i.pe, align 4, !tbaa !27
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 2556
  store i16 0, ptr %i.pf, align 4, !tbaa !27
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 2560
  store i16 0, ptr %i.pg, align 4, !tbaa !27
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 2564
  store i16 0, ptr %i.ph, align 4, !tbaa !27
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 2568
  store i16 0, ptr %i.pi, align 4, !tbaa !27
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 2572
  store i16 0, ptr %i.pj, align 4, !tbaa !27
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 2576
  store i16 0, ptr %i.pk, align 4, !tbaa !27
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 2580
  store i16 0, ptr %i.pl, align 4, !tbaa !27
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 2584
  store i16 0, ptr %i.pm, align 4, !tbaa !27
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i16 0, ptr %i.pn, align 4, !tbaa !27
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i16 0, ptr %i.po, align 4, !tbaa !27
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 2596
  store i16 0, ptr %i.pp, align 4, !tbaa !27
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 2600
  store i16 0, ptr %i.pq, align 4, !tbaa !27
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 2604
  store i16 0, ptr %i.pr, align 4, !tbaa !27
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 2608
  store i16 0, ptr %i.ps, align 4, !tbaa !27
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 2612
  store i16 0, ptr %i.pt, align 4, !tbaa !27
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 2616
  store i16 0, ptr %i.pu, align 4, !tbaa !27
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 2620
  store i16 0, ptr %i.pv, align 4, !tbaa !27
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 2748
  store i16 0, ptr %i.pw, align 4, !tbaa !27
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 2752
  store i16 0, ptr %i.px, align 4, !tbaa !27
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 2756
  store i16 0, ptr %i.py, align 4, !tbaa !27
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 2760
  store i16 0, ptr %i.pz, align 4, !tbaa !27
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 2764
  store i16 0, ptr %i.qa, align 4, !tbaa !27
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 2768
  store i16 0, ptr %i.qb, align 4, !tbaa !27
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 2772
  store i16 0, ptr %i.qc, align 4, !tbaa !27
  %i.qd = getelementptr inbounds nuw i8, ptr %0, i64 2776
  store i16 0, ptr %i.qd, align 4, !tbaa !27
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 2780
  store i16 0, ptr %i.qe, align 4, !tbaa !27
  %i.qf = getelementptr inbounds nuw i8, ptr %0, i64 2784
  store i16 0, ptr %i.qf, align 4, !tbaa !27
  %i.qg = getelementptr inbounds nuw i8, ptr %0, i64 2788
  store i16 0, ptr %i.qg, align 4, !tbaa !27
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 2792
  store i16 0, ptr %i.qh, align 4, !tbaa !27
  %i.qi = getelementptr inbounds nuw i8, ptr %0, i64 2796
  store i16 0, ptr %i.qi, align 4, !tbaa !27
  %i.qj = getelementptr inbounds nuw i8, ptr %0, i64 2800
  store i16 0, ptr %i.qj, align 4, !tbaa !27
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 2804
  store i16 0, ptr %i.qk, align 4, !tbaa !27
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 2808
  store i16 0, ptr %i.ql, align 4, !tbaa !27
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 2812
  store i16 0, ptr %i.qm, align 4, !tbaa !27
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 2816
  store i16 0, ptr %i.qn, align 4, !tbaa !27
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 2820
  store i16 0, ptr %i.qo, align 4, !tbaa !27
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 1236
  store i16 1, ptr %i.qp, align 4, !tbaa !27
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 5912
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 5900
  store i32 0, ptr %i.qr, align 4, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.qq, i8 0, i64 20, i1 false)
  %.not90 = icmp eq i32 %3, 0
  br i1 %.not90, label %bb.cx, label %bb.ct

bb.ct:                                            ; preds = %init_block.exit
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 5940 ; 2 uses
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !26 ; 2 uses
  %i.qu = icmp sgt i32 %i.qt, 8
  br i1 %i.qu, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 5936 ; 2 uses
  %i.qw = load i16, ptr %i.qv, align 8, !tbaa !25
  %i.qx = trunc i16 %i.qw to i8
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !31
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !32 ; 2 uses
  %i.rc = add i64 %i.rb, 1
  store i64 %i.rc, ptr %i.ra, align 8, !tbaa !32
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.rb
  store i8 %i.qx, ptr %i.rd, align 1, !tbaa !27
  %i.re = load i16, ptr %i.qv, align 8, !tbaa !25
  %i.rf = lshr i16 %i.re, 8
  %i.rg = trunc nuw i16 %i.rf to i8
  %i.rh = load ptr, ptr %i.qy, align 8, !tbaa !31
  %i.ri = load i64, ptr %i.ra, align 8, !tbaa !32 ; 2 uses
  %i.rj = add i64 %i.ri, 1
  store i64 %i.rj, ptr %i.ra, align 8, !tbaa !32
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rh, i64 %i.ri
  store i8 %i.rg, ptr %i.rk, align 1, !tbaa !27
  br label %bi_windup.exit

bb.cv:                                            ; preds = %bb.ct
  %i.rl = icmp sgt i32 %i.qt, 0
  br i1 %i.rl, label %bb.cw, label %bi_windup.exit

bb.cw:                                            ; preds = %bb.cv
  %i.rm = getelementptr inbounds nuw i8, ptr %0, i64 5936
  %i.rn = load i16, ptr %i.rm, align 8, !tbaa !25
  %i.ro = trunc i16 %i.rn to i8
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !31
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.rs = load i64, ptr %i.rr, align 8, !tbaa !32 ; 2 uses
  %i.rt = add i64 %i.rs, 1
  store i64 %i.rt, ptr %i.rr, align 8, !tbaa !32
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rq, i64 %i.rs
  store i8 %i.ro, ptr %i.ru, align 1, !tbaa !27
  br label %bi_windup.exit

bi_windup.exit:                                   ; preds = %bb.cu, %bb.cv, %bb.cw
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 5936
  store i16 0, ptr %i.rv, align 8, !tbaa !25
  store i32 0, ptr %i.qs, align 4, !tbaa !26
  br label %bb.cx

bb.cx:                                            ; preds = %bi_windup.exit, %init_block.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @build_tree(ptr noundef initializes((5300, 5308)) %0, ptr noundef captures(none) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [16 x i16], align 16              ; 18 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !46     ; 17 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.g = load i32, ptr %i.f, align 4, !tbaa !51   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5300 ; 14 uses
  store i32 0, ptr %i.h, align 4, !tbaa !52
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5304 ; 9 uses
  store i32 573, ptr %i.i, align 8, !tbaa !53
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph, label %.lr.ph142

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3008
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5308
  %wide.trip.count = zext nneg i32 %i.g to i64
end_hunk_0
