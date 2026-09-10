Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 216
loop-unroll.NumUnrolled: 278
begin_hunk_0_@ma_dr_mp3dec_decode_frame:bb.a
  %i.bzp = or disjoint i32 %i.bzo, 1              ; 5 uses
  %i.bzq = add nuw i32 %i.bzo, 3
  %i.bzr = lshr i32 %i.bzo, 3
  %i.bzs = sub i32 %i.bzq, %i.bzr                 ; 2 uses
  %i.bzt = add nsw i32 %.lcssa309312, %i.bzs      ; 3 uses
  %i.bzu = icmp sgt i32 %i.bzt, %i.me
  br i1 %i.bzu, label %ma_dr_mp3_bs_get_bits.exit56.i, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.bzv = ashr i32 %.lcssa309312, 3
  %i.bzw = sext i32 %i.bzv to i64
  %i.bzx = getelementptr inbounds i8, ptr %i.mb, i64 %i.bzw ; 2 uses
  %i.bzy = and i32 %.lcssa309312, 7               ; 2 uses
  %i.bzz = add i32 %i.bzy, %i.bzs                 ; 3 uses
  %i.caa = load i8, ptr %i.bzx, align 1, !tbaa !119
  %i.cab = zext i8 %i.caa to i32
  %i.cac = lshr i32 255, %i.bzy
  %i.cad = and i32 %i.cac, %i.cab                 ; 2 uses
  %i.cae = icmp sgt i32 %i.bzz, 8
  br i1 %i.cae, label %.lr.ph.i50.i, label %._crit_edge.i45.i

.lr.ph.i50.i:                                     ; preds = %bb.fu, %.lr.ph.i50.i
  %.pn26.i51.i = phi ptr [ %.0.i55.i, %.lr.ph.i50.i ], [ %i.bzx, %bb.fu ]
  %.01825.i52.i = phi i32 [ %i.caf, %.lr.ph.i50.i ], [ %i.bzz, %bb.fu ] ; 2 uses
  %.01924.i53.i = phi i32 [ %i.cah, %.lr.ph.i50.i ], [ 0, %bb.fu ]
  %.02023.i54.i = phi i32 [ %i.caj, %.lr.ph.i50.i ], [ %i.cad, %bb.fu ]
  %.0.i55.i = getelementptr inbounds nuw i8, ptr %.pn26.i51.i, i64 1 ; 2 uses
  %i.caf = add nsw i32 %.01825.i52.i, -8          ; 3 uses
  %i.cag = shl i32 %.02023.i54.i, %i.caf
  %i.cah = or i32 %i.cag, %.01924.i53.i           ; 2 uses
  %i.cai = load i8, ptr %.0.i55.i, align 1, !tbaa !119
  %i.caj = zext i8 %i.cai to i32                  ; 2 uses
  %i.cak = icmp samesign ugt i32 %.01825.i52.i, 16
  br i1 %i.cak, label %.lr.ph.i50.i, label %._crit_edge.i45.i, !llvm.loop !2977

._crit_edge.i45.i:                                ; preds = %.lr.ph.i50.i, %bb.fu
  %.020.lcssa.i46.i = phi i32 [ %i.cad, %bb.fu ], [ %i.caj, %.lr.ph.i50.i ]
  %.019.lcssa.i47.i = phi i32 [ 0, %bb.fu ], [ %i.cah, %.lr.ph.i50.i ]
  %.018.lcssa.i48.i = phi i32 [ %i.bzz, %bb.fu ], [ %i.caf, %.lr.ph.i50.i ]
  %i.cal = sub nsw i32 8, %.018.lcssa.i48.i
  %i.cam = lshr i32 %.020.lcssa.i46.i, %i.cal
  %i.can = or i32 %i.cam, %.019.lcssa.i47.i
  br label %ma_dr_mp3_bs_get_bits.exit56.i

ma_dr_mp3_bs_get_bits.exit56.i:                   ; preds = %._crit_edge.i45.i, %bb.ft
  %.021.i49.i = phi i32 [ %i.can, %._crit_edge.i45.i ], [ 0, %bb.ft ] ; 2 uses
  br i1 %i.byd, label %.lr.ph.i183, label %.loopexit.i

.lr.ph.i183:                                      ; preds = %ma_dr_mp3_bs_get_bits.exit56.i
  %i.cao = lshr exact i32 %i.bzo, 1               ; 3 uses
  br i1 %i.byf, label %.loopexit.i.loopexit727.epilog-lcssa, label %.lr.ph.i183.new

