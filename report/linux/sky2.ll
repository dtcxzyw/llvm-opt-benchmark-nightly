Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/sky2?download=true
inline.NumInlined: 921
inline.NumDeleted: 221
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@sky2_phy_init:bb.a
  %i.io = getelementptr i8, ptr %.val22.i369, i64 %i.ep
  tail call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 1, ptr elementtype(i16) %i.io) #22, !srcloc !23
  %.val.i370 = load ptr, ptr %0, align 8
  %i.ip = getelementptr i8, ptr %.val.i370, i64 %i.es
  tail call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 1408, ptr elementtype(i16) %i.ip) #22, !srcloc !23
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bn, %bb.bk
  %.01927.i371 = phi i32 [ 0, %bb.bk ], [ %i.iu, %bb.bn ]
  %.val23.i372 = load ptr, ptr %0, align 8
  %i.iq = getelementptr i8, ptr %.val23.i372, i64 %i.bj
  %i.ir = tail call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %i.iq) #22, !srcloc !24 ; 2 uses
  %i.is = icmp eq i16 %i.ir, -1
  br i1 %i.is, label %bb.bp, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.it = and i16 %i.ir, 8
  %.not.i373 = icmp eq i16 %i.it, 0
  br i1 %.not.i373, label %gm_phy_write.exit376, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  tail call void @__const_udelay(i64 noundef 42950) #20
  %i.iu = add nuw nsw i32 %.01927.i371, 1         ; 2 uses
  %exitcond.not.i374 = icmp eq i32 %i.iu, 1000
  br i1 %exitcond.not.i374, label %bb.bo, label %bb.bl, !llvm.loop !4

bb.bo:                                            ; preds = %bb.bn
  %i.iv = getelementptr i8, ptr %0, i64 8
  %i.iw = load ptr, ptr %i.iv, align 8
  %i.ix = getelementptr i8, ptr %i.iw, i64 200
  %i.iy = load ptr, ptr %i.c, align 8
  %i.iz = getelementptr i8, ptr %i.iy, i64 288
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.ix, ptr noundef nonnull @.str.41, ptr noundef %i.iz) #21
  br label %gm_phy_write.exit376

bb.bp:                                            ; preds = %bb.bl
  %i.ja = getelementptr i8, ptr %0, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  %i.jc = getelementptr i8, ptr %i.jb, i64 200
  %i.jd = load ptr, ptr %i.c, align 8
  %i.je = getelementptr i8, ptr %i.jd, i64 288
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.jc, ptr noundef nonnull @.str.40, ptr noundef %i.je) #21
  br label %gm_phy_write.exit376

gm_phy_write.exit376:                             ; preds = %bb.bm, %bb.bo, %bb.bp
  %.val.i.i377 = load ptr, ptr %0, align 8
  %i.jf = getelementptr i8, ptr %.val.i.i377, i64 %i.bj
  tail call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 1056, ptr elementtype(i16) %i.jf) #22, !srcloc !23
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bs, %gm_phy_write.exit376
  %.01927.i.i378 = phi i32 [ 0, %gm_phy_write.exit376 ], [ %i.jp, %bb.bs ]
  %.val23.i.i379 = load ptr, ptr %0, align 8
  %i.jg = getelementptr i8, ptr %.val23.i.i379, i64 %i.bj
  %i.jh = tail call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %i.jg) #22, !srcloc !24 ; 2 uses
  %i.ji = icmp eq i16 %i.jh, -1
  br i1 %i.ji, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.jj = and i16 %i.jh, 16
  %.not.i.i380 = icmp eq i16 %i.jj, 0
  br i1 %.not.i.i380, label %bb.bs, label %.thread.i.i381

.thread.i.i381:                                   ; preds = %bb.br
  %.val22.i.i382 = load ptr, ptr %0, align 8
  %i.jk = add i32 %i.bh, 10372
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr i8, ptr %.val22.i.i382, i64 %i.jl
  %i.jn = tail call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %i.jm) #22, !srcloc !24
  %i.jo = or i16 %i.jn, 512
  br label %gm_phy_read.exit385

bb.bs:                                            ; preds = %bb.br
  tail call void @__const_udelay(i64 noundef 42950) #20
  %i.jp = add nuw nsw i32 %.01927.i.i378, 1       ; 2 uses
  %exitcond.not.i.i384 = icmp eq i32 %i.jp, 1000
  br i1 %exitcond.not.i.i384, label %bb.bt, label %bb.bq, !llvm.loop !3

