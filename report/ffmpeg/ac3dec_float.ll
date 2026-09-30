Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/ac3dec_float?download=true
inline.NumInlined: 130
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 31
begin_hunk_0_@ac3_decode_frame:bb.a
  %i.bta = load i32, ptr %i.ce, align 4, !tbaa !43
  %i.btb = sub nsw i32 %i.bsz, %i.bta
  %i.btc = add nsw i32 %i.bsy, -1
  %i.btd = shl i32 3, %i.btc
  %i.bte = sdiv i32 %i.btb, %i.btd
  store i32 %i.bte, ptr %i.cg, align 4, !tbaa !43
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gq, %bb.gp, %._crit_edge.i479
  br i1 %.not550798.i, label %._crit_edge808.i, label %.lr.ph807.i

.lr.ph807.i:                                      ; preds = %bb.gr
  %i.btf = getelementptr inbounds nuw [28 x i8], ptr %i.ed, i64 %indvars.iv777
  %i.btg = zext i1 %.not547.i to i64
  br label %bb.gs

bb.gs:                                            ; preds = %bb.he, %.lr.ph807.i
  %indvars.iv898.i = phi i64 [ %i.btg, %.lr.ph807.i ], [ %indvars.iv.next899.i, %bb.he ] ; 8 uses
  %i.bth = getelementptr inbounds nuw [4 x i8], ptr %i.btf, i64 %indvars.iv898.i ; 2 uses
  %i.bti = load i32, ptr %i.bth, align 4, !tbaa !43
  %.not595.i = icmp eq i32 %i.bti, 0
  br i1 %.not595.i, label %bb.he, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.btj = load i32, ptr %i.ao, align 8, !tbaa !52 ; 3 uses
  %i.btk = load i32, ptr %i.an, align 16, !tbaa !51 ; 2 uses
  %i.btl = load ptr, ptr %i.al, align 16, !tbaa !50 ; 2 uses
  %i.btm = lshr i32 %i.btj, 3
  %i.btn = zext nneg i32 %i.btm to i64
  %i.bto = getelementptr inbounds nuw i8, ptr %i.btl, i64 %i.btn
  %i.btp = load i32, ptr %i.bto, align 1, !tbaa !44
  %i.btq = call i32 @llvm.bswap.i32(i32 %i.btp)
  %i.btr = and i32 %i.btj, 7
  %i.bts = shl i32 %i.btq, %i.btr
  %i.btt = lshr i32 %i.bts, 28
  %i.btu = add i32 %i.btj, 4
  %i.btv = call i32 @llvm.umin.i32(i32 %i.btk, i32 %i.btu) ; 2 uses
  store i32 %i.btv, ptr %i.ao, align 8, !tbaa !52
  %i.btw = icmp ne i64 %indvars.iv898.i, 0        ; 3 uses
  %i.btx = xor i1 %i.btw, true
  %i.bty = zext i1 %i.btx to i32
  %i.btz = shl nuw nsw i32 %i.btt, %i.bty         ; 2 uses
  %i.bua = trunc nuw nsw i32 %i.btz to i8
  %i.bub = getelementptr inbounds nuw [256 x i8], ptr %i.gn, i64 %indvars.iv898.i ; 2 uses
  store i8 %i.bua, ptr %i.bub, align 16, !tbaa !44
  %i.buc = load i32, ptr %i.bth, align 4, !tbaa !43
  %i.bud = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv898.i
  %i.bue = load i32, ptr %i.bud, align 4, !tbaa !43 ; 3 uses
  %i.buf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv898.i
  %i.bug = load i32, ptr %i.buf, align 4, !tbaa !43
  %i.buh = zext i1 %i.btw to i32
  %i.bui = add nsw i32 %i.bug, %i.buh
  %i.buj = sext i32 %i.bui to i64
  %i.buk = getelementptr inbounds i8, ptr %i.bub, i64 %i.buj ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.bul = icmp sgt i32 %i.bue, 0
  br i1 %i.bul, label %.lr.ph.i654.i, label %.loopexit758.i

.lr.ph.i654.i:                                    ; preds = %bb.gt, %bb.gv
  %indvars.iv.i656.i = phi i64 [ %indvars.iv.next.i657.i, %bb.gv ], [ 0, %bb.gt ] ; 2 uses
  %i.bum = phi i32 [ %i.buw, %bb.gv ], [ %i.btv, %bb.gt ] ; 3 uses
  %.03749.i.i = phi i32 [ %i.bvi, %bb.gv ], [ 0, %bb.gt ]
  %i.bun = lshr i32 %i.bum, 3
  %i.buo = zext nneg i32 %i.bun to i64
  %i.bup = getelementptr inbounds nuw i8, ptr %i.btl, i64 %i.buo
  %i.buq = load i32, ptr %i.bup, align 1, !tbaa !44
  %i.bur = call i32 @llvm.bswap.i32(i32 %i.buq)
  %i.bus = and i32 %i.bum, 7
  %i.but = shl i32 %i.bur, %i.bus                 ; 2 uses
  %i.buu = lshr i32 %i.but, 25                    ; 2 uses
  %i.buv = add i32 %i.bum, 7
  %i.buw = call i32 @llvm.umin.i32(i32 %i.btk, i32 %i.buv) ; 2 uses
  store i32 %i.buw, ptr %i.ao, align 8, !tbaa !52
  %i.bux = icmp ugt i32 %i.but, -100663297
  br i1 %i.bux, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %.lr.ph.i654.i
  %i.buy = load ptr, ptr %i.ck, align 8, !tbaa !40
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.buy, i32 noundef 16, ptr noundef nonnull @.str.66, i32 noundef %i.buu) #11
  br label %decode_exponents.exit.i

bb.gv:                                            ; preds = %.lr.ph.i654.i
  %i.buz = zext nneg i32 %i.buu to i64
  %i.bva = getelementptr inbounds nuw [3 x i8], ptr @ff_ac3_ungroup_3_in_7_bits_tab, i64 %i.buz ; 2 uses
  %i.bvb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i656.i ; 2 uses
  %i.bvc = load <2 x i8>, ptr %i.bva, align 1, !tbaa !44
  %i.bvd = zext <2 x i8> %i.bvc to <2 x i32>
  store <2 x i32> %i.bvd, ptr %i.bvb, align 4, !tbaa !43
  %i.bve = getelementptr inbounds nuw i8, ptr %i.bva, i64 2
  %i.bvf = load i8, ptr %i.bve, align 1, !tbaa !44
  %i.bvg = zext i8 %i.bvf to i32
  %indvars.iv.next.i657.i = add nuw nsw i64 %indvars.iv.i656.i, 3
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bvb, i64 8
  store i32 %i.bvg, ptr %i.bvh, align 4, !tbaa !43
  %i.bvi = add nuw nsw i32 %.03749.i.i, 1         ; 2 uses
  %exitcond.not.i658.i = icmp eq i32 %i.bvi, %i.bue
  br i1 %exitcond.not.i658.i, label %._crit_edge.i659.i, label %.lr.ph.i654.i, !llvm.loop !107

._crit_edge.i659.i:                               ; preds = %bb.gv
  %i.bvj = mul i32 %i.bue, 3
  %smax.i.i = call i32 @llvm.smax.i32(i32 %i.bvj, i32 1)
  %wide.trip.count.i660.i = zext nneg i32 %smax.i.i to i64
  br label %.lr.ph54.i.i

.lr.ph54.i.i:                                     ; preds = %bb.hb, %._crit_edge.i659.i
  %indvars.iv59.i.i = phi i64 [ 0, %._crit_edge.i659.i ], [ %indvars.iv.next60.i.i, %bb.hb ] ; 2 uses
  %.052.i.i = phi i32 [ %i.btz, %._crit_edge.i659.i ], [ %i.bvn, %bb.hb ]
  %.03851.i.i = phi i32 [ 0, %._crit_edge.i659.i ], [ %.3.i.i, %bb.hb ] ; 5 uses
  %i.bvk = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv59.i.i
  %i.bvl = load i32, ptr %i.bvk, align 4, !tbaa !43
  %i.bvm = add nsw i32 %.052.i.i, -2
  %i.bvn = add i32 %i.bvm, %i.bvl                 ; 6 uses
  %i.bvo = icmp ugt i32 %i.bvn, 24
  br i1 %i.bvo, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %.lr.ph54.i.i
  %i.bvp = load ptr, ptr %i.ck, align 8, !tbaa !40
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bvp, i32 noundef 16, ptr noundef nonnull @.str.67, i32 noundef %i.bvn) #11
  br label %decode_exponents.exit.i

bb.gx:                                            ; preds = %.lr.ph54.i.i
  switch i32 %i.buc, label %bb.hb [
    i32 4, label %bb.gy
    i32 2, label %._crit_edge64.i.i
    i32 1, label %._crit_edge63.i.i
    i32 3, label %bb.gy
  ]

._crit_edge64.i.i:                                ; preds = %bb.gx
  %.pre.i663.i = trunc nuw nsw i32 %i.bvn to i8
  br label %bb.gz

._crit_edge63.i.i:                                ; preds = %bb.gx
  %.pre65.i662.i = trunc nuw nsw i32 %i.bvn to i8
  br label %bb.ha

bb.gy:                                            ; preds = %bb.gx, %bb.gx
  %i.bvq = trunc nuw nsw i32 %i.bvn to i8         ; 3 uses
  %i.bvr = sext i32 %.03851.i.i to i64
  %i.bvs = getelementptr inbounds i8, ptr %i.buk, i64 %i.bvr ; 2 uses
  store i8 %i.bvq, ptr %i.bvs, align 1, !tbaa !44
  %i.bvt = add nsw i32 %.03851.i.i, 2
  %i.bvu = getelementptr i8, ptr %i.bvs, i64 1
  store i8 %i.bvq, ptr %i.bvu, align 1, !tbaa !44
  br label %bb.gz

bb.gz:                                            ; preds = %bb.gy, %._crit_edge64.i.i
  %.pre-phi.i.i = phi i8 [ %.pre.i663.i, %._crit_edge64.i.i ], [ %i.bvq, %bb.gy ] ; 2 uses
  %.1.i661.i = phi i32 [ %.03851.i.i, %._crit_edge64.i.i ], [ %i.bvt, %bb.gy ] ; 2 uses
  %i.bvv = add nsw i32 %.1.i661.i, 1
  %i.bvw = sext i32 %.1.i661.i to i64
  %i.bvx = getelementptr inbounds i8, ptr %i.buk, i64 %i.bvw
  store i8 %.pre-phi.i.i, ptr %i.bvx, align 1, !tbaa !44
  br label %bb.ha

bb.ha:                                            ; preds = %bb.gz, %._crit_edge63.i.i
  %.pre-phi66.i.i = phi i8 [ %.pre65.i662.i, %._crit_edge63.i.i ], [ %.pre-phi.i.i, %bb.gz ]
  %.2.i.i = phi i32 [ %.03851.i.i, %._crit_edge63.i.i ], [ %i.bvv, %bb.gz ] ; 2 uses
  %i.bvy = add nsw i32 %.2.i.i, 1
  %i.bvz = sext i32 %.2.i.i to i64
  %i.bwa = getelementptr inbounds i8, ptr %i.buk, i64 %i.bvz
  store i8 %.pre-phi66.i.i, ptr %i.bwa, align 1, !tbaa !44
  br label %bb.hb

bb.hb:                                            ; preds = %bb.ha, %bb.gx
  %.3.i.i = phi i32 [ %.03851.i.i, %bb.gx ], [ %i.bvy, %bb.ha ]
  %indvars.iv.next60.i.i = add nuw nsw i64 %indvars.iv59.i.i, 1 ; 2 uses
  %exitcond62.not.i.i = icmp eq i64 %indvars.iv.next60.i.i, %wide.trip.count.i660.i
  br i1 %exitcond62.not.i.i, label %.loopexit758.i, label %.lr.ph54.i.i, !llvm.loop !108

decode_exponents.exit.i:                          ; preds = %bb.gw, %bb.gu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.mb

