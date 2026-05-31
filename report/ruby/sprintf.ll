inline.NumInlined: 279
inline.NumDeleted: 61
begin_hunk_0_@rb_str_format:bb.a
  %i.ts = phi ptr [ %i.tr, %bb.he ], [ %i.tq, %bb.hd ]
  %.not.i1280 = icmp eq i64 %.01008, 0
  br i1 %.not.i1280, label %ruby_nonempty_memcpy.exit1282, label %bb.hf

bb.hf:                                            ; preds = %RSTRING_PTR.exit1279
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.tl, ptr noundef nonnull readonly align 1 %i.ts, i64 noundef range(i64 1, 0) %.01008, i1 noundef false) #20
  br label %ruby_nonempty_memcpy.exit1282

ruby_nonempty_memcpy.exit1282:                    ; preds = %RSTRING_PTR.exit1279, %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  store ptr %i.c, ptr %i.g, align 8, !tbaa !36
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.g) #20, !srcloc !38
  %i.tt = load ptr, ptr %i.g, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  %i.tu = load volatile i64, ptr %i.tt, align 8, !tbaa !11 ; 0 uses
  %i.tv = add i64 %.5880, %.01008                 ; 3 uses
  br i1 %.not1171, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %ruby_nonempty_memcpy.exit1282
  %i.tw = getelementptr i8, ptr %i.th, i64 %i.tv
  %i.tx = sext i32 %.5933 to i64                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.tw, i8 noundef 32, i64 noundef %i.tx, i1 noundef false) #20
  %i.ty = add i64 %i.tv, %i.tx
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %ruby_nonempty_memcpy.exit1282
  %.6881 = phi i64 [ %i.ty, %bb.hg ], [ %i.tv, %ruby_nonempty_memcpy.exit1282 ]
  %i.tz = call i64 @rb_enc_associate(i64 noundef %i.ah, ptr noundef %i.ra) #20 ; 0 uses
  br label %.thread1452

bb.hi:                                            ; preds = %bb.gv, %bb.gn
  %.11009 = phi i64 [ %i.qn, %bb.gn ], [ %.01008, %bb.gv ] ; 4 uses
  %i.ua = load i64, ptr %i.aj, align 8, !tbaa !13
  %i.ub = and i64 %i.ua, 3145728
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hk, %bb.hi
  %.10896 = phi i64 [ %.1887, %bb.hi ], [ %i.ue, %bb.hk ] ; 4 uses
  %i.uc = sub i64 %.10896, %i.by
  %i.ud = icmp sgt i64 %.11009, %i.uc
  br i1 %i.ud, label %bb.hk, label %bb.hm

bb.hk:                                            ; preds = %bb.hj
  %i.ue = shl i64 %.10896, 1                      ; 2 uses
  %i.uf = icmp slt i64 %i.ue, 0
  br i1 %i.uf, label %bb.hl, label %bb.hj, !llvm.loop !39

bb.hl:                                            ; preds = %bb.hk
  %i.ug = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ug, ptr noundef nonnull @.str.2) #19
  unreachable

bb.hm:                                            ; preds = %bb.hj
  %i.uh = call i64 @rb_str_resize(i64 noundef %i.ah, i64 noundef %.10896) #20 ; 0 uses
  %i.ui = load i64, ptr %i.aj, align 8, !tbaa !13 ; 2 uses
  %i.uj = and i64 %i.ui, -3145729
  %i.uk = or disjoint i64 %i.uj, %i.ub
  store i64 %i.uk, ptr %i.aj, align 8, !tbaa !13
  %i.ul = and i64 %i.ui, 8192
  %.not.i1283 = icmp eq i64 %i.ul, 0
  br i1 %.not.i1283, label %RSTRING_PTR.exit1284, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.um = load ptr, ptr %i.am, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1284

