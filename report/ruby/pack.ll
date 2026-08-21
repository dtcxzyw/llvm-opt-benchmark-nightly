inline.NumInlined: 148
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@pack_pack:bb.a
  %i.se = getelementptr i8, ptr %i.sc, i64 1
  store i8 10, ptr %i.se, align 1, !tbaa !15
  br label %bb.ed

bb.ed:                                            ; preds = %.thread514, %bb.ec, %bb.eb
  %.3.i = phi i64 [ %i.sd, %bb.ec ], [ %.249.i, %bb.eb ], [ %i.rv, %.thread514 ] ; 3 uses
  %.246.i = phi i64 [ 0, %bb.ec ], [ %.145.i, %bb.eb ], [ 0, %.thread514 ] ; 2 uses
  %.2.i = phi i64 [ 10, %bb.ec ], [ %.1.i, %bb.eb ], [ 10, %.thread514 ]
  %i.sf = icmp sgt i64 %.3.i, 1019
  br i1 %i.sf, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.sg = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef nonnull %i.a, i64 noundef %.3.i) #12 ; 0 uses
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.4.i = phi i64 [ 0, %bb.ee ], [ %.3.i, %bb.ed ] ; 4 uses
  %i.sh = getelementptr i8, ptr %.059.i, i64 1    ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.sh, %i.qy
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !40

._crit_edge.i:                                    ; preds = %bb.ef
  %i.si = icmp sgt i64 %.246.i, 0
  br i1 %i.si, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %._crit_edge.i
  %i.sj = getelementptr i8, ptr %i.a, i64 %.4.i   ; 2 uses
  store i8 61, ptr %i.sj, align 1, !tbaa !15
  %i.sk = add nsw i64 %.4.i, 2
  %i.sl = getelementptr i8, ptr %i.sj, i64 1
  store i8 10, ptr %i.sl, align 1, !tbaa !15
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %._crit_edge.i
  %.5.i = phi i64 [ %i.sk, %bb.eg ], [ %.4.i, %._crit_edge.i ] ; 2 uses
  %i.sm = icmp sgt i64 %.5.i, 0
  br i1 %i.sm, label %bb.ei, label %qpencode.exit

bb.ei:                                            ; preds = %bb.eh
  %i.sn = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef nonnull %i.a, i64 noundef %.5.i) #12 ; 0 uses
  br label %qpencode.exit

qpencode.exit:                                    ; preds = %RSTRING_PTR.exit.i, %bb.eh, %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

bb.ej:                                            ; preds = %rb_array_len.exit463.thread, %rb_array_len.exit463
  %i.so = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.so, ptr noundef nonnull @toofew) #13
  unreachable

bb.ek:                                            ; preds = %bb.aa
  %i.sp = load i64, ptr %i.at, align 8, !tbaa !13 ; 2 uses
  %i.sq = and i64 %i.sp, 8192
  %.not.i468 = icmp eq i64 %i.sq, 0
  br i1 %.not.i468, label %rb_array_len.exit470, label %rb_array_len.exit470.thread

rb_array_len.exit470:                             ; preds = %bb.ek
  %i.sr = load i64, ptr %i.au, align 8, !tbaa !15
  %i.ss = icmp slt i64 %.0318711, %i.sr
  br i1 %i.ss, label %bb.el, label %bb.em

rb_array_len.exit470.thread:                      ; preds = %bb.ek
  %i.st = lshr i64 %i.sp, 15
  %i.su = and i64 %i.st, 127
  %i.sv = icmp slt i64 %.0318711, %i.su
  br i1 %i.sv, label %RARRAY_AREF.exit473, label %bb.em

bb.el:                                            ; preds = %rb_array_len.exit470
  %i.sw = load ptr, ptr %i.av, align 8, !tbaa !15
  br label %RARRAY_AREF.exit473

