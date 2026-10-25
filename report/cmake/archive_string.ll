Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_string?download=true
inline.NumInlined: 115
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 9
begin_hunk_0_@archive_string_normalize_D:bb.a
.preheader545:                                    ; preds = %bb.ab
  %i.fw = ptrtoint ptr %.1410733 to i64
  %i.fx = ptrtoint ptr %.1430732 to i64           ; 2 uses
  %i.fy = sub i64 %i.fw, %i.fx
  %i.fz = call i64 %.0399(ptr noundef %.1430732, i64 noundef %i.fy, i32 noundef %.pr) #23, !callees !54 ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %.lr.ph742, label %._crit_edge743

.lr.ph742:                                        ; preds = %.preheader545
  %i.gb = mul i64 %i.br, %.0401
  %i.gc = add i64 %i.gb, %.0402
  br label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.gd = getelementptr inbounds nuw i8, ptr %.1430732, i64 %i.bp
  %i.ge = icmp ugt ptr %i.gd, %.1410733
  br i1 %i.ge, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.gf = load ptr, ptr %0, align 8, !tbaa !19
  %i.gg = ptrtoint ptr %.1430732 to i64
  %i.gh = ptrtoint ptr %i.gf to i64
  %i.gi = sub i64 %i.gg, %i.gh
  store i64 %i.gi, ptr %i.q, align 8, !tbaa !18
  %i.gj = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.gk = mul i64 %i.br, %.0401
  %i.gl = add i64 %i.gk, %.0402
  %i.gm = add i64 %i.gl, %i.gj
  %i.gn = call ptr @archive_string_ensure(ptr noundef nonnull %0, i64 noundef %i.gm)
  %i.go = icmp eq ptr %i.gn, null
  br i1 %i.go, label %.thread516, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gp = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.gq = load i64, ptr %i.q, align 8, !tbaa !18
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gq
  %i.gs = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gs
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %i.ac
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  %.25 = phi ptr [ %i.gr, %bb.ae ], [ %.1430732, %bb.ac ] ; 6 uses
  %.13422 = phi ptr [ %i.gu, %bb.ae ], [ %.1410733, %bb.ac ] ; 2 uses
  switch i32 %.0407734, label %bb.bo [
    i32 4, label %bb.ag
    i32 3, label %bb.ah
    i32 2, label %bb.ai
    i32 1, label %bb.aj
  ], !llvm.loop !95

