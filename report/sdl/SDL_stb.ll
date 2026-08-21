inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 27
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 91
begin_hunk_0_@stbi__load_main:bb.a
  br i1 %i.aux, label %.loopexit.i.i.i.i.i.i.i.backedge, label %.preheader98.i.i.i.i.i.i.i

.preheader98.i.i.i.i.i.i.i:                       ; preds = %.preheader98.i.i.i.i.i.i.i.prol.loopexit, %.preheader98.i.i.i.i.i.i.i
  %.5.i.i.i.i.i.i.i = phi ptr [ %i.avv, %.preheader98.i.i.i.i.i.i.i ], [ %.5.i.i.i.i.i.i.i.unr, %.preheader98.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.060.i.i.i.i.i.i.i = phi ptr [ %i.avt, %.preheader98.i.i.i.i.i.i.i ], [ %.060.i.i.i.i.i.i.i.unr, %.preheader98.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.2.i.i.i.i.i.i.i = phi i32 [ %i.avw, %.preheader98.i.i.i.i.i.i.i ], [ %.2.i.i.i.i.i.i.i.unr, %.preheader98.i.i.i.i.i.i.i.prol.loopexit ]
  %i.auy = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 1
  %i.auz = load i8, ptr %.060.i.i.i.i.i.i.i, align 1
  %i.ava = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 1
  store i8 %i.auz, ptr %.5.i.i.i.i.i.i.i, align 1
  %i.avb = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 2
  %i.avc = load i8, ptr %i.auy, align 1
  %i.avd = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 2
  store i8 %i.avc, ptr %i.ava, align 1
  %i.ave = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 3
  %i.avf = load i8, ptr %i.avb, align 1
  %i.avg = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 3
  store i8 %i.avf, ptr %i.avd, align 1
  %i.avh = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 4
  %i.avi = load i8, ptr %i.ave, align 1
  %i.avj = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 4
  store i8 %i.avi, ptr %i.avg, align 1
  %i.avk = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 5
  %i.avl = load i8, ptr %i.avh, align 1
  %i.avm = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 5
  store i8 %i.avl, ptr %i.avj, align 1
  %i.avn = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 6
  %i.avo = load i8, ptr %i.avk, align 1
  %i.avp = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 6
  store i8 %i.avo, ptr %i.avm, align 1
  %i.avq = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 7
  %i.avr = load i8, ptr %i.avn, align 1
  %i.avs = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 7
  store i8 %i.avr, ptr %i.avp, align 1
  %i.avt = getelementptr inbounds nuw i8, ptr %.060.i.i.i.i.i.i.i, i64 8
  %i.avu = load i8, ptr %i.avq, align 1
  %i.avv = getelementptr inbounds nuw i8, ptr %.5.i.i.i.i.i.i.i, i64 8 ; 2 uses
  store i8 %i.avu, ptr %i.avs, align 1
  %i.avw = add nsw i32 %.2.i.i.i.i.i.i.i, -8      ; 2 uses
  %.not79.i.i.i.i.i.i.i.7 = icmp eq i32 %i.avw, 0
  br i1 %.not79.i.i.i.i.i.i.i.7, label %.loopexit.i.i.i.i.i.i.i.backedge, label %.preheader98.i.i.i.i.i.i.i, !llvm.loop !164

.loopexit100.sink.split.i.i.i.i.i.i.i:            ; preds = %bb.kl, %bb.ky, %bb.ks, %bb.km, %bb.jz
  %i.avx = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %stbi__zexpand.exit19.thread.i.i.i.i

stbi__parse_huffman_block.exit.i.i.i.i.i.i:       ; preds = %bb.kl, %stbi__parse_uncompressed_block.exit.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = phi i32 [ %.pr.i.i261.i.i.i.i, %stbi__parse_uncompressed_block.exit.i.i.i.i.i.i ], [ %i.aqk, %bb.kl ]
  %i.avy = phi ptr [ %i.ago, %stbi__parse_uncompressed_block.exit.i.i.i.i.i.i ], [ %.063.i.i.i.i.i.i.i, %bb.kl ] ; 2 uses
  %.not23.i.i.i.i.i.i = icmp eq i32 %i.acm, 0
  br i1 %.not23.i.i.i.i.i.i, label %thread-pre-split.i.i.i.i.i.i, label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.i.i.i, !llvm.loop !165

stbi__zexpand.exit19.thread.i.i.i.i:              ; preds = %stbi__compute_huffman_codes.exit.i.i.i.i.i.i, %bb.ia, %bb.hz, %stbi__zreceive.exit31.i.i.i.i.i.i, %.loopexit100.sink.split.i.i.i.i.i.i.i, %bb.lg, %bb.le, %bb.ld, %bb.lb, %bb.kh, %bb.kf, %bb.ke, %bb.kc, %stbi__compute_huffman_codes.exit.thread.i.i.i.i.i.i, %stbi__parse_uncompressed_block.exit.thread.i.i.i.i.i.i, %stbi__parse_zlib_header.exit.thread.i.i.i.i.i.i
  %i.avz = load ptr, ptr %i.zy, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.avz) #13
  br label %stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread.i.i.i

stbi_zlib_decode_malloc_guesssize_headerflag.exit.thread.i.i.i: ; preds = %stbi__zexpand.exit19.thread.i.i.i.i, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  store ptr null, ptr %i.gt, align 8
  br label %stbi__parse_png_file.exit.thread.i.i

stbi_zlib_decode_malloc_guesssize_headerflag.exit.i.i.i: ; preds = %stbi__parse_huffman_block.exit.i.i.i.i.i.i
  %i.awa = load ptr, ptr %i.zy, align 8           ; 5 uses
  %i.awb = ptrtoint ptr %i.avy to i64
  %i.awc = ptrtoint ptr %i.awa to i64
  %i.awd = sub i64 %i.awb, %i.awc
  %i.awe = trunc i64 %i.awd to i32                ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  store ptr %i.awa, ptr %i.gt, align 8
  %i.awf = icmp eq ptr %i.awa, null
  br i1 %i.awf, label %stbi__parse_png_file.exit.thread.i.i, label %bb.ll

bb.ll:                                            ; preds = %stbi_zlib_decode_malloc_guesssize_headerflag.exit.i.i.i
  %i.awg = load ptr, ptr %i.gu, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.awg) #13
  store ptr null, ptr %i.gu, align 8
  %i.awh = load i32, ptr %i.mt, align 8           ; 2 uses
  %i.awi = add nsw i32 %i.awh, 1                  ; 2 uses
  %i.awj = icmp eq i32 %4, %i.awi
  %i.awk = icmp ne i32 %4, 3
  %or.cond5.not288.not293.i.i.i = and i1 %i.awk, %i.awj
  %i.awl = icmp eq i8 %.0258.i.i.i, 0             ; 3 uses
  %or.cond7.not290.i.i.i = select i1 %or.cond5.not288.not293.i.i.i, i1 %i.awl, i1 false
  %i.awm = icmp ne i8 %.0254.i.i.i, 0
  %or.cond10.i.i.i = select i1 %or.cond7.not290.i.i.i, i1 true, i1 %i.awm
  %spec.select1607.i.i.i = select i1 %or.cond10.i.i.i, i32 %i.awi, i32 %i.awh ; 4 uses
  %i.awn = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  store i32 %spec.select1607.i.i.i, ptr %i.awn, align 4
  %i.awo = load i32, ptr %i.mu, align 8           ; 4 uses
  %i.awp = icmp eq i32 %i.awo, 16
  %i.awq = zext i1 %i.awp to i32
  %i.awr = shl i32 %spec.select1607.i.i.i, %i.awq ; 6 uses
  %.not.i373.i.i.i = icmp eq i32 %.0232.i.i.i, 0
  %i.aws = load ptr, ptr %10, align 8             ; 3 uses
  %i.awt = load i32, ptr %i.aws, align 8          ; 4 uses
  %i.awu = getelementptr inbounds nuw i8, ptr %i.aws, i64 4
  %i.awv = load i32, ptr %i.awu, align 4          ; 5 uses
  br i1 %.not.i373.i.i.i, label %stbi__create_png_image.exit.i.i.i, label %bb.lm

bb.lm:                                            ; preds = %bb.ll
  %i.aww = or i32 %i.awv, %i.awt
  %or.cond.not.i.i.i.i.i.i.i = icmp sgt i32 %i.aww, -1
  br i1 %or.cond.not.i.i.i.i.i.i.i, label %bb.ln, label %stbi__malloc_mad3.exit.thread.i.i.i.i

bb.ln:                                            ; preds = %bb.lm
  %i.awx = icmp eq i32 %i.awv, 0
  br i1 %i.awx, label %stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i.i.i.i

stbi__mul2sizes_valid.exit.i.i.i.i.i.i:           ; preds = %bb.ln
  %i.awy = udiv i32 2147483647, %i.awv
  %.not23.i.i.i374.i.i.i = icmp sgt i32 %i.awt, %i.awy
  br i1 %.not23.i.i.i374.i.i.i, label %stbi__malloc_mad3.exit.thread.i.i.i.i, label %stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i

stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i:  ; preds = %stbi__mul2sizes_valid.exit.i.i.i.i.i.i, %bb.ln
  %i.awz = mul nsw i32 %i.awv, %i.awt             ; 3 uses
  %i.axa = or i32 %i.awr, %i.awz
  %or.cond.not.i10.i.i.i.i.i.i = icmp sgt i32 %i.axa, -1
  br i1 %or.cond.not.i10.i.i.i.i.i.i, label %bb.lo, label %stbi__malloc_mad3.exit.thread.i.i.i.i

bb.lo:                                            ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i
  %i.axb = icmp eq i32 %i.awr, 0
  br i1 %i.axb, label %stbi__malloc_mad3.exit.i.i.i.i, label %stbi__mul2sizes_valid.exit12.i.i.i.i.i.i

stbi__mul2sizes_valid.exit12.i.i.i.i.i.i:         ; preds = %bb.lo
  %i.axc = udiv i32 2147483647, %i.awr
  %.not.i.i.i375.i.i.i = icmp sgt i32 %i.awz, %i.axc
  br i1 %.not.i.i.i375.i.i.i, label %stbi__malloc_mad3.exit.thread.i.i.i.i, label %stbi__malloc_mad3.exit.i.i.i.i

stbi__malloc_mad3.exit.i.i.i.i:                   ; preds = %stbi__mul2sizes_valid.exit12.i.i.i.i.i.i, %bb.lo
  %i.axd = mul nsw i32 %i.awr, %i.awz
  %i.axe = sext i32 %i.axd to i64
  %i.axf = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.axe) #13 ; 6 uses
  %.not92.i.i.i.i = icmp eq ptr %i.axf, null
  br i1 %.not92.i.i.i.i, label %stbi__malloc_mad3.exit.thread.i.i.i.i, label %.preheader100.i.i.i.i

.preheader100.i.i.i.i:                            ; preds = %stbi__malloc_mad3.exit.i.i.i.i
  %i.axg = sext i32 %i.awr to i64                 ; 9 uses
  br label %bb.lp

stbi__malloc_mad3.exit.thread.i.i.i.i:            ; preds = %stbi__malloc_mad3.exit.i.i.i.i, %stbi__mul2sizes_valid.exit12.i.i.i.i.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i.i.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i.i.i.i, %bb.lm
  %i.axh = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %stbi__parse_png_file.exit.thread.i.i

bb.lp:                                            ; preds = %bb.lr, %.preheader100.i.i.i.i
  %i.axi = phi ptr [ %i.aws, %.preheader100.i.i.i.i ], [ %i.baj, %bb.lr ] ; 4 uses
  %indvars.iv112.i.i.i.i = phi i64 [ 0, %.preheader100.i.i.i.i ], [ %indvars.iv.next113.i.i.i.i, %bb.lr ] ; 5 uses
  %.076106.i.i.i.i = phi ptr [ %i.awa, %.preheader100.i.i.i.i ], [ %.379.i.i.i.i, %bb.lr ] ; 3 uses
  %.085104.i.i.i.i = phi i32 [ %i.awe, %.preheader100.i.i.i.i ], [ %.388.i.i.i.i, %bb.lr ] ; 3 uses
  %i.axj = load i32, ptr %i.axi, align 8
  %i.axk = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xorig, i64 %indvars.iv112.i.i.i.i
  %i.axl = load i32, ptr %i.axk, align 4          ; 2 uses
  %i.axm = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.xspc, i64 %indvars.iv112.i.i.i.i
  %i.axn = load i32, ptr %i.axm, align 4          ; 4 uses
  %i.axo = xor i32 %i.axl, -1
  %i.axp = add i32 %i.axj, %i.axo
  %i.axq = add i32 %i.axp, %i.axn                 ; 2 uses
  %i.axr = udiv i32 %i.axq, %i.axn                ; 6 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axi, i64 4
  %i.axt = load i32, ptr %i.axs, align 4
  %i.axu = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yorig, i64 %indvars.iv112.i.i.i.i
  %i.axv = load i32, ptr %i.axu, align 4          ; 2 uses
  %i.axw = getelementptr inbounds nuw [4 x i8], ptr @__const.stbi__create_png_image.yspc, i64 %indvars.iv112.i.i.i.i
  %i.axx = load i32, ptr %i.axw, align 4          ; 4 uses
  %i.axy = xor i32 %i.axv, -1
  %i.axz = add i32 %i.axt, %i.axy
  %i.aya = add i32 %i.axz, %i.axx                 ; 2 uses
  %i.ayb = udiv i32 %i.aya, %i.axx                ; 4 uses
  %i.ayc = icmp ule i32 %i.axn, %i.axq
  %i.ayd = icmp ule i32 %i.axx, %i.aya
  %or.cond.i376.i.i.i = select i1 %i.ayc, i1 %i.ayd, i1 false
  br i1 %or.cond.i376.i.i.i, label %bb.lq, label %bb.lr

bb.lq:                                            ; preds = %bb.lp
  %i.aye = getelementptr inbounds nuw i8, ptr %i.axi, i64 8
  %i.ayf = load i32, ptr %i.aye, align 8
  %i.ayg = mul i32 %i.axr, %i.awo
  %i.ayh = mul i32 %i.ayg, %i.ayf
  %i.ayi = add nsw i32 %i.ayh, 7
  %i.ayj = ashr i32 %i.ayi, 3
  %i.ayk = add nsw i32 %i.ayj, 1
  %i.ayl = mul nsw i32 %i.ayk, %i.ayb             ; 2 uses
  %i.aym = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %10, ptr noundef %.076106.i.i.i.i, i32 noundef %.085104.i.i.i.i, i32 noundef %spec.select1607.i.i.i, i32 noundef %i.axr, i32 noundef %i.ayb, i32 noundef %i.awo, i32 noundef range(i32 0, 256) %.0228.i.i.i)
  %.not93.not.i.i.i.i = icmp eq i32 %i.aym, 0
  %.pre.i = load ptr, ptr %10, align 8            ; 4 uses
  br i1 %.not93.not.i.i.i.i, label %.thread.i382.i.i.i, label %.preheader99.i.i.i.i

.preheader99.i.i.i.i:                             ; preds = %bb.lq
  %i.ayn = icmp sgt i32 %i.ayb, 0
  %i.ayo = icmp sgt i32 %i.axr, 0
  %or.cond107.i.i.i.i = and i1 %i.ayo, %i.ayn
  %.pre.i378.i.i.i = load ptr, ptr %i.gv, align 8 ; 4 uses
  br i1 %or.cond107.i.i.i.i, label %.preheader.lr.ph.split.i.i.i.i, label %._crit_edge103.split.i.i.i.i

.preheader.lr.ph.split.i.i.i.i:                   ; preds = %.preheader99.i.i.i.i
  %i.ayp = sext i32 %i.axn to i64                 ; 3 uses
  %i.ayq = sext i32 %i.axl to i64                 ; 3 uses
  %i.ayr = zext nneg i32 %i.axr to i64            ; 3 uses
  %i.ays = zext nneg i32 %i.ayb to i64
  %xtraiter798 = and i64 %i.ayr, 1
  %11 = icmp eq i32 %i.axr, 1
  %unroll_iter802 = and i64 %i.ayr, 2147483646
  %lcmp.mod800.not = icmp eq i64 %xtraiter798, 0
  %lcmp.mod801 = trunc i32 %i.axr to i1
  br label %.preheader.i379.i.i.i

.thread.i382.i.i.i:                               ; preds = %bb.lq
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.axf) #13
  br label %stbi__parse_png_file.exit.thread.i.i

