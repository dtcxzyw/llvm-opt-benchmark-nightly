Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 367
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@vtabCallConstructor:bb.a
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %.pre216 = load ptr, ptr %i.dz, align 8, !tbaa !913
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph191, %bb.ap
  %i.eb = phi i16 [ %i.dx, %.lr.ph191 ], [ %i.iy, %bb.ap ]
  %i.ec = phi ptr [ %.pre216, %.lr.ph191 ], [ %i.iz, %bb.ap ] ; 2 uses
  %indvars.iv214 = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next215, %bb.ap ] ; 3 uses
  %.0113189 = phi i16 [ 0, %.lr.ph191 ], [ %.1, %bb.ap ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %indvars.iv214 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 14
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !1329
  %i.eg = and i16 %i.ef, 4
  %.not.i154 = icmp eq i16 %i.eg, 0
  br i1 %.not.i154, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eh = load ptr, ptr %i.ed, align 8, !tbaa !917 ; 2 uses
  %i.ei = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.eh) #59
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
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !259 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %.critedge, label %sqlite3Strlen30.exit

sqlite3Strlen30.exit:                             ; preds = %sqlite3ColumnType.exit, %bb.ai, %bb.aj
  %.0.i155166 = phi ptr [ %i.es, %sqlite3ColumnType.exit ], [ @.str.4, %bb.aj ], [ %i.ek, %bb.ai ] ; 18 uses
  %i.eu = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %.0.i155166) #59 ; 2 uses
  %i.ev = trunc i64 %i.eu to i32
  %i.ew = and i32 %i.ev, 1073741823               ; 3 uses
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %.critedge, label %bb.ak

bb.ak:                                            ; preds = %sqlite3Strlen30.exit
  %scevgep = getelementptr i8, ptr %.0.i155166, i64 6
  %wide.trip.count = and i64 %i.eu, 1073741823    ; 3 uses
  %i.ey = load i8, ptr %.0.i155166, align 1, !tbaa !231
  %i.ez = and i8 %i.ey, -33
  %i.fa = icmp eq i8 %i.ez, 72
  br i1 %i.fa, label %.lr.ph.i158.1.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.1.peel:                               ; preds = %bb.ak
  %i.fb = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 1 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !231
  %i.fd = and i8 %i.fc, -33
  %i.fe = icmp eq i8 %i.fd, 73
  br i1 %i.fe, label %.lr.ph.i158.2.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.2.peel:                               ; preds = %.lr.ph.i158.1.peel
  %i.ff = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 2 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !231
  %i.fh = and i8 %i.fg, -33
  %i.fi = icmp eq i8 %i.fh, 68
  br i1 %i.fi, label %.lr.ph.i158.3.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.3.peel:                               ; preds = %.lr.ph.i158.2.peel
  %i.fj = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 3 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !231
  %i.fl = and i8 %i.fk, -33
  %i.fm = icmp eq i8 %i.fl, 68
  br i1 %i.fm, label %.lr.ph.i158.4.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.4.peel:                               ; preds = %.lr.ph.i158.3.peel
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 4 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !231
  %i.fp = and i8 %i.fo, -33
  %i.fq = icmp eq i8 %i.fp, 69
  br i1 %i.fq, label %.lr.ph.i158.5.peel, label %sqlite3_strnicmp.exit.peel

.lr.ph.i158.5.peel:                               ; preds = %.lr.ph.i158.4.peel
  %i.fr = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 5 ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !231
  %i.ft = and i8 %i.fs, -33
  %i.fu = icmp eq i8 %i.ft, 78
  br i1 %i.fu, label %sqlite3_strnicmp.exit.thread.peel, label %sqlite3_strnicmp.exit.peel

