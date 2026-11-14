Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegaudiodec_fixed?download=true
inline.NumInlined: 125
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 34
begin_hunk_0_@mp_decode_frame:bb.a
  store i32 0, ptr %i.o, align 8, !tbaa !187
  %i.avh = shl i32 %i.avc, 3
  store i32 %i.avh, ptr %i.aut, align 16, !tbaa !55
  %i.avi = getelementptr inbounds nuw i8, ptr %0, i64 9360
  %i.avj = getelementptr inbounds nuw i8, ptr %0, i64 18576
  %wide.trip.count574.i = zext nneg i32 %.0325.i to i64
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge467.i, %bb.bs
  %indvars.iv571.i = phi i64 [ 0, %bb.bs ], [ %indvars.iv.next572.i, %._crit_edge467.i ] ; 4 uses
  %i.avk = load i32, ptr %i.aut, align 16, !tbaa !55 ; 2 uses
  %i.avl = ashr i32 %i.avk, 3
  %i.avm = icmp slt i32 %i.avl, %.0324.i
  br i1 %i.avm, label %.preheader439.i, label %.critedgesplit.i

.preheader439.i:                                  ; preds = %bb.bt
  %i.avn = load i32, ptr %i.agm, align 8, !tbaa !40
  %i.avo = icmp sgt i32 %i.avn, 0
  br i1 %i.avo, label %.lr.ph466.i, label %._crit_edge467.i

.lr.ph466.i:                                      ; preds = %.preheader439.i
  %invariant.gep468.i = getelementptr inbounds nuw [2432 x i8], ptr %i.aix, i64 %indvars.iv571.i
  %invariant.gep470.idx.i = mul nuw nsw i64 %indvars.iv571.i, 2304
  %invariant.gep470.i = getelementptr inbounds nuw i8, ptr %i.avi, i64 %invariant.gep470.idx.i
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %.lr.ph466.i
  %indvars.iv568.i = phi i64 [ 0, %.lr.ph466.i ], [ %indvars.iv.next569.i, %bb.bu ] ; 4 uses
  %gep469.i = getelementptr inbounds nuw [4864 x i8], ptr %invariant.gep468.i, i64 %indvars.iv568.i ; 3 uses
  %i.avp = getelementptr inbounds nuw i8, ptr %gep469.i, i64 4
  %i.avq = load i32, ptr %i.avp, align 4, !tbaa !196
  %i.avr = load i32, ptr %i.aut, align 16, !tbaa !55
  %i.avs = add nsw i32 %i.avr, %i.avq
  store i32 %i.avs, ptr %i.aut, align 16, !tbaa !55
  %i.avt = getelementptr inbounds nuw i8, ptr %gep469.i, i64 128
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2304) %i.avt, i8 0, i64 2304, i1 false)
  %gep471.i = getelementptr inbounds nuw [4608 x i8], ptr %invariant.gep470.i, i64 %indvars.iv568.i
  %i.avu = getelementptr inbounds nuw [2304 x i8], ptr %i.avj, i64 %indvars.iv568.i
  tail call fastcc void @compute_imdct(ptr noundef nonnull %0, ptr noundef nonnull %gep469.i, ptr noundef nonnull %gep471.i, ptr noundef nonnull %i.avu)
  %indvars.iv.next569.i = add nuw nsw i64 %indvars.iv568.i, 1 ; 2 uses
  %i.avv = load i32, ptr %i.agm, align 8, !tbaa !40
  %i.avw = sext i32 %i.avv to i64
  %i.avx = icmp slt i64 %indvars.iv.next569.i, %i.avw
  br i1 %i.avx, label %bb.bu, label %._crit_edge467.i, !llvm.loop !127

._crit_edge467.i:                                 ; preds = %bb.bu, %.preheader439.i
  %indvars.iv.next572.i = add nuw nsw i64 %indvars.iv571.i, 1 ; 2 uses
  %exitcond575.not.i = icmp eq i64 %indvars.iv.next572.i, %wide.trip.count574.i
  br i1 %exitcond575.not.i, label %._crit_edge467..critedge_crit_edge.i, label %bb.bt, !llvm.loop !128

._crit_edge467..critedge_crit_edge.i:             ; preds = %._crit_edge467.i
  %.pre672.i = load i32, ptr %i.aut, align 16, !tbaa !55
  br label %.critedge.i, !llvm.loop !128

.critedgesplit.i:                                 ; preds = %bb.bt
  %i.avy = trunc nuw nsw i64 %indvars.iv571.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedgesplit.i, %._crit_edge467..critedge_crit_edge.i
  %i.avz = phi i32 [ %.pre672.i, %._crit_edge467..critedge_crit_edge.i ], [ %i.avk, %.critedgesplit.i ]
  %.1321.lcssa.i = phi i32 [ %.0325.i, %._crit_edge467..critedge_crit_edge.i ], [ %i.avy, %.critedgesplit.i ] ; 2 uses
  %i.awa = shl nuw nsw i32 %.0324.i, 3
  %i.awb = sub nsw i32 %i.avz, %i.awa             ; 4 uses
  %i.awc = load i32, ptr %i.l, align 4, !tbaa !208 ; 2 uses
  %i.awd = load i32, ptr %i.auq, align 4, !tbaa !206
  %i.awe = shl nsw i32 %i.awd, 3                  ; 2 uses
  %i.awf = sub nsw i32 %i.awc, %i.awe
  %.not338.i133 = icmp slt i32 %i.awb, %i.awf
  br i1 %.not338.i133, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %.critedge.i
  %i.awg = load ptr, ptr %i.avb, align 8, !tbaa !209
  %.not339.i = icmp eq ptr %i.awg, null
  br i1 %.not339.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.awh = sub nsw i32 %i.awb, %i.awc
  %i.awi = add nsw i32 %i.awe, %i.awh             ; 2 uses
  %i.awj = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.awk = load i32, ptr %i.awj, align 16, !tbaa !187 ; 3 uses
  %i.awl = sub nsw i32 0, %i.awk                  ; 2 uses
  %i.awm = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.awn = load i32, ptr %i.awm, align 8, !tbaa !186
  %i.awo = sub nsw i32 %i.awn, %i.awk
  %i.awp = icmp slt i32 %i.awi, %i.awl
  %..i.i.i = tail call i32 @llvm.smin.i32(i32 %i.awi, i32 %i.awo)
  %.0.i.i.i = select i1 %i.awp, i32 %i.awl, i32 %..i.i.i
  %i.awq = add nsw i32 %.0.i.i.i, %i.awk
  store i32 %i.awq, ptr %i.awj, align 16, !tbaa !187
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.avb, i64 24, i1 false), !tbaa.struct !207
  store ptr null, ptr %i.avb, align 8, !tbaa !209
  store i32 0, ptr %i.auq, align 4, !tbaa !206
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv, %.critedge.i
  %i.awr = load i32, ptr %i.o, align 8, !tbaa !187 ; 3 uses
  %i.aws = sub nsw i32 0, %i.awr                  ; 2 uses
  %i.awt = load i32, ptr %i.n, align 16, !tbaa !186
  %i.awu = sub nsw i32 %i.awt, %i.awr
  %i.awv = icmp slt i32 %i.awb, %i.aws
  %..i.i372.i = tail call i32 @llvm.smin.i32(i32 %i.awb, i32 %i.awu)
  %.0.i.i373.i = select i1 %i.awv, i32 %i.aws, i32 %..i.i372.i
  %i.aww = add nsw i32 %.0.i.i373.i, %i.awr
  store i32 %i.aww, ptr %i.o, align 8, !tbaa !187
  br label %bb.by

.thread744.i:                                     ; preds = %.split.us.i
  %i.awx = getelementptr inbounds nuw i8, ptr %0, i64 1092
  store i32 0, ptr %i.awx, align 4, !tbaa !206
  br label %.preheader438.lr.ph.i

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %i.awy = icmp samesign ult i32 %.1321.lcssa.i, %.0325.i
  br i1 %i.awy, label %..preheader438.lr.ph.i_crit_edge, label %._crit_edge516.i

..preheader438.lr.ph.i_crit_edge:                 ; preds = %bb.by
  %.pre673.i.pre = load i32, ptr %i.agm, align 8, !tbaa !40
  br label %.preheader438.lr.ph.i

.preheader438.lr.ph.i:                            ; preds = %..preheader438.lr.ph.i_crit_edge, %.thread744.i
  %.pre673.i = phi i32 [ %.pre673.i245, %.thread744.i ], [ %.pre673.i.pre, %..preheader438.lr.ph.i_crit_edge ]
  %.2322746.i = phi i32 [ 0, %.thread744.i ], [ %.1321.lcssa.i, %..preheader438.lr.ph.i_crit_edge ] ; 2 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %0, i64 1092 ; 7 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 9 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %0, i64 32920 ; 3 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.axd = getelementptr inbounds nuw i8, ptr %0, i64 28048
  %i.axe = getelementptr inbounds nuw i8, ptr %0, i64 9360
  %i.axf = getelementptr inbounds nuw i8, ptr %0, i64 18576
  %i.axg = zext nneg i32 %.2322746.i to i64       ; 2 uses
  %i.axh = mul nuw nsw i64 %i.axg, 2432
  %i.axi = sub nuw nsw i32 %.0325.i, %.2322746.i
  %wide.trip.count665.i = zext nneg i32 %i.axi to i64
  %i.axj = getelementptr i8, ptr %0, i64 %i.axh
  %i.axk = getelementptr i8, ptr %i.axj, i64 23278
  %i.axl = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.axm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.axn = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %.preheader438.i

