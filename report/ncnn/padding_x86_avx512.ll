Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/padding_x86_avx512?download=true
inline.NumInlined: 24
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 241
loop-unroll.NumUnrolled: 241
begin_hunk_0_@_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE:bb.a
  br i1 %or.cond23, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %.not333 = icmp eq i32 %i.rd, %i.qx
  br i1 %.not333, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.rr = load i32, ptr %i.rq, align 8, !tbaa !103
  %.not334 = icmp eq i32 %i.rr, 0
  br i1 %.not334, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.rs = sdiv i32 %i.rd, 8
  %i.rt = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !104
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.qp, i32 noundef %i.qv, i32 noundef %i.rs, i64 noundef %i.rn, i32 noundef 8, ptr noundef %i.ru)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.rv = load ptr, ptr %2, align 8, !tbaa !63
  %i.rw = icmp eq ptr %i.rv, null
  br i1 %i.rw, label %.thread446, label %_ZNK4ncnn3Mat5emptyEv.exit371

_ZNK4ncnn3Mat5emptyEv.exit371:                    ; preds = %bb.bm
  %i.rx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ry = load i64, ptr %i.rx, align 8, !tbaa !64
  %i.rz = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.sa = load i32, ptr %i.rz, align 8, !tbaa !101
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
  %i.sf = load i32, ptr %i.qy, align 8, !tbaa !95
  %i.sg = sdiv i32 %i.sf, 8
  store i32 %i.sg, ptr %i.j, align 4, !tbaa !100
  %i.sh = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !106
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
  %i.sk = load i32, ptr %i.sj, align 8, !tbaa !93
  %i.sl = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !94
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.so = load i32, ptr %i.sn, align 8, !tbaa !91
  %i.sp = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #12
  %i.sr = load i32, ptr %i.a, align 4, !tbaa !100
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.st = load i32, ptr %i.ss, align 8, !tbaa !95
  %i.su = add nsw i32 %i.st, %i.sr
  %i.sv = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !96
  %i.sx = add nsw i32 %i.su, %i.sw                ; 2 uses
  store i32 %i.sx, ptr %i.k, align 4, !tbaa !100
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !103
  %.not335 = icmp eq i32 %i.sz, 0
  br i1 %.not335, label %bb.br, label %bb.bv

bb.br:                                            ; preds = %bb.bq
  %i.ta = add nsw i32 %i.so, %i.t
  %i.tb = add nsw i32 %i.ta, %i.sq
  %i.tc = add nsw i32 %i.sk, %i.r
  %i.td = add nsw i32 %i.tc, %i.sm
  %i.te = load i32, ptr %i.b, align 4, !tbaa !100
  %i.tf = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !104
  invoke void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.td, i32 noundef %i.tb, i32 noundef %i.sx, i32 noundef %i.te, i64 noundef %i.ab, i32 noundef 8, ptr noundef %i.tg)
          to label %bb.bs unwind label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.th = load ptr, ptr %2, align 8, !tbaa !63
  %i.ti = icmp eq ptr %i.th, null
  br i1 %i.ti, label %.thread453, label %_ZNK4ncnn3Mat5emptyEv.exit370

_ZNK4ncnn3Mat5emptyEv.exit370:                    ; preds = %bb.bs
  %i.tj = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !64
  %i.tl = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !101
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
  %i.ts = load i32, ptr %i.tr, align 4, !tbaa !106
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
  %i.tv = load i32, ptr %i.tu, align 8, !tbaa !93 ; 2 uses
  %i.tw = add nsw i32 %i.tv, %i.tt
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !94
  %i.tz = add nsw i32 %i.tw, %i.ty                ; 3 uses
  %i.ua = and i32 %i.tz, 7                        ; 2 uses
  %.not486 = icmp eq i32 %i.ua, 0
  %i.ub = and i32 %i.tz, 3
  %i.uc = icmp eq i32 %i.ub, 0
  %i.ud = lshr i64 %i.ab, 2
  %i.ue = select i1 %i.uc, i64 2, i64 0
  %i.uf = select i1 %.not486, i64 3, i64 %i.ue
  %i.ug = shl nuw i64 %i.ud, %i.uf
  %i.uh = and i32 %i.tv, 3
  %i.ui = icmp eq i32 %i.uh, 0
  %i.uj = icmp eq i32 %i.ua, 4
  %or.cond25 = and i1 %i.ui, %i.uj
  br i1 %or.cond25, label %bb.by, label %.thread456

bb.by:                                            ; preds = %bb.bx
  %i.uk = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ul = load i32, ptr %i.uk, align 8, !tbaa !103
  %i.um = icmp eq i32 %i.ul, 0
  br i1 %i.um, label %bb.bz, label %.thread456

bb.bz:                                            ; preds = %bb.by
  %i.un = ashr exact i32 %i.tz, 2
  %i.uo = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !104
  invoke void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.un, i64 noundef %i.ug, i32 noundef 4, ptr noundef %i.up)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.uq = load ptr, ptr %2, align 8, !tbaa !63    ; 2 uses
  %i.ur = icmp eq ptr %i.uq, null
  br i1 %i.ur, label %_ZN4ncnnL42padding_constant_pack16_bf16s_fp16s_avx512ERKNS_3MatERS0_iiiiRKDv4_x.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit369

_ZNK4ncnn3Mat5emptyEv.exit369:                    ; preds = %bb.ca
  %i.us = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !64
  %i.uu = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.uv = load i32, ptr %i.uu, align 8, !tbaa !101
  %i.uw = sext i32 %i.uv to i64
  %i.ux = mul i64 %i.ut, %i.uw
  %i.uy = icmp eq i64 %i.ux, 0
  br i1 %i.uy, label %_ZN4ncnnL42padding_constant_pack16_bf16s_fp16s_avx512ERKNS_3MatERS0_iiiiRKDv4_x.exit.thread, label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.uz = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.cc:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit369
  %i.va = load i16, ptr %i.c, align 2, !tbaa !120
  %i.vb = zext i16 %i.va to i64                   ; 4 uses
  %7 = shl nuw nsw i64 %i.vb, 16
  %8 = shl nuw nsw i64 %i.vb, 32
  %9 = shl nuw i64 %i.vb, 48
  %10 = or disjoint i64 %8, %7
  %11 = or disjoint i64 %10, %9
  %12 = or disjoint i64 %11, %i.vb
  %i.vc = load <2 x i32>, ptr %i.tu, align 8, !tbaa !100
  %i.vd = sdiv <2 x i32> %i.vc, splat (i32 4)     ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val395 = load i32, ptr %i.ve, align 4, !tbaa !105
  %i.vf = extractelement <2 x i32> %i.vd, i64 0
  %i.vg = extractelement <2 x i32> %i.vd, i64 1
  tail call fastcc void @_ZN4ncnnL38padding_constant_pack4_bf16s_fp16s_sseERKNS_3MatERS0_iiiil(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.uq, i32 %.val395, i32 noundef 0, i32 noundef 0, i32 noundef %i.vf, i32 noundef %i.vg, i64 noundef %12)
  br label %_ZN4ncnnL42padding_constant_pack16_bf16s_fp16s_avx512ERKNS_3MatERS0_iiiiRKDv4_x.exit.thread

bb.cd:                                            ; preds = %bb.bw
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.vi = load i32, ptr %i.vh, align 8, !tbaa !93
  %i.vj = add nsw i32 %i.vi, %i.r
  %i.vk = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.vl = load i32, ptr %i.vk, align 4, !tbaa !94
  %i.vm = add nsw i32 %i.vj, %i.vl
  %i.vn = shl nsw i32 %i.t, 2
  %i.vo = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.vp = load i32, ptr %i.vo, align 8, !tbaa !91 ; 2 uses
  %i.vq = add nsw i32 %i.vp, %i.vn
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.vs = load i32, ptr %i.vr, align 4, !tbaa !92
  %i.vt = add nsw i32 %i.vq, %i.vs                ; 3 uses
  %i.vu = and i32 %i.vt, 7                        ; 2 uses
  %.not485 = icmp eq i32 %i.vu, 0
  %i.vv = and i32 %i.vt, 3
  %i.vw = icmp eq i32 %i.vv, 0
  %i.vx = lshr i64 %i.ab, 2
  %i.vy = select i1 %i.vw, i64 2, i64 0
  %i.vz = select i1 %.not485, i64 3, i64 %i.vy
  %i.wa = shl nuw i64 %i.vx, %i.vz
  %i.wb = and i32 %i.vp, 3
  %i.wc = icmp eq i32 %i.wb, 0
  %i.wd = icmp eq i32 %i.vu, 4
  %or.cond27 = and i1 %i.wc, %i.wd
  br i1 %or.cond27, label %bb.ce, label %.thread456

bb.ce:                                            ; preds = %bb.cd
  %i.we = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !103
  %i.wg = icmp eq i32 %i.wf, 0
  br i1 %i.wg, label %bb.cf, label %.thread456

bb.cf:                                            ; preds = %bb.ce
  %i.wh = ashr exact i32 %i.vt, 2
  %i.wi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.wj = load ptr, ptr %i.wi, align 8, !tbaa !104
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.vm, i32 noundef %i.wh, i64 noundef %i.wa, i32 noundef 4, ptr noundef %i.wj)
          to label %bb.cg unwind label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.wk = load ptr, ptr %2, align 8, !tbaa !63    ; 2 uses
  %i.wl = icmp eq ptr %i.wk, null
  br i1 %i.wl, label %_ZN4ncnnL42padding_constant_pack16_bf16s_fp16s_avx512ERKNS_3MatERS0_iiiiRKDv4_x.exit.thread, label %_ZNK4ncnn3Mat5emptyEv.exit368

_ZNK4ncnn3Mat5emptyEv.exit368:                    ; preds = %bb.cg
  %i.wm = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.wn = load i64, ptr %i.wm, align 8, !tbaa !64
  %i.wo = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !101
  %i.wq = sext i32 %i.wp to i64
  %i.wr = mul i64 %i.wn, %i.wq
  %i.ws = icmp eq i64 %i.wr, 0
  br i1 %i.ws, label %_ZN4ncnnL42padding_constant_pack16_bf16s_fp16s_avx512ERKNS_3MatERS0_iiiiRKDv4_x.exit.thread, label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %i.wt = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.ci:                                            ; preds = %_ZNK4ncnn3Mat5emptyEv.exit368
  %i.wu = load i16, ptr %i.c, align 2, !tbaa !120
  %i.wv = zext i16 %i.wu to i64                   ; 4 uses
  %13 = shl nuw nsw i64 %i.wv, 16
  %14 = shl nuw nsw i64 %i.wv, 32
  %15 = shl nuw i64 %i.wv, 48
  %16 = or disjoint i64 %14, %13
  %17 = or disjoint i64 %16, %15
  %18 = or disjoint i64 %17, %i.wv
  %i.ww = load <2 x i32>, ptr %i.vo, align 8, !tbaa !100
  %i.wx = sdiv <2 x i32> %i.ww, splat (i32 4)     ; 2 uses
  %i.wy = load i32, ptr %i.vh, align 8, !tbaa !93
  %i.wz = load i32, ptr %i.vk, align 4, !tbaa !94
  %i.xa = getelementptr inbounds nuw i8, ptr %2, i64 44
  %.val397 = load i32, ptr %i.xa, align 4, !tbaa !105
  %i.xb = extractelement <2 x i32> %i.wx, i64 0
  %i.xc = extractelement <2 x i32> %i.wx, i64 1
  tail call fastcc void @_ZN4ncnnL38padding_constant_pack4_bf16s_fp16s_sseERKNS_3MatERS0_iiiil(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr nonnull %i.wk, i32 %.val397, i32 noundef %i.xb, i32 noundef %i.xc, i32 noundef %i.wy, i32 noundef %i.wz, i64 noundef %18)
  br label %_ZN4ncnnL42padding_constant_pack16_bf16s_fp16s_avx512ERKNS_3MatERS0_iiiiRKDv4_x.exit.thread

