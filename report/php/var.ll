Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/var?download=true
inline.NumInlined: 22
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@php_var_export_ex:bb.a
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !103
  %.not12.i275 = icmp ult i64 %i.np, %i.nr
  br i1 %.not12.i275, label %smart_str_alloc.exit278, label %bb.cq, !prof !64

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %.0.i276 = phi i64 [ %i.nk, %bb.co ], [ %i.np, %bb.cp ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i276) #12
  %.pre541 = load ptr, ptr %2, align 8, !tbaa !102 ; 2 uses
  %.phi.trans.insert542 = getelementptr inbounds nuw i8, ptr %.pre541, i64 16
  %.pre543 = load i64, ptr %.phi.trans.insert542, align 8, !tbaa !28
  br label %smart_str_alloc.exit278

smart_str_alloc.exit278:                          ; preds = %bb.cp, %bb.cq
  %i.ns = phi i64 [ %i.no, %bb.cp ], [ %.pre543, %bb.cq ]
  %i.nt = phi ptr [ %i.nm, %bb.cp ], [ %.pre541, %bb.cq ]
  %.1.i277 = phi i64 [ %i.np, %bb.cp ], [ %.0.i276, %bb.cq ]
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.ns
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nv, ptr align 1 %i.nl, i64 %i.nk, i1 false)
  %i.nw = load ptr, ptr %2, align 8, !tbaa !102
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 16
  store i64 %.1.i277, ptr %i.nx, align 8, !tbaa !28
  %i.ny = load ptr, ptr %i.m, align 8, !tbaa !97
  call void @_efree(ptr noundef %i.ny) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  br label %bb.cr

bb.cr:                                            ; preds = %smart_str_alloc.exit278, %bb.cn
  %i.nz = load ptr, ptr %2, align 8, !tbaa !102   ; 3 uses
  %.not.i.i345 = icmp eq ptr %i.nz, null
  br i1 %.not.i.i345, label %bb.ct, label %bb.cs, !prof !36

bb.cs:                                            ; preds = %bb.cr
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.ob = load i64, ptr %i.oa, align 8, !tbaa !28
  %i.oc = add i64 %i.ob, 1                        ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !103
  %.not12.i.i346 = icmp ult i64 %i.oc, %i.oe
  br i1 %.not12.i.i346, label %smart_str_appendc_ex.exit349, label %bb.ct, !prof !64

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %.0.i.i347 = phi i64 [ 1, %bb.cr ], [ %i.oc, %bb.cs ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i.i347) #12
  %.pre544 = load ptr, ptr %2, align 8, !tbaa !102
  br label %smart_str_appendc_ex.exit349

smart_str_appendc_ex.exit349:                     ; preds = %bb.cs, %bb.ct
  %i.of = phi ptr [ %i.nz, %bb.cs ], [ %.pre544, %bb.ct ]
  %.1.i.i348 = phi i64 [ %i.oc, %bb.cs ], [ %.0.i.i347, %bb.ct ] ; 2 uses
  %i.og = getelementptr i8, ptr %i.of, i64 23
  %i.oh = getelementptr i8, ptr %i.og, i64 %.1.i.i348
  store i8 41, ptr %i.oh, align 1, !tbaa !13
  %i.oi = load ptr, ptr %2, align 8, !tbaa !102
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  store i64 %.1.i.i348, ptr %i.oj, align 8, !tbaa !28
  br label %zend_string_free.exit

bb.cu:                                            ; preds = %bb.b
  %i.ok = load ptr, ptr %.0186, align 8, !tbaa !13 ; 5 uses
  %i.ol = tail call ptr @zend_get_recursion_guard(ptr noundef %i.ok) #12 ; 7 uses
  %.not = icmp eq ptr %i.ol, null                 ; 3 uses
  br i1 %.not, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !57 ; 2 uses
  %i.on = and i32 %i.om, 64
  %.not218 = icmp eq i32 %i.on, 0
  br i1 %.not218, label %bb.da, label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 4 ; 2 uses
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !13 ; 2 uses
  %i.oq = and i32 %i.op, 32
  %.not217 = icmp eq i32 %i.oq, 0
  br i1 %.not217, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %i.or = load ptr, ptr %2, align 8, !tbaa !102   ; 3 uses
  %.not.i269 = icmp eq ptr %i.or, null
  br i1 %.not.i269, label %bb.cz, label %bb.cy, !prof !36

bb.cy:                                            ; preds = %bb.cx
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !28 ; 2 uses
  %i.ou = add i64 %i.ot, 4                        ; 3 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ow = load i64, ptr %i.ov, align 8, !tbaa !103
  %.not12.i270 = icmp ult i64 %i.ou, %i.ow
  br i1 %.not12.i270, label %.thread428.a, label %bb.cz, !prof !64

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  %.0.i271 = phi i64 [ 4, %bb.cx ], [ %i.ou, %bb.cy ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i271) #12
  %.pre = load ptr, ptr %2, align 8, !tbaa !102   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre465 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !28
  br label %.thread428.a

.thread428.a:                                     ; preds = %bb.cz, %bb.cy
  %i.ox = phi i64 [ %i.ot, %bb.cy ], [ %.pre465, %bb.cz ]
  %i.oy = phi ptr [ %i.or, %bb.cy ], [ %.pre, %bb.cz ]
  %.1.i272 = phi i64 [ %i.ou, %bb.cy ], [ %.0.i271, %bb.cz ]
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 %i.ox
  store i32 1280070990, ptr %i.pa, align 1
  %i.pb = load ptr, ptr %2, align 8, !tbaa !102
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  store i64 %.1.i272, ptr %i.pc, align 8, !tbaa !28
  tail call void (i32, ptr, ...) @zend_error(i32 noundef 2, ptr noundef nonnull @.str.40) #12
  br label %zend_string_free.exit

