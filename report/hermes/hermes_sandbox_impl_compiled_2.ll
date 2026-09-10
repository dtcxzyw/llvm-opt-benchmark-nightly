Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/hermes_sandbox_impl_compiled_2?download=true
inline.NumInlined: 21302
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@w2c_hermes_hermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3A0x3AtoString0x28hermes0x3A0x3Avm0x3A0x3ARuntime0x260x2C0x20hermes0x3A0x3Avm0x3A0x3APseudoHandle0x3Chermes0x3A0x3Avm0x3A0x3ABigIntPrimitive0x3E0x2C0x20unsigned0x20char0x29:bb.a

bb.aw:                                            ; preds = %bb.au
  %i.ib = udiv i64 %.0.copyload.i3137.a, %i.cc    ; 2 uses
  %i.ic = zext i32 %.0.copyload.i3136.a to i64
  %.val3077 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %.val3077, i64 %i.ic
  store i64 %i.ib, ptr %i.id, align 1
  %.val2957 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ie = getelementptr inbounds nuw i8, ptr %.val2957, i64 %i.ck
  %.0.copyload.i3138 = load i32, ptr %i.ie, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3138) #7, !srcloc !19
  %i.if = add i32 %.0.copyload.i3138, 8
  %i.ig = lshr i64 %i.dt, 3
  %i.ih = trunc nuw nsw i64 %i.ig to i32
  %i.ii = and i32 %i.ih, 1073741816
  %i.ij = add nsw i32 %i.ii, -8
  %i.ik = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.if, i32 noundef 0, i32 noundef %i.ij) #7 ; 0 uses
  %i.il = mul i64 %i.ib, %i.cc                    ; 0 uses
  %.recomposed3419 = urem i64 %.0.copyload.i3137.a, %i.cc
  %.val3076 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.im = getelementptr inbounds nuw i8, ptr %.val3076, i64 %i.cm
  store i64 %.recomposed3419, ptr %i.im, align 1
  br label %bb.ef

bb.ax:                                            ; preds = %bb.at
  %i.in = load i32, ptr %i.a, align 8, !tbaa !17  ; 2 uses
  %i.io = add i32 %i.in, -512                     ; 7 uses
  store i32 %i.io, ptr %i.a, align 8, !tbaa !17
  %i.ip = shl nuw nsw i32 %i.ep, 1                ; 5 uses
  %i.iq = add nsw i32 %i.ip, -2                   ; 2 uses
  %i.ir = shl nsw i32 %i.iq, 1
  %i.is = add nsw i32 %i.ir, %i.cn
  %i.it = icmp ult i32 %i.is, 128
  %i.iu = shl nuw nsw i32 %i.ep, 3
  %i.iv = or disjoint i32 %i.iu, 4                ; 2 uses
  br i1 %i.it, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.iw = add i32 %i.io, %i.iv                    ; 2 uses
  %i.ix = add nuw nsw i32 %i.ip, 3                ; 2 uses
  %i.iy = shl nuw nsw i32 %i.ix, 2
  %i.iz = add i32 %i.io, %i.iy                    ; 2 uses
  br i1 %.not2864, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ja = add nuw nsw i32 %i.ix, %i.ip
  %i.jb = shl nuw nsw i32 %i.ja, 2
  %i.jc = add i32 %i.io, %i.jb
  br label %bb.bc

bb.ba:                                            ; preds = %bb.ax
  %i.jd = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.iv) #7 ; 2 uses
  %i.je = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 8) #7 ; 2 uses
  %i.jf = shl nuw nsw i32 %i.ep, 3
  %i.jg = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.jf) #7 ; 2 uses
  br i1 %.not2864, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jh = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef 8) #7
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.ay, %bb.bb, %bb.az
  %.02785 = phi i32 [ %i.iw, %bb.ay ], [ %i.iw, %bb.az ], [ %i.je, %bb.ba ], [ %i.je, %bb.bb ]
  %.02776 = phi i32 [ %i.io, %bb.ay ], [ %i.io, %bb.az ], [ %i.jd, %bb.ba ], [ %i.jd, %bb.bb ]
  %.02763 = phi i32 [ %i.iz, %bb.ay ], [ %i.iz, %bb.az ], [ %i.jg, %bb.ba ], [ %i.jg, %bb.bb ]
  %.1 = phi i32 [ 0, %bb.ay ], [ %i.jc, %bb.az ], [ 0, %bb.ba ], [ %i.jh, %bb.bb ] ; 11 uses
  %i.ji = shl nuw nsw i32 %i.ep, 3                ; 4 uses
  %i.jj = or disjoint i32 %i.ji, 4
  %i.jk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.02776, i32 noundef 0, i32 noundef %i.jj) #7 ; 21 uses
  %i.jl = and i32 %i.ep, 134217726                ; 4 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %bb.bc
  %indvars.iv3280 = phi i64 [ %indvars.iv.next3281, %bb.bd ], [ 0, %bb.bc ] ; 2 uses
  %i.jm = trunc nuw i64 %indvars.iv3280 to i32
  %i.jn = shl i32 %i.jm, 3                        ; 3 uses
  %i.jo = add i32 %i.jn, %i.jk
  %i.jp = add i32 %i.jn, %.0.copyload.i3135.a
  %i.jq = zext i32 %i.jp to i64
  %.val3045 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jr = getelementptr inbounds nuw i8, ptr %.val3045, i64 %i.jq
  %.0.copyload.i3140.a = load i64, ptr %i.jr, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3140.a) #7, !srcloc !22
  %i.js = zext i32 %i.jo to i64                   ; 2 uses
  %.val3102.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jt = trunc i64 %.0.copyload.i3140.a to i32
  %i.ju = getelementptr inbounds nuw i8, ptr %.val3102.a, i64 %i.js
  store i32 %i.jt, ptr %i.ju, align 1
  %i.jv = lshr i64 %.0.copyload.i3140.a, 32
  %.val3101 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.jw = trunc nuw i64 %i.jv to i32
  %i.jx = getelementptr inbounds nuw i8, ptr %.val3101, i64 %i.js
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  store i32 %i.jw, ptr %i.jy, align 1
  %i.jz = or disjoint i32 %i.jn, 8                ; 2 uses
  %i.ka = add i32 %i.jz, %i.jk
  %i.kb = add i32 %i.jz, %.0.copyload.i3135.a
  %i.kc = zext i32 %i.kb to i64
  %.val3044 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kd = getelementptr inbounds nuw i8, ptr %.val3044, i64 %i.kc
  %.0.copyload.i3141.a = load i64, ptr %i.kd, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3141.a) #7, !srcloc !22
  %i.ke = zext i32 %i.ka to i64                   ; 2 uses
  %.val3100 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kf = trunc i64 %.0.copyload.i3141.a to i32
  %i.kg = getelementptr inbounds nuw i8, ptr %.val3100, i64 %i.ke
  store i32 %i.kf, ptr %i.kg, align 1
  %i.kh = lshr i64 %.0.copyload.i3141.a, 32
  %.val3099 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ki = trunc nuw i64 %i.kh to i32
  %i.kj = getelementptr inbounds nuw i8, ptr %.val3099, i64 %i.ke
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 4
  store i32 %i.ki, ptr %i.kk, align 1
  %indvars.iv.next3281 = add nuw nsw i64 %indvars.iv3280, 2 ; 2 uses
  %indvars3282 = trunc i64 %indvars.iv.next3281 to i32
  %.not2866 = icmp eq i32 %i.jl, %indvars3282
  br i1 %.not2866, label %bb.be, label %bb.bd