bb.cj:                                            ; preds = %bb.bw
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.xe = load i32, ptr %i.xd, align 8, !tbaa !93
  %i.xf = add nsw i32 %i.xe, %i.r
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !94
  %i.xi = add nsw i32 %i.xf, %i.xh
  %i.xj = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !91
  %i.xl = add nsw i32 %i.xk, %i.t
  %i.xm = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !92
  %i.xo = add nsw i32 %i.xl, %i.xn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #12
  %i.xp = load i32, ptr %i.b, align 4, !tbaa !100
  %i.xq = shl nsw i32 %i.xp, 2                    ; 2 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.xs = load i32, ptr %i.xr, align 8, !tbaa !95 ; 2 uses
  %i.xt = add nsw i32 %i.xq, %i.xs
  %i.xu = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !96
  %i.xw = add nsw i32 %i.xt, %i.xv                ; 5 uses
  store i32 %i.xw, ptr %i.l, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #12
  %i.xx = and i32 %i.xw, 7                        ; 2 uses
  %.not484 = icmp eq i32 %i.xx, 0                 ; 2 uses
  %i.xy = and i32 %i.xw, 3
  %i.xz = icmp eq i32 %i.xy, 0                    ; 2 uses
  %i.ya = select i1 %i.xz, i32 4, i32 1           ; 3 uses
  %i.yb = select i1 %.not484, i32 8, i32 %i.ya
  store i32 %i.yb, ptr %i.m, align 4, !tbaa !100
  %i.yc = lshr i64 %i.ab, 2
  %i.yd = select i1 %i.xz, i64 2, i64 0
  %i.ye = select i1 %.not484, i64 3, i64 %i.yd
  %i.yf = shl nuw i64 %i.yc, %i.ye
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
  %i.yk = load i32, ptr %i.yj, align 8, !tbaa !103
  %.not337 = icmp eq i32 %i.yk, 0
  br i1 %.not337, label %bb.cm, label %bb.cq

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.yl = sdiv i32 %i.xw, %i.ya
  %i.ym = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.yn = load ptr, ptr %i.ym, align 8, !tbaa !104
  invoke void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.xi, i32 noundef %i.xo, i32 noundef %i.yl, i64 noundef %i.yf, i32 noundef %i.ya, ptr noundef %i.yn)
          to label %bb.cn unwind label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.yo = load ptr, ptr %2, align 8, !tbaa !63
  %i.yp = icmp eq ptr %i.yo, null
  br i1 %i.yp, label %.thread473, label %_ZNK4ncnn3Mat5emptyEv.exit367

_ZNK4ncnn3Mat5emptyEv.exit367:                    ; preds = %bb.cn
  %i.yq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.yr = load i64, ptr %i.yq, align 8, !tbaa !64
  %i.ys = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.yt = load i32, ptr %i.ys, align 8, !tbaa !101
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
  %i.yy = load i32, ptr %i.xr, align 8, !tbaa !95
  %i.yz = sdiv i32 %i.yy, 4
  store i32 %i.yz, ptr %i.n, align 4, !tbaa !100
  %i.za = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !106
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
  %i.zd = load i32, ptr %i.zc, align 8, !tbaa !93
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !94
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.zh = load i32, ptr %i.zg, align 8, !tbaa !91
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.zj = load i32, ptr %i.zi, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #12
  %i.zk = load i32, ptr %i.a, align 4, !tbaa !100
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.zm = load i32, ptr %i.zl, align 8, !tbaa !95
  %i.zn = add nsw i32 %i.zm, %i.zk
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.zp = load i32, ptr %i.zo, align 4, !tbaa !96
  %i.zq = add nsw i32 %i.zn, %i.zp                ; 2 uses
  store i32 %i.zq, ptr %i.o, align 4, !tbaa !100
  %i.zr = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.zs = load i32, ptr %i.zr, align 8, !tbaa !103
  %.not338 = icmp eq i32 %i.zs, 0
  br i1 %.not338, label %bb.cs, label %bb.cw

bb.cs:                                            ; preds = %bb.cr
  %i.zt = add nsw i32 %i.zh, %i.t
  %i.zu = add nsw i32 %i.zt, %i.zj
  %i.zv = add nsw i32 %i.zd, %i.r
  %i.zw = add nsw i32 %i.zv, %i.zf
  %i.zx = load i32, ptr %i.b, align 4, !tbaa !100
  %i.zy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !104
  invoke void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %2, i32 noundef %i.zw, i32 noundef %i.zu, i32 noundef %i.zq, i32 noundef %i.zx, i64 noundef %i.ab, i32 noundef 4, ptr noundef %i.zz)
          to label %bb.ct unwind label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.aaa = load ptr, ptr %2, align 8, !tbaa !63
  %i.aab = icmp eq ptr %i.aaa, null
  br i1 %i.aab, label %.thread480, label %_ZNK4ncnn3Mat5emptyEv.exit366

_ZNK4ncnn3Mat5emptyEv.exit366:                    ; preds = %bb.ct
  %i.aac = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aad = load i64, ptr %i.aac, align 8, !tbaa !64
  %i.aae = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.aaf = load i32, ptr %i.aae, align 8, !tbaa !101
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
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !106
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
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !61 ; 2 uses
  %i.aap = load <2 x ptr>, ptr %1, align 8, !tbaa !97
  store <2 x ptr> %i.aap, ptr %5, align 16, !tbaa !97
  %i.aaq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.aar = load i64, ptr %i.aa, align 8, !tbaa !98
  store i64 %i.aar, ptr %i.aaq, align 16, !tbaa !98
  %i.aas = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aat = load i32, ptr %i.ac, align 8, !tbaa !99
  store i32 %i.aat, ptr %i.aas, align 8, !tbaa !99
  %i.aau = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !62
  store ptr %i.aaw, ptr %i.aau, align 16, !tbaa !62
  %i.aax = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.aay = load <4 x i32>, ptr %i.y, align 8, !tbaa !100
  store <4 x i32> %i.aay, ptr %i.aax, align 8, !tbaa !100
  %i.aaz = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.aba = load i32, ptr %i.w, align 8, !tbaa !101
  store i32 %i.aba, ptr %i.aaz, align 8, !tbaa !101
  %i.abb = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4ncnnL38padding_constant_pack4_bf16s_fp16s_sseERKNS_3MatERS0_iiiil:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0436 = phi i32 [ %i.gf, %.lr.ph ], [ %.0436.ph, %.lr.ph.preheader ]
  %.0445 = phi ptr [ %i.ge, %.lr.ph ], [ %.0445.ph, %.lr.ph.preheader ] ; 2 uses
  store i64 %5, ptr %.0445, align 8, !tbaa !113
  %i.ge = getelementptr inbounds nuw i8, ptr %.0445, i64 8 ; 2 uses
  %i.gf = add nuw nsw i32 %.0436, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.gf, %i.b
  br i1 %exitcond.not, label %.preheader4, label %.lr.ph, !llvm.loop !589

.preheader:                                       ; preds = %._crit_edge.us49, %..preheader2_crit_edge.us31, %._crit_edge.us38.us, %._crit_edge.us, %.preheader3.lr.ph.split.split, %.preheader4
  %.1.lcssa = phi ptr [ %.044.lcssa, %.preheader4 ], [ %.lcssa111, %..preheader2_crit_edge.us31 ], [ %.4.lcssa.us, %._crit_edge.us ], [ %.044.lcssa, %.preheader3.lr.ph.split.split ], [ %.lcssa110, %._crit_edge.us38.us ], [ %.lcssa112, %._crit_edge.us49 ] ; 5 uses
  %i.gg = icmp sgt i32 %i.c, 0
  br i1 %i.gg, label %iter.check363, label %._crit_edge

iter.check363:                                    ; preds = %.preheader
  %i.gh = zext nneg i32 %i.c to i64               ; 5 uses
  %min.iters.check348 = icmp ult i32 %i.c, 8
  br i1 %min.iters.check348, label %.lr.ph57.preheader, label %vector.main.loop.iter.check349

vector.main.loop.iter.check349:                   ; preds = %iter.check363
  %min.iters.check350 = icmp ult i32 %i.c, 32
  br i1 %min.iters.check350, label %vec.epilog.ph367, label %vector.ph351

vector.ph351:                                     ; preds = %vector.main.loop.iter.check349
  %i.gi = and i64 %i.gh, 24
  %n.vec352 = and i64 %i.gh, 2147483616           ; 5 uses
  %i.gj = trunc nuw nsw i64 %n.vec352 to i32
  %i.gk = shl nuw nsw i64 %n.vec352, 3
  %i.gl = getelementptr i8, ptr %.1.lcssa, i64 %i.gk
  %broadcast.splatinsert353 = insertelement <8 x i64> poison, i64 %5, i64 0
  %broadcast.splat354 = shufflevector <8 x i64> %broadcast.splatinsert353, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body355

vector.body355:                                   ; preds = %vector.body355, %vector.ph351
  %index356 = phi i64 [ 0, %vector.ph351 ], [ %index.next358, %vector.body355 ] ; 2 uses
  %i.gm = shl i64 %index356, 3
  %next.gep357 = getelementptr i8, ptr %.1.lcssa, i64 %i.gm ; 4 uses
  %i.gn = getelementptr i8, ptr %next.gep357, i64 64
  %i.go = getelementptr i8, ptr %next.gep357, i64 128
  %i.gp = getelementptr i8, ptr %next.gep357, i64 192
  store <8 x i64> %broadcast.splat354, ptr %next.gep357, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat354, ptr %i.gn, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat354, ptr %i.go, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat354, ptr %i.gp, align 8, !tbaa !113
  %index.next358 = add nuw i64 %index356, 32      ; 2 uses
  %i.gq = icmp eq i64 %index.next358, %n.vec352
  br i1 %i.gq, label %middle.block359, label %vector.body355, !llvm.loop !590

middle.block359:                                  ; preds = %vector.body355
  %cmp.n360 = icmp eq i64 %n.vec352, %i.gh
  br i1 %cmp.n360, label %._crit_edge, label %vec.epilog.iter.check365

vec.epilog.iter.check365:                         ; preds = %middle.block359
  %min.epilog.iters.check366 = icmp eq i64 %i.gi, 0
  br i1 %min.epilog.iters.check366, label %.lr.ph57.preheader, label %vec.epilog.ph367, !prof !117

