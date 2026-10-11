Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_write_set_format_pax?download=true
inline.NumInlined: 38
inline.NumDeleted: 8
begin_hunk_0_@archive_write_pax_header:bb.a
  %or.cond.i620 = icmp sgt i8 %i.hd, 0
  %i.he = getelementptr inbounds nuw i8, ptr %.0.i619, i64 1
  br i1 %or.cond.i620, label %.preheader.i618, label %has_non_ASCII.exit624, !llvm.loop !56

has_non_ASCII.exit624:                            ; preds = %.preheader.i618
  %.not.i622.not = icmp eq i8 %i.hd, 0
  br i1 %.not.i622.not, label %bb.cg, label %bb.bz

bb.bz:                                            ; preds = %has_non_ASCII.exit624, %bb.by
  %i.hf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ha) #17
  call fastcc void @add_pax_attr_binary(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.ha, i64 noundef %i.hf)
  %i.hg = load i64, ptr %i.i, align 8, !tbaa !39
  %i.hh = icmp ugt i64 %i.hg, 100
  %i.hi = load ptr, ptr %i.a, align 8, !tbaa !37
  %.not550 = icmp eq ptr %i.hi, null              ; 2 uses
  br i1 %i.hh, label %bb.ca, label %bb.cd

bb.ca:                                            ; preds = %bb.bz
  br i1 %.not550, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @archive_entry_set_hardlink(ptr noundef nonnull %i.df, ptr noundef nonnull @.str.29) #15
  br label %bb.cg

bb.cc:                                            ; preds = %bb.ca
  call void @archive_entry_set_symlink(ptr noundef nonnull %i.df, ptr noundef nonnull @.str.30) #15
  br label %bb.cg

bb.cd:                                            ; preds = %bb.bz
  %i.hj = load ptr, ptr %i.c, align 8, !tbaa !37  ; 2 uses
  br i1 %.not550, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call void @archive_entry_set_hardlink(ptr noundef nonnull %i.df, ptr noundef %i.hj) #15
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  call void @archive_entry_set_symlink(ptr noundef nonnull %i.df, ptr noundef %i.hj) #15
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cc, %bb.cb, %bb.cf, %bb.ce, %bb.bx, %has_non_ASCII.exit624
  %.1471 = phi i32 [ %.0470, %bb.bx ], [ %.0470, %has_non_ASCII.exit624 ], [ 1, %bb.ce ], [ 1, %bb.cf ], [ 1, %bb.cb ], [ 1, %bb.cc ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.hk = call ptr @archive_entry_pathname(ptr noundef nonnull %i.df) #15
  %i.hl = call ptr @archive_entry_pathname(ptr noundef nonnull %i.df) #15
  %i.hm = icmp eq ptr %i.hl, null
  br i1 %i.hm, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hn = call ptr @archive_entry_pathname(ptr noundef nonnull %i.df) #15
  %i.ho = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hn) #17
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cg, %bb.ch
  %i.hp = phi i64 [ %i.ho, %bb.ch ], [ 0, %bb.cg ]
  %i.hq = call ptr @archive_strncat(ptr noundef nonnull %2, ptr noundef %i.hk, i64 noundef %i.hp) #15 ; 0 uses
  %i.hr = call i64 @archive_entry_size(ptr noundef nonnull %i.df) #15
  %i.hs = icmp sgt i64 %i.hr, 8589934591
  %spec.select593 = select i1 %i.hs, i32 1, i32 %.1471
  %i.ht = call i64 @archive_entry_gid(ptr noundef nonnull %i.df) #15
  %i.hu = and i64 %i.ht, 4294705152
  %.not551 = icmp eq i64 %i.hu, 0
  br i1 %.not551, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.hv = call i64 @archive_entry_gid(ptr noundef nonnull %i.df) #15
  call fastcc void @add_pax_attr_int(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.31, i64 noundef %i.hv)
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.3473 = phi i32 [ 1, %bb.cj ], [ %spec.select593, %bb.ci ] ; 2 uses
  %i.hw = load ptr, ptr %i.e, align 8, !tbaa !37  ; 4 uses
  %.not552 = icmp eq ptr %i.hw, null
  br i1 %.not552, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hx = load i64, ptr %i.k, align 8, !tbaa !39
  %i.hy = icmp ugt i64 %i.hx, 31
  br i1 %i.hy, label %bb.cm, label %.preheader.i625

.preheader.i625:                                  ; preds = %bb.cl, %.preheader.i625
  %.0.i626 = phi ptr [ %i.ia, %.preheader.i625 ], [ %i.hw, %bb.cl ] ; 2 uses
  %i.hz = load i8, ptr %.0.i626, align 1, !tbaa !34 ; 2 uses
  %or.cond.i627 = icmp sgt i8 %i.hz, 0
  %i.ia = getelementptr inbounds nuw i8, ptr %.0.i626, i64 1
  br i1 %or.cond.i627, label %.preheader.i625, label %has_non_ASCII.exit631, !llvm.loop !56