.preheader438.i:                                  ; preds = %._crit_edge510.i, %.preheader438.lr.ph.i
  %i.axo = phi i32 [ %.pre673.i, %.preheader438.lr.ph.i ], [ %i.eag, %._crit_edge510.i ]
  %indvars.iv662.i = phi i64 [ %i.axg, %.preheader438.lr.ph.i ], [ %indvars.iv.next663.i, %._crit_edge510.i ] ; 6 uses
  %indvar.i = phi i64 [ 0, %.preheader438.lr.ph.i ], [ %indvar.next.i, %._crit_edge510.i ] ; 2 uses
  %i.axp = icmp sgt i32 %i.axo, 0
  br i1 %i.axp, label %.lr.ph506.i, label %._crit_edge507.i

.lr.ph506.i:                                      ; preds = %.preheader438.i
  %i.axq = mul nuw nsw i64 %indvar.i, 2432
  %.val359.pre.i = load i32, ptr %i.o, align 8, !tbaa !187
  %i.axr = getelementptr i8, ptr %i.axk, i64 %i.axq
  br label %bb.bz

bb.bz:                                            ; preds = %huffman_decode.exit.i, %.lr.ph506.i
  %.promoted493.i = phi i32 [ %.val359.pre.i, %.lr.ph506.i ], [ %.val359675.i, %huffman_decode.exit.i ] ; 8 uses
  %indvar647.i = phi i64 [ 0, %.lr.ph506.i ], [ %indvar.next648.i, %huffman_decode.exit.i ] ; 4 uses
  %i.axs = mul nuw nsw i64 %indvar647.i, 4864
  %scevgep649.i = getelementptr i8, ptr %i.axr, i64 %i.axs
  %i.axt = getelementptr [4864 x i8], ptr %i.aix, i64 %indvar647.i ; 10 uses
  %i.axu = getelementptr [2432 x i8], ptr %i.axt, i64 %indvars.iv662.i ; 61 uses
  %i.axv = load i32, ptr %i.agl, align 4, !tbaa !189
  %.not340.i = icmp eq i32 %i.axv, 0
  br i1 %.not340.i, label %bb.ca, label %bb.ci

bb.ca:                                            ; preds = %bb.bz
  %i.axw = getelementptr inbounds nuw i8, ptr %i.axu, i64 16
  %i.axx = load i32, ptr %i.axw, align 16, !tbaa !199
  %i.axy = sext i32 %i.axx to i64                 ; 2 uses
  %i.axz = getelementptr inbounds i8, ptr @ff_slen_table, i64 %i.axy
  %i.aya = load i8, ptr %i.axz, align 1, !tbaa !32 ; 4 uses
  %i.ayb = zext i8 %i.aya to i32                  ; 17 uses
  %i.ayc = getelementptr inbounds i8, ptr getelementptr inbounds nuw (i8, ptr @ff_slen_table, i64 16), i64 %i.axy
  %i.ayd = load i8, ptr %i.ayc, align 1, !tbaa !32 ; 4 uses
  %i.aye = zext i8 %i.ayd to i32                  ; 31 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.axu, i64 20
  %i.ayg = load i8, ptr %i.ayf, align 4, !tbaa !74
  %i.ayh = icmp eq i8 %i.ayg, 2
  br i1 %i.ayh, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.ayi = getelementptr inbounds nuw i8, ptr %i.axu, i64 21
  %i.ayj = load i8, ptr %i.ayi, align 1, !tbaa !75
  %.not342.i = icmp eq i8 %i.ayj, 0
  %i.ayk = select i1 %.not342.i, i32 18, i32 17   ; 5 uses
  %.not343.i = icmp eq i8 %i.aya, 0
  br i1 %.not343.i, label %.preheader432.i, label %.preheader434.i

.preheader434.i:                                  ; preds = %bb.cb
  %i.ayl = load i32, ptr %i.n, align 16, !tbaa !186 ; 3 uses
  %i.aym = load ptr, ptr %i.h, align 16, !tbaa !184 ; 3 uses
  %i.ayn = sub nsw i32 32, %i.ayb                 ; 3 uses
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.axu, i64 76 ; 3 uses
  %wide.trip.count634.i = zext nneg i32 %i.ayk to i64 ; 2 uses
  %xtraiter646 = and i64 %wide.trip.count634.i, 1
  %unroll_iter650 = and i64 %wide.trip.count634.i, 18
  br label %bb.cc

.preheader432.i:                                  ; preds = %bb.cb
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.axu, i64 76
  %i.ayq = zext nneg i32 %i.ayk to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ayp, i8 0, i64 range(i64 0, 20) %i.ayq, i1 false), !tbaa !32
  br label %.loopexit433.i

bb.cc:                                            ; preds = %bb.cc, %.preheader434.i
  %indvars.iv629.i = phi i64 [ 0, %.preheader434.i ], [ %indvars.iv.next630.i.1, %bb.cc ] ; 3 uses
  %i.ayr = phi i32 [ %.promoted493.i, %.preheader434.i ], [ %i.azn, %bb.cc ] ; 3 uses
  %niter651 = phi i64 [ 0, %.preheader434.i ], [ %niter651.next.1, %bb.cc ]
  %i.ays = lshr i32 %i.ayr, 3
  %i.ayt = zext nneg i32 %i.ays to i64
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.aym, i64 %i.ayt
  %i.ayv = load i32, ptr %i.ayu, align 1, !tbaa !32
  %i.ayw = tail call i32 @llvm.bswap.i32(i32 %i.ayv)
  %i.ayx = and i32 %i.ayr, 7
  %i.ayy = shl i32 %i.ayw, %i.ayx
  %i.ayz = lshr i32 %i.ayy, %i.ayn
  %i.aza = add i32 %i.ayr, %i.ayb
  %i.azb = tail call i32 @llvm.umin.i32(i32 %i.ayl, i32 %i.aza) ; 4 uses
  store i32 %i.azb, ptr %i.o, align 8, !tbaa !187
  %i.azc = trunc i32 %i.ayz to i8
  %i.azd = getelementptr inbounds nuw i8, ptr %i.ayo, i64 %indvars.iv629.i
  store i8 %i.azc, ptr %i.azd, align 1, !tbaa !32
  %i.aze = lshr i32 %i.azb, 3
  %i.azf = zext nneg i32 %i.aze to i64
  %i.azg = getelementptr inbounds nuw i8, ptr %i.aym, i64 %i.azf
  %i.azh = load i32, ptr %i.azg, align 1, !tbaa !32
  %i.azi = tail call i32 @llvm.bswap.i32(i32 %i.azh)
  %i.azj = and i32 %i.azb, 7
  %i.azk = shl i32 %i.azi, %i.azj
  %i.azl = lshr i32 %i.azk, %i.ayn
  %i.azm = add i32 %i.azb, %i.ayb
  %i.azn = tail call i32 @llvm.umin.i32(i32 %i.ayl, i32 %i.azm) ; 5 uses
  store i32 %i.azn, ptr %i.o, align 8, !tbaa !187
  %i.azo = trunc i32 %i.azl to i8
  %indvars.iv.next630.i.1 = add nuw nsw i64 %indvars.iv629.i, 2 ; 2 uses
  %i.azp = getelementptr inbounds nuw i8, ptr %i.ayo, i64 %indvars.iv629.i
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 1
  store i8 %i.azo, ptr %i.azq, align 1, !tbaa !32
  %niter651.next.1 = add nuw nsw i64 %niter651, 2 ; 2 uses
  %niter651.ncmp.1 = icmp eq i64 %niter651.next.1, %unroll_iter650
  br i1 %niter651.ncmp.1, label %.loopexit433.i.loopexit.unr-lcssa, label %bb.cc, !llvm.loop !129

.loopexit433.i.loopexit.unr-lcssa:                ; preds = %bb.cc
  %lcmp.mod648.not = icmp eq i64 %xtraiter646, 0
  br i1 %lcmp.mod648.not, label %.loopexit433.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit433.i.loopexit.unr-lcssa
  %lcmp.mod649 = trunc i32 %i.ayk to i1
  tail call void @llvm.assume(i1 %lcmp.mod649)
  %i.azr = lshr i32 %i.azn, 3
  %i.azs = zext nneg i32 %i.azr to i64
  %i.azt = getelementptr inbounds nuw i8, ptr %i.aym, i64 %i.azs
  %i.azu = load i32, ptr %i.azt, align 1, !tbaa !32
  %i.azv = tail call i32 @llvm.bswap.i32(i32 %i.azu)
  %i.azw = and i32 %i.azn, 7
  %i.azx = shl i32 %i.azv, %i.azw
  %i.azy = lshr i32 %i.azx, %i.ayn
  %i.azz = add i32 %i.azn, %i.ayb
  %i.baa = tail call i32 @llvm.umin.i32(i32 %i.ayl, i32 %i.azz)
  store i32 %i.baa, ptr %i.o, align 8, !tbaa !187
  %i.bab = trunc i32 %i.azy to i8
  %i.bac = getelementptr inbounds nuw i8, ptr %i.ayo, i64 %indvars.iv.next630.i.1
  store i8 %i.bab, ptr %i.bac, align 1, !tbaa !32
  br label %.loopexit433.i

.loopexit433.i:                                   ; preds = %.epil.preheader, %.loopexit433.i.loopexit.unr-lcssa, %.preheader432.i
  %.not344.i = icmp eq i8 %i.ayd, 0
  br i1 %.not344.i, label %.preheader427.i, label %.preheader431.i