sqlite3_strnicmp.exit.peel:                       ; preds = %bb.ak, %.lr.ph.i158.1.peel, %.lr.ph.i158.2.peel, %.lr.ph.i158.3.peel, %.lr.ph.i158.4.peel, %.lr.ph.i158.5.peel
  %.lcssa.peel = phi i32 [ 104, %bb.ak ], [ 105, %.lr.ph.i158.1.peel ], [ 100, %.lr.ph.i158.2.peel ], [ 100, %.lr.ph.i158.3.peel ], [ 101, %.lr.ph.i158.4.peel ], [ 110, %.lr.ph.i158.5.peel ]
  %.023.i.lcssa193.peel = phi ptr [ %.0.i155166, %bb.ak ], [ %i.fb, %.lr.ph.i158.1.peel ], [ %i.ff, %.lr.ph.i158.2.peel ], [ %i.fj, %.lr.ph.i158.3.peel ], [ %i.fn, %.lr.ph.i158.4.peel ], [ %i.fr, %.lr.ph.i158.5.peel ]
  %i.fv = load i8, ptr %.023.i.lcssa193.peel, align 1, !tbaa !231
  %i.fw = zext i8 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.fw
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !231
  %i.fz = zext i8 %i.fy to i32
  %i.ga = icmp eq i32 %.lcssa.peel, %i.fz
  br i1 %i.ga, label %sqlite3_strnicmp.exit.thread.peel, label %sqlite3_strnicmp.exit.thread169.peel

sqlite3_strnicmp.exit.thread.peel:                ; preds = %sqlite3_strnicmp.exit.peel, %.lr.ph.i158.5.peel
  %i.gb = load i8, ptr %scevgep, align 1, !tbaa !231 ; 3 uses
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
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !231
  %i.ge = and i8 %i.gd, -33
  %i.gf = icmp eq i8 %i.ge, 72
  br i1 %i.gf, label %.lr.ph.i158.1, label %sqlite3_strnicmp.exit

.lr.ph.i158.1:                                    ; preds = %.lr.ph.i158.preheader.peel.next
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 1 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !231
  %i.gi = and i8 %i.gh, -33
  %i.gj = icmp eq i8 %i.gi, 73
  br i1 %i.gj, label %.lr.ph.i158.2, label %sqlite3_strnicmp.exit

.lr.ph.i158.2:                                    ; preds = %.lr.ph.i158.1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gc, i64 2 ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !231
  %i.gm = and i8 %i.gl, -33
  %i.gn = icmp eq i8 %i.gm, 68
  br i1 %i.gn, label %.lr.ph.i158.3, label %sqlite3_strnicmp.exit

.lr.ph.i158.3:                                    ; preds = %.lr.ph.i158.2
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 3 ; 2 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !231
  %i.gq = and i8 %i.gp, -33
  %i.gr = icmp eq i8 %i.gq, 68
  br i1 %i.gr, label %.lr.ph.i158.4, label %sqlite3_strnicmp.exit

.lr.ph.i158.4:                                    ; preds = %.lr.ph.i158.3
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gc, i64 4 ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !231
  %i.gu = and i8 %i.gt, -33
  %i.gv = icmp eq i8 %i.gu, 69
  br i1 %i.gv, label %.lr.ph.i158.5, label %sqlite3_strnicmp.exit

.lr.ph.i158.5:                                    ; preds = %.lr.ph.i158.4
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gc, i64 5 ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !231
  %i.gy = and i8 %i.gx, -33
  %i.gz = icmp eq i8 %i.gy, 78
  br i1 %i.gz, label %sqlite3_strnicmp.exit.thread, label %sqlite3_strnicmp.exit

sqlite3_strnicmp.exit:                            ; preds = %.lr.ph.i158.preheader.peel.next, %.lr.ph.i158.1, %.lr.ph.i158.2, %.lr.ph.i158.3, %.lr.ph.i158.4, %.lr.ph.i158.5
  %.lcssa = phi i32 [ 104, %.lr.ph.i158.preheader.peel.next ], [ 105, %.lr.ph.i158.1 ], [ 100, %.lr.ph.i158.2 ], [ 100, %.lr.ph.i158.3 ], [ 101, %.lr.ph.i158.4 ], [ 110, %.lr.ph.i158.5 ]
  %.023.i.lcssa193 = phi ptr [ %i.gc, %.lr.ph.i158.preheader.peel.next ], [ %i.gg, %.lr.ph.i158.1 ], [ %i.gk, %.lr.ph.i158.2 ], [ %i.go, %.lr.ph.i158.3 ], [ %i.gs, %.lr.ph.i158.4 ], [ %i.gw, %.lr.ph.i158.5 ]
  %i.ha = load i8, ptr %.023.i.lcssa193, align 1, !tbaa !231
  %i.hb = zext i8 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !231
  %i.he = zext i8 %i.hd to i32
  %i.hf = icmp eq i32 %.lcssa, %i.he
  br i1 %i.hf, label %sqlite3_strnicmp.exit.thread, label %sqlite3_strnicmp.exit.thread169

