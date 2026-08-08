inline.NumInlined: 1199
inline.NumDeleted: 169
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 57
loop-unroll.NumUnrolled: 85
begin_hunk_0_@Gia_ManFromIfGetConfig2:bb.a
  %i.mu = or i32 %i.mt, %.01620.us.13.i.epil.init
  br label %._crit_edge.us.13.i.preheader

._crit_edge.us.13.i.preheader:                    ; preds = %._crit_edge.us.13.i.preheader.unr-lcssa, %._crit_edge.us.12.i.epil.preheader
  %.lcssa542 = phi i32 [ %i.ml, %._crit_edge.us.13.i.preheader.unr-lcssa ], [ %i.mu, %._crit_edge.us.12.i.epil.preheader ]
  %xtraiter630 = and i64 %wide.trip.count.i, 1
  %i.mv = icmp eq i64 %i.bv, 0
  br i1 %i.mv, label %._crit_edge.us.13.i.epil.preheader, label %._crit_edge.us.13.i.preheader.new

._crit_edge.us.13.i.preheader.new:                ; preds = %._crit_edge.us.13.i.preheader
  %unroll_iter634 = and i64 %wide.trip.count.i, 2147483646
  br label %._crit_edge.us.13.i

._crit_edge.us.13.i:                              ; preds = %._crit_edge.us.13.i, %._crit_edge.us.13.i.preheader.new
  %indvars.iv.14.i = phi i64 [ 0, %._crit_edge.us.13.i.preheader.new ], [ %indvars.iv.next.14.i.1, %._crit_edge.us.13.i ] ; 4 uses
  %.01620.us.14.i = phi i32 [ 0, %._crit_edge.us.13.i.preheader.new ], [ %i.nn, %._crit_edge.us.13.i ]
  %niter635 = phi i64 [ 0, %._crit_edge.us.13.i.preheader.new ], [ %niter635.next.1, %._crit_edge.us.13.i ]
  %i.mw = shl nuw nsw i64 %indvars.iv.14.i, 1
  %i.mx = lshr i64 %i.d, %i.mw
  %i.my = trunc i64 %i.mx to i32
  %i.mz = and i32 %i.my, 3
  %i.na = trunc nuw nsw i64 %indvars.iv.14.i to i32
  %i.nb = lshr i32 14, %i.na
  %i.nc = and i32 %i.nb, 1
  %i.nd = shl nuw nsw i32 %i.nc, %i.mz
  %i.ne = or i32 %i.nd, %.01620.us.14.i
  %indvars.iv.next.14.i = or disjoint i64 %indvars.iv.14.i, 1 ; 2 uses
  %i.nf = shl nuw nsw i64 %indvars.iv.next.14.i, 1
  %i.ng = lshr i64 %i.d, %i.nf
  %i.nh = trunc i64 %i.ng to i32
  %i.ni = and i32 %i.nh, 3
  %i.nj = trunc nuw nsw i64 %indvars.iv.next.14.i to i32
  %i.nk = lshr i32 14, %i.nj
  %i.nl = and i32 %i.nk, 1
  %i.nm = shl nuw nsw i32 %i.nl, %i.ni
  %i.nn = or i32 %i.nm, %i.ne                     ; 3 uses
  %indvars.iv.next.14.i.1 = add nuw nsw i64 %indvars.iv.14.i, 2 ; 2 uses
  %niter635.next.1 = add i64 %niter635, 2         ; 2 uses
  %niter635.ncmp.1 = icmp eq i64 %niter635.next.1, %unroll_iter634
  br i1 %niter635.ncmp.1, label %._crit_edge.us.14.i.preheader.unr-lcssa, label %._crit_edge.us.13.i, !llvm.loop !277

._crit_edge.us.14.i.preheader.unr-lcssa:          ; preds = %._crit_edge.us.13.i
  %lcmp.mod631.not = icmp eq i64 %xtraiter630, 0
  br i1 %lcmp.mod631.not, label %._crit_edge.us.14.i.preheader, label %._crit_edge.us.13.i.epil.preheader

._crit_edge.us.13.i.epil.preheader:               ; preds = %._crit_edge.us.14.i.preheader.unr-lcssa, %._crit_edge.us.13.i.preheader
  %indvars.iv.14.i.epil.init = phi i64 [ 0, %._crit_edge.us.13.i.preheader ], [ %indvars.iv.next.14.i.1, %._crit_edge.us.14.i.preheader.unr-lcssa ] ; 2 uses
  %.01620.us.14.i.epil.init = phi i32 [ 0, %._crit_edge.us.13.i.preheader ], [ %i.nn, %._crit_edge.us.14.i.preheader.unr-lcssa ]
  %lcmp.mod633 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod633)
  %i.no = shl nuw nsw i64 %indvars.iv.14.i.epil.init, 1
  %i.np = lshr i64 %i.d, %i.no
  %i.nq = trunc i64 %i.np to i32
  %i.nr = and i32 %i.nq, 3
  %i.ns = trunc nuw nsw i64 %indvars.iv.14.i.epil.init to i32
  %i.nt = lshr i32 14, %i.ns
  %i.nu = and i32 %i.nt, 1
  %i.nv = shl nuw nsw i32 %i.nu, %i.nr
  %i.nw = or i32 %i.nv, %.01620.us.14.i.epil.init
  br label %._crit_edge.us.14.i.preheader

._crit_edge.us.14.i.preheader:                    ; preds = %._crit_edge.us.14.i.preheader.unr-lcssa, %._crit_edge.us.13.i.epil.preheader
  %.lcssa541 = phi i32 [ %i.nn, %._crit_edge.us.14.i.preheader.unr-lcssa ], [ %i.nw, %._crit_edge.us.13.i.epil.preheader ]
  %xtraiter636 = and i64 %wide.trip.count.i, 1
  %i.nx = icmp eq i64 %i.bv, 0
  br i1 %i.nx, label %._crit_edge.us.14.i.epil.preheader, label %._crit_edge.us.14.i.preheader.new

._crit_edge.us.14.i.preheader.new:                ; preds = %._crit_edge.us.14.i.preheader
  %unroll_iter640 = and i64 %wide.trip.count.i, 2147483646
  br label %._crit_edge.us.14.i

