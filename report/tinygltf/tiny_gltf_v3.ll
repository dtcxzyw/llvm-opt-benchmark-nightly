Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tiny_gltf_v3?download=true
inline.NumInlined: 786
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@tg3__parse_from_json:bb.a
  store ptr null, ptr %i.oo, align 8, !tbaa !121
  %i.op = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  store i64 -1, ptr %i.op, align 8, !tbaa !122
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  store i32 1, ptr %i.oq, align 8, !tbaa !61
  br label %tg3__load_external_file.exit.thread.i

bb.cf:                                            ; preds = %tg3_is_data_uri.exit.thread.i
  %i.or = icmp eq ptr %i.je, null
  br i1 %i.or, label %.loopexit.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.os = zext i32 %i.fn to i64                   ; 4 uses
  %i.ot = call ptr @memchr(ptr noundef nonnull readonly dereferenceable(1) %i.je, i32 noundef 0, i64 noundef range(i64 1, 4294967296) %i.os) #31
  %.not.i65.i.i = icmp eq ptr %i.ot, null
  br i1 %.not.i65.i.i, label %bb.ch, label %.loopexit.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.ou = load i8, ptr %i.je, align 1, !tbaa !34  ; 3 uses
  switch i8 %i.ou, label %bb.ci [
    i8 47, label %.loopexit.i.i
    i8 92, label %.loopexit.i.i
  ]

bb.ci:                                            ; preds = %bb.ch
  %.not153.i = icmp eq i32 %i.fn, 1
  br i1 %.not153.i, label %tg3__uri_is_safe.exit.thread82.i.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ov = getelementptr inbounds nuw i8, ptr %i.je, i64 1
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !34  ; 2 uses
  %i.ox = icmp eq i8 %i.ow, 58
  br i1 %i.ox, label %bb.ck, label %.lr.ph.preheader.i.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.oy = and i8 %i.ou, -33
  %i.oz = add i8 %i.oy, -65
  %or.cond48.i.i.i = icmp ult i8 %i.oz, 26
  br i1 %or.cond48.i.i.i, label %.loopexit.i.i, label %.lr.ph.preheader.i.thread.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.cj
  %i.pa = add i32 %i.fn, -1                       ; 2 uses
  %wide.trip.count.i.i.i = zext i32 %i.pa to i64  ; 2 uses
  %i.pb = icmp eq i8 %i.ou, 46
  %i.pc = icmp eq i8 %i.ow, 46
  %or.cond.i116.i = and i1 %i.pb, %i.pc
  br i1 %or.cond.i116.i, label %bb.cl, label %.thread.i.i

.lr.ph.preheader.i.thread.i.i:                    ; preds = %bb.ck
  %i.pd = add i32 %i.fn, -1                       ; 2 uses
  %wide.trip.count.i75.i.i = zext i32 %i.pd to i64
  br label %.thread.i.i

bb.cl:                                            ; preds = %.lr.ph.preheader.i.i.i
  %i.pe = icmp eq i32 %i.fn, 2
  br i1 %i.pe, label %.loopexit.i.i, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.pf = getelementptr inbounds nuw i8, ptr %i.je, i64 2
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !34
  switch i8 %i.pg, label %.lr.ph.peel.next.i.i.i [
    i8 47, label %.loopexit.i.i
    i8 92, label %.loopexit.i.i
  ]

.thread.i.i:                                      ; preds = %.lr.ph.preheader.i.thread.i.i, %.lr.ph.preheader.i.i.i
  %wide.trip.count.i77.i.i = phi i64 [ %wide.trip.count.i75.i.i, %.lr.ph.preheader.i.thread.i.i ], [ %wide.trip.count.i.i.i, %.lr.ph.preheader.i.i.i ]
  %i.ph = phi i32 [ %i.pd, %.lr.ph.preheader.i.thread.i.i ], [ %i.pa, %.lr.ph.preheader.i.i.i ]
  %exitcond.peel.not.i.i.i = icmp eq i32 %i.ph, 1
  br i1 %exitcond.peel.not.i.i.i, label %tg3__uri_is_safe.exit.i.i, label %.lr.ph.peel.next.i.i.i

.lr.ph.peel.next.i.i.i:                           ; preds = %.thread.i.i, %bb.cm
  %wide.trip.count.i76.i.i = phi i64 [ %wide.trip.count.i77.i.i, %.thread.i.i ], [ %wide.trip.count.i.i.i, %bb.cm ]
  br label %.lr.ph.i.i117.i

.lr.ph.i.i117.i:                                  ; preds = %bb.cr, %.lr.ph.peel.next.i.i.i
  %indvars.iv53.i.i.i = phi i64 [ 1, %.lr.ph.peel.next.i.i.i ], [ %indvars.iv.next54.i.i.i, %bb.cr ] ; 3 uses
  %indvars.iv.i.i.i = phi i64 [ 2, %.lr.ph.peel.next.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.cr ] ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.je, i64 %indvars.iv53.i.i.i ; 2 uses
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !34
  %i.pk = icmp eq i8 %i.pj, 46
  br i1 %i.pk, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %.lr.ph.i.i117.i
  %i.pl = getelementptr inbounds nuw i8, ptr %i.je, i64 %indvars.iv.i.i.i
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !34
  %i.pn = icmp eq i8 %i.pm, 46
  br i1 %i.pn, label %bb.co, label %bb.cr

bb.co:                                            ; preds = %bb.cn
  %i.po = getelementptr i8, ptr %i.pi, i64 -1
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !34  ; 3 uses
  %i.pq = icmp eq i8 %i.pp, 47
  %i.pr = icmp eq i8 %i.pp, 92
  %spec.select.i66.i.i = or i1 %i.pq, %i.pr
  %i.ps = add nuw nsw i64 %indvars.iv53.i.i.i, 2  ; 2 uses
  %i.pt = icmp eq i64 %i.ps, %i.os
  br i1 %i.pt, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pu = getelementptr inbounds nuw i8, ptr %i.je, i64 %i.ps
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !34  ; 2 uses
  %i.pw = icmp eq i8 %i.pv, 47
  br i1 %i.pw, label %bb.cq, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.cp
  %i.px = icmp eq i8 %i.pv, 92
  %i.py = and i1 %spec.select.i66.i.i, %i.px
  br i1 %i.py, label %.loopexit.i.i, label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %bb.co
  switch i8 %i.pp, label %bb.cr [
    i8 92, label %.loopexit.i.i
    i8 47, label %.loopexit.i.i
  ]

bb.cr:                                            ; preds = %bb.cq, %.split.i.i.i, %bb.cn, %.lr.ph.i.i117.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1
  %indvars.iv.next54.i.i.i = add nuw nsw i64 %indvars.iv53.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i118.i = icmp eq i64 %indvars.iv.next54.i.i.i, %wide.trip.count.i76.i.i
  br i1 %exitcond.not.i.i118.i, label %tg3__uri_is_safe.exit.i.i, label %.lr.ph.i.i117.i, !llvm.loop !342

.loopexit.i.i:                                    ; preds = %bb.cq, %bb.cq, %.split.i.i.i, %bb.cm, %bb.cm, %bb.cl, %bb.ck, %bb.ch, %bb.ch, %bb.cg, %bb.cf
  %i.pz = load ptr, ptr %i.er, align 8, !tbaa !139 ; 6 uses
  %.not.i67.i.i = icmp eq ptr %i.pz, null
  br i1 %.not.i67.i.i, label %tg3__load_external_file.exit.thread.i, label %bb.cs

