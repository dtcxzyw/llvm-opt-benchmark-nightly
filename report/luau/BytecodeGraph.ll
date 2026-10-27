Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/BytecodeGraph?download=true
inline.NumInlined: 3821
inline.NumDeleted: 1895
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE15emitInstructionENS0_4BcOpE:bb.a
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %i.un
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 4
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !33
  %i.us = trunc i32 %i.ur to i8
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.tu, i32 noundef 74, i8 noundef zeroext %i.uf, i8 noundef zeroext %i.uh, i8 noundef zeroext %i.us)
  %i.ut = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.uu = load ptr, ptr %i.tv, align 8, !tbaa !241
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %.sroa.0.0.copyload.i283 = load i32, ptr %i.uv, align 4, !tbaa !33
  %i.uw = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i283)
  %i.ux = zext i8 %i.uw to i32
  tail call void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.ut, i32 noundef %i.ux)
  br label %bb.bx

bb.ba:                                            ; preds = %bb.a
  %i.uy = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.uz = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !241 ; 2 uses
  %.sroa.01.0.copyload.i.i284 = load i32, ptr %i.va, align 4, !tbaa !33
  %i.vb = load ptr, ptr %i.a, align 8, !tbaa !297, !nonnull !170, !align !198
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 80
  %i.vd = lshr i32 %.sroa.01.0.copyload.i.i284, 4
  %i.ve = zext nneg i32 %i.vd to i64
  %i.vf = load ptr, ptr %i.vc, align 8, !tbaa !266
  %i.vg = getelementptr inbounds nuw [8 x i8], ptr %i.vf, i64 %i.ve
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !33
  %i.vj = trunc i32 %i.vi to i8
  %i.vk = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %.sroa.0.0.copyload.i285 = load i32, ptr %i.vk, align 4, !tbaa !33
  %i.vl = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i285)
  %i.vm = load ptr, ptr %i.uz, align 8, !tbaa !241
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 12
  %.sroa.01.0.copyload.i.i286 = load i32, ptr %i.vn, align 4, !tbaa !33
  %i.vo = load ptr, ptr %i.a, align 8, !tbaa !297, !nonnull !170, !align !198
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 80
  %i.vq = lshr i32 %.sroa.01.0.copyload.i.i286, 4
  %i.vr = zext nneg i32 %i.vq to i64
  %i.vs = load ptr, ptr %i.vp, align 8, !tbaa !266
  %i.vt = getelementptr inbounds nuw [8 x i8], ptr %i.vs, i64 %i.vr
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 4
  %i.vv = load i32, ptr %i.vu, align 4, !tbaa !33
  %i.vw = trunc i32 %i.vv to i8
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.uy, i32 noundef 75, i8 noundef zeroext %i.vj, i8 noundef zeroext %i.vl, i8 noundef zeroext %i.vw)
  %i.vx = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.vy = load ptr, ptr %0, align 8, !tbaa !281
  %i.vz = load ptr, ptr %i.vy, align 8
  %i.wa = tail call noundef i32 %i.vz(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.g, i8 noundef zeroext 2), !inline_history !731
  tail call void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.vx, i32 noundef %i.wa)
  br label %bb.bx

bb.bb:                                            ; preds = %bb.a
  %i.wb = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.wc = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !241 ; 2 uses
  %.sroa.01.0.copyload.i.i287 = load i32, ptr %i.wd, align 4, !tbaa !33
  %i.we = load ptr, ptr %i.a, align 8, !tbaa !297, !nonnull !170, !align !198
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 80
  %i.wg = lshr i32 %.sroa.01.0.copyload.i.i287, 4
  %i.wh = zext nneg i32 %i.wg to i64
  %i.wi = load ptr, ptr %i.wf, align 8, !tbaa !266
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.wi, i64 %i.wh
  %i.wk = getelementptr inbounds nuw i8, ptr %i.wj, i64 4
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !33
  %i.wm = trunc i32 %i.wl to i8
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wd, i64 4
  %.sroa.0.0.copyload.i288 = load i32, ptr %i.wn, align 4, !tbaa !33
  %i.wo = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i288)
  %i.wp = load ptr, ptr %i.wc, align 8, !tbaa !241
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 16
  %.sroa.01.0.copyload.i.i289 = load i32, ptr %i.wq, align 4, !tbaa !33
  %i.wr = load ptr, ptr %i.a, align 8, !tbaa !297, !nonnull !170, !align !198
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 80
  %i.wt = lshr i32 %.sroa.01.0.copyload.i.i289, 4
  %i.wu = zext nneg i32 %i.wt to i64
  %i.wv = load ptr, ptr %i.ws, align 8, !tbaa !266
  %i.ww = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %i.wu
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 4
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !33
  %i.wz = trunc i32 %i.wy to i8
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.wb, i32 noundef 60, i8 noundef zeroext %i.wm, i8 noundef zeroext %i.wo, i8 noundef zeroext %i.wz)
  %i.xa = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.xb = load ptr, ptr %i.wc, align 8, !tbaa !241
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 8
  %.sroa.0.0.copyload.i290 = load i32, ptr %i.xc, align 4, !tbaa !33
  %i.xd = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i290)
  %i.xe = zext i8 %i.xd to i32
  %i.xf = load ptr, ptr %i.wc, align 8, !tbaa !241
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 12
  %.sroa.0.0.copyload.i291 = load i32, ptr %i.xg, align 4, !tbaa !33
  %i.xh = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i291)
  %i.xi = zext i8 %i.xh to i32
  %i.xj = shl nuw nsw i32 %i.xi, 8
  %i.xk = or disjoint i32 %i.xj, %i.xe
  tail call void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.xa, i32 noundef %i.xk)
  br label %bb.bx