bb.da:                                            ; preds = %bb.cv
  %i.pd = or disjoint i32 %i.om, 64
  store i32 %i.pd, ptr %i.ol, align 4, !tbaa !57
  br label %bb.dc

bb.db:                                            ; preds = %bb.cw
  %i.pe = or disjoint i32 %i.op, 32
  store i32 %i.pe, ptr %i.oo, align 4, !tbaa !13
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.pf = tail call ptr @zend_get_properties_for(ptr noundef nonnull %.0186, i32 noundef 3) #12 ; 14 uses
  %i.pg = icmp sgt i32 %1, 1
  br i1 %i.pg, label %bb.dd, label %bb.di

bb.dd:                                            ; preds = %bb.dc
  %i.ph = load ptr, ptr %2, align 8, !tbaa !102   ; 3 uses
  %.not.i.i350 = icmp eq ptr %i.ph, null
  br i1 %.not.i.i350, label %bb.df, label %bb.de, !prof !36

bb.de:                                            ; preds = %bb.dd
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 16
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !28
  %i.pk = add i64 %i.pj, 1                        ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pm = load i64, ptr %i.pl, align 8, !tbaa !103
  %.not12.i.i351 = icmp ult i64 %i.pk, %i.pm
  br i1 %.not12.i.i351, label %smart_str_appendc_ex.exit354, label %bb.df, !prof !64

bb.df:                                            ; preds = %bb.de, %bb.dd
  %.0.i.i352 = phi i64 [ 1, %bb.dd ], [ %i.pk, %bb.de ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i.i352) #12
  %.pre466 = load ptr, ptr %2, align 8, !tbaa !102
  br label %smart_str_appendc_ex.exit354

smart_str_appendc_ex.exit354:                     ; preds = %bb.de, %bb.df
  %i.pn = phi ptr [ %i.ph, %bb.de ], [ %.pre466, %bb.df ]
  %.1.i.i353 = phi i64 [ %i.pk, %bb.de ], [ %.0.i.i352, %bb.df ] ; 2 uses
  %i.po = getelementptr i8, ptr %i.pn, i64 23
  %i.pp = getelementptr i8, ptr %i.po, i64 %.1.i.i353
  store i8 10, ptr %i.pp, align 1, !tbaa !13
  %i.pq = load ptr, ptr %2, align 8, !tbaa !102
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  store i64 %.1.i.i353, ptr %i.pr, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #12
  %i.ps = add nsw i32 %1, -1
  %i.pt = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.n, i64 noundef 0, ptr noundef nonnull @.str, i32 noundef %i.ps, i32 noundef 32) #12 ; 3 uses
  %i.pu = load ptr, ptr %i.n, align 8, !tbaa !97
  %i.pv = load ptr, ptr %2, align 8, !tbaa !102   ; 3 uses
  %.not.i264 = icmp eq ptr %i.pv, null
  br i1 %.not.i264, label %bb.dh, label %bb.dg, !prof !36

bb.dg:                                            ; preds = %smart_str_appendc_ex.exit354
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !28 ; 2 uses
  %i.py = add i64 %i.px, %i.pt                    ; 3 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !103
  %.not12.i265 = icmp ult i64 %i.py, %i.qa
  br i1 %.not12.i265, label %smart_str_alloc.exit268, label %bb.dh, !prof !64

bb.dh:                                            ; preds = %bb.dg, %smart_str_appendc_ex.exit354
  %.0.i266 = phi i64 [ %i.pt, %smart_str_appendc_ex.exit354 ], [ %i.py, %bb.dg ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i266) #12
  %.pre467 = load ptr, ptr %2, align 8, !tbaa !102 ; 2 uses
  %.phi.trans.insert468 = getelementptr inbounds nuw i8, ptr %.pre467, i64 16
  %.pre469 = load i64, ptr %.phi.trans.insert468, align 8, !tbaa !28
  br label %smart_str_alloc.exit268

smart_str_alloc.exit268:                          ; preds = %bb.dg, %bb.dh
  %i.qb = phi i64 [ %i.px, %bb.dg ], [ %.pre469, %bb.dh ]
  %i.qc = phi ptr [ %i.pv, %bb.dg ], [ %.pre467, %bb.dh ]
  %.1.i267 = phi i64 [ %i.py, %bb.dg ], [ %.0.i266, %bb.dh ]
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 %i.qb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qe, ptr align 1 %i.pu, i64 %i.pt, i1 false)
  %i.qf = load ptr, ptr %2, align 8, !tbaa !102
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 16
  store i64 %.1.i267, ptr %i.qg, align 8, !tbaa !28
  %i.qh = load ptr, ptr %i.n, align 8, !tbaa !97
  call void @_efree(ptr noundef %i.qh) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #12
  br label %bb.di

bb.di:                                            ; preds = %smart_str_alloc.exit268, %bb.dc
  %i.qi = load ptr, ptr %.0186, align 8, !tbaa !13
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 16
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !42 ; 5 uses
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 28
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !55
  %i.qn = and i32 %i.qm, 268435456
  %i.qo = icmp ne i32 %i.qn, 0                    ; 4 uses
  %i.qp = load ptr, ptr @zend_standard_class_def, align 8, !tbaa !104
  %i.qq = icmp eq ptr %i.qk, %i.qp
  %i.qr = load ptr, ptr %2, align 8, !tbaa !102   ; 5 uses
  %.not.i259 = icmp eq ptr %i.qr, null            ; 2 uses
  br i1 %i.qq, label %bb.dj, label %bb.dm

bb.dj:                                            ; preds = %bb.di
  br i1 %.not.i259, label %bb.dl, label %bb.dk, !prof !36

