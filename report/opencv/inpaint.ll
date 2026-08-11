inline.NumInlined: 1195
inline.NumDeleted: 203
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit779.i: ; preds = %bb.mt, %bb.ms, %bb.mq, %bb.mp, %bb.mo
  %.0.i778.i = phi double [ %i.bmb, %bb.mo ], [ %i.bmh, %bb.mp ], [ %i.bmi, %bb.mq ], [ %i.bmj, %bb.ms ], [ %i.bmk, %bb.mt ]
  %i.bml = fptrunc double %.0.i778.i to float     ; 2 uses
  %i.bmm = fcmp ogt float %i.bjw, %i.bkv
  %i.bmn = select i1 %i.bmm, float %i.bkv, float %i.bjw ; 2 uses
  %i.bmo = fcmp ogt float %i.blu, %i.bml
  %i.bmp = select i1 %i.bmo, float %i.bml, float %i.blu ; 2 uses
  %i.bmq = fcmp ogt float %i.bmn, %i.bmp
  %i.bmr = select i1 %i.bmq, float %i.bmp, float %i.bmn ; 2 uses
  %i.bms = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i735.i, i64 %i.bih
  store float %i.bmr, ptr %i.bms, align 4, !tbaa !92
  %i.bmt = sub nsw i32 %.5.fr.i, %i.dp
  %i.bmu = add nuw nsw i32 %.5.fr.i, %i.dp
  %i.bmv = sub nsw i32 %.5520.i, %i.dp
  %i.bmw = add nuw nsw i32 %.5520.i, %i.dp
  %i.bmx = load i64, ptr %i.afr, align 8          ; 6 uses
  %i.bmy = mul i64 %i.bmx, %i.bif
  %.sink.idx.i782.i = select i1 %i.bic, i64 0, i64 %i.bmy
  %.sink.i783.i = getelementptr inbounds nuw i8, ptr %i.bid, i64 %.sink.idx.i782.i ; 2 uses
  %i.bmz = getelementptr inbounds nuw i8, ptr %.sink.i783.i, i64 %i.bkx
  %i.bna = load i8, ptr %i.bmz, align 1, !tbaa !26
  %.not546.i = icmp eq i8 %i.bna, 2
  %i.bnb = getelementptr inbounds nuw i8, ptr %.sink.i783.i, i64 %i.bix
  %i.bnc = load i8, ptr %i.bnb, align 1, !tbaa !26
  %.not547.i = icmp eq i8 %i.bnc, 2               ; 2 uses
  br i1 %.not546.i, label %bb.mx, label %bb.mu

bb.mu:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit779.i
  %i.bnd = load i64, ptr %i.afw, align 8
  %i.bne = mul i64 %i.bnd, %i.bif
  %.sink.idx.i790.i = select i1 %i.bio, i64 0, i64 %i.bne
  %.sink.i791.i = getelementptr inbounds nuw i8, ptr %i.bip, i64 %.sink.idx.i790.i ; 3 uses
  %i.bnf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i791.i, i64 %i.bkx
  %i.bng = load float, ptr %i.bnf, align 4, !tbaa !92 ; 2 uses
  br i1 %.not547.i, label %bb.mw, label %bb.mv

bb.mv:                                            ; preds = %bb.mu
  %i.bnh = getelementptr inbounds nuw [4 x i8], ptr %.sink.i791.i, i64 %i.bix
  %i.bni = load float, ptr %i.bnh, align 4, !tbaa !92
  %i.bnj = fsub float %i.bng, %i.bni
  %i.bnk = fmul float %i.bnj, 5.000000e-01
  br label %bb.mz

bb.mw:                                            ; preds = %bb.mu
  %i.bnl = getelementptr inbounds nuw [4 x i8], ptr %.sink.i791.i, i64 %i.bih
  %i.bnm = load float, ptr %i.bnl, align 4, !tbaa !92
  %i.bnn = fsub float %i.bng, %i.bnm
  br label %bb.mz

bb.mx:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit779.i
  br i1 %.not547.i, label %bb.mz, label %bb.my

bb.my:                                            ; preds = %bb.mx
  %i.bno = load i64, ptr %i.afw, align 8
  %i.bnp = mul i64 %i.bno, %i.bif
  %.sink.idx.i796.i = select i1 %i.bio, i64 0, i64 %i.bnp
  %.sink.i797.i = getelementptr inbounds nuw i8, ptr %i.bip, i64 %.sink.idx.i796.i ; 2 uses
  %i.bnq = getelementptr inbounds nuw [4 x i8], ptr %.sink.i797.i, i64 %i.bih
  %i.bnr = load float, ptr %i.bnq, align 4, !tbaa !92
  %i.bns = getelementptr inbounds nuw [4 x i8], ptr %.sink.i797.i, i64 %i.bix
  %i.bnt = load float, ptr %i.bns, align 4, !tbaa !92
  %i.bnu = fsub float %i.bnr, %i.bnt
  br label %bb.mz

bb.mz:                                            ; preds = %bb.my, %bb.mx, %bb.mw, %bb.mv
  %.sroa.0866.0.i = phi float [ %i.bnk, %bb.mv ], [ %i.bnu, %bb.my ], [ %i.bnn, %bb.mw ], [ 0.000000e+00, %bb.mx ]
  %i.bnv = mul i64 %i.bmx, %i.bjy
  %.sink.idx.i800.i = select i1 %i.bic, i64 0, i64 %i.bnv
  %.sink.i801.i = getelementptr inbounds nuw i8, ptr %i.bid, i64 %.sink.idx.i800.i
  %i.bnw = getelementptr inbounds nuw i8, ptr %.sink.i801.i, i64 %i.bih
  %i.bnx = load i8, ptr %i.bnw, align 1, !tbaa !26
  %.not549.i = icmp eq i8 %i.bnx, 2
  %i.bny = mul i64 %i.bmx, %i.bir
  %.sink.idx.i812.i = select i1 %i.bic, i64 0, i64 %i.bny
  %.sink.i813.i = getelementptr inbounds nuw i8, ptr %i.bid, i64 %.sink.idx.i812.i
  %i.bnz = getelementptr inbounds nuw i8, ptr %.sink.i813.i, i64 %i.bih
  %i.boa = load i8, ptr %i.bnz, align 1, !tbaa !26
  %.not550.i = icmp eq i8 %i.boa, 2               ; 2 uses
  %.pre1979 = load i64, ptr %i.afw, align 8       ; 7 uses
  br i1 %.not549.i, label %bb.nd, label %bb.na

bb.na:                                            ; preds = %bb.mz
  %i.bob = mul i64 %.pre1979, %i.bjy
  %.sink.idx.i808.i = select i1 %i.bio, i64 0, i64 %i.bob
  %.sink.i809.i = getelementptr inbounds nuw i8, ptr %i.bip, i64 %.sink.idx.i808.i
  %i.boc = getelementptr inbounds nuw [4 x i8], ptr %.sink.i809.i, i64 %i.bih
  %i.bod = load float, ptr %i.boc, align 4, !tbaa !92 ; 2 uses
  br i1 %.not550.i, label %bb.nc, label %bb.nb

bb.nb:                                            ; preds = %bb.na
  %i.boe = mul i64 %.pre1979, %i.bir
  %.sink.idx.i806.i = select i1 %i.bio, i64 0, i64 %i.boe
  %.sink.i807.i = getelementptr inbounds nuw i8, ptr %i.bip, i64 %.sink.idx.i806.i
  %i.bof = getelementptr inbounds nuw [4 x i8], ptr %.sink.i807.i, i64 %i.bih
  %i.bog = load float, ptr %i.bof, align 4, !tbaa !92
  %i.boh = fsub float %i.bod, %i.bog
  %i.boi = fmul float %i.boh, 5.000000e-01
  br label %bb.nf

bb.nc:                                            ; preds = %bb.na
  %i.boj = mul i64 %.pre1979, %i.bif
  %.sink.idx.i810.i = select i1 %i.bio, i64 0, i64 %i.boj
  %.sink.i811.i = getelementptr inbounds nuw i8, ptr %i.bip, i64 %.sink.idx.i810.i
  %i.bok = getelementptr inbounds nuw [4 x i8], ptr %.sink.i811.i, i64 %i.bih
  %i.bol = load float, ptr %i.bok, align 4, !tbaa !92
  %i.bom = fsub float %i.bod, %i.bol
  br label %bb.nf

bb.nd:                                            ; preds = %bb.mz
  br i1 %.not550.i, label %bb.nf, label %bb.ne

bb.ne:                                            ; preds = %bb.nd
  %i.bon = mul i64 %.pre1979, %i.bif
  %.sink.idx.i814.i = select i1 %i.bio, i64 0, i64 %i.bon
  %.sink.i815.i = getelementptr inbounds nuw i8, ptr %i.bip, i64 %.sink.idx.i814.i
  %i.boo = getelementptr inbounds nuw [4 x i8], ptr %.sink.i815.i, i64 %i.bih
  %i.bop = load float, ptr %i.boo, align 4, !tbaa !92
  %i.boq = mul i64 %.pre1979, %i.bir
  %.sink.idx.i816.i = select i1 %i.bio, i64 0, i64 %i.boq
  %.sink.i817.i = getelementptr inbounds nuw i8, ptr %i.bip, i64 %.sink.idx.i816.i
  %i.bor = getelementptr inbounds nuw [4 x i8], ptr %.sink.i817.i, i64 %i.bih
  %i.bos = load float, ptr %i.bor, align 4, !tbaa !92
  %i.bot = fsub float %i.bop, %i.bos
  br label %bb.nf

bb.nf:                                            ; preds = %bb.ne, %bb.nd, %bb.nc, %bb.nb
  %.sroa.8867.0.i = phi float [ %i.boi, %bb.nb ], [ %i.bot, %bb.ne ], [ %i.bom, %bb.nc ], [ 0.000000e+00, %bb.nd ]
  %i.bou = add nsw i32 %i.bhz, -2
  %i.bov = add nsw i32 %i.bhz, -1
  %i.bow = add nsw i32 %i.bia, -2
  %i.box = add nsw i32 %i.bia, -1
  %invariant.gep1088.i = getelementptr [4 x i8], ptr %i.bip, i64 %i.bih
  %i.boy = mul i64 %.pre1979, %i.bif
  %.sink.idx.i822.i = select i1 %i.bio, i64 0, i64 %i.boy
  %gep1089.i = getelementptr i8, ptr %invariant.gep1088.i, i64 %.sink.idx.i822.i
  br label %.lr.ph.i343

.lr.ph.i343:                                      ; preds = %._crit_edge.i344, %bb.nf
  %.1522961.i = phi i32 [ %i.bmt, %bb.nf ], [ %i.bps, %._crit_edge.i344 ] ; 10 uses
  %.0533960.i = phi float [ f0x1E3CE508, %bb.nf ], [ %.us-phi935.i, %._crit_edge.i344 ] ; 3 uses
  %.0542957.i = phi float [ 0.000000e+00, %bb.nf ], [ %.us-phi.i, %._crit_edge.i344 ] ; 3 uses
  %i.boz = phi <2 x float> [ zeroinitializer, %bb.nf ], [ %i.bvo, %._crit_edge.i344 ] ; 3 uses
  %i.bpa = add nsw i32 %.1522961.i, -1            ; 3 uses
  %i.bpb = icmp eq i32 %.1522961.i, 1
  %i.bpc = zext i1 %i.bpb to i32
  %i.bpd = add nsw i32 %i.bpa, %i.bpc             ; 2 uses
  %i.bpe = icmp eq i32 %.1522961.i, %i.bou
  %.neg.i = sext i1 %i.bpe to i32                 ; 2 uses
  %i.bpf = add nsw i32 %i.bpa, %.neg.i
  %i.bpg = icmp sgt i32 %.1522961.i, 0
  %i.bph = zext nneg i32 %.1522961.i to i64       ; 2 uses
  %i.bpi = mul i64 %i.bmx, %i.bph
  %.sink.idx.i818.i = select i1 %i.bic, i64 0, i64 %i.bpi
  %.sink.i819.i = getelementptr inbounds nuw i8, ptr %i.bid, i64 %.sink.idx.i818.i ; 2 uses
  %i.bpj = sub nsw i32 %.1522961.i, %.5.fr.i      ; 2 uses
  %i.bpk = mul nsw i32 %i.bpj, %i.bpj
  %i.bpl = sub nsw i32 %.5.fr.i, %.1522961.i
  %i.bpm = sitofp i32 %i.bpl to float             ; 2 uses
  %i.bpn = insertelement <2 x float> poison, float %i.bpm, i64 0 ; 2 uses
  %i.bpo = insertelement <2 x float> %i.bpn, float %.sroa.8867.0.i, i64 1
  %i.bpp = shufflevector <2 x float> %i.bpn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bpq = fmul <2 x float> %i.bpo, %i.bpp
  %i.bpr = sext i32 %i.bpd to i64                 ; 3 uses
  %i.bps = add i32 %.1522961.i, 1                 ; 3 uses
  %i.bpt = zext nneg i32 %i.bps to i64
  %i.bpu = mul i64 %i.bmx, %i.bpt
  %.sink.idx.i842.i = select i1 %i.bic, i64 0, i64 %i.bpu
  %.sink.i843.i = getelementptr inbounds nuw i8, ptr %i.bid, i64 %.sink.idx.i842.i
  %i.bpv = zext nneg i32 %i.bpa to i64            ; 2 uses
  %i.bpw = mul i64 %i.bmx, %i.bpv
  %.sink.idx.i844.i = select i1 %i.bic, i64 0, i64 %i.bpw
  %.sink.i845.i = getelementptr inbounds nuw i8, ptr %i.bid, i64 %.sink.idx.i844.i
  %i.bpx = add i32 %.1522961.i, %.neg.i
  %i.bpy = sext i32 %i.bpx to i64
  %i.bpz = add nsw i32 %i.bpd, -1
  %i.bqa = sext i32 %i.bpz to i64                 ; 2 uses
  %i.bqb = sext i32 %i.bpf to i64
  br i1 %i.bpg, label %.lr.ph.split.i, label %._crit_edge.i344

.lr.ph.split.i:                                   ; preds = %.lr.ph.i343
  %i.bqc = icmp slt i32 %.1522961.i, %i.bov
  %.fr955.i = freeze i1 %i.bqc
  br i1 %.fr955.i, label %.lr.ph.split.split.i.preheader, label %._crit_edge.i344

.lr.ph.split.split.i.preheader:                   ; preds = %.lr.ph.split.i
  %i.bqd = mul i64 %.pre1979, %i.bph
  %.sink.idx.i820.i = select i1 %i.bio, i64 0, i64 %i.bqd
  %.sink.i821.i = getelementptr inbounds nuw i8, ptr %i.bip, i64 %.sink.idx.i820.i
  %i.bqe = insertelement <2 x float> poison, float %i.bpm, i64 1
  br label %.lr.ph.split.split.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.split.i.preheader, %bb.nv
  %.1524928.i = phi i32 [ %i.bvn, %bb.nv ], [ %i.bmv, %.lr.ph.split.split.i.preheader ] ; 11 uses
  %.1534927.i = phi float [ %.2535.i, %bb.nv ], [ %.0533960.i, %.lr.ph.split.split.i.preheader ] ; 4 uses
  %.1543924.i = phi float [ %.2544.i, %bb.nv ], [ %.0542957.i, %.lr.ph.split.split.i.preheader ] ; 4 uses
  %i.bqf = phi <2 x float> [ %i.bvm, %bb.nv ], [ %i.boz, %.lr.ph.split.split.i.preheader ] ; 4 uses
  %i.bqg = add nsw i32 %.1524928.i, -1            ; 3 uses
  %i.bqh = icmp eq i32 %.1524928.i, 1
  %i.bqi = zext i1 %i.bqh to i32
  %i.bqj = add nuw nsw i32 %i.bqg, %i.bqi         ; 4 uses
  %i.bqk = icmp eq i32 %.1524928.i, %i.bow
  %.neg554.i = sext i1 %i.bqk to i32              ; 2 uses
  %i.bql = add nsw i32 %i.bqg, %.neg554.i
  %i.bqm = icmp sgt i32 %.1524928.i, 0
  %i.bqn = icmp slt i32 %.1524928.i, %i.box
  %or.cond1017.i = select i1 %i.bqm, i1 %i.bqn, i1 false
  br i1 %or.cond1017.i, label %bb.ng, label %bb.nv

bb.ng:                                            ; preds = %.lr.ph.split.split.i
  %i.bqo = zext nneg i32 %.1524928.i to i64       ; 4 uses
  %i.bqp = getelementptr inbounds nuw i8, ptr %.sink.i819.i, i64 %i.bqo ; 2 uses
  %i.bqq = load i8, ptr %i.bqp, align 1, !tbaa !26
  %.not555.i = icmp eq i8 %i.bqq, 2
  br i1 %.not555.i, label %bb.nv, label %bb.nh

bb.nh:                                            ; preds = %bb.ng
  %i.bqr = sub nsw i32 %.1524928.i, %.5520.i      ; 2 uses
  %i.bqs = mul nsw i32 %i.bqr, %i.bqr
  %i.bqt = add nuw nsw i32 %i.bqs, %i.bpk
  %.not556.i = icmp samesign ugt i32 %i.bqt, %i.afx
  br i1 %.not556.i, label %bb.nv, label %bb.ni

bb.ni:                                            ; preds = %bb.nh
  %i.bqu = sub nsw i32 %.5520.i, %.1524928.i
  %i.bqv = sitofp i32 %i.bqu to float             ; 2 uses
  %i.bqw = getelementptr inbounds nuw [4 x i8], ptr %.sink.i821.i, i64 %i.bqo
  %i.bqx = load float, ptr %i.bqw, align 4, !tbaa !92
  %i.bqy = load float, ptr %gep1089.i, align 4, !tbaa !92
  %i.bqz = fsub float %i.bqx, %i.bqy
  %i.bra = insertelement <2 x float> poison, float %i.bqv, i64 0
  %i.brb = shufflevector <2 x float> %i.bra, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.brc = insertelement <2 x float> %i.brb, float %.sroa.0866.0.i, i64 1
  %i.brd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.brb, <2 x float> %i.brc, <2 x float> %i.bpq) ; 3 uses
  %i.bre = extractelement <2 x float> %i.brd, i64 0 ; 2 uses
  %sqrt914.i = call nnan float @llvm.sqrt.f32(float %i.bre)
  %i.brf = fmul float %i.bre, %sqrt914.i
  %i.brg = fdiv float 1.000000e+00, %i.brf
  %i.brh = extractelement <2 x float> %i.brd, i64 1
  %i.bri = insertelement <2 x float> %i.brd, float %i.bqz, i64 0
  %i.brj = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bri)
  %i.brk = fpext <2 x float> %i.brj to <2 x double> ; 2 uses
  %i.brl = extractelement <2 x double> %i.brk, i64 0
  %i.brm = fadd double %i.brl, 1.000000e+00
  %i.brn = fdiv double 1.000000e+00, %i.brm
  %i.bro = fptrunc double %i.brn to float
  %i.brp = extractelement <2 x double> %i.brk, i64 1
  %i.brq = fcmp ugt double %i.brp, 1.000000e-02
  %.0527.i = select i1 %i.brq, float %i.brh, float f0x358637BD
  %i.brr = fmul float %i.brg, %i.bro
  %i.brs = fmul float %.0527.i, %i.brr
  %i.brt = call float @llvm.fabs.f32(float %i.brs) ; 3 uses
  %i.bru = getelementptr inbounds nuw i8, ptr %i.bqp, i64 1
  %i.brv = load i8, ptr %i.bru, align 1, !tbaa !26
  %.not557.i = icmp eq i8 %i.brv, 2
  %i.brw = zext nneg i32 %i.bqg to i64            ; 2 uses
  %i.brx = getelementptr inbounds nuw i8, ptr %.sink.i819.i, i64 %i.brw
  %i.bry = load i8, ptr %i.brx, align 1, !tbaa !26
  %.not558.i = icmp eq i8 %i.bry, 2               ; 2 uses
  br i1 %.not557.i, label %bb.nm, label %bb.nj

bb.nj:                                            ; preds = %bb.ni
  %i.brz = add nsw i32 %.1524928.i, %.neg554.i
  %i.bsa = load i32, ptr %i.afy, align 4, !tbaa !42 ; 3 uses
  %i.bsb = icmp slt i32 %i.bsa, 2
  %i.bsc = load ptr, ptr %i.afz, align 8, !tbaa !43
  %i.bsd = load i64, ptr %i.aga, align 8
  %i.bse = mul i64 %i.bsd, %i.bpr
  %.sink.idx.i832.i = select i1 %i.bsb, i64 0, i64 %i.bse
  %.sink.i833.i = getelementptr inbounds nuw i8, ptr %i.bsc, i64 %.sink.idx.i832.i ; 2 uses
  %i.bsf = zext nneg i32 %i.brz to i64
  %i.bsg = getelementptr inbounds nuw i8, ptr %.sink.i833.i, i64 %i.bsf
  %i.bsh = load i8, ptr %i.bsg, align 1, !tbaa !26
  %i.bsi = zext i8 %i.bsh to i32                  ; 2 uses
  %i.bsj = sext i32 %i.bqj to i64
  %i.bsk = getelementptr i8, ptr %.sink.i833.i, i64 %i.bsj ; 2 uses
  br i1 %.not558.i, label %bb.nl, label %bb.nk

bb.nk:                                            ; preds = %bb.nj
  %i.bsl = getelementptr i8, ptr %i.bsk, i64 -1
  %i.bsm = load i8, ptr %i.bsl, align 1, !tbaa !26
  %i.bsn = zext i8 %i.bsm to i32
  %i.bso = sub nsw i32 %i.bsi, %i.bsn
  %i.bsp = sitofp i32 %i.bso to float
  %i.bsq = fmul nnan float %i.bsp, 2.000000e+00
  br label %bb.no

bb.nl:                                            ; preds = %bb.nj
  %i.bsr = load i8, ptr %i.bsk, align 1, !tbaa !26
  %i.bss = zext i8 %i.bsr to i32
  %i.bst = sub nsw i32 %i.bsi, %i.bss
  %i.bsu = sitofp i32 %i.bst to float
  br label %bb.no