bb.be:                                            ; preds = %bb.bd
  %i.kl = and i32 %i.ep, 1
  %.not2867 = icmp eq i32 %i.kl, 0                ; 2 uses
  br i1 %.not2867, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.km = shl nuw nsw i32 %i.jl, 3                ; 2 uses
  %i.kn = add i32 %i.km, %i.jk
  %i.ko = add i32 %i.km, %.0.copyload.i3135.a
  %i.kp = zext i32 %i.ko to i64
  %.val3043 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kq = getelementptr inbounds nuw i8, ptr %.val3043, i64 %i.kp
  %.0.copyload.i3142.a = load i64, ptr %i.kq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3142.a) #7, !srcloc !22
  %i.kr = zext i32 %i.kn to i64                   ; 2 uses
  %.val3098 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ks = trunc i64 %.0.copyload.i3142.a to i32
  %i.kt = getelementptr inbounds nuw i8, ptr %.val3098, i64 %i.kr
  store i32 %i.ks, ptr %i.kt, align 1
  %i.ku = lshr i64 %.0.copyload.i3142.a, 32
  %.val3097 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.kv = trunc nuw i64 %i.ku to i32
  %i.kw = getelementptr inbounds nuw i8, ptr %.val3097, i64 %i.kr
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  store i32 %i.kv, ptr %i.kx, align 1
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.ky = add i32 %i.jk, %i.ji
  %i.kz = zext i32 %i.ky to i64
  %.val3004 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.la = getelementptr inbounds nuw i8, ptr %.val3004, i64 %i.kz
  store i32 0, ptr %i.la, align 1
  %i.lb = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.02785, i32 noundef 0, i32 noundef 8) #7 ; 8 uses
  %.val3042 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lc = getelementptr inbounds nuw i8, ptr %.val3042, i64 %i.cv
  %.0.copyload.i3143.a = load i64, ptr %i.lc, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3143.a) #7, !srcloc !22
  %i.ld = zext i32 %i.lb to i64                   ; 4 uses
  %.val3096 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.le = trunc i64 %.0.copyload.i3143.a to i32
  %i.lf = getelementptr inbounds nuw i8, ptr %.val3096, i64 %i.ld
  store i32 %i.le, ptr %i.lf, align 1
  %i.lg = lshr i64 %.0.copyload.i3143.a, 32
  %.val3095 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lh = trunc nuw i64 %i.lg to i32
  %i.li = getelementptr inbounds nuw i8, ptr %.val3095, i64 %i.ld
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 4
  store i32 %i.lh, ptr %i.lj, align 1
  %i.lk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.02763, i32 noundef 0, i32 noundef %i.ji) #7 ; 10 uses
  br i1 %.not2864, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ll = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %.1, i32 noundef 0, i32 noundef 8) #7 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.lm = add i32 %i.lb, 4
  %i.ln = zext i32 %i.lm to i64
  %.val2955 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lo = getelementptr inbounds nuw i8, ptr %.val2955, i64 %i.ln
  %.0.copyload.i3144.a = load i32, ptr %i.lo, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3144.a) #7, !srcloc !19
  %.not2868 = icmp eq i32 %.0.copyload.i3144.a, 0
  br i1 %.not2868, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.lp = add nsw i32 %i.ip, -1
  %.val2955.1 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.lq = getelementptr inbounds nuw i8, ptr %.val2955.1, i64 %i.ld
  %.0.copyload.i3144.1 = load i32, ptr %i.lq, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3144.1) #7, !srcloc !19
  %.not2868.1 = icmp eq i32 %.0.copyload.i3144.1, 0
  br i1 %.not2868.1, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi
  %.12796 = phi i32 [ %i.iq, %bb.bi ], [ %i.ip, %bb.bk ], [ %i.lp, %bb.bj ] ; 3 uses
  %i.lr = phi i1 [ false, %bb.bi ], [ false, %bb.bk ], [ true, %bb.bj ]
  %.not2879 = phi i1 [ false, %bb.bi ], [ true, %bb.bk ], [ false, %bb.bj ] ; 4 uses
  %.12786 = phi i32 [ 2, %bb.bi ], [ 0, %bb.bk ], [ 1, %bb.bj ] ; 10 uses
  %i.ls = add nsw i32 %.12786, %.12796            ; 2 uses
  %.not2870 = icmp eq i32 %i.ls, 0
  br i1 %.not2870, label %.loopexit3233, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lt = sub nsw i32 0, %.12786
  %i.lu = zext i32 %i.ls to i64
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bo, %bb.bm
  %indvars.iv3286 = phi i64 [ %indvars.iv.next3287, %bb.bo ], [ %i.lu, %bb.bm ]
  %.22797 = phi i32 [ %i.lz, %bb.bo ], [ %.12796, %bb.bm ] ; 2 uses
  %indvars.iv.next3287 = add nsw i64 %indvars.iv3286, -1 ; 2 uses
  %indvars3288 = trunc i64 %indvars.iv.next3287 to i32 ; 2 uses
  %i.lv = shl i32 %indvars3288, 2
  %i.lw = add i32 %i.lv, %i.jk
  %i.lx = zext i32 %i.lw to i64
  %.val2954 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ly = getelementptr inbounds nuw i8, ptr %.val2954, i64 %i.lx
  %.0.copyload.i3145.a = load i32, ptr %i.ly, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3145.a) #7, !srcloc !19
  %.not2871 = icmp eq i32 %.0.copyload.i3145.a, 0
  br i1 %.not2871, label %bb.bo, label %.loopexit3233

bb.bo:                                            ; preds = %bb.bn
  %i.lz = add i32 %.22797, -1
  %.not2872 = icmp eq i32 %indvars3288, 0
  br i1 %.not2872, label %.loopexit3233, label %bb.bn

.loopexit3233:                                    ; preds = %bb.bo, %bb.bn, %bb.bl
  %.32798 = phi i32 [ %.12796, %bb.bl ], [ %i.lt, %bb.bo ], [ %.22797, %bb.bn ] ; 4 uses
  br i1 %i.lr, label %bb.bp, label %bb.cb

bb.bp:                                            ; preds = %.loopexit3233
  %i.ma = icmp sgt i32 %.32798, -1
  br i1 %i.ma, label %bb.bq, label %.loopexit3226.a

bb.bq:                                            ; preds = %bb.bp
  %.val2953 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mb = getelementptr inbounds nuw i8, ptr %.val2953, i64 %i.ld
  %.0.copyload.i3146.a = load i32, ptr %i.mb, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3146.a) #7, !srcloc !19
  %i.mc = zext i32 %.0.copyload.i3146.a to i64    ; 3 uses
  %i.md = icmp eq i32 %.0.copyload.i3146.a, 0
  %i.me = zext nneg i32 %.32798 to i64
  br label %bb.br

