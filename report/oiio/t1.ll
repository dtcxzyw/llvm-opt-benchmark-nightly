inline.NumInlined: 305
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0_@opj_t1_clbl_decode_processor:bb.a
.preheader291:                                    ; preds = %bb.ku
  br i1 %or.cond394, label %.preheader290.preheader, label %.loopexit292

.preheader290.preheader:                          ; preds = %.preheader291
  %wide.trip.count481 = zext i32 %i.bfd to i64    ; 6 uses
  %i.bfl = add nsw i64 %wide.trip.count481, -1    ; 2 uses
  %min.iters.check785 = icmp ult i32 %i.bfd, 12
  %i.bfm = trunc i64 %i.bfl to i32
  %i.bfn = icmp ugt i64 %i.bfl, 4294967295
  %n.vec788 = and i64 %wide.trip.count481, 4294967288 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec788, %wide.trip.count481
  %xtraiter = and i64 %wide.trip.count481, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader290

.preheader290:                                    ; preds = %.preheader290.preheader, %._crit_edge367
  %.0250368 = phi i32 [ %i.bgs, %._crit_edge367 ], [ 0, %.preheader290.preheader ] ; 3 uses
  %i.bfo = mul i32 %.0250368, %i.bfd              ; 6 uses
  br i1 %min.iters.check785, label %scalar.ph784.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader290
  %i.bfp = mul i32 %i.bfd, %.0250368
  %i.bfq = xor i32 %i.bfp, -1
  %i.bfr = icmp ult i32 %i.bfq, %i.bfm
  %i.bfs = or i1 %i.bfr, %i.bfn
  br i1 %i.bfs, label %scalar.ph784.preheader, label %vector.body789

vector.body789:                                   ; preds = %vector.scevcheck, %vector.body789
  %index790 = phi i64 [ %index.next791, %vector.body789 ], [ 0, %vector.scevcheck ] ; 2 uses
  %i.bft = trunc nuw i64 %index790 to i32
  %i.bfu = add i32 %i.bfo, %i.bft
  %i.bfv = zext i32 %i.bfu to i64
  %i.bfw = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bfv ; 2 uses
  %i.bfx = getelementptr inbounds nuw i8, ptr %i.bfw, i64 16
  store <4 x i32> zeroinitializer, ptr %i.bfw, align 4, !tbaa !3
  store <4 x i32> zeroinitializer, ptr %i.bfx, align 4, !tbaa !3
  %index.next791 = add nuw i64 %index790, 8       ; 2 uses
  %i.bfy = icmp eq i64 %index.next791, %n.vec788
  br i1 %i.bfy, label %middle.block792, label %vector.body789, !llvm.loop !160

middle.block792:                                  ; preds = %vector.body789
  br i1 %cmp.n, label %._crit_edge367, label %scalar.ph784.preheader