sqlite3_strnicmp.exit.thread:                     ; preds = %sqlite3_strnicmp.exit, %.lr.ph.i158.5
  %i.hg = getelementptr i8, ptr %i.gc, i64 -1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !231
  %i.hi = icmp eq i8 %i.hh, 32
  br i1 %i.hi, label %bb.al, label %sqlite3_strnicmp.exit.thread169

bb.al:                                            ; preds = %sqlite3_strnicmp.exit.thread
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gc, i64 6
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !231 ; 2 uses
  switch i8 %i.hk, label %sqlite3_strnicmp.exit.thread169 [
    i8 0, label %.loopexit
    i8 32, label %.loopexit
  ]

sqlite3_strnicmp.exit.thread169:                  ; preds = %bb.al, %sqlite3_strnicmp.exit, %sqlite3_strnicmp.exit.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.i158.preheader.peel.next, !llvm.loop !3017

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
  %wide.load = load <16 x i8>, ptr %i.hx, align 1, !tbaa !231
  %wide.load248 = load <16 x i8>, ptr %i.hy, align 1, !tbaa !231
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <16 x i8> %wide.load, ptr %gep, align 1, !tbaa !231
  store <16 x i8> %wide.load248, ptr %i.hz, align 1, !tbaa !231
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !3018

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hs, %n.vec
  br i1 %cmp.n, label %._crit_edge187, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ht, 0
  br i1 %min.epilog.iters.check, label %.lr.ph186.preheader, label %vec.epilog.ph, !prof !2739

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
  %wide.load252 = load <8 x i8>, ptr %i.ie, align 1, !tbaa !231
  %gep266 = getelementptr i8, ptr %invariant.gep265, i64 %index251
  store <8 x i8> %wide.load252, ptr %gep266, align 1, !tbaa !231
  %index.next253 = add nuw i64 %index251, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next253, %n.vec250
  br i1 %i.if, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !3019

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
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !231
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i155166, i64 %indvars.iv209
  store i8 %i.ih, ptr %i.ii, align 1, !tbaa !231
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %i.ij = add nuw nsw i64 %indvars.iv.next210, %i.ho
  %.not133 = icmp samesign ugt i64 %i.ij, %wide.trip.count
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1
  br i1 %.not133, label %._crit_edge187, label %.lr.ph186, !llvm.loop !3020

._crit_edge187:                                   ; preds = %.lr.ph186, %middle.block, %vec.epilog.middle.block, %bb.am
  %i.ik = load i8, ptr %.lcssa198, align 1, !tbaa !231
  %i.il = icmp eq i8 %i.ik, 0
  %i.im = icmp ne i32 %.0112181.lcssa, 0
  %or.cond = and i1 %i.im, %i.il
  br i1 %or.cond, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %._crit_edge187
  %i.in = getelementptr i8, ptr %.lcssa198, i64 -1
  store i8 0, ptr %i.in, align 1, !tbaa !231
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %._crit_edge187
  %i.io = load ptr, ptr %i.dz, align 8, !tbaa !913 ; 2 uses
  %i.ip = getelementptr inbounds nuw [16 x i8], ptr %i.io, i64 %indvars.iv214
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 14 ; 2 uses
  %i.ir = load i16, ptr %i.iq, align 2, !tbaa !1329
  %i.is = or i16 %i.ir, 2
  store i16 %i.is, ptr %i.iq, align 2, !tbaa !1329
  %i.it = load i32, ptr %i.ea, align 8, !tbaa !802
  %i.iu = or i32 %i.it, 2
  store i32 %i.iu, ptr %i.ea, align 8, !tbaa !802
  %.pre218 = load i16, ptr %i.dw, align 2, !tbaa !914
  br label %bb.ap