bb.br:                                            ; preds = %bb.ca, %bb.bq
  %indvars.iv3322 = phi i64 [ %indvars.iv.next3323, %bb.ca ], [ %i.me, %bb.bq ] ; 3 uses
  %.22787 = phi i32 [ %.32788, %bb.ca ], [ 0, %bb.bq ]
  %i.mf = zext i32 %.22787 to i64
  %i.mg = shl nuw i64 %i.mf, 32
  %i.mh = trunc nuw nsw i64 %indvars.iv3322 to i32
  %i.mi = shl i32 %i.mh, 2                        ; 5 uses
  %i.mj = add i32 %i.mi, %i.jk
  %i.mk = zext i32 %i.mj to i64
  %.val2952 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ml = getelementptr inbounds nuw i8, ptr %.val2952, i64 %i.mk
  %.0.copyload.i3147.a = load i32, ptr %i.ml, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3147.a) #7, !srcloc !19
  %i.mm = zext i32 %.0.copyload.i3147.a to i64
  %i.mn = or disjoint i64 %i.mg, %i.mm            ; 4 uses
  %.not2893.a = icmp eq i64 %i.mn, 0
  br i1 %.not2893.a, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.mo = add i32 %i.mi, %i.lk
  %i.mp = zext i32 %i.mo to i64
  %.val3003 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mq = getelementptr inbounds nuw i8, ptr %.val3003, i64 %i.mp
  store i32 0, ptr %i.mq, align 1
  br label %bb.ca

bb.bt:                                            ; preds = %bb.br
  %i.mr = icmp ult i64 %i.mn, %i.mc
  br i1 %i.mr, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ms = add i32 %i.mi, %i.lk
  %i.mt = zext i32 %i.ms to i64
  %.val3002 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.mu = getelementptr inbounds nuw i8, ptr %.val3002, i64 %i.mt
  store i32 0, ptr %i.mu, align 1
  br label %bb.ca

bb.bv:                                            ; preds = %bb.bt
  %i.mv = icmp eq i64 %i.mn, %i.mc
  br i1 %i.mv, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.mw = add i32 %i.mi, %i.lk
  %i.mx = zext i32 %i.mw to i64
  %.val3001 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.my = getelementptr inbounds nuw i8, ptr %.val3001, i64 %i.mx
  store i32 1, ptr %i.my, align 1
  br label %bb.ca

bb.bx:                                            ; preds = %bb.bv
  br i1 %i.md, label %bb.by, label %bb.bz, !prof !25

bb.by:                                            ; preds = %bb.bx
  tail call void @wasm_rt_trap(i32 noundef 3) #8
  unreachable

bb.bz:                                            ; preds = %bb.bx
  %i.mz = add i32 %i.mi, %i.lk
  %i.na = udiv i64 %i.mn, %i.mc
  %i.nb = trunc i64 %i.na to i32                  ; 2 uses
  %i.nc = zext i32 %i.mz to i64
  %.val3000 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nd = getelementptr inbounds nuw i8, ptr %.val3000, i64 %i.nc
  store i32 %i.nb, ptr %i.nd, align 1
  %i.ne = mul i32 %.0.copyload.i3146.a, %i.nb
  %i.nf = sub i32 %.0.copyload.i3147.a, %i.ne
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.bw, %bb.bu, %bb.bs
  %.32788 = phi i32 [ 0, %bb.bs ], [ %.0.copyload.i3147.a, %bb.bu ], [ 0, %bb.bw ], [ %i.nf, %bb.bz ] ; 2 uses
  %indvars.iv.next3323 = add nsw i64 %indvars.iv3322, -1
  %i.ng = icmp sgt i64 %indvars.iv3322, 0
  br i1 %i.ng, label %bb.br, label %.loopexit3226.a

.loopexit3226.a:                                  ; preds = %bb.ca, %bb.bp
  %.42789 = phi i32 [ 0, %bb.bp ], [ %.32788, %bb.ca ]
  %.not2894.a = icmp eq i32 %.1, 0
  br i1 %.not2894.a, label %.loopexit3228, label %.loopexit3228.sink.split

bb.cb:                                            ; preds = %.loopexit3233
  %i.nh = add i32 %.32798, %.12786                ; 5 uses
  %i.ni = add nsw i32 %.12786, -1                 ; 3 uses
  %i.nj = shl nsw i32 %i.ni, 2
  %i.nk = add i32 %i.nj, %i.lb
  %i.nl = zext i32 %i.nk to i64                   ; 2 uses
  %.val2951 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.nm = getelementptr inbounds nuw i8, ptr %.val2951, i64 %i.nl
  %.0.copyload.i3148.a = load i32, ptr %i.nm, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3148.a) #7, !srcloc !19
  %i.nn = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %.0.copyload.i3148.a, i1 false) ; 9 uses
  %.not2874 = icmp eq i32 %i.nn, 0                ; 2 uses
  br i1 %.not2874, label %.loopexit3229, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.not2875 = icmp eq i32 %i.nh, 0
  br i1 %.not2875, label %.loopexit3231, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.no = sub nuw nsw i32 32, %i.nn               ; 5 uses
  %i.np = add i32 %i.nh, -4
  %i.nq = icmp ult i32 %i.np, -3
  br i1 %i.nq, label %bb.ce, label %.loopexit3232

bb.ce:                                            ; preds = %bb.cd
  %i.nr = and i32 %i.nh, -4                       ; 2 uses
  %i.ns = and i32 %i.nn, 31                       ; 4 uses
  %i.nt = add i32 %i.jk, 4
  %i.nu = add i32 %i.jk, 8
  %i.nv = add i32 %i.jk, 12
  br label %bb.cf

