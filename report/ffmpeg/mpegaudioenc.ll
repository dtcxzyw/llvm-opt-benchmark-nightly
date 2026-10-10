Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mpegaudioenc?download=true
inline.NumInlined: 38
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@mpa_encode_frame:bb.a
  %i.bmu = ptrtoint ptr %.sroa.121.60.i to i64
  %i.bmv = sub i64 %i.bhr, %i.bmu
  %i.bmw = icmp ugt i64 %i.bmv, 3
  br i1 %i.bmw, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.bmx = shl i32 %.026.i.i172.i, %.0.i.i173.i
  %i.bmy = sub nsw i32 %i.blj, %.0.i.i173.i
  %i.bmz = lshr i32 %.sroa.6.0.i, %i.bmy
  %i.bna = or i32 %i.bmz, %i.bmx
  %i.bnb = tail call i32 @llvm.bswap.i32(i32 %i.bna)
  store i32 %i.bnb, ptr %.sroa.121.60.i, align 1, !tbaa !47
  %i.bnc = getelementptr inbounds nuw i8, ptr %.sroa.121.60.i, i64 4
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #10
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.sroa.121.61.i = phi ptr [ %i.bnc, %bb.ck ], [ %.sroa.121.60.i, %bb.cl ]
  %reass.sub112 = sub i32 %.0.i.i173.i, %i.blj
  %i.bnd = add i32 %reass.sub112, 32
  br label %put_bits.exit178.i

put_bits.exit178.i:                               ; preds = %bb.cm, %bb.ci
  %.sroa.121.62.i = phi ptr [ %.sroa.121.60.i, %bb.ci ], [ %.sroa.121.61.i, %bb.cm ] ; 5 uses
  %.026.i.i176.i = phi i32 [ %i.bms, %bb.ci ], [ %.sroa.6.0.i, %bb.cm ] ; 2 uses
  %.0.i.i177.i = phi i32 [ %i.bmt, %bb.ci ], [ %i.bnd, %bb.cm ] ; 5 uses
  %i.bne = icmp slt i32 %i.blj, %.0.i.i177.i
  br i1 %i.bne, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %put_bits.exit178.i
  %i.bnf = shl i32 %.026.i.i176.i, %i.blj
  %i.bng = or i32 %i.bnf, %spec.select.2.i63
  %i.bnh = sub nuw nsw i32 %.0.i.i177.i, %i.blj
  br label %put_bits.exit170.i

bb.co:                                            ; preds = %put_bits.exit178.i
  %i.bni = ptrtoint ptr %.sroa.121.62.i to i64
  %i.bnj = sub i64 %i.bhr, %i.bni
  %i.bnk = icmp ugt i64 %i.bnj, 3
  br i1 %i.bnk, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.bnl = shl i32 %.026.i.i176.i, %.0.i.i177.i
  %i.bnm = sub nsw i32 %i.blj, %.0.i.i177.i
  %i.bnn = lshr i32 %spec.select.2.i63, %i.bnm
  %i.bno = or i32 %i.bnn, %i.bnl
  %i.bnp = tail call i32 @llvm.bswap.i32(i32 %i.bno)
  store i32 %i.bnp, ptr %.sroa.121.62.i, align 1, !tbaa !47
  %i.bnq = getelementptr inbounds nuw i8, ptr %.sroa.121.62.i, i64 4
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #10
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.sroa.121.63.i = phi ptr [ %i.bnq, %bb.cp ], [ %.sroa.121.62.i, %bb.cq ]
  %reass.sub113 = sub i32 %.0.i.i177.i, %i.blj
  %i.bnr = add i32 %reass.sub113, 32
  br label %put_bits.exit170.i

put_bits.exit170.i:                               ; preds = %bb.cr, %bb.cn, %bb.cb, %bb.bx
  %.sroa.121.19.i = phi ptr [ %.sroa.121.57.i, %bb.cb ], [ %.sroa.121.18422.i, %bb.bx ], [ %.sroa.121.62.i, %bb.cn ], [ %.sroa.121.63.i, %bb.cr ]
  %.sroa.61.19.i = phi i32 [ %i.bmd, %bb.cb ], [ %i.blt, %bb.bx ], [ %i.bnh, %bb.cn ], [ %i.bnr, %bb.cr ]
  %.sroa.0.19.i = phi i32 [ %i.blp, %bb.cb ], [ %i.bls, %bb.bx ], [ %i.bng, %bb.cn ], [ %spec.select.2.i63, %bb.cr ]
  %.pre603.i = load i32, ptr %i.g, align 8, !tbaa !31
  br label %bb.cs

