inline.NumInlined: 71
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@getparameter:bb.a
  %i.se = load i8, ptr @feature_altsvc, align 1, !tbaa !33, !range !39, !noundef !40
  %i.sf = trunc nuw i8 %i.se to i1
  br i1 %i.sf, label %bb.hh, label %opt_string.exit

bb.hh:                                            ; preds = %bb.hg
  %i.sg = call fastcc i32 @getstr(ptr noundef nonnull %i.dz, ptr noundef nonnull %.7117, i1 noundef zeroext true)
  br label %opt_string.exit

bb.hi:                                            ; preds = %bb.eu
  %i.sh = load i8, ptr @feature_hsts, align 1, !tbaa !33, !range !39, !noundef !40
  %i.si = trunc nuw i8 %i.sh to i1
  br i1 %i.si, label %bb.hj, label %opt_string.exit

bb.hj:                                            ; preds = %bb.hi
  %i.sj = call fastcc i32 @getstr(ptr noundef nonnull %i.dy, ptr noundef nonnull %.7117, i1 noundef zeroext true)
  br label %opt_string.exit

bb.hk:                                            ; preds = %bb.eu
  %i.sk = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.7117, i32 noundef 61) #15
  %.not301.i = icmp eq ptr %i.sk, null
  br i1 %.not301.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.sl = call i32 @add2list(ptr noundef nonnull %i.dw, ptr noundef nonnull %.7117) #16
  br label %opt_string.exit

bb.hm:                                            ; preds = %bb.hk
  %i.sm = call i32 @add2list(ptr noundef nonnull %i.dx, ptr noundef nonnull %.7117) #16
  br label %opt_string.exit

bb.hn:                                            ; preds = %bb.eu
  %i.sn = call fastcc i32 @getstr(ptr noundef nonnull %i.dv, ptr noundef nonnull %.7117, i1 noundef zeroext false)
  br label %opt_string.exit

bb.ho:                                            ; preds = %bb.eu
  %i.so = call fastcc i32 @parse_continue_at(ptr noundef %3, ptr noundef nonnull %.7117)
  br label %opt_string.exit