bb.nm:                                            ; preds = %bb.ni
  %.pre1057.i.pre = load i32, ptr %i.afy, align 4, !tbaa !42 ; 3 uses
  br i1 %.not558.i, label %bb.no, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %i.bsv = icmp slt i32 %.pre1057.i.pre, 2
  %i.bsw = load ptr, ptr %i.afz, align 8, !tbaa !43
  %i.bsx = load i64, ptr %i.aga, align 8
  %i.bsy = mul i64 %i.bsx, %i.bpr
  %.sink.idx.i838.i = select i1 %i.bsv, i64 0, i64 %i.bsy
  %.sink.i839.i = getelementptr inbounds nuw i8, ptr %i.bsw, i64 %.sink.idx.i838.i ; 2 uses
  %i.bsz = sext i32 %i.bql to i64
  %i.bta = getelementptr inbounds i8, ptr %.sink.i839.i, i64 %i.bsz
  %i.btb = load i8, ptr %i.bta, align 1, !tbaa !26
  %i.btc = zext i8 %i.btb to i32
  %i.btd = sext i32 %i.bqj to i64
  %i.bte = getelementptr i8, ptr %.sink.i839.i, i64 %i.btd
  %i.btf = getelementptr i8, ptr %i.bte, i64 -1
  %i.btg = load i8, ptr %i.btf, align 1, !tbaa !26
  %i.bth = zext i8 %i.btg to i32
  %i.bti = sub nsw i32 %i.btc, %i.bth
  %i.btj = sitofp i32 %i.bti to float
  br label %bb.no

bb.no:                                            ; preds = %bb.nn, %bb.nm, %bb.nl, %bb.nk
  %.pre1057.i = phi i32 [ %i.bsa, %bb.nk ], [ %.pre1057.i.pre, %bb.nn ], [ %i.bsa, %bb.nl ], [ %.pre1057.i.pre, %bb.nm ] ; 3 uses
  %.sroa.0868.0.i = phi float [ %i.bsq, %bb.nk ], [ %i.btj, %bb.nn ], [ %i.bsu, %bb.nl ], [ 0.000000e+00, %bb.nm ]
  %i.btk = getelementptr inbounds nuw i8, ptr %.sink.i843.i, i64 %i.bqo
  %i.btl = load i8, ptr %i.btk, align 1, !tbaa !26
  %.not560.i = icmp eq i8 %i.btl, 2
  %i.btm = getelementptr inbounds nuw i8, ptr %.sink.i845.i, i64 %i.bqo
  %i.btn = load i8, ptr %i.btm, align 1, !tbaa !26
  %.not561.i = icmp eq i8 %i.btn, 2               ; 2 uses
  br i1 %.not560.i, label %bb.ns, label %bb.np

bb.np:                                            ; preds = %bb.no
  %i.bto = icmp slt i32 %.pre1057.i, 2            ; 3 uses
  %i.btp = load ptr, ptr %i.afz, align 8, !tbaa !43 ; 5 uses
  %i.btq = load i64, ptr %i.aga, align 8          ; 5 uses
  %i.btr = mul i64 %i.btq, %i.bpy
  %.sink.idx.i850.i = select i1 %i.bto, i64 0, i64 %i.btr
  %.sink.i851.i = getelementptr inbounds nuw i8, ptr %i.btp, i64 %.sink.idx.i850.i
  %i.bts = sext i32 %i.bqj to i64                 ; 3 uses
  %i.btt = getelementptr inbounds i8, ptr %.sink.i851.i, i64 %i.bts
  %i.btu = load i8, ptr %i.btt, align 1, !tbaa !26
  %i.btv = zext i8 %i.btu to i32                  ; 2 uses
  br i1 %.not561.i, label %bb.nr, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.btw = mul i64 %i.btq, %i.bqa
  %.sink.idx.i848.i = select i1 %i.bto, i64 0, i64 %i.btw
  %.sink.i849.i = getelementptr inbounds nuw i8, ptr %i.btp, i64 %.sink.idx.i848.i
  %i.btx = getelementptr inbounds i8, ptr %.sink.i849.i, i64 %i.bts
  %i.bty = load i8, ptr %i.btx, align 1, !tbaa !26
  %i.btz = zext i8 %i.bty to i32
  %i.bua = sub nsw i32 %i.btv, %i.btz
  %i.bub = sitofp i32 %i.bua to float
  %i.buc = fmul nnan float %i.bub, 2.000000e+00
  br label %bb.nu

bb.nr:                                            ; preds = %bb.np
  %i.bud = mul i64 %i.btq, %i.bpr
  %.sink.idx.i852.i = select i1 %i.bto, i64 0, i64 %i.bud
  %.sink.i853.i = getelementptr inbounds nuw i8, ptr %i.btp, i64 %.sink.idx.i852.i
  %i.bue = getelementptr inbounds i8, ptr %.sink.i853.i, i64 %i.bts
  %i.buf = load i8, ptr %i.bue, align 1, !tbaa !26
  %i.bug = zext i8 %i.buf to i32
  %i.buh = sub nsw i32 %i.btv, %i.bug
  %i.bui = sitofp i32 %i.buh to float
  br label %bb.nu

bb.ns:                                            ; preds = %bb.no
  %.pre1058.i = load ptr, ptr %i.afz, align 8, !tbaa !43 ; 4 uses
  %.pre1059.i = load i64, ptr %i.aga, align 8     ; 4 uses
  br i1 %.not561.i, label %bb.nu, label %bb.nt

bb.nt:                                            ; preds = %bb.ns
  %i.buj = icmp slt i32 %.pre1057.i, 2            ; 2 uses
  %i.buk = mul i64 %.pre1059.i, %i.bqb
  %.sink.idx.i856.i = select i1 %i.buj, i64 0, i64 %i.buk
  %.sink.i857.i = getelementptr inbounds nuw i8, ptr %.pre1058.i, i64 %.sink.idx.i856.i
  %i.bul = sext i32 %i.bqj to i64                 ; 2 uses
  %i.bum = getelementptr inbounds i8, ptr %.sink.i857.i, i64 %i.bul
  %i.bun = load i8, ptr %i.bum, align 1, !tbaa !26
  %i.buo = zext i8 %i.bun to i32
  %i.bup = mul i64 %.pre1059.i, %i.bqa
  %.sink.idx.i858.i = select i1 %i.buj, i64 0, i64 %i.bup
  %.sink.i859.i = getelementptr inbounds nuw i8, ptr %.pre1058.i, i64 %.sink.idx.i858.i
  %i.buq = getelementptr inbounds i8, ptr %.sink.i859.i, i64 %i.bul
  %i.bur = load i8, ptr %i.buq, align 1, !tbaa !26
  %i.bus = zext i8 %i.bur to i32
  %i.but = sub nsw i32 %i.buo, %i.bus
  %i.buu = sitofp i32 %i.but to float
  br label %bb.nu

bb.nu:                                            ; preds = %bb.nt, %bb.ns, %bb.nr, %bb.nq
  %i.buv = phi i64 [ %i.btq, %bb.nq ], [ %.pre1059.i, %bb.nt ], [ %i.btq, %bb.nr ], [ %.pre1059.i, %bb.ns ]
  %i.buw = phi ptr [ %i.btp, %bb.nq ], [ %.pre1058.i, %bb.nt ], [ %i.btp, %bb.nr ], [ %.pre1058.i, %bb.ns ]
  %.sroa.8869.0.i = phi float [ %i.buc, %bb.nq ], [ %i.buu, %bb.nt ], [ %i.bui, %bb.nr ], [ 0.000000e+00, %bb.ns ]
  %i.bux = icmp slt i32 %.pre1057.i, 2
  %i.buy = mul i64 %i.buv, %i.bpv
  %.sink.idx.i860.i = select i1 %i.bux, i64 0, i64 %i.buy
  %.sink.i861.i = getelementptr inbounds nuw i8, ptr %i.buw, i64 %.sink.idx.i860.i
  %i.buz = getelementptr inbounds nuw i8, ptr %.sink.i861.i, i64 %i.brw
  %i.bva = load i8, ptr %i.buz, align 1, !tbaa !26
  %i.bvb = uitofp i8 %i.bva to float
  %i.bvc = call float @llvm.fmuladd.f32(float %i.brt, float %i.bvb, float %.1543924.i)
end_hunk_0
begin_hunk_1_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.ddw = fadd double %i.ddi, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit779.i407

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit779.i407: ; preds = %bb.tz, %bb.ty, %bb.tw, %bb.tv, %bb.tu
  %.0.i778.i408 = phi double [ %i.ddn, %bb.tu ], [ %i.ddt, %bb.tv ], [ %i.ddu, %bb.tw ], [ %i.ddv, %bb.ty ], [ %i.ddw, %bb.tz ]
  %i.ddx = fptrunc double %.0.i778.i408 to float  ; 2 uses
  %i.ddy = fcmp ogt float %i.dbi, %i.dch
  %i.ddz = select i1 %i.ddy, float %i.dch, float %i.dbi ; 2 uses
  %i.dea = fcmp ogt float %i.ddg, %i.ddx
  %i.deb = select i1 %i.dea, float %i.ddx, float %i.ddg ; 2 uses
  %i.dec = fcmp ogt float %i.ddz, %i.deb
  %i.ded = select i1 %i.dec, float %i.deb, float %i.ddz ; 2 uses
  %i.dee = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i735.i386, i64 %i.czt
  store float %i.ded, ptr %i.dee, align 4, !tbaa !92
  %invariant.gep973.i = getelementptr i8, ptr %i.czp, i64 %i.czt ; 2 uses
  %invariant.gep977.i = getelementptr [4 x i8], ptr %i.dab, i64 %i.czt ; 6 uses
  %i.def = sub nsw i32 %.5.fr.i373, %i.dp
  %i.deg = add nuw nsw i32 %.5.fr.i373, %i.dp
  %i.deh = add nsw i32 %i.czl, -2
  %i.dei = sub nsw i32 %.5520.i371, %i.dp
  %i.dej = add nuw nsw i32 %.5520.i371, %i.dp
  %i.dek = add nsw i32 %i.czm, -2
  %i.del = add nsw i32 %i.czl, -1
  %i.dem = add nsw i32 %i.czm, -1
  %i.den = load i32, ptr %i.bxk, align 4, !tbaa !42
  %i.deo = icmp slt i32 %i.den, 2                 ; 9 uses
  %i.dep = load ptr, ptr %i.bxl, align 8, !tbaa !43 ; 9 uses
  %invariant.gep991.i = getelementptr [2 x i8], ptr %i.dep, i64 %i.daj
  %i.deq = load i64, ptr %i.bxd, align 8          ; 6 uses
  %i.der = mul i64 %i.deq, %i.czr
  %.sink.idx.i782.i409 = select i1 %i.czo, i64 0, i64 %i.der
  %.sink.i783.i410 = getelementptr inbounds nuw i8, ptr %i.czp, i64 %.sink.idx.i782.i409 ; 2 uses
  %i.des = getelementptr inbounds nuw i8, ptr %.sink.i783.i410, i64 %i.dcj
  %i.det = load i8, ptr %i.des, align 1, !tbaa !26
  %.not546.i411 = icmp eq i8 %i.det, 2
  %i.deu = getelementptr inbounds nuw i8, ptr %.sink.i783.i410, i64 %i.daj
  %i.dev = load i8, ptr %i.deu, align 1, !tbaa !26
  %.not547.i412 = icmp eq i8 %i.dev, 2            ; 2 uses
  br i1 %.not546.i411, label %bb.ud, label %bb.ua

bb.ua:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit779.i407
  %i.dew = load i64, ptr %i.bxi, align 8
  %i.dex = mul i64 %i.dew, %i.czr
  %.sink.idx.i790.i413 = select i1 %i.daa, i64 0, i64 %i.dex
  %.sink.i791.i414 = getelementptr inbounds nuw i8, ptr %i.dab, i64 %.sink.idx.i790.i413 ; 3 uses
  %i.dey = getelementptr inbounds nuw [4 x i8], ptr %.sink.i791.i414, i64 %i.dcj
  %i.dez = load float, ptr %i.dey, align 4, !tbaa !92 ; 2 uses
  br i1 %.not547.i412, label %bb.uc, label %bb.ub

bb.ub:                                            ; preds = %bb.ua
  %i.dfa = getelementptr inbounds nuw [4 x i8], ptr %.sink.i791.i414, i64 %i.daj
  %i.dfb = load float, ptr %i.dfa, align 4, !tbaa !92
  %i.dfc = fsub float %i.dez, %i.dfb
  %i.dfd = fmul float %i.dfc, 5.000000e-01
  br label %bb.uf

bb.uc:                                            ; preds = %bb.ua
  %i.dfe = getelementptr inbounds nuw [4 x i8], ptr %.sink.i791.i414, i64 %i.czt
  %i.dff = load float, ptr %i.dfe, align 4, !tbaa !92
  %i.dfg = fsub float %i.dez, %i.dff
  br label %bb.uf

bb.ud:                                            ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit779.i407
  br i1 %.not547.i412, label %bb.uf, label %bb.ue

bb.ue:                                            ; preds = %bb.ud
  %i.dfh = load i64, ptr %i.bxi, align 8
  %i.dfi = mul i64 %i.dfh, %i.czr
  %.sink.idx.i796.i493 = select i1 %i.daa, i64 0, i64 %i.dfi
  %.sink.i797.i494 = getelementptr inbounds nuw i8, ptr %i.dab, i64 %.sink.idx.i796.i493 ; 2 uses
  %i.dfj = getelementptr inbounds nuw [4 x i8], ptr %.sink.i797.i494, i64 %i.czt
  %i.dfk = load float, ptr %i.dfj, align 4, !tbaa !92
  %i.dfl = getelementptr inbounds nuw [4 x i8], ptr %.sink.i797.i494, i64 %i.daj
  %i.dfm = load float, ptr %i.dfl, align 4, !tbaa !92
  %i.dfn = fsub float %i.dfk, %i.dfm
  br label %bb.uf

bb.uf:                                            ; preds = %bb.ue, %bb.ud, %bb.uc, %bb.ub
  %.sroa.0866.0.i415 = phi float [ %i.dfd, %bb.ub ], [ %i.dfn, %bb.ue ], [ %i.dfg, %bb.uc ], [ 0.000000e+00, %bb.ud ]
  %i.dfo = mul i64 %i.deq, %i.dbk
  %.sink.idx.i800.i416 = select i1 %i.czo, i64 0, i64 %i.dfo
  %gep974.i = getelementptr i8, ptr %invariant.gep973.i, i64 %.sink.idx.i800.i416
  %i.dfp = load i8, ptr %gep974.i, align 1, !tbaa !26
  %.not549.i417 = icmp eq i8 %i.dfp, 2
  %i.dfq = mul i64 %i.deq, %i.dad
  %.sink.idx.i812.i418 = select i1 %i.czo, i64 0, i64 %i.dfq
  %gep986.i = getelementptr i8, ptr %invariant.gep973.i, i64 %.sink.idx.i812.i418
  %i.dfr = load i8, ptr %gep986.i, align 1, !tbaa !26
  %.not550.i419 = icmp eq i8 %i.dfr, 2            ; 2 uses
  %.pre1976 = load i64, ptr %i.bxi, align 8       ; 7 uses
  br i1 %.not549.i417, label %bb.uj, label %bb.ug

bb.ug:                                            ; preds = %bb.uf
  %i.dfs = mul i64 %.pre1976, %i.dbk
  %.sink.idx.i808.i420 = select i1 %i.daa, i64 0, i64 %i.dfs
  %gep982.i = getelementptr i8, ptr %invariant.gep977.i, i64 %.sink.idx.i808.i420
  %i.dft = load float, ptr %gep982.i, align 4, !tbaa !92 ; 2 uses
  br i1 %.not550.i419, label %bb.ui, label %bb.uh

bb.uh:                                            ; preds = %bb.ug
  %i.dfu = mul i64 %.pre1976, %i.dad
  %.sink.idx.i806.i421 = select i1 %i.daa, i64 0, i64 %i.dfu
  %gep980.i = getelementptr i8, ptr %invariant.gep977.i, i64 %.sink.idx.i806.i421
  %i.dfv = load float, ptr %gep980.i, align 4, !tbaa !92
  %i.dfw = fsub float %i.dft, %i.dfv
  %i.dfx = fmul float %i.dfw, 5.000000e-01
  br label %bb.ul

bb.ui:                                            ; preds = %bb.ug
  %i.dfy = mul i64 %.pre1976, %i.czr
  %.sink.idx.i810.i490 = select i1 %i.daa, i64 0, i64 %i.dfy
  %gep984.i = getelementptr i8, ptr %invariant.gep977.i, i64 %.sink.idx.i810.i490
  %i.dfz = load float, ptr %gep984.i, align 4, !tbaa !92
  %i.dga = fsub float %i.dft, %i.dfz
  br label %bb.ul

bb.uj:                                            ; preds = %bb.uf
  br i1 %.not550.i419, label %bb.ul, label %bb.uk

bb.uk:                                            ; preds = %bb.uj
  %i.dgb = mul i64 %.pre1976, %i.czr
  %.sink.idx.i814.i491 = select i1 %i.daa, i64 0, i64 %i.dgb
  %gep988.i = getelementptr i8, ptr %invariant.gep977.i, i64 %.sink.idx.i814.i491
  %i.dgc = load float, ptr %gep988.i, align 4, !tbaa !92
  %i.dgd = mul i64 %.pre1976, %i.dad
  %.sink.idx.i816.i492 = select i1 %i.daa, i64 0, i64 %i.dgd
  %gep990.i = getelementptr i8, ptr %invariant.gep977.i, i64 %.sink.idx.i816.i492
  %i.dge = load float, ptr %gep990.i, align 4, !tbaa !92
  %i.dgf = fsub float %i.dgc, %i.dge
  br label %bb.ul

bb.ul:                                            ; preds = %bb.uk, %bb.uj, %bb.ui, %bb.uh
  %.sroa.8867.0.i422 = phi float [ %i.dfx, %bb.uh ], [ %i.dgf, %bb.uk ], [ %i.dga, %bb.ui ], [ 0.000000e+00, %bb.uj ]
  %i.dgg = mul i64 %.pre1976, %i.czr
  %.sink.idx.i822.i465 = select i1 %i.daa, i64 0, i64 %i.dgg
  %gep.i466 = getelementptr i8, ptr %invariant.gep977.i, i64 %.sink.idx.i822.i465
  br label %.lr.ph.i423

.lr.ph.i423:                                      ; preds = %._crit_edge.i436, %bb.ul
  %.1522961.i424 = phi i32 [ %i.dha, %._crit_edge.i436 ], [ %i.def, %bb.ul ] ; 10 uses
  %.0533960.i425 = phi float [ %.us-phi935.i440, %._crit_edge.i436 ], [ f0x1E3CE508, %bb.ul ] ; 3 uses
  %.0542957.i428 = phi float [ %.us-phi.i437, %._crit_edge.i436 ], [ 0.000000e+00, %bb.ul ] ; 3 uses
  %i.dgh = phi <2 x float> [ %i.dmj, %._crit_edge.i436 ], [ zeroinitializer, %bb.ul ] ; 3 uses
  %i.dgi = add nsw i32 %.1522961.i424, -1         ; 3 uses
  %i.dgj = icmp eq i32 %.1522961.i424, 1
  %i.dgk = zext i1 %i.dgj to i32
  %i.dgl = add nsw i32 %i.dgi, %i.dgk             ; 2 uses
  %i.dgm = icmp eq i32 %.1522961.i424, %i.deh
  %.neg.i429 = sext i1 %i.dgm to i32              ; 2 uses
  %i.dgn = add nsw i32 %i.dgi, %.neg.i429
  %i.dgo = icmp sgt i32 %.1522961.i424, 0
  %i.dgp = zext nneg i32 %.1522961.i424 to i64    ; 2 uses
  %i.dgq = mul i64 %i.deq, %i.dgp
  %.sink.idx.i818.i430 = select i1 %i.czo, i64 0, i64 %i.dgq
  %.sink.i819.i431 = getelementptr inbounds nuw i8, ptr %i.czp, i64 %.sink.idx.i818.i430 ; 2 uses
  %i.dgr = sub nsw i32 %.1522961.i424, %.5.fr.i373 ; 2 uses
  %i.dgs = mul nsw i32 %i.dgr, %i.dgr
  %i.dgt = sub nsw i32 %.5.fr.i373, %.1522961.i424
  %i.dgu = sitofp i32 %i.dgt to float             ; 2 uses
  %i.dgv = insertelement <2 x float> poison, float %i.dgu, i64 0 ; 2 uses
  %i.dgw = insertelement <2 x float> %i.dgv, float %.sroa.8867.0.i422, i64 1
  %i.dgx = shufflevector <2 x float> %i.dgv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dgy = fmul <2 x float> %i.dgw, %i.dgx
  %i.dgz = sext i32 %i.dgl to i64                 ; 3 uses
  %i.dha = add i32 %.1522961.i424, 1              ; 3 uses
  %i.dhb = zext nneg i32 %i.dha to i64
  %i.dhc = mul i64 %i.deq, %i.dhb
  %.sink.idx.i842.i432 = select i1 %i.czo, i64 0, i64 %i.dhc
  %.sink.i843.i433 = getelementptr inbounds nuw i8, ptr %i.czp, i64 %.sink.idx.i842.i432
  %i.dhd = zext nneg i32 %i.dgi to i64            ; 2 uses
  %i.dhe = mul i64 %i.deq, %i.dhd
  %.sink.idx.i844.i434 = select i1 %i.czo, i64 0, i64 %i.dhe
  %.sink.i845.i435 = getelementptr inbounds nuw i8, ptr %i.czp, i64 %.sink.idx.i844.i434
  %i.dhf = add i32 %.1522961.i424, %.neg.i429
  %i.dhg = sext i32 %i.dhf to i64
  %i.dhh = add nsw i32 %i.dgl, -1
  %i.dhi = sext i32 %i.dhh to i64                 ; 2 uses
  %i.dhj = sext i32 %i.dgn to i64
  br i1 %i.dgo, label %.lr.ph.split.i446, label %._crit_edge.i436

