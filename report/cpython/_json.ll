inline.NumInlined: 263
inline.NumDeleted: 48
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@scan_once_unicode:bb.a
  br label %PyUnicode_READ.exit199.i

bb.hn:                                            ; preds = %.critedge4.i
  %i.sv = getelementptr [4 x i8], ptr %.0.i.i209, i64 %i.so
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !6
  br label %PyUnicode_READ.exit199.i

PyUnicode_READ.exit199.i:                         ; preds = %bb.hn, %bb.hm, %bb.hl
  %.0.i198.i = phi i32 [ %i.sr, %bb.hl ], [ %i.su, %bb.hm ], [ %i.sw, %bb.hn ]
  %i.sx = icmp ugt i32 %.0.i198.i, 47
  br i1 %i.sx, label %bb.ho, label %bb.hs

bb.ho:                                            ; preds = %PyUnicode_READ.exit199.i
  switch i32 %i.f, label %bb.hr [
    i32 1, label %bb.hp
    i32 2, label %bb.hq
  ]

bb.hp:                                            ; preds = %bb.ho
  %i.sy = getelementptr i8, ptr %.0.i.i209, i64 %i.so
  %i.sz = load i8, ptr %i.sy, align 1, !tbaa !27
  %i.ta = zext i8 %i.sz to i32
  br label %PyUnicode_READ.exit201.i

bb.hq:                                            ; preds = %bb.ho
  %i.tb = getelementptr [2 x i8], ptr %.0.i.i209, i64 %i.so
  %i.tc = load i16, ptr %i.tb, align 2, !tbaa !32
  %i.td = zext i16 %i.tc to i32
  br label %PyUnicode_READ.exit201.i

bb.hr:                                            ; preds = %bb.ho
  %i.te = getelementptr [4 x i8], ptr %.0.i.i209, i64 %i.so
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !6
  br label %PyUnicode_READ.exit201.i

PyUnicode_READ.exit201.i:                         ; preds = %bb.hr, %bb.hq, %bb.hp
  %.0.i200.i = phi i32 [ %i.ta, %bb.hp ], [ %i.td, %bb.hq ], [ %i.tf, %bb.hr ]
  %i.tg = icmp ugt i32 %.0.i200.i, 57             ; 2 uses
  %brmerge.not.i = and i1 %.not152.i, %i.tg
  %.6.mux.i = select i1 %i.tg, i64 %.4.i, i64 %.6.lcssa.i
  br i1 %brmerge.not.i, label %.critedge158.i, label %.thread.i

bb.hs:                                            ; preds = %PyUnicode_READ.exit199.i, %PyUnicode_READ.exit189.i, %.critedge2.i
  br i1 %.not152.i, label %.critedge158.i, label %.thread.i

.thread.i:                                        ; preds = %bb.gj, %bb.hs, %PyUnicode_READ.exit201.i
  %.8209.i = phi i64 [ %.4.i, %bb.hs ], [ %.6.mux.i, %PyUnicode_READ.exit201.i ], [ %.val, %bb.gj ] ; 2 uses
  %i.th = getelementptr i8, ptr %0, i64 40
  %i.ti = load ptr, ptr %i.th, align 8, !tbaa !45 ; 2 uses
  %.not153.i = icmp eq ptr %i.ti, @PyFloat_Type
  br i1 %.not153.i, label %.thread215.i, label %bb.ht

.critedge158.i:                                   ; preds = %bb.hs, %PyUnicode_READ.exit201.i
  %i.tj = getelementptr i8, ptr %0, i64 48
  %i.tk = load ptr, ptr %i.tj, align 8, !tbaa !46 ; 2 uses
  %.not154.i = icmp eq ptr %i.tk, @PyLong_Type
  br i1 %.not154.i, label %.thread215.i, label %bb.ht