RSTRING_PTR.exit1284:                             ; preds = %bb.hm, %bb.hn
  %i.un = phi ptr [ %i.um, %bb.hn ], [ %i.am, %bb.hm ] ; 2 uses
  %i.uo = getelementptr i8, ptr %i.un, i64 %i.by
  %i.up = load i64, ptr %i.c, align 8, !tbaa !11
  %i.uq = inttoptr i64 %i.up to ptr               ; 2 uses
  %i.ur = load i64, ptr %i.uq, align 8, !tbaa !13
  %i.us = and i64 %i.ur, 8192
  %.not.i1285 = icmp eq i64 %i.us, 0
  %i.ut = getelementptr i8, ptr %i.uq, i64 24     ; 2 uses
  br i1 %.not.i1285, label %RSTRING_PTR.exit1286, label %bb.ho

bb.ho:                                            ; preds = %RSTRING_PTR.exit1284
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1286

RSTRING_PTR.exit1286:                             ; preds = %RSTRING_PTR.exit1284, %bb.ho
  %i.uv = phi ptr [ %i.uu, %bb.ho ], [ %i.ut, %RSTRING_PTR.exit1284 ]
  %.not.i1287 = icmp eq i64 %.11009, 0
  br i1 %.not.i1287, label %ruby_nonempty_memcpy.exit1289, label %bb.hp

bb.hp:                                            ; preds = %RSTRING_PTR.exit1286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.uo, ptr noundef nonnull readonly align 1 %i.uv, i64 noundef range(i64 1, 0) %.11009, i1 noundef false) #20
  br label %ruby_nonempty_memcpy.exit1289

ruby_nonempty_memcpy.exit1289:                    ; preds = %RSTRING_PTR.exit1286, %bb.hp
  %i.uw = add i64 %.11009, %i.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  store ptr %i.c, ptr %i.h, align 8, !tbaa !36
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.h) #20, !srcloc !40
  %i.ux = load ptr, ptr %i.h, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  %i.uy = load volatile i64, ptr %i.ux, align 8, !tbaa !11 ; 0 uses
  %i.uz = call i64 @rb_enc_associate(i64 noundef %i.ah, ptr noundef %i.ra) #20 ; 0 uses
  br label %.thread1452

bb.hq:                                            ; preds = %get_num.exit1253, %get_num.exit1253, %get_num.exit1253, %get_num.exit1253, %get_num.exit1253, %get_num.exit1253, %get_num.exit1253, %get_num.exit1253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.va = icmp eq i64 %.0987, 36
  br i1 %i.va, label %bb.hr, label %bb.hw

bb.hr:                                            ; preds = %bb.hq
  switch i32 %.1973, label %check_next_arg.exit1290 [
    i32 -1, label %bb.hs
    i32 -2, label %bb.ht
  ]

bb.hs:                                            ; preds = %bb.hr
  %i.vb = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.vb, ptr noundef nonnull @.str.41, i32 noundef %.1959) #19
  unreachable

bb.ht:                                            ; preds = %bb.hr
  %i.vc = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.vc, ptr noundef nonnull @.str.42, i32 noundef %.1959) #19
  unreachable

check_next_arg.exit1290:                          ; preds = %bb.hr
  %.not1119 = icmp slt i32 %.1959, %i.q
  br i1 %.not1119, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %check_next_arg.exit1290
  %i.vd = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.vd, ptr noundef nonnull @.str) #19
  unreachable

bb.hv:                                            ; preds = %check_next_arg.exit1290
  %i.ve = add nsw i32 %.1959, 1
  %i.vf = sext i32 %.1959 to i64
  %i.vg = getelementptr [8 x i8], ptr %i.r, i64 %i.vf
  %i.vh = load i64, ptr %i.vg, align 8, !tbaa !11
  br label %bb.hw