.lr.ph.split.i446:                                ; preds = %.lr.ph.i423
  %i.dhk = icmp slt i32 %.1522961.i424, %i.del
  %.fr955.i447 = freeze i1 %i.dhk
  br i1 %.fr955.i447, label %.lr.ph.split.split.i448.preheader, label %._crit_edge.i436

.lr.ph.split.split.i448.preheader:                ; preds = %.lr.ph.split.i446
  %i.dhl = mul i64 %.pre1976, %i.dgp
  %.sink.idx.i820.i463 = select i1 %i.daa, i64 0, i64 %i.dhl
  %.sink.i821.i464 = getelementptr inbounds nuw i8, ptr %i.dab, i64 %.sink.idx.i820.i463
  %i.dhm = insertelement <2 x float> poison, float %i.dgu, i64 1
  br label %.lr.ph.split.split.i448

.lr.ph.split.split.i448:                          ; preds = %.lr.ph.split.split.i448.preheader, %bb.vb
  %.1524928.i449 = phi i32 [ %i.dmi, %bb.vb ], [ %i.dei, %.lr.ph.split.split.i448.preheader ] ; 11 uses
  %.1534927.i450 = phi float [ %.2535.i458, %bb.vb ], [ %.0533960.i425, %.lr.ph.split.split.i448.preheader ] ; 4 uses
  %.1543924.i453 = phi float [ %.2544.i455, %bb.vb ], [ %.0542957.i428, %.lr.ph.split.split.i448.preheader ] ; 4 uses
  %i.dhn = phi <2 x float> [ %i.dmh, %bb.vb ], [ %i.dgh, %.lr.ph.split.split.i448.preheader ] ; 4 uses
  %i.dho = add nsw i32 %.1524928.i449, -1         ; 3 uses
  %i.dhp = icmp eq i32 %.1524928.i449, 1
  %i.dhq = zext i1 %i.dhp to i32
  %i.dhr = add nuw nsw i32 %i.dho, %i.dhq         ; 4 uses
  %i.dhs = icmp eq i32 %.1524928.i449, %i.dek
  %.neg554.i454 = sext i1 %i.dhs to i32           ; 2 uses
  %i.dht = add nsw i32 %i.dho, %.neg554.i454
  %i.dhu = icmp sgt i32 %.1524928.i449, 0
  %i.dhv = icmp slt i32 %.1524928.i449, %i.dem
  %or.cond1039.i = select i1 %i.dhu, i1 %i.dhv, i1 false
  br i1 %or.cond1039.i, label %bb.um, label %bb.vb

bb.um:                                            ; preds = %.lr.ph.split.split.i448
  %i.dhw = zext nneg i32 %.1524928.i449 to i64    ; 4 uses
  %i.dhx = getelementptr inbounds nuw i8, ptr %.sink.i819.i431, i64 %i.dhw ; 2 uses
  %i.dhy = load i8, ptr %i.dhx, align 1, !tbaa !26
  %.not555.i460 = icmp eq i8 %i.dhy, 2
  br i1 %.not555.i460, label %bb.vb, label %bb.un

bb.un:                                            ; preds = %bb.um
  %i.dhz = sub nsw i32 %.1524928.i449, %.5520.i371 ; 2 uses
  %i.dia = mul nsw i32 %i.dhz, %i.dhz
  %i.dib = add nuw nsw i32 %i.dia, %i.dgs
  %.not556.i461 = icmp samesign ugt i32 %i.dib, %i.bxj
  br i1 %.not556.i461, label %bb.vb, label %bb.uo

bb.uo:                                            ; preds = %bb.un
  %i.dic = sub nsw i32 %.5520.i371, %.1524928.i449
  %i.did = sitofp i32 %i.dic to float             ; 2 uses
  %i.die = getelementptr inbounds nuw [4 x i8], ptr %.sink.i821.i464, i64 %i.dhw
  %i.dif = load float, ptr %i.die, align 4, !tbaa !92
  %i.dig = load float, ptr %gep.i466, align 4, !tbaa !92
  %i.dih = fsub float %i.dif, %i.dig
  %i.dii = insertelement <2 x float> poison, float %i.did, i64 0
  %i.dij = shufflevector <2 x float> %i.dii, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dik = insertelement <2 x float> %i.dij, float %.sroa.0866.0.i415, i64 1
  %i.dil = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dij, <2 x float> %i.dik, <2 x float> %i.dgy) ; 3 uses
  %i.dim = extractelement <2 x float> %i.dil, i64 0 ; 2 uses
  %sqrt914.i462 = call nnan float @llvm.sqrt.f32(float %i.dim)
  %i.din = fmul float %i.dim, %sqrt914.i462
  %i.dio = fdiv float 1.000000e+00, %i.din
  %i.dip = extractelement <2 x float> %i.dil, i64 1
  %i.diq = insertelement <2 x float> %i.dil, float %i.dih, i64 0
  %i.dir = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.diq)
  %i.dis = fpext <2 x float> %i.dir to <2 x double> ; 2 uses
  %i.dit = extractelement <2 x double> %i.dis, i64 0
  %i.diu = fadd double %i.dit, 1.000000e+00
  %i.div = fdiv double 1.000000e+00, %i.diu
  %i.diw = fptrunc double %i.div to float
  %i.dix = extractelement <2 x double> %i.dis, i64 1
  %i.diy = fcmp ugt double %i.dix, 1.000000e-02
  %.0527.i467 = select i1 %i.diy, float %i.dip, float f0x358637BD
  %i.diz = fmul float %i.dio, %i.diw
  %i.dja = fmul float %.0527.i467, %i.diz
  %i.djb = call float @llvm.fabs.f32(float %i.dja) ; 3 uses
  %i.djc = getelementptr inbounds nuw i8, ptr %i.dhx, i64 1
  %i.djd = load i8, ptr %i.djc, align 1, !tbaa !26
  %.not557.i468 = icmp eq i8 %i.djd, 2
  %i.dje = zext nneg i32 %i.dho to i64            ; 2 uses
  %i.djf = getelementptr inbounds nuw i8, ptr %.sink.i819.i431, i64 %i.dje
  %i.djg = load i8, ptr %i.djf, align 1, !tbaa !26
  %.not558.i469 = icmp eq i8 %i.djg, 2            ; 2 uses
  br i1 %.not557.i468, label %bb.us, label %bb.up

bb.up:                                            ; preds = %bb.uo
  %i.djh = add nsw i32 %.1524928.i449, %.neg554.i454
  %i.dji = load i64, ptr %i.bxm, align 8          ; 3 uses
  %i.djj = mul i64 %i.dji, %i.dgz
  %i.djk = zext nneg i32 %i.djh to i64
  %i.djl = sext i32 %i.dhr to i64
  %.sink.idx.i832.i486 = select i1 %i.deo, i64 0, i64 %i.djj
  %.sink.i833.i487 = getelementptr inbounds nuw i8, ptr %i.dep, i64 %.sink.idx.i832.i486 ; 2 uses
  %i.djm = getelementptr inbounds nuw [2 x i8], ptr %.sink.i833.i487, i64 %i.djk
  %i.djn = load i16, ptr %i.djm, align 2, !tbaa !136
  %i.djo = zext i16 %i.djn to i32                 ; 2 uses
  %i.djp = getelementptr [2 x i8], ptr %.sink.i833.i487, i64 %i.djl ; 2 uses
  br i1 %.not558.i469, label %bb.ur, label %bb.uq

bb.uq:                                            ; preds = %bb.up
  %i.djq = getelementptr i8, ptr %i.djp, i64 -2
  %i.djr = load i16, ptr %i.djq, align 2, !tbaa !136
  %i.djs = zext i16 %i.djr to i32
  %i.djt = sub nsw i32 %i.djo, %i.djs
  %i.dju = sitofp i32 %i.djt to float
  %i.djv = fmul nnan float %i.dju, 2.000000e+00
  br label %bb.uu

bb.ur:                                            ; preds = %bb.up
  %i.djw = load i16, ptr %i.djp, align 2, !tbaa !136
  %i.djx = zext i16 %i.djw to i32
  %i.djy = sub nsw i32 %i.djo, %i.djx
  %i.djz = sitofp i32 %i.djy to float
  br label %bb.uu

bb.us:                                            ; preds = %bb.uo
  %.pre1079.i.pre = load i64, ptr %i.bxm, align 8 ; 3 uses
  br i1 %.not558.i469, label %bb.uu, label %bb.ut

bb.ut:                                            ; preds = %bb.us
  %i.dka = mul i64 %.pre1079.i.pre, %i.dgz
  %.sink.idx.i838.i488 = select i1 %i.deo, i64 0, i64 %i.dka
  %.sink.i839.i489 = getelementptr inbounds nuw i8, ptr %i.dep, i64 %.sink.idx.i838.i488 ; 2 uses
  %i.dkb = sext i32 %i.dht to i64
  %i.dkc = getelementptr inbounds [2 x i8], ptr %.sink.i839.i489, i64 %i.dkb
  %i.dkd = load i16, ptr %i.dkc, align 2, !tbaa !136
  %i.dke = zext i16 %i.dkd to i32
  %i.dkf = sext i32 %i.dhr to i64
  %i.dkg = getelementptr [2 x i8], ptr %.sink.i839.i489, i64 %i.dkf
  %i.dkh = getelementptr i8, ptr %i.dkg, i64 -2
  %i.dki = load i16, ptr %i.dkh, align 2, !tbaa !136
  %i.dkj = zext i16 %i.dki to i32
  %i.dkk = sub nsw i32 %i.dke, %i.dkj
  %i.dkl = sitofp i32 %i.dkk to float
  br label %bb.uu

bb.uu:                                            ; preds = %bb.ut, %bb.us, %bb.ur, %bb.uq
  %.pre1079.i = phi i64 [ %i.dji, %bb.uq ], [ %.pre1079.i.pre, %bb.ut ], [ %i.dji, %bb.ur ], [ %.pre1079.i.pre, %bb.us ] ; 6 uses
  %.sroa.0868.0.i470 = phi float [ %i.djv, %bb.uq ], [ %i.dkl, %bb.ut ], [ %i.djz, %bb.ur ], [ 0.000000e+00, %bb.us ]
  %i.dkm = getelementptr inbounds nuw i8, ptr %.sink.i843.i433, i64 %i.dhw
  %i.dkn = load i8, ptr %i.dkm, align 1, !tbaa !26
  %.not560.i471 = icmp eq i8 %i.dkn, 2
  %i.dko = getelementptr inbounds nuw i8, ptr %.sink.i845.i435, i64 %i.dhw
  %i.dkp = load i8, ptr %i.dko, align 1, !tbaa !26
  %.not561.i472 = icmp eq i8 %i.dkp, 2            ; 2 uses
  br i1 %.not560.i471, label %bb.uy, label %bb.uv

bb.uv:                                            ; preds = %bb.uu
  %i.dkq = mul i64 %.pre1079.i, %i.dhg
  %i.dkr = sext i32 %i.dhr to i64                 ; 3 uses
  %.sink.idx.i850.i478 = select i1 %i.deo, i64 0, i64 %i.dkq
  %.sink.i851.i479 = getelementptr inbounds nuw i8, ptr %i.dep, i64 %.sink.idx.i850.i478
  %i.dks = getelementptr inbounds [2 x i8], ptr %.sink.i851.i479, i64 %i.dkr
  %i.dkt = load i16, ptr %i.dks, align 2, !tbaa !136
  %i.dku = zext i16 %i.dkt to i32                 ; 2 uses
  br i1 %.not561.i472, label %bb.ux, label %bb.uw

bb.uw:                                            ; preds = %bb.uv
  %i.dkv = mul i64 %.pre1079.i, %i.dhi
  %.sink.idx.i848.i473 = select i1 %i.deo, i64 0, i64 %i.dkv
  %.sink.i849.i474 = getelementptr inbounds nuw i8, ptr %i.dep, i64 %.sink.idx.i848.i473
  %i.dkw = getelementptr inbounds [2 x i8], ptr %.sink.i849.i474, i64 %i.dkr
  %i.dkx = load i16, ptr %i.dkw, align 2, !tbaa !136
  %i.dky = zext i16 %i.dkx to i32
  %i.dkz = sub nsw i32 %i.dku, %i.dky
  %i.dla = sitofp i32 %i.dkz to float
  %i.dlb = fmul nnan float %i.dla, 2.000000e+00
  br label %bb.va

bb.ux:                                            ; preds = %bb.uv
  %i.dlc = mul i64 %.pre1079.i, %i.dgz
  %.sink.idx.i852.i480 = select i1 %i.deo, i64 0, i64 %i.dlc
  %.sink.i853.i481 = getelementptr inbounds nuw i8, ptr %i.dep, i64 %.sink.idx.i852.i480
  %i.dld = getelementptr inbounds [2 x i8], ptr %.sink.i853.i481, i64 %i.dkr
  %i.dle = load i16, ptr %i.dld, align 2, !tbaa !136
  %i.dlf = zext i16 %i.dle to i32
  %i.dlg = sub nsw i32 %i.dku, %i.dlf
  %i.dlh = sitofp i32 %i.dlg to float
  br label %bb.va

bb.uy:                                            ; preds = %bb.uu
  br i1 %.not561.i472, label %bb.va, label %bb.uz

bb.uz:                                            ; preds = %bb.uy
  %i.dli = mul i64 %.pre1079.i, %i.dhj
  %.sink.idx.i856.i482 = select i1 %i.deo, i64 0, i64 %i.dli
  %.sink.i857.i483 = getelementptr inbounds nuw i8, ptr %i.dep, i64 %.sink.idx.i856.i482
  %i.dlj = sext i32 %i.dhr to i64                 ; 2 uses
  %i.dlk = getelementptr inbounds [2 x i8], ptr %.sink.i857.i483, i64 %i.dlj
  %i.dll = load i16, ptr %i.dlk, align 2, !tbaa !136
  %i.dlm = zext i16 %i.dll to i32
  %i.dln = mul i64 %.pre1079.i, %i.dhi
  %.sink.idx.i858.i484 = select i1 %i.deo, i64 0, i64 %i.dln
  %.sink.i859.i485 = getelementptr inbounds nuw i8, ptr %i.dep, i64 %.sink.idx.i858.i484
  %i.dlo = getelementptr inbounds [2 x i8], ptr %.sink.i859.i485, i64 %i.dlj
  %i.dlp = load i16, ptr %i.dlo, align 2, !tbaa !136
  %i.dlq = zext i16 %i.dlp to i32
  %i.dlr = sub nsw i32 %i.dlm, %i.dlq
  %i.dls = sitofp i32 %i.dlr to float
  br label %bb.va

bb.va:                                            ; preds = %bb.uz, %bb.uy, %bb.ux, %bb.uw
  %.sroa.8869.0.i475 = phi float [ %i.dlb, %bb.uw ], [ %i.dls, %bb.uz ], [ %i.dlh, %bb.ux ], [ 0.000000e+00, %bb.uy ]
  %i.dlt = mul i64 %.pre1079.i, %i.dhd
  %.sink.idx.i860.i476 = select i1 %i.deo, i64 0, i64 %i.dlt
  %.sink.i861.i477 = getelementptr inbounds nuw i8, ptr %i.dep, i64 %.sink.idx.i860.i476
  %i.dlu = getelementptr inbounds nuw [2 x i8], ptr %.sink.i861.i477, i64 %i.dje
  %i.dlv = load i16, ptr %i.dlu, align 2, !tbaa !136
  %i.dlw = uitofp i16 %i.dlv to float
  %i.dlx = call float @llvm.fmuladd.f32(float %i.djb, float %i.dlw, float %.1543924.i453)
  %i.dly = insertelement <2 x float> poison, float %.sroa.0868.0.i470, i64 0
  %i.dlz = insertelement <2 x float> %i.dly, float %.sroa.8869.0.i475, i64 1
  %i.dma = insertelement <2 x float> %i.dhm, float %i.did, i64 0
  %i.dmb = fmul <2 x float> %i.dlz, %i.dma
  %i.dmc = fneg float %i.djb
  %i.dmd = insertelement <2 x float> poison, float %i.dmc, i64 0
  %i.dme = shufflevector <2 x float> %i.dmd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dmf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dme, <2 x float> %i.dmb, <2 x float> %i.dhn)
  %i.dmg = fadd float %.1534927.i450, %i.djb
  br label %bb.vb

