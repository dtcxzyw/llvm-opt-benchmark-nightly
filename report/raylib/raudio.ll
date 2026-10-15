Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@drmp3dec_decode_frame:bb.a
  %i.bai = and i32 %i.bah, 1
  %i.baj = add nuw nsw i32 %i.bag, %i.bai
  %i.bak = mul nuw nsw i32 %i.baj, 3
  %i.bal = add nuw nsw i32 %i.bak, %i.bac
  %i.bam = icmp eq i32 %i.bal, 2
  %i.ban = zext i1 %i.bam to i32
  %i.bao = shl nuw nsw i32 %i.azy, %i.ban         ; 7 uses
  %i.bap = getelementptr inbounds nuw i8, ptr %.054148.i, i64 18
  %i.baq = load i8, ptr %i.bap, align 2
  %.not58.i = icmp eq i8 %i.baq, 0
  br i1 %.not58.i, label %.thread.i149, label %bb.ee

.thread.i149:                                     ; preds = %bb.ed
  %i.bar = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv214.i
  br label %.preheader.i87.preheader.i

bb.ee:                                            ; preds = %bb.ed
  %i.bas = add nsw i32 %i.bao, -1
  %i.bat = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv214.i ; 4 uses
  %i.bau = mul nuw nsw i32 %i.bao, 18
  %i.bav = zext nneg i32 %i.bau to i64
  %i.baw = getelementptr inbounds nuw [4 x i8], ptr %i.bat, i64 %i.bav ; 2 uses
  %i.bax = load ptr, ptr %.054148.i, align 8
  %i.bay = getelementptr inbounds nuw i8, ptr %.054148.i, i64 17
  %i.baz = load i8, ptr %i.bay, align 1
  %i.bba = zext i8 %i.baz to i64
  %i.bbb = getelementptr inbounds nuw i8, ptr %i.bax, i64 %i.bba ; 2 uses
  %i.bbc = load i8, ptr %i.bbb, align 1           ; 2 uses
  %.not30.i.i = icmp eq i8 %i.bbc, 0
  br i1 %.not30.i.i, label %bb.eh, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ee, %bb.eg
  %i.bbd = phi i8 [ %i.bcm, %bb.eg ], [ %i.bbc, %bb.ee ] ; 4 uses
  %.033.i.i = phi ptr [ %.lcssa739, %bb.eg ], [ %i.ob, %bb.ee ] ; 2 uses
  %.02232.i.i = phi ptr [ %i.bcl, %bb.eg ], [ %i.baw, %bb.ee ] ; 2 uses
  %.02531.i.i = phi ptr [ %i.bck, %bb.eg ], [ %i.bbb, %bb.ee ]
  %i.bbe = zext i8 %i.bbd to i32                  ; 3 uses
  %i.bbf = zext i8 %i.bbd to i64                  ; 3 uses
  %i.bbg = shl nuw nsw i32 %i.bbe, 1
  %i.bbh = zext nneg i32 %i.bbg to i64            ; 4 uses
  %xtraiter784 = and i32 %i.bbe, 1
  %i.bbi = icmp eq i8 %i.bbd, 1
  br i1 %i.bbi, label %.epil.preheader783, label %.preheader.i.i.new

.preheader.i.i.new:                               ; preds = %.preheader.i.i
  %unroll_iter789 = and i32 %i.bbe, 254
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ef, %.preheader.i.i.new
  %.129.i.i = phi ptr [ %.033.i.i, %.preheader.i.i.new ], [ %i.bbz, %bb.ef ] ; 7 uses
  %.12328.i.i = phi ptr [ %.02232.i.i, %.preheader.i.i.new ], [ %i.bca, %bb.ef ] ; 5 uses
  %niter790 = phi i32 [ 0, %.preheader.i.i.new ], [ %niter790.next.1, %bb.ef ]
  %i.bbj = load float, ptr %.12328.i.i, align 4
  %i.bbk = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 4
  store float %i.bbj, ptr %.129.i.i, align 4
  %i.bbl = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i, i64 %i.bbf
  %i.bbm = load float, ptr %i.bbl, align 4
  %i.bbn = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 8
  store float %i.bbm, ptr %i.bbk, align 4
  %i.bbo = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i, i64 %i.bbh
  %i.bbp = load float, ptr %i.bbo, align 4
  %i.bbq = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 12
  store float %i.bbp, ptr %i.bbn, align 4
  %i.bbr = getelementptr inbounds nuw i8, ptr %.12328.i.i, i64 4 ; 3 uses
  %i.bbs = load float, ptr %i.bbr, align 4
  %i.bbt = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 16
  store float %i.bbs, ptr %i.bbq, align 4
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %i.bbr, i64 %i.bbf
  %i.bbv = load float, ptr %i.bbu, align 4
  %i.bbw = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 20
  store float %i.bbv, ptr %i.bbt, align 4
  %i.bbx = getelementptr inbounds nuw [4 x i8], ptr %i.bbr, i64 %i.bbh
  %i.bby = load float, ptr %i.bbx, align 4
  %i.bbz = getelementptr inbounds nuw i8, ptr %.129.i.i, i64 24 ; 3 uses
  store float %i.bby, ptr %i.bbw, align 4
  %i.bca = getelementptr inbounds nuw i8, ptr %.12328.i.i, i64 8 ; 3 uses
  %niter790.next.1 = add i32 %niter790, 2         ; 2 uses
  %niter790.ncmp.1 = icmp eq i32 %niter790.next.1, %unroll_iter789
  br i1 %niter790.ncmp.1, label %.unr-lcssa, label %bb.ef

.unr-lcssa:                                       ; preds = %bb.ef
  %lcmp.mod785.not = icmp eq i32 %xtraiter784, 0
  br i1 %lcmp.mod785.not, label %bb.eg, label %.epil.preheader783

.epil.preheader783:                               ; preds = %.unr-lcssa, %.preheader.i.i
  %.129.i.i.epil.init = phi ptr [ %.033.i.i, %.preheader.i.i ], [ %i.bbz, %.unr-lcssa ] ; 4 uses
  %.12328.i.i.epil.init = phi ptr [ %.02232.i.i, %.preheader.i.i ], [ %i.bca, %.unr-lcssa ] ; 4 uses
  %lcmp.mod788 = trunc i8 %i.bbd to i1
  tail call void @llvm.assume(i1 %lcmp.mod788)
  %i.bcb = load float, ptr %.12328.i.i.epil.init, align 4
  %i.bcc = getelementptr inbounds nuw i8, ptr %.129.i.i.epil.init, i64 4
  store float %i.bcb, ptr %.129.i.i.epil.init, align 4
  %i.bcd = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i.epil.init, i64 %i.bbf
  %i.bce = load float, ptr %i.bcd, align 4
  %i.bcf = getelementptr inbounds nuw i8, ptr %.129.i.i.epil.init, i64 8
  store float %i.bce, ptr %i.bcc, align 4
  %i.bcg = getelementptr inbounds nuw [4 x i8], ptr %.12328.i.i.epil.init, i64 %i.bbh
  %i.bch = load float, ptr %i.bcg, align 4
  %i.bci = getelementptr inbounds nuw i8, ptr %.129.i.i.epil.init, i64 12
  store float %i.bch, ptr %i.bcf, align 4
  %i.bcj = getelementptr inbounds nuw i8, ptr %.12328.i.i.epil.init, i64 4
  br label %bb.eg