bb.ht:                                            ; preds = %.critedge158.i, %.thread.i
  %.not152211.i = phi i1 [ false, %.thread.i ], [ true, %.critedge158.i ]
  %.8207.i = phi i64 [ %.8209.i, %.thread.i ], [ %.4.i, %.critedge158.i ] ; 3 uses
  %.0137.i = phi ptr [ %i.ti, %.thread.i ], [ %i.tk, %.critedge158.i ] ; 2 uses
  %.not155.i = icmp eq ptr %.0137.i, null
  br i1 %.not155.i, label %.thread215.i, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.tl = zext nneg i32 %i.f to i64
  %i.tm = mul i64 %3, %i.tl
  %i.tn = getelementptr i8, ptr %.0.i.i209, i64 %i.tm
  %i.to = sub i64 %.8207.i, %3
  %i.tp = tail call ptr @PyUnicode_FromKindAndData(i32 noundef %i.f, ptr noundef %i.tn, i64 noundef %i.to) #6 ; 3 uses
  %i.tq = icmp eq ptr %i.tp, null
  br i1 %i.tq, label %raise_stop_iteration.exit, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.tr = tail call ptr @PyObject_CallOneArg(ptr noundef nonnull %.0137.i, ptr noundef nonnull %i.tp) #6
  br label %.thread223.i

.thread215.i:                                     ; preds = %bb.ht, %.critedge158.i, %.thread.i
  %.8207222.i = phi i64 [ %.8207.i, %bb.ht ], [ %.4.i, %.critedge158.i ], [ %.8209.i, %.thread.i ] ; 13 uses
  %.not152211220.i = phi i1 [ %.not152211.i, %bb.ht ], [ true, %.critedge158.i ], [ false, %.thread.i ]
  %i.ts = sub i64 %.8207222.i, %3                 ; 22 uses
  %i.tt = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.ts) #6 ; 8 uses
  %i.tu = ptrtoaddr ptr %i.tt to i64
  %.not156.i = icmp eq ptr %i.tt, null
  br i1 %.not156.i, label %raise_stop_iteration.exit, label %bb.hw

bb.hw:                                            ; preds = %.thread215.i
  %i.tv = getelementptr i8, ptr %i.tt, i64 32     ; 23 uses
  %i.tw = icmp sgt i64 %i.ts, 0
  br i1 %i.tw, label %.lr.ph236.i, label %._crit_edge.i

.lr.ph236.i:                                      ; preds = %bb.hw
  switch i32 %i.f, label %PyUnicode_READ.exit203.preheader.i [
    i32 1, label %iter.check291
    i32 2, label %iter.check
  ]

iter.check:                                       ; preds = %.lr.ph236.i
  %invariant.gep.i = getelementptr [2 x i8], ptr %.0.i.i209, i64 %3 ; 8 uses
  %min.iters.check = icmp ult i64 %i.ts, 4
  br i1 %min.iters.check, label %PyUnicode_READ.exit203.us239.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.tx = add i64 %.8207222.i, 32
  %i.ty = sub i64 %i.tx, %3
  %scevgep = getelementptr i8, ptr %i.tt, i64 %i.ty
  %i.tz = shl i64 %.8207222.i, 1
  %scevgep266 = getelementptr i8, ptr %.0.i.i209, i64 %i.tz
  %bound0 = icmp ult ptr %i.tv, %scevgep266
  %bound1 = icmp ult ptr %invariant.gep.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %PyUnicode_READ.exit203.us239.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check267 = icmp ult i64 %i.ts, 16
  br i1 %min.iters.check267, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ts, 12
  %n.vec = and i64 %i.ts, 9223372036854775792     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ua = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.ub = getelementptr i8, ptr %i.ua, i64 16
  %wide.load = load <8 x i16>, ptr %i.ua, align 2, !tbaa !32, !alias.scope !73
  %wide.load268 = load <8 x i16>, ptr %i.ub, align 2, !tbaa !32, !alias.scope !73
  %i.uc = trunc <8 x i16> %wide.load to <8 x i8>
  %i.ud = trunc <8 x i16> %wide.load268 to <8 x i8>
  %i.ue = getelementptr i8, ptr %i.tv, i64 %index ; 2 uses
  %i.uf = getelementptr i8, ptr %i.ue, i64 8
  store <8 x i8> %i.uc, ptr %i.ue, align 1, !tbaa !27, !alias.scope !76, !noalias !73
  store <8 x i8> %i.ud, ptr %i.uf, align 1, !tbaa !27, !alias.scope !76, !noalias !73
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ug = icmp eq i64 %index.next, %n.vec
  br i1 %i.ug, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ts, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %PyUnicode_READ.exit203.us239.i.preheader, label %vec.epilog.ph, !prof !81

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec270 = and i64 %i.ts, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index271 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next273, %vec.epilog.vector.body ] ; 3 uses
  %i.uh = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index271
  %wide.load272 = load <4 x i16>, ptr %i.uh, align 2, !tbaa !32, !alias.scope !73
  %i.ui = trunc <4 x i16> %wide.load272 to <4 x i8>
  %i.uj = getelementptr i8, ptr %i.tv, i64 %index271
  store <4 x i8> %i.ui, ptr %i.uj, align 1, !tbaa !27, !alias.scope !76, !noalias !73
  %index.next273 = add nuw i64 %index271, 4       ; 2 uses
  %i.uk = icmp eq i64 %index.next273, %n.vec270
  br i1 %i.uk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n274 = icmp eq i64 %i.ts, %n.vec270
  br i1 %cmp.n274, label %._crit_edge.i, label %PyUnicode_READ.exit203.us239.i.preheader