bb.dk:                                            ; preds = %bb.dj
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !28 ; 2 uses
  %i.qu = add i64 %i.qt, 16                       ; 3 uses
  %i.qv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.qw = load i64, ptr %i.qv, align 8, !tbaa !103
  %.not12.i260 = icmp ult i64 %i.qu, %i.qw
  br i1 %.not12.i260, label %bb.dx, label %bb.dl, !prof !64

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.0.i261 = phi i64 [ 16, %bb.dj ], [ %i.qu, %bb.dk ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i261) #12
  %.pre483 = load ptr, ptr %2, align 8, !tbaa !102 ; 2 uses
  %.phi.trans.insert484 = getelementptr inbounds nuw i8, ptr %.pre483, i64 16
  %.pre485 = load i64, ptr %.phi.trans.insert484, align 8, !tbaa !28
  br label %bb.dx

bb.dm:                                            ; preds = %bb.di
  br i1 %.not.i259, label %bb.do, label %bb.dn, !prof !36

bb.dn:                                            ; preds = %bb.dm
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qr, i64 16
  %i.qy = load i64, ptr %i.qx, align 8, !tbaa !28
  %i.qz = add i64 %i.qy, 1                        ; 3 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rb = load i64, ptr %i.ra, align 8, !tbaa !103
  %.not12.i.i356 = icmp ult i64 %i.qz, %i.rb
  br i1 %.not12.i.i356, label %bb.dp, label %bb.do, !prof !64

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.0.i.i357 = phi i64 [ 1, %bb.dm ], [ %i.qz, %bb.dn ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i.i357) #12
  %.pre470 = load ptr, ptr %2, align 8, !tbaa !102
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.rc = phi ptr [ %i.qr, %bb.dn ], [ %.pre470, %bb.do ]
  %.1.i.i358 = phi i64 [ %i.qz, %bb.dn ], [ %.0.i.i357, %bb.do ] ; 4 uses
  %i.rd = getelementptr i8, ptr %i.rc, i64 23
  %i.re = getelementptr i8, ptr %i.rd, i64 %.1.i.i358
  store i8 92, ptr %i.re, align 1, !tbaa !13
  %i.rf = load ptr, ptr %2, align 8, !tbaa !102   ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 16
  store i64 %.1.i.i358, ptr %i.rg, align 8, !tbaa !28
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !56 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 24
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 16
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !28 ; 2 uses
  %i.rm = add i64 %i.rl, %.1.i.i358               ; 7 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.ro = load i64, ptr %i.rn, align 8, !tbaa !103
  %.not12.i.i370 = icmp ult i64 %i.rm, %i.ro
  br i1 %.not12.i.i370, label %smart_str_append_ex.exit373, label %bb.dq, !prof !64

bb.dq:                                            ; preds = %bb.dp
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.rm) #12
  %.pre471 = load ptr, ptr %2, align 8, !tbaa !102 ; 2 uses
  %.phi.trans.insert472 = getelementptr inbounds nuw i8, ptr %.pre471, i64 16
  %.pre473 = load i64, ptr %.phi.trans.insert472, align 8, !tbaa !28
  br label %smart_str_append_ex.exit373

smart_str_append_ex.exit373:                      ; preds = %bb.dp, %bb.dq
  %i.rp = phi i64 [ %.1.i.i358, %bb.dp ], [ %.pre473, %bb.dq ]
  %i.rq = phi ptr [ %i.rf, %bb.dp ], [ %.pre471, %bb.dq ]
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 24
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 %i.rp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rs, ptr nonnull align 8 %i.rj, i64 %i.rl, i1 false)
  %i.rt = load ptr, ptr %2, align 8, !tbaa !102   ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 16
  store i64 %i.rm, ptr %i.ru, align 8, !tbaa !28
  br i1 %i.qo, label %bb.dr, label %bb.dv

bb.dr:                                            ; preds = %smart_str_append_ex.exit373
  %i.rv = load ptr, ptr %.0186, align 8, !tbaa !13
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 40
  %i.rx = add i64 %i.rm, 2                        ; 5 uses
  %i.ry = load i64, ptr %i.rn, align 8, !tbaa !103
  %.not12.i255 = icmp ult i64 %i.rx, %i.ry
  br i1 %.not12.i255, label %bb.dt, label %bb.ds, !prof !64

bb.ds:                                            ; preds = %bb.dr
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.rx) #12
  %.pre477 = load ptr, ptr %2, align 8, !tbaa !102 ; 2 uses
  %.phi.trans.insert478 = getelementptr inbounds nuw i8, ptr %.pre477, i64 16
  %.pre479 = load i64, ptr %.phi.trans.insert478, align 8, !tbaa !28
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.rz = phi i64 [ %.pre479, %bb.ds ], [ %i.rm, %bb.dr ]
  %i.sa = phi ptr [ %.pre477, %bb.ds ], [ %i.rt, %bb.dr ]
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 24
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.rz
  store i16 14906, ptr %i.sc, align 1
  %i.sd = load ptr, ptr %2, align 8, !tbaa !102   ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 16
  store i64 %i.rx, ptr %i.se, align 8, !tbaa !28
  %i.sf = load ptr, ptr %i.rw, align 8, !tbaa !13 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 24
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sf, i64 16
  %i.si = load i64, ptr %i.sh, align 8, !tbaa !28 ; 2 uses
  %i.sj = add i64 %i.si, %i.rx                    ; 3 uses
  %i.sk = load i64, ptr %i.rn, align 8, !tbaa !103
  %.not12.i.i375 = icmp ult i64 %i.sj, %i.sk
  br i1 %.not12.i.i375, label %.thread411, label %bb.du, !prof !64

bb.du:                                            ; preds = %bb.dt
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.sj) #12
  %.pre480 = load ptr, ptr %2, align 8, !tbaa !102 ; 2 uses
  %.phi.trans.insert481 = getelementptr inbounds nuw i8, ptr %.pre480, i64 16
  %.pre482 = load i64, ptr %.phi.trans.insert481, align 8, !tbaa !28
  br label %.thread411

