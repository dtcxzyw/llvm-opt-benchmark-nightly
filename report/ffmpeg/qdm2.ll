Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/qdm2?download=true
inline.NumInlined: 120
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 43
begin_hunk_0_@synthfilt_build_sb_samples:bb.a
  %i.amj = load float, ptr %i.ami, align 4, !tbaa !32
  %i.amk = fdiv nsz float %i.amj, %.2222416
  %i.aml = fadd nsz float %.0216417, %i.amk       ; 2 uses
  store float %i.aml, ptr %i.a, align 16, !tbaa !32
  br label %.loopexit359

bb.ch:                                            ; preds = %qdm2_get_vlc.exit326
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.32, i32 noundef %.020.i325) #11
  br label %build_sb_samples_from_noise.exit

bb.ci:                                            ; preds = %bb.cc
  %i.amm = add nsw i32 %i.qb, 1                   ; 2 uses
  store i32 %i.amm, ptr %i.j, align 4, !tbaa !67
  %i.amn = sext i32 %i.qb to i64
  %i.amo = getelementptr inbounds [4 x i8], ptr @noise_table, i64 %i.amn
  %i.amp = load float, ptr %i.amo, align 4, !tbaa !32
  %i.amq = load float, ptr %i.ov, align 4, !tbaa !32
  %i.amr = fmul nsz float %i.amp, %i.amq
  store float %i.amr, ptr %i.a, align 16, !tbaa !32
  br label %.loopexit359

bb.cj:                                            ; preds = %bb.aj
  %i.ams = add nsw i32 %i.qb, 1                   ; 2 uses
  store i32 %i.ams, ptr %i.j, align 4, !tbaa !67
  %i.amt = sext i32 %i.qb to i64
  %i.amu = getelementptr inbounds [4 x i8], ptr @noise_table, i64 %i.amt
  %i.amv = load float, ptr %i.amu, align 4, !tbaa !32
  %i.amw = load float, ptr %i.ov, align 4, !tbaa !32
  %i.amx = fmul nsz float %i.amv, %i.amw
  store float %i.amx, ptr %i.a, align 16, !tbaa !32
  br label %.loopexit359