bb.bc:                                            ; preds = %bb.a
  %i.xl = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.xm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !241 ; 2 uses
  %i.xo = load i32, ptr %i.xn, align 4
  %i.xp = lshr i32 %i.xo, 4
  %i.xq = trunc i32 %i.xp to i8
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xn, i64 4
  %.sroa.01.0.copyload.i.i292 = load i32, ptr %i.xr, align 4, !tbaa !33
  %i.xs = load ptr, ptr %i.a, align 8, !tbaa !297, !nonnull !170, !align !198
  %i.xt = getelementptr inbounds nuw i8, ptr %i.xs, i64 80
  %i.xu = lshr i32 %.sroa.01.0.copyload.i.i292, 4
  %i.xv = zext nneg i32 %i.xu to i64
  %i.xw = load ptr, ptr %i.xt, align 8, !tbaa !266
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %i.xw, i64 %i.xv
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 4
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !33
  %i.ya = trunc i32 %i.xz to i8
  %i.yb = add i8 %i.ya, 1
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.xl, i32 noundef 63, i8 noundef zeroext %i.xq, i8 noundef zeroext %i.yb, i8 noundef zeroext 0)
  br label %bb.bx

bb.bd:                                            ; preds = %bb.a
  %i.yc = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.yd = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %1)
  %i.ye = load ptr, ptr %0, align 8, !tbaa !281
  %i.yf = load ptr, ptr %i.ye, align 8
  %i.yg = tail call noundef i32 %i.yf(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.g, i8 noundef zeroext 0), !inline_history !730 ; 2 uses
  %i.yh = icmp ugt i32 %i.yg, 65535
  br i1 %i.yh, label %bb.be, label %_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE16getVmConstInputDERNS0_6BcInstEh.exit293

bb.be:                                            ; preds = %bb.bd
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.yi, align 8, !tbaa !289
  br label %_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE16getVmConstInputDERNS0_6BcInstEh.exit293

_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE16getVmConstInputDERNS0_6BcInstEh.exit293: ; preds = %bb.bd, %bb.be
  %i.yj = trunc i32 %i.yg to i16
  tail call void @_ZN4Luau15BytecodeBuilder6emitADE10LuauOpcodehs(ptr noundef nonnull align 8 dereferenceable(1048) %i.yc, i32 noundef 64, i8 noundef zeroext %i.yd, i16 noundef signext %i.yj)
  br label %bb.bx

bb.bf:                                            ; preds = %bb.a
  %i.yk = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.yl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !241
  %.sroa.01.0.copyload.i.i294 = load i32, ptr %i.ym, align 4, !tbaa !33
  %i.yn = load ptr, ptr %i.a, align 8, !tbaa !297, !nonnull !170, !align !198
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 80
  %i.yp = lshr i32 %.sroa.01.0.copyload.i.i294, 4
  %i.yq = zext nneg i32 %i.yp to i64
  %i.yr = load ptr, ptr %i.yo, align 8, !tbaa !266
  %i.ys = getelementptr inbounds nuw [8 x i8], ptr %i.yr, i64 %i.yq
  %i.yt = getelementptr inbounds nuw i8, ptr %i.ys, i64 4
  %i.yu = load i32, ptr %i.yt, align 4, !tbaa !33
  %i.yv = trunc i32 %i.yu to i8
  tail call void @_ZN4Luau15BytecodeBuilder6emitADE10LuauOpcodehs(ptr noundef nonnull align 8 dereferenceable(1048) %i.yk, i32 noundef 65, i8 noundef zeroext %i.yv, i16 noundef signext 0)
  br label %bb.bx