bb.cs:                                            ; preds = %put_bits.exit170.i, %bb.bu
  %i.bns = phi i32 [ %i.bjb, %bb.bu ], [ %.pre603.i, %put_bits.exit170.i ] ; 4 uses
  %.sroa.121.20.i = phi ptr [ %.sroa.121.18422.i, %bb.bu ], [ %.sroa.121.19.i, %put_bits.exit170.i ] ; 2 uses
  %.sroa.61.20.i = phi i32 [ %.sroa.61.18423.i, %bb.bu ], [ %.sroa.61.19.i, %put_bits.exit170.i ] ; 2 uses
  %.sroa.0.20.i = phi i32 [ %.sroa.0.18424.i, %bb.bu ], [ %.sroa.0.19.i, %put_bits.exit170.i ] ; 2 uses
  %indvars.iv.next564.i = add nuw nsw i64 %indvars.iv563.i, 1 ; 2 uses
  %i.bnt = sext i32 %i.bns to i64
  %i.bnu = icmp slt i64 %indvars.iv.next564.i, %i.bnt
  br i1 %i.bnu, label %bb.bu, label %._crit_edge428.loopexit.i, !llvm.loop !80

.preheader340.i:                                  ; preds = %.split518.us.i, %.preheader341.i
  %i.bnv = phi i32 [ %i.bhk, %.preheader341.i ], [ %i.boe, %.split518.us.i ] ; 2 uses
  %i.bnw = phi i32 [ %i.bhk, %.preheader341.i ], [ %i.bof, %.split518.us.i ] ; 2 uses
  %i.bnx = phi i32 [ %i.bhk, %.preheader341.i ], [ %i.bog, %.split518.us.i ] ; 2 uses
  %indvars.iv588.i = phi i64 [ 0, %.preheader341.i ], [ %indvars.iv.next589.i, %.split518.us.i ] ; 3 uses
  %.sroa.0.9524.i = phi i32 [ %.sroa.0.5.lcssa.i, %.preheader341.i ], [ %.us-phi521.i, %.split518.us.i ] ; 2 uses
  %.sroa.61.9523.i = phi i32 [ %.sroa.61.5.lcssa.i, %.preheader341.i ], [ %.us-phi520.i, %.split518.us.i ] ; 2 uses
  %.sroa.121.9522.i = phi ptr [ %.sroa.121.5.lcssa.i, %.preheader341.i ], [ %.us-phi519.i, %.split518.us.i ] ; 2 uses
  %invariant.gep489.i = getelementptr inbounds nuw [1536 x i8], ptr %i.bhn, i64 %indvars.iv588.i
  %invariant.gep507.i = getelementptr inbounds nuw i8, ptr %i.bhu, i64 %indvars.iv588.i
  %i.bny = icmp sgt i32 %i.bnx, 0
  br i1 %i.bny, label %.preheader.i64, label %.split518.us.i

.preheader.i64:                                   ; preds = %.preheader340.i, %._crit_edge503.i
  %i.bnz = phi i32 [ %i.boh, %._crit_edge503.i ], [ %i.bnv, %.preheader340.i ] ; 3 uses
  %i.boa = phi i32 [ %i.boi, %._crit_edge503.i ], [ %i.bnw, %.preheader340.i ] ; 3 uses
  %indvars.iv585.i = phi i64 [ %indvars.iv.next586.i, %._crit_edge503.i ], [ 0, %.preheader340.i ] ; 3 uses
  %.sroa.0.10514.i = phi i32 [ %.sroa.0.11.lcssa.i, %._crit_edge503.i ], [ %.sroa.0.9524.i, %.preheader340.i ] ; 3 uses
  %.sroa.61.10513.i = phi i32 [ %.sroa.61.11.lcssa.i, %._crit_edge503.i ], [ %.sroa.61.9523.i, %.preheader340.i ] ; 3 uses
  %.sroa.121.10512.i = phi ptr [ %.sroa.121.11.lcssa.i, %._crit_edge503.i ], [ %.sroa.121.9522.i, %.preheader340.i ] ; 3 uses
  %i.bob = icmp sgt i32 %i.boa, 0
  br i1 %i.bob, label %.lr.ph502.i, label %._crit_edge503.i

