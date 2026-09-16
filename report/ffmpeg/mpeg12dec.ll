Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpeg12dec?download=true
inline.NumInlined: 187
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 22
begin_hunk_0_@decode_chunks:bb.a
  %i.avl = icmp eq i8 %i.avk, 1
  br i1 %i.avl, label %bb.ho, label %bb.ia

bb.ho:                                            ; preds = %bb.hn
  %i.avm = getelementptr inbounds nuw i8, ptr %i.fm, i64 2 ; 4 uses
  %or.cond.i.i.i389 = icmp samesign ugt i32 %i.fp, 268435457
  %i.avn = shl nuw i32 %i.fp, 3
  %i.avo = add i32 %i.avn, -16
  %i.avp = select i1 %or.cond.i.i.i389, i32 -8, i32 %i.avo ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i32 %i.avp, 2147483134
  br i1 %or.cond.i.i.i.i, label %slice_end.exit, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.avq = load i32, ptr %i.avm, align 1, !tbaa !56
  %i.avr = lshr i32 %i.avq, 3
  %i.avs = and i32 %i.avr, 31                     ; 3 uses
  %.not304.i.i = icmp eq i32 %i.avs, 0
  br i1 %.not304.i.i, label %slice_end.exit, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.avt = getelementptr inbounds nuw i8, ptr %i.akt, i64 6000 ; 3 uses
  %i.avu = load ptr, ptr %i.avt, align 16, !tbaa !117 ; 2 uses
  %.not239.i.i = icmp eq ptr %i.avu, null
  br i1 %.not239.i.i, label %bb.hs, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 16
  %i.avw = load i64, ptr %i.avv, align 8, !tbaa !207
  %sext240.i.i = shl i64 %i.avw, 32
  %i.avx = ashr exact i64 %sext240.i.i, 32
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %bb.hq
  %i.avy = phi i64 [ %i.avx, %bb.hr ], [ 0, %bb.hq ] ; 2 uses
  %narrow.i.i = mul nuw nsw i32 %i.avs, 3
  %i.avz = zext nneg i32 %narrow.i.i to i64       ; 2 uses
  %i.awa = add nsw i64 %i.avy, %i.avz             ; 2 uses
  %i.awb = icmp ult i64 %i.awa, 6001
  br i1 %i.awb, label %bb.ht, label %slice_end.exit

bb.ht:                                            ; preds = %bb.hs
  %i.awc = call i32 @av_buffer_realloc(ptr noundef nonnull %i.avt, i64 noundef %i.awa) #11
  %i.awd = icmp sgt i32 %i.awc, -1
  br i1 %i.awd, label %bb.hu, label %.critedge.i.i

bb.hu:                                            ; preds = %bb.ht
  %i.awe = load ptr, ptr %i.avt, align 16, !tbaa !117
  %i.awf = getelementptr inbounds nuw i8, ptr %i.awe, i64 8
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !208
  %i.awh = getelementptr inbounds i8, ptr %i.awg, i64 %i.avy ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.awh, i8 0, i64 %i.avz, i1 false)
  %i.awi = add nsw i32 %i.avp, -25
  %i.awj = icmp samesign ugt i32 %i.avp, 30
  br i1 %i.awj, label %.lr.ph323.i.i, label %.critedge.i.i

.lr.ph323.i.i:                                    ; preds = %bb.hu
  %i.awk = getelementptr inbounds nuw i8, ptr %i.akt, i64 3828
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hy, %.lr.ph323.i.i
  %.0199322.i.i = phi ptr [ %i.awh, %.lr.ph323.i.i ], [ %i.aya, %bb.hy ] ; 6 uses
  %.0201321.i.i = phi i32 [ 0, %.lr.ph323.i.i ], [ %i.ayb, %bb.hy ]
  %.sroa.7.0320.i.i = phi i32 [ 5, %.lr.ph323.i.i ], [ %i.awu, %bb.hy ] ; 4 uses
  %i.awl = add nuw nsw i32 %.sroa.7.0320.i.i, 2   ; 2 uses
  %i.awm = lshr i32 %i.awl, 3
  %i.awn = zext nneg i32 %i.awm to i64
  %i.awo = getelementptr inbounds nuw i8, ptr %i.avm, i64 %i.awn
  %i.awp = load i32, ptr %i.awo, align 1, !tbaa !56
  %i.awq = call i32 @llvm.bswap.i32(i32 %i.awp)
  %i.awr = and i32 %i.awl, 7
  %i.aws = shl i32 %i.awq, %i.awr
  %i.awt = lshr i32 %i.aws, 30                    ; 2 uses
  %i.awu = add nuw nsw i32 %.sroa.7.0320.i.i, 26  ; 2 uses
  %.not241.i.i = icmp eq i32 %i.awt, 0
  br i1 %.not241.i.i, label %bb.hw, label %bb.hx