bb.vb:                                            ; preds = %bb.va, %bb.un, %bb.um, %.lr.ph.split.split.i448
  %.2544.i455 = phi float [ %i.dlx, %bb.va ], [ %.1543924.i453, %bb.un ], [ %.1543924.i453, %bb.um ], [ %.1543924.i453, %.lr.ph.split.split.i448 ] ; 2 uses
  %.2535.i458 = phi float [ %i.dmg, %bb.va ], [ %.1534927.i450, %bb.un ], [ %.1534927.i450, %bb.um ], [ %.1534927.i450, %.lr.ph.split.split.i448 ] ; 2 uses
  %i.dmh = phi <2 x float> [ %i.dmf, %bb.va ], [ %i.dhn, %bb.un ], [ %i.dhn, %bb.um ], [ %i.dhn, %.lr.ph.split.split.i448 ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.euk = fadd double %i.etw, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit779.i734

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit779.i734: ; preds = %bb.abf, %bb.abe, %bb.abc, %bb.abb, %bb.aba
  %.0.i778.i735 = phi double [ %i.eub, %bb.aba ], [ %i.euh, %bb.abb ], [ %i.eui, %bb.abc ], [ %i.euj, %bb.abe ], [ %i.euk, %bb.abf ]
  %i.eul = fptrunc double %.0.i778.i735 to float  ; 2 uses
  %i.eum = fcmp ogt float %i.erw, %i.esv
  %i.eun = select i1 %i.eum, float %i.esv, float %i.erw ; 2 uses
  %i.euo = fcmp ogt float %i.etu, %i.eul
  %i.eup = select i1 %i.euo, float %i.eul, float %i.etu ; 2 uses
  %i.euq = fcmp ogt float %i.eun, %i.eup
  %i.eur = select i1 %i.euq, float %i.eup, float %i.eun ; 2 uses
  %i.eus = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i735.i713, i64 %i.eqh
  store float %i.eur, ptr %i.eus, align 4, !tbaa !92
  %invariant.gep973.i736 = getelementptr i8, ptr %i.eqd, i64 %i.eqh ; 2 uses
  %invariant.gep977.i737 = getelementptr [4 x i8], ptr %i.eqp, i64 %i.eqh ; 6 uses
  %i.eut = sub nsw i32 %.5.fr.i700, %i.dp
  %i.euu = add nuw nsw i32 %.5.fr.i700, %i.dp
  %i.euv = add nsw i32 %i.epz, -2
  %i.euw = sub nsw i32 %.5520.i698, %i.dp
  %i.eux = add nuw nsw i32 %.5520.i698, %i.dp
  %i.euy = add nsw i32 %i.eqa, -2
  %i.euz = add nsw i32 %i.epz, -1
  %i.eva = add nsw i32 %i.eqa, -1
  %i.evb = load i32, ptr %i.dny, align 4, !tbaa !42
  %i.evc = icmp slt i32 %i.evb, 2                 ; 9 uses
  %i.evd = load ptr, ptr %i.dnz, align 8, !tbaa !43 ; 9 uses
  %invariant.gep991.i738 = getelementptr [4 x i8], ptr %i.evd, i64 %i.eqx
  %i.eve = load i64, ptr %i.dnr, align 8          ; 6 uses
  %i.evf = mul i64 %i.eve, %i.eqf
  %.sink.idx.i782.i739 = select i1 %i.eqc, i64 0, i64 %i.evf
  %.sink.i783.i740 = getelementptr inbounds nuw i8, ptr %i.eqd, i64 %.sink.idx.i782.i739 ; 2 uses
  %i.evg = getelementptr inbounds nuw i8, ptr %.sink.i783.i740, i64 %i.esx
  %i.evh = load i8, ptr %i.evg, align 1, !tbaa !26
  %.not546.i741 = icmp eq i8 %i.evh, 2
  %i.evi = getelementptr inbounds nuw i8, ptr %.sink.i783.i740, i64 %i.eqx
  %i.evj = load i8, ptr %i.evi, align 1, !tbaa !26
  %.not547.i742 = icmp eq i8 %i.evj, 2            ; 2 uses
  br i1 %.not546.i741, label %bb.abj, label %bb.abg

bb.abg:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit779.i734
  %i.evk = load i64, ptr %i.dnw, align 8
  %i.evl = mul i64 %i.evk, %i.eqf
  %.sink.idx.i790.i743 = select i1 %i.eqo, i64 0, i64 %i.evl
  %.sink.i791.i744 = getelementptr inbounds nuw i8, ptr %i.eqp, i64 %.sink.idx.i790.i743 ; 3 uses
  %i.evm = getelementptr inbounds nuw [4 x i8], ptr %.sink.i791.i744, i64 %i.esx
  %i.evn = load float, ptr %i.evm, align 4, !tbaa !92 ; 2 uses
  br i1 %.not547.i742, label %bb.abi, label %bb.abh

bb.abh:                                           ; preds = %bb.abg
  %i.evo = getelementptr inbounds nuw [4 x i8], ptr %.sink.i791.i744, i64 %i.eqx
  %i.evp = load float, ptr %i.evo, align 4, !tbaa !92
  %i.evq = fsub float %i.evn, %i.evp
  %i.evr = fmul float %i.evq, 5.000000e-01
  br label %bb.abl

bb.abi:                                           ; preds = %bb.abg
  %i.evs = getelementptr inbounds nuw [4 x i8], ptr %.sink.i791.i744, i64 %i.eqh
  %i.evt = load float, ptr %i.evs, align 4, !tbaa !92
  %i.evu = fsub float %i.evn, %i.evt
  br label %bb.abl

bb.abj:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit779.i734
  br i1 %.not547.i742, label %bb.abl, label %bb.abk

bb.abk:                                           ; preds = %bb.abj
  %i.evv = load i64, ptr %i.dnw, align 8
  %i.evw = mul i64 %i.evv, %i.eqf
  %.sink.idx.i796.i838 = select i1 %i.eqo, i64 0, i64 %i.evw
  %.sink.i797.i839 = getelementptr inbounds nuw i8, ptr %i.eqp, i64 %.sink.idx.i796.i838 ; 2 uses
  %i.evx = getelementptr inbounds nuw [4 x i8], ptr %.sink.i797.i839, i64 %i.eqh
  %i.evy = load float, ptr %i.evx, align 4, !tbaa !92
  %i.evz = getelementptr inbounds nuw [4 x i8], ptr %.sink.i797.i839, i64 %i.eqx
  %i.ewa = load float, ptr %i.evz, align 4, !tbaa !92
  %i.ewb = fsub float %i.evy, %i.ewa
  br label %bb.abl

bb.abl:                                           ; preds = %bb.abk, %bb.abj, %bb.abi, %bb.abh
  %.sroa.0866.0.i745 = phi float [ %i.evr, %bb.abh ], [ %i.ewb, %bb.abk ], [ %i.evu, %bb.abi ], [ 0.000000e+00, %bb.abj ]
  %i.ewc = mul i64 %i.eve, %i.ery
  %.sink.idx.i800.i746 = select i1 %i.eqc, i64 0, i64 %i.ewc
  %gep974.i747 = getelementptr i8, ptr %invariant.gep973.i736, i64 %.sink.idx.i800.i746
  %i.ewd = load i8, ptr %gep974.i747, align 1, !tbaa !26
  %.not549.i748 = icmp eq i8 %i.ewd, 2
  %i.ewe = mul i64 %i.eve, %i.eqr
  %.sink.idx.i812.i749 = select i1 %i.eqc, i64 0, i64 %i.ewe
  %gep986.i750 = getelementptr i8, ptr %invariant.gep973.i736, i64 %.sink.idx.i812.i749
  %i.ewf = load i8, ptr %gep986.i750, align 1, !tbaa !26
  %.not550.i751 = icmp eq i8 %i.ewf, 2            ; 2 uses
  %.pre1973 = load i64, ptr %i.dnw, align 8       ; 7 uses
  br i1 %.not549.i748, label %bb.abp, label %bb.abm

bb.abm:                                           ; preds = %bb.abl
  %i.ewg = mul i64 %.pre1973, %i.ery
  %.sink.idx.i808.i752 = select i1 %i.eqo, i64 0, i64 %i.ewg
  %gep982.i753 = getelementptr i8, ptr %invariant.gep977.i737, i64 %.sink.idx.i808.i752
  %i.ewh = load float, ptr %gep982.i753, align 4, !tbaa !92 ; 2 uses
  br i1 %.not550.i751, label %bb.abo, label %bb.abn

bb.abn:                                           ; preds = %bb.abm
  %i.ewi = mul i64 %.pre1973, %i.eqr
  %.sink.idx.i806.i754 = select i1 %i.eqo, i64 0, i64 %i.ewi
  %gep980.i755 = getelementptr i8, ptr %invariant.gep977.i737, i64 %.sink.idx.i806.i754
  %i.ewj = load float, ptr %gep980.i755, align 4, !tbaa !92
  %i.ewk = fsub float %i.ewh, %i.ewj
  %i.ewl = fmul float %i.ewk, 5.000000e-01
  br label %bb.abr

bb.abo:                                           ; preds = %bb.abm
  %i.ewm = mul i64 %.pre1973, %i.eqf
  %.sink.idx.i810.i832 = select i1 %i.eqo, i64 0, i64 %i.ewm
  %gep984.i833 = getelementptr i8, ptr %invariant.gep977.i737, i64 %.sink.idx.i810.i832
  %i.ewn = load float, ptr %gep984.i833, align 4, !tbaa !92
  %i.ewo = fsub float %i.ewh, %i.ewn
  br label %bb.abr

bb.abp:                                           ; preds = %bb.abl
  br i1 %.not550.i751, label %bb.abr, label %bb.abq

bb.abq:                                           ; preds = %bb.abp
  %i.ewp = mul i64 %.pre1973, %i.eqf
  %.sink.idx.i814.i834 = select i1 %i.eqo, i64 0, i64 %i.ewp
  %gep988.i835 = getelementptr i8, ptr %invariant.gep977.i737, i64 %.sink.idx.i814.i834
  %i.ewq = load float, ptr %gep988.i835, align 4, !tbaa !92
  %i.ewr = mul i64 %.pre1973, %i.eqr
  %.sink.idx.i816.i836 = select i1 %i.eqo, i64 0, i64 %i.ewr
  %gep990.i837 = getelementptr i8, ptr %invariant.gep977.i737, i64 %.sink.idx.i816.i836
  %i.ews = load float, ptr %gep990.i837, align 4, !tbaa !92
  %i.ewt = fsub float %i.ewq, %i.ews
  br label %bb.abr

bb.abr:                                           ; preds = %bb.abq, %bb.abp, %bb.abo, %bb.abn
  %.sroa.8867.0.i756 = phi float [ %i.ewl, %bb.abn ], [ %i.ewt, %bb.abq ], [ %i.ewo, %bb.abo ], [ 0.000000e+00, %bb.abp ]
  %i.ewu = mul i64 %.pre1973, %i.eqf
  %.sink.idx.i822.i802 = select i1 %i.eqo, i64 0, i64 %i.ewu
  %gep.i803 = getelementptr i8, ptr %invariant.gep977.i737, i64 %.sink.idx.i822.i802
  br label %.lr.ph.i757

.lr.ph.i757:                                      ; preds = %._crit_edge.i770, %bb.abr
  %.1522961.i758 = phi i32 [ %i.exo, %._crit_edge.i770 ], [ %i.eut, %bb.abr ] ; 10 uses
  %.0533960.i759 = phi float [ %.us-phi935.i774, %._crit_edge.i770 ], [ f0x1E3CE508, %bb.abr ] ; 3 uses
  %.0542957.i762 = phi float [ %.us-phi.i771, %._crit_edge.i770 ], [ 0.000000e+00, %bb.abr ] ; 3 uses
  %i.ewv = phi <2 x float> [ %i.fcg, %._crit_edge.i770 ], [ zeroinitializer, %bb.abr ] ; 3 uses
  %i.eww = add nsw i32 %.1522961.i758, -1         ; 3 uses
  %i.ewx = icmp eq i32 %.1522961.i758, 1
  %i.ewy = zext i1 %i.ewx to i32
  %i.ewz = add nsw i32 %i.eww, %i.ewy             ; 2 uses
  %i.exa = icmp eq i32 %.1522961.i758, %i.euv
  %.neg.i763 = sext i1 %i.exa to i32              ; 2 uses
  %i.exb = add nsw i32 %i.eww, %.neg.i763
  %i.exc = icmp sgt i32 %.1522961.i758, 0
  %i.exd = zext nneg i32 %.1522961.i758 to i64    ; 2 uses
  %i.exe = mul i64 %i.eve, %i.exd
  %.sink.idx.i818.i764 = select i1 %i.eqc, i64 0, i64 %i.exe
  %.sink.i819.i765 = getelementptr inbounds nuw i8, ptr %i.eqd, i64 %.sink.idx.i818.i764 ; 2 uses
  %i.exf = sub nsw i32 %.1522961.i758, %.5.fr.i700 ; 2 uses
  %i.exg = mul nsw i32 %i.exf, %i.exf
  %i.exh = sub nsw i32 %.5.fr.i700, %.1522961.i758
  %i.exi = sitofp i32 %i.exh to float             ; 2 uses
  %i.exj = insertelement <2 x float> poison, float %i.exi, i64 0 ; 2 uses
  %i.exk = insertelement <2 x float> %i.exj, float %.sroa.8867.0.i756, i64 1
  %i.exl = shufflevector <2 x float> %i.exj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.exm = fmul <2 x float> %i.exk, %i.exl
  %i.exn = sext i32 %i.ewz to i64                 ; 3 uses
  %i.exo = add i32 %.1522961.i758, 1              ; 3 uses
  %i.exp = zext nneg i32 %i.exo to i64
  %i.exq = mul i64 %i.eve, %i.exp
  %.sink.idx.i842.i766 = select i1 %i.eqc, i64 0, i64 %i.exq
  %.sink.i843.i767 = getelementptr inbounds nuw i8, ptr %i.eqd, i64 %.sink.idx.i842.i766
  %i.exr = zext nneg i32 %i.eww to i64            ; 2 uses
  %i.exs = mul i64 %i.eve, %i.exr
  %.sink.idx.i844.i768 = select i1 %i.eqc, i64 0, i64 %i.exs
  %.sink.i845.i769 = getelementptr inbounds nuw i8, ptr %i.eqd, i64 %.sink.idx.i844.i768
  %i.ext = add i32 %.1522961.i758, %.neg.i763
  %i.exu = sext i32 %i.ext to i64
  %i.exv = add nsw i32 %i.ewz, -1
  %i.exw = sext i32 %i.exv to i64                 ; 2 uses
  %i.exx = sext i32 %i.exb to i64
  br i1 %i.exc, label %.lr.ph.split.i782, label %._crit_edge.i770

.lr.ph.split.i782:                                ; preds = %.lr.ph.i757
  %i.exy = icmp slt i32 %.1522961.i758, %i.euz
  %.fr955.i783 = freeze i1 %i.exy
  br i1 %.fr955.i783, label %.lr.ph.split.split.i784.preheader, label %._crit_edge.i770

.lr.ph.split.split.i784.preheader:                ; preds = %.lr.ph.split.i782
  %i.exz = mul i64 %.pre1973, %i.exd
  %.sink.idx.i820.i800 = select i1 %i.eqo, i64 0, i64 %i.exz
  %.sink.i821.i801 = getelementptr inbounds nuw i8, ptr %i.eqp, i64 %.sink.idx.i820.i800
  %i.eya = insertelement <2 x float> poison, float %i.exi, i64 1
  br label %.lr.ph.split.split.i784

.lr.ph.split.split.i784:                          ; preds = %.lr.ph.split.split.i784.preheader, %bb.ach
  %.1524928.i785 = phi i32 [ %i.fcf, %bb.ach ], [ %i.euw, %.lr.ph.split.split.i784.preheader ] ; 11 uses
  %.1534927.i786 = phi float [ %.2535.i795, %bb.ach ], [ %.0533960.i759, %.lr.ph.split.split.i784.preheader ] ; 4 uses
  %.1543924.i789 = phi float [ %.2544.i792, %bb.ach ], [ %.0542957.i762, %.lr.ph.split.split.i784.preheader ] ; 4 uses
  %i.eyb = phi <2 x float> [ %i.fce, %bb.ach ], [ %i.ewv, %.lr.ph.split.split.i784.preheader ] ; 4 uses
  %i.eyc = add nsw i32 %.1524928.i785, -1         ; 3 uses
  %i.eyd = icmp eq i32 %.1524928.i785, 1
  %i.eye = zext i1 %i.eyd to i32
  %i.eyf = add nuw nsw i32 %i.eyc, %i.eye         ; 4 uses
  %i.eyg = icmp eq i32 %.1524928.i785, %i.euy
  %.neg554.i790 = sext i1 %i.eyg to i32           ; 2 uses
  %i.eyh = add nsw i32 %i.eyc, %.neg554.i790
  %i.eyi = icmp sgt i32 %.1524928.i785, 0
  %i.eyj = icmp slt i32 %.1524928.i785, %i.eva
  %or.cond1039.i791 = select i1 %i.eyi, i1 %i.eyj, i1 false
  br i1 %or.cond1039.i791, label %bb.abs, label %bb.ach

bb.abs:                                           ; preds = %.lr.ph.split.split.i784
  %i.eyk = zext nneg i32 %.1524928.i785 to i64    ; 4 uses
  %i.eyl = getelementptr inbounds nuw i8, ptr %.sink.i819.i765, i64 %i.eyk ; 2 uses
  %i.eym = load i8, ptr %i.eyl, align 1, !tbaa !26
  %.not555.i797 = icmp eq i8 %i.eym, 2
  br i1 %.not555.i797, label %bb.ach, label %bb.abt

bb.abt:                                           ; preds = %bb.abs
  %i.eyn = sub nsw i32 %.1524928.i785, %.5520.i698 ; 2 uses
  %i.eyo = mul nsw i32 %i.eyn, %i.eyn
  %i.eyp = add nuw nsw i32 %i.eyo, %i.exg
  %.not556.i798 = icmp samesign ugt i32 %i.eyp, %i.dnx
  br i1 %.not556.i798, label %bb.ach, label %bb.abu

bb.abu:                                           ; preds = %bb.abt
  %i.eyq = sub nsw i32 %.5520.i698, %.1524928.i785
  %i.eyr = sitofp i32 %i.eyq to float             ; 2 uses
  %i.eys = getelementptr inbounds nuw [4 x i8], ptr %.sink.i821.i801, i64 %i.eyk
  %i.eyt = load float, ptr %i.eys, align 4, !tbaa !92
  %i.eyu = load float, ptr %gep.i803, align 4, !tbaa !92
  %i.eyv = fsub float %i.eyt, %i.eyu
  %i.eyw = insertelement <2 x float> poison, float %i.eyr, i64 0
  %i.eyx = shufflevector <2 x float> %i.eyw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.eyy = insertelement <2 x float> %i.eyx, float %.sroa.0866.0.i745, i64 1
  %i.eyz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eyx, <2 x float> %i.eyy, <2 x float> %i.exm) ; 3 uses
  %i.eza = extractelement <2 x float> %i.eyz, i64 0 ; 2 uses
  %sqrt914.i799 = call nnan float @llvm.sqrt.f32(float %i.eza)
  %i.ezb = fmul float %i.eza, %sqrt914.i799
  %i.ezc = fdiv float 1.000000e+00, %i.ezb
  %i.ezd = extractelement <2 x float> %i.eyz, i64 1
  %i.eze = insertelement <2 x float> %i.eyz, float %i.eyv, i64 0
  %i.ezf = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.eze)
  %i.ezg = fpext <2 x float> %i.ezf to <2 x double> ; 2 uses
  %i.ezh = extractelement <2 x double> %i.ezg, i64 0
  %i.ezi = fadd double %i.ezh, 1.000000e+00
  %i.ezj = fdiv double 1.000000e+00, %i.ezi
  %i.ezk = fptrunc double %i.ezj to float
  %i.ezl = extractelement <2 x double> %i.ezg, i64 1
  %i.ezm = fcmp ugt double %i.ezl, 1.000000e-02
  %.0527.i804 = select i1 %i.ezm, float %i.ezd, float f0x358637BD
  %i.ezn = fmul float %i.ezc, %i.ezk
  %i.ezo = fmul float %.0527.i804, %i.ezn
  %i.ezp = call float @llvm.fabs.f32(float %i.ezo) ; 3 uses
  %i.ezq = getelementptr inbounds nuw i8, ptr %i.eyl, i64 1
  %i.ezr = load i8, ptr %i.ezq, align 1, !tbaa !26
  %.not557.i805 = icmp eq i8 %i.ezr, 2
  %i.ezs = zext nneg i32 %i.eyc to i64            ; 2 uses
  %i.ezt = getelementptr inbounds nuw i8, ptr %.sink.i819.i765, i64 %i.ezs
  %i.ezu = load i8, ptr %i.ezt, align 1, !tbaa !26
  %.not558.i806 = icmp eq i8 %i.ezu, 2            ; 2 uses
  br i1 %.not557.i805, label %bb.aby, label %bb.abv

bb.abv:                                           ; preds = %bb.abu
  %i.ezv = add nsw i32 %.1524928.i785, %.neg554.i790
  %i.ezw = load i64, ptr %i.doa, align 8          ; 3 uses
  %i.ezx = mul i64 %i.ezw, %i.exn
  %i.ezy = zext nneg i32 %i.ezv to i64
  %i.ezz = sext i32 %i.eyf to i64
  %.sink.idx.i832.i828 = select i1 %i.evc, i64 0, i64 %i.ezx
  %.sink.i833.i829 = getelementptr inbounds nuw i8, ptr %i.evd, i64 %.sink.idx.i832.i828 ; 2 uses
  %i.faa = getelementptr inbounds nuw [4 x i8], ptr %.sink.i833.i829, i64 %i.ezy
  %i.fab = load float, ptr %i.faa, align 4, !tbaa !92 ; 2 uses
  %i.fac = getelementptr [4 x i8], ptr %.sink.i833.i829, i64 %i.ezz ; 2 uses
  br i1 %.not558.i806, label %bb.abx, label %bb.abw

bb.abw:                                           ; preds = %bb.abv
  %i.fad = getelementptr i8, ptr %i.fac, i64 -4
  %i.fae = load float, ptr %i.fad, align 4, !tbaa !92
  %i.faf = fsub float %i.fab, %i.fae
  %i.fag = fmul float %i.faf, 2.000000e+00
  br label %bb.aca

bb.abx:                                           ; preds = %bb.abv
  %i.fah = load float, ptr %i.fac, align 4, !tbaa !92
  %i.fai = fsub float %i.fab, %i.fah
  br label %bb.aca

bb.aby:                                           ; preds = %bb.abu
  %.pre1079.i812.pre = load i64, ptr %i.doa, align 8 ; 3 uses
  br i1 %.not558.i806, label %bb.aca, label %bb.abz

bb.abz:                                           ; preds = %bb.aby
  %i.faj = mul i64 %.pre1079.i812.pre, %i.exn
  %.sink.idx.i838.i830 = select i1 %i.evc, i64 0, i64 %i.faj
  %.sink.i839.i831 = getelementptr inbounds nuw i8, ptr %i.evd, i64 %.sink.idx.i838.i830 ; 2 uses
  %i.fak = sext i32 %i.eyh to i64
  %i.fal = getelementptr inbounds [4 x i8], ptr %.sink.i839.i831, i64 %i.fak
  %i.fam = load float, ptr %i.fal, align 4, !tbaa !92
  %i.fan = sext i32 %i.eyf to i64
  %i.fao = getelementptr [4 x i8], ptr %.sink.i839.i831, i64 %i.fan
  %i.fap = getelementptr i8, ptr %i.fao, i64 -4
  %i.faq = load float, ptr %i.fap, align 4, !tbaa !92
  %i.far = fsub float %i.fam, %i.faq
  br label %bb.aca

bb.aca:                                           ; preds = %bb.abz, %bb.aby, %bb.abx, %bb.abw
  %.pre1079.i812 = phi i64 [ %i.ezw, %bb.abw ], [ %.pre1079.i812.pre, %bb.abz ], [ %i.ezw, %bb.abx ], [ %.pre1079.i812.pre, %bb.aby ] ; 6 uses
  %.sroa.0868.0.i809 = phi float [ %i.fag, %bb.abw ], [ %i.far, %bb.abz ], [ %i.fai, %bb.abx ], [ 0.000000e+00, %bb.aby ]
  %i.fas = getelementptr inbounds nuw i8, ptr %.sink.i843.i767, i64 %i.eyk
  %i.fat = load i8, ptr %i.fas, align 1, !tbaa !26
  %.not560.i810 = icmp eq i8 %i.fat, 2
  %i.fau = getelementptr inbounds nuw i8, ptr %.sink.i845.i769, i64 %i.eyk
  %i.fav = load i8, ptr %i.fau, align 1, !tbaa !26
  %.not561.i811 = icmp eq i8 %i.fav, 2            ; 2 uses
  br i1 %.not560.i810, label %bb.ace, label %bb.acb

bb.acb:                                           ; preds = %bb.aca
  %i.faw = mul i64 %.pre1079.i812, %i.exu
  %i.fax = sext i32 %i.eyf to i64                 ; 3 uses
  %.sink.idx.i850.i820 = select i1 %i.evc, i64 0, i64 %i.faw
  %.sink.i851.i821 = getelementptr inbounds nuw i8, ptr %i.evd, i64 %.sink.idx.i850.i820
  %i.fay = getelementptr inbounds [4 x i8], ptr %.sink.i851.i821, i64 %i.fax
  %i.faz = load float, ptr %i.fay, align 4, !tbaa !92 ; 2 uses
  br i1 %.not561.i811, label %bb.acd, label %bb.acc

bb.acc:                                           ; preds = %bb.acb
  %i.fba = mul i64 %.pre1079.i812, %i.exw
  %.sink.idx.i848.i815 = select i1 %i.evc, i64 0, i64 %i.fba
  %.sink.i849.i816 = getelementptr inbounds nuw i8, ptr %i.evd, i64 %.sink.idx.i848.i815
  %i.fbb = getelementptr inbounds [4 x i8], ptr %.sink.i849.i816, i64 %i.fax
  %i.fbc = load float, ptr %i.fbb, align 4, !tbaa !92
  %i.fbd = fsub float %i.faz, %i.fbc
  %i.fbe = fmul float %i.fbd, 2.000000e+00
  br label %bb.acg

bb.acd:                                           ; preds = %bb.acb
  %i.fbf = mul i64 %.pre1079.i812, %i.exn
  %.sink.idx.i852.i822 = select i1 %i.evc, i64 0, i64 %i.fbf
  %.sink.i853.i823 = getelementptr inbounds nuw i8, ptr %i.evd, i64 %.sink.idx.i852.i822
  %i.fbg = getelementptr inbounds [4 x i8], ptr %.sink.i853.i823, i64 %i.fax
  %i.fbh = load float, ptr %i.fbg, align 4, !tbaa !92
  %i.fbi = fsub float %i.faz, %i.fbh
  br label %bb.acg

bb.ace:                                           ; preds = %bb.aca
  br i1 %.not561.i811, label %bb.acg, label %bb.acf

bb.acf:                                           ; preds = %bb.ace
  %i.fbj = mul i64 %.pre1079.i812, %i.exx
  %.sink.idx.i856.i824 = select i1 %i.evc, i64 0, i64 %i.fbj
  %.sink.i857.i825 = getelementptr inbounds nuw i8, ptr %i.evd, i64 %.sink.idx.i856.i824
  %i.fbk = sext i32 %i.eyf to i64                 ; 2 uses
  %i.fbl = getelementptr inbounds [4 x i8], ptr %.sink.i857.i825, i64 %i.fbk
  %i.fbm = load float, ptr %i.fbl, align 4, !tbaa !92
  %i.fbn = mul i64 %.pre1079.i812, %i.exw
  %.sink.idx.i858.i826 = select i1 %i.evc, i64 0, i64 %i.fbn
  %.sink.i859.i827 = getelementptr inbounds nuw i8, ptr %i.evd, i64 %.sink.idx.i858.i826
  %i.fbo = getelementptr inbounds [4 x i8], ptr %.sink.i859.i827, i64 %i.fbk
  %i.fbp = load float, ptr %i.fbo, align 4, !tbaa !92
  %i.fbq = fsub float %i.fbm, %i.fbp
  br label %bb.acg