bb.hw:                                            ; preds = %bb.hq, %bb.hv
  %.8980 = phi i32 [ %.1959, %bb.hv ], [ %.1973, %bb.hq ]
  %.7965 = phi i32 [ %i.ve, %bb.hv ], [ %.1959, %bb.hq ]
  %i.vi = phi i64 [ %i.vh, %bb.hv ], [ %.0987, %bb.hq ]
  store volatile i64 %i.vi, ptr %i.i, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.vj = load i8, ptr %.1856, align 1, !tbaa !15 ; 2 uses
  switch i8 %i.vj, label %bb.hz [
    i8 100, label %bb.hx
    i8 105, label %bb.hx
    i8 117, label %bb.hx
    i8 111, label %bb.hy
    i8 120, label %bb.hy
    i8 88, label %bb.hy
    i8 98, label %bb.hy
    i8 66, label %bb.hy
  ]

bb.hx:                                            ; preds = %bb.hw, %bb.hw, %bb.hw
  br label %bb.hz

bb.hy:                                            ; preds = %bb.hw, %bb.hw, %bb.hw, %bb.hw, %bb.hw
  %i.vk = and i32 %.1952, 20
  %.not1120 = icmp eq i32 %i.vk, 0
  br label %bb.hz

bb.hz:                                            ; preds = %bb.hy, %bb.hx, %bb.hw
  %.not1128 = phi i1 [ true, %bb.hw ], [ false, %bb.hx ], [ %.not1120, %bb.hy ] ; 2 uses
  %i.vl = and i32 %.1952, 1
  %.not1121 = icmp eq i32 %i.vl, 0
  br i1 %.not1121, label %bb.ig, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  switch i8 %i.vj, label %bb.ig [
    i8 111, label %bb.ib
    i8 120, label %bb.ic
    i8 88, label %bb.id
    i8 98, label %bb.ie
    i8 66, label %bb.if
  ]

bb.ib:                                            ; preds = %bb.ia
  br label %bb.ig

bb.ic:                                            ; preds = %bb.ia
  br label %bb.ig

bb.id:                                            ; preds = %bb.ia
  br label %bb.ig

bb.ie:                                            ; preds = %bb.ia
  br label %bb.ig

bb.if:                                            ; preds = %bb.ia
  br label %bb.ig

bb.ig:                                            ; preds = %bb.ia, %bb.ib, %bb.ic, %bb.id, %bb.ie, %bb.if, %bb.hz
  %.not1137 = phi i1 [ true, %bb.ia ], [ false, %bb.ib ], [ false, %bb.ic ], [ false, %bb.id ], [ false, %bb.ie ], [ false, %bb.if ], [ true, %bb.hz ] ; 2 uses
  %.01027 = phi ptr [ null, %bb.ia ], [ @.str.22, %bb.ib ], [ @.str.23, %bb.ic ], [ @.str.24, %bb.id ], [ @.str.25, %bb.ie ], [ @.str.26, %bb.if ], [ null, %bb.hz ] ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.ig
  %.0..0..0..0.175 = load volatile i64, ptr %i.i, align 8, !tbaa !11 ; 7 uses
  %i.vm = icmp eq i64 %.0..0..0..0.175, 0
  %i.vn = and i64 %.0..0..0..0.175, 7
  %i.vo = icmp ne i64 %i.vn, 0
  %i.vp = or i1 %i.vm, %i.vo
  br i1 %i.vp, label %bb.ih, label %rb_type.exit

bb.ih:                                            ; preds = %.backedge
  %3 = call i64 @llvm.fshl.i64(i64 %.0..0..0..0.175, i64 %.0..0..0..0.175, i64 62)
  switch i64 %3, label %bb.ii [
    i64 0, label %rb_type.exit.thread
    i64 1, label %rb_type.exit.thread
    i64 5, label %rb_type.exit.thread
    i64 9, label %rb_type.exit.thread
  ]

bb.ii:                                            ; preds = %bb.ih
  %i.vq = trunc i64 %.0..0..0..0.175 to i1
  br i1 %i.vq, label %rb_type.exit.thread1466, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.vr = and i64 %.0..0..0..0.175, 254
  %i.vs = icmp eq i64 %i.vr, 12
  br i1 %i.vs, label %rb_type.exit.thread, label %rb_type.exit.thread1464