.preheader.i379.i.i.i:                            ; preds = %._crit_edge.i.i.i.i, %.preheader.lr.ph.split.i.i.i.i
  %indvars.iv109.i.i.i.i = phi i64 [ 0, %.preheader.lr.ph.split.i.i.i.i ], [ %indvars.iv.next110.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ayt = trunc i64 %indvars.iv109.i.i.i.i to i32
  %i.ayu = mul i32 %i.axx, %i.ayt
  %i.ayv = add i32 %i.ayu, %i.axv
  %i.ayw = mul i32 %i.ayv, %i.awr                 ; 3 uses
  %i.ayx = mul nuw nsw i64 %indvars.iv109.i.i.i.i, %i.ayr ; 3 uses
  br i1 %11, label %.epil.preheader797, label %.preheader.i379.i.i.i.new

.preheader.i379.i.i.i.new:                        ; preds = %.preheader.i379.i.i.i, %.preheader.i379.i.i.i.new
  %indvars.iv.i380.i.i.i = phi i64 [ %indvars.iv.next.i381.i.i.i.1, %.preheader.i379.i.i.i.new ], [ 0, %.preheader.i379.i.i.i ] ; 4 uses
  %niter803 = phi i64 [ %niter803.next.1, %.preheader.i379.i.i.i.new ], [ 0, %.preheader.i379.i.i.i ]
  %i.ayy = mul nsw i64 %indvars.iv.i380.i.i.i, %i.ayp
  %i.ayz = add nsw i64 %i.ayy, %i.ayq
  %i.aza = load i32, ptr %.pre.i, align 8
  %i.azb = mul i32 %i.ayw, %i.aza
  %i.azc = zext i32 %i.azb to i64
  %i.azd = getelementptr inbounds nuw i8, ptr %i.axf, i64 %i.azc
  %i.aze = mul nsw i64 %i.ayz, %i.axg
  %i.azf = getelementptr inbounds i8, ptr %i.azd, i64 %i.aze
  %i.azg = add nuw nsw i64 %indvars.iv.i380.i.i.i, %i.ayx
  %i.azh = mul nsw i64 %i.azg, %i.axg
  %i.azi = getelementptr inbounds i8, ptr %.pre.i378.i.i.i, i64 %i.azh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.azf, ptr align 1 %i.azi, i64 %i.axg, i1 false)
  %indvars.iv.next.i381.i.i.i = or disjoint i64 %indvars.iv.i380.i.i.i, 1 ; 2 uses
  %i.azj = mul nsw i64 %indvars.iv.next.i381.i.i.i, %i.ayp
  %i.azk = add nsw i64 %i.azj, %i.ayq
  %i.azl = load i32, ptr %.pre.i, align 8
  %i.azm = mul i32 %i.ayw, %i.azl
  %i.azn = zext i32 %i.azm to i64
  %i.azo = getelementptr inbounds nuw i8, ptr %i.axf, i64 %i.azn
  %i.azp = mul nsw i64 %i.azk, %i.axg
  %i.azq = getelementptr inbounds i8, ptr %i.azo, i64 %i.azp
  %i.azr = add nuw nsw i64 %indvars.iv.next.i381.i.i.i, %i.ayx
  %i.azs = mul nsw i64 %i.azr, %i.axg
  %i.azt = getelementptr inbounds i8, ptr %.pre.i378.i.i.i, i64 %i.azs
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.azq, ptr align 1 %i.azt, i64 %i.axg, i1 false)
  %indvars.iv.next.i381.i.i.i.1 = add nuw nsw i64 %indvars.iv.i380.i.i.i, 2 ; 2 uses
  %niter803.next.1 = add i64 %niter803, 2         ; 2 uses
  %niter803.ncmp.1.not = icmp eq i64 %niter803.next.1, %unroll_iter802
  br i1 %niter803.ncmp.1.not, label %._crit_edge.i.i.i.i.unr-lcssa, label %.preheader.i379.i.i.i.new, !llvm.loop !166

._crit_edge.i.i.i.i.unr-lcssa:                    ; preds = %.preheader.i379.i.i.i.new
  br i1 %lcmp.mod800.not, label %._crit_edge.i.i.i.i, label %.epil.preheader797

.epil.preheader797:                               ; preds = %._crit_edge.i.i.i.i.unr-lcssa, %.preheader.i379.i.i.i
  %indvars.iv.i380.i.i.i.epil.init = phi i64 [ 0, %.preheader.i379.i.i.i ], [ %indvars.iv.next.i381.i.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod801)
  %i.azu = mul nsw i64 %indvars.iv.i380.i.i.i.epil.init, %i.ayp
  %i.azv = add nsw i64 %i.azu, %i.ayq
  %i.azw = load i32, ptr %.pre.i, align 8
  %i.azx = mul i32 %i.ayw, %i.azw
  %i.azy = zext i32 %i.azx to i64
  %i.azz = getelementptr inbounds nuw i8, ptr %i.axf, i64 %i.azy
  %i.baa = mul nsw i64 %i.azv, %i.axg
  %i.bab = getelementptr inbounds i8, ptr %i.azz, i64 %i.baa
  %i.bac = add nuw nsw i64 %indvars.iv.i380.i.i.i.epil.init, %i.ayx
  %i.bad = mul nsw i64 %i.bac, %i.axg
  %i.bae = getelementptr inbounds i8, ptr %.pre.i378.i.i.i, i64 %i.bad
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bab, ptr align 1 %i.bae, i64 %i.axg, i1 false)
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.unr-lcssa, %.epil.preheader797
  %indvars.iv.next110.i.i.i.i = add nuw nsw i64 %indvars.iv109.i.i.i.i, 1 ; 2 uses
  %i.baf = icmp samesign ult i64 %indvars.iv.next110.i.i.i.i, %i.ays
  br i1 %i.baf, label %.preheader.i379.i.i.i, label %._crit_edge103.split.i.i.i.i, !llvm.loop !167

._crit_edge103.split.i.i.i.i:                     ; preds = %._crit_edge.i.i.i.i, %.preheader99.i.i.i.i
  tail call void @SDL_free_REAL(ptr noundef %.pre.i378.i.i.i) #13
  %i.bag = zext i32 %i.ayl to i64
  %i.bah = getelementptr inbounds nuw i8, ptr %.076106.i.i.i.i, i64 %i.bag
  %i.bai = sub i32 %.085104.i.i.i.i, %i.ayl
  br label %bb.lr

bb.lr:                                            ; preds = %._crit_edge103.split.i.i.i.i, %bb.lp
  %i.baj = phi ptr [ %i.axi, %bb.lp ], [ %.pre.i, %._crit_edge103.split.i.i.i.i ]
  %.388.i.i.i.i = phi i32 [ %.085104.i.i.i.i, %bb.lp ], [ %i.bai, %._crit_edge103.split.i.i.i.i ]
  %.379.i.i.i.i = phi ptr [ %.076106.i.i.i.i, %bb.lp ], [ %i.bah, %._crit_edge103.split.i.i.i.i ]
  %indvars.iv.next113.i.i.i.i = add nuw nsw i64 %indvars.iv112.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i377.i.i.i = icmp eq i64 %indvars.iv.next113.i.i.i.i, 7
  br i1 %exitcond.not.i377.i.i.i, label %stbi__create_png_image.exit.thread436.i.i.i, label %bb.lp, !llvm.loop !168

stbi__create_png_image.exit.thread436.i.i.i:      ; preds = %bb.lr
  store ptr %i.axf, ptr %i.gv, align 8
  br label %bb.ls

stbi__create_png_image.exit.i.i.i:                ; preds = %bb.ll
  %i.bak = call fastcc i32 @stbi__create_png_image_raw(ptr noundef nonnull %10, ptr noundef nonnull readonly %i.awa, i32 noundef %i.awe, i32 noundef %spec.select1607.i.i.i, i32 noundef %i.awt, i32 noundef %i.awv, i32 noundef %i.awo, i32 noundef range(i32 0, 256) %.0228.i.i.i)
  %.not294.i.i.i = icmp eq i32 %i.bak, 0
  br i1 %.not294.i.i.i, label %stbi__parse_png_file.exit.thread.i.i, label %bb.ls

bb.ls:                                            ; preds = %stbi__create_png_image.exit.i.i.i, %stbi__create_png_image.exit.thread436.i.i.i
  %.not295.i.i.i = icmp eq i8 %.0254.i.i.i, 0
  br i1 %.not295.i.i.i, label %stbi__compute_transparency16.exit.thread.i.i.i, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.bal = load i32, ptr %i.mu, align 8
  %i.bam = icmp eq i32 %i.bal, 16
  %i.ban = load i32, ptr %i.awn, align 4
  %.val.i.i.i = load ptr, ptr %10, align 8        ; 2 uses
  %.val325.i.i.i = load ptr, ptr %i.gv, align 8   ; 8 uses
  %.val.val.i.i.i = load i32, ptr %.val.i.i.i, align 8
  %i.bao = getelementptr i8, ptr %.val.i.i.i, i64 4
  %.val.val326.i.i.i = load i32, ptr %i.bao, align 4
  %i.bap = mul i32 %.val.val326.i.i.i, %.val.val.i.i.i ; 15 uses
  %i.baq = icmp eq i32 %i.ban, 2                  ; 2 uses
  %.not8.i.i.i.i = icmp eq i32 %i.bap, 0          ; 4 uses
  br i1 %i.bam, label %bb.lu, label %bb.me

bb.lu:                                            ; preds = %bb.lt
  br i1 %i.baq, label %.preheader.i384.i.i.i, label %.preheader1.i.i.i.i

.preheader1.i.i.i.i:                              ; preds = %bb.lu
  br i1 %.not8.i.i.i.i, label %stbi__compute_transparency16.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader1.i.i.i.i
  %i.bar = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %i.bas = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.bat = load i16, ptr %i.f, align 2            ; 3 uses
  %i.bau = load i16, ptr %i.bar, align 2          ; 3 uses
  %i.bav = load i16, ptr %i.bas, align 2          ; 3 uses
  %xtraiter818 = and i32 %i.bap, 1
  %i.baw = icmp eq i32 %i.bap, 1
  br i1 %i.baw, label %.epil.preheader817, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter822 = and i32 %i.bap, -2
  br label %bb.lv

.preheader.i384.i.i.i:                            ; preds = %bb.lu
  br i1 %.not8.i.i.i.i, label %stbi__compute_transparency16.exit.i.i.i, label %.lr.ph7.i.preheader.i.i.i

.lr.ph7.i.preheader.i.i.i:                        ; preds = %.preheader.i384.i.i.i
  %i.bax = load i16, ptr %i.f, align 2            ; 5 uses
  %xtraiter824 = and i32 %i.bap, 3                ; 3 uses
  %i.bay = icmp ult i32 %i.bap, 4
  br i1 %i.bay, label %.lr.ph7.i.i.i.i.epil.preheader, label %.lr.ph7.i.preheader.i.i.i.new

.lr.ph7.i.preheader.i.i.i.new:                    ; preds = %.lr.ph7.i.preheader.i.i.i
  %unroll_iter828 = and i32 %i.bap, -4
  br label %.lr.ph7.i.i.i.i

.lr.ph7.i.i.i.i:                                  ; preds = %.lr.ph7.i.i.i.i, %.lr.ph7.i.preheader.i.i.i.new
  %.06.i.i.i.i = phi ptr [ %.val325.i.i.i, %.lr.ph7.i.preheader.i.i.i.new ], [ %i.bbs, %.lr.ph7.i.i.i.i ] ; 9 uses
  %niter829 = phi i32 [ 0, %.lr.ph7.i.preheader.i.i.i.new ], [ %niter829.next.3, %.lr.ph7.i.i.i.i ]
  %i.baz = load i16, ptr %.06.i.i.i.i, align 2
  %i.bba = icmp ne i16 %i.baz, %i.bax
  %i.bbb = sext i1 %i.bba to i16
  %i.bbc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 2
  store i16 %i.bbb, ptr %i.bbc, align 2
  %i.bbd = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4
  %i.bbe = load i16, ptr %i.bbd, align 2
  %i.bbf = icmp ne i16 %i.bbe, %i.bax
  %i.bbg = sext i1 %i.bbf to i16
  %i.bbh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 6
  store i16 %i.bbg, ptr %i.bbh, align 2
  %i.bbi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.bbj = load i16, ptr %i.bbi, align 2
  %i.bbk = icmp ne i16 %i.bbj, %i.bax
  %i.bbl = sext i1 %i.bbk to i16
  %i.bbm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 10
  store i16 %i.bbl, ptr %i.bbm, align 2
  %i.bbn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 12
  %i.bbo = load i16, ptr %i.bbn, align 2
  %i.bbp = icmp ne i16 %i.bbo, %i.bax
  %i.bbq = sext i1 %i.bbp to i16
  %i.bbr = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 14
  store i16 %i.bbq, ptr %i.bbr, align 2
  %i.bbs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16 ; 2 uses
  %niter829.next.3 = add i32 %niter829, 4         ; 2 uses
  %niter829.ncmp.3 = icmp eq i32 %niter829.next.3, %unroll_iter828
  br i1 %niter829.ncmp.3, label %stbi__compute_transparency16.exit.i.i.i.loopexit.unr-lcssa, label %.lr.ph7.i.i.i.i, !llvm.loop !169

bb.lv:                                            ; preds = %bb.md, %.lr.ph.i.i.i.i.new
  %.14.i.i.i.i = phi ptr [ %.val325.i.i.i, %.lr.ph.i.i.i.i.new ], [ %i.bcm, %bb.md ] ; 9 uses
  %niter823 = phi i32 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter823.next.1, %bb.md ]
  %i.bbt = load i16, ptr %.14.i.i.i.i, align 2
  %i.bbu = icmp eq i16 %i.bbt, %i.bat
  br i1 %i.bbu, label %bb.lw, label %bb.lz

bb.lw:                                            ; preds = %bb.lv
  %i.bbv = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 2
  %i.bbw = load i16, ptr %i.bbv, align 2
  %i.bbx = icmp eq i16 %i.bbw, %i.bau
  br i1 %i.bbx, label %bb.lx, label %bb.lz

bb.lx:                                            ; preds = %bb.lw
  %i.bby = getelementptr inbounds nuw i8, ptr %.14.i.i.i.i, i64 4
  %i.bbz = load i16, ptr %i.bby, align 2
  %i.bca = icmp eq i16 %i.bbz, %i.bav
  br i1 %i.bca, label %bb.ly, label %bb.lz
end_hunk_0
begin_hunk_1_@stbi__zbuild_huffman:bb.a
  %i.cu = getelementptr inbounds [2 x i8], ptr %i.by, i64 %i.cr
  store i16 %i.ct, ptr %i.cu, align 2
  %i.cv = icmp ult i8 %i.ca, 10
  br i1 %i.cv, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.g
  %trunc.i.i = trunc i32 %i.ce to i16
  %rev.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i)
  %i.cw = zext i16 %rev.i.i to i32
  %i.cx = sub nuw nsw i32 16, %i.cb
  %i.cy = lshr i32 %i.cw, %i.cx
  %i.cz = shl nuw nsw i32 1, %i.cb
  %i.da = zext nneg i32 %i.cy to i64
  %i.db = zext nneg i32 %i.cz to i64
  br label %bb.h

