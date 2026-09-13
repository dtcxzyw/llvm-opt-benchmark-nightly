Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/tar?download=true
inline.NumInlined: 20
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 23
begin_hunk_0_@phar_parse_tarfile:bb.a
  br i1 %i.ra, label %.split.loop.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  br label %bb.cw

.split.loop.exit:                                 ; preds = %bb.da, %bb.cy, %bb.cx, %bb.cw
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %bb.cw ], [ %indvars.iv.next, %bb.cx ], [ %indvars.iv.next.1, %bb.cy ], [ %indvars.iv.next.2, %bb.da ]
  %i.rb = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.split.loop.exit892

.split.loop.exit892:                              ; preds = %bb.cz, %.split.loop.exit
  %.0406.lcssa = phi i32 [ %i.rb, %.split.loop.exit ], [ 155, %bb.cz ] ; 4 uses
  %i.rc = add nuw nsw i32 %.0406.lcssa, 1         ; 2 uses
  %i.rd = zext nneg i32 %.0406.lcssa to i64
  %i.re = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.rd
  store i8 47, ptr %i.re, align 1, !tbaa !12
  %i.rf = zext i32 %i.rc to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.rf ; 4 uses
  br label %bb.dc

bb.dc:                                            ; preds = %bb.dg, %.split.loop.exit892
  %indvars.iv796 = phi i64 [ 0, %.split.loop.exit892 ], [ %indvars.iv.next797.3, %bb.dg ] ; 7 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv796
  %i.rh = load i8, ptr %i.rg, align 4, !tbaa !12  ; 2 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv796
  store i8 %i.rh, ptr %gep, align 1, !tbaa !12
  %i.ri = icmp eq i8 %i.rh, 0
  br i1 %i.ri, label %.split.loop.exit894, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %indvars.iv.next797 = or disjoint i64 %indvars.iv796, 1 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next797
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !12  ; 2 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next797
  store i8 %i.rk, ptr %gep.1, align 1, !tbaa !12
  %i.rl = icmp eq i8 %i.rk, 0
  br i1 %i.rl, label %.split.loop.exit894, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %indvars.iv.next797.1 = or disjoint i64 %indvars.iv796, 2 ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next797.1
  %i.rn = load i8, ptr %i.rm, align 2, !tbaa !12  ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next797.1
  store i8 %i.rn, ptr %gep.2, align 1, !tbaa !12
  %i.ro = icmp eq i8 %i.rn, 0
  br i1 %i.ro, label %.split.loop.exit894, label %bb.df

bb.df:                                            ; preds = %bb.de
  %indvars.iv.next797.2 = or disjoint i64 %indvars.iv796, 3 ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next797.2
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !12  ; 2 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next797.2
  store i8 %i.rq, ptr %gep.3, align 1, !tbaa !12
  %i.rr = icmp eq i8 %i.rq, 0
  br i1 %i.rr, label %.split.loop.exit894, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %indvars.iv.next797.3 = add nuw nsw i64 %indvars.iv796, 4 ; 2 uses
  %exitcond799.not.3 = icmp eq i64 %indvars.iv.next797.3, 100
  br i1 %exitcond799.not.3, label %.split.loop.exit895, label %bb.dc, !llvm.loop !72

.split.loop.exit894:                              ; preds = %bb.df, %bb.de, %bb.dd, %bb.dc
  %indvars.iv796.lcssa = phi i64 [ %indvars.iv796, %bb.dc ], [ %indvars.iv.next797, %bb.dd ], [ %indvars.iv.next797.1, %bb.de ], [ %indvars.iv.next797.2, %bb.df ]
  %i.rs = trunc nuw nsw i64 %indvars.iv796.lcssa to i32
  br label %.split.loop.exit895

