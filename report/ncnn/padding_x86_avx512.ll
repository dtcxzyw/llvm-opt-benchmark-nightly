begin_hunk_0_@_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  br i1 %or.cond23, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %.not333 = icmp eq i32 %i.rd, %i.qx
  br i1 %.not333, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !61
  %.not334 = icmp eq i32 %i.rr, 0
  br i1 %.not334, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.rs = sdiv i32 %i.rd, 8
  %i.rt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.qp, i32 noundef %i.qv, i32 noundef %i.rs, i64 noundef %i.rn, i32 noundef 8, ptr noundef %i.ru)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.rv = load ptr, ptr %2, align 8, !tbaa !18
  %i.rw = icmp eq ptr %i.rv, null
  br i1 %i.rw, label %.thread446, label %_ZNK4ncnn3Mat5emptyEv.exit371

_ZNK4ncnn3Mat5emptyEv.exit371:                    ; preds = %bb.bm
  %i.rx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !20
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !59
  %i.sb = sext i32 %i.sa to i64
  %i.sc = mul i64 %i.ry, %i.sb
  %i.sd = icmp eq i64 %i.sc, 0
  br i1 %i.sd, label %.thread446, label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.se = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  br label %bb.dy

bb.bo:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit371
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  %i.sf = load i32, ptr %i.qy, align 8, !tbaa !52
  %i.sg = sdiv i32 %i.sf, 8
  store i32 %i.sg, ptr %i.j, align 4, !tbaa !58
  %i.sh = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.si)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.7, ptr nonnull %i.i, ptr nonnull %i.h, ptr nonnull %2, ptr nonnull %0, ptr nonnull %4, ptr nonnull %i.c, ptr nonnull %i.j, ptr nonnull %i.b, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  br label %.thread446

.thread446:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit371, %bb.bo, %bb.bm
  %.12.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit371 ], [ 0, %bb.bo ], [ -100, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  br label %_ZN4ncnnL42padding_constant_pack16_bf16s_fp16s_avx512ERKNS_3MatERS0_iiiiRKDv4_x.exit.thread

bb.bp:                                            ; preds = %bb.bi, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  br label %.thread456

bb.bq:                                            ; preds = %bb.av
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !50
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !51
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !48
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  %i.sr = load i32, ptr %i.a, align 4, !tbaa !58
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !52
  %i.su = add nsw i32 %i.st, %i.sr
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !53
  %i.sx = add nsw i32 %i.su, %i.sw                ; 2 uses
  store i32 %i.sx, ptr %i.k, align 4, !tbaa !58
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !61
  %.not335 = icmp eq i32 %i.sz, 0
  br i1 %.not335, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.ta = add nsw i32 %i.so, %i.t
  %i.tb = add nsw i32 %i.ta, %i.sq
  %i.tc = add nsw i32 %i.sk, %i.r
  %i.td = add nsw i32 %i.tc, %i.sm
  %i.te = load i32, ptr %i.b, align 4, !tbaa !58
  %i.tf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.td, i32 noundef %i.tb, i32 noundef %i.sx, i32 noundef %i.te, i64 noundef %i.ab, i32 noundef 8, ptr noundef %i.tg)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.th = load ptr, ptr %2, align 8, !tbaa !18
  %i.ti = icmp eq ptr %i.th, null
  br i1 %i.ti, label %.thread453, label %_ZNK4ncnn3Mat5emptyEv.exit370

_ZNK4ncnn3Mat5emptyEv.exit370:                    ; preds = %bb.bs
  %i.tj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !20
  %i.tl = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !59
  %i.tn = sext i32 %i.tm to i64
  %i.to = mul i64 %i.tk, %i.tn
  %i.tp = icmp eq i64 %i.to, 0
  br i1 %i.tp, label %.thread453, label %bb.bu

bb.bt:                                            ; preds = %bb.br
  %i.tq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  br label %bb.dy

bb.bu:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit370
  %i.tr = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.ts)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.8, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %4, ptr nonnull %i.c, ptr nonnull %i.k, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %1)
  br label %.thread453

.thread453:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit370, %bb.bu, %bb.bs
  %.14.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit370 ], [ 0, %bb.bu ], [ -100, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  br label %_ZN4ncnnL42padding_constant_pack16_bf16s_fp16s_avx512ERKNS_3MatERS0_iiiiRKDv4_x.exit.thread

bb.bv:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #12
  br label %.thread456

bb.bw:                                            ; preds = %_ZN4ncnn3Mat6addrefEv.exit
  switch i32 %i.z, label %.thread456 [
    i32 1, label %bb.bx
    i32 2, label %bb.cd
    i32 3, label %bb.cj
    i32 4, label %bb.cr
  ]

bb.bx:                                            ; preds = %bb.bw
  %i.tt = shl nsw i32 %i.r, 2
  %i.tu = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !50 ; 2 uses
  %i.tw = add nsw i32 %i.tv, %i.tt
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !51
  %i.tz = add nsw i32 %i.tw, %i.ty                ; 3 uses
  %i.ua = and i32 %i.tz, 7                        ; 2 uses
  %.not486 = icmp eq i32 %i.ua, 0
  %i.ub = and i32 %i.tz, 3
  %i.uc = icmp eq i32 %i.ub, 0
  %i.ud = lshr i64 %i.ab, 2
  %i.ue = select i1 %i.uc, i64 2, i64 0
  %i.uf = select i1 %.not486, i64 3, i64 %i.ue
  %i.ug = shl i64 %i.ud, %i.uf
  %i.uh = and i32 %i.tv, 3
  %i.ui = icmp eq i32 %i.uh, 0
  %i.uj = icmp eq i32 %i.ua, 4
  %or.cond25 = and i1 %i.ui, %i.uj
  br i1 %or.cond25, label %bb.by, label %.thread456

bb.by:                                            ; preds = %bb.bx
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ul = load i32, ptr %i.uk, align 8, !tbaa !61
  %i.um = icmp eq i32 %i.ul, 0
  br i1 %i.um, label %bb.bz, label %.thread456

bb.bz:                                            ; preds = %bb.by
  %i.un = ashr exact i32 %i.tz, 2
  %i.uo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.un, i64 noundef %i.ug, i32 noundef 4, ptr noundef %i.up)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.uq = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.ur = icmp eq ptr %i.uq, null
  br i1 %i.ur, label %_ZN4ncnnL42padding_constant_pack16_bf16s_fp16s_avx512ERKNS_3MatERS0_iiiiRKDv4_x.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit369

_ZNK4ncnn3Mat5emptyEv.exit369:                    ; preds = %bb.ca
  %i.us = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !20
  %i.uu = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !59
  %i.uw = sext i32 %i.uv to i64
  %i.ux = mul i64 %i.ut, %i.uw
  %i.uy = icmp eq i64 %i.ux, 0
  br i1 %i.uy, label %_ZN4ncnnL42padding_constant_pack16_bf16s_fp16s_avx512ERKNS_3MatERS0_iiiiRKDv4_x.exit.thread, label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.cc:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit369
  %i.va = load i16, ptr %i.c, align 2, !tbaa !122
  %i.vb = zext i16 %i.va to i64                   ; 4 uses
  %7 = shl nuw nsw i64 %i.vb, 16
  %8 = shl nuw nsw i64 %i.vb, 32
  %9 = shl nuw i64 %i.vb, 48
  %10 = or disjoint i64 %8, %7
  %11 = or disjoint i64 %10, %9
  %12 = or disjoint i64 %11, %i.vb
  %i.vc = load <2 x i32>, ptr %i.tu, align 8, !tbaa !58
  %i.vd = sdiv <2 x i32> %i.vc, splat (i32 4)     ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val395 = load i32, ptr %i.ve, align 4, !tbaa !63
  %i.vf = extractelement <2 x i32> %i.vd, i64 0
  %i.vg = extractelement <2 x i32> %i.vd, i64 1
  tail call fastcc void @_ZN4ncnnL38padding_constant_pack4_bf16s_fp16s_sseERKNS_3MatERS0_iiiil(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.uq, i32 %.val395, i32 noundef 0, i32 noundef 0, i32 noundef %i.vf, i32 noundef %i.vg, i64 noundef %12)
  br label %_ZN4ncnnL42padding_constant_pack16_bf16s_fp16s_avx512ERKNS_3MatERS0_iiiiRKDv4_x.exit.thread

bb.cd:                                            ; preds = %bb.bw
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !50
  %i.vj = add nsw i32 %i.vi, %i.r
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !51
  %i.vm = add nsw i32 %i.vj, %i.vl
  %i.vn = shl nsw i32 %i.t, 2
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 8, !tbaa !48 ; 2 uses
  %i.vq = add nsw i32 %i.vp, %i.vn
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !49
  %i.vt = add nsw i32 %i.vq, %i.vs                ; 3 uses
  %i.vu = and i32 %i.vt, 7                        ; 2 uses
  %.not485 = icmp eq i32 %i.vu, 0
  %i.vv = and i32 %i.vt, 3
  %i.vw = icmp eq i32 %i.vv, 0
  %i.vx = lshr i64 %i.ab, 2
  %i.vy = select i1 %i.vw, i64 2, i64 0
  %i.vz = select i1 %.not485, i64 3, i64 %i.vy
  %i.wa = shl i64 %i.vx, %i.vz
  %i.wb = and i32 %i.vp, 3
  %i.wc = icmp eq i32 %i.wb, 0
  %i.wd = icmp eq i32 %i.vu, 4
  %or.cond27 = and i1 %i.wc, %i.wd
  br i1 %or.cond27, label %bb.ce, label %.thread456

bb.ce:                                            ; preds = %bb.cd
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !61
  %i.wg = icmp eq i32 %i.wf, 0
  br i1 %i.wg, label %bb.cf, label %.thread456

bb.cf:                                            ; preds = %bb.ce
  %i.wh = ashr exact i32 %i.vt, 2
  %i.wi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.vm, i32 noundef %i.wh, i64 noundef %i.wa, i32 noundef 4, ptr noundef %i.wj)
          to label %bb.cg unwind label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.wk = load ptr, ptr %2, align 8, !tbaa !18    ; 2 uses
  %i.wl = icmp eq ptr %i.wk, null
  br i1 %i.wl, label %_ZN4ncnnL42padding_constant_pack16_bf16s_fp16s_avx512ERKNS_3MatERS0_iiiiRKDv4_x.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit368

_ZNK4ncnn3Mat5emptyEv.exit368:                    ; preds = %bb.cg
  %i.wm = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.wn = load i64, ptr %i.wm, align 8, !tbaa !20
  %i.wo = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !59
  %i.wq = sext i32 %i.wp to i64
  %i.wr = mul i64 %i.wn, %i.wq
  %i.ws = icmp eq i64 %i.wr, 0
  br i1 %i.ws, label %_ZN4ncnnL42padding_constant_pack16_bf16s_fp16s_avx512ERKNS_3MatERS0_iiiiRKDv4_x.exit.thread, label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.ci:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit368
  %i.wu = load i16, ptr %i.c, align 2, !tbaa !122
  %i.wv = zext i16 %i.wu to i64                   ; 4 uses
  %13 = shl nuw nsw i64 %i.wv, 16
  %14 = shl nuw nsw i64 %i.wv, 32
  %15 = shl nuw i64 %i.wv, 48
  %16 = or disjoint i64 %14, %13
  %17 = or disjoint i64 %16, %15
  %18 = or disjoint i64 %17, %i.wv
  %i.ww = load <2 x i32>, ptr %i.vo, align 8, !tbaa !58
  %i.wx = sdiv <2 x i32> %i.ww, splat (i32 4)     ; 2 uses
  %i.wy = load i32, ptr %i.vh, align 8, !tbaa !50
  %i.wz = load i32, ptr %i.vk, align 4, !tbaa !51
  %i.xa = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val397 = load i32, ptr %i.xa, align 4, !tbaa !63
  %i.xb = extractelement <2 x i32> %i.wx, i64 0
  %i.xc = extractelement <2 x i32> %i.wx, i64 1
  tail call fastcc void @_ZN4ncnnL38padding_constant_pack4_bf16s_fp16s_sseERKNS_3MatERS0_iiiil(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.wk, i32 %.val397, i32 noundef %i.xb, i32 noundef %i.xc, i32 noundef %i.wy, i32 noundef %i.wz, i64 noundef %18)
  br label %_ZN4ncnnL42padding_constant_pack16_bf16s_fp16s_avx512ERKNS_3MatERS0_iiiiRKDv4_x.exit.thread