._crit_edge.us.14.i:                              ; preds = %._crit_edge.us.14.i, %._crit_edge.us.14.i.preheader.new
  %indvars.iv.15.i = phi i64 [ 0, %._crit_edge.us.14.i.preheader.new ], [ %indvars.iv.next.15.i.1, %._crit_edge.us.14.i ] ; 4 uses
  %.01620.us.15.i = phi i32 [ 0, %._crit_edge.us.14.i.preheader.new ], [ %i.op, %._crit_edge.us.14.i ]
  %niter641 = phi i64 [ 0, %._crit_edge.us.14.i.preheader.new ], [ %niter641.next.1, %._crit_edge.us.14.i ]
  %i.ny = shl nuw nsw i64 %indvars.iv.15.i, 1
  %i.nz = lshr i64 %i.d, %i.ny
  %i.oa = trunc i64 %i.nz to i32
  %i.ob = and i32 %i.oa, 3
  %i.oc = trunc nuw nsw i64 %indvars.iv.15.i to i32
  %i.od = lshr i32 15, %i.oc
  %i.oe = and i32 %i.od, 1
  %i.of = shl nuw nsw i32 %i.oe, %i.ob
  %i.og = or i32 %i.of, %.01620.us.15.i
  %indvars.iv.next.15.i = or disjoint i64 %indvars.iv.15.i, 1 ; 2 uses
  %i.oh = shl nuw nsw i64 %indvars.iv.next.15.i, 1
  %i.oi = lshr i64 %i.d, %i.oh
  %i.oj = trunc i64 %i.oi to i32
  %i.ok = and i32 %i.oj, 3
  %i.ol = trunc nuw nsw i64 %indvars.iv.next.15.i to i32
  %i.om = lshr i32 15, %i.ol
  %i.on = and i32 %i.om, 1
  %i.oo = shl nuw nsw i32 %i.on, %i.ok
  %i.op = or i32 %i.oo, %i.og                     ; 3 uses
  %indvars.iv.next.15.i.1 = add nuw nsw i64 %indvars.iv.15.i, 2 ; 2 uses
  %niter641.next.1 = add i64 %niter641, 2         ; 2 uses
  %niter641.ncmp.1 = icmp eq i64 %niter641.next.1, %unroll_iter640
  br i1 %niter641.ncmp.1, label %._crit_edge.us.15.i.unr-lcssa, label %._crit_edge.us.14.i, !llvm.loop !277

._crit_edge.us.15.i.unr-lcssa:                    ; preds = %._crit_edge.us.14.i
  %lcmp.mod637.not = icmp eq i64 %xtraiter636, 0
  br i1 %lcmp.mod637.not, label %._crit_edge.us.15.i, label %._crit_edge.us.14.i.epil.preheader

._crit_edge.us.14.i.epil.preheader:               ; preds = %._crit_edge.us.15.i.unr-lcssa, %._crit_edge.us.14.i.preheader
  %indvars.iv.15.i.epil.init = phi i64 [ 0, %._crit_edge.us.14.i.preheader ], [ %indvars.iv.next.15.i.1, %._crit_edge.us.15.i.unr-lcssa ] ; 2 uses
  %.01620.us.15.i.epil.init = phi i32 [ 0, %._crit_edge.us.14.i.preheader ], [ %i.op, %._crit_edge.us.15.i.unr-lcssa ]
  %lcmp.mod639 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod639)
  %i.oq = shl nuw nsw i64 %indvars.iv.15.i.epil.init, 1
  %i.or = lshr i64 %i.d, %i.oq
  %i.os = trunc i64 %i.or to i32
  %i.ot = and i32 %i.os, 3
  %i.ou = trunc nuw nsw i64 %indvars.iv.15.i.epil.init to i32
  %i.ov = lshr i32 15, %i.ou
  %i.ow = and i32 %i.ov, 1
  %i.ox = shl nuw nsw i32 %i.ow, %i.ot
  %i.oy = or i32 %i.ox, %.01620.us.15.i.epil.init
  br label %._crit_edge.us.15.i

._crit_edge.us.15.i:                              ; preds = %._crit_edge.us.15.i.unr-lcssa, %._crit_edge.us.14.i.epil.preheader
  %.lcssa = phi i32 [ %i.op, %._crit_edge.us.15.i.unr-lcssa ], [ %i.oy, %._crit_edge.us.14.i.epil.preheader ]
  %i.oz = and i64 %i.f, 1
  %i.pa = zext nneg i32 %.lcssa554 to i64
  %i.pb = lshr i64 %i.f, %i.pa
  %i.pc = shl i64 %i.pb, 1
  %i.pd = and i64 %i.pc, 2
  %i.pe = or disjoint i64 %i.pd, %i.oz
  %i.pf = zext nneg i32 %.lcssa553 to i64
  %i.pg = lshr i64 %i.f, %i.pf
  %i.ph = shl i64 %i.pg, 2
  %i.pi = and i64 %i.ph, 4
  %i.pj = or disjoint i64 %i.pe, %i.pi
  %i.pk = zext nneg i32 %.lcssa552 to i64
  %i.pl = lshr i64 %i.f, %i.pk
  %i.pm = shl i64 %i.pl, 3
  %i.pn = and i64 %i.pm, 8
  %i.po = or disjoint i64 %i.pj, %i.pn
  %i.pp = zext nneg i32 %.lcssa551 to i64
  %i.pq = lshr i64 %i.f, %i.pp
  %i.pr = shl i64 %i.pq, 4
  %i.ps = and i64 %i.pr, 16
  %i.pt = or disjoint i64 %i.po, %i.ps
  %i.pu = zext nneg i32 %.lcssa550 to i64
  %i.pv = lshr i64 %i.f, %i.pu
  %i.pw = shl i64 %i.pv, 5
  %i.px = and i64 %i.pw, 32
  %i.py = or disjoint i64 %i.pt, %i.px
  %i.pz = zext nneg i32 %.lcssa549 to i64
  %i.qa = lshr i64 %i.f, %i.pz
  %i.qb = shl i64 %i.qa, 6
  %i.qc = and i64 %i.qb, 64
  %i.qd = or i64 %i.py, %i.qc
  %i.qe = zext nneg i32 %.lcssa548 to i64
  %i.qf = lshr i64 %i.f, %i.qe
  %i.qg = shl i64 %i.qf, 7
  %i.qh = and i64 %i.qg, 128
  %i.qi = or i64 %i.qd, %i.qh
  %i.qj = zext nneg i32 %.lcssa547 to i64
  %i.qk = lshr i64 %i.f, %i.qj
  %i.ql = shl i64 %i.qk, 8
  %i.qm = and i64 %i.ql, 256
  %i.qn = or i64 %i.qi, %i.qm
  %i.qo = zext nneg i32 %.lcssa546 to i64
  %i.qp = lshr i64 %i.f, %i.qo
  %i.qq = shl i64 %i.qp, 9
  %i.qr = and i64 %i.qq, 512
  %i.qs = or i64 %i.qn, %i.qr
  %i.qt = zext nneg i32 %.lcssa545 to i64
  %i.qu = lshr i64 %i.f, %i.qt
  %i.qv = shl i64 %i.qu, 10
  %i.qw = and i64 %i.qv, 1024
  %i.qx = or i64 %i.qs, %i.qw
  %i.qy = zext nneg i32 %.lcssa544 to i64
  %i.qz = lshr i64 %i.f, %i.qy
  %i.ra = shl i64 %i.qz, 11
  %i.rb = and i64 %i.ra, 2048
  %i.rc = or i64 %i.qx, %i.rb
  %i.rd = zext nneg i32 %.lcssa543 to i64
  %i.re = lshr i64 %i.f, %i.rd
  %i.rf = shl i64 %i.re, 12
  %i.rg = and i64 %i.rf, 4096
  %i.rh = or i64 %i.rc, %i.rg
  %i.ri = zext nneg i32 %.lcssa542 to i64
  %i.rj = lshr i64 %i.f, %i.ri
  %i.rk = shl i64 %i.rj, 13
  %i.rl = and i64 %i.rk, 8192
  %i.rm = or i64 %i.rh, %i.rl
  %i.rn = zext nneg i32 %.lcssa541 to i64
  %i.ro = lshr i64 %i.f, %i.rn
  %i.rp = shl i64 %i.ro, 14
  %i.rq = and i64 %i.rp, 16384
  %i.rr = or i64 %i.rm, %i.rq
  %i.rs = zext nneg i32 %.lcssa to i64
  %i.rt = lshr i64 %i.f, %i.rs
  %i.ru = shl i64 %i.rt, 15
  %i.rv = and i64 %i.ru, 32768
  %i.rw = or i64 %i.rr, %i.rv
  br label %Gia_ManFromIfPermuteTruth4.exit

