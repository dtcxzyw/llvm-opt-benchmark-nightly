Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/http_fopen_wrapper?download=true
inline.NumInlined: 5
inline.NumDeleted: 2
begin_hunk_0_@php_stream_url_wrap_http_ex:bb.a
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 24
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rs
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rv, ptr nonnull align 8 %i.rl, i64 %i.rn, i1 false)
  %i.rw = load ptr, ptr %13, align 8, !tbaa !28   ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 16
  store i64 %.1.i.i1206, ptr %i.rx, align 8, !tbaa !20
  %i.ry = add i64 %.1.i.i1206, 2                  ; 3 uses
  %i.rz = load i64, ptr %i.rg, align 8, !tbaa !30
  %.not12.i982 = icmp ult i64 %i.ry, %i.rz
  br i1 %.not12.i982, label %smart_str_alloc.exit985, label %bb.fd, !prof !22

bb.fd:                                            ; preds = %bb.fc
  call void @smart_str_erealloc(ptr noundef nonnull %13, i64 noundef %i.ry) #18
  %.pre249 = load ptr, ptr %13, align 8, !tbaa !28 ; 2 uses
  %.phi.trans.insert250 = getelementptr inbounds nuw i8, ptr %.pre249, i64 16
  %.pre251 = load i64, ptr %.phi.trans.insert250, align 8, !tbaa !20
  br label %smart_str_alloc.exit985

smart_str_alloc.exit985:                          ; preds = %bb.fc, %bb.fd
  %i.sa = phi i64 [ %.1.i.i1206, %bb.fc ], [ %.pre251, %bb.fd ]
  %i.sb = phi ptr [ %i.rw, %bb.fc ], [ %.pre249, %bb.fd ]
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 24
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 %i.sa
  store i16 2573, ptr %i.sd, align 1
  %i.se = load ptr, ptr %13, align 8, !tbaa !28   ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 16
  store i64 %i.ry, ptr %i.sf, align 8, !tbaa !20
  br label %bb.fe

bb.fe:                                            ; preds = %bb.ey, %smart_str_alloc.exit985
  %i.sg = phi ptr [ %i.rh, %bb.ey ], [ %i.se, %smart_str_alloc.exit985 ] ; 4 uses
  %i.sh = getelementptr inbounds nuw i8, ptr %.0683151, i64 %i.rd
  %i.si = add i32 %.0684150, -1                   ; 2 uses
  %.not848 = icmp eq i32 %i.si, 0
  br i1 %.not848, label %._crit_edge, label %bb.ey, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.fe
  %.not.i973 = icmp eq ptr %i.sg, null
  br i1 %.not.i973, label %smart_str_0.exit.thread, label %smart_str_0.exit

smart_str_0.exit:                                 ; preds = %._crit_edge
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sg, i64 24
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !20
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 %i.sl
  store i8 0, ptr %i.sm, align 1, !tbaa !13
  %.pr44 = load ptr, ptr %13, align 8, !tbaa !28  ; 2 uses
  %.not849 = icmp eq ptr %.pr44, null
  br i1 %.not849, label %smart_str_0.exit.thread, label %bb.ff

bb.ff:                                            ; preds = %smart_str_0.exit
  %i.sn = call ptr @php_trim(ptr noundef nonnull %.pr44, ptr noundef null, i64 noundef 0, i32 noundef 3) #18 ; 4 uses
  %i.so = load ptr, ptr %13, align 8, !tbaa !28   ; 5 uses
  %.not.i1191 = icmp eq ptr %i.so, null
  br i1 %.not.i1191, label %smart_str_0.exit.thread, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !13
  %i.sr = and i32 %i.sq, 64
  %.not.i.i1192 = icmp eq i32 %i.sr, 0
  br i1 %.not.i.i1192, label %bb.fh, label %smart_str_0.exit.thread

bb.fh:                                            ; preds = %bb.fg
  %i.ss = load i32, ptr %i.so, align 4, !tbaa !15 ; 2 uses
  %i.st = icmp ne i32 %i.ss, 0
  call void @llvm.assume(i1 %i.st)
  %i.su = add i32 %i.ss, -1                       ; 2 uses
  store i32 %i.su, ptr %i.so, align 4, !tbaa !15
  %i.sv = icmp eq i32 %i.su, 0
  br i1 %i.sv, label %bb.fi, label %smart_str_0.exit.thread