bb.cf:                                            ; preds = %bb.cf, %bb.ce
  %indvars.iv3290 = phi i64 [ %indvars.iv.next3291, %bb.cf ], [ 0, %bb.ce ] ; 2 uses
  %.42811 = phi i32 [ %i.oz, %bb.cf ], [ 0, %bb.ce ]
  %i.nw = trunc nuw i64 %indvars.iv3290 to i32
  %i.nx = shl i32 %i.nw, 2                        ; 4 uses
  %i.ny = add i32 %i.nx, %i.jk
  %i.nz = zext i32 %i.ny to i64                   ; 2 uses
  %.val2950 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oa = getelementptr inbounds nuw i8, ptr %.val2950, i64 %i.nz
  %.0.copyload.i3149.a = load i32, ptr %i.oa, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3149.a) #7, !srcloc !19
  %i.ob = shl i32 %.0.copyload.i3149.a, %i.ns
  %i.oc = or i32 %i.ob, %.42811
  %.val2998 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.od = getelementptr inbounds nuw i8, ptr %.val2998, i64 %i.nz
  store i32 %i.oc, ptr %i.od, align 1
  %i.oe = add i32 %i.nt, %i.nx
  %i.of = zext i32 %i.oe to i64                   ; 2 uses
  %.val2949 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.og = getelementptr inbounds nuw i8, ptr %.val2949, i64 %i.of
  %.0.copyload.i3150.a = load i32, ptr %i.og, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3150.a) #7, !srcloc !19
  %i.oh = shl i32 %.0.copyload.i3150.a, %i.ns
  %i.oi = lshr i32 %.0.copyload.i3149.a, %i.no
  %i.oj = or i32 %i.oh, %i.oi
  %.val2997 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ok = getelementptr inbounds nuw i8, ptr %.val2997, i64 %i.of
  store i32 %i.oj, ptr %i.ok, align 1
  %i.ol = add i32 %i.nu, %i.nx
  %i.om = zext i32 %i.ol to i64                   ; 2 uses
  %.val2948 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.on = getelementptr inbounds nuw i8, ptr %.val2948, i64 %i.om
  %.0.copyload.i3151.a = load i32, ptr %i.on, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3151.a) #7, !srcloc !19
  %i.oo = shl i32 %.0.copyload.i3151.a, %i.ns
  %i.op = lshr i32 %.0.copyload.i3150.a, %i.no
  %i.oq = or i32 %i.oo, %i.op
  %.val2996 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.or = getelementptr inbounds nuw i8, ptr %.val2996, i64 %i.om
  store i32 %i.oq, ptr %i.or, align 1
  %i.os = add i32 %i.nv, %i.nx
  %i.ot = zext i32 %i.os to i64                   ; 2 uses
  %.val2947 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ou = getelementptr inbounds nuw i8, ptr %.val2947, i64 %i.ot
  %.0.copyload.i3152.a = load i32, ptr %i.ou, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3152.a) #7, !srcloc !19
  %i.ov = shl i32 %.0.copyload.i3152.a, %i.ns
  %i.ow = lshr i32 %.0.copyload.i3151.a, %i.no
  %i.ox = or i32 %i.ov, %i.ow
  %.val2995 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.oy = getelementptr inbounds nuw i8, ptr %.val2995, i64 %i.ot
  store i32 %i.ox, ptr %i.oy, align 1
  %indvars.iv.next3291 = add nuw nsw i64 %indvars.iv3290, 4 ; 2 uses
  %indvars3294 = trunc i64 %indvars.iv.next3291 to i32
  %i.oz = lshr i32 %.0.copyload.i3152.a, %i.no    ; 2 uses
  %.not2876 = icmp eq i32 %i.nr, %indvars3294
  br i1 %.not2876, label %.loopexit3232.loopexit, label %bb.cf

.loopexit3232.loopexit:                           ; preds = %bb.cf
  %i.pa = zext i32 %i.nr to i64
  br label %.loopexit3232

.loopexit3232:                                    ; preds = %.loopexit3232.loopexit, %bb.cd
  %.52812 = phi i32 [ 0, %bb.cd ], [ %i.oz, %.loopexit3232.loopexit ] ; 2 uses
  %.4 = phi i64 [ 0, %bb.cd ], [ %i.pa, %.loopexit3232.loopexit ]
  %i.pb = and i32 %i.nh, 3                        ; 2 uses
  %.not2877 = icmp eq i32 %i.pb, 0
  br i1 %.not2877, label %.loopexit3231, label %.preheader3230

.preheader3230:                                   ; preds = %.loopexit3232
  %i.pc = and i32 %i.nn, 31
  br label %bb.cg

bb.cg:                                            ; preds = %.preheader3230, %bb.cg
  %indvars.iv3296 = phi i64 [ %.4, %.preheader3230 ], [ %indvars.iv.next3297, %bb.cg ] ; 2 uses
  %.62813 = phi i32 [ %.52812, %.preheader3230 ], [ %i.pl, %bb.cg ]
  %.22778 = phi i32 [ 0, %.preheader3230 ], [ %i.pm, %bb.cg ]
  %i.pd = trunc nuw i64 %indvars.iv3296 to i32
  %i.pe = shl i32 %i.pd, 2
  %i.pf = add i32 %i.pe, %i.jk
  %i.pg = zext i32 %i.pf to i64                   ; 2 uses
  %.val2946 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ph = getelementptr inbounds nuw i8, ptr %.val2946, i64 %i.pg
  %.0.copyload.i3153.a = load i32, ptr %i.ph, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3153.a) #7, !srcloc !19
  %i.pi = shl i32 %.0.copyload.i3153.a, %i.pc
  %i.pj = or i32 %i.pi, %.62813
  %.val2994 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pk = getelementptr inbounds nuw i8, ptr %.val2994, i64 %i.pg
  store i32 %i.pj, ptr %i.pk, align 1
  %indvars.iv.next3297 = add nuw nsw i64 %indvars.iv3296, 1
  %i.pl = lshr i32 %.0.copyload.i3153.a, %i.no    ; 2 uses
  %i.pm = add nuw nsw i32 %.22778, 1              ; 2 uses
  %.not2878 = icmp eq i32 %i.pm, %i.pb
  br i1 %.not2878, label %.loopexit3231, label %bb.cg

.loopexit3231:                                    ; preds = %bb.cg, %.loopexit3232, %bb.cc
  %.72814 = phi i32 [ 0, %bb.cc ], [ %.52812, %.loopexit3232 ], [ %i.pl, %bb.cg ] ; 2 uses
  br i1 %.not2879, label %.loopexit3229, label %bb.ch

bb.ch:                                            ; preds = %.loopexit3231
  %i.pn = sub nsw i32 0, %i.nn
  %i.po = and i32 %i.nn, 31
  %i.pp = and i32 %i.pn, 31
  %wide.trip.count = zext nneg i32 %.12786 to i64
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.ci
  %indvars.iv3300 = phi i64 [ 0, %bb.ch ], [ %indvars.iv.next3301, %bb.ci ] ; 2 uses
  %.52781 = phi i32 [ 0, %bb.ch ], [ %i.px, %bb.ci ]
  %indvars.iv3300.tr = trunc nuw nsw i64 %indvars.iv3300 to i32
  %i.pq = shl nuw nsw i32 %indvars.iv3300.tr, 2
  %i.pr = add i32 %i.pq, %i.lb
  %i.ps = zext i32 %i.pr to i64                   ; 2 uses
  %.val2945 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pt = getelementptr inbounds nuw i8, ptr %.val2945, i64 %i.ps
  %.0.copyload.i3154.a = load i32, ptr %i.pt, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3154.a) #7, !srcloc !19
  %i.pu = shl i32 %.0.copyload.i3154.a, %i.po
  %i.pv = or i32 %i.pu, %.52781
  %.val2993 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.pw = getelementptr inbounds nuw i8, ptr %.val2993, i64 %i.ps
  store i32 %i.pv, ptr %i.pw, align 1
  %indvars.iv.next3301 = add nuw nsw i64 %indvars.iv3300, 1 ; 2 uses
  %i.px = lshr i32 %.0.copyload.i3154.a, %i.pp
  %exitcond = icmp eq i64 %indvars.iv.next3301, %wide.trip.count
  br i1 %exitcond, label %.loopexit3229, label %bb.ci