bb.bt:                                            ; preds = %bb.bs
  %i.jq = getelementptr i8, ptr %0, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = getelementptr i8, ptr %i.jr, i64 200
  %i.jt = load ptr, ptr %i.c, align 8
  %i.ju = getelementptr i8, ptr %i.jt, i64 288
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.js, ptr noundef nonnull @.str.39, ptr noundef %i.ju) #21
  br label %gm_phy_read.exit385

bb.bu:                                            ; preds = %bb.bq
  %i.jv = getelementptr i8, ptr %0, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8
  %i.jx = getelementptr i8, ptr %i.jw, i64 200
  %i.jy = load ptr, ptr %i.c, align 8
  %i.jz = getelementptr i8, ptr %i.jy, i64 288
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.jx, ptr noundef nonnull @.str.40, ptr noundef %i.jz) #21
  br label %gm_phy_read.exit385

gm_phy_read.exit385:                              ; preds = %.thread.i.i381, %bb.bt, %bb.bu
  %.0.i383 = phi i16 [ 512, %bb.bu ], [ 512, %bb.bt ], [ %i.jo, %.thread.i.i381 ]
  %.val22.i386 = load ptr, ptr %0, align 8
  %i.ka = getelementptr i8, ptr %.val22.i386, i64 %i.ep
  tail call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %.0.i383, ptr elementtype(i16) %i.ka) #22, !srcloc !23
  %.val.i387 = load ptr, ptr %0, align 8
  %i.kb = getelementptr i8, ptr %.val.i387, i64 %i.es
  tail call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 1024, ptr elementtype(i16) %i.kb) #22, !srcloc !23
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bx, %gm_phy_read.exit385
  %.01927.i388 = phi i32 [ 0, %gm_phy_read.exit385 ], [ %i.kg, %bb.bx ]
  %.val23.i389 = load ptr, ptr %0, align 8
  %i.kc = getelementptr i8, ptr %.val23.i389, i64 %i.bj
  %i.kd = tail call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %i.kc) #22, !srcloc !24 ; 2 uses
  %i.ke = icmp eq i16 %i.kd, -1
  br i1 %i.ke, label %bb.bz, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.kf = and i16 %i.kd, 8
  %.not.i390 = icmp eq i16 %i.kf, 0
  br i1 %.not.i390, label %gm_phy_write.exit393, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @__const_udelay(i64 noundef 42950) #20
  %i.kg = add nuw nsw i32 %.01927.i388, 1         ; 2 uses
  %exitcond.not.i391 = icmp eq i32 %i.kg, 1000
  br i1 %exitcond.not.i391, label %bb.by, label %bb.bv, !llvm.loop !4

bb.by:                                            ; preds = %bb.bx
  %i.kh = getelementptr i8, ptr %0, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = getelementptr i8, ptr %i.ki, i64 200
  %i.kk = load ptr, ptr %i.c, align 8
  %i.kl = getelementptr i8, ptr %i.kk, i64 288
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.kj, ptr noundef nonnull @.str.41, ptr noundef %i.kl) #21
  br label %gm_phy_write.exit393

bb.bz:                                            ; preds = %bb.bv
  %i.km = getelementptr i8, ptr %0, i64 8
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = getelementptr i8, ptr %i.kn, i64 200
  %i.kp = load ptr, ptr %i.c, align 8
  %i.kq = getelementptr i8, ptr %i.kp, i64 288
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.ko, ptr noundef nonnull @.str.40, ptr noundef %i.kq) #21
  br label %gm_phy_write.exit393

gm_phy_write.exit393:                             ; preds = %bb.bw, %bb.bz, %bb.by, %gm_phy_write.exit368
  %.val22.i394 = load ptr, ptr %0, align 8
  %i.kr = getelementptr i8, ptr %.val22.i394, i64 %i.ep
  tail call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %.0.i341, ptr elementtype(i16) %i.kr) #22, !srcloc !23
  %.val.i395 = load ptr, ptr %0, align 8
  %i.ks = getelementptr i8, ptr %.val.i395, i64 %i.es
  tail call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 1408, ptr elementtype(i16) %i.ks) #22, !srcloc !23
  br label %bb.ca