has_non_ASCII.exit631:                            ; preds = %.preheader.i625
  %.not.i629.not = icmp eq i8 %i.hz, 0
  br i1 %.not.i629.not, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %has_non_ASCII.exit631, %bb.cl
  %i.ib = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hw) #17
  call fastcc void @add_pax_attr_binary(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.hw, i64 noundef %i.ib)
  br label %bb.cn

bb.cn:                                            ; preds = %has_non_ASCII.exit631, %bb.cm, %bb.ck
  %.4474 = phi i32 [ 1, %bb.cm ], [ %.3473, %has_non_ASCII.exit631 ], [ %.3473, %bb.ck ]
  %i.ic = call i64 @archive_entry_uid(ptr noundef nonnull %i.df) #15
  %i.id = and i64 %i.ic, 4294705152
  %.not554 = icmp eq i64 %i.id, 0
  br i1 %.not554, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ie = call i64 @archive_entry_uid(ptr noundef nonnull %i.df) #15
  call fastcc void @add_pax_attr_int(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.33, i64 noundef %i.ie)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.5475 = phi i32 [ 1, %bb.co ], [ %.4474, %bb.cn ] ; 2 uses
  %i.if = load ptr, ptr %i.d, align 8, !tbaa !37  ; 4 uses
  %.not555 = icmp eq ptr %i.if, null
  br i1 %.not555, label %bb.cs, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ig = load i64, ptr %i.j, align 8, !tbaa !39
  %i.ih = icmp ugt i64 %i.ig, 31
  br i1 %i.ih, label %bb.cr, label %.preheader.i632

.preheader.i632:                                  ; preds = %bb.cq, %.preheader.i632
  %.0.i633 = phi ptr [ %i.ij, %.preheader.i632 ], [ %i.if, %bb.cq ] ; 2 uses
  %i.ii = load i8, ptr %.0.i633, align 1, !tbaa !34 ; 2 uses
  %or.cond.i634 = icmp sgt i8 %i.ii, 0
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.i633, i64 1
  br i1 %or.cond.i634, label %.preheader.i632, label %has_non_ASCII.exit638, !llvm.loop !56

has_non_ASCII.exit638:                            ; preds = %.preheader.i632
  %.not.i636.not = icmp eq i8 %i.ii, 0
  br i1 %.not.i636.not, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %has_non_ASCII.exit638, %bb.cq
  %i.ik = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.if) #17
  call fastcc void @add_pax_attr_binary(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.34, ptr noundef nonnull %i.if, i64 noundef %i.ik)
  br label %bb.cs

bb.cs:                                            ; preds = %has_non_ASCII.exit638, %bb.cr, %bb.cp
  %.6476 = phi i32 [ 1, %bb.cr ], [ %.5475, %has_non_ASCII.exit638 ], [ %.5475, %bb.cp ] ; 2 uses
  %i.il = call i32 @archive_entry_filetype(ptr noundef nonnull %i.df) #15
  %i.im = icmp eq i32 %i.il, 24576
  br i1 %i.im, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.in = call i32 @archive_entry_filetype(ptr noundef nonnull %i.df) #15
  %i.io = icmp eq i32 %i.in, 8192
  br i1 %i.io, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.ip = call i64 @archive_entry_rdevmajor(ptr noundef nonnull %i.df) #15 ; 2 uses
  %i.iq = trunc i64 %i.ip to i32
  %i.ir = call i64 @archive_entry_rdevminor(ptr noundef nonnull %i.df) #15 ; 2 uses
  %i.is = trunc i64 %i.ir to i32
  %i.it = icmp sgt i32 %i.iq, 262143
  br i1 %i.it, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.iu = and i64 %i.ip, 2147483647
  call fastcc void @add_pax_attr_int(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.35, i64 noundef %i.iu)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.7477 = phi i32 [ 1, %bb.cv ], [ %.6476, %bb.cu ]
  %i.iv = icmp sgt i32 %i.is, 262143
  br i1 %i.iv, label %.thread666, label %bb.cx

.thread666:                                       ; preds = %bb.cw
  %i.iw = and i64 %i.ir, 2147483647
  call fastcc void @add_pax_attr_int(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.36, i64 noundef %i.iw)
  br label %.thread670

bb.cx:                                            ; preds = %bb.cw, %bb.ct
  %.9479 = phi i32 [ %.6476, %bb.ct ], [ %.7477, %bb.cw ]
  %.not557 = icmp eq i32 %.9479, 0
  br i1 %.not557, label %bb.cy, label %.thread670

bb.cy:                                            ; preds = %bb.cx
  %i.ix = call i64 @archive_entry_mtime(ptr noundef nonnull %i.df) #15
  %i.iy = icmp slt i64 %i.ix, 0
  br i1 %i.iy, label %.thread670, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.iz = call i64 @archive_entry_mtime(ptr noundef nonnull %i.df) #15
  %i.ja = icmp sgt i64 %i.iz, 8589934590
  br i1 %i.ja, label %.thread670, label %bb.da