.loopexit359:                                     ; preds = %bb.bf, %bb.bi, %bb.bl, %bb.bo, %bb.br, %.preheader364, %.preheader358, %.preheader366, %.preheader362, %.preheader356, %.loopexit353, %.thread345, %.thread343, %bb.ci, %bb.ce, %bb.cb, %bb.cj, %bb.bb
  %.val283573 = phi i32 [ %i.qa, %bb.cj ], [ %i.qa, %bb.cb ], [ %.val283569, %bb.bb ], [ %i.qa, %bb.ci ], [ %i.qa, %.preheader356 ], [ %i.qa, %.preheader362 ], [ %.val283570, %.loopexit353 ], [ %i.afl, %.preheader358 ], [ %i.qa, %.preheader366 ], [ %i.ahk, %.preheader364 ], [ %.val535, %.thread343 ], [ %i.akw, %bb.ce ], [ %.val534, %.thread345 ], [ %spec.select.i324393, %bb.bf ], [ %spec.select.i324393.1, %bb.bi ], [ %spec.select.i324393.2, %bb.bl ], [ %spec.select.i324393.3, %bb.bo ], [ %spec.select.i324393.4, %bb.br ]
  %.val281565 = phi i32 [ %.val281, %bb.cj ], [ %.val281, %bb.cb ], [ %.val281563, %bb.bb ], [ %.val281, %bb.ci ], [ %i.qa, %.preheader356 ], [ %.val281, %.preheader362 ], [ %.val283570, %.loopexit353 ], [ %i.afl, %.preheader358 ], [ %.val281, %.preheader366 ], [ %i.ahk, %.preheader364 ], [ %.val535, %.thread343 ], [ %i.akw, %bb.ce ], [ %.val534, %.thread345 ], [ %spec.select.i324393, %bb.bf ], [ %spec.select.i324393.1, %bb.bi ], [ %spec.select.i324393.2, %bb.bl ], [ %spec.select.i324393.3, %bb.bo ], [ %spec.select.i324393.4, %bb.br ]
  %.val279559 = phi i32 [ %.promoted392, %bb.cj ], [ %.promoted392, %bb.cb ], [ %.val281563, %bb.bb ], [ %.promoted392, %bb.ci ], [ %i.qa, %.preheader356 ], [ %.promoted392, %.preheader362 ], [ %.val283570, %.loopexit353 ], [ %i.afl, %.preheader358 ], [ %.promoted392, %.preheader366 ], [ %i.ahk, %.preheader364 ], [ %.val535, %.thread343 ], [ %i.akw, %bb.ce ], [ %.val534, %.thread345 ], [ %spec.select.i324393, %bb.bf ], [ %spec.select.i324393.1, %bb.bi ], [ %spec.select.i324393.2, %bb.bl ], [ %spec.select.i324393.3, %bb.bo ], [ %spec.select.i324393.4, %bb.br ]
  %.val277554 = phi i32 [ %.val277, %bb.cj ], [ %.val277, %bb.cb ], [ %.val281563, %bb.bb ], [ %.val277, %bb.ci ], [ %i.qa, %.preheader356 ], [ %.promoted392, %.preheader362 ], [ %.val283570, %.loopexit353 ], [ %i.afl, %.preheader358 ], [ %.val277, %.preheader366 ], [ %i.ahk, %.preheader364 ], [ %.val535, %.thread343 ], [ %i.akw, %bb.ce ], [ %.val534, %.thread345 ], [ %spec.select.i324393, %bb.bf ], [ %spec.select.i324393.1, %bb.bi ], [ %spec.select.i324393.2, %bb.bl ], [ %spec.select.i324393.3, %bb.bo ], [ %spec.select.i324393.4, %bb.br ]
  %.val275549 = phi i32 [ %.val275, %bb.cj ], [ %.val275, %bb.cb ], [ %.val281563, %bb.bb ], [ %.val275, %bb.ci ], [ %i.qa, %.preheader356 ], [ %.promoted392, %.preheader362 ], [ %.val283570, %.loopexit353 ], [ %i.afl, %.preheader358 ], [ %.val277, %.preheader366 ], [ %i.ahk, %.preheader364 ], [ %.val535, %.thread343 ], [ %i.akw, %bb.ce ], [ %.val534, %.thread345 ], [ %spec.select.i324393, %bb.bf ], [ %spec.select.i324393.1, %bb.bi ], [ %spec.select.i324393.2, %bb.bl ], [ %spec.select.i324393.3, %bb.bo ], [ %spec.select.i324393.4, %bb.br ]
  %.val533 = phi i32 [ %.val, %bb.cj ], [ %.val275, %bb.cb ], [ %.val281563, %bb.bb ], [ %.val, %bb.ci ], [ %i.qa, %.preheader356 ], [ %.promoted392, %.preheader362 ], [ %.val283570, %.loopexit353 ], [ %i.afl, %.preheader358 ], [ %.val277, %.preheader366 ], [ %i.ahk, %.preheader364 ], [ %.val535, %.thread343 ], [ %i.akw, %bb.ce ], [ %.val534, %.thread345 ], [ %spec.select.i324393, %bb.bf ], [ %spec.select.i324393.1, %bb.bi ], [ %spec.select.i324393.2, %bb.bl ], [ %spec.select.i324393.3, %bb.bo ], [ %spec.select.i324393.4, %bb.br ]
  %i.amy = phi i32 [ %i.ams, %bb.cj ], [ %i.ajt, %bb.cb ], [ %i.zj, %bb.bb ], [ %i.amm, %bb.ci ], [ %indvars.iv.next486.9, %.preheader356 ], [ %indvars.iv.next470.4, %.preheader362 ], [ %indvars.iv.next502.4, %.loopexit353 ], [ %i.qb, %.preheader358 ], [ %indvars.iv.next458.2, %.preheader366 ], [ %i.qb, %.preheader364 ], [ %i.qb, %.thread343 ], [ %i.qb, %bb.ce ], [ %i.qb, %.thread345 ], [ %i.qb, %bb.br ], [ %i.qb, %bb.bo ], [ %i.qb, %bb.bl ], [ %i.qb, %bb.bi ], [ %i.qb, %bb.bf ] ; 2 uses
  %i.amz = phi i1 [ true, %bb.cj ], [ true, %bb.cb ], [ true, %bb.bb ], [ true, %bb.ci ], [ false, %.preheader356 ], [ false, %.preheader362 ], [ false, %.loopexit353 ], [ false, %.preheader358 ], [ false, %.preheader366 ], [ false, %.preheader364 ], [ true, %.thread343 ], [ true, %bb.ce ], [ true, %.thread345 ], [ false, %bb.br ], [ false, %bb.bo ], [ false, %bb.bl ], [ false, %bb.bi ], [ false, %bb.bf ]
  %.0229 = phi i32 [ 1, %bb.cj ], [ 1, %bb.cb ], [ 1, %bb.bb ], [ 1, %bb.ci ], [ 10, %.preheader356 ], [ 5, %.preheader362 ], [ 10, %.loopexit353 ], [ 5, %.preheader358 ], [ 3, %.preheader366 ], [ 3, %.preheader364 ], [ 1, %.thread343 ], [ 1, %bb.ce ], [ 1, %.thread345 ], [ 5, %bb.br ], [ 5, %bb.bo ], [ 5, %bb.bl ], [ 5, %bb.bi ], [ 5, %bb.bf ] ; 4 uses
  %.2226 = phi i32 [ %.0224415, %bb.cj ], [ %.0224415, %bb.cb ], [ %.0224415, %bb.bb ], [ %.0224415, %bb.ci ], [ %.0224415, %.preheader356 ], [ %.0224415, %.preheader362 ], [ %.0224415, %.loopexit353 ], [ %.0224415, %.preheader358 ], [ %.0224415, %.preheader366 ], [ %.0224415, %.preheader364 ], [ %.0224415, %.thread343 ], [ 0, %bb.ce ], [ 0, %.thread345 ], [ %.0224415, %bb.br ], [ %.0224415, %bb.bo ], [ %.0224415, %bb.bl ], [ %.0224415, %bb.bi ], [ %.0224415, %bb.bf ]
  %.4 = phi nsz float [ %.2222416, %bb.cj ], [ %.2222416, %bb.cb ], [ %.2222416, %bb.bb ], [ %.2222416, %bb.ci ], [ %.2222416, %.preheader356 ], [ %.2222416, %.preheader362 ], [ %.2222416, %.loopexit353 ], [ %.2222416, %.preheader358 ], [ %.2222416, %.preheader366 ], [ %.2222416, %.preheader364 ], [ %.2222416, %.thread343 ], [ %i.akn, %bb.ce ], [ %.2222416, %.thread345 ], [ %.2222416, %bb.br ], [ %.2222416, %bb.bo ], [ %.2222416, %bb.bl ], [ %.2222416, %bb.bi ], [ %.2222416, %bb.bf ] ; 3 uses
  %.3219 = phi nsz float [ %.0216417, %bb.cj ], [ %.0216417, %bb.cb ], [ %.0216417, %bb.bb ], [ %.0216417, %bb.ci ], [ %.0216417, %.preheader356 ], [ %.0216417, %.preheader362 ], [ %.0216417, %.loopexit353 ], [ %.0216417, %.preheader358 ], [ %.0216417, %.preheader366 ], [ %.0216417, %.preheader364 ], [ %.0216417, %.thread343 ], [ %i.akz, %bb.ce ], [ %i.aml, %.thread345 ], [ %.0216417, %bb.br ], [ %.0216417, %bb.bo ], [ %.0216417, %bb.bl ], [ %.0216417, %bb.bi ], [ %.0216417, %bb.bf ]
  br i1 %.not333601, label %.preheader348.preheader, label %.preheader349