bb.fi:                                            ; preds = %bb.fh
  call void @_efree(ptr noundef nonnull %i.so) #18
  br label %smart_str_0.exit.thread

smart_str_0.exit.thread:                          ; preds = %bb.ff, %bb.fi, %bb.fh, %bb.fg, %bb.ex, %._crit_edge, %smart_str_0.exit
  %.0736 = phi ptr [ null, %bb.ex ], [ null, %smart_str_0.exit ], [ null, %._crit_edge ], [ %i.sn, %bb.fg ], [ %i.sn, %bb.fh ], [ %i.sn, %bb.fi ], [ %i.sn, %bb.ff ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #18
  br label %bb.fl

bb.fj:                                            ; preds = %bb.ew
  %i.sw = load ptr, ptr %i.qt, align 8, !tbaa !13 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !20
  %.not846 = icmp eq i64 %i.sy, 0
  br i1 %.not846, label %zend_string_release_ex.exit966.thread, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  %i.sz = call ptr @php_trim(ptr noundef nonnull %i.sw, ptr noundef null, i64 noundef 0, i32 noundef 3) #18
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %smart_str_0.exit.thread
  %.1737 = phi ptr [ %.0736, %smart_str_0.exit.thread ], [ %i.sz, %bb.fk ] ; 8 uses
  %.not850 = icmp eq ptr %.1737, null
  br i1 %.not850, label %zend_string_release_ex.exit966.thread, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.ta = getelementptr inbounds nuw i8, ptr %.1737, i64 16 ; 4 uses
  %i.tb = load i64, ptr %i.ta, align 8, !tbaa !20 ; 2 uses
  %.not851 = icmp eq i64 %i.tb, 0
  br i1 %.not851, label %.thread51, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.tc = getelementptr inbounds nuw i8, ptr %.1737, i64 24 ; 3 uses
  %i.td = call noalias ptr @_estrndup(ptr noundef nonnull %i.tc, i64 noundef %i.tb) #18 ; 11 uses
  %i.te = getelementptr inbounds nuw i8, ptr %.1737, i64 4
  %i.tf = load i32, ptr %i.te, align 4, !tbaa !13
  %i.tg = and i32 %i.tf, 64
  %.not852 = icmp eq i32 %i.tg, 0
  br i1 %.not852, label %bb.fo, label %zend_string_alloc.exit

zend_string_alloc.exit:                           ; preds = %bb.fn
  %i.th = load i64, ptr %i.ta, align 8, !tbaa !20 ; 5 uses
  %i.ti = and i64 %i.th, -8
  %i.tj = add i64 %i.ti, 32
  %i.tk = call noalias ptr @_emalloc(i64 noundef %i.tj) #20 ; 6 uses
  store i32 1, ptr %i.tk, align 4, !tbaa !15
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 4
  store i32 22, ptr %i.tl, align 4, !tbaa !13
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  store i64 0, ptr %i.tm, align 8, !tbaa !95
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tk, i64 16
  store i64 %i.th, ptr %i.tn, align 8, !tbaa !20
  %i.to = getelementptr inbounds nuw i8, ptr %i.tk, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.to, ptr nonnull align 8 %i.tc, i64 %i.th, i1 false)
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 %i.th
  store i8 0, ptr %i.tp, align 1, !tbaa !13
  br label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  %i.tq = load i32, ptr %.1737, align 8, !tbaa !15 ; 2 uses
  %i.tr = icmp ugt i32 %i.tq, 1
  br i1 %i.tr, label %zend_string_alloc.exit1223, label %._crit_edge252

._crit_edge252:                                   ; preds = %bb.fo
  %.pre253 = load i64, ptr %i.ta, align 8, !tbaa !20
  br label %bb.fp

zend_string_alloc.exit1223:                       ; preds = %bb.fo
  %i.ts = add i32 %i.tq, -1
  store i32 %i.ts, ptr %.1737, align 8, !tbaa !15
  %i.tt = load i64, ptr %i.ta, align 8, !tbaa !20 ; 5 uses
  %i.tu = and i64 %i.tt, -8
  %i.tv = add i64 %i.tu, 32
  %i.tw = call noalias ptr @_emalloc(i64 noundef %i.tv) #20 ; 6 uses
  store i32 1, ptr %i.tw, align 4, !tbaa !15
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 4
  store i32 22, ptr %i.tx, align 4, !tbaa !13
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tw, i64 8
  store i64 0, ptr %i.ty, align 8, !tbaa !95
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tw, i64 16
  store i64 %i.tt, ptr %i.tz, align 8, !tbaa !20
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tw, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ua, ptr nonnull align 8 %i.tc, i64 %i.tt, i1 false)
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 %i.tt
  store i8 0, ptr %i.ub, align 1, !tbaa !13
  br label %bb.fp