.thread670:                                       ; preds = %bb.cx, %.thread666, %bb.cz, %bb.cy
  %i.jb = call ptr @archive_entry_fflags_text(ptr noundef nonnull %i.df) #15 ; 0 uses
  br label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.jc = call ptr @archive_entry_fflags_text(ptr noundef nonnull %i.df) #15 ; 2 uses
  %.not691 = icmp eq ptr %i.jc, null
  br i1 %.not691, label %select.unfold, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !34
  %.not558 = icmp eq i8 %i.jd, 0
  br i1 %.not558, label %select.unfold, label %bb.dc

select.unfold:                                    ; preds = %bb.db, %bb.da
  %i.je = call i32 @archive_entry_xattr_count(ptr noundef %1) #15
  %i.jf = icmp slt i32 %i.je, 1                   ; 2 uses
  %not. = xor i1 %i.jf, true
  %spec.select592 = zext i1 %not. to i32
  br label %bb.dc

bb.dc:                                            ; preds = %.thread670, %bb.db, %select.unfold
  %i.jg = phi i1 [ %i.jf, %select.unfold ], [ false, %bb.db ], [ false, %.thread670 ]
  %.12482 = phi i32 [ %spec.select592, %select.unfold ], [ 1, %bb.db ], [ 1, %.thread670 ]
  %i.jh = icmp sgt i32 %.1460, 0                  ; 2 uses
  %or.cond8 = select i1 %i.jg, i1 %i.jh, i1 false
  %spec.store.select18 = select i1 %or.cond8, i32 1, i32 %.12482 ; 2 uses
  %i.ji = call i32 @archive_entry_acl_types(ptr noundef %1) #15 ; 4 uses
  %i.jj = icmp eq i32 %spec.store.select18, 0
  %4 = icmp ne i32 %i.ji, 0
  %or.cond10 = select i1 %i.jj, i1 %4, i1 false
  %5 = trunc nuw i32 %spec.store.select18 to i1
  %.not560 = select i1 %or.cond10, i1 true, i1 %5
  br i1 %.not560, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.jk = call i32 @archive_entry_symlink_type(ptr noundef nonnull %i.df) #15
  %i.jl = icmp sgt i32 %i.jk, 0
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %i.jm = phi i1 [ true, %bb.dc ], [ %i.jl, %bb.dd ]
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !32
  %.not565.a = icmp eq i32 %i.jo, 196611
  br i1 %.not565.a, label %bb.do, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.jp = call i64 @archive_entry_ctime(ptr noundef nonnull %i.df) #15
  %.not566.a = icmp eq i64 %i.jp, 0
  br i1 %.not566.a, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.jq = call i64 @archive_entry_ctime_nsec(ptr noundef nonnull %i.df) #15
  %.not567.a = icmp eq i64 %i.jq, 0
  br i1 %.not567.a, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.jr = call i64 @archive_entry_ctime(ptr noundef nonnull %i.df) #15
  %i.js = call i64 @archive_entry_ctime_nsec(ptr noundef nonnull %i.df) #15
  call fastcc void @add_pax_attr_time(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.37, i64 noundef %i.jr, i64 noundef %i.js)
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %i.jt = call i64 @archive_entry_atime(ptr noundef nonnull %i.df) #15
  %.not568.a = icmp eq i64 %i.jt, 0
  br i1 %.not568.a, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.ju = call i64 @archive_entry_atime_nsec(ptr noundef nonnull %i.df) #15
  %.not569.a = icmp eq i64 %i.ju, 0
  br i1 %.not569.a, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %i.jv = call i64 @archive_entry_atime(ptr noundef nonnull %i.df) #15
  %i.jw = call i64 @archive_entry_atime_nsec(ptr noundef nonnull %i.df) #15
  call fastcc void @add_pax_attr_time(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.38, i64 noundef %i.jv, i64 noundef %i.jw)
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.jx = call i32 @archive_entry_birthtime_is_set(ptr noundef nonnull %i.df) #15
  %.not570.a = icmp eq i32 %i.jx, 0
  br i1 %.not570.a, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.jy = call i64 @archive_entry_birthtime(ptr noundef nonnull %i.df) #15
  %i.jz = call i64 @archive_entry_mtime(ptr noundef nonnull %i.df) #15
  %i.ka = icmp slt i64 %i.jy, %i.jz
  br i1 %i.ka, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.kb = call i64 @archive_entry_birthtime(ptr noundef nonnull %i.df) #15
  %i.kc = call i64 @archive_entry_birthtime_nsec(ptr noundef nonnull %i.df) #15
  call fastcc void @add_pax_attr_time(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.39, i64 noundef %i.kb, i64 noundef %i.kc)
  br label %bb.do