rb_type.exit:                                     ; preds = %.backedge
  %i.vt = inttoptr i64 %.0..0..0..0.175 to ptr
  %i.vu = load i64, ptr %i.vt, align 8, !tbaa !13
  %i.vv = trunc i64 %i.vu to i32
  %i.vw = and i32 %i.vv, 31
  switch i32 %i.vw, label %rb_type.exit.thread [
    i32 4, label %rb_type.exit.thread1464
    i32 5, label %bb.ix
    i32 10, label %.loopexit1594
    i32 21, label %rb_type.exit.thread1466
  ]

rb_type.exit.thread1464:                          ; preds = %bb.ij, %rb_type.exit
  %.0..0..0..0.176 = load volatile i64, ptr %i.i, align 8, !tbaa !11 ; 5 uses
  %i.vx = and i64 %.0..0..0..0.176, 3
  %i.vy = icmp eq i64 %i.vx, 2
  br i1 %i.vy, label %bb.ik, label %bb.im

bb.ik:                                            ; preds = %rb_type.exit.thread1464
  %.not.i.i = icmp eq i64 %.0..0..0..0.176, -9223372036854775806
  br i1 %.not.i.i, label %rb_float_value_inline.exit.thread, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %.neg.i.i = ashr i64 %.0..0..0..0.176, 63
  %i.vz = add nsw i64 %.neg.i.i, 2
  %i.wa = and i64 %.0..0..0..0.176, -4
  %i.wb = or i64 %i.vz, %i.wa                     ; 2 uses
  %i.wc = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.wb, i64 range(i64 1, 0) %i.wb, i64 61)
  %i.wd = bitcast i64 %i.wc to double
  br label %rb_float_value_inline.exit

bb.im:                                            ; preds = %rb_type.exit.thread1464
  %i.we = inttoptr i64 %.0..0..0..0.176 to ptr
  %i.wf = getelementptr i8, ptr %i.we, i64 16
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !41
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.il, %bb.im
  %.0.i1292 = phi double [ %i.wg, %bb.im ], [ %i.wd, %bb.il ]
  %i.wh = fcmp olt double %.0.i1292, f0x43D0000000000000
  br i1 %i.wh, label %rb_float_value_inline.exit.thread, label %bb.it

rb_float_value_inline.exit.thread:                ; preds = %bb.ik, %rb_float_value_inline.exit
  %.0..0..0..0.177 = load volatile i64, ptr %i.i, align 8, !tbaa !11 ; 5 uses
  %i.wi = and i64 %.0..0..0..0.177, 3
  %i.wj = icmp eq i64 %i.wi, 2
  br i1 %i.wj, label %bb.in, label %bb.ip

bb.in:                                            ; preds = %rb_float_value_inline.exit.thread
  %.not.i.i1294 = icmp eq i64 %.0..0..0..0.177, -9223372036854775806
  br i1 %.not.i.i1294, label %rb_float_value_inline.exit1296.thread, label %bb.io

bb.io:                                            ; preds = %bb.in
  %.neg.i.i1295 = ashr i64 %.0..0..0..0.177, 63
  %i.wk = add nsw i64 %.neg.i.i1295, 2
  %i.wl = and i64 %.0..0..0..0.177, -4
  %i.wm = or i64 %i.wk, %i.wl                     ; 2 uses
  %i.wn = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.wm, i64 range(i64 1, 0) %i.wm, i64 61)
  %i.wo = bitcast i64 %i.wn to double
  br label %rb_float_value_inline.exit1296

bb.ip:                                            ; preds = %rb_float_value_inline.exit.thread
  %i.wp = inttoptr i64 %.0..0..0..0.177 to ptr
  %i.wq = getelementptr i8, ptr %i.wp, i64 16
  %i.wr = load double, ptr %i.wq, align 8, !tbaa !41
  br label %rb_float_value_inline.exit1296

