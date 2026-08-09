inline.NumInlined: 187
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 22
begin_hunk_0_@mpeg_decode_slice:bb.a
  br i1 %or.cond344.1, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.bqx = load <2 x i32>, ptr %gep502.1, align 16, !tbaa !66
  br label %.preheader.1

bb.hb:                                            ; preds = %bb.gz
  %i.bqy = load <2 x i32>, ptr %i.iz, align 16, !tbaa !66
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.hb, %bb.ha, %bb.gy, %bb.gx
  %i.bqz = phi <2 x i32> [ %i.bqx, %bb.ha ], [ %i.bqy, %bb.hb ], [ zeroinitializer, %bb.gy ], [ zeroinitializer, %bb.gx ]
  %i.bra = shufflevector <2 x i32> %i.bqz, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.brb = trunc <4 x i32> %i.bra to <4 x i16>
  %i.brc = load ptr, ptr %i.ja, align 8, !tbaa !261
  %i.brd = getelementptr [4 x i8], ptr %i.brc, i64 %i.bpw
  store <4 x i16> %i.brb, ptr %i.brd, align 2, !tbaa !80
  %i.bre = load i32, ptr %gep.1, align 8, !tbaa !66
  %i.brf = trunc i32 %i.bre to i8                 ; 2 uses
  %i.brg = load ptr, ptr %i.jb, align 8, !tbaa !120
  %i.brh = getelementptr i8, ptr %i.brg, i64 %i.bpv
  %i.bri = getelementptr i8, ptr %i.brh, i64 1
  store i8 %i.brf, ptr %i.bri, align 1, !tbaa !60
  %i.brj = load ptr, ptr %i.jb, align 8, !tbaa !120
  %i.brk = getelementptr inbounds i8, ptr %i.brj, i64 %i.bpv
  store i8 %i.brf, ptr %i.brk, align 1, !tbaa !60
  %indvars.iv.next530 = add nsw i64 %i.bpw, %i.bpx ; 2 uses
  %indvars.iv.next528 = or disjoint i64 %i.bpv, 2 ; 4 uses
  %i.brl = load i32, ptr %i.hx, align 4, !tbaa !253
  %.not342.1536 = icmp eq i32 %i.brl, 0
  br i1 %.not342.1536, label %bb.hc, label %bb.hf

bb.hc:                                            ; preds = %.preheader.1
  %i.brm = load i32, ptr %i.gq, align 4, !tbaa !256 ; 2 uses
  %i.brn = icmp eq i32 %i.brm, 0
  %i.bro = icmp eq i32 %i.brm, 3
  %or.cond.1538 = select i1 %i.bro, i1 %i.h, i1 false
  %or.cond344.1539 = select i1 %i.brn, i1 true, i1 %or.cond.1538
  br i1 %or.cond344.1539, label %bb.he, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  %i.brp = load <2 x i32>, ptr %invariant.gep501.1, align 8, !tbaa !66
  br label %bb.hf

bb.he:                                            ; preds = %bb.hc
  %i.brq = load <2 x i32>, ptr %i.gk, align 16, !tbaa !66
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd, %.preheader.1
  %i.brr = phi <2 x i32> [ %i.brp, %bb.hd ], [ %i.brq, %bb.he ], [ zeroinitializer, %.preheader.1 ]
  %i.brs = shufflevector <2 x i32> %i.brr, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.brt = trunc <4 x i32> %i.brs to <4 x i16>
  %i.bru = load ptr, ptr %i.im, align 16, !tbaa !261
  %i.brv = getelementptr [4 x i8], ptr %i.bru, i64 %indvars.iv.next530
  store <4 x i16> %i.brt, ptr %i.brv, align 2, !tbaa !80
  %i.brw = load i32, ptr %invariant.gep.1, align 4, !tbaa !66
  %i.brx = trunc i32 %i.brw to i8                 ; 2 uses
  %i.bry = load ptr, ptr %i.io, align 16, !tbaa !120
  %i.brz = getelementptr i8, ptr %i.bry, i64 %indvars.iv.next528
  %i.bsa = getelementptr i8, ptr %i.brz, i64 1
  store i8 %i.brx, ptr %i.bsa, align 1, !tbaa !60
  %i.bsb = load ptr, ptr %i.io, align 16, !tbaa !120
  %i.bsc = getelementptr inbounds i8, ptr %i.bsb, i64 %indvars.iv.next528
  store i8 %i.brx, ptr %i.bsc, align 1, !tbaa !60
  %i.bsd = load i32, ptr %i.hx, align 4, !tbaa !253
  %.not342.1.1 = icmp eq i32 %i.bsd, 0
  br i1 %.not342.1.1, label %bb.hg, label %.loopexit.loopexit

