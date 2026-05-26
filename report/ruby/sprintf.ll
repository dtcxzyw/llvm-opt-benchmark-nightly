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
  %i.vq = call i64 @llvm.fshl.i64(i64 %.0..0..0..0.175, i64 %.0..0..0..0.175, i64 62)
  switch i64 %i.vq, label %bb.ii [
    i64 0, label %rb_type.exit.thread
    i64 1, label %rb_type.exit.thread
    i64 5, label %rb_type.exit.thread
    i64 9, label %rb_type.exit.thread
  ]

bb.ii:                                            ; preds = %bb.ih
  %i.vr = trunc i64 %.0..0..0..0.175 to i1
  br i1 %i.vr, label %rb_type.exit.thread1466, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.vs = and i64 %.0..0..0..0.175, 254
  %i.vt = icmp eq i64 %i.vs, 12
  br i1 %i.vt, label %rb_type.exit.thread, label %rb_type.exit.thread1464

rb_type.exit:                                     ; preds = %.backedge
  %i.vu = inttoptr i64 %.0..0..0..0.175 to ptr
  %i.vv = load i64, ptr %i.vu, align 8, !tbaa !13
  %i.vw = trunc i64 %i.vv to i32
  %i.vx = and i32 %i.vw, 31
  switch i32 %i.vx, label %rb_type.exit.thread [
    i32 4, label %rb_type.exit.thread1464
    i32 5, label %bb.ix
    i32 10, label %.loopexit1596
    i32 21, label %rb_type.exit.thread1466
  ]

rb_type.exit.thread1464:                          ; preds = %bb.ij, %rb_type.exit
  %.0..0..0..0.176 = load volatile i64, ptr %i.i, align 8, !tbaa !11 ; 5 uses
  %i.vy = and i64 %.0..0..0..0.176, 3
  %i.vz = icmp eq i64 %i.vy, 2
  br i1 %i.vz, label %bb.ik, label %bb.im

bb.ik:                                            ; preds = %rb_type.exit.thread1464
  %.not.i.i = icmp eq i64 %.0..0..0..0.176, -9223372036854775806
  br i1 %.not.i.i, label %rb_float_value_inline.exit.thread, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %.neg.i.i = ashr i64 %.0..0..0..0.176, 63
  %i.wa = add nsw i64 %.neg.i.i, 2
  %i.wb = and i64 %.0..0..0..0.176, -4
  %i.wc = or i64 %i.wa, %i.wb                     ; 2 uses
  %i.wd = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.wc, i64 range(i64 1, 0) %i.wc, i64 61)
  %i.we = bitcast i64 %i.wd to double
  br label %rb_float_value_inline.exit

bb.im:                                            ; preds = %rb_type.exit.thread1464
  %i.wf = inttoptr i64 %.0..0..0..0.176 to ptr
  %i.wg = getelementptr i8, ptr %i.wf, i64 16
  %i.wh = load double, ptr %i.wg, align 8, !tbaa !41
  br label %rb_float_value_inline.exit

rb_float_value_inline.exit:                       ; preds = %bb.il, %bb.im
  %.0.i1292 = phi double [ %i.wh, %bb.im ], [ %i.we, %bb.il ]
  %i.wi = fcmp olt double %.0.i1292, f0x43D0000000000000
  br i1 %i.wi, label %rb_float_value_inline.exit.thread, label %bb.it

rb_float_value_inline.exit.thread:                ; preds = %bb.ik, %rb_float_value_inline.exit
  %.0..0..0..0.177 = load volatile i64, ptr %i.i, align 8, !tbaa !11 ; 5 uses
  %i.wj = and i64 %.0..0..0..0.177, 3
  %i.wk = icmp eq i64 %i.wj, 2
  br i1 %i.wk, label %bb.in, label %bb.ip

bb.in:                                            ; preds = %rb_float_value_inline.exit.thread
  %.not.i.i1294 = icmp eq i64 %.0..0..0..0.177, -9223372036854775806
  br i1 %.not.i.i1294, label %rb_float_value_inline.exit1296.thread, label %bb.io

bb.io:                                            ; preds = %bb.in
  %.neg.i.i1295 = ashr i64 %.0..0..0..0.177, 63
  %i.wl = add nsw i64 %.neg.i.i1295, 2
  %i.wm = and i64 %.0..0..0..0.177, -4
  %i.wn = or i64 %i.wl, %i.wm                     ; 2 uses
  %i.wo = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.wn, i64 range(i64 1, 0) %i.wn, i64 61)
  %i.wp = bitcast i64 %i.wo to double
  br label %rb_float_value_inline.exit1296

bb.ip:                                            ; preds = %rb_float_value_inline.exit.thread
  %i.wq = inttoptr i64 %.0..0..0..0.177 to ptr
  %i.wr = getelementptr i8, ptr %i.wq, i64 16
  %i.ws = load double, ptr %i.wr, align 8, !tbaa !41
  br label %rb_float_value_inline.exit1296

rb_float_value_inline.exit1296:                   ; preds = %bb.io, %bb.ip
  %.0.i1293 = phi double [ %i.ws, %bb.ip ], [ %i.wp, %bb.io ]
  %i.wt = fcmp ult double %.0.i1293, f0xC3D0000000000000
  br i1 %i.wt, label %bb.it, label %rb_float_value_inline.exit1296.thread