.split.loop.exit895:                              ; preds = %bb.dg, %.split.loop.exit894
  %.0405.lcssa = phi i32 [ %i.rs, %.split.loop.exit894 ], [ 100, %bb.dg ] ; 2 uses
  %i.rt = add nuw nsw i32 %.0405.lcssa, %.0406.lcssa
  %i.ru = zext nneg i32 %i.rt to i64
  %i.rv = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ru
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !12
  %i.rx = icmp eq i8 %i.rw, 47
  %spec.select490 = select i1 %i.rx, i32 %.0406.lcssa, i32 %i.rc
  %.0404 = add nuw nsw i32 %spec.select490, %.0405.lcssa
  %i.ry = zext nneg i32 %.0404 to i64             ; 5 uses
  %i.rz = load i16, ptr %i.ac, align 4
  %i.sa = and i16 %i.rz, 256
  %.not671 = icmp eq i16 %i.sa, 0
  %i.sb = add nuw nsw i64 %i.ry, 32
  %i.sc = and i64 %i.sb, 4294967288               ; 2 uses
  br i1 %.not671, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %.split.loop.exit895
  %i.sd = call noalias ptr @__zend_malloc(i64 noundef %i.sc) #17
  br label %zend_string_init.exit508

bb.di:                                            ; preds = %.split.loop.exit895
  %i.se = call noalias ptr @_emalloc(i64 noundef %i.sc) #17
  br label %zend_string_init.exit508

zend_string_init.exit508:                         ; preds = %bb.dh, %bb.di
  %i.sf = phi i32 [ 150, %bb.dh ], [ 22, %bb.di ]
  %i.sg = phi ptr [ %i.sd, %bb.dh ], [ %i.se, %bb.di ] ; 6 uses
  store i32 1, ptr %i.sg, align 4, !tbaa !37
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 4
  store i32 %i.sf, ptr %i.sh, align 4, !tbaa !12
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  store i64 0, ptr %i.si, align 8, !tbaa !39
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  store i64 %i.ry, ptr %i.sj, align 8, !tbaa !40
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.sk, ptr nonnull align 16 %i.d, i64 range(i64 0, 4294967296) %i.ry, i1 false)
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.ry
  store i8 0, ptr %i.sl, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %bb.dn

bb.dj:                                            ; preds = %bb.cu
  br i1 %.not463, label %vector.body, label %._crit_edge

vector.body:                                      ; preds = %bb.dj
  %wide.load = load <16 x i8>, ptr %i.b, align 16, !tbaa !12
  %wide.load.fr = freeze <16 x i8> %wide.load
  %i.sm = icmp eq <16 x i8> %wide.load.fr, zeroinitializer ; 2 uses
  %i.sn = bitcast <16 x i1> %i.sm to i16
  %.not1003 = icmp eq i16 %i.sn, 0
  br i1 %.not1003, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %wide.load.1 = load <16 x i8>, ptr %i.db, align 16, !tbaa !12
  %wide.load.fr.1 = freeze <16 x i8> %wide.load.1
  %i.so = icmp eq <16 x i8> %wide.load.fr.1, zeroinitializer ; 2 uses
  %i.sp = bitcast <16 x i1> %i.so to i16
  %.not1003.1 = icmp eq i16 %i.sp, 0
  br i1 %.not1003.1, label %vector.body.interim.1, label %vector.early.exit

vector.body.interim.1:                            ; preds = %vector.body.interim
  %wide.load.2 = load <16 x i8>, ptr %i.dc, align 16, !tbaa !12
  %wide.load.fr.2 = freeze <16 x i8> %wide.load.2
  %i.sq = icmp eq <16 x i8> %wide.load.fr.2, zeroinitializer ; 2 uses
  %i.sr = bitcast <16 x i1> %i.sq to i16
  %.not1003.2 = icmp eq i16 %i.sr, 0
  br i1 %.not1003.2, label %vector.body.interim.2, label %vector.early.exit

vector.body.interim.2:                            ; preds = %vector.body.interim.1
  %wide.load.3 = load <16 x i8>, ptr %i.dd, align 16, !tbaa !12
  %wide.load.fr.3 = freeze <16 x i8> %wide.load.3
  %i.ss = icmp eq <16 x i8> %wide.load.fr.3, zeroinitializer ; 2 uses
  %i.st = bitcast <16 x i1> %i.ss to i16
  %.not1003.3 = icmp eq i16 %i.st, 0
  br i1 %.not1003.3, label %vector.body.interim.3, label %vector.early.exit