bb.eg:                                            ; preds = %.unr-lcssa, %.epil.preheader783
  %.lcssa739 = phi ptr [ %i.bbz, %.unr-lcssa ], [ %i.bci, %.epil.preheader783 ] ; 2 uses
  %.lcssa738 = phi ptr [ %i.bca, %.unr-lcssa ], [ %i.bcj, %.epil.preheader783 ]
  %i.bck = getelementptr inbounds nuw i8, ptr %.02531.i.i, i64 3 ; 2 uses
  %i.bcl = getelementptr inbounds nuw [4 x i8], ptr %.lcssa738, i64 %i.bbh
  %i.bcm = load i8, ptr %i.bck, align 1           ; 2 uses
  %.not.i84.i = icmp eq i8 %i.bcm, 0
  br i1 %.not.i84.i, label %drmp3_L3_reorder.exit.loopexit.i, label %.preheader.i.i

drmp3_L3_reorder.exit.loopexit.i:                 ; preds = %bb.eg
  %.pre222.i = ptrtoint ptr %.lcssa739 to i64
  br label %bb.eh

bb.eh:                                            ; preds = %drmp3_L3_reorder.exit.loopexit.i, %bb.ee
  %.pre-phi.i = phi i64 [ %.pre222.i, %drmp3_L3_reorder.exit.loopexit.i ], [ %i.oc, %bb.ee ]
  %i.bcn = sub i64 %.pre-phi.i, %i.oc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.baw, ptr nonnull align 8 %i.ob, i64 %i.bcn, i1 false)
  br i1 %.not57.i, label %drmp3_L3_antialias.exit.i.thread, label %.preheader.i87.preheader.i

drmp3_L3_antialias.exit.i.thread:                 ; preds = %bb.eh
  %i.bco = getelementptr inbounds nuw [1152 x i8], ptr %0, i64 %indvars.iv214.i
  %i.bcp = getelementptr inbounds nuw i8, ptr %.054148.i, i64 15
  %i.bcq = load i8, ptr %i.bcp, align 1
  br label %bb.ej

.preheader.i87.preheader.i:                       ; preds = %bb.eh, %.thread.i149
  %i.bcr = phi ptr [ %i.bar, %.thread.i149 ], [ %i.bat, %bb.eh ] ; 5 uses
  %.0271.i = phi i32 [ 31, %.thread.i149 ], [ %i.bas, %bb.eh ]
  br label %.preheader.i87.i

.preheader.i87.i:                                 ; preds = %.preheader.i87.i, %.preheader.i87.preheader.i
  %.031.i.i = phi ptr [ %i.bcs, %.preheader.i87.i ], [ %i.bcr, %.preheader.i87.preheader.i ] ; 4 uses
  %.02830.i.i = phi i32 [ %i.bdq, %.preheader.i87.i ], [ %.0271.i, %.preheader.i87.preheader.i ] ; 2 uses
  %i.bcs = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 72 ; 3 uses
  %i.bct = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 56 ; 2 uses
  %i.bcu = load <4 x float>, ptr %i.bcs, align 1  ; 2 uses
  %i.bcv = load <4 x float>, ptr %i.bct, align 1
  %i.bcw = shufflevector <4 x float> %i.bcv, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.bcx = fmul <4 x float> %i.bcu, <float f0x3F5B84A8, float 8.817420e-01, float f0x3F731ADD, float f0x3F7BBA81>
  %i.bcy = fmul <4 x float> %i.bcw, <float f0x3F03B5FE, float f0x3EF186DA, float f0x3EA07302, float f0x3E3A4774>
  %i.bcz = fsub <4 x float> %i.bcx, %i.bcy
  store <4 x float> %i.bcz, ptr %i.bcs, align 1
  %i.bda = fmul <4 x float> %i.bcu, <float f0x3F03B5FE, float f0x3EF186DA, float f0x3EA07302, float f0x3E3A4774>
  %i.bdb = fmul <4 x float> %i.bcw, <float f0x3F5B84A8, float 8.817420e-01, float f0x3F731ADD, float f0x3F7BBA81>
  %i.bdc = fadd <4 x float> %i.bda, %i.bdb
  %i.bdd = shufflevector <4 x float> %i.bdc, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.bdd, ptr %i.bct, align 1
  %i.bde = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 88 ; 2 uses
  %i.bdf = load <4 x float>, ptr %i.bde, align 1  ; 2 uses
  %i.bdg = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 40 ; 2 uses
  %i.bdh = load <4 x float>, ptr %i.bdg, align 1
  %i.bdi = shufflevector <4 x float> %i.bdh, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0> ; 2 uses
  %i.bdj = fmul <4 x float> %i.bdf, <float f0x3F7EDA41, float f0x3F7FC8FD, float f0x3F7FF965, float f0x3F7FFF8D>
  %i.bdk = fmul <4 x float> %i.bdi, <float f0x3DC1B01D, float f0x3D27CB86, float f0x3C68A114, float 3.699970e-03>
  %i.bdl = fsub <4 x float> %i.bdj, %i.bdk
  store <4 x float> %i.bdl, ptr %i.bde, align 1
  %i.bdm = fmul <4 x float> %i.bdf, <float f0x3DC1B01D, float f0x3D27CB86, float f0x3C68A114, float 3.699970e-03>
  %i.bdn = fmul <4 x float> %i.bdi, <float f0x3F7EDA41, float f0x3F7FC8FD, float f0x3F7FF965, float f0x3F7FFF8D>
  %i.bdo = fadd <4 x float> %i.bdm, %i.bdn
  %i.bdp = shufflevector <4 x float> %i.bdo, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.bdp, ptr %i.bdg, align 1
  %i.bdq = add nsw i32 %.02830.i.i, -1
  %i.bdr = icmp samesign ugt i32 %.02830.i.i, 1
  br i1 %i.bdr, label %.preheader.i87.i, label %drmp3_L3_antialias.exit.i

drmp3_L3_antialias.exit.i:                        ; preds = %.preheader.i87.i
  %i.bds = getelementptr inbounds nuw [1152 x i8], ptr %0, i64 %indvars.iv214.i ; 3 uses
  %i.bdt = getelementptr inbounds nuw i8, ptr %.054148.i, i64 15
  %i.bdu = load i8, ptr %i.bdt, align 1           ; 2 uses
  br i1 %.not57.i, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %drmp3_L3_antialias.exit.i
  %i.bdv = getelementptr inbounds nuw [2304 x i8], ptr %i.no, i64 %indvars.iv214.i
  tail call fastcc void @drmp3_L3_imdct36(ptr noundef nonnull %i.bcr, ptr noundef %i.bds, ptr noundef nonnull @drmp3_L3_imdct_gr.g_mdct_window, i32 noundef range(i32 0, 5) %i.bao)
  %i.bdw = mul nuw nsw i32 %i.bao, 18
  %i.bdx = zext nneg i32 %i.bdw to i64
  %i.bdy = getelementptr inbounds nuw [4 x i8], ptr %i.bdv, i64 %i.bdx
  %i.bdz = mul nuw nsw i32 %i.bao, 9
  %i.bea = zext nneg i32 %i.bdz to i64
  %i.beb = getelementptr inbounds nuw [4 x i8], ptr %i.bds, i64 %i.bea
  br label %bb.ej

