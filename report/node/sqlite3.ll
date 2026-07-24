inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@vtabCallConstructor:bb.a
  %i.ei = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eh) #60
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  br label %sqlite3Strlen30.exit

bb.aj:                                            ; preds = %bb.ah
  %i.el = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.em = load i8, ptr %i.el, align 8
  %i.en = lshr i8 %i.em, 4                        ; 2 uses
  %.not8.i = icmp eq i8 %i.en, 0
  br i1 %.not8.i, label %sqlite3Strlen30.exit, label %sqlite3ColumnType.exit

sqlite3ColumnType.exit:                           ; preds = %bb.aj
  %i.eo = zext nneg i8 %i.en to i64
  %i.ep = add nuw nsw i64 %i.eo, 4294967295
  %i.eq = and i64 %i.ep, 4294967295
  %i.er = getelementptr inbounds nuw [8 x i8], ptr @sqlite3StdType, i64 %i.eq
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !251 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %.critedge, label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %sqlite3ColumnType.exit, %bb.ai, %bb.aj
  %.0.i155166 = phi ptr [ %i.es, %sqlite3ColumnType.exit ], [ @.str.4, %bb.aj ], [ %i.ek, %bb.ai ] ; 18 uses
  %i.eu = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i155166) #60 ; 2 uses
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = and i32 %i.ev, 1073741823               ; 3 uses
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %sqlite3Strlen30.exit
  %scevgep = getelementptr i8, ptr %.0.i155166, i64 6
  %wide.trip.count = and i64 %i.eu, 1073741823    ; 3 uses
  %i.ey = load i8, ptr %.0.i155166, align 1, !tbaa !227
  %i.ez = and i8 %i.ey, -33
  %i.fa = icmp eq i8 %i.ez, 72
  br i1 %i.fa, label %.lr.ph.i158.1.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.1.peel:                               ; preds = %bb.ak
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 1 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !227
  %i.fd = and i8 %i.fc, -33
  %i.fe = icmp eq i8 %i.fd, 73
  br i1 %i.fe, label %.lr.ph.i158.2.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.2.peel:                               ; preds = %.lr.ph.i158.1.peel
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 2 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !227
  %i.fh = and i8 %i.fg, -33
  %i.fi = icmp eq i8 %i.fh, 68
  br i1 %i.fi, label %.lr.ph.i158.3.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.3.peel:                               ; preds = %.lr.ph.i158.2.peel
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 3 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !227
  %i.fl = and i8 %i.fk, -33
  %i.fm = icmp eq i8 %i.fl, 68
  br i1 %i.fm, label %.lr.ph.i158.4.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.4.peel:                               ; preds = %.lr.ph.i158.3.peel
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 4 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !227
  %i.fp = and i8 %i.fo, -33
  %i.fq = icmp eq i8 %i.fp, 69
  br i1 %i.fq, label %.lr.ph.i158.5.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.5.peel:                               ; preds = %.lr.ph.i158.4.peel
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 5 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !227
  %i.ft = and i8 %i.fs, -33
  %i.fu = icmp eq i8 %i.ft, 78
  br i1 %i.fu, label %sqlite3_strnicmp.exit.thread.peel, label %sqlite3_strnicmp.exit.peel

sqlite3_strnicmp.exit.peel:                       ; preds = %bb.ak, %.lr.ph.i158.1.peel, %.lr.ph.i158.2.peel, %.lr.ph.i158.3.peel, %.lr.ph.i158.4.peel, %.lr.ph.i158.5.peel
  %.lcssa.peel = phi i32 [ 104, %bb.ak ], [ 105, %.lr.ph.i158.1.peel ], [ 100, %.lr.ph.i158.2.peel ], [ 100, %.lr.ph.i158.3.peel ], [ 101, %.lr.ph.i158.4.peel ], [ 110, %.lr.ph.i158.5.peel ]
  %.023.i.lcssa193.peel = phi ptr [ %.0.i155166, %bb.ak ], [ %i.fb, %.lr.ph.i158.1.peel ], [ %i.ff, %.lr.ph.i158.2.peel ], [ %i.fj, %.lr.ph.i158.3.peel ], [ %i.fn, %.lr.ph.i158.4.peel ], [ %i.fr, %.lr.ph.i158.5.peel ]
  %i.fv = load i8, ptr %.023.i.lcssa193.peel, align 1, !tbaa !227
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !227
  %i.fz = zext i8 %i.fy to i32
  %i.ga = icmp eq i32 %.lcssa.peel, %i.fz
  br i1 %i.ga, label %sqlite3_strnicmp.exit.thread.peel, label %sqlite3_strnicmp.exit.thread169.peel

sqlite3_strnicmp.exit.thread.peel:                ; preds = %sqlite3_strnicmp.exit.peel, %.lr.ph.i158.5.peel
  %i.gb = load i8, ptr %scevgep, align 1, !tbaa !227 ; 3 uses
  switch i8 %i.gb, label %sqlite3_strnicmp.exit.thread169.peel [
    i8 0, label %bb.am
    i8 32, label %bb.am
  ]

sqlite3_strnicmp.exit.thread169.peel:             ; preds = %sqlite3_strnicmp.exit.thread.peel, %sqlite3_strnicmp.exit.peel
  %exitcond.peel.not = icmp eq i32 %i.ew, 1
  br i1 %exitcond.peel.not, label %.critedge, label %.lr.ph.i158.preheader.peel.next

.lr.ph.i158.preheader.peel.next:                  ; preds = %sqlite3_strnicmp.exit.thread169.peel, %sqlite3_strnicmp.exit.thread169
  %indvars.iv202 = phi i64 [ %indvars.iv.next, %sqlite3_strnicmp.exit.thread169 ], [ 1, %sqlite3_strnicmp.exit.thread169.peel ] ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %indvars.iv202 ; 10 uses
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !227
  %i.ge = and i8 %i.gd, -33
  %i.gf = icmp eq i8 %i.ge, 72
  br i1 %i.gf, label %.lr.ph.i158.1, label %sqlite3_strnicmp.exit

.lr.ph.i158.1:                                    ; preds = %.lr.ph.i158.preheader.peel.next
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !227
  %i.gi = and i8 %i.gh, -33
  %i.gj = icmp eq i8 %i.gi, 73
  br i1 %i.gj, label %.lr.ph.i158.2, label %sqlite3_strnicmp.exit

.lr.ph.i158.2:                                    ; preds = %.lr.ph.i158.1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 2 ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !227
  %i.gm = and i8 %i.gl, -33
  %i.gn = icmp eq i8 %i.gm, 68
  br i1 %i.gn, label %.lr.ph.i158.3, label %sqlite3_strnicmp.exit

.lr.ph.i158.3:                                    ; preds = %.lr.ph.i158.2
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 3 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !227
  %i.gq = and i8 %i.gp, -33
  %i.gr = icmp eq i8 %i.gq, 68
  br i1 %i.gr, label %.lr.ph.i158.4, label %sqlite3_strnicmp.exit

.lr.ph.i158.4:                                    ; preds = %.lr.ph.i158.3
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !227
  %i.gu = and i8 %i.gt, -33
  %i.gv = icmp eq i8 %i.gu, 69
  br i1 %i.gv, label %.lr.ph.i158.5, label %sqlite3_strnicmp.exit

.lr.ph.i158.5:                                    ; preds = %.lr.ph.i158.4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gc, i64 5 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !227
  %i.gy = and i8 %i.gx, -33
  %i.gz = icmp eq i8 %i.gy, 78
  br i1 %i.gz, label %sqlite3_strnicmp.exit.thread, label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit:                            ; preds = %.lr.ph.i158.preheader.peel.next, %.lr.ph.i158.1, %.lr.ph.i158.2, %.lr.ph.i158.3, %.lr.ph.i158.4, %.lr.ph.i158.5
  %.lcssa = phi i32 [ 104, %.lr.ph.i158.preheader.peel.next ], [ 105, %.lr.ph.i158.1 ], [ 100, %.lr.ph.i158.2 ], [ 100, %.lr.ph.i158.3 ], [ 101, %.lr.ph.i158.4 ], [ 110, %.lr.ph.i158.5 ]
  %.023.i.lcssa193 = phi ptr [ %i.gc, %.lr.ph.i158.preheader.peel.next ], [ %i.gg, %.lr.ph.i158.1 ], [ %i.gk, %.lr.ph.i158.2 ], [ %i.go, %.lr.ph.i158.3 ], [ %i.gs, %.lr.ph.i158.4 ], [ %i.gw, %.lr.ph.i158.5 ]
  %i.ha = load i8, ptr %.023.i.lcssa193, align 1, !tbaa !227
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !227
  %i.he = zext i8 %i.hd to i32
  %i.hf = icmp eq i32 %.lcssa, %i.he
  br i1 %i.hf, label %sqlite3_strnicmp.exit.thread, label %sqlite3_strnicmp.exit.thread169

sqlite3_strnicmp.exit.thread:                     ; preds = %sqlite3_strnicmp.exit, %.lr.ph.i158.5
  %i.hg = getelementptr i8, ptr %i.gc, i64 -1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !227
  %i.hi = icmp eq i8 %i.hh, 32
  br i1 %i.hi, label %bb.al, label %sqlite3_strnicmp.exit.thread169

bb.al:                                            ; preds = %sqlite3_strnicmp.exit.thread
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gc, i64 6
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !227 ; 2 uses
  switch i8 %i.hk, label %sqlite3_strnicmp.exit.thread169 [
    i8 0, label %.loopexit
    i8 32, label %.loopexit
  ]

sqlite3_strnicmp.exit.thread169:                  ; preds = %bb.al, %sqlite3_strnicmp.exit, %sqlite3_strnicmp.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.i158.preheader.peel.next, !llvm.loop !3269

.loopexit:                                        ; preds = %bb.al, %bb.al
  %i.hl = trunc nuw nsw i64 %indvars.iv202 to i32
  br label %bb.am

bb.am:                                            ; preds = %.loopexit, %sqlite3_strnicmp.exit.thread.peel, %sqlite3_strnicmp.exit.thread.peel
  %.0113181.lcssa = phi i32 [ 0, %sqlite3_strnicmp.exit.thread.peel ], [ 0, %sqlite3_strnicmp.exit.thread.peel ], [ %i.hl, %.loopexit ] ; 3 uses
  %.lcssa198 = phi ptr [ %.0.i155166, %sqlite3_strnicmp.exit.thread.peel ], [ %.0.i155166, %sqlite3_strnicmp.exit.thread.peel ], [ %i.gc, %.loopexit ] ; 2 uses
  %.lcssa197 = phi i8 [ %i.gb, %sqlite3_strnicmp.exit.thread.peel ], [ %i.gb, %sqlite3_strnicmp.exit.thread.peel ], [ %i.hk, %.loopexit ]
  %.not132.not = icmp eq i8 %.lcssa197, 0
  %i.hm = select i1 %.not132.not, i32 6, i32 7    ; 2 uses
  %i.hn = add nuw nsw i32 %.0113181.lcssa, %i.hm
  %.not133183 = icmp samesign ugt i32 %i.hn, %i.ew
  br i1 %.not133183, label %._crit_edge187, label %iter.check

iter.check:                                       ; preds = %bb.am
  %i.ho = zext nneg i32 %i.hm to i64              ; 3 uses
  %i.hp = zext i32 %.0113181.lcssa to i64         ; 7 uses
  %i.hq = add nuw nsw i64 %i.ho, %i.hp            ; 5 uses
  %i.hr = add nuw nsw i64 %wide.trip.count, 1
  %i.hs = add nuw nsw i64 %i.ho, %i.hp
  %i.ht = sub nsw i64 %i.hr, %i.hs                ; 7 uses
  %min.iters.check = icmp ult i64 %i.ht, 8
  br i1 %min.iters.check, label %.lr.ph186.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check248 = icmp ult i64 %i.ht, 32
  br i1 %min.iters.check248, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ht, 24
  %n.vec = and i64 %i.ht, -32                     ; 5 uses
  %i.hu = add nsw i64 %n.vec, %i.hp
  %i.hv = add nsw i64 %i.hq, %n.vec
  %i.hw = getelementptr i8, ptr %.0.i155166, i64 %i.hq
  %invariant.gep = getelementptr i8, ptr %.0.i155166, i64 %i.hp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 %index ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %wide.load = load <16 x i8>, ptr %i.hx, align 1, !tbaa !227
  %wide.load249 = load <16 x i8>, ptr %i.hy, align 1, !tbaa !227
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !227
  store <16 x i8> %wide.load249, ptr %i.hz, align 1, !tbaa !227
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !3270

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ht, %n.vec
  br i1 %cmp.n, label %._crit_edge187, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph186.preheader, label %vec.epilog.ph, !prof !345

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec252 = and i64 %i.ht, -8                   ; 4 uses
  %i.ib = add nsw i64 %n.vec252, %i.hp
  %i.ic = add nsw i64 %i.hq, %n.vec252
  %i.id = getelementptr i8, ptr %.0.i155166, i64 %i.hq
  %invariant.gep267 = getelementptr i8, ptr %.0.i155166, i64 %i.hp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index253 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next255, %vec.epilog.vector.body ] ; 3 uses
  %i.ie = getelementptr i8, ptr %i.id, i64 %index253
  %wide.load254 = load <8 x i8>, ptr %i.ie, align 1, !tbaa !227
  %gep268 = getelementptr i8, ptr %invariant.gep267, i64 %index253
  store <8 x i8> %wide.load254, ptr %gep268, align 1, !tbaa !227
  %index.next255 = add nuw i64 %index253, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next255, %n.vec252
  br i1 %i.if, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3271

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n256 = icmp eq i64 %i.ht, %n.vec252
  br i1 %cmp.n256, label %._crit_edge187, label %.lr.ph186.preheader

.lr.ph186.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv209.ph = phi i64 [ %i.hp, %iter.check ], [ %i.hu, %vec.epilog.iter.check ], [ %i.ib, %vec.epilog.middle.block ]
  %indvars.iv207.ph = phi i64 [ %i.hq, %iter.check ], [ %i.hv, %vec.epilog.iter.check ], [ %i.ic, %vec.epilog.middle.block ]
  br label %.lr.ph186

.lr.ph186:                                        ; preds = %.lr.ph186.preheader, %.lr.ph186
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %.lr.ph186 ], [ %indvars.iv209.ph, %.lr.ph186.preheader ] ; 2 uses
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %.lr.ph186 ], [ %indvars.iv207.ph, %.lr.ph186.preheader ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %indvars.iv207
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !227
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %indvars.iv209
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !227
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %i.ij = add nuw nsw i64 %indvars.iv.next210, %i.ho
  %.not133 = icmp samesign ugt i64 %i.ij, %wide.trip.count
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1
  br i1 %.not133, label %._crit_edge187, label %.lr.ph186, !llvm.loop !3272

._crit_edge187:                                   ; preds = %.lr.ph186, %middle.block, %vec.epilog.middle.block, %bb.am
  %i.ik = load i8, ptr %.lcssa198, align 1, !tbaa !227
  %i.il = icmp eq i8 %i.ik, 0
  %i.im = icmp ne i32 %.0113181.lcssa, 0
  %or.cond = and i1 %i.im, %i.il
  br i1 %or.cond, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %._crit_edge187
  %i.in = getelementptr i8, ptr %.lcssa198, i64 -1
  store i8 0, ptr %i.in, align 1, !tbaa !227
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge187
  %i.io = load ptr, ptr %i.dz, align 8, !tbaa !882 ; 2 uses
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %indvars.iv214
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 14 ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !883
  %i.is = or i16 %i.ir, 2
  store i16 %i.is, ptr %i.iq, align 2, !tbaa !883
  %i.it = load i32, ptr %i.ea, align 8, !tbaa !788
  %i.iu = or i32 %i.it, 2
  store i32 %i.iu, ptr %i.ea, align 8, !tbaa !788
  %.pre218 = load i16, ptr %i.dw, align 2, !tbaa !881
  br label %bb.ap

.critedge:                                        ; preds = %sqlite3_strnicmp.exit.thread169, %sqlite3ColumnType.exit, %sqlite3_strnicmp.exit.thread169.peel, %sqlite3Strlen30.exit
  %i.iv = zext nneg i16 %.0116189 to i32
  %i.iw = load i32, ptr %i.ea, align 8, !tbaa !788
  %i.ix = or i32 %i.iw, %i.iv
  store i32 %i.ix, ptr %i.ea, align 8, !tbaa !788
  br label %bb.ap

bb.ap:                                            ; preds = %.critedge, %bb.ao
  %i.iy = phi i16 [ %.pre218, %bb.ao ], [ %i.eb, %.critedge ] ; 2 uses
  %i.iz = phi ptr [ %i.io, %bb.ao ], [ %i.ec, %.critedge ]
  %.1 = phi i16 [ 1024, %bb.ao ], [ %.0116189, %.critedge ]
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.ja = sext i16 %i.iy to i64
  %i.jb = icmp slt i64 %indvars.iv.next215, %i.ja
  br i1 %i.jb, label %bb.ah, label %sqlite3DbFree.exit161, !llvm.loop !3273

sqlite3DbFree.exit161:                            ; preds = %bb.ap, %bb.ag, %bb.ad, %bb.af, %sqlite3DbFree.exit153
  %.0114 = phi i32 [ %i.bm, %sqlite3DbFree.exit153 ], [ 1, %bb.af ], [ 0, %bb.ad ], [ 0, %bb.ag ], [ 0, %bb.ap ]
  call fastcc void @sqlite3DbFreeNN(ptr noundef %0, ptr noundef nonnull %.0.i.i)
  br label %sqlite3DbStrDup.exit.thread

sqlite3DbStrDup.exit.thread:                      ; preds = %sqlite3DbMallocRaw.exit.i, %._crit_edge, %sqlite3DbFree.exit161, %sqlite3DbFree.exit, %bb.c
  %.0 = phi i32 [ 6, %bb.c ], [ %.0114, %sqlite3DbFree.exit161 ], [ 7, %sqlite3DbFree.exit ], [ 7, %._crit_edge ], [ 7, %sqlite3DbMallocRaw.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @valueFromExpr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  store ptr null, ptr %i.c, align 8, !tbaa !288
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.090 = phi ptr [ %1, %bb.a ], [ %i.g, %bb.c ]  ; 7 uses
  %i.e = load i8, ptr %.090, align 8, !tbaa !3021 ; 2 uses
  switch i8 %i.e, label %.loopexit [
    i8 -75, label %bb.c
    i8 -83, label %bb.c
    i8 -80, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.090, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !371
  br label %bb.b, !llvm.loop !3274

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.090, i64 2
  %i.i = load i8, ptr %i.h, align 2, !tbaa !3275
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %.093.in = phi i8 [ %i.i, %bb.d ], [ %i.e, %bb.b ] ; 2 uses
  switch i8 %.093.in, label %bb.k [
    i8 36, label %bb.e
    i8 -82, label %bb.g
  ]

bb.e:                                             ; preds = %.loopexit
  %i.j = getelementptr inbounds nuw i8, ptr %.090, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !227
  %i.l = tail call fastcc signext i8 @sqlite3AffinityType(ptr noundef %i.k, ptr noundef null) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.090, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !371
  %i.o = tail call fastcc i32 @valueFromExpr(ptr noundef %0, ptr noundef %i.n, i8 noundef zeroext %2, i8 noundef zeroext %i.l, ptr noundef %4) ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !288    ; 2 uses
  %.not123 = icmp eq ptr %i.p, null
  br i1 %.not123, label %sqlite3ValueFree.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call fastcc i32 @sqlite3VdbeMemCast(ptr noundef nonnull %i.p, i8 noundef zeroext %i.l, i8 noundef zeroext %2) ; 0 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !288
  tail call fastcc void @applyAffinity(ptr noundef %i.r, i8 noundef signext %3, i8 noundef zeroext %2)
  br label %sqlite3ValueFree.exit

bb.g:                                             ; preds = %.loopexit
  %i.s = getelementptr inbounds nuw i8, ptr %.090, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !371  ; 7 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !3021  ; 4 uses
  switch i8 %i.u, label %.thread [
    i8 -100, label %bb.h
    i8 -102, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !367
  %i.x = and i32 %i.w, 2048
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !227  ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !227
  %.not115 = icmp eq i8 %i.aa, 48
  br i1 %.not115, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !227
  %i.ad = and i8 %i.ac, -33
  %.not116 = icmp eq i8 %i.ad, 88
  br i1 %.not116, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j, %.loopexit
  %.1100 = phi i64 [ 1, %.loopexit ], [ -1, %bb.j ], [ -1, %bb.i ], [ -1, %bb.h ] ; 2 uses
  %.198 = phi ptr [ @.str.4, %.loopexit ], [ @.str.139, %bb.j ], [ @.str.139, %bb.i ], [ @.str.139, %bb.h ]
  %.295.in = phi i8 [ %.093.in, %.loopexit ], [ %i.u, %bb.j ], [ %i.u, %bb.i ], [ %i.u, %bb.h ] ; 3 uses
  %.2 = phi ptr [ %.090, %.loopexit ], [ %i.t, %bb.j ], [ %i.t, %bb.i ], [ %i.t, %bb.h ] ; 6 uses
  %i.ae = icmp eq i8 %.295.in, -102
  %i.af = icmp eq i8 %.295.in, -100               ; 2 uses
  switch i8 %.295.in, label %sqlite3VdbeChangeEncoding.exit [
    i8 -100, label %bb.l
    i8 -102, label %bb.l
    i8 118, label %bb.l
    i8 -85, label %bb.ba
    i8 122, label %bb.as
    i8 -101, label %bb.aw
  ]

bb.l:                                             ; preds = %bb.k, %bb.k, %bb.k
  %.not.i.i.i.i = icmp eq ptr %0, null
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef 56), !inline_history !608
  br label %sqlite3DbMallocRaw.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.ah = tail call fastcc ptr @sqlite3Malloc(i64 noundef 56), !inline_history !608
  br label %sqlite3DbMallocRaw.exit.i.i.i

sqlite3DbMallocRaw.exit.i.i.i:                    ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi ptr [ %i.ag, %bb.m ], [ %i.ah, %bb.n ] ; 18 uses
  %.not.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not.i.i.i, label %valueNew.exit.thread, label %bb.o

bb.o:                                             ; preds = %sqlite3DbMallocRaw.exit.i.i.i
end_hunk_0
begin_hunk_1_@valueFromExpr:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  %i.bx = call fastcc double @sqlite3MemRealValueRC(ptr noundef nonnull %i.br, ptr noundef nonnull %i.a) ; 6 uses
  store double %i.bx, ptr %i.br, align 8, !tbaa !227
  %i.by = load i32, ptr %i.a, align 4, !tbaa !5
  %or.cond.i = icmp ult i32 %i.by, 2
  br i1 %or.cond.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !289
  %i.cb = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !558
  %i.cd = getelementptr inbounds nuw i8, ptr %i.br, i64 22
  %i.ce = load i8, ptr %i.cd, align 2, !tbaa !349
  %i.cf = call fastcc i32 @sqlite3Atoi64(ptr noundef %i.ca, ptr noundef nonnull %i.b, i32 noundef %i.cc, i8 noundef zeroext %i.ce)
  %i.cg = icmp slt i32 %i.cf, 2
  br i1 %i.cg, label %.sqlite3RealSameAsInt.exit.thread_crit_edge.i, label %bb.aj

.sqlite3RealSameAsInt.exit.thread_crit_edge.i:    ; preds = %bb.ai
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !18
  br label %sqlite3RealSameAsInt.exit.thread.i

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ch = fcmp olt double %i.bx, f0xC3DFFFFFFFFFFFFF
  br i1 %i.ch, label %sqlite3RealToI64.exit.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ci = fcmp ogt double %i.bx, f0x43DFFFFFFFFFFFFF
  br i1 %i.ci, label %sqlite3RealToI64.exit.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cj = fptosi double %i.bx to i64
  br label %sqlite3RealToI64.exit.i

sqlite3RealToI64.exit.i:                          ; preds = %bb.al, %bb.ak, %bb.aj
  %.0.i.i = phi i64 [ %i.cj, %bb.al ], [ -9223372036854775808, %bb.aj ], [ 9223372036854775807, %bb.ak ] ; 4 uses
  %i.ck = fcmp oeq double %i.bx, 0.000000e+00
  br i1 %i.ck, label %sqlite3RealSameAsInt.exit.thread.i, label %sqlite3RealSameAsInt.exit.i

sqlite3RealSameAsInt.exit.i:                      ; preds = %sqlite3RealToI64.exit.i
  %i.cl = sitofp i64 %.0.i.i to double
  %i.cm = bitcast double %i.bx to i64
  %i.cn = bitcast double %i.cl to i64
  %.not.i.i = icmp ne i64 %i.cm, %i.cn
  %i.co = add i64 %.0.i.i, -2251799813685248
  %i.cp = icmp ult i64 %i.co, -4503599627370496
  %.not17.i = or i1 %i.cp, %.not.i.i
  br i1 %.not17.i, label %bb.am, label %sqlite3RealSameAsInt.exit.thread.i

sqlite3RealSameAsInt.exit.thread.i:               ; preds = %sqlite3RealSameAsInt.exit.i, %sqlite3RealToI64.exit.i, %.sqlite3RealSameAsInt.exit.thread_crit_edge.i
  %i.cq = phi i64 [ %.pre.i, %.sqlite3RealSameAsInt.exit.thread_crit_edge.i ], [ %.0.i.i, %sqlite3RealToI64.exit.i ], [ %.0.i.i, %sqlite3RealSameAsInt.exit.i ]
  store i64 %i.cq, ptr %i.br, align 8, !tbaa !227
  br label %bb.am

bb.am:                                            ; preds = %sqlite3RealSameAsInt.exit.thread.i, %sqlite3RealSameAsInt.exit.i
  %.sink18.i = phi i16 [ 4, %sqlite3RealSameAsInt.exit.thread.i ], [ 8, %sqlite3RealSameAsInt.exit.i ]
  %i.cr = load i16, ptr %i.bt, align 4, !tbaa !162
  %i.cs = and i16 %i.cr, -3520
  %i.ct = or disjoint i16 %i.cs, %.sink18.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %sqlite3VdbeMemNumerify.exit

sqlite3VdbeMemNumerify.exit:                      ; preds = %bb.ag, %bb.am
  %i.cu = phi i16 [ %i.ct, %bb.am ], [ %i.bu, %bb.ag ] ; 3 uses
  %i.cv = and i16 %i.cu, -1043
  store i16 %i.cv, ptr %i.bt, align 4, !tbaa !162
  %i.cw = and i16 %i.cu, 8
  %.not119 = icmp eq i16 %i.cw, 0
  br i1 %.not119, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %sqlite3VdbeMemNumerify.exit
  %i.cx = load double, ptr %i.br, align 8, !tbaa !227
  %i.cy = fneg double %i.cx
  store double %i.cy, ptr %i.br, align 8, !tbaa !227
  br label %bb.ar

bb.ao:                                            ; preds = %sqlite3VdbeMemNumerify.exit
  %i.cz = load i64, ptr %i.br, align 8, !tbaa !227 ; 2 uses
  %i.da = icmp eq i64 %i.cz, -9223372036854775808
  br i1 %i.da, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store double f0x43E0000000000000, ptr %i.br, align 8, !tbaa !227
  %i.db = and i16 %i.cu, -3520
  %i.dc = or disjoint i16 %i.db, 8
  store i16 %i.dc, ptr %i.bt, align 4, !tbaa !162
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.dd = sub nsw i64 0, %i.cz
  store i64 %i.dd, ptr %i.br, align 8, !tbaa !227
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq, %bb.an
  call fastcc void @applyAffinity(ptr noundef nonnull %i.br, i8 noundef signext %3, i8 noundef zeroext %2)
  br label %sqlite3VdbeChangeEncoding.exit

bb.as:                                            ; preds = %bb.k
  %.not.i.i.i.i131 = icmp eq ptr %0, null
  br i1 %.not.i.i.i.i131, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.de = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef 56), !inline_history !608
  br label %sqlite3DbMallocRaw.exit.i.i.i132

bb.au:                                            ; preds = %bb.as
  %i.df = tail call fastcc ptr @sqlite3Malloc(i64 noundef 56), !inline_history !608
  br label %sqlite3DbMallocRaw.exit.i.i.i132

sqlite3DbMallocRaw.exit.i.i.i132:                 ; preds = %bb.au, %bb.at
  %.0.i.i.i.i133 = phi ptr [ %i.de, %bb.at ], [ %i.df, %bb.au ] ; 5 uses
  %.not.i.i.i134 = icmp eq ptr %.0.i.i.i.i133, null
  br i1 %.not.i.i.i134, label %valueNew.exit.thread, label %bb.av

bb.av:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i.i132
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %.0.i.i.i.i133, i8 0, i64 56, i1 false)
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i133, i64 20
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i133, i64 24
  store ptr %0, ptr %i.dh, align 8, !tbaa !157
  store i16 1, ptr %i.dg, align 4, !tbaa !162
  br label %sqlite3VdbeChangeEncoding.exit

bb.aw:                                            ; preds = %bb.k
  %.not.i.i.i.i137 = icmp eq ptr %0, null
  br i1 %.not.i.i.i.i137, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.di = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef 56), !inline_history !608
  br label %sqlite3DbMallocRaw.exit.i.i.i138

bb.ay:                                            ; preds = %bb.aw
  %i.dj = tail call fastcc ptr @sqlite3Malloc(i64 noundef 56), !inline_history !608
  br label %sqlite3DbMallocRaw.exit.i.i.i138

sqlite3DbMallocRaw.exit.i.i.i138:                 ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i139 = phi ptr [ %i.di, %bb.ax ], [ %i.dj, %bb.ay ] ; 6 uses
  %.not.i.i.i140 = icmp eq ptr %.0.i.i.i.i139, null
  br i1 %.not.i.i.i140, label %valueNew.exit.thread, label %bb.az