bb.ag:                                            ; preds = %bb.af
  %i.gv = getelementptr inbounds nuw i8, ptr %..1454, i64 1
  %i.gw = load i8, ptr %.1454731, align 1, !tbaa !20
  %i.gx = getelementptr inbounds nuw i8, ptr %.25, i64 1
  store i8 %i.gw, ptr %.25, align 1, !tbaa !20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.26 = phi ptr [ %i.gx, %bb.ag ], [ %.25, %bb.af ] ; 2 uses
  %.10 = phi ptr [ %i.gv, %bb.ag ], [ %.1454731, %bb.af ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.10, i64 1
  %i.gz = load i8, ptr %.10, align 1, !tbaa !20
  %i.ha = getelementptr inbounds nuw i8, ptr %.26, i64 1
  store i8 %i.gz, ptr %.26, align 1, !tbaa !20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.27 = phi ptr [ %i.ha, %bb.ah ], [ %.25, %bb.af ] ; 2 uses
  %.11 = phi ptr [ %i.gy, %bb.ah ], [ %.1454731, %bb.af ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.11, i64 1
  %i.hc = load i8, ptr %.11, align 1, !tbaa !20
  %i.hd = getelementptr inbounds nuw i8, ptr %.27, i64 1
  store i8 %i.hc, ptr %.27, align 1, !tbaa !20
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.af
  %.28 = phi ptr [ %i.hd, %bb.ai ], [ %.25, %bb.af ] ; 2 uses
  %.12 = phi ptr [ %i.hb, %bb.ai ], [ %.1454731, %bb.af ]
  %i.he = load i8, ptr %.12, align 1, !tbaa !20
  %i.hf = getelementptr inbounds nuw i8, ptr %.28, i64 1
  store i8 %i.he, ptr %.28, align 1, !tbaa !20
  br label %bb.bo, !llvm.loop !95

bb.ak:                                            ; preds = %.lr.ph742, %bb.al
  %i.hg = phi i64 [ %i.fx, %.lr.ph742 ], [ %i.ht, %bb.al ]
  %i.hh = load ptr, ptr %0, align 8, !tbaa !19
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = sub i64 %i.hg, %i.hi
  store i64 %i.hj, ptr %i.q, align 8, !tbaa !18
  %i.hk = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.hl = add i64 %i.gc, %i.hk
  %i.hm = call ptr @archive_string_ensure(ptr noundef nonnull %0, i64 noundef %i.hl)
  %i.hn = icmp eq ptr %i.hm, null
  br i1 %i.hn, label %.thread516, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ho = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.hp = load i64, ptr %i.q, align 8, !tbaa !18  ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hp ; 3 uses
  %i.hr = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.hs = sub nsw i64 %i.hr, %.0402               ; 2 uses
  %i.ht = ptrtoint ptr %i.hq to i64
  %gepdiff = sub nsw i64 %i.hs, %i.hp
  %i.hu = load i32, ptr %i.a, align 4, !tbaa !25
  %i.hv = call i64 %.0399(ptr noundef %i.hq, i64 noundef %gepdiff, i32 noundef %i.hu) #23, !callees !54 ; 2 uses
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %bb.ak, label %._crit_edge743.loopexit, !llvm.loop !99

._crit_edge743.loopexit:                          ; preds = %bb.al
  %i.hx = getelementptr inbounds i8, ptr %i.ho, i64 %i.hs
  br label %._crit_edge743

._crit_edge743:                                   ; preds = %._crit_edge743.loopexit, %.preheader545
  %.30.lcssa = phi ptr [ %.1430732, %.preheader545 ], [ %i.hq, %._crit_edge743.loopexit ]
  %.14423.lcssa = phi ptr [ %.1410733, %.preheader545 ], [ %i.hx, %._crit_edge743.loopexit ]
  %.lcssa640 = phi i64 [ %i.fz, %.preheader545 ], [ %i.hv, %._crit_edge743.loopexit ]
  %i.hy = getelementptr inbounds nuw i8, ptr %.30.lcssa, i64 %.lcssa640
  br label %bb.bo, !llvm.loop !95

.critedge501:                                     ; preds = %bb.aa, %bb.z, %bb.y
  %i.hz = and i32 %.pr, -4096
  %or.cond.i1305 = icmp eq i32 %i.hz, 8192
  %i.ia = add i32 %.pr, -63744
  %or.cond3.i1306 = icmp ult i32 %i.ia, 512
  %or.cond42.i1307 = or i1 %or.cond.i1305, %or.cond3.i1306
  %i.ib = add i32 %.pr, -194560
  %or.cond5.i1308 = icmp ult i32 %i.ib, 768
  %or.cond43.i1309 = or i1 %or.cond5.i1308, %or.cond42.i1307
  br i1 %or.cond43.i1309, label %.preheader539, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge501, %._crit_edge
  %scevgep9221314 = phi ptr [ %scevgep922, %._crit_edge ], [ %scevgep9221304, %.critedge501 ]
  %i.ic = phi i64 [ %i.jy, %._crit_edge ], [ -8, %.critedge501 ] ; 3 uses
  %scevgep9201313 = phi ptr [ %scevgep920, %._crit_edge ], [ %scevgep9201302, %.critedge501 ]
  %i.id = phi i64 [ %i.jv, %._crit_edge ], [ 0, %.critedge501 ] ; 4 uses
  %indvars9241312 = phi i32 [ %indvars924, %._crit_edge ], [ 0, %.critedge501 ] ; 5 uses
  %.131311 = phi ptr [ null, %._crit_edge ], [ %..1454, %.critedge501 ] ; 3 uses
  %i.ie = phi i32 [ %i.ip, %._crit_edge ], [ %.pr, %.critedge501 ] ; 3 uses
  %indvar1310 = phi i64 [ %indvar.next, %._crit_edge ], [ 0, %.critedge501 ] ; 9 uses
  switch i32 %i.ie, label %.preheader.i [
    i32 69803, label %.preheader539.loopexit1347.split.loop.exit
    i32 69788, label %.preheader539.loopexit1347.split.loop.exit
    i32 69786, label %.preheader539.loopexit1347.split.loop.exit
  ]

.preheader.i:                                     ; preds = %.lr.ph, %bb.ap
  %.03345.i = phi i32 [ %.2.i, %bb.ap ], [ 930, %.lr.ph ] ; 2 uses
  %.03444.i = phi i32 [ %.236.i, %bb.ap ], [ 0, %.lr.ph ] ; 2 uses
  %i.if = add nuw nsw i32 %.03444.i, %.03345.i
  %i.ig = lshr i32 %i.if, 1                       ; 3 uses
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [12 x i8], ptr @u_decomposition_table, i64 %i.ih ; 3 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !108 ; 2 uses
  %i.ik = icmp ult i32 %i.ij, %i.ie
  br i1 %i.ik, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.preheader.i
  %i.il = add nuw nsw i32 %i.ig, 1
  br label %bb.ap

bb.an:                                            ; preds = %.preheader.i
  %i.im = icmp ugt i32 %i.ij, %i.ie
  br i1 %i.im, label %bb.ao, label %get_nfd.exit

bb.ao:                                            ; preds = %bb.an
  %i.in = add nsw i32 %i.ig, -1
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %.236.i = phi i32 [ %.03444.i, %bb.ao ], [ %i.il, %bb.am ] ; 2 uses
  %.2.i = phi i32 [ %i.in, %bb.ao ], [ %.03345.i, %bb.am ] ; 2 uses
  %.not.i = icmp slt i32 %.2.i, %.236.i
  br i1 %.not.i, label %.preheader539.loopexit, label %.preheader.i, !llvm.loop !100

get_nfd.exit:                                     ; preds = %bb.an
  %i.io = getelementptr inbounds nuw i8, ptr %i.ii, i64 4
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !109 ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !110 ; 4 uses
  %i.is = icmp samesign ult i32 %indvars9241312, 10
  br i1 %i.is, label %.preheader537, label %.preheader539.loopexit1347.split.loop.exit1660

.preheader539.loopexit:                           ; preds = %bb.ap
  %i.it = add nsw i64 %indvar1310, -1
  br label %.preheader539

.preheader539.loopexit1347.split.loop.exit:       ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.iu = add nsw i64 %indvar1310, -1
  br label %.preheader539

.preheader539.loopexit1347.split.loop.exit1660:   ; preds = %get_nfd.exit
  %i.iv = add nsw i64 %indvar1310, -1
  br label %.preheader539

.preheader539:                                    ; preds = %.preheader539.loopexit1347.split.loop.exit, %.preheader539.loopexit1347.split.loop.exit1660, %._crit_edge, %.preheader539.loopexit, %.critedge501
  %indvar1163 = phi i64 [ %indvar1310, %.preheader539.loopexit ], [ 0, %.critedge501 ], [ %indvar1310, %.preheader539.loopexit1347.split.loop.exit ], [ %indvar1310, %.preheader539.loopexit1347.split.loop.exit1660 ], [ %indvar.next, %._crit_edge ]
  %.131161 = phi ptr [ %.131311, %.preheader539.loopexit ], [ %..1454, %.critedge501 ], [ %.131311, %.preheader539.loopexit1347.split.loop.exit ], [ %.131311, %.preheader539.loopexit1347.split.loop.exit1660 ], [ null, %._crit_edge ] ; 6 uses
  %indvars9241159 = phi i32 [ %indvars9241312, %.preheader539.loopexit ], [ 0, %.critedge501 ], [ %indvars9241312, %.preheader539.loopexit1347.split.loop.exit ], [ %indvars9241312, %.preheader539.loopexit1347.split.loop.exit1660 ], [ %indvars924, %._crit_edge ]
  %i.iw = phi i64 [ %i.id, %.preheader539.loopexit ], [ 0, %.critedge501 ], [ %i.id, %.preheader539.loopexit1347.split.loop.exit ], [ %i.id, %.preheader539.loopexit1347.split.loop.exit1660 ], [ %i.jv, %._crit_edge ]
  %i.ix = phi i64 [ %i.it, %.preheader539.loopexit ], [ 4294967295, %.critedge501 ], [ %i.iu, %.preheader539.loopexit1347.split.loop.exit ], [ %i.iv, %.preheader539.loopexit1347.split.loop.exit1660 ], [ %indvar1310, %._crit_edge ]
  %i.iy = phi i64 [ %i.ic, %.preheader539.loopexit ], [ -8, %.critedge501 ], [ %i.ic, %.preheader539.loopexit1347.split.loop.exit ], [ %i.ic, %.preheader539.loopexit1347.split.loop.exit1660 ], [ %i.jy, %._crit_edge ]
  %i.iz = call i32 %.0400(ptr noundef nonnull %i.b, ptr noundef %i.bq, i64 noundef %i.br) #23, !callees !53 ; 3 uses
  %i.ja = icmp sgt i32 %i.iz, 0
  br i1 %i.ja, label %.lr.ph695.preheader, label %.critedge

.lr.ph695.preheader:                              ; preds = %.preheader539
  %i.jb = getelementptr i8, ptr %4, i64 %i.iw
  %i.jc = getelementptr i8, ptr %4, i64 %i.iy
  br label %.lr.ph695

.preheader537:                                    ; preds = %get_nfd.exit
  %.not784 = icmp eq i32 %indvars9241312, 0
  br i1 %.not784, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader537
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep9201313, ptr align 8 %scevgep9221314, i64 %i.id, i1 false), !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.preheader537
  %i.jd = lshr i32 %i.ir, 8
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.je
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !20
  %i.jh = zext i8 %i.jg to i64
  %i.ji = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.jh
  %i.jj = lshr i32 %i.ir, 4
  %i.jk = and i32 %i.jj, 15
  %i.jl = zext nneg i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jl
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !20
  %i.jo = zext i8 %i.jn to i64
  %i.jp = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.jo
  %i.jq = and i32 %i.ir, 15
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jr
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !20
  %i.ju = zext i8 %i.jt to i32
  store i32 %i.ju, ptr %i.ag, align 4, !tbaa !112
  store i32 %i.ir, ptr %4, align 16, !tbaa !113
  %indvar.next = add nuw nsw i64 %indvar1310, 1   ; 4 uses
  store i32 %i.ip, ptr %i.a, align 4, !tbaa !25
  %indvars924 = trunc i64 %indvar.next to i32     ; 2 uses
  %i.jv = shl nuw nsw i64 %indvar.next, 3         ; 4 uses
  %scevgep = getelementptr nuw i8, ptr %4, i64 %i.jv
  %i.jw = and i64 %indvar1310, 4294967295
  %i.jx = mul nsw i64 %i.jw, -8                   ; 2 uses
  %scevgep920 = getelementptr i8, ptr %scevgep, i64 %i.jx
  %i.jy = add nsw i64 %i.jv, -8                   ; 3 uses
  %scevgep921 = getelementptr i8, ptr %4, i64 %i.jy
  %scevgep922 = getelementptr i8, ptr %scevgep921, i64 %i.jx
  %i.jz = and i32 %i.ip, -4096
  %or.cond.i = icmp eq i32 %i.jz, 8192
  %i.ka = add i32 %i.ip, -63744
  %or.cond3.i = icmp ult i32 %i.ka, 512
  %or.cond42.i = or i1 %or.cond.i, %or.cond3.i
  %i.kb = add i32 %i.ip, -194560
  %or.cond5.i = icmp ult i32 %i.kb, 768
  %or.cond43.i = or i1 %or.cond5.i, %or.cond42.i
  br i1 %or.cond43.i, label %.preheader539, label %.lr.ph, !llvm.loop !101

.lr.ph695:                                        ; preds = %.lr.ph695.preheader, %bb.at
  %indvars.iv934 = phi i64 [ %indvar1163, %.lr.ph695.preheader ], [ %indvars.iv.next935, %bb.at ] ; 7 uses
  %indvar926 = phi i64 [ 0, %.lr.ph695.preheader ], [ %indvar.next927, %bb.at ] ; 3 uses
  %i.kc = phi i32 [ %i.iz, %.lr.ph695.preheader ], [ %i.lq, %bb.at ] ; 3 uses
  %.2455692 = phi ptr [ %i.bq, %.lr.ph695.preheader ], [ %i.lc, %bb.at ] ; 3 uses
  %.2463691 = phi i64 [ %i.br, %.lr.ph695.preheader ], [ %i.ld, %bb.at ] ; 3 uses
  %i.kd = shl nuw nsw i64 %indvar926, 3           ; 2 uses
  %scevgep928 = getelementptr i8, ptr %i.jb, i64 %i.kd
  %i.ke = add i64 %i.ix, %indvar926
  %scevgep931 = getelementptr i8, ptr %i.jc, i64 %i.kd
  %i.kf = load i32, ptr %i.b, align 4, !tbaa !25  ; 6 uses
  %i.kg = icmp ugt i32 %i.kf, 119364
  br i1 %i.kg, label %.critedge.loopexit, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph695
  %i.kh = lshr i32 %i.kf, 8
  %i.ki = zext nneg i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw i8, ptr @ccc_index, i64 %i.ki
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !20
  %i.kl = zext i8 %i.kk to i64
  %i.km = getelementptr inbounds nuw [16 x i8], ptr @ccc_val_index, i64 %i.kl
  %i.kn = lshr i32 %i.kf, 4
  %i.ko = and i32 %i.kn, 15
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kp
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !20
  %i.ks = zext i8 %i.kr to i64
  %i.kt = getelementptr inbounds nuw [16 x i8], ptr @ccc_val, i64 %i.ks
  %i.ku = and i32 %i.kf, 15
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.kv
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !20  ; 2 uses
  %i.ky = zext i8 %i.kx to i32                    ; 3 uses
  %i.kz = icmp ne i8 %i.kx, 0
  %i.la = icmp samesign ult i64 %indvars.iv934, 10
  %or.cond5 = select i1 %i.kz, i1 %i.la, i1 false
  br i1 %or.cond5, label %bb.ar, label %.critedge.loopexit

bb.ar:                                            ; preds = %bb.aq
  %i.lb = zext nneg i32 %i.kc to i64              ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.2455692, i64 %i.lb ; 3 uses
  %i.ld = sub i64 %.2463691, %i.lb                ; 3 uses
  %.not780 = icmp eq i64 %indvars.iv934, 0
  br i1 %.not780, label %.critedge503, label %.lr.ph687

.lr.ph687:                                        ; preds = %bb.ar, %bb.as
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.as ], [ 0, %bb.ar ] ; 3 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lg = load i32, ptr %i.lf, align 4, !tbaa !112
  %i.lh = icmp sgt i32 %i.lg, %i.ky
  br i1 %i.lh, label %._crit_edge690, label %bb.as