.loopexit758.i:                                   ; preds = %bb.hb, %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br i1 %i.btw, label %bb.hc, label %bb.he

bb.hc:                                            ; preds = %.loopexit758.i
  %i.bwb = load i32, ptr %i.bj, align 4, !tbaa !179
  %i.bwc = zext i32 %i.bwb to i64
  %.not597.i = icmp eq i64 %indvars.iv898.i, %i.bwc
  br i1 %.not597.i, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.bwd = load i32, ptr %i.ao, align 8, !tbaa !52
  %i.bwe = load i32, ptr %i.an, align 16, !tbaa !51
  %i.bwf = add i32 %i.bwd, 2
  %i.bwg = call i32 @llvm.umin.i32(i32 %i.bwe, i32 %i.bwf)
  store i32 %i.bwg, ptr %i.ao, align 8, !tbaa !52
  br label %bb.he

bb.he:                                            ; preds = %bb.hd, %bb.hc, %.loopexit758.i, %bb.gs
  %indvars.iv.next899.i = add nuw nsw i64 %indvars.iv898.i, 1
  %i.bwh = load i32, ptr %i.bh, align 16, !tbaa !177 ; 2 uses
  %i.bwi = sext i32 %i.bwh to i64
  %.not553.not.i = icmp slt i64 %indvars.iv898.i, %i.bwi
  br i1 %.not553.not.i, label %bb.gs, label %._crit_edge808.i, !llvm.loop !109

._crit_edge808.i:                                 ; preds = %bb.he, %bb.gr
  %i.bwj = phi i32 [ %i.bqo, %bb.gr ], [ %i.bwh, %bb.he ] ; 13 uses
  %i.bwk = load i32, ptr %i.di, align 16, !tbaa !222
  %.not554.i = icmp eq i32 %i.bwk, 0
  br i1 %.not554.i, label %.loopexit757.i, label %bb.hf

bb.hf:                                            ; preds = %._crit_edge808.i
  %i.bwl = load i32, ptr %i.ao, align 8, !tbaa !52 ; 4 uses
  %i.bwm = load ptr, ptr %i.al, align 16, !tbaa !50 ; 6 uses
  %i.bwn = lshr i32 %i.bwl, 3
  %i.bwo = zext nneg i32 %i.bwn to i64
  %i.bwp = getelementptr inbounds nuw i8, ptr %i.bwm, i64 %i.bwo
  %i.bwq = load i8, ptr %i.bwp, align 1, !tbaa !44
  %i.bwr = load i32, ptr %i.an, align 16, !tbaa !51 ; 6 uses
  %i.bws = icmp slt i32 %i.bwl, %i.bwr
  %i.bwt = zext i1 %i.bws to i32
  %spec.select.i664.i = add i32 %i.bwl, %i.bwt    ; 4 uses
  %i.bwu = zext i8 %i.bwq to i32
  %i.bwv = and i32 %i.bwl, 7
  store i32 %spec.select.i664.i, ptr %i.ao, align 8, !tbaa !52
  %i.bww = lshr exact i32 128, %i.bwv
  %i.bwx = and i32 %i.bww, %i.bwu
  %.not555.i = icmp eq i32 %i.bwx, 0
  br i1 %.not555.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.bwy = lshr i32 %spec.select.i664.i, 3
  %i.bwz = zext nneg i32 %i.bwy to i64
  %i.bxa = getelementptr inbounds nuw i8, ptr %i.bwm, i64 %i.bwz
  %i.bxb = load i32, ptr %i.bxa, align 1, !tbaa !44
  %i.bxc = call i32 @llvm.bswap.i32(i32 %i.bxb)
  %i.bxd = and i32 %spec.select.i664.i, 7
  %i.bxe = shl i32 %i.bxc, %i.bxd
  %i.bxf = lshr i32 %i.bxe, 30
  %i.bxg = add i32 %spec.select.i664.i, 2
  %i.bxh = call i32 @llvm.umin.i32(i32 %i.bwr, i32 %i.bxg) ; 4 uses
  store i32 %i.bxh, ptr %i.ao, align 8, !tbaa !52
  %i.bxi = zext nneg i32 %i.bxf to i64
  %i.bxj = getelementptr inbounds nuw i8, ptr @ff_ac3_slow_decay_tab, i64 %i.bxi
  %i.bxk = load i8, ptr %i.bxj, align 1, !tbaa !44
  %i.bxl = zext i8 %i.bxk to i32
  %i.bxm = load i32, ptr %i.bb, align 4, !tbaa !171 ; 2 uses
  %i.bxn = lshr i32 %i.bxl, %i.bxm
  store i32 %i.bxn, ptr %i.dl, align 4, !tbaa !223
  %i.bxo = lshr i32 %i.bxh, 3
  %i.bxp = zext nneg i32 %i.bxo to i64
  %i.bxq = getelementptr inbounds nuw i8, ptr %i.bwm, i64 %i.bxp
  %i.bxr = load i32, ptr %i.bxq, align 1, !tbaa !44
  %i.bxs = call i32 @llvm.bswap.i32(i32 %i.bxr)
  %i.bxt = and i32 %i.bxh, 7
  %i.bxu = shl i32 %i.bxs, %i.bxt
  %i.bxv = lshr i32 %i.bxu, 30
  %i.bxw = add i32 %i.bxh, 2
  %i.bxx = call i32 @llvm.umin.i32(i32 %i.bwr, i32 %i.bxw) ; 4 uses
  store i32 %i.bxx, ptr %i.ao, align 8, !tbaa !52
  %i.bxy = zext nneg i32 %i.bxv to i64
  %i.bxz = getelementptr inbounds nuw i8, ptr @ff_ac3_fast_decay_tab, i64 %i.bxy
  %i.bya = load i8, ptr %i.bxz, align 1, !tbaa !44
  %i.byb = zext i8 %i.bya to i32
  %i.byc = lshr i32 %i.byb, %i.bxm
  store i32 %i.byc, ptr %i.do, align 8, !tbaa !224
  %i.byd = lshr i32 %i.bxx, 3
  %i.bye = zext nneg i32 %i.byd to i64
  %i.byf = getelementptr inbounds nuw i8, ptr %i.bwm, i64 %i.bye
  %i.byg = load i32, ptr %i.byf, align 1, !tbaa !44
  %i.byh = call i32 @llvm.bswap.i32(i32 %i.byg)
  %i.byi = and i32 %i.bxx, 7
  %i.byj = shl i32 %i.byh, %i.byi
  %i.byk = lshr i32 %i.byj, 30
  %i.byl = add i32 %i.bxx, 2
  %i.bym = call i32 @llvm.umin.i32(i32 %i.bwr, i32 %i.byl) ; 4 uses
  store i32 %i.bym, ptr %i.ao, align 8, !tbaa !52
  %i.byn = zext nneg i32 %i.byk to i64
  %i.byo = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_slow_gain_tab, i64 %i.byn
  %i.byp = load i16, ptr %i.byo, align 2, !tbaa !56
  %i.byq = zext i16 %i.byp to i32
  store i32 %i.byq, ptr %i.dr, align 16, !tbaa !225
  %i.byr = lshr i32 %i.bym, 3
  %i.bys = zext nneg i32 %i.byr to i64
  %i.byt = getelementptr inbounds nuw i8, ptr %i.bwm, i64 %i.bys
  %i.byu = load i32, ptr %i.byt, align 1, !tbaa !44
  %i.byv = call i32 @llvm.bswap.i32(i32 %i.byu)
  %i.byw = and i32 %i.bym, 7
  %i.byx = shl i32 %i.byv, %i.byw
  %i.byy = lshr i32 %i.byx, 30
  %i.byz = add i32 %i.bym, 2
  %i.bza = call i32 @llvm.umin.i32(i32 %i.bwr, i32 %i.byz) ; 4 uses
  store i32 %i.bza, ptr %i.ao, align 8, !tbaa !52
  %i.bzb = zext nneg i32 %i.byy to i64
  %i.bzc = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_db_per_bit_tab, i64 %i.bzb
  %i.bzd = load i16, ptr %i.bzc, align 2, !tbaa !56
  %i.bze = zext i16 %i.bzd to i32
  store i32 %i.bze, ptr %i.du, align 4, !tbaa !226
  %i.bzf = lshr i32 %i.bza, 3
  %i.bzg = zext nneg i32 %i.bzf to i64
  %i.bzh = getelementptr inbounds nuw i8, ptr %i.bwm, i64 %i.bzg
  %i.bzi = load i32, ptr %i.bzh, align 1, !tbaa !44
  %i.bzj = call i32 @llvm.bswap.i32(i32 %i.bzi)
  %i.bzk = and i32 %i.bza, 7
  %i.bzl = shl i32 %i.bzj, %i.bzk
  %i.bzm = lshr i32 %i.bzl, 29
  %i.bzn = add i32 %i.bza, 3
  %i.bzo = call i32 @llvm.umin.i32(i32 %i.bwr, i32 %i.bzn)
  store i32 %i.bzo, ptr %i.ao, align 8, !tbaa !52
  %i.bzp = zext nneg i32 %i.bzm to i64
  %i.bzq = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_floor_tab, i64 %i.bzp
  %i.bzr = load i16, ptr %i.bzq, align 2, !tbaa !56
  %i.bzs = sext i16 %i.bzr to i32
  store i32 %i.bzs, ptr %i.dx, align 16, !tbaa !227
  %.not557810.i = icmp slt i32 %i.bwj, %i.bqn
  br i1 %.not557810.i, label %.loopexit757.i, label %iter.check

iter.check:                                       ; preds = %bb.hg
  %i.bzt = zext i1 %.not547.i to i64              ; 4 uses
  %i.bzu = add nuw i32 %i.bwj, 1
  %wide.trip.count904.i = zext i32 %i.bzu to i64  ; 2 uses
  %i.bzv = sub nuw nsw i64 %wide.trip.count904.i, %i.bzt ; 7 uses
  %min.iters.check1107 = icmp samesign ult i64 %i.bzv, 8
  br i1 %min.iters.check1107, label %.lr.ph813.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1108 = icmp samesign ult i64 %i.bzv, 32
  br i1 %min.iters.check1108, label %vec.epilog.ph, label %vector.ph1109

vector.ph1109:                                    ; preds = %vector.main.loop.iter.check
  %i.bzw = and i64 %i.bzv, 24
  %n.vec1110 = and i64 %i.bzv, 4294967264         ; 4 uses
  %i.bzx = or disjoint i64 %n.vec1110, %i.bzt
  %.sroa.sel.idx = zext i1 %.not547.i to i64
  %.sroa.sel.sroa.sel.v = select i1 %.not547.i, i64 17, i64 16
  br label %vector.body1111

vector.body1111:                                  ; preds = %vector.ph1109, %vector.body1111
  %index1112 = phi i64 [ 0, %vector.ph1109 ], [ %index.next1115, %vector.body1111 ] ; 2 uses
  %i.bzy = getelementptr inbounds nuw i8, ptr %i.e, i64 %index1112 ; 2 uses
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %i.bzy, i64 %.sroa.sel.idx ; 2 uses
  %.sroa.sel.sroa.sel = getelementptr inbounds nuw i8, ptr %i.bzy, i64 %.sroa.sel.sroa.sel.v ; 2 uses
  %wide.load1113 = load <16 x i8>, ptr %.sroa.sel, align 1, !tbaa !44
  %wide.load1114 = load <16 x i8>, ptr %.sroa.sel.sroa.sel, align 1, !tbaa !44
  %i.bzz = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load1113, <16 x i8> splat (i8 2))
  %i.caa = call <16 x i8> @llvm.umax.v16i8(<16 x i8> %wide.load1114, <16 x i8> splat (i8 2))
  store <16 x i8> %i.bzz, ptr %.sroa.sel, align 1, !tbaa !44
  store <16 x i8> %i.caa, ptr %.sroa.sel.sroa.sel, align 1, !tbaa !44
  %index.next1115 = add nuw i64 %index1112, 32    ; 2 uses
  %i.cab = icmp eq i64 %index.next1115, %n.vec1110
  br i1 %i.cab, label %middle.block1116, label %vector.body1111, !llvm.loop !110