bb.bg:                                            ; preds = %bb.a
  %i.yw = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.yx = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %1)
  tail call void @_ZN4Luau15BytecodeBuilder6emitADE10LuauOpcodehs(ptr noundef nonnull align 8 dereferenceable(1048) %i.yw, i32 noundef 66, i8 noundef zeroext %i.yx, i16 noundef signext 0)
  %i.yy = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.yz = load ptr, ptr %0, align 8, !tbaa !281
  %i.za = load ptr, ptr %i.yz, align 8
  %i.zb = tail call noundef i32 %i.za(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.g, i8 noundef zeroext 0), !inline_history !731
  tail call void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.yy, i32 noundef %i.zb)
  br label %bb.bx

bb.bh:                                            ; preds = %bb.a
  tail call void @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE10recordJumpERNS0_6BcInstEh(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.g, i8 noundef zeroext 0)
  %i.zc = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  tail call void @_ZN4Luau15BytecodeBuilder5emitEE10LuauOpcodei(ptr noundef nonnull align 8 dereferenceable(1048) %i.zc, i32 noundef 67, i32 noundef 0)
  br label %bb.bx

bb.bi:                                            ; preds = %bb.a
  %i.zd = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.ze = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !241
  %.sroa.01.0.copyload.i.i295 = load i32, ptr %i.zf, align 4, !tbaa !33
  %i.zg = load ptr, ptr %i.a, align 8, !tbaa !297, !nonnull !170, !align !198
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 80
  %i.zi = lshr i32 %.sroa.01.0.copyload.i.i295, 4
  %i.zj = zext nneg i32 %i.zi to i64
  %i.zk = load ptr, ptr %i.zh, align 8, !tbaa !266
  %i.zl = getelementptr inbounds nuw [8 x i8], ptr %i.zk, i64 %i.zj
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 4
  %i.zn = load i32, ptr %i.zm, align 4, !tbaa !33
  tail call void @_ZN4Luau15BytecodeBuilder5emitEE10LuauOpcodei(ptr noundef nonnull align 8 dereferenceable(1048) %i.zd, i32 noundef 69, i32 noundef %i.zn)
  br label %bb.bx

bb.bj:                                            ; preds = %bb.a
  %i.zo = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.zp = load ptr, ptr %i.zo, align 8, !tbaa !241 ; 3 uses
  %.sroa.01.0.copyload.i.i296 = load i32, ptr %i.zp, align 4, !tbaa !33
  %i.zq = load ptr, ptr %i.a, align 8, !tbaa !297, !nonnull !170, !align !198
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zq, i64 80
  %i.zs = lshr i32 %.sroa.01.0.copyload.i.i296, 4
  %i.zt = zext nneg i32 %i.zs to i64
  %i.zu = load ptr, ptr %i.zr, align 8, !tbaa !266 ; 2 uses
  %i.zv = getelementptr inbounds nuw [8 x i8], ptr %i.zu, i64 %i.zt
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 4
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !33 ; 2 uses
  %i.zy = trunc i32 %i.zx to i8
  %i.zz = and i32 %i.zx, 254
  %or.cond = icmp eq i32 %i.zz, 0
  %i.aaa = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.aab = getelementptr inbounds nuw i8, ptr %i.zp, i64 4
  %.sroa.0.0.copyload.i297 = load i32, ptr %i.aab, align 4, !tbaa !33 ; 2 uses
  br i1 %or.cond, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.aac = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i297)
  %i.aad = load ptr, ptr %i.zo, align 8, !tbaa !241
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 8
  %.sroa.01.0.copyload.i.i298 = load i32, ptr %i.aae, align 4, !tbaa !33
  %i.aaf = load ptr, ptr %i.a, align 8, !tbaa !297, !nonnull !170, !align !198
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 80
  %i.aah = lshr i32 %.sroa.01.0.copyload.i.i298, 4
  %i.aai = zext nneg i32 %i.aah to i64
  %i.aaj = load ptr, ptr %i.aag, align 8, !tbaa !266
  %i.aak = getelementptr inbounds nuw [8 x i8], ptr %i.aaj, i64 %i.aai
  br label %.sink.split

bb.bl:                                            ; preds = %bb.bj
  %i.aal = lshr i32 %.sroa.0.0.copyload.i297, 4
  %i.aam = trunc i32 %i.aal to i8
  %i.aan = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  %.sroa.01.0.copyload.i.i300 = load i32, ptr %i.aan, align 4, !tbaa !33
  %i.aao = lshr i32 %.sroa.01.0.copyload.i.i300, 4
  %i.aap = zext nneg i32 %i.aao to i64
  %i.aaq = getelementptr inbounds nuw [8 x i8], ptr %i.zu, i64 %i.aap
  br label %.sink.split