RARRAY_AREF.exit473:                              ; preds = %rb_array_len.exit470.thread, %bb.el
  %.0.i.i472 = phi ptr [ %i.sw, %bb.el ], [ %i.au, %rb_array_len.exit470.thread ]
  %i.sx = getelementptr [8 x i8], ptr %.0.i.i472, i64 %.0318711
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !11 ; 2 uses
  store i64 %i.sy, ptr %i.d, align 8, !tbaa !11
  %i.sz = icmp eq i64 %i.sy, 4
  br i1 %i.sz, label %.lr.ph650.preheader, label %bb.en

bb.em:                                            ; preds = %rb_array_len.exit470.thread, %rb_array_len.exit470
  %i.ta = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ta, ptr noundef nonnull @toofew) #13
  unreachable

bb.en:                                            ; preds = %RARRAY_AREF.exit473
  %i.tb = call i64 @rb_string_value(ptr noundef nonnull %i.d) #12 ; 0 uses
  %i.tc = load i64, ptr %i.d, align 8, !tbaa !11
  %i.td = inttoptr i64 %i.tc to ptr
  %i.te = getelementptr i8, ptr %i.td, i64 16
  %i.tf = load i64, ptr %i.te, align 8, !tbaa !19 ; 2 uses
  %i.tg = icmp slt i64 %i.tf, %.0324.fr
  br i1 %i.tg, label %bb.eo, label %.lr.ph650.preheader

bb.eo:                                            ; preds = %bb.en
  %i.th = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.th, ptr noundef nonnull @.str.14, i64 noundef %i.tf, i64 noundef %.0324.fr) #13
  unreachable

bb.ep:                                            ; preds = %bb.aa
  %i.ti = icmp sgt i64 %.0324.fr, 0
  br i1 %i.ti, label %.lr.ph650.preheader, label %.loopexit

.lr.ph650.preheader:                              ; preds = %RARRAY_AREF.exit473, %bb.en, %bb.ep
  %.17853 = phi i64 [ %.0324.fr, %bb.ep ], [ 1, %bb.en ], [ 1, %RARRAY_AREF.exit473 ]
  %i.tj = add i64 %.17853, %.0318711              ; 2 uses
  br label %.lr.ph650

.lr.ph650:                                        ; preds = %.lr.ph650.preheader, %bb.ev
  %.10648 = phi i64 [ %i.ts, %bb.ev ], [ %.0318711, %.lr.ph650.preheader ] ; 4 uses
  %.1339647 = phi i64 [ %.2340, %bb.ev ], [ %.0338710, %.lr.ph650.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #12
  %i.tk = load i64, ptr %i.at, align 8, !tbaa !13 ; 2 uses
  %i.tl = and i64 %i.tk, 8192
  %.not.i474 = icmp eq i64 %i.tl, 0
  br i1 %.not.i474, label %rb_array_len.exit476, label %rb_array_len.exit476.thread

rb_array_len.exit476:                             ; preds = %.lr.ph650
  %i.tm = load i64, ptr %i.au, align 8, !tbaa !15
  %i.tn = icmp slt i64 %.10648, %i.tm
  br i1 %i.tn, label %bb.eq, label %bb.er

rb_array_len.exit476.thread:                      ; preds = %.lr.ph650
  %i.to = lshr i64 %i.tk, 15
  %i.tp = and i64 %i.to, 127
  %i.tq = icmp slt i64 %.10648, %i.tp
  br i1 %i.tq, label %RARRAY_AREF.exit479, label %bb.er

bb.eq:                                            ; preds = %rb_array_len.exit476
  %i.tr = load ptr, ptr %i.av, align 8, !tbaa !15
  br label %RARRAY_AREF.exit479

RARRAY_AREF.exit479:                              ; preds = %rb_array_len.exit476.thread, %bb.eq
  %.0.i.i478 = phi ptr [ %i.tr, %bb.eq ], [ %i.au, %rb_array_len.exit476.thread ]
  %i.ts = add nsw i64 %.10648, 1                  ; 2 uses
  %i.tt = getelementptr [8 x i8], ptr %.0.i.i478, i64 %.10648
  %i.tu = load i64, ptr %i.tt, align 8, !tbaa !11 ; 2 uses
  store i64 %i.tu, ptr %i.d, align 8, !tbaa !11
  %i.tv = icmp eq i64 %i.tu, 4
  br i1 %i.tv, label %bb.et, label %bb.es

bb.er:                                            ; preds = %rb_array_len.exit476.thread, %rb_array_len.exit476
  %i.tw = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.tw, ptr noundef nonnull @toofew) #13
  unreachable

