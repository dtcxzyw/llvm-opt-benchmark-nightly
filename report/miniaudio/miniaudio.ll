Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/miniaudio/original/miniaudio?download=true
inline.NumInlined: 3924
inline.NumDeleted: 447
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 277
begin_hunk_0_@ma_dr_mp3dec_decode_frame:bb.a
  %i.baa = zext i1 %i.azz to i32
  %i.bab = shl nuw nsw i32 %i.azl, %i.baa         ; 7 uses
  %i.bac = getelementptr inbounds nuw i8, ptr %.054151.i, i64 18
  %i.bad = load i8, ptr %i.bac, align 2, !tbaa !1122
  %.not58.i = icmp eq i8 %i.bad, 0
  br i1 %.not58.i, label %.thread.i148, label %bb.ee

.thread.i148:                                     ; preds = %bb.ed
  %i.bae = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv217.i
  br label %.preheader.i90.preheader.i

bb.ee:                                            ; preds = %bb.ed
  %i.baf = add nsw i32 %i.bab, -1
  %i.bag = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv217.i ; 4 uses
  %i.bah = mul nuw nsw i32 %i.bab, 18
  %i.bai = zext nneg i32 %i.bah to i64
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %i.bag, i64 %i.bai ; 2 uses
  %i.bak = load ptr, ptr %.054151.i, align 8, !tbaa !1130
  %i.bal = getelementptr inbounds nuw i8, ptr %.054151.i, i64 17
  %i.bam = load i8, ptr %i.bal, align 1, !tbaa !1123
  %i.ban = zext i8 %i.bam to i64
  %i.bao = getelementptr inbounds nuw i8, ptr %i.bak, i64 %i.ban ; 2 uses
  %i.bap = load i8, ptr %i.bao, align 1, !tbaa !119 ; 2 uses
  %.not30.i.i = icmp eq i8 %i.bap, 0
  br i1 %.not30.i.i, label %bb.eh, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ee, %bb.eg
  %i.baq = phi i8 [ %i.bbz, %bb.eg ], [ %i.bap, %bb.ee ] ; 4 uses
  %.033.i.i = phi ptr [ %.lcssa726, %bb.eg ], [ %i.ob, %bb.ee ] ; 2 uses
  %.02232.i.i = phi ptr [ %i.bby, %bb.eg ], [ %i.baj, %bb.ee ] ; 2 uses
  %.02531.i.i = phi ptr [ %i.bbx, %bb.eg ], [ %i.bao, %bb.ee ]
  %i.bar = zext i8 %i.baq to i32                  ; 3 uses
  %i.bas = zext i8 %i.baq to i64                  ; 3 uses
  %i.bat = shl nuw nsw i32 %i.bar, 1
  %i.bau = zext nneg i32 %i.bat to i64            ; 4 uses
  %xtraiter771 = and i32 %i.bar, 1
  %i.bav = icmp eq i8 %i.baq, 1
  br i1 %i.bav, label %.epil.preheader770, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter776 = and i32 %i.bar, 254
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ef, %.preheader.i.i.new
  %.129.i.i = phi ptr [ %.033.i.i, %.preheader.i.i.new ], [ %i.bbm, %bb.ef ] ; 7 uses
  %.12328.i.i = phi ptr [ %.02232.i.i, %.preheader.i.i.new ], [ %i.bbn, %bb.ef ] ; 5 uses
  %niter777 = phi i32 [ 0, %.preheader.i.i.new ], [ %niter777.next.1, %bb.ef ]
  %i.baw = load float, ptr %.12328.i.i, align 4, !tbaa !349
  %i.bax = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 4
  store float %i.baw, ptr %.129.i.i, align 4, !tbaa !349
  %i.bay = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i, i64 %i.bas
  %i.baz = load float, ptr %i.bay, align 4, !tbaa !349
  %i.bba = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 8
  store float %i.baz, ptr %i.bax, align 4, !tbaa !349
  %i.bbb = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i, i64 %i.bau
  %i.bbc = load float, ptr %i.bbb, align 4, !tbaa !349
  %i.bbd = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 12
  store float %i.bbc, ptr %i.bba, align 4, !tbaa !349
  %i.bbe = getelementptr inbounds nuw i8, ptr %.12328.i.i, i64 4 ; 3 uses
  %i.bbf = load float, ptr %i.bbe, align 4, !tbaa !349
  %i.bbg = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 16
  store float %i.bbf, ptr %i.bbd, align 4, !tbaa !349
  %i.bbh = getelementptr inbounds nuw [4 x i8], ptr %i.bbe, i64 %i.bas
  %i.bbi = load float, ptr %i.bbh, align 4, !tbaa !349
  %i.bbj = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 20
  store float %i.bbi, ptr %i.bbg, align 4, !tbaa !349
  %i.bbk = getelementptr inbounds nuw [4 x i8], ptr %i.bbe, i64 %i.bau
  %i.bbl = load float, ptr %i.bbk, align 4, !tbaa !349
  %i.bbm = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 24 ; 3 uses
  store float %i.bbl, ptr %i.bbj, align 4, !tbaa !349
  %i.bbn = getelementptr inbounds nuw i8, ptr %.12328.i.i, i64 8 ; 3 uses
  %niter777.next.1 = add i32 %niter777, 2         ; 2 uses
  %niter777.ncmp.1 = icmp eq i32 %niter777.next.1, %unroll_iter776
  br i1 %niter777.ncmp.1, label %.unr-lcssa, label %bb.ef, !llvm.loop !3007

.unr-lcssa:                                       ; preds = %bb.ef
  %lcmp.mod772.not = icmp eq i32 %xtraiter771, 0
  br i1 %lcmp.mod772.not, label %bb.eg, label %.epil.preheader770