.loopexit3229:                                    ; preds = %bb.ci, %.loopexit3231, %bb.cb
  %.82815 = phi i32 [ 0, %bb.cb ], [ %.72814, %.loopexit3231 ], [ %.72814, %bb.ci ]
  %i.py = shl i32 %i.nh, 2
  %i.pz = add i32 %i.py, %i.jk
  %i.qa = zext i32 %i.pz to i64
  %.val2992 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qb = getelementptr inbounds nuw i8, ptr %.val2992, i64 %i.qa
  store i32 %.82815, ptr %i.qb, align 1
  %i.qc = shl nuw nsw i32 %.12786, 2
  %i.qd = add i32 %i.lb, -8
  %i.qe = add i32 %i.qd, %i.qc
  %i.qf = zext i32 %i.qe to i64                   ; 2 uses
  %i.qg = zext nneg i32 %.12786 to i64            ; 2 uses
  %i.qh = zext i32 %.32798 to i64
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cx, %.loopexit3229
  %indvars.iv3314 = phi i64 [ %indvars.iv.next3315, %bb.cx ], [ %i.qh, %.loopexit3229 ] ; 2 uses
  %i.qi = trunc nuw i64 %indvars.iv3314 to i32    ; 6 uses
  %i.qj = add i32 %.12786, %i.qi
  %i.qk = shl i32 %i.qj, 2
  %i.ql = add i32 %i.qk, %i.jk                    ; 4 uses
  %i.qm = add i32 %i.ql, -4
  %i.qn = zext i32 %i.qm to i64
  %.val3041 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qo = getelementptr inbounds nuw i8, ptr %.val3041, i64 %i.qn
  %.0.copyload.i3155.a = load i64, ptr %i.qo, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3155.a) #7, !srcloc !22
  %.val3109 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qp = getelementptr inbounds nuw i8, ptr %.val3109, i64 %i.nl
  %.0.copyload.i3156.a = load i32, ptr %i.qp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3156.a) #7, !srcloc !38
  %i.qq = zext i32 %.0.copyload.i3156.a to i64    ; 4 uses
  %i.qr = icmp eq i32 %.0.copyload.i3156.a, 0
  br i1 %i.qr, label %bb.ck, label %bb.cl, !prof !25

bb.ck:                                            ; preds = %bb.cj
  tail call void @wasm_rt_trap(i32 noundef 3) #8
  unreachable

bb.cl:                                            ; preds = %bb.cj
  %i.qs = udiv i64 %.0.copyload.i3155.a, %i.qq    ; 6 uses
  %i.qt = mul i64 %i.qs, %i.qq                    ; 0 uses
  %.recomposed3420 = urem i64 %.0.copyload.i3155.a, %i.qq ; 2 uses
  %i.qu = icmp eq i64 %i.qs, 4294967296
  br i1 %i.qu, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %.val3108 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.qv = getelementptr inbounds nuw i8, ptr %.val3108, i64 %i.qf
  %.0.copyload.i3157.a = load i32, ptr %i.qv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3157.a) #7, !srcloc !38
  %i.qw = zext i32 %.0.copyload.i3157.a to i64
  %i.qx = mul i64 %i.qs, %i.qw
  %i.qy = add i32 %i.ql, -8
  %i.qz = zext i32 %i.qy to i64
  %.val3107 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ra = getelementptr inbounds nuw i8, ptr %.val3107, i64 %i.qz
  %.0.copyload.i3158.a = load i32, ptr %i.ra, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3158.a) #7, !srcloc !38
  %i.rb = zext i32 %.0.copyload.i3158.a to i64
  %i.rc = shl i64 %.recomposed3420, 32
  %i.rd = or disjoint i64 %i.rc, %i.rb
  %i.re = icmp ugt i64 %i.qx, %i.rd
  br i1 %i.re, label %bb.cn, label %bb.cr

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.rf = add i64 %i.qs, -1                       ; 4 uses
  %i.rg = add i64 %.recomposed3420, %i.qq         ; 2 uses
  %i.rh = icmp ugt i64 %i.rg, 4294967295
  br i1 %i.rh, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.not2881 = icmp eq i64 %i.rf, 4294967296
  br i1 %.not2881, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.val3106 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ri = getelementptr inbounds nuw i8, ptr %.val3106, i64 %i.qf
  %.0.copyload.i3159.a = load i32, ptr %i.ri, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3159.a) #7, !srcloc !38
  %i.rj = zext i32 %.0.copyload.i3159.a to i64
  %i.rk = mul i64 %i.rf, %i.rj
  %i.rl = add i32 %i.ql, -8
  %i.rm = zext i32 %i.rl to i64
  %.val3105 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rn = getelementptr inbounds nuw i8, ptr %.val3105, i64 %i.rm
  %.0.copyload.i3160.a = load i32, ptr %i.rn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3160.a) #7, !srcloc !38
  %i.ro = zext i32 %.0.copyload.i3160.a to i64
  %i.rp = shl nuw i64 %i.rg, 32
  %i.rq = or disjoint i64 %i.rp, %i.ro
  %.not2882 = icmp ugt i64 %i.rk, %i.rq
  br i1 %.not2882, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.rr = add i64 %i.qs, -2
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cm, %bb.cp, %bb.cn, %bb.cq
  %.02760 = phi i64 [ %i.rf, %bb.cn ], [ %i.rf, %bb.cp ], [ %i.rr, %bb.cq ], [ %i.qs, %bb.cm ] ; 3 uses
  br i1 %.not2879, label %bb.cw, label %.preheader3223

.preheader3223:                                   ; preds = %bb.cr, %.preheader3223
  %indvars.iv3306 = phi i64 [ %indvars.iv.next3307, %.preheader3223 ], [ 0, %bb.cr ] ; 3 uses
  %.02759 = phi i64 [ %i.sn, %.preheader3223 ], [ 0, %bb.cr ]
  %i.rs = trunc nuw nsw i64 %indvars.iv3306 to i32
  %i.rt = add i32 %i.rs, %i.qi
  %i.ru = shl i32 %i.rt, 2
  %i.rv = add i32 %i.ru, %i.jk
  %i.rw = zext i32 %i.rv to i64                   ; 2 uses
  %.val3104 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.rx = getelementptr inbounds nuw i8, ptr %.val3104, i64 %i.rw
  %.0.copyload.i3161.a = load i32, ptr %i.rx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3161.a) #7, !srcloc !38
  %i.ry = zext i32 %.0.copyload.i3161.a to i64
  %indvars.iv3306.tr = trunc nuw nsw i64 %indvars.iv3306 to i32
  %i.rz = shl nuw nsw i32 %indvars.iv3306.tr, 2
  %i.sa = add i32 %i.rz, %i.lb
  %i.sb = zext i32 %i.sa to i64
  %.val3103 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sc = getelementptr inbounds nuw i8, ptr %.val3103, i64 %i.sb
  %.0.copyload.i3162.a = load i32, ptr %i.sc, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3162.a) #7, !srcloc !38
  %i.sd = zext i32 %.0.copyload.i3162.a to i64
  %i.se = mul i64 %.02760, %i.sd                  ; 2 uses
  %i.sf = and i64 %i.se, 4294967295
  %i.sg = add nuw nsw i64 %.02759, %i.sf
  %i.sh = sub nsw i64 %i.ry, %i.sg                ; 2 uses
  %.val3094 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.si = trunc i64 %i.sh to i32
  %i.sj = getelementptr inbounds nuw i8, ptr %.val3094, i64 %i.rw
  store i32 %i.si, ptr %i.sj, align 1
  %i.sk = lshr i64 %i.se, 32
  %i.sl = lshr i64 %i.sh, 32
  %i.sm = sub nsw i64 %i.sk, %i.sl                ; 2 uses
  %i.sn = and i64 %i.sm, 4294967295               ; 2 uses
  %indvars.iv.next3307 = add nuw nsw i64 %indvars.iv3306, 1 ; 2 uses
  %.not2884 = icmp eq i64 %indvars.iv.next3307, %i.qg
  br i1 %.not2884, label %bb.cs, label %.preheader3223

