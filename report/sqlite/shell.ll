Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@base85:bb.a
  %i.cc = add nuw nsw i32 %.058.lcssa.i, 1        ; 2 uses
  %i.cd = load i8, ptr %.053.lcssa.i, align 1, !tbaa !52
  %i.ce = zext i8 %i.cd to i64                    ; 3 uses
  %.not.i = icmp eq i32 %.058.lcssa.i, 1
  br i1 %.not.i, label %.lr.ph21.preheader.i, label %.lr.ph15.i.preheader

.lr.ph15.i.preheader:                             ; preds = %bb.u
  %i.cf = add nsw i32 %.058.lcssa.i, -1           ; 2 uses
  %i.cg = add nsw i32 %.058.lcssa.i, -2
  %xtraiter = and i32 %i.cf, 3                    ; 3 uses
  %i.ch = icmp ult i32 %i.cg, 3
  br i1 %i.ch, label %.lr.ph15.i.epil.preheader, label %.lr.ph15.i.preheader.new

.lr.ph15.i.preheader.new:                         ; preds = %.lr.ph15.i.preheader
  %unroll_iter = and i32 %i.cf, -4
  br label %.lr.ph15.i

.lr.ph15.i:                                       ; preds = %.lr.ph15.i, %.lr.ph15.i.preheader.new
  %.04712.i = phi i64 [ %i.ce, %.lr.ph15.i.preheader.new ], [ %i.cx, %.lr.ph15.i ]
  %.053.pn11.i = phi ptr [ %.053.lcssa.i, %.lr.ph15.i.preheader.new ], [ %.154.i.3, %.lr.ph15.i ] ; 4 uses
  %niter = phi i32 [ 0, %.lr.ph15.i.preheader.new ], [ %niter.next.3, %.lr.ph15.i ]
  %.154.i = getelementptr inbounds nuw i8, ptr %.053.pn11.i, i64 1
  %i.ci = load i8, ptr %.154.i, align 1, !tbaa !52
  %i.cj = zext i8 %i.ci to i64
  %.154.i.1 = getelementptr inbounds nuw i8, ptr %.053.pn11.i, i64 2
  %i.ck = shl i64 %.04712.i, 16
  %i.cl = shl nuw nsw i64 %i.cj, 8
  %i.cm = or disjoint i64 %i.ck, %i.cl
  %i.cn = load i8, ptr %.154.i.1, align 1, !tbaa !52
  %i.co = zext i8 %i.cn to i64
  %i.cp = or disjoint i64 %i.cm, %i.co
  %.154.i.2 = getelementptr inbounds nuw i8, ptr %.053.pn11.i, i64 3
  %i.cq = load i8, ptr %.154.i.2, align 1, !tbaa !52
  %i.cr = zext i8 %i.cq to i64
  %.154.i.3 = getelementptr inbounds nuw i8, ptr %.053.pn11.i, i64 4 ; 3 uses
  %i.cs = shl i64 %i.cp, 16
  %i.ct = shl nuw nsw i64 %i.cr, 8
  %i.cu = or disjoint i64 %i.cs, %i.ct
  %i.cv = load i8, ptr %.154.i.3, align 1, !tbaa !52
  %i.cw = zext i8 %i.cv to i64
  %i.cx = or disjoint i64 %i.cu, %i.cw            ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph21.preheader.i.loopexit.unr-lcssa, label %.lr.ph15.i, !llvm.loop !765

.lr.ph21.preheader.i.loopexit.unr-lcssa:          ; preds = %.lr.ph15.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph21.preheader.i, label %.lr.ph15.i.epil.preheader