bb.hg:                                            ; preds = %bb.hf
  %i.bse = load i32, ptr %i.gh, align 16, !tbaa !235
  %.not343.1.1 = icmp eq i32 %i.bse, 3
  br i1 %.not343.1.1, label %bb.hh, label %.loopexit.loopexit

bb.hh:                                            ; preds = %bb.hg
  %i.bsf = load i32, ptr %i.gq, align 4, !tbaa !256 ; 2 uses
  %i.bsg = icmp eq i32 %i.bsf, 0
  %i.bsh = icmp eq i32 %i.bsf, 3
  %or.cond.1.1 = select i1 %i.bsh, i1 %i.h, i1 false
  %or.cond344.1.1 = select i1 %i.bsg, i1 true, i1 %or.cond.1.1
  br i1 %or.cond344.1.1, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.bsi = load <2 x i32>, ptr %gep502.1.1, align 8, !tbaa !66
  br label %.loopexit.loopexit

bb.hj:                                            ; preds = %bb.hh
  %i.bsj = load <2 x i32>, ptr %i.jc, align 16, !tbaa !66
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.hj, %bb.hi, %bb.hg, %bb.hf
  %i.bsk = phi <2 x i32> [ %i.bsi, %bb.hi ], [ %i.bsj, %bb.hj ], [ zeroinitializer, %bb.hg ], [ zeroinitializer, %bb.hf ]
  %i.bsl = shufflevector <2 x i32> %i.bsk, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bsm = trunc <4 x i32> %i.bsl to <4 x i16>
  %i.bsn = load ptr, ptr %i.ja, align 8, !tbaa !261
  %i.bso = getelementptr [4 x i8], ptr %i.bsn, i64 %indvars.iv.next530
  store <4 x i16> %i.bsm, ptr %i.bso, align 2, !tbaa !80
  %i.bsp = load i32, ptr %gep.1.1, align 4, !tbaa !66
  %i.bsq = trunc i32 %i.bsp to i8                 ; 2 uses
  %i.bsr = load ptr, ptr %i.jb, align 8, !tbaa !120
  %i.bss = getelementptr i8, ptr %i.bsr, i64 %indvars.iv.next528
  %i.bst = getelementptr i8, ptr %i.bss, i64 1
  store i8 %i.bsq, ptr %i.bst, align 1, !tbaa !60
  %i.bsu = load ptr, ptr %i.jb, align 8, !tbaa !120
  %i.bsv = getelementptr inbounds i8, ptr %i.bsu, i64 %indvars.iv.next528
  store i8 %i.bsq, ptr %i.bsv, align 1, !tbaa !60
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %mpeg_decode_mb.exit
  %i.bsw = load ptr, ptr %i.iq, align 16, !tbaa !120
  %i.bsx = getelementptr inbounds nuw i8, ptr %i.bsw, i64 %i.ir
  store ptr %i.bsx, ptr %i.iq, align 16, !tbaa !120
  %i.bsy = load i32, ptr %i.is, align 4, !tbaa !263
  %i.bsz = lshr i32 %i.ip, %i.bsy
  %i.bta = load ptr, ptr %i.it, align 8, !tbaa !120
  %i.btb = zext nneg i32 %i.bsz to i64            ; 2 uses
  %i.btc = getelementptr inbounds nuw i8, ptr %i.bta, i64 %i.btb
  store ptr %i.btc, ptr %i.it, align 8, !tbaa !120
  %i.btd = load ptr, ptr %i.iu, align 16, !tbaa !120
  %i.bte = getelementptr inbounds nuw i8, ptr %i.btd, i64 %i.btb
  store ptr %i.bte, ptr %i.iu, align 16, !tbaa !120
  tail call void @ff_mpv_reconstruct_mb(ptr noundef nonnull %0, ptr noundef nonnull %i.hz) #11
  %i.btf = load i32, ptr %i.bb, align 4, !tbaa !229
  %i.btg = add nsw i32 %i.btf, 1                  ; 2 uses
  store i32 %i.btg, ptr %i.bb, align 4, !tbaa !229
  %i.bth = load i32, ptr %i.da, align 4, !tbaa !231
  %.not333 = icmp slt i32 %i.btg, %i.bth
  br i1 %.not333, label %bb.ii, label %bb.hk