.preheader431.i:                                  ; preds = %.loopexit433.i
  %i.bad = load i32, ptr %i.n, align 16, !tbaa !186 ; 18 uses
  %i.bae = load ptr, ptr %i.h, align 16, !tbaa !184 ; 18 uses
  %i.baf = sub nsw i32 32, %i.aye                 ; 18 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %i.axu, i64 76
  %.promoted498.i = load i32, ptr %i.o, align 8, !tbaa !187 ; 3 uses
  %i.bah = zext nneg i32 %i.ayk to i64            ; 2 uses
  %i.bai = lshr i32 %.promoted498.i, 3
  %i.baj = zext nneg i32 %i.bai to i64
  %i.bak = getelementptr inbounds nuw i8, ptr %i.bae, i64 %i.baj
  %i.bal = load i32, ptr %i.bak, align 1, !tbaa !32
  %i.bam = tail call i32 @llvm.bswap.i32(i32 %i.bal)
  %i.ban = and i32 %.promoted498.i, 7
  %i.bao = shl i32 %i.bam, %i.ban
  %i.bap = lshr i32 %i.bao, %i.baf
  %i.baq = add i32 %.promoted498.i, %i.aye
  %i.bar = tail call i32 @llvm.umin.i32(i32 %i.bad, i32 %i.baq) ; 4 uses
  store i32 %i.bar, ptr %i.o, align 8, !tbaa !187
  %i.bas = trunc i32 %i.bap to i8
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bag, i64 %i.bah ; 18 uses
  store i8 %i.bas, ptr %i.bat, align 1, !tbaa !32
  %i.bau = lshr i32 %i.bar, 3
  %i.bav = zext nneg i32 %i.bau to i64
  %i.baw = getelementptr inbounds nuw i8, ptr %i.bae, i64 %i.bav
  %i.bax = load i32, ptr %i.baw, align 1, !tbaa !32
  %i.bay = tail call i32 @llvm.bswap.i32(i32 %i.bax)
  %i.baz = and i32 %i.bar, 7
  %i.bba = shl i32 %i.bay, %i.baz
  %i.bbb = lshr i32 %i.bba, %i.baf
  %i.bbc = add i32 %i.bar, %i.aye
  %i.bbd = tail call i32 @llvm.umin.i32(i32 %i.bad, i32 %i.bbc) ; 4 uses
  store i32 %i.bbd, ptr %i.o, align 8, !tbaa !187
  %i.bbe = trunc i32 %i.bbb to i8
  %i.bbf = getelementptr inbounds nuw i8, ptr %i.bat, i64 1
  store i8 %i.bbe, ptr %i.bbf, align 1, !tbaa !32
  %i.bbg = lshr i32 %i.bbd, 3
  %i.bbh = zext nneg i32 %i.bbg to i64
  %i.bbi = getelementptr inbounds nuw i8, ptr %i.bae, i64 %i.bbh
  %i.bbj = load i32, ptr %i.bbi, align 1, !tbaa !32
  %i.bbk = tail call i32 @llvm.bswap.i32(i32 %i.bbj)
  %i.bbl = and i32 %i.bbd, 7
  %i.bbm = shl i32 %i.bbk, %i.bbl
  %i.bbn = lshr i32 %i.bbm, %i.baf
  %i.bbo = add i32 %i.bbd, %i.aye
  %i.bbp = tail call i32 @llvm.umin.i32(i32 %i.bad, i32 %i.bbo) ; 4 uses
  store i32 %i.bbp, ptr %i.o, align 8, !tbaa !187
  %i.bbq = trunc i32 %i.bbn to i8
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bat, i64 2
  store i8 %i.bbq, ptr %i.bbr, align 1, !tbaa !32
  %i.bbs = lshr i32 %i.bbp, 3
  %i.bbt = zext nneg i32 %i.bbs to i64
  %i.bbu = getelementptr inbounds nuw i8, ptr %i.bae, i64 %i.bbt
  %i.bbv = load i32, ptr %i.bbu, align 1, !tbaa !32
  %i.bbw = tail call i32 @llvm.bswap.i32(i32 %i.bbv)
  %i.bbx = and i32 %i.bbp, 7
  %i.bby = shl i32 %i.bbw, %i.bbx
  %i.bbz = lshr i32 %i.bby, %i.baf
  %i.bca = add i32 %i.bbp, %i.aye
  %i.bcb = tail call i32 @llvm.umin.i32(i32 %i.bad, i32 %i.bca) ; 4 uses
  store i32 %i.bcb, ptr %i.o, align 8, !tbaa !187
  %i.bcc = trunc i32 %i.bbz to i8
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bat, i64 3
  store i8 %i.bcc, ptr %i.bcd, align 1, !tbaa !32
  %i.bce = lshr i32 %i.bcb, 3
  %i.bcf = zext nneg i32 %i.bce to i64
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bae, i64 %i.bcf
  %i.bch = load i32, ptr %i.bcg, align 1, !tbaa !32
  %i.bci = tail call i32 @llvm.bswap.i32(i32 %i.bch)
  %i.bcj = and i32 %i.bcb, 7
  %i.bck = shl i32 %i.bci, %i.bcj
  %i.bcl = lshr i32 %i.bck, %i.baf
  %i.bcm = add i32 %i.bcb, %i.aye
  %i.bcn = tail call i32 @llvm.umin.i32(i32 %i.bad, i32 %i.bcm) ; 4 uses
  store i32 %i.bcn, ptr %i.o, align 8, !tbaa !187
  %i.bco = trunc i32 %i.bcl to i8
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bat, i64 4
  store i8 %i.bco, ptr %i.bcp, align 1, !tbaa !32
  %i.bcq = lshr i32 %i.bcn, 3
  %i.bcr = zext nneg i32 %i.bcq to i64
  %i.bcs = getelementptr inbounds nuw i8, ptr %i.bae, i64 %i.bcr
  %i.bct = load i32, ptr %i.bcs, align 1, !tbaa !32
  %i.bcu = tail call i32 @llvm.bswap.i32(i32 %i.bct)
  %i.bcv = and i32 %i.bcn, 7
  %i.bcw = shl i32 %i.bcu, %i.bcv
  %i.bcx = lshr i32 %i.bcw, %i.baf
  %i.bcy = add i32 %i.bcn, %i.aye
  %i.bcz = tail call i32 @llvm.umin.i32(i32 %i.bad, i32 %i.bcy) ; 4 uses
  store i32 %i.bcz, ptr %i.o, align 8, !tbaa !187
  %i.bda = trunc i32 %i.bcx to i8
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bat, i64 5
  store i8 %i.bda, ptr %i.bdb, align 1, !tbaa !32
  %i.bdc = lshr i32 %i.bcz, 3
  %i.bdd = zext nneg i32 %i.bdc to i64
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bae, i64 %i.bdd
  %i.bdf = load i32, ptr %i.bde, align 1, !tbaa !32
  %i.bdg = tail call i32 @llvm.bswap.i32(i32 %i.bdf)
  %i.bdh = and i32 %i.bcz, 7
  %i.bdi = shl i32 %i.bdg, %i.bdh
  %i.bdj = lshr i32 %i.bdi, %i.baf
  %i.bdk = add i32 %i.bcz, %i.aye
  %i.bdl = tail call i32 @llvm.umin.i32(i32 %i.bad, i32 %i.bdk) ; 4 uses
  store i32 %i.bdl, ptr %i.o, align 8, !tbaa !187
  %i.bdm = trunc i32 %i.bdj to i8
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bat, i64 6
  store i8 %i.bdm, ptr %i.bdn, align 1, !tbaa !32
  %i.bdo = lshr i32 %i.bdl, 3
  %i.bdp = zext nneg i32 %i.bdo to i64
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bae, i64 %i.bdp
  %i.bdr = load i32, ptr %i.bdq, align 1, !tbaa !32
  %i.bds = tail call i32 @llvm.bswap.i32(i32 %i.bdr)
  %i.bdt = and i32 %i.bdl, 7
  %i.bdu = shl i32 %i.bds, %i.bdt
  %i.bdv = lshr i32 %i.bdu, %i.baf
  %i.bdw = add i32 %i.bdl, %i.aye
  %i.bdx = tail call i32 @llvm.umin.i32(i32 %i.bad, i32 %i.bdw) ; 4 uses
  store i32 %i.bdx, ptr %i.o, align 8, !tbaa !187
  %i.bdy = trunc i32 %i.bdv to i8
  %i.bdz = getelementptr inbounds nuw i8, ptr %i.bat, i64 7
  store i8 %i.bdy, ptr %i.bdz, align 1, !tbaa !32
  %i.bea = lshr i32 %i.bdx, 3
  %i.beb = zext nneg i32 %i.bea to i64
  %i.bec = getelementptr inbounds nuw i8, ptr %i.bae, i64 %i.beb
  %i.bed = load i32, ptr %i.bec, align 1, !tbaa !32
  %i.bee = tail call i32 @llvm.bswap.i32(i32 %i.bed)
  %i.bef = and i32 %i.bdx, 7
  %i.beg = shl i32 %i.bee, %i.bef
  %i.beh = lshr i32 %i.beg, %i.baf
  %i.bei = add i32 %i.bdx, %i.aye
  %i.bej = tail call i32 @llvm.umin.i32(i32 %i.bad, i32 %i.bei) ; 4 uses
  store i32 %i.bej, ptr %i.o, align 8, !tbaa !187
  %i.bek = trunc i32 %i.beh to i8
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bat, i64 8
  store i8 %i.bek, ptr %i.bel, align 1, !tbaa !32