bb.az:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i.i138
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %.0.i.i.i.i139, i8 0, i64 56, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i139, i64 20
  store i16 1, ptr %i.dk, align 4, !tbaa !162
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i139, i64 24
  store ptr %0, ptr %i.dl, align 8, !tbaa !157
  %i.dm = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !227 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2 ; 23 uses
  %i.dp = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.do) #60
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = and i32 %i.dq, 1073741823               ; 3 uses
  %i.ds = add nsw i32 %i.dr, -1
  %i.dt = sdiv i32 %i.ds, 2                       ; 2 uses
  %i.du = add nuw nsw i32 %i.dt, 1
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %0, i64 noundef %i.dv) ; 8 uses
  %i.dx = add nsw i32 %i.dr, -2                   ; 3 uses
  %.not.i143 = icmp eq ptr %i.dw, null
  br i1 %.not.i143, label %.thread8, label %.preheader.i

.preheader.i:                                     ; preds = %bb.az
  %i.dy = icmp samesign ugt i32 %i.dr, 2
  br i1 %i.dy, label %iter.check, label %._crit_edge.i

iter.check:                                       ; preds = %.preheader.i
  %i.dz = zext nneg i32 %i.dx to i64              ; 3 uses
  %umax37 = tail call i64 @llvm.umax.i64(i64 %i.dz, i64 2)
  %i.ea = add nsw i64 %umax37, -1
  %i.eb = lshr i64 %i.ea, 1
  %i.ec = add nuw nsw i64 %i.eb, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.dx, 7
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ed = add nsw i64 %i.dz, -1                   ; 2 uses
  %i.ee = lshr i64 %i.ed, 1
  %i.ef = getelementptr i8, ptr %i.dw, i64 %i.ee
  %scevgep = getelementptr i8, ptr %i.ef, i64 1
  %i.eg = and i64 %i.ed, -2
  %i.eh = getelementptr i8, ptr %i.dn, i64 %i.eg
  %scevgep36 = getelementptr i8, ptr %i.eh, i64 4
  %bound0 = icmp ult ptr %i.dw, %scevgep36
  %bound1 = icmp ult ptr %i.do, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check38 = icmp ult i32 %i.dx, 31
  br i1 %min.iters.check38, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ec, 12
  %n.vec = and i64 %i.ec, 9223372036854775792     ; 5 uses
  %i.ei = shl nuw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ej = shl i64 %index, 1                       ; 16 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %i.en = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 6
  %i.er = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 10
  %i.ev = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %i.ex = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 14
  %i.ez = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 18
  %i.fd = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 20
  %i.ff = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 22
  %i.fh = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 26
  %i.fl = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 28
  %i.fn = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ej ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 30
  %i.fp = load i8, ptr %i.ek, align 1, !tbaa !227, !alias.scope !3276
  %i.fq = load i8, ptr %i.em, align 1, !tbaa !227, !alias.scope !3276
  %i.fr = load i8, ptr %i.eo, align 1, !tbaa !227, !alias.scope !3276
  %i.fs = load i8, ptr %i.eq, align 1, !tbaa !227, !alias.scope !3276
  %i.ft = load i8, ptr %i.es, align 1, !tbaa !227, !alias.scope !3276
  %i.fu = load i8, ptr %i.eu, align 1, !tbaa !227, !alias.scope !3276
  %i.fv = load i8, ptr %i.ew, align 1, !tbaa !227, !alias.scope !3276
  %i.fw = load i8, ptr %i.ey, align 1, !tbaa !227, !alias.scope !3276
  %i.fx = load i8, ptr %i.fa, align 1, !tbaa !227, !alias.scope !3276
  %i.fy = load i8, ptr %i.fc, align 1, !tbaa !227, !alias.scope !3276
  %i.fz = load i8, ptr %i.fe, align 1, !tbaa !227, !alias.scope !3276
  %i.ga = load i8, ptr %i.fg, align 1, !tbaa !227, !alias.scope !3276
  %i.gb = load i8, ptr %i.fi, align 1, !tbaa !227, !alias.scope !3276
  %i.gc = load i8, ptr %i.fk, align 1, !tbaa !227, !alias.scope !3276
  %i.gd = load i8, ptr %i.fm, align 1, !tbaa !227, !alias.scope !3276
  %i.ge = load i8, ptr %i.fo, align 1, !tbaa !227, !alias.scope !3276
  %i.gf = insertelement <16 x i8> poison, i8 %i.fp, i64 0
  %i.gg = insertelement <16 x i8> %i.gf, i8 %i.fq, i64 1
  %i.gh = insertelement <16 x i8> %i.gg, i8 %i.fr, i64 2
  %i.gi = insertelement <16 x i8> %i.gh, i8 %i.fs, i64 3
  %i.gj = insertelement <16 x i8> %i.gi, i8 %i.ft, i64 4
  %i.gk = insertelement <16 x i8> %i.gj, i8 %i.fu, i64 5
  %i.gl = insertelement <16 x i8> %i.gk, i8 %i.fv, i64 6
  %i.gm = insertelement <16 x i8> %i.gl, i8 %i.fw, i64 7
  %i.gn = insertelement <16 x i8> %i.gm, i8 %i.fx, i64 8
  %i.go = insertelement <16 x i8> %i.gn, i8 %i.fy, i64 9
  %i.gp = insertelement <16 x i8> %i.go, i8 %i.fz, i64 10
  %i.gq = insertelement <16 x i8> %i.gp, i8 %i.ga, i64 11
  %i.gr = insertelement <16 x i8> %i.gq, i8 %i.gb, i64 12
  %i.gs = insertelement <16 x i8> %i.gr, i8 %i.gc, i64 13
  %i.gt = insertelement <16 x i8> %i.gs, i8 %i.gd, i64 14
  %i.gu = insertelement <16 x i8> %i.gt, i8 %i.ge, i64 15 ; 2 uses
  %i.gv = and <16 x i8> %i.gu, splat (i8 64)
  %i.gw = icmp eq <16 x i8> %i.gv, zeroinitializer
  %i.gx = select <16 x i1> %i.gw, <16 x i8> zeroinitializer, <16 x i8> splat (i8 9)
  %i.gy = add <16 x i8> %i.gx, %i.gu
  %i.gz = shl <16 x i8> %i.gy, splat (i8 4)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.hb = getelementptr inbounds nuw i8, ptr %i.el, i64 3
  %i.hc = getelementptr inbounds nuw i8, ptr %i.en, i64 5
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ep, i64 7
  %i.he = getelementptr inbounds nuw i8, ptr %i.er, i64 9
  %i.hf = getelementptr inbounds nuw i8, ptr %i.et, i64 11
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ev, i64 13
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ex, i64 15
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ez, i64 17
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fb, i64 19
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fd, i64 21
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ff, i64 23
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fh, i64 25
  %i.hn = getelementptr inbounds nuw i8, ptr %i.fj, i64 27
  %i.ho = getelementptr inbounds nuw i8, ptr %i.fl, i64 29
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fn, i64 31
  %i.hq = load i8, ptr %i.ha, align 1, !tbaa !227, !alias.scope !3276
  %i.hr = load i8, ptr %i.hb, align 1, !tbaa !227, !alias.scope !3276
  %i.hs = load i8, ptr %i.hc, align 1, !tbaa !227, !alias.scope !3276
  %i.ht = load i8, ptr %i.hd, align 1, !tbaa !227, !alias.scope !3276
  %i.hu = load i8, ptr %i.he, align 1, !tbaa !227, !alias.scope !3276
  %i.hv = load i8, ptr %i.hf, align 1, !tbaa !227, !alias.scope !3276
  %i.hw = load i8, ptr %i.hg, align 1, !tbaa !227, !alias.scope !3276
  %i.hx = load i8, ptr %i.hh, align 1, !tbaa !227, !alias.scope !3276
  %i.hy = load i8, ptr %i.hi, align 1, !tbaa !227, !alias.scope !3276
  %i.hz = load i8, ptr %i.hj, align 1, !tbaa !227, !alias.scope !3276
  %i.ia = load i8, ptr %i.hk, align 1, !tbaa !227, !alias.scope !3276
  %i.ib = load i8, ptr %i.hl, align 1, !tbaa !227, !alias.scope !3276
  %i.ic = load i8, ptr %i.hm, align 1, !tbaa !227, !alias.scope !3276
  %i.id = load i8, ptr %i.hn, align 1, !tbaa !227, !alias.scope !3276
  %i.ie = load i8, ptr %i.ho, align 1, !tbaa !227, !alias.scope !3276
  %i.if = load i8, ptr %i.hp, align 1, !tbaa !227, !alias.scope !3276
  %i.ig = insertelement <16 x i8> poison, i8 %i.hq, i64 0
  %i.ih = insertelement <16 x i8> %i.ig, i8 %i.hr, i64 1
  %i.ii = insertelement <16 x i8> %i.ih, i8 %i.hs, i64 2
  %i.ij = insertelement <16 x i8> %i.ii, i8 %i.ht, i64 3
  %i.ik = insertelement <16 x i8> %i.ij, i8 %i.hu, i64 4
  %i.il = insertelement <16 x i8> %i.ik, i8 %i.hv, i64 5
  %i.im = insertelement <16 x i8> %i.il, i8 %i.hw, i64 6
  %i.in = insertelement <16 x i8> %i.im, i8 %i.hx, i64 7
  %i.io = insertelement <16 x i8> %i.in, i8 %i.hy, i64 8
  %i.ip = insertelement <16 x i8> %i.io, i8 %i.hz, i64 9
  %i.iq = insertelement <16 x i8> %i.ip, i8 %i.ia, i64 10
  %i.ir = insertelement <16 x i8> %i.iq, i8 %i.ib, i64 11
  %i.is = insertelement <16 x i8> %i.ir, i8 %i.ic, i64 12
  %i.it = insertelement <16 x i8> %i.is, i8 %i.id, i64 13
  %i.iu = insertelement <16 x i8> %i.it, i8 %i.ie, i64 14
  %i.iv = insertelement <16 x i8> %i.iu, i8 %i.if, i64 15 ; 2 uses
  %i.iw = and <16 x i8> %i.iv, splat (i8 64)
  %i.ix = icmp eq <16 x i8> %i.iw, zeroinitializer
  %i.iy = select <16 x i1> %i.ix, <16 x i8> zeroinitializer, <16 x i8> splat (i8 9)
  %i.iz = add <16 x i8> %i.iy, %i.iv
  %i.ja = and <16 x i8> %i.iz, splat (i8 15)
  %i.jb = or disjoint <16 x i8> %i.ja, %i.gz
  %5 = and i64 %index, 9223372036854775792
  %i.jc = getelementptr inbounds nuw i8, ptr %i.dw, i64 %5
  store <16 x i8> %i.jb, ptr %i.jc, align 1, !tbaa !227, !alias.scope !3279, !noalias !3276
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.jd = icmp eq i64 %index.next, %n.vec
  br i1 %i.jd, label %middle.block, label %vector.body, !llvm.loop !3281

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ec, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !886

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %i.ec, 9223372036854775804   ; 4 uses
  %i.je = shl nuw i64 %n.vec40, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 3 uses
  %i.jf = shl i64 %index41, 1                     ; 4 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.jf ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.jf ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 2
  %i.jj = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.jf ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  %i.jl = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.jf ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 6
  %i.jn = load i8, ptr %i.jg, align 1, !tbaa !227, !alias.scope !3276
  %i.jo = load i8, ptr %i.ji, align 1, !tbaa !227, !alias.scope !3276
  %i.jp = load i8, ptr %i.jk, align 1, !tbaa !227, !alias.scope !3276
  %i.jq = load i8, ptr %i.jm, align 1, !tbaa !227, !alias.scope !3276
  %i.jr = insertelement <4 x i8> poison, i8 %i.jn, i64 0
  %i.js = insertelement <4 x i8> %i.jr, i8 %i.jo, i64 1
  %i.jt = insertelement <4 x i8> %i.js, i8 %i.jp, i64 2
  %i.ju = insertelement <4 x i8> %i.jt, i8 %i.jq, i64 3 ; 2 uses
  %i.jv = and <4 x i8> %i.ju, splat (i8 64)
  %i.jw = icmp eq <4 x i8> %i.jv, zeroinitializer
  %i.jx = select <4 x i1> %i.jw, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.jy = add <4 x i8> %i.jx, %i.ju
  %i.jz = shl <4 x i8> %i.jy, splat (i8 4)
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jg, i64 1
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jh, i64 3
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jj, i64 5
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jl, i64 7
  %i.ke = load i8, ptr %i.ka, align 1, !tbaa !227, !alias.scope !3276
  %i.kf = load i8, ptr %i.kb, align 1, !tbaa !227, !alias.scope !3276
  %i.kg = load i8, ptr %i.kc, align 1, !tbaa !227, !alias.scope !3276
  %i.kh = load i8, ptr %i.kd, align 1, !tbaa !227, !alias.scope !3276
  %i.ki = insertelement <4 x i8> poison, i8 %i.ke, i64 0
  %i.kj = insertelement <4 x i8> %i.ki, i8 %i.kf, i64 1
  %i.kk = insertelement <4 x i8> %i.kj, i8 %i.kg, i64 2
  %i.kl = insertelement <4 x i8> %i.kk, i8 %i.kh, i64 3 ; 2 uses
  %i.km = and <4 x i8> %i.kl, splat (i8 64)
  %i.kn = icmp eq <4 x i8> %i.km, zeroinitializer
  %i.ko = select <4 x i1> %i.kn, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.kp = add <4 x i8> %i.ko, %i.kl
  %i.kq = and <4 x i8> %i.kp, splat (i8 15)
  %i.kr = or disjoint <4 x i8> %i.kq, %i.jz
  %6 = and i64 %index41, 9223372036854775804
  %i.ks = getelementptr inbounds nuw i8, ptr %i.dw, i64 %6
  store <4 x i8> %i.kr, ptr %i.ks, align 1, !tbaa !227, !alias.scope !3279, !noalias !3276
  %index.next42 = add nuw i64 %index41, 4         ; 2 uses
  %i.kt = icmp eq i64 %index.next42, %n.vec40
  br i1 %i.kt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3282

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.ec, %n.vec40
  br i1 %cmp.n43, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.ei, %vec.epilog.iter.check ], [ %i.je, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.do, i64 %indvars.iv.i ; 2 uses
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !227 ; 2 uses
  %i.kw = and i8 %i.kv, 64
  %.not.i.i144 = icmp eq i8 %i.kw, 0
  %i.kx = select i1 %.not.i.i144, i8 0, i8 9
  %i.ky = add i8 %i.kx, %i.kv
  %i.kz = shl i8 %i.ky, 4
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 1
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !227 ; 2 uses
  %i.lc = and i8 %i.lb, 64
  %.not.i16.i = icmp eq i8 %i.lc, 0
  %i.ld = select i1 %.not.i16.i, i8 0, i8 9
  %i.le = add i8 %i.ld, %i.lb
  %i.lf = and i8 %i.le, 15
  %i.lg = or disjoint i8 %i.lf, %i.kz
  %i.lh = lshr exact i64 %indvars.iv.i, 1
  %i.li = getelementptr inbounds nuw i8, ptr %i.dw, i64 %i.lh
  store i8 %i.lg, ptr %i.li, align 1, !tbaa !227
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.lj = icmp samesign ult i64 %indvars.iv.next.i, %i.dz
  br i1 %i.lj, label %.lr.ph.i, label %._crit_edge.loopexit.i.loopexit, !llvm.loop !3283

._crit_edge.loopexit.i.loopexit:                  ; preds = %.lr.ph.i
  %i.lk = lshr exact i64 %indvars.iv.next.i, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %middle.block, %vec.epilog.middle.block, %._crit_edge.loopexit.i.loopexit, %.preheader.i
  %.0.lcssa.i = phi i64 [ 0, %.preheader.i ], [ %n.vec40, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %i.lk, %._crit_edge.loopexit.i.loopexit ]
  %i.ll = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.0.lcssa.i
  store i8 0, ptr %i.ll, align 1, !tbaa !227
  br label %.thread8

.thread8:                                         ; preds = %._crit_edge.i, %bb.az
  %i.lm = zext nneg i32 %i.dt to i64
  %i.ln = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef nonnull %.0.i.i.i.i139, ptr noundef %i.dw, i64 noundef %i.lm, i8 noundef zeroext 0, ptr noundef nonnull @sqlite3RowSetClear) ; 0 uses
  br label %sqlite3VdbeChangeEncoding.exit

bb.ba:                                            ; preds = %bb.k
  %.not.i.i.i.i145 = icmp eq ptr %0, null
  br i1 %.not.i.i.i.i145, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lo = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef nonnull %0, i64 noundef 56), !inline_history !608
  br label %sqlite3DbMallocRaw.exit.i.i.i146

bb.bc:                                            ; preds = %bb.ba
  %i.lp = tail call fastcc ptr @sqlite3Malloc(i64 noundef 56), !inline_history !608
  br label %sqlite3DbMallocRaw.exit.i.i.i146

sqlite3DbMallocRaw.exit.i.i.i146:                 ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i147 = phi ptr [ %i.lo, %bb.bb ], [ %i.lp, %bb.bc ] ; 7 uses
  %.not.i.i.i148 = icmp eq ptr %.0.i.i.i.i147, null
  br i1 %.not.i.i.i148, label %sqlite3VdbeChangeEncoding.exit, label %bb.bd

bb.bd:                                            ; preds = %sqlite3DbMallocRaw.exit.i.i.i146
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %.0.i.i.i.i147, i8 0, i64 56, i1 false)
  %i.lq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i147, i64 20
  %i.lr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i147, i64 24
  store ptr %0, ptr %i.lr, align 8, !tbaa !157
  store i16 4, ptr %i.lq, align 4, !tbaa !162
  %i.ls = getelementptr inbounds nuw i8, ptr %.2, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !227
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 4
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !227
  %i.lw = icmp eq i8 %i.lv, 0
  %i.lx = zext i1 %i.lw to i64
  store i64 %i.lx, ptr %.0.i.i.i.i147, align 8, !tbaa !227
  tail call fastcc void @applyAffinity(ptr noundef nonnull %.0.i.i.i.i147, i8 noundef signext %3, i8 noundef zeroext %2)
  br label %sqlite3VdbeChangeEncoding.exit

sqlite3VdbeChangeEncoding.exit:                   ; preds = %sqlite3DbMallocRaw.exit.i.i.i146, %.thread8, %bb.av, %bb.af, %bb.ae, %bb.ad, %bb.k, %bb.ar, %.thread, %bb.bd, %bb.ab
  %i.ly = phi ptr [ null, %bb.k ], [ %.0.i.i.i.i, %bb.ab ], [ %i.br, %bb.ar ], [ %i.br, %.thread ], [ %.0.i.i.i.i, %bb.ae ], [ %.0.i.i.i.i139, %.thread8 ], [ %.0.i.i.i.i147, %bb.bd ], [ %.0.i.i.i.i133, %bb.av ], [ %.0.i.i.i.i, %bb.ad ], [ %.0.i.i.i.i, %bb.af ], [ null, %sqlite3DbMallocRaw.exit.i.i.i146 ]
  %.096 = phi i32 [ 0, %bb.k ], [ 0, %bb.ab ], [ 0, %bb.ar ], [ 0, %.thread ], [ 0, %bb.ae ], [ 0, %.thread8 ], [ 0, %bb.bd ], [ 0, %bb.av ], [ 0, %bb.ad ], [ %i.bo, %bb.af ], [ 0, %sqlite3DbMallocRaw.exit.i.i.i146 ]
  store ptr %i.ly, ptr %4, align 8, !tbaa !288
  br label %sqlite3ValueFree.exit

valueNew.exit.thread:                             ; preds = %sqlite3DbMallocRaw.exit.i.i.i138, %sqlite3DbMallocRaw.exit.i.i.i132, %sqlite3DbMallocRaw.exit.i.i.i, %sqlite3VdbeMemSetInt64.exit128
  %i.lz = phi ptr [ null, %sqlite3DbMallocRaw.exit.i.i.i132 ], [ null, %sqlite3DbMallocRaw.exit.i.i.i ], [ %.0.i.i.i.i, %sqlite3VdbeMemSetInt64.exit128 ], [ null, %sqlite3DbMallocRaw.exit.i.i.i138 ] ; 6 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 103 ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !550
  %i.mc = icmp eq i8 %i.mb, 0
  br i1 %i.mc, label %bb.be, label %sqlite3DbFree.exit

bb.be:                                            ; preds = %valueNew.exit.thread
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.me = load i8, ptr %i.md, align 8, !tbaa !551
  %i.mf = icmp eq i8 %i.me, 0
  br i1 %i.mf, label %bb.bf, label %sqlite3DbFree.exit

bb.bf:                                            ; preds = %bb.be
  store i8 1, ptr %i.ma, align 1, !tbaa !550
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !552
  %i.mi = icmp sgt i32 %i.mh, 0
  br i1 %i.mi, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 424
  store atomic volatile i32 1, ptr %i.mj monotonic, align 8
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !553
  %i.mm = add i32 %i.ml, 1
  store i32 %i.mm, ptr %i.mk, align 8, !tbaa !553
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 436
  store i16 0, ptr %i.mn, align 4, !tbaa !554
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !301 ; 2 uses
  %.not.i150 = icmp eq ptr %i.mp, null
  br i1 %.not.i150, label %sqlite3DbFree.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %i.mp, ptr noundef nonnull @.str.133), !inline_history !555
  %i.mq = load ptr, ptr %i.mo, align 8, !tbaa !301 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  store i32 7, ptr %i.mr, align 8, !tbaa !302
  %.0.in17.i = getelementptr inbounds nuw i8, ptr %i.mq, i64 216
  %.018.i = load ptr, ptr %.0.in17.i, align 8, !tbaa !556 ; 2 uses
  %.not1619.i = icmp eq ptr %.018.i, null
  br i1 %.not1619.i, label %sqlite3DbFree.exit, label %.lr.ph.i151

.lr.ph.i151:                                      ; preds = %bb.bi, %.lr.ph.i151
  %.020.i = phi ptr [ %.0.i152, %.lr.ph.i151 ], [ %.018.i, %bb.bi ] ; 3 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.020.i, i64 52 ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !313
  %i.mu = add nsw i32 %i.mt, 1
  store i32 %i.mu, ptr %i.ms, align 4, !tbaa !313
  %i.mv = getelementptr inbounds nuw i8, ptr %.020.i, i64 24
  store i32 7, ptr %i.mv, align 8, !tbaa !302
  %.0.in.i = getelementptr inbounds nuw i8, ptr %.020.i, i64 216
  %.0.i152 = load ptr, ptr %.0.in.i, align 8, !tbaa !556 ; 2 uses
  %.not16.i = icmp eq ptr %.0.i152, null
  br i1 %.not16.i, label %sqlite3DbFree.exit, label %.lr.ph.i151, !llvm.loop !557

sqlite3DbFree.exit:                               ; preds = %.lr.ph.i151, %bb.bi, %bb.bh, %bb.be, %valueNew.exit.thread
  %.not.i154 = icmp eq ptr %i.lz, null
  br i1 %.not.i154, label %sqlite3ValueFree.exit, label %bb.bj

bb.bj:                                            ; preds = %sqlite3DbFree.exit
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lz, i64 20
  %i.mx = load i16, ptr %i.mw, align 4, !tbaa !162
  %i.my = and i16 %i.mx, -28672
  %.not.i.i155 = icmp eq i16 %i.my, 0
  br i1 %.not.i.i155, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !159
  %.not3.i.i = icmp eq i32 %i.na, 0
  br i1 %.not3.i.i, label %sqlite3VdbeMemRelease.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  tail call fastcc void @vdbeMemClear(ptr noundef nonnull %i.lz)
  br label %sqlite3VdbeMemRelease.exit.i

sqlite3VdbeMemRelease.exit.i:                     ; preds = %bb.bl, %bb.bk
  %i.nb = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !157
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.nc, ptr noundef nonnull %i.lz)
  br label %sqlite3ValueFree.exit