bb.ca:                                            ; preds = %bb.cc, %gm_phy_write.exit393
  %.01927.i396 = phi i32 [ 0, %gm_phy_write.exit393 ], [ %i.kx, %bb.cc ]
  %.val23.i397 = load ptr, ptr %0, align 8
  %i.kt = getelementptr i8, ptr %.val23.i397, i64 %i.bj
  %i.ku = tail call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %i.kt) #22, !srcloc !24 ; 2 uses
  %i.kv = icmp eq i16 %i.ku, -1
  br i1 %i.kv, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.kw = and i16 %i.ku, 8
  %.not.i398 = icmp eq i16 %i.kw, 0
  br i1 %.not.i398, label %gm_phy_write.exit401, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @__const_udelay(i64 noundef 42950) #20
  %i.kx = add nuw nsw i32 %.01927.i396, 1         ; 2 uses
  %exitcond.not.i399 = icmp eq i32 %i.kx, 1000
  br i1 %exitcond.not.i399, label %bb.cd, label %bb.ca, !llvm.loop !4

bb.cd:                                            ; preds = %bb.cc
  %i.ky = getelementptr i8, ptr %0, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = getelementptr i8, ptr %i.kz, i64 200
  %i.lb = load ptr, ptr %i.c, align 8
  %i.lc = getelementptr i8, ptr %i.lb, i64 288
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.la, ptr noundef nonnull @.str.41, ptr noundef %i.lc) #21
  br label %gm_phy_write.exit401

bb.ce:                                            ; preds = %bb.ca
  %i.ld = getelementptr i8, ptr %0, i64 8
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = getelementptr i8, ptr %i.le, i64 200
  %i.lg = load ptr, ptr %i.c, align 8
  %i.lh = getelementptr i8, ptr %i.lg, i64 288
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.lf, ptr noundef nonnull @.str.40, ptr noundef %i.lh) #21
  br label %gm_phy_write.exit401

gm_phy_write.exit401:                             ; preds = %bb.cb, %bb.ce, %bb.cd, %bb.ao, %gm_phy_write.exit334
  %i.li = load i16, ptr %i.e, align 2             ; 2 uses
  %i.lj = and i16 %i.li, 2
  %.not272 = icmp eq i16 %i.lj, 0
  br i1 %.not272, label %bb.ci, label %bb.cf

bb.cf:                                            ; preds = %gm_phy_write.exit401
  %.val297 = load i64, ptr %i.ce, align 8
  %i.lk = and i64 %.val297, 2
  %.not.i402.not = icmp eq i64 %i.lk, 0
  %i.ll = getelementptr i8, ptr %i.d, i64 2840
  %i.lm = load i16, ptr %i.ll, align 8            ; 5 uses
  br i1 %.not.i402.not, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ln = shl i16 %i.lm, 4
  %.1257 = and i16 %i.ln, 768
  %i.lo = and i16 %i.lm, 8
  %.not278 = icmp eq i16 %i.lo, 0
  %.0253 = select i1 %.not278, i16 1, i16 257
  %i.lp = shl i16 %i.lm, 5
  %.2255 = and i16 %i.lp, 224
  %spec.select293 = or disjoint i16 %.2255, %.0253
  br label %.thread807

bb.ch:                                            ; preds = %bb.cf
  %i.lq = and i16 %i.lm, 32
  %2 = and i16 %i.lm, 16
  %.not275 = icmp eq i16 %2, 0
  %spec.select292.v = select i1 %.not275, i16 1, i16 65
  %spec.select292 = or disjoint i16 %spec.select292.v, %i.lq
  br label %.thread807

bb.ci:                                            ; preds = %gm_phy_write.exit401
  %i.lr = getelementptr i8, ptr %i.d, i64 2842
  %i.ls = load i16, ptr %i.lr, align 2            ; 2 uses
  %i.lt = getelementptr i8, ptr %i.d, i64 2845
  %i.lu = load i8, ptr %i.lt, align 1
  %i.lv = icmp eq i8 %i.lu, 1                     ; 4 uses
  switch i16 %i.ls, label %bb.cj [
    i16 1000, label %.thread
    i16 100, label %.thread810
  ]

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.lv, label %.thread807, label %bb.ck

.thread810:                                       ; preds = %bb.ci
  br i1 %i.lv, label %.thread807, label %.thread813

.thread:                                          ; preds = %bb.ci
  %spec.select831 = select i1 %i.lv, i16 -32448, i16 -32704
  %spec.select832 = select i1 %i.lv, i16 173, i16 141
  br label %.thread807