rb_float_value_inline.exit1296.thread:            ; preds = %bb.in, %rb_float_value_inline.exit1296
  %.0..0..0..0.178 = load volatile i64, ptr %i.i, align 8, !tbaa !11 ; 5 uses
  %i.wu = and i64 %.0..0..0..0.178, 3
  %i.wv = icmp eq i64 %i.wu, 2
  br i1 %i.wv, label %bb.iq, label %bb.is

bb.iq:                                            ; preds = %rb_float_value_inline.exit1296.thread
  %.not.i.i1298 = icmp eq i64 %.0..0..0..0.178, -9223372036854775806
  br i1 %.not.i.i1298, label %rb_float_value_inline.exit1300, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %.neg.i.i1299 = ashr i64 %.0..0..0..0.178, 63
  %i.ww = add nsw i64 %.neg.i.i1299, 2
  %i.wx = and i64 %.0..0..0..0.178, -4
  %i.wy = or i64 %i.ww, %i.wx                     ; 2 uses
  %i.wz = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.wy, i64 range(i64 1, 0) %i.wy, i64 61)
  %i.xa = bitcast i64 %i.wz to double
  br label %rb_float_value_inline.exit1300

bb.is:                                            ; preds = %rb_float_value_inline.exit1296.thread
  %i.xb = inttoptr i64 %.0..0..0..0.178 to ptr
  %i.xc = getelementptr i8, ptr %i.xb, i64 16
  %i.xd = load double, ptr %i.xc, align 8, !tbaa !41
  br label %rb_float_value_inline.exit1300

rb_float_value_inline.exit1300:                   ; preds = %bb.iq, %bb.ir, %bb.is
  %.0.i1297 = phi double [ %i.xd, %bb.is ], [ %i.xa, %bb.ir ], [ 0.000000e+00, %bb.iq ]
  %i.xe = fptosi double %.0.i1297 to i64
  %i.xf = shl i64 %i.xe, 1
  %i.xg = or disjoint i64 %i.xf, 1
  br label %.backedge.sink.split

.backedge.sink.split:                             ; preds = %rb_type.exit.thread, %bb.ix, %rb_float_value_inline.exit1300
  %.sink5413 = phi i64 [ %i.xg, %rb_float_value_inline.exit1300 ], [ %i.xt, %bb.ix ], [ %i.xv, %rb_type.exit.thread ]
  store volatile i64 %.sink5413, ptr %i.i, align 8, !tbaa !11
  br label %.backedge.backedge

.backedge.backedge:                               ; preds = %.backedge.sink.split, %rb_float_value_inline.exit1304
  br label %.backedge

bb.it:                                            ; preds = %rb_float_value_inline.exit1296, %rb_float_value_inline.exit
  %.0..0..0..0.179 = load volatile i64, ptr %i.i, align 8, !tbaa !11 ; 5 uses
  %i.xh = and i64 %.0..0..0..0.179, 3
  %i.xi = icmp eq i64 %i.xh, 2
  br i1 %i.xi, label %bb.iu, label %bb.iw

bb.iu:                                            ; preds = %bb.it
  %.not.i.i1302 = icmp eq i64 %.0..0..0..0.179, -9223372036854775806
  br i1 %.not.i.i1302, label %rb_float_value_inline.exit1304, label %bb.iv

bb.iv:                                            ; preds = %bb.iu
  %.neg.i.i1303 = ashr i64 %.0..0..0..0.179, 63
  %i.xj = add nsw i64 %.neg.i.i1303, 2
  %i.xk = and i64 %.0..0..0..0.179, -4
  %i.xl = or i64 %i.xj, %i.xk                     ; 2 uses
  %i.xm = call noundef i64 @llvm.fshl.i64(i64 range(i64 1, 0) %i.xl, i64 range(i64 1, 0) %i.xl, i64 61)
  %i.xn = bitcast i64 %i.xm to double
  br label %rb_float_value_inline.exit1304

bb.iw:                                            ; preds = %bb.it
  %i.xo = inttoptr i64 %.0..0..0..0.179 to ptr
  %i.xp = getelementptr i8, ptr %i.xo, i64 16
  %i.xq = load double, ptr %i.xp, align 8, !tbaa !41
  br label %rb_float_value_inline.exit1304

rb_float_value_inline.exit1304:                   ; preds = %bb.iu, %bb.iv, %bb.iw
  %.0.i1301 = phi double [ %i.xq, %bb.iw ], [ %i.xn, %bb.iv ], [ 0.000000e+00, %bb.iu ]
  %i.xr = call i64 @rb_dbl2big(double noundef %.0.i1301) #20
  store volatile i64 %i.xr, ptr %i.i, align 8, !tbaa !11
  %.0..0..0..0.180 = load volatile i64, ptr %i.i, align 8, !tbaa !11
  %i.xs = trunc i64 %.0..0..0..0.180 to i1
  br i1 %i.xs, label %.backedge.backedge, label %.loopexit1596

