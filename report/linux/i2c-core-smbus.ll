Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/i2c-core-smbus?download=true
inline.NumInlined: 99
inline.NumDeleted: 51
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@__i2c_smbus_xfer:bb.a
  %indexer.hi.lo.byte.i.i8.i.i.2 = zext i8 %i.ha to i64
  %tbl.ptradd.i.i9.i.i.2 = getelementptr inbounds nuw [2 x i8], ptr @.crctable, i64 %indexer.hi.lo.byte.i.i8.i.i.2
  %tbl.ld.i.i10.i.i.2 = load i16, ptr %tbl.ptradd.i.i9.i.i.2, align 2
  %i.hb = lshr i16 %tbl.ld.i.i10.i.i.2, 8
  %i.hc = trunc nuw i16 %i.hb to i8
  %i.hd = getelementptr i8, ptr %i.fd, i64 %indvars.iv
  %i.he = getelementptr i8, ptr %i.hd, i64 3
  %i.hf = load i8, ptr %i.he, align 1
  %i.hg = xor i8 %i.hf, %i.hc
  %indexer.hi.lo.byte.i.i8.i.i.3 = zext i8 %i.hg to i64
  %tbl.ptradd.i.i9.i.i.3 = getelementptr inbounds nuw [2 x i8], ptr @.crctable, i64 %indexer.hi.lo.byte.i.i8.i.i.3
  %tbl.ld.i.i10.i.i.3 = load i16, ptr %tbl.ptradd.i.i9.i.i.3, align 2
  %i.hh = lshr i16 %tbl.ld.i.i10.i.i.3, 8
  %i.hi = trunc nuw i16 %i.hh to i8               ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %i2c_smbus_msg_pec.exit.i.loopexit.unr-lcssa, label %.lr.ph.i5.i.i, !llvm.loop !0

i2c_smbus_msg_pec.exit.i.loopexit.unr-lcssa:      ; preds = %.lr.ph.i5.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %i2c_smbus_msg_pec.exit.i, label %.lr.ph.i5.i.i.epil.preheader

.lr.ph.i5.i.i.epil.preheader:                     ; preds = %i2c_smbus_msg_pec.exit.i.loopexit.unr-lcssa, %.lr.ph.i5.i.i.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.i5.i.i.preheader ], [ %indvars.iv.next.3, %i2c_smbus_msg_pec.exit.i.loopexit.unr-lcssa ]
  %.068.i7.i.i.epil.init = phi i8 [ %i.fc, %.lr.ph.i5.i.i.preheader ], [ %i.hi, %i2c_smbus_msg_pec.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod164 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i5.i.i.epil

.lr.ph.i5.i.i.epil:                               ; preds = %.lr.ph.i5.i.i.epil, %.lr.ph.i5.i.i.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.i5.i.i.epil ], [ %indvars.iv.epil.init, %.lr.ph.i5.i.i.epil.preheader ] ; 2 uses
  %.068.i7.i.i.epil = phi i8 [ %i.hn, %.lr.ph.i5.i.i.epil ], [ %.068.i7.i.i.epil.init, %.lr.ph.i5.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i5.i.i.epil ], [ 0, %.lr.ph.i5.i.i.epil.preheader ]
  %i.hj = getelementptr i8, ptr %i.fd, i64 %indvars.iv.epil
  %i.hk = load i8, ptr %i.hj, align 1
  %i.hl = xor i8 %i.hk, %.068.i7.i.i.epil
  %indexer.hi.lo.byte.i.i8.i.i.epil = zext i8 %i.hl to i64
  %tbl.ptradd.i.i9.i.i.epil = getelementptr inbounds nuw [2 x i8], ptr @.crctable, i64 %indexer.hi.lo.byte.i.i8.i.i.epil
  %tbl.ld.i.i10.i.i.epil = load i16, ptr %tbl.ptradd.i.i9.i.i.epil, align 2
  %i.hm = lshr i16 %tbl.ld.i.i10.i.i.epil, 8
  %i.hn = trunc nuw i16 %i.hm to i8               ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %i2c_smbus_msg_pec.exit.i, label %.lr.ph.i5.i.i.epil, !llvm.loop !38