.lr.ph15.i.epil.preheader:                        ; preds = %.lr.ph21.preheader.i.loopexit.unr-lcssa, %.lr.ph15.i.preheader
  %.04712.i.epil.init = phi i64 [ %i.ce, %.lr.ph15.i.preheader ], [ %i.cx, %.lr.ph21.preheader.i.loopexit.unr-lcssa ]
  %.053.pn11.i.epil.init = phi ptr [ %.053.lcssa.i, %.lr.ph15.i.preheader ], [ %.154.i.3, %.lr.ph21.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod95 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph15.i.epil

.lr.ph15.i.epil:                                  ; preds = %.lr.ph15.i.epil, %.lr.ph15.i.epil.preheader
  %.04712.i.epil = phi i64 [ %i.db, %.lr.ph15.i.epil ], [ %.04712.i.epil.init, %.lr.ph15.i.epil.preheader ]
  %.053.pn11.i.epil = phi ptr [ %.154.i.epil, %.lr.ph15.i.epil ], [ %.053.pn11.i.epil.init, %.lr.ph15.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.i.epil ], [ 0, %.lr.ph15.i.epil.preheader ]
  %.154.i.epil = getelementptr inbounds nuw i8, ptr %.053.pn11.i.epil, i64 1 ; 2 uses
  %i.cy = shl i64 %.04712.i.epil, 8
  %i.cz = load i8, ptr %.154.i.epil, align 1, !tbaa !52
  %i.da = zext i8 %i.cz to i64
  %i.db = or disjoint i64 %i.cy, %i.da            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph21.preheader.i, label %.lr.ph15.i.epil, !llvm.loop !766

.lr.ph21.preheader.i:                             ; preds = %.lr.ph21.preheader.i.loopexit.unr-lcssa, %.lr.ph15.i.epil, %bb.u
  %.047.lcssa.i = phi i64 [ %i.ce, %bb.u ], [ %i.cx, %.lr.ph21.preheader.i.loopexit.unr-lcssa ], [ %i.db, %.lr.ph15.i.epil ]
  %i.dc = zext nneg i32 %i.cc to i64              ; 2 uses
  br label %.lr.ph21.i

.lr.ph21.i:                                       ; preds = %.lr.ph21.i, %.lr.ph21.preheader.i
  %indvars.iv.i = phi i64 [ %i.dc, %.lr.ph21.preheader.i ], [ %indvars.iv.next.i, %.lr.ph21.i ] ; 2 uses
  %.119.i = phi i64 [ %.047.lcssa.i, %.lr.ph21.preheader.i ], [ %i.de, %.lr.ph21.i ] ; 2 uses
  %i.dd = urem i64 %.119.i, 85                    ; 2 uses
  %i.de = udiv i64 %.119.i, 85
  %i.df = icmp samesign ult i64 %i.dd, 4
  %i.dg = trunc nuw nsw i64 %i.dd to i8
  %.v.i = select i1 %i.df, i8 35, i8 38
  %i.dh = add nuw nsw i8 %.v.i, %i.dg
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.di = and i64 %indvars.iv.next.i, 4294967295
  %i.dj = getelementptr inbounds nuw i8, ptr %.055.lcssa.i, i64 %i.di
  store i8 %i.dh, ptr %i.dj, align 1, !tbaa !52
  %i.dk = trunc nuw i64 %indvars.iv.i to i32
  %i.dl = icmp sgt i32 %i.dk, 1
  br i1 %i.dl, label %.lr.ph21.i, label %._crit_edge22.i, !llvm.loop !767

._crit_edge22.i:                                  ; preds = %.lr.ph21.i
  %i.dm = add nsw i32 %.051.lcssa.i, %i.cc
  %i.dn = getelementptr inbounds nuw i8, ptr %.055.lcssa.i, i64 %i.dc
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge22.i, %._crit_edge.i
  %.257.i = phi ptr [ %i.dn, %._crit_edge22.i ], [ %.055.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.2.i = phi i32 [ %i.dm, %._crit_edge22.i ], [ %.051.lcssa.i, %._crit_edge.i ]
  %i.do = icmp sgt i32 %.2.i, 0
  br i1 %i.do, label %.lr.ph.i66.preheader.i, label %toBase85.exit

.lr.ph.i66.preheader.i:                           ; preds = %bb.v
  %i.dp = getelementptr inbounds nuw i8, ptr %.257.i, i64 1
  store i8 10, ptr %.257.i, align 1, !tbaa !52
  br label %toBase85.exit

toBase85.exit:                                    ; preds = %bb.v, %.lr.ph.i66.preheader.i
  %.3.i = phi ptr [ %.257.i, %bb.v ], [ %i.dp, %.lr.ph.i66.preheader.i ] ; 2 uses
  store i8 0, ptr %.3.i, align 1, !tbaa !52
  %i.dq = ptrtoint ptr %.3.i to i64
  %i.dr = ptrtoint ptr %i.t to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = trunc i64 %i.ds to i32
  tail call void @sqlite3_result_text(ptr noundef %0, ptr noundef nonnull %i.t, i32 noundef %i.dt, ptr noundef nonnull @sqlite3_free) #45
  br label %bb.as

bb.w:                                             ; preds = %bb.a
  %i.du = sdiv i32 %i.b, 5
  %.sext61 = sext i32 %i.du to i64
  %i.dv = shl nsw i64 %.sext61, 2
  %i.dw = srem i32 %i.b, 5
  %.sext63 = sext i32 %i.dw to i64
  %i.dx = add nsw i64 %i.dv, %.sext63             ; 2 uses
  %i.dy = sext i32 %i.d to i64
  %i.dz = icmp sgt i64 %i.dx, %i.dy
  br i1 %i.dz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @sqlite3_result_error(ptr noundef %0, ptr noundef nonnull @.str.312, i32 noundef -1) #45
  br label %bb.as

bb.y:                                             ; preds = %bb.w
  %i.ea = load ptr, ptr %2, align 8, !tbaa !126
  %i.eb = tail call ptr @sqlite3_value_text(ptr noundef %i.ea) #45 ; 3 uses
  %.not = icmp eq ptr %i.eb, null
  br i1 %.not, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ec = tail call ptr @sqlite3_context_db_handle(ptr noundef %0) #45
  %i.ed = tail call i32 @sqlite3_errcode(ptr noundef %i.ec) #45
  %i.ee = icmp eq i32 %i.ed, 7
  br i1 %i.ee, label %bb.ar, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @sqlite3_result_zeroblob(ptr noundef %0, i32 noundef 0) #45
  br label %bb.as

bb.ab:                                            ; preds = %bb.y
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.dx, i64 1)
  %i.ef = tail call ptr @sqlite3_malloc64(i64 noundef %spec.store.select) #45 ; 6 uses
  %.not49 = icmp eq ptr %i.ef, null
  br i1 %.not49, label %bb.ar, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eg = icmp sgt i32 %i.b, 0
  br i1 %i.eg, label %bb.ad, label %fromBase85.exit

bb.ad:                                            ; preds = %bb.ac
  %i.eh = zext nneg i32 %i.b to i64
  %i.ei = getelementptr i8, ptr %i.eb, i64 %i.eh
  %i.ej = getelementptr i8, ptr %i.ei, i64 -1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !52
  %i.el = icmp eq i8 %i.ek, 10
  %i.em = sext i1 %i.el to i32
  %spec.select.i = add nsw i32 %i.b, %i.em        ; 2 uses
  %.not.i52 = icmp eq i32 %spec.select.i, 0
  br i1 %.not.i52, label %fromBase85.exit, label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %bb.ad, %bb.ap
  %.04583.i = phi ptr [ %.5.i, %bb.ap ], [ %i.ef, %bb.ad ] ; 7 uses
  %.14982.i = phi i32 [ %.351.i, %bb.ap ], [ %spec.select.i, %bb.ad ] ; 3 uses
  %.05381.i = phi ptr [ %.255.i, %bb.ap ], [ %i.eb, %bb.ad ] ; 3 uses
  %i.en = zext nneg i32 %.14982.i to i64
  %scevgep.i.i = getelementptr i8, ptr %.05381.i, i64 %i.en
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ag, %.lr.ph84.i
  %.in.i.i = phi i32 [ %.14982.i, %.lr.ph84.i ], [ %i.eo, %bb.ag ] ; 2 uses
  %.079.i.i = phi ptr [ %.05381.i, %.lr.ph84.i ], [ %i.ev, %bb.ag ] ; 4 uses
  %i.eo = add nsw i32 %.in.i.i, -1
  %i.ep = load i8, ptr %.079.i.i, align 1, !tbaa !52 ; 4 uses
  %.not.i.i = icmp eq i8 %i.ep, 0
  br i1 %.not.i.i, label %skipNonB85.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eq = add i8 %i.ep, -35
  %i.er = icmp ult i8 %i.eq, 4
  %i.es = icmp sgt i8 %i.ep, 41
  %.tr.i.i = xor i1 %i.es, %i.er
  %i.et = icmp slt i8 %i.ep, 123
  %i.eu = xor i1 %i.et, %.tr.i.i
  br i1 %i.eu, label %bb.ag, label %skipNonB85.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.ev = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 1
  %i.ew = icmp samesign ugt i32 %.in.i.i, 1
  br i1 %i.ew, label %bb.ae, label %skipNonB85.exit.i, !llvm.loop !768

skipNonB85.exit.i:                                ; preds = %bb.ag, %bb.af, %bb.ae
  %.07.lcssa.i.i = phi ptr [ %.079.i.i, %bb.ae ], [ %scevgep.i.i, %bb.ag ], [ %.079.i.i, %bb.af ] ; 9 uses
  %i.ex = ptrtoint ptr %.07.lcssa.i.i to i64
  %i.ey = ptrtoint ptr %.05381.i to i64
  %.neg.i53 = sub i64 %i.ey, %i.ex
  %i.ez = trunc i64 %.neg.i53 to i32
  %i.fa = add i32 %.14982.i, %i.ez                ; 12 uses
  %i.fb = tail call i32 @llvm.smin.i32(i32 %i.fa, i32 5) ; 8 uses
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds i8, ptr @fromBase85.nboi, i64 %i.fc
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !52
  %i.ff = sext i8 %i.fe to i32
  %i.fg = icmp ult i32 %i.fa, 2
  br i1 %i.fg, label %fromBase85.exit, label %.preheader.i

.preheader.i:                                     ; preds = %skipNonB85.exit.i
  %i.fh = icmp sgt i32 %i.fa, 0
  br i1 %i.fh, label %.lr.ph.i55, label %.thread.i

.lr.ph.i55:                                       ; preds = %.preheader.i
  %scevgep.i = getelementptr i8, ptr %.07.lcssa.i.i, i64 1
  %3 = add nsw i32 %i.fb, -1
  %4 = zext i32 %3 to i64
  %scevgep88.i = getelementptr i8, ptr %scevgep.i, i64 %4 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.07.lcssa.i.i, i64 1 ; 2 uses
  %i.fj = load i8, ptr %.07.lcssa.i.i, align 1, !tbaa !52 ; 5 uses
  %i.fk = icmp sgt i8 %i.fj, 34
  %i.fl = zext i1 %i.fk to i64
  %i.fm = icmp sgt i8 %i.fj, 38
  %i.fn = zext i1 %i.fm to i64
  %i.fo = icmp sgt i8 %i.fj, 41
  %i.fp = zext i1 %i.fo to i64
  %i.fq = icmp sgt i8 %i.fj, 122
  %i.fr = zext i1 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @b85_cOffset, i64 %i.fl
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fn
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fp
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fr
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !52  ; 2 uses
  %i.fx = add nsw i32 %i.fa, -1
  %i.fy = icmp eq i8 %i.fw, 0
  br i1 %i.fy, label %.thread.i, label %.lr.ph.i55.1

.lr.ph.i55.1:                                     ; preds = %.lr.ph.i55
  %i.fz = zext i8 %i.fw to i64
  %i.ga = sext i8 %i.fj to i64
  %i.gb = sub nsw i64 %i.ga, %i.fz                ; 2 uses
  %i.gc = add nsw i32 %i.fb, -1
  %i.gd = getelementptr inbounds nuw i8, ptr %.07.lcssa.i.i, i64 2 ; 2 uses
  %i.ge = load i8, ptr %i.fi, align 1, !tbaa !52  ; 5 uses
  %i.gf = icmp sgt i8 %i.ge, 34
  %i.gg = zext i1 %i.gf to i64
  %i.gh = icmp sgt i8 %i.ge, 38
  %i.gi = zext i1 %i.gh to i64
  %i.gj = icmp sgt i8 %i.ge, 41
  %i.gk = zext i1 %i.gj to i64
  %i.gl = icmp sgt i8 %i.ge, 122
  %i.gm = zext i1 %i.gl to i64
  %i.gn = getelementptr inbounds nuw i8, ptr @b85_cOffset, i64 %i.gg
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.gi
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.gk
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gm
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !52  ; 2 uses
  %i.gs = add nsw i32 %i.fa, -2                   ; 2 uses
  %i.gt = icmp eq i8 %i.gr, 0
  br i1 %i.gt, label %.thread.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i55.1
  %i.gu = zext i8 %i.gr to i64
  %i.gv = sext i8 %i.ge to i64
  %i.gw = mul nsw i64 %i.gb, 85
  %i.gx = add nsw i64 %i.gw, %i.gv
  %i.gy = sub nsw i64 %i.gx, %i.gu                ; 3 uses
  %i.gz = icmp sgt i32 %i.fa, 2
  br i1 %i.gz, label %.lr.ph.i55.2, label %.thread.i

.lr.ph.i55.2:                                     ; preds = %bb.ah
  %i.ha = add nsw i32 %i.fb, -2
  %i.hb = getelementptr inbounds nuw i8, ptr %.07.lcssa.i.i, i64 3 ; 2 uses
  %i.hc = load i8, ptr %i.gd, align 1, !tbaa !52  ; 5 uses
  %i.hd = icmp sgt i8 %i.hc, 34
  %i.he = zext i1 %i.hd to i64
  %i.hf = icmp sgt i8 %i.hc, 38
  %i.hg = zext i1 %i.hf to i64
  %i.hh = icmp sgt i8 %i.hc, 41
  %i.hi = zext i1 %i.hh to i64
  %i.hj = icmp sgt i8 %i.hc, 122
  %i.hk = zext i1 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr @b85_cOffset, i64 %i.he
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 %i.hg
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hi
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hk
  %i.hp = load i8, ptr %i.ho, align 1, !tbaa !52  ; 2 uses
  %i.hq = add nsw i32 %i.fa, -3                   ; 2 uses
  %i.hr = icmp eq i8 %i.hp, 0
  br i1 %i.hr, label %.thread.i, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i55.2
  %i.hs = zext i8 %i.hp to i64
  %i.ht = sext i8 %i.hc to i64
  %i.hu = mul nsw i64 %i.gy, 85
  %i.hv = add nsw i64 %i.hu, %i.ht
  %i.hw = sub i64 %i.hv, %i.hs                    ; 3 uses
  %.not96 = icmp eq i32 %i.fa, 3
  br i1 %.not96, label %.thread.i, label %.lr.ph.i55.3

.lr.ph.i55.3:                                     ; preds = %bb.ai
  %i.hx = add nsw i32 %i.fb, -3
  %i.hy = getelementptr inbounds nuw i8, ptr %.07.lcssa.i.i, i64 4 ; 2 uses
  %i.hz = load i8, ptr %i.hb, align 1, !tbaa !52  ; 5 uses
  %i.ia = icmp sgt i8 %i.hz, 34
  %i.ib = zext i1 %i.ia to i64
  %i.ic = icmp sgt i8 %i.hz, 38
  %i.id = zext i1 %i.ic to i64
  %i.ie = icmp sgt i8 %i.hz, 41
  %i.if = zext i1 %i.ie to i64
  %i.ig = icmp sgt i8 %i.hz, 122
  %i.ih = zext i1 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr @b85_cOffset, i64 %i.ib
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %i.id
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.if
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ih
  %i.im = load i8, ptr %i.il, align 1, !tbaa !52  ; 2 uses
  %i.in = add nsw i32 %i.fa, -4                   ; 2 uses
  %i.io = icmp eq i8 %i.im, 0
  br i1 %i.io, label %.thread.i, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i55.3
  %i.ip = zext i8 %i.im to i64
  %i.iq = sext i8 %i.hz to i64
  %i.ir = mul i64 %i.hw, 85
  %i.is = add i64 %i.ir, %i.iq
  %i.it = sub i64 %i.is, %i.ip                    ; 3 uses
  %i.iu = icmp sgt i32 %i.fa, 4
  br i1 %i.iu, label %.lr.ph.i55.4, label %.thread.i

.lr.ph.i55.4:                                     ; preds = %bb.aj
  %i.iv = add nsw i32 %i.fb, -4
  %i.iw = getelementptr inbounds nuw i8, ptr %.07.lcssa.i.i, i64 5
  %i.ix = load i8, ptr %i.hy, align 1, !tbaa !52  ; 5 uses
  %i.iy = icmp sgt i8 %i.ix, 34
  %i.iz = zext i1 %i.iy to i64
  %i.ja = icmp sgt i8 %i.ix, 38
  %i.jb = zext i1 %i.ja to i64
  %i.jc = icmp sgt i8 %i.ix, 41
  %i.jd = zext i1 %i.jc to i64
  %i.je = icmp sgt i8 %i.ix, 122
  %i.jf = zext i1 %i.je to i64
  %i.jg = getelementptr inbounds nuw i8, ptr @b85_cOffset, i64 %i.iz
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jb
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 %i.jd
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.jf
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !52  ; 2 uses
  %i.jl = add nsw i32 %i.fa, -5                   ; 2 uses
  %i.jm = icmp eq i8 %i.jk, 0
  br i1 %i.jm, label %.thread.i, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i55.4
  %i.jn = zext i8 %i.jk to i64
  %i.jo = sext i8 %i.ix to i64
  %i.jp = mul i64 %i.it, 85
  %i.jq = add i64 %i.jp, %i.jo
  %i.jr = sub i64 %i.jq, %i.jn
  br label %.thread.i

.thread.i:                                        ; preds = %.lr.ph.i55, %.lr.ph.i55.1, %bb.ah, %.lr.ph.i55.2, %bb.ai, %.lr.ph.i55.3, %bb.aj, %.lr.ph.i55.4, %bb.ak, %.preheader.i
  %.042.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %.lr.ph.i55 ], [ %i.jr, %bb.ak ], [ %i.gb, %.lr.ph.i55.1 ], [ %i.gy, %bb.ah ], [ %i.gy, %.lr.ph.i55.2 ], [ %i.hw, %bb.ai ], [ %i.hw, %.lr.ph.i55.3 ], [ %i.it, %bb.aj ], [ %i.it, %.lr.ph.i55.4 ] ; 4 uses
  %.040.lcssa.i = phi i32 [ %i.fb, %.preheader.i ], [ %i.fb, %.lr.ph.i55 ], [ 0, %bb.ak ], [ %i.gc, %.lr.ph.i55.1 ], [ 0, %bb.ah ], [ %i.ha, %.lr.ph.i55.2 ], [ 0, %bb.ai ], [ %i.hx, %.lr.ph.i55.3 ], [ 0, %bb.aj ], [ %i.iv, %.lr.ph.i55.4 ]
  %.255.i = phi ptr [ %.07.lcssa.i.i, %.preheader.i ], [ %i.fi, %.lr.ph.i55 ], [ %scevgep88.i, %bb.ak ], [ %i.gd, %.lr.ph.i55.1 ], [ %scevgep88.i, %bb.ah ], [ %i.hb, %.lr.ph.i55.2 ], [ %scevgep88.i, %bb.ai ], [ %i.hy, %.lr.ph.i55.3 ], [ %scevgep88.i, %bb.aj ], [ %i.iw, %.lr.ph.i55.4 ]
  %.351.i = phi i32 [ %i.fa, %.preheader.i ], [ %i.fx, %.lr.ph.i55 ], [ %i.jl, %bb.ak ], [ %i.gs, %.lr.ph.i55.1 ], [ %i.gs, %bb.ah ], [ %i.hq, %.lr.ph.i55.2 ], [ %i.hq, %bb.ai ], [ %i.in, %.lr.ph.i55.3 ], [ %i.in, %bb.aj ], [ %i.jl, %.lr.ph.i55.4 ] ; 2 uses
  %i.js = sub nsw i32 %i.ff, %.040.lcssa.i
  switch i32 %i.js, label %bb.ap [
    i32 4, label %bb.al
    i32 3, label %bb.am
    i32 2, label %bb.an
    i32 1, label %bb.ao
  ]