bb.ix:                                            ; preds = %rb_type.exit
  %.0..0..0..0.181 = load volatile i64, ptr %i.i, align 8, !tbaa !11
  %i.xt = call i64 @rb_str_to_inum(i64 noundef %.0..0..0..0.181, i32 noundef 0, i32 noundef 1) #20
  br label %.backedge.sink.split

rb_type.exit.thread1466:                          ; preds = %bb.ii, %rb_type.exit
  %.0..0..0..0.182 = load volatile i64, ptr %i.i, align 8, !tbaa !11
  %i.xu = ashr i64 %.0..0..0..0.182, 1
  br label %.loopexit1596

rb_type.exit.thread:                              ; preds = %bb.ij, %bb.ih, %bb.ih, %bb.ih, %bb.ih, %rb_type.exit
  %.0..0..0..0.183 = load volatile i64, ptr %i.i, align 8, !tbaa !11
  %i.xv = call i64 @rb_Integer(i64 noundef %.0..0..0..0.183) #20
  br label %.backedge.sink.split

.loopexit1596:                                    ; preds = %rb_type.exit, %rb_float_value_inline.exit1304, %rb_type.exit.thread1466
  %.01022 = phi i64 [ %i.xu, %rb_type.exit.thread1466 ], [ 0, %rb_float_value_inline.exit1304 ], [ 0, %rb_type.exit ] ; 6 uses
  %.not1123 = phi i1 [ true, %rb_type.exit.thread1466 ], [ false, %rb_float_value_inline.exit1304 ], [ false, %rb_type.exit ] ; 2 uses
  %i.xw = load i8, ptr %.1856, align 1, !tbaa !15
  switch i8 %i.xw, label %bb.jz [
    i8 111, label %bb.ja
    i8 120, label %bb.iy
    i8 88, label %bb.iy
    i8 98, label %bb.iz
    i8 66, label %bb.iz
  ]

bb.iy:                                            ; preds = %.loopexit1596, %.loopexit1596
  br label %bb.ja

bb.iz:                                            ; preds = %.loopexit1596, %.loopexit1596
  br label %bb.ja

bb.ja:                                            ; preds = %bb.iz, %bb.iy, %.loopexit1596
  %.01021.ph = phi i32 [ 8, %.loopexit1596 ], [ 16, %bb.iy ], [ 2, %bb.iz ] ; 3 uses
  %cttz = call range(i32 1, 33) i32 @llvm.cttz.i32(i32 %.01021.ph, i1 true) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  %.0..0..0..0.184 = load volatile i64, ptr %i.i, align 8, !tbaa !11
  %i.xx = zext nneg i32 %cttz to i64
  %i.xy = call i64 @rb_absint_numwords(i64 noundef %.0..0..0..0.184, i64 noundef %i.xx, ptr noundef nonnull %i.k) #20 ; 7 uses
  %i.xz = icmp ugt i64 %i.xy, 2147483646
  br i1 %i.xz, label %bb.jb, label %bb.jc

bb.jb:                                            ; preds = %bb.ja
  %i.ya = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ya, ptr noundef nonnull @.str.27) #19
  unreachable

bb.jc:                                            ; preds = %bb.ja
  br i1 %.not1128, label %bb.jl, label %bb.jd

bb.jd:                                            ; preds = %bb.jc
  %spec.store.select = call i64 @llvm.umax.i64(i64 %i.xy, i64 1)
  %i.yb = call i64 @rb_str_new(ptr noundef null, i64 noundef %spec.store.select) #20, !callees !44 ; 2 uses
  store i64 %i.yb, ptr %i.b, align 8, !tbaa !11
  %.0..0..0..0.185 = load volatile i64, ptr %i.i, align 8, !tbaa !11
  %i.yc = inttoptr i64 %i.yb to ptr               ; 3 uses
end_hunk_0
begin_hunk_1_@rb_str_format:bb.a
  br i1 %.not1123, label %bb.ka, label %bb.kg

bb.ka:                                            ; preds = %bb.jz
  %i.aca = icmp slt i64 %.01022, 0
  br i1 %i.aca, label %bb.kb, label %bb.kc

bb.kb:                                            ; preds = %bb.ka
  %i.acb = sub nsw i64 0, %.01022
  br label %.sink.split

bb.kc:                                            ; preds = %bb.ka
  %i.acc = and i32 %.1952, 4
  %.not1124 = icmp eq i32 %i.acc, 0
  br i1 %.not1124, label %bb.kd, label %.sink.split

bb.kd:                                            ; preds = %bb.kc
  %i.acd = and i32 %.1952, 16
  %.not1125 = icmp eq i32 %i.acd, 0
  br i1 %.not1125, label %bb.ke, label %.sink.split

.sink.split:                                      ; preds = %bb.kd, %bb.kc, %bb.kb
  %.sink5414 = phi i8 [ 45, %bb.kb ], [ 43, %bb.kc ], [ 32, %bb.kd ]
  %.11033.ph = phi i32 [ -1, %bb.kb ], [ 1, %bb.kc ], [ 1, %bb.kd ]
  %.11023.ph = phi i64 [ %i.acb, %bb.kb ], [ %.01022, %bb.kc ], [ %.01022, %bb.kd ]
  %i.ace = add i32 %.0928, -1
  br label %bb.ke