i2c_smbus_msg_pec.exit.i:                         ; preds = %i2c_smbus_msg_pec.exit.i.loopexit.unr-lcssa, %.lr.ph.i5.i.i.epil, %bb.bd, %i2c_smbus_add_pec.exit.i, %bb.ba
  %.074.i = phi i8 [ 0, %bb.ba ], [ 0, %i2c_smbus_add_pec.exit.i ], [ %i.fc, %bb.bd ], [ %i.hi, %i2c_smbus_msg_pec.exit.i.loopexit.unr-lcssa ], [ %i.hn, %.lr.ph.i5.i.i.epil ] ; 2 uses
  %i.ho = zext nneg i32 %.076.i to i64
  %i.hp = getelementptr [16 x i8], ptr %7, i64 %i.ho ; 2 uses
  %i.hq = getelementptr i8, ptr %i.hp, i64 -14
  %i.hr = load i16, ptr %i.hq, align 2
  %i.hs = and i16 %i.hr, 1
  %.not89.i = icmp eq i16 %i.hs, 0
  br i1 %.not89.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %i2c_smbus_msg_pec.exit.i
  %i.ht = getelementptr i8, ptr %i.hp, i64 -12    ; 2 uses
  %i.hu = load i16, ptr %i.ht, align 4
  %i.hv = add i16 %i.hu, 1
  store i16 %i.hv, ptr %i.ht, align 4
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %i2c_smbus_msg_pec.exit.i, %switch.early.test.i, %switch.early.test.i, %i2c_smbus_try_get_dmabuf.exit.i
  %.175.i = phi i8 [ %.074.i, %bb.be ], [ %.074.i, %i2c_smbus_msg_pec.exit.i ], [ 0, %switch.early.test.i ], [ 0, %i2c_smbus_try_get_dmabuf.exit.i ], [ 0, %switch.early.test.i ]
  %i.hw = call i32 @__i2c_transfer(ptr noundef %0, ptr noundef nonnull %7, i32 noundef %.076.i) #14 ; 3 uses
  %i.hx = icmp slt i32 %i.hw, 0
  br i1 %i.hx, label %bb.bt, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not90.i = icmp eq i32 %i.hw, %.076.i
  br i1 %.not90.i, label %bb.bh, label %bb.bt

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not135.i, label %bb.bk, label %switch.early.test94.i

switch.early.test94.i:                            ; preds = %bb.bh
  switch i32 %5, label %bb.bi [
    i32 8, label %bb.bk
    i32 0, label %bb.bk
  ]

bb.bi:                                            ; preds = %switch.early.test94.i
  %i.hy = zext nneg i32 %.076.i to i64
  %i.hz = getelementptr [16 x i8], ptr %7, i64 %i.hy ; 4 uses
  %i.ia = getelementptr i8, ptr %i.hz, i64 -14
  %i.ib = load i16, ptr %i.ia, align 2
  %i.ic = and i16 %i.ib, 1
  %.not91.i = icmp eq i16 %i.ic, 0
  br i1 %.not91.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.id = getelementptr i8, ptr %i.hz, i64 -16
  %i.ie = getelementptr i8, ptr %i.hz, i64 -8
  %i.if = load ptr, ptr %i.ie, align 8            ; 6 uses
  %i.ig = getelementptr i8, ptr %i.hz, i64 -12    ; 2 uses
  %i.ih = load i16, ptr %i.ig, align 4
  %i.ii = add i16 %i.ih, -1                       ; 4 uses
  store i16 %i.ii, ptr %i.ig, align 4
  %i.ij = zext i16 %i.ii to i64                   ; 3 uses
  %i.ik = getelementptr i8, ptr %i.if, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1
  %.val.i.i122.i = load i16, ptr %i.id, align 16
  %i.im = trunc i16 %.val.i.i122.i to i8
  %i.in = shl i8 %i.im, 1
  %i.io = or disjoint i8 %i.in, 1
  %i.ip = xor i8 %i.io, %.175.i
  %indexer.hi.lo.byte.i.i.i.i.i = zext i8 %i.ip to i64
  %tbl.ptradd.i.i.i.i124.i = getelementptr inbounds nuw [2 x i8], ptr @.crctable, i64 %indexer.hi.lo.byte.i.i.i.i.i
  %tbl.ld.i.i.i.i125.i = load i16, ptr %tbl.ptradd.i.i.i.i124.i, align 2
  %i.iq = lshr i16 %tbl.ld.i.i.i.i125.i, 8
  %i.ir = trunc nuw i16 %i.iq to i8               ; 3 uses
  %.not.i.i.i126.i = icmp eq i16 %i.ii, 0
  br i1 %.not.i.i.i126.i, label %i2c_smbus_check_pec.exit.i, label %.lr.ph.i5.i.i127.i.preheader