middle.block1116:                                 ; preds = %vector.body1111
  %cmp.n1117 = icmp eq i64 %i.bzv, %n.vec1110
  br i1 %cmp.n1117, label %.loopexit757.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1116
  %min.epilog.iters.check = icmp eq i64 %i.bzw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph813.i.preheader, label %vec.epilog.ph, !prof !253

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1110, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1119 = and i64 %i.bzv, 4294967288         ; 3 uses
  %i.cac = or disjoint i64 %n.vec1119, %i.bzt
  %.sroa.sel1379.idx = zext i1 %.not547.i to i64
  %invariant.gep1429 = getelementptr i8, ptr %i.e, i64 %.sroa.sel1379.idx
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1120 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1122, %vec.epilog.vector.body ] ; 2 uses
  %gep1430 = getelementptr i8, ptr %invariant.gep1429, i64 %index1120 ; 2 uses
  %wide.load1121 = load <8 x i8>, ptr %gep1430, align 1, !tbaa !44
  %i.cad = call <8 x i8> @llvm.umax.v8i8(<8 x i8> %wide.load1121, <8 x i8> splat (i8 2))
  store <8 x i8> %i.cad, ptr %gep1430, align 1, !tbaa !44
  %index.next1122 = add nuw i64 %index1120, 8     ; 2 uses
  %i.cae = icmp eq i64 %index.next1122, %n.vec1119
  br i1 %i.cae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !111

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1123 = icmp eq i64 %i.bzv, %n.vec1119
  br i1 %cmp.n1123, label %.loopexit757.i, label %.lr.ph813.i.preheader

.lr.ph813.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv901.i.ph = phi i64 [ %i.bzt, %iter.check ], [ %i.bzx, %vec.epilog.iter.check ], [ %i.cac, %vec.epilog.middle.block ]
  br label %.lr.ph813.i

.lr.ph813.i:                                      ; preds = %.lr.ph813.i.preheader, %.lr.ph813.i
  %indvars.iv901.i = phi i64 [ %indvars.iv.next902.i, %.lr.ph813.i ], [ %indvars.iv901.i.ph, %.lr.ph813.i.preheader ] ; 2 uses
  %i.caf = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv901.i ; 2 uses
  %i.cag = load i8, ptr %i.caf, align 1, !tbaa !44
  %spec.select605.i = call i8 @llvm.umax.i8(i8 %i.cag, i8 2)
  store i8 %spec.select605.i, ptr %i.caf, align 1, !tbaa !44
  %indvars.iv.next902.i = add nuw nsw i64 %indvars.iv901.i, 1 ; 2 uses
  %exitcond905.not.i = icmp eq i64 %indvars.iv.next902.i, %wide.trip.count904.i
  br i1 %exitcond905.not.i, label %.loopexit757.i, label %.lr.ph813.i, !llvm.loop !112

bb.hh:                                            ; preds = %bb.hf
  br i1 %i.atk, label %bb.hi, label %.loopexit757.i

bb.hi:                                            ; preds = %bb.hh
  %i.cah = load ptr, ptr %i.ck, align 8, !tbaa !40
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cah, i32 noundef 16, ptr noundef nonnull @.str.54) #11
  br label %bb.mb

.loopexit757.i:                                   ; preds = %.lr.ph813.i, %middle.block1116, %vec.epilog.middle.block, %bb.hh, %bb.hg, %._crit_edge808.i
  %i.cai = load i32, ptr %i.ci, align 4, !tbaa !201 ; 5 uses
  %i.caj = icmp ne i32 %i.cai, 0
  %i.cak = icmp ne i64 %indvars.iv777, 0          ; 9 uses
  %or.cond4.i = and i1 %i.cak, %i.caj
  br i1 %or.cond4.i, label %.loopexit756.i, label %bb.hj

bb.hj:                                            ; preds = %.loopexit757.i
  %i.cal = load i32, ptr %i.dd, align 4, !tbaa !219 ; 2 uses
  %.not558.i = icmp eq i32 %i.cal, 0
  br i1 %.not558.i, label %bb.ib, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.cam = load i32, ptr %i.ao, align 8, !tbaa !52 ; 4 uses
  %i.can = load ptr, ptr %i.al, align 16, !tbaa !50 ; 6 uses
  %i.cao = lshr i32 %i.cam, 3
  %i.cap = zext nneg i32 %i.cao to i64
  %i.caq = getelementptr inbounds nuw i8, ptr %i.can, i64 %i.cap
  %i.car = load i8, ptr %i.caq, align 1, !tbaa !44
  %i.cas = load i32, ptr %i.an, align 16, !tbaa !51 ; 6 uses
  %i.cat = icmp slt i32 %i.cam, %i.cas
  %i.cau = zext i1 %i.cat to i32
  %spec.select.i665.i = add i32 %i.cam, %i.cau    ; 4 uses
  %i.cav = zext i8 %i.car to i32
  %i.caw = and i32 %i.cam, 7
  store i32 %spec.select.i665.i, ptr %i.ao, align 8, !tbaa !52
  %i.cax = lshr exact i32 128, %i.caw
  %i.cay = and i32 %i.cax, %i.cav
  %.not559.i = icmp eq i32 %i.cay, 0
  br i1 %.not559.i, label %bb.ib, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.caz = lshr i32 %spec.select.i665.i, 3
  %i.cba = zext nneg i32 %i.caz to i64
  %i.cbb = getelementptr inbounds nuw i8, ptr %i.can, i64 %i.cba
  %i.cbc = load i32, ptr %i.cbb, align 1, !tbaa !44
  %i.cbd = call i32 @llvm.bswap.i32(i32 %i.cbc)
  %i.cbe = and i32 %spec.select.i665.i, 7
  %i.cbf = shl i32 %i.cbd, %i.cbe
  %i.cbg = add i32 %spec.select.i665.i, 6
  %i.cbh = call i32 @llvm.umin.i32(i32 %i.cas, i32 %i.cbg) ; 4 uses
  store i32 %i.cbh, ptr %i.ao, align 8, !tbaa !52
  %i.cbi = lshr i32 %i.cbf, 22
  %i.cbj = and i32 %i.cbi, 1008
  %i.cbk = add nuw nsw i32 %i.cbj, 1073741584     ; 2 uses
  %.not560814.i = icmp slt i32 %i.bwj, %i.bqn
  br i1 %.not560814.i, label %.loopexit756.i, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.cbl = icmp eq i32 %i.cal, 2
  %.not562.i = icmp eq i32 %i.cai, 0              ; 2 uses
  %i.cbm = zext i1 %.not547.i to i64              ; 3 uses
  %i.cbn = add nuw i32 %i.bwj, 1
  %wide.trip.count909.i = zext i32 %i.cbn to i64  ; 2 uses
  %i.cbo = lshr i32 %i.cbh, 3
  %i.cbp = zext nneg i32 %i.cbo to i64
  %i.cbq = getelementptr inbounds nuw i8, ptr %i.can, i64 %i.cbp
  %i.cbr = load i32, ptr %i.cbq, align 1, !tbaa !44
  %i.cbs = call i32 @llvm.bswap.i32(i32 %i.cbr)
  %i.cbt = and i32 %i.cbh, 7
  %i.cbu = shl i32 %i.cbs, %i.cbt
  %i.cbv = lshr i32 %i.cbu, 28
  %i.cbw = add i32 %i.cbh, 4
  %i.cbx = call i32 @llvm.umin.i32(i32 %i.cas, i32 %i.cbw) ; 5 uses
  store i32 %i.cbx, ptr %i.ao, align 8, !tbaa !52
  %i.cby = or disjoint i32 %i.cbv, %i.cbk
  %i.cbz = shl i32 %i.cby, 2                      ; 3 uses
  br i1 %i.cak, label %bb.hn, label %bb.hp

bb.hn:                                            ; preds = %bb.hm
  %i.cca = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.cbm
  %i.ccb = load i32, ptr %i.cca, align 4, !tbaa !43
  %.not561.peel.i = icmp eq i32 %i.ccb, %i.cbz
  br i1 %.not561.peel.i, label %bb.hp, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %.not547.i to i64
  %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.ccc = load i8, ptr %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !44
  %spec.select606.peel.i = call i8 @llvm.umax.i8(i8 %i.ccc, i8 1)
  store i8 %spec.select606.peel.i, ptr %.sroa.sel.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !44
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.hn, %bb.hm
  %i.ccd = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.cbm
  store i32 %i.cbz, ptr %i.ccd, align 4, !tbaa !43
  br i1 %.not562.i, label %bb.hq, label %bb.hs

bb.hq:                                            ; preds = %bb.hp
  %i.cce = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.cbm ; 2 uses
  %i.ccf = load i32, ptr %i.cce, align 4, !tbaa !43
  %i.ccg = lshr i32 %i.cbx, 3
  %i.cch = zext nneg i32 %i.ccg to i64
  %i.cci = getelementptr inbounds nuw i8, ptr %i.can, i64 %i.cch
  %i.ccj = load i32, ptr %i.cci, align 1, !tbaa !44
  %i.cck = call i32 @llvm.bswap.i32(i32 %i.ccj)
  %i.ccl = and i32 %i.cbx, 7
  %i.ccm = shl i32 %i.cck, %i.ccl
  %i.ccn = lshr i32 %i.ccm, 29
  %i.cco = add i32 %i.cbx, 3
  %i.ccp = call i32 @llvm.umin.i32(i32 %i.cas, i32 %i.cco) ; 3 uses
  store i32 %i.ccp, ptr %i.ao, align 8, !tbaa !52
  %i.ccq = zext nneg i32 %i.ccn to i64
  %i.ccr = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_fast_gain_tab, i64 %i.ccq
  %i.ccs = load i16, ptr %i.ccr, align 2, !tbaa !56
  %i.cct = zext i16 %i.ccs to i32                 ; 2 uses
  store i32 %i.cct, ptr %i.cce, align 4, !tbaa !43
  %.not563.peel.i = icmp ne i32 %i.ccf, %i.cct
  %or.cond608.not.peel.i = select i1 %i.cak, i1 %.not563.peel.i, i1 false
  br i1 %or.cond608.not.peel.i, label %bb.hr, label %bb.hs

bb.hr:                                            ; preds = %bb.hq
  %.sroa.sel951.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %.not547.i to i64
  %.sroa.sel951.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.sel951.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  %i.ccu = load i8, ptr %.sroa.sel951.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !44
  %spec.select609.peel.i = call i8 @llvm.umax.i8(i8 %i.ccu, i8 2)
  store i8 %spec.select609.peel.i, ptr %.sroa.sel951.idx.i.sroa.sel.idx.sroa.sel.idx.sroa.sel, align 1, !tbaa !44
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq, %bb.hp
  %i.ccv = phi i32 [ %i.ccp, %bb.hr ], [ %i.ccp, %bb.hq ], [ %i.cbx, %bb.hp ]
  %indvars.iv.next907.peel.i = select i1 %.not547.i, i64 2, i64 1 ; 2 uses
  %exitcond910.peel.not.i = icmp eq i64 %indvars.iv.next907.peel.i, %wide.trip.count909.i
  br i1 %exitcond910.peel.not.i, label %.loopexit756.i, label %.peel.next912.i