sqlite3ValueFree.exit:                            ; preds = %sqlite3VdbeMemRelease.exit.i, %sqlite3DbFree.exit, %bb.e, %bb.f, %sqlite3VdbeChangeEncoding.exit
  %.0 = phi i32 [ %i.o, %bb.f ], [ %i.o, %bb.e ], [ %.096, %sqlite3VdbeChangeEncoding.exit ], [ 7, %sqlite3DbFree.exit ], [ 7, %sqlite3VdbeMemRelease.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc signext range(i8 65, 70) i8 @sqlite3AffinityType(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #16 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !227     ; 2 uses
  %.not63 = icmp eq i8 %i.b, 0
  br i1 %.not63, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.loopexit86
  %i.c = phi i8 [ %i.ao, %.loopexit86 ], [ %i.b, %bb.a ]
  %.04167 = phi ptr [ %i.am, %.loopexit86 ], [ %0, %bb.a ]
  %.04266 = phi ptr [ %.2, %.loopexit86 ], [ null, %bb.a ] ; 6 uses
  %.04365 = phi i8 [ %.245, %.loopexit86 ], [ 67, %bb.a ] ; 3 uses
  %.04764 = phi i32 [ %i.an, %.loopexit86 ], [ 0, %bb.a ]
  %i.d = shl i32 %.04764, 8
  %i.e = zext i8 %i.c to i64
end_hunk_1
begin_hunk_2_@sqlite3AffinityType:bb.a
  %.ph85 = phi i32 [ %i.i, %.lr.ph ], [ 1651273570, %bb.c ], [ %i.ac, %.lr.ph.jt66 ] ; 5 uses
  %.0436583.ph = phi i8 [ %.04365, %.lr.ph ], [ %.04365, %bb.c ], [ %.245.jt66, %.lr.ph.jt66 ] ; 2 uses
  %.0426680.ph = phi ptr [ %.04266, %.lr.ph ], [ %.04266, %bb.c ], [ %.2.jt66, %.lr.ph.jt66 ] ; 5 uses
  %i.k = icmp eq i32 %.ph85, 1919246700
  %i.l = icmp eq i8 %.0436583.ph, 67
  %i.m = icmp eq i32 %.ph85, 1718382433
  %i.n = or i1 %i.k, %i.m
  %i.o = icmp eq i32 %.ph85, 1685026146
  %i.p = or i1 %i.o, %i.n
  %or.cond56.peel = select i1 %i.p, i1 %i.l, i1 false
  br i1 %or.cond56.peel, label %bb.b, label %.loopexit153

bb.b:                                             ; preds = %.preheader84
  %i.q = load i8, ptr %.ph, align 1, !tbaa !227   ; 2 uses
  %.not.jt69.peel = icmp eq i8 %i.q, 0
  br i1 %.not.jt69.peel, label %.thread, label %.lr.ph.jt69.peel

.lr.ph.jt69.peel:                                 ; preds = %bb.b
  %i.r = shl i32 %.ph85, 8
  %i.s = zext i8 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !227
  %i.v = zext i8 %i.u to i32
  %i.w = or disjoint i32 %i.r, %i.v               ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.ph, i64 1 ; 5 uses
  switch i32 %i.w, label %.loopexit153 [
    i32 1667785074, label %.loopexit86
    i32 1668050786, label %.loopexit87.loopexit
    i32 1952807028, label %.loopexit87.loopexit
    i32 1651273570, label %.loopexit88
  ]

.lr.ph.jt66:                                      ; preds = %bb.d
  %i.y = zext i8 %i.ap to i64
  %i.z = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !227
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.ar, %i.ab            ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 5 uses
  switch i32 %i.ac, label %.preheader84 [
    i32 1667785074, label %.loopexit86
    i32 1668050786, label %.loopexit87
    i32 1952807028, label %.loopexit87
  ]

.loopexit87.loopexit:                             ; preds = %.lr.ph.jt69.peel, %.lr.ph.jt69.peel
  br label %.loopexit87

.loopexit87:                                      ; preds = %.loopexit87.loopexit, %.lr.ph.jt66, %.lr.ph.jt66, %.lr.ph, %.lr.ph
  %i.ae = phi ptr [ %i.j, %.lr.ph ], [ %i.j, %.lr.ph ], [ %i.ad, %.lr.ph.jt66 ], [ %i.ad, %.lr.ph.jt66 ], [ %i.x, %.loopexit87.loopexit ] ; 2 uses
  %i.af = phi i32 [ %i.i, %.lr.ph ], [ %i.i, %.lr.ph ], [ %i.ac, %.lr.ph.jt66 ], [ %i.ac, %.lr.ph.jt66 ], [ %i.w, %.loopexit87.loopexit ]
  %.0426681 = phi ptr [ %.04266, %.lr.ph ], [ %.04266, %.lr.ph ], [ %.2.jt66, %.lr.ph.jt66 ], [ %.2.jt66, %.lr.ph.jt66 ], [ %.0426680.ph, %.loopexit87.loopexit ]
  %.pr = load i8, ptr %i.ae, align 1, !tbaa !227
  %i.ag = shl i32 %i.af, 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  switch i8 %.04365, label %.preheader84 [
    i8 69, label %.loopexit88
    i8 67, label %.loopexit88
  ]

.loopexit88:                                      ; preds = %.lr.ph.jt69.peel, %bb.c, %bb.c
  %i.ah = phi ptr [ %i.j, %bb.c ], [ %i.j, %bb.c ], [ %i.x, %.lr.ph.jt69.peel ] ; 3 uses
  %.0426682 = phi ptr [ %.04266, %bb.c ], [ %.04266, %bb.c ], [ %.0426680.ph, %.lr.ph.jt69.peel ]
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !227 ; 2 uses
  %i.aj = icmp eq i8 %i.ai, 40
  %spec.select = select i1 %i.aj, ptr %i.ah, ptr %.0426682
  br label %bb.d

.loopexit153:                                     ; preds = %.lr.ph.jt69.peel, %.preheader84
  %.lcssa141 = phi ptr [ %.ph, %.preheader84 ], [ %i.x, %.lr.ph.jt69.peel ]
  %.lcssa = phi i32 [ %.ph85, %.preheader84 ], [ %i.w, %.lr.ph.jt69.peel ] ; 2 uses
  %.0436583.lcssa = phi i8 [ %.0436583.ph, %.preheader84 ], [ 69, %.lr.ph.jt69.peel ]
  %i.ak = and i32 %.lcssa, 16777215
  %i.al = icmp eq i32 %i.ak, 6909556
  br i1 %i.al, label %.thread, label %.loopexit86

.loopexit86:                                      ; preds = %.lr.ph.jt69.peel, %.lr.ph.jt66, %.loopexit153, %.lr.ph
  %i.am = phi ptr [ %i.j, %.lr.ph ], [ %i.ad, %.lr.ph.jt66 ], [ %.lcssa141, %.loopexit153 ], [ %i.x, %.lr.ph.jt69.peel ] ; 2 uses
  %i.an = phi i32 [ %i.i, %.lr.ph ], [ %i.ac, %.lr.ph.jt66 ], [ %.lcssa, %.loopexit153 ], [ %i.w, %.lr.ph.jt69.peel ]
  %.245 = phi i8 [ 66, %.lr.ph ], [ 66, %.lr.ph.jt66 ], [ %.0436583.lcssa, %.loopexit153 ], [ 66, %.lr.ph.jt69.peel ] ; 2 uses
  %.2 = phi ptr [ %i.j, %.lr.ph ], [ %i.ad, %.lr.ph.jt66 ], [ %.0426680.ph, %.loopexit153 ], [ %i.x, %.lr.ph.jt69.peel ] ; 2 uses
  %i.ao = load i8, ptr %i.am, align 1, !tbaa !227 ; 2 uses
  %.not = icmp eq i8 %i.ao, 0
  br i1 %.not, label %.thread, label %.lr.ph

bb.d:                                             ; preds = %.loopexit88, %.loopexit87
  %i.ap = phi i8 [ %i.ai, %.loopexit88 ], [ %.pr, %.loopexit87 ] ; 2 uses
  %i.aq = phi ptr [ %i.ah, %.loopexit88 ], [ %i.ae, %.loopexit87 ]
  %i.ar = phi i32 [ 1819238912, %.loopexit88 ], [ %i.ag, %.loopexit87 ]
  %.245.jt66 = phi i8 [ 65, %.loopexit88 ], [ 66, %.loopexit87 ] ; 2 uses
  %.2.jt66 = phi ptr [ %spec.select, %.loopexit88 ], [ %.0426681, %.loopexit87 ] ; 4 uses
  %.not.jt66 = icmp eq i8 %i.ap, 0
  br i1 %.not.jt66, label %.thread, label %.lr.ph.jt66

.thread:                                          ; preds = %.loopexit86, %.loopexit153, %bb.d, %bb.b, %bb.a
  %.042.lcssa = phi ptr [ null, %bb.a ], [ %.0426680.ph, %bb.b ], [ %.2.jt66, %bb.d ], [ %.0426680.ph, %.loopexit153 ], [ %.2, %.loopexit86 ] ; 3 uses
  %.346 = phi i8 [ 67, %bb.a ], [ 69, %bb.b ], [ %.245.jt66, %bb.d ], [ 68, %.loopexit153 ], [ %.245, %.loopexit86 ] ; 2 uses
  %.not52 = icmp eq ptr %1, null
  br i1 %.not52, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  store i32 0, ptr %i.a, align 4, !tbaa !5
  %i.as = icmp ult i8 %.346, 67
  br i1 %i.as, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %.not53 = icmp eq ptr %.042.lcssa, null
  br i1 %.not53, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.at = load i8, ptr %.042.lcssa, align 1, !tbaa !227 ; 2 uses
  %.not5472 = icmp eq i8 %i.at, 0
  br i1 %.not5472, label %.loopexit, label %.lr.ph74

.lr.ph74:                                         ; preds = %.preheader, %bb.h
  %i.au = phi i8 [ %i.bc, %bb.h ], [ %i.at, %.preheader ]
  %.473 = phi ptr [ %i.bb, %bb.h ], [ %.042.lcssa, %.preheader ] ; 2 uses
  %i.av = add i8 %i.au, -58
  %.not55 = icmp ult i8 %i.av, -10
  br i1 %.not55, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph74
  %i.aw = call fastcc i32 @sqlite3GetInt32(ptr noundef nonnull %.473, ptr noundef %i.a) ; 0 uses
  %.pre = load i32, ptr %i.a, align 4, !tbaa !5
  %i.ax = sdiv i32 %.pre, 4
  %i.ay = tail call i32 @llvm.smin.i32(i32 %i.ax, i32 254)
  %i.az = trunc i32 %i.ay to i8
  %i.ba = add i8 %i.az, 1
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph74
  %i.bb = getelementptr inbounds nuw i8, ptr %.473, i64 1 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !227 ; 2 uses
  %.not54 = icmp eq i8 %i.bc, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph74, !llvm.loop !3284

.loopexit:                                        ; preds = %bb.h, %bb.f, %.preheader, %bb.g, %bb.e
  %spec.store.select = phi i8 [ 1, %bb.e ], [ 1, %.preheader ], [ 5, %bb.f ], [ %i.ba, %bb.g ], [ 1, %bb.h ]
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10
  store i8 %spec.store.select, ptr %i.bd, align 2, !tbaa !3285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %.thread
  ret i8 %.346
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sqlite3HexToBlob(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 -1, 1073741823) %2) unnamed_addr #0 {
bb.a:
  %i.a = sdiv i32 %2, 2
  %i.b = add nuw nsw i32 %i.a, 1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = tail call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %0, i64 noundef %i.c) ; 8 uses
  %i.e = add nsw i32 %2, -1
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = icmp sgt i32 %2, 1
  br i1 %i.f, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %i.g = zext nneg i32 %i.e to i64                ; 3 uses
  %umax20 = tail call i64 @llvm.umax.i64(i64 %i.g, i64 2)
  %i.h = add nsw i64 %umax20, -1
  %i.i = lshr i64 %i.h, 1
  %i.j = add nuw nsw i64 %i.i, 1                  ; 5 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %umax = tail call i64 @llvm.umax.i64(i64 %i.g, i64 2)
  %i.k = add nsw i64 %umax, -1                    ; 2 uses
  %i.l = lshr i64 %i.k, 1
  %i.m = getelementptr i8, ptr %i.d, i64 %i.l
  %scevgep = getelementptr i8, ptr %i.m, i64 1
  %i.n = and i64 %i.k, -2
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %scevgep19 = getelementptr i8, ptr %i.o, i64 2
  %bound0 = icmp ult ptr %i.d, %scevgep19
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check21 = icmp ult i32 %2, 32
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.j, 12
  %n.vec = and i64 %i.j, 9223372036854775792      ; 5 uses
  %i.p = shl nuw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.q = shl i64 %index, 1                        ; 16 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 10
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 14
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 18
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 22
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 26
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %i.q ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 30
  %i.aw = load i8, ptr %i.r, align 1, !tbaa !227, !alias.scope !3286
  %i.ax = load i8, ptr %i.t, align 1, !tbaa !227, !alias.scope !3286
  %i.ay = load i8, ptr %i.v, align 1, !tbaa !227, !alias.scope !3286
  %i.az = load i8, ptr %i.x, align 1, !tbaa !227, !alias.scope !3286
  %i.ba = load i8, ptr %i.z, align 1, !tbaa !227, !alias.scope !3286
  %i.bb = load i8, ptr %i.ab, align 1, !tbaa !227, !alias.scope !3286
  %i.bc = load i8, ptr %i.ad, align 1, !tbaa !227, !alias.scope !3286
  %i.bd = load i8, ptr %i.af, align 1, !tbaa !227, !alias.scope !3286
  %i.be = load i8, ptr %i.ah, align 1, !tbaa !227, !alias.scope !3286
  %i.bf = load i8, ptr %i.aj, align 1, !tbaa !227, !alias.scope !3286
  %i.bg = load i8, ptr %i.al, align 1, !tbaa !227, !alias.scope !3286
  %i.bh = load i8, ptr %i.an, align 1, !tbaa !227, !alias.scope !3286
  %i.bi = load i8, ptr %i.ap, align 1, !tbaa !227, !alias.scope !3286
  %i.bj = load i8, ptr %i.ar, align 1, !tbaa !227, !alias.scope !3286
  %i.bk = load i8, ptr %i.at, align 1, !tbaa !227, !alias.scope !3286
  %i.bl = load i8, ptr %i.av, align 1, !tbaa !227, !alias.scope !3286
  %i.bm = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %i.bn = insertelement <16 x i8> %i.bm, i8 %i.ax, i64 1
  %i.bo = insertelement <16 x i8> %i.bn, i8 %i.ay, i64 2
  %i.bp = insertelement <16 x i8> %i.bo, i8 %i.az, i64 3
  %i.bq = insertelement <16 x i8> %i.bp, i8 %i.ba, i64 4
  %i.br = insertelement <16 x i8> %i.bq, i8 %i.bb, i64 5
  %i.bs = insertelement <16 x i8> %i.br, i8 %i.bc, i64 6
  %i.bt = insertelement <16 x i8> %i.bs, i8 %i.bd, i64 7
  %i.bu = insertelement <16 x i8> %i.bt, i8 %i.be, i64 8
  %i.bv = insertelement <16 x i8> %i.bu, i8 %i.bf, i64 9
  %i.bw = insertelement <16 x i8> %i.bv, i8 %i.bg, i64 10
  %i.bx = insertelement <16 x i8> %i.bw, i8 %i.bh, i64 11
  %i.by = insertelement <16 x i8> %i.bx, i8 %i.bi, i64 12
  %i.bz = insertelement <16 x i8> %i.by, i8 %i.bj, i64 13
  %i.ca = insertelement <16 x i8> %i.bz, i8 %i.bk, i64 14
  %i.cb = insertelement <16 x i8> %i.ca, i8 %i.bl, i64 15 ; 2 uses
  %i.cc = and <16 x i8> %i.cb, splat (i8 64)
  %i.cd = icmp eq <16 x i8> %i.cc, zeroinitializer
  %i.ce = select <16 x i1> %i.cd, <16 x i8> zeroinitializer, <16 x i8> splat (i8 9)
  %i.cf = add <16 x i8> %i.ce, %i.cb
  %i.cg = shl <16 x i8> %i.cf, splat (i8 4)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.cj = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  %i.ck = getelementptr inbounds nuw i8, ptr %i.w, i64 7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.y, i64 9
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aa, i64 11
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ac, i64 13
  %i.co = getelementptr inbounds nuw i8, ptr %i.ae, i64 15
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ag, i64 17
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ai, i64 19
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ak, i64 21
  %i.cs = getelementptr inbounds nuw i8, ptr %i.am, i64 23
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ao, i64 25
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aq, i64 27
  %i.cv = getelementptr inbounds nuw i8, ptr %i.as, i64 29
  %i.cw = getelementptr inbounds nuw i8, ptr %i.au, i64 31
  %i.cx = load i8, ptr %i.ch, align 1, !tbaa !227, !alias.scope !3286
  %i.cy = load i8, ptr %i.ci, align 1, !tbaa !227, !alias.scope !3286
  %i.cz = load i8, ptr %i.cj, align 1, !tbaa !227, !alias.scope !3286
  %i.da = load i8, ptr %i.ck, align 1, !tbaa !227, !alias.scope !3286
  %i.db = load i8, ptr %i.cl, align 1, !tbaa !227, !alias.scope !3286
  %i.dc = load i8, ptr %i.cm, align 1, !tbaa !227, !alias.scope !3286
  %i.dd = load i8, ptr %i.cn, align 1, !tbaa !227, !alias.scope !3286
  %i.de = load i8, ptr %i.co, align 1, !tbaa !227, !alias.scope !3286
  %i.df = load i8, ptr %i.cp, align 1, !tbaa !227, !alias.scope !3286
  %i.dg = load i8, ptr %i.cq, align 1, !tbaa !227, !alias.scope !3286
  %i.dh = load i8, ptr %i.cr, align 1, !tbaa !227, !alias.scope !3286
  %i.di = load i8, ptr %i.cs, align 1, !tbaa !227, !alias.scope !3286
  %i.dj = load i8, ptr %i.ct, align 1, !tbaa !227, !alias.scope !3286
  %i.dk = load i8, ptr %i.cu, align 1, !tbaa !227, !alias.scope !3286
  %i.dl = load i8, ptr %i.cv, align 1, !tbaa !227, !alias.scope !3286
  %i.dm = load i8, ptr %i.cw, align 1, !tbaa !227, !alias.scope !3286
  %i.dn = insertelement <16 x i8> poison, i8 %i.cx, i64 0
  %i.do = insertelement <16 x i8> %i.dn, i8 %i.cy, i64 1
  %i.dp = insertelement <16 x i8> %i.do, i8 %i.cz, i64 2
  %i.dq = insertelement <16 x i8> %i.dp, i8 %i.da, i64 3
  %i.dr = insertelement <16 x i8> %i.dq, i8 %i.db, i64 4
  %i.ds = insertelement <16 x i8> %i.dr, i8 %i.dc, i64 5
  %i.dt = insertelement <16 x i8> %i.ds, i8 %i.dd, i64 6
  %i.du = insertelement <16 x i8> %i.dt, i8 %i.de, i64 7
  %i.dv = insertelement <16 x i8> %i.du, i8 %i.df, i64 8
  %i.dw = insertelement <16 x i8> %i.dv, i8 %i.dg, i64 9
  %i.dx = insertelement <16 x i8> %i.dw, i8 %i.dh, i64 10
  %i.dy = insertelement <16 x i8> %i.dx, i8 %i.di, i64 11
  %i.dz = insertelement <16 x i8> %i.dy, i8 %i.dj, i64 12
  %i.ea = insertelement <16 x i8> %i.dz, i8 %i.dk, i64 13
  %i.eb = insertelement <16 x i8> %i.ea, i8 %i.dl, i64 14
  %i.ec = insertelement <16 x i8> %i.eb, i8 %i.dm, i64 15 ; 2 uses
  %i.ed = and <16 x i8> %i.ec, splat (i8 64)
  %i.ee = icmp eq <16 x i8> %i.ed, zeroinitializer
  %i.ef = select <16 x i1> %i.ee, <16 x i8> zeroinitializer, <16 x i8> splat (i8 9)
  %i.eg = add <16 x i8> %i.ef, %i.ec
  %i.eh = and <16 x i8> %i.eg, splat (i8 15)
  %i.ei = or disjoint <16 x i8> %i.eh, %i.cg
  %3 = and i64 %index, 9223372036854775792
  %i.ej = getelementptr inbounds nuw i8, ptr %i.d, i64 %3
  store <16 x i8> %i.ei, ptr %i.ej, align 1, !tbaa !227, !alias.scope !3289, !noalias !3286
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ek = icmp eq i64 %index.next, %n.vec
  br i1 %i.ek, label %middle.block, label %vector.body, !llvm.loop !3291

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !886

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.j, 9223372036854775804    ; 4 uses
  %i.el = shl nuw i64 %n.vec23, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 3 uses
  %i.em = shl i64 %index24, 1                     ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %i.em ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 %i.em ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 %i.em ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 %i.em ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 6
  %i.eu = load i8, ptr %i.en, align 1, !tbaa !227, !alias.scope !3286
  %i.ev = load i8, ptr %i.ep, align 1, !tbaa !227, !alias.scope !3286
  %i.ew = load i8, ptr %i.er, align 1, !tbaa !227, !alias.scope !3286
  %i.ex = load i8, ptr %i.et, align 1, !tbaa !227, !alias.scope !3286
  %i.ey = insertelement <4 x i8> poison, i8 %i.eu, i64 0
  %i.ez = insertelement <4 x i8> %i.ey, i8 %i.ev, i64 1
  %i.fa = insertelement <4 x i8> %i.ez, i8 %i.ew, i64 2
  %i.fb = insertelement <4 x i8> %i.fa, i8 %i.ex, i64 3 ; 2 uses
  %i.fc = and <4 x i8> %i.fb, splat (i8 64)
  %i.fd = icmp eq <4 x i8> %i.fc, zeroinitializer
  %i.fe = select <4 x i1> %i.fd, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.ff = add <4 x i8> %i.fe, %i.fb
  %i.fg = shl <4 x i8> %i.ff, splat (i8 4)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eq, i64 5
  %i.fk = getelementptr inbounds nuw i8, ptr %i.es, i64 7
  %i.fl = load i8, ptr %i.fh, align 1, !tbaa !227, !alias.scope !3286
  %i.fm = load i8, ptr %i.fi, align 1, !tbaa !227, !alias.scope !3286
  %i.fn = load i8, ptr %i.fj, align 1, !tbaa !227, !alias.scope !3286
  %i.fo = load i8, ptr %i.fk, align 1, !tbaa !227, !alias.scope !3286
  %i.fp = insertelement <4 x i8> poison, i8 %i.fl, i64 0
  %i.fq = insertelement <4 x i8> %i.fp, i8 %i.fm, i64 1
  %i.fr = insertelement <4 x i8> %i.fq, i8 %i.fn, i64 2
  %i.fs = insertelement <4 x i8> %i.fr, i8 %i.fo, i64 3 ; 2 uses
  %i.ft = and <4 x i8> %i.fs, splat (i8 64)
  %i.fu = icmp eq <4 x i8> %i.ft, zeroinitializer
  %i.fv = select <4 x i1> %i.fu, <4 x i8> zeroinitializer, <4 x i8> splat (i8 9)
  %i.fw = add <4 x i8> %i.fv, %i.fs
  %i.fx = and <4 x i8> %i.fw, splat (i8 15)
  %i.fy = or disjoint <4 x i8> %i.fx, %i.fg
  %4 = and i64 %index24, 9223372036854775804
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 %4
  store <4 x i8> %i.fy, ptr %i.fz, align 1, !tbaa !227, !alias.scope !3289, !noalias !3286
  %index.next25 = add nuw i64 %index24, 4         ; 2 uses
  %i.ga = icmp eq i64 %index.next25, %n.vec23
  br i1 %i.ga, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3292

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %i.j, %n.vec23
  br i1 %cmp.n26, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.el, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv ; 2 uses
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !227 ; 2 uses
  %i.gd = and i8 %i.gc, 64
  %.not.i = icmp eq i8 %i.gd, 0
  %i.ge = select i1 %.not.i, i8 0, i8 9
  %i.gf = add i8 %i.ge, %i.gc
  %i.gg = shl i8 %i.gf, 4
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gb, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !227 ; 2 uses
  %i.gj = and i8 %i.gi, 64
  %.not.i16 = icmp eq i8 %i.gj, 0
  %i.gk = select i1 %.not.i16, i8 0, i8 9
  %i.gl = add i8 %i.gk, %i.gi
  %i.gm = and i8 %i.gl, 15
  %i.gn = or disjoint i8 %i.gm, %i.gg
  %i.go = lshr exact i64 %indvars.iv, 1
  %i.gp = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.go
  store i8 %i.gn, ptr %i.gp, align 1, !tbaa !227
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.gq = icmp samesign ult i64 %indvars.iv.next, %i.g
  br i1 %i.gq, label %.lr.ph, label %._crit_edge.loopexit.loopexit, !llvm.loop !3293

._crit_edge.loopexit.loopexit:                    ; preds = %.lr.ph
  %i.gr = lshr exact i64 %indvars.iv.next, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %middle.block, %vec.epilog.middle.block, %._crit_edge.loopexit.loopexit, %.preheader
  %.0.lcssa = phi i64 [ 0, %.preheader ], [ %n.vec23, %vec.epilog.middle.block ], [ %n.vec, %middle.block ], [ %i.gr, %._crit_edge.loopexit.loopexit ]
  %i.gs = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.lcssa
  store i8 0, ptr %i.gs, align 1, !tbaa !227
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  ret ptr %i.d
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @sqlite3VdbeAddOp2(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -1, 511) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !185  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !943
  %.not.i = icmp sgt i32 %i.d, %i.b
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0), !inline_history !977
  br label %sqlite3VdbeAddOp3.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.i ; 7 uses
  %i.k = trunc i32 %1 to i8
  store i8 %i.k, ptr %i.j, align 8, !tbaa !563
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.l, align 2, !tbaa !587
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %2, ptr %i.m, align 4, !tbaa !584
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %3, ptr %i.n, align 8, !tbaa !585
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 0, ptr %i.o, align 4, !tbaa !586
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !227
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.q, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @sqlite3VdbeAddOp3(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !185  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !943
  %.not = icmp sgt i32 %i.d, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.i ; 7 uses
  %i.k = trunc i32 %1 to i8
  store i8 %i.k, ptr %i.j, align 8, !tbaa !563
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.l, align 2, !tbaa !587
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %2, ptr %i.m, align 4, !tbaa !584
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %3, ptr %i.n, align 8, !tbaa !585
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %4, ptr %i.o, align 4, !tbaa !586
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !227
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.q, align 1, !tbaa !566
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.c ]
  ret i32 %.0
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @growOp3(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 148
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.b, %bb.a
  %i.c = tail call fastcc i32 @growOpArray(ptr noundef %0)
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %sqlite3VdbeAddOp3.exit

bb.b:                                             ; preds = %tailrecurse
  %i.d = load i32, ptr %i.a, align 8, !tbaa !185  ; 4 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !943
  %.not.i = icmp sgt i32 %i.e, %i.d
  br i1 %.not.i, label %bb.c, label %tailrecurse

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i32 %i.d, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !185
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !184
  %i.i = sext i32 %i.d to i64
  %i.j = getelementptr inbounds [24 x i8], ptr %i.h, i64 %i.i ; 7 uses
  %i.k = trunc i32 %1 to i8
  store i8 %i.k, ptr %i.j, align 8, !tbaa !563
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.l, align 2, !tbaa !587
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %2, ptr %i.m, align 4, !tbaa !584
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %3, ptr %i.n, align 8, !tbaa !585
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  store i32 %4, ptr %i.o, align 4, !tbaa !586
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr null, ptr %i.p, align 8, !tbaa !227
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.q, align 1, !tbaa !566
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %tailrecurse, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 1, %tailrecurse ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @growOpArray(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !975  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !943  ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  %i.e = sext i32 %i.d to i64
  %i.f = shl nsw i64 %i.e, 1
  %i.g = select i1 %.not, i64 42, i64 %i.f        ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !651  ; 16 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 156
  %i.j = load i32, ptr %i.i, align 4, !tbaa !5
  %i.k = sext i32 %i.j to i64
  %i.l = icmp sgt i64 %i.g, %i.k
  br i1 %i.l, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@fts3InitVtab:bb.a
  %i.ads = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.adt = add nsw i64 %i.ads, -1
  store i64 %i.adt, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.adu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.adu(ptr noundef nonnull %i.t) #59, !inline_history !270
  %i.adv = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i369 = icmp eq ptr %i.adv, null
  br i1 %.not.i4.i369, label %sqlite3_free.exit370, label %bb.fc

bb.fc:                                            ; preds = %sqlite3_mutex_enter.exit.i368
  %i.adw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.adw(ptr noundef nonnull %i.adv) #59, !inline_history !271
  br label %sqlite3_free.exit370

bb.fd:                                            ; preds = %bb.ez
  %i.adx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.adx(ptr noundef nonnull %i.t) #59, !inline_history !270
  br label %sqlite3_free.exit370

sqlite3_free.exit370:                             ; preds = %sqlite3_mutex_enter.exit.i368, %bb.fc, %bb.fd
  %i.ady = load ptr, ptr %i.j, align 8, !tbaa !251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  %i.adz = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.1534, ptr noundef %i.ady, ptr noundef nonnull %.3229), !inline_history !5615 ; 5 uses
  %.not.i371 = icmp eq ptr %i.adz, null
  br i1 %.not.i371, label %.thread650, label %bb.fe

bb.fe:                                            ; preds = %sqlite3_free.exit370
  %i.aea = call fastcc i32 @sqlite3LockAndPrepare(ptr noundef %1, ptr noundef nonnull %i.adz, i32 noundef -1, i32 noundef 0, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef null), !inline_history !5616 ; 2 uses
  %.not49.i = icmp eq i32 %i.aea, 0               ; 2 uses
  br i1 %.not49.i, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aeb = call ptr @sqlite3_errmsg(ptr noundef %1), !inline_history !5615
  call void (ptr, ptr, ...) @sqlite3Fts3ErrMsg(ptr noundef %6, ptr noundef nonnull @.str.30, ptr noundef %i.aeb), !inline_history !5615
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.aec = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i.i372 = icmp eq i32 %i.aec, 0
  br i1 %.not.i.i372, label %bb.fk, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.aed = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aed, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aee = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  call void %i.aee(ptr noundef nonnull %i.aed) #59, !inline_history !5617
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.fi, %bb.fh
  %i.aef = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.aeg = call i32 %i.aef(ptr noundef nonnull %i.adz) #59, !inline_history !5618
  %i.aeh = sext i32 %i.aeg to i64
  %i.aei = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.aej = sub nsw i64 %i.aei, %i.aeh
  store i64 %i.aej, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.aek = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.ael = add nsw i64 %i.aek, -1
  store i64 %i.ael, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.aem = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.aem(ptr noundef nonnull %i.adz) #59, !inline_history !5619
  %i.aen = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.aen, null
  br i1 %.not.i4.i.i, label %sqlite3_free.exit.i, label %bb.fj

bb.fj:                                            ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.aeo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  call void %i.aeo(ptr noundef nonnull %i.aen) #59, !inline_history !5620
  br label %sqlite3_free.exit.i

bb.fk:                                            ; preds = %bb.fg
  %i.aep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  call void %i.aep(ptr noundef nonnull %i.adz) #59, !inline_history !5619
  br label %sqlite3_free.exit.i

sqlite3_free.exit.i:                              ; preds = %bb.fk, %bb.fj, %sqlite3_mutex_enter.exit.i.i
  br i1 %.not49.i, label %bb.fl, label %.thread650

bb.fl:                                            ; preds = %sqlite3_free.exit.i
  %i.aeq = load ptr, ptr %i.c, align 8, !tbaa !511 ; 5 uses
  %i.aer = icmp eq ptr %i.aeq, null
  br i1 %i.aer, label %._crit_edge.i, label %sqlite3_column_count.exit.i

sqlite3_column_count.exit.i:                      ; preds = %bb.fl
  %i.aes = getelementptr inbounds nuw i8, ptr %i.aeq, i64 192
  %i.aet = load i16, ptr %i.aes, align 8, !tbaa !611 ; 2 uses
  %i.aeu = zext i16 %i.aet to i32                 ; 2 uses
  %.not64.i = icmp eq i16 %i.aet, 0
  br i1 %.not64.i, label %._crit_edge.i, label %.lr.ph.i373

.lr.ph.i373:                                      ; preds = %sqlite3_column_count.exit.i, %.lr.ph.i373
  %.04059.i = phi i64 [ %i.aey, %.lr.ph.i373 ], [ 0, %sqlite3_column_count.exit.i ]
  %.04258.i = phi i32 [ %i.aez, %.lr.ph.i373 ], [ 0, %sqlite3_column_count.exit.i ] ; 2 uses
  %i.aev = call fastcc ptr @columnName(ptr noundef nonnull readonly %i.aeq, i32 noundef %.04258.i, i32 noundef 0, i32 noundef 0), !inline_history !5615
  %i.aew = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aev) #60, !inline_history !5615
  %i.aex = add i64 %.04059.i, 1
  %i.aey = add i64 %i.aex, %i.aew                 ; 2 uses
  %i.aez = add nuw nsw i32 %.04258.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aez, %i.aeu
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i373, !llvm.loop !5621

._crit_edge.i:                                    ; preds = %.lr.ph.i373, %sqlite3_column_count.exit.i, %bb.fl
  %.not6476.i = phi i1 [ true, %sqlite3_column_count.exit.i ], [ true, %bb.fl ], [ false, %.lr.ph.i373 ]
  %.0.i75.i = phi i32 [ 0, %sqlite3_column_count.exit.i ], [ 0, %bb.fl ], [ %i.aeu, %.lr.ph.i373 ] ; 6 uses
  %.040.lcssa.i = phi i64 [ 0, %sqlite3_column_count.exit.i ], [ 0, %bb.fl ], [ %i.aey, %.lr.ph.i373 ] ; 2 uses
  %i.afa = zext nneg i32 %.0.i75.i to i64         ; 6 uses
  %i.afb = call i32 @sqlite3_initialize(), !inline_history !5622
  %.not.i50.i = icmp eq i32 %i.afb, 0
  br i1 %.not.i50.i, label %sqlite3_malloc64.exit.i, label %fts3ContentColumns.exit

sqlite3_malloc64.exit.i:                          ; preds = %._crit_edge.i
  %i.afc = shl nuw nsw i64 %i.afa, 3
  %i.afd = add i64 %i.afc, %.040.lcssa.i
  %i.afe = call fastcc ptr @sqlite3Malloc(i64 noundef %i.afd), !inline_history !5622 ; 5 uses
  %i.aff = icmp eq ptr %i.afe, null               ; 2 uses
  %brmerge.i = or i1 %.not6476.i, %i.aff
  %.mux77.i = select i1 %i.aff, i32 7, i32 0
  br i1 %brmerge.i, label %fts3ContentColumns.exit, label %.lr.ph63.preheader.i

.lr.ph63.preheader.i:                             ; preds = %sqlite3_malloc64.exit.i
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.afe, i64 %i.afa
  br label %.lr.ph63.i