bb.as:                                            ; preds = %.lr.ph687
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv934
  br i1 %exitcond.not, label %.critedge503, label %.lr.ph687, !llvm.loop !102

._crit_edge690:                                   ; preds = %.lr.ph687
  %i.li = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lj = sub i64 %i.ke, %indvars.iv
  %i.lk = and i64 %i.lj, 4294967295               ; 2 uses
  %i.ll = mul nsw i64 %i.lk, -8                   ; 2 uses
  %scevgep930 = getelementptr i8, ptr %scevgep928, i64 %i.ll
  %scevgep932 = getelementptr i8, ptr %scevgep931, i64 %i.ll
  %i.lm = shl nuw nsw i64 %i.lk, 3
  %i.ln = add nuw nsw i64 %i.lm, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep930, ptr noundef nonnull align 8 dereferenceable(1) %scevgep932, i64 %i.ln, i1 false), !tbaa !25
  store i32 %i.ky, ptr %i.li, align 4, !tbaa !112
  store i32 %i.kf, ptr %i.le, align 8, !tbaa !113
  br label %bb.at

.critedge503:                                     ; preds = %bb.as, %bb.ar
  %i.lo = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv934 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  store i32 %i.ky, ptr %i.lp, align 4, !tbaa !112
  store i32 %i.kf, ptr %i.lo, align 8, !tbaa !113
  br label %bb.at