bb.do:                                            ; preds = %bb.dl, %bb.dm, %bb.dn, %bb.de
  %i.kd = load i32, ptr %i.jn, align 8, !tbaa !32
  %i.ke = icmp ne i32 %i.kd, 196611
  %or.cond12 = or i1 %i.jm, %i.ke
  br i1 %or.cond12, label %bb.dp, label %bb.ew

bb.dp:                                            ; preds = %bb.do
  %i.kf = call i64 @archive_entry_mtime(ptr noundef nonnull %i.df) #15
  %i.kg = icmp slt i64 %i.kf, 0
  br i1 %i.kg, label %bb.ds, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.kh = call i64 @archive_entry_mtime(ptr noundef nonnull %i.df) #15
  %i.ki = icmp sgt i64 %i.kh, 8589934590
  br i1 %i.ki, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.kj = call i64 @archive_entry_mtime_nsec(ptr noundef nonnull %i.df) #15
  %.not571.a = icmp eq i64 %i.kj, 0
  br i1 %.not571.a, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq, %bb.dp
  %i.kk = call i64 @archive_entry_mtime(ptr noundef nonnull %i.df) #15
  %i.kl = call i64 @archive_entry_mtime_nsec(ptr noundef nonnull %i.df) #15
  call fastcc void @add_pax_attr_time(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.40, i64 noundef %i.kk, i64 noundef %i.kl)
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.km = call ptr @archive_entry_fflags_text(ptr noundef nonnull %i.df) #15 ; 4 uses
  %.not572.a = icmp eq ptr %i.km, null
  br i1 %.not572.a, label %bb.dw, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !34
  %.not573 = icmp eq i8 %i.kn, 0
  br i1 %.not573, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ko = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.km) #17
  call fastcc void @add_pax_attr_binary(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.41, ptr noundef nonnull %i.km, i64 noundef %i.ko)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du, %bb.dt
  %i.kp = and i32 %i.ji, 15360
  %.not574.a = icmp eq i32 %i.kp, 0
  br i1 %.not574.a, label %bb.dz, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.kq = call fastcc i32 @add_pax_acl(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.v, i32 noundef 25) ; 2 uses
  %i.kr = icmp eq i32 %i.kq, -30
  br i1 %i.kr, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  call void @archive_entry_free(ptr noundef nonnull %i.df) #15
  call void @archive_string_free(ptr noundef nonnull %2) #15
  br label %.thread645

bb.dz:                                            ; preds = %bb.dx, %bb.dw
  %.10 = phi i32 [ %i.kq, %bb.dx ], [ %.9662, %bb.dw ]
  %i.ks = and i32 %i.ji, 256
  %.not575.a = icmp eq i32 %i.ks, 0
  br i1 %.not575.a, label %bb.ec, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.kt = call fastcc i32 @add_pax_acl(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.v, i32 noundef 265) ; 2 uses
  %i.ku = icmp eq i32 %i.kt, -30
  br i1 %i.ku, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  call void @archive_entry_free(ptr noundef nonnull %i.df) #15
  call void @archive_string_free(ptr noundef nonnull %2) #15
  br label %.thread645

bb.ec:                                            ; preds = %bb.ea, %bb.dz
  %.11 = phi i32 [ %i.kt, %bb.ea ], [ %.10, %bb.dz ]
  %i.kv = and i32 %i.ji, 512
  %.not576.a = icmp eq i32 %i.kv, 0
  br i1 %.not576.a, label %bb.ef, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.kw = call fastcc i32 @add_pax_acl(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.v, i32 noundef 521) ; 2 uses
  %i.kx = icmp eq i32 %i.kw, -30
  br i1 %i.kx, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call void @archive_entry_free(ptr noundef nonnull %i.df) #15
  call void @archive_string_free(ptr noundef nonnull %2) #15
  br label %.thread645

bb.ef:                                            ; preds = %bb.ed, %bb.ec
  %.12 = phi i32 [ %i.kw, %bb.ed ], [ %.11, %bb.ec ] ; 3 uses
  br i1 %i.jh, label %bb.eg, label %bb.eq

bb.eg:                                            ; preds = %bb.ef
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #15
  call fastcc void @add_pax_attr_int(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.42, i64 noundef 1)
  call fastcc void @add_pax_attr_int(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.43, i64 noundef 0)
  %i.ky = load ptr, ptr %i.b, align 8, !tbaa !37  ; 2 uses
  %i.kz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ky) #17
  call fastcc void @add_pax_attr_binary(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.ky, i64 noundef %i.kz)
  %i.la = call i64 @archive_entry_size(ptr noundef nonnull %i.df) #15
  call fastcc void @add_pax_attr_int(ptr noundef nonnull %i.dh, ptr noundef nonnull @.str.45, i64 noundef %i.la)
  %i.lb = load ptr, ptr %2, align 8, !tbaa !40
  %i.lc = call fastcc ptr @build_gnu_sparse_name(ptr noundef %i.p, ptr noundef %i.lb) ; 0 uses
  call void @archive_entry_set_pathname(ptr noundef nonnull %i.df, ptr noundef nonnull %i.p) #15
  call void (ptr, ptr, ...) @archive_string_sprintf(ptr noundef nonnull %i.dj, ptr noundef nonnull @.str.46, i32 noundef %.1460) #15
  %i.ld = call i32 @archive_entry_sparse_next(ptr noundef nonnull %i.df, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t) #15
  %.not578705 = icmp eq i32 %i.ld, 0
  br i1 %.not578705, label %.lr.ph708, label %._crit_edge709