.peel.next912.i:                                  ; preds = %bb.hs, %bb.ia
  %i.ccw = phi i32 [ %i.ceh, %bb.ia ], [ %i.ccv, %bb.hs ] ; 4 uses
  %indvars.iv906.i = phi i64 [ %indvars.iv.next907.i, %bb.ia ], [ %indvars.iv.next907.peel.i, %bb.hs ] ; 6 uses
  %.0496816.i = phi i32 [ %.1497.i, %bb.ia ], [ %i.cbz, %bb.hs ]
  br i1 %i.cbl, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %.peel.next912.i
  %i.ccx = lshr i32 %i.ccw, 3
  %i.ccy = zext nneg i32 %i.ccx to i64
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.can, i64 %i.ccy
  %i.cda = load i32, ptr %i.ccz, align 1, !tbaa !44
  %i.cdb = call i32 @llvm.bswap.i32(i32 %i.cda)
  %i.cdc = and i32 %i.ccw, 7
  %i.cdd = shl i32 %i.cdb, %i.cdc
  %i.cde = lshr i32 %i.cdd, 28
  %i.cdf = add i32 %i.ccw, 4
  %i.cdg = call i32 @llvm.umin.i32(i32 %i.cas, i32 %i.cdf) ; 2 uses
  store i32 %i.cdg, ptr %i.ao, align 8, !tbaa !52
  %i.cdh = or disjoint i32 %i.cde, %i.cbk
  %i.cdi = shl i32 %i.cdh, 2
  br label %bb.hu

bb.hu:                                            ; preds = %bb.ht, %.peel.next912.i
  %i.cdj = phi i32 [ %i.cdg, %bb.ht ], [ %i.ccw, %.peel.next912.i ] ; 4 uses
  %.1497.i = phi i32 [ %i.cdi, %bb.ht ], [ %.0496816.i, %.peel.next912.i ] ; 3 uses
  br i1 %i.cak, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %bb.hu
  %i.cdk = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv906.i
  %i.cdl = load i32, ptr %i.cdk, align 4, !tbaa !43
  %.not561.i = icmp eq i32 %i.cdl, %.1497.i
  br i1 %.not561.i, label %bb.hx, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.cdm = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv906.i ; 2 uses
  %i.cdn = load i8, ptr %i.cdm, align 1, !tbaa !44
  %spec.select606.i = call i8 @llvm.umax.i8(i8 %i.cdn, i8 1)
  store i8 %spec.select606.i, ptr %i.cdm, align 1, !tbaa !44
  br label %bb.hx

bb.hx:                                            ; preds = %bb.hw, %bb.hv, %bb.hu
  %i.cdo = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv906.i
  store i32 %.1497.i, ptr %i.cdo, align 4, !tbaa !43
  br i1 %.not562.i, label %bb.hy, label %bb.ia

bb.hy:                                            ; preds = %bb.hx
  %i.cdp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv906.i ; 2 uses
  %i.cdq = load i32, ptr %i.cdp, align 4, !tbaa !43
  %i.cdr = lshr i32 %i.cdj, 3
  %i.cds = zext nneg i32 %i.cdr to i64
  %i.cdt = getelementptr inbounds nuw i8, ptr %i.can, i64 %i.cds
  %i.cdu = load i32, ptr %i.cdt, align 1, !tbaa !44
  %i.cdv = call i32 @llvm.bswap.i32(i32 %i.cdu)
  %i.cdw = and i32 %i.cdj, 7
  %i.cdx = shl i32 %i.cdv, %i.cdw
  %i.cdy = lshr i32 %i.cdx, 29
  %i.cdz = add i32 %i.cdj, 3
  %i.cea = call i32 @llvm.umin.i32(i32 %i.cas, i32 %i.cdz) ; 3 uses
  store i32 %i.cea, ptr %i.ao, align 8, !tbaa !52
  %i.ceb = zext nneg i32 %i.cdy to i64
  %i.cec = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_fast_gain_tab, i64 %i.ceb
  %i.ced = load i16, ptr %i.cec, align 2, !tbaa !56
  %i.cee = zext i16 %i.ced to i32                 ; 2 uses
  store i32 %i.cee, ptr %i.cdp, align 4, !tbaa !43
  %.not563.i = icmp ne i32 %i.cdq, %i.cee
  %or.cond608.not.i = select i1 %i.cak, i1 %.not563.i, i1 false
  br i1 %or.cond608.not.i, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %bb.hy
  %i.cef = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv906.i ; 2 uses
  %i.ceg = load i8, ptr %i.cef, align 1, !tbaa !44
  %spec.select609.i = call i8 @llvm.umax.i8(i8 %i.ceg, i8 2)
  store i8 %spec.select609.i, ptr %i.cef, align 1, !tbaa !44
  br label %bb.ia

bb.ia:                                            ; preds = %bb.hz, %bb.hy, %bb.hx
  %i.ceh = phi i32 [ %i.cea, %bb.hy ], [ %i.cea, %bb.hz ], [ %i.cdj, %bb.hx ]
  %indvars.iv.next907.i = add nuw nsw i64 %indvars.iv906.i, 1 ; 2 uses
  %exitcond910.not.i = icmp eq i64 %indvars.iv.next907.i, %wide.trip.count909.i
  br i1 %exitcond910.not.i, label %.loopexit756.i, label %.peel.next912.i, !llvm.loop !113

bb.ib:                                            ; preds = %bb.hk, %bb.hj
  %i.cei = trunc nuw nsw i64 %indvars.iv777 to i32
  %i.cej = or i32 %i.cai, %i.cei
  %or.cond6.not.i = icmp eq i32 %i.cej, 0
  br i1 %or.cond6.not.i, label %bb.ic, label %.loopexit756.i

bb.ic:                                            ; preds = %bb.ib
  %i.cek = load ptr, ptr %i.ck, align 8, !tbaa !40
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cek, i32 noundef 16, ptr noundef nonnull @.str.55) #11
  br label %bb.mb

.loopexit756.i:                                   ; preds = %bb.ia, %bb.ib, %bb.hs, %bb.hl, %.loopexit757.i
  %i.cel = load i32, ptr %i.dy, align 4, !tbaa !202
  %.not564.i = icmp eq i32 %i.cel, 0
  br i1 %.not564.i, label %bb.ih, label %bb.id

bb.id:                                            ; preds = %.loopexit756.i
  %i.cem = load i32, ptr %i.ao, align 8, !tbaa !52 ; 4 uses
  %i.cen = load ptr, ptr %i.al, align 16, !tbaa !50 ; 2 uses
  %i.ceo = lshr i32 %i.cem, 3
  %i.cep = zext nneg i32 %i.ceo to i64
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.cen, i64 %i.cep
  %i.cer = load i8, ptr %i.ceq, align 1, !tbaa !44
  %i.ces = load i32, ptr %i.an, align 16, !tbaa !51 ; 2 uses
  %i.cet = icmp slt i32 %i.cem, %i.ces
  %i.ceu = zext i1 %i.cet to i32
  %spec.select.i666.i = add i32 %i.cem, %i.ceu    ; 2 uses
  %i.cev = zext i8 %i.cer to i32
  %i.cew = and i32 %i.cem, 7
  store i32 %spec.select.i666.i, ptr %i.ao, align 8, !tbaa !52
  %i.cex = lshr exact i32 128, %i.cew
  %i.cey = and i32 %i.cex, %i.cev
  %.not565.i = icmp eq i32 %i.cey, 0
  br i1 %.not565.i, label %bb.ih, label %.preheader754.i

.preheader754.i:                                  ; preds = %bb.id
  %.not567819.i = icmp slt i32 %i.bwj, %i.bqn
  br i1 %.not567819.i, label %.loopexit753.i, label %.lr.ph821.i

.lr.ph821.i:                                      ; preds = %.preheader754.i
  %i.cez = zext i1 %.not547.i to i64
  %i.cfa = add nuw i32 %i.bwj, 1
  %wide.trip.count917.i = zext i32 %i.cfa to i64
  br label %bb.ie

bb.ie:                                            ; preds = %bb.ig, %.lr.ph821.i
  %indvars.iv914.i = phi i64 [ %i.cez, %.lr.ph821.i ], [ %indvars.iv.next915.i, %bb.ig ] ; 3 uses
  %i.cfb = phi i32 [ %spec.select.i666.i, %.lr.ph821.i ], [ %i.cfn, %bb.ig ] ; 3 uses
  %i.cfc = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv914.i ; 2 uses
  %i.cfd = load i32, ptr %i.cfc, align 4, !tbaa !43
  %i.cfe = lshr i32 %i.cfb, 3
  %i.cff = zext nneg i32 %i.cfe to i64
  %i.cfg = getelementptr inbounds nuw i8, ptr %i.cen, i64 %i.cff
  %i.cfh = load i32, ptr %i.cfg, align 1, !tbaa !44
  %i.cfi = call i32 @llvm.bswap.i32(i32 %i.cfh)
  %i.cfj = and i32 %i.cfb, 7
  %i.cfk = shl i32 %i.cfi, %i.cfj
  %i.cfl = lshr i32 %i.cfk, 29
  %i.cfm = add i32 %i.cfb, 3
  %i.cfn = call i32 @llvm.umin.i32(i32 %i.ces, i32 %i.cfm) ; 2 uses
  store i32 %i.cfn, ptr %i.ao, align 8, !tbaa !52
  %i.cfo = zext nneg i32 %i.cfl to i64
  %i.cfp = getelementptr inbounds nuw [2 x i8], ptr @ff_ac3_fast_gain_tab, i64 %i.cfo
  %i.cfq = load i16, ptr %i.cfp, align 2, !tbaa !56
  %i.cfr = zext i16 %i.cfq to i32                 ; 2 uses
  store i32 %i.cfr, ptr %i.cfc, align 4, !tbaa !43
  %.not594.i = icmp ne i32 %i.cfd, %i.cfr
  %or.cond611.not.i = select i1 %i.cak, i1 %.not594.i, i1 false
  br i1 %or.cond611.not.i, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.cfs = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv914.i ; 2 uses
  %i.cft = load i8, ptr %i.cfs, align 1, !tbaa !44
  %spec.select612.i = call i8 @llvm.umax.i8(i8 %i.cft, i8 2)
  store i8 %spec.select612.i, ptr %i.cfs, align 1, !tbaa !44
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %indvars.iv.next915.i = add nuw nsw i64 %indvars.iv914.i, 1 ; 2 uses
  %exitcond918.not.i = icmp eq i64 %indvars.iv.next915.i, %wide.trip.count917.i
  br i1 %exitcond918.not.i, label %.loopexit753.i, label %bb.ie, !llvm.loop !114

bb.ih:                                            ; preds = %bb.id, %.loopexit756.i
  %i.cfu = icmp eq i32 %i.cai, 0
  %.not566823.i = icmp slt i32 %i.bwj, %i.bqn
  %i.cfv = or i1 %.not566823.i, %i.cfu
  %or.cond855.i = or i1 %i.cak, %i.cfv
  br i1 %or.cond855.i, label %.loopexit753.i, label %.lr.ph825.i

.lr.ph825.i:                                      ; preds = %bb.ih
  %i.cfw = zext i1 %.not547.i to i64              ; 4 uses
  %i.cfx = add nuw i32 %i.bwj, 1
  %wide.trip.count922.i = zext i32 %i.cfx to i64  ; 2 uses
  %i.cfy = sub nuw nsw i64 %wide.trip.count922.i, %i.cfw ; 3 uses
  %min.iters.check1095 = icmp samesign ult i64 %i.cfy, 8
  br i1 %min.iters.check1095, label %scalar.ph1094.preheader, label %vector.ph1096

vector.ph1096:                                    ; preds = %.lr.ph825.i
  %n.vec1097 = and i64 %i.cfy, 4294967288         ; 3 uses
  %i.cfz = or disjoint i64 %n.vec1097, %i.cfw
  %invariant.gep1431 = getelementptr [4 x i8], ptr %i.go, i64 %i.cfw
  br label %vector.body1100

vector.body1100:                                  ; preds = %vector.body1100, %vector.ph1096
  %index1101 = phi i64 [ 0, %vector.ph1096 ], [ %index.next1102, %vector.body1100 ] ; 2 uses
  %gep1432 = getelementptr [4 x i8], ptr %invariant.gep1431, i64 %index1101 ; 2 uses
  %i.cga = getelementptr inbounds nuw i8, ptr %gep1432, i64 16
  store <4 x i32> %broadcast.splat1099, ptr %gep1432, align 4, !tbaa !43
  store <4 x i32> %broadcast.splat1099, ptr %i.cga, align 4, !tbaa !43
  %index.next1102 = add nuw i64 %index1101, 8     ; 2 uses
  %i.cgb = icmp eq i64 %index.next1102, %n.vec1097
  br i1 %i.cgb, label %middle.block1103, label %vector.body1100, !llvm.loop !115

