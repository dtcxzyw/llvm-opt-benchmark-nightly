inline.NumInlined: 305
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@opj_t1_clbl_decode_processor:bb.a
bb.kp:                                            ; preds = %bb.ko, %opj_t1_decode_cblk.exit
  %.0244 = phi i32 [ %i.bel, %bb.ko ], [ %i.bdu, %opj_t1_decode_cblk.exit ] ; 2 uses
  %i.bem = and i32 %i.beb, 2
  %.not274 = icmp eq i32 %i.bem, 0
  br i1 %.not274, label %bb.kr, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.ben = load ptr, ptr %i.al, align 8, !tbaa !29
  %i.beo = add i32 %i.ae, -1
  %i.bep = zext i32 %i.beo to i64
  %i.beq = getelementptr inbounds nuw [192 x i8], ptr %i.ben, i64 %i.bep ; 2 uses
  %i.ber = getelementptr inbounds nuw i8, ptr %i.beq, i64 12
  %i.bes = load i32, ptr %i.ber, align 4, !tbaa !158
  %i.bet = getelementptr inbounds nuw i8, ptr %i.beq, i64 4
  %i.beu = load i32, ptr %i.bet, align 4, !tbaa !159
  %i.bev = add i32 %i.bes, %i.bdz
  %i.bew = sub i32 %i.bev, %i.beu
  br label %bb.kr

bb.kr:                                            ; preds = %bb.kq, %bb.kp
  %.0245 = phi i32 [ %i.bew, %bb.kq ], [ %i.bdz, %bb.kp ] ; 2 uses
  %i.bex = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.bey = load ptr, ptr %i.bex, align 8, !tbaa !49 ; 2 uses
  %.not275 = icmp eq ptr %i.bey, null             ; 2 uses
  br i1 %.not275, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  %i.bez = getelementptr inbounds nuw i8, ptr %.0254, i64 216
  %i.bfa = load ptr, ptr %i.bez, align 8, !tbaa !15
  br label %bb.kt

bb.kt:                                            ; preds = %bb.kr, %bb.ks
  %i.bfb = phi ptr [ %i.bfa, %bb.ks ], [ %i.bey, %bb.kr ] ; 21 uses
  %i.bfc = ptrtoaddr ptr %i.bfb to i64
  %i.bfd = getelementptr inbounds nuw i8, ptr %.0254, i64 232
  %i.bfe = load i32, ptr %i.bfd, align 8, !tbaa !107 ; 19 uses
  %i.bff = getelementptr inbounds nuw i8, ptr %.0254, i64 236
  %i.bfg = load i32, ptr %i.bff, align 4, !tbaa !108 ; 8 uses
  %i.bfh = getelementptr inbounds nuw i8, ptr %i.ak, i64 808 ; 2 uses
  %i.bfi = load i32, ptr %i.bfh, align 4, !tbaa !87 ; 3 uses
  %.not276 = icmp eq i32 %i.bfi, 0
  br i1 %.not276, label %.loopexit292, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.bfj = icmp sgt i32 %i.bfi, 30
  %i.bfk = icmp ne i32 %i.bfg, 0
  %i.bfl = icmp ne i32 %i.bfe, 0
  %or.cond394 = select i1 %i.bfk, i1 %i.bfl, i1 false ; 2 uses
  br i1 %i.bfj, label %.preheader291, label %.preheader294

.preheader294:                                    ; preds = %bb.ku
  br i1 %or.cond394, label %.preheader293.preheader, label %.loopexit292

.preheader293.preheader:                          ; preds = %.preheader294
  %wide.trip.count = zext i32 %i.bfe to i64
  br label %.preheader293

.preheader291:                                    ; preds = %bb.ku
  br i1 %or.cond394, label %.preheader290.preheader, label %.loopexit292