bb.hk:                                            ; preds = %.loopexit
  %i.bti = load ptr, ptr %i.b, align 8, !tbaa !219
  %i.btj = getelementptr inbounds nuw i8, ptr %i.bti, i64 720
  %i.btk = load i32, ptr %i.btj, align 8, !tbaa !73
  %i.btl = lshr i32 16, %i.btk                    ; 2 uses
  %i.btm = load i32, ptr %i.dx, align 8, !tbaa !232
  %i.btn = ashr i32 %i.btm, %i.i
  %i.bto = mul nsw i32 %i.btn, %i.btl
  tail call void @ff_mpeg_draw_horiz_band(ptr noundef nonnull %0, i32 noundef %i.bto, i32 noundef %i.btl) #11
  store i32 0, ptr %i.bb, align 4, !tbaa !229
  %i.btp = load i32, ptr %i.dx, align 8, !tbaa !232
  %i.btq = add nsw i32 %i.btp, %i.iv              ; 4 uses
  store i32 %i.btq, ptr %i.dx, align 8, !tbaa !232
  %i.btr = load i32, ptr %i.l, align 8, !tbaa !223
  %.not334 = icmp slt i32 %i.btq, %i.btr
  %.val353 = load i32, ptr %i.w, align 8, !tbaa !109 ; 10 uses
  %.val354 = load i32, ptr %i.t, align 4, !tbaa !107 ; 3 uses
  %i.bts = sub nsw i32 %.val354, %.val353         ; 8 uses
  br i1 %.not334, label %bb.id, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.btt = load i32, ptr %i.gg, align 16, !tbaa !246
  %i.btu = icmp eq i32 %i.btt, 2
  br i1 %i.btu, label %bb.hm, label %bb.ht

bb.hm:                                            ; preds = %bb.hl
  %i.btv = load i32, ptr %i.gh, align 16, !tbaa !235
  %i.btw = icmp eq i32 %i.btv, 1
  br i1 %i.btw, label %bb.hn, label %bb.ht

bb.hn:                                            ; preds = %bb.hm
  %i.btx = getelementptr inbounds nuw i8, ptr %i.c, i64 688
  %i.bty = load i32, ptr %i.btx, align 8, !tbaa !166
  %i.btz = icmp eq i32 %i.bty, 0
  br i1 %i.btz, label %bb.ho, label %bb.ht

bb.ho:                                            ; preds = %bb.hn
  %i.bua = getelementptr inbounds nuw i8, ptr %i.c, i64 692
  %i.bub = load i32, ptr %i.bua, align 4, !tbaa !167
  %i.buc = icmp eq i32 %i.bub, 5
  br i1 %i.buc, label %bb.hp, label %bb.ht

bb.hp:                                            ; preds = %bb.ho
  %i.bud = load i32, ptr %i.fz, align 4, !tbaa !240
  %i.bue = icmp eq i32 %i.bud, 2
  br i1 %i.bue, label %bb.hq, label %bb.ht