.lr.ph63.i:                                       ; preds = %.lr.ph63.i, %.lr.ph63.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph63.preheader.i ], [ %indvars.iv.next.i, %.lr.ph63.i ] ; 3 uses
  %.04161.i = phi ptr [ %i.afg, %.lr.ph63.preheader.i ], [ %i.afn, %.lr.ph63.i ] ; 3 uses
  %i.afh = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.afi = call fastcc ptr @columnName(ptr noundef readonly %i.aeq, i32 noundef %i.afh, i32 noundef 0, i32 noundef 0), !inline_history !5615 ; 2 uses
  %i.afj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.afi) #60, !inline_history !5615
  %i.afk = shl i64 %i.afj, 32
  %sext.i = add i64 %i.afk, 4294967296
  %i.afl = ashr exact i64 %sext.i, 32             ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04161.i, ptr nonnull align 1 %i.afi, i64 %i.afl, i1 false)
  %i.afm = getelementptr inbounds nuw [8 x i8], ptr %i.afe, i64 %indvars.iv.i
  store ptr %.04161.i, ptr %i.afm, align 8, !tbaa !251
  %i.afn = getelementptr inbounds i8, ptr %.04161.i, i64 %i.afl
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next.i, %i.afa
  br i1 %exitcond67.not.i, label %fts3ContentColumns.exit, label %.lr.ph63.i, !llvm.loop !5623

.thread650:                                       ; preds = %sqlite3_free.exit370, %sqlite3_free.exit.i
  %.2.i.ph = phi i32 [ 7, %sqlite3_free.exit370 ], [ %i.aea, %sqlite3_free.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  store i32 %.2.i.ph, ptr %i.d, align 4, !tbaa !5
  br label %bb.il

fts3ContentColumns.exit:                          ; preds = %.lr.ph63.i, %._crit_edge.i, %sqlite3_malloc64.exit.i
  %.0.i5157.i = phi ptr [ %i.afe, %sqlite3_malloc64.exit.i ], [ null, %._crit_edge.i ], [ %i.afe, %.lr.ph63.i ] ; 9 uses
  %.1.i = phi i32 [ %.mux77.i, %sqlite3_malloc64.exit.i ], [ 7, %._crit_edge.i ], [ 0, %.lr.ph63.i ] ; 3 uses
  %i.afo = call i32 @sqlite3_finalize(ptr noundef %i.aeq), !inline_history !5615 ; 0 uses
  %i.afp = trunc i64 %.040.lcssa.i to i32         ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #59
  store i32 %.1.i, ptr %i.d, align 4, !tbaa !5
  %i.afq = icmp eq i32 %.1.i, 0
  %i.afr = icmp ne ptr %.3224, null
  %or.cond5 = select i1 %i.afq, i1 %i.afr, i1 false
  br i1 %or.cond5, label %.preheader764, label %thread-pre-split

.preheader764:                                    ; preds = %fts3ContentColumns.exit
  %.not869 = icmp eq i32 %.0.i75.i, 0
  br i1 %.not869, label %thread-pre-split.thread.thread, label %.lr.ph842

.lr.ph842:                                        ; preds = %.preheader764, %sqlite3_stricmp.exit.thread
  %indvars.iv951 = phi i64 [ %indvars.iv.next952, %sqlite3_stricmp.exit.thread ], [ 0, %.preheader764 ] ; 7 uses
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %.0.i5157.i, i64 %indvars.iv951
  %i.aft = load ptr, ptr %i.afs, align 8, !tbaa !251 ; 2 uses
  %i.afu = icmp eq ptr %i.aft, null
  br i1 %i.afu, label %sqlite3_stricmp.exit.thread, label %.preheader.i374

.preheader.i374:                                  ; preds = %.lr.ph842, %bb.fo
  %.013.i.i = phi ptr [ %i.agr, %bb.fo ], [ %i.aft, %.lr.ph842 ] ; 2 uses
  %.0.i.i = phi ptr [ %i.agq, %bb.fo ], [ %.3224, %.lr.ph842 ] ; 2 uses
  %i.afv = load i8, ptr %.0.i.i, align 1, !tbaa !227 ; 3 uses
  %i.afw = load i8, ptr %.013.i.i, align 1, !tbaa !227 ; 2 uses
  %i.afx = icmp eq i8 %i.afv, %i.afw
  br i1 %i.afx, label %bb.fm, label %bb.fn

bb.fm:                                            ; preds = %.preheader.i374
  %i.afy = icmp eq i8 %i.afv, 0
  br i1 %i.afy, label %.critedge.preheader, label %bb.fo

.critedge.preheader:                              ; preds = %bb.fm
  %i.afz = trunc nuw nsw i64 %indvars.iv951 to i32
  %i.aga = icmp samesign ugt i32 %.0.i75.i, %i.afz
  br i1 %i.aga, label %.critedge.preheader1404, label %.critedge._crit_edge

.critedge.preheader1404:                          ; preds = %.critedge.preheader
  %i.agb = sub nsw i64 %i.afa, %indvars.iv951     ; 3 uses
  %min.iters.check = icmp ult i64 %i.agb, 4
  br i1 %min.iters.check, label %.critedge.preheader1449, label %vector.ph

vector.ph:                                        ; preds = %.critedge.preheader1404
  %n.vec = and i64 %i.agb, -4                     ; 3 uses
  %i.agc = add i64 %indvars.iv951, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.agd = add i64 %indvars.iv951, %index         ; 2 uses
  %i.age = getelementptr inbounds nuw [8 x i8], ptr %.0.i5157.i, i64 %i.agd ; 2 uses
  %i.agf = getelementptr inbounds nuw i8, ptr %i.age, i64 8
  %i.agg = getelementptr inbounds nuw i8, ptr %i.age, i64 24
  %wide.load = load <2 x ptr>, ptr %i.agf, align 8, !tbaa !251
  %wide.load1429 = load <2 x ptr>, ptr %i.agg, align 8, !tbaa !251
  %i.agh = getelementptr inbounds nuw [8 x i8], ptr %.0.i5157.i, i64 %i.agd ; 2 uses
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 16
  store <2 x ptr> %wide.load, ptr %i.agh, align 8, !tbaa !251
  store <2 x ptr> %wide.load1429, ptr %i.agi, align 8, !tbaa !251
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.agj = icmp eq i64 %index.next, %n.vec
  br i1 %i.agj, label %middle.block, label %vector.body, !llvm.loop !5624

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.agb, %n.vec
  br i1 %cmp.n, label %.critedge._crit_edge, label %.critedge.preheader1449

.critedge.preheader1449:                          ; preds = %.critedge.preheader1404, %middle.block
  %indvars.iv957.ph = phi i64 [ %indvars.iv951, %.critedge.preheader1404 ], [ %i.agc, %middle.block ]
  br label %.critedge

bb.fn:                                            ; preds = %.preheader.i374
  %i.agk = zext i8 %i.afv to i64
  %i.agl = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.agk
  %i.agm = load i8, ptr %i.agl, align 1, !tbaa !227
  %i.agn = zext i8 %i.afw to i64
  %i.ago = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.agn
  %i.agp = load i8, ptr %i.ago, align 1, !tbaa !227
  %.not.i.i375 = icmp eq i8 %i.agm, %i.agp
  br i1 %.not.i.i375, label %bb.fo, label %sqlite3_stricmp.exit.thread

bb.fo:                                            ; preds = %bb.fn, %bb.fm
  %i.agq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.agr = getelementptr inbounds nuw i8, ptr %.013.i.i, i64 1
  br label %.preheader.i374

.critedge:                                        ; preds = %.critedge.preheader1449, %.critedge
  %indvars.iv957 = phi i64 [ %indvars.iv.next958, %.critedge ], [ %indvars.iv957.ph, %.critedge.preheader1449 ] ; 2 uses
  %indvars.iv.next958 = add nuw nsw i64 %indvars.iv957, 1 ; 3 uses
  %i.ags = getelementptr inbounds nuw [8 x i8], ptr %.0.i5157.i, i64 %indvars.iv.next958
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !251
  %i.agu = getelementptr inbounds nuw [8 x i8], ptr %.0.i5157.i, i64 %indvars.iv957
  store ptr %i.agt, ptr %i.agu, align 8, !tbaa !251
  %exitcond961.not = icmp eq i64 %indvars.iv.next958, %i.afa
  br i1 %exitcond961.not, label %.critedge._crit_edge, label %.critedge, !llvm.loop !5625

.critedge._crit_edge:                             ; preds = %.critedge, %middle.block, %.critedge.preheader
  %i.agv = add nsw i32 %.0.i75.i, -1
  br label %thread-pre-split.thread

sqlite3_stricmp.exit.thread:                      ; preds = %bb.fn, %.lr.ph842
  %indvars.iv.next952 = add nuw nsw i64 %indvars.iv951, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next952, %i.afa
  br i1 %exitcond.not, label %thread-pre-split.thread, label %.lr.ph842, !llvm.loop !5626

thread-pre-split:                                 ; preds = %._crit_edge, %sqlite3_free.exit365.thread-pre-split_crit_edge, %fts3ContentColumns.exit
  %i.agw = phi i32 [ %.1.i, %fts3ContentColumns.exit ], [ %i.abz, %._crit_edge ], [ %.pr.pre, %sqlite3_free.exit365.thread-pre-split_crit_edge ]
  %.2566 = phi i32 [ %i.afp, %fts3ContentColumns.exit ], [ %.1565, %._crit_edge ], [ %.1565, %sqlite3_free.exit365.thread-pre-split_crit_edge ]
  %.2561 = phi i32 [ %.0.i75.i, %fts3ContentColumns.exit ], [ %.1560, %._crit_edge ], [ %.1560, %sqlite3_free.exit365.thread-pre-split_crit_edge ]
  %.0556 = phi ptr [ %.0.i5157.i, %fts3ContentColumns.exit ], [ %i.t, %._crit_edge ], [ %i.t, %sqlite3_free.exit365.thread-pre-split_crit_edge ] ; 2 uses
  %.4240 = phi ptr [ null, %fts3ContentColumns.exit ], [ %.3239, %._crit_edge ], [ null, %sqlite3_free.exit365.thread-pre-split_crit_edge ] ; 2 uses
  %.4235 = phi ptr [ null, %fts3ContentColumns.exit ], [ %.3234, %._crit_edge ], [ null, %sqlite3_free.exit365.thread-pre-split_crit_edge ] ; 2 uses
  %.not263 = icmp eq i32 %i.agw, 0
  br i1 %.not263, label %thread-pre-split.thread, label %bb.il

thread-pre-split.thread:                          ; preds = %sqlite3_stricmp.exit.thread, %.critedge._crit_edge, %thread-pre-split
  %.42351332 = phi ptr [ %.4235, %thread-pre-split ], [ null, %.critedge._crit_edge ], [ null, %sqlite3_stricmp.exit.thread ] ; 2 uses
  %.42401331 = phi ptr [ %.4240, %thread-pre-split ], [ null, %.critedge._crit_edge ], [ null, %sqlite3_stricmp.exit.thread ] ; 2 uses
  %.05561330 = phi ptr [ %.0556, %thread-pre-split ], [ %.0.i5157.i, %.critedge._crit_edge ], [ %.0.i5157.i, %sqlite3_stricmp.exit.thread ] ; 2 uses
  %.25611329 = phi i32 [ %.2561, %thread-pre-split ], [ %i.agv, %.critedge._crit_edge ], [ %.0.i75.i, %sqlite3_stricmp.exit.thread ] ; 2 uses
  %.25661328 = phi i32 [ %.2566, %thread-pre-split ], [ %i.afp, %.critedge._crit_edge ], [ %i.afp, %sqlite3_stricmp.exit.thread ]
  %i.agx = icmp eq i32 %.25611329, 0
  br i1 %i.agx, label %thread-pre-split.thread.thread, label %bb.fp

thread-pre-split.thread.thread:                   ; preds = %bb.c, %.preheader764, %thread-pre-split.thread
  %.0211.lcssa130813221375 = phi i1 [ %i.acd, %thread-pre-split.thread ], [ true, %bb.c ], [ %i.acd, %.preheader764 ]
  %.0215.lcssa130613231373 = phi i32 [ %.3218, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.3218, %.preheader764 ]
  %.0221.lcssa130313241371 = phi ptr [ %.3224, %thread-pre-split.thread ], [ null, %bb.c ], [ %.3224, %.preheader764 ]
  %.0226.lcssa130113251369 = phi ptr [ %.3229, %thread-pre-split.thread ], [ null, %bb.c ], [ %.3229, %.preheader764 ]
  %.0242.lcssa129913261367 = phi ptr [ %.3245, %thread-pre-split.thread ], [ null, %bb.c ], [ %.3245, %.preheader764 ]
  %.0247.lcssa129613271365 = phi i8 [ %.3250, %thread-pre-split.thread ], [ 0, %bb.c ], [ %.3250, %.preheader764 ]
  %.055613301360 = phi ptr [ %.05561330, %thread-pre-split.thread ], [ %i.t, %bb.c ], [ %.0.i5157.i, %.preheader764 ] ; 2 uses
  %.424013311359 = phi ptr [ %.42401331, %thread-pre-split.thread ], [ null, %bb.c ], [ null, %.preheader764 ]
  %.423513321357 = phi ptr [ %.42351332, %thread-pre-split.thread ], [ null, %bb.c ], [ null, %.preheader764 ]
  store ptr @.str.1524, ptr %.055613301360, align 8, !tbaa !251
  br label %bb.fp

bb.fp:                                            ; preds = %thread-pre-split.thread.thread, %thread-pre-split.thread
  %.0211.lcssa130813221374 = phi i1 [ %.0211.lcssa130813221375, %thread-pre-split.thread.thread ], [ %i.acd, %thread-pre-split.thread ]
  %.0215.lcssa130613231372 = phi i32 [ %.0215.lcssa130613231373, %thread-pre-split.thread.thread ], [ %.3218, %thread-pre-split.thread ] ; 9 uses
  %.0221.lcssa130313241370 = phi ptr [ %.0221.lcssa130313241371, %thread-pre-split.thread.thread ], [ %.3224, %thread-pre-split.thread ] ; 4 uses
  %.0226.lcssa130113251368 = phi ptr [ %.0226.lcssa130113251369, %thread-pre-split.thread.thread ], [ %.3229, %thread-pre-split.thread ] ; 4 uses
  %.0242.lcssa129913261366 = phi ptr [ %.0242.lcssa129913261367, %thread-pre-split.thread.thread ], [ %.3245, %thread-pre-split.thread ] ; 10 uses
  %.0247.lcssa129613271364 = phi i8 [ %.0247.lcssa129613271365, %thread-pre-split.thread.thread ], [ %.3250, %thread-pre-split.thread ]
  %.055613301361 = phi ptr [ %.055613301360, %thread-pre-split.thread.thread ], [ %.05561330, %thread-pre-split.thread ] ; 6 uses
  %.424013311358 = phi ptr [ %.424013311359, %thread-pre-split.thread.thread ], [ %.42401331, %thread-pre-split.thread ] ; 9 uses
  %.423513321356 = phi ptr [ %.423513321357, %thread-pre-split.thread.thread ], [ %.42351332, %thread-pre-split.thread ] ; 9 uses
  %.3567 = phi i32 [ 8, %thread-pre-split.thread.thread ], [ %.25661328, %thread-pre-split.thread ]
  %.3562 = phi i32 [ 1, %thread-pre-split.thread.thread ], [ %.25611329, %thread-pre-split.thread ] ; 5 uses
  %i.agy = load ptr, ptr %i.e, align 8, !tbaa !5264
  %i.agz = icmp eq ptr %i.agy, null
  br i1 %i.agz, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  %i.aha = call fastcc i32 @sqlite3Fts3InitTokenizer(ptr noundef %2, ptr noundef nonnull @.str.1398, ptr noundef %i.e, ptr noundef %6) ; 2 uses
  store i32 %i.aha, ptr %i.d, align 4, !tbaa !5
  %.not264 = icmp eq i32 %i.aha, 0
  br i1 %.not264, label %bb.fr, label %bb.il

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %.not.i378 = icmp ne ptr %.0242.lcssa129913261366, null ; 2 uses
  br i1 %.not.i378, label %bb.fs, label %.loopexit.i

bb.fs:                                            ; preds = %bb.fr
  %i.ahb = load i8, ptr %.0242.lcssa129913261366, align 1, !tbaa !227 ; 2 uses
  %.not43.i = icmp eq i8 %i.ahb, 0
  br i1 %.not43.i, label %.loopexit.i, label %.preheader76.i

.preheader76.i:                                   ; preds = %bb.fs, %bb.fu
  %i.ahc = phi i8 [ %.pr.i, %bb.fu ], [ %i.ahb, %bb.fs ]
  %.031.i = phi i32 [ %.132.i, %bb.fu ], [ 2, %bb.fs ] ; 3 uses
  %.030.i = phi ptr [ %i.ahe, %bb.fu ], [ %.0242.lcssa129913261366, %bb.fs ]
  switch i8 %i.ahc, label %bb.fu [
    i8 0, label %.loopexit.i
    i8 44, label %bb.ft
  ]

bb.ft:                                            ; preds = %.preheader76.i
  %i.ahd = add nsw i32 %.031.i, 1
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ft, %.preheader76.i
  %.132.i = phi i32 [ %i.ahd, %bb.ft ], [ %.031.i, %.preheader76.i ]
  %i.ahe = getelementptr inbounds nuw i8, ptr %.030.i, i64 1 ; 2 uses
  %.pr.i = load i8, ptr %i.ahe, align 1, !tbaa !227
  br label %.preheader76.i, !llvm.loop !5627

.loopexit.i:                                      ; preds = %.preheader76.i, %bb.fs, %bb.fr
  %.233.i = phi i32 [ 1, %bb.fr ], [ 1, %bb.fs ], [ %.031.i, %.preheader76.i ] ; 4 uses
  %i.ahf = sext i32 %.233.i to i64
  %i.ahg = mul nsw i64 %i.ahf, 40                 ; 2 uses
  %i.ahh = call i32 @sqlite3_initialize(), !inline_history !5628
  %.not.i.i379 = icmp eq i32 %i.ahh, 0
  br i1 %.not.i.i379, label %sqlite3_malloc64.exit.i381, label %fts3PrefixParameter.exit.thread

sqlite3_malloc64.exit.i381:                       ; preds = %.loopexit.i
  %i.ahi = call fastcc ptr @sqlite3Malloc(i64 noundef %i.ahg), !inline_history !5628 ; 6 uses
  %.not45.i = icmp eq ptr %i.ahi, null
  br i1 %.not45.i, label %fts3PrefixParameter.exit.thread, label %bb.fv

bb.fv:                                            ; preds = %sqlite3_malloc64.exit.i381
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ahi, i8 0, i64 %i.ahg, i1 false)
  %.not4779.i = icmp sgt i32 %.233.i, 1
  %or.cond.i = select i1 %.not.i378, i1 %.not4779.i, i1 false
  br i1 %or.cond.i, label %.lr.ph.i382, label %fts3PrefixParameter.exit.thread

.lr.ph.i382:                                      ; preds = %bb.fv, %bb.ga
  %.082.i = phi i32 [ %.1.i383, %bb.ga ], [ 1, %bb.fv ] ; 3 uses
  %.381.i = phi i32 [ %.4.i, %bb.ga ], [ %.233.i, %bb.fv ] ; 2 uses
  %.05180.i = phi ptr [ %i.aif, %bb.ga ], [ %.0242.lcssa129913261366, %bb.fv ] ; 4 uses
  %i.ahj = load i8, ptr %.05180.i, align 1, !tbaa !227 ; 2 uses
  %i.ahk = add i8 %i.ahj, -48
  %or.cond18.i.i.i = icmp ult i8 %i.ahk, 10
  br i1 %or.cond18.i.i.i, label %.lr.ph.i.i.i, label %bb.gb

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i382, %bb.fw
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.fw ], [ 0, %.lr.ph.i382 ]
  %i.ahl = phi i8 [ %i.ahr, %bb.fw ], [ %i.ahj, %.lr.ph.i382 ]
  %.01219.i.i.i = phi i64 [ %i.aho, %bb.fw ], [ 0, %.lr.ph.i382 ]
  %i.ahm = mul i64 %.01219.i.i.i, 10
  %narrow.i.i.i = add nsw i8 %i.ahl, -48
  %i.ahn = zext nneg i8 %narrow.i.i.i to i64
  %i.aho = add nuw nsw i64 %i.ahm, %i.ahn         ; 5 uses
  %i.ahp = icmp ugt i64 %i.aho, 2147483647
  br i1 %i.ahp, label %.thread.i, label %bb.fw

bb.fw:                                            ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 3 uses
  %i.ahq = getelementptr inbounds nuw i8, ptr %.05180.i, i64 %indvars.iv.next.i.i.i
  %i.ahr = load i8, ptr %i.ahq, align 1, !tbaa !227 ; 2 uses
  %i.ahs = add i8 %i.ahr, -48
  %or.cond.i.i.i = icmp ult i8 %i.ahs, 10
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %sqlite3Fts3ReadInt.exit.i.i, !llvm.loop !5629

sqlite3Fts3ReadInt.exit.i.i:                      ; preds = %bb.fw
  %i.aht = trunc nuw nsw i64 %i.aho to i32
  %i.ahu = icmp samesign ugt i64 %i.aho, 10000000
  %sext.i.i = shl i64 %indvars.iv.next.i.i.i, 32
  %i.ahv = ashr exact i64 %sext.i.i, 32           ; 2 uses
  br i1 %i.ahu, label %.thread.i, label %bb.fx

.thread.i:                                        ; preds = %.lr.ph.i.i.i, %sqlite3Fts3ReadInt.exit.i.i
  %.013.i1013.i.ph.i = phi i64 [ %i.ahv, %sqlite3Fts3ReadInt.exit.i.i ], [ -1, %.lr.ph.i.i.i ]
  %i.ahw = getelementptr inbounds i8, ptr %.05180.i, i64 %.013.i1013.i.ph.i
  br label %bb.fy

bb.fx:                                            ; preds = %sqlite3Fts3ReadInt.exit.i.i
  %i.ahx = getelementptr inbounds i8, ptr %.05180.i, i64 %i.ahv ; 2 uses
  %i.ahy = icmp eq i64 %i.aho, 0
  br i1 %i.ahy, label %bb.fy, label %bb.fz
end_hunk_3
begin_hunk_4_@ChooseLeaf:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  %i.hw = mul nuw nsw i64 %indvars.iv135, %i.hl
  %i.hx = getelementptr i8, ptr %i.aj, i64 %i.hw  ; 9 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 4
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !227
  %i.ia = zext i8 %i.hz to i64
  %i.ib = shl nuw i64 %i.ia, 56
  %i.ic = getelementptr i8, ptr %i.hx, i64 5
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !227
  %i.ie = zext i8 %i.id to i64
  %i.if = shl nuw nsw i64 %i.ie, 48
  %i.ig = or disjoint i64 %i.if, %i.ib
  %i.ih = getelementptr i8, ptr %i.hx, i64 6
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !227
  %i.ij = zext i8 %i.ii to i64
  %i.ik = shl nuw nsw i64 %i.ij, 40
  %i.il = or disjoint i64 %i.ig, %i.ik
  %i.im = getelementptr i8, ptr %i.hx, i64 7
  %i.in = load i8, ptr %i.im, align 1, !tbaa !227
  %i.io = zext i8 %i.in to i64
  %i.ip = shl nuw nsw i64 %i.io, 32
  %i.iq = or disjoint i64 %i.il, %i.ip
  %i.ir = getelementptr i8, ptr %i.hx, i64 8
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !227
  %i.it = zext i8 %i.is to i64
  %i.iu = shl nuw nsw i64 %i.it, 24
  %i.iv = or disjoint i64 %i.iq, %i.iu
  %i.iw = getelementptr i8, ptr %i.hx, i64 9
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !227
  %i.iy = zext i8 %i.ix to i64
  %i.iz = shl nuw nsw i64 %i.iy, 16
  %i.ja = or disjoint i64 %i.iv, %i.iz
  %i.jb = getelementptr i8, ptr %i.hx, i64 10
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !227
  %i.jd = zext i8 %i.jc to i64
  %i.je = shl nuw nsw i64 %i.jd, 8
  %i.jf = or disjoint i64 %i.ja, %i.je
  %i.jg = getelementptr i8, ptr %i.hx, i64 11
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !227
  %i.ji = zext i8 %i.jh to i64
  %i.jj = add nuw i64 %i.jf, %i.ji                ; 2 uses
  store i64 %i.jj, ptr %5, align 8, !tbaa !7969
  %i.jk = getelementptr i8, ptr %i.hx, i64 12
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i70, %bb.u ], [ 0, %bb.t ] ; 2 uses
  %.017.i69 = phi ptr [ %i.kw, %bb.u ], [ %i.jk, %bb.t ] ; 9 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i68 ; 2 uses
  %i.jm = load i8, ptr %.017.i69, align 1, !tbaa !227
  %i.jn = zext i8 %i.jm to i32
  %i.jo = shl nuw i32 %i.jn, 24
  %i.jp = getelementptr inbounds nuw i8, ptr %.017.i69, i64 1
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !227
  %i.jr = zext i8 %i.jq to i32
  %i.js = shl nuw nsw i32 %i.jr, 16
  %i.jt = or disjoint i32 %i.js, %i.jo
  %i.ju = getelementptr inbounds nuw i8, ptr %.017.i69, i64 2
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !227
  %i.jw = zext i8 %i.jv to i32
  %i.jx = shl nuw nsw i32 %i.jw, 8
  %i.jy = or disjoint i32 %i.jt, %i.jx
  %i.jz = getelementptr inbounds nuw i8, ptr %.017.i69, i64 3
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !227
  %i.kb = zext i8 %i.ka to i32
  %i.kc = or disjoint i32 %i.jy, %i.kb
  store i32 %i.kc, ptr %i.jl, align 8, !tbaa !227
  %i.kd = getelementptr inbounds nuw i8, ptr %.017.i69, i64 4
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jl, i64 4
  %i.kf = load i8, ptr %i.kd, align 1, !tbaa !227
  %i.kg = zext i8 %i.kf to i32
  %i.kh = shl nuw i32 %i.kg, 24
  %i.ki = getelementptr inbounds nuw i8, ptr %.017.i69, i64 5
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !227
  %i.kk = zext i8 %i.kj to i32
  %i.kl = shl nuw nsw i32 %i.kk, 16
  %i.km = or disjoint i32 %i.kl, %i.kh
  %i.kn = getelementptr inbounds nuw i8, ptr %.017.i69, i64 6
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !227
  %i.kp = zext i8 %i.ko to i32
  %i.kq = shl nuw nsw i32 %i.kp, 8
  %i.kr = or disjoint i32 %i.km, %i.kq
  %i.ks = getelementptr inbounds nuw i8, ptr %.017.i69, i64 7
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !227
  %i.ku = zext i8 %i.kt to i32
  %i.kv = or disjoint i32 %i.kr, %i.ku
  store i32 %i.kv, ptr %i.ke, align 4, !tbaa !227
  %i.kw = getelementptr inbounds nuw i8, ptr %.017.i69, i64 8
  %indvars.iv.next.i70 = add nuw nsw i64 %indvars.iv.i68, 2 ; 2 uses
  %i.kx = icmp samesign ult i64 %indvars.iv.next.i70, %i.hh
  br i1 %i.kx, label %bb.u, label %nodeGetCell.exit71, !llvm.loop !7881

nodeGetCell.exit71:                               ; preds = %bb.u
  br i1 %i.hj, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %nodeGetCell.exit71
  switch i8 %i.hk, label %.preheader.i84.preheader [
    i8 5, label %bb.w
    i8 4, label %bb.x
    i8 3, label %bb.y
    i8 2, label %bb.z
  ]

bb.w:                                             ; preds = %bb.v
  %i.ky = load float, ptr %i.v, align 4, !tbaa !227
  %i.kz = load float, ptr %i.w, align 8, !tbaa !227
  %i.la = fsub float %i.ky, %i.kz
  %i.lb = fpext float %i.la to double
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.0.i80 = phi double [ %i.lb, %bb.w ], [ 1.000000e+00, %bb.v ]
  %i.lc = load float, ptr %i.x, align 4, !tbaa !227
  %i.ld = load float, ptr %i.y, align 8, !tbaa !227
  %i.le = fsub float %i.lc, %i.ld
  %i.lf = fpext float %i.le to double
  %i.lg = fmul double %.0.i80, %i.lf
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v
  %.1.i79 = phi double [ %i.lg, %bb.x ], [ 1.000000e+00, %bb.v ]
  %i.lh = load float, ptr %i.z, align 4, !tbaa !227
  %i.li = load float, ptr %i.aa, align 8, !tbaa !227
  %i.lj = fsub float %i.lh, %i.li
  %i.lk = fpext float %i.lj to double
  %i.ll = fmul double %.1.i79, %i.lk
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.v
  %.2.i77 = phi double [ %i.ll, %bb.y ], [ 1.000000e+00, %bb.v ]
  %i.lm = load float, ptr %i.ab, align 4, !tbaa !227
  %i.ln = load float, ptr %i.ac, align 8, !tbaa !227
  %i.lo = fsub float %i.lm, %i.ln
  %i.lp = fpext float %i.lo to double
  %i.lq = fmul double %.2.i77, %i.lp
  br label %.preheader.i84.preheader