bb.cs:                                            ; preds = %.preheader3223
  %i.so = zext i32 %i.ql to i64                   ; 4 uses
  %.val2944 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sp = getelementptr inbounds nuw i8, ptr %.val2944, i64 %i.so
  %.0.copyload.i3163.a = load i32, ptr %i.sp, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3163.a) #7, !srcloc !19
  %i.sq = trunc i64 %i.sm to i32
  %i.sr = sub i32 %.0.copyload.i3163.a, %i.sq
  %.val2991 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ss = getelementptr inbounds nuw i8, ptr %.val2991, i64 %i.so
  store i32 %i.sr, ptr %i.ss, align 1
  %i.st = shl i32 %i.qi, 2
  %i.su = add i32 %i.st, %i.lk
  %i.sv = trunc i64 %.02760 to i32                ; 2 uses
  %i.sw = zext i32 %i.su to i64                   ; 2 uses
  %.val2990 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.sx = getelementptr inbounds nuw i8, ptr %.val2990, i64 %i.sw
  store i32 %i.sv, ptr %i.sx, align 1
  %i.sy = zext i32 %.0.copyload.i3163.a to i64
  %.not2885 = icmp samesign ugt i64 %i.sn, %i.sy
  br i1 %.not2885, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %i.sz = add i32 %i.sv, -1
  %.val2989 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ta = getelementptr inbounds nuw i8, ptr %.val2989, i64 %i.sw
  store i32 %i.sz, ptr %i.ta, align 1
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cu, %bb.ct
  %indvars.iv3310 = phi i64 [ %indvars.iv.next3311, %bb.cu ], [ 0, %bb.ct ] ; 3 uses
  %.62782 = phi i32 [ %.2, %bb.cu ], [ 0, %bb.ct ] ; 2 uses
  %i.tb = trunc nuw nsw i64 %indvars.iv3310 to i32
  %i.tc = add i32 %i.tb, %i.qi
  %i.td = shl i32 %i.tc, 2
  %i.te = add i32 %i.td, %i.jk
  %i.tf = zext i32 %i.te to i64                   ; 2 uses
  %.val2943 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tg = getelementptr inbounds nuw i8, ptr %.val2943, i64 %i.tf
  %.0.copyload.i3164.a = load i32, ptr %i.tg, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3164.a) #7, !srcloc !19
  %indvars.iv3310.tr = trunc nuw nsw i64 %indvars.iv3310 to i32
  %i.th = shl nuw nsw i32 %indvars.iv3310.tr, 2
  %i.ti = add i32 %i.th, %i.lb
  %i.tj = zext i32 %i.ti to i64
  %.val2942 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tk = getelementptr inbounds nuw i8, ptr %.val2942, i64 %i.tj
  %.0.copyload.i3165.a = load i32, ptr %i.tk, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3165.a) #7, !srcloc !19
  %i.tl = add i32 %.0.copyload.i3164.a, %.62782
  %i.tm = add i32 %i.tl, %.0.copyload.i3165.a     ; 3 uses
  %.val2988 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tn = getelementptr inbounds nuw i8, ptr %.val2988, i64 %i.tf
  store i32 %i.tm, ptr %i.tn, align 1
  %i.to = tail call i32 @llvm.umin.i32(i32 %.0.copyload.i3165.a, i32 %.0.copyload.i3164.a) ; 2 uses
  %.not2886 = icmp ugt i32 %i.to, %i.tm
  %i.tp = icmp eq i32 %i.to, %i.tm
  %i.tq = select i1 %i.tp, i32 %.62782, i32 0
  %.2 = select i1 %.not2886, i32 1, i32 %i.tq     ; 2 uses
  %indvars.iv.next3311 = add nuw nsw i64 %indvars.iv3310, 1 ; 2 uses
  %.not2887 = icmp eq i64 %indvars.iv.next3311, %i.qg
  br i1 %.not2887, label %bb.cv, label %bb.cu

bb.cv:                                            ; preds = %bb.cu
  %.val2941 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tr = getelementptr inbounds nuw i8, ptr %.val2941, i64 %i.so
  %.0.copyload.i3166.a = load i32, ptr %i.tr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3166.a) #7, !srcloc !19
  %i.ts = add i32 %.0.copyload.i3166.a, %.2
  %.val2987 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tt = getelementptr inbounds nuw i8, ptr %.val2987, i64 %i.so
  store i32 %i.ts, ptr %i.tt, align 1
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cr
  %i.tu = shl i32 %i.qi, 2
  %i.tv = add i32 %i.tu, %i.lk
  %i.tw = zext i32 %i.tv to i64
  %.val3093 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.tx = trunc i64 %.02760 to i32
  %i.ty = getelementptr inbounds nuw i8, ptr %.val3093, i64 %i.tw
  store i32 %i.tx, ptr %i.ty, align 1
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cs, %bb.cw, %bb.cv
  %indvars.iv.next3315 = add nsw i64 %indvars.iv3314, -1
  %i.tz = icmp sgt i32 %i.qi, 0
  br i1 %i.tz, label %bb.cj, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %.not2888 = icmp eq i32 %.1, 0
  br i1 %.not2888, label %.loopexit3228, label %5

5:                                                ; preds = %bb.cy
  br i1 %.not2874, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %5
  br i1 %.not2879, label %.loopexit3228, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %.not2890 = icmp eq i32 %i.ni, 0
  br i1 %.not2890, label %..thread_crit_edge, label %bb.db

..thread_crit_edge:                               ; preds = %bb.da
  %.pre3345 = and i32 %i.nn, 31
  br label %.thread

