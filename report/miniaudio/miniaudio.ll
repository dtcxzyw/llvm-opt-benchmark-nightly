Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_dr_mp3dec_decode_frame:bb.a
  %i.azz = and i32 %i.azy, 1
  %i.baa = add nuw nsw i32 %i.azx, %i.azz
  %i.bab = mul nuw nsw i32 %i.baa, 3
  %i.bac = add nuw nsw i32 %i.bab, %i.azt
  %i.bad = icmp eq i32 %i.bac, 2
  %i.bae = zext i1 %i.bad to i32
  %i.baf = shl nuw nsw i32 %i.azp, %i.bae         ; 7 uses
  %i.bag = getelementptr inbounds nuw i8, ptr %.054151.i, i64 18
  %i.bah = load i8, ptr %i.bag, align 2, !tbaa !1122
  %.not58.i = icmp eq i8 %i.bah, 0
  br i1 %.not58.i, label %.thread.i148, label %bb.ee

.thread.i148:                                     ; preds = %bb.ed
  %i.bai = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv217.i
  br label %.preheader.i90.preheader.i

bb.ee:                                            ; preds = %bb.ed
  %i.baj = add nsw i32 %i.baf, -1
  %i.bak = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv217.i ; 4 uses
  %i.bal = mul nuw nsw i32 %i.baf, 18
  %i.bam = zext nneg i32 %i.bal to i64
  %i.ban = getelementptr inbounds nuw [4 x i8], ptr %i.bak, i64 %i.bam ; 2 uses
  %i.bao = load ptr, ptr %.054151.i, align 8, !tbaa !1130
  %i.bap = getelementptr inbounds nuw i8, ptr %.054151.i, i64 17
  %i.baq = load i8, ptr %i.bap, align 1, !tbaa !1123
  %i.bar = zext i8 %i.baq to i64
  %i.bas = getelementptr inbounds nuw i8, ptr %i.bao, i64 %i.bar ; 2 uses
  %i.bat = load i8, ptr %i.bas, align 1, !tbaa !119 ; 2 uses
  %.not30.i.i = icmp eq i8 %i.bat, 0
  br i1 %.not30.i.i, label %bb.eh, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ee, %bb.eg
  %i.bau = phi i8 [ %i.bcd, %bb.eg ], [ %i.bat, %bb.ee ] ; 4 uses
  %.033.i.i = phi ptr [ %.lcssa726, %bb.eg ], [ %i.ob, %bb.ee ] ; 2 uses
  %.02232.i.i = phi ptr [ %i.bcc, %bb.eg ], [ %i.ban, %bb.ee ] ; 2 uses
  %.02531.i.i = phi ptr [ %i.bcb, %bb.eg ], [ %i.bas, %bb.ee ]
  %i.bav = zext i8 %i.bau to i32                  ; 3 uses
  %i.baw = zext i8 %i.bau to i64                  ; 3 uses
  %i.bax = shl nuw nsw i32 %i.bav, 1
  %i.bay = zext nneg i32 %i.bax to i64            ; 4 uses
  %xtraiter771 = and i32 %i.bav, 1
  %i.baz = icmp eq i8 %i.bau, 1
  br i1 %i.baz, label %.epil.preheader770, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter776 = and i32 %i.bav, 254
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ef, %.preheader.i.i.new
  %.129.i.i = phi ptr [ %.033.i.i, %.preheader.i.i.new ], [ %i.bbq, %bb.ef ] ; 7 uses
  %.12328.i.i = phi ptr [ %.02232.i.i, %.preheader.i.i.new ], [ %i.bbr, %bb.ef ] ; 5 uses
  %niter777 = phi i32 [ 0, %.preheader.i.i.new ], [ %niter777.next.1, %bb.ef ]
  %i.bba = load float, ptr %.12328.i.i, align 4, !tbaa !349
  %i.bbb = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 4
  store float %i.bba, ptr %.129.i.i, align 4, !tbaa !349
  %i.bbc = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i, i64 %i.baw
  %i.bbd = load float, ptr %i.bbc, align 4, !tbaa !349
  %i.bbe = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 8
  store float %i.bbd, ptr %i.bbb, align 4, !tbaa !349
  %i.bbf = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i, i64 %i.bay
  %i.bbg = load float, ptr %i.bbf, align 4, !tbaa !349
  %i.bbh = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 12
  store float %i.bbg, ptr %i.bbe, align 4, !tbaa !349
  %i.bbi = getelementptr inbounds nuw i8, ptr %.12328.i.i, i64 4 ; 3 uses
  %i.bbj = load float, ptr %i.bbi, align 4, !tbaa !349
  %i.bbk = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 16
  store float %i.bbj, ptr %i.bbh, align 4, !tbaa !349
  %i.bbl = getelementptr inbounds nuw [4 x i8], ptr %i.bbi, i64 %i.baw
  %i.bbm = load float, ptr %i.bbl, align 4, !tbaa !349
  %i.bbn = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 20
  store float %i.bbm, ptr %i.bbk, align 4, !tbaa !349
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr %i.bbi, i64 %i.bay
  %i.bbp = load float, ptr %i.bbo, align 4, !tbaa !349
  %i.bbq = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 24 ; 3 uses
  store float %i.bbp, ptr %i.bbn, align 4, !tbaa !349
  %i.bbr = getelementptr inbounds nuw i8, ptr %.12328.i.i, i64 8 ; 3 uses
  %niter777.next.1 = add i32 %niter777, 2         ; 2 uses
  %niter777.ncmp.1 = icmp eq i32 %niter777.next.1, %unroll_iter776
  br i1 %niter777.ncmp.1, label %.unr-lcssa, label %bb.ef, !llvm.loop !3007

.unr-lcssa:                                       ; preds = %bb.ef
  %lcmp.mod772.not = icmp eq i32 %xtraiter771, 0
  br i1 %lcmp.mod772.not, label %bb.eg, label %.epil.preheader770

.epil.preheader770:                               ; preds = %.unr-lcssa, %.preheader.i.i
  %.129.i.i.epil.init = phi ptr [ %.033.i.i, %.preheader.i.i ], [ %i.bbq, %.unr-lcssa ] ; 4 uses
  %.12328.i.i.epil.init = phi ptr [ %.02232.i.i, %.preheader.i.i ], [ %i.bbr, %.unr-lcssa ] ; 4 uses
  %lcmp.mod775 = trunc i8 %i.bau to i1
  tail call void @llvm.assume(i1 %lcmp.mod775)
  %i.bbs = load float, ptr %.12328.i.i.epil.init, align 4, !tbaa !349
  %i.bbt = getelementptr inbounds nuw i8, ptr %.129.i.i.epil.init, i64 4
  store float %i.bbs, ptr %.129.i.i.epil.init, align 4, !tbaa !349
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i.epil.init, i64 %i.baw
  %i.bbv = load float, ptr %i.bbu, align 4, !tbaa !349
  %i.bbw = getelementptr inbounds nuw i8, ptr %.129.i.i.epil.init, i64 8
  store float %i.bbv, ptr %i.bbt, align 4, !tbaa !349
  %i.bbx = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i.epil.init, i64 %i.bay
  %i.bby = load float, ptr %i.bbx, align 4, !tbaa !349
  %i.bbz = getelementptr inbounds nuw i8, ptr %.129.i.i.epil.init, i64 12
  store float %i.bby, ptr %i.bbw, align 4, !tbaa !349
  %i.bca = getelementptr inbounds nuw i8, ptr %.12328.i.i.epil.init, i64 4
  br label %bb.eg

bb.eg:                                            ; preds = %.unr-lcssa, %.epil.preheader770
  %.lcssa726 = phi ptr [ %i.bbq, %.unr-lcssa ], [ %i.bbz, %.epil.preheader770 ] ; 2 uses
  %.lcssa725 = phi ptr [ %i.bbr, %.unr-lcssa ], [ %i.bca, %.epil.preheader770 ]
  %i.bcb = getelementptr inbounds nuw i8, ptr %.02531.i.i, i64 3 ; 2 uses
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %.lcssa725, i64 %i.bay
  %i.bcd = load i8, ptr %i.bcb, align 1, !tbaa !119 ; 2 uses
  %.not.i87.i = icmp eq i8 %i.bcd, 0
  br i1 %.not.i87.i, label %ma_dr_mp3_L3_reorder.exit.loopexit.i, label %.preheader.i.i, !llvm.loop !3008

ma_dr_mp3_L3_reorder.exit.loopexit.i:             ; preds = %bb.eg
  %.pre225.i = ptrtoint ptr %.lcssa726 to i64
  br label %bb.eh

bb.eh:                                            ; preds = %ma_dr_mp3_L3_reorder.exit.loopexit.i, %bb.ee
  %.pre-phi.i = phi i64 [ %.pre225.i, %ma_dr_mp3_L3_reorder.exit.loopexit.i ], [ %i.oc, %bb.ee ]
  %i.bce = sub i64 %.pre-phi.i, %i.oc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ban, ptr nonnull align 8 %i.ob, i64 %i.bce, i1 false)
  br i1 %.not57.i, label %ma_dr_mp3_L3_antialias.exit.i.thread, label %.preheader.i90.preheader.i

ma_dr_mp3_L3_antialias.exit.i.thread:             ; preds = %bb.eh
  %i.bcf = getelementptr inbounds nuw [1152 x i8], ptr %0, i64 %indvars.iv217.i
  %i.bcg = getelementptr inbounds nuw i8, ptr %.054151.i, i64 15
  %i.bch = load i8, ptr %i.bcg, align 1, !tbaa !1133
  br label %bb.ej