bb.ke:                                            ; preds = %.sink.split, %bb.kd
  %.17748 = phi i8 [ %.sink5414, %.sink.split ], [ 0, %bb.kd ]
  %.11033 = phi i32 [ %.11033.ph, %.sink.split ], [ 1, %bb.kd ]
  %.11023 = phi i64 [ %.11023.ph, %.sink.split ], [ %.01022, %bb.kd ] ; 3 uses
  %.7935 = phi i32 [ %i.ace, %.sink.split ], [ %.0928, %bb.kd ]
  %i.acf = icmp samesign ult i64 %.11023, 10
  br i1 %i.acf, label %bb.kf, label %.preheader1595

bb.kf:                                            ; preds = %bb.ke
  %i.acg = trunc nuw nsw i64 %.11023 to i8
  %i.ach = or disjoint i8 %i.acg, 48
  store i8 %i.ach, ptr %i.ay, align 1, !tbaa !15
  br label %ruby_ultoa.exit

.preheader1595:                                   ; preds = %bb.ke, %.preheader1595
  %.129.i.i = phi ptr [ %i.acl, %.preheader1595 ], [ %i.ax, %bb.ke ]
  %.1.i.i = phi i64 [ %i.acm, %.preheader1595 ], [ %.11023, %bb.ke ] ; 3 uses
  %i.aci = urem i64 %.1.i.i, 10
  %i.acj = trunc nuw nsw i64 %i.aci to i8
  %i.ack = or disjoint i8 %i.acj, 48
  %i.acl = getelementptr i8, ptr %.129.i.i, i64 -1 ; 3 uses
  store i8 %i.ack, ptr %i.acl, align 1, !tbaa !15
  %i.acm = udiv i64 %.1.i.i, 10
  %.not38.i.i = icmp samesign ult i64 %.1.i.i, 10
  br i1 %.not38.i.i, label %ruby_ultoa.exit, label %.preheader1595, !llvm.loop !47

ruby_ultoa.exit:                                  ; preds = %.preheader1595, %bb.kf
  %.030.i.i = phi ptr [ %i.ay, %bb.kf ], [ %i.acl, %.preheader1595 ] ; 2 uses
  %i.acn = ptrtoint ptr %.030.i.i to i64
  %i.aco = sub i64 %i.az, %i.acn
  br label %.thread1477

bb.kg:                                            ; preds = %bb.jz
  %.0..0..0..0.189 = load volatile i64, ptr %i.i, align 8, !tbaa !11
  %i.acp = call i64 @rb_big2str(i64 noundef %.0..0..0..0.189, i32 noundef 10) #20 ; 2 uses
  store i64 %i.acp, ptr %i.b, align 8, !tbaa !11
  %i.acq = inttoptr i64 %i.acp to ptr             ; 3 uses
  %i.acr = load i64, ptr %i.acq, align 8, !tbaa !13
  %i.acs = and i64 %i.acr, 8192
  %.not.i1325 = icmp eq i64 %i.acs, 0             ; 2 uses
  %i.act = getelementptr i8, ptr %i.acq, i64 24   ; 4 uses
  br i1 %.not.i1325, label %RSTRING_PTR.exit1326, label %bb.kh

bb.kh:                                            ; preds = %bb.kg
  %i.acu = load ptr, ptr %i.act, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1326

RSTRING_PTR.exit1326:                             ; preds = %bb.kg, %bb.kh
  %i.acv = phi ptr [ %i.acu, %bb.kh ], [ %i.act, %bb.kg ] ; 5 uses
  %i.acw = load i8, ptr %i.acv, align 1, !tbaa !15
  %i.acx = icmp eq i8 %i.acw, 45
  br i1 %i.acx, label %bb.ki, label %bb.kj

bb.ki:                                            ; preds = %RSTRING_PTR.exit1326
  %i.acy = getelementptr i8, ptr %i.acv, i64 1
  br label %.sink.split5415

bb.kj:                                            ; preds = %RSTRING_PTR.exit1326
  %i.acz = and i32 %.1952, 4
  %.not1126 = icmp eq i32 %i.acz, 0
  br i1 %.not1126, label %bb.kk, label %.sink.split5415

bb.kk:                                            ; preds = %bb.kj
  %i.ada = and i32 %.1952, 16
  %.not1127 = icmp eq i32 %i.ada, 0
  br i1 %.not1127, label %bb.kl, label %.sink.split5415

.sink.split5415:                                  ; preds = %bb.kk, %bb.kj, %bb.ki
  %.sink5417 = phi i8 [ 45, %bb.ki ], [ 43, %bb.kj ], [ 32, %bb.kk ]
  %.21034.ph = phi i32 [ -1, %bb.ki ], [ 1, %bb.kj ], [ 1, %bb.kk ]
  %.11030.ph = phi ptr [ %i.acy, %bb.ki ], [ %i.acv, %bb.kj ], [ %i.acv, %bb.kk ]
  %i.adb = add i32 %.0928, -1
  br label %bb.kl

