Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_json?download=true
inline.NumInlined: 263
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@scan_once_unicode:bb.a
  %.0.i191.i = phi i32 [ %i.re, %bb.gu ], [ %i.rh, %bb.gv ], [ %i.rj, %bb.gw ]
  %i.rk = icmp eq i32 %.0.i191.i, 45
  br i1 %i.rk, label %bb.hb, label %bb.gx

bb.gx:                                            ; preds = %PyUnicode_READ.exit192.i
  switch i32 %i.f, label %bb.ha [
    i32 1, label %bb.gy
    i32 2, label %bb.gz
  ]

bb.gy:                                            ; preds = %bb.gx
  %i.rl = getelementptr i8, ptr %.0.i.i209, i64 %i.ra
  %i.rm = load i8, ptr %i.rl, align 1, !tbaa !28
  %i.rn = zext i8 %i.rm to i32
  br label %PyUnicode_READ.exit194.i

bb.gz:                                            ; preds = %bb.gx
  %i.ro = getelementptr [2 x i8], ptr %.0.i.i209, i64 %i.ra
  %i.rp = load i16, ptr %i.ro, align 2, !tbaa !32
  %i.rq = zext i16 %i.rp to i32
  br label %PyUnicode_READ.exit194.i

bb.ha:                                            ; preds = %bb.gx
  %i.rr = getelementptr [4 x i8], ptr %.0.i.i209, i64 %i.ra
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !10
  br label %PyUnicode_READ.exit194.i

PyUnicode_READ.exit194.i:                         ; preds = %bb.ha, %bb.gz, %bb.gy
  %.0.i193.i = phi i32 [ %i.rn, %bb.gy ], [ %i.rq, %bb.gz ], [ %i.rs, %bb.ha ]
  %i.rt = icmp eq i32 %.0.i193.i, 43
  br i1 %i.rt, label %bb.hb, label %bb.hc

bb.hb:                                            ; preds = %PyUnicode_READ.exit194.i, %PyUnicode_READ.exit192.i
  %i.ru = add nsw i64 %.4.i, 2
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %PyUnicode_READ.exit194.i, %bb.gs
  %.5.i = phi i64 [ %i.ru, %bb.hb ], [ %i.ra, %PyUnicode_READ.exit194.i ], [ %i.ra, %bb.gs ] ; 3 uses
  %.not152230.i.not = icmp slt i64 %.5.i, %.val
  br i1 %.not152230.i.not, label %.lr.ph232.i, label %.critedge4.i

.lr.ph232.i:                                      ; preds = %bb.hc, %bb.hk
  %.6231.i = phi i64 [ %i.sn, %bb.hk ], [ %.5.i, %bb.hc ] ; 9 uses
  switch i32 %i.f, label %bb.hf [
    i32 1, label %bb.hd
    i32 2, label %bb.he
  ]

bb.hd:                                            ; preds = %.lr.ph232.i
  %i.rv = getelementptr i8, ptr %.0.i.i209, i64 %.6231.i
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !28
  %i.rx = zext i8 %i.rw to i32
  br label %PyUnicode_READ.exit196.i

bb.he:                                            ; preds = %.lr.ph232.i
  %i.ry = getelementptr [2 x i8], ptr %.0.i.i209, i64 %.6231.i
  %i.rz = load i16, ptr %i.ry, align 2, !tbaa !32
  %i.sa = zext i16 %i.rz to i32
  br label %PyUnicode_READ.exit196.i

bb.hf:                                            ; preds = %.lr.ph232.i
  %i.sb = getelementptr [4 x i8], ptr %.0.i.i209, i64 %.6231.i
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !10
  br label %PyUnicode_READ.exit196.i

PyUnicode_READ.exit196.i:                         ; preds = %bb.hf, %bb.he, %bb.hd
  %.0.i195.i = phi i32 [ %i.rx, %bb.hd ], [ %i.sa, %bb.he ], [ %i.sc, %bb.hf ]
  %i.sd = icmp ugt i32 %.0.i195.i, 47
  br i1 %i.sd, label %bb.hg, label %.critedge4.i

bb.hg:                                            ; preds = %PyUnicode_READ.exit196.i
  switch i32 %i.f, label %bb.hj [
    i32 1, label %bb.hh
    i32 2, label %bb.hi
  ]

bb.hh:                                            ; preds = %bb.hg
  %i.se = getelementptr i8, ptr %.0.i.i209, i64 %.6231.i
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !28
  %i.sg = zext i8 %i.sf to i32
  br label %PyUnicode_READ.exit198.i

bb.hi:                                            ; preds = %bb.hg
  %i.sh = getelementptr [2 x i8], ptr %.0.i.i209, i64 %.6231.i
  %i.si = load i16, ptr %i.sh, align 2, !tbaa !32
  %i.sj = zext i16 %i.si to i32
  br label %PyUnicode_READ.exit198.i

bb.hj:                                            ; preds = %bb.hg
  %i.sk = getelementptr [4 x i8], ptr %.0.i.i209, i64 %.6231.i
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !10
  br label %PyUnicode_READ.exit198.i

PyUnicode_READ.exit198.i:                         ; preds = %bb.hj, %bb.hi, %bb.hh
  %.0.i197.i = phi i32 [ %i.sg, %bb.hh ], [ %i.sj, %bb.hi ], [ %i.sl, %bb.hj ]
  %i.sm = icmp ult i32 %.0.i197.i, 58
  br i1 %i.sm, label %bb.hk, label %.critedge4.i