vector.body.interim.3:                            ; preds = %vector.body.interim.2
  %wide.load.4 = load <16 x i8>, ptr %i.de, align 16, !tbaa !12
  %wide.load.fr.4 = freeze <16 x i8> %wide.load.4
  %i.su = icmp eq <16 x i8> %wide.load.fr.4, zeroinitializer ; 2 uses
  %i.sv = bitcast <16 x i1> %i.su to i16
  %.not1003.4 = icmp eq i16 %i.sv, 0
  br i1 %.not1003.4, label %vector.body.interim.4, label %vector.early.exit

vector.body.interim.4:                            ; preds = %vector.body.interim.3
  %wide.load.5 = load <16 x i8>, ptr %i.df, align 16, !tbaa !12
  %wide.load.fr.5 = freeze <16 x i8> %wide.load.5
  %i.sw = icmp eq <16 x i8> %wide.load.fr.5, zeroinitializer ; 2 uses
  %i.sx = bitcast <16 x i1> %i.sw to i16
  %.not1003.5 = icmp eq i16 %i.sx, 0
  br i1 %.not1003.5, label %.preheader680, label %vector.early.exit

vector.early.exit:                                ; preds = %vector.body.interim.4, %vector.body.interim.3, %vector.body.interim.2, %vector.body.interim.1, %vector.body.interim, %vector.body
  %index.lcssa = phi i64 [ 0, %vector.body ], [ 16, %vector.body.interim ], [ 32, %vector.body.interim.1 ], [ 48, %vector.body.interim.2 ], [ 64, %vector.body.interim.3 ], [ 80, %vector.body.interim.4 ]
  %.lcssa1084 = phi <16 x i1> [ %i.sm, %vector.body ], [ %i.so, %vector.body.interim ], [ %i.sq, %vector.body.interim.1 ], [ %i.ss, %vector.body.interim.2 ], [ %i.su, %vector.body.interim.3 ], [ %i.sw, %vector.body.interim.4 ]
  %i.sy = call i64 @llvm.experimental.cttz.elts.i64.v16i1(<16 x i1> %.lcssa1084, i1 false)
  %i.sz = add i64 %index.lcssa, %i.sy
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.dj
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.12597.0, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !40
  br label %bb.dn

.preheader680:                                    ; preds = %vector.body.interim.4
  %i.ta = load i8, ptr %i.dg, align 16, !tbaa !12
  %i.tb = icmp eq i8 %i.ta, 0
  br i1 %i.tb, label %.loopexit, label %.preheader680.1

.preheader680.1:                                  ; preds = %.preheader680
  %i.tc = load i8, ptr %i.dh, align 1, !tbaa !12
  %i.td = icmp eq i8 %i.tc, 0
  br i1 %i.td, label %.loopexit, label %.preheader680.2

.preheader680.2:                                  ; preds = %.preheader680.1
  %i.te = load i8, ptr %i.di, align 2, !tbaa !12
  %i.tf = icmp eq i8 %i.te, 0
  br i1 %i.tf, label %.loopexit, label %.preheader680.3

.preheader680.3:                                  ; preds = %.preheader680.2
  %i.tg = load i8, ptr %i.dj, align 1, !tbaa !12
  %i.th = icmp eq i8 %i.tg, 0
  br i1 %i.th, label %.loopexit, label %.thread

.loopexit:                                        ; preds = %.preheader680, %.preheader680.1, %.preheader680.2, %.preheader680.3, %vector.early.exit
  %indvars.iv800.lcssa = phi i64 [ %i.sz, %vector.early.exit ], [ 96, %.preheader680 ], [ 97, %.preheader680.1 ], [ 98, %.preheader680.2 ], [ 99, %.preheader680.3 ] ; 2 uses
  %i.ti = trunc nuw nsw i64 %indvars.iv800.lcssa to i32
  %.not465 = icmp eq i64 %indvars.iv800.lcssa, 0
  br i1 %.not465, label %bb.dk, label %.thread