.preheader.i90.preheader.i:                       ; preds = %bb.eh, %.thread.i148
  %i.bci = phi ptr [ %i.bai, %.thread.i148 ], [ %i.bak, %bb.eh ] ; 5 uses
  %.0275.i = phi i32 [ 31, %.thread.i148 ], [ %i.baj, %bb.eh ]
  br label %.preheader.i90.i

.preheader.i90.i:                                 ; preds = %.preheader.i90.i, %.preheader.i90.preheader.i
  %.031.i.i = phi ptr [ %i.bcj, %.preheader.i90.i ], [ %i.bci, %.preheader.i90.preheader.i ] ; 4 uses
  %.02830.i.i = phi i32 [ %i.bdh, %.preheader.i90.i ], [ %.0275.i, %.preheader.i90.preheader.i ] ; 2 uses
  %i.bcj = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 72 ; 3 uses
  %i.bck = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 56 ; 2 uses
  %i.bcl = load <4 x float>, ptr %i.bcj, align 1, !tbaa !119 ; 2 uses
  %i.bcm = load <4 x float>, ptr %i.bck, align 1, !tbaa !119
  %i.bcn = shufflevector <4 x float> %i.bcm, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.bco = fmul <4 x float> %i.bcl, <float f0x3F5B84A8, float 8.817420e-01, float f0x3F731ADD, float f0x3F7BBA81>
  %i.bcp = fmul <4 x float> %i.bcn, <float f0x3F03B5FE, float f0x3EF186DA, float f0x3EA07302, float f0x3E3A4774>
  %i.bcq = fsub <4 x float> %i.bco, %i.bcp
  store <4 x float> %i.bcq, ptr %i.bcj, align 1, !tbaa !119
  %i.bcr = fmul <4 x float> %i.bcl, <float f0x3F03B5FE, float f0x3EF186DA, float f0x3EA07302, float f0x3E3A4774>
  %i.bcs = fmul <4 x float> %i.bcn, <float f0x3F5B84A8, float 8.817420e-01, float f0x3F731ADD, float f0x3F7BBA81>
  %i.bct = fadd <4 x float> %i.bcr, %i.bcs
  %i.bcu = shufflevector <4 x float> %i.bct, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.bcu, ptr %i.bck, align 1, !tbaa !119
  %i.bcv = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 88 ; 2 uses
  %i.bcw = load <4 x float>, ptr %i.bcv, align 1, !tbaa !119 ; 2 uses
  %i.bcx = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 40 ; 2 uses
  %i.bcy = load <4 x float>, ptr %i.bcx, align 1, !tbaa !119
  %i.bcz = shufflevector <4 x float> %i.bcy, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.bda = fmul <4 x float> %i.bcw, <float f0x3F7EDA41, float f0x3F7FC8FD, float f0x3F7FF965, float f0x3F7FFF8D>
  %i.bdb = fmul <4 x float> %i.bcz, <float f0x3DC1B01D, float f0x3D27CB86, float f0x3C68A114, float 3.699970e-03>
  %i.bdc = fsub <4 x float> %i.bda, %i.bdb
  store <4 x float> %i.bdc, ptr %i.bcv, align 1, !tbaa !119
  %i.bdd = fmul <4 x float> %i.bcw, <float f0x3DC1B01D, float f0x3D27CB86, float f0x3C68A114, float 3.699970e-03>
  %i.bde = fmul <4 x float> %i.bcz, <float f0x3F7EDA41, float f0x3F7FC8FD, float f0x3F7FF965, float f0x3F7FFF8D>
  %i.bdf = fadd <4 x float> %i.bdd, %i.bde
  %i.bdg = shufflevector <4 x float> %i.bdf, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.bdg, ptr %i.bcx, align 1, !tbaa !119
  %i.bdh = add nsw i32 %.02830.i.i, -1
  %i.bdi = icmp samesign ugt i32 %.02830.i.i, 1
  br i1 %i.bdi, label %.preheader.i90.i, label %ma_dr_mp3_L3_antialias.exit.i, !llvm.loop !3009

ma_dr_mp3_L3_antialias.exit.i:                    ; preds = %.preheader.i90.i
  %i.bdj = getelementptr inbounds nuw [1152 x i8], ptr %0, i64 %indvars.iv217.i ; 3 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %.054151.i, i64 15
  %i.bdl = load i8, ptr %i.bdk, align 1, !tbaa !1133 ; 2 uses
  br i1 %.not57.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %ma_dr_mp3_L3_antialias.exit.i
  %i.bdm = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv217.i
  tail call fastcc void @ma_dr_mp3_L3_imdct36(ptr noundef nonnull %i.bci, ptr noundef %i.bdj, ptr noundef nonnull @ma_dr_mp3_L3_imdct_gr.g_mdct_window, i32 noundef range(i32 0, 5) %i.baf)
  %i.bdn = mul nuw nsw i32 %i.baf, 18
  %i.bdo = zext nneg i32 %i.bdn to i64
  %i.bdp = getelementptr inbounds nuw [4 x i8], ptr %i.bdm, i64 %i.bdo
  %i.bdq = mul nuw nsw i32 %i.baf, 9
  %i.bdr = zext nneg i32 %i.bdq to i64
  %i.bds = getelementptr inbounds nuw [4 x i8], ptr %i.bdj, i64 %i.bdr
  br label %bb.ej