bb.kl:                                            ; preds = %.sink.split5415, %bb.kk
  %.2 = phi i8 [ %.sink5417, %.sink.split5415 ], [ 0, %bb.kk ]
  %.21034 = phi i32 [ %.21034.ph, %.sink.split5415 ], [ 1, %bb.kk ]
  %.11030 = phi ptr [ %.11030.ph, %.sink.split5415 ], [ %i.acv, %bb.kk ] ; 2 uses
  %.8936 = phi i32 [ %i.adb, %.sink.split5415 ], [ %.0928, %bb.kk ]
  br i1 %.not.i1325, label %RSTRING_END.exit1328, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.adc = load ptr, ptr %i.act, align 8, !tbaa !15
  br label %RSTRING_END.exit1328

RSTRING_END.exit1328:                             ; preds = %bb.kl, %bb.km
  %i.add = phi ptr [ %i.adc, %bb.km ], [ %i.act, %bb.kl ]
  %i.ade = getelementptr i8, ptr %i.acq, i64 16
  %i.adf = load i64, ptr %i.ade, align 8, !tbaa !16
  %i.adg = getelementptr i8, ptr %i.add, i64 %i.adf
  %i.adh = ptrtoint ptr %i.adg to i64
  %i.adi = ptrtoint ptr %.11030 to i64
  %i.adj = sub i64 %i.adh, %i.adi                 ; 3 uses
  %i.adk = add i64 %i.adj, 2147483648
  %.not.i1329 = icmp ult i64 %i.adk, 4294967296
  br i1 %.not.i1329, label %.thread1477, label %bb.kn

bb.kn:                                            ; preds = %RSTRING_END.exit1328
  call void @rb_out_of_int(i64 noundef %i.adj) #23
  unreachable

bb.ko:                                            ; preds = %RSTRING_END.exit1323
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  br i1 %.01024, label %.thread1477, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.adl = add i32 %.01426, -2
  %i.adm = add i32 %.6934, -2
  br label %.thread1477

.thread1477:                                      ; preds = %RSTRING_END.exit1328, %ruby_ultoa.exit, %bb.kp, %bb.ko
  %.3 = phi i8 [ %.17748, %ruby_ultoa.exit ], [ %.2, %RSTRING_END.exit1328 ], [ %.0, %bb.ko ], [ %.0, %bb.kp ] ; 2 uses
  %.010151490.in = phi i64 [ %i.aco, %ruby_ultoa.exit ], [ %i.adj, %RSTRING_END.exit1328 ], [ %i.aby, %bb.ko ], [ %i.aby, %bb.kp ]
  %.110251489 = phi i1 [ true, %ruby_ultoa.exit ], [ true, %RSTRING_END.exit1328 ], [ true, %bb.ko ], [ false, %bb.kp ] ; 2 uses
  %.210311486 = phi ptr [ %.030.i.i, %ruby_ultoa.exit ], [ %.11030, %RSTRING_END.exit1328 ], [ %.01029, %bb.ko ], [ %.01029, %bb.kp ] ; 6 uses
  %.310351485 = phi i32 [ %.11033, %ruby_ultoa.exit ], [ %.21034, %RSTRING_END.exit1328 ], [ %.01032, %bb.ko ], [ %.01032, %bb.kp ]
  %.0102114751484 = phi i32 [ 10, %ruby_ultoa.exit ], [ 10, %RSTRING_END.exit1328 ], [ %.01021.ph, %bb.ko ], [ %.01021.ph, %bb.kp ]
  %.31429 = phi i32 [ %.01426, %ruby_ultoa.exit ], [ %.01426, %RSTRING_END.exit1328 ], [ %.01426, %bb.ko ], [ %i.adl, %bb.kp ] ; 8 uses
  %.10938 = phi i32 [ %.7935, %ruby_ultoa.exit ], [ %.8936, %RSTRING_END.exit1328 ], [ %.6934, %bb.ko ], [ %i.adm, %bb.kp ] ; 5 uses
  %.010151490 = trunc i64 %.010151490.in to i32   ; 8 uses
  %i.adn = load i8, ptr %.1856, align 1, !tbaa !15
  %i.ado = icmp eq i8 %i.adn, 88
  br i1 %i.ado, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %.thread1477
  %i.adp = load i8, ptr %.210311486, align 1, !tbaa !15 ; 2 uses
  %.not11363077 = icmp eq i8 %i.adp, 0
  br i1 %.not11363077, label %.loopexit, label %.lr.ph3079

.lr.ph3079:                                       ; preds = %.preheader, %.lr.ph3079
  %i.adq = phi i8 [ %i.adv, %.lr.ph3079 ], [ %i.adp, %.preheader ]
  %.010103078 = phi ptr [ %i.adu, %.lr.ph3079 ], [ %.210311486, %.preheader ] ; 2 uses
  %i.adr = zext i8 %i.adq to i32
  %i.ads = call i32 @rb_enc_toupper(i32 noundef %i.adr, ptr noundef %.08533087) #24
  %i.adt = trunc i32 %i.ads to i8
  store i8 %i.adt, ptr %.010103078, align 1, !tbaa !15
  %i.adu = getelementptr i8, ptr %.010103078, i64 1 ; 2 uses
  %i.adv = load i8, ptr %i.adu, align 1, !tbaa !15 ; 2 uses
  %.not1136 = icmp eq i8 %i.adv, 0
  br i1 %.not1136, label %.loopexit, label %.lr.ph3079, !llvm.loop !48