.thread:                                          ; preds = %.preheader680.3, %.loopexit
  %.0402687 = phi i32 [ %i.ti, %.loopexit ], [ 100, %.preheader680.3 ] ; 2 uses
  %12 = add nsw i32 %.0402687, -1                 ; 2 uses
  %13 = zext i32 %12 to i64
  %i.tj = getelementptr inbounds nuw i8, ptr %i.b, i64 %13
  %i.tk = load i8, ptr %i.tj, align 1, !tbaa !12
  %i.tl = icmp eq i8 %i.tk, 47
  %spec.select491 = select i1 %i.tl, i32 %12, i32 %.0402687
  %i.tm = zext i32 %spec.select491 to i64
  br label %bb.dk

bb.dk:                                            ; preds = %.thread, %.loopexit
  %.1403 = phi i64 [ 0, %.loopexit ], [ %i.tm, %.thread ] ; 5 uses
  %i.tn = load i16, ptr %i.ac, align 4
  %i.to = and i16 %i.tn, 256
  %.not672 = icmp eq i16 %i.to, 0
  %i.tp = add nuw nsw i64 %.1403, 32
  %i.tq = and i64 %i.tp, 8589934584               ; 2 uses
  br i1 %.not672, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.tr = call noalias ptr @__zend_malloc(i64 noundef %i.tq) #17
  br label %zend_string_init.exit

bb.dm:                                            ; preds = %bb.dk
  %i.ts = call noalias ptr @_emalloc(i64 noundef %i.tq) #17
  br label %zend_string_init.exit

zend_string_init.exit:                            ; preds = %bb.dl, %bb.dm
  %i.tt = phi i32 [ 150, %bb.dl ], [ 22, %bb.dm ]
  %i.tu = phi ptr [ %i.tr, %bb.dl ], [ %i.ts, %bb.dm ] ; 6 uses
  store i32 1, ptr %i.tu, align 4, !tbaa !37
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 4
  store i32 %i.tt, ptr %i.tv, align 4, !tbaa !12
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  store i64 0, ptr %i.tw, align 8, !tbaa !39
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tu, i64 16
  store i64 %.1403, ptr %i.tx, align 8, !tbaa !40
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ty, ptr nonnull align 16 %i.b, i64 range(i64 0, 4294967296) %.1403, i1 false)
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 %.1403
  store i8 0, ptr %i.tz, align 1, !tbaa !12
  br label %bb.dn

bb.dn:                                            ; preds = %._crit_edge, %zend_string_init.exit508, %zend_string_init.exit
  %i.ua = phi i64 [ %.1403, %zend_string_init.exit ], [ %.pre, %._crit_edge ], [ %i.ry, %zend_string_init.exit508 ]
  %.sroa.12597.1 = phi ptr [ %i.tu, %zend_string_init.exit ], [ %.sroa.12597.0, %._crit_edge ], [ %i.sg, %zend_string_init.exit508 ] ; 19 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.12597.1, i64 24 ; 7 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %.sroa.12597.1, i64 16 ; 3 uses
  call void @phar_add_virtual_dirs(ptr noundef %i.z, ptr noundef nonnull %i.ub, i64 noundef %i.ua) #15
  %.not466 = icmp eq i32 %.017.lcssa.i634, %.1426
  br i1 %.not466, label %.preheader743, label %bb.do

.preheader743:                                    ; preds = %bb.dn
  %i.ud = load i8, ptr %i.be, align 4, !tbaa !12
  %i.ue = icmp eq i8 %i.ud, 32
  br i1 %i.ue, label %bb.dv, label %.lr.ph.i570

bb.do:                                            ; preds = %bb.dn
  br i1 %.not, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.uf = call i64 (ptr, i64, ptr, ...) @zend_spprintf(ptr noundef nonnull %7, i64 noundef 4096, ptr noundef nonnull @.str.12, ptr noundef %1, ptr noundef nonnull %i.ub) #15 ; 0 uses
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.ug = load i16, ptr %i.ac, align 4
  %i.uh = and i16 %i.ug, 256
  %.not673 = icmp eq i16 %i.uh, 0
  %i.ui = getelementptr inbounds nuw i8, ptr %.sroa.12597.1, i64 4
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !12
  %i.uk = and i32 %i.uj, 64
  %.not.i510 = icmp eq i32 %i.uk, 0
  br i1 %.not.i510, label %bb.dr, label %zend_string_release_ex.exit511