bb.cs:                                            ; preds = %.loopexit.i.i
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 8 ; 3 uses
  %i.qb = load i32, ptr %i.qa, align 8, !tbaa !62 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pz, i64 12 ; 2 uses
  %i.qd = load i32, ptr %i.qc, align 4, !tbaa !116 ; 3 uses
  %.not27.i68.i.i = icmp ult i32 %i.qb, %i.qd
  %.pre.i69.i.i = load ptr, ptr %i.pz, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27.i68.i.i, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.not28.i70.i.i = icmp eq i32 %i.qd, 0
  %i.qe = shl i32 %i.qd, 1
  %spec.select.i71.i.i = select i1 %.not28.i70.i.i, i32 16, i32 %i.qe ; 2 uses
  %i.qf = zext i32 %spec.select.i71.i.i to i64
  %i.qg = shl nuw nsw i64 %i.qf, 5
  %i.qh = call ptr @realloc(ptr noundef %.pre.i69.i.i, i64 noundef %i.qg) #29 ; 3 uses
  %.not29.i72.i.i = icmp eq ptr %i.qh, null
  br i1 %.not29.i72.i.i, label %tg3__load_external_file.exit.thread.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store ptr %i.qh, ptr %i.pz, align 8, !tbaa !63
  store i32 %spec.select.i71.i.i, ptr %i.qc, align 4, !tbaa !116
  %.pre30.i73.i.i = load i32, ptr %i.qa, align 8, !tbaa !62
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.cs
  %i.qi = phi i32 [ %.pre30.i73.i.i, %bb.cu ], [ %i.qb, %bb.cs ] ; 2 uses
  %i.qj = phi ptr [ %i.qh, %bb.cu ], [ %.pre.i69.i.i, %bb.cs ]
  %i.qk = add i32 %i.qi, 1
  store i32 %i.qk, ptr %i.qa, align 8, !tbaa !62
  %i.ql = zext i32 %i.qi to i64
  %i.qm = getelementptr inbounds nuw [32 x i8], ptr %i.qj, i64 %i.ql ; 5 uses
  store i32 2, ptr %i.qm, align 8, !tbaa !118
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 4
  store i32 33, ptr %i.qn, align 4, !tbaa !119
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  store ptr @.str.78, ptr %i.qo, align 8, !tbaa !120
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  store ptr null, ptr %i.qp, align 8, !tbaa !121
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qm, i64 24
  store i64 -1, ptr %i.qq, align 8, !tbaa !122
  %i.qr = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  store i32 1, ptr %i.qr, align 8, !tbaa !61
  br label %tg3__load_external_file.exit.thread.i

tg3__uri_is_safe.exit.i.i:                        ; preds = %bb.cr, %.thread.i.i
  %i.qs = icmp ugt i32 %i.fn, 4095
  br i1 %i.qs, label %tg3__load_external_file.exit.thread.i, label %tg3__uri_is_safe.exit.thread82.i.i

tg3__uri_is_safe.exit.thread82.i.i:               ; preds = %tg3__uri_is_safe.exit.i.i, %bb.ci
  %i.qt = load i32, ptr %i.en, align 8, !tbaa !143 ; 6 uses
  %.not57.i.i = icmp eq i32 %i.qt, 0
  br i1 %.not57.i.i, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %tg3__uri_is_safe.exit.thread82.i.i
  %i.qu = zext i32 %i.qt to i64                   ; 3 uses
  %i.qv = sub nuw nsw i64 4095, %i.os
  %.not58.i.i = icmp samesign ugt i64 %i.qv, %i.qu
  br i1 %.not58.i.i, label %bb.cx, label %tg3__load_external_file.exit.thread.i

bb.cx:                                            ; preds = %bb.cw
  %i.qw = load ptr, ptr %i.eo, align 8, !tbaa !142
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.g, ptr readonly align 1 %i.qw, i64 %i.qu, i1 false)
  %i.qx = add i32 %i.qt, -1
  %i.qy = zext i32 %i.qx to i64
  %i.qz = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.qy
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !34
  switch i8 %i.ra, label %bb.cy [
    i8 47, label %bb.cz
    i8 92, label %bb.cz
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.rb = add i32 %i.qt, 1
  %i.rc = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.qu
  store i8 47, ptr %i.rc, align 1, !tbaa !34
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cx, %tg3__uri_is_safe.exit.thread82.i.i
  %.0.i114.i = phi i32 [ %i.rb, %bb.cy ], [ %i.qt, %bb.cx ], [ %i.qt, %bb.cx ], [ 0, %tg3__uri_is_safe.exit.thread82.i.i ] ; 2 uses
  %i.rd = add i32 %.0.i114.i, %i.fn               ; 3 uses
  %i.re = icmp ugt i32 %i.rd, 4095
  br i1 %i.re, label %tg3__load_external_file.exit.thread.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.rf = zext nneg i32 %i.rd to i64
  %i.rg = zext i32 %.0.i114.i to i64
  %i.rh = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.rg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rh, ptr nonnull readonly align 1 %i.je, i64 %i.os, i1 false)
  %i.ri = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.rf
  store i8 0, ptr %i.ri, align 1, !tbaa !34
  %i.rj = load ptr, ptr %i.ep, align 8, !tbaa !423
  %i.rk = call i32 %i.nx(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.g, i32 noundef %i.rd, ptr noundef %i.rj) #28, !inline_history !343
  %.not62.i.i = icmp eq i32 %i.rk, 0
  br i1 %.not62.i.i, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.rl = load ptr, ptr %i.er, align 8, !tbaa !139
  %i.rm = load ptr, ptr %0, align 8, !tbaa !138
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.rl, ptr noundef %i.rm, i32 poison, i32 noundef 2, ptr noundef null, ptr noundef nonnull @.str.79, ptr noundef nonnull %i.g)
  br label %tg3__load_external_file.exit.thread.i

bb.dc:                                            ; preds = %bb.da
  %i.rn = load i64, ptr %i.eq, align 8, !tbaa !424 ; 3 uses
  %.not63.i.i = icmp ne i64 %i.rn, 0
  %.pre158.i = load i64, ptr %i.j, align 8, !tbaa !27 ; 8 uses
  %i.ro = icmp ugt i64 %.pre158.i, %i.rn
  %or.cond221.i = select i1 %.not63.i.i, i1 %i.ro, i1 false
  br i1 %or.cond221.i, label %bb.dd, label %bb.dg

bb.dd:                                            ; preds = %bb.dc
  %i.rp = load ptr, ptr %i.es, align 8, !tbaa !425 ; 2 uses
  %.not64.i.i = icmp eq ptr %i.rp, null
  br i1 %.not64.i.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.rq = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.rr = load ptr, ptr %i.ep, align 8, !tbaa !423
  call void %i.rp(ptr noundef %i.rq, i64 noundef %.pre158.i, ptr noundef %i.rr) #28, !inline_history !343
  %.pre.i115.i = load i64, ptr %i.j, align 8, !tbaa !27
  %.pre84.i.i = load i64, ptr %i.eq, align 8, !tbaa !424
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.rs = phi i64 [ %.pre84.i.i, %bb.de ], [ %i.rn, %bb.dd ]
  %i.rt = phi i64 [ %.pre.i115.i, %bb.de ], [ %.pre158.i, %bb.dd ]
  %i.ru = load ptr, ptr %i.er, align 8, !tbaa !139
  %i.rv = load ptr, ptr %0, align 8, !tbaa !138
  call void (ptr, ptr, i32, i32, ptr, ptr, ...) @tg3__error_pushf(ptr noundef %i.ru, ptr noundef %i.rv, i32 poison, i32 noundef 4, ptr noundef null, ptr noundef nonnull @.str.80, ptr noundef nonnull %i.g, i64 noundef %i.rt, i64 noundef %i.rs)
  store ptr null, ptr %i.i, align 8, !tbaa !20
  store i64 0, ptr %i.j, align 8, !tbaa !27
  br label %tg3__load_external_file.exit.thread.i

tg3__load_external_file.exit.thread.i:            ; preds = %bb.df, %bb.db, %bb.cz, %bb.cw, %tg3__uri_is_safe.exit.i.i, %bb.cv, %bb.ct, %.loopexit.i.i, %bb.ce, %bb.cc, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  br label %bb.dt