PyUnicode_READ.exit203.us239.i.preheader:         ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0132235.us238.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec270, %vec.epilog.middle.block ] ; 3 uses
  %i.ul = sub i64 %.8207222.i, %3
  %xtraiter = and i64 %i.ul, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %PyUnicode_READ.exit203.us239.i.prol.loopexit, label %PyUnicode_READ.exit203.us239.i.prol

PyUnicode_READ.exit203.us239.i.prol:              ; preds = %PyUnicode_READ.exit203.us239.i.preheader, %PyUnicode_READ.exit203.us239.i.prol
  %.0132235.us238.i.prol = phi i64 [ %i.up, %PyUnicode_READ.exit203.us239.i.prol ], [ %.0132235.us238.i.ph, %PyUnicode_READ.exit203.us239.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %PyUnicode_READ.exit203.us239.i.prol ], [ 0, %PyUnicode_READ.exit203.us239.i.preheader ]
  %gep.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %.0132235.us238.i.prol
  %i.um = load i16, ptr %gep.i.prol, align 2, !tbaa !32
  %i.un = trunc i16 %i.um to i8
  %i.uo = getelementptr i8, ptr %i.tv, i64 %.0132235.us238.i.prol
  store i8 %i.un, ptr %i.uo, align 1, !tbaa !27
  %i.up = add nuw nsw i64 %.0132235.us238.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %PyUnicode_READ.exit203.us239.i.prol.loopexit, label %PyUnicode_READ.exit203.us239.i.prol, !llvm.loop !83

PyUnicode_READ.exit203.us239.i.prol.loopexit:     ; preds = %PyUnicode_READ.exit203.us239.i.prol, %PyUnicode_READ.exit203.us239.i.preheader
  %.0132235.us238.i.unr = phi i64 [ %.0132235.us238.i.ph, %PyUnicode_READ.exit203.us239.i.preheader ], [ %i.up, %PyUnicode_READ.exit203.us239.i.prol ]
  %i.uq = sub i64 %.0132235.us238.i.ph, %.8207222.i
  %i.ur = add i64 %i.uq, %3
  %i.us = icmp ugt i64 %i.ur, -4
  br i1 %i.us, label %._crit_edge.i, label %PyUnicode_READ.exit203.us239.i

iter.check291:                                    ; preds = %.lr.ph236.i
  %invariant.gep268.i = getelementptr i8, ptr %.0.i.i209, i64 %3 ; 7 uses
  %min.iters.check277 = icmp ult i64 %i.ts, 4
  br i1 %min.iters.check277, label %PyUnicode_READ.exit203.us.i.preheader, label %vector.memcheck275

vector.memcheck275:                               ; preds = %iter.check291
  %i.ut = add i64 %3, %.0.i.i209276
  %i.uu = sub i64 %i.tu, %i.ut
  %diff.check = icmp ugt i64 %i.uu, -32
  br i1 %diff.check, label %PyUnicode_READ.exit203.us.i.preheader, label %vector.main.loop.iter.check278

vector.main.loop.iter.check278:                   ; preds = %vector.memcheck275
  %min.iters.check279 = icmp ult i64 %i.ts, 32
  br i1 %min.iters.check279, label %vec.epilog.ph295, label %vector.ph280

vector.ph280:                                     ; preds = %vector.main.loop.iter.check278
  %n.mod.vf281 = and i64 %i.ts, 28
  %n.vec282 = and i64 %i.ts, 9223372036854775776  ; 4 uses
  br label %vector.body283