vec.epilog.ph367:                                 ; preds = %vector.main.loop.iter.check349, %vec.epilog.iter.check365
  %vec.epilog.resume.val361 = phi i64 [ %n.vec352, %vec.epilog.iter.check365 ], [ 0, %vector.main.loop.iter.check349 ]
  %n.vec368 = and i64 %i.gh, 2147483640           ; 4 uses
  %i.gr = trunc nuw nsw i64 %n.vec368 to i32
  %i.gs = shl nuw nsw i64 %n.vec368, 3
  %i.gt = getelementptr i8, ptr %.1.lcssa, i64 %i.gs
  %broadcast.splatinsert369 = insertelement <8 x i64> poison, i64 %5, i64 0
  %broadcast.splat370 = shufflevector <8 x i64> %broadcast.splatinsert369, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body371

vec.epilog.vector.body371:                        ; preds = %vec.epilog.vector.body371, %vec.epilog.ph367
  %index372 = phi i64 [ %vec.epilog.resume.val361, %vec.epilog.ph367 ], [ %index.next374, %vec.epilog.vector.body371 ] ; 2 uses
  %i.gu = shl i64 %index372, 3
  %next.gep373 = getelementptr i8, ptr %.1.lcssa, i64 %i.gu
  store <8 x i64> %broadcast.splat370, ptr %next.gep373, align 8, !tbaa !113
  %index.next374 = add nuw i64 %index372, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next374, %n.vec368
  br i1 %i.gv, label %vec.epilog.middle.block375, label %vec.epilog.vector.body371, !llvm.loop !591

vec.epilog.middle.block375:                       ; preds = %vec.epilog.vector.body371
  %cmp.n376 = icmp eq i64 %n.vec368, %i.gh
  br i1 %cmp.n376, label %._crit_edge, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %iter.check363, %vec.epilog.iter.check365, %vec.epilog.middle.block375
  %.056.ph = phi i32 [ 0, %iter.check363 ], [ %i.gj, %vec.epilog.iter.check365 ], [ %i.gr, %vec.epilog.middle.block375 ]
  %.555.ph = phi ptr [ %.1.lcssa, %iter.check363 ], [ %i.gl, %vec.epilog.iter.check365 ], [ %i.gt, %vec.epilog.middle.block375 ]
  br label %.lr.ph57