bb.ej:                                            ; preds = %ma_dr_mp3_L3_antialias.exit.i.thread, %bb.ei, %ma_dr_mp3_L3_antialias.exit.i
  %i.bdt = phi i8 [ %i.bdl, %bb.ei ], [ %i.bdl, %ma_dr_mp3_L3_antialias.exit.i ], [ %i.bch, %ma_dr_mp3_L3_antialias.exit.i.thread ] ; 2 uses
  %i.bdu = phi ptr [ %i.bci, %bb.ei ], [ %i.bci, %ma_dr_mp3_L3_antialias.exit.i ], [ %i.bak, %ma_dr_mp3_L3_antialias.exit.i.thread ]
  %.015.i.i = phi ptr [ %i.bds, %bb.ei ], [ %i.bdj, %ma_dr_mp3_L3_antialias.exit.i ], [ %i.bcf, %ma_dr_mp3_L3_antialias.exit.i.thread ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bdp, %bb.ei ], [ %i.bci, %ma_dr_mp3_L3_antialias.exit.i ], [ %i.bak, %ma_dr_mp3_L3_antialias.exit.i.thread ] ; 2 uses
  %i.bdv = icmp eq i8 %i.bdt, 2
  br i1 %i.bdv, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  %i.bdw = sub nuw nsw i32 32, %i.baf
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %bb.ek
  %.016.i.i.i = phi i32 [ %i.bdw, %bb.ek ], [ %i.bfq, %bb.el ] ; 2 uses
  %.01215.i.i.i = phi ptr [ %.015.i.i, %bb.ek ], [ %i.bfr, %bb.el ] ; 7 uses
  %.01314.i.i.i = phi ptr [ %.0.i.i, %bb.ek ], [ %i.bfs, %bb.el ] ; 20 uses
  %.sroa.0.0.copyload.i.i.i = load float, ptr %.01314.i.i.i, align 4 ; 2 uses
  %.sroa.4.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 4
  %.sroa.0.0.copyload.i.i.i.a = load float, ptr %.sroa.4.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.4.0..013.sroa_idx.i.i.i.a = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 8
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..013.sroa_idx.i.i.i.a, align 4 ; 2 uses
  %.sroa.5.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 12
  %.sroa.6.0.copyload.i.i.i = load float, ptr %.sroa.5.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.6.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 16
  %.sroa.6.0.copyload.i.i.i.a = load float, ptr %.sroa.6.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.7.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 20
  %.sroa.8.0.copyload.i.i.i = load float, ptr %.sroa.7.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.9.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 24 ; 2 uses
  %.sroa.9.0.copyload.i.i.i = load float, ptr %.sroa.9.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.10.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 28 ; 2 uses
  %.sroa.10.0.copyload.i.i.i = load float, ptr %.sroa.10.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.11.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 32 ; 2 uses
  %.sroa.11.0.copyload.i.i.i = load float, ptr %.sroa.11.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.12.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 36
  %.sroa.12.0.copyload.i.i.i = load float, ptr %.sroa.12.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.13.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 40 ; 2 uses
  %.sroa.13.0.copyload.i.i.i = load float, ptr %.sroa.13.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.14.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 44 ; 2 uses
  %.sroa.14.0.copyload.i.i.i = load float, ptr %.sroa.14.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.15.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 48 ; 2 uses
  %.sroa.15.0.copyload.i.i.i = load float, ptr %.sroa.15.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.16.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 52 ; 2 uses
  %.sroa.16.0.copyload.i.i.i = load float, ptr %.sroa.16.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.17.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 56 ; 2 uses
  %.sroa.17.0.copyload.i.i.i = load float, ptr %.sroa.17.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.18.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 60
  %.sroa.19.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 64
  %.sroa.20.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 68 ; 2 uses
  %i.bdx = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 24 ; 6 uses
  %i.bdy = fneg float %.sroa.0.0.copyload.i.i.i
  %i.bdz = fadd float %.sroa.6.0.copyload.i.i.i, %.sroa.9.0.copyload.i.i.i
  %i.bea = fadd float %.sroa.12.0.copyload.i.i.i, %.sroa.15.0.copyload.i.i.i ; 2 uses
  %i.beb = fmul float %i.bdz, f0x3F5DB3D7         ; 2 uses
  %i.bec = fneg float %i.bea
  %i.bed = tail call float @llvm.fmuladd.f32(float %i.bec, float 5.000000e-01, float %i.bdy) ; 2 uses
  %7 = fsub float %i.bea, %.sroa.0.0.copyload.i.i.i
  %i.bee = fadd float %i.beb, %i.bed              ; 2 uses
  %8 = fsub float %i.bed, %i.beb
  %9 = fsub float %.sroa.9.0.copyload.i.i.i, %.sroa.6.0.copyload.i.i.i ; 2 uses
  %10 = fneg float %9
  %i.bef = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 28 ; 6 uses
  %i.beg = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 32 ; 5 uses
  %11 = fadd float %.sroa.6.0.copyload.i.i.i.a, %.sroa.10.0.copyload.i.i.i
  %12 = fadd float %.sroa.13.0.copyload.i.i.i, %.sroa.16.0.copyload.i.i.i ; 2 uses
  %13 = fmul float %11, f0x3F5DB3D7               ; 2 uses
  %14 = fneg float %12
  %i.beh = fsub float %12, %.sroa.0.0.copyload.i.i.i.a ; 2 uses
  %i.bei = fsub float %.sroa.16.0.copyload.i.i.i, %.sroa.13.0.copyload.i.i.i
  %i.bej = fmul float %i.bei, f0x3F5DB3D7         ; 2 uses
  %i.bek = fneg float %.sroa.0.0.copyload.i.i.i.a
  %15 = load <2 x float>, ptr %.sroa.18.0..013.sroa_idx.i.i.i, align 4 ; 3 uses
  %16 = extractelement <2 x float> %15, i64 0
  %i.bel = fadd float %9, %16
  %17 = insertelement <2 x float> poison, float %.sroa.15.0.copyload.i.i.i, i64 0
  %18 = insertelement <2 x float> %17, float %.sroa.10.0.copyload.i.i.i, i64 1
  %19 = insertelement <2 x float> poison, float %.sroa.12.0.copyload.i.i.i, i64 0
  %20 = insertelement <2 x float> %19, float %.sroa.6.0.copyload.i.i.i.a, i64 1
  %21 = fsub <2 x float> %18, %20                 ; 2 uses
  %22 = fmul <2 x float> %21, <float f0x3F5DB3D7, float 1.000000e+00> ; 2 uses
  %23 = insertelement <2 x float> <float poison, float -0.000000e+00>, float %10, i64 0
  %24 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %23, <2 x float> <float 5.000000e-01, float 0.000000e+00>, <2 x float> %15) ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %24, %22
  %25 = fadd <2 x float> %22, %24
  %i.bem = shufflevector <2 x float> %25, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ben = fmul <4 x float> %i.bem, <float f0x3F4B1934, float f0xBF6C835E, float f0xBF1BD7CA, float f0x3EC3EF15> ; 4 uses
  %26 = extractelement <4 x float> %i.ben, i64 0
  %27 = tail call float @llvm.fmuladd.f32(float %i.bee, float f0x3F1BD7CA, float %26)
  %28 = extractelement <4 x float> %i.ben, i64 2
  %29 = tail call float @llvm.fmuladd.f32(float %i.bee, float f0x3F4B1934, float %28)
  %i.beo = insertelement <4 x float> poison, float %27, i64 0
  %i.bep = insertelement <4 x float> %i.beo, float %i.bel, i64 1
  %i.beq = shufflevector <4 x float> %i.bep, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %30 = fmul <4 x float> %i.beq, <float f0xBE05A8A8, float f0xBF6C835E, float f0x3F7DCF55, float f0x3EC3EF15>
  %31 = extractelement <4 x float> %i.ben, i64 1
  %32 = tail call float @llvm.fmuladd.f32(float %i.beh, float f0x3EC3EF15, float %31) ; 2 uses
  %i.ber = extractelement <4 x float> %i.ben, i64 3
  %33 = tail call float @llvm.fmuladd.f32(float %i.beh, float f0x3F6C835E, float %i.ber)
  %i.bes = fmul float %32, f0xBEC3EF15
  %34 = fmul float %32, f0x3F6C835E
  %i.bet = fadd float %.sroa.14.0.copyload.i.i.i, %.sroa.17.0.copyload.i.i.i ; 2 uses
  %i.beu = fneg float %i.bet
  %35 = fsub float %i.bet, %.sroa.4.0.copyload.i.i.i
  %i.bev = fsub float %.sroa.11.0.copyload.i.i.i, %.sroa.8.0.copyload.i.i.i ; 2 uses
  %36 = fneg float %i.bev
  %.sroa.20.0.copyload.i.i.i = load float, ptr %.sroa.20.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.01314.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.01215.i.i.i, i64 24, i1 false)
  %37 = load float, ptr %i.bdx, align 4, !tbaa !349
  store float %29, ptr %i.bdx, align 4, !tbaa !349
  %38 = insertelement <4 x float> poison, float %37, i64 0
  %39 = insertelement <4 x float> %38, float %7, i64 1
  %40 = shufflevector <4 x float> %39, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %41 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %40, <4 x float> <float f0x3F7DCF55, float f0x3EC3EF15, float f0x3E05A8A8, float f0x3F6C835E>, <4 x float> %30) ; 4 uses
  %42 = extractelement <4 x float> %41, i64 0
  store float %42, ptr %.sroa.9.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %i.bew = extractelement <4 x float> %41, i64 2
  store float %i.bew, ptr %.sroa.14.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %43 = load float, ptr %i.bef, align 4, !tbaa !349
  %44 = extractelement <4 x float> %41, i64 3
  store float %44, ptr %i.bef, align 4, !tbaa !349
  %45 = shufflevector <4 x float> %41, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %46 = shufflevector <2 x float> %45, <2 x float> %foldExtExtBinop, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %47 = fmul <4 x float> %46, <float f0xBEC3EF15, float f0x3F7DCF55, float f0x3F6C835E, float f0xBE05A8A8>
  %48 = insertelement <4 x float> poison, float %43, i64 0
  %49 = insertelement <4 x float> %48, float %8, i64 1
  %50 = shufflevector <4 x float> %49, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %51 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %50, <4 x float> <float f0x3F6C835E, float f0x3E05A8A8, float f0x3EC3EF15, float f0x3F7DCF55>, <4 x float> %47) ; 4 uses
  %52 = extractelement <4 x float> %51, i64 0
  store float %52, ptr %.sroa.10.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %53 = extractelement <4 x float> %51, i64 2
  store float %53, ptr %.sroa.13.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %54 = load float, ptr %i.beg, align 4, !tbaa !349
  %55 = extractelement <4 x float> %51, i64 3
  store float %55, ptr %i.beg, align 4, !tbaa !349
  %56 = shufflevector <4 x float> %51, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %57 = insertelement <4 x float> %56, float %i.bek, i64 2
  %58 = shufflevector <2 x float> %15, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %59 = shufflevector <4 x float> %57, <4 x float> %58, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %60 = fmul <4 x float> %59, <float f0xBF1BD7CA, float f0x3F4B1934, float 1.000000e+00, float 1.000000e+00>
  %61 = insertelement <4 x float> poison, float %54, i64 0
  %62 = insertelement <4 x float> %61, float %14, i64 2
  %63 = fneg <2 x float> %21
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %65 = shufflevector <4 x float> %62, <4 x float> %64, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %66 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %65, <4 x float> <float f0x3F4B1934, float f0x3F1BD7CA, float 5.000000e-01, float 5.000000e-01>, <4 x float> %60) ; 3 uses
  %67 = shufflevector <4 x float> %66, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  store <2 x float> %67, ptr %.sroa.11.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %68 = extractelement <4 x float> %66, i64 2     ; 2 uses
  %69 = fadd float %13, %68                       ; 2 uses
  %70 = fsub float %68, %13
  %i.bex = extractelement <4 x float> %66, i64 3  ; 2 uses
  %71 = fadd float %i.bej, %i.bex                 ; 2 uses
  %72 = fsub float %i.bex, %i.bej
  %73 = load float, ptr %i.bdx, align 4, !tbaa !349 ; 2 uses
  %74 = fmul float %71, f0x3F4B1934
  %75 = tail call float @llvm.fmuladd.f32(float %69, float f0x3F1BD7CA, float %74) ; 2 uses
  %76 = fmul float %71, f0xBF1BD7CA
  %77 = tail call float @llvm.fmuladd.f32(float %69, float f0x3F4B1934, float %76)
  store float %77, ptr %i.bdx, align 4, !tbaa !349
  %78 = fmul float %75, f0xBE05A8A8
  %79 = tail call float @llvm.fmuladd.f32(float %73, float f0x3F7DCF55, float %78)
  store float %79, ptr %.sroa.15.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %80 = fmul float %75, f0x3F7DCF55
  %81 = tail call float @llvm.fmuladd.f32(float %73, float f0x3E05A8A8, float %80)
  store float %81, ptr %.sroa.20.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %i.bey = load float, ptr %i.bef, align 4, !tbaa !349 ; 2 uses
  store float %33, ptr %i.bef, align 4, !tbaa !349
  %i.bez = tail call float @llvm.fmuladd.f32(float %i.bey, float f0x3F6C835E, float %i.bes)
  store float %i.bez, ptr %.sroa.16.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %i.bfa = tail call float @llvm.fmuladd.f32(float %i.bey, float f0x3EC3EF15, float %34)
  store float %i.bfa, ptr %.sroa.19.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %i.bfb = load float, ptr %i.beg, align 4, !tbaa !349
  %82 = fneg float %.sroa.4.0.copyload.i.i.i
  %83 = insertelement <4 x float> poison, float %72, i64 0
  %84 = insertelement <4 x float> %83, float %82, i64 2
  %85 = insertelement <4 x float> %84, float %.sroa.20.0.copyload.i.i.i, i64 3
  %86 = shufflevector <4 x float> %85, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %87 = fmul <4 x float> %86, <float f0x3F7DCF55, float f0xBE05A8A8, float 1.000000e+00, float 1.000000e+00>
  %88 = insertelement <4 x float> poison, float %70, i64 0
  %89 = insertelement <4 x float> %88, float %i.beu, i64 2
  %90 = insertelement <4 x float> %89, float %36, i64 3
  %91 = shufflevector <4 x float> %90, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %92 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %91, <4 x float> <float f0x3E05A8A8, float f0x3F7DCF55, float 5.000000e-01, float 5.000000e-01>, <4 x float> %87) ; 4 uses
  %i.bfc = extractelement <4 x float> %92, i64 1
  store float %i.bfc, ptr %i.beg, align 4, !tbaa !349
  %93 = shufflevector <4 x float> %92, <4 x float> poison, <2 x i32> zeroinitializer
  %i.bfd = fmul <2 x float> %93, <float f0xBF1BD7CA, float f0x3F4B1934>
  %i.bfe = insertelement <2 x float> poison, float %i.bfb, i64 0
  %i.bff = shufflevector <2 x float> %i.bfe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bfg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bff, <2 x float> <float f0x3F4B1934, float f0x3F1BD7CA>, <2 x float> %i.bfd)
  store <2 x float> %i.bfg, ptr %.sroa.17.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %94 = extractelement <4 x float> %92, i64 2     ; 2 uses
  %95 = fadd float %i.bev, %.sroa.20.0.copyload.i.i.i
  %i.bfh = extractelement <4 x float> %92, i64 3  ; 2 uses
  %96 = load float, ptr %i.bdx, align 4, !tbaa !349
  %97 = fadd float %.sroa.8.0.copyload.i.i.i, %.sroa.11.0.copyload.i.i.i
  %98 = fmul float %97, f0x3F5DB3D7               ; 2 uses
  %99 = fsub float %.sroa.17.0.copyload.i.i.i, %.sroa.14.0.copyload.i.i.i
  %i.bfi = fmul float %99, f0x3F5DB3D7            ; 2 uses
  %100 = fadd float %98, %94
  %i.bfj = fsub float %94, %98
  %101 = fadd float %i.bfi, %i.bfh
  %102 = fsub float %i.bfh, %i.bfi
  %103 = insertelement <2 x float> poison, float %101, i64 0
  %104 = shufflevector <2 x float> %103, <2 x float> poison, <2 x i32> zeroinitializer
  %105 = fmul <2 x float> %104, <float f0x3F4B1934, float f0xBF1BD7CA>
  %106 = insertelement <2 x float> poison, float %100, i64 0
  %107 = shufflevector <2 x float> %106, <2 x float> poison, <2 x i32> zeroinitializer
  %108 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %107, <2 x float> <float f0x3F1BD7CA, float f0x3F4B1934>, <2 x float> %105) ; 2 uses
  %109 = extractelement <2 x float> %108, i64 1
  store float %109, ptr %i.bdx, align 4, !tbaa !349
  %110 = load float, ptr %i.bef, align 4, !tbaa !349
  %111 = shufflevector <2 x float> %108, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %112 = insertelement <4 x float> %111, float %95, i64 1
  %113 = shufflevector <4 x float> %112, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %114 = fmul <4 x float> %113, <float f0xBE05A8A8, float f0xBF6C835E, float f0x3F7DCF55, float f0x3EC3EF15>
  %i.bfk = insertelement <4 x float> poison, float %96, i64 0
  %i.bfl = insertelement <4 x float> %i.bfk, float %35, i64 1
  %115 = shufflevector <4 x float> %i.bfl, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bfm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %115, <4 x float> <float f0x3F7DCF55, float f0x3EC3EF15, float f0x3E05A8A8, float f0x3F6C835E>, <4 x float> %114) ; 4 uses
  %116 = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 16
  %117 = load float, ptr %i.beg, align 4, !tbaa !349
  %118 = shufflevector <4 x float> %i.bfm, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %119 = insertelement <2 x float> %118, float %102, i64 1
  %120 = shufflevector <2 x float> %119, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bfn = fmul <4 x float> %120, <float f0xBEC3EF15, float f0x3F7DCF55, float f0x3F6C835E, float f0xBE05A8A8>
  %121 = insertelement <4 x float> poison, float %110, i64 0
  %i.bfo = insertelement <4 x float> %121, float %i.bfj, i64 1
  %122 = shufflevector <4 x float> %i.bfo, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bfp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %122, <4 x float> <float f0x3F6C835E, float f0x3E05A8A8, float f0x3EC3EF15, float f0x3F7DCF55>, <4 x float> %i.bfn) ; 4 uses
  %123 = shufflevector <4 x float> %i.bfp, <4 x float> %i.bfm, <2 x i32> <i32 2, i32 6>
  store <2 x float> %123, ptr %116, align 4, !tbaa !349
  %124 = shufflevector <4 x float> %i.bfm, <4 x float> %i.bfp, <2 x i32> <i32 3, i32 7>
  store <2 x float> %124, ptr %i.bef, align 4, !tbaa !349
  %125 = shufflevector <4 x float> %i.bfp, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %126 = fmul <2 x float> %125, <float f0xBF1BD7CA, float f0x3F4B1934>
  %127 = insertelement <2 x float> poison, float %117, i64 0
  %128 = shufflevector <2 x float> %127, <2 x float> poison, <2 x i32> zeroinitializer
  %129 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %128, <2 x float> <float f0x3F4B1934, float f0x3F1BD7CA>, <2 x float> %126)
  %130 = shufflevector <2 x float> %129, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %131 = shufflevector <4 x float> %i.bfm, <4 x float> %130, <4 x i32> <i32 0, i32 poison, i32 4, i32 5>
  %132 = shufflevector <4 x float> %131, <4 x float> %i.bfp, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  store <4 x float> %132, ptr %.01215.i.i.i, align 4, !tbaa !349
  %i.bfq = add nsw i32 %.016.i.i.i, -1
  %i.bfr = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 36
  %i.bfs = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 72
  %i.bft = icmp samesign ugt i32 %.016.i.i.i, 1
  br i1 %i.bft, label %bb.el, label %ma_dr_mp3_L3_imdct_gr.exit.i, !llvm.loop !3010