.epil.preheader770:                               ; preds = %.unr-lcssa, %.preheader.i.i
  %.129.i.i.epil.init = phi ptr [ %.033.i.i, %.preheader.i.i ], [ %i.bbm, %.unr-lcssa ] ; 4 uses
  %.12328.i.i.epil.init = phi ptr [ %.02232.i.i, %.preheader.i.i ], [ %i.bbn, %.unr-lcssa ] ; 4 uses
  %lcmp.mod775 = trunc i8 %i.baq to i1
  tail call void @llvm.assume(i1 %lcmp.mod775)
  %i.bbo = load float, ptr %.12328.i.i.epil.init, align 4, !tbaa !349
  %i.bbp = getelementptr inbounds nuw i8, ptr %.129.i.i.epil.init, i64 4
  store float %i.bbo, ptr %.129.i.i.epil.init, align 4, !tbaa !349
  %i.bbq = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i.epil.init, i64 %i.bas
  %i.bbr = load float, ptr %i.bbq, align 4, !tbaa !349
  %i.bbs = getelementptr inbounds nuw i8, ptr %.129.i.i.epil.init, i64 8
  store float %i.bbr, ptr %i.bbp, align 4, !tbaa !349
  %i.bbt = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i.epil.init, i64 %i.bau
  %i.bbu = load float, ptr %i.bbt, align 4, !tbaa !349
  %i.bbv = getelementptr inbounds nuw i8, ptr %.129.i.i.epil.init, i64 12
  store float %i.bbu, ptr %i.bbs, align 4, !tbaa !349
  %i.bbw = getelementptr inbounds nuw i8, ptr %.12328.i.i.epil.init, i64 4
  br label %bb.eg

bb.eg:                                            ; preds = %.unr-lcssa, %.epil.preheader770
  %.lcssa726 = phi ptr [ %i.bbm, %.unr-lcssa ], [ %i.bbv, %.epil.preheader770 ] ; 2 uses
  %.lcssa725 = phi ptr [ %i.bbn, %.unr-lcssa ], [ %i.bbw, %.epil.preheader770 ]
  %i.bbx = getelementptr inbounds nuw i8, ptr %.02531.i.i, i64 3 ; 2 uses
  %i.bby = getelementptr inbounds nuw [4 x i8], ptr %.lcssa725, i64 %i.bau
  %i.bbz = load i8, ptr %i.bbx, align 1, !tbaa !119 ; 2 uses
  %.not.i87.i = icmp eq i8 %i.bbz, 0
  br i1 %.not.i87.i, label %ma_dr_mp3_L3_reorder.exit.loopexit.i, label %.preheader.i.i, !llvm.loop !3008

ma_dr_mp3_L3_reorder.exit.loopexit.i:             ; preds = %bb.eg
  %.pre225.i = ptrtoint ptr %.lcssa726 to i64
  br label %bb.eh

bb.eh:                                            ; preds = %ma_dr_mp3_L3_reorder.exit.loopexit.i, %bb.ee
  %.pre-phi.i = phi i64 [ %.pre225.i, %ma_dr_mp3_L3_reorder.exit.loopexit.i ], [ %i.oc, %bb.ee ]
  %i.bca = sub i64 %.pre-phi.i, %i.oc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.baj, ptr nonnull align 8 %i.ob, i64 %i.bca, i1 false)
  br i1 %.not57.i, label %ma_dr_mp3_L3_antialias.exit.i.thread, label %.preheader.i90.preheader.i

ma_dr_mp3_L3_antialias.exit.i.thread:             ; preds = %bb.eh
  %i.bcb = getelementptr inbounds nuw [1152 x i8], ptr %0, i64 %indvars.iv217.i
  %i.bcc = getelementptr inbounds nuw i8, ptr %.054151.i, i64 15
  %i.bcd = load i8, ptr %i.bcc, align 1, !tbaa !1133
  br label %bb.ej

.preheader.i90.preheader.i:                       ; preds = %bb.eh, %.thread.i148
  %i.bce = phi ptr [ %i.bae, %.thread.i148 ], [ %i.bag, %bb.eh ] ; 5 uses
  %.0275.i = phi i32 [ 31, %.thread.i148 ], [ %i.baf, %bb.eh ]
  br label %.preheader.i90.i