middle.block1103:                                 ; preds = %vector.body1100
  %cmp.n1104 = icmp eq i64 %i.cfy, %n.vec1097
  br i1 %cmp.n1104, label %.loopexit753.i, label %scalar.ph1094.preheader

scalar.ph1094.preheader:                          ; preds = %.lr.ph825.i, %middle.block1103
  %indvars.iv919.i.ph = phi i64 [ %i.cfw, %.lr.ph825.i ], [ %i.cfz, %middle.block1103 ]
  br label %scalar.ph1094

scalar.ph1094:                                    ; preds = %scalar.ph1094.preheader, %scalar.ph1094
  %indvars.iv919.i = phi i64 [ %indvars.iv.next920.i, %scalar.ph1094 ], [ %indvars.iv919.i.ph, %scalar.ph1094.preheader ] ; 2 uses
  %i.cgc = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv919.i
  store i32 %i.gq, ptr %i.cgc, align 4, !tbaa !43
  %indvars.iv.next920.i = add nuw nsw i64 %indvars.iv919.i, 1 ; 2 uses
  %exitcond923.not.i = icmp eq i64 %indvars.iv.next920.i, %wide.trip.count922.i
  br i1 %exitcond923.not.i, label %.loopexit753.i, label %scalar.ph1094, !llvm.loop !116

.loopexit753.i:                                   ; preds = %bb.ig, %scalar.ph1094, %middle.block1103, %bb.ih, %.preheader754.i
  %i.cgd = load i32, ptr %i.bx, align 16, !tbaa !193
  %i.cge = icmp eq i32 %i.cgd, 0
  br i1 %i.cge, label %bb.ii, label %bb.ik

bb.ii:                                            ; preds = %.loopexit753.i
  %i.cgf = load i32, ptr %i.ao, align 8, !tbaa !52 ; 4 uses
  %i.cgg = load ptr, ptr %i.al, align 16, !tbaa !50
  %i.cgh = lshr i32 %i.cgf, 3
  %i.cgi = zext nneg i32 %i.cgh to i64
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.cgg, i64 %i.cgi
  %i.cgk = load i8, ptr %i.cgj, align 1, !tbaa !44
  %i.cgl = load i32, ptr %i.an, align 16, !tbaa !51 ; 2 uses
  %i.cgm = icmp slt i32 %i.cgf, %i.cgl
  %i.cgn = zext i1 %i.cgm to i32
  %spec.select.i667.i = add i32 %i.cgf, %i.cgn    ; 2 uses
  %i.cgo = zext i8 %i.cgk to i32
  %i.cgp = and i32 %i.cgf, 7
  store i32 %spec.select.i667.i, ptr %i.ao, align 8, !tbaa !52
  %i.cgq = lshr exact i32 128, %i.cgp
  %i.cgr = and i32 %i.cgq, %i.cgo
  %.not568.i = icmp eq i32 %i.cgr, 0
  br i1 %.not568.i, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.cgs = add i32 %spec.select.i667.i, 10
  %i.cgt = call i32 @llvm.umin.i32(i32 %i.cgl, i32 %i.cgs)
  store i32 %i.cgt, ptr %i.ao, align 8, !tbaa !52
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii, %.loopexit753.i
  br i1 %.not547.i, label %bb.iv, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.cgu = load i32, ptr %i.eo, align 4, !tbaa !203
  %.not569.i = icmp eq i32 %i.cgu, 0
  %.pre963.i = load i32, ptr %i.ao, align 8, !tbaa !52 ; 5 uses
  %.pre964.i = load i32, ptr %i.an, align 16, !tbaa !51 ; 3 uses
  %.pre965.i = load ptr, ptr %i.al, align 16, !tbaa !50 ; 3 uses
  br i1 %.not569.i, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.cgv = lshr i32 %.pre963.i, 3
  %i.cgw = zext nneg i32 %i.cgv to i64
  %i.cgx = getelementptr inbounds nuw i8, ptr %.pre965.i, i64 %i.cgw
  %i.cgy = load i8, ptr %i.cgx, align 1, !tbaa !44
  %i.cgz = icmp slt i32 %.pre963.i, %.pre964.i
  %i.cha = zext i1 %i.cgz to i32
  %spec.select.i668.i = add i32 %.pre963.i, %i.cha ; 2 uses
  %i.chb = zext i8 %i.cgy to i32
  %i.chc = and i32 %.pre963.i, 7
  store i32 %spec.select.i668.i, ptr %i.ao, align 8, !tbaa !52
  %i.chd = lshr exact i32 128, %i.chc
  %i.che = and i32 %i.chd, %i.chb
  %.not570.i = icmp eq i32 %i.che, 0
  br i1 %.not570.i, label %bb.is, label %bb.in

bb.in:                                            ; preds = %bb.im, %bb.il
  %i.chf = phi i32 [ %spec.select.i668.i, %bb.im ], [ %.pre963.i, %bb.il ] ; 3 uses
  %i.chg = lshr i32 %i.chf, 3
  %i.chh = zext nneg i32 %i.chg to i64
  %i.chi = getelementptr inbounds nuw i8, ptr %.pre965.i, i64 %i.chh
  %i.chj = load i32, ptr %i.chi, align 1, !tbaa !44
  %i.chk = call i32 @llvm.bswap.i32(i32 %i.chj)
  %i.chl = and i32 %i.chf, 7
  %i.chm = shl i32 %i.chk, %i.chl
  %i.chn = lshr i32 %i.chm, 29                    ; 2 uses
  %i.cho = add i32 %i.chf, 3
  %i.chp = call i32 @llvm.umin.i32(i32 %.pre964.i, i32 %i.cho) ; 4 uses
  store i32 %i.chp, ptr %i.ao, align 8, !tbaa !52
  %i.chq = lshr i32 %i.chp, 3
  %i.chr = zext nneg i32 %i.chq to i64
  %i.chs = getelementptr inbounds nuw i8, ptr %.pre965.i, i64 %i.chr
  %i.cht = load i32, ptr %i.chs, align 1, !tbaa !44
  %i.chu = call i32 @llvm.bswap.i32(i32 %i.cht)
  %i.chv = and i32 %i.chp, 7
  %i.chw = shl i32 %i.chu, %i.chv
  %i.chx = lshr i32 %i.chw, 29                    ; 2 uses
  %i.chy = add i32 %i.chp, 3
  %i.chz = call i32 @llvm.umin.i32(i32 %.pre964.i, i32 %i.chy)
  store i32 %i.chz, ptr %i.ao, align 8, !tbaa !52
  br i1 %i.cak, label %bb.io, label %bb.ir

bb.io:                                            ; preds = %bb.in
  %i.cia = load i32, ptr %i.gr, align 4, !tbaa !254
  %.not571.i = icmp eq i32 %i.chn, %i.cia
  br i1 %.not571.i, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  %i.cib = load i32, ptr %i.gs, align 8, !tbaa !255
  %.not572.i = icmp eq i32 %i.chx, %i.cib
  br i1 %.not572.i, label %bb.ir, label %bb.iq

bb.iq:                                            ; preds = %bb.ip, %bb.io
  %i.cic = load i8, ptr %i.e, align 1, !tbaa !44
  %i.cid = call i8 @llvm.umax.i8(i8 %i.cic, i8 2)
  store i8 %i.cid, ptr %i.e, align 1, !tbaa !44
  br label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip, %bb.in
  store i32 %i.chn, ptr %i.gr, align 4, !tbaa !254
  store i32 %i.chx, ptr %i.gs, align 8, !tbaa !255
  br label %bb.iu

bb.is:                                            ; preds = %bb.im
  %i.cie = trunc nuw nsw i64 %indvars.iv777 to i32
  %i.cif = or i32 %i.cai, %i.cie
  %or.cond10.not.i = icmp eq i32 %i.cif, 0
  br i1 %or.cond10.not.i, label %bb.it, label %bb.iu

bb.it:                                            ; preds = %bb.is
  %i.cig = load ptr, ptr %i.ck, align 8, !tbaa !40
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cig, i32 noundef 16, ptr noundef nonnull @.str.56) #11
  br label %bb.mb

bb.iu:                                            ; preds = %bb.is, %bb.ir
  store i32 0, ptr %i.eo, align 4, !tbaa !203
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.ik
  %i.cih = load i32, ptr %i.dz, align 8, !tbaa !204
  %.not573.i = icmp eq i32 %i.cih, 0
  br i1 %.not573.i, label %bb.ji, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.cii = load i32, ptr %i.ao, align 8, !tbaa !52 ; 4 uses
  %i.cij = load ptr, ptr %i.al, align 16, !tbaa !50 ; 27 uses
  %i.cik = lshr i32 %i.cii, 3
  %i.cil = zext nneg i32 %i.cik to i64
  %i.cim = getelementptr inbounds nuw i8, ptr %i.cij, i64 %i.cil
  %i.cin = load i8, ptr %i.cim, align 1, !tbaa !44
  %i.cio = load i32, ptr %i.an, align 16, !tbaa !51 ; 27 uses
  %i.cip = icmp slt i32 %i.cii, %i.cio
  %i.ciq = zext i1 %i.cip to i32
  %spec.select.i669.i = add i32 %i.cii, %i.ciq    ; 2 uses
  %i.cir = zext i8 %i.cin to i32
  %i.cis = and i32 %i.cii, 7
  store i32 %spec.select.i669.i, ptr %i.ao, align 8, !tbaa !52
  %i.cit = lshr exact i32 128, %i.cis
  %i.ciu = and i32 %i.cit, %i.cir
  %.not574.i = icmp eq i32 %i.ciu, 0
  br i1 %.not574.i, label %bb.ji, label %.preheader751.i

.preheader751.i:                                  ; preds = %bb.iw
  %.not576826.i = icmp slt i32 %i.aqq, %i.bqn
  br i1 %.not576826.i, label %.loopexit.i, label %.lr.ph828.i

.lr.ph828.i:                                      ; preds = %.preheader751.i
  %i.civ = zext i1 %.not547.i to i64              ; 2 uses
  %i.ciw = add nuw i32 %i.aqq, 1
  %wide.trip.count927.i = zext i32 %i.ciw to i64  ; 2 uses
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iz, %.lr.ph828.i
  %indvars.iv924.i = phi i64 [ %i.civ, %.lr.ph828.i ], [ %indvars.iv.next925.i, %bb.iz ] ; 3 uses
  %i.cix = phi i32 [ %spec.select.i669.i, %.lr.ph828.i ], [ %i.cjh, %bb.iz ] ; 3 uses
  %i.ciy = lshr i32 %i.cix, 3
  %i.ciz = zext nneg i32 %i.ciy to i64
  %i.cja = getelementptr inbounds nuw i8, ptr %i.cij, i64 %i.ciz
  %i.cjb = load i32, ptr %i.cja, align 1, !tbaa !44
  %i.cjc = call i32 @llvm.bswap.i32(i32 %i.cjb)
  %i.cjd = and i32 %i.cix, 7
  %i.cje = shl i32 %i.cjc, %i.cjd
  %i.cjf = lshr i32 %i.cje, 30                    ; 2 uses
  %i.cjg = add i32 %i.cix, 2
  %i.cjh = call i32 @llvm.umin.i32(i32 %i.cio, i32 %i.cjg) ; 3 uses
  store i32 %i.cjh, ptr %i.ao, align 8, !tbaa !52
  %i.cji = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv924.i
  store i32 %i.cjf, ptr %i.cji, align 4, !tbaa !43
  %i.cjj = icmp eq i32 %i.cjf, 3