bb.em:                                            ; preds = %bb.ej
  %i.bfu = icmp eq i8 %i.bdt, 3
  %i.bfv = zext i1 %i.bfu to i64
  %i.bfw = getelementptr inbounds nuw [72 x i8], ptr @ma_dr_mp3_L3_imdct_gr.g_mdct_window, i64 %i.bfv
  %i.bfx = sub nuw nsw i32 32, %i.baf
  tail call fastcc void @ma_dr_mp3_L3_imdct36(ptr noundef nonnull %.0.i.i, ptr noundef %.015.i.i, ptr noundef nonnull %i.bfw, i32 noundef %i.bfx)
  br label %ma_dr_mp3_L3_imdct_gr.exit.i

ma_dr_mp3_L3_imdct_gr.exit.i:                     ; preds = %bb.el, %bb.em
  %i.bfy = getelementptr inbounds nuw i8, ptr %i.bdu, i64 72
  br label %.preheader.i92.i

.preheader.i92.i:                                 ; preds = %.preheader.i92.i, %ma_dr_mp3_L3_imdct_gr.exit.i
  %.0913.i.i = phi i32 [ 0, %ma_dr_mp3_L3_imdct_gr.exit.i ], [ %i.bha, %.preheader.i92.i ] ; 2 uses
  %.01012.i.i = phi ptr [ %i.bfy, %ma_dr_mp3_L3_imdct_gr.exit.i ], [ %i.bhb, %.preheader.i92.i ] ; 10 uses
  %i.bfz = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 4 ; 2 uses
  %i.bga = load float, ptr %i.bfz, align 4, !tbaa !349
  %i.bgb = fneg float %i.bga
  store float %i.bgb, ptr %i.bfz, align 4, !tbaa !349
  %i.bgc = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 12 ; 2 uses
  %i.bgd = load float, ptr %i.bgc, align 4, !tbaa !349
  %i.bge = fneg float %i.bgd
  store float %i.bge, ptr %i.bgc, align 4, !tbaa !349
  %i.bgf = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 20 ; 2 uses
  %i.bgg = load float, ptr %i.bgf, align 4, !tbaa !349
  %i.bgh = fneg float %i.bgg
  store float %i.bgh, ptr %i.bgf, align 4, !tbaa !349
  %i.bgi = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 28 ; 2 uses
  %i.bgj = load float, ptr %i.bgi, align 4, !tbaa !349
  %i.bgk = fneg float %i.bgj
  store float %i.bgk, ptr %i.bgi, align 4, !tbaa !349
  %i.bgl = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 36 ; 2 uses
  %i.bgm = load float, ptr %i.bgl, align 4, !tbaa !349
  %i.bgn = fneg float %i.bgm
  store float %i.bgn, ptr %i.bgl, align 4, !tbaa !349
  %i.bgo = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 44 ; 2 uses
  %i.bgp = load float, ptr %i.bgo, align 4, !tbaa !349
  %i.bgq = fneg float %i.bgp
  store float %i.bgq, ptr %i.bgo, align 4, !tbaa !349
  %i.bgr = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 52 ; 2 uses
  %i.bgs = load float, ptr %i.bgr, align 4, !tbaa !349
  %i.bgt = fneg float %i.bgs
  store float %i.bgt, ptr %i.bgr, align 4, !tbaa !349
  %i.bgu = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 60 ; 2 uses
  %i.bgv = load float, ptr %i.bgu, align 4, !tbaa !349
  %i.bgw = fneg float %i.bgv
  store float %i.bgw, ptr %i.bgu, align 4, !tbaa !349
  %i.bgx = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 68 ; 2 uses
  %i.bgy = load float, ptr %i.bgx, align 4, !tbaa !349
  %i.bgz = fneg float %i.bgy
  store float %i.bgz, ptr %i.bgx, align 4, !tbaa !349
  %i.bha = add nuw nsw i32 %.0913.i.i, 2
  %i.bhb = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 144
  %i.bhc = icmp samesign ult i32 %.0913.i.i, 30
  br i1 %i.bhc, label %.preheader.i92.i, label %ma_dr_mp3_L3_change_sign.exit.i, !llvm.loop !3011