bb.hw:                                            ; preds = %bb.hv
  %i.awv = getelementptr inbounds nuw i8, ptr %.0199322.i.i, i64 1
  store i8 0, ptr %i.awv, align 1, !tbaa !56
  store i8 0, ptr %.0199322.i.i, align 1, !tbaa !56
  br label %bb.hy

bb.hx:                                            ; preds = %bb.hv
  %i.aww = add nuw nsw i32 %.sroa.7.0320.i.i, 17  ; 2 uses
  %i.awx = lshr i32 %i.aww, 3
  %i.awy = zext nneg i32 %i.awx to i64
  %i.awz = getelementptr inbounds nuw i8, ptr %i.avm, i64 %i.awy
  %i.axa = load i32, ptr %i.awz, align 1, !tbaa !56
  %i.axb = call i32 @llvm.bswap.i32(i32 %i.axa)
  %i.axc = and i32 %i.aww, 7
  %i.axd = shl i32 %i.axb, %i.axc
  %i.axe = lshr i32 %i.axd, 24
  %i.axf = add nuw nsw i32 %.sroa.7.0320.i.i, 9   ; 2 uses
  %i.axg = lshr i32 %i.axf, 3
  %i.axh = zext nneg i32 %i.axg to i64
  %i.axi = getelementptr inbounds nuw i8, ptr %i.avm, i64 %i.axh
  %i.axj = load i32, ptr %i.axi, align 1, !tbaa !56
  %i.axk = call i32 @llvm.bswap.i32(i32 %i.axj)
  %i.axl = and i32 %i.axf, 7
  %i.axm = shl i32 %i.axk, %i.axl
  %i.axn = lshr i32 %i.axm, 24
  %i.axo = icmp eq i32 %i.awt, 2
  %i.axp = load i32, ptr %i.awk, align 4, !tbaa !209
  %.not242.i.i = icmp eq i32 %i.axp, 0
  %spec.select.i.i = xor i1 %i.axo, %.not242.i.i
  %i.axq = zext i1 %spec.select.i.i to i8
  %i.axr = or disjoint i8 %i.axq, 4
  store i8 %i.axr, ptr %.0199322.i.i, align 1, !tbaa !56
  %i.axs = zext nneg i32 %i.axn to i64
  %i.axt = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.axs
  %i.axu = load i8, ptr %i.axt, align 1, !tbaa !56
  %i.axv = getelementptr inbounds nuw i8, ptr %.0199322.i.i, i64 1
  store i8 %i.axu, ptr %i.axv, align 1, !tbaa !56
  %i.axw = zext nneg i32 %i.axe to i64
  %i.axx = getelementptr inbounds nuw i8, ptr @ff_reverse, i64 %i.axw
  %i.axy = load i8, ptr %i.axx, align 1, !tbaa !56
  br label %bb.hy

bb.hy:                                            ; preds = %bb.hx, %bb.hw
  %.sink.i.i = phi i8 [ 0, %bb.hw ], [ %i.axy, %bb.hx ]
  %i.axz = getelementptr inbounds nuw i8, ptr %.0199322.i.i, i64 2
  store i8 %.sink.i.i, ptr %i.axz, align 1, !tbaa !56
  %i.aya = getelementptr inbounds nuw i8, ptr %.0199322.i.i, i64 3
  %i.ayb = add nuw nsw i32 %.0201321.i.i, 1       ; 2 uses
  %i.ayc = icmp samesign ult i32 %i.ayb, %i.avs
  %i.ayd = icmp slt i32 %i.awu, %i.awi
  %or.cond301.i.i = and i1 %i.ayc, %i.ayd
  br i1 %or.cond301.i.i, label %bb.hv, label %.critedge.i.i, !llvm.loop !165

.critedge.i.i:                                    ; preds = %bb.hy, %bb.hu, %bb.ht
  %i.aye = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 6008 ; 2 uses
  %i.ayg = load i32, ptr %i.ayf, align 8, !tbaa !204
  %.not.i260.i.i = icmp eq i32 %i.ayg, 0
  br i1 %.not.i260.i.i, label %bb.hz, label %slice_end.exit

