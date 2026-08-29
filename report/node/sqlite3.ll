Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/sqlite3?download=true
inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@vtabCallConstructor:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %.pre216 = load ptr, ptr %i.dz, align 8, !tbaa !884
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph191, %bb.ap
  %i.eb = phi i16 [ %i.dx, %.lr.ph191 ], [ %i.iy, %bb.ap ]
  %i.ec = phi ptr [ %.pre216, %.lr.ph191 ], [ %i.iz, %bb.ap ] ; 2 uses
  %indvars.iv214 = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next215, %bb.ap ] ; 3 uses
  %.0113189 = phi i16 [ 0, %.lr.ph191 ], [ %.1, %bb.ap ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %indvars.iv214 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 14
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !885
  %i.eg = and i16 %i.ef, 4
  %.not.i154 = icmp eq i16 %i.eg, 0
  br i1 %.not.i154, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !931 ; 2 uses
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
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !253 ; 2 uses
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
  %i.ey = load i8, ptr %.0.i155166, align 1, !tbaa !229
  %i.ez = and i8 %i.ey, -33
  %i.fa = icmp eq i8 %i.ez, 72
  br i1 %i.fa, label %.lr.ph.i158.1.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.1.peel:                               ; preds = %bb.ak
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 1 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !229
  %i.fd = and i8 %i.fc, -33
  %i.fe = icmp eq i8 %i.fd, 73
  br i1 %i.fe, label %.lr.ph.i158.2.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.2.peel:                               ; preds = %.lr.ph.i158.1.peel
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 2 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !229
  %i.fh = and i8 %i.fg, -33
  %i.fi = icmp eq i8 %i.fh, 68
  br i1 %i.fi, label %.lr.ph.i158.3.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.3.peel:                               ; preds = %.lr.ph.i158.2.peel
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 3 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !229
  %i.fl = and i8 %i.fk, -33
  %i.fm = icmp eq i8 %i.fl, 68
  br i1 %i.fm, label %.lr.ph.i158.4.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.4.peel:                               ; preds = %.lr.ph.i158.3.peel
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 4 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !229
  %i.fp = and i8 %i.fo, -33
  %i.fq = icmp eq i8 %i.fp, 69
  br i1 %i.fq, label %.lr.ph.i158.5.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.5.peel:                               ; preds = %.lr.ph.i158.4.peel
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 5 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !229
  %i.ft = and i8 %i.fs, -33
  %i.fu = icmp eq i8 %i.ft, 78
  br i1 %i.fu, label %sqlite3_strnicmp.exit.thread.peel, label %sqlite3_strnicmp.exit.peel

sqlite3_strnicmp.exit.peel:                       ; preds = %bb.ak, %.lr.ph.i158.1.peel, %.lr.ph.i158.2.peel, %.lr.ph.i158.3.peel, %.lr.ph.i158.4.peel, %.lr.ph.i158.5.peel
  %.lcssa.peel = phi i32 [ 104, %bb.ak ], [ 105, %.lr.ph.i158.1.peel ], [ 100, %.lr.ph.i158.2.peel ], [ 100, %.lr.ph.i158.3.peel ], [ 101, %.lr.ph.i158.4.peel ], [ 110, %.lr.ph.i158.5.peel ]
  %.023.i.lcssa193.peel = phi ptr [ %.0.i155166, %bb.ak ], [ %i.fb, %.lr.ph.i158.1.peel ], [ %i.ff, %.lr.ph.i158.2.peel ], [ %i.fj, %.lr.ph.i158.3.peel ], [ %i.fn, %.lr.ph.i158.4.peel ], [ %i.fr, %.lr.ph.i158.5.peel ]
  %i.fv = load i8, ptr %.023.i.lcssa193.peel, align 1, !tbaa !229
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !229
  %i.fz = zext i8 %i.fy to i32
  %i.ga = icmp eq i32 %.lcssa.peel, %i.fz
  br i1 %i.ga, label %sqlite3_strnicmp.exit.thread.peel, label %sqlite3_strnicmp.exit.thread169.peel

sqlite3_strnicmp.exit.thread.peel:                ; preds = %sqlite3_strnicmp.exit.peel, %.lr.ph.i158.5.peel
  %i.gb = load i8, ptr %scevgep, align 1, !tbaa !229 ; 3 uses
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
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !229
  %i.ge = and i8 %i.gd, -33
  %i.gf = icmp eq i8 %i.ge, 72
  br i1 %i.gf, label %.lr.ph.i158.1, label %sqlite3_strnicmp.exit

.lr.ph.i158.1:                                    ; preds = %.lr.ph.i158.preheader.peel.next
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !229
  %i.gi = and i8 %i.gh, -33
  %i.gj = icmp eq i8 %i.gi, 73
  br i1 %i.gj, label %.lr.ph.i158.2, label %sqlite3_strnicmp.exit

.lr.ph.i158.2:                                    ; preds = %.lr.ph.i158.1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 2 ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !229
  %i.gm = and i8 %i.gl, -33
  %i.gn = icmp eq i8 %i.gm, 68
  br i1 %i.gn, label %.lr.ph.i158.3, label %sqlite3_strnicmp.exit

.lr.ph.i158.3:                                    ; preds = %.lr.ph.i158.2
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 3 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !229
  %i.gq = and i8 %i.gp, -33
  %i.gr = icmp eq i8 %i.gq, 68
  br i1 %i.gr, label %.lr.ph.i158.4, label %sqlite3_strnicmp.exit

.lr.ph.i158.4:                                    ; preds = %.lr.ph.i158.3
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !229
  %i.gu = and i8 %i.gt, -33
  %i.gv = icmp eq i8 %i.gu, 69
  br i1 %i.gv, label %.lr.ph.i158.5, label %sqlite3_strnicmp.exit

.lr.ph.i158.5:                                    ; preds = %.lr.ph.i158.4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gc, i64 5 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !229
  %i.gy = and i8 %i.gx, -33
  %i.gz = icmp eq i8 %i.gy, 78
  br i1 %i.gz, label %sqlite3_strnicmp.exit.thread, label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit:                            ; preds = %.lr.ph.i158.preheader.peel.next, %.lr.ph.i158.1, %.lr.ph.i158.2, %.lr.ph.i158.3, %.lr.ph.i158.4, %.lr.ph.i158.5
  %.lcssa = phi i32 [ 104, %.lr.ph.i158.preheader.peel.next ], [ 105, %.lr.ph.i158.1 ], [ 100, %.lr.ph.i158.2 ], [ 100, %.lr.ph.i158.3 ], [ 101, %.lr.ph.i158.4 ], [ 110, %.lr.ph.i158.5 ]
  %.023.i.lcssa193 = phi ptr [ %i.gc, %.lr.ph.i158.preheader.peel.next ], [ %i.gg, %.lr.ph.i158.1 ], [ %i.gk, %.lr.ph.i158.2 ], [ %i.go, %.lr.ph.i158.3 ], [ %i.gs, %.lr.ph.i158.4 ], [ %i.gw, %.lr.ph.i158.5 ]
  %i.ha = load i8, ptr %.023.i.lcssa193, align 1, !tbaa !229
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !229
  %i.he = zext i8 %i.hd to i32
  %i.hf = icmp eq i32 %.lcssa, %i.he
  br i1 %i.hf, label %sqlite3_strnicmp.exit.thread, label %sqlite3_strnicmp.exit.thread169

sqlite3_strnicmp.exit.thread:                     ; preds = %sqlite3_strnicmp.exit, %.lr.ph.i158.5
  %i.hg = getelementptr i8, ptr %i.gc, i64 -1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !229
  %i.hi = icmp eq i8 %i.hh, 32
  br i1 %i.hi, label %bb.al, label %sqlite3_strnicmp.exit.thread169

bb.al:                                            ; preds = %sqlite3_strnicmp.exit.thread
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gc, i64 6
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !229 ; 2 uses
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
  %.0112181.lcssa = phi i32 [ 0, %sqlite3_strnicmp.exit.thread.peel ], [ 0, %sqlite3_strnicmp.exit.thread.peel ], [ %i.hl, %.loopexit ] ; 3 uses
  %.lcssa198 = phi ptr [ %.0.i155166, %sqlite3_strnicmp.exit.thread.peel ], [ %.0.i155166, %sqlite3_strnicmp.exit.thread.peel ], [ %i.gc, %.loopexit ] ; 2 uses
  %.lcssa197 = phi i8 [ %i.gb, %sqlite3_strnicmp.exit.thread.peel ], [ %i.gb, %sqlite3_strnicmp.exit.thread.peel ], [ %i.hk, %.loopexit ]
  %.not132.not = icmp eq i8 %.lcssa197, 0
  %i.hm = select i1 %.not132.not, i32 6, i32 7    ; 2 uses
  %i.hn = add nuw nsw i32 %.0112181.lcssa, %i.hm
  %.not133183 = icmp samesign ugt i32 %i.hn, %i.ew
  br i1 %.not133183, label %._crit_edge187, label %iter.check

iter.check:                                       ; preds = %bb.am
  %i.ho = zext nneg i32 %i.hm to i64              ; 2 uses
  %i.hp = zext i32 %.0112181.lcssa to i64         ; 6 uses
  %i.hq = add nuw nsw i64 %i.ho, %i.hp            ; 6 uses
  %i.hr = add nuw nsw i64 %wide.trip.count, 1
  %i.hs = sub nsw i64 %i.hr, %i.hq                ; 7 uses
  %min.iters.check = icmp ult i64 %i.hs, 8
  br i1 %min.iters.check, label %.lr.ph186.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check247 = icmp ult i64 %i.hs, 32
  br i1 %min.iters.check247, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ht = and i64 %i.hs, 24
  %n.vec = and i64 %i.hs, -32                     ; 5 uses
  %i.hu = add nsw i64 %n.vec, %i.hp
  %i.hv = add nsw i64 %i.hq, %n.vec
  %i.hw = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %i.hq
  %invariant.gep = getelementptr i8, ptr %.0.i155166, i64 %i.hp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 %index ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %wide.load = load <16 x i8>, ptr %i.hx, align 1, !tbaa !229
  %wide.load248 = load <16 x i8>, ptr %i.hy, align 1, !tbaa !229
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !229
  store <16 x i8> %wide.load248, ptr %i.hz, align 1, !tbaa !229
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !3270

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hs, %n.vec
  br i1 %cmp.n, label %._crit_edge187, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ht, 0
  br i1 %min.epilog.iters.check, label %.lr.ph186.preheader, label %vec.epilog.ph, !prof !347

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec250 = and i64 %i.hs, -8                   ; 4 uses
  %i.ib = add nsw i64 %n.vec250, %i.hp
  %i.ic = add nsw i64 %i.hq, %n.vec250
  %i.id = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %i.hq
  %invariant.gep265 = getelementptr i8, ptr %.0.i155166, i64 %i.hp
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index251 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next253, %vec.epilog.vector.body ] ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 %index251
  %wide.load252 = load <8 x i8>, ptr %i.ie, align 1, !tbaa !229
  %gep266 = getelementptr i8, ptr %invariant.gep265, i64 %index251
  store <8 x i8> %wide.load252, ptr %gep266, align 1, !tbaa !229
  %index.next253 = add nuw i64 %index251, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next253, %n.vec250
  br i1 %i.if, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3271

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n254 = icmp eq i64 %i.hs, %n.vec250
  br i1 %cmp.n254, label %._crit_edge187, label %.lr.ph186.preheader