.loopexit:                                        ; preds = %.lr.ph3079, %.preheader, %.thread1477
  br i1 %.not1137, label %bb.kw, label %bb.kq

bb.kq:                                            ; preds = %.loopexit
  %i.adw = getelementptr i8, ptr %.01027, i64 1
  %i.adx = load i8, ptr %i.adw, align 1, !tbaa !15
  %.not1138 = icmp eq i8 %i.adx, 0
  br i1 %.not1138, label %bb.kr, label %bb.kw

bb.kr:                                            ; preds = %bb.kq
  br i1 %.110251489, label %bb.ks, label %.thread1496

bb.ks:                                            ; preds = %bb.kr
  %i.ady = icmp eq i32 %.010151490, 1
  br i1 %i.ady, label %bb.kt, label %bb.kv

bb.kt:                                            ; preds = %bb.ks
  %i.adz = load i8, ptr %.210311486, align 1, !tbaa !15
  %i.aea = icmp eq i8 %i.adz, 48
  br i1 %i.aea, label %bb.ku, label %bb.kv

bb.ku:                                            ; preds = %bb.kt
  %i.aeb = shl i32 %.1952, 25
  %sext1591 = ashr i32 %i.aeb, 31
  %spec.select1581 = add i32 %.31429, %sext1591
  br label %.thread1507

bb.kv:                                            ; preds = %bb.kt, %bb.ks
  %i.aec = and i32 %.1952, 64
  %.not1139 = icmp ne i32 %i.aec, 0
  %i.aed = icmp sgt i32 %.31429, %.010151490
  %or.cond1196 = select i1 %.not1139, i1 %i.aed, i1 false
  br i1 %or.cond1196, label %.thread1496, label %.thread1507

bb.kw:                                            ; preds = %bb.kq, %.loopexit
  %i.aee = icmp eq i32 %.010151490, 1
  br i1 %i.aee, label %bb.kx, label %bb.ky

bb.kx:                                            ; preds = %bb.kw
  %i.aef = load i8, ptr %.210311486, align 1, !tbaa !15
  %i.aeg = icmp eq i8 %i.aef, 48
  br i1 %i.aeg, label %.thread1496, label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.kw
  br i1 %.not1137, label %.thread1496, label %.thread1507

.thread1507:                                      ; preds = %bb.ku, %bb.kv, %bb.ky
  %.110161514 = phi i32 [ %.010151490, %bb.ky ], [ 0, %bb.ku ], [ %.010151490, %bb.kv ]
  %.41512 = phi i32 [ %.31429, %bb.ky ], [ %spec.select1581, %bb.ku ], [ %.31429, %bb.kv ]
  %i.aeh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.01027) #22
  %i.aei = trunc i64 %i.aeh to i32
  %i.aej = sub i32 %.10938, %i.aei
  br label %.thread1496

.thread1496:                                      ; preds = %bb.kv, %bb.kx, %bb.kr, %.thread1507, %bb.ky
  %.not11411504 = phi i1 [ false, %.thread1507 ], [ true, %bb.ky ], [ true, %bb.kr ], [ true, %bb.kx ], [ true, %bb.kv ] ; 2 uses
  %.110161503 = phi i32 [ %.110161514, %.thread1507 ], [ %.010151490, %bb.ky ], [ %.010151490, %bb.kr ], [ 1, %bb.kx ], [ %.010151490, %bb.kv ] ; 6 uses
  %.110281502 = phi ptr [ %.01027, %.thread1507 ], [ null, %bb.ky ], [ null, %bb.kr ], [ null, %bb.kx ], [ null, %bb.kv ] ; 2 uses
  %.41501 = phi i32 [ %.41512, %.thread1507 ], [ %.31429, %bb.ky ], [ %.31429, %bb.kr ], [ %.31429, %bb.kx ], [ %.31429, %bb.kv ] ; 3 uses
  %.11939 = phi i32 [ %i.aej, %.thread1507 ], [ %.10938, %bb.ky ], [ %.10938, %bb.kr ], [ %.10938, %bb.kx ], [ %.10938, %bb.kv ] ; 2 uses
  %i.aek = and i32 %.1952, 74
  %i.ael = icmp eq i32 %i.aek, 8
  br i1 %i.ael, label %.thread1529, label %bb.kz

bb.kz:                                            ; preds = %.thread1496
  %i.aem = icmp slt i32 %.41501, %.110161503
  br i1 %i.aem, label %bb.la, label %bb.lc

bb.la:                                            ; preds = %bb.kz
  %i.aen = icmp eq i32 %.41501, 0
  %or.cond = and i1 %.not11411504, %i.aen
  %i.aeo = icmp eq i32 %.110161503, 1
  %or.cond5 = select i1 %or.cond, i1 %i.aeo, i1 false
  br i1 %or.cond5, label %bb.lb, label %bb.lc

bb.lb:                                            ; preds = %bb.la
  %i.aep = load i8, ptr %.210311486, align 1, !tbaa !15
  %i.aeq = icmp ne i8 %i.aep, 48
  %spec.select1198 = zext i1 %i.aeq to i32        ; 2 uses
  br label %bb.lc