vector.body283:                                   ; preds = %vector.body283, %vector.ph280
  %index284 = phi i64 [ 0, %vector.ph280 ], [ %index.next287, %vector.body283 ] ; 3 uses
  %i.uv = getelementptr i8, ptr %invariant.gep268.i, i64 %index284 ; 2 uses
  %i.uw = getelementptr i8, ptr %i.uv, i64 16
  %wide.load285 = load <16 x i8>, ptr %i.uv, align 1, !tbaa !27
  %wide.load286 = load <16 x i8>, ptr %i.uw, align 1, !tbaa !27
  %i.ux = getelementptr i8, ptr %i.tv, i64 %index284 ; 2 uses
  %i.uy = getelementptr i8, ptr %i.ux, i64 16
  store <16 x i8> %wide.load285, ptr %i.ux, align 1, !tbaa !27
  store <16 x i8> %wide.load286, ptr %i.uy, align 1, !tbaa !27
  %index.next287 = add nuw i64 %index284, 32      ; 2 uses
  %i.uz = icmp eq i64 %index.next287, %n.vec282
  br i1 %i.uz, label %middle.block288, label %vector.body283, !llvm.loop !85

middle.block288:                                  ; preds = %vector.body283
  %cmp.n289 = icmp eq i64 %i.ts, %n.vec282
  br i1 %cmp.n289, label %._crit_edge.i, label %vec.epilog.iter.check293

vec.epilog.iter.check293:                         ; preds = %middle.block288
  %min.epilog.iters.check294 = icmp eq i64 %n.mod.vf281, 0
  br i1 %min.epilog.iters.check294, label %PyUnicode_READ.exit203.us.i.preheader, label %vec.epilog.ph295, !prof !86

vec.epilog.ph295:                                 ; preds = %vector.main.loop.iter.check278, %vec.epilog.iter.check293
  %vec.epilog.resume.val290 = phi i64 [ %n.vec282, %vec.epilog.iter.check293 ], [ 0, %vector.main.loop.iter.check278 ]
  %n.vec297 = and i64 %i.ts, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body298

vec.epilog.vector.body298:                        ; preds = %vec.epilog.vector.body298, %vec.epilog.ph295
  %index299 = phi i64 [ %vec.epilog.resume.val290, %vec.epilog.ph295 ], [ %index.next301, %vec.epilog.vector.body298 ] ; 3 uses
  %i.va = getelementptr i8, ptr %invariant.gep268.i, i64 %index299
  %wide.load300 = load <4 x i8>, ptr %i.va, align 1, !tbaa !27
  %i.vb = getelementptr i8, ptr %i.tv, i64 %index299
  store <4 x i8> %wide.load300, ptr %i.vb, align 1, !tbaa !27
  %index.next301 = add nuw i64 %index299, 4       ; 2 uses
  %i.vc = icmp eq i64 %index.next301, %n.vec297
  br i1 %i.vc, label %vec.epilog.middle.block302, label %vec.epilog.vector.body298, !llvm.loop !87

vec.epilog.middle.block302:                       ; preds = %vec.epilog.vector.body298
  %cmp.n303 = icmp eq i64 %i.ts, %n.vec297
  br i1 %cmp.n303, label %._crit_edge.i, label %PyUnicode_READ.exit203.us.i.preheader

PyUnicode_READ.exit203.us.i.preheader:            ; preds = %vector.memcheck275, %iter.check291, %vec.epilog.iter.check293, %vec.epilog.middle.block302
  %.0132235.us.i.ph = phi i64 [ 0, %iter.check291 ], [ 0, %vector.memcheck275 ], [ %n.vec282, %vec.epilog.iter.check293 ], [ %n.vec297, %vec.epilog.middle.block302 ] ; 3 uses
  %i.vd = sub i64 %.8207222.i, %3
  %xtraiter327 = and i64 %i.vd, 3                 ; 2 uses
  %lcmp.mod328.not = icmp eq i64 %xtraiter327, 0
  br i1 %lcmp.mod328.not, label %PyUnicode_READ.exit203.us.i.prol.loopexit, label %PyUnicode_READ.exit203.us.i.prol