.lr.ph.i5.i.i127.i.preheader:                     ; preds = %bb.bj
  %xtraiter172 = and i64 %i.ij, 3                 ; 3 uses
  %i.is = icmp ult i16 %i.ii, 4
  br i1 %i.is, label %.lr.ph.i5.i.i127.i.epil.preheader, label %.lr.ph.i5.i.i127.i.preheader.new

.lr.ph.i5.i.i127.i.preheader.new:                 ; preds = %.lr.ph.i5.i.i127.i.preheader
  %unroll_iter177 = and i64 %i.ij, 65532
  br label %.lr.ph.i5.i.i127.i

.lr.ph.i5.i.i127.i:                               ; preds = %.lr.ph.i5.i.i127.i, %.lr.ph.i5.i.i127.i.preheader.new
  %indvars.iv129 = phi i64 [ 0, %.lr.ph.i5.i.i127.i.preheader.new ], [ %indvars.iv.next130.3, %.lr.ph.i5.i.i127.i ] ; 5 uses
  %.068.i7.i.i129.i = phi i8 [ %i.ir, %.lr.ph.i5.i.i127.i.preheader.new ], [ %i.jp, %.lr.ph.i5.i.i127.i ]
  %niter178 = phi i64 [ 0, %.lr.ph.i5.i.i127.i.preheader.new ], [ %niter178.next.3, %.lr.ph.i5.i.i127.i ]
  %i.it = getelementptr i8, ptr %i.if, i64 %indvars.iv129
  %i.iu = load i8, ptr %i.it, align 1
  %i.iv = xor i8 %i.iu, %.068.i7.i.i129.i
  %indexer.hi.lo.byte.i.i8.i.i130.i = zext i8 %i.iv to i64
  %tbl.ptradd.i.i9.i.i131.i = getelementptr inbounds nuw [2 x i8], ptr @.crctable, i64 %indexer.hi.lo.byte.i.i8.i.i130.i
  %tbl.ld.i.i10.i.i132.i = load i16, ptr %tbl.ptradd.i.i9.i.i131.i, align 2
  %i.iw = lshr i16 %tbl.ld.i.i10.i.i132.i, 8
  %i.ix = trunc nuw i16 %i.iw to i8
  %i.iy = getelementptr i8, ptr %i.if, i64 %indvars.iv129
  %i.iz = getelementptr i8, ptr %i.iy, i64 1
  %i.ja = load i8, ptr %i.iz, align 1
  %i.jb = xor i8 %i.ja, %i.ix
  %indexer.hi.lo.byte.i.i8.i.i130.i.1 = zext i8 %i.jb to i64
  %tbl.ptradd.i.i9.i.i131.i.1 = getelementptr inbounds nuw [2 x i8], ptr @.crctable, i64 %indexer.hi.lo.byte.i.i8.i.i130.i.1
  %tbl.ld.i.i10.i.i132.i.1 = load i16, ptr %tbl.ptradd.i.i9.i.i131.i.1, align 2
  %i.jc = lshr i16 %tbl.ld.i.i10.i.i132.i.1, 8
  %i.jd = trunc nuw i16 %i.jc to i8
  %i.je = getelementptr i8, ptr %i.if, i64 %indvars.iv129
  %i.jf = getelementptr i8, ptr %i.je, i64 2
  %i.jg = load i8, ptr %i.jf, align 1
  %i.jh = xor i8 %i.jg, %i.jd
  %indexer.hi.lo.byte.i.i8.i.i130.i.2 = zext i8 %i.jh to i64
  %tbl.ptradd.i.i9.i.i131.i.2 = getelementptr inbounds nuw [2 x i8], ptr @.crctable, i64 %indexer.hi.lo.byte.i.i8.i.i130.i.2
  %tbl.ld.i.i10.i.i132.i.2 = load i16, ptr %tbl.ptradd.i.i9.i.i131.i.2, align 2
  %i.ji = lshr i16 %tbl.ld.i.i10.i.i132.i.2, 8
  %i.jj = trunc nuw i16 %i.ji to i8
  %i.jk = getelementptr i8, ptr %i.if, i64 %indvars.iv129
  %i.jl = getelementptr i8, ptr %i.jk, i64 3
  %i.jm = load i8, ptr %i.jl, align 1
  %i.jn = xor i8 %i.jm, %i.jj
  %indexer.hi.lo.byte.i.i8.i.i130.i.3 = zext i8 %i.jn to i64
  %tbl.ptradd.i.i9.i.i131.i.3 = getelementptr inbounds nuw [2 x i8], ptr @.crctable, i64 %indexer.hi.lo.byte.i.i8.i.i130.i.3
  %tbl.ld.i.i10.i.i132.i.3 = load i16, ptr %tbl.ptradd.i.i9.i.i131.i.3, align 2
  %i.jo = lshr i16 %tbl.ld.i.i10.i.i132.i.3, 8
  %i.jp = trunc nuw i16 %i.jo to i8               ; 3 uses
  %indvars.iv.next130.3 = add nuw nsw i64 %indvars.iv129, 4 ; 2 uses
  %niter178.next.3 = add i64 %niter178, 4         ; 2 uses
  %niter178.ncmp.3.not = icmp eq i64 %niter178.next.3, %unroll_iter177
  br i1 %niter178.ncmp.3.not, label %i2c_smbus_check_pec.exit.i.loopexit.unr-lcssa, label %.lr.ph.i5.i.i127.i, !llvm.loop !0