bb.aa:                                            ; preds = %nodeGetCell.exit71
  switch i8 %i.hk, label %.preheader57.i.preheader [
    i8 5, label %bb.ab
    i8 4, label %bb.ac
    i8 3, label %bb.ad
    i8 2, label %bb.ae
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.lr = load i32, ptr %i.v, align 4, !tbaa !227
  %i.ls = sext i32 %i.lr to i64
  %i.lt = load i32, ptr %i.w, align 8, !tbaa !227
  %i.lu = sext i32 %i.lt to i64
  %i.lv = sub nsw i64 %i.ls, %i.lu
  %i.lw = sitofp i64 %i.lv to double
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.4.i76 = phi double [ %i.lw, %bb.ab ], [ 1.000000e+00, %bb.aa ]
  %i.lx = load i32, ptr %i.x, align 4, !tbaa !227
  %i.ly = sext i32 %i.lx to i64
  %i.lz = load i32, ptr %i.y, align 8, !tbaa !227
  %i.ma = sext i32 %i.lz to i64
  %i.mb = sub nsw i64 %i.ly, %i.ma
  %i.mc = sitofp i64 %i.mb to double
  %i.md = fmul nnan double %.4.i76, %i.mc
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.5.i75 = phi double [ %i.md, %bb.ac ], [ 1.000000e+00, %bb.aa ]
  %i.me = load i32, ptr %i.z, align 4, !tbaa !227
  %i.mf = sext i32 %i.me to i64
  %i.mg = load i32, ptr %i.aa, align 8, !tbaa !227
  %i.mh = sext i32 %i.mg to i64
  %i.mi = sub nsw i64 %i.mf, %i.mh
  %i.mj = sitofp i64 %i.mi to double
  %i.mk = fmul double %.5.i75, %i.mj
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  %.6.i72 = phi double [ %i.mk, %bb.ad ], [ 1.000000e+00, %bb.aa ]
  %i.ml = load i32, ptr %i.ab, align 4, !tbaa !227
  %i.mm = sext i32 %i.ml to i64
  %i.mn = load i32, ptr %i.ac, align 8, !tbaa !227
  %i.mo = sext i32 %i.mn to i64
  %i.mp = sub nsw i64 %i.mm, %i.mo
  %i.mq = sitofp i64 %i.mp to double
  %i.mr = fmul double %.6.i72, %i.mq
  br label %.preheader57.i.preheader

.preheader57.i.preheader:                         ; preds = %bb.ae, %bb.aa
  %.7.i73 = phi double [ 1.000000e+00, %bb.aa ], [ %i.mr, %bb.ae ]
  %i.ms = load i32, ptr %i.ad, align 4, !tbaa !227
  %i.mt = sext i32 %i.ms to i64
  %i.mu = load i32, ptr %i.u, align 8, !tbaa !227
  %i.mv = sext i32 %i.mu to i64
  %i.mw = sub nsw i64 %i.mt, %i.mv
  %i.mx = sitofp i64 %i.mw to double
  %i.my = fmul double %.7.i73, %i.mx
  br i1 %min.iters.check161, label %.preheader57.i.preheader180, label %vector.body165

vector.body165:                                   ; preds = %.preheader57.i.preheader, %vector.body165
  %index166 = phi i64 [ %index.next174, %vector.body165 ], [ 0, %.preheader57.i.preheader ] ; 2 uses
  %i.mz = shl i64 %index166, 1                    ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.mz ; 2 uses
  %wide.vec167 = load <4 x i32>, ptr %i.na, align 8, !tbaa !227 ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.mz
  %wide.vec170 = load <4 x i32>, ptr %i.nb, align 4, !tbaa !227 ; 2 uses
  %i.nc = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec167, <4 x i32> %wide.vec170)
  %i.nd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec167, <4 x i32> %wide.vec170)
  %interleaved.vec173 = shufflevector <4 x i32> %i.nc, <4 x i32> %i.nd, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec173, ptr %i.na, align 8, !tbaa !227
  %index.next174 = add nuw i64 %index166, 2       ; 2 uses
  %i.ne = icmp eq i64 %index.next174, %n.vec164
  br i1 %i.ne, label %middle.block175, label %vector.body165, !llvm.loop !8043

middle.block175:                                  ; preds = %vector.body165
  br i1 %cmp.n176, label %cellUnion.exit, label %.preheader57.i.preheader180

.preheader57.i.preheader180:                      ; preds = %.preheader57.i.preheader, %middle.block175
  %indvars.iv.i82.ph = phi i64 [ 0, %.preheader57.i.preheader ], [ %i.hq, %middle.block175 ]
  br label %.preheader57.i

.preheader.i84.preheader:                         ; preds = %bb.v, %bb.z
  %.3.i78 = phi double [ 1.000000e+00, %bb.v ], [ %i.lq, %bb.z ]
  %i.nf = load float, ptr %i.ad, align 4, !tbaa !227
  %i.ng = load float, ptr %i.u, align 8, !tbaa !227
  %i.nh = fsub float %i.nf, %i.ng
  %i.ni = fpext float %i.nh to double
  %i.nj = fmul double %.3.i78, %i.ni
  br i1 %min.iters.check, label %.preheader.i84.preheader179, label %vector.body

vector.body:                                      ; preds = %.preheader.i84.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i84.preheader ] ; 2 uses
  %i.nk = shl i64 %index, 1                       ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.nk ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.nl, align 8, !tbaa !227 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec156 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.nk
  %wide.vec157 = load <8 x float>, ptr %i.nm, align 4, !tbaa !227 ; 2 uses
  %strided.vec158 = shufflevector <8 x float> %wide.vec157, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec159 = shufflevector <8 x float> %wide.vec157, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.nn = fcmp olt <4 x float> %strided.vec, %strided.vec158
  %i.no = select <4 x i1> %i.nn, <4 x float> %strided.vec, <4 x float> %strided.vec158
  %i.np = fcmp ogt <4 x float> %strided.vec156, %strided.vec159
  %i.nq = select <4 x i1> %i.np, <4 x float> %strided.vec156, <4 x float> %strided.vec159
  %interleaved.vec = shufflevector <4 x float> %i.no, <4 x float> %i.nq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.nl, align 8, !tbaa !227
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.nr = icmp eq i64 %index.next, %n.vec
  br i1 %i.nr, label %middle.block, label %vector.body, !llvm.loop !8044

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit178, label %.preheader.i84.preheader179

.preheader.i84.preheader179:                      ; preds = %.preheader.i84.preheader, %middle.block
  %indvars.iv61.i.ph = phi i64 [ 0, %.preheader.i84.preheader ], [ %i.hv, %middle.block ]
  br label %.preheader.i84

.preheader.i84:                                   ; preds = %.preheader.i84.preheader179, %.preheader.i84
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %.preheader.i84 ], [ %indvars.iv61.i.ph, %.preheader.i84.preheader179 ] ; 3 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv61.i ; 2 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv61.i
  %i.nu = load <2 x float>, ptr %i.ns, align 8, !tbaa !227 ; 3 uses
  %i.nv = load <2 x float>, ptr %i.nt, align 4, !tbaa !227 ; 3 uses
  %i.nw = shufflevector <2 x float> %i.nu, <2 x float> %i.nv, <2 x i32> <i32 0, i32 3>
  %i.nx = shufflevector <2 x float> %i.nv, <2 x float> %i.nu, <2 x i32> <i32 0, i32 3>
  %i.ny = fcmp olt <2 x float> %i.nw, %i.nx
  %i.nz = select <2 x i1> %i.ny, <2 x float> %i.nu, <2 x float> %i.nv
  store <2 x float> %i.nz, ptr %i.ns, align 8, !tbaa !227
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 2 ; 2 uses
  %i.oa = icmp samesign ult i64 %indvars.iv.next62.i, %i.hh
  br i1 %i.oa, label %.preheader.i84, label %.loopexit178, !llvm.loop !8045

.preheader57.i:                                   ; preds = %.preheader57.i.preheader180, %.preheader57.i
  %indvars.iv.i82 = phi i64 [ %indvars.iv.next.i83, %.preheader57.i ], [ %indvars.iv.i82.ph, %.preheader57.i.preheader180 ] ; 4 uses
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.i82 ; 2 uses
  %i.oc = load i32, ptr %i.ob, align 8, !tbaa !227
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv.i82
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !227
  %.56.i = tail call i32 @llvm.smin.i32(i32 %i.oc, i32 %i.oe)
  store i32 %.56.i, ptr %i.ob, align 8, !tbaa !227
  %i.of = or disjoint i64 %indvars.iv.i82, 1      ; 2 uses
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.of ; 2 uses
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !227
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.of
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !227
  %i.ok = tail call i32 @llvm.smax.i32(i32 %i.oh, i32 %i.oj)
  store i32 %i.ok, ptr %i.og, align 4, !tbaa !227
  %indvars.iv.next.i83 = add nuw nsw i64 %indvars.iv.i82, 2 ; 2 uses
  %i.ol = icmp samesign ult i64 %indvars.iv.next.i83, %i.hh
  br i1 %i.ol, label %.preheader57.i, label %cellUnion.exit, !llvm.loop !8046

.loopexit178:                                     ; preds = %.preheader.i84, %middle.block
  switch i8 %i.hk, label %bb.aj [
    i8 5, label %bb.af
    i8 4, label %bb.ag
    i8 3, label %bb.ah
    i8 2, label %bb.ai
  ]

bb.af:                                            ; preds = %.loopexit178
  %i.om = load float, ptr %i.v, align 4, !tbaa !227
  %i.on = load float, ptr %i.w, align 8, !tbaa !227
  %i.oo = fsub float %i.om, %i.on
  %i.op = fpext float %i.oo to double
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.loopexit178
  %.0.i93 = phi double [ %i.op, %bb.af ], [ 1.000000e+00, %.loopexit178 ]
  %i.oq = load float, ptr %i.x, align 4, !tbaa !227
  %i.or = load float, ptr %i.y, align 8, !tbaa !227
  %i.os = fsub float %i.oq, %i.or
  %i.ot = fpext float %i.os to double
  %i.ou = fmul double %.0.i93, %i.ot
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.loopexit178
  %.1.i92 = phi double [ %i.ou, %bb.ag ], [ 1.000000e+00, %.loopexit178 ]
  %i.ov = load float, ptr %i.z, align 4, !tbaa !227
  %i.ow = load float, ptr %i.aa, align 8, !tbaa !227
  %i.ox = fsub float %i.ov, %i.ow
  %i.oy = fpext float %i.ox to double
  %i.oz = fmul double %.1.i92, %i.oy
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %.loopexit178
  %.2.i90 = phi double [ %i.oz, %bb.ah ], [ 1.000000e+00, %.loopexit178 ]
  %i.pa = load float, ptr %i.ab, align 4, !tbaa !227
  %i.pb = load float, ptr %i.ac, align 8, !tbaa !227
  %i.pc = fsub float %i.pa, %i.pb
  %i.pd = fpext float %i.pc to double
  %i.pe = fmul double %.2.i90, %i.pd
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.loopexit178
  %.3.i91 = phi double [ 1.000000e+00, %.loopexit178 ], [ %i.pe, %bb.ai ]
  %i.pf = load float, ptr %i.ad, align 4, !tbaa !227
  %i.pg = load float, ptr %i.u, align 8, !tbaa !227
  %i.ph = fsub float %i.pf, %i.pg
  %i.pi = fpext float %i.ph to double
  %i.pj = fmul double %.3.i91, %i.pi
  br label %cellArea.exit94

cellUnion.exit:                                   ; preds = %.preheader57.i, %middle.block175
  switch i8 %i.hk, label %bb.ao [
    i8 5, label %bb.ak
    i8 4, label %bb.al
    i8 3, label %bb.am
    i8 2, label %bb.an
  ]

bb.ak:                                            ; preds = %cellUnion.exit
  %i.pk = load i32, ptr %i.v, align 4, !tbaa !227
  %i.pl = sext i32 %i.pk to i64
  %i.pm = load i32, ptr %i.w, align 8, !tbaa !227
  %i.pn = sext i32 %i.pm to i64
  %i.po = sub nsw i64 %i.pl, %i.pn
  %i.pp = sitofp i64 %i.po to double
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %cellUnion.exit
  %.4.i89 = phi double [ %i.pp, %bb.ak ], [ 1.000000e+00, %cellUnion.exit ]
  %i.pq = load i32, ptr %i.x, align 4, !tbaa !227
  %i.pr = sext i32 %i.pq to i64
  %i.ps = load i32, ptr %i.y, align 8, !tbaa !227
  %i.pt = sext i32 %i.ps to i64
  %i.pu = sub nsw i64 %i.pr, %i.pt
  %i.pv = sitofp i64 %i.pu to double
  %i.pw = fmul nnan double %.4.i89, %i.pv
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %cellUnion.exit
  %.5.i88 = phi double [ %i.pw, %bb.al ], [ 1.000000e+00, %cellUnion.exit ]
  %i.px = load i32, ptr %i.z, align 4, !tbaa !227
  %i.py = sext i32 %i.px to i64
  %i.pz = load i32, ptr %i.aa, align 8, !tbaa !227
  %i.qa = sext i32 %i.pz to i64
  %i.qb = sub nsw i64 %i.py, %i.qa
  %i.qc = sitofp i64 %i.qb to double
  %i.qd = fmul double %.5.i88, %i.qc
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %cellUnion.exit
  %.6.i85 = phi double [ %i.qd, %bb.am ], [ 1.000000e+00, %cellUnion.exit ]
  %i.qe = load i32, ptr %i.ab, align 4, !tbaa !227
  %i.qf = sext i32 %i.qe to i64
  %i.qg = load i32, ptr %i.ac, align 8, !tbaa !227
  %i.qh = sext i32 %i.qg to i64
  %i.qi = sub nsw i64 %i.qf, %i.qh
  %i.qj = sitofp i64 %i.qi to double
  %i.qk = fmul double %.6.i85, %i.qj
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %cellUnion.exit
  %.7.i86 = phi double [ 1.000000e+00, %cellUnion.exit ], [ %i.qk, %bb.an ]
  %i.ql = load i32, ptr %i.ad, align 4, !tbaa !227
  %i.qm = sext i32 %i.ql to i64
  %i.qn = load i32, ptr %i.u, align 8, !tbaa !227
  %i.qo = sext i32 %i.qn to i64
  %i.qp = sub nsw i64 %i.qm, %i.qo
  %i.qq = sitofp i64 %i.qp to double
  %i.qr = fmul double %.7.i86, %i.qq
  br label %cellArea.exit94

cellArea.exit94:                                  ; preds = %bb.aj, %bb.ao
  %.8.i74150 = phi double [ %i.nj, %bb.aj ], [ %i.my, %bb.ao ] ; 3 uses
  %.8.i87 = phi double [ %i.pj, %bb.aj ], [ %i.qr, %bb.ao ]
  %i.qs = fsub double %.8.i87, %.8.i74150         ; 3 uses
  %i.qt = icmp eq i64 %indvars.iv135, 0
  %i.qu = fcmp olt double %i.qs, %.051115
  %or.cond59 = select i1 %i.qt, i1 true, i1 %i.qu
  br i1 %or.cond59, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %cellArea.exit94
  %i.qv = fcmp oeq double %i.qs, %.051115
  %i.qw = fcmp olt double %.8.i74150, %.349116
  %or.cond60 = select i1 %i.qv, i1 %i.qw, i1 false
  br i1 %or.cond60, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap, %cellArea.exit94
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.152 = phi double [ %i.qs, %bb.aq ], [ %.051115, %bb.ap ]
  %.450 = phi double [ %.8.i74150, %bb.aq ], [ %.349116, %bb.ap ]
  %.4 = phi i64 [ %i.jj, %bb.aq ], [ %.3117, %bb.ap ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %.loopexit, label %bb.t, !llvm.loop !8047

.loopexit:                                        ; preds = %bb.ar, %bb.c, %._crit_edge
  %.5 = phi i64 [ %.2, %._crit_edge ], [ 0, %bb.c ], [ %.4, %bb.ar ]
end_hunk_4
begin_hunk_5_@rtreeInsertCell:bb.a
  br i1 %.not.i.i39, label %sqlite3_malloc64.exit.i, label %SplitNode.exit

sqlite3_malloc64.exit.i:                          ; preds = %bb.r
  %i.jv = tail call fastcc ptr @sqlite3Malloc(i64 noundef %i.jt), !inline_history !8053 ; 10 uses
  %.not.i41 = icmp eq ptr %i.jv, null
  br i1 %.not.i41, label %SplitNode.exit, label %bb.s

bb.s:                                             ; preds = %sqlite3_malloc64.exit.i
  %i.jw = load i8, ptr %i.jn, align 4, !tbaa !7982 ; 2 uses
  %i.jx = zext i8 %i.jw to i64
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.jx
  %i.jz = zext i8 %i.jw to i32
  %i.ka = mul nuw nsw i32 %i.cp, %i.jz
  %i.kb = zext nneg i32 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.jy, i64 %i.kb
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.jv, i8 0, i64 %i.jt, i1 false)
  %i.kd = load i8, ptr %i.jn, align 4, !tbaa !7982 ; 2 uses
  %.not234.i = icmp eq i8 %i.kd, 0
  br i1 %.not234.i, label %._crit_edge229.i, label %.lr.ph.i42.preheader

.lr.ph.i42.preheader:                             ; preds = %bb.s
  %i.ke = or disjoint i32 %i.cm, %i.cn            ; 2 uses
  %i.kf = add nuw nsw i32 %i.ke, 1
  %i.kg = zext nneg i32 %i.kf to i64              ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.ke, 7
  %n.vec = and i64 %i.kg, 131064                  ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.kg
  br label %.lr.ph.i42

.preheader.i:                                     ; preds = %.loopexit
  %.not235.i = icmp eq i8 %i.mp, 0
  br i1 %.not235.i, label %._crit_edge229.i, label %.lr.ph228.i

.lr.ph228.i:                                      ; preds = %.preheader.i
  %i.kh = load i32, ptr %i.q, align 8, !tbaa !7985
  %i.ki = add nsw i32 %i.kh, -4
  %i.kj = load i8, ptr %i.t, align 1, !tbaa !7936
  %i.kk = zext i8 %i.kj to i32
  %i.kl = sdiv i32 %i.ki, %i.kk                   ; 2 uses
  %i.km = sdiv i32 %i.kl, 3                       ; 2 uses
  %.neg.i = sdiv i32 %i.kl, -3
  %i.kn = add nsw i32 %.neg.i, %i.cp              ; 2 uses
  %.not141213.i = icmp sgt i32 %i.km, %i.kn
  %i.ko = icmp samesign ugt i32 %i.co, 1
  %i.kp = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 9 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 9 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %4, i64 44 ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %4, i64 36 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %4, i64 28 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %5, i64 44 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %5, i64 36 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %5, i64 28 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  br i1 %.not141213.i, label %._crit_edge229.i, label %.lr.ph228.split.i

.lr.ph228.split.i:                                ; preds = %.lr.ph228.i
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.ll = load i8, ptr %i.lj, align 1, !tbaa !7913 ; 4 uses
  %i.lm = load i8, ptr %i.lk, align 2, !tbaa !7964 ; 4 uses
  %i.ln = icmp eq i8 %i.lm, 0                     ; 3 uses
  %i.lo = zext i8 %i.ll to i64                    ; 12 uses
  %.not.i165.i = icmp eq i8 %i.ll, 0              ; 2 uses
  %i.lp = sext i32 %i.km to i64                   ; 2 uses
  %i.lq = add nsw i32 %i.kn, 1
  %i.lr = tail call i64 @llvm.umax.i64(i64 %i.lo, i64 2)
  %i.ls = add nsw i64 %i.lr, -1
  %i.lt = lshr i64 %i.ls, 1                       ; 2 uses
  %i.lu = add nuw nsw i64 %i.lt, 1                ; 4 uses
  %min.iters.check286 = icmp eq i64 %i.lt, 0
  %n.vec289 = and i64 %i.lu, 9223372036854775806  ; 3 uses
  %i.lv = shl nuw i64 %n.vec289, 1
  %cmp.n301 = icmp eq i64 %i.lu, %n.vec289
  %min.iters.check268 = icmp ult i8 %i.ll, 7
  %n.vec271 = and i64 %i.lu, 9223372036854775804  ; 3 uses
  %i.lw = shl nuw i64 %n.vec271, 1
  %cmp.n283 = icmp eq i64 %i.lu, %n.vec271
  %i.lx = tail call i64 @llvm.umax.i64(i64 %i.lo, i64 2)
  %i.ly = add nsw i64 %i.lx, -1
  %i.lz = lshr i64 %i.ly, 1                       ; 2 uses
  %i.ma = add nuw nsw i64 %i.lz, 1                ; 4 uses
  %min.iters.check250 = icmp eq i64 %i.lz, 0
  %n.vec253 = and i64 %i.ma, 9223372036854775806  ; 3 uses
  %i.mb = shl nuw i64 %n.vec253, 1
  %cmp.n265 = icmp eq i64 %i.ma, %n.vec253
  %min.iters.check235 = icmp ult i8 %i.ll, 7
  %n.vec238 = and i64 %i.ma, 9223372036854775804  ; 3 uses
  %i.mc = shl nuw i64 %n.vec238, 1
  %cmp.n247 = icmp eq i64 %i.ma, %n.vec238
  br label %.lr.ph220.i

.lr.ph.i42:                                       ; preds = %.lr.ph.i42.preheader, %.loopexit
  %indvars.iv250.i = phi i64 [ %indvars.iv.next251.i, %.loopexit ], [ 0, %.lr.ph.i42.preheader ] ; 4 uses
  %i.md = phi i8 [ %i.mp, %.loopexit ], [ %i.kd, %.lr.ph.i42.preheader ]
  %i.me = zext i8 %i.md to i64
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %i.me
  %i.mg = mul nuw nsw i64 %indvars.iv250.i, %i.cq
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mf, i64 %i.mg ; 4 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv250.i
  store ptr %i.mh, ptr %i.mi, align 8, !tbaa !348
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i42, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i42 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %vec.ind.next, %vector.body ], [ <i32 0, i32 1, i32 2, i32 3>, %.lr.ph.i42 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %index ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  store <4 x i32> %vec.ind, ptr %i.mj, align 4, !tbaa !5
  store <4 x i32> %step.add, ptr %i.mk, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ml = icmp eq i64 %index.next, %n.vec
  br i1 %i.ml, label %middle.block, label %vector.body, !llvm.loop !8054

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i42, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i42 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv.i
  %i.mn = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.mn, ptr %i.mm, align 4, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.cq
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph, !llvm.loop !8055

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %i.mo = trunc nuw nsw i64 %indvars.iv250.i to i32
  tail call fastcc void @SortByDimension(ptr noundef nonnull %0, ptr noundef nonnull %i.mh, i32 noundef range(i32 1, 65537) %i.cp, i32 noundef %i.mo, ptr noundef nonnull %i.ct, ptr noundef %i.kc), !inline_history !8056
  %indvars.iv.next251.i = add nuw nsw i64 %indvars.iv250.i, 1 ; 2 uses
  %i.mp = load i8, ptr %i.jn, align 4, !tbaa !7982 ; 7 uses
  %i.mq = zext i8 %i.mp to i64                    ; 2 uses
  %i.mr = icmp samesign ult i64 %indvars.iv.next251.i, %i.mq
  br i1 %i.mr, label %.lr.ph.i42, label %.preheader.i, !llvm.loop !8057

.lr.ph220.i:                                      ; preds = %._crit_edge221.i, %.lr.ph228.split.i
  %i.ms = phi i8 [ %i.lm, %.lr.ph228.split.i ], [ %i.qd, %._crit_edge221.i ]
  %indvars.iv261.i = phi i64 [ 0, %.lr.ph228.split.i ], [ %indvars.iv.next262.i, %._crit_edge221.i ] ; 4 uses
  %.0122226.i = phi i32 [ 0, %.lr.ph228.split.i ], [ %.1123.i44, %._crit_edge221.i ]
  %.0124225.i = phi i32 [ 0, %.lr.ph228.split.i ], [ %.1125.i, %._crit_edge221.i ]
  %.0126224.i = phi double [ 0.000000e+00, %.lr.ph228.split.i ], [ %.1127.i, %._crit_edge221.i ] ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %indvars.iv261.i
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !348 ; 3 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !5
  %i.mw = sext i32 %i.mv to i64
  %i.mx = getelementptr inbounds [48 x i8], ptr %i.ct, i64 %i.mw
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.gk
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !5
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [48 x i8], ptr %i.ct, i64 %i.na
  br label %bb.t

bb.t:                                             ; preds = %bb.au, %.lr.ph220.i
  %i.nc = phi i8 [ %i.ms, %.lr.ph220.i ], [ %i.qd, %bb.au ] ; 2 uses
  %indvars.iv257.i = phi i64 [ %i.lp, %.lr.ph220.i ], [ %indvars.iv.next258.i, %bb.au ] ; 4 uses
  %.0130217.i = phi i32 [ 0, %.lr.ph220.i ], [ %.1131.i, %bb.au ]
  %.0132216.i = phi double [ 0.000000e+00, %.lr.ph220.i ], [ %.1133.i, %bb.au ] ; 2 uses
  %.0134215.i = phi double [ 0.000000e+00, %.lr.ph220.i ], [ %.1135.i, %bb.au ] ; 3 uses
  %.0136214.i = phi double [ 0.000000e+00, %.lr.ph220.i ], [ %i.xd, %bb.au ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %i.mx, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %i.nb, i64 48, i1 false)
  br i1 %i.ko, label %.lr.ph212.i, label %._crit_edge.i

.lr.ph212.i:                                      ; preds = %bb.t, %cellUnion.exit.i
  %i.nd = phi i8 [ %i.qc, %cellUnion.exit.i ], [ %i.nc, %bb.t ] ; 3 uses
  %indvars.iv252.i = phi i64 [ %indvars.iv.next253.i, %cellUnion.exit.i ], [ 1, %bb.t ] ; 3 uses
  %i.ne = icmp slt i64 %indvars.iv252.i, %indvars.iv257.i
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %indvars.iv252.i
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !5
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds [48 x i8], ptr %i.ct, i64 %i.nh ; 2 uses
  br i1 %i.ne, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph212.i
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 5 uses
  br i1 %i.ln, label %.preheader.i.i.preheader, label %.preheader57.i.i.preheader

.preheader57.i.i.preheader:                       ; preds = %bb.u
  br i1 %min.iters.check250, label %.preheader57.i.i.preheader361, label %vector.body254

vector.body254:                                   ; preds = %.preheader57.i.i.preheader, %vector.body254
  %index255 = phi i64 [ %index.next263, %vector.body254 ], [ 0, %.preheader57.i.i.preheader ] ; 2 uses
  %i.nk = shl i64 %index255, 1                    ; 2 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.nk ; 2 uses
  %wide.vec256 = load <4 x i32>, ptr %i.nl, align 8, !tbaa !227 ; 2 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.nk
  %wide.vec259 = load <4 x i32>, ptr %i.nm, align 4, !tbaa !227 ; 2 uses
  %i.nn = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec256, <4 x i32> %wide.vec259)
  %i.no = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec256, <4 x i32> %wide.vec259)
  %interleaved.vec262 = shufflevector <4 x i32> %i.nn, <4 x i32> %i.no, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec262, ptr %i.nl, align 8, !tbaa !227
  %index.next263 = add nuw i64 %index255, 2       ; 2 uses
  %i.np = icmp eq i64 %index.next263, %n.vec253
  br i1 %i.np, label %middle.block264, label %vector.body254, !llvm.loop !8058

middle.block264:                                  ; preds = %vector.body254
  br i1 %cmp.n265, label %cellUnion.exit.i, label %.preheader57.i.i.preheader361

.preheader57.i.i.preheader361:                    ; preds = %.preheader57.i.i.preheader, %middle.block264
  %indvars.iv.i.i46.ph = phi i64 [ 0, %.preheader57.i.i.preheader ], [ %i.mb, %middle.block264 ]
  br label %.preheader57.i.i

.preheader.i.i.preheader:                         ; preds = %bb.u
  br i1 %min.iters.check235, label %.preheader.i.i.preheader360, label %vector.body239

vector.body239:                                   ; preds = %.preheader.i.i.preheader, %vector.body239
  %index240 = phi i64 [ %index.next245, %vector.body239 ], [ 0, %.preheader.i.i.preheader ] ; 2 uses
  %i.nq = shl i64 %index240, 1                    ; 2 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.nq ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.nr, align 8, !tbaa !227 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec241 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.nq
  %wide.vec242 = load <8 x float>, ptr %i.ns, align 4, !tbaa !227 ; 2 uses
  %strided.vec243 = shufflevector <8 x float> %wide.vec242, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec244 = shufflevector <8 x float> %wide.vec242, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.nt = fcmp olt <4 x float> %strided.vec, %strided.vec243
  %i.nu = select <4 x i1> %i.nt, <4 x float> %strided.vec, <4 x float> %strided.vec243
  %i.nv = fcmp ogt <4 x float> %strided.vec241, %strided.vec244
  %i.nw = select <4 x i1> %i.nv, <4 x float> %strided.vec241, <4 x float> %strided.vec244
  %interleaved.vec = shufflevector <4 x float> %i.nu, <4 x float> %i.nw, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.nr, align 8, !tbaa !227
  %index.next245 = add nuw i64 %index240, 4       ; 2 uses
  %i.nx = icmp eq i64 %index.next245, %n.vec238
  br i1 %i.nx, label %middle.block246, label %vector.body239, !llvm.loop !8059

middle.block246:                                  ; preds = %vector.body239
  br i1 %cmp.n247, label %cellUnion.exit.i, label %.preheader.i.i.preheader360

.preheader.i.i.preheader360:                      ; preds = %.preheader.i.i.preheader, %middle.block246
  %indvars.iv61.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.mc, %middle.block246 ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader360, %.preheader.i.i
  %indvars.iv61.i.i = phi i64 [ %indvars.iv.next62.i.i, %.preheader.i.i ], [ %indvars.iv61.i.i.ph, %.preheader.i.i.preheader360 ] ; 3 uses
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv61.i.i ; 2 uses
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv61.i.i
  %i.oa = load <2 x float>, ptr %i.ny, align 8, !tbaa !227 ; 3 uses
  %i.ob = load <2 x float>, ptr %i.nz, align 4, !tbaa !227 ; 3 uses
  %i.oc = shufflevector <2 x float> %i.oa, <2 x float> %i.ob, <2 x i32> <i32 0, i32 3>
  %i.od = shufflevector <2 x float> %i.ob, <2 x float> %i.oa, <2 x i32> <i32 0, i32 3>
  %i.oe = fcmp olt <2 x float> %i.oc, %i.od
  %i.of = select <2 x i1> %i.oe, <2 x float> %i.oa, <2 x float> %i.ob
  store <2 x float> %i.of, ptr %i.ny, align 8, !tbaa !227
  %indvars.iv.next62.i.i = add nuw nsw i64 %indvars.iv61.i.i, 2 ; 2 uses
  %i.og = icmp samesign ult i64 %indvars.iv.next62.i.i, %i.lo
  br i1 %i.og, label %.preheader.i.i, label %cellUnion.exit.i, !llvm.loop !8060