bb.hz:                                            ; preds = %.critedge.i.i
  store i32 2, ptr %i.ayf, align 8, !tbaa !204
  br label %.critedge248.sink.split.i.i

bb.ia:                                            ; preds = %bb.hn, %.thread279.i.i
  %.old9.i.i = icmp samesign ugt i32 %i.fp, 10
  %or.cond302.i.i = select i1 %.not.i65.i, i1 %.old9.i.i, i1 false
  br i1 %or.cond302.i.i, label %bb.ic, label %slice_end.exit

bb.ib:                                            ; preds = %.thread75.i
  %i.ayh = icmp eq i32 %i.avd, 3
  %i.ayi = icmp sgt i32 %i.fp, 10
  %or.cond10.i.i = and i1 %i.ayi, %i.ayh
  br i1 %or.cond10.i.i, label %._crit_edge.i.i, label %bb.in

._crit_edge.i.i:                                  ; preds = %bb.ib
  %.pre.i.i384 = load i8, ptr %i.fm, align 1, !tbaa !56
  br label %bb.ic

bb.ic:                                            ; preds = %._crit_edge.i.i, %bb.ia
  %.not.i64.i = phi i1 [ false, %._crit_edge.i.i ], [ true, %bb.ia ]
  %i.ayj = phi i8 [ %.pre.i.i384, %._crit_edge.i.i ], [ %i.avg, %bb.ia ] ; 2 uses
  %i.ayk = icmp eq i8 %i.ayj, 67
  br i1 %i.ayk, label %bb.id, label %bb.im

bb.id:                                            ; preds = %bb.ic
  %i.ayl = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.aym = load i8, ptr %i.ayl, align 1, !tbaa !56
  %i.ayn = icmp eq i8 %i.aym, 67
  br i1 %i.ayn, label %bb.ie, label %bb.im

bb.ie:                                            ; preds = %bb.id
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.fm, i64 2
  %i.ayp = load i8, ptr %i.ayo, align 1, !tbaa !56
  %i.ayq = icmp eq i8 %i.ayp, 1
  br i1 %i.ayq, label %bb.if, label %bb.im

bb.if:                                            ; preds = %bb.ie
  %i.ayr = getelementptr inbounds nuw i8, ptr %i.fm, i64 3
  %i.ays = load i8, ptr %i.ayr, align 1, !tbaa !56
  %i.ayt = icmp eq i8 %i.ays, -8
  br i1 %i.ayt, label %.lr.ph.i.i, label %bb.im

.lr.ph.i.i:                                       ; preds = %bb.if, %bb.ig
  %indvars.iv331.i.i = phi i64 [ %indvars.iv.next332.i.i, %bb.ig ], [ 5, %bb.if ] ; 2 uses
  %indvars.iv.i.i385 = phi i32 [ %indvars.iv.next.i.i388, %bb.ig ], [ 11, %bb.if ]
  %.0198306.i.i = phi i32 [ %i.ayx, %bb.ig ], [ 0, %bb.if ] ; 3 uses
  %i.ayu = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv331.i.i
  %i.ayv = load i8, ptr %i.ayu, align 1, !tbaa !56
  %i.ayw = icmp ugt i8 %i.ayv, -3
  br i1 %i.ayw, label %bb.ig, label %.critedge12.i.i

bb.ig:                                            ; preds = %.lr.ph.i.i
  %i.ayx = add nuw nsw i32 %.0198306.i.i, 1       ; 2 uses
  %indvars.iv.next.i.i388 = add i32 %indvars.iv.i.i385, 6 ; 2 uses
  %.not234.i.i = icmp sgt i32 %indvars.iv.next.i.i388, %i.fp
  %indvars.iv.next332.i.i = add nuw nsw i64 %indvars.iv331.i.i, 6
  br i1 %.not234.i.i, label %.critedge12.thread.i.i, label %.lr.ph.i.i, !llvm.loop !166

.critedge12.i.i:                                  ; preds = %.lr.ph.i.i
  %.not235.i.i = icmp eq i32 %.0198306.i.i, 0
  br i1 %.not235.i.i, label %slice_end.exit, label %.critedge12.thread.i.i