bb.acg:                                           ; preds = %bb.acf, %bb.ace, %bb.acd, %bb.acc
  %.sroa.8869.0.i817 = phi float [ %i.fbe, %bb.acc ], [ %i.fbq, %bb.acf ], [ %i.fbi, %bb.acd ], [ 0.000000e+00, %bb.ace ]
  %i.fbr = mul i64 %.pre1079.i812, %i.exr
  %.sink.idx.i860.i818 = select i1 %i.evc, i64 0, i64 %i.fbr
  %.sink.i861.i819 = getelementptr inbounds nuw i8, ptr %i.evd, i64 %.sink.idx.i860.i818
  %i.fbs = getelementptr inbounds nuw [4 x i8], ptr %.sink.i861.i819, i64 %i.ezs
  %i.fbt = load float, ptr %i.fbs, align 4, !tbaa !92
  %i.fbu = call float @llvm.fmuladd.f32(float %i.ezp, float %i.fbt, float %.1543924.i789)
  %i.fbv = insertelement <2 x float> poison, float %.sroa.0868.0.i809, i64 0
  %i.fbw = insertelement <2 x float> %i.fbv, float %.sroa.8869.0.i817, i64 1
  %i.fbx = insertelement <2 x float> %i.eya, float %i.eyr, i64 0
  %i.fby = fmul <2 x float> %i.fbw, %i.fbx
  %i.fbz = fneg float %i.ezp
  %i.fca = insertelement <2 x float> poison, float %i.fbz, i64 0
  %i.fcb = shufflevector <2 x float> %i.fca, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fcc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fcb, <2 x float> %i.fby, <2 x float> %i.eyb)
  %i.fcd = fadd float %.1534927.i786, %i.ezp
  br label %bb.ach

bb.ach:                                           ; preds = %bb.acg, %bb.abt, %bb.abs, %.lr.ph.split.split.i784
  %.2544.i792 = phi float [ %i.fbu, %bb.acg ], [ %.1543924.i789, %bb.abt ], [ %.1543924.i789, %bb.abs ], [ %.1543924.i789, %.lr.ph.split.split.i784 ] ; 2 uses
  %.2535.i795 = phi float [ %i.fcd, %bb.acg ], [ %.1534927.i786, %bb.abt ], [ %.1534927.i786, %bb.abs ], [ %.1534927.i786, %.lr.ph.split.split.i784 ] ; 2 uses
  %i.fce = phi <2 x float> [ %i.fcc, %bb.acg ], [ %i.eyb, %bb.abt ], [ %i.eyb, %bb.abs ], [ %i.eyb, %.lr.ph.split.split.i784 ] ; 2 uses
  %i.fcf = add nsw i32 %.1524928.i785, 1
  %.not553.not.i796 = icmp slt i32 %.1524928.i785, %i.eux
  br i1 %.not553.not.i796, label %.lr.ph.split.split.i784, label %._crit_edge.i770, !llvm.loop !146

._crit_edge.i770:                                 ; preds = %bb.ach, %.lr.ph.split.i782, %.lr.ph.i757
  %.us-phi.i771 = phi float [ %.0542957.i762, %.lr.ph.i757 ], [ %.0542957.i762, %.lr.ph.split.i782 ], [ %.2544.i792, %bb.ach ] ; 2 uses
  %.us-phi935.i774 = phi float [ %.0533960.i759, %.lr.ph.i757 ], [ %.0533960.i759, %.lr.ph.split.i782 ], [ %.2535.i795, %bb.ach ] ; 2 uses
  %i.fcg = phi <2 x float> [ %i.ewv, %.lr.ph.i757 ], [ %i.ewv, %.lr.ph.split.i782 ], [ %i.fce, %bb.ach ] ; 3 uses
  %.not552.i775 = icmp sgt i32 %i.exo, %i.euu
  br i1 %.not552.i775, label %._crit_edge964.loopexit1044.i776, label %.lr.ph.i757, !llvm.loop !147

._crit_edge964.loopexit1044.i776:                 ; preds = %._crit_edge.i770
  %i.fch = fdiv float %.us-phi.i771, %.us-phi935.i774
  %i.fci = extractelement <2 x float> %i.fcg, i64 0 ; 3 uses
  %i.fcj = extractelement <2 x float> %i.fcg, i64 1 ; 3 uses
  %i.fck = fadd float %i.fci, %i.fcj
  %i.fcl = fmul float %i.fcj, %i.fcj
end_hunk_2
begin_hunk_3_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.gco = fneg double %i.gcj
  %i.gcp = call double @llvm.fmuladd.f64(double %i.gco, double %i.gcj, double 2.000000e+00)
  %i.gcq = call double @sqrt(double noundef %i.gcp) #20
  %i.gcr = fadd double %i.gcn, %i.gcq
  %i.gcs = fmul double %i.gcr, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i

bb.ags:                                           ; preds = %bb.ago
  %i.gct = fadd double %i.gcd, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i

bb.agt:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i
  br i1 %.not31.i587.i, label %bb.agv, label %bb.agu

bb.agu:                                           ; preds = %bb.agt
  %i.gcu = fadd double %i.gbb, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i

bb.agv:                                           ; preds = %bb.agt
  %i.gcv = fadd double %i.gcf, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i: ; preds = %bb.agv, %bb.agu, %bb.ags, %bb.agr, %bb.agq
  %.0.i588.i = phi double [ %i.gcm, %bb.agq ], [ %i.gcs, %bb.agr ], [ %i.gct, %bb.ags ], [ %i.gcu, %bb.agu ], [ %i.gcv, %bb.agv ]
  %i.gcw = fptrunc double %.0.i588.i to float     ; 2 uses
  %i.gcx = add nuw nsw i32 %.5391.i, 1
  %i.gcy = zext nneg i32 %i.gcx to i64            ; 2 uses
  %i.gcz = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i, i64 %i.gcy
  %i.gda = load float, ptr %i.gcz, align 4, !tbaa !92 ; 3 uses
  %i.gdb = fpext float %i.gda to double           ; 8 uses
  %i.gdc = fcmp ogt float %i.gav, %i.gda
  %i.gdd = select i1 %i.gdc, double %i.gdb, double %i.gaw ; 2 uses
  %i.gde = load i8, ptr %i.gbf, align 1, !tbaa !26
  %.not.i596.i = icmp eq i8 %i.gde, 2
  %i.gdf = getelementptr inbounds nuw i8, ptr %.sink.i565.i, i64 %i.gcy ; 2 uses
  %i.gdg = load i8, ptr %i.gdf, align 1, !tbaa !26
  %.not31.i599.i = icmp eq i8 %i.gdg, 2           ; 2 uses
  br i1 %.not.i596.i, label %bb.ahb, label %bb.agw

bb.agw:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i
  br i1 %.not31.i599.i, label %bb.aha, label %bb.agx

bb.agx:                                           ; preds = %bb.agw
  %i.gdh = fsub double %i.gaw, %i.gdb             ; 3 uses
  %i.gdi = call double @llvm.fabs.f64(double %i.gdh)
  %i.gdj = fcmp ult double %i.gdi, 1.000000e+00
  br i1 %i.gdj, label %bb.agz, label %bb.agy

bb.agy:                                           ; preds = %bb.agx
  %i.gdk = fadd double %i.gdd, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i

bb.agz:                                           ; preds = %bb.agx
  %i.gdl = fadd double %i.gaw, %i.gdb
  %i.gdm = fneg double %i.gdh
  %i.gdn = call double @llvm.fmuladd.f64(double %i.gdm, double %i.gdh, double 2.000000e+00)
  %i.gdo = call double @sqrt(double noundef %i.gdn) #20
  %i.gdp = fadd double %i.gdl, %i.gdo
  %i.gdq = fmul double %i.gdp, 5.000000e-01
  %.pr708.pre.i = load i8, ptr %i.gdf, align 1, !tbaa !26
  %i.gdr = icmp eq i8 %.pr708.pre.i, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i

bb.aha:                                           ; preds = %bb.agw
  %i.gds = fadd double %i.gaw, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i

bb.ahb:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i
  br i1 %.not31.i599.i, label %bb.ahd, label %bb.ahc

bb.ahc:                                           ; preds = %bb.ahb
  %i.gdt = fadd double %i.gdb, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i

bb.ahd:                                           ; preds = %bb.ahb
  %i.gdu = fadd double %i.gdd, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i: ; preds = %bb.ahd, %bb.ahc, %bb.aha, %bb.agz, %bb.agy
  %.not31.i611.i = phi i1 [ true, %bb.ahd ], [ true, %bb.aha ], [ false, %bb.ahc ], [ %i.gdr, %bb.agz ], [ false, %bb.agy ] ; 2 uses
  %.0.i600.i = phi double [ %i.gdu, %bb.ahd ], [ %i.gds, %bb.aha ], [ %i.gdt, %bb.ahc ], [ %i.gdq, %bb.agz ], [ %i.gdk, %bb.agy ]
  %i.gdv = fptrunc double %.0.i600.i to float     ; 2 uses
  %i.gdw = fcmp ogt float %i.gcc, %i.gda
  %i.gdx = select i1 %i.gdw, double %i.gdb, double %i.gcd ; 2 uses
  %i.gdy = load i8, ptr %i.gch, align 1, !tbaa !26
  %.not.i608.i = icmp eq i8 %i.gdy, 2
  br i1 %.not.i608.i, label %bb.ahj, label %bb.ahe

bb.ahe:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i
  br i1 %.not31.i611.i, label %bb.ahi, label %bb.ahf

bb.ahf:                                           ; preds = %bb.ahe
  %i.gdz = fsub double %i.gcd, %i.gdb             ; 3 uses
  %i.gea = call double @llvm.fabs.f64(double %i.gdz)
  %i.geb = fcmp ult double %i.gea, 1.000000e+00
  br i1 %i.geb, label %bb.ahh, label %bb.ahg

bb.ahg:                                           ; preds = %bb.ahf
  %i.gec = fadd double %i.gdx, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i

bb.ahh:                                           ; preds = %bb.ahf
  %i.ged = fadd double %i.gcd, %i.gdb
  %i.gee = fneg double %i.gdz
  %i.gef = call double @llvm.fmuladd.f64(double %i.gee, double %i.gdz, double 2.000000e+00)
  %i.geg = call double @sqrt(double noundef %i.gef) #20
  %i.geh = fadd double %i.ged, %i.geg
  %i.gei = fmul double %i.geh, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i

bb.ahi:                                           ; preds = %bb.ahe
  %i.gej = fadd double %i.gcd, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i

bb.ahj:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i
  br i1 %.not31.i611.i, label %bb.ahl, label %bb.ahk

bb.ahk:                                           ; preds = %bb.ahj
  %i.gek = fadd double %i.gdb, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i

bb.ahl:                                           ; preds = %bb.ahj
  %i.gel = fadd double %i.gdx, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i: ; preds = %bb.ahl, %bb.ahk, %bb.ahi, %bb.ahh, %bb.ahg
  %.0.i612.i = phi double [ %i.gec, %bb.ahg ], [ %i.gei, %bb.ahh ], [ %i.gej, %bb.ahi ], [ %i.gek, %bb.ahk ], [ %i.gel, %bb.ahl ]
  %i.gem = fptrunc double %.0.i612.i to float     ; 2 uses
  %i.gen = fcmp ogt float %i.gbx, %i.gcw
  %i.geo = select i1 %i.gen, float %i.gcw, float %i.gbx ; 2 uses
  %i.gep = fcmp ogt float %i.gdv, %i.gem
  %i.geq = select i1 %i.gep, float %i.gem, float %i.gdv ; 2 uses
  %i.ger = fcmp ogt float %i.geo, %i.geq
  %i.ges = select i1 %i.ger, float %i.geq, float %i.geo ; 2 uses
  %i.get = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i, i64 %i.gai
  store float %i.ges, ptr %i.get, align 4, !tbaa !92
  %i.geu = add nuw nsw i32 %.5.fr.i1110, %i.dp
  %i.gev = add nsw i32 %i.gaa, -2
  %i.gew = sub nsw i32 %.5391.i, %i.dp
  %i.gex = add nuw nsw i32 %.5391.i, %i.dp
  %i.gey = add nsw i32 %i.gab, -2
  %i.gez = add nsw i32 %i.gaa, -1
  %i.gfa = add nsw i32 %i.gab, -1
  %i.gfb = sub nsw i32 %.5.fr.i1110, %i.dp
  %i.gfc = load i64, ptr %i.fdp, align 8          ; 3 uses
  br label %.lr.ph.i1115

.lr.ph.i1115:                                     ; preds = %._crit_edge.i1117, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i
  %.1393740.i = phi i32 [ %i.gfq, %._crit_edge.i1117 ], [ %i.gfb, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i ] ; 10 uses
  %.0401739.i = phi float [ %.us-phi724.i, %._crit_edge.i1117 ], [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i ] ; 3 uses
  %.0404738.i = phi float [ %.us-phi.i1118, %._crit_edge.i1117 ], [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i ] ; 3 uses
  %i.gfd = add nsw i32 %.1393740.i, -1            ; 3 uses
  %i.gfe = icmp eq i32 %.1393740.i, 1
  %i.gff = zext i1 %i.gfe to i32
  %i.gfg = add nsw i32 %i.gfd, %i.gff             ; 2 uses
  %i.gfh = icmp eq i32 %.1393740.i, %i.gev
  %.neg.i1116 = sext i1 %i.gfh to i32             ; 2 uses
  %i.gfi = add i32 %i.gfd, %.neg.i1116
  %i.gfj = icmp sgt i32 %.1393740.i, 0
  %i.gfk = zext nneg i32 %.1393740.i to i64
  %i.gfl = sub nsw i32 %.1393740.i, %.5.fr.i1110  ; 2 uses
  %i.gfm = mul nsw i32 %i.gfl, %i.gfl
  %i.gfn = sub nsw i32 %.5.fr.i1110, %.1393740.i
  %i.gfo = sitofp i32 %i.gfn to float             ; 3 uses
  %i.gfp = fmul nnan float %i.gfo, %i.gfo
  %i.gfq = add i32 %.1393740.i, 1                 ; 3 uses
  %i.gfr = zext nneg i32 %i.gfq to i64
  %i.gfs = zext nneg i32 %i.gfd to i64            ; 2 uses
  %i.gft = add i32 %.1393740.i, %.neg.i1116
  %i.gfu = sext i32 %i.gft to i64
  %i.gfv = sext i32 %i.gfi to i64                 ; 2 uses
  %i.gfw = add nsw i32 %i.gfg, -1
  %i.gfx = sext i32 %i.gfw to i64                 ; 2 uses
  %i.gfy = sext i32 %i.gfg to i64                 ; 2 uses
  br i1 %i.gfj, label %.lr.ph.split.i1119, label %._crit_edge.i1117

.lr.ph.split.i1119:                               ; preds = %.lr.ph.i1115
  %i.gfz = icmp slt i32 %.1393740.i, %i.gez
  %.fr736.i = freeze i1 %i.gfz
  br i1 %.fr736.i, label %.lr.ph.split.split.i1120.preheader, label %._crit_edge.i1117

.lr.ph.split.split.i1120.preheader:               ; preds = %.lr.ph.split.i1119
  %i.gga = mul i64 %i.gfc, %i.gfk
  %.sink.idx.i616.i = select i1 %i.gad, i64 0, i64 %i.gga
  %.sink.i617.i = getelementptr inbounds nuw i8, ptr %i.gae, i64 %.sink.idx.i616.i ; 2 uses
  %i.ggb = mul i64 %i.gfc, %i.gfr
  %.sink.idx.i618.i = select i1 %i.gad, i64 0, i64 %i.ggb
  %.sink.i619.i = getelementptr inbounds nuw i8, ptr %i.gae, i64 %.sink.idx.i618.i
  %i.ggc = mul i64 %i.gfc, %i.gfs
  %.sink.idx.i634.i = select i1 %i.gad, i64 0, i64 %i.ggc
  %.sink.i635.i = getelementptr inbounds nuw i8, ptr %i.gae, i64 %.sink.idx.i634.i
  br label %.lr.ph.split.split.i1120

.lr.ph.split.split.i1120:                         ; preds = %.lr.ph.split.split.i1120.preheader, %bb.aid
  %.1395721.i = phi i32 [ %i.glg, %bb.aid ], [ %i.gew, %.lr.ph.split.split.i1120.preheader ] ; 11 uses
  %.1402720.i = phi float [ %.2403.i, %bb.aid ], [ %.0401739.i, %.lr.ph.split.split.i1120.preheader ] ; 4 uses
  %.1405719.i = phi float [ %.2406.i, %bb.aid ], [ %.0404738.i, %.lr.ph.split.split.i1120.preheader ] ; 4 uses
  %i.ggd = add nsw i32 %.1395721.i, -1            ; 2 uses
  %i.gge = icmp eq i32 %.1395721.i, 1
  %i.ggf = zext i1 %i.gge to i32
  %i.ggg = add nuw nsw i32 %i.ggd, %i.ggf         ; 4 uses
  %i.ggh = icmp eq i32 %.1395721.i, %i.gey
  %.neg411.i = sext i1 %i.ggh to i32
  %i.ggi = icmp sgt i32 %.1395721.i, 0
  %i.ggj = icmp slt i32 %.1395721.i, %i.gfa
  %or.cond771.i = select i1 %i.ggi, i1 %i.ggj, i1 false
  br i1 %or.cond771.i, label %bb.ahm, label %bb.aid

bb.ahm:                                           ; preds = %.lr.ph.split.split.i1120
  %i.ggk = zext nneg i32 %.1395721.i to i64       ; 3 uses
  %i.ggl = getelementptr inbounds nuw i8, ptr %.sink.i617.i, i64 %i.ggk ; 2 uses
  %i.ggm = load i8, ptr %i.ggl, align 1, !tbaa !26
  %.not412.i = icmp eq i8 %i.ggm, 2
  br i1 %.not412.i, label %bb.aid, label %bb.ahn

bb.ahn:                                           ; preds = %bb.ahm
  %i.ggn = sub nsw i32 %.1395721.i, %.5391.i      ; 2 uses
  %i.ggo = mul nsw i32 %i.ggn, %i.ggn
  %i.ggp = add nuw nsw i32 %i.ggo, %i.gfm
  %.not413.i = icmp samesign ugt i32 %i.ggp, %i.fdv
  br i1 %.not413.i, label %bb.aid, label %bb.aho

bb.aho:                                           ; preds = %bb.ahn
  %i.ggq = sub nsw i32 %.5391.i, %.1395721.i
  %i.ggr = sitofp i32 %i.ggq to float             ; 3 uses
  %i.ggs = call noundef float @llvm.fmuladd.f32(float %i.ggr, float %i.ggr, float %i.gfp) ; 3 uses
  %i.ggt = call nnan float @llvm.fmuladd.f32(float %i.ggs, float %i.ggs, float 1.000000e+00)
  %i.ggu = fdiv nnan float 1.000000e+00, %i.ggt
  %i.ggv = getelementptr inbounds nuw i8, ptr %.sink.i619.i, i64 %i.ggk
  %i.ggw = load i8, ptr %i.ggv, align 1, !tbaa !26
  %.not414.i = icmp eq i8 %i.ggw, 2
  %i.ggx = getelementptr inbounds nuw i8, ptr %.sink.i635.i, i64 %i.ggk
  %i.ggy = load i8, ptr %i.ggx, align 1, !tbaa !26
  %.not415.i = icmp eq i8 %i.ggy, 2               ; 2 uses
  br i1 %.not414.i, label %bb.ahs, label %bb.ahp

bb.ahp:                                           ; preds = %bb.aho
  %i.ggz = load i32, ptr %i.fdw, align 4, !tbaa !42
  %i.gha = icmp slt i32 %i.ggz, 2                 ; 3 uses
  %i.ghb = load ptr, ptr %i.fdx, align 8, !tbaa !43 ; 3 uses
  %i.ghc = load i64, ptr %i.fdy, align 8          ; 3 uses
  %i.ghd = mul i64 %i.ghc, %i.gfu
  %.sink.idx.i630.i = select i1 %i.gha, i64 0, i64 %i.ghd
  %.sink.i631.i = getelementptr inbounds nuw i8, ptr %i.ghb, i64 %.sink.idx.i630.i
  %i.ghe = sext i32 %i.ggg to i64                 ; 3 uses
  %i.ghf = getelementptr inbounds i8, ptr %.sink.i631.i, i64 %i.ghe
  %i.ghg = load i8, ptr %i.ghf, align 1, !tbaa !26
  %i.ghh = zext i8 %i.ghg to i32
  %i.ghi = mul i64 %i.ghc, %i.gfv
  %.sink.idx.i632.i = select i1 %i.gha, i64 0, i64 %i.ghi
  %.sink.i633.i = getelementptr inbounds nuw i8, ptr %i.ghb, i64 %.sink.idx.i632.i
  %i.ghj = getelementptr inbounds i8, ptr %.sink.i633.i, i64 %i.ghe
  %i.ghk = load i8, ptr %i.ghj, align 1, !tbaa !26
  %i.ghl = zext i8 %i.ghk to i32                  ; 2 uses
  %i.ghm = sub nsw i32 %i.ghh, %i.ghl
  %i.ghn = call i32 @llvm.abs.i32(i32 %i.ghm, i1 true) ; 2 uses
  br i1 %.not415.i, label %bb.ahr, label %bb.ahq

bb.ahq:                                           ; preds = %bb.ahp
  %i.gho = mul i64 %i.ghc, %i.gfx
  %.sink.idx.i628.i = select i1 %i.gha, i64 0, i64 %i.gho
  %.sink.i629.i = getelementptr inbounds nuw i8, ptr %i.ghb, i64 %.sink.idx.i628.i
  %i.ghp = getelementptr inbounds i8, ptr %.sink.i629.i, i64 %i.ghe
  %i.ghq = load i8, ptr %i.ghp, align 1, !tbaa !26
  %i.ghr = zext i8 %i.ghq to i32
  %i.ghs = sub nsw i32 %i.ghl, %i.ghr
  %i.ght = call i32 @llvm.abs.i32(i32 %i.ghs, i1 true)
  %i.ghu = add nuw nsw i32 %i.ght, %i.ghn
  %i.ghv = uitofp nneg i32 %i.ghu to float
  br label %bb.ahu