.lr.ph502.i:                                      ; preds = %.preheader.i64
  %i.boc = load i32, ptr %i.g, align 8, !tbaa !31 ; 3 uses
  %i.bod = icmp sgt i32 %i.boc, 0
  br i1 %i.bod, label %.lr.ph502.split.i.preheader, label %._crit_edge503.i

.lr.ph502.split.i.preheader:                      ; preds = %.lr.ph502.i
  %invariant.gep110 = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep489.i, i64 %indvars.iv585.i
  br label %.lr.ph502.split.i

.split518.us.i:                                   ; preds = %._crit_edge503.i, %.preheader340.i
  %i.boe = phi i32 [ %i.bnv, %.preheader340.i ], [ %i.boh, %._crit_edge503.i ]
  %i.bof = phi i32 [ %i.bnw, %.preheader340.i ], [ %i.boi, %._crit_edge503.i ]
  %i.bog = phi i32 [ %i.bnx, %.preheader340.i ], [ %i.boi, %._crit_edge503.i ]
  %.us-phi519.i = phi ptr [ %.sroa.121.9522.i, %.preheader340.i ], [ %.sroa.121.11.lcssa.i, %._crit_edge503.i ] ; 2 uses
  %.us-phi520.i = phi i32 [ %.sroa.61.9523.i, %.preheader340.i ], [ %.sroa.61.11.lcssa.i, %._crit_edge503.i ] ; 2 uses
  %.us-phi521.i = phi i32 [ %.sroa.0.9524.i, %.preheader340.i ], [ %.sroa.0.11.lcssa.i, %._crit_edge503.i ] ; 2 uses
  %indvars.iv.next589.i = add nuw nsw i64 %indvars.iv588.i, 1 ; 2 uses
  %exitcond591.not.i = icmp eq i64 %indvars.iv.next589.i, 3
  br i1 %exitcond591.not.i, label %encode_subbands.exit98.i, label %.preheader340.i, !llvm.loop !81

._crit_edge503.i:                                 ; preds = %._crit_edge483.i, %.lr.ph502.i, %.preheader.i64
  %i.boh = phi i32 [ %i.bnz, %.preheader.i64 ], [ %i.bnz, %.lr.ph502.i ], [ %i.bot, %._crit_edge483.i ] ; 2 uses
  %i.boi = phi i32 [ %i.boa, %.preheader.i64 ], [ %i.boa, %.lr.ph502.i ], [ %i.bot, %._crit_edge483.i ] ; 3 uses
  %.sroa.121.11.lcssa.i = phi ptr [ %.sroa.121.10512.i, %.preheader.i64 ], [ %.sroa.121.10512.i, %.lr.ph502.i ], [ %.sroa.121.12.lcssa.i, %._crit_edge483.i ] ; 2 uses
  %.sroa.61.11.lcssa.i = phi i32 [ %.sroa.61.10513.i, %.preheader.i64 ], [ %.sroa.61.10513.i, %.lr.ph502.i ], [ %.sroa.61.12.lcssa.i, %._crit_edge483.i ] ; 2 uses
  %.sroa.0.11.lcssa.i = phi i32 [ %.sroa.0.10514.i, %.preheader.i64 ], [ %.sroa.0.10514.i, %.lr.ph502.i ], [ %.sroa.0.12.lcssa.i, %._crit_edge483.i ] ; 2 uses
  %indvars.iv.next586.i = add nuw nsw i64 %indvars.iv585.i, 3
  %i.boj = icmp samesign ult i64 %indvars.iv585.i, 9
  br i1 %i.boj, label %.preheader.i64, label %.split518.us.i, !llvm.loop !82