.critedge:                                        ; preds = %sqlite3_strnicmp.exit.thread169, %sqlite3ColumnType.exit, %sqlite3_strnicmp.exit.thread169.peel, %sqlite3Strlen30.exit
  %i.iv = zext nneg i16 %.0113189 to i32
  %i.iw = load i32, ptr %i.ea, align 8, !tbaa !802
  %i.ix = or i32 %i.iw, %i.iv
  store i32 %i.ix, ptr %i.ea, align 8, !tbaa !802
  br label %bb.ap

bb.ap:                                            ; preds = %.critedge, %bb.ao
  %i.iy = phi i16 [ %.pre218, %bb.ao ], [ %i.eb, %.critedge ] ; 2 uses
  %i.iz = phi ptr [ %i.io, %bb.ao ], [ %i.ec, %.critedge ]
  %.1 = phi i16 [ 1024, %bb.ao ], [ %.0113189, %.critedge ]
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.ja = sext i16 %i.iy to i64
  %i.jb = icmp slt i64 %indvars.iv.next215, %i.ja
  br i1 %i.jb, label %bb.ah, label %sqlite3DbFree.exit161, !llvm.loop !3021

sqlite3DbFree.exit161:                            ; preds = %bb.ap, %bb.ag, %bb.ad, %bb.af, %sqlite3DbFree.exit153
  %.0117 = phi i32 [ %i.bm, %sqlite3DbFree.exit153 ], [ 1, %bb.af ], [ 0, %bb.ad ], [ 0, %bb.ag ], [ 0, %bb.ap ]
  call fastcc void @sqlite3DbFreeNN(ptr noundef %0, ptr noundef nonnull %.0.i.i)
  br label %sqlite3DbStrDup.exit.thread

sqlite3DbStrDup.exit.thread:                      ; preds = %sqlite3DbMallocRaw.exit.i, %._crit_edge, %sqlite3DbFree.exit161, %sqlite3DbFree.exit, %bb.c
  %.0115 = phi i32 [ 6, %bb.c ], [ %.0117, %sqlite3DbFree.exit161 ], [ 7, %sqlite3DbFree.exit ], [ 7, %._crit_edge ], [ 7, %sqlite3DbMallocRaw.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #58
  ret i32 %.0115
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @sqlite3VdbeAddOp2(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -1, 511) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !189  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !934
  %.not.i = icmp sgt i32 %i.d, %i.b
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef 0), !inline_history !3022
  br label %sqlite3VdbeAddOp3.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !189
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !188
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.i ; 6 uses
  %i.k = trunc i32 %1 to i8
  store i8 %i.k, ptr %i.j, align 8, !tbaa !576
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.l, align 2, !tbaa !577
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %2, ptr %i.m, align 4, !tbaa !572
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i32 %3, ptr %i.n, align 8, !tbaa !574
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %i.p, align 1, !tbaa !936
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.o, i8 0, i64 20, i1 false)
  br label %sqlite3VdbeAddOp3.exit

sqlite3VdbeAddOp3.exit:                           ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.e, %bb.b ], [ %i.b, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 2147483647) i32 @sqlite3VdbeAddOp3(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !189  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.d = load i32, ptr %i.c, align 4, !tbaa !934
  %.not = icmp sgt i32 %i.d, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @growOp3(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 8, !tbaa !189
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !188
  %i.i = sext i32 %i.b to i64
  %i.j = getelementptr inbounds [32 x i8], ptr %i.h, i64 %i.i ; 7 uses
  %i.k = trunc i32 %1 to i8
  store i8 %i.k, ptr %i.j, align 8, !tbaa !576
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i16 0, ptr %i.l, align 2, !tbaa !577
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %2, ptr %i.m, align 4, !tbaa !572
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
end_hunk_0