.lr.ph.i183.new:                                  ; preds = %.lr.ph.i183, %.lr.ph.i183.new
  %indvars.iv.i184 = phi i64 [ %indvars.iv.next.i185.1, %.lr.ph.i183.new ], [ 0, %.lr.ph.i183 ] ; 3 uses
  %.065.i = phi i32 [ %i.caz, %.lr.ph.i183.new ], [ %.021.i49.i, %.lr.ph.i183 ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i183.new ], [ 0, %.lr.ph.i183 ] ; 2 uses
  %i.cap = urem i32 %.065.i, %i.bzp
  %i.caq = sub i32 %i.cap, %i.cao
  %i.car = sitofp i32 %i.caq to float
  %i.cas = getelementptr inbounds nuw [4 x i8], ptr %.03870.i, i64 %indvars.iv.i184
  store float %i.car, ptr %i.cas, align 4, !tbaa !349
  %i.cat = udiv i32 %.065.i, %i.bzp               ; 2 uses
  %i.cau = urem i32 %i.cat, %i.bzp
  %i.cav = sub i32 %i.cau, %i.cao
  %i.caw = sitofp i32 %i.cav to float
  %i.cax = getelementptr inbounds nuw [4 x i8], ptr %.03870.i, i64 %indvars.iv.i184
  %i.cay = getelementptr inbounds nuw i8, ptr %i.cax, i64 4
  store float %i.caw, ptr %i.cay, align 4, !tbaa !349
  %indvars.iv.next.i185.1 = add nuw nsw i64 %indvars.iv.i184, 2 ; 2 uses
  %i.caz = udiv i32 %i.cat, %i.bzp                ; 2 uses
  %niter.next.1 = add i64 %niter, 2
  %niter.ncmp.1 = icmp eq i64 %niter, %i.byg
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit727.epilog-lcssa, label %.lr.ph.i183.new, !llvm.loop !3024

.loopexit.i.loopexit727.epilog-lcssa:             ; preds = %.lr.ph.i183, %.lr.ph.i183.new
  %indvars.iv.i184.epil.init = phi i64 [ 0, %.lr.ph.i183 ], [ %indvars.iv.next.i185.1, %.lr.ph.i183.new ]
  %.065.i.epil.init = phi i32 [ %.021.i49.i, %.lr.ph.i183 ], [ %i.caz, %.lr.ph.i183.new ]
  %i.cba = urem i32 %.065.i.epil.init, %i.bzp
  %i.cbb = sub i32 %i.cba, %i.cao
  %i.cbc = sitofp i32 %i.cbb to float
  %i.cbd = getelementptr inbounds nuw [4 x i8], ptr %.03870.i, i64 %indvars.iv.i184.epil.init
  store float %i.cbc, ptr %i.cbd, align 4, !tbaa !349
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %ma_dr_mp3_bs_get_bits.exit.i193, %.loopexit.i.loopexit727.epilog-lcssa, %ma_dr_mp3_bs_get_bits.exit56.i, %bb.fr, %bb.fp
  %.lcssa309311 = phi i32 [ %i.bzt, %.loopexit.i.loopexit727.epilog-lcssa ], [ %.lcssa309312, %bb.fp ], [ %i.bzt, %ma_dr_mp3_bs_get_bits.exit56.i ], [ %.lcssa309312, %bb.fr ], [ %i.byp, %ma_dr_mp3_bs_get_bits.exit.i193 ] ; 4 uses
  %i.cbe = sext i32 %.169.i to i64
  %i.cbf = getelementptr inbounds [4 x i8], ptr %.03870.i, i64 %i.cbe
  %i.cbg = sub nsw i32 18, %.169.i                ; 2 uses
  %indvars.iv.next91.i = add nuw nsw i64 %indvars.iv90.i, 1 ; 2 uses
  %exitcond94.not.i = icmp eq i64 %indvars.iv.next91.i, %wide.trip.count93.i
  br i1 %exitcond94.not.i, label %._crit_edge.i182, label %bb.fp, !llvm.loop !3025

._crit_edge.i182:                                 ; preds = %.loopexit.i
  %indvars.iv.next96.i = add nuw nsw i64 %indvars.iv95.i, 1 ; 2 uses
  %exitcond98.not.i = icmp eq i64 %indvars.iv.next96.i, 4
  br i1 %exitcond98.not.i, label %ma_dr_mp3_L12_dequantize_granule.exit, label %.lr.ph72.i, !llvm.loop !3026

ma_dr_mp3_L12_dequantize_granule.exit:            ; preds = %._crit_edge.i182
  %i.cbh = shl nsw i32 %i.byc, 2
  %i.cbi = add nsw i32 %i.cbh, %.196320           ; 2 uses
  %i.cbj = icmp eq i32 %i.cbi, 12
  br i1 %i.cbj, label %.preheader.i202.preheader, label %bb.fv

.preheader.i202.preheader:                        ; preds = %ma_dr_mp3_L12_dequantize_granule.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bxr, ptr nonnull align 4 %i.bxs, i64 %i.bxw, i1 false)
  %i.cbk = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  br label %.preheader.i202