bb.hk:                                            ; preds = %PyUnicode_READ.exit198.i
  %i.sn = add nsw i64 %.6231.i, 1                 ; 2 uses
  %exitcond222.not = icmp eq i64 %i.sn, %.val
  br i1 %exitcond222.not, label %.critedge4.i, label %.lr.ph232.i, !llvm.loop !94

.critedge4.i:                                     ; preds = %bb.hk, %PyUnicode_READ.exit198.i, %PyUnicode_READ.exit196.i, %bb.hc
  %.6.lcssa.i = phi i64 [ %.5.i, %bb.hc ], [ %.6231.i, %PyUnicode_READ.exit198.i ], [ %.val, %bb.hk ], [ %.6231.i, %PyUnicode_READ.exit196.i ] ; 2 uses
  %i.so = add nsw i64 %.6.lcssa.i, -1             ; 6 uses
  switch i32 %i.f, label %bb.hn [
    i32 1, label %bb.hl
    i32 2, label %bb.hm
  ]

bb.hl:                                            ; preds = %.critedge4.i
  %i.sp = getelementptr i8, ptr %.0.i.i209, i64 %i.so
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !28
  %i.sr = zext i8 %i.sq to i32
  br label %PyUnicode_READ.exit200.i

bb.hm:                                            ; preds = %.critedge4.i
  %i.ss = getelementptr [2 x i8], ptr %.0.i.i209, i64 %i.so
  %i.st = load i16, ptr %i.ss, align 2, !tbaa !32
  %i.su = zext i16 %i.st to i32
  br label %PyUnicode_READ.exit200.i

bb.hn:                                            ; preds = %.critedge4.i
  %i.sv = getelementptr [4 x i8], ptr %.0.i.i209, i64 %i.so
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !10
  br label %PyUnicode_READ.exit200.i

PyUnicode_READ.exit200.i:                         ; preds = %bb.hn, %bb.hm, %bb.hl
  %.0.i199.i = phi i32 [ %i.sr, %bb.hl ], [ %i.su, %bb.hm ], [ %i.sw, %bb.hn ]
  %i.sx = icmp ugt i32 %.0.i199.i, 47
  br i1 %i.sx, label %bb.ho, label %bb.hs

bb.ho:                                            ; preds = %PyUnicode_READ.exit200.i
  switch i32 %i.f, label %bb.hr [
    i32 1, label %bb.hp
    i32 2, label %bb.hq
  ]

bb.hp:                                            ; preds = %bb.ho
  %i.sy = getelementptr i8, ptr %.0.i.i209, i64 %i.so
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !28
  %i.ta = zext i8 %i.sz to i32
  br label %PyUnicode_READ.exit202.i

bb.hq:                                            ; preds = %bb.ho
  %i.tb = getelementptr [2 x i8], ptr %.0.i.i209, i64 %i.so
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !32
  %i.td = zext i16 %i.tc to i32
  br label %PyUnicode_READ.exit202.i

bb.hr:                                            ; preds = %bb.ho
  %i.te = getelementptr [4 x i8], ptr %.0.i.i209, i64 %i.so
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !10
  br label %PyUnicode_READ.exit202.i

PyUnicode_READ.exit202.i:                         ; preds = %bb.hr, %bb.hq, %bb.hp
  %.0.i201.i = phi i32 [ %i.ta, %bb.hp ], [ %i.td, %bb.hq ], [ %i.tf, %bb.hr ]
  %i.tg = icmp ugt i32 %.0.i201.i, 57             ; 2 uses
  %brmerge.not.i = and i1 %.not153.i, %i.tg
  %.6.mux.i = select i1 %i.tg, i64 %.4.i, i64 %.6.lcssa.i
  br i1 %brmerge.not.i, label %.critedge159.i, label %.thread.i

bb.hs:                                            ; preds = %PyUnicode_READ.exit200.i, %PyUnicode_READ.exit190.i, %.critedge2.i
  br i1 %.not153.i, label %.critedge159.i, label %.thread.i

.thread.i:                                        ; preds = %bb.gj, %bb.hs, %PyUnicode_READ.exit202.i
  %.8210.i = phi i64 [ %.4.i, %bb.hs ], [ %.6.mux.i, %PyUnicode_READ.exit202.i ], [ %.val, %bb.gj ] ; 2 uses
  %i.th = getelementptr i8, ptr %0, i64 40
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !39 ; 2 uses
  %.not154.i = icmp eq ptr %i.ti, @PyFloat_Type
  br i1 %.not154.i, label %.thread216.i, label %bb.ht

.critedge159.i:                                   ; preds = %bb.hs, %PyUnicode_READ.exit202.i
  %i.tj = getelementptr i8, ptr %0, i64 48
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !40 ; 2 uses
  %.not155.i = icmp eq ptr %i.tk, @PyLong_Type
  br i1 %.not155.i, label %.thread216.i, label %bb.ht

bb.ht:                                            ; preds = %.critedge159.i, %.thread.i
  %.not153212.i = phi i1 [ false, %.thread.i ], [ true, %.critedge159.i ]
  %.8208.i = phi i64 [ %.8210.i, %.thread.i ], [ %.4.i, %.critedge159.i ] ; 3 uses
  %.0131.i = phi ptr [ %i.ti, %.thread.i ], [ %i.tk, %.critedge159.i ] ; 2 uses
  %.not156.i = icmp eq ptr %.0131.i, null
  br i1 %.not156.i, label %.thread216.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.tl = zext nneg i32 %i.f to i64
  %i.tm = mul i64 %3, %i.tl
  %i.tn = getelementptr i8, ptr %.0.i.i209, i64 %i.tm
  %i.to = sub i64 %.8208.i, %3
  %i.tp = tail call ptr @PyUnicode_FromKindAndData(i32 noundef %i.f, ptr noundef %i.tn, i64 noundef %i.to) #6 ; 3 uses
  %i.tq = icmp eq ptr %i.tp, null
  br i1 %i.tq, label %raise_stop_iteration.exit, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.tr = tail call ptr @PyObject_CallOneArg(ptr noundef nonnull %.0131.i, ptr noundef nonnull %i.tp) #6
  br label %.thread224.i