bb.hp:                                            ; preds = %bb.eu, %bb.eu, %bb.eu, %bb.eu, %bb.eu, %bb.eu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store ptr null, ptr %i.c, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i64 0, ptr %i.d, align 8, !tbaa !14
  %i.sp = icmp eq i16 %.3.val146, 33
  br i1 %i.sp, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.sq = call fastcc i32 @data_urlencode(ptr noundef nonnull %.7117, ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %.not57.i.i = icmp eq i32 %i.sq, 0
  br i1 %.not57.i.i, label %.thread.i.i164, label %set_data.exit.i

bb.hr:                                            ; preds = %bb.hp
  %i.sr = load i8, ptr %.7117, align 1, !tbaa !11
  %i.ss = icmp eq i8 %i.sr, 64
  %i.st = icmp ne i16 %.3.val146, 32
  %or.cond.i.i = and i1 %i.st, %i.ss
  br i1 %or.cond.i.i, label %sub_0.i.i, label %getstr.exit.i.i163

sub_0.i.i:                                        ; preds = %bb.hr
  %i.su = getelementptr inbounds nuw i8, ptr %.7117, i64 1 ; 3 uses
  %i.sv = load i8, ptr %i.su, align 1             ; 2 uses
  %i.sw = zext i8 %i.sv to i32
  %i.sx = sub nsw i32 45, %i.sw
  %.not.i324.i = icmp eq i8 %i.sv, 45
  br i1 %.not.i324.i, label %sub_1.i.i, label %.tail.i.i

sub_1.i.i:                                        ; preds = %sub_0.i.i
  %i.sy = getelementptr inbounds nuw i8, ptr %.7117, i64 2
  %i.sz = load i8, ptr %i.sy, align 1
  %i.ta = zext i8 %i.sz to i32
  %i.tb = sub nsw i32 0, %i.ta
  br label %.tail.i.i

.tail.i.i:                                        ; preds = %sub_1.i.i, %sub_0.i.i
  %i.tc = phi i32 [ %i.sx, %sub_0.i.i ], [ %i.tb, %sub_1.i.i ]
  %.not49.i.i = icmp eq i32 %i.tc, 0
  br i1 %.not49.i.i, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %.tail.i.i
  %i.td = load ptr, ptr @stdin, align 8, !tbaa !90
  br label %bb.hv

bb.ht:                                            ; preds = %.tail.i.i
  %i.te = call noalias ptr @fopen(ptr noundef nonnull %i.su, ptr noundef nonnull @.str.353) ; 2 uses
  %.not50.i.i = icmp eq ptr %i.te, null
  br i1 %.not50.i.i, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  call void (ptr, ...) @errorf(ptr noundef nonnull @.str.354, ptr noundef nonnull %i.su) #16
  br label %set_data.exit.i

bb.hv:                                            ; preds = %bb.ht, %bb.hs
  %.040.i.i = phi ptr [ %i.te, %bb.ht ], [ %i.td, %bb.hs ] ; 5 uses
  switch i16 %.3.val146, label %bb.hx [
    i16 103, label %bb.hw
    i16 31, label %bb.hw
  ]

bb.hw:                                            ; preds = %bb.hv, %bb.hv
  %i.tf = call i32 @file2memory(ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %.040.i.i) #16
  br label %bb.hz

bb.hx:                                            ; preds = %bb.hv
  %i.tg = call i32 @file2string(ptr noundef nonnull %i.c, ptr noundef %.040.i.i) #16 ; 2 uses
  %i.th = load ptr, ptr %i.c, align 8, !tbaa !8   ; 2 uses
  %.not51.i.i = icmp eq ptr %i.th, null
  br i1 %.not51.i.i, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.ti = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.th) #15
  store i64 %i.ti, ptr %i.d, align 8, !tbaa !14
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx, %bb.hw
  %.0.i325.i = phi i32 [ %i.tf, %bb.hw ], [ %i.tg, %bb.hy ], [ %i.tg, %bb.hx ] ; 2 uses
  %.not52.i.i = icmp eq ptr %.040.i.i, null
  %i.tj = load ptr, ptr @stdin, align 8
  %.not53.i.i = icmp eq ptr %.040.i.i, %i.tj
  %or.cond63.i.i = select i1 %.not52.i.i, i1 true, i1 %.not53.i.i
  br i1 %or.cond63.i.i, label %bb.ib, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.tk = call i32 @fclose(ptr noundef nonnull %.040.i.i) ; 0 uses
  br label %bb.ib

bb.ib:                                            ; preds = %bb.ia, %bb.hz
  %.not54.i.i = icmp eq i32 %.0.i325.i, 0
  br i1 %.not54.i.i, label %bb.ic, label %set_data.exit.i

bb.ic:                                            ; preds = %bb.ib
  %i.tl = load ptr, ptr %i.c, align 8, !tbaa !8
  %.not55.i.i = icmp eq ptr %i.tl, null
  br i1 %.not55.i.i, label %bb.id, label %bb.if

bb.id:                                            ; preds = %bb.ic
  %i.tm = call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str.303) #16 ; 2 uses
  store ptr %i.tm, ptr %i.c, align 8, !tbaa !8
  %.not56.i.i = icmp eq ptr %i.tm, null
  br i1 %.not56.i.i, label %set_data.exit.i, label %bb.if

getstr.exit.i.i163:                               ; preds = %bb.hr
  %i.tn = call noalias ptr @strdup(ptr noundef nonnull readonly %.7117) #16 ; 3 uses
  store ptr %i.tn, ptr %i.c, align 8, !tbaa !8
  %.not10.i.not.i.i = icmp eq ptr %i.tn, null
  br i1 %.not10.i.not.i.i, label %set_data.exit.i, label %bb.ie