.preheader57.i.i:                                 ; preds = %.preheader57.i.i.preheader361, %.preheader57.i.i
  %indvars.iv.i.i46 = phi i64 [ %indvars.iv.next.i.i47, %.preheader57.i.i ], [ %indvars.iv.i.i46.ph, %.preheader57.i.i.preheader361 ] ; 4 uses
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv.i.i46 ; 2 uses
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !227
  %i.oj = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %indvars.iv.i.i46
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !227
  %.56.i.i = tail call i32 @llvm.smin.i32(i32 %i.oi, i32 %i.ok)
  store i32 %.56.i.i, ptr %i.oh, align 8, !tbaa !227
  %i.ol = or disjoint i64 %indvars.iv.i.i46, 1    ; 2 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %i.ol ; 2 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !227
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.nj, i64 %i.ol
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !227
  %i.oq = tail call i32 @llvm.smax.i32(i32 %i.on, i32 %i.op)
  store i32 %i.oq, ptr %i.om, align 4, !tbaa !227
  %indvars.iv.next.i.i47 = add nuw nsw i64 %indvars.iv.i.i46, 2 ; 2 uses
  %i.or = icmp samesign ult i64 %indvars.iv.next.i.i47, %i.lo
  br i1 %i.or, label %.preheader57.i.i, label %cellUnion.exit.i, !llvm.loop !8061

bb.v:                                             ; preds = %.lr.ph212.i
  %i.os = icmp eq i8 %i.nd, 0
  %i.ot = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 5 uses
  br i1 %i.os, label %.preheader.i148.i.preheader, label %.preheader57.i144.i.preheader

.preheader57.i144.i.preheader:                    ; preds = %bb.v
  br i1 %min.iters.check286, label %.preheader57.i144.i.preheader365, label %vector.body290

vector.body290:                                   ; preds = %.preheader57.i144.i.preheader, %vector.body290
  %index291 = phi i64 [ %index.next299, %vector.body290 ], [ 0, %.preheader57.i144.i.preheader ] ; 2 uses
  %i.ou = shl i64 %index291, 1                    ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.ou ; 2 uses
  %wide.vec292 = load <4 x i32>, ptr %i.ov, align 8, !tbaa !227 ; 2 uses
  %i.ow = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.ou
  %wide.vec295 = load <4 x i32>, ptr %i.ow, align 4, !tbaa !227 ; 2 uses
  %i.ox = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec292, <4 x i32> %wide.vec295)
  %i.oy = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec292, <4 x i32> %wide.vec295)
  %interleaved.vec298 = shufflevector <4 x i32> %i.ox, <4 x i32> %i.oy, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec298, ptr %i.ov, align 8, !tbaa !227
  %index.next299 = add nuw i64 %index291, 2       ; 2 uses
  %i.oz = icmp eq i64 %index.next299, %n.vec289
  br i1 %i.oz, label %middle.block300, label %vector.body290, !llvm.loop !8062

middle.block300:                                  ; preds = %vector.body290
  br i1 %cmp.n301, label %cellUnion.exit.i, label %.preheader57.i144.i.preheader365

.preheader57.i144.i.preheader365:                 ; preds = %.preheader57.i144.i.preheader, %middle.block300
  %indvars.iv.i145.i.ph = phi i64 [ 0, %.preheader57.i144.i.preheader ], [ %i.lv, %middle.block300 ]
  br label %.preheader57.i144.i

.preheader.i148.i.preheader:                      ; preds = %bb.v
  br i1 %min.iters.check268, label %.preheader.i148.i.preheader363, label %vector.body272

vector.body272:                                   ; preds = %.preheader.i148.i.preheader, %vector.body272
  %index273 = phi i64 [ %index.next281, %vector.body272 ], [ 0, %.preheader.i148.i.preheader ] ; 2 uses
  %i.pa = shl i64 %index273, 1                    ; 2 uses
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.pa ; 2 uses
  %wide.vec274 = load <8 x float>, ptr %i.pb, align 8, !tbaa !227 ; 2 uses
  %strided.vec275 = shufflevector <8 x float> %wide.vec274, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec276 = shufflevector <8 x float> %wide.vec274, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.pa
  %wide.vec277 = load <8 x float>, ptr %i.pc, align 4, !tbaa !227 ; 2 uses
  %strided.vec278 = shufflevector <8 x float> %wide.vec277, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec279 = shufflevector <8 x float> %wide.vec277, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.pd = fcmp olt <4 x float> %strided.vec275, %strided.vec278
  %i.pe = select <4 x i1> %i.pd, <4 x float> %strided.vec275, <4 x float> %strided.vec278
  %i.pf = fcmp ogt <4 x float> %strided.vec276, %strided.vec279
  %i.pg = select <4 x i1> %i.pf, <4 x float> %strided.vec276, <4 x float> %strided.vec279
  %interleaved.vec280 = shufflevector <4 x float> %i.pe, <4 x float> %i.pg, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec280, ptr %i.pb, align 8, !tbaa !227
  %index.next281 = add nuw i64 %index273, 4       ; 2 uses
  %i.ph = icmp eq i64 %index.next281, %n.vec271
  br i1 %i.ph, label %middle.block282, label %vector.body272, !llvm.loop !8063

middle.block282:                                  ; preds = %vector.body272
  br i1 %cmp.n283, label %cellUnion.exit.i, label %.preheader.i148.i.preheader363

.preheader.i148.i.preheader363:                   ; preds = %.preheader.i148.i.preheader, %middle.block282
  %indvars.iv61.i149.i.ph = phi i64 [ 0, %.preheader.i148.i.preheader ], [ %i.lw, %middle.block282 ]
  br label %.preheader.i148.i

.preheader.i148.i:                                ; preds = %.preheader.i148.i.preheader363, %.preheader.i148.i
  %indvars.iv61.i149.i = phi i64 [ %indvars.iv.next62.i151.i, %.preheader.i148.i ], [ %indvars.iv61.i149.i.ph, %.preheader.i148.i.preheader363 ] ; 3 uses
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv61.i149.i ; 2 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv61.i149.i
  %i.pk = load <2 x float>, ptr %i.pi, align 8, !tbaa !227 ; 3 uses
  %i.pl = load <2 x float>, ptr %i.pj, align 4, !tbaa !227 ; 3 uses
  %i.pm = shufflevector <2 x float> %i.pk, <2 x float> %i.pl, <2 x i32> <i32 0, i32 3>
  %i.pn = shufflevector <2 x float> %i.pl, <2 x float> %i.pk, <2 x i32> <i32 0, i32 3>
  %i.po = fcmp olt <2 x float> %i.pm, %i.pn
  %i.pp = select <2 x i1> %i.po, <2 x float> %i.pk, <2 x float> %i.pl
  store <2 x float> %i.pp, ptr %i.pi, align 8, !tbaa !227
  %indvars.iv.next62.i151.i = add nuw nsw i64 %indvars.iv61.i149.i, 2 ; 2 uses
  %i.pq = icmp samesign ult i64 %indvars.iv.next62.i151.i, %i.lo
  br i1 %i.pq, label %.preheader.i148.i, label %cellUnion.exit.i, !llvm.loop !8064

.preheader57.i144.i:                              ; preds = %.preheader57.i144.i.preheader365, %.preheader57.i144.i
  %indvars.iv.i145.i = phi i64 [ %indvars.iv.next.i147.i, %.preheader57.i144.i ], [ %indvars.iv.i145.i.ph, %.preheader57.i144.i.preheader365 ] ; 4 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv.i145.i ; 2 uses
  %i.ps = load i32, ptr %i.pr, align 8, !tbaa !227
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %indvars.iv.i145.i
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !227
  %.56.i146.i = tail call i32 @llvm.smin.i32(i32 %i.ps, i32 %i.pu)
  store i32 %.56.i146.i, ptr %i.pr, align 8, !tbaa !227
  %i.pv = or disjoint i64 %indvars.iv.i145.i, 1   ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %i.pv ; 2 uses
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !227
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.ot, i64 %i.pv
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !227
  %i.qa = tail call i32 @llvm.smax.i32(i32 %i.px, i32 %i.pz)
  store i32 %i.qa, ptr %i.pw, align 4, !tbaa !227
  %indvars.iv.next.i147.i = add nuw nsw i64 %indvars.iv.i145.i, 2 ; 2 uses
  %i.qb = icmp samesign ult i64 %indvars.iv.next.i147.i, %i.lo
  br i1 %i.qb, label %.preheader57.i144.i, label %cellUnion.exit.i, !llvm.loop !8065

cellUnion.exit.i:                                 ; preds = %.preheader57.i144.i, %.preheader.i148.i, %.preheader57.i.i, %.preheader.i.i, %middle.block300, %middle.block282, %middle.block264, %middle.block246
  %i.qc = phi i8 [ %i.lm, %middle.block264 ], [ 0, %middle.block246 ], [ 0, %middle.block282 ], [ %i.nd, %middle.block300 ], [ 0, %.preheader.i148.i ], [ 0, %.preheader.i.i ], [ %i.lm, %.preheader57.i.i ], [ %i.nd, %.preheader57.i144.i ] ; 2 uses
  %indvars.iv.next253.i = add nuw nsw i64 %indvars.iv252.i, 1 ; 2 uses
  %exitcond256.not.i = icmp eq i64 %indvars.iv.next253.i, %i.gk
  br i1 %exitcond256.not.i, label %._crit_edge.i, label %.lr.ph212.i, !llvm.loop !8066

._crit_edge.i:                                    ; preds = %cellUnion.exit.i, %bb.t
  %i.qd = phi i8 [ %i.nc, %bb.t ], [ %i.qc, %cellUnion.exit.i ] ; 2 uses
  br i1 %i.ln, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %._crit_edge.i, %.split.us.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i, %.split.us.i.i ], [ %i.lo, %._crit_edge.i ] ; 3 uses
  %.014.us.i.i = phi double [ %i.qi, %.split.us.i.i ], [ 0.000000e+00, %._crit_edge.i ]
  %indvars.iv.next22.i.i = add nsw i64 %indvars.iv21.i.i, -2
  %i.qe = getelementptr [4 x i8], ptr %4, i64 %indvars.iv21.i.i
  %i.qf = load <2 x float>, ptr %i.qe, align 4, !tbaa !227
  %i.qg = fpext <2 x float> %i.qf to <2 x double> ; 2 uses
  %shift = shufflevector <2 x double> %i.qg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %shift, %i.qg
  %i.qh = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.qi = fadd double %.014.us.i.i, %i.qh         ; 2 uses
  %i.qj = icmp samesign ugt i64 %indvars.iv21.i.i, 3
  br i1 %i.qj, label %.split.us.i.i, label %.split.us.i160.i, !llvm.loop !8067

.split.i.i:                                       ; preds = %._crit_edge.i, %.split.i.i
  %indvars.iv.i153.i = phi i64 [ %indvars.iv.next.i154.i, %.split.i.i ], [ %i.lo, %._crit_edge.i ] ; 3 uses
  %.014.i.i = phi double [ %i.qo, %.split.i.i ], [ 0.000000e+00, %._crit_edge.i ]
  %indvars.iv.next.i154.i = add nsw i64 %indvars.iv.i153.i, -2
  %i.qk = getelementptr [4 x i8], ptr %4, i64 %indvars.iv.i153.i
  %i.ql = load <2 x i32>, ptr %i.qk, align 4, !tbaa !227
  %i.qm = sitofp <2 x i32> %i.ql to <2 x double>  ; 2 uses
  %shift340 = shufflevector <2 x double> %i.qm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop341 = fsub <2 x double> %shift340, %i.qm
  %i.qn = extractelement <2 x double> %foldExtExtBinop341, i64 0
  %i.qo = fadd double %.014.i.i, %i.qn            ; 2 uses
  %i.qp = icmp samesign ugt i64 %indvars.iv.i153.i, 3
  br i1 %i.qp, label %.split.i.i, label %.split.i155.i, !llvm.loop !8067

.split.us.i160.i:                                 ; preds = %.split.us.i.i, %.split.us.i160.i
  %indvars.iv21.i161.i = phi i64 [ %indvars.iv.next22.i163.i, %.split.us.i160.i ], [ %i.lo, %.split.us.i.i ] ; 3 uses
  %.014.us.i162.i = phi double [ %i.qu, %.split.us.i160.i ], [ 0.000000e+00, %.split.us.i.i ]
  %indvars.iv.next22.i163.i = add nsw i64 %indvars.iv21.i161.i, -2
  %i.qq = getelementptr [4 x i8], ptr %5, i64 %indvars.iv21.i161.i
  %i.qr = load <2 x float>, ptr %i.qq, align 4, !tbaa !227
  %i.qs = fpext <2 x float> %i.qr to <2 x double> ; 2 uses
  %shift343 = shufflevector <2 x double> %i.qs, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop344 = fsub <2 x double> %shift343, %i.qs
  %i.qt = extractelement <2 x double> %foldExtExtBinop344, i64 0
  %i.qu = fadd double %.014.us.i162.i, %i.qt      ; 2 uses
  %i.qv = icmp samesign ugt i64 %indvars.iv21.i161.i, 3
  br i1 %i.qv, label %.split.us.i160.i, label %cellMargin.exit164.i, !llvm.loop !8067

.split.i155.i:                                    ; preds = %.split.i.i, %.split.i155.i
  %indvars.iv.i156.i = phi i64 [ %indvars.iv.next.i158.i, %.split.i155.i ], [ %i.lo, %.split.i.i ] ; 3 uses
  %.014.i157.i = phi double [ %i.ra, %.split.i155.i ], [ 0.000000e+00, %.split.i.i ]
  %indvars.iv.next.i158.i = add nsw i64 %indvars.iv.i156.i, -2
  %i.qw = getelementptr [4 x i8], ptr %5, i64 %indvars.iv.i156.i
  %i.qx = load <2 x i32>, ptr %i.qw, align 4, !tbaa !227
  %i.qy = sitofp <2 x i32> %i.qx to <2 x double>  ; 2 uses
  %shift346 = shufflevector <2 x double> %i.qy, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop347 = fsub <2 x double> %shift346, %i.qy
  %i.qz = extractelement <2 x double> %foldExtExtBinop347, i64 0
  %i.ra = fadd double %.014.i157.i, %i.qz         ; 2 uses
  %i.rb = icmp samesign ugt i64 %indvars.iv.i156.i, 3
  br i1 %i.rb, label %.split.i155.i, label %cellMargin.exit164.thread.i, !llvm.loop !8067

cellMargin.exit164.i:                             ; preds = %.split.us.i160.i
  %i.rc = fadd double %.0136214.i, %i.qi
  %i.rd = fadd double %i.rc, %i.qu                ; 3 uses
  br i1 %.not.i165.i, label %cellOverlap.exit.i.thread, label %.preheader.us.us.i.i

cellMargin.exit164.thread.i:                      ; preds = %.split.i155.i
  %i.re = fadd double %.0136214.i, %i.qo
  %i.rf = fadd double %i.re, %i.ra                ; 3 uses
  br i1 %.not.i165.i, label %cellOverlap.exit.thread.i, label %.thread68.us.i.i

.preheader.us.us.i.i:                             ; preds = %cellMargin.exit164.i, %bb.w
  %indvars.iv94.i.i = phi i64 [ %indvars.iv.next95.i.i, %bb.w ], [ 0, %cellMargin.exit164.i ] ; 3 uses
  %.06477.us.us.us.i.i = phi double [ %i.rt, %bb.w ], [ 1.000000e+00, %cellMargin.exit164.i ]
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv94.i.i
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv94.i.i
  %i.ri = load <2 x float>, ptr %i.rg, align 8, !tbaa !227 ; 3 uses
  %i.rj = load <2 x float>, ptr %i.rh, align 8, !tbaa !227 ; 3 uses
  %i.rk = shufflevector <2 x float> %i.rj, <2 x float> %i.ri, <2 x i32> <i32 0, i32 3>
  %i.rl = shufflevector <2 x float> %i.ri, <2 x float> %i.rj, <2 x i32> <i32 0, i32 3>
  %i.rm = fcmp olt <2 x float> %i.rk, %i.rl
  %i.rn = select <2 x i1> %i.rm, <2 x float> %i.ri, <2 x float> %i.rj ; 3 uses
  %i.ro = extractelement <2 x float> %i.rn, i64 0
  %i.rp = extractelement <2 x float> %i.rn, i64 1
  %i.rq = fcmp olt float %i.rp, %i.ro
  br i1 %i.rq, label %cellOverlap.exit.i, label %bb.w

bb.w:                                             ; preds = %.preheader.us.us.i.i
  %i.rr = fpext <2 x float> %i.rn to <2 x double> ; 2 uses
  %shift349 = shufflevector <2 x double> %i.rr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop350 = fsub <2 x double> %shift349, %i.rr
  %i.rs = extractelement <2 x double> %foldExtExtBinop350, i64 0
  %i.rt = fmul double %.06477.us.us.us.i.i, %i.rs ; 2 uses
  %indvars.iv.next95.i.i = add nuw nsw i64 %indvars.iv94.i.i, 2 ; 2 uses
  %i.ru = icmp samesign ult i64 %indvars.iv.next95.i.i, %i.lo
  br i1 %i.ru, label %.preheader.us.us.i.i, label %cellOverlap.exit.i, !llvm.loop !8068

.thread68.us.i.i:                                 ; preds = %cellMargin.exit164.thread.i, %bb.x
  %indvars.iv.i167.i = phi i64 [ %indvars.iv.next.i168.i, %bb.x ], [ 0, %cellMargin.exit164.thread.i ] ; 5 uses
  %.06477.us82.i.i = phi double [ %i.sm, %bb.x ], [ 1.000000e+00, %cellMargin.exit164.thread.i ]
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv.i167.i
  %i.rw = load i32, ptr %i.rv, align 8, !tbaa !227
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.kp, i64 %indvars.iv.i167.i
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !227
  %i.rz = tail call i32 @llvm.smax.i32(i32 %i.rw, i32 %i.ry)
  %i.sa = sitofp i32 %i.rz to double              ; 2 uses
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i167.i
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 12
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !227
  %i.se = sitofp i32 %i.sd to double              ; 2 uses
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i167.i
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 12
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !227
  %i.si = sitofp i32 %i.sh to double              ; 2 uses
  %i.sj = fcmp olt double %i.se, %i.si
  %.pre-phi.i.i = select i1 %i.sj, double %i.se, double %i.si ; 2 uses
  %i.sk = fcmp olt double %.pre-phi.i.i, %i.sa
  br i1 %i.sk, label %cellOverlap.exit.i, label %bb.x

bb.x:                                             ; preds = %.thread68.us.i.i
  %i.sl = fsub nnan double %.pre-phi.i.i, %i.sa
  %i.sm = fmul double %.06477.us82.i.i, %i.sl     ; 2 uses
  %indvars.iv.next.i168.i = add nuw nsw i64 %indvars.iv.i167.i, 2 ; 2 uses
  %i.sn = icmp samesign ult i64 %indvars.iv.next.i168.i, %i.lo
  br i1 %i.sn, label %.thread68.us.i.i, label %cellOverlap.exit.i, !llvm.loop !8068

cellOverlap.exit.i:                               ; preds = %.thread68.us.i.i, %bb.x, %.preheader.us.us.i.i, %bb.w
  %i.so = phi double [ %i.rd, %.preheader.us.us.i.i ], [ %i.rd, %bb.w ], [ %i.rf, %bb.x ], [ %i.rf, %.thread68.us.i.i ] ; 2 uses
  %.us-phi.i169.i.in = phi double [ 0.000000e+00, %.preheader.us.us.i.i ], [ %i.rt, %bb.w ], [ 0.000000e+00, %.thread68.us.i.i ], [ %i.sm, %bb.x ]
  %.us-phi.i169.i = fadd double %.us-phi.i169.i.in, 0.000000e+00 ; 2 uses
  br i1 %i.ln, label %cellOverlap.exit.i.thread, label %cellOverlap.exit.thread.i

cellOverlap.exit.i.thread:                        ; preds = %cellMargin.exit164.i, %cellOverlap.exit.i
  %.us-phi.i169.i76 = phi double [ %.us-phi.i169.i, %cellOverlap.exit.i ], [ 1.000000e+00, %cellMargin.exit164.i ]
  %i.sp = phi double [ %i.so, %cellOverlap.exit.i ], [ %i.rd, %cellMargin.exit164.i ]
  switch i8 %i.mp, label %bb.ag [
end_hunk_5
begin_hunk_6_@rtreeInsertCell:bb.a
  %.8.i173.i = phi double [ %i.vn, %bb.al ], [ %i.xc, %bb.ar ]
  %i.xe = fadd double %.8.i195.i, %.8.i173.i      ; 2 uses
  %i.xf = icmp eq i64 %indvars.iv257.i, %i.lp
  %i.xg = fcmp olt double %.us-phi.i169291.i, %.0134215.i
  %or.cond.i43 = select i1 %i.xf, i1 true, i1 %i.xg
  br i1 %or.cond.i43, label %bb.at, label %bb.as

bb.as:                                            ; preds = %cellArea.exit180.i
  %i.xh = fcmp oeq double %.us-phi.i169291.i, %.0134215.i
  %i.xi = fcmp olt double %i.xe, %.0132216.i
  %or.cond142.i = select i1 %i.xh, i1 %i.xi, i1 false
  br i1 %or.cond142.i, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as, %cellArea.exit180.i
  %i.xj = trunc nsw i64 %indvars.iv257.i to i32
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.1135.i = phi double [ %.us-phi.i169291.i, %bb.at ], [ %.0134215.i, %bb.as ]
  %.1133.i = phi double [ %i.xe, %bb.at ], [ %.0132216.i, %bb.as ]
  %.1131.i = phi i32 [ %i.xj, %bb.at ], [ %.0130217.i, %bb.as ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #59
  %indvars.iv.next258.i = add nsw i64 %indvars.iv257.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next258.i to i32
  %exitcond260.not.i = icmp eq i32 %i.lq, %lftr.wideiv.i
  br i1 %exitcond260.not.i, label %._crit_edge221.i, label %bb.t, !llvm.loop !8069

._crit_edge221.i:                                 ; preds = %bb.au
  %i.xk = icmp eq i64 %indvars.iv261.i, 0
  %i.xl = fcmp olt double %i.xd, %.0126224.i
  %or.cond143.i = select i1 %i.xk, i1 true, i1 %i.xl ; 3 uses
  %.1127.i = select i1 %or.cond143.i, double %i.xd, double %.0126224.i
  %.1125.i = select i1 %or.cond143.i, i32 %.1131.i, i32 %.0124225.i ; 2 uses
  %i.xm = trunc nuw nsw i64 %indvars.iv261.i to i32
  %.1123.i44 = select i1 %or.cond143.i, i32 %i.xm, i32 %.0122226.i ; 2 uses
  %indvars.iv.next262.i = add nuw nsw i64 %indvars.iv261.i, 1 ; 2 uses
  %exitcond265.not.i = icmp eq i64 %indvars.iv.next262.i, %i.mq
  br i1 %exitcond265.not.i, label %._crit_edge229.loopexit242.i, label %.lr.ph220.i, !llvm.loop !8070

._crit_edge229.loopexit242.i:                     ; preds = %._crit_edge221.i
  %i.xn = zext nneg i32 %.1123.i44 to i64
  %i.xo = sext i32 %.1125.i to i64
  br label %._crit_edge229.i

._crit_edge229.i:                                 ; preds = %.lr.ph228.i, %._crit_edge229.loopexit242.i, %.preheader.i, %bb.s
  %.0124.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %bb.s ], [ %i.xo, %._crit_edge229.loopexit242.i ], [ 0, %.lr.ph228.i ] ; 2 uses
  %.0122.lcssa.i = phi i64 [ 0, %.preheader.i ], [ 0, %bb.s ], [ %i.xn, %._crit_edge229.loopexit242.i ], [ 0, %.lr.ph228.i ]
  %i.xp = getelementptr inbounds nuw [8 x i8], ptr %i.jv, i64 %.0122.lcssa.i ; 2 uses
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !348 ; 2 uses
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !5
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr inbounds [48 x i8], ptr %i.ct, i64 %i.xs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull align 8 dereferenceable(48) %i.xt, i64 48, i1 false)
  %i.xu = getelementptr inbounds [4 x i8], ptr %i.xq, i64 %.0124.lcssa.i
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !5
  %i.xw = sext i32 %i.xv to i64
  %i.xx = getelementptr inbounds [48 x i8], ptr %i.ct, i64 %i.xw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(48) %i.xx, i64 48, i1 false)
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.xz = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 3 uses
  br label %bb.av

bb.av:                                            ; preds = %cellUnion.exit189.i, %._crit_edge229.i
  %indvars.iv268.i = phi i64 [ 0, %._crit_edge229.i ], [ %indvars.iv.next269.i, %cellUnion.exit189.i ] ; 3 uses
  %i.ya = icmp slt i64 %indvars.iv268.i, %.0124.lcssa.i ; 2 uses
  %i.yb = select i1 %i.ya, ptr %.0125.i, ptr %.0122.i ; 2 uses
  %i.yc = load ptr, ptr %i.xp, align 8, !tbaa !348
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.yc, i64 %indvars.iv268.i
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !5
  %i.yf = sext i32 %i.ye to i64
  %i.yg = getelementptr inbounds [48 x i8], ptr %i.ct, i64 %i.yf ; 3 uses
  %i.yh = load i32, ptr %i.q, align 8, !tbaa !7985
  %i.yi = add nsw i32 %i.yh, -4
  %i.yj = load i8, ptr %i.t, align 1, !tbaa !7936
  %i.yk = zext i8 %i.yj to i32                    ; 2 uses
  %i.yl = sdiv i32 %i.yi, %i.yk
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yb, i64 24 ; 2 uses
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !7934 ; 3 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 2
  %.val.i.i45 = load i8, ptr %i.yo, align 1, !tbaa !227
  %i.yp = getelementptr i8, ptr %i.yn, i64 3
  %.val13.i.i = load i8, ptr %i.yp, align 1, !tbaa !227
  %i.yq = zext i8 %.val.i.i45 to i32
  %i.yr = shl nuw nsw i32 %i.yq, 8
  %i.ys = zext i8 %.val13.i.i to i32
  %i.yt = or disjoint i32 %i.yr, %i.ys            ; 3 uses
  %i.yu = icmp slt i32 %i.yt, %i.yl
  br i1 %i.yu, label %bb.aw, label %nodeInsertCell.exit.i

bb.aw:                                            ; preds = %bb.av
  %i.yv = mul nuw nsw i32 %i.yt, %i.yk
  %i.yw = zext nneg i32 %i.yv to i64
  %i.yx = getelementptr i8, ptr %i.yn, i64 %i.yw  ; 9 uses
  %i.yy = getelementptr i8, ptr %i.yx, i64 4
  %i.yz = load i64, ptr %i.yg, align 8, !tbaa !7969 ; 8 uses
  %i.za = lshr i64 %i.yz, 56
  %i.zb = trunc nuw i64 %i.za to i8
  store i8 %i.zb, ptr %i.yy, align 1, !tbaa !227
  %i.zc = lshr i64 %i.yz, 48
  %i.zd = trunc i64 %i.zc to i8
  %i.ze = getelementptr i8, ptr %i.yx, i64 5
  store i8 %i.zd, ptr %i.ze, align 1, !tbaa !227
  %i.zf = lshr i64 %i.yz, 40
  %i.zg = trunc i64 %i.zf to i8
  %i.zh = getelementptr i8, ptr %i.yx, i64 6
  store i8 %i.zg, ptr %i.zh, align 1, !tbaa !227
  %i.zi = lshr i64 %i.yz, 32
  %i.zj = trunc i64 %i.zi to i8
  %i.zk = getelementptr i8, ptr %i.yx, i64 7
  store i8 %i.zj, ptr %i.zk, align 1, !tbaa !227
  %i.zl = lshr i64 %i.yz, 24
  %i.zm = trunc i64 %i.zl to i8
  %i.zn = getelementptr i8, ptr %i.yx, i64 8
  store i8 %i.zm, ptr %i.zn, align 1, !tbaa !227
  %i.zo = lshr i64 %i.yz, 16
  %i.zp = trunc i64 %i.zo to i8
  %i.zq = getelementptr i8, ptr %i.yx, i64 9
  store i8 %i.zp, ptr %i.zq, align 1, !tbaa !227
  %i.zr = lshr i64 %i.yz, 8
  %i.zs = trunc i64 %i.zr to i8
  %i.zt = getelementptr i8, ptr %i.yx, i64 10
  store i8 %i.zs, ptr %i.zt, align 1, !tbaa !227
  %i.zu = trunc i64 %i.yz to i8
  %i.zv = getelementptr i8, ptr %i.yx, i64 11
  store i8 %i.zu, ptr %i.zv, align 1, !tbaa !227
  %i.zw = load i8, ptr %i.xz, align 1, !tbaa !7913
  %.not.i.i.i = icmp eq i8 %i.zw, 0
  br i1 %.not.i.i.i, label %nodeOverwriteCell.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aw
  %i.zx = getelementptr i8, ptr %i.yx, i64 12
  %i.zy = getelementptr inbounds nuw i8, ptr %i.yg, i64 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ax, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ax ] ; 2 uses
  %.015.i.i.i = phi ptr [ %i.zx, %.lr.ph.i.i.i ], [ %i.aak, %bb.ax ] ; 5 uses
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %indvars.iv.i.i.i
  %.val.i.i.i = load i32, ptr %i.zz, align 4, !tbaa !227 ; 4 uses
  %i.aaa = lshr i32 %.val.i.i.i, 24
  %i.aab = trunc nuw i32 %i.aaa to i8
  store i8 %i.aab, ptr %.015.i.i.i, align 1, !tbaa !227
  %i.aac = lshr i32 %.val.i.i.i, 16
  %i.aad = trunc i32 %i.aac to i8
  %i.aae = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 1
  store i8 %i.aad, ptr %i.aae, align 1, !tbaa !227
  %i.aaf = lshr i32 %.val.i.i.i, 8
  %i.aag = trunc i32 %i.aaf to i8
  %i.aah = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 2
  store i8 %i.aag, ptr %i.aah, align 1, !tbaa !227
  %i.aai = trunc i32 %.val.i.i.i to i8
  %i.aaj = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 3
  store i8 %i.aai, ptr %i.aaj, align 1, !tbaa !227
  %i.aak = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 4
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aal = load i8, ptr %i.xz, align 1, !tbaa !7913
  %i.aam = zext i8 %i.aal to i64
  %i.aan = icmp samesign ult i64 %indvars.iv.next.i.i.i, %i.aam
  br i1 %i.aan, label %bb.ax, label %nodeOverwriteCell.exit.i.i, !llvm.loop !8049