.preheader.i202:                                  ; preds = %.preheader.i202.preheader, %.preheader.i202
  %.0184.i = phi i32 [ %i.ccj, %.preheader.i202 ], [ 0, %.preheader.i202.preheader ]
  %.0193.i = phi ptr [ %i.cck, %.preheader.i202 ], [ %i.bxl, %.preheader.i202.preheader ] ; 8 uses
  %.0202.i = phi ptr [ %i.ccl, %.preheader.i202 ], [ %i.cbk, %.preheader.i202.preheader ] ; 3 uses
  %i.cbl = getelementptr inbounds nuw i8, ptr %.0202.i, i64 12
  %i.cbm = load float, ptr %.0202.i, align 4, !tbaa !349
  %i.cbn = load float, ptr %i.cbl, align 4, !tbaa !349
  %i.cbo = getelementptr inbounds nuw i8, ptr %.0193.i, i64 2304 ; 2 uses
  %i.cbp = load <4 x float>, ptr %.0193.i, align 4, !tbaa !349
  %i.cbq = insertelement <4 x float> poison, float %i.cbm, i64 0
  %i.cbr = shufflevector <4 x float> %i.cbq, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cbs = fmul <4 x float> %i.cbr, %i.cbp
  store <4 x float> %i.cbs, ptr %.0193.i, align 4, !tbaa !349
  %i.cbt = load <4 x float>, ptr %i.cbo, align 4, !tbaa !349
  %i.cbu = insertelement <4 x float> poison, float %i.cbn, i64 0
  %i.cbv = shufflevector <4 x float> %i.cbu, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.cbw = fmul <4 x float> %i.cbv, %i.cbt
  store <4 x float> %i.cbw, ptr %i.cbo, align 4, !tbaa !349
  %i.cbx = getelementptr inbounds nuw i8, ptr %.0193.i, i64 16 ; 2 uses
  %i.cby = getelementptr inbounds nuw i8, ptr %.0193.i, i64 2320 ; 2 uses
  %i.cbz = load <4 x float>, ptr %i.cbx, align 4, !tbaa !349
  %i.cca = fmul <4 x float> %i.cbr, %i.cbz
  store <4 x float> %i.cca, ptr %i.cbx, align 4, !tbaa !349
  %i.ccb = load <4 x float>, ptr %i.cby, align 4, !tbaa !349
  %i.ccc = fmul <4 x float> %i.cbv, %i.ccb
  store <4 x float> %i.ccc, ptr %i.cby, align 4, !tbaa !349
  %i.ccd = getelementptr inbounds nuw i8, ptr %.0193.i, i64 32 ; 2 uses
  %i.cce = getelementptr inbounds nuw i8, ptr %.0193.i, i64 2336 ; 2 uses
  %i.ccf = load <4 x float>, ptr %i.ccd, align 4, !tbaa !349
  %i.ccg = fmul <4 x float> %i.cbr, %i.ccf
  store <4 x float> %i.ccg, ptr %i.ccd, align 4, !tbaa !349
  %i.cch = load <4 x float>, ptr %i.cce, align 4, !tbaa !349
  %i.cci = fmul <4 x float> %i.cbv, %i.cch
  store <4 x float> %i.cci, ptr %i.cce, align 4, !tbaa !349
  %i.ccj = add nuw nsw i32 %.0184.i, 1            ; 2 uses
  %i.cck = getelementptr inbounds nuw i8, ptr %.0193.i, i64 72
  %i.ccl = getelementptr inbounds nuw i8, ptr %.0202.i, i64 24
  %exitcond.not.i203 = icmp eq i32 %i.ccj, %.1.i.i163
  br i1 %exitcond.not.i203, label %ma_dr_mp3_L12_apply_scf_384.exit, label %.preheader.i202, !llvm.loop !3027

ma_dr_mp3_L12_apply_scf_384.exit:                 ; preds = %.preheader.i202
  %i.ccm = load i32, ptr %i.kq, align 4, !tbaa !840
  tail call fastcc void @ma_dr_mp3d_synth_granule(ptr noundef nonnull %i.bxx, ptr noundef nonnull %i.bxl, i32 noundef 12, i32 noundef %i.ccm, ptr noundef %.1101319, ptr noundef nonnull %i.bxy)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(4608) %i.bxl, i8 0, i64 4608, i1 false)
  %i.ccn = load i32, ptr %i.kq, align 4, !tbaa !840
  %i.cco = sext i32 %i.ccn to i64
  %i.ccp = mul nsw i64 %i.cco, 768
  %i.ccq = getelementptr inbounds nuw i8, ptr %.1101319, i64 %i.ccp
  br label %bb.fv

bb.fv:                                            ; preds = %ma_dr_mp3_L12_apply_scf_384.exit, %ma_dr_mp3_L12_dequantize_granule.exit
  %.2102 = phi ptr [ %i.ccq, %ma_dr_mp3_L12_apply_scf_384.exit ], [ %.1101319, %ma_dr_mp3_L12_dequantize_granule.exit ]
  %.2 = phi i32 [ 0, %ma_dr_mp3_L12_apply_scf_384.exit ], [ %i.cbi, %ma_dr_mp3_L12_dequantize_granule.exit ]
  %i.ccr = icmp sgt i32 %.lcssa309311, %i.me
  br i1 %i.ccr, label %bb.fw, label %bb.fo

bb.fw:                                            ; preds = %bb.fv
  store i8 0, ptr %i.d, align 8, !tbaa !119
  br label %.thread224

