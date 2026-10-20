Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 85
begin_hunk_0_@stbi__jpeg_load:bb.a
  %i.si = load i8, ptr %i.sh, align 1
  %i.sj = zext i8 %i.si to i32                    ; 3 uses
  %i.sk = load i32, ptr %i.z, align 4             ; 2 uses
  %i.sl = icmp slt i32 %i.sk, %i.sj
  br i1 %i.sl, label %.critedge.sink.split.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.sm = shl i32 %i.sd, %i.sj
  store i32 %i.sm, ptr %i.aa, align 8
  %i.sn = sub nuw nsw i32 %i.sk, %i.sj            ; 2 uses
  store i32 %i.sn, ptr %i.z, align 4
  br label %stbi__jpeg_huff_decode.exit.i.i.i.i

bb.cb:                                            ; preds = %bb.by
  %i.so = lshr i32 %i.sd, 16
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %bb.cb
  %indvars.iv.i.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.i, %bb.cc ], [ 10, %bb.cb ] ; 5 uses
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv.i.i.i.i.i
  %i.sq = load i32, ptr %i.sp, align 4
  %i.sr = icmp ult i32 %i.so, %i.sq
  %indvars.iv.next.i.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i.i, 1
  br i1 %i.sr, label %bb.cd, label %bb.cc

bb.cd:                                            ; preds = %bb.cc
  %i.ss = trunc nuw nsw i64 %indvars.iv.i.i.i.i.i to i32 ; 5 uses
  %i.st = icmp eq i64 %indvars.iv.i.i.i.i.i, 17
  %i.su = load i32, ptr %i.z, align 4             ; 3 uses
  br i1 %i.st, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.sv = add nsw i32 %i.su, -16
  store i32 %i.sv, ptr %i.z, align 4
  br label %.critedge.sink.split.i.i

bb.cf:                                            ; preds = %bb.cd
  %i.sw = icmp slt i32 %i.su, %i.ss
  br i1 %i.sw, label %.critedge.sink.split.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.sx = sub nsw i32 32, %i.ss
  %i.sy = lshr i32 %i.sd, %i.sx
  %notmask.i.i.i.i.i = shl nsw i32 -1, %i.ss
  %i.sz = xor i32 %notmask.i.i.i.i.i, -1
  %i.ta = and i32 %i.sy, %i.sz
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.ra, i64 %indvars.iv.i.i.i.i.i
  %i.tc = load i32, ptr %i.tb, align 4
  %i.td = add i32 %i.tc, %i.ta                    ; 2 uses
  %or.cond.i.i.i.i.i = icmp ugt i32 %i.td, 255
  br i1 %or.cond.i.i.i.i.i, label %.critedge.sink.split.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.te = sub nuw nsw i32 %i.su, %i.ss            ; 2 uses
  store i32 %i.te, ptr %i.z, align 4
  %i.tf = shl i32 %i.sd, %i.ss
  store i32 %i.tf, ptr %i.aa, align 8
  %i.tg = zext nneg i32 %i.td to i64
  br label %stbi__jpeg_huff_decode.exit.i.i.i.i

stbi__jpeg_huff_decode.exit.i.i.i.i:              ; preds = %bb.ch, %bb.ca
  %i.th = phi i32 [ %i.te, %bb.ch ], [ %i.sn, %bb.ca ] ; 4 uses
  %.pn307.i.i.i.i = phi i64 [ %i.tg, %bb.ch ], [ %i.sg, %bb.ca ]
  %.1.i.in.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.qy, i64 %.pn307.i.i.i.i
  %.1.i.in.i.i.i.i = load i8, ptr %.1.i.in.in.i.i.i.i, align 1 ; 2 uses
  %.1.i.i.i.i.i = zext i8 %.1.i.in.i.i.i.i to i32 ; 2 uses
  %i.ti = and i32 %.1.i.i.i.i.i, 15               ; 7 uses
  %i.tj = lshr i32 %.1.i.i.i.i.i, 4               ; 8 uses
  %i.tk = icmp eq i32 %i.ti, 0
  br i1 %i.tk, label %bb.ci, label %bb.cp

bb.ci:                                            ; preds = %stbi__jpeg_huff_decode.exit.i.i.i.i
  %i.tl = icmp ult i8 %.1.i.in.i.i.i.i, -16
  br i1 %i.tl, label %bb.cj, label %bb.co

bb.cj:                                            ; preds = %bb.ci
  %i.tm = shl nuw nsw i32 1, %i.tj
  store i32 %i.tm, ptr %i.ai, align 4
  %.not167.i.i.i.i = icmp eq i32 %i.tj, 0
  br i1 %.not167.i.i.i.i, label %stbi__jpeg_decode_block_prog_ac.exit.thread.sink.split.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.tn = icmp slt i32 %i.th, %i.tj
  br i1 %i.tn, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  %.pre.i.i.i.i.i = load i32, ptr %i.z, align 4
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.to = phi i32 [ %.pre.i.i.i.i.i, %bb.cl ], [ %i.th, %bb.ck ] ; 2 uses
  %i.tp = icmp slt i32 %i.to, %i.tj
  br i1 %i.tp, label %stbi__jpeg_get_bits.exit.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.tq = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.tr = call i32 @llvm.fshl.i32(i32 %i.tq, i32 %i.tq, i32 range(i32 1, 15) %i.tj) ; 2 uses
  %notmask.i170.i.i.i.i = shl nsw i32 -1, %i.tj   ; 2 uses
  %i.ts = xor i32 %notmask.i170.i.i.i.i, -1
  %i.tt = and i32 %i.tr, %notmask.i170.i.i.i.i
  store i32 %i.tt, ptr %i.aa, align 8
  %i.tu = and i32 %i.tr, %i.ts
  %i.tv = sub nuw nsw i32 %i.to, %i.tj
  store i32 %i.tv, ptr %i.z, align 4
  %i.tw = add nsw i32 %i.tu, -1
  br label %stbi__jpeg_get_bits.exit.i.i.i.i

stbi__jpeg_get_bits.exit.i.i.i.i:                 ; preds = %bb.cn, %bb.cm
  %.0.i.i.i.i.i = phi i32 [ %i.tw, %bb.cn ], [ -1, %bb.cm ]
  %i.tx = load i32, ptr %i.ai, align 4
  %i.ty = add i32 %i.tx, %.0.i.i.i.i.i
  br label %stbi__jpeg_decode_block_prog_ac.exit.thread.sink.split.i.i.i

bb.co:                                            ; preds = %bb.ci
  %i.tz = add nsw i32 %.0120.i.i.i.i, 16
  br label %bb.ct

bb.cp:                                            ; preds = %stbi__jpeg_huff_decode.exit.i.i.i.i
  %i.ua = add nsw i32 %i.tj, %.0120.i.i.i.i       ; 2 uses
  %i.ub = add nsw i32 %i.ua, 1
  %i.uc = sext i32 %i.ua to i64
  %i.ud = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %i.uc
  %i.ue = load i8, ptr %i.ud, align 1
  %i.uf = icmp slt i32 %i.th, %i.ti
  br i1 %i.uf, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  %.pre.i173.i.i.i.i = load i32, ptr %i.z, align 4
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.ug = phi i32 [ %.pre.i173.i.i.i.i, %bb.cq ], [ %i.th, %bb.cp ] ; 2 uses
  %i.uh = icmp slt i32 %i.ug, %i.ti
  br i1 %i.uh, label %stbi__extend_receive.exit.i.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ui = load i32, ptr %i.aa, align 8            ; 3 uses
  %i.uj = call i32 @llvm.fshl.i32(i32 %i.ui, i32 %i.ui, i32 range(i32 1, 16) %i.ti) ; 2 uses
  %i.uk = zext nneg i32 %i.ti to i64
  %notmask.i171.i.i.i.i = shl nsw i32 -1, %i.ti   ; 2 uses
  %i.ul = xor i32 %notmask.i171.i.i.i.i, -1
  %i.um = and i32 %i.uj, %notmask.i171.i.i.i.i
  store i32 %i.um, ptr %i.aa, align 8
  %i.un = and i32 %i.uj, %i.ul
  %i.uo = sub nuw nsw i32 %i.ug, %i.ti
  store i32 %i.uo, ptr %i.z, align 4
  %i.up = getelementptr inbounds nuw [4 x i8], ptr @stbi__jbias, i64 %i.uk
  %i.uq = load i32, ptr %i.up, align 4
  %.inv.i.i.i.i.i = icmp slt i32 %i.ui, 0
  %i.ur = select i1 %.inv.i.i.i.i.i, i32 0, i32 %i.uq
  %i.us = add i32 %i.ur, %i.un
  br label %stbi__extend_receive.exit.i.i.i.i

stbi__extend_receive.exit.i.i.i.i:                ; preds = %bb.cs, %bb.cr
  %.0.i172.i.i.i.i = phi i32 [ %i.us, %bb.cs ], [ 0, %bb.cr ]
  %i.ut = shl i32 %.0.i172.i.i.i.i, %i.qv
  %i.uu = trunc i32 %i.ut to i16
  %i.uv = zext i8 %i.ue to i64
  %i.uw = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.uv
  store i16 %i.uu, ptr %i.uw, align 2
  br label %bb.ct

bb.ct:                                            ; preds = %stbi__extend_receive.exit.i.i.i.i, %bb.co, %bb.bv
  %.4124.ph.i.i.i.i = phi i32 [ %i.tz, %bb.co ], [ %i.ub, %stbi__extend_receive.exit.i.i.i.i ], [ %i.rs, %bb.bv ] ; 2 uses
  %i.ux = load i32, ptr %i.v, align 8
  %.not168.i.i.i.i = icmp sgt i32 %.4124.ph.i.i.i.i, %i.ux
  br i1 %.not168.i.i.i.i, label %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i, label %bb.br, !llvm.loop !47

bb.cu:                                            ; preds = %bb.bo
  br i1 %.not165.i.i.i.i, label %.preheader226.i.i.i.i, label %bb.cv

.preheader226.i.i.i.i:                            ; preds = %bb.cu
  %i.uy = getelementptr inbounds nuw i8, ptr %i.qr, i64 1280
  %i.uz = getelementptr inbounds nuw i8, ptr %i.qr, i64 1024
  %i.va = getelementptr inbounds nuw i8, ptr %i.qr, i64 1540
  %i.vb = getelementptr inbounds nuw i8, ptr %i.qr, i64 1612
  %sext155.i.i.i.i = shl i32 65536, %i.qv
  %i.vc = ashr exact i32 %sext155.i.i.i.i, 16     ; 4 uses
  %i.vd = sub nsw i32 0, %i.vc
  %i.ve = trunc nsw i32 %i.vc to i16              ; 2 uses
  br label %bb.da