bb.dv:                                            ; preds = %smart_str_append_ex.exit373
  %i.sl = add i64 %i.rm, 21                       ; 3 uses
  %i.sm = load i64, ptr %i.rn, align 8, !tbaa !103
  %.not12.i250 = icmp ult i64 %i.sl, %i.sm
  br i1 %.not12.i250, label %.thread408, label %bb.dw, !prof !64

bb.dw:                                            ; preds = %bb.dv
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.sl) #12
  %.pre474 = load ptr, ptr %2, align 8, !tbaa !102 ; 2 uses
  %.phi.trans.insert475 = getelementptr inbounds nuw i8, ptr %.pre474, i64 16
  %.pre476 = load i64, ptr %.phi.trans.insert475, align 8, !tbaa !28
  br label %.thread408

bb.dx:                                            ; preds = %bb.dl, %bb.dk
  %i.sn = phi i64 [ %i.qt, %bb.dk ], [ %.pre485, %bb.dl ]
  %i.so = phi ptr [ %i.qr, %bb.dk ], [ %.pre483, %bb.dl ]
  %.1.i262 = phi i64 [ %i.qu, %bb.dk ], [ %.0.i261, %bb.dl ]
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 24
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 %i.sn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.sq, ptr noundef nonnull align 1 dereferenceable(16) @.str.42, i64 16, i1 false)
  %i.sr = load ptr, ptr %2, align 8, !tbaa !102
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 16
  store i64 %.1.i262, ptr %i.ss, align 8, !tbaa !28
  %.not219 = icmp eq ptr %i.pf, null
  br i1 %.not219, label %zend_array_release.exit, label %bb.dy

.thread411:                                       ; preds = %bb.du, %bb.dt
  %i.st = phi i64 [ %.pre482, %bb.du ], [ %i.rx, %bb.dt ]
  %i.su = phi ptr [ %.pre480, %bb.du ], [ %i.sd, %bb.dt ]
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.st
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.sw, ptr nonnull align 8 %i.sg, i64 %i.si, i1 false)
  %i.sx = load ptr, ptr %2, align 8, !tbaa !102
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  store i64 %i.sj, ptr %i.sy, align 8, !tbaa !28
  %.not219412 = icmp eq ptr %i.pf, null
  br i1 %.not219412, label %zend_array_release.exit, label %.thread413

.thread408:                                       ; preds = %bb.dw, %bb.dv
  %i.sz = phi i64 [ %.pre476, %bb.dw ], [ %i.rm, %bb.dv ]
  %i.ta = phi ptr [ %.pre474, %bb.dw ], [ %i.rt, %bb.dv ]
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 24
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.sz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.tc, ptr noundef nonnull align 1 dereferenceable(21) @.str.44, i64 21, i1 false)
  %i.td = load ptr, ptr %2, align 8, !tbaa !102
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  store i64 %i.sl, ptr %i.te, align 8, !tbaa !28
  %.not219409 = icmp eq ptr %i.pf, null
  br i1 %.not219409, label %zend_array_release.exit, label %.thread410

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.qo, label %.thread413, label %.thread410

.thread410:                                       ; preds = %.thread408, %bb.dy
  %i.tf = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.pf, i64 24
  %i.th = load i32, ptr %i.tg, align 8, !tbaa !31 ; 2 uses
  %.not220444 = icmp eq i32 %i.th, 0
  br i1 %.not220444, label %.thread413, label %.lr.ph

.lr.ph:                                           ; preds = %.thread410
  %i.ti = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !13
  %i.tk = add nsw i32 %1, 2                       ; 2 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.a, i64 31 ; 5 uses
  %i.tn = ptrtoint ptr %i.tm to i64
  br label %bb.dz

bb.dz:                                            ; preds = %.lr.ph, %.thread418
  %.0178448 = phi i32 [ %i.th, %.lr.ph ], [ %i.aac, %.thread418 ]
  %.0179447 = phi ptr [ %i.tj, %.lr.ph ], [ %.1180, %.thread418 ] ; 8 uses
  %.0181446 = phi i32 [ 0, %.lr.ph ], [ %.1182, %.thread418 ] ; 4 uses
  %.0183445 = phi ptr [ null, %.lr.ph ], [ %.1184, %.thread418 ]
end_hunk_0
begin_hunk_1_@php_var_export_ex:bb.a
bb.fe:                                            ; preds = %zend_print_long_to_buf.exit.i395
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 16
  %i.yp = load i64, ptr %i.yo, align 8, !tbaa !28 ; 2 uses
  %i.yq = add i64 %i.yp, %i.ym                    ; 3 uses
  %i.yr = load i64, ptr %i.tl, align 8, !tbaa !103
  %.not12.i.i.i397 = icmp ult i64 %i.yq, %i.yr
  br i1 %.not12.i.i.i397, label %.thread, label %bb.ff, !prof !64

bb.ff:                                            ; preds = %bb.fe, %zend_print_long_to_buf.exit.i395
  %.0.i.i.i398 = phi i64 [ %i.ym, %zend_print_long_to_buf.exit.i395 ], [ %i.yq, %bb.fe ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i.i.i398) #12, !inline_history !150
  %.pre495 = load ptr, ptr %2, align 8, !tbaa !102 ; 2 uses
  %.phi.trans.insert496 = getelementptr inbounds nuw i8, ptr %.pre495, i64 16
  %.pre497 = load i64, ptr %.phi.trans.insert496, align 8, !tbaa !28
  br label %.thread