.lr.ph186.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv209.ph = phi i64 [ %i.hp, %iter.check ], [ %i.hu, %vec.epilog.iter.check ], [ %i.ib, %vec.epilog.middle.block ]
  %indvars.iv207.ph = phi i64 [ %i.hq, %iter.check ], [ %i.hv, %vec.epilog.iter.check ], [ %i.ic, %vec.epilog.middle.block ]
  br label %.lr.ph186

.lr.ph186:                                        ; preds = %.lr.ph186.preheader, %.lr.ph186
  %indvars.iv209 = phi i64 [ %indvars.iv.next210, %.lr.ph186 ], [ %indvars.iv209.ph, %.lr.ph186.preheader ] ; 2 uses
  %indvars.iv207 = phi i64 [ %indvars.iv.next208, %.lr.ph186 ], [ %indvars.iv207.ph, %.lr.ph186.preheader ] ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %indvars.iv207
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !229
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %indvars.iv209
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !229
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %i.ij = add nuw nsw i64 %indvars.iv.next210, %i.ho
  %.not133 = icmp samesign ugt i64 %i.ij, %wide.trip.count
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1
  br i1 %.not133, label %._crit_edge187, label %.lr.ph186, !llvm.loop !3272

._crit_edge187:                                   ; preds = %.lr.ph186, %middle.block, %vec.epilog.middle.block, %bb.am
  %i.ik = load i8, ptr %.lcssa198, align 1, !tbaa !229
  %i.il = icmp eq i8 %i.ik, 0
  %i.im = icmp ne i32 %.0112181.lcssa, 0
  %or.cond = and i1 %i.im, %i.il
  br i1 %or.cond, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %._crit_edge187
  %i.in = getelementptr i8, ptr %.lcssa198, i64 -1
  store i8 0, ptr %i.in, align 1, !tbaa !229
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge187
  %i.io = load ptr, ptr %i.dz, align 8, !tbaa !884 ; 2 uses
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %indvars.iv214
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 14 ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !885
  %i.is = or i16 %i.ir, 2
  store i16 %i.is, ptr %i.iq, align 2, !tbaa !885
  %i.it = load i32, ptr %i.ea, align 8, !tbaa !790
  %i.iu = or i32 %i.it, 2
  store i32 %i.iu, ptr %i.ea, align 8, !tbaa !790
  %.pre218 = load i16, ptr %i.dw, align 2, !tbaa !883
  br label %bb.ap