.preheader.i90.i:                                 ; preds = %.preheader.i90.i, %.preheader.i90.preheader.i
  %.031.i.i = phi ptr [ %i.bcf, %.preheader.i90.i ], [ %i.bce, %.preheader.i90.preheader.i ] ; 4 uses
  %.02830.i.i = phi i32 [ %i.bdd, %.preheader.i90.i ], [ %.0275.i, %.preheader.i90.preheader.i ] ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 72 ; 3 uses
  %i.bcg = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 56 ; 2 uses
  %i.bch = load <4 x float>, ptr %i.bcf, align 1, !tbaa !119 ; 2 uses
  %i.bci = load <4 x float>, ptr %i.bcg, align 1, !tbaa !119
  %i.bcj = shufflevector <4 x float> %i.bci, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.bck = fmul <4 x float> %i.bch, <float f0x3F5B84A8, float 8.817420e-01, float f0x3F731ADD, float f0x3F7BBA81>
  %i.bcl = fmul <4 x float> %i.bcj, <float f0x3F03B5FE, float f0x3EF186DA, float f0x3EA07302, float f0x3E3A4774>
  %i.bcm = fsub <4 x float> %i.bck, %i.bcl
  store <4 x float> %i.bcm, ptr %i.bcf, align 1, !tbaa !119
  %i.bcn = fmul <4 x float> %i.bch, <float f0x3F03B5FE, float f0x3EF186DA, float f0x3EA07302, float f0x3E3A4774>
  %i.bco = fmul <4 x float> %i.bcj, <float f0x3F5B84A8, float 8.817420e-01, float f0x3F731ADD, float f0x3F7BBA81>
  %i.bcp = fadd <4 x float> %i.bcn, %i.bco
  %i.bcq = shufflevector <4 x float> %i.bcp, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.bcq, ptr %i.bcg, align 1, !tbaa !119
  %i.bcr = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 88 ; 2 uses
  %i.bcs = load <4 x float>, ptr %i.bcr, align 1, !tbaa !119 ; 2 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 40 ; 2 uses
  %i.bcu = load <4 x float>, ptr %i.bct, align 1, !tbaa !119
  %i.bcv = shufflevector <4 x float> %i.bcu, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.bcw = fmul <4 x float> %i.bcs, <float f0x3F7EDA41, float f0x3F7FC8FD, float f0x3F7FF965, float f0x3F7FFF8D>
  %i.bcx = fmul <4 x float> %i.bcv, <float f0x3DC1B01D, float f0x3D27CB86, float f0x3C68A114, float 3.699970e-03>
  %i.bcy = fsub <4 x float> %i.bcw, %i.bcx
  store <4 x float> %i.bcy, ptr %i.bcr, align 1, !tbaa !119
  %i.bcz = fmul <4 x float> %i.bcs, <float f0x3DC1B01D, float f0x3D27CB86, float f0x3C68A114, float 3.699970e-03>
  %i.bda = fmul <4 x float> %i.bcv, <float f0x3F7EDA41, float f0x3F7FC8FD, float f0x3F7FF965, float f0x3F7FFF8D>
  %i.bdb = fadd <4 x float> %i.bcz, %i.bda
  %i.bdc = shufflevector <4 x float> %i.bdb, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.bdc, ptr %i.bct, align 1, !tbaa !119
  %i.bdd = add nsw i32 %.02830.i.i, -1
  %i.bde = icmp samesign ugt i32 %.02830.i.i, 1
  br i1 %i.bde, label %.preheader.i90.i, label %ma_dr_mp3_L3_antialias.exit.i, !llvm.loop !3009

ma_dr_mp3_L3_antialias.exit.i:                    ; preds = %.preheader.i90.i
  %i.bdf = getelementptr inbounds nuw [1152 x i8], ptr %0, i64 %indvars.iv217.i ; 3 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr %.054151.i, i64 15
  %i.bdh = load i8, ptr %i.bdg, align 1, !tbaa !1133 ; 2 uses
  br i1 %.not57.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %ma_dr_mp3_L3_antialias.exit.i
  %i.bdi = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv217.i
  tail call fastcc void @ma_dr_mp3_L3_imdct36(ptr noundef nonnull %i.bce, ptr noundef %i.bdf, ptr noundef nonnull @ma_dr_mp3_L3_imdct_gr.g_mdct_window, i32 noundef range(i32 0, 5) %i.bab)
  %i.bdj = mul nuw nsw i32 %i.bab, 18
  %i.bdk = zext nneg i32 %i.bdj to i64
  %i.bdl = getelementptr inbounds nuw [4 x i8], ptr %i.bdi, i64 %i.bdk
  %i.bdm = mul nuw nsw i32 %i.bab, 9
  %i.bdn = zext nneg i32 %i.bdm to i64
  %i.bdo = getelementptr inbounds nuw [4 x i8], ptr %i.bdf, i64 %i.bdn
  br label %bb.ej