i2c_smbus_check_pec.exit.i.loopexit.unr-lcssa:    ; preds = %.lr.ph.i5.i.i127.i
  %lcmp.mod174.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod174.not, label %i2c_smbus_check_pec.exit.i, label %.lr.ph.i5.i.i127.i.epil.preheader

.lr.ph.i5.i.i127.i.epil.preheader:                ; preds = %i2c_smbus_check_pec.exit.i.loopexit.unr-lcssa, %.lr.ph.i5.i.i127.i.preheader
  %indvars.iv129.epil.init = phi i64 [ 0, %.lr.ph.i5.i.i127.i.preheader ], [ %indvars.iv.next130.3, %i2c_smbus_check_pec.exit.i.loopexit.unr-lcssa ]
  %.068.i7.i.i129.i.epil.init = phi i8 [ %i.ir, %.lr.ph.i5.i.i127.i.preheader ], [ %i.jp, %i2c_smbus_check_pec.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod176 = icmp ne i64 %xtraiter172, 0
  call void @llvm.assume(i1 %lcmp.mod176)
  br label %.lr.ph.i5.i.i127.i.epil

.lr.ph.i5.i.i127.i.epil:                          ; preds = %.lr.ph.i5.i.i127.i.epil, %.lr.ph.i5.i.i127.i.epil.preheader
  %indvars.iv129.epil = phi i64 [ %indvars.iv.next130.epil, %.lr.ph.i5.i.i127.i.epil ], [ %indvars.iv129.epil.init, %.lr.ph.i5.i.i127.i.epil.preheader ] ; 2 uses
  %.068.i7.i.i129.i.epil = phi i8 [ %i.ju, %.lr.ph.i5.i.i127.i.epil ], [ %.068.i7.i.i129.i.epil.init, %.lr.ph.i5.i.i127.i.epil.preheader ]
  %epil.iter173 = phi i64 [ %epil.iter173.next, %.lr.ph.i5.i.i127.i.epil ], [ 0, %.lr.ph.i5.i.i127.i.epil.preheader ]
  %i.jq = getelementptr i8, ptr %i.if, i64 %indvars.iv129.epil
  %i.jr = load i8, ptr %i.jq, align 1
  %i.js = xor i8 %i.jr, %.068.i7.i.i129.i.epil
  %indexer.hi.lo.byte.i.i8.i.i130.i.epil = zext i8 %i.js to i64
  %tbl.ptradd.i.i9.i.i131.i.epil = getelementptr inbounds nuw [2 x i8], ptr @.crctable, i64 %indexer.hi.lo.byte.i.i8.i.i130.i.epil
  %tbl.ld.i.i10.i.i132.i.epil = load i16, ptr %tbl.ptradd.i.i9.i.i131.i.epil, align 2
  %i.jt = lshr i16 %tbl.ld.i.i10.i.i132.i.epil, 8
  %i.ju = trunc nuw i16 %i.jt to i8               ; 2 uses
  %indvars.iv.next130.epil = add nuw nsw i64 %indvars.iv129.epil, 1
  %epil.iter173.next = add i64 %epil.iter173, 1   ; 2 uses
  %epil.iter173.cmp.not = icmp eq i64 %epil.iter173.next, %xtraiter172
  br i1 %epil.iter173.cmp.not, label %i2c_smbus_check_pec.exit.i, label %.lr.ph.i5.i.i127.i.epil, !llvm.loop !39

i2c_smbus_check_pec.exit.i:                       ; preds = %i2c_smbus_check_pec.exit.i.loopexit.unr-lcssa, %.lr.ph.i5.i.i127.i.epil, %bb.bj
  %.06.lcssa.i.i.i133.i = phi i8 [ %i.ir, %bb.bj ], [ %i.jp, %i2c_smbus_check_pec.exit.i.loopexit.unr-lcssa ], [ %i.ju, %.lr.ph.i5.i.i127.i.epil ]
  %.not.i134.i = icmp eq i8 %i.il, %.06.lcssa.i.i.i133.i ; 2 uses
  %..i.i = select i1 %.not.i134.i, i32 0, i32 -74 ; 2 uses
  %or.cond4.i = and i1 %.078.i, %.not.i134.i
  br i1 %or.cond4.i, label %bb.bl, label %bb.bt

bb.bk:                                            ; preds = %bb.bi, %switch.early.test94.i, %switch.early.test94.i, %bb.bh
  br i1 %.078.i, label %bb.bl, label %bb.bt

bb.bl:                                            ; preds = %bb.bk, %i2c_smbus_check_pec.exit.i
  %.0.i94 = phi i32 [ %..i.i, %i2c_smbus_check_pec.exit.i ], [ 0, %bb.bk ] ; 6 uses
  switch i32 %5, label %bb.bt [
    i32 1, label %bb.bm
    i32 2, label %bb.bn
    i32 3, label %bb.bo
    i32 4, label %bb.bo
    i32 8, label %bb.bp
    i32 5, label %bb.bq
    i32 7, label %bb.bq
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.jv = load i8, ptr %i.a, align 16
  store i8 %i.jv, ptr %6, align 2
  br label %bb.bt

bb.bn:                                            ; preds = %bb.bl
  %i.jw = load i8, ptr %i.b, align 16
  store i8 %i.jw, ptr %6, align 2
  br label %bb.bt

bb.bo:                                            ; preds = %bb.bl, %bb.bl
  %i.jx = load i16, ptr %i.b, align 16
  store i16 %i.jx, ptr %6, align 2
  br label %bb.bt

bb.bp:                                            ; preds = %bb.bl
  %i.jy = getelementptr i8, ptr %6, i64 1
  %i.jz = load ptr, ptr %i.cj, align 8
  %i.ka = load i8, ptr %6, align 2
  %i.kb = zext i8 %i.ka to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jy, ptr align 1 %i.jz, i64 %i.kb, i1 false)
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bl, %bb.bl
  %i.kc = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.kd = load i8, ptr %i.kc, align 1             ; 2 uses
  %i.ke = zext i8 %i.kd to i32                    ; 2 uses
  %i.kf = icmp ugt i8 %i.kd, 32
  br i1 %i.kf, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.kg = getelementptr i8, ptr %0, i64 112
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %i.kg, ptr noundef nonnull @.str.43, i32 noundef %i.ke) #19
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  %i.kh = add nuw nsw i32 %i.ke, 1
  %i.ki = zext nneg i32 %i.kh to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 2 %6, ptr noundef align 1 %i.kc, i64 %i.ki, i1 false)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %i2c_smbus_check_pec.exit.i, %bb.bg, %bb.bf
  %.1.i = phi i32 [ %i.hw, %bb.bf ], [ 0, %bb.bk ], [ %.0.i94, %bb.bl ], [ %.0.i94, %bb.bm ], [ %.0.i94, %bb.bn ], [ %.0.i94, %bb.bo ], [ %.0.i94, %bb.bp ], [ -71, %bb.br ], [ %.0.i94, %bb.bs ], [ %..i.i, %i2c_smbus_check_pec.exit.i ], [ -5, %bb.bg ] ; 2 uses
  %i.kj = load i16, ptr %i.ca, align 2
  %i.kk = and i16 %i.kj, 512
  %.not92.i = icmp eq i16 %i.kk, 0
  br i1 %.not92.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kl = load ptr, ptr %i.cd, align 8
  call void @kfree(ptr noundef %i.kl) #14
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %i.km = load i16, ptr %i.cf, align 2
  %i.kn = and i16 %i.km, 512
  %.not93.i = icmp eq i16 %i.kn, 0
  br i1 %.not93.i, label %i2c_smbus_xfer_emulated.exit, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ko = load ptr, ptr %i.cj, align 8
  call void @kfree(ptr noundef %i.ko) #14
  br label %i2c_smbus_xfer_emulated.exit