bb.db:                                            ; preds = %bb.da
  %6 = and i32 %.12786, 1
  %7 = sub nuw nsw i32 32, %i.nn                  ; 2 uses
  %8 = and i32 %i.nn, 31                          ; 3 uses
  %i.ua = add i32 %.1, 4
  %i.ub = add i32 %i.jk, 4
  %i.uc = zext i32 %i.ub to i64
  %.val2940 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ud = getelementptr inbounds nuw i8, ptr %.val2940, i64 %i.uc
  %.0.copyload.i3167.a = load i32, ptr %i.ud, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3167.a) #7, !srcloc !19
  %i.ue = lshr i32 %.0.copyload.i3167.a, %8
  %i.uf = zext i32 %i.ua to i64
  %.val2986 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ug = getelementptr inbounds nuw i8, ptr %.val2986, i64 %i.uf
  store i32 %i.ue, ptr %i.ug, align 1
  %i.uh = shl i32 %.0.copyload.i3167.a, %7
  %i.ui = zext i32 %i.jk to i64
  %.val2939 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uj = getelementptr inbounds nuw i8, ptr %.val2939, i64 %i.ui
  %.0.copyload.i3168.a = load i32, ptr %i.uj, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3168.a) #7, !srcloc !19
  %i.uk = lshr i32 %.0.copyload.i3168.a, %8
  %i.ul = or i32 %i.uk, %i.uh
  %i.um = zext i32 %.1 to i64
  %.val2985 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.un = getelementptr inbounds nuw i8, ptr %.val2985, i64 %i.um
  store i32 %i.ul, ptr %i.un, align 1
  %i.uo = shl i32 %.0.copyload.i3168.a, %7
  %.not2892 = icmp eq i32 %6, 0
  br i1 %.not2892, label %.loopexit3228, label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.db
  %.pre-phi3346 = phi i32 [ %.pre3345, %..thread_crit_edge ], [ %8, %bb.db ]
  %.103215 = phi i32 [ 0, %..thread_crit_edge ], [ %i.uo, %bb.db ]
  %.127943214 = phi i32 [ 0, %..thread_crit_edge ], [ -4, %bb.db ] ; 2 uses
  %i.up = add i32 %.127943214, %.1
  %i.uq = add i32 %.127943214, %i.jk
  %i.ur = zext i32 %i.uq to i64
  %.val2938 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.us = getelementptr inbounds nuw i8, ptr %.val2938, i64 %i.ur
  %.0.copyload.i3169.a = load i32, ptr %i.us, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3169.a) #7, !srcloc !19
  %i.ut = lshr i32 %.0.copyload.i3169.a, %.pre-phi3346
  %i.uu = or i32 %i.ut, %.103215
  br label %.loopexit3228.sink.split

bb.dc:                                            ; preds = %5
  br i1 %.not2879, label %.loopexit3228, label %.preheader3227

.preheader3227:                                   ; preds = %bb.dc, %.preheader3227
  %.82803 = phi i32 [ %i.vc, %.preheader3227 ], [ %i.ni, %bb.dc ] ; 2 uses
  %.11 = phi i32 [ %i.vd, %.preheader3227 ], [ 0, %bb.dc ]
  %i.uv = shl nsw i32 %.82803, 2                  ; 2 uses
  %i.uw = add i32 %i.uv, %.1
  %i.ux = add i32 %i.uv, %i.jk
  %i.uy = zext i32 %i.ux to i64
  %.val2937 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.uz = getelementptr inbounds nuw i8, ptr %.val2937, i64 %i.uy
  %.0.copyload.i3170.a = load i32, ptr %i.uz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3170.a) #7, !srcloc !19
  %i.va = zext i32 %i.uw to i64
  %.val2983.a = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vb = getelementptr inbounds nuw i8, ptr %.val2983.a, i64 %i.va
  store i32 %.0.copyload.i3170.a, ptr %i.vb, align 1
  %i.vc = add nsw i32 %.82803, -1
  %i.vd = add nuw nsw i32 %.11, 1                 ; 2 uses
  %.not2889 = icmp eq i32 %i.vd, %.12786
  br i1 %.not2889, label %.loopexit3228, label %.preheader3227

.loopexit3228.sink.split:                         ; preds = %.loopexit3226.a, %.thread
  %.sink3384 = phi i32 [ %i.up, %.thread ], [ %.1, %.loopexit3226.a ]
  %.sink3381 = phi i32 [ %i.uu, %.thread ], [ %.42789, %.loopexit3226.a ]
  %i.ve = zext i32 %.sink3384 to i64
  %.val2984 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vf = getelementptr inbounds nuw i8, ptr %.val2984, i64 %i.ve
  store i32 %.sink3381, ptr %i.vf, align 1
  br label %.loopexit3228

.loopexit3228:                                    ; preds = %.preheader3227, %.loopexit3228.sink.split, %bb.dc, %bb.db, %bb.cz, %bb.cy, %.loopexit3226.a
  %.not2895 = icmp eq i32 %.0.copyload.i3136.a, 0
  br i1 %.not2895, label %bb.df, label %.preheader3225

.preheader3225:                                   ; preds = %.loopexit3228, %.preheader3225
  %indvars.iv3326 = phi i64 [ %indvars.iv.next3327, %.preheader3225 ], [ 0, %.loopexit3228 ] ; 2 uses
  %i.vg = trunc nuw i64 %indvars.iv3326 to i32
  %i.vh = shl i32 %i.vg, 3                        ; 3 uses
  %i.vi = add i32 %i.vh, %.0.copyload.i3136.a
  %i.vj = add i32 %i.vh, %i.lk
  %i.vk = zext i32 %i.vj to i64
  %.val3040 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vl = getelementptr inbounds nuw i8, ptr %.val3040, i64 %i.vk
  %.0.copyload.i3171.a = load i64, ptr %i.vl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3171.a) #7, !srcloc !22
  %i.vm = zext i32 %i.vi to i64
  %.val3075 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vn = getelementptr inbounds nuw i8, ptr %.val3075, i64 %i.vm
  store i64 %.0.copyload.i3171.a, ptr %i.vn, align 1
  %i.vo = or disjoint i32 %i.vh, 8                ; 2 uses
  %i.vp = add i32 %i.vo, %.0.copyload.i3136.a
  %i.vq = add i32 %i.vo, %i.lk
  %i.vr = zext i32 %i.vq to i64
  %.val3039 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vs = getelementptr inbounds nuw i8, ptr %.val3039, i64 %i.vr
  %.0.copyload.i3172.a = load i64, ptr %i.vs, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3172.a) #7, !srcloc !22
  %i.vt = zext i32 %i.vp to i64
  %.val3074 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vu = getelementptr inbounds nuw i8, ptr %.val3074, i64 %i.vt
  store i64 %.0.copyload.i3172.a, ptr %i.vu, align 1
  %indvars.iv.next3327 = add nuw nsw i64 %indvars.iv3326, 2 ; 2 uses
  %indvars3330 = trunc i64 %indvars.iv.next3327 to i32
  %.not2897 = icmp eq i32 %i.jl, %indvars3330
  br i1 %.not2897, label %bb.dd, label %.preheader3225

bb.dd:                                            ; preds = %.preheader3225
  br i1 %.not2867, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.vv = shl nuw nsw i32 %i.jl, 3                ; 2 uses
  %i.vw = add i32 %i.vv, %.0.copyload.i3136.a
  %i.vx = add i32 %i.vv, %i.lk
  %i.vy = zext i32 %i.vx to i64
  %.val3038 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.vz = getelementptr inbounds nuw i8, ptr %.val3038, i64 %i.vy
  %.0.copyload.i3173.a = load i64, ptr %i.vz, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3173.a) #7, !srcloc !22
  %i.wa = zext i32 %i.vw to i64
  %.val3073 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wb = getelementptr inbounds nuw i8, ptr %.val3073, i64 %i.wa
  store i64 %.0.copyload.i3173.a, ptr %i.wb, align 1
  br label %bb.df