bb.bm:                                            ; preds = %bb.a, %bb.a
  %i.aar = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.aas = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %1)
  %i.aat = load ptr, ptr %0, align 8, !tbaa !281
  %i.aau = load ptr, ptr %i.aat, align 8
  %i.aav = tail call noundef i32 %i.aau(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.g, i8 noundef zeroext 0), !inline_history !733 ; 2 uses
  %i.aaw = icmp ugt i32 %i.aav, 255
  br i1 %i.aaw, label %bb.bn, label %_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE18getVmConstInputABCERNS0_6BcInstEh.exit301

bb.bn:                                            ; preds = %bb.bm
  %i.aax = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.aax, align 8, !tbaa !289
  br label %_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE18getVmConstInputABCERNS0_6BcInstEh.exit301

_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE18getVmConstInputABCERNS0_6BcInstEh.exit301: ; preds = %bb.bm, %bb.bn
  %i.aay = trunc i32 %i.aav to i8
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !241
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aba, i64 4
  %.sroa.0.0.copyload.i302 = load i32, ptr %i.abb, align 4, !tbaa !33
  %i.abc = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i302)
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.aar, i32 noundef %i.l, i8 noundef zeroext %i.aas, i8 noundef zeroext %i.aay, i8 noundef zeroext %i.abc)
  br label %bb.bx

bb.bo:                                            ; preds = %bb.a
  tail call void @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE10recordJumpERNS0_6BcInstEh(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.g, i8 noundef zeroext 2)
  %i.abd = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.abe = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !241
  %.sroa.0.0.copyload.i303 = load i32, ptr %i.abf, align 4, !tbaa !33
  %i.abg = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i303)
  tail call void @_ZN4Luau15BytecodeBuilder6emitADE10LuauOpcodehs(ptr noundef nonnull align 8 dereferenceable(1048) %i.abd, i32 noundef 77, i8 noundef zeroext %i.abg, i16 noundef signext 0)
  %i.abh = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.abi = load ptr, ptr %i.abe, align 8, !tbaa !241
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 4
  %.sroa.01.0.copyload.i.i304 = load i32, ptr %i.abj, align 4, !tbaa !33
  %i.abk = load ptr, ptr %i.a, align 8, !tbaa !297, !nonnull !170, !align !198
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 80
  %i.abm = lshr i32 %.sroa.01.0.copyload.i.i304, 4
  %i.abn = zext nneg i32 %i.abm to i64
  %i.abo = load ptr, ptr %i.abl, align 8, !tbaa !266
  %i.abp = getelementptr inbounds nuw [8 x i8], ptr %i.abo, i64 %i.abn
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abp, i64 4
  %i.abr = load i8, ptr %i.abq, align 4, !tbaa !33, !range !169, !noundef !170
  %i.abs = zext nneg i8 %i.abr to i32
  %i.abt = shl nuw i32 %i.abs, 31
  tail call void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.abh, i32 noundef %i.abt)
  br label %bb.bx

bb.bp:                                            ; preds = %bb.a
  tail call void @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE10recordJumpERNS0_6BcInstEh(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.g, i8 noundef zeroext 2)
  %i.abu = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.abv = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !241
  %.sroa.0.0.copyload.i305 = load i32, ptr %i.abw, align 4, !tbaa !33
  %i.abx = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i305)
  tail call void @_ZN4Luau15BytecodeBuilder6emitADE10LuauOpcodehs(ptr noundef nonnull align 8 dereferenceable(1048) %i.abu, i32 noundef 78, i8 noundef zeroext %i.abx, i16 noundef signext 0)
  %i.aby = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.abz = load ptr, ptr %i.abv, align 8, !tbaa !241 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abz, i64 4
  %.sroa.01.0.copyload.i.i306 = load i32, ptr %i.aca, align 4, !tbaa !33
  %i.acb = load ptr, ptr %i.a, align 8, !tbaa !297, !nonnull !170, !align !198
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 80
  %i.acd = lshr i32 %.sroa.01.0.copyload.i.i306, 4
  %i.ace = zext nneg i32 %i.acd to i64
  %i.acf = load ptr, ptr %i.acc, align 8, !tbaa !266 ; 2 uses
  %i.acg = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %i.ace
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 4
  %i.aci = load i8, ptr %i.ach, align 4, !tbaa !33, !range !169, !noundef !170
  %i.acj = zext nneg i8 %i.aci to i32
  %i.ack = shl nuw i32 %i.acj, 31
  %i.acl = getelementptr inbounds nuw i8, ptr %i.abz, i64 12
  %.sroa.01.0.copyload.i.i307 = load i32, ptr %i.acl, align 4, !tbaa !33
  %i.acm = lshr i32 %.sroa.01.0.copyload.i.i307, 4
  %i.acn = zext nneg i32 %i.acm to i64
  %i.aco = getelementptr inbounds nuw [8 x i8], ptr %i.acf, i64 %i.acn
  %i.acp = getelementptr inbounds nuw i8, ptr %i.aco, i64 4
  %i.acq = load i8, ptr %i.acp, align 4, !tbaa !33, !range !169, !noundef !170
  %i.acr = zext nneg i8 %i.acq to i32
  %i.acs = or disjoint i32 %i.ack, %i.acr
  tail call void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.aby, i32 noundef %i.acs)
  br label %bb.bx