.thread:                                          ; preds = %bb.fe, %bb.ff
  %i.ys = phi i64 [ %i.yp, %bb.fe ], [ %.pre497, %bb.ff ]
  %i.yt = phi ptr [ %i.yn, %bb.fe ], [ %.pre495, %bb.ff ]
  %.1.i.i.i400 = phi i64 [ %i.yq, %bb.fe ], [ %.0.i.i.i398, %bb.ff ]
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 24
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 %i.ys
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yv, ptr nonnull align 1 %.0.i24.i, i64 %i.ym, i1 false)
  %i.yw = load ptr, ptr %2, align 8, !tbaa !102   ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 16
  store i64 %.1.i.i.i400, ptr %i.yx, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.fh

.thread687:                                       ; preds = %smart_str_appendc_ex.exit39.i, %bb.ey
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  br label %bb.fh

bb.fg:                                            ; preds = %bb.ey
  call void @_efree(ptr noundef nonnull %i.wo) #12, !inline_history !150
  %.pr.pre = load ptr, ptr %2, align 8, !tbaa !102 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %.not.i18.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i18.i, label %bb.fi, label %bb.fh, !prof !156

bb.fh:                                            ; preds = %.thread687, %.thread, %bb.fg
  %i.yy = phi ptr [ %i.yw, %.thread ], [ %.pr.pre, %bb.fg ], [ %i.xp, %.thread687 ] ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 16
  %i.za = load i64, ptr %i.yz, align 8, !tbaa !28 ; 2 uses
  %i.zb = add i64 %i.za, 4                        ; 3 uses
  %i.zc = load i64, ptr %i.tl, align 8, !tbaa !103
  %.not12.i.i391 = icmp ult i64 %i.zb, %i.zc
  br i1 %.not12.i.i391, label %smart_str_alloc.exit.i393, label %bb.fi, !prof !64

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  %.0.i.i392 = phi i64 [ 4, %bb.fg ], [ %i.zb, %bb.fh ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i.i392) #12, !inline_history !150
  %.pre498 = load ptr, ptr %2, align 8, !tbaa !102 ; 2 uses
  %.phi.trans.insert499 = getelementptr inbounds nuw i8, ptr %.pre498, i64 16
  %.pre500 = load i64, ptr %.phi.trans.insert499, align 8, !tbaa !28
  br label %smart_str_alloc.exit.i393

smart_str_alloc.exit.i393:                        ; preds = %bb.fi, %bb.fh
  %i.zd = phi i64 [ %i.za, %bb.fh ], [ %.pre500, %bb.fi ]
  %i.ze = phi ptr [ %i.yy, %bb.fh ], [ %.pre498, %bb.fi ]
  %.1.i.i394 = phi i64 [ %i.zb, %bb.fh ], [ %.0.i.i392, %bb.fi ]
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 24
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 %i.zd
  store i32 540949792, ptr %i.zg, align 1
  %i.zh = load ptr, ptr %2, align 8, !tbaa !102
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zh, i64 16
  store i64 %.1.i.i394, ptr %i.zi, align 8, !tbaa !28
  %i.zj = call i32 @php_var_export_ex(ptr noundef %.1205, i32 noundef %i.tk, ptr noundef nonnull %2), !inline_history !150 ; 0 uses
  %i.zk = load ptr, ptr %2, align 8, !tbaa !102   ; 3 uses
  %.not.i.i40.i = icmp eq ptr %i.zk, null
  br i1 %.not.i.i40.i, label %bb.fk, label %bb.fj, !prof !36

bb.fj:                                            ; preds = %smart_str_alloc.exit.i393
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 16
  %i.zm = load i64, ptr %i.zl, align 8, !tbaa !28
  %i.zn = add i64 %i.zm, 1                        ; 3 uses
  %i.zo = load i64, ptr %i.tl, align 8, !tbaa !103
  %.not12.i.i41.i = icmp ult i64 %i.zn, %i.zo
  br i1 %.not12.i.i41.i, label %bb.fl, label %bb.fk, !prof !64

bb.fk:                                            ; preds = %bb.fj, %smart_str_alloc.exit.i393
  %.0.i.i42.i = phi i64 [ 1, %smart_str_alloc.exit.i393 ], [ %i.zn, %bb.fj ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i.i42.i) #12, !inline_history !150
  %.pre501 = load ptr, ptr %2, align 8, !tbaa !102
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fj, %bb.fk
  %i.zp = phi ptr [ %i.zk, %bb.fj ], [ %.pre501, %bb.fk ]
  %.1.i.i43.i = phi i64 [ %i.zn, %bb.fj ], [ %.0.i.i42.i, %bb.fk ] ; 3 uses
  %i.zq = getelementptr i8, ptr %i.zp, i64 23
  %i.zr = getelementptr i8, ptr %i.zq, i64 %.1.i.i43.i
  store i8 44, ptr %i.zr, align 1, !tbaa !13
  %i.zs = load ptr, ptr %2, align 8, !tbaa !102   ; 2 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %i.zs, i64 16
  store i64 %.1.i.i43.i, ptr %i.zt, align 8, !tbaa !28
  %i.zu = add i64 %.1.i.i43.i, 1                  ; 4 uses
  %i.zv = load i64, ptr %i.tl, align 8, !tbaa !103
  %.not12.i.i46.i = icmp ult i64 %i.zu, %i.zv
  br i1 %.not12.i.i46.i, label %php_object_element_export.exit, label %bb.fm, !prof !64

bb.fm:                                            ; preds = %bb.fl
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %i.zu) #12, !inline_history !150
  %.pre502 = load ptr, ptr %2, align 8, !tbaa !102
  br label %php_object_element_export.exit