bb.df:                                            ; preds = %bb.dd, %.loopexit3228, %bb.de
  br i1 %.not2864, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.wc = zext i32 %.1 to i64
  %.val3037 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wd = getelementptr inbounds nuw i8, ptr %.val3037, i64 %i.wc
  %.0.copyload.i3174.a = load i64, ptr %i.wd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3174.a) #7, !srcloc !22
  %.val3072 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.we = getelementptr inbounds nuw i8, ptr %.val3072, i64 %i.cm
  store i64 %.0.copyload.i3174.a, ptr %i.we, align 1
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %i.wf = icmp eq i32 %i.jk, %i.io
  br i1 %i.wf, label %bb.dk, label %bb.di

bb.di:                                            ; preds = %bb.dh
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %i.jk) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %i.lb) #7
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %i.lk) #7
  %.not2899.a = icmp eq i32 %.1, 0
  br i1 %.not2899.a, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.1) #7
  br label %bb.dk

bb.dk:                                            ; preds = %bb.di, %bb.dh, %bb.dj
  store i32 %i.in, ptr %i.a, align 8, !tbaa !17
  %.val2936 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wg = getelementptr inbounds nuw i8, ptr %.val2936, i64 %i.ck
  %.0.copyload.i3175.a = load i32, ptr %i.wg, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3175.a) #7, !srcloc !19
  %i.wh = add i32 %.0.copyload.i3175.a, %i.ji
  %i.wi = sub nsw i32 %i.dv, %i.ep
  %i.wj = shl nsw i32 %i.wi, 3
  %i.wk = tail call i32 @w2c_hermes_0x5F_memset(ptr noundef nonnull %0, i32 noundef %i.wh, i32 noundef 0, i32 noundef %i.wj) #7 ; 0 uses
  br label %bb.ef

bb.dl:                                            ; preds = %bb.ac
  %.val2935 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wl = getelementptr inbounds nuw i8, ptr %.val2935, i64 %i.cl
  %.0.copyload.i3176.a = load i32, ptr %i.wl, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3176.a) #7, !srcloc !19
  %i.wm = icmp ugt i32 %.0.copyload.i3176.a, 64
  br i1 %i.wm, label %bb.dq, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %.val2934 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wn = getelementptr inbounds nuw i8, ptr %.val2934, i64 %i.cj
  %.0.copyload.i3177.a = load i32, ptr %i.wn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3177.a) #7, !srcloc !19
  %i.wo = icmp ugt i32 %.0.copyload.i3177.a, 64
  br i1 %i.wo, label %bb.dq, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %.val3036 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wp = getelementptr inbounds nuw i8, ptr %.val3036, i64 %i.ci
  %.0.copyload.i3178.a = load i64, ptr %i.wp, align 1 ; 4 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3178.a) #7, !srcloc !22
  %.val3071 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wq = getelementptr inbounds nuw i8, ptr %.val3071, i64 %i.ck
  store i64 %.0.copyload.i3178.a, ptr %i.wq, align 1
  %.val2933 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.wr = getelementptr inbounds nuw i8, ptr %.val2933, i64 %i.cj
  %.0.copyload.i3179.a = load i32, ptr %i.wr, align 1 ; 5 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3179.a) #7, !srcloc !19
  %.val2982 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ws = getelementptr inbounds nuw i8, ptr %.val2982, i64 %i.cl
  store i32 %.0.copyload.i3179.a, ptr %i.ws, align 1
  %i.wt = icmp ugt i32 %.0.copyload.i3179.a, 64
  br i1 %i.wt, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.wu = zext i32 %.0.copyload.i3179.a to i64
  %i.wv = add nuw nsw i64 %i.wu, 63
  %sh.diff = lshr i64 %i.wv, 3
  %i.ww = and i64 %sh.diff, 1073741816
  %i.wx = add i64 %.0.copyload.i3178.a, 4294967288
  %i.wy = add i64 %i.wx, %i.ww
  %i.wz = and i64 %i.wy, 4294967295               ; 2 uses
  %.val3035 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xa = getelementptr inbounds nuw i8, ptr %.val3035, i64 %i.wz
  %.0.copyload.i3180.a = load i64, ptr %i.xa, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i64 %.0.copyload.i3180.a) #7, !srcloc !22
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %.pre-phi3344 = phi i64 [ %i.wz, %bb.do ], [ %i.ck, %bb.dn ]
  %.12761 = phi i64 [ %.0.copyload.i3180.a, %bb.do ], [ %.0.copyload.i3178.a, %bb.dn ]
  %i.xb = sub i32 0, %.0.copyload.i3179.a
  %i.xc = and i32 %i.xb, 63
  %i.xd = zext nneg i32 %i.xc to i64
  %i.xe = lshr i64 -1, %i.xd
  %i.xf = and i64 %.12761, %i.xe
  %.val3070 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xg = getelementptr inbounds nuw i8, ptr %.val3070, i64 %.pre-phi3344
  store i64 %i.xf, ptr %i.xg, align 1
  br label %bb.ea

bb.dq:                                            ; preds = %bb.dl, %bb.dm
  %.val2932 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xh = getelementptr inbounds nuw i8, ptr %.val2932, i64 %i.cj
  %.0.copyload.i3181.a = load i32, ptr %i.xh, align 1 ; 6 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3181.a) #7, !srcloc !19
  %i.xi = zext i32 %.0.copyload.i3181.a to i64
  %i.xj = add nuw nsw i64 %i.xi, 63               ; 2 uses
  %i.xk = lshr i64 %i.xj, 6                       ; 2 uses
  %i.xl = trunc nuw nsw i64 %i.xk to i32
  %i.xm = zext i32 %.0.copyload.i3176.a to i64
  %i.xn = add nuw nsw i64 %i.xm, 63
  %i.xo = lshr i64 %i.xn, 6
  %.not2857 = icmp eq i64 %i.xk, %i.xo
  br i1 %.not2857, label %bb.dw, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.xp = icmp ult i32 %.0.copyload.i3176.a, 65
  br i1 %i.xp, label %bb.du, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %.val2931 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xq = getelementptr inbounds nuw i8, ptr %.val2931, i64 %i.ck
  %.0.copyload.i3182.a = load i32, ptr %i.xq, align 1 ; 3 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i3182.a) #7, !srcloc !19
  %.not2858 = icmp eq i32 %.0.copyload.i3182.a, 0
  br i1 %.not2858, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  tail call void @w2c_hermes_dlfree(ptr noundef nonnull %0, i32 noundef %.0.copyload.i3182.a) #7
  br label %bb.du

bb.du:                                            ; preds = %bb.ds, %bb.dr, %bb.dt
  %.val2981 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xr = getelementptr inbounds nuw i8, ptr %.val2981, i64 %i.cl
  store i32 %.0.copyload.i3181.a, ptr %i.xr, align 1
  %i.xs = icmp ult i32 %.0.copyload.i3181.a, 65
  br i1 %i.xs, label %bb.dz, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.xt = shl nuw nsw i32 %i.xl, 3
  %i.xu = tail call i32 @w2c_hermes_operator0x20new0x28unsigned0x20long0x29(ptr noundef nonnull %0, i32 noundef %i.xt) #7 ; 2 uses
  %.val2980 = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.xv = getelementptr inbounds nuw i8, ptr %.val2980, i64 %i.ck
  store i32 %i.xu, ptr %i.xv, align 1
  br label %bb.dy
end_hunk_0