bb.ie:                                            ; preds = %getstr.exit.i.i163
  %i.to = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.tn) #15
  store i64 %i.to, ptr %i.d, align 8, !tbaa !14
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id, %bb.ic
  %i.tp = icmp eq i16 %.3.val146, 103
  br i1 %i.tp, label %.thread67.i.i, label %.thread.i.i164

.thread67.i.i:                                    ; preds = %bb.if
  %i.tq = load i64, ptr %i.br, align 1
  %i.tr = or i64 %i.tq, 17592186044416
  store i64 %i.tr, ptr %i.br, align 1
  %i.ts = call i64 @curlx_dyn_len(ptr noundef %3) #16 ; 0 uses
  br label %.thread70.i.i

.thread.i.i164:                                   ; preds = %bb.if, %bb.hq
  %i.tt = call i64 @curlx_dyn_len(ptr noundef %3) #16
  %.not58.i.i = icmp eq i64 %i.tt, 0
  br i1 %.not58.i.i, label %.thread70.i.i, label %bb.ig

bb.ig:                                            ; preds = %.thread.i.i164
  %i.tu = call i32 @curlx_dyn_addn(ptr noundef %3, ptr noundef nonnull @.str.355, i64 noundef 1) #16
  %.not60.i.i = icmp eq i32 %i.tu, 0
  br i1 %.not60.i.i, label %.thread70.i.i, label %bb.ih

.thread70.i.i:                                    ; preds = %bb.ig, %.thread.i.i164, %.thread67.i.i
  %i.tv = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.tw = load i64, ptr %i.d, align 8, !tbaa !14
  %i.tx = call i32 @curlx_dyn_addn(ptr noundef %3, ptr noundef %i.tv, i64 noundef %i.tw) #16
  %.not62.i.i = icmp eq i32 %i.tx, 0
  %spec.select66.i.i = select i1 %.not62.i.i, i32 0, i32 15
  br label %bb.ih

bb.ih:                                            ; preds = %.thread70.i.i, %bb.ig
  %.3.i.i = phi i32 [ 15, %bb.ig ], [ %spec.select66.i.i, %.thread70.i.i ]
  %i.ty = load ptr, ptr %i.c, align 8, !tbaa !8
  call void @free(ptr noundef %i.ty) #16
  store ptr null, ptr %i.c, align 8, !tbaa !8
  %i.tz = call ptr @curlx_dyn_ptr(ptr noundef %3) #16
  store ptr %i.tz, ptr %i.du, align 8, !tbaa !91
  br label %set_data.exit.i

set_data.exit.i:                                  ; preds = %bb.ih, %getstr.exit.i.i163, %bb.id, %bb.ib, %bb.hu, %bb.hq
  %.041.i.i = phi i32 [ 15, %bb.id ], [ %.3.i.i, %bb.ih ], [ %i.sq, %bb.hq ], [ %.0.i325.i, %bb.ib ], [ 20, %bb.hu ], [ 15, %getstr.exit.i.i163 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %opt_string.exit

bb.ii:                                            ; preds = %bb.eu
  %i.ua = call fastcc i32 @url_query(ptr noundef nonnull %.7117, ptr noundef %3)
  br label %opt_string.exit

bb.ij:                                            ; preds = %bb.eu
  %i.ub = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.7117) #15 ; 3 uses
  %i.uc = icmp ugt i64 %i.ub, 4
  br i1 %i.uc, label %bb.ik, label %bb.im

bb.ik:                                            ; preds = %bb.ij
  %13 = add i64 %i.ub, -5                         ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %.7117, i64 %13
  %i.ue = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.305, ptr noundef nonnull dereferenceable(1) %i.ud) #15
  %.not299.i = icmp eq i32 %i.ue, 0
  br i1 %.not299.i, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  %i.uf = load i64, ptr %i.br, align 1
  %i.ug = or i64 %i.uf, 131072
  br label %bb.in