bb.bq:                                            ; preds = %bb.a, %bb.a
  tail call void @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE10recordJumpERNS0_6BcInstEh(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.g, i8 noundef zeroext 2)
  %i.act = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.acu = load i32, ptr %i.g, align 8, !tbaa !231
  %i.acv = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.acw = load ptr, ptr %i.acv, align 8, !tbaa !241
  %.sroa.0.0.copyload.i308 = load i32, ptr %i.acw, align 4, !tbaa !33
  %i.acx = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i308)
  tail call void @_ZN4Luau15BytecodeBuilder6emitADE10LuauOpcodehs(ptr noundef nonnull align 8 dereferenceable(1048) %i.act, i32 noundef %i.acu, i8 noundef zeroext %i.acx, i16 noundef signext 0)
  %i.acy = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.acz = load ptr, ptr %i.acv, align 8, !tbaa !241
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 4
  %.sroa.01.0.copyload.i.i309 = load i32, ptr %i.ada, align 4, !tbaa !33
  %i.adb = load ptr, ptr %i.a, align 8, !tbaa !297, !nonnull !170, !align !198
  %i.adc = getelementptr inbounds nuw i8, ptr %i.adb, i64 80
  %i.add = lshr i32 %.sroa.01.0.copyload.i.i309, 4
  %i.ade = zext nneg i32 %i.add to i64
  %i.adf = load ptr, ptr %i.adc, align 8, !tbaa !266
  %i.adg = getelementptr inbounds nuw [8 x i8], ptr %i.adf, i64 %i.ade
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 4
  %i.adi = load i8, ptr %i.adh, align 4, !tbaa !33, !range !169, !noundef !170
  %i.adj = zext nneg i8 %i.adi to i32
  %i.adk = shl nuw i32 %i.adj, 31
  %i.adl = load ptr, ptr %0, align 8, !tbaa !281
  %i.adm = load ptr, ptr %i.adl, align 8
  %i.adn = tail call noundef i32 %i.adm(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.g, i8 noundef zeroext 3), !inline_history !731
  %i.ado = or i32 %i.adn, %i.adk
  tail call void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.acy, i32 noundef %i.ado)
  br label %bb.bx

bb.br:                                            ; preds = %bb.a
  %i.adp = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.adq = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %1)
  %i.adr = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ads = load ptr, ptr %i.adr, align 8, !tbaa !241
  %.sroa.0.0.copyload.i310 = load i32, ptr %i.ads, align 4, !tbaa !33
  %i.adt = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i310)
  %i.adu = load ptr, ptr %i.adr, align 8, !tbaa !241
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 4
  %.sroa.0.0.copyload.i311 = load i32, ptr %i.adv, align 4, !tbaa !33
  %i.adw = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i311)
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.adp, i32 noundef 81, i8 noundef zeroext %i.adq, i8 noundef zeroext %i.adt, i8 noundef zeroext %i.adw)
  br label %bb.bx

bb.bs:                                            ; preds = %bb.a
  %i.adx = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.ady = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %1)
  %i.adz = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.aea = load ptr, ptr %i.adz, align 8, !tbaa !241
  %.sroa.0.0.copyload.i312 = load i32, ptr %i.aea, align 4, !tbaa !33
  %i.aeb = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i312)
  %i.aec = load ptr, ptr %0, align 8, !tbaa !281
  %i.aed = load ptr, ptr %i.aec, align 8
  %i.aee = tail call noundef i32 %i.aed(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.g, i8 noundef zeroext 1), !inline_history !733 ; 2 uses
  %i.aef = icmp ugt i32 %i.aee, 255
  br i1 %i.aef, label %bb.bt, label %_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE18getVmConstInputABCERNS0_6BcInstEh.exit313