i2c_smbus_xfer_emulated.exit:                     ; preds = %bb.ai, %bb.an, %bb.at, %bb.az, %bb.bv, %bb.bw
  %.077.i = phi i32 [ -95, %bb.az ], [ -22, %bb.at ], [ -22, %bb.ai ], [ -22, %bb.an ], [ %.1.i, %bb.bw ], [ %.1.i, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %.thread113

.thread113:                                       ; preds = %bb.t, %bb.r, %bb.s, %.thread109, %bb.u, %i2c_smbus_xfer_emulated.exit
  %.2 = phi i32 [ -95, %bb.u ], [ %.077.i, %i2c_smbus_xfer_emulated.exit ], [ 0, %.thread109 ], [ -11, %bb.t ], [ -11, %bb.r ], [ %i.bq, %bb.s ] ; 6 uses
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_smbus_reply, i64 8), i1 false) #15
          to label %trace_smbus_reply.exit [label %cpumask_test_cpu.exit.i.i96], !srcloc !43

cpumask_test_cpu.exit.i.i96:                      ; preds = %.thread113
  %i.kp = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #15, !srcloc !52
  %i.kq = zext i32 %i.kp to i64
  %i.kr = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.kq) #15, !srcloc !45 ; 2 uses
  %i.ks = icmp ult i8 %i.kr, 2
  call void @llvm.assume(i1 %i.ks)
  %i.kt = trunc nuw i8 %i.kr to i1
  %i.ku = icmp sgt i32 %.2, -1
  %or.cond.i.i98 = and i1 %i.ku, %i.kt
  %i.kv = icmp eq i8 %3, 1
  %or.cond4.i.i99 = and i1 %i.kv, %or.cond.i.i98
  br i1 %or.cond4.i.i99, label %bb.bx, label %trace_smbus_reply.exit