bb.ck:                                            ; preds = %bb.cj
  %i.lw = icmp ult i16 %i.ls, 1000
  br i1 %i.lw, label %.thread813, label %.thread807

.thread813:                                       ; preds = %.thread810, %bb.ck
  %.1261804817 = phi i16 [ -32768, %bb.ck ], [ -24576, %.thread810 ]
  %.0249806816 = phi i16 [ 5, %bb.ck ], [ 13, %.thread810 ]
  %i.lx = getelementptr i8, ptr %i.d, i64 2848
  store i32 0, ptr %i.lx, align 32
  br label %.thread807

.thread807:                                       ; preds = %.thread, %bb.cj, %.thread810, %bb.cg, %bb.ch, %.thread813, %bb.ck
  %.2262 = phi i16 [ -32768, %bb.ck ], [ %spec.select831, %.thread ], [ %.1261804817, %.thread813 ], [ -28160, %bb.cg ], [ -28160, %bb.ch ], [ -32512, %bb.cj ], [ -24320, %.thread810 ]
  %.3259 = phi i16 [ 4096, %bb.ck ], [ 4096, %.thread ], [ 4096, %.thread813 ], [ %.1257, %bb.cg ], [ 0, %bb.ch ], [ 4096, %bb.cj ], [ 4096, %.thread810 ]
  %.5 = phi i16 [ 1, %bb.ck ], [ 1, %.thread ], [ 1, %.thread813 ], [ %spec.select293, %bb.cg ], [ %spec.select292, %bb.ch ], [ 1, %bb.cj ], [ 1, %.thread810 ] ; 4 uses
  %.1 = phi i16 [ 5, %bb.ck ], [ %spec.select832, %.thread ], [ %.0249806816, %.thread813 ], [ 0, %bb.cg ], [ 0, %bb.ch ], [ 37, %bb.cj ], [ 45, %.thread810 ] ; 3 uses
  %i.ly = and i16 %i.li, 4
  %.not282 = icmp eq i16 %i.ly, 0
  br i1 %.not282, label %bb.co, label %bb.cl

bb.cl:                                            ; preds = %.thread807
  %.val296 = load i64, ptr %i.ce, align 8
  %i.lz = and i64 %.val296, 2
  %.not.i403.not = icmp eq i64 %i.lz, 0
  %i.ma = getelementptr i8, ptr %i.d, i64 2848
  %i.mb = load i32, ptr %i.ma, align 32
  %i.mc = zext i32 %i.mb to i64                   ; 2 uses
  br i1 %.not.i403.not, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.md = getelementptr [2 x i8], ptr @copper_fc_adv, i64 %i.mc
  %i.me = load i16, ptr %i.md, align 2
  %i.mf = or i16 %i.me, %.5
  br label %bb.cr

bb.cn:                                            ; preds = %bb.cl
  %i.mg = getelementptr [2 x i8], ptr @fiber_fc_adv, i64 %i.mc
  %i.mh = load i16, ptr %i.mg, align 2
  %i.mi = or i16 %i.mh, %.5
  br label %bb.cr