bb.h:                                             ; preds = %iter.check, %bb.h
  %indvars.iv91 = phi i64 [ %i.da, %iter.check ], [ %indvars.iv.next92, %bb.h ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv91
  store i16 %i.cq, ptr %i.dc, align 2
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, %i.db ; 2 uses
  %i.dd = icmp samesign ult i64 %indvars.iv.next92, 512
  br i1 %i.dd, label %bb.h, label %.loopexit, !llvm.loop !224

.loopexit:                                        ; preds = %bb.h, %bb.g
  %i.de = add nsw i32 %i.ce, 1
  store i32 %i.de, ptr %i.cd, align 4
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %bb.f
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %exitcond98.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count97
  br i1 %exitcond98.not, label %.loopexit70, label %bb.f, !llvm.loop !225

.loopexit70.sink.split:                           ; preds = %bb.c, %._crit_edge, %._crit_edge.thread, %bb.b
  %i.df = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %.loopexit70

.loopexit70:                                      ; preds = %bb.i, %.loopexit70.sink.split, %bb.e
  %.065 = phi i32 [ 1, %bb.e ], [ 0, %.loopexit70.sink.split ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.065
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 65536) i32 @stbi__zhuffman_decode(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8              ; 4 uses
  %i.c = icmp slt i32 %i.b, 16
  br i1 %i.c, label %bb.b, label %stbi__fill_bits.exit

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val20 = load ptr, ptr %i.d, align 8           ; 3 uses
  %.not22 = icmp ult ptr %.val, %.val20
  br i1 %.not22, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %.not18 = icmp eq i32 %i.f, 0
  br i1 %.not18, label %bb.d, label %stbi__zhuffman_decode_slowpath.exit

bb.d:                                             ; preds = %bb.c
  store i32 1, ptr %i.e, align 4
  %i.g = add nsw i32 %i.b, 16                     ; 2 uses
  store i32 %i.g, ptr %i.a, align 8
  br label %stbi__fill_bits.exit

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.promoted.i = load i32, ptr %i.h, align 8
  br label %bb.f

bb.f:                                             ; preds = %stbi__zget8.exit.i, %bb.e
  %.val.i.i = phi ptr [ %.val.i.i23, %stbi__zget8.exit.i ], [ %.val, %bb.e ] ; 4 uses
  %i.i = phi i32 [ %i.q, %stbi__zget8.exit.i ], [ %i.b, %bb.e ] ; 5 uses
  %i.j = phi i32 [ %i.p, %stbi__zget8.exit.i ], [ %.promoted.i, %bb.e ] ; 2 uses
  %.highbits.i = lshr i32 %i.j, %i.i
  %.not.i = icmp eq i32 %.highbits.i, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %.val20, ptr %0, align 8
  br label %stbi__fill_bits.exit

bb.h:                                             ; preds = %bb.f
  %.not3.i.i = icmp ult ptr %.val.i.i, %.val20
  br i1 %.not3.i.i, label %bb.i, label %stbi__zget8.exit.i

bb.i:                                             ; preds = %bb.h
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 1 ; 2 uses
  store ptr %i.k, ptr %0, align 8
  %i.l = load i8, ptr %.val.i.i, align 1
  %i.m = zext i8 %i.l to i32
  br label %stbi__zget8.exit.i

stbi__zget8.exit.i:                               ; preds = %bb.i, %bb.h
  %.val.i.i23 = phi ptr [ %i.k, %bb.i ], [ %.val.i.i, %bb.h ]
  %i.n = phi i32 [ %i.m, %bb.i ], [ 0, %bb.h ]
  %i.o = shl i32 %i.n, %i.i
  %i.p = or i32 %i.o, %i.j                        ; 2 uses
  store i32 %i.p, ptr %i.h, align 8
  %i.q = add nsw i32 %i.i, 8                      ; 3 uses
  store i32 %i.q, ptr %i.a, align 8
  %i.r = icmp slt i32 %i.i, 17
  br i1 %i.r, label %bb.f, label %stbi__fill_bits.exit, !llvm.loop !154

stbi__fill_bits.exit:                             ; preds = %stbi__zget8.exit.i, %bb.g, %bb.d, %bb.a
  %i.s = phi i32 [ %i.b, %bb.a ], [ %i.i, %bb.g ], [ %i.g, %bb.d ], [ %i.q, %stbi__zget8.exit.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.u = load i32, ptr %i.t, align 8              ; 4 uses
  %i.v = and i32 %i.u, 511
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2              ; 2 uses
  %.not19 = icmp eq i16 %i.y, 0
  br i1 %.not19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %stbi__fill_bits.exit
  %i.z = zext i16 %i.y to i32                     ; 2 uses
  %i.aa = lshr i32 %i.z, 9                        ; 2 uses
  %i.ab = lshr i32 %i.u, %i.aa
  store i32 %i.ab, ptr %i.t, align 8
  %i.ac = sub nsw i32 %i.s, %i.aa
  store i32 %i.ac, ptr %i.a, align 8
  %i.ad = and i32 %i.z, 511
  br label %stbi__zhuffman_decode_slowpath.exit

bb.k:                                             ; preds = %stbi__fill_bits.exit
  %trunc.i.i.i = trunc i32 %i.u to i16
  %rev.i.i.i = tail call i16 @llvm.bitreverse.i16(i16 %trunc.i.i.i)
  %i.ae = zext i16 %rev.i.i.i to i32              ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 1056
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 10, %bb.k ] ; 7 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = icmp sgt i32 %i.ah, %i.ae
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br i1 %i.ai, label %bb.m, label %bb.l

bb.m:                                             ; preds = %bb.l
  %i.aj = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  %i.ak = icmp samesign ugt i64 %indvars.iv.i, 15
  br i1 %i.ak, label %stbi__zhuffman_decode_slowpath.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = sub nuw nsw i32 16, %i.aj
  %i.am = lshr i32 %i.ae, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv.i
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = zext i16 %i.ap to i32
  %i.ar = sub nsw i32 %i.am, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 1124
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.au = load i16, ptr %i.at, align 2
  %i.av = zext i16 %i.au to i32
  %i.aw = add nsw i32 %i.ar, %i.av                ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 287
  br i1 %i.ax, label %stbi__zhuffman_decode_slowpath.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 1156
  %i.az = sext i32 %i.aw to i64                   ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i64
  %.not.i21 = icmp eq i64 %indvars.iv.i, %i.bc
  br i1 %.not.i21, label %bb.p, label %stbi__zhuffman_decode_slowpath.exit

bb.p:                                             ; preds = %bb.o
  %i.bd = lshr i32 %i.u, %i.aj
  store i32 %i.bd, ptr %i.t, align 8
  %i.be = sub nsw i32 %i.s, %i.aj
  store i32 %i.be, ptr %i.a, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 1444
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.az
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = zext i16 %i.bh to i32
  br label %stbi__zhuffman_decode_slowpath.exit

stbi__zhuffman_decode_slowpath.exit:              ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.c, %bb.j
  %.0 = phi i32 [ -1, %bb.c ], [ %i.ad, %bb.j ], [ %i.bi, %bb.p ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.o ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @stbi__create_png_image_raw(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 2 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = mul i32 %4, %3
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8              ; 6 uses
  %i.h = shl i32 %3, %i.d                         ; 4 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %stbi__malloc_mad3.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 3 uses
  br i1 %i.k, label %stbi__mul2sizes_valid.exit.thread15.i.i, label %stbi__mul2sizes_valid.exit.i.i

stbi__mul2sizes_valid.exit.i.i:                   ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i.i

stbi__mul2sizes_valid.exit.thread15.i.i:          ; preds = %stbi__mul2sizes_valid.exit.i.i, %bb.b
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %stbi__malloc_mad3.exit.thread

bb.c:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %stbi__malloc_mad3.exit, label %stbi__mul2sizes_valid.exit12.i.i

stbi__mul2sizes_valid.exit12.i.i:                 ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %stbi__malloc_mad3.exit.thread, label %stbi__malloc_mad3.exit

stbi__malloc_mad3.exit.thread:                    ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i, %stbi__mul2sizes_valid.exit12.i.i, %stbi__mul2sizes_valid.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8
  br label %bb.d

stbi__malloc_mad3.exit:                           ; preds = %bb.c, %stbi__mul2sizes_valid.exit12.i.i
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.s) #13 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %stbi__malloc_mad3.exit.thread, %stbi__malloc_mad3.exit
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.ak

bb.e:                                             ; preds = %stbi__malloc_mad3.exit
  %i.w = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.w, -1
  br i1 %or.cond.not.i.i, label %bb.f, label %stbi__mad3sizes_valid.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i32 %4, 0                        ; 3 uses
  br i1 %i.x, label %stbi__mul2sizes_valid.exit.thread15.i, label %stbi__mul2sizes_valid.exit.i

stbi__mul2sizes_valid.exit.i:                     ; preds = %bb.f
  %i.y = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.y
  br i1 %.not23.i, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mul2sizes_valid.exit.thread15.i

stbi__mul2sizes_valid.exit.thread15.i:            ; preds = %stbi__mul2sizes_valid.exit.i, %bb.f
  %i.z = mul i32 %i.g, %4                         ; 18 uses
  %i.aa = or i32 %i.z, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.aa, -1
  br i1 %or.cond.not.i10.i, label %bb.g, label %stbi__mad3sizes_valid.exit.thread

bb.g:                                             ; preds = %stbi__mul2sizes_valid.exit.thread15.i
  %i.ab = icmp eq i32 %6, 0
  br i1 %i.ab, label %stbi__mad3sizes_valid.exit._crit_edge, label %stbi__mul2sizes_valid.exit12.i

stbi__mul2sizes_valid.exit12.i:                   ; preds = %bb.g
  %i.ac = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.z, %i.ac
  %i.ad = mul i32 %i.z, %6                        ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 2147483640
  %or.cond = or i1 %.not.i, %i.ae
  br i1 %or.cond, label %stbi__mad3sizes_valid.exit.thread, label %stbi__mad3sizes_valid.exit._crit_edge

stbi__mad3sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.thread15.i, %bb.e, %stbi__mul2sizes_valid.exit.i, %stbi__mul2sizes_valid.exit12.i
  %i.af = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.ak

stbi__mad3sizes_valid.exit._crit_edge:            ; preds = %bb.g, %stbi__mul2sizes_valid.exit12.i
  %.pre-phi = phi i32 [ %i.ad, %stbi__mul2sizes_valid.exit12.i ], [ 0, %bb.g ]
  %i.ag = add i32 %.pre-phi, 7
  %i.ah = lshr i32 %i.ag, 3                       ; 13 uses
  br i1 %i.k, label %stbi__mad2sizes_valid.exit, label %stbi__mul2sizes_valid.exit.i299

stbi__mul2sizes_valid.exit.i299:                  ; preds = %stbi__mad3sizes_valid.exit._crit_edge
  %i.ai = udiv i32 2147483647, %5
  %.not10.i = icmp samesign ugt i32 %i.ah, %i.ai
  br i1 %.not10.i, label %stbi__mad2sizes_valid.exit.thread, label %stbi__mad2sizes_valid.exit

stbi__mad2sizes_valid.exit:                       ; preds = %stbi__mad3sizes_valid.exit._crit_edge, %stbi__mul2sizes_valid.exit.i299
  %i.aj = mul nuw nsw i32 %i.ah, %5
  %i.ak = xor i32 %i.ah, 2147483647
  %.not330 = icmp sgt i32 %i.aj, %i.ak
  br i1 %.not330, label %stbi__mad2sizes_valid.exit.thread, label %bb.h

stbi__mad2sizes_valid.exit.thread:                ; preds = %stbi__mul2sizes_valid.exit.i299, %stbi__mad2sizes_valid.exit
  %i.al = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.ak

bb.h:                                             ; preds = %stbi__mad2sizes_valid.exit
  %i.am = add nuw nsw i32 %i.ah, 1
  %i.an = mul i32 %i.am, %5
  %i.ao = icmp ult i32 %2, %i.an
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.aq = shl nuw nsw i32 %i.ah, 1
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = tail call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.ar) #13 ; 6 uses
  %.not283 = icmp eq ptr %i.as, null
  br i1 %.not283, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.ak

bb.l:                                             ; preds = %bb.j
  %i.au = icmp slt i32 %6, 8                      ; 3 uses
  br i1 %i.k, label %._crit_edge, label %.lr.ph400

.lr.ph400:                                        ; preds = %bb.l
  %spec.select = select i1 %i.au, i32 1, i32 %i.i ; 10 uses
  %spec.select297 = select i1 %i.au, i32 %i.ah, i32 %4
  %i.av = zext nneg i32 %i.ah to i64
  %i.aw = mul i32 %spec.select297, %spec.select   ; 6 uses
  %i.ax = sext i32 %spec.select to i64            ; 40 uses
  %i.ay = icmp slt i32 %spec.select, %i.aw        ; 4 uses
  %i.az = icmp sgt i32 %spec.select, 0            ; 2 uses
  %i.ba = icmp sgt i32 %i.aw, 0
  %i.bb = sext i32 %i.aw to i64                   ; 13 uses
  %i.bc = icmp eq i32 %6, 8
  %i.bd = icmp eq i32 %i.g, %3                    ; 3 uses
  %i.be = icmp eq i32 %i.g, 1                     ; 3 uses
  %.not404 = icmp eq i32 %i.z, 0                  ; 4 uses
  %.030.i305 = add i32 %4, -1                     ; 7 uses
  %i.bf = icmp sgt i32 %.030.i305, -1             ; 4 uses
  %i.bg = zext i32 %.030.i305 to i64              ; 20 uses
  %i.bh = zext i32 %i.z to i64
  %i.bi = icmp eq i32 %7, 0
  %i.bj = sext i32 %6 to i64
  %i.bk = getelementptr inbounds i8, ptr @stbi__depth_scale_table, i64 %i.bj
  %wide.trip.count460 = zext i32 %5 to i64
  %wide.trip.count424 = zext i32 %spec.select to i64 ; 15 uses
  %wide.trip.count434 = zext nneg i32 %spec.select to i64
  %wide.trip.count444 = zext i32 %i.aw to i64     ; 8 uses
  %i.bl = shl nuw nsw i64 %i.bg, 1
  %i.bm = getelementptr i8, ptr %i.as, i64 %i.bg
  %scevgep505 = getelementptr i8, ptr %i.bm, i64 1
  %i.bn = sub nsw i64 %i.bb, %i.ax                ; 28 uses
  %i.bo = add i32 %i.z, -1                        ; 3 uses
  %i.bp = add nuw nsw i64 %i.bg, 1
  %min.iters.check703 = icmp ult i64 %i.bn, 8
  %i.bq = add nsw i64 %i.ax, -1
  %diff.check701 = icmp ult i64 %i.bq, 31
  %or.cond740 = select i1 %min.iters.check703, i1 true, i1 %diff.check701
  %min.iters.check705 = icmp ult i64 %i.bn, 32
  %i.br = and i64 %i.bn, 24
  %n.vec707 = and i64 %i.bn, -32                  ; 4 uses
  %i.bs = add nsw i64 %n.vec707, %i.ax
  %cmp.n716 = icmp eq i64 %i.bn, %n.vec707
  %min.epilog.iters.check722 = icmp eq i64 %i.br, 0
  %n.vec724 = and i64 %i.bn, -8                   ; 3 uses
  %i.bt = add nsw i64 %n.vec724, %i.ax
  %cmp.n731 = icmp eq i64 %i.bn, %n.vec724
  %i.bu = add nsw i64 %i.bb, -1
  %min.iters.check671 = icmp ult i32 %spec.select, 4
  %min.iters.check673 = icmp ult i32 %spec.select, 32
  %i.bv = and i64 %wide.trip.count424, 28
  %n.vec675 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n684 = icmp eq i64 %n.vec675, %wide.trip.count424
  %min.epilog.iters.check689 = icmp eq i64 %i.bv, 0
  %n.vec691 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n698 = icmp eq i64 %n.vec691, %wide.trip.count424
  %xtraiter754 = and i64 %wide.trip.count424, 3   ; 2 uses
  %lcmp.mod755.not = icmp eq i64 %xtraiter754, 0
  %min.iters.check636 = icmp ult i64 %i.bn, 4
  %i.bw = add nsw i64 %i.ax, -1
  %diff.check630 = icmp ult i64 %i.bw, 15
  %min.iters.check638 = icmp ult i64 %i.bn, 16
  %i.bx = and i64 %i.bn, 12
  %n.vec640 = and i64 %i.bn, -16                  ; 4 uses
  %i.by = add nsw i64 %n.vec640, %i.ax
  %cmp.n649 = icmp eq i64 %i.bn, %n.vec640
  %min.epilog.iters.check655 = icmp eq i64 %i.bx, 0
  %n.vec657 = and i64 %i.bn, -4                   ; 3 uses
  %i.bz = add nsw i64 %n.vec657, %i.ax
  %cmp.n666 = icmp eq i64 %i.bn, %n.vec657
  %min.iters.check600 = icmp ult i32 %spec.select, 4
  %min.iters.check602 = icmp ult i32 %spec.select, 32
  %i.ca = and i64 %wide.trip.count424, 28
  %n.vec604 = and i64 %wide.trip.count424, 2147483616 ; 4 uses
  %cmp.n613 = icmp eq i64 %n.vec604, %wide.trip.count424
  %min.epilog.iters.check618 = icmp eq i64 %i.ca, 0
  %n.vec620 = and i64 %wide.trip.count424, 2147483644 ; 3 uses
  %cmp.n627 = icmp eq i64 %n.vec620, %wide.trip.count424
  %xtraiter756.a = and i64 %wide.trip.count424, 1
  %lcmp.mod757.not.a = icmp eq i64 %xtraiter756.a, 0
  %i.cb = add nsw i64 %wide.trip.count424, -1
  %min.iters.check567 = icmp ult i64 %i.bn, 4
  %i.cc = add nsw i64 %i.ax, -1
  %diff.check565 = icmp ult i64 %i.cc, 15
  %min.iters.check569 = icmp ult i64 %i.bn, 16
  %i.cd = and i64 %i.bn, 12
  %n.vec571 = and i64 %i.bn, -16                  ; 4 uses
  %i.ce = add nsw i64 %n.vec571, %i.ax
  %cmp.n579 = icmp eq i64 %i.bn, %n.vec571
  %min.epilog.iters.check585 = icmp eq i64 %i.cd, 0
  %n.vec587 = and i64 %i.bn, -4                   ; 3 uses
  %i.cf = add nsw i64 %n.vec587, %i.ax
  %cmp.n595 = icmp eq i64 %i.bn, %n.vec587
  %i.cg = add nsw i64 %i.bb, -1
  %min.iters.check534 = icmp ult i32 %i.aw, 4
  %min.iters.check536 = icmp ult i32 %i.aw, 32
  %i.ch = and i64 %wide.trip.count444, 28
  %n.vec538 = and i64 %wide.trip.count444, 2147483616 ; 4 uses
  %cmp.n547 = icmp eq i64 %n.vec538, %wide.trip.count444
  %min.epilog.iters.check552 = icmp eq i64 %i.ch, 0
  %n.vec554 = and i64 %wide.trip.count444, 2147483644 ; 3 uses
  %cmp.n561 = icmp eq i64 %n.vec554, %wide.trip.count444
  %xtraiter762.a = and i64 %wide.trip.count444, 3 ; 2 uses
  %lcmp.mod763.not.a = icmp eq i64 %xtraiter762.a, 0
  %min.iters.check510 = icmp ult i64 %i.bn, 8
  %i.ci = add nsw i64 %i.ax, -1
  %diff.check = icmp ult i64 %i.ci, 31
  %or.cond739 = select i1 %min.iters.check510, i1 true, i1 %diff.check
  %min.iters.check511 = icmp ult i64 %i.bn, 32
  %i.cj = and i64 %i.bn, 24
  %n.vec513 = and i64 %i.bn, -32                  ; 4 uses
  %i.ck = add nsw i64 %n.vec513, %i.ax
  %cmp.n522 = icmp eq i64 %i.bn, %n.vec513
  %min.epilog.iters.check = icmp eq i64 %i.cj, 0
  %n.vec524 = and i64 %i.bn, -8                   ; 3 uses
  %i.cl = add nsw i64 %n.vec524, %i.ax
  %cmp.n529 = icmp eq i64 %i.bn, %n.vec524
  %i.cm = add nsw i64 %i.bb, -1
  %xtraiter768.a = and i32 %4, 1
  %i.cn = icmp eq i32 %.030.i305, 0
  %unroll_iter = and i32 %4, -2
  %lcmp.mod769.not.a = icmp eq i32 %xtraiter768.a, 0
  %lcmp.mod770.a = trunc i32 %4 to i1
  %xtraiter771 = and i32 %i.z, 3                  ; 3 uses
  %i.co = icmp ult i32 %i.z, 4
  %unroll_iter774 = and i32 %i.z, -4
  %lcmp.mod772.not = icmp eq i32 %xtraiter771, 0
  %lcmp.mod773 = icmp ne i32 %xtraiter771, 0
  %i.cp = and i64 %i.bg, 1
  %lcmp.mod777.not.not = icmp eq i64 %i.cp, 0
  %i.cq = shl nuw nsw i64 %i.bg, 2
  %i.cr = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i310.prol = add nsw i64 %i.bg, -1
  %i.cs = icmp eq i32 %.030.i305, 0
  %i.ct = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %.030.i305, 7
  %n.vec = and i64 %i.ct, 4294967288              ; 3 uses
  %i.cu = sub nsw i64 %i.bg, %n.vec
  %cmp.n = icmp eq i64 %i.ct, %n.vec
  %xtraiter782 = and i32 %i.z, 1
  %i.cv = icmp eq i32 %i.bo, 0
  %unroll_iter786 = and i32 %i.z, -2
  %lcmp.mod784.not = icmp eq i32 %xtraiter782, 0
  %lcmp.mod785 = trunc i32 %i.z to i1
  %xtraiter788 = and i32 %i.z, 1
  %i.cw = icmp eq i32 %i.bo, 0
  %unroll_iter792 = and i32 %i.z, -2
  %lcmp.mod790.not = icmp eq i32 %xtraiter788, 0
  %lcmp.mod791 = trunc i32 %i.z to i1
  %xtraiter794 = and i32 %i.z, 1
  %i.cx = icmp eq i32 %i.bo, 0
  %unroll_iter798 = and i32 %i.z, -2
  %lcmp.mod796.not = icmp eq i32 %xtraiter794, 0
  %lcmp.mod797 = trunc i32 %i.z to i1
  %i.cy = and i64 %i.bg, 1
  %lcmp.mod801.not.not = icmp eq i64 %i.cy, 0
  %i.cz = shl nuw nsw i64 %i.bg, 2
  %i.da = mul nuw nsw i64 %i.bg, 3
  %indvars.iv.next.i.prol = add nsw i64 %i.bg, -1
  %i.db = icmp eq i32 %.030.i305, 0
  %xtraiter803 = and i64 %i.bp, 3                 ; 2 uses
  %lcmp.mod804.not = icmp eq i64 %xtraiter803, 0
  %i.dc = icmp ult i32 %.030.i305, 3
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph400, %.loopexit
  %indvars.iv457 = phi i64 [ 0, %.lr.ph400 ], [ %indvars.iv.next458, %.loopexit ] ; 10 uses
  %.0272398 = phi ptr [ %1, %.lr.ph400 ], [ %i.qm, %.loopexit ] ; 2 uses
  %8 = trunc i64 %indvars.iv457 to i32
  %9 = and i32 %8, 1
  %10 = xor i32 %9, 1
  %11 = mul nuw nsw i32 %i.ah, %10
  %12 = trunc i64 %indvars.iv457 to i32
  %13 = and i32 %12, 1
  %14 = xor i32 %13, 1
  %15 = mul nuw nsw i32 %i.ah, %14
  %16 = zext nneg i32 %15 to i64                  ; 2 uses
  %17 = trunc i64 %indvars.iv457 to i32
  %18 = and i32 %17, 1
  %19 = xor i32 %18, 1
  %20 = mul nuw nsw i32 %i.ah, %19
  %21 = trunc i64 %indvars.iv457 to i32
  %22 = and i32 %21, 1
  %23 = xor i32 %22, 1
  %24 = mul nuw nsw i32 %i.ah, %23
  %25 = trunc i64 %indvars.iv457 to i32
  %26 = and i32 %25, 1
  %27 = xor i32 %26, 1
  %28 = mul nuw nsw i32 %i.ah, %27
  %29 = trunc i64 %indvars.iv457 to i32
  %30 = mul i32 %i.e, %29
  %31 = zext i32 %30 to i64
  %i.dd = trunc i64 %indvars.iv457 to i32         ; 2 uses
  %i.de = trunc i64 %indvars.iv457 to i1
  %i.df = select i1 %i.de, i64 %i.av, i64 0       ; 8 uses
  %i.dg = getelementptr i8, ptr %i.as, i64 %i.df  ; 80 uses
  %i.dh = and i32 %i.dd, 1
  %i.di = xor i32 %i.dh, 1
  %i.dj = mul nuw nsw i32 %i.di, %i.ah
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.dk ; 30 uses
  %i.dm = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.dn = mul i32 %i.e, %i.dd
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr i8, ptr %i.dm, i64 %i.do  ; 38 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0272398, i64 1 ; 41 uses
  %i.dr = load i8, ptr %.0272398, align 1         ; 3 uses
  %i.ds = icmp ugt i8 %i.dr, 4
  br i1 %i.ds, label %bb.aj, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dt = icmp eq i64 %indvars.iv457, 0
  br i1 %i.dt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.du = zext nneg i8 %i.dr to i64
  %i.dv = getelementptr inbounds nuw i8, ptr @first_row_filter, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0248.in = phi i8 [ %i.dw, %bb.o ], [ %i.dr, %bb.n ]
  switch i8 %.0248.in, label %.loopexit348 [
    i8 0, label %bb.q
    i8 1, label %bb.r
    i8 2, label %.preheader349
    i8 3, label %.preheader353
    i8 4, label %.preheader356
    i8 5, label %bb.s
  ]

.preheader356:                                    ; preds = %bb.p
  br i1 %i.az, label %iter.check686, label %.preheader354

iter.check686:                                    ; preds = %.preheader356
  %32 = zext nneg i32 %11 to i64
  %i.dx = sub nsw i64 %32, %i.df
  %diff.check669 = icmp ugt i64 %i.dx, -32
  %or.cond734.a = select i1 %min.iters.check671, i1 true, i1 %diff.check669
  br i1 %or.cond734.a, label %.lr.ph360.preheader, label %vector.main.loop.iter.check672

vector.main.loop.iter.check672:                   ; preds = %iter.check686
  br i1 %min.iters.check673, label %vec.epilog.ph690, label %vector.body676

vector.body676:                                   ; preds = %vector.main.loop.iter.check672, %vector.body676
  %index677 = phi i64 [ %index.next682, %vector.body676 ], [ 0, %vector.main.loop.iter.check672 ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 %index677 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %wide.load678 = load <16 x i8>, ptr %i.dy, align 1
  %wide.load679 = load <16 x i8>, ptr %i.dz, align 1
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index677 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load680 = load <16 x i8>, ptr %i.ea, align 1
  %wide.load681 = load <16 x i8>, ptr %i.eb, align 1
  %i.ec = add <16 x i8> %wide.load680, %wide.load678
  %i.ed = add <16 x i8> %wide.load681, %wide.load679
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dg, i64 %index677 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store <16 x i8> %i.ec, ptr %i.ee, align 1
  store <16 x i8> %i.ed, ptr %i.ef, align 1
  %index.next682 = add nuw i64 %index677, 32      ; 2 uses
  %i.eg = icmp eq i64 %index.next682, %n.vec675
  br i1 %i.eg, label %middle.block683, label %vector.body676, !llvm.loop !226

middle.block683:                                  ; preds = %vector.body676
  br i1 %cmp.n684, label %.preheader354, label %vec.epilog.iter.check688

vec.epilog.iter.check688:                         ; preds = %middle.block683
  br i1 %min.epilog.iters.check689, label %.lr.ph360.preheader, label %vec.epilog.ph690, !prof !112

vec.epilog.ph690:                                 ; preds = %vector.main.loop.iter.check672, %vec.epilog.iter.check688
  %vec.epilog.resume.val685 = phi i64 [ %n.vec675, %vec.epilog.iter.check688 ], [ 0, %vector.main.loop.iter.check672 ]
  br label %vec.epilog.vector.body692

vec.epilog.vector.body692:                        ; preds = %vec.epilog.vector.body692, %vec.epilog.ph690
  %index693 = phi i64 [ %vec.epilog.resume.val685, %vec.epilog.ph690 ], [ %index.next696, %vec.epilog.vector.body692 ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dq, i64 %index693
  %wide.load694 = load <4 x i8>, ptr %i.eh, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index693
  %wide.load695 = load <4 x i8>, ptr %i.ei, align 1
  %i.ej = add <4 x i8> %wide.load695, %wide.load694
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dg, i64 %index693
  store <4 x i8> %i.ej, ptr %i.ek, align 1
  %index.next696 = add nuw i64 %index693, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next696, %n.vec691
  br i1 %i.el, label %vec.epilog.middle.block697, label %vec.epilog.vector.body692, !llvm.loop !227

vec.epilog.middle.block697:                       ; preds = %vec.epilog.vector.body692
  br i1 %cmp.n698, label %.preheader354, label %.lr.ph360.preheader

.lr.ph360.preheader:                              ; preds = %iter.check686, %vec.epilog.iter.check688, %vec.epilog.middle.block697
  %indvars.iv421.ph = phi i64 [ 0, %iter.check686 ], [ %n.vec675, %vec.epilog.iter.check688 ], [ %n.vec691, %vec.epilog.middle.block697 ] ; 3 uses
  br i1 %lcmp.mod755.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol

.lr.ph360.prol:                                   ; preds = %.lr.ph360.preheader, %.lr.ph360.prol
  %indvars.iv421.prol = phi i64 [ %indvars.iv.next422.prol, %.lr.ph360.prol ], [ %indvars.iv421.ph, %.lr.ph360.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph360.prol ], [ 0, %.lr.ph360.preheader ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv421.prol
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv421.prol
  %i.ep = load i8, ptr %i.eo, align 1
  %.narrow286.prol = add i8 %i.ep, %i.en
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv421.prol
  store i8 %.narrow286.prol, ptr %i.eq, align 1
  %indvars.iv.next422.prol = add nuw nsw i64 %indvars.iv421.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter754
  br i1 %prol.iter.cmp.not, label %.lr.ph360.prol.loopexit, label %.lr.ph360.prol, !llvm.loop !228

.lr.ph360.prol.loopexit:                          ; preds = %.lr.ph360.prol, %.lr.ph360.preheader
  %indvars.iv421.unr = phi i64 [ %indvars.iv421.ph, %.lr.ph360.preheader ], [ %indvars.iv.next422.prol, %.lr.ph360.prol ]
  %i.er = sub nsw i64 %indvars.iv421.ph, %wide.trip.count424
  %i.es = icmp ugt i64 %i.er, -4
  br i1 %i.es, label %.preheader354, label %.lr.ph360

.preheader353:                                    ; preds = %bb.p
  br i1 %i.az, label %iter.check615, label %.preheader351

iter.check615:                                    ; preds = %.preheader353
  %33 = zext nneg i32 %20 to i64
  %i.et = sub nsw i64 %33, %i.df
  %diff.check598 = icmp ugt i64 %i.et, -32
  %or.cond736 = select i1 %min.iters.check600, i1 true, i1 %diff.check598
  br i1 %or.cond736, label %.lr.ph364.preheader, label %vector.main.loop.iter.check601

vector.main.loop.iter.check601:                   ; preds = %iter.check615
  br i1 %min.iters.check602, label %vec.epilog.ph619, label %vector.body605

vector.body605:                                   ; preds = %vector.main.loop.iter.check601, %vector.body605
  %index606 = phi i64 [ %index.next611, %vector.body605 ], [ 0, %vector.main.loop.iter.check601 ] ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dq, i64 %index606 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %wide.load607 = load <16 x i8>, ptr %i.eu, align 1
  %wide.load608 = load <16 x i8>, ptr %i.ev, align 1
  %i.ew = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index606 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load609 = load <16 x i8>, ptr %i.ew, align 1
  %wide.load610 = load <16 x i8>, ptr %i.ex, align 1
  %i.ey = lshr <16 x i8> %wide.load609, splat (i8 1)
  %i.ez = lshr <16 x i8> %wide.load610, splat (i8 1)
  %i.fa = add <16 x i8> %i.ey, %wide.load607
  %i.fb = add <16 x i8> %i.ez, %wide.load608
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dg, i64 %index606 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  store <16 x i8> %i.fa, ptr %i.fc, align 1
  store <16 x i8> %i.fb, ptr %i.fd, align 1
  %index.next611 = add nuw i64 %index606, 32      ; 2 uses
  %i.fe = icmp eq i64 %index.next611, %n.vec604
  br i1 %i.fe, label %middle.block612, label %vector.body605, !llvm.loop !229

middle.block612:                                  ; preds = %vector.body605
  br i1 %cmp.n613, label %.preheader351, label %vec.epilog.iter.check617

vec.epilog.iter.check617:                         ; preds = %middle.block612
  br i1 %min.epilog.iters.check618, label %.lr.ph364.preheader, label %vec.epilog.ph619, !prof !112

vec.epilog.ph619:                                 ; preds = %vector.main.loop.iter.check601, %vec.epilog.iter.check617
  %vec.epilog.resume.val614 = phi i64 [ %n.vec604, %vec.epilog.iter.check617 ], [ 0, %vector.main.loop.iter.check601 ]
  br label %vec.epilog.vector.body621

vec.epilog.vector.body621:                        ; preds = %vec.epilog.vector.body621, %vec.epilog.ph619
  %index622 = phi i64 [ %vec.epilog.resume.val614, %vec.epilog.ph619 ], [ %index.next625, %vec.epilog.vector.body621 ] ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dq, i64 %index622
  %wide.load623 = load <4 x i8>, ptr %i.ff, align 1
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index622
  %wide.load624 = load <4 x i8>, ptr %i.fg, align 1
  %i.fh = lshr <4 x i8> %wide.load624, splat (i8 1)
  %i.fi = add <4 x i8> %i.fh, %wide.load623
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %index622
  store <4 x i8> %i.fi, ptr %i.fj, align 1
  %index.next625 = add nuw i64 %index622, 4       ; 2 uses
  %i.fk = icmp eq i64 %index.next625, %n.vec620
  br i1 %i.fk, label %vec.epilog.middle.block626, label %vec.epilog.vector.body621, !llvm.loop !230

vec.epilog.middle.block626:                       ; preds = %vec.epilog.vector.body621
  br i1 %cmp.n627, label %.preheader351, label %.lr.ph364.preheader

.lr.ph364.preheader:                              ; preds = %iter.check615, %vec.epilog.iter.check617, %vec.epilog.middle.block626
  %indvars.iv431.ph = phi i64 [ 0, %iter.check615 ], [ %n.vec604, %vec.epilog.iter.check617 ], [ %n.vec620, %vec.epilog.middle.block626 ] ; 6 uses
  br i1 %lcmp.mod757.not.a, label %.lr.ph364.prol.loopexit, label %.lr.ph364.prol

.lr.ph364.prol:                                   ; preds = %.lr.ph364.preheader
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv431.ph
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv431.ph
  %i.fo = load i8, ptr %i.fn, align 1
  %i.fp = lshr i8 %i.fo, 1
  %.narrow290.prol = add i8 %i.fp, %i.fm
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv431.ph
  store i8 %.narrow290.prol, ptr %i.fq, align 1
  %indvars.iv.next432.prol = or disjoint i64 %indvars.iv431.ph, 1
  br label %.lr.ph364.prol.loopexit

.lr.ph364.prol.loopexit:                          ; preds = %.lr.ph364.prol, %.lr.ph364.preheader
  %indvars.iv431.unr = phi i64 [ %indvars.iv431.ph, %.lr.ph364.preheader ], [ %indvars.iv.next432.prol, %.lr.ph364.prol ]
  %i.fr = icmp eq i64 %indvars.iv431.ph, %i.cb
  br i1 %i.fr, label %.preheader351, label %.lr.ph364

.preheader349:                                    ; preds = %bb.p
  br i1 %i.ba, label %iter.check549, label %.loopexit348

iter.check549:                                    ; preds = %.preheader349
  %34 = zext nneg i32 %28 to i64
  %i.fs = sub nsw i64 %34, %i.df
  %diff.check532 = icmp ugt i64 %i.fs, -32
  %or.cond738 = select i1 %min.iters.check534, i1 true, i1 %diff.check532
  br i1 %or.cond738, label %.lr.ph368.preheader, label %vector.main.loop.iter.check535

vector.main.loop.iter.check535:                   ; preds = %iter.check549
  br i1 %min.iters.check536, label %vec.epilog.ph553, label %vector.body539

vector.body539:                                   ; preds = %vector.main.loop.iter.check535, %vector.body539
  %index540 = phi i64 [ %index.next545, %vector.body539 ], [ 0, %vector.main.loop.iter.check535 ] ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.dq, i64 %index540 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %wide.load541 = load <16 x i8>, ptr %i.ft, align 1
  %wide.load542 = load <16 x i8>, ptr %i.fu, align 1
  %i.fv = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index540 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %wide.load543 = load <16 x i8>, ptr %i.fv, align 1
  %wide.load544 = load <16 x i8>, ptr %i.fw, align 1
  %i.fx = add <16 x i8> %wide.load543, %wide.load541
  %i.fy = add <16 x i8> %wide.load544, %wide.load542
  %i.fz = getelementptr inbounds nuw i8, ptr %i.dg, i64 %index540 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  store <16 x i8> %i.fx, ptr %i.fz, align 1
  store <16 x i8> %i.fy, ptr %i.ga, align 1
  %index.next545 = add nuw i64 %index540, 32      ; 2 uses
  %i.gb = icmp eq i64 %index.next545, %n.vec538
  br i1 %i.gb, label %middle.block546, label %vector.body539, !llvm.loop !231

middle.block546:                                  ; preds = %vector.body539
  br i1 %cmp.n547, label %.loopexit348, label %vec.epilog.iter.check551

vec.epilog.iter.check551:                         ; preds = %middle.block546
  br i1 %min.epilog.iters.check552, label %.lr.ph368.preheader, label %vec.epilog.ph553, !prof !112

vec.epilog.ph553:                                 ; preds = %vector.main.loop.iter.check535, %vec.epilog.iter.check551
  %vec.epilog.resume.val548 = phi i64 [ %n.vec538, %vec.epilog.iter.check551 ], [ 0, %vector.main.loop.iter.check535 ]
  br label %vec.epilog.vector.body555

vec.epilog.vector.body555:                        ; preds = %vec.epilog.vector.body555, %vec.epilog.ph553
  %index556 = phi i64 [ %vec.epilog.resume.val548, %vec.epilog.ph553 ], [ %index.next559, %vec.epilog.vector.body555 ] ; 4 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.dq, i64 %index556
  %wide.load557 = load <4 x i8>, ptr %i.gc, align 1
  %i.gd = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index556
  %wide.load558 = load <4 x i8>, ptr %i.gd, align 1
  %i.ge = add <4 x i8> %wide.load558, %wide.load557
  %i.gf = getelementptr inbounds nuw i8, ptr %i.dg, i64 %index556
  store <4 x i8> %i.ge, ptr %i.gf, align 1
  %index.next559 = add nuw i64 %index556, 4       ; 2 uses
  %i.gg = icmp eq i64 %index.next559, %n.vec554
  br i1 %i.gg, label %vec.epilog.middle.block560, label %vec.epilog.vector.body555, !llvm.loop !232

vec.epilog.middle.block560:                       ; preds = %vec.epilog.vector.body555
  br i1 %cmp.n561, label %.loopexit348, label %.lr.ph368.preheader

.lr.ph368.preheader:                              ; preds = %iter.check549, %vec.epilog.iter.check551, %vec.epilog.middle.block560
  %indvars.iv441.ph = phi i64 [ 0, %iter.check549 ], [ %n.vec538, %vec.epilog.iter.check551 ], [ %n.vec554, %vec.epilog.middle.block560 ] ; 3 uses
  br i1 %lcmp.mod763.not.a, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol

.lr.ph368.prol:                                   ; preds = %.lr.ph368.preheader, %.lr.ph368.prol
  %indvars.iv441.prol = phi i64 [ %indvars.iv.next442.prol, %.lr.ph368.prol ], [ %indvars.iv441.ph, %.lr.ph368.preheader ] ; 4 uses
  %prol.iter764 = phi i64 [ %prol.iter764.next, %.lr.ph368.prol ], [ 0, %.lr.ph368.preheader ]
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv441.prol
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv441.prol
  %i.gk = load i8, ptr %i.gj, align 1
  %.narrow292.prol = add i8 %i.gk, %i.gi
  %i.gl = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv441.prol
  store i8 %.narrow292.prol, ptr %i.gl, align 1
  %indvars.iv.next442.prol = add nuw nsw i64 %indvars.iv441.prol, 1 ; 2 uses
  %prol.iter764.next = add i64 %prol.iter764, 1   ; 2 uses
  %prol.iter764.cmp.not = icmp eq i64 %prol.iter764.next, %xtraiter762.a
  br i1 %prol.iter764.cmp.not, label %.lr.ph368.prol.loopexit, label %.lr.ph368.prol, !llvm.loop !233

.lr.ph368.prol.loopexit:                          ; preds = %.lr.ph368.prol, %.lr.ph368.preheader
  %indvars.iv441.unr = phi i64 [ %indvars.iv441.ph, %.lr.ph368.preheader ], [ %indvars.iv.next442.prol, %.lr.ph368.prol ]
  %i.gm = sub nsw i64 %indvars.iv441.ph, %wide.trip.count444
  %i.gn = icmp ugt i64 %i.gm, -4
  br i1 %i.gn, label %.loopexit348, label %.lr.ph368

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull align 1 %i.dq, i64 %i.bb, i1 false)
  br label %.loopexit348

bb.r:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull align 1 %i.dq, i64 %i.ax, i1 false)
  br i1 %i.ay, label %iter.check, label %.loopexit348

iter.check:                                       ; preds = %bb.r
  br i1 %or.cond739, label %.lr.ph370.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check511, label %vec.epilog.ph, label %vector.body514

vector.body514:                                   ; preds = %vector.main.loop.iter.check, %vector.body514
  %index515 = phi i64 [ %index.next520, %vector.body514 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.go = add i64 %index515, %i.ax                ; 2 uses
  %i.gp = getelementptr inbounds i8, ptr %i.dq, i64 %i.go ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %wide.load516 = load <16 x i8>, ptr %i.gp, align 1
  %wide.load517 = load <16 x i8>, ptr %i.gq, align 1
  %i.gr = getelementptr inbounds i8, ptr %i.dg, i64 %index515 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load518 = load <16 x i8>, ptr %i.gr, align 1
  %wide.load519 = load <16 x i8>, ptr %i.gs, align 1
  %i.gt = add <16 x i8> %wide.load518, %wide.load516
  %i.gu = add <16 x i8> %wide.load519, %wide.load517
  %i.gv = getelementptr inbounds i8, ptr %i.dg, i64 %i.go ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store <16 x i8> %i.gt, ptr %i.gv, align 1
  store <16 x i8> %i.gu, ptr %i.gw, align 1
  %index.next520 = add nuw i64 %index515, 32      ; 2 uses
  %i.gx = icmp eq i64 %index.next520, %n.vec513
  br i1 %i.gx, label %middle.block521, label %vector.body514, !llvm.loop !234

middle.block521:                                  ; preds = %vector.body514
  br i1 %cmp.n522, label %.loopexit348, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block521
  br i1 %min.epilog.iters.check, label %.lr.ph370.preheader, label %vec.epilog.ph, !prof !235

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec513, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index525 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next528, %vec.epilog.vector.body ] ; 3 uses
  %i.gy = add i64 %index525, %i.ax                ; 2 uses
  %i.gz = getelementptr inbounds i8, ptr %i.dq, i64 %i.gy
  %wide.load526 = load <8 x i8>, ptr %i.gz, align 1
  %i.ha = getelementptr inbounds i8, ptr %i.dg, i64 %index525
  %wide.load527 = load <8 x i8>, ptr %i.ha, align 1
  %i.hb = add <8 x i8> %wide.load527, %wide.load526
  %i.hc = getelementptr inbounds i8, ptr %i.dg, i64 %i.gy
  store <8 x i8> %i.hb, ptr %i.hc, align 1
  %index.next528 = add nuw i64 %index525, 8       ; 2 uses
  %i.hd = icmp eq i64 %index.next528, %n.vec524
  br i1 %i.hd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !236

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n529, label %.loopexit348, label %.lr.ph370.preheader

.lr.ph370.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv446.ph = phi i64 [ %i.ax, %iter.check ], [ %i.ck, %vec.epilog.iter.check ], [ %i.cl, %vec.epilog.middle.block ] ; 7 uses
  %i.he = sub nsw i64 %i.bb, %indvars.iv446.ph
  %xtraiter765 = and i64 %i.he, 1
  %lcmp.mod766.not = icmp eq i64 %xtraiter765, 0
  br i1 %lcmp.mod766.not, label %.lr.ph370.prol.loopexit, label %.lr.ph370.prol

.lr.ph370.prol:                                   ; preds = %.lr.ph370.preheader
  %i.hf = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv446.ph
  %i.hg = load i8, ptr %i.hf, align 1
  %i.hh = sub nsw i64 %indvars.iv446.ph, %i.ax
  %i.hi = getelementptr inbounds i8, ptr %i.dg, i64 %i.hh
  %i.hj = load i8, ptr %i.hi, align 1
  %.narrow294.prol = add i8 %i.hj, %i.hg
  %i.hk = getelementptr inbounds i8, ptr %i.dg, i64 %indvars.iv446.ph
  store i8 %.narrow294.prol, ptr %i.hk, align 1
  %indvars.iv.next447.prol = add nsw i64 %indvars.iv446.ph, 1
  br label %.lr.ph370.prol.loopexit

.lr.ph370.prol.loopexit:                          ; preds = %.lr.ph370.prol, %.lr.ph370.preheader
  %indvars.iv446.unr = phi i64 [ %indvars.iv446.ph, %.lr.ph370.preheader ], [ %indvars.iv.next447.prol, %.lr.ph370.prol ]
  %i.hl = icmp eq i64 %indvars.iv446.ph, %i.cm
  br i1 %i.hl, label %.loopexit348, label %.lr.ph370

.lr.ph370:                                        ; preds = %.lr.ph370.prol.loopexit, %.lr.ph370
  %indvars.iv446 = phi i64 [ %indvars.iv.next447.1, %.lr.ph370 ], [ %indvars.iv446.unr, %.lr.ph370.prol.loopexit ] ; 5 uses
  %i.hm = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv446
  %i.hn = load i8, ptr %i.hm, align 1
  %i.ho = sub nsw i64 %indvars.iv446, %i.ax
  %i.hp = getelementptr inbounds i8, ptr %i.dg, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1
  %.narrow294 = add i8 %i.hq, %i.hn
  %i.hr = getelementptr inbounds i8, ptr %i.dg, i64 %indvars.iv446
  store i8 %.narrow294, ptr %i.hr, align 1
  %indvars.iv.next447 = add nsw i64 %indvars.iv446, 1 ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv.next447
  %i.ht = load i8, ptr %i.hs, align 1
  %i.hu = sub nsw i64 %indvars.iv.next447, %i.ax
  %i.hv = getelementptr inbounds i8, ptr %i.dg, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1
  %.narrow294.1 = add i8 %i.hw, %i.ht
  %i.hx = getelementptr inbounds i8, ptr %i.dg, i64 %indvars.iv.next447
  store i8 %.narrow294.1, ptr %i.hx, align 1
  %indvars.iv.next447.1 = add nsw i64 %indvars.iv446, 2 ; 2 uses
  %exitcond450.not.1 = icmp eq i64 %indvars.iv.next447.1, %i.bb
  br i1 %exitcond450.not.1, label %.loopexit348, label %.lr.ph370, !llvm.loop !237

.lr.ph368:                                        ; preds = %.lr.ph368.prol.loopexit, %.lr.ph368
  %indvars.iv441 = phi i64 [ %indvars.iv.next442.3, %.lr.ph368 ], [ %indvars.iv441.unr, %.lr.ph368.prol.loopexit ] ; 7 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv441
  %i.hz = load i8, ptr %i.hy, align 1
  %i.ia = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv441
  %i.ib = load i8, ptr %i.ia, align 1
  %.narrow292 = add i8 %i.ib, %i.hz
  %i.ic = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv441
  store i8 %.narrow292, ptr %i.ic, align 1
  %indvars.iv.next442 = add nuw nsw i64 %indvars.iv441, 1 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv.next442
  %i.ie = load i8, ptr %i.id, align 1
  %i.if = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.next442
  %i.ig = load i8, ptr %i.if, align 1
  %.narrow292.1 = add i8 %i.ig, %i.ie
  %i.ih = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.next442
  store i8 %.narrow292.1, ptr %i.ih, align 1
  %indvars.iv.next442.1 = add nuw nsw i64 %indvars.iv441, 2 ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv.next442.1
  %i.ij = load i8, ptr %i.ii, align 1
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.next442.1
  %i.il = load i8, ptr %i.ik, align 1
  %.narrow292.2 = add i8 %i.il, %i.ij
  %i.im = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.next442.1
  store i8 %.narrow292.2, ptr %i.im, align 1
  %indvars.iv.next442.2 = add nuw nsw i64 %indvars.iv441, 3 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv.next442.2
  %i.io = load i8, ptr %i.in, align 1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.next442.2
  %i.iq = load i8, ptr %i.ip, align 1
  %.narrow292.3 = add i8 %i.iq, %i.io
  %i.ir = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.next442.2
  store i8 %.narrow292.3, ptr %i.ir, align 1
  %indvars.iv.next442.3 = add nuw nsw i64 %indvars.iv441, 4 ; 2 uses
  %exitcond445.not.3 = icmp eq i64 %indvars.iv.next442.3, %wide.trip.count444
  br i1 %exitcond445.not.3, label %.loopexit348, label %.lr.ph368, !llvm.loop !238

.preheader351:                                    ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364, %middle.block612, %vec.epilog.middle.block626, %.preheader353
  br i1 %i.ay, label %iter.check582, label %.loopexit348

iter.check582:                                    ; preds = %.preheader351
  br i1 %min.iters.check567, label %.lr.ph366.preheader, label %vector.memcheck563

vector.memcheck563:                               ; preds = %iter.check582
  %35 = zext nneg i32 %24 to i64
  %i.is = sub nsw i64 %35, %i.df
  %diff.check564 = icmp ugt i64 %i.is, -16
  %conflict.rdx = or i1 %diff.check564, %diff.check565
  br i1 %conflict.rdx, label %.lr.ph366.preheader, label %vector.main.loop.iter.check568

vector.main.loop.iter.check568:                   ; preds = %vector.memcheck563
  br i1 %min.iters.check569, label %vec.epilog.ph586, label %vector.body572

vector.body572:                                   ; preds = %vector.main.loop.iter.check568, %vector.body572
  %index573 = phi i64 [ %index.next577, %vector.body572 ], [ 0, %vector.main.loop.iter.check568 ] ; 3 uses
  %i.it = add i64 %index573, %i.ax                ; 3 uses
  %i.iu = getelementptr inbounds i8, ptr %i.dq, i64 %i.it
  %wide.load574 = load <16 x i8>, ptr %i.iu, align 1
  %i.iv = getelementptr inbounds i8, ptr %i.dl, i64 %i.it
  %wide.load575 = load <16 x i8>, ptr %i.iv, align 1
  %i.iw = zext <16 x i8> %wide.load575 to <16 x i16>
  %i.ix = getelementptr inbounds i8, ptr %i.dg, i64 %index573
  %wide.load576 = load <16 x i8>, ptr %i.ix, align 1
  %i.iy = zext <16 x i8> %wide.load576 to <16 x i16>
  %i.iz = add nuw nsw <16 x i16> %i.iy, %i.iw
  %i.ja = lshr <16 x i16> %i.iz, splat (i16 1)
  %i.jb = trunc nuw <16 x i16> %i.ja to <16 x i8>
  %i.jc = add <16 x i8> %wide.load574, %i.jb
  %i.jd = getelementptr inbounds i8, ptr %i.dg, i64 %i.it
  store <16 x i8> %i.jc, ptr %i.jd, align 1
  %index.next577 = add nuw i64 %index573, 16      ; 2 uses
  %i.je = icmp eq i64 %index.next577, %n.vec571
  br i1 %i.je, label %middle.block578, label %vector.body572, !llvm.loop !239

middle.block578:                                  ; preds = %vector.body572
  br i1 %cmp.n579, label %.loopexit348, label %vec.epilog.iter.check584

vec.epilog.iter.check584:                         ; preds = %middle.block578
  br i1 %min.epilog.iters.check585, label %.lr.ph366.preheader, label %vec.epilog.ph586, !prof !12

vec.epilog.ph586:                                 ; preds = %vector.main.loop.iter.check568, %vec.epilog.iter.check584
  %vec.epilog.resume.val580 = phi i64 [ %n.vec571, %vec.epilog.iter.check584 ], [ 0, %vector.main.loop.iter.check568 ]
  br label %vec.epilog.vector.body588

vec.epilog.vector.body588:                        ; preds = %vec.epilog.vector.body588, %vec.epilog.ph586
  %index589 = phi i64 [ %vec.epilog.resume.val580, %vec.epilog.ph586 ], [ %index.next593, %vec.epilog.vector.body588 ] ; 3 uses
  %i.jf = add i64 %index589, %i.ax                ; 3 uses
  %i.jg = getelementptr inbounds i8, ptr %i.dq, i64 %i.jf
  %wide.load590 = load <4 x i8>, ptr %i.jg, align 1
  %i.jh = getelementptr inbounds i8, ptr %i.dl, i64 %i.jf
  %wide.load591 = load <4 x i8>, ptr %i.jh, align 1
  %i.ji = zext <4 x i8> %wide.load591 to <4 x i16>
  %i.jj = getelementptr inbounds i8, ptr %i.dg, i64 %index589
  %wide.load592 = load <4 x i8>, ptr %i.jj, align 1
  %i.jk = zext <4 x i8> %wide.load592 to <4 x i16>
  %i.jl = add nuw nsw <4 x i16> %i.jk, %i.ji
  %i.jm = lshr <4 x i16> %i.jl, splat (i16 1)
  %i.jn = trunc nuw <4 x i16> %i.jm to <4 x i8>
  %i.jo = add <4 x i8> %wide.load590, %i.jn
  %i.jp = getelementptr inbounds i8, ptr %i.dg, i64 %i.jf
  store <4 x i8> %i.jo, ptr %i.jp, align 1
  %index.next593 = add nuw i64 %index589, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next593, %n.vec587
  br i1 %i.jq, label %vec.epilog.middle.block594, label %vec.epilog.vector.body588, !llvm.loop !240

vec.epilog.middle.block594:                       ; preds = %vec.epilog.vector.body588
  br i1 %cmp.n595, label %.loopexit348, label %.lr.ph366.preheader

.lr.ph366.preheader:                              ; preds = %vector.memcheck563, %iter.check582, %vec.epilog.iter.check584, %vec.epilog.middle.block594
  %indvars.iv436.ph = phi i64 [ %i.ax, %iter.check582 ], [ %i.ax, %vector.memcheck563 ], [ %i.ce, %vec.epilog.iter.check584 ], [ %i.cf, %vec.epilog.middle.block594 ] ; 8 uses
  %i.jr = sub nsw i64 %i.bb, %indvars.iv436.ph
  %xtraiter759 = and i64 %i.jr, 1
  %lcmp.mod760.not = icmp eq i64 %xtraiter759, 0
  br i1 %lcmp.mod760.not, label %.lr.ph366.prol.loopexit, label %.lr.ph366.prol

.lr.ph366.prol:                                   ; preds = %.lr.ph366.preheader
  %i.js = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv436.ph
  %i.jt = load i8, ptr %i.js, align 1
  %i.ju = getelementptr inbounds i8, ptr %i.dl, i64 %indvars.iv436.ph
  %i.jv = load i8, ptr %i.ju, align 1
  %i.jw = zext i8 %i.jv to i16
  %i.jx = sub nsw i64 %indvars.iv436.ph, %i.ax
  %i.jy = getelementptr inbounds i8, ptr %i.dg, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1
  %i.ka = zext i8 %i.jz to i16
  %i.kb = add nuw nsw i16 %i.ka, %i.jw
  %i.kc = lshr i16 %i.kb, 1
  %.tr287.prol = trunc nuw i16 %i.kc to i8
  %.narrow288.prol = add i8 %i.jt, %.tr287.prol
  %i.kd = getelementptr inbounds i8, ptr %i.dg, i64 %indvars.iv436.ph
  store i8 %.narrow288.prol, ptr %i.kd, align 1
  %indvars.iv.next437.prol = add nsw i64 %indvars.iv436.ph, 1
  br label %.lr.ph366.prol.loopexit

.lr.ph366.prol.loopexit:                          ; preds = %.lr.ph366.prol, %.lr.ph366.preheader
  %indvars.iv436.unr = phi i64 [ %indvars.iv436.ph, %.lr.ph366.preheader ], [ %indvars.iv.next437.prol, %.lr.ph366.prol ]
  %i.ke = icmp eq i64 %indvars.iv436.ph, %i.cg
  br i1 %i.ke, label %.loopexit348, label %.lr.ph366

.lr.ph364:                                        ; preds = %.lr.ph364.prol.loopexit, %.lr.ph364
  %indvars.iv431 = phi i64 [ %indvars.iv.next432.1, %.lr.ph364 ], [ %indvars.iv431.unr, %.lr.ph364.prol.loopexit ] ; 5 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv431
  %i.kg = load i8, ptr %i.kf, align 1
  %i.kh = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv431
  %i.ki = load i8, ptr %i.kh, align 1
  %i.kj = lshr i8 %i.ki, 1
  %.narrow290 = add i8 %i.kj, %i.kg
  %i.kk = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv431
  store i8 %.narrow290, ptr %i.kk, align 1
  %indvars.iv.next432 = add nuw nsw i64 %indvars.iv431, 1 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv.next432
  %i.km = load i8, ptr %i.kl, align 1
  %i.kn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.next432
  %i.ko = load i8, ptr %i.kn, align 1
  %i.kp = lshr i8 %i.ko, 1
  %.narrow290.1 = add i8 %i.kp, %i.km
  %i.kq = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.next432
  store i8 %.narrow290.1, ptr %i.kq, align 1
  %indvars.iv.next432.1 = add nuw nsw i64 %indvars.iv431, 2 ; 2 uses
  %exitcond435.not.1 = icmp eq i64 %indvars.iv.next432.1, %wide.trip.count434
  br i1 %exitcond435.not.1, label %.preheader351, label %.lr.ph364, !llvm.loop !241

.lr.ph366:                                        ; preds = %.lr.ph366.prol.loopexit, %.lr.ph366
  %indvars.iv436 = phi i64 [ %indvars.iv.next437.1, %.lr.ph366 ], [ %indvars.iv436.unr, %.lr.ph366.prol.loopexit ] ; 6 uses
  %i.kr = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv436
  %i.ks = load i8, ptr %i.kr, align 1
  %i.kt = getelementptr inbounds i8, ptr %i.dl, i64 %indvars.iv436
  %i.ku = load i8, ptr %i.kt, align 1
  %i.kv = zext i8 %i.ku to i16
  %i.kw = sub nsw i64 %indvars.iv436, %i.ax
  %i.kx = getelementptr inbounds i8, ptr %i.dg, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1
  %i.kz = zext i8 %i.ky to i16
  %i.la = add nuw nsw i16 %i.kz, %i.kv
  %i.lb = lshr i16 %i.la, 1
  %.tr287 = trunc nuw i16 %i.lb to i8
  %.narrow288 = add i8 %i.ks, %.tr287
  %i.lc = getelementptr inbounds i8, ptr %i.dg, i64 %indvars.iv436
  store i8 %.narrow288, ptr %i.lc, align 1
  %indvars.iv.next437 = add nsw i64 %indvars.iv436, 1 ; 4 uses
  %i.ld = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv.next437
  %i.le = load i8, ptr %i.ld, align 1
  %i.lf = getelementptr inbounds i8, ptr %i.dl, i64 %indvars.iv.next437
  %i.lg = load i8, ptr %i.lf, align 1
  %i.lh = zext i8 %i.lg to i16
  %i.li = sub nsw i64 %indvars.iv.next437, %i.ax
  %i.lj = getelementptr inbounds i8, ptr %i.dg, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1
  %i.ll = zext i8 %i.lk to i16
  %i.lm = add nuw nsw i16 %i.ll, %i.lh
  %i.ln = lshr i16 %i.lm, 1
  %.tr287.1 = trunc nuw i16 %i.ln to i8
  %.narrow288.1 = add i8 %i.le, %.tr287.1
  %i.lo = getelementptr inbounds i8, ptr %i.dg, i64 %indvars.iv.next437
  store i8 %.narrow288.1, ptr %i.lo, align 1
  %indvars.iv.next437.1 = add nsw i64 %indvars.iv436, 2 ; 2 uses
  %exitcond440.not.1 = icmp eq i64 %indvars.iv.next437.1, %i.bb
  br i1 %exitcond440.not.1, label %.loopexit348, label %.lr.ph366, !llvm.loop !242

.preheader354:                                    ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360, %middle.block683, %vec.epilog.middle.block697, %.preheader356
  br i1 %i.ay, label %iter.check652, label %.loopexit348

iter.check652:                                    ; preds = %.preheader354
  br i1 %min.iters.check636, label %.lr.ph362.preheader, label %vector.memcheck629

vector.memcheck629:                               ; preds = %iter.check652
  %i.lp = sub nsw i64 %16, %i.df
  %diff.check631 = icmp ugt i64 %i.lp, -16
  %conflict.rdx632 = or i1 %diff.check630, %diff.check631
  %i.lq = add nsw i64 %i.df, %i.ax
  %i.lr = sub nsw i64 %16, %i.lq
  %diff.check633 = icmp ugt i64 %i.lr, -16
  %conflict.rdx634 = or i1 %conflict.rdx632, %diff.check633
  br i1 %conflict.rdx634, label %.lr.ph362.preheader, label %vector.main.loop.iter.check637

vector.main.loop.iter.check637:                   ; preds = %vector.memcheck629
  br i1 %min.iters.check638, label %vec.epilog.ph656, label %vector.body641

vector.body641:                                   ; preds = %vector.main.loop.iter.check637, %vector.body641
  %index642 = phi i64 [ %index.next647, %vector.body641 ], [ 0, %vector.main.loop.iter.check637 ] ; 4 uses
  %i.ls = add i64 %index642, %i.ax                ; 3 uses
  %i.lt = getelementptr inbounds i8, ptr %i.dq, i64 %i.ls
  %wide.load643 = load <16 x i8>, ptr %i.lt, align 1
  %i.lu = getelementptr inbounds i8, ptr %i.dg, i64 %index642
  %wide.load644 = load <16 x i8>, ptr %i.lu, align 1
  %i.lv = zext <16 x i8> %wide.load644 to <16 x i32> ; 3 uses
  %i.lw = getelementptr inbounds i8, ptr %i.dl, i64 %i.ls
  %wide.load645 = load <16 x i8>, ptr %i.lw, align 1
  %i.lx = zext <16 x i8> %wide.load645 to <16 x i32> ; 3 uses
  %i.ly = getelementptr inbounds i8, ptr %i.dl, i64 %index642
  %wide.load646 = load <16 x i8>, ptr %i.ly, align 1
  %i.lz = zext <16 x i8> %wide.load646 to <16 x i32> ; 2 uses
  %i.ma = mul nuw nsw <16 x i32> %i.lz, splat (i32 3)
  %i.mb = add nuw nsw <16 x i32> %i.lx, %i.lv
  %i.mc = sub nsw <16 x i32> %i.ma, %i.mb         ; 2 uses
  %i.md = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.lv, <16 x i32> %i.lx) ; 2 uses
  %i.me = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.lv, <16 x i32> %i.lx) ; 2 uses
  %i.mf = icmp sgt <16 x i32> %i.me, %i.mc
  %i.mg = select <16 x i1> %i.mf, <16 x i32> %i.lz, <16 x i32> %i.md
  %i.mh = icmp sgt <16 x i32> %i.mc, %i.md
  %i.mi = select <16 x i1> %i.mh, <16 x i32> %i.mg, <16 x i32> %i.me
  %i.mj = trunc nuw <16 x i32> %i.mi to <16 x i8>
  %i.mk = add <16 x i8> %wide.load643, %i.mj
  %i.ml = getelementptr inbounds i8, ptr %i.dg, i64 %i.ls
  store <16 x i8> %i.mk, ptr %i.ml, align 1
  %index.next647 = add nuw i64 %index642, 16      ; 2 uses
  %i.mm = icmp eq i64 %index.next647, %n.vec640
  br i1 %i.mm, label %middle.block648, label %vector.body641, !llvm.loop !243

middle.block648:                                  ; preds = %vector.body641
  br i1 %cmp.n649, label %.loopexit348, label %vec.epilog.iter.check654

vec.epilog.iter.check654:                         ; preds = %middle.block648
  br i1 %min.epilog.iters.check655, label %.lr.ph362.preheader, label %vec.epilog.ph656, !prof !12

vec.epilog.ph656:                                 ; preds = %vector.main.loop.iter.check637, %vec.epilog.iter.check654
  %vec.epilog.resume.val650 = phi i64 [ %n.vec640, %vec.epilog.iter.check654 ], [ 0, %vector.main.loop.iter.check637 ]
  br label %vec.epilog.vector.body658

vec.epilog.vector.body658:                        ; preds = %vec.epilog.vector.body658, %vec.epilog.ph656
  %index659 = phi i64 [ %vec.epilog.resume.val650, %vec.epilog.ph656 ], [ %index.next664, %vec.epilog.vector.body658 ] ; 4 uses
  %i.mn = add i64 %index659, %i.ax                ; 3 uses
  %i.mo = getelementptr inbounds i8, ptr %i.dq, i64 %i.mn
  %wide.load660 = load <4 x i8>, ptr %i.mo, align 1
  %i.mp = getelementptr inbounds i8, ptr %i.dg, i64 %index659
  %wide.load661 = load <4 x i8>, ptr %i.mp, align 1
  %i.mq = zext <4 x i8> %wide.load661 to <4 x i32> ; 3 uses
  %i.mr = getelementptr inbounds i8, ptr %i.dl, i64 %i.mn
  %wide.load662 = load <4 x i8>, ptr %i.mr, align 1
  %i.ms = zext <4 x i8> %wide.load662 to <4 x i32> ; 3 uses
  %i.mt = getelementptr inbounds i8, ptr %i.dl, i64 %index659
  %wide.load663 = load <4 x i8>, ptr %i.mt, align 1
  %i.mu = zext <4 x i8> %wide.load663 to <4 x i32> ; 2 uses
  %i.mv = mul nuw nsw <4 x i32> %i.mu, splat (i32 3)
  %i.mw = add nuw nsw <4 x i32> %i.ms, %i.mq
  %i.mx = sub nsw <4 x i32> %i.mv, %i.mw          ; 2 uses
  %i.my = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mq, <4 x i32> %i.ms) ; 2 uses
  %i.mz = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.mq, <4 x i32> %i.ms) ; 2 uses
  %i.na = icmp sgt <4 x i32> %i.mz, %i.mx
  %i.nb = select <4 x i1> %i.na, <4 x i32> %i.mu, <4 x i32> %i.my
  %i.nc = icmp sgt <4 x i32> %i.mx, %i.my
  %i.nd = select <4 x i1> %i.nc, <4 x i32> %i.nb, <4 x i32> %i.mz
  %i.ne = trunc nuw <4 x i32> %i.nd to <4 x i8>
  %i.nf = add <4 x i8> %wide.load660, %i.ne
  %i.ng = getelementptr inbounds i8, ptr %i.dg, i64 %i.mn
  store <4 x i8> %i.nf, ptr %i.ng, align 1
  %index.next664 = add nuw i64 %index659, 4       ; 2 uses
  %i.nh = icmp eq i64 %index.next664, %n.vec657
  br i1 %i.nh, label %vec.epilog.middle.block665, label %vec.epilog.vector.body658, !llvm.loop !244

