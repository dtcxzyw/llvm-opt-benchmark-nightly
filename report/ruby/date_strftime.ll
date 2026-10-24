Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/date_strftime?download=true
inline.NumInlined: 51
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@date_strftime_with_tmx:bb.a
  %i.bg = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bf) #11
  br label %bb.ft

.loopexit2370:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt32, %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt48, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555.jt0, %.preheader1555.jt0, %.preheader1555, %.preheader1555, %.preheader1555
  %i.bh = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.al, %.preheader1555.jt0 ], [ %i.al, %.preheader1555.jt0 ], [ %i.aj, %.preheader1555 ], [ %i.aj, %.preheader1555 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.an, %.preheader1555.jt32 ], [ %i.an, %.preheader1555.jt32 ], [ %i.an, %.preheader1555.jt32 ] ; 4 uses
  %.010802287 = phi i8 [ 0, %.preheader1555.jt0 ], [ 0, %.preheader1555.jt0 ], [ 0, %.preheader1555.jt0 ], [ %.01080.be, %.preheader1555 ], [ %.01080.be, %.preheader1555 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 48, %.preheader1555.jt48 ], [ 48, %.preheader1555.jt48 ], [ 32, %.preheader1555.jt32 ], [ 32, %.preheader1555.jt32 ], [ 32, %.preheader1555.jt32 ] ; 3 uses
  %.010832245 = phi i32 [ 0, %.preheader1555.jt0 ], [ 0, %.preheader1555.jt0 ], [ 0, %.preheader1555.jt0 ], [ %.01083.be, %.preheader1555 ], [ %.01083.be, %.preheader1555 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.010832279.ph, %.preheader1555.jt32 ], [ %.010832279.ph, %.preheader1555.jt32 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 3 uses
  %.010892203 = phi i32 [ -1, %.preheader1555.jt0 ], [ -1, %.preheader1555.jt0 ], [ -1, %.preheader1555.jt0 ], [ %.01089.be, %.preheader1555 ], [ %.01089.be, %.preheader1555 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %i.aq, %.preheader1555.jt48 ], [ %i.aq, %.preheader1555.jt48 ], [ %.010892238.ph, %.preheader1555.jt32 ], [ %.010892238.ph, %.preheader1555.jt32 ], [ %.010892238.ph, %.preheader1555.jt32 ] ; 3 uses
  %i.bi = and i32 %.010832245, 2
  %.not1379 = icmp eq i32 %i.bi, 0
  %i.bj = and i32 %.010832245, -15
  %i.bk = or disjoint i32 %i.bj, 8
  %.21085 = select i1 %.not1379, i32 %.010832245, i32 %i.bk ; 3 uses
  %i.bl = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !61
  %i.bo = load ptr, ptr %3, align 8, !tbaa !60
  %i.bp = call i32 %i.bn(ptr noundef %i.bo) #12   ; 2 uses
  %i.bq = add i32 %i.bp, -13
  %or.cond20 = icmp ult i32 %i.bq, -12
  br i1 %or.cond20, label %.thread1513, label %bb.i

bb.i:                                             ; preds = %.loopexit2370
  %i.br = load i8, ptr %i.bh, align 1, !tbaa !51
  %i.bs = icmp eq i8 %i.br, 66
  %i.bt = zext nneg i32 %i.bp to i64
  %i.bu = getelementptr [10 x i8], ptr @date_strftime_with_tmx.months_l, i64 %i.bt
  %i.bv = getelementptr i8, ptr %i.bu, i64 -10    ; 3 uses
  br i1 %i.bs, label %bb.j, label %.thread1513

bb.j:                                             ; preds = %bb.i
  %i.bw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bv) #11
  br label %bb.ft

.loopexit2371:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.bx = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802288 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 3 uses
  %.010832246 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 2 uses
  %.010892204 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ] ; 4 uses
  %i.by = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !62
  %i.ca = load ptr, ptr %3, align 8, !tbaa !60
  %i.cb = call i64 %i.bz(ptr noundef %i.ca) #12
  %.pr.i = load i64, ptr @date_strftime_with_tmx.rbimpl_id, align 8, !tbaa !64 ; 2 uses
  %.not1.i = icmp eq i64 %.pr.i, 0
  br i1 %.not1.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %.loopexit2371, %.lr.ph.i
  %i.cc = call i64 @rb_intern2(ptr noundef nonnull @.str.1, i64 noundef 3) #12 ; 3 uses
  store i64 %i.cc, ptr @date_strftime_with_tmx.rbimpl_id, align 8, !tbaa !64
  %.not.i = icmp eq i64 %i.cc, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !10

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %.loopexit2371
  %.lcssa.i = phi i64 [ %.pr.i, %.loopexit2371 ], [ %i.cc, %.lr.ph.i ]
  %i.cd = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.cb, i64 noundef %.lcssa.i, i32 noundef 1, i64 noundef 201) #12 ; 2 uses
  %i.ce = trunc i64 %i.cd to i1
  br i1 %i.ce, label %bb.k, label %bb.l

bb.k:                                             ; preds = %rbimpl_intern_const.exit
  %i.cf = icmp slt i32 %.010892204, 1
  %spec.select = select i1 %i.cf, i32 2, i32 %.010892204
  %i.cg = and i32 %.010832246, 1
  %.not1377 = icmp eq i32 %i.cg, 0
  %.21091 = select i1 %.not1377, i32 %spec.select, i32 1
  %i.ch = ptrtoint ptr %.010381854 to i64
  %i.ci = sub i64 %i.aa, %i.ch
  %i.cj = icmp eq i8 %.010802288, 48
  %.not1378 = icmp eq i8 %.010802288, 0
  %i.ck = or i1 %i.cj, %.not1378
  %i.cl = select i1 %i.ck, ptr @.str.2, ptr @.str.3
  %i.cm = ashr i64 %i.cd, 1
  %i.cn = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.010381854, i64 noundef %i.ci, ptr noundef nonnull %i.cl, i32 noundef %.21091, i64 noundef %i.cm) #12 ; 2 uses
  %i.co = icmp sgt i32 %i.cn, -1
  %i.cp = zext nneg i32 %i.cn to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.010381854, i64 %i.cp
  br i1 %i.co, label %.thread, label %.thread1499

bb.l:                                             ; preds = %rbimpl_intern_const.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.cr = icmp slt i32 %.010892204, 1
  %spec.select1389 = select i1 %i.cr, i32 2, i32 %.010892204
  %i.cs = and i32 %.010832246, 1
  %.not1374 = icmp eq i32 %i.cs, 0
  %.41093 = select i1 %.not1374, i32 %spec.select1389, i32 1
  %i.ct = zext nneg i32 %.41093 to i64
  %i.cu = shl nuw nsw i64 %i.ct, 1
  %i.cv = or disjoint i64 %i.cu, 1
  store i64 %i.cv, ptr %i.a, align 16, !tbaa !64
  %i.cw = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !62
  %i.cy = load ptr, ptr %3, align 8, !tbaa !60
  %i.cz = call i64 %i.cx(ptr noundef %i.cy) #12
  %.pr.i1432 = load i64, ptr @date_strftime_with_tmx.rbimpl_id.4, align 8, !tbaa !64 ; 2 uses
  %.not1.i1433 = icmp eq i64 %.pr.i1432, 0
  br i1 %.not1.i1433, label %.lr.ph.i1435, label %rbimpl_intern_const.exit1437

.lr.ph.i1435:                                     ; preds = %bb.l, %.lr.ph.i1435
  %i.da = call i64 @rb_intern2(ptr noundef nonnull @.str.1, i64 noundef 3) #12 ; 3 uses
  store i64 %i.da, ptr @date_strftime_with_tmx.rbimpl_id.4, align 8, !tbaa !64
  %.not.i1436 = icmp eq i64 %i.da, 0
  br i1 %.not.i1436, label %.lr.ph.i1435, label %rbimpl_intern_const.exit1437, !llvm.loop !10

rbimpl_intern_const.exit1437:                     ; preds = %.lr.ph.i1435, %bb.l
  %.lcssa.i1434 = phi i64 [ %.pr.i1432, %bb.l ], [ %i.da, %.lr.ph.i1435 ]
  %i.db = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.cz, i64 noundef %.lcssa.i1434, i32 noundef 1, i64 noundef 201) #12
  store i64 %i.db, ptr %i.ag, align 8, !tbaa !64
  switch i8 %.010802288, label %bb.n [
    i8 48, label %bb.m
    i8 0, label %bb.m
  ]

bb.m:                                             ; preds = %rbimpl_intern_const.exit1437, %rbimpl_intern_const.exit1437
  %i.dc = call i64 @rb_str_new_static(ptr noundef nonnull @.str.5, i64 noundef 4) #12
  br label %bb.o

bb.n:                                             ; preds = %rbimpl_intern_const.exit1437
  %i.dd = call i64 @rb_str_new_static(ptr noundef nonnull @.str.6, i64 noundef 3) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink = phi i64 [ %i.dd, %bb.n ], [ %i.dc, %bb.m ]
  %i.de = call i64 @rb_str_format(i32 noundef 2, ptr noundef nonnull %i.a, i64 noundef %.sink) #12
  store i64 %i.de, ptr %i.b, align 8, !tbaa !64
  %i.df = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.b) #12
  %i.dg = ptrtoint ptr %.010381854 to i64
  %i.dh = sub i64 %i.aa, %i.dg                    ; 2 uses
  %i.di = call i64 @strlcpy(ptr noundef %.010381854, ptr noundef nonnull dereferenceable(1) %i.df, i64 noundef %i.dh) #12 ; 2 uses
  %.not1376 = icmp ugt i64 %i.dh, %i.di
  %i.dj = getelementptr inbounds nuw i8, ptr %.010381854, i64 %i.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %.not1376, label %.thread, label %.thread1499

.loopexit2372:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.dk = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802289 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832247 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 2 uses
  %.010892205 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ]
  %i.dl = ptrtoint ptr %.010381854 to i64
  %i.dm = sub i64 %i.aa, %i.dl
  %i.dn = call fastcc i64 @date_strftime_with_tmx(ptr noundef %.010381854, i64 noundef %i.dm, ptr noundef nonnull @.str.7, ptr noundef %3) ; 16 uses
  %.not1369 = icmp eq i64 %i.dn, 0
  br i1 %.not1369, label %.loopexit1556, label %bb.p

bb.p:                                             ; preds = %.loopexit2372
  %i.do = and i32 %.010832247, 8
  %.not1370 = icmp eq i32 %i.do, 0
  br i1 %.not1370, label %upcase.exit, label %iter.check3390

iter.check3390:                                   ; preds = %bb.p
  %min.iters.check3331 = icmp ult i64 %i.dn, 4
  br i1 %min.iters.check3331, label %.preheader1544.preheader, label %vector.main.loop.iter.check3332

vector.main.loop.iter.check3332:                  ; preds = %iter.check3390
  %min.iters.check3333 = icmp ult i64 %i.dn, 16
  br i1 %min.iters.check3333, label %vec.epilog.ph3394, label %vector.ph3334

vector.ph3334:                                    ; preds = %vector.main.loop.iter.check3332
  %i.dp = and i64 %i.dn, 12
  %n.vec3335 = and i64 %i.dn, -16                 ; 4 uses
  %i.dq = getelementptr i8, ptr %.010381854, i64 %n.vec3335
  %i.dr = and i64 %i.dn, 15
  br label %vector.body3336

vector.body3336:                                  ; preds = %vector.ph3334, %pred.store.continue3386
  %index3337 = phi i64 [ 0, %vector.ph3334 ], [ %index.next3387, %pred.store.continue3386 ] ; 17 uses
  %next.gep3338 = getelementptr i8, ptr %.010381854, i64 %index3337 ; 2 uses
  %i.ds = getelementptr i8, ptr %.010381854, i64 %index3337
  %next.gep3339 = getelementptr i8, ptr %i.ds, i64 1
  %i.dt = getelementptr i8, ptr %.010381854, i64 %index3337
  %next.gep3340 = getelementptr i8, ptr %i.dt, i64 2
  %i.du = getelementptr i8, ptr %.010381854, i64 %index3337
  %next.gep3341 = getelementptr i8, ptr %i.du, i64 3
  %i.dv = getelementptr i8, ptr %.010381854, i64 %index3337
  %next.gep3342 = getelementptr i8, ptr %i.dv, i64 4
  %i.dw = getelementptr i8, ptr %.010381854, i64 %index3337
  %next.gep3343 = getelementptr i8, ptr %i.dw, i64 5
  %i.dx = getelementptr i8, ptr %.010381854, i64 %index3337
  %next.gep3344 = getelementptr i8, ptr %i.dx, i64 6
  %i.dy = getelementptr i8, ptr %.010381854, i64 %index3337
  %next.gep3345 = getelementptr i8, ptr %i.dy, i64 7
  %i.dz = getelementptr i8, ptr %.010381854, i64 %index3337
  %next.gep3346 = getelementptr i8, ptr %i.dz, i64 8
  %i.ea = getelementptr i8, ptr %.010381854, i64 %index3337
  %next.gep3347 = getelementptr i8, ptr %i.ea, i64 9
  %i.eb = getelementptr i8, ptr %.010381854, i64 %index3337
  %next.gep3348 = getelementptr i8, ptr %i.eb, i64 10
  %i.ec = getelementptr i8, ptr %.010381854, i64 %index3337
  %next.gep3349 = getelementptr i8, ptr %i.ec, i64 11
  %i.ed = getelementptr i8, ptr %.010381854, i64 %index3337
  %next.gep3350 = getelementptr i8, ptr %i.ed, i64 12
  %i.ee = getelementptr i8, ptr %.010381854, i64 %index3337
  %next.gep3351 = getelementptr i8, ptr %i.ee, i64 13
  %i.ef = getelementptr i8, ptr %.010381854, i64 %index3337
  %next.gep3352 = getelementptr i8, ptr %i.ef, i64 14
  %i.eg = getelementptr i8, ptr %.010381854, i64 %index3337
  %next.gep3353 = getelementptr i8, ptr %i.eg, i64 15
  %wide.load3354 = load <16 x i8>, ptr %next.gep3338, align 1, !tbaa !51 ; 17 uses
  %4 = sext <16 x i8> %wide.load3354 to <16 x i32>
  %5 = add nsw <16 x i32> %4, splat (i32 -97)
  %i.eh = icmp ult <16 x i32> %5, splat (i32 26)  ; 16 uses
  %i.ei = extractelement <16 x i1> %i.eh, i64 0
  br i1 %i.ei, label %pred.store.if3355, label %pred.store.continue3356

pred.store.if3355:                                ; preds = %vector.body3336
  %i.ej = extractelement <16 x i8> %wide.load3354, i64 0
  %i.ek = and i8 %i.ej, 95
  store i8 %i.ek, ptr %next.gep3338, align 1, !tbaa !51
  br label %pred.store.continue3356

pred.store.continue3356:                          ; preds = %pred.store.if3355, %vector.body3336
  %i.el = extractelement <16 x i1> %i.eh, i64 1
  br i1 %i.el, label %pred.store.if3357, label %pred.store.continue3358

pred.store.if3357:                                ; preds = %pred.store.continue3356
  %i.em = extractelement <16 x i8> %wide.load3354, i64 1
  %i.en = and i8 %i.em, 95
  store i8 %i.en, ptr %next.gep3339, align 1, !tbaa !51
  br label %pred.store.continue3358

pred.store.continue3358:                          ; preds = %pred.store.if3357, %pred.store.continue3356
  %i.eo = extractelement <16 x i1> %i.eh, i64 2
  br i1 %i.eo, label %pred.store.if3359, label %pred.store.continue3360

pred.store.if3359:                                ; preds = %pred.store.continue3358
  %i.ep = extractelement <16 x i8> %wide.load3354, i64 2
  %i.eq = and i8 %i.ep, 95
  store i8 %i.eq, ptr %next.gep3340, align 1, !tbaa !51
  br label %pred.store.continue3360

pred.store.continue3360:                          ; preds = %pred.store.if3359, %pred.store.continue3358
  %i.er = extractelement <16 x i1> %i.eh, i64 3
  br i1 %i.er, label %pred.store.if3361, label %pred.store.continue3362

pred.store.if3361:                                ; preds = %pred.store.continue3360
  %i.es = extractelement <16 x i8> %wide.load3354, i64 3
  %i.et = and i8 %i.es, 95
  store i8 %i.et, ptr %next.gep3341, align 1, !tbaa !51
  br label %pred.store.continue3362

pred.store.continue3362:                          ; preds = %pred.store.if3361, %pred.store.continue3360
  %i.eu = extractelement <16 x i1> %i.eh, i64 4
  br i1 %i.eu, label %pred.store.if3363, label %pred.store.continue3364

pred.store.if3363:                                ; preds = %pred.store.continue3362
  %i.ev = extractelement <16 x i8> %wide.load3354, i64 4
  %i.ew = and i8 %i.ev, 95
  store i8 %i.ew, ptr %next.gep3342, align 1, !tbaa !51
  br label %pred.store.continue3364

pred.store.continue3364:                          ; preds = %pred.store.if3363, %pred.store.continue3362
  %i.ex = extractelement <16 x i1> %i.eh, i64 5
  br i1 %i.ex, label %pred.store.if3365, label %pred.store.continue3366

pred.store.if3365:                                ; preds = %pred.store.continue3364
  %i.ey = extractelement <16 x i8> %wide.load3354, i64 5
  %i.ez = and i8 %i.ey, 95
  store i8 %i.ez, ptr %next.gep3343, align 1, !tbaa !51
  br label %pred.store.continue3366

pred.store.continue3366:                          ; preds = %pred.store.if3365, %pred.store.continue3364
  %i.fa = extractelement <16 x i1> %i.eh, i64 6
  br i1 %i.fa, label %pred.store.if3367, label %pred.store.continue3368

pred.store.if3367:                                ; preds = %pred.store.continue3366
  %i.fb = extractelement <16 x i8> %wide.load3354, i64 6
  %i.fc = and i8 %i.fb, 95
  store i8 %i.fc, ptr %next.gep3344, align 1, !tbaa !51
  br label %pred.store.continue3368

pred.store.continue3368:                          ; preds = %pred.store.if3367, %pred.store.continue3366
  %i.fd = extractelement <16 x i1> %i.eh, i64 7
  br i1 %i.fd, label %pred.store.if3369, label %pred.store.continue3370

pred.store.if3369:                                ; preds = %pred.store.continue3368
  %i.fe = extractelement <16 x i8> %wide.load3354, i64 7
  %i.ff = and i8 %i.fe, 95
  store i8 %i.ff, ptr %next.gep3345, align 1, !tbaa !51
  br label %pred.store.continue3370

pred.store.continue3370:                          ; preds = %pred.store.if3369, %pred.store.continue3368
  %i.fg = extractelement <16 x i1> %i.eh, i64 8
  br i1 %i.fg, label %pred.store.if3371, label %pred.store.continue3372

pred.store.if3371:                                ; preds = %pred.store.continue3370
  %i.fh = extractelement <16 x i8> %wide.load3354, i64 8
  %i.fi = and i8 %i.fh, 95
  store i8 %i.fi, ptr %next.gep3346, align 1, !tbaa !51
  br label %pred.store.continue3372

pred.store.continue3372:                          ; preds = %pred.store.if3371, %pred.store.continue3370
  %i.fj = extractelement <16 x i1> %i.eh, i64 9
  br i1 %i.fj, label %pred.store.if3373, label %pred.store.continue3374

pred.store.if3373:                                ; preds = %pred.store.continue3372
  %i.fk = extractelement <16 x i8> %wide.load3354, i64 9
  %i.fl = and i8 %i.fk, 95
  store i8 %i.fl, ptr %next.gep3347, align 1, !tbaa !51
  br label %pred.store.continue3374

pred.store.continue3374:                          ; preds = %pred.store.if3373, %pred.store.continue3372
  %i.fm = extractelement <16 x i1> %i.eh, i64 10
  br i1 %i.fm, label %pred.store.if3375, label %pred.store.continue3376

pred.store.if3375:                                ; preds = %pred.store.continue3374
  %i.fn = extractelement <16 x i8> %wide.load3354, i64 10
  %i.fo = and i8 %i.fn, 95
  store i8 %i.fo, ptr %next.gep3348, align 1, !tbaa !51
  br label %pred.store.continue3376

pred.store.continue3376:                          ; preds = %pred.store.if3375, %pred.store.continue3374
  %i.fp = extractelement <16 x i1> %i.eh, i64 11
  br i1 %i.fp, label %pred.store.if3377, label %pred.store.continue3378

pred.store.if3377:                                ; preds = %pred.store.continue3376
  %i.fq = extractelement <16 x i8> %wide.load3354, i64 11
  %i.fr = and i8 %i.fq, 95
  store i8 %i.fr, ptr %next.gep3349, align 1, !tbaa !51
  br label %pred.store.continue3378

pred.store.continue3378:                          ; preds = %pred.store.if3377, %pred.store.continue3376
  %i.fs = extractelement <16 x i1> %i.eh, i64 12
  br i1 %i.fs, label %pred.store.if3379, label %pred.store.continue3380

pred.store.if3379:                                ; preds = %pred.store.continue3378
  %i.ft = extractelement <16 x i8> %wide.load3354, i64 12
  %i.fu = and i8 %i.ft, 95
  store i8 %i.fu, ptr %next.gep3350, align 1, !tbaa !51
  br label %pred.store.continue3380

pred.store.continue3380:                          ; preds = %pred.store.if3379, %pred.store.continue3378
  %i.fv = extractelement <16 x i1> %i.eh, i64 13
  br i1 %i.fv, label %pred.store.if3381, label %pred.store.continue3382

pred.store.if3381:                                ; preds = %pred.store.continue3380
  %i.fw = extractelement <16 x i8> %wide.load3354, i64 13
  %i.fx = and i8 %i.fw, 95
  store i8 %i.fx, ptr %next.gep3351, align 1, !tbaa !51
  br label %pred.store.continue3382

pred.store.continue3382:                          ; preds = %pred.store.if3381, %pred.store.continue3380
  %i.fy = extractelement <16 x i1> %i.eh, i64 14
  br i1 %i.fy, label %pred.store.if3383, label %pred.store.continue3384

pred.store.if3383:                                ; preds = %pred.store.continue3382
  %i.fz = extractelement <16 x i8> %wide.load3354, i64 14
  %i.ga = and i8 %i.fz, 95
  store i8 %i.ga, ptr %next.gep3352, align 1, !tbaa !51
  br label %pred.store.continue3384

pred.store.continue3384:                          ; preds = %pred.store.if3383, %pred.store.continue3382
  %i.gb = extractelement <16 x i1> %i.eh, i64 15
  br i1 %i.gb, label %pred.store.if3385, label %pred.store.continue3386

pred.store.if3385:                                ; preds = %pred.store.continue3384
  %i.gc = extractelement <16 x i8> %wide.load3354, i64 15
  %i.gd = and i8 %i.gc, 95
  store i8 %i.gd, ptr %next.gep3353, align 1, !tbaa !51
  br label %pred.store.continue3386

pred.store.continue3386:                          ; preds = %pred.store.if3385, %pred.store.continue3384
  %index.next3387 = add nuw i64 %index3337, 16    ; 2 uses
  %i.ge = icmp eq i64 %index.next3387, %n.vec3335
  br i1 %i.ge, label %middle.block3388, label %vector.body3336, !llvm.loop !11

middle.block3388:                                 ; preds = %pred.store.continue3386
  %cmp.n3389 = icmp eq i64 %i.dn, %n.vec3335
  br i1 %cmp.n3389, label %upcase.exit, label %vec.epilog.iter.check3391

vec.epilog.iter.check3391:                        ; preds = %middle.block3388
  %min.epilog.iters.check3393 = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check3393, label %.preheader1544.preheader, label %vec.epilog.ph3394, !prof !68

vec.epilog.ph3394:                                ; preds = %vector.main.loop.iter.check3332, %vec.epilog.iter.check3391
  %vec.epilog.resume.val3395 = phi i64 [ %n.vec3335, %vec.epilog.iter.check3391 ], [ 0, %vector.main.loop.iter.check3332 ]
  %n.vec3396 = and i64 %i.dn, -4                  ; 3 uses
  %i.gf = getelementptr i8, ptr %.010381854, i64 %n.vec3396
  %i.gg = and i64 %i.dn, 3
  br label %vec.epilog.vector.body3397

vec.epilog.vector.body3397:                       ; preds = %pred.store.continue3411, %vec.epilog.ph3394
  %index3398 = phi i64 [ %vec.epilog.resume.val3395, %vec.epilog.ph3394 ], [ %index.next3412, %pred.store.continue3411 ] ; 5 uses
  %next.gep3399 = getelementptr i8, ptr %.010381854, i64 %index3398 ; 2 uses
  %i.gh = getelementptr i8, ptr %.010381854, i64 %index3398
  %next.gep3400 = getelementptr i8, ptr %i.gh, i64 1
  %i.gi = getelementptr i8, ptr %.010381854, i64 %index3398
  %next.gep3401 = getelementptr i8, ptr %i.gi, i64 2
  %i.gj = getelementptr i8, ptr %.010381854, i64 %index3398
  %next.gep3402 = getelementptr i8, ptr %i.gj, i64 3
  %wide.load3403 = load <4 x i8>, ptr %next.gep3399, align 1, !tbaa !51 ; 5 uses
  %6 = sext <4 x i8> %wide.load3403 to <4 x i32>
  %7 = add nsw <4 x i32> %6, splat (i32 -97)
  %i.gk = icmp ult <4 x i32> %7, splat (i32 26)   ; 4 uses
  %i.gl = extractelement <4 x i1> %i.gk, i64 0
  br i1 %i.gl, label %pred.store.if3404, label %pred.store.continue3405

pred.store.if3404:                                ; preds = %vec.epilog.vector.body3397
  %i.gm = extractelement <4 x i8> %wide.load3403, i64 0
  %i.gn = and i8 %i.gm, 95
  store i8 %i.gn, ptr %next.gep3399, align 1, !tbaa !51
  br label %pred.store.continue3405

pred.store.continue3405:                          ; preds = %pred.store.if3404, %vec.epilog.vector.body3397
  %i.go = extractelement <4 x i1> %i.gk, i64 1
  br i1 %i.go, label %pred.store.if3406, label %pred.store.continue3407

pred.store.if3406:                                ; preds = %pred.store.continue3405
  %i.gp = extractelement <4 x i8> %wide.load3403, i64 1
  %i.gq = and i8 %i.gp, 95
  store i8 %i.gq, ptr %next.gep3400, align 1, !tbaa !51
  br label %pred.store.continue3407

pred.store.continue3407:                          ; preds = %pred.store.if3406, %pred.store.continue3405
  %i.gr = extractelement <4 x i1> %i.gk, i64 2
  br i1 %i.gr, label %pred.store.if3408, label %pred.store.continue3409

pred.store.if3408:                                ; preds = %pred.store.continue3407
  %i.gs = extractelement <4 x i8> %wide.load3403, i64 2
  %i.gt = and i8 %i.gs, 95
  store i8 %i.gt, ptr %next.gep3401, align 1, !tbaa !51
  br label %pred.store.continue3409

pred.store.continue3409:                          ; preds = %pred.store.if3408, %pred.store.continue3407
  %i.gu = extractelement <4 x i1> %i.gk, i64 3
  br i1 %i.gu, label %pred.store.if3410, label %pred.store.continue3411

pred.store.if3410:                                ; preds = %pred.store.continue3409
  %i.gv = extractelement <4 x i8> %wide.load3403, i64 3
  %i.gw = and i8 %i.gv, 95
  store i8 %i.gw, ptr %next.gep3402, align 1, !tbaa !51
  br label %pred.store.continue3411

pred.store.continue3411:                          ; preds = %pred.store.if3410, %pred.store.continue3409
  %index.next3412 = add nuw i64 %index3398, 4     ; 2 uses
  %i.gx = icmp eq i64 %index.next3412, %n.vec3396
  br i1 %i.gx, label %vec.epilog.middle.block3413, label %vec.epilog.vector.body3397, !llvm.loop !12

vec.epilog.middle.block3413:                      ; preds = %pred.store.continue3411
  %cmp.n3414 = icmp eq i64 %i.dn, %n.vec3396
  br i1 %cmp.n3414, label %upcase.exit, label %.preheader1544.preheader

.preheader1544.preheader:                         ; preds = %iter.check3390, %vec.epilog.iter.check3391, %vec.epilog.middle.block3413
  %.04.i.ph = phi ptr [ %.010381854, %iter.check3390 ], [ %i.dq, %vec.epilog.iter.check3391 ], [ %i.gf, %vec.epilog.middle.block3413 ]
  %.0.i.ph = phi i64 [ %i.dn, %iter.check3390 ], [ %i.dr, %vec.epilog.iter.check3391 ], [ %i.gg, %vec.epilog.middle.block3413 ]
  br label %.preheader1544

.preheader1544:                                   ; preds = %.preheader1544.preheader, %bb.r
  %.04.i = phi ptr [ %i.hd, %bb.r ], [ %.04.i.ph, %.preheader1544.preheader ] ; 3 uses
  %.0.i = phi i64 [ %i.he, %bb.r ], [ %.0.i.ph, %.preheader1544.preheader ]
  %i.gy = load i8, ptr %.04.i, align 1, !tbaa !51 ; 2 uses
  %i.gz = sext i8 %i.gy to i32
  %i.ha = add nsw i32 %i.gz, -123
  %i.hb = icmp ult i32 %i.ha, -26
  br i1 %i.hb, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader1544
  %i.hc = and i8 %i.gy, 95
  store i8 %i.hc, ptr %.04.i, align 1, !tbaa !51
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.preheader1544
  %i.hd = getelementptr inbounds nuw i8, ptr %.04.i, i64 1
  %i.he = add i64 %.0.i, -1                       ; 2 uses
  %.not6.i = icmp eq i64 %i.he, 0
  br i1 %.not6.i, label %upcase.exit, label %.preheader1544, !llvm.loop !13

upcase.exit:                                      ; preds = %bb.r, %middle.block3388, %vec.epilog.middle.block3413, %bb.p
  %i.hf = and i32 %.010832247, 1
  %.not1371 = icmp eq i32 %i.hf, 0
  br i1 %.not1371, label %bb.s, label %bb.w

bb.s:                                             ; preds = %upcase.exit
  %i.hg = sext i32 %.010892205 to i64             ; 3 uses
  %i.hh = icmp slt i64 %i.dn, %i.hg
  br i1 %i.hh, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.hi = getelementptr inbounds i8, ptr %.010381854, i64 %i.hg ; 3 uses
  %i.hj = icmp ult ptr %i.l, %i.hi
  br i1 %i.hj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.hk = call ptr @rb_errno_ptr() #12
  store i32 34, ptr %i.hk, align 4, !tbaa !9
  br label %.loopexit1556

bb.v:                                             ; preds = %bb.t
  %i.hl = sub i64 0, %i.dn
  %i.hm = getelementptr inbounds i8, ptr %i.hi, i64 %i.hl
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.hm, ptr align 1 %.010381854, i64 %i.dn, i1 false)
  %.not1372 = icmp eq i8 %.010802289, 0
  %narrow1373 = select i1 %.not1372, i8 32, i8 %.010802289
  %i.hn = sub nsw i64 %i.hg, %i.dn
  call void @llvm.memset.p0.i64(ptr align 1 %.010381854, i8 %narrow1373, i64 %i.hn, i1 false)
  br label %.thread

bb.w:                                             ; preds = %bb.s, %upcase.exit
  %i.ho = getelementptr inbounds i8, ptr %.010381854, i64 %i.dn
  br label %.thread

.loopexit2373:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.hp = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802290 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832248 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 2 uses
  %.010892206 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ]
  %i.hq = ptrtoint ptr %.010381854 to i64
  %i.hr = sub i64 %i.aa, %i.hq
  %i.hs = call fastcc i64 @date_strftime_with_tmx(ptr noundef %.010381854, i64 noundef %i.hr, ptr noundef nonnull @.str.8, ptr noundef %3) ; 16 uses
  %.not1364 = icmp eq i64 %i.hs, 0
  br i1 %.not1364, label %.loopexit1556, label %bb.x

bb.x:                                             ; preds = %.loopexit2373
  %i.ht = and i32 %.010832248, 8
  %.not1365 = icmp eq i32 %i.ht, 0
  br i1 %.not1365, label %upcase.exit1441, label %iter.check3476

iter.check3476:                                   ; preds = %bb.x
  %min.iters.check3417 = icmp ult i64 %i.hs, 4
  br i1 %min.iters.check3417, label %.preheader1545.preheader, label %vector.main.loop.iter.check3418

vector.main.loop.iter.check3418:                  ; preds = %iter.check3476
  %min.iters.check3419 = icmp ult i64 %i.hs, 16
  br i1 %min.iters.check3419, label %vec.epilog.ph3480, label %vector.ph3420

vector.ph3420:                                    ; preds = %vector.main.loop.iter.check3418
  %i.hu = and i64 %i.hs, 12
  %n.vec3421 = and i64 %i.hs, -16                 ; 4 uses
  %i.hv = getelementptr i8, ptr %.010381854, i64 %n.vec3421
  %i.hw = and i64 %i.hs, 15
  br label %vector.body3422

vector.body3422:                                  ; preds = %vector.ph3420, %pred.store.continue3472
  %index3423 = phi i64 [ 0, %vector.ph3420 ], [ %index.next3473, %pred.store.continue3472 ] ; 17 uses
  %next.gep3424 = getelementptr i8, ptr %.010381854, i64 %index3423 ; 2 uses
  %i.hx = getelementptr i8, ptr %.010381854, i64 %index3423
  %next.gep3425 = getelementptr i8, ptr %i.hx, i64 1
  %i.hy = getelementptr i8, ptr %.010381854, i64 %index3423
  %next.gep3426 = getelementptr i8, ptr %i.hy, i64 2
  %i.hz = getelementptr i8, ptr %.010381854, i64 %index3423
  %next.gep3427 = getelementptr i8, ptr %i.hz, i64 3
  %i.ia = getelementptr i8, ptr %.010381854, i64 %index3423
  %next.gep3428 = getelementptr i8, ptr %i.ia, i64 4
  %i.ib = getelementptr i8, ptr %.010381854, i64 %index3423
  %next.gep3429 = getelementptr i8, ptr %i.ib, i64 5
  %i.ic = getelementptr i8, ptr %.010381854, i64 %index3423
  %next.gep3430 = getelementptr i8, ptr %i.ic, i64 6
  %i.id = getelementptr i8, ptr %.010381854, i64 %index3423
  %next.gep3431 = getelementptr i8, ptr %i.id, i64 7
  %i.ie = getelementptr i8, ptr %.010381854, i64 %index3423
  %next.gep3432 = getelementptr i8, ptr %i.ie, i64 8
  %i.if = getelementptr i8, ptr %.010381854, i64 %index3423
  %next.gep3433 = getelementptr i8, ptr %i.if, i64 9
  %i.ig = getelementptr i8, ptr %.010381854, i64 %index3423
  %next.gep3434 = getelementptr i8, ptr %i.ig, i64 10
  %i.ih = getelementptr i8, ptr %.010381854, i64 %index3423
  %next.gep3435 = getelementptr i8, ptr %i.ih, i64 11
  %i.ii = getelementptr i8, ptr %.010381854, i64 %index3423
  %next.gep3436 = getelementptr i8, ptr %i.ii, i64 12
  %i.ij = getelementptr i8, ptr %.010381854, i64 %index3423
  %next.gep3437 = getelementptr i8, ptr %i.ij, i64 13
  %i.ik = getelementptr i8, ptr %.010381854, i64 %index3423
  %next.gep3438 = getelementptr i8, ptr %i.ik, i64 14
  %i.il = getelementptr i8, ptr %.010381854, i64 %index3423
  %next.gep3439 = getelementptr i8, ptr %i.il, i64 15
  %wide.load3440 = load <16 x i8>, ptr %next.gep3424, align 1, !tbaa !51 ; 17 uses
  %8 = sext <16 x i8> %wide.load3440 to <16 x i32>
  %9 = add nsw <16 x i32> %8, splat (i32 -97)
  %i.im = icmp ult <16 x i32> %9, splat (i32 26)  ; 16 uses
  %i.in = extractelement <16 x i1> %i.im, i64 0
  br i1 %i.in, label %pred.store.if3441, label %pred.store.continue3442

pred.store.if3441:                                ; preds = %vector.body3422
  %i.io = extractelement <16 x i8> %wide.load3440, i64 0
  %i.ip = and i8 %i.io, 95
  store i8 %i.ip, ptr %next.gep3424, align 1, !tbaa !51
  br label %pred.store.continue3442

pred.store.continue3442:                          ; preds = %pred.store.if3441, %vector.body3422
  %i.iq = extractelement <16 x i1> %i.im, i64 1
  br i1 %i.iq, label %pred.store.if3443, label %pred.store.continue3444

pred.store.if3443:                                ; preds = %pred.store.continue3442
  %i.ir = extractelement <16 x i8> %wide.load3440, i64 1
  %i.is = and i8 %i.ir, 95
  store i8 %i.is, ptr %next.gep3425, align 1, !tbaa !51
  br label %pred.store.continue3444

pred.store.continue3444:                          ; preds = %pred.store.if3443, %pred.store.continue3442
  %i.it = extractelement <16 x i1> %i.im, i64 2
  br i1 %i.it, label %pred.store.if3445, label %pred.store.continue3446

pred.store.if3445:                                ; preds = %pred.store.continue3444
  %i.iu = extractelement <16 x i8> %wide.load3440, i64 2
  %i.iv = and i8 %i.iu, 95
  store i8 %i.iv, ptr %next.gep3426, align 1, !tbaa !51
  br label %pred.store.continue3446

pred.store.continue3446:                          ; preds = %pred.store.if3445, %pred.store.continue3444
  %i.iw = extractelement <16 x i1> %i.im, i64 3
  br i1 %i.iw, label %pred.store.if3447, label %pred.store.continue3448

pred.store.if3447:                                ; preds = %pred.store.continue3446
  %i.ix = extractelement <16 x i8> %wide.load3440, i64 3
  %i.iy = and i8 %i.ix, 95
  store i8 %i.iy, ptr %next.gep3427, align 1, !tbaa !51
  br label %pred.store.continue3448

pred.store.continue3448:                          ; preds = %pred.store.if3447, %pred.store.continue3446
  %i.iz = extractelement <16 x i1> %i.im, i64 4
  br i1 %i.iz, label %pred.store.if3449, label %pred.store.continue3450

pred.store.if3449:                                ; preds = %pred.store.continue3448
  %i.ja = extractelement <16 x i8> %wide.load3440, i64 4
  %i.jb = and i8 %i.ja, 95
  store i8 %i.jb, ptr %next.gep3428, align 1, !tbaa !51
  br label %pred.store.continue3450

pred.store.continue3450:                          ; preds = %pred.store.if3449, %pred.store.continue3448
  %i.jc = extractelement <16 x i1> %i.im, i64 5
  br i1 %i.jc, label %pred.store.if3451, label %pred.store.continue3452

pred.store.if3451:                                ; preds = %pred.store.continue3450
  %i.jd = extractelement <16 x i8> %wide.load3440, i64 5
  %i.je = and i8 %i.jd, 95
  store i8 %i.je, ptr %next.gep3429, align 1, !tbaa !51
  br label %pred.store.continue3452

pred.store.continue3452:                          ; preds = %pred.store.if3451, %pred.store.continue3450
  %i.jf = extractelement <16 x i1> %i.im, i64 6
  br i1 %i.jf, label %pred.store.if3453, label %pred.store.continue3454

pred.store.if3453:                                ; preds = %pred.store.continue3452
  %i.jg = extractelement <16 x i8> %wide.load3440, i64 6
  %i.jh = and i8 %i.jg, 95
  store i8 %i.jh, ptr %next.gep3430, align 1, !tbaa !51
  br label %pred.store.continue3454

pred.store.continue3454:                          ; preds = %pred.store.if3453, %pred.store.continue3452
  %i.ji = extractelement <16 x i1> %i.im, i64 7
  br i1 %i.ji, label %pred.store.if3455, label %pred.store.continue3456

pred.store.if3455:                                ; preds = %pred.store.continue3454
  %i.jj = extractelement <16 x i8> %wide.load3440, i64 7
  %i.jk = and i8 %i.jj, 95
  store i8 %i.jk, ptr %next.gep3431, align 1, !tbaa !51
  br label %pred.store.continue3456

pred.store.continue3456:                          ; preds = %pred.store.if3455, %pred.store.continue3454
  %i.jl = extractelement <16 x i1> %i.im, i64 8
  br i1 %i.jl, label %pred.store.if3457, label %pred.store.continue3458

pred.store.if3457:                                ; preds = %pred.store.continue3456
  %i.jm = extractelement <16 x i8> %wide.load3440, i64 8
  %i.jn = and i8 %i.jm, 95
  store i8 %i.jn, ptr %next.gep3432, align 1, !tbaa !51
  br label %pred.store.continue3458

pred.store.continue3458:                          ; preds = %pred.store.if3457, %pred.store.continue3456
  %i.jo = extractelement <16 x i1> %i.im, i64 9
  br i1 %i.jo, label %pred.store.if3459, label %pred.store.continue3460

pred.store.if3459:                                ; preds = %pred.store.continue3458
  %i.jp = extractelement <16 x i8> %wide.load3440, i64 9
  %i.jq = and i8 %i.jp, 95
  store i8 %i.jq, ptr %next.gep3433, align 1, !tbaa !51
  br label %pred.store.continue3460

pred.store.continue3460:                          ; preds = %pred.store.if3459, %pred.store.continue3458
  %i.jr = extractelement <16 x i1> %i.im, i64 10
  br i1 %i.jr, label %pred.store.if3461, label %pred.store.continue3462

pred.store.if3461:                                ; preds = %pred.store.continue3460
  %i.js = extractelement <16 x i8> %wide.load3440, i64 10
  %i.jt = and i8 %i.js, 95
  store i8 %i.jt, ptr %next.gep3434, align 1, !tbaa !51
  br label %pred.store.continue3462

pred.store.continue3462:                          ; preds = %pred.store.if3461, %pred.store.continue3460
  %i.ju = extractelement <16 x i1> %i.im, i64 11
  br i1 %i.ju, label %pred.store.if3463, label %pred.store.continue3464

pred.store.if3463:                                ; preds = %pred.store.continue3462
  %i.jv = extractelement <16 x i8> %wide.load3440, i64 11
  %i.jw = and i8 %i.jv, 95
  store i8 %i.jw, ptr %next.gep3435, align 1, !tbaa !51
  br label %pred.store.continue3464

pred.store.continue3464:                          ; preds = %pred.store.if3463, %pred.store.continue3462
  %i.jx = extractelement <16 x i1> %i.im, i64 12
  br i1 %i.jx, label %pred.store.if3465, label %pred.store.continue3466

pred.store.if3465:                                ; preds = %pred.store.continue3464
  %i.jy = extractelement <16 x i8> %wide.load3440, i64 12
  %i.jz = and i8 %i.jy, 95
  store i8 %i.jz, ptr %next.gep3436, align 1, !tbaa !51
  br label %pred.store.continue3466

pred.store.continue3466:                          ; preds = %pred.store.if3465, %pred.store.continue3464
  %i.ka = extractelement <16 x i1> %i.im, i64 13
  br i1 %i.ka, label %pred.store.if3467, label %pred.store.continue3468

pred.store.if3467:                                ; preds = %pred.store.continue3466
  %i.kb = extractelement <16 x i8> %wide.load3440, i64 13
  %i.kc = and i8 %i.kb, 95
  store i8 %i.kc, ptr %next.gep3437, align 1, !tbaa !51
  br label %pred.store.continue3468

pred.store.continue3468:                          ; preds = %pred.store.if3467, %pred.store.continue3466
  %i.kd = extractelement <16 x i1> %i.im, i64 14
  br i1 %i.kd, label %pred.store.if3469, label %pred.store.continue3470

pred.store.if3469:                                ; preds = %pred.store.continue3468
  %i.ke = extractelement <16 x i8> %wide.load3440, i64 14
  %i.kf = and i8 %i.ke, 95
  store i8 %i.kf, ptr %next.gep3438, align 1, !tbaa !51
  br label %pred.store.continue3470

pred.store.continue3470:                          ; preds = %pred.store.if3469, %pred.store.continue3468
  %i.kg = extractelement <16 x i1> %i.im, i64 15
  br i1 %i.kg, label %pred.store.if3471, label %pred.store.continue3472

pred.store.if3471:                                ; preds = %pred.store.continue3470
  %i.kh = extractelement <16 x i8> %wide.load3440, i64 15
  %i.ki = and i8 %i.kh, 95
  store i8 %i.ki, ptr %next.gep3439, align 1, !tbaa !51
  br label %pred.store.continue3472

pred.store.continue3472:                          ; preds = %pred.store.if3471, %pred.store.continue3470
  %index.next3473 = add nuw i64 %index3423, 16    ; 2 uses
  %i.kj = icmp eq i64 %index.next3473, %n.vec3421
  br i1 %i.kj, label %middle.block3474, label %vector.body3422, !llvm.loop !14

middle.block3474:                                 ; preds = %pred.store.continue3472
  %cmp.n3475 = icmp eq i64 %i.hs, %n.vec3421
  br i1 %cmp.n3475, label %upcase.exit1441, label %vec.epilog.iter.check3477

vec.epilog.iter.check3477:                        ; preds = %middle.block3474
  %min.epilog.iters.check3479 = icmp eq i64 %i.hu, 0
  br i1 %min.epilog.iters.check3479, label %.preheader1545.preheader, label %vec.epilog.ph3480, !prof !68

vec.epilog.ph3480:                                ; preds = %vector.main.loop.iter.check3418, %vec.epilog.iter.check3477
  %vec.epilog.resume.val3481 = phi i64 [ %n.vec3421, %vec.epilog.iter.check3477 ], [ 0, %vector.main.loop.iter.check3418 ]
  %n.vec3482 = and i64 %i.hs, -4                  ; 3 uses
  %i.kk = getelementptr i8, ptr %.010381854, i64 %n.vec3482
  %i.kl = and i64 %i.hs, 3
  br label %vec.epilog.vector.body3483

vec.epilog.vector.body3483:                       ; preds = %pred.store.continue3497, %vec.epilog.ph3480
  %index3484 = phi i64 [ %vec.epilog.resume.val3481, %vec.epilog.ph3480 ], [ %index.next3498, %pred.store.continue3497 ] ; 5 uses
  %next.gep3485 = getelementptr i8, ptr %.010381854, i64 %index3484 ; 2 uses
  %i.km = getelementptr i8, ptr %.010381854, i64 %index3484
  %next.gep3486 = getelementptr i8, ptr %i.km, i64 1
  %i.kn = getelementptr i8, ptr %.010381854, i64 %index3484
  %next.gep3487 = getelementptr i8, ptr %i.kn, i64 2
  %i.ko = getelementptr i8, ptr %.010381854, i64 %index3484
  %next.gep3488 = getelementptr i8, ptr %i.ko, i64 3
  %wide.load3489 = load <4 x i8>, ptr %next.gep3485, align 1, !tbaa !51 ; 5 uses
  %10 = sext <4 x i8> %wide.load3489 to <4 x i32>
  %11 = add nsw <4 x i32> %10, splat (i32 -97)
  %i.kp = icmp ult <4 x i32> %11, splat (i32 26)  ; 4 uses
  %i.kq = extractelement <4 x i1> %i.kp, i64 0
  br i1 %i.kq, label %pred.store.if3490, label %pred.store.continue3491

pred.store.if3490:                                ; preds = %vec.epilog.vector.body3483
  %i.kr = extractelement <4 x i8> %wide.load3489, i64 0
  %i.ks = and i8 %i.kr, 95
  store i8 %i.ks, ptr %next.gep3485, align 1, !tbaa !51
  br label %pred.store.continue3491

pred.store.continue3491:                          ; preds = %pred.store.if3490, %vec.epilog.vector.body3483
  %i.kt = extractelement <4 x i1> %i.kp, i64 1
  br i1 %i.kt, label %pred.store.if3492, label %pred.store.continue3493

pred.store.if3492:                                ; preds = %pred.store.continue3491
  %i.ku = extractelement <4 x i8> %wide.load3489, i64 1
  %i.kv = and i8 %i.ku, 95
  store i8 %i.kv, ptr %next.gep3486, align 1, !tbaa !51
  br label %pred.store.continue3493

pred.store.continue3493:                          ; preds = %pred.store.if3492, %pred.store.continue3491
  %i.kw = extractelement <4 x i1> %i.kp, i64 2
  br i1 %i.kw, label %pred.store.if3494, label %pred.store.continue3495

pred.store.if3494:                                ; preds = %pred.store.continue3493
  %i.kx = extractelement <4 x i8> %wide.load3489, i64 2
  %i.ky = and i8 %i.kx, 95
  store i8 %i.ky, ptr %next.gep3487, align 1, !tbaa !51
  br label %pred.store.continue3495

pred.store.continue3495:                          ; preds = %pred.store.if3494, %pred.store.continue3493
  %i.kz = extractelement <4 x i1> %i.kp, i64 3
  br i1 %i.kz, label %pred.store.if3496, label %pred.store.continue3497

pred.store.if3496:                                ; preds = %pred.store.continue3495
  %i.la = extractelement <4 x i8> %wide.load3489, i64 3
  %i.lb = and i8 %i.la, 95
  store i8 %i.lb, ptr %next.gep3488, align 1, !tbaa !51
  br label %pred.store.continue3497

pred.store.continue3497:                          ; preds = %pred.store.if3496, %pred.store.continue3495
  %index.next3498 = add nuw i64 %index3484, 4     ; 2 uses
  %i.lc = icmp eq i64 %index.next3498, %n.vec3482
  br i1 %i.lc, label %vec.epilog.middle.block3499, label %vec.epilog.vector.body3483, !llvm.loop !15

vec.epilog.middle.block3499:                      ; preds = %pred.store.continue3497
  %cmp.n3500 = icmp eq i64 %i.hs, %n.vec3482
  br i1 %cmp.n3500, label %upcase.exit1441, label %.preheader1545.preheader

.preheader1545.preheader:                         ; preds = %iter.check3476, %vec.epilog.iter.check3477, %vec.epilog.middle.block3499
  %.04.i1438.ph = phi ptr [ %.010381854, %iter.check3476 ], [ %i.hv, %vec.epilog.iter.check3477 ], [ %i.kk, %vec.epilog.middle.block3499 ]
  %.0.i1439.ph = phi i64 [ %i.hs, %iter.check3476 ], [ %i.hw, %vec.epilog.iter.check3477 ], [ %i.kl, %vec.epilog.middle.block3499 ]
  br label %.preheader1545

.preheader1545:                                   ; preds = %.preheader1545.preheader, %bb.z
  %.04.i1438 = phi ptr [ %i.li, %bb.z ], [ %.04.i1438.ph, %.preheader1545.preheader ] ; 3 uses
  %.0.i1439 = phi i64 [ %i.lj, %bb.z ], [ %.0.i1439.ph, %.preheader1545.preheader ]
  %i.ld = load i8, ptr %.04.i1438, align 1, !tbaa !51 ; 2 uses
  %i.le = sext i8 %i.ld to i32
  %i.lf = add nsw i32 %i.le, -123
  %i.lg = icmp ult i32 %i.lf, -26
  br i1 %i.lg, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.preheader1545
  %i.lh = and i8 %i.ld, 95
  store i8 %i.lh, ptr %.04.i1438, align 1, !tbaa !51
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.preheader1545
  %i.li = getelementptr inbounds nuw i8, ptr %.04.i1438, i64 1
  %i.lj = add i64 %.0.i1439, -1                   ; 2 uses
  %.not6.i1440 = icmp eq i64 %i.lj, 0
  br i1 %.not6.i1440, label %upcase.exit1441, label %.preheader1545, !llvm.loop !16

upcase.exit1441:                                  ; preds = %bb.z, %middle.block3474, %vec.epilog.middle.block3499, %bb.x
  %i.lk = and i32 %.010832248, 1
  %.not1366 = icmp eq i32 %i.lk, 0
  br i1 %.not1366, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %upcase.exit1441
  %i.ll = sext i32 %.010892206 to i64             ; 3 uses
  %i.lm = icmp slt i64 %i.hs, %i.ll
  br i1 %i.lm, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.ln = getelementptr inbounds i8, ptr %.010381854, i64 %i.ll ; 3 uses
  %i.lo = icmp ult ptr %i.l, %i.ln
  br i1 %i.lo, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.lp = call ptr @rb_errno_ptr() #12
  store i32 34, ptr %i.lp, align 4, !tbaa !9
  br label %.loopexit1556

bb.ad:                                            ; preds = %bb.ab
  %i.lq = sub i64 0, %i.hs
  %i.lr = getelementptr inbounds i8, ptr %i.ln, i64 %i.lq
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.lr, ptr align 1 %.010381854, i64 %i.hs, i1 false)
  %.not1367 = icmp eq i8 %.010802290, 0
  %narrow1368 = select i1 %.not1367, i8 32, i8 %.010802290
  %i.ls = sub nsw i64 %i.ll, %i.hs
  call void @llvm.memset.p0.i64(ptr align 1 %.010381854, i8 %narrow1368, i64 %i.ls, i1 false)
  br label %.thread

bb.ae:                                            ; preds = %bb.aa, %upcase.exit1441
  %i.lt = getelementptr inbounds i8, ptr %.010381854, i64 %i.hs
  br label %.thread

bb.af:                                            ; preds = %.preheader1555, %.preheader1555
  %i.lu = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !69
  %i.lx = load ptr, ptr %3, align 8, !tbaa !60
  %i.ly = call i32 %i.lw(ptr noundef %i.lx) #12   ; 3 uses
  %i.lz = icmp slt i32 %.01089.be, 1
  %spec.select1390 = select i1 %i.lz, i32 2, i32 %.01089.be
  %i.ma = and i32 %.01083.be, 1
  %.not1362 = icmp eq i32 %i.ma, 0
  %.61095 = select i1 %.not1362, i32 %spec.select1390, i32 1 ; 3 uses
  %i.mb = ptrtoint ptr %.010381854 to i64
  %i.mc = sub i64 %i.aa, %i.mb                    ; 3 uses
  switch i8 %.01080.be, label %.fold.split [
    i8 48, label %bb.ak
    i8 0, label %bb.aj
  ]

bb.ag:                                            ; preds = %.preheader1555.jt0, %.preheader1555.jt0
  %i.md = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 24
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !69
  %i.mg = load ptr, ptr %3, align 8, !tbaa !60
  %i.mh = call i32 %i.mf(ptr noundef %i.mg) #12
  %i.mi = ptrtoint ptr %.010381854 to i64
  %i.mj = sub i64 %i.aa, %i.mi
  br label %bb.aj

bb.ah:                                            ; preds = %.preheader1555.jt32, %.preheader1555.jt32
  %i.mk = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 24
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !69
  %i.mn = load ptr, ptr %3, align 8, !tbaa !60
  %i.mo = call i32 %i.mm(ptr noundef %i.mn) #12
  %i.mp = and i32 %.010832279.ph, 1
  %.61095.jt32 = sub nuw nsw i32 2, %i.mp
  %i.mq = ptrtoint ptr %.010381854 to i64
  %i.mr = sub i64 %i.aa, %i.mq
  br label %bb.ak

bb.ai:                                            ; preds = %.preheader1555.jt48, %.preheader1555.jt48
  %i.ms = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 24
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !69
  %i.mv = load ptr, ptr %3, align 8, !tbaa !60
  %i.mw = call i32 %i.mu(ptr noundef %i.mv) #12
  %i.mx = icmp slt i64 %i.bpt, 1
  %spec.select1390.jt48 = select i1 %i.mx, i32 2, i32 %i.aq
  %i.my = and i32 %.010832283.ph, 1
  %.not1362.jt48 = icmp eq i32 %i.my, 0
  %.61095.jt48 = select i1 %.not1362.jt48, i32 %spec.select1390.jt48, i32 1
  %i.mz = ptrtoint ptr %.010381854 to i64
  %i.na = sub i64 %i.aa, %i.mz
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ag, %bb.af
  %i.nb = phi i64 [ %i.mj, %bb.ag ], [ %i.mc, %bb.af ]
  %.610952330 = phi i32 [ 2, %bb.ag ], [ %.61095, %bb.af ]
  %i.nc = phi i32 [ %i.mh, %bb.ag ], [ %i.ly, %bb.af ]
  %i.nd = phi ptr [ %i.al, %bb.ag ], [ %i.aj, %bb.af ] ; 2 uses
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !51
  %i.nf = icmp eq i8 %i.ne, 100
  %i.ng = select i1 %i.nf, ptr @.str.5, ptr @.str.6
  br label %bb.ak

.fold.split:                                      ; preds = %bb.af
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.ai, %bb.af, %.fold.split, %bb.aj
  %i.nh = phi i64 [ %i.na, %bb.ai ], [ %i.mc, %bb.af ], [ %i.nb, %bb.aj ], [ %i.mr, %bb.ah ], [ %i.mc, %.fold.split ]
  %.610952328 = phi i32 [ %.61095.jt48, %bb.ai ], [ %.61095, %bb.af ], [ %.610952330, %bb.aj ], [ %.61095.jt32, %bb.ah ], [ %.61095, %.fold.split ]
  %i.ni = phi i32 [ %i.mw, %bb.ai ], [ %i.ly, %bb.af ], [ %i.nc, %bb.aj ], [ %i.mo, %bb.ah ], [ %i.ly, %.fold.split ]
  %i.nj = phi ptr [ %i.ar, %bb.ai ], [ %i.aj, %bb.af ], [ %i.nd, %bb.aj ], [ %i.an, %bb.ah ], [ %i.aj, %.fold.split ]
  %i.nk = phi ptr [ @.str.5, %bb.ai ], [ @.str.5, %bb.af ], [ %i.ng, %bb.aj ], [ @.str.6, %bb.ah ], [ @.str.6, %.fold.split ]
  %i.nl = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.010381854, i64 noundef %i.nh, ptr noundef nonnull %i.nk, i32 noundef %.610952328, i32 noundef %i.ni) #12 ; 2 uses
  %i.nm = icmp slt i32 %i.nl, 0
  %i.nn = zext nneg i32 %i.nl to i64
  %i.no = getelementptr inbounds nuw i8, ptr %.010381854, i64 %i.nn
  br i1 %i.nm, label %.thread1499, label %.thread

.loopexit2374:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.np = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802291 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832249 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 2 uses
  %.010892207 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ]
  %i.nq = ptrtoint ptr %.010381854 to i64
  %i.nr = sub i64 %i.aa, %i.nq
  %i.ns = call fastcc i64 @date_strftime_with_tmx(ptr noundef %.010381854, i64 noundef %i.nr, ptr noundef nonnull @.str.9, ptr noundef %3) ; 16 uses
  %.not1357 = icmp eq i64 %i.ns, 0
  br i1 %.not1357, label %.loopexit1556, label %bb.al

bb.al:                                            ; preds = %.loopexit2374
  %i.nt = and i32 %.010832249, 8
  %.not1358 = icmp eq i32 %i.nt, 0
  br i1 %.not1358, label %upcase.exit1445, label %iter.check3562

iter.check3562:                                   ; preds = %bb.al
  %min.iters.check3503 = icmp ult i64 %i.ns, 4
  br i1 %min.iters.check3503, label %.preheader1546.preheader, label %vector.main.loop.iter.check3504

vector.main.loop.iter.check3504:                  ; preds = %iter.check3562
  %min.iters.check3505 = icmp ult i64 %i.ns, 16
  br i1 %min.iters.check3505, label %vec.epilog.ph3566, label %vector.ph3506

vector.ph3506:                                    ; preds = %vector.main.loop.iter.check3504
  %i.nu = and i64 %i.ns, 12
  %n.vec3507 = and i64 %i.ns, -16                 ; 4 uses
  %i.nv = getelementptr i8, ptr %.010381854, i64 %n.vec3507
  %i.nw = and i64 %i.ns, 15
  br label %vector.body3508

vector.body3508:                                  ; preds = %vector.ph3506, %pred.store.continue3558
  %index3509 = phi i64 [ 0, %vector.ph3506 ], [ %index.next3559, %pred.store.continue3558 ] ; 17 uses
  %next.gep3510 = getelementptr i8, ptr %.010381854, i64 %index3509 ; 2 uses
  %i.nx = getelementptr i8, ptr %.010381854, i64 %index3509
  %next.gep3511 = getelementptr i8, ptr %i.nx, i64 1
  %i.ny = getelementptr i8, ptr %.010381854, i64 %index3509
  %next.gep3512 = getelementptr i8, ptr %i.ny, i64 2
  %i.nz = getelementptr i8, ptr %.010381854, i64 %index3509
  %next.gep3513 = getelementptr i8, ptr %i.nz, i64 3
  %i.oa = getelementptr i8, ptr %.010381854, i64 %index3509
  %next.gep3514 = getelementptr i8, ptr %i.oa, i64 4
  %i.ob = getelementptr i8, ptr %.010381854, i64 %index3509
  %next.gep3515 = getelementptr i8, ptr %i.ob, i64 5
  %i.oc = getelementptr i8, ptr %.010381854, i64 %index3509
  %next.gep3516 = getelementptr i8, ptr %i.oc, i64 6
  %i.od = getelementptr i8, ptr %.010381854, i64 %index3509
  %next.gep3517 = getelementptr i8, ptr %i.od, i64 7
  %i.oe = getelementptr i8, ptr %.010381854, i64 %index3509
  %next.gep3518 = getelementptr i8, ptr %i.oe, i64 8
  %i.of = getelementptr i8, ptr %.010381854, i64 %index3509
  %next.gep3519 = getelementptr i8, ptr %i.of, i64 9
  %i.og = getelementptr i8, ptr %.010381854, i64 %index3509
  %next.gep3520 = getelementptr i8, ptr %i.og, i64 10
  %i.oh = getelementptr i8, ptr %.010381854, i64 %index3509
  %next.gep3521 = getelementptr i8, ptr %i.oh, i64 11
  %i.oi = getelementptr i8, ptr %.010381854, i64 %index3509
  %next.gep3522 = getelementptr i8, ptr %i.oi, i64 12
  %i.oj = getelementptr i8, ptr %.010381854, i64 %index3509
  %next.gep3523 = getelementptr i8, ptr %i.oj, i64 13
  %i.ok = getelementptr i8, ptr %.010381854, i64 %index3509
  %next.gep3524 = getelementptr i8, ptr %i.ok, i64 14
  %i.ol = getelementptr i8, ptr %.010381854, i64 %index3509
  %next.gep3525 = getelementptr i8, ptr %i.ol, i64 15
  %wide.load3526 = load <16 x i8>, ptr %next.gep3510, align 1, !tbaa !51 ; 17 uses
  %12 = sext <16 x i8> %wide.load3526 to <16 x i32>
  %13 = add nsw <16 x i32> %12, splat (i32 -97)
  %i.om = icmp ult <16 x i32> %13, splat (i32 26) ; 16 uses
  %i.on = extractelement <16 x i1> %i.om, i64 0
  br i1 %i.on, label %pred.store.if3527, label %pred.store.continue3528

pred.store.if3527:                                ; preds = %vector.body3508
  %i.oo = extractelement <16 x i8> %wide.load3526, i64 0
  %i.op = and i8 %i.oo, 95
  store i8 %i.op, ptr %next.gep3510, align 1, !tbaa !51
  br label %pred.store.continue3528

pred.store.continue3528:                          ; preds = %pred.store.if3527, %vector.body3508
  %i.oq = extractelement <16 x i1> %i.om, i64 1
  br i1 %i.oq, label %pred.store.if3529, label %pred.store.continue3530

pred.store.if3529:                                ; preds = %pred.store.continue3528
  %i.or = extractelement <16 x i8> %wide.load3526, i64 1
  %i.os = and i8 %i.or, 95
  store i8 %i.os, ptr %next.gep3511, align 1, !tbaa !51
  br label %pred.store.continue3530

pred.store.continue3530:                          ; preds = %pred.store.if3529, %pred.store.continue3528
  %i.ot = extractelement <16 x i1> %i.om, i64 2
  br i1 %i.ot, label %pred.store.if3531, label %pred.store.continue3532

pred.store.if3531:                                ; preds = %pred.store.continue3530
  %i.ou = extractelement <16 x i8> %wide.load3526, i64 2
  %i.ov = and i8 %i.ou, 95
  store i8 %i.ov, ptr %next.gep3512, align 1, !tbaa !51
  br label %pred.store.continue3532

pred.store.continue3532:                          ; preds = %pred.store.if3531, %pred.store.continue3530
  %i.ow = extractelement <16 x i1> %i.om, i64 3
  br i1 %i.ow, label %pred.store.if3533, label %pred.store.continue3534

pred.store.if3533:                                ; preds = %pred.store.continue3532
  %i.ox = extractelement <16 x i8> %wide.load3526, i64 3
  %i.oy = and i8 %i.ox, 95
  store i8 %i.oy, ptr %next.gep3513, align 1, !tbaa !51
  br label %pred.store.continue3534

pred.store.continue3534:                          ; preds = %pred.store.if3533, %pred.store.continue3532
  %i.oz = extractelement <16 x i1> %i.om, i64 4
  br i1 %i.oz, label %pred.store.if3535, label %pred.store.continue3536

pred.store.if3535:                                ; preds = %pred.store.continue3534
  %i.pa = extractelement <16 x i8> %wide.load3526, i64 4
  %i.pb = and i8 %i.pa, 95
  store i8 %i.pb, ptr %next.gep3514, align 1, !tbaa !51
  br label %pred.store.continue3536

pred.store.continue3536:                          ; preds = %pred.store.if3535, %pred.store.continue3534
  %i.pc = extractelement <16 x i1> %i.om, i64 5
  br i1 %i.pc, label %pred.store.if3537, label %pred.store.continue3538

pred.store.if3537:                                ; preds = %pred.store.continue3536
  %i.pd = extractelement <16 x i8> %wide.load3526, i64 5
  %i.pe = and i8 %i.pd, 95
  store i8 %i.pe, ptr %next.gep3515, align 1, !tbaa !51
  br label %pred.store.continue3538

pred.store.continue3538:                          ; preds = %pred.store.if3537, %pred.store.continue3536
  %i.pf = extractelement <16 x i1> %i.om, i64 6
  br i1 %i.pf, label %pred.store.if3539, label %pred.store.continue3540

pred.store.if3539:                                ; preds = %pred.store.continue3538
  %i.pg = extractelement <16 x i8> %wide.load3526, i64 6
  %i.ph = and i8 %i.pg, 95
  store i8 %i.ph, ptr %next.gep3516, align 1, !tbaa !51
  br label %pred.store.continue3540

pred.store.continue3540:                          ; preds = %pred.store.if3539, %pred.store.continue3538
  %i.pi = extractelement <16 x i1> %i.om, i64 7
  br i1 %i.pi, label %pred.store.if3541, label %pred.store.continue3542

pred.store.if3541:                                ; preds = %pred.store.continue3540
  %i.pj = extractelement <16 x i8> %wide.load3526, i64 7
  %i.pk = and i8 %i.pj, 95
  store i8 %i.pk, ptr %next.gep3517, align 1, !tbaa !51
  br label %pred.store.continue3542

pred.store.continue3542:                          ; preds = %pred.store.if3541, %pred.store.continue3540
  %i.pl = extractelement <16 x i1> %i.om, i64 8
  br i1 %i.pl, label %pred.store.if3543, label %pred.store.continue3544

pred.store.if3543:                                ; preds = %pred.store.continue3542
  %i.pm = extractelement <16 x i8> %wide.load3526, i64 8
  %i.pn = and i8 %i.pm, 95
  store i8 %i.pn, ptr %next.gep3518, align 1, !tbaa !51
  br label %pred.store.continue3544

pred.store.continue3544:                          ; preds = %pred.store.if3543, %pred.store.continue3542
  %i.po = extractelement <16 x i1> %i.om, i64 9
  br i1 %i.po, label %pred.store.if3545, label %pred.store.continue3546

pred.store.if3545:                                ; preds = %pred.store.continue3544
  %i.pp = extractelement <16 x i8> %wide.load3526, i64 9
  %i.pq = and i8 %i.pp, 95
  store i8 %i.pq, ptr %next.gep3519, align 1, !tbaa !51
  br label %pred.store.continue3546

pred.store.continue3546:                          ; preds = %pred.store.if3545, %pred.store.continue3544
  %i.pr = extractelement <16 x i1> %i.om, i64 10
  br i1 %i.pr, label %pred.store.if3547, label %pred.store.continue3548

pred.store.if3547:                                ; preds = %pred.store.continue3546
  %i.ps = extractelement <16 x i8> %wide.load3526, i64 10
  %i.pt = and i8 %i.ps, 95
  store i8 %i.pt, ptr %next.gep3520, align 1, !tbaa !51
  br label %pred.store.continue3548

pred.store.continue3548:                          ; preds = %pred.store.if3547, %pred.store.continue3546
  %i.pu = extractelement <16 x i1> %i.om, i64 11
  br i1 %i.pu, label %pred.store.if3549, label %pred.store.continue3550

pred.store.if3549:                                ; preds = %pred.store.continue3548
  %i.pv = extractelement <16 x i8> %wide.load3526, i64 11
  %i.pw = and i8 %i.pv, 95
  store i8 %i.pw, ptr %next.gep3521, align 1, !tbaa !51
  br label %pred.store.continue3550

pred.store.continue3550:                          ; preds = %pred.store.if3549, %pred.store.continue3548
  %i.px = extractelement <16 x i1> %i.om, i64 12
  br i1 %i.px, label %pred.store.if3551, label %pred.store.continue3552

pred.store.if3551:                                ; preds = %pred.store.continue3550
  %i.py = extractelement <16 x i8> %wide.load3526, i64 12
  %i.pz = and i8 %i.py, 95
  store i8 %i.pz, ptr %next.gep3522, align 1, !tbaa !51
  br label %pred.store.continue3552

pred.store.continue3552:                          ; preds = %pred.store.if3551, %pred.store.continue3550
  %i.qa = extractelement <16 x i1> %i.om, i64 13
  br i1 %i.qa, label %pred.store.if3553, label %pred.store.continue3554

pred.store.if3553:                                ; preds = %pred.store.continue3552
  %i.qb = extractelement <16 x i8> %wide.load3526, i64 13
  %i.qc = and i8 %i.qb, 95
  store i8 %i.qc, ptr %next.gep3523, align 1, !tbaa !51
  br label %pred.store.continue3554

pred.store.continue3554:                          ; preds = %pred.store.if3553, %pred.store.continue3552
  %i.qd = extractelement <16 x i1> %i.om, i64 14
  br i1 %i.qd, label %pred.store.if3555, label %pred.store.continue3556

pred.store.if3555:                                ; preds = %pred.store.continue3554
  %i.qe = extractelement <16 x i8> %wide.load3526, i64 14
  %i.qf = and i8 %i.qe, 95
  store i8 %i.qf, ptr %next.gep3524, align 1, !tbaa !51
  br label %pred.store.continue3556

pred.store.continue3556:                          ; preds = %pred.store.if3555, %pred.store.continue3554
  %i.qg = extractelement <16 x i1> %i.om, i64 15
  br i1 %i.qg, label %pred.store.if3557, label %pred.store.continue3558

pred.store.if3557:                                ; preds = %pred.store.continue3556
  %i.qh = extractelement <16 x i8> %wide.load3526, i64 15
  %i.qi = and i8 %i.qh, 95
  store i8 %i.qi, ptr %next.gep3525, align 1, !tbaa !51
  br label %pred.store.continue3558

pred.store.continue3558:                          ; preds = %pred.store.if3557, %pred.store.continue3556
  %index.next3559 = add nuw i64 %index3509, 16    ; 2 uses
  %i.qj = icmp eq i64 %index.next3559, %n.vec3507
  br i1 %i.qj, label %middle.block3560, label %vector.body3508, !llvm.loop !17

middle.block3560:                                 ; preds = %pred.store.continue3558
  %cmp.n3561 = icmp eq i64 %i.ns, %n.vec3507
  br i1 %cmp.n3561, label %upcase.exit1445, label %vec.epilog.iter.check3563

vec.epilog.iter.check3563:                        ; preds = %middle.block3560
  %min.epilog.iters.check3565 = icmp eq i64 %i.nu, 0
  br i1 %min.epilog.iters.check3565, label %.preheader1546.preheader, label %vec.epilog.ph3566, !prof !68

vec.epilog.ph3566:                                ; preds = %vector.main.loop.iter.check3504, %vec.epilog.iter.check3563
  %vec.epilog.resume.val3567 = phi i64 [ %n.vec3507, %vec.epilog.iter.check3563 ], [ 0, %vector.main.loop.iter.check3504 ]
  %n.vec3568 = and i64 %i.ns, -4                  ; 3 uses
  %i.qk = getelementptr i8, ptr %.010381854, i64 %n.vec3568
  %i.ql = and i64 %i.ns, 3
  br label %vec.epilog.vector.body3569

vec.epilog.vector.body3569:                       ; preds = %pred.store.continue3583, %vec.epilog.ph3566
  %index3570 = phi i64 [ %vec.epilog.resume.val3567, %vec.epilog.ph3566 ], [ %index.next3584, %pred.store.continue3583 ] ; 5 uses
  %next.gep3571 = getelementptr i8, ptr %.010381854, i64 %index3570 ; 2 uses
  %i.qm = getelementptr i8, ptr %.010381854, i64 %index3570
  %next.gep3572 = getelementptr i8, ptr %i.qm, i64 1
  %i.qn = getelementptr i8, ptr %.010381854, i64 %index3570
  %next.gep3573 = getelementptr i8, ptr %i.qn, i64 2
  %i.qo = getelementptr i8, ptr %.010381854, i64 %index3570
  %next.gep3574 = getelementptr i8, ptr %i.qo, i64 3
  %wide.load3575 = load <4 x i8>, ptr %next.gep3571, align 1, !tbaa !51 ; 5 uses
  %14 = sext <4 x i8> %wide.load3575 to <4 x i32>
  %15 = add nsw <4 x i32> %14, splat (i32 -97)
  %i.qp = icmp ult <4 x i32> %15, splat (i32 26)  ; 4 uses
  %i.qq = extractelement <4 x i1> %i.qp, i64 0
  br i1 %i.qq, label %pred.store.if3576, label %pred.store.continue3577

pred.store.if3576:                                ; preds = %vec.epilog.vector.body3569
  %i.qr = extractelement <4 x i8> %wide.load3575, i64 0
  %i.qs = and i8 %i.qr, 95
  store i8 %i.qs, ptr %next.gep3571, align 1, !tbaa !51
  br label %pred.store.continue3577

pred.store.continue3577:                          ; preds = %pred.store.if3576, %vec.epilog.vector.body3569
  %i.qt = extractelement <4 x i1> %i.qp, i64 1
  br i1 %i.qt, label %pred.store.if3578, label %pred.store.continue3579

pred.store.if3578:                                ; preds = %pred.store.continue3577
  %i.qu = extractelement <4 x i8> %wide.load3575, i64 1
  %i.qv = and i8 %i.qu, 95
  store i8 %i.qv, ptr %next.gep3572, align 1, !tbaa !51
  br label %pred.store.continue3579

pred.store.continue3579:                          ; preds = %pred.store.if3578, %pred.store.continue3577
  %i.qw = extractelement <4 x i1> %i.qp, i64 2
  br i1 %i.qw, label %pred.store.if3580, label %pred.store.continue3581

pred.store.if3580:                                ; preds = %pred.store.continue3579
  %i.qx = extractelement <4 x i8> %wide.load3575, i64 2
  %i.qy = and i8 %i.qx, 95
  store i8 %i.qy, ptr %next.gep3573, align 1, !tbaa !51
  br label %pred.store.continue3581

pred.store.continue3581:                          ; preds = %pred.store.if3580, %pred.store.continue3579
  %i.qz = extractelement <4 x i1> %i.qp, i64 3
  br i1 %i.qz, label %pred.store.if3582, label %pred.store.continue3583

pred.store.if3582:                                ; preds = %pred.store.continue3581
  %i.ra = extractelement <4 x i8> %wide.load3575, i64 3
  %i.rb = and i8 %i.ra, 95
  store i8 %i.rb, ptr %next.gep3574, align 1, !tbaa !51
  br label %pred.store.continue3583

pred.store.continue3583:                          ; preds = %pred.store.if3582, %pred.store.continue3581
  %index.next3584 = add nuw i64 %index3570, 4     ; 2 uses
  %i.rc = icmp eq i64 %index.next3584, %n.vec3568
  br i1 %i.rc, label %vec.epilog.middle.block3585, label %vec.epilog.vector.body3569, !llvm.loop !18

vec.epilog.middle.block3585:                      ; preds = %pred.store.continue3583
  %cmp.n3586 = icmp eq i64 %i.ns, %n.vec3568
  br i1 %cmp.n3586, label %upcase.exit1445, label %.preheader1546.preheader

.preheader1546.preheader:                         ; preds = %iter.check3562, %vec.epilog.iter.check3563, %vec.epilog.middle.block3585
  %.04.i1442.ph = phi ptr [ %.010381854, %iter.check3562 ], [ %i.nv, %vec.epilog.iter.check3563 ], [ %i.qk, %vec.epilog.middle.block3585 ]
  %.0.i1443.ph = phi i64 [ %i.ns, %iter.check3562 ], [ %i.nw, %vec.epilog.iter.check3563 ], [ %i.ql, %vec.epilog.middle.block3585 ]
  br label %.preheader1546

.preheader1546:                                   ; preds = %.preheader1546.preheader, %bb.an
  %.04.i1442 = phi ptr [ %i.ri, %bb.an ], [ %.04.i1442.ph, %.preheader1546.preheader ] ; 3 uses
  %.0.i1443 = phi i64 [ %i.rj, %bb.an ], [ %.0.i1443.ph, %.preheader1546.preheader ]
  %i.rd = load i8, ptr %.04.i1442, align 1, !tbaa !51 ; 2 uses
  %i.re = sext i8 %i.rd to i32
  %i.rf = add nsw i32 %i.re, -123
  %i.rg = icmp ult i32 %i.rf, -26
  br i1 %i.rg, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.preheader1546
  %i.rh = and i8 %i.rd, 95
  store i8 %i.rh, ptr %.04.i1442, align 1, !tbaa !51
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.preheader1546
  %i.ri = getelementptr inbounds nuw i8, ptr %.04.i1442, i64 1
  %i.rj = add i64 %.0.i1443, -1                   ; 2 uses
  %.not6.i1444 = icmp eq i64 %i.rj, 0
  br i1 %.not6.i1444, label %upcase.exit1445, label %.preheader1546, !llvm.loop !19

upcase.exit1445:                                  ; preds = %bb.an, %middle.block3560, %vec.epilog.middle.block3585, %bb.al
  %i.rk = and i32 %.010832249, 1
  %.not1359 = icmp eq i32 %i.rk, 0
  br i1 %.not1359, label %bb.ao, label %bb.as

bb.ao:                                            ; preds = %upcase.exit1445
  %i.rl = sext i32 %.010892207 to i64             ; 3 uses
  %i.rm = icmp slt i64 %i.ns, %i.rl
  br i1 %i.rm, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.rn = getelementptr inbounds i8, ptr %.010381854, i64 %i.rl ; 3 uses
  %i.ro = icmp ult ptr %i.l, %i.rn
  br i1 %i.ro, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.rp = call ptr @rb_errno_ptr() #12
  store i32 34, ptr %i.rp, align 4, !tbaa !9
  br label %.loopexit1556

bb.ar:                                            ; preds = %bb.ap
  %i.rq = sub i64 0, %i.ns
  %i.rr = getelementptr inbounds i8, ptr %i.rn, i64 %i.rq
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.rr, ptr align 1 %.010381854, i64 %i.ns, i1 false)
  %.not1360 = icmp eq i8 %.010802291, 0
  %narrow1361 = select i1 %.not1360, i8 32, i8 %.010802291
  %i.rs = sub nsw i64 %i.rl, %i.ns
  call void @llvm.memset.p0.i64(ptr align 1 %.010381854, i8 %narrow1361, i64 %i.rs, i1 false)
  br label %.thread

bb.as:                                            ; preds = %bb.ao, %upcase.exit1445
  %i.rt = getelementptr inbounds i8, ptr %.010381854, i64 %i.ns
  br label %.thread

.loopexit2375:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555.jt0, %.preheader1555, %.preheader1555
  %i.ru = phi i8 [ %i.am, %.preheader1555.jt0 ], [ %i.am, %.preheader1555.jt0 ], [ %i.ak, %.preheader1555 ], [ %i.as, %.preheader1555.jt48 ], [ %i.ak, %.preheader1555 ], [ %i.as, %.preheader1555.jt48 ], [ %i.ao, %.preheader1555.jt32 ], [ %i.ao, %.preheader1555.jt32 ]
  %i.rv = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.al, %.preheader1555.jt0 ], [ %i.aj, %.preheader1555 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.an, %.preheader1555.jt32 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802292 = phi i8 [ 0, %.preheader1555.jt0 ], [ 0, %.preheader1555.jt0 ], [ %.01080.be, %.preheader1555 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 48, %.preheader1555.jt48 ], [ 32, %.preheader1555.jt32 ], [ 32, %.preheader1555.jt32 ] ; 3 uses
  %.010832250 = phi i32 [ 0, %.preheader1555.jt0 ], [ 0, %.preheader1555.jt0 ], [ %.01083.be, %.preheader1555 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.010832279.ph, %.preheader1555.jt32 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 2 uses
  %.010892208 = phi i32 [ -1, %.preheader1555.jt0 ], [ -1, %.preheader1555.jt0 ], [ %.01089.be, %.preheader1555 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %i.aq, %.preheader1555.jt48 ], [ %.010892238.ph, %.preheader1555.jt32 ], [ %.010892238.ph, %.preheader1555.jt32 ] ; 4 uses
  %i.rw = icmp eq i8 %i.ru, 71
  %i.rx = load ptr, ptr %i.ab, align 8, !tbaa !57
  %.sink2770.in.idx = select i1 %i.rw, i64 32, i64 0
  %.sink2770.in = getelementptr inbounds nuw i8, ptr %i.rx, i64 %.sink2770.in.idx
  %.sink2770 = load ptr, ptr %.sink2770.in, align 8, !tbaa !70
  %i.ry = load ptr, ptr %3, align 8, !tbaa !60
  %i.rz = call i64 %.sink2770(ptr noundef %i.ry) #12 ; 3 uses
  %i.sa = trunc i64 %i.rz to i1
  br i1 %i.sa, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit2375
  %i.sb = ashr i64 %i.rz, 1                       ; 2 uses
  %i.sc = icmp slt i32 %.010892208, 1
  %i.sd = icmp sgt i64 %i.sb, -1
  %i.se = select i1 %i.sd, i32 4, i32 5
  %.71096 = select i1 %i.sc, i32 %i.se, i32 %.010892208
  %i.sf = and i32 %.010832250, 1
  %.not1355 = icmp eq i32 %i.sf, 0
  %.81097 = select i1 %.not1355, i32 %.71096, i32 1
  %i.sg = ptrtoint ptr %.010381854 to i64
  %i.sh = sub i64 %i.aa, %i.sg
  %i.si = icmp eq i8 %.010802292, 48
  %.not1356 = icmp eq i8 %.010802292, 0
  %i.sj = or i1 %i.si, %.not1356
  %i.sk = select i1 %i.sj, ptr @.str.2, ptr @.str.3
  %i.sl = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.010381854, i64 noundef %i.sh, ptr noundef nonnull %i.sk, i32 noundef %.81097, i64 noundef %i.sb) #12 ; 2 uses
  %i.sm = icmp sgt i32 %i.sl, -1
  %i.sn = zext nneg i32 %i.sl to i64
  %i.so = getelementptr inbounds nuw i8, ptr %.010381854, i64 %i.sn
  br i1 %i.sm, label %.thread, label %.thread1499

bb.au:                                            ; preds = %.loopexit2375
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.sp = icmp slt i32 %.010892208, 1
  %spec.select1391 = select i1 %i.sp, i32 4, i32 %.010892208
  %i.sq = and i32 %.010832250, 1
  %.not1352 = icmp eq i32 %i.sq, 0
  %.121101 = select i1 %.not1352, i32 %spec.select1391, i32 1
  %i.sr = zext nneg i32 %.121101 to i64
  %i.ss = shl nuw nsw i64 %i.sr, 1
  %i.st = or disjoint i64 %i.ss, 1
  store i64 %i.st, ptr %i.c, align 16, !tbaa !64
  store i64 %i.rz, ptr %i.af, align 8, !tbaa !64
  switch i8 %.010802292, label %bb.aw [
    i8 48, label %bb.av
    i8 0, label %bb.av
  ]

bb.av:                                            ; preds = %bb.au, %bb.au
  %i.su = call i64 @rb_str_new_static(ptr noundef nonnull @.str.5, i64 noundef 4) #12
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.sv = call i64 @rb_str_new_static(ptr noundef nonnull @.str.6, i64 noundef 3) #12
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.sink2771 = phi i64 [ %i.sv, %bb.aw ], [ %i.su, %bb.av ]
  %i.sw = call i64 @rb_str_format(i32 noundef 2, ptr noundef nonnull %i.c, i64 noundef %.sink2771) #12
  store i64 %i.sw, ptr %i.d, align 8, !tbaa !64
  %i.sx = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.d) #12
  %i.sy = ptrtoint ptr %.010381854 to i64
  %i.sz = sub i64 %i.aa, %i.sy                    ; 2 uses
  %i.ta = call i64 @strlcpy(ptr noundef %.010381854, ptr noundef nonnull dereferenceable(1) %i.sx, i64 noundef %i.sz) #12 ; 2 uses
  %.not1354 = icmp ugt i64 %i.sz, %i.ta
  %i.tb = getelementptr inbounds nuw i8, ptr %.010381854, i64 %i.ta
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br i1 %.not1354, label %.thread, label %.thread1499

.loopexit2376:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555.jt0, %.preheader1555, %.preheader1555
  %i.tc = phi i8 [ %i.am, %.preheader1555.jt0 ], [ %i.am, %.preheader1555.jt0 ], [ %i.ak, %.preheader1555 ], [ %i.as, %.preheader1555.jt48 ], [ %i.ak, %.preheader1555 ], [ %i.as, %.preheader1555.jt48 ], [ %i.ao, %.preheader1555.jt32 ], [ %i.ao, %.preheader1555.jt32 ]
  %i.td = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.al, %.preheader1555.jt0 ], [ %i.aj, %.preheader1555 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.an, %.preheader1555.jt32 ], [ %i.an, %.preheader1555.jt32 ]
  %.010802293 = phi i8 [ 0, %.preheader1555.jt0 ], [ 0, %.preheader1555.jt0 ], [ %.01080.be, %.preheader1555 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 48, %.preheader1555.jt48 ], [ 32, %.preheader1555.jt32 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832251 = phi i32 [ 0, %.preheader1555.jt0 ], [ 0, %.preheader1555.jt0 ], [ %.01083.be, %.preheader1555 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.010832279.ph, %.preheader1555.jt32 ], [ %.010832279.ph, %.preheader1555.jt32 ]
  %.010892209 = phi i32 [ -1, %.preheader1555.jt0 ], [ -1, %.preheader1555.jt0 ], [ %.01089.be, %.preheader1555 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %i.aq, %.preheader1555.jt48 ], [ %.010892238.ph, %.preheader1555.jt32 ], [ %.010892238.ph, %.preheader1555.jt32 ] ; 2 uses
  %i.te = icmp eq i8 %i.tc, 103
  %i.tf = load ptr, ptr %i.ab, align 8, !tbaa !57
  %.sink2773.in.idx = select i1 %i.te, i64 32, i64 0
  %.sink2773.in = getelementptr inbounds nuw i8, ptr %i.tf, i64 %.sink2773.in.idx
  %.sink2773 = load ptr, ptr %.sink2773.in, align 8, !tbaa !70
  %i.tg = load ptr, ptr %3, align 8, !tbaa !60
  %i.th = call i64 %.sink2773(ptr noundef %i.tg) #12
  %i.ti = call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.th, i64 noundef 37, i32 noundef 1, i64 noundef 201) #12 ; 3 uses
  %i.tj = trunc i64 %i.ti to i1
  br i1 %i.tj, label %bb.ay, label %bb.az
end_hunk_0
begin_hunk_1_@date_strftime_with_tmx:bb.a
  %i.zx = ptrtoint ptr %.010381854 to i64
  %i.zy = sub i64 %i.zx, %i.aa
  %i.zz = icmp sgt i64 %i.zy, -3
  %or.cond1408 = select i1 %.not1327, i1 true, i1 %i.zz
  br i1 %or.cond1408, label %.thread1499, label %bb.bq

bb.bq:                                            ; preds = %.thread2340, %bb.bp
  %i.aaa = phi ptr [ %i.zl, %bb.bp ], [ %i.zw, %.thread2340 ]
  %.21 = phi ptr [ %i.zv, %bb.bp ], [ %.010381854, %.thread2340 ] ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.21, i64 1
  store i8 9, ptr %.21, align 1, !tbaa !51
  br label %.thread

.loopexit2385:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt48, %.preheader1555, %.preheader1555
  %i.aac = phi i8 [ %i.ak, %.preheader1555 ], [ %i.ak, %.preheader1555 ], [ %i.as, %.preheader1555.jt48 ], [ %i.as, %.preheader1555.jt48 ], [ %i.ao, %.preheader1555.jt32 ], [ %i.ao, %.preheader1555.jt32 ] ; 2 uses
  %i.aad = phi ptr [ %i.aj, %.preheader1555 ], [ %i.aj, %.preheader1555 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.an, %.preheader1555.jt32 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802301 = phi i8 [ %.01080.be, %.preheader1555 ], [ %.01080.be, %.preheader1555 ], [ 48, %.preheader1555.jt48 ], [ 48, %.preheader1555.jt48 ], [ 32, %.preheader1555.jt32 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832259 = phi i32 [ %.01083.be, %.preheader1555 ], [ %.01083.be, %.preheader1555 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.010832279.ph, %.preheader1555.jt32 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 3 uses
  %.010892218 = phi i32 [ %.01089.be, %.preheader1555 ], [ %.01089.be, %.preheader1555 ], [ %i.aq, %.preheader1555.jt48 ], [ %i.aq, %.preheader1555.jt48 ], [ %.010892238.ph, %.preheader1555.jt32 ], [ %.010892238.ph, %.preheader1555.jt32 ] ; 2 uses
  %i.aae = icmp ne i8 %i.aac, 112
  %i.aaf = and i32 %.010832259, 2
  %.not1325 = icmp eq i32 %i.aaf, 0
  %or.cond1409 = select i1 %i.aae, i1 true, i1 %.not1325
  br i1 %or.cond1409, label %.thread2346, label %bb.br

.thread2346:                                      ; preds = %.preheader1555.jt0, %.preheader1555.jt0, %.loopexit2385
  %.0108922182359 = phi i32 [ %.010892218, %.loopexit2385 ], [ -1, %.preheader1555.jt0 ], [ -1, %.preheader1555.jt0 ] ; 2 uses
  %.0108322592356 = phi i32 [ %.010832259, %.loopexit2385 ], [ 0, %.preheader1555.jt0 ], [ 0, %.preheader1555.jt0 ] ; 3 uses
  %.0108023012354 = phi i8 [ %.010802301, %.loopexit2385 ], [ 0, %.preheader1555.jt0 ], [ 0, %.preheader1555.jt0 ] ; 2 uses
  %i.aag = phi ptr [ %i.aad, %.loopexit2385 ], [ %i.al, %.preheader1555.jt0 ], [ %i.al, %.preheader1555.jt0 ] ; 2 uses
  %i.aah = phi i8 [ %i.aac, %.loopexit2385 ], [ %i.am, %.preheader1555.jt0 ], [ %i.am, %.preheader1555.jt0 ]
  %i.aai = icmp eq i8 %i.aah, 80
  %i.aaj = and i32 %.0108322592356, 10
  %.not1326 = icmp eq i32 %i.aaj, 0
  %or.cond1410 = select i1 %i.aai, i1 %.not1326, i1 false
  br i1 %or.cond1410, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.thread2346, %.loopexit2385
  %.0108922182358 = phi i32 [ %.0108922182359, %.thread2346 ], [ %.010892218, %.loopexit2385 ]
  %.0108322592355 = phi i32 [ %.0108322592356, %.thread2346 ], [ %.010832259, %.loopexit2385 ]
  %.0108023012353 = phi i8 [ %.0108023012354, %.thread2346 ], [ %.010802301, %.loopexit2385 ]
  %i.aak = phi ptr [ %i.aag, %.thread2346 ], [ %i.aad, %.loopexit2385 ]
  %i.aal = and i32 %.0108322592355, -15
  %i.aam = or disjoint i32 %i.aal, 4
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.thread2346
  %.0108922182357 = phi i32 [ %.0108922182358, %bb.br ], [ %.0108922182359, %.thread2346 ]
  %.0108023012352 = phi i8 [ %.0108023012353, %bb.br ], [ %.0108023012354, %.thread2346 ]
  %i.aan = phi ptr [ %i.aak, %bb.br ], [ %i.aag, %.thread2346 ]
  %.31086 = phi i32 [ %i.aam, %bb.br ], [ %.0108322592356, %.thread2346 ]
  %i.aao = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 80
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !71
  %i.aar = load ptr, ptr %3, align 8, !tbaa !60
  %i.aas = call i32 %i.aaq(ptr noundef %i.aar) #12
  %i.aat = icmp slt i32 %i.aas, 12
  %date_strftime_with_tmx.ampm. = select i1 %i.aat, ptr @date_strftime_with_tmx.ampm, ptr getelementptr inbounds nuw (i8, ptr @date_strftime_with_tmx.ampm, i64 3)
  br label %.thread1513

.loopexit2386:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.aau = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802302 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 3 uses
  %.010832260 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 2 uses
  %.010892219 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ] ; 2 uses
  %i.aav = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aav, i64 120
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !76
  %i.aay = load ptr, ptr %3, align 8, !tbaa !60
  %i.aaz = call i64 %i.aax(ptr noundef %i.aay) #12 ; 2 uses
  %i.aba = trunc i64 %i.aaz to i1
  br i1 %i.aba, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.loopexit2386
  %spec.select1411 = call i32 @llvm.smax.i32(i32 %.010892219, i32 1)
  %i.abb = and i32 %.010832260, 1
  %.not1323 = icmp eq i32 %i.abb, 0
  %.271116 = select i1 %.not1323, i32 %spec.select1411, i32 1
  %i.abc = ptrtoint ptr %.010381854 to i64
  %i.abd = sub i64 %i.aa, %i.abc
  %i.abe = icmp eq i8 %.010802302, 48
  %.not1324 = icmp eq i8 %.010802302, 0
  %i.abf = or i1 %i.abe, %.not1324
  %i.abg = select i1 %i.abf, ptr @.str.2, ptr @.str.3
  %i.abh = ashr i64 %i.aaz, 1
  %i.abi = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.010381854, i64 noundef %i.abd, ptr noundef nonnull %i.abg, i32 noundef %.271116, i64 noundef %i.abh) #12 ; 2 uses
  %i.abj = icmp sgt i32 %i.abi, -1
  %i.abk = zext nneg i32 %i.abi to i64
  %i.abl = getelementptr inbounds nuw i8, ptr %.010381854, i64 %i.abk
  br i1 %i.abj, label %.thread, label %.thread1499

bb.bu:                                            ; preds = %.loopexit2386
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  %spec.select1412 = call i32 @llvm.smax.i32(i32 %.010892219, i32 1)
  %i.abm = and i32 %.010832260, 1
  %.not1320 = icmp eq i32 %i.abm, 0
  %i.abn = shl nuw i32 %spec.select1412, 1
  %i.abo = or disjoint i32 %i.abn, 1
  %i.abp = select i1 %.not1320, i32 %i.abo, i32 3
  %i.abq = zext i32 %i.abp to i64
  store i64 %i.abq, ptr %i.g, align 16, !tbaa !64
  %i.abr = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 120
  %i.abt = load ptr, ptr %i.abs, align 8, !tbaa !76
  %i.abu = load ptr, ptr %3, align 8, !tbaa !60
  %i.abv = call i64 %i.abt(ptr noundef %i.abu) #12
  store i64 %i.abv, ptr %i.ad, align 8, !tbaa !64
  switch i8 %.010802302, label %bb.bw [
    i8 48, label %bb.bv
    i8 0, label %bb.bv
  ]

bb.bv:                                            ; preds = %bb.bu, %bb.bu
  %i.abw = call i64 @rb_str_new_static(ptr noundef nonnull @.str.5, i64 noundef 4) #12
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.abx = call i64 @rb_str_new_static(ptr noundef nonnull @.str.6, i64 noundef 3) #12
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.sink2774 = phi i64 [ %i.abx, %bb.bw ], [ %i.abw, %bb.bv ]
  %i.aby = call i64 @rb_str_format(i32 noundef 2, ptr noundef nonnull %i.g, i64 noundef %.sink2774) #12
  store i64 %i.aby, ptr %i.h, align 8, !tbaa !64
  %i.abz = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.h) #12
  %i.aca = ptrtoint ptr %.010381854 to i64
  %i.acb = sub i64 %i.aa, %i.aca                  ; 2 uses
  %i.acc = call i64 @strlcpy(ptr noundef %.010381854, ptr noundef nonnull dereferenceable(1) %i.abz, i64 noundef %i.acb) #12 ; 2 uses
  %.not1322 = icmp ugt i64 %i.acb, %i.acc
  %i.acd = getelementptr inbounds nuw i8, ptr %.010381854, i64 %i.acc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br i1 %.not1322, label %.thread, label %.thread1499

.loopexit2387:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.ace = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802303 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832261 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 2 uses
  %.010892220 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ]
  %i.acf = ptrtoint ptr %.010381854 to i64
  %i.acg = sub i64 %i.aa, %i.acf
  %i.ach = call fastcc i64 @date_strftime_with_tmx(ptr noundef %.010381854, i64 noundef %i.acg, ptr noundef nonnull @.str.11, ptr noundef %3) ; 16 uses
  %.not1315 = icmp eq i64 %i.ach, 0
  br i1 %.not1315, label %.loopexit1556, label %bb.by

bb.by:                                            ; preds = %.loopexit2387
  %i.aci = and i32 %.010832261, 8
  %.not1316 = icmp eq i32 %i.aci, 0
  br i1 %.not1316, label %upcase.exit1456, label %iter.check3648

iter.check3648:                                   ; preds = %bb.by
  %min.iters.check3589 = icmp ult i64 %i.ach, 4
  br i1 %min.iters.check3589, label %.preheader1548.preheader, label %vector.main.loop.iter.check3590

vector.main.loop.iter.check3590:                  ; preds = %iter.check3648
  %min.iters.check3591 = icmp ult i64 %i.ach, 16
  br i1 %min.iters.check3591, label %vec.epilog.ph3652, label %vector.ph3592

vector.ph3592:                                    ; preds = %vector.main.loop.iter.check3590
  %i.acj = and i64 %i.ach, 12
  %n.vec3593 = and i64 %i.ach, -16                ; 4 uses
  %i.ack = getelementptr i8, ptr %.010381854, i64 %n.vec3593
  %i.acl = and i64 %i.ach, 15
  br label %vector.body3594

vector.body3594:                                  ; preds = %vector.ph3592, %pred.store.continue3644
  %index3595 = phi i64 [ 0, %vector.ph3592 ], [ %index.next3645, %pred.store.continue3644 ] ; 17 uses
  %next.gep3596 = getelementptr i8, ptr %.010381854, i64 %index3595 ; 2 uses
  %i.acm = getelementptr i8, ptr %.010381854, i64 %index3595
  %next.gep3597 = getelementptr i8, ptr %i.acm, i64 1
  %i.acn = getelementptr i8, ptr %.010381854, i64 %index3595
  %next.gep3598 = getelementptr i8, ptr %i.acn, i64 2
  %i.aco = getelementptr i8, ptr %.010381854, i64 %index3595
  %next.gep3599 = getelementptr i8, ptr %i.aco, i64 3
  %i.acp = getelementptr i8, ptr %.010381854, i64 %index3595
  %next.gep3600 = getelementptr i8, ptr %i.acp, i64 4
  %i.acq = getelementptr i8, ptr %.010381854, i64 %index3595
  %next.gep3601 = getelementptr i8, ptr %i.acq, i64 5
  %i.acr = getelementptr i8, ptr %.010381854, i64 %index3595
  %next.gep3602 = getelementptr i8, ptr %i.acr, i64 6
  %i.acs = getelementptr i8, ptr %.010381854, i64 %index3595
  %next.gep3603 = getelementptr i8, ptr %i.acs, i64 7
  %i.act = getelementptr i8, ptr %.010381854, i64 %index3595
  %next.gep3604 = getelementptr i8, ptr %i.act, i64 8
  %i.acu = getelementptr i8, ptr %.010381854, i64 %index3595
  %next.gep3605 = getelementptr i8, ptr %i.acu, i64 9
  %i.acv = getelementptr i8, ptr %.010381854, i64 %index3595
  %next.gep3606 = getelementptr i8, ptr %i.acv, i64 10
  %i.acw = getelementptr i8, ptr %.010381854, i64 %index3595
  %next.gep3607 = getelementptr i8, ptr %i.acw, i64 11
  %i.acx = getelementptr i8, ptr %.010381854, i64 %index3595
  %next.gep3608 = getelementptr i8, ptr %i.acx, i64 12
  %i.acy = getelementptr i8, ptr %.010381854, i64 %index3595
  %next.gep3609 = getelementptr i8, ptr %i.acy, i64 13
  %i.acz = getelementptr i8, ptr %.010381854, i64 %index3595
  %next.gep3610 = getelementptr i8, ptr %i.acz, i64 14
  %i.ada = getelementptr i8, ptr %.010381854, i64 %index3595
  %next.gep3611 = getelementptr i8, ptr %i.ada, i64 15
  %wide.load3612 = load <16 x i8>, ptr %next.gep3596, align 1, !tbaa !51 ; 17 uses
  %16 = sext <16 x i8> %wide.load3612 to <16 x i32>
  %17 = add nsw <16 x i32> %16, splat (i32 -97)
  %i.adb = icmp ult <16 x i32> %17, splat (i32 26) ; 16 uses
  %i.adc = extractelement <16 x i1> %i.adb, i64 0
  br i1 %i.adc, label %pred.store.if3613, label %pred.store.continue3614

pred.store.if3613:                                ; preds = %vector.body3594
  %i.add = extractelement <16 x i8> %wide.load3612, i64 0
  %i.ade = and i8 %i.add, 95
  store i8 %i.ade, ptr %next.gep3596, align 1, !tbaa !51
  br label %pred.store.continue3614

pred.store.continue3614:                          ; preds = %pred.store.if3613, %vector.body3594
  %i.adf = extractelement <16 x i1> %i.adb, i64 1
  br i1 %i.adf, label %pred.store.if3615, label %pred.store.continue3616

pred.store.if3615:                                ; preds = %pred.store.continue3614
  %i.adg = extractelement <16 x i8> %wide.load3612, i64 1
  %i.adh = and i8 %i.adg, 95
  store i8 %i.adh, ptr %next.gep3597, align 1, !tbaa !51
  br label %pred.store.continue3616

pred.store.continue3616:                          ; preds = %pred.store.if3615, %pred.store.continue3614
  %i.adi = extractelement <16 x i1> %i.adb, i64 2
  br i1 %i.adi, label %pred.store.if3617, label %pred.store.continue3618

pred.store.if3617:                                ; preds = %pred.store.continue3616
  %i.adj = extractelement <16 x i8> %wide.load3612, i64 2
  %i.adk = and i8 %i.adj, 95
  store i8 %i.adk, ptr %next.gep3598, align 1, !tbaa !51
  br label %pred.store.continue3618

pred.store.continue3618:                          ; preds = %pred.store.if3617, %pred.store.continue3616
  %i.adl = extractelement <16 x i1> %i.adb, i64 3
  br i1 %i.adl, label %pred.store.if3619, label %pred.store.continue3620

pred.store.if3619:                                ; preds = %pred.store.continue3618
  %i.adm = extractelement <16 x i8> %wide.load3612, i64 3
  %i.adn = and i8 %i.adm, 95
  store i8 %i.adn, ptr %next.gep3599, align 1, !tbaa !51
  br label %pred.store.continue3620

pred.store.continue3620:                          ; preds = %pred.store.if3619, %pred.store.continue3618
  %i.ado = extractelement <16 x i1> %i.adb, i64 4
  br i1 %i.ado, label %pred.store.if3621, label %pred.store.continue3622

pred.store.if3621:                                ; preds = %pred.store.continue3620
  %i.adp = extractelement <16 x i8> %wide.load3612, i64 4
  %i.adq = and i8 %i.adp, 95
  store i8 %i.adq, ptr %next.gep3600, align 1, !tbaa !51
  br label %pred.store.continue3622

pred.store.continue3622:                          ; preds = %pred.store.if3621, %pred.store.continue3620
  %i.adr = extractelement <16 x i1> %i.adb, i64 5
  br i1 %i.adr, label %pred.store.if3623, label %pred.store.continue3624

pred.store.if3623:                                ; preds = %pred.store.continue3622
  %i.ads = extractelement <16 x i8> %wide.load3612, i64 5
  %i.adt = and i8 %i.ads, 95
  store i8 %i.adt, ptr %next.gep3601, align 1, !tbaa !51
  br label %pred.store.continue3624

pred.store.continue3624:                          ; preds = %pred.store.if3623, %pred.store.continue3622
  %i.adu = extractelement <16 x i1> %i.adb, i64 6
  br i1 %i.adu, label %pred.store.if3625, label %pred.store.continue3626

pred.store.if3625:                                ; preds = %pred.store.continue3624
  %i.adv = extractelement <16 x i8> %wide.load3612, i64 6
  %i.adw = and i8 %i.adv, 95
  store i8 %i.adw, ptr %next.gep3602, align 1, !tbaa !51
  br label %pred.store.continue3626

pred.store.continue3626:                          ; preds = %pred.store.if3625, %pred.store.continue3624
  %i.adx = extractelement <16 x i1> %i.adb, i64 7
  br i1 %i.adx, label %pred.store.if3627, label %pred.store.continue3628

pred.store.if3627:                                ; preds = %pred.store.continue3626
  %i.ady = extractelement <16 x i8> %wide.load3612, i64 7
  %i.adz = and i8 %i.ady, 95
  store i8 %i.adz, ptr %next.gep3603, align 1, !tbaa !51
  br label %pred.store.continue3628

pred.store.continue3628:                          ; preds = %pred.store.if3627, %pred.store.continue3626
  %i.aea = extractelement <16 x i1> %i.adb, i64 8
  br i1 %i.aea, label %pred.store.if3629, label %pred.store.continue3630

pred.store.if3629:                                ; preds = %pred.store.continue3628
  %i.aeb = extractelement <16 x i8> %wide.load3612, i64 8
  %i.aec = and i8 %i.aeb, 95
  store i8 %i.aec, ptr %next.gep3604, align 1, !tbaa !51
  br label %pred.store.continue3630

pred.store.continue3630:                          ; preds = %pred.store.if3629, %pred.store.continue3628
  %i.aed = extractelement <16 x i1> %i.adb, i64 9
  br i1 %i.aed, label %pred.store.if3631, label %pred.store.continue3632

pred.store.if3631:                                ; preds = %pred.store.continue3630
  %i.aee = extractelement <16 x i8> %wide.load3612, i64 9
  %i.aef = and i8 %i.aee, 95
  store i8 %i.aef, ptr %next.gep3605, align 1, !tbaa !51
  br label %pred.store.continue3632

pred.store.continue3632:                          ; preds = %pred.store.if3631, %pred.store.continue3630
  %i.aeg = extractelement <16 x i1> %i.adb, i64 10
  br i1 %i.aeg, label %pred.store.if3633, label %pred.store.continue3634

pred.store.if3633:                                ; preds = %pred.store.continue3632
  %i.aeh = extractelement <16 x i8> %wide.load3612, i64 10
  %i.aei = and i8 %i.aeh, 95
  store i8 %i.aei, ptr %next.gep3606, align 1, !tbaa !51
  br label %pred.store.continue3634

pred.store.continue3634:                          ; preds = %pred.store.if3633, %pred.store.continue3632
  %i.aej = extractelement <16 x i1> %i.adb, i64 11
  br i1 %i.aej, label %pred.store.if3635, label %pred.store.continue3636

pred.store.if3635:                                ; preds = %pred.store.continue3634
  %i.aek = extractelement <16 x i8> %wide.load3612, i64 11
  %i.ael = and i8 %i.aek, 95
  store i8 %i.ael, ptr %next.gep3607, align 1, !tbaa !51
  br label %pred.store.continue3636

pred.store.continue3636:                          ; preds = %pred.store.if3635, %pred.store.continue3634
  %i.aem = extractelement <16 x i1> %i.adb, i64 12
  br i1 %i.aem, label %pred.store.if3637, label %pred.store.continue3638

pred.store.if3637:                                ; preds = %pred.store.continue3636
  %i.aen = extractelement <16 x i8> %wide.load3612, i64 12
  %i.aeo = and i8 %i.aen, 95
  store i8 %i.aeo, ptr %next.gep3608, align 1, !tbaa !51
  br label %pred.store.continue3638

pred.store.continue3638:                          ; preds = %pred.store.if3637, %pred.store.continue3636
  %i.aep = extractelement <16 x i1> %i.adb, i64 13
  br i1 %i.aep, label %pred.store.if3639, label %pred.store.continue3640

pred.store.if3639:                                ; preds = %pred.store.continue3638
  %i.aeq = extractelement <16 x i8> %wide.load3612, i64 13
  %i.aer = and i8 %i.aeq, 95
  store i8 %i.aer, ptr %next.gep3609, align 1, !tbaa !51
  br label %pred.store.continue3640

pred.store.continue3640:                          ; preds = %pred.store.if3639, %pred.store.continue3638
  %i.aes = extractelement <16 x i1> %i.adb, i64 14
  br i1 %i.aes, label %pred.store.if3641, label %pred.store.continue3642

pred.store.if3641:                                ; preds = %pred.store.continue3640
  %i.aet = extractelement <16 x i8> %wide.load3612, i64 14
  %i.aeu = and i8 %i.aet, 95
  store i8 %i.aeu, ptr %next.gep3610, align 1, !tbaa !51
  br label %pred.store.continue3642

pred.store.continue3642:                          ; preds = %pred.store.if3641, %pred.store.continue3640
  %i.aev = extractelement <16 x i1> %i.adb, i64 15
  br i1 %i.aev, label %pred.store.if3643, label %pred.store.continue3644

pred.store.if3643:                                ; preds = %pred.store.continue3642
  %i.aew = extractelement <16 x i8> %wide.load3612, i64 15
  %i.aex = and i8 %i.aew, 95
  store i8 %i.aex, ptr %next.gep3611, align 1, !tbaa !51
  br label %pred.store.continue3644

pred.store.continue3644:                          ; preds = %pred.store.if3643, %pred.store.continue3642
  %index.next3645 = add nuw i64 %index3595, 16    ; 2 uses
  %i.aey = icmp eq i64 %index.next3645, %n.vec3593
  br i1 %i.aey, label %middle.block3646, label %vector.body3594, !llvm.loop !23

middle.block3646:                                 ; preds = %pred.store.continue3644
  %cmp.n3647 = icmp eq i64 %i.ach, %n.vec3593
  br i1 %cmp.n3647, label %upcase.exit1456, label %vec.epilog.iter.check3649

vec.epilog.iter.check3649:                        ; preds = %middle.block3646
  %min.epilog.iters.check3651 = icmp eq i64 %i.acj, 0
  br i1 %min.epilog.iters.check3651, label %.preheader1548.preheader, label %vec.epilog.ph3652, !prof !68

vec.epilog.ph3652:                                ; preds = %vector.main.loop.iter.check3590, %vec.epilog.iter.check3649
  %vec.epilog.resume.val3653 = phi i64 [ %n.vec3593, %vec.epilog.iter.check3649 ], [ 0, %vector.main.loop.iter.check3590 ]
  %n.vec3654 = and i64 %i.ach, -4                 ; 3 uses
  %i.aez = getelementptr i8, ptr %.010381854, i64 %n.vec3654
  %i.afa = and i64 %i.ach, 3
  br label %vec.epilog.vector.body3655

vec.epilog.vector.body3655:                       ; preds = %pred.store.continue3669, %vec.epilog.ph3652
  %index3656 = phi i64 [ %vec.epilog.resume.val3653, %vec.epilog.ph3652 ], [ %index.next3670, %pred.store.continue3669 ] ; 5 uses
  %next.gep3657 = getelementptr i8, ptr %.010381854, i64 %index3656 ; 2 uses
  %i.afb = getelementptr i8, ptr %.010381854, i64 %index3656
  %next.gep3658 = getelementptr i8, ptr %i.afb, i64 1
  %i.afc = getelementptr i8, ptr %.010381854, i64 %index3656
  %next.gep3659 = getelementptr i8, ptr %i.afc, i64 2
  %i.afd = getelementptr i8, ptr %.010381854, i64 %index3656
  %next.gep3660 = getelementptr i8, ptr %i.afd, i64 3
  %wide.load3661 = load <4 x i8>, ptr %next.gep3657, align 1, !tbaa !51 ; 5 uses
  %18 = sext <4 x i8> %wide.load3661 to <4 x i32>
  %19 = add nsw <4 x i32> %18, splat (i32 -97)
  %i.afe = icmp ult <4 x i32> %19, splat (i32 26) ; 4 uses
  %i.aff = extractelement <4 x i1> %i.afe, i64 0
  br i1 %i.aff, label %pred.store.if3662, label %pred.store.continue3663

pred.store.if3662:                                ; preds = %vec.epilog.vector.body3655
  %i.afg = extractelement <4 x i8> %wide.load3661, i64 0
  %i.afh = and i8 %i.afg, 95
  store i8 %i.afh, ptr %next.gep3657, align 1, !tbaa !51
  br label %pred.store.continue3663

pred.store.continue3663:                          ; preds = %pred.store.if3662, %vec.epilog.vector.body3655
  %i.afi = extractelement <4 x i1> %i.afe, i64 1
  br i1 %i.afi, label %pred.store.if3664, label %pred.store.continue3665

pred.store.if3664:                                ; preds = %pred.store.continue3663
  %i.afj = extractelement <4 x i8> %wide.load3661, i64 1
  %i.afk = and i8 %i.afj, 95
  store i8 %i.afk, ptr %next.gep3658, align 1, !tbaa !51
  br label %pred.store.continue3665

pred.store.continue3665:                          ; preds = %pred.store.if3664, %pred.store.continue3663
  %i.afl = extractelement <4 x i1> %i.afe, i64 2
  br i1 %i.afl, label %pred.store.if3666, label %pred.store.continue3667

pred.store.if3666:                                ; preds = %pred.store.continue3665
  %i.afm = extractelement <4 x i8> %wide.load3661, i64 2
  %i.afn = and i8 %i.afm, 95
  store i8 %i.afn, ptr %next.gep3659, align 1, !tbaa !51
  br label %pred.store.continue3667

pred.store.continue3667:                          ; preds = %pred.store.if3666, %pred.store.continue3665
  %i.afo = extractelement <4 x i1> %i.afe, i64 3
  br i1 %i.afo, label %pred.store.if3668, label %pred.store.continue3669

pred.store.if3668:                                ; preds = %pred.store.continue3667
  %i.afp = extractelement <4 x i8> %wide.load3661, i64 3
  %i.afq = and i8 %i.afp, 95
  store i8 %i.afq, ptr %next.gep3660, align 1, !tbaa !51
  br label %pred.store.continue3669

pred.store.continue3669:                          ; preds = %pred.store.if3668, %pred.store.continue3667
  %index.next3670 = add nuw i64 %index3656, 4     ; 2 uses
  %i.afr = icmp eq i64 %index.next3670, %n.vec3654
  br i1 %i.afr, label %vec.epilog.middle.block3671, label %vec.epilog.vector.body3655, !llvm.loop !24

vec.epilog.middle.block3671:                      ; preds = %pred.store.continue3669
  %cmp.n3672 = icmp eq i64 %i.ach, %n.vec3654
  br i1 %cmp.n3672, label %upcase.exit1456, label %.preheader1548.preheader

.preheader1548.preheader:                         ; preds = %iter.check3648, %vec.epilog.iter.check3649, %vec.epilog.middle.block3671
  %.04.i1453.ph = phi ptr [ %.010381854, %iter.check3648 ], [ %i.ack, %vec.epilog.iter.check3649 ], [ %i.aez, %vec.epilog.middle.block3671 ]
  %.0.i1454.ph = phi i64 [ %i.ach, %iter.check3648 ], [ %i.acl, %vec.epilog.iter.check3649 ], [ %i.afa, %vec.epilog.middle.block3671 ]
  br label %.preheader1548

.preheader1548:                                   ; preds = %.preheader1548.preheader, %bb.ca
  %.04.i1453 = phi ptr [ %i.afx, %bb.ca ], [ %.04.i1453.ph, %.preheader1548.preheader ] ; 3 uses
  %.0.i1454 = phi i64 [ %i.afy, %bb.ca ], [ %.0.i1454.ph, %.preheader1548.preheader ]
  %i.afs = load i8, ptr %.04.i1453, align 1, !tbaa !51 ; 2 uses
  %i.aft = sext i8 %i.afs to i32
  %i.afu = add nsw i32 %i.aft, -123
  %i.afv = icmp ult i32 %i.afu, -26
  br i1 %i.afv, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %.preheader1548
  %i.afw = and i8 %i.afs, 95
  store i8 %i.afw, ptr %.04.i1453, align 1, !tbaa !51
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %.preheader1548
  %i.afx = getelementptr inbounds nuw i8, ptr %.04.i1453, i64 1
  %i.afy = add i64 %.0.i1454, -1                  ; 2 uses
  %.not6.i1455 = icmp eq i64 %i.afy, 0
  br i1 %.not6.i1455, label %upcase.exit1456, label %.preheader1548, !llvm.loop !25

upcase.exit1456:                                  ; preds = %bb.ca, %middle.block3646, %vec.epilog.middle.block3671, %bb.by
  %i.afz = and i32 %.010832261, 1
  %.not1317 = icmp eq i32 %i.afz, 0
  br i1 %.not1317, label %bb.cb, label %bb.cf

bb.cb:                                            ; preds = %upcase.exit1456
  %i.aga = sext i32 %.010892220 to i64            ; 3 uses
  %i.agb = icmp slt i64 %i.ach, %i.aga
  br i1 %i.agb, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %bb.cb
  %i.agc = getelementptr inbounds i8, ptr %.010381854, i64 %i.aga ; 3 uses
  %i.agd = icmp ult ptr %i.l, %i.agc
  br i1 %i.agd, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.age = call ptr @rb_errno_ptr() #12
  store i32 34, ptr %i.age, align 4, !tbaa !9
  br label %.loopexit1556

bb.ce:                                            ; preds = %bb.cc
  %i.agf = sub i64 0, %i.ach
  %i.agg = getelementptr inbounds i8, ptr %i.agc, i64 %i.agf
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.agg, ptr align 1 %.010381854, i64 %i.ach, i1 false)
  %.not1318 = icmp eq i8 %.010802303, 0
  %narrow1319 = select i1 %.not1318, i8 32, i8 %.010802303
  %i.agh = sub nsw i64 %i.aga, %i.ach
  call void @llvm.memset.p0.i64(ptr align 1 %.010381854, i8 %narrow1319, i64 %i.agh, i1 false)
  br label %.thread

bb.cf:                                            ; preds = %bb.cb, %upcase.exit1456
  %i.agi = getelementptr inbounds i8, ptr %.010381854, i64 %i.ach
  br label %.thread

.loopexit2388:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.agj = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802304 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832262 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 2 uses
  %.010892221 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ]
  %i.agk = ptrtoint ptr %.010381854 to i64
  %i.agl = sub i64 %i.aa, %i.agk
  %i.agm = call fastcc i64 @date_strftime_with_tmx(ptr noundef %.010381854, i64 noundef %i.agl, ptr noundef nonnull @.str.12, ptr noundef %3) ; 16 uses
  %.not1310 = icmp eq i64 %i.agm, 0
  br i1 %.not1310, label %.loopexit1556, label %bb.cg

bb.cg:                                            ; preds = %.loopexit2388
  %i.agn = and i32 %.010832262, 8
  %.not1311 = icmp eq i32 %i.agn, 0
  br i1 %.not1311, label %upcase.exit1460, label %iter.check3734

iter.check3734:                                   ; preds = %bb.cg
  %min.iters.check3675 = icmp ult i64 %i.agm, 4
  br i1 %min.iters.check3675, label %.preheader1549.preheader, label %vector.main.loop.iter.check3676

vector.main.loop.iter.check3676:                  ; preds = %iter.check3734
  %min.iters.check3677 = icmp ult i64 %i.agm, 16
  br i1 %min.iters.check3677, label %vec.epilog.ph3738, label %vector.ph3678

vector.ph3678:                                    ; preds = %vector.main.loop.iter.check3676
  %i.ago = and i64 %i.agm, 12
  %n.vec3679 = and i64 %i.agm, -16                ; 4 uses
  %i.agp = getelementptr i8, ptr %.010381854, i64 %n.vec3679
  %i.agq = and i64 %i.agm, 15
  br label %vector.body3680

vector.body3680:                                  ; preds = %vector.ph3678, %pred.store.continue3730
  %index3681 = phi i64 [ 0, %vector.ph3678 ], [ %index.next3731, %pred.store.continue3730 ] ; 17 uses
  %next.gep3682 = getelementptr i8, ptr %.010381854, i64 %index3681 ; 2 uses
  %i.agr = getelementptr i8, ptr %.010381854, i64 %index3681
  %next.gep3683 = getelementptr i8, ptr %i.agr, i64 1
  %i.ags = getelementptr i8, ptr %.010381854, i64 %index3681
  %next.gep3684 = getelementptr i8, ptr %i.ags, i64 2
  %i.agt = getelementptr i8, ptr %.010381854, i64 %index3681
  %next.gep3685 = getelementptr i8, ptr %i.agt, i64 3
  %i.agu = getelementptr i8, ptr %.010381854, i64 %index3681
  %next.gep3686 = getelementptr i8, ptr %i.agu, i64 4
  %i.agv = getelementptr i8, ptr %.010381854, i64 %index3681
  %next.gep3687 = getelementptr i8, ptr %i.agv, i64 5
  %i.agw = getelementptr i8, ptr %.010381854, i64 %index3681
  %next.gep3688 = getelementptr i8, ptr %i.agw, i64 6
  %i.agx = getelementptr i8, ptr %.010381854, i64 %index3681
  %next.gep3689 = getelementptr i8, ptr %i.agx, i64 7
  %i.agy = getelementptr i8, ptr %.010381854, i64 %index3681
  %next.gep3690 = getelementptr i8, ptr %i.agy, i64 8
  %i.agz = getelementptr i8, ptr %.010381854, i64 %index3681
  %next.gep3691 = getelementptr i8, ptr %i.agz, i64 9
  %i.aha = getelementptr i8, ptr %.010381854, i64 %index3681
  %next.gep3692 = getelementptr i8, ptr %i.aha, i64 10
  %i.ahb = getelementptr i8, ptr %.010381854, i64 %index3681
  %next.gep3693 = getelementptr i8, ptr %i.ahb, i64 11
  %i.ahc = getelementptr i8, ptr %.010381854, i64 %index3681
  %next.gep3694 = getelementptr i8, ptr %i.ahc, i64 12
  %i.ahd = getelementptr i8, ptr %.010381854, i64 %index3681
  %next.gep3695 = getelementptr i8, ptr %i.ahd, i64 13
  %i.ahe = getelementptr i8, ptr %.010381854, i64 %index3681
  %next.gep3696 = getelementptr i8, ptr %i.ahe, i64 14
  %i.ahf = getelementptr i8, ptr %.010381854, i64 %index3681
  %next.gep3697 = getelementptr i8, ptr %i.ahf, i64 15
  %wide.load3698 = load <16 x i8>, ptr %next.gep3682, align 1, !tbaa !51 ; 17 uses
  %20 = sext <16 x i8> %wide.load3698 to <16 x i32>
  %21 = add nsw <16 x i32> %20, splat (i32 -97)
  %i.ahg = icmp ult <16 x i32> %21, splat (i32 26) ; 16 uses
  %i.ahh = extractelement <16 x i1> %i.ahg, i64 0
  br i1 %i.ahh, label %pred.store.if3699, label %pred.store.continue3700

pred.store.if3699:                                ; preds = %vector.body3680
  %i.ahi = extractelement <16 x i8> %wide.load3698, i64 0
  %i.ahj = and i8 %i.ahi, 95
  store i8 %i.ahj, ptr %next.gep3682, align 1, !tbaa !51
  br label %pred.store.continue3700

pred.store.continue3700:                          ; preds = %pred.store.if3699, %vector.body3680
  %i.ahk = extractelement <16 x i1> %i.ahg, i64 1
  br i1 %i.ahk, label %pred.store.if3701, label %pred.store.continue3702

pred.store.if3701:                                ; preds = %pred.store.continue3700
  %i.ahl = extractelement <16 x i8> %wide.load3698, i64 1
  %i.ahm = and i8 %i.ahl, 95
  store i8 %i.ahm, ptr %next.gep3683, align 1, !tbaa !51
  br label %pred.store.continue3702

pred.store.continue3702:                          ; preds = %pred.store.if3701, %pred.store.continue3700
  %i.ahn = extractelement <16 x i1> %i.ahg, i64 2
  br i1 %i.ahn, label %pred.store.if3703, label %pred.store.continue3704

pred.store.if3703:                                ; preds = %pred.store.continue3702
  %i.aho = extractelement <16 x i8> %wide.load3698, i64 2
  %i.ahp = and i8 %i.aho, 95
  store i8 %i.ahp, ptr %next.gep3684, align 1, !tbaa !51
  br label %pred.store.continue3704

pred.store.continue3704:                          ; preds = %pred.store.if3703, %pred.store.continue3702
  %i.ahq = extractelement <16 x i1> %i.ahg, i64 3
  br i1 %i.ahq, label %pred.store.if3705, label %pred.store.continue3706

pred.store.if3705:                                ; preds = %pred.store.continue3704
  %i.ahr = extractelement <16 x i8> %wide.load3698, i64 3
  %i.ahs = and i8 %i.ahr, 95
  store i8 %i.ahs, ptr %next.gep3685, align 1, !tbaa !51
  br label %pred.store.continue3706

pred.store.continue3706:                          ; preds = %pred.store.if3705, %pred.store.continue3704
  %i.aht = extractelement <16 x i1> %i.ahg, i64 4
  br i1 %i.aht, label %pred.store.if3707, label %pred.store.continue3708

pred.store.if3707:                                ; preds = %pred.store.continue3706
  %i.ahu = extractelement <16 x i8> %wide.load3698, i64 4
  %i.ahv = and i8 %i.ahu, 95
  store i8 %i.ahv, ptr %next.gep3686, align 1, !tbaa !51
  br label %pred.store.continue3708

pred.store.continue3708:                          ; preds = %pred.store.if3707, %pred.store.continue3706
  %i.ahw = extractelement <16 x i1> %i.ahg, i64 5
  br i1 %i.ahw, label %pred.store.if3709, label %pred.store.continue3710

pred.store.if3709:                                ; preds = %pred.store.continue3708
  %i.ahx = extractelement <16 x i8> %wide.load3698, i64 5
  %i.ahy = and i8 %i.ahx, 95
  store i8 %i.ahy, ptr %next.gep3687, align 1, !tbaa !51
  br label %pred.store.continue3710

pred.store.continue3710:                          ; preds = %pred.store.if3709, %pred.store.continue3708
  %i.ahz = extractelement <16 x i1> %i.ahg, i64 6
  br i1 %i.ahz, label %pred.store.if3711, label %pred.store.continue3712

pred.store.if3711:                                ; preds = %pred.store.continue3710
  %i.aia = extractelement <16 x i8> %wide.load3698, i64 6
  %i.aib = and i8 %i.aia, 95
  store i8 %i.aib, ptr %next.gep3688, align 1, !tbaa !51
  br label %pred.store.continue3712

pred.store.continue3712:                          ; preds = %pred.store.if3711, %pred.store.continue3710
  %i.aic = extractelement <16 x i1> %i.ahg, i64 7
  br i1 %i.aic, label %pred.store.if3713, label %pred.store.continue3714

pred.store.if3713:                                ; preds = %pred.store.continue3712
  %i.aid = extractelement <16 x i8> %wide.load3698, i64 7
  %i.aie = and i8 %i.aid, 95
  store i8 %i.aie, ptr %next.gep3689, align 1, !tbaa !51
  br label %pred.store.continue3714

pred.store.continue3714:                          ; preds = %pred.store.if3713, %pred.store.continue3712
  %i.aif = extractelement <16 x i1> %i.ahg, i64 8
  br i1 %i.aif, label %pred.store.if3715, label %pred.store.continue3716

pred.store.if3715:                                ; preds = %pred.store.continue3714
  %i.aig = extractelement <16 x i8> %wide.load3698, i64 8
  %i.aih = and i8 %i.aig, 95
  store i8 %i.aih, ptr %next.gep3690, align 1, !tbaa !51
  br label %pred.store.continue3716

pred.store.continue3716:                          ; preds = %pred.store.if3715, %pred.store.continue3714
  %i.aii = extractelement <16 x i1> %i.ahg, i64 9
  br i1 %i.aii, label %pred.store.if3717, label %pred.store.continue3718

pred.store.if3717:                                ; preds = %pred.store.continue3716
  %i.aij = extractelement <16 x i8> %wide.load3698, i64 9
  %i.aik = and i8 %i.aij, 95
  store i8 %i.aik, ptr %next.gep3691, align 1, !tbaa !51
  br label %pred.store.continue3718

pred.store.continue3718:                          ; preds = %pred.store.if3717, %pred.store.continue3716
  %i.ail = extractelement <16 x i1> %i.ahg, i64 10
  br i1 %i.ail, label %pred.store.if3719, label %pred.store.continue3720

pred.store.if3719:                                ; preds = %pred.store.continue3718
  %i.aim = extractelement <16 x i8> %wide.load3698, i64 10
  %i.ain = and i8 %i.aim, 95
  store i8 %i.ain, ptr %next.gep3692, align 1, !tbaa !51
  br label %pred.store.continue3720

pred.store.continue3720:                          ; preds = %pred.store.if3719, %pred.store.continue3718
  %i.aio = extractelement <16 x i1> %i.ahg, i64 11
  br i1 %i.aio, label %pred.store.if3721, label %pred.store.continue3722

pred.store.if3721:                                ; preds = %pred.store.continue3720
  %i.aip = extractelement <16 x i8> %wide.load3698, i64 11
  %i.aiq = and i8 %i.aip, 95
  store i8 %i.aiq, ptr %next.gep3693, align 1, !tbaa !51
  br label %pred.store.continue3722

pred.store.continue3722:                          ; preds = %pred.store.if3721, %pred.store.continue3720
  %i.air = extractelement <16 x i1> %i.ahg, i64 12
  br i1 %i.air, label %pred.store.if3723, label %pred.store.continue3724

pred.store.if3723:                                ; preds = %pred.store.continue3722
  %i.ais = extractelement <16 x i8> %wide.load3698, i64 12
  %i.ait = and i8 %i.ais, 95
  store i8 %i.ait, ptr %next.gep3694, align 1, !tbaa !51
  br label %pred.store.continue3724

pred.store.continue3724:                          ; preds = %pred.store.if3723, %pred.store.continue3722
  %i.aiu = extractelement <16 x i1> %i.ahg, i64 13
  br i1 %i.aiu, label %pred.store.if3725, label %pred.store.continue3726

pred.store.if3725:                                ; preds = %pred.store.continue3724
  %i.aiv = extractelement <16 x i8> %wide.load3698, i64 13
  %i.aiw = and i8 %i.aiv, 95
  store i8 %i.aiw, ptr %next.gep3695, align 1, !tbaa !51
  br label %pred.store.continue3726

pred.store.continue3726:                          ; preds = %pred.store.if3725, %pred.store.continue3724
  %i.aix = extractelement <16 x i1> %i.ahg, i64 14
  br i1 %i.aix, label %pred.store.if3727, label %pred.store.continue3728

pred.store.if3727:                                ; preds = %pred.store.continue3726
  %i.aiy = extractelement <16 x i8> %wide.load3698, i64 14
  %i.aiz = and i8 %i.aiy, 95
  store i8 %i.aiz, ptr %next.gep3696, align 1, !tbaa !51
  br label %pred.store.continue3728

pred.store.continue3728:                          ; preds = %pred.store.if3727, %pred.store.continue3726
  %i.aja = extractelement <16 x i1> %i.ahg, i64 15
  br i1 %i.aja, label %pred.store.if3729, label %pred.store.continue3730

pred.store.if3729:                                ; preds = %pred.store.continue3728
  %i.ajb = extractelement <16 x i8> %wide.load3698, i64 15
  %i.ajc = and i8 %i.ajb, 95
  store i8 %i.ajc, ptr %next.gep3697, align 1, !tbaa !51
  br label %pred.store.continue3730

pred.store.continue3730:                          ; preds = %pred.store.if3729, %pred.store.continue3728
  %index.next3731 = add nuw i64 %index3681, 16    ; 2 uses
  %i.ajd = icmp eq i64 %index.next3731, %n.vec3679
  br i1 %i.ajd, label %middle.block3732, label %vector.body3680, !llvm.loop !26

middle.block3732:                                 ; preds = %pred.store.continue3730
  %cmp.n3733 = icmp eq i64 %i.agm, %n.vec3679
  br i1 %cmp.n3733, label %upcase.exit1460, label %vec.epilog.iter.check3735

vec.epilog.iter.check3735:                        ; preds = %middle.block3732
  %min.epilog.iters.check3737 = icmp eq i64 %i.ago, 0
  br i1 %min.epilog.iters.check3737, label %.preheader1549.preheader, label %vec.epilog.ph3738, !prof !68

vec.epilog.ph3738:                                ; preds = %vector.main.loop.iter.check3676, %vec.epilog.iter.check3735
  %vec.epilog.resume.val3739 = phi i64 [ %n.vec3679, %vec.epilog.iter.check3735 ], [ 0, %vector.main.loop.iter.check3676 ]
  %n.vec3740 = and i64 %i.agm, -4                 ; 3 uses
  %i.aje = getelementptr i8, ptr %.010381854, i64 %n.vec3740
  %i.ajf = and i64 %i.agm, 3
  br label %vec.epilog.vector.body3741

vec.epilog.vector.body3741:                       ; preds = %pred.store.continue3755, %vec.epilog.ph3738
  %index3742 = phi i64 [ %vec.epilog.resume.val3739, %vec.epilog.ph3738 ], [ %index.next3756, %pred.store.continue3755 ] ; 5 uses
  %next.gep3743 = getelementptr i8, ptr %.010381854, i64 %index3742 ; 2 uses
  %i.ajg = getelementptr i8, ptr %.010381854, i64 %index3742
  %next.gep3744 = getelementptr i8, ptr %i.ajg, i64 1
  %i.ajh = getelementptr i8, ptr %.010381854, i64 %index3742
  %next.gep3745 = getelementptr i8, ptr %i.ajh, i64 2
  %i.aji = getelementptr i8, ptr %.010381854, i64 %index3742
  %next.gep3746 = getelementptr i8, ptr %i.aji, i64 3
  %wide.load3747 = load <4 x i8>, ptr %next.gep3743, align 1, !tbaa !51 ; 5 uses
  %22 = sext <4 x i8> %wide.load3747 to <4 x i32>
  %23 = add nsw <4 x i32> %22, splat (i32 -97)
  %i.ajj = icmp ult <4 x i32> %23, splat (i32 26) ; 4 uses
  %i.ajk = extractelement <4 x i1> %i.ajj, i64 0
  br i1 %i.ajk, label %pred.store.if3748, label %pred.store.continue3749

pred.store.if3748:                                ; preds = %vec.epilog.vector.body3741
  %i.ajl = extractelement <4 x i8> %wide.load3747, i64 0
  %i.ajm = and i8 %i.ajl, 95
  store i8 %i.ajm, ptr %next.gep3743, align 1, !tbaa !51
  br label %pred.store.continue3749

pred.store.continue3749:                          ; preds = %pred.store.if3748, %vec.epilog.vector.body3741
  %i.ajn = extractelement <4 x i1> %i.ajj, i64 1
  br i1 %i.ajn, label %pred.store.if3750, label %pred.store.continue3751

pred.store.if3750:                                ; preds = %pred.store.continue3749
  %i.ajo = extractelement <4 x i8> %wide.load3747, i64 1
  %i.ajp = and i8 %i.ajo, 95
  store i8 %i.ajp, ptr %next.gep3744, align 1, !tbaa !51
  br label %pred.store.continue3751

pred.store.continue3751:                          ; preds = %pred.store.if3750, %pred.store.continue3749
  %i.ajq = extractelement <4 x i1> %i.ajj, i64 2
  br i1 %i.ajq, label %pred.store.if3752, label %pred.store.continue3753

pred.store.if3752:                                ; preds = %pred.store.continue3751
  %i.ajr = extractelement <4 x i8> %wide.load3747, i64 2
  %i.ajs = and i8 %i.ajr, 95
  store i8 %i.ajs, ptr %next.gep3745, align 1, !tbaa !51
  br label %pred.store.continue3753

pred.store.continue3753:                          ; preds = %pred.store.if3752, %pred.store.continue3751
  %i.ajt = extractelement <4 x i1> %i.ajj, i64 3
  br i1 %i.ajt, label %pred.store.if3754, label %pred.store.continue3755

pred.store.if3754:                                ; preds = %pred.store.continue3753
  %i.aju = extractelement <4 x i8> %wide.load3747, i64 3
  %i.ajv = and i8 %i.aju, 95
  store i8 %i.ajv, ptr %next.gep3746, align 1, !tbaa !51
  br label %pred.store.continue3755

pred.store.continue3755:                          ; preds = %pred.store.if3754, %pred.store.continue3753
  %index.next3756 = add nuw i64 %index3742, 4     ; 2 uses
  %i.ajw = icmp eq i64 %index.next3756, %n.vec3740
  br i1 %i.ajw, label %vec.epilog.middle.block3757, label %vec.epilog.vector.body3741, !llvm.loop !27

vec.epilog.middle.block3757:                      ; preds = %pred.store.continue3755
  %cmp.n3758 = icmp eq i64 %i.agm, %n.vec3740
  br i1 %cmp.n3758, label %upcase.exit1460, label %.preheader1549.preheader

.preheader1549.preheader:                         ; preds = %iter.check3734, %vec.epilog.iter.check3735, %vec.epilog.middle.block3757
  %.04.i1457.ph = phi ptr [ %.010381854, %iter.check3734 ], [ %i.agp, %vec.epilog.iter.check3735 ], [ %i.aje, %vec.epilog.middle.block3757 ]
  %.0.i1458.ph = phi i64 [ %i.agm, %iter.check3734 ], [ %i.agq, %vec.epilog.iter.check3735 ], [ %i.ajf, %vec.epilog.middle.block3757 ]
  br label %.preheader1549

.preheader1549:                                   ; preds = %.preheader1549.preheader, %bb.ci
  %.04.i1457 = phi ptr [ %i.akc, %bb.ci ], [ %.04.i1457.ph, %.preheader1549.preheader ] ; 3 uses
  %.0.i1458 = phi i64 [ %i.akd, %bb.ci ], [ %.0.i1458.ph, %.preheader1549.preheader ]
  %i.ajx = load i8, ptr %.04.i1457, align 1, !tbaa !51 ; 2 uses
  %i.ajy = sext i8 %i.ajx to i32
  %i.ajz = add nsw i32 %i.ajy, -123
  %i.aka = icmp ult i32 %i.ajz, -26
  br i1 %i.aka, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %.preheader1549
  %i.akb = and i8 %i.ajx, 95
  store i8 %i.akb, ptr %.04.i1457, align 1, !tbaa !51
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %.preheader1549
  %i.akc = getelementptr inbounds nuw i8, ptr %.04.i1457, i64 1
  %i.akd = add i64 %.0.i1458, -1                  ; 2 uses
  %.not6.i1459 = icmp eq i64 %i.akd, 0
  br i1 %.not6.i1459, label %upcase.exit1460, label %.preheader1549, !llvm.loop !28

upcase.exit1460:                                  ; preds = %bb.ci, %middle.block3732, %vec.epilog.middle.block3757, %bb.cg
  %i.ake = and i32 %.010832262, 1
  %.not1312 = icmp eq i32 %i.ake, 0
  br i1 %.not1312, label %bb.cj, label %bb.cn

bb.cj:                                            ; preds = %upcase.exit1460
  %i.akf = sext i32 %.010892221 to i64            ; 3 uses
  %i.akg = icmp slt i64 %i.agm, %i.akf
  br i1 %i.akg, label %bb.ck, label %bb.cn

bb.ck:                                            ; preds = %bb.cj
  %i.akh = getelementptr inbounds i8, ptr %.010381854, i64 %i.akf ; 3 uses
  %i.aki = icmp ult ptr %i.l, %i.akh
  br i1 %i.aki, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.akj = call ptr @rb_errno_ptr() #12
  store i32 34, ptr %i.akj, align 4, !tbaa !9
  br label %.loopexit1556

bb.cm:                                            ; preds = %bb.ck
  %i.akk = sub i64 0, %i.agm
  %i.akl = getelementptr inbounds i8, ptr %i.akh, i64 %i.akk
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.akl, ptr align 1 %.010381854, i64 %i.agm, i1 false)
  %.not1313 = icmp eq i8 %.010802304, 0
  %narrow1314 = select i1 %.not1313, i8 32, i8 %.010802304
  %i.akm = sub nsw i64 %i.akf, %i.agm
  call void @llvm.memset.p0.i64(ptr align 1 %.010381854, i8 %narrow1314, i64 %i.akm, i1 false)
  br label %.thread

bb.cn:                                            ; preds = %bb.cj, %upcase.exit1460
  %i.akn = getelementptr inbounds i8, ptr %.010381854, i64 %i.agm
  br label %.thread

.loopexit2389:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.ako = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ]
  %.010802305 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832263 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ]
  %.010892222 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ] ; 2 uses
  %i.akp = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.akq = getelementptr inbounds nuw i8, ptr %i.akp, i64 96
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !77
  %i.aks = load ptr, ptr %3, align 8, !tbaa !60
  %i.akt = call i32 %i.akr(ptr noundef %i.aks) #12
  %i.aku = icmp slt i32 %.010892222, 1
  %spec.select1413 = select i1 %i.aku, i32 2, i32 %.010892222
  %i.akv = and i32 %.010832263, 1
  %.not1308 = icmp eq i32 %i.akv, 0
  %.311120 = select i1 %.not1308, i32 %spec.select1413, i32 1
  %i.akw = ptrtoint ptr %.010381854 to i64
  %i.akx = sub i64 %i.aa, %i.akw
  %i.aky = icmp eq i8 %.010802305, 48
  %.not1309 = icmp eq i8 %.010802305, 0
  %i.akz = or i1 %i.aky, %.not1309
  %i.ala = select i1 %i.akz, ptr @.str.5, ptr @.str.6
  %i.alb = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.010381854, i64 noundef %i.akx, ptr noundef nonnull %i.ala, i32 noundef %.311120, i32 noundef %i.akt) #12 ; 2 uses
  %i.alc = icmp slt i32 %i.alb, 0
  %i.ald = zext nneg i32 %i.alb to i64
  %i.ale = getelementptr inbounds nuw i8, ptr %.010381854, i64 %i.ald
  br i1 %i.alc, label %.thread1499, label %.thread

.loopexit2390:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.alf = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802306 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 3 uses
  %.010832264 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 2 uses
  %.010892223 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ] ; 2 uses
  %i.alg = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 112
  %i.ali = load ptr, ptr %i.alh, align 8, !tbaa !78
  %i.alj = load ptr, ptr %3, align 8, !tbaa !60
  %i.alk = call i64 %i.ali(ptr noundef %i.alj) #12 ; 2 uses
  %i.all = trunc i64 %i.alk to i1
  br i1 %i.all, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %.loopexit2390
  %spec.select1414 = call i32 @llvm.smax.i32(i32 %.010892223, i32 1)
  %i.alm = and i32 %.010832264, 1
  %.not1306 = icmp eq i32 %i.alm, 0
  %.331122 = select i1 %.not1306, i32 %spec.select1414, i32 1
  %i.aln = ptrtoint ptr %.010381854 to i64
  %i.alo = sub i64 %i.aa, %i.aln
  %i.alp = icmp eq i8 %.010802306, 48
  %.not1307 = icmp eq i8 %.010802306, 0
  %i.alq = or i1 %i.alp, %.not1307
  %i.alr = select i1 %i.alq, ptr @.str.2, ptr @.str.3
  %i.als = ashr i64 %i.alk, 1
  %i.alt = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.010381854, i64 noundef %i.alo, ptr noundef nonnull %i.alr, i32 noundef %.331122, i64 noundef %i.als) #12 ; 2 uses
  %i.alu = icmp sgt i32 %i.alt, -1
  %i.alv = zext nneg i32 %i.alt to i64
  %i.alw = getelementptr inbounds nuw i8, ptr %.010381854, i64 %i.alv
  br i1 %i.alu, label %.thread, label %.thread1499

bb.cp:                                            ; preds = %.loopexit2390
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  %spec.select1415 = call i32 @llvm.smax.i32(i32 %.010892223, i32 1)
  %i.alx = and i32 %.010832264, 1
  %.not1303 = icmp eq i32 %i.alx, 0
  %i.aly = shl nuw i32 %spec.select1415, 1
  %i.alz = or disjoint i32 %i.aly, 1
  %i.ama = select i1 %.not1303, i32 %i.alz, i32 3
  %i.amb = zext i32 %i.ama to i64
  store i64 %i.amb, ptr %i.i, align 16, !tbaa !64
  %i.amc = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 112
  %i.ame = load ptr, ptr %i.amd, align 8, !tbaa !78
  %i.amf = load ptr, ptr %3, align 8, !tbaa !60
  %i.amg = call i64 %i.ame(ptr noundef %i.amf) #12
  store i64 %i.amg, ptr %i.ac, align 8, !tbaa !64
  switch i8 %.010802306, label %bb.cr [
    i8 48, label %bb.cq
    i8 0, label %bb.cq
  ]

bb.cq:                                            ; preds = %bb.cp, %bb.cp
  %i.amh = call i64 @rb_str_new_static(ptr noundef nonnull @.str.5, i64 noundef 4) #12
  br label %bb.cs

bb.cr:                                            ; preds = %bb.cp
  %i.ami = call i64 @rb_str_new_static(ptr noundef nonnull @.str.6, i64 noundef 3) #12
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %.sink2775 = phi i64 [ %i.ami, %bb.cr ], [ %i.amh, %bb.cq ]
  %i.amj = call i64 @rb_str_format(i32 noundef 2, ptr noundef nonnull %i.i, i64 noundef %.sink2775) #12
  store i64 %i.amj, ptr %i.j, align 8, !tbaa !64
  %i.amk = call ptr @rb_string_value_cstr(ptr noundef nonnull %i.j) #12
  %i.aml = ptrtoint ptr %.010381854 to i64
  %i.amm = sub i64 %i.aa, %i.aml                  ; 2 uses
  %i.amn = call i64 @strlcpy(ptr noundef %.010381854, ptr noundef nonnull dereferenceable(1) %i.amk, i64 noundef %i.amm) #12 ; 2 uses
  %.not1305 = icmp ugt i64 %i.amm, %i.amn
  %i.amo = getelementptr inbounds nuw i8, ptr %.010381854, i64 %i.amn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  br i1 %.not1305, label %.thread, label %.thread1499

.loopexit2391:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.amp = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802307 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832265 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 2 uses
  %.010892224 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ]
  %i.amq = ptrtoint ptr %.010381854 to i64
  %i.amr = sub i64 %i.aa, %i.amq
  %i.ams = call fastcc i64 @date_strftime_with_tmx(ptr noundef %.010381854, i64 noundef %i.amr, ptr noundef nonnull @.str.13, ptr noundef %3) ; 16 uses
  %.not1298 = icmp eq i64 %i.ams, 0
  br i1 %.not1298, label %.loopexit1556, label %bb.ct

bb.ct:                                            ; preds = %.loopexit2391
  %i.amt = and i32 %.010832265, 8
  %.not1299 = icmp eq i32 %i.amt, 0
  br i1 %.not1299, label %upcase.exit1464, label %iter.check3820

iter.check3820:                                   ; preds = %bb.ct
  %min.iters.check3761 = icmp ult i64 %i.ams, 4
  br i1 %min.iters.check3761, label %.preheader1550.preheader, label %vector.main.loop.iter.check3762

vector.main.loop.iter.check3762:                  ; preds = %iter.check3820
  %min.iters.check3763 = icmp ult i64 %i.ams, 16
  br i1 %min.iters.check3763, label %vec.epilog.ph3824, label %vector.ph3764

vector.ph3764:                                    ; preds = %vector.main.loop.iter.check3762
  %i.amu = and i64 %i.ams, 12
  %n.vec3765 = and i64 %i.ams, -16                ; 4 uses
  %i.amv = getelementptr i8, ptr %.010381854, i64 %n.vec3765
  %i.amw = and i64 %i.ams, 15
  br label %vector.body3766

vector.body3766:                                  ; preds = %vector.ph3764, %pred.store.continue3816
  %index3767 = phi i64 [ 0, %vector.ph3764 ], [ %index.next3817, %pred.store.continue3816 ] ; 17 uses
  %next.gep3768 = getelementptr i8, ptr %.010381854, i64 %index3767 ; 2 uses
  %i.amx = getelementptr i8, ptr %.010381854, i64 %index3767
  %next.gep3769 = getelementptr i8, ptr %i.amx, i64 1
  %i.amy = getelementptr i8, ptr %.010381854, i64 %index3767
  %next.gep3770 = getelementptr i8, ptr %i.amy, i64 2
  %i.amz = getelementptr i8, ptr %.010381854, i64 %index3767
  %next.gep3771 = getelementptr i8, ptr %i.amz, i64 3
  %i.ana = getelementptr i8, ptr %.010381854, i64 %index3767
  %next.gep3772 = getelementptr i8, ptr %i.ana, i64 4
  %i.anb = getelementptr i8, ptr %.010381854, i64 %index3767
  %next.gep3773 = getelementptr i8, ptr %i.anb, i64 5
  %i.anc = getelementptr i8, ptr %.010381854, i64 %index3767
  %next.gep3774 = getelementptr i8, ptr %i.anc, i64 6
  %i.and = getelementptr i8, ptr %.010381854, i64 %index3767
  %next.gep3775 = getelementptr i8, ptr %i.and, i64 7
  %i.ane = getelementptr i8, ptr %.010381854, i64 %index3767
  %next.gep3776 = getelementptr i8, ptr %i.ane, i64 8
  %i.anf = getelementptr i8, ptr %.010381854, i64 %index3767
  %next.gep3777 = getelementptr i8, ptr %i.anf, i64 9
  %i.ang = getelementptr i8, ptr %.010381854, i64 %index3767
  %next.gep3778 = getelementptr i8, ptr %i.ang, i64 10
  %i.anh = getelementptr i8, ptr %.010381854, i64 %index3767
  %next.gep3779 = getelementptr i8, ptr %i.anh, i64 11
  %i.ani = getelementptr i8, ptr %.010381854, i64 %index3767
  %next.gep3780 = getelementptr i8, ptr %i.ani, i64 12
  %i.anj = getelementptr i8, ptr %.010381854, i64 %index3767
  %next.gep3781 = getelementptr i8, ptr %i.anj, i64 13
  %i.ank = getelementptr i8, ptr %.010381854, i64 %index3767
  %next.gep3782 = getelementptr i8, ptr %i.ank, i64 14
  %i.anl = getelementptr i8, ptr %.010381854, i64 %index3767
  %next.gep3783 = getelementptr i8, ptr %i.anl, i64 15
  %wide.load3784 = load <16 x i8>, ptr %next.gep3768, align 1, !tbaa !51 ; 17 uses
  %24 = sext <16 x i8> %wide.load3784 to <16 x i32>
  %25 = add nsw <16 x i32> %24, splat (i32 -97)
  %i.anm = icmp ult <16 x i32> %25, splat (i32 26) ; 16 uses
  %i.ann = extractelement <16 x i1> %i.anm, i64 0
  br i1 %i.ann, label %pred.store.if3785, label %pred.store.continue3786

pred.store.if3785:                                ; preds = %vector.body3766
  %i.ano = extractelement <16 x i8> %wide.load3784, i64 0
  %i.anp = and i8 %i.ano, 95
  store i8 %i.anp, ptr %next.gep3768, align 1, !tbaa !51
  br label %pred.store.continue3786

pred.store.continue3786:                          ; preds = %pred.store.if3785, %vector.body3766
  %i.anq = extractelement <16 x i1> %i.anm, i64 1
  br i1 %i.anq, label %pred.store.if3787, label %pred.store.continue3788

pred.store.if3787:                                ; preds = %pred.store.continue3786
  %i.anr = extractelement <16 x i8> %wide.load3784, i64 1
  %i.ans = and i8 %i.anr, 95
  store i8 %i.ans, ptr %next.gep3769, align 1, !tbaa !51
  br label %pred.store.continue3788

pred.store.continue3788:                          ; preds = %pred.store.if3787, %pred.store.continue3786
  %i.ant = extractelement <16 x i1> %i.anm, i64 2
  br i1 %i.ant, label %pred.store.if3789, label %pred.store.continue3790

pred.store.if3789:                                ; preds = %pred.store.continue3788
  %i.anu = extractelement <16 x i8> %wide.load3784, i64 2
  %i.anv = and i8 %i.anu, 95
  store i8 %i.anv, ptr %next.gep3770, align 1, !tbaa !51
  br label %pred.store.continue3790

pred.store.continue3790:                          ; preds = %pred.store.if3789, %pred.store.continue3788
  %i.anw = extractelement <16 x i1> %i.anm, i64 3
  br i1 %i.anw, label %pred.store.if3791, label %pred.store.continue3792

pred.store.if3791:                                ; preds = %pred.store.continue3790
  %i.anx = extractelement <16 x i8> %wide.load3784, i64 3
  %i.any = and i8 %i.anx, 95
  store i8 %i.any, ptr %next.gep3771, align 1, !tbaa !51
  br label %pred.store.continue3792

pred.store.continue3792:                          ; preds = %pred.store.if3791, %pred.store.continue3790
  %i.anz = extractelement <16 x i1> %i.anm, i64 4
  br i1 %i.anz, label %pred.store.if3793, label %pred.store.continue3794

pred.store.if3793:                                ; preds = %pred.store.continue3792
  %i.aoa = extractelement <16 x i8> %wide.load3784, i64 4
  %i.aob = and i8 %i.aoa, 95
  store i8 %i.aob, ptr %next.gep3772, align 1, !tbaa !51
  br label %pred.store.continue3794

pred.store.continue3794:                          ; preds = %pred.store.if3793, %pred.store.continue3792
  %i.aoc = extractelement <16 x i1> %i.anm, i64 5
  br i1 %i.aoc, label %pred.store.if3795, label %pred.store.continue3796

pred.store.if3795:                                ; preds = %pred.store.continue3794
  %i.aod = extractelement <16 x i8> %wide.load3784, i64 5
  %i.aoe = and i8 %i.aod, 95
  store i8 %i.aoe, ptr %next.gep3773, align 1, !tbaa !51
  br label %pred.store.continue3796

pred.store.continue3796:                          ; preds = %pred.store.if3795, %pred.store.continue3794
  %i.aof = extractelement <16 x i1> %i.anm, i64 6
  br i1 %i.aof, label %pred.store.if3797, label %pred.store.continue3798

pred.store.if3797:                                ; preds = %pred.store.continue3796
  %i.aog = extractelement <16 x i8> %wide.load3784, i64 6
  %i.aoh = and i8 %i.aog, 95
  store i8 %i.aoh, ptr %next.gep3774, align 1, !tbaa !51
  br label %pred.store.continue3798

pred.store.continue3798:                          ; preds = %pred.store.if3797, %pred.store.continue3796
  %i.aoi = extractelement <16 x i1> %i.anm, i64 7
  br i1 %i.aoi, label %pred.store.if3799, label %pred.store.continue3800

pred.store.if3799:                                ; preds = %pred.store.continue3798
  %i.aoj = extractelement <16 x i8> %wide.load3784, i64 7
  %i.aok = and i8 %i.aoj, 95
  store i8 %i.aok, ptr %next.gep3775, align 1, !tbaa !51
  br label %pred.store.continue3800

pred.store.continue3800:                          ; preds = %pred.store.if3799, %pred.store.continue3798
  %i.aol = extractelement <16 x i1> %i.anm, i64 8
  br i1 %i.aol, label %pred.store.if3801, label %pred.store.continue3802

pred.store.if3801:                                ; preds = %pred.store.continue3800
  %i.aom = extractelement <16 x i8> %wide.load3784, i64 8
  %i.aon = and i8 %i.aom, 95
  store i8 %i.aon, ptr %next.gep3776, align 1, !tbaa !51
  br label %pred.store.continue3802

pred.store.continue3802:                          ; preds = %pred.store.if3801, %pred.store.continue3800
  %i.aoo = extractelement <16 x i1> %i.anm, i64 9
  br i1 %i.aoo, label %pred.store.if3803, label %pred.store.continue3804

pred.store.if3803:                                ; preds = %pred.store.continue3802
  %i.aop = extractelement <16 x i8> %wide.load3784, i64 9
  %i.aoq = and i8 %i.aop, 95
  store i8 %i.aoq, ptr %next.gep3777, align 1, !tbaa !51
  br label %pred.store.continue3804

pred.store.continue3804:                          ; preds = %pred.store.if3803, %pred.store.continue3802
  %i.aor = extractelement <16 x i1> %i.anm, i64 10
  br i1 %i.aor, label %pred.store.if3805, label %pred.store.continue3806

pred.store.if3805:                                ; preds = %pred.store.continue3804
  %i.aos = extractelement <16 x i8> %wide.load3784, i64 10
  %i.aot = and i8 %i.aos, 95
  store i8 %i.aot, ptr %next.gep3778, align 1, !tbaa !51
  br label %pred.store.continue3806

pred.store.continue3806:                          ; preds = %pred.store.if3805, %pred.store.continue3804
  %i.aou = extractelement <16 x i1> %i.anm, i64 11
  br i1 %i.aou, label %pred.store.if3807, label %pred.store.continue3808

pred.store.if3807:                                ; preds = %pred.store.continue3806
  %i.aov = extractelement <16 x i8> %wide.load3784, i64 11
  %i.aow = and i8 %i.aov, 95
  store i8 %i.aow, ptr %next.gep3779, align 1, !tbaa !51
  br label %pred.store.continue3808

pred.store.continue3808:                          ; preds = %pred.store.if3807, %pred.store.continue3806
  %i.aox = extractelement <16 x i1> %i.anm, i64 12
  br i1 %i.aox, label %pred.store.if3809, label %pred.store.continue3810

pred.store.if3809:                                ; preds = %pred.store.continue3808
  %i.aoy = extractelement <16 x i8> %wide.load3784, i64 12
  %i.aoz = and i8 %i.aoy, 95
  store i8 %i.aoz, ptr %next.gep3780, align 1, !tbaa !51
  br label %pred.store.continue3810

pred.store.continue3810:                          ; preds = %pred.store.if3809, %pred.store.continue3808
  %i.apa = extractelement <16 x i1> %i.anm, i64 13
  br i1 %i.apa, label %pred.store.if3811, label %pred.store.continue3812

pred.store.if3811:                                ; preds = %pred.store.continue3810
  %i.apb = extractelement <16 x i8> %wide.load3784, i64 13
  %i.apc = and i8 %i.apb, 95
  store i8 %i.apc, ptr %next.gep3781, align 1, !tbaa !51
  br label %pred.store.continue3812

pred.store.continue3812:                          ; preds = %pred.store.if3811, %pred.store.continue3810
  %i.apd = extractelement <16 x i1> %i.anm, i64 14
  br i1 %i.apd, label %pred.store.if3813, label %pred.store.continue3814

pred.store.if3813:                                ; preds = %pred.store.continue3812
  %i.ape = extractelement <16 x i8> %wide.load3784, i64 14
  %i.apf = and i8 %i.ape, 95
  store i8 %i.apf, ptr %next.gep3782, align 1, !tbaa !51
  br label %pred.store.continue3814

pred.store.continue3814:                          ; preds = %pred.store.if3813, %pred.store.continue3812
  %i.apg = extractelement <16 x i1> %i.anm, i64 15
  br i1 %i.apg, label %pred.store.if3815, label %pred.store.continue3816

pred.store.if3815:                                ; preds = %pred.store.continue3814
  %i.aph = extractelement <16 x i8> %wide.load3784, i64 15
  %i.api = and i8 %i.aph, 95
  store i8 %i.api, ptr %next.gep3783, align 1, !tbaa !51
  br label %pred.store.continue3816

pred.store.continue3816:                          ; preds = %pred.store.if3815, %pred.store.continue3814
  %index.next3817 = add nuw i64 %index3767, 16    ; 2 uses
  %i.apj = icmp eq i64 %index.next3817, %n.vec3765
  br i1 %i.apj, label %middle.block3818, label %vector.body3766, !llvm.loop !29

middle.block3818:                                 ; preds = %pred.store.continue3816
  %cmp.n3819 = icmp eq i64 %i.ams, %n.vec3765
  br i1 %cmp.n3819, label %upcase.exit1464, label %vec.epilog.iter.check3821

vec.epilog.iter.check3821:                        ; preds = %middle.block3818
  %min.epilog.iters.check3823 = icmp eq i64 %i.amu, 0
  br i1 %min.epilog.iters.check3823, label %.preheader1550.preheader, label %vec.epilog.ph3824, !prof !68

vec.epilog.ph3824:                                ; preds = %vector.main.loop.iter.check3762, %vec.epilog.iter.check3821
  %vec.epilog.resume.val3825 = phi i64 [ %n.vec3765, %vec.epilog.iter.check3821 ], [ 0, %vector.main.loop.iter.check3762 ]
  %n.vec3826 = and i64 %i.ams, -4                 ; 3 uses
  %i.apk = getelementptr i8, ptr %.010381854, i64 %n.vec3826
  %i.apl = and i64 %i.ams, 3
  br label %vec.epilog.vector.body3827

vec.epilog.vector.body3827:                       ; preds = %pred.store.continue3841, %vec.epilog.ph3824
  %index3828 = phi i64 [ %vec.epilog.resume.val3825, %vec.epilog.ph3824 ], [ %index.next3842, %pred.store.continue3841 ] ; 5 uses
  %next.gep3829 = getelementptr i8, ptr %.010381854, i64 %index3828 ; 2 uses
  %i.apm = getelementptr i8, ptr %.010381854, i64 %index3828
  %next.gep3830 = getelementptr i8, ptr %i.apm, i64 1
  %i.apn = getelementptr i8, ptr %.010381854, i64 %index3828
  %next.gep3831 = getelementptr i8, ptr %i.apn, i64 2
  %i.apo = getelementptr i8, ptr %.010381854, i64 %index3828
  %next.gep3832 = getelementptr i8, ptr %i.apo, i64 3
  %wide.load3833 = load <4 x i8>, ptr %next.gep3829, align 1, !tbaa !51 ; 5 uses
  %26 = sext <4 x i8> %wide.load3833 to <4 x i32>
  %27 = add nsw <4 x i32> %26, splat (i32 -97)
  %i.app = icmp ult <4 x i32> %27, splat (i32 26) ; 4 uses
  %i.apq = extractelement <4 x i1> %i.app, i64 0
  br i1 %i.apq, label %pred.store.if3834, label %pred.store.continue3835

pred.store.if3834:                                ; preds = %vec.epilog.vector.body3827
  %i.apr = extractelement <4 x i8> %wide.load3833, i64 0
  %i.aps = and i8 %i.apr, 95
  store i8 %i.aps, ptr %next.gep3829, align 1, !tbaa !51
  br label %pred.store.continue3835

pred.store.continue3835:                          ; preds = %pred.store.if3834, %vec.epilog.vector.body3827
  %i.apt = extractelement <4 x i1> %i.app, i64 1
  br i1 %i.apt, label %pred.store.if3836, label %pred.store.continue3837

pred.store.if3836:                                ; preds = %pred.store.continue3835
  %i.apu = extractelement <4 x i8> %wide.load3833, i64 1
  %i.apv = and i8 %i.apu, 95
  store i8 %i.apv, ptr %next.gep3830, align 1, !tbaa !51
  br label %pred.store.continue3837

pred.store.continue3837:                          ; preds = %pred.store.if3836, %pred.store.continue3835
  %i.apw = extractelement <4 x i1> %i.app, i64 2
  br i1 %i.apw, label %pred.store.if3838, label %pred.store.continue3839

pred.store.if3838:                                ; preds = %pred.store.continue3837
  %i.apx = extractelement <4 x i8> %wide.load3833, i64 2
  %i.apy = and i8 %i.apx, 95
  store i8 %i.apy, ptr %next.gep3831, align 1, !tbaa !51
  br label %pred.store.continue3839

pred.store.continue3839:                          ; preds = %pred.store.if3838, %pred.store.continue3837
  %i.apz = extractelement <4 x i1> %i.app, i64 3
  br i1 %i.apz, label %pred.store.if3840, label %pred.store.continue3841

pred.store.if3840:                                ; preds = %pred.store.continue3839
  %i.aqa = extractelement <4 x i8> %wide.load3833, i64 3
  %i.aqb = and i8 %i.aqa, 95
  store i8 %i.aqb, ptr %next.gep3832, align 1, !tbaa !51
  br label %pred.store.continue3841

pred.store.continue3841:                          ; preds = %pred.store.if3840, %pred.store.continue3839
  %index.next3842 = add nuw i64 %index3828, 4     ; 2 uses
  %i.aqc = icmp eq i64 %index.next3842, %n.vec3826
  br i1 %i.aqc, label %vec.epilog.middle.block3843, label %vec.epilog.vector.body3827, !llvm.loop !30

vec.epilog.middle.block3843:                      ; preds = %pred.store.continue3841
  %cmp.n3844 = icmp eq i64 %i.ams, %n.vec3826
  br i1 %cmp.n3844, label %upcase.exit1464, label %.preheader1550.preheader

.preheader1550.preheader:                         ; preds = %iter.check3820, %vec.epilog.iter.check3821, %vec.epilog.middle.block3843
  %.04.i1461.ph = phi ptr [ %.010381854, %iter.check3820 ], [ %i.amv, %vec.epilog.iter.check3821 ], [ %i.apk, %vec.epilog.middle.block3843 ]
  %.0.i1462.ph = phi i64 [ %i.ams, %iter.check3820 ], [ %i.amw, %vec.epilog.iter.check3821 ], [ %i.apl, %vec.epilog.middle.block3843 ]
  br label %.preheader1550

.preheader1550:                                   ; preds = %.preheader1550.preheader, %bb.cv
  %.04.i1461 = phi ptr [ %i.aqi, %bb.cv ], [ %.04.i1461.ph, %.preheader1550.preheader ] ; 3 uses
  %.0.i1462 = phi i64 [ %i.aqj, %bb.cv ], [ %.0.i1462.ph, %.preheader1550.preheader ]
  %i.aqd = load i8, ptr %.04.i1461, align 1, !tbaa !51 ; 2 uses
  %i.aqe = sext i8 %i.aqd to i32
  %i.aqf = add nsw i32 %i.aqe, -123
  %i.aqg = icmp ult i32 %i.aqf, -26
  br i1 %i.aqg, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %.preheader1550
  %i.aqh = and i8 %i.aqd, 95
  store i8 %i.aqh, ptr %.04.i1461, align 1, !tbaa !51
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %.preheader1550
  %i.aqi = getelementptr inbounds nuw i8, ptr %.04.i1461, i64 1
  %i.aqj = add i64 %.0.i1462, -1                  ; 2 uses
  %.not6.i1463 = icmp eq i64 %i.aqj, 0
  br i1 %.not6.i1463, label %upcase.exit1464, label %.preheader1550, !llvm.loop !31

upcase.exit1464:                                  ; preds = %bb.cv, %middle.block3818, %vec.epilog.middle.block3843, %bb.ct
  %i.aqk = and i32 %.010832265, 1
  %.not1300 = icmp eq i32 %i.aqk, 0
  br i1 %.not1300, label %bb.cw, label %bb.da

bb.cw:                                            ; preds = %upcase.exit1464
  %i.aql = sext i32 %.010892224 to i64            ; 3 uses
  %i.aqm = icmp slt i64 %i.ams, %i.aql
  br i1 %i.aqm, label %bb.cx, label %bb.da

bb.cx:                                            ; preds = %bb.cw
  %i.aqn = getelementptr inbounds i8, ptr %.010381854, i64 %i.aql ; 3 uses
  %i.aqo = icmp ult ptr %i.l, %i.aqn
  br i1 %i.aqo, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.aqp = call ptr @rb_errno_ptr() #12
  store i32 34, ptr %i.aqp, align 4, !tbaa !9
  br label %.loopexit1556

bb.cz:                                            ; preds = %bb.cx
  %i.aqq = sub i64 0, %i.ams
  %i.aqr = getelementptr inbounds i8, ptr %i.aqn, i64 %i.aqq
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aqr, ptr align 1 %.010381854, i64 %i.ams, i1 false)
  %.not1301 = icmp eq i8 %.010802307, 0
  %narrow1302 = select i1 %.not1301, i8 32, i8 %.010802307
  %i.aqs = sub nsw i64 %i.aql, %i.ams
  call void @llvm.memset.p0.i64(ptr align 1 %.010381854, i8 %narrow1302, i64 %i.aqs, i1 false)
  br label %.thread

bb.da:                                            ; preds = %bb.cw, %upcase.exit1464
  %i.aqt = getelementptr inbounds i8, ptr %.010381854, i64 %i.ams
  br label %.thread

.loopexit2392:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555.jt0, %.preheader1555, %.preheader1555
  %i.aqu = phi i8 [ %i.am, %.preheader1555.jt0 ], [ %i.am, %.preheader1555.jt0 ], [ %i.ak, %.preheader1555 ], [ %i.as, %.preheader1555.jt48 ], [ %i.ak, %.preheader1555 ], [ %i.as, %.preheader1555.jt48 ], [ %i.ao, %.preheader1555.jt32 ], [ %i.ao, %.preheader1555.jt32 ]
  %i.aqv = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.al, %.preheader1555.jt0 ], [ %i.aj, %.preheader1555 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.an, %.preheader1555.jt32 ], [ %i.an, %.preheader1555.jt32 ]
  %.010802308 = phi i8 [ 0, %.preheader1555.jt0 ], [ 0, %.preheader1555.jt0 ], [ %.01080.be, %.preheader1555 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 48, %.preheader1555.jt48 ], [ 32, %.preheader1555.jt32 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832266 = phi i32 [ 0, %.preheader1555.jt0 ], [ 0, %.preheader1555.jt0 ], [ %.01083.be, %.preheader1555 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.010832279.ph, %.preheader1555.jt32 ], [ %.010832279.ph, %.preheader1555.jt32 ]
  %.010892225 = phi i32 [ -1, %.preheader1555.jt0 ], [ -1, %.preheader1555.jt0 ], [ %.01089.be, %.preheader1555 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %i.aq, %.preheader1555.jt48 ], [ %.010892238.ph, %.preheader1555.jt32 ], [ %.010892238.ph, %.preheader1555.jt32 ] ; 2 uses
  %i.aqw = icmp eq i8 %i.aqu, 85
  %i.aqx = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.aqy = load ptr, ptr %3, align 8, !tbaa !60
  %.2779 = select i1 %i.aqw, i64 56, i64 64
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqx, i64 %.2779
  %i.ara = load ptr, ptr %i.aqz, align 8, !tbaa !70
  %i.arb = call i32 %i.ara(ptr noundef %i.aqy) #12
  %i.arc = icmp slt i32 %.010892225, 1
  %spec.select1416 = select i1 %i.arc, i32 2, i32 %.010892225
  %i.ard = and i32 %.010832266, 1
  %.not1296 = icmp eq i32 %i.ard, 0
  %.371126 = select i1 %.not1296, i32 %spec.select1416, i32 1
  %i.are = ptrtoint ptr %.010381854 to i64
  %i.arf = sub i64 %i.aa, %i.are
  %i.arg = icmp eq i8 %.010802308, 48
  %.not1297 = icmp eq i8 %.010802308, 0
  %i.arh = or i1 %i.arg, %.not1297
  %i.ari = select i1 %i.arh, ptr @.str.5, ptr @.str.6
  %i.arj = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.010381854, i64 noundef %i.arf, ptr noundef nonnull %i.ari, i32 noundef %.371126, i32 noundef %i.arb) #12 ; 2 uses
  %i.ark = icmp slt i32 %i.arj, 0
  %i.arl = zext nneg i32 %i.arj to i64
  %i.arm = getelementptr inbounds nuw i8, ptr %.010381854, i64 %i.arl
  br i1 %i.ark, label %.thread1499, label %.thread

.loopexit2393:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.arn = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ]
  %.010802309 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832267 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ]
  %.010892226 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ]
  %i.aro = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 48
  %i.arq = load ptr, ptr %i.arp, align 8, !tbaa !79
  %i.arr = load ptr, ptr %3, align 8, !tbaa !60
  %i.ars = call i32 %i.arq(ptr noundef %i.arr) #12
  %spec.select1417 = call i32 @llvm.smax.i32(i32 %.010892226, i32 1)
  %i.art = and i32 %.010832267, 1
  %.not1294 = icmp eq i32 %i.art, 0
  %.391128 = select i1 %.not1294, i32 %spec.select1417, i32 1
  %i.aru = ptrtoint ptr %.010381854 to i64
  %i.arv = sub i64 %i.aa, %i.aru
  %i.arw = icmp eq i8 %.010802309, 48
  %.not1295 = icmp eq i8 %.010802309, 0
  %i.arx = or i1 %i.arw, %.not1295
  %i.ary = select i1 %i.arx, ptr @.str.5, ptr @.str.6
  %i.arz = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.010381854, i64 noundef %i.arv, ptr noundef nonnull %i.ary, i32 noundef %.391128, i32 noundef %i.ars) #12 ; 2 uses
  %i.asa = icmp slt i32 %i.arz, 0
  %i.asb = zext nneg i32 %i.arz to i64
  %i.asc = getelementptr inbounds nuw i8, ptr %.010381854, i64 %i.asb
  br i1 %i.asa, label %.thread1499, label %.thread

.loopexit2394:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.asd = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ]
  %.010802310 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832268 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ]
  %.010892227 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ] ; 2 uses
  %i.ase = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 40
  %i.asg = load ptr, ptr %i.asf, align 8, !tbaa !80
  %i.ash = load ptr, ptr %3, align 8, !tbaa !60
  %i.asi = call i32 %i.asg(ptr noundef %i.ash) #12
  %i.asj = icmp slt i32 %.010892227, 1
  %spec.select1418 = select i1 %i.asj, i32 2, i32 %.010892227
  %i.ask = and i32 %.010832268, 1
  %.not1292 = icmp eq i32 %i.ask, 0
  %.411130 = select i1 %.not1292, i32 %spec.select1418, i32 1
  %i.asl = ptrtoint ptr %.010381854 to i64
  %i.asm = sub i64 %i.aa, %i.asl
  %i.asn = icmp eq i8 %.010802310, 48
  %.not1293 = icmp eq i8 %.010802310, 0
  %i.aso = or i1 %i.asn, %.not1293
  %i.asp = select i1 %i.aso, ptr @.str.5, ptr @.str.6
  %i.asq = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.010381854, i64 noundef %i.asm, ptr noundef nonnull %i.asp, i32 noundef %.411130, i32 noundef %i.asi) #12 ; 2 uses
  %i.asr = icmp slt i32 %i.asq, 0
  %i.ass = zext nneg i32 %i.asq to i64
  %i.ast = getelementptr inbounds nuw i8, ptr %.010381854, i64 %i.ass
  br i1 %i.asr, label %.thread1499, label %.thread

.loopexit2395:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.asu = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802311 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832269 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 2 uses
  %.010892228 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ]
  %i.asv = ptrtoint ptr %.010381854 to i64
  %i.asw = sub i64 %i.aa, %i.asv
  %i.asx = call fastcc i64 @date_strftime_with_tmx(ptr noundef %.010381854, i64 noundef %i.asw, ptr noundef nonnull @.str.14, ptr noundef %3) ; 16 uses
  %.not1287 = icmp eq i64 %i.asx, 0
  br i1 %.not1287, label %.loopexit1556, label %bb.db

bb.db:                                            ; preds = %.loopexit2395
  %i.asy = and i32 %.010832269, 8
  %.not1288 = icmp eq i32 %i.asy, 0
  br i1 %.not1288, label %upcase.exit1468, label %iter.check3906

iter.check3906:                                   ; preds = %bb.db
  %min.iters.check3847 = icmp ult i64 %i.asx, 4
  br i1 %min.iters.check3847, label %.preheader1551.preheader, label %vector.main.loop.iter.check3848

vector.main.loop.iter.check3848:                  ; preds = %iter.check3906
  %min.iters.check3849 = icmp ult i64 %i.asx, 16
  br i1 %min.iters.check3849, label %vec.epilog.ph3910, label %vector.ph3850

vector.ph3850:                                    ; preds = %vector.main.loop.iter.check3848
  %i.asz = and i64 %i.asx, 12
  %n.vec3851 = and i64 %i.asx, -16                ; 4 uses
  %i.ata = getelementptr i8, ptr %.010381854, i64 %n.vec3851
  %i.atb = and i64 %i.asx, 15
  br label %vector.body3852

vector.body3852:                                  ; preds = %vector.ph3850, %pred.store.continue3902
  %index3853 = phi i64 [ 0, %vector.ph3850 ], [ %index.next3903, %pred.store.continue3902 ] ; 17 uses
  %next.gep3854 = getelementptr i8, ptr %.010381854, i64 %index3853 ; 2 uses
  %i.atc = getelementptr i8, ptr %.010381854, i64 %index3853
  %next.gep3855 = getelementptr i8, ptr %i.atc, i64 1
  %i.atd = getelementptr i8, ptr %.010381854, i64 %index3853
  %next.gep3856 = getelementptr i8, ptr %i.atd, i64 2
  %i.ate = getelementptr i8, ptr %.010381854, i64 %index3853
  %next.gep3857 = getelementptr i8, ptr %i.ate, i64 3
  %i.atf = getelementptr i8, ptr %.010381854, i64 %index3853
  %next.gep3858 = getelementptr i8, ptr %i.atf, i64 4
  %i.atg = getelementptr i8, ptr %.010381854, i64 %index3853
  %next.gep3859 = getelementptr i8, ptr %i.atg, i64 5
  %i.ath = getelementptr i8, ptr %.010381854, i64 %index3853
  %next.gep3860 = getelementptr i8, ptr %i.ath, i64 6
  %i.ati = getelementptr i8, ptr %.010381854, i64 %index3853
  %next.gep3861 = getelementptr i8, ptr %i.ati, i64 7
  %i.atj = getelementptr i8, ptr %.010381854, i64 %index3853
  %next.gep3862 = getelementptr i8, ptr %i.atj, i64 8
  %i.atk = getelementptr i8, ptr %.010381854, i64 %index3853
  %next.gep3863 = getelementptr i8, ptr %i.atk, i64 9
  %i.atl = getelementptr i8, ptr %.010381854, i64 %index3853
  %next.gep3864 = getelementptr i8, ptr %i.atl, i64 10
  %i.atm = getelementptr i8, ptr %.010381854, i64 %index3853
  %next.gep3865 = getelementptr i8, ptr %i.atm, i64 11
  %i.atn = getelementptr i8, ptr %.010381854, i64 %index3853
  %next.gep3866 = getelementptr i8, ptr %i.atn, i64 12
  %i.ato = getelementptr i8, ptr %.010381854, i64 %index3853
  %next.gep3867 = getelementptr i8, ptr %i.ato, i64 13
  %i.atp = getelementptr i8, ptr %.010381854, i64 %index3853
  %next.gep3868 = getelementptr i8, ptr %i.atp, i64 14
  %i.atq = getelementptr i8, ptr %.010381854, i64 %index3853
  %next.gep3869 = getelementptr i8, ptr %i.atq, i64 15
  %wide.load3870 = load <16 x i8>, ptr %next.gep3854, align 1, !tbaa !51 ; 17 uses
  %28 = sext <16 x i8> %wide.load3870 to <16 x i32>
  %29 = add nsw <16 x i32> %28, splat (i32 -97)
  %i.atr = icmp ult <16 x i32> %29, splat (i32 26) ; 16 uses
  %i.ats = extractelement <16 x i1> %i.atr, i64 0
  br i1 %i.ats, label %pred.store.if3871, label %pred.store.continue3872

pred.store.if3871:                                ; preds = %vector.body3852
  %i.att = extractelement <16 x i8> %wide.load3870, i64 0
  %i.atu = and i8 %i.att, 95
  store i8 %i.atu, ptr %next.gep3854, align 1, !tbaa !51
  br label %pred.store.continue3872

pred.store.continue3872:                          ; preds = %pred.store.if3871, %vector.body3852
  %i.atv = extractelement <16 x i1> %i.atr, i64 1
  br i1 %i.atv, label %pred.store.if3873, label %pred.store.continue3874

pred.store.if3873:                                ; preds = %pred.store.continue3872
  %i.atw = extractelement <16 x i8> %wide.load3870, i64 1
  %i.atx = and i8 %i.atw, 95
  store i8 %i.atx, ptr %next.gep3855, align 1, !tbaa !51
  br label %pred.store.continue3874

pred.store.continue3874:                          ; preds = %pred.store.if3873, %pred.store.continue3872
  %i.aty = extractelement <16 x i1> %i.atr, i64 2
  br i1 %i.aty, label %pred.store.if3875, label %pred.store.continue3876

pred.store.if3875:                                ; preds = %pred.store.continue3874
  %i.atz = extractelement <16 x i8> %wide.load3870, i64 2
  %i.aua = and i8 %i.atz, 95
  store i8 %i.aua, ptr %next.gep3856, align 1, !tbaa !51
  br label %pred.store.continue3876

pred.store.continue3876:                          ; preds = %pred.store.if3875, %pred.store.continue3874
  %i.aub = extractelement <16 x i1> %i.atr, i64 3
  br i1 %i.aub, label %pred.store.if3877, label %pred.store.continue3878

pred.store.if3877:                                ; preds = %pred.store.continue3876
  %i.auc = extractelement <16 x i8> %wide.load3870, i64 3
  %i.aud = and i8 %i.auc, 95
  store i8 %i.aud, ptr %next.gep3857, align 1, !tbaa !51
  br label %pred.store.continue3878

pred.store.continue3878:                          ; preds = %pred.store.if3877, %pred.store.continue3876
  %i.aue = extractelement <16 x i1> %i.atr, i64 4
  br i1 %i.aue, label %pred.store.if3879, label %pred.store.continue3880

pred.store.if3879:                                ; preds = %pred.store.continue3878
  %i.auf = extractelement <16 x i8> %wide.load3870, i64 4
  %i.aug = and i8 %i.auf, 95
  store i8 %i.aug, ptr %next.gep3858, align 1, !tbaa !51
  br label %pred.store.continue3880

pred.store.continue3880:                          ; preds = %pred.store.if3879, %pred.store.continue3878
  %i.auh = extractelement <16 x i1> %i.atr, i64 5
  br i1 %i.auh, label %pred.store.if3881, label %pred.store.continue3882

pred.store.if3881:                                ; preds = %pred.store.continue3880
  %i.aui = extractelement <16 x i8> %wide.load3870, i64 5
  %i.auj = and i8 %i.aui, 95
  store i8 %i.auj, ptr %next.gep3859, align 1, !tbaa !51
  br label %pred.store.continue3882

pred.store.continue3882:                          ; preds = %pred.store.if3881, %pred.store.continue3880
  %i.auk = extractelement <16 x i1> %i.atr, i64 6
  br i1 %i.auk, label %pred.store.if3883, label %pred.store.continue3884

pred.store.if3883:                                ; preds = %pred.store.continue3882
  %i.aul = extractelement <16 x i8> %wide.load3870, i64 6
  %i.aum = and i8 %i.aul, 95
  store i8 %i.aum, ptr %next.gep3860, align 1, !tbaa !51
  br label %pred.store.continue3884

pred.store.continue3884:                          ; preds = %pred.store.if3883, %pred.store.continue3882
  %i.aun = extractelement <16 x i1> %i.atr, i64 7
  br i1 %i.aun, label %pred.store.if3885, label %pred.store.continue3886

pred.store.if3885:                                ; preds = %pred.store.continue3884
  %i.auo = extractelement <16 x i8> %wide.load3870, i64 7
  %i.aup = and i8 %i.auo, 95
  store i8 %i.aup, ptr %next.gep3861, align 1, !tbaa !51
  br label %pred.store.continue3886

pred.store.continue3886:                          ; preds = %pred.store.if3885, %pred.store.continue3884
  %i.auq = extractelement <16 x i1> %i.atr, i64 8
  br i1 %i.auq, label %pred.store.if3887, label %pred.store.continue3888

pred.store.if3887:                                ; preds = %pred.store.continue3886
  %i.aur = extractelement <16 x i8> %wide.load3870, i64 8
  %i.aus = and i8 %i.aur, 95
  store i8 %i.aus, ptr %next.gep3862, align 1, !tbaa !51
  br label %pred.store.continue3888

pred.store.continue3888:                          ; preds = %pred.store.if3887, %pred.store.continue3886
  %i.aut = extractelement <16 x i1> %i.atr, i64 9
  br i1 %i.aut, label %pred.store.if3889, label %pred.store.continue3890

pred.store.if3889:                                ; preds = %pred.store.continue3888
  %i.auu = extractelement <16 x i8> %wide.load3870, i64 9
  %i.auv = and i8 %i.auu, 95
  store i8 %i.auv, ptr %next.gep3863, align 1, !tbaa !51
  br label %pred.store.continue3890

pred.store.continue3890:                          ; preds = %pred.store.if3889, %pred.store.continue3888
  %i.auw = extractelement <16 x i1> %i.atr, i64 10
  br i1 %i.auw, label %pred.store.if3891, label %pred.store.continue3892

pred.store.if3891:                                ; preds = %pred.store.continue3890
  %i.aux = extractelement <16 x i8> %wide.load3870, i64 10
  %i.auy = and i8 %i.aux, 95
  store i8 %i.auy, ptr %next.gep3864, align 1, !tbaa !51
  br label %pred.store.continue3892

pred.store.continue3892:                          ; preds = %pred.store.if3891, %pred.store.continue3890
  %i.auz = extractelement <16 x i1> %i.atr, i64 11
  br i1 %i.auz, label %pred.store.if3893, label %pred.store.continue3894

pred.store.if3893:                                ; preds = %pred.store.continue3892
  %i.ava = extractelement <16 x i8> %wide.load3870, i64 11
  %i.avb = and i8 %i.ava, 95
  store i8 %i.avb, ptr %next.gep3865, align 1, !tbaa !51
  br label %pred.store.continue3894

pred.store.continue3894:                          ; preds = %pred.store.if3893, %pred.store.continue3892
  %i.avc = extractelement <16 x i1> %i.atr, i64 12
  br i1 %i.avc, label %pred.store.if3895, label %pred.store.continue3896

pred.store.if3895:                                ; preds = %pred.store.continue3894
  %i.avd = extractelement <16 x i8> %wide.load3870, i64 12
  %i.ave = and i8 %i.avd, 95
  store i8 %i.ave, ptr %next.gep3866, align 1, !tbaa !51
  br label %pred.store.continue3896

pred.store.continue3896:                          ; preds = %pred.store.if3895, %pred.store.continue3894
  %i.avf = extractelement <16 x i1> %i.atr, i64 13
  br i1 %i.avf, label %pred.store.if3897, label %pred.store.continue3898

pred.store.if3897:                                ; preds = %pred.store.continue3896
  %i.avg = extractelement <16 x i8> %wide.load3870, i64 13
  %i.avh = and i8 %i.avg, 95
  store i8 %i.avh, ptr %next.gep3867, align 1, !tbaa !51
  br label %pred.store.continue3898

pred.store.continue3898:                          ; preds = %pred.store.if3897, %pred.store.continue3896
  %i.avi = extractelement <16 x i1> %i.atr, i64 14
  br i1 %i.avi, label %pred.store.if3899, label %pred.store.continue3900

pred.store.if3899:                                ; preds = %pred.store.continue3898
  %i.avj = extractelement <16 x i8> %wide.load3870, i64 14
  %i.avk = and i8 %i.avj, 95
  store i8 %i.avk, ptr %next.gep3868, align 1, !tbaa !51
  br label %pred.store.continue3900

pred.store.continue3900:                          ; preds = %pred.store.if3899, %pred.store.continue3898
  %i.avl = extractelement <16 x i1> %i.atr, i64 15
  br i1 %i.avl, label %pred.store.if3901, label %pred.store.continue3902

pred.store.if3901:                                ; preds = %pred.store.continue3900
  %i.avm = extractelement <16 x i8> %wide.load3870, i64 15
  %i.avn = and i8 %i.avm, 95
  store i8 %i.avn, ptr %next.gep3869, align 1, !tbaa !51
  br label %pred.store.continue3902

pred.store.continue3902:                          ; preds = %pred.store.if3901, %pred.store.continue3900
  %index.next3903 = add nuw i64 %index3853, 16    ; 2 uses
  %i.avo = icmp eq i64 %index.next3903, %n.vec3851
  br i1 %i.avo, label %middle.block3904, label %vector.body3852, !llvm.loop !32

middle.block3904:                                 ; preds = %pred.store.continue3902
  %cmp.n3905 = icmp eq i64 %i.asx, %n.vec3851
  br i1 %cmp.n3905, label %upcase.exit1468, label %vec.epilog.iter.check3907

vec.epilog.iter.check3907:                        ; preds = %middle.block3904
  %min.epilog.iters.check3909 = icmp eq i64 %i.asz, 0
  br i1 %min.epilog.iters.check3909, label %.preheader1551.preheader, label %vec.epilog.ph3910, !prof !68

vec.epilog.ph3910:                                ; preds = %vector.main.loop.iter.check3848, %vec.epilog.iter.check3907
  %vec.epilog.resume.val3911 = phi i64 [ %n.vec3851, %vec.epilog.iter.check3907 ], [ 0, %vector.main.loop.iter.check3848 ]
  %n.vec3912 = and i64 %i.asx, -4                 ; 3 uses
  %i.avp = getelementptr i8, ptr %.010381854, i64 %n.vec3912
  %i.avq = and i64 %i.asx, 3
  br label %vec.epilog.vector.body3913

vec.epilog.vector.body3913:                       ; preds = %pred.store.continue3927, %vec.epilog.ph3910
  %index3914 = phi i64 [ %vec.epilog.resume.val3911, %vec.epilog.ph3910 ], [ %index.next3928, %pred.store.continue3927 ] ; 5 uses
  %next.gep3915 = getelementptr i8, ptr %.010381854, i64 %index3914 ; 2 uses
  %i.avr = getelementptr i8, ptr %.010381854, i64 %index3914
  %next.gep3916 = getelementptr i8, ptr %i.avr, i64 1
  %i.avs = getelementptr i8, ptr %.010381854, i64 %index3914
  %next.gep3917 = getelementptr i8, ptr %i.avs, i64 2
  %i.avt = getelementptr i8, ptr %.010381854, i64 %index3914
  %next.gep3918 = getelementptr i8, ptr %i.avt, i64 3
  %wide.load3919 = load <4 x i8>, ptr %next.gep3915, align 1, !tbaa !51 ; 5 uses
  %30 = sext <4 x i8> %wide.load3919 to <4 x i32>
  %31 = add nsw <4 x i32> %30, splat (i32 -97)
  %i.avu = icmp ult <4 x i32> %31, splat (i32 26) ; 4 uses
  %i.avv = extractelement <4 x i1> %i.avu, i64 0
  br i1 %i.avv, label %pred.store.if3920, label %pred.store.continue3921

pred.store.if3920:                                ; preds = %vec.epilog.vector.body3913
  %i.avw = extractelement <4 x i8> %wide.load3919, i64 0
  %i.avx = and i8 %i.avw, 95
  store i8 %i.avx, ptr %next.gep3915, align 1, !tbaa !51
  br label %pred.store.continue3921

pred.store.continue3921:                          ; preds = %pred.store.if3920, %vec.epilog.vector.body3913
  %i.avy = extractelement <4 x i1> %i.avu, i64 1
  br i1 %i.avy, label %pred.store.if3922, label %pred.store.continue3923

pred.store.if3922:                                ; preds = %pred.store.continue3921
  %i.avz = extractelement <4 x i8> %wide.load3919, i64 1
  %i.awa = and i8 %i.avz, 95
  store i8 %i.awa, ptr %next.gep3916, align 1, !tbaa !51
  br label %pred.store.continue3923

pred.store.continue3923:                          ; preds = %pred.store.if3922, %pred.store.continue3921
  %i.awb = extractelement <4 x i1> %i.avu, i64 2
  br i1 %i.awb, label %pred.store.if3924, label %pred.store.continue3925

pred.store.if3924:                                ; preds = %pred.store.continue3923
  %i.awc = extractelement <4 x i8> %wide.load3919, i64 2
  %i.awd = and i8 %i.awc, 95
  store i8 %i.awd, ptr %next.gep3917, align 1, !tbaa !51
  br label %pred.store.continue3925

pred.store.continue3925:                          ; preds = %pred.store.if3924, %pred.store.continue3923
  %i.awe = extractelement <4 x i1> %i.avu, i64 3
  br i1 %i.awe, label %pred.store.if3926, label %pred.store.continue3927

pred.store.if3926:                                ; preds = %pred.store.continue3925
  %i.awf = extractelement <4 x i8> %wide.load3919, i64 3
  %i.awg = and i8 %i.awf, 95
  store i8 %i.awg, ptr %next.gep3918, align 1, !tbaa !51
  br label %pred.store.continue3927

pred.store.continue3927:                          ; preds = %pred.store.if3926, %pred.store.continue3925
  %index.next3928 = add nuw i64 %index3914, 4     ; 2 uses
  %i.awh = icmp eq i64 %index.next3928, %n.vec3912
  br i1 %i.awh, label %vec.epilog.middle.block3929, label %vec.epilog.vector.body3913, !llvm.loop !33

vec.epilog.middle.block3929:                      ; preds = %pred.store.continue3927
  %cmp.n3930 = icmp eq i64 %i.asx, %n.vec3912
  br i1 %cmp.n3930, label %upcase.exit1468, label %.preheader1551.preheader

.preheader1551.preheader:                         ; preds = %iter.check3906, %vec.epilog.iter.check3907, %vec.epilog.middle.block3929
  %.04.i1465.ph = phi ptr [ %.010381854, %iter.check3906 ], [ %i.ata, %vec.epilog.iter.check3907 ], [ %i.avp, %vec.epilog.middle.block3929 ]
  %.0.i1466.ph = phi i64 [ %i.asx, %iter.check3906 ], [ %i.atb, %vec.epilog.iter.check3907 ], [ %i.avq, %vec.epilog.middle.block3929 ]
  br label %.preheader1551

.preheader1551:                                   ; preds = %.preheader1551.preheader, %bb.dd
  %.04.i1465 = phi ptr [ %i.awn, %bb.dd ], [ %.04.i1465.ph, %.preheader1551.preheader ] ; 3 uses
  %.0.i1466 = phi i64 [ %i.awo, %bb.dd ], [ %.0.i1466.ph, %.preheader1551.preheader ]
  %i.awi = load i8, ptr %.04.i1465, align 1, !tbaa !51 ; 2 uses
  %i.awj = sext i8 %i.awi to i32
  %i.awk = add nsw i32 %i.awj, -123
  %i.awl = icmp ult i32 %i.awk, -26
  br i1 %i.awl, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %.preheader1551
  %i.awm = and i8 %i.awi, 95
  store i8 %i.awm, ptr %.04.i1465, align 1, !tbaa !51
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %.preheader1551
  %i.awn = getelementptr inbounds nuw i8, ptr %.04.i1465, i64 1
  %i.awo = add i64 %.0.i1466, -1                  ; 2 uses
  %.not6.i1467 = icmp eq i64 %i.awo, 0
  br i1 %.not6.i1467, label %upcase.exit1468, label %.preheader1551, !llvm.loop !34

upcase.exit1468:                                  ; preds = %bb.dd, %middle.block3904, %vec.epilog.middle.block3929, %bb.db
  %i.awp = and i32 %.010832269, 1
  %.not1289 = icmp eq i32 %i.awp, 0
  br i1 %.not1289, label %bb.de, label %bb.di

bb.de:                                            ; preds = %upcase.exit1468
  %i.awq = sext i32 %.010892228 to i64            ; 3 uses
  %i.awr = icmp slt i64 %i.asx, %i.awq
  br i1 %i.awr, label %bb.df, label %bb.di

bb.df:                                            ; preds = %bb.de
  %i.aws = getelementptr inbounds i8, ptr %.010381854, i64 %i.awq ; 3 uses
  %i.awt = icmp ult ptr %i.l, %i.aws
  br i1 %i.awt, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.awu = call ptr @rb_errno_ptr() #12
  store i32 34, ptr %i.awu, align 4, !tbaa !9
  br label %.loopexit1556

bb.dh:                                            ; preds = %bb.df
  %i.awv = sub i64 0, %i.asx
  %i.aww = getelementptr inbounds i8, ptr %i.aws, i64 %i.awv
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.aww, ptr align 1 %.010381854, i64 %i.asx, i1 false)
  %.not1290 = icmp eq i8 %.010802311, 0
  %narrow1291 = select i1 %.not1290, i8 32, i8 %.010802311
  %i.awx = sub nsw i64 %i.awq, %i.asx
  call void @llvm.memset.p0.i64(ptr align 1 %.010381854, i8 %narrow1291, i64 %i.awx, i1 false)
  br label %.thread

bb.di:                                            ; preds = %bb.de, %upcase.exit1468
  %i.awy = getelementptr inbounds i8, ptr %.010381854, i64 %i.asx
  br label %.thread

.loopexit2396:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.awz = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ]
  %.010802312 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832270 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ]
  %.010892229 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ]
  %i.axa = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.axb = getelementptr inbounds nuw i8, ptr %i.axa, i64 72
  %i.axc = load ptr, ptr %i.axb, align 8, !tbaa !59
  %i.axd = load ptr, ptr %3, align 8, !tbaa !60
  %i.axe = call i32 %i.axc(ptr noundef %i.axd) #12
  %spec.select1419 = call i32 @llvm.smax.i32(i32 %.010892229, i32 1)
  %i.axf = and i32 %.010832270, 1
  %.not1285 = icmp eq i32 %i.axf, 0
  %.431132 = select i1 %.not1285, i32 %spec.select1419, i32 1
  %i.axg = ptrtoint ptr %.010381854 to i64
  %i.axh = sub i64 %i.aa, %i.axg
  %i.axi = icmp eq i8 %.010802312, 48
  %.not1286 = icmp eq i8 %.010802312, 0
  %i.axj = or i1 %i.axi, %.not1286
  %i.axk = select i1 %i.axj, ptr @.str.5, ptr @.str.6
  %i.axl = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.010381854, i64 noundef %i.axh, ptr noundef nonnull %i.axk, i32 noundef %.431132, i32 noundef %i.axe) #12 ; 2 uses
  %i.axm = icmp slt i32 %i.axl, 0
  %i.axn = zext nneg i32 %i.axl to i64
  %i.axo = getelementptr inbounds nuw i8, ptr %.010381854, i64 %i.axn
  br i1 %i.axm, label %.thread1499, label %.thread

.loopexit2397:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.axp = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802313 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832271 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 2 uses
  %.010892230 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ]
  %i.axq = ptrtoint ptr %.010381854 to i64
  %i.axr = sub i64 %i.aa, %i.axq
  %i.axs = call fastcc i64 @date_strftime_with_tmx(ptr noundef %.010381854, i64 noundef %i.axr, ptr noundef nonnull @.str.13, ptr noundef %3) ; 16 uses
  %.not1280 = icmp eq i64 %i.axs, 0
  br i1 %.not1280, label %.loopexit1556, label %bb.dj

bb.dj:                                            ; preds = %.loopexit2397
  %i.axt = and i32 %.010832271, 8
  %.not1281 = icmp eq i32 %i.axt, 0
  br i1 %.not1281, label %upcase.exit1472, label %iter.check3992

iter.check3992:                                   ; preds = %bb.dj
  %min.iters.check3933 = icmp ult i64 %i.axs, 4
  br i1 %min.iters.check3933, label %.preheader1552.preheader, label %vector.main.loop.iter.check3934

vector.main.loop.iter.check3934:                  ; preds = %iter.check3992
  %min.iters.check3935 = icmp ult i64 %i.axs, 16
  br i1 %min.iters.check3935, label %vec.epilog.ph3996, label %vector.ph3936

vector.ph3936:                                    ; preds = %vector.main.loop.iter.check3934
  %i.axu = and i64 %i.axs, 12
  %n.vec3937 = and i64 %i.axs, -16                ; 4 uses
  %i.axv = getelementptr i8, ptr %.010381854, i64 %n.vec3937
  %i.axw = and i64 %i.axs, 15
  br label %vector.body3938

vector.body3938:                                  ; preds = %vector.ph3936, %pred.store.continue3988
  %index3939 = phi i64 [ 0, %vector.ph3936 ], [ %index.next3989, %pred.store.continue3988 ] ; 17 uses
  %next.gep3940 = getelementptr i8, ptr %.010381854, i64 %index3939 ; 2 uses
  %i.axx = getelementptr i8, ptr %.010381854, i64 %index3939
  %next.gep3941 = getelementptr i8, ptr %i.axx, i64 1
  %i.axy = getelementptr i8, ptr %.010381854, i64 %index3939
  %next.gep3942 = getelementptr i8, ptr %i.axy, i64 2
  %i.axz = getelementptr i8, ptr %.010381854, i64 %index3939
  %next.gep3943 = getelementptr i8, ptr %i.axz, i64 3
  %i.aya = getelementptr i8, ptr %.010381854, i64 %index3939
  %next.gep3944 = getelementptr i8, ptr %i.aya, i64 4
  %i.ayb = getelementptr i8, ptr %.010381854, i64 %index3939
  %next.gep3945 = getelementptr i8, ptr %i.ayb, i64 5
  %i.ayc = getelementptr i8, ptr %.010381854, i64 %index3939
  %next.gep3946 = getelementptr i8, ptr %i.ayc, i64 6
  %i.ayd = getelementptr i8, ptr %.010381854, i64 %index3939
  %next.gep3947 = getelementptr i8, ptr %i.ayd, i64 7
  %i.aye = getelementptr i8, ptr %.010381854, i64 %index3939
  %next.gep3948 = getelementptr i8, ptr %i.aye, i64 8
  %i.ayf = getelementptr i8, ptr %.010381854, i64 %index3939
  %next.gep3949 = getelementptr i8, ptr %i.ayf, i64 9
  %i.ayg = getelementptr i8, ptr %.010381854, i64 %index3939
  %next.gep3950 = getelementptr i8, ptr %i.ayg, i64 10
  %i.ayh = getelementptr i8, ptr %.010381854, i64 %index3939
  %next.gep3951 = getelementptr i8, ptr %i.ayh, i64 11
  %i.ayi = getelementptr i8, ptr %.010381854, i64 %index3939
  %next.gep3952 = getelementptr i8, ptr %i.ayi, i64 12
  %i.ayj = getelementptr i8, ptr %.010381854, i64 %index3939
  %next.gep3953 = getelementptr i8, ptr %i.ayj, i64 13
  %i.ayk = getelementptr i8, ptr %.010381854, i64 %index3939
  %next.gep3954 = getelementptr i8, ptr %i.ayk, i64 14
  %i.ayl = getelementptr i8, ptr %.010381854, i64 %index3939
  %next.gep3955 = getelementptr i8, ptr %i.ayl, i64 15
  %wide.load3956 = load <16 x i8>, ptr %next.gep3940, align 1, !tbaa !51 ; 17 uses
  %32 = sext <16 x i8> %wide.load3956 to <16 x i32>
  %33 = add nsw <16 x i32> %32, splat (i32 -97)
  %i.aym = icmp ult <16 x i32> %33, splat (i32 26) ; 16 uses
  %i.ayn = extractelement <16 x i1> %i.aym, i64 0
  br i1 %i.ayn, label %pred.store.if3957, label %pred.store.continue3958

pred.store.if3957:                                ; preds = %vector.body3938
  %i.ayo = extractelement <16 x i8> %wide.load3956, i64 0
  %i.ayp = and i8 %i.ayo, 95
  store i8 %i.ayp, ptr %next.gep3940, align 1, !tbaa !51
  br label %pred.store.continue3958

pred.store.continue3958:                          ; preds = %pred.store.if3957, %vector.body3938
  %i.ayq = extractelement <16 x i1> %i.aym, i64 1
  br i1 %i.ayq, label %pred.store.if3959, label %pred.store.continue3960

pred.store.if3959:                                ; preds = %pred.store.continue3958
  %i.ayr = extractelement <16 x i8> %wide.load3956, i64 1
  %i.ays = and i8 %i.ayr, 95
  store i8 %i.ays, ptr %next.gep3941, align 1, !tbaa !51
  br label %pred.store.continue3960

pred.store.continue3960:                          ; preds = %pred.store.if3959, %pred.store.continue3958
  %i.ayt = extractelement <16 x i1> %i.aym, i64 2
  br i1 %i.ayt, label %pred.store.if3961, label %pred.store.continue3962

pred.store.if3961:                                ; preds = %pred.store.continue3960
  %i.ayu = extractelement <16 x i8> %wide.load3956, i64 2
  %i.ayv = and i8 %i.ayu, 95
  store i8 %i.ayv, ptr %next.gep3942, align 1, !tbaa !51
  br label %pred.store.continue3962

pred.store.continue3962:                          ; preds = %pred.store.if3961, %pred.store.continue3960
  %i.ayw = extractelement <16 x i1> %i.aym, i64 3
  br i1 %i.ayw, label %pred.store.if3963, label %pred.store.continue3964

pred.store.if3963:                                ; preds = %pred.store.continue3962
  %i.ayx = extractelement <16 x i8> %wide.load3956, i64 3
  %i.ayy = and i8 %i.ayx, 95
  store i8 %i.ayy, ptr %next.gep3943, align 1, !tbaa !51
  br label %pred.store.continue3964

pred.store.continue3964:                          ; preds = %pred.store.if3963, %pred.store.continue3962
  %i.ayz = extractelement <16 x i1> %i.aym, i64 4
  br i1 %i.ayz, label %pred.store.if3965, label %pred.store.continue3966

pred.store.if3965:                                ; preds = %pred.store.continue3964
  %i.aza = extractelement <16 x i8> %wide.load3956, i64 4
  %i.azb = and i8 %i.aza, 95
  store i8 %i.azb, ptr %next.gep3944, align 1, !tbaa !51
  br label %pred.store.continue3966

pred.store.continue3966:                          ; preds = %pred.store.if3965, %pred.store.continue3964
  %i.azc = extractelement <16 x i1> %i.aym, i64 5
  br i1 %i.azc, label %pred.store.if3967, label %pred.store.continue3968

pred.store.if3967:                                ; preds = %pred.store.continue3966
  %i.azd = extractelement <16 x i8> %wide.load3956, i64 5
  %i.aze = and i8 %i.azd, 95
  store i8 %i.aze, ptr %next.gep3945, align 1, !tbaa !51
  br label %pred.store.continue3968

pred.store.continue3968:                          ; preds = %pred.store.if3967, %pred.store.continue3966
  %i.azf = extractelement <16 x i1> %i.aym, i64 6
  br i1 %i.azf, label %pred.store.if3969, label %pred.store.continue3970

pred.store.if3969:                                ; preds = %pred.store.continue3968
  %i.azg = extractelement <16 x i8> %wide.load3956, i64 6
  %i.azh = and i8 %i.azg, 95
  store i8 %i.azh, ptr %next.gep3946, align 1, !tbaa !51
  br label %pred.store.continue3970

pred.store.continue3970:                          ; preds = %pred.store.if3969, %pred.store.continue3968
  %i.azi = extractelement <16 x i1> %i.aym, i64 7
  br i1 %i.azi, label %pred.store.if3971, label %pred.store.continue3972

pred.store.if3971:                                ; preds = %pred.store.continue3970
  %i.azj = extractelement <16 x i8> %wide.load3956, i64 7
  %i.azk = and i8 %i.azj, 95
  store i8 %i.azk, ptr %next.gep3947, align 1, !tbaa !51
  br label %pred.store.continue3972

pred.store.continue3972:                          ; preds = %pred.store.if3971, %pred.store.continue3970
  %i.azl = extractelement <16 x i1> %i.aym, i64 8
  br i1 %i.azl, label %pred.store.if3973, label %pred.store.continue3974

pred.store.if3973:                                ; preds = %pred.store.continue3972
  %i.azm = extractelement <16 x i8> %wide.load3956, i64 8
  %i.azn = and i8 %i.azm, 95
  store i8 %i.azn, ptr %next.gep3948, align 1, !tbaa !51
  br label %pred.store.continue3974

pred.store.continue3974:                          ; preds = %pred.store.if3973, %pred.store.continue3972
  %i.azo = extractelement <16 x i1> %i.aym, i64 9
  br i1 %i.azo, label %pred.store.if3975, label %pred.store.continue3976

pred.store.if3975:                                ; preds = %pred.store.continue3974
  %i.azp = extractelement <16 x i8> %wide.load3956, i64 9
  %i.azq = and i8 %i.azp, 95
  store i8 %i.azq, ptr %next.gep3949, align 1, !tbaa !51
  br label %pred.store.continue3976

pred.store.continue3976:                          ; preds = %pred.store.if3975, %pred.store.continue3974
  %i.azr = extractelement <16 x i1> %i.aym, i64 10
  br i1 %i.azr, label %pred.store.if3977, label %pred.store.continue3978

pred.store.if3977:                                ; preds = %pred.store.continue3976
  %i.azs = extractelement <16 x i8> %wide.load3956, i64 10
  %i.azt = and i8 %i.azs, 95
  store i8 %i.azt, ptr %next.gep3950, align 1, !tbaa !51
  br label %pred.store.continue3978

pred.store.continue3978:                          ; preds = %pred.store.if3977, %pred.store.continue3976
  %i.azu = extractelement <16 x i1> %i.aym, i64 11
  br i1 %i.azu, label %pred.store.if3979, label %pred.store.continue3980

pred.store.if3979:                                ; preds = %pred.store.continue3978
  %i.azv = extractelement <16 x i8> %wide.load3956, i64 11
  %i.azw = and i8 %i.azv, 95
  store i8 %i.azw, ptr %next.gep3951, align 1, !tbaa !51
  br label %pred.store.continue3980

pred.store.continue3980:                          ; preds = %pred.store.if3979, %pred.store.continue3978
  %i.azx = extractelement <16 x i1> %i.aym, i64 12
  br i1 %i.azx, label %pred.store.if3981, label %pred.store.continue3982

pred.store.if3981:                                ; preds = %pred.store.continue3980
  %i.azy = extractelement <16 x i8> %wide.load3956, i64 12
  %i.azz = and i8 %i.azy, 95
  store i8 %i.azz, ptr %next.gep3952, align 1, !tbaa !51
  br label %pred.store.continue3982

pred.store.continue3982:                          ; preds = %pred.store.if3981, %pred.store.continue3980
  %i.baa = extractelement <16 x i1> %i.aym, i64 13
  br i1 %i.baa, label %pred.store.if3983, label %pred.store.continue3984

pred.store.if3983:                                ; preds = %pred.store.continue3982
  %i.bab = extractelement <16 x i8> %wide.load3956, i64 13
  %i.bac = and i8 %i.bab, 95
  store i8 %i.bac, ptr %next.gep3953, align 1, !tbaa !51
  br label %pred.store.continue3984

pred.store.continue3984:                          ; preds = %pred.store.if3983, %pred.store.continue3982
  %i.bad = extractelement <16 x i1> %i.aym, i64 14
  br i1 %i.bad, label %pred.store.if3985, label %pred.store.continue3986

pred.store.if3985:                                ; preds = %pred.store.continue3984
  %i.bae = extractelement <16 x i8> %wide.load3956, i64 14
  %i.baf = and i8 %i.bae, 95
  store i8 %i.baf, ptr %next.gep3954, align 1, !tbaa !51
  br label %pred.store.continue3986

pred.store.continue3986:                          ; preds = %pred.store.if3985, %pred.store.continue3984
  %i.bag = extractelement <16 x i1> %i.aym, i64 15
  br i1 %i.bag, label %pred.store.if3987, label %pred.store.continue3988

pred.store.if3987:                                ; preds = %pred.store.continue3986
  %i.bah = extractelement <16 x i8> %wide.load3956, i64 15
  %i.bai = and i8 %i.bah, 95
  store i8 %i.bai, ptr %next.gep3955, align 1, !tbaa !51
  br label %pred.store.continue3988

pred.store.continue3988:                          ; preds = %pred.store.if3987, %pred.store.continue3986
  %index.next3989 = add nuw i64 %index3939, 16    ; 2 uses
  %i.baj = icmp eq i64 %index.next3989, %n.vec3937
  br i1 %i.baj, label %middle.block3990, label %vector.body3938, !llvm.loop !35

middle.block3990:                                 ; preds = %pred.store.continue3988
  %cmp.n3991 = icmp eq i64 %i.axs, %n.vec3937
  br i1 %cmp.n3991, label %upcase.exit1472, label %vec.epilog.iter.check3993

vec.epilog.iter.check3993:                        ; preds = %middle.block3990
  %min.epilog.iters.check3995 = icmp eq i64 %i.axu, 0
  br i1 %min.epilog.iters.check3995, label %.preheader1552.preheader, label %vec.epilog.ph3996, !prof !68

vec.epilog.ph3996:                                ; preds = %vector.main.loop.iter.check3934, %vec.epilog.iter.check3993
  %vec.epilog.resume.val3997 = phi i64 [ %n.vec3937, %vec.epilog.iter.check3993 ], [ 0, %vector.main.loop.iter.check3934 ]
  %n.vec3998 = and i64 %i.axs, -4                 ; 3 uses
  %i.bak = getelementptr i8, ptr %.010381854, i64 %n.vec3998
  %i.bal = and i64 %i.axs, 3
  br label %vec.epilog.vector.body3999

vec.epilog.vector.body3999:                       ; preds = %pred.store.continue4013, %vec.epilog.ph3996
  %index4000 = phi i64 [ %vec.epilog.resume.val3997, %vec.epilog.ph3996 ], [ %index.next4014, %pred.store.continue4013 ] ; 5 uses
  %next.gep4001 = getelementptr i8, ptr %.010381854, i64 %index4000 ; 2 uses
  %i.bam = getelementptr i8, ptr %.010381854, i64 %index4000
  %next.gep4002 = getelementptr i8, ptr %i.bam, i64 1
  %i.ban = getelementptr i8, ptr %.010381854, i64 %index4000
  %next.gep4003 = getelementptr i8, ptr %i.ban, i64 2
  %i.bao = getelementptr i8, ptr %.010381854, i64 %index4000
  %next.gep4004 = getelementptr i8, ptr %i.bao, i64 3
  %wide.load4005 = load <4 x i8>, ptr %next.gep4001, align 1, !tbaa !51 ; 5 uses
  %34 = sext <4 x i8> %wide.load4005 to <4 x i32>
  %35 = add nsw <4 x i32> %34, splat (i32 -97)
  %i.bap = icmp ult <4 x i32> %35, splat (i32 26) ; 4 uses
  %i.baq = extractelement <4 x i1> %i.bap, i64 0
  br i1 %i.baq, label %pred.store.if4006, label %pred.store.continue4007

pred.store.if4006:                                ; preds = %vec.epilog.vector.body3999
  %i.bar = extractelement <4 x i8> %wide.load4005, i64 0
  %i.bas = and i8 %i.bar, 95
  store i8 %i.bas, ptr %next.gep4001, align 1, !tbaa !51
  br label %pred.store.continue4007

pred.store.continue4007:                          ; preds = %pred.store.if4006, %vec.epilog.vector.body3999
  %i.bat = extractelement <4 x i1> %i.bap, i64 1
  br i1 %i.bat, label %pred.store.if4008, label %pred.store.continue4009

pred.store.if4008:                                ; preds = %pred.store.continue4007
  %i.bau = extractelement <4 x i8> %wide.load4005, i64 1
  %i.bav = and i8 %i.bau, 95
  store i8 %i.bav, ptr %next.gep4002, align 1, !tbaa !51
  br label %pred.store.continue4009

pred.store.continue4009:                          ; preds = %pred.store.if4008, %pred.store.continue4007
  %i.baw = extractelement <4 x i1> %i.bap, i64 2
  br i1 %i.baw, label %pred.store.if4010, label %pred.store.continue4011

pred.store.if4010:                                ; preds = %pred.store.continue4009
  %i.bax = extractelement <4 x i8> %wide.load4005, i64 2
  %i.bay = and i8 %i.bax, 95
  store i8 %i.bay, ptr %next.gep4003, align 1, !tbaa !51
  br label %pred.store.continue4011

pred.store.continue4011:                          ; preds = %pred.store.if4010, %pred.store.continue4009
  %i.baz = extractelement <4 x i1> %i.bap, i64 3
  br i1 %i.baz, label %pred.store.if4012, label %pred.store.continue4013

pred.store.if4012:                                ; preds = %pred.store.continue4011
  %i.bba = extractelement <4 x i8> %wide.load4005, i64 3
  %i.bbb = and i8 %i.bba, 95
  store i8 %i.bbb, ptr %next.gep4004, align 1, !tbaa !51
  br label %pred.store.continue4013

pred.store.continue4013:                          ; preds = %pred.store.if4012, %pred.store.continue4011
  %index.next4014 = add nuw i64 %index4000, 4     ; 2 uses
  %i.bbc = icmp eq i64 %index.next4014, %n.vec3998
  br i1 %i.bbc, label %vec.epilog.middle.block4015, label %vec.epilog.vector.body3999, !llvm.loop !36

vec.epilog.middle.block4015:                      ; preds = %pred.store.continue4013
  %cmp.n4016 = icmp eq i64 %i.axs, %n.vec3998
  br i1 %cmp.n4016, label %upcase.exit1472, label %.preheader1552.preheader

.preheader1552.preheader:                         ; preds = %iter.check3992, %vec.epilog.iter.check3993, %vec.epilog.middle.block4015
  %.04.i1469.ph = phi ptr [ %.010381854, %iter.check3992 ], [ %i.axv, %vec.epilog.iter.check3993 ], [ %i.bak, %vec.epilog.middle.block4015 ]
  %.0.i1470.ph = phi i64 [ %i.axs, %iter.check3992 ], [ %i.axw, %vec.epilog.iter.check3993 ], [ %i.bal, %vec.epilog.middle.block4015 ]
  br label %.preheader1552

.preheader1552:                                   ; preds = %.preheader1552.preheader, %bb.dl
  %.04.i1469 = phi ptr [ %i.bbi, %bb.dl ], [ %.04.i1469.ph, %.preheader1552.preheader ] ; 3 uses
  %.0.i1470 = phi i64 [ %i.bbj, %bb.dl ], [ %.0.i1470.ph, %.preheader1552.preheader ]
  %i.bbd = load i8, ptr %.04.i1469, align 1, !tbaa !51 ; 2 uses
  %i.bbe = sext i8 %i.bbd to i32
  %i.bbf = add nsw i32 %i.bbe, -123
  %i.bbg = icmp ult i32 %i.bbf, -26
  br i1 %i.bbg, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %.preheader1552
  %i.bbh = and i8 %i.bbd, 95
  store i8 %i.bbh, ptr %.04.i1469, align 1, !tbaa !51
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %.preheader1552
  %i.bbi = getelementptr inbounds nuw i8, ptr %.04.i1469, i64 1
  %i.bbj = add i64 %.0.i1470, -1                  ; 2 uses
  %.not6.i1471 = icmp eq i64 %i.bbj, 0
  br i1 %.not6.i1471, label %upcase.exit1472, label %.preheader1552, !llvm.loop !37

upcase.exit1472:                                  ; preds = %bb.dl, %middle.block3990, %vec.epilog.middle.block4015, %bb.dj
  %i.bbk = and i32 %.010832271, 1
  %.not1282 = icmp eq i32 %i.bbk, 0
  br i1 %.not1282, label %bb.dm, label %bb.dq

bb.dm:                                            ; preds = %upcase.exit1472
  %i.bbl = sext i32 %.010892230 to i64            ; 3 uses
  %i.bbm = icmp slt i64 %i.axs, %i.bbl
  br i1 %i.bbm, label %bb.dn, label %bb.dq

bb.dn:                                            ; preds = %bb.dm
  %i.bbn = getelementptr inbounds i8, ptr %.010381854, i64 %i.bbl ; 3 uses
  %i.bbo = icmp ult ptr %i.l, %i.bbn
  br i1 %i.bbo, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.bbp = call ptr @rb_errno_ptr() #12
  store i32 34, ptr %i.bbp, align 4, !tbaa !9
  br label %.loopexit1556

bb.dp:                                            ; preds = %bb.dn
  %i.bbq = sub i64 0, %i.axs
  %i.bbr = getelementptr inbounds i8, ptr %i.bbn, i64 %i.bbq
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bbr, ptr align 1 %.010381854, i64 %i.axs, i1 false)
  %.not1283 = icmp eq i8 %.010802313, 0
  %narrow1284 = select i1 %.not1283, i8 32, i8 %.010802313
  %i.bbs = sub nsw i64 %i.bbl, %i.axs
  call void @llvm.memset.p0.i64(ptr align 1 %.010381854, i8 %narrow1284, i64 %i.bbs, i1 false)
  br label %.thread

bb.dq:                                            ; preds = %bb.dm, %upcase.exit1472
  %i.bbt = getelementptr inbounds i8, ptr %.010381854, i64 %i.axs
  br label %.thread

.loopexit2398:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.bbu = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802314 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832272 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 2 uses
  %.010892231 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ]
  %i.bbv = ptrtoint ptr %.010381854 to i64
  %i.bbw = sub i64 %i.aa, %i.bbv
  %i.bbx = call fastcc i64 @date_strftime_with_tmx(ptr noundef %.010381854, i64 noundef %i.bbw, ptr noundef nonnull @.str.8, ptr noundef %3) ; 16 uses
  %.not1275 = icmp eq i64 %i.bbx, 0
  br i1 %.not1275, label %.loopexit1556, label %bb.dr

bb.dr:                                            ; preds = %.loopexit2398
  %i.bby = and i32 %.010832272, 8
  %.not1276 = icmp eq i32 %i.bby, 0
  br i1 %.not1276, label %upcase.exit1476, label %iter.check4078

iter.check4078:                                   ; preds = %bb.dr
  %min.iters.check4019 = icmp ult i64 %i.bbx, 4
  br i1 %min.iters.check4019, label %.preheader1553.preheader, label %vector.main.loop.iter.check4020

vector.main.loop.iter.check4020:                  ; preds = %iter.check4078
  %min.iters.check4021 = icmp ult i64 %i.bbx, 16
  br i1 %min.iters.check4021, label %vec.epilog.ph4082, label %vector.ph4022

vector.ph4022:                                    ; preds = %vector.main.loop.iter.check4020
  %i.bbz = and i64 %i.bbx, 12
  %n.vec4023 = and i64 %i.bbx, -16                ; 4 uses
  %i.bca = getelementptr i8, ptr %.010381854, i64 %n.vec4023
  %i.bcb = and i64 %i.bbx, 15
  br label %vector.body4024

vector.body4024:                                  ; preds = %vector.ph4022, %pred.store.continue4074
  %index4025 = phi i64 [ 0, %vector.ph4022 ], [ %index.next4075, %pred.store.continue4074 ] ; 17 uses
  %next.gep4026 = getelementptr i8, ptr %.010381854, i64 %index4025 ; 2 uses
  %i.bcc = getelementptr i8, ptr %.010381854, i64 %index4025
  %next.gep4027 = getelementptr i8, ptr %i.bcc, i64 1
  %i.bcd = getelementptr i8, ptr %.010381854, i64 %index4025
  %next.gep4028 = getelementptr i8, ptr %i.bcd, i64 2
  %i.bce = getelementptr i8, ptr %.010381854, i64 %index4025
  %next.gep4029 = getelementptr i8, ptr %i.bce, i64 3
  %i.bcf = getelementptr i8, ptr %.010381854, i64 %index4025
  %next.gep4030 = getelementptr i8, ptr %i.bcf, i64 4
  %i.bcg = getelementptr i8, ptr %.010381854, i64 %index4025
  %next.gep4031 = getelementptr i8, ptr %i.bcg, i64 5
  %i.bch = getelementptr i8, ptr %.010381854, i64 %index4025
  %next.gep4032 = getelementptr i8, ptr %i.bch, i64 6
  %i.bci = getelementptr i8, ptr %.010381854, i64 %index4025
  %next.gep4033 = getelementptr i8, ptr %i.bci, i64 7
  %i.bcj = getelementptr i8, ptr %.010381854, i64 %index4025
  %next.gep4034 = getelementptr i8, ptr %i.bcj, i64 8
  %i.bck = getelementptr i8, ptr %.010381854, i64 %index4025
  %next.gep4035 = getelementptr i8, ptr %i.bck, i64 9
  %i.bcl = getelementptr i8, ptr %.010381854, i64 %index4025
  %next.gep4036 = getelementptr i8, ptr %i.bcl, i64 10
  %i.bcm = getelementptr i8, ptr %.010381854, i64 %index4025
  %next.gep4037 = getelementptr i8, ptr %i.bcm, i64 11
  %i.bcn = getelementptr i8, ptr %.010381854, i64 %index4025
  %next.gep4038 = getelementptr i8, ptr %i.bcn, i64 12
  %i.bco = getelementptr i8, ptr %.010381854, i64 %index4025
  %next.gep4039 = getelementptr i8, ptr %i.bco, i64 13
  %i.bcp = getelementptr i8, ptr %.010381854, i64 %index4025
  %next.gep4040 = getelementptr i8, ptr %i.bcp, i64 14
  %i.bcq = getelementptr i8, ptr %.010381854, i64 %index4025
  %next.gep4041 = getelementptr i8, ptr %i.bcq, i64 15
  %wide.load4042 = load <16 x i8>, ptr %next.gep4026, align 1, !tbaa !51 ; 17 uses
  %36 = sext <16 x i8> %wide.load4042 to <16 x i32>
  %37 = add nsw <16 x i32> %36, splat (i32 -97)
  %i.bcr = icmp ult <16 x i32> %37, splat (i32 26) ; 16 uses
  %i.bcs = extractelement <16 x i1> %i.bcr, i64 0
  br i1 %i.bcs, label %pred.store.if4043, label %pred.store.continue4044

pred.store.if4043:                                ; preds = %vector.body4024
  %i.bct = extractelement <16 x i8> %wide.load4042, i64 0
  %i.bcu = and i8 %i.bct, 95
  store i8 %i.bcu, ptr %next.gep4026, align 1, !tbaa !51
  br label %pred.store.continue4044

pred.store.continue4044:                          ; preds = %pred.store.if4043, %vector.body4024
  %i.bcv = extractelement <16 x i1> %i.bcr, i64 1
  br i1 %i.bcv, label %pred.store.if4045, label %pred.store.continue4046

pred.store.if4045:                                ; preds = %pred.store.continue4044
  %i.bcw = extractelement <16 x i8> %wide.load4042, i64 1
  %i.bcx = and i8 %i.bcw, 95
  store i8 %i.bcx, ptr %next.gep4027, align 1, !tbaa !51
  br label %pred.store.continue4046

pred.store.continue4046:                          ; preds = %pred.store.if4045, %pred.store.continue4044
  %i.bcy = extractelement <16 x i1> %i.bcr, i64 2
  br i1 %i.bcy, label %pred.store.if4047, label %pred.store.continue4048

pred.store.if4047:                                ; preds = %pred.store.continue4046
  %i.bcz = extractelement <16 x i8> %wide.load4042, i64 2
  %i.bda = and i8 %i.bcz, 95
  store i8 %i.bda, ptr %next.gep4028, align 1, !tbaa !51
  br label %pred.store.continue4048

pred.store.continue4048:                          ; preds = %pred.store.if4047, %pred.store.continue4046
  %i.bdb = extractelement <16 x i1> %i.bcr, i64 3
  br i1 %i.bdb, label %pred.store.if4049, label %pred.store.continue4050

pred.store.if4049:                                ; preds = %pred.store.continue4048
  %i.bdc = extractelement <16 x i8> %wide.load4042, i64 3
  %i.bdd = and i8 %i.bdc, 95
  store i8 %i.bdd, ptr %next.gep4029, align 1, !tbaa !51
  br label %pred.store.continue4050

pred.store.continue4050:                          ; preds = %pred.store.if4049, %pred.store.continue4048
  %i.bde = extractelement <16 x i1> %i.bcr, i64 4
  br i1 %i.bde, label %pred.store.if4051, label %pred.store.continue4052

pred.store.if4051:                                ; preds = %pred.store.continue4050
  %i.bdf = extractelement <16 x i8> %wide.load4042, i64 4
  %i.bdg = and i8 %i.bdf, 95
  store i8 %i.bdg, ptr %next.gep4030, align 1, !tbaa !51
  br label %pred.store.continue4052

pred.store.continue4052:                          ; preds = %pred.store.if4051, %pred.store.continue4050
  %i.bdh = extractelement <16 x i1> %i.bcr, i64 5
  br i1 %i.bdh, label %pred.store.if4053, label %pred.store.continue4054

pred.store.if4053:                                ; preds = %pred.store.continue4052
  %i.bdi = extractelement <16 x i8> %wide.load4042, i64 5
  %i.bdj = and i8 %i.bdi, 95
  store i8 %i.bdj, ptr %next.gep4031, align 1, !tbaa !51
  br label %pred.store.continue4054

pred.store.continue4054:                          ; preds = %pred.store.if4053, %pred.store.continue4052
  %i.bdk = extractelement <16 x i1> %i.bcr, i64 6
  br i1 %i.bdk, label %pred.store.if4055, label %pred.store.continue4056

pred.store.if4055:                                ; preds = %pred.store.continue4054
  %i.bdl = extractelement <16 x i8> %wide.load4042, i64 6
  %i.bdm = and i8 %i.bdl, 95
  store i8 %i.bdm, ptr %next.gep4032, align 1, !tbaa !51
  br label %pred.store.continue4056

pred.store.continue4056:                          ; preds = %pred.store.if4055, %pred.store.continue4054
  %i.bdn = extractelement <16 x i1> %i.bcr, i64 7
  br i1 %i.bdn, label %pred.store.if4057, label %pred.store.continue4058

pred.store.if4057:                                ; preds = %pred.store.continue4056
  %i.bdo = extractelement <16 x i8> %wide.load4042, i64 7
  %i.bdp = and i8 %i.bdo, 95
  store i8 %i.bdp, ptr %next.gep4033, align 1, !tbaa !51
  br label %pred.store.continue4058

pred.store.continue4058:                          ; preds = %pred.store.if4057, %pred.store.continue4056
  %i.bdq = extractelement <16 x i1> %i.bcr, i64 8
  br i1 %i.bdq, label %pred.store.if4059, label %pred.store.continue4060

pred.store.if4059:                                ; preds = %pred.store.continue4058
  %i.bdr = extractelement <16 x i8> %wide.load4042, i64 8
  %i.bds = and i8 %i.bdr, 95
  store i8 %i.bds, ptr %next.gep4034, align 1, !tbaa !51
  br label %pred.store.continue4060

pred.store.continue4060:                          ; preds = %pred.store.if4059, %pred.store.continue4058
  %i.bdt = extractelement <16 x i1> %i.bcr, i64 9
  br i1 %i.bdt, label %pred.store.if4061, label %pred.store.continue4062

pred.store.if4061:                                ; preds = %pred.store.continue4060
  %i.bdu = extractelement <16 x i8> %wide.load4042, i64 9
  %i.bdv = and i8 %i.bdu, 95
  store i8 %i.bdv, ptr %next.gep4035, align 1, !tbaa !51
  br label %pred.store.continue4062

pred.store.continue4062:                          ; preds = %pred.store.if4061, %pred.store.continue4060
  %i.bdw = extractelement <16 x i1> %i.bcr, i64 10
  br i1 %i.bdw, label %pred.store.if4063, label %pred.store.continue4064

pred.store.if4063:                                ; preds = %pred.store.continue4062
  %i.bdx = extractelement <16 x i8> %wide.load4042, i64 10
  %i.bdy = and i8 %i.bdx, 95
  store i8 %i.bdy, ptr %next.gep4036, align 1, !tbaa !51
  br label %pred.store.continue4064

pred.store.continue4064:                          ; preds = %pred.store.if4063, %pred.store.continue4062
  %i.bdz = extractelement <16 x i1> %i.bcr, i64 11
  br i1 %i.bdz, label %pred.store.if4065, label %pred.store.continue4066

pred.store.if4065:                                ; preds = %pred.store.continue4064
  %i.bea = extractelement <16 x i8> %wide.load4042, i64 11
  %i.beb = and i8 %i.bea, 95
  store i8 %i.beb, ptr %next.gep4037, align 1, !tbaa !51
  br label %pred.store.continue4066

pred.store.continue4066:                          ; preds = %pred.store.if4065, %pred.store.continue4064
  %i.bec = extractelement <16 x i1> %i.bcr, i64 12
  br i1 %i.bec, label %pred.store.if4067, label %pred.store.continue4068

pred.store.if4067:                                ; preds = %pred.store.continue4066
  %i.bed = extractelement <16 x i8> %wide.load4042, i64 12
  %i.bee = and i8 %i.bed, 95
  store i8 %i.bee, ptr %next.gep4038, align 1, !tbaa !51
  br label %pred.store.continue4068

pred.store.continue4068:                          ; preds = %pred.store.if4067, %pred.store.continue4066
  %i.bef = extractelement <16 x i1> %i.bcr, i64 13
  br i1 %i.bef, label %pred.store.if4069, label %pred.store.continue4070

pred.store.if4069:                                ; preds = %pred.store.continue4068
  %i.beg = extractelement <16 x i8> %wide.load4042, i64 13
  %i.beh = and i8 %i.beg, 95
  store i8 %i.beh, ptr %next.gep4039, align 1, !tbaa !51
  br label %pred.store.continue4070

pred.store.continue4070:                          ; preds = %pred.store.if4069, %pred.store.continue4068
  %i.bei = extractelement <16 x i1> %i.bcr, i64 14
  br i1 %i.bei, label %pred.store.if4071, label %pred.store.continue4072

pred.store.if4071:                                ; preds = %pred.store.continue4070
  %i.bej = extractelement <16 x i8> %wide.load4042, i64 14
  %i.bek = and i8 %i.bej, 95
  store i8 %i.bek, ptr %next.gep4040, align 1, !tbaa !51
  br label %pred.store.continue4072

pred.store.continue4072:                          ; preds = %pred.store.if4071, %pred.store.continue4070
  %i.bel = extractelement <16 x i1> %i.bcr, i64 15
  br i1 %i.bel, label %pred.store.if4073, label %pred.store.continue4074

pred.store.if4073:                                ; preds = %pred.store.continue4072
  %i.bem = extractelement <16 x i8> %wide.load4042, i64 15
  %i.ben = and i8 %i.bem, 95
  store i8 %i.ben, ptr %next.gep4041, align 1, !tbaa !51
  br label %pred.store.continue4074

pred.store.continue4074:                          ; preds = %pred.store.if4073, %pred.store.continue4072
  %index.next4075 = add nuw i64 %index4025, 16    ; 2 uses
  %i.beo = icmp eq i64 %index.next4075, %n.vec4023
  br i1 %i.beo, label %middle.block4076, label %vector.body4024, !llvm.loop !38

middle.block4076:                                 ; preds = %pred.store.continue4074
  %cmp.n4077 = icmp eq i64 %i.bbx, %n.vec4023
  br i1 %cmp.n4077, label %upcase.exit1476, label %vec.epilog.iter.check4079

vec.epilog.iter.check4079:                        ; preds = %middle.block4076
  %min.epilog.iters.check4081 = icmp eq i64 %i.bbz, 0
  br i1 %min.epilog.iters.check4081, label %.preheader1553.preheader, label %vec.epilog.ph4082, !prof !68

vec.epilog.ph4082:                                ; preds = %vector.main.loop.iter.check4020, %vec.epilog.iter.check4079
  %vec.epilog.resume.val4083 = phi i64 [ %n.vec4023, %vec.epilog.iter.check4079 ], [ 0, %vector.main.loop.iter.check4020 ]
  %n.vec4084 = and i64 %i.bbx, -4                 ; 3 uses
  %i.bep = getelementptr i8, ptr %.010381854, i64 %n.vec4084
  %i.beq = and i64 %i.bbx, 3
  br label %vec.epilog.vector.body4085

vec.epilog.vector.body4085:                       ; preds = %pred.store.continue4099, %vec.epilog.ph4082
  %index4086 = phi i64 [ %vec.epilog.resume.val4083, %vec.epilog.ph4082 ], [ %index.next4100, %pred.store.continue4099 ] ; 5 uses
  %next.gep4087 = getelementptr i8, ptr %.010381854, i64 %index4086 ; 2 uses
  %i.ber = getelementptr i8, ptr %.010381854, i64 %index4086
  %next.gep4088 = getelementptr i8, ptr %i.ber, i64 1
  %i.bes = getelementptr i8, ptr %.010381854, i64 %index4086
  %next.gep4089 = getelementptr i8, ptr %i.bes, i64 2
  %i.bet = getelementptr i8, ptr %.010381854, i64 %index4086
  %next.gep4090 = getelementptr i8, ptr %i.bet, i64 3
  %wide.load4091 = load <4 x i8>, ptr %next.gep4087, align 1, !tbaa !51 ; 5 uses
  %38 = sext <4 x i8> %wide.load4091 to <4 x i32>
  %39 = add nsw <4 x i32> %38, splat (i32 -97)
  %i.beu = icmp ult <4 x i32> %39, splat (i32 26) ; 4 uses
  %i.bev = extractelement <4 x i1> %i.beu, i64 0
  br i1 %i.bev, label %pred.store.if4092, label %pred.store.continue4093

pred.store.if4092:                                ; preds = %vec.epilog.vector.body4085
  %i.bew = extractelement <4 x i8> %wide.load4091, i64 0
  %i.bex = and i8 %i.bew, 95
  store i8 %i.bex, ptr %next.gep4087, align 1, !tbaa !51
  br label %pred.store.continue4093

pred.store.continue4093:                          ; preds = %pred.store.if4092, %vec.epilog.vector.body4085
  %i.bey = extractelement <4 x i1> %i.beu, i64 1
  br i1 %i.bey, label %pred.store.if4094, label %pred.store.continue4095

pred.store.if4094:                                ; preds = %pred.store.continue4093
  %i.bez = extractelement <4 x i8> %wide.load4091, i64 1
  %i.bfa = and i8 %i.bez, 95
  store i8 %i.bfa, ptr %next.gep4088, align 1, !tbaa !51
  br label %pred.store.continue4095

pred.store.continue4095:                          ; preds = %pred.store.if4094, %pred.store.continue4093
  %i.bfb = extractelement <4 x i1> %i.beu, i64 2
  br i1 %i.bfb, label %pred.store.if4096, label %pred.store.continue4097

pred.store.if4096:                                ; preds = %pred.store.continue4095
  %i.bfc = extractelement <4 x i8> %wide.load4091, i64 2
  %i.bfd = and i8 %i.bfc, 95
  store i8 %i.bfd, ptr %next.gep4089, align 1, !tbaa !51
  br label %pred.store.continue4097

pred.store.continue4097:                          ; preds = %pred.store.if4096, %pred.store.continue4095
  %i.bfe = extractelement <4 x i1> %i.beu, i64 3
  br i1 %i.bfe, label %pred.store.if4098, label %pred.store.continue4099

pred.store.if4098:                                ; preds = %pred.store.continue4097
  %i.bff = extractelement <4 x i8> %wide.load4091, i64 3
  %i.bfg = and i8 %i.bff, 95
  store i8 %i.bfg, ptr %next.gep4090, align 1, !tbaa !51
  br label %pred.store.continue4099

pred.store.continue4099:                          ; preds = %pred.store.if4098, %pred.store.continue4097
  %index.next4100 = add nuw i64 %index4086, 4     ; 2 uses
  %i.bfh = icmp eq i64 %index.next4100, %n.vec4084
  br i1 %i.bfh, label %vec.epilog.middle.block4101, label %vec.epilog.vector.body4085, !llvm.loop !39

vec.epilog.middle.block4101:                      ; preds = %pred.store.continue4099
  %cmp.n4102 = icmp eq i64 %i.bbx, %n.vec4084
  br i1 %cmp.n4102, label %upcase.exit1476, label %.preheader1553.preheader

.preheader1553.preheader:                         ; preds = %iter.check4078, %vec.epilog.iter.check4079, %vec.epilog.middle.block4101
  %.04.i1473.ph = phi ptr [ %.010381854, %iter.check4078 ], [ %i.bca, %vec.epilog.iter.check4079 ], [ %i.bep, %vec.epilog.middle.block4101 ]
  %.0.i1474.ph = phi i64 [ %i.bbx, %iter.check4078 ], [ %i.bcb, %vec.epilog.iter.check4079 ], [ %i.beq, %vec.epilog.middle.block4101 ]
  br label %.preheader1553

.preheader1553:                                   ; preds = %.preheader1553.preheader, %bb.dt
  %.04.i1473 = phi ptr [ %i.bfn, %bb.dt ], [ %.04.i1473.ph, %.preheader1553.preheader ] ; 3 uses
  %.0.i1474 = phi i64 [ %i.bfo, %bb.dt ], [ %.0.i1474.ph, %.preheader1553.preheader ]
  %i.bfi = load i8, ptr %.04.i1473, align 1, !tbaa !51 ; 2 uses
  %i.bfj = sext i8 %i.bfi to i32
  %i.bfk = add nsw i32 %i.bfj, -123
  %i.bfl = icmp ult i32 %i.bfk, -26
  br i1 %i.bfl, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %.preheader1553
  %i.bfm = and i8 %i.bfi, 95
  store i8 %i.bfm, ptr %.04.i1473, align 1, !tbaa !51
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %.preheader1553
  %i.bfn = getelementptr inbounds nuw i8, ptr %.04.i1473, i64 1
  %i.bfo = add i64 %.0.i1474, -1                  ; 2 uses
  %.not6.i1475 = icmp eq i64 %i.bfo, 0
  br i1 %.not6.i1475, label %upcase.exit1476, label %.preheader1553, !llvm.loop !40

upcase.exit1476:                                  ; preds = %bb.dt, %middle.block4076, %vec.epilog.middle.block4101, %bb.dr
  %i.bfp = and i32 %.010832272, 1
  %.not1277 = icmp eq i32 %i.bfp, 0
  br i1 %.not1277, label %bb.du, label %bb.dy

bb.du:                                            ; preds = %upcase.exit1476
  %i.bfq = sext i32 %.010892231 to i64            ; 3 uses
  %i.bfr = icmp slt i64 %i.bbx, %i.bfq
  br i1 %i.bfr, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %bb.du
  %i.bfs = getelementptr inbounds i8, ptr %.010381854, i64 %i.bfq ; 3 uses
  %i.bft = icmp ult ptr %i.l, %i.bfs
  br i1 %i.bft, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.bfu = call ptr @rb_errno_ptr() #12
  store i32 34, ptr %i.bfu, align 4, !tbaa !9
  br label %.loopexit1556

bb.dx:                                            ; preds = %bb.dv
  %i.bfv = sub i64 0, %i.bbx
  %i.bfw = getelementptr inbounds i8, ptr %i.bfs, i64 %i.bfv
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bfw, ptr align 1 %.010381854, i64 %i.bbx, i1 false)
  %.not1278 = icmp eq i8 %.010802314, 0
  %narrow1279 = select i1 %.not1278, i8 32, i8 %.010802314
  %i.bfx = sub nsw i64 %i.bfq, %i.bbx
  call void @llvm.memset.p0.i64(ptr align 1 %.010381854, i8 %narrow1279, i64 %i.bfx, i1 false)
  br label %.thread

bb.dy:                                            ; preds = %bb.du, %upcase.exit1476
  %i.bfy = getelementptr inbounds i8, ptr %.010381854, i64 %i.bbx
  br label %.thread

.loopexit2399:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.bfz = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ]
  %.010802315 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ]
  %.010832273 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 3 uses
  %.010892232 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ]
  %i.bga = and i32 %.010832273, 2
  %.not1274 = icmp eq i32 %i.bga, 0
  %i.bgb = and i32 %.010832273, -15
  %i.bgc = or disjoint i32 %i.bgb, 4
  %.41087 = select i1 %.not1274, i32 %.010832273, i32 %i.bgc
  %i.bgd = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.bge = getelementptr inbounds nuw i8, ptr %i.bgd, i64 136
  %i.bgf = load ptr, ptr %i.bge, align 8, !tbaa !81
  %i.bgg = load ptr, ptr %3, align 8, !tbaa !60
  %i.bgh = call ptr %i.bgf(ptr noundef %i.bgg) #12 ; 2 uses
  %i.bgi = icmp eq ptr %i.bgh, null
  %.31144 = select i1 %i.bgi, ptr @.str.15, ptr %i.bgh ; 2 uses
  %i.bgj = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.31144) #11
  br label %bb.ft

.loopexit2400.loopexit:                           ; preds = %.preheader1555.jt48
  %i.bgk = getelementptr inbounds i8, ptr %i.ar, i64 -1
  br label %.loopexit2400

.loopexit2400:                                    ; preds = %.preheader1555.jt32, %.loopexit2400.loopexit, %.preheader1555.jt0, %.preheader1555
  %i.bgl = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.loopexit2400.loopexit ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 3 uses
  %.110442325 = phi ptr [ %.010431853, %.preheader1555.jt0 ], [ %i.bgk, %.loopexit2400.loopexit ], [ %.11044.be, %.preheader1555 ], [ %i.bpc, %.preheader1555.jt32 ]
  %.010802316 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.loopexit2400.loopexit ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ]
  %.010832274 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.loopexit2400.loopexit ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ]
  %.010892233 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.loopexit2400.loopexit ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ] ; 12 uses
  %.011342193 = phi i64 [ 0, %.preheader1555.jt0 ], [ %.011342200.ph, %.loopexit2400.loopexit ], [ %.01134.be, %.preheader1555 ], [ %.011342196.ph, %.preheader1555.jt32 ] ; 4 uses
  %i.bgm = load ptr, ptr %i.ab, align 8, !tbaa !57
  %i.bgn = getelementptr inbounds nuw i8, ptr %i.bgm, i64 128
  %i.bgo = load ptr, ptr %i.bgn, align 8, !tbaa !82
  %i.bgp = load ptr, ptr %3, align 8, !tbaa !60
  %i.bgq = call i32 %i.bgo(ptr noundef %i.bgp) #12 ; 2 uses
  %i.bgr = icmp slt i32 %i.bgq, 0
  %i.bgs = call i32 @llvm.abs.i32(i32 %i.bgq, i1 false) ; 5 uses
  %i.bgt = icmp ult i32 %i.bgs, 36000             ; 2 uses
  %.0 = select i1 %i.bgt, i32 1, i32 2            ; 3 uses
  %i.bgu = trunc i32 %.010832274 to i1
  %or.cond47 = and i1 %i.bgt, %i.bgu
  %spec.store.select54 = select i1 %or.cond47, i32 1, i32 2 ; 12 uses
  switch i64 %.011342193, label %.loopexit [
    i64 0, label %bb.dz
    i64 1, label %bb.eb
    i64 2, label %bb.ed
    i64 3, label %bb.ef
  ]

bb.dz:                                            ; preds = %.loopexit2400
  %.not1271 = icmp ult ptr %.010381854, %i.l
  br i1 %.not1271, label %bb.ea, label %.thread1499

bb.ea:                                            ; preds = %bb.dz
  %i.bgv = add nuw nsw i32 %spec.store.select54, 3
  %.not1270 = icmp sgt i32 %.010892233, %i.bgv
  %i.bgw = add nsw i32 %.010892233, -3
  %i.bgx = select i1 %.not1270, i32 %i.bgw, i32 %spec.store.select54 ; 2 uses
  %i.bgy = ptrtoint ptr %.010381854 to i64
  %i.bgz = sub i64 %i.bgy, %i.aa
  %i.bha = sub nsw i32 -4, %i.bgx
  %i.bhb = sext i32 %i.bha to i64
  %.not1272 = icmp slt i64 %i.bgz, %i.bhb
  br i1 %.not1272, label %bb.en, label %.thread1499

bb.eb:                                            ; preds = %.loopexit2400
  %.not1268 = icmp ult ptr %.010381854, %i.l
  br i1 %.not1268, label %bb.ec, label %.thread1499

bb.ec:                                            ; preds = %bb.eb
  %i.bhc = or disjoint i32 %spec.store.select54, 4
  %.not1267 = icmp sgt i32 %.010892233, %i.bhc
  %i.bhd = add nsw i32 %.010892233, -4
  %i.bhe = select i1 %.not1267, i32 %i.bhd, i32 %spec.store.select54 ; 2 uses
  %i.bhf = ptrtoint ptr %.010381854 to i64
  %i.bhg = sub i64 %i.bhf, %i.aa
  %i.bhh = sub nsw i32 -5, %i.bhe
  %i.bhi = sext i32 %i.bhh to i64
  %.not1269 = icmp slt i64 %i.bhg, %i.bhi
  br i1 %.not1269, label %bb.en, label %.thread1499

bb.ed:                                            ; preds = %.loopexit2400
  %.not1265 = icmp ult ptr %.010381854, %i.l
  br i1 %.not1265, label %bb.ee, label %.thread1499

bb.ee:                                            ; preds = %bb.ed
  %i.bhj = add nuw nsw i32 %spec.store.select54, 7
  %.not1264 = icmp sgt i32 %.010892233, %i.bhj
  %i.bhk = add nsw i32 %.010892233, -7
  %i.bhl = select i1 %.not1264, i32 %i.bhk, i32 %spec.store.select54 ; 2 uses
  %i.bhm = ptrtoint ptr %.010381854 to i64
  %i.bhn = sub i64 %i.bhm, %i.aa
end_hunk_1
begin_hunk_2_@date_strftime_with_tmx:bb.a
  %i.bhs = add nuw nsw i32 %spec.store.select54, 1
  %.not1261 = icmp sgt i32 %.010892233, %i.bhs
  %i.bht = add nsw i32 %.010892233, -1
  %i.bhu = select i1 %.not1261, i32 %i.bht, i32 %spec.store.select54 ; 2 uses
  %i.bhv = ptrtoint ptr %.010381854 to i64
  %i.bhw = sub i64 %i.bhv, %i.aa
  %i.bhx = sub i32 -4, %i.bhu
  %i.bhy = sext i32 %i.bhx to i64
  %.not1263 = icmp slt i64 %i.bhw, %i.bhy
  br i1 %.not1263, label %bb.en, label %.thread1499

bb.ei:                                            ; preds = %bb.ef
  %i.bhz = urem i32 %i.bgs, 60
  %i.bia = icmp eq i32 %i.bhz, 0
  %.not1259 = icmp ult ptr %.010381854, %i.l      ; 2 uses
  br i1 %i.bia, label %bb.ej, label %bb.el

bb.ej:                                            ; preds = %bb.ei
  br i1 %.not1259, label %bb.ek, label %.thread1499

bb.ek:                                            ; preds = %bb.ej
  %i.bib = or disjoint i32 %spec.store.select54, 4
  %.not1258 = icmp sgt i32 %.010892233, %i.bib
  %i.bic = add nsw i32 %.010892233, -4
  %i.bid = select i1 %.not1258, i32 %i.bic, i32 %spec.store.select54 ; 2 uses
  %i.bie = ptrtoint ptr %.010381854 to i64
  %i.bif = sub i64 %i.bie, %i.aa
  %i.big = sub nsw i32 -5, %i.bid
  %i.bih = sext i32 %i.big to i64
  %.not1260 = icmp slt i64 %i.bif, %i.bih
  br i1 %.not1260, label %bb.en, label %.thread1499

bb.el:                                            ; preds = %bb.ei
  br i1 %.not1259, label %bb.em, label %.thread1499

bb.em:                                            ; preds = %bb.el
  %i.bii = add nuw nsw i32 %spec.store.select54, 7
  %.not1255 = icmp sgt i32 %.010892233, %i.bii
  %i.bij = add nsw i32 %.010892233, -7
  %i.bik = select i1 %.not1255, i32 %i.bij, i32 %spec.store.select54 ; 2 uses
  %i.bil = ptrtoint ptr %.010381854 to i64
  %i.bim = sub i64 %i.bil, %i.aa
  %i.bin = sub nsw i32 -8, %i.bik
  %i.bio = sext i32 %i.bin to i64
  %.not1257 = icmp slt i64 %i.bim, %i.bio
  br i1 %.not1257, label %bb.en, label %.thread1499

bb.en:                                            ; preds = %bb.eh, %bb.em, %bb.ek, %bb.ee, %bb.ec, %bb.ea
  %.441133 = phi i32 [ %i.bgx, %bb.ea ], [ %i.bhe, %bb.ec ], [ %i.bhl, %bb.ee ], [ %i.bhu, %bb.eh ], [ %i.bid, %bb.ek ], [ %i.bik, %bb.em ] ; 3 uses
  %i.bip = icmp eq i8 %.010802316, 32
  %i.biq = icmp sgt i32 %.441133, %.0
  %or.cond1421 = select i1 %i.bip, i1 %i.biq, i1 false
  br i1 %or.cond1421, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.bir = ptrtoint ptr %.010381854 to i64
  %i.bis = sub i64 %i.aa, %i.bir
  %i.bit = sub nuw nsw i32 %.441133, %.0
  %i.biu = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef %.010381854, i64 noundef %i.bis, ptr noundef nonnull @.str.16, i32 noundef %i.bit, ptr noundef nonnull @.str.15) #12 ; 2 uses
  %i.biv = icmp slt i32 %i.biu, 0
  br i1 %i.biv, label %.thread1499, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.biw = zext nneg i32 %i.biu to i64
  %i.bix = getelementptr inbounds nuw i8, ptr %.010381854, i64 %i.biw
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.en
  %.45 = phi i32 [ %.0, %bb.ep ], [ %.441133, %bb.en ]
  %.35 = phi ptr [ %i.bix, %bb.ep ], [ %.010381854, %bb.en ] ; 2 uses
  %storemerge = select i1 %i.bgr, i8 45, i8 43
  %.36 = getelementptr inbounds nuw i8, ptr %.35, i64 1 ; 3 uses
  store i8 %storemerge, ptr %.35, align 1, !tbaa !51
  %i.biy = ptrtoint ptr %.36 to i64
  %i.biz = sub i64 %i.aa, %i.biy
  %i.bja = udiv i32 %i.bgs, 3600
  %i.bjb = urem i32 %i.bgs, 3600                  ; 2 uses
  %.zext = zext nneg i32 %i.bja to i64
  %i.bjc = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %.36, i64 noundef %i.biz, ptr noundef nonnull @.str.17, i32 noundef %.45, i64 noundef %.zext) #12 ; 2 uses
  %i.bjd = icmp slt i32 %i.bjc, 0
  br i1 %i.bjd, label %.thread1499, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.bje = zext nneg i32 %i.bjc to i64
  %i.bjf = getelementptr inbounds nuw i8, ptr %.36, i64 %i.bje ; 4 uses
  %i.bjg = icmp eq i64 %.011342193, 3             ; 2 uses
  %i.bjh = icmp eq i32 %i.bjb, 0
  %or.cond49 = and i1 %i.bjg, %i.bjh
  br i1 %or.cond49, label %.thread, label %bb.es

bb.es:                                            ; preds = %bb.er
  %.not1273 = icmp eq i64 %.011342193, 0
  br i1 %.not1273, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bji = getelementptr inbounds nuw i8, ptr %i.bjf, i64 1
  store i8 58, ptr %i.bjf, align 1, !tbaa !51
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  %.37 = phi ptr [ %i.bji, %bb.et ], [ %i.bjf, %bb.es ] ; 3 uses
  %i.bjj = ptrtoint ptr %.37 to i64
  %i.bjk = sub i64 %i.aa, %i.bjj
  %.lhs.trunc1532 = trunc nuw nsw i32 %i.bjb to i16 ; 2 uses
  %i.bjl = udiv i16 %.lhs.trunc1532, 60
  %i.bjm = urem i16 %.lhs.trunc1532, 60           ; 2 uses
  %i.bjn = zext nneg i16 %i.bjl to i32
  %i.bjo = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %.37, i64 noundef %i.bjk, ptr noundef nonnull @.str.18, i32 noundef %i.bjn) #12 ; 2 uses
  %i.bjp = icmp slt i32 %i.bjo, 0
  br i1 %i.bjp, label %.thread1499, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.bjq = zext nneg i32 %i.bjo to i64
  %i.bjr = getelementptr inbounds nuw i8, ptr %.37, i64 %i.bjq ; 3 uses
  %i.bjs = icmp eq i16 %i.bjm, 0
  %or.cond51 = and i1 %i.bjg, %i.bjs
  %i.bjt = icmp samesign ult i64 %.011342193, 2
  %or.cond1540.not = select i1 %or.cond51, i1 true, i1 %i.bjt
  br i1 %or.cond1540.not, label %.thread, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjr, i64 1 ; 3 uses
  store i8 58, ptr %i.bjr, align 1, !tbaa !51
  %i.bjv = ptrtoint ptr %i.bju to i64
  %i.bjw = sub i64 %i.aa, %i.bjv
  %i.bjx = zext nneg i16 %i.bjm to i32
  %i.bjy = call i32 (ptr, i64, ptr, ...) @ruby_snprintf(ptr noundef nonnull %i.bju, i64 noundef %i.bjw, ptr noundef nonnull @.str.18, i32 noundef %i.bjx) #12 ; 2 uses
  %i.bjz = icmp slt i32 %i.bjy, 0
  br i1 %i.bjz, label %.thread1499, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.bka = zext nneg i32 %i.bjy to i64
  %i.bkb = getelementptr inbounds nuw i8, ptr %i.bju, i64 %i.bka
  br label %.thread

.loopexit2401:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.bkc = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802317 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ] ; 2 uses
  %.010832275 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 2 uses
  %.010892234 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ]
  %i.bkd = ptrtoint ptr %.010381854 to i64
  %i.bke = sub i64 %i.aa, %i.bkd
  %i.bkf = call fastcc i64 @date_strftime_with_tmx(ptr noundef %.010381854, i64 noundef %i.bke, ptr noundef nonnull @.str.19, ptr noundef %3) ; 16 uses
  %.not1250 = icmp eq i64 %i.bkf, 0
  br i1 %.not1250, label %.loopexit1556, label %bb.ey

bb.ey:                                            ; preds = %.loopexit2401
  %i.bkg = and i32 %.010832275, 8
  %.not1251 = icmp eq i32 %i.bkg, 0
  br i1 %.not1251, label %upcase.exit1480, label %iter.check4164

iter.check4164:                                   ; preds = %bb.ey
  %min.iters.check4105 = icmp ult i64 %i.bkf, 4
  br i1 %min.iters.check4105, label %.preheader1554.preheader, label %vector.main.loop.iter.check4106

vector.main.loop.iter.check4106:                  ; preds = %iter.check4164
  %min.iters.check4107 = icmp ult i64 %i.bkf, 16
  br i1 %min.iters.check4107, label %vec.epilog.ph4168, label %vector.ph4108

vector.ph4108:                                    ; preds = %vector.main.loop.iter.check4106
  %i.bkh = and i64 %i.bkf, 12
  %n.vec4109 = and i64 %i.bkf, -16                ; 4 uses
  %i.bki = getelementptr i8, ptr %.010381854, i64 %n.vec4109
  %i.bkj = and i64 %i.bkf, 15
  br label %vector.body4110

vector.body4110:                                  ; preds = %vector.ph4108, %pred.store.continue4160
  %index4111 = phi i64 [ 0, %vector.ph4108 ], [ %index.next4161, %pred.store.continue4160 ] ; 17 uses
  %next.gep4112 = getelementptr i8, ptr %.010381854, i64 %index4111 ; 2 uses
  %i.bkk = getelementptr i8, ptr %.010381854, i64 %index4111
  %next.gep4113 = getelementptr i8, ptr %i.bkk, i64 1
  %i.bkl = getelementptr i8, ptr %.010381854, i64 %index4111
  %next.gep4114 = getelementptr i8, ptr %i.bkl, i64 2
  %i.bkm = getelementptr i8, ptr %.010381854, i64 %index4111
  %next.gep4115 = getelementptr i8, ptr %i.bkm, i64 3
  %i.bkn = getelementptr i8, ptr %.010381854, i64 %index4111
  %next.gep4116 = getelementptr i8, ptr %i.bkn, i64 4
  %i.bko = getelementptr i8, ptr %.010381854, i64 %index4111
  %next.gep4117 = getelementptr i8, ptr %i.bko, i64 5
  %i.bkp = getelementptr i8, ptr %.010381854, i64 %index4111
  %next.gep4118 = getelementptr i8, ptr %i.bkp, i64 6
  %i.bkq = getelementptr i8, ptr %.010381854, i64 %index4111
  %next.gep4119 = getelementptr i8, ptr %i.bkq, i64 7
  %i.bkr = getelementptr i8, ptr %.010381854, i64 %index4111
  %next.gep4120 = getelementptr i8, ptr %i.bkr, i64 8
  %i.bks = getelementptr i8, ptr %.010381854, i64 %index4111
  %next.gep4121 = getelementptr i8, ptr %i.bks, i64 9
  %i.bkt = getelementptr i8, ptr %.010381854, i64 %index4111
  %next.gep4122 = getelementptr i8, ptr %i.bkt, i64 10
  %i.bku = getelementptr i8, ptr %.010381854, i64 %index4111
  %next.gep4123 = getelementptr i8, ptr %i.bku, i64 11
  %i.bkv = getelementptr i8, ptr %.010381854, i64 %index4111
  %next.gep4124 = getelementptr i8, ptr %i.bkv, i64 12
  %i.bkw = getelementptr i8, ptr %.010381854, i64 %index4111
  %next.gep4125 = getelementptr i8, ptr %i.bkw, i64 13
  %i.bkx = getelementptr i8, ptr %.010381854, i64 %index4111
  %next.gep4126 = getelementptr i8, ptr %i.bkx, i64 14
  %i.bky = getelementptr i8, ptr %.010381854, i64 %index4111
  %next.gep4127 = getelementptr i8, ptr %i.bky, i64 15
  %wide.load4128 = load <16 x i8>, ptr %next.gep4112, align 1, !tbaa !51 ; 17 uses
  %40 = sext <16 x i8> %wide.load4128 to <16 x i32>
  %41 = add nsw <16 x i32> %40, splat (i32 -97)
  %i.bkz = icmp ult <16 x i32> %41, splat (i32 26) ; 16 uses
  %i.bla = extractelement <16 x i1> %i.bkz, i64 0
  br i1 %i.bla, label %pred.store.if4129, label %pred.store.continue4130

pred.store.if4129:                                ; preds = %vector.body4110
  %i.blb = extractelement <16 x i8> %wide.load4128, i64 0
  %i.blc = and i8 %i.blb, 95
  store i8 %i.blc, ptr %next.gep4112, align 1, !tbaa !51
  br label %pred.store.continue4130

pred.store.continue4130:                          ; preds = %pred.store.if4129, %vector.body4110
  %i.bld = extractelement <16 x i1> %i.bkz, i64 1
  br i1 %i.bld, label %pred.store.if4131, label %pred.store.continue4132

pred.store.if4131:                                ; preds = %pred.store.continue4130
  %i.ble = extractelement <16 x i8> %wide.load4128, i64 1
  %i.blf = and i8 %i.ble, 95
  store i8 %i.blf, ptr %next.gep4113, align 1, !tbaa !51
  br label %pred.store.continue4132

pred.store.continue4132:                          ; preds = %pred.store.if4131, %pred.store.continue4130
  %i.blg = extractelement <16 x i1> %i.bkz, i64 2
  br i1 %i.blg, label %pred.store.if4133, label %pred.store.continue4134

pred.store.if4133:                                ; preds = %pred.store.continue4132
  %i.blh = extractelement <16 x i8> %wide.load4128, i64 2
  %i.bli = and i8 %i.blh, 95
  store i8 %i.bli, ptr %next.gep4114, align 1, !tbaa !51
  br label %pred.store.continue4134

pred.store.continue4134:                          ; preds = %pred.store.if4133, %pred.store.continue4132
  %i.blj = extractelement <16 x i1> %i.bkz, i64 3
  br i1 %i.blj, label %pred.store.if4135, label %pred.store.continue4136

pred.store.if4135:                                ; preds = %pred.store.continue4134
  %i.blk = extractelement <16 x i8> %wide.load4128, i64 3
  %i.bll = and i8 %i.blk, 95
  store i8 %i.bll, ptr %next.gep4115, align 1, !tbaa !51
  br label %pred.store.continue4136

pred.store.continue4136:                          ; preds = %pred.store.if4135, %pred.store.continue4134
  %i.blm = extractelement <16 x i1> %i.bkz, i64 4
  br i1 %i.blm, label %pred.store.if4137, label %pred.store.continue4138

pred.store.if4137:                                ; preds = %pred.store.continue4136
  %i.bln = extractelement <16 x i8> %wide.load4128, i64 4
  %i.blo = and i8 %i.bln, 95
  store i8 %i.blo, ptr %next.gep4116, align 1, !tbaa !51
  br label %pred.store.continue4138

pred.store.continue4138:                          ; preds = %pred.store.if4137, %pred.store.continue4136
  %i.blp = extractelement <16 x i1> %i.bkz, i64 5
  br i1 %i.blp, label %pred.store.if4139, label %pred.store.continue4140

pred.store.if4139:                                ; preds = %pred.store.continue4138
  %i.blq = extractelement <16 x i8> %wide.load4128, i64 5
  %i.blr = and i8 %i.blq, 95
  store i8 %i.blr, ptr %next.gep4117, align 1, !tbaa !51
  br label %pred.store.continue4140

pred.store.continue4140:                          ; preds = %pred.store.if4139, %pred.store.continue4138
  %i.bls = extractelement <16 x i1> %i.bkz, i64 6
  br i1 %i.bls, label %pred.store.if4141, label %pred.store.continue4142

pred.store.if4141:                                ; preds = %pred.store.continue4140
  %i.blt = extractelement <16 x i8> %wide.load4128, i64 6
  %i.blu = and i8 %i.blt, 95
  store i8 %i.blu, ptr %next.gep4118, align 1, !tbaa !51
  br label %pred.store.continue4142

pred.store.continue4142:                          ; preds = %pred.store.if4141, %pred.store.continue4140
  %i.blv = extractelement <16 x i1> %i.bkz, i64 7
  br i1 %i.blv, label %pred.store.if4143, label %pred.store.continue4144

pred.store.if4143:                                ; preds = %pred.store.continue4142
  %i.blw = extractelement <16 x i8> %wide.load4128, i64 7
  %i.blx = and i8 %i.blw, 95
  store i8 %i.blx, ptr %next.gep4119, align 1, !tbaa !51
  br label %pred.store.continue4144

pred.store.continue4144:                          ; preds = %pred.store.if4143, %pred.store.continue4142
  %i.bly = extractelement <16 x i1> %i.bkz, i64 8
  br i1 %i.bly, label %pred.store.if4145, label %pred.store.continue4146

pred.store.if4145:                                ; preds = %pred.store.continue4144
  %i.blz = extractelement <16 x i8> %wide.load4128, i64 8
  %i.bma = and i8 %i.blz, 95
  store i8 %i.bma, ptr %next.gep4120, align 1, !tbaa !51
  br label %pred.store.continue4146

pred.store.continue4146:                          ; preds = %pred.store.if4145, %pred.store.continue4144
  %i.bmb = extractelement <16 x i1> %i.bkz, i64 9
  br i1 %i.bmb, label %pred.store.if4147, label %pred.store.continue4148

pred.store.if4147:                                ; preds = %pred.store.continue4146
  %i.bmc = extractelement <16 x i8> %wide.load4128, i64 9
  %i.bmd = and i8 %i.bmc, 95
  store i8 %i.bmd, ptr %next.gep4121, align 1, !tbaa !51
  br label %pred.store.continue4148

pred.store.continue4148:                          ; preds = %pred.store.if4147, %pred.store.continue4146
  %i.bme = extractelement <16 x i1> %i.bkz, i64 10
  br i1 %i.bme, label %pred.store.if4149, label %pred.store.continue4150

pred.store.if4149:                                ; preds = %pred.store.continue4148
  %i.bmf = extractelement <16 x i8> %wide.load4128, i64 10
  %i.bmg = and i8 %i.bmf, 95
  store i8 %i.bmg, ptr %next.gep4122, align 1, !tbaa !51
  br label %pred.store.continue4150

pred.store.continue4150:                          ; preds = %pred.store.if4149, %pred.store.continue4148
  %i.bmh = extractelement <16 x i1> %i.bkz, i64 11
  br i1 %i.bmh, label %pred.store.if4151, label %pred.store.continue4152

pred.store.if4151:                                ; preds = %pred.store.continue4150
  %i.bmi = extractelement <16 x i8> %wide.load4128, i64 11
  %i.bmj = and i8 %i.bmi, 95
  store i8 %i.bmj, ptr %next.gep4123, align 1, !tbaa !51
  br label %pred.store.continue4152

pred.store.continue4152:                          ; preds = %pred.store.if4151, %pred.store.continue4150
  %i.bmk = extractelement <16 x i1> %i.bkz, i64 12
  br i1 %i.bmk, label %pred.store.if4153, label %pred.store.continue4154

pred.store.if4153:                                ; preds = %pred.store.continue4152
  %i.bml = extractelement <16 x i8> %wide.load4128, i64 12
  %i.bmm = and i8 %i.bml, 95
  store i8 %i.bmm, ptr %next.gep4124, align 1, !tbaa !51
  br label %pred.store.continue4154

pred.store.continue4154:                          ; preds = %pred.store.if4153, %pred.store.continue4152
  %i.bmn = extractelement <16 x i1> %i.bkz, i64 13
  br i1 %i.bmn, label %pred.store.if4155, label %pred.store.continue4156

pred.store.if4155:                                ; preds = %pred.store.continue4154
  %i.bmo = extractelement <16 x i8> %wide.load4128, i64 13
  %i.bmp = and i8 %i.bmo, 95
  store i8 %i.bmp, ptr %next.gep4125, align 1, !tbaa !51
  br label %pred.store.continue4156

pred.store.continue4156:                          ; preds = %pred.store.if4155, %pred.store.continue4154
  %i.bmq = extractelement <16 x i1> %i.bkz, i64 14
  br i1 %i.bmq, label %pred.store.if4157, label %pred.store.continue4158

pred.store.if4157:                                ; preds = %pred.store.continue4156
  %i.bmr = extractelement <16 x i8> %wide.load4128, i64 14
  %i.bms = and i8 %i.bmr, 95
  store i8 %i.bms, ptr %next.gep4126, align 1, !tbaa !51
  br label %pred.store.continue4158

pred.store.continue4158:                          ; preds = %pred.store.if4157, %pred.store.continue4156
  %i.bmt = extractelement <16 x i1> %i.bkz, i64 15
  br i1 %i.bmt, label %pred.store.if4159, label %pred.store.continue4160

pred.store.if4159:                                ; preds = %pred.store.continue4158
  %i.bmu = extractelement <16 x i8> %wide.load4128, i64 15
  %i.bmv = and i8 %i.bmu, 95
  store i8 %i.bmv, ptr %next.gep4127, align 1, !tbaa !51
  br label %pred.store.continue4160

pred.store.continue4160:                          ; preds = %pred.store.if4159, %pred.store.continue4158
  %index.next4161 = add nuw i64 %index4111, 16    ; 2 uses
  %i.bmw = icmp eq i64 %index.next4161, %n.vec4109
  br i1 %i.bmw, label %middle.block4162, label %vector.body4110, !llvm.loop !41

middle.block4162:                                 ; preds = %pred.store.continue4160
  %cmp.n4163 = icmp eq i64 %i.bkf, %n.vec4109
  br i1 %cmp.n4163, label %upcase.exit1480, label %vec.epilog.iter.check4165

vec.epilog.iter.check4165:                        ; preds = %middle.block4162
  %min.epilog.iters.check4167 = icmp eq i64 %i.bkh, 0
  br i1 %min.epilog.iters.check4167, label %.preheader1554.preheader, label %vec.epilog.ph4168, !prof !68

vec.epilog.ph4168:                                ; preds = %vector.main.loop.iter.check4106, %vec.epilog.iter.check4165
  %vec.epilog.resume.val4169 = phi i64 [ %n.vec4109, %vec.epilog.iter.check4165 ], [ 0, %vector.main.loop.iter.check4106 ]
  %n.vec4170 = and i64 %i.bkf, -4                 ; 3 uses
  %i.bmx = getelementptr i8, ptr %.010381854, i64 %n.vec4170
  %i.bmy = and i64 %i.bkf, 3
  br label %vec.epilog.vector.body4171

vec.epilog.vector.body4171:                       ; preds = %pred.store.continue4185, %vec.epilog.ph4168
  %index4172 = phi i64 [ %vec.epilog.resume.val4169, %vec.epilog.ph4168 ], [ %index.next4186, %pred.store.continue4185 ] ; 5 uses
  %next.gep4173 = getelementptr i8, ptr %.010381854, i64 %index4172 ; 2 uses
  %i.bmz = getelementptr i8, ptr %.010381854, i64 %index4172
  %next.gep4174 = getelementptr i8, ptr %i.bmz, i64 1
  %i.bna = getelementptr i8, ptr %.010381854, i64 %index4172
  %next.gep4175 = getelementptr i8, ptr %i.bna, i64 2
  %i.bnb = getelementptr i8, ptr %.010381854, i64 %index4172
  %next.gep4176 = getelementptr i8, ptr %i.bnb, i64 3
  %wide.load4177 = load <4 x i8>, ptr %next.gep4173, align 1, !tbaa !51 ; 5 uses
  %42 = sext <4 x i8> %wide.load4177 to <4 x i32>
  %43 = add nsw <4 x i32> %42, splat (i32 -97)
  %i.bnc = icmp ult <4 x i32> %43, splat (i32 26) ; 4 uses
  %i.bnd = extractelement <4 x i1> %i.bnc, i64 0
  br i1 %i.bnd, label %pred.store.if4178, label %pred.store.continue4179

pred.store.if4178:                                ; preds = %vec.epilog.vector.body4171
  %i.bne = extractelement <4 x i8> %wide.load4177, i64 0
  %i.bnf = and i8 %i.bne, 95
  store i8 %i.bnf, ptr %next.gep4173, align 1, !tbaa !51
  br label %pred.store.continue4179

pred.store.continue4179:                          ; preds = %pred.store.if4178, %vec.epilog.vector.body4171
  %i.bng = extractelement <4 x i1> %i.bnc, i64 1
  br i1 %i.bng, label %pred.store.if4180, label %pred.store.continue4181

pred.store.if4180:                                ; preds = %pred.store.continue4179
  %i.bnh = extractelement <4 x i8> %wide.load4177, i64 1
  %i.bni = and i8 %i.bnh, 95
  store i8 %i.bni, ptr %next.gep4174, align 1, !tbaa !51
  br label %pred.store.continue4181

pred.store.continue4181:                          ; preds = %pred.store.if4180, %pred.store.continue4179
  %i.bnj = extractelement <4 x i1> %i.bnc, i64 2
  br i1 %i.bnj, label %pred.store.if4182, label %pred.store.continue4183

pred.store.if4182:                                ; preds = %pred.store.continue4181
  %i.bnk = extractelement <4 x i8> %wide.load4177, i64 2
  %i.bnl = and i8 %i.bnk, 95
  store i8 %i.bnl, ptr %next.gep4175, align 1, !tbaa !51
  br label %pred.store.continue4183

pred.store.continue4183:                          ; preds = %pred.store.if4182, %pred.store.continue4181
  %i.bnm = extractelement <4 x i1> %i.bnc, i64 3
  br i1 %i.bnm, label %pred.store.if4184, label %pred.store.continue4185

pred.store.if4184:                                ; preds = %pred.store.continue4183
  %i.bnn = extractelement <4 x i8> %wide.load4177, i64 3
  %i.bno = and i8 %i.bnn, 95
  store i8 %i.bno, ptr %next.gep4176, align 1, !tbaa !51
  br label %pred.store.continue4185

pred.store.continue4185:                          ; preds = %pred.store.if4184, %pred.store.continue4183
  %index.next4186 = add nuw i64 %index4172, 4     ; 2 uses
  %i.bnp = icmp eq i64 %index.next4186, %n.vec4170
  br i1 %i.bnp, label %vec.epilog.middle.block4187, label %vec.epilog.vector.body4171, !llvm.loop !42

vec.epilog.middle.block4187:                      ; preds = %pred.store.continue4185
  %cmp.n4188 = icmp eq i64 %i.bkf, %n.vec4170
  br i1 %cmp.n4188, label %upcase.exit1480, label %.preheader1554.preheader

.preheader1554.preheader:                         ; preds = %iter.check4164, %vec.epilog.iter.check4165, %vec.epilog.middle.block4187
  %.04.i1477.ph = phi ptr [ %.010381854, %iter.check4164 ], [ %i.bki, %vec.epilog.iter.check4165 ], [ %i.bmx, %vec.epilog.middle.block4187 ]
  %.0.i1478.ph = phi i64 [ %i.bkf, %iter.check4164 ], [ %i.bkj, %vec.epilog.iter.check4165 ], [ %i.bmy, %vec.epilog.middle.block4187 ]
  br label %.preheader1554

.preheader1554:                                   ; preds = %.preheader1554.preheader, %bb.fa
  %.04.i1477 = phi ptr [ %i.bnv, %bb.fa ], [ %.04.i1477.ph, %.preheader1554.preheader ] ; 3 uses
  %.0.i1478 = phi i64 [ %i.bnw, %bb.fa ], [ %.0.i1478.ph, %.preheader1554.preheader ]
  %i.bnq = load i8, ptr %.04.i1477, align 1, !tbaa !51 ; 2 uses
  %i.bnr = sext i8 %i.bnq to i32
  %i.bns = add nsw i32 %i.bnr, -123
  %i.bnt = icmp ult i32 %i.bns, -26
  br i1 %i.bnt, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %.preheader1554
  %i.bnu = and i8 %i.bnq, 95
  store i8 %i.bnu, ptr %.04.i1477, align 1, !tbaa !51
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ez, %.preheader1554
  %i.bnv = getelementptr inbounds nuw i8, ptr %.04.i1477, i64 1
  %i.bnw = add i64 %.0.i1478, -1                  ; 2 uses
  %.not6.i1479 = icmp eq i64 %i.bnw, 0
  br i1 %.not6.i1479, label %upcase.exit1480, label %.preheader1554, !llvm.loop !43

upcase.exit1480:                                  ; preds = %bb.fa, %middle.block4162, %vec.epilog.middle.block4187, %bb.ey
  %i.bnx = and i32 %.010832275, 1
  %.not1252 = icmp eq i32 %i.bnx, 0
  br i1 %.not1252, label %bb.fb, label %bb.ff

bb.fb:                                            ; preds = %upcase.exit1480
  %i.bny = sext i32 %.010892234 to i64            ; 3 uses
  %i.bnz = icmp slt i64 %i.bkf, %i.bny
  br i1 %i.bnz, label %bb.fc, label %bb.ff

bb.fc:                                            ; preds = %bb.fb
  %i.boa = getelementptr inbounds i8, ptr %.010381854, i64 %i.bny ; 3 uses
  %i.bob = icmp ult ptr %i.l, %i.boa
  br i1 %i.bob, label %bb.fd, label %bb.fe

bb.fd:                                            ; preds = %bb.fc
  %i.boc = call ptr @rb_errno_ptr() #12
  store i32 34, ptr %i.boc, align 4, !tbaa !9
  br label %.loopexit1556

bb.fe:                                            ; preds = %bb.fc
  %i.bod = sub i64 0, %i.bkf
  %i.boe = getelementptr inbounds i8, ptr %i.boa, i64 %i.bod
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.boe, ptr align 1 %.010381854, i64 %i.bkf, i1 false)
  %.not1253 = icmp eq i8 %.010802317, 0
  %narrow1254 = select i1 %.not1253, i8 32, i8 %.010802317
  %i.bof = sub nsw i64 %i.bny, %i.bkf
  call void @llvm.memset.p0.i64(ptr align 1 %.010381854, i8 %narrow1254, i64 %i.bof, i1 false)
  br label %.thread

bb.ff:                                            ; preds = %bb.fb, %upcase.exit1480
  %i.bog = getelementptr inbounds i8, ptr %.010381854, i64 %i.bkf
  br label %.thread

.loopexit2402.loopexit:                           ; preds = %.preheader1555.jt48
  %i.boh = getelementptr inbounds i8, ptr %i.ar, i64 -1
  br label %.loopexit2402

.loopexit2402:                                    ; preds = %.preheader1555.jt32, %.loopexit2402.loopexit, %.preheader1555.jt0, %.preheader1555
  %i.boi = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.loopexit2402.loopexit ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 3 uses
  %.110442326 = phi ptr [ %.010431853, %.preheader1555.jt0 ], [ %i.boh, %.loopexit2402.loopexit ], [ %.11044.be, %.preheader1555 ], [ %i.bpc, %.preheader1555.jt32 ]
  %.010802318 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.loopexit2402.loopexit ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ]
  %.010832276 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.loopexit2402.loopexit ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ]
  %.010892235 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.loopexit2402.loopexit ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ]
  %.011342194 = phi i64 [ 0, %.preheader1555.jt0 ], [ %.011342200.ph, %.loopexit2402.loopexit ], [ %.01134.be, %.preheader1555 ], [ %.011342196.ph, %.preheader1555.jt32 ]
  %i.boj = getelementptr inbounds nuw i8, ptr %.110442326, i64 2
  %i.bok = load i8, ptr %i.boj, align 1, !tbaa !51 ; 2 uses
  %.not1247 = icmp eq i8 %i.bok, 0
  br i1 %.not1247, label %.loopexit1864, label %bb.fg

bb.fg:                                            ; preds = %.loopexit2402
  %i.bol = sext i8 %i.bok to i32
  %i.bom = or i32 %.010832276, 32
  %memchr1248 = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.20, i32 %i.bol, i64 7)
  %.not1249 = icmp eq ptr %memchr1248, null
  br i1 %.not1249, label %.loopexit1864, label %.preheader1555

.loopexit2403.loopexit:                           ; preds = %.preheader1555.jt48
  %i.bon = getelementptr inbounds i8, ptr %i.ar, i64 -1
  br label %.loopexit2403

.loopexit2403:                                    ; preds = %.preheader1555.jt32, %.loopexit2403.loopexit, %.preheader1555.jt0, %.preheader1555
  %i.boo = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.loopexit2403.loopexit ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 3 uses
  %.110442327 = phi ptr [ %.010431853, %.preheader1555.jt0 ], [ %i.bon, %.loopexit2403.loopexit ], [ %.11044.be, %.preheader1555 ], [ %i.bpc, %.preheader1555.jt32 ]
  %.010802319 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.loopexit2403.loopexit ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ]
  %.010832277 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.loopexit2403.loopexit ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ]
  %.010892236 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.loopexit2403.loopexit ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ]
  %.011342195 = phi i64 [ 0, %.preheader1555.jt0 ], [ %.011342200.ph, %.loopexit2403.loopexit ], [ %.01134.be, %.preheader1555 ], [ %.011342196.ph, %.preheader1555.jt32 ]
  %i.bop = getelementptr inbounds nuw i8, ptr %.110442327, i64 2
  %i.boq = load i8, ptr %i.bop, align 1, !tbaa !51 ; 2 uses
  %.not1245 = icmp eq i8 %i.boq, 0
  br i1 %.not1245, label %.loopexit1864, label %bb.fh

bb.fh:                                            ; preds = %.loopexit2403
  %i.bor = sext i8 %i.boq to i32
  %i.bos = or i32 %.010832277, 16
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.21, i32 %i.bor, i64 16)
  %.not1246 = icmp eq ptr %memchr, null
  br i1 %.not1246, label %.loopexit1864, label %.preheader1555

.loopexit2404:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.bot = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 3 uses
  %.010802320 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ]
  %.010832278 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ]
  %.010892237 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ]
  %i.bou = or i32 %.010832278, 64
  %i.bov = call i64 @strspn(ptr noundef nonnull %i.bot, ptr noundef nonnull @.str.22) #11 ; 2 uses
  %i.bow = getelementptr inbounds nuw i8, ptr %i.bot, i64 %i.bov ; 2 uses
  %i.box = load i8, ptr %i.bow, align 1, !tbaa !51
  %i.boy = icmp eq i8 %i.box, 122
  %i.boz = getelementptr inbounds i8, ptr %i.bow, i64 -1
  br i1 %i.boy, label %.preheader1555, label %.loopexit1864

.preheader2411:                                   ; preds = %.preheader1555.jt48, %.preheader1555, %.preheader1555.jt0
  %.ph2412 = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.aj, %.preheader1555 ], [ %i.ar, %.preheader1555.jt48 ]
  %.010832279.ph = phi i32 [ 0, %.preheader1555.jt0 ], [ %.01083.be, %.preheader1555 ], [ %.010832283.ph, %.preheader1555.jt48 ] ; 57 uses
  %.010892238.ph = phi i32 [ -1, %.preheader1555.jt0 ], [ %.01089.be, %.preheader1555 ], [ %i.aq, %.preheader1555.jt48 ] ; 49 uses
  %.011342196.ph = phi i64 [ 0, %.preheader1555.jt0 ], [ %.01134.be, %.preheader1555 ], [ %.011342200.ph, %.preheader1555.jt48 ] ; 16 uses
  %i.bpa = icmp slt i32 %.010892238.ph, 1
  %i.bpb = and i32 %.010832279.ph, 112
  %.not1244 = icmp eq i32 %i.bpb, 0
  %or.cond1422 = select i1 %i.bpa, i1 %.not1244, i1 false
  br label %bb.fi

bb.fi:                                            ; preds = %.preheader2411, %.preheader1555.jt32
  %i.bpc = phi ptr [ %i.an, %.preheader1555.jt32 ], [ %.ph2412, %.preheader2411 ] ; 6 uses
  br i1 %or.cond1422, label %.preheader1555.jt32, label %.loopexit1864

.loopexit2406:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.bpd = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802321 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ]
  %.010832280 = phi i32 [ 0, %.preheader1555.jt0 ], [ %.010832283.ph, %.preheader1555.jt48 ], [ %.01083.be, %.preheader1555 ], [ %.010832279.ph, %.preheader1555.jt32 ] ; 2 uses
  %.010892239 = phi i32 [ -1, %.preheader1555.jt0 ], [ %i.aq, %.preheader1555.jt48 ], [ %.01089.be, %.preheader1555 ], [ %.010892238.ph, %.preheader1555.jt32 ] ; 2 uses
  %.011342197 = phi i64 [ 0, %.preheader1555.jt0 ], [ %.011342200.ph, %.preheader1555.jt48 ], [ %.01134.be, %.preheader1555 ], [ %.011342196.ph, %.preheader1555.jt32 ]
  %i.bpe = icmp slt i32 %.010892239, 1
  %i.bpf = and i32 %.010832280, 112
  %.not1243 = icmp eq i32 %i.bpf, 0
  %or.cond1423 = select i1 %i.bpe, i1 %.not1243, i1 false
  br i1 %or.cond1423, label %bb.fj, label %.loopexit1864

bb.fj:                                            ; preds = %.loopexit2406
  %i.bpg = or i32 %.010832280, 1
  br label %.preheader1555

.loopexit2407:                                    ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555.jt0, %.preheader1555
  %i.bph = phi ptr [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %.010802322 = phi i8 [ 0, %.preheader1555.jt0 ], [ 48, %.preheader1555.jt48 ], [ %.01080.be, %.preheader1555 ], [ 32, %.preheader1555.jt32 ]
end_hunk_2
begin_hunk_3_@date_strftime_with_tmx:bb.a
  %or.cond1427 = icmp ugt i64 %i.bps, %invariant.umin
  br i1 %or.cond1427, label %.thread1508, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  %i.bpt = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.bpp, ptr noundef nonnull %i.k, i32 noundef 10) #12 ; 3 uses
  %or.cond1427.jt48 = icmp ugt i64 %i.bpt, %invariant.umin
  br i1 %or.cond1427.jt48, label %.thread1508, label %.preheader1555.jt48

.thread1508:                                      ; preds = %.loopexit2409, %bb.fn
  %i.bpu = call ptr @rb_errno_ptr() #12
  store i32 34, ptr %i.bpu, align 4, !tbaa !9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  br label %.loopexit1556

bb.fo:                                            ; preds = %.loopexit2409
  %i.bpv = trunc nuw nsw i64 %i.bps to i32
  %i.bpw = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.bpx = getelementptr inbounds i8, ptr %i.bpw, i64 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  br label %.preheader1555

.loopexit2410:                                    ; preds = %.preheader1555.jt48, %.preheader1555
  %i.bpy = phi ptr [ %i.aj, %.preheader1555 ], [ %i.ar, %.preheader1555.jt48 ] ; 2 uses
  %.010802324 = phi i8 [ %.01080.be, %.preheader1555 ], [ 48, %.preheader1555.jt48 ] ; 2 uses
  %.010832285 = phi i32 [ %.01083.be, %.preheader1555 ], [ %.010832283.ph, %.preheader1555.jt48 ]
  %.010892243 = phi i32 [ %.01089.be, %.preheader1555 ], [ %i.aq, %.preheader1555.jt48 ] ; 3 uses
  %i.bpz = and i32 %.010832285, 1
  %i.bqa = icmp eq i32 %i.bpz, 0
  %i.bqb = icmp sgt i32 %.010892243, 1
  %or.cond53 = select i1 %i.bqa, i1 %i.bqb, i1 false
  br i1 %or.cond53, label %bb.fp, label %.thread2362

bb.fp:                                            ; preds = %.loopexit2410
  %.not1237 = icmp ult ptr %.010381854, %i.l
  br i1 %.not1237, label %bb.fq, label %.thread1499

bb.fq:                                            ; preds = %bb.fp
  %i.bqc = zext nneg i32 %.010892243 to i64
  %i.bqd = ptrtoint ptr %.010381854 to i64
  %i.bqe = xor i64 %i.bqd, -1
  %i.bqf = add i64 %i.bqe, %i.aa
  %.not1238 = icmp sgt i64 %i.bqf, %i.bqc
  br i1 %.not1238, label %bb.fr, label %.thread1499

bb.fr:                                            ; preds = %bb.fq
  %.not1239 = icmp eq i8 %.010802324, 0
  %narrow = select i1 %.not1239, i8 32, i8 %.010802324
  %i.bqg = add nsw i32 %.010892243, -1
  %i.bqh = zext nneg i32 %i.bqg to i64            ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.010381854, i8 %narrow, i64 %i.bqh, i1 false)
  %i.bqi = getelementptr inbounds nuw i8, ptr %.010381854, i64 %i.bqh
  br label %bb.fs

.thread2362:                                      ; preds = %.preheader1555.jt32, %.preheader1555.jt0, %.loopexit2410
  %i.bqj = phi ptr [ %i.bpy, %.loopexit2410 ], [ %i.al, %.preheader1555.jt0 ], [ %i.an, %.preheader1555.jt32 ]
  %.not1236 = icmp uge ptr %.010381854, %i.l
  %i.bqk = ptrtoint ptr %.010381854 to i64
  %i.bql = sub i64 %i.bqk, %i.aa
  %i.bqm = icmp sgt i64 %i.bql, -3
  %or.cond1431 = select i1 %.not1236, i1 true, i1 %i.bqm
  br i1 %or.cond1431, label %.thread1499, label %bb.fs

bb.fs:                                            ; preds = %.thread2362, %bb.fr
  %i.bqn = phi ptr [ %i.bpy, %bb.fr ], [ %i.bqj, %.thread2362 ]
  %.40 = phi ptr [ %i.bqi, %bb.fr ], [ %.010381854, %.thread2362 ] ; 2 uses
  %i.bqo = getelementptr inbounds nuw i8, ptr %.40, i64 1
  store i8 37, ptr %.40, align 1, !tbaa !51
  br label %.thread

.loopexit1864.loopexit.split.loop.exit4955:       ; preds = %.preheader1555.jt48
  %i.bqp = getelementptr inbounds i8, ptr %i.ar, i64 -1
  br label %.loopexit1864

.loopexit1864:                                    ; preds = %.preheader1555.jt32, %bb.fi, %.loopexit1864.loopexit.split.loop.exit4955, %bb.fm, %.preheader1555.jt0, %.preheader1555, %bb.fg, %.loopexit2402, %bb.fh, %.loopexit2403, %.loopexit2406, %.loopexit2407, %.loopexit2408, %.loopexit2404
  %.51048.ph = phi ptr [ %i.bot, %.loopexit2404 ], [ %.010431853, %.preheader1555.jt0 ], [ %i.bpl, %.loopexit2408 ], [ %i.bph, %.loopexit2407 ], [ %i.bpd, %.loopexit2406 ], [ %i.bpp, %bb.fm ], [ %i.boo, %.loopexit2403 ], [ %i.boo, %bb.fh ], [ %i.boi, %.loopexit2402 ], [ %i.boi, %bb.fg ], [ %.11044.be, %.preheader1555 ], [ %i.bqp, %.loopexit1864.loopexit.split.loop.exit4955 ], [ %i.bpc, %bb.fi ], [ %i.bpc, %.preheader1555.jt32 ]
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader1555.jt32, %.preheader1555.jt48, %.preheader1555, %.preheader1555.jt0, %.loopexit1864, %.loopexit2400
  %.51048 = phi ptr [ %.110442325, %.loopexit2400 ], [ %.51048.ph, %.loopexit1864 ], [ %i.al, %.preheader1555.jt0 ], [ %i.ar, %.preheader1555.jt48 ], [ %i.aj, %.preheader1555 ], [ %i.an, %.preheader1555.jt32 ] ; 2 uses
  %i.bqq = ptrtoint ptr %.51048 to i64
  %i.bqr = ptrtoint ptr %.010431853 to i64
  %reass.sub = sub i64 %i.bqq, %i.bqr
  %i.bqs = add i64 %reass.sub, 1
  br label %bb.ft

bb.ft:                                            ; preds = %bb.j, %bb.h, %.loopexit, %.loopexit2399
  %.41145 = phi ptr [ %.010431853, %.loopexit ], [ %.31144, %.loopexit2399 ], [ %i.bv, %bb.j ], [ %i.bf, %bb.h ]
  %.21140 = phi i64 [ %i.bqs, %.loopexit ], [ %i.bgj, %.loopexit2399 ], [ %i.bw, %bb.j ], [ %i.bg, %bb.h ] ; 2 uses
  %.47 = phi i32 [ -1, %.loopexit ], [ %.010892232, %.loopexit2399 ], [ %.010892203, %bb.j ], [ %.010892202, %bb.h ]
  %.51088 = phi i32 [ 0, %.loopexit ], [ %.41087, %.loopexit2399 ], [ %.21085, %bb.j ], [ %.11084, %bb.h ]
  %.21082 = phi i8 [ 0, %.loopexit ], [ %.010802315, %.loopexit2399 ], [ %.010802287, %bb.j ], [ %.010802286, %bb.h ]
  %.61049 = phi ptr [ %.51048, %.loopexit ], [ %i.bfz, %.loopexit2399 ], [ %i.bh, %bb.j ], [ %i.at, %bb.h ] ; 2 uses
  %.not1381 = icmp eq i64 %.21140, 0
  br i1 %.not1381, label %.thread, label %.thread1513

.thread1513:                                      ; preds = %bb.i, %bb.g, %.loopexit2370, %bb.bs, %.loopexit2369, %bb.ft
  %.610491528 = phi ptr [ %.61049, %bb.ft ], [ %i.at, %.loopexit2369 ], [ %i.aan, %bb.bs ], [ %i.bh, %.loopexit2370 ], [ %i.at, %bb.g ], [ %i.bh, %bb.i ]
  %.210821527 = phi i8 [ %.21082, %bb.ft ], [ %.010802286, %.loopexit2369 ], [ %.0108023012352, %bb.bs ], [ %.010802287, %.loopexit2370 ], [ %.010802286, %bb.g ], [ %.010802287, %bb.i ] ; 2 uses
  %.510881526 = phi i32 [ %.51088, %bb.ft ], [ %.11084, %.loopexit2369 ], [ %.31086, %bb.bs ], [ %.21085, %.loopexit2370 ], [ %.11084, %bb.g ], [ %.21085, %bb.i ] ; 2 uses
  %.471525 = phi i32 [ %.47, %bb.ft ], [ %.010892202, %.loopexit2369 ], [ %.0108922182357, %bb.bs ], [ %.010892203, %.loopexit2370 ], [ %.010892202, %bb.g ], [ %.010892203, %bb.i ]
  %.211401523 = phi i64 [ %.21140, %bb.ft ], [ 1, %.loopexit2369 ], [ 2, %bb.bs ], [ 1, %.loopexit2370 ], [ 3, %bb.g ], [ 3, %bb.i ] ; 25 uses
  %.411451522 = phi ptr [ %.41145, %bb.ft ], [ @.str, %.loopexit2369 ], [ %date_strftime_with_tmx.ampm., %bb.bs ], [ @.str, %.loopexit2370 ], [ %i.bf, %bb.g ], [ %i.bv, %bb.i ]
  %i.bqt = and i32 %.510881526, 1
  %.not1382 = icmp eq i32 %i.bqt, 0
  br i1 %.not1382, label %bb.fu, label %bb.fy

bb.fu:                                            ; preds = %.thread1513
  %i.bqu = sext i32 %.471525 to i64               ; 3 uses
  %i.bqv = icmp slt i64 %.211401523, %i.bqu
  br i1 %i.bqv, label %bb.fv, label %bb.fy

bb.fv:                                            ; preds = %bb.fu
  %.not1383 = icmp ult ptr %.010381854, %i.l
  br i1 %.not1383, label %bb.fw, label %.thread1499

bb.fw:                                            ; preds = %bb.fv
  %i.bqw = ptrtoint ptr %.010381854 to i64
  %i.bqx = xor i64 %i.bqw, -1
  %i.bqy = add i64 %i.bqx, %i.aa
  %.not1384 = icmp sgt i64 %i.bqy, %i.bqu
  br i1 %.not1384, label %bb.fx, label %.thread1499

bb.fx:                                            ; preds = %bb.fw
  %.not1385 = icmp eq i8 %.210821527, 0
  %narrow1386 = select i1 %.not1385, i8 32, i8 %.210821527
  %i.bqz = sub nsw i64 %i.bqu, %.211401523        ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %.010381854, i8 %narrow1386, i64 %i.bqz, i1 false)
  %i.bra = getelementptr inbounds i8, ptr %.010381854, i64 %i.bqz
  br label %bb.ga

bb.fy:                                            ; preds = %.thread1513, %bb.fu
  %.not1387 = icmp ult ptr %.010381854, %i.l
  br i1 %.not1387, label %bb.fz, label %.thread1499

bb.fz:                                            ; preds = %bb.fy
  %i.brb = ptrtoint ptr %.010381854 to i64
  %i.brc = xor i64 %i.brb, -1
  %i.brd = add i64 %i.brc, %i.aa
  %.not1388 = icmp slt i64 %.211401523, %i.brd
  br i1 %.not1388, label %bb.ga, label %.thread1499

bb.ga:                                            ; preds = %bb.fz, %bb.fx
  %.43 = phi ptr [ %.010381854, %bb.fz ], [ %i.bra, %bb.fx ] ; 48 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.43, ptr noundef nonnull align 1 dereferenceable(1) %.411451522, i64 %.211401523, i1 false)
  %i.bre = and i32 %.510881526, 12
  switch i32 %i.bre, label %upcase.exit1484 [
    i32 8, label %iter.check
    i32 4, label %iter.check3304
  ]

iter.check3304:                                   ; preds = %bb.ga
  %min.iters.check3245 = icmp ult i64 %.211401523, 4
  br i1 %min.iters.check3245, label %.preheader1542.preheader, label %vector.main.loop.iter.check3246

vector.main.loop.iter.check3246:                  ; preds = %iter.check3304
  %min.iters.check3247 = icmp ult i64 %.211401523, 16
  br i1 %min.iters.check3247, label %vec.epilog.ph3308, label %vector.ph3248

vector.ph3248:                                    ; preds = %vector.main.loop.iter.check3246
  %i.brf = and i64 %.211401523, 12
  %n.vec3249 = and i64 %.211401523, -16           ; 4 uses
  %i.brg = getelementptr i8, ptr %.43, i64 %n.vec3249
  %i.brh = and i64 %.211401523, 15
  br label %vector.body3250

vector.body3250:                                  ; preds = %vector.ph3248, %pred.store.continue3300
  %index3251 = phi i64 [ 0, %vector.ph3248 ], [ %index.next3301, %pred.store.continue3300 ] ; 17 uses
  %next.gep3252 = getelementptr i8, ptr %.43, i64 %index3251 ; 2 uses
  %i.bri = getelementptr i8, ptr %.43, i64 %index3251
  %next.gep3253 = getelementptr i8, ptr %i.bri, i64 1
  %i.brj = getelementptr i8, ptr %.43, i64 %index3251
  %next.gep3254 = getelementptr i8, ptr %i.brj, i64 2
  %i.brk = getelementptr i8, ptr %.43, i64 %index3251
  %next.gep3255 = getelementptr i8, ptr %i.brk, i64 3
  %i.brl = getelementptr i8, ptr %.43, i64 %index3251
  %next.gep3256 = getelementptr i8, ptr %i.brl, i64 4
  %i.brm = getelementptr i8, ptr %.43, i64 %index3251
  %next.gep3257 = getelementptr i8, ptr %i.brm, i64 5
  %i.brn = getelementptr i8, ptr %.43, i64 %index3251
  %next.gep3258 = getelementptr i8, ptr %i.brn, i64 6
  %i.bro = getelementptr i8, ptr %.43, i64 %index3251
  %next.gep3259 = getelementptr i8, ptr %i.bro, i64 7
  %i.brp = getelementptr i8, ptr %.43, i64 %index3251
  %next.gep3260 = getelementptr i8, ptr %i.brp, i64 8
  %i.brq = getelementptr i8, ptr %.43, i64 %index3251
  %next.gep3261 = getelementptr i8, ptr %i.brq, i64 9
  %i.brr = getelementptr i8, ptr %.43, i64 %index3251
  %next.gep3262 = getelementptr i8, ptr %i.brr, i64 10
  %i.brs = getelementptr i8, ptr %.43, i64 %index3251
  %next.gep3263 = getelementptr i8, ptr %i.brs, i64 11
  %i.brt = getelementptr i8, ptr %.43, i64 %index3251
  %next.gep3264 = getelementptr i8, ptr %i.brt, i64 12
  %i.bru = getelementptr i8, ptr %.43, i64 %index3251
  %next.gep3265 = getelementptr i8, ptr %i.bru, i64 13
  %i.brv = getelementptr i8, ptr %.43, i64 %index3251
  %next.gep3266 = getelementptr i8, ptr %i.brv, i64 14
  %i.brw = getelementptr i8, ptr %.43, i64 %index3251
  %next.gep3267 = getelementptr i8, ptr %i.brw, i64 15
  %wide.load3268 = load <16 x i8>, ptr %next.gep3252, align 1, !tbaa !51 ; 17 uses
  %44 = sext <16 x i8> %wide.load3268 to <16 x i32>
  %45 = add nsw <16 x i32> %44, splat (i32 -65)
  %i.brx = icmp ult <16 x i32> %45, splat (i32 26) ; 16 uses
  %i.bry = extractelement <16 x i1> %i.brx, i64 0
  br i1 %i.bry, label %pred.store.if3269, label %pred.store.continue3270

pred.store.if3269:                                ; preds = %vector.body3250
  %i.brz = extractelement <16 x i8> %wide.load3268, i64 0
  %i.bsa = or i8 %i.brz, 32
  store i8 %i.bsa, ptr %next.gep3252, align 1, !tbaa !51
  br label %pred.store.continue3270

pred.store.continue3270:                          ; preds = %pred.store.if3269, %vector.body3250
  %i.bsb = extractelement <16 x i1> %i.brx, i64 1
  br i1 %i.bsb, label %pred.store.if3271, label %pred.store.continue3272

pred.store.if3271:                                ; preds = %pred.store.continue3270
  %i.bsc = extractelement <16 x i8> %wide.load3268, i64 1
  %i.bsd = or i8 %i.bsc, 32
  store i8 %i.bsd, ptr %next.gep3253, align 1, !tbaa !51
  br label %pred.store.continue3272

pred.store.continue3272:                          ; preds = %pred.store.if3271, %pred.store.continue3270
  %i.bse = extractelement <16 x i1> %i.brx, i64 2
  br i1 %i.bse, label %pred.store.if3273, label %pred.store.continue3274

pred.store.if3273:                                ; preds = %pred.store.continue3272
  %i.bsf = extractelement <16 x i8> %wide.load3268, i64 2
  %i.bsg = or i8 %i.bsf, 32
  store i8 %i.bsg, ptr %next.gep3254, align 1, !tbaa !51
  br label %pred.store.continue3274

pred.store.continue3274:                          ; preds = %pred.store.if3273, %pred.store.continue3272
  %i.bsh = extractelement <16 x i1> %i.brx, i64 3
  br i1 %i.bsh, label %pred.store.if3275, label %pred.store.continue3276

pred.store.if3275:                                ; preds = %pred.store.continue3274
  %i.bsi = extractelement <16 x i8> %wide.load3268, i64 3
  %i.bsj = or i8 %i.bsi, 32
  store i8 %i.bsj, ptr %next.gep3255, align 1, !tbaa !51
  br label %pred.store.continue3276

pred.store.continue3276:                          ; preds = %pred.store.if3275, %pred.store.continue3274
  %i.bsk = extractelement <16 x i1> %i.brx, i64 4
  br i1 %i.bsk, label %pred.store.if3277, label %pred.store.continue3278

pred.store.if3277:                                ; preds = %pred.store.continue3276
  %i.bsl = extractelement <16 x i8> %wide.load3268, i64 4
  %i.bsm = or i8 %i.bsl, 32
  store i8 %i.bsm, ptr %next.gep3256, align 1, !tbaa !51
  br label %pred.store.continue3278

pred.store.continue3278:                          ; preds = %pred.store.if3277, %pred.store.continue3276
  %i.bsn = extractelement <16 x i1> %i.brx, i64 5
  br i1 %i.bsn, label %pred.store.if3279, label %pred.store.continue3280

pred.store.if3279:                                ; preds = %pred.store.continue3278
  %i.bso = extractelement <16 x i8> %wide.load3268, i64 5
  %i.bsp = or i8 %i.bso, 32
  store i8 %i.bsp, ptr %next.gep3257, align 1, !tbaa !51
  br label %pred.store.continue3280

pred.store.continue3280:                          ; preds = %pred.store.if3279, %pred.store.continue3278
  %i.bsq = extractelement <16 x i1> %i.brx, i64 6
  br i1 %i.bsq, label %pred.store.if3281, label %pred.store.continue3282

pred.store.if3281:                                ; preds = %pred.store.continue3280
  %i.bsr = extractelement <16 x i8> %wide.load3268, i64 6
  %i.bss = or i8 %i.bsr, 32
  store i8 %i.bss, ptr %next.gep3258, align 1, !tbaa !51
  br label %pred.store.continue3282

pred.store.continue3282:                          ; preds = %pred.store.if3281, %pred.store.continue3280
  %i.bst = extractelement <16 x i1> %i.brx, i64 7
  br i1 %i.bst, label %pred.store.if3283, label %pred.store.continue3284

pred.store.if3283:                                ; preds = %pred.store.continue3282
  %i.bsu = extractelement <16 x i8> %wide.load3268, i64 7
  %i.bsv = or i8 %i.bsu, 32
  store i8 %i.bsv, ptr %next.gep3259, align 1, !tbaa !51
  br label %pred.store.continue3284

pred.store.continue3284:                          ; preds = %pred.store.if3283, %pred.store.continue3282
  %i.bsw = extractelement <16 x i1> %i.brx, i64 8
  br i1 %i.bsw, label %pred.store.if3285, label %pred.store.continue3286

pred.store.if3285:                                ; preds = %pred.store.continue3284
  %i.bsx = extractelement <16 x i8> %wide.load3268, i64 8
  %i.bsy = or i8 %i.bsx, 32
  store i8 %i.bsy, ptr %next.gep3260, align 1, !tbaa !51
  br label %pred.store.continue3286

pred.store.continue3286:                          ; preds = %pred.store.if3285, %pred.store.continue3284
  %i.bsz = extractelement <16 x i1> %i.brx, i64 9
  br i1 %i.bsz, label %pred.store.if3287, label %pred.store.continue3288

pred.store.if3287:                                ; preds = %pred.store.continue3286
  %i.bta = extractelement <16 x i8> %wide.load3268, i64 9
  %i.btb = or i8 %i.bta, 32
  store i8 %i.btb, ptr %next.gep3261, align 1, !tbaa !51
  br label %pred.store.continue3288

pred.store.continue3288:                          ; preds = %pred.store.if3287, %pred.store.continue3286
  %i.btc = extractelement <16 x i1> %i.brx, i64 10
  br i1 %i.btc, label %pred.store.if3289, label %pred.store.continue3290

pred.store.if3289:                                ; preds = %pred.store.continue3288
  %i.btd = extractelement <16 x i8> %wide.load3268, i64 10
  %i.bte = or i8 %i.btd, 32
  store i8 %i.bte, ptr %next.gep3262, align 1, !tbaa !51
  br label %pred.store.continue3290

pred.store.continue3290:                          ; preds = %pred.store.if3289, %pred.store.continue3288
  %i.btf = extractelement <16 x i1> %i.brx, i64 11
  br i1 %i.btf, label %pred.store.if3291, label %pred.store.continue3292

pred.store.if3291:                                ; preds = %pred.store.continue3290
  %i.btg = extractelement <16 x i8> %wide.load3268, i64 11
  %i.bth = or i8 %i.btg, 32
  store i8 %i.bth, ptr %next.gep3263, align 1, !tbaa !51
  br label %pred.store.continue3292

pred.store.continue3292:                          ; preds = %pred.store.if3291, %pred.store.continue3290
  %i.bti = extractelement <16 x i1> %i.brx, i64 12
  br i1 %i.bti, label %pred.store.if3293, label %pred.store.continue3294

pred.store.if3293:                                ; preds = %pred.store.continue3292
  %i.btj = extractelement <16 x i8> %wide.load3268, i64 12
  %i.btk = or i8 %i.btj, 32
  store i8 %i.btk, ptr %next.gep3264, align 1, !tbaa !51
  br label %pred.store.continue3294

pred.store.continue3294:                          ; preds = %pred.store.if3293, %pred.store.continue3292
  %i.btl = extractelement <16 x i1> %i.brx, i64 13
  br i1 %i.btl, label %pred.store.if3295, label %pred.store.continue3296

pred.store.if3295:                                ; preds = %pred.store.continue3294
  %i.btm = extractelement <16 x i8> %wide.load3268, i64 13
  %i.btn = or i8 %i.btm, 32
  store i8 %i.btn, ptr %next.gep3265, align 1, !tbaa !51
  br label %pred.store.continue3296

pred.store.continue3296:                          ; preds = %pred.store.if3295, %pred.store.continue3294
  %i.bto = extractelement <16 x i1> %i.brx, i64 14
  br i1 %i.bto, label %pred.store.if3297, label %pred.store.continue3298

pred.store.if3297:                                ; preds = %pred.store.continue3296
  %i.btp = extractelement <16 x i8> %wide.load3268, i64 14
  %i.btq = or i8 %i.btp, 32
  store i8 %i.btq, ptr %next.gep3266, align 1, !tbaa !51
  br label %pred.store.continue3298

pred.store.continue3298:                          ; preds = %pred.store.if3297, %pred.store.continue3296
  %i.btr = extractelement <16 x i1> %i.brx, i64 15
  br i1 %i.btr, label %pred.store.if3299, label %pred.store.continue3300

pred.store.if3299:                                ; preds = %pred.store.continue3298
  %i.bts = extractelement <16 x i8> %wide.load3268, i64 15
  %i.btt = or i8 %i.bts, 32
  store i8 %i.btt, ptr %next.gep3267, align 1, !tbaa !51
  br label %pred.store.continue3300

pred.store.continue3300:                          ; preds = %pred.store.if3299, %pred.store.continue3298
  %index.next3301 = add nuw i64 %index3251, 16    ; 2 uses
  %i.btu = icmp eq i64 %index.next3301, %n.vec3249
  br i1 %i.btu, label %middle.block3302, label %vector.body3250, !llvm.loop !44

middle.block3302:                                 ; preds = %pred.store.continue3300
  %cmp.n3303 = icmp eq i64 %.211401523, %n.vec3249
  br i1 %cmp.n3303, label %upcase.exit1484, label %vec.epilog.iter.check3305

vec.epilog.iter.check3305:                        ; preds = %middle.block3302
  %min.epilog.iters.check3307 = icmp eq i64 %i.brf, 0
  br i1 %min.epilog.iters.check3307, label %.preheader1542.preheader, label %vec.epilog.ph3308, !prof !68

vec.epilog.ph3308:                                ; preds = %vector.main.loop.iter.check3246, %vec.epilog.iter.check3305
  %vec.epilog.resume.val3309 = phi i64 [ %n.vec3249, %vec.epilog.iter.check3305 ], [ 0, %vector.main.loop.iter.check3246 ]
  %n.vec3310 = and i64 %.211401523, -4            ; 3 uses
  %i.btv = getelementptr i8, ptr %.43, i64 %n.vec3310
  %i.btw = and i64 %.211401523, 3
  br label %vec.epilog.vector.body3311

vec.epilog.vector.body3311:                       ; preds = %pred.store.continue3325, %vec.epilog.ph3308
  %index3312 = phi i64 [ %vec.epilog.resume.val3309, %vec.epilog.ph3308 ], [ %index.next3326, %pred.store.continue3325 ] ; 5 uses
  %next.gep3313 = getelementptr i8, ptr %.43, i64 %index3312 ; 2 uses
  %i.btx = getelementptr i8, ptr %.43, i64 %index3312
  %next.gep3314 = getelementptr i8, ptr %i.btx, i64 1
  %i.bty = getelementptr i8, ptr %.43, i64 %index3312
  %next.gep3315 = getelementptr i8, ptr %i.bty, i64 2
  %i.btz = getelementptr i8, ptr %.43, i64 %index3312
  %next.gep3316 = getelementptr i8, ptr %i.btz, i64 3
  %wide.load3317 = load <4 x i8>, ptr %next.gep3313, align 1, !tbaa !51 ; 5 uses
  %46 = sext <4 x i8> %wide.load3317 to <4 x i32>
  %47 = add nsw <4 x i32> %46, splat (i32 -65)
  %i.bua = icmp ult <4 x i32> %47, splat (i32 26) ; 4 uses
  %i.bub = extractelement <4 x i1> %i.bua, i64 0
  br i1 %i.bub, label %pred.store.if3318, label %pred.store.continue3319

pred.store.if3318:                                ; preds = %vec.epilog.vector.body3311
  %i.buc = extractelement <4 x i8> %wide.load3317, i64 0
  %i.bud = or i8 %i.buc, 32
  store i8 %i.bud, ptr %next.gep3313, align 1, !tbaa !51
  br label %pred.store.continue3319

pred.store.continue3319:                          ; preds = %pred.store.if3318, %vec.epilog.vector.body3311
  %i.bue = extractelement <4 x i1> %i.bua, i64 1
  br i1 %i.bue, label %pred.store.if3320, label %pred.store.continue3321

pred.store.if3320:                                ; preds = %pred.store.continue3319
  %i.buf = extractelement <4 x i8> %wide.load3317, i64 1
  %i.bug = or i8 %i.buf, 32
  store i8 %i.bug, ptr %next.gep3314, align 1, !tbaa !51
  br label %pred.store.continue3321

pred.store.continue3321:                          ; preds = %pred.store.if3320, %pred.store.continue3319
  %i.buh = extractelement <4 x i1> %i.bua, i64 2
  br i1 %i.buh, label %pred.store.if3322, label %pred.store.continue3323

pred.store.if3322:                                ; preds = %pred.store.continue3321
  %i.bui = extractelement <4 x i8> %wide.load3317, i64 2
  %i.buj = or i8 %i.bui, 32
  store i8 %i.buj, ptr %next.gep3315, align 1, !tbaa !51
  br label %pred.store.continue3323

pred.store.continue3323:                          ; preds = %pred.store.if3322, %pred.store.continue3321
  %i.buk = extractelement <4 x i1> %i.bua, i64 3
  br i1 %i.buk, label %pred.store.if3324, label %pred.store.continue3325

pred.store.if3324:                                ; preds = %pred.store.continue3323
  %i.bul = extractelement <4 x i8> %wide.load3317, i64 3
  %i.bum = or i8 %i.bul, 32
  store i8 %i.bum, ptr %next.gep3316, align 1, !tbaa !51
  br label %pred.store.continue3325

pred.store.continue3325:                          ; preds = %pred.store.if3324, %pred.store.continue3323
  %index.next3326 = add nuw i64 %index3312, 4     ; 2 uses
  %i.bun = icmp eq i64 %index.next3326, %n.vec3310
  br i1 %i.bun, label %vec.epilog.middle.block3327, label %vec.epilog.vector.body3311, !llvm.loop !45

vec.epilog.middle.block3327:                      ; preds = %pred.store.continue3325
  %cmp.n3328 = icmp eq i64 %.211401523, %n.vec3310
  br i1 %cmp.n3328, label %upcase.exit1484, label %.preheader1542.preheader

.preheader1542.preheader:                         ; preds = %iter.check3304, %vec.epilog.iter.check3305, %vec.epilog.middle.block3327
  %.04.i1485.ph = phi ptr [ %.43, %iter.check3304 ], [ %i.brg, %vec.epilog.iter.check3305 ], [ %i.btv, %vec.epilog.middle.block3327 ]
  %.0.i1486.ph = phi i64 [ %.211401523, %iter.check3304 ], [ %i.brh, %vec.epilog.iter.check3305 ], [ %i.btw, %vec.epilog.middle.block3327 ]
  br label %.preheader1542

iter.check:                                       ; preds = %bb.ga
  %min.iters.check = icmp ult i64 %.211401523, 4
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3181 = icmp ult i64 %.211401523, 16
  br i1 %min.iters.check3181, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.buo = and i64 %.211401523, 12
  %n.vec = and i64 %.211401523, -16               ; 4 uses
  %i.bup = getelementptr i8, ptr %.43, i64 %n.vec
  %i.buq = and i64 %.211401523, 15
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue3226
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue3226 ] ; 17 uses
  %next.gep = getelementptr i8, ptr %.43, i64 %index ; 2 uses
  %i.bur = getelementptr i8, ptr %.43, i64 %index
  %next.gep3182 = getelementptr i8, ptr %i.bur, i64 1
  %i.bus = getelementptr i8, ptr %.43, i64 %index
  %next.gep3183 = getelementptr i8, ptr %i.bus, i64 2
  %i.but = getelementptr i8, ptr %.43, i64 %index
  %next.gep3184 = getelementptr i8, ptr %i.but, i64 3
  %i.buu = getelementptr i8, ptr %.43, i64 %index
  %next.gep3185 = getelementptr i8, ptr %i.buu, i64 4
  %i.buv = getelementptr i8, ptr %.43, i64 %index
  %next.gep3186 = getelementptr i8, ptr %i.buv, i64 5
  %i.buw = getelementptr i8, ptr %.43, i64 %index
  %next.gep3187 = getelementptr i8, ptr %i.buw, i64 6
  %i.bux = getelementptr i8, ptr %.43, i64 %index
  %next.gep3188 = getelementptr i8, ptr %i.bux, i64 7
  %i.buy = getelementptr i8, ptr %.43, i64 %index
  %next.gep3189 = getelementptr i8, ptr %i.buy, i64 8
  %i.buz = getelementptr i8, ptr %.43, i64 %index
  %next.gep3190 = getelementptr i8, ptr %i.buz, i64 9
  %i.bva = getelementptr i8, ptr %.43, i64 %index
  %next.gep3191 = getelementptr i8, ptr %i.bva, i64 10
  %i.bvb = getelementptr i8, ptr %.43, i64 %index
  %next.gep3192 = getelementptr i8, ptr %i.bvb, i64 11
  %i.bvc = getelementptr i8, ptr %.43, i64 %index
  %next.gep3193 = getelementptr i8, ptr %i.bvc, i64 12
  %i.bvd = getelementptr i8, ptr %.43, i64 %index
  %next.gep3194 = getelementptr i8, ptr %i.bvd, i64 13
  %i.bve = getelementptr i8, ptr %.43, i64 %index
  %next.gep3195 = getelementptr i8, ptr %i.bve, i64 14
  %i.bvf = getelementptr i8, ptr %.43, i64 %index
  %next.gep3196 = getelementptr i8, ptr %i.bvf, i64 15
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !51 ; 17 uses
  %48 = sext <16 x i8> %wide.load to <16 x i32>
  %49 = add nsw <16 x i32> %48, splat (i32 -97)
  %i.bvg = icmp ult <16 x i32> %49, splat (i32 26) ; 16 uses
  %i.bvh = extractelement <16 x i1> %i.bvg, i64 0
  br i1 %i.bvh, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.bvi = extractelement <16 x i8> %wide.load, i64 0
  %i.bvj = and i8 %i.bvi, 95
  store i8 %i.bvj, ptr %next.gep, align 1, !tbaa !51
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.bvk = extractelement <16 x i1> %i.bvg, i64 1
  br i1 %i.bvk, label %pred.store.if3197, label %pred.store.continue3198

pred.store.if3197:                                ; preds = %pred.store.continue
  %i.bvl = extractelement <16 x i8> %wide.load, i64 1
  %i.bvm = and i8 %i.bvl, 95
  store i8 %i.bvm, ptr %next.gep3182, align 1, !tbaa !51
  br label %pred.store.continue3198

pred.store.continue3198:                          ; preds = %pred.store.if3197, %pred.store.continue
  %i.bvn = extractelement <16 x i1> %i.bvg, i64 2
  br i1 %i.bvn, label %pred.store.if3199, label %pred.store.continue3200

pred.store.if3199:                                ; preds = %pred.store.continue3198
  %i.bvo = extractelement <16 x i8> %wide.load, i64 2
  %i.bvp = and i8 %i.bvo, 95
  store i8 %i.bvp, ptr %next.gep3183, align 1, !tbaa !51
  br label %pred.store.continue3200

pred.store.continue3200:                          ; preds = %pred.store.if3199, %pred.store.continue3198
  %i.bvq = extractelement <16 x i1> %i.bvg, i64 3
  br i1 %i.bvq, label %pred.store.if3201, label %pred.store.continue3202

pred.store.if3201:                                ; preds = %pred.store.continue3200
  %i.bvr = extractelement <16 x i8> %wide.load, i64 3
  %i.bvs = and i8 %i.bvr, 95
  store i8 %i.bvs, ptr %next.gep3184, align 1, !tbaa !51
  br label %pred.store.continue3202

pred.store.continue3202:                          ; preds = %pred.store.if3201, %pred.store.continue3200
  %i.bvt = extractelement <16 x i1> %i.bvg, i64 4
  br i1 %i.bvt, label %pred.store.if3203, label %pred.store.continue3204

pred.store.if3203:                                ; preds = %pred.store.continue3202
  %i.bvu = extractelement <16 x i8> %wide.load, i64 4
  %i.bvv = and i8 %i.bvu, 95
  store i8 %i.bvv, ptr %next.gep3185, align 1, !tbaa !51
  br label %pred.store.continue3204

pred.store.continue3204:                          ; preds = %pred.store.if3203, %pred.store.continue3202
  %i.bvw = extractelement <16 x i1> %i.bvg, i64 5
  br i1 %i.bvw, label %pred.store.if3205, label %pred.store.continue3206

pred.store.if3205:                                ; preds = %pred.store.continue3204
  %i.bvx = extractelement <16 x i8> %wide.load, i64 5
  %i.bvy = and i8 %i.bvx, 95
  store i8 %i.bvy, ptr %next.gep3186, align 1, !tbaa !51
  br label %pred.store.continue3206

pred.store.continue3206:                          ; preds = %pred.store.if3205, %pred.store.continue3204
  %i.bvz = extractelement <16 x i1> %i.bvg, i64 6
  br i1 %i.bvz, label %pred.store.if3207, label %pred.store.continue3208

pred.store.if3207:                                ; preds = %pred.store.continue3206
  %i.bwa = extractelement <16 x i8> %wide.load, i64 6
  %i.bwb = and i8 %i.bwa, 95
  store i8 %i.bwb, ptr %next.gep3187, align 1, !tbaa !51
  br label %pred.store.continue3208

pred.store.continue3208:                          ; preds = %pred.store.if3207, %pred.store.continue3206
  %i.bwc = extractelement <16 x i1> %i.bvg, i64 7
  br i1 %i.bwc, label %pred.store.if3209, label %pred.store.continue3210

pred.store.if3209:                                ; preds = %pred.store.continue3208
  %i.bwd = extractelement <16 x i8> %wide.load, i64 7
  %i.bwe = and i8 %i.bwd, 95
  store i8 %i.bwe, ptr %next.gep3188, align 1, !tbaa !51
  br label %pred.store.continue3210

pred.store.continue3210:                          ; preds = %pred.store.if3209, %pred.store.continue3208
  %i.bwf = extractelement <16 x i1> %i.bvg, i64 8
  br i1 %i.bwf, label %pred.store.if3211, label %pred.store.continue3212

pred.store.if3211:                                ; preds = %pred.store.continue3210
  %i.bwg = extractelement <16 x i8> %wide.load, i64 8
  %i.bwh = and i8 %i.bwg, 95
  store i8 %i.bwh, ptr %next.gep3189, align 1, !tbaa !51
  br label %pred.store.continue3212

pred.store.continue3212:                          ; preds = %pred.store.if3211, %pred.store.continue3210
  %i.bwi = extractelement <16 x i1> %i.bvg, i64 9
  br i1 %i.bwi, label %pred.store.if3213, label %pred.store.continue3214

pred.store.if3213:                                ; preds = %pred.store.continue3212
  %i.bwj = extractelement <16 x i8> %wide.load, i64 9
  %i.bwk = and i8 %i.bwj, 95
  store i8 %i.bwk, ptr %next.gep3190, align 1, !tbaa !51
  br label %pred.store.continue3214

pred.store.continue3214:                          ; preds = %pred.store.if3213, %pred.store.continue3212
  %i.bwl = extractelement <16 x i1> %i.bvg, i64 10
  br i1 %i.bwl, label %pred.store.if3215, label %pred.store.continue3216

pred.store.if3215:                                ; preds = %pred.store.continue3214
  %i.bwm = extractelement <16 x i8> %wide.load, i64 10
  %i.bwn = and i8 %i.bwm, 95
  store i8 %i.bwn, ptr %next.gep3191, align 1, !tbaa !51
  br label %pred.store.continue3216

pred.store.continue3216:                          ; preds = %pred.store.if3215, %pred.store.continue3214
  %i.bwo = extractelement <16 x i1> %i.bvg, i64 11
  br i1 %i.bwo, label %pred.store.if3217, label %pred.store.continue3218

pred.store.if3217:                                ; preds = %pred.store.continue3216
  %i.bwp = extractelement <16 x i8> %wide.load, i64 11
  %i.bwq = and i8 %i.bwp, 95
  store i8 %i.bwq, ptr %next.gep3192, align 1, !tbaa !51
  br label %pred.store.continue3218

pred.store.continue3218:                          ; preds = %pred.store.if3217, %pred.store.continue3216
  %i.bwr = extractelement <16 x i1> %i.bvg, i64 12
  br i1 %i.bwr, label %pred.store.if3219, label %pred.store.continue3220

pred.store.if3219:                                ; preds = %pred.store.continue3218
  %i.bws = extractelement <16 x i8> %wide.load, i64 12
  %i.bwt = and i8 %i.bws, 95
  store i8 %i.bwt, ptr %next.gep3193, align 1, !tbaa !51
  br label %pred.store.continue3220

pred.store.continue3220:                          ; preds = %pred.store.if3219, %pred.store.continue3218
  %i.bwu = extractelement <16 x i1> %i.bvg, i64 13
  br i1 %i.bwu, label %pred.store.if3221, label %pred.store.continue3222

pred.store.if3221:                                ; preds = %pred.store.continue3220
  %i.bwv = extractelement <16 x i8> %wide.load, i64 13
  %i.bww = and i8 %i.bwv, 95
  store i8 %i.bww, ptr %next.gep3194, align 1, !tbaa !51
  br label %pred.store.continue3222

pred.store.continue3222:                          ; preds = %pred.store.if3221, %pred.store.continue3220
  %i.bwx = extractelement <16 x i1> %i.bvg, i64 14
  br i1 %i.bwx, label %pred.store.if3223, label %pred.store.continue3224

pred.store.if3223:                                ; preds = %pred.store.continue3222
  %i.bwy = extractelement <16 x i8> %wide.load, i64 14
  %i.bwz = and i8 %i.bwy, 95
  store i8 %i.bwz, ptr %next.gep3195, align 1, !tbaa !51
  br label %pred.store.continue3224

pred.store.continue3224:                          ; preds = %pred.store.if3223, %pred.store.continue3222
  %i.bxa = extractelement <16 x i1> %i.bvg, i64 15
  br i1 %i.bxa, label %pred.store.if3225, label %pred.store.continue3226

pred.store.if3225:                                ; preds = %pred.store.continue3224
  %i.bxb = extractelement <16 x i8> %wide.load, i64 15
  %i.bxc = and i8 %i.bxb, 95
  store i8 %i.bxc, ptr %next.gep3196, align 1, !tbaa !51
  br label %pred.store.continue3226

pred.store.continue3226:                          ; preds = %pred.store.if3225, %pred.store.continue3224
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bxd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bxd, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %pred.store.continue3226
  %cmp.n = icmp eq i64 %.211401523, %n.vec
  br i1 %cmp.n, label %upcase.exit1484, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.buo, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec3227 = and i64 %.211401523, -4            ; 3 uses
  %i.bxe = getelementptr i8, ptr %.43, i64 %n.vec3227
  %i.bxf = and i64 %.211401523, 3
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue3241, %vec.epilog.ph
  %index3228 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next3242, %pred.store.continue3241 ] ; 5 uses
  %next.gep3229 = getelementptr i8, ptr %.43, i64 %index3228 ; 2 uses
  %i.bxg = getelementptr i8, ptr %.43, i64 %index3228
  %next.gep3230 = getelementptr i8, ptr %i.bxg, i64 1
  %i.bxh = getelementptr i8, ptr %.43, i64 %index3228
  %next.gep3231 = getelementptr i8, ptr %i.bxh, i64 2
  %i.bxi = getelementptr i8, ptr %.43, i64 %index3228
  %next.gep3232 = getelementptr i8, ptr %i.bxi, i64 3
  %wide.load3233 = load <4 x i8>, ptr %next.gep3229, align 1, !tbaa !51 ; 5 uses
  %50 = sext <4 x i8> %wide.load3233 to <4 x i32>
  %51 = add nsw <4 x i32> %50, splat (i32 -97)
  %i.bxj = icmp ult <4 x i32> %51, splat (i32 26) ; 4 uses
  %i.bxk = extractelement <4 x i1> %i.bxj, i64 0
  br i1 %i.bxk, label %pred.store.if3234, label %pred.store.continue3235

pred.store.if3234:                                ; preds = %vec.epilog.vector.body
  %i.bxl = extractelement <4 x i8> %wide.load3233, i64 0
  %i.bxm = and i8 %i.bxl, 95
  store i8 %i.bxm, ptr %next.gep3229, align 1, !tbaa !51
  br label %pred.store.continue3235

pred.store.continue3235:                          ; preds = %pred.store.if3234, %vec.epilog.vector.body
  %i.bxn = extractelement <4 x i1> %i.bxj, i64 1
  br i1 %i.bxn, label %pred.store.if3236, label %pred.store.continue3237

pred.store.if3236:                                ; preds = %pred.store.continue3235
  %i.bxo = extractelement <4 x i8> %wide.load3233, i64 1
  %i.bxp = and i8 %i.bxo, 95
  store i8 %i.bxp, ptr %next.gep3230, align 1, !tbaa !51
  br label %pred.store.continue3237

pred.store.continue3237:                          ; preds = %pred.store.if3236, %pred.store.continue3235
  %i.bxq = extractelement <4 x i1> %i.bxj, i64 2
  br i1 %i.bxq, label %pred.store.if3238, label %pred.store.continue3239

pred.store.if3238:                                ; preds = %pred.store.continue3237
  %i.bxr = extractelement <4 x i8> %wide.load3233, i64 2
  %i.bxs = and i8 %i.bxr, 95
  store i8 %i.bxs, ptr %next.gep3231, align 1, !tbaa !51
  br label %pred.store.continue3239

pred.store.continue3239:                          ; preds = %pred.store.if3238, %pred.store.continue3237
  %i.bxt = extractelement <4 x i1> %i.bxj, i64 3
  br i1 %i.bxt, label %pred.store.if3240, label %pred.store.continue3241

pred.store.if3240:                                ; preds = %pred.store.continue3239
  %i.bxu = extractelement <4 x i8> %wide.load3233, i64 3
  %i.bxv = and i8 %i.bxu, 95
  store i8 %i.bxv, ptr %next.gep3232, align 1, !tbaa !51
  br label %pred.store.continue3241

pred.store.continue3241:                          ; preds = %pred.store.if3240, %pred.store.continue3239
  %index.next3242 = add nuw i64 %index3228, 4     ; 2 uses
  %i.bxw = icmp eq i64 %index.next3242, %n.vec3227
  br i1 %i.bxw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !47

vec.epilog.middle.block:                          ; preds = %pred.store.continue3241
  %cmp.n3243 = icmp eq i64 %.211401523, %n.vec3227
  br i1 %cmp.n3243, label %upcase.exit1484, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04.i1481.ph = phi ptr [ %.43, %iter.check ], [ %i.bup, %vec.epilog.iter.check ], [ %i.bxe, %vec.epilog.middle.block ]
  %.0.i1482.ph = phi i64 [ %.211401523, %iter.check ], [ %i.buq, %vec.epilog.iter.check ], [ %i.bxf, %vec.epilog.middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.gc
  %.04.i1481 = phi ptr [ %i.byc, %bb.gc ], [ %.04.i1481.ph, %.preheader.preheader ] ; 3 uses
  %.0.i1482 = phi i64 [ %i.byd, %bb.gc ], [ %.0.i1482.ph, %.preheader.preheader ]
  %i.bxx = load i8, ptr %.04.i1481, align 1, !tbaa !51 ; 2 uses
  %i.bxy = sext i8 %i.bxx to i32
  %i.bxz = add nsw i32 %i.bxy, -123
  %i.bya = icmp ult i32 %i.bxz, -26
  br i1 %i.bya, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %.preheader
  %i.byb = and i8 %i.bxx, 95
  store i8 %i.byb, ptr %.04.i1481, align 1, !tbaa !51
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %.preheader
  %i.byc = getelementptr inbounds nuw i8, ptr %.04.i1481, i64 1
  %i.byd = add i64 %.0.i1482, -1                  ; 2 uses
  %.not6.i1483 = icmp eq i64 %i.byd, 0
  br i1 %.not6.i1483, label %upcase.exit1484, label %.preheader, !llvm.loop !48

.preheader1542:                                   ; preds = %.preheader1542.preheader, %bb.ge
  %.04.i1485 = phi ptr [ %i.byj, %bb.ge ], [ %.04.i1485.ph, %.preheader1542.preheader ] ; 3 uses
  %.0.i1486 = phi i64 [ %i.byk, %bb.ge ], [ %.0.i1486.ph, %.preheader1542.preheader ]
  %i.bye = load i8, ptr %.04.i1485, align 1, !tbaa !51 ; 2 uses
  %i.byf = sext i8 %i.bye to i32
  %i.byg = add nsw i32 %i.byf, -91
  %i.byh = icmp ult i32 %i.byg, -26
  br i1 %i.byh, label %bb.ge, label %bb.gd

bb.gd:                                            ; preds = %.preheader1542
  %i.byi = or i8 %i.bye, 32
  store i8 %i.byi, ptr %.04.i1485, align 1, !tbaa !51
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %.preheader1542
  %i.byj = getelementptr inbounds nuw i8, ptr %.04.i1485, i64 1
  %i.byk = add i64 %.0.i1486, -1                  ; 2 uses
  %.not6.i1487 = icmp eq i64 %i.byk, 0
  br i1 %.not6.i1487, label %upcase.exit1484, label %.preheader1542, !llvm.loop !49

upcase.exit1484:                                  ; preds = %bb.ge, %bb.gc, %middle.block3302, %vec.epilog.middle.block3327, %middle.block, %vec.epilog.middle.block, %bb.ga
  %i.byl = getelementptr inbounds i8, ptr %.43, i64 %.211401523
  br label %.thread

.thread:                                          ; preds = %bb.ev, %bb.ex, %bb.er, %bb.cs, %bb.co, %bb.bx, %bb.bt, %bb.ax, %bb.at, %bb.o, %bb.k, %.loopexit2396, %.loopexit2394, %.loopexit2393, %.loopexit2392, %.loopexit2389, %.loopexit2382, %.loopexit2381, %.loopexit2379, %bb.bd, %bb.bb, %rb_num2int_inline.exit, %bb.ak, %bb.ft, %upcase.exit1484, %bb.fe, %bb.ff, %bb.dx, %bb.dy, %bb.dp, %bb.dq, %bb.dh, %bb.di, %bb.cz, %bb.da, %bb.cm, %bb.cn, %bb.ce, %bb.cf, %bb.ar, %bb.as, %bb.ad, %bb.ae, %bb.v, %bb.w, %bb.fs, %bb.bq, %bb.bm, %bb.bi, %bb.f
  %.71050 = phi ptr [ %.010431853, %bb.f ], [ %.610491528, %upcase.exit1484 ], [ %.61049, %bb.ft ], [ %i.bgl, %bb.ex ], [ %i.dk, %bb.w ], [ %i.dk, %bb.v ], [ %i.hp, %bb.ae ], [ %i.hp, %bb.ad ], [ %i.nj, %bb.ak ], [ %i.np, %bb.as ], [ %i.np, %bb.ar ], [ %i.alf, %bb.co ], [ %i.td, %rb_num2int_inline.exit ], [ %i.ty, %bb.bb ], [ %i.uq, %bb.bd ], [ %i.vl, %.loopexit2379 ], [ %i.wd, %bb.bi ], [ %i.xm, %.loopexit2381 ], [ %i.yd, %.loopexit2382 ], [ %i.zj, %bb.bm ], [ %i.aaa, %bb.bq ], [ %i.bgl, %bb.ev ], [ %i.ace, %bb.cf ], [ %i.ace, %bb.ce ], [ %i.agj, %bb.cn ], [ %i.agj, %bb.cm ], [ %i.ako, %.loopexit2389 ], [ %i.bgl, %bb.er ], [ %i.amp, %bb.da ], [ %i.amp, %bb.cz ], [ %i.aqv, %.loopexit2392 ], [ %i.arn, %.loopexit2393 ], [ %i.asd, %.loopexit2394 ], [ %i.asu, %bb.di ], [ %i.asu, %bb.dh ], [ %i.awz, %.loopexit2396 ], [ %i.axp, %bb.dq ], [ %i.axp, %bb.dp ], [ %i.bbu, %bb.dy ], [ %i.bbu, %bb.dx ], [ %i.alf, %bb.cs ], [ %i.aau, %bb.bx ], [ %i.bkc, %bb.ff ], [ %i.bkc, %bb.fe ], [ %i.bqn, %bb.fs ], [ %i.rv, %bb.ax ], [ %i.bx, %bb.o ], [ %i.bx, %bb.k ], [ %i.rv, %bb.at ], [ %i.aau, %bb.bt ]
  %.44 = phi ptr [ %i.ai, %bb.f ], [ %i.byl, %upcase.exit1484 ], [ %.010381854, %bb.ft ], [ %i.bkb, %bb.ex ], [ %i.ho, %bb.w ], [ %i.hi, %bb.v ], [ %i.lt, %bb.ae ], [ %i.ln, %bb.ad ], [ %i.no, %bb.ak ], [ %i.rt, %bb.as ], [ %i.rn, %bb.ar ], [ %i.alw, %bb.co ], [ %i.tx, %rb_num2int_inline.exit ], [ %i.up, %bb.bb ], [ %i.vk, %bb.bd ], [ %i.wb, %.loopexit2379 ], [ %.17, %bb.bi ], [ %i.yc, %.loopexit2381 ], [ %i.yt, %.loopexit2382 ], [ %i.zk, %bb.bm ], [ %i.aab, %bb.bq ], [ %i.bjr, %bb.ev ], [ %i.agi, %bb.cf ], [ %i.agc, %bb.ce ], [ %i.akn, %bb.cn ], [ %i.akh, %bb.cm ], [ %i.ale, %.loopexit2389 ], [ %i.bjf, %bb.er ], [ %i.aqt, %bb.da ], [ %i.aqn, %bb.cz ], [ %i.arm, %.loopexit2392 ], [ %i.asc, %.loopexit2393 ], [ %i.ast, %.loopexit2394 ], [ %i.awy, %bb.di ], [ %i.aws, %bb.dh ], [ %i.axo, %.loopexit2396 ], [ %i.bbt, %bb.dq ], [ %i.bbn, %bb.dp ], [ %i.bfy, %bb.dy ], [ %i.bfs, %bb.dx ], [ %i.amo, %bb.cs ], [ %i.acd, %bb.bx ], [ %i.bog, %bb.ff ], [ %i.boa, %bb.fe ], [ %i.bqo, %bb.fs ], [ %i.tb, %bb.ax ], [ %i.dj, %bb.o ], [ %i.cq, %bb.k ], [ %i.so, %bb.at ], [ %i.abl, %bb.bt ] ; 3 uses
  %i.bym = getelementptr inbounds nuw i8, ptr %.71050, i64 1 ; 2 uses
  %i.byn = load i8, ptr %i.bym, align 1, !tbaa !51 ; 3 uses
  %i.byo = icmp ne i8 %i.byn, 0
  %i.byp = icmp ult ptr %.44, %i.v
  %i.byq = select i1 %i.byo, i1 %i.byp, i1 false
  br i1 %i.byq, label %bb.e, label %._crit_edge1860, !llvm.loop !50

._crit_edge1860:                                  ; preds = %.thread, %bb.d
  %.01038.lcssa = phi ptr [ %0, %bb.d ], [ %.44, %.thread ] ; 3 uses
  %.lcssa1819 = phi i8 [ %i.w, %bb.d ], [ %i.byn, %.thread ]
  %.not1234 = icmp ult ptr %.01038.lcssa, %i.l
  br i1 %.not1234, label %bb.gf, label %.thread1499

bb.gf:                                            ; preds = %._crit_edge1860
  %i.byr = icmp eq i8 %.lcssa1819, 0
  br i1 %i.byr, label %bb.gg, label %.loopexit1556

bb.gg:                                            ; preds = %bb.gf
  store i8 0, ptr %.01038.lcssa, align 1, !tbaa !51
  %i.bys = ptrtoint ptr %.01038.lcssa to i64
  %i.byt = ptrtoint ptr %0 to i64
  %i.byu = sub i64 %i.bys, %i.byt
  br label %.loopexit1556

.loopexit1556:                                    ; preds = %.loopexit2401, %.loopexit2398, %.loopexit2397, %.loopexit2395, %.loopexit2391, %.loopexit2388, %.loopexit2387, %.loopexit2374, %.loopexit2373, %.loopexit2372, %.thread1508, %bb.gf, %bb.a, %bb.gg, %bb.fd, %bb.dw, %bb.do, %bb.dg, %bb.cy, %bb.cl, %bb.cd, %bb.aq, %bb.ac, %bb.u, %.thread1499
  %.4 = phi i64 [ 0, %bb.fd ], [ 0, %.thread1499 ], [ 0, %bb.u ], [ 0, %bb.a ], [ 0, %bb.ac ], [ 0, %bb.do ], [ 0, %bb.aq ], [ %i.byu, %bb.gg ], [ 0, %bb.cd ], [ 0, %bb.dw ], [ 0, %bb.cl ], [ 0, %.thread1508 ], [ 0, %bb.cy ], [ 0, %bb.gf ], [ 0, %bb.dg ], [ 0, %.loopexit2372 ], [ 0, %.loopexit2373 ], [ 0, %.loopexit2374 ], [ 0, %.loopexit2387 ], [ 0, %.loopexit2388 ], [ 0, %.loopexit2391 ], [ 0, %.loopexit2395 ], [ 0, %.loopexit2397 ], [ 0, %.loopexit2398 ], [ 0, %.loopexit2401 ]
  ret i64 %.4
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @rb_errno_ptr() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @rb_funcall(i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #3

declare i32 @ruby_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @rb_str_format(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @rb_string_value_cstr(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_str_new_static(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #3

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
end_hunk_3