bb.co:                                            ; preds = %.thread807
  %i.mj = getelementptr i8, ptr %i.d, i64 2848
  %i.mk = load i32, ptr %i.mj, align 32           ; 2 uses
  %i.ml = zext i32 %i.mk to i64
  %i.mm = getelementptr [2 x i8], ptr @gm_fc_disable, i64 %i.ml
  %i.mn = load i16, ptr %i.mm, align 2
  %i.mo = or i16 %.1, %i.mn
  %i.mp = or i16 %i.mo, 2                         ; 2 uses
  %i.mq = and i32 %i.mk, 2
  %.not283 = icmp eq i32 %i.mq, 0
  %i.mr = shl i32 %1, 7
  %i.ms = add i32 %i.mr, 3840
  %.val = load ptr, ptr %0, align 8
  %i.mt = zext i32 %i.ms to i64
  %i.mu = getelementptr i8, ptr %.val, i64 %i.mt  ; 2 uses
  br i1 %.not283, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  tail call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 8, ptr elementtype(i8) %i.mu) #22, !srcloc !19
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  tail call void asm sideeffect "movb $0,$1", "q,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8 4, ptr elementtype(i8) %i.mu) #22, !srcloc !19
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cp, %bb.cq, %bb.cm, %bb.cn
  %.6 = phi i16 [ %i.mf, %bb.cm ], [ %i.mi, %bb.cn ], [ %.5, %bb.cp ], [ %.5, %bb.cq ]
  %.2 = phi i16 [ %.1, %bb.cm ], [ %.1, %bb.cn ], [ %i.mp, %bb.cp ], [ %i.mp, %bb.cq ]
  %.val295 = load ptr, ptr %0, align 8
  %i.mv = or disjoint i32 %i.en, 4
  %i.mw = zext i32 %i.mv to i64
  %i.mx = getelementptr i8, ptr %.val295, i64 %i.mw
  tail call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %.2, ptr elementtype(i16) %i.mx) #22, !srcloc !23
  %i.my = load i64, ptr %i.ce, align 8
  %i.mz = and i64 %i.my, 4
  %.not285 = icmp eq i64 %i.mz, 0
  br i1 %.not285, label %gm_phy_write.exit411, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %.val22.i404 = load ptr, ptr %0, align 8
  %i.na = getelementptr i8, ptr %.val22.i404, i64 %i.ep
  tail call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %.3259, ptr elementtype(i16) %i.na) #22, !srcloc !23
  %.val.i405 = load ptr, ptr %0, align 8
  %i.nb = getelementptr i8, ptr %.val.i405, i64 %i.es
  tail call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 576, ptr elementtype(i16) %i.nb) #22, !srcloc !23
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cv, %bb.cs
  %.01927.i406 = phi i32 [ 0, %bb.cs ], [ %i.ng, %bb.cv ]
  %.val23.i407 = load ptr, ptr %0, align 8
  %i.nc = getelementptr i8, ptr %.val23.i407, i64 %i.bj
  %i.nd = tail call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %i.nc) #22, !srcloc !24 ; 2 uses
  %i.ne = icmp eq i16 %i.nd, -1
  br i1 %i.ne, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nf = and i16 %i.nd, 8
  %.not.i408 = icmp eq i16 %i.nf, 0
  br i1 %.not.i408, label %gm_phy_write.exit411, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  tail call void @__const_udelay(i64 noundef 42950) #20
  %i.ng = add nuw nsw i32 %.01927.i406, 1         ; 2 uses
  %exitcond.not.i409 = icmp eq i32 %i.ng, 1000
  br i1 %exitcond.not.i409, label %bb.cw, label %bb.ct, !llvm.loop !4

bb.cw:                                            ; preds = %bb.cv
  %i.nh = getelementptr i8, ptr %0, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8
  %i.nj = getelementptr i8, ptr %i.ni, i64 200
  %i.nk = load ptr, ptr %i.c, align 8
  %i.nl = getelementptr i8, ptr %i.nk, i64 288
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.nj, ptr noundef nonnull @.str.41, ptr noundef %i.nl) #21
  br label %gm_phy_write.exit411

bb.cx:                                            ; preds = %bb.ct
  %i.nm = getelementptr i8, ptr %0, i64 8
  %i.nn = load ptr, ptr %i.nm, align 8
  %i.no = getelementptr i8, ptr %i.nn, i64 200
  %i.np = load ptr, ptr %i.c, align 8
  %i.nq = getelementptr i8, ptr %i.np, i64 288
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.no, ptr noundef nonnull @.str.40, ptr noundef %i.nq) #21
  br label %gm_phy_write.exit411

gm_phy_write.exit411:                             ; preds = %bb.cu, %bb.cx, %bb.cw, %bb.cr
  %.val22.i412 = load ptr, ptr %0, align 8
  %i.nr = getelementptr i8, ptr %.val22.i412, i64 %i.ep
  tail call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %.6, ptr elementtype(i16) %i.nr) #22, !srcloc !23
  %.val.i413 = load ptr, ptr %0, align 8
  %i.ns = getelementptr i8, ptr %.val.i413, i64 %i.es
  tail call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 256, ptr elementtype(i16) %i.ns) #22, !srcloc !23
  br label %bb.cy

bb.cy:                                            ; preds = %bb.da, %gm_phy_write.exit411
  %.01927.i414 = phi i32 [ 0, %gm_phy_write.exit411 ], [ %i.nx, %bb.da ]
  %.val23.i415 = load ptr, ptr %0, align 8
  %i.nt = getelementptr i8, ptr %.val23.i415, i64 %i.bj
  %i.nu = tail call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %i.nt) #22, !srcloc !24 ; 2 uses
  %i.nv = icmp eq i16 %i.nu, -1
  br i1 %i.nv, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.nw = and i16 %i.nu, 8
  %.not.i416 = icmp eq i16 %i.nw, 0
  br i1 %.not.i416, label %gm_phy_write.exit419, label %bb.da