bb.at:                                            ; preds = %.critedge503, %._crit_edge690
  %indvars.iv.next935 = add nuw nsw i64 %indvars.iv934, 1 ; 2 uses
  %i.lq = call i32 %.0400(ptr noundef nonnull %i.b, ptr noundef nonnull %i.lc, i64 noundef %i.ld) #23, !callees !53 ; 3 uses
  %i.lr = icmp sgt i32 %i.lq, 0
  %indvar.next927 = add nuw nsw i64 %indvar926, 1
  br i1 %i.lr, label %.lr.ph695, label %.critedge.loopexit, !llvm.loop !103

.critedge.loopexit:                               ; preds = %.lr.ph695, %bb.at, %bb.aq
  %.2463.lcssa.ph = phi i64 [ %.2463691, %bb.aq ], [ %i.ld, %bb.at ], [ %.2463691, %.lr.ph695 ]
  %.2455.lcssa.ph = phi ptr [ %.2455692, %bb.aq ], [ %i.lc, %bb.at ], [ %.2455692, %.lr.ph695 ]
  %.1.lcssa.ph.in = phi i64 [ %indvars.iv934, %bb.aq ], [ %indvars.iv.next935, %bb.at ], [ %indvars.iv934, %.lr.ph695 ]
  %.lcssa553.ph = phi i32 [ %i.kc, %bb.aq ], [ %i.lq, %bb.at ], [ %i.kc, %.lr.ph695 ]
  %.1.lcssa.ph = trunc i64 %.1.lcssa.ph.in to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %.preheader539
  %.2463.lcssa = phi i64 [ %i.br, %.preheader539 ], [ %.2463.lcssa.ph, %.critedge.loopexit ] ; 5 uses
  %.2455.lcssa = phi ptr [ %i.bq, %.preheader539 ], [ %.2455.lcssa.ph, %.critedge.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %indvars9241159, %.preheader539 ], [ %.1.lcssa.ph, %.critedge.loopexit ] ; 2 uses
  %.lcssa553 = phi i32 [ %i.iz, %.preheader539 ], [ %.lcssa553.ph, %.critedge.loopexit ] ; 4 uses
  %.not494 = icmp eq ptr %.131161, null
  br i1 %.not494, label %.preheader538, label %bb.au