bb.hq:                                            ; preds = %bb.hp
  %i.buf = load i32, ptr %i.ac, align 4, !tbaa !226
  %i.bug = icmp eq i32 %i.buf, 1
  br i1 %i.bug, label %bb.hr, label %bb.ht

bb.hr:                                            ; preds = %bb.hq
  %i.buh = getelementptr inbounds nuw i8, ptr %0, i64 3844
  %i.bui = load i32, ptr %i.buh, align 4, !tbaa !238
  %i.buj = icmp eq i32 %i.bui, 0
  br i1 %i.buj, label %bb.hs, label %bb.ht

bb.hs:                                            ; preds = %bb.hr
  %i.buk = getelementptr inbounds nuw i8, ptr %0, i64 3868
  %i.bul = load i32, ptr %i.buk, align 4, !tbaa !237
  %i.bum = icmp eq i32 %i.bul, 0
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %bb.hr, %bb.hq, %bb.hp, %bb.ho, %bb.hn, %bb.hm, %bb.hl
  %i.bun = phi i1 [ false, %bb.hr ], [ false, %bb.hq ], [ false, %bb.hp ], [ false, %bb.ho ], [ false, %bb.hn ], [ false, %bb.hm ], [ false, %bb.hl ], [ %i.bum, %bb.hs ] ; 2 uses
  %i.buo = icmp slt i32 %i.bts, 32
  %or.cond6 = select i1 %i.buo, i1 true, i1 %i.bun
  br i1 %or.cond6, label %bb.hy, label %align_get_bits.exit

align_get_bits.exit:                              ; preds = %bb.ht
  %.sroa.0.0.copyload = load ptr, ptr %i.o, align 16, !tbaa !120 ; 2 uses
  %4 = sub nsw i32 0, %.val353
  %5 = and i32 %4, 7
  %i.bup = add i32 %5, %.val353                   ; 3 uses
  %i.buq = lshr i32 %i.bup, 3
  %i.bur = zext nneg i32 %i.buq to i64
  %i.bus = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.bur ; 2 uses
  %i.but = load i32, ptr %i.bus, align 1, !tbaa !60
  %6 = tail call i32 @llvm.bswap.i32(i32 %i.but)
  %7 = and i32 %i.bup, 7                          ; 3 uses
  %8 = shl i32 %6, %7
  %.mask = and i32 %8, -256
  %i.buu = icmp eq i32 %.mask, 101591808          ; 3 uses
  br i1 %i.buu, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %align_get_bits.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.c, i32 noundef 48, ptr noundef nonnull @.str.74) #11
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %align_get_bits.exit
  %i.buv = icmp samesign ugt i32 %i.bts, 32
  br i1 %i.buv, label %bb.hw, label %.thread396

bb.hw:                                            ; preds = %bb.hv
  %i.buw = load i32, ptr %i.bus, align 1, !tbaa !60
  %9 = tail call i32 @llvm.bswap.i32(i32 %i.buw)
  %10 = shl i32 %9, %7
  %11 = and i32 %10, -65536
  %i.bux = add i32 %i.bup, 16
  %i.buy = lshr i32 %i.bux, 3
  %i.buz = zext nneg i32 %i.buy to i64
  %i.bva = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %i.buz
  %i.bvb = load i32, ptr %i.bva, align 1, !tbaa !60
  %i.bvc = tail call i32 @llvm.bswap.i32(i32 %i.bvb)
  %12 = shl i32 %i.bvc, %7
  %i.bvd = lshr i32 %12, 16
  %i.bve = or disjoint i32 %i.bvd, %11
  %i.bvf = icmp eq i32 %i.bve, 513
  br i1 %i.bvf, label %bb.hx, label %.thread396

bb.hx:                                            ; preds = %bb.hw
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.c, i32 noundef 48, ptr noundef nonnull @.str.75) #11
  %.val351.pre = load i32, ptr %i.w, align 8, !tbaa !109
  br label %.loopexit433