rb_float_value_inline.exit1296:                   ; preds = %bb.io, %bb.ip
  %.0.i1293 = phi double [ %i.wr, %bb.ip ], [ %i.wo, %bb.io ]
  %i.ws = fcmp ult double %.0.i1293, f0xC3D0000000000000
  br i1 %i.ws, label %bb.it, label %rb_float_value_inline.exit1296.thread

rb_float_value_inline.exit1296.thread:            ; preds = %bb.in, %rb_float_value_inline.exit1296
  %.0..0..0..0.178 = load volatile i64, ptr %i.i, align 8, !tbaa !11 ; 5 uses
  %i.wt = and i64 %.0..0..0..0.178, 3
  %i.wu = icmp eq i64 %i.wt, 2
  br i1 %i.wu, label %bb.iq, label %bb.is

bb.iq:                                            ; preds = %rb_float_value_inline.exit1296.thread
  %.not.i.i1298 = icmp eq i64 %.0..0..0..0.178, -9223372036854775806
  br i1 %.not.i.i1298, label %rb_float_value_inline.exit1300, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %.neg.i.i1299 = ashr i64 %.0..0..0..0.178, 63
  %i.wv = add nsw i64 %.neg.i.i1299, 2
  %i.ww = and i64 %.0..0..0..0.178, -4
  %i.wx = or i64 %i.wv, %i.ww                     ; 2 uses
  %i.wy = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.wx, i64 range(i64 1, 0) %i.wx, i64 61)
  %i.wz = bitcast i64 %i.wy to double
  br label %rb_float_value_inline.exit1300

bb.is:                                            ; preds = %rb_float_value_inline.exit1296.thread
  %i.xa = inttoptr i64 %.0..0..0..0.178 to ptr
  %i.xb = getelementptr i8, ptr %i.xa, i64 16
  %i.xc = load double, ptr %i.xb, align 8, !tbaa !41
  br label %rb_float_value_inline.exit1300

rb_float_value_inline.exit1300:                   ; preds = %bb.iq, %bb.ir, %bb.is
  %.0.i1297 = phi double [ %i.xc, %bb.is ], [ %i.wz, %bb.ir ], [ 0.000000e+00, %bb.iq ]
  %i.xd = fptosi double %.0.i1297 to i64
  %i.xe = shl i64 %i.xd, 1
  %i.xf = or disjoint i64 %i.xe, 1
  br label %.backedge.sink.split

.backedge.sink.split:                             ; preds = %rb_type.exit.thread, %bb.ix, %rb_float_value_inline.exit1300
  %.sink5411 = phi i64 [ %i.xf, %rb_float_value_inline.exit1300 ], [ %i.xs, %bb.ix ], [ %i.xu, %rb_type.exit.thread ]
  store volatile i64 %.sink5411, ptr %i.i, align 8, !tbaa !11
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %.backedge.sink.split, %rb_float_value_inline.exit1304
  br label %.backedge

bb.it:                                            ; preds = %rb_float_value_inline.exit1296, %rb_float_value_inline.exit
  %.0..0..0..0.179 = load volatile i64, ptr %i.i, align 8, !tbaa !11 ; 5 uses
  %i.xg = and i64 %.0..0..0..0.179, 3
  %i.xh = icmp eq i64 %i.xg, 2
  br i1 %i.xh, label %bb.iu, label %bb.iw

bb.iu:                                            ; preds = %bb.it
  %.not.i.i1302 = icmp eq i64 %.0..0..0..0.179, -9223372036854775806
  br i1 %.not.i.i1302, label %rb_float_value_inline.exit1304, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %.neg.i.i1303 = ashr i64 %.0..0..0..0.179, 63
  %i.xi = add nsw i64 %.neg.i.i1303, 2
  %i.xj = and i64 %.0..0..0..0.179, -4
  %i.xk = or i64 %i.xi, %i.xj                     ; 2 uses
  %i.xl = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.xk, i64 range(i64 1, 0) %i.xk, i64 61)
  %i.xm = bitcast i64 %i.xl to double
  br label %rb_float_value_inline.exit1304