.preheader538:                                    ; preds = %.critedge
  %i.ls = ptrtoint ptr %.1410733 to i64
  %i.lt = ptrtoint ptr %.1430732 to i64           ; 2 uses
  %i.lu = sub i64 %i.ls, %i.lt
  %i.lv = load i32, ptr %i.a, align 4, !tbaa !25
  %i.lw = call i64 %.0399(ptr noundef %.1430732, i64 noundef %i.lu, i32 noundef %i.lv) #23, !callees !54 ; 2 uses
  %i.lx = icmp eq i64 %i.lw, 0
  br i1 %i.lx, label %.lr.ph709, label %._crit_edge710

.lr.ph709:                                        ; preds = %.preheader538
  %i.ly = mul i64 %.2463.lcssa, %.0401
  %i.lz = add i64 %i.ly, %.0402
  br label %bb.bc

bb.au:                                            ; preds = %.critedge
  %i.ma = getelementptr inbounds nuw i8, ptr %.1430732, i64 %i.bp
  %i.mb = icmp ugt ptr %i.ma, %.1410733
  br i1 %i.mb, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.mc = load ptr, ptr %0, align 8, !tbaa !19
  %i.md = ptrtoint ptr %.1430732 to i64
  %i.me = ptrtoint ptr %i.mc to i64
  %i.mf = sub i64 %i.md, %i.me
  store i64 %i.mf, ptr %i.q, align 8, !tbaa !18
  %i.mg = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.mh = mul i64 %.2463.lcssa, %.0401
  %i.mi = add i64 %i.mh, %.0402
  %i.mj = add i64 %i.mi, %i.mg
  %i.mk = call ptr @archive_string_ensure(ptr noundef nonnull %0, i64 noundef %i.mj)
  %i.ml = icmp eq ptr %i.mk, null
  br i1 %i.ml, label %.thread516, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.mm = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.mn = load i64, ptr %i.q, align 8, !tbaa !18
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mn
  %i.mp = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mp
  %i.mr = getelementptr inbounds i8, ptr %i.mq, i64 %i.ac
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au
  %.32 = phi ptr [ %i.mo, %bb.aw ], [ %.1430732, %bb.au ] ; 6 uses
  %.16425 = phi ptr [ %i.mr, %bb.aw ], [ %.1410733, %bb.au ] ; 2 uses
  switch i32 %.0407734, label %bb.be [
    i32 4, label %bb.ay
    i32 3, label %bb.az
    i32 2, label %bb.ba
    i32 1, label %bb.bb
  ]