bb.lc:                                            ; preds = %bb.kz, %bb.lb, %bb.la
  %.51430 = phi i32 [ %.41501, %bb.kz ], [ %.110161503, %bb.la ], [ %spec.select1198, %bb.lb ] ; 4 uses
  %.31018 = phi i32 [ %.110161503, %bb.kz ], [ %.110161503, %bb.la ], [ %spec.select1198, %bb.lb ] ; 3 uses
  %i.aer = sub i32 %.11939, %.51430               ; 3 uses
  %i.aes = and i32 %.1952, 2
  %.not1142 = icmp eq i32 %i.aes, 0
  br i1 %.not1142, label %bb.ld, label %.thread1529

bb.ld:                                            ; preds = %bb.lc
  %i.aet = icmp slt i32 %i.aer, 1
  br i1 %i.aet, label %.thread1529, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.aeu = load i64, ptr %i.aj, align 8, !tbaa !13
  %i.aev = and i64 %i.aeu, 3145728
  %i.aew = zext nneg i32 %i.aer to i64            ; 3 uses
  br label %bb.lf

bb.lf:                                            ; preds = %bb.lg, %bb.le
  %.11897 = phi i64 [ %.1887, %bb.le ], [ %i.aez, %bb.lg ] ; 4 uses
  %i.aex = sub i64 %.11897, %i.by
  %i.aey = icmp slt i64 %i.aex, %i.aew
  br i1 %i.aey, label %bb.lg, label %bb.li

bb.lg:                                            ; preds = %bb.lf
  %i.aez = shl i64 %.11897, 1                     ; 2 uses
  %i.afa = icmp slt i64 %i.aez, 0
  br i1 %i.afa, label %bb.lh, label %bb.lf, !llvm.loop !49

bb.lh:                                            ; preds = %bb.lg
  %i.afb = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.afb, ptr noundef nonnull @.str.2) #19
  unreachable

bb.li:                                            ; preds = %bb.lf
  %i.afc = call i64 @rb_str_resize(i64 noundef %i.ah, i64 noundef %.11897) #20 ; 0 uses
  %i.afd = load i64, ptr %i.aj, align 8, !tbaa !13 ; 2 uses
  %i.afe = and i64 %i.afd, -3145729
  %i.aff = or disjoint i64 %i.afe, %i.aev
  store i64 %i.aff, ptr %i.aj, align 8, !tbaa !13
  %i.afg = and i64 %i.afd, 8192
  %.not.i1331 = icmp eq i64 %i.afg, 0
  br i1 %.not.i1331, label %RSTRING_PTR.exit1332, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  %i.afh = load ptr, ptr %i.am, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1332

RSTRING_PTR.exit1332:                             ; preds = %bb.li, %bb.lj
  %i.afi = phi ptr [ %i.afh, %bb.lj ], [ %i.am, %bb.li ]
  %i.afj = getelementptr i8, ptr %i.afi, i64 %i.by
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.afj, i8 noundef 32, i64 noundef %i.aew, i1 noundef false) #20
  %i.afk = add i64 %i.by, %i.aew
  br label %.thread1529

.thread1529:                                      ; preds = %.thread1496, %RSTRING_PTR.exit1332, %bb.ld, %bb.lc
  %.410191526 = phi i32 [ %.31018, %bb.lc ], [ %.31018, %bb.ld ], [ %.31018, %RSTRING_PTR.exit1332 ], [ %.110161503, %.thread1496 ] ; 4 uses
  %.614311524 = phi i32 [ %.51430, %bb.lc ], [ %.51430, %bb.ld ], [ %.51430, %RSTRING_PTR.exit1332 ], [ %.11939, %.thread1496 ] ; 2 uses
  %.13941 = phi i32 [ %i.aer, %bb.lc ], [ 0, %bb.ld ], [ 0, %RSTRING_PTR.exit1332 ], [ 0, %.thread1496 ] ; 2 uses
  %.13899 = phi i64 [ %.1887, %bb.lc ], [ %.1887, %bb.ld ], [ %.11897, %RSTRING_PTR.exit1332 ], [ %.1887, %.thread1496 ] ; 2 uses
  %.8883 = phi i64 [ %i.by, %bb.lc ], [ %i.by, %bb.ld ], [ %i.afk, %RSTRING_PTR.exit1332 ], [ %i.by, %.thread1496 ] ; 4 uses
  %.not1143 = icmp eq i8 %.3, 0
  br i1 %.not1143, label %bb.lq, label %bb.lk

bb.lk:                                            ; preds = %.thread1529
  %i.afl = load i64, ptr %i.aj, align 8, !tbaa !13
  %i.afm = and i64 %i.afl, 3145728
  br label %bb.ll

bb.ll:                                            ; preds = %bb.lm, %bb.lk
  %.14900 = phi i64 [ %.13899, %bb.lk ], [ %i.afp, %bb.lm ] ; 4 uses
  %i.afn = sub i64 %.14900, %.8883
  %i.afo = icmp slt i64 %i.afn, 1
  br i1 %i.afo, label %bb.lm, label %bb.lo