bb.fp:                                            ; preds = %._crit_edge252, %zend_string_alloc.exit1223, %zend_string_alloc.exit
  %i.uc = phi i64 [ %i.th, %zend_string_alloc.exit ], [ %i.tt, %zend_string_alloc.exit1223 ], [ %.pre253, %._crit_edge252 ]
  %.2738 = phi ptr [ %i.tk, %zend_string_alloc.exit ], [ %i.tw, %zend_string_alloc.exit1223 ], [ %.1737, %._crit_edge252 ] ; 8 uses
  %.2738195 = ptrtoaddr ptr %.2738 to i64         ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.2738, i64 24 ; 19 uses
  call void @zend_str_tolower(ptr noundef nonnull %i.ud, i64 noundef %i.uc) #18
  %i.ue = and i32 %6, 5
  %or.cond24.not = icmp eq i32 %i.ue, 0
  br i1 %or.cond24.not, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %bb.fp
  call fastcc void @strip_header(ptr noundef %i.td, ptr noundef nonnull %i.ud, ptr noundef nonnull @.str.31)
  call fastcc void @strip_header(ptr noundef %i.td, ptr noundef nonnull %i.ud, ptr noundef nonnull @.str.32)
  br label %bb.fr

bb.fr:                                            ; preds = %bb.fq, %bb.fp
  %i.uf = call fastcc zeroext i1 @check_has_header(ptr noundef nonnull %i.ud, ptr noundef nonnull @.str.33)
  %spec.select = zext i1 %i.uf to i32             ; 2 uses
  %i.ug = call fastcc zeroext i1 @check_has_header(ptr noundef nonnull %i.ud, ptr noundef nonnull @.str.34)
  %i.uh = or disjoint i32 %spec.select, 2
  %.1710 = select i1 %i.ug, i32 %i.uh, i32 %spec.select ; 2 uses
  %i.ui = call fastcc zeroext i1 @check_has_header(ptr noundef nonnull %i.ud, ptr noundef nonnull @.str.35)
  %i.uj = or disjoint i32 %.1710, 8
  %.2711 = select i1 %i.ui, i32 %i.uj, i32 %.1710 ; 2 uses
  %i.uk = call fastcc zeroext i1 @check_has_header(ptr noundef nonnull %i.ud, ptr noundef nonnull @.str.36)
  %i.ul = or disjoint i32 %.2711, 4
  %.3712 = select i1 %i.uk, i32 %i.ul, i32 %.2711 ; 2 uses
  %i.um = call fastcc zeroext i1 @check_has_header(ptr noundef nonnull %i.ud, ptr noundef nonnull @.str.31)
  %i.un = or i32 %.3712, 16
  %.4713 = select i1 %i.um, i32 %i.un, i32 %.3712 ; 2 uses
  %i.uo = call fastcc zeroext i1 @check_has_header(ptr noundef nonnull %i.ud, ptr noundef nonnull @.str.32)
  %i.up = or i32 %.4713, 32
  %.5714 = select i1 %i.uo, i32 %i.up, i32 %.4713 ; 2 uses
  %i.uq = call fastcc zeroext i1 @check_has_header(ptr noundef nonnull %i.ud, ptr noundef nonnull @.str.37)
  %i.ur = or i32 %.5714, 64
  %.6715 = select i1 %i.uq, i32 %i.ur, i32 %.5714 ; 6 uses
  %or.cond26 = and i1 %i.dy, %.0678.shrunk815
  br i1 %or.cond26, label %bb.fs, label %.thread51

bb.fs:                                            ; preds = %bb.fr
  %i.us = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ud, ptr noundef nonnull dereferenceable(1) @.str.38) #19 ; 9 uses
  %i.ut = ptrtoaddr ptr %i.us to i64              ; 2 uses
  %.not853 = icmp eq ptr %i.us, null
  br i1 %.not853, label %.thread51, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.uu = icmp eq ptr %i.us, %i.ud
  br i1 %i.uu, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.uv = getelementptr inbounds i8, ptr %i.us, i64 -1
  %i.uw = load i8, ptr %i.uv, align 1, !tbaa !13
  %i.ux = icmp eq i8 %i.uw, 10
  br i1 %i.ux, label %bb.fv, label %.thread51

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.uy = getelementptr inbounds nuw i8, ptr %i.us, i64 20
  %i.uz = icmp ugt ptr %i.us, %i.ud
  br i1 %i.uz, label %.lr.ph155.preheader, label %.critedge