bb.ahr:                                           ; preds = %bb.ahp
  %i.ghw = uitofp nneg i32 %i.ghn to float
  %i.ghx = fmul nnan float %i.ghw, 2.000000e+00
  br label %bb.ahu

bb.ahs:                                           ; preds = %bb.aho
  br i1 %.not415.i, label %bb.ahu, label %bb.aht

bb.aht:                                           ; preds = %bb.ahs
  %i.ghy = load i32, ptr %i.fdw, align 4, !tbaa !42
  %i.ghz = icmp slt i32 %i.ghy, 2                 ; 2 uses
  %i.gia = load ptr, ptr %i.fdx, align 8, !tbaa !43 ; 2 uses
  %i.gib = load i64, ptr %i.fdy, align 8          ; 2 uses
  %i.gic = mul i64 %i.gib, %i.gfv
  %.sink.idx.i636.i = select i1 %i.ghz, i64 0, i64 %i.gic
  %.sink.i637.i = getelementptr inbounds nuw i8, ptr %i.gia, i64 %.sink.idx.i636.i
  %i.gid = sext i32 %i.ggg to i64                 ; 2 uses
  %i.gie = getelementptr inbounds i8, ptr %.sink.i637.i, i64 %i.gid
  %i.gif = load i8, ptr %i.gie, align 1, !tbaa !26
  %i.gig = zext i8 %i.gif to i32
  %i.gih = mul i64 %i.gib, %i.gfx
  %.sink.idx.i638.i = select i1 %i.ghz, i64 0, i64 %i.gih
  %.sink.i639.i = getelementptr inbounds nuw i8, ptr %i.gia, i64 %.sink.idx.i638.i
  %i.gii = getelementptr inbounds i8, ptr %.sink.i639.i, i64 %i.gid
  %i.gij = load i8, ptr %i.gii, align 1, !tbaa !26
  %i.gik = zext i8 %i.gij to i32
  %i.gil = sub nsw i32 %i.gig, %i.gik
  %i.gim = call i32 @llvm.abs.i32(i32 %i.gil, i1 true)
  %i.gin = uitofp nneg i32 %i.gim to float
  %i.gio = fmul nnan float %i.gin, 2.000000e+00
  br label %bb.ahu

bb.ahu:                                           ; preds = %bb.aht, %bb.ahs, %bb.ahr, %bb.ahq
  %.sroa.0668.0.i = phi float [ %i.ghv, %bb.ahq ], [ %i.gio, %bb.aht ], [ %i.ghx, %bb.ahr ], [ 0.000000e+00, %bb.ahs ] ; 3 uses
  %i.gip = getelementptr inbounds nuw i8, ptr %i.ggl, i64 1
  %i.giq = load i8, ptr %i.gip, align 1, !tbaa !26
  %.not417.i = icmp eq i8 %i.giq, 2
  %i.gir = zext nneg i32 %i.ggd to i64            ; 2 uses
  %i.gis = getelementptr inbounds nuw i8, ptr %.sink.i617.i, i64 %i.gir
  %i.git = load i8, ptr %i.gis, align 1, !tbaa !26
  %.not418.i = icmp eq i8 %i.git, 2               ; 2 uses
  br i1 %.not417.i, label %bb.ahy, label %bb.ahv

bb.ahv:                                           ; preds = %bb.ahu
  %i.giu = add nsw i32 %.1395721.i, %.neg411.i
  %i.giv = load i32, ptr %i.fdw, align 4, !tbaa !42
  %i.giw = icmp slt i32 %i.giv, 2
  %i.gix = load ptr, ptr %i.fdx, align 8, !tbaa !43
  %i.giy = load i64, ptr %i.fdy, align 8
  %i.giz = mul i64 %i.giy, %i.gfy
  %.sink.idx.i652.i = select i1 %i.giw, i64 0, i64 %i.giz
  %.sink.i653.i = getelementptr inbounds nuw i8, ptr %i.gix, i64 %.sink.idx.i652.i ; 2 uses
  %i.gja = zext nneg i32 %i.giu to i64
  %i.gjb = getelementptr inbounds nuw i8, ptr %.sink.i653.i, i64 %i.gja
  %i.gjc = load i8, ptr %i.gjb, align 1, !tbaa !26
  %i.gjd = zext i8 %i.gjc to i32
  %i.gje = sext i32 %i.ggg to i64
  %i.gjf = getelementptr i8, ptr %.sink.i653.i, i64 %i.gje ; 2 uses
  %i.gjg = load i8, ptr %i.gjf, align 1, !tbaa !26
  %i.gjh = zext i8 %i.gjg to i32                  ; 2 uses
  %i.gji = sub nsw i32 %i.gjd, %i.gjh
  %i.gjj = call i32 @llvm.abs.i32(i32 %i.gji, i1 true) ; 2 uses
  br i1 %.not418.i, label %bb.ahx, label %bb.ahw

bb.ahw:                                           ; preds = %bb.ahv
  %i.gjk = getelementptr i8, ptr %i.gjf, i64 -1
  %i.gjl = load i8, ptr %i.gjk, align 1, !tbaa !26
  %i.gjm = zext i8 %i.gjl to i32
  %i.gjn = sub nsw i32 %i.gjh, %i.gjm
  %i.gjo = call i32 @llvm.abs.i32(i32 %i.gjn, i1 true)
  %i.gjp = add nuw nsw i32 %i.gjo, %i.gjj
  %i.gjq = uitofp nneg i32 %i.gjp to float
  br label %bb.aia

bb.ahx:                                           ; preds = %bb.ahv
  %i.gjr = uitofp nneg i32 %i.gjj to float
  %i.gjs = fmul nnan float %i.gjr, 2.000000e+00
  br label %bb.aia

bb.ahy:                                           ; preds = %bb.ahu
  br i1 %.not418.i, label %bb.aia, label %bb.ahz

bb.ahz:                                           ; preds = %bb.ahy
  %i.gjt = load i32, ptr %i.fdw, align 4, !tbaa !42
  %i.gju = icmp slt i32 %i.gjt, 2
  %i.gjv = load ptr, ptr %i.fdx, align 8, !tbaa !43
  %i.gjw = load i64, ptr %i.fdy, align 8
  %i.gjx = mul i64 %i.gjw, %i.gfy
  %.sink.idx.i658.i = select i1 %i.gju, i64 0, i64 %i.gjx
  %.sink.i659.i = getelementptr inbounds nuw i8, ptr %i.gjv, i64 %.sink.idx.i658.i
  %i.gjy = sext i32 %i.ggg to i64
  %i.gjz = getelementptr i8, ptr %.sink.i659.i, i64 %i.gjy ; 2 uses
  %i.gka = load i8, ptr %i.gjz, align 1, !tbaa !26
  %i.gkb = zext i8 %i.gka to i32
  %i.gkc = getelementptr i8, ptr %i.gjz, i64 -1
  %i.gkd = load i8, ptr %i.gkc, align 1, !tbaa !26
  %i.gke = zext i8 %i.gkd to i32
  %i.gkf = sub nsw i32 %i.gkb, %i.gke
  %i.gkg = call i32 @llvm.abs.i32(i32 %i.gkf, i1 true)
  %i.gkh = uitofp nneg i32 %i.gkg to float
  %i.gki = fmul nnan float %i.gkh, 2.000000e+00
  br label %bb.aia

bb.aia:                                           ; preds = %bb.ahz, %bb.ahy, %bb.ahx, %bb.ahw
  %.sroa.12.0.i = phi float [ %i.gjq, %bb.ahw ], [ %i.gki, %bb.ahz ], [ %i.gjs, %bb.ahx ], [ 0.000000e+00, %bb.ahy ] ; 3 uses
  %i.gkj = fneg float %.sroa.0668.0.i
  %i.gkk = fmul float %.sroa.12.0.i, %i.gfo
  %i.gkl = call noundef float @llvm.fmuladd.f32(float %i.ggr, float %i.gkj, float %i.gkk) ; 2 uses
  %i.gkm = call float @llvm.fabs.f32(float %i.gkl)
  %i.gkn = fpext float %i.gkm to double
  %i.gko = fcmp ugt double %i.gkn, 1.000000e-02
  br i1 %i.gko, label %bb.aib, label %bb.aic

bb.aib:                                           ; preds = %bb.aia
  %i.gkp = fmul float %.sroa.12.0.i, %.sroa.12.0.i
  %i.gkq = call float @llvm.fmuladd.f32(float %.sroa.0668.0.i, float %.sroa.0668.0.i, float %i.gkp)
  %i.gkr = fmul float %i.ggs, %i.gkq
  %i.gks = call noundef float @sqrtf(float noundef %i.gkr) #20
  %i.gkt = fdiv float %i.gkl, %i.gks
  %i.gku = call float @llvm.fabs.f32(float %i.gkt)
  br label %bb.aic

bb.aic:                                           ; preds = %bb.aib, %bb.aia
  %.0396.i = phi float [ %i.gku, %bb.aib ], [ f0x358637BD, %bb.aia ]
  %i.gkv = fmul float %i.ggu, %.0396.i            ; 2 uses
  %i.gkw = load i32, ptr %i.fdw, align 4, !tbaa !42
  %i.gkx = icmp slt i32 %i.gkw, 2
  %i.gky = load ptr, ptr %i.fdx, align 8, !tbaa !43
  %i.gkz = load i64, ptr %i.fdy, align 8
  %i.gla = mul i64 %i.gkz, %i.gfs
end_hunk_3
begin_hunk_4_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.hll = fneg double %i.hlg
  %i.hlm = call double @llvm.fmuladd.f64(double %i.hll, double %i.hlg, double 2.000000e+00)
  %i.hln = call double @sqrt(double noundef %i.hlm) #20
  %i.hlo = fadd double %i.hlk, %i.hln
  %i.hlp = fmul double %i.hlo, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1197

bb.ami:                                           ; preds = %bb.ame
  %i.hlq = fadd double %i.hla, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1197

bb.amj:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1189
  br i1 %.not31.i587.i1190, label %bb.aml, label %bb.amk

bb.amk:                                           ; preds = %bb.amj
  %i.hlr = fadd double %i.hjy, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1197

bb.aml:                                           ; preds = %bb.amj
  %i.hls = fadd double %i.hlc, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1197

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1197: ; preds = %bb.aml, %bb.amk, %bb.ami, %bb.amh, %bb.amg
  %.0.i588.i1198 = phi double [ %i.hlj, %bb.amg ], [ %i.hlp, %bb.amh ], [ %i.hlq, %bb.ami ], [ %i.hlr, %bb.amk ], [ %i.hls, %bb.aml ]
  %i.hlt = fptrunc double %.0.i588.i1198 to float ; 2 uses
  %i.hlu = add nuw nsw i32 %.5391.i1169, 1
  %i.hlv = zext nneg i32 %i.hlu to i64            ; 2 uses
  %i.hlw = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i1184, i64 %i.hlv
  %i.hlx = load float, ptr %i.hlw, align 4, !tbaa !92 ; 3 uses
  %i.hly = fpext float %i.hlx to double           ; 8 uses
  %i.hlz = fcmp ogt float %i.hjs, %i.hlx
  %i.hma = select i1 %i.hlz, double %i.hly, double %i.hjt ; 2 uses
  %i.hmb = load i8, ptr %i.hkc, align 1, !tbaa !26
  %.not.i596.i1199 = icmp eq i8 %i.hmb, 2
  %i.hmc = getelementptr inbounds nuw i8, ptr %.sink.i565.i1180, i64 %i.hlv ; 2 uses
  %i.hmd = load i8, ptr %i.hmc, align 1, !tbaa !26
  %.not31.i599.i1200 = icmp eq i8 %i.hmd, 2       ; 2 uses
  br i1 %.not.i596.i1199, label %bb.amr, label %bb.amm

bb.amm:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1197
  br i1 %.not31.i599.i1200, label %bb.amq, label %bb.amn

bb.amn:                                           ; preds = %bb.amm
  %i.hme = fsub double %i.hjt, %i.hly             ; 3 uses
  %i.hmf = call double @llvm.fabs.f64(double %i.hme)
  %i.hmg = fcmp ult double %i.hmf, 1.000000e+00
  br i1 %i.hmg, label %bb.amp, label %bb.amo

bb.amo:                                           ; preds = %bb.amn
  %i.hmh = fadd double %i.hma, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1201

bb.amp:                                           ; preds = %bb.amn
  %i.hmi = fadd double %i.hjt, %i.hly
  %i.hmj = fneg double %i.hme
  %i.hmk = call double @llvm.fmuladd.f64(double %i.hmj, double %i.hme, double 2.000000e+00)
  %i.hml = call double @sqrt(double noundef %i.hmk) #20
  %i.hmm = fadd double %i.hmi, %i.hml
  %i.hmn = fmul double %i.hmm, 5.000000e-01
  %.pr708.pre.i1263 = load i8, ptr %i.hmc, align 1, !tbaa !26
  %i.hmo = icmp eq i8 %.pr708.pre.i1263, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1201

bb.amq:                                           ; preds = %bb.amm
  %i.hmp = fadd double %i.hjt, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1201

bb.amr:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1197
  br i1 %.not31.i599.i1200, label %bb.amt, label %bb.ams

bb.ams:                                           ; preds = %bb.amr
  %i.hmq = fadd double %i.hly, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1201

bb.amt:                                           ; preds = %bb.amr
  %i.hmr = fadd double %i.hma, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1201

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1201: ; preds = %bb.amt, %bb.ams, %bb.amq, %bb.amp, %bb.amo
  %.not31.i611.i1202 = phi i1 [ true, %bb.amt ], [ true, %bb.amq ], [ false, %bb.ams ], [ %i.hmo, %bb.amp ], [ false, %bb.amo ] ; 2 uses
  %.0.i600.i1203 = phi double [ %i.hmr, %bb.amt ], [ %i.hmp, %bb.amq ], [ %i.hmq, %bb.ams ], [ %i.hmn, %bb.amp ], [ %i.hmh, %bb.amo ]
  %i.hms = fptrunc double %.0.i600.i1203 to float ; 2 uses
  %i.hmt = fcmp ogt float %i.hkz, %i.hlx
  %i.hmu = select i1 %i.hmt, double %i.hly, double %i.hla ; 2 uses
  %i.hmv = load i8, ptr %i.hle, align 1, !tbaa !26
  %.not.i608.i1204 = icmp eq i8 %i.hmv, 2
  br i1 %.not.i608.i1204, label %bb.amz, label %bb.amu

bb.amu:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1201
  br i1 %.not31.i611.i1202, label %bb.amy, label %bb.amv

bb.amv:                                           ; preds = %bb.amu
  %i.hmw = fsub double %i.hla, %i.hly             ; 3 uses
  %i.hmx = call double @llvm.fabs.f64(double %i.hmw)
  %i.hmy = fcmp ult double %i.hmx, 1.000000e+00
  br i1 %i.hmy, label %bb.amx, label %bb.amw

bb.amw:                                           ; preds = %bb.amv
  %i.hmz = fadd double %i.hmu, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205

bb.amx:                                           ; preds = %bb.amv
  %i.hna = fadd double %i.hla, %i.hly
  %i.hnb = fneg double %i.hmw
  %i.hnc = call double @llvm.fmuladd.f64(double %i.hnb, double %i.hmw, double 2.000000e+00)
  %i.hnd = call double @sqrt(double noundef %i.hnc) #20
  %i.hne = fadd double %i.hna, %i.hnd
  %i.hnf = fmul double %i.hne, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205

bb.amy:                                           ; preds = %bb.amu
  %i.hng = fadd double %i.hla, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205

bb.amz:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1201
  br i1 %.not31.i611.i1202, label %bb.anb, label %bb.ana

bb.ana:                                           ; preds = %bb.amz
  %i.hnh = fadd double %i.hly, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205

bb.anb:                                           ; preds = %bb.amz
  %i.hni = fadd double %i.hmu, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205: ; preds = %bb.anb, %bb.ana, %bb.amy, %bb.amx, %bb.amw
  %.0.i612.i1206 = phi double [ %i.hmz, %bb.amw ], [ %i.hnf, %bb.amx ], [ %i.hng, %bb.amy ], [ %i.hnh, %bb.ana ], [ %i.hni, %bb.anb ]
  %i.hnj = fptrunc double %.0.i612.i1206 to float ; 2 uses
  %i.hnk = fcmp ogt float %i.hku, %i.hlt
  %i.hnl = select i1 %i.hnk, float %i.hlt, float %i.hku ; 2 uses
  %i.hnm = fcmp ogt float %i.hms, %i.hnj
  %i.hnn = select i1 %i.hnm, float %i.hnj, float %i.hms ; 2 uses
  %i.hno = fcmp ogt float %i.hnl, %i.hnn
  %i.hnp = select i1 %i.hno, float %i.hnn, float %i.hnl ; 2 uses
  %i.hnq = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i1184, i64 %i.hjf
  store float %i.hnp, ptr %i.hnq, align 4, !tbaa !92
  %i.hnr = add nuw nsw i32 %.5.fr.i1171, %i.dp
  %i.hns = add nsw i32 %i.hix, -2
  %i.hnt = sub nsw i32 %.5391.i1169, %i.dp
  %i.hnu = add nuw nsw i32 %.5391.i1169, %i.dp
  %i.hnv = add nsw i32 %i.hiy, -2
  %i.hnw = add nsw i32 %i.hix, -1
  %i.hnx = add nsw i32 %i.hiy, -1
  %i.hny = sub nsw i32 %.5.fr.i1171, %i.dp
  %i.hnz = load i64, ptr %i.gmm, align 8          ; 3 uses
  br label %.lr.ph.i1207

.lr.ph.i1207:                                     ; preds = %._crit_edge.i1212, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205
  %.1393740.i1208 = phi i32 [ %i.hon, %._crit_edge.i1212 ], [ %i.hny, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205 ] ; 10 uses
  %.0401739.i1209 = phi float [ %.us-phi724.i1214, %._crit_edge.i1212 ], [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205 ] ; 3 uses
  %.0404738.i1210 = phi float [ %.us-phi.i1213, %._crit_edge.i1212 ], [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1205 ] ; 3 uses
  %i.hoa = add nsw i32 %.1393740.i1208, -1        ; 3 uses
  %i.hob = icmp eq i32 %.1393740.i1208, 1
  %i.hoc = zext i1 %i.hob to i32
  %i.hod = add nsw i32 %i.hoa, %i.hoc             ; 2 uses
  %i.hoe = icmp eq i32 %.1393740.i1208, %i.hns
  %.neg.i1211 = sext i1 %i.hoe to i32             ; 2 uses
  %i.hof = add i32 %i.hoa, %.neg.i1211
  %i.hog = icmp sgt i32 %.1393740.i1208, 0
  %i.hoh = zext nneg i32 %.1393740.i1208 to i64
  %i.hoi = sub nsw i32 %.1393740.i1208, %.5.fr.i1171 ; 2 uses
  %i.hoj = mul nsw i32 %i.hoi, %i.hoi
  %i.hok = sub nsw i32 %.5.fr.i1171, %.1393740.i1208
  %i.hol = sitofp i32 %i.hok to float             ; 3 uses
  %i.hom = fmul nnan float %i.hol, %i.hol
  %i.hon = add i32 %.1393740.i1208, 1             ; 3 uses
  %i.hoo = zext nneg i32 %i.hon to i64
  %i.hop = zext nneg i32 %i.hoa to i64            ; 2 uses
  %i.hoq = add i32 %.1393740.i1208, %.neg.i1211
  %i.hor = sext i32 %i.hoq to i64
  %i.hos = sext i32 %i.hof to i64                 ; 2 uses
  %i.hot = add nsw i32 %i.hod, -1
  %i.hou = sext i32 %i.hot to i64                 ; 2 uses
  %i.hov = sext i32 %i.hod to i64                 ; 2 uses
  br i1 %i.hog, label %.lr.ph.split.i1221, label %._crit_edge.i1212

.lr.ph.split.i1221:                               ; preds = %.lr.ph.i1207
  %i.how = icmp slt i32 %.1393740.i1208, %i.hnw
  %.fr736.i1222 = freeze i1 %i.how
  br i1 %.fr736.i1222, label %.lr.ph.split.split.i1223.preheader, label %._crit_edge.i1212

.lr.ph.split.split.i1223.preheader:               ; preds = %.lr.ph.split.i1221
  %i.hox = mul i64 %i.hnz, %i.hoh
  %.sink.idx.i616.i1232 = select i1 %i.hja, i64 0, i64 %i.hox
  %.sink.i617.i1233 = getelementptr inbounds nuw i8, ptr %i.hjb, i64 %.sink.idx.i616.i1232 ; 2 uses
  %i.hoy = mul i64 %i.hnz, %i.hoo
  %.sink.idx.i618.i1236 = select i1 %i.hja, i64 0, i64 %i.hoy
  %.sink.i619.i1237 = getelementptr inbounds nuw i8, ptr %i.hjb, i64 %.sink.idx.i618.i1236
  %i.hoz = mul i64 %i.hnz, %i.hop
  %.sink.idx.i634.i1239 = select i1 %i.hja, i64 0, i64 %i.hoz
  %.sink.i635.i1240 = getelementptr inbounds nuw i8, ptr %i.hjb, i64 %.sink.idx.i634.i1239
  br label %.lr.ph.split.split.i1223

