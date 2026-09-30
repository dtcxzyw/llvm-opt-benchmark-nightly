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
  %i.f = shl nuw i32 1, %i.e                      ; 5 uses
  %i.g = getelementptr i8, ptr %2, i64 8          ; 16 uses
  %i.h = getelementptr i8, ptr %2, i64 12         ; 3 uses
  %.val119157 = load i32, ptr %i.g, align 8, !tbaa !72
  %.val120158 = load i32, ptr %i.h, align 4, !tbaa !70
  %i.i = icmp sgt i32 %.val120158, %.val119157
  br i1 %i.i, label %.lr.ph163, label %.critedge

.lr.ph163:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 146472
  %i.k = zext nneg i32 %i.a to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr @vlc_tab_fft_tone_offset, i64 %i.k ; 4 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8        ; 3 uses
  %i.n = shl i32 8, %i.e
  %i.o = icmp slt i32 %i.f, 3
  %i.p = add nsw i32 %i.f, -1                     ; 2 uses
  %i.q = shl nuw i32 1, %i.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.not106 = icmp eq i32 %3, 0                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 51388
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 51344 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 51348
  %i.x = sext i32 %1 to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.x ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 41344 ; 2 uses
  %invariant.op = sub i32 2, %i.f
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph163, %bb.v
  %.079161 = phi i32 [ 1, %.lr.ph163 ], [ %i.jf, %bb.v ] ; 2 uses
  %.080160 = phi i32 [ 0, %.lr.ph163 ], [ %.4, %bb.v ] ; 4 uses
  %.086159 = phi i32 [ 0, %.lr.ph163 ], [ %.490, %bb.v ] ; 4 uses
  %i.aa = load i32, ptr %i.j, align 8, !tbaa !50
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.val115141 = load i32, ptr %i.l, align 8, !tbaa !64
  %.val116142 = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.ab = tail call fastcc i32 @qdm2_get_vlc(ptr noundef %2, i32 %.val115141, ptr %.val116142, i32 noundef 1, i32 noundef 2) ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 2
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %i.ad = phi i32 [ %i.ai, %bb.d ], [ %i.ab, %.preheader ]
  %.181144 = phi i32 [ %.282, %bb.d ], [ %.080160, %.preheader ]
  %.187143 = phi i32 [ %.288, %bb.d ], [ %.086159, %.preheader ] ; 2 uses
  %.val117 = load i32, ptr %i.g, align 8, !tbaa !72
  %.val118 = load i32, ptr %i.h, align 4, !tbaa !70
  %i.ae = icmp slt i32 %.val118, %.val117
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.af = load i32, ptr %i.r, align 8, !tbaa !41
  %i.ag = icmp slt i32 %.187143, %i.af
  br i1 %i.ag, label %.critedge.sink.split, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.ah = icmp eq i32 %i.ad, 0                    ; 2 uses
  %.pn = select i1 %i.ah, i32 %i.f, i32 %i.n
  %.pn109 = select i1 %i.ah, i32 1, i32 8
  %.pn108 = shl i32 %.pn109, %i.a
  %.282 = add nsw i32 %.pn108, %.181144           ; 2 uses
  %.288 = add nsw i32 %.pn, %.187143              ; 2 uses
  %.val115 = load i32, ptr %i.l, align 8, !tbaa !64
  %.val116 = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.ai = tail call fastcc i32 @qdm2_get_vlc(ptr noundef %2, i32 %.val115, ptr %.val116, i32 noundef 1, i32 noundef 2) ; 3 uses
  %i.aj = icmp slt i32 %i.ai, 2
  br i1 %i.aj, label %.lr.ph, label %._crit_edge, !llvm.loop !206

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %.187.lcssa = phi i32 [ %.086159, %.preheader ], [ %.288, %bb.d ]
  %.181.lcssa = phi i32 [ %.080160, %.preheader ], [ %.282, %bb.d ]
  %.1.lcssa = phi i32 [ %.079161, %.preheader ], [ 1, %bb.d ]
  %.lcssa = phi i32 [ %i.ab, %.preheader ], [ %i.ai, %bb.d ]
  %i.ak = add i32 %.1.lcssa, -2
  %i.al = add i32 %i.ak, %.lcssa
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  br i1 %i.o, label %.critedge.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val113 = load i32, ptr %i.l, align 8, !tbaa !64
  %.val114 = load ptr, ptr %i.m, align 8, !tbaa !63
  %i.am = tail call fastcc i32 @qdm2_get_vlc(ptr noundef %2, i32 %.val113, ptr %.val114, i32 noundef 1, i32 noundef 2)
  %i.an = add nsw i32 %i.am, %.079161             ; 3 uses
  %.not104148 = icmp slt i32 %i.an, %i.p
  br i1 %.not104148, label %.loopexit, label %.lr.ph153