bb.cv:                                            ; preds = %bb.cu
  %i.vf = add nsw i32 %i.qw, -1
  store i32 %i.vf, ptr %i.ai, align 4
  %i.vg = load i32, ptr %i.v, align 8
  %.not162251.i.i.i.i = icmp sgt i32 %i.qj, %i.vg
  br i1 %.not162251.i.i.i.i, label %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cv
  %i.vh = shl i32 65536, %i.qv
  %i.vi = ashr exact i32 %i.vh, 16                ; 2 uses
  %i.vj = trunc nsw i32 %i.vi to i16              ; 2 uses
  %i.vk = sext i32 %i.qj to i64
  %i.vl = sub i16 0, %i.vj
  br label %bb.cw

bb.cw:                                            ; preds = %stbi__jpeg_get_bit.exit.thread.i.i.i.i, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %i.vk, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %stbi__jpeg_get_bit.exit.thread.i.i.i.i ] ; 3 uses
  %i.vm = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %indvars.iv.i.i.i.i
  %i.vn = load i8, ptr %i.vm, align 1
  %i.vo = zext i8 %i.vn to i64
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.vo ; 3 uses
  %i.vq = load i16, ptr %i.vp, align 2
  %.not163.i.i.i.i = icmp eq i16 %i.vq, 0
  br i1 %.not163.i.i.i.i, label %stbi__jpeg_get_bit.exit.thread.i.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.vr = load i32, ptr %i.z, align 4             ; 2 uses
  %i.vs = icmp slt i32 %i.vr, 1
  br i1 %i.vs, label %bb.cy, label %stbi__jpeg_get_bit.exit.i.i.i.i

bb.cy:                                            ; preds = %bb.cx
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  %.pr.i.i.i.i.i = load i32, ptr %i.z, align 4    ; 2 uses
  %i.vt = icmp slt i32 %.pr.i.i.i.i.i, 1
  br i1 %i.vt, label %stbi__jpeg_get_bit.exit.thread.i.i.i.i, label %stbi__jpeg_get_bit.exit.i.i.i.i

stbi__jpeg_get_bit.exit.i.i.i.i:                  ; preds = %bb.cy, %bb.cx
  %i.vu = phi i32 [ %.pr.i.i.i.i.i, %bb.cy ], [ %i.vr, %bb.cx ]
  %i.vv = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.vw = shl i32 %i.vv, 1
  store i32 %i.vw, ptr %i.aa, align 8
  %i.vx = add nsw i32 %i.vu, -1
  store i32 %i.vx, ptr %i.z, align 4
  %.not164.i.i.i.i = icmp sgt i32 %i.vv, -1
  br i1 %.not164.i.i.i.i, label %stbi__jpeg_get_bit.exit.thread.i.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %stbi__jpeg_get_bit.exit.i.i.i.i
  %i.vy = load i16, ptr %i.vp, align 2            ; 3 uses
  %i.vz = sext i16 %i.vy to i32
  %i.wa = and i32 %i.vi, %i.vz
  %i.wb = icmp eq i32 %i.wa, 0
  br i1 %i.wb, label %stbi__jpeg_get_bit.exit.thread.sink.split.i.i.i.i, label %stbi__jpeg_get_bit.exit.thread.i.i.i.i

stbi__jpeg_get_bit.exit.thread.sink.split.i.i.i.i: ; preds = %bb.cz
  %i.wc = icmp sgt i16 %i.vy, 0
  %.sink.p.i.i.i.i = select i1 %i.wc, i16 %i.vj, i16 %i.vl
  %.sink.i.i.i.i = add i16 %.sink.p.i.i.i.i, %i.vy
  store i16 %.sink.i.i.i.i, ptr %i.vp, align 2
  br label %stbi__jpeg_get_bit.exit.thread.i.i.i.i

stbi__jpeg_get_bit.exit.thread.i.i.i.i:           ; preds = %stbi__jpeg_get_bit.exit.thread.sink.split.i.i.i.i, %bb.cz, %stbi__jpeg_get_bit.exit.i.i.i.i, %bb.cy, %bb.cw
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, 1
  %i.wd = load i32, ptr %i.v, align 8
  %i.we = sext i32 %i.wd to i64
  %.not162.not.i.i.i.i = icmp slt i64 %indvars.iv.i.i.i.i, %i.we
  br i1 %.not162.not.i.i.i.i, label %bb.cw, label %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i, !llvm.loop !48

bb.da:                                            ; preds = %.loopexit225.i.i.i.i, %.preheader226.i.i.i.i
  %.6.i.i.i.i = phi i32 [ %.9.i.i.i.i, %.loopexit225.i.i.i.i ], [ %i.qj, %.preheader226.i.i.i.i ] ; 3 uses
  %i.wf = load i32, ptr %i.z, align 4
  %i.wg = icmp slt i32 %i.wf, 16
  br i1 %i.wg, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.wh = load i32, ptr %i.aa, align 8            ; 5 uses
  %i.wi = lshr i32 %i.wh, 23
  %i.wj = zext nneg i32 %i.wi to i64
  %i.wk = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.wj
  %i.wl = load i8, ptr %i.wk, align 1             ; 2 uses
  %.not.i175.i.i.i.i = icmp eq i8 %i.wl, -1
  br i1 %.not.i175.i.i.i.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.wm = zext i8 %i.wl to i64                    ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.uy, i64 %i.wm
  %i.wo = load i8, ptr %i.wn, align 1
  %i.wp = zext i8 %i.wo to i32                    ; 3 uses
  %i.wq = load i32, ptr %i.z, align 4             ; 2 uses
  %i.wr = icmp slt i32 %i.wq, %i.wp
  br i1 %i.wr, label %.critedge.sink.split.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ws = shl i32 %i.wh, %i.wp                    ; 2 uses
  store i32 %i.ws, ptr %i.aa, align 8
  %i.wt = sub nuw nsw i32 %i.wq, %i.wp            ; 2 uses
  store i32 %i.wt, ptr %i.z, align 4
  br label %stbi__jpeg_huff_decode.exit181.i.i.i.i

bb.df:                                            ; preds = %bb.dc
  %i.wu = lshr i32 %i.wh, 16
  br label %bb.dg

bb.dg:                                            ; preds = %bb.dg, %bb.df
  %indvars.iv.i177.i.i.i.i = phi i64 [ %indvars.iv.next.i178.i.i.i.i, %bb.dg ], [ 10, %bb.df ] ; 5 uses
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.va, i64 %indvars.iv.i177.i.i.i.i
  %i.ww = load i32, ptr %i.wv, align 4
  %i.wx = icmp ult i32 %i.wu, %i.ww
  %indvars.iv.next.i178.i.i.i.i = add nuw nsw i64 %indvars.iv.i177.i.i.i.i, 1
  br i1 %i.wx, label %bb.dh, label %bb.dg

bb.dh:                                            ; preds = %bb.dg
  %i.wy = trunc nuw nsw i64 %indvars.iv.i177.i.i.i.i to i32 ; 5 uses
  %i.wz = icmp eq i64 %indvars.iv.i177.i.i.i.i, 17
  %i.xa = load i32, ptr %i.z, align 4             ; 3 uses
  br i1 %i.wz, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.xb = add nsw i32 %i.xa, -16
  store i32 %i.xb, ptr %i.z, align 4
  br label %.critedge.sink.split.i.i

bb.dj:                                            ; preds = %bb.dh
  %i.xc = icmp slt i32 %i.xa, %i.wy
  br i1 %i.xc, label %.critedge.sink.split.i.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.xd = sub nsw i32 32, %i.wy
  %i.xe = lshr i32 %i.wh, %i.xd
  %notmask.i179.i.i.i.i = shl nsw i32 -1, %i.wy
  %i.xf = xor i32 %notmask.i179.i.i.i.i, -1
  %i.xg = and i32 %i.xe, %i.xf
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.vb, i64 %indvars.iv.i177.i.i.i.i
  %i.xi = load i32, ptr %i.xh, align 4
  %i.xj = add i32 %i.xi, %i.xg                    ; 2 uses
  %or.cond.i180.i.i.i.i = icmp ugt i32 %i.xj, 255
  br i1 %or.cond.i180.i.i.i.i, label %.critedge.sink.split.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.xk = sub nuw nsw i32 %i.xa, %i.wy            ; 2 uses
  store i32 %i.xk, ptr %i.z, align 4
  %i.xl = shl i32 %i.wh, %i.wy                    ; 2 uses
  store i32 %i.xl, ptr %i.aa, align 8
  %i.xm = zext nneg i32 %i.xj to i64
  br label %stbi__jpeg_huff_decode.exit181.i.i.i.i

stbi__jpeg_huff_decode.exit181.i.i.i.i:           ; preds = %bb.dl, %bb.de
  %i.xn = phi i32 [ %i.xl, %bb.dl ], [ %i.ws, %bb.de ]
  %i.xo = phi i32 [ %i.xk, %bb.dl ], [ %i.wt, %bb.de ] ; 4 uses
  %.pn.i.i.i.i = phi i64 [ %i.xm, %bb.dl ], [ %i.wm, %bb.de ]
  %.1.i176.in.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.uz, i64 %.pn.i.i.i.i
  %.1.i176.in.i.i.i.i = load i8, ptr %.1.i176.in.in.i.i.i.i, align 1 ; 2 uses
  %.1.i176.i.i.i.i = zext i8 %.1.i176.in.i.i.i.i to i32 ; 2 uses
  %i.xp = and i32 %.1.i176.i.i.i.i, 15
  %i.xq = lshr i32 %.1.i176.i.i.i.i, 4            ; 8 uses
  switch i32 %i.xp, label %.critedge.sink.split.i.i [
    i32 0, label %bb.dm
    i32 1, label %bb.ds
  ]

bb.dm:                                            ; preds = %stbi__jpeg_huff_decode.exit181.i.i.i.i
  %i.xr = icmp ult i8 %.1.i176.in.i.i.i.i, -16
  br i1 %i.xr, label %bb.dn, label %bb.du