end_hunk_0
begin_hunk_1_@mp_decode_frame:bb.a
  %i.bgl = load i32, ptr %i.bgk, align 1, !tbaa !32
  %i.bgm = tail call i32 @llvm.bswap.i32(i32 %i.bgl)
  %i.bgn = and i32 %i.bgf, 7
  %i.bgo = shl i32 %i.bgm, %i.bgn
  %i.bgp = lshr i32 %i.bgo, %i.baf
  %i.bgq = add i32 %i.bgf, %i.aye
  %i.bgr = tail call i32 @llvm.umin.i32(i32 %i.bad, i32 %i.bgq) ; 4 uses
  store i32 %i.bgr, ptr %i.o, align 8, !tbaa !187
  %i.bgs = trunc i32 %i.bgp to i8
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.bat, i64 13
  store i8 %i.bgs, ptr %i.bgt, align 1, !tbaa !32
  %i.bgu = lshr i32 %i.bgr, 3
  %i.bgv = zext nneg i32 %i.bgu to i64
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bae, i64 %i.bgv
  %i.bgx = load i32, ptr %i.bgw, align 1, !tbaa !32
  %i.bgy = tail call i32 @llvm.bswap.i32(i32 %i.bgx)
  %i.bgz = and i32 %i.bgr, 7
  %i.bha = shl i32 %i.bgy, %i.bgz
  %i.bhb = lshr i32 %i.bha, %i.baf
  %i.bhc = add i32 %i.bgr, %i.aye
  %i.bhd = tail call i32 @llvm.umin.i32(i32 %i.bad, i32 %i.bhc) ; 4 uses
  store i32 %i.bhd, ptr %i.o, align 8, !tbaa !187
  %i.bhe = trunc i32 %i.bhb to i8
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bat, i64 14
  store i8 %i.bhe, ptr %i.bhf, align 1, !tbaa !32
  %i.bhg = lshr i32 %i.bhd, 3
  %i.bhh = zext nneg i32 %i.bhg to i64
  %i.bhi = getelementptr inbounds nuw i8, ptr %i.bae, i64 %i.bhh
  %i.bhj = load i32, ptr %i.bhi, align 1, !tbaa !32
  %i.bhk = tail call i32 @llvm.bswap.i32(i32 %i.bhj)
  %i.bhl = and i32 %i.bhd, 7
  %i.bhm = shl i32 %i.bhk, %i.bhl
  %i.bhn = lshr i32 %i.bhm, %i.baf
  %i.bho = add i32 %i.bhd, %i.aye
  %i.bhp = tail call i32 @llvm.umin.i32(i32 %i.bad, i32 %i.bho) ; 4 uses
  store i32 %i.bhp, ptr %i.o, align 8, !tbaa !187
  %i.bhq = trunc i32 %i.bhn to i8
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bat, i64 15
  store i8 %i.bhq, ptr %i.bhr, align 1, !tbaa !32
  %i.bhs = lshr i32 %i.bhp, 3
  %i.bht = zext nneg i32 %i.bhs to i64
  %i.bhu = getelementptr inbounds nuw i8, ptr %i.bae, i64 %i.bht
  %i.bhv = load i32, ptr %i.bhu, align 1, !tbaa !32
  %i.bhw = tail call i32 @llvm.bswap.i32(i32 %i.bhv)
  %i.bhx = and i32 %i.bhp, 7
  %i.bhy = shl i32 %i.bhw, %i.bhx
  %i.bhz = lshr i32 %i.bhy, %i.baf
  %i.bia = add i32 %i.bhp, %i.aye
  %i.bib = tail call i32 @llvm.umin.i32(i32 %i.bad, i32 %i.bia) ; 4 uses
  store i32 %i.bib, ptr %i.o, align 8, !tbaa !187
  %i.bic = trunc i32 %i.bhz to i8
  %i.bid = getelementptr inbounds nuw i8, ptr %i.bat, i64 16
  store i8 %i.bic, ptr %i.bid, align 1, !tbaa !32
  %i.bie = lshr i32 %i.bib, 3
  %i.bif = zext nneg i32 %i.bie to i64
  %i.big = getelementptr inbounds nuw i8, ptr %i.bae, i64 %i.bif
  %i.bih = load i32, ptr %i.big, align 1, !tbaa !32
  %i.bii = tail call i32 @llvm.bswap.i32(i32 %i.bih)
  %i.bij = and i32 %i.bib, 7
  %i.bik = shl i32 %i.bii, %i.bij
  %i.bil = lshr i32 %i.bik, %i.baf
  %i.bim = add i32 %i.bib, %i.aye
  %i.bin = tail call i32 @llvm.umin.i32(i32 %i.bad, i32 %i.bim)
  store i32 %i.bin, ptr %i.o, align 8, !tbaa !187
  %i.bio = trunc i32 %i.bil to i8
  %i.bip = getelementptr inbounds nuw i8, ptr %i.bat, i64 17
  store i8 %i.bio, ptr %i.bip, align 1, !tbaa !32
  %scevgep650.i = getelementptr i8, ptr %scevgep649.i, i64 %i.bah
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %scevgep650.i, i8 0, i64 3, i1 false), !tbaa !32
  br label %.loopexit428.i

.preheader427.i:                                  ; preds = %.loopexit433.i
  %i.biq = getelementptr inbounds nuw i8, ptr %i.axu, i64 76
  %i.bir = zext nneg i32 %i.ayk to i64
  %scevgep654.i = getelementptr i8, ptr %i.biq, i64 %i.bir
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %scevgep654.i, i8 0, i64 21, i1 false), !tbaa !32
  br label %.loopexit428.i

bb.cd:                                            ; preds = %bb.ca
  %i.bis = getelementptr i8, ptr %i.axu, i64 76   ; 3 uses
  %i.bit = load i8, ptr %i.axu, align 16, !tbaa !195
  %i.biu = zext i8 %i.bit to i32                  ; 6 uses
  %i.biv = and i32 %i.biu, 8
  %i.biw = icmp eq i32 %i.biv, 0
  br i1 %i.biw, label %bb.ce, label %.preheader417.preheader.i

.preheader417.preheader.i:                        ; preds = %bb.cd
  %i.bix = getelementptr inbounds nuw i8, ptr %i.axt, i64 76
  %i.biy = load <4 x i8>, ptr %i.bix, align 1, !tbaa !32
  store <4 x i8> %i.biy, ptr %i.bis, align 4, !tbaa !32
  %i.biz = getelementptr inbounds nuw i8, ptr %i.axt, i64 80
  %i.bja = load i8, ptr %i.biz, align 1, !tbaa !32
  %i.bjb = getelementptr i8, ptr %i.axu, i64 80
  store i8 %i.bja, ptr %i.bjb, align 16, !tbaa !32
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.axt, i64 81
  %i.bjd = load i8, ptr %i.bjc, align 1, !tbaa !32
  br label %.loopexit.i

bb.ce:                                            ; preds = %bb.cd
  %.not341.i = icmp eq i8 %i.aya, 0
  br i1 %.not341.i, label %.loopexit.thread.i, label %.preheader415.i

.preheader415.i:                                  ; preds = %bb.ce
  %i.bje = sub nsw i32 32, %i.ayb                 ; 6 uses
  %i.bjf = load i32, ptr %i.n, align 16, !tbaa !186 ; 5 uses
  %i.bjg = load ptr, ptr %i.h, align 16, !tbaa !184 ; 6 uses
  %i.bjh = lshr i32 %.promoted493.i, 3
  %i.bji = zext nneg i32 %i.bjh to i64
  %i.bjj = getelementptr inbounds nuw i8, ptr %i.bjg, i64 %i.bji
  %i.bjk = load i32, ptr %i.bjj, align 1, !tbaa !32
  %i.bjl = tail call i32 @llvm.bswap.i32(i32 %i.bjk)
  %i.bjm = and i32 %.promoted493.i, 7
  %i.bjn = shl i32 %i.bjl, %i.bjm
  %i.bjo = lshr i32 %i.bjn, %i.bje
  %i.bjp = add i32 %.promoted493.i, %i.ayb
  %i.bjq = tail call i32 @llvm.umin.i32(i32 %i.bjf, i32 %i.bjp) ; 4 uses
  store i32 %i.bjq, ptr %i.o, align 8, !tbaa !187
  %i.bjr = trunc i32 %i.bjo to i8
  store i8 %i.bjr, ptr %i.bis, align 4, !tbaa !32
  %i.bjs = lshr i32 %i.bjq, 3
  %i.bjt = zext nneg i32 %i.bjs to i64
  %i.bju = getelementptr inbounds nuw i8, ptr %i.bjg, i64 %i.bjt
  %i.bjv = load i32, ptr %i.bju, align 1, !tbaa !32
  %i.bjw = tail call i32 @llvm.bswap.i32(i32 %i.bjv)
  %i.bjx = and i32 %i.bjq, 7
  %i.bjy = shl i32 %i.bjw, %i.bjx
  %i.bjz = lshr i32 %i.bjy, %i.bje
  %i.bka = add i32 %i.bjq, %i.ayb
  %i.bkb = tail call i32 @llvm.umin.i32(i32 %i.bjf, i32 %i.bka) ; 4 uses
  store i32 %i.bkb, ptr %i.o, align 8, !tbaa !187
  %i.bkc = trunc i32 %i.bjz to i8
  %i.bkd = getelementptr i8, ptr %i.axu, i64 77
  store i8 %i.bkc, ptr %i.bkd, align 1, !tbaa !32
  %i.bke = lshr i32 %i.bkb, 3
  %i.bkf = zext nneg i32 %i.bke to i64
  %i.bkg = getelementptr inbounds nuw i8, ptr %i.bjg, i64 %i.bkf
  %i.bkh = load i32, ptr %i.bkg, align 1, !tbaa !32
  %i.bki = tail call i32 @llvm.bswap.i32(i32 %i.bkh)
  %i.bkj = and i32 %i.bkb, 7
  %i.bkk = shl i32 %i.bki, %i.bkj
  %i.bkl = lshr i32 %i.bkk, %i.bje
  %i.bkm = add i32 %i.bkb, %i.ayb
  %i.bkn = tail call i32 @llvm.umin.i32(i32 %i.bjf, i32 %i.bkm) ; 4 uses
  store i32 %i.bkn, ptr %i.o, align 8, !tbaa !187
  %i.bko = trunc i32 %i.bkl to i8
  %i.bkp = getelementptr i8, ptr %i.axu, i64 78
  store i8 %i.bko, ptr %i.bkp, align 2, !tbaa !32
  %i.bkq = lshr i32 %i.bkn, 3
  %i.bkr = zext nneg i32 %i.bkq to i64
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bjg, i64 %i.bkr
  %i.bkt = load i32, ptr %i.bks, align 1, !tbaa !32
  %i.bku = tail call i32 @llvm.bswap.i32(i32 %i.bkt)
  %i.bkv = and i32 %i.bkn, 7
  %i.bkw = shl i32 %i.bku, %i.bkv
  %i.bkx = lshr i32 %i.bkw, %i.bje
  %i.bky = add i32 %i.bkn, %i.ayb
  %i.bkz = tail call i32 @llvm.umin.i32(i32 %i.bjf, i32 %i.bky) ; 4 uses
  store i32 %i.bkz, ptr %i.o, align 8, !tbaa !187
  %i.bla = trunc i32 %i.bkx to i8
  %i.blb = getelementptr i8, ptr %i.axu, i64 79
  store i8 %i.bla, ptr %i.blb, align 1, !tbaa !32
  %i.blc = lshr i32 %i.bkz, 3
  %i.bld = zext nneg i32 %i.blc to i64
  %i.ble = getelementptr inbounds nuw i8, ptr %i.bjg, i64 %i.bld
  %i.blf = load i32, ptr %i.ble, align 1, !tbaa !32
  %i.blg = tail call i32 @llvm.bswap.i32(i32 %i.blf)
  %i.blh = and i32 %i.bkz, 7
  %i.bli = shl i32 %i.blg, %i.blh
  %i.blj = lshr i32 %i.bli, %i.bje
  %i.blk = add i32 %i.bkz, %i.ayb
  %i.bll = tail call i32 @llvm.umin.i32(i32 %i.bjf, i32 %i.blk) ; 4 uses
  store i32 %i.bll, ptr %i.o, align 8, !tbaa !187
  %i.blm = trunc i32 %i.blj to i8
  %i.bln = getelementptr i8, ptr %i.axu, i64 80
  store i8 %i.blm, ptr %i.bln, align 16, !tbaa !32
  %i.blo = load i32, ptr %i.n, align 16, !tbaa !186
  %i.blp = lshr i32 %i.bll, 3
  %i.blq = zext nneg i32 %i.blp to i64
  %i.blr = getelementptr inbounds nuw i8, ptr %i.bjg, i64 %i.blq
  %i.bls = load i32, ptr %i.blr, align 1, !tbaa !32
  %i.blt = tail call i32 @llvm.bswap.i32(i32 %i.bls)
  %i.blu = and i32 %i.bll, 7
  %i.blv = shl i32 %i.blt, %i.blu
  %i.blw = lshr i32 %i.blv, %i.bje
  %i.blx = add i32 %i.bll, %i.ayb
  %i.bly = tail call i32 @llvm.umin.i32(i32 %i.blo, i32 %i.blx) ; 2 uses
  store i32 %i.bly, ptr %i.o, align 8, !tbaa !187
  %i.blz = trunc i32 %i.blw to i8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader415.i, %.preheader417.preheader.i
  %.sink.i132 = phi i8 [ %i.bjd, %.preheader417.preheader.i ], [ %i.blz, %.preheader415.i ]
  %i.bma = phi i32 [ %.promoted493.i, %.preheader417.preheader.i ], [ %i.bly, %.preheader415.i ] ; 5 uses
  %i.bmb = getelementptr i8, ptr %i.axu, i64 81
  store i8 %.sink.i132, ptr %i.bmb, align 1, !tbaa !32
  %i.bmc = and i32 %i.biu, 4
  %i.bmd = icmp eq i32 %i.bmc, 0
  br i1 %i.bmd, label %bb.cf, label %.preheader417.preheader.1.i