.critedge12.thread.i.i:                           ; preds = %bb.ig, %.critedge12.i.i
  %.0198.lcssa.ph363.i.i = phi i32 [ %.0198306.i.i, %.critedge12.i.i ], [ %i.ayx, %bb.ig ] ; 3 uses
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.akt, i64 6000 ; 3 uses
  %i.ayz = load ptr, ptr %i.ayy, align 16, !tbaa !117 ; 2 uses
  %.not236.i.i = icmp eq ptr %i.ayz, null
  br i1 %.not236.i.i, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %.critedge12.thread.i.i
  %i.aza = getelementptr inbounds nuw i8, ptr %i.ayz, i64 16
  %i.azb = load i64, ptr %i.aza, align 8, !tbaa !207
  %sext237.i.i = shl i64 %i.azb, 32
  %i.azc = ashr exact i64 %sext237.i.i, 32
  br label %bb.ii

bb.ii:                                            ; preds = %bb.ih, %.critedge12.thread.i.i
  %i.azd = phi i64 [ %i.azc, %bb.ih ], [ 0, %.critedge12.thread.i.i ] ; 2 uses
  %i.aze = zext nneg i32 %.0198.lcssa.ph363.i.i to i64
  %i.azf = mul nuw nsw i64 %i.aze, 6
  %i.azg = add nsw i64 %i.azd, %i.azf             ; 2 uses
  %i.azh = icmp ult i64 %i.azg, 6001
  br i1 %i.azh, label %bb.ij, label %slice_end.exit

bb.ij:                                            ; preds = %bb.ii
  %i.azi = call i32 @av_buffer_realloc(ptr noundef nonnull %i.ayy, i64 noundef %i.azg) #11
  %i.azj = icmp sgt i32 %i.azi, -1
  br i1 %i.azj, label %bb.ik, label %.loopexit.i.i

bb.ik:                                            ; preds = %bb.ij
  %i.azk = getelementptr inbounds nuw i8, ptr %i.fm, i64 4
  %i.azl = load i8, ptr %i.azk, align 1, !tbaa !56
  %.fr327.i.i = freeze i8 %i.azl
  %i.azm = load ptr, ptr %i.ayy, align 16, !tbaa !117
  %i.azn = getelementptr inbounds nuw i8, ptr %i.azm, i64 8
  %i.azo = load ptr, ptr %i.azn, align 8, !tbaa !208
  %i.azp = getelementptr inbounds i8, ptr %i.azo, i64 %i.azd ; 2 uses
  %i.azq = getelementptr inbounds nuw i8, ptr %i.fm, i64 5 ; 2 uses
  %i.azr = icmp slt i8 %.fr327.i.i, 0
  br i1 %i.azr, label %.split.split.us.i.i387, label %.split.us.split.i.i386

.split.us.split.i.i386:                           ; preds = %bb.ik, %.split.us.split.i.i386
  %.0196312.us.i.i = phi ptr [ %i.bai, %.split.us.split.i.i386 ], [ %i.azp, %bb.ik ] ; 7 uses
  %.1311.us.i.i = phi i32 [ %i.bak, %.split.us.split.i.i386 ], [ 0, %bb.ik ]
  %.0205310.us.i.i = phi ptr [ %i.baj, %.split.us.split.i.i386 ], [ %i.azq, %bb.ik ] ; 6 uses
  store i8 -3, ptr %.0196312.us.i.i, align 1, !tbaa !56
  %i.azs = getelementptr inbounds nuw i8, ptr %.0205310.us.i.i, i64 1
  %i.azt = load i8, ptr %i.azs, align 1, !tbaa !56
  %i.azu = getelementptr inbounds nuw i8, ptr %.0196312.us.i.i, i64 1
  store i8 %i.azt, ptr %i.azu, align 1, !tbaa !56
  %i.azv = getelementptr inbounds nuw i8, ptr %.0205310.us.i.i, i64 2
  %i.azw = load i8, ptr %i.azv, align 1, !tbaa !56
  %i.azx = getelementptr inbounds nuw i8, ptr %.0196312.us.i.i, i64 2
  store i8 %i.azw, ptr %i.azx, align 1, !tbaa !56
  %i.azy = getelementptr inbounds nuw i8, ptr %.0205310.us.i.i, i64 3
  %i.azz = load i8, ptr %i.azy, align 1, !tbaa !56
  %i.baa = icmp eq i8 %i.azz, -1
  %spec.select324.i.i = select i1 %i.baa, i8 -4, i8 -3
  %i.bab = getelementptr inbounds nuw i8, ptr %.0196312.us.i.i, i64 3
  store i8 %spec.select324.i.i, ptr %i.bab, align 1, !tbaa !56
  %i.bac = getelementptr inbounds nuw i8, ptr %.0205310.us.i.i, i64 4
  %i.bad = load i8, ptr %i.bac, align 1, !tbaa !56
  %i.bae = getelementptr inbounds nuw i8, ptr %.0196312.us.i.i, i64 4
  store i8 %i.bad, ptr %i.bae, align 1, !tbaa !56
  %i.baf = getelementptr inbounds nuw i8, ptr %.0205310.us.i.i, i64 5
  %i.bag = load i8, ptr %i.baf, align 1, !tbaa !56
  %i.bah = getelementptr inbounds nuw i8, ptr %.0196312.us.i.i, i64 5
  store i8 %i.bag, ptr %i.bah, align 1, !tbaa !56
  %i.bai = getelementptr inbounds nuw i8, ptr %.0196312.us.i.i, i64 6
  %i.baj = getelementptr inbounds nuw i8, ptr %.0205310.us.i.i, i64 6
  %i.bak = add nuw nsw i32 %.1311.us.i.i, 1       ; 2 uses
  %exitcond337.not.i.i = icmp eq i32 %i.bak, %.0198.lcssa.ph363.i.i
  br i1 %exitcond337.not.i.i, label %.loopexit.i.i, label %.split.us.split.i.i386, !llvm.loop !167