bb.dn:                                            ; preds = %bb.dm
  %notmask.i.i.i.i = shl nsw i32 -1, %i.xq        ; 2 uses
  %i.xs = xor i32 %notmask.i.i.i.i, -1            ; 2 uses
  store i32 %i.xs, ptr %i.ai, align 4
  %.not156.i.i.i.i = icmp eq i32 %i.xq, 0
  br i1 %.not156.i.i.i.i, label %bb.du, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.xt = icmp slt i32 %i.xo, %i.xq
  br i1 %i.xt, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  %.pre.i184.i.i.i.i = load i32, ptr %i.z, align 4
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %i.xu = phi i32 [ %.pre.i184.i.i.i.i, %bb.dp ], [ %i.xo, %bb.do ] ; 2 uses
  %i.xv = icmp slt i32 %i.xu, %i.xq
  br i1 %i.xv, label %stbi__jpeg_get_bits.exit185.i.i.i.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.xw = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.xx = call i32 @llvm.fshl.i32(i32 %i.xw, i32 %i.xw, i32 range(i32 1, 15) %i.xq) ; 2 uses
  %i.xy = and i32 %i.xx, %notmask.i.i.i.i
  store i32 %i.xy, ptr %i.aa, align 8
  %i.xz = and i32 %i.xx, %i.xs
  %i.ya = sub nuw nsw i32 %i.xu, %i.xq
  store i32 %i.ya, ptr %i.z, align 4
  br label %stbi__jpeg_get_bits.exit185.i.i.i.i

stbi__jpeg_get_bits.exit185.i.i.i.i:              ; preds = %bb.dr, %bb.dq
  %.0.i183.i.i.i.i = phi i32 [ %i.xz, %bb.dr ], [ 0, %bb.dq ]
  %i.yb = load i32, ptr %i.ai, align 4
  %i.yc = add nsw i32 %i.yb, %.0.i183.i.i.i.i
  store i32 %i.yc, ptr %i.ai, align 4
  br label %bb.du

bb.ds:                                            ; preds = %stbi__jpeg_huff_decode.exit181.i.i.i.i
  %i.yd = icmp slt i32 %i.xo, 1
  br i1 %i.yd, label %bb.dt, label %stbi__jpeg_get_bit.exit189.i.i.i.i

bb.dt:                                            ; preds = %bb.ds
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  %.pr.i188.i.i.i.i = load i32, ptr %i.z, align 4 ; 2 uses
  %i.ye = icmp slt i32 %.pr.i188.i.i.i.i, 1
  br i1 %i.ye, label %stbi__jpeg_get_bit.exit189.thread.i.i.i.i, label %.stbi__jpeg_get_bit.exit189_crit_edge.i.i.i.i

.stbi__jpeg_get_bit.exit189_crit_edge.i.i.i.i:    ; preds = %bb.dt
  %.pre.i.i55.i.i = load i32, ptr %i.aa, align 8
  br label %stbi__jpeg_get_bit.exit189.i.i.i.i

stbi__jpeg_get_bit.exit189.i.i.i.i:               ; preds = %.stbi__jpeg_get_bit.exit189_crit_edge.i.i.i.i, %bb.ds
  %i.yf = phi i32 [ %.pre.i.i55.i.i, %.stbi__jpeg_get_bit.exit189_crit_edge.i.i.i.i ], [ %i.xn, %bb.ds ] ; 2 uses
  %i.yg = phi i32 [ %.pr.i188.i.i.i.i, %.stbi__jpeg_get_bit.exit189_crit_edge.i.i.i.i ], [ %i.xo, %bb.ds ]
  %i.yh = shl i32 %i.yf, 1
  store i32 %i.yh, ptr %i.aa, align 8
  %i.yi = add nsw i32 %i.yg, -1
  store i32 %i.yi, ptr %i.z, align 4
  %.not154.i.i.i.i = icmp sgt i32 %i.yf, -1
  br i1 %.not154.i.i.i.i, label %stbi__jpeg_get_bit.exit189.thread.i.i.i.i, label %bb.du

stbi__jpeg_get_bit.exit189.thread.i.i.i.i:        ; preds = %stbi__jpeg_get_bit.exit189.i.i.i.i, %bb.dt
  br label %bb.du

bb.du:                                            ; preds = %stbi__jpeg_get_bit.exit189.thread.i.i.i.i, %stbi__jpeg_get_bit.exit189.i.i.i.i, %stbi__jpeg_get_bits.exit185.i.i.i.i, %bb.dn, %bb.dm
  %.0115.i.i.i.i = phi i32 [ %i.xq, %stbi__jpeg_get_bit.exit189.thread.i.i.i.i ], [ 15, %bb.dm ], [ 64, %bb.dn ], [ 64, %stbi__jpeg_get_bits.exit185.i.i.i.i ], [ %i.xq, %stbi__jpeg_get_bit.exit189.i.i.i.i ]
  %.0.i.i54.i.i = phi i32 [ %i.vd, %stbi__jpeg_get_bit.exit189.thread.i.i.i.i ], [ 0, %bb.dm ], [ 0, %bb.dn ], [ 0, %stbi__jpeg_get_bits.exit185.i.i.i.i ], [ %i.vc, %stbi__jpeg_get_bit.exit189.i.i.i.i ]
  %i.yj = load i32, ptr %i.v, align 8             ; 2 uses
  %.not157253.i.i.i.i = icmp sgt i32 %.6.i.i.i.i, %i.yj
  br i1 %.not157253.i.i.i.i, label %.loopexit225.i.i.i.i, label %.lr.ph256.preheader.i.i.i.i

.lr.ph256.preheader.i.i.i.i:                      ; preds = %bb.du
  %i.yk = sext i32 %.6.i.i.i.i to i64
  br label %.lr.ph256.i.i.i.i

.lr.ph256.i.i.i.i:                                ; preds = %stbi__jpeg_get_bit.exit193.thread.i.i.i.i, %.lr.ph256.preheader.i.i.i.i
  %indvars.iv266.i.i.i.i = phi i64 [ %i.yk, %.lr.ph256.preheader.i.i.i.i ], [ %indvars.iv.next267.i.i.i.i, %stbi__jpeg_get_bit.exit193.thread.i.i.i.i ] ; 3 uses
  %.1255.i.i.i.i = phi i32 [ %.0115.i.i.i.i, %.lr.ph256.preheader.i.i.i.i ], [ %.3.i.i.i.i, %stbi__jpeg_get_bit.exit193.thread.i.i.i.i ] ; 7 uses
  %indvars.iv.next267.i.i.i.i = add nsw i64 %indvars.iv266.i.i.i.i, 1 ; 3 uses
  %i.yl = getelementptr inbounds i8, ptr @stbi__jpeg_dezigzag, i64 %indvars.iv266.i.i.i.i
  %i.ym = load i8, ptr %i.yl, align 1
  %i.yn = zext i8 %i.ym to i64
  %i.yo = getelementptr inbounds nuw [2 x i8], ptr %i.qi, i64 %i.yn ; 5 uses
  %i.yp = load i16, ptr %i.yo, align 2
  %.not158.i.i.i.i = icmp eq i16 %i.yp, 0
  br i1 %.not158.i.i.i.i, label %bb.eb, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph256.i.i.i.i
  %i.yq = load i32, ptr %i.z, align 4             ; 2 uses
  %i.yr = icmp slt i32 %i.yq, 1
  br i1 %i.yr, label %bb.dw, label %stbi__jpeg_get_bit.exit193.i.i.i.i

bb.dw:                                            ; preds = %bb.dv
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  %.pr.i192.i.i.i.i = load i32, ptr %i.z, align 4 ; 2 uses
  %i.ys = icmp slt i32 %.pr.i192.i.i.i.i, 1
  br i1 %i.ys, label %stbi__jpeg_get_bit.exit193.thread.i.i.i.i, label %stbi__jpeg_get_bit.exit193.i.i.i.i

stbi__jpeg_get_bit.exit193.i.i.i.i:               ; preds = %bb.dw, %bb.dv
  %i.yt = phi i32 [ %.pr.i192.i.i.i.i, %bb.dw ], [ %i.yq, %bb.dv ]
  %i.yu = load i32, ptr %i.aa, align 8            ; 2 uses
  %i.yv = shl i32 %i.yu, 1
  store i32 %i.yv, ptr %i.aa, align 8
  %i.yw = add nsw i32 %i.yt, -1
  store i32 %i.yw, ptr %i.z, align 4
  %.not159.i.i.i.i = icmp sgt i32 %i.yu, -1
  br i1 %.not159.i.i.i.i, label %stbi__jpeg_get_bit.exit193.thread.i.i.i.i, label %bb.dx

bb.dx:                                            ; preds = %stbi__jpeg_get_bit.exit193.i.i.i.i
  %i.yx = load i16, ptr %i.yo, align 2            ; 4 uses
  %i.yy = sext i16 %i.yx to i32
  %i.yz = and i32 %i.vc, %i.yy
  %i.za = icmp eq i32 %i.yz, 0
  br i1 %i.za, label %bb.dy, label %stbi__jpeg_get_bit.exit193.thread.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  %i.zb = icmp sgt i16 %i.yx, 0
  br i1 %i.zb, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.zc = add i16 %i.yx, %i.ve
  store i16 %i.zc, ptr %i.yo, align 2
  br label %stbi__jpeg_get_bit.exit193.thread.i.i.i.i

bb.ea:                                            ; preds = %bb.dy
  %i.zd = sub i16 %i.yx, %i.ve
  store i16 %i.zd, ptr %i.yo, align 2
  br label %stbi__jpeg_get_bit.exit193.thread.i.i.i.i

bb.eb:                                            ; preds = %.lr.ph256.i.i.i.i
  %i.ze = icmp eq i32 %.1255.i.i.i.i, 0
  br i1 %i.ze, label %.thread222.i.i.i.i, label %bb.ec

.thread222.i.i.i.i:                               ; preds = %bb.eb
  %i.zf = trunc nsw i64 %indvars.iv.next267.i.i.i.i to i32
  %i.zg = trunc i32 %.0.i.i54.i.i to i16
  store i16 %i.zg, ptr %i.yo, align 2
  %.pre269.i.i.i.i = load i32, ptr %i.v, align 8
  br label %.loopexit225.i.i.i.i

bb.ec:                                            ; preds = %bb.eb
  %i.zh = add nsw i32 %.1255.i.i.i.i, -1
  br label %stbi__jpeg_get_bit.exit193.thread.i.i.i.i