bb.iw:                                            ; preds = %bb.it
  %i.xn = inttoptr i64 %.0..0..0..0.179 to ptr
  %i.xo = getelementptr i8, ptr %i.xn, i64 16
  %i.xp = load double, ptr %i.xo, align 8, !tbaa !41
  br label %rb_float_value_inline.exit1304

rb_float_value_inline.exit1304:                   ; preds = %bb.iu, %bb.iv, %bb.iw
  %.0.i1301 = phi double [ %i.xp, %bb.iw ], [ %i.xm, %bb.iv ], [ 0.000000e+00, %bb.iu ]
  %i.xq = call i64 @rb_dbl2big(double noundef %.0.i1301) #20
  store volatile i64 %i.xq, ptr %i.i, align 8, !tbaa !11
  %.0..0..0..0.180 = load volatile i64, ptr %i.i, align 8, !tbaa !11
  %i.xr = trunc i64 %.0..0..0..0.180 to i1
  br i1 %i.xr, label %.backedge.backedge, label %.loopexit1594

bb.ix:                                            ; preds = %rb_type.exit
  %.0..0..0..0.181 = load volatile i64, ptr %i.i, align 8, !tbaa !11
  %i.xs = call i64 @rb_str_to_inum(i64 noundef %.0..0..0..0.181, i32 noundef 0, i32 noundef 1) #20
  br label %.backedge.sink.split

rb_type.exit.thread1466:                          ; preds = %bb.ii, %rb_type.exit
  %.0..0..0..0.182 = load volatile i64, ptr %i.i, align 8, !tbaa !11
  %i.xt = ashr i64 %.0..0..0..0.182, 1
  br label %.loopexit1594

rb_type.exit.thread:                              ; preds = %bb.ij, %bb.ih, %bb.ih, %bb.ih, %bb.ih, %rb_type.exit
  %.0..0..0..0.183 = load volatile i64, ptr %i.i, align 8, !tbaa !11
  %i.xu = call i64 @rb_Integer(i64 noundef %.0..0..0..0.183) #20
  br label %.backedge.sink.split

.loopexit1594:                                    ; preds = %rb_type.exit, %rb_float_value_inline.exit1304, %rb_type.exit.thread1466
  %.01022 = phi i64 [ %i.xt, %rb_type.exit.thread1466 ], [ 0, %rb_float_value_inline.exit1304 ], [ 0, %rb_type.exit ] ; 6 uses
  %.not1123 = phi i1 [ true, %rb_type.exit.thread1466 ], [ false, %rb_float_value_inline.exit1304 ], [ false, %rb_type.exit ] ; 2 uses
  %i.xv = load i8, ptr %.1856, align 1, !tbaa !15
  switch i8 %i.xv, label %bb.jz [
    i8 111, label %bb.ja
    i8 120, label %bb.iy
    i8 88, label %bb.iy
    i8 98, label %bb.iz
    i8 66, label %bb.iz
  ]

bb.iy:                                            ; preds = %.loopexit1594, %.loopexit1594
  br label %bb.ja

bb.iz:                                            ; preds = %.loopexit1594, %.loopexit1594
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy, %.loopexit1594
  %.01021.ph = phi i32 [ 8, %.loopexit1594 ], [ 16, %bb.iy ], [ 2, %bb.iz ] ; 3 uses
  %cttz = call range(i32 1, 33) i32 @llvm.cttz.i32(i32 %.01021.ph, i1 true) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  %.0..0..0..0.184 = load volatile i64, ptr %i.i, align 8, !tbaa !11
  %i.xw = zext nneg i32 %cttz to i64
  %i.xx = call i64 @rb_absint_numwords(i64 noundef %.0..0..0..0.184, i64 noundef %i.xw, ptr noundef nonnull %i.k) #20 ; 7 uses
  %i.xy = icmp ugt i64 %i.xx, 2147483646
  br i1 %i.xy, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
end_hunk_0