.lr.ph153:                                        ; preds = %bb.f, %.lr.ph153
  %.2151 = phi i32 [ %.reass.reass, %.lr.ph153 ], [ %i.an, %bb.f ]
  %.383150 = phi i32 [ %i.ap, %.lr.ph153 ], [ %.080160, %bb.f ]
  %.389149 = phi i32 [ %i.ao, %.lr.ph153 ], [ %.086159, %bb.f ]
  %.reass.reass = add i32 %.2151, %invariant.op   ; 3 uses
  %i.ao = add nsw i32 %.389149, %i.f              ; 2 uses
  %i.ap = add nsw i32 %.383150, %i.q              ; 2 uses
  %.not104 = icmp slt i32 %.reass.reass, %i.p
  br i1 %.not104, label %.loopexit, label %.lr.ph153, !llvm.loop !207

.loopexit:                                        ; preds = %.lr.ph153, %bb.f, %._crit_edge
  %.490 = phi i32 [ %.187.lcssa, %._crit_edge ], [ %.086159, %bb.f ], [ %i.ao, %.lr.ph153 ] ; 2 uses
  %.4 = phi i32 [ %.181.lcssa, %._crit_edge ], [ %.080160, %bb.f ], [ %i.ap, %.lr.ph153 ] ; 3 uses
  %.3 = phi i32 [ %i.al, %._crit_edge ], [ %i.an, %bb.f ], [ %.reass.reass, %.lr.ph153 ] ; 3 uses
  %i.aq = load i32, ptr %i.r, align 8, !tbaa !41
  %.not105 = icmp slt i32 %.490, %i.aq
  br i1 %.not105, label %bb.g, label %.critedge

bb.g:                                             ; preds = %.loopexit
  %i.ar = ashr i32 %.3, %i.a                      ; 3 uses
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = icmp ugt i32 %i.ar, 255
  br i1 %i.at, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = load i32, ptr %0, align 16, !tbaa !40
  %i.av = icmp sgt i32 %i.au, 1
  %.pre = load i32, ptr %i.g, align 8, !tbaa !72  ; 5 uses
  %.pre177 = load i32, ptr %i.s, align 8, !tbaa !71 ; 13 uses
  %.pre178 = load ptr, ptr %2, align 8, !tbaa !69 ; 13 uses
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = lshr i32 %.pre, 3
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !33
  %i.ba = icmp slt i32 %.pre, %.pre177
  %i.bb = zext i1 %i.ba to i32
  %spec.select.i = add i32 %.pre, %i.bb           ; 5 uses
  %i.bc = zext i8 %i.az to i32
  %i.bd = and i32 %.pre, 7
  %i.be = lshr i32 %i.bc, %i.bd
  store i32 %spec.select.i, ptr %i.g, align 8, !tbaa !72
  %i.bf = lshr i32 %spec.select.i, 3
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !33
  %i.bj = icmp slt i32 %spec.select.i, %.pre177
  %i.bk = zext i1 %i.bj to i32
  %spec.select.i121 = add i32 %spec.select.i, %i.bk ; 2 uses
  %i.bl = zext i8 %i.bi to i32
  %i.bm = and i32 %spec.select.i, 7
  %i.bn = lshr i32 %i.bl, %i.bm
  %i.bo = and i32 %i.bn, 1
  store i32 %spec.select.i121, ptr %i.g, align 8, !tbaa !72
  %i.bp = trunc nuw i32 %i.be to i8
  %i.bq = and i8 %i.bp, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.br = phi i32 [ %spec.select.i121, %bb.i ], [ %.pre, %bb.h ] ; 4 uses
  %.092 = phi i8 [ %i.bq, %bb.i ], [ 0, %bb.h ]   ; 2 uses
  %.091 = phi i32 [ %i.bo, %bb.i ], [ 0, %bb.h ]  ; 2 uses
  %fft_level_exp_alt_vlc.val = load i32, ptr @fft_level_exp_alt_vlc, align 8
  %fft_level_exp_vlc.val = load i32, ptr @fft_level_exp_vlc, align 8
  %.val = select i1 %.not106, i32 %fft_level_exp_alt_vlc.val, i32 %fft_level_exp_vlc.val ; 2 uses
  %.val135 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fft_level_exp_alt_vlc, i64 8), align 8
  %.val136 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fft_level_exp_vlc, i64 8), align 8
  %.val112 = select i1 %.not106, ptr %.val135, ptr %.val136 ; 2 uses
  %i.bs = lshr i32 %i.br, 3
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 1, !tbaa !33
  %i.bw = and i32 %i.br, 7
  %i.bx = lshr i32 %i.bv, %i.bw
  %i.by = sub i32 32, %.val
  %i.bz = lshr i32 -1, %i.by
  %i.ca = and i32 %i.bx, %i.bz
  %i.cb = zext i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.val112, i64 %i.cb ; 2 uses
  %i.cd = load i16, ptr %i.cc, align 2, !tbaa !33
  %i.ce = sext i16 %i.cd to i32                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !33 ; 2 uses
  %i.ch = sext i16 %i.cg to i32                   ; 2 uses
  %i.ci = icmp slt i16 %i.cg, 0
  br i1 %i.ci, label %bb.k, label %get_vlc2.exit.i