.lr.ph.split.split.i1223:                         ; preds = %.lr.ph.split.split.i1223.preheader, %bb.ant
  %.1395721.i1224 = phi i32 [ %i.hud, %bb.ant ], [ %i.hnt, %.lr.ph.split.split.i1223.preheader ] ; 11 uses
  %.1402720.i1225 = phi float [ %.2403.i1230, %bb.ant ], [ %.0401739.i1209, %.lr.ph.split.split.i1223.preheader ] ; 4 uses
  %.1405719.i1226 = phi float [ %.2406.i1229, %bb.ant ], [ %.0404738.i1210, %.lr.ph.split.split.i1223.preheader ] ; 4 uses
  %i.hpa = add nsw i32 %.1395721.i1224, -1        ; 2 uses
  %i.hpb = icmp eq i32 %.1395721.i1224, 1
  %i.hpc = zext i1 %i.hpb to i32
  %i.hpd = add nuw nsw i32 %i.hpa, %i.hpc         ; 4 uses
  %i.hpe = icmp eq i32 %.1395721.i1224, %i.hnv
  %.neg411.i1227 = sext i1 %i.hpe to i32
  %i.hpf = icmp sgt i32 %.1395721.i1224, 0
  %i.hpg = icmp slt i32 %.1395721.i1224, %i.hnx
  %or.cond771.i1228 = select i1 %i.hpf, i1 %i.hpg, i1 false
  br i1 %or.cond771.i1228, label %bb.anc, label %bb.ant

bb.anc:                                           ; preds = %.lr.ph.split.split.i1223
  %i.hph = zext nneg i32 %.1395721.i1224 to i64   ; 3 uses
  %i.hpi = getelementptr inbounds nuw i8, ptr %.sink.i617.i1233, i64 %i.hph ; 2 uses
  %i.hpj = load i8, ptr %i.hpi, align 1, !tbaa !26
  %.not412.i1234 = icmp eq i8 %i.hpj, 2
  br i1 %.not412.i1234, label %bb.ant, label %bb.and

bb.and:                                           ; preds = %bb.anc
  %i.hpk = sub nsw i32 %.1395721.i1224, %.5391.i1169 ; 2 uses
  %i.hpl = mul nsw i32 %i.hpk, %i.hpk
  %i.hpm = add nuw nsw i32 %i.hpl, %i.hoj
  %.not413.i1235 = icmp samesign ugt i32 %i.hpm, %i.gms
  br i1 %.not413.i1235, label %bb.ant, label %bb.ane

bb.ane:                                           ; preds = %bb.and
  %i.hpn = sub nsw i32 %.5391.i1169, %.1395721.i1224
  %i.hpo = sitofp i32 %i.hpn to float             ; 3 uses
  %i.hpp = call noundef float @llvm.fmuladd.f32(float %i.hpo, float %i.hpo, float %i.hom) ; 3 uses
  %i.hpq = call nnan float @llvm.fmuladd.f32(float %i.hpp, float %i.hpp, float 1.000000e+00)
  %i.hpr = fdiv nnan float 1.000000e+00, %i.hpq
  %i.hps = getelementptr inbounds nuw i8, ptr %.sink.i619.i1237, i64 %i.hph
  %i.hpt = load i8, ptr %i.hps, align 1, !tbaa !26
  %.not414.i1238 = icmp eq i8 %i.hpt, 2
  %i.hpu = getelementptr inbounds nuw i8, ptr %.sink.i635.i1240, i64 %i.hph
  %i.hpv = load i8, ptr %i.hpu, align 1, !tbaa !26
  %.not415.i1241 = icmp eq i8 %i.hpv, 2           ; 2 uses
  br i1 %.not414.i1238, label %bb.ani, label %bb.anf

bb.anf:                                           ; preds = %bb.ane
  %i.hpw = load i32, ptr %i.gmt, align 4, !tbaa !42
  %i.hpx = icmp slt i32 %i.hpw, 2                 ; 3 uses
  %i.hpy = load ptr, ptr %i.gmu, align 8, !tbaa !43 ; 3 uses
  %i.hpz = load i64, ptr %i.gmv, align 8          ; 3 uses
  %i.hqa = mul i64 %i.hpz, %i.hor
  %.sink.idx.i630.i1242 = select i1 %i.hpx, i64 0, i64 %i.hqa
  %.sink.i631.i1243 = getelementptr inbounds nuw i8, ptr %i.hpy, i64 %.sink.idx.i630.i1242
  %i.hqb = sext i32 %i.hpd to i64                 ; 3 uses
  %i.hqc = getelementptr inbounds [2 x i8], ptr %.sink.i631.i1243, i64 %i.hqb
  %i.hqd = load i16, ptr %i.hqc, align 2, !tbaa !136
  %i.hqe = zext i16 %i.hqd to i32
  %i.hqf = mul i64 %i.hpz, %i.hos
  %.sink.idx.i632.i1244 = select i1 %i.hpx, i64 0, i64 %i.hqf
  %.sink.i633.i1245 = getelementptr inbounds nuw i8, ptr %i.hpy, i64 %.sink.idx.i632.i1244
  %i.hqg = getelementptr inbounds [2 x i8], ptr %.sink.i633.i1245, i64 %i.hqb
  %i.hqh = load i16, ptr %i.hqg, align 2, !tbaa !136
  %i.hqi = zext i16 %i.hqh to i32                 ; 2 uses
  %i.hqj = sub nsw i32 %i.hqe, %i.hqi
  %i.hqk = call i32 @llvm.abs.i32(i32 %i.hqj, i1 true) ; 2 uses
  br i1 %.not415.i1241, label %bb.anh, label %bb.ang

bb.ang:                                           ; preds = %bb.anf
  %i.hql = mul i64 %i.hpz, %i.hou
  %.sink.idx.i628.i1246 = select i1 %i.hpx, i64 0, i64 %i.hql
  %.sink.i629.i1247 = getelementptr inbounds nuw i8, ptr %i.hpy, i64 %.sink.idx.i628.i1246
  %i.hqm = getelementptr inbounds [2 x i8], ptr %.sink.i629.i1247, i64 %i.hqb
  %i.hqn = load i16, ptr %i.hqm, align 2, !tbaa !136
  %i.hqo = zext i16 %i.hqn to i32
  %i.hqp = sub nsw i32 %i.hqi, %i.hqo
  %i.hqq = call i32 @llvm.abs.i32(i32 %i.hqp, i1 true)
  %i.hqr = add nuw nsw i32 %i.hqq, %i.hqk
  %i.hqs = uitofp nneg i32 %i.hqr to float
  br label %bb.ank

bb.anh:                                           ; preds = %bb.anf
  %i.hqt = uitofp nneg i32 %i.hqk to float
  %i.hqu = fmul nnan float %i.hqt, 2.000000e+00
  br label %bb.ank

bb.ani:                                           ; preds = %bb.ane
  br i1 %.not415.i1241, label %bb.ank, label %bb.anj

bb.anj:                                           ; preds = %bb.ani
  %i.hqv = load i32, ptr %i.gmt, align 4, !tbaa !42
  %i.hqw = icmp slt i32 %i.hqv, 2                 ; 2 uses
  %i.hqx = load ptr, ptr %i.gmu, align 8, !tbaa !43 ; 2 uses
  %i.hqy = load i64, ptr %i.gmv, align 8          ; 2 uses
  %i.hqz = mul i64 %i.hqy, %i.hos
  %.sink.idx.i636.i1259 = select i1 %i.hqw, i64 0, i64 %i.hqz
  %.sink.i637.i1260 = getelementptr inbounds nuw i8, ptr %i.hqx, i64 %.sink.idx.i636.i1259
  %i.hra = sext i32 %i.hpd to i64                 ; 2 uses
  %i.hrb = getelementptr inbounds [2 x i8], ptr %.sink.i637.i1260, i64 %i.hra
  %i.hrc = load i16, ptr %i.hrb, align 2, !tbaa !136
  %i.hrd = zext i16 %i.hrc to i32
  %i.hre = mul i64 %i.hqy, %i.hou
  %.sink.idx.i638.i1261 = select i1 %i.hqw, i64 0, i64 %i.hre
  %.sink.i639.i1262 = getelementptr inbounds nuw i8, ptr %i.hqx, i64 %.sink.idx.i638.i1261
  %i.hrf = getelementptr inbounds [2 x i8], ptr %.sink.i639.i1262, i64 %i.hra
  %i.hrg = load i16, ptr %i.hrf, align 2, !tbaa !136
  %i.hrh = zext i16 %i.hrg to i32
  %i.hri = sub nsw i32 %i.hrd, %i.hrh
  %i.hrj = call i32 @llvm.abs.i32(i32 %i.hri, i1 true)
  %i.hrk = uitofp nneg i32 %i.hrj to float
  %i.hrl = fmul nnan float %i.hrk, 2.000000e+00
  br label %bb.ank

bb.ank:                                           ; preds = %bb.anj, %bb.ani, %bb.anh, %bb.ang
  %.sroa.0668.0.i1248 = phi float [ %i.hqs, %bb.ang ], [ %i.hrl, %bb.anj ], [ %i.hqu, %bb.anh ], [ 0.000000e+00, %bb.ani ] ; 3 uses
  %i.hrm = getelementptr inbounds nuw i8, ptr %i.hpi, i64 1
  %i.hrn = load i8, ptr %i.hrm, align 1, !tbaa !26
  %.not417.i1249 = icmp eq i8 %i.hrn, 2
  %i.hro = zext nneg i32 %i.hpa to i64            ; 2 uses
  %i.hrp = getelementptr inbounds nuw i8, ptr %.sink.i617.i1233, i64 %i.hro
  %i.hrq = load i8, ptr %i.hrp, align 1, !tbaa !26
  %.not418.i1250 = icmp eq i8 %i.hrq, 2           ; 2 uses
  br i1 %.not417.i1249, label %bb.ano, label %bb.anl

bb.anl:                                           ; preds = %bb.ank
  %i.hrr = add nsw i32 %.1395721.i1224, %.neg411.i1227
  %i.hrs = load i32, ptr %i.gmt, align 4, !tbaa !42
  %i.hrt = icmp slt i32 %i.hrs, 2
  %i.hru = load ptr, ptr %i.gmu, align 8, !tbaa !43
  %i.hrv = load i64, ptr %i.gmv, align 8
  %i.hrw = mul i64 %i.hrv, %i.hov
  %.sink.idx.i652.i1251 = select i1 %i.hrt, i64 0, i64 %i.hrw
  %.sink.i653.i1252 = getelementptr inbounds nuw i8, ptr %i.hru, i64 %.sink.idx.i652.i1251 ; 2 uses
  %i.hrx = zext nneg i32 %i.hrr to i64
  %i.hry = getelementptr inbounds nuw [2 x i8], ptr %.sink.i653.i1252, i64 %i.hrx
  %i.hrz = load i16, ptr %i.hry, align 2, !tbaa !136
  %i.hsa = zext i16 %i.hrz to i32
  %i.hsb = sext i32 %i.hpd to i64
  %i.hsc = getelementptr [2 x i8], ptr %.sink.i653.i1252, i64 %i.hsb ; 2 uses
  %i.hsd = load i16, ptr %i.hsc, align 2, !tbaa !136
  %i.hse = zext i16 %i.hsd to i32                 ; 2 uses
  %i.hsf = sub nsw i32 %i.hsa, %i.hse
  %i.hsg = call i32 @llvm.abs.i32(i32 %i.hsf, i1 true) ; 2 uses
  br i1 %.not418.i1250, label %bb.ann, label %bb.anm

bb.anm:                                           ; preds = %bb.anl
  %i.hsh = getelementptr i8, ptr %i.hsc, i64 -2
  %i.hsi = load i16, ptr %i.hsh, align 2, !tbaa !136
  %i.hsj = zext i16 %i.hsi to i32
  %i.hsk = sub nsw i32 %i.hse, %i.hsj
  %i.hsl = call i32 @llvm.abs.i32(i32 %i.hsk, i1 true)
  %i.hsm = add nuw nsw i32 %i.hsl, %i.hsg
  %i.hsn = uitofp nneg i32 %i.hsm to float
  br label %bb.anq

bb.ann:                                           ; preds = %bb.anl
  %i.hso = uitofp nneg i32 %i.hsg to float
  %i.hsp = fmul nnan float %i.hso, 2.000000e+00
  br label %bb.anq

bb.ano:                                           ; preds = %bb.ank
  br i1 %.not418.i1250, label %bb.anq, label %bb.anp

bb.anp:                                           ; preds = %bb.ano
  %i.hsq = load i32, ptr %i.gmt, align 4, !tbaa !42
  %i.hsr = icmp slt i32 %i.hsq, 2
  %i.hss = load ptr, ptr %i.gmu, align 8, !tbaa !43
  %i.hst = load i64, ptr %i.gmv, align 8
  %i.hsu = mul i64 %i.hst, %i.hov
  %.sink.idx.i658.i1257 = select i1 %i.hsr, i64 0, i64 %i.hsu
  %.sink.i659.i1258 = getelementptr inbounds nuw i8, ptr %i.hss, i64 %.sink.idx.i658.i1257
  %i.hsv = sext i32 %i.hpd to i64
  %i.hsw = getelementptr [2 x i8], ptr %.sink.i659.i1258, i64 %i.hsv ; 2 uses
  %i.hsx = load i16, ptr %i.hsw, align 2, !tbaa !136
  %i.hsy = zext i16 %i.hsx to i32
  %i.hsz = getelementptr i8, ptr %i.hsw, i64 -2
  %i.hta = load i16, ptr %i.hsz, align 2, !tbaa !136
  %i.htb = zext i16 %i.hta to i32
  %i.htc = sub nsw i32 %i.hsy, %i.htb
  %i.htd = call i32 @llvm.abs.i32(i32 %i.htc, i1 true)
  %i.hte = uitofp nneg i32 %i.htd to float
  %i.htf = fmul nnan float %i.hte, 2.000000e+00
  br label %bb.anq

bb.anq:                                           ; preds = %bb.anp, %bb.ano, %bb.ann, %bb.anm
  %.sroa.12.0.i1253 = phi float [ %i.hsn, %bb.anm ], [ %i.htf, %bb.anp ], [ %i.hsp, %bb.ann ], [ 0.000000e+00, %bb.ano ] ; 3 uses
  %i.htg = fneg float %.sroa.0668.0.i1248
  %i.hth = fmul float %.sroa.12.0.i1253, %i.hol
  %i.hti = call noundef float @llvm.fmuladd.f32(float %i.hpo, float %i.htg, float %i.hth) ; 2 uses
  %i.htj = call float @llvm.fabs.f32(float %i.hti)
  %i.htk = fpext float %i.htj to double
  %i.htl = fcmp ugt double %i.htk, 1.000000e-02
  br i1 %i.htl, label %bb.anr, label %bb.ans

bb.anr:                                           ; preds = %bb.anq
  %i.htm = fmul float %.sroa.12.0.i1253, %.sroa.12.0.i1253
  %i.htn = call float @llvm.fmuladd.f32(float %.sroa.0668.0.i1248, float %.sroa.0668.0.i1248, float %i.htm)
  %i.hto = fmul float %i.hpp, %i.htn
  %i.htp = call noundef float @sqrtf(float noundef %i.hto) #20
  %i.htq = fdiv float %i.hti, %i.htp
  %i.htr = call float @llvm.fabs.f32(float %i.htq)
  br label %bb.ans

bb.ans:                                           ; preds = %bb.anr, %bb.anq
  %.0396.i1254 = phi float [ %i.htr, %bb.anr ], [ f0x358637BD, %bb.anq ]
  %i.hts = fmul float %i.hpr, %.0396.i1254        ; 2 uses
  %i.htt = load i32, ptr %i.gmt, align 4, !tbaa !42
  %i.htu = icmp slt i32 %i.htt, 2
  %i.htv = load ptr, ptr %i.gmu, align 8, !tbaa !43
  %i.htw = load i64, ptr %i.gmv, align 8
  %i.htx = mul i64 %i.htw, %i.hop
end_hunk_4
begin_hunk_5_@_ZL10icvInpaintRKN2cv3MatES2_RS0_di:bb.a
  %i.iuf = fneg double %i.iua
  %i.iug = call double @llvm.fmuladd.f64(double %i.iuf, double %i.iua, double 2.000000e+00)
  %i.iuh = call double @sqrt(double noundef %i.iug) #20
  %i.iui = fadd double %i.iue, %i.iuh
  %i.iuj = fmul double %i.iui, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1476

bb.ary:                                           ; preds = %bb.aru
  %i.iuk = fadd double %i.itu, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1476

bb.arz:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit577.i1468
  br i1 %.not31.i587.i1469, label %bb.asb, label %bb.asa

bb.asa:                                           ; preds = %bb.arz
  %i.iul = fadd double %i.iss, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1476

bb.asb:                                           ; preds = %bb.arz
  %i.ium = fadd double %i.itw, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1476

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1476: ; preds = %bb.asb, %bb.asa, %bb.ary, %bb.arx, %bb.arw
  %.0.i588.i1477 = phi double [ %i.iud, %bb.arw ], [ %i.iuj, %bb.arx ], [ %i.iuk, %bb.ary ], [ %i.iul, %bb.asa ], [ %i.ium, %bb.asb ]
  %i.iun = fptrunc double %.0.i588.i1477 to float ; 2 uses
  %i.iuo = add nuw nsw i32 %.5391.i1448, 1
  %i.iup = zext nneg i32 %i.iuo to i64            ; 2 uses
  %i.iuq = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i1463, i64 %i.iup
  %i.iur = load float, ptr %i.iuq, align 4, !tbaa !92 ; 3 uses
  %i.ius = fpext float %i.iur to double           ; 8 uses
  %i.iut = fcmp ogt float %i.ism, %i.iur
  %i.iuu = select i1 %i.iut, double %i.ius, double %i.isn ; 2 uses
  %i.iuv = load i8, ptr %i.isw, align 1, !tbaa !26
  %.not.i596.i1478 = icmp eq i8 %i.iuv, 2
  %i.iuw = getelementptr inbounds nuw i8, ptr %.sink.i565.i1459, i64 %i.iup ; 2 uses
  %i.iux = load i8, ptr %i.iuw, align 1, !tbaa !26
  %.not31.i599.i1479 = icmp eq i8 %i.iux, 2       ; 2 uses
  br i1 %.not.i596.i1478, label %bb.ash, label %bb.asc

bb.asc:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1476
  br i1 %.not31.i599.i1479, label %bb.asg, label %bb.asd

bb.asd:                                           ; preds = %bb.asc
  %i.iuy = fsub double %i.isn, %i.ius             ; 3 uses
  %i.iuz = call double @llvm.fabs.f64(double %i.iuy)
  %i.iva = fcmp ult double %i.iuz, 1.000000e+00
  br i1 %i.iva, label %bb.asf, label %bb.ase

bb.ase:                                           ; preds = %bb.asd
  %i.ivb = fadd double %i.iuu, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1480

bb.asf:                                           ; preds = %bb.asd
  %i.ivc = fadd double %i.isn, %i.ius
  %i.ivd = fneg double %i.iuy
  %i.ive = call double @llvm.fmuladd.f64(double %i.ivd, double %i.iuy, double 2.000000e+00)
  %i.ivf = call double @sqrt(double noundef %i.ive) #20
  %i.ivg = fadd double %i.ivc, %i.ivf
  %i.ivh = fmul double %i.ivg, 5.000000e-01
  %.pr708.pre.i1542 = load i8, ptr %i.iuw, align 1, !tbaa !26
  %i.ivi = icmp eq i8 %.pr708.pre.i1542, 2
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1480

bb.asg:                                           ; preds = %bb.asc
  %i.ivj = fadd double %i.isn, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1480

bb.ash:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit589.i1476
  br i1 %.not31.i599.i1479, label %bb.asj, label %bb.asi

bb.asi:                                           ; preds = %bb.ash
  %i.ivk = fadd double %i.ius, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1480

bb.asj:                                           ; preds = %bb.ash
  %i.ivl = fadd double %i.iuu, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1480

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1480: ; preds = %bb.asj, %bb.asi, %bb.asg, %bb.asf, %bb.ase
  %.not31.i611.i1481 = phi i1 [ true, %bb.asj ], [ true, %bb.asg ], [ false, %bb.asi ], [ %i.ivi, %bb.asf ], [ false, %bb.ase ] ; 2 uses
  %.0.i600.i1482 = phi double [ %i.ivl, %bb.asj ], [ %i.ivj, %bb.asg ], [ %i.ivk, %bb.asi ], [ %i.ivh, %bb.asf ], [ %i.ivb, %bb.ase ]
  %i.ivm = fptrunc double %.0.i600.i1482 to float ; 2 uses
  %i.ivn = fcmp ogt float %i.itt, %i.iur
  %i.ivo = select i1 %i.ivn, double %i.ius, double %i.itu ; 2 uses
  %i.ivp = load i8, ptr %i.ity, align 1, !tbaa !26
  %.not.i608.i1483 = icmp eq i8 %i.ivp, 2
  br i1 %.not.i608.i1483, label %bb.asp, label %bb.ask

bb.ask:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1480
  br i1 %.not31.i611.i1481, label %bb.aso, label %bb.asl

bb.asl:                                           ; preds = %bb.ask
  %i.ivq = fsub double %i.itu, %i.ius             ; 3 uses
  %i.ivr = call double @llvm.fabs.f64(double %i.ivq)
  %i.ivs = fcmp ult double %i.ivr, 1.000000e+00
  br i1 %i.ivs, label %bb.asn, label %bb.asm

bb.asm:                                           ; preds = %bb.asl
  %i.ivt = fadd double %i.ivo, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484

bb.asn:                                           ; preds = %bb.asl
  %i.ivu = fadd double %i.itu, %i.ius
  %i.ivv = fneg double %i.ivq
  %i.ivw = call double @llvm.fmuladd.f64(double %i.ivv, double %i.ivq, double 2.000000e+00)
  %i.ivx = call double @sqrt(double noundef %i.ivw) #20
  %i.ivy = fadd double %i.ivu, %i.ivx
  %i.ivz = fmul double %i.ivy, 5.000000e-01
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484

bb.aso:                                           ; preds = %bb.ask
  %i.iwa = fadd double %i.itu, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484

bb.asp:                                           ; preds = %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit601.i1480
  br i1 %.not31.i611.i1481, label %bb.asr, label %bb.asq

bb.asq:                                           ; preds = %bb.asp
  %i.iwb = fadd double %i.ius, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484

bb.asr:                                           ; preds = %bb.asp
  %i.iwc = fadd double %i.ivo, 1.000000e+00
  br label %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484