ma_dr_mp3_L3_change_sign.exit.i:                  ; preds = %.preheader.i92.i
  %indvars.iv.next218.i = add nuw nsw i64 %indvars.iv217.i, 1 ; 2 uses
  %i.bhd = getelementptr inbounds nuw i8, ptr %.054151.i, i64 32
  %exitcond221.not.i = icmp eq i64 %indvars.iv.next218.i, %wide.trip.count220.i
  br i1 %exitcond221.not.i, label %ma_dr_mp3_L3_decode.exit, label %bb.ed, !llvm.loop !3012

ma_dr_mp3_L3_decode.exit:                         ; preds = %ma_dr_mp3_L3_change_sign.exit.i, %ma_dr_mp3_L3_midside_stereo.exit.i
  %i.bhe = load i32, ptr %i.kq, align 4, !tbaa !840
  tail call fastcc void @ma_dr_mp3d_synth_granule(ptr noundef nonnull %i.od, ptr noundef nonnull %i.no, i32 noundef 18, i32 noundef %i.bhe, ptr noundef %.0100323, ptr noundef nonnull %i.ob)
  %i.bhf = load i32, ptr %i.kq, align 4, !tbaa !840
  %i.bhg = sext i32 %i.bhf to i64
  %i.bhh = mul nsw i64 %i.bhg, 1152
  %i.bhi = getelementptr inbounds nuw i8, ptr %.0100323, i64 %i.bhh
  %i.bhj = load i8, ptr %i.kr, align 1, !tbaa !119
  %i.bhk = and i8 %i.bhj, 8
  %.not115 = icmp ne i8 %i.bhk, 0
  %i.bhl = and i1 %.not115, %i.og
  br i1 %i.bhl, label %bb.ak, label %.loopexit.loopexit, !llvm.loop !3013

.loopexit.loopexit:                               ; preds = %ma_dr_mp3_L3_decode.exit
  %.pre = load i32, ptr %i.nh, align 8, !tbaa !3030
  %.pre407 = load i32, ptr %i.nj, align 4, !tbaa !3031
  %i.bhm = add nsw i32 %.pre, 7
  %i.bhn = lshr i32 %i.bhm, 3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.aj
  %i.bho = phi i32 [ %.pre407, %.loopexit.loopexit ], [ %i.ni, %bb.aj ]
  %i.bhp = phi i32 [ %i.bhn, %.loopexit.loopexit ], [ 0, %bb.aj ] ; 2 uses
  %i.bhq = lshr i32 %i.bho, 3                     ; 2 uses
  %i.bhr = sub nsw i32 %i.bhq, %i.bhp             ; 3 uses
  %spec.select14.i = tail call i32 @llvm.smin.i32(i32 %i.bhr, i32 511) ; 2 uses
  %i.bhs = icmp sgt i32 %i.bhr, 0
  br i1 %i.bhs, label %bb.en, label %ma_dr_mp3_L3_save_reservoir.exit

bb.en:                                            ; preds = %.loopexit
  %i.bht = icmp samesign ugt i32 %i.bhr, 511
  %i.bhu = add nsw i32 %i.bhq, -511
  %spec.select.i159 = select i1 %i.bht, i32 %i.bhu, i32 %i.bhp
  %i.bhv = zext nneg i32 %spec.select.i159 to i64
  %i.bhw = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.bhv
  %i.bhx = zext nneg i32 %spec.select14.i to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mu, ptr nonnull readonly align 1 %i.bhw, i64 %i.bhx, i1 false)
  br label %ma_dr_mp3_L3_save_reservoir.exit

ma_dr_mp3_L3_save_reservoir.exit:                 ; preds = %.loopexit, %bb.en
  store i32 %spec.select14.i, ptr %i.mq, align 8, !tbaa !3029
  br label %bb.fy

bb.eo:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.bhy = icmp eq ptr %3, null
  br i1 %i.bhy, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.bhz = zext i8 %.fr to i32                    ; 2 uses
  %i.bia = and i32 %i.bhz, 6
  %i.bib = icmp eq i32 %i.bia, 6
  %i.bic = and i32 %i.bhz, 14
  %i.bid = icmp eq i32 %i.bic, 2
  %i.bie = zext i1 %i.bid to i32
  %i.bif = lshr exact i32 1152, %i.bie
  %i.big = select i1 %i.bib, i32 384, i32 %i.bif
  br label %.thread224

bb.eq:                                            ; preds = %bb.eo
  %i.bih = load i8, ptr %i.km, align 1, !tbaa !119
  %i.bii = zext i8 %i.bih to i32                  ; 2 uses
  %i.bij = lshr i32 %i.bii, 6                     ; 2 uses
  switch i32 %i.bij, label %.fold.split.i.i [
    i32 3, label %bb.es
    i32 1, label %bb.er
  ]

bb.er:                                            ; preds = %bb.eq
  %i.bik = lshr i32 %i.bii, 2
  %i.bil = and i32 %i.bik, 12
  %i.bim = add nuw nsw i32 %i.bil, 4
  br label %bb.es

.fold.split.i.i:                                  ; preds = %bb.eq
  br label %bb.es

bb.es:                                            ; preds = %.fold.split.i.i, %bb.er, %bb.eq
  %i.bin = phi i32 [ 0, %bb.eq ], [ %i.bim, %bb.er ], [ 32, %.fold.split.i.i ] ; 3 uses
  %i.bio = zext i8 %.fr to i32                    ; 3 uses
  %i.bip = and i32 %i.bio, 6
  %i.biq = icmp eq i32 %i.bip, 6
  br i1 %i.biq, label %ma_dr_mp3_L12_subband_alloc_table.exit.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bir = and i32 %i.bio, 8
  %.not.i.i160 = icmp eq i32 %i.bir, 0
  br i1 %.not.i.i160, label %ma_dr_mp3_L12_subband_alloc_table.exit.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.bis = load i8, ptr %i.ks, align 1, !tbaa !119 ; 2 uses
  %i.bit = lshr i8 %i.bis, 2
  %i.biu = and i8 %i.bit, 3                       ; 2 uses
  %i.biv = lshr i32 %i.bio, 1
  %i.biw = and i32 %i.biv, 3
  %i.bix = zext nneg i32 %i.biw to i64
  %i.biy = getelementptr [15 x i8], ptr getelementptr inbounds nuw (i8, ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 45), i64 %i.bix
  %i.biz = getelementptr i8, ptr %i.biy, i64 -15
  %i.bja = lshr i8 %i.bis, 4
  %i.bjb = zext nneg i8 %i.bja to i64
  %i.bjc = getelementptr inbounds nuw i8, ptr %i.biz, i64 %i.bjb
  %i.bjd = load i8, ptr %i.bjc, align 1, !tbaa !119 ; 2 uses
  %i.bje = zext i8 %i.bjd to i32
  %i.bjf = shl nuw nsw i32 %i.bje, 1
  %i.bjg = icmp ne i32 %i.bij, 3
  %i.bjh = zext i1 %i.bjg to i32
  %i.bji = lshr exact i32 %i.bjf, %i.bjh
  %.not25.i.i = icmp eq i8 %i.bjd, 0
  %spec.store.select.i.i = select i1 %.not25.i.i, i32 192, i32 %i.bji ; 2 uses
  %i.bjj = icmp samesign ult i32 %spec.store.select.i.i, 56
  br i1 %i.bjj, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.bjk = icmp eq i8 %i.biu, 2
  %i.bjl = select i1 %i.bjk, i32 12, i32 8
  br label %ma_dr_mp3_L12_subband_alloc_table.exit.i

bb.ew:                                            ; preds = %bb.eu
  %i.bjm = icmp samesign ugt i32 %spec.store.select.i.i, 95
  %i.bjn = icmp ne i8 %i.biu, 1
  %or.cond.i.i161 = and i1 %i.bjn, %i.bjm
  %spec.select.i.i162 = select i1 %or.cond.i.i161, i32 30, i32 27
  br label %ma_dr_mp3_L12_subband_alloc_table.exit.i