.preheader348.preheader:                          ; preds = %.loopexit359
  %i.ana = zext nneg i32 %.2239413 to i64         ; 3 uses
  %wide.trip.count513 = zext nneg i32 %.0229 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count513, 1
  br i1 %i.amz, label %.preheader348.epil.preheader, label %.preheader348.preheader.new

.preheader348.preheader.new:                      ; preds = %.preheader348.preheader
  %unroll_iter = and i64 %wide.trip.count513, 14
  br label %.preheader348

.preheader349:                                    ; preds = %.loopexit359
  %i.anb = icmp samesign ult i32 %.2239413, 128
  br i1 %i.anb, label %.lr.ph405, label %.loopexit

.lr.ph405:                                        ; preds = %.preheader349
  %i.anc = load i32, ptr %0, align 16, !tbaa !40
  %i.and = icmp eq i32 %i.anc, 2
  %i.ane = zext nneg i32 %.2239413 to i64         ; 2 uses
  %i.anf = zext nneg i32 %.0229 to i64
  br label %bb.ck

bb.ck:                                            ; preds = %.lr.ph405, %bb.cl
  %indvars.iv507 = phi i64 [ 0, %.lr.ph405 ], [ %indvars.iv.next508, %bb.cl ] ; 3 uses
  %i.ang = add nuw nsw i64 %indvars.iv507, %i.ane ; 4 uses
  %i.anh = lshr i64 %i.ang, 1
  %i.ani = and i64 %i.anh, 2147483647             ; 2 uses
  %i.anj = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %i.ani
  %i.ank = load float, ptr %i.anj, align 4, !tbaa !32
  %i.anl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv507
  %i.anm = load float, ptr %i.anl, align 4, !tbaa !32 ; 3 uses
  %i.ann = fmul nsz float %i.ank, %i.anm
  %gep = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep, i64 %i.ang
  store float %i.ann, ptr %gep, align 4, !tbaa !32
  br i1 %i.and, label %.sink.split, label %bb.cl

.sink.split:                                      ; preds = %bb.ck
  %i.ano = lshr i64 %i.ang, 3
  %i.anp = and i64 %i.ano, 536870911
  %i.anq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.anp
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !57
  %.not269 = icmp eq i32 %i.anr, 0
  %i.ans = getelementptr inbounds nuw [4 x i8], ptr %i.oy, i64 %i.ani
  %i.ant = load float, ptr %i.ans, align 4, !tbaa !32
  %i.anu = fneg nsz float %i.anm
  %.sink.v = select i1 %.not269, float %i.anm, float %i.anu
  %.sink = fmul nsz float %.sink.v, %i.ant
  %gep409 = getelementptr inbounds nuw [128 x i8], ptr %invariant.gep406, i64 %i.ang
  store float %.sink, ptr %gep409, align 4, !tbaa !32
  br label %bb.cl

bb.cl:                                            ; preds = %.sink.split, %bb.ck
  %indvars.iv.next508 = add nuw nsw i64 %indvars.iv507, 1 ; 3 uses
  %i.anv = icmp samesign ult i64 %indvars.iv.next508, %i.anf
  %i.anw = add nuw nsw i64 %indvars.iv.next508, %i.ane
  %i.anx = icmp samesign ult i64 %i.anw, 128
  %i.any = select i1 %i.anv, i1 %i.anx, i1 false
  br i1 %i.any, label %bb.ck, label %.loopexit, !llvm.loop !200