bb.al:                                            ; preds = %.thread.i
  %i.jt = lshr i64 %.042.lcssa.i, 24
  %i.ju = trunc i64 %i.jt to i8
  %i.jv = getelementptr inbounds nuw i8, ptr %.04583.i, i64 1
  store i8 %i.ju, ptr %.04583.i, align 1, !tbaa !52
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.thread.i
  %.146.i = phi ptr [ %i.jv, %bb.al ], [ %.04583.i, %.thread.i ] ; 2 uses
  %i.jw = lshr i64 %.042.lcssa.i, 16
  %i.jx = trunc i64 %i.jw to i8
  %i.jy = getelementptr inbounds nuw i8, ptr %.146.i, i64 1
  store i8 %i.jx, ptr %.146.i, align 1, !tbaa !52
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.thread.i
  %.247.i = phi ptr [ %i.jy, %bb.am ], [ %.04583.i, %.thread.i ] ; 2 uses
  %i.jz = lshr i64 %.042.lcssa.i, 8
  %i.ka = trunc i64 %i.jz to i8
  %i.kb = getelementptr inbounds nuw i8, ptr %.247.i, i64 1
  store i8 %i.ka, ptr %.247.i, align 1, !tbaa !52
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.thread.i
  %.3.i54 = phi ptr [ %i.kb, %bb.an ], [ %.04583.i, %.thread.i ] ; 2 uses
  %i.kc = trunc i64 %.042.lcssa.i to i8
  %i.kd = getelementptr inbounds nuw i8, ptr %.3.i54, i64 1
  store i8 %i.kc, ptr %.3.i54, align 1, !tbaa !52
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.thread.i
  %.5.i = phi ptr [ %i.kd, %bb.ao ], [ %.04583.i, %.thread.i ] ; 2 uses
  %i.ke = icmp sgt i32 %.351.i, 0
  br i1 %i.ke, label %.lr.ph84.i, label %fromBase85.exit