.lr.ph502.split.i:                                ; preds = %.lr.ph502.split.i.preheader, %._crit_edge483.i
  %i.bok = phi i32 [ %i.bot, %._crit_edge483.i ], [ %i.bnz, %.lr.ph502.split.i.preheader ]
  %i.bol = phi i32 [ %i.bou, %._crit_edge483.i ], [ %i.boc, %.lr.ph502.split.i.preheader ] ; 2 uses
  %i.bom = phi i32 [ %i.bov, %._crit_edge483.i ], [ %i.boc, %.lr.ph502.split.i.preheader ] ; 2 uses
  %indvars.iv582.i = phi i64 [ %indvars.iv.next583.i, %._crit_edge483.i ], [ 0, %.lr.ph502.split.i.preheader ] ; 4 uses
  %.078.i501.i = phi i32 [ %i.box, %._crit_edge483.i ], [ 0, %.lr.ph502.split.i.preheader ] ; 3 uses
  %.sroa.0.11499.i = phi i32 [ %.sroa.0.12.lcssa.i, %._crit_edge483.i ], [ %.sroa.0.10514.i, %.lr.ph502.split.i.preheader ] ; 2 uses
  %.sroa.61.11498.i = phi i32 [ %.sroa.61.12.lcssa.i, %._crit_edge483.i ], [ %.sroa.61.10513.i, %.lr.ph502.split.i.preheader ] ; 2 uses
  %.sroa.121.11497.i = phi ptr [ %.sroa.121.12.lcssa.i, %._crit_edge483.i ], [ %.sroa.121.10512.i, %.lr.ph502.split.i.preheader ] ; 2 uses
  %i.bon = load ptr, ptr %i.auk, align 8, !tbaa !45
  %i.boo = sext i32 %.078.i501.i to i64
  %i.bop = getelementptr inbounds i8, ptr %i.bon, i64 %i.boo
  %i.boq = load i8, ptr %i.bop, align 1, !tbaa !47
  %i.bor = zext nneg i8 %i.boq to i32
  %i.bos = icmp sgt i32 %i.bom, 0
  br i1 %i.bos, label %.lr.ph482.i, label %._crit_edge483.i

.lr.ph482.i:                                      ; preds = %.lr.ph502.split.i
  %invariant.gep487.i = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv582.i
  %gep508.i = getelementptr inbounds nuw [3 x i8], ptr %invariant.gep507.i, i64 %indvars.iv582.i
  %gep111 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep110, i64 %indvars.iv582.i
  br label %bb.ct

._crit_edge483.loopexit.i:                        ; preds = %bb.dr
  %.pre606.i = load i32, ptr %i.aul, align 4, !tbaa !43
  br label %._crit_edge483.i

._crit_edge483.i:                                 ; preds = %._crit_edge483.loopexit.i, %.lr.ph502.split.i
  %i.bot = phi i32 [ %i.bok, %.lr.ph502.split.i ], [ %.pre606.i, %._crit_edge483.loopexit.i ] ; 4 uses
  %i.bou = phi i32 [ %i.bol, %.lr.ph502.split.i ], [ %i.bsn, %._crit_edge483.loopexit.i ]
  %i.bov = phi i32 [ %i.bom, %.lr.ph502.split.i ], [ %i.bsn, %._crit_edge483.loopexit.i ]
  %.sroa.121.12.lcssa.i = phi ptr [ %.sroa.121.11497.i, %.lr.ph502.split.i ], [ %.sroa.121.14.i, %._crit_edge483.loopexit.i ] ; 2 uses
  %.sroa.61.12.lcssa.i = phi i32 [ %.sroa.61.11498.i, %.lr.ph502.split.i ], [ %.sroa.61.14.i, %._crit_edge483.loopexit.i ] ; 2 uses
  %.sroa.0.12.lcssa.i = phi i32 [ %.sroa.0.11499.i, %.lr.ph502.split.i ], [ %.sroa.0.14.i, %._crit_edge483.loopexit.i ] ; 2 uses
  %i.bow = shl nuw i32 1, %i.bor
  %i.box = add nsw i32 %i.bow, %.078.i501.i
  %indvars.iv.next583.i = add nuw nsw i64 %indvars.iv582.i, 1 ; 2 uses
  %i.boy = sext i32 %i.bot to i64
  %i.boz = icmp slt i64 %indvars.iv.next583.i, %i.boy
  br i1 %i.boz, label %.lr.ph502.split.i, label %._crit_edge503.i, !llvm.loop !83