.split.i:                                         ; preds = %bb.ab
  %5 = and i64 %i.f, 1                            ; 6 uses
  %6 = mul nuw nsw i64 %5, 126
  %7 = shl nuw nsw i64 %5, 12
  %8 = shl nuw nsw i64 %5, 13
  %9 = shl nuw nsw i64 %5, 14
  %10 = shl nuw nsw i64 %5, 15
  %11 = mul nuw nsw i64 %5, 3969
  %12 = or disjoint i64 %8, %7
  %13 = or disjoint i64 %12, %9
  %14 = or disjoint i64 %13, %10
  %15 = or disjoint i64 %14, %6
  %16 = or i64 %15, %11
  br label %Gia_ManFromIfPermuteTruth4.exit

Gia_ManFromIfPermuteTruth4.exit:                  ; preds = %.split.i, %._crit_edge.us.15.i, %._crit_edge327
  %.0106 = phi i64 [ %i.f, %._crit_edge327 ], [ %i.rw, %._crit_edge.us.15.i ], [ %16, %.split.i ] ; 2 uses
  %i.rx = lshr i64 %.0106, 8
  %i.ry = trunc i64 %i.rx to i8
  %i.rz = load i32, ptr %i.b, align 4, !tbaa !85  ; 7 uses
  %i.sa = load i32, ptr %0, align 8, !tbaa !84
  %i.sb = icmp eq i32 %i.rz, %i.sa
  br i1 %i.sb, label %bb.ad, label %Gia_ManFromIfPermuteTruth4.exit.Vec_StrPush.exit145_crit_edge

Gia_ManFromIfPermuteTruth4.exit.Vec_StrPush.exit145_crit_edge: ; preds = %Gia_ManFromIfPermuteTruth4.exit
  %.pre413 = load ptr, ptr %i.y, align 8, !tbaa !76
  br label %Vec_StrPush.exit145

bb.ad:                                            ; preds = %Gia_ManFromIfPermuteTruth4.exit
  %i.sc = icmp slt i32 %i.rz, 16
  br i1 %i.sc, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.sd = load ptr, ptr %i.y, align 8, !tbaa !76  ; 2 uses
  %.not9.i.i143 = icmp eq ptr %i.sd, null
  br i1 %.not9.i.i143, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.se = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.sd, i64 noundef 16) #30
  br label %Vec_StrGrow.exit11.sink.split.i141

bb.ag:                                            ; preds = %bb.ae
  %i.sf = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %Vec_StrGrow.exit11.sink.split.i141

bb.ah:                                            ; preds = %bb.ad
  %i.sg = icmp samesign ult i32 %i.rz, 1073741823
  %i.sh = shl nuw nsw i32 %i.rz, 1
  %spec.select.i138 = select i1 %i.sg, i32 %i.sh, i32 2147483647 ; 4 uses
  %.not.i9.i139 = icmp samesign ult i32 %i.rz, %spec.select.i138
  %.pre414 = load ptr, ptr %i.y, align 8, !tbaa !76 ; 3 uses
  br i1 %.not.i9.i139, label %bb.ai, label %Vec_StrPush.exit145

bb.ai:                                            ; preds = %bb.ah
  %.not9.i10.i140 = icmp eq ptr %.pre414, null
  %i.si = zext nneg i32 %spec.select.i138 to i64  ; 2 uses
  br i1 %.not9.i10.i140, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.sj = tail call ptr @realloc(ptr noundef nonnull %.pre414, i64 noundef %i.si) #30
  br label %Vec_StrGrow.exit11.sink.split.i141

bb.ak:                                            ; preds = %bb.ai
  %i.sk = tail call noalias ptr @malloc(i64 noundef %i.si) #31
  br label %Vec_StrGrow.exit11.sink.split.i141

Vec_StrGrow.exit11.sink.split.i141:               ; preds = %bb.aj, %bb.ak, %bb.af, %bb.ag
  %storemerge295 = phi ptr [ %i.sf, %bb.ag ], [ %i.se, %bb.af ], [ %i.sj, %bb.aj ], [ %i.sk, %bb.ak ] ; 2 uses
  %spec.select.sink.i142 = phi i32 [ 16, %bb.ag ], [ 16, %bb.af ], [ %spec.select.i138, %bb.aj ], [ %spec.select.i138, %bb.ak ]
  store ptr %storemerge295, ptr %i.y, align 8, !tbaa !76
  store i32 %spec.select.sink.i142, ptr %0, align 8, !tbaa !84
  %.pre415 = load i32, ptr %i.b, align 4, !tbaa !85
  br label %Vec_StrPush.exit145