fromBase85.exit:                                  ; preds = %skipNonB85.exit.i, %bb.ap, %bb.ac, %bb.ad
  %.045.lcssa.i = phi ptr [ %i.ef, %bb.ad ], [ %i.ef, %bb.ac ], [ %.04583.i, %skipNonB85.exit.i ], [ %.5.i, %bb.ap ]
  %i.kf = ptrtoint ptr %.045.lcssa.i to i64
  %i.kg = ptrtoint ptr %i.ef to i64
  %i.kh = sub i64 %i.kf, %i.kg
  %i.ki = trunc i64 %i.kh to i32
  tail call void @sqlite3_result_blob(ptr noundef %0, ptr noundef nonnull %i.ef, i32 noundef %i.ki, ptr noundef nonnull @sqlite3_free) #45
  br label %bb.as

bb.aq:                                            ; preds = %bb.a
  tail call void @sqlite3_result_error(ptr noundef %0, ptr noundef nonnull @.str.313, i32 noundef -1) #45
  br label %bb.as

bb.ar:                                            ; preds = %bb.ab, %bb.z, %bb.g, %bb.e
  tail call void @sqlite3_result_error(ptr noundef %0, ptr noundef nonnull @.str.314, i32 noundef -1) #45
  br label %bb.as

bb.as:                                            ; preds = %bb.f, %toBase85.exit, %bb.aa, %fromBase85.exit, %bb.ar, %bb.aq, %bb.x, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_ieee_init(ptr noundef %0, ptr nofree noundef readnone captures(none) %1, ptr nofree noundef readnone captures(none) %2) local_unnamed_addr #4 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.a = getelementptr inbounds nuw [24 x i8], ptr @sqlite3_ieee_init.aFunc, i64 %indvars.iv ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !134
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !136
  %i.h = tail call i32 @sqlite3_create_function(ptr noundef %0, ptr noundef %i.b, i32 noundef %i.d, i32 noundef 2097153, ptr noundef nonnull %i.e, ptr noundef %i.g, ptr noundef null, ptr noundef null) #45 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.i = icmp samesign ult i64 %indvars.iv, 8
  %i.j = icmp eq i32 %i.h, 0
  %i.k = select i1 %i.i, i1 %i.j, i1 false
  br i1 %i.k, label %bb.b, label %bb.c, !llvm.loop !12