bb.ct:                                            ; preds = %bb.dr, %.lr.ph482.i
  %i.bpa = phi i32 [ %i.bol, %.lr.ph482.i ], [ %i.bsn, %bb.dr ]
  %indvars.iv579.i = phi i64 [ 0, %.lr.ph482.i ], [ %indvars.iv.next580.i, %bb.dr ] ; 4 uses
  %.sroa.0.12479.i = phi i32 [ %.sroa.0.11499.i, %.lr.ph482.i ], [ %.sroa.0.14.i, %bb.dr ] ; 5 uses
  %.sroa.61.12478.i = phi i32 [ %.sroa.61.11498.i, %.lr.ph482.i ], [ %.sroa.61.14.i, %bb.dr ] ; 11 uses
  %.sroa.121.12477.i = phi ptr [ %.sroa.121.11497.i, %.lr.ph482.i ], [ %.sroa.121.14.i, %bb.dr ] ; 11 uses
  %gep488.i = getelementptr inbounds nuw [32 x i8], ptr %invariant.gep487.i, i64 %indvars.iv579.i
  %i.bpb = load i8, ptr %gep488.i, align 1, !tbaa !47 ; 2 uses
  %.not.i.i65 = icmp eq i8 %i.bpb, 0
  br i1 %.not.i.i65, label %bb.dr, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.bpc = zext i8 %i.bpb to i32
  %i.bpd = load ptr, ptr %i.auk, align 8, !tbaa !45
  %i.bpe = add nsw i32 %.078.i501.i, %i.bpc
  %i.bpf = sext i32 %i.bpe to i64
  %i.bpg = getelementptr inbounds i8, ptr %i.bpd, i64 %i.bpf
  %i.bph = load i8, ptr %i.bpg, align 1, !tbaa !47
  %i.bpi = zext i8 %i.bph to i64                  ; 2 uses
  %i.bpj = getelementptr inbounds nuw [4 x i8], ptr @ff_mpa_quant_steps, i64 %i.bpi
  %i.bpk = load i32, ptr %i.bpj, align 4, !tbaa !42 ; 4 uses
  %gep496.i = getelementptr inbounds nuw [96 x i8], ptr %gep508.i, i64 %indvars.iv579.i
  %i.bpl = load i8, ptr %gep496.i, align 1, !tbaa !47
  %i.bpm = zext i8 %i.bpl to i64
  %i.bpn = getelementptr inbounds nuw [4 x i8], ptr %i.bht, i64 %i.bpm
  %i.bpo = load float, ptr %i.bpn, align 4, !tbaa !47 ; 3 uses
  %i.bpp = sitofp nsz i32 %i.bpk to double        ; 3 uses
  %i.bpq = add nsw i32 %i.bpk, -1                 ; 3 uses
  %gep = getelementptr inbounds nuw [4608 x i8], ptr %gep111, i64 %indvars.iv579.i ; 3 uses
  %i.bpr = load i32, ptr %gep, align 4, !tbaa !42
  %i.bps = sitofp nsz i32 %i.bpr to float
  %i.bpt = fmul nsz float %i.bpo, %i.bps
  %i.bpu = fpext nsz float %i.bpt to double
  %i.bpv = fadd nsz double %i.bpu, 1.000000e+00
  %i.bpw = fmul nsz double %i.bpv, %i.bpp
  %i.bpx = fmul nsz double %i.bpw, 5.000000e-01
  %i.bpy = fptosi double %i.bpx to i32
  %spec.select339.i = tail call i32 @llvm.smin.i32(i32 %i.bpy, i32 %i.bpq) ; 4 uses
  %gep475.1.i.a = getelementptr inbounds nuw i8, ptr %gep, i64 128
  %i.bpz = load i32, ptr %gep475.1.i.a, align 4, !tbaa !42
  %4 = sitofp nsz i32 %i.bpz to float
  %5 = fmul nsz float %i.bpo, %4
  %6 = fpext nsz float %5 to double
  %7 = fadd nsz double %6, 1.000000e+00
  %8 = fmul nsz double %7, %i.bpp
  %9 = fmul nsz double %8, 5.000000e-01
  %10 = fptosi double %9 to i32
  %spec.select339.1.i = tail call i32 @llvm.smin.i32(i32 %10, i32 %i.bpq) ; 4 uses
  %gep475.2.i = getelementptr inbounds nuw i8, ptr %gep, i64 256
  %11 = load i32, ptr %gep475.2.i, align 4, !tbaa !42
  %12 = sitofp nsz i32 %11 to float
  %13 = fmul nsz float %i.bpo, %12
  %14 = fpext nsz float %13 to double
  %15 = fadd nsz double %14, 1.000000e+00
  %i.bqa = fmul nsz double %15, %i.bpp
  %i.bqb = fmul nsz double %i.bqa, 5.000000e-01
  %i.bqc = fptosi double %i.bqb to i32
  %spec.select339.2.i = tail call i32 @llvm.smin.i32(i32 %i.bqc, i32 %i.bpq) ; 4 uses
  %i.bqd = getelementptr inbounds nuw [4 x i8], ptr @ff_mpa_quant_bits, i64 %i.bpi
  %i.bqe = load i32, ptr %i.bqd, align 4, !tbaa !42 ; 18 uses
  %i.bqf = sub i32 0, %i.bqe                      ; 3 uses
  %i.bqg = icmp slt i32 %i.bqe, 0
  br i1 %i.bqg, label %bb.cv, label %bb.db