.lr.ph708:                                        ; preds = %bb.eg, %sparse_list_add.exit
  %.0454706 = phi i64 [ %i.lh, %sparse_list_add.exit ], [ 0, %bb.eg ]
  %i.le = load i64, ptr %i.s, align 8, !tbaa !39
  %i.lf = load i64, ptr %i.t, align 8, !tbaa !39
  call void (ptr, ptr, ...) @archive_string_sprintf(ptr noundef nonnull %i.dj, ptr noundef nonnull @.str.47, i64 noundef %i.le, i64 noundef %i.lf) #15
  %i.lg = load i64, ptr %i.t, align 8, !tbaa !39  ; 2 uses
  %i.lh = add i64 %i.lg, %.0454706                ; 2 uses
  %i.li = load i64, ptr %i.s, align 8, !tbaa !39  ; 3 uses
  %i.lj = load ptr, ptr %i.dq, align 8, !tbaa !50 ; 5 uses
  %i.lk = icmp eq ptr %i.lj, null                 ; 2 uses
  br i1 %i.lk, label %bb.ei, label %bb.eh

bb.eh:                                            ; preds = %.lr.ph708
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %i.lm = load i64, ptr %i.ll, align 8, !tbaa !51
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !46
  %i.lp = add i64 %i.lo, %i.lm
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eh, %.lr.ph708
  %.0.i639 = phi i64 [ %i.lp, %bb.eh ], [ 0, %.lr.ph708 ] ; 3 uses
  %i.lq = icmp slt i64 %.0.i639, %i.li
  br i1 %i.lq, label %bb.ej, label %_sparse_list_add_block.exit.thread.i

bb.ej:                                            ; preds = %bb.ei
  %i.lr = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #19 ; 11 uses
end_hunk_0
begin_hunk_1_@archive_write_pax_header_xattrs:bb.a
  store i8 37, ptr %.03055.i, align 1, !tbaa !34
  %i.y = load i8, ptr %.13354.i, align 1, !tbaa !34
  %i.z = lshr i8 %i.y, 4
  %i.aa = zext nneg i8 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr @.str.70, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !34
  %i.ad = getelementptr inbounds nuw i8, ptr %.03055.i, i64 2
  store i8 %i.ac, ptr %i.x, align 1, !tbaa !34
  %i.ae = load i8, ptr %.13354.i, align 1, !tbaa !34
  %i.af = and i8 %i.ae, 15
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @.str.70, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !34
  %i.aj = getelementptr inbounds nuw i8, ptr %.03055.i, i64 3
  store i8 %i.ai, ptr %i.ad, align 1, !tbaa !34
  br label %bb.h