stbi__jpeg_get_bit.exit193.thread.i.i.i.i:        ; preds = %bb.ec, %bb.ea, %bb.dz, %bb.dx, %stbi__jpeg_get_bit.exit193.i.i.i.i, %bb.dw
  %.3.i.i.i.i = phi i32 [ %i.zh, %bb.ec ], [ %.1255.i.i.i.i, %bb.dz ], [ %.1255.i.i.i.i, %bb.ea ], [ %.1255.i.i.i.i, %bb.dx ], [ %.1255.i.i.i.i, %stbi__jpeg_get_bit.exit193.i.i.i.i ], [ %.1255.i.i.i.i, %bb.dw ]
  %i.zi = load i32, ptr %i.v, align 8             ; 2 uses
  %i.zj = sext i32 %i.zi to i64
  %.not157.not.i.i.i.i = icmp slt i64 %indvars.iv266.i.i.i.i, %i.zj
  br i1 %.not157.not.i.i.i.i, label %.lr.ph256.i.i.i.i, label %.loopexit225.loopexit.i.i.i.i

.loopexit225.loopexit.i.i.i.i:                    ; preds = %stbi__jpeg_get_bit.exit193.thread.i.i.i.i
  %i.zk = trunc nsw i64 %indvars.iv.next267.i.i.i.i to i32
  br label %.loopexit225.i.i.i.i

.loopexit225.i.i.i.i:                             ; preds = %.loopexit225.loopexit.i.i.i.i, %.thread222.i.i.i.i, %bb.du
  %i.zl = phi i32 [ %.pre269.i.i.i.i, %.thread222.i.i.i.i ], [ %i.yj, %bb.du ], [ %i.zi, %.loopexit225.loopexit.i.i.i.i ]
  %.9.i.i.i.i = phi i32 [ %i.zf, %.thread222.i.i.i.i ], [ %.6.i.i.i.i, %bb.du ], [ %i.zk, %.loopexit225.loopexit.i.i.i.i ] ; 2 uses
  %.not161.i.i.i.i = icmp sgt i32 %.9.i.i.i.i, %i.zl
  br i1 %.not161.i.i.i.i, label %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i, label %bb.da, !llvm.loop !49

stbi__jpeg_decode_block_prog_ac.exit.thread.sink.split.i.i.i: ; preds = %stbi__jpeg_get_bits.exit.i.i.i.i, %bb.cj, %bb.bq
  %.sink.i.i.i = phi i32 [ %i.rb, %bb.bq ], [ 0, %bb.cj ], [ %i.ty, %stbi__jpeg_get_bits.exit.i.i.i.i ]
  store i32 %.sink.i.i.i, ptr %i.ai, align 4
  br label %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i

stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i: ; preds = %stbi__jpeg_get_bit.exit.thread.i.i.i.i, %.loopexit225.i.i.i.i, %bb.ct, %stbi__jpeg_decode_block_prog_ac.exit.thread.sink.split.i.i.i, %bb.cv, %bb.bn
  %i.zm = load i32, ptr %i.ah, align 4            ; 2 uses
  %i.zn = add nsw i32 %i.zm, -1
  store i32 %i.zn, ptr %i.ah, align 4
  %i.zo = icmp slt i32 %i.zm, 2
  br i1 %i.zo, label %bb.ed, label %bb.eh

bb.ed:                                            ; preds = %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i
  %i.zp = load i32, ptr %i.z, align 4
  %i.zq = icmp slt i32 %i.zp, 24
  br i1 %i.zq, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.zr = load i8, ptr %i.ag, align 8             ; 2 uses
  %i.zs = and i8 %i.zr, -8
  %or.cond232.i.i.i = icmp eq i8 %i.zs, -48
  br i1 %or.cond232.i.i.i, label %bb.eg, label %stbi__parse_entropy_coded_data.exit.thread.i.i

bb.eg:                                            ; preds = %bb.ef
  store i32 0, ptr %i.z, align 4
  store i32 0, ptr %i.aa, align 8
  store i32 0, ptr %i.ab, align 4
  store i32 0, ptr %i.ac, align 8
  store i32 0, ptr %i.ad, align 8
  store i32 0, ptr %i.ae, align 8
  store i32 0, ptr %i.af, align 8
  store i8 -1, ptr %i.ag, align 8
  %i.zt = load i32, ptr %i.p, align 8             ; 2 uses
  %.not.i240.i.i.i = icmp eq i32 %i.zt, 0
  %spec.select.i241.i.i.i = select i1 %.not.i240.i.i.i, i32 2147483647, i32 %i.zt
  store i32 %spec.select.i241.i.i.i, ptr %i.ah, align 4
  store i32 0, ptr %i.ai, align 4
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %stbi__jpeg_decode_block_prog_ac.exit.thread.i.i.i
  %i.zu = add nuw nsw i32 %.0201287.i.i.i, 1      ; 2 uses
  %exitcond.not.i53.i.i = icmp eq i32 %i.zu, %i.pr
  br i1 %exitcond.not.i53.i.i, label %._crit_edge289.i.i.i, label %bb.bm, !llvm.loop !50

._crit_edge289.i.i.i:                             ; preds = %bb.eh
  %i.zv = add nuw nsw i32 %.0200290.i.i.i, 1      ; 2 uses
  %exitcond327.not.i.i.i = icmp eq i32 %i.zv, %i.pv
  br i1 %exitcond327.not.i.i.i, label %stbi__parse_entropy_coded_data.exit.threadthread-pre-split.i.i, label %.preheader262.i.i.i, !llvm.loop !51

.preheader267.i.i.i:                              ; preds = %.preheader267.lr.ph.i.i.i, %._crit_edge285.i.i.i
  %i.zw = phi i32 [ %i.acf, %._crit_edge285.i.i.i ], [ %i.ph, %.preheader267.lr.ph.i.i.i ]
  %i.zx = phi i32 [ %i.acg, %._crit_edge285.i.i.i ], [ %spec.select.i.i.i.i, %.preheader267.lr.ph.i.i.i ] ; 2 uses
  %i.zy = phi i32 [ %i.ach, %._crit_edge285.i.i.i ], [ %i.pj, %.preheader267.lr.ph.i.i.i ] ; 2 uses
  %.0198286.i.i.i = phi i32 [ %i.aci, %._crit_edge285.i.i.i ], [ 0, %.preheader267.lr.ph.i.i.i ] ; 2 uses
  %i.zz = icmp sgt i32 %i.zy, 0
  br i1 %i.zz, label %.preheader266.i.i.i, label %._crit_edge285.i.i.i

.preheader266.i.i.i:                              ; preds = %.preheader267.i.i.i, %bb.en
  %i.aaa = phi i32 [ %i.acb, %bb.en ], [ %i.zx, %.preheader267.i.i.i ]
  %.0199284.i.i.i = phi i32 [ %i.acc, %bb.en ], [ 0, %.preheader267.i.i.i ] ; 2 uses
  %i.aab = load i32, ptr %i.s, align 4            ; 2 uses
  %i.aac = icmp sgt i32 %i.aab, 0
  br i1 %i.aac, label %.lr.ph282.i.i.i, label %._crit_edge283.i.i.i

.lr.ph282.i.i.i:                                  ; preds = %.preheader266.i.i.i, %.critedge234.i.i.i
  %i.aad = phi i32 [ %i.abq, %.critedge234.i.i.i ], [ %i.aab, %.preheader266.i.i.i ] ; 2 uses
  %indvars.iv.i48.i.i = phi i64 [ %indvars.iv.next.i49.i.i, %.critedge234.i.i.i ], [ 0, %.preheader266.i.i.i ] ; 2 uses
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i48.i.i
  %i.aaf = load i32, ptr %i.aae, align 4          ; 2 uses
  %i.aag = sext i32 %i.aaf to i64
  %i.aah = getelementptr inbounds [96 x i8], ptr %i.k, i64 %i.aag ; 5 uses
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 8 ; 3 uses
  %i.aaj = load i32, ptr %i.aai, align 8          ; 2 uses
  %.not227279.i.i.i = icmp sgt i32 %i.aaj, 0
  br i1 %.not227279.i.i.i, label %.preheader264.lr.ph.i.i.i, label %.critedge234.i.i.i

.preheader264.lr.ph.i.i.i:                        ; preds = %.lr.ph282.i.i.i
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aah, i64 4 ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aah, i64 80
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aah, i64 88
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aah, i64 16
  %i.aao = load i32, ptr %i.aak, align 4          ; 2 uses
  %i.aap = icmp sgt i32 %i.aao, 0
  br i1 %i.aap, label %.preheader264.i.i.i, label %.critedge234.i.i.i

.preheader264.i.i.i:                              ; preds = %.preheader264.lr.ph.i.i.i, %._crit_edge.i50.i.i
  %i.aaq = phi i32 [ %i.abn, %._crit_edge.i50.i.i ], [ %i.aaj, %.preheader264.lr.ph.i.i.i ]
  %i.aar = phi i32 [ %i.abo, %._crit_edge.i50.i.i ], [ %i.aao, %.preheader264.lr.ph.i.i.i ] ; 3 uses
  %.0280.i.i.i = phi i32 [ %i.abp, %._crit_edge.i50.i.i ], [ 0, %.preheader264.lr.ph.i.i.i ] ; 2 uses
  %i.aas = icmp sgt i32 %i.aar, 0
  br i1 %i.aas, label %.lr.ph.i51.i.i, label %._crit_edge.i50.i.i

bb.ei:                                            ; preds = %.lr.ph.i51.i.i
  %i.aat = add nuw nsw i32 %.0196278.i.i.i, 1     ; 2 uses
  %i.aau = load i32, ptr %i.aak, align 4          ; 3 uses
  %i.aav = icmp slt i32 %i.aat, %i.aau
  br i1 %i.aav, label %.lr.ph.i51.i.i, label %._crit_edge.loopexit.i52.i.i, !llvm.loop !52

.lr.ph.i51.i.i:                                   ; preds = %.preheader264.i.i.i, %bb.ei
  %i.aaw = phi i32 [ %i.aau, %bb.ei ], [ %i.aar, %.preheader264.i.i.i ]
  %.0196278.i.i.i = phi i32 [ %i.aat, %bb.ei ], [ 0, %.preheader264.i.i.i ] ; 2 uses
  %i.aax = mul nuw nsw i32 %i.aaw, %.0199284.i.i.i
  %i.aay = add nsw i32 %i.aax, %.0196278.i.i.i
  %i.aaz = load i32, ptr %i.aai, align 8
  %i.aba = mul nsw i32 %i.aaz, %.0198286.i.i.i
  %i.abb = add nsw i32 %i.aba, %.0280.i.i.i
  %i.abc = load ptr, ptr %i.aal, align 8
  %i.abd = load i32, ptr %i.aam, align 8
  %i.abe = mul nsw i32 %i.abb, %i.abd
  %i.abf = add nsw i32 %i.aay, %i.abe
  %i.abg = shl nsw i32 %i.abf, 6
  %i.abh = sext i32 %i.abg to i64
  %i.abi = getelementptr inbounds [2 x i8], ptr %i.abc, i64 %i.abh
  %i.abj = load i32, ptr %i.aan, align 8
  %i.abk = sext i32 %i.abj to i64
  %i.abl = getelementptr inbounds [1680 x i8], ptr %i.al, i64 %i.abk
  %i.abm = call fastcc i32 @stbi__jpeg_decode_block_prog_dc(ptr noundef nonnull %i.d, ptr noundef %i.abi, ptr noundef %i.abl, i32 noundef %i.aaf)
  %.not226.not.i.i.i = icmp eq i32 %i.abm, 0
  br i1 %.not226.not.i.i.i, label %.loopexit401.i, label %bb.ei