bb.hy:                                            ; preds = %bb.ht
  %i.bvg = icmp slt i32 %i.bts, 0
  br i1 %i.bvg, label %bb.ic, label %bb.hz

bb.hz:                                            ; preds = %bb.hy
  %.not337 = icmp eq i32 %.val354, %.val353
  br i1 %.not337, label %.loopexit433, label %.thread396

.thread396:                                       ; preds = %bb.hv, %bb.hw, %bb.hz
  %.1294395399 = phi i1 [ %i.bun, %bb.hz ], [ %i.buu, %bb.hw ], [ %i.buu, %bb.hv ]
  %i.bvh = tail call i32 @llvm.umin.i32(i32 %i.bts, i32 23)
  %.val365 = load ptr, ptr %i.o, align 16, !tbaa !106
  %.val366 = load i32, ptr %i.w, align 8, !tbaa !109 ; 3 uses
  %i.bvi = lshr i32 %.val366, 3
  %i.bvj = zext nneg i32 %i.bvi to i64
  %i.bvk = getelementptr inbounds nuw i8, ptr %.val365, i64 %i.bvj
  %i.bvl = load i32, ptr %i.bvk, align 1, !tbaa !60
  %i.bvm = tail call i32 @llvm.bswap.i32(i32 %i.bvl)
  %i.bvn = and i32 %.val366, 7
  %i.bvo = shl i32 %i.bvm, %i.bvn
  %i.bvp = sub nuw nsw i32 32, %i.bvh
  %i.bvq = lshr i32 %i.bvo, %i.bvp                ; 2 uses
  %i.bvr = icmp eq i32 %i.bvq, 0
  %or.cond8 = select i1 %i.bvr, i1 true, i1 %.1294395399
  br i1 %or.cond8, label %bb.ia, label %bb.ib

bb.ia:                                            ; preds = %.thread396
  %i.bvs = getelementptr inbounds nuw i8, ptr %i.c, i64 528
  %i.bvt = load i32, ptr %i.bvs, align 8, !tbaa !98
  %i.bvu = and i32 %i.bvt, 262146
  %i.bvv = icmp ne i32 %i.bvu, 0
  %i.bvw = icmp samesign ugt i32 %i.bts, 8
  %or.cond10 = select i1 %i.bvv, i1 %i.bvw, i1 false
  br i1 %or.cond10, label %bb.ib, label %.loopexit433

bb.ib:                                            ; preds = %bb.ia, %.thread396
  %.pre = load i32, ptr %i.bb, align 4, !tbaa !229
  %.pre548 = load i32, ptr %i.dx, align 8, !tbaa !232
  br label %bb.ic

bb.ic:                                            ; preds = %bb.hy, %bb.ib
  %i.bvx = phi i32 [ %.pre548, %bb.ib ], [ %i.btq, %bb.hy ]
  %i.bvy = phi i32 [ %.pre, %bb.ib ], [ 0, %bb.hy ]
  %i.bvz = phi i32 [ %i.bvq, %bb.ib ], [ 0, %bb.hy ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.c, i32 noundef 16, ptr noundef nonnull @.str.76, i32 noundef %i.bts, i32 noundef %i.bvz, i32 noundef %i.bvy, i32 noundef %i.bvx) #11
  br label %skip_1stop_8data_bits.exit.thread

bb.id:                                            ; preds = %bb.hk
  %i.bwa = load i32, ptr %i.iw, align 4, !tbaa !264
  %i.bwb = add nsw i32 %i.bwa, 15
  %i.bwc = ashr i32 %i.bwb, 4
  %.not335 = icmp slt i32 %i.btq, %i.bwc
  br i1 %.not335, label %bb.ih, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.bwd = load i32, ptr %i.gt, align 4, !tbaa !236
  %i.bwe = icmp ult i32 %i.bts, 26
  %i.bwf = or i32 %i.bwd, %.0383
  %i.bwg = icmp eq i32 %i.bwf, 0
  %or.cond16 = select i1 %i.bwg, i1 %i.bwe, i1 false
  br i1 %or.cond16, label %bb.if, label %bb.ih