vec.epilog.middle.block665:                       ; preds = %vec.epilog.vector.body658
  br i1 %cmp.n666, label %.loopexit348, label %.lr.ph362.preheader

.lr.ph362.preheader:                              ; preds = %vector.memcheck629, %iter.check652, %vec.epilog.iter.check654, %vec.epilog.middle.block665
  %indvars.iv426.ph = phi i64 [ %i.ax, %iter.check652 ], [ %i.ax, %vector.memcheck629 ], [ %i.by, %vec.epilog.iter.check654 ], [ %i.bz, %vec.epilog.middle.block665 ]
  br label %.lr.ph362

.lr.ph360:                                        ; preds = %.lr.ph360.prol.loopexit, %.lr.ph360
  %indvars.iv421 = phi i64 [ %indvars.iv.next422.3, %.lr.ph360 ], [ %indvars.iv421.unr, %.lr.ph360.prol.loopexit ] ; 7 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv421
  %i.nj = load i8, ptr %i.ni, align 1
  %i.nk = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv421
  %i.nl = load i8, ptr %i.nk, align 1
  %.narrow286 = add i8 %i.nl, %i.nj
  %i.nm = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv421
  store i8 %.narrow286, ptr %i.nm, align 1
  %indvars.iv.next422 = add nuw nsw i64 %indvars.iv421, 1 ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv.next422
  %i.no = load i8, ptr %i.nn, align 1
  %i.np = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.next422
  %i.nq = load i8, ptr %i.np, align 1
  %.narrow286.1 = add i8 %i.nq, %i.no
  %i.nr = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.next422
  store i8 %.narrow286.1, ptr %i.nr, align 1
  %indvars.iv.next422.1 = add nuw nsw i64 %indvars.iv421, 2 ; 3 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv.next422.1
  %i.nt = load i8, ptr %i.ns, align 1
  %i.nu = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.next422.1
  %i.nv = load i8, ptr %i.nu, align 1
  %.narrow286.2 = add i8 %i.nv, %i.nt
  %i.nw = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.next422.1
  store i8 %.narrow286.2, ptr %i.nw, align 1
  %indvars.iv.next422.2 = add nuw nsw i64 %indvars.iv421, 3 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.dq, i64 %indvars.iv.next422.2
  %i.ny = load i8, ptr %i.nx, align 1
  %i.nz = getelementptr inbounds nuw i8, ptr %i.dl, i64 %indvars.iv.next422.2
  %i.oa = load i8, ptr %i.nz, align 1
  %.narrow286.3 = add i8 %i.oa, %i.ny
  %i.ob = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.next422.2
  store i8 %.narrow286.3, ptr %i.ob, align 1
  %indvars.iv.next422.3 = add nuw nsw i64 %indvars.iv421, 4 ; 2 uses
  %exitcond425.not.3 = icmp eq i64 %indvars.iv.next422.3, %wide.trip.count424
  br i1 %exitcond425.not.3, label %.preheader354, label %.lr.ph360, !llvm.loop !245

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %.lr.ph362
  %indvars.iv426 = phi i64 [ %indvars.iv.next427, %.lr.ph362 ], [ %indvars.iv426.ph, %.lr.ph362.preheader ] ; 5 uses
  %i.oc = getelementptr inbounds i8, ptr %i.dq, i64 %indvars.iv426
  %i.od = load i8, ptr %i.oc, align 1
  %i.oe = sub nsw i64 %indvars.iv426, %i.ax       ; 2 uses
  %i.of = getelementptr inbounds i8, ptr %i.dg, i64 %i.oe
  %i.og = load i8, ptr %i.of, align 1
  %i.oh = zext i8 %i.og to i32                    ; 3 uses
  %i.oi = getelementptr inbounds i8, ptr %i.dl, i64 %indvars.iv426
  %i.oj = load i8, ptr %i.oi, align 1
  %i.ok = zext i8 %i.oj to i32                    ; 3 uses
  %i.ol = getelementptr inbounds i8, ptr %i.dl, i64 %i.oe
  %i.om = load i8, ptr %i.ol, align 1
  %i.on = zext i8 %i.om to i32                    ; 2 uses
  %i.oo = mul nuw nsw i32 %i.on, 3
  %i.op = add nuw nsw i32 %i.ok, %i.oh
  %i.oq = sub nsw i32 %i.oo, %i.op                ; 2 uses
  %i.or = tail call i32 @llvm.umin.i32(i32 range(i32 0, 256) %i.oh, i32 range(i32 0, 256) %i.ok) ; 2 uses
  %i.os = tail call i32 @llvm.umax.i32(i32 range(i32 0, 256) %i.oh, i32 range(i32 0, 256) %i.ok) ; 2 uses
  %.not.i303 = icmp sgt i32 %i.os, %i.oq
  %i.ot = select i1 %.not.i303, i32 %i.on, i32 %i.or
  %.not20.i = icmp sgt i32 %i.oq, %i.or
  %i.ou = select i1 %.not20.i, i32 %i.ot, i32 %i.os
  %.tr = trunc nuw i32 %i.ou to i8
  %.narrow284 = add i8 %i.od, %.tr
  %i.ov = getelementptr inbounds i8, ptr %i.dg, i64 %indvars.iv426
  store i8 %.narrow284, ptr %i.ov, align 1
  %indvars.iv.next427 = add nsw i64 %indvars.iv426, 1 ; 2 uses
  %exitcond430.not = icmp eq i64 %indvars.iv.next427, %i.bb
  br i1 %exitcond430.not, label %.loopexit348, label %.lr.ph362, !llvm.loop !246