bb.k:                                             ; preds = %bb.j
  %i.cj = add i32 %i.br, %.val
  %i.ck = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.cj) ; 3 uses
  %i.cl = lshr i32 %i.ck, 3
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.cm
  %i.co = load i32, ptr %i.cn, align 1, !tbaa !33
  %i.cp = and i32 %i.ck, 7
  %i.cq = lshr i32 %i.co, %i.cp
  %i.cr = add nsw i32 %i.ch, 32
  %i.cs = lshr i32 -1, %i.cr
  %i.ct = and i32 %i.cq, %i.cs
  %i.cu = add i32 %i.ct, %i.ce
  %i.cv = zext i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.val112, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !33
  %i.cz = sext i16 %i.cy to i32
  %i.da = load i16, ptr %i.cw, align 2, !tbaa !33
  %i.db = sext i16 %i.da to i32
  br label %get_vlc2.exit.i

get_vlc2.exit.i:                                  ; preds = %bb.k, %bb.j
  %.167.i.i = phi i32 [ %i.db, %bb.k ], [ %i.ce, %bb.j ] ; 2 uses
  %.165.i.i = phi i32 [ %i.ck, %bb.k ], [ %i.br, %bb.j ]
  %.1.i.i = phi i32 [ %i.cz, %bb.k ], [ %i.ch, %bb.j ]
  %i.dc = add i32 %.1.i.i, %.165.i.i
  %i.dd = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.dc) ; 5 uses
  store i32 %i.dd, ptr %i.g, align 8, !tbaa !72
  %i.de = icmp slt i32 %.167.i.i, 0
  br i1 %i.de, label %bb.l, label %qdm2_get_vlc.exit

bb.l:                                             ; preds = %get_vlc2.exit.i
  %i.df = lshr i32 %i.dd, 3
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 1, !tbaa !33
  %i.dj = and i32 %i.dd, 7
  %i.dk = lshr i32 %i.di, %i.dj
  %i.dl = and i32 %i.dk, 7                        ; 2 uses
  %i.dm = add i32 %i.dd, 3
  %i.dn = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.dm) ; 4 uses
  store i32 %i.dn, ptr %i.g, align 8, !tbaa !72
  %i.do = lshr i32 %i.dn, 3
  %i.dp = zext nneg i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 1, !tbaa !33
  %i.ds = and i32 %i.dn, 7
  %i.dt = lshr i32 %i.dr, %i.ds
  %i.du = xor i32 %i.dl, 31
  %i.dv = lshr i32 -1, %i.du
  %i.dw = and i32 %i.dv, %i.dt
  %i.dx = add i32 %i.dn, 1
  %i.dy = add i32 %i.dx, %i.dl
  %i.dz = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.dy) ; 2 uses
  store i32 %i.dz, ptr %i.g, align 8, !tbaa !72
  br label %qdm2_get_vlc.exit

qdm2_get_vlc.exit:                                ; preds = %get_vlc2.exit.i, %bb.l
  %i.ea = phi i32 [ %i.dz, %bb.l ], [ %i.dd, %get_vlc2.exit.i ] ; 3 uses
  %.020.i = phi i32 [ %i.dw, %bb.l ], [ %.167.i.i, %get_vlc2.exit.i ]
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr @fft_level_index_table, i64 %i.as
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !81
  %i.ed = sext i16 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !57
  %i.eg = add nsw i32 %i.ef, %.020.i
  %i.eh = tail call i32 @llvm.smax.i32(i32 %i.eg, i32 0) ; 2 uses
  %i.ei = lshr i32 %i.ea, 3
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 1, !tbaa !33
  %i.em = and i32 %i.ea, 7
  %i.en = lshr i32 %i.el, %i.em
  %i.eo = and i32 %i.en, 7                        ; 2 uses
  %i.ep = add i32 %i.ea, 3
  %i.eq = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.ep) ; 4 uses
  store i32 %i.eq, ptr %i.g, align 8, !tbaa !72
  %.not107 = icmp eq i32 %.091, 0                 ; 2 uses
  br i1 %.not107, label %bb.p, label %bb.m