php_object_element_export.exit:                   ; preds = %bb.fl, %bb.fm
  %i.zw = phi ptr [ %i.zs, %bb.fl ], [ %.pre502, %bb.fm ]
  %i.zx = getelementptr i8, ptr %i.zw, i64 23
  %i.zy = getelementptr i8, ptr %i.zx, i64 %i.zu
  store i8 10, ptr %i.zy, align 1, !tbaa !13
  %i.zz = load ptr, ptr %2, align 8, !tbaa !102
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zz, i64 16
  store i64 %i.zu, ptr %i.aaa, align 8, !tbaa !28
  %i.aab = icmp eq ptr %.1205, %3
  br i1 %i.aab, label %bb.fn, label %.thread418.sink.split

bb.fn:                                            ; preds = %php_object_element_export.exit
  call void @zval_ptr_dtor(ptr noundef %.1205) #12
  br label %.thread418.sink.split

.thread418.sink.split:                            ; preds = %bb.eg, %php_object_element_export.exit, %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %.thread418

.thread418:                                       ; preds = %.thread418.sink.split, %bb.ed
  %i.aac = add i32 %.0178448, -1                  ; 2 uses
  %.not220 = icmp eq i32 %i.aac, 0
  br i1 %.not220, label %.thread413, label %bb.dz, !llvm.loop !151

.thread413:                                       ; preds = %.thread418, %.thread410, %.thread411, %bb.dy
  %i.aad = getelementptr inbounds nuw i8, ptr %i.pf, i64 4
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !13
  %i.aaf = and i32 %i.aae, 64
  %.not.i231 = icmp eq i32 %i.aaf, 0
  br i1 %.not.i231, label %bb.fo, label %zend_array_release.exit

bb.fo:                                            ; preds = %.thread413
  %i.aag = load i32, ptr %i.pf, align 4, !tbaa !29 ; 2 uses
  %i.aah = icmp ne i32 %i.aag, 0
  call void @llvm.assume(i1 %i.aah)
  %i.aai = add i32 %i.aag, -1                     ; 2 uses
  store i32 %i.aai, ptr %i.pf, align 4, !tbaa !29
  %i.aaj = icmp eq i32 %i.aai, 0
  br i1 %i.aaj, label %bb.fp, label %zend_array_release.exit

bb.fp:                                            ; preds = %bb.fo
  call void @zend_array_destroy(ptr noundef nonnull %i.pf) #12
  br label %zend_array_release.exit

zend_array_release.exit:                          ; preds = %bb.fp, %bb.fo, %.thread413, %.thread411, %.thread408, %bb.dx
  br i1 %.not, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %zend_array_release.exit
  %i.aak = load i32, ptr %i.ol, align 4, !tbaa !57
  %i.aal = and i32 %i.aak, -65
  store i32 %i.aal, ptr %i.ol, align 4, !tbaa !57
  br label %bb.fs

bb.fr:                                            ; preds = %zend_array_release.exit
  %i.aam = getelementptr inbounds nuw i8, ptr %i.ok, i64 4 ; 2 uses
  %i.aan = load i32, ptr %i.aam, align 4, !tbaa !13
  %i.aao = and i32 %i.aan, -33
  store i32 %i.aao, ptr %i.aam, align 4, !tbaa !13
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.aap = icmp slt i32 %1, 2
  %or.cond = select i1 %i.aap, i1 true, i1 %i.qo
  br i1 %or.cond, label %4, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #12
  %i.aaq = add nsw i32 %1, -1
  %i.aar = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %i.o, i64 noundef 0, ptr noundef nonnull @.str, i32 noundef %i.aaq, i32 noundef 32) #12 ; 3 uses
  %i.aas = load ptr, ptr %i.o, align 8, !tbaa !97
  %i.aat = load ptr, ptr %2, align 8, !tbaa !102  ; 3 uses
  %.not.i244 = icmp eq ptr %i.aat, null
  br i1 %.not.i244, label %bb.fv, label %bb.fu, !prof !36

bb.fu:                                            ; preds = %bb.ft
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aat, i64 16
  %i.aav = load i64, ptr %i.aau, align 8, !tbaa !28 ; 2 uses
  %i.aaw = add i64 %i.aav, %i.aar                 ; 3 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aay = load i64, ptr %i.aax, align 8, !tbaa !103
  %.not12.i245 = icmp ult i64 %i.aaw, %i.aay
  br i1 %.not12.i245, label %smart_str_alloc.exit248, label %bb.fv, !prof !64

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %.0.i246 = phi i64 [ %i.aar, %bb.ft ], [ %i.aaw, %bb.fu ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i246) #12
  %.pre503 = load ptr, ptr %2, align 8, !tbaa !102 ; 2 uses
  %.phi.trans.insert504 = getelementptr inbounds nuw i8, ptr %.pre503, i64 16
  %.pre505 = load i64, ptr %.phi.trans.insert504, align 8, !tbaa !28
  br label %smart_str_alloc.exit248

4:                                                ; preds = %bb.fs
  %5 = load ptr, ptr @zend_standard_class_def, align 8, !tbaa !104
  %6 = icmp eq ptr %i.qk, %5
  br i1 %6, label %bb.fw, label %bb.fz

smart_str_alloc.exit248:                          ; preds = %bb.fv, %bb.fu
  %i.aaz = phi i64 [ %i.aav, %bb.fu ], [ %.pre505, %bb.fv ]
  %i.aba = phi ptr [ %i.aat, %bb.fu ], [ %.pre503, %bb.fv ]
  %.1.i247 = phi i64 [ %i.aaw, %bb.fu ], [ %.0.i246, %bb.fv ]
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 24
  %i.abc = getelementptr inbounds nuw i8, ptr %i.abb, i64 %i.aaz
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.abc, ptr align 1 %i.aas, i64 %i.aar, i1 false)
  %i.abd = load ptr, ptr %2, align 8, !tbaa !102
  %i.abe = getelementptr inbounds nuw i8, ptr %i.abd, i64 16
  store i64 %.1.i247, ptr %i.abe, align 8, !tbaa !28
  %i.abf = load ptr, ptr %i.o, align 8, !tbaa !97
  call void @_efree(ptr noundef %i.abf) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  %7 = load ptr, ptr @zend_standard_class_def, align 8, !tbaa !104
  %8 = icmp eq ptr %i.qk, %7
  br i1 %8, label %bb.fw, label %bb.ga