.preheader348:                                    ; preds = %bb.co, %.preheader348.preheader.new
  %indvars.iv510 = phi i64 [ 0, %.preheader348.preheader.new ], [ %indvars.iv.next511.1, %bb.co ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader348.preheader.new ], [ %niter.next.1, %bb.co ]
  %i.anz = add nuw nsw i64 %indvars.iv510, %i.ana ; 3 uses
  %i.aoa = icmp samesign ult i64 %i.anz, 128
  br i1 %i.aoa, label %bb.cm, label %.preheader348.1

bb.cm:                                            ; preds = %.preheader348
  %i.aob = lshr i64 %i.anz, 1
  %i.aoc = getelementptr inbounds nuw [4 x i8], ptr %gep424, i64 %i.aob
  %i.aod = load float, ptr %i.aoc, align 4, !tbaa !32
  %i.aoe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv510
  %i.aof = load float, ptr %i.aoe, align 8, !tbaa !32
  %i.aog = fmul nsz float %i.aod, %i.aof
  %gep412 = getelementptr inbounds nuw [128 x i8], ptr %gep426, i64 %i.anz
  store float %i.aog, ptr %gep412, align 4, !tbaa !32
  br label %.preheader348.1

.preheader348.1:                                  ; preds = %.preheader348, %bb.cm
  %indvars.iv.next511 = or disjoint i64 %indvars.iv510, 1 ; 2 uses
  %i.aoh = add nuw nsw i64 %indvars.iv.next511, %i.ana ; 3 uses
  %i.aoi = icmp samesign ult i64 %i.aoh, 128
  br i1 %i.aoi, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %.preheader348.1
  %i.aoj = lshr i64 %i.aoh, 1
  %i.aok = getelementptr inbounds nuw [4 x i8], ptr %gep424, i64 %i.aoj
  %i.aol = load float, ptr %i.aok, align 4, !tbaa !32
  %i.aom = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next511
  %i.aon = load float, ptr %i.aom, align 4, !tbaa !32
  %i.aoo = fmul nsz float %i.aol, %i.aon
  %gep412.1 = getelementptr inbounds nuw [128 x i8], ptr %gep426, i64 %i.aoh
  store float %i.aoo, ptr %gep412.1, align 4, !tbaa !32
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.preheader348.1
  %indvars.iv.next511.1 = add nuw nsw i64 %indvars.iv510, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.preheader348, !llvm.loop !201

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.co
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader348.epil.preheader