bb.s:                                             ; preds = %bb.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dg, ptr nonnull align 1 %i.dq, i64 %i.ax, i1 false)
  br i1 %i.ay, label %iter.check719, label %.loopexit348

iter.check719:                                    ; preds = %bb.s
  br i1 %or.cond740, label %.lr.ph.preheader, label %vector.main.loop.iter.check704

vector.main.loop.iter.check704:                   ; preds = %iter.check719
  br i1 %min.iters.check705, label %vec.epilog.ph723, label %vector.body708

vector.body708:                                   ; preds = %vector.main.loop.iter.check704, %vector.body708
  %index709 = phi i64 [ %index.next714, %vector.body708 ], [ 0, %vector.main.loop.iter.check704 ] ; 3 uses
  %i.ow = add i64 %index709, %i.ax                ; 2 uses
  %i.ox = getelementptr inbounds i8, ptr %i.dq, i64 %i.ow ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %wide.load710 = load <16 x i8>, ptr %i.ox, align 1
  %wide.load711 = load <16 x i8>, ptr %i.oy, align 1
  %i.oz = getelementptr inbounds i8, ptr %i.dg, i64 %index709 ; 2 uses
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 16
  %wide.load712 = load <16 x i8>, ptr %i.oz, align 1
  %wide.load713 = load <16 x i8>, ptr %i.pa, align 1
  %i.pb = lshr <16 x i8> %wide.load712, splat (i8 1)
  %i.pc = lshr <16 x i8> %wide.load713, splat (i8 1)
  %i.pd = add <16 x i8> %i.pb, %wide.load710
  %i.pe = add <16 x i8> %i.pc, %wide.load711
  %i.pf = getelementptr inbounds i8, ptr %i.dg, i64 %i.ow ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 16
  store <16 x i8> %i.pd, ptr %i.pf, align 1
  store <16 x i8> %i.pe, ptr %i.pg, align 1
  %index.next714 = add nuw i64 %index709, 32      ; 2 uses
  %i.ph = icmp eq i64 %index.next714, %n.vec707
  br i1 %i.ph, label %middle.block715, label %vector.body708, !llvm.loop !247