bb.da:                                            ; preds = %bb.cz
  tail call void @__const_udelay(i64 noundef 42950) #20
  %i.nx = add nuw nsw i32 %.01927.i414, 1         ; 2 uses
  %exitcond.not.i417 = icmp eq i32 %i.nx, 1000
  br i1 %exitcond.not.i417, label %bb.db, label %bb.cy, !llvm.loop !4

bb.db:                                            ; preds = %bb.da
  %i.ny = getelementptr i8, ptr %0, i64 8
  %i.nz = load ptr, ptr %i.ny, align 8
  %i.oa = getelementptr i8, ptr %i.nz, i64 200
  %i.ob = load ptr, ptr %i.c, align 8
  %i.oc = getelementptr i8, ptr %i.ob, i64 288
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.oa, ptr noundef nonnull @.str.41, ptr noundef %i.oc) #21
  br label %gm_phy_write.exit419

bb.dc:                                            ; preds = %bb.cy
  %i.od = getelementptr i8, ptr %0, i64 8
  %i.oe = load ptr, ptr %i.od, align 8
  %i.of = getelementptr i8, ptr %i.oe, i64 200
  %i.og = load ptr, ptr %i.c, align 8
  %i.oh = getelementptr i8, ptr %i.og, i64 288
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.of, ptr noundef nonnull @.str.40, ptr noundef %i.oh) #21
  br label %gm_phy_write.exit419

gm_phy_write.exit419:                             ; preds = %bb.cz, %bb.db, %bb.dc
  %.val22.i420 = load ptr, ptr %0, align 8
  %i.oi = getelementptr i8, ptr %.val22.i420, i64 %i.ep
  tail call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 %.2262, ptr elementtype(i16) %i.oi) #22, !srcloc !23
  %.val.i421 = load ptr, ptr %0, align 8
  %i.oj = getelementptr i8, ptr %.val.i421, i64 %i.es
  tail call void asm sideeffect "movw $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i16 0, ptr elementtype(i16) %i.oj) #22, !srcloc !23
  br label %bb.dd

bb.dd:                                            ; preds = %bb.df, %gm_phy_write.exit419
  %.01927.i422 = phi i32 [ 0, %gm_phy_write.exit419 ], [ %i.oo, %bb.df ]
  %.val23.i423 = load ptr, ptr %0, align 8
  %i.ok = getelementptr i8, ptr %.val23.i423, i64 %i.bj
  %i.ol = tail call i16 asm sideeffect "movw $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i16) %i.ok) #22, !srcloc !24 ; 2 uses
  %i.om = icmp eq i16 %i.ol, -1
  br i1 %i.om, label %bb.dh, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.on = and i16 %i.ol, 8
  %.not.i424 = icmp eq i16 %i.on, 0
  br i1 %.not.i424, label %gm_phy_write.exit427, label %bb.df

bb.df:                                            ; preds = %bb.de
  tail call void @__const_udelay(i64 noundef 42950) #20
  %i.oo = add nuw nsw i32 %.01927.i422, 1         ; 2 uses
  %exitcond.not.i425 = icmp eq i32 %i.oo, 1000
  br i1 %exitcond.not.i425, label %bb.dg, label %bb.dd, !llvm.loop !4

bb.dg:                                            ; preds = %bb.df
  %i.op = getelementptr i8, ptr %0, i64 8
  %i.oq = load ptr, ptr %i.op, align 8
  %i.or = getelementptr i8, ptr %i.oq, i64 200
  %i.os = load ptr, ptr %i.c, align 8
  %i.ot = getelementptr i8, ptr %i.os, i64 288
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %i.or, ptr noundef nonnull @.str.41, ptr noundef %i.ot) #21
  br label %gm_phy_write.exit427

bb.dh:                                            ; preds = %bb.dd
  %i.ou = getelementptr i8, ptr %0, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8
  %i.ow = getelementptr i8, ptr %i.ov, i64 200
  %i.ox = load ptr, ptr %i.c, align 8
  %i.oy = getelementptr i8, ptr %i.ox, i64 288
end_hunk_0