.loopexit.thread.i:                               ; preds = %bb.ce
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.bis, i8 0, i64 range(i64 0, 8) 6, i1 false), !tbaa !32
  %i.bme = and i32 %i.biu, 4
  %i.bmf = icmp eq i32 %i.bme, 0
  br i1 %i.bmf, label %.preheader.preheader.1.i, label %.preheader417.preheader.1.i

.preheader417.preheader.1.i:                      ; preds = %.loopexit.thread.i, %.loopexit.i
  %i.bmg = phi i32 [ %.promoted493.i, %.loopexit.thread.i ], [ %i.bma, %.loopexit.i ]
  %i.bmh = getelementptr inbounds nuw i8, ptr %i.axt, i64 82
  %i.bmi = getelementptr i8, ptr %i.axu, i64 82
  %i.bmj = load <4 x i8>, ptr %i.bmh, align 1, !tbaa !32
  store <4 x i8> %i.bmj, ptr %i.bmi, align 2, !tbaa !32
  %i.bmk = getelementptr inbounds nuw i8, ptr %i.axt, i64 86
  %i.bml = load i8, ptr %i.bmk, align 1, !tbaa !32
  %i.bmm = getelementptr i8, ptr %i.axu, i64 86
  store i8 %i.bml, ptr %i.bmm, align 2, !tbaa !32
  br label %.loopexit.1.i

bb.cf:                                            ; preds = %.loopexit.i
  %.not341.1.i = icmp eq i8 %i.aya, 0
  br i1 %.not341.1.i, label %.preheader.preheader.1.i, label %.preheader415.1.i

.preheader415.1.i:                                ; preds = %bb.cf
  %i.bmn = sub nsw i32 32, %i.ayb                 ; 5 uses
  %i.bmo = load i32, ptr %i.n, align 16, !tbaa !186
  %i.bmp = load ptr, ptr %i.h, align 16, !tbaa !184 ; 5 uses
  %i.bmq = lshr i32 %i.bma, 3
  %i.bmr = zext nneg i32 %i.bmq to i64
  %i.bms = getelementptr inbounds nuw i8, ptr %i.bmp, i64 %i.bmr
  %i.bmt = load i32, ptr %i.bms, align 1, !tbaa !32
  %i.bmu = tail call i32 @llvm.bswap.i32(i32 %i.bmt)
  %i.bmv = and i32 %i.bma, 7
  %i.bmw = shl i32 %i.bmu, %i.bmv
  %i.bmx = lshr i32 %i.bmw, %i.bmn
  %i.bmy = add i32 %i.bma, %i.ayb
  %i.bmz = tail call i32 @llvm.umin.i32(i32 %i.bmo, i32 %i.bmy) ; 4 uses
  store i32 %i.bmz, ptr %i.o, align 8, !tbaa !187
  %i.bna = trunc i32 %i.bmx to i8
  %i.bnb = getelementptr i8, ptr %i.axu, i64 82
  store i8 %i.bna, ptr %i.bnb, align 2, !tbaa !32
  %i.bnc = load i32, ptr %i.n, align 16, !tbaa !186
  %i.bnd = lshr i32 %i.bmz, 3
  %i.bne = zext nneg i32 %i.bnd to i64
  %i.bnf = getelementptr inbounds nuw i8, ptr %i.bmp, i64 %i.bne
  %i.bng = load i32, ptr %i.bnf, align 1, !tbaa !32
  %i.bnh = tail call i32 @llvm.bswap.i32(i32 %i.bng)
  %i.bni = and i32 %i.bmz, 7
  %i.bnj = shl i32 %i.bnh, %i.bni
  %i.bnk = lshr i32 %i.bnj, %i.bmn
  %i.bnl = add i32 %i.bmz, %i.ayb
  %i.bnm = tail call i32 @llvm.umin.i32(i32 %i.bnc, i32 %i.bnl) ; 4 uses
  store i32 %i.bnm, ptr %i.o, align 8, !tbaa !187
  %i.bnn = trunc i32 %i.bnk to i8
  %i.bno = getelementptr i8, ptr %i.axu, i64 83
  store i8 %i.bnn, ptr %i.bno, align 1, !tbaa !32
  %i.bnp = load i32, ptr %i.n, align 16, !tbaa !186 ; 3 uses
  %i.bnq = lshr i32 %i.bnm, 3
  %i.bnr = zext nneg i32 %i.bnq to i64
  %i.bns = getelementptr inbounds nuw i8, ptr %i.bmp, i64 %i.bnr
  %i.bnt = load i32, ptr %i.bns, align 1, !tbaa !32
  %i.bnu = tail call i32 @llvm.bswap.i32(i32 %i.bnt)
  %i.bnv = and i32 %i.bnm, 7
  %i.bnw = shl i32 %i.bnu, %i.bnv
  %i.bnx = lshr i32 %i.bnw, %i.bmn
  %i.bny = add i32 %i.bnm, %i.ayb
  %i.bnz = tail call i32 @llvm.umin.i32(i32 %i.bnp, i32 %i.bny) ; 4 uses
  store i32 %i.bnz, ptr %i.o, align 8, !tbaa !187
  %i.boa = trunc i32 %i.bnx to i8
  %i.bob = getelementptr i8, ptr %i.axu, i64 84
  store i8 %i.boa, ptr %i.bob, align 4, !tbaa !32
  %i.boc = lshr i32 %i.bnz, 3
  %i.bod = zext nneg i32 %i.boc to i64
  %i.boe = getelementptr inbounds nuw i8, ptr %i.bmp, i64 %i.bod
  %i.bof = load i32, ptr %i.boe, align 1, !tbaa !32
  %i.bog = tail call i32 @llvm.bswap.i32(i32 %i.bof)
  %i.boh = and i32 %i.bnz, 7
  %i.boi = shl i32 %i.bog, %i.boh
  %i.boj = lshr i32 %i.boi, %i.bmn
  %i.bok = add i32 %i.bnz, %i.ayb
  %i.bol = tail call i32 @llvm.umin.i32(i32 %i.bnp, i32 %i.bok) ; 4 uses
  store i32 %i.bol, ptr %i.o, align 8, !tbaa !187
  %i.bom = trunc i32 %i.boj to i8
  %i.bon = getelementptr i8, ptr %i.axu, i64 85
  store i8 %i.bom, ptr %i.bon, align 1, !tbaa !32
  %i.boo = lshr i32 %i.bol, 3
  %i.bop = zext nneg i32 %i.boo to i64
  %i.boq = getelementptr inbounds nuw i8, ptr %i.bmp, i64 %i.bop
  %i.bor = load i32, ptr %i.boq, align 1, !tbaa !32
  %i.bos = tail call i32 @llvm.bswap.i32(i32 %i.bor)
  %i.bot = and i32 %i.bol, 7
  %i.bou = shl i32 %i.bos, %i.bot
  %i.bov = lshr i32 %i.bou, %i.bmn
  %i.bow = add i32 %i.bol, %i.ayb
  %i.box = tail call i32 @llvm.umin.i32(i32 %i.bnp, i32 %i.bow) ; 2 uses
  store i32 %i.box, ptr %i.o, align 8, !tbaa !187
  %i.boy = trunc i32 %i.bov to i8
  %i.boz = getelementptr i8, ptr %i.axu, i64 86
  store i8 %i.boy, ptr %i.boz, align 2, !tbaa !32
  br label %.loopexit.1.i