.thread216.i:                                     ; preds = %bb.ht, %.critedge159.i, %.thread.i
  %.8208223.i = phi i64 [ %.8208.i, %bb.ht ], [ %.4.i, %.critedge159.i ], [ %.8210.i, %.thread.i ] ; 10 uses
  %.not153212221.i = phi i1 [ %.not153212.i, %bb.ht ], [ true, %.critedge159.i ], [ false, %.thread.i ]
  %i.ts = sub i64 %.8208223.i, %3                 ; 25 uses
  %i.tt = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.ts) #6 ; 8 uses
  %i.tu = ptrtoaddr ptr %i.tt to i64
  %.not157.i = icmp eq ptr %i.tt, null
  br i1 %.not157.i, label %raise_stop_iteration.exit, label %bb.hw

bb.hw:                                            ; preds = %.thread216.i
  %i.tv = getelementptr i8, ptr %i.tt, i64 32     ; 23 uses
  %i.tw = icmp sgt i64 %i.ts, 0
  br i1 %i.tw, label %.lr.ph237.i, label %._crit_edge.i

.lr.ph237.i:                                      ; preds = %bb.hw
  switch i32 %i.f, label %PyUnicode_READ.exit204.preheader.i [
    i32 1, label %iter.check289
    i32 2, label %iter.check
  ]

iter.check:                                       ; preds = %.lr.ph237.i
  %invariant.gep.i = getelementptr [2 x i8], ptr %.0.i.i209, i64 %3 ; 8 uses
  %min.iters.check = icmp ult i64 %i.ts, 4
  br i1 %min.iters.check, label %PyUnicode_READ.exit204.us240.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.tx = add i64 %.8208223.i, 32
  %i.ty = sub i64 %i.tx, %3
  %i.tz = getelementptr i8, ptr %i.tt, i64 %i.ty
  %i.ua = shl i64 %.8208223.i, 1
  %i.ub = getelementptr i8, ptr %.0.i.i209, i64 %i.ua
  %bound0 = icmp ult ptr %i.tv, %i.ub
  %bound1 = icmp ult ptr %invariant.gep.i, %i.tz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %PyUnicode_READ.exit204.us240.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check267 = icmp ult i64 %i.ts, 16
  br i1 %min.iters.check267, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.uc = and i64 %i.ts, 12
  %n.vec = and i64 %i.ts, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ud = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.ue = getelementptr i8, ptr %i.ud, i64 16
  %wide.load = load <8 x i16>, ptr %i.ud, align 2, !tbaa !32, !alias.scope !112
  %wide.load268 = load <8 x i16>, ptr %i.ue, align 2, !tbaa !32, !alias.scope !112
  %i.uf = trunc <8 x i16> %wide.load to <8 x i8>
  %i.ug = trunc <8 x i16> %wide.load268 to <8 x i8>
  %i.uh = getelementptr i8, ptr %i.tv, i64 %index ; 2 uses
  %i.ui = getelementptr i8, ptr %i.uh, i64 8
  store <8 x i8> %i.uf, ptr %i.uh, align 1, !tbaa !28, !alias.scope !113, !noalias !112
  store <8 x i8> %i.ug, ptr %i.ui, align 1, !tbaa !28, !alias.scope !113, !noalias !112
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.uj = icmp eq i64 %index.next, %n.vec
  br i1 %i.uj, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ts, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.uc, 0
  br i1 %min.epilog.iters.check, label %PyUnicode_READ.exit204.us240.i.preheader, label %vec.epilog.ph, !prof !116

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec269 = and i64 %i.ts, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index270 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next272, %vec.epilog.vector.body ] ; 3 uses
  %i.uk = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index270
  %wide.load271 = load <4 x i16>, ptr %i.uk, align 2, !tbaa !32, !alias.scope !112
  %i.ul = trunc <4 x i16> %wide.load271 to <4 x i8>
  %i.um = getelementptr i8, ptr %i.tv, i64 %index270
  store <4 x i8> %i.ul, ptr %i.um, align 1, !tbaa !28, !alias.scope !113, !noalias !112
  %index.next272 = add nuw i64 %index270, 4       ; 2 uses
  %i.un = icmp eq i64 %index.next272, %n.vec269
  br i1 %i.un, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !99

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n273 = icmp eq i64 %i.ts, %n.vec269
  br i1 %cmp.n273, label %._crit_edge.i, label %PyUnicode_READ.exit204.us240.i.preheader

PyUnicode_READ.exit204.us240.i.preheader:         ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0236.us239.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec269, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ts, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %PyUnicode_READ.exit204.us240.i.prol.loopexit, label %PyUnicode_READ.exit204.us240.i.prol