bb.bx:                                            ; preds = %cpumask_test_cpu.exit.i.i96
  %i.kw = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.kw, ptr elementtype(i64) %i.kw) #15, !srcloc !46
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !47
  %i.kx = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_smbus_reply, i64 56), align 8 ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.kx, null
  br i1 %.not.i.i100, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ky = getelementptr i8, ptr %i.kx, i64 8
  %i.kz = load ptr, ptr %i.ky, align 8
  %i.la = call i32 @__SCT__tp_func_smbus_reply(ptr noundef %i.kz, ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext range(i16 0, -28651) %i.at, i8 noundef zeroext 1, i8 noundef zeroext %4, i32 noundef %5, ptr noundef %6, i32 noundef %.2) #14 ; 0 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !48
  %i.lb = getelementptr i8, ptr %i.kw, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.lb, ptr elementtype(i64) %i.lb) #15, !srcloc !49
  br label %trace_smbus_reply.exit

trace_smbus_reply.exit:                           ; preds = %.thread113, %cpumask_test_cpu.exit.i.i96, %bb.bz
  callbr void asm sideeffect "1: jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09912: .pushsection .discard.annotate_data, \22M\22, @progbits, 8; .long 912b - ., 1; .popsection\0A.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad  ${0:c} + ${1:c} + 2 - . \0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull getelementptr inbounds nuw (i8, ptr @__tracepoint_smbus_result, i64 8), i1 false) #15
          to label %__i2c_check_suspended.exit [label %cpumask_test_cpu.exit.i.i101], !srcloc !43