ma_dr_mp3_L12_subband_alloc_table.exit.i:         ; preds = %bb.ew, %bb.ev, %bb.et, %bb.es
  %.123.i.i = phi ptr [ @ma_dr_mp3_L12_subband_alloc_table.g_alloc_L1, %bb.es ], [ @ma_dr_mp3_L12_subband_alloc_table.g_alloc_L2M2, %bb.et ], [ @ma_dr_mp3_L12_subband_alloc_table.g_alloc_L2M1_lowrate, %bb.ev ], [ @ma_dr_mp3_L12_subband_alloc_table.g_alloc_L2M1, %bb.ew ]
  %.1.i.i163 = phi i32 [ 32, %bb.es ], [ 30, %bb.et ], [ %i.bjl, %bb.ev ], [ %spec.select.i.i162, %bb.ew ] ; 8 uses
  %i.bjo = trunc nuw nsw i32 %.1.i.i163 to i8
  %i.bjp = getelementptr inbounds nuw i8, ptr %6, i64 768
  store i8 %i.bjo, ptr %i.bjp, align 16, !tbaa !3033
  %i.bjq = tail call i32 @llvm.umin.i32(i32 %i.bin, i32 %.1.i.i163) ; 2 uses
  %i.bjr = trunc nuw nsw i32 %i.bjq to i8
end_hunk_0
begin_hunk_1_@ma_dr_flac__seek_to_approximate_flac_frame_to_byte:bb.a
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %.lr.ph, %.preheader.i._crit_edge, %bb.c
  %i.ac = icmp eq i64 %.028, 0
  br i1 %i.ac, label %bb.d, label %.thread

bb.d:                                             ; preds = %.loopexit
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !735 ; 3 uses
  %i.ae = icmp ugt i64 %i.ad, 2147483647
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !736 ; 2 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !737 ; 2 uses
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call i32 %i.af(ptr noundef %i.ag, i32 noundef 2147483647, i32 noundef 0) #55, !inline_history !60
  %.not22.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not22.i.i, label %ma_dr_flac__seek_to_first_frame.exit, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.e
  %.018.i.i65 = add i64 %i.ad, -2147483647        ; 3 uses
  %i.ai = icmp ugt i64 %.018.i.i65, 2147483647
  br i1 %i.ai, label %.lr.ph67, label %.preheader.i.i._crit_edge

.preheader.i.i:                                   ; preds = %.lr.ph67
  %.018.i.i = add i64 %.018.i.i66, -2147483647    ; 3 uses
  %i.aj = icmp ugt i64 %.018.i.i, 2147483647
  br i1 %i.aj, label %.lr.ph67, label %.preheader.i.i._crit_edge, !llvm.loop !61

.lr.ph67:                                         ; preds = %.preheader.i.i.preheader, %.preheader.i.i
  %.018.i.i66 = phi i64 [ %.018.i.i, %.preheader.i.i ], [ %.018.i.i65, %.preheader.i.i.preheader ]
  %i.ak = load ptr, ptr %i.d, align 8, !tbaa !736
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !737
  %i.am = tail call i32 %i.ak(ptr noundef %i.al, i32 noundef 2147483647, i32 noundef 1) #55, !inline_history !60
  %.not24.i.i = icmp eq i32 %i.am, 0
  br i1 %.not24.i.i, label %ma_dr_flac__seek_to_first_frame.exit, label %.preheader.i.i, !llvm.loop !61

.preheader.i.i._crit_edge:                        ; preds = %.preheader.i.i, %.preheader.i.i.preheader
  %.018.i.i.lcssa = phi i64 [ %.018.i.i65, %.preheader.i.i.preheader ], [ %.018.i.i, %.preheader.i.i ]
  %i.an = load ptr, ptr %i.d, align 8, !tbaa !736
  %i.ao = load ptr, ptr %i.e, align 8, !tbaa !737
  %i.ap = trunc nuw nsw i64 %.018.i.i.lcssa to i32
  %i.aq = tail call i32 %i.an(ptr noundef %i.ao, i32 noundef %i.ap, i32 noundef 1) #55, !inline_history !60
  %.not23.not.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not23.not.i.i, label %ma_dr_flac__seek_to_first_frame.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ar = trunc nuw nsw i64 %i.ad to i32
  %i.as = tail call i32 %i.af(ptr noundef %i.ag, i32 noundef %i.ar, i32 noundef 0) #55, !inline_history !60
  %.not.i.i = icmp eq i32 %i.as, 0
  br i1 %.not.i.i, label %ma_dr_flac__seek_to_first_frame.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.i.i._crit_edge
  store i32 512, ptr %i.f, align 8, !tbaa !738
  store i32 64, ptr %i.g, align 4, !tbaa !739
  store i64 0, ptr %i.h, align 8, !tbaa !740
  store i64 0, ptr %i.j, align 8, !tbaa !741
  store i32 0, ptr %i.k, align 8, !tbaa !742
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  br label %ma_dr_flac__seek_to_first_frame.exit

ma_dr_flac__seek_to_first_frame.exit:             ; preds = %.lr.ph67, %bb.e, %.preheader.i.i._crit_edge, %bb.f, %bb.g
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.l, i8 0, i64 168, i1 false)
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread37

bb.h:                                             ; preds = %bb.c, %.preheader.i._crit_edge
  store i32 512, ptr %i.f, align 8, !tbaa !738
  store i32 64, ptr %i.g, align 4, !tbaa !739
  store i64 0, ptr %i.h, align 8, !tbaa !740
  store i64 0, ptr %i.j, align 8, !tbaa !741
  store i32 0, ptr %i.k, align 8, !tbaa !742
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.l, i8 0, i64 160, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %i.at = load i8, ptr %i.m, align 1, !tbaa !728
  %i.au = tail call fastcc i32 @ma_dr_flac__read_next_flac_frame_header(ptr noundef %i.c, i8 noundef zeroext %i.at, ptr noundef %i.l)
  %.not.i32 = icmp eq i32 %i.au, 0
  br i1 %.not.i32, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = tail call fastcc i32 @ma_dr_flac__decode_flac_frame(ptr noundef nonnull %0)
  switch i32 %i.av, label %.thread [
    i32 0, label %bb.k
    i32 -100, label %bb.i
  ]

.thread:                                          ; preds = %bb.j, %bb.i, %bb.b, %.loopexit
  %.pn.in = sub i64 %.025, %2
  %.pn = lshr i64 %.pn.in, 1
  %.126 = add i64 %.pn, %2                        ; 3 uses
  %i.aw = icmp eq i64 %.126, %.028
  br i1 %i.aw, label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread37, label %ma_dr_flac__read_and_decode_next_flac_frame.exit

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ay = load i64, ptr %i.l, align 8, !tbaa !749 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %bb.l, label %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !750
  %i.bc = zext i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 54
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !751
  %i.bf = zext i16 %i.be to i64
  %i.bg = mul nuw nsw i64 %i.bf, %i.bc
  br label %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit

ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit: ; preds = %bb.k, %bb.l
  %.013.i = phi i64 [ %i.bg, %bb.l ], [ %i.ay, %bb.k ]
  store i64 %.013.i, ptr %i.ax, align 8, !tbaa !164
  store i64 %.028, ptr %4, align 8, !tbaa !164
  br label %ma_dr_flac__read_and_decode_next_flac_frame.exit.thread37