.preheader348.epil.preheader:                     ; preds = %.loopexit.loopexit.unr-lcssa, %.preheader348.preheader
  %indvars.iv510.epil.init = phi i64 [ 0, %.preheader348.preheader ], [ %indvars.iv.next511.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod644 = trunc i32 %.0229 to i1
  tail call void @llvm.assume(i1 %lcmp.mod644)
  %i.aop = add nuw nsw i64 %indvars.iv510.epil.init, %i.ana ; 3 uses
  %i.aoq = icmp samesign ult i64 %i.aop, 128
  br i1 %i.aoq, label %bb.cp, label %.loopexit

bb.cp:                                            ; preds = %.preheader348.epil.preheader
  %i.aor = lshr i64 %i.aop, 1
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %gep424, i64 %i.aor
  %i.aot = load float, ptr %i.aos, align 4, !tbaa !32
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv510.epil.init
  %i.aov = load float, ptr %i.aou, align 4, !tbaa !32
  %i.aow = fmul nsz float %i.aot, %i.aov
  %gep412.epil = getelementptr inbounds nuw [128 x i8], ptr %gep426, i64 %i.aop
  store float %i.aow, ptr %gep412.epil, align 4, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.cl, %.loopexit.loopexit.unr-lcssa, %bb.cp, %.preheader348.epil.preheader, %.preheader349
  %i.aox = add nuw nsw i32 %.0229, %.2239413      ; 2 uses
  %i.aoy = icmp samesign ult i32 %i.aox, 128
  br i1 %i.aoy, label %bb.aj, label %bb.cq, !llvm.loop !202

bb.cq:                                            ; preds = %.loopexit
  %indvars.iv.next516 = add nuw nsw i64 %indvars.iv515, 1 ; 2 uses
  %exitcond519.not = icmp eq i64 %indvars.iv.next516, %wide.trip.count518
  br i1 %exitcond519.not, label %build_sb_samples_from_noise.exit318.thread, label %bb.ae, !llvm.loop !203

build_sb_samples_from_noise.exit318.thread:       ; preds = %bb.cq, %.thread, %.preheader31.i300, %..loopexit_crit_edge.i317
  %.5 = phi nsz float [ %.0220429, %.preheader31.i300 ], [ %.0220429, %..loopexit_crit_edge.i317 ], [ %.0220429, %.thread ], [ %.4, %bb.cq ]
  %indvars.iv.next521 = add nuw nsw i64 %indvars.iv520, 1 ; 2 uses
  %exitcond524.not = icmp eq i64 %indvars.iv.next521, %wide.trip.count523
  br i1 %exitcond524.not, label %build_sb_samples_from_noise.exit, label %bb.h, !llvm.loop !204

build_sb_samples_from_noise.exit:                 ; preds = %build_sb_samples_from_noise.exit318.thread, %bb.ab, %.lr.ph435.split.split.prol.loopexit, %bb.g, %bb.b, %.lr.ph435.split.us, %.preheader370, %.preheader, %.build_sb_samples_from_noise.exit.loopexit_crit_edge.split.us, %bb.ch, %bb.ca, %bb.bw, %bb.bt, %bb.ax
  %.12 = phi i32 [ -1094995529, %bb.ca ], [ -1094995529, %bb.ch ], [ -1094995529, %bb.b ], [ -1094995529, %bb.ax ], [ -1094995529, %bb.bt ], [ -1094995529, %bb.bw ], [ -1094995529, %.lr.ph435.split.us ], [ 0, %.preheader ], [ 0, %.build_sb_samples_from_noise.exit.loopexit_crit_edge.split.us ], [ 0, %.lr.ph435.split.split.prol.loopexit ], [ 0, %.preheader370 ], [ 0, %bb.g ], [ 0, %build_sb_samples_from_noise.exit318.thread ], [ -1094995529, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.12
}

; Function Attrs: nounwind uwtable
define internal fastcc void @qdm2_fft_decode_tones(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -2147483648, 4) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #1 {
bb.a:
  %i.a = sub nsw i32 4, %1                        ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !44
  %i.d = xor i32 %1, -1
  %i.e = add i32 %i.c, %i.d                       ; 2 uses
  %i.f = shl nuw i32 1, %i.e
  %.fr12 = freeze i32 %i.f                        ; 10 uses
  %i.g = getelementptr i8, ptr %2, i64 8          ; 16 uses
  %i.h = getelementptr i8, ptr %2, i64 12         ; 3 uses
  %.val119155 = load i32, ptr %i.g, align 8, !tbaa !72
  %.val120156 = load i32, ptr %i.h, align 4, !tbaa !70
  %i.i = icmp sgt i32 %.val120156, %.val119155
  br i1 %i.i, label %.lr.ph161, label %.critedge

.lr.ph161:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 146472
  %i.k = zext nneg i32 %i.a to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr @vlc_tab_fft_tone_offset, i64 %i.k ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8        ; 3 uses
  %i.n = shl i32 8, %i.e
  %i.o = icmp slt i32 %.fr12, 3
  %i.p = add nsw i32 %.fr12, -1                   ; 2 uses
  %i.q = shl nuw i32 1, %i.a                      ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.not106 = icmp eq i32 %3, 0
  %i.t = select i1 %.not106, ptr @fft_level_exp_alt_vlc, ptr @fft_level_exp_vlc ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 51388
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 51344 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 51348
  %i.z = sext i32 %1 to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 41344 ; 2 uses
  %i.ac = add nsw i32 %.fr12, -2                  ; 2 uses
  %i.ad = tail call i32 @llvm.umax.i32(i32 %i.ac, i32 1) ; 2 uses
  %invariant.op29 = sub i32 2, %.fr12
  %invariant.op30 = add i32 %i.ad, 1
  %i.ae = sub nsw i32 2, %.fr12
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.fr12, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert5 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat6 = shufflevector <4 x i32> %broadcast.splatinsert5, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = sub i32 2, %.fr12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph161, %bb.v
  %.079159 = phi i32 [ 1, %.lr.ph161 ], [ %i.kb, %bb.v ] ; 3 uses
  %.080158 = phi i32 [ 0, %.lr.ph161 ], [ %.4, %bb.v ] ; 5 uses
  %.086157 = phi i32 [ 0, %.lr.ph161 ], [ %.490, %bb.v ] ; 5 uses
  %i.af = load i32, ptr %i.j, align 8, !tbaa !50
  %.not = icmp eq i32 %i.af, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.val115139 = load i32, ptr %i.l, align 8, !tbaa !64
  %.val116140 = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.ag = tail call fastcc i32 @qdm2_get_vlc(ptr noundef %2, i32 %.val115139, ptr %.val116140, i32 noundef 1, i32 noundef 2) ; 3 uses
  %i.ah = icmp slt i32 %i.ag, 2
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.ai = phi i32 [ %i.an, %bb.d ], [ %i.ag, %.preheader ]
  %.181142 = phi i32 [ %.282, %bb.d ], [ %.080158, %.preheader ]
  %.187141 = phi i32 [ %.288, %bb.d ], [ %.086157, %.preheader ] ; 2 uses
  %.val117 = load i32, ptr %i.g, align 8, !tbaa !72
  %.val118 = load i32, ptr %i.h, align 4, !tbaa !70
  %i.aj = icmp slt i32 %.val118, %.val117
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ak = load i32, ptr %i.r, align 8, !tbaa !41
  %i.al = icmp slt i32 %.187141, %i.ak
  br i1 %i.al, label %.critedge.sink.split, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.am = icmp eq i32 %i.ai, 0                    ; 2 uses
  %.pn = select i1 %i.am, i32 %.fr12, i32 %i.n
  %.pn109 = select i1 %i.am, i32 1, i32 8
  %.pn108 = shl i32 %.pn109, %i.a
  %.282 = add nsw i32 %.pn108, %.181142           ; 2 uses
  %.288 = add nsw i32 %.pn, %.187141              ; 2 uses
  %.val115 = load i32, ptr %i.l, align 8, !tbaa !64
  %.val116 = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.an = tail call fastcc i32 @qdm2_get_vlc(ptr noundef %2, i32 %.val115, ptr %.val116, i32 noundef 1, i32 noundef 2) ; 3 uses
  %i.ao = icmp slt i32 %i.an, 2
  br i1 %i.ao, label %.lr.ph, label %._crit_edge, !llvm.loop !206

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %.187.lcssa = phi i32 [ %.086157, %.preheader ], [ %.288, %bb.d ]
  %.181.lcssa = phi i32 [ %.080158, %.preheader ], [ %.282, %bb.d ]
  %.1.lcssa = phi i32 [ %.079159, %.preheader ], [ 1, %bb.d ]
  %.lcssa = phi i32 [ %i.ag, %.preheader ], [ %i.an, %bb.d ]
  %i.ap = add i32 %.1.lcssa, -2
  %i.aq = add i32 %i.ap, %.lcssa
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  br i1 %i.o, label %.critedge.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val113 = load i32, ptr %i.l, align 8, !tbaa !64
  %.val114 = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.ar = tail call fastcc i32 @qdm2_get_vlc(ptr noundef %2, i32 %.val113, ptr %.val114, i32 noundef 1, i32 noundef 2) ; 2 uses
  %i.as = add nsw i32 %i.ar, %.079159             ; 4 uses
  %.not104146 = icmp slt i32 %i.as, %i.p
  br i1 %.not104146, label %.loopexit, label %.lr.ph151.preheader

.lr.ph151.preheader:                              ; preds = %bb.f
  %i.at = add i32 %i.ar, %.079159                 ; 2 uses
  %.reass = add i32 %i.at, %invariant.op29
  %i.au = tail call i32 @llvm.smin.i32(i32 %.reass, i32 %i.ac)
  %.reass31 = add i32 %i.at, %invariant.op30
  %i.av = add i32 %.fr12, %i.au
  %i.aw = sub i32 %.reass31, %i.av
  %i.ax = udiv i32 %i.aw, %i.ad
  %i.ay = add i32 %i.ax, 1                        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ay, 8
  br i1 %min.iters.check, label %.lr.ph151.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph151.preheader
  %n.vec = and i32 %i.ay, -8                      ; 3 uses
  %i.az = mul i32 %n.vec, %i.ae
  %i.ba = add i32 %i.as, %i.az                    ; 2 uses
  %i.bb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.080158, i64 0
  %i.bc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.086157, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.bb, %vector.ph ], [ %i.bf, %vector.body ]
  %vec.phi7 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi8 = phi <4 x i32> [ %i.bc, %vector.ph ], [ %i.bd, %vector.body ]
  %vec.phi9 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.be, %vector.body ]
  %i.bd = add <4 x i32> %vec.phi8, %broadcast.splat ; 2 uses
  %i.be = add <4 x i32> %vec.phi9, %broadcast.splat ; 2 uses
  %i.bf = add <4 x i32> %vec.phi, %broadcast.splat6 ; 2 uses
  %i.bg = add <4 x i32> %vec.phi7, %broadcast.splat6 ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.bh = icmp eq i32 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !207

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bg, %i.bf
  %i.bi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx10 = add <4 x i32> %i.be, %i.bd
  %i.bj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx10) ; 2 uses
  %cmp.n = icmp eq i32 %i.ay, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph151.preheader12