._crit_edge.loopexit.i52.i.i:                     ; preds = %bb.ei
  %.pre.i.i.i = load i32, ptr %i.aai, align 8
  br label %._crit_edge.i50.i.i

._crit_edge.i50.i.i:                              ; preds = %._crit_edge.loopexit.i52.i.i, %.preheader264.i.i.i
  %i.abn = phi i32 [ %.pre.i.i.i, %._crit_edge.loopexit.i52.i.i ], [ %i.aaq, %.preheader264.i.i.i ] ; 2 uses
  %i.abo = phi i32 [ %i.aau, %._crit_edge.loopexit.i52.i.i ], [ %i.aar, %.preheader264.i.i.i ]
  %i.abp = add nuw nsw i32 %.0280.i.i.i, 1        ; 2 uses
  %.not227.i.i.i = icmp slt i32 %i.abp, %i.abn
  br i1 %.not227.i.i.i, label %.preheader264.i.i.i, label %.critedge234.loopexit.i.i.i, !llvm.loop !53

.critedge234.loopexit.i.i.i:                      ; preds = %._crit_edge.i50.i.i
  %.pre336.i.i.i = load i32, ptr %i.s, align 4
  br label %.critedge234.i.i.i

.critedge234.i.i.i:                               ; preds = %.critedge234.loopexit.i.i.i, %.preheader264.lr.ph.i.i.i, %.lr.ph282.i.i.i
  %i.abq = phi i32 [ %i.aad, %.lr.ph282.i.i.i ], [ %.pre336.i.i.i, %.critedge234.loopexit.i.i.i ], [ %i.aad, %.preheader264.lr.ph.i.i.i ] ; 2 uses
  %indvars.iv.next.i49.i.i = add nuw nsw i64 %indvars.iv.i48.i.i, 1 ; 2 uses
  %i.abr = sext i32 %i.abq to i64
  %i.abs = icmp slt i64 %indvars.iv.next.i49.i.i, %i.abr
  br i1 %i.abs, label %.lr.ph282.i.i.i, label %._crit_edge283.loopexit.i.i.i, !llvm.loop !54

._crit_edge283.loopexit.i.i.i:                    ; preds = %.critedge234.i.i.i
  %.pre337.i.i.i = load i32, ptr %i.ah, align 4
  br label %._crit_edge283.i.i.i

._crit_edge283.i.i.i:                             ; preds = %._crit_edge283.loopexit.i.i.i, %.preheader266.i.i.i
  %i.abt = phi i32 [ %.pre337.i.i.i, %._crit_edge283.loopexit.i.i.i ], [ %i.aaa, %.preheader266.i.i.i ] ; 2 uses
  %i.abu = add nsw i32 %i.abt, -1                 ; 2 uses
  store i32 %i.abu, ptr %i.ah, align 4
  %i.abv = icmp slt i32 %i.abt, 2
  br i1 %i.abv, label %bb.ej, label %bb.en

bb.ej:                                            ; preds = %._crit_edge283.i.i.i
  %i.abw = load i32, ptr %i.z, align 4
  %i.abx = icmp slt i32 %i.abw, 24
  br i1 %i.abx, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  call fastcc void @stbi__grow_buffer_unsafe(ptr noundef nonnull %i.d)
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.aby = load i8, ptr %i.ag, align 8            ; 2 uses
  %i.abz = and i8 %i.aby, -8
  %or.cond235.i.i.i = icmp eq i8 %i.abz, -48
  br i1 %or.cond235.i.i.i, label %bb.em, label %stbi__parse_entropy_coded_data.exit.thread.i.i

bb.em:                                            ; preds = %bb.el
  store i32 0, ptr %i.z, align 4
  store i32 0, ptr %i.aa, align 8
  store i32 0, ptr %i.ab, align 4
  store i32 0, ptr %i.ac, align 8
  store i32 0, ptr %i.ad, align 8
  store i32 0, ptr %i.ae, align 8
  store i32 0, ptr %i.af, align 8
  store i8 -1, ptr %i.ag, align 8
  %i.aca = load i32, ptr %i.p, align 8            ; 2 uses
  %.not.i242.i.i.i = icmp eq i32 %i.aca, 0
  %spec.select.i243.i.i.i = select i1 %.not.i242.i.i.i, i32 2147483647, i32 %i.aca ; 2 uses
  store i32 %spec.select.i243.i.i.i, ptr %i.ah, align 4
  store i32 0, ptr %i.ai, align 4
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %._crit_edge283.i.i.i
end_hunk_0
begin_hunk_1_@stbi__load_main:bb.a
  %i.amx = and i32 %i.amt, 3
  %i.amy = add nuw nsw i32 %i.amx, 3
  %i.amz = sext i32 %.050156.i.i.i.i.i.i.i to i64
  %i.ana = getelementptr i8, ptr %i.a, i64 %i.amz
  %i.anb = getelementptr i8, ptr %i.ana, i64 -1
  %i.anc = load i8, ptr %i.anb, align 1
  br label %bb.jt

bb.jl:                                            ; preds = %bb.jf
  %i.and = icmp slt i32 %i.alz, 3
  br i1 %i.and, label %.preheader159.i.i.i.i.i.i.i, label %stbi__zreceive.exit101.i.i.i.i.i.i.i

.preheader159.i.i.i.i.i.i.i:                      ; preds = %bb.jl, %stbi__zget8.exit.i.i100.i.i.i.i.i.i.i
  %.promoted141151.i.i.i.i = phi ptr [ %.promoted141150.i.i.i.i, %stbi__zget8.exit.i.i100.i.i.i.i.i.i.i ], [ %.promoted141158.i.i.i.i, %bb.jl ]
  %i.ane = phi ptr [ %i.ank, %stbi__zget8.exit.i.i100.i.i.i.i.i.i.i ], [ %.promoted141158.i.i.i.i, %bb.jl ] ; 4 uses
  %i.anf = phi i32 [ %i.ano, %stbi__zget8.exit.i.i100.i.i.i.i.i.i.i ], [ %i.alz, %bb.jl ] ; 5 uses
  %i.ang = phi i32 [ %i.ann, %stbi__zget8.exit.i.i100.i.i.i.i.i.i.i ], [ %i.aly, %bb.jl ] ; 3 uses
  %.highbits.i.i95.i.i.i.i.i.i.i = lshr i32 %i.ang, %i.anf
  %.not.i.i96.i.i.i.i.i.i.i = icmp eq i32 %.highbits.i.i95.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i96.i.i.i.i.i.i.i, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %.preheader159.i.i.i.i.i.i.i
  store ptr %.val20.i.i.i.i.i, ptr %9, align 8
  br label %stbi__zreceive.exit101.i.i.i.i.i.i.i

bb.jn:                                            ; preds = %.preheader159.i.i.i.i.i.i.i
  %.not3.i.i.i99.i.i.i.i.i.i.i = icmp ult ptr %i.ane, %.val20.i.i.i.i.i
  br i1 %.not3.i.i.i99.i.i.i.i.i.i.i, label %bb.jo, label %stbi__zget8.exit.i.i100.i.i.i.i.i.i.i

bb.jo:                                            ; preds = %bb.jn
  %i.anh = getelementptr inbounds nuw i8, ptr %i.ane, i64 1 ; 3 uses
  store ptr %i.anh, ptr %9, align 8
  %i.ani = load i8, ptr %i.ane, align 1
  %i.anj = zext i8 %i.ani to i32
  br label %stbi__zget8.exit.i.i100.i.i.i.i.i.i.i

stbi__zget8.exit.i.i100.i.i.i.i.i.i.i:            ; preds = %bb.jo, %bb.jn
  %.promoted141150.i.i.i.i = phi ptr [ %i.anh, %bb.jo ], [ %.promoted141151.i.i.i.i, %bb.jn ] ; 2 uses
  %i.ank = phi ptr [ %i.anh, %bb.jo ], [ %i.ane, %bb.jn ]
  %i.anl = phi i32 [ %i.anj, %bb.jo ], [ 0, %bb.jn ]
  %i.anm = shl i32 %i.anl, %i.anf
  %i.ann = or i32 %i.anm, %i.ang                  ; 3 uses
  store i32 %i.ann, ptr %i.aas, align 8
  %i.ano = add nsw i32 %i.anf, 8                  ; 3 uses
  store i32 %i.ano, ptr %i.aar, align 8
  %i.anp = icmp slt i32 %i.anf, 17
  br i1 %i.anp, label %.preheader159.i.i.i.i.i.i.i, label %stbi__zreceive.exit101.i.i.i.i.i.i.i, !llvm.loop !4

stbi__zreceive.exit101.i.i.i.i.i.i.i:             ; preds = %stbi__zget8.exit.i.i100.i.i.i.i.i.i.i, %bb.jm, %bb.jl
  %.promoted141149.i.i.i.i = phi ptr [ %.promoted141158.i.i.i.i, %bb.jl ], [ %.val20.i.i.i.i.i, %bb.jm ], [ %.promoted141150.i.i.i.i, %stbi__zget8.exit.i.i100.i.i.i.i.i.i.i ]
  %i.anq = phi i32 [ %i.alz, %bb.jl ], [ %i.anf, %bb.jm ], [ %i.ano, %stbi__zget8.exit.i.i100.i.i.i.i.i.i.i ]
  %i.anr = phi i32 [ %i.aly, %bb.jl ], [ %i.ang, %bb.jm ], [ %i.ann, %stbi__zget8.exit.i.i100.i.i.i.i.i.i.i ] ; 2 uses
  %i.ans = and i32 %i.anr, 7
  %i.ant = lshr i32 %i.anr, 3                     ; 2 uses
  store i32 %i.ant, ptr %i.aas, align 8
  %i.anu = add nsw i32 %i.anq, -3                 ; 2 uses
  store i32 %i.anu, ptr %i.aar, align 8
  %i.anv = add nuw nsw i32 %i.ans, 3
  br label %bb.jt