bb.bt:                                            ; preds = %bb.bs
  %i.aeg = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.aeg, align 8, !tbaa !289
  br label %_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE18getVmConstInputABCERNS0_6BcInstEh.exit313

_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE18getVmConstInputABCERNS0_6BcInstEh.exit313: ; preds = %bb.bs, %bb.bt
  %i.aeh = trunc i32 %i.aee to i8
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.adx, i32 noundef 82, i8 noundef zeroext %i.ady, i8 noundef zeroext %i.aeb, i8 noundef zeroext %i.aeh)
  br label %bb.bx

bb.bu:                                            ; preds = %bb.a
  %i.aei = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.aej = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !241
  %.sroa.0.0.copyload.i314 = load i32, ptr %i.aek, align 4, !tbaa !33
  %i.ael = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i314)
  %i.aem = load ptr, ptr %i.aej, align 8, !tbaa !241
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 4
  %.sroa.0.0.copyload.i315 = load i32, ptr %i.aen, align 4, !tbaa !33
  %i.aeo = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i315)
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.aei, i32 noundef 86, i8 noundef zeroext %i.ael, i8 noundef zeroext 0, i8 noundef zeroext %i.aeo)
  %i.aep = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.aeq = load ptr, ptr %0, align 8, !tbaa !281
  %i.aer = load ptr, ptr %i.aeq, align 8
  %i.aes = tail call noundef i32 %i.aer(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.g, i8 noundef zeroext 2), !inline_history !731
  tail call void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.aep, i32 noundef %i.aes)
  br label %bb.bx

bb.bv:                                            ; preds = %bb.a
  tail call void @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE10recordJumpERNS0_6BcInstEh(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.g, i8 noundef zeroext 2)
  %i.aet = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.aev = load ptr, ptr %i.aeu, align 8, !tbaa !241
  %.sroa.0.0.copyload.i316 = load i32, ptr %i.aev, align 4, !tbaa !33
  %i.aew = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i316)
  tail call void @_ZN4Luau15BytecodeBuilder6emitADE10LuauOpcodehs(ptr noundef nonnull align 8 dereferenceable(1048) %i.aet, i32 noundef 88, i8 noundef zeroext %i.aew, i16 noundef signext 0)
  %i.aex = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.aey = load ptr, ptr %i.aeu, align 8, !tbaa !241
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aey, i64 4
  %.sroa.01.0.copyload.i.i317 = load i32, ptr %i.aez, align 4, !tbaa !33
  %i.afa = load ptr, ptr %i.a, align 8, !tbaa !297, !nonnull !170, !align !198
  %i.afb = getelementptr inbounds nuw i8, ptr %i.afa, i64 80
  %i.afc = lshr i32 %.sroa.01.0.copyload.i.i317, 4
  %i.afd = zext nneg i32 %i.afc to i64
  %i.afe = load ptr, ptr %i.afb, align 8, !tbaa !266
  %i.aff = getelementptr inbounds nuw [8 x i8], ptr %i.afe, i64 %i.afd
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 4
  %i.afh = load i32, ptr %i.afg, align 4, !tbaa !33
  tail call void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.aex, i32 noundef %i.afh)
  br label %bb.bx

bb.bw:                                            ; preds = %bb.a
  %i.afi = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.afj = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %1)
  %i.afk = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.afl = load ptr, ptr %i.afk, align 8, !tbaa !241
  %.sroa.0.0.copyload.i318 = load i32, ptr %i.afl, align 4, !tbaa !33
  %i.afm = tail call noundef zeroext i8 @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE11getRegisterENS0_4BcOpE(ptr noundef nonnull align 8 dereferenceable(49) %0, i32 %.sroa.0.0.copyload.i318)
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.afi, i32 noundef 89, i8 noundef zeroext %i.afj, i8 noundef zeroext %i.afm, i8 noundef zeroext 0)
  %i.afn = load ptr, ptr %i.h, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.afo = load ptr, ptr %0, align 8, !tbaa !281
  %i.afp = load ptr, ptr %i.afo, align 8
  %i.afq = tail call noundef i32 %i.afp(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 8 dereferenceable(76) %i.g, i8 noundef zeroext 1), !inline_history !731
  tail call void @_ZN4Luau15BytecodeBuilder7emitAuxEj(ptr noundef nonnull align 8 dereferenceable(1048) %i.afn, i32 noundef %i.afq)
  br label %bb.bx