.preheader290.preheader:                          ; preds = %.preheader291
  %wide.trip.count481 = zext i32 %i.bfe to i64    ; 6 uses
  %i.bfm = add nsw i64 %wide.trip.count481, -1    ; 2 uses
  %min.iters.check785 = icmp ult i32 %i.bfe, 12
  %i.bfn = trunc i64 %i.bfm to i32
  %i.bfo = icmp ugt i64 %i.bfm, 4294967295
  %n.vec787 = and i64 %wide.trip.count481, 4294967288 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec787, %wide.trip.count481
  %xtraiter = and i64 %wide.trip.count481, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader290

.preheader290:                                    ; preds = %.preheader290.preheader, %._crit_edge367
  %.0250368 = phi i32 [ %i.bgt, %._crit_edge367 ], [ 0, %.preheader290.preheader ] ; 3 uses
  %i.bfp = mul i32 %.0250368, %i.bfe              ; 6 uses
  br i1 %min.iters.check785, label %scalar.ph784.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader290
  %i.bfq = mul i32 %i.bfe, %.0250368
  %i.bfr = xor i32 %i.bfq, -1
  %i.bfs = icmp ult i32 %i.bfr, %i.bfn
  %i.bft = or i1 %i.bfs, %i.bfo
  br i1 %i.bft, label %scalar.ph784.preheader, label %vector.body788