bb.m:                                             ; preds = %qdm2_get_vlc.exit
  %fft_stereo_exp_vlc.val = load i32, ptr @fft_stereo_exp_vlc, align 8, !tbaa !64
  %fft_stereo_exp_vlc.val111 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fft_stereo_exp_vlc, i64 8), align 8, !tbaa !63
  %i.er = lshr i32 %i.eq, 3
  %i.es = zext nneg i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 1, !tbaa !33
  %i.ev = and i32 %i.eq, 7
  %i.ew = lshr i32 %i.eu, %i.ev
  %i.ex = sub i32 32, %fft_stereo_exp_vlc.val
  %i.ey = lshr i32 -1, %i.ex
  %i.ez = and i32 %i.ew, %i.ey
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %fft_stereo_exp_vlc.val111, i64 %i.fa ; 2 uses
  %i.fc = load i16, ptr %i.fb, align 2, !tbaa !33 ; 2 uses
  %i.fd = zext nneg i16 %i.fc to i32
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 2
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !33
  %i.fg = sext i16 %i.ff to i32
  %i.fh = add i32 %i.eq, %i.fg
  %i.fi = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.fh) ; 5 uses
  store i32 %i.fi, ptr %i.g, align 8, !tbaa !72
  %i.fj = icmp slt i16 %i.fc, 0
  br i1 %i.fj, label %bb.n, label %qdm2_get_vlc.exit127

bb.n:                                             ; preds = %bb.m
  %i.fk = lshr i32 %i.fi, 3
  %i.fl = zext nneg i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.fl
  %i.fn = load i32, ptr %i.fm, align 1, !tbaa !33
  %i.fo = and i32 %i.fi, 7
  %i.fp = lshr i32 %i.fn, %i.fo
  %i.fq = and i32 %i.fp, 7                        ; 2 uses
  %i.fr = add i32 %i.fi, 3
  %i.fs = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.fr) ; 4 uses
  store i32 %i.fs, ptr %i.g, align 8, !tbaa !72
  %i.ft = lshr i32 %i.fs, 3
  %i.fu = zext nneg i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 1, !tbaa !33
  %i.fx = and i32 %i.fs, 7
  %i.fy = lshr i32 %i.fw, %i.fx
  %i.fz = xor i32 %i.fq, 31
  %i.ga = lshr i32 -1, %i.fz
  %i.gb = and i32 %i.ga, %i.fy
  %i.gc = add i32 %i.fs, 1
  %i.gd = add i32 %i.gc, %i.fq
  %i.ge = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.gd) ; 2 uses
  store i32 %i.ge, ptr %i.g, align 8, !tbaa !72
  br label %qdm2_get_vlc.exit127

qdm2_get_vlc.exit127:                             ; preds = %bb.m, %bb.n
  %i.gf = phi i32 [ %i.ge, %bb.n ], [ %i.fi, %bb.m ] ; 3 uses
  %.020.i126 = phi i32 [ %i.gb, %bb.n ], [ %i.fd, %bb.m ]
  %i.gg = sub nsw i32 %i.eh, %.020.i126
  %fft_stereo_phase_vlc.val = load i32, ptr @fft_stereo_phase_vlc, align 8, !tbaa !64
  %fft_stereo_phase_vlc.val110 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fft_stereo_phase_vlc, i64 8), align 8, !tbaa !63
  %i.gh = lshr i32 %i.gf, 3
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 1, !tbaa !33
  %i.gl = and i32 %i.gf, 7
  %i.gm = lshr i32 %i.gk, %i.gl
  %i.gn = sub i32 32, %fft_stereo_phase_vlc.val
  %i.go = lshr i32 -1, %i.gn
  %i.gp = and i32 %i.gm, %i.go
  %i.gq = zext i32 %i.gp to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %fft_stereo_phase_vlc.val110, i64 %i.gq ; 2 uses
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !33 ; 2 uses
  %i.gt = zext nneg i16 %i.gs to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 2
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !33
  %i.gw = sext i16 %i.gv to i32
  %i.gx = add i32 %i.gf, %i.gw
  %i.gy = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.gx) ; 4 uses
  store i32 %i.gy, ptr %i.g, align 8, !tbaa !72
  %i.gz = icmp slt i16 %i.gs, 0
  br i1 %i.gz, label %bb.o, label %qdm2_get_vlc.exit133

bb.o:                                             ; preds = %qdm2_get_vlc.exit127
  %i.ha = lshr i32 %i.gy, 3
  %i.hb = zext nneg i32 %i.ha to i64
  %i.hc = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 1, !tbaa !33
  %i.he = and i32 %i.gy, 7
  %i.hf = lshr i32 %i.hd, %i.he
  %i.hg = and i32 %i.hf, 7                        ; 2 uses
  %i.hh = add i32 %i.gy, 3
  %i.hi = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.hh) ; 4 uses
  store i32 %i.hi, ptr %i.g, align 8, !tbaa !72
  %i.hj = lshr i32 %i.hi, 3
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw i8, ptr %.pre178, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 1, !tbaa !33
  %i.hn = and i32 %i.hi, 7
  %i.ho = lshr i32 %i.hm, %i.hn
  %i.hp = xor i32 %i.hg, 31
  %i.hq = lshr i32 -1, %i.hp
  %i.hr = and i32 %i.hq, %i.ho
  %i.hs = add i32 %i.hi, 1
  %i.ht = add i32 %i.hs, %i.hg
  %i.hu = tail call i32 @llvm.umin.i32(i32 %.pre177, i32 %i.ht)
  store i32 %i.hu, ptr %i.g, align 8, !tbaa !72
  br label %qdm2_get_vlc.exit133