bb.dr:                                            ; preds = %bb.dq
  %i.ul = load i32, ptr %.sroa.12597.1, align 4, !tbaa !37 ; 2 uses
  %i.um = icmp ne i32 %i.ul, 0
  call void @llvm.assume(i1 %i.um)
  %i.un = add i32 %i.ul, -1                       ; 2 uses
  store i32 %i.un, ptr %.sroa.12597.1, align 4, !tbaa !37
  %i.uo = icmp eq i32 %i.un, 0
  br i1 %i.uo, label %bb.ds, label %zend_string_release_ex.exit511

bb.ds:                                            ; preds = %bb.dr
  br i1 %.not673, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  call void @free(ptr noundef nonnull %.sroa.12597.1) #15
  br label %zend_string_release_ex.exit511

bb.du:                                            ; preds = %bb.ds
  call void @_efree(ptr noundef nonnull %.sroa.12597.1) #15
  br label %zend_string_release_ex.exit511

zend_string_release_ex.exit511:                   ; preds = %bb.dq, %bb.dr, %bb.dt, %bb.du
  %i.up = call i32 @_php_stream_free(ptr noundef %0, i32 noundef 3) #15 ; 0 uses
  call void @phar_destroy_phar_data(ptr noundef nonnull %i.z) #15
  br label %.thread647

bb.dv:                                            ; preds = %.preheader743
  %i.uq = load i8, ptr %i.ci, align 1, !tbaa !12
  %i.ur = icmp eq i8 %i.uq, 32
  br i1 %i.ur, label %bb.dw, label %.lr.ph.i570

bb.dw:                                            ; preds = %bb.dv
  %i.us = load i8, ptr %i.cj, align 2, !tbaa !12
  %i.ut = icmp eq i8 %i.us, 32
  br i1 %i.ut, label %bb.dx, label %.lr.ph.i570

bb.dx:                                            ; preds = %bb.dw
  %i.uu = load i8, ptr %i.ck, align 1, !tbaa !12
  %i.uv = icmp eq i8 %i.uu, 32
  br i1 %i.uv, label %bb.dy, label %.lr.ph.i570

bb.dy:                                            ; preds = %bb.dx
  %i.uw = load i8, ptr %i.cl, align 8, !tbaa !12
  %i.ux = icmp eq i8 %i.uw, 32
  br i1 %i.ux, label %bb.dz, label %.lr.ph.i570

bb.dz:                                            ; preds = %bb.dy
  %i.uy = load i8, ptr %i.cm, align 1, !tbaa !12
  %i.uz = icmp eq i8 %i.uy, 32
  br i1 %i.uz, label %bb.ea, label %.lr.ph.i570

bb.ea:                                            ; preds = %bb.dz
  %i.va = load i8, ptr %i.cn, align 2, !tbaa !12
  %i.vb = icmp eq i8 %i.va, 32
  br i1 %i.vb, label %bb.eb, label %.lr.ph.i570

bb.eb:                                            ; preds = %bb.ea
  %i.vc = load i8, ptr %i.co, align 1, !tbaa !12
  %i.vd = icmp eq i8 %i.vc, 32
  br i1 %i.vd, label %phar_tar_number.exit577, label %.lr.ph.i570

.lr.ph.i570:                                      ; preds = %.preheader743, %bb.dv, %bb.dw, %bb.dx, %bb.dy, %bb.dz, %bb.ea, %bb.eb
  %.121.i571.ph = phi i64 [ 7, %bb.eb ], [ 6, %bb.ea ], [ 5, %bb.dz ], [ 4, %bb.dy ], [ 3, %bb.dx ], [ 2, %bb.dw ], [ 1, %bb.dv ], [ 0, %.preheader743 ] ; 8 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.be, i64 %.121.i571.ph
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !12  ; 2 uses
  %i.vg = and i8 %i.vf, -8
  %or.cond.i573 = icmp eq i8 %i.vg, 48
  br i1 %or.cond.i573, label %bb.ec, label %phar_tar_number.exit577