.preheader.preheader.1.i:                         ; preds = %bb.cf, %.loopexit.thread.i
  %i.bpa = phi i32 [ %i.bma, %bb.cf ], [ %.promoted493.i, %.loopexit.thread.i ]
  %scevgep604.1.i = getelementptr i8, ptr %i.axu, i64 82
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(5) %scevgep604.1.i, i8 0, i64 range(i64 0, 8) 5, i1 false), !tbaa !32
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.preheader.preheader.1.i, %.preheader415.1.i, %.preheader417.preheader.1.i
  %i.bpb = phi i32 [ %i.bpa, %.preheader.preheader.1.i ], [ %i.box, %.preheader415.1.i ], [ %i.bmg, %.preheader417.preheader.1.i ] ; 4 uses
  %i.bpc = and i32 %i.biu, 2
  %i.bpd = icmp eq i32 %i.bpc, 0
  br i1 %i.bpd, label %bb.cg, label %.preheader417.preheader.2.i

.preheader417.preheader.2.i:                      ; preds = %.loopexit.1.i
  %i.bpe = getelementptr inbounds nuw i8, ptr %i.axt, i64 87
  %i.bpf = getelementptr i8, ptr %i.axu, i64 87
  %i.bpg = load <4 x i8>, ptr %i.bpe, align 1, !tbaa !32
  store <4 x i8> %i.bpg, ptr %i.bpf, align 1, !tbaa !32
  %i.bph = getelementptr inbounds nuw i8, ptr %i.axt, i64 91
  %i.bpi = load i8, ptr %i.bph, align 1, !tbaa !32
  br label %.loopexit.2.i

bb.cg:                                            ; preds = %.loopexit.1.i
  %.not341.2.i = icmp eq i8 %i.ayd, 0
  br i1 %.not341.2.i, label %.loopexit.2.thread.i, label %.preheader415.2.i

.preheader415.2.i:                                ; preds = %bb.cg
  %i.bpj = sub nsw i32 32, %i.aye                 ; 5 uses
  %i.bpk = load i32, ptr %i.n, align 16, !tbaa !186 ; 5 uses
  %i.bpl = load ptr, ptr %i.h, align 16, !tbaa !184 ; 5 uses
  %i.bpm = lshr i32 %i.bpb, 3
  %i.bpn = zext nneg i32 %i.bpm to i64
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpl, i64 %i.bpn
  %i.bpp = load i32, ptr %i.bpo, align 1, !tbaa !32
  %i.bpq = tail call i32 @llvm.bswap.i32(i32 %i.bpp)
  %i.bpr = and i32 %i.bpb, 7
  %i.bps = shl i32 %i.bpq, %i.bpr
  %i.bpt = lshr i32 %i.bps, %i.bpj
  %i.bpu = add i32 %i.bpb, %i.aye
  %i.bpv = tail call i32 @llvm.umin.i32(i32 %i.bpk, i32 %i.bpu) ; 4 uses
  store i32 %i.bpv, ptr %i.o, align 8, !tbaa !187
  %i.bpw = trunc i32 %i.bpt to i8
  %i.bpx = getelementptr i8, ptr %i.axu, i64 87
  store i8 %i.bpw, ptr %i.bpx, align 1, !tbaa !32
  %i.bpy = lshr i32 %i.bpv, 3
  %i.bpz = zext nneg i32 %i.bpy to i64
  %i.bqa = getelementptr inbounds nuw i8, ptr %i.bpl, i64 %i.bpz
  %i.bqb = load i32, ptr %i.bqa, align 1, !tbaa !32
  %i.bqc = tail call i32 @llvm.bswap.i32(i32 %i.bqb)
  %i.bqd = and i32 %i.bpv, 7
  %i.bqe = shl i32 %i.bqc, %i.bqd
  %i.bqf = lshr i32 %i.bqe, %i.bpj
  %i.bqg = add i32 %i.bpv, %i.aye
  %i.bqh = tail call i32 @llvm.umin.i32(i32 %i.bpk, i32 %i.bqg) ; 4 uses
  store i32 %i.bqh, ptr %i.o, align 8, !tbaa !187
  %i.bqi = trunc i32 %i.bqf to i8
  %i.bqj = getelementptr i8, ptr %i.axu, i64 88
  store i8 %i.bqi, ptr %i.bqj, align 8, !tbaa !32
  %i.bqk = lshr i32 %i.bqh, 3
  %i.bql = zext nneg i32 %i.bqk to i64
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bpl, i64 %i.bql
  %i.bqn = load i32, ptr %i.bqm, align 1, !tbaa !32
  %i.bqo = tail call i32 @llvm.bswap.i32(i32 %i.bqn)
  %i.bqp = and i32 %i.bqh, 7
  %i.bqq = shl i32 %i.bqo, %i.bqp
  %i.bqr = lshr i32 %i.bqq, %i.bpj
  %i.bqs = add i32 %i.bqh, %i.aye
  %i.bqt = tail call i32 @llvm.umin.i32(i32 %i.bpk, i32 %i.bqs) ; 4 uses
  store i32 %i.bqt, ptr %i.o, align 8, !tbaa !187
  %i.bqu = trunc i32 %i.bqr to i8
  %i.bqv = getelementptr i8, ptr %i.axu, i64 89
  store i8 %i.bqu, ptr %i.bqv, align 1, !tbaa !32
  %i.bqw = lshr i32 %i.bqt, 3
  %i.bqx = zext nneg i32 %i.bqw to i64
  %i.bqy = getelementptr inbounds nuw i8, ptr %i.bpl, i64 %i.bqx
  %i.bqz = load i32, ptr %i.bqy, align 1, !tbaa !32
  %i.bra = tail call i32 @llvm.bswap.i32(i32 %i.bqz)
  %i.brb = and i32 %i.bqt, 7
  %i.brc = shl i32 %i.bra, %i.brb
  %i.brd = lshr i32 %i.brc, %i.bpj
  %i.bre = add i32 %i.bqt, %i.aye
  %i.brf = tail call i32 @llvm.umin.i32(i32 %i.bpk, i32 %i.bre) ; 4 uses
  store i32 %i.brf, ptr %i.o, align 8, !tbaa !187
  %i.brg = trunc i32 %i.brd to i8
  %i.brh = getelementptr i8, ptr %i.axu, i64 90
  store i8 %i.brg, ptr %i.brh, align 2, !tbaa !32
  %i.bri = lshr i32 %i.brf, 3
  %i.brj = zext nneg i32 %i.bri to i64
  %i.brk = getelementptr inbounds nuw i8, ptr %i.bpl, i64 %i.brj
  %i.brl = load i32, ptr %i.brk, align 1, !tbaa !32
  %i.brm = tail call i32 @llvm.bswap.i32(i32 %i.brl)
  %i.brn = and i32 %i.brf, 7
  %i.bro = shl i32 %i.brm, %i.brn
  %i.brp = lshr i32 %i.bro, %i.bpj
  %i.brq = add i32 %i.brf, %i.aye
  %i.brr = tail call i32 @llvm.umin.i32(i32 %i.bpk, i32 %i.brq) ; 2 uses
  store i32 %i.brr, ptr %i.o, align 8, !tbaa !187
  %i.brs = trunc i32 %i.brp to i8
  br label %.loopexit.2.i

.loopexit.2.i:                                    ; preds = %.preheader415.2.i, %.preheader417.preheader.2.i
  %.sink781.i = phi i8 [ %i.brs, %.preheader415.2.i ], [ %i.bpi, %.preheader417.preheader.2.i ]
  %i.brt = phi i32 [ %i.brr, %.preheader415.2.i ], [ %i.bpb, %.preheader417.preheader.2.i ] ; 3 uses
  %i.bru = getelementptr i8, ptr %i.axu, i64 91
  store i8 %.sink781.i, ptr %i.bru, align 1, !tbaa !32
  %i.brv = and i32 %i.biu, 1
  %i.brw = icmp eq i32 %i.brv, 0
  br i1 %i.brw, label %bb.ch, label %.preheader417.preheader.3.i

.loopexit.2.thread.i:                             ; preds = %bb.cg
  %scevgep604.2.i = getelementptr i8, ptr %i.axu, i64 87
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %scevgep604.2.i, i8 0, i64 range(i64 0, 8) 5, i1 false), !tbaa !32
  %i.brx = and i32 %i.biu, 1
  %i.bry = icmp eq i32 %i.brx, 0
  br i1 %i.bry, label %.preheader.preheader.3.i, label %.preheader417.preheader.3.i

.preheader417.preheader.3.i:                      ; preds = %.loopexit.2.thread.i, %.loopexit.2.i
  %i.brz = getelementptr inbounds nuw i8, ptr %i.axt, i64 92
  %i.bsa = getelementptr i8, ptr %i.axu, i64 92
  %i.bsb = load <4 x i8>, ptr %i.brz, align 1, !tbaa !32
  store <4 x i8> %i.bsb, ptr %i.bsa, align 4, !tbaa !32
  %i.bsc = getelementptr inbounds nuw i8, ptr %i.axt, i64 96
  %i.bsd = load i8, ptr %i.bsc, align 1, !tbaa !32
  %i.bse = getelementptr i8, ptr %i.axu, i64 96
  store i8 %i.bsd, ptr %i.bse, align 16, !tbaa !32
  br label %.loopexit.3.i