.lr.ph151.preheader12:                            ; preds = %.lr.ph151.preheader, %middle.block
  %.2149.ph = phi i32 [ %i.as, %.lr.ph151.preheader ], [ %i.ba, %middle.block ]
  %.383148.ph = phi i32 [ %.080158, %.lr.ph151.preheader ], [ %i.bi, %middle.block ]
  %.389147.ph = phi i32 [ %.086157, %.lr.ph151.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph151

.lr.ph151:                                        ; preds = %.lr.ph151.preheader12, %.lr.ph151
  %.2149 = phi i32 [ %.reass.reass, %.lr.ph151 ], [ %.2149.ph, %.lr.ph151.preheader12 ]
  %.383148 = phi i32 [ %i.bl, %.lr.ph151 ], [ %.383148.ph, %.lr.ph151.preheader12 ]
  %.389147 = phi i32 [ %i.bk, %.lr.ph151 ], [ %.389147.ph, %.lr.ph151.preheader12 ]
  %.reass.reass = add i32 %.2149, %invariant.op   ; 3 uses
  %i.bk = add nsw i32 %.389147, %.fr12            ; 2 uses
  %i.bl = add nsw i32 %.383148, %i.q              ; 2 uses
  %.not104 = icmp slt i32 %.reass.reass, %i.p
  br i1 %.not104, label %.loopexit, label %.lr.ph151, !llvm.loop !208

.loopexit:                                        ; preds = %.lr.ph151, %middle.block, %bb.f, %._crit_edge
  %.490 = phi i32 [ %.187.lcssa, %._crit_edge ], [ %.086157, %bb.f ], [ %i.bj, %middle.block ], [ %i.bk, %.lr.ph151 ] ; 2 uses
  %.4 = phi i32 [ %.181.lcssa, %._crit_edge ], [ %.080158, %bb.f ], [ %i.bi, %middle.block ], [ %i.bl, %.lr.ph151 ] ; 3 uses
  %.3 = phi i32 [ %i.aq, %._crit_edge ], [ %i.as, %bb.f ], [ %i.ba, %middle.block ], [ %.reass.reass, %.lr.ph151 ] ; 3 uses
  %i.bm = load i32, ptr %i.r, align 8, !tbaa !41
  %.not105 = icmp slt i32 %.490, %i.bm
  br i1 %.not105, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.loopexit
  %i.bn = ashr i32 %.3, %i.a                      ; 3 uses
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = icmp ugt i32 %i.bn, 255
  br i1 %i.bp, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = load i32, ptr %0, align 16, !tbaa !40
  %i.br = icmp sgt i32 %i.bq, 1
  %.pre = load i32, ptr %i.g, align 8, !tbaa !72  ; 5 uses
  %.pre175 = load i32, ptr %i.s, align 8, !tbaa !71 ; 13 uses
  %.pre176 = load ptr, ptr %2, align 8, !tbaa !69 ; 13 uses
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = lshr i32 %.pre, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre176, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !33
  %i.bw = icmp slt i32 %.pre, %.pre175
  %i.bx = zext i1 %i.bw to i32
  %spec.select.i = add i32 %.pre, %i.bx           ; 5 uses
  %i.by = zext i8 %i.bv to i32
  %i.bz = and i32 %.pre, 7
  %i.ca = lshr i32 %i.by, %i.bz
  store i32 %spec.select.i, ptr %i.g, align 8, !tbaa !72
  %i.cb = lshr i32 %spec.select.i, 3
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre176, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !33
  %i.cf = icmp slt i32 %spec.select.i, %.pre175
  %i.cg = zext i1 %i.cf to i32
  %spec.select.i121 = add i32 %spec.select.i, %i.cg ; 2 uses
  %i.ch = zext i8 %i.ce to i32
  %i.ci = and i32 %spec.select.i, 7
  %i.cj = lshr i32 %i.ch, %i.ci
  %i.ck = and i32 %i.cj, 1
  store i32 %spec.select.i121, ptr %i.g, align 8, !tbaa !72
  %i.cl = trunc nuw i32 %i.ca to i8
  %i.cm = and i8 %i.cl, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.cn = phi i32 [ %spec.select.i121, %bb.i ], [ %.pre, %bb.h ] ; 4 uses
  %.092 = phi i8 [ %i.cm, %bb.i ], [ 0, %bb.h ]   ; 2 uses
  %.091 = phi i32 [ %i.ck, %bb.i ], [ 0, %bb.h ]  ; 2 uses
  %.val = load i32, ptr %i.t, align 8, !tbaa !64  ; 2 uses
  %.val112 = load ptr, ptr %i.u, align 8, !tbaa !63 ; 2 uses
  %i.co = lshr i32 %i.cn, 3
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.pre176, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 1, !tbaa !33
  %i.cs = and i32 %i.cn, 7
  %i.ct = lshr i32 %i.cr, %i.cs
  %i.cu = sub i32 32, %.val
  %i.cv = lshr i32 -1, %i.cu
  %i.cw = and i32 %i.ct, %i.cv
  %i.cx = zext i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.val112, i64 %i.cx ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !33
  %i.da = sext i16 %i.cz to i32                   ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !33 ; 2 uses
  %i.dd = sext i16 %i.dc to i32                   ; 2 uses
  %i.de = icmp slt i16 %i.dc, 0
  br i1 %i.de, label %bb.k, label %get_vlc2.exit.i

bb.k:                                             ; preds = %bb.j
  %i.df = add i32 %i.cn, %.val
  %i.dg = tail call i32 @llvm.umin.i32(i32 %.pre175, i32 %i.df) ; 3 uses
  %i.dh = lshr i32 %i.dg, 3
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %.pre176, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 1, !tbaa !33
  %i.dl = and i32 %i.dg, 7
  %i.dm = lshr i32 %i.dk, %i.dl
  %i.dn = add nsw i32 %i.dd, 32
  %i.do = lshr i32 -1, %i.dn
  %i.dp = and i32 %i.dm, %i.do
  %i.dq = add i32 %i.dp, %i.da
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.val112, i64 %i.dr ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !33
  %i.dv = sext i16 %i.du to i32
  %i.dw = load i16, ptr %i.ds, align 2, !tbaa !33
  %i.dx = sext i16 %i.dw to i32
  br label %get_vlc2.exit.i

get_vlc2.exit.i:                                  ; preds = %bb.k, %bb.j
  %.167.i.i = phi i32 [ %i.dx, %bb.k ], [ %i.da, %bb.j ] ; 2 uses
  %.165.i.i = phi i32 [ %i.dg, %bb.k ], [ %i.cn, %bb.j ]
  %.1.i.i = phi i32 [ %i.dv, %bb.k ], [ %i.dd, %bb.j ]
  %i.dy = add i32 %.1.i.i, %.165.i.i
  %i.dz = tail call i32 @llvm.umin.i32(i32 %.pre175, i32 %i.dy) ; 5 uses
  store i32 %i.dz, ptr %i.g, align 8, !tbaa !72
  %i.ea = icmp slt i32 %.167.i.i, 0
  br i1 %i.ea, label %bb.l, label %qdm2_get_vlc.exit

bb.l:                                             ; preds = %get_vlc2.exit.i
  %i.eb = lshr i32 %i.dz, 3
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre176, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 1, !tbaa !33
  %i.ef = and i32 %i.dz, 7
  %i.eg = lshr i32 %i.ee, %i.ef
  %i.eh = and i32 %i.eg, 7                        ; 2 uses
  %i.ei = add i32 %i.dz, 3
  %i.ej = tail call i32 @llvm.umin.i32(i32 %.pre175, i32 %i.ei) ; 4 uses
  store i32 %i.ej, ptr %i.g, align 8, !tbaa !72
  %i.ek = lshr i32 %i.ej, 3
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %.pre176, i64 %i.el
  %i.en = load i32, ptr %i.em, align 1, !tbaa !33
  %i.eo = and i32 %i.ej, 7
  %i.ep = lshr i32 %i.en, %i.eo
  %i.eq = xor i32 %i.eh, 31
  %i.er = lshr i32 -1, %i.eq
  %i.es = and i32 %i.er, %i.ep
  %i.et = add i32 %i.ej, 1
  %i.eu = add i32 %i.et, %i.eh
  %i.ev = tail call i32 @llvm.umin.i32(i32 %.pre175, i32 %i.eu) ; 2 uses
  store i32 %i.ev, ptr %i.g, align 8, !tbaa !72
  br label %qdm2_get_vlc.exit

qdm2_get_vlc.exit:                                ; preds = %get_vlc2.exit.i, %bb.l
  %i.ew = phi i32 [ %i.ev, %bb.l ], [ %i.dz, %get_vlc2.exit.i ] ; 3 uses
  %.020.i = phi i32 [ %i.es, %bb.l ], [ %.167.i.i, %get_vlc2.exit.i ]
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr @fft_level_index_table, i64 %i.bo
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !81
  %i.ez = sext i16 %i.ey to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !57
  %i.fc = add nsw i32 %i.fb, %.020.i
  %i.fd = tail call i32 @llvm.smax.i32(i32 %i.fc, i32 0) ; 2 uses
  %i.fe = lshr i32 %i.ew, 3
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %.pre176, i64 %i.ff
  %i.fh = load i32, ptr %i.fg, align 1, !tbaa !33
  %i.fi = and i32 %i.ew, 7
  %i.fj = lshr i32 %i.fh, %i.fi
  %i.fk = and i32 %i.fj, 7                        ; 2 uses
  %i.fl = add i32 %i.ew, 3
  %i.fm = tail call i32 @llvm.umin.i32(i32 %.pre175, i32 %i.fl) ; 4 uses
  store i32 %i.fm, ptr %i.g, align 8, !tbaa !72
  %.not107 = icmp eq i32 %.091, 0                 ; 2 uses
  br i1 %.not107, label %bb.p, label %bb.m

bb.m:                                             ; preds = %qdm2_get_vlc.exit
  %fft_stereo_exp_vlc.val = load i32, ptr @fft_stereo_exp_vlc, align 8, !tbaa !64
  %fft_stereo_exp_vlc.val111 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fft_stereo_exp_vlc, i64 8), align 8, !tbaa !63
  %i.fn = lshr i32 %i.fm, 3
  %i.fo = zext nneg i32 %i.fn to i64
  %i.fp = getelementptr inbounds nuw i8, ptr %.pre176, i64 %i.fo
  %i.fq = load i32, ptr %i.fp, align 1, !tbaa !33
  %i.fr = and i32 %i.fm, 7
  %i.fs = lshr i32 %i.fq, %i.fr
  %i.ft = sub i32 32, %fft_stereo_exp_vlc.val
  %i.fu = lshr i32 -1, %i.ft
  %i.fv = and i32 %i.fs, %i.fu
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %fft_stereo_exp_vlc.val111, i64 %i.fw ; 2 uses
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !33 ; 2 uses
  %i.fz = zext nneg i16 %i.fy to i32
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 2
  %i.gb = load i16, ptr %i.ga, align 2, !tbaa !33
  %i.gc = sext i16 %i.gb to i32
  %i.gd = add i32 %i.fm, %i.gc
  %i.ge = tail call i32 @llvm.umin.i32(i32 %.pre175, i32 %i.gd) ; 5 uses
  store i32 %i.ge, ptr %i.g, align 8, !tbaa !72
  %i.gf = icmp slt i16 %i.fy, 0
  br i1 %i.gf, label %bb.n, label %qdm2_get_vlc.exit127

bb.n:                                             ; preds = %bb.m
  %i.gg = lshr i32 %i.ge, 3
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %.pre176, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 1, !tbaa !33
  %i.gk = and i32 %i.ge, 7
  %i.gl = lshr i32 %i.gj, %i.gk
  %i.gm = and i32 %i.gl, 7                        ; 2 uses
  %i.gn = add i32 %i.ge, 3
  %i.go = tail call i32 @llvm.umin.i32(i32 %.pre175, i32 %i.gn) ; 4 uses
  store i32 %i.go, ptr %i.g, align 8, !tbaa !72
  %i.gp = lshr i32 %i.go, 3
  %i.gq = zext nneg i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw i8, ptr %.pre176, i64 %i.gq
  %i.gs = load i32, ptr %i.gr, align 1, !tbaa !33
end_hunk_0