bb.ej:                                            ; preds = %drmp3_L3_antialias.exit.i.thread, %bb.ei, %drmp3_L3_antialias.exit.i
  %i.bec = phi i8 [ %i.bdu, %bb.ei ], [ %i.bdu, %drmp3_L3_antialias.exit.i ], [ %i.bcq, %drmp3_L3_antialias.exit.i.thread ] ; 2 uses
  %i.bed = phi ptr [ %i.bcr, %bb.ei ], [ %i.bcr, %drmp3_L3_antialias.exit.i ], [ %i.bat, %drmp3_L3_antialias.exit.i.thread ]
  %.015.i.i = phi ptr [ %i.beb, %bb.ei ], [ %i.bds, %drmp3_L3_antialias.exit.i ], [ %i.bco, %drmp3_L3_antialias.exit.i.thread ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bdy, %bb.ei ], [ %i.bcr, %drmp3_L3_antialias.exit.i ], [ %i.bat, %drmp3_L3_antialias.exit.i.thread ] ; 2 uses
  %i.bee = icmp eq i8 %i.bec, 2
  br i1 %i.bee, label %bb.ek, label %bb.em

bb.ek:                                            ; preds = %bb.ej
  %i.bef = sub nuw nsw i32 32, %i.bao
  br label %bb.el