bb.ay:                                            ; preds = %bb.ax
  %i.ms = getelementptr inbounds nuw i8, ptr %.131161, i64 1
  %i.mt = load i8, ptr %.131161, align 1, !tbaa !20
  %i.mu = getelementptr inbounds nuw i8, ptr %.32, i64 1
  store i8 %i.mt, ptr %.32, align 1, !tbaa !20
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.33 = phi ptr [ %i.mu, %bb.ay ], [ %.32, %bb.ax ] ; 2 uses
  %.14 = phi ptr [ %i.ms, %bb.ay ], [ %.131161, %bb.ax ] ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.14, i64 1
  %i.mw = load i8, ptr %.14, align 1, !tbaa !20
  %i.mx = getelementptr inbounds nuw i8, ptr %.33, i64 1
  store i8 %i.mw, ptr %.33, align 1, !tbaa !20
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %.34 = phi ptr [ %i.mx, %bb.az ], [ %.32, %bb.ax ] ; 2 uses
  %.15 = phi ptr [ %i.mv, %bb.az ], [ %.131161, %bb.ax ] ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %.15, i64 1
  %i.mz = load i8, ptr %.15, align 1, !tbaa !20
  %i.na = getelementptr inbounds nuw i8, ptr %.34, i64 1
  store i8 %i.mz, ptr %.34, align 1, !tbaa !20
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.ax
  %.35 = phi ptr [ %i.na, %bb.ba ], [ %.32, %bb.ax ] ; 2 uses
  %.16 = phi ptr [ %i.my, %bb.ba ], [ %.131161, %bb.ax ]
  %i.nb = load i8, ptr %.16, align 1, !tbaa !20
  %i.nc = getelementptr inbounds nuw i8, ptr %.35, i64 1
  store i8 %i.nb, ptr %.35, align 1, !tbaa !20
  br label %bb.be