middle.block715:                                  ; preds = %vector.body708
  br i1 %cmp.n716, label %.loopexit348, label %vec.epilog.iter.check721

vec.epilog.iter.check721:                         ; preds = %middle.block715
  br i1 %min.epilog.iters.check722, label %.lr.ph.preheader, label %vec.epilog.ph723, !prof !235

vec.epilog.ph723:                                 ; preds = %vector.main.loop.iter.check704, %vec.epilog.iter.check721
  %vec.epilog.resume.val717 = phi i64 [ %n.vec707, %vec.epilog.iter.check721 ], [ 0, %vector.main.loop.iter.check704 ]
  br label %vec.epilog.vector.body725

vec.epilog.vector.body725:                        ; preds = %vec.epilog.vector.body725, %vec.epilog.ph723
  %index726 = phi i64 [ %vec.epilog.resume.val717, %vec.epilog.ph723 ], [ %index.next729, %vec.epilog.vector.body725 ] ; 3 uses
  %i.pi = add i64 %index726, %i.ax                ; 2 uses
end_hunk_1
begin_hunk_2_@stbi__create_png_image_raw:bb.a
  %.1266383.epil.init = phi i32 [ 0, %.lr.ph387.preheader ], [ %i.rk, %.loopexit335.loopexit743.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod785)
  %i.se = and i32 %.1266383.epil.init, 3
  %i.sf = icmp eq i32 %i.se, 0
  br i1 %i.sf, label %bb.aa, label %.loopexit335.loopexit743.epilog-lcssa