bb.im:                                            ; preds = %bb.ik, %bb.ij
  %i.uh = load i64, ptr %i.br, align 1
  %i.ui = and i64 %i.uh, -131073
  br label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il
  %storemerge = phi i64 [ %i.ui, %bb.im ], [ %i.ug, %bb.il ]
  %.0.i162 = phi i64 [ %i.ub, %bb.im ], [ %13, %bb.il ] ; 2 uses
  store i64 %storemerge, ptr %i.br, align 1
  %.not300.i = icmp eq i64 %.0.i162, 0
  br i1 %.not300.i, label %bb.ip, label %bb.io

bb.io:                                            ; preds = %bb.in
  %i.uj = call fastcc i32 @getstrn(ptr noundef nonnull %i.dt, ptr noundef nonnull %.7117, i64 noundef %.0.i162)
  br label %opt_string.exit

bb.ip:                                            ; preds = %bb.in
  %i.uk = load ptr, ptr %i.dt, align 8, !tbaa !92
  call void @free(ptr noundef %i.uk) #16
  store ptr null, ptr %i.dt, align 8, !tbaa !92
  br label %opt_string.exit

bb.iq:                                            ; preds = %bb.eu
  %i.ul = call fastcc i32 @getstr(ptr noundef nonnull %i.ds, ptr noundef nonnull %.7117, i1 noundef zeroext false)
  br label %opt_string.exit

bb.ir:                                            ; preds = %bb.eu
  %i.um = call fastcc i32 @getstr(ptr noundef nonnull %i.dr, ptr noundef nonnull %.7117, i1 noundef zeroext false)
  br label %opt_string.exit

bb.is:                                            ; preds = %bb.eu
  %i.un = call fastcc i32 @getstr(ptr noundef nonnull %i.dq, ptr noundef nonnull %.7117, i1 noundef zeroext false)
  br label %opt_string.exit

bb.it:                                            ; preds = %bb.eu
  %i.uo = call fastcc i32 @getstr(ptr noundef nonnull %i.dp, ptr noundef nonnull %.7117, i1 noundef zeroext false) ; 2 uses
  %.not296.i = icmp eq i32 %i.uo, 0
  br i1 %.not296.i, label %bb.iu, label %opt_string.exit

bb.iu:                                            ; preds = %bb.it
  %i.up = load ptr, ptr %i.dp, align 8, !tbaa !93 ; 2 uses
  %.not297.i = icmp eq ptr %i.up, null
  br i1 %.not297.i, label %opt_string.exit, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %i.uq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.up, ptr noundef nonnull dereferenceable(5) @.str.306) #15
  %.not298.i = icmp eq i32 %i.uq, 0
  %spec.select320.i = select i1 %.not298.i, i32 8, i32 0
  br label %opt_string.exit

bb.iw:                                            ; preds = %bb.eu
  %i.ur = call fastcc i32 @parse_ech(ptr noundef %3, ptr noundef nonnull %.7117)
  br label %opt_string.exit

bb.ix:                                            ; preds = %bb.eu
  %i.us = call fastcc i32 @getstr(ptr noundef nonnull %i.do, ptr noundef nonnull %.7117, i1 noundef zeroext false)
  br label %opt_string.exit

bb.iy:                                            ; preds = %bb.eu
  %i.ut = call fastcc i32 @getstr(ptr noundef nonnull %i.dn, ptr noundef nonnull %.7117, i1 noundef zeroext false) ; 2 uses
  %.not293.i = icmp eq i32 %i.ut, 0
  br i1 %.not293.i, label %bb.iz, label %opt_string.exit

bb.iz:                                            ; preds = %bb.iy
  %i.uu = load ptr, ptr %i.dn, align 8, !tbaa !94 ; 2 uses
  %.not294.i = icmp eq ptr %i.uu, null
  br i1 %.not294.i, label %bb.jb, label %bb.ja

bb.ja:                                            ; preds = %bb.iz
  %i.uv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.uu) #15
  %.not295.i = icmp eq i64 %i.uv, 32
  br i1 %.not295.i, label %opt_string.exit, label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  br label %opt_string.exit