.lr.ph155.preheader:                              ; preds = %bb.fv
  %i.va = add i64 %.2738195, 24
  %i.vb = sub i64 %i.va, %i.ut
  %scevgep = getelementptr i8, ptr %i.us, i64 %i.vb
  br label %.lr.ph155

.lr.ph155:                                        ; preds = %.lr.ph155.preheader, %.critedge28
  %.0681153 = phi ptr [ %i.vc, %.critedge28 ], [ %i.us, %.lr.ph155.preheader ] ; 2 uses
  %i.vc = getelementptr inbounds i8, ptr %.0681153, i64 -1 ; 3 uses
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !13
  switch i8 %i.vd, label %.critedge.loopexit [
    i8 32, label %.critedge28
    i8 9, label %.critedge28
  ]

.critedge28:                                      ; preds = %.lr.ph155, %.lr.ph155
  %i.ve = icmp ugt ptr %i.vc, %i.ud
  br i1 %i.ve, label %.lr.ph155, label %.critedge.loopexit, !llvm.loop !46

.critedge.loopexit:                               ; preds = %.lr.ph155, %.critedge28
  %.0681.lcssa.ph = phi ptr [ %scevgep, %.critedge28 ], [ %.0681153, %.lr.ph155 ] ; 2 uses
  %.pre346 = ptrtoaddr ptr %.0681.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.fv
  %.0681.lcssa196.pre-phi = phi i64 [ %.pre346, %.critedge.loopexit ], [ %i.ut, %bb.fv ]
  %.0681.lcssa = phi ptr [ %.0681.lcssa.ph, %.critedge.loopexit ], [ %i.us, %bb.fv ] ; 6 uses
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fx, %.critedge
  %.0679 = phi ptr [ %i.uy, %.critedge ], [ %i.vg, %bb.fx ] ; 3 uses
  %i.vf = load i8, ptr %.0679, align 1, !tbaa !13 ; 2 uses
  switch i8 %i.vf, label %bb.fx [
    i8 0, label %.critedge30.preheader
    i8 13, label %.critedge30.preheader
    i8 10, label %.critedge30.preheader
  ]

.critedge30.preheader:                            ; preds = %bb.fw, %bb.fw, %bb.fw
  br label %.critedge30

bb.fx:                                            ; preds = %bb.fw
  %i.vg = getelementptr inbounds nuw i8, ptr %.0679, i64 1
  br label %bb.fw, !llvm.loop !47

.critedge30:                                      ; preds = %.critedge30.preheader, %.critedge32
  %i.vh = phi i8 [ %.pre254, %.critedge32 ], [ %i.vf, %.critedge30.preheader ]
  %.1680 = phi ptr [ %i.vi, %.critedge32 ], [ %.0679, %.critedge30.preheader ] ; 3 uses
  switch i8 %i.vh, label %bb.ga [
    i8 13, label %.critedge32
    i8 10, label %.critedge32
    i8 0, label %bb.fy
  ]

.critedge32:                                      ; preds = %.critedge30, %.critedge30
  %i.vi = getelementptr inbounds nuw i8, ptr %.1680, i64 1 ; 2 uses
  %.pre254 = load i8, ptr %i.vi, align 1, !tbaa !13
  br label %.critedge30, !llvm.loop !48

bb.fy:                                            ; preds = %.critedge30
  %i.vj = icmp eq ptr %.0681.lcssa, %i.ud
  br i1 %i.vj, label %bb.fz, label %.preheader127

.preheader127:                                    ; preds = %bb.fy
  %i.vk = icmp ugt ptr %.0681.lcssa, %i.ud
  br i1 %i.vk, label %.lr.ph159.preheader, label %.critedge34

.lr.ph159.preheader:                              ; preds = %.preheader127
  %i.vl = add i64 %.2738195, 24
  %i.vm = sub i64 %i.vl, %.0681.lcssa196.pre-phi
  %scevgep197 = getelementptr i8, ptr %.0681.lcssa, i64 %i.vm
  br label %.lr.ph159