bb.cv:                                            ; preds = %bb.cu
  %i.bqh = mul nsw i32 %spec.select339.2.i, %i.bpk
  %i.bqi = add nsw i32 %i.bqh, %spec.select339.1.i
  %i.bqj = mul nsw i32 %i.bqi, %i.bpk
  %i.bqk = add nsw i32 %i.bqj, %spec.select339.i  ; 3 uses
  %i.bql = icmp sgt i32 %.sroa.61.12478.i, %i.bqf
  br i1 %i.bql, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.bqm = shl i32 %.sroa.0.12479.i, %i.bqf
  %i.bqn = or i32 %i.bqk, %i.bqm
  %i.bqo = add nsw i32 %i.bqe, %.sroa.61.12478.i
  br label %put_bits.exit186.i

bb.cx:                                            ; preds = %bb.cv
  %i.bqp = ptrtoint ptr %.sroa.121.12477.i to i64
  %i.bqq = sub i64 %i.bhv, %i.bqp
  %i.bqr = icmp ugt i64 %i.bqq, 3
  br i1 %i.bqr, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.bqs = shl i32 %.sroa.0.12479.i, %.sroa.61.12478.i
  %i.bqt = sub nsw i32 %i.bqf, %.sroa.61.12478.i
  %i.bqu = lshr i32 %i.bqk, %i.bqt
  %i.bqv = or i32 %i.bqu, %i.bqs
  %i.bqw = tail call i32 @llvm.bswap.i32(i32 %i.bqv)
  store i32 %i.bqw, ptr %.sroa.121.12477.i, align 1, !tbaa !47
  %i.bqx = getelementptr inbounds nuw i8, ptr %.sroa.121.12477.i, i64 4
  br label %bb.da

bb.cz:                                            ; preds = %bb.cx
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #10
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.sroa.121.65.i = phi ptr [ %i.bqx, %bb.cy ], [ %.sroa.121.12477.i, %bb.cz ]
  %reass.sub.i183.i = add i32 %.sroa.61.12478.i, 32
  %i.bqy = add i32 %reass.sub.i183.i, %i.bqe
  br label %put_bits.exit186.i

bb.db:                                            ; preds = %bb.cu
  %i.bqz = icmp slt i32 %i.bqe, %.sroa.61.12478.i
  br i1 %i.bqz, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.bra = shl i32 %.sroa.0.12479.i, %i.bqe
  %i.brb = or i32 %spec.select339.i, %i.bra
  br label %put_bits.exit190.i

bb.dd:                                            ; preds = %bb.db
  %i.brc = ptrtoint ptr %.sroa.121.12477.i to i64
  %i.brd = sub i64 %i.bhv, %i.brc
  %i.bre = icmp ugt i64 %i.brd, 3
  br i1 %i.bre, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.brf = shl i32 %.sroa.0.12479.i, %.sroa.61.12478.i
  %i.brg = sub nsw i32 %i.bqe, %.sroa.61.12478.i
  %i.brh = lshr i32 %spec.select339.i, %i.brg
  %i.bri = or i32 %i.brh, %i.brf
  %i.brj = tail call i32 @llvm.bswap.i32(i32 %i.bri)
  store i32 %i.brj, ptr %.sroa.121.12477.i, align 1, !tbaa !47
  %i.brk = getelementptr inbounds nuw i8, ptr %.sroa.121.12477.i, i64 4
  br label %bb.dg

bb.df:                                            ; preds = %bb.dd
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #10
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.sroa.121.67.i = phi ptr [ %i.brk, %bb.de ], [ %.sroa.121.12477.i, %bb.df ]
  %reass.sub.i187.i = add i32 %.sroa.61.12478.i, 32
  br label %put_bits.exit190.i