bb.dg:                                            ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #28
  %i.rw = load ptr, ptr %0, align 8, !tbaa !138   ; 9 uses
  %i.rx = icmp eq ptr %i.rw, null
  %i.ry = icmp eq i64 %.pre158.i, 0
  %or.cond.i121.i = or i1 %i.ry, %i.rx
  br i1 %or.cond.i121.i, label %tg3__arena_alloc.exit136.thread.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rw, i64 32
  %i.sa = load i64, ptr %i.rz, align 8, !tbaa !130 ; 3 uses
  %.not.i122.i = icmp ne i64 %i.sa, 0             ; 2 uses
  %i.sb = icmp ugt i64 %.pre158.i, %i.sa
  %or.cond28.i123.i = and i1 %.not.i122.i, %i.sb
  br i1 %or.cond28.i123.i, label %tg3__arena_alloc.exit136.thread.thread.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.sc = add i64 %.pre158.i, 7
  %i.sd = and i64 %i.sc, -8                       ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.rw, i64 8 ; 3 uses
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !148 ; 4 uses
  %.not26.i124.i = icmp eq ptr %i.sf, null
  br i1 %.not26.i124.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 16 ; 2 uses
  %i.sh = load i64, ptr %i.sg, align 8, !tbaa !150 ; 2 uses
  %i.si = add i64 %i.sh, %i.sd                    ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sf, i64 24
  %i.sk = load i64, ptr %i.sj, align 8, !tbaa !151
  %i.sl = icmp ugt i64 %i.si, %i.sk
  br i1 %i.sl, label %bb.dk, label %tg3__arena_alloc.exit136.i

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.sm = getelementptr inbounds nuw i8, ptr %i.rw, i64 40
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !128
  %spec.select.i.i130.i = call i64 @llvm.umax.i64(i64 %i.sn, i64 range(i64 0, -7) %i.sd) ; 3 uses
  %i.so = icmp ugt i64 %spec.select.i.i130.i, %i.sa
  %or.cond.i.i131.i = select i1 %.not.i122.i, i1 %i.so, i1 false
  br i1 %or.cond.i.i131.i, label %tg3__arena_alloc.exit136.thread.thread.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.sp = getelementptr inbounds nuw i8, ptr %i.rw, i64 16 ; 3 uses
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !152
  %i.sr = add i64 %spec.select.i.i130.i, 32       ; 3 uses
  %i.ss = add i64 %i.sq, %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %i.rw, i64 24
  %i.su = load i64, ptr %i.st, align 8, !tbaa !129
  %i.sv = icmp ugt i64 %i.ss, %i.su
  br i1 %i.sv, label %tg3__arena_alloc.exit136.thread.thread.i, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.sw = getelementptr inbounds nuw i8, ptr %i.rw, i64 48
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !153
  %i.sy = getelementptr inbounds nuw i8, ptr %i.rw, i64 72
  %i.sz = load ptr, ptr %i.sy, align 8, !tbaa !154
  %i.ta = call ptr %i.sx(i64 noundef %i.sr, ptr noundef %i.sz) #28, !inline_history !337 ; 8 uses
  %.not37.i.i132.i = icmp eq ptr %i.ta, null
  br i1 %.not37.i.i132.i, label %.tg3__arena_alloc.exit136.threadthread-pre-split_crit_edge.i, label %tg3__arena_alloc.exit136.thread213.i

.tg3__arena_alloc.exit136.threadthread-pre-split_crit_edge.i: ; preds = %bb.dm
  %.pr.pre.i = load i64, ptr %i.j, align 8, !tbaa !27
  br label %tg3__arena_alloc.exit136.thread.i

tg3__arena_alloc.exit136.thread213.i:             ; preds = %bb.dm
  store ptr null, ptr %i.ta, align 8, !tbaa !155
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 32 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  store ptr %i.tb, ptr %i.tc, align 8, !tbaa !156
  %i.td = getelementptr inbounds nuw i8, ptr %i.ta, i64 24
  store i64 %spec.select.i.i130.i, ptr %i.td, align 8, !tbaa !151
  %i.te = load i64, ptr %i.sp, align 8, !tbaa !152
  %i.tf = add i64 %i.te, %i.sr
  store i64 %i.tf, ptr %i.sp, align 8, !tbaa !152
  %i.tg = load ptr, ptr %i.se, align 8, !tbaa !148 ; 2 uses
  %.not38.i.i134.i = icmp eq ptr %i.tg, null
  %..i.i135.i = select i1 %.not38.i.i134.i, ptr %i.rw, ptr %i.tg
  store ptr %i.ta, ptr %..i.i135.i, align 8, !tbaa !157
  store ptr %i.ta, ptr %i.se, align 8, !tbaa !148
  %.pr.pre159.pre.i = load i64, ptr %i.j, align 8, !tbaa !27
  %i.th = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  store i64 %i.sd, ptr %i.th, align 8, !tbaa !150
  br label %bb.dn

tg3__arena_alloc.exit136.i:                       ; preds = %bb.dj
  %.phi.trans.insert.i126.i = getelementptr inbounds nuw i8, ptr %i.sf, i64 8
  %.pre.i127.i = load ptr, ptr %.phi.trans.insert.i126.i, align 8, !tbaa !156 ; 2 uses
  store i64 %i.si, ptr %i.sg, align 8, !tbaa !150
  %.not91.i = icmp eq ptr %.pre.i127.i, null
  br i1 %.not91.i, label %tg3__arena_alloc.exit136.thread.thread.i, label %bb.dn

bb.dn:                                            ; preds = %tg3__arena_alloc.exit136.i, %tg3__arena_alloc.exit136.thread213.i
  %i.ti = phi ptr [ %i.tb, %tg3__arena_alloc.exit136.thread213.i ], [ %.pre.i127.i, %tg3__arena_alloc.exit136.i ]
  %i.tj = phi i64 [ 0, %tg3__arena_alloc.exit136.thread213.i ], [ %i.sh, %tg3__arena_alloc.exit136.i ]
  %.pr.pre159217.i = phi i64 [ %.pr.pre159.pre.i, %tg3__arena_alloc.exit136.thread213.i ], [ %.pre158.i, %tg3__arena_alloc.exit136.i ]
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 %i.tj ; 2 uses
  %i.tl = load ptr, ptr %i.i, align 8, !tbaa !20
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.tk, ptr readonly align 1 %i.tl, i64 %.pr.pre159217.i, i1 false)
  %i.tm = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store ptr %i.tk, ptr %i.tm, align 8, !tbaa !165
  %i.tn = load i64, ptr %i.j, align 8, !tbaa !27
  %i.to = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  store i64 %i.tn, ptr %i.to, align 8, !tbaa !166
  br label %tg3__error_push.exit144.i

tg3__arena_alloc.exit136.thread.i:                ; preds = %.tg3__arena_alloc.exit136.threadthread-pre-split_crit_edge.i, %bb.dg
  %i.tp = phi i64 [ %.pre158.i, %bb.dg ], [ %.pr.pre.i, %.tg3__arena_alloc.exit136.threadthread-pre-split_crit_edge.i ]
  %.not92.i = icmp eq i64 %i.tp, 0
  br i1 %.not92.i, label %tg3__error_push.exit144.i, label %tg3__arena_alloc.exit136.thread.thread.i

tg3__arena_alloc.exit136.thread.thread.i:         ; preds = %tg3__arena_alloc.exit136.thread.i, %tg3__arena_alloc.exit136.i, %bb.dl, %bb.dk, %bb.dh
  %i.tq = load ptr, ptr %i.er, align 8, !tbaa !139 ; 6 uses
  %.not.i137.i = icmp eq ptr %i.tq, null
  br i1 %.not.i137.i, label %tg3__error_push.exit144.i, label %bb.do

bb.do:                                            ; preds = %tg3__arena_alloc.exit136.thread.thread.i
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tq, i64 8 ; 3 uses
  %i.ts = load i32, ptr %i.tr, align 8, !tbaa !62 ; 2 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tq, i64 12 ; 2 uses
  %i.tu = load i32, ptr %i.tt, align 4, !tbaa !116 ; 3 uses
  %.not27.i138.i = icmp ult i32 %i.ts, %i.tu
  %.pre.i139.i = load ptr, ptr %i.tq, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27.i138.i, label %bb.dr, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.not28.i140.i = icmp eq i32 %i.tu, 0
  %i.tv = shl i32 %i.tu, 1
  %spec.select.i141.i = select i1 %.not28.i140.i, i32 16, i32 %i.tv ; 2 uses
  %i.tw = zext i32 %spec.select.i141.i to i64
  %i.tx = shl nuw nsw i64 %i.tw, 5
  %i.ty = call ptr @realloc(ptr noundef %.pre.i139.i, i64 noundef %i.tx) #29 ; 3 uses
  %.not29.i142.i = icmp eq ptr %i.ty, null
  br i1 %.not29.i142.i, label %tg3__error_push.exit144.i, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  store ptr %i.ty, ptr %i.tq, align 8, !tbaa !63
  store i32 %spec.select.i141.i, ptr %i.tt, align 4, !tbaa !116