bb.fz:                                            ; preds = %bb.fy
  call void @_efree(ptr noundef %i.td) #18
  br label %.thread51

.lr.ph159:                                        ; preds = %.lr.ph159.preheader, %.critedge36
  %.1682158 = phi ptr [ %i.vn, %.critedge36 ], [ %.0681.lcssa, %.lr.ph159.preheader ] ; 2 uses
  %i.vn = getelementptr inbounds i8, ptr %.1682158, i64 -1 ; 3 uses
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !13
  switch i8 %i.vo, label %.critedge34 [
    i8 13, label %.critedge36
    i8 10, label %.critedge36
  ]

.critedge36:                                      ; preds = %.lr.ph159, %.lr.ph159
  %i.vp = icmp ugt ptr %i.vn, %i.ud
  br i1 %i.vp, label %.lr.ph159, label %.critedge34, !llvm.loop !49

.critedge34:                                      ; preds = %.critedge36, %.lr.ph159, %.preheader127
  %.1682.lcssa = phi ptr [ %.0681.lcssa, %.preheader127 ], [ %.1682158, %.lr.ph159 ], [ %scevgep197, %.critedge36 ]
  %i.vq = ptrtoint ptr %.1682.lcssa to i64
  %i.vr = ptrtoint ptr %i.ud to i64
  %i.vs = sub i64 %i.vq, %i.vr
  %i.vt = getelementptr inbounds i8, ptr %i.td, i64 %i.vs
  store i8 0, ptr %i.vt, align 1, !tbaa !13
  br label %.thread51

bb.ga:                                            ; preds = %.critedge30
  %i.vu = ptrtoint ptr %.0681.lcssa to i64
  %i.vv = ptrtoint ptr %i.ud to i64               ; 2 uses
  %i.vw = sub i64 %i.vu, %i.vv
  %i.vx = getelementptr inbounds i8, ptr %i.td, i64 %i.vw
  %i.vy = ptrtoint ptr %.1680 to i64
  %i.vz = sub i64 %i.vy, %i.vv
  %i.wa = getelementptr inbounds i8, ptr %i.td, i64 %i.vz
  %i.wb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1680) #19
  %i.wc = add i64 %i.wb, 1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.vx, ptr align 1 %i.wa, i64 %i.wc, i1 false)
  br label %.thread51

.thread51:                                        ; preds = %bb.ga, %.critedge34, %bb.fz, %bb.fr, %bb.fs, %bb.fu, %bb.fm
  %.270358 = phi ptr [ null, %bb.fm ], [ %i.td, %bb.fs ], [ %i.td, %bb.fu ], [ %i.td, %bb.fr ], [ %i.td, %bb.ga ], [ null, %bb.fz ], [ %i.td, %.critedge34 ] ; 2 uses
  %.771657 = phi i32 [ 0, %bb.fm ], [ %.6715, %bb.fs ], [ %.6715, %bb.fu ], [ %.6715, %bb.fr ], [ %.6715, %bb.ga ], [ %.6715, %bb.fz ], [ %.6715, %.critedge34 ] ; 3 uses
  %.373956 = phi ptr [ %.1737, %bb.fm ], [ %.2738, %bb.fs ], [ %.2738, %bb.fu ], [ %.2738, %bb.fr ], [ %.2738, %bb.ga ], [ %.2738, %bb.fz ], [ %.2738, %.critedge34 ] ; 4 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %.373956, i64 4
  %i.we = load i32, ptr %i.wd, align 4, !tbaa !13
  %i.wf = and i32 %i.we, 64
  %.not.i965 = icmp eq i32 %i.wf, 0
  br i1 %.not.i965, label %bb.gb, label %zend_string_release_ex.exit966

bb.gb:                                            ; preds = %.thread51
  %i.wg = load i32, ptr %.373956, align 4, !tbaa !15 ; 2 uses
  %i.wh = icmp ne i32 %i.wg, 0
  call void @llvm.assume(i1 %i.wh)
  %i.wi = add i32 %i.wg, -1                       ; 2 uses
  store i32 %i.wi, ptr %.373956, align 4, !tbaa !15
  %i.wj = icmp eq i32 %i.wi, 0
  br i1 %i.wj, label %bb.gc, label %zend_string_release_ex.exit966

bb.gc:                                            ; preds = %bb.gb
  call void @_efree(ptr noundef nonnull %.373956) #18
  br label %zend_string_release_ex.exit966