bb.cj:                                            ; preds = %bb.bw
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !50
  %i.xf = add nsw i32 %i.xe, %i.r
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !51
  %i.xi = add nsw i32 %i.xf, %i.xh
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !48
  %i.xl = add nsw i32 %i.xk, %i.t
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !49
  %i.xo = add nsw i32 %i.xl, %i.xn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  %i.xp = load i32, ptr %i.b, align 4, !tbaa !58
  %i.xq = shl nsw i32 %i.xp, 2                    ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.xs = load i32, ptr %i.xr, align 8, !tbaa !52 ; 2 uses
  %i.xt = add nsw i32 %i.xq, %i.xs
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !53
  %i.xw = add nsw i32 %i.xt, %i.xv                ; 5 uses
  store i32 %i.xw, ptr %i.l, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  %i.xx = and i32 %i.xw, 7                        ; 2 uses
  %.not484 = icmp eq i32 %i.xx, 0                 ; 2 uses
  %i.xy = and i32 %i.xw, 3
  %i.xz = icmp eq i32 %i.xy, 0                    ; 2 uses
  %i.ya = select i1 %i.xz, i32 4, i32 1           ; 3 uses
  %i.yb = select i1 %.not484, i32 8, i32 %i.ya
  store i32 %i.yb, ptr %i.m, align 4, !tbaa !58
  %i.yc = lshr i64 %i.ab, 2
  %i.yd = select i1 %i.xz, i64 2, i64 0
  %i.ye = select i1 %.not484, i64 3, i64 %i.yd
  %i.yf = shl i64 %i.yc, %i.ye
  %i.yg = and i32 %i.xs, 3
  %i.yh = icmp eq i32 %i.yg, 0
  %i.yi = icmp eq i32 %i.xx, 4
  %or.cond29 = and i1 %i.yh, %i.yi
  br i1 %or.cond29, label %bb.ck, label %bb.cq

bb.ck:                                            ; preds = %bb.cj
  %.not336 = icmp eq i32 %i.xw, %i.xq
  br i1 %.not336, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.yj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.yk = load i32, ptr %i.yj, align 8, !tbaa !61
  %.not337 = icmp eq i32 %i.yk, 0
  br i1 %.not337, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.yl = sdiv i32 %i.xw, %i.ya
  %i.ym = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.xi, i32 noundef %i.xo, i32 noundef %i.yl, i64 noundef %i.yf, i32 noundef %i.ya, ptr noundef %i.yn)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.yo = load ptr, ptr %2, align 8, !tbaa !18
  %i.yp = icmp eq ptr %i.yo, null
  br i1 %i.yp, label %.thread473, label %_ZNK4ncnn3Mat5emptyEv.exit367

_ZNK4ncnn3Mat5emptyEv.exit367:                    ; preds = %bb.cn
  %i.yq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.yr = load i64, ptr %i.yq, align 8, !tbaa !20
  %i.ys = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.yt = load i32, ptr %i.ys, align 8, !tbaa !59
  %i.yu = sext i32 %i.yt to i64
  %i.yv = mul i64 %i.yr, %i.yu
  %i.yw = icmp eq i64 %i.yv, 0
  br i1 %i.yw, label %.thread473, label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.yx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  br label %bb.dy

bb.cp:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #12
  %i.yy = load i32, ptr %i.xr, align 8, !tbaa !52
  %i.yz = sdiv i32 %i.yy, 4
  store i32 %i.yz, ptr %i.n, align 4, !tbaa !58
  %i.za = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.zb)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9, ptr nonnull %i.m, ptr nonnull %i.l, ptr nonnull %2, ptr nonnull %0, ptr nonnull %4, ptr nonnull %i.c, ptr nonnull %i.n, ptr nonnull %i.b, ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #12
  br label %.thread473

.thread473:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit367, %bb.cp, %bb.cn
  %.20.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit367 ], [ 0, %bb.cp ], [ -100, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  br label %_ZN4ncnnL42padding_constant_pack16_bf16s_fp16s_avx512ERKNS_3MatERS0_iiiiRKDv4_x.exit.thread

bb.cq:                                            ; preds = %bb.cj, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #12
  br label %.thread456

bb.cr:                                            ; preds = %bb.bw
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.zd = load i32, ptr %i.zc, align 8, !tbaa !50
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !51
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.zh = load i32, ptr %i.zg, align 8, !tbaa !48
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #12
  %i.zk = load i32, ptr %i.a, align 4, !tbaa !58
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.zm = load i32, ptr %i.zl, align 8, !tbaa !52
  %i.zn = add nsw i32 %i.zm, %i.zk
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !53
  %i.zq = add nsw i32 %i.zn, %i.zp                ; 2 uses
  store i32 %i.zq, ptr %i.o, align 4, !tbaa !58
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.zs = load i32, ptr %i.zr, align 8, !tbaa !61
  %.not338 = icmp eq i32 %i.zs, 0
  br i1 %.not338, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  %i.zt = add nsw i32 %i.zh, %i.t
  %i.zu = add nsw i32 %i.zt, %i.zj
  %i.zv = add nsw i32 %i.zd, %i.r
  %i.zw = add nsw i32 %i.zv, %i.zf
  %i.zx = load i32, ptr %i.b, align 4, !tbaa !58
  %i.zy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !62
  invoke void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.zw, i32 noundef %i.zu, i32 noundef %i.zq, i32 noundef %i.zx, i64 noundef %i.ab, i32 noundef 4, ptr noundef %i.zz)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.aaa = load ptr, ptr %2, align 8, !tbaa !18
  %i.aab = icmp eq ptr %i.aaa, null
  br i1 %i.aab, label %.thread480, label %_ZNK4ncnn3Mat5emptyEv.exit366

_ZNK4ncnn3Mat5emptyEv.exit366:                    ; preds = %bb.ct
  %i.aac = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aad = load i64, ptr %i.aac, align 8, !tbaa !20
  %i.aae = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aaf = load i32, ptr %i.aae, align 8, !tbaa !59
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = mul i64 %i.aad, %i.aag
  %i.aai = icmp eq i64 %i.aah, 0
  br i1 %i.aai, label %.thread480, label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.aaj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  br label %bb.dy

bb.cv:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit366
  %i.aak = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !64
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.p, i32 %i.aal)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 8, ptr nonnull @_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.10, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %4, ptr nonnull %i.c, ptr nonnull %i.o, ptr nonnull %2, ptr nonnull %i.a, ptr nonnull %1)
  br label %.thread480