.sink.split:                                      ; preds = %bb.bl, %bb.bk
  %.sink325 = phi ptr [ %i.aak, %bb.bk ], [ %i.aaq, %bb.bl ]
  %.sink = phi i8 [ %i.aac, %bb.bk ], [ %i.aam, %bb.bl ]
  %2 = getelementptr inbounds nuw i8, ptr %.sink325, i64 4
  %3 = load i32, ptr %2, align 4, !tbaa !33
  %4 = trunc i32 %3 to i8
  tail call void @_ZN4Luau15BytecodeBuilder7emitABCE10LuauOpcodehhh(ptr noundef nonnull align 8 dereferenceable(1048) %i.aaa, i32 noundef 70, i8 noundef zeroext %i.zy, i8 noundef zeroext %.sink, i8 noundef zeroext %4)
  br label %bb.bx

bb.bx:                                            ; preds = %.sink.split, %bb.bw, %bb.bv, %bb.bu, %_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE18getVmConstInputABCERNS0_6BcInstEh.exit313, %bb.br, %bb.bq, %bb.bp, %bb.bo, %_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE18getVmConstInputABCERNS0_6BcInstEh.exit301, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE16getVmConstInputDERNS0_6BcInstEh.exit293, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE16getVmConstInputDERNS0_6BcInstEh.exit264, %bb.ap, %bb.ao, %bb.an, %_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE18getVmConstInputABCERNS0_6BcInstEh.exit, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE13getProtoInputERNS0_6BcInstEh.exit, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %._crit_edge, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE16getVmConstInputDERNS0_6BcInstEh.exit, %bb.g, %bb.f, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4Luau8Bytecode23BytecodeGraphSerializerINS0_9BcVmConstEE9patchJumpERNS3_8JumpInfoE(ptr noundef nonnull align 8 dereferenceable(49) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !297, !nonnull !170, !align !198
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.c, align 4, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = lshr i32 %.sroa.0.0.copyload, 4
  %i.f = zext nneg i32 %i.e to i64
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !200
  %i.h = getelementptr inbounds nuw [136 x i8], ptr %i.g, i64 %i.f ; 2 uses
  %i.i = load i32, ptr %1, align 4, !tbaa !735
  switch i32 %i.i, label %bb.d [
    i32 23, label %bb.b
    i32 25, label %bb.b
    i32 26, label %bb.b
    i32 27, label %bb.b
    i32 28, label %bb.b
    i32 29, label %bb.b
    i32 30, label %bb.b
    i32 31, label %bb.b
    i32 32, label %bb.b
    i32 56, label %bb.b
    i32 57, label %bb.b
    i32 76, label %bb.b
    i32 58, label %bb.b
    i32 59, label %bb.b
    i32 61, label %bb.b
    i32 24, label %bb.b
    i32 77, label %bb.b
    i32 78, label %bb.b
    i32 79, label %bb.b
    i32 80, label %bb.b
    i32 88, label %bb.b
    i32 3, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !736
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.p = load i32, ptr %i.o, align 8, !tbaa !305
  %i.q = zext i32 %i.p to i64
  %i.r = tail call noundef zeroext i1 @_ZN4Luau15BytecodeBuilder10patchJumpDEmm(ptr noundef nonnull align 8 dereferenceable(1048) %i.k, i64 noundef %i.n, i64 noundef %i.q) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !304, !nonnull !170, !align !198
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !736
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 128
  %i.y = load i32, ptr %i.x, align 8, !tbaa !305
  %i.z = zext i32 %i.y to i64
  %i.aa = tail call noundef zeroext i1 @_ZN4Luau15BytecodeBuilder10patchSkipCEmm(ptr noundef nonnull align 8 dereferenceable(1048) %i.t, i64 noundef %i.w, i64 noundef %i.z) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlS4_S4_E_EEEvT_SH_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlS4_S4_E_EEEvT_SH_SH_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph37

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlS4_S4_E_EEET_SH_SH_T0_.exit
  %i.i = icmp eq i64 %i.bf, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph37, !llvm.loop !737

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.d, %.lr.ph ], [ %i.bi, %bb.b ] ; 2 uses
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.016.1.i.i, %bb.b ]
  %i.j = add nsw i64 %.lcssa, -2
  %i.k = lshr i64 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.l = getelementptr inbounds [4 x i8], ptr %0, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load i32, ptr %i.l, align 4, !tbaa !33
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlS4_S4_E_EEEvT_T0_SI_T1_T2_(ptr %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa, i32 %.sroa.03.0.copyload.i.i.i, ptr %3)
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.m = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !738

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.05.i.i = phi ptr [ %i.n, %.lr.ph.i9.i ], [ %storemerge20.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load i32, ptr %i.n, align 4, !tbaa !33
  %i.o = load i32, ptr %0, align 4, !tbaa !33
  store i32 %i.o, ptr %i.n, align 4, !tbaa !33
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 2
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEElS4_NS0_5__ops15_Iter_comp_iterIZNS3_23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlS4_S4_E_EEEvT_T0_SI_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.r, i32 %.sroa.03.0.copyload.i.i10.i, ptr %3)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlS4_S4_E_EEEvT_SH_SH_T0_.exit, !llvm.loop !739