PyUnicode_READ.exit204.us240.i.prol:              ; preds = %PyUnicode_READ.exit204.us240.i.preheader, %PyUnicode_READ.exit204.us240.i.prol
  %.0236.us239.i.prol = phi i64 [ %i.ur, %PyUnicode_READ.exit204.us240.i.prol ], [ %.0236.us239.i.ph, %PyUnicode_READ.exit204.us240.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %PyUnicode_READ.exit204.us240.i.prol ], [ 0, %PyUnicode_READ.exit204.us240.i.preheader ]
  %gep.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %.0236.us239.i.prol
  %i.uo = load i16, ptr %gep.i.prol, align 2, !tbaa !32
  %i.up = trunc i16 %i.uo to i8
  %i.uq = getelementptr i8, ptr %i.tv, i64 %.0236.us239.i.prol
  store i8 %i.up, ptr %i.uq, align 1, !tbaa !28
  %i.ur = add nuw nsw i64 %.0236.us239.i.prol, 1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %PyUnicode_READ.exit204.us240.i.prol.loopexit, label %PyUnicode_READ.exit204.us240.i.prol, !llvm.loop !100

PyUnicode_READ.exit204.us240.i.prol.loopexit:     ; preds = %PyUnicode_READ.exit204.us240.i.prol, %PyUnicode_READ.exit204.us240.i.preheader
  %.0236.us239.i.unr = phi i64 [ %.0236.us239.i.ph, %PyUnicode_READ.exit204.us240.i.preheader ], [ %i.ur, %PyUnicode_READ.exit204.us240.i.prol ]
  %i.us = sub i64 %.0236.us239.i.ph, %.8208223.i
  %i.ut = add i64 %i.us, %3
  %i.uu = icmp ugt i64 %i.ut, -4
  br i1 %i.uu, label %._crit_edge.i, label %PyUnicode_READ.exit204.us240.i

iter.check289:                                    ; preds = %.lr.ph237.i
  %invariant.gep268.i = getelementptr i8, ptr %.0.i.i209, i64 %3 ; 7 uses
  %min.iters.check276 = icmp ult i64 %i.ts, 4
  br i1 %min.iters.check276, label %PyUnicode_READ.exit204.us.i.preheader, label %vector.memcheck274

vector.memcheck274:                               ; preds = %iter.check289
  %i.uv = add i64 %3, %.0.i.i209275
  %i.uw = sub i64 %i.tu, %i.uv
  %diff.check = icmp ugt i64 %i.uw, -32
  br i1 %diff.check, label %PyUnicode_READ.exit204.us.i.preheader, label %vector.main.loop.iter.check277

vector.main.loop.iter.check277:                   ; preds = %vector.memcheck274
  %min.iters.check278 = icmp ult i64 %i.ts, 32
  br i1 %min.iters.check278, label %vec.epilog.ph293, label %vector.ph279

vector.ph279:                                     ; preds = %vector.main.loop.iter.check277
  %i.ux = and i64 %i.ts, 28
  %n.vec280 = and i64 %i.ts, 9223372036854775776  ; 4 uses
  br label %vector.body281

vector.body281:                                   ; preds = %vector.ph279, %vector.body281
  %index282 = phi i64 [ 0, %vector.ph279 ], [ %index.next285, %vector.body281 ] ; 3 uses
  %i.uy = getelementptr i8, ptr %invariant.gep268.i, i64 %index282 ; 2 uses
  %i.uz = getelementptr i8, ptr %i.uy, i64 16
  %wide.load283 = load <16 x i8>, ptr %i.uy, align 1, !tbaa !28
  %wide.load284 = load <16 x i8>, ptr %i.uz, align 1, !tbaa !28
  %i.va = getelementptr i8, ptr %i.tv, i64 %index282 ; 2 uses
  %i.vb = getelementptr i8, ptr %i.va, i64 16
  store <16 x i8> %wide.load283, ptr %i.va, align 1, !tbaa !28
  store <16 x i8> %wide.load284, ptr %i.vb, align 1, !tbaa !28
  %index.next285 = add nuw i64 %index282, 32      ; 2 uses
  %i.vc = icmp eq i64 %index.next285, %n.vec280
  br i1 %i.vc, label %middle.block286, label %vector.body281, !llvm.loop !101

middle.block286:                                  ; preds = %vector.body281
  %cmp.n287 = icmp eq i64 %i.ts, %n.vec280
  br i1 %cmp.n287, label %._crit_edge.i, label %vec.epilog.iter.check291

vec.epilog.iter.check291:                         ; preds = %middle.block286
  %min.epilog.iters.check292 = icmp eq i64 %i.ux, 0
  br i1 %min.epilog.iters.check292, label %PyUnicode_READ.exit204.us.i.preheader, label %vec.epilog.ph293, !prof !118

vec.epilog.ph293:                                 ; preds = %vector.main.loop.iter.check277, %vec.epilog.iter.check291
  %vec.epilog.resume.val288 = phi i64 [ %n.vec280, %vec.epilog.iter.check291 ], [ 0, %vector.main.loop.iter.check277 ]
  %n.vec294 = and i64 %i.ts, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body295

vec.epilog.vector.body295:                        ; preds = %vec.epilog.vector.body295, %vec.epilog.ph293
  %index296 = phi i64 [ %vec.epilog.resume.val288, %vec.epilog.ph293 ], [ %index.next298, %vec.epilog.vector.body295 ] ; 3 uses
  %i.vd = getelementptr i8, ptr %invariant.gep268.i, i64 %index296
  %wide.load297 = load <4 x i8>, ptr %i.vd, align 1, !tbaa !28
  %i.ve = getelementptr i8, ptr %i.tv, i64 %index296
  store <4 x i8> %wide.load297, ptr %i.ve, align 1, !tbaa !28
  %index.next298 = add nuw i64 %index296, 4       ; 2 uses
  %i.vf = icmp eq i64 %index.next298, %n.vec294
  br i1 %i.vf, label %vec.epilog.middle.block299, label %vec.epilog.vector.body295, !llvm.loop !102

