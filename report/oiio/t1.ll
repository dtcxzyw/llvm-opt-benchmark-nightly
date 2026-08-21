Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/t1?download=true
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
  %i.bfe = load i32, ptr %i.bfd, align 8, !tbaa !107 ; 16 uses
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
  %.0250368 = phi i32 [ %i.bgs, %._crit_edge367 ], [ 0, %.preheader290.preheader ] ; 2 uses
  %i.bfp = mul i32 %.0250368, %i.bfe              ; 7 uses
  br i1 %min.iters.check785, label %scalar.ph784.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader290
  %i.bfq = xor i32 %i.bfp, -1
  %i.bfr = icmp ult i32 %i.bfq, %i.bfn
  %i.bfs = or i1 %i.bfr, %i.bfo
  br i1 %i.bfs, label %scalar.ph784.preheader, label %vector.body788

vector.body788:                                   ; preds = %vector.scevcheck, %vector.body788
  %index789 = phi i64 [ %index.next790, %vector.body788 ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.bft = trunc nuw i64 %index789 to i32
  %i.bfu = add i32 %i.bfp, %i.bft
  %i.bfv = zext i32 %i.bfu to i64
  %i.bfw = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bfv ; 2 uses
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfw, i64 16
  store <4 x i32> zeroinitializer, ptr %i.bfw, align 4, !tbaa !3
  store <4 x i32> zeroinitializer, ptr %i.bfx, align 4, !tbaa !3
  %index.next790 = add nuw i64 %index789, 8       ; 2 uses
  %i.bfy = icmp eq i64 %index.next790, %n.vec787
  br i1 %i.bfy, label %middle.block791, label %vector.body788, !llvm.loop !160

middle.block791:                                  ; preds = %vector.body788
  br i1 %cmp.n, label %._crit_edge367, label %scalar.ph784.preheader

scalar.ph784.preheader:                           ; preds = %vector.scevcheck, %.preheader290, %middle.block791
  %indvars.iv478.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader290 ], [ %n.vec787, %middle.block791 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph784.prol.loopexit, label %scalar.ph784.prol

scalar.ph784.prol:                                ; preds = %scalar.ph784.preheader, %scalar.ph784.prol
  %indvars.iv478.prol = phi i64 [ %indvars.iv.next479.prol, %scalar.ph784.prol ], [ %indvars.iv478.ph, %scalar.ph784.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph784.prol ], [ 0, %scalar.ph784.preheader ]
  %i.bfz = trunc nuw i64 %indvars.iv478.prol to i32
  %i.bga = add i32 %i.bfp, %i.bfz
  %i.bgb = zext i32 %i.bga to i64
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgb
  store i32 0, ptr %i.bgc, align 4, !tbaa !3
  %indvars.iv.next479.prol = add nuw nsw i64 %indvars.iv478.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph784.prol.loopexit, label %scalar.ph784.prol, !llvm.loop !161

scalar.ph784.prol.loopexit:                       ; preds = %scalar.ph784.prol, %scalar.ph784.preheader
  %indvars.iv478.unr = phi i64 [ %indvars.iv478.ph, %scalar.ph784.preheader ], [ %indvars.iv.next479.prol, %scalar.ph784.prol ]
  %i.bgd = sub nsw i64 %indvars.iv478.ph, %wide.trip.count481
  %i.bge = icmp ugt i64 %i.bgd, -4
  br i1 %i.bge, label %._crit_edge367, label %scalar.ph784.preheader.new

scalar.ph784.preheader.new:                       ; preds = %scalar.ph784.prol.loopexit
  %invariant.op = add i32 1, %i.bfp
  %invariant.op1001 = add i32 2, %i.bfp
  %invariant.op1003 = add i32 3, %i.bfp
  br label %scalar.ph784

scalar.ph784:                                     ; preds = %scalar.ph784, %scalar.ph784.preheader.new
  %indvars.iv478 = phi i64 [ %indvars.iv478.unr, %scalar.ph784.preheader.new ], [ %indvars.iv.next479.3, %scalar.ph784 ] ; 5 uses
  %i.bgf = trunc nuw i64 %indvars.iv478 to i32
  %i.bgg = add i32 %i.bfp, %i.bgf
  %i.bgh = zext i32 %i.bgg to i64
  %i.bgi = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgh
  store i32 0, ptr %i.bgi, align 4, !tbaa !3
  %i.bgj = trunc i64 %indvars.iv478 to i32
  %.reass = add i32 %i.bgj, %invariant.op
  %i.bgk = zext i32 %.reass to i64
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgk
  store i32 0, ptr %i.bgl, align 4, !tbaa !3
  %i.bgm = trunc i64 %indvars.iv478 to i32
  %.reass1002 = add i32 %i.bgm, %invariant.op1001
  %i.bgn = zext i32 %.reass1002 to i64
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgn
  store i32 0, ptr %i.bgo, align 4, !tbaa !3
  %i.bgp = trunc i64 %indvars.iv478 to i32
  %.reass1004 = add i32 %i.bgp, %invariant.op1003
  %i.bgq = zext i32 %.reass1004 to i64
  %i.bgr = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgq
  store i32 0, ptr %i.bgr, align 4, !tbaa !3
  %indvars.iv.next479.3 = add nuw nsw i64 %indvars.iv478, 4 ; 2 uses
  %exitcond482.not.3 = icmp eq i64 %indvars.iv.next479.3, %wide.trip.count481
  br i1 %exitcond482.not.3, label %._crit_edge367, label %scalar.ph784, !llvm.loop !163

._crit_edge367:                                   ; preds = %scalar.ph784.prol.loopexit, %scalar.ph784, %middle.block791
  %i.bgs = add nuw i32 %.0250368, 1               ; 2 uses
  %exitcond483.not = icmp eq i32 %i.bgs, %i.bfg
  br i1 %exitcond483.not, label %.loopexit292, label %.preheader290, !llvm.loop !164

.preheader293:                                    ; preds = %.preheader293.preheader, %._crit_edge
  %.1251365 = phi i32 [ %i.bhf, %._crit_edge ], [ 0, %.preheader293.preheader ] ; 2 uses
  %i.bgt = mul i32 %.1251365, %i.bfe
  br label %bb.kv

bb.kv:                                            ; preds = %.preheader293, %bb.kx
  %indvars.iv = phi i64 [ 0, %.preheader293 ], [ %indvars.iv.next, %bb.kx ] ; 2 uses
  %i.bgu = trunc nuw i64 %indvars.iv to i32
  %i.bgv = add i32 %i.bgt, %i.bgu
  %i.bgw = zext i32 %i.bgv to i64
  %i.bgx = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.bgw ; 2 uses
  %i.bgy = load i32, ptr %i.bgx, align 4, !tbaa !3 ; 2 uses
  %i.bgz = tail call i32 @llvm.abs.i32(i32 %i.bgy, i1 true) ; 2 uses
  %.highbits = lshr i32 %i.bgz, %i.bfi
  %.not277 = icmp eq i32 %.highbits, 0
  br i1 %.not277, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.bha = load i32, ptr %i.bfh, align 4, !tbaa !87
  %i.bhb = lshr i32 %i.bgz, %i.bha                ; 2 uses
  %i.bhc = icmp slt i32 %i.bgy, 0
  %i.bhd = sub nsw i32 0, %i.bhb
  %i.bhe = select i1 %i.bhc, i32 %i.bhd, i32 %i.bhb
  store i32 %i.bhe, ptr %i.bgx, align 4, !tbaa !3
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %bb.kv
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.kv, !llvm.loop !165

._crit_edge:                                      ; preds = %bb.kx
  %i.bhf = add nuw i32 %.1251365, 1               ; 2 uses
  %exitcond477.not = icmp eq i32 %i.bhf, %i.bfg
  br i1 %exitcond477.not, label %.loopexit292, label %.preheader293, !llvm.loop !166

.loopexit292:                                     ; preds = %._crit_edge, %._crit_edge367, %.preheader294, %.preheader291, %bb.kt
  br i1 %.not275, label %bb.la, label %bb.ky

bb.ky:                                            ; preds = %.loopexit292
  %i.bhg = mul i32 %i.bfg, %i.bfe                 ; 8 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bhi = load i32, ptr %i.bhh, align 4, !tbaa !167
  %i.bhj = icmp eq i32 %i.bhi, 1
  br i1 %i.bhj, label %.preheader286, label %bb.kz

.preheader286:                                    ; preds = %bb.ky
  %.not397 = icmp eq i32 %i.bhg, 0
  br i1 %.not397, label %.loopexit, label %.lr.ph377.preheader

.lr.ph377.preheader:                              ; preds = %.preheader286
  %wide.trip.count488 = zext i32 %i.bhg to i64    ; 3 uses
  %min.iters.check806 = icmp ult i32 %i.bhg, 8
  br i1 %min.iters.check806, label %.lr.ph377.preheader850, label %vector.ph807

vector.ph807:                                     ; preds = %.lr.ph377.preheader
  %n.vec808 = and i64 %wide.trip.count488, 4294967288 ; 3 uses
  br label %vector.body809

vector.body809:                                   ; preds = %vector.body809, %vector.ph807
  %index810 = phi i64 [ 0, %vector.ph807 ], [ %index.next813, %vector.body809 ] ; 2 uses
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %index810 ; 3 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 16 ; 2 uses
  %wide.load811 = load <4 x i32>, ptr %i.bhk, align 4, !tbaa !3
  %wide.load812 = load <4 x i32>, ptr %i.bhl, align 4, !tbaa !3
  %i.bhm = sdiv <4 x i32> %wide.load811, splat (i32 2)
  %i.bhn = sdiv <4 x i32> %wide.load812, splat (i32 2)
  store <4 x i32> %i.bhm, ptr %i.bhk, align 4, !tbaa !3
  store <4 x i32> %i.bhn, ptr %i.bhl, align 4, !tbaa !3
  %index.next813 = add nuw i64 %index810, 8       ; 2 uses
  %i.bho = icmp eq i64 %index.next813, %n.vec808
  br i1 %i.bho, label %middle.block814, label %vector.body809, !llvm.loop !168

middle.block814:                                  ; preds = %vector.body809
  %cmp.n815 = icmp eq i64 %n.vec808, %wide.trip.count488
  br i1 %cmp.n815, label %.loopexit, label %.lr.ph377.preheader850

.lr.ph377.preheader850:                           ; preds = %.lr.ph377.preheader, %middle.block814
  %indvars.iv485.ph = phi i64 [ 0, %.lr.ph377.preheader ], [ %n.vec808, %middle.block814 ]
  br label %.lr.ph377

.lr.ph377:                                        ; preds = %.lr.ph377.preheader850, %.lr.ph377
  %indvars.iv485 = phi i64 [ %indvars.iv.next486, %.lr.ph377 ], [ %indvars.iv485.ph, %.lr.ph377.preheader850 ] ; 2 uses
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %indvars.iv485 ; 2 uses
  %i.bhq = load i32, ptr %i.bhp, align 4, !tbaa !3
  %i.bhr = sdiv i32 %i.bhq, 2
  store i32 %i.bhr, ptr %i.bhp, align 4, !tbaa !3
  %indvars.iv.next486 = add nuw nsw i64 %indvars.iv485, 1 ; 2 uses
  %exitcond489.not = icmp eq i64 %indvars.iv.next486, %wide.trip.count488
  br i1 %exitcond489.not, label %.loopexit, label %.lr.ph377, !llvm.loop !169

bb.kz:                                            ; preds = %bb.ky
  %i.bhs = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.bht = load float, ptr %i.bhs, align 8, !tbaa !170
  %i.bhu = fmul float %i.bht, 5.000000e-01        ; 3 uses
  %i.bhv = insertelement <4 x float> poison, float %i.bhu, i64 0
  %i.bhw = shufflevector <4 x float> %i.bhv, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.bhx = and i32 %i.bhg, -16                    ; 3 uses
  %.not396 = icmp eq i32 %i.bhx, 0
  br i1 %.not396, label %.preheader288, label %.lr.ph

.preheader288.loopexit:                           ; preds = %.lr.ph
  %i.bhy = and i32 %i.bhg, -16
  br label %.preheader288

.preheader288:                                    ; preds = %.preheader288.loopexit, %bb.kz
  %.3249.lcssa = phi i32 [ 0, %bb.kz ], [ %i.bhy, %.preheader288.loopexit ] ; 3 uses
  %.0243.lcssa = phi ptr [ %i.bfb, %bb.kz ], [ %i.bjf, %.preheader288.loopexit ] ; 3 uses
  %i.bhz = icmp ult i32 %.3249.lcssa, %i.bhg
  br i1 %i.bhz, label %.lr.ph375.preheader, label %.loopexit

.lr.ph375.preheader:                              ; preds = %.preheader288
  %i.bia = xor i32 %i.bhx, -1
  %i.bib = add i32 %i.bhg, %i.bia                 ; 2 uses
  %i.bic = zext i32 %i.bib to i64
  %i.bid = add nuw nsw i64 %i.bic, 1              ; 2 uses
  %min.iters.check794 = icmp ult i32 %i.bib, 7
  br i1 %min.iters.check794, label %.lr.ph375.preheader852, label %vector.ph795

vector.ph795:                                     ; preds = %.lr.ph375.preheader
  %n.vec796 = and i64 %i.bid, 8589934584          ; 4 uses
  %i.bie = shl nuw nsw i64 %n.vec796, 2
  %i.bif = getelementptr i8, ptr %.0243.lcssa, i64 %i.bie
  %i.big = trunc i64 %n.vec796 to i32
  %i.bih = add i32 %.3249.lcssa, %i.big
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bhu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body797

vector.body797:                                   ; preds = %vector.body797, %vector.ph795
  %index798 = phi i64 [ 0, %vector.ph795 ], [ %index.next800, %vector.body797 ] ; 2 uses
  %i.bii = shl i64 %index798, 2
  %next.gep = getelementptr i8, ptr %.0243.lcssa, i64 %i.bii ; 4 uses
  %i.bij = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3
  %wide.load799 = load <4 x i32>, ptr %i.bij, align 4, !tbaa !3
  %i.bik = sitofp <4 x i32> %wide.load to <4 x float>
  %i.bil = sitofp <4 x i32> %wide.load799 to <4 x float>
  %i.bim = fmul <4 x float> %broadcast.splat, %i.bik
  %i.bin = fmul <4 x float> %broadcast.splat, %i.bil
  %i.bio = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %i.bim, ptr %next.gep, align 4
  store <4 x float> %i.bin, ptr %i.bio, align 4
  %index.next800 = add nuw i64 %index798, 8       ; 2 uses
  %i.bip = icmp eq i64 %index.next800, %n.vec796
  br i1 %i.bip, label %middle.block801, label %vector.body797, !llvm.loop !171

middle.block801:                                  ; preds = %vector.body797
  %cmp.n802 = icmp eq i64 %i.bid, %n.vec796
  br i1 %cmp.n802, label %.loopexit, label %.lr.ph375.preheader852

.lr.ph375.preheader852:                           ; preds = %.lr.ph375.preheader, %middle.block801
  %.1374.ph = phi ptr [ %.0243.lcssa, %.lr.ph375.preheader ], [ %i.bif, %middle.block801 ]
  %.4373.ph = phi i32 [ %.3249.lcssa, %.lr.ph375.preheader ], [ %i.bih, %middle.block801 ]
  br label %.lr.ph375

.lr.ph:                                           ; preds = %bb.kz, %.lr.ph
  %.0243370 = phi ptr [ %i.bjf, %.lr.ph ], [ %i.bfb, %bb.kz ] ; 6 uses
  %.3249369 = phi i32 [ %i.bjg, %.lr.ph ], [ 0, %bb.kz ]
  %i.biq = load <4 x i32>, ptr %.0243370, align 16, !tbaa !48
  %i.bir = sitofp <4 x i32> %i.biq to <4 x float>
  %i.bis = getelementptr inbounds nuw i8, ptr %.0243370, i64 16 ; 2 uses
  %i.bit = load <4 x i32>, ptr %i.bis, align 16, !tbaa !48
  %i.biu = sitofp <4 x i32> %i.bit to <4 x float>
  %i.biv = getelementptr inbounds nuw i8, ptr %.0243370, i64 32 ; 2 uses
  %i.biw = load <4 x i32>, ptr %i.biv, align 16, !tbaa !48
  %i.bix = sitofp <4 x i32> %i.biw to <4 x float>
  %i.biy = getelementptr inbounds nuw i8, ptr %.0243370, i64 48 ; 2 uses
  %i.biz = load <4 x i32>, ptr %i.biy, align 16, !tbaa !48
  %i.bja = sitofp <4 x i32> %i.biz to <4 x float>
  %i.bjb = fmul <4 x float> %i.bhw, %i.bir
  store <4 x float> %i.bjb, ptr %.0243370, align 16, !tbaa !48
  %i.bjc = fmul <4 x float> %i.bhw, %i.biu
  store <4 x float> %i.bjc, ptr %i.bis, align 16, !tbaa !48
  %i.bjd = fmul <4 x float> %i.bhw, %i.bix
  store <4 x float> %i.bjd, ptr %i.biv, align 16, !tbaa !48
  %i.bje = fmul <4 x float> %i.bhw, %i.bja
  store <4 x float> %i.bje, ptr %i.biy, align 16, !tbaa !48
  %i.bjf = getelementptr inbounds nuw i8, ptr %.0243370, i64 64 ; 2 uses
  %i.bjg = add nuw i32 %.3249369, 16              ; 2 uses
  %i.bjh = icmp ult i32 %i.bjg, %i.bhx
  br i1 %i.bjh, label %.lr.ph, label %.preheader288.loopexit, !llvm.loop !172

.lr.ph375:                                        ; preds = %.lr.ph375.preheader852, %.lr.ph375
  %.1374 = phi ptr [ %i.bjl, %.lr.ph375 ], [ %.1374.ph, %.lr.ph375.preheader852 ] ; 3 uses
  %.4373 = phi i32 [ %i.bjm, %.lr.ph375 ], [ %.4373.ph, %.lr.ph375.preheader852 ]
  %i.bji = load i32, ptr %.1374, align 4, !tbaa !3
  %i.bjj = sitofp i32 %i.bji to float
  %i.bjk = fmul float %i.bhu, %i.bjj
  store float %i.bjk, ptr %.1374, align 4
  %i.bjl = getelementptr inbounds nuw i8, ptr %.1374, i64 4
  %i.bjm = add nuw i32 %.4373, 1                  ; 2 uses
  %exitcond484.not = icmp eq i32 %i.bjm, %i.bhg
  br i1 %exitcond484.not, label %.loopexit, label %.lr.ph375, !llvm.loop !173

bb.la:                                            ; preds = %.loopexit292
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bjo = load i32, ptr %i.bjn, align 4, !tbaa !167
  %i.bjp = icmp eq i32 %i.bjo, 1
  %i.bjq = zext i32 %i.av to i64                  ; 7 uses
  br i1 %i.bjp, label %bb.lb, label %bb.ld

bb.lb:                                            ; preds = %bb.la
  %i.bjr = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.bjs = load ptr, ptr %i.bjr, align 8, !tbaa !174 ; 2 uses
  %i.bjt = sext i32 %.0245 to i64                 ; 2 uses
  %i.bju = mul nsw i64 %i.bjt, %i.bjq
  %i.bjv = sext i32 %.0244 to i64                 ; 2 uses
  %i.bjw = getelementptr [4 x i8], ptr %i.bjs, i64 %i.bju
  %i.bjx = getelementptr [4 x i8], ptr %i.bjw, i64 %i.bjv ; 2 uses
  %.not398 = icmp eq i32 %i.bfg, 0
  br i1 %.not398, label %.loopexit, label %.preheader283.lr.ph

.preheader283.lr.ph:                              ; preds = %bb.lb
  %i.bjy = ptrtoaddr ptr %i.bjs to i64
  %i.bjz = and i32 %i.bfe, -4                     ; 2 uses
  %.not399 = icmp eq i32 %i.bjz, 0
  %i.bka = zext i32 %i.bjz to i64
  %wide.trip.count503 = zext i32 %i.bfg to i64
  %wide.trip.count498 = zext i32 %i.bfe to i64    ; 5 uses
  %i.bkb = mul nsw i64 %i.bjt, %i.bjq
  %i.bkc = add i64 %i.bkb, %i.bjv
  %i.bkd = shl i64 %i.bkc, 2
  %i.bke = add i64 %i.bkd, %i.bjy
  %i.bkf = sub i64 %i.bke, %i.bfc
  %i.bkg = shl nuw nsw i64 %i.bjq, 2
  %i.bkh = add nsw i64 %wide.trip.count498, -1
  br label %.preheader283

.preheader283:                                    ; preds = %.preheader283.lr.ph, %._crit_edge392
  %indvars.iv500 = phi i64 [ 0, %.preheader283.lr.ph ], [ %indvars.iv.next501, %._crit_edge392 ] ; 6 uses
  %i.bki = mul i64 %i.bkg, %indvars.iv500
  %i.bkj = add i64 %i.bkf, %i.bki
  br i1 %.not399, label %.preheader, label %.lr.ph388

.lr.ph388:                                        ; preds = %.preheader283
  %i.bkk = trunc nuw i64 %indvars.iv500 to i32
  %i.bkl = mul i32 %i.bfe, %i.bkk
  %i.bkm = mul nuw i64 %indvars.iv500, %i.bjq
  %i.bkn = getelementptr inbounds nuw [4 x i8], ptr %i.bjx, i64 %i.bkm
  br label %bb.lc

.preheader.loopexit:                              ; preds = %bb.lc
  %i.bko = trunc nuw i64 %indvars.iv.next493 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader283
  %.5.lcssa = phi i32 [ 0, %.preheader283 ], [ %i.bko, %.preheader.loopexit ] ; 4 uses
  %i.bkp = icmp ult i32 %.5.lcssa, %i.bfe
  br i1 %i.bkp, label %.lr.ph391, label %._crit_edge392

.lr.ph391:                                        ; preds = %.preheader
  %i.bkq = trunc nuw i64 %indvars.iv500 to i32
  %i.bkr = mul i32 %i.bfe, %i.bkq                 ; 6 uses
  %i.bks = mul nuw i64 %indvars.iv500, %i.bjq
  %i.bkt = getelementptr inbounds nuw [4 x i8], ptr %i.bjx, i64 %i.bks ; 4 uses
  %i.bku = zext i32 %.5.lcssa to i64              ; 8 uses
  %i.bkv = sub nsw i64 %wide.trip.count498, %i.bku ; 3 uses
  %min.iters.check837 = icmp ult i64 %i.bkv, 12
  br i1 %min.iters.check837, label %scalar.ph836.preheader, label %vector.scevcheck835

vector.scevcheck835:                              ; preds = %.lr.ph391
  %i.bkw = xor i64 %i.bku, -1
  %i.bkx = add nsw i64 %i.bkw, %wide.trip.count498 ; 2 uses
  %i.bky = add i32 %.5.lcssa, %i.bkr
  %i.bkz = trunc i64 %i.bkx to i32
  %i.bla = xor i32 %i.bky, -1
  %i.blb = icmp ult i32 %i.bla, %i.bkz
  %i.blc = icmp ugt i64 %i.bkx, 4294967295
  %i.bld = or i1 %i.blb, %i.blc
  br i1 %i.bld, label %scalar.ph836.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck835
  %i.ble = shl nuw nsw i64 %i.bku, 2
  %i.blf = add i64 %i.bkj, %i.ble
  %i.blg = add i32 %.5.lcssa, %i.bkr
  %i.blh = zext i32 %i.blg to i64
  %i.bli = shl nuw nsw i64 %i.blh, 2
  %i.blj = sub i64 %i.bli, %i.blf
  %diff.check = icmp ugt i64 %i.blj, -32
  br i1 %diff.check, label %scalar.ph836.preheader, label %vector.ph838

vector.ph838:                                     ; preds = %vector.memcheck
  %n.vec839 = and i64 %i.bkv, -8                  ; 3 uses
  %i.blk = add nsw i64 %n.vec839, %i.bku
  br label %vector.body840

vector.body840:                                   ; preds = %vector.body840, %vector.ph838
  %index841 = phi i64 [ 0, %vector.ph838 ], [ %index.next844, %vector.body840 ] ; 2 uses
  %i.bll = add nuw i64 %index841, %i.bku          ; 2 uses
  %i.blm = trunc nuw i64 %i.bll to i32
  %i.bln = add i32 %i.bkr, %i.blm
  %i.blo = zext i32 %i.bln to i64
  %i.blp = getelementptr inbounds nuw [4 x i8], ptr %i.bfb, i64 %i.blo ; 2 uses
  %i.blq = getelementptr inbounds nuw i8, ptr %i.blp, i64 16
  %wide.load842 = load <4 x i32>, ptr %i.blp, align 4, !tbaa !3
  %wide.load843 = load <4 x i32>, ptr %i.blq, align 4, !tbaa !3
  %i.blr = sdiv <4 x i32> %wide.load842, splat (i32 2)
  %i.bls = sdiv <4 x i32> %wide.load843, splat (i32 2)
  %i.blt = getelementptr inbounds nuw [4 x i8], ptr %i.bkt, i64 %i.bll ; 2 uses
  %i.blu = getelementptr inbounds nuw i8, ptr %i.blt, i64 16
  store <4 x i32> %i.blr, ptr %i.blt, align 4, !tbaa !3
  store <4 x i32> %i.bls, ptr %i.blu, align 4, !tbaa !3
  %index.next844 = add nuw i64 %index841, 8       ; 2 uses
  %i.blv = icmp eq i64 %index.next844, %n.vec839
  br i1 %i.blv, label %middle.block845, label %vector.body840, !llvm.loop !175

middle.block845:                                  ; preds = %vector.body840
  %cmp.n846 = icmp eq i64 %i.bkv, %n.vec839
  br i1 %cmp.n846, label %._crit_edge392, label %scalar.ph836.preheader

scalar.ph836.preheader:                           ; preds = %vector.memcheck, %vector.scevcheck835, %.lr.ph391, %middle.block845
  %indvars.iv495.ph = phi i64 [ %i.bku, %vector.memcheck ], [ %i.bku, %vector.scevcheck835 ], [ %i.bku, %.lr.ph391 ], [ %i.blk, %middle.block845 ] ; 6 uses
end_hunk_0