qdm2_get_vlc.exit133:                             ; preds = %qdm2_get_vlc.exit127, %bb.o
  %.020.i132 = phi i32 [ %i.hr, %bb.o ], [ %i.gt, %qdm2_get_vlc.exit127 ]
  %i.hv = sub nsw i32 %i.eo, %.020.i132           ; 2 uses
  %i.hw = lshr i32 %i.hv, 28
  %i.hx = and i32 %i.hw, 8
  %spec.select = add nsw i32 %i.hx, %i.hv
  %i.hy = trunc i32 %i.gg to i16
  %i.hz = trunc i32 %spec.select to i8
  br label %bb.p

bb.p:                                             ; preds = %qdm2_get_vlc.exit133, %qdm2_get_vlc.exit
  %.085 = phi i8 [ 0, %qdm2_get_vlc.exit ], [ %i.hz, %qdm2_get_vlc.exit133 ]
  %.084 = phi i16 [ 0, %qdm2_get_vlc.exit ], [ %i.hy, %qdm2_get_vlc.exit133 ]
  %i.ia = load i32, ptr %i.u, align 16, !tbaa !47
  %i.ib = add nuw nsw i32 %i.ar, 1
  %i.ic = icmp sgt i32 %i.ia, %i.ib
  br i1 %i.ic, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.id = load i32, ptr %i.v, align 16, !tbaa !73 ; 5 uses
  %i.ie = add nsw i32 %i.id, %.091
  %i.if = icmp ult i32 %i.ie, 1000
  br i1 %i.if, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.ig = load i32, ptr %i.y, align 4, !tbaa !57
  %i.ih = icmp slt i32 %i.ig, 0
  br i1 %i.ih, label %bb.s, label %qdm2_fft_init_coefficient.exit

bb.s:                                             ; preds = %bb.r
  store i32 %i.id, ptr %i.y, align 4, !tbaa !57
  br label %qdm2_fft_init_coefficient.exit

qdm2_fft_init_coefficient.exit:                   ; preds = %bb.r, %bb.s
  %i.ii = icmp sgt i32 %.4, 13
  %.v = select i1 %i.ii, i32 65522, i32 2
  %i.ij = add i32 %.v, %.4
  %i.ik = trunc i32 %i.ij to i16                  ; 2 uses
  %i.il = sext i32 %i.id to i64
  %i.im = getelementptr inbounds [10 x i8], ptr %i.z, i64 %i.il ; 5 uses
  store i16 %i.ik, ptr %i.im, align 2, !tbaa !76
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  store i8 %.092, ptr %i.in, align 2, !tbaa !77
  %i.io = trunc i32 %.3 to i16                    ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 4
  store i16 %i.io, ptr %i.ip, align 2, !tbaa !80
  %i.iq = trunc i32 %i.eh to i16
  %i.ir = getelementptr inbounds nuw i8, ptr %i.im, i64 6
  store i16 %i.iq, ptr %i.ir, align 2, !tbaa !78
  %i.is = trunc nuw nsw i32 %i.eo to i8
  %i.it = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  store i8 %i.is, ptr %i.it, align 2, !tbaa !79
  %i.iu = add nsw i32 %i.id, 1                    ; 3 uses
  store i32 %i.iu, ptr %i.v, align 16, !tbaa !73
  br i1 %.not107, label %bb.v, label %bb.t

bb.t:                                             ; preds = %qdm2_fft_init_coefficient.exit
  %i.iv = load i32, ptr %i.y, align 4, !tbaa !57
  %i.iw = icmp slt i32 %i.iv, 0
  br i1 %i.iw, label %bb.u, label %qdm2_fft_init_coefficient.exit134

bb.u:                                             ; preds = %bb.t
  store i32 %i.iu, ptr %i.y, align 4, !tbaa !57
  br label %qdm2_fft_init_coefficient.exit134

qdm2_fft_init_coefficient.exit134:                ; preds = %bb.t, %bb.u
  %i.ix = sext i32 %i.iu to i64
  %i.iy = getelementptr inbounds [10 x i8], ptr %i.z, i64 %i.ix ; 5 uses
  store i16 %i.ik, ptr %i.iy, align 2, !tbaa !76
  %i.iz = xor i8 %.092, 1
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 2
  store i8 %i.iz, ptr %i.ja, align 2, !tbaa !77
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store i16 %i.io, ptr %i.jb, align 2, !tbaa !80
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iy, i64 6
  store i16 %.084, ptr %i.jc, align 2, !tbaa !78
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  store i8 %.085, ptr %i.jd, align 2, !tbaa !79
  %i.je = add nsw i32 %i.id, 2
  store i32 %i.je, ptr %i.v, align 16, !tbaa !73
  br label %bb.v