bb.es:                                            ; preds = %RARRAY_AREF.exit479
  %i.tx = call ptr @rb_string_value_ptr(ptr noundef nonnull %i.d) #12
  br label %bb.et

bb.et:                                            ; preds = %RARRAY_AREF.exit479, %bb.es
  %storemerge = phi ptr [ %i.tx, %bb.es ], [ null, %RARRAY_AREF.exit479 ]
  store ptr %storemerge, ptr %i.s, align 8, !tbaa !16
  %.not365 = icmp eq i64 %.1339647, 0
  br i1 %.not365, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et
  %i.ty = call i64 @rb_ary_new() #12
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.et
  %.2340 = phi i64 [ %.1339647, %bb.et ], [ %i.ty, %bb.eu ] ; 3 uses
  %i.tz = load i64, ptr %i.d, align 8, !tbaa !11
  %i.ua = call i64 @rb_ary_push(i64 noundef %.2340, i64 noundef %i.tz) #12 ; 0 uses
  %i.ub = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef nonnull %i.s, i64 noundef 8) #12 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #12
  %exitcond791.not = icmp eq i64 %i.ts, %i.tj
  br i1 %exitcond791.not, label %.loopexit, label %.lr.ph650, !llvm.loop !41

.lr.ph646:                                        ; preds = %.lr.ph646.preheader, %RSTRING_PTR.exit491
  %.11645 = phi i64 [ %i.ul, %RSTRING_PTR.exit491 ], [ %.0318711, %.lr.ph646.preheader ] ; 4 uses
  %i.uc = call i64 @rb_str_new_static(ptr noundef null, i64 noundef 0) #12 ; 0 uses
  %i.ud = load i64, ptr %i.at, align 8, !tbaa !13 ; 2 uses
  %i.ue = and i64 %i.ud, 8192
  %.not.i480 = icmp eq i64 %i.ue, 0
  br i1 %.not.i480, label %rb_array_len.exit482, label %rb_array_len.exit482.thread

rb_array_len.exit482:                             ; preds = %.lr.ph646
  %i.uf = load i64, ptr %i.au, align 8, !tbaa !15
  %i.ug = icmp slt i64 %.11645, %i.uf
  br i1 %i.ug, label %bb.ew, label %bb.ey

rb_array_len.exit482.thread:                      ; preds = %.lr.ph646
  %i.uh = lshr i64 %i.ud, 15
  %i.ui = and i64 %i.uh, 127
  %i.uj = icmp slt i64 %.11645, %i.ui
  br i1 %i.uj, label %RARRAY_AREF.exit485, label %bb.ey

bb.ew:                                            ; preds = %rb_array_len.exit482
  %i.uk = load ptr, ptr %i.av, align 8, !tbaa !15
  br label %RARRAY_AREF.exit485

RARRAY_AREF.exit485:                              ; preds = %rb_array_len.exit482.thread, %bb.ew
  %.0.i.i484 = phi ptr [ %i.uk, %bb.ew ], [ %i.au, %rb_array_len.exit482.thread ]
  %i.ul = add nsw i64 %.11645, 1                  ; 2 uses
  %i.um = getelementptr [8 x i8], ptr %.0.i.i484, i64 %.11645
  %i.un = load i64, ptr %i.um, align 8, !tbaa !11 ; 2 uses
  store i64 %i.un, ptr %i.d, align 8, !tbaa !11
  %i.uo = call i64 @rb_to_int(i64 noundef %i.un) #12 ; 2 uses
  store i64 %i.uo, ptr %i.d, align 8, !tbaa !11
  %i.up = call i64 @rb_absint_numwords(i64 noundef %i.uo, i64 noundef 7, ptr noundef null) #12 ; 5 uses
  %spec.store.select13 = call i64 @llvm.umax.i64(i64 %i.up, i64 1) ; 4 uses
  %i.uq = call i64 @rb_str_new(ptr noundef null, i64 noundef %spec.store.select13) #12, !callees !42
  %i.ur = load i64, ptr %i.d, align 8, !tbaa !11
  %i.us = inttoptr i64 %i.uq to ptr               ; 5 uses
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !13
  %i.uu = and i64 %i.ut, 8192
  %.not.i486 = icmp eq i64 %i.uu, 0
  %i.uv = getelementptr i8, ptr %i.us, i64 24     ; 6 uses
  br i1 %.not.i486, label %RSTRING_PTR.exit487, label %bb.ex