bb.el:                                            ; preds = %bb.el, %bb.ek
  %.016.i.i.i = phi i32 [ %i.bef, %bb.ek ], [ %i.bfz, %bb.el ] ; 2 uses
  %.01215.i.i.i = phi ptr [ %.015.i.i, %bb.ek ], [ %i.bga, %bb.el ] ; 7 uses
  %.01314.i.i.i = phi ptr [ %.0.i.i, %bb.ek ], [ %i.bgb, %bb.el ] ; 19 uses
  %.sroa.0.0.copyload.i.i.i.a = load float, ptr %.01314.i.i.i, align 4 ; 2 uses
  %.sroa.4.0..013.sroa_idx.i.i.i.a = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 4
  %.sroa.4.0.copyload.i.i.i = load float, ptr %.sroa.4.0..013.sroa_idx.i.i.i.a, align 4 ; 2 uses
  %.sroa.5.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 8
  %.sroa.6.0..013.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 12
  %.sroa.6.0.copyload.i.i.i.a = load float, ptr %.sroa.6.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
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
  %i.beg = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 24 ; 5 uses
  %i.beh = fneg float %.sroa.0.0.copyload.i.i.i.a
  %i.bei = fadd float %.sroa.6.0.copyload.i.i.i.a, %.sroa.9.0.copyload.i.i.i
  %i.bej = fadd float %.sroa.12.0.copyload.i.i.i, %.sroa.15.0.copyload.i.i.i ; 2 uses
  %i.bek = fmul float %i.bei, f0x3F5DB3D7         ; 2 uses
  %i.bel = fneg float %i.bej
  %i.bem = tail call float @llvm.fmuladd.f32(float %i.bel, float 5.000000e-01, float %i.beh) ; 2 uses
  %i.ben = fadd float %i.bek, %i.bem              ; 2 uses
  %i.beo = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 28 ; 4 uses
  %i.bep = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 32 ; 6 uses
  %.sroa.18.0.copyload.i.i.i = load float, ptr %.sroa.18.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %7 = fsub float %i.bej, %.sroa.0.0.copyload.i.i.i.a
  %8 = fsub float %i.bem, %i.bek
  %i.beq = fsub float %.sroa.15.0.copyload.i.i.i, %.sroa.12.0.copyload.i.i.i
  %i.ber = fsub float %.sroa.9.0.copyload.i.i.i, %.sroa.6.0.copyload.i.i.i.a ; 2 uses
  %i.bes = fmul float %i.beq, f0x3F5DB3D7         ; 2 uses
  %i.bet = fneg float %i.ber
  %9 = tail call float @llvm.fmuladd.f32(float %i.bet, float 5.000000e-01, float %.sroa.18.0.copyload.i.i.i) ; 2 uses
  %i.beu = fadd float %i.ber, %.sroa.18.0.copyload.i.i.i
  %10 = fadd float %i.bes, %9                     ; 2 uses
  %11 = fsub float %9, %i.bes
  %12 = fmul float %10, f0x3F4B1934
  %13 = tail call float @llvm.fmuladd.f32(float %i.ben, float f0x3F1BD7CA, float %12) ; 2 uses
  %14 = fmul float %10, f0xBF1BD7CA
  %15 = tail call float @llvm.fmuladd.f32(float %i.ben, float f0x3F4B1934, float %14)
  %16 = fmul float %13, f0xBE05A8A8
  %17 = fmul float %13, f0x3F7DCF55
  %18 = insertelement <4 x float> poison, float %i.beu, i64 0
  %19 = insertelement <4 x float> %18, float %11, i64 1
  %i.bev = shufflevector <4 x float> %19, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bew = fmul <4 x float> %i.bev, <float f0xBF6C835E, float f0x3F7DCF55, float f0x3EC3EF15, float f0xBE05A8A8>
  %i.bex = insertelement <4 x float> poison, float %7, i64 0
  %i.bey = insertelement <4 x float> %i.bex, float %8, i64 1
  %i.bez = shufflevector <4 x float> %i.bey, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %20 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bez, <4 x float> <float f0x3EC3EF15, float f0x3E05A8A8, float f0x3F6C835E, float f0x3F7DCF55>, <4 x float> %i.bew) ; 4 uses
  %i.bfa = extractelement <4 x float> %20, i64 0  ; 2 uses
  %21 = fmul float %i.bfa, f0xBEC3EF15
  %i.bfb = fmul float %i.bfa, f0x3F6C835E
  %22 = fneg float %.sroa.4.0.copyload.i.i.i
  %i.bfc = fadd float %.sroa.13.0.copyload.i.i.i, %.sroa.16.0.copyload.i.i.i ; 2 uses
  %i.bfd = fneg float %i.bfc
  %23 = tail call float @llvm.fmuladd.f32(float %i.bfd, float 5.000000e-01, float %22) ; 2 uses
  %.sroa.19.0.copyload.i.i.i = load float, ptr %.sroa.19.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %i.bfe = fsub float %i.bfc, %.sroa.4.0.copyload.i.i.i
  %24 = fsub float %.sroa.16.0.copyload.i.i.i, %.sroa.13.0.copyload.i.i.i
  %25 = fmul float %24, f0x3F5DB3D7               ; 2 uses
  %26 = insertelement <4 x float> poison, float %i.bfe, i64 0
  %27 = load <2 x float>, ptr %.sroa.7.0..013.sroa_idx.i.i.i, align 4 ; 3 uses
  %28 = load <2 x float>, ptr %.sroa.10.0..013.sroa_idx.i.i.i, align 4 ; 3 uses
  %29 = fadd <2 x float> %27, %28                 ; 2 uses
  %30 = extractelement <2 x float> %29, i64 0
  %31 = fmul float %30, f0x3F5DB3D7               ; 2 uses
  %32 = fadd float %31, %23                       ; 2 uses
  %33 = fsub float %23, %31
  %foldExtExtBinop = fsub <2 x float> %28, %27
  %i.bff = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %34 = fneg float %i.bff
  %35 = tail call float @llvm.fmuladd.f32(float %34, float 5.000000e-01, float %.sroa.19.0.copyload.i.i.i) ; 2 uses
  %36 = fadd float %i.bff, %.sroa.19.0.copyload.i.i.i
  %37 = fadd float %25, %35                       ; 2 uses
  %38 = fsub float %35, %25
  %39 = fmul float %37, f0x3F4B1934
  %40 = tail call float @llvm.fmuladd.f32(float %32, float f0x3F1BD7CA, float %39) ; 2 uses
  %41 = fmul float %37, f0xBF1BD7CA
  %42 = tail call float @llvm.fmuladd.f32(float %32, float f0x3F4B1934, float %41)
  %43 = fmul float %40, f0xBE05A8A8
  %44 = fmul float %40, f0x3F7DCF55
  %45 = insertelement <4 x float> poison, float %36, i64 0
  %46 = insertelement <4 x float> %45, float %38, i64 1
  %47 = shufflevector <4 x float> %46, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %48 = fmul <4 x float> %47, <float f0xBF6C835E, float f0x3F7DCF55, float f0x3EC3EF15, float f0xBE05A8A8>
  %49 = insertelement <4 x float> %26, float %33, i64 1
  %50 = shufflevector <4 x float> %49, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %51 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %50, <4 x float> <float f0x3EC3EF15, float f0x3E05A8A8, float f0x3F6C835E, float f0x3F7DCF55>, <4 x float> %48) ; 4 uses
  %52 = extractelement <4 x float> %51, i64 0     ; 2 uses
  %53 = fmul float %52, f0xBEC3EF15
  %54 = fmul float %52, f0x3F6C835E
  %55 = fadd float %.sroa.14.0.copyload.i.i.i, %.sroa.17.0.copyload.i.i.i ; 2 uses
  %56 = fneg float %55
  %57 = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 16
  %.sroa.5.0.copyload.i.i.i = load float, ptr %.sroa.5.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  %.sroa.20.0.copyload.i.i.i = load float, ptr %.sroa.20.0..013.sroa_idx.i.i.i, align 4 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.01314.i.i.i, ptr noundef nonnull align 4 dereferenceable(24) %.01215.i.i.i, i64 24, i1 false)
  %58 = load float, ptr %i.beg, align 4           ; 2 uses
  store float %15, ptr %i.beg, align 4
  %59 = tail call float @llvm.fmuladd.f32(float %58, float f0x3F7DCF55, float %16)
  store float %59, ptr %.sroa.9.0..013.sroa_idx.i.i.i, align 4
  %60 = tail call float @llvm.fmuladd.f32(float %58, float f0x3E05A8A8, float %17)
  store float %60, ptr %.sroa.14.0..013.sroa_idx.i.i.i, align 4
  %61 = load float, ptr %i.beo, align 4           ; 2 uses
  %i.bfg = extractelement <4 x float> %20, i64 2
  store float %i.bfg, ptr %i.beo, align 4
  %62 = tail call float @llvm.fmuladd.f32(float %61, float f0x3F6C835E, float %21)
  store float %62, ptr %.sroa.10.0..013.sroa_idx.i.i.i, align 4
  %63 = tail call float @llvm.fmuladd.f32(float %61, float f0x3EC3EF15, float %i.bfb)
  store float %63, ptr %.sroa.13.0..013.sroa_idx.i.i.i, align 4
  %64 = load float, ptr %i.bep, align 4
  %65 = extractelement <4 x float> %20, i64 3
  store float %65, ptr %i.bep, align 4
  %66 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %67 = fmul <2 x float> %66, <float f0xBF1BD7CA, float f0x3F4B1934>
  %68 = insertelement <2 x float> poison, float %64, i64 0
  %69 = shufflevector <2 x float> %68, <2 x float> poison, <2 x i32> zeroinitializer
  %70 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %69, <2 x float> <float f0x3F4B1934, float f0x3F1BD7CA>, <2 x float> %67)
  store <2 x float> %70, ptr %.sroa.11.0..013.sroa_idx.i.i.i, align 4
  %i.bfh = load float, ptr %i.beg, align 4        ; 2 uses
  store float %42, ptr %i.beg, align 4
  %i.bfi = tail call float @llvm.fmuladd.f32(float %i.bfh, float f0x3F7DCF55, float %43)
  store float %i.bfi, ptr %.sroa.15.0..013.sroa_idx.i.i.i, align 4
  %i.bfj = tail call float @llvm.fmuladd.f32(float %i.bfh, float f0x3E05A8A8, float %44)
  store float %i.bfj, ptr %.sroa.20.0..013.sroa_idx.i.i.i, align 4
  %i.bfk = load float, ptr %i.beo, align 4        ; 2 uses
  %71 = extractelement <4 x float> %51, i64 2
  store float %71, ptr %i.beo, align 4
  %72 = tail call float @llvm.fmuladd.f32(float %i.bfk, float f0x3F6C835E, float %53)
  store float %72, ptr %.sroa.16.0..013.sroa_idx.i.i.i, align 4
  %73 = tail call float @llvm.fmuladd.f32(float %i.bfk, float f0x3EC3EF15, float %54)
  store float %73, ptr %.sroa.19.0..013.sroa_idx.i.i.i, align 4
  %74 = load float, ptr %i.bep, align 4
  %i.bfl = extractelement <4 x float> %51, i64 3
  store float %i.bfl, ptr %i.bep, align 4
  %75 = shufflevector <4 x float> %51, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bfm = fmul <2 x float> %75, <float f0xBF1BD7CA, float f0x3F4B1934>
  %i.bfn = insertelement <2 x float> poison, float %74, i64 0
  %i.bfo = shufflevector <2 x float> %i.bfn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bfp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bfo, <2 x float> <float f0x3F4B1934, float f0x3F1BD7CA>, <2 x float> %i.bfm)
  store <2 x float> %i.bfp, ptr %.sroa.17.0..013.sroa_idx.i.i.i, align 4
  %76 = fneg float %.sroa.5.0.copyload.i.i.i
  %i.bfq = extractelement <2 x float> %29, i64 1
  %i.bfr = fmul float %i.bfq, f0x3F5DB3D7         ; 2 uses
  %77 = tail call float @llvm.fmuladd.f32(float %56, float 5.000000e-01, float %76) ; 2 uses
  %i.bfs = fsub float %77, %i.bfr                 ; 2 uses
  %78 = fsub float %.sroa.17.0.copyload.i.i.i, %.sroa.14.0.copyload.i.i.i
  %foldExtExtBinop687 = fsub <2 x float> %28, %27
  %79 = extractelement <2 x float> %foldExtExtBinop687, i64 1 ; 2 uses
  %80 = fmul float %78, f0x3F5DB3D7               ; 2 uses
  %81 = fneg float %79
  %82 = tail call float @llvm.fmuladd.f32(float %81, float 5.000000e-01, float %.sroa.20.0.copyload.i.i.i) ; 2 uses
  %83 = fadd float %79, %.sroa.20.0.copyload.i.i.i ; 2 uses
  %84 = fadd float %80, %82                       ; 2 uses
  %85 = fsub float %82, %80                       ; 2 uses
  %86 = insertelement <4 x float> poison, float %84, i64 0
  %87 = insertelement <4 x float> %86, float %83, i64 1
  %88 = insertelement <4 x float> %87, float %85, i64 2
  %89 = fmul <4 x float> %88, <float f0x3F4B1934, float f0xBF6C835E, float f0x3F7DCF55, float poison>
  %90 = fsub float %55, %.sroa.5.0.copyload.i.i.i ; 2 uses
  %91 = fadd float %i.bfr, %77                    ; 2 uses
  %i.bft = insertelement <4 x float> poison, float %91, i64 0
  %i.bfu = insertelement <4 x float> %i.bft, float %90, i64 1
  %92 = insertelement <4 x float> %i.bfu, float %i.bfs, i64 2
  %i.bfv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %92, <4 x float> <float f0x3F1BD7CA, float f0x3EC3EF15, float f0x3E05A8A8, float poison>, <4 x float> %89) ; 2 uses
  %93 = shufflevector <4 x float> %i.bfv, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %94 = load <2 x float>, ptr %i.beg, align 4     ; 2 uses
  %95 = shufflevector <4 x float> %i.bfv, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %96 = insertelement <4 x float> %95, float %84, i64 2
  %97 = insertelement <4 x float> %96, float %83, i64 3
  %i.bfw = fmul <4 x float> %97, <float f0x3F6C835E, float f0x3F7DCF55, float f0xBF1BD7CA, float f0x3EC3EF15>
  %98 = shufflevector <2 x float> %94, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.bfx = insertelement <4 x float> %98, float %91, i64 2
  %99 = insertelement <4 x float> %i.bfx, float %90, i64 3
  %i.bfy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %99, <4 x float> <float f0x3EC3EF15, float f0x3E05A8A8, float f0x3F4B1934, float f0x3F6C835E>, <4 x float> %i.bfw)
  store <4 x float> %i.bfy, ptr %57, align 4
  %100 = load float, ptr %i.bep, align 4
  %101 = fmul float %85, f0xBE05A8A8
  %102 = tail call float @llvm.fmuladd.f32(float %i.bfs, float f0x3F7DCF55, float %101)
  store float %102, ptr %i.bep, align 4
  %103 = fmul <4 x float> %93, <float f0xBE05A8A8, float f0xBEC3EF15, float f0xBF1BD7CA, float f0x3F4B1934>
  %104 = shufflevector <2 x float> %94, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %105 = insertelement <4 x float> %104, float %100, i64 2
  %106 = shufflevector <4 x float> %105, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %107 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %106, <4 x float> <float f0x3F7DCF55, float f0x3F6C835E, float f0x3F4B1934, float f0x3F1BD7CA>, <4 x float> %103)
  store <4 x float> %107, ptr %.01215.i.i.i, align 4
  %i.bfz = add nsw i32 %.016.i.i.i, -1
  %i.bga = getelementptr inbounds nuw i8, ptr %.01215.i.i.i, i64 36
  %i.bgb = getelementptr inbounds nuw i8, ptr %.01314.i.i.i, i64 72
  %i.bgc = icmp samesign ugt i32 %.016.i.i.i, 1
  br i1 %i.bgc, label %bb.el, label %drmp3_L3_imdct_gr.exit.i