bb.jp:                                            ; preds = %bb.jf
  %i.anw = icmp slt i32 %i.alz, 7
  br i1 %i.anw, label %.preheader157.i.i.i.i.i.i.i, label %stbi__zreceive.exit109.i.i.i.i.i.i.i

.preheader157.i.i.i.i.i.i.i:                      ; preds = %bb.jp, %stbi__zget8.exit.i.i108.i.i.i.i.i.i.i
  %.promoted141157.i.i.i.i = phi ptr [ %.promoted141156.i.i.i.i, %stbi__zget8.exit.i.i108.i.i.i.i.i.i.i ], [ %.promoted141158.i.i.i.i, %bb.jp ]
  %i.anx = phi ptr [ %i.aod, %stbi__zget8.exit.i.i108.i.i.i.i.i.i.i ], [ %.promoted141158.i.i.i.i, %bb.jp ] ; 4 uses
  %i.any = phi i32 [ %i.aoh, %stbi__zget8.exit.i.i108.i.i.i.i.i.i.i ], [ %i.alz, %bb.jp ] ; 5 uses
  %i.anz = phi i32 [ %i.aog, %stbi__zget8.exit.i.i108.i.i.i.i.i.i.i ], [ %i.aly, %bb.jp ] ; 3 uses
  %.highbits.i.i103.i.i.i.i.i.i.i = lshr i32 %i.anz, %i.any
  %.not.i.i104.i.i.i.i.i.i.i = icmp eq i32 %.highbits.i.i103.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i104.i.i.i.i.i.i.i, label %bb.jr, label %bb.jq

bb.jq:                                            ; preds = %.preheader157.i.i.i.i.i.i.i
  store ptr %.val20.i.i.i.i.i, ptr %9, align 8
  br label %stbi__zreceive.exit109.i.i.i.i.i.i.i

bb.jr:                                            ; preds = %.preheader157.i.i.i.i.i.i.i
  %.not3.i.i.i107.i.i.i.i.i.i.i = icmp ult ptr %i.anx, %.val20.i.i.i.i.i
  br i1 %.not3.i.i.i107.i.i.i.i.i.i.i, label %bb.js, label %stbi__zget8.exit.i.i108.i.i.i.i.i.i.i

bb.js:                                            ; preds = %bb.jr
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anx, i64 1 ; 3 uses
  store ptr %i.aoa, ptr %9, align 8
  %i.aob = load i8, ptr %i.anx, align 1
  %i.aoc = zext i8 %i.aob to i32
  br label %stbi__zget8.exit.i.i108.i.i.i.i.i.i.i

stbi__zget8.exit.i.i108.i.i.i.i.i.i.i:            ; preds = %bb.js, %bb.jr
  %.promoted141156.i.i.i.i = phi ptr [ %i.aoa, %bb.js ], [ %.promoted141157.i.i.i.i, %bb.jr ] ; 2 uses
  %i.aod = phi ptr [ %i.aoa, %bb.js ], [ %i.anx, %bb.jr ]
  %i.aoe = phi i32 [ %i.aoc, %bb.js ], [ 0, %bb.jr ]
  %i.aof = shl i32 %i.aoe, %i.any
  %i.aog = or i32 %i.aof, %i.anz                  ; 3 uses
  store i32 %i.aog, ptr %i.aas, align 8
  %i.aoh = add nsw i32 %i.any, 8                  ; 3 uses
  store i32 %i.aoh, ptr %i.aar, align 8
  %i.aoi = icmp slt i32 %i.any, 17
  br i1 %i.aoi, label %.preheader157.i.i.i.i.i.i.i, label %stbi__zreceive.exit109.i.i.i.i.i.i.i, !llvm.loop !4

stbi__zreceive.exit109.i.i.i.i.i.i.i:             ; preds = %stbi__zget8.exit.i.i108.i.i.i.i.i.i.i, %bb.jq, %bb.jp
  %.promoted141155.i.i.i.i = phi ptr [ %.promoted141158.i.i.i.i, %bb.jp ], [ %.val20.i.i.i.i.i, %bb.jq ], [ %.promoted141156.i.i.i.i, %stbi__zget8.exit.i.i108.i.i.i.i.i.i.i ]
  %i.aoj = phi i32 [ %i.alz, %bb.jp ], [ %i.any, %bb.jq ], [ %i.aoh, %stbi__zget8.exit.i.i108.i.i.i.i.i.i.i ]
  %i.aok = phi i32 [ %i.aly, %bb.jp ], [ %i.anz, %bb.jq ], [ %i.aog, %stbi__zget8.exit.i.i108.i.i.i.i.i.i.i ] ; 2 uses
  %i.aol = and i32 %i.aok, 127
  %i.aom = lshr i32 %i.aok, 7                     ; 2 uses
  store i32 %i.aom, ptr %i.aas, align 8
  %i.aon = add nsw i32 %i.aoj, -7                 ; 2 uses
  store i32 %i.aon, ptr %i.aar, align 8
  %i.aoo = add nuw nsw i32 %i.aol, 11
  br label %bb.jt

bb.jt:                                            ; preds = %stbi__zreceive.exit109.i.i.i.i.i.i.i, %stbi__zreceive.exit101.i.i.i.i.i.i.i, %bb.jk
  %i.aop = phi i32 [ %i.amu, %bb.jk ], [ %i.ant, %stbi__zreceive.exit101.i.i.i.i.i.i.i ], [ %i.aom, %stbi__zreceive.exit109.i.i.i.i.i.i.i ]
  %.promoted141148.i.i.i.i = phi ptr [ %.promoted141152.i.i.i.i, %bb.jk ], [ %.promoted141149.i.i.i.i, %stbi__zreceive.exit101.i.i.i.i.i.i.i ], [ %.promoted141155.i.i.i.i, %stbi__zreceive.exit109.i.i.i.i.i.i.i ]
  %i.aoq = phi i32 [ %i.amv, %bb.jk ], [ %i.anu, %stbi__zreceive.exit101.i.i.i.i.i.i.i ], [ %i.aon, %stbi__zreceive.exit109.i.i.i.i.i.i.i ]
  %.046.i.i.i.i.i.i.i = phi i32 [ %i.amy, %bb.jk ], [ %i.anv, %stbi__zreceive.exit101.i.i.i.i.i.i.i ], [ %i.aoo, %stbi__zreceive.exit109.i.i.i.i.i.i.i ] ; 3 uses
  %.0.i43.i.i.i.i.i.i = phi i8 [ %i.anc, %bb.jk ], [ 0, %stbi__zreceive.exit101.i.i.i.i.i.i.i ], [ 0, %stbi__zreceive.exit109.i.i.i.i.i.i.i ]
  %i.aor = sub nsw i32 %i.ajv, %.050156.i.i.i.i.i.i.i
  %i.aos = icmp slt i32 %i.aor, %.046.i.i.i.i.i.i.i
  br i1 %i.aos, label %stbi__compute_huffman_codes.exit.thread.sink.split.i.i.i.i.i.i, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.aot = sext i32 %.050156.i.i.i.i.i.i.i to i64
  %i.aou = getelementptr inbounds i8, ptr %i.a, i64 %i.aot
  %i.aov = zext nneg i32 %.046.i.i.i.i.i.i.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.aou, i8 %.0.i43.i.i.i.i.i.i, i64 %i.aov, i1 false)
  %i.aow = add nsw i32 %.046.i.i.i.i.i.i.i, %.050156.i.i.i.i.i.i.i
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.je
  %i.aox = phi i32 [ %i.aly, %bb.je ], [ %i.aop, %bb.ju ]
  %.promoted141147.i.i.i.i = phi ptr [ %.promoted141158.i.i.i.i, %bb.je ], [ %.promoted141148.i.i.i.i, %bb.ju ]
  %i.aoy = phi i32 [ %i.alz, %bb.je ], [ %i.aoq, %bb.ju ]
  %.353.i.i.i.i.i.i.i = phi i32 [ %i.amc, %bb.je ], [ %i.aow, %bb.ju ] ; 3 uses
  %i.aoz = icmp slt i32 %.353.i.i.i.i.i.i.i, %i.ajv
  br i1 %i.aoz, label %.preheader.i41.i.i.i.i.i.i, label %bb.jw, !llvm.loop !158

bb.jw:                                            ; preds = %bb.jv
  %.not58.i.i.i.i.i.i.i = icmp eq i32 %.353.i.i.i.i.i.i.i, %i.ajv
  br i1 %.not58.i.i.i.i.i.i.i, label %bb.jx, label %stbi__compute_huffman_codes.exit.thread.sink.split.i.i.i.i.i.i

bb.jx:                                            ; preds = %bb.jw
  %i.apa = call fastcc i32 @stbi__zbuild_huffman(ptr noundef %i.aau, ptr noundef nonnull %i.a, i32 noundef %i.ahj)
  %.not59.i.i.i.i.i.i.i = icmp eq i32 %i.apa, 0
  br i1 %.not59.i.i.i.i.i.i.i, label %stbi__compute_huffman_codes.exit.thread.i.i.i.i.i.i, label %stbi__compute_huffman_codes.exit.i.i.i.i.i.i

stbi__compute_huffman_codes.exit.thread.sink.split.i.i.i.i.i.i: ; preds = %bb.jw, %bb.jt, %stbi__zreceive.exit93.i.i.i.i.i.i.i, %stbi__zhuffman_decode.exit.i.i.i.i, %bb.jb, %bb.ja, %bb.iz, %bb.ir
  %i.apb = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %stbi__compute_huffman_codes.exit.thread.i.i.i.i.i.i

stbi__compute_huffman_codes.exit.thread.i.i.i.i.i.i: ; preds = %bb.jx, %bb.ip, %stbi__compute_huffman_codes.exit.thread.sink.split.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %stbi__zexpand.exit19.thread.i.i.i.i

stbi__compute_huffman_codes.exit.i.i.i.i.i.i:     ; preds = %bb.jx
  %i.apc = zext nneg i32 %i.ahj to i64
  %i.apd = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.apc
  %i.ape = call fastcc i32 @stbi__zbuild_huffman(ptr noundef %i.aav, ptr noundef nonnull %i.apd, i32 noundef %i.aic)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  %.not18.i.i.i.i.i.i = icmp eq i32 %i.ape, 0
  br i1 %.not18.i.i.i.i.i.i, label %stbi__zexpand.exit19.thread.i.i.i.i, label %bb.jy