end_hunk_0
begin_hunk_1_@tg3json__indent:bb.a

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.07 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 0, %.lr.ph ], [ 1, %bb.b ]
  ret i32 %.07
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc nonnull ptr @tg3json__format_decimal_digits(ptr nofree noundef nonnull writeonly captures(ret: address, provenance) %0, ptr nofree noundef nonnull readonly captures(none) %1, i32 noundef %2, i32 noundef range(i32 -2147483647, -2147483648) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #19 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64                  ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 7 uses
  %i.c = alloca [16 x i8], align 16               ; 8 uses
  %i.d = add i32 %3, %2                           ; 11 uses
  %i.e = add nsw i32 %i.d, -1                     ; 2 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 45, ptr %0, align 1, !tbaa !34
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.064 = phi ptr [ %i.f, %bb.b ], [ %0, %bb.a ]  ; 19 uses
  %.064174 = ptrtoaddr ptr %.064 to i64           ; 3 uses
  %i.g = add i32 %i.d, -17
  %or.cond = icmp ult i32 %i.g, -20
  br i1 %or.cond, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %1, align 1, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %.064, i64 1 ; 2 uses
  store i8 %i.h, ptr %.064, align 1, !tbaa !34
  %i.j = icmp sgt i32 %2, 1
  br i1 %i.j, label %iter.check291, label %.loopexit

iter.check291:                                    ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.064, i64 2 ; 5 uses
  store i8 46, ptr %i.i, align 1, !tbaa !34
  %wide.trip.count142 = zext nneg i32 %2 to i64   ; 4 uses
  %i.l = add nsw i64 %wide.trip.count142, -1      ; 5 uses
  %min.iters.check276 = icmp ult i32 %2, 9
  %i.m = sub i64 %.064174, %i.a
  %diff.check275 = icmp ult i64 %i.m, 31
  %or.cond336.a = select i1 %min.iters.check276, i1 true, i1 %diff.check275
  br i1 %or.cond336.a, label %vec.epilog.scalar.ph292.preheader, label %vector.main.loop.iter.check277

vector.main.loop.iter.check277:                   ; preds = %iter.check291
  %min.iters.check278 = icmp ult i32 %2, 33
  br i1 %min.iters.check278, label %vec.epilog.ph295, label %vector.ph279

vector.ph279:                                     ; preds = %vector.main.loop.iter.check277
  %i.n = and i64 %i.l, 24
  %n.vec280 = and i64 %i.l, -32                   ; 5 uses
  %i.o = or disjoint i64 %n.vec280, 1
  %i.p = getelementptr i8, ptr %i.k, i64 %n.vec280 ; 2 uses
  br label %vector.body281

vector.body281:                                   ; preds = %vector.body281, %vector.ph279
  %index282 = phi i64 [ 0, %vector.ph279 ], [ %index.next286, %vector.body281 ] ; 3 uses
  %next.gep283 = getelementptr i8, ptr %i.k, i64 %index282 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %index282 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  %wide.load284.a = load <16 x i8>, ptr %i.r, align 1, !tbaa !34
  %wide.load285 = load <16 x i8>, ptr %i.s, align 1, !tbaa !34
  %i.t = getelementptr i8, ptr %next.gep283, i64 16
  store <16 x i8> %wide.load284.a, ptr %next.gep283, align 1, !tbaa !34
  store <16 x i8> %wide.load285, ptr %i.t, align 1, !tbaa !34
  %index.next286 = add nuw i64 %index282, 32      ; 2 uses
  %i.u = icmp eq i64 %index.next286, %n.vec280
  br i1 %i.u, label %middle.block287, label %vector.body281, !llvm.loop !552

middle.block287:                                  ; preds = %vector.body281
  %cmp.n288 = icmp eq i64 %i.l, %n.vec280
  br i1 %cmp.n288, label %.loopexit, label %vec.epilog.iter.check293

vec.epilog.iter.check293:                         ; preds = %middle.block287
  %min.epilog.iters.check294 = icmp eq i64 %i.n, 0
  br i1 %min.epilog.iters.check294, label %vec.epilog.scalar.ph292.preheader, label %vec.epilog.ph295, !prof !56

vec.epilog.ph295:                                 ; preds = %vector.main.loop.iter.check277, %vec.epilog.iter.check293
  %vec.epilog.resume.val289 = phi i64 [ %n.vec280, %vec.epilog.iter.check293 ], [ 0, %vector.main.loop.iter.check277 ]
  %n.vec296 = and i64 %i.l, -8                    ; 4 uses
  %i.v = or disjoint i64 %n.vec296, 1
  %i.w = getelementptr i8, ptr %i.k, i64 %n.vec296 ; 2 uses
  br label %vec.epilog.vector.body297

vec.epilog.vector.body297:                        ; preds = %vec.epilog.vector.body297, %vec.epilog.ph295
  %index298 = phi i64 [ %vec.epilog.resume.val289, %vec.epilog.ph295 ], [ %index.next301, %vec.epilog.vector.body297 ] ; 3 uses
  %next.gep299 = getelementptr i8, ptr %i.k, i64 %index298
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %index298
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %wide.load300 = load <8 x i8>, ptr %i.y, align 1, !tbaa !34
  store <8 x i8> %wide.load300, ptr %next.gep299, align 1, !tbaa !34
  %index.next301 = add nuw i64 %index298, 8       ; 2 uses
  %i.z = icmp eq i64 %index.next301, %n.vec296
  br i1 %i.z, label %vec.epilog.middle.block302, label %vec.epilog.vector.body297, !llvm.loop !553

vec.epilog.middle.block302:                       ; preds = %vec.epilog.vector.body297
  %cmp.n303 = icmp eq i64 %i.l, %n.vec296
  br i1 %cmp.n303, label %.loopexit, label %vec.epilog.scalar.ph292.preheader

vec.epilog.scalar.ph292.preheader:                ; preds = %iter.check291, %vec.epilog.iter.check293, %vec.epilog.middle.block302
  %indvars.iv139.ph = phi i64 [ 1, %iter.check291 ], [ %i.o, %vec.epilog.iter.check293 ], [ %i.v, %vec.epilog.middle.block302 ] ; 4 uses
  %.165104.ph = phi ptr [ %i.k, %iter.check291 ], [ %i.p, %vec.epilog.iter.check293 ], [ %i.w, %vec.epilog.middle.block302 ] ; 2 uses
  %i.aa = sub nsw i64 %wide.trip.count142, %indvars.iv139.ph
  %xtraiter354 = and i64 %i.aa, 7                 ; 2 uses
  %lcmp.mod355.not = icmp eq i64 %xtraiter354, 0
  br i1 %lcmp.mod355.not, label %vec.epilog.scalar.ph292.prol.loopexit, label %vec.epilog.scalar.ph292.prol

vec.epilog.scalar.ph292.prol:                     ; preds = %vec.epilog.scalar.ph292.preheader, %vec.epilog.scalar.ph292.prol
  %indvars.iv139.prol = phi i64 [ %indvars.iv.next140.prol, %vec.epilog.scalar.ph292.prol ], [ %indvars.iv139.ph, %vec.epilog.scalar.ph292.preheader ] ; 2 uses
  %.165104.prol = phi ptr [ %i.ad, %vec.epilog.scalar.ph292.prol ], [ %.165104.ph, %vec.epilog.scalar.ph292.preheader ] ; 2 uses
  %prol.iter356 = phi i64 [ %prol.iter356.next, %vec.epilog.scalar.ph292.prol ], [ 0, %vec.epilog.scalar.ph292.preheader ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139.prol
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %.165104.prol, i64 1 ; 3 uses
  store i8 %i.ac, ptr %.165104.prol, align 1, !tbaa !34
  %indvars.iv.next140.prol = add nuw nsw i64 %indvars.iv139.prol, 1 ; 2 uses
  %prol.iter356.next = add i64 %prol.iter356, 1   ; 2 uses
  %prol.iter356.cmp.not = icmp eq i64 %prol.iter356.next, %xtraiter354
  br i1 %prol.iter356.cmp.not, label %vec.epilog.scalar.ph292.prol.loopexit, label %vec.epilog.scalar.ph292.prol, !llvm.loop !554

vec.epilog.scalar.ph292.prol.loopexit:            ; preds = %vec.epilog.scalar.ph292.prol, %vec.epilog.scalar.ph292.preheader
  %.lcssa341.unr.a = phi ptr [ poison, %vec.epilog.scalar.ph292.preheader ], [ %i.ad, %vec.epilog.scalar.ph292.prol ]
  %indvars.iv139.unr = phi i64 [ %indvars.iv139.ph, %vec.epilog.scalar.ph292.preheader ], [ %indvars.iv.next140.prol, %vec.epilog.scalar.ph292.prol ]
  %.165104.unr = phi ptr [ %.165104.ph, %vec.epilog.scalar.ph292.preheader ], [ %i.ad, %vec.epilog.scalar.ph292.prol ]
  %i.ae = sub nsw i64 %indvars.iv139.ph, %wide.trip.count142
  %i.af = icmp ugt i64 %i.ae, -8
  br i1 %i.af, label %.loopexit, label %vec.epilog.scalar.ph292

vec.epilog.scalar.ph292:                          ; preds = %vec.epilog.scalar.ph292.prol.loopexit, %vec.epilog.scalar.ph292
  %indvars.iv139 = phi i64 [ %indvars.iv.next140.7, %vec.epilog.scalar.ph292 ], [ %indvars.iv139.unr, %vec.epilog.scalar.ph292.prol.loopexit ] ; 9 uses
  %.165104 = phi ptr [ %i.bk, %vec.epilog.scalar.ph292 ], [ %.165104.unr, %vec.epilog.scalar.ph292.prol.loopexit ] ; 9 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !34
  %i.ai = getelementptr inbounds nuw i8, ptr %.165104, i64 1
  store i8 %i.ah, ptr %.165104, align 1, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !34
  %i.am = getelementptr inbounds nuw i8, ptr %.165104, i64 2
  store i8 %i.al, ptr %i.ai, align 1, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %.165104, i64 3
  store i8 %i.ap, ptr %i.am, align 1, !tbaa !34
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !34
  %i.au = getelementptr inbounds nuw i8, ptr %.165104, i64 4
  store i8 %i.at, ptr %i.aq, align 1, !tbaa !34
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !34
  %i.ay = getelementptr inbounds nuw i8, ptr %.165104, i64 5
  store i8 %i.ax, ptr %i.au, align 1, !tbaa !34
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 5
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !34
  %i.bc = getelementptr inbounds nuw i8, ptr %.165104, i64 6
  store i8 %i.bb, ptr %i.ay, align 1, !tbaa !34
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 6
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !34
  %i.bg = getelementptr inbounds nuw i8, ptr %.165104, i64 7
  store i8 %i.bf, ptr %i.bc, align 1, !tbaa !34
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv139
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 7
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !34
  %i.bk = getelementptr inbounds nuw i8, ptr %.165104, i64 8 ; 2 uses
  store i8 %i.bj, ptr %i.bg, align 1, !tbaa !34
  %indvars.iv.next140.7 = add nuw nsw i64 %indvars.iv139, 8 ; 2 uses
  %exitcond143.not.7 = icmp eq i64 %indvars.iv.next140.7, %wide.trip.count142
  br i1 %exitcond143.not.7, label %.loopexit, label %vec.epilog.scalar.ph292, !llvm.loop !555

.loopexit:                                        ; preds = %vec.epilog.scalar.ph292.prol.loopexit, %vec.epilog.scalar.ph292, %middle.block287, %vec.epilog.middle.block302, %bb.d
  %.266 = phi ptr [ %i.i, %bb.d ], [ %i.w, %vec.epilog.middle.block302 ], [ %i.p, %middle.block287 ], [ %.lcssa341.unr.a, %vec.epilog.scalar.ph292.prol.loopexit ], [ %i.bk, %vec.epilog.scalar.ph292 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.bl = getelementptr inbounds nuw i8, ptr %.266, i64 1 ; 3 uses
  store i8 101, ptr %.266, align 1, !tbaa !34
  %i.bm = icmp slt i32 %i.d, 1
  br i1 %i.bm, label %.thread.i, label %bb.e

.thread.i:                                        ; preds = %.loopexit
  %i.bn = getelementptr inbounds nuw i8, ptr %.266, i64 2
  store i8 45, ptr %i.bl, align 1, !tbaa !34
  %i.bo = sub nsw i32 1, %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  br label %.preheader19.i.preheader.i

bb.e:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.bp = icmp eq i32 %i.e, 0
  br i1 %i.bp, label %bb.f, label %.preheader19.i.preheader.i

.preheader19.i.preheader.i:                       ; preds = %bb.e, %.thread.i
  %.018.i = phi i32 [ %i.bo, %.thread.i ], [ %i.e, %bb.e ]
  %.0817.i = phi ptr [ %i.bn, %.thread.i ], [ %i.bl, %bb.e ] ; 4 uses
  %i.bq = zext nneg i32 %.018.i to i64
  br label %.preheader19.i.i

bb.f:                                             ; preds = %bb.e
  store i8 48, ptr %i.c, align 16, !tbaa !34
  br label %tg3json__write_exp.exit

.preheader.i.i.a:                                 ; preds = %.preheader19.i.i
  %.not1822.i.i = icmp eq i64 %8, 0
  br i1 %.not1822.i.i, label %tg3json__write_exp.exit, label %iter.check320

iter.check320:                                    ; preds = %.preheader.i.i.a
  %min.iters.check306 = icmp ult i64 %8, 8
  br i1 %min.iters.check306, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check307

vector.main.loop.iter.check307:                   ; preds = %iter.check320
  %min.iters.check308 = icmp ult i64 %8, 32
  br i1 %min.iters.check308, label %vec.epilog.ph324, label %vector.ph309

vector.ph309:                                     ; preds = %vector.main.loop.iter.check307
  %i.br = and i64 %8, 24
  %n.vec310 = and i64 %8, -32                     ; 5 uses
  %i.bs = and i64 %8, 31
  br label %vector.body311

vector.body311:                                   ; preds = %vector.body311, %vector.ph309
  %index312 = phi i64 [ 0, %vector.ph309 ], [ %index.next316, %vector.body311 ] ; 3 uses
  %i.bt = sub i64 %.01421.i.i, %index312
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 -15
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 -31
  %wide.load313.a = load <16 x i8>, ptr %i.bv, align 1, !tbaa !34
  %wide.load314 = load <16 x i8>, ptr %i.bw, align 1, !tbaa !34
  %reverse = shufflevector <16 x i8> %wide.load313.a, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse315 = shufflevector <16 x i8> %wide.load314, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 %index312 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <16 x i8> %reverse, ptr %i.bx, align 16, !tbaa !34
  store <16 x i8> %reverse315, ptr %i.by, align 16, !tbaa !34
  %index.next316 = add nuw i64 %index312, 32      ; 2 uses
  %i.bz = icmp eq i64 %index.next316, %n.vec310
  br i1 %i.bz, label %middle.block317, label %vector.body311, !llvm.loop !556

middle.block317:                                  ; preds = %vector.body311
  %cmp.n318 = icmp eq i64 %8, %n.vec310
  br i1 %cmp.n318, label %tg3json__write_exp.exit, label %vec.epilog.iter.check322

vec.epilog.iter.check322:                         ; preds = %middle.block317
  %min.epilog.iters.check323 = icmp eq i64 %i.br, 0
  br i1 %min.epilog.iters.check323, label %.lr.ph.i.i.preheader, label %vec.epilog.ph324, !prof !56

vec.epilog.ph324:                                 ; preds = %vector.main.loop.iter.check307, %vec.epilog.iter.check322
  %vec.epilog.resume.val319 = phi i64 [ %n.vec310, %vec.epilog.iter.check322 ], [ 0, %vector.main.loop.iter.check307 ]
  %n.vec325 = and i64 %8, -8                      ; 4 uses
  %i.ca = and i64 %8, 7
  br label %vec.epilog.vector.body326

vec.epilog.vector.body326:                        ; preds = %vec.epilog.vector.body326, %vec.epilog.ph324
  %index327 = phi i64 [ %vec.epilog.resume.val319, %vec.epilog.ph324 ], [ %index.next330, %vec.epilog.vector.body326 ] ; 3 uses
  %i.cb = sub i64 %.01421.i.i, %index327
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cb
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -7
  %wide.load328 = load <8 x i8>, ptr %i.cd, align 1, !tbaa !34
  %reverse329 = shufflevector <8 x i8> %wide.load328, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 %index327
  store <8 x i8> %reverse329, ptr %i.ce, align 8, !tbaa !34
  %index.next330 = add nuw i64 %index327, 8       ; 2 uses
  %i.cf = icmp eq i64 %index.next330, %n.vec325
  br i1 %i.cf, label %vec.epilog.middle.block331, label %vec.epilog.vector.body326, !llvm.loop !557

vec.epilog.middle.block331:                       ; preds = %vec.epilog.vector.body326
  %cmp.n332 = icmp eq i64 %8, %n.vec325
  br i1 %cmp.n332, label %tg3json__write_exp.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check320, %vec.epilog.iter.check322, %vec.epilog.middle.block331
  %.024.i.i.ph = phi i64 [ 0, %iter.check320 ], [ %n.vec310, %vec.epilog.iter.check322 ], [ %n.vec325, %vec.epilog.middle.block331 ]
  %.123.i.i.ph = phi i64 [ %8, %iter.check320 ], [ %i.bs, %vec.epilog.iter.check322 ], [ %i.ca, %vec.epilog.middle.block331 ]
  br label %.lr.ph.i.i

.preheader19.i.i:                                 ; preds = %.preheader19.i.i, %.preheader19.i.preheader.i
  %.01421.i.i = phi i64 [ %8, %.preheader19.i.i ], [ 0, %.preheader19.i.preheader.i ] ; 4 uses
  %.01620.i.i = phi i64 [ %10, %.preheader19.i.i ], [ %i.bq, %.preheader19.i.preheader.i ] ; 3 uses
  %5 = urem i64 %.01620.i.i, 10
  %6 = trunc nuw nsw i64 %5 to i8
  %7 = or disjoint i8 %6, 48
  %8 = add i64 %.01421.i.i, 1                     ; 12 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 %.01421.i.i
  store i8 %7, ptr %9, align 1, !tbaa !34
  %10 = udiv i64 %.01620.i.i, 10
  %.not.i.i = icmp samesign ult i64 %.01620.i.i, 10
  br i1 %.not.i.i, label %.preheader.i.i.a, label %.preheader19.i.i, !llvm.loop !558

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.024.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ %.024.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.123.i.i = phi i64 [ %i.cg, %.lr.ph.i.i ], [ %.123.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.cg = add i64 %.123.i.i, -1                   ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !34
  %i.cj = add nuw i64 %.024.i.i, 1                ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.c, i64 %.024.i.i
  store i8 %i.ci, ptr %i.ck, align 1, !tbaa !34
  %.not18.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not18.i.i, label %tg3json__write_exp.exit, label %.lr.ph.i.i, !llvm.loop !559

tg3json__write_exp.exit:                          ; preds = %.lr.ph.i.i, %middle.block317, %vec.epilog.middle.block331, %bb.f, %.preheader.i.i.a
  %.0816.i = phi ptr [ %i.bl, %bb.f ], [ %.0817.i, %.preheader.i.i.a ], [ %.0817.i, %middle.block317 ], [ %.0817.i, %vec.epilog.middle.block331 ], [ %.0817.i, %.lr.ph.i.i ] ; 2 uses
  %.0.lcssa.sink.i.i = phi i64 [ 1, %bb.f ], [ 0, %.preheader.i.i.a ], [ %n.vec310, %middle.block317 ], [ %n.vec325, %vec.epilog.middle.block331 ], [ %i.cj, %.lr.ph.i.i ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.c, i64 %.0.lcssa.sink.i.i
  store i8 0, ptr %i.cl, align 1, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0816.i, ptr nonnull align 16 %i.c, i64 %.0.lcssa.sink.i.i, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %.0816.i, i64 %.0.lcssa.sink.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.loopexit76

bb.g:                                             ; preds = %bb.c
  %i.cn = icmp sgt i32 %3, -1
  br i1 %i.cn, label %.preheader77, label %bb.h

.preheader77:                                     ; preds = %bb.g
  %i.co = icmp sgt i32 %2, 0
  br i1 %i.co, label %iter.check259, label %.preheader

iter.check259:                                    ; preds = %.preheader77
  %wide.trip.count133 = zext nneg i32 %2 to i64   ; 8 uses
  %min.iters.check245 = icmp ult i32 %2, 4
  %i.cp = sub i64 %i.a, %.064174
  %diff.check244 = icmp ugt i64 %i.cp, -32
  %or.cond337.a = select i1 %min.iters.check245, i1 true, i1 %diff.check244
  br i1 %or.cond337.a, label %.lr.ph98.preheader, label %vector.main.loop.iter.check246

vector.main.loop.iter.check246:                   ; preds = %iter.check259
  %min.iters.check247 = icmp ult i32 %2, 32
  br i1 %min.iters.check247, label %vec.epilog.ph263, label %vector.ph248

vector.ph248:                                     ; preds = %vector.main.loop.iter.check246
  %i.cq = and i64 %wide.trip.count133, 28
  %n.vec249 = and i64 %wide.trip.count133, 2147483616 ; 5 uses
  %i.cr = getelementptr i8, ptr %.064, i64 %n.vec249 ; 2 uses
  br label %vector.body250

vector.body250:                                   ; preds = %vector.body250, %vector.ph248
  %index251 = phi i64 [ 0, %vector.ph248 ], [ %index.next255, %vector.body250 ] ; 3 uses
  %next.gep252 = getelementptr i8, ptr %.064, i64 %index251 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %index251 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load253.a = load <16 x i8>, ptr %i.cs, align 1, !tbaa !34
  %wide.load254 = load <16 x i8>, ptr %i.ct, align 1, !tbaa !34
  %i.cu = getelementptr i8, ptr %next.gep252, i64 16
  store <16 x i8> %wide.load253.a, ptr %next.gep252, align 1, !tbaa !34
  store <16 x i8> %wide.load254, ptr %i.cu, align 1, !tbaa !34
  %index.next255 = add nuw i64 %index251, 32      ; 2 uses
  %i.cv = icmp eq i64 %index.next255, %n.vec249
  br i1 %i.cv, label %middle.block256, label %vector.body250, !llvm.loop !560

middle.block256:                                  ; preds = %vector.body250
  %cmp.n257 = icmp eq i64 %n.vec249, %wide.trip.count133
  br i1 %cmp.n257, label %.preheader, label %vec.epilog.iter.check261

vec.epilog.iter.check261:                         ; preds = %middle.block256
  %min.epilog.iters.check262 = icmp eq i64 %i.cq, 0
  br i1 %min.epilog.iters.check262, label %.lr.ph98.preheader, label %vec.epilog.ph263, !prof !575

vec.epilog.ph263:                                 ; preds = %vector.main.loop.iter.check246, %vec.epilog.iter.check261
  %vec.epilog.resume.val258 = phi i64 [ %n.vec249, %vec.epilog.iter.check261 ], [ 0, %vector.main.loop.iter.check246 ]
  %n.vec264 = and i64 %wide.trip.count133, 2147483644 ; 4 uses
  %i.cw = getelementptr i8, ptr %.064, i64 %n.vec264 ; 2 uses
  br label %vec.epilog.vector.body265

vec.epilog.vector.body265:                        ; preds = %vec.epilog.vector.body265, %vec.epilog.ph263
  %index266 = phi i64 [ %vec.epilog.resume.val258, %vec.epilog.ph263 ], [ %index.next269, %vec.epilog.vector.body265 ] ; 3 uses
  %next.gep267 = getelementptr i8, ptr %.064, i64 %index266
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %index266
  %wide.load268 = load <4 x i8>, ptr %i.cx, align 1, !tbaa !34
  store <4 x i8> %wide.load268, ptr %next.gep267, align 1, !tbaa !34
  %index.next269 = add nuw i64 %index266, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next269, %n.vec264
  br i1 %i.cy, label %vec.epilog.middle.block270, label %vec.epilog.vector.body265, !llvm.loop !561

vec.epilog.middle.block270:                       ; preds = %vec.epilog.vector.body265
  %cmp.n271 = icmp eq i64 %n.vec264, %wide.trip.count133
  br i1 %cmp.n271, label %.preheader, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %iter.check259, %vec.epilog.iter.check261, %vec.epilog.middle.block270
  %indvars.iv130.ph = phi i64 [ 0, %iter.check259 ], [ %n.vec249, %vec.epilog.iter.check261 ], [ %n.vec264, %vec.epilog.middle.block270 ] ; 4 uses
  %.36796.ph = phi ptr [ %.064, %iter.check259 ], [ %i.cr, %vec.epilog.iter.check261 ], [ %i.cw, %vec.epilog.middle.block270 ] ; 2 uses
  %i.cz = sub nsw i64 %wide.trip.count133, %indvars.iv130.ph
  %xtraiter351 = and i64 %i.cz, 7                 ; 2 uses
  %lcmp.mod352.not = icmp eq i64 %xtraiter351, 0
  br i1 %lcmp.mod352.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol

.lr.ph98.prol:                                    ; preds = %.lr.ph98.preheader, %.lr.ph98.prol
  %indvars.iv130.prol = phi i64 [ %indvars.iv.next131.prol, %.lr.ph98.prol ], [ %indvars.iv130.ph, %.lr.ph98.preheader ] ; 2 uses
  %.36796.prol = phi ptr [ %i.dc, %.lr.ph98.prol ], [ %.36796.ph, %.lr.ph98.preheader ] ; 2 uses
  %prol.iter353 = phi i64 [ %prol.iter353.next, %.lr.ph98.prol ], [ 0, %.lr.ph98.preheader ]
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130.prol
  %i.db = load i8, ptr %i.da, align 1, !tbaa !34
  %i.dc = getelementptr inbounds nuw i8, ptr %.36796.prol, i64 1 ; 3 uses
  store i8 %i.db, ptr %.36796.prol, align 1, !tbaa !34
  %indvars.iv.next131.prol = add nuw nsw i64 %indvars.iv130.prol, 1 ; 2 uses
  %prol.iter353.next = add i64 %prol.iter353, 1   ; 2 uses
  %prol.iter353.cmp.not = icmp eq i64 %prol.iter353.next, %xtraiter351
  br i1 %prol.iter353.cmp.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol, !llvm.loop !562

.lr.ph98.prol.loopexit:                           ; preds = %.lr.ph98.prol, %.lr.ph98.preheader
  %.lcssa342.unr.a = phi ptr [ poison, %.lr.ph98.preheader ], [ %i.dc, %.lr.ph98.prol ]
  %indvars.iv130.unr = phi i64 [ %indvars.iv130.ph, %.lr.ph98.preheader ], [ %indvars.iv.next131.prol, %.lr.ph98.prol ]
  %.36796.unr = phi ptr [ %.36796.ph, %.lr.ph98.preheader ], [ %i.dc, %.lr.ph98.prol ]
  %i.dd = sub nsw i64 %indvars.iv130.ph, %wide.trip.count133
  %i.de = icmp ugt i64 %i.dd, -8
  br i1 %i.de, label %.preheader, label %.lr.ph98

.preheader:                                       ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98, %middle.block256, %vec.epilog.middle.block270, %.preheader77
  %.367.lcssa = phi ptr [ %.064, %.preheader77 ], [ %i.cw, %vec.epilog.middle.block270 ], [ %i.cr, %middle.block256 ], [ %.lcssa342.unr.a, %.lr.ph98.prol.loopexit ], [ %i.ek, %.lr.ph98 ] ; 3 uses
  %.not106 = icmp eq i32 %3, 0
  br i1 %.not106, label %.loopexit76, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %.preheader
  %i.df = zext nneg i32 %3 to i64                 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %.367.lcssa, i8 48, i64 %i.df, i1 false), !tbaa !34
  %scevgep137 = getelementptr i8, ptr %.367.lcssa, i64 %i.df
  br label %.loopexit76

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %indvars.iv130 = phi i64 [ %indvars.iv.next131.7, %.lr.ph98 ], [ %indvars.iv130.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %.36796 = phi ptr [ %i.ek, %.lr.ph98 ], [ %.36796.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !34
  %i.di = getelementptr inbounds nuw i8, ptr %.36796, i64 1
  store i8 %i.dh, ptr %.36796, align 1, !tbaa !34
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !34
  %i.dm = getelementptr inbounds nuw i8, ptr %.36796, i64 2
  store i8 %i.dl, ptr %i.di, align 1, !tbaa !34
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !34
  %i.dq = getelementptr inbounds nuw i8, ptr %.36796, i64 3
  store i8 %i.dp, ptr %i.dm, align 1, !tbaa !34
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 3
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !34
  %i.du = getelementptr inbounds nuw i8, ptr %.36796, i64 4
  store i8 %i.dt, ptr %i.dq, align 1, !tbaa !34
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !34
  %i.dy = getelementptr inbounds nuw i8, ptr %.36796, i64 5
  store i8 %i.dx, ptr %i.du, align 1, !tbaa !34
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 5
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !34
  %i.ec = getelementptr inbounds nuw i8, ptr %.36796, i64 6
  store i8 %i.eb, ptr %i.dy, align 1, !tbaa !34
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 6
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !34
  %i.eg = getelementptr inbounds nuw i8, ptr %.36796, i64 7
  store i8 %i.ef, ptr %i.ec, align 1, !tbaa !34
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv130
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 7
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !34
  %i.ek = getelementptr inbounds nuw i8, ptr %.36796, i64 8 ; 2 uses
  store i8 %i.ej, ptr %i.eg, align 1, !tbaa !34
  %indvars.iv.next131.7 = add nuw nsw i64 %indvars.iv130, 8 ; 2 uses
  %exitcond134.not.7 = icmp eq i64 %indvars.iv.next131.7, %wide.trip.count133
  br i1 %exitcond134.not.7, label %.preheader, label %.lr.ph98, !llvm.loop !563

bb.h:                                             ; preds = %bb.g
  %i.el = icmp sgt i32 %i.d, 0
  br i1 %i.el, label %iter.check192, label %bb.i

iter.check192:                                    ; preds = %bb.h
  %wide.trip.count122 = zext nneg i32 %i.d to i64 ; 8 uses
  %min.iters.check176 = icmp ult i32 %i.d, 4
  %i.em = sub i64 %i.a, %.064174
  %diff.check175 = icmp ugt i64 %i.em, -32
  %or.cond338.a = select i1 %min.iters.check176, i1 true, i1 %diff.check175
  br i1 %or.cond338.a, label %.preheader79.preheader, label %vector.main.loop.iter.check177

vector.main.loop.iter.check177:                   ; preds = %iter.check192
  %min.iters.check178 = icmp ult i32 %i.d, 32
  br i1 %min.iters.check178, label %vec.epilog.ph196, label %vector.ph179

vector.ph179:                                     ; preds = %vector.main.loop.iter.check177
  %i.en = and i64 %wide.trip.count122, 28
  %n.vec180 = and i64 %wide.trip.count122, 2147483616 ; 7 uses
  %i.eo = or disjoint i64 %n.vec180, 1
  %i.ep = getelementptr i8, ptr %.064, i64 %n.vec180 ; 3 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph179
  %index182 = phi i64 [ 0, %vector.ph179 ], [ %index.next186, %vector.body181 ] ; 3 uses
  %next.gep183 = getelementptr i8, ptr %.064, i64 %index182 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 %index182 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load184.a = load <16 x i8>, ptr %i.eq, align 1, !tbaa !34
  %wide.load185 = load <16 x i8>, ptr %i.er, align 1, !tbaa !34
  %i.es = getelementptr i8, ptr %next.gep183, i64 16
  store <16 x i8> %wide.load184.a, ptr %next.gep183, align 1, !tbaa !34
  store <16 x i8> %wide.load185, ptr %i.es, align 1, !tbaa !34
  %index.next186 = add nuw i64 %index182, 32      ; 2 uses
  %i.et = icmp eq i64 %index.next186, %n.vec180
  br i1 %i.et, label %middle.block187, label %vector.body181, !llvm.loop !564

middle.block187:                                  ; preds = %vector.body181
  %ind.escape188 = getelementptr i8, ptr %i.ep, i64 -1
  %cmp.n189 = icmp eq i64 %n.vec180, %wide.trip.count122
  br i1 %cmp.n189, label %.loopexit335, label %vec.epilog.iter.check194

vec.epilog.iter.check194:                         ; preds = %middle.block187
end_hunk_1
begin_hunk_2_@llvm.vector.reduce.umax.v4i32
!356 = distinct !{!356, !38}
!357 = distinct !{!357, !38}
!358 = distinct !{!358, !38}
!359 = distinct !{!359, !38}
!360 = distinct !{!360, !38}
!361 = distinct !{!361, !38}
!362 = distinct !{null, ptr @tg3__arena_str, null, null, null}
!363 = distinct !{!363, !38}
!364 = distinct !{!364, !38}
!365 = distinct !{!365, !38}
!366 = distinct !{!366, !38}
!367 = distinct !{!367, !38}
!368 = distinct !{!368, !38}
!369 = distinct !{!369, !38}
!370 = distinct !{!370, !38}
!371 = distinct !{!371, !38}
!372 = distinct !{!372, !38}
!373 = distinct !{null, null, null}
!374 = distinct !{!374, !38}
!375 = distinct !{null, ptr @tg3__arena_str, null, null, null}
!376 = distinct !{!376, !38}
!377 = distinct !{!377, !38}
!378 = distinct !{!378, !38}
!379 = distinct !{!379, !38}
!380 = distinct !{!380, !38}
!381 = distinct !{!381, !38}
!382 = distinct !{!382, !38}
!383 = distinct !{!383, !38}
!384 = distinct !{!384, !38}
!385 = distinct !{!385, !38}
!386 = distinct !{!386, !38}
!387 = distinct !{!387, !38}
!388 = distinct !{!388, !38}
!389 = distinct !{!389, !38}
!390 = distinct !{!390, !38}
!391 = distinct !{!391, !38}
!392 = distinct !{!392, !38}
!393 = distinct !{!393, !38}
!394 = distinct !{!394, !38}
!395 = distinct !{!395, !38}
!396 = distinct !{!396, !38}
!397 = distinct !{!397, !38}
!398 = distinct !{!398, !38}
!399 = distinct !{!399, !38}
!400 = distinct !{!400, !38}
!401 = distinct !{!401, !38}
!402 = distinct !{!402, !38}
!403 = distinct !{!403, !38}
!404 = distinct !{!404, !38}
!405 = distinct !{!405, !38}
!406 = distinct !{!406, !38}
!407 = distinct !{!407, !38}
!408 = distinct !{!408, !38}
!409 = distinct !{!409, !38}
!410 = distinct !{!410, !38}
!411 = distinct !{!411, !38}
!412 = distinct !{!412, !38}
!413 = distinct !{!413, !38}
!414 = distinct !{!414, !38}
!415 = !{!137, !15, i64 16}
!416 = !{!137, !69, i64 184}
!417 = !{!"tg3_stream_callbacks", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !18, i64 88, !18, i64 96, !18, i64 104, !18, i64 112, !18, i64 120}
!418 = !{!417, !18, i64 0}
!419 = !{!417, !18, i64 120}
!420 = !{!137, !15, i64 224}
!421 = !{!137, !18, i64 88}
!422 = !{!"llvm.loop.peeled.count", i32 1}
!423 = !{!137, !18, i64 128}
!424 = !{!137, !21, i64 240}
!425 = !{!137, !18, i64 96}
!426 = !{!417, !18, i64 8}
!427 = !{!417, !18, i64 16}
!428 = !{!90, !15, i64 16}
!429 = !{!90, !15, i64 80}
!430 = !{!90, !15, i64 4}
!431 = !{!90, !21, i64 8}
!432 = !{!90, !21, i64 88}
!433 = !{!417, !18, i64 24}
!434 = !{!417, !18, i64 32}
!435 = !{!417, !18, i64 40}
!436 = !{i64 0, i64 8, !20, i64 8, i64 4, !41}
!437 = !{!417, !18, i64 48}
!438 = !{!417, !18, i64 56}
!439 = !{!417, !18, i64 72}
!440 = !{!137, !15, i64 208}
!441 = !{!226, !15, i64 96}
!442 = !{!417, !18, i64 64}
!443 = !{!417, !18, i64 88}
!444 = !{!417, !18, i64 80}
!445 = !{!417, !18, i64 96}
!446 = !{!417, !18, i64 104}
!447 = !{!417, !18, i64 112}
!448 = !{!"tg3_audio_source", !81, i64 0, !81, i64 16, !15, i64 32, !81, i64 40, !84, i64 56}
!449 = !{!448, !15, i64 32}
!450 = !{!113, !110, i64 248}
!451 = !{!113, !15, i64 256}
!452 = !{!"tg3_positional_emitter", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !84, i64 48}
!453 = !{!"tg3_audio_emitter", !81, i64 0, !57, i64 16, !15, i64 24, !15, i64 28, !81, i64 32, !81, i64 48, !452, i64 64, !15, i64 168, !84, i64 176}
!454 = !{!453, !57, i64 16}
!455 = !{!453, !15, i64 168}
!456 = !{!453, !57, i64 104}
!457 = !{!113, !109, i64 232}
!458 = !{!113, !15, i64 240}
!459 = !{!137, !15, i64 232}
!460 = !{!277, !15, i64 40}
!461 = !{!277, !185, i64 32}
!462 = !{!215, !15, i64 80}
!463 = !{!215, !185, i64 72}
!464 = distinct !{!464, !38}
!465 = distinct !{!465, !38, !54, !55}
!466 = distinct !{!466, !38, !55, !54}
!467 = !{!70, !18, i64 112}
!468 = distinct !{null}
!469 = distinct !{!469, !38}
!470 = !{!127, !126, i64 0}
!471 = distinct !{!471, !38}
!472 = distinct !{!472, !38}
!473 = distinct !{!473, !38}
!474 = distinct !{!474, !38}
!475 = distinct !{!475, !38}
!476 = distinct !{!476, !38}
!477 = distinct !{!477, !38}
!478 = distinct !{!478, !38}
!479 = distinct !{!479, !38}
!480 = distinct !{!480, !38}
!481 = distinct !{!481, !38}
!482 = distinct !{!482, !38}
!483 = distinct !{!483, !38}
!484 = distinct !{!484, !38}
!485 = distinct !{!485, !38, !54, !55}
!486 = distinct !{!486, !38, !54, !55}
!487 = distinct !{!487, !288}
!488 = distinct !{!488, !38, !54}
!489 = !{!77, !15, i64 16}
!490 = !{!77, !15, i64 12}
!491 = !{!113, !111, i64 264}
!492 = !{!113, !15, i64 272}
!493 = !{!113, !111, i64 280}
!494 = !{!113, !15, i64 288}
!495 = !{!77, !15, i64 4}
!496 = !{!77, !18, i64 72}
!497 = !{!290, !15, i64 28}
!498 = distinct !{!498, !38}
!499 = !{!85, !15, i64 44}
!500 = !{!91, !15, i64 32}
!501 = !{!91, !87, i64 56}
!502 = !{!91, !15, i64 64}
!503 = !{!91, !87, i64 72}
!504 = !{!91, !15, i64 80}
!505 = distinct !{!505, !38}
!506 = distinct !{!506, !38}
!507 = distinct !{!507, !38}
!508 = distinct !{!508, !38}
!509 = !{!267, !19, i64 0}
!510 = !{!267, !15, i64 8}
!511 = !{!197, !87, i64 32}
!512 = !{!197, !15, i64 40}
!513 = !{!202, !87, i64 288}
!514 = !{!202, !15, i64 296}
!515 = !{!214, !57, i64 96}
!516 = !{!214, !57, i64 104}
!517 = !{!214, !15, i64 32}
!518 = !{!214, !15, i64 112}
!519 = !{!208, !15, i64 4}
!520 = !{!211, !15, i64 4}
!521 = !{!215, !19, i64 40}
!522 = !{!215, !15, i64 64}
!523 = !{!"tg3_sampler", !81, i64 0, !15, i64 16, !15, i64 20, !15, i64 24, !15, i64 28, !84, i64 32}
!524 = !{!523, !15, i64 24}
!525 = !{!523, !15, i64 28}
!526 = !{!523, !15, i64 16}
!527 = !{!523, !15, i64 20}
!528 = distinct !{!528, !38}
!529 = distinct !{!529, !38}
!530 = !{!253, !57, i64 32}
!531 = !{!253, !57, i64 40}
!532 = !{!253, !57, i64 48}
!533 = !{!253, !57, i64 56}
!534 = !{!253, !57, i64 120}
!535 = !{!253, !57, i64 128}
!536 = !{!253, !57, i64 136}
!537 = !{!253, !57, i64 144}
!538 = !{!260, !57, i64 40}
!539 = !{!260, !57, i64 64}
!540 = !{!260, !19, i64 48}
!541 = !{!260, !57, i64 72}
!542 = !{!290, !15, i64 16}
!543 = distinct !{!543, !38}
!544 = distinct !{!544, !38}
!545 = distinct !{!545, !38}
!546 = distinct !{!546, !38}
!547 = distinct !{!547, !38}
!548 = distinct !{!548, !38}
!549 = distinct !{!549, !288}
!550 = distinct !{!550, !38}
!551 = distinct !{!551, !38}
!552 = distinct !{!552, !38, !54, !55}
!553 = distinct !{!553, !38, !54, !55}
!554 = distinct !{!554, !288}
!555 = distinct !{!555, !38, !54}
!556 = distinct !{!556, !38, !54, !55}
!557 = distinct !{!557, !38, !54, !55}
!558 = distinct !{!558, !38}
!559 = distinct !{!559, !38, !55, !54}
!560 = distinct !{!560, !38, !54, !55}
!561 = distinct !{!561, !38, !54, !55}
!562 = distinct !{!562, !288}
!563 = distinct !{!563, !38, !54}
!564 = distinct !{!564, !38, !54, !55}
!565 = distinct !{!565, !38, !54, !55}
!566 = distinct !{!566, !288}
!567 = distinct !{!567, !38, !54}
!568 = distinct !{!568, !38, !54, !55}
!569 = distinct !{!569, !38, !54, !55}
!570 = distinct !{!570, !38, !54}
!571 = distinct !{!571, !38, !54, !55}
!572 = distinct !{!572, !38, !54, !55}
!573 = distinct !{!573, !288}
!574 = distinct !{!574, !38, !54}
!575 = !{!"branch_weights", i32 4, i32 28}
!576 = distinct !{!576, !38}
!577 = distinct !{!577, !38, !580}
!578 = distinct !{!578, !288}
!579 = !{!111, !111, i64 0}
!580 = !{!"llvm.loop.unswitch.partial.disable"}
!581 = distinct !{!581, !38}
!582 = !{!137, !15, i64 220}
!583 = !{!137, !15, i64 216}
!584 = !{!302, !15, i64 16}
!585 = distinct !{!585, !38}
!586 = !{!87, !87, i64 0}
!587 = distinct !{!587, !38}
!588 = !{!185, !185, i64 0}
!589 = distinct !{!589, !38}
!590 = distinct !{!590, !38}
!591 = distinct !{!591, !38}
!592 = distinct !{!592, !38}
!593 = distinct !{!593, !38}
!594 = !{!302, !19, i64 0}
!595 = !{!302, !15, i64 8}
!596 = distinct !{!596, !38}
!597 = distinct !{!597, !38}
!598 = !{!301, !19, i64 16}
!599 = !{!301, !15, i64 24}
!600 = !{!"tg3_kv_pair", !81, i64 0, !301, i64 16}
!601 = !{!600, !19, i64 0}
!602 = !{!600, !15, i64 8}
!603 = distinct !{!603, !38}
!604 = distinct !{!604, !38}
!605 = !{!206, !15, i64 4}
end_hunk_2