vec.epilog.middle.block299:                       ; preds = %vec.epilog.vector.body295
  %cmp.n300 = icmp eq i64 %i.ts, %n.vec294
  br i1 %cmp.n300, label %._crit_edge.i, label %PyUnicode_READ.exit204.us.i.preheader

PyUnicode_READ.exit204.us.i.preheader:            ; preds = %iter.check289, %vector.memcheck274, %vec.epilog.iter.check291, %vec.epilog.middle.block299
  %.0236.us.i.ph = phi i64 [ 0, %iter.check289 ], [ 0, %vector.memcheck274 ], [ %n.vec280, %vec.epilog.iter.check291 ], [ %n.vec294, %vec.epilog.middle.block299 ] ; 3 uses
  %xtraiter326 = and i64 %i.ts, 3                 ; 2 uses
  %lcmp.mod327.not = icmp eq i64 %xtraiter326, 0
  br i1 %lcmp.mod327.not, label %PyUnicode_READ.exit204.us.i.prol.loopexit, label %PyUnicode_READ.exit204.us.i.prol

PyUnicode_READ.exit204.us.i.prol:                 ; preds = %PyUnicode_READ.exit204.us.i.preheader, %PyUnicode_READ.exit204.us.i.prol
  %.0236.us.i.prol = phi i64 [ %i.vi, %PyUnicode_READ.exit204.us.i.prol ], [ %.0236.us.i.ph, %PyUnicode_READ.exit204.us.i.preheader ] ; 3 uses
  %prol.iter328 = phi i64 [ %prol.iter328.next, %PyUnicode_READ.exit204.us.i.prol ], [ 0, %PyUnicode_READ.exit204.us.i.preheader ]
  %gep269.i.prol = getelementptr i8, ptr %invariant.gep268.i, i64 %.0236.us.i.prol
  %i.vg = load i8, ptr %gep269.i.prol, align 1, !tbaa !28
  %i.vh = getelementptr i8, ptr %i.tv, i64 %.0236.us.i.prol
  store i8 %i.vg, ptr %i.vh, align 1, !tbaa !28
  %i.vi = add nuw nsw i64 %.0236.us.i.prol, 1     ; 2 uses
  %prol.iter328.next = add i64 %prol.iter328, 1   ; 2 uses
  %prol.iter328.cmp.not = icmp eq i64 %prol.iter328.next, %xtraiter326
  br i1 %prol.iter328.cmp.not, label %PyUnicode_READ.exit204.us.i.prol.loopexit, label %PyUnicode_READ.exit204.us.i.prol, !llvm.loop !103

PyUnicode_READ.exit204.us.i.prol.loopexit:        ; preds = %PyUnicode_READ.exit204.us.i.prol, %PyUnicode_READ.exit204.us.i.preheader
  %.0236.us.i.unr = phi i64 [ %.0236.us.i.ph, %PyUnicode_READ.exit204.us.i.preheader ], [ %i.vi, %PyUnicode_READ.exit204.us.i.prol ]
  %i.vj = sub i64 %.0236.us.i.ph, %.8208223.i
  %i.vk = add i64 %i.vj, %3
  %i.vl = icmp ugt i64 %i.vk, -4
  br i1 %i.vl, label %._crit_edge.i, label %PyUnicode_READ.exit204.us.i

PyUnicode_READ.exit204.preheader.i:               ; preds = %.lr.ph237.i
  %invariant.gep270.i = getelementptr [4 x i8], ptr %.0.i.i209, i64 %3 ; 7 uses
  %min.iters.check307 = icmp ult i64 %i.ts, 16
  br i1 %min.iters.check307, label %PyUnicode_READ.exit204.i.preheader, label %vector.memcheck308

vector.memcheck308:                               ; preds = %PyUnicode_READ.exit204.preheader.i
  %i.vm = add i64 %.8208223.i, 32
  %i.vn = sub i64 %i.vm, %3
  %i.vo = getelementptr i8, ptr %i.tt, i64 %i.vn
  %i.vp = shl i64 %.8208223.i, 2
  %i.vq = getelementptr i8, ptr %.0.i.i209, i64 %i.vp
  %bound0309 = icmp ult ptr %i.tv, %i.vq
  %bound1310 = icmp ult ptr %invariant.gep270.i, %i.vo
  %found.conflict311 = and i1 %bound0309, %bound1310
  br i1 %found.conflict311, label %PyUnicode_READ.exit204.i.preheader, label %vector.ph312

vector.ph312:                                     ; preds = %vector.memcheck308
  %n.vec313 = and i64 %i.ts, 9223372036854775800  ; 3 uses
  br label %vector.body314

vector.body314:                                   ; preds = %vector.body314, %vector.ph312
  %index315 = phi i64 [ 0, %vector.ph312 ], [ %index.next318, %vector.body314 ] ; 3 uses
  %i.vr = getelementptr [4 x i8], ptr %invariant.gep270.i, i64 %index315 ; 2 uses
  %i.vs = getelementptr i8, ptr %i.vr, i64 16
  %wide.load316 = load <4 x i32>, ptr %i.vr, align 4, !tbaa !10, !alias.scope !119
  %wide.load317 = load <4 x i32>, ptr %i.vs, align 4, !tbaa !10, !alias.scope !119
  %i.vt = trunc <4 x i32> %wide.load316 to <4 x i8>
  %i.vu = trunc <4 x i32> %wide.load317 to <4 x i8>
  %i.vv = getelementptr i8, ptr %i.tv, i64 %index315 ; 2 uses
  %i.vw = getelementptr i8, ptr %i.vv, i64 4
  store <4 x i8> %i.vt, ptr %i.vv, align 1, !tbaa !28, !alias.scope !120, !noalias !119
  store <4 x i8> %i.vu, ptr %i.vw, align 1, !tbaa !28, !alias.scope !120, !noalias !119
  %index.next318 = add nuw i64 %index315, 8       ; 2 uses
  %i.vx = icmp eq i64 %index.next318, %n.vec313
  br i1 %i.vx, label %middle.block319, label %vector.body314, !llvm.loop !107