bb.lm:                                            ; preds = %bb.ll
  %i.afp = shl i64 %.14900, 1                     ; 2 uses
  %i.afq = icmp slt i64 %i.afp, 0
  br i1 %i.afq, label %bb.ln, label %bb.ll, !llvm.loop !50

bb.ln:                                            ; preds = %bb.lm
  %i.afr = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.afr, ptr noundef nonnull @.str.2) #19
  unreachable

bb.lo:                                            ; preds = %bb.ll
  %i.afs = call i64 @rb_str_resize(i64 noundef %i.ah, i64 noundef %.14900) #20 ; 0 uses
  %i.aft = load i64, ptr %i.aj, align 8, !tbaa !13 ; 2 uses
  %i.afu = and i64 %i.aft, -3145729
  %i.afv = or disjoint i64 %i.afu, %i.afm
  store i64 %i.afv, ptr %i.aj, align 8, !tbaa !13
  %i.afw = and i64 %i.aft, 8192
  %.not.i1333 = icmp eq i64 %i.afw, 0
  br i1 %.not.i1333, label %RSTRING_PTR.exit1334, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.afx = load ptr, ptr %i.am, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1334

RSTRING_PTR.exit1334:                             ; preds = %bb.lo, %bb.lp
  %i.afy = phi ptr [ %i.afx, %bb.lp ], [ %i.am, %bb.lo ]
  %i.afz = getelementptr i8, ptr %i.afy, i64 %.8883
  store i8 %.3, ptr %i.afz, align 1
  %i.aga = add i64 %.8883, 1
  br label %bb.lq

bb.lq:                                            ; preds = %RSTRING_PTR.exit1334, %.thread1529
  %.15901 = phi i64 [ %.14900, %RSTRING_PTR.exit1334 ], [ %.13899, %.thread1529 ] ; 2 uses
  %.9884 = phi i64 [ %i.aga, %RSTRING_PTR.exit1334 ], [ %.8883, %.thread1529 ] ; 4 uses
  br i1 %.not11411504, label %bb.ly, label %bb.lr

bb.lr:                                            ; preds = %bb.lq
  %i.agb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.110281502) #22
  %i.agc = load i64, ptr %i.aj, align 8, !tbaa !13
  %i.agd = and i64 %i.agc, 3145728
  %sext = shl i64 %i.agb, 32                      ; 2 uses
  %i.age = ashr exact i64 %sext, 32               ; 3 uses
  br label %bb.ls

bb.ls:                                            ; preds = %bb.lt, %bb.lr
  %.16902 = phi i64 [ %.15901, %bb.lr ], [ %i.agh, %bb.lt ] ; 4 uses
  %i.agf = sub i64 %.16902, %.9884
  %i.agg = icmp sgt i64 %i.age, %i.agf
  br i1 %i.agg, label %bb.lt, label %bb.lv

bb.lt:                                            ; preds = %bb.ls
  %i.agh = shl i64 %.16902, 1                     ; 2 uses
  %i.agi = icmp slt i64 %i.agh, 0
  br i1 %i.agi, label %bb.lu, label %bb.ls, !llvm.loop !51

bb.lu:                                            ; preds = %bb.lt
  %i.agj = load i64, ptr @rb_eArgError, align 8, !tbaa !11
  call void (i64, ptr, ...) @rb_raise(i64 noundef %i.agj, ptr noundef nonnull @.str.2) #19
  unreachable

bb.lv:                                            ; preds = %bb.ls
  %i.agk = call i64 @rb_str_resize(i64 noundef %i.ah, i64 noundef %.16902) #20 ; 0 uses
  %i.agl = load i64, ptr %i.aj, align 8, !tbaa !13 ; 2 uses
  %i.agm = and i64 %i.agl, -3145729
  %i.agn = or disjoint i64 %i.agm, %i.agd
  store i64 %i.agn, ptr %i.aj, align 8, !tbaa !13
  %i.ago = and i64 %i.agl, 8192
  %.not.i1336 = icmp eq i64 %i.ago, 0
  br i1 %.not.i1336, label %RSTRING_PTR.exit1337, label %bb.lw

bb.lw:                                            ; preds = %bb.lv
  %i.agp = load ptr, ptr %i.am, align 8, !tbaa !15
  br label %RSTRING_PTR.exit1337

RSTRING_PTR.exit1337:                             ; preds = %bb.lv, %bb.lw
  %i.agq = phi ptr [ %i.agp, %bb.lw ], [ %i.am, %bb.lv ]
  %.not.i1338 = icmp eq i64 %sext, 0
  br i1 %.not.i1338, label %ruby_nonempty_memcpy.exit1340, label %bb.lx

bb.lx:                                            ; preds = %RSTRING_PTR.exit1337
  %i.agr = getelementptr i8, ptr %i.agq, i64 %.9884
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.agr, ptr noundef nonnull readonly align 1 %.110281502, i64 noundef range(i64 1, 0) %i.age, i1 noundef false) #20
  br label %ruby_nonempty_memcpy.exit1340

ruby_nonempty_memcpy.exit1340:                    ; preds = %RSTRING_PTR.exit1337, %bb.lx
end_hunk_1