bb.ej:                                            ; preds = %ma_dr_mp3_L3_antialias.exit.i.thread, %bb.ei, %ma_dr_mp3_L3_antialias.exit.i
  %i.bdp = phi i8 [ %i.bdh, %bb.ei ], [ %i.bdh, %ma_dr_mp3_L3_antialias.exit.i ], [ %i.bcd, %ma_dr_mp3_L3_antialias.exit.i.thread ] ; 2 uses
  %i.bdq = phi ptr [ %i.bce, %bb.ei ], [ %i.bce, %ma_dr_mp3_L3_antialias.exit.i ], [ %i.bag, %ma_dr_mp3_L3_antialias.exit.i.thread ]
  %.015.i.i = phi ptr [ %i.bdo, %bb.ei ], [ %i.bdf, %ma_dr_mp3_L3_antialias.exit.i ], [ %i.bcb, %ma_dr_mp3_L3_antialias.exit.i.thread ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bdl, %bb.ei ], [ %i.bce, %ma_dr_mp3_L3_antialias.exit.i ], [ %i.bag, %ma_dr_mp3_L3_antialias.exit.i.thread ] ; 2 uses
  %i.bdr = icmp eq i8 %i.bdp, 2
  br i1 %i.bdr, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  %i.bds = sub nuw nsw i32 32, %i.bab
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %bb.ek
  %.016.i.i.i = phi i32 [ %i.bds, %bb.ek ], [ %i.bjd, %bb.el ] ; 2 uses
  %.01215.i.i.i = phi ptr [ %.015.i.i, %bb.ek ], [ %i.bje, %bb.el ] ; 7 uses
  %.01314.i.i.i = phi ptr [ %.0.i.i, %bb.ek ], [ %i.bjf, %bb.el ] ; 19 uses
  %.sroa.0.0.copyload.i.i.i = load float, ptr %.01314.i.i.i, align 4 ; 2 uses
  %.sroa.4.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 4
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.5.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 8
  %.sroa.6.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 12
  %.sroa.6.0.copyload.i.i.i = load float, ptr %.sroa.6.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.7.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 16
  %.sroa.9.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 24 ; 2 uses
  %.sroa.9.0.copyload.i.i.i = load float, ptr %.sroa.9.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.10.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 28 ; 2 uses
  %.sroa.11.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 32
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
  %.sroa.19.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 64 ; 2 uses
  %.sroa.20.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 68 ; 2 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 24 ; 5 uses
  %i.bdu = fneg float %.sroa.0.0.copyload.i.i.i
  %i.bdv = fadd float %.sroa.6.0.copyload.i.i.i, %.sroa.9.0.copyload.i.i.i
  %i.bdw = fadd float %.sroa.12.0.copyload.i.i.i, %.sroa.15.0.copyload.i.i.i ; 2 uses
  %i.bdx = fmul float %i.bdv, f0x3F5DB3D7         ; 2 uses
  %i.bdy = fneg float %i.bdw
  %i.bdz = tail call float @llvm.fmuladd.f32(float %i.bdy, float 5.000000e-01, float %i.bdu) ; 2 uses
  %i.bea = fadd float %i.bdx, %i.bdz              ; 2 uses
  %i.beb = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 28 ; 4 uses
  %i.bec = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 32 ; 6 uses
  %.sroa.18.0.copyload.i.i.i = load float, ptr %.sroa.18.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %i.bed = fsub float %i.bdw, %.sroa.0.0.copyload.i.i.i
  %i.bee = fsub float %i.bdz, %i.bdx
  %i.bef = fsub float %.sroa.15.0.copyload.i.i.i, %.sroa.12.0.copyload.i.i.i
  %i.beg = fsub float %.sroa.9.0.copyload.i.i.i, %.sroa.6.0.copyload.i.i.i ; 2 uses
  %i.beh = fmul float %i.bef, f0x3F5DB3D7         ; 2 uses
  %i.bei = fneg float %i.beg
  %i.bej = tail call float @llvm.fmuladd.f32(float %i.bei, float 5.000000e-01, float %.sroa.18.0.copyload.i.i.i) ; 2 uses
  %i.bek = fadd float %i.beg, %.sroa.18.0.copyload.i.i.i
  %i.bel = fadd float %i.beh, %i.bej              ; 2 uses
  %i.bem = fsub float %i.bej, %i.beh
  %i.ben = fmul float %i.bel, f0x3F4B1934
  %i.beo = tail call float @llvm.fmuladd.f32(float %i.bea, float f0x3F1BD7CA, float %i.ben) ; 2 uses
  %i.bep = fmul float %i.bel, f0xBF1BD7CA
  %i.beq = tail call float @llvm.fmuladd.f32(float %i.bea, float f0x3F4B1934, float %i.bep)
  %i.ber = fmul float %i.beo, f0xBE05A8A8
  %i.bes = fmul float %i.beo, f0x3F7DCF55
  %i.bet = insertelement <4 x float> poison, float %i.bek, i64 0
  %i.beu = insertelement <4 x float> %i.bet, float %i.bem, i64 1
  %i.bev = shufflevector <4 x float> %i.beu, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bew = fmul <4 x float> %i.bev, <float f0xBF6C835E, float f0x3F7DCF55, float f0x3EC3EF15, float f0xBE05A8A8>
  %i.bex = insertelement <4 x float> poison, float %i.bed, i64 0
  %i.bey = insertelement <4 x float> %i.bex, float %i.bee, i64 1
  %i.bez = shufflevector <4 x float> %i.bey, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bfa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bez, <4 x float> <float f0x3EC3EF15, float f0x3E05A8A8, float f0x3F6C835E, float f0x3F7DCF55>, <4 x float> %i.bew) ; 4 uses
  %i.bfb = extractelement <4 x float> %i.bfa, i64 0 ; 2 uses
  %i.bfc = fmul float %i.bfb, f0xBEC3EF15
  %i.bfd = fmul float %i.bfb, f0x3F6C835E
  %i.bfe = fneg float %.sroa.4.0.copyload.i.i.i
  %i.bff = fadd float %.sroa.13.0.copyload.i.i.i, %.sroa.16.0.copyload.i.i.i ; 2 uses
  %i.bfg = fneg float %i.bff
  %i.bfh = tail call float @llvm.fmuladd.f32(float %i.bfg, float 5.000000e-01, float %i.bfe) ; 2 uses
  %.sroa.19.0.copyload.i.i.i = load float, ptr %.sroa.19.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %i.bfi = fsub float %i.bff, %.sroa.4.0.copyload.i.i.i
  %i.bfj = fsub float %.sroa.16.0.copyload.i.i.i, %.sroa.13.0.copyload.i.i.i
  %i.bfk = fmul float %i.bfj, f0x3F5DB3D7         ; 2 uses
  %i.bfl = insertelement <4 x float> poison, float %i.bfi, i64 0
  %i.bfm = load <2 x float>, ptr %.sroa.7.0..013.sroa_idx.i.i.i, align 4 ; 3 uses
  %i.bfn = load <2 x float>, ptr %.sroa.10.0..013.sroa_idx.i.i.i, align 4 ; 3 uses
  %i.bfo = fadd <2 x float> %i.bfm, %i.bfn        ; 2 uses
  %i.bfp = extractelement <2 x float> %i.bfo, i64 0
  %i.bfq = fmul float %i.bfp, f0x3F5DB3D7         ; 2 uses
  %i.bfr = fadd float %i.bfq, %i.bfh              ; 2 uses
  %i.bfs = fsub float %i.bfh, %i.bfq
  %foldExtExtBinop = fsub <2 x float> %i.bfn, %i.bfm
  %i.bft = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bfu = fneg float %i.bft
  %i.bfv = tail call float @llvm.fmuladd.f32(float %i.bfu, float 5.000000e-01, float %.sroa.19.0.copyload.i.i.i) ; 2 uses
  %i.bfw = fadd float %i.bft, %.sroa.19.0.copyload.i.i.i
  %i.bfx = fadd float %i.bfk, %i.bfv              ; 2 uses
  %i.bfy = fsub float %i.bfv, %i.bfk
  %i.bfz = fmul float %i.bfx, f0x3F4B1934
  %i.bga = tail call float @llvm.fmuladd.f32(float %i.bfr, float f0x3F1BD7CA, float %i.bfz) ; 2 uses
  %i.bgb = fmul float %i.bfx, f0xBF1BD7CA
  %i.bgc = tail call float @llvm.fmuladd.f32(float %i.bfr, float f0x3F4B1934, float %i.bgb)
  %i.bgd = fmul float %i.bga, f0xBE05A8A8
  %i.bge = fmul float %i.bga, f0x3F7DCF55
  %i.bgf = insertelement <4 x float> poison, float %i.bfw, i64 0
  %i.bgg = insertelement <4 x float> %i.bgf, float %i.bfy, i64 1
  %i.bgh = shufflevector <4 x float> %i.bgg, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bgi = fmul <4 x float> %i.bgh, <float f0xBF6C835E, float f0x3F7DCF55, float f0x3EC3EF15, float f0xBE05A8A8>
  %i.bgj = insertelement <4 x float> %i.bfl, float %i.bfs, i64 1
  %i.bgk = shufflevector <4 x float> %i.bgj, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bgl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bgk, <4 x float> <float f0x3EC3EF15, float f0x3E05A8A8, float f0x3F6C835E, float f0x3F7DCF55>, <4 x float> %i.bgi) ; 4 uses
  %i.bgm = extractelement <4 x float> %i.bgl, i64 0 ; 2 uses
  %i.bgn = fmul float %i.bgm, f0xBEC3EF15
  %i.bgo = fmul float %i.bgm, f0x3F6C835E
  %i.bgp = fadd float %.sroa.14.0.copyload.i.i.i, %.sroa.17.0.copyload.i.i.i ; 2 uses
  %i.bgq = fneg float %i.bgp
  %7 = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 16
  %.sroa.5.0.copyload.i.i.i = load float, ptr %.sroa.5.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.20.0.copyload.i.i.i = load float, ptr %.sroa.20.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.01314.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.01215.i.i.i, i64 24, i1 false)
  %i.bgr = load float, ptr %i.bdt, align 4, !tbaa !349 ; 2 uses
  store float %i.beq, ptr %i.bdt, align 4, !tbaa !349
  %i.bgs = tail call float @llvm.fmuladd.f32(float %i.bgr, float f0x3F7DCF55, float %i.ber)
  store float %i.bgs, ptr %.sroa.9.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %i.bgt = tail call float @llvm.fmuladd.f32(float %i.bgr, float f0x3E05A8A8, float %i.bes)
  store float %i.bgt, ptr %.sroa.14.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %i.bgu = load float, ptr %i.beb, align 4, !tbaa !349 ; 2 uses
  %i.bgv = extractelement <4 x float> %i.bfa, i64 2
  store float %i.bgv, ptr %i.beb, align 4, !tbaa !349
  %i.bgw = tail call float @llvm.fmuladd.f32(float %i.bgu, float f0x3F6C835E, float %i.bfc)
  store float %i.bgw, ptr %.sroa.10.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %i.bgx = tail call float @llvm.fmuladd.f32(float %i.bgu, float f0x3EC3EF15, float %i.bfd)
  store float %i.bgx, ptr %.sroa.13.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %i.bgy = load float, ptr %i.bec, align 4, !tbaa !349
  %i.bgz = extractelement <4 x float> %i.bfa, i64 3
  store float %i.bgz, ptr %i.bec, align 4, !tbaa !349
  %i.bha = shufflevector <4 x float> %i.bfa, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bhb = fmul <2 x float> %i.bha, <float f0xBF1BD7CA, float f0x3F4B1934>
  %i.bhc = insertelement <2 x float> poison, float %i.bgy, i64 0
  %i.bhd = shufflevector <2 x float> %i.bhc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhd, <2 x float> <float f0x3F4B1934, float f0x3F1BD7CA>, <2 x float> %i.bhb)
  store <2 x float> %i.bhe, ptr %.sroa.11.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %i.bhf = load float, ptr %i.bdt, align 4, !tbaa !349 ; 2 uses
  store float %i.bgc, ptr %i.bdt, align 4, !tbaa !349
  %i.bhg = tail call float @llvm.fmuladd.f32(float %i.bhf, float f0x3F7DCF55, float %i.bgd)
  store float %i.bhg, ptr %.sroa.15.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %i.bhh = tail call float @llvm.fmuladd.f32(float %i.bhf, float f0x3E05A8A8, float %i.bge)
  store float %i.bhh, ptr %.sroa.20.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %i.bhi = load float, ptr %i.beb, align 4, !tbaa !349 ; 2 uses
  %i.bhj = extractelement <4 x float> %i.bgl, i64 2
  store float %i.bhj, ptr %i.beb, align 4, !tbaa !349
  %i.bhk = tail call float @llvm.fmuladd.f32(float %i.bhi, float f0x3F6C835E, float %i.bgn)
  store float %i.bhk, ptr %.sroa.16.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %i.bhl = tail call float @llvm.fmuladd.f32(float %i.bhi, float f0x3EC3EF15, float %i.bgo)
  store float %i.bhl, ptr %.sroa.19.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %i.bhm = load float, ptr %i.bec, align 4, !tbaa !349
  %i.bhn = extractelement <4 x float> %i.bgl, i64 3
  store float %i.bhn, ptr %i.bec, align 4, !tbaa !349
  %i.bho = shufflevector <4 x float> %i.bgl, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bhp = fmul <2 x float> %i.bho, <float f0xBF1BD7CA, float f0x3F4B1934>
  %i.bhq = insertelement <2 x float> poison, float %i.bhm, i64 0
  %i.bhr = shufflevector <2 x float> %i.bhq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bhs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bhr, <2 x float> <float f0x3F4B1934, float f0x3F1BD7CA>, <2 x float> %i.bhp)
  store <2 x float> %i.bhs, ptr %.sroa.17.0..013.sroa_idx.i.i.i, align 4, !tbaa !349
  %8 = fneg float %.sroa.5.0.copyload.i.i.i
  %i.bht = extractelement <2 x float> %i.bfo, i64 1
  %i.bhu = fmul float %i.bht, f0x3F5DB3D7         ; 2 uses
  %9 = tail call float @llvm.fmuladd.f32(float %i.bgq, float 5.000000e-01, float %8) ; 2 uses
  %i.bhv = fsub float %9, %i.bhu                  ; 2 uses
  %i.bhw = fsub float %.sroa.17.0.copyload.i.i.i, %.sroa.14.0.copyload.i.i.i
  %foldExtExtBinop674 = fsub <2 x float> %i.bfn, %i.bfm
  %i.bhx = extractelement <2 x float> %foldExtExtBinop674, i64 1 ; 2 uses
  %i.bhy = fmul float %i.bhw, f0x3F5DB3D7         ; 2 uses
  %i.bhz = fneg float %i.bhx
  %i.bia = tail call float @llvm.fmuladd.f32(float %i.bhz, float 5.000000e-01, float %.sroa.20.0.copyload.i.i.i) ; 2 uses
  %i.bib = fadd float %i.bhx, %.sroa.20.0.copyload.i.i.i ; 2 uses
  %i.bic = fadd float %i.bhy, %i.bia              ; 2 uses
  %i.bid = fsub float %i.bia, %i.bhy              ; 2 uses
  %i.bie = insertelement <4 x float> poison, float %i.bic, i64 0
  %i.bif = insertelement <4 x float> %i.bie, float %i.bib, i64 1
  %i.big = insertelement <4 x float> %i.bif, float %i.bid, i64 2
  %i.bih = fmul <4 x float> %i.big, <float f0x3F4B1934, float f0xBF6C835E, float f0x3F7DCF55, float poison>
  %10 = fsub float %i.bgp, %.sroa.5.0.copyload.i.i.i ; 2 uses
  %11 = fadd float %i.bhu, %9                     ; 2 uses
  %12 = insertelement <4 x float> poison, float %11, i64 0
  %i.bii = insertelement <4 x float> %12, float %10, i64 1
  %i.bij = insertelement <4 x float> %i.bii, float %i.bhv, i64 2
  %i.bik = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bij, <4 x float> <float f0x3F1BD7CA, float f0x3EC3EF15, float f0x3E05A8A8, float poison>, <4 x float> %i.bih) ; 2 uses
  %i.bil = shufflevector <4 x float> %i.bik, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bim = load <2 x float>, ptr %i.bdt, align 4, !tbaa !349 ; 2 uses
  %i.bin = shufflevector <4 x float> %i.bik, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.bio = insertelement <4 x float> %i.bin, float %i.bic, i64 2
  %i.bip = insertelement <4 x float> %i.bio, float %i.bib, i64 3
  %i.biq = fmul <4 x float> %i.bip, <float f0x3F6C835E, float f0x3F7DCF55, float f0xBF1BD7CA, float f0x3EC3EF15>
  %i.bir = shufflevector <2 x float> %i.bim, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.bis = insertelement <4 x float> %i.bir, float %11, i64 2
  %i.bit = insertelement <4 x float> %i.bis, float %10, i64 3
  %i.biu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bit, <4 x float> <float f0x3EC3EF15, float f0x3E05A8A8, float f0x3F4B1934, float f0x3F6C835E>, <4 x float> %i.biq)
  store <4 x float> %i.biu, ptr %7, align 4, !tbaa !349
  %i.biv = load float, ptr %i.bec, align 4, !tbaa !349
  %i.biw = fmul float %i.bid, f0xBE05A8A8
  %i.bix = tail call float @llvm.fmuladd.f32(float %i.bhv, float f0x3F7DCF55, float %i.biw)
  store float %i.bix, ptr %i.bec, align 4, !tbaa !349
  %i.biy = fmul <4 x float> %i.bil, <float f0xBE05A8A8, float f0xBEC3EF15, float f0xBF1BD7CA, float f0x3F4B1934>
  %i.biz = shufflevector <2 x float> %i.bim, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bja = insertelement <4 x float> %i.biz, float %i.biv, i64 2
  %i.bjb = shufflevector <4 x float> %i.bja, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.bjc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bjb, <4 x float> <float f0x3F7DCF55, float f0x3F6C835E, float f0x3F4B1934, float f0x3F1BD7CA>, <4 x float> %i.biy)
  store <4 x float> %i.bjc, ptr %.01215.i.i.i, align 4, !tbaa !349
  %i.bjd = add nsw i32 %.016.i.i.i, -1
  %i.bje = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 36
  %i.bjf = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 72
  %i.bjg = icmp samesign ugt i32 %.016.i.i.i, 1
  br i1 %i.bjg, label %bb.el, label %ma_dr_mp3_L3_imdct_gr.exit.i, !llvm.loop !3010