.split.split.us.i.i387:                           ; preds = %bb.ik, %.split.split.us.i.i387
  %.0196312.us314.i.i = phi ptr [ %i.bba, %.split.split.us.i.i387 ], [ %i.azp, %bb.ik ] ; 7 uses
  %.1311.us315.i.i = phi i32 [ %i.bbc, %.split.split.us.i.i387 ], [ 0, %bb.ik ]
  %.0205310.us316.i.i = phi ptr [ %i.bbb, %.split.split.us.i.i387 ], [ %i.azq, %bb.ik ] ; 6 uses
  %i.bal = load i8, ptr %.0205310.us316.i.i, align 1, !tbaa !56
  %i.bam = icmp eq i8 %i.bal, -1
  %spec.select325.i.i = select i1 %i.bam, i8 -4, i8 -3
  store i8 %spec.select325.i.i, ptr %.0196312.us314.i.i, align 1, !tbaa !56
  %i.ban = getelementptr inbounds nuw i8, ptr %.0205310.us316.i.i, i64 1
  %i.bao = load i8, ptr %i.ban, align 1, !tbaa !56
  %i.bap = getelementptr inbounds nuw i8, ptr %.0196312.us314.i.i, i64 1
  store i8 %i.bao, ptr %i.bap, align 1, !tbaa !56
  %i.baq = getelementptr inbounds nuw i8, ptr %.0205310.us316.i.i, i64 2
  %i.bar = load i8, ptr %i.baq, align 1, !tbaa !56
  %i.bas = getelementptr inbounds nuw i8, ptr %.0196312.us314.i.i, i64 2
  store i8 %i.bar, ptr %i.bas, align 1, !tbaa !56
  %i.bat = getelementptr inbounds nuw i8, ptr %.0196312.us314.i.i, i64 3
  store i8 -3, ptr %i.bat, align 1, !tbaa !56
  %i.bau = getelementptr inbounds nuw i8, ptr %.0205310.us316.i.i, i64 4
  %i.bav = load i8, ptr %i.bau, align 1, !tbaa !56
  %i.baw = getelementptr inbounds nuw i8, ptr %.0196312.us314.i.i, i64 4
  store i8 %i.bav, ptr %i.baw, align 1, !tbaa !56
  %i.bax = getelementptr inbounds nuw i8, ptr %.0205310.us316.i.i, i64 5
  %i.bay = load i8, ptr %i.bax, align 1, !tbaa !56
  %i.baz = getelementptr inbounds nuw i8, ptr %.0196312.us314.i.i, i64 5
  store i8 %i.bay, ptr %i.baz, align 1, !tbaa !56
  %i.bba = getelementptr inbounds nuw i8, ptr %.0196312.us314.i.i, i64 6
  %i.bbb = getelementptr inbounds nuw i8, ptr %.0205310.us316.i.i, i64 6
  %i.bbc = add nuw nsw i32 %.1311.us315.i.i, 1    ; 2 uses
  %exitcond339.not.i.i = icmp eq i32 %i.bbc, %.0198.lcssa.ph363.i.i
  br i1 %exitcond339.not.i.i, label %.loopexit.i.i, label %.split.split.us.i.i387, !llvm.loop !167