bb.fw:                                            ; preds = %smart_str_alloc.exit248, %4
  %i.abg = load ptr, ptr %2, align 8, !tbaa !102  ; 3 uses
  %.not.i.i360 = icmp eq ptr %i.abg, null
  br i1 %.not.i.i360, label %bb.fy, label %bb.fx, !prof !36

bb.fx:                                            ; preds = %bb.fw
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %i.abi = load i64, ptr %i.abh, align 8, !tbaa !28
  %i.abj = add i64 %i.abi, 1                      ; 3 uses
  %i.abk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !103
  %.not12.i.i361 = icmp ult i64 %i.abj, %i.abl
  br i1 %.not12.i.i361, label %smart_str_appendc_ex.exit364, label %bb.fy, !prof !64

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %.0.i.i362 = phi i64 [ 1, %bb.fw ], [ %i.abj, %bb.fx ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i.i362) #12
  %.pre509 = load ptr, ptr %2, align 8, !tbaa !102
  br label %smart_str_appendc_ex.exit364

smart_str_appendc_ex.exit364:                     ; preds = %bb.fx, %bb.fy
  %i.abm = phi ptr [ %i.abg, %bb.fx ], [ %.pre509, %bb.fy ]
  %.1.i.i363 = phi i64 [ %i.abj, %bb.fx ], [ %.0.i.i362, %bb.fy ] ; 2 uses
  %i.abn = getelementptr i8, ptr %i.abm, i64 23
  %i.abo = getelementptr i8, ptr %i.abn, i64 %.1.i.i363
  store i8 41, ptr %i.abo, align 1, !tbaa !13
  %i.abp = load ptr, ptr %2, align 8, !tbaa !102
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 16
  store i64 %.1.i.i363, ptr %i.abq, align 8, !tbaa !28
  br label %zend_string_free.exit

bb.fz:                                            ; preds = %4
  br i1 %i.qo, label %zend_string_free.exit, label %bb.ga

bb.ga:                                            ; preds = %smart_str_alloc.exit248, %bb.fz
  %i.abr = load ptr, ptr %2, align 8, !tbaa !102  ; 3 uses
  %.not.i239 = icmp eq ptr %i.abr, null
  br i1 %.not.i239, label %bb.gc, label %bb.gb, !prof !36

bb.gb:                                            ; preds = %bb.ga
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 16
  %i.abt = load i64, ptr %i.abs, align 8, !tbaa !28 ; 2 uses
  %i.abu = add i64 %i.abt, 2                      ; 3 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.abw = load i64, ptr %i.abv, align 8, !tbaa !103
  %.not12.i240 = icmp ult i64 %i.abu, %i.abw
  br i1 %.not12.i240, label %smart_str_alloc.exit243, label %bb.gc, !prof !64

bb.gc:                                            ; preds = %bb.gb, %bb.ga
  %.0.i241 = phi i64 [ 2, %bb.ga ], [ %i.abu, %bb.gb ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i241) #12
  %.pre506 = load ptr, ptr %2, align 8, !tbaa !102 ; 2 uses
  %.phi.trans.insert507 = getelementptr inbounds nuw i8, ptr %.pre506, i64 16
  %.pre508 = load i64, ptr %.phi.trans.insert507, align 8, !tbaa !28
  br label %smart_str_alloc.exit243

smart_str_alloc.exit243:                          ; preds = %bb.gb, %bb.gc
  %i.abx = phi i64 [ %i.abt, %bb.gb ], [ %.pre508, %bb.gc ]
  %i.aby = phi ptr [ %i.abr, %bb.gb ], [ %.pre506, %bb.gc ]
  %.1.i242 = phi i64 [ %i.abu, %bb.gb ], [ %.0.i241, %bb.gc ]
  %i.abz = getelementptr inbounds nuw i8, ptr %i.aby, i64 24
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 %i.abx
  store i16 10537, ptr %i.aca, align 1
  %i.acb = load ptr, ptr %2, align 8, !tbaa !102
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 16
  store i64 %.1.i242, ptr %i.acc, align 8, !tbaa !28
  br label %zend_string_free.exit

bb.gd:                                            ; preds = %bb.em, %bb.en, %bb.eo
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  br label %zend_string_free.exit

bb.ge:                                            ; preds = %bb.b
  %i.acd = load ptr, ptr %.0186, align 8, !tbaa !13
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  br label %bb.b

bb.gf:                                            ; preds = %bb.b
  %i.acf = load ptr, ptr %2, align 8, !tbaa !102  ; 3 uses
  %.not.i238 = icmp eq ptr %i.acf, null
  br i1 %.not.i238, label %bb.gh, label %bb.gg, !prof !36

bb.gg:                                            ; preds = %bb.gf
  %i.acg = getelementptr inbounds nuw i8, ptr %i.acf, i64 16
  %i.ach = load i64, ptr %i.acg, align 8, !tbaa !28 ; 2 uses
  %i.aci = add i64 %i.ach, 4                      ; 3 uses
  %i.acj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ack = load i64, ptr %i.acj, align 8, !tbaa !103
  %.not12.i = icmp ult i64 %i.aci, %i.ack
  br i1 %.not12.i, label %smart_str_alloc.exit, label %bb.gh, !prof !64

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %.0.i = phi i64 [ 4, %bb.gf ], [ %i.aci, %bb.gg ] ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %2, i64 noundef %.0.i) #12
  %.pre568 = load ptr, ptr %2, align 8, !tbaa !102 ; 2 uses
  %.phi.trans.insert569 = getelementptr inbounds nuw i8, ptr %.pre568, i64 16
  %.pre570 = load i64, ptr %.phi.trans.insert569, align 8, !tbaa !28
  br label %smart_str_alloc.exit