Vec_StrPush.exit145:                              ; preds = %Gia_ManFromIfPermuteTruth4.exit.Vec_StrPush.exit145_crit_edge, %bb.ah, %Vec_StrGrow.exit11.sink.split.i141
  %i.sl = phi i32 [ %i.rz, %Gia_ManFromIfPermuteTruth4.exit.Vec_StrPush.exit145_crit_edge ], [ %i.rz, %bb.ah ], [ %.pre415, %Vec_StrGrow.exit11.sink.split.i141 ] ; 2 uses
  %i.sm = phi ptr [ %.pre413, %Gia_ManFromIfPermuteTruth4.exit.Vec_StrPush.exit145_crit_edge ], [ %.pre414, %bb.ah ], [ %storemerge295, %Vec_StrGrow.exit11.sink.split.i141 ]
  %i.sn = add nsw i32 %i.sl, 1
  store i32 %i.sn, ptr %i.b, align 4, !tbaa !85
  %i.so = sext i32 %i.sl to i64
  %i.sp = getelementptr inbounds i8, ptr %i.sm, i64 %i.so
  store i8 %i.ry, ptr %i.sp, align 1, !tbaa !78
  %i.sq = trunc i64 %.0106 to i8
  %i.sr = load i32, ptr %i.b, align 4, !tbaa !85  ; 7 uses
  %i.ss = load i32, ptr %0, align 8, !tbaa !84
  %i.st = icmp eq i32 %i.sr, %i.ss
  br i1 %i.st, label %bb.al, label %Vec_StrPush.exit145.Vec_StrPush.exit153_crit_edge

Vec_StrPush.exit145.Vec_StrPush.exit153_crit_edge: ; preds = %Vec_StrPush.exit145
  %.pre416 = load ptr, ptr %i.y, align 8, !tbaa !76
  br label %Vec_StrPush.exit153

bb.al:                                            ; preds = %Vec_StrPush.exit145
  %i.su = icmp slt i32 %i.sr, 16
  br i1 %i.su, label %bb.am, label %bb.ap

bb.am:                                            ; preds = %bb.al
  %i.sv = load ptr, ptr %i.y, align 8, !tbaa !76  ; 2 uses
  %.not9.i.i151 = icmp eq ptr %i.sv, null
  br i1 %.not9.i.i151, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.sw = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.sv, i64 noundef 16) #30
  br label %Vec_StrGrow.exit11.sink.split.i149

bb.ao:                                            ; preds = %bb.am
  %i.sx = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %Vec_StrGrow.exit11.sink.split.i149

bb.ap:                                            ; preds = %bb.al
  %i.sy = icmp samesign ult i32 %i.sr, 1073741823
  %i.sz = shl nuw nsw i32 %i.sr, 1
  %spec.select.i146 = select i1 %i.sy, i32 %i.sz, i32 2147483647 ; 4 uses
  %.not.i9.i147 = icmp samesign ult i32 %i.sr, %spec.select.i146
  %.pre417 = load ptr, ptr %i.y, align 8, !tbaa !76 ; 3 uses
  br i1 %.not.i9.i147, label %bb.aq, label %Vec_StrPush.exit153

bb.aq:                                            ; preds = %bb.ap
  %.not9.i10.i148 = icmp eq ptr %.pre417, null
  %i.ta = zext nneg i32 %spec.select.i146 to i64  ; 2 uses
  br i1 %.not9.i10.i148, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.tb = tail call ptr @realloc(ptr noundef nonnull %.pre417, i64 noundef %i.ta) #30
  br label %Vec_StrGrow.exit11.sink.split.i149

bb.as:                                            ; preds = %bb.aq
  %i.tc = tail call noalias ptr @malloc(i64 noundef %i.ta) #31
  br label %Vec_StrGrow.exit11.sink.split.i149

Vec_StrGrow.exit11.sink.split.i149:               ; preds = %bb.ar, %bb.as, %bb.an, %bb.ao
  %storemerge296 = phi ptr [ %i.sx, %bb.ao ], [ %i.sw, %bb.an ], [ %i.tb, %bb.ar ], [ %i.tc, %bb.as ] ; 2 uses
  %spec.select.sink.i150 = phi i32 [ 16, %bb.ao ], [ 16, %bb.an ], [ %spec.select.i146, %bb.ar ], [ %spec.select.i146, %bb.as ]
  store ptr %storemerge296, ptr %i.y, align 8, !tbaa !76
  store i32 %spec.select.sink.i150, ptr %0, align 8, !tbaa !84
  %.pre418 = load i32, ptr %i.b, align 4, !tbaa !85
  br label %Vec_StrPush.exit153

Vec_StrPush.exit153:                              ; preds = %Vec_StrPush.exit145.Vec_StrPush.exit153_crit_edge, %bb.ap, %Vec_StrGrow.exit11.sink.split.i149
  %i.td = phi i32 [ %i.sr, %Vec_StrPush.exit145.Vec_StrPush.exit153_crit_edge ], [ %i.sr, %bb.ap ], [ %.pre418, %Vec_StrGrow.exit11.sink.split.i149 ] ; 2 uses
  %i.te = phi ptr [ %.pre416, %Vec_StrPush.exit145.Vec_StrPush.exit153_crit_edge ], [ %.pre417, %bb.ap ], [ %storemerge296, %Vec_StrGrow.exit11.sink.split.i149 ]
  %i.tf = add nsw i32 %i.td, 1
  store i32 %i.tf, ptr %i.b, align 4, !tbaa !85
  %i.tg = sext i32 %i.td to i64
  %i.th = getelementptr inbounds i8, ptr %i.te, i64 %i.tg
  store i8 %i.sq, ptr %i.th, align 1, !tbaa !78
  br label %bb.gi

bb.at:                                            ; preds = %bb.a
  %i.ti = icmp sgt i64 %i.d, -1
  br i1 %i.ti, label %bb.au, label %bb.dy

bb.au:                                            ; preds = %bb.at
  %i.tj = load i32, ptr %i.b, align 4, !tbaa !85  ; 7 uses
  %i.tk = load i32, ptr %0, align 8, !tbaa !84
  %i.tl = icmp eq i32 %i.tj, %i.tk
  br i1 %i.tl, label %bb.av, label %Vec_StrPush.exit161

bb.av:                                            ; preds = %bb.au
  %i.tm = icmp slt i32 %i.tj, 16
  br i1 %i.tm, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %i.tn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !76 ; 2 uses
  %.not9.i.i159 = icmp eq ptr %i.to, null
  br i1 %.not9.i.i159, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.tp = tail call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.to, i64 noundef 16) #30
  br label %Vec_StrGrow.exit.i160

bb.ay:                                            ; preds = %bb.aw
  %i.tq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31
  br label %Vec_StrGrow.exit.i160

Vec_StrGrow.exit.i160:                            ; preds = %bb.ay, %bb.ax
  %i.tr = phi ptr [ %i.tp, %bb.ax ], [ %i.tq, %bb.ay ]
  store ptr %i.tr, ptr %i.tn, align 8, !tbaa !76
  br label %Vec_StrGrow.exit11.sink.split.i157

bb.az:                                            ; preds = %bb.av
  %i.ts = icmp samesign ult i32 %i.tj, 1073741823
  %i.tt = shl nuw nsw i32 %i.tj, 1
  %spec.select.i154 = select i1 %i.ts, i32 %i.tt, i32 2147483647 ; 3 uses
  %.not.i9.i155 = icmp samesign ult i32 %i.tj, %spec.select.i154
  br i1 %.not.i9.i155, label %bb.ba, label %Vec_StrPush.exit161