bb.if:                                            ; preds = %bb.ie
  %.not336 = icmp eq i32 %.val354, %.val353
  br i1 %.not336, label %.loopexit433, label %bb.ig

bb.ig:                                            ; preds = %bb.if
  %.val361 = load ptr, ptr %i.o, align 16, !tbaa !106
  %i.bwh = lshr i32 %.val353, 3
  %i.bwi = zext nneg i32 %i.bwh to i64
  %i.bwj = getelementptr inbounds nuw i8, ptr %.val361, i64 %i.bwi
  %i.bwk = load i32, ptr %i.bwj, align 1, !tbaa !60
  %i.bwl = tail call i32 @llvm.bswap.i32(i32 %i.bwk)
  %i.bwm = and i32 %.val353, 7
  %i.bwn = shl i32 %i.bwl, %i.bwm
  %i.bwo = sub nuw nsw i32 32, %i.bts
  %i.bwp = lshr i32 %i.bwn, %i.bwo
  %i.bwq = icmp eq i32 %i.bwp, 0
  br i1 %i.bwq, label %.loopexit433, label %bb.ih

bb.ih:                                            ; preds = %bb.id, %bb.ie, %bb.ig
  tail call void @ff_init_block_index(ptr noundef nonnull %0) #11
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %.loopexit
  br i1 %.not.i371, label %.preheader430, label %.backedge

.preheader430:                                    ; preds = %bb.ii
  %i.bwr = load ptr, ptr %i.o, align 16, !tbaa !106 ; 3 uses
  %.promoted506 = load i32, ptr %i.w, align 8, !tbaa !109
  br label %.outer

.outer:                                           ; preds = %bb.io, %.preheader430
  %.ph = phi i32 [ %i.byb, %bb.io ], [ %.promoted506, %.preheader430 ]
  %.1.ph = phi i32 [ %i.byf, %bb.io ], [ 0, %.preheader430 ] ; 3 uses
  br label %bb.ij

bb.ij:                                            ; preds = %.outer, %bb.in
  %i.bws = phi i32 [ %i.byb, %bb.in ], [ %.ph, %.outer ] ; 4 uses
  %i.bwt = lshr i32 %i.bws, 3
  %i.bwu = zext nneg i32 %i.bwt to i64
  %i.bwv = getelementptr inbounds nuw i8, ptr %i.bwr, i64 %i.bwu
  %i.bww = load i32, ptr %i.bwv, align 1, !tbaa !60
  %i.bwx = tail call i32 @llvm.bswap.i32(i32 %i.bww)
  %i.bwy = and i32 %i.bws, 7
  %i.bwz = shl i32 %i.bwx, %i.bwy
  %i.bxa = lshr i32 %i.bwz, 23
  %i.bxb = zext nneg i32 %i.bxa to i64
  %i.bxc = getelementptr inbounds nuw [4 x i8], ptr @ff_mbincr_vlc, i64 %i.bxb ; 2 uses
  %i.bxd = load i16, ptr %i.bxc, align 2, !tbaa !60
  %i.bxe = sext i16 %i.bxd to i32                 ; 2 uses
  %i.bxf = getelementptr inbounds nuw i8, ptr %i.bxc, i64 2
  %i.bxg = load i16, ptr %i.bxf, align 2, !tbaa !60 ; 2 uses
  %i.bxh = sext i16 %i.bxg to i32                 ; 2 uses
  %i.bxi = icmp slt i16 %i.bxg, 0
  br i1 %i.bxi, label %bb.ik, label %get_vlc2.exit