bb.bc:                                            ; preds = %.lr.ph709, %bb.bd
  %i.nd = phi i64 [ %i.lt, %.lr.ph709 ], [ %i.nq, %bb.bd ]
  %i.ne = load ptr, ptr %0, align 8, !tbaa !19
  %i.nf = ptrtoint ptr %i.ne to i64
  %i.ng = sub i64 %i.nd, %i.nf
  store i64 %i.ng, ptr %i.q, align 8, !tbaa !18
  %i.nh = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.ni = add i64 %i.lz, %i.nh
  %i.nj = call ptr @archive_string_ensure(ptr noundef nonnull %0, i64 noundef %i.ni)
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %.thread516, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.nl = load ptr, ptr %0, align 8, !tbaa !19    ; 2 uses
  %i.nm = load i64, ptr %i.q, align 8, !tbaa !18  ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nl, i64 %i.nm ; 3 uses
  %i.no = load i64, ptr %i.aa, align 8, !tbaa !26
  %i.np = sub nsw i64 %i.no, %.0402               ; 2 uses
  %i.nq = ptrtoint ptr %i.nn to i64
  %gepdiff781 = sub nsw i64 %i.np, %i.nm
  %i.nr = load i32, ptr %i.a, align 4, !tbaa !25
  %i.ns = call i64 %.0399(ptr noundef %i.nn, i64 noundef %gepdiff781, i32 noundef %i.nr) #23, !callees !54 ; 2 uses
  %i.nt = icmp eq i64 %i.ns, 0
  br i1 %i.nt, label %bb.bc, label %._crit_edge710.loopexit, !llvm.loop !104