_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484: ; preds = %bb.asr, %bb.asq, %bb.aso, %bb.asn, %bb.asm
  %.0.i612.i1485 = phi double [ %i.ivt, %bb.asm ], [ %i.ivz, %bb.asn ], [ %i.iwa, %bb.aso ], [ %i.iwb, %bb.asq ], [ %i.iwc, %bb.asr ]
  %i.iwd = fptrunc double %.0.i612.i1485 to float ; 2 uses
  %i.iwe = fcmp ogt float %i.ito, %i.iun
  %i.iwf = select i1 %i.iwe, float %i.iun, float %i.ito ; 2 uses
  %i.iwg = fcmp ogt float %i.ivm, %i.iwd
  %i.iwh = select i1 %i.iwg, float %i.iwd, float %i.ivm ; 2 uses
  %i.iwi = fcmp ogt float %i.iwf, %i.iwh
  %i.iwj = select i1 %i.iwi, float %i.iwh, float %i.iwf ; 2 uses
  %i.iwk = getelementptr inbounds nuw [4 x i8], ptr %.sink.i34.i569.i1463, i64 %i.irz
  store float %i.iwj, ptr %i.iwk, align 4, !tbaa !92
  %i.iwl = add nuw nsw i32 %.5.fr.i1450, %i.dp
  %i.iwm = add nsw i32 %i.irr, -2
  %i.iwn = sub nsw i32 %.5391.i1448, %i.dp
  %i.iwo = add nuw nsw i32 %.5391.i1448, %i.dp
  %i.iwp = add nsw i32 %i.irs, -2
  %i.iwq = add nsw i32 %i.irr, -1
  %i.iwr = add nsw i32 %i.irs, -1
  %i.iws = sub nsw i32 %.5.fr.i1450, %i.dp
  %i.iwt = load i64, ptr %i.hvg, align 8          ; 3 uses
  br label %.lr.ph.i1486

.lr.ph.i1486:                                     ; preds = %._crit_edge.i1491, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484
  %.1393740.i1487 = phi i32 [ %i.ixh, %._crit_edge.i1491 ], [ %i.iws, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484 ] ; 10 uses
  %.0401739.i1488 = phi float [ %.us-phi724.i1493, %._crit_edge.i1491 ], [ f0x1E3CE508, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484 ] ; 3 uses
  %.0404738.i1489 = phi float [ %.us-phi.i1492, %._crit_edge.i1491 ], [ 0.000000e+00, %_ZL18FastMarching_solveiiiiRKN2cv3MatES2_.exit613.i1484 ] ; 3 uses
  %i.iwu = add nsw i32 %.1393740.i1487, -1        ; 3 uses
  %i.iwv = icmp eq i32 %.1393740.i1487, 1
  %i.iww = zext i1 %i.iwv to i32
  %i.iwx = add nsw i32 %i.iwu, %i.iww             ; 2 uses
  %i.iwy = icmp eq i32 %.1393740.i1487, %i.iwm
  %.neg.i1490 = sext i1 %i.iwy to i32             ; 2 uses
  %i.iwz = add i32 %i.iwu, %.neg.i1490
  %i.ixa = icmp sgt i32 %.1393740.i1487, 0
  %i.ixb = zext nneg i32 %.1393740.i1487 to i64
  %i.ixc = sub nsw i32 %.1393740.i1487, %.5.fr.i1450 ; 2 uses
  %i.ixd = mul nsw i32 %i.ixc, %i.ixc
  %i.ixe = sub nsw i32 %.5.fr.i1450, %.1393740.i1487
  %i.ixf = sitofp i32 %i.ixe to float             ; 3 uses
  %i.ixg = fmul nnan float %i.ixf, %i.ixf
  %i.ixh = add i32 %.1393740.i1487, 1             ; 3 uses
  %i.ixi = zext nneg i32 %i.ixh to i64
  %i.ixj = zext nneg i32 %i.iwu to i64            ; 2 uses
  %i.ixk = add i32 %.1393740.i1487, %.neg.i1490
  %i.ixl = sext i32 %i.ixk to i64
  %i.ixm = sext i32 %i.iwz to i64                 ; 2 uses
  %i.ixn = add nsw i32 %i.iwx, -1
  %i.ixo = sext i32 %i.ixn to i64                 ; 2 uses
  %i.ixp = sext i32 %i.iwx to i64                 ; 2 uses
  br i1 %i.ixa, label %.lr.ph.split.i1500, label %._crit_edge.i1491

.lr.ph.split.i1500:                               ; preds = %.lr.ph.i1486
  %i.ixq = icmp slt i32 %.1393740.i1487, %i.iwq
  %.fr736.i1501 = freeze i1 %i.ixq
  br i1 %.fr736.i1501, label %.lr.ph.split.split.i1502.preheader, label %._crit_edge.i1491

.lr.ph.split.split.i1502.preheader:               ; preds = %.lr.ph.split.i1500
  %i.ixr = mul i64 %i.iwt, %i.ixb
  %.sink.idx.i616.i1511 = select i1 %i.iru, i64 0, i64 %i.ixr
  %.sink.i617.i1512 = getelementptr inbounds nuw i8, ptr %i.irv, i64 %.sink.idx.i616.i1511 ; 2 uses
  %i.ixs = mul i64 %i.iwt, %i.ixi
  %.sink.idx.i618.i1515 = select i1 %i.iru, i64 0, i64 %i.ixs
  %.sink.i619.i1516 = getelementptr inbounds nuw i8, ptr %i.irv, i64 %.sink.idx.i618.i1515
  %i.ixt = mul i64 %i.iwt, %i.ixj
  %.sink.idx.i634.i1518 = select i1 %i.iru, i64 0, i64 %i.ixt
  %.sink.i635.i1519 = getelementptr inbounds nuw i8, ptr %i.irv, i64 %.sink.idx.i634.i1518
  br label %.lr.ph.split.split.i1502

.lr.ph.split.split.i1502:                         ; preds = %.lr.ph.split.split.i1502.preheader, %bb.atj
  %.1395721.i1503 = phi i32 [ %i.jcg, %bb.atj ], [ %i.iwn, %.lr.ph.split.split.i1502.preheader ] ; 11 uses
  %.1402720.i1504 = phi float [ %.2403.i1509, %bb.atj ], [ %.0401739.i1488, %.lr.ph.split.split.i1502.preheader ] ; 4 uses
  %.1405719.i1505 = phi float [ %.2406.i1508, %bb.atj ], [ %.0404738.i1489, %.lr.ph.split.split.i1502.preheader ] ; 4 uses
  %i.ixu = add nsw i32 %.1395721.i1503, -1        ; 2 uses
  %i.ixv = icmp eq i32 %.1395721.i1503, 1
  %i.ixw = zext i1 %i.ixv to i32
  %i.ixx = add nuw nsw i32 %i.ixu, %i.ixw         ; 4 uses
  %i.ixy = icmp eq i32 %.1395721.i1503, %i.iwp
  %.neg411.i1506 = sext i1 %i.ixy to i32
  %i.ixz = icmp sgt i32 %.1395721.i1503, 0
  %i.iya = icmp slt i32 %.1395721.i1503, %i.iwr
  %or.cond771.i1507 = select i1 %i.ixz, i1 %i.iya, i1 false
  br i1 %or.cond771.i1507, label %bb.ass, label %bb.atj

bb.ass:                                           ; preds = %.lr.ph.split.split.i1502
  %i.iyb = zext nneg i32 %.1395721.i1503 to i64   ; 3 uses
  %i.iyc = getelementptr inbounds nuw i8, ptr %.sink.i617.i1512, i64 %i.iyb ; 2 uses
  %i.iyd = load i8, ptr %i.iyc, align 1, !tbaa !26
  %.not412.i1513 = icmp eq i8 %i.iyd, 2
  br i1 %.not412.i1513, label %bb.atj, label %bb.ast

bb.ast:                                           ; preds = %bb.ass
  %i.iye = sub nsw i32 %.1395721.i1503, %.5391.i1448 ; 2 uses
  %i.iyf = mul nsw i32 %i.iye, %i.iye
  %i.iyg = add nuw nsw i32 %i.iyf, %i.ixd
  %.not413.i1514 = icmp samesign ugt i32 %i.iyg, %i.hvm
  br i1 %.not413.i1514, label %bb.atj, label %bb.asu

bb.asu:                                           ; preds = %bb.ast
  %i.iyh = sub nsw i32 %.5391.i1448, %.1395721.i1503
  %i.iyi = sitofp i32 %i.iyh to float             ; 3 uses
  %i.iyj = call noundef float @llvm.fmuladd.f32(float %i.iyi, float %i.iyi, float %i.ixg) ; 3 uses
  %i.iyk = call nnan float @llvm.fmuladd.f32(float %i.iyj, float %i.iyj, float 1.000000e+00)
  %i.iyl = fdiv nnan float 1.000000e+00, %i.iyk
  %i.iym = getelementptr inbounds nuw i8, ptr %.sink.i619.i1516, i64 %i.iyb
  %i.iyn = load i8, ptr %i.iym, align 1, !tbaa !26
  %.not414.i1517 = icmp eq i8 %i.iyn, 2
  %i.iyo = getelementptr inbounds nuw i8, ptr %.sink.i635.i1519, i64 %i.iyb
  %i.iyp = load i8, ptr %i.iyo, align 1, !tbaa !26
  %.not415.i1520 = icmp eq i8 %i.iyp, 2           ; 2 uses
  br i1 %.not414.i1517, label %bb.asy, label %bb.asv

bb.asv:                                           ; preds = %bb.asu
  %i.iyq = load i32, ptr %i.hvn, align 4, !tbaa !42
  %i.iyr = icmp slt i32 %i.iyq, 2                 ; 3 uses
  %i.iys = load ptr, ptr %i.hvo, align 8, !tbaa !43 ; 3 uses
  %i.iyt = load i64, ptr %i.hvp, align 8          ; 3 uses
  %i.iyu = mul i64 %i.iyt, %i.ixl
  %.sink.idx.i630.i1521 = select i1 %i.iyr, i64 0, i64 %i.iyu
  %.sink.i631.i1522 = getelementptr inbounds nuw i8, ptr %i.iys, i64 %.sink.idx.i630.i1521
  %i.iyv = sext i32 %i.ixx to i64                 ; 3 uses
  %i.iyw = getelementptr inbounds [4 x i8], ptr %.sink.i631.i1522, i64 %i.iyv
  %i.iyx = load float, ptr %i.iyw, align 4, !tbaa !92
  %i.iyy = mul i64 %i.iyt, %i.ixm
  %.sink.idx.i632.i1523 = select i1 %i.iyr, i64 0, i64 %i.iyy
  %.sink.i633.i1524 = getelementptr inbounds nuw i8, ptr %i.iys, i64 %.sink.idx.i632.i1523
  %i.iyz = getelementptr inbounds [4 x i8], ptr %.sink.i633.i1524, i64 %i.iyv
  %i.iza = load float, ptr %i.iyz, align 4, !tbaa !92 ; 2 uses
  %i.izb = fsub float %i.iyx, %i.iza
  %i.izc = call noundef float @llvm.fabs.f32(float %i.izb) ; 2 uses
  br i1 %.not415.i1520, label %bb.asx, label %bb.asw

bb.asw:                                           ; preds = %bb.asv
  %i.izd = mul i64 %i.iyt, %i.ixo
  %.sink.idx.i628.i1525 = select i1 %i.iyr, i64 0, i64 %i.izd
  %.sink.i629.i1526 = getelementptr inbounds nuw i8, ptr %i.iys, i64 %.sink.idx.i628.i1525
  %i.ize = getelementptr inbounds [4 x i8], ptr %.sink.i629.i1526, i64 %i.iyv
  %i.izf = load float, ptr %i.ize, align 4, !tbaa !92
  %i.izg = fsub float %i.iza, %i.izf
  %i.izh = call noundef float @llvm.fabs.f32(float %i.izg)
  %i.izi = fadd float %i.izc, %i.izh
  br label %bb.ata

bb.asx:                                           ; preds = %bb.asv
  %i.izj = fmul float %i.izc, 2.000000e+00
  br label %bb.ata

bb.asy:                                           ; preds = %bb.asu
  br i1 %.not415.i1520, label %bb.ata, label %bb.asz

bb.asz:                                           ; preds = %bb.asy
  %i.izk = load i32, ptr %i.hvn, align 4, !tbaa !42
  %i.izl = icmp slt i32 %i.izk, 2                 ; 2 uses
  %i.izm = load ptr, ptr %i.hvo, align 8, !tbaa !43 ; 2 uses
  %i.izn = load i64, ptr %i.hvp, align 8          ; 2 uses
  %i.izo = mul i64 %i.izn, %i.ixm
  %.sink.idx.i636.i1538 = select i1 %i.izl, i64 0, i64 %i.izo
  %.sink.i637.i1539 = getelementptr inbounds nuw i8, ptr %i.izm, i64 %.sink.idx.i636.i1538
  %i.izp = sext i32 %i.ixx to i64                 ; 2 uses
  %i.izq = getelementptr inbounds [4 x i8], ptr %.sink.i637.i1539, i64 %i.izp
  %i.izr = load float, ptr %i.izq, align 4, !tbaa !92
  %i.izs = mul i64 %i.izn, %i.ixo
  %.sink.idx.i638.i1540 = select i1 %i.izl, i64 0, i64 %i.izs
  %.sink.i639.i1541 = getelementptr inbounds nuw i8, ptr %i.izm, i64 %.sink.idx.i638.i1540
  %i.izt = getelementptr inbounds [4 x i8], ptr %.sink.i639.i1541, i64 %i.izp
  %i.izu = load float, ptr %i.izt, align 4, !tbaa !92
  %i.izv = fsub float %i.izr, %i.izu
  %i.izw = call noundef float @llvm.fabs.f32(float %i.izv)
  %i.izx = fmul float %i.izw, 2.000000e+00
  br label %bb.ata

bb.ata:                                           ; preds = %bb.asz, %bb.asy, %bb.asx, %bb.asw
  %.sroa.0668.0.i1527 = phi float [ %i.izi, %bb.asw ], [ %i.izx, %bb.asz ], [ %i.izj, %bb.asx ], [ 0.000000e+00, %bb.asy ] ; 3 uses
  %i.izy = getelementptr inbounds nuw i8, ptr %i.iyc, i64 1
  %i.izz = load i8, ptr %i.izy, align 1, !tbaa !26
  %.not417.i1528 = icmp eq i8 %i.izz, 2
  %i.jaa = zext nneg i32 %i.ixu to i64            ; 2 uses
  %i.jab = getelementptr inbounds nuw i8, ptr %.sink.i617.i1512, i64 %i.jaa
  %i.jac = load i8, ptr %i.jab, align 1, !tbaa !26
  %.not418.i1529 = icmp eq i8 %i.jac, 2           ; 2 uses
  br i1 %.not417.i1528, label %bb.ate, label %bb.atb

bb.atb:                                           ; preds = %bb.ata
  %i.jad = add nsw i32 %.1395721.i1503, %.neg411.i1506
  %i.jae = load i32, ptr %i.hvn, align 4, !tbaa !42
  %i.jaf = icmp slt i32 %i.jae, 2
  %i.jag = load ptr, ptr %i.hvo, align 8, !tbaa !43
  %i.jah = load i64, ptr %i.hvp, align 8
  %i.jai = mul i64 %i.jah, %i.ixp
  %.sink.idx.i652.i1530 = select i1 %i.jaf, i64 0, i64 %i.jai
  %.sink.i653.i1531 = getelementptr inbounds nuw i8, ptr %i.jag, i64 %.sink.idx.i652.i1530 ; 2 uses
  %i.jaj = zext nneg i32 %i.jad to i64
  %i.jak = getelementptr inbounds nuw [4 x i8], ptr %.sink.i653.i1531, i64 %i.jaj
  %i.jal = load float, ptr %i.jak, align 4, !tbaa !92
  %i.jam = sext i32 %i.ixx to i64
  %i.jan = getelementptr [4 x i8], ptr %.sink.i653.i1531, i64 %i.jam ; 2 uses
  %i.jao = load float, ptr %i.jan, align 4, !tbaa !92 ; 2 uses
  %i.jap = fsub float %i.jal, %i.jao
  %i.jaq = call noundef float @llvm.fabs.f32(float %i.jap) ; 2 uses
  br i1 %.not418.i1529, label %bb.atd, label %bb.atc

bb.atc:                                           ; preds = %bb.atb
  %i.jar = getelementptr i8, ptr %i.jan, i64 -4
  %i.jas = load float, ptr %i.jar, align 4, !tbaa !92
  %i.jat = fsub float %i.jao, %i.jas
  %i.jau = call noundef float @llvm.fabs.f32(float %i.jat)
  %i.jav = fadd float %i.jaq, %i.jau
  br label %bb.atg

bb.atd:                                           ; preds = %bb.atb
  %i.jaw = fmul float %i.jaq, 2.000000e+00
  br label %bb.atg

bb.ate:                                           ; preds = %bb.ata
  br i1 %.not418.i1529, label %bb.atg, label %bb.atf

bb.atf:                                           ; preds = %bb.ate
  %i.jax = load i32, ptr %i.hvn, align 4, !tbaa !42
  %i.jay = icmp slt i32 %i.jax, 2
  %i.jaz = load ptr, ptr %i.hvo, align 8, !tbaa !43
  %i.jba = load i64, ptr %i.hvp, align 8
  %i.jbb = mul i64 %i.jba, %i.ixp
  %.sink.idx.i658.i1536 = select i1 %i.jay, i64 0, i64 %i.jbb
  %.sink.i659.i1537 = getelementptr inbounds nuw i8, ptr %i.jaz, i64 %.sink.idx.i658.i1536
  %i.jbc = sext i32 %i.ixx to i64
  %i.jbd = getelementptr [4 x i8], ptr %.sink.i659.i1537, i64 %i.jbc ; 2 uses
  %i.jbe = load float, ptr %i.jbd, align 4, !tbaa !92
  %i.jbf = getelementptr i8, ptr %i.jbd, i64 -4
  %i.jbg = load float, ptr %i.jbf, align 4, !tbaa !92
  %i.jbh = fsub float %i.jbe, %i.jbg
  %i.jbi = call noundef float @llvm.fabs.f32(float %i.jbh)
  %i.jbj = fmul float %i.jbi, 2.000000e+00
  br label %bb.atg

bb.atg:                                           ; preds = %bb.atf, %bb.ate, %bb.atd, %bb.atc
  %.sroa.12.0.i1532 = phi float [ %i.jav, %bb.atc ], [ %i.jbj, %bb.atf ], [ %i.jaw, %bb.atd ], [ 0.000000e+00, %bb.ate ] ; 3 uses
  %i.jbk = fneg float %.sroa.0668.0.i1527
  %i.jbl = fmul float %.sroa.12.0.i1532, %i.ixf
  %i.jbm = call noundef float @llvm.fmuladd.f32(float %i.iyi, float %i.jbk, float %i.jbl) ; 2 uses
  %i.jbn = call float @llvm.fabs.f32(float %i.jbm)
  %i.jbo = fpext float %i.jbn to double
  %i.jbp = fcmp ugt double %i.jbo, 1.000000e-02
  br i1 %i.jbp, label %bb.ath, label %bb.ati

bb.ath:                                           ; preds = %bb.atg
  %i.jbq = fmul float %.sroa.12.0.i1532, %.sroa.12.0.i1532
  %i.jbr = call float @llvm.fmuladd.f32(float %.sroa.0668.0.i1527, float %.sroa.0668.0.i1527, float %i.jbq)
  %i.jbs = fmul float %i.iyj, %i.jbr
  %i.jbt = call noundef float @sqrtf(float noundef %i.jbs) #20
  %i.jbu = fdiv float %i.jbm, %i.jbt
  %i.jbv = call float @llvm.fabs.f32(float %i.jbu)
  br label %bb.ati

bb.ati:                                           ; preds = %bb.ath, %bb.atg
  %.0396.i1533 = phi float [ %i.jbv, %bb.ath ], [ f0x358637BD, %bb.atg ]
  %i.jbw = fmul float %i.iyl, %.0396.i1533        ; 2 uses
  %i.jbx = load i32, ptr %i.hvn, align 4, !tbaa !42
  %i.jby = icmp slt i32 %i.jbx, 2
  %i.jbz = load ptr, ptr %i.hvo, align 8, !tbaa !43
  %i.jca = load i64, ptr %i.hvp, align 8
  %i.jcb = mul i64 %i.jca, %i.ixj
  %.sink.idx.i662.i1534 = select i1 %i.jby, i64 0, i64 %i.jcb
  %.sink.i663.i1535 = getelementptr inbounds nuw i8, ptr %i.jbz, i64 %.sink.idx.i662.i1534
  %i.jcc = getelementptr inbounds nuw [4 x i8], ptr %.sink.i663.i1535, i64 %i.jaa
  %i.jcd = load float, ptr %i.jcc, align 4, !tbaa !92
  %i.jce = call float @llvm.fmuladd.f32(float %i.jbw, float %i.jcd, float %.1405719.i1505)
  %i.jcf = fadd float %.1402720.i1504, %i.jbw
  br label %bb.atj

bb.atj:                                           ; preds = %bb.ati, %bb.ast, %bb.ass, %.lr.ph.split.split.i1502
  %.2406.i1508 = phi float [ %i.jce, %bb.ati ], [ %.1405719.i1505, %bb.ast ], [ %.1405719.i1505, %bb.ass ], [ %.1405719.i1505, %.lr.ph.split.split.i1502 ] ; 2 uses
  %.2403.i1509 = phi float [ %i.jcf, %bb.ati ], [ %.1402720.i1504, %bb.ast ], [ %.1402720.i1504, %bb.ass ], [ %.1402720.i1504, %.lr.ph.split.split.i1502 ] ; 2 uses
  %i.jcg = add nsw i32 %.1395721.i1503, 1
  %.not410.not.i1510 = icmp slt i32 %.1395721.i1503, %i.iwo
  br i1 %.not410.not.i1510, label %.lr.ph.split.split.i1502, label %._crit_edge.i1491, !llvm.loop !170

._crit_edge.i1491:                                ; preds = %bb.atj, %.lr.ph.split.i1500, %.lr.ph.i1486
end_hunk_5