bb.c:                                             ; preds = %bb.b
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define internal void @ieee754func(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 4 uses
  %i.b = icmp eq i32 %1, 1
  br i1 %i.b, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.c = load ptr, ptr %2, align 8, !tbaa !126
  %i.d = tail call i32 @sqlite3_value_type(ptr noundef %i.c) #45
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !126
  %i.g = tail call i32 @sqlite3_value_bytes(ptr noundef %i.f) #45
  %i.h = icmp eq i32 %i.g, 8
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %2, align 8, !tbaa !126
  %i.j = tail call ptr @sqlite3_value_blob(ptr noundef %i.i) #45 ; 8 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !52
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !52
  %i.o = zext i8 %i.n to i64
  %i.p = shl nuw nsw i64 %i.l, 16
  %i.q = shl nuw nsw i64 %i.o, 8
  %i.r = or disjoint i64 %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.t = load i8, ptr %i.s, align 1, !tbaa !52
  %i.u = zext i8 %i.t to i64
  %i.v = or disjoint i64 %i.r, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !52
  %i.y = zext i8 %i.x to i64
  %i.z = shl nuw nsw i64 %i.v, 16
  %i.aa = shl nuw nsw i64 %i.y, 8
  %i.ab = or disjoint i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !52
  %i.ae = zext i8 %i.ad to i64
  %i.af = or disjoint i64 %i.ab, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !52
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.af, 16
  %i.ak = shl nuw nsw i64 %i.ai, 8
  %i.al = or disjoint i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.an = load i8, ptr %i.am, align 1, !tbaa !52
  %i.ao = zext i8 %i.an to i64
  %i.ap = or disjoint i64 %i.al, %i.ao
  %i.aq = shl nuw i64 %i.ap, 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !52
  %i.at = zext i8 %i.as to i64
  %i.au = or disjoint i64 %i.aq, %i.at
  %i.av = bitcast i64 %i.au to double
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.aw = load ptr, ptr %2, align 8, !tbaa !126
  %i.ax = tail call double @sqlite3_value_double(ptr noundef %i.aw) #45
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.082 = phi double [ %i.av, %bb.d ], [ %i.ax, %bb.e ] ; 3 uses
  %i.ay = fcmp uge double %.082, 0.000000e+00     ; 2 uses
  %i.az = fneg double %.082
  %.183 = select i1 %i.ay, double %.082, double %i.az
  %i.ba = bitcast double %.183 to i64             ; 5 uses
  switch i64 %i.ba, label %bb.h [
    i64 0, label %bb.i
    i64 -9223372036854775808, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.bb = ashr i64 %i.ba, 52                      ; 3 uses
  %i.bc = trunc nsw i64 %i.bb to i32              ; 2 uses
  %i.bd = icmp eq i64 %i.bb, 0
  %i.be = shl nuw nsw i64 %i.ba, 1
  %i.bf = and i64 %i.ba, 4503599627370495
  %i.bg = or disjoint i64 %i.bf, 4503599627370496
  %.084 = select i1 %i.bd, i64 %i.be, i64 %i.bg   ; 4 uses
  %i.bh = icmp slt i64 %i.bb, 1075
  %i.bi = icmp ne i64 %.084, 0
  %i.bj = and i64 %.084, 1
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = and i1 %i.bi, %i.bk
  %i.bm = select i1 %i.bh, i1 %i.bl, i1 false
  br i1 %i.bm, label %.lr.ph112, label %._crit_edge113

.lr.ph112:                                        ; preds = %bb.h, %.lr.ph112
  %.080110 = phi i32 [ %i.bo, %.lr.ph112 ], [ %i.bc, %bb.h ] ; 2 uses
  %.185109 = phi i64 [ %i.bn, %.lr.ph112 ], [ %.084, %bb.h ] ; 3 uses
  %i.bn = lshr exact i64 %.185109, 1              ; 2 uses
  %i.bo = add nsw i32 %.080110, 1                 ; 2 uses
  %i.bp = icmp slt i32 %.080110, 1074
  %i.bq = icmp ne i64 %.185109, 0
  %i.br = and i64 %.185109, 2
  %i.bs = icmp eq i64 %i.br, 0
  %i.bt = and i1 %i.bq, %i.bs
  %i.bu = select i1 %i.bp, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph112, label %._crit_edge113, !llvm.loop !769
end_hunk_0