bb.ik:                                            ; preds = %bb.ij
  %i.bxj = add i32 %i.bws, 9                      ; 3 uses
  %i.bxk = lshr i32 %i.bxj, 3
  %i.bxl = zext nneg i32 %i.bxk to i64
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bwr, i64 %i.bxl
  %i.bxn = load i32, ptr %i.bxm, align 1, !tbaa !60
  %i.bxo = tail call i32 @llvm.bswap.i32(i32 %i.bxn)
  %i.bxp = and i32 %i.bxj, 7
  %i.bxq = shl i32 %i.bxo, %i.bxp
  %i.bxr = add nsw i32 %i.bxh, 32
  %i.bxs = lshr i32 %i.bxq, %i.bxr
  %i.bxt = add i32 %i.bxs, %i.bxe
  %i.bxu = zext i32 %i.bxt to i64
  %i.bxv = getelementptr inbounds nuw [4 x i8], ptr @ff_mbincr_vlc, i64 %i.bxu ; 2 uses
  %i.bxw = getelementptr inbounds nuw i8, ptr %i.bxv, i64 2
  %i.bxx = load i16, ptr %i.bxw, align 2, !tbaa !60
  %i.bxy = sext i16 %i.bxx to i32
  %i.bxz = load i16, ptr %i.bxv, align 2, !tbaa !60
  %i.bya = sext i16 %i.bxz to i32
  br label %get_vlc2.exit

get_vlc2.exit:                                    ; preds = %bb.ij, %bb.ik
  %.154.i = phi i32 [ %i.bya, %bb.ik ], [ %i.bxe, %bb.ij ] ; 4 uses
  %.152.i = phi i32 [ %i.bxj, %bb.ik ], [ %i.bws, %bb.ij ]
  %.1.i = phi i32 [ %i.bxy, %bb.ik ], [ %i.bxh, %bb.ij ]
  %i.byb = add i32 %.1.i, %.152.i                 ; 6 uses
  store i32 %i.byb, ptr %i.w, align 8, !tbaa !109
  %i.byc = icmp slt i32 %.154.i, 0
  br i1 %i.byc, label %bb.il, label %bb.im

bb.il:                                            ; preds = %get_vlc2.exit
  %i.byd = load ptr, ptr %i.b, align 8, !tbaa !219
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.byd, i32 noundef 16, ptr noundef nonnull @.str.77) #11
  br label %skip_1stop_8data_bits.exit.thread

bb.im:                                            ; preds = %get_vlc2.exit
  %i.bye = icmp samesign ugt i32 %.154.i, 32
  br i1 %i.bye, label %bb.in, label %bb.is

bb.in:                                            ; preds = %bb.im
  switch i32 %.154.i, label %bb.ij [
    i32 33, label %bb.io
    i32 35, label %bb.ip
  ]

bb.io:                                            ; preds = %bb.in
  %i.byf = add nuw nsw i32 %.1.ph, 33
  br label %.outer

bb.ip:                                            ; preds = %bb.in
  %.not338 = icmp eq i32 %.1.ph, 0
  br i1 %.not338, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.byg = lshr i32 %i.byb, 3
  %i.byh = zext nneg i32 %i.byg to i64
  %i.byi = getelementptr inbounds nuw i8, ptr %i.bwr, i64 %i.byh
  %i.byj = load i32, ptr %i.byi, align 1, !tbaa !60
  %i.byk = tail call i32 @llvm.bswap.i32(i32 %i.byj)
  %i.byl = and i32 %i.byb, 7
  %i.bym = shl i32 %i.byk, %i.byl
  %.not339 = icmp ult i32 %i.bym, 131072
  br i1 %.not339, label %.loopexit433, label %bb.ir

bb.ir:                                            ; preds = %bb.iq, %bb.ip
  %i.byn = load ptr, ptr %i.b, align 8, !tbaa !219
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.byn, i32 noundef 16, ptr noundef nonnull @.str.78) #11
  br label %skip_1stop_8data_bits.exit.thread

bb.is:                                            ; preds = %bb.im
  %i.byo = add nuw nsw i32 %.154.i, %.1.ph        ; 3 uses
  %.not340 = icmp eq i32 %i.byo, 0
  br i1 %.not340, label %.backedge, label %bb.it

bb.it:                                            ; preds = %bb.is
end_hunk_0