vector.body788:                                   ; preds = %vector.scevcheck, %vector.body788
  %index789 = phi i64 [ %index.next790, %vector.body788 ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.bfu = trunc nuw i64 %index789 to i32
  %i.bfv = add i32 %i.bfp, %i.bfu
  %i.bfw = zext i32 %i.bfv to i64
  %i.bfx = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bfw ; 2 uses
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bfx, i64 16
  store <4 x i32> zeroinitializer, ptr %i.bfx, align 4, !tbaa !3
  store <4 x i32> zeroinitializer, ptr %i.bfy, align 4, !tbaa !3
  %index.next790 = add nuw i64 %index789, 8       ; 2 uses
  %i.bfz = icmp eq i64 %index.next790, %n.vec787
  br i1 %i.bfz, label %middle.block791, label %vector.body788, !llvm.loop !160

middle.block791:                                  ; preds = %vector.body788
  br i1 %cmp.n, label %._crit_edge367, label %scalar.ph784.preheader

scalar.ph784.preheader:                           ; preds = %vector.scevcheck, %.preheader290, %middle.block791
  %indvars.iv478.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader290 ], [ %n.vec787, %middle.block791 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph784.prol.loopexit, label %scalar.ph784.prol

scalar.ph784.prol:                                ; preds = %scalar.ph784.preheader, %scalar.ph784.prol
  %indvars.iv478.prol = phi i64 [ %indvars.iv.next479.prol, %scalar.ph784.prol ], [ %indvars.iv478.ph, %scalar.ph784.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph784.prol ], [ 0, %scalar.ph784.preheader ]
  %i.bga = trunc nuw i64 %indvars.iv478.prol to i32
  %i.bgb = add i32 %i.bfp, %i.bga
  %i.bgc = zext i32 %i.bgb to i64
  %i.bgd = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgc
  store i32 0, ptr %i.bgd, align 4, !tbaa !3
  %indvars.iv.next479.prol = add nuw nsw i64 %indvars.iv478.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph784.prol.loopexit, label %scalar.ph784.prol, !llvm.loop !161

scalar.ph784.prol.loopexit:                       ; preds = %scalar.ph784.prol, %scalar.ph784.preheader
  %indvars.iv478.unr = phi i64 [ %indvars.iv478.ph, %scalar.ph784.preheader ], [ %indvars.iv.next479.prol, %scalar.ph784.prol ]
  %i.bge = sub nsw i64 %indvars.iv478.ph, %wide.trip.count481
  %i.bgf = icmp ugt i64 %i.bge, -4
  br i1 %i.bgf, label %._crit_edge367, label %scalar.ph784.preheader.new

scalar.ph784.preheader.new:                       ; preds = %scalar.ph784.prol.loopexit
  %invariant.op = add i32 1, %i.bfp
  %invariant.op1001 = add i32 2, %i.bfp
  %invariant.op1003 = add i32 3, %i.bfp
  br label %scalar.ph784

scalar.ph784:                                     ; preds = %scalar.ph784, %scalar.ph784.preheader.new
  %indvars.iv478 = phi i64 [ %indvars.iv478.unr, %scalar.ph784.preheader.new ], [ %indvars.iv.next479.3, %scalar.ph784 ] ; 5 uses
  %i.bgg = trunc nuw i64 %indvars.iv478 to i32
  %i.bgh = add i32 %i.bfp, %i.bgg
  %i.bgi = zext i32 %i.bgh to i64
  %i.bgj = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgi
  store i32 0, ptr %i.bgj, align 4, !tbaa !3
  %i.bgk = trunc i64 %indvars.iv478 to i32
  %.reass = add i32 %i.bgk, %invariant.op
  %i.bgl = zext i32 %.reass to i64
  %i.bgm = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgl
  store i32 0, ptr %i.bgm, align 4, !tbaa !3
  %i.bgn = trunc i64 %indvars.iv478 to i32
  %.reass1002 = add i32 %i.bgn, %invariant.op1001
  %i.bgo = zext i32 %.reass1002 to i64
  %i.bgp = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgo
  store i32 0, ptr %i.bgp, align 4, !tbaa !3
  %i.bgq = trunc i64 %indvars.iv478 to i32
  %.reass1004 = add i32 %i.bgq, %invariant.op1003
  %i.bgr = zext i32 %.reass1004 to i64
  %i.bgs = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgr
  store i32 0, ptr %i.bgs, align 4, !tbaa !3
  %indvars.iv.next479.3 = add nuw nsw i64 %indvars.iv478, 4 ; 2 uses
  %exitcond482.not.3 = icmp eq i64 %indvars.iv.next479.3, %wide.trip.count481
  br i1 %exitcond482.not.3, label %._crit_edge367, label %scalar.ph784, !llvm.loop !163

._crit_edge367:                                   ; preds = %scalar.ph784.prol.loopexit, %scalar.ph784, %middle.block791
  %i.bgt = add nuw i32 %.0250368, 1               ; 2 uses
  %exitcond483.not = icmp eq i32 %i.bgt, %i.bfg
  br i1 %exitcond483.not, label %.loopexit292, label %.preheader290, !llvm.loop !164

.preheader293:                                    ; preds = %.preheader293.preheader, %._crit_edge
  %.1251365 = phi i32 [ %i.bhg, %._crit_edge ], [ 0, %.preheader293.preheader ] ; 2 uses
  %i.bgu = mul i32 %.1251365, %i.bfe
  br label %bb.kv

bb.kv:                                            ; preds = %.preheader293, %bb.kx
  %indvars.iv = phi i64 [ 0, %.preheader293 ], [ %indvars.iv.next, %bb.kx ] ; 2 uses
  %i.bgv = trunc nuw i64 %indvars.iv to i32
  %i.bgw = add i32 %i.bgu, %i.bgv
  %i.bgx = zext i32 %i.bgw to i64
  %i.bgy = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgx ; 2 uses
  %i.bgz = load i32, ptr %i.bgy, align 4, !tbaa !3 ; 2 uses
  %i.bha = tail call i32 @llvm.abs.i32(i32 %i.bgz, i1 true) ; 2 uses
  %.highbits = lshr i32 %i.bha, %i.bfi
  %.not277 = icmp eq i32 %.highbits, 0
  br i1 %.not277, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.bhb = load i32, ptr %i.bfh, align 4, !tbaa !87
  %i.bhc = lshr i32 %i.bha, %i.bhb                ; 2 uses
  %i.bhd = icmp slt i32 %i.bgz, 0
  %i.bhe = sub nsw i32 0, %i.bhc
  %i.bhf = select i1 %i.bhd, i32 %i.bhe, i32 %i.bhc
  store i32 %i.bhf, ptr %i.bgy, align 4, !tbaa !3
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %bb.kv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.kv, !llvm.loop !165

._crit_edge:                                      ; preds = %bb.kx
  %i.bhg = add nuw i32 %.1251365, 1               ; 2 uses
  %exitcond477.not = icmp eq i32 %i.bhg, %i.bfg
  br i1 %exitcond477.not, label %.loopexit292, label %.preheader293, !llvm.loop !166

.loopexit292:                                     ; preds = %._crit_edge, %._crit_edge367, %.preheader294, %.preheader291, %bb.kt
  br i1 %.not275, label %bb.la, label %bb.ky

bb.ky:                                            ; preds = %.loopexit292
  %i.bhh = mul i32 %i.bfg, %i.bfe                 ; 9 uses
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bhj = load i32, ptr %i.bhi, align 4, !tbaa !167
  %i.bhk = icmp eq i32 %i.bhj, 1
  br i1 %i.bhk, label %.preheader286, label %bb.kz

.preheader286:                                    ; preds = %bb.ky
  %.not397 = icmp eq i32 %i.bhh, 0
  br i1 %.not397, label %.loopexit, label %.lr.ph377.preheader

.lr.ph377.preheader:                              ; preds = %.preheader286
  %wide.trip.count488 = zext i32 %i.bhh to i64    ; 3 uses
  %min.iters.check806 = icmp ult i32 %i.bhh, 8
  br i1 %min.iters.check806, label %.lr.ph377.preheader850, label %vector.ph807

vector.ph807:                                     ; preds = %.lr.ph377.preheader
  %n.vec808 = and i64 %wide.trip.count488, 4294967288 ; 3 uses
  br label %vector.body809

vector.body809:                                   ; preds = %vector.body809, %vector.ph807
  %index810 = phi i64 [ 0, %vector.ph807 ], [ %index.next813, %vector.body809 ] ; 2 uses
  %i.bhl = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %index810 ; 3 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhl, i64 16 ; 2 uses
  %wide.load811 = load <4 x i32>, ptr %i.bhl, align 4, !tbaa !3
  %wide.load812 = load <4 x i32>, ptr %i.bhm, align 4, !tbaa !3
  %i.bhn = sdiv <4 x i32> %wide.load811, splat (i32 2)
  %i.bho = sdiv <4 x i32> %wide.load812, splat (i32 2)
  store <4 x i32> %i.bhn, ptr %i.bhl, align 4, !tbaa !3
  store <4 x i32> %i.bho, ptr %i.bhm, align 4, !tbaa !3
  %index.next813 = add nuw i64 %index810, 8       ; 2 uses
  %i.bhp = icmp eq i64 %index.next813, %n.vec808
  br i1 %i.bhp, label %middle.block814, label %vector.body809, !llvm.loop !168

middle.block814:                                  ; preds = %vector.body809
  %cmp.n815 = icmp eq i64 %n.vec808, %wide.trip.count488
  br i1 %cmp.n815, label %.loopexit, label %.lr.ph377.preheader850

.lr.ph377.preheader850:                           ; preds = %.lr.ph377.preheader, %middle.block814
  %indvars.iv485.ph = phi i64 [ 0, %.lr.ph377.preheader ], [ %n.vec808, %middle.block814 ]
  br label %.lr.ph377

.lr.ph377:                                        ; preds = %.lr.ph377.preheader850, %.lr.ph377
  %indvars.iv485 = phi i64 [ %indvars.iv.next486, %.lr.ph377 ], [ %indvars.iv485.ph, %.lr.ph377.preheader850 ] ; 2 uses
  %i.bhq = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %indvars.iv485 ; 2 uses
  %i.bhr = load i32, ptr %i.bhq, align 4, !tbaa !3
  %i.bhs = sdiv i32 %i.bhr, 2
  store i32 %i.bhs, ptr %i.bhq, align 4, !tbaa !3
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1 ; 2 uses
  %exitcond489.not = icmp eq i64 %indvars.iv.next486, %wide.trip.count488
  br i1 %exitcond489.not, label %.loopexit, label %.lr.ph377, !llvm.loop !169

bb.kz:                                            ; preds = %bb.ky
  %i.bht = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.bhu = load float, ptr %i.bht, align 8, !tbaa !170
  %i.bhv = fmul float %i.bhu, 5.000000e-01        ; 3 uses
  %i.bhw = insertelement <4 x float> poison, float %i.bhv, i64 0
  %i.bhx = shufflevector <4 x float> %i.bhw, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bhy = and i32 %i.bhh, -16                    ; 2 uses
  %.not396 = icmp eq i32 %i.bhy, 0
  br i1 %.not396, label %.preheader288, label %.lr.ph

.preheader288.loopexit:                           ; preds = %.lr.ph
  %i.bhz = and i32 %i.bhh, -16
  br label %.preheader288

.preheader288:                                    ; preds = %.preheader288.loopexit, %bb.kz
  %.3249.lcssa = phi i32 [ 0, %bb.kz ], [ %i.bhz, %.preheader288.loopexit ] ; 3 uses
  %.0.lcssa = phi ptr [ %i.bfb, %bb.kz ], [ %i.bjg, %.preheader288.loopexit ] ; 3 uses
  %i.bia = icmp ult i32 %.3249.lcssa, %i.bhh
  br i1 %i.bia, label %.lr.ph375.preheader, label %.loopexit

.lr.ph375.preheader:                              ; preds = %.preheader288
  %i.bib = and i32 %i.bhh, -16
  %2 = xor i32 %i.bib, -1
  %i.bic = add i32 %i.bhh, %2                     ; 2 uses
  %i.bid = zext i32 %i.bic to i64
  %i.bie = add nuw nsw i64 %i.bid, 1              ; 2 uses
  %min.iters.check794 = icmp ult i32 %i.bic, 7
  br i1 %min.iters.check794, label %.lr.ph375.preheader852, label %vector.ph795

vector.ph795:                                     ; preds = %.lr.ph375.preheader
  %n.vec796 = and i64 %i.bie, 8589934584          ; 4 uses
  %i.bif = shl nuw nsw i64 %n.vec796, 2
  %i.big = getelementptr i8, ptr %.0.lcssa, i64 %i.bif
  %i.bih = trunc i64 %n.vec796 to i32
  %i.bii = add i32 %.3249.lcssa, %i.bih
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bhv, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body797

vector.body797:                                   ; preds = %vector.body797, %vector.ph795
  %index798 = phi i64 [ 0, %vector.ph795 ], [ %index.next800, %vector.body797 ] ; 2 uses
  %i.bij = shl i64 %index798, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.bij ; 4 uses
  %i.bik = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3
  %wide.load799 = load <4 x i32>, ptr %i.bik, align 4, !tbaa !3
  %i.bil = sitofp <4 x i32> %wide.load to <4 x float>
  %i.bim = sitofp <4 x i32> %wide.load799 to <4 x float>
  %i.bin = fmul <4 x float> %broadcast.splat, %i.bil
  %i.bio = fmul <4 x float> %broadcast.splat, %i.bim
  %i.bip = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %i.bin, ptr %next.gep, align 4
  store <4 x float> %i.bio, ptr %i.bip, align 4
  %index.next800 = add nuw i64 %index798, 8       ; 2 uses
  %i.biq = icmp eq i64 %index.next800, %n.vec796
  br i1 %i.biq, label %middle.block801, label %vector.body797, !llvm.loop !171

middle.block801:                                  ; preds = %vector.body797
  %cmp.n802 = icmp eq i64 %i.bie, %n.vec796
  br i1 %cmp.n802, label %.loopexit, label %.lr.ph375.preheader852

.lr.ph375.preheader852:                           ; preds = %.lr.ph375.preheader, %middle.block801
  %.1374.ph = phi ptr [ %.0.lcssa, %.lr.ph375.preheader ], [ %i.big, %middle.block801 ]
  %.4373.ph = phi i32 [ %.3249.lcssa, %.lr.ph375.preheader ], [ %i.bii, %middle.block801 ]
  br label %.lr.ph375

.lr.ph:                                           ; preds = %bb.kz, %.lr.ph
  %.0370 = phi ptr [ %i.bjg, %.lr.ph ], [ %i.bfb, %bb.kz ] ; 6 uses
  %.3249369 = phi i32 [ %i.bjh, %.lr.ph ], [ 0, %bb.kz ]
  %i.bir = load <4 x i32>, ptr %.0370, align 16, !tbaa !48
  %i.bis = sitofp <4 x i32> %i.bir to <4 x float>
  %i.bit = getelementptr inbounds nuw i8, ptr %.0370, i64 16 ; 2 uses
  %i.biu = load <4 x i32>, ptr %i.bit, align 16, !tbaa !48
  %i.biv = sitofp <4 x i32> %i.biu to <4 x float>
  %i.biw = getelementptr inbounds nuw i8, ptr %.0370, i64 32 ; 2 uses
  %i.bix = load <4 x i32>, ptr %i.biw, align 16, !tbaa !48
  %i.biy = sitofp <4 x i32> %i.bix to <4 x float>
  %i.biz = getelementptr inbounds nuw i8, ptr %.0370, i64 48 ; 2 uses
  %i.bja = load <4 x i32>, ptr %i.biz, align 16, !tbaa !48
  %i.bjb = sitofp <4 x i32> %i.bja to <4 x float>
  %i.bjc = fmul <4 x float> %i.bhx, %i.bis
  store <4 x float> %i.bjc, ptr %.0370, align 16, !tbaa !48
  %i.bjd = fmul <4 x float> %i.bhx, %i.biv
  store <4 x float> %i.bjd, ptr %i.bit, align 16, !tbaa !48
  %i.bje = fmul <4 x float> %i.bhx, %i.biy
  store <4 x float> %i.bje, ptr %i.biw, align 16, !tbaa !48
  %i.bjf = fmul <4 x float> %i.bhx, %i.bjb
  store <4 x float> %i.bjf, ptr %i.biz, align 16, !tbaa !48
  %i.bjg = getelementptr inbounds nuw i8, ptr %.0370, i64 64 ; 2 uses
  %i.bjh = add nuw i32 %.3249369, 16              ; 2 uses
  %i.bji = icmp ult i32 %i.bjh, %i.bhy
  br i1 %i.bji, label %.lr.ph, label %.preheader288.loopexit, !llvm.loop !172

.lr.ph375:                                        ; preds = %.lr.ph375.preheader852, %.lr.ph375
  %.1374 = phi ptr [ %i.bjm, %.lr.ph375 ], [ %.1374.ph, %.lr.ph375.preheader852 ] ; 3 uses
  %.4373 = phi i32 [ %i.bjn, %.lr.ph375 ], [ %.4373.ph, %.lr.ph375.preheader852 ]
  %i.bjj = load i32, ptr %.1374, align 4, !tbaa !3
  %i.bjk = sitofp i32 %i.bjj to float
  %i.bjl = fmul float %i.bhv, %i.bjk
  store float %i.bjl, ptr %.1374, align 4
  %i.bjm = getelementptr inbounds nuw i8, ptr %.1374, i64 4
  %i.bjn = add nuw i32 %.4373, 1                  ; 2 uses
  %exitcond484.not = icmp eq i32 %i.bjn, %i.bhh
  br i1 %exitcond484.not, label %.loopexit, label %.lr.ph375, !llvm.loop !173

bb.la:                                            ; preds = %.loopexit292
  %i.bjo = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bjp = load i32, ptr %i.bjo, align 4, !tbaa !167
  %i.bjq = icmp eq i32 %i.bjp, 1
  %i.bjr = zext i32 %i.av to i64                  ; 7 uses
  br i1 %i.bjq, label %bb.lb, label %bb.ld

bb.lb:                                            ; preds = %bb.la
  %i.bjs = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.bjt = load ptr, ptr %i.bjs, align 8, !tbaa !174 ; 2 uses
  %i.bju = sext i32 %.0245 to i64                 ; 2 uses
  %i.bjv = mul nsw i64 %i.bju, %i.bjr
  %i.bjw = sext i32 %.0244 to i64                 ; 2 uses
  %i.bjx = getelementptr [4 x i8], ptr %i.bjt, i64 %i.bjv
  %i.bjy = getelementptr [4 x i8], ptr %i.bjx, i64 %i.bjw ; 2 uses
  %.not398 = icmp eq i32 %i.bfg, 0
  br i1 %.not398, label %.loopexit, label %.preheader283.lr.ph

.preheader283.lr.ph:                              ; preds = %bb.lb
  %i.bjz = ptrtoaddr ptr %i.bjt to i64
  %i.bka = and i32 %i.bfe, -4                     ; 2 uses
  %.not399 = icmp eq i32 %i.bka, 0
  %i.bkb = zext i32 %i.bka to i64
  %wide.trip.count503 = zext i32 %i.bfg to i64
  %wide.trip.count498 = zext i32 %i.bfe to i64    ; 5 uses
  %i.bkc = mul nsw i64 %i.bju, %i.bjr
  %i.bkd = add i64 %i.bkc, %i.bjw
  %i.bke = shl i64 %i.bkd, 2
  %i.bkf = add i64 %i.bke, %i.bjz
  %i.bkg = sub i64 %i.bkf, %i.bfc
  %i.bkh = shl nuw nsw i64 %i.bjr, 2
  %i.bki = add nsw i64 %wide.trip.count498, -1
  br label %.preheader283

.preheader283:                                    ; preds = %.preheader283.lr.ph, %._crit_edge392
  %indvars.iv500 = phi i64 [ 0, %.preheader283.lr.ph ], [ %indvars.iv.next501, %._crit_edge392 ] ; 8 uses
  %i.bkj = mul i64 %i.bkh, %indvars.iv500
  %i.bkk = add i64 %i.bkg, %i.bkj
  %i.bkl = trunc i64 %indvars.iv500 to i32
  %i.bkm = mul i32 %i.bfe, %i.bkl
  %i.bkn = trunc i64 %indvars.iv500 to i32
  %i.bko = mul i32 %i.bfe, %i.bkn
  br i1 %.not399, label %.preheader, label %.lr.ph388

.lr.ph388:                                        ; preds = %.preheader283
  %i.bkp = trunc nuw i64 %indvars.iv500 to i32
  %i.bkq = mul i32 %i.bfe, %i.bkp
  %i.bkr = mul nuw i64 %indvars.iv500, %i.bjr
  %i.bks = getelementptr inbounds nuw [4 x i8], ptr %i.bjy, i64 %i.bkr
  br label %bb.lc

.preheader.loopexit:                              ; preds = %bb.lc
  %i.bkt = trunc nuw i64 %indvars.iv.next493 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader283
  %.5.lcssa = phi i32 [ 0, %.preheader283 ], [ %i.bkt, %.preheader.loopexit ] ; 4 uses
  %i.bku = icmp ult i32 %.5.lcssa, %i.bfe
  br i1 %i.bku, label %.lr.ph391, label %._crit_edge392

.lr.ph391:                                        ; preds = %.preheader
  %i.bkv = trunc nuw i64 %indvars.iv500 to i32
  %i.bkw = mul i32 %i.bfe, %i.bkv                 ; 4 uses
  %i.bkx = mul nuw i64 %indvars.iv500, %i.bjr
  %i.bky = getelementptr inbounds nuw [4 x i8], ptr %i.bjy, i64 %i.bkx ; 4 uses
  %i.bkz = zext i32 %.5.lcssa to i64              ; 8 uses
  %i.bla = sub nsw i64 %wide.trip.count498, %i.bkz ; 3 uses
  %min.iters.check837 = icmp ult i64 %i.bla, 12
  br i1 %min.iters.check837, label %scalar.ph836.preheader, label %vector.scevcheck835

vector.scevcheck835:                              ; preds = %.lr.ph391
  %i.blb = xor i64 %i.bkz, -1
  %i.blc = add nsw i64 %i.blb, %wide.trip.count498 ; 2 uses
  %i.bld = add i32 %.5.lcssa, %i.bko
  %i.ble = trunc i64 %i.blc to i32
  %i.blf = xor i32 %i.bld, -1
  %i.blg = icmp ult i32 %i.blf, %i.ble
  %i.blh = icmp ugt i64 %i.blc, 4294967295
  %i.bli = or i1 %i.blg, %i.blh
  br i1 %i.bli, label %scalar.ph836.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck835
  %i.blj = shl nuw nsw i64 %i.bkz, 2
  %i.blk = add i64 %i.bkk, %i.blj
  %i.bll = add i32 %.5.lcssa, %i.bkm
  %i.blm = zext i32 %i.bll to i64
  %i.bln = shl nuw nsw i64 %i.blm, 2
  %i.blo = sub i64 %i.bln, %i.blk
  %diff.check = icmp ugt i64 %i.blo, -32
  br i1 %diff.check, label %scalar.ph836.preheader, label %vector.ph838

vector.ph838:                                     ; preds = %vector.memcheck
  %n.vec839 = and i64 %i.bla, -8                  ; 3 uses
  %i.blp = add nsw i64 %n.vec839, %i.bkz
  br label %vector.body840

vector.body840:                                   ; preds = %vector.body840, %vector.ph838
  %index841 = phi i64 [ 0, %vector.ph838 ], [ %index.next844, %vector.body840 ] ; 2 uses
  %i.blq = add nuw i64 %index841, %i.bkz          ; 2 uses
  %i.blr = trunc nuw i64 %i.blq to i32
  %i.bls = add i32 %i.bkw, %i.blr
  %i.blt = zext i32 %i.bls to i64
  %i.blu = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.blt ; 2 uses
  %i.blv = getelementptr inbounds nuw i8, ptr %i.blu, i64 16
  %wide.load842 = load <4 x i32>, ptr %i.blu, align 4, !tbaa !3
  %wide.load843 = load <4 x i32>, ptr %i.blv, align 4, !tbaa !3
  %i.blw = sdiv <4 x i32> %wide.load842, splat (i32 2)
  %i.blx = sdiv <4 x i32> %wide.load843, splat (i32 2)
  %i.bly = getelementptr inbounds nuw [4 x i8], ptr %i.bky, i64 %i.blq ; 2 uses
  %i.blz = getelementptr inbounds nuw i8, ptr %i.bly, i64 16
  store <4 x i32> %i.blw, ptr %i.bly, align 4, !tbaa !3
  store <4 x i32> %i.blx, ptr %i.blz, align 4, !tbaa !3
  %index.next844 = add nuw i64 %index841, 8       ; 2 uses
  %i.bma = icmp eq i64 %index.next844, %n.vec839
  br i1 %i.bma, label %middle.block845, label %vector.body840, !llvm.loop !175

middle.block845:                                  ; preds = %vector.body840
  %cmp.n846 = icmp eq i64 %i.bla, %n.vec839
  br i1 %cmp.n846, label %._crit_edge392, label %scalar.ph836.preheader
end_hunk_0