.loopexit.i.i:                                    ; preds = %.split.us.split.i.i386, %.split.split.us.i.i387, %bb.ij
  %i.bbd = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.bbe = getelementptr inbounds nuw i8, ptr %i.bbd, i64 6008 ; 2 uses
  %i.bbf = load i32, ptr %i.bbe, align 8, !tbaa !204
  %.not.i262.i.i = icmp eq i32 %i.bbf, 0
  br i1 %.not.i262.i.i, label %bb.il, label %slice_end.exit

bb.il:                                            ; preds = %.loopexit.i.i
  store i32 3, ptr %i.bbe, align 8, !tbaa !204
  br label %.critedge248.sink.split.i.i

bb.im:                                            ; preds = %bb.if, %bb.ie, %bb.id, %bb.ic
  %.old14.i.i = icmp samesign ugt i32 %i.fp, 11
  %or.cond303.i.i = select i1 %.not.i64.i, i1 %.old14.i.i, i1 false
  br i1 %or.cond303.i.i, label %bb.io, label %slice_end.exit

bb.in:                                            ; preds = %bb.ib
  %i.bbg = icmp eq i32 %i.avd, 4
  %i.bbh = icmp sgt i32 %i.fp, 11
  %or.cond15.i.i = and i1 %i.bbh, %i.bbg
  br i1 %or.cond15.i.i, label %._crit_edge342.i.i, label %slice_end.exit

._crit_edge342.i.i:                               ; preds = %bb.in
  %.pre343.i.i = load i8, ptr %i.fm, align 1, !tbaa !56
  br label %bb.io

bb.io:                                            ; preds = %._crit_edge342.i.i, %bb.im
  %i.bbi = phi i8 [ %.pre343.i.i, %._crit_edge342.i.i ], [ %i.ayj, %bb.im ]
  %i.bbj = icmp eq i8 %i.bbi, 5
  br i1 %i.bbj, label %bb.ip, label %slice_end.exit

bb.ip:                                            ; preds = %bb.io
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.bbl = load i8, ptr %i.bbk, align 1, !tbaa !56
  %i.bbm = icmp eq i8 %i.bbl, 2
  br i1 %i.bbm, label %bb.iq, label %slice_end.exit

bb.iq:                                            ; preds = %bb.ip
  %i.bbn = getelementptr inbounds nuw i8, ptr %i.fm, i64 7
  %i.bbo = load i8, ptr %i.bbn, align 1, !tbaa !56 ; 2 uses
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.bbq = add nsw i32 %i.fp, -8
  %i.bbr = icmp eq i8 %i.bbo, 5
  %i.bbs = icmp samesign ugt i32 %i.fp, 14
  %or.cond18.i.i = and i1 %i.bbs, %i.bbr
  br i1 %or.cond18.i.i, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.fm, i64 14
  %i.bbu = load i8, ptr %i.bbt, align 1, !tbaa !56
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.fm, i64 15
  %i.bbw = add nsw i32 %i.fp, -15
  br label %bb.is

bb.is:                                            ; preds = %bb.ir, %bb.iq
  %.1206.i.i = phi ptr [ %i.bbv, %bb.ir ], [ %i.bbp, %bb.iq ] ; 7 uses
  %.0204.i.i = phi i32 [ %i.bbw, %bb.ir ], [ %i.bbq, %bb.iq ] ; 2 uses
  %.0.i.i382 = phi i8 [ %i.bbu, %bb.ir ], [ %i.bbo, %bb.iq ] ; 2 uses
  %i.bbx = icmp eq i8 %.0.i.i382, 2
  %i.bby = icmp samesign ugt i32 %.0204.i.i, 3
  %or.cond21.i.i = select i1 %i.bbx, i1 %i.bby, i1 false
  br i1 %or.cond21.i.i, label %bb.it, label %bb.iv

bb.it:                                            ; preds = %bb.is
  %i.bbz = getelementptr inbounds nuw i8, ptr %.1206.i.i, i64 1
  %i.bca = load i8, ptr %i.bbz, align 1, !tbaa !56 ; 4 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %.1206.i.i, i64 2
  %i.bcc = load i8, ptr %i.bcb, align 1, !tbaa !56 ; 3 uses
  %i.bcd = getelementptr inbounds nuw i8, ptr %.1206.i.i, i64 3
  %i.bce = load i8, ptr %i.bcd, align 1, !tbaa !56
  %i.bcf = icmp eq i8 %i.bce, 4
  %i.bcg = and i8 %i.bca, 96
  %i.bch = icmp eq i8 %i.bcg, 0
  %or.cond254.i.i = select i1 %i.bcf, i1 %i.bch, i1 false
  br i1 %or.cond254.i.i, label %bb.iu, label %bb.ix