end_hunk_0
begin_hunk_1_@ac3_decode_frame:bb.a
  %i.ctn = call i32 @llvm.bswap.i32(i32 %i.ctm)
  %i.cto = and i32 %i.ctg, 7
  %i.ctp = shl i32 %i.ctn, %i.cto
  %i.ctq = lshr i32 %i.ctp, 29
  %i.ctr = add i32 %i.ctg, 3
  %i.cts = call i32 @llvm.umin.i32(i32 %i.cio, i32 %i.ctr) ; 5 uses
  store i32 %i.cts, ptr %i.ao, align 8, !tbaa !52
  %i.ctt = trunc nuw nsw i32 %i.ctq to i8
  %i.ctu = getelementptr inbounds nuw i8, ptr %i.ckf, i64 6
  store i8 %i.ctt, ptr %i.ctu, align 1, !tbaa !44
  %exitcond762.not.6 = icmp eq i32 %i.ckb, 7
  br i1 %exitcond762.not.6, label %._crit_edge833.i, label %bb.jg

bb.jg:                                            ; preds = %bb.jf
  %i.ctv = lshr i32 %i.cts, 3
  %i.ctw = zext nneg i32 %i.ctv to i64
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.cij, i64 %i.ctw
  %i.cty = load i32, ptr %i.ctx, align 1, !tbaa !44
  %i.ctz = call i32 @llvm.bswap.i32(i32 %i.cty)
  %i.cua = and i32 %i.cts, 7
  %i.cub = shl i32 %i.ctz, %i.cua
  %i.cuc = lshr i32 %i.cub, 27
  %i.cud = add i32 %i.cts, 5
  %i.cue = call i32 @llvm.umin.i32(i32 %i.cio, i32 %i.cud) ; 4 uses
  store i32 %i.cue, ptr %i.ao, align 8, !tbaa !52
  %i.cuf = trunc nuw nsw i32 %i.cuc to i8
  %i.cug = getelementptr inbounds nuw i8, ptr %i.ckd, i64 7
  store i8 %i.cuf, ptr %i.cug, align 1, !tbaa !44
  %i.cuh = lshr i32 %i.cue, 3
  %i.cui = zext nneg i32 %i.cuh to i64
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.cij, i64 %i.cui
  %i.cuk = load i32, ptr %i.cuj, align 1, !tbaa !44
  %i.cul = call i32 @llvm.bswap.i32(i32 %i.cuk)
  %i.cum = and i32 %i.cue, 7
  %i.cun = shl i32 %i.cul, %i.cum
  %i.cuo = lshr i32 %i.cun, 28
  %i.cup = add i32 %i.cue, 4
  %i.cuq = call i32 @llvm.umin.i32(i32 %i.cio, i32 %i.cup) ; 4 uses
  store i32 %i.cuq, ptr %i.ao, align 8, !tbaa !52
  %i.cur = trunc nuw nsw i32 %i.cuo to i8
  %i.cus = getelementptr inbounds nuw i8, ptr %i.cke, i64 7
  store i8 %i.cur, ptr %i.cus, align 1, !tbaa !44
  %i.cut = lshr i32 %i.cuq, 3
  %i.cuu = zext nneg i32 %i.cut to i64
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.cij, i64 %i.cuu
  %i.cuw = load i32, ptr %i.cuv, align 1, !tbaa !44
  %i.cux = call i32 @llvm.bswap.i32(i32 %i.cuw)
  %i.cuy = and i32 %i.cuq, 7
  %i.cuz = shl i32 %i.cux, %i.cuy
  %i.cva = lshr i32 %i.cuz, 29
  %i.cvb = add i32 %i.cuq, 3
  %i.cvc = call i32 @llvm.umin.i32(i32 %i.cio, i32 %i.cvb) ; 2 uses
  store i32 %i.cvc, ptr %i.ao, align 8, !tbaa !52
  %i.cvd = trunc nuw nsw i32 %i.cva to i8
  %i.cve = getelementptr inbounds nuw i8, ptr %i.ckf, i64 7
  store i8 %i.cvd, ptr %i.cve, align 1, !tbaa !44
  br label %._crit_edge833.i

._crit_edge833.i:                                 ; preds = %bb.jg, %bb.jf, %bb.je, %bb.jd, %bb.jc, %bb.jb, %bb.ja, %.lr.ph832.i
  %.lcssa1238 = phi i32 [ %i.cll, %.lr.ph832.i ], [ %i.cmu, %bb.ja ], [ %i.coe, %bb.jb ], [ %i.cpo, %bb.jc ], [ %i.cqy, %bb.jd ], [ %i.csi, %bb.je ], [ %i.cts, %bb.jf ], [ %i.cvc, %bb.jg ]
  %i.cvf = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv932.i ; 2 uses
  %i.cvg = load i8, ptr %i.cvf, align 1, !tbaa !44
  %spec.select614.i = call i8 @llvm.umax.i8(i8 %i.cvg, i8 2)
  store i8 %spec.select614.i, ptr %i.cvf, align 1, !tbaa !44
  br label %bb.jh

bb.jh:                                            ; preds = %._crit_edge833.i, %.preheader749.i
  %i.cvh = phi i32 [ %i.cjn, %.preheader749.i ], [ %.lcssa1238, %._crit_edge833.i ]
  %indvars.iv.next933.i = add nuw nsw i64 %indvars.iv932.i, 1 ; 2 uses
  %exitcond936.not.i = icmp eq i64 %indvars.iv.next933.i, %wide.trip.count927.i
  br i1 %exitcond936.not.i, label %.loopexit.i, label %.preheader749.i, !llvm.loop !118

bb.ji:                                            ; preds = %bb.iw, %bb.iv
  %.not575838.i = icmp slt i32 %i.bwj, 0
  %or.cond856.i = or i1 %i.cak, %.not575838.i
  br i1 %or.cond856.i, label %.loopexit.i, label %.lr.ph840.i

.lr.ph840.i:                                      ; preds = %bb.ji
  %i.cvi = add nuw i32 %i.bwj, 1
  %wide.trip.count940.i = zext i32 %i.cvi to i64  ; 3 uses
  %min.iters.check1085 = icmp ult i32 %i.bwj, 7
  br i1 %min.iters.check1085, label %scalar.ph1084.preheader, label %vector.ph1086

vector.ph1086:                                    ; preds = %.lr.ph840.i
  %n.vec1087 = and i64 %wide.trip.count940.i, 4294967288 ; 3 uses
  br label %vector.body1088

vector.body1088:                                  ; preds = %vector.body1088, %vector.ph1086
  %index1089 = phi i64 [ 0, %vector.ph1086 ], [ %index.next1090, %vector.body1088 ] ; 2 uses
  %i.cvj = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %index1089 ; 2 uses
  %i.cvk = getelementptr inbounds nuw i8, ptr %i.cvj, i64 16
  store <4 x i32> splat (i32 2), ptr %i.cvj, align 4, !tbaa !43
  store <4 x i32> splat (i32 2), ptr %i.cvk, align 4, !tbaa !43
  %index.next1090 = add nuw i64 %index1089, 8     ; 2 uses
  %i.cvl = icmp eq i64 %index.next1090, %n.vec1087
  br i1 %i.cvl, label %middle.block1091, label %vector.body1088, !llvm.loop !119

middle.block1091:                                 ; preds = %vector.body1088
  %cmp.n1092 = icmp eq i64 %n.vec1087, %wide.trip.count940.i
  br i1 %cmp.n1092, label %.loopexit.i, label %scalar.ph1084.preheader

scalar.ph1084.preheader:                          ; preds = %.lr.ph840.i, %middle.block1091
  %indvars.iv937.i.ph = phi i64 [ 0, %.lr.ph840.i ], [ %n.vec1087, %middle.block1091 ]
  br label %scalar.ph1084

scalar.ph1084:                                    ; preds = %scalar.ph1084.preheader, %scalar.ph1084
  %indvars.iv937.i = phi i64 [ %indvars.iv.next938.i, %scalar.ph1084 ], [ %indvars.iv937.i.ph, %scalar.ph1084.preheader ] ; 2 uses
  %i.cvm = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv937.i
  store i32 2, ptr %i.cvm, align 4, !tbaa !43
  %indvars.iv.next938.i = add nuw nsw i64 %indvars.iv937.i, 1 ; 2 uses
  %exitcond941.not.i = icmp eq i64 %indvars.iv.next938.i, %wide.trip.count940.i
  br i1 %exitcond941.not.i, label %.loopexit.i, label %scalar.ph1084, !llvm.loop !120

.loopexit.i:                                      ; preds = %bb.jh, %scalar.ph1084, %middle.block1091, %bb.ji, %.preheader751.i
  %.not578841.i = icmp slt i32 %i.bwj, %i.bqn
  br i1 %.not578841.i, label %._crit_edge846.i, label %.lr.ph845.i

.lr.ph845.i:                                      ; preds = %.loopexit.i
  %i.cvn = zext i1 %.not547.i to i64
  br label %bb.jj

bb.jj:                                            ; preds = %bb.jn, %.lr.ph845.i
  %i.cvo = phi i32 [ %i.bwj, %.lr.ph845.i ], [ %i.cxi, %bb.jn ]
  %indvars.iv942.i = phi i64 [ %i.cvn, %.lr.ph845.i ], [ %indvars.iv.next943.i, %bb.jn ] ; 26 uses
  %i.cvp = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv942.i
  %i.cvq = load i8, ptr %i.cvp, align 1, !tbaa !44 ; 2 uses
  %i.cvr = icmp ugt i8 %i.cvq, 2
  br i1 %i.cvr, label %.thread739.i, label %bb.jk

.thread739.i:                                     ; preds = %bb.jj
  %i.cvs = getelementptr inbounds nuw [256 x i8], ptr %i.gn, i64 %indvars.iv942.i
  %i.cvt = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv942.i
  %i.cvu = load i32, ptr %i.cvt, align 4, !tbaa !43
  %i.cvv = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv942.i
  %i.cvw = load i32, ptr %i.cvv, align 4, !tbaa !43
  %i.cvx = getelementptr inbounds nuw [512 x i8], ptr %i.gy, i64 %indvars.iv942.i
  %i.cvy = getelementptr inbounds nuw [100 x i8], ptr %i.gz, i64 %indvars.iv942.i
  call void @ff_ac3_bit_alloc_calc_psd(ptr noundef nonnull %i.cvs, i32 noundef %i.cvu, i32 noundef %i.cvw, ptr noundef nonnull %i.cvx, ptr noundef nonnull %i.cvy) #11
  br label %bb.jl

bb.jk:                                            ; preds = %bb.jj
  switch i8 %i.cvq, label %.thread740.i [
    i8 2, label %bb.jl
    i8 0, label %bb.jn
  ]

bb.jl:                                            ; preds = %bb.jk, %.thread739.i
  %i.cvz = getelementptr inbounds nuw [100 x i8], ptr %i.gz, i64 %indvars.iv942.i
  %i.cwa = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv942.i
  %i.cwb = load i32, ptr %i.cwa, align 4, !tbaa !43
  %i.cwc = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv942.i
  %i.cwd = load i32, ptr %i.cwc, align 4, !tbaa !43
  %i.cwe = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %indvars.iv942.i
  %i.cwf = load i32, ptr %i.cwe, align 4, !tbaa !43
  %i.cwg = load i32, ptr %i.bj, align 4, !tbaa !179
  %i.cwh = zext i32 %i.cwg to i64
  %i.cwi = icmp eq i64 %indvars.iv942.i, %i.cwh
  %i.cwj = zext i1 %i.cwi to i32
  %i.cwk = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv942.i
  %i.cwl = load i32, ptr %i.cwk, align 4, !tbaa !43
  %i.cwm = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv942.i
  %i.cwn = load i32, ptr %i.cwm, align 4, !tbaa !43
  %i.cwo = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv942.i
  %i.cwp = getelementptr inbounds nuw [8 x i8], ptr %i.gw, i64 %indvars.iv942.i
  %i.cwq = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv942.i
  %i.cwr = getelementptr inbounds nuw [100 x i8], ptr %i.ha, i64 %indvars.iv942.i
  %i.cws = call i32 @ff_ac3_bit_alloc_calc_mask(ptr noundef nonnull %i.at, ptr noundef nonnull %i.cvz, i32 noundef %i.cwb, i32 noundef %i.cwd, i32 noundef %i.cwf, i32 noundef %i.cwj, i32 noundef %i.cwl, i32 noundef %i.cwn, ptr noundef nonnull %i.cwo, ptr noundef nonnull %i.cwp, ptr noundef nonnull %i.cwq, ptr noundef nonnull %i.cwr) #11
  %.not591.i = icmp eq i32 %i.cws, 0
  br i1 %.not591.i, label %.thread740.i, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  %i.cwt = load ptr, ptr %i.ck, align 8, !tbaa !40
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cwt, i32 noundef 16, ptr noundef nonnull @.str.58) #11
  br label %bb.mb