bb.jc:                                            ; preds = %bb.eu
  %i.uw = call fastcc i32 @getstr(ptr noundef nonnull %i.dm, ptr noundef nonnull %.7117, i1 noundef zeroext false)
  br label %opt_string.exit

bb.jd:                                            ; preds = %bb.eu
  %i.ux = load i8, ptr @feature_tls_srp, align 1, !tbaa !33, !range !39, !noundef !40
  %i.uy = trunc nuw i8 %i.ux to i1
  br i1 %i.uy, label %bb.je, label %opt_string.exit

bb.je:                                            ; preds = %bb.jd
  %i.uz = call fastcc i32 @getstr(ptr noundef nonnull %i.dl, ptr noundef nonnull %.7117, i1 noundef zeroext false)
  br label %opt_string.exit

bb.jf:                                            ; preds = %bb.eu
  %i.va = load i8, ptr @feature_tls_srp, align 1, !tbaa !33, !range !39, !noundef !40
  %i.vb = trunc nuw i8 %i.va to i1
  br i1 %i.vb, label %bb.jg, label %opt_string.exit

bb.jg:                                            ; preds = %bb.jf
  %i.vc = call fastcc i32 @getstr(ptr noundef nonnull %i.dk, ptr noundef nonnull %.7117, i1 noundef zeroext true)
  br label %opt_string.exit

bb.jh:                                            ; preds = %bb.eu
  %i.vd = load i8, ptr @feature_tls_srp, align 1, !tbaa !33, !range !39, !noundef !40
  %i.ve = trunc nuw i8 %i.vd to i1
  br i1 %i.ve, label %bb.ji, label %opt_string.exit

bb.ji:                                            ; preds = %bb.jh
  %i.vf = call fastcc i32 @getstr(ptr noundef nonnull %i.dj, ptr noundef nonnull %.7117, i1 noundef zeroext false) ; 2 uses
  %.not290.i = icmp eq i32 %i.vf, 0
  br i1 %.not290.i, label %bb.jj, label %opt_string.exit

bb.jj:                                            ; preds = %bb.ji
  %i.vg = load ptr, ptr %i.dj, align 8, !tbaa !95 ; 2 uses
  %.not291.i = icmp eq ptr %i.vg, null
  br i1 %.not291.i, label %opt_string.exit, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.vh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.vg, ptr noundef nonnull dereferenceable(4) @.str.307) #15
  %.not292.i = icmp eq i32 %i.vh, 0
  %spec.select321.i = select i1 %.not292.i, i32 0, i32 13
  br label %opt_string.exit

bb.jl:                                            ; preds = %bb.eu
  %i.vi = call fastcc i32 @getstr(ptr noundef nonnull %i.di, ptr noundef nonnull %.7117, i1 noundef zeroext false)
  br label %opt_string.exit

bb.jm:                                            ; preds = %bb.eu
  %i.vj = call fastcc i32 @getstr(ptr noundef nonnull %i.dh, ptr noundef nonnull %.7117, i1 noundef zeroext false)
  br label %opt_string.exit

bb.jn:                                            ; preds = %bb.eu
  %i.vk = load i8, ptr @feature_tls_srp, align 1, !tbaa !33, !range !39, !noundef !40
  %i.vl = trunc nuw i8 %i.vk to i1
  br i1 %i.vl, label %bb.jo, label %opt_string.exit

bb.jo:                                            ; preds = %bb.jn
  %i.vm = call fastcc i32 @getstr(ptr noundef nonnull %i.dg, ptr noundef nonnull %.7117, i1 noundef zeroext true)
  br label %opt_string.exit

bb.jp:                                            ; preds = %bb.eu
  %i.vn = load i8, ptr @feature_tls_srp, align 1, !tbaa !33, !range !39, !noundef !40
  %i.vo = trunc nuw i8 %i.vn to i1
  br i1 %i.vo, label %bb.jq, label %opt_string.exit

bb.jq:                                            ; preds = %bb.jp
  %i.vp = call fastcc i32 @getstr(ptr noundef nonnull %i.df, ptr noundef nonnull %.7117, i1 noundef zeroext false)
  br label %opt_string.exit