middle.block319:                                  ; preds = %vector.body314
  %cmp.n320 = icmp eq i64 %i.ts, %n.vec313
  br i1 %cmp.n320, label %._crit_edge.i, label %PyUnicode_READ.exit204.i.preheader

PyUnicode_READ.exit204.i.preheader:               ; preds = %vector.memcheck308, %PyUnicode_READ.exit204.preheader.i, %middle.block319
  %.0236.i.ph = phi i64 [ 0, %vector.memcheck308 ], [ 0, %PyUnicode_READ.exit204.preheader.i ], [ %n.vec313, %middle.block319 ] ; 3 uses
  %xtraiter329 = and i64 %i.ts, 3                 ; 2 uses
  %lcmp.mod330.not = icmp eq i64 %xtraiter329, 0
  br i1 %lcmp.mod330.not, label %PyUnicode_READ.exit204.i.prol.loopexit, label %PyUnicode_READ.exit204.i.prol

PyUnicode_READ.exit204.i.prol:                    ; preds = %PyUnicode_READ.exit204.i.preheader, %PyUnicode_READ.exit204.i.prol
  %.0236.i.prol = phi i64 [ %i.wb, %PyUnicode_READ.exit204.i.prol ], [ %.0236.i.ph, %PyUnicode_READ.exit204.i.preheader ] ; 3 uses
  %prol.iter331 = phi i64 [ %prol.iter331.next, %PyUnicode_READ.exit204.i.prol ], [ 0, %PyUnicode_READ.exit204.i.preheader ]
  %gep271.i.prol = getelementptr [4 x i8], ptr %invariant.gep270.i, i64 %.0236.i.prol
  %i.vy = load i32, ptr %gep271.i.prol, align 4, !tbaa !10
  %i.vz = trunc i32 %i.vy to i8
  %i.wa = getelementptr i8, ptr %i.tv, i64 %.0236.i.prol
  store i8 %i.vz, ptr %i.wa, align 1, !tbaa !28
  %i.wb = add nuw nsw i64 %.0236.i.prol, 1        ; 2 uses
  %prol.iter331.next = add i64 %prol.iter331, 1   ; 2 uses
  %prol.iter331.cmp.not = icmp eq i64 %prol.iter331.next, %xtraiter329
  br i1 %prol.iter331.cmp.not, label %PyUnicode_READ.exit204.i.prol.loopexit, label %PyUnicode_READ.exit204.i.prol, !llvm.loop !108

PyUnicode_READ.exit204.i.prol.loopexit:           ; preds = %PyUnicode_READ.exit204.i.prol, %PyUnicode_READ.exit204.i.preheader
  %.0236.i.unr = phi i64 [ %.0236.i.ph, %PyUnicode_READ.exit204.i.preheader ], [ %i.wb, %PyUnicode_READ.exit204.i.prol ]
  %i.wc = sub i64 %.0236.i.ph, %.8208223.i
  %i.wd = add i64 %i.wc, %3
  %i.we = icmp ugt i64 %i.wd, -4
  br i1 %i.we, label %._crit_edge.i, label %PyUnicode_READ.exit204.i

PyUnicode_READ.exit204.us.i:                      ; preds = %PyUnicode_READ.exit204.us.i.prol.loopexit, %PyUnicode_READ.exit204.us.i
  %.0236.us.i = phi i64 [ %i.wq, %PyUnicode_READ.exit204.us.i ], [ %.0236.us.i.unr, %PyUnicode_READ.exit204.us.i.prol.loopexit ] ; 6 uses
  %gep269.i = getelementptr i8, ptr %invariant.gep268.i, i64 %.0236.us.i
  %i.wf = load i8, ptr %gep269.i, align 1, !tbaa !28
  %i.wg = getelementptr i8, ptr %i.tv, i64 %.0236.us.i
  store i8 %i.wf, ptr %i.wg, align 1, !tbaa !28
  %i.wh = add nuw nsw i64 %.0236.us.i, 1          ; 2 uses
  %gep269.i.1 = getelementptr i8, ptr %invariant.gep268.i, i64 %i.wh
  %i.wi = load i8, ptr %gep269.i.1, align 1, !tbaa !28
  %i.wj = getelementptr i8, ptr %i.tv, i64 %i.wh
  store i8 %i.wi, ptr %i.wj, align 1, !tbaa !28
  %i.wk = add nuw nsw i64 %.0236.us.i, 2          ; 2 uses
  %gep269.i.2 = getelementptr i8, ptr %invariant.gep268.i, i64 %i.wk
  %i.wl = load i8, ptr %gep269.i.2, align 1, !tbaa !28
  %i.wm = getelementptr i8, ptr %i.tv, i64 %i.wk
  store i8 %i.wl, ptr %i.wm, align 1, !tbaa !28
  %i.wn = add nuw nsw i64 %.0236.us.i, 3          ; 2 uses
  %gep269.i.3 = getelementptr i8, ptr %invariant.gep268.i, i64 %i.wn
  %i.wo = load i8, ptr %gep269.i.3, align 1, !tbaa !28
  %i.wp = getelementptr i8, ptr %i.tv, i64 %i.wn
  store i8 %i.wo, ptr %i.wp, align 1, !tbaa !28
  %i.wq = add nuw nsw i64 %.0236.us.i, 4          ; 2 uses
  %exitcond245.not.i.3 = icmp eq i64 %i.wq, %i.ts
  br i1 %exitcond245.not.i.3, label %._crit_edge.i, label %PyUnicode_READ.exit204.us.i, !llvm.loop !109