ma_dr_flac__read_and_decode_next_flac_frame.exit.thread37: ; preds = %.thread, %ma_dr_flac__seek_to_first_frame.exit, %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit
  %.2 = phi i32 [ 1, %ma_dr_flac__get_pcm_frame_range_of_current_flac_frame.exit ], [ 0, %ma_dr_flac__seek_to_first_frame.exit ], [ 0, %.thread ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ma_dr_mp3_L3_imdct36(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 1, 33) %3) unnamed_addr #48 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 52
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0103 = phi ptr [ %0, %bb.a ], [ %i.ib, %.preheader ] ; 24 uses
  %.096102 = phi ptr [ %1, %bb.a ], [ %i.ic, %.preheader ] ; 5 uses
  %.098101 = phi i32 [ 0, %bb.a ], [ %i.ia, %.preheader ]
  %i.f = load float, ptr %.0103, align 4, !tbaa !349 ; 2 uses
  %i.g = fneg float %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %.0103, i64 68
  %i.i = load float, ptr %i.h, align 4, !tbaa !349 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0103, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !349 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0103, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !349 ; 2 uses
  %i.n = fsub float %i.k, %i.m                    ; 3 uses
  %i.o = fadd float %i.k, %i.m                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0103, i64 16 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !349 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0103, i64 12
  %i.s = load float, ptr %i.r, align 4, !tbaa !349 ; 2 uses
  %i.t = fsub float %i.q, %i.s                    ; 3 uses
  %i.u = fadd float %i.q, %i.s                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0103, i64 20
  %i.w = load float, ptr %i.v, align 4, !tbaa !349 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0103, i64 24
  %i.y = load float, ptr %i.x, align 4, !tbaa !349 ; 2 uses
  %i.z = fsub float %i.w, %i.y                    ; 2 uses
  %i.aa = fadd float %i.w, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %.0103, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0103, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %.0103, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.0103, i64 36
  %i.af = getelementptr inbounds nuw i8, ptr %.0103, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %.0103, i64 48
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !349 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0103, i64 44
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !349 ; 2 uses
  %i.ak = fsub float %i.ah, %i.aj
  %i.al = fadd float %i.ah, %i.aj                 ; 2 uses
  %i.am = fneg float %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.0103, i64 52
  %i.ao = getelementptr inbounds nuw i8, ptr %.0103, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %.0103, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %.0103, i64 60
  %i.ar = fsub float %i.al, %i.f                  ; 2 uses
  %i.as = load <2 x float>, ptr %i.ac, align 4, !tbaa !349 ; 3 uses
  %i.at = load float, ptr %i.ab, align 4, !tbaa !349
  %i.au = extractelement <2 x float> %i.as, i64 0
  %i.av = fsub float %i.at, %i.au                 ; 3 uses
  %i.aw = load <2 x float>, ptr %i.aq, align 4, !tbaa !349 ; 3 uses
  %i.ax = load float, ptr %i.ap, align 4, !tbaa !349
  %i.ay = extractelement <2 x float> %i.aw, i64 0
  %i.az = fsub float %i.ax, %i.ay                 ; 3 uses
  %i.ba = shufflevector <2 x float> %i.as, <2 x float> %i.aw, <2 x i32> <i32 1, i32 3>
  %i.bb = shufflevector <2 x float> %i.as, <2 x float> %i.aw, <2 x i32> <i32 0, i32 2>
  %i.bc = fadd <2 x float> %i.ba, %i.bb           ; 3 uses
  %i.bd = fneg <2 x float> %i.bc
  %i.be = insertelement <2 x float> poison, float %i.u, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fsub <2 x float> %i.bd, %i.bf
  %i.bh = fmul <2 x float> %i.bg, <float f0x3F708FB2, float f0x3F441B7D> ; 2 uses
  %i.bi = extractelement <2 x float> %i.bc, i64 0 ; 2 uses
  %i.bj = extractelement <2 x float> %i.bc, i64 1 ; 2 uses
  %i.bk = fsub float %i.bj, %i.bi
  %i.bl = fmul float %i.bk, f0x3E31D0D4           ; 2 uses
  %i.bm = fsub float %i.u, %i.bj
  %i.bn = fsub float %i.bm, %i.bi                 ; 2 uses
  %i.bo = fneg float %i.bn
  %i.bp = fadd float %i.ar, %i.bn
  %i.bq = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.br = fmul float %i.aa, f0x3F5DB3D7           ; 3 uses
  %i.bs = load <2 x float>, ptr %i.ae, align 4, !tbaa !349 ; 3 uses
  %i.bt = load float, ptr %i.af, align 4, !tbaa !349
  %i.bu = extractelement <2 x float> %i.bs, i64 0
  %i.bv = fsub float %i.bu, %i.bt                 ; 3 uses
  %i.bw = load <2 x float>, ptr %i.an, align 4, !tbaa !349 ; 3 uses
  %i.bx = load float, ptr %i.ao, align 4, !tbaa !349
  %i.by = extractelement <2 x float> %i.bw, i64 0
  %i.bz = fsub float %i.by, %i.bx                 ; 3 uses
  %i.ca = shufflevector <2 x float> %i.bs, <2 x float> %i.bw, <2 x i32> <i32 0, i32 2>
  %i.cb = shufflevector <2 x float> %i.bs, <2 x float> %i.bw, <2 x i32> <i32 1, i32 3>
  %i.cc = fadd <2 x float> %i.ca, %i.cb           ; 3 uses
  %i.cd = extractelement <2 x float> %i.cc, i64 0 ; 2 uses
  %i.ce = extractelement <2 x float> %i.cc, i64 1 ; 2 uses
  %i.cf = fsub float %i.cd, %i.ce
  %i.cg = fmul float %i.cf, f0x3EAF1D44           ; 2 uses
  %i.ch = insertelement <2 x float> poison, float %i.o, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fadd <2 x float> %i.ci, %i.cc
  %i.ck = fmul <2 x float> %i.cj, <float f0x3F7C1C5C, float f0x3F248DBB> ; 2 uses
  %i.cl = fsub float %i.o, %i.cd
  %i.cm = fsub float %i.cl, %i.ce
  %i.cn = fmul float %i.cm, f0x3F5DB3D7           ; 2 uses
  %i.co = extractelement <2 x float> %i.ck, i64 0 ; 2 uses
  %i.cp = fsub float %i.co, %i.br
  %i.cq = extractelement <2 x float> %i.ck, i64 1 ; 2 uses
  %i.cr = fsub float %i.cp, %i.cq                 ; 2 uses
  %i.cs = fsub float %i.cg, %i.br
  %i.ct = fsub float %i.cs, %i.co                 ; 2 uses
  %i.cu = fadd float %i.br, %i.cg
  %i.cv = fsub float %i.cu, %i.cq                 ; 2 uses
  %i.cw = fsub float %i.i, %i.z                   ; 2 uses
  %i.cx = fadd float %i.bz, %i.bv
  %i.cy = fmul float %i.cx, f0x3F708FB2           ; 2 uses
  %i.cz = fadd float %i.bz, %i.n
  %i.da = fmul float %i.cz, f0x3F441B7D           ; 2 uses
  %i.db = fsub float %i.bv, %i.n
  %i.dc = fmul float %i.db, f0x3E31D0D4           ; 2 uses
  %i.dd = fsub float %i.n, %i.bz
  %i.de = fadd float %i.bv, %i.dd                 ; 2 uses
  %i.df = fneg float %i.de
  %i.dg = insertelement <4 x float> poison, float %i.am, i64 0
  %i.dh = insertelement <4 x float> %i.dg, float %i.bo, i64 1
  %i.di = insertelement <4 x float> %i.dh, float %i.z, i64 2
  %i.dj = insertelement <4 x float> %i.di, float %i.df, i64 3
  %i.dk = insertelement <4 x float> poison, float %i.g, i64 0
  %i.dl = insertelement <4 x float> %i.dk, float %i.ar, i64 1
  %i.dm = insertelement <4 x float> %i.dl, float %i.i, i64 2
  %i.dn = insertelement <4 x float> %i.dm, float %i.cw, i64 3
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dj, <4 x float> splat (float 5.000000e-01), <4 x float> %i.dn) ; 4 uses
  %4 = extractelement <4 x float> %i.do, i64 0    ; 3 uses
  %i.dp = extractelement <2 x float> %i.bh, i64 1 ; 2 uses
  %i.dq = fsub float %4, %i.dp
  %i.dr = fadd float %i.bl, %i.dq                 ; 2 uses
  %5 = extractelement <2 x float> %i.bh, i64 0    ; 2 uses
  %i.ds = fsub float %4, %5
  %i.dt = fadd float %i.ds, %i.dp                 ; 2 uses
  %i.du = fadd float %4, %5
  %i.dv = fsub float %i.du, %i.bl                 ; 2 uses
  %i.dw = fsub float %i.dv, %i.ct
  %i.dx = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.dy = extractelement <4 x float> %i.do, i64 1 ; 2 uses
  %i.dz = fadd float %i.dy, %i.cn
  %i.ea = insertelement <4 x float> %i.dx, float %i.dz, i64 1
  %i.eb = fsub float %i.dt, %i.cv
  %i.ec = insertelement <4 x float> %i.ea, float %i.eb, i64 2
  %i.ed = fadd float %i.dr, %i.cr
  %.sroa.0139.12.vec.insert = insertelement <4 x float> %i.ec, float %i.ed, i64 3 ; 2 uses
  %i.ee = fsub float %i.dr, %i.cr
  %i.ef = insertelement <4 x float> %i.bq, float %i.ee, i64 1
  %i.eg = fadd float %i.dt, %i.cv
  %i.eh = insertelement <4 x float> %i.ef, float %i.eg, i64 2
  %i.ei = fsub float %i.dy, %i.cn
  %.sroa.14.28.vec.insert = insertelement <4 x float> %i.eh, float %i.ei, i64 3 ; 2 uses
  %i.ej = fadd float %i.dv, %i.ct                 ; 2 uses
  %i.ek = fadd float %i.cw, %i.de
  %i.el = insertelement <4 x float> poison, float %i.ek, i64 0
  %i.em = extractelement <4 x float> %i.do, i64 2 ; 3 uses
  %i.en = fsub float %i.em, %i.da
  %i.eo = fadd float %i.dc, %i.en                 ; 2 uses
  %i.ep = fsub float %i.em, %i.cy
  %i.eq = fadd float %i.ep, %i.da                 ; 2 uses
  %i.er = fadd float %i.em, %i.cy
  %i.es = fsub float %i.er, %i.dc                 ; 2 uses
  %i.et = fmul float %i.ak, f0x3F5DB3D7           ; 3 uses
  %i.eu = fadd float %i.az, %i.av
  %i.ev = fmul float %i.eu, f0x3F7C1C5C           ; 2 uses
  %i.ew = fsub float %i.av, %i.t
  %i.ex = fmul float %i.ew, f0x3EAF1D44           ; 2 uses
  %i.ey = fadd float %i.az, %i.t
  %i.ez = fmul float %i.ey, f0x3F248DBB           ; 2 uses
  %i.fa = fsub float %i.az, %i.av
  %i.fb = fsub float %i.fa, %i.t
  %i.fc = fmul float %i.fb, f0x3F5DB3D7           ; 2 uses
  %i.fd = fsub float %i.ev, %i.et
  %i.fe = fsub float %i.fd, %i.ez                 ; 2 uses
  %i.ff = fsub float %i.ex, %i.et
  %i.fg = fsub float %i.ff, %i.ev                 ; 2 uses
  %i.fh = fadd float %i.et, %i.ex
  %i.fi = fsub float %i.fh, %i.ez                 ; 2 uses
  %i.fj = fsub float %i.es, %i.fg
  %i.fk = insertelement <4 x float> poison, float %i.fj, i64 0
  %i.fl = extractelement <4 x float> %i.do, i64 3 ; 2 uses
  %i.fm = fadd float %i.fl, %i.fc
  %i.fn = fsub float %i.eq, %i.fi
  %i.fo = fadd float %i.eo, %i.fe
  %i.fp = fsub float %i.eo, %i.fe
  %i.fq = fadd float %i.eq, %i.fi
  %i.fr = fsub float %i.fl, %i.fc
  %i.fs = fadd float %i.es, %i.fg                 ; 2 uses
  %i.ft = fneg float %i.fm
  %i.fu = insertelement <4 x float> %i.fk, float %i.ft, i64 1
  %i.fv = insertelement <4 x float> %i.fu, float %i.fn, i64 2
  %i.fw = fneg float %i.fo
  %.sroa.0.12.vec.insert119 = insertelement <4 x float> %i.fv, float %i.fw, i64 3 ; 2 uses
  %i.fx = fneg float %i.fp
  %i.fy = insertelement <4 x float> %i.el, float %i.fx, i64 1
  %i.fz = insertelement <4 x float> %i.fy, float %i.fq, i64 2
  %i.ga = fneg float %i.fr
  %.sroa.17.28.vec.insert138 = insertelement <4 x float> %i.fz, float %i.ga, i64 3 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.0103, i64 56
  %i.gc = load <4 x float>, ptr %.096102, align 1, !tbaa !119 ; 2 uses
  %i.gd = load <4 x float>, ptr %2, align 1, !tbaa !119 ; 2 uses
  %i.ge = load <4 x float>, ptr %i.a, align 1, !tbaa !119 ; 2 uses
  %i.gf = fmul <4 x float> %.sroa.0139.12.vec.insert, <float f0x3F2CF37B, float f0x3F1BD7CA, float f0x3F098C78, float f0x3EEC6A50>
  %i.gg = fmul <4 x float> %.sroa.0.12.vec.insert119, <float f0x3F3CBE35, float f0x3F4B1934, float f0x3F57E881, float f0x3F631324>
  %i.gh = fadd <4 x float> %i.gg, %i.gf           ; 2 uses
  %i.gi = fmul <4 x float> %.sroa.0139.12.vec.insert, <float f0x3F3CBE35, float f0x3F4B1934, float f0x3F57E881, float f0x3F631324>
  %i.gj = fmul <4 x float> %.sroa.0.12.vec.insert119, <float f0x3F2CF37B, float f0x3F1BD7CA, float f0x3F098C78, float f0x3EEC6A50>
  %i.gk = fsub <4 x float> %i.gi, %i.gj
  store <4 x float> %i.gk, ptr %.096102, align 1, !tbaa !119
  %i.gl = fmul <4 x float> %i.gc, %i.gd
  %i.gm = fmul <4 x float> %i.gh, %i.ge
  %i.gn = fsub <4 x float> %i.gl, %i.gm
  store <4 x float> %i.gn, ptr %.0103, align 4, !tbaa !119
  %i.go = fmul <4 x float> %i.gc, %i.ge
  %i.gp = fmul <4 x float> %i.gd, %i.gh
  %i.gq = fadd <4 x float> %i.go, %i.gp
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.gr, ptr %i.gb, align 4, !tbaa !119
  %i.gs = getelementptr inbounds nuw i8, ptr %.096102, i64 16 ; 2 uses
  %i.gt = load <4 x float>, ptr %i.gs, align 1, !tbaa !119 ; 2 uses
  %i.gu = load <4 x float>, ptr %i.d, align 1, !tbaa !119 ; 2 uses
  %i.gv = load <4 x float>, ptr %i.e, align 1, !tbaa !119 ; 2 uses
  %i.gw = fmul <4 x float> %.sroa.14.28.vec.insert, <float f0x3EC3EF15, float f0x3E99F61C, float f0x3E5DA258, float f0x3E05A8A8>
  %i.gx = fmul <4 x float> %.sroa.17.28.vec.insert138, <float f0x3F6C835E, float f0x3F7426CB, float 9.762960e-01, float f0x3F7DCF55>
  %i.gy = fadd <4 x float> %i.gx, %i.gw           ; 2 uses
  %i.gz = fmul <4 x float> %.sroa.14.28.vec.insert, <float f0x3F6C835E, float f0x3F7426CB, float 9.762960e-01, float f0x3F7DCF55>
  %i.ha = fmul <4 x float> %.sroa.17.28.vec.insert138, <float f0x3EC3EF15, float f0x3E99F61C, float f0x3E5DA258, float f0x3E05A8A8>
  %i.hb = fsub <4 x float> %i.gz, %i.ha
  store <4 x float> %i.hb, ptr %i.gs, align 1, !tbaa !119
  %i.hc = fmul <4 x float> %i.gt, %i.gu
  %i.hd = fmul <4 x float> %i.gy, %i.gv
  %i.he = fsub <4 x float> %i.hc, %i.hd
  store <4 x float> %i.he, ptr %i.p, align 4, !tbaa !119
  %i.hf = fmul <4 x float> %i.gt, %i.gv
  %i.hg = fmul <4 x float> %i.gu, %i.gy
  %i.hh = fadd <4 x float> %i.hf, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %.0103, i64 40
  %i.hj = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.hj, ptr %i.hi, align 4, !tbaa !119
  %i.hk = getelementptr inbounds nuw i8, ptr %.096102, i64 32 ; 2 uses
  %i.hl = fmul float %i.fs, f0x3F7FC1A0
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.ej, float f0x3D32AA3C, float %i.hl) ; 2 uses
  %i.hn = fmul float %i.fs, f0xBD32AA3C
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.ej, float f0x3F7FC1A0, float %i.hn)
  %i.hp = getelementptr inbounds nuw i8, ptr %.0103, i64 36
  %i.hq = load float, ptr %i.hk, align 4, !tbaa !349 ; 2 uses
  store float %i.ho, ptr %i.hk, align 4, !tbaa !349
  %i.hr = load float, ptr %i.b, align 4, !tbaa !349
  %i.hs = load float, ptr %i.c, align 4, !tbaa !349
  %i.ht = fneg float %i.hs
  %i.hu = fmul float %i.hm, %i.ht
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.hq, float %i.hr, float %i.hu)
  store float %i.hv, ptr %i.ad, align 4, !tbaa !349
  %i.hw = load float, ptr %i.c, align 4, !tbaa !349
  %i.hx = load float, ptr %i.b, align 4, !tbaa !349
  %i.hy = fmul float %i.hm, %i.hx
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.hq, float %i.hw, float %i.hy)
  store float %i.hz, ptr %i.hp, align 4, !tbaa !349
  %i.ia = add nuw nsw i32 %.098101, 1             ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0103, i64 72
  %i.ic = getelementptr inbounds nuw i8, ptr %.096102, i64 36
  %exitcond.not = icmp eq i32 %i.ia, %3
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !3279