.thread480:                                       ; preds = %_ZNK4ncnn3Mat5emptyEv.exit366, %bb.cv, %bb.ct
  %.22.ph = phi i32 [ -100, %_ZNK4ncnn3Mat5emptyEv.exit366 ], [ 0, %bb.cv ], [ -100, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  br label %_ZN4ncnnL42padding_constant_pack16_bf16s_fp16s_avx512ERKNS_3MatERS0_iiiiRKDv4_x.exit.thread

bb.cw:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #12
  br label %.thread456

.thread456:                                       ; preds = %bb.bw, %_ZN4ncnn3Mat6addrefEv.exit, %bb.av, %bb.m, %bb.x, %bb.n, %bb.bx, %bb.by, %bb.cd, %bb.ce, %bb.cq, %bb.aw, %bb.ax, %bb.bc, %bb.bd, %bb.bp, %bb.y, %bb.z, %bb.o, %bb.p, %bb.ao, %bb.au, %bb.bv, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.aam = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aan = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !11 ; 2 uses
  %i.aap = load <2 x ptr>, ptr %1, align 8, !tbaa !55
  store <2 x ptr> %i.aap, ptr %5, align 16, !tbaa !55
  %i.aaq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aar = load i64, ptr %i.aa, align 8, !tbaa !56
  store i64 %i.aar, ptr %i.aaq, align 16, !tbaa !56
  %i.aas = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aat = load i32, ptr %i.ac, align 8, !tbaa !57
  store i32 %i.aat, ptr %i.aas, align 8, !tbaa !57
  %i.aau = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !17
  store ptr %i.aaw, ptr %i.aau, align 16, !tbaa !17
  %i.aax = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aay = load <4 x i32>, ptr %i.y, align 8, !tbaa !58
  store <4 x i32> %i.aay, ptr %i.aax, align 8, !tbaa !58
  %i.aaz = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.aba = load i32, ptr %i.w, align 8, !tbaa !59
  store i32 %i.aba, ptr %i.aaz, align 8, !tbaa !59
  %i.abb = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL38padding_constant_pack4_bf16s_fp16s_sseERKNS_3MatERS0_iiiil:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0436 = phi i32 [ %i.fx, %.lr.ph ], [ %.0436.ph, %.lr.ph.preheader ]
  %.0455 = phi ptr [ %i.fw, %.lr.ph ], [ %.0455.ph, %.lr.ph.preheader ] ; 2 uses
  store i64 %5, ptr %.0455, align 8, !tbaa !73
  %i.fw = getelementptr inbounds nuw i8, ptr %.0455, i64 8 ; 2 uses
  %i.fx = add nuw nsw i32 %.0436, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.fx, %i.b
  br i1 %exitcond.not, label %.preheader4, label %.lr.ph, !llvm.loop !586

.preheader:                                       ; preds = %._crit_edge.us50, %..preheader2_crit_edge.us36, %._crit_edge.us39.us, %._crit_edge.us, %.preheader3.lr.ph.split.split, %.preheader4
  %.146.lcssa = phi ptr [ %.045.lcssa, %.preheader4 ], [ %.lcssa111, %..preheader2_crit_edge.us36 ], [ %.4.lcssa.us, %._crit_edge.us ], [ %.045.lcssa, %.preheader3.lr.ph.split.split ], [ %.lcssa110, %._crit_edge.us39.us ], [ %.lcssa112, %._crit_edge.us50 ] ; 5 uses
  %i.fy = icmp sgt i32 %i.c, 0
  br i1 %i.fy, label %iter.check379, label %._crit_edge

iter.check379:                                    ; preds = %.preheader
  %i.fz = zext nneg i32 %i.c to i64               ; 5 uses
  %min.iters.check363 = icmp ult i32 %i.c, 8
  br i1 %min.iters.check363, label %.lr.ph57.preheader, label %vector.main.loop.iter.check364

vector.main.loop.iter.check364:                   ; preds = %iter.check379
  %min.iters.check365 = icmp ult i32 %i.c, 32
  br i1 %min.iters.check365, label %vec.epilog.ph383, label %vector.ph366

vector.ph366:                                     ; preds = %vector.main.loop.iter.check364
  %n.mod.vf367 = and i64 %i.fz, 24
  %n.vec368.a = and i64 %i.fz, 2147483616         ; 5 uses
  %i.ga = trunc nuw nsw i64 %n.vec368.a to i32
  %i.gb = shl nuw nsw i64 %n.vec368.a, 3
  %i.gc = getelementptr i8, ptr %.146.lcssa, i64 %i.gb
  %broadcast.splatinsert369.a = insertelement <8 x i64> poison, i64 %5, i64 0
  %broadcast.splat370.a = shufflevector <8 x i64> %broadcast.splatinsert369.a, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body371

vector.body371:                                   ; preds = %vector.body371, %vector.ph366
  %index372.a = phi i64 [ 0, %vector.ph366 ], [ %index.next374.a, %vector.body371 ] ; 2 uses
  %i.gd = shl i64 %index372.a, 3
  %next.gep373.a = getelementptr i8, ptr %.146.lcssa, i64 %i.gd ; 4 uses
  %i.ge = getelementptr i8, ptr %next.gep373.a, i64 64
  %i.gf = getelementptr i8, ptr %next.gep373.a, i64 128
  %i.gg = getelementptr i8, ptr %next.gep373.a, i64 192
  store <8 x i64> %broadcast.splat370.a, ptr %next.gep373.a, align 8, !tbaa !73
  store <8 x i64> %broadcast.splat370.a, ptr %i.ge, align 8, !tbaa !73
  store <8 x i64> %broadcast.splat370.a, ptr %i.gf, align 8, !tbaa !73
  store <8 x i64> %broadcast.splat370.a, ptr %i.gg, align 8, !tbaa !73
  %index.next374.a = add nuw i64 %index372.a, 32  ; 2 uses
  %i.gh = icmp eq i64 %index.next374.a, %n.vec368.a
  br i1 %i.gh, label %middle.block375, label %vector.body371, !llvm.loop !587

middle.block375:                                  ; preds = %vector.body371
  %cmp.n376.a = icmp eq i64 %n.vec368.a, %i.fz
  br i1 %cmp.n376.a, label %._crit_edge, label %vec.epilog.iter.check381

vec.epilog.iter.check381:                         ; preds = %middle.block375
  %min.epilog.iters.check382 = icmp eq i64 %n.mod.vf367, 0
  br i1 %min.epilog.iters.check382, label %.lr.ph57.preheader, label %vec.epilog.ph383, !prof !78

vec.epilog.ph383:                                 ; preds = %vector.main.loop.iter.check364, %vec.epilog.iter.check381
  %vec.epilog.resume.val377 = phi i64 [ %n.vec368.a, %vec.epilog.iter.check381 ], [ 0, %vector.main.loop.iter.check364 ]
  %n.vec385 = and i64 %i.fz, 2147483640           ; 4 uses
  %i.gi = trunc nuw nsw i64 %n.vec385 to i32
  %i.gj = shl nuw nsw i64 %n.vec385, 3
  %i.gk = getelementptr i8, ptr %.146.lcssa, i64 %i.gj
  %broadcast.splatinsert386 = insertelement <8 x i64> poison, i64 %5, i64 0
  %broadcast.splat387 = shufflevector <8 x i64> %broadcast.splatinsert386, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body388

vec.epilog.vector.body388:                        ; preds = %vec.epilog.vector.body388, %vec.epilog.ph383
  %index389 = phi i64 [ %vec.epilog.resume.val377, %vec.epilog.ph383 ], [ %index.next391, %vec.epilog.vector.body388 ] ; 2 uses
  %i.gl = shl i64 %index389, 3
  %next.gep390 = getelementptr i8, ptr %.146.lcssa, i64 %i.gl
  store <8 x i64> %broadcast.splat387, ptr %next.gep390, align 8, !tbaa !73
  %index.next391 = add nuw i64 %index389, 8       ; 2 uses
  %i.gm = icmp eq i64 %index.next391, %n.vec385
  br i1 %i.gm, label %vec.epilog.middle.block392, label %vec.epilog.vector.body388, !llvm.loop !588

vec.epilog.middle.block392:                       ; preds = %vec.epilog.vector.body388
  %cmp.n393 = icmp eq i64 %n.vec385, %i.fz
  br i1 %cmp.n393, label %._crit_edge, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %iter.check379, %vec.epilog.iter.check381, %vec.epilog.middle.block392
  %.056.ph = phi i32 [ 0, %iter.check379 ], [ %i.ga, %vec.epilog.iter.check381 ], [ %i.gi, %vec.epilog.middle.block392 ]
  %.555.ph = phi ptr [ %.146.lcssa, %iter.check379 ], [ %i.gc, %vec.epilog.iter.check381 ], [ %i.gk, %vec.epilog.middle.block392 ]
  br label %.lr.ph57

._crit_edge:                                      ; preds = %.lr.ph57, %middle.block375, %vec.epilog.middle.block392, %.preheader
  ret void

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %.lr.ph57
  %.056 = phi i32 [ %i.go, %.lr.ph57 ], [ %.056.ph, %.lr.ph57.preheader ]
  %.555 = phi ptr [ %i.gn, %.lr.ph57 ], [ %.555.ph, %.lr.ph57.preheader ] ; 2 uses
  store i64 %5, ptr %.555, align 8, !tbaa !73
  %i.gn = getelementptr inbounds nuw i8, ptr %.555, i64 8
  %i.go = add nuw nsw i32 %.056, 1                ; 2 uses
  %exitcond81.not = icmp eq i32 %i.go, %i.c
  br i1 %exitcond81.not, label %._crit_edge, label %.lr.ph57, !llvm.loop !589
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(2) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !58
  %i.f = load i32, ptr %2, align 4, !tbaa !58
  %i.g = sdiv i32 %i.e, %i.f                      ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.i, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.j = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !58
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !58
  %i.m = load i32, ptr %i.a, align 4, !tbaa !58   ; 2 uses
  %.not117 = icmp sgt i32 %i.m, %i.l
  br i1 %.not117, label %._crit_edge, label %.noexc45.lr.ph

.noexc45.lr.ph:                                   ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 240
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 44
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 52
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 44
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 52
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 224 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %5, i64 208 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 212 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 216 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 220 ; 3 uses
  %i.ar = sext i32 %i.m to i64
  br label %.noexc45

.noexc45:                                         ; preds = %.noexc45.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %i.as = phi i32 [ %i.l, %.noexc45.lr.ph ], [ %i.asl, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %indvars.iv163 = phi i64 [ %i.ar, %.noexc45.lr.ph ], [ %indvars.iv.next164, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.at = load i32, ptr %i.n, align 4, !tbaa !63, !noalias !590 ; 2 uses
  %i.au = load i32, ptr %i.o, align 8, !tbaa !72, !noalias !590
  %i.av = load i32, ptr %i.p, align 4, !tbaa !120, !noalias !590
  %i.aw = load ptr, ptr %4, align 8, !tbaa !18, !noalias !590
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !20, !noalias !590
  %i.ay = mul i64 %i.ax, %indvars.iv163
  %i.az = load i64, ptr %i.r, align 8, !tbaa !56, !noalias !590 ; 3 uses
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba ; 16 uses
  %i.bc = sext i32 %i.at to i64
  %i.bd = sext i32 %i.au to i64
  %i.be = mul nsw i64 %i.bd, %i.bc                ; 2 uses
  %i.bf = mul i64 %i.az, %i.be
  %i.bg = add i64 %i.bf, 15
  %i.bh = and i64 %i.bg, -16
  %i.bi = udiv i64 %i.bh, %i.az
  %i.bj = load i32, ptr %i.s, align 8, !tbaa !60, !noalias !590
  %i.bk = icmp eq i32 %i.bj, 4
  %spec.select = select i1 %i.bk, i64 %i.be, i64 %i.bi
  %i.bl = load i32, ptr %i.t, align 8, !tbaa !148
  %.not35 = icmp eq i32 %i.bl, 0
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc45
  %i.bm = load ptr, ptr %6, align 8, !tbaa !18
  %.idx = shl nsw i64 %indvars.iv163, 3
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %.idx
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !73
  br label %bb.e

bb.d:                                             ; preds = %.noexc45
  %i.bp = load i16, ptr %7, align 2, !tbaa !122
  %i.bq = zext i16 %i.bp to i64                   ; 4 uses
  %12 = shl nuw nsw i64 %i.bq, 16
  %13 = shl nuw nsw i64 %i.bq, 32
  %14 = shl nuw i64 %i.bq, 48
  %15 = or disjoint i64 %13, %12
  %16 = or disjoint i64 %15, %14
  %17 = or disjoint i64 %16, %i.bq
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.033 = phi i64 [ %i.bo, %bb.c ], [ %17, %bb.d ] ; 4 uses
  %i.br = load i32, ptr %8, align 4, !tbaa !58
  %i.bs = trunc nsw i64 %indvars.iv163 to i32
  %i.bt = sub nsw i32 %i.bs, %i.br                ; 3 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = load i32, ptr %9, align 4, !tbaa !58
  %.not36 = icmp slt i32 %i.bt, %i.bv
  br i1 %.not36, label %.noexc46, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bw = trunc i64 %spec.select to i32
  %i.bx = mul i32 %i.av, %i.bw                    ; 4 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %iter.check, label %_ZN4ncnn3MatD2Ev.exit

iter.check:                                       ; preds = %bb.g
  %wide.trip.count = zext nneg i32 %i.bx to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.bx, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check287 = icmp ult i32 %i.bx, 32
  br i1 %min.iters.check287, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %.033, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 128
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 192
  store <8 x i64> %broadcast.splat, ptr %i.bz, align 8, !tbaa !73
  store <8 x i64> %broadcast.splat, ptr %i.ca, align 8, !tbaa !73
  store <8 x i64> %broadcast.splat, ptr %i.cb, align 8, !tbaa !73
  store <8 x i64> %broadcast.splat, ptr %i.cc, align 8, !tbaa !73
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %middle.block, label %vector.body, !llvm.loop !593

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_ZN4ncnn3MatD2Ev.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !594

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec289 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert290 = insertelement <4 x i64> poison, i64 %.033, i64 0
  %broadcast.splat291 = shufflevector <4 x i64> %broadcast.splatinsert290, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index292 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next293, %vec.epilog.vector.body ] ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index292
  store <4 x i64> %broadcast.splat291, ptr %i.ce, align 8, !tbaa !73
  %index.next293 = add nuw i64 %index292, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next293, %n.vec289
  br i1 %i.cf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !595

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n294 = icmp eq i64 %n.vec289, %wide.trip.count
  br i1 %cmp.n294, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec289, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  store i64 %.033, ptr %i.cg, align 8, !tbaa !73
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph, !llvm.loop !596

.noexc46:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.ch = load i32, ptr %i.u, align 4, !tbaa !63, !noalias !597 ; 59 uses
  %i.ci = load i32, ptr %i.v, align 8, !tbaa !72, !noalias !597 ; 6 uses
  %i.cj = load i32, ptr %i.w, align 4, !tbaa !120, !noalias !597
  %i.ck = load ptr, ptr %10, align 8, !tbaa !18, !noalias !597 ; 5 uses
  %i.cl = ptrtoaddr ptr %i.ck to i64              ; 4 uses
  %i.cm = load i64, ptr %i.x, align 8, !tbaa !20, !noalias !597
  %i.cn = zext nneg i32 %i.bt to i64
  %i.co = mul i64 %i.cm, %i.cn
  %i.cp = load i64, ptr %i.y, align 8, !tbaa !56, !noalias !597 ; 4 uses
  %i.cq = mul i64 %i.co, %i.cp                    ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cq ; 14 uses
  %i.cs = load i32, ptr %i.z, align 8, !tbaa !57, !noalias !597
  %i.ct = load ptr, ptr %i.aa, align 8, !tbaa !17, !noalias !597
  store ptr %i.cr, ptr %11, align 8, !tbaa !18
  store ptr null, ptr %i.ab, align 8, !tbaa !11
  store i64 %i.cp, ptr %i.ac, align 8, !tbaa !56
  store i32 %i.cs, ptr %i.ad, align 8, !tbaa !57
  store ptr %i.ct, ptr %i.ae, align 8, !tbaa !17
  store i32 %i.ch, ptr %i.ag, align 4, !tbaa !63
  store i32 %i.ci, ptr %i.ah, align 8, !tbaa !72
  store i32 1, ptr %i.ai, align 4, !tbaa !120
  store i32 %i.cj, ptr %i.aj, align 8, !tbaa !59
  %i.cu = sext i32 %i.ch to i64
  %i.cv = sext i32 %i.ci to i64
  %i.cw = mul nsw i64 %i.cv, %i.cu                ; 2 uses
  %i.cx = mul i64 %i.cp, %i.cw
  %i.cy = add i64 %i.cx, 15
  %i.cz = and i64 %i.cy, -16
  %i.da = udiv i64 %i.cz, %i.cp
  store i64 %i.da, ptr %i.ak, align 8, !tbaa !20
  %i.db = load i32, ptr %i.al, align 8, !tbaa !60, !noalias !597 ; 2 uses
  %i.dc = add nsw i32 %i.db, -1
  store i32 %i.dc, ptr %i.af, align 8, !tbaa !60, !alias.scope !597
  %i.dd = icmp eq i32 %i.db, 4
  br i1 %i.dd, label %bb.h, label %_ZNK4ncnn3Mat7channelEi.exit

bb.h:                                             ; preds = %.noexc46
  store i64 %i.cw, ptr %i.ak, align 8, !tbaa !20, !alias.scope !597
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %bb.h, %.noexc46
  %i.de = load i32, ptr %i.am, align 8, !tbaa !61 ; 2 uses
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.dg = load i32, ptr %i.an, align 8, !tbaa !48
  %i.dh = load i32, ptr %i.ao, align 4, !tbaa !49
  %i.di = load i32, ptr %i.ap, align 8, !tbaa !50
  %i.dj = load i32, ptr %i.aq, align 4, !tbaa !51
  call fastcc void @_ZN4ncnnL38padding_constant_pack4_bf16s_fp16s_sseERKNS_3MatERS0_iiiil(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr %i.bb, i32 %i.at, i32 noundef %i.dg, i32 noundef %i.dh, i32 noundef %i.di, i32 noundef %i.dj, i64 noundef %.033)
  %.pr = load i32, ptr %i.am, align 8, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK4ncnn3Mat7channelEi.exit
  %i.dk = phi i32 [ %.pr, %bb.i ], [ %i.de, %_ZNK4ncnn3Mat7channelEi.exit ]
  switch i32 %i.dk, label %_ZN4ncnn3MatD2Ev.exit37 [
    i32 1, label %bb.k
    i32 2, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.dl = load i32, ptr %i.an, align 8, !tbaa !48 ; 5 uses
  %i.dm = load i32, ptr %i.ao, align 4, !tbaa !49 ; 2 uses
  %i.dn = load i32, ptr %i.ap, align 8, !tbaa !50 ; 23 uses
  %i.do = load i32, ptr %i.aq, align 4, !tbaa !51 ; 23 uses
  %i.dp = icmp sgt i32 %i.dl, 0
  br i1 %i.dp, label %.lr.ph22.i, label %.preheader4.i

.lr.ph22.i:                                       ; preds = %bb.k
  %i.dq = icmp sgt i32 %i.dn, 0                   ; 2 uses
  %i.dr = icmp sgt i32 %i.ch, 0
  %i.ds = icmp sgt i32 %i.do, 0                   ; 3 uses
  br i1 %i.dr, label %.lr.ph22.split.us.i.preheader, label %.lr.ph22.split.i

.lr.ph22.split.us.i.preheader:                    ; preds = %.lr.ph22.i
  %i.dt = zext i32 %i.do to i64                   ; 5 uses
  %i.du = add i64 %i.cq, %i.cl
  %i.dv = zext nneg i32 %i.ch to i64              ; 5 uses
  %i.dw = zext i32 %i.dn to i64                   ; 5 uses
  %min.iters.check589 = icmp ult i32 %i.dn, 8
  %min.iters.check591 = icmp ult i32 %i.dn, 32
  %n.mod.vf593 = and i64 %i.dw, 24
  %n.vec594 = and i64 %i.dw, 2147483616           ; 5 uses
  %i.dx = trunc nuw nsw i64 %n.vec594 to i32
  %i.dy = shl nuw nsw i64 %n.vec594, 3
  %cmp.n602 = icmp eq i64 %n.vec594, %i.dw
  %min.epilog.iters.check609 = icmp eq i64 %n.mod.vf593, 0
  %n.vec612 = and i64 %i.dw, 2147483640           ; 4 uses
  %i.dz = trunc nuw nsw i64 %n.vec612 to i32
  %i.ea = shl nuw nsw i64 %n.vec612, 3
  %cmp.n620 = icmp eq i64 %n.vec612, %i.dw
  %min.iters.check550 = icmp ult i32 %i.ch, 8
  %min.iters.check552 = icmp ult i32 %i.ch, 32
  %n.mod.vf554 = and i64 %i.dv, 24
  %n.vec555 = and i64 %i.dv, 2147483616           ; 5 uses
  %i.eb = trunc nuw nsw i64 %n.vec555 to i32
  %i.ec = shl nuw nsw i64 %n.vec555, 3            ; 2 uses
  %i.ed = getelementptr i8, ptr %i.cr, i64 %i.ec
  %cmp.n566 = icmp eq i64 %n.vec555, %i.dv
  %min.epilog.iters.check574 = icmp eq i64 %n.mod.vf554, 0
  %n.vec577 = and i64 %i.dv, 2147483640           ; 4 uses
  %i.ee = trunc nuw nsw i64 %n.vec577 to i32
  %i.ef = shl nuw nsw i64 %n.vec577, 3            ; 2 uses
  %i.eg = getelementptr i8, ptr %i.cr, i64 %i.ef
  %cmp.n585 = icmp eq i64 %n.vec577, %i.dv
  %min.iters.check513 = icmp ult i32 %i.do, 8
  %min.iters.check515 = icmp ult i32 %i.do, 32
  %n.mod.vf517 = and i64 %i.dt, 24
  %n.vec518 = and i64 %i.dt, 2147483616           ; 5 uses
  %i.eh = trunc nuw nsw i64 %n.vec518 to i32
end_hunk_1
begin_hunk_2_@_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9:bb.a

vec.epilog.scalar.ph784.prol.loopexit:            ; preds = %vec.epilog.scalar.ph784.prol, %vec.epilog.scalar.ph784.preheader
  %.lcssa1379.unr = phi ptr [ poison, %vec.epilog.scalar.ph784.preheader ], [ %i.aqt, %vec.epilog.scalar.ph784.prol ]
  %indvars.iv172.i.unr = phi i64 [ %indvars.iv172.i.ph, %vec.epilog.scalar.ph784.preheader ], [ %indvars.iv.next173.i.prol, %vec.epilog.scalar.ph784.prol ]
  %.1198.i.unr = phi ptr [ %.1198.i.ph, %vec.epilog.scalar.ph784.preheader ], [ %i.aqt, %vec.epilog.scalar.ph784.prol ]
  %i.aqu = sub nsw i64 %indvars.iv172.i.ph, %wide.trip.count175.i
  %i.aqv = icmp ugt i64 %i.aqu, -4
  br i1 %i.aqv, label %._crit_edge101.i, label %vec.epilog.scalar.ph784

.lr.ph95.i:                                       ; preds = %.lr.ph95.i.prol.loopexit, %.lr.ph95.i
  %.08794.i = phi i32 [ %i.aru, %.lr.ph95.i ], [ %.08794.i.unr, %.lr.ph95.i.prol.loopexit ]
  %.08993.i = phi ptr [ %i.ars, %.lr.ph95.i ], [ %.08993.i.unr, %.lr.ph95.i.prol.loopexit ] ; 9 uses
  %.1092.i = phi ptr [ %i.art, %.lr.ph95.i ], [ %.1092.i.unr, %.lr.ph95.i.prol.loopexit ] ; 9 uses
  %i.aqw = load i64, ptr %.08993.i, align 8, !tbaa !73
  store i64 %i.aqw, ptr %.1092.i, align 8, !tbaa !73
  %i.aqx = getelementptr inbounds nuw i8, ptr %.08993.i, i64 8
  %i.aqy = getelementptr inbounds nuw i8, ptr %.1092.i, i64 8
  %i.aqz = load i64, ptr %i.aqx, align 8, !tbaa !73
  store i64 %i.aqz, ptr %i.aqy, align 8, !tbaa !73
  %i.ara = getelementptr inbounds nuw i8, ptr %.08993.i, i64 16
  %i.arb = getelementptr inbounds nuw i8, ptr %.1092.i, i64 16
  %i.arc = load i64, ptr %i.ara, align 8, !tbaa !73
  store i64 %i.arc, ptr %i.arb, align 8, !tbaa !73
  %i.ard = getelementptr inbounds nuw i8, ptr %.08993.i, i64 24
  %i.are = getelementptr inbounds nuw i8, ptr %.1092.i, i64 24
  %i.arf = load i64, ptr %i.ard, align 8, !tbaa !73
  store i64 %i.arf, ptr %i.are, align 8, !tbaa !73
  %i.arg = getelementptr inbounds nuw i8, ptr %.08993.i, i64 32
  %i.arh = getelementptr inbounds nuw i8, ptr %.1092.i, i64 32
  %i.ari = load i64, ptr %i.arg, align 8, !tbaa !73
  store i64 %i.ari, ptr %i.arh, align 8, !tbaa !73
  %i.arj = getelementptr inbounds nuw i8, ptr %.08993.i, i64 40
  %i.ark = getelementptr inbounds nuw i8, ptr %.1092.i, i64 40
  %i.arl = load i64, ptr %i.arj, align 8, !tbaa !73
  store i64 %i.arl, ptr %i.ark, align 8, !tbaa !73
  %i.arm = getelementptr inbounds nuw i8, ptr %.08993.i, i64 48
  %i.arn = getelementptr inbounds nuw i8, ptr %.1092.i, i64 48
  %i.aro = load i64, ptr %i.arm, align 8, !tbaa !73
  store i64 %i.aro, ptr %i.arn, align 8, !tbaa !73
  %i.arp = getelementptr inbounds nuw i8, ptr %.08993.i, i64 56
  %i.arq = getelementptr inbounds nuw i8, ptr %.1092.i, i64 56
  %i.arr = load i64, ptr %i.arp, align 8, !tbaa !73
  store i64 %i.arr, ptr %i.arq, align 8, !tbaa !73
  %i.ars = getelementptr inbounds nuw i8, ptr %.08993.i, i64 64 ; 2 uses
  %i.art = getelementptr inbounds nuw i8, ptr %.1092.i, i64 64 ; 2 uses
  %i.aru = add nuw nsw i32 %.08794.i, 8           ; 2 uses
  %exitcond171.not.i.7 = icmp eq i32 %i.aru, %i.ch
  br i1 %exitcond171.not.i.7, label %.preheader.i54, label %.lr.ph95.i, !llvm.loop !737

._crit_edge101.i:                                 ; preds = %vec.epilog.scalar.ph784.prol.loopexit, %vec.epilog.scalar.ph784, %middle.block779, %vec.epilog.middle.block796, %.preheader.i54
  %.11.lcssa.i56 = phi ptr [ %.10.lcssa.i55, %.preheader.i54 ], [ %i.aql, %vec.epilog.middle.block796 ], [ %i.apz, %middle.block779 ], [ %.lcssa1379.unr, %vec.epilog.scalar.ph784.prol.loopexit ], [ %i.ask, %vec.epilog.scalar.ph784 ]
  %i.arv = getelementptr inbounds [2 x i8], ptr %.3104103.i, i64 %i.aim
  %i.arw = add nuw nsw i32 %.090105.i, 1          ; 2 uses
  %exitcond177.not.i = icmp eq i32 %i.arw, %i.re
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond177.not.i, label %_ZN4ncnn3MatD2Ev.exit37, label %.preheader2.i51, !llvm.loop !738

vec.epilog.scalar.ph784:                          ; preds = %vec.epilog.scalar.ph784.prol.loopexit, %vec.epilog.scalar.ph784
  %indvars.iv172.i = phi i64 [ %indvars.iv.next173.i.3, %vec.epilog.scalar.ph784 ], [ %indvars.iv172.i.unr, %vec.epilog.scalar.ph784.prol.loopexit ] ; 5 uses
  %.1198.i = phi ptr [ %i.ask, %vec.epilog.scalar.ph784 ], [ %.1198.i.unr, %vec.epilog.scalar.ph784.prol.loopexit ] ; 5 uses
  %.idx200.i = mul nsw i64 %indvars.iv172.i, -8
  %i.arx = getelementptr inbounds i8, ptr %i.apy, i64 %.idx200.i
  %i.ary = load i64, ptr %i.arx, align 8, !tbaa !73
  store i64 %i.ary, ptr %.1198.i, align 8, !tbaa !73
  %i.arz = getelementptr inbounds nuw i8, ptr %.1198.i, i64 8
  %indvars.iv.next173.i.neg = xor i64 %indvars.iv172.i, -1
  %.idx200.i.1 = shl nsw i64 %indvars.iv.next173.i.neg, 3
  %i.asa = getelementptr inbounds i8, ptr %i.apy, i64 %.idx200.i.1
  %i.asb = load i64, ptr %i.asa, align 8, !tbaa !73
  store i64 %i.asb, ptr %i.arz, align 8, !tbaa !73
  %i.asc = getelementptr inbounds nuw i8, ptr %.1198.i, i64 16
  %i.asd = shl i64 %indvars.iv172.i, 3
  %.idx200.i.2 = sub i64 -16, %i.asd
  %i.ase = getelementptr inbounds i8, ptr %i.apy, i64 %.idx200.i.2
  %i.asf = load i64, ptr %i.ase, align 8, !tbaa !73
  store i64 %i.asf, ptr %i.asc, align 8, !tbaa !73
  %i.asg = getelementptr inbounds nuw i8, ptr %.1198.i, i64 24
  %i.ash = shl i64 %indvars.iv172.i, 3
  %.idx200.i.3 = sub i64 -24, %i.ash
  %i.asi = getelementptr inbounds i8, ptr %i.apy, i64 %.idx200.i.3
  %i.asj = load i64, ptr %i.asi, align 8, !tbaa !73
  store i64 %i.asj, ptr %i.asg, align 8, !tbaa !73
  %i.ask = getelementptr inbounds nuw i8, ptr %.1198.i, i64 32 ; 2 uses
  %indvars.iv.next173.i.3 = add nuw nsw i64 %indvars.iv172.i, 4 ; 2 uses
  %exitcond176.not.i.3 = icmp eq i64 %indvars.iv.next173.i.3, %wide.trip.count175.i
  br i1 %exitcond176.not.i.3, label %._crit_edge101.i, label %vec.epilog.scalar.ph784, !llvm.loop !739

_ZN4ncnn3MatD2Ev.exit37:                          ; preds = %._crit_edge101.i, %._crit_edge87.i, %._crit_edge70.i, %bb.j, %._crit_edge85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %.pre = load i32, ptr %i.b, align 4, !tbaa !58
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.g, %_ZN4ncnn3MatD2Ev.exit37
  %i.asl = phi i32 [ %.pre, %_ZN4ncnn3MatD2Ev.exit37 ], [ %i.as, %bb.g ], [ %i.as, %middle.block ], [ %i.as, %vec.epilog.middle.block ], [ %i.as, %.lr.ph ] ; 2 uses
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, 1
  %i.asm = sext i32 %i.asl to i64
  %.not.not = icmp slt i64 %indvars.iv163, %i.asm
  br i1 %.not.not, label %.noexc45, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(2) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %9) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !58     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !58
  %i.h = load i32, ptr %0, align 4, !tbaa !58     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !58
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !58
  %i.k = load i32, ptr %i.a, align 4, !tbaa !58   ; 2 uses
  %.not136 = icmp sgt i32 %i.k, %i.j
  br i1 %.not136, label %._crit_edge140, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.m = load i32, ptr %i.l, align 8, !tbaa !148
  %.not39 = icmp eq i32 %i.m, 0
  %i.n = load i32, ptr %6, align 4, !tbaa !58     ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 44
  %i.s = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 212
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 216
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 220
  br i1 %i.o, label %.lr.ph139.split.us, label %._crit_edge140

.lr.ph139.split.us:                               ; preds = %.lr.ph139
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.aa = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 44
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !63, !noalias !740 ; 3 uses
  %i.ad = load i32, ptr %i.aa, align 8, !tbaa !72, !noalias !740
  %i.ae = load ptr, ptr %7, align 8, !tbaa !18, !noalias !740
  %i.af = sext i32 %i.ac to i64
  %i.ag = sext i32 %i.ad to i64
  %i.ah = mul nsw i64 %i.ag, %i.af                ; 6 uses
  %i.ai = load i32, ptr %i.z, align 8, !tbaa !52
  %i.aj = trunc i64 %i.ah to i32
  %i.ak = icmp sgt i32 %i.aj, 0
  %i.al = sext i32 %i.ai to i64
  %i.am = sext i32 %i.k to i64
  %i.an = add nsw i32 %i.j, 1
  %wide.trip.count161 = zext nneg i32 %i.n to i64
  %wide.trip.count = and i64 %i.ah, 2147483647    ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  %min.iters.check207 = icmp samesign ult i64 %wide.trip.count, 32
  %n.mod.vf = and i64 %i.ah, 28
  %n.vec = and i64 %i.ah, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec209 = and i64 %i.ah, 2147483644           ; 3 uses
  %cmp.n214 = icmp eq i64 %wide.trip.count, %n.vec209
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.us, %.lr.ph139.split.us
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %._crit_edge.us ], [ %i.am, %.lr.ph139.split.us ] ; 4 uses
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %4, align 8, !tbaa !18
  %.idx = shl nsw i64 %indvars.iv163, 3
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %.idx
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !73
  br label %.noexc63.lr.ph.us

bb.e:                                             ; preds = %bb.c
  %i.ar = load i16, ptr %5, align 2, !tbaa !122
  %i.as = zext i16 %i.ar to i64                   ; 4 uses
  %10 = shl nuw nsw i64 %i.as, 16
  %11 = shl nuw nsw i64 %i.as, 32
  %12 = shl nuw i64 %i.as, 48
  %13 = or disjoint i64 %11, %10
  %14 = or disjoint i64 %13, %12
  %15 = or disjoint i64 %14, %i.as
  br label %.noexc63.lr.ph.us

.noexc63.lr.ph.us:                                ; preds = %bb.e, %bb.d
  %.037.us = phi i64 [ %i.aq, %bb.d ], [ %15, %bb.e ] ; 27 uses
  %broadcast.splatinsert498 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat499 = shufflevector <8 x i64> %broadcast.splatinsert498, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert516 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat517 = shufflevector <8 x i64> %broadcast.splatinsert516, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert464 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat465 = shufflevector <8 x i64> %broadcast.splatinsert464, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert482 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat483 = shufflevector <8 x i64> %broadcast.splatinsert482, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert430 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat431 = shufflevector <8 x i64> %broadcast.splatinsert430, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert448 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat449 = shufflevector <8 x i64> %broadcast.splatinsert448, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert396 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat397 = shufflevector <8 x i64> %broadcast.splatinsert396, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert414 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat415 = shufflevector <8 x i64> %broadcast.splatinsert414, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert362 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat363 = shufflevector <8 x i64> %broadcast.splatinsert362, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert380 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat381 = shufflevector <8 x i64> %broadcast.splatinsert380, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert328 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat329 = shufflevector <8 x i64> %broadcast.splatinsert328, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert346 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat347 = shufflevector <8 x i64> %broadcast.splatinsert346, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert254 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat255 = shufflevector <8 x i64> %broadcast.splatinsert254, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert272 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat273 = shufflevector <8 x i64> %broadcast.splatinsert272, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert221 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat222 = shufflevector <8 x i64> %broadcast.splatinsert221, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert238 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat239 = shufflevector <8 x i64> %broadcast.splatinsert238, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert210 = insertelement <4 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat211 = shufflevector <4 x i64> %broadcast.splatinsert210, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.noexc63.us

.noexc63.us:                                      ; preds = %.noexc63.lr.ph.us, %_ZN4ncnn3MatD2Ev.exit.us
  %indvars.iv158 = phi i64 [ 0, %.noexc63.lr.ph.us ], [ %indvars.iv.next159, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %i.at = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !740
  %i.au = mul i64 %i.at, %indvars.iv163
  %i.av = load i64, ptr %i.q, align 8, !tbaa !56, !noalias !740 ; 2 uses
  %i.aw = mul i64 %i.au, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aw
  %i.ay = mul i64 %i.ah, %indvars.iv158
  %i.az = mul i64 %i.ay, %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.az ; 9 uses
  %i.bb = sub nsw i64 %indvars.iv158, %i.al       ; 3 uses
  %i.bc = icmp slt i64 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc63.us
  %i.bd = load i32, ptr %8, align 4, !tbaa !58
  %i.be = sext i32 %i.bd to i64
  %.not40.us = icmp slt i64 %i.bb, %i.be
  br i1 %.not40.us, label %.noexc64.us, label %bb.g

.noexc64.us:                                      ; preds = %bb.f
  %i.bf = load i32, ptr %i.r, align 4, !tbaa !63, !noalias !743 ; 8 uses
  %i.bg = load i32, ptr %i.s, align 8, !tbaa !72, !noalias !743 ; 6 uses
  %i.bh = load ptr, ptr %9, align 8, !tbaa !18, !noalias !743
  %i.bi = load i64, ptr %i.t, align 8, !tbaa !20, !noalias !743
  %i.bj = mul i64 %i.bi, %indvars.iv163
  %i.bk = load i64, ptr %i.u, align 8, !tbaa !56, !noalias !743 ; 2 uses
  %i.bl = mul i64 %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bl
  %i.bn = sext i32 %i.bf to i64
  %i.bo = sext i32 %i.bg to i64
  %i.bp = mul nsw i64 %i.bb, %i.bn
  %i.bq = mul i64 %i.bp, %i.bo
  %i.br = mul i64 %i.bq, %i.bk
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.br
  %i.bt = load i32, ptr %i.v, align 8, !tbaa !48
  %i.bu = load i32, ptr %i.w, align 4, !tbaa !49
  %i.bv = load i32, ptr %i.x, align 8, !tbaa !50  ; 13 uses
  %i.bw = load i32, ptr %i.y, align 4, !tbaa !51  ; 13 uses
  %i.bx = mul nsw i32 %i.bt, %i.ac                ; 5 uses
  %i.by = mul i32 %i.bu, %i.ac                    ; 5 uses
  %i.bz = icmp sgt i32 %i.bx, 0
  br i1 %i.bz, label %iter.check509, label %.preheader4.i.us

iter.check509:                                    ; preds = %.noexc64.us
  %i.ca = zext nneg i32 %i.bx to i64              ; 5 uses
  %min.iters.check492 = icmp ult i32 %i.bx, 8
  br i1 %min.iters.check492, label %.lr.ph.i.us.preheader, label %vector.main.loop.iter.check493

vector.main.loop.iter.check493:                   ; preds = %iter.check509
  %min.iters.check494 = icmp ult i32 %i.bx, 32
  br i1 %min.iters.check494, label %vec.epilog.ph513, label %vector.ph495

vector.ph495:                                     ; preds = %vector.main.loop.iter.check493
  %n.mod.vf496 = and i64 %i.ca, 24
  %n.vec497 = and i64 %i.ca, 2147483616           ; 5 uses
  %i.cb = trunc nuw nsw i64 %n.vec497 to i32
  %i.cc = shl nuw nsw i64 %n.vec497, 3
  %i.cd = getelementptr i8, ptr %i.ba, i64 %i.cc  ; 2 uses
  br label %vector.body500

vector.body500:                                   ; preds = %vector.body500, %vector.ph495
  %index501 = phi i64 [ 0, %vector.ph495 ], [ %index.next503, %vector.body500 ] ; 2 uses
  %i.ce = shl i64 %index501, 3
  %next.gep502 = getelementptr i8, ptr %i.ba, i64 %i.ce ; 4 uses
  %i.cf = getelementptr i8, ptr %next.gep502, i64 64
  %i.cg = getelementptr i8, ptr %next.gep502, i64 128
  %i.ch = getelementptr i8, ptr %next.gep502, i64 192
  store <8 x i64> %broadcast.splat499, ptr %next.gep502, align 8, !tbaa !73
  store <8 x i64> %broadcast.splat499, ptr %i.cf, align 8, !tbaa !73
  store <8 x i64> %broadcast.splat499, ptr %i.cg, align 8, !tbaa !73
  store <8 x i64> %broadcast.splat499, ptr %i.ch, align 8, !tbaa !73
  %index.next503 = add nuw i64 %index501, 32      ; 2 uses
  %i.ci = icmp eq i64 %index.next503, %n.vec497
  br i1 %i.ci, label %middle.block504, label %vector.body500, !llvm.loop !746

middle.block504:                                  ; preds = %vector.body500
  %cmp.n505 = icmp eq i64 %n.vec497, %i.ca
  br i1 %cmp.n505, label %.preheader4.i.us, label %vec.epilog.iter.check511

vec.epilog.iter.check511:                         ; preds = %middle.block504
  %min.epilog.iters.check512 = icmp eq i64 %n.mod.vf496, 0
  br i1 %min.epilog.iters.check512, label %.lr.ph.i.us.preheader, label %vec.epilog.ph513, !prof !78

vec.epilog.ph513:                                 ; preds = %vector.main.loop.iter.check493, %vec.epilog.iter.check511
  %vec.epilog.resume.val506 = phi i64 [ %n.vec497, %vec.epilog.iter.check511 ], [ 0, %vector.main.loop.iter.check493 ]
  %n.vec515 = and i64 %i.ca, 2147483640           ; 4 uses
  %i.cj = trunc nuw nsw i64 %n.vec515 to i32
  %i.ck = shl nuw nsw i64 %n.vec515, 3
  %i.cl = getelementptr i8, ptr %i.ba, i64 %i.ck  ; 2 uses
  br label %vec.epilog.vector.body518

vec.epilog.vector.body518:                        ; preds = %vec.epilog.vector.body518, %vec.epilog.ph513
  %index519 = phi i64 [ %vec.epilog.resume.val506, %vec.epilog.ph513 ], [ %index.next521, %vec.epilog.vector.body518 ] ; 2 uses
  %i.cm = shl i64 %index519, 3
  %next.gep520 = getelementptr i8, ptr %i.ba, i64 %i.cm
  store <8 x i64> %broadcast.splat517, ptr %next.gep520, align 8, !tbaa !73
  %index.next521 = add nuw i64 %index519, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next521, %n.vec515
  br i1 %i.cn, label %vec.epilog.middle.block522, label %vec.epilog.vector.body518, !llvm.loop !747

vec.epilog.middle.block522:                       ; preds = %vec.epilog.vector.body518
  %cmp.n523 = icmp eq i64 %n.vec515, %i.ca
  br i1 %cmp.n523, label %.preheader4.i.us, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %iter.check509, %vec.epilog.iter.check511, %vec.epilog.middle.block522
  %.0436.i.us.ph = phi i32 [ 0, %iter.check509 ], [ %i.cb, %vec.epilog.iter.check511 ], [ %i.cj, %vec.epilog.middle.block522 ]
  %.0455.i.us.ph = phi ptr [ %i.ba, %iter.check509 ], [ %i.cd, %vec.epilog.iter.check511 ], [ %i.cl, %vec.epilog.middle.block522 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.0436.i.us = phi i32 [ %i.cp, %.lr.ph.i.us ], [ %.0436.i.us.ph, %.lr.ph.i.us.preheader ]
  %.0455.i.us = phi ptr [ %i.co, %.lr.ph.i.us ], [ %.0455.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  store i64 %.037.us, ptr %.0455.i.us, align 8, !tbaa !73
  %i.co = getelementptr inbounds nuw i8, ptr %.0455.i.us, i64 8 ; 2 uses
  %i.cp = add nuw nsw i32 %.0436.i.us, 1          ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.cp, %i.bx
  br i1 %exitcond.not.i.us, label %.preheader4.i.us, label %.lr.ph.i.us, !llvm.loop !748

.preheader4.i.us:                                 ; preds = %.lr.ph.i.us, %middle.block504, %vec.epilog.middle.block522, %.noexc64.us
  %.045.lcssa.i.us = phi ptr [ %i.ba, %.noexc64.us ], [ %i.cl, %vec.epilog.middle.block522 ], [ %i.cd, %middle.block504 ], [ %i.co, %.lr.ph.i.us ] ; 6 uses
  %i.cq = icmp sgt i32 %i.bg, 0
  br i1 %i.cq, label %.preheader3.lr.ph.i.us, label %.preheader.i.us

.preheader3.lr.ph.i.us:                           ; preds = %.preheader4.i.us
  %i.cr = icmp sgt i32 %i.bv, 0                   ; 2 uses
  %i.cs = icmp sgt i32 %i.bf, 0
  %i.ct = icmp sgt i32 %i.bw, 0                   ; 3 uses
  br i1 %i.cs, label %.preheader3.us.i.us.preheader, label %.preheader3.lr.ph.split.i.us

.preheader3.us.i.us.preheader:                    ; preds = %.preheader3.lr.ph.i.us
  %i.cu = zext i32 %i.bw to i64                   ; 5 uses
  %i.cv = zext nneg i32 %i.bf to i64              ; 5 uses
  %i.cw = zext i32 %i.bv to i64                   ; 5 uses
  %min.iters.check322 = icmp ult i32 %i.bv, 8
  %min.iters.check324 = icmp ult i32 %i.bv, 32
  %n.mod.vf326 = and i64 %i.cw, 24
  %n.vec327 = and i64 %i.cw, 2147483616           ; 5 uses
  %i.cx = trunc nuw nsw i64 %n.vec327 to i32
  %i.cy = shl nuw nsw i64 %n.vec327, 3
  %cmp.n335 = icmp eq i64 %n.vec327, %i.cw
  %min.epilog.iters.check342 = icmp eq i64 %n.mod.vf326, 0
  %n.vec345 = and i64 %i.cw, 2147483640           ; 4 uses
  %i.cz = trunc nuw nsw i64 %n.vec345 to i32
  %i.da = shl nuw nsw i64 %n.vec345, 3
  %cmp.n353 = icmp eq i64 %n.vec345, %i.cw
  %min.iters.check284 = icmp ult i32 %i.bf, 8
  %min.iters.check286 = icmp ult i32 %i.bf, 32
  %n.mod.vf288 = and i64 %i.cv, 24
  %n.vec289 = and i64 %i.cv, 2147483616           ; 5 uses
  %i.db = trunc nuw nsw i64 %n.vec289 to i32
  %i.dc = shl nuw nsw i64 %n.vec289, 3            ; 2 uses
  %cmp.n299 = icmp eq i64 %n.vec289, %i.cv
  %min.epilog.iters.check307 = icmp eq i64 %n.mod.vf288, 0
  %n.vec310 = and i64 %i.cv, 2147483640           ; 4 uses
  %i.dd = trunc nuw nsw i64 %n.vec310 to i32
  %i.de = shl nuw nsw i64 %n.vec310, 3            ; 2 uses
  %cmp.n318 = icmp eq i64 %n.vec310, %i.cv
  %min.iters.check248 = icmp ult i32 %i.bw, 8
  %min.iters.check250 = icmp ult i32 %i.bw, 32
  %n.mod.vf252 = and i64 %i.cu, 24
  %n.vec253 = and i64 %i.cu, 2147483616           ; 5 uses
end_hunk_2
begin_hunk_3_@_ZNK4ncnn18Padding_x86_avx51212forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.11:bb.a
  %exitcond84.not.i = icmp eq i32 %i.iu, %i.ci
  br i1 %exitcond84.not.i, label %.preheader1.i, label %iter.check442, !llvm.loop !89

.preheader4.lr.ph.split.split.i:                  ; preds = %.preheader4.lr.ph.split.i
  br i1 %i.dp, label %.preheader4.us49.i.preheader, label %.preheader1.i

.preheader4.us49.i.preheader:                     ; preds = %.preheader4.lr.ph.split.split.i
  %i.iv = zext nneg i32 %i.cy to i64              ; 5 uses
  %min.iters.check459 = icmp ult i32 %i.cy, 8
  %min.iters.check461 = icmp ult i32 %i.cy, 32
  %n.mod.vf463 = and i64 %i.iv, 24
  %n.vec464 = and i64 %i.iv, 2147483616           ; 5 uses
  %i.iw = trunc nuw nsw i64 %n.vec464 to i32
  %i.ix = shl nuw nsw i64 %n.vec464, 3
  %cmp.n472 = icmp eq i64 %n.vec464, %i.iv
  %min.epilog.iters.check479 = icmp eq i64 %n.mod.vf463, 0
  %n.vec482 = and i64 %i.iv, 2147483640           ; 4 uses
  %i.iy = trunc nuw nsw i64 %n.vec482 to i32
  %i.iz = shl nuw nsw i64 %n.vec482, 3
  %cmp.n490 = icmp eq i64 %n.vec482, %i.iv
  br label %iter.check476

iter.check476:                                    ; preds = %.preheader4.us49.i.preheader, %._crit_edge.us56.i
  %.03926.us50.i = phi i32 [ %i.jl, %._crit_edge.us56.i ], [ 0, %.preheader4.us49.i.preheader ]
  %.225.us51.i = phi ptr [ %.lcssa199, %._crit_edge.us56.i ], [ %.042.lcssa.i, %.preheader4.us49.i.preheader ] ; 5 uses
  br i1 %min.iters.check459, label %vec.epilog.scalar.ph477.preheader, label %vector.main.loop.iter.check460

vector.main.loop.iter.check460:                   ; preds = %iter.check476
  br i1 %min.iters.check461, label %vec.epilog.ph480, label %vector.ph462

vector.ph462:                                     ; preds = %vector.main.loop.iter.check460
  %i.ja = getelementptr i8, ptr %.225.us51.i, i64 %i.ix ; 2 uses
  br label %vector.body467

vector.body467:                                   ; preds = %vector.body467, %vector.ph462
  %index468 = phi i64 [ 0, %vector.ph462 ], [ %index.next470, %vector.body467 ] ; 2 uses
  %i.jb = shl i64 %index468, 3
  %next.gep469 = getelementptr i8, ptr %.225.us51.i, i64 %i.jb ; 4 uses
  %i.jc = getelementptr i8, ptr %next.gep469, i64 64
  %i.jd = getelementptr i8, ptr %next.gep469, i64 128
  %i.je = getelementptr i8, ptr %next.gep469, i64 192
  store <8 x i64> %broadcast.splat466, ptr %next.gep469, align 8, !tbaa !73
  store <8 x i64> %broadcast.splat466, ptr %i.jc, align 8, !tbaa !73
  store <8 x i64> %broadcast.splat466, ptr %i.jd, align 8, !tbaa !73
  store <8 x i64> %broadcast.splat466, ptr %i.je, align 8, !tbaa !73
  %index.next470 = add nuw i64 %index468, 32      ; 2 uses
  %i.jf = icmp eq i64 %index.next470, %n.vec464
  br i1 %i.jf, label %middle.block471, label %vector.body467, !llvm.loop !983

middle.block471:                                  ; preds = %vector.body467
  br i1 %cmp.n472, label %._crit_edge.us56.i, label %vec.epilog.iter.check478

vec.epilog.iter.check478:                         ; preds = %middle.block471
  br i1 %min.epilog.iters.check479, label %vec.epilog.scalar.ph477.preheader, label %vec.epilog.ph480, !prof !78

vec.epilog.ph480:                                 ; preds = %vector.main.loop.iter.check460, %vec.epilog.iter.check478
  %vec.epilog.resume.val473 = phi i64 [ %n.vec464, %vec.epilog.iter.check478 ], [ 0, %vector.main.loop.iter.check460 ]
  %i.jg = getelementptr i8, ptr %.225.us51.i, i64 %i.iz ; 2 uses
  br label %vec.epilog.vector.body485

vec.epilog.vector.body485:                        ; preds = %vec.epilog.vector.body485, %vec.epilog.ph480
  %index486 = phi i64 [ %vec.epilog.resume.val473, %vec.epilog.ph480 ], [ %index.next488, %vec.epilog.vector.body485 ] ; 2 uses
  %i.jh = shl i64 %index486, 3
  %next.gep487 = getelementptr i8, ptr %.225.us51.i, i64 %i.jh
  store <8 x i64> %broadcast.splat484, ptr %next.gep487, align 8, !tbaa !73
  %index.next488 = add nuw i64 %index486, 8       ; 2 uses
  %i.ji = icmp eq i64 %index.next488, %n.vec482
  br i1 %i.ji, label %vec.epilog.middle.block489, label %vec.epilog.vector.body485, !llvm.loop !984

vec.epilog.middle.block489:                       ; preds = %vec.epilog.vector.body485
  br i1 %cmp.n490, label %._crit_edge.us56.i, label %vec.epilog.scalar.ph477.preheader

vec.epilog.scalar.ph477.preheader:                ; preds = %iter.check476, %vec.epilog.iter.check478, %vec.epilog.middle.block489
  %.03621.us52.i.ph = phi i32 [ 0, %iter.check476 ], [ %i.iw, %vec.epilog.iter.check478 ], [ %i.iy, %vec.epilog.middle.block489 ]
  %.520.us53.i.ph = phi ptr [ %.225.us51.i, %iter.check476 ], [ %i.ja, %vec.epilog.iter.check478 ], [ %i.jg, %vec.epilog.middle.block489 ]
  br label %vec.epilog.scalar.ph477

vec.epilog.scalar.ph477:                          ; preds = %vec.epilog.scalar.ph477.preheader, %vec.epilog.scalar.ph477
  %.03621.us52.i = phi i32 [ %i.jk, %vec.epilog.scalar.ph477 ], [ %.03621.us52.i.ph, %vec.epilog.scalar.ph477.preheader ]
  %.520.us53.i = phi ptr [ %i.jj, %vec.epilog.scalar.ph477 ], [ %.520.us53.i.ph, %vec.epilog.scalar.ph477.preheader ] ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.520.us53.i, i64 8 ; 2 uses
  store i64 %i.ab, ptr %.520.us53.i, align 8, !tbaa !73
  %i.jk = add nuw nsw i32 %.03621.us52.i, 1       ; 2 uses
  %exitcond81.not.i = icmp eq i32 %i.jk, %i.cy
  br i1 %exitcond81.not.i, label %._crit_edge.us56.i, label %vec.epilog.scalar.ph477, !llvm.loop !985

._crit_edge.us56.i:                               ; preds = %vec.epilog.scalar.ph477, %vec.epilog.middle.block489, %middle.block471
  %.lcssa199 = phi ptr [ %i.jg, %vec.epilog.middle.block489 ], [ %i.ja, %middle.block471 ], [ %i.jj, %vec.epilog.scalar.ph477 ] ; 2 uses
  %i.jl = add nuw nsw i32 %.03926.us50.i, 1       ; 2 uses
  %exitcond82.not.i = icmp eq i32 %i.jl, %i.ci
  br i1 %exitcond82.not.i, label %.preheader1.i, label %iter.check476, !llvm.loop !89

.preheader1.i:                                    ; preds = %._crit_edge.us56.i, %..preheader3_crit_edge.us42.i, %._crit_edge.us45.us.i, %._crit_edge.us29.i, %.preheader4.lr.ph.split.split.i, %.preheader5.i
  %.2.lcssa.i = phi ptr [ %.042.lcssa.i, %.preheader5.i ], [ %.lcssa200, %..preheader3_crit_edge.us42.i ], [ %.5.lcssa.us.i, %._crit_edge.us29.i ], [ %.042.lcssa.i, %.preheader4.lr.ph.split.split.i ], [ %.lcssa202, %._crit_edge.us45.us.i ], [ %.lcssa199, %._crit_edge.us56.i ]
  %i.jm = icmp sgt i32 %i.cw, 0
  %or.cond.i = select i1 %i.jm, i1 %i.ay, i1 false
  br i1 %or.cond.i, label %iter.check232, label %_ZN4ncnn3MatD2Ev.exit

iter.check232:                                    ; preds = %.preheader1.i, %._crit_edge.i
  %.03564.i = phi i32 [ %i.jw, %._crit_edge.i ], [ 0, %.preheader1.i ]
  %.663.i = phi ptr [ %.lcssa207, %._crit_edge.i ], [ %.2.lcssa.i, %.preheader1.i ] ; 5 uses
  br i1 %min.iters.check216, label %vec.epilog.scalar.ph233.preheader, label %vector.main.loop.iter.check217

vector.main.loop.iter.check217:                   ; preds = %iter.check232
  br i1 %min.iters.check218, label %vec.epilog.ph236, label %vector.ph219

vector.ph219:                                     ; preds = %vector.main.loop.iter.check217
  %i.jn = getelementptr i8, ptr %.663.i, i64 %i.bk ; 2 uses
  br label %vector.body224

vector.body224:                                   ; preds = %vector.body224, %vector.ph219
  %index225 = phi i64 [ 0, %vector.ph219 ], [ %index.next226, %vector.body224 ] ; 2 uses
  %i.jo = shl i64 %index225, 3
  %next.gep = getelementptr i8, ptr %.663.i, i64 %i.jo ; 4 uses
  %i.jp = getelementptr i8, ptr %next.gep, i64 64
  %i.jq = getelementptr i8, ptr %next.gep, i64 128
  %i.jr = getelementptr i8, ptr %next.gep, i64 192
  store <8 x i64> %broadcast.splat223, ptr %next.gep, align 8, !tbaa !73
  store <8 x i64> %broadcast.splat223, ptr %i.jp, align 8, !tbaa !73
  store <8 x i64> %broadcast.splat223, ptr %i.jq, align 8, !tbaa !73
  store <8 x i64> %broadcast.splat223, ptr %i.jr, align 8, !tbaa !73
  %index.next226 = add nuw i64 %index225, 32      ; 2 uses
  %i.js = icmp eq i64 %index.next226, %n.vec221
  br i1 %i.js, label %middle.block227, label %vector.body224, !llvm.loop !986

middle.block227:                                  ; preds = %vector.body224
  br i1 %cmp.n228, label %._crit_edge.i, label %vec.epilog.iter.check234

vec.epilog.iter.check234:                         ; preds = %middle.block227
  br i1 %min.epilog.iters.check235, label %vec.epilog.scalar.ph233.preheader, label %vec.epilog.ph236, !prof !78

vec.epilog.ph236:                                 ; preds = %vector.main.loop.iter.check217, %vec.epilog.iter.check234
  %vec.epilog.resume.val229 = phi i64 [ %n.vec221, %vec.epilog.iter.check234 ], [ 0, %vector.main.loop.iter.check217 ]
  %i.jt = getelementptr i8, ptr %.663.i, i64 %i.bm ; 2 uses
  br label %vec.epilog.vector.body241

vec.epilog.vector.body241:                        ; preds = %vec.epilog.vector.body241, %vec.epilog.ph236
  %index242 = phi i64 [ %vec.epilog.resume.val229, %vec.epilog.ph236 ], [ %index.next244, %vec.epilog.vector.body241 ] ; 2 uses
  %i.ju = shl i64 %index242, 3
  %next.gep243 = getelementptr i8, ptr %.663.i, i64 %i.ju
  store <8 x i64> %broadcast.splat240, ptr %next.gep243, align 8, !tbaa !73
  %index.next244 = add nuw i64 %index242, 8       ; 2 uses
  %i.jv = icmp eq i64 %index.next244, %n.vec238
  br i1 %i.jv, label %vec.epilog.middle.block245, label %vec.epilog.vector.body241, !llvm.loop !987

vec.epilog.middle.block245:                       ; preds = %vec.epilog.vector.body241
  br i1 %cmp.n246, label %._crit_edge.i, label %vec.epilog.scalar.ph233.preheader

vec.epilog.scalar.ph233.preheader:                ; preds = %iter.check232, %vec.epilog.iter.check234, %vec.epilog.middle.block245
  %.062.i.ph = phi i32 [ 0, %iter.check232 ], [ %i.bj, %vec.epilog.iter.check234 ], [ %i.bl, %vec.epilog.middle.block245 ]
  %.761.i.ph = phi ptr [ %.663.i, %iter.check232 ], [ %i.jn, %vec.epilog.iter.check234 ], [ %i.jt, %vec.epilog.middle.block245 ]
  br label %vec.epilog.scalar.ph233

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph233, %vec.epilog.middle.block245, %middle.block227
  %.lcssa207 = phi ptr [ %i.jt, %vec.epilog.middle.block245 ], [ %i.jn, %middle.block227 ], [ %i.jx, %vec.epilog.scalar.ph233 ]
  %i.jw = add nuw nsw i32 %.03564.i, 1            ; 2 uses
  %exitcond93.not.i = icmp eq i32 %i.jw, %i.cw
  br i1 %exitcond93.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %iter.check232, !llvm.loop !806

vec.epilog.scalar.ph233:                          ; preds = %vec.epilog.scalar.ph233.preheader, %vec.epilog.scalar.ph233
  %.062.i = phi i32 [ %i.jy, %vec.epilog.scalar.ph233 ], [ %.062.i.ph, %vec.epilog.scalar.ph233.preheader ]
  %.761.i = phi ptr [ %i.jx, %vec.epilog.scalar.ph233 ], [ %.761.i.ph, %vec.epilog.scalar.ph233.preheader ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %.761.i, i64 8 ; 2 uses
  store i64 %i.ab, ptr %.761.i, align 8, !tbaa !73
  %i.jy = add nuw nsw i32 %.062.i, 1              ; 2 uses
  %exitcond92.not.i = icmp eq i32 %i.jy, %i.ar
  br i1 %exitcond92.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph233, !llvm.loop !988

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge.i, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.d, %.preheader1.i
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count156
  br i1 %exitcond157.not, label %._crit_edge, label %.noexc60, !llvm.loop !989

._crit_edge138.split:                             ; preds = %._crit_edge, %.lr.ph137, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge138.split, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v8i64(<8 x i64>) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #23

attributes #0 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="512" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="256" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #24 = { noreturn nounwind }
attributes #25 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !14, i64 8}
!12 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !14, i64 8, !15, i64 16, !6, i64 24, !16, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !15, i64 64}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"p1 int", !13, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!17 = !{!12, !16, i64 32}
!18 = !{!12, !13, i64 0}
!19 = distinct !{null}
!20 = !{!12, !15, i64 64}
!21 = !{!22, !23, i64 13}
!22 = !{!"_ZTSN4ncnn5LayerE", !23, i64 8, !23, i64 9, !23, i64 10, !23, i64 11, !23, i64 12, !23, i64 13, !23, i64 14, !23, i64 15, !23, i64 16, !23, i64 17, !23, i64 18, !23, i64 19, !23, i64 20, !23, i64 21, !23, i64 22, !23, i64 23, !23, i64 24, !23, i64 25, !23, i64 26, !23, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !24, i64 48, !24, i64 80, !27, i64 112, !27, i64 136, !31, i64 160, !31, i64 184}
!23 = !{!"bool", !7, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !15, i64 8, !7, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !26, i64 0}
!26 = !{!"p1 omnipotent char", !13, i64 0}
!27 = !{!"_ZTSSt6vectorIiSaIiEE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!31 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !32, i64 0}
!32 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !34, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !35, i64 0, !35, i64 8, !35, i64 16}
!35 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!36 = !{i8 0, i8 2}
!37 = !{}
!38 = !{!39, !40, i64 228}
!39 = !{!"_ZTSN4ncnn7PaddingE", !22, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !40, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !12, i64 248}
!40 = !{!"float", !7, i64 0}
!41 = !{!42, !43, i64 400}
!42 = !{!"_ZTSN4ncnn18Padding_x86_avx512E", !39, i64 0, !43, i64 320, !12, i64 328, !43, i64 400, !12, i64 408}
!43 = !{!"short", !7, i64 0}
!44 = !{!45, !23, i64 32}
!45 = !{!"_ZTSN4ncnn6OptionE", !23, i64 0, !23, i64 1, !23, i64 2, !23, i64 3, !6, i64 4, !16, i64 8, !16, i64 16, !6, i64 24, !23, i64 28, !23, i64 29, !23, i64 30, !23, i64 31, !23, i64 32, !23, i64 33, !23, i64 34, !23, i64 35, !23, i64 36, !23, i64 37, !23, i64 38, !23, i64 39, !6, i64 40, !23, i64 44, !23, i64 45, !23, i64 46, !23, i64 47, !7, i64 48, !23, i64 49, !23, i64 50, !23, i64 51, !23, i64 52, !23, i64 53, !23, i64 54, !23, i64 55, !23, i64 56, !23, i64 57, !23, i64 58, !23, i64 59, !23, i64 60, !23, i64 61, !23, i64 62, !23, i64 63}
!46 = !{!42, !43, i64 320}
!47 = distinct !{null}
!48 = !{!39, !6, i64 208}
!49 = !{!39, !6, i64 212}
!50 = !{!39, !6, i64 216}
!51 = !{!39, !6, i64 220}
!52 = !{!39, !6, i64 232}
!53 = !{!39, !6, i64 236}
!54 = distinct !{null, null}
!55 = !{!13, !13, i64 0}
!56 = !{!12, !15, i64 16}
!57 = !{!12, !6, i64 24}
!58 = !{!6, !6, i64 0}
!59 = !{!12, !6, i64 56}
!60 = !{!12, !6, i64 40}
!61 = !{!39, !6, i64 224}
!62 = !{!45, !16, i64 8}
!63 = !{!12, !6, i64 44}
!64 = !{!45, !6, i64 4}
!65 = !{i64 0, i64 1, !66, i64 1, i64 1, !66, i64 2, i64 1, !66, i64 3, i64 1, !66, i64 4, i64 4, !58, i64 8, i64 8, !67, i64 16, i64 8, !67, i64 24, i64 4, !58, i64 28, i64 1, !66, i64 29, i64 1, !66, i64 30, i64 1, !66, i64 31, i64 1, !66, i64 32, i64 1, !66, i64 33, i64 1, !66, i64 34, i64 1, !66, i64 35, i64 1, !66, i64 36, i64 1, !66, i64 37, i64 1, !66, i64 38, i64 1, !66, i64 39, i64 1, !66, i64 40, i64 4, !58, i64 44, i64 1, !66, i64 45, i64 1, !66, i64 46, i64 1, !66, i64 47, i64 1, !66, i64 48, i64 1, !68, i64 49, i64 1, !66, i64 50, i64 1, !66, i64 51, i64 1, !66, i64 52, i64 1, !66, i64 53, i64 1, !66, i64 54, i64 1, !66, i64 55, i64 1, !66, i64 56, i64 1, !66, i64 57, i64 1, !66, i64 58, i64 1, !66, i64 59, i64 1, !66, i64 60, i64 1, !66, i64 61, i64 1, !66, i64 62, i64 1, !66, i64 63, i64 1, !66}
!66 = !{!23, !23, i64 0}
!67 = !{!16, !16, i64 0}
!68 = !{!7, !7, i64 0}
!69 = !{!45, !16, i64 16}
!70 = !{!22, !23, i64 11}
!71 = !{!22, !23, i64 12}
!72 = !{!12, !6, i64 48}
!73 = !{!15, !15, i64 0}
!74 = distinct !{!74, !75, !76, !77}
!75 = !{!"llvm.loop.mustprogress"}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = !{!"branch_weights", i32 8, i32 24}
!79 = distinct !{!79, !75, !76, !77}
!80 = distinct !{!80, !75, !77, !76}
!81 = distinct !{!81, !75, !76, !77}
!82 = distinct !{!82, !75, !76, !77}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = distinct !{!85, !75, !76}
!86 = distinct !{!86, !75, !76, !77}
!87 = distinct !{!87, !75, !76, !77}
!88 = distinct !{!88, !75, !77, !76}
!89 = distinct !{!89, !75}
!90 = distinct !{!90, !75, !76, !77}
!91 = distinct !{!91, !75, !76, !77}
!92 = distinct !{!92, !75, !77, !76}
!93 = distinct !{!93, !75, !76, !77}
!94 = distinct !{!94, !75, !76, !77}
!95 = distinct !{!95, !84}
!96 = distinct !{!96, !75, !76}
!97 = distinct !{!97, !75, !76, !77}
!98 = distinct !{!98, !75, !76, !77}
!99 = distinct !{!99, !84}
!100 = distinct !{!100, !75, !76}
!101 = distinct !{!101, !75, !76, !77}
!102 = distinct !{!102, !75, !76, !77}
!103 = distinct !{!103, !75, !77, !76}
!104 = distinct !{!104, !75, !76, !77}
!105 = distinct !{!105, !75, !76, !77}
!106 = distinct !{!106, !84}
!107 = distinct !{!107, !75, !76}
!108 = distinct !{!108, !75, !76, !77}
!109 = distinct !{!109, !75, !76, !77}
!110 = distinct !{!110, !75, !77, !76}
!111 = distinct !{!111, !75, !76, !77}
!112 = distinct !{!112, !75, !76, !77}
!113 = distinct !{!113, !75, !77, !76}
!114 = distinct !{!114, !75, !76, !77}
!115 = distinct !{!115, !75, !76, !77}
!116 = distinct !{!116, !75, !77, !76}
!117 = distinct !{!117, !75, !76, !77}
!118 = distinct !{!118, !75, !76, !77}
!119 = distinct !{!119, !75, !77, !76}
!120 = !{!12, !6, i64 52}
!121 = !{!45, !23, i64 34}
!122 = !{!43, !43, i64 0}
!123 = distinct !{!123, !75}
!124 = distinct !{!124, !84}
!125 = distinct !{!125, !75}
!126 = distinct !{!126, !75}
!127 = distinct !{!127, !84}
!128 = distinct !{!128, !75}
!129 = distinct !{!129, !84}
!130 = distinct !{!130, !84}
!131 = distinct !{!131, !75, !132}
!132 = !{!"llvm.loop.unswitch.partial.disable"}
!133 = distinct !{!133, !84}
!134 = distinct !{!134, !75}
!135 = distinct !{!135, !75}
!136 = distinct !{!136, !75}
!137 = distinct !{!137, !84}
!138 = distinct !{!138, !75}
!139 = distinct !{!139, !84}
!140 = distinct !{!140, !84}
!141 = distinct !{!141, !75}
!142 = distinct !{!142, !75, !132}
!143 = distinct !{!143, !84}
!144 = distinct !{!144, !75}
!145 = !{!146}
!146 = distinct !{!146, !147, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!147 = distinct !{!147, !"_ZN4ncnn3Mat7channelEi"}
!148 = !{!39, !6, i64 240}
!149 = distinct !{!149, !75}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!152 = distinct !{!152, !"_ZNK4ncnn3Mat7channelEi"}
!153 = distinct !{!153, !75}
!154 = distinct !{!154, !75}
!155 = distinct !{!155, !75}
!156 = distinct !{!156, !84}
!157 = distinct !{!157, !75}
!158 = distinct !{!158, !84}
!159 = distinct !{!159, !84}
!160 = distinct !{!160, !84}
!161 = distinct !{!161, !84}
!162 = distinct !{!162, !84}
!163 = distinct !{!163, !75, !132}
!164 = distinct !{!164, !84}
!165 = distinct !{!165, !75}
end_hunk_3