bb.em:                                            ; preds = %bb.ej
  %i.bjh = icmp eq i8 %i.bdp, 3
  %i.bji = zext i1 %i.bjh to i64
  %i.bjj = getelementptr inbounds nuw [72 x i8], ptr @ma_dr_mp3_L3_imdct_gr.g_mdct_window, i64 %i.bji
  %i.bjk = sub nuw nsw i32 32, %i.bab
  tail call fastcc void @ma_dr_mp3_L3_imdct36(ptr noundef nonnull %.0.i.i, ptr noundef %.015.i.i, ptr noundef nonnull %i.bjj, i32 noundef %i.bjk)
  br label %ma_dr_mp3_L3_imdct_gr.exit.i

ma_dr_mp3_L3_imdct_gr.exit.i:                     ; preds = %bb.el, %bb.em
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bdq, i64 72
  br label %.preheader.i92.i

.preheader.i92.i:                                 ; preds = %.preheader.i92.i, %ma_dr_mp3_L3_imdct_gr.exit.i
  %.0913.i.i = phi i32 [ 0, %ma_dr_mp3_L3_imdct_gr.exit.i ], [ %i.bkn, %.preheader.i92.i ] ; 2 uses
  %.01012.i.i = phi ptr [ %i.bjl, %ma_dr_mp3_L3_imdct_gr.exit.i ], [ %i.bko, %.preheader.i92.i ] ; 10 uses
  %i.bjm = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 4 ; 2 uses
  %i.bjn = load float, ptr %i.bjm, align 4, !tbaa !349
  %i.bjo = fneg float %i.bjn
  store float %i.bjo, ptr %i.bjm, align 4, !tbaa !349
  %i.bjp = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 12 ; 2 uses
  %i.bjq = load float, ptr %i.bjp, align 4, !tbaa !349
  %i.bjr = fneg float %i.bjq
  store float %i.bjr, ptr %i.bjp, align 4, !tbaa !349
  %i.bjs = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 20 ; 2 uses
  %i.bjt = load float, ptr %i.bjs, align 4, !tbaa !349
  %i.bju = fneg float %i.bjt
  store float %i.bju, ptr %i.bjs, align 4, !tbaa !349
  %i.bjv = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 28 ; 2 uses
  %i.bjw = load float, ptr %i.bjv, align 4, !tbaa !349
  %i.bjx = fneg float %i.bjw
  store float %i.bjx, ptr %i.bjv, align 4, !tbaa !349
  %i.bjy = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 36 ; 2 uses
  %i.bjz = load float, ptr %i.bjy, align 4, !tbaa !349
  %i.bka = fneg float %i.bjz
  store float %i.bka, ptr %i.bjy, align 4, !tbaa !349
  %i.bkb = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 44 ; 2 uses
  %i.bkc = load float, ptr %i.bkb, align 4, !tbaa !349
  %i.bkd = fneg float %i.bkc
  store float %i.bkd, ptr %i.bkb, align 4, !tbaa !349
  %i.bke = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 52 ; 2 uses
  %i.bkf = load float, ptr %i.bke, align 4, !tbaa !349
  %i.bkg = fneg float %i.bkf
  store float %i.bkg, ptr %i.bke, align 4, !tbaa !349
  %i.bkh = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 60 ; 2 uses
  %i.bki = load float, ptr %i.bkh, align 4, !tbaa !349
  %i.bkj = fneg float %i.bki
  store float %i.bkj, ptr %i.bkh, align 4, !tbaa !349
  %i.bkk = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 68 ; 2 uses
  %i.bkl = load float, ptr %i.bkk, align 4, !tbaa !349
  %i.bkm = fneg float %i.bkl
  store float %i.bkm, ptr %i.bkk, align 4, !tbaa !349
  %i.bkn = add nuw nsw i32 %.0913.i.i, 2
  %i.bko = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 144
  %i.bkp = icmp samesign ult i32 %.0913.i.i, 30
  br i1 %i.bkp, label %.preheader.i92.i, label %ma_dr_mp3_L3_change_sign.exit.i, !llvm.loop !3011