bb.iu:                                            ; preds = %bb.it
  br label %bb.ix

bb.iv:                                            ; preds = %bb.is
  %i.bci = icmp eq i8 %.0.i.i382, 4
  %i.bcj = icmp samesign ugt i32 %.0204.i.i, 4
  %or.cond24.i.i = select i1 %i.bci, i1 %i.bcj, i1 false
  br i1 %or.cond24.i.i, label %bb.iw, label %slice_end.exit

bb.iw:                                            ; preds = %bb.iv
  %i.bck = getelementptr inbounds nuw i8, ptr %.1206.i.i, i64 1
  %i.bcl = load i8, ptr %i.bck, align 1, !tbaa !56
  %i.bcm = getelementptr inbounds nuw i8, ptr %.1206.i.i, i64 2
  %i.bcn = load i8, ptr %i.bcm, align 1, !tbaa !56
  %i.bco = getelementptr inbounds nuw i8, ptr %.1206.i.i, i64 3
  %i.bcp = load i8, ptr %i.bco, align 1, !tbaa !56
  %i.bcq = getelementptr inbounds nuw i8, ptr %.1206.i.i, i64 4
  %i.bcr = load i8, ptr %i.bcq, align 1, !tbaa !56
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iw, %bb.iu, %bb.it
  %.sroa.0.0.i.i = phi i8 [ %i.bca, %bb.iu ], [ %i.bcl, %bb.iw ], [ %i.bca, %bb.it ]
  %.sroa.8.0.i.i = phi i8 [ %i.bcc, %bb.iu ], [ %i.bcn, %bb.iw ], [ %i.bcc, %bb.it ]
  %.sroa.12.0.i.i = phi i8 [ %i.bca, %bb.iu ], [ %i.bcp, %bb.iw ], [ 0, %bb.it ]
  %.sroa.15.0.i.i = phi i8 [ %i.bcc, %bb.iu ], [ %i.bcr, %bb.iw ], [ 0, %bb.it ]
  %i.bcs = phi i1 [ true, %bb.iu ], [ true, %bb.iw ], [ false, %bb.it ]
  %.0195.i.i = phi i64 [ 6, %bb.iu ], [ 6, %bb.iw ], [ 3, %bb.it ]
  %i.bct = getelementptr inbounds nuw i8, ptr %i.akt, i64 6000 ; 3 uses
  %i.bcu = load ptr, ptr %i.bct, align 16, !tbaa !117 ; 2 uses
  %.not233.i.i = icmp eq ptr %i.bcu, null
  br i1 %.not233.i.i, label %bb.iz, label %bb.iy

bb.iy:                                            ; preds = %bb.ix
  %i.bcv = getelementptr inbounds nuw i8, ptr %i.bcu, i64 16
  %i.bcw = load i64, ptr %i.bcv, align 8, !tbaa !207
  %sext.i.i383 = shl i64 %i.bcw, 32
  %i.bcx = ashr exact i64 %sext.i.i383, 32
  br label %bb.iz

bb.iz:                                            ; preds = %bb.iy, %bb.ix
  %i.bcy = phi i64 [ %i.bcx, %bb.iy ], [ 0, %bb.ix ] ; 2 uses
  %i.bcz = add nsw i64 %i.bcy, %.0195.i.i         ; 2 uses
  %i.bda = icmp ult i64 %i.bcz, 6001
  br i1 %i.bda, label %bb.ja, label %slice_end.exit

bb.ja:                                            ; preds = %bb.iz
  %i.bdb = call i32 @av_buffer_realloc(ptr noundef nonnull %i.bct, i64 noundef %i.bcz) #11
  %i.bdc = icmp sgt i32 %i.bdb, -1
  br i1 %i.bdc, label %bb.jb, label %bb.jd