.critedge:                                        ; preds = %sqlite3_strnicmp.exit.thread169, %sqlite3ColumnType.exit, %sqlite3_strnicmp.exit.thread169.peel, %sqlite3Strlen30.exit
  %i.iv = zext nneg i16 %.0113189 to i32
  %i.iw = load i32, ptr %i.ea, align 8, !tbaa !790
  %i.ix = or i32 %i.iw, %i.iv
  store i32 %i.ix, ptr %i.ea, align 8, !tbaa !790
  br label %bb.ap

bb.ap:                                            ; preds = %.critedge, %bb.ao
  %i.iy = phi i16 [ %.pre218, %bb.ao ], [ %i.eb, %.critedge ] ; 2 uses
  %i.iz = phi ptr [ %i.io, %bb.ao ], [ %i.ec, %.critedge ]
  %.1 = phi i16 [ 1024, %bb.ao ], [ %.0113189, %.critedge ]
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.ja = sext i16 %i.iy to i64
  %i.jb = icmp slt i64 %indvars.iv.next215, %i.ja
  br i1 %i.jb, label %bb.ah, label %sqlite3DbFree.exit161, !llvm.loop !3273

sqlite3DbFree.exit161:                            ; preds = %bb.ap, %bb.ag, %bb.ad, %bb.af, %sqlite3DbFree.exit153
  %.0117 = phi i32 [ %i.bm, %sqlite3DbFree.exit153 ], [ 1, %bb.af ], [ 0, %bb.ad ], [ 0, %bb.ag ], [ 0, %bb.ap ]
  call fastcc void @sqlite3DbFreeNN(ptr noundef %0, ptr noundef nonnull %.0.i.i)
  br label %sqlite3DbStrDup.exit.thread