PyUnicode_READ.exit204.us240.i:                   ; preds = %PyUnicode_READ.exit204.us240.i.prol.loopexit, %PyUnicode_READ.exit204.us240.i
  %.0236.us239.i = phi i64 [ %i.xg, %PyUnicode_READ.exit204.us240.i ], [ %.0236.us239.i.unr, %PyUnicode_READ.exit204.us240.i.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %.0236.us239.i
  %i.wr = load i16, ptr %gep.i, align 2, !tbaa !32
  %i.ws = trunc i16 %i.wr to i8
  %i.wt = getelementptr i8, ptr %i.tv, i64 %.0236.us239.i
  store i8 %i.ws, ptr %i.wt, align 1, !tbaa !28
  %i.wu = add nuw nsw i64 %.0236.us239.i, 1       ; 2 uses
  %gep.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.wu
  %i.wv = load i16, ptr %gep.i.1, align 2, !tbaa !32
  %i.ww = trunc i16 %i.wv to i8
  %i.wx = getelementptr i8, ptr %i.tv, i64 %i.wu
  store i8 %i.ww, ptr %i.wx, align 1, !tbaa !28
  %i.wy = add nuw nsw i64 %.0236.us239.i, 2       ; 2 uses
  %gep.i.2 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.wy
  %i.wz = load i16, ptr %gep.i.2, align 2, !tbaa !32
  %i.xa = trunc i16 %i.wz to i8
  %i.xb = getelementptr i8, ptr %i.tv, i64 %i.wy
  store i8 %i.xa, ptr %i.xb, align 1, !tbaa !28
  %i.xc = add nuw nsw i64 %.0236.us239.i, 3       ; 2 uses
  %gep.i.3 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.xc
  %i.xd = load i16, ptr %gep.i.3, align 2, !tbaa !32
  %i.xe = trunc i16 %i.xd to i8
  %i.xf = getelementptr i8, ptr %i.tv, i64 %i.xc
  store i8 %i.xe, ptr %i.xf, align 1, !tbaa !28
  %i.xg = add nuw nsw i64 %.0236.us239.i, 4       ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.xg, %i.ts
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %PyUnicode_READ.exit204.us240.i, !llvm.loop !110

PyUnicode_READ.exit204.i:                         ; preds = %PyUnicode_READ.exit204.i.prol.loopexit, %PyUnicode_READ.exit204.i
  %.0236.i = phi i64 [ %i.xw, %PyUnicode_READ.exit204.i ], [ %.0236.i.unr, %PyUnicode_READ.exit204.i.prol.loopexit ] ; 6 uses
  %gep271.i = getelementptr [4 x i8], ptr %invariant.gep270.i, i64 %.0236.i
  %i.xh = load i32, ptr %gep271.i, align 4, !tbaa !10
  %i.xi = trunc i32 %i.xh to i8
  %i.xj = getelementptr i8, ptr %i.tv, i64 %.0236.i
  store i8 %i.xi, ptr %i.xj, align 1, !tbaa !28
  %i.xk = add nuw nsw i64 %.0236.i, 1             ; 2 uses
  %gep271.i.1 = getelementptr [4 x i8], ptr %invariant.gep270.i, i64 %i.xk
  %i.xl = load i32, ptr %gep271.i.1, align 4, !tbaa !10
  %i.xm = trunc i32 %i.xl to i8
  %i.xn = getelementptr i8, ptr %i.tv, i64 %i.xk
  store i8 %i.xm, ptr %i.xn, align 1, !tbaa !28
  %i.xo = add nuw nsw i64 %.0236.i, 2             ; 2 uses
  %gep271.i.2 = getelementptr [4 x i8], ptr %invariant.gep270.i, i64 %i.xo
  %i.xp = load i32, ptr %gep271.i.2, align 4, !tbaa !10
  %i.xq = trunc i32 %i.xp to i8
  %i.xr = getelementptr i8, ptr %i.tv, i64 %i.xo
  store i8 %i.xq, ptr %i.xr, align 1, !tbaa !28
  %i.xs = add nuw nsw i64 %.0236.i, 3             ; 2 uses
  %gep271.i.3 = getelementptr [4 x i8], ptr %invariant.gep270.i, i64 %i.xs
  %i.xt = load i32, ptr %gep271.i.3, align 4, !tbaa !10
  %i.xu = trunc i32 %i.xt to i8
  %i.xv = getelementptr i8, ptr %i.tv, i64 %i.xs
  store i8 %i.xu, ptr %i.xv, align 1, !tbaa !28
  %i.xw = add nuw nsw i64 %.0236.i, 4             ; 2 uses
  %exitcond246.not.i.3 = icmp eq i64 %i.xw, %i.ts
  br i1 %exitcond246.not.i.3, label %._crit_edge.i, label %PyUnicode_READ.exit204.i, !llvm.loop !111

._crit_edge.i:                                    ; preds = %PyUnicode_READ.exit204.us240.i.prol.loopexit, %PyUnicode_READ.exit204.us240.i, %PyUnicode_READ.exit204.us.i.prol.loopexit, %PyUnicode_READ.exit204.us.i, %PyUnicode_READ.exit204.i.prol.loopexit, %PyUnicode_READ.exit204.i, %middle.block, %vec.epilog.middle.block, %middle.block286, %vec.epilog.middle.block299, %middle.block319, %bb.hw
  br i1 %.not153212221.i, label %bb.hy, label %bb.hx

bb.hx:                                            ; preds = %._crit_edge.i
  %i.xx = tail call ptr @PyFloat_FromString(ptr noundef nonnull %i.tt) #6
  br label %.thread224.i

bb.hy:                                            ; preds = %._crit_edge.i
  %i.xy = tail call ptr @PyLong_FromString(ptr noundef %i.tv, ptr noundef null, i32 noundef 10) #6
  br label %.thread224.i

.thread224.i:                                     ; preds = %bb.hy, %bb.hx, %bb.hv
  %.8208222.i = phi i64 [ %.8208.i, %bb.hv ], [ %.8208223.i, %bb.hx ], [ %.8208223.i, %bb.hy ]
  %.2.i = phi ptr [ %i.tr, %bb.hv ], [ %i.xx, %bb.hx ], [ %i.xy, %bb.hy ]
  %.0132.i = phi ptr [ %i.tp, %bb.hv ], [ %i.tt, %bb.hx ], [ %i.tt, %bb.hy ] ; 3 uses
  %i.xz = load i32, ptr %.0132.i, align 8, !tbaa !28 ; 2 uses
  %.not.i.i211 = icmp sgt i32 %i.xz, -1
  br i1 %.not.i.i211, label %bb.hz, label %Py_DECREF.exit.i

bb.hz:                                            ; preds = %.thread224.i
  %i.ya = add nsw i32 %i.xz, -1                   ; 2 uses
  store i32 %i.ya, ptr %.0132.i, align 8, !tbaa !28
  %i.yb = icmp eq i32 %i.ya, 0
  br i1 %i.yb, label %bb.ia, label %Py_DECREF.exit.i

bb.ia:                                            ; preds = %bb.hz
  tail call void @_Py_Dealloc(ptr noundef nonnull %.0132.i) #6
  br label %Py_DECREF.exit.i

Py_DECREF.exit.i:                                 ; preds = %bb.ia, %bb.hz, %.thread224.i
  store i64 %.8208222.i, ptr %4, align 8, !tbaa !30
  br label %raise_stop_iteration.exit

raise_stop_iteration.exit:                        ; preds = %Py_DECREF.exit.i, %.thread216.i, %bb.hu, %bb.fo, %bb.fn, %bb.fm, %bb.fl, %bb.eq, %bb.ep, %bb.eo, %bb.en, %bb.i, %bb.h, %bb.g, %bb.f, %_Py_EnterRecursiveCall.exit153, %_Py_EnterRecursiveCall.exit, %bb.ef, %bb.cx, %bb.bt, %bb.bj, %bb.ar, %bb.ad, %_Py_EnterRecursiveCall.exit153.thread, %_Py_EnterRecursiveCall.exit.thread, %bb.n, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ null, %_Py_EnterRecursiveCall.exit153 ], [ null, %bb.i ], [ %i.aa, %bb.n ], [ %i.lq, %bb.ef ], [ %i.ak, %_Py_EnterRecursiveCall.exit.thread ], [ null, %_Py_EnterRecursiveCall.exit ], [ %i.au, %_Py_EnterRecursiveCall.exit153.thread ], [ @_Py_NoneStruct, %bb.ad ], [ @_Py_TrueStruct, %bb.ar ], [ @_Py_FalseStruct, %bb.bj ], [ %i.fs, %bb.bt ], [ %i.im, %bb.cx ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ], [ null, %bb.hu ], [ null, %bb.eq ], [ %.2.i, %Py_DECREF.exit.i ], [ null, %bb.fo ], [ null, %bb.en ], [ null, %bb.eo ], [ null, %bb.ep ], [ null, %bb.fl ], [ null, %bb.fm ], [ null, %bb.fn ], [ null, %.thread216.i ]
  ret ptr %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @_Py_EnterRecursiveCall(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @_PyThreadState_GetCurrent() #6 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 952
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !63 ; 2 uses
  %i.c = tail call ptr @llvm.frameaddress.p0(i32 0)
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = icmp ule i64 %.val.i, %i.d
  %i.f = add i64 %.val.i, -32768
  %i.g = icmp ugt i64 %i.f, %i.d
  %narrow.i.not.i = or i1 %i.e, %i.g
  br i1 %narrow.i.not.i, label %_Py_EnterRecursiveCallTstate.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @_Py_CheckRecursiveCall(ptr noundef nonnull %i.a, ptr noundef %0) #6
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  br label %_Py_EnterRecursiveCallTstate.exit

_Py_EnterRecursiveCallTstate.exit:                ; preds = %bb.a, %bb.b
  %i.k = phi i32 [ 0, %bb.a ], [ %i.j, %bb.b ]
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_parse_object_unicode(ptr nofree noundef readonly captures(none) %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef range(i64 1, -9223372036854775807) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38
  %.not = icmp eq ptr %i.d, @_Py_NoneStruct       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.e = getelementptr i8, ptr %2, i64 32
  %.val.i = load i32, ptr %i.e, align 8           ; 3 uses
  %i.f = and i32 %.val.i, 32
  %.not.i267 = icmp eq i32 %i.f, 0
  br i1 %.not.i267, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.g, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %2, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %2, i64 56
  %.val4.i = load ptr, ptr %i.h, align 8, !tbaa !28
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %.0.i.i, %bb.b ], [ %.val4.i, %bb.c ] ; 78 uses
  %i.i = lshr i32 %.val.i, 2
  %i.j = and i32 %i.i, 7                          ; 26 uses
end_hunk_0