bb.aa:                                            ; preds = %.lr.ph387.epil.preheader
  %i.sg = load i8, ptr %.2244384.epil.init, align 1
  br label %.loopexit335.loopexit743.epilog-lcssa

.loopexit335.loopexit743.epilog-lcssa:            ; preds = %bb.aa, %.lr.ph387.epil.preheader
  %.3.epil = phi i8 [ %i.sg, %bb.aa ], [ %.2238386.epil.init, %.lr.ph387.epil.preheader ]
  %i.sh = lshr i8 %.3.epil, 6
  %i.si = mul i8 %i.sh, %i.qo
  store i8 %i.si, ptr %.1240385.epil.init, align 1
  br label %.loopexit335

.loopexit335:                                     ; preds = %.loopexit335.loopexit743.epilog-lcssa, %.loopexit335.loopexit743.unr-lcssa, %.loopexit335.loopexit742.epilog-lcssa, %.loopexit335.loopexit742.unr-lcssa, %.loopexit335.loopexit.epilog-lcssa, %.loopexit335.loopexit.unr-lcssa, %.preheader338, %.preheader336, %.preheader
  br i1 %i.bd, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %.loopexit335
  br i1 %i.be, label %.preheader.i, label %.preheader26.i

.preheader26.i:                                   ; preds = %bb.ab
  br i1 %i.bf, label %.lr.ph.i.preheader, label %.loopexit

.lr.ph.i.preheader:                               ; preds = %.preheader26.i
  br i1 %lcmp.mod801.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.sj = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.cz ; 4 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 3
  store i8 -1, ptr %i.sk, align 1
  %i.sl = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.da ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 2
  %i.sn = load i8, ptr %i.sm, align 1
  %i.so = getelementptr inbounds nuw i8, ptr %i.sj, i64 2
  store i8 %i.sn, ptr %i.so, align 1
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 1
  %i.sq = load i8, ptr %i.sp, align 1
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sj, i64 1
  store i8 %i.sq, ptr %i.sr, align 1
  %i.ss = load i8, ptr %i.sl, align 1
  store i8 %i.ss, ptr %i.sj, align 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %i.bg, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  br i1 %i.db, label %.loopexit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.ab
  br i1 %i.bf, label %.lr.ph32.i.preheader, label %.loopexit

.lr.ph32.i.preheader:                             ; preds = %.preheader.i
  br i1 %lcmp.mod804.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol

.lr.ph32.i.prol:                                  ; preds = %.lr.ph32.i.preheader, %.lr.ph32.i.prol
  %indvars.iv35.i.prol = phi i64 [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ], [ %i.bg, %.lr.ph32.i.preheader ] ; 3 uses
  %prol.iter805 = phi i64 [ %prol.iter805.next, %.lr.ph32.i.prol ], [ 0, %.lr.ph32.i.preheader ]
  %i.st = shl nuw nsw i64 %indvars.iv35.i.prol, 1
  %i.su = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.st ; 2 uses
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 1
  store i8 -1, ptr %i.sv, align 1
  %i.sw = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv35.i.prol
  %i.sx = load i8, ptr %i.sw, align 1
  store i8 %i.sx, ptr %i.su, align 1
  %indvars.iv.next36.i.prol = add nsw i64 %indvars.iv35.i.prol, -1 ; 2 uses
  %prol.iter805.next = add i64 %prol.iter805, 1   ; 2 uses
  %prol.iter805.cmp.not = icmp eq i64 %prol.iter805.next, %xtraiter803
  br i1 %prol.iter805.cmp.not, label %.lr.ph32.i.prol.loopexit, label %.lr.ph32.i.prol, !llvm.loop !253

.lr.ph32.i.prol.loopexit:                         ; preds = %.lr.ph32.i.prol, %.lr.ph32.i.preheader
  %indvars.iv35.i.unr = phi i64 [ %i.bg, %.lr.ph32.i.preheader ], [ %indvars.iv.next36.i.prol, %.lr.ph32.i.prol ]
  br i1 %i.dc, label %.loopexit, label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.prol.loopexit, %.lr.ph32.i
  %indvars.iv35.i = phi i64 [ %indvars.iv.next36.i.3, %.lr.ph32.i ], [ %indvars.iv35.i.unr, %.lr.ph32.i.prol.loopexit ] ; 6 uses
  %i.sy = shl nuw nsw i64 %indvars.iv35.i, 1
  %i.sz = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.sy ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 1
  store i8 -1, ptr %i.ta, align 1
  %i.tb = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv35.i
  %i.tc = load i8, ptr %i.tb, align 1
  store i8 %i.tc, ptr %i.sz, align 1
  %indvars.iv.next36.i = add nsw i64 %indvars.iv35.i, -1 ; 2 uses
  %i.td = shl nuw nsw i64 %indvars.iv.next36.i, 1
  %i.te = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.td ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %i.te, i64 1
  store i8 -1, ptr %i.tf, align 1
  %i.tg = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv.next36.i
  %i.th = load i8, ptr %i.tg, align 1
  store i8 %i.th, ptr %i.te, align 1
  %indvars.iv.next36.i.1 = add nsw i64 %indvars.iv35.i, -2 ; 2 uses
  %i.ti = shl nuw nsw i64 %indvars.iv.next36.i.1, 1
  %i.tj = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ti ; 2 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 1
  store i8 -1, ptr %i.tk, align 1
  %i.tl = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv.next36.i.1
  %i.tm = load i8, ptr %i.tl, align 1
  store i8 %i.tm, ptr %i.tj, align 1
  %indvars.iv.next36.i.2 = add nsw i64 %indvars.iv35.i, -3 ; 3 uses
  %i.tn = shl nuw nsw i64 %indvars.iv.next36.i.2, 1
  %i.to = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.tn ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 1
  store i8 -1, ptr %i.tp, align 1
  %i.tq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %indvars.iv.next36.i.2
  %i.tr = load i8, ptr %i.tq, align 1
  store i8 %i.tr, ptr %i.to, align 1
  %indvars.iv.next36.i.3 = add nsw i64 %indvars.iv35.i, -4
  %.not39.i.3 = icmp eq i64 %indvars.iv.next36.i.2, 0
  br i1 %.not39.i.3, label %.loopexit, label %.lr.ph32.i, !llvm.loop !254

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 4 uses
  %i.ts = shl nsw i64 %indvars.iv.i, 2
  %i.tt = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ts ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 3
  store i8 -1, ptr %i.tu, align 1
  %i.tv = mul nuw nsw i64 %indvars.iv.i, 3
  %i.tw = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.tv ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.tw, i64 2
  %i.ty = load i8, ptr %i.tx, align 1
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tt, i64 2
  store i8 %i.ty, ptr %i.tz, align 1
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tw, i64 1
  %i.ub = load i8, ptr %i.ua, align 1
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tt, i64 1
  store i8 %i.ub, ptr %i.uc, align 1
  %i.ud = load i8, ptr %i.tw, align 1
  store i8 %i.ud, ptr %i.tt, align 1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.ue = shl nsw i64 %indvars.iv.next.i, 2
  %i.uf = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ue ; 4 uses
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 3
  store i8 -1, ptr %i.ug, align 1
  %i.uh = mul nuw nsw i64 %indvars.iv.next.i, 3
  %i.ui = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.uh ; 3 uses
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 2
  %i.uk = load i8, ptr %i.uj, align 1
  %i.ul = getelementptr inbounds nuw i8, ptr %i.uf, i64 2
  store i8 %i.uk, ptr %i.ul, align 1
  %i.um = getelementptr inbounds nuw i8, ptr %i.ui, i64 1
  %i.un = load i8, ptr %i.um, align 1
  %i.uo = getelementptr inbounds nuw i8, ptr %i.uf, i64 1
  store i8 %i.un, ptr %i.uo, align 1
  %i.up = load i8, ptr %i.ui, align 1
  store i8 %i.up, ptr %i.uf, align 1
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2
  %.not.i304.1 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i304.1, label %.loopexit, label %.lr.ph.i, !llvm.loop !255