zend_string_release_ex.exit966:                   ; preds = %bb.gc, %bb.gb, %.thread51
  %i.wk = and i32 %.771657, 4
  %i.wl = icmp eq i32 %i.wk, 0
  br i1 %i.wl, label %zend_string_release_ex.exit966.thread, label %bb.hb

zend_string_release_ex.exit966.thread:            ; preds = %bb.ew, %bb.fj, %bb.fl, %bb.eu, %bb.ev, %zend_string_release_ex.exit966
  %.370470 = phi ptr [ %.270358, %zend_string_release_ex.exit966 ], [ null, %bb.ev ], [ null, %bb.eu ], [ null, %bb.fl ], [ null, %bb.fj ], [ null, %bb.ew ] ; 2 uses
  %.871768 = phi i32 [ %.771657, %zend_string_release_ex.exit966 ], [ 0, %bb.ev ], [ 0, %bb.eu ], [ 0, %bb.fl ], [ 0, %bb.fj ], [ 0, %bb.ew ] ; 2 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !96
  %.not858 = icmp eq ptr %i.wn, null
  br i1 %.not858, label %bb.hb, label %bb.gd

bb.gd:                                            ; preds = %zend_string_release_ex.exit966.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %i.wo = load ptr, ptr %i.wm, align 8, !tbaa !96 ; 2 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 24
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  %i.wr = load i64, ptr %i.wq, align 8, !tbaa !20
  %i.ws = call i64 @php_url_decode(ptr noundef nonnull %i.wp, i64 noundef %i.wr) #18 ; 4 uses
  %i.wt = load ptr, ptr %i.wm, align 8, !tbaa !96 ; 2 uses
  %i.wu = getelementptr inbounds nuw i8, ptr %i.wt, i64 16
  store i64 %i.ws, ptr %i.wu, align 8, !tbaa !20
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wt, i64 24
  %i.ww = load ptr, ptr %14, align 8, !tbaa !28   ; 3 uses
  %.not.i.i1208 = icmp eq ptr %i.ww, null
  br i1 %.not.i.i1208, label %bb.gf, label %bb.ge, !prof !29

bb.ge:                                            ; preds = %bb.gd
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 16
  %i.wy = load i64, ptr %i.wx, align 8, !tbaa !20 ; 2 uses
  %i.wz = add i64 %i.wy, %i.ws                    ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !30
  %.not12.i.i1209 = icmp ult i64 %i.wz, %i.xb
  br i1 %.not12.i.i1209, label %bb.gg, label %bb.gf, !prof !22

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %.0.i.i1210 = phi i64 [ %i.ws, %bb.gd ], [ %i.wz, %bb.ge ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %14, i64 noundef %.0.i.i1210) #18
  %.pre255 = load ptr, ptr %14, align 8, !tbaa !28 ; 2 uses
  %.phi.trans.insert256 = getelementptr inbounds nuw i8, ptr %.pre255, i64 16
  %.pre257 = load i64, ptr %.phi.trans.insert256, align 8, !tbaa !20
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %i.xc = phi i64 [ %i.wy, %bb.ge ], [ %.pre257, %bb.gf ]
  %i.xd = phi ptr [ %i.ww, %bb.ge ], [ %.pre255, %bb.gf ]
  %.1.i.i1211 = phi i64 [ %i.wz, %bb.ge ], [ %.0.i.i1210, %bb.gf ] ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 24
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 %i.xc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xf, ptr nonnull align 8 %i.wv, i64 %i.ws, i1 false)
  %i.xg = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 16
  store i64 %.1.i.i1211, ptr %i.xh, align 8, !tbaa !20
  %i.xi = add i64 %.1.i.i1211, 1                  ; 5 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 4 uses
  %i.xk = load i64, ptr %i.xj, align 8, !tbaa !30
  %.not12.i.i1147 = icmp ult i64 %i.xi, %i.xk
  br i1 %.not12.i.i1147, label %smart_str_appendc_ex.exit1150, label %bb.gh, !prof !22

bb.gh:                                            ; preds = %bb.gg
  call void @smart_str_erealloc(ptr noundef nonnull %14, i64 noundef %i.xi) #18
  %.pre258 = load ptr, ptr %14, align 8, !tbaa !28
  br label %smart_str_appendc_ex.exit1150