bb.ba:                                            ; preds = %bb.az
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.tv = load ptr, ptr %i.tu, align 8, !tbaa !76 ; 2 uses
  %.not9.i10.i156 = icmp eq ptr %i.tv, null
  %i.tw = zext nneg i32 %spec.select.i154 to i64  ; 2 uses
  br i1 %.not9.i10.i156, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.tx = tail call ptr @realloc(ptr noundef nonnull %i.tv, i64 noundef %i.tw) #30
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.ty = tail call noalias ptr @malloc(i64 noundef %i.tw) #31
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.tz = phi ptr [ %i.tx, %bb.bb ], [ %i.ty, %bb.bc ]
  store ptr %i.tz, ptr %i.tu, align 8, !tbaa !76
  br label %Vec_StrGrow.exit11.sink.split.i157

Vec_StrGrow.exit11.sink.split.i157:               ; preds = %bb.bd, %Vec_StrGrow.exit.i160
  %spec.select.sink.i158 = phi i32 [ %spec.select.i154, %bb.bd ], [ 16, %Vec_StrGrow.exit.i160 ]
  store i32 %spec.select.sink.i158, ptr %0, align 8, !tbaa !84
  %.pre381 = load i32, ptr %i.b, align 4, !tbaa !85
  br label %Vec_StrPush.exit161

Vec_StrPush.exit161:                              ; preds = %bb.au, %bb.az, %Vec_StrGrow.exit11.sink.split.i157
  %i.ua = phi i32 [ %i.tj, %bb.au ], [ %i.tj, %bb.az ], [ %.pre381, %Vec_StrGrow.exit11.sink.split.i157 ] ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 33 uses
end_hunk_0
begin_hunk_1_@Abc_TtDeriveBiDecOne:bb.a
scalar.ph130:                                     ; preds = %scalar.ph130.preheader, %scalar.ph130
  %indvars.iv.i.us.us.us.us.i = phi i64 [ %indvars.iv.next.i.us.us.us.us.i.1, %scalar.ph130 ], [ 0, %scalar.ph130.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph130 ], [ 0, %scalar.ph130.preheader ]
  %gep.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i ; 2 uses
  %i.fz = load i64, ptr %gep.i.us.us.us.us.i, align 8, !tbaa !179
  %gep81.i.us.us.us.us.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i ; 2 uses
  %i.ga = load i64, ptr %gep81.i.us.us.us.us.i, align 8, !tbaa !179
  store i64 %i.ga, ptr %gep.i.us.us.us.us.i, align 8, !tbaa !179
  store i64 %i.fz, ptr %gep81.i.us.us.us.us.i, align 8, !tbaa !179
  %indvars.iv.next.i.us.us.us.us.i = or disjoint i64 %indvars.iv.i.us.us.us.us.i, 1 ; 2 uses
  %gep.i.us.us.us.us.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.next.i.us.us.us.us.i ; 2 uses
  %i.gb = load i64, ptr %gep.i.us.us.us.us.i.1, align 8, !tbaa !179
  %gep81.i.us.us.us.us.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.next.i.us.us.us.us.i ; 2 uses
  %i.gc = load i64, ptr %gep81.i.us.us.us.us.i.1, align 8, !tbaa !179
  store i64 %i.gc, ptr %gep.i.us.us.us.us.i.1, align 8, !tbaa !179
  store i64 %i.gb, ptr %gep81.i.us.us.us.us.i.1, align 8, !tbaa !179
  %indvars.iv.next.i.us.us.us.us.i.1 = add nuw nsw i64 %indvars.iv.i.us.us.us.us.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa, label %scalar.ph130, !llvm.loop !503

._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa: ; preds = %scalar.ph130
  br i1 %lcmp.mod.not, label %._crit_edge.us.i.us.us.us.us.i, label %scalar.ph130.epil.preheader

scalar.ph130.epil.preheader:                      ; preds = %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa, %scalar.ph130.preheader
  %indvars.iv.i.us.us.us.us.i.epil.init = phi i64 [ 0, %scalar.ph130.preheader ], [ %indvars.iv.next.i.us.us.us.us.i.1, %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod150)
  %gep.i.us.us.us.us.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i.epil.init ; 2 uses
  %i.gd = load i64, ptr %gep.i.us.us.us.us.i.epil, align 8, !tbaa !179
  %gep81.i.us.us.us.us.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep80.i.us.us.us.us.i, i64 %indvars.iv.i.us.us.us.us.i.epil.init ; 2 uses
  %i.ge = load i64, ptr %gep81.i.us.us.us.us.i.epil, align 8, !tbaa !179
  store i64 %i.ge, ptr %gep.i.us.us.us.us.i.epil, align 8, !tbaa !179
  store i64 %i.gd, ptr %gep81.i.us.us.us.us.i.epil, align 8, !tbaa !179
  br label %._crit_edge.us.i.us.us.us.us.i

._crit_edge.us.i.us.us.us.us.i:                   ; preds = %vector.body134, %scalar.ph130.epil.preheader, %._crit_edge.us.i.us.us.us.us.i.loopexit.unr-lcssa
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.061.us.i.us.us.us.us.i, i64 %i.ey ; 2 uses
  %i.gg = icmp ult ptr %i.gf, %i.ej
  br i1 %i.gg, label %.preheader.us.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, !llvm.loop !504