bb.jy:                                            ; preds = %stbi__compute_huffman_codes.exit.i.i.i.i.i.i, %bb.ia
  %i.apf = load ptr, ptr %i.zz, align 8
  br label %.loopexit.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.loopexit.i.i.i.i.i.i.i.backedge, %bb.jy
  %.063.i.i.i.i.i.i.i = phi ptr [ %i.apf, %bb.jy ], [ %.063.i.i.i.i.i.i.i.be, %.loopexit.i.i.i.i.i.i.i.backedge ] ; 7 uses
  %i.apg = call fastcc i32 @stbi__zhuffman_decode(ptr noundef nonnull %9, ptr noundef %i.aau) ; 7 uses
  %i.aph = icmp slt i32 %i.apg, 256
  br i1 %i.aph, label %bb.jz, label %bb.kk

bb.jz:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.api = icmp slt i32 %i.apg, 0
  br i1 %i.api, label %.loopexit100.sink.split.i.i.i.i.i.i.i, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  %i.apj = load ptr, ptr %i.aab, align 8          ; 2 uses
  %.not83.i.i.i.i.i.i.i = icmp ult ptr %.063.i.i.i.i.i.i.i, %i.apj
  br i1 %.not83.i.i.i.i.i.i.i, label %bb.kj, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.apk = load i32, ptr %i.aac, align 8
  %.not.i12.i.i.i.i = icmp eq i32 %i.apk, 0
  br i1 %.not.i12.i.i.i.i, label %bb.kc, label %bb.kd

bb.kc:                                            ; preds = %bb.kb
  %i.apl = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %stbi__zexpand.exit19.thread.i.i.i.i

bb.kd:                                            ; preds = %bb.kb
  %i.apm = load ptr, ptr %i.zy, align 8           ; 2 uses
  %i.apn = ptrtoint ptr %.063.i.i.i.i.i.i.i to i64
  %i.apo = ptrtoint ptr %i.apm to i64             ; 2 uses
  %i.app = sub i64 %i.apn, %i.apo                 ; 2 uses
  %i.apq = trunc i64 %i.app to i32                ; 3 uses
  %i.apr = icmp eq i32 %i.apq, -1
  br i1 %i.apr, label %bb.ke, label %.preheader.i13.i.i.i.i

.preheader.i13.i.i.i.i:                           ; preds = %bb.kd
  %i.aps = ptrtoint ptr %i.apj to i64
  %i.apt = sub i64 %i.aps, %i.apo
  %i.apu = trunc i64 %i.apt to i32                ; 3 uses
  %.not.i372.i.i.i = icmp ult i32 %i.apq, %i.apu
  br i1 %.not.i372.i.i.i, label %._crit_edge.i14.i.i.i.i, label %.lr.ph.i17.i.i.i.i

bb.ke:                                            ; preds = %bb.kd
  %i.apv = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %stbi__zexpand.exit19.thread.i.i.i.i

.lr.ph.i17.i.i.i.i:                               ; preds = %.preheader.i13.i.i.i.i, %bb.kg
  %.028.i18.i.i.i.i = phi i32 [ %i.apy, %bb.kg ], [ %i.apu, %.preheader.i13.i.i.i.i ] ; 2 uses
  %i.apw = icmp slt i32 %.028.i18.i.i.i.i, 0
  br i1 %i.apw, label %bb.kf, label %bb.kg

bb.kf:                                            ; preds = %.lr.ph.i17.i.i.i.i
  %i.apx = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %stbi__zexpand.exit19.thread.i.i.i.i

bb.kg:                                            ; preds = %.lr.ph.i17.i.i.i.i
  %i.apy = shl nuw i32 %.028.i18.i.i.i.i, 1       ; 3 uses
  %.not338.i.i.i.i = icmp ugt i32 %i.apy, %i.apq
  br i1 %.not338.i.i.i.i, label %._crit_edge.i14.i.i.i.i, label %.lr.ph.i17.i.i.i.i, !llvm.loop !156

._crit_edge.i14.i.i.i.i:                          ; preds = %bb.kg, %.preheader.i13.i.i.i.i
  %.0.lcssa.i15.i.i.i.i = phi i32 [ %i.apu, %.preheader.i13.i.i.i.i ], [ %i.apy, %bb.kg ]
  %i.apz = zext i32 %.0.lcssa.i15.i.i.i.i to i64  ; 2 uses
  %i.aqa = tail call ptr @SDL_realloc_REAL(ptr noundef %i.apm, i64 noundef %i.apz) #14 ; 4 uses
  %i.aqb = icmp eq ptr %i.aqa, null
  br i1 %i.aqb, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %._crit_edge.i14.i.i.i.i
  %i.aqc = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %stbi__zexpand.exit19.thread.i.i.i.i

bb.ki:                                            ; preds = %._crit_edge.i14.i.i.i.i
  store ptr %i.aqa, ptr %i.zy, align 8
  %i.aqd = and i64 %i.app, 4294967295
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.aqa, i64 %i.aqd ; 2 uses
  store ptr %i.aqe, ptr %i.zz, align 8
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aqa, i64 %i.apz
  store ptr %i.aqf, ptr %i.aab, align 8
  br label %bb.kj

bb.kj:                                            ; preds = %bb.ki, %bb.ka
  %.164.i.i.i.i.i.i.i = phi ptr [ %i.aqe, %bb.ki ], [ %.063.i.i.i.i.i.i.i, %bb.ka ] ; 2 uses
  %i.aqg = trunc nuw i32 %i.apg to i8
  %i.aqh = getelementptr inbounds nuw i8, ptr %.164.i.i.i.i.i.i.i, i64 1
  store i8 %i.aqg, ptr %.164.i.i.i.i.i.i.i, align 1
  br label %.loopexit.i.i.i.i.i.i.i.backedge

bb.kk:                                            ; preds = %.loopexit.i.i.i.i.i.i.i
  %i.aqi = icmp eq i32 %i.apg, 256
  br i1 %i.aqi, label %bb.kl, label %bb.km

bb.kl:                                            ; preds = %bb.kk
  store ptr %.063.i.i.i.i.i.i.i, ptr %i.zz, align 8
  %i.aqj = load i32, ptr %i.aat, align 4
  %.not82.i.i.i.i.i.i.i = icmp ne i32 %i.aqj, 0
  %i.aqk = load i32, ptr %i.aar, align 8          ; 2 uses
  %i.aql = icmp slt i32 %i.aqk, 16
  %or.cond.i.i.i.i = select i1 %.not82.i.i.i.i.i.i.i, i1 %i.aql, i1 false
  br i1 %or.cond.i.i.i.i, label %.loopexit100.sink.split.i.i.i.i.i.i.i, label %stbi__parse_huffman_block.exit.i.i.i.i.i.i

bb.km:                                            ; preds = %bb.kk
  %i.aqm = icmp samesign ugt i32 %i.apg, 285
  br i1 %i.aqm, label %.loopexit100.sink.split.i.i.i.i.i.i.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.aqn = add nsw i32 %i.apg, -257
  %i.aqo = zext nneg i32 %i.aqn to i64            ; 2 uses
  %i.aqp = getelementptr inbounds nuw [4 x i8], ptr @stbi__zlength_base, i64 %i.aqo
  %i.aqq = load i32, ptr %i.aqp, align 4          ; 2 uses
  %i.aqr = add nsw i32 %i.apg, -285
  %.not.i50.i.i.i.i.i.i = icmp ult i32 %i.aqr, -20
  br i1 %.not.i50.i.i.i.i.i.i, label %bb.ks, label %bb.ko

bb.ko:                                            ; preds = %bb.kn
  %i.aqs = getelementptr inbounds nuw [4 x i8], ptr @stbi__zlength_extra, i64 %i.aqo
  %i.aqt = load i32, ptr %i.aqs, align 4          ; 4 uses
  %i.aqu = load i32, ptr %i.aar, align 8          ; 3 uses
  %i.aqv = icmp slt i32 %i.aqu, %i.aqt
  %.promoted.i.i.i51.i.i.i.i.i.i = load i32, ptr %i.aas, align 8 ; 2 uses
  br i1 %i.aqv, label %.preheader121.i.i.i.preheader.i.i.i.i, label %stbi__zreceive.exit.i52.i.i.i.i.i.i

.preheader121.i.i.i.preheader.i.i.i.i:            ; preds = %bb.ko
  %.promoted164.i.i.i.i = load ptr, ptr %9, align 8
  %.val2.i.i.i.i66.i.i.i.i.i.i = load ptr, ptr %i.zx, align 8 ; 2 uses
  br label %.preheader121.i.i.i.i.i.i.i

.preheader121.i.i.i.i.i.i.i:                      ; preds = %stbi__zget8.exit.i.i.i68.i.i.i.i.i.i, %.preheader121.i.i.i.preheader.i.i.i.i
  %i.aqw = phi ptr [ %i.arc, %stbi__zget8.exit.i.i.i68.i.i.i.i.i.i ], [ %.promoted164.i.i.i.i, %.preheader121.i.i.i.preheader.i.i.i.i ] ; 4 uses
  %i.aqx = phi i32 [ %i.arg, %stbi__zget8.exit.i.i.i68.i.i.i.i.i.i ], [ %i.aqu, %.preheader121.i.i.i.preheader.i.i.i.i ] ; 5 uses
  %i.aqy = phi i32 [ %i.arf, %stbi__zget8.exit.i.i.i68.i.i.i.i.i.i ], [ %.promoted.i.i.i51.i.i.i.i.i.i, %.preheader121.i.i.i.preheader.i.i.i.i ] ; 3 uses
  %.highbits.i.i.i63.i.i.i.i.i.i = lshr i32 %i.aqy, %i.aqx
  %.not.i.i.i64.i.i.i.i.i.i = icmp eq i32 %.highbits.i.i.i63.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i64.i.i.i.i.i.i, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %.preheader121.i.i.i.i.i.i.i
  store ptr %.val2.i.i.i.i66.i.i.i.i.i.i, ptr %9, align 8
  br label %stbi__zreceive.exit.i52.i.i.i.i.i.i

bb.kq:                                            ; preds = %.preheader121.i.i.i.i.i.i.i
  %.not3.i.i.i.i67.i.i.i.i.i.i = icmp ult ptr %i.aqw, %.val2.i.i.i.i66.i.i.i.i.i.i
  br i1 %.not3.i.i.i.i67.i.i.i.i.i.i, label %bb.kr, label %stbi__zget8.exit.i.i.i68.i.i.i.i.i.i