bb.jr:                                            ; preds = %bb.eu
  %i.vq = load i8, ptr @feature_tls_srp, align 1, !tbaa !33, !range !39, !noundef !40
  %i.vr = trunc nuw i8 %i.vq to i1
  br i1 %i.vr, label %bb.js, label %opt_string.exit

bb.js:                                            ; preds = %bb.jr
  %i.vs = call fastcc i32 @getstr(ptr noundef nonnull %i.de, ptr noundef nonnull %.7117, i1 noundef zeroext false) ; 2 uses
  %.not287.i = icmp eq i32 %i.vs, 0
  br i1 %.not287.i, label %bb.jt, label %opt_string.exit

bb.jt:                                            ; preds = %bb.js
  %i.vt = load ptr, ptr %i.de, align 8, !tbaa !96 ; 2 uses
  %.not288.i = icmp eq ptr %i.vt, null
  br i1 %.not288.i, label %opt_string.exit, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.vu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.vt, ptr noundef nonnull dereferenceable(4) @.str.307) #15
  %.not289.i = icmp eq i32 %i.vu, 0
  %spec.select322.i = select i1 %.not289.i, i32 0, i32 13
  br label %opt_string.exit

bb.jv:                                            ; preds = %bb.eu
  %i.vv = call fastcc i32 @getstr(ptr noundef nonnull %i.dd, ptr noundef nonnull %.7117, i1 noundef zeroext false)
  br label %opt_string.exit

bb.jw:                                            ; preds = %bb.eu
  %i.vw = call fastcc i32 @getstr(ptr noundef nonnull %i.dc, ptr noundef nonnull %.7117, i1 noundef zeroext false)
  br label %opt_string.exit

bb.jx:                                            ; preds = %bb.eu
  %i.vx = call fastcc i32 @getstr(ptr noundef nonnull %i.db, ptr noundef nonnull %.7117, i1 noundef zeroext true)
  br label %opt_string.exit

bb.jy:                                            ; preds = %bb.eu
  %i.vy = call fastcc i32 @getstr(ptr noundef nonnull %i.da, ptr noundef nonnull %.7117, i1 noundef zeroext false)
  br label %opt_string.exit

bb.jz:                                            ; preds = %bb.eu
  %i.vz = call fastcc i32 @getstr(ptr noundef nonnull %i.cz, ptr noundef nonnull %.7117, i1 noundef zeroext true)
  br label %opt_string.exit

bb.ka:                                            ; preds = %bb.eu
  %i.wa = call fastcc i32 @getstr(ptr noundef nonnull %i.cy, ptr noundef nonnull %.7117, i1 noundef zeroext false)
  br label %opt_string.exit

bb.kb:                                            ; preds = %bb.eu
  %i.wb = call fastcc i32 @getstr(ptr noundef nonnull %i.cx, ptr noundef nonnull %.7117, i1 noundef zeroext false)
  br label %opt_string.exit

bb.kc:                                            ; preds = %bb.eu, %bb.eu
  %i.wc = icmp eq i16 %.3.val146, 64
  %i.wd = call i32 @formparse(ptr noundef nonnull %.7117, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cw, i1 noundef zeroext %i.wc) #16
  %.not285.i = icmp eq i32 %i.wd, 0
  br i1 %.not285.i, label %bb.kd, label %opt_string.exit

bb.kd:                                            ; preds = %bb.kc
  %i.we = call i32 @SetHTTPrequest(i32 noundef 3, ptr noundef nonnull %i.bu) #16
  %.not286.i = icmp eq i32 %i.we, 0
  %spec.select323.i = select i1 %.not286.i, i32 0, i32 4
  br label %opt_string.exit

bb.ke:                                            ; preds = %bb.eu
  %i.wf = call fastcc i32 @getstr(ptr noundef nonnull %i.cu, ptr noundef nonnull %.7117, i1 noundef zeroext false)
end_hunk_0