.thread224:                                       ; preds = %bb.ep, %bb.fw
  %.198.ph = phi i32 [ 0, %bb.fw ], [ %i.bmu, %bb.ep ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  br label %bb.fz

bb.fx:                                            ; preds = %bb.fo
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #55
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %ma_dr_mp3_L3_save_reservoir.exit
  %.192 = phi i32 [ %i.nm, %ma_dr_mp3_L3_save_reservoir.exit ], [ 1, %bb.fx ]
  %i.ccs = getelementptr i8, ptr %0, i64 6153
  %.val = load i8, ptr %i.ccs, align 1, !tbaa !119
  %i.cct = zext i8 %.val to i32                   ; 2 uses
  %i.ccu = and i32 %i.cct, 6
  %i.ccv = icmp eq i32 %i.ccu, 6
  %i.ccw = and i32 %i.cct, 14
  %i.ccx = icmp eq i32 %i.ccw, 2
  %i.ccy = zext i1 %i.ccx to i32
  %i.ccz = lshr exact i32 1152, %i.ccy
  %i.cda = select i1 %i.ccv, i32 384, i32 %i.ccz
  %i.cdb = mul nuw nsw i32 %i.cda, %.192
  br label %bb.fz

bb.fz:                                            ; preds = %.thread224, %.critedge, %bb.fy, %ma_dr_mp3d_find_frame.exit.thread
  %.299 = phi i32 [ %i.cdb, %bb.fy ], [ 0, %.critedge ], [ %.198.ph, %.thread224 ], [ 0, %ma_dr_mp3d_find_frame.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #55
  ret i32 %.299
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, -2147483648) i32 @ma_dr_mp3_L3_read_side_info(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !119
  %i.c = icmp ugt i8 %i.b, -65
  %i.d = select i1 %i.c, i32 1, i32 2             ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !119
  %i.g = lshr i8 %i.f, 2
  %i.h = and i8 %i.g, 3
  %i.i = zext nneg i8 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 4 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !119
  %i.l = zext i8 %i.k to i32                      ; 3 uses
  %i.m = lshr i32 %i.l, 3
  %i.n = and i32 %i.m, 1
  %i.o = lshr i32 %i.l, 4
  %i.p = and i32 %i.o, 1
  %i.q = add nuw nsw i32 %i.n, %i.p
  %i.r = mul nuw nsw i32 %i.q, 3
  %i.s = add nuw nsw i32 %i.r, %i.i               ; 2 uses
  %i.t = icmp ne i32 %i.s, 0
  %.neg = sext i1 %i.t to i32
  %i.u = add nsw i32 %i.s, %.neg
  %i.v = and i32 %i.l, 8
  %.not = icmp eq i32 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !777  ; 6 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !776    ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aa = shl nuw nsw i32 %i.d, 1                 ; 3 uses
  %i.ab = add nsw i32 %i.x, 9                     ; 5 uses
  store i32 %i.ab, ptr %i.w, align 8, !tbaa !777
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !778 ; 4 uses
  %i.ad = icmp sgt i32 %i.ab, %i.ac
  br i1 %i.ad, label %ma_dr_mp3_bs_get_bits.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.ae = ashr i32 %i.x, 3
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.y, i64 %i.af ; 2 uses
  %i.ah = and i32 %i.x, 7                         ; 3 uses
  %i.ai = load i8, ptr %i.ag, align 1, !tbaa !119
  %i.aj = zext i8 %i.ai to i32
  %i.ak = lshr i32 255, %i.ah
  %i.al = and i32 %i.ak, %i.aj
  %i.am = add nuw nsw i32 %i.ah, 1
  %i.an = shl nuw nsw i32 %i.al, %i.am
  %.0.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ao = load i8, ptr %.0.i, align 1, !tbaa !119
  %i.ap = zext i8 %i.ao to i32
  %i.aq = xor i32 %i.ah, 7
  %i.ar = lshr i32 %i.ap, %i.aq
  %i.as = or i32 %i.ar, %i.an
  br label %ma_dr_mp3_bs_get_bits.exit

ma_dr_mp3_bs_get_bits.exit:                       ; preds = %bb.b, %.lr.ph.i
  %.021.i = phi i32 [ %i.as, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %i.at = add nuw nsw i32 %i.aa, 7                ; 2 uses
  %i.au = add nsw i32 %i.ab, %i.at                ; 4 uses
  store i32 %i.au, ptr %i.w, align 8, !tbaa !777
  %i.av = icmp sgt i32 %i.au, %i.ac
  br i1 %i.av, label %ma_dr_mp3_bs_get_bits.exit119, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %ma_dr_mp3_bs_get_bits.exit
  %i.aw = and i32 %i.ab, 7                        ; 2 uses
  %i.ax = add nuw nsw i32 %i.aw, %i.at            ; 4 uses
  %i.ay = lshr i32 255, %i.aw
  %i.az = ashr i32 %i.ab, 3
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %i.y, i64 %i.ba ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !119
  %i.bd = zext i8 %i.bc to i32
  %i.be = and i32 %i.ay, %i.bd
  %.0.i118 = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bf = add nsw i32 %i.ax, -8                   ; 2 uses
  %i.bg = shl i32 %i.be, %i.bf                    ; 2 uses
  %i.bh = load i8, ptr %.0.i118, align 1, !tbaa !119
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = icmp samesign ugt i32 %i.ax, 16
  br i1 %i.bj, label %.lr.ph.i113.1, label %._crit_edge.i108

.lr.ph.i113.1:                                    ; preds = %.lr.ph.i113
  %.0.i118.1 = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bk = add nsw i32 %i.ax, -16
  %i.bl = shl i32 %i.bi, %i.bk
  %i.bm = or i32 %i.bl, %i.bg
  %i.bn = load i8, ptr %.0.i118.1, align 1, !tbaa !119
  %i.bo = zext i8 %i.bn to i32
  br label %._crit_edge.i108

._crit_edge.i108:                                 ; preds = %.lr.ph.i113.1, %.lr.ph.i113
  %.01825.i115.lcssa = phi i32 [ %i.ax, %.lr.ph.i113 ], [ %i.bf, %.lr.ph.i113.1 ]
  %.lcssa509 = phi i32 [ %i.bg, %.lr.ph.i113 ], [ %i.bm, %.lr.ph.i113.1 ]
  %.lcssa508 = phi i32 [ %i.bi, %.lr.ph.i113 ], [ %i.bo, %.lr.ph.i113.1 ]
  %i.bp = sub nuw nsw i32 16, %.01825.i115.lcssa
  %i.bq = lshr i32 %.lcssa508, %i.bp
  %i.br = or i32 %i.bq, %.lcssa509
  br label %ma_dr_mp3_bs_get_bits.exit119

bb.c:                                             ; preds = %bb.a
  %i.bs = or disjoint i32 %i.d, 8                 ; 2 uses
  %i.bt = add nsw i32 %i.x, %i.bs                 ; 3 uses
  store i32 %i.bt, ptr %i.w, align 8, !tbaa !777
  %i.bu = load i32, ptr %i.z, align 4, !tbaa !778 ; 2 uses
  %i.bv = icmp sgt i32 %i.bt, %i.bu
  br i1 %i.bv, label %ma_dr_mp3_bs_get_bits.exit131, label %bb.d

bb.d:                                             ; preds = %bb.c
  %3 = and i32 %i.x, 7                            ; 2 uses
  %4 = add nuw nsw i32 %3, %i.bs                  ; 4 uses
  %5 = lshr i32 255, %3
  %i.bw = ashr i32 %i.x, 3
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds i8, ptr %i.y, i64 %i.bx ; 3 uses
  %6 = load i8, ptr %i.by, align 1, !tbaa !119
  %7 = zext i8 %6 to i32
  %i.bz = and i32 %5, %7
  %.0.i130 = getelementptr inbounds nuw i8, ptr %i.by, i64 1
  %8 = add nsw i32 %4, -8                         ; 2 uses
  %9 = shl i32 %i.bz, %8                          ; 2 uses
  %10 = load i8, ptr %.0.i130, align 1, !tbaa !119
  %11 = zext i8 %10 to i32                        ; 2 uses
  %i.ca = icmp samesign ugt i32 %4, 16
  br i1 %i.ca, label %.lr.ph.i125.1, label %._crit_edge.i120

.lr.ph.i125.1:                                    ; preds = %bb.d
  %.0.i130.1 = getelementptr inbounds nuw i8, ptr %i.by, i64 2
  %i.cb = add nsw i32 %4, -16
  %i.cc = shl i32 %11, %i.cb
  %i.cd = or i32 %i.cc, %9
  %i.ce = load i8, ptr %.0.i130.1, align 1, !tbaa !119
  %i.cf = zext i8 %i.ce to i32
  br label %._crit_edge.i120

._crit_edge.i120:                                 ; preds = %.lr.ph.i125.1, %bb.d
  %.020.lcssa.i121 = phi i32 [ %4, %bb.d ], [ %8, %.lr.ph.i125.1 ]
  %.019.lcssa.i122 = phi i32 [ %9, %bb.d ], [ %i.cd, %.lr.ph.i125.1 ]
  %.018.lcssa.i123 = phi i32 [ %11, %bb.d ], [ %i.cf, %.lr.ph.i125.1 ]
  %12 = sub nuw nsw i32 16, %.020.lcssa.i121
  %i.cg = lshr i32 %.018.lcssa.i123, %12
  %i.ch = or i32 %i.cg, %.019.lcssa.i122
  br label %ma_dr_mp3_bs_get_bits.exit131

ma_dr_mp3_bs_get_bits.exit131:                    ; preds = %bb.c, %._crit_edge.i120
  %.021.i124 = phi i32 [ %i.ch, %._crit_edge.i120 ], [ 0, %bb.c ]
  %i.ci = lshr i32 %.021.i124, %i.d
  br label %ma_dr_mp3_bs_get_bits.exit119

ma_dr_mp3_bs_get_bits.exit119:                    ; preds = %._crit_edge.i108, %ma_dr_mp3_bs_get_bits.exit, %ma_dr_mp3_bs_get_bits.exit131
  %i.cj = phi i32 [ %i.bu, %ma_dr_mp3_bs_get_bits.exit131 ], [ %i.ac, %._crit_edge.i108 ], [ %i.ac, %ma_dr_mp3_bs_get_bits.exit ]
  %i.ck = phi i32 [ %i.bt, %ma_dr_mp3_bs_get_bits.exit131 ], [ %i.au, %._crit_edge.i108 ], [ %i.au, %ma_dr_mp3_bs_get_bits.exit ]
  %.095 = phi i32 [ 0, %ma_dr_mp3_bs_get_bits.exit131 ], [ %i.br, %._crit_edge.i108 ], [ 0, %ma_dr_mp3_bs_get_bits.exit ]
  %.094 = phi i32 [ %i.ci, %ma_dr_mp3_bs_get_bits.exit131 ], [ %.021.i, %._crit_edge.i108 ], [ %.021.i, %ma_dr_mp3_bs_get_bits.exit ] ; 2 uses
  %.0 = phi i32 [ %i.d, %ma_dr_mp3_bs_get_bits.exit131 ], [ %i.aa, %._crit_edge.i108 ], [ %i.aa, %ma_dr_mp3_bs_get_bits.exit ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 23 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 6 uses
  %i.cn = sext i32 %i.u to i64                    ; 3 uses
  %i.co = getelementptr inbounds [23 x i8], ptr @ma_dr_mp3_L3_read_side_info.g_scf_long, i64 %i.cn
  %i.cp = getelementptr inbounds [40 x i8], ptr @ma_dr_mp3_L3_read_side_info.g_scf_mixed, i64 %i.cn
  %i.cq = getelementptr inbounds [40 x i8], ptr @ma_dr_mp3_L3_read_side_info.g_scf_short, i64 %i.cn
  br label %bb.e

bb.e:                                             ; preds = %ma_dr_mp3_bs_get_bits.exit335, %ma_dr_mp3_bs_get_bits.exit119
  %i.cr = phi i32 [ %i.cj, %ma_dr_mp3_bs_get_bits.exit119 ], [ %i.qo, %ma_dr_mp3_bs_get_bits.exit335 ] ; 9 uses
  %i.cs = phi ptr [ %i.y, %ma_dr_mp3_bs_get_bits.exit119 ], [ %i.qp, %ma_dr_mp3_bs_get_bits.exit335 ] ; 9 uses
  %i.ct = phi i32 [ %i.ck, %ma_dr_mp3_bs_get_bits.exit119 ], [ %i.rh, %ma_dr_mp3_bs_get_bits.exit335 ] ; 5 uses
  %.099 = phi ptr [ %1, %ma_dr_mp3_bs_get_bits.exit119 ], [ %i.sa, %ma_dr_mp3_bs_get_bits.exit335 ] ; 34 uses
  %.196 = phi i32 [ %.095, %ma_dr_mp3_bs_get_bits.exit119 ], [ %i.rz, %ma_dr_mp3_bs_get_bits.exit335 ] ; 2 uses
  %.093 = phi i32 [ 0, %ma_dr_mp3_bs_get_bits.exit119 ], [ %i.dy, %ma_dr_mp3_bs_get_bits.exit335 ]
  %.1 = phi i32 [ %.0, %ma_dr_mp3_bs_get_bits.exit119 ], [ %i.sb, %ma_dr_mp3_bs_get_bits.exit335 ]
  %i.cu = load i8, ptr %i.a, align 1, !tbaa !119
  %i.cv = icmp ugt i8 %i.cu, -65
  %i.cw = shl i32 %.196, 4
  %spec.select = select i1 %i.cv, i32 %i.cw, i32 %.196 ; 5 uses
  %i.cx = add nsw i32 %i.ct, 12                   ; 4 uses
  store i32 %i.cx, ptr %i.cl, align 8, !tbaa !777
  %i.cy = icmp sgt i32 %i.cx, %i.cr
  br i1 %i.cy, label %ma_dr_mp3_bs_get_bits.exit143, label %.lr.ph.i137

.lr.ph.i137:                                      ; preds = %bb.e
  %i.cz = and i32 %i.ct, 7                        ; 5 uses
  %i.da = lshr i32 255, %i.cz
  %i.db = ashr i32 %i.ct, 3
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %i.cs, i64 %i.dc ; 3 uses
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !119
  %i.df = zext i8 %i.de to i32
  %i.dg = and i32 %i.da, %i.df
  %i.dh = add nuw nsw i32 %i.cz, 12
  %.0.i142 = getelementptr inbounds nuw i8, ptr %i.dd, i64 1
  %i.di = add nuw nsw i32 %i.cz, 4                ; 2 uses
  %i.dj = shl nuw nsw i32 %i.dg, %i.di            ; 2 uses
  %i.dk = load i8, ptr %.0.i142, align 1, !tbaa !119
  %i.dl = zext i8 %i.dk to i32                    ; 2 uses
  %i.dm = icmp samesign ugt i32 %i.cz, 4
  br i1 %i.dm, label %.lr.ph.i137.1, label %._crit_edge.i132

.lr.ph.i137.1:                                    ; preds = %.lr.ph.i137
  %.0.i142.1 = getelementptr inbounds nuw i8, ptr %i.dd, i64 2
  %i.dn = add nsw i32 %i.cz, -4
  %i.do = shl i32 %i.dl, %i.dn
  %i.dp = or i32 %i.do, %i.dj
  %i.dq = load i8, ptr %.0.i142.1, align 1, !tbaa !119
  %i.dr = zext i8 %i.dq to i32
  br label %._crit_edge.i132

._crit_edge.i132:                                 ; preds = %.lr.ph.i137.1, %.lr.ph.i137
  %.01825.i139.lcssa = phi i32 [ %i.dh, %.lr.ph.i137 ], [ %i.di, %.lr.ph.i137.1 ]
  %.lcssa494.a = phi i32 [ %i.dj, %.lr.ph.i137 ], [ %i.dp, %.lr.ph.i137.1 ]
  %.lcssa = phi i32 [ %i.dl, %.lr.ph.i137 ], [ %i.dr, %.lr.ph.i137.1 ]
  %i.ds = sub nuw nsw i32 16, %.01825.i139.lcssa
  %i.dt = lshr i32 %.lcssa, %i.ds
  %i.du = or i32 %i.dt, %.lcssa494.a
  br label %ma_dr_mp3_bs_get_bits.exit143

ma_dr_mp3_bs_get_bits.exit143:                    ; preds = %bb.e, %._crit_edge.i132
  %.021.i136 = phi i32 [ %i.du, %._crit_edge.i132 ], [ 0, %bb.e ] ; 2 uses
  %i.dv = trunc i32 %.021.i136 to i16
  %i.dw = getelementptr inbounds nuw i8, ptr %.099, i64 8
  store i16 %i.dv, ptr %i.dw, align 8, !tbaa !1121
  %i.dx = and i32 %.021.i136, 65535
  %i.dy = add nuw nsw i32 %i.dx, %.093            ; 2 uses
  %i.dz = add nsw i32 %i.ct, 21                   ; 4 uses
  store i32 %i.dz, ptr %i.cl, align 8, !tbaa !777
  %i.ea = icmp sgt i32 %i.dz, %i.cr
  br i1 %i.ea, label %ma_dr_mp3_bs_get_bits.exit155.thread, label %.lr.ph.i149

ma_dr_mp3_bs_get_bits.exit155.thread:             ; preds = %ma_dr_mp3_bs_get_bits.exit143
  %i.eb = getelementptr inbounds nuw i8, ptr %.099, i64 10
  store i16 0, ptr %i.eb, align 2, !tbaa !1129
  br label %bb.f

.lr.ph.i149:                                      ; preds = %ma_dr_mp3_bs_get_bits.exit143
  %i.ec = ashr i32 %i.cx, 3
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds i8, ptr %i.cs, i64 %i.ed ; 2 uses
  %i.ef = and i32 %i.cx, 7                        ; 3 uses
  %i.eg = load i8, ptr %i.ee, align 1, !tbaa !119
  %i.eh = zext i8 %i.eg to i32
  %i.ei = lshr i32 255, %i.ef
  %i.ej = and i32 %i.ei, %i.eh
  %i.ek = add nuw nsw i32 %i.ef, 1
  %i.el = shl nuw nsw i32 %i.ej, %i.ek
  %.0.i154 = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.em = load i8, ptr %.0.i154, align 1, !tbaa !119
  %i.en = zext i8 %i.em to i32
  %i.eo = xor i32 %i.ef, 7
  %i.ep = lshr i32 %i.en, %i.eo
  %i.eq = or i32 %i.ep, %i.el                     ; 2 uses
  %i.er = trunc nuw i32 %i.eq to i16
  %i.es = getelementptr inbounds nuw i8, ptr %.099, i64 10
  store i16 %i.er, ptr %i.es, align 2, !tbaa !1129
  %i.et = icmp samesign ugt i32 %i.eq, 288
  br i1 %i.et, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %ma_dr_mp3_bs_get_bits.exit155.thread, %.lr.ph.i149
  %i.eu = add nsw i32 %i.ct, 29                   ; 5 uses
  store i32 %i.eu, ptr %i.cl, align 8, !tbaa !777
  %i.ev = icmp sgt i32 %i.eu, %i.cr
  br i1 %i.ev, label %ma_dr_mp3_bs_get_bits.exit167, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ew = ashr i32 %i.dz, 3
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %i.cs, i64 %i.ex ; 2 uses
  %i.ez = and i32 %i.dz, 7                        ; 4 uses
  %i.fa = load i8, ptr %i.ey, align 1, !tbaa !119
  %i.fb = zext i8 %i.fa to i32
  %i.fc = lshr i32 255, %i.ez
  %i.fd = and i32 %i.fc, %i.fb                    ; 2 uses
  %.not341 = icmp eq i32 %i.ez, 0
  br i1 %.not341, label %._crit_edge.i156, label %._crit_edge.i156.loopexit

._crit_edge.i156.loopexit:                        ; preds = %bb.g
  %i.fe = shl nuw nsw i32 %i.fd, %i.ez
  %.0.i166.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %.pre = load i8, ptr %.0.i166.phi.trans.insert, align 1, !tbaa !119
  %i.ff = zext i8 %.pre to i32
  %i.fg = sub nuw nsw i32 8, %i.ez
  br label %._crit_edge.i156

._crit_edge.i156:                                 ; preds = %._crit_edge.i156.loopexit, %bb.g
  %.020.lcssa.i157 = phi i32 [ %i.fd, %bb.g ], [ %i.ff, %._crit_edge.i156.loopexit ]
  %.019.lcssa.i158 = phi i32 [ 0, %bb.g ], [ %i.fe, %._crit_edge.i156.loopexit ]
  %.018.lcssa.i159 = phi i32 [ 0, %bb.g ], [ %i.fg, %._crit_edge.i156.loopexit ]
  %i.fh = lshr i32 %.020.lcssa.i157, %.018.lcssa.i159
  %i.fi = or i32 %i.fh, %.019.lcssa.i158
  %i.fj = trunc i32 %i.fi to i8
  br label %ma_dr_mp3_bs_get_bits.exit167

ma_dr_mp3_bs_get_bits.exit167:                    ; preds = %bb.f, %._crit_edge.i156
  %.021.i160 = phi i8 [ %i.fj, %._crit_edge.i156 ], [ 0, %bb.f ]
  %i.fk = getelementptr inbounds nuw i8, ptr %.099, i64 14
  store i8 %.021.i160, ptr %i.fk, align 2, !tbaa !1128
  %i.fl = load i8, ptr %i.j, align 1, !tbaa !119
  %i.fm = and i8 %i.fl, 8
  %.not101 = icmp eq i8 %i.fm, 0
  %i.fn = select i1 %.not101, i32 9, i32 4        ; 2 uses
  %i.fo = add nsw i32 %i.fn, %i.eu                ; 11 uses
  store i32 %i.fo, ptr %i.cl, align 8, !tbaa !777
  %i.fp = icmp sgt i32 %i.fo, %i.cr
  br i1 %i.fp, label %ma_dr_mp3_bs_get_bits.exit179, label %bb.h

bb.h:                                             ; preds = %ma_dr_mp3_bs_get_bits.exit167
  %i.fq = ashr i32 %i.eu, 3
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds i8, ptr %i.cs, i64 %i.fr ; 2 uses
  %i.ft = and i32 %i.eu, 7                        ; 2 uses
  %i.fu = add nuw nsw i32 %i.fn, %i.ft            ; 3 uses
  %i.fv = load i8, ptr %i.fs, align 1, !tbaa !119
  %i.fw = zext i8 %i.fv to i32
  %i.fx = lshr i32 255, %i.ft
  %i.fy = and i32 %i.fx, %i.fw                    ; 2 uses
  %i.fz = icmp samesign ugt i32 %i.fu, 8
  br i1 %i.fz, label %._crit_edge.i168.loopexit, label %._crit_edge.i168

._crit_edge.i168.loopexit:                        ; preds = %bb.h
  %.0.i178 = getelementptr inbounds nuw i8, ptr %i.fs, i64 1
  %i.ga = load i8, ptr %.0.i178, align 1, !tbaa !119
  %i.gb = zext i8 %i.ga to i32
  %i.gc = add nsw i32 %i.fu, -8                   ; 2 uses
  %i.gd = shl nuw nsw i32 %i.fy, %i.gc
  br label %._crit_edge.i168

._crit_edge.i168:                                 ; preds = %._crit_edge.i168.loopexit, %bb.h
  %.020.lcssa.i169 = phi i32 [ %i.fy, %bb.h ], [ %i.gb, %._crit_edge.i168.loopexit ]
  %.019.lcssa.i170 = phi i32 [ 0, %bb.h ], [ %i.gd, %._crit_edge.i168.loopexit ]
  %.018.lcssa.i171 = phi i32 [ %i.fu, %bb.h ], [ %i.gc, %._crit_edge.i168.loopexit ]
  %i.ge = sub nuw nsw i32 8, %.018.lcssa.i171
  %i.gf = lshr i32 %.020.lcssa.i169, %i.ge
  %i.gg = or i32 %i.gf, %.019.lcssa.i170
  %i.gh = trunc nuw i32 %i.gg to i16
  br label %ma_dr_mp3_bs_get_bits.exit179

ma_dr_mp3_bs_get_bits.exit179:                    ; preds = %ma_dr_mp3_bs_get_bits.exit167, %._crit_edge.i168
  %i.gi = phi i16 [ %i.gh, %._crit_edge.i168 ], [ 0, %ma_dr_mp3_bs_get_bits.exit167 ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.099, i64 12
  store i16 %i.gi, ptr %i.gj, align 4, !tbaa !1126
  store ptr %i.co, ptr %.099, align 8, !tbaa !1130
  %i.gk = getelementptr inbounds nuw i8, ptr %.099, i64 17 ; 2 uses
end_hunk_0