PyUnicode_READ.exit203.us.i.prol:                 ; preds = %PyUnicode_READ.exit203.us.i.preheader, %PyUnicode_READ.exit203.us.i.prol
  %.0132235.us.i.prol = phi i64 [ %i.vg, %PyUnicode_READ.exit203.us.i.prol ], [ %.0132235.us.i.ph, %PyUnicode_READ.exit203.us.i.preheader ] ; 3 uses
  %prol.iter329 = phi i64 [ %prol.iter329.next, %PyUnicode_READ.exit203.us.i.prol ], [ 0, %PyUnicode_READ.exit203.us.i.preheader ]
  %gep269.i.prol = getelementptr i8, ptr %invariant.gep268.i, i64 %.0132235.us.i.prol
  %i.ve = load i8, ptr %gep269.i.prol, align 1, !tbaa !27
  %i.vf = getelementptr i8, ptr %i.tv, i64 %.0132235.us.i.prol
  store i8 %i.ve, ptr %i.vf, align 1, !tbaa !27
  %i.vg = add nuw nsw i64 %.0132235.us.i.prol, 1  ; 2 uses
  %prol.iter329.next = add i64 %prol.iter329, 1   ; 2 uses
  %prol.iter329.cmp.not = icmp eq i64 %prol.iter329.next, %xtraiter327
  br i1 %prol.iter329.cmp.not, label %PyUnicode_READ.exit203.us.i.prol.loopexit, label %PyUnicode_READ.exit203.us.i.prol, !llvm.loop !88

PyUnicode_READ.exit203.us.i.prol.loopexit:        ; preds = %PyUnicode_READ.exit203.us.i.prol, %PyUnicode_READ.exit203.us.i.preheader
  %.0132235.us.i.unr = phi i64 [ %.0132235.us.i.ph, %PyUnicode_READ.exit203.us.i.preheader ], [ %i.vg, %PyUnicode_READ.exit203.us.i.prol ]
  %i.vh = sub i64 %.0132235.us.i.ph, %.8207222.i
  %i.vi = add i64 %i.vh, %3
  %i.vj = icmp ugt i64 %i.vi, -4
  br i1 %i.vj, label %._crit_edge.i, label %PyUnicode_READ.exit203.us.i

PyUnicode_READ.exit203.preheader.i:               ; preds = %.lr.ph236.i
  %invariant.gep270.i = getelementptr [4 x i8], ptr %.0.i.i209, i64 %3 ; 7 uses
  %min.iters.check311 = icmp ult i64 %i.ts, 16
  br i1 %min.iters.check311, label %PyUnicode_READ.exit203.i.preheader, label %vector.memcheck305

vector.memcheck305:                               ; preds = %PyUnicode_READ.exit203.preheader.i
  %i.vk = add i64 %.8207222.i, 32
  %i.vl = sub i64 %i.vk, %3
  %scevgep306 = getelementptr i8, ptr %i.tt, i64 %i.vl
  %i.vm = shl i64 %.8207222.i, 2
  %scevgep307 = getelementptr i8, ptr %.0.i.i209, i64 %i.vm
  %bound0308 = icmp ult ptr %i.tv, %scevgep307
  %bound1309 = icmp ult ptr %invariant.gep270.i, %scevgep306
  %found.conflict310 = and i1 %bound0308, %bound1309
  br i1 %found.conflict310, label %PyUnicode_READ.exit203.i.preheader, label %vector.ph312

vector.ph312:                                     ; preds = %vector.memcheck305
  %n.vec314 = and i64 %i.ts, 9223372036854775800  ; 3 uses
  br label %vector.body315

vector.body315:                                   ; preds = %vector.body315, %vector.ph312
  %index316 = phi i64 [ 0, %vector.ph312 ], [ %index.next319, %vector.body315 ] ; 3 uses
  %i.vn = getelementptr [4 x i8], ptr %invariant.gep270.i, i64 %index316 ; 2 uses
  %i.vo = getelementptr i8, ptr %i.vn, i64 16
  %wide.load317 = load <4 x i32>, ptr %i.vn, align 4, !tbaa !6, !alias.scope !89
  %wide.load318 = load <4 x i32>, ptr %i.vo, align 4, !tbaa !6, !alias.scope !89
  %i.vp = trunc <4 x i32> %wide.load317 to <4 x i8>
  %i.vq = trunc <4 x i32> %wide.load318 to <4 x i8>
  %i.vr = getelementptr i8, ptr %i.tv, i64 %index316 ; 2 uses
  %i.vs = getelementptr i8, ptr %i.vr, i64 4
  store <4 x i8> %i.vp, ptr %i.vr, align 1, !tbaa !27, !alias.scope !92, !noalias !89
  store <4 x i8> %i.vq, ptr %i.vs, align 1, !tbaa !27, !alias.scope !92, !noalias !89
  %index.next319 = add nuw i64 %index316, 8       ; 2 uses
  %i.vt = icmp eq i64 %index.next319, %n.vec314
  br i1 %i.vt, label %middle.block320, label %vector.body315, !llvm.loop !94