sqlite3DbStrDup.exit.thread:                      ; preds = %sqlite3DbMallocRaw.exit.i, %._crit_edge, %sqlite3DbFree.exit161, %sqlite3DbFree.exit, %bb.c
  %.0115 = phi i32 [ 6, %bb.c ], [ %.0117, %sqlite3DbFree.exit161 ], [ 7, %sqlite3DbFree.exit ], [ 7, %._crit_edge ], [ 7, %sqlite3DbMallocRaw.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #59
  ret i32 %.0115
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 8) i32 @valueFromExpr(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i8 noundef zeroext %2, i8 noundef zeroext %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  store ptr null, ptr %i.c, align 8, !tbaa !290
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0101 = phi ptr [ %1, %bb.a ], [ %i.g, %bb.c ] ; 7 uses
  %i.e = load i8, ptr %.0101, align 8, !tbaa !3021 ; 2 uses
  switch i8 %i.e, label %.loopexit [
    i8 -75, label %bb.c
    i8 -83, label %bb.c
    i8 -80, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.0101, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !373
  br label %bb.b, !llvm.loop !3274

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.0101, i64 2
  %i.i = load i8, ptr %i.h, align 2, !tbaa !3275
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.d
  %.097.in = phi i8 [ %i.i, %bb.d ], [ %i.e, %bb.b ] ; 2 uses
  switch i8 %.097.in, label %bb.k [
    i8 36, label %bb.e
    i8 -82, label %bb.g
  ]

bb.e:                                             ; preds = %.loopexit
  %i.j = getelementptr inbounds nuw i8, ptr %.0101, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !229
  %i.l = tail call fastcc signext i8 @sqlite3AffinityType(ptr noundef %i.k, ptr noundef null) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.0101, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !373
  %i.o = tail call fastcc i32 @valueFromExpr(ptr noundef %0, ptr noundef %i.n, i8 noundef zeroext %2, i8 noundef zeroext %i.l, ptr noundef %4) ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !290    ; 2 uses
  %.not123 = icmp eq ptr %i.p, null
  br i1 %.not123, label %sqlite3ValueFree.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = tail call fastcc i32 @sqlite3VdbeMemCast(ptr noundef nonnull %i.p, i8 noundef zeroext %i.l, i8 noundef zeroext %2) ; 0 uses
  %i.r = load ptr, ptr %4, align 8, !tbaa !290
  tail call fastcc void @applyAffinity(ptr noundef %i.r, i8 noundef signext %3, i8 noundef zeroext %2)
  br label %sqlite3ValueFree.exit

bb.g:                                             ; preds = %.loopexit
  %i.s = getelementptr inbounds nuw i8, ptr %.0101, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !373  ; 7 uses
  %i.u = load i8, ptr %i.t, align 8, !tbaa !3021  ; 4 uses
  switch i8 %i.u, label %.thread [
    i8 -100, label %bb.h
    i8 -102, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !369
  %i.x = and i32 %i.w, 2048
  %.not = icmp eq i32 %i.x, 0
end_hunk_0
begin_hunk_1_@fts5FilterMethod:bb.a
  br i1 %i.hp, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph104.i
  %i.hq = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.ho
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !229
  %i.hs = sext i8 %i.hr to i32                    ; 3 uses
  %i.ht = icmp eq i32 %.85.i, %i.hs
  %i.hu = icmp eq i32 %.84.i, %i.hs
  %or.cond.i = or i1 %i.ht, %i.hu
  %i.hv = icmp eq i32 %..i, %i.hs
  %or.cond86.i = or i1 %i.hv, %or.cond.i
  br i1 %or.cond86.i, label %bb.az, label %._crit_edge111.i

._crit_edge111.i:                                 ; preds = %bb.ay
  %.pre.i197 = add nsw i32 %.066101.i, 1
  br label %bb.bg

bb.az:                                            ; preds = %bb.ay, %.lr.ph104.i
  %i.hw = sext i32 %.065102.i to i64              ; 6 uses
  %i.hx = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.hw ; 2 uses
  %i.hy = sub nsw i32 %.066101.i, %.065102.i      ; 3 uses
  %i.hz = icmp sgt i32 %i.hy, 0
  br i1 %i.hz, label %.lr.ph.preheader.i.i, label %fts5ExprCountChar.exit.thread.i

.lr.ph.preheader.i.i:                             ; preds = %bb.az
  %wide.trip.count.i.i = zext nneg i32 %i.hy to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.hy, 8
  br i1 %min.iters.check, label %.lr.ph.i.i201.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ig, %vector.body ]
  %vec.phi353 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ih, %vector.body ]
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 %index ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4
  %wide.load = load <4 x i8>, ptr %i.ia, align 1, !tbaa !229
  %wide.load354 = load <4 x i8>, ptr %i.ib, align 1, !tbaa !229
  %i.ic = icmp sgt <4 x i8> %wide.load, splat (i8 -65)
  %i.id = icmp sgt <4 x i8> %wide.load354, splat (i8 -65)
  %i.ie = zext <4 x i1> %i.ic to <4 x i32>
  %i.if = zext <4 x i1> %i.id to <4 x i32>
  %i.ig = add <4 x i32> %vec.phi, %i.ie           ; 2 uses
  %i.ih = add <4 x i32> %vec.phi353, %i.if        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ii = icmp eq i64 %index.next, %n.vec
  br i1 %i.ii, label %middle.block, label %vector.body, !llvm.loop !6386

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ih, %i.ig
  %i.ij = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %fts5ExprCountChar.exit.i, label %.lr.ph.i.i201.preheader

.lr.ph.i.i201.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i202.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.ij, %middle.block ]
  br label %.lr.ph.i.i201