bb.ex:                                            ; preds = %RARRAY_AREF.exit485
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !15
  br label %RSTRING_PTR.exit487

RSTRING_PTR.exit487:                              ; preds = %RARRAY_AREF.exit485, %bb.ex
  %i.ux = phi ptr [ %i.uw, %bb.ex ], [ %i.uv, %RARRAY_AREF.exit485 ]
  %i.uy = getelementptr i8, ptr %i.us, i64 16     ; 2 uses
  %i.uz = load i64, ptr %i.uy, align 8, !tbaa !19
  %i.va = call i32 @rb_integer_pack(i64 noundef %i.ur, ptr noundef %i.ux, i64 noundef %i.uz, i64 noundef 1, i64 noundef 1, i32 noundef 17) #12 ; 2 uses
  %i.vb = icmp slt i32 %i.va, 0
  br i1 %i.vb, label %bb.ez, label %bb.fa

bb.ey:                                            ; preds = %rb_array_len.exit482.thread, %rb_array_len.exit482
  %i.vc = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.vc, ptr noundef nonnull @toofew) #13
  unreachable

bb.ez:                                            ; preds = %RSTRING_PTR.exit487
  %i.vd = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.vd, ptr noundef nonnull @.str.15) #13
  unreachable

bb.fa:                                            ; preds = %RSTRING_PTR.exit487
  %i.ve = icmp eq i32 %i.va, 2
  br i1 %i.ve, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.16) #15
  unreachable

bb.fc:                                            ; preds = %bb.fa
  %i.vf = load i64, ptr %i.us, align 8, !tbaa !13
  %i.vg = and i64 %i.vf, 8192                     ; 2 uses
  %.not.i488 = icmp eq i64 %i.vg, 0
  br i1 %.not.i488, label %RSTRING_PTR.exit489, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.vh = load ptr, ptr %i.uv, align 8, !tbaa !15
  br label %RSTRING_PTR.exit489