nodeOverwriteCell.exit.i.i:                       ; preds = %bb.ax, %bb.aw
  %i.aao = getelementptr inbounds nuw i8, ptr %i.yb, i64 20
  %i.aap = load ptr, ptr %i.ym, align 8, !tbaa !7934 ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 2
  %i.aar = add nuw nsw i32 %i.yt, 1               ; 2 uses
  %i.aas = lshr i32 %i.aar, 8
  %i.aat = trunc i32 %i.aas to i8
  store i8 %i.aat, ptr %i.aaq, align 1, !tbaa !227
  %i.aau = trunc i32 %i.aar to i8
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aap, i64 3
  store i8 %i.aau, ptr %i.aav, align 1, !tbaa !227
  store i32 1, ptr %i.aao, align 4, !tbaa !8014
  br label %nodeInsertCell.exit.i

nodeInsertCell.exit.i:                            ; preds = %nodeOverwriteCell.exit.i.i, %bb.av
  %i.aaw = load i8, ptr %i.xy, align 2, !tbaa !7964
  %i.aax = icmp eq i8 %i.aaw, 0
  %.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ya, ptr %6, ptr %7
  %.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 8 ; 5 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.yg, i64 8 ; 5 uses
  %i.aaz = load i8, ptr %i.xz, align 1, !tbaa !7913 ; 2 uses
  %i.aba = zext i8 %i.aaz to i64                  ; 3 uses
  %i.abb = tail call i64 @llvm.umax.i64(i64 %i.aba, i64 2)
  %i.abc = add nsw i64 %i.abb, -1
  %i.abd = lshr i64 %i.abc, 1                     ; 2 uses
  %i.abe = add nuw nsw i64 %i.abd, 1              ; 4 uses
  br i1 %i.aax, label %.preheader.i185.i.preheader, label %.preheader57.i181.i.preheader

.preheader57.i181.i.preheader:                    ; preds = %nodeInsertCell.exit.i
  %min.iters.check322 = icmp eq i64 %i.abd, 0
  br i1 %min.iters.check322, label %.preheader57.i181.i.preheader358, label %vector.ph323

vector.ph323:                                     ; preds = %.preheader57.i181.i.preheader
  %n.vec325 = and i64 %i.abe, 9223372036854775806 ; 3 uses
  %i.abf = shl nuw i64 %n.vec325, 1
  br label %vector.body326

vector.body326:                                   ; preds = %vector.body326, %vector.ph323
  %index327 = phi i64 [ 0, %vector.ph323 ], [ %index.next335, %vector.body326 ] ; 2 uses
  %i.abg = shl i64 %index327, 1                   ; 2 uses
  %i.abh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.abg ; 2 uses
  %wide.vec328 = load <4 x i32>, ptr %i.abh, align 8, !tbaa !227 ; 2 uses
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %i.abg
  %wide.vec331 = load <4 x i32>, ptr %i.abi, align 4, !tbaa !227 ; 2 uses
  %i.abj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec328, <4 x i32> %wide.vec331)
  %i.abk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec328, <4 x i32> %wide.vec331)
  %interleaved.vec334 = shufflevector <4 x i32> %i.abj, <4 x i32> %i.abk, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec334, ptr %i.abh, align 8, !tbaa !227
  %index.next335 = add nuw i64 %index327, 2       ; 2 uses
  %i.abl = icmp eq i64 %index.next335, %n.vec325
  br i1 %i.abl, label %middle.block336, label %vector.body326, !llvm.loop !8071

middle.block336:                                  ; preds = %vector.body326
  %cmp.n337 = icmp eq i64 %i.abe, %n.vec325
  br i1 %cmp.n337, label %cellUnion.exit189.i, label %.preheader57.i181.i.preheader358

.preheader57.i181.i.preheader358:                 ; preds = %.preheader57.i181.i.preheader, %middle.block336
  %indvars.iv.i182.i.ph = phi i64 [ 0, %.preheader57.i181.i.preheader ], [ %i.abf, %middle.block336 ]
  br label %.preheader57.i181.i

.preheader.i185.i.preheader:                      ; preds = %nodeInsertCell.exit.i
  %min.iters.check304 = icmp ult i8 %i.aaz, 7
  br i1 %min.iters.check304, label %.preheader.i185.i.preheader357, label %vector.ph305

vector.ph305:                                     ; preds = %.preheader.i185.i.preheader
  %n.vec307 = and i64 %i.abe, 9223372036854775804 ; 3 uses
  %i.abm = shl nuw i64 %n.vec307, 1
  br label %vector.body308

vector.body308:                                   ; preds = %vector.body308, %vector.ph305
  %index309 = phi i64 [ 0, %vector.ph305 ], [ %index.next317, %vector.body308 ] ; 2 uses
  %i.abn = shl i64 %index309, 1                   ; 2 uses
  %i.abo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.abn ; 2 uses
  %wide.vec310 = load <8 x float>, ptr %i.abo, align 8, !tbaa !227 ; 2 uses
  %strided.vec311 = shufflevector <8 x float> %wide.vec310, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec312 = shufflevector <8 x float> %wide.vec310, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %i.abn
  %wide.vec313 = load <8 x float>, ptr %i.abp, align 4, !tbaa !227 ; 2 uses
  %strided.vec314 = shufflevector <8 x float> %wide.vec313, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec315 = shufflevector <8 x float> %wide.vec313, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.abq = fcmp olt <4 x float> %strided.vec311, %strided.vec314
  %i.abr = select <4 x i1> %i.abq, <4 x float> %strided.vec311, <4 x float> %strided.vec314
  %i.abs = fcmp ogt <4 x float> %strided.vec312, %strided.vec315
  %i.abt = select <4 x i1> %i.abs, <4 x float> %strided.vec312, <4 x float> %strided.vec315
  %interleaved.vec316 = shufflevector <4 x float> %i.abr, <4 x float> %i.abt, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec316, ptr %i.abo, align 8, !tbaa !227
  %index.next317 = add nuw i64 %index309, 4       ; 2 uses
  %i.abu = icmp eq i64 %index.next317, %n.vec307
  br i1 %i.abu, label %middle.block318, label %vector.body308, !llvm.loop !8072

middle.block318:                                  ; preds = %vector.body308
  %cmp.n319 = icmp eq i64 %i.abe, %n.vec307
  br i1 %cmp.n319, label %cellUnion.exit189.i, label %.preheader.i185.i.preheader357

.preheader.i185.i.preheader357:                   ; preds = %.preheader.i185.i.preheader, %middle.block318
  %indvars.iv61.i186.i.ph = phi i64 [ 0, %.preheader.i185.i.preheader ], [ %i.abm, %middle.block318 ]
  br label %.preheader.i185.i

.preheader.i185.i:                                ; preds = %.preheader.i185.i.preheader357, %.preheader.i185.i
  %indvars.iv61.i186.i = phi i64 [ %indvars.iv.next62.i188.i, %.preheader.i185.i ], [ %indvars.iv61.i186.i.ph, %.preheader.i185.i.preheader357 ] ; 3 uses
  %i.abv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %indvars.iv61.i186.i ; 2 uses
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %indvars.iv61.i186.i
  %i.abx = load <2 x float>, ptr %i.abv, align 8, !tbaa !227 ; 3 uses
  %i.aby = load <2 x float>, ptr %i.abw, align 4, !tbaa !227 ; 3 uses
  %i.abz = shufflevector <2 x float> %i.abx, <2 x float> %i.aby, <2 x i32> <i32 0, i32 3>
  %i.aca = shufflevector <2 x float> %i.aby, <2 x float> %i.abx, <2 x i32> <i32 0, i32 3>
  %i.acb = fcmp olt <2 x float> %i.abz, %i.aca
  %i.acc = select <2 x i1> %i.acb, <2 x float> %i.abx, <2 x float> %i.aby
  store <2 x float> %i.acc, ptr %i.abv, align 8, !tbaa !227
  %indvars.iv.next62.i188.i = add nuw nsw i64 %indvars.iv61.i186.i, 2 ; 2 uses
  %i.acd = icmp samesign ult i64 %indvars.iv.next62.i188.i, %i.aba
  br i1 %i.acd, label %.preheader.i185.i, label %cellUnion.exit189.i, !llvm.loop !8073

.preheader57.i181.i:                              ; preds = %.preheader57.i181.i.preheader358, %.preheader57.i181.i
  %indvars.iv.i182.i = phi i64 [ %indvars.iv.next.i184.i, %.preheader57.i181.i ], [ %indvars.iv.i182.i.ph, %.preheader57.i181.i.preheader358 ] ; 4 uses
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %indvars.iv.i182.i ; 2 uses
  %i.acf = load i32, ptr %i.ace, align 8, !tbaa !227
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %indvars.iv.i182.i
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !227
  %.56.i183.i = tail call i32 @llvm.smin.i32(i32 %i.acf, i32 %i.ach)
  store i32 %.56.i183.i, ptr %i.ace, align 8, !tbaa !227
  %i.aci = or disjoint i64 %indvars.iv.i182.i, 1  ; 2 uses
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.sel.v.sroa.sel.v.sroa.sel, i64 %i.aci ; 2 uses
  %i.ack = load i32, ptr %i.acj, align 4, !tbaa !227
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.aay, i64 %i.aci
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !227
  %i.acn = tail call i32 @llvm.smax.i32(i32 %i.ack, i32 %i.acm)
  store i32 %i.acn, ptr %i.acj, align 4, !tbaa !227
  %indvars.iv.next.i184.i = add nuw nsw i64 %indvars.iv.i182.i, 2 ; 2 uses
  %i.aco = icmp samesign ult i64 %indvars.iv.next.i184.i, %i.aba
  br i1 %i.aco, label %.preheader57.i181.i, label %cellUnion.exit189.i, !llvm.loop !8074

cellUnion.exit189.i:                              ; preds = %.preheader57.i181.i, %.preheader.i185.i, %middle.block336, %middle.block318
  %indvars.iv.next269.i = add nuw nsw i64 %indvars.iv268.i, 1 ; 2 uses
  %exitcond272.not.i = icmp eq i64 %indvars.iv.next269.i, %i.cq
  br i1 %exitcond272.not.i, label %bb.ay, label %bb.av, !llvm.loop !8075

bb.ay:                                            ; preds = %cellUnion.exit189.i
  %i.acp = load i32, ptr @sqlite3Config, align 8, !tbaa !175
  %.not.i190.i = icmp eq i32 %i.acp, 0
  br i1 %.not.i190.i, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.acq = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i.i191.i = icmp eq ptr %i.acq, null
  br i1 %.not.i.i191.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.acr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !9
  tail call void %i.acr(ptr noundef nonnull %i.acq) #59, !inline_history !8076
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.ba, %bb.az
  %i.acs = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !94
  %i.act = tail call i32 %i.acs(ptr noundef nonnull %i.jv) #59, !inline_history !8077
  %i.acu = sext i32 %i.act to i64
  %i.acv = load i64, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.acw = sub nsw i64 %i.acv, %i.acu
  store i64 %i.acw, ptr @sqlite3Stat, align 8, !tbaa !18
  %i.acx = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.acy = add nsw i64 %i.acx, -1
  store i64 %i.acy, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !18
  %i.acz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.acz(ptr noundef nonnull %i.jv) #59, !inline_history !8078
  %i.ada = load ptr, ptr @mem0, align 8, !tbaa !176 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.ada, null
  br i1 %.not.i4.i.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.adb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.adb(ptr noundef nonnull %i.ada) #59, !inline_history !8079
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ay
  %i.adc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !180
  tail call void %i.adc(ptr noundef nonnull %i.jv) #59, !inline_history !8078
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %sqlite3_mutex_enter.exit.i.i, %bb.bb
  %i.add = tail call fastcc i32 @nodeWrite(ptr noundef nonnull %0, ptr noundef %.0122.i), !inline_history !8080 ; 2 uses
  %.not140.i = icmp eq i32 %i.add, 0
  br i1 %.not140.i, label %bb.be, label %SplitNode.exit

bb.be:                                            ; preds = %bb.bd
  %i.ade = getelementptr inbounds nuw i8, ptr %.0125.i, i64 8 ; 2 uses
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !8010 ; 2 uses
  %i.adg = icmp eq i64 %i.adf, 0
  br i1 %i.adg, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.adh = tail call fastcc i32 @nodeWrite(ptr noundef nonnull %0, ptr noundef %.0125.i), !inline_history !8080 ; 2 uses
  %.not141.i = icmp eq i32 %i.adh, 0
  br i1 %.not141.i, label %._crit_edge148, label %SplitNode.exit

._crit_edge148:                                   ; preds = %bb.bf
  %.pre = load i64, ptr %i.ade, align 8, !tbaa !8010
  br label %bb.bg

bb.bg:                                            ; preds = %._crit_edge148, %bb.be
  %i.adi = phi i64 [ %.pre, %._crit_edge148 ], [ %i.adf, %bb.be ]
  %i.adj = getelementptr inbounds nuw i8, ptr %.0122.i, i64 8 ; 2 uses
  %i.adk = load i64, ptr %i.adj, align 8, !tbaa !8010
  store i64 %i.adk, ptr %7, align 8, !tbaa !7969
  store i64 %i.adi, ptr %6, align 8, !tbaa !7969
  %i.adl = load i64, ptr %i.gm, align 8, !tbaa !8010
  %i.adm = icmp eq i64 %i.adl, 1
  %i.adn = load ptr, ptr %.0125.i, align 8, !tbaa !8011 ; 3 uses
  br i1 %i.adm, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.ado = add nsw i32 %3, 1                      ; 2 uses
  %i.adp = call fastcc i32 @rtreeInsertCell(ptr noundef nonnull %0, ptr noundef %i.adn, ptr noundef %6, i32 noundef %i.ado), !inline_history !8080 ; 2 uses
  %.not143.i = icmp eq i32 %i.adp, 0
  br i1 %.not143.i, label %bb.bk, label %SplitNode.exit

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.adq = call fastcc i32 @nodeParentIndex(ptr noundef nonnull %0, ptr noundef nonnull %.0125.i, ptr noundef %i.a), !inline_history !8080 ; 2 uses
  %i.adr = icmp eq i32 %i.adq, 0
  br i1 %i.adr, label %bb.bj, label %.thread

.thread:                                          ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %SplitNode.exit

bb.bj:                                            ; preds = %bb.bi
  %i.ads = load i32, ptr %i.a, align 4, !tbaa !5
  call fastcc void @nodeOverwriteCell(ptr noundef nonnull %0, ptr noundef %i.adn, ptr noundef %6, i32 noundef %i.ads), !inline_history !8080
  %i.adt = call fastcc i32 @AdjustTree(ptr noundef nonnull %0, ptr noundef %i.adn, ptr noundef %6), !inline_history !8080 ; 2 uses
  %.not142.i = icmp eq i32 %i.adt, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br i1 %.not142.i, label %._crit_edge149, label %SplitNode.exit

._crit_edge149:                                   ; preds = %bb.bj
  %.pre150 = add nsw i32 %3, 1
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge149, %bb.bh
  %.pre-phi = phi i32 [ %.pre150, %._crit_edge149 ], [ %i.ado, %bb.bh ]
  %i.adu = load ptr, ptr %.0122.i, align 8, !tbaa !8011
  %i.adv = call fastcc i32 @rtreeInsertCell(ptr noundef nonnull %0, ptr noundef %i.adu, ptr noundef %7, i32 noundef %.pre-phi), !inline_history !8080 ; 2 uses
  %.not144.i = icmp eq i32 %i.adv, 0
  br i1 %.not144.i, label %.preheader90, label %SplitNode.exit

.preheader90:                                     ; preds = %bb.bk
  %i.adw = load ptr, ptr %i.jj, align 8, !tbaa !7934 ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 2
  %.val149.i112 = load i8, ptr %i.adx, align 1, !tbaa !227
  %i.ady = getelementptr i8, ptr %i.adw, i64 3
  %.val150.i113 = load i8, ptr %i.ady, align 1, !tbaa !227
  %i.adz = zext i8 %.val149.i112 to i32
  %i.aea = shl nuw nsw i32 %i.adz, 8
  %i.aeb = zext i8 %.val150.i113 to i32
  %i.aec = or disjoint i32 %i.aea, %i.aeb
  %.not123 = icmp eq i32 %i.aec, 0
  br i1 %.not123, label %._crit_edge117.thread, label %.lr.ph116

.lr.ph116:                                        ; preds = %.preheader90
  %i.aed = icmp eq i32 %3, 0
  %i.aee = select i1 %i.aed, ptr @rowidWrite, ptr @parentWrite
  %i.aef = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.aeg = getelementptr inbounds nuw i8, ptr %.0122.i, i64 16 ; 2 uses
  br label %bb.bl

bb.bl:                                            ; preds = %.lr.ph116, %bb.bs
  %i.aeh = phi ptr [ %i.adw, %.lr.ph116 ], [ %i.agq, %bb.bs ]
  %.1.i115 = phi i32 [ 0, %.lr.ph116 ], [ %i.agp, %bb.bs ] ; 2 uses
  %.0120.i114 = phi i32 [ 0, %.lr.ph116 ], [ %spec.select.i, %bb.bs ]
  %.val154.i = load i8, ptr %i.t, align 1, !tbaa !7936
  %i.aei = zext i8 %.val154.i to i32
  %i.aej = mul nuw nsw i32 %.1.i115, %i.aei
  %i.aek = zext nneg i32 %i.aej to i64
end_hunk_6
begin_hunk_7_@removeNode:bb.a
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cw
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.0.i46 = phi ptr [ %i.cx, %bb.q ], [ %i.cz, %bb.r ] ; 2 uses
  %i.cy = load ptr, ptr %.0.i46, align 8, !tbaa !7929 ; 2 uses
  %.not12.i = icmp eq ptr %i.cy, %1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 32
  br i1 %.not12.i, label %bb.s, label %bb.r, !llvm.loop !8012

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !8013
  store ptr %i.db, ptr %.0.i46, align 8, !tbaa !7929
  br label %nodeHashDelete.exit

nodeHashDelete.exit:                              ; preds = %bb.p, %bb.s
  %i.dc = sext i32 %2 to i64
  store i64 %i.dc, ptr %i.bj, align 8, !tbaa !8010
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !8036
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.de, ptr %i.df, align 8, !tbaa !8013
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !8009
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %i.dg, align 8, !tbaa !8009
  store ptr %1, ptr %i.dd, align 8, !tbaa !8036
  br label %bb.t

bb.t:                                             ; preds = %.thread, %sqlite3_bind_int64.exit44, %sqlite3_bind_int64.exit, %nodeParentIndex.exit, %nodeHashDelete.exit
  %.033 = phi i32 [ 0, %nodeHashDelete.exit ], [ %spec.select, %nodeParentIndex.exit ], [ %i.bz, %sqlite3_bind_int64.exit ], [ %i.cr, %sqlite3_bind_int64.exit44 ], [ 267, %.thread ]
  ret i32 %.033
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 268) i32 @fixBoundingBox(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #39 {
bb.a:
  %2 = alloca %struct.RtreeCell, align 8          ; 3 uses
  %3 = alloca %struct.RtreeCell, align 8          ; 3 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !8011   ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7934 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %.val = load i8, ptr %i.d, align 1, !tbaa !227
  %i.e = getelementptr i8, ptr %i.c, i64 3
  %.val19 = load i8, ptr %i.e, align 1, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #59
  %i.f = getelementptr i8, ptr %0, i64 39
  %.val.i = load i8, ptr %i.f, align 1, !tbaa !7936 ; 2 uses
  %i.g = getelementptr i8, ptr %i.c, i64 12
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 37 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !7913  ; 2 uses
  %i.k = zext i8 %i.j to i64                      ; 5 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %.017.i = phi ptr [ %i.aw, %bb.c ], [ %i.g, %bb.b ] ; 9 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i ; 2 uses
  %i.m = load i8, ptr %.017.i, align 1, !tbaa !227
  %i.n = zext i8 %i.m to i32
  %i.o = shl nuw i32 %i.n, 24
  %i.p = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !227
  %i.r = zext i8 %i.q to i32
  %i.s = shl nuw nsw i32 %i.r, 16
  %i.t = or disjoint i32 %i.s, %i.o
  %i.u = getelementptr inbounds nuw i8, ptr %.017.i, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !227
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 8
  %i.y = or disjoint i32 %i.t, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %.017.i, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !227
  %i.ab = zext i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.y, %i.ab
  store i32 %i.ac, ptr %i.l, align 8, !tbaa !227
  %i.ad = getelementptr inbounds nuw i8, ptr %.017.i, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !227
  %i.ag = zext i8 %i.af to i32
  %i.ah = shl nuw i32 %i.ag, 24
  %i.ai = getelementptr inbounds nuw i8, ptr %.017.i, i64 5
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !227
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 16
  %i.am = or disjoint i32 %i.al, %i.ah
  %i.an = getelementptr inbounds nuw i8, ptr %.017.i, i64 6
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !227
  %i.ap = zext i8 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 8
  %i.ar = or disjoint i32 %i.am, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %.017.i, i64 7
  %i.at = load i8, ptr %i.as, align 1, !tbaa !227
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.ar, %i.au
  store i32 %i.av, ptr %i.ae, align 4, !tbaa !227
  %i.aw = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.ax = icmp samesign ult i64 %indvars.iv.next.i, %i.k
  br i1 %i.ax, label %bb.c, label %nodeGetCell.exit.preheader, !llvm.loop !7881

nodeGetCell.exit.preheader:                       ; preds = %bb.c
  %i.ay = zext i8 %.val to i32
  %i.az = shl nuw nsw i32 %i.ay, 8
  %i.ba = zext i8 %.val19 to i32
  %i.bb = or disjoint i32 %i.az, %i.ba            ; 2 uses
  %i.bc = icmp samesign ugt i32 %i.bb, 1
  br i1 %i.bc, label %.lr.ph, label %nodeGetCell.exit._crit_edge

.lr.ph:                                           ; preds = %nodeGetCell.exit.preheader
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 38
  %i.bf = load i8, ptr %i.be, align 2, !tbaa !7964
  %i.bg = icmp eq i8 %i.bf, 0
  %i.bh = zext i8 %.val.i to i64
  %wide.trip.count = zext nneg i32 %i.bb to i64
  %i.bi = tail call i64 @llvm.umax.i64(i64 %i.k, i64 2)
  %i.bj = add nsw i64 %i.bi, -1
  %i.bk = lshr i64 %i.bj, 1                       ; 2 uses
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 4 uses
  %min.iters.check59 = icmp eq i64 %i.bk, 0
  %n.vec62 = and i64 %i.bl, 9223372036854775806   ; 3 uses
  %i.bm = shl nuw i64 %n.vec62, 1
  %cmp.n74 = icmp eq i64 %i.bl, %n.vec62
  %min.iters.check = icmp ult i8 %i.j, 7
  %n.vec = and i64 %i.bl, 9223372036854775804     ; 3 uses
  %i.bn = shl nuw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.bl, %n.vec
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %cellUnion.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %cellUnion.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.bo = mul nuw nsw i64 %indvars.iv, %i.bh
  %i.bp = getelementptr i8, ptr %i.c, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 12
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i25, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %.017.i24 = phi ptr [ %i.dc, %bb.e ], [ %i.bq, %bb.d ] ; 9 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i23 ; 2 uses
  %i.bs = load i8, ptr %.017.i24, align 1, !tbaa !227
  %i.bt = zext i8 %i.bs to i32
  %i.bu = shl nuw i32 %i.bt, 24
  %i.bv = getelementptr inbounds nuw i8, ptr %.017.i24, i64 1
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !227
  %i.bx = zext i8 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 16
  %i.bz = or disjoint i32 %i.by, %i.bu
  %i.ca = getelementptr inbounds nuw i8, ptr %.017.i24, i64 2
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !227
  %i.cc = zext i8 %i.cb to i32
  %i.cd = shl nuw nsw i32 %i.cc, 8
  %i.ce = or disjoint i32 %i.bz, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %.017.i24, i64 3
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !227
  %i.ch = zext i8 %i.cg to i32
  %i.ci = or disjoint i32 %i.ce, %i.ch
  store i32 %i.ci, ptr %i.br, align 8, !tbaa !227
  %i.cj = getelementptr inbounds nuw i8, ptr %.017.i24, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.cl = load i8, ptr %i.cj, align 1, !tbaa !227
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw i32 %i.cm, 24
  %i.co = getelementptr inbounds nuw i8, ptr %.017.i24, i64 5
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !227
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 16
  %i.cs = or disjoint i32 %i.cr, %i.cn
  %i.ct = getelementptr inbounds nuw i8, ptr %.017.i24, i64 6
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !227
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = or disjoint i32 %i.cs, %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %.017.i24, i64 7
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !227
  %i.da = zext i8 %i.cz to i32
  %i.db = or disjoint i32 %i.cx, %i.da
  store i32 %i.db, ptr %i.ck, align 4, !tbaa !227
  %i.dc = getelementptr inbounds nuw i8, ptr %.017.i24, i64 8
  %indvars.iv.next.i25 = add nuw nsw i64 %indvars.iv.i23, 2 ; 2 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next.i25, %i.k
  br i1 %i.dd, label %bb.e, label %nodeGetCell.exit26, !llvm.loop !7881

nodeGetCell.exit26:                               ; preds = %bb.e
  br i1 %i.bg, label %.preheader.i.preheader, label %.preheader57.i.preheader

.preheader57.i.preheader:                         ; preds = %nodeGetCell.exit26
  br i1 %min.iters.check59, label %.preheader57.i.preheader78, label %vector.body63

vector.body63:                                    ; preds = %.preheader57.i.preheader, %vector.body63
  %index64 = phi i64 [ %index.next72, %vector.body63 ], [ 0, %.preheader57.i.preheader ] ; 2 uses
  %i.de = shl i64 %index64, 1                     ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.de ; 2 uses
  %wide.vec65 = load <4 x i32>, ptr %i.df, align 8, !tbaa !227 ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.de
  %wide.vec68 = load <4 x i32>, ptr %i.dg, align 8, !tbaa !227 ; 2 uses
  %i.dh = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec65, <4 x i32> %wide.vec68)
  %i.di = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec65, <4 x i32> %wide.vec68)
  %interleaved.vec71 = shufflevector <4 x i32> %i.dh, <4 x i32> %i.di, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec71, ptr %i.df, align 8, !tbaa !227
  %index.next72 = add nuw i64 %index64, 2         ; 2 uses
  %i.dj = icmp eq i64 %index.next72, %n.vec62
  br i1 %i.dj, label %middle.block73, label %vector.body63, !llvm.loop !8094

middle.block73:                                   ; preds = %vector.body63
  br i1 %cmp.n74, label %cellUnion.exit, label %.preheader57.i.preheader78

.preheader57.i.preheader78:                       ; preds = %.preheader57.i.preheader, %middle.block73
  %indvars.iv.i27.ph = phi i64 [ 0, %.preheader57.i.preheader ], [ %i.bm, %middle.block73 ]
  br label %.preheader57.i

.preheader.i.preheader:                           ; preds = %nodeGetCell.exit26
  br i1 %min.iters.check, label %.preheader.i.preheader77, label %vector.body

vector.body:                                      ; preds = %.preheader.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.dk = shl i64 %index, 1                       ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.dk ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.dl, align 8, !tbaa !227 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec54 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.dk
  %wide.vec55 = load <8 x float>, ptr %i.dm, align 8, !tbaa !227 ; 2 uses
  %strided.vec56 = shufflevector <8 x float> %wide.vec55, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec57 = shufflevector <8 x float> %wide.vec55, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.dn = fcmp olt <4 x float> %strided.vec, %strided.vec56
  %i.do = select <4 x i1> %i.dn, <4 x float> %strided.vec, <4 x float> %strided.vec56
  %i.dp = fcmp ogt <4 x float> %strided.vec54, %strided.vec57
  %i.dq = select <4 x i1> %i.dp, <4 x float> %strided.vec54, <4 x float> %strided.vec57
  %interleaved.vec = shufflevector <4 x float> %i.do, <4 x float> %i.dq, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.dl, align 8, !tbaa !227
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !8095

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %cellUnion.exit, label %.preheader.i.preheader77