bb.em:                                            ; preds = %bb.ej
  %i.bgd = icmp eq i8 %i.bec, 3
  %i.bge = zext i1 %i.bgd to i64
  %i.bgf = getelementptr inbounds nuw [72 x i8], ptr @drmp3_L3_imdct_gr.g_mdct_window, i64 %i.bge
  %i.bgg = sub nuw nsw i32 32, %i.bao
  tail call fastcc void @drmp3_L3_imdct36(ptr noundef nonnull %.0.i.i, ptr noundef %.015.i.i, ptr noundef nonnull %i.bgf, i32 noundef %i.bgg)
  br label %drmp3_L3_imdct_gr.exit.i

drmp3_L3_imdct_gr.exit.i:                         ; preds = %bb.el, %bb.em
  %i.bgh = getelementptr inbounds nuw i8, ptr %i.bed, i64 72
  br label %.preheader.i89.i

.preheader.i89.i:                                 ; preds = %.preheader.i89.i, %drmp3_L3_imdct_gr.exit.i
  %.0913.i.i = phi i32 [ 0, %drmp3_L3_imdct_gr.exit.i ], [ %i.bhj, %.preheader.i89.i ] ; 2 uses
  %.01012.i.i = phi ptr [ %i.bgh, %drmp3_L3_imdct_gr.exit.i ], [ %i.bhk, %.preheader.i89.i ] ; 10 uses
  %i.bgi = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 4 ; 2 uses
  %i.bgj = load float, ptr %i.bgi, align 4
  %i.bgk = fneg float %i.bgj
  store float %i.bgk, ptr %i.bgi, align 4
  %i.bgl = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 12 ; 2 uses
  %i.bgm = load float, ptr %i.bgl, align 4
  %i.bgn = fneg float %i.bgm
  store float %i.bgn, ptr %i.bgl, align 4
  %i.bgo = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 20 ; 2 uses
  %i.bgp = load float, ptr %i.bgo, align 4
  %i.bgq = fneg float %i.bgp
  store float %i.bgq, ptr %i.bgo, align 4
  %i.bgr = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 28 ; 2 uses
  %i.bgs = load float, ptr %i.bgr, align 4
  %i.bgt = fneg float %i.bgs
  store float %i.bgt, ptr %i.bgr, align 4
  %i.bgu = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 36 ; 2 uses
  %i.bgv = load float, ptr %i.bgu, align 4
  %i.bgw = fneg float %i.bgv
  store float %i.bgw, ptr %i.bgu, align 4
  %i.bgx = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 44 ; 2 uses
  %i.bgy = load float, ptr %i.bgx, align 4
  %i.bgz = fneg float %i.bgy
  store float %i.bgz, ptr %i.bgx, align 4
  %i.bha = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 52 ; 2 uses
  %i.bhb = load float, ptr %i.bha, align 4
  %i.bhc = fneg float %i.bhb
  store float %i.bhc, ptr %i.bha, align 4
  %i.bhd = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 60 ; 2 uses
  %i.bhe = load float, ptr %i.bhd, align 4
  %i.bhf = fneg float %i.bhe
  store float %i.bhf, ptr %i.bhd, align 4
  %i.bhg = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 68 ; 2 uses
  %i.bhh = load float, ptr %i.bhg, align 4
  %i.bhi = fneg float %i.bhh
  store float %i.bhi, ptr %i.bhg, align 4
  %i.bhj = add nuw nsw i32 %.0913.i.i, 2
  %i.bhk = getelementptr inbounds nuw i8, ptr %.01012.i.i, i64 144
  %i.bhl = icmp samesign ult i32 %.0913.i.i, 30
  br i1 %i.bhl, label %.preheader.i89.i, label %drmp3_L3_change_sign.exit.i

drmp3_L3_change_sign.exit.i:                      ; preds = %.preheader.i89.i
  %indvars.iv.next215.i = add nuw nsw i64 %indvars.iv214.i, 1 ; 2 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %.054148.i, i64 32
  %exitcond218.not.i = icmp eq i64 %indvars.iv.next215.i, %wide.trip.count217.i
  br i1 %exitcond218.not.i, label %drmp3_L3_decode.exit, label %bb.ed

drmp3_L3_decode.exit:                             ; preds = %drmp3_L3_change_sign.exit.i, %drmp3_L3_midside_stereo.exit.i
  %i.bhn = load i32, ptr %i.kq, align 4
  tail call fastcc void @drmp3d_synth_granule(ptr noundef nonnull %i.od, ptr noundef nonnull %i.no, i32 noundef 18, i32 noundef %i.bhn, ptr noundef %.0100330, ptr noundef nonnull %i.ob)
  %i.bho = load i32, ptr %i.kq, align 4
  %i.bhp = sext i32 %i.bho to i64
  %i.bhq = mul nsw i64 %i.bhp, 1152
  %i.bhr = getelementptr inbounds nuw i8, ptr %.0100330, i64 %i.bhq
  %i.bhs = load i8, ptr %i.kr, align 1
  %i.bht = and i8 %i.bhs, 8
  %.not115 = icmp ne i8 %i.bht, 0
  %i.bhu = and i1 %.not115, %i.og
  br i1 %i.bhu, label %bb.ak, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %drmp3_L3_decode.exit
  %.pre = load i32, ptr %i.nh, align 8
  %.pre418 = load i32, ptr %i.nj, align 4
  %i.bhv = add nsw i32 %.pre, 7
  %i.bhw = lshr i32 %i.bhv, 3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.aj
  %i.bhx = phi i32 [ %.pre418, %.loopexit.loopexit ], [ %i.ni, %bb.aj ]
  %i.bhy = phi i32 [ %i.bhw, %.loopexit.loopexit ], [ 0, %bb.aj ] ; 2 uses
  %i.bhz = lshr i32 %i.bhx, 3                     ; 2 uses
  %i.bia = sub nsw i32 %i.bhz, %i.bhy             ; 3 uses
  %spec.select14.i = tail call i32 @llvm.smin.i32(i32 %i.bia, i32 511) ; 2 uses
  %i.bib = icmp sgt i32 %i.bia, 0
  br i1 %i.bib, label %bb.en, label %drmp3_L3_save_reservoir.exit