bb.ch:                                            ; preds = %.loopexit.2.i
  %.not341.3.i = icmp eq i8 %i.ayd, 0
  br i1 %.not341.3.i, label %.preheader.preheader.3.i, label %.preheader415.3.i

.preheader415.3.i:                                ; preds = %bb.ch
  %i.bsf = sub nsw i32 32, %i.aye                 ; 5 uses
  %i.bsg = load i32, ptr %i.n, align 16, !tbaa !186 ; 5 uses
  %i.bsh = load ptr, ptr %i.h, align 16, !tbaa !184 ; 5 uses
  %i.bsi = lshr i32 %i.brt, 3
  %i.bsj = zext nneg i32 %i.bsi to i64
  %i.bsk = getelementptr inbounds nuw i8, ptr %i.bsh, i64 %i.bsj
  %i.bsl = load i32, ptr %i.bsk, align 1, !tbaa !32
  %i.bsm = tail call i32 @llvm.bswap.i32(i32 %i.bsl)
  %i.bsn = and i32 %i.brt, 7
  %i.bso = shl i32 %i.bsm, %i.bsn
  %i.bsp = lshr i32 %i.bso, %i.bsf
  %i.bsq = add i32 %i.brt, %i.aye
  %i.bsr = tail call i32 @llvm.umin.i32(i32 %i.bsg, i32 %i.bsq) ; 4 uses
  store i32 %i.bsr, ptr %i.o, align 8, !tbaa !187
  %i.bss = trunc i32 %i.bsp to i8
  %i.bst = getelementptr i8, ptr %i.axu, i64 92
  store i8 %i.bss, ptr %i.bst, align 4, !tbaa !32
  %i.bsu = lshr i32 %i.bsr, 3
  %i.bsv = zext nneg i32 %i.bsu to i64
  %i.bsw = getelementptr inbounds nuw i8, ptr %i.bsh, i64 %i.bsv
  %i.bsx = load i32, ptr %i.bsw, align 1, !tbaa !32
  %i.bsy = tail call i32 @llvm.bswap.i32(i32 %i.bsx)
  %i.bsz = and i32 %i.bsr, 7
  %i.bta = shl i32 %i.bsy, %i.bsz
  %i.btb = lshr i32 %i.bta, %i.bsf
  %i.btc = add i32 %i.bsr, %i.aye
  %i.btd = tail call i32 @llvm.umin.i32(i32 %i.bsg, i32 %i.btc) ; 4 uses
  store i32 %i.btd, ptr %i.o, align 8, !tbaa !187
  %i.bte = trunc i32 %i.btb to i8
  %i.btf = getelementptr i8, ptr %i.axu, i64 93
  store i8 %i.bte, ptr %i.btf, align 1, !tbaa !32
  %i.btg = lshr i32 %i.btd, 3
  %i.bth = zext nneg i32 %i.btg to i64
  %i.bti = getelementptr inbounds nuw i8, ptr %i.bsh, i64 %i.bth
  %i.btj = load i32, ptr %i.bti, align 1, !tbaa !32
  %i.btk = tail call i32 @llvm.bswap.i32(i32 %i.btj)
  %i.btl = and i32 %i.btd, 7
  %i.btm = shl i32 %i.btk, %i.btl
  %i.btn = lshr i32 %i.btm, %i.bsf
  %i.bto = add i32 %i.btd, %i.aye
  %i.btp = tail call i32 @llvm.umin.i32(i32 %i.bsg, i32 %i.bto) ; 4 uses
  store i32 %i.btp, ptr %i.o, align 8, !tbaa !187
  %i.btq = trunc i32 %i.btn to i8
  %i.btr = getelementptr i8, ptr %i.axu, i64 94
  store i8 %i.btq, ptr %i.btr, align 2, !tbaa !32
  %i.bts = lshr i32 %i.btp, 3
  %i.btt = zext nneg i32 %i.bts to i64
  %i.btu = getelementptr inbounds nuw i8, ptr %i.bsh, i64 %i.btt
  %i.btv = load i32, ptr %i.btu, align 1, !tbaa !32
  %i.btw = tail call i32 @llvm.bswap.i32(i32 %i.btv)
  %i.btx = and i32 %i.btp, 7
  %i.bty = shl i32 %i.btw, %i.btx
  %i.btz = lshr i32 %i.bty, %i.bsf
  %i.bua = add i32 %i.btp, %i.aye
  %i.bub = tail call i32 @llvm.umin.i32(i32 %i.bsg, i32 %i.bua) ; 4 uses
  store i32 %i.bub, ptr %i.o, align 8, !tbaa !187
  %i.buc = trunc i32 %i.btz to i8
  %i.bud = getelementptr i8, ptr %i.axu, i64 95
  store i8 %i.buc, ptr %i.bud, align 1, !tbaa !32
  %i.bue = lshr i32 %i.bub, 3
  %i.buf = zext nneg i32 %i.bue to i64
  %i.bug = getelementptr inbounds nuw i8, ptr %i.bsh, i64 %i.buf
  %i.buh = load i32, ptr %i.bug, align 1, !tbaa !32
  %i.bui = tail call i32 @llvm.bswap.i32(i32 %i.buh)
  %i.buj = and i32 %i.bub, 7
  %i.buk = shl i32 %i.bui, %i.buj
  %i.bul = lshr i32 %i.buk, %i.bsf
  %i.bum = add i32 %i.bub, %i.aye
  %i.bun = tail call i32 @llvm.umin.i32(i32 %i.bsg, i32 %i.bum)
  store i32 %i.bun, ptr %i.o, align 8, !tbaa !187
  %i.buo = trunc i32 %i.bul to i8
  %i.bup = getelementptr i8, ptr %i.axu, i64 96
  store i8 %i.buo, ptr %i.bup, align 16, !tbaa !32
  br label %.loopexit.3.i

.preheader.preheader.3.i:                         ; preds = %bb.ch, %.loopexit.2.thread.i
  %scevgep604.3.i = getelementptr i8, ptr %i.axu, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(5) %scevgep604.3.i, i8 0, i64 range(i64 0, 8) 5, i1 false), !tbaa !32
  br label %.loopexit.3.i

.loopexit.3.i:                                    ; preds = %.preheader.preheader.3.i, %.preheader415.3.i, %.preheader417.preheader.3.i
  %i.buq = getelementptr i8, ptr %i.axu, i64 97
  store i8 0, ptr %i.buq, align 1, !tbaa !32
  br label %.loopexit428.i

bb.ci:                                            ; preds = %bb.bz
  %i.bur = getelementptr inbounds nuw i8, ptr %i.axu, i64 20
  %i.bus = load i8, ptr %i.bur, align 4, !tbaa !74
  %i.but = icmp eq i8 %i.bus, 2
  br i1 %i.but, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.buu = getelementptr inbounds nuw i8, ptr %i.axu, i64 21
  %i.buv = load i8, ptr %i.buu, align 1, !tbaa !75
  %.not345.i = icmp eq i8 %i.buv, 0
  %i.buw = select i1 %.not345.i, i64 1, i64 2
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %.0297.i = phi i64 [ %i.buw, %bb.cj ], [ 0, %bb.ci ]
  %i.bux = getelementptr inbounds nuw i8, ptr %i.axu, i64 16
  %i.buy = load i32, ptr %i.bux, align 16, !tbaa !199 ; 9 uses
  %i.buz = load i32, ptr %i.aiy, align 16, !tbaa !191
  %i.bva = trunc i32 %i.buz to i1
  %i.bvb = icmp eq i64 %indvar647.i, 1
  %or.cond.i130 = and i1 %i.bvb, %i.bva
  br i1 %or.cond.i130, label %bb.cl, label %bb.cq

bb.cl:                                            ; preds = %bb.ck
  %i.bvc = ashr i32 %i.buy, 1                     ; 7 uses
  %i.bvd = icmp slt i32 %i.bvc, 180
  br i1 %i.bvd, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.bve = mul nsw i32 %i.bvc, 171
  %i.bvf = ashr i32 %i.bve, 10                    ; 3 uses
  %.neg73.i.i = mul nsw i32 %i.bvf, -6
  %i.bvg = add nsw i32 %.neg73.i.i, %i.bvc
  %i.bvh = mul nsw i32 %i.bvf, 171
  %i.bvi = ashr i32 %i.bvh, 10                    ; 2 uses
  %.neg76.i.i = mul nsw i32 %i.bvi, -6
  %i.bvj = add nsw i32 %.neg76.i.i, %i.bvf
  br label %bb.cv

bb.cn:                                            ; preds = %bb.cl
  %i.bvk = icmp samesign ult i32 %i.bvc, 244
  br i1 %i.bvk, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.bvl = add nsw i32 %i.bvc, -180               ; 2 uses
  %i.bvm = and i32 %i.bvc, 3
  %i.bvn = lshr i32 %i.bvl, 2
  %i.bvo = and i32 %i.bvn, 3
  %i.bvp = lshr i32 %i.bvl, 4
  br label %bb.cv

bb.cp:                                            ; preds = %bb.cn
  %i.bvq = add nsw i32 %i.bvc, -244               ; 2 uses
  %i.bvr = mul nuw nsw i32 %i.bvq, 171
  %i.bvs = lshr i32 %i.bvr, 9                     ; 2 uses
  %.neg78.i355.i = mul nsw i32 %i.bvs, -3
  %i.bvt = add nsw i32 %.neg78.i355.i, %i.bvq
  br label %bb.cv