.thread740.i:                                     ; preds = %bb.jl, %bb.jk
  %i.cwu = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %indvars.iv942.i
  %i.cwv = load i32, ptr %i.cwu, align 4, !tbaa !43
  %.not593.i = icmp eq i32 %i.cwv, 0
  %i.cww = select i1 %.not593.i, ptr @ff_ac3_bap_tab, ptr @ff_eac3_hebap_tab
  %i.cwx = load ptr, ptr %i.hb, align 16, !tbaa !256
  %i.cwy = getelementptr inbounds nuw [100 x i8], ptr %i.ha, i64 %indvars.iv942.i
  %i.cwz = getelementptr inbounds nuw [512 x i8], ptr %i.gy, i64 %indvars.iv942.i
  %i.cxa = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv942.i
  %i.cxb = load i32, ptr %i.cxa, align 4, !tbaa !43
  %i.cxc = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv942.i
  %i.cxd = load i32, ptr %i.cxc, align 4, !tbaa !43
  %i.cxe = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %indvars.iv942.i
  %i.cxf = load i32, ptr %i.cxe, align 4, !tbaa !43
  %i.cxg = load i32, ptr %i.dx, align 16, !tbaa !227
  %i.cxh = getelementptr inbounds nuw [256 x i8], ptr %i.hc, i64 %indvars.iv942.i
  call void %i.cwx(ptr noundef nonnull %i.cwy, ptr noundef nonnull %i.cwz, i32 noundef %i.cxb, i32 noundef %i.cxd, i32 noundef %i.cxf, i32 noundef %i.cxg, ptr noundef nonnull %i.cww, ptr noundef nonnull %i.cxh) #11, !inline_history !121
  %.pre966.i = load i32, ptr %i.bh, align 16, !tbaa !177
  br label %bb.jn

bb.jn:                                            ; preds = %.thread740.i, %bb.jk
  %i.cxi = phi i32 [ %i.cvo, %bb.jk ], [ %.pre966.i, %.thread740.i ] ; 3 uses
  %indvars.iv.next943.i = add nuw nsw i64 %indvars.iv942.i, 1
  %i.cxj = sext i32 %i.cxi to i64
  %.not578.not.i = icmp slt i64 %indvars.iv942.i, %i.cxj
  br i1 %.not578.not.i, label %bb.jj, label %._crit_edge846.loopexit.i, !llvm.loop !122

._crit_edge846.loopexit.i:                        ; preds = %bb.jn
  %11 = icmp slt i32 %i.cxi, 1
  br label %._crit_edge846.i

._crit_edge846.i:                                 ; preds = %._crit_edge846.loopexit.i, %.loopexit.i
  %.lcssa770.i = phi i1 [ true, %.loopexit.i ], [ %11, %._crit_edge846.loopexit.i ]
  %i.cxk = load i32, ptr %i.ea, align 4, !tbaa !205
  %.not579.i = icmp eq i32 %i.cxk, 0
  br i1 %.not579.i, label %bb.jq, label %bb.jo

bb.jo:                                            ; preds = %._crit_edge846.i
  %i.cxl = load i32, ptr %i.ao, align 8, !tbaa !52 ; 4 uses
  %i.cxm = load ptr, ptr %i.al, align 16, !tbaa !50 ; 2 uses
  %i.cxn = lshr i32 %i.cxl, 3
  %i.cxo = zext nneg i32 %i.cxn to i64
  %i.cxp = getelementptr inbounds nuw i8, ptr %i.cxm, i64 %i.cxo
  %i.cxq = load i8, ptr %i.cxp, align 1, !tbaa !44
  %i.cxr = load i32, ptr %i.an, align 16, !tbaa !51 ; 3 uses
  %i.cxs = icmp slt i32 %i.cxl, %i.cxr
  %i.cxt = zext i1 %i.cxs to i32
  %spec.select.i670.i = add i32 %i.cxl, %i.cxt    ; 4 uses
  %i.cxu = zext i8 %i.cxq to i32
  %i.cxv = and i32 %i.cxl, 7
  store i32 %spec.select.i670.i, ptr %i.ao, align 8, !tbaa !52
  %i.cxw = lshr exact i32 128, %i.cxv
  %i.cxx = and i32 %i.cxw, %i.cxu
  %.not580.i = icmp eq i32 %i.cxx, 0
  br i1 %.not580.i, label %bb.jq, label %bb.jp

bb.jp:                                            ; preds = %bb.jo
  %i.cxy = lshr i32 %spec.select.i670.i, 3
  %i.cxz = zext nneg i32 %i.cxy to i64
  %i.cya = getelementptr inbounds nuw i8, ptr %i.cxm, i64 %i.cxz
  %i.cyb = load i32, ptr %i.cya, align 1, !tbaa !44
  %i.cyc = call i32 @llvm.bswap.i32(i32 %i.cyb)
  %i.cyd = and i32 %spec.select.i670.i, 7
  %i.cye = shl i32 %i.cyc, %i.cyd
  %i.cyf = add i32 %spec.select.i670.i, 9
  %i.cyg = call i32 @llvm.umin.i32(i32 %i.cxr, i32 %i.cyf) ; 3 uses
  %i.cyh = lshr i32 %i.cye, 20
  %i.cyi = and i32 %i.cyh, 4088                   ; 2 uses
  %i.cyj = sub nsw i32 0, %i.cyg                  ; 2 uses
  %i.cyk = sub nsw i32 %i.cxr, %i.cyg
  %i.cyl = icmp slt i32 %i.cyi, %i.cyj
  %..i.i671.i = call i32 @llvm.smin.i32(i32 %i.cyi, i32 %i.cyk)
  %.0.i.i.i = select i1 %i.cyl, i32 %i.cyj, i32 %..i.i671.i
  %i.cym = add nsw i32 %.0.i.i.i, %i.cyg
  store i32 %i.cym, ptr %i.ao, align 8, !tbaa !52
  br label %bb.jq

bb.jq:                                            ; preds = %bb.jp, %bb.jo, %._crit_edge846.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  store i32 0, ptr %i.hd, align 4, !tbaa !58
  store i32 0, ptr %i.he, align 4, !tbaa !59
  store i32 0, ptr %i.hf, align 4, !tbaa !60
  br i1 %.lcssa770.i, label %._crit_edge.i677.i, label %.lr.ph.i672.i.preheader

.lr.ph.i672.i.preheader:                          ; preds = %bb.jq
  %i.cyn = trunc nuw nsw i64 %indvars.iv777 to i32 ; 2 uses
  br label %.lr.ph.i672.i

.lr.ph.i672.i:                                    ; preds = %.lr.ph.i672.i.preheader, %calc_transform_coeffs_cpl.exit.i.i
  %indvars.iv.i673.i = phi i64 [ %indvars.iv.next.i676.i, %calc_transform_coeffs_cpl.exit.i.i ], [ 1, %.lr.ph.i672.i.preheader ] ; 6 uses
  %.030.i.i = phi i32 [ %.2.i674.i, %calc_transform_coeffs_cpl.exit.i.i ], [ 0, %.lr.ph.i672.i.preheader ] ; 2 uses
  %i.cyo = trunc nuw nsw i64 %indvars.iv.i673.i to i32
  call fastcc void @decode_transform_coeffs_ch(ptr noundef nonnull %i.n, i32 noundef %i.cyn, i32 noundef %i.cyo, ptr noundef %6)
  %i.cyp = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv.i673.i
  %i.cyq = load i32, ptr %i.cyp, align 4, !tbaa !43
  %.not22.i.i = icmp eq i32 %i.cyq, 0
  br i1 %.not22.i.i, label %bb.ju, label %bb.jr

bb.jr:                                            ; preds = %.lr.ph.i672.i
  %.not23.i.i = icmp eq i32 %.030.i.i, 0
  br i1 %.not23.i.i, label %bb.js, label %calc_transform_coeffs_cpl.exit.i.i

bb.js:                                            ; preds = %bb.jr
  call fastcc void @decode_transform_coeffs_ch(ptr noundef nonnull %i.n, i32 noundef %i.cyn, i32 noundef 0, ptr noundef %6)
  %i.cyr = load i32, ptr %i.gg, align 8, !tbaa !251 ; 2 uses
  %i.cys = icmp sgt i32 %i.cyr, 0
  br i1 %i.cys, label %.lr.ph.i.i.i, label %calc_transform_coeffs_cpl.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.js
  %i.cyt = load i32, ptr %i.bi, align 4, !tbaa !178 ; 2 uses
  %i.cyu = icmp slt i32 %i.cyt, 1
  br i1 %i.cyu, label %calc_transform_coeffs_cpl.exit.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  %i.cyv = load i32, ptr %i.ce, align 4, !tbaa !43
  br label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %._crit_edge49.i.i.i, %.lr.ph.split.preheader.i.i.i
  %i.cyw = phi i32 [ %i.cyr, %.lr.ph.split.preheader.i.i.i ], [ %i.dax, %._crit_edge49.i.i.i ] ; 2 uses
  %i.cyx = phi i32 [ %i.cyt, %.lr.ph.split.preheader.i.i.i ], [ %i.day, %._crit_edge49.i.i.i ] ; 3 uses
  %indvars.iv83.i.i.i = phi i64 [ 0, %.lr.ph.split.preheader.i.i.i ], [ %indvars.iv.next84.i.i.i, %._crit_edge49.i.i.i ] ; 4 uses
  %.03860.i.i.i = phi i32 [ %i.cyv, %.lr.ph.split.preheader.i.i.i ], [ %i.czb, %._crit_edge49.i.i.i ] ; 2 uses
  %i.cyy = getelementptr inbounds nuw i8, ptr %i.gh, i64 %indvars.iv83.i.i.i
  %i.cyz = load i8, ptr %i.cyy, align 1, !tbaa !44
  %.fr64.i.i.i = freeze i8 %i.cyz                 ; 2 uses
  %i.cza = zext i8 %.fr64.i.i.i to i32
  %i.czb = add i32 %.03860.i.i.i, %i.cza          ; 2 uses
  %.not45.i.i.i = icmp slt i32 %i.cyx, 1
  br i1 %.not45.i.i.i, label %._crit_edge49.i.i.i, label %.lr.ph48.i.i.i

.lr.ph48.i.i.i:                                   ; preds = %.lr.ph.split.i.i.i
  %invariant.gep.i.i.i = getelementptr inbounds nuw [4 x i8], ptr %i.gj, i64 %indvars.iv83.i.i.i
  %.not65.i.i.i = icmp eq i8 %.fr64.i.i.i, 0
  %i.czc = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv83.i.i.i
  br i1 %.not65.i.i.i, label %._crit_edge49.i.i.i, label %.lr.ph48.split.us.preheader.i.i.i

.lr.ph48.split.us.preheader.i.i.i:                ; preds = %.lr.ph48.i.i.i
  %i.czd = sext i32 %.03860.i.i.i to i64          ; 10 uses
  %i.cze = sext i32 %i.czb to i64                 ; 4 uses
  %i.czf = add nsw i64 %i.czd, 1
  %i.czg = call i64 @llvm.smax.i64(i64 %i.czf, i64 %i.cze)
  %i.czh = sub i64 %i.czg, %i.czd                 ; 3 uses
  %min.iters.check1074 = icmp ult i64 %i.czh, 4
  %n.vec1076 = and i64 %i.czh, -4                 ; 3 uses
  %i.czi = add i64 %n.vec1076, %i.czd
  %cmp.n1082 = icmp eq i64 %i.czh, %n.vec1076
  %i.czj = add nsw i64 %i.czd, 1
  %i.czk = call i64 @llvm.smax.i64(i64 %i.czj, i64 %i.cze)
  %i.czl = sub i64 %i.czk, %i.czd                 ; 3 uses
  %min.iters.check1062 = icmp ult i64 %i.czl, 8
  %n.vec1064 = and i64 %i.czl, -8                 ; 3 uses
  %i.czm = add i64 %n.vec1064, %i.czd
  %invariant.gep1433 = getelementptr [4 x i8], ptr %i.hh, i64 %i.czd
  %cmp.n1071 = icmp eq i64 %i.czl, %n.vec1064
  br label %.lr.ph48.split.us.i.i.i