bb.b:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @ma_dr_mp3d_synth_pair(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 2)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3584
  %i.b = load float, ptr %i.a, align 4, !tbaa !349
  %i.c = load float, ptr %2, align 4, !tbaa !349
  %i.d = fsub float %i.b, %i.c
  %i.e = fmul float %i.d, 2.900000e+01
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.g = load float, ptr %i.f, align 4, !tbaa !349
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 3328
  %i.i = load float, ptr %i.h, align 4, !tbaa !349
  %i.j = fadd float %i.g, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float 2.130000e+02, float %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 3072
  %i.m = load float, ptr %i.l, align 4, !tbaa !349
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.o = load float, ptr %i.n, align 4, !tbaa !349
  %i.p = fsub float %i.m, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 4.590000e+02, float %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.s = load float, ptr %i.r, align 4, !tbaa !349
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2816
  %i.u = load float, ptr %i.t, align 4, !tbaa !349
  %i.v = fadd float %i.s, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float 2.037000e+03, float %i.q)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 2560
  %i.y = load float, ptr %i.x, align 4, !tbaa !349
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.aa = load float, ptr %i.z, align 4, !tbaa !349
  %i.ab = fsub float %i.y, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float 5.153000e+03, float %i.w)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !349
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 2304
  %i.ag = load float, ptr %i.af, align 4, !tbaa !349
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float 6.574000e+03, float %i.ac)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 2048
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !349
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1536
  %i.am = load float, ptr %i.al, align 4, !tbaa !349
  %i.an = fsub float %i.ak, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float 3.748900e+04, float %i.ai)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1792
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !349
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float 7.503800e+04, float %i.ao) ; 3 uses
  %i.as = fcmp ult float %i.ar, 3.276650e+04
  br i1 %i.as, label %bb.b, label %ma_dr_mp3d_scale_pcm.exit

bb.b:                                             ; preds = %bb.a
  %i.at = fcmp ugt float %i.ar, -3.276750e+04
  br i1 %i.at, label %bb.c, label %ma_dr_mp3d_scale_pcm.exit

bb.c:                                             ; preds = %bb.b
  %i.au = fadd float %i.ar, 5.000000e-01
  %i.av = fptosi float %i.au to i16               ; 2 uses
  %.lobit.neg.i = ashr i16 %i.av, 15
  %i.aw = add i16 %.lobit.neg.i, %i.av
  br label %ma_dr_mp3d_scale_pcm.exit

ma_dr_mp3d_scale_pcm.exit:                        ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i16 [ %i.aw, %bb.c ], [ 32767, %bb.a ], [ -32768, %bb.b ]
  store i16 %.0.i, ptr %0, align 2, !tbaa !122
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 3592
  %i.az = load float, ptr %i.ay, align 4, !tbaa !349
  %i.ba = fmul float %i.az, 1.040000e+02
end_hunk_1