middle.block320:                                  ; preds = %vector.body315
  %cmp.n321 = icmp eq i64 %i.ts, %n.vec314
  br i1 %cmp.n321, label %._crit_edge.i, label %PyUnicode_READ.exit203.i.preheader

PyUnicode_READ.exit203.i.preheader:               ; preds = %vector.memcheck305, %PyUnicode_READ.exit203.preheader.i, %middle.block320
  %.0132235.i.ph = phi i64 [ 0, %vector.memcheck305 ], [ 0, %PyUnicode_READ.exit203.preheader.i ], [ %n.vec314, %middle.block320 ] ; 3 uses
  %i.vu = sub i64 %.8207222.i, %3
  %xtraiter330 = and i64 %i.vu, 3                 ; 2 uses
  %lcmp.mod331.not = icmp eq i64 %xtraiter330, 0
  br i1 %lcmp.mod331.not, label %PyUnicode_READ.exit203.i.prol.loopexit, label %PyUnicode_READ.exit203.i.prol

PyUnicode_READ.exit203.i.prol:                    ; preds = %PyUnicode_READ.exit203.i.preheader, %PyUnicode_READ.exit203.i.prol
  %.0132235.i.prol = phi i64 [ %i.vy, %PyUnicode_READ.exit203.i.prol ], [ %.0132235.i.ph, %PyUnicode_READ.exit203.i.preheader ] ; 3 uses
  %prol.iter332 = phi i64 [ %prol.iter332.next, %PyUnicode_READ.exit203.i.prol ], [ 0, %PyUnicode_READ.exit203.i.preheader ]
  %gep271.i.prol = getelementptr [4 x i8], ptr %invariant.gep270.i, i64 %.0132235.i.prol
  %i.vv = load i32, ptr %gep271.i.prol, align 4, !tbaa !6
  %i.vw = trunc i32 %i.vv to i8
  %i.vx = getelementptr i8, ptr %i.tv, i64 %.0132235.i.prol
  store i8 %i.vw, ptr %i.vx, align 1, !tbaa !27
  %i.vy = add nuw nsw i64 %.0132235.i.prol, 1     ; 2 uses
  %prol.iter332.next = add i64 %prol.iter332, 1   ; 2 uses
  %prol.iter332.cmp.not = icmp eq i64 %prol.iter332.next, %xtraiter330
  br i1 %prol.iter332.cmp.not, label %PyUnicode_READ.exit203.i.prol.loopexit, label %PyUnicode_READ.exit203.i.prol, !llvm.loop !95

PyUnicode_READ.exit203.i.prol.loopexit:           ; preds = %PyUnicode_READ.exit203.i.prol, %PyUnicode_READ.exit203.i.preheader
  %.0132235.i.unr = phi i64 [ %.0132235.i.ph, %PyUnicode_READ.exit203.i.preheader ], [ %i.vy, %PyUnicode_READ.exit203.i.prol ]
  %i.vz = sub i64 %.0132235.i.ph, %.8207222.i
  %i.wa = add i64 %i.vz, %3
  %i.wb = icmp ugt i64 %i.wa, -4
  br i1 %i.wb, label %._crit_edge.i, label %PyUnicode_READ.exit203.i