._crit_edge:                                      ; preds = %.lr.ph57, %middle.block359, %vec.epilog.middle.block375, %.preheader
  ret void

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %.lr.ph57
  %.056 = phi i32 [ %i.gx, %.lr.ph57 ], [ %.056.ph, %.lr.ph57.preheader ]
  %.555 = phi ptr [ %i.gw, %.lr.ph57 ], [ %.555.ph, %.lr.ph57.preheader ] ; 2 uses
  store i64 %5, ptr %.555, align 8, !tbaa !113
  %i.gw = getelementptr inbounds nuw i8, ptr %.555, i64 8
  %i.gx = add nuw nsw i32 %.056, 1                ; 2 uses
  %exitcond81.not = icmp eq i32 %i.gx, %i.c
  br i1 %exitcond81.not, label %._crit_edge, label %.lr.ph57, !llvm.loop !592
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %6, ptr nofree noundef nonnull readonly align 2 captures(none) dereferenceable(2) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %10) #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.ncnn::Mat", align 8        ; 14 uses
  %i.e = load i32, ptr %3, align 4, !tbaa !100
  %i.f = load i32, ptr %2, align 4, !tbaa !100
  %i.g = sdiv i32 %i.e, %i.f                      ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.i = add nsw i32 %i.g, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.i, ptr %i.b, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !100
  %i.j = load i32, ptr %0, align 4, !tbaa !100    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.j, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.k = load i32, ptr %i.b, align 4, !tbaa !100
  %i.l = call i32 @llvm.smin.i32(i32 %i.k, i32 %i.i) ; 3 uses
  store i32 %i.l, ptr %i.b, align 4, !tbaa !100
  %i.m = load i32, ptr %i.a, align 4, !tbaa !100  ; 2 uses
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
  %i.as = phi i32 [ %i.l, %.noexc45.lr.ph ], [ %i.atm, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %indvars.iv163 = phi i64 [ %i.ar, %.noexc45.lr.ph ], [ %indvars.iv.next164, %_ZN4ncnn3MatD2Ev.exit ] ; 5 uses
  %i.at = load i32, ptr %i.n, align 4, !tbaa !105, !noalias !724 ; 2 uses
  %i.au = load i32, ptr %i.o, align 8, !tbaa !112, !noalias !724
  %i.av = load i32, ptr %i.p, align 4, !tbaa !119, !noalias !724
  %i.aw = load ptr, ptr %4, align 8, !tbaa !63, !noalias !724
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !64, !noalias !724
  %i.ay = mul i64 %i.ax, %indvars.iv163
  %i.az = load i64, ptr %i.r, align 8, !tbaa !98, !noalias !724 ; 3 uses
  %i.ba = mul i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ba ; 16 uses
  %i.bc = sext i32 %i.at to i64
  %i.bd = sext i32 %i.au to i64
  %i.be = mul nsw i64 %i.bd, %i.bc                ; 2 uses
  %i.bf = mul i64 %i.az, %i.be
  %i.bg = add i64 %i.bf, 15
  %i.bh = and i64 %i.bg, -16
  %i.bi = udiv i64 %i.bh, %i.az
  %i.bj = load i32, ptr %i.s, align 8, !tbaa !102, !noalias !724
  %i.bk = icmp eq i32 %i.bj, 4
  %spec.select = select i1 %i.bk, i64 %i.be, i64 %i.bi
  %i.bl = load i32, ptr %i.t, align 8, !tbaa !122
  %.not35 = icmp eq i32 %i.bl, 0
  br i1 %.not35, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc45
  %i.bm = load ptr, ptr %6, align 8, !tbaa !63
  %.idx = shl nsw i64 %indvars.iv163, 3
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %.idx
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !113
  br label %bb.e

bb.d:                                             ; preds = %.noexc45
  %i.bp = load i16, ptr %7, align 2, !tbaa !120
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
  %i.br = load i32, ptr %8, align 4, !tbaa !100
  %i.bs = trunc nsw i64 %indvars.iv163 to i32
  %i.bt = sub nsw i32 %i.bs, %i.br                ; 3 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = load i32, ptr %9, align 4, !tbaa !100
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
  %i.bz = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %.033, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 128
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 192
  store <8 x i64> %broadcast.splat, ptr %i.ca, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat, ptr %i.cb, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat, ptr %i.cc, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat, ptr %i.cd, align 8, !tbaa !113
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !595

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %_ZN4ncnn3MatD2Ev.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !125

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec288 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert289 = insertelement <4 x i64> poison, i64 %.033, i64 0
  %broadcast.splat290 = shufflevector <4 x i64> %broadcast.splatinsert289, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index291 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next292, %vec.epilog.vector.body ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index291
  store <4 x i64> %broadcast.splat290, ptr %i.cf, align 8, !tbaa !113
  %index.next292 = add nuw i64 %index291, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next292, %n.vec288
  br i1 %i.cg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !596

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n293 = icmp eq i64 %n.vec288, %wide.trip.count
  br i1 %cmp.n293, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec288, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv
  store i64 %.033, ptr %i.ch, align 8, !tbaa !113
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZN4ncnn3MatD2Ev.exit, label %.lr.ph, !llvm.loop !597

.noexc46:                                         ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #12
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %i.ci = load i32, ptr %i.u, align 4, !tbaa !105, !noalias !725 ; 59 uses
  %i.cj = load i32, ptr %i.v, align 8, !tbaa !112, !noalias !725 ; 6 uses
  %i.ck = load i32, ptr %i.w, align 4, !tbaa !119, !noalias !725
  %i.cl = load ptr, ptr %10, align 8, !tbaa !63, !noalias !725 ; 5 uses
  %i.cm = ptrtoaddr ptr %i.cl to i64              ; 4 uses
  %i.cn = load i64, ptr %i.x, align 8, !tbaa !64, !noalias !725
  %i.co = zext nneg i32 %i.bt to i64
  %i.cp = mul i64 %i.cn, %i.co
  %i.cq = load i64, ptr %i.y, align 8, !tbaa !98, !noalias !725 ; 4 uses
  %i.cr = mul i64 %i.cp, %i.cq                    ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cr ; 14 uses
  %i.ct = load i32, ptr %i.z, align 8, !tbaa !99, !noalias !725
  %i.cu = load ptr, ptr %i.aa, align 8, !tbaa !62, !noalias !725
  store ptr %i.cs, ptr %11, align 8, !tbaa !63
  store ptr null, ptr %i.ab, align 8, !tbaa !61
  store i64 %i.cq, ptr %i.ac, align 8, !tbaa !98
  store i32 %i.ct, ptr %i.ad, align 8, !tbaa !99
  store ptr %i.cu, ptr %i.ae, align 8, !tbaa !62
  store i32 %i.ci, ptr %i.ag, align 4, !tbaa !105
  store i32 %i.cj, ptr %i.ah, align 8, !tbaa !112
  store i32 1, ptr %i.ai, align 4, !tbaa !119
  store i32 %i.ck, ptr %i.aj, align 8, !tbaa !101
  %i.cv = sext i32 %i.ci to i64
  %i.cw = sext i32 %i.cj to i64
  %i.cx = mul nsw i64 %i.cw, %i.cv                ; 2 uses
  %i.cy = mul i64 %i.cq, %i.cx
  %i.cz = add i64 %i.cy, 15
  %i.da = and i64 %i.cz, -16
  %i.db = udiv i64 %i.da, %i.cq
  store i64 %i.db, ptr %i.ak, align 8, !tbaa !64
  %i.dc = load i32, ptr %i.al, align 8, !tbaa !102, !noalias !725 ; 2 uses
  %i.dd = add nsw i32 %i.dc, -1
  store i32 %i.dd, ptr %i.af, align 8, !tbaa !102, !alias.scope !725
  %i.de = icmp eq i32 %i.dc, 4
  br i1 %i.de, label %bb.h, label %_ZNK4ncnn3Mat7channelEi.exit

bb.h:                                             ; preds = %.noexc46
  store i64 %i.cx, ptr %i.ak, align 8, !tbaa !64, !alias.scope !725
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %bb.h, %.noexc46
  %i.df = load i32, ptr %i.am, align 8, !tbaa !103 ; 2 uses
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.dh = load i32, ptr %i.an, align 8, !tbaa !91
  %i.di = load i32, ptr %i.ao, align 4, !tbaa !92
  %i.dj = load i32, ptr %i.ap, align 8, !tbaa !93
  %i.dk = load i32, ptr %i.aq, align 4, !tbaa !94
  call fastcc void @_ZN4ncnnL38padding_constant_pack4_bf16s_fp16s_sseERKNS_3MatERS0_iiiil(ptr noundef nonnull align 8 dereferenceable(72) %11, ptr %i.bb, i32 %i.at, i32 noundef %i.dh, i32 noundef %i.di, i32 noundef %i.dj, i32 noundef %i.dk, i64 noundef %.033)
  %.pr = load i32, ptr %i.am, align 8, !tbaa !103
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNK4ncnn3Mat7channelEi.exit
  %i.dl = phi i32 [ %.pr, %bb.i ], [ %i.df, %_ZNK4ncnn3Mat7channelEi.exit ]
  switch i32 %i.dl, label %_ZN4ncnn3MatD2Ev.exit37 [
    i32 1, label %bb.k
    i32 2, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  %i.dm = load i32, ptr %i.an, align 8, !tbaa !91 ; 5 uses
  %i.dn = load i32, ptr %i.ao, align 4, !tbaa !92 ; 2 uses
  %i.do = load i32, ptr %i.ap, align 8, !tbaa !93 ; 23 uses
  %i.dp = load i32, ptr %i.aq, align 4, !tbaa !94 ; 23 uses
  %i.dq = icmp sgt i32 %i.dm, 0
  br i1 %i.dq, label %.lr.ph22.i, label %.preheader4.i

.lr.ph22.i:                                       ; preds = %bb.k
  %i.dr = icmp sgt i32 %i.do, 0                   ; 2 uses
  %i.ds = icmp sgt i32 %i.ci, 0
  %i.dt = icmp sgt i32 %i.dp, 0                   ; 3 uses
  br i1 %i.ds, label %.lr.ph22.split.us.i.preheader, label %.lr.ph22.split.i

.lr.ph22.split.us.i.preheader:                    ; preds = %.lr.ph22.i
  %i.du = zext i32 %i.dp to i64                   ; 5 uses
  %i.dv = add i64 %i.cr, %i.cm
  %i.dw = zext nneg i32 %i.ci to i64              ; 5 uses
  %i.dx = zext i32 %i.do to i64                   ; 5 uses
  %min.iters.check572 = icmp ult i32 %i.do, 8
  %min.iters.check574 = icmp ult i32 %i.do, 32
  %i.dy = and i64 %i.dx, 24
  %n.vec576 = and i64 %i.dx, 2147483616           ; 5 uses
  %i.dz = trunc nuw nsw i64 %n.vec576 to i32
  %i.ea = shl nuw nsw i64 %n.vec576, 3
  %cmp.n584 = icmp eq i64 %n.vec576, %i.dx
  %min.epilog.iters.check591 = icmp eq i64 %i.dy, 0
  %n.vec593 = and i64 %i.dx, 2147483640           ; 4 uses
  %i.eb = trunc nuw nsw i64 %n.vec593 to i32
  %i.ec = shl nuw nsw i64 %n.vec593, 3
  %cmp.n601 = icmp eq i64 %n.vec593, %i.dx
  %min.iters.check535 = icmp ult i32 %i.ci, 8
  %min.iters.check537 = icmp ult i32 %i.ci, 32
  %i.ed = and i64 %i.dw, 24
  %n.vec539 = and i64 %i.dw, 2147483616           ; 5 uses
  %i.ee = trunc nuw nsw i64 %n.vec539 to i32
  %i.ef = shl nuw nsw i64 %n.vec539, 3            ; 2 uses
  %i.eg = getelementptr i8, ptr %i.cs, i64 %i.ef
  %cmp.n550 = icmp eq i64 %n.vec539, %i.dw
  %min.epilog.iters.check558 = icmp eq i64 %i.ed, 0
  %n.vec560 = and i64 %i.dw, 2147483640           ; 4 uses
  %i.eh = trunc nuw nsw i64 %n.vec560 to i32
  %i.ei = shl nuw nsw i64 %n.vec560, 3            ; 2 uses
  %i.ej = getelementptr i8, ptr %i.cs, i64 %i.ei
  %cmp.n568 = icmp eq i64 %n.vec560, %i.dw
  %min.iters.check500 = icmp ult i32 %i.dp, 8
  %min.iters.check502 = icmp ult i32 %i.dp, 32
  %i.ek = and i64 %i.du, 24
  %n.vec504 = and i64 %i.du, 2147483616           ; 5 uses
  %i.el = trunc nuw nsw i64 %n.vec504 to i32
end_hunk_1
begin_hunk_2_@_ZNK4ncnn18Padding_x86_avx51219forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9:bb.a

vec.epilog.scalar.ph756.prol.loopexit:            ; preds = %vec.epilog.scalar.ph756.prol, %vec.epilog.scalar.ph756.preheader
  %.lcssa1326.unr = phi ptr [ poison, %vec.epilog.scalar.ph756.preheader ], [ %i.aru, %vec.epilog.scalar.ph756.prol ]
  %indvars.iv172.i.unr = phi i64 [ %indvars.iv172.i.ph, %vec.epilog.scalar.ph756.preheader ], [ %indvars.iv.next173.i.prol, %vec.epilog.scalar.ph756.prol ]
  %.1198.i.unr = phi ptr [ %.1198.i.ph, %vec.epilog.scalar.ph756.preheader ], [ %i.aru, %vec.epilog.scalar.ph756.prol ]
  %i.arv = sub nsw i64 %indvars.iv172.i.ph, %wide.trip.count175.i
  %i.arw = icmp ugt i64 %i.arv, -4
  br i1 %i.arw, label %._crit_edge101.i, label %vec.epilog.scalar.ph756

.lr.ph95.i:                                       ; preds = %.lr.ph95.i.prol.loopexit, %.lr.ph95.i
  %.08794.i = phi i32 [ %i.asv, %.lr.ph95.i ], [ %.08794.i.unr, %.lr.ph95.i.prol.loopexit ]
  %.08993.i = phi ptr [ %i.ast, %.lr.ph95.i ], [ %.08993.i.unr, %.lr.ph95.i.prol.loopexit ] ; 9 uses
  %.1092.i = phi ptr [ %i.asu, %.lr.ph95.i ], [ %.1092.i.unr, %.lr.ph95.i.prol.loopexit ] ; 9 uses
  %i.arx = load i64, ptr %.08993.i, align 8, !tbaa !113
  store i64 %i.arx, ptr %.1092.i, align 8, !tbaa !113
  %i.ary = getelementptr inbounds nuw i8, ptr %.08993.i, i64 8
  %i.arz = getelementptr inbounds nuw i8, ptr %.1092.i, i64 8
  %i.asa = load i64, ptr %i.ary, align 8, !tbaa !113
  store i64 %i.asa, ptr %i.arz, align 8, !tbaa !113
  %i.asb = getelementptr inbounds nuw i8, ptr %.08993.i, i64 16
  %i.asc = getelementptr inbounds nuw i8, ptr %.1092.i, i64 16
  %i.asd = load i64, ptr %i.asb, align 8, !tbaa !113
  store i64 %i.asd, ptr %i.asc, align 8, !tbaa !113
  %i.ase = getelementptr inbounds nuw i8, ptr %.08993.i, i64 24
  %i.asf = getelementptr inbounds nuw i8, ptr %.1092.i, i64 24
  %i.asg = load i64, ptr %i.ase, align 8, !tbaa !113
  store i64 %i.asg, ptr %i.asf, align 8, !tbaa !113
  %i.ash = getelementptr inbounds nuw i8, ptr %.08993.i, i64 32
  %i.asi = getelementptr inbounds nuw i8, ptr %.1092.i, i64 32
  %i.asj = load i64, ptr %i.ash, align 8, !tbaa !113
  store i64 %i.asj, ptr %i.asi, align 8, !tbaa !113
  %i.ask = getelementptr inbounds nuw i8, ptr %.08993.i, i64 40
  %i.asl = getelementptr inbounds nuw i8, ptr %.1092.i, i64 40
  %i.asm = load i64, ptr %i.ask, align 8, !tbaa !113
  store i64 %i.asm, ptr %i.asl, align 8, !tbaa !113
  %i.asn = getelementptr inbounds nuw i8, ptr %.08993.i, i64 48
  %i.aso = getelementptr inbounds nuw i8, ptr %.1092.i, i64 48
  %i.asp = load i64, ptr %i.asn, align 8, !tbaa !113
  store i64 %i.asp, ptr %i.aso, align 8, !tbaa !113
  %i.asq = getelementptr inbounds nuw i8, ptr %.08993.i, i64 56
  %i.asr = getelementptr inbounds nuw i8, ptr %.1092.i, i64 56
  %i.ass = load i64, ptr %i.asq, align 8, !tbaa !113
  store i64 %i.ass, ptr %i.asr, align 8, !tbaa !113
  %i.ast = getelementptr inbounds nuw i8, ptr %.08993.i, i64 64 ; 2 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %.1092.i, i64 64 ; 2 uses
  %i.asv = add nuw nsw i32 %.08794.i, 8           ; 2 uses
  %exitcond171.not.i.7 = icmp eq i32 %i.asv, %i.ci
  br i1 %exitcond171.not.i.7, label %.preheader.i54, label %.lr.ph95.i, !llvm.loop !721

._crit_edge101.i:                                 ; preds = %vec.epilog.scalar.ph756.prol.loopexit, %vec.epilog.scalar.ph756, %middle.block751, %vec.epilog.middle.block767, %.preheader.i54
  %.11.lcssa.i56 = phi ptr [ %.10.lcssa.i55, %.preheader.i54 ], [ %i.arm, %vec.epilog.middle.block767 ], [ %i.ara, %middle.block751 ], [ %.lcssa1326.unr, %vec.epilog.scalar.ph756.prol.loopexit ], [ %i.atl, %vec.epilog.scalar.ph756 ]
  %i.asw = getelementptr inbounds [2 x i8], ptr %.3104103.i, i64 %i.ajk
  %i.asx = add nuw nsw i32 %.090105.i, 1          ; 2 uses
  %exitcond177.not.i = icmp eq i32 %i.asx, %i.rs
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond177.not.i, label %_ZN4ncnn3MatD2Ev.exit37, label %.preheader2.i51, !llvm.loop !722

vec.epilog.scalar.ph756:                          ; preds = %vec.epilog.scalar.ph756.prol.loopexit, %vec.epilog.scalar.ph756
  %indvars.iv172.i = phi i64 [ %indvars.iv.next173.i.3, %vec.epilog.scalar.ph756 ], [ %indvars.iv172.i.unr, %vec.epilog.scalar.ph756.prol.loopexit ] ; 5 uses
  %.1198.i = phi ptr [ %i.atl, %vec.epilog.scalar.ph756 ], [ %.1198.i.unr, %vec.epilog.scalar.ph756.prol.loopexit ] ; 5 uses
  %.idx198.i = mul nsw i64 %indvars.iv172.i, -8
  %i.asy = getelementptr inbounds i8, ptr %i.aqz, i64 %.idx198.i
  %i.asz = load i64, ptr %i.asy, align 8, !tbaa !113
  store i64 %i.asz, ptr %.1198.i, align 8, !tbaa !113
  %i.ata = getelementptr inbounds nuw i8, ptr %.1198.i, i64 8
  %indvars.iv.next173.i.neg = xor i64 %indvars.iv172.i, -1
  %.idx198.i.1 = shl nsw i64 %indvars.iv.next173.i.neg, 3
  %i.atb = getelementptr inbounds i8, ptr %i.aqz, i64 %.idx198.i.1
  %i.atc = load i64, ptr %i.atb, align 8, !tbaa !113
  store i64 %i.atc, ptr %i.ata, align 8, !tbaa !113
  %i.atd = getelementptr inbounds nuw i8, ptr %.1198.i, i64 16
  %i.ate = shl i64 %indvars.iv172.i, 3
  %.idx198.i.2 = sub i64 -16, %i.ate
  %i.atf = getelementptr inbounds i8, ptr %i.aqz, i64 %.idx198.i.2
  %i.atg = load i64, ptr %i.atf, align 8, !tbaa !113
  store i64 %i.atg, ptr %i.atd, align 8, !tbaa !113
  %i.ath = getelementptr inbounds nuw i8, ptr %.1198.i, i64 24
  %i.ati = shl i64 %indvars.iv172.i, 3
  %.idx198.i.3 = sub i64 -24, %i.ati
  %i.atj = getelementptr inbounds i8, ptr %i.aqz, i64 %.idx198.i.3
  %i.atk = load i64, ptr %i.atj, align 8, !tbaa !113
  store i64 %i.atk, ptr %i.ath, align 8, !tbaa !113
  %i.atl = getelementptr inbounds nuw i8, ptr %.1198.i, i64 32 ; 2 uses
  %indvars.iv.next173.i.3 = add nuw nsw i64 %indvars.iv172.i, 4 ; 2 uses
  %exitcond176.not.i.3 = icmp eq i64 %indvars.iv.next173.i.3, %wide.trip.count175.i
  br i1 %exitcond176.not.i.3, label %._crit_edge101.i, label %vec.epilog.scalar.ph756, !llvm.loop !723

_ZN4ncnn3MatD2Ev.exit37:                          ; preds = %._crit_edge101.i, %._crit_edge87.i, %._crit_edge70.i, %bb.j, %._crit_edge85.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #12
  %.pre = load i32, ptr %i.b, align 4, !tbaa !100
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.g, %_ZN4ncnn3MatD2Ev.exit37
  %i.atm = phi i32 [ %.pre, %_ZN4ncnn3MatD2Ev.exit37 ], [ %i.as, %bb.g ], [ %i.as, %middle.block ], [ %i.as, %vec.epilog.middle.block ], [ %i.as, %.lr.ph ] ; 2 uses
  %indvars.iv.next164 = add nsw i64 %indvars.iv163, 1
  %i.atn = sext i32 %i.atm to i64
  %.not.not = icmp slt i64 %indvars.iv163, %i.atn
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
  %i.e = load i32, ptr %2, align 4, !tbaa !100    ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !100
  %i.h = load i32, ptr %0, align 4, !tbaa !100    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !100
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !100
  %i.k = load i32, ptr %i.a, align 4, !tbaa !100  ; 2 uses
  %.not136 = icmp sgt i32 %i.k, %i.j
  br i1 %.not136, label %._crit_edge140, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.m = load i32, ptr %i.l, align 8, !tbaa !122
  %.not39 = icmp eq i32 %i.m, 0
  %i.n = load i32, ptr %6, align 4, !tbaa !100    ; 2 uses
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
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !105, !noalias !778 ; 3 uses
  %i.ad = load i32, ptr %i.aa, align 8, !tbaa !112, !noalias !778
  %i.ae = load ptr, ptr %7, align 8, !tbaa !63, !noalias !778
  %i.af = sext i32 %i.ac to i64
  %i.ag = sext i32 %i.ad to i64
  %i.ah = mul nsw i64 %i.ag, %i.af                ; 6 uses
  %i.ai = load i32, ptr %i.z, align 8, !tbaa !95
  %i.aj = trunc i64 %i.ah to i32
  %i.ak = icmp sgt i32 %i.aj, 0
  %i.al = sext i32 %i.ai to i64
  %i.am = sext i32 %i.k to i64
  %i.an = add nsw i32 %i.j, 1
  %wide.trip.count161 = zext nneg i32 %i.n to i64
  %wide.trip.count = and i64 %i.ah, 2147483647    ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  %min.iters.check207 = icmp samesign ult i64 %wide.trip.count, 32
  %i.ao = and i64 %i.ah, 28
  %n.vec = and i64 %i.ah, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  %n.vec208 = and i64 %i.ah, 2147483644           ; 3 uses
  %cmp.n213 = icmp eq i64 %wide.trip.count, %n.vec208
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.us, %.lr.ph139.split.us
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %._crit_edge.us ], [ %i.am, %.lr.ph139.split.us ] ; 4 uses
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = load ptr, ptr %4, align 8, !tbaa !63
  %.idx = shl nsw i64 %indvars.iv163, 3
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %.idx
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !113
  br label %.noexc63.lr.ph.us

bb.e:                                             ; preds = %bb.c
  %i.as = load i16, ptr %5, align 2, !tbaa !120
  %i.at = zext i16 %i.as to i64                   ; 4 uses
  %10 = shl nuw nsw i64 %i.at, 16
  %11 = shl nuw nsw i64 %i.at, 32
  %12 = shl nuw i64 %i.at, 48
  %13 = or disjoint i64 %11, %10
  %14 = or disjoint i64 %13, %12
  %15 = or disjoint i64 %14, %i.at
  br label %.noexc63.lr.ph.us

.noexc63.lr.ph.us:                                ; preds = %bb.e, %bb.d
  %.037.us = phi i64 [ %i.ar, %bb.d ], [ %15, %bb.e ] ; 27 uses
  %broadcast.splatinsert480 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat481 = shufflevector <8 x i64> %broadcast.splatinsert480, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert497 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat498 = shufflevector <8 x i64> %broadcast.splatinsert497, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert448 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat449 = shufflevector <8 x i64> %broadcast.splatinsert448, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert465 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat466 = shufflevector <8 x i64> %broadcast.splatinsert465, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert416 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat417 = shufflevector <8 x i64> %broadcast.splatinsert416, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert433 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat434 = shufflevector <8 x i64> %broadcast.splatinsert433, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert384 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat385 = shufflevector <8 x i64> %broadcast.splatinsert384, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert401 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat402 = shufflevector <8 x i64> %broadcast.splatinsert401, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert352 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat353 = shufflevector <8 x i64> %broadcast.splatinsert352, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert369 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat370 = shufflevector <8 x i64> %broadcast.splatinsert369, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert320 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat321 = shufflevector <8 x i64> %broadcast.splatinsert320, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert337 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat338 = shufflevector <8 x i64> %broadcast.splatinsert337, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert250 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat251 = shufflevector <8 x i64> %broadcast.splatinsert250, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert267 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat268 = shufflevector <8 x i64> %broadcast.splatinsert267, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert219 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat220 = shufflevector <8 x i64> %broadcast.splatinsert219, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert235 = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat236 = shufflevector <8 x i64> %broadcast.splatinsert235, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert209 = insertelement <4 x i64> poison, i64 %.037.us, i64 0
  %broadcast.splat210 = shufflevector <4 x i64> %broadcast.splatinsert209, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %.noexc63.us

.noexc63.us:                                      ; preds = %.noexc63.lr.ph.us, %_ZN4ncnn3MatD2Ev.exit.us
  %indvars.iv158 = phi i64 [ 0, %.noexc63.lr.ph.us ], [ %indvars.iv.next159, %_ZN4ncnn3MatD2Ev.exit.us ] ; 3 uses
  %i.au = load i64, ptr %i.p, align 8, !tbaa !64, !noalias !778
  %i.av = mul i64 %i.au, %indvars.iv163
  %i.aw = load i64, ptr %i.q, align 8, !tbaa !98, !noalias !778 ; 2 uses
  %i.ax = mul i64 %i.av, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ax
  %i.az = mul i64 %i.ah, %indvars.iv158
  %i.ba = mul i64 %i.az, %i.aw
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ba ; 9 uses
  %i.bc = sub nsw i64 %indvars.iv158, %i.al       ; 3 uses
  %i.bd = icmp slt i64 %i.bc, 0
  br i1 %i.bd, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.noexc63.us
  %i.be = load i32, ptr %8, align 4, !tbaa !100
  %i.bf = sext i32 %i.be to i64
  %.not40.us = icmp slt i64 %i.bc, %i.bf
  br i1 %.not40.us, label %.noexc64.us, label %bb.g

.noexc64.us:                                      ; preds = %bb.f
  %i.bg = load i32, ptr %i.r, align 4, !tbaa !105, !noalias !779 ; 8 uses
  %i.bh = load i32, ptr %i.s, align 8, !tbaa !112, !noalias !779 ; 6 uses
  %i.bi = load ptr, ptr %9, align 8, !tbaa !63, !noalias !779
  %i.bj = load i64, ptr %i.t, align 8, !tbaa !64, !noalias !779
  %i.bk = mul i64 %i.bj, %indvars.iv163
  %i.bl = load i64, ptr %i.u, align 8, !tbaa !98, !noalias !779 ; 2 uses
  %i.bm = mul i64 %i.bk, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bm
  %i.bo = sext i32 %i.bg to i64
  %i.bp = sext i32 %i.bh to i64
  %i.bq = mul nsw i64 %i.bc, %i.bo
  %i.br = mul i64 %i.bq, %i.bp
  %i.bs = mul i64 %i.br, %i.bl
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bs
  %i.bu = load i32, ptr %i.v, align 8, !tbaa !91
  %i.bv = load i32, ptr %i.w, align 4, !tbaa !92
  %i.bw = load i32, ptr %i.x, align 8, !tbaa !93  ; 13 uses
  %i.bx = load i32, ptr %i.y, align 4, !tbaa !94  ; 13 uses
  %i.by = mul nsw i32 %i.bu, %i.ac                ; 5 uses
  %i.bz = mul i32 %i.bv, %i.ac                    ; 5 uses
  %i.ca = icmp sgt i32 %i.by, 0
  br i1 %i.ca, label %iter.check491, label %.preheader4.i.us

iter.check491:                                    ; preds = %.noexc64.us
  %i.cb = zext nneg i32 %i.by to i64              ; 5 uses
  %min.iters.check475 = icmp ult i32 %i.by, 8
  br i1 %min.iters.check475, label %.lr.ph.i.us.preheader, label %vector.main.loop.iter.check476

vector.main.loop.iter.check476:                   ; preds = %iter.check491
  %min.iters.check477 = icmp ult i32 %i.by, 32
  br i1 %min.iters.check477, label %vec.epilog.ph495, label %vector.ph478

vector.ph478:                                     ; preds = %vector.main.loop.iter.check476
  %i.cc = and i64 %i.cb, 24
  %n.vec479 = and i64 %i.cb, 2147483616           ; 5 uses
  %i.cd = trunc nuw nsw i64 %n.vec479 to i32
  %i.ce = shl nuw nsw i64 %n.vec479, 3
  %i.cf = getelementptr i8, ptr %i.bb, i64 %i.ce  ; 2 uses
  br label %vector.body482

vector.body482:                                   ; preds = %vector.body482, %vector.ph478
  %index483 = phi i64 [ 0, %vector.ph478 ], [ %index.next485, %vector.body482 ] ; 2 uses
  %i.cg = shl i64 %index483, 3
  %next.gep484 = getelementptr i8, ptr %i.bb, i64 %i.cg ; 4 uses
  %i.ch = getelementptr i8, ptr %next.gep484, i64 64
  %i.ci = getelementptr i8, ptr %next.gep484, i64 128
  %i.cj = getelementptr i8, ptr %next.gep484, i64 192
  store <8 x i64> %broadcast.splat481, ptr %next.gep484, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat481, ptr %i.ch, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat481, ptr %i.ci, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat481, ptr %i.cj, align 8, !tbaa !113
  %index.next485 = add nuw i64 %index483, 32      ; 2 uses
  %i.ck = icmp eq i64 %index.next485, %n.vec479
  br i1 %i.ck, label %middle.block486, label %vector.body482, !llvm.loop !746

middle.block486:                                  ; preds = %vector.body482
  %cmp.n487 = icmp eq i64 %n.vec479, %i.cb
  br i1 %cmp.n487, label %.preheader4.i.us, label %vec.epilog.iter.check493

vec.epilog.iter.check493:                         ; preds = %middle.block486
  %min.epilog.iters.check494 = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check494, label %.lr.ph.i.us.preheader, label %vec.epilog.ph495, !prof !117

vec.epilog.ph495:                                 ; preds = %vector.main.loop.iter.check476, %vec.epilog.iter.check493
  %vec.epilog.resume.val488 = phi i64 [ %n.vec479, %vec.epilog.iter.check493 ], [ 0, %vector.main.loop.iter.check476 ]
  %n.vec496 = and i64 %i.cb, 2147483640           ; 4 uses
  %i.cl = trunc nuw nsw i64 %n.vec496 to i32
  %i.cm = shl nuw nsw i64 %n.vec496, 3
  %i.cn = getelementptr i8, ptr %i.bb, i64 %i.cm  ; 2 uses
  br label %vec.epilog.vector.body499

vec.epilog.vector.body499:                        ; preds = %vec.epilog.vector.body499, %vec.epilog.ph495
  %index500 = phi i64 [ %vec.epilog.resume.val488, %vec.epilog.ph495 ], [ %index.next502, %vec.epilog.vector.body499 ] ; 2 uses
  %i.co = shl i64 %index500, 3
  %next.gep501 = getelementptr i8, ptr %i.bb, i64 %i.co
  store <8 x i64> %broadcast.splat498, ptr %next.gep501, align 8, !tbaa !113
  %index.next502 = add nuw i64 %index500, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next502, %n.vec496
  br i1 %i.cp, label %vec.epilog.middle.block503, label %vec.epilog.vector.body499, !llvm.loop !747

vec.epilog.middle.block503:                       ; preds = %vec.epilog.vector.body499
  %cmp.n504 = icmp eq i64 %n.vec496, %i.cb
  br i1 %cmp.n504, label %.preheader4.i.us, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %iter.check491, %vec.epilog.iter.check493, %vec.epilog.middle.block503
  %.0436.i.us.ph = phi i32 [ 0, %iter.check491 ], [ %i.cd, %vec.epilog.iter.check493 ], [ %i.cl, %vec.epilog.middle.block503 ]
  %.0445.i.us.ph = phi ptr [ %i.bb, %iter.check491 ], [ %i.cf, %vec.epilog.iter.check493 ], [ %i.cn, %vec.epilog.middle.block503 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader, %.lr.ph.i.us
  %.0436.i.us = phi i32 [ %i.cr, %.lr.ph.i.us ], [ %.0436.i.us.ph, %.lr.ph.i.us.preheader ]
  %.0445.i.us = phi ptr [ %i.cq, %.lr.ph.i.us ], [ %.0445.i.us.ph, %.lr.ph.i.us.preheader ] ; 2 uses
  store i64 %.037.us, ptr %.0445.i.us, align 8, !tbaa !113
  %i.cq = getelementptr inbounds nuw i8, ptr %.0445.i.us, i64 8 ; 2 uses
  %i.cr = add nuw nsw i32 %.0436.i.us, 1          ; 2 uses
  %exitcond.not.i.us = icmp eq i32 %i.cr, %i.by
  br i1 %exitcond.not.i.us, label %.preheader4.i.us, label %.lr.ph.i.us, !llvm.loop !748

.preheader4.i.us:                                 ; preds = %.lr.ph.i.us, %middle.block486, %vec.epilog.middle.block503, %.noexc64.us
  %.044.lcssa.i.us = phi ptr [ %i.bb, %.noexc64.us ], [ %i.cn, %vec.epilog.middle.block503 ], [ %i.cf, %middle.block486 ], [ %i.cq, %.lr.ph.i.us ] ; 6 uses
  %i.cs = icmp sgt i32 %i.bh, 0
  br i1 %i.cs, label %.preheader3.lr.ph.i.us, label %.preheader.i.us

.preheader3.lr.ph.i.us:                           ; preds = %.preheader4.i.us
  %i.ct = icmp sgt i32 %i.bw, 0                   ; 2 uses
  %i.cu = icmp sgt i32 %i.bg, 0
  %i.cv = icmp sgt i32 %i.bx, 0                   ; 3 uses
  br i1 %i.cu, label %.preheader3.us.i.us.preheader, label %.preheader3.lr.ph.split.i.us

.preheader3.us.i.us.preheader:                    ; preds = %.preheader3.lr.ph.i.us
  %i.cw = zext i32 %i.bx to i64                   ; 5 uses
  %i.cx = zext nneg i32 %i.bg to i64              ; 5 uses
  %i.cy = zext i32 %i.bw to i64                   ; 5 uses
  %min.iters.check315 = icmp ult i32 %i.bw, 8
  %min.iters.check317 = icmp ult i32 %i.bw, 32
  %i.cz = and i64 %i.cy, 24
  %n.vec319 = and i64 %i.cy, 2147483616           ; 5 uses
  %i.da = trunc nuw nsw i64 %n.vec319 to i32
  %i.db = shl nuw nsw i64 %n.vec319, 3
  %cmp.n327 = icmp eq i64 %n.vec319, %i.cy
  %min.epilog.iters.check334 = icmp eq i64 %i.cz, 0
  %n.vec336 = and i64 %i.cy, 2147483640           ; 4 uses
  %i.dc = trunc nuw nsw i64 %n.vec336 to i32
  %i.dd = shl nuw nsw i64 %n.vec336, 3
  %cmp.n344 = icmp eq i64 %n.vec336, %i.cy
  %min.iters.check279 = icmp ult i32 %i.bg, 8
  %min.iters.check281 = icmp ult i32 %i.bg, 32
  %i.de = and i64 %i.cx, 24
  %n.vec283 = and i64 %i.cx, 2147483616           ; 5 uses
  %i.df = trunc nuw nsw i64 %n.vec283 to i32
  %i.dg = shl nuw nsw i64 %n.vec283, 3            ; 2 uses
  %cmp.n293 = icmp eq i64 %n.vec283, %i.cx
  %min.epilog.iters.check301 = icmp eq i64 %i.de, 0
  %n.vec303 = and i64 %i.cx, 2147483640           ; 4 uses
  %i.dh = trunc nuw nsw i64 %n.vec303 to i32
  %i.di = shl nuw nsw i64 %n.vec303, 3            ; 2 uses
  %cmp.n311 = icmp eq i64 %n.vec303, %i.cx
  %min.iters.check245 = icmp ult i32 %i.bx, 8
  %min.iters.check247 = icmp ult i32 %i.bx, 32
  %i.dj = and i64 %i.cw, 24
  %n.vec249 = and i64 %i.cw, 2147483616           ; 5 uses
end_hunk_2
begin_hunk_3_@_ZNK4ncnn18Padding_x86_avx51212forward_int8ERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.11:bb.a
  %exitcond84.not.i = icmp eq i32 %i.jd, %i.cl
  br i1 %exitcond84.not.i, label %.preheader1.i, label %iter.check428, !llvm.loop !1

.preheader4.lr.ph.split.split.i:                  ; preds = %.preheader4.lr.ph.split.i
  br i1 %i.ds, label %.preheader4.us49.i.preheader, label %.preheader1.i

.preheader4.us49.i.preheader:                     ; preds = %.preheader4.lr.ph.split.split.i
  %i.je = zext nneg i32 %i.db to i64              ; 5 uses
  %min.iters.check444 = icmp ult i32 %i.db, 8
  %min.iters.check446 = icmp ult i32 %i.db, 32
  %i.jf = and i64 %i.je, 24
  %n.vec448 = and i64 %i.je, 2147483616           ; 5 uses
  %i.jg = trunc nuw nsw i64 %n.vec448 to i32
  %i.jh = shl nuw nsw i64 %n.vec448, 3
  %cmp.n456 = icmp eq i64 %n.vec448, %i.je
  %min.epilog.iters.check463 = icmp eq i64 %i.jf, 0
  %n.vec465 = and i64 %i.je, 2147483640           ; 4 uses
  %i.ji = trunc nuw nsw i64 %n.vec465 to i32
  %i.jj = shl nuw nsw i64 %n.vec465, 3
  %cmp.n473 = icmp eq i64 %n.vec465, %i.je
  br label %iter.check460

iter.check460:                                    ; preds = %.preheader4.us49.i.preheader, %._crit_edge.us55.i
  %.03926.us50.i = phi i32 [ %i.jv, %._crit_edge.us55.i ], [ 0, %.preheader4.us49.i.preheader ]
  %.225.us51.i = phi ptr [ %.lcssa199, %._crit_edge.us55.i ], [ %.042.lcssa.i, %.preheader4.us49.i.preheader ] ; 5 uses
  br i1 %min.iters.check444, label %vec.epilog.scalar.ph461.preheader, label %vector.main.loop.iter.check445

vector.main.loop.iter.check445:                   ; preds = %iter.check460
  br i1 %min.iters.check446, label %vec.epilog.ph464, label %vector.ph447

vector.ph447:                                     ; preds = %vector.main.loop.iter.check445
  %i.jk = getelementptr i8, ptr %.225.us51.i, i64 %i.jh ; 2 uses
  br label %vector.body451

vector.body451:                                   ; preds = %vector.body451, %vector.ph447
  %index452 = phi i64 [ 0, %vector.ph447 ], [ %index.next454, %vector.body451 ] ; 2 uses
  %i.jl = shl i64 %index452, 3
  %next.gep453 = getelementptr i8, ptr %.225.us51.i, i64 %i.jl ; 4 uses
  %i.jm = getelementptr i8, ptr %next.gep453, i64 64
  %i.jn = getelementptr i8, ptr %next.gep453, i64 128
  %i.jo = getelementptr i8, ptr %next.gep453, i64 192
  store <8 x i64> %broadcast.splat450, ptr %next.gep453, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat450, ptr %i.jm, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat450, ptr %i.jn, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat450, ptr %i.jo, align 8, !tbaa !113
  %index.next454 = add nuw i64 %index452, 32      ; 2 uses
  %i.jp = icmp eq i64 %index.next454, %n.vec448
  br i1 %i.jp, label %middle.block455, label %vector.body451, !llvm.loop !981

middle.block455:                                  ; preds = %vector.body451
  br i1 %cmp.n456, label %._crit_edge.us55.i, label %vec.epilog.iter.check462

vec.epilog.iter.check462:                         ; preds = %middle.block455
  br i1 %min.epilog.iters.check463, label %vec.epilog.scalar.ph461.preheader, label %vec.epilog.ph464, !prof !117

vec.epilog.ph464:                                 ; preds = %vector.main.loop.iter.check445, %vec.epilog.iter.check462
  %vec.epilog.resume.val457 = phi i64 [ %n.vec448, %vec.epilog.iter.check462 ], [ 0, %vector.main.loop.iter.check445 ]
  %i.jq = getelementptr i8, ptr %.225.us51.i, i64 %i.jj ; 2 uses
  br label %vec.epilog.vector.body468

vec.epilog.vector.body468:                        ; preds = %vec.epilog.vector.body468, %vec.epilog.ph464
  %index469 = phi i64 [ %vec.epilog.resume.val457, %vec.epilog.ph464 ], [ %index.next471, %vec.epilog.vector.body468 ] ; 2 uses
  %i.jr = shl i64 %index469, 3
  %next.gep470 = getelementptr i8, ptr %.225.us51.i, i64 %i.jr
  store <8 x i64> %broadcast.splat467, ptr %next.gep470, align 8, !tbaa !113
  %index.next471 = add nuw i64 %index469, 8       ; 2 uses
  %i.js = icmp eq i64 %index.next471, %n.vec465
  br i1 %i.js, label %vec.epilog.middle.block472, label %vec.epilog.vector.body468, !llvm.loop !982

vec.epilog.middle.block472:                       ; preds = %vec.epilog.vector.body468
  br i1 %cmp.n473, label %._crit_edge.us55.i, label %vec.epilog.scalar.ph461.preheader

vec.epilog.scalar.ph461.preheader:                ; preds = %iter.check460, %vec.epilog.iter.check462, %vec.epilog.middle.block472
  %.03621.us53.i.ph = phi i32 [ 0, %iter.check460 ], [ %i.jg, %vec.epilog.iter.check462 ], [ %i.ji, %vec.epilog.middle.block472 ]
  %.520.us54.i.ph = phi ptr [ %.225.us51.i, %iter.check460 ], [ %i.jk, %vec.epilog.iter.check462 ], [ %i.jq, %vec.epilog.middle.block472 ]
  br label %vec.epilog.scalar.ph461

vec.epilog.scalar.ph461:                          ; preds = %vec.epilog.scalar.ph461.preheader, %vec.epilog.scalar.ph461
  %.03621.us53.i = phi i32 [ %i.ju, %vec.epilog.scalar.ph461 ], [ %.03621.us53.i.ph, %vec.epilog.scalar.ph461.preheader ]
  %.520.us54.i = phi ptr [ %i.jt, %vec.epilog.scalar.ph461 ], [ %.520.us54.i.ph, %vec.epilog.scalar.ph461.preheader ] ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.520.us54.i, i64 8 ; 2 uses
  store i64 %i.ab, ptr %.520.us54.i, align 8, !tbaa !113
  %i.ju = add nuw nsw i32 %.03621.us53.i, 1       ; 2 uses
  %exitcond81.not.i = icmp eq i32 %i.ju, %i.db
  br i1 %exitcond81.not.i, label %._crit_edge.us55.i, label %vec.epilog.scalar.ph461, !llvm.loop !983

._crit_edge.us55.i:                               ; preds = %vec.epilog.scalar.ph461, %vec.epilog.middle.block472, %middle.block455
  %.lcssa199 = phi ptr [ %i.jq, %vec.epilog.middle.block472 ], [ %i.jk, %middle.block455 ], [ %i.jt, %vec.epilog.scalar.ph461 ] ; 2 uses
  %i.jv = add nuw nsw i32 %.03926.us50.i, 1       ; 2 uses
  %exitcond82.not.i = icmp eq i32 %i.jv, %i.cl
  br i1 %exitcond82.not.i, label %.preheader1.i, label %iter.check460, !llvm.loop !1

.preheader1.i:                                    ; preds = %._crit_edge.us55.i, %..preheader3_crit_edge.us37.i, %._crit_edge.us44.us.i, %._crit_edge.us29.i, %.preheader4.lr.ph.split.split.i, %.preheader5.i
  %.2.lcssa.i = phi ptr [ %.042.lcssa.i, %.preheader5.i ], [ %.lcssa200, %..preheader3_crit_edge.us37.i ], [ %.5.lcssa.us.i, %._crit_edge.us29.i ], [ %.042.lcssa.i, %.preheader4.lr.ph.split.split.i ], [ %.lcssa202, %._crit_edge.us44.us.i ], [ %.lcssa199, %._crit_edge.us55.i ]
  %i.jw = icmp sgt i32 %i.cz, 0
  %or.cond.i = select i1 %i.jw, i1 %i.ay, i1 false
  br i1 %or.cond.i, label %iter.check230, label %_ZN4ncnn3MatD2Ev.exit

iter.check230:                                    ; preds = %.preheader1.i, %._crit_edge.i
  %.03564.i = phi i32 [ %i.kg, %._crit_edge.i ], [ 0, %.preheader1.i ]
  %.663.i = phi ptr [ %.lcssa207, %._crit_edge.i ], [ %.2.lcssa.i, %.preheader1.i ] ; 5 uses
  br i1 %min.iters.check215, label %vec.epilog.scalar.ph231.preheader, label %vector.main.loop.iter.check216

vector.main.loop.iter.check216:                   ; preds = %iter.check230
  br i1 %min.iters.check217, label %vec.epilog.ph234, label %vector.ph218

vector.ph218:                                     ; preds = %vector.main.loop.iter.check216
  %i.jx = getelementptr i8, ptr %.663.i, i64 %i.bm ; 2 uses
  br label %vector.body222

vector.body222:                                   ; preds = %vector.body222, %vector.ph218
  %index223 = phi i64 [ 0, %vector.ph218 ], [ %index.next224, %vector.body222 ] ; 2 uses
  %i.jy = shl i64 %index223, 3
  %next.gep = getelementptr i8, ptr %.663.i, i64 %i.jy ; 4 uses
  %i.jz = getelementptr i8, ptr %next.gep, i64 64
  %i.ka = getelementptr i8, ptr %next.gep, i64 128
  %i.kb = getelementptr i8, ptr %next.gep, i64 192
  store <8 x i64> %broadcast.splat221, ptr %next.gep, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat221, ptr %i.jz, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat221, ptr %i.ka, align 8, !tbaa !113
  store <8 x i64> %broadcast.splat221, ptr %i.kb, align 8, !tbaa !113
  %index.next224 = add nuw i64 %index223, 32      ; 2 uses
  %i.kc = icmp eq i64 %index.next224, %n.vec219
  br i1 %i.kc, label %middle.block225, label %vector.body222, !llvm.loop !984

middle.block225:                                  ; preds = %vector.body222
  br i1 %cmp.n226, label %._crit_edge.i, label %vec.epilog.iter.check232

vec.epilog.iter.check232:                         ; preds = %middle.block225
  br i1 %min.epilog.iters.check233, label %vec.epilog.scalar.ph231.preheader, label %vec.epilog.ph234, !prof !117

vec.epilog.ph234:                                 ; preds = %vector.main.loop.iter.check216, %vec.epilog.iter.check232
  %vec.epilog.resume.val227 = phi i64 [ %n.vec219, %vec.epilog.iter.check232 ], [ 0, %vector.main.loop.iter.check216 ]
  %i.kd = getelementptr i8, ptr %.663.i, i64 %i.bo ; 2 uses
  br label %vec.epilog.vector.body238

vec.epilog.vector.body238:                        ; preds = %vec.epilog.vector.body238, %vec.epilog.ph234
  %index239 = phi i64 [ %vec.epilog.resume.val227, %vec.epilog.ph234 ], [ %index.next241, %vec.epilog.vector.body238 ] ; 2 uses
  %i.ke = shl i64 %index239, 3
  %next.gep240 = getelementptr i8, ptr %.663.i, i64 %i.ke
  store <8 x i64> %broadcast.splat237, ptr %next.gep240, align 8, !tbaa !113
  %index.next241 = add nuw i64 %index239, 8       ; 2 uses
  %i.kf = icmp eq i64 %index.next241, %n.vec235
  br i1 %i.kf, label %vec.epilog.middle.block242, label %vec.epilog.vector.body238, !llvm.loop !985

vec.epilog.middle.block242:                       ; preds = %vec.epilog.vector.body238
  br i1 %cmp.n243, label %._crit_edge.i, label %vec.epilog.scalar.ph231.preheader

vec.epilog.scalar.ph231.preheader:                ; preds = %iter.check230, %vec.epilog.iter.check232, %vec.epilog.middle.block242
  %.062.i.ph = phi i32 [ 0, %iter.check230 ], [ %i.bl, %vec.epilog.iter.check232 ], [ %i.bn, %vec.epilog.middle.block242 ]
  %.761.i.ph = phi ptr [ %.663.i, %iter.check230 ], [ %i.jx, %vec.epilog.iter.check232 ], [ %i.kd, %vec.epilog.middle.block242 ]
  br label %vec.epilog.scalar.ph231

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph231, %vec.epilog.middle.block242, %middle.block225
  %.lcssa207 = phi ptr [ %i.kd, %vec.epilog.middle.block242 ], [ %i.jx, %middle.block225 ], [ %i.kh, %vec.epilog.scalar.ph231 ]
  %i.kg = add nuw nsw i32 %.03564.i, 1            ; 2 uses
  %exitcond93.not.i = icmp eq i32 %i.kg, %i.cz
  br i1 %exitcond93.not.i, label %_ZN4ncnn3MatD2Ev.exit, label %iter.check230, !llvm.loop !44

vec.epilog.scalar.ph231:                          ; preds = %vec.epilog.scalar.ph231.preheader, %vec.epilog.scalar.ph231
  %.062.i = phi i32 [ %i.ki, %vec.epilog.scalar.ph231 ], [ %.062.i.ph, %vec.epilog.scalar.ph231.preheader ]
  %.761.i = phi ptr [ %i.kh, %vec.epilog.scalar.ph231 ], [ %.761.i.ph, %vec.epilog.scalar.ph231.preheader ] ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.761.i, i64 8 ; 2 uses
  store i64 %i.ab, ptr %.761.i, align 8, !tbaa !113
  %i.ki = add nuw nsw i32 %.062.i, 1              ; 2 uses
  %exitcond92.not.i = icmp eq i32 %i.ki, %i.ar
  br i1 %exitcond92.not.i, label %._crit_edge.i, label %vec.epilog.scalar.ph231, !llvm.loop !986

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge.i, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.d, %.preheader1.i
  %indvars.iv.next154 = add nuw nsw i64 %indvars.iv153, 1 ; 2 uses
  %exitcond157.not = icmp eq i64 %indvars.iv.next154, %wide.trip.count156
  br i1 %exitcond157.not, label %._crit_edge, label %.noexc60, !llvm.loop !987

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

!llvm.module.flags = !{!45, !46, !47}
!llvm.ident = !{!48}
!llvm.errno.tbaa = !{!53}

!0 = distinct !{null}
!1 = distinct !{!1, !114}
!2 = distinct !{!2, !114}
!3 = distinct !{!3, !114}
!4 = distinct !{!4, !114}
!5 = distinct !{!5, !114}
!6 = distinct !{!6, !114, !121}
!7 = distinct !{!7, !114}
!8 = distinct !{!8, !114}
!9 = distinct !{!9, !114}
!10 = distinct !{!10, !114}
!11 = distinct !{!11, !114}
!12 = distinct !{!12, !114, !121}
!13 = distinct !{!13, !114}
!14 = distinct !{!14, !114}
!15 = distinct !{!15, !114}
!16 = distinct !{!16, !114}
!17 = distinct !{!17, !114}
!18 = distinct !{!18, !114}
!19 = distinct !{!19, !114}
!20 = distinct !{!20, !114, !121}
!21 = distinct !{!21, !114}
!22 = distinct !{!22, !114}
!23 = distinct !{!23, !114}
!24 = distinct !{!24, !114}
!25 = distinct !{!25, !114}
!26 = distinct !{!26, !114}
!27 = distinct !{!27, !114}
!28 = distinct !{!28, !114, !121}
!29 = distinct !{!29, !114}
!30 = distinct !{!30, !114}
!31 = distinct !{!31, !114}
!32 = distinct !{!32, !114}
!33 = distinct !{!33, !114}
!34 = distinct !{!34, !114}
!35 = distinct !{!35, !114}
!36 = distinct !{!36, !114}
!37 = distinct !{!37, !114}
!38 = distinct !{!38, !114}
!39 = distinct !{!39, !114, !121}
!40 = distinct !{!40, !114}
!41 = distinct !{!41, !114}
!42 = distinct !{!42, !114}
!43 = distinct !{!43, !114}
!44 = distinct !{!44, !114}
!45 = !{i32 7, !"openmp", i32 51}
!46 = !{i32 8, !"PIC Level", i32 2}
!47 = !{i32 7, !"uwtable", i32 2}
!48 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!"omnipotent char", !49, i64 0}
!51 = !{!"int", !50, i64 0}
!52 = !{!"__libc_errno", !51, i64 0}
!53 = !{!52, !51, i64 0}
!54 = !{!"vtable pointer", !49, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"any pointer", !50, i64 0}
!57 = !{!"p1 int", !56, i64 0}
!58 = !{!"long", !50, i64 0}
!59 = !{!"p1 _ZTSN4ncnn9AllocatorE", !56, i64 0}
!60 = !{!"_ZTSN4ncnn3MatE", !56, i64 0, !57, i64 8, !58, i64 16, !51, i64 24, !59, i64 32, !51, i64 40, !51, i64 44, !51, i64 48, !51, i64 52, !51, i64 56, !58, i64 64}
!61 = !{!60, !57, i64 8}
!62 = !{!60, !59, i64 32}
!63 = !{!60, !56, i64 0}
!64 = !{!60, !58, i64 64}
!65 = !{!"bool", !50, i64 0}
!66 = !{!"p1 omnipotent char", !56, i64 0}
!67 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !66, i64 0}
!68 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !67, i64 0, !58, i64 8, !50, i64 16}
!69 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !57, i64 0, !57, i64 8, !57, i64 16}
!70 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !69, i64 0}
!71 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !70, i64 0}
!72 = !{!"_ZTSSt6vectorIiSaIiEE", !71, i64 0}
!73 = !{!"p1 _ZTSN4ncnn3MatE", !56, i64 0}
!74 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !73, i64 0, !73, i64 8, !73, i64 16}
!75 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !74, i64 0}
!76 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !75, i64 0}
!77 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !76, i64 0}
!78 = !{!"_ZTSN4ncnn5LayerE", !65, i64 8, !65, i64 9, !65, i64 10, !65, i64 11, !65, i64 12, !65, i64 13, !65, i64 14, !65, i64 15, !65, i64 16, !65, i64 17, !65, i64 18, !65, i64 19, !65, i64 20, !65, i64 21, !65, i64 22, !65, i64 23, !65, i64 24, !65, i64 25, !65, i64 26, !65, i64 27, !51, i64 28, !56, i64 32, !51, i64 40, !68, i64 48, !68, i64 80, !72, i64 112, !72, i64 136, !77, i64 160, !77, i64 184}
!79 = !{!78, !65, i64 13}
!80 = !{i8 0, i8 2}
!81 = !{}
!82 = !{!"float", !50, i64 0}
!83 = !{!"_ZTSN4ncnn7PaddingE", !78, i64 0, !51, i64 208, !51, i64 212, !51, i64 216, !51, i64 220, !51, i64 224, !82, i64 228, !51, i64 232, !51, i64 236, !51, i64 240, !60, i64 248}
!84 = !{!83, !82, i64 228}
!85 = !{!"short", !50, i64 0}
!86 = !{!"_ZTSN4ncnn18Padding_x86_avx512E", !83, i64 0, !85, i64 320, !60, i64 328, !85, i64 400, !60, i64 408}
!87 = !{!86, !85, i64 400}
!88 = !{!"_ZTSN4ncnn6OptionE", !65, i64 0, !65, i64 1, !65, i64 2, !65, i64 3, !51, i64 4, !59, i64 8, !59, i64 16, !51, i64 24, !65, i64 28, !65, i64 29, !65, i64 30, !65, i64 31, !65, i64 32, !65, i64 33, !65, i64 34, !65, i64 35, !65, i64 36, !65, i64 37, !65, i64 38, !65, i64 39, !51, i64 40, !65, i64 44, !65, i64 45, !65, i64 46, !65, i64 47, !50, i64 48, !65, i64 49, !65, i64 50, !65, i64 51, !65, i64 52, !65, i64 53, !65, i64 54, !65, i64 55, !65, i64 56, !65, i64 57, !65, i64 58, !65, i64 59, !65, i64 60, !65, i64 61, !65, i64 62, !65, i64 63}
!89 = !{!88, !65, i64 32}
!90 = !{!86, !85, i64 320}
!91 = !{!83, !51, i64 208}
!92 = !{!83, !51, i64 212}
!93 = !{!83, !51, i64 216}
!94 = !{!83, !51, i64 220}
!95 = !{!83, !51, i64 232}
!96 = !{!83, !51, i64 236}
!97 = !{!56, !56, i64 0}
!98 = !{!60, !58, i64 16}
!99 = !{!60, !51, i64 24}
!100 = !{!51, !51, i64 0}
!101 = !{!60, !51, i64 56}
!102 = !{!60, !51, i64 40}
!103 = !{!83, !51, i64 224}
!104 = !{!88, !59, i64 8}
!105 = !{!60, !51, i64 44}
!106 = !{!88, !51, i64 4}
!107 = !{!65, !65, i64 0}
!108 = !{!59, !59, i64 0}
!109 = !{!50, !50, i64 0}
!110 = !{i64 0, i64 1, !107, i64 1, i64 1, !107, i64 2, i64 1, !107, i64 3, i64 1, !107, i64 4, i64 4, !100, i64 8, i64 8, !108, i64 16, i64 8, !108, i64 24, i64 4, !100, i64 28, i64 1, !107, i64 29, i64 1, !107, i64 30, i64 1, !107, i64 31, i64 1, !107, i64 32, i64 1, !107, i64 33, i64 1, !107, i64 34, i64 1, !107, i64 35, i64 1, !107, i64 36, i64 1, !107, i64 37, i64 1, !107, i64 38, i64 1, !107, i64 39, i64 1, !107, i64 40, i64 4, !100, i64 44, i64 1, !107, i64 45, i64 1, !107, i64 46, i64 1, !107, i64 47, i64 1, !107, i64 48, i64 1, !109, i64 49, i64 1, !107, i64 50, i64 1, !107, i64 51, i64 1, !107, i64 52, i64 1, !107, i64 53, i64 1, !107, i64 54, i64 1, !107, i64 55, i64 1, !107, i64 56, i64 1, !107, i64 57, i64 1, !107, i64 58, i64 1, !107, i64 59, i64 1, !107, i64 60, i64 1, !107, i64 61, i64 1, !107, i64 62, i64 1, !107, i64 63, i64 1, !107}
!111 = !{!88, !59, i64 16}
!112 = !{!60, !51, i64 48}
!113 = !{!58, !58, i64 0}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!"llvm.loop.isvectorized", i32 1}
!116 = !{!"llvm.loop.unroll.runtime.disable"}
!117 = !{!"branch_weights", i32 8, i32 24}
!118 = !{!"llvm.loop.unroll.disable"}
!119 = !{!60, !51, i64 52}
!120 = !{!85, !85, i64 0}
!121 = !{!"llvm.loop.unswitch.partial.disable"}
!122 = !{!83, !51, i64 240}
!123 = !{i64 2, i64 -1, i64 -1, i1 true}
!124 = !{!123}
!125 = !{!"branch_weights", i32 4, i32 28}
!126 = distinct !{null}
!127 = distinct !{null, null}
!128 = !{!78, !65, i64 11}
!129 = !{!78, !65, i64 12}
!130 = distinct !{!130, !114, !115, !116}
!131 = distinct !{!131, !114, !115, !116}
!132 = distinct !{!132, !114, !116, !115}
!133 = distinct !{!133, !114, !115, !116}
!134 = distinct !{!134, !114, !115, !116}
!135 = distinct !{!135, !118}
!136 = distinct !{!136, !114, !115}
!137 = distinct !{!137, !114, !115, !116}
!138 = distinct !{!138, !114, !115, !116}
!139 = distinct !{!139, !114, !116, !115}
!140 = distinct !{!140, !114, !115, !116}
!141 = distinct !{!141, !114, !115, !116}
!142 = distinct !{!142, !114, !116, !115}
!143 = distinct !{!143, !114, !115, !116}
!144 = distinct !{!144, !114, !115, !116}
!145 = distinct !{!145, !118}
!146 = distinct !{!146, !114, !115}
!147 = distinct !{!147, !114, !115, !116}
!148 = distinct !{!148, !114, !115, !116}
!149 = distinct !{!149, !118}
!150 = distinct !{!150, !114, !115}
!151 = distinct !{!151, !114, !115, !116}
!152 = distinct !{!152, !114, !115, !116}
!153 = distinct !{!153, !114, !116, !115}
!154 = distinct !{!154, !114, !115, !116}
!155 = distinct !{!155, !114, !115, !116}
!156 = distinct !{!156, !118}
!157 = distinct !{!157, !114, !115}
!158 = distinct !{!158, !114, !115, !116}
!159 = distinct !{!159, !114, !115, !116}
!160 = distinct !{!160, !114, !116, !115}
!161 = distinct !{!161, !114, !115, !116}
!162 = distinct !{!162, !114, !115, !116}
!163 = distinct !{!163, !114, !116, !115}
!164 = distinct !{!164, !114, !115, !116}
!165 = distinct !{!165, !114, !115, !116}
end_hunk_3