cpumask_test_cpu.exit.i.i101:                     ; preds = %trace_smbus_reply.exit
  %i.lc = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i32) @cpu_number) #15, !srcloc !53
  %i.ld = zext i32 %i.lc to i64
  %i.le = call i8 asm sideeffect " btq  $2,$1", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(i64) @__cpu_online_mask, i64 range(i64 0, 4294967296) %i.ld) #15, !srcloc !45 ; 2 uses
  %i.lf = icmp ult i8 %i.le, 2
  call void @llvm.assume(i1 %i.lf)
  %i.lg = trunc nuw i8 %i.le to i1
  br i1 %i.lg, label %bb.ca, label %__i2c_check_suspended.exit

bb.ca:                                            ; preds = %cpumask_test_cpu.exit.i.i101
  %i.lh = load volatile ptr, ptr @tracepoint_srcu, align 8 ; 3 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.lh, ptr elementtype(i64) %i.lh) #15, !srcloc !46
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !47
  %i.li = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @__tracepoint_smbus_result, i64 56), align 8 ; 2 uses
  %.not.i.i102 = icmp eq ptr %i.li, null
  br i1 %.not.i.i102, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lj = getelementptr i8, ptr %i.li, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = call i32 @__SCT__tp_func_smbus_result(ptr noundef %i.lk, ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext range(i16 0, -28651) %i.at, i8 noundef zeroext %3, i8 noundef zeroext %4, i32 noundef %5, i32 noundef %.2) #14 ; 0 uses
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !srcloc !48
  %i.lm = getelementptr i8, ptr %i.lh, i64 8      ; 2 uses
  call void asm sideeffect "incq %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %i.lm, ptr elementtype(i64) %i.lm) #15, !srcloc !49
  br label %__i2c_check_suspended.exit