bb.en:                                            ; preds = %.loopexit
  %i.bic = icmp samesign ugt i32 %i.bia, 511
  %i.bid = add nsw i32 %i.bhz, -511
  %spec.select.i159 = select i1 %i.bic, i32 %i.bid, i32 %i.bhy
  %i.bie = zext nneg i32 %spec.select.i159 to i64
  %i.bif = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.bie
  %i.big = zext nneg i32 %spec.select14.i to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mu, ptr nonnull readonly align 1 %i.bif, i64 %i.big, i1 false)
  br label %drmp3_L3_save_reservoir.exit

drmp3_L3_save_reservoir.exit:                     ; preds = %.loopexit, %bb.en
  store i32 %spec.select14.i, ptr %i.mq, align 8
  br label %bb.ga

bb.eo:                                            ; preds = %drmp3_bs_get_bits.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #61
  %i.bih = icmp eq ptr %3, null
  br i1 %i.bih, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %bb.eo
  %i.bii = zext i8 %.fr to i32                    ; 2 uses
  %i.bij = and i32 %i.bii, 6
  %i.bik = icmp eq i32 %i.bij, 6
  %i.bil = and i32 %i.bii, 14
  %i.bim = icmp eq i32 %i.bil, 2
  %i.bin = zext i1 %i.bim to i32
  %i.bio = lshr exact i32 1152, %i.bin
  %i.bip = select i1 %i.bik, i32 384, i32 %i.bio
  br label %.thread228

bb.eq:                                            ; preds = %bb.eo
  %i.biq = load i8, ptr %i.km, align 1
  %i.bir = zext i8 %i.biq to i32                  ; 2 uses
  %i.bis = lshr i32 %i.bir, 6                     ; 2 uses
  switch i32 %i.bis, label %.fold.split.i.i [
    i32 3, label %bb.es
    i32 1, label %bb.er
  ]

bb.er:                                            ; preds = %bb.eq
  %i.bit = lshr i32 %i.bir, 2
  %i.biu = and i32 %i.bit, 12
  %i.biv = add nuw nsw i32 %i.biu, 4
  br label %bb.es

.fold.split.i.i:                                  ; preds = %bb.eq
  br label %bb.es

bb.es:                                            ; preds = %.fold.split.i.i, %bb.er, %bb.eq
  %i.biw = phi i32 [ 0, %bb.eq ], [ %i.biv, %bb.er ], [ 32, %.fold.split.i.i ] ; 2 uses
  %i.bix = zext i8 %.fr to i32                    ; 3 uses
  %i.biy = and i32 %i.bix, 6
  %i.biz = icmp eq i32 %i.biy, 6
  br i1 %i.biz, label %.lr.ph.i163, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.bja = and i32 %i.bix, 8
  %.not.i.i160 = icmp eq i32 %i.bja, 0
  br i1 %.not.i.i160, label %.lr.ph.i163, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.bjb = load i8, ptr %i.ks, align 1            ; 2 uses
  %i.bjc = lshr i8 %i.bjb, 2
  %i.bjd = and i8 %i.bjc, 3                       ; 2 uses
  %i.bje = lshr i32 %i.bix, 1
  %i.bjf = and i32 %i.bje, 3
  %i.bjg = zext nneg i32 %i.bjf to i64
  %i.bjh = getelementptr [15 x i8], ptr getelementptr inbounds nuw (i8, ptr @drmp3_hdr_bitrate_kbps.halfrate, i64 45), i64 %i.bjg
  %i.bji = getelementptr i8, ptr %i.bjh, i64 -15
  %i.bjj = lshr i8 %i.bjb, 4
  %i.bjk = zext nneg i8 %i.bjj to i64
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.bji, i64 %i.bjk
  %i.bjm = load i8, ptr %i.bjl, align 1           ; 2 uses
  %i.bjn = zext i8 %i.bjm to i32
  %i.bjo = shl nuw nsw i32 %i.bjn, 1
  %i.bjp = icmp ne i32 %i.bis, 3
  %i.bjq = zext i1 %i.bjp to i32
  %i.bjr = lshr exact i32 %i.bjo, %i.bjq
  %.not25.i.i = icmp eq i8 %i.bjm, 0
  %spec.store.select.i.i = select i1 %.not25.i.i, i32 192, i32 %i.bjr ; 2 uses
  %i.bjs = icmp samesign ult i32 %spec.store.select.i.i, 56
  br i1 %i.bjs, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  %i.bjt = icmp eq i8 %i.bjd, 2
  %i.bju = select i1 %i.bjt, i32 12, i32 8
  br label %.lr.ph.i163

bb.ew:                                            ; preds = %bb.eu
  %i.bjv = icmp samesign ugt i32 %spec.store.select.i.i, 95
  %i.bjw = icmp ne i8 %i.bjd, 1
  %or.cond.i.i161 = and i1 %i.bjw, %i.bjv
  %spec.select.i.i162 = select i1 %or.cond.i.i161, i32 30, i32 27
  br label %.lr.ph.i163

.lr.ph.i163:                                      ; preds = %bb.ew, %bb.ev, %bb.et, %bb.es
  %.123.i.i = phi ptr [ @drmp3_L12_subband_alloc_table.g_alloc_L1, %bb.es ], [ @drmp3_L12_subband_alloc_table.g_alloc_L2M2, %bb.et ], [ @drmp3_L12_subband_alloc_table.g_alloc_L2M1_lowrate, %bb.ev ], [ @drmp3_L12_subband_alloc_table.g_alloc_L2M1, %bb.ew ]
  %.1.i.i164 = phi i32 [ 32, %bb.es ], [ 30, %bb.et ], [ %i.bju, %bb.ev ], [ %spec.select.i.i162, %bb.ew ] ; 4 uses
  %i.bjx = trunc nuw nsw i32 %.1.i.i164 to i8
  %i.bjy = getelementptr inbounds nuw i8, ptr %6, i64 768 ; 2 uses
  store i8 %i.bjx, ptr %i.bjy, align 16
  %i.bjz = tail call i32 @llvm.umin.i32(i32 %i.biw, i32 %.1.i.i164) ; 2 uses
  %i.bka = trunc nuw nsw i32 %i.bjz to i8
end_hunk_0
begin_hunk_1_@get_seek_page_info:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.az, %vector.body ]
  %vec.phi45 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %wide.load = load <4 x i8>, ptr %i.av, align 8
  %wide.load46 = load <4 x i8>, ptr %i.aw, align 4
  %i.ax = zext <4 x i8> %wide.load to <4 x i32>
  %i.ay = zext <4 x i8> %wide.load46 to <4 x i32>
  %i.az = add <4 x i32> %vec.phi, %i.ax           ; 2 uses
  %i.ba = add <4 x i32> %vec.phi45, %i.ay         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !1253

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ba, %i.az
  %i.bc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader48