.lr.ph.i.i201:                                    ; preds = %.lr.ph.i.i201.preheader, %.lr.ph.i.i201
  %indvars.iv.i.i202 = phi i64 [ %indvars.iv.next.i.i203, %.lr.ph.i.i201 ], [ %indvars.iv.i.i202.ph, %.lr.ph.i.i201.preheader ] ; 2 uses
  %.067.i.i = phi i32 [ %spec.select.i.i, %.lr.ph.i.i201 ], [ %.067.i.i.ph, %.lr.ph.i.i201.preheader ]
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hx, i64 %indvars.iv.i.i202
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !229
  %.not.i87.i = icmp sgt i8 %i.il, -65
  %i.im = zext i1 %.not.i87.i to i32
  %spec.select.i.i = add nuw nsw i32 %.067.i.i, %i.im ; 2 uses
  %indvars.iv.next.i.i203 = add nuw nsw i64 %indvars.iv.i.i202, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i203, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %fts5ExprCountChar.exit.i, label %.lr.ph.i.i201, !llvm.loop !6387

fts5ExprCountChar.exit.i:                         ; preds = %.lr.ph.i.i201, %middle.block
  %spec.select.i.i.lcssa = phi i32 [ %i.ij, %middle.block ], [ %spec.select.i.i, %.lr.ph.i.i201 ]
  %i.in = icmp samesign ugt i32 %spec.select.i.i.lcssa, 2
  br i1 %i.in, label %.lr.ph.preheader.i, label %fts5ExprCountChar.exit.thread.i

.lr.ph.preheader.i:                               ; preds = %fts5ExprCountChar.exit.i
  %i.io = add nsw i32 %.068100.i, 1               ; 2 uses
  %i.ip = sext i32 %.068100.i to i64
  %i.iq = getelementptr inbounds i8, ptr %i.hm, i64 %i.ip
  store i8 34, ptr %i.iq, align 1, !tbaa !229
  %wide.trip.count.i = sext i32 %.066101.i to i64 ; 3 uses
  %i.ir = sub nsw i64 %wide.trip.count.i, %i.hw
  %xtraiter = and i64 %i.ir, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.is = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.hw
  %i.it = load i8, ptr %i.is, align 1, !tbaa !229 ; 2 uses
  %i.iu = add nsw i32 %.068100.i, 2               ; 2 uses
  %i.iv = sext i32 %i.io to i64
  %i.iw = getelementptr inbounds i8, ptr %i.hm, i64 %i.iv
  store i8 %i.it, ptr %i.iw, align 1, !tbaa !229
  %i.ix = icmp eq i8 %i.it, 34
  br i1 %i.ix, label %bb.ba, label %.lr.ph.i.prol.loopexit.unr-lcssa

bb.ba:                                            ; preds = %.lr.ph.i.prol
  %i.iy = add nsw i32 %.068100.i, 3
  %i.iz = sext i32 %i.iu to i64
  %i.ja = getelementptr inbounds i8, ptr %i.hm, i64 %i.iz
  store i8 34, ptr %i.ja, align 1, !tbaa !229
  br label %.lr.ph.i.prol.loopexit.unr-lcssa