bb.ac:                                            ; preds = %.loopexit348
  br i1 %i.bc, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.bd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dp, ptr nonnull align 1 %i.dg, i64 %i.bh, i1 false)
  br label %.loopexit

bb.af:                                            ; preds = %bb.ad
  br i1 %i.be, label %.preheader.i312, label %.preheader26.i306

.preheader26.i306:                                ; preds = %bb.af
  br i1 %i.bf, label %.lr.ph.i308.preheader, label %.loopexit

.lr.ph.i308.preheader:                            ; preds = %.preheader26.i306
  br i1 %lcmp.mod777.not.not, label %.lr.ph.i308.prol, label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol:                                 ; preds = %.lr.ph.i308.preheader
  %i.uq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.cq ; 4 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %i.uq, i64 3
  store i8 -1, ptr %i.ur, align 1
  %i.us = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cr ; 3 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 2
  %i.uu = load i8, ptr %i.ut, align 1
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uq, i64 2
  store i8 %i.uu, ptr %i.uv, align 1
  %i.uw = getelementptr inbounds nuw i8, ptr %i.us, i64 1
  %i.ux = load i8, ptr %i.uw, align 1
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uq, i64 1
  store i8 %i.ux, ptr %i.uy, align 1
  %i.uz = load i8, ptr %i.us, align 1
  store i8 %i.uz, ptr %i.uq, align 1
  br label %.lr.ph.i308.prol.loopexit

.lr.ph.i308.prol.loopexit:                        ; preds = %.lr.ph.i308.prol, %.lr.ph.i308.preheader
  %indvars.iv.i309.unr = phi i64 [ %i.bg, %.lr.ph.i308.preheader ], [ %indvars.iv.next.i310.prol, %.lr.ph.i308.prol ]
  br i1 %i.cs, label %.loopexit, label %.lr.ph.i308

.preheader.i312:                                  ; preds = %bb.af
  br i1 %i.bf, label %.lr.ph32.i314.preheader, label %.loopexit

.lr.ph32.i314.preheader:                          ; preds = %.preheader.i312
  br i1 %min.iters.check, label %.lr.ph32.i314.preheader744, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph32.i314.preheader
  %i.va = getelementptr i8, ptr %i.dm, i64 %i.bl
  %scevgep = getelementptr i8, ptr %i.va, i64 2
  %scevgep504 = getelementptr i8, ptr %scevgep, i64 %31
  %scevgep506 = getelementptr i8, ptr %scevgep505, i64 %i.df
  %bound0 = icmp ult ptr %i.dp, %scevgep506
  %bound1 = icmp ult ptr %i.dg, %scevgep504
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph32.i314.preheader744, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 2 uses
  %i.vb = sub i64 %i.bg, %index                   ; 2 uses
  %i.vc = shl nuw nsw i64 %i.vb, 1
  %i.vd = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.vc
  %i.ve = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.vb
  %i.vf = getelementptr inbounds i8, ptr %i.ve, i64 -7
  %wide.load = load <8 x i8>, ptr %i.vf, align 1, !alias.scope !256
  %i.vg = getelementptr inbounds i8, ptr %i.vd, i64 -14
  %interleaved.vec = shufflevector <8 x i8> %wide.load, <8 x i8> splat (i8 -1), <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.vg, align 1, !alias.scope !259, !noalias !256
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vh = icmp eq i64 %index.next, %n.vec
  br i1 %i.vh, label %middle.block, label %vector.body, !llvm.loop !261

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit, label %.lr.ph32.i314.preheader744

.lr.ph32.i314.preheader744:                       ; preds = %vector.memcheck, %.lr.ph32.i314.preheader, %middle.block
  %indvars.iv35.i315.ph = phi i64 [ %i.bg, %vector.memcheck ], [ %i.bg, %.lr.ph32.i314.preheader ], [ %i.cu, %middle.block ] ; 4 uses
  %i.vi = add nsw i64 %indvars.iv35.i315.ph, 1
  %xtraiter779 = and i64 %i.vi, 3                 ; 2 uses
  %lcmp.mod780.not = icmp eq i64 %xtraiter779, 0
  br i1 %lcmp.mod780.not, label %.lr.ph32.i314.prol.loopexit, label %.lr.ph32.i314.prol

.lr.ph32.i314.prol:                               ; preds = %.lr.ph32.i314.preheader744, %.lr.ph32.i314.prol
  %indvars.iv35.i315.prol = phi i64 [ %indvars.iv.next36.i316.prol, %.lr.ph32.i314.prol ], [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader744 ] ; 3 uses
  %prol.iter781 = phi i64 [ %prol.iter781.next, %.lr.ph32.i314.prol ], [ 0, %.lr.ph32.i314.preheader744 ]
  %i.vj = shl nuw nsw i64 %indvars.iv35.i315.prol, 1
  %i.vk = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.vj ; 2 uses
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 1
  store i8 -1, ptr %i.vl, align 1
  %i.vm = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv35.i315.prol
  %i.vn = load i8, ptr %i.vm, align 1
  store i8 %i.vn, ptr %i.vk, align 1
  %indvars.iv.next36.i316.prol = add nsw i64 %indvars.iv35.i315.prol, -1 ; 2 uses
  %prol.iter781.next = add i64 %prol.iter781, 1   ; 2 uses
  %prol.iter781.cmp.not = icmp eq i64 %prol.iter781.next, %xtraiter779
  br i1 %prol.iter781.cmp.not, label %.lr.ph32.i314.prol.loopexit, label %.lr.ph32.i314.prol, !llvm.loop !262

.lr.ph32.i314.prol.loopexit:                      ; preds = %.lr.ph32.i314.prol, %.lr.ph32.i314.preheader744
  %indvars.iv35.i315.unr = phi i64 [ %indvars.iv35.i315.ph, %.lr.ph32.i314.preheader744 ], [ %indvars.iv.next36.i316.prol, %.lr.ph32.i314.prol ]
  %i.vo = icmp ult i64 %indvars.iv35.i315.ph, 3
  br i1 %i.vo, label %.loopexit, label %.lr.ph32.i314

.lr.ph32.i314:                                    ; preds = %.lr.ph32.i314.prol.loopexit, %.lr.ph32.i314
  %indvars.iv35.i315 = phi i64 [ %indvars.iv.next36.i316.3, %.lr.ph32.i314 ], [ %indvars.iv35.i315.unr, %.lr.ph32.i314.prol.loopexit ] ; 6 uses
  %i.vp = shl nuw nsw i64 %indvars.iv35.i315, 1
  %i.vq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.vp ; 2 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 1
  store i8 -1, ptr %i.vr, align 1
  %i.vs = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv35.i315
  %i.vt = load i8, ptr %i.vs, align 1
  store i8 %i.vt, ptr %i.vq, align 1
  %indvars.iv.next36.i316 = add nsw i64 %indvars.iv35.i315, -1 ; 2 uses
  %i.vu = shl nuw nsw i64 %indvars.iv.next36.i316, 1
  %i.vv = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.vu ; 2 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 1
  store i8 -1, ptr %i.vw, align 1
  %i.vx = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.next36.i316
  %i.vy = load i8, ptr %i.vx, align 1
  store i8 %i.vy, ptr %i.vv, align 1
  %indvars.iv.next36.i316.1 = add nsw i64 %indvars.iv35.i315, -2 ; 2 uses
  %i.vz = shl nuw nsw i64 %indvars.iv.next36.i316.1, 1
  %i.wa = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.vz ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 1
  store i8 -1, ptr %i.wb, align 1
  %i.wc = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.next36.i316.1
  %i.wd = load i8, ptr %i.wc, align 1
  store i8 %i.wd, ptr %i.wa, align 1
  %indvars.iv.next36.i316.2 = add nsw i64 %indvars.iv35.i315, -3 ; 3 uses
  %i.we = shl nuw nsw i64 %indvars.iv.next36.i316.2, 1
  %i.wf = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.we ; 2 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 1
  store i8 -1, ptr %i.wg, align 1
  %i.wh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv.next36.i316.2
  %i.wi = load i8, ptr %i.wh, align 1
  store i8 %i.wi, ptr %i.wf, align 1
  %indvars.iv.next36.i316.3 = add nsw i64 %indvars.iv35.i315, -4
  %.not39.i317.3 = icmp eq i64 %indvars.iv.next36.i316.2, 0
  br i1 %.not39.i317.3, label %.loopexit, label %.lr.ph32.i314, !llvm.loop !263

.lr.ph.i308:                                      ; preds = %.lr.ph.i308.prol.loopexit, %.lr.ph.i308
  %indvars.iv.i309 = phi i64 [ %indvars.iv.next.i310.1, %.lr.ph.i308 ], [ %indvars.iv.i309.unr, %.lr.ph.i308.prol.loopexit ] ; 4 uses
  %i.wj = shl nsw i64 %indvars.iv.i309, 2
  %i.wk = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.wj ; 4 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 3
  store i8 -1, ptr %i.wl, align 1
  %i.wm = mul nuw nsw i64 %indvars.iv.i309, 3
  %i.wn = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.wm ; 3 uses
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 2
  %i.wp = load i8, ptr %i.wo, align 1
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wk, i64 2
  store i8 %i.wp, ptr %i.wq, align 1
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wn, i64 1
  %i.ws = load i8, ptr %i.wr, align 1
  %i.wt = getelementptr inbounds nuw i8, ptr %i.wk, i64 1
  store i8 %i.ws, ptr %i.wt, align 1
  %i.wu = load i8, ptr %i.wn, align 1
  store i8 %i.wu, ptr %i.wk, align 1
  %indvars.iv.next.i310 = add nsw i64 %indvars.iv.i309, -1 ; 3 uses
  %i.wv = shl nsw i64 %indvars.iv.next.i310, 2
  %i.ww = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.wv ; 4 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ww, i64 3
  store i8 -1, ptr %i.wx, align 1
  %i.wy = mul nuw nsw i64 %indvars.iv.next.i310, 3
  %i.wz = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.wy ; 3 uses
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 2
  %i.xb = load i8, ptr %i.xa, align 1
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ww, i64 2
  store i8 %i.xb, ptr %i.xc, align 1
  %i.xd = getelementptr inbounds nuw i8, ptr %i.wz, i64 1
  %i.xe = load i8, ptr %i.xd, align 1
  %i.xf = getelementptr inbounds nuw i8, ptr %i.ww, i64 1
  store i8 %i.xe, ptr %i.xf, align 1
  %i.xg = load i8, ptr %i.wz, align 1
  store i8 %i.xg, ptr %i.ww, align 1
  %indvars.iv.next.i310.1 = add nsw i64 %indvars.iv.i309, -2
  %.not.i311.1 = icmp eq i64 %indvars.iv.next.i310, 0
  br i1 %.not.i311.1, label %.loopexit, label %.lr.ph.i308, !llvm.loop !255

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.a, label %bb.ah, label %.loopexit

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.bd, label %.preheader342, label %bb.ai

.preheader342:                                    ; preds = %bb.ah
  br i1 %.not404, label %.loopexit, label %.lr.ph382.preheader

.lr.ph382.preheader:                              ; preds = %.preheader342
  br i1 %i.co, label %.lr.ph382.epil.preheader, label %.lr.ph382

.lr.ph382:                                        ; preds = %.lr.ph382.preheader, %.lr.ph382
  %.0381 = phi ptr [ %i.yp, %.lr.ph382 ], [ %i.dp, %.lr.ph382.preheader ] ; 5 uses
  %.0249380 = phi ptr [ %i.yq, %.lr.ph382 ], [ %i.dg, %.lr.ph382.preheader ] ; 9 uses
  %niter775 = phi i32 [ %niter775.next.3, %.lr.ph382 ], [ 0, %.lr.ph382.preheader ]
  %i.xh = load i8, ptr %.0249380, align 1
  %i.xi = zext i8 %i.xh to i16
  %i.xj = shl nuw i16 %i.xi, 8
  %i.xk = getelementptr inbounds nuw i8, ptr %.0249380, i64 1
  %i.xl = load i8, ptr %i.xk, align 1
  %i.xm = zext i8 %i.xl to i16
  %i.xn = or disjoint i16 %i.xj, %i.xm
  store i16 %i.xn, ptr %.0381, align 2
  %i.xo = getelementptr inbounds nuw i8, ptr %.0381, i64 2
  %i.xp = getelementptr inbounds nuw i8, ptr %.0249380, i64 2
  %i.xq = load i8, ptr %i.xp, align 1
  %i.xr = zext i8 %i.xq to i16
  %i.xs = shl nuw i16 %i.xr, 8
  %i.xt = getelementptr inbounds nuw i8, ptr %.0249380, i64 3
  %i.xu = load i8, ptr %i.xt, align 1
  %i.xv = zext i8 %i.xu to i16
  %i.xw = or disjoint i16 %i.xs, %i.xv
  store i16 %i.xw, ptr %i.xo, align 2
  %i.xx = getelementptr inbounds nuw i8, ptr %.0381, i64 4
  %i.xy = getelementptr inbounds nuw i8, ptr %.0249380, i64 4
  %i.xz = load i8, ptr %i.xy, align 1
  %i.ya = zext i8 %i.xz to i16
  %i.yb = shl nuw i16 %i.ya, 8
  %i.yc = getelementptr inbounds nuw i8, ptr %.0249380, i64 5
  %i.yd = load i8, ptr %i.yc, align 1
  %i.ye = zext i8 %i.yd to i16
  %i.yf = or disjoint i16 %i.yb, %i.ye
  store i16 %i.yf, ptr %i.xx, align 2
  %i.yg = getelementptr inbounds nuw i8, ptr %.0381, i64 6
  %i.yh = getelementptr inbounds nuw i8, ptr %.0249380, i64 6
  %i.yi = load i8, ptr %i.yh, align 1
  %i.yj = zext i8 %i.yi to i16
  %i.yk = shl nuw i16 %i.yj, 8
  %i.yl = getelementptr inbounds nuw i8, ptr %.0249380, i64 7
  %i.ym = load i8, ptr %i.yl, align 1
  %i.yn = zext i8 %i.ym to i16
  %i.yo = or disjoint i16 %i.yk, %i.yn
  store i16 %i.yo, ptr %i.yg, align 2
  %i.yp = getelementptr inbounds nuw i8, ptr %.0381, i64 8 ; 2 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %.0249380, i64 8 ; 2 uses
  %niter775.next.3 = add i32 %niter775, 4         ; 2 uses
  %niter775.ncmp.3 = icmp eq i32 %niter775.next.3, %unroll_iter774
  br i1 %niter775.ncmp.3, label %.loopexit.loopexit747.unr-lcssa, label %.lr.ph382, !llvm.loop !264

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.be, label %.preheader344, label %.preheader346

.preheader346:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph374

.preheader344:                                    ; preds = %bb.ai
  br i1 %i.x, label %.loopexit, label %.lr.ph378.preheader

.lr.ph378.preheader:                              ; preds = %.preheader344
  br i1 %i.cn, label %.lr.ph378.epil.preheader, label %.lr.ph378

.lr.ph378:                                        ; preds = %.lr.ph378.preheader, %.lr.ph378
end_hunk_2