ma_dr_mp3_L3_change_sign.exit.i:                  ; preds = %.preheader.i92.i
  %indvars.iv.next218.i = add nuw nsw i64 %indvars.iv217.i, 1 ; 2 uses
  %i.bkq = getelementptr inbounds nuw i8, ptr %.054151.i, i64 32
  %exitcond221.not.i = icmp eq i64 %indvars.iv.next218.i, %wide.trip.count220.i
  br i1 %exitcond221.not.i, label %ma_dr_mp3_L3_decode.exit, label %bb.ed, !llvm.loop !3012

ma_dr_mp3_L3_decode.exit:                         ; preds = %ma_dr_mp3_L3_change_sign.exit.i, %ma_dr_mp3_L3_midside_stereo.exit.i
  %i.bkr = load i32, ptr %i.kq, align 4, !tbaa !840
  tail call fastcc void @ma_dr_mp3d_synth_granule(ptr noundef nonnull %i.od, ptr noundef nonnull %i.no, i32 noundef 18, i32 noundef %i.bkr, ptr noundef %.0100323, ptr noundef nonnull %i.ob)
  %i.bks = load i32, ptr %i.kq, align 4, !tbaa !840
  %i.bkt = sext i32 %i.bks to i64
  %i.bku = mul nsw i64 %i.bkt, 1152
  %i.bkv = getelementptr inbounds nuw i8, ptr %.0100323, i64 %i.bku
  %i.bkw = load i8, ptr %i.kr, align 1, !tbaa !119
  %i.bkx = and i8 %i.bkw, 8
  %.not115 = icmp ne i8 %i.bkx, 0
  %i.bky = and i1 %.not115, %i.og
  br i1 %i.bky, label %bb.ak, label %.loopexit.loopexit, !llvm.loop !3013