bb.kr:                                            ; preds = %bb.kq
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqw, i64 1 ; 2 uses
  store ptr %i.aqz, ptr %9, align 8
  %i.ara = load i8, ptr %i.aqw, align 1
  %i.arb = zext i8 %i.ara to i32
  br label %stbi__zget8.exit.i.i.i68.i.i.i.i.i.i

stbi__zget8.exit.i.i.i68.i.i.i.i.i.i:             ; preds = %bb.kr, %bb.kq
  %i.arc = phi ptr [ %i.aqz, %bb.kr ], [ %i.aqw, %bb.kq ]
  %i.ard = phi i32 [ %i.arb, %bb.kr ], [ 0, %bb.kq ]
  %i.are = shl i32 %i.ard, %i.aqx
  %i.arf = or i32 %i.are, %i.aqy                  ; 3 uses
  store i32 %i.arf, ptr %i.aas, align 8
  %i.arg = add nsw i32 %i.aqx, 8                  ; 3 uses
  store i32 %i.arg, ptr %i.aar, align 8
  %i.arh = icmp slt i32 %i.aqx, 17
  br i1 %i.arh, label %.preheader121.i.i.i.i.i.i.i, label %stbi__zreceive.exit.i52.i.i.i.i.i.i, !llvm.loop !4

stbi__zreceive.exit.i52.i.i.i.i.i.i:              ; preds = %stbi__zget8.exit.i.i.i68.i.i.i.i.i.i, %bb.kp, %bb.ko
  %i.ari = phi i32 [ %i.aqu, %bb.ko ], [ %i.aqx, %bb.kp ], [ %i.arg, %stbi__zget8.exit.i.i.i68.i.i.i.i.i.i ]
  %i.arj = phi i32 [ %.promoted.i.i.i51.i.i.i.i.i.i, %bb.ko ], [ %i.aqy, %bb.kp ], [ %i.arf, %stbi__zget8.exit.i.i.i68.i.i.i.i.i.i ] ; 2 uses
  %notmask.i.i.i.i.i.i.i.i = shl nsw i32 -1, %i.aqt
  %i.ark = xor i32 %notmask.i.i.i.i.i.i.i.i, -1
  %i.arl = and i32 %i.arj, %i.ark
  %i.arm = lshr i32 %i.arj, %i.aqt
  store i32 %i.arm, ptr %i.aas, align 8
  %i.arn = sub nsw i32 %i.ari, %i.aqt
  store i32 %i.arn, ptr %i.aar, align 8
  %i.aro = add i32 %i.arl, %i.aqq
  br label %bb.ks

bb.ks:                                            ; preds = %stbi__zreceive.exit.i52.i.i.i.i.i.i, %bb.kn
  %.059.i.i.i.i.i.i.i = phi i32 [ %i.aro, %stbi__zreceive.exit.i52.i.i.i.i.i.i ], [ %i.aqq, %bb.kn ] ; 12 uses
  %i.arp = call fastcc i32 @stbi__zhuffman_decode(ptr noundef nonnull %9, ptr noundef %i.aav) ; 3 uses
  %or.cond.i53.i.i.i.i.i.i = icmp ugt i32 %i.arp, 29
  br i1 %or.cond.i53.i.i.i.i.i.i, label %.loopexit100.sink.split.i.i.i.i.i.i.i, label %bb.kt

bb.kt:                                            ; preds = %bb.ks
  %i.arq = zext nneg i32 %i.arp to i64            ; 2 uses
  %i.arr = getelementptr inbounds nuw [4 x i8], ptr @stbi__zdist_base, i64 %i.arq
  %i.ars = load i32, ptr %i.arr, align 4          ; 2 uses
  %.not76.i.i.i.i.i.i.i = icmp samesign ult i32 %i.arp, 4
  br i1 %.not76.i.i.i.i.i.i.i, label %bb.ky, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.art = getelementptr inbounds nuw [4 x i8], ptr @stbi__zdist_extra, i64 %i.arq
  %i.aru = load i32, ptr %i.art, align 4          ; 4 uses
  %i.arv = load i32, ptr %i.aar, align 8          ; 3 uses
  %i.arw = icmp slt i32 %i.arv, %i.aru
  %.promoted.i.i85.i.i.i.i.i.i.i = load i32, ptr %i.aas, align 8 ; 2 uses
  br i1 %i.arw, label %.preheader120.i.i.i.preheader.i.i.i.i, label %stbi__zreceive.exit93.i54.i.i.i.i.i.i

.preheader120.i.i.i.preheader.i.i.i.i:            ; preds = %bb.ku
  %.promoted165.i.i.i.i = load ptr, ptr %9, align 8
  %.val2.i.i.i90.i60.i.i.i.i.i.i = load ptr, ptr %i.zx, align 8 ; 2 uses
  br label %.preheader120.i.i.i.i.i.i.i

.preheader120.i.i.i.i.i.i.i:                      ; preds = %stbi__zget8.exit.i.i92.i62.i.i.i.i.i.i, %.preheader120.i.i.i.preheader.i.i.i.i
  %i.arx = phi ptr [ %i.asd, %stbi__zget8.exit.i.i92.i62.i.i.i.i.i.i ], [ %.promoted165.i.i.i.i, %.preheader120.i.i.i.preheader.i.i.i.i ] ; 4 uses
  %i.ary = phi i32 [ %i.ash, %stbi__zget8.exit.i.i92.i62.i.i.i.i.i.i ], [ %i.arv, %.preheader120.i.i.i.preheader.i.i.i.i ] ; 5 uses
  %i.arz = phi i32 [ %i.asg, %stbi__zget8.exit.i.i92.i62.i.i.i.i.i.i ], [ %.promoted.i.i85.i.i.i.i.i.i.i, %.preheader120.i.i.i.preheader.i.i.i.i ] ; 3 uses
  %.highbits.i.i87.i57.i.i.i.i.i.i = lshr i32 %i.arz, %i.ary
  %.not.i.i88.i58.i.i.i.i.i.i = icmp eq i32 %.highbits.i.i87.i57.i.i.i.i.i.i, 0
  br i1 %.not.i.i88.i58.i.i.i.i.i.i, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %.preheader120.i.i.i.i.i.i.i
  store ptr %.val2.i.i.i90.i60.i.i.i.i.i.i, ptr %9, align 8
  br label %stbi__zreceive.exit93.i54.i.i.i.i.i.i

bb.kw:                                            ; preds = %.preheader120.i.i.i.i.i.i.i
  %.not3.i.i.i91.i61.i.i.i.i.i.i = icmp ult ptr %i.arx, %.val2.i.i.i90.i60.i.i.i.i.i.i
  br i1 %.not3.i.i.i91.i61.i.i.i.i.i.i, label %bb.kx, label %stbi__zget8.exit.i.i92.i62.i.i.i.i.i.i

bb.kx:                                            ; preds = %bb.kw
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arx, i64 1 ; 2 uses
  store ptr %i.asa, ptr %9, align 8
  %i.asb = load i8, ptr %i.arx, align 1
  %i.asc = zext i8 %i.asb to i32
  br label %stbi__zget8.exit.i.i92.i62.i.i.i.i.i.i

stbi__zget8.exit.i.i92.i62.i.i.i.i.i.i:           ; preds = %bb.kx, %bb.kw
  %i.asd = phi ptr [ %i.asa, %bb.kx ], [ %i.arx, %bb.kw ]
  %i.ase = phi i32 [ %i.asc, %bb.kx ], [ 0, %bb.kw ]
  %i.asf = shl i32 %i.ase, %i.ary
  %i.asg = or i32 %i.asf, %i.arz                  ; 3 uses
  store i32 %i.asg, ptr %i.aas, align 8
  %i.ash = add nsw i32 %i.ary, 8                  ; 3 uses
  store i32 %i.ash, ptr %i.aar, align 8
  %i.asi = icmp slt i32 %i.ary, 17
  br i1 %i.asi, label %.preheader120.i.i.i.i.i.i.i, label %stbi__zreceive.exit93.i54.i.i.i.i.i.i, !llvm.loop !4

stbi__zreceive.exit93.i54.i.i.i.i.i.i:            ; preds = %stbi__zget8.exit.i.i92.i62.i.i.i.i.i.i, %bb.kv, %bb.ku
  %i.asj = phi i32 [ %i.arv, %bb.ku ], [ %i.ary, %bb.kv ], [ %i.ash, %stbi__zget8.exit.i.i92.i62.i.i.i.i.i.i ]
  %i.ask = phi i32 [ %.promoted.i.i85.i.i.i.i.i.i.i, %bb.ku ], [ %i.arz, %bb.kv ], [ %i.asg, %stbi__zget8.exit.i.i92.i62.i.i.i.i.i.i ] ; 2 uses
  %notmask.i86.i.i.i.i.i.i.i = shl nsw i32 -1, %i.aru
  %i.asl = xor i32 %notmask.i86.i.i.i.i.i.i.i, -1
  %i.asm = and i32 %i.ask, %i.asl
  %i.asn = lshr i32 %i.ask, %i.aru
  store i32 %i.asn, ptr %i.aas, align 8
  %i.aso = sub nsw i32 %i.asj, %i.aru
  store i32 %i.aso, ptr %i.aar, align 8
  %i.asp = add i32 %i.asm, %i.ars
  br label %bb.ky

bb.ky:                                            ; preds = %stbi__zreceive.exit93.i54.i.i.i.i.i.i, %bb.kt
  %.0.i55.i.i.i.i.i.i = phi i32 [ %i.asp, %stbi__zreceive.exit93.i54.i.i.i.i.i.i ], [ %i.ars, %bb.kt ] ; 2 uses
  %i.asq = load ptr, ptr %i.zy, align 8           ; 2 uses
  %i.asr = ptrtoint ptr %.063.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.ass = ptrtoint ptr %i.asq to i64             ; 2 uses
  %i.ast = sub i64 %i.asr, %i.ass                 ; 3 uses
  %i.asu = sext i32 %.0.i55.i.i.i.i.i.i to i64    ; 3 uses
  %i.asv = icmp slt i64 %i.ast, %i.asu
  br i1 %i.asv, label %.loopexit100.sink.split.i.i.i.i.i.i.i, label %bb.kz

bb.kz:                                            ; preds = %bb.ky
  %i.asw = sext i32 %.059.i.i.i.i.i.i.i to i64
  %i.asx = load ptr, ptr %i.aab, align 8
end_hunk_1