RSTRING_PTR.exit489:                              ; preds = %bb.fc, %bb.fd
  %i.vi = phi ptr [ %i.vh, %bb.fd ], [ %i.uv, %bb.fc ] ; 5 uses
  %i.vj = icmp ugt i64 %i.up, 1
  br i1 %i.vj, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %RSTRING_PTR.exit489
  %i.vk = add i64 %i.up, -1                       ; 5 uses
  %min.iters.check = icmp ult i64 %i.up, 5
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check966 = icmp ult i64 %i.up, 33
  br i1 %min.iters.check966, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.vl = and i64 %i.vk, 28
  %n.vec = and i64 %i.vk, -32                     ; 5 uses
  %i.vm = getelementptr i8, ptr %i.vi, i64 %n.vec
  %i.vn = sub i64 %spec.store.select13, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.vi, i64 %index ; 3 uses
  %i.vo = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !15
  %wide.load967 = load <16 x i8>, ptr %i.vo, align 1, !tbaa !15
  %i.vp = or <16 x i8> %wide.load, splat (i8 -128)
  %i.vq = or <16 x i8> %wide.load967, splat (i8 -128)
  store <16 x i8> %i.vp, ptr %next.gep, align 1, !tbaa !15
  store <16 x i8> %i.vq, ptr %i.vo, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.vr = icmp eq i64 %index.next, %n.vec
  br i1 %i.vr, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.vk, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.vl, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !46

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec969 = and i64 %i.vk, -4                   ; 4 uses
  %i.vs = getelementptr i8, ptr %i.vi, i64 %n.vec969
  %i.vt = sub i64 %spec.store.select13, %n.vec969
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index970 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next973, %vec.epilog.vector.body ] ; 2 uses
  %next.gep971 = getelementptr i8, ptr %i.vi, i64 %index970 ; 2 uses
  %wide.load972 = load <4 x i8>, ptr %next.gep971, align 1, !tbaa !15
  %i.vu = or <4 x i8> %wide.load972, splat (i8 -128)
  store <4 x i8> %i.vu, ptr %next.gep971, align 1, !tbaa !15
  %index.next973 = add nuw i64 %index970, 4       ; 2 uses
  %i.vv = icmp eq i64 %index.next973, %n.vec969
  br i1 %i.vv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n974 = icmp eq i64 %i.vk, %n.vec969
  br i1 %cmp.n974, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0644.ph = phi ptr [ %i.vi, %iter.check ], [ %i.vm, %vec.epilog.iter.check ], [ %i.vs, %vec.epilog.middle.block ]
  %.0288643.ph = phi i64 [ %spec.store.select13, %iter.check ], [ %i.vn, %vec.epilog.iter.check ], [ %i.vt, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0644 = phi ptr [ %i.vy, %.lr.ph ], [ %.0644.ph, %.lr.ph.preheader ] ; 3 uses
  %.0288643 = phi i64 [ %i.vz, %.lr.ph ], [ %.0288643.ph, %.lr.ph.preheader ]
  %i.vw = load i8, ptr %.0644, align 1, !tbaa !15
  %i.vx = or i8 %i.vw, -128
  store i8 %i.vx, ptr %.0644, align 1, !tbaa !15
  %i.vy = getelementptr i8, ptr %.0644, i64 1
  %i.vz = add i64 %.0288643, -1                   ; 2 uses
  %i.wa = icmp ugt i64 %i.vz, 1
  br i1 %i.wa, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !48

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i64, ptr %i.us, align 8, !tbaa !13
  %.pre806 = and i64 %.pre, 8192
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %RSTRING_PTR.exit489
  %.pre-phi = phi i64 [ %.pre806, %._crit_edge.loopexit ], [ %i.vg, %RSTRING_PTR.exit489 ]
  %.not.i490 = icmp eq i64 %.pre-phi, 0
  br i1 %.not.i490, label %RSTRING_PTR.exit491, label %bb.fe

bb.fe:                                            ; preds = %._crit_edge
  %i.wb = load ptr, ptr %i.uv, align 8, !tbaa !15
  br label %RSTRING_PTR.exit491

RSTRING_PTR.exit491:                              ; preds = %._crit_edge, %bb.fe
  %i.wc = phi ptr [ %i.wb, %bb.fe ], [ %i.uv, %._crit_edge ]
  %i.wd = load i64, ptr %i.uy, align 8, !tbaa !19
  %i.we = call i64 @rb_str_cat(i64 noundef %.0343, ptr noundef %i.wc, i64 noundef %i.wd) #12 ; 0 uses
  %exitcond.not = icmp eq i64 %i.ul, %i.cx
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph646, !llvm.loop !49

bb.ff:                                            ; preds = %bb.aa
  %i.wf = load i64, ptr %i.b, align 8, !tbaa !11
  call fastcc void @unknown_directive(ptr noundef nonnull @.str.4, i8 noundef signext %i.bn, i64 noundef %i.wf) #16
  unreachable

.loopexit:                                        ; preds = %RSTRING_PTR.exit491, %bb.ev, %.lr.ph656, %bb.di, %RARRAY_AREF.exit443, %VALUE_to_float.exit437, %RARRAY_AREF.exit429, %RARRAY_AREF.exit423, %VALUE_to_float.exit417, %VALUE_to_float.exit, %RARRAY_AREF.exit402, %.preheader539, %bb.ep, %bb.dr, %.preheader535, %.preheader533, %.preheader531, %bb.cl, %.preheader528, %.preheader, %bb.by, %bb.bu, %str_expand_fill.exit445, %bb.cz, %bb.dn, %qpencode.exit, %str_expand_fill.exit, %bb.aj, %bb.ai, %bb.ag, %bb.db, %bb.j, %bb.l
  %.4342 = phi i64 [ %.0338710, %bb.j ], [ %.0338710, %bb.l ], [ %.0338710, %bb.ag ], [ %.0338710, %bb.aj ], [ %.0338710, %bb.ai ], [ %.0338710, %str_expand_fill.exit ], [ %.0338710, %str_expand_fill.exit445 ], [ %.0338710, %bb.dr ], [ %.0338710, %VALUE_to_float.exit ], [ %.0338710, %bb.bu ], [ %.0338710, %bb.by ], [ %.0338710, %.preheader ], [ %.0338710, %.preheader528 ], [ %.0338710, %bb.cl ], [ %.0338710, %bb.cz ], [ %.0338710, %bb.db ], [ %.0338710, %.preheader531 ], [ %.0338710, %bb.dn ], [ %.0338710, %.preheader533 ], [ %.0338710, %qpencode.exit ], [ %.0338710, %.preheader535 ], [ %.0338710, %.preheader539 ], [ %.0338710, %RARRAY_AREF.exit423 ], [ %.0338710, %RARRAY_AREF.exit429 ], [ %.0338710, %VALUE_to_float.exit437 ], [ %.0338710, %RARRAY_AREF.exit443 ], [ %.0338710, %bb.di ], [ %.0338710, %.lr.ph656 ], [ %.2340, %bb.ev ], [ %.0338710, %RARRAY_AREF.exit402 ], [ %.0338710, %bb.ep ], [ %.0338710, %VALUE_to_float.exit417 ], [ %.0338710, %RSTRING_PTR.exit491 ] ; 3 uses
  %.13 = phi i64 [ %.0318711, %bb.j ], [ %.0318711, %bb.l ], [ %i.dq, %bb.ag ], [ %i.dq, %bb.aj ], [ %i.dq, %bb.ai ], [ %i.dq, %str_expand_fill.exit ], [ %.8, %str_expand_fill.exit445 ], [ %i.pd, %bb.dr ], [ %i.jf, %VALUE_to_float.exit ], [ %.0318711, %bb.bu ], [ %.0318711, %bb.by ], [ %.0318711, %.preheader ], [ %.0318711, %.preheader528 ], [ %.0318711, %bb.cl ], [ %.0318711, %bb.cz ], [ %.0318711, %bb.db ], [ %.0318711, %.preheader531 ], [ %i.pd, %bb.dn ], [ %.0318711, %.preheader533 ], [ %i.ql, %qpencode.exit ], [ %.0318711, %.preheader535 ], [ %.0318711, %.preheader539 ], [ %i.df, %RARRAY_AREF.exit423 ], [ %i.li, %RARRAY_AREF.exit429 ], [ %i.dd, %VALUE_to_float.exit437 ], [ %i.db, %RARRAY_AREF.exit443 ], [ %i.cz, %bb.di ], [ %i.pd, %.lr.ph656 ], [ %i.tj, %bb.ev ], [ %i.ip, %RARRAY_AREF.exit402 ], [ %.0318711, %bb.ep ], [ %i.dh, %VALUE_to_float.exit417 ], [ %i.cx, %RSTRING_PTR.exit491 ]
  %.2312 = phi i32 [ %.0310712, %bb.j ], [ %.0310712, %bb.l ], [ %.1311, %bb.ag ], [ %.1311, %bb.aj ], [ %.1311, %bb.ai ], [ %.1311, %str_expand_fill.exit ], [ %.1311, %str_expand_fill.exit445 ], [ %.1311, %bb.dr ], [ %.1311, %VALUE_to_float.exit ], [ %.1311, %bb.bu ], [ %.1311, %bb.by ], [ %.1311, %.preheader ], [ %.1311, %.preheader528 ], [ %.1311, %bb.cl ], [ %.1311, %bb.cz ], [ %.1311, %bb.db ], [ %.1311, %.preheader531 ], [ %.1311, %bb.dn ], [ %.1311, %.preheader533 ], [ %.1311, %qpencode.exit ], [ %.1311, %.preheader535 ], [ %.1311, %.preheader539 ], [ %.1311, %RARRAY_AREF.exit423 ], [ %.1311, %RARRAY_AREF.exit429 ], [ %.1311, %VALUE_to_float.exit437 ], [ %.1311, %RARRAY_AREF.exit443 ], [ %.1311, %bb.di ], [ %.1311, %.lr.ph656 ], [ %.1311, %bb.ev ], [ %.1311, %RARRAY_AREF.exit402 ], [ %.1311, %bb.ep ], [ %.1311, %VALUE_to_float.exit417 ], [ %.1311, %RSTRING_PTR.exit491 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  %i.wg = load ptr, ptr %i.c, align 8, !tbaa !16  ; 2 uses
  %i.wh = icmp ult ptr %i.wg, %i.ae
  br i1 %i.wh, label %bb.g, label %._crit_edge715

._crit_edge715:                                   ; preds = %.loopexit
  %.not = icmp eq i64 %.4342, 0
  br i1 %.not, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %._crit_edge715
  %i.wi = load i64, ptr @id_associated, align 8, !tbaa !11
  %i.wj = call i64 @rb_ivar_set(i64 noundef %.0343, i64 noundef %i.wi, i64 noundef range(i64 1, 0) %.4342) #12 ; 0 uses
  br label %bb.fh

bb.fh:                                            ; preds = %bb.fg, %._crit_edge715
  switch i32 %.2312, label %bb.fj [
    i32 1, label %.thread858
    i32 2, label %bb.fi
  ]

.thread858:                                       ; preds = %bb.f, %bb.fh
  %i.wk = tail call i32 @rb_usascii_encindex() #17
  call void @rb_enc_set_index(i64 noundef %.0343, i32 noundef %i.wk) #12
  %i.wl = inttoptr i64 %.0343 to ptr              ; 2 uses
  %i.wm = load i64, ptr %i.wl, align 8, !tbaa !13
  %i.wn = and i64 %i.wm, -3145729
  %i.wo = or disjoint i64 %i.wn, 1048576
  store i64 %i.wo, ptr %i.wl, align 8, !tbaa !13
  br label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.wp = tail call i32 @rb_utf8_encindex() #17
  call void @rb_enc_set_index(i64 noundef %.0343, i32 noundef %i.wp) #12
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fh, %bb.fi, %.thread858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret i64 %.0343
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 1, 7) i32 @rb_uv_to_utf8(ptr nofree noundef nonnull writeonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i64 %1, 128
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw nsw i64 %1 to i8
  store i8 %i.b, ptr %0, align 1, !tbaa !15
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ult i64 %1, 2048
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = lshr i64 %1, 6
  %i.e = trunc nuw nsw i64 %i.d to i8
  %i.f = or disjoint i8 %i.e, -64
  store i8 %i.f, ptr %0, align 1, !tbaa !15
  %i.g = trunc i64 %1 to i8
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128
  %i.j = getelementptr i8, ptr %0, i64 1
  store i8 %i.i, ptr %i.j, align 1, !tbaa !15
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.k = icmp ult i64 %1, 65536
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = lshr i64 %1, 12
  %i.m = trunc nuw nsw i64 %i.l to i8
  %i.n = or disjoint i8 %i.m, -32
  store i8 %i.n, ptr %0, align 1, !tbaa !15
  %i.o = lshr i64 %1, 6
  %i.p = trunc i64 %i.o to i8
  %i.q = and i8 %i.p, 63
  %i.r = or disjoint i8 %i.q, -128
  %i.s = getelementptr i8, ptr %0, i64 1
  store i8 %i.r, ptr %i.s, align 1, !tbaa !15
  %i.t = trunc i64 %1 to i8
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128
  %i.w = getelementptr i8, ptr %0, i64 2
  store i8 %i.v, ptr %i.w, align 1, !tbaa !15
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.x = icmp ult i64 %1, 2097152
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = lshr i64 %1, 6
end_hunk_0