.loopexit.loopexit:                               ; preds = %ma_dr_mp3_L3_decode.exit
  %.pre = load i32, ptr %i.nh, align 8, !tbaa !3030
  %.pre407 = load i32, ptr %i.nj, align 4, !tbaa !3031
  %i.bkz = add nsw i32 %.pre, 7
  %i.bla = lshr i32 %i.bkz, 3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.aj
  %i.blb = phi i32 [ %.pre407, %.loopexit.loopexit ], [ %i.ni, %bb.aj ]
  %i.blc = phi i32 [ %i.bla, %.loopexit.loopexit ], [ 0, %bb.aj ] ; 2 uses
  %i.bld = lshr i32 %i.blb, 3                     ; 2 uses
  %i.ble = sub nsw i32 %i.bld, %i.blc             ; 3 uses
  %spec.select14.i = tail call i32 @llvm.smin.i32(i32 %i.ble, i32 511) ; 2 uses
  %i.blf = icmp sgt i32 %i.ble, 0
  br i1 %i.blf, label %bb.en, label %ma_dr_mp3_L3_save_reservoir.exit

bb.en:                                            ; preds = %.loopexit
  %i.blg = icmp samesign ugt i32 %i.ble, 511
  %i.blh = add nsw i32 %i.bld, -511
  %spec.select.i159 = select i1 %i.blg, i32 %i.blh, i32 %i.blc
  %i.bli = zext nneg i32 %spec.select.i159 to i64
  %i.blj = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.bli
  %i.blk = zext nneg i32 %spec.select14.i to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mu, ptr nonnull readonly align 1 %i.blj, i64 %i.blk, i1 false)
  br label %ma_dr_mp3_L3_save_reservoir.exit