bb.cq:                                            ; preds = %bb.ck
  %i.bvu = icmp slt i32 %i.buy, 400
  br i1 %i.bvu, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.bvv = and i32 %i.buy, 3
  %i.bvw = lshr i32 %i.buy, 2
  %i.bvx = and i32 %i.bvw, 3
  %i.bvy = ashr i32 %i.buy, 4                     ; 2 uses
  %i.bvz = mul nsw i32 %i.bvy, 205
  %i.bwa = ashr i32 %i.bvz, 10                    ; 2 uses
  %.neg77.i353.i = mul nsw i32 %i.bwa, -5
  %i.bwb = add nsw i32 %.neg77.i353.i, %i.bvy
  br label %bb.cv

bb.cs:                                            ; preds = %bb.cq
  %i.bwc = icmp samesign ult i32 %i.buy, 500
  br i1 %i.bwc, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.bwd = add nsw i32 %i.buy, -400
  %i.bwe = and i32 %i.buy, 3
  %i.bwf = lshr i32 %i.bwd, 2                     ; 2 uses
  %i.bwg = mul nuw nsw i32 %i.bwf, 205
  %i.bwh = lshr i32 %i.bwg, 10                    ; 2 uses
  %.neg77.i.i = mul nsw i32 %i.bwh, -5
  %i.bwi = add nsw i32 %.neg77.i.i, %i.bwf
  br label %bb.cv

bb.cu:                                            ; preds = %bb.cs
  %i.bwj = add nsw i32 %i.buy, -500               ; 2 uses
  %i.bwk = mul nuw nsw i32 %i.bwj, 171
  %i.bwl = lshr i32 %i.bwk, 9                     ; 2 uses
  %.neg78.i.i = mul nsw i32 %i.bwl, -3
  %i.bwm = add nsw i32 %.neg78.i.i, %i.bwj
  %i.bwn = getelementptr inbounds nuw i8, ptr %i.axu, i64 64
  store i32 1, ptr %i.bwn, align 16, !tbaa !203
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct, %bb.cr, %bb.cp, %bb.co, %bb.cm
  %.sroa.23.0.i = phi i32 [ 0, %bb.cm ], [ 0, %bb.co ], [ 0, %bb.cp ], [ %i.bvv, %bb.cr ], [ 0, %bb.ct ], [ 0, %bb.cu ] ; 3 uses
  %.sroa.16.0.i = phi i32 [ %i.bvg, %bb.cm ], [ %i.bvm, %bb.co ], [ 0, %bb.cp ], [ %i.bvx, %bb.cr ], [ %i.bwe, %bb.ct ], [ 0, %bb.cu ] ; 3 uses
  %.sroa.9.0.i = phi i32 [ %i.bvj, %bb.cm ], [ %i.bvo, %bb.co ], [ %i.bvt, %bb.cp ], [ %i.bwb, %bb.cr ], [ %i.bwi, %bb.ct ], [ %i.bwm, %bb.cu ] ; 3 uses
  %.sroa.0.0.i = phi i32 [ %i.bvi, %bb.cm ], [ %i.bvp, %bb.co ], [ %i.bvs, %bb.cp ], [ %i.bwa, %bb.cr ], [ %i.bwh, %bb.ct ], [ %i.bwl, %bb.cu ] ; 3 uses
  %.0.i131 = phi i64 [ 3, %bb.cm ], [ 4, %bb.co ], [ 5, %bb.cp ], [ 0, %bb.cr ], [ 1, %bb.ct ], [ 2, %bb.cu ]
  %i.bwo = getelementptr inbounds nuw [12 x i8], ptr @ff_lsf_nsf_table, i64 %.0.i131
  %i.bwp = getelementptr inbounds nuw [4 x i8], ptr %i.bwo, i64 %.0297.i ; 4 uses
  %i.bwq = getelementptr i8, ptr %i.axu, i64 76   ; 9 uses
  %i.bwr = load i8, ptr %i.bwp, align 4, !tbaa !32 ; 5 uses
  %.not346.i = icmp eq i32 %.sroa.0.0.i, 0
  %.not518.i = icmp eq i8 %i.bwr, 0               ; 2 uses
  br i1 %.not346.i, label %.preheader419.i, label %.preheader421.i

.lr.ph483.i:                                      ; preds = %.loopexit420.3.i
  %i.bws = sext i32 %.14.3.i to i64
  %scevgep.i = getelementptr i8, ptr %i.bwq, i64 %i.bws
  %i.bwt = sub i32 39, %.14.3.i
  %i.bwu = zext i32 %i.bwt to i64
  %i.bwv = add nuw nsw i64 %i.bwu, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep.i, i8 0, i64 %i.bwv, i1 false), !tbaa !32
  br label %.loopexit428.i

.preheader421.i:                                  ; preds = %bb.cv
  br i1 %.not518.i, label %.loopexit420.i, label %.lr.ph475.i

.lr.ph475.i:                                      ; preds = %.preheader421.i
  %i.bww = sub nsw i32 32, %.sroa.0.0.i
  %wide.trip.count589.i = zext i8 %i.bwr to i64
  br label %bb.cw

.preheader419.i:                                  ; preds = %bb.cv
  br i1 %.not518.i, label %.loopexit420.i, label %.lr.ph478.preheader.i

.lr.ph478.preheader.i:                            ; preds = %.preheader419.i
  %i.bwx = zext i8 %i.bwr to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bwq, i8 0, i64 range(i64 0, 256) %i.bwx, i1 false), !tbaa !32
  br label %.loopexit420.i

bb.cw:                                            ; preds = %bb.cw, %.lr.ph475.i
  %indvars.iv576.i = phi i64 [ 0, %.lr.ph475.i ], [ %indvars.iv.next577.i, %bb.cw ] ; 2 uses
  %i.bwy = load i32, ptr %i.o, align 8, !tbaa !187 ; 3 uses
  %i.bwz = load i32, ptr %i.n, align 16, !tbaa !186
  %i.bxa = load ptr, ptr %i.h, align 16, !tbaa !184
  %i.bxb = lshr i32 %i.bwy, 3
  %i.bxc = zext nneg i32 %i.bxb to i64
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bxa, i64 %i.bxc
  %i.bxe = load i32, ptr %i.bxd, align 1, !tbaa !32
  %i.bxf = tail call i32 @llvm.bswap.i32(i32 %i.bxe)
  %i.bxg = and i32 %i.bwy, 7
  %i.bxh = shl i32 %i.bxf, %i.bxg
  %i.bxi = lshr i32 %i.bxh, %i.bww
  %i.bxj = add i32 %i.bwy, %.sroa.0.0.i
  %i.bxk = tail call i32 @llvm.umin.i32(i32 %i.bwz, i32 %i.bxj)
  store i32 %i.bxk, ptr %i.o, align 8, !tbaa !187
  %i.bxl = trunc i32 %i.bxi to i8
  %indvars.iv.next577.i = add nuw nsw i64 %indvars.iv576.i, 1 ; 2 uses
  %i.bxm = getelementptr inbounds nuw i8, ptr %i.bwq, i64 %indvars.iv576.i
  store i8 %i.bxl, ptr %i.bxm, align 1, !tbaa !32
  %exitcond590.not.i = icmp eq i64 %indvars.iv.next577.i, %wide.trip.count589.i
  br i1 %exitcond590.not.i, label %.loopexit420.i, label %bb.cw, !llvm.loop !130

.loopexit420.i:                                   ; preds = %bb.cw, %.lr.ph478.preheader.i, %.preheader419.i, %.preheader421.i
  %.14.shrunk.i = phi i8 [ %i.bwr, %.lr.ph478.preheader.i ], [ 0, %.preheader419.i ], [ 0, %.preheader421.i ], [ %i.bwr, %bb.cw ] ; 3 uses
  %.14.i = zext i8 %.14.shrunk.i to i32           ; 3 uses
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bwp, i64 1
  %i.bxo = load i8, ptr %i.bxn, align 1, !tbaa !32 ; 3 uses
  %i.bxp = zext i8 %i.bxo to i32                  ; 2 uses
  %.not346.1.i = icmp eq i32 %.sroa.9.0.i, 0
  %.not518.1.i = icmp eq i8 %i.bxo, 0             ; 2 uses
  br i1 %.not346.1.i, label %.preheader419.1.i, label %.preheader421.1.i

.preheader421.1.i:                                ; preds = %.loopexit420.i
  br i1 %.not518.1.i, label %.loopexit420.1.i, label %.lr.ph475.1.i

.lr.ph475.1.i:                                    ; preds = %.preheader421.1.i
  %i.bxq = sub nsw i32 32, %.sroa.9.0.i
  %i.bxr = zext i8 %.14.shrunk.i to i64
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cx, %.lr.ph475.1.i
  %indvars.iv576.1.i = phi i64 [ %i.bxr, %.lr.ph475.1.i ], [ %indvars.iv.next577.1.i, %bb.cx ] ; 2 uses
  %.11313473.1.i = phi i32 [ 0, %.lr.ph475.1.i ], [ %i.byh, %bb.cx ]
  %i.bxs = load i32, ptr %i.o, align 8, !tbaa !187 ; 3 uses
  %i.bxt = load i32, ptr %i.n, align 16, !tbaa !186
  %i.bxu = load ptr, ptr %i.h, align 16, !tbaa !184
  %i.bxv = lshr i32 %i.bxs, 3
  %i.bxw = zext nneg i32 %i.bxv to i64
  %i.bxx = getelementptr inbounds nuw i8, ptr %i.bxu, i64 %i.bxw
  %i.bxy = load i32, ptr %i.bxx, align 1, !tbaa !32
  %i.bxz = tail call i32 @llvm.bswap.i32(i32 %i.bxy)
  %i.bya = and i32 %i.bxs, 7
  %i.byb = shl i32 %i.bxz, %i.bya
  %i.byc = lshr i32 %i.byb, %i.bxq
  %i.byd = add i32 %i.bxs, %.sroa.9.0.i
end_hunk_1