bb.g:                                             ; preds = %switch.early.test44.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.03055.i, i64 1
  store i8 %.fr4556.i, ptr %.03055.i, align 1, !tbaa !34
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.131.i = phi ptr [ %i.aj, %bb.f ], [ %i.ak, %bb.g ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.13354.i, i64 1 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !34
  %.fr45.i = freeze i8 %i.am                      ; 2 uses
  %.not38.i = icmp eq i8 %.fr45.i, 0
  br i1 %.not38.i, label %url_encode.exit.thread24, label %.lr.ph57.i, !llvm.loop !72

url_encode.exit.thread24:                         ; preds = %bb.h, %.preheader.i
  %.131.i.lcssa.sink = phi ptr [ %i.t, %.preheader.i ], [ %.131.i, %bb.h ]
  store i8 0, ptr %.131.i.lcssa.sink, align 1, !tbaa !34
  %i.an = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #17
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !36
  %i.ap = call i32 @archive_strncpy_l(ptr noundef nonnull %i.e, ptr noundef nonnull %i.t, i64 noundef %i.an, ptr noundef %i.ao) #15
  call void @free(ptr noundef nonnull %i.t) #15
  switch i32 %i.ap, label %.thread27 [
    i32 0, label %bb.i
    i32 -1, label %url_encode.exit.thread
  ]

bb.i:                                             ; preds = %url_encode.exit.thread24
  %i.aq = load ptr, ptr %i.e, align 8, !tbaa !74  ; 3 uses
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !75  ; 3 uses
  %i.as = load i64, ptr %i.c, align 8, !tbaa !39  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.at = icmp eq ptr %i.aq, null
  br i1 %i.at, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load i32, ptr %i.g, align 4, !tbaa !24  ; 3 uses
  %i.av = and i32 %i.au, 2
  %.not.i22 = icmp eq i32 %i.av, 0
  br i1 %.not.i22, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aw = shl i64 %i.as, 2
  %i.ax = or disjoint i64 %i.aw, 2
  %i.ay = udiv i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, 1
  %i.ba = call noalias ptr @malloc(i64 noundef %i.az) #19 ; 6 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %base64_encode.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.k
  %i.bc = icmp ugt i64 %i.as, 2
  br i1 %i.bc, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.039.i.i = phi ptr [ %i.co, %.lr.ph.i.i ], [ %i.ba, %.preheader.i.i ] ; 5 uses
  %.03338.i.i = phi i64 [ %i.br, %.lr.ph.i.i ], [ %i.as, %.preheader.i.i ]
  %.03437.i.i = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %i.ar, %.preheader.i.i ] ; 4 uses
  %i.bd = load i8, ptr %.03437.i.i, align 1, !tbaa !34
  %i.be = sext i8 %i.bd to i32
  %i.bf = shl nsw i32 %i.be, 16                   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.03437.i.i, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !34
  %i.bi = sext i8 %i.bh to i32
  %i.bj = shl nsw i32 %i.bi, 8                    ; 2 uses
  %i.bk = and i32 %i.bj, 61440
  %i.bl = getelementptr inbounds nuw i8, ptr %.03437.i.i, i64 2
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !34
  %i.bn = zext i8 %i.bm to i32                    ; 2 uses
  %i.bo = or disjoint i32 %i.bj, %i.bn
  %i.bp = or disjoint i32 %i.bk, %i.bf
  %i.bq = getelementptr inbounds nuw i8, ptr %.03437.i.i, i64 3 ; 2 uses
  %i.br = add i64 %.03338.i.i, -3                 ; 3 uses
  %i.bs = lshr i32 %i.bf, 18
  %i.bt = and i32 %i.bs, 63
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr @base64_encode.digits, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !34
  %i.bx = getelementptr inbounds nuw i8, ptr %.039.i.i, i64 1
  store i8 %i.bw, ptr %.039.i.i, align 1, !tbaa !34
  %i.by = lshr exact i32 %i.bp, 12
  %i.bz = and i32 %i.by, 63
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr @base64_encode.digits, i64 %i.ca
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !34
  %i.cd = getelementptr inbounds nuw i8, ptr %.039.i.i, i64 2
  store i8 %i.cc, ptr %i.bx, align 1, !tbaa !34
  %i.ce = lshr i32 %i.bo, 6
  %i.cf = and i32 %i.ce, 63
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr @base64_encode.digits, i64 %i.cg
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !34
  %i.cj = getelementptr inbounds nuw i8, ptr %.039.i.i, i64 3
  store i8 %i.ci, ptr %i.cd, align 1, !tbaa !34
  %i.ck = and i32 %i.bn, 63
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr @base64_encode.digits, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !34
  %i.co = getelementptr inbounds nuw i8, ptr %.039.i.i, i64 4 ; 2 uses
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !34
  %i.cp = icmp ugt i64 %i.br, 2
  br i1 %i.cp, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !73

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.034.lcssa.i.i = phi ptr [ %i.ar, %.preheader.i.i ], [ %i.bq, %.lr.ph.i.i ] ; 3 uses
  %.033.lcssa.i.i = phi i64 [ %i.as, %.preheader.i.i ], [ %i.br, %.lr.ph.i.i ]
  %.0.lcssa.i.i = phi ptr [ %i.ba, %.preheader.i.i ], [ %i.co, %.lr.ph.i.i ] ; 8 uses
  switch i64 %.033.lcssa.i.i, label %bb.n [
    i64 2, label %bb.m
    i64 1, label %bb.l
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.cq = load i8, ptr %.034.lcssa.i.i, align 1, !tbaa !34
  %i.cr = sext i8 %i.cq to i32
  %i.cs = shl nsw i32 %i.cr, 16                   ; 2 uses
  %i.ct = lshr i32 %i.cs, 18
  %i.cu = and i32 %i.ct, 63
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw i8, ptr @base64_encode.digits, i64 %i.cv
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !34
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  store i8 %i.cx, ptr %.0.lcssa.i.i, align 1, !tbaa !34
  %i.cz = lshr exact i32 %i.cs, 12
  %i.da = and i32 %i.cz, 48
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr @base64_encode.digits, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 16, !tbaa !34
  %i.de = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 2
  store i8 %i.dd, ptr %i.cy, align 1, !tbaa !34
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.df = load i8, ptr %.034.lcssa.i.i, align 1, !tbaa !34
  %i.dg = sext i8 %i.df to i32
  %i.dh = shl nsw i32 %i.dg, 16                   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.034.lcssa.i.i, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !34
  %i.dk = sext i8 %i.dj to i32
  %i.dl = shl nsw i32 %i.dk, 8                    ; 2 uses
  %i.dm = and i32 %i.dl, 61440
  %i.dn = or disjoint i32 %i.dm, %i.dh
  %i.do = lshr i32 %i.dh, 18
  %i.dp = and i32 %i.do, 63
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr @base64_encode.digits, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !34
  %i.dt = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 1
  store i8 %i.ds, ptr %.0.lcssa.i.i, align 1, !tbaa !34
  %i.du = lshr exact i32 %i.dn, 12
  %i.dv = and i32 %i.du, 63
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr @base64_encode.digits, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !34
  %i.dz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 2
  store i8 %i.dy, ptr %i.dt, align 1, !tbaa !34
  %i.ea = lshr exact i32 %i.dl, 6
  %i.eb = and i32 %i.ea, 60
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr @base64_encode.digits, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 4, !tbaa !34
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 3
  store i8 %i.ee, ptr %i.dz, align 1, !tbaa !34
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %.1.i.i = phi ptr [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %i.ef, %bb.m ], [ %i.de, %bb.l ]
  store i8 0, ptr %.1.i.i, align 1, !tbaa !34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.eg = call ptr @archive_strncat(ptr noundef nonnull %3, ptr noundef nonnull @.str.71, i64 noundef 17) #15 ; 0 uses
  %i.eh = call ptr @archive_strcat(ptr noundef nonnull %3, ptr noundef nonnull %i.aq) #15 ; 0 uses
  %i.ei = load ptr, ptr %3, align 8, !tbaa !40
  %i.ej = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ba) #17
  call fastcc void @add_pax_attr_binary(ptr noundef nonnull %i.h, ptr noundef %i.ei, ptr noundef nonnull %i.ba, i64 noundef %i.ej)
  call void @archive_string_free(ptr noundef nonnull %3) #15
  %.pre.pre.i = load i32, ptr %i.g, align 4, !tbaa !24
  br label %base64_encode.exit.thread.i