bb.v:                                             ; preds = %qdm2_fft_init_coefficient.exit134, %qdm2_fft_init_coefficient.exit, %bb.p
  %i.jf = add nsw i32 %.3, 1
  %.val119 = load i32, ptr %i.g, align 8, !tbaa !72
  %.val120 = load i32, ptr %i.h, align 4, !tbaa !70
  %i.jg = icmp sgt i32 %.val120, %.val119
  br i1 %i.jg, label %bb.b, label %.critedge, !llvm.loop !208

.critedge.sink.split:                             ; preds = %bb.e, %bb.c
  %.str.34.sink = phi ptr [ @.str.34, %bb.c ], [ @.str.35, %bb.e ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull %.str.34.sink) #11
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.g, %bb.v, %bb.q, %.critedge.sink.split, %bb.a, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare hidden void @ff_mpa_synth_filter_float(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { cold }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !34}
!1 = distinct !{!1, !34}
!2 = distinct !{!2, !34}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"override-stack-alignment", i32 16}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!14 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!15 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!"AVRational", !9, i64 0, !9, i64 4}
!19 = !{!"float", !8, i64 0}
!20 = !{!"p1 short", !12, i64 0}
!21 = !{!"AVChannelLayout", !9, i64 0, !9, i64 4, !8, i64 8, !12, i64 16}
!22 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!23 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!24 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!25 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!26 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!27 = !{!"p1 int", !12, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!30 = !{!"AVCodecContext", !13, i64 0, !9, i64 8, !9, i64 12, !14, i64 16, !9, i64 24, !9, i64 28, !12, i64 32, !15, i64 40, !12, i64 48, !16, i64 56, !9, i64 64, !9, i64 68, !17, i64 72, !9, i64 80, !18, i64 84, !18, i64 92, !18, i64 100, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !18, i64 128, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !9, i64 152, !9, i64 156, !9, i64 160, !9, i64 164, !9, i64 168, !9, i64 172, !9, i64 176, !12, i64 184, !12, i64 192, !9, i64 200, !19, i64 204, !19, i64 208, !19, i64 212, !19, i64 216, !19, i64 220, !19, i64 224, !19, i64 228, !19, i64 232, !19, i64 236, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !20, i64 288, !20, i64 296, !20, i64 304, !9, i64 312, !9, i64 316, !9, i64 320, !9, i64 324, !9, i64 328, !9, i64 332, !9, i64 336, !9, i64 340, !9, i64 344, !9, i64 348, !21, i64 352, !9, i64 376, !9, i64 380, !9, i64 384, !9, i64 388, !9, i64 392, !9, i64 396, !9, i64 400, !9, i64 404, !12, i64 408, !9, i64 416, !9, i64 420, !9, i64 424, !19, i64 428, !19, i64 432, !9, i64 436, !9, i64 440, !9, i64 444, !9, i64 448, !9, i64 452, !22, i64 456, !16, i64 464, !16, i64 472, !19, i64 480, !19, i64 484, !9, i64 488, !9, i64 492, !17, i64 496, !17, i64 504, !9, i64 512, !9, i64 516, !9, i64 520, !9, i64 524, !9, i64 528, !23, i64 536, !12, i64 544, !24, i64 552, !24, i64 560, !9, i64 568, !9, i64 572, !8, i64 576, !9, i64 640, !9, i64 644, !9, i64 648, !9, i64 652, !9, i64 656, !9, i64 660, !9, i64 664, !12, i64 672, !12, i64 680, !9, i64 688, !9, i64 692, !9, i64 696, !9, i64 700, !9, i64 704, !9, i64 708, !9, i64 712, !9, i64 716, !9, i64 720, !25, i64 728, !17, i64 736, !9, i64 744, !9, i64 748, !17, i64 752, !17, i64 760, !17, i64 768, !26, i64 776, !9, i64 784, !9, i64 788, !16, i64 792, !9, i64 800, !9, i64 804, !16, i64 808, !12, i64 816, !16, i64 824, !27, i64 832, !9, i64 840, !29, i64 848, !9, i64 856, !9, i64 860}
!31 = !{!30, !12, i64 32}
!32 = !{!19, !19, i64 0}
!33 = !{!8, !8, i64 0}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"p1 _ZTS11AVTXContext", !12, i64 0}
!36 = !{!"QDM2FFT", !8, i64 0, !8, i64 4112}
!37 = !{!"MPADSPContext", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40}
!38 = !{!"QDM2Context", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !8, i64 48, !8, i64 304, !8, i64 560, !9, i64 816, !8, i64 824, !8, i64 1080, !8, i64 1336, !9, i64 41336, !9, i64 41340, !8, i64 41344, !9, i64 51344, !8, i64 51348, !8, i64 51368, !8, i64 51388, !35, i64 51416, !12, i64 51424, !36, i64 51440, !17, i64 59648, !9, i64 59656, !8, i64 59660, !37, i64 67856, !8, i64 67904, !8, i64 76096, !8, i64 76112, !8, i64 108880, !8, i64 118096, !8, i64 133456, !8, i64 137296, !8, i64 137456, !8, i64 137936, !8, i64 138320, !8, i64 138736, !8, i64 138788, !8, i64 142628, !9, i64 146468, !9, i64 146472, !9, i64 146476, !9, i64 146480, !9, i64 146484}
!39 = !{!38, !9, i64 4}
!40 = !{!38, !9, i64 0}
!41 = !{!38, !9, i64 8}
!42 = !{!38, !9, i64 12}
!43 = !{!38, !9, i64 16}
!44 = !{!38, !9, i64 20}
!45 = !{!38, !9, i64 28}
!46 = !{!38, !9, i64 36}
!47 = !{!38, !9, i64 32}
!48 = !{!38, !9, i64 44}
!49 = !{!38, !9, i64 40}
!50 = !{!38, !9, i64 146472}
!51 = !{!"llvm.loop.isvectorized", i32 1}
!52 = !{!"llvm.loop.unroll.runtime.disable"}
!53 = !{!"p1 _ZTS13QDM2SubPacket", !12, i64 0}
!54 = !{!"p1 _ZTS12QDM2SubPNode", !12, i64 0}
!55 = !{!"QDM2SubPNode", !53, i64 0, !54, i64 8}
!56 = !{!55, !53, i64 0}
!57 = !{!9, !9, i64 0}
!58 = !{!"QDM2SubPacket", !9, i64 0, !9, i64 4, !17, i64 8}
!59 = !{!58, !9, i64 4}
!60 = !{!58, !17, i64 8}
!61 = !{!"p1 _ZTS7VLCElem", !12, i64 0}
!62 = !{!"VLC", !9, i64 0, !61, i64 8, !9, i64 16, !9, i64 20}
!63 = !{!62, !61, i64 8}
!64 = !{!62, !9, i64 0}
!65 = !{!"branch_weights", i32 4, i32 12}
!66 = !{!"llvm.loop.unroll.disable"}
!67 = !{!38, !9, i64 146484}
!68 = !{!"GetBitContext", !17, i64 0, !9, i64 8, !9, i64 12, !9, i64 16}
!69 = !{!68, !17, i64 0}
!70 = !{!68, !9, i64 12}
!71 = !{!68, !9, i64 16}
!72 = !{!68, !9, i64 8}
!73 = !{!38, !9, i64 51344}
!74 = !{!"short", !8, i64 0}
!75 = !{!"FFTCoefficient", !74, i64 0, !8, i64 2, !74, i64 4, !74, i64 6, !8, i64 8}
!76 = !{!75, !74, i64 0}
!77 = !{!75, !8, i64 2}
!78 = !{!75, !74, i64 6}
!79 = !{!75, !8, i64 8}
!80 = !{!75, !74, i64 4}
!81 = !{!74, !74, i64 0}
!82 = distinct !{!82, !34}
!83 = !{!30, !17, i64 72}
!84 = !{!30, !9, i64 80}
!85 = !{!30, !9, i64 344}
!86 = !{!30, !16, i64 56}
!87 = !{!38, !9, i64 24}
!88 = !{!30, !9, i64 348}
!89 = distinct !{!89, !34}
!90 = distinct !{!90, !34}
!91 = distinct !{!91, !34, !51, !52}
!92 = distinct !{!92, !34, !52, !51}
!93 = distinct !{!93, !34}
!94 = distinct !{!94, !34}
!95 = distinct !{!95, !34}
!96 = distinct !{!96, !34, !51, !52}
!97 = distinct !{!97, !34, !51, !52}
!98 = distinct !{!98, !34, !52, !51}
!99 = distinct !{!99, !34}
!100 = distinct !{!100, !34}
!101 = distinct !{!101, !34, !138}
!102 = distinct !{!102, !34}
!103 = distinct !{!103, !66}
!104 = distinct !{!104, !66}
!105 = distinct !{!105, !34}
!106 = distinct !{!106, !34}
!107 = distinct !{!107, !34}
!108 = distinct !{!108, !66}
!109 = distinct !{!109, !34}
!110 = distinct !{!110, !34}
!111 = distinct !{!111, !34}
!112 = distinct !{!112, !34}
!113 = distinct !{null, null}
!114 = distinct !{!114, !34}
!115 = distinct !{!115, !34}
!116 = distinct !{!116, !34}
!117 = distinct !{!117, !34}
!118 = distinct !{!118, !34}
!119 = distinct !{!119, !34}
!120 = distinct !{!120, !34}
!121 = distinct !{!121, !34}
!122 = !{!"AVPacket", !24, i64 0, !16, i64 8, !16, i64 16, !17, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !26, i64 48, !9, i64 56, !16, i64 64, !16, i64 72, !12, i64 80, !24, i64 88, !18, i64 96}
!123 = !{!122, !17, i64 24}
!124 = !{!122, !9, i64 32}
!125 = !{!38, !9, i64 146480}
!126 = !{!"p2 omnipotent char", !28, i64 0}
!127 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!128 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!129 = !{!"AVFrame", !8, i64 0, !8, i64 64, !126, i64 96, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !18, i64 124, !16, i64 136, !16, i64 144, !18, i64 152, !9, i64 160, !12, i64 168, !9, i64 176, !9, i64 180, !8, i64 184, !127, i64 248, !9, i64 256, !29, i64 264, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !9, i64 296, !16, i64 304, !128, i64 312, !9, i64 320, !24, i64 328, !24, i64 336, !16, i64 344, !16, i64 352, !16, i64 360, !16, i64 368, !12, i64 376, !21, i64 384, !16, i64 408, !9, i64 416}
!130 = !{!129, !9, i64 112}
!131 = !{!17, !17, i64 0}
!132 = !{!38, !17, i64 59648}
!133 = !{!38, !9, i64 59656}
!134 = !{!38, !9, i64 146468}
!135 = !{!38, !9, i64 816}
!136 = !{!55, !54, i64 8}
!137 = !{!58, !9, i64 0}
!138 = !{!"llvm.loop.unswitch.partial.disable"}
!139 = !{!38, !9, i64 146476}
!140 = !{!38, !9, i64 41340}
!141 = !{!38, !9, i64 41336}
!142 = !{!"p1 _ZTS14AVComplexFloat", !12, i64 0}
!143 = !{!"p1 float", !12, i64 0}
!144 = !{!"FFTTone", !19, i64 0, !142, i64 8, !143, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !74, i64 36, !74, i64 38}
!145 = !{!144, !9, i64 28}
!146 = !{!144, !9, i64 24}
!147 = !{!144, !9, i64 32}
!148 = !{!144, !74, i64 36}
!149 = !{!144, !19, i64 0}
!150 = !{!144, !74, i64 38}
!151 = !{!144, !142, i64 8}
!152 = !{!144, !143, i64 16}
!153 = !{!"AVComplexFloat", !19, i64 0, !19, i64 4}
!154 = !{!153, !19, i64 0}
!155 = !{!153, !19, i64 4}
!156 = !{!38, !12, i64 51424}
!157 = !{!38, !35, i64 51416}
!158 = distinct !{!158, !34}
!159 = distinct !{!159, !34}
!160 = distinct !{!160, !34}
!161 = distinct !{!161, !34}
!162 = distinct !{!162, !34}
!163 = distinct !{!163, !34}
!164 = distinct !{!164, !34}
!165 = distinct !{!165, !34}
!166 = !{!62, !9, i64 20}
!167 = !{!62, !9, i64 16}
!168 = distinct !{!168, !34}
!169 = distinct !{!169, !34, !51, !52}
!170 = distinct !{!170, !34, !51, !52}
!171 = distinct !{!171, !34, !52, !51}
!172 = distinct !{!172, !34}
!173 = distinct !{!173, !34}
!174 = distinct !{!174, !34}
!175 = distinct !{!175, !34}
!176 = distinct !{!176, !34}
!177 = distinct !{!177, !34}
!178 = distinct !{!178, !34}
!179 = distinct !{!179, !34}
!180 = distinct !{!180, !34}
!181 = distinct !{!181, !34}
!182 = distinct !{!182, !34}
!183 = distinct !{!183, !34}
!184 = distinct !{!184, !34}
!185 = distinct !{!185, !34}
!186 = distinct !{!186, !34}
!187 = distinct !{!187, !34}
!188 = distinct !{!188, !34}
!189 = distinct !{!189, !34}
!190 = distinct !{!190, !34}
!191 = distinct !{!191, !34}
!192 = distinct !{!192, !34}
!193 = distinct !{!193, !34}
!194 = distinct !{!194, !34}
!195 = distinct !{!195, !66}
!196 = distinct !{!196, !34, !51, !52}
!197 = distinct !{!197, !34, !205}
!198 = distinct !{!198, !34}
!199 = distinct !{!199, !34}
!200 = distinct !{!200, !34}
!201 = distinct !{!201, !34}
!202 = distinct !{!202, !34}
!203 = distinct !{!203, !34}
!204 = distinct !{!204, !34}
!205 = !{!"llvm.loop.peeled.count", i32 1}
!206 = distinct !{!206, !34}
!207 = distinct !{!207, !34}
!208 = distinct !{!208, !34}
end_hunk_0