.preheader.i.preheader77:                         ; preds = %.preheader.i.preheader, %middle.block
  %indvars.iv61.i.ph = phi i64 [ 0, %.preheader.i.preheader ], [ %i.bn, %middle.block ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader77, %.preheader.i
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %.preheader.i ], [ %indvars.iv61.i.ph, %.preheader.i.preheader77 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv61.i ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv61.i
  %i.du = load <2 x float>, ptr %i.ds, align 8, !tbaa !227 ; 3 uses
  %i.dv = load <2 x float>, ptr %i.dt, align 8, !tbaa !227 ; 3 uses
  %i.dw = shufflevector <2 x float> %i.du, <2 x float> %i.dv, <2 x i32> <i32 0, i32 3>
  %i.dx = shufflevector <2 x float> %i.dv, <2 x float> %i.du, <2 x i32> <i32 0, i32 3>
  %i.dy = fcmp olt <2 x float> %i.dw, %i.dx
  %i.dz = select <2 x i1> %i.dy, <2 x float> %i.du, <2 x float> %i.dv
  store <2 x float> %i.dz, ptr %i.ds, align 8, !tbaa !227
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 2 ; 2 uses
  %i.ea = icmp samesign ult i64 %indvars.iv.next62.i, %i.k
  br i1 %i.ea, label %.preheader.i, label %cellUnion.exit, !llvm.loop !8096

.preheader57.i:                                   ; preds = %.preheader57.i.preheader78, %.preheader57.i
  %indvars.iv.i27 = phi i64 [ %indvars.iv.next.i28, %.preheader57.i ], [ %indvars.iv.i27.ph, %.preheader57.i.preheader78 ] ; 4 uses
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i27 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !227
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i27
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !227
  %.56.i = tail call i32 @llvm.smin.i32(i32 %i.ec, i32 %i.ee)
  store i32 %.56.i, ptr %i.eb, align 8, !tbaa !227
  %i.ef = or disjoint i64 %indvars.iv.i27, 1      ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ef ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !227
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ef
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !227
  %i.ek = tail call i32 @llvm.smax.i32(i32 %i.eh, i32 %i.ej)
  store i32 %i.ek, ptr %i.eg, align 4, !tbaa !227
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i27, 2 ; 2 uses
  %i.el = icmp samesign ult i64 %indvars.iv.next.i28, %i.k
  br i1 %i.el, label %.preheader57.i, label %cellUnion.exit, !llvm.loop !8097

cellUnion.exit:                                   ; preds = %.preheader57.i, %.preheader.i, %middle.block73, %middle.block
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %nodeGetCell.exit._crit_edge, label %bb.d, !llvm.loop !8098

nodeGetCell.exit._crit_edge:                      ; preds = %cellUnion.exit, %nodeGetCell.exit.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !8010 ; 9 uses
  %i.eo = getelementptr i8, ptr %i.a, i64 24
  %.val.i29 = load ptr, ptr %i.eo, align 8, !tbaa !7934 ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val.i29, i64 2
  %.val.i.i = load i8, ptr %i.ep, align 1, !tbaa !227
  %i.eq = getelementptr i8, ptr %.val.i29, i64 3
  %.val11.i.i = load i8, ptr %i.eq, align 1, !tbaa !227
  %i.er = zext i8 %.val.i.i to i32
  %i.es = shl nuw nsw i32 %i.er, 8
  %i.et = zext i8 %.val11.i.i to i32
  %i.eu = or disjoint i32 %i.es, %i.et            ; 2 uses
  %.not.i.i = icmp eq i32 %i.eu, 0
  br i1 %.not.i.i, label %nodeParentIndex.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %nodeGetCell.exit._crit_edge
  %i.ev = zext i8 %.val.i to i64                  ; 2 uses
  %wide.trip.count.i.i = zext nneg i32 %i.eu to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 3 uses
  %i.ew = mul nuw nsw i64 %indvars.iv.i.i, %i.ev
  %i.ex = getelementptr i8, ptr %.val.i29, i64 %i.ew ; 8 uses
  %i.ey = getelementptr i8, ptr %i.ex, i64 4
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !227
  %i.fa = zext i8 %i.ez to i64
  %i.fb = shl nuw i64 %i.fa, 56
  %i.fc = getelementptr i8, ptr %i.ex, i64 5
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !227
  %i.fe = zext i8 %i.fd to i64
  %i.ff = shl nuw nsw i64 %i.fe, 48
  %i.fg = or disjoint i64 %i.ff, %i.fb
  %i.fh = getelementptr i8, ptr %i.ex, i64 6
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !227
  %i.fj = zext i8 %i.fi to i64
  %i.fk = shl nuw nsw i64 %i.fj, 40
  %i.fl = or disjoint i64 %i.fg, %i.fk
  %i.fm = getelementptr i8, ptr %i.ex, i64 7
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !227
  %i.fo = zext i8 %i.fn to i64
  %i.fp = shl nuw nsw i64 %i.fo, 32
  %i.fq = or disjoint i64 %i.fl, %i.fp
  %i.fr = getelementptr i8, ptr %i.ex, i64 8
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !227
  %i.ft = zext i8 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 24
  %i.fv = or disjoint i64 %i.fq, %i.fu
  %i.fw = getelementptr i8, ptr %i.ex, i64 9
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !227
  %i.fy = zext i8 %i.fx to i64
  %i.fz = shl nuw nsw i64 %i.fy, 16
  %i.ga = or disjoint i64 %i.fv, %i.fz
  %i.gb = getelementptr i8, ptr %i.ex, i64 10
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !227
  %i.gd = zext i8 %i.gc to i64
  %i.ge = shl nuw nsw i64 %i.gd, 8
  %i.gf = or disjoint i64 %i.ga, %i.ge
  %i.gg = getelementptr i8, ptr %i.ex, i64 11
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !227
  %i.gi = zext i8 %i.gh to i64
  %i.gj = add nuw i64 %i.gf, %i.gi
  %i.gk = icmp eq i64 %i.gj, %i.en
  br i1 %i.gk, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %nodeParentIndex.exit.thread, label %bb.f, !llvm.loop !7937

bb.h:                                             ; preds = %bb.f
  %i.gl = shl nuw nsw i64 %i.ev, 32
  %sext = mul i64 %i.gl, %indvars.iv.i.i
  %i.gm = ashr exact i64 %sext, 32
  %i.gn = getelementptr i8, ptr %.val.i29, i64 %i.gm ; 9 uses
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %i.gp = lshr i64 %i.en, 56
  %i.gq = trunc nuw i64 %i.gp to i8
  store i8 %i.gq, ptr %i.go, align 1, !tbaa !227
  %i.gr = lshr i64 %i.en, 48
  %i.gs = trunc i64 %i.gr to i8
  %i.gt = getelementptr i8, ptr %i.gn, i64 5
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !227
  %i.gu = lshr i64 %i.en, 40
  %i.gv = trunc i64 %i.gu to i8
  %i.gw = getelementptr i8, ptr %i.gn, i64 6
  store i8 %i.gv, ptr %i.gw, align 1, !tbaa !227
  %i.gx = lshr i64 %i.en, 32
  %i.gy = trunc i64 %i.gx to i8
  %i.gz = getelementptr i8, ptr %i.gn, i64 7
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !227
  %i.ha = lshr i64 %i.en, 24
  %i.hb = trunc i64 %i.ha to i8
  %i.hc = getelementptr i8, ptr %i.gn, i64 8
  store i8 %i.hb, ptr %i.hc, align 1, !tbaa !227
  %i.hd = lshr i64 %i.en, 16
  %i.he = trunc i64 %i.hd to i8
  %i.hf = getelementptr i8, ptr %i.gn, i64 9
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !227
  %i.hg = lshr i64 %i.en, 8
  %i.hh = trunc i64 %i.hg to i8
  %i.hi = getelementptr i8, ptr %i.gn, i64 10
  store i8 %i.hh, ptr %i.hi, align 1, !tbaa !227
  %i.hj = trunc i64 %i.en to i8
  %i.hk = getelementptr i8, ptr %i.gn, i64 11
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !227
  %i.hl = load i8, ptr %i.i, align 1, !tbaa !7913
  %.not.i30 = icmp eq i8 %i.hl, 0
  br i1 %.not.i30, label %nodeOverwriteCell.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.hm = getelementptr i8, ptr %i.gn, i64 12
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i31 = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i33, %bb.i ] ; 2 uses
  %.015.i = phi ptr [ %i.hm, %.lr.ph.i ], [ %i.hy, %bb.i ] ; 5 uses
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i31
  %.val.i32 = load i32, ptr %i.hn, align 4, !tbaa !227 ; 4 uses
  %i.ho = lshr i32 %.val.i32, 24
  %i.hp = trunc nuw i32 %i.ho to i8
  store i8 %i.hp, ptr %.015.i, align 1, !tbaa !227
  %i.hq = lshr i32 %.val.i32, 16
  %i.hr = trunc i32 %i.hq to i8
  %i.hs = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !227
  %i.ht = lshr i32 %.val.i32, 8
  %i.hu = trunc i32 %i.ht to i8
  %i.hv = getelementptr inbounds nuw i8, ptr %.015.i, i64 2
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !227
  %i.hw = trunc i32 %.val.i32 to i8
  %i.hx = getelementptr inbounds nuw i8, ptr %.015.i, i64 3
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !227
  %i.hy = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
end_hunk_7
begin_hunk_8_@AdjustTree:bb.a
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 32
  %i.an = or disjoint i64 %i.ai, %i.am
  %i.ao = getelementptr i8, ptr %i.u, i64 8
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !227
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 24
  %i.as = or disjoint i64 %i.an, %i.ar
  %i.at = getelementptr i8, ptr %i.u, i64 9
  %i.au = load i8, ptr %i.at, align 1, !tbaa !227
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 16
  %i.ax = or disjoint i64 %i.as, %i.aw
  %i.ay = getelementptr i8, ptr %i.u, i64 10
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !227
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 8
  %i.bc = or disjoint i64 %i.ax, %i.bb
  %i.bd = getelementptr i8, ptr %i.u, i64 11
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !227
  %i.bf = zext i8 %i.be to i64
  %i.bg = add nuw i64 %i.bc, %i.bf
  %i.bh = icmp eq i64 %i.bg, %i.k
  br i1 %i.bh, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge, label %bb.d, !llvm.loop !7937

bb.f:                                             ; preds = %bb.d
  %i.bi = shl i64 %indvars.iv.i.i, 32
  %sext = mul i64 %i.bi, %i.s
  %i.bj = ashr exact i64 %sext, 32
  %i.bk = getelementptr i8, ptr %.val.i, i64 %i.bj ; 9 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 4      ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !227
  %i.bn = zext i8 %i.bm to i64
  %i.bo = shl nuw i64 %i.bn, 56
  %i.bp = getelementptr i8, ptr %i.bk, i64 5      ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !227
  %i.br = zext i8 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 48
  %i.bt = or disjoint i64 %i.bs, %i.bo
  %i.bu = getelementptr i8, ptr %i.bk, i64 6      ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !227
  %i.bw = zext i8 %i.bv to i64
  %i.bx = shl nuw nsw i64 %i.bw, 40
  %i.by = or disjoint i64 %i.bt, %i.bx
  %i.bz = getelementptr i8, ptr %i.bk, i64 7      ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !227
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %i.cb, 32
  %i.cd = or disjoint i64 %i.by, %i.cc
  %i.ce = getelementptr i8, ptr %i.bk, i64 8      ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !227
  %i.cg = zext i8 %i.cf to i64
  %i.ch = shl nuw nsw i64 %i.cg, 24
  %i.ci = or disjoint i64 %i.cd, %i.ch
  %i.cj = getelementptr i8, ptr %i.bk, i64 9      ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !227
  %i.cl = zext i8 %i.ck to i64
  %i.cm = shl nuw nsw i64 %i.cl, 16
  %i.cn = or disjoint i64 %i.ci, %i.cm
  %i.co = getelementptr i8, ptr %i.bk, i64 10     ; 2 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !227
  %i.cq = zext i8 %i.cp to i64
  %i.cr = shl nuw nsw i64 %i.cq, 8
  %i.cs = or disjoint i64 %i.cn, %i.cr
  %i.ct = getelementptr i8, ptr %i.bk, i64 11     ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !227
  %i.cv = zext i8 %i.cu to i64
  %i.cw = add nuw i64 %i.cs, %i.cv                ; 8 uses
  %i.cx = getelementptr i8, ptr %i.bk, i64 12     ; 2 uses
  %i.cy = load i8, ptr %i.d, align 1, !tbaa !7913 ; 3 uses
  %i.cz = zext i8 %i.cy to i64                    ; 6 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.g ], [ 0, %bb.f ] ; 2 uses
  %.017.i = phi ptr [ %i.el, %bb.g ], [ %i.cx, %bb.f ] ; 9 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i ; 2 uses
  %i.db = load i8, ptr %.017.i, align 1, !tbaa !227
  %i.dc = zext i8 %i.db to i32
  %i.dd = shl nuw i32 %i.dc, 24
  %i.de = getelementptr inbounds nuw i8, ptr %.017.i, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !227
  %i.dg = zext i8 %i.df to i32
  %i.dh = shl nuw nsw i32 %i.dg, 16
  %i.di = or disjoint i32 %i.dh, %i.dd
  %i.dj = getelementptr inbounds nuw i8, ptr %.017.i, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !227
  %i.dl = zext i8 %i.dk to i32
  %i.dm = shl nuw nsw i32 %i.dl, 8
  %i.dn = or disjoint i32 %i.di, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %.017.i, i64 3
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !227
  %i.dq = zext i8 %i.dp to i32
  %i.dr = or disjoint i32 %i.dn, %i.dq
  store i32 %i.dr, ptr %i.da, align 8, !tbaa !227
  %i.ds = getelementptr inbounds nuw i8, ptr %.017.i, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.du = load i8, ptr %i.ds, align 1, !tbaa !227
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw i32 %i.dv, 24
  %i.dx = getelementptr inbounds nuw i8, ptr %.017.i, i64 5
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !227
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 16
  %i.eb = or disjoint i32 %i.ea, %i.dw
  %i.ec = getelementptr inbounds nuw i8, ptr %.017.i, i64 6
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !227
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 8
  %i.eg = or disjoint i32 %i.eb, %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %.017.i, i64 7
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !227
  %i.ej = zext i8 %i.ei to i32
  %i.ek = or disjoint i32 %i.eg, %i.ej
  store i32 %i.ek, ptr %i.dt, align 4, !tbaa !227
  %i.el = getelementptr inbounds nuw i8, ptr %.017.i, i64 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.em = icmp samesign ult i64 %indvars.iv.next.i, %i.cz
  br i1 %i.em, label %bb.g, label %nodeGetCell.exit, !llvm.loop !7881

nodeGetCell.exit:                                 ; preds = %bb.g
  %i.en = load i8, ptr %i.e, align 2, !tbaa !7964 ; 2 uses
  %i.eo = icmp eq i8 %i.en, 1
  %.not45.i = icmp eq i8 %i.cy, 0                 ; 2 uses
  br i1 %i.eo, label %.preheader.i, label %.preheader32.i

.preheader32.i:                                   ; preds = %nodeGetCell.exit
  br i1 %.not45.i, label %cellContains.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %nodeGetCell.exit
  br i1 %.not45.i, label %cellContains.exit, label %.lr.ph40.i

bb.h:                                             ; preds = %.critedge.i
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 2 ; 2 uses
  %i.ep = icmp samesign ult i64 %indvars.iv.next50.i, %i.cz
  br i1 %i.ep, label %.lr.ph40.i, label %cellContains.exit, !llvm.loop !8040

.lr.ph40.i:                                       ; preds = %.preheader.i, %bb.h
  %indvars.iv49.i = phi i64 [ %indvars.iv.next50.i, %bb.h ], [ 0, %.preheader.i ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv49.i ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv49.i ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !227
  %i.et = load i32, ptr %i.eq, align 8, !tbaa !227
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.loopexit, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph40.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !227
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !227
  %i.ez = icmp sgt i32 %i.ew, %i.ey
  br i1 %i.ez, label %.loopexit, label %bb.h

bb.i:                                             ; preds = %.critedge31.i
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i26, 2 ; 2 uses
  %i.fa = icmp samesign ult i64 %indvars.iv.next.i27, %i.cz
  br i1 %i.fa, label %.lr.ph.i, label %cellContains.exit, !llvm.loop !8041

.lr.ph.i:                                         ; preds = %.preheader32.i, %bb.i
  %indvars.iv.i26 = phi i64 [ %indvars.iv.next.i27, %bb.i ], [ 0, %.preheader32.i ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i26 ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i26 ; 2 uses
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !227
  %i.fe = load float, ptr %i.fb, align 8, !tbaa !227
  %i.ff = fcmp olt float %i.fd, %i.fe
  br i1 %i.ff, label %.loopexit, label %.critedge31.i

.critedge31.i:                                    ; preds = %.lr.ph.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !227
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !227
  %i.fk = fcmp ogt float %i.fh, %i.fj
  br i1 %i.fk, label %.loopexit, label %bb.i

.loopexit:                                        ; preds = %.lr.ph.i, %.critedge31.i, %.critedge.i, %.lr.ph40.i
  %i.fl = icmp eq i8 %i.en, 0
  %i.fm = tail call i64 @llvm.umax.i64(i64 %i.cz, i64 2)
  %i.fn = add nsw i64 %i.fm, -1
  %i.fo = lshr i64 %i.fn, 1                       ; 2 uses
  %i.fp = add nuw nsw i64 %i.fo, 1                ; 4 uses
  br i1 %i.fl, label %.preheader.i30.preheader, label %.preheader57.i.preheader

.preheader57.i.preheader:                         ; preds = %.loopexit
  %min.iters.check76 = icmp eq i64 %i.fo, 0
  br i1 %min.iters.check76, label %.preheader57.i.preheader94, label %vector.ph77

vector.ph77:                                      ; preds = %.preheader57.i.preheader
  %n.vec79 = and i64 %i.fp, 9223372036854775806   ; 3 uses
  %i.fq = shl nuw i64 %n.vec79, 1
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph77
  %index81 = phi i64 [ 0, %vector.ph77 ], [ %index.next89, %vector.body80 ] ; 2 uses
  %i.fr = shl i64 %index81, 1                     ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fr ; 2 uses
  %wide.vec82 = load <4 x i32>, ptr %i.fs, align 8, !tbaa !227 ; 2 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fr
  %wide.vec85 = load <4 x i32>, ptr %i.ft, align 4, !tbaa !227 ; 2 uses
  %i.fu = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.vec82, <4 x i32> %wide.vec85)
  %i.fv = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.vec82, <4 x i32> %wide.vec85)
  %interleaved.vec88 = shufflevector <4 x i32> %i.fu, <4 x i32> %i.fv, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  store <4 x i32> %interleaved.vec88, ptr %i.fs, align 8, !tbaa !227
  %index.next89 = add nuw i64 %index81, 2         ; 2 uses
  %i.fw = icmp eq i64 %index.next89, %n.vec79
  br i1 %i.fw, label %middle.block90, label %vector.body80, !llvm.loop !8100

middle.block90:                                   ; preds = %vector.body80
  %cmp.n91 = icmp eq i64 %i.fp, %n.vec79
  br i1 %cmp.n91, label %cellUnion.exit, label %.preheader57.i.preheader94

.preheader57.i.preheader94:                       ; preds = %.preheader57.i.preheader, %middle.block90
  %indvars.iv.i28.ph = phi i64 [ 0, %.preheader57.i.preheader ], [ %i.fq, %middle.block90 ]
  br label %.preheader57.i

.preheader.i30.preheader:                         ; preds = %.loopexit
  %min.iters.check = icmp ult i8 %i.cy, 7
  br i1 %min.iters.check, label %.preheader.i30.preheader93, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i30.preheader
  %n.vec = and i64 %i.fp, 9223372036854775804     ; 3 uses
  %i.fx = shl nuw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fy = shl i64 %index, 1                       ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.fy ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.fz, align 8, !tbaa !227 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec71 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fy
  %wide.vec72 = load <8 x float>, ptr %i.ga, align 4, !tbaa !227 ; 2 uses
  %strided.vec73 = shufflevector <8 x float> %wide.vec72, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec74 = shufflevector <8 x float> %wide.vec72, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.gb = fcmp olt <4 x float> %strided.vec, %strided.vec73
  %i.gc = select <4 x i1> %i.gb, <4 x float> %strided.vec, <4 x float> %strided.vec73
  %i.gd = fcmp ogt <4 x float> %strided.vec71, %strided.vec74
  %i.ge = select <4 x i1> %i.gd, <4 x float> %strided.vec71, <4 x float> %strided.vec74
  %interleaved.vec = shufflevector <4 x float> %i.gc, <4 x float> %i.ge, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.fz, align 8, !tbaa !227
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !8101

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fp, %n.vec
  br i1 %cmp.n, label %cellUnion.exit, label %.preheader.i30.preheader93

.preheader.i30.preheader93:                       ; preds = %.preheader.i30.preheader, %middle.block
  %indvars.iv61.i.ph = phi i64 [ 0, %.preheader.i30.preheader ], [ %i.fx, %middle.block ]
  br label %.preheader.i30

.preheader.i30:                                   ; preds = %.preheader.i30.preheader93, %.preheader.i30
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %.preheader.i30 ], [ %indvars.iv61.i.ph, %.preheader.i30.preheader93 ] ; 3 uses
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv61.i ; 2 uses
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv61.i
  %i.gi = load <2 x float>, ptr %i.gg, align 8, !tbaa !227 ; 3 uses
  %i.gj = load <2 x float>, ptr %i.gh, align 4, !tbaa !227 ; 3 uses
  %i.gk = shufflevector <2 x float> %i.gi, <2 x float> %i.gj, <2 x i32> <i32 0, i32 3>
  %i.gl = shufflevector <2 x float> %i.gj, <2 x float> %i.gi, <2 x i32> <i32 0, i32 3>
  %i.gm = fcmp olt <2 x float> %i.gk, %i.gl
  %i.gn = select <2 x i1> %i.gm, <2 x float> %i.gi, <2 x float> %i.gj
  store <2 x float> %i.gn, ptr %i.gg, align 8, !tbaa !227
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 2 ; 2 uses
  %i.go = icmp samesign ult i64 %indvars.iv.next62.i, %i.cz
  br i1 %i.go, label %.preheader.i30, label %cellUnion.exit, !llvm.loop !8102

.preheader57.i:                                   ; preds = %.preheader57.i.preheader94, %.preheader57.i
  %indvars.iv.i28 = phi i64 [ %indvars.iv.next.i29, %.preheader57.i ], [ %indvars.iv.i28.ph, %.preheader57.i.preheader94 ] ; 4 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i28 ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 8, !tbaa !227
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i28
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !227
  %.56.i = tail call i32 @llvm.smin.i32(i32 %i.gq, i32 %i.gs)
  store i32 %.56.i, ptr %i.gp, align 8, !tbaa !227
  %i.gt = or disjoint i64 %indvars.iv.i28, 1      ; 2 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gt ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !227
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.gt
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !227
  %i.gy = tail call i32 @llvm.smax.i32(i32 %i.gv, i32 %i.gx)
  store i32 %i.gy, ptr %i.gu, align 4, !tbaa !227
  %indvars.iv.next.i29 = add nuw nsw i64 %indvars.iv.i28, 2 ; 2 uses
  %i.gz = icmp samesign ult i64 %indvars.iv.next.i29, %i.cz
  br i1 %i.gz, label %.preheader57.i, label %cellUnion.exit, !llvm.loop !8103

cellUnion.exit:                                   ; preds = %.preheader57.i, %.preheader.i30, %middle.block90, %middle.block
  %i.ha = lshr i64 %i.cw, 56
  %i.hb = trunc nuw i64 %i.ha to i8
  store i8 %i.hb, ptr %i.bl, align 1, !tbaa !227
  %i.hc = lshr i64 %i.cw, 48
  %i.hd = trunc i64 %i.hc to i8
  store i8 %i.hd, ptr %i.bp, align 1, !tbaa !227
  %i.he = lshr i64 %i.cw, 40
  %i.hf = trunc i64 %i.he to i8
  store i8 %i.hf, ptr %i.bu, align 1, !tbaa !227
  %i.hg = lshr i64 %i.cw, 32
  %i.hh = trunc i64 %i.hg to i8
  store i8 %i.hh, ptr %i.bz, align 1, !tbaa !227
  %i.hi = lshr i64 %i.cw, 24
  %i.hj = trunc i64 %i.hi to i8
  store i8 %i.hj, ptr %i.ce, align 1, !tbaa !227
  %i.hk = lshr i64 %i.cw, 16
  %i.hl = trunc i64 %i.hk to i8
  store i8 %i.hl, ptr %i.cj, align 1, !tbaa !227
  %i.hm = lshr i64 %i.cw, 8
  %i.hn = trunc i64 %i.hm to i8
  store i8 %i.hn, ptr %i.co, align 1, !tbaa !227
  %i.ho = trunc i64 %i.cw to i8
  store i8 %i.ho, ptr %i.ct, align 1, !tbaa !227
  %i.hp = load i8, ptr %i.d, align 1, !tbaa !7913
  %.not.i31 = icmp eq i8 %i.hp, 0
  br i1 %.not.i31, label %nodeOverwriteCell.exit, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %cellUnion.exit, %.lr.ph.i32
  %indvars.iv.i33 = phi i64 [ %indvars.iv.next.i35, %.lr.ph.i32 ], [ 0, %cellUnion.exit ] ; 2 uses
  %.015.i = phi ptr [ %i.ib, %.lr.ph.i32 ], [ %i.cx, %cellUnion.exit ] ; 5 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i33
  %.val.i34 = load i32, ptr %i.hq, align 4, !tbaa !227 ; 4 uses
  %i.hr = lshr i32 %.val.i34, 24
  %i.hs = trunc nuw i32 %i.hr to i8
  store i8 %i.hs, ptr %.015.i, align 1, !tbaa !227
  %i.ht = lshr i32 %.val.i34, 16
  %i.hu = trunc i32 %i.ht to i8
  %i.hv = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !227
  %i.hw = lshr i32 %.val.i34, 8
  %i.hx = trunc i32 %i.hw to i8
  %i.hy = getelementptr inbounds nuw i8, ptr %.015.i, i64 2
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !227
  %i.hz = trunc i32 %.val.i34 to i8
  %i.ia = getelementptr inbounds nuw i8, ptr %.015.i, i64 3
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !227
  %i.ib = getelementptr inbounds nuw i8, ptr %.015.i, i64 4
  %indvars.iv.next.i35 = add nuw nsw i64 %indvars.iv.i33, 1 ; 2 uses
  %i.ic = load i8, ptr %i.d, align 1, !tbaa !7913
  %i.id = zext i8 %i.ic to i64
  %i.ie = icmp samesign ult i64 %indvars.iv.next.i35, %i.id
  br i1 %i.ie, label %.lr.ph.i32, label %nodeOverwriteCell.exit, !llvm.loop !8049

nodeOverwriteCell.exit:                           ; preds = %.lr.ph.i32, %cellUnion.exit
  %i.if = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  store i32 1, ptr %i.if, align 4, !tbaa !8014
  br label %cellContains.exit

cellContains.exit:                                ; preds = %bb.i, %bb.h, %.preheader.i, %.preheader32.i, %nodeOverwriteCell.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  %i.ig = load ptr, ptr %i.i, align 8, !tbaa !8011 ; 2 uses
  %.not = icmp eq ptr %i.ig, null
  br i1 %.not, label %.loopexit45, label %bb.b, !llvm.loop !8099

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  br label %.loopexit45

.loopexit45:                                      ; preds = %cellContains.exit, %bb.a, %.critedge
  %.2 = phi i32 [ 267, %.critedge ], [ 0, %bb.a ], [ 0, %cellContains.exit ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal i32 @rowidWrite(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7972 ; 3 uses
  %i.c = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.b, i32 noundef 0)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %sqlite3_bind_int64.exit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !162
  %i.i = and i16 %i.h, -28672
  %.not.i.i = icmp eq i16 %i.i, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.f, i64 noundef %1)
  br label %sqlite3VdbeMemSetInt64.exit.i

bb.d:                                             ; preds = %bb.b
  store i64 %1, ptr %i.f, align 8, !tbaa !227
  store i16 4, ptr %i.g, align 4, !tbaa !162
  br label %sqlite3VdbeMemSetInt64.exit.i

sqlite3VdbeMemSetInt64.exit.i:                    ; preds = %bb.d, %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !146
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %.not.i8.i = icmp eq ptr %i.l, null
  br i1 %.not.i8.i, label %sqlite3_bind_int64.exit, label %bb.e

bb.e:                                             ; preds = %sqlite3VdbeMemSetInt64.exit.i
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !19
  tail call void %i.m(ptr noundef nonnull %i.l) #59, !inline_history !855
  br label %sqlite3_bind_int64.exit

sqlite3_bind_int64.exit:                          ; preds = %bb.a, %sqlite3VdbeMemSetInt64.exit.i, %bb.e
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !7972 ; 3 uses
  %i.o = tail call fastcc i32 @vdbeUnbind(ptr noundef %i.n, i32 noundef 1)
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %sqlite3_bind_int64.exit8

bb.f:                                             ; preds = %sqlite3_bind_int64.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 128
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !171  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 76 ; 2 uses
  %i.u = load i16, ptr %i.t, align 4, !tbaa !162
  %i.v = and i16 %i.u, -28672
  %.not.i.i5 = icmp eq i16 %i.v, 0
  br i1 %.not.i.i5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.s, i64 noundef %2)
  br label %sqlite3VdbeMemSetInt64.exit.i6

bb.h:                                             ; preds = %bb.f
  store i64 %2, ptr %i.s, align 8, !tbaa !227
  store i16 4, ptr %i.t, align 4, !tbaa !162
  br label %sqlite3VdbeMemSetInt64.exit.i6

sqlite3VdbeMemSetInt64.exit.i6:                   ; preds = %bb.h, %bb.g
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !146
end_hunk_8