base64_encode.exit.thread.i:                      ; preds = %bb.n, %bb.k
  %.pre.i = phi i32 [ %i.au, %bb.k ], [ %.pre.pre.i, %bb.n ]
  call void @free(ptr noundef %i.ba) #15
  br label %bb.o

bb.o:                                             ; preds = %base64_encode.exit.thread.i, %bb.j
  %i.ek = phi i32 [ %.pre.i, %base64_encode.exit.thread.i ], [ %i.au, %bb.j ]
  %.not15.i = trunc i32 %i.ek to i1
  br i1 %.not15.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.el = call ptr @archive_strncat(ptr noundef nonnull %3, ptr noundef nonnull @.str.72, i64 noundef 13) #15 ; 0 uses
  %i.em = call ptr @archive_strcat(ptr noundef nonnull %3, ptr noundef nonnull %i.aq) #15 ; 0 uses
  %i.en = load ptr, ptr %3, align 8, !tbaa !40
  call fastcc void @add_pax_attr_binary(ptr noundef nonnull %i.h, ptr noundef %i.en, ptr noundef %i.ar, i64 noundef %i.as)
  call void @archive_string_free(ptr noundef nonnull %3) #15
  br label %bb.q

.thread27:                                        ; preds = %url_encode.exit.thread24
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef -1, ptr noundef nonnull @.str.69) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.loopexit

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.b

url_encode.exit.thread:                           ; preds = %._crit_edge.i, %url_encode.exit.thread24, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.48) #15
  br label %.loopexit

.loopexit:                                        ; preds = %bb.q, %bb.a, %.thread27, %url_encode.exit.thread
  %.2 = phi i32 [ -25, %.thread27 ], [ -30, %url_encode.exit.thread ], [ 0, %bb.a ], [ 0, %bb.q ]
  ret i32 %.2
}

declare i32 @__archive_write_format_header_ustar(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @build_pax_attribute_name(ptr noundef nonnull returned %0, ptr noundef %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !34      ; 2 uses
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) @.str.73, i64 16, i1 false) #15
  br label %bb.j

bb.d:                                             ; preds = %bb.b
  %i.e = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17 ; 4 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %.backedge
  %.0.idx45 = phi i64 [ %.0.add32, %.backedge ], [ %i.e, %bb.d ] ; 6 uses
  %.0.ptr46 = getelementptr inbounds nuw i8, ptr %1, i64 %.0.idx45
  %.0.add32 = add nsw i64 %.0.idx45, -1           ; 2 uses
  %.ptr33 = getelementptr inbounds nuw i8, ptr %1, i64 %.0.add32
  %i.g = load i8, ptr %.ptr33, align 1, !tbaa !34 ; 2 uses
  %i.h = icmp eq i8 %i.g, 47
  br i1 %i.h, label %.backedge, label %bb.e

.backedge:                                        ; preds = %.lr.ph, %bb.g
  %i.i = icmp samesign ugt i64 %.0.idx45, 1
  br i1 %i.i, label %.lr.ph, label %._crit_edge.thread