scalar.ph784.preheader:                           ; preds = %vector.scevcheck, %.preheader290, %middle.block792
  %indvars.iv478.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader290 ], [ %n.vec788, %middle.block792 ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph784.prol.loopexit, label %scalar.ph784.prol

scalar.ph784.prol:                                ; preds = %scalar.ph784.preheader, %scalar.ph784.prol
  %indvars.iv478.prol = phi i64 [ %indvars.iv.next479.prol, %scalar.ph784.prol ], [ %indvars.iv478.ph, %scalar.ph784.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph784.prol ], [ 0, %scalar.ph784.preheader ]
  %i.bfz = trunc nuw i64 %indvars.iv478.prol to i32
  %i.bga = add i32 %i.bfo, %i.bfz
  %i.bgb = zext i32 %i.bga to i64
  %i.bgc = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bgb
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
  %invariant.op = add i32 1, %i.bfo
  %invariant.op1006 = add i32 2, %i.bfo
  %invariant.op1008 = add i32 3, %i.bfo
  br label %scalar.ph784

scalar.ph784:                                     ; preds = %scalar.ph784, %scalar.ph784.preheader.new
  %indvars.iv478 = phi i64 [ %indvars.iv478.unr, %scalar.ph784.preheader.new ], [ %indvars.iv.next479.3, %scalar.ph784 ] ; 5 uses
  %i.bgf = trunc nuw i64 %indvars.iv478 to i32
  %i.bgg = add i32 %i.bfo, %i.bgf
  %i.bgh = zext i32 %i.bgg to i64
  %i.bgi = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bgh
  store i32 0, ptr %i.bgi, align 4, !tbaa !3
  %i.bgj = trunc i64 %indvars.iv478 to i32
  %.reass = add i32 %i.bgj, %invariant.op
  %i.bgk = zext i32 %.reass to i64
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bgk
  store i32 0, ptr %i.bgl, align 4, !tbaa !3
  %i.bgm = trunc i64 %indvars.iv478 to i32
  %.reass1007 = add i32 %i.bgm, %invariant.op1006
  %i.bgn = zext i32 %.reass1007 to i64
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bgn
  store i32 0, ptr %i.bgo, align 4, !tbaa !3
  %i.bgp = trunc i64 %indvars.iv478 to i32
  %.reass1009 = add i32 %i.bgp, %invariant.op1008
  %i.bgq = zext i32 %.reass1009 to i64
  %i.bgr = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bgq
  store i32 0, ptr %i.bgr, align 4, !tbaa !3
  %indvars.iv.next479.3 = add nuw nsw i64 %indvars.iv478, 4 ; 2 uses
  %exitcond482.not.3 = icmp eq i64 %indvars.iv.next479.3, %wide.trip.count481
  br i1 %exitcond482.not.3, label %._crit_edge367, label %scalar.ph784, !llvm.loop !163

._crit_edge367:                                   ; preds = %scalar.ph784.prol.loopexit, %scalar.ph784, %middle.block792
  %i.bgs = add nuw i32 %.0250368, 1               ; 2 uses
  %exitcond483.not = icmp eq i32 %i.bgs, %i.bff
  br i1 %exitcond483.not, label %.loopexit292, label %.preheader290, !llvm.loop !164

.preheader293:                                    ; preds = %.preheader293.preheader, %._crit_edge
  %.1251365 = phi i32 [ %i.bhf, %._crit_edge ], [ 0, %.preheader293.preheader ] ; 2 uses
  %i.bgt = mul i32 %.1251365, %i.bfd
  br label %bb.kv

bb.kv:                                            ; preds = %.preheader293, %bb.kx
  %indvars.iv = phi i64 [ 0, %.preheader293 ], [ %indvars.iv.next, %bb.kx ] ; 2 uses
  %i.bgu = trunc nuw i64 %indvars.iv to i32
  %i.bgv = add i32 %i.bgt, %i.bgu
  %i.bgw = zext i32 %i.bgv to i64
  %i.bgx = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.bgw ; 2 uses
  %i.bgy = load i32, ptr %i.bgx, align 4, !tbaa !3 ; 2 uses
  %i.bgz = tail call i32 @llvm.abs.i32(i32 %i.bgy, i1 true) ; 2 uses
  %.highbits = lshr i32 %i.bgz, %i.bfh
  %.not277 = icmp eq i32 %.highbits, 0
  br i1 %.not277, label %bb.kx, label %bb.kw

bb.kw:                                            ; preds = %bb.kv
  %i.bha = load i32, ptr %i.bfg, align 4, !tbaa !87
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
  %exitcond477.not = icmp eq i32 %i.bhf, %i.bff
  br i1 %exitcond477.not, label %.loopexit292, label %.preheader293, !llvm.loop !166

.loopexit292:                                     ; preds = %._crit_edge, %._crit_edge367, %.preheader294, %.preheader291, %bb.kt
  br i1 %.not275, label %bb.la, label %bb.ky

bb.ky:                                            ; preds = %.loopexit292
  %i.bhg = mul i32 %i.bff, %i.bfd                 ; 8 uses
  %i.bhh = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bhi = load i32, ptr %i.bhh, align 4, !tbaa !167
  %i.bhj = icmp eq i32 %i.bhi, 1
  br i1 %i.bhj, label %.preheader286, label %bb.kz

.preheader286:                                    ; preds = %bb.ky
  %.not397 = icmp eq i32 %i.bhg, 0
  br i1 %.not397, label %.loopexit, label %.lr.ph377.preheader

.lr.ph377.preheader:                              ; preds = %.preheader286
  %wide.trip.count488 = zext i32 %i.bhg to i64    ; 3 uses
  %min.iters.check808 = icmp ult i32 %i.bhg, 8
  br i1 %min.iters.check808, label %.lr.ph377.preheader855, label %vector.ph809

vector.ph809:                                     ; preds = %.lr.ph377.preheader
  %n.vec811 = and i64 %wide.trip.count488, 4294967288 ; 3 uses
  br label %vector.body812

vector.body812:                                   ; preds = %vector.body812, %vector.ph809
  %index813 = phi i64 [ 0, %vector.ph809 ], [ %index.next816, %vector.body812 ] ; 2 uses
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %index813 ; 3 uses
  %i.bhl = getelementptr inbounds nuw i8, ptr %i.bhk, i64 16 ; 2 uses
  %wide.load814 = load <4 x i32>, ptr %i.bhk, align 4, !tbaa !3
  %wide.load815 = load <4 x i32>, ptr %i.bhl, align 4, !tbaa !3
  %i.bhm = sdiv <4 x i32> %wide.load814, splat (i32 2)
  %i.bhn = sdiv <4 x i32> %wide.load815, splat (i32 2)
  store <4 x i32> %i.bhm, ptr %i.bhk, align 4, !tbaa !3
  store <4 x i32> %i.bhn, ptr %i.bhl, align 4, !tbaa !3
  %index.next816 = add nuw i64 %index813, 8       ; 2 uses
  %i.bho = icmp eq i64 %index.next816, %n.vec811
  br i1 %i.bho, label %middle.block817, label %vector.body812, !llvm.loop !168

middle.block817:                                  ; preds = %vector.body812
  %cmp.n818 = icmp eq i64 %n.vec811, %wide.trip.count488
  br i1 %cmp.n818, label %.loopexit, label %.lr.ph377.preheader855

.lr.ph377.preheader855:                           ; preds = %.lr.ph377.preheader, %middle.block817
  %indvars.iv485.ph = phi i64 [ 0, %.lr.ph377.preheader ], [ %n.vec811, %middle.block817 ]
  br label %.lr.ph377

.lr.ph377:                                        ; preds = %.lr.ph377.preheader855, %.lr.ph377
  %indvars.iv485 = phi i64 [ %indvars.iv.next486, %.lr.ph377 ], [ %indvars.iv485.ph, %.lr.ph377.preheader855 ] ; 2 uses
  %i.bhp = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %indvars.iv485 ; 2 uses
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
  %i.bhx = and i32 %i.bhg, -16                    ; 2 uses
  %.not396 = icmp eq i32 %i.bhx, 0
  br i1 %.not396, label %.preheader288, label %.lr.ph

.preheader288.loopexit:                           ; preds = %.lr.ph
  %i.bhy = and i32 %i.bhg, -16
  br label %.preheader288

.preheader288:                                    ; preds = %.preheader288.loopexit, %bb.kz
  %.3249.lcssa = phi i32 [ 0, %bb.kz ], [ %i.bhy, %.preheader288.loopexit ] ; 3 uses
  %.0.lcssa = phi ptr [ %i.bfa, %bb.kz ], [ %i.bje, %.preheader288.loopexit ] ; 3 uses
  %i.bhz = icmp ult i32 %.3249.lcssa, %i.bhg
  br i1 %i.bhz, label %.lr.ph375.preheader, label %.loopexit

.lr.ph375.preheader:                              ; preds = %.preheader288
  %2 = and i32 %i.bhg, 15
  %i.bia = add nsw i32 %2, -1                     ; 2 uses
  %i.bib = zext i32 %i.bia to i64
  %i.bic = add nuw nsw i64 %i.bib, 1              ; 2 uses
  %min.iters.check795 = icmp ult i32 %i.bia, 7
  br i1 %min.iters.check795, label %.lr.ph375.preheader857, label %vector.ph796

vector.ph796:                                     ; preds = %.lr.ph375.preheader
  %n.vec798 = and i64 %i.bic, 8589934584          ; 4 uses
  %i.bid = shl nuw nsw i64 %n.vec798, 2
  %i.bie = getelementptr i8, ptr %.0.lcssa, i64 %i.bid
  %i.bif = trunc i64 %n.vec798 to i32
  %i.big = add i32 %.3249.lcssa, %i.bif
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bhu, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body799

vector.body799:                                   ; preds = %vector.body799, %vector.ph796
  %index800 = phi i64 [ 0, %vector.ph796 ], [ %index.next802, %vector.body799 ] ; 2 uses
  %i.bih = shl i64 %index800, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa, i64 %i.bih ; 4 uses
  %i.bii = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3
  %wide.load801 = load <4 x i32>, ptr %i.bii, align 4, !tbaa !3
  %i.bij = sitofp <4 x i32> %wide.load to <4 x float>
  %i.bik = sitofp <4 x i32> %wide.load801 to <4 x float>
  %i.bil = fmul <4 x float> %broadcast.splat, %i.bij
  %i.bim = fmul <4 x float> %broadcast.splat, %i.bik
  %i.bin = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %i.bil, ptr %next.gep, align 4
  store <4 x float> %i.bim, ptr %i.bin, align 4
  %index.next802 = add nuw i64 %index800, 8       ; 2 uses
  %i.bio = icmp eq i64 %index.next802, %n.vec798
  br i1 %i.bio, label %middle.block803, label %vector.body799, !llvm.loop !171

middle.block803:                                  ; preds = %vector.body799
  %cmp.n804 = icmp eq i64 %i.bic, %n.vec798
  br i1 %cmp.n804, label %.loopexit, label %.lr.ph375.preheader857

.lr.ph375.preheader857:                           ; preds = %.lr.ph375.preheader, %middle.block803
  %.1374.ph = phi ptr [ %.0.lcssa, %.lr.ph375.preheader ], [ %i.bie, %middle.block803 ]
  %.4373.ph = phi i32 [ %.3249.lcssa, %.lr.ph375.preheader ], [ %i.big, %middle.block803 ]
  br label %.lr.ph375

.lr.ph:                                           ; preds = %bb.kz, %.lr.ph
  %.0370 = phi ptr [ %i.bje, %.lr.ph ], [ %i.bfa, %bb.kz ] ; 6 uses
  %.3249369 = phi i32 [ %i.bjf, %.lr.ph ], [ 0, %bb.kz ]
  %i.bip = load <4 x i32>, ptr %.0370, align 16, !tbaa !48
  %i.biq = sitofp <4 x i32> %i.bip to <4 x float>
  %i.bir = getelementptr inbounds nuw i8, ptr %.0370, i64 16 ; 2 uses
  %i.bis = load <4 x i32>, ptr %i.bir, align 16, !tbaa !48
  %i.bit = sitofp <4 x i32> %i.bis to <4 x float>
  %i.biu = getelementptr inbounds nuw i8, ptr %.0370, i64 32 ; 2 uses
  %i.biv = load <4 x i32>, ptr %i.biu, align 16, !tbaa !48
  %i.biw = sitofp <4 x i32> %i.biv to <4 x float>
  %i.bix = getelementptr inbounds nuw i8, ptr %.0370, i64 48 ; 2 uses
  %i.biy = load <4 x i32>, ptr %i.bix, align 16, !tbaa !48
  %i.biz = sitofp <4 x i32> %i.biy to <4 x float>
  %i.bja = fmul <4 x float> %i.bhw, %i.biq
  store <4 x float> %i.bja, ptr %.0370, align 16, !tbaa !48
  %i.bjb = fmul <4 x float> %i.bhw, %i.bit
  store <4 x float> %i.bjb, ptr %i.bir, align 16, !tbaa !48
  %i.bjc = fmul <4 x float> %i.bhw, %i.biw
  store <4 x float> %i.bjc, ptr %i.biu, align 16, !tbaa !48
  %i.bjd = fmul <4 x float> %i.bhw, %i.biz
  store <4 x float> %i.bjd, ptr %i.bix, align 16, !tbaa !48
  %i.bje = getelementptr inbounds nuw i8, ptr %.0370, i64 64 ; 2 uses
  %i.bjf = add nuw i32 %.3249369, 16              ; 2 uses
  %i.bjg = icmp ult i32 %i.bjf, %i.bhx
  br i1 %i.bjg, label %.lr.ph, label %.preheader288.loopexit, !llvm.loop !172

.lr.ph375:                                        ; preds = %.lr.ph375.preheader857, %.lr.ph375
  %.1374 = phi ptr [ %i.bjk, %.lr.ph375 ], [ %.1374.ph, %.lr.ph375.preheader857 ] ; 3 uses
  %.4373 = phi i32 [ %i.bjl, %.lr.ph375 ], [ %.4373.ph, %.lr.ph375.preheader857 ]
  %i.bjh = load i32, ptr %.1374, align 4, !tbaa !3
  %i.bji = sitofp i32 %i.bjh to float
  %i.bjj = fmul float %i.bhu, %i.bji
  store float %i.bjj, ptr %.1374, align 4
  %i.bjk = getelementptr inbounds nuw i8, ptr %.1374, i64 4
  %i.bjl = add nuw i32 %.4373, 1                  ; 2 uses
  %exitcond484.not = icmp eq i32 %i.bjl, %i.bhg
  br i1 %exitcond484.not, label %.loopexit, label %.lr.ph375, !llvm.loop !173

bb.la:                                            ; preds = %.loopexit292
  %i.bjm = getelementptr inbounds nuw i8, ptr %i.ak, i64 20
  %i.bjn = load i32, ptr %i.bjm, align 4, !tbaa !167
  %i.bjo = icmp eq i32 %i.bjn, 1
  %i.bjp = zext i32 %i.av to i64                  ; 7 uses
  br i1 %i.bjo, label %bb.lb, label %bb.ld

bb.lb:                                            ; preds = %bb.la
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  %i.bjr = load ptr, ptr %i.bjq, align 8, !tbaa !174 ; 2 uses
  %i.bjs = sext i32 %.0245 to i64                 ; 2 uses
  %i.bjt = mul nsw i64 %i.bjs, %i.bjp
  %i.bju = sext i32 %.0244 to i64                 ; 2 uses
  %i.bjv = getelementptr [4 x i8], ptr %i.bjr, i64 %i.bjt
  %i.bjw = getelementptr [4 x i8], ptr %i.bjv, i64 %i.bju ; 2 uses
  %.not398 = icmp eq i32 %i.bff, 0
  br i1 %.not398, label %.loopexit, label %.preheader283.lr.ph

.preheader283.lr.ph:                              ; preds = %bb.lb
  %i.bjx = ptrtoaddr ptr %i.bjr to i64
  %i.bjy = and i32 %i.bfd, -4                     ; 2 uses
  %.not399 = icmp eq i32 %i.bjy, 0
  %i.bjz = zext i32 %i.bjy to i64
  %wide.trip.count503 = zext i32 %i.bff to i64
  %wide.trip.count498 = zext i32 %i.bfd to i64    ; 5 uses
  %i.bka = mul nsw i64 %i.bjs, %i.bjp
  %i.bkb = add i64 %i.bka, %i.bju
  %i.bkc = shl i64 %i.bkb, 2
  %i.bkd = add i64 %i.bkc, %i.bjx
  %i.bke = sub i64 %i.bkd, %i.bfb
  %i.bkf = shl nuw nsw i64 %i.bjp, 2
  %i.bkg = add nsw i64 %wide.trip.count498, -1
  br label %.preheader283

.preheader283:                                    ; preds = %.preheader283.lr.ph, %._crit_edge392
  %indvars.iv500 = phi i64 [ 0, %.preheader283.lr.ph ], [ %indvars.iv.next501, %._crit_edge392 ] ; 8 uses
  %i.bkh = mul i64 %i.bkf, %indvars.iv500
  %i.bki = add i64 %i.bke, %i.bkh
  %i.bkj = trunc i64 %indvars.iv500 to i32
  %i.bkk = mul i32 %i.bfd, %i.bkj
  %i.bkl = trunc i64 %indvars.iv500 to i32
  %i.bkm = mul i32 %i.bfd, %i.bkl
  br i1 %.not399, label %.preheader, label %.lr.ph388

.lr.ph388:                                        ; preds = %.preheader283
  %i.bkn = trunc nuw i64 %indvars.iv500 to i32
  %i.bko = mul i32 %i.bfd, %i.bkn
  %i.bkp = mul nuw i64 %indvars.iv500, %i.bjp
  %i.bkq = getelementptr inbounds nuw [4 x i8], ptr %i.bjw, i64 %i.bkp
  br label %bb.lc

.preheader.loopexit:                              ; preds = %bb.lc
  %i.bkr = trunc nuw i64 %indvars.iv.next493 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader283
  %.5.lcssa = phi i32 [ 0, %.preheader283 ], [ %i.bkr, %.preheader.loopexit ] ; 4 uses
  %i.bks = icmp ult i32 %.5.lcssa, %i.bfd
  br i1 %i.bks, label %.lr.ph391, label %._crit_edge392

.lr.ph391:                                        ; preds = %.preheader
  %i.bkt = trunc nuw i64 %indvars.iv500 to i32
  %i.bku = mul i32 %i.bfd, %i.bkt                 ; 4 uses
  %i.bkv = mul nuw i64 %indvars.iv500, %i.bjp
  %i.bkw = getelementptr inbounds nuw [4 x i8], ptr %i.bjw, i64 %i.bkv ; 4 uses
  %i.bkx = zext i32 %.5.lcssa to i64              ; 8 uses
  %i.bky = sub nsw i64 %wide.trip.count498, %i.bkx ; 3 uses
  %min.iters.check841 = icmp ult i64 %i.bky, 12
  br i1 %min.iters.check841, label %scalar.ph840.preheader, label %vector.scevcheck839

vector.scevcheck839:                              ; preds = %.lr.ph391
  %i.bkz = xor i64 %i.bkx, -1
  %i.bla = add nsw i64 %i.bkz, %wide.trip.count498 ; 2 uses
  %i.blb = add i32 %.5.lcssa, %i.bkm
  %i.blc = trunc i64 %i.bla to i32
  %i.bld = xor i32 %i.blb, -1
  %i.ble = icmp ult i32 %i.bld, %i.blc
  %i.blf = icmp ugt i64 %i.bla, 4294967295
  %i.blg = or i1 %i.ble, %i.blf
  br i1 %i.blg, label %scalar.ph840.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck839
  %i.blh = shl nuw nsw i64 %i.bkx, 2
  %i.bli = add i64 %i.bki, %i.blh
  %i.blj = add i32 %.5.lcssa, %i.bkk
  %i.blk = zext i32 %i.blj to i64
  %i.bll = shl nuw nsw i64 %i.blk, 2
  %i.blm = sub i64 %i.bli, %i.bll
  %diff.check = icmp ult i64 %i.blm, 32
  br i1 %diff.check, label %scalar.ph840.preheader, label %vector.ph842

vector.ph842:                                     ; preds = %vector.memcheck
  %n.vec844 = and i64 %i.bky, -8                  ; 3 uses
  %i.bln = add nsw i64 %n.vec844, %i.bkx
  br label %vector.body845

vector.body845:                                   ; preds = %vector.body845, %vector.ph842
  %index846 = phi i64 [ 0, %vector.ph842 ], [ %index.next849, %vector.body845 ] ; 2 uses
  %i.blo = add i64 %index846, %i.bkx              ; 2 uses
  %i.blp = trunc nuw i64 %i.blo to i32
  %i.blq = add i32 %i.bku, %i.blp
  %i.blr = zext i32 %i.blq to i64
  %i.bls = getelementptr inbounds nuw [4 x i8], ptr %i.bfa, i64 %i.blr ; 2 uses
  %i.blt = getelementptr inbounds nuw i8, ptr %i.bls, i64 16
  %wide.load847 = load <4 x i32>, ptr %i.bls, align 4, !tbaa !3
  %wide.load848 = load <4 x i32>, ptr %i.blt, align 4, !tbaa !3
  %i.blu = sdiv <4 x i32> %wide.load847, splat (i32 2)
  %i.blv = sdiv <4 x i32> %wide.load848, splat (i32 2)
  %i.blw = getelementptr inbounds nuw [4 x i8], ptr %i.bkw, i64 %i.blo ; 2 uses
  %i.blx = getelementptr inbounds nuw i8, ptr %i.blw, i64 16
  store <4 x i32> %i.blu, ptr %i.blw, align 4, !tbaa !3
  store <4 x i32> %i.blv, ptr %i.blx, align 4, !tbaa !3
  %index.next849 = add nuw i64 %index846, 8       ; 2 uses
  %i.bly = icmp eq i64 %index.next849, %n.vec844
  br i1 %i.bly, label %middle.block850, label %vector.body845, !llvm.loop !175

middle.block850:                                  ; preds = %vector.body845
  %cmp.n851 = icmp eq i64 %i.bky, %n.vec844
  br i1 %cmp.n851, label %._crit_edge392, label %scalar.ph840.preheader
end_hunk_0