.lr.ph.i.us.us.us.us.i:                           ; preds = %bb.h, %.lr.ph.i.us.us.us.us.i
  %.05462.i.us.us.us.us.i = phi ptr [ %i.gk, %.lr.ph.i.us.us.us.us.i ], [ %i.c, %bb.h ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i, i64 4 ; 2 uses
  %i.gi = load <2 x i32>, ptr %i.gh, align 4, !tbaa !8
  %i.gj = shufflevector <2 x i32> %i.gi, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.gj, ptr %i.gh, align 4, !tbaa !8
  %i.gk = getelementptr inbounds nuw i8, ptr %.05462.i.us.us.us.us.i, i64 16 ; 2 uses
  %i.gl = icmp ult ptr %i.gk, %i.ej
  br i1 %i.gl, label %.lr.ph.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, !llvm.loop !505

.lr.ph64.i.us.us.us.us.i:                         ; preds = %.lr.ph.us.us.i
  %i.gm = trunc nsw i64 %indvars.iv.next104.i to i32
  %i.gn = shl nuw nsw i32 1, %i.gm
  %i.go = getelementptr inbounds [24 x i8], ptr @s_PMasks, i64 %indvars.iv.next104.i ; 3 uses
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !179 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !179 ; 2 uses
  %i.gs = zext nneg i32 %i.gn to i64              ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !179 ; 2 uses
  br i1 %min.iters.check105, label %scalar.ph104.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %.lr.ph64.i.us.us.us.us.i
  %broadcast.splatinsert108 = insertelement <2 x i64> poison, i64 %i.gp, i64 0
  %broadcast.splat109 = shufflevector <2 x i64> %broadcast.splatinsert108, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert110 = insertelement <2 x i64> poison, i64 %i.gr, i64 0
  %broadcast.splat111 = shufflevector <2 x i64> %broadcast.splatinsert110, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert112 = insertelement <2 x i64> poison, i64 %i.gs, i64 0
  %broadcast.splat113 = shufflevector <2 x i64> %broadcast.splatinsert112, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert114 = insertelement <2 x i64> poison, i64 %i.gu, i64 0
  %broadcast.splat115 = shufflevector <2 x i64> %broadcast.splatinsert114, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph106
  %index117 = phi i64 [ 0, %vector.ph106 ], [ %index.next120, %vector.body116 ] ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index117 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16 ; 2 uses
  %wide.load118 = load <2 x i64>, ptr %i.gv, align 16, !tbaa !179 ; 3 uses
  %wide.load119 = load <2 x i64>, ptr %i.gw, align 16, !tbaa !179 ; 3 uses
  %i.gx = and <2 x i64> %wide.load118, %broadcast.splat109
  %i.gy = and <2 x i64> %wide.load119, %broadcast.splat109
  %i.gz = and <2 x i64> %wide.load118, %broadcast.splat111
  %i.ha = and <2 x i64> %wide.load119, %broadcast.splat111
  %i.hb = shl <2 x i64> %i.gz, %broadcast.splat113
  %i.hc = shl <2 x i64> %i.ha, %broadcast.splat113
  %i.hd = or <2 x i64> %i.hb, %i.gx
  %i.he = or <2 x i64> %i.hc, %i.gy
  %i.hf = and <2 x i64> %wide.load118, %broadcast.splat115
  %i.hg = and <2 x i64> %wide.load119, %broadcast.splat115
  %i.hh = lshr <2 x i64> %i.hf, %broadcast.splat113
  %i.hi = lshr <2 x i64> %i.hg, %broadcast.splat113
  %i.hj = or <2 x i64> %i.hd, %i.hh
  %i.hk = or <2 x i64> %i.he, %i.hi
  store <2 x i64> %i.hj, ptr %i.gv, align 16, !tbaa !179
  store <2 x i64> %i.hk, ptr %i.gw, align 16, !tbaa !179
  %index.next120 = add nuw i64 %index117, 4       ; 2 uses
  %i.hl = icmp eq i64 %index.next120, %n.vec107
  br i1 %i.hl, label %middle.block121, label %vector.body116, !llvm.loop !506

middle.block121:                                  ; preds = %vector.body116
  br i1 %cmp.n122, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, label %scalar.ph104.preheader

scalar.ph104.preheader:                           ; preds = %.lr.ph64.i.us.us.us.us.i, %middle.block121
  %indvars.iv70.i.us.us.us.us.i.ph = phi i64 [ 0, %.lr.ph64.i.us.us.us.us.i ], [ %n.vec107, %middle.block121 ]
  br label %scalar.ph104

scalar.ph104:                                     ; preds = %scalar.ph104.preheader, %scalar.ph104
  %indvars.iv70.i.us.us.us.us.i = phi i64 [ %indvars.iv.next71.i.us.us.us.us.i, %scalar.ph104 ], [ %indvars.iv70.i.us.us.us.us.i.ph, %scalar.ph104.preheader ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv70.i.us.us.us.us.i ; 2 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !179 ; 3 uses
  %i.ho = and i64 %i.hn, %i.gp
  %i.hp = and i64 %i.hn, %i.gr
  %i.hq = shl i64 %i.hp, %i.gs
  %i.hr = or i64 %i.hq, %i.ho
  %i.hs = and i64 %i.hn, %i.gu
  %i.ht = lshr i64 %i.hs, %i.gs
  %i.hu = or i64 %i.hr, %i.ht
  store i64 %i.hu, ptr %i.hm, align 8, !tbaa !179
  %indvars.iv.next71.i.us.us.us.us.i = add nuw nsw i64 %indvars.iv70.i.us.us.us.us.i, 1 ; 2 uses
  %exitcond74.not.i.us.us.us.us.i = icmp eq i64 %indvars.iv.next71.i.us.us.us.us.i, %wide.trip.count73.i.i
  br i1 %exitcond74.not.i.us.us.us.us.i, label %Abc_TtSwapAdjacent.exit.us.us.us.us.i, label %scalar.ph104, !llvm.loop !507

Abc_TtSwapAdjacent.exit.us.us.us.us.i:            ; preds = %._crit_edge.us.i.us.us.us.us.i, %.lr.ph.i.us.us.us.us.i, %scalar.ph104, %middle.block121, %.preheader.lr.ph.i.us.us.us.us.i
  %.not15.not.us.us.us.us.i = icmp sgt i64 %indvars.iv.next104.i, %i.eo
  br i1 %.not15.not.us.us.us.us.i, label %.lr.ph.us.us.i, label %._crit_edge.split.us.us.split.us.us.i, !llvm.loop !508

Abc_TtShrink.exit:                                ; preds = %bb.g, %Abc_TtCopy.exit, %.lr.ph61.i
  %i.hv = call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 range(i32 0, 65536) %2) ; 5 uses
  %i.hw = load i64, ptr %i.c, align 16, !tbaa !179 ; 7 uses
  %i.hx = icmp eq i32 %2, 0
  %i.hy = trunc i64 %i.hw to i1
  %i.hz = select i1 %i.hy, i64 3, i64 0
  %i.ia = icmp samesign ult i32 %i.hv, 2
  %i.ib = and i64 %i.hw, 3
  %i.ic = select i1 %i.hx, i64 %i.hz, i64 %i.ib
  %i.id = mul nuw nsw i64 %i.ic, 5
  %.126.i = select i1 %i.ia, i64 %i.id, i64 %i.hw
  %i.ie = icmp samesign ult i32 %i.hv, 3
  %i.if = and i64 %.126.i, 15
  %i.ig = mul nuw nsw i64 %i.if, 17
  %.227.i = select i1 %i.ie, i64 %i.ig, i64 %i.hw
  %i.ih = icmp samesign ult i32 %i.hv, 4
  %i.ii = and i64 %.227.i, 255
  %i.ij = mul nuw nsw i64 %i.ii, 257
  %.328.i = select i1 %i.ih, i64 %i.ij, i64 %i.hw
  %i.ik = icmp samesign ult i32 %i.hv, 5
  %i.il = and i64 %.328.i, 65535
  %i.im = mul nuw nsw i64 %i.il, 65537
  %.429.i = select i1 %i.ik, i64 %i.im, i64 %i.hw
  %i.in = icmp samesign ult i32 %i.hv, 6
  %i.io = and i64 %.429.i, 4294967295
  %i.ip = mul nuw i64 %i.io, 4294967297
  %.5.i = select i1 %i.in, i64 %i.ip, i64 %i.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  ret i64 %.5.i
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #24

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind allocsize(0,1) }
attributes #29 = { nounwind }
attributes #30 = { nounwind allocsize(1) }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !6, i64 0}
!11 = !{!12, !5, i64 52}
!12 = !{!"If_Par_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !10, i64 24, !10, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !5, i64 76, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !5, i64 204, !13, i64 208, !5, i64 216, !10, i64 220, !5, i64 224, !5, i64 228, !5, i64 232, !5, i64 236, !5, i64 240, !5, i64 244, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !10, i64 280, !10, i64 284, !10, i64 288, !15, i64 296, !16, i64 304, !17, i64 312, !17, i64 320, !14, i64 328, !14, i64 336, !14, i64 344, !14, i64 352, !14, i64 360, !14, i64 368}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 _ZTS12If_LibLut_t_", !14, i64 0}
!16 = !{!"p1 _ZTS13If_LibCell_t_", !14, i64 0}
!17 = !{!"p1 float", !14, i64 0}
!18 = !{!12, !5, i64 60}
!19 = !{!12, !5, i64 64}
!20 = !{!12, !5, i64 76}
!21 = !{!12, !5, i64 84}
!22 = !{!12, !13, i64 208}
!23 = !{!12, !5, i64 256}
!24 = !{!12, !5, i64 272}
!25 = !{!12, !5, i64 276}
!26 = !{!27, !5, i64 24}
!27 = !{!"Gia_Man_t_", !13, i64 0, !13, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !28, i64 32, !29, i64 40, !5, i64 48, !5, i64 52, !5, i64 56, !30, i64 64, !30, i64 72, !31, i64 80, !31, i64 96, !5, i64 112, !5, i64 116, !5, i64 120, !31, i64 128, !29, i64 144, !29, i64 152, !30, i64 160, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !29, i64 184, !32, i64 192, !29, i64 200, !29, i64 208, !29, i64 216, !5, i64 224, !5, i64 228, !29, i64 232, !5, i64 240, !30, i64 248, !30, i64 256, !30, i64 264, !33, i64 272, !33, i64 280, !30, i64 288, !14, i64 296, !30, i64 304, !30, i64 312, !34, i64 320, !13, i64 328, !30, i64 336, !30, i64 344, !30, i64 352, !30, i64 360, !30, i64 368, !35, i64 376, !35, i64 384, !36, i64 392, !31, i64 400, !31, i64 416, !30, i64 432, !30, i64 440, !30, i64 448, !30, i64 456, !30, i64 464, !30, i64 472, !30, i64 480, !30, i64 488, !30, i64 496, !30, i64 504, !30, i64 512, !13, i64 520, !37, i64 528, !38, i64 536, !39, i64 544, !39, i64 552, !30, i64 560, !30, i64 568, !30, i64 576, !30, i64 584, !30, i64 592, !5, i64 600, !10, i64 604, !10, i64 608, !30, i64 616, !29, i64 624, !5, i64 632, !36, i64 640, !36, i64 648, !36, i64 656, !30, i64 664, !30, i64 672, !30, i64 680, !30, i64 688, !30, i64 696, !30, i64 704, !30, i64 712, !30, i64 720, !30, i64 728, !40, i64 736, !39, i64 744, !14, i64 752, !14, i64 760, !14, i64 768, !41, i64 776, !41, i64 784, !14, i64 792, !29, i64 800, !5, i64 808, !5, i64 812, !5, i64 816, !5, i64 820, !5, i64 824, !5, i64 828, !5, i64 832, !5, i64 836, !5, i64 840, !5, i64 844, !5, i64 848, !5, i64 852, !42, i64 856, !42, i64 864, !42, i64 872, !42, i64 880, !30, i64 888, !30, i64 896, !30, i64 904, !43, i64 912, !5, i64 920, !5, i64 924, !5, i64 928, !30, i64 936, !5, i64 944, !5, i64 948, !30, i64 952, !30, i64 960, !36, i64 968, !42, i64 976, !30, i64 984, !30, i64 992, !5, i64 1000, !5, i64 1004, !42, i64 1008, !31, i64 1016, !31, i64 1032, !31, i64 1048, !44, i64 1064, !34, i64 1072, !34, i64 1080, !5, i64 1088, !5, i64 1092, !5, i64 1096, !5, i64 1100, !34, i64 1104, !30, i64 1112, !30, i64 1120, !30, i64 1128, !36, i64 1136}
!28 = !{!"p1 _ZTS10Gia_Obj_t_", !14, i64 0}
!29 = !{!"p1 int", !14, i64 0}
!30 = !{!"p1 _ZTS10Vec_Int_t_", !14, i64 0}
!31 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !29, i64 8}
!32 = !{!"p1 _ZTS10Gia_Rpr_t_", !14, i64 0}
!33 = !{!"p1 _ZTS10Vec_Wec_t_", !14, i64 0}
!34 = !{!"p1 _ZTS10Vec_Str_t_", !14, i64 0}
!35 = !{!"p1 _ZTS10Abc_Cex_t_", !14, i64 0}
!36 = !{!"p1 _ZTS10Vec_Ptr_t_", !14, i64 0}
!37 = !{!"p1 _ZTS10Gia_Plc_t_", !14, i64 0}
!38 = !{!"p1 _ZTS10Gia_Man_t_", !14, i64 0}
!39 = !{!"p1 _ZTS10Vec_Flt_t_", !14, i64 0}
!40 = !{!"p1 _ZTS10Vec_Vec_t_", !14, i64 0}
!41 = !{!"long", !6, i64 0}
!42 = !{!"p1 _ZTS10Vec_Wrd_t_", !14, i64 0}
!43 = !{!"p1 _ZTS10Vec_Bit_t_", !14, i64 0}
!44 = !{!"p1 _ZTS10Gia_Dat_t_", !14, i64 0}
!45 = !{!27, !30, i64 264}
!46 = !{!31, !29, i64 8}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = distinct !{!49, !48}
!50 = distinct !{!50, !48, !51, !52}
!51 = !{!"llvm.loop.isvectorized", i32 1}
!52 = !{!"llvm.loop.unroll.runtime.disable"}
!53 = distinct !{!53, !48, !52, !51}
!54 = !{!27, !30, i64 72}
!55 = !{!31, !5, i64 4}
!56 = !{!27, !28, i64 32}
!57 = distinct !{!57, !48}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = distinct !{!60, !48}
!61 = distinct !{!61, !48}
!62 = !{!29, !29, i64 0}
!63 = !{!27, !14, i64 752}
!64 = distinct !{!64, !48}
!65 = !{!28, !28, i64 0}
!66 = distinct !{!66, !48}
!67 = distinct !{!67, !48}
!68 = !{!27, !29, i64 144}
!69 = distinct !{!69, !48}
!70 = distinct !{!70, !48}
!71 = distinct !{!71, !48}
!72 = !{!27, !29, i64 152}
!73 = distinct !{!73, !48}
!74 = distinct !{!74, !48}
!75 = distinct !{!75, !48}
!76 = !{!77, !13, i64 8}
!77 = !{!"Vec_Str_t_", !5, i64 0, !5, i64 4, !13, i64 8}
!78 = !{!6, !6, i64 0}
!79 = !{!31, !5, i64 0}
!80 = distinct !{!80, !48}
!81 = distinct !{!81, !48}
!82 = distinct !{!82, !48}
!83 = !{!27, !30, i64 64}
!84 = !{!77, !5, i64 0}
!85 = !{!77, !5, i64 4}
!86 = distinct !{!86, !48}
!87 = !{!27, !5, i64 176}
!88 = !{!27, !29, i64 624}
!89 = distinct !{!89, !48}
!90 = distinct !{!90, !48}
!91 = distinct !{!91, !48}
!92 = distinct !{!92, !48, !51, !52}
!93 = distinct !{!93, !48, !52, !51}
!94 = distinct !{!94, !48}
!95 = distinct !{!95, !48}
!96 = distinct !{!96, !59}
!97 = distinct !{!97, !48}
!98 = distinct !{!98, !48}
!99 = distinct !{!99, !59}
!100 = distinct !{!100, !59}
!101 = distinct !{!101, !48}
!102 = distinct !{!102, !48}
!103 = distinct !{!103, !48}
!104 = distinct !{!104, !48, !51, !52}
!105 = distinct !{!105, !48, !52, !51}
!106 = distinct !{!106, !48}
!107 = distinct !{!107, !48}
!108 = distinct !{!108, !48}
!109 = !{!27, !13, i64 0}
!110 = !{!27, !5, i64 16}
!111 = !{!112, !112, i64 0}
!112 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!113 = !{!114}
!114 = distinct !{!114, !115, !"vprintf: argument 0"}
!115 = distinct !{!115, !"vprintf"}
!116 = distinct !{null}
!117 = !{!27, !30, i64 304}
!118 = distinct !{!118, !48}
!119 = distinct !{!119, !48}
!120 = distinct !{!120, !48, !51, !52}
!121 = distinct !{!121, !48, !52, !51}
!122 = distinct !{!122, !48}
!123 = distinct !{!123, !48}
!124 = !{!27, !30, i64 160}
!125 = distinct !{!125, !48}
!126 = !{!27, !29, i64 208}
!127 = distinct !{!127, !48}
!128 = distinct !{!128, !48}
!129 = !{!130, !131, i64 24}
!130 = !{!"If_Obj_t_", !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 0, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 1, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !131, i64 24, !131, i64 32, !131, i64 40, !10, i64 48, !10, i64 52, !10, i64 56, !6, i64 64, !132, i64 72, !133, i64 80}
!131 = !{!"p1 _ZTS9If_Obj_t_", !14, i64 0}
!132 = !{!"p1 _ZTS9If_Set_t_", !14, i64 0}
!133 = !{!"If_Cut_t_", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !41, i64 16, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 37, !5, i64 37, !5, i64 37, !5, i64 37, !5, i64 38, !5, i64 39, !5, i64 40, !6, i64 44}
!134 = !{!130, !131, i64 32}
!135 = !{!130, !131, i64 40}
!136 = !{!137, !36, i64 40}
!137 = !{!"If_Man_t_", !13, i64 0, !138, i64 8, !131, i64 16, !36, i64 24, !36, i64 32, !36, i64 40, !36, i64 48, !36, i64 56, !6, i64 64, !5, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !5, i64 104, !10, i64 108, !5, i64 112, !5, i64 116, !6, i64 120, !139, i64 152, !5, i64 160, !5, i64 164, !5, i64 168, !30, i64 176, !6, i64 184, !5, i64 568, !5, i64 572, !5, i64 576, !30, i64 584, !30, i64 592, !42, i64 600, !42, i64 608, !42, i64 616, !36, i64 624, !30, i64 632, !5, i64 640, !5, i64 644, !5, i64 648, !6, i64 652, !5, i64 716, !5, i64 720, !5, i64 724, !5, i64 728, !140, i64 736, !140, i64 744, !132, i64 752, !132, i64 760, !132, i64 768, !5, i64 776, !5, i64 780, !6, i64 784, !6, i64 912, !5, i64 1040, !5, i64 1044, !5, i64 1048, !5, i64 1052, !141, i64 1056, !6, i64 1064, !6, i64 1192, !6, i64 1320, !6, i64 1448, !6, i64 1576, !6, i64 1704, !6, i64 1832, !142, i64 1960, !30, i64 1968, !34, i64 1976, !143, i64 1984, !6, i64 1992, !5, i64 2024, !5, i64 2028, !5, i64 2032, !6, i64 2040, !6, i64 2088, !6, i64 2096, !30, i64 2104, !6, i64 2112, !36, i64 2176, !14, i64 2184, !30, i64 2192, !6, i64 2200, !34, i64 2264, !30, i64 2272, !30, i64 2280, !30, i64 2288, !131, i64 2296, !144, i64 2304, !5, i64 2312, !6, i64 2316, !6, i64 2444, !10, i64 2572, !5, i64 2576, !145, i64 2584, !30, i64 2592, !6, i64 2600, !6, i64 2608, !6, i64 2616, !140, i64 2632}
!138 = !{!"p1 _ZTS9If_Par_t_", !14, i64 0}
!139 = !{!"p1 long", !14, i64 0}
!140 = !{!"p1 _ZTS12Mem_Fixed_t_", !14, i64 0}
!141 = !{!"p1 _ZTS12If_DsdMan_t_", !14, i64 0}
!142 = !{!"p1 _ZTS14Hash_IntMan_t_", !14, i64 0}
!143 = !{!"p1 _ZTS10Vec_Mem_t_", !14, i64 0}
!144 = !{!"p1 _ZTS9If_Cut_t_", !14, i64 0}
!145 = !{!"p1 _ZTS10Tim_Man_t_", !14, i64 0}
!146 = !{!147, !5, i64 4}
!147 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !148, i64 8}
!148 = !{!"any p2 pointer", !14, i64 0}
!149 = !{!137, !36, i64 32}
!150 = !{!147, !148, i64 8}
!151 = !{!14, !14, i64 0}
!152 = distinct !{!152, !48}
!153 = distinct !{!153, !48}
!154 = distinct !{!154, !48}
!155 = distinct !{!155, !48}
end_hunk_1