.lr.ph.preheader48:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.036.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader48, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader48 ] ; 2 uses
  %.036 = phi i32 [ %i.bg, %.lr.ph ], [ %.036.ph, %.lr.ph.preheader48 ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i32
  %i.bg = add nuw nsw i32 %.036, %i.bf            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1254

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %getn.exit32
  %.0.lcssa = phi i32 [ 0, %getn.exit32 ], [ %i.bc, %middle.block ], [ %i.bg, %.lr.ph ]
  %i.bh = load i32, ptr %1, align 4               ; 5 uses
  %i.bi = add nuw nsw i32 %i.ai, 27
  %i.bj = add i32 %i.bi, %.0.lcssa
  %i.bk = add i32 %i.bj, %i.bh
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.bk, ptr %i.bl, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.bn = load i32, ptr %i.bm, align 2
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.bn, ptr %i.bo, align 4
  %i.bp = load i8, ptr %i.c, align 4
  %.not.i33 = icmp eq i8 %i.bp, 0
  br i1 %.not.i33, label %bb.p, label %set_file_offset.exit

bb.p:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  store i32 0, ptr %i.bq, align 8
  %i.br = load ptr, ptr %i.t, align 8
  %.not31.i = icmp eq ptr %i.br, null
  br i1 %.not31.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = zext i32 %i.bh to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  %.not33.i = icmp ult ptr %i.bv, %i.bx
  br i1 %.not33.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store ptr %i.bx, ptr %i.t, align 8
  store i32 1, ptr %i.bq, align 8
  br label %set_file_offset.exit

bb.s:                                             ; preds = %bb.q
  store ptr %i.bv, ptr %i.t, align 8
  br label %set_file_offset.exit

bb.t:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8
  %i.ca = add i32 %i.bz, %i.bh                    ; 2 uses
  %i.cb = icmp ult i32 %i.ca, %i.bh
  %i.cc = icmp slt i32 %i.bh, 0
  %or.cond.i = or i1 %i.cc, %i.cb
  br i1 %or.cond.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %i.bq, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cd = zext i32 %i.ca to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.0.i34 = phi i64 [ 2147483647, %bb.u ], [ %i.cd, %bb.v ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = tail call i32 @fseek(ptr noundef %i.cf, i64 noundef %.0.i34, i32 noundef 0)
  %.not32.i = icmp eq i32 %i.cg, 0
  br i1 %.not32.i, label %set_file_offset.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 1, ptr %i.bq, align 8
  %i.ch = load ptr, ptr %i.ce, align 8
  %i.ci = load i32, ptr %i.by, align 8
  %i.cj = zext i32 %i.ci to i64
  %i.ck = tail call i32 @fseek(ptr noundef %i.ch, i64 noundef %i.cj, i32 noundef 2) ; 0 uses
  br label %set_file_offset.exit

set_file_offset.exit:                             ; preds = %bb.x, %bb.w, %bb.s, %bb.r, %._crit_edge, %getn.exit
  %.026 = phi i32 [ 0, %getn.exit ], [ 1, %._crit_edge ], [ 1, %bb.r ], [ 1, %bb.s ], [ 1, %bb.w ], [ 1, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  ret i32 %.026
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @drmp3_L3_imdct36(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 1, 33) %3) unnamed_addr #48 {
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
  %i.f = load float, ptr %.0103, align 4          ; 2 uses
  %i.g = fneg float %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %.0103, i64 68
  %i.i = load float, ptr %i.h, align 4            ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0103, i64 4
  %i.k = load float, ptr %i.j, align 4            ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0103, i64 8
  %i.m = load float, ptr %i.l, align 4            ; 2 uses
  %i.n = fsub float %i.k, %i.m                    ; 3 uses
  %i.o = fadd float %i.k, %i.m                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0103, i64 16 ; 2 uses
  %i.q = load float, ptr %i.p, align 4            ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0103, i64 12
  %i.s = load float, ptr %i.r, align 4            ; 2 uses
  %i.t = fsub float %i.q, %i.s                    ; 3 uses
  %i.u = fadd float %i.q, %i.s                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.0103, i64 20
  %i.w = load float, ptr %i.v, align 4            ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.0103, i64 24
  %i.y = load float, ptr %i.x, align 4            ; 2 uses
  %i.z = fsub float %i.w, %i.y                    ; 2 uses
  %i.aa = fadd float %i.w, %i.y
  %i.ab = getelementptr inbounds nuw i8, ptr %.0103, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.0103, i64 28
  %i.ad = getelementptr inbounds nuw i8, ptr %.0103, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %.0103, i64 36
  %i.af = getelementptr inbounds nuw i8, ptr %.0103, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %.0103, i64 48
  %i.ah = load float, ptr %i.ag, align 4          ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.0103, i64 44
  %i.aj = load float, ptr %i.ai, align 4          ; 2 uses
  %i.ak = fsub float %i.ah, %i.aj
  %i.al = fadd float %i.ah, %i.aj                 ; 2 uses
  %i.am = fneg float %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.0103, i64 52
  %i.ao = getelementptr inbounds nuw i8, ptr %.0103, i64 56
  %i.ap = getelementptr inbounds nuw i8, ptr %.0103, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %.0103, i64 60
  %i.ar = fsub float %i.al, %i.f                  ; 2 uses
  %i.as = load <2 x float>, ptr %i.ac, align 4    ; 3 uses
  %i.at = load float, ptr %i.ab, align 4
  %i.au = extractelement <2 x float> %i.as, i64 0
  %i.av = fsub float %i.at, %i.au                 ; 3 uses
  %i.aw = load <2 x float>, ptr %i.aq, align 4    ; 3 uses
  %i.ax = load float, ptr %i.ap, align 4
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
  %4 = extractelement <2 x float> %i.bh, i64 1    ; 2 uses
  %5 = extractelement <2 x float> %i.bh, i64 0    ; 2 uses
  %i.br = fmul float %i.aa, f0x3F5DB3D7           ; 3 uses
  %i.bs = load <2 x float>, ptr %i.ae, align 4    ; 3 uses
  %i.bt = load float, ptr %i.af, align 4
  %i.bu = extractelement <2 x float> %i.bs, i64 0
  %i.bv = fsub float %i.bu, %i.bt                 ; 3 uses
  %i.bw = load <2 x float>, ptr %i.an, align 4    ; 3 uses
  %i.bx = load float, ptr %i.ao, align 4
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
  %i.dp = extractelement <4 x float> %i.do, i64 0 ; 3 uses
  %i.dq = fsub float %i.dp, %4
  %i.dr = fadd float %i.bl, %i.dq                 ; 2 uses
  %i.ds = fsub float %i.dp, %5
  %i.dt = fadd float %i.ds, %4                    ; 2 uses
  %i.du = fadd float %i.dp, %5
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
  %i.gc = load <4 x float>, ptr %.096102, align 1 ; 2 uses
  %i.gd = load <4 x float>, ptr %2, align 1       ; 2 uses
  %i.ge = load <4 x float>, ptr %i.a, align 1     ; 2 uses
  %i.gf = fmul <4 x float> %.sroa.0139.12.vec.insert, <float f0x3F2CF37B, float f0x3F1BD7CA, float f0x3F098C78, float f0x3EEC6A50>
  %i.gg = fmul <4 x float> %.sroa.0.12.vec.insert119, <float f0x3F3CBE35, float f0x3F4B1934, float f0x3F57E881, float f0x3F631324>
  %i.gh = fadd <4 x float> %i.gg, %i.gf           ; 2 uses
  %i.gi = fmul <4 x float> %.sroa.0139.12.vec.insert, <float f0x3F3CBE35, float f0x3F4B1934, float f0x3F57E881, float f0x3F631324>
  %i.gj = fmul <4 x float> %.sroa.0.12.vec.insert119, <float f0x3F2CF37B, float f0x3F1BD7CA, float f0x3F098C78, float f0x3EEC6A50>
  %i.gk = fsub <4 x float> %i.gi, %i.gj
  store <4 x float> %i.gk, ptr %.096102, align 1
  %i.gl = fmul <4 x float> %i.gc, %i.gd
  %i.gm = fmul <4 x float> %i.gh, %i.ge
  %i.gn = fsub <4 x float> %i.gl, %i.gm
  store <4 x float> %i.gn, ptr %.0103, align 4
  %i.go = fmul <4 x float> %i.gc, %i.ge
  %i.gp = fmul <4 x float> %i.gd, %i.gh
  %i.gq = fadd <4 x float> %i.go, %i.gp
  %i.gr = shufflevector <4 x float> %i.gq, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.gr, ptr %i.gb, align 4
  %i.gs = getelementptr inbounds nuw i8, ptr %.096102, i64 16 ; 2 uses
  %i.gt = load <4 x float>, ptr %i.gs, align 1    ; 2 uses
  %i.gu = load <4 x float>, ptr %i.d, align 1     ; 2 uses
  %i.gv = load <4 x float>, ptr %i.e, align 1     ; 2 uses
  %i.gw = fmul <4 x float> %.sroa.14.28.vec.insert, <float f0x3EC3EF15, float f0x3E99F61C, float f0x3E5DA258, float f0x3E05A8A8>
  %i.gx = fmul <4 x float> %.sroa.17.28.vec.insert138, <float f0x3F6C835E, float f0x3F7426CB, float 9.762960e-01, float f0x3F7DCF55>
  %i.gy = fadd <4 x float> %i.gx, %i.gw           ; 2 uses
  %i.gz = fmul <4 x float> %.sroa.14.28.vec.insert, <float f0x3F6C835E, float f0x3F7426CB, float 9.762960e-01, float f0x3F7DCF55>
  %i.ha = fmul <4 x float> %.sroa.17.28.vec.insert138, <float f0x3EC3EF15, float f0x3E99F61C, float f0x3E5DA258, float f0x3E05A8A8>
  %i.hb = fsub <4 x float> %i.gz, %i.ha
  store <4 x float> %i.hb, ptr %i.gs, align 1
  %i.hc = fmul <4 x float> %i.gt, %i.gu
  %i.hd = fmul <4 x float> %i.gy, %i.gv
  %i.he = fsub <4 x float> %i.hc, %i.hd
  store <4 x float> %i.he, ptr %i.p, align 4
  %i.hf = fmul <4 x float> %i.gt, %i.gv
  %i.hg = fmul <4 x float> %i.gu, %i.gy
  %i.hh = fadd <4 x float> %i.hf, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %.0103, i64 40
  %i.hj = shufflevector <4 x float> %i.hh, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x float> %i.hj, ptr %i.hi, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %.096102, i64 32 ; 2 uses
  %i.hl = fmul float %i.fs, f0x3F7FC1A0
  %i.hm = tail call float @llvm.fmuladd.f32(float %i.ej, float f0x3D32AA3C, float %i.hl) ; 2 uses
  %i.hn = fmul float %i.fs, f0xBD32AA3C
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.ej, float f0x3F7FC1A0, float %i.hn)
  %i.hp = getelementptr inbounds nuw i8, ptr %.0103, i64 36
  %i.hq = load float, ptr %i.hk, align 4          ; 2 uses
  store float %i.ho, ptr %i.hk, align 4
  %i.hr = load float, ptr %i.b, align 4
  %i.hs = load float, ptr %i.c, align 4
  %i.ht = fneg float %i.hs
  %i.hu = fmul float %i.hm, %i.ht
  %i.hv = tail call float @llvm.fmuladd.f32(float %i.hq, float %i.hr, float %i.hu)
  store float %i.hv, ptr %i.ad, align 4
  %i.hw = load float, ptr %i.c, align 4
  %i.hx = load float, ptr %i.b, align 4
  %i.hy = fmul float %i.hm, %i.hx
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.hq, float %i.hw, float %i.hy)
  store float %i.hz, ptr %i.hp, align 4
  %i.ia = add nuw nsw i32 %.098101, 1             ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.0103, i64 72
  %i.ic = getelementptr inbounds nuw i8, ptr %.096102, i64 36
  %exitcond.not = icmp eq i32 %i.ia, %3
  br i1 %exitcond.not, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @drmp3d_synth_pair(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 2)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 3584
  %i.b = load float, ptr %i.a, align 4
  %i.c = load float, ptr %2, align 4
  %i.d = fsub float %i.b, %i.c
  %i.e = fmul float %i.d, 2.900000e+01
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.g = load float, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 3328
  %i.i = load float, ptr %i.h, align 4
  %i.j = fadd float %i.g, %i.i
  %i.k = tail call float @llvm.fmuladd.f32(float %i.j, float 2.130000e+02, float %i.e)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 3072
  %i.m = load float, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 512
  %i.o = load float, ptr %i.n, align 4
  %i.p = fsub float %i.m, %i.o
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 4.590000e+02, float %i.k)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 768
  %i.s = load float, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 2816
  %i.u = load float, ptr %i.t, align 4
  %i.v = fadd float %i.s, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float 2.037000e+03, float %i.q)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 2560
  %i.y = load float, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 1024
  %i.aa = load float, ptr %i.z, align 4
  %i.ab = fsub float %i.y, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float 5.153000e+03, float %i.w)
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 1280
  %i.ae = load float, ptr %i.ad, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 2304
  %i.ag = load float, ptr %i.af, align 4
  %i.ah = fadd float %i.ae, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float 6.574000e+03, float %i.ac)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 2048
  %i.ak = load float, ptr %i.aj, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1536
  %i.am = load float, ptr %i.al, align 4
  %i.an = fsub float %i.ak, %i.am
  %i.ao = tail call float @llvm.fmuladd.f32(float %i.an, float 3.748900e+04, float %i.ai)
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1792
  %i.aq = load float, ptr %i.ap, align 4
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float 7.503800e+04, float %i.ao) ; 3 uses
  %i.as = fcmp ult float %i.ar, 3.276650e+04
  br i1 %i.as, label %bb.b, label %drmp3d_scale_pcm.exit

bb.b:                                             ; preds = %bb.a
  %i.at = fcmp ugt float %i.ar, -3.276750e+04
  br i1 %i.at, label %bb.c, label %drmp3d_scale_pcm.exit

bb.c:                                             ; preds = %bb.b
  %i.au = fadd float %i.ar, 5.000000e-01
  %i.av = fptosi float %i.au to i16               ; 2 uses
  %.lobit.neg.i = ashr i16 %i.av, 15
  %i.aw = add i16 %.lobit.neg.i, %i.av
  br label %drmp3d_scale_pcm.exit

drmp3d_scale_pcm.exit:                            ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i16 [ %i.aw, %bb.c ], [ 32767, %bb.a ], [ -32768, %bb.b ]
  store i16 %.0.i, ptr %0, align 2
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 3592
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = fmul float %i.az, 1.040000e+02
end_hunk_1