bb.e:                                             ; preds = %.lr.ph
  %.not = icmp eq i64 %.0.idx45, 1
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq i8 %i.g, 46
  br i1 %i.j, label %bb.g, label %.thread36

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds i8, ptr %.0.ptr46, i64 -2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !34
  %i.m = icmp eq i8 %i.l, 47
  br i1 %i.m, label %.backedge, label %.thread36

._crit_edge:                                      ; preds = %bb.d
  %i.n = icmp eq i64 %i.e, 0
  br i1 %i.n, label %._crit_edge.thread, label %.thread36

._crit_edge.thread:                               ; preds = %.backedge, %._crit_edge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %0, ptr noundef nonnull align 1 dereferenceable(19) @.str.74, i64 19, i1 false) #15
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.o = icmp eq i8 %i.c, 46
  br i1 %i.o, label %bb.i, label %.thread36

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %0, ptr noundef nonnull align 1 dereferenceable(21) @.str.75, i64 21, i1 false) #15
  br label %bb.j

.thread36:                                        ; preds = %bb.g, %bb.f, %._crit_edge, %bb.h
  %.0.idx43 = phi i64 [ 1, %bb.h ], [ %i.e, %._crit_edge ], [ %.0.idx45, %bb.f ], [ %.0.idx45, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.76, i64 10, i1 false) #15
  %i.p = call fastcc ptr @build_ustar_entry_name(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %.0.idx43, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.thread36, %bb.i, %._crit_edge.thread, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %0
}

declare i32 @archive_entry_mode(ptr noundef) local_unnamed_addr #2

declare void @archive_entry_set_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @archive_entry_set_atime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @archive_entry_set_ctime(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__archive_write_output(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @__archive_write_nulls(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @_archive_entry_hardlink_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

declare i32 @_archive_entry_pathname_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_archive_entry_uname_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_archive_entry_gname_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_archive_entry_symlink_l(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @add_pax_attr_binary(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [13 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %i.c = trunc i64 %i.b to i32
  %i.d = trunc i64 %3 to i32
  %i.e = add i32 %i.d, 3
  %i.f = add i32 %i.e, %i.c                       ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.025 = phi i32 [ %i.j, %.lr.ph ], [ 1, %bb.a ]
  %.02124 = phi i32 [ %i.h, %.lr.ph ], [ %i.f, %bb.a ] ; 2 uses
  %.02223 = phi i32 [ %i.i, %.lr.ph ], [ 0, %bb.a ]
  %i.h = udiv i32 %.02124, 10
  %i.i = add nuw nsw i32 %.02223, 1               ; 2 uses
  %i.j = mul nuw nsw i32 %.025, 10                ; 2 uses
  %.not27 = icmp samesign ult i32 %.02124, 10
  br i1 %.not27, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.022.lcssa = phi i32 [ 0, %bb.a ], [ %i.i, %.lr.ph ]
  %.0.lcssa = phi i32 [ 1, %bb.a ], [ %i.j, %.lr.ph ]
  %i.k = add i32 %.022.lcssa, %i.f                ; 2 uses
  %.not = icmp sge i32 %i.k, %.0.lcssa
  %i.l = zext i1 %.not to i32
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store i8 0, ptr %i.m, align 1, !tbaa !34
  %i.n = add i32 %i.k, %i.l                       ; 2 uses
  %i.o = tail call i32 @llvm.abs.i32(i32 %i.n, i1 false)
  %.0.i = zext i32 %i.o to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %._crit_edge
  %.09.i = phi ptr [ %i.m, %._crit_edge ], [ %i.s, %bb.b ] ; 2 uses
  %.1.i = phi i64 [ %.0.i, %._crit_edge ], [ %i.t, %bb.b ] ; 3 uses
  %i.p = urem i64 %.1.i, 10
  %i.q = getelementptr inbounds nuw i8, ptr @.str.58, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !34
  %i.s = getelementptr inbounds i8, ptr %.09.i, i64 -1 ; 3 uses
  store i8 %i.r, ptr %i.s, align 1, !tbaa !34
  %i.t = udiv i64 %.1.i, 10
  %.not.i = icmp samesign ult i64 %.1.i, 10
  br i1 %.not.i, label %bb.c, label %bb.b, !llvm.loop !2

bb.c:                                             ; preds = %bb.b
  %i.u = icmp slt i32 %i.n, 0
  br i1 %i.u, label %bb.d, label %format_int.exit

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds i8, ptr %.09.i, i64 -2 ; 2 uses
  store i8 45, ptr %i.v, align 1, !tbaa !34
  br label %format_int.exit

format_int.exit:                                  ; preds = %bb.c, %bb.d
  %.110.i = phi ptr [ %i.v, %bb.d ], [ %i.s, %bb.c ]
  %i.w = call ptr @archive_strcat(ptr noundef %0, ptr noundef nonnull %.110.i) #15 ; 0 uses
end_hunk_1