.lr.ph48.split.us.i.i.i:                          ; preds = %.loopexit.us.i.i.i, %.lr.ph48.split.us.preheader.i.i.i
  %indvars.iv74.i.i.i = phi i64 [ 1, %.lr.ph48.split.us.preheader.i.i.i ], [ %indvars.iv.next75.i.i.i, %.loopexit.us.i.i.i ] ; 6 uses
  %i.czn = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %indvars.iv74.i.i.i
  %i.czo = load i32, ptr %i.czn, align 4, !tbaa !43
  %.not40.us.i.i.i = icmp eq i32 %i.czo, 0
  br i1 %.not40.us.i.i.i, label %.loopexit.us.i.i.i, label %.lr.ph.us.i.i.i

.lr.ph.us.i.i.i:                                  ; preds = %.lr.ph48.split.us.i.i.i
  %gep.us.i.i.i = getelementptr inbounds nuw [72 x i8], ptr %invariant.gep.i.i.i, i64 %indvars.iv74.i.i.i
  %i.czp = load i32, ptr %gep.us.i.i.i, align 4, !tbaa !43
  %i.czq = shl i32 %i.czp, 5
  %i.czr = sext i32 %i.czq to i64                 ; 2 uses
  %i.czs = getelementptr inbounds nuw [1024 x i8], ptr %i.hg, i64 %indvars.iv74.i.i.i ; 2 uses
  br i1 %min.iters.check1074, label %scalar.ph1073.preheader, label %vector.ph1075

vector.ph1075:                                    ; preds = %.lr.ph.us.i.i.i
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.czr, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vector.body1077

vector.body1077:                                  ; preds = %vector.body1077, %vector.ph1075
  %index1078 = phi i64 [ 0, %vector.ph1075 ], [ %index.next1080, %vector.body1077 ] ; 2 uses
  %i.czt = add i64 %index1078, %i.czd             ; 2 uses
  %i.czu = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %i.czt
  %wide.load1079 = load <4 x i32>, ptr %i.czu, align 4, !tbaa !43
  %i.czv = shl nsw <4 x i32> %wide.load1079, splat (i32 4)
  %i.czw = sext <4 x i32> %i.czv to <4 x i64>
  %i.czx = mul nsw <4 x i64> %broadcast.splat, %i.czw
  %i.czy = lshr <4 x i64> %i.czx, splat (i64 32)
  %i.czz = trunc nuw <4 x i64> %i.czy to <4 x i32>
  %i.daa = getelementptr inbounds [4 x i8], ptr %i.czs, i64 %i.czt
  store <4 x i32> %i.czz, ptr %i.daa, align 4, !tbaa !43
  %index.next1080 = add nuw i64 %index1078, 4     ; 2 uses
  %i.dab = icmp eq i64 %index.next1080, %n.vec1076
  br i1 %i.dab, label %middle.block1081, label %vector.body1077, !llvm.loop !123

middle.block1081:                                 ; preds = %vector.body1077
  br i1 %cmp.n1082, label %._crit_edge.us.i.i.i, label %scalar.ph1073.preheader

scalar.ph1073.preheader:                          ; preds = %.lr.ph.us.i.i.i, %middle.block1081
  %indvars.iv.i.i.i.ph = phi i64 [ %i.czd, %.lr.ph.us.i.i.i ], [ %i.czi, %middle.block1081 ]
  br label %scalar.ph1073

scalar.ph1073:                                    ; preds = %scalar.ph1073.preheader, %scalar.ph1073
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %scalar.ph1073 ], [ %indvars.iv.i.i.i.ph, %scalar.ph1073.preheader ] ; 3 uses
  %i.dac = getelementptr inbounds [4 x i8], ptr %i.hg, i64 %indvars.iv.i.i.i
  %i.dad = load i32, ptr %i.dac, align 4, !tbaa !43
  %i.dae = shl nsw i32 %i.dad, 4
  %i.daf = sext i32 %i.dae to i64
  %i.dag = mul nsw i64 %i.daf, %i.czr
  %i.dah = lshr i64 %i.dag, 32
  %i.dai = trunc nuw i64 %i.dah to i32
  %i.daj = getelementptr inbounds [4 x i8], ptr %i.czs, i64 %indvars.iv.i.i.i
  store i32 %i.dai, ptr %i.daj, align 4, !tbaa !43
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.dak = icmp slt i64 %indvars.iv.next.i.i.i, %i.cze
  br i1 %i.dak, label %scalar.ph1073, label %._crit_edge.us.i.i.i, !llvm.loop !124

bb.jt:                                            ; preds = %._crit_edge.us.i.i.i
  %i.dal = load i32, ptr %i.czc, align 4, !tbaa !43
  %.not41.us.i.i.i = icmp eq i32 %i.dal, 0
  br i1 %.not41.us.i.i.i, label %.loopexit.us.i.i.i, label %.lr.ph44.us.i.i.i.preheader

.lr.ph44.us.i.i.i.preheader:                      ; preds = %bb.jt
  br i1 %min.iters.check1062, label %.lr.ph44.us.i.i.i.preheader1218, label %vector.body1065

vector.body1065:                                  ; preds = %.lr.ph44.us.i.i.i.preheader, %vector.body1065
  %index1066 = phi i64 [ %index.next1069, %vector.body1065 ], [ 0, %.lr.ph44.us.i.i.i.preheader ] ; 2 uses
  %gep1434 = getelementptr [4 x i8], ptr %invariant.gep1433, i64 %index1066 ; 3 uses
  %i.dam = getelementptr inbounds nuw i8, ptr %gep1434, i64 16 ; 2 uses
  %wide.load1067 = load <4 x i32>, ptr %gep1434, align 4, !tbaa !43
  %wide.load1068 = load <4 x i32>, ptr %i.dam, align 4, !tbaa !43
  %i.dan = sub nsw <4 x i32> zeroinitializer, %wide.load1067
  %i.dao = sub nsw <4 x i32> zeroinitializer, %wide.load1068
  store <4 x i32> %i.dan, ptr %gep1434, align 4, !tbaa !43
  store <4 x i32> %i.dao, ptr %i.dam, align 4, !tbaa !43
  %index.next1069 = add nuw i64 %index1066, 8     ; 2 uses
  %i.dap = icmp eq i64 %index.next1069, %n.vec1064
  br i1 %i.dap, label %middle.block1070, label %vector.body1065, !llvm.loop !125

middle.block1070:                                 ; preds = %vector.body1065
  br i1 %cmp.n1071, label %.loopexit.us.i.i.i, label %.lr.ph44.us.i.i.i.preheader1218

.lr.ph44.us.i.i.i.preheader1218:                  ; preds = %.lr.ph44.us.i.i.i.preheader, %middle.block1070
  %indvars.iv71.i.i.i.ph = phi i64 [ %i.czd, %.lr.ph44.us.i.i.i.preheader ], [ %i.czm, %middle.block1070 ]
  br label %.lr.ph44.us.i.i.i

.lr.ph44.us.i.i.i:                                ; preds = %.lr.ph44.us.i.i.i.preheader1218, %.lr.ph44.us.i.i.i
  %indvars.iv71.i.i.i = phi i64 [ %indvars.iv.next72.i.i.i, %.lr.ph44.us.i.i.i ], [ %indvars.iv71.i.i.i.ph, %.lr.ph44.us.i.i.i.preheader1218 ] ; 2 uses
  %i.daq = getelementptr inbounds [4 x i8], ptr %i.hh, i64 %indvars.iv71.i.i.i ; 2 uses
  %i.dar = load i32, ptr %i.daq, align 4, !tbaa !43
  %i.das = sub nsw i32 0, %i.dar
  store i32 %i.das, ptr %i.daq, align 4, !tbaa !43
  %indvars.iv.next72.i.i.i = add nsw i64 %indvars.iv71.i.i.i, 1 ; 2 uses
  %i.dat = icmp slt i64 %indvars.iv.next72.i.i.i, %i.cze
  br i1 %i.dat, label %.lr.ph44.us.i.i.i, label %.loopexit.us.i.i.i, !llvm.loop !126

.loopexit.us.i.i.i:                               ; preds = %.lr.ph44.us.i.i.i, %middle.block1070, %._crit_edge.us.i.i.i, %bb.jt, %.lr.ph48.split.us.i.i.i
  %indvars.iv.next75.i.i.i = add nuw nsw i64 %indvars.iv74.i.i.i, 1
  %i.dau = load i32, ptr %i.bi, align 4, !tbaa !178 ; 2 uses
  %i.dav = sext i32 %i.dau to i64
  %.not.us.not.i.i.i = icmp slt i64 %indvars.iv74.i.i.i, %i.dav
  br i1 %.not.us.not.i.i.i, label %.lr.ph48.split.us.i.i.i, label %._crit_edge49.loopexit68.i.i.i, !llvm.loop !127

._crit_edge.us.i.i.i:                             ; preds = %scalar.ph1073, %middle.block1081
  %i.daw = icmp eq i64 %indvars.iv74.i.i.i, 2
  br i1 %i.daw, label %bb.jt, label %.loopexit.us.i.i.i

._crit_edge49.loopexit68.i.i.i:                   ; preds = %.loopexit.us.i.i.i
  %.pre.i.i.i = load i32, ptr %i.gg, align 8, !tbaa !251
  br label %._crit_edge49.i.i.i

._crit_edge49.i.i.i:                              ; preds = %._crit_edge49.loopexit68.i.i.i, %.lr.ph48.i.i.i, %.lr.ph.split.i.i.i
  %i.dax = phi i32 [ %.pre.i.i.i, %._crit_edge49.loopexit68.i.i.i ], [ %i.cyw, %.lr.ph.split.i.i.i ], [ %i.cyw, %.lr.ph48.i.i.i ] ; 2 uses
  %i.day = phi i32 [ %i.dau, %._crit_edge49.loopexit68.i.i.i ], [ %i.cyx, %.lr.ph.split.i.i.i ], [ %i.cyx, %.lr.ph48.i.i.i ]
  %indvars.iv.next84.i.i.i = add nuw nsw i64 %indvars.iv83.i.i.i, 1 ; 2 uses
  %i.daz = sext i32 %i.dax to i64
  %i.dba = icmp slt i64 %indvars.iv.next84.i.i.i, %i.daz
  br i1 %i.dba, label %.lr.ph.split.i.i.i, label %calc_transform_coeffs_cpl.exit.i.i, !llvm.loop !128

bb.ju:                                            ; preds = %.lr.ph.i672.i
  %i.dbb = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv.i673.i
  br label %calc_transform_coeffs_cpl.exit.i.i

calc_transform_coeffs_cpl.exit.i.i:               ; preds = %._crit_edge49.i.i.i, %bb.ju, %.lr.ph.i.i.i, %bb.js, %bb.jr
  %.019.in.i.i = phi ptr [ %i.dbb, %bb.ju ], [ %i.cf, %bb.jr ], [ %i.cf, %.lr.ph.i.i.i ], [ %i.cf, %bb.js ], [ %i.cf, %._crit_edge49.i.i.i ]
  %.2.i674.i = phi i32 [ %.030.i.i, %bb.ju ], [ 1, %bb.jr ], [ 1, %.lr.ph.i.i.i ], [ 1, %bb.js ], [ 1, %._crit_edge49.i.i.i ]
end_hunk_1