smart_str_appendc_ex.exit1150:                    ; preds = %bb.gg, %bb.gh
  %i.xl = phi ptr [ %i.xg, %bb.gg ], [ %.pre258, %bb.gh ]
  %i.xm = getelementptr i8, ptr %i.xl, i64 23
  %i.xn = getelementptr i8, ptr %i.xm, i64 %i.xi
  store i8 58, ptr %i.xn, align 1, !tbaa !13
  %i.xo = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 16
  store i64 %i.xi, ptr %i.xp, align 8, !tbaa !20
  %i.xq = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.xr = load ptr, ptr %i.xq, align 8, !tbaa !97 ; 3 uses
  %.not859 = icmp eq ptr %i.xr, null
  br i1 %.not859, label %smart_str_0.exit.i, label %bb.gi

bb.gi:                                            ; preds = %smart_str_appendc_ex.exit1150
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 24
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xr, i64 16
  %i.xu = load i64, ptr %i.xt, align 8, !tbaa !20
  %i.xv = call i64 @php_url_decode(ptr noundef nonnull %i.xs, i64 noundef %i.xu) #18 ; 4 uses
  %i.xw = load ptr, ptr %i.xq, align 8, !tbaa !97 ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 16
  store i64 %i.xv, ptr %i.xx, align 8, !tbaa !20
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 24
  %i.xz = load ptr, ptr %14, align 8, !tbaa !28   ; 3 uses
  %.not.i.i1213 = icmp eq ptr %i.xz, null
  br i1 %.not.i.i1213, label %bb.gk, label %bb.gj, !prof !29

bb.gj:                                            ; preds = %bb.gi
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 16
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !20 ; 2 uses
  %i.yc = add i64 %i.yb, %i.xv                    ; 3 uses
  %i.yd = load i64, ptr %i.xj, align 8, !tbaa !30
  %.not12.i.i1214 = icmp ult i64 %i.yc, %i.yd
  br i1 %.not12.i.i1214, label %.thread72, label %bb.gk, !prof !22

bb.gk:                                            ; preds = %bb.gj, %bb.gi
  %.0.i.i1215 = phi i64 [ %i.xv, %bb.gi ], [ %i.yc, %bb.gj ] ; 2 uses
  call void @smart_str_erealloc(ptr noundef nonnull %14, i64 noundef %.0.i.i1215) #18
  %.pre259 = load ptr, ptr %14, align 8, !tbaa !28 ; 2 uses
  %.phi.trans.insert260 = getelementptr inbounds nuw i8, ptr %.pre259, i64 16
  %.pre261 = load i64, ptr %.phi.trans.insert260, align 8, !tbaa !20
  br label %.thread72

.thread72:                                        ; preds = %bb.gk, %bb.gj
  %i.ye = phi i64 [ %i.yb, %bb.gj ], [ %.pre261, %bb.gk ]
  %i.yf = phi ptr [ %i.xz, %bb.gj ], [ %.pre259, %bb.gk ]
  %.1.i.i1216 = phi i64 [ %i.yc, %bb.gj ], [ %.0.i.i1215, %bb.gk ] ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 24
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 %i.ye
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yh, ptr nonnull align 8 %i.xy, i64 %i.xv, i1 false)
  %i.yi = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 16
  store i64 %.1.i.i1216, ptr %i.yj, align 8, !tbaa !20
  br label %smart_str_0.exit.i

smart_str_0.exit.i:                               ; preds = %smart_str_appendc_ex.exit1150, %.thread72
  %i.yk = phi i64 [ %.1.i.i1216, %.thread72 ], [ %i.xi, %smart_str_appendc_ex.exit1150 ]
  %i.yl = phi ptr [ %i.yi, %.thread72 ], [ %i.xo, %smart_str_appendc_ex.exit1150 ]
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 24
  %i.yn = getelementptr inbounds nuw i8, ptr %i.ym, i64 %i.yk
  store i8 0, ptr %i.yn, align 1, !tbaa !13
  %i.yo = load ptr, ptr %14, align 8, !tbaa !28, !nonnull !59, !noundef !59 ; 8 uses
  %i.yp = load i64, ptr %i.xj, align 8, !tbaa !30
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 16 ; 2 uses
  %i.yr = load i64, ptr %i.yq, align 8, !tbaa !20 ; 7 uses
  %i.ys = icmp ugt i64 %i.yp, %i.yr
  br i1 %i.ys, label %bb.gl, label %smart_str_extract_ex.exit

bb.gl:                                            ; preds = %smart_str_0.exit.i
end_hunk_0