PyUnicode_READ.exit203.us.i:                      ; preds = %PyUnicode_READ.exit203.us.i.prol.loopexit, %PyUnicode_READ.exit203.us.i
  %.0132235.us.i = phi i64 [ %i.wn, %PyUnicode_READ.exit203.us.i ], [ %.0132235.us.i.unr, %PyUnicode_READ.exit203.us.i.prol.loopexit ] ; 6 uses
  %gep269.i = getelementptr i8, ptr %invariant.gep268.i, i64 %.0132235.us.i
  %i.wc = load i8, ptr %gep269.i, align 1, !tbaa !27
  %i.wd = getelementptr i8, ptr %i.tv, i64 %.0132235.us.i
  store i8 %i.wc, ptr %i.wd, align 1, !tbaa !27
  %i.we = add nuw nsw i64 %.0132235.us.i, 1       ; 2 uses
  %gep269.i.1 = getelementptr i8, ptr %invariant.gep268.i, i64 %i.we
  %i.wf = load i8, ptr %gep269.i.1, align 1, !tbaa !27
  %i.wg = getelementptr i8, ptr %i.tv, i64 %i.we
  store i8 %i.wf, ptr %i.wg, align 1, !tbaa !27
  %i.wh = add nuw nsw i64 %.0132235.us.i, 2       ; 2 uses
  %gep269.i.2 = getelementptr i8, ptr %invariant.gep268.i, i64 %i.wh
  %i.wi = load i8, ptr %gep269.i.2, align 1, !tbaa !27
  %i.wj = getelementptr i8, ptr %i.tv, i64 %i.wh
  store i8 %i.wi, ptr %i.wj, align 1, !tbaa !27
  %i.wk = add nuw nsw i64 %.0132235.us.i, 3       ; 2 uses
  %gep269.i.3 = getelementptr i8, ptr %invariant.gep268.i, i64 %i.wk
  %i.wl = load i8, ptr %gep269.i.3, align 1, !tbaa !27
  %i.wm = getelementptr i8, ptr %i.tv, i64 %i.wk
  store i8 %i.wl, ptr %i.wm, align 1, !tbaa !27
  %i.wn = add nuw nsw i64 %.0132235.us.i, 4       ; 2 uses
  %exitcond244.not.i.3 = icmp eq i64 %i.wn, %i.ts
  br i1 %exitcond244.not.i.3, label %._crit_edge.i, label %PyUnicode_READ.exit203.us.i, !llvm.loop !96

PyUnicode_READ.exit203.us239.i:                   ; preds = %PyUnicode_READ.exit203.us239.i.prol.loopexit, %PyUnicode_READ.exit203.us239.i
  %.0132235.us238.i = phi i64 [ %i.xd, %PyUnicode_READ.exit203.us239.i ], [ %.0132235.us238.i.unr, %PyUnicode_READ.exit203.us239.i.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %.0132235.us238.i
  %i.wo = load i16, ptr %gep.i, align 2, !tbaa !32
  %i.wp = trunc i16 %i.wo to i8
  %i.wq = getelementptr i8, ptr %i.tv, i64 %.0132235.us238.i
  store i8 %i.wp, ptr %i.wq, align 1, !tbaa !27
  %i.wr = add nuw nsw i64 %.0132235.us238.i, 1    ; 2 uses
  %gep.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.wr
  %i.ws = load i16, ptr %gep.i.1, align 2, !tbaa !32
  %i.wt = trunc i16 %i.ws to i8
  %i.wu = getelementptr i8, ptr %i.tv, i64 %i.wr
  store i8 %i.wt, ptr %i.wu, align 1, !tbaa !27
  %i.wv = add nuw nsw i64 %.0132235.us238.i, 2    ; 2 uses
  %gep.i.2 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.wv
  %i.ww = load i16, ptr %gep.i.2, align 2, !tbaa !32
  %i.wx = trunc i16 %i.ww to i8
  %i.wy = getelementptr i8, ptr %i.tv, i64 %i.wv
  store i8 %i.wx, ptr %i.wy, align 1, !tbaa !27
  %i.wz = add nuw nsw i64 %.0132235.us238.i, 3    ; 2 uses
  %gep.i.3 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.wz
  %i.xa = load i16, ptr %gep.i.3, align 2, !tbaa !32
  %i.xb = trunc i16 %i.xa to i8
  %i.xc = getelementptr i8, ptr %i.tv, i64 %i.wz
  store i8 %i.xb, ptr %i.xc, align 1, !tbaa !27
  %i.xd = add nuw nsw i64 %.0132235.us238.i, 4    ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.xd, %i.ts
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %PyUnicode_READ.exit203.us239.i, !llvm.loop !97

PyUnicode_READ.exit203.i:                         ; preds = %PyUnicode_READ.exit203.i.prol.loopexit, %PyUnicode_READ.exit203.i
end_hunk_0