.lr.ph.i.prol.loopexit.unr-lcssa:                 ; preds = %bb.ba, %.lr.ph.i.prol
  %.270.i.prol = phi i32 [ %i.iy, %bb.ba ], [ %i.iu, %.lr.ph.i.prol ] ; 2 uses
  %indvars.iv.next.i205.prol = add nsw i64 %i.hw, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.270.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %.270.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %indvars.iv.i204.unr = phi i64 [ %i.hw, %.lr.ph.preheader.i ], [ %indvars.iv.next.i205.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %.16991.i.unr = phi i32 [ %i.io, %.lr.ph.preheader.i ], [ %.270.i.prol, %.lr.ph.i.prol.loopexit.unr-lcssa ]
  %i.jb = add nsw i64 %wide.trip.count.i, -1
  %i.jc = icmp eq i64 %i.jb, %i.hw
  br i1 %i.jc, label %._crit_edge.i.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %bb.bd
  %indvars.iv.i204 = phi i64 [ %indvars.iv.next.i205.1, %bb.bd ], [ %indvars.iv.i204.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.16991.i = phi i32 [ %.270.i.1, %bb.bd ], [ %.16991.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.jd = getelementptr inbounds i8, ptr %.0.i.i, i64 %indvars.iv.i204
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !229 ; 2 uses
  %i.jf = add nsw i32 %.16991.i, 1                ; 2 uses
  %i.jg = sext i32 %.16991.i to i64
  %i.jh = getelementptr inbounds i8, ptr %i.hm, i64 %i.jg
  store i8 %i.je, ptr %i.jh, align 1, !tbaa !229
  %i.ji = icmp eq i8 %i.je, 34
  br i1 %i.ji, label %bb.bb, label %.lr.ph.i.1

bb.bb:                                            ; preds = %.lr.ph.i
  %i.jj = add nsw i32 %.16991.i, 2
  %i.jk = sext i32 %i.jf to i64
  %i.jl = getelementptr inbounds i8, ptr %i.hm, i64 %i.jk
  store i8 34, ptr %i.jl, align 1, !tbaa !229
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.bb, %.lr.ph.i
  %.270.i = phi i32 [ %i.jj, %bb.bb ], [ %i.jf, %.lr.ph.i ] ; 3 uses
  %i.jm = getelementptr i8, ptr %.0.i.i, i64 %indvars.iv.i204
  %i.jn = getelementptr i8, ptr %i.jm, i64 1
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !229 ; 2 uses
  %i.jp = add nsw i32 %.270.i, 1                  ; 2 uses
  %i.jq = sext i32 %.270.i to i64
  %i.jr = getelementptr inbounds i8, ptr %i.hm, i64 %i.jq
  store i8 %i.jo, ptr %i.jr, align 1, !tbaa !229
  %i.js = icmp eq i8 %i.jo, 34
  br i1 %i.js, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph.i.1
  %i.jt = add nsw i32 %.270.i, 2
  %i.ju = sext i32 %i.jp to i64
  %i.jv = getelementptr inbounds i8, ptr %i.hm, i64 %i.ju
  store i8 34, ptr %i.jv, align 1, !tbaa !229
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph.i.1
  %.270.i.1 = phi i32 [ %i.jt, %bb.bc ], [ %i.jp, %.lr.ph.i.1 ] ; 2 uses
  %indvars.iv.next.i205.1 = add nsw i64 %indvars.iv.i204, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i205.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !6388

._crit_edge.i.loopexit:                           ; preds = %bb.bd, %.lr.ph.i.prol.loopexit
  %.270.i.lcssa = phi i32 [ %.270.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.270.i.1, %bb.bd ] ; 2 uses
  %i.jw = sext i32 %.270.i.lcssa to i64
  %i.jx = getelementptr inbounds i8, ptr %i.hm, i64 %i.jw ; 2 uses
  store i8 34, ptr %i.jx, align 1, !tbaa !229
  %i.jy = add nsw i32 %.270.i.lcssa, 2
  %i.jz = getelementptr i8, ptr %i.jx, i64 1
  store i8 32, ptr %i.jz, align 1, !tbaa !229
  br label %fts5ExprCountChar.exit.thread.i

fts5ExprCountChar.exit.thread.i:                  ; preds = %._crit_edge.i.loopexit, %fts5ExprCountChar.exit.i, %bb.az
  %.371.i = phi i32 [ %i.jy, %._crit_edge.i.loopexit ], [ %.068100.i, %fts5ExprCountChar.exit.i ], [ %.068100.i, %bb.az ]
  %i.ka = getelementptr inbounds i8, ptr %.0.i.i, i64 %i.ho ; 2 uses
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !229
  %i.kc = sext i8 %i.kb to i32
  %i.kd = icmp eq i32 %..i, %i.kc
  br i1 %i.kd, label %bb.be, label %.critedge.i200

bb.be:                                            ; preds = %fts5ExprCountChar.exit.thread.i
  %i.ke = getelementptr i8, ptr %i.ka, i64 1
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !229
  %i.kg = icmp eq i8 %i.kf, 94
  %spec.select.v.i = select i1 %i.kg, i32 3, i32 2
  %spec.select.i = add nsw i32 %spec.select.v.i, %.066101.i ; 2 uses
  %i.kh = sext i32 %spec.select.i to i64          ; 2 uses
  %i.ki = icmp sgt i64 %i.hi, %i.kh
  br i1 %i.ki, label %.lr.ph95.i, label %.critedge.i200

.lr.ph95.i:                                       ; preds = %bb.be, %bb.bf
  %indvars.iv108.i = phi i64 [ %indvars.iv.next109.i, %bb.bf ], [ %i.kh, %bb.be ] ; 3 uses
  %i.kj = getelementptr inbounds i8, ptr %.0.i.i, i64 %indvars.iv108.i
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !229
  %.not83.i = icmp eq i8 %i.kk, 93
  br i1 %.not83.i, label %.critedge.loopexit.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph95.i
  %indvars.iv.next109.i = add i64 %indvars.iv108.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next109.i, %i.hi
  br i1 %exitcond.not, label %.critedge.loopexit.i, label %.lr.ph95.i, !llvm.loop !6389

.critedge.loopexit.i:                             ; preds = %bb.bf, %.lr.ph95.i
  %.3.ph.in.i = phi i64 [ %indvars.iv108.i, %.lr.ph95.i ], [ %i.hi, %bb.bf ]
  %.3.ph.i = trunc i64 %.3.ph.in.i to i32
  br label %.critedge.i200

.critedge.i200:                                   ; preds = %.critedge.loopexit.i, %bb.be, %fts5ExprCountChar.exit.thread.i
  %.3.i = phi i32 [ %.066101.i, %fts5ExprCountChar.exit.thread.i ], [ %spec.select.i, %bb.be ], [ %.3.ph.i, %.critedge.loopexit.i ]
  %i.kl = add nsw i32 %.3.i, 1                    ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %.critedge.i200, %._crit_edge111.i
  %.pre-phi.i = phi i32 [ %.pre.i197, %._crit_edge111.i ], [ %i.kl, %.critedge.i200 ] ; 2 uses
  %.472.i = phi i32 [ %.068100.i, %._crit_edge111.i ], [ %.371.i, %.critedge.i200 ] ; 3 uses
  %.1.i = phi i32 [ %.065102.i, %._crit_edge111.i ], [ %i.kl, %.critedge.i200 ]
  %i.km = sext i32 %.pre-phi.i to i64             ; 2 uses
  %.not.i198 = icmp slt i64 %i.hi, %i.km
  br i1 %.not.i198, label %._crit_edge105.i, label %.lr.ph104.i, !llvm.loop !6390

._crit_edge105.i:                                 ; preds = %bb.bg
  %i.kn = icmp sgt i32 %.472.i, 0
  br i1 %i.kn, label %bb.bh, label %._crit_edge105.thread.i

bb.bh:                                            ; preds = %._crit_edge105.i
  %i.ko = load i32, ptr %i.p, align 4, !tbaa !6391 ; 2 uses
  switch i32 %i.ko, label %.fold.split.i [
    i32 0, label %bb.bj
    i32 1, label %bb.bi
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.kp = load i32, ptr %i.q, align 8, !tbaa !6315
  br label %bb.bj

.fold.split.i:                                    ; preds = %bb.bh
  br label %bb.bj

bb.bj:                                            ; preds = %.fold.split.i, %bb.bi, %bb.bh
  %.075.i = phi i32 [ %i.kp, %bb.bi ], [ %i.hd, %bb.bh ], [ %i.hd, %.fold.split.i ]
  %.0.i199 = phi i32 [ 1, %bb.bi ], [ %i.ko, %bb.bh ], [ 1, %.fold.split.i ]
  %i.kq = zext nneg i32 %.472.i to i64
  %i.kr = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.kq
  store i8 0, ptr %i.kr, align 1, !tbaa !229
  %i.ks = load ptr, ptr %i.h, align 8, !tbaa !6365
  %i.kt = call fastcc i32 @sqlite3Fts5ExprNew(ptr noundef nonnull %i.g, i32 noundef %.0.i199, i32 noundef %.075.i, ptr noundef nonnull %i.hm, ptr noundef nonnull %i.d, ptr noundef %i.ks), !inline_history !6384
  br label %bb.bk

._crit_edge105.thread.i:                          ; preds = %._crit_edge105.i, %bb.ax
  store ptr null, ptr %i.d, align 8, !tbaa !6367
  br label %bb.bk

bb.bk:                                            ; preds = %._crit_edge105.thread.i, %bb.bj
  %.073.i = phi i32 [ %i.kt, %bb.bj ], [ 0, %._crit_edge105.thread.i ] ; 2 uses
  %i.ku = load i32, ptr @sqlite3Config, align 8, !tbaa !177
  %.not.i88.i = icmp eq i32 %i.ku, 0
  br i1 %.not.i88.i, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.kv = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i, label %sqlite3_mutex_enter.exit.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.kw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.kw(ptr noundef nonnull %i.kv) #59, !inline_history !6392
  br label %sqlite3_mutex_enter.exit.i.i

sqlite3_mutex_enter.exit.i.i:                     ; preds = %bb.bm, %bb.bl
  %i.kx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 56), align 8, !tbaa !96
  %i.ky = tail call i32 %i.kx(ptr noundef nonnull %i.hm) #59, !inline_history !6393
  %i.kz = sext i32 %i.ky to i64
  %i.la = load i64, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.lb = sub nsw i64 %i.la, %i.kz
  store i64 %i.lb, ptr @sqlite3Stat, align 8, !tbaa !19
  %i.lc = load i64, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.ld = add nsw i64 %i.lc, -1
  store i64 %i.ld, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Stat, i64 72), align 8, !tbaa !19
  %i.le = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.le(ptr noundef nonnull %i.hm) #59, !inline_history !6394
  %i.lf = load ptr, ptr @mem0, align 8, !tbaa !178 ; 2 uses
  %.not.i4.i.i = icmp eq ptr %i.lf, null
  br i1 %.not.i4.i.i, label %sqlite3Fts5ExprPattern.exit, label %bb.bn

bb.bn:                                            ; preds = %sqlite3_mutex_enter.exit.i.i
  %i.lg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  tail call void %i.lg(ptr noundef nonnull %i.lf) #59, !inline_history !6395
  br label %sqlite3Fts5ExprPattern.exit

bb.bo:                                            ; preds = %bb.bk
  %i.lh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 40), align 8, !tbaa !182
  tail call void %i.lh(ptr noundef nonnull %i.hm) #59, !inline_history !6394
  br label %sqlite3Fts5ExprPattern.exit

sqlite3Fts5ExprPattern.exit:                      ; preds = %bb.bo, %bb.bn, %sqlite3_mutex_enter.exit.i.i
  %i.li = icmp eq i32 %.073.i, 0
  br i1 %i.li, label %sqlite3Fts5ExprPattern.exit.thread, label %sqlite3Fts5StorageStmt.exit

sqlite3Fts5ExprPattern.exit.thread:               ; preds = %.critedge3, %sqlite3Fts5ExprPattern.exit
  %i.lj = load ptr, ptr %i.d, align 8, !tbaa !6367
  %i.lk = tail call fastcc i32 @sqlite3Fts5ExprAnd(ptr noundef nonnull %i.r, ptr noundef %i.lj) ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !6367
  %.not184 = icmp eq i32 %i.lk, 0
  br i1 %.not184, label %bb.bs, label %sqlite3Fts5StorageStmt.exit

bb.bp:                                            ; preds = %bb.d
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv310
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !290
  br label %bb.bs

bb.bq:                                            ; preds = %bb.d
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv310
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !290
  br label %bb.bs

bb.br:                                            ; preds = %bb.d
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv310
  %i.lq = load ptr, ptr %i.lp, align 8, !tbaa !290
  br label %bb.bs

bb.bs:                                            ; preds = %bb.ao, %sqlite3Fts5ExprPattern.exit.thread, %bb.e, %bb.bp, %bb.bq, %bb.br
  %.1160 = phi ptr [ %.0159291, %bb.br ], [ %i.ad, %bb.e ], [ %.0159291, %bb.bq ], [ %.0159291, %sqlite3Fts5ExprPattern.exit.thread ], [ %.0159291, %bb.bp ], [ %.0159291, %bb.ao ] ; 2 uses
  %.1158 = phi ptr [ %.0157292, %bb.br ], [ %.0157292, %bb.e ], [ %.0157292, %bb.bq ], [ %.0157292, %sqlite3Fts5ExprPattern.exit.thread ], [ %i.lm, %bb.bp ], [ %.0157292, %bb.ao ] ; 2 uses
  %.1155 = phi ptr [ %.0154293, %bb.br ], [ %.0154293, %bb.e ], [ %i.lo, %bb.bq ], [ %.0154293, %sqlite3Fts5ExprPattern.exit.thread ], [ %.0154293, %bb.bp ], [ %.0154293, %bb.ao ] ; 2 uses
  %.1152 = phi ptr [ %i.lq, %bb.br ], [ %.0151294, %bb.e ], [ %.0151294, %bb.bq ], [ %.0151294, %sqlite3Fts5ExprPattern.exit.thread ], [ %.0151294, %bb.bp ], [ %.0151294, %bb.ao ] ; 2 uses
  %.4 = phi i32 [ %i.y, %bb.br ], [ %i.y, %bb.e ], [ %i.y, %bb.bq ], [ %i.hh, %sqlite3Fts5ExprPattern.exit.thread ], [ %i.y, %bb.bp ], [ %i.du, %bb.ao ]
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next311, %wide.trip.count
  br i1 %exitcond.not.a, label %._crit_edge, label %bb.d, !llvm.loop !6396

._crit_edge:                                      ; preds = %bb.bs, %bb.c
  %.0159.lcssa = phi ptr [ null, %bb.c ], [ %.1160, %bb.bs ] ; 5 uses
  %.0157.lcssa = phi ptr [ null, %bb.c ], [ %.1158, %bb.bs ] ; 4 uses
  %.0154.lcssa = phi ptr [ null, %bb.c ], [ %.1155, %bb.bs ]
  %.0151.lcssa = phi ptr [ null, %bb.c ], [ %.1152, %bb.bs ]
  %i.lr = and i32 %1, 32
  %.not176 = icmp eq i32 %i.lr, 0
  %i.ls = and i32 %1, 128                         ; 2 uses
  %.not177.not = icmp eq i32 %i.ls, 0
  %.lobit = lshr exact i32 %i.ls, 7               ; 4 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  store i32 %.lobit, ptr %i.lt, align 4, !tbaa !6397
  %.not178 = icmp eq ptr %.0157.lcssa, null       ; 4 uses
  %spec.select = select i1 %.not178, ptr %.0154.lcssa, ptr %.0157.lcssa ; 13 uses
  %spec.select190 = select i1 %.not178, ptr %.0151.lcssa, ptr %.0157.lcssa ; 14 uses
  %.not.i220 = icmp eq ptr %spec.select, null     ; 2 uses
  br i1 %.not177.not, label %bb.ck, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge
  br i1 %.not.i220, label %fts5GetRowidLimit.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lu = tail call i32 @sqlite3_value_numeric_type(ptr noundef nonnull %spec.select)
  %i.lv = icmp eq i32 %i.lu, 1
  br i1 %i.lv, label %bb.bv, label %fts5GetRowidLimit.exit

bb.bv:                                            ; preds = %bb.bu
  %i.lw = getelementptr inbounds nuw i8, ptr %spec.select, i64 20
  %i.lx = load i16, ptr %i.lw, align 4, !tbaa !164
  %i.ly = zext i16 %i.lx to i32                   ; 3 uses
  %i.lz = and i32 %i.ly, 36
  %.not.i.i.i208 = icmp eq i32 %i.lz, 0
  br i1 %.not.i.i.i208, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ma = load i64, ptr %spec.select, align 8, !tbaa !229
  br label %fts5GetRowidLimit.exit

bb.bx:                                            ; preds = %bb.bv
  %i.mb = and i32 %i.ly, 8
  %.not8.i.i.i = icmp eq i32 %i.mb, 0
  br i1 %.not8.i.i.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.mc = load double, ptr %spec.select, align 8, !tbaa !229 ; 3 uses
  %i.md = fcmp olt double %i.mc, f0xC3DFFFFFFFFFFFFF
  %i.me = fcmp ogt double %i.mc, f0x43DFFFFFFFFFFFFF
  %i.mf = fptosi double %i.mc to i64
  %spec.select.i.i.i.i = select i1 %i.me, i64 9223372036854775807, i64 %i.mf
  %.0.i.i.i.i209 = select i1 %i.md, i64 -9223372036854775808, i64 %spec.select.i.i.i.i
  br label %fts5GetRowidLimit.exit

bb.bz:                                            ; preds = %bb.bx
  %i.mg = and i32 %i.ly, 18
  %.not9.i.i.i210 = icmp eq i32 %i.mg, 0
  br i1 %.not9.i.i.i210, label %fts5GetRowidLimit.exit, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.mh = getelementptr inbounds nuw i8, ptr %spec.select, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !291
  %.not10.i.i.i = icmp eq ptr %i.mi, null
  br i1 %.not10.i.i.i, label %fts5GetRowidLimit.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mj = tail call fastcc i64 @memIntValue(ptr noundef nonnull readonly %spec.select)
  br label %fts5GetRowidLimit.exit

fts5GetRowidLimit.exit:                           ; preds = %bb.bt, %bb.bu, %bb.bw, %bb.by, %bb.bz, %bb.ca, %bb.cb
  %.1.i207 = phi i64 [ 9223372036854775807, %bb.bt ], [ 9223372036854775807, %bb.bu ], [ 0, %bb.bz ], [ 0, %bb.ca ], [ %i.mj, %bb.cb ], [ %.0.i.i.i.i209, %bb.by ], [ %i.ma, %bb.bw ]
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.1.i207, ptr %i.mk, align 8, !tbaa !6398
end_hunk_1