ma_dr_mp3_L3_save_reservoir.exit:                 ; preds = %.loopexit, %bb.en
  store i32 %spec.select14.i, ptr %i.mq, align 8, !tbaa !3029
  br label %bb.fy

bb.eo:                                            ; preds = %ma_dr_mp3_bs_get_bits.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #55
  %i.bll = icmp eq ptr %3, null
  br i1 %i.bll, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.blm = zext i8 %.fr to i32                    ; 2 uses
  %i.bln = and i32 %i.blm, 6
  %i.blo = icmp eq i32 %i.bln, 6
  %i.blp = and i32 %i.blm, 14
  %i.blq = icmp eq i32 %i.blp, 2
  %i.blr = zext i1 %i.blq to i32
  %i.bls = lshr exact i32 1152, %i.blr
  %i.blt = select i1 %i.blo, i32 384, i32 %i.bls
  br label %.thread224

bb.eq:                                            ; preds = %bb.eo
  %i.blu = load i8, ptr %i.km, align 1, !tbaa !119
  %i.blv = zext i8 %i.blu to i32                  ; 2 uses
  %i.blw = lshr i32 %i.blv, 6                     ; 2 uses
  switch i32 %i.blw, label %.fold.split.i.i [
    i32 3, label %bb.es
    i32 1, label %bb.er
  ]

bb.er:                                            ; preds = %bb.eq
  %i.blx = lshr i32 %i.blv, 2
  %i.bly = and i32 %i.blx, 12
  %i.blz = add nuw nsw i32 %i.bly, 4
  br label %bb.es

.fold.split.i.i:                                  ; preds = %bb.eq
  br label %bb.es

bb.es:                                            ; preds = %.fold.split.i.i, %bb.er, %bb.eq
  %i.bma = phi i32 [ 0, %bb.eq ], [ %i.blz, %bb.er ], [ 32, %.fold.split.i.i ] ; 3 uses
  %i.bmb = zext i8 %.fr to i32                    ; 3 uses
  %i.bmc = and i32 %i.bmb, 6
  %i.bmd = icmp eq i32 %i.bmc, 6
  br i1 %i.bmd, label %ma_dr_mp3_L12_subband_alloc_table.exit.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bme = and i32 %i.bmb, 8
  %.not.i.i160 = icmp eq i32 %i.bme, 0
  br i1 %.not.i.i160, label %ma_dr_mp3_L12_subband_alloc_table.exit.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.bmf = load i8, ptr %i.ks, align 1, !tbaa !119 ; 2 uses
  %i.bmg = lshr i8 %i.bmf, 2
  %i.bmh = and i8 %i.bmg, 3                       ; 2 uses
  %i.bmi = lshr i32 %i.bmb, 1
  %i.bmj = and i32 %i.bmi, 3
  %i.bmk = zext nneg i32 %i.bmj to i64
  %i.bml = getelementptr [15 x i8], ptr getelementptr inbounds nuw (i8, ptr @ma_dr_mp3_hdr_bitrate_kbps.halfrate, i64 45), i64 %i.bmk
  %i.bmm = getelementptr i8, ptr %i.bml, i64 -15
  %i.bmn = lshr i8 %i.bmf, 4
  %i.bmo = zext nneg i8 %i.bmn to i64
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bmm, i64 %i.bmo
  %i.bmq = load i8, ptr %i.bmp, align 1, !tbaa !119 ; 2 uses
  %i.bmr = zext i8 %i.bmq to i32
  %i.bms = shl nuw nsw i32 %i.bmr, 1
  %i.bmt = icmp ne i32 %i.blw, 3
  %i.bmu = zext i1 %i.bmt to i32
  %i.bmv = lshr exact i32 %i.bms, %i.bmu
  %.not25.i.i = icmp eq i8 %i.bmq, 0
  %spec.store.select.i.i = select i1 %.not25.i.i, i32 192, i32 %i.bmv ; 2 uses
  %i.bmw = icmp samesign ult i32 %spec.store.select.i.i, 56
  br i1 %i.bmw, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.bmx = icmp eq i8 %i.bmh, 2
  %i.bmy = select i1 %i.bmx, i32 12, i32 8
  br label %ma_dr_mp3_L12_subband_alloc_table.exit.i

bb.ew:                                            ; preds = %bb.eu
  %i.bmz = icmp samesign ugt i32 %spec.store.select.i.i, 95
  %i.bna = icmp ne i8 %i.bmh, 1
  %or.cond.i.i161 = and i1 %i.bna, %i.bmz
  %spec.select.i.i162 = select i1 %or.cond.i.i161, i32 30, i32 27
end_hunk_0