bb.ec:                                            ; preds = %.lr.ph.i570
  %narrow.i574 = add nsw i8 %i.vf, -48
  %i.vh = zext nneg i8 %narrow.i574 to i32        ; 3 uses
  %i.vi = add nuw nsw i64 %.121.i571.ph, 1        ; 2 uses
  %exitcond24.not.i575 = icmp eq i64 %i.vi, 8
  br i1 %exitcond24.not.i575, label %phar_tar_number.exit577, label %.lr.ph.i570.1

.lr.ph.i570.1:                                    ; preds = %bb.ec
  %i.vj = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.vi
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !12  ; 2 uses
  %i.vl = and i8 %i.vk, -8
  %or.cond.i573.1 = icmp eq i8 %i.vl, 48
  br i1 %or.cond.i573.1, label %bb.ed, label %phar_tar_number.exit577

bb.ed:                                            ; preds = %.lr.ph.i570.1
  %i.vm = shl nuw nsw i32 %i.vh, 3
  %narrow.i574.1 = add nsw i8 %i.vk, -48
  %i.vn = zext nneg i8 %narrow.i574.1 to i32
  %i.vo = or disjoint i32 %i.vm, %i.vn            ; 3 uses
  %i.vp = add nuw nsw i64 %.121.i571.ph, 2        ; 2 uses
  %exitcond24.not.i575.1 = icmp eq i64 %i.vp, 8
  br i1 %exitcond24.not.i575.1, label %phar_tar_number.exit577, label %.lr.ph.i570.2

.lr.ph.i570.2:                                    ; preds = %bb.ed
  %i.vq = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.vp
  %i.vr = load i8, ptr %i.vq, align 1, !tbaa !12  ; 2 uses
  %i.vs = and i8 %i.vr, -8
  %or.cond.i573.2 = icmp eq i8 %i.vs, 48
  br i1 %or.cond.i573.2, label %bb.ee, label %phar_tar_number.exit577

bb.ee:                                            ; preds = %.lr.ph.i570.2
  %i.vt = shl nuw nsw i32 %i.vo, 3
  %narrow.i574.2 = add nsw i8 %i.vr, -48
  %i.vu = zext nneg i8 %narrow.i574.2 to i32
  %i.vv = or disjoint i32 %i.vt, %i.vu            ; 3 uses
  %i.vw = add nuw nsw i64 %.121.i571.ph, 3        ; 2 uses
  %exitcond24.not.i575.2 = icmp eq i64 %i.vw, 8
  br i1 %exitcond24.not.i575.2, label %phar_tar_number.exit577, label %.lr.ph.i570.3

.lr.ph.i570.3:                                    ; preds = %bb.ee
  %i.vx = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.vw
  %i.vy = load i8, ptr %i.vx, align 1, !tbaa !12  ; 2 uses
  %i.vz = and i8 %i.vy, -8
  %or.cond.i573.3 = icmp eq i8 %i.vz, 48
  br i1 %or.cond.i573.3, label %bb.ef, label %phar_tar_number.exit577

bb.ef:                                            ; preds = %.lr.ph.i570.3
  %i.wa = shl nuw nsw i32 %i.vv, 3
  %narrow.i574.3 = add nsw i8 %i.vy, -48
  %i.wb = zext nneg i8 %narrow.i574.3 to i32
  %i.wc = or disjoint i32 %i.wa, %i.wb            ; 3 uses
  %i.wd = add nuw nsw i64 %.121.i571.ph, 4        ; 2 uses
  %exitcond24.not.i575.3 = icmp eq i64 %i.wd, 8
  br i1 %exitcond24.not.i575.3, label %phar_tar_number.exit577, label %.lr.ph.i570.4

.lr.ph.i570.4:                                    ; preds = %bb.ef
  %i.we = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !12  ; 2 uses
  %i.wg = and i8 %i.wf, -8
  %or.cond.i573.4 = icmp eq i8 %i.wg, 48
  br i1 %or.cond.i573.4, label %bb.eg, label %phar_tar_number.exit577

bb.eg:                                            ; preds = %.lr.ph.i570.4
  %i.wh = shl i32 %i.wc, 3
  %narrow.i574.4 = add nsw i8 %i.wf, -48
end_hunk_0