__i2c_check_suspended.exit:                       ; preds = %bb.cc, %cpumask_test_cpu.exit.i.i101, %trace_smbus_reply.exit, %dev_name.exit22.i, %bb.b, %bb.g
  %.074 = phi i32 [ -108, %dev_name.exit22.i ], [ -22, %bb.g ], [ -108, %bb.b ], [ %.2, %trace_smbus_reply.exit ], [ %.2, %bb.cc ], [ %.2, %cpumask_test_cpu.exit.i.i101 ]
  ret i32 %.074
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 256) i32 @i2c_smbus_read_i2c_block_data_or_emulated(ptr nofree noundef readonly captures(none) %0, i8 noundef zeroext %1, i8 noundef zeroext %2, ptr nofree noundef writeonly captures(none) %3) #1 align 16 prefalign(16) {
bb.a:
  %4 = alloca %union.i2c_smbus_data, align 2      ; 5 uses
  %5 = alloca %union.i2c_smbus_data, align 2      ; 5 uses
  %6 = alloca %union.i2c_smbus_data, align 2      ; 7 uses
  %spec.store.select = tail call i8 @llvm.umin.i8(i8 %2, i8 32) ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 24         ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i32 %i.f(ptr noundef %i.b) #14, !inline_history !54
  %i.h = and i32 %i.g, 67108864
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(34) %6, i8 0, i64 34, i1 false), !annotation !17
  store i8 %spec.store.select, ptr %6, align 2
  %i.i = load ptr, ptr %i.a, align 8
  %i.j = getelementptr i8, ptr %0, i64 2
  %i.k = load i16, ptr %i.j, align 2
  %i.l = load i16, ptr %0, align 8
  %i.m = call i32 @i2c_smbus_xfer(ptr noundef %i.i, i16 noundef zeroext %i.k, i16 noundef zeroext %i.l, i8 noundef zeroext 1, i8 noundef zeroext %1, i32 noundef 8, ptr noundef nonnull %6) #17 ; 2 uses
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %i2c_smbus_read_i2c_block_data.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.p = load i8, ptr %6, align 2                 ; 2 uses
  %i.q = zext i8 %i.p to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr nonnull align 1 %i.o, i64 %i.q, i1 false)
  %i.r = zext i8 %i.p to i32
  br label %i2c_smbus_read_i2c_block_data.exit

i2c_smbus_read_i2c_block_data.exit:               ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.r, %bb.c ], [ %i.m, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call i32 %i.w(ptr noundef %i.s) #14, !inline_history !54
  %i.y = and i32 %i.x, 524288
  %.not42 = icmp eq i32 %i.y, 0
  br i1 %.not42, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = tail call i32 %i.ad(ptr noundef %i.z) #14, !inline_history !54
  %i.af = and i32 %i.ae, 2097152
  %.not43 = icmp eq i32 %i.af, 0
  br i1 %.not43, label %.loopexit45, label %.preheader

.preheader:                                       ; preds = %bb.e
  %i.ag = zext nneg i8 %spec.store.select to i32
  %.not4450 = icmp ult i8 %2, 2
  br i1 %.not4450, label %.loopexit45, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ah = getelementptr i8, ptr %0, i64 2
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ai = phi i32 [ 2, %.lr.ph ], [ %i.as, %bb.g ]
  %i.aj = trunc nuw nsw i64 %indvars.iv to i8
  %i.ak = add i8 %1, %i.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(34) %5, i8 0, i64 34, i1 false), !annotation !17
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = load i16, ptr %i.ah, align 2
  %i.an = load i16, ptr %0, align 8
  %i.ao = call i32 @i2c_smbus_xfer(ptr noundef %i.al, i16 noundef zeroext %i.am, i16 noundef zeroext %i.an, i8 noundef zeroext 1, i8 noundef zeroext %i.ak, i32 noundef 3, ptr noundef nonnull %5) #17 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  %i.aq = load i16, ptr %5, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br i1 %i.ap, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr i8, ptr %3, i64 %indvars.iv
  store i16 %i.aq, ptr %i.ar, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.as = add nuw nsw i32 %i.ai, 2                ; 2 uses
  %.not44 = icmp samesign ugt i32 %i.as, %i.ag
end_hunk_0