bb.jb:                                            ; preds = %bb.ja
  %i.bdd = load ptr, ptr %i.bct, align 16, !tbaa !117
  %i.bde = getelementptr inbounds nuw i8, ptr %i.bdd, i64 8
  %i.bdf = load ptr, ptr %i.bde, align 8, !tbaa !208
  %i.bdg = getelementptr inbounds i8, ptr %i.bdf, i64 %i.bcy ; 6 uses
  store i8 -4, ptr %i.bdg, align 1, !tbaa !56
  %i.bdh = getelementptr inbounds nuw i8, ptr %i.bdg, i64 1
  store i8 %.sroa.0.0.i.i, ptr %i.bdh, align 1, !tbaa !56
  %i.bdi = getelementptr inbounds nuw i8, ptr %i.bdg, i64 2
  store i8 %.sroa.8.0.i.i, ptr %i.bdi, align 1, !tbaa !56
  br i1 %i.bcs, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  %i.bdj = getelementptr inbounds nuw i8, ptr %i.bdg, i64 3
  store i8 -4, ptr %i.bdj, align 1, !tbaa !56
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.bdg, i64 4
  store i8 %.sroa.12.0.i.i, ptr %i.bdk, align 1, !tbaa !56
  %i.bdl = getelementptr inbounds nuw i8, ptr %i.bdg, i64 5
  store i8 %.sroa.15.0.i.i, ptr %i.bdl, align 1, !tbaa !56
  br label %bb.jd

bb.jd:                                            ; preds = %bb.jc, %bb.jb, %bb.ja
  %i.bdm = load ptr, ptr %i.d, align 8, !tbaa !28
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.bdm, i64 6008 ; 2 uses
  %i.bdo = load i32, ptr %i.bdn, align 8, !tbaa !204
  %.not.i264.i.i = icmp eq i32 %i.bdo, 0
  br i1 %.not.i264.i.i, label %bb.je, label %slice_end.exit

bb.je:                                            ; preds = %bb.jd
  store i32 4, ptr %i.bdn, align 8, !tbaa !204
  br label %.critedge248.sink.split.i.i

.critedge248.sink.split.i.i:                      ; preds = %bb.je, %bb.il, %bb.hz, %bb.hk
  %.str.57.sink.i.i = phi ptr [ @.str.57, %bb.je ], [ @.str.56, %bb.il ], [ @.str.55, %bb.hz ], [ @.str.54, %bb.hk ]
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.58, ptr noundef nonnull %.str.57.sink.i.i) #11
  br label %slice_end.exit

bb.jf:                                            ; preds = %bb.t
  %i.bdp = icmp eq i32 %.0250503, 0
  br i1 %i.bdp, label %bb.jg, label %bb.jk

bb.jg:                                            ; preds = %bb.jf
  store i32 0, ptr %i.o, align 4, !tbaa !77
  %or.cond.i.i5.i = icmp ult i32 %i.fp, 268435392
  %i.bdq = icmp ne ptr %i.fm, null
  %or.cond3.i.i.i398 = and i1 %i.bdq, %or.cond.i.i5.i
  br i1 %or.cond3.i.i.i398, label %bb.jh, label %.thread

bb.jh:                                            ; preds = %bb.jg
  %.val = load ptr, ptr %i.d, align 8, !tbaa !28  ; 3 uses
  %i.bdr = load i32, ptr %i.fm, align 1, !tbaa !56
  %i.bds = call i32 @llvm.bswap.i32(i32 %i.bdr)
  %i.bdt = lshr i32 %i.bds, 7                     ; 2 uses
  %i.bdu = zext nneg i32 %i.bdt to i64
  %i.bdv = getelementptr inbounds nuw i8, ptr %.val, i64 6080
  store i64 %i.bdu, ptr %i.bdv, align 16, !tbaa !89
  %i.bdw = getelementptr inbounds nuw i8, ptr %i.fm, i64 3 ; 2 uses
  %i.bdx = load i8, ptr %i.bdw, align 1, !tbaa !56
  %i.bdy = lshr i8 %i.bdx, 6
  %i.bdz = and i8 %i.bdy, 1
  %i.bea = zext nneg i8 %i.bdz to i32
  %i.beb = getelementptr inbounds nuw i8, ptr %.val, i64 6052 ; 2 uses
  store i32 %i.bea, ptr %i.beb, align 4, !tbaa !210
  %i.bec = getelementptr inbounds nuw i8, ptr %.val, i64 344 ; 2 uses
  %i.bed = load ptr, ptr %i.bec, align 8, !tbaa !67
  %i.bee = getelementptr inbounds nuw i8, ptr %i.bed, i64 524
  %i.bef = load i32, ptr %i.bee, align 4, !tbaa !107
  %i.beg = and i32 %i.bef, 1
  %.not.i400 = icmp eq i32 %i.beg, 0
  br i1 %.not.i400, label %bb.jj, label %bb.ji

bb.ji:                                            ; preds = %bb.jh
end_hunk_0