._crit_edge710.loopexit:                          ; preds = %bb.bd
  %i.nu = getelementptr inbounds i8, ptr %i.nl, i64 %i.np
  br label %._crit_edge710

._crit_edge710:                                   ; preds = %._crit_edge710.loopexit, %.preheader538
  %.37.lcssa = phi ptr [ %.1430732, %.preheader538 ], [ %i.nn, %._crit_edge710.loopexit ]
  %.17426.lcssa = phi ptr [ %.1410733, %.preheader538 ], [ %i.nu, %._crit_edge710.loopexit ]
  %.lcssa554 = phi i64 [ %i.lw, %.preheader538 ], [ %i.ns, %._crit_edge710.loopexit ]
  %i.nv = getelementptr inbounds nuw i8, ptr %.37.lcssa, i64 %.lcssa554
  br label %bb.be

bb.be:                                            ; preds = %bb.ax, %bb.bb, %._crit_edge710
  %.38 = phi ptr [ %i.nv, %._crit_edge710 ], [ %.32, %bb.ax ], [ %i.nc, %bb.bb ] ; 2 uses
  %.18427 = phi ptr [ %.17426.lcssa, %._crit_edge710 ], [ %.16425, %bb.ax ], [ %.16425, %bb.bb ] ; 2 uses
  %.not782 = icmp eq i32 %.1.lcssa, 0
  br i1 %.not782, label %._crit_edge725, label %.lr.ph724

.lr.ph724:                                        ; preds = %bb.be
  %i.nw = mul i64 %.2463.lcssa, %.0401
  %i.nx = add i64 %i.nw, %.0402
  %wide.trip.count = zext i32 %.1.lcssa to i64
  br label %bb.bf

bb.bf:                                            ; preds = %.lr.ph724, %._crit_edge716
  %indvars.iv940 = phi i64 [ 0, %.lr.ph724 ], [ %indvars.iv.next941, %._crit_edge716 ] ; 2 uses
  %.19428721 = phi ptr [ %.18427, %.lr.ph724 ], [ %.21.lcssa, %._crit_edge716 ] ; 2 uses
  %.39720 = phi ptr [ %.38, %.lr.ph724 ], [ %i.pe, %._crit_edge716 ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv940
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !113 ; 2 uses
  store i32 %i.nz, ptr %i.a, align 4, !tbaa !25
  %i.oa = ptrtoint ptr %.19428721 to i64
  %i.ob = ptrtoint ptr %.39720 to i64             ; 2 uses
  %i.oc = sub i64 %i.oa, %i.ob
  %i.od = call i64 %.0399(ptr noundef %.39720, i64 noundef %i.oc, i32 noundef %i.nz) #23, !callees !54 ; 2 uses
  %i.oe = icmp eq i64 %i.od, 0
  br i1 %i.oe, label %.lr.ph715, label %._crit_edge716

.lr.ph715:                                        ; preds = %bb.bf, %archive_string_ensure.exit
  %i.of = phi i64 [ %i.oz, %archive_string_ensure.exit ], [ %i.ob, %bb.bf ]
  %i.og = load ptr, ptr %0, align 8, !tbaa !19    ; 5 uses
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = sub i64 %i.of, %i.oh                    ; 2 uses
  store i64 %i.oi, ptr %i.q, align 8, !tbaa !18
  %i.oj = load i64, ptr %i.aa, align 8, !tbaa !26 ; 9 uses
  %i.ok = add i64 %i.nx, %i.oj                    ; 2 uses
  %.not.i505 = icmp eq ptr %i.og, null
  %.not30.i = icmp ugt i64 %i.ok, %i.oj
  %or.cond.i506 = select i1 %.not.i505, i1 true, i1 %.not30.i
  br i1 %or.cond.i506, label %._crit_edge.i, label %archive_string_ensure.exit
end_hunk_0