put_bits.exit190.i:                               ; preds = %bb.dg, %bb.dc
  %.sroa.121.68.i = phi ptr [ %.sroa.121.12477.i, %bb.dc ], [ %.sroa.121.67.i, %bb.dg ] ; 5 uses
  %.026.i.i188.i = phi i32 [ %i.brb, %bb.dc ], [ %spec.select339.i, %bb.dg ] ; 2 uses
  %.sroa.61.12478.pn.i = phi i32 [ %.sroa.61.12478.i, %bb.dc ], [ %reass.sub.i187.i, %bb.dg ]
  %.0.i.i189.i = sub i32 %.sroa.61.12478.pn.i, %i.bqe ; 5 uses
  %i.brl = icmp slt i32 %i.bqe, %.0.i.i189.i
  br i1 %i.brl, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %put_bits.exit190.i
  %i.brm = shl i32 %.026.i.i188.i, %i.bqe
  %i.brn = or i32 %i.brm, %spec.select339.1.i
  %i.bro = sub nuw nsw i32 %.0.i.i189.i, %i.bqe
  br label %put_bits.exit194.i

bb.di:                                            ; preds = %put_bits.exit190.i
  %i.brp = ptrtoint ptr %.sroa.121.68.i to i64
  %i.brq = sub i64 %i.bhv, %i.brp
  %i.brr = icmp ugt i64 %i.brq, 3
  br i1 %i.brr, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.brs = shl i32 %.026.i.i188.i, %.0.i.i189.i
  %i.brt = sub nsw i32 %i.bqe, %.0.i.i189.i
  %i.bru = lshr i32 %spec.select339.1.i, %i.brt
  %i.brv = or i32 %i.bru, %i.brs
  %i.brw = tail call i32 @llvm.bswap.i32(i32 %i.brv)
  store i32 %i.brw, ptr %.sroa.121.68.i, align 1, !tbaa !47
  %i.brx = getelementptr inbounds nuw i8, ptr %.sroa.121.68.i, i64 4
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #10
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.sroa.121.69.i = phi ptr [ %i.brx, %bb.dj ], [ %.sroa.121.68.i, %bb.dk ]
  %reass.sub114 = sub i32 %.0.i.i189.i, %i.bqe
  %i.bry = add i32 %reass.sub114, 32
  br label %put_bits.exit194.i

put_bits.exit194.i:                               ; preds = %bb.dl, %bb.dh
  %.sroa.121.70.i = phi ptr [ %.sroa.121.68.i, %bb.dh ], [ %.sroa.121.69.i, %bb.dl ] ; 5 uses
  %.026.i.i192.i = phi i32 [ %i.brn, %bb.dh ], [ %spec.select339.1.i, %bb.dl ] ; 2 uses
  %.0.i.i193.i = phi i32 [ %i.bro, %bb.dh ], [ %i.bry, %bb.dl ] ; 5 uses
  %i.brz = icmp slt i32 %i.bqe, %.0.i.i193.i
  br i1 %i.brz, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %put_bits.exit194.i
  %i.bsa = shl i32 %.026.i.i192.i, %i.bqe
  %i.bsb = or i32 %i.bsa, %spec.select339.2.i
  %i.bsc = sub nuw nsw i32 %.0.i.i193.i, %i.bqe
  br label %put_bits.exit186.i

bb.dn:                                            ; preds = %put_bits.exit194.i
  %i.bsd = ptrtoint ptr %.sroa.121.70.i to i64
  %i.bse = sub i64 %i.bhv, %i.bsd
  %i.bsf = icmp ugt i64 %i.bse, 3
  br i1 %i.bsf, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.bsg = shl i32 %.026.i.i192.i, %.0.i.i193.i
  %i.bsh = sub nsw i32 %i.bqe, %.0.i.i193.i
  %i.bsi = lshr i32 %spec.select339.2.i, %i.bsh
  %i.bsj = or i32 %i.bsi, %i.bsg
  %i.bsk = tail call i32 @llvm.bswap.i32(i32 %i.bsj)
  store i32 %i.bsk, ptr %.sroa.121.70.i, align 1, !tbaa !47
  %i.bsl = getelementptr inbounds nuw i8, ptr %.sroa.121.70.i, i64 4
  br label %bb.dq