smart_str_alloc.exit:                             ; preds = %bb.gg, %bb.gh
  %i.acl = phi i64 [ %i.ach, %bb.gg ], [ %.pre570, %bb.gh ]
  %i.acm = phi ptr [ %i.acf, %bb.gg ], [ %.pre568, %bb.gh ]
  %.1.i = phi i64 [ %i.aci, %bb.gg ], [ %.0.i, %bb.gh ]
  %i.acn = getelementptr inbounds nuw i8, ptr %i.acm, i64 24
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 %i.acl
  store i32 1280070990, ptr %i.aco, align 1
  %i.acp = load ptr, ptr %2, align 8, !tbaa !102
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acp, i64 16
  store i64 %.1.i, ptr %i.acq, align 8, !tbaa !28
  br label %zend_string_free.exit

zend_string_free.exit:                            ; preds = %smart_str_appendc_ex.exit364, %smart_str_alloc.exit243, %bb.fz, %smart_str_alloc.exit308, %smart_str_alloc.exit303, %smart_str_alloc.exit298, %smart_str_alloc.exit313, %smart_str_append_long_ex.exit318, %bb.x, %smart_str_appendc_ex.exit349, %smart_str_alloc.exit, %zend_string_free.exit237, %bb.aj, %bb.ak, %bb.gd, %.thread428.a, %bb.ck, %bb.cj, %smart_str_alloc.exit293
  %.14 = phi i32 [ 0, %.thread428.a ], [ -1, %bb.gd ], [ 0, %smart_str_alloc.exit293 ], [ -1, %bb.cj ], [ -1, %bb.ck ], [ 0, %smart_str_alloc.exit308 ], [ 0, %bb.ak ], [ 0, %bb.aj ], [ 0, %zend_string_free.exit237 ], [ 0, %smart_str_alloc.exit ], [ 0, %smart_str_appendc_ex.exit349 ], [ 0, %bb.x ], [ 0, %smart_str_append_long_ex.exit318 ], [ 0, %smart_str_alloc.exit313 ], [ 0, %smart_str_alloc.exit298 ], [ 0, %smart_str_alloc.exit303 ], [ 0, %bb.fz ], [ 0, %smart_str_alloc.exit243 ], [ 0, %smart_str_appendc_ex.exit364 ]
  ret i32 %.14
}

declare void @smart_str_append_double(ptr noundef, double noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @php_addcslashes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @php_str_to_str(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @zend_error(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @zend_spprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @_efree(ptr noundef) local_unnamed_addr #2

declare ptr @zend_read_property_ex(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @zval_ptr_dtor(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @php_var_export(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.smart_str, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.a = call i32 @php_var_export_ex(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2)
  %i.b = load ptr, ptr %2, align 8, !tbaa !102    ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %smart_str_0.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e
  store i8 0, ptr %i.f, align 1, !tbaa !13
  %.pre3.pre = load ptr, ptr %2, align 8, !tbaa !102
  br label %smart_str_0.exit

smart_str_0.exit:                                 ; preds = %bb.a, %bb.b
  %.pre3 = phi ptr [ null, %bb.a ], [ %.pre3.pre, %bb.b ] ; 3 uses
  %i.g = icmp eq i32 %i.a, 0
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %smart_str_0.exit
  %i.h = getelementptr inbounds nuw i8, ptr %.pre3, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %.pre3, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !28
  %i.k = call i64 @php_output_write(ptr noundef nonnull %i.h, i64 noundef %i.j) #12 ; 0 uses
  %.pre = load ptr, ptr %2, align 8, !tbaa !102
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %smart_str_0.exit
  %i.l = phi ptr [ %.pre, %bb.c ], [ %.pre3, %smart_str_0.exit ] ; 5 uses
  %.not.i2 = icmp eq ptr %i.l, null
  br i1 %.not.i2, label %smart_str_free_ex.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4, !tbaa !13
  %i.o = and i32 %i.n, 64
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.f, label %smart_str_free_ex.exit

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.l, align 4, !tbaa !29   ; 2 uses
  %i.q = icmp ne i32 %i.p, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = add i32 %i.p, -1                         ; 2 uses
  store i32 %i.r, ptr %i.l, align 4, !tbaa !29
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %smart_str_free_ex.exit

bb.g:                                             ; preds = %bb.f
  call void @_efree(ptr noundef nonnull %i.l) #12
  br label %smart_str_free_ex.exit

smart_str_free_ex.exit:                           ; preds = %bb.e, %bb.f, %bb.g, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define hidden void @zif_var_export(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %2 = alloca %struct.smart_str, align 8          ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !13   ; 2 uses
  %i.d = add i32 %i.c, -3
  %or.cond = icmp ult i32 %i.d, -2
  br i1 %or.cond, label %.thread80, label %bb.b, !prof !110

.thread80:                                        ; preds = %bb.a
  tail call void @zend_wrong_parameters_count_error(i32 noundef 1, i32 noundef 2) #12
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = icmp eq i32 %i.c, 1
  br i1 %i.f, label %.critedge, label %bb.c, !prof !36

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load i8, ptr %i.g, align 8, !tbaa !13
  switch i8 %i.h, label %zend_parse_arg_bool_ex.exit [
    i8 3, label %.split91.thread
    i8 2, label %.split91.thread.fold.split
  ], !prof !111

.split91.thread.fold.split:                       ; preds = %bb.c
  br label %.split91.thread

.split91.thread:                                  ; preds = %bb.c, %.split91.thread.fold.split
  %storemerge.i = phi i8 [ 1, %bb.c ], [ 0, %.split91.thread.fold.split ]
end_hunk_1