.lr.ph37:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2036 = phi ptr [ %.sroa.016.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02135 = phi i64 [ %i.bf, %bb.b ], [ %2, %.lr.ph ]
  %i.t = phi i64 [ %i.bi, %bb.b ], [ %i.d, %.lr.ph ]
  %i.u = lshr i64 %i.t, 1
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %storemerge2036, i64 -4
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN4Luau8Bytecode4BcOpESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_comp_iterIZNS3_23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlS4_S4_E_EEEvT_SH_SH_SH_T0_(ptr %0, ptr nonnull %i.f, ptr %i.v, ptr nonnull %i.w, ptr %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.i, %.lr.ph37
  %.sroa.013.0.i.i = phi ptr [ %storemerge2036, %.lr.ph37 ], [ %.sroa.013.1.i.i, %bb.i ]
  %.sroa.016.0.i.i = phi ptr [ %i.f, %.lr.ph37 ], [ %i.be, %bb.i ]
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %0, align 4, !tbaa !33
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !297, !nonnull !170, !align !198
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !200  ; 3 uses
  %i.aa = lshr i32 %.sroa.0.0.copyload.i.i.i, 4
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [136 x i8], ptr %i.z, i64 %i.ab ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !324 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 124 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.sroa.016.1.i.i = phi ptr [ %.sroa.016.0.i.i, %bb.d ], [ %i.ar, %bb.f ] ; 9 uses
  %.sroa.01.0.copyload.i.i.i = load i32, ptr %.sroa.016.1.i.i, align 4, !tbaa !33 ; 2 uses
  %i.ag = lshr i32 %.sroa.01.0.copyload.i.i.i, 4
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [136 x i8], ptr %i.z, i64 %i.ah ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !324 ; 2 uses
  %i.al = icmp eq i32 %i.ak, %i.ae
  br i1 %i.al, label %.split.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit.i.i

.split.i.i:                                       ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 124
  %i.an = load i32, ptr %i.am, align 4, !tbaa !325
  %i.ao = load i32, ptr %i.af, align 4, !tbaa !325
  %i.ap = icmp ult i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit.i.i, %.split.i.i
  br label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit.i.i: ; preds = %bb.e
  %i.aq = icmp ult i32 %i.ak, %i.ae
  br i1 %i.aq, label %bb.f, label %.preheader

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit.i.i, %.split.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.016.1.i.i, i64 4
  br label %bb.e, !llvm.loop !740

bb.g:                                             ; preds = %.backedge, %.preheader
  %.sroa.013.0.pn.i.i = phi ptr [ %.sroa.013.0.i.i, %.preheader ], [ %.sroa.013.1.i.i, %.backedge ]
  %.sroa.013.1.i.i = getelementptr inbounds i8, ptr %.sroa.013.0.pn.i.i, i64 -4 ; 5 uses
  %.sroa.0.0.copyload.i9.i.i = load i32, ptr %.sroa.013.1.i.i, align 4, !tbaa !33 ; 2 uses
  %i.as = lshr i32 %.sroa.0.0.copyload.i9.i.i, 4
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [136 x i8], ptr %i.z, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 120
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !324 ; 2 uses
  %i.ax = icmp eq i32 %i.ae, %i.aw
  br i1 %i.ax, label %.split19.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit11.i.i

.split19.i.i:                                     ; preds = %bb.g
  %i.ay = load i32, ptr %i.af, align 4, !tbaa !325
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 124
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !325
  %i.bb = icmp ult i32 %i.ay, %i.ba
  br i1 %i.bb, label %.backedge, label %bb.h

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit11.i.i: ; preds = %bb.g
  %i.bc = icmp ult i32 %i.ae, %i.aw
  br i1 %i.bc, label %.backedge, label %bb.h

.backedge:                                        ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit11.i.i, %.split19.i.i
  br label %bb.g, !llvm.loop !741

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4Luau8Bytecode23BytecodeGraphSerializerINS3_9BcVmConstEE10rescheduleEvEUlNS3_4BcOpES7_E_EclINS_17__normal_iteratorIPS7_St6vectorIS7_SaIS7_EEEESG_EEbT_T0_.exit11.i.i, %.split19.i.i
  %i.bd = icmp ult ptr %.sroa.016.1.i.i, %.sroa.013.1.i.i
end_hunk_0