bb.dp:                                            ; preds = %bb.dn
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.15) #10
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.do
  %.sroa.121.71.i = phi ptr [ %i.bsl, %bb.do ], [ %.sroa.121.70.i, %bb.dp ]
  %reass.sub115 = sub i32 %.0.i.i193.i, %i.bqe
  %i.bsm = add i32 %reass.sub115, 32
  br label %put_bits.exit186.i

put_bits.exit186.i:                               ; preds = %bb.dq, %bb.dm, %bb.da, %bb.cw
  %.sroa.121.13.i = phi ptr [ %.sroa.121.65.i, %bb.da ], [ %.sroa.121.12477.i, %bb.cw ], [ %.sroa.121.70.i, %bb.dm ], [ %.sroa.121.71.i, %bb.dq ]
  %.sroa.61.13.i = phi i32 [ %i.bqy, %bb.da ], [ %i.bqo, %bb.cw ], [ %i.bsc, %bb.dm ], [ %i.bsm, %bb.dq ]
  %.sroa.0.13.i = phi i32 [ %i.bqk, %bb.da ], [ %i.bqn, %bb.cw ], [ %i.bsb, %bb.dm ], [ %spec.select339.2.i, %bb.dq ]
  %.pre605.i = load i32, ptr %i.g, align 8, !tbaa !31
  br label %bb.dr

bb.dr:                                            ; preds = %put_bits.exit186.i, %bb.ct
  %i.bsn = phi i32 [ %i.bpa, %bb.ct ], [ %.pre605.i, %put_bits.exit186.i ] ; 4 uses
  %.sroa.121.14.i = phi ptr [ %.sroa.121.12477.i, %bb.ct ], [ %.sroa.121.13.i, %put_bits.exit186.i ] ; 2 uses
  %.sroa.61.14.i = phi i32 [ %.sroa.61.12478.i, %bb.ct ], [ %.sroa.61.13.i, %put_bits.exit186.i ] ; 2 uses
  %.sroa.0.14.i = phi i32 [ %.sroa.0.12479.i, %bb.ct ], [ %.sroa.0.13.i, %put_bits.exit186.i ] ; 2 uses
  %indvars.iv.next580.i = add nuw nsw i64 %indvars.iv579.i, 1 ; 2 uses
  %i.bso = sext i32 %i.bsn to i64
  %i.bsp = icmp slt i64 %indvars.iv.next580.i, %i.bso
  br i1 %i.bsp, label %bb.ct, label %._crit_edge483.loopexit.i, !llvm.loop !80

encode_subbands.exit98.i:                         ; preds = %.split463.us.i, %.split518.us.i, %.preheader344.i
  %.sroa.121.8.i = phi ptr [ %.sroa.121.5.lcssa.i, %.preheader344.i ], [ %.us-phi519.i, %.split518.us.i ], [ %.us-phi464.i, %.split463.us.i ] ; 2 uses
  %.sroa.61.8.i = phi i32 [ %.sroa.61.5.lcssa.i, %.preheader344.i ], [ %.us-phi520.i, %.split518.us.i ], [ %.us-phi465.i, %.split463.us.i ] ; 3 uses
  %.sroa.0.8.i = phi i32 [ %.sroa.0.5.lcssa.i, %.preheader344.i ], [ %.us-phi521.i, %.split518.us.i ], [ %.us-phi466.i, %.split463.us.i ]
  %i.bsq = icmp slt i32 %.sroa.61.8.i, 32
  br i1 %i.bsq, label %.lr.ph.i.i, label %flush_put_bits.exit.i

.lr.ph.i.i:                                       ; preds = %encode_subbands.exit98.i
  %i.bsr = shl i32 %.sroa.0.8.i, %.sroa.61.8.i
  br label %bb.ds

bb.ds:                                            ; preds = %bb.du, %.lr.ph.i.i
  %.sroa.121.73.i = phi ptr [ %.sroa.121.8.i, %.lr.ph.i.i ], [ %i.bsv, %bb.du ] ; 3 uses
  %.sroa.61.21.i = phi i32 [ %.sroa.61.8.i, %.lr.ph.i.i ], [ %i.bsx, %bb.du ] ; 2 uses
  %.sroa.0.21.i = phi i32 [ %i.bsr, %.lr.ph.i.i ], [ %i.bsw, %bb.du ] ; 2 uses
  %i.bss = icmp ult ptr %.sroa.121.73.i, %i.bas
  br i1 %i.bss, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 160) #10
  tail call void @abort() #11
end_hunk_0
