Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/convolution_x86_avx512bf16?download=true
inline.NumInlined: 192
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 48
loop-unroll.NumRuntimeUnrolled: 78
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL41convolution_gemm_transB_packed_tile_bf16sERKNS_3MatES2_S2_RS0_S3_iiiiiibiS2_:bb.a
  %spec.select8808 = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.22336.lcssa, float %i.svu)
  %spec.select8809 = tail call nnan ninf nsz float @llvm.minnum.f32(float %spec.select8808, float %i.svv)
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.hn:                                            ; preds = %bb.hj
  %.sroa.speculated1473 = tail call nnan ninf nsz float @llvm.minnum.f32(float %.22336.lcssa, float f0x42B0C0A5)
  %.sroa.speculated = tail call nnan ninf nsz float @llvm.maxnum.f32(float %.sroa.speculated1473, float f0xC2B0C0A5)
  %i.svw = fneg fast float %.sroa.speculated
  %i.svx = tail call fast float @llvm.exp.f32(float %i.svw)
  %i.svy = fadd fast float %i.svx, 1.000000e+00
  %i.svz = fdiv fast float 1.000000e+00, %i.svy
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.ho:                                            ; preds = %bb.hj
  %i.swa = tail call fast float @llvm.exp.f32(float nofpclass(nan inf) %.22336.lcssa)
  %i.swb = fadd fast float %i.swa, 1.000000e+00
  %i.swc = tail call fast float @llvm.log.f32(float %i.swb)
  %i.swd = tail call fast float @llvm.tanh.f32(float %i.swc)
  %i.swe = fmul fast float %i.swd, %.22336.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

bb.hp:                                            ; preds = %bb.hj
  %i.swf = load float, ptr %i.sdy, align 4, !tbaa !22 ; 3 uses
  %i.swg = load float, ptr %i.sdz, align 4, !tbaa !22 ; 2 uses
  %i.swh = fneg fast float %i.swg
  %i.swi = fdiv fast float %i.swh, %i.swf         ; 2 uses
  %i.swj = fcmp fast olt float %.22336.lcssa, %i.swi
  br i1 %i.swj, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.swk = fdiv fast float 1.000000e+00, %i.swf
  %i.swl = fadd fast float %i.swi, %i.swk
  %i.swm = fcmp fast ogt float %.22336.lcssa, %i.swl
  br i1 %i.swm, label %_ZL13activation_ssfiRKN4ncnn3MatE.exit, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.swn = fmul fast float %i.swf, %.22336.lcssa
  %i.swo = fadd fast float %i.swn, %i.swg
  %i.swp = fmul fast float %i.swo, %.22336.lcssa
  br label %_ZL13activation_ssfiRKN4ncnn3MatE.exit

_ZL13activation_ssfiRKN4ncnn3MatE.exit:           ; preds = %bb.hm, %bb.hp, %bb.hj, %bb.hk, %bb.hl, %bb.hn, %bb.ho, %bb.hq, %bb.hr
  %.14951 = phi nsz float [ %.22336.lcssa, %bb.hj ], [ %i.svp, %bb.hk ], [ %i.svt, %bb.hl ], [ 0.000000e+00, %bb.hp ], [ %spec.select8809, %bb.hm ], [ %i.svz, %bb.hn ], [ %i.swe, %bb.ho ], [ %i.swp, %bb.hr ], [ %.22336.lcssa, %bb.hq ]
  %i.swq = bitcast float %.14951 to i32
  %i.swr = lshr i32 %i.swq, 16
  %i.sws = trunc nuw i32 %i.swr to i16
  store i16 %i.sws, ptr %.624349703, align 2, !tbaa !24
  %i.swt = getelementptr inbounds nuw i8, ptr %.624349703, i64 2
  br label %bb.ht

bb.hs:                                            ; preds = %._crit_edge9700
  store float %.22336.lcssa, ptr %.249706, align 4, !tbaa !22
  br label %bb.ht

bb.ht:                                            ; preds = %bb.hs, %_ZL13activation_ssfiRKN4ncnn3MatE.exit
  %.72435 = phi ptr [ %i.swt, %_ZL13activation_ssfiRKN4ncnn3MatE.exit ], [ %.624349703, %bb.hs ]
  %i.swu = getelementptr inbounds nuw i8, ptr %.249706, i64 4 ; 2 uses
  %i.swv = add nuw nsw i32 %.324159705, 1         ; 2 uses
  %exitcond10041.not = icmp eq i32 %i.swv, %5
  br i1 %exitcond10041.not, label %._crit_edge9708, label %bb.hh, !llvm.loop !569

._crit_edge9708:                                  ; preds = %bb.ht, %.preheader8887
  %.24.lcssa = phi ptr [ %.23.lcssa, %.preheader8887 ], [ %i.swu, %bb.ht ]
  %i.sww = getelementptr inbounds [2 x i8], ptr %.49713, i64 %i.otj
  %indvars.iv.next10043 = add nuw nsw i64 %indvars.iv10042, 1 ; 2 uses
  %exitcond10045.not = icmp eq i64 %indvars.iv.next10043, %wide.trip.count
  br i1 %exitcond10045.not, label %._crit_edge9715, label %bb.fq, !llvm.loop !570

._crit_edge9715:                                  ; preds = %._crit_edge9708, %.preheader8890
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree writeonly %.0.val, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) unnamed_addr #18 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 14 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32   ; 38 uses
  %i.e = add nsw i32 %5, -1
  %i.f = mul nsw i32 %7, %i.e
  %.neg = xor i32 %i.f, -1
  %i.g = add i32 %i.b, %.neg
  %i.h = sdiv i32 %i.g, %9
  %i.i = add nsw i32 %i.h, 1                      ; 7 uses
  %i.j = mul nsw i32 %6, %5                       ; 24 uses
  %factor.op.mul1324 = mul i32 %i.d, %9           ; 4 uses
  %i.k = icmp sgt i32 %2, 15
  br i1 %i.k, label %.lr.ph, label %.preheader1302

.lr.ph:                                           ; preds = %bb.a
  %i.l = icmp ne i32 %i.d, 1                      ; 4 uses
  %i.m = icmp slt i32 %4, 2                       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.p = sext i32 %9 to i64                       ; 3 uses
  %i.q = shl nsw i32 %9, 1
  %i.r = sext i32 %i.q to i64                     ; 3 uses
  %i.s = mul nsw i32 %9, 3
  %i.t = sext i32 %i.s to i64                     ; 3 uses
  %i.u = shl nsw i32 %9, 2
  %i.v = sext i32 %i.u to i64                     ; 4 uses
  %i.w = mul nsw i32 %9, 5
  %i.x = sext i32 %i.w to i64                     ; 3 uses
  %i.y = mul nsw i32 %9, 6
  %i.z = sext i32 %i.y to i64                     ; 3 uses
  %i.aa = mul nsw i32 %9, 7
  %i.ab = sext i32 %i.aa to i64                   ; 3 uses
  %i.ac = shl nsw i32 %9, 3
  %i.ad = sext i32 %i.ac to i64                   ; 5 uses
  %i.ae = mul nsw i32 %9, 9
  %i.af = sext i32 %i.ae to i64                   ; 3 uses
  %i.ag = mul nsw i32 %9, 10
  %i.ah = sext i32 %i.ag to i64                   ; 3 uses
  %i.ai = mul nsw i32 %9, 11
  %i.aj = sext i32 %i.ai to i64                   ; 3 uses
  %i.ak = mul nsw i32 %9, 12
  %i.al = sext i32 %i.ak to i64                   ; 4 uses
  %i.am = mul nsw i32 %9, 13
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = mul nsw i32 %9, 14
  %i.ap = sext i32 %i.ao to i64                   ; 3 uses
  %i.aq = mul nsw i32 %9, 15
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %factor.op.mul1319 = mul i32 %7, %i.d
  %i.as = shl nsw i32 %9, 4
  %i.at = sext i32 %i.as to i64                   ; 3 uses
  %i.au = mul nsw i32 %9, 20
  %i.av = sext i32 %i.au to i64
  %i.aw = mul nsw i32 %9, 24
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = mul nsw i32 %9, 28
  %i.az = sext i32 %i.ay to i64
  %i.ba = shl nsw i32 %9, 5
  %i.bb = sext i32 %i.ba to i64                   ; 3 uses
  %i.bc = mul nsw i32 %9, 36
  %i.bd = sext i32 %i.bc to i64
  %i.be = mul nsw i32 %9, 40
  %i.bf = sext i32 %i.be to i64                   ; 2 uses
  %i.bg = mul nsw i32 %9, 44
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul nsw i32 %9, 48
  %i.bj = sext i32 %i.bi to i64                   ; 3 uses
  %i.bk = mul nsw i32 %9, 52
  %i.bl = sext i32 %i.bk to i64
  %i.bm = mul nsw i32 %9, 56
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = mul nsw i32 %9, 60
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i32 %9, 6
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = mul nsw i32 %9, 72
  %i.bt = sext i32 %i.bs to i64
  %i.bu = mul nsw i32 %9, 80
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = mul nsw i32 %9, 88
  %i.bx = sext i32 %i.bw to i64
  %i.by = mul nsw i32 %9, 96
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = mul nsw i32 %9, 104
  %i.cb = sext i32 %i.ca to i64
  %i.cc = mul nsw i32 %9, 112
  %i.cd = sext i32 %i.cc to i64                   ; 2 uses
  %i.ce = mul nsw i32 %9, 120
  %i.cf = sext i32 %i.ce to i64
  %i.cg = shl nsw i32 %9, 7
  %i.ch = sext i32 %i.cg to i64
  %i.ci = mul nsw i32 %9, 144
  %i.cj = sext i32 %i.ci to i64
  %i.ck = mul nsw i32 %9, 160
  %i.cl = sext i32 %i.ck to i64
  %i.cm = mul nsw i32 %9, 176
  %i.cn = sext i32 %i.cm to i64
  %i.co = mul nsw i32 %9, 192
  %i.cp = sext i32 %i.co to i64
  %i.cq = mul nsw i32 %9, 208
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul nsw i32 %9, 224
  %i.ct = sext i32 %i.cs to i64
  %i.cu = mul nsw i32 %9, 240
  %i.cv = sext i32 %i.cu to i64
  %brmerge1391 = or i1 %i.l, %i.m
  %brmerge = or i1 %i.l, %i.m
  %i.cw = insertelement <8 x i32> poison, i32 %10, i64 0
  %i.cx = shufflevector <8 x i32> %i.cw, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %i.cy = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %i.cz = shufflevector <8 x i32> %i.cy, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.da = insertelement <16 x i32> poison, i32 %i.i, i64 0
  %i.db = shufflevector <16 x i32> %i.da, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dc = insertelement <16 x i32> poison, i32 %9, i64 0
  %i.dd = shufflevector <16 x i32> %i.dc, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.de = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.df = shufflevector <2 x i32> %i.de, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dg = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.dh = insertelement <2 x i32> %i.dg, i32 %5, i64 1
  %i.di = insertelement <16 x i32> poison, i32 %i.d, i64 0
  %i.dj = shufflevector <16 x i32> %i.di, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.dk = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.dl = shufflevector <2 x i32> %i.dk, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dm = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.dn = shufflevector <2 x i32> %i.dm, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.do = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.dp = shufflevector <2 x i32> %i.do, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.dq = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.dr = insertelement <2 x i32> %i.dq, i32 %5, i64 1
  br label %bb.b

.preheader1302:                                   ; preds = %.loopexit1303, %bb.a
  %.02758.lcssa = phi i32 [ 0, %bb.a ], [ %i.btl, %.loopexit1303 ] ; 3 uses
  %.02757.lcssa = phi ptr [ %.0.val, %bb.a ], [ %.15, %.loopexit1303 ] ; 2 uses
  %i.ds = or disjoint i32 %.02758.lcssa, 7
  %i.dt = icmp slt i32 %i.ds, %2
  br i1 %i.dt, label %.lr.ph1349, label %.preheader1295

.lr.ph1349:                                       ; preds = %.preheader1302
  %i.du = icmp ne i32 %i.d, 1                     ; 4 uses
  %i.dv = icmp slt i32 %4, 2                      ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.dy = sext i32 %9 to i64                      ; 3 uses
  %i.dz = shl nsw i32 %9, 1
  %i.ea = sext i32 %i.dz to i64                   ; 3 uses
  %i.eb = mul nsw i32 %9, 3
  %i.ec = sext i32 %i.eb to i64                   ; 3 uses
  %i.ed = shl nsw i32 %9, 2
  %i.ee = sext i32 %i.ed to i64                   ; 4 uses
  %i.ef = mul nsw i32 %9, 5
  %i.eg = sext i32 %i.ef to i64                   ; 3 uses
  %i.eh = mul nsw i32 %9, 6
  %i.ei = sext i32 %i.eh to i64                   ; 3 uses
  %i.ej = mul nsw i32 %9, 7
  %i.ek = sext i32 %i.ej to i64                   ; 3 uses
  %factor.op.mul1340 = mul i32 %7, %i.d
  %i.el = shl nsw i32 %9, 3
  %i.em = sext i32 %i.el to i64                   ; 2 uses
  %i.en = mul nsw i32 %9, 12
  %i.eo = sext i32 %i.en to i64
  %i.ep = shl nsw i32 %9, 4
  %i.eq = sext i32 %i.ep to i64                   ; 3 uses
  %i.er = mul nsw i32 %9, 20
  %i.es = sext i32 %i.er to i64
  %i.et = mul nsw i32 %9, 24
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %i.ev = mul nsw i32 %9, 28
  %i.ew = sext i32 %i.ev to i64
  %i.ex = shl nsw i32 %9, 5
  %i.ey = sext i32 %i.ex to i64                   ; 2 uses
  %i.ez = mul nsw i32 %9, 40
  %i.fa = sext i32 %i.ez to i64
  %i.fb = mul nsw i32 %9, 48
  %i.fc = sext i32 %i.fb to i64                   ; 2 uses
  %i.fd = mul nsw i32 %9, 56
  %i.fe = sext i32 %i.fd to i64
  %i.ff = shl nsw i32 %9, 6
  %i.fg = sext i32 %i.ff to i64
  %i.fh = mul nsw i32 %9, 80
  %i.fi = sext i32 %i.fh to i64
  %i.fj = mul nsw i32 %9, 96
  %i.fk = sext i32 %i.fj to i64
  %i.fl = mul nsw i32 %9, 112
  %i.fm = sext i32 %i.fl to i64
  %brmerge1397 = or i1 %i.du, %i.dv
  %brmerge1394 = or i1 %i.du, %i.dv
  %i.fn = insertelement <8 x i32> poison, i32 %10, i64 0
  %i.fo = shufflevector <8 x i32> %i.fn, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.fp = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %i.fq = shufflevector <8 x i32> %i.fp, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.fr = insertelement <4 x i32> poison, i32 %9, i64 0
  %i.fs = shufflevector <4 x i32> %i.fr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ft = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.fu = shufflevector <2 x i32> %i.ft, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fv = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.fw = shufflevector <2 x i32> %i.fv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fx = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.fy = shufflevector <2 x i32> %i.fx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fz = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.ga = insertelement <2 x i32> %i.fz, i32 %5, i64 1
  %i.gb = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %i.gc = shufflevector <4 x i32> %i.gb, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.gd = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.ge = shufflevector <2 x i32> %i.gd, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gf = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.gg = shufflevector <2 x i32> %i.gf, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.gh = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.gi = shufflevector <2 x i32> %i.gh, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gj = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.gk = insertelement <2 x i32> %i.gj, i32 %5, i64 1
  br label %bb.m

bb.b:                                             ; preds = %.lr.ph, %.loopexit1303
  %.027571326 = phi ptr [ %.0.val, %.lr.ph ], [ %.15, %.loopexit1303 ] ; 4 uses
  %.027581325 = phi i32 [ 0, %.lr.ph ], [ %i.btl, %.loopexit1303 ] ; 2 uses
  %i.gl = add nsw i32 %.027581325, %1             ; 5 uses
  %i.gm = insertelement <4 x i32> poison, i32 %i.gl, i64 0
  %i.gn = shufflevector <4 x i32> %i.gm, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.go = add nsw <4 x i32> %i.gn, <i32 1, i32 2, i32 3, i32 4> ; 2 uses
  %i.gp = add nsw i32 %i.gl, 5                    ; 2 uses
  %i.gq = insertelement <2 x i32> poison, i32 %i.gl, i64 0
  %i.gr = shufflevector <2 x i32> %i.gq, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gs = add nsw <2 x i32> %i.gr, <i32 6, i32 7> ; 2 uses
  %i.gt = insertelement <8 x i32> poison, i32 %i.gl, i64 0 ; 2 uses
  %i.gu = shufflevector <4 x i32> %i.go, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gv = shufflevector <8 x i32> %i.gt, <8 x i32> %i.gu, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.gw = insertelement <8 x i32> %i.gv, i32 %i.gp, i64 5
  %i.gx = shufflevector <2 x i32> %i.gs, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gy = shufflevector <8 x i32> %i.gw, <8 x i32> %i.gx, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.gz = sdiv <8 x i32> %i.gy, %i.cz             ; 3 uses
  %i.ha = shufflevector <8 x i32> %i.gt, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.hb = add nsw <8 x i32> %i.ha, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.hc = sdiv <8 x i32> %i.hb, %i.cz             ; 3 uses
  %i.hd = shufflevector <2 x i32> %i.gs, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.he = shufflevector <4 x i32> %i.go, <4 x i32> %i.hd, <16 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 poison, i32 4, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hf = insertelement <16 x i32> %i.he, i32 %i.gl, i64 0
  %i.hg = insertelement <16 x i32> %i.hf, i32 %i.gp, i64 5
  %i.hh = shufflevector <8 x i32> %i.hb, <8 x i32> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hi = shufflevector <16 x i32> %i.hg, <16 x i32> %i.hh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.hj = srem <16 x i32> %i.hi, %i.db            ; 19 uses
  %i.hk = extractelement <8 x i32> %i.gz, i64 0   ; 3 uses
  %i.hl = extractelement <8 x i32> %i.hc, i64 7
  %i.hm = icmp eq i32 %i.hk, %i.hl
  br i1 %i.hm, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  br i1 %brmerge, label %.loopexit1305, label %_ZNK4ncnn3Mat7channelEi.exit3601.lr.ph

_ZNK4ncnn3Mat7channelEi.exit3601.lr.ph:           ; preds = %bb.c
  %i.hn = load i32, ptr %i.a, align 4, !tbaa !31, !noalias !616
  %i.ho = load ptr, ptr %0, align 8, !tbaa !15, !noalias !616 ; 2 uses
  %i.hp = load i64, ptr %i.n, align 8, !tbaa !16, !noalias !616
  %i.hq = load i64, ptr %i.o, align 8, !tbaa !17, !noalias !616 ; 2 uses
  %i.hr = mul i64 %i.hq, %i.hp
  %i.hs = sext i32 %i.hn to i64
  %i.ht = mul nsw i32 %i.hk, %10                  ; 2 uses
  %i.hu = mul i64 %i.hq, %i.hs                    ; 2 uses
  %i.hv = extractelement <16 x i32> %i.hj, i64 0
  %i.hw = mul nsw i32 %i.hv, %9                   ; 2 uses
  %i.hx = insertelement <2 x i64> poison, i64 %i.hr, i64 0
  %i.hy = shufflevector <2 x i64> %i.hx, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %_ZNK4ncnn3Mat7channelEi.exit3601

_ZNK4ncnn3Mat7channelEi.exit3601:                 ; preds = %_ZNK4ncnn3Mat7channelEi.exit3601.lr.ph, %_ZNK4ncnn3Mat7channelEi.exit3601
  %.11316 = phi ptr [ %.027571326, %_ZNK4ncnn3Mat7channelEi.exit3601.lr.ph ], [ %i.ml, %_ZNK4ncnn3Mat7channelEi.exit3601 ] ; 33 uses
  %.027681315 = phi i32 [ 0, %_ZNK4ncnn3Mat7channelEi.exit3601.lr.ph ], [ %i.mm, %_ZNK4ncnn3Mat7channelEi.exit3601 ] ; 2 uses
  %i.hz = add nsw i32 %.027681315, %3             ; 3 uses
  %i.ia = add nsw i32 %i.hz, 1                    ; 2 uses
  %i.ib = insertelement <2 x i32> poison, i32 %i.hz, i64 0
  %i.ic = insertelement <2 x i32> %i.ib, i32 %i.ia, i64 1
  %i.id = sdiv <2 x i32> %i.ic, %i.dl
  %i.ie = sext <2 x i32> %i.id to <2 x i64>
  %i.if = mul <2 x i64> %i.hy, %i.ie              ; 2 uses
  %i.ig = extractelement <2 x i64> %i.if, i64 0
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.ig
  %i.ii = extractelement <2 x i64> %i.if, i64 1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.ii
  %11 = insertelement <2 x i32> poison, i32 %i.ia, i64 0
  %12 = insertelement <2 x i32> %11, i32 %i.hz, i64 1
  %13 = srem <2 x i32> %12, %i.dl
  %.frozen = freeze <2 x i32> %13                 ; 2 uses
  %i.ik = sdiv <2 x i32> %.frozen, %i.dn          ; 2 uses
  %i.il = mul <2 x i32> %i.ik, %i.dn
  %.decomposed = sub <2 x i32> %.frozen, %i.il    ; 2 uses
  %14 = extractelement <2 x i32> %.decomposed, i64 1
  %15 = mul nsw i32 %14, %7
  %16 = add nsw i32 %15, %i.hw
  %17 = sext i32 %16 to i64
  %i.im = extractelement <2 x i32> %.decomposed, i64 0
  %18 = mul nsw i32 %i.im, %7
  %19 = add nsw i32 %18, %i.hw
  %20 = mul nsw <2 x i32> %i.ik, %i.dp            ; 2 uses
  %21 = extractelement <2 x i32> %20, i64 1
  %i.in = add nsw i32 %21, %i.ht
  %i.io = sext i32 %i.in to i64
  %22 = mul i64 %i.hu, %i.io
  %23 = getelementptr inbounds nuw i8, ptr %i.ih, i64 %22
  %24 = getelementptr inbounds [2 x i8], ptr %23, i64 %17 ; 16 uses
  %i.ip = extractelement <2 x i32> %20, i64 0
  %i.iq = add nsw i32 %i.ip, %i.ht
  %i.ir = sext i32 %i.iq to i64
  %i.is = mul i64 %i.hu, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.is
  %i.iu = sext i32 %19 to i64
  %i.iv = getelementptr inbounds [2 x i8], ptr %i.it, i64 %i.iu ; 16 uses
  %i.iw = load i16, ptr %24, align 2, !tbaa !24
  store i16 %i.iw, ptr %.11316, align 2, !tbaa !24
  %i.ix = load i16, ptr %i.iv, align 2, !tbaa !24
  %i.iy = getelementptr inbounds nuw i8, ptr %.11316, i64 2
  store i16 %i.ix, ptr %i.iy, align 2, !tbaa !24
  %i.iz = getelementptr inbounds [2 x i8], ptr %24, i64 %i.p
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !24
  %i.jb = getelementptr inbounds nuw i8, ptr %.11316, i64 4
  store i16 %i.ja, ptr %i.jb, align 2, !tbaa !24
  %i.jc = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.p
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !24
  %i.je = getelementptr inbounds nuw i8, ptr %.11316, i64 6
  store i16 %i.jd, ptr %i.je, align 2, !tbaa !24
  %i.jf = getelementptr inbounds [2 x i8], ptr %24, i64 %i.r
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !24
  %i.jh = getelementptr inbounds nuw i8, ptr %.11316, i64 8
  store i16 %i.jg, ptr %i.jh, align 2, !tbaa !24
  %i.ji = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.r
  %i.jj = load i16, ptr %i.ji, align 2, !tbaa !24
  %i.jk = getelementptr inbounds nuw i8, ptr %.11316, i64 10
  store i16 %i.jj, ptr %i.jk, align 2, !tbaa !24
  %i.jl = getelementptr inbounds [2 x i8], ptr %24, i64 %i.t
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !24
  %i.jn = getelementptr inbounds nuw i8, ptr %.11316, i64 12
  store i16 %i.jm, ptr %i.jn, align 2, !tbaa !24
  %i.jo = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.t
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !24
  %i.jq = getelementptr inbounds nuw i8, ptr %.11316, i64 14
  store i16 %i.jp, ptr %i.jq, align 2, !tbaa !24
  %i.jr = getelementptr inbounds [2 x i8], ptr %24, i64 %i.v
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !24
  %i.jt = getelementptr inbounds nuw i8, ptr %.11316, i64 16
  store i16 %i.js, ptr %i.jt, align 2, !tbaa !24
  %i.ju = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.v
  %i.jv = load i16, ptr %i.ju, align 2, !tbaa !24
  %i.jw = getelementptr inbounds nuw i8, ptr %.11316, i64 18
  store i16 %i.jv, ptr %i.jw, align 2, !tbaa !24
  %i.jx = getelementptr inbounds [2 x i8], ptr %24, i64 %i.x
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !24
  %i.jz = getelementptr inbounds nuw i8, ptr %.11316, i64 20
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !24
  %i.ka = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.x
  %i.kb = load i16, ptr %i.ka, align 2, !tbaa !24
  %i.kc = getelementptr inbounds nuw i8, ptr %.11316, i64 22
  store i16 %i.kb, ptr %i.kc, align 2, !tbaa !24
  %i.kd = getelementptr inbounds [2 x i8], ptr %24, i64 %i.z
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !24
  %i.kf = getelementptr inbounds nuw i8, ptr %.11316, i64 24
  store i16 %i.ke, ptr %i.kf, align 2, !tbaa !24
  %i.kg = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.z
  %i.kh = load i16, ptr %i.kg, align 2, !tbaa !24
  %i.ki = getelementptr inbounds nuw i8, ptr %.11316, i64 26
  store i16 %i.kh, ptr %i.ki, align 2, !tbaa !24
  %i.kj = getelementptr inbounds [2 x i8], ptr %24, i64 %i.ab
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !24
  %i.kl = getelementptr inbounds nuw i8, ptr %.11316, i64 28
  store i16 %i.kk, ptr %i.kl, align 2, !tbaa !24
  %i.km = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.ab
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !24
  %i.ko = getelementptr inbounds nuw i8, ptr %.11316, i64 30
  store i16 %i.kn, ptr %i.ko, align 2, !tbaa !24
  %i.kp = getelementptr inbounds [2 x i8], ptr %24, i64 %i.ad
  %i.kq = load i16, ptr %i.kp, align 2, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %.11316, i64 32
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !24
  %i.ks = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.ad
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !24
  %i.ku = getelementptr inbounds nuw i8, ptr %.11316, i64 34
  store i16 %i.kt, ptr %i.ku, align 2, !tbaa !24
  %i.kv = getelementptr inbounds [2 x i8], ptr %24, i64 %i.af
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !24
  %i.kx = getelementptr inbounds nuw i8, ptr %.11316, i64 36
  store i16 %i.kw, ptr %i.kx, align 2, !tbaa !24
  %i.ky = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.af
  %i.kz = load i16, ptr %i.ky, align 2, !tbaa !24
  %i.la = getelementptr inbounds nuw i8, ptr %.11316, i64 38
  store i16 %i.kz, ptr %i.la, align 2, !tbaa !24
  %i.lb = getelementptr inbounds [2 x i8], ptr %24, i64 %i.ah
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !24
  %i.ld = getelementptr inbounds nuw i8, ptr %.11316, i64 40
  store i16 %i.lc, ptr %i.ld, align 2, !tbaa !24
  %i.le = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.ah
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !24
  %i.lg = getelementptr inbounds nuw i8, ptr %.11316, i64 42
  store i16 %i.lf, ptr %i.lg, align 2, !tbaa !24
  %i.lh = getelementptr inbounds [2 x i8], ptr %24, i64 %i.aj
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !24
  %i.lj = getelementptr inbounds nuw i8, ptr %.11316, i64 44
  store i16 %i.li, ptr %i.lj, align 2, !tbaa !24
  %i.lk = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.aj
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !24
  %i.lm = getelementptr inbounds nuw i8, ptr %.11316, i64 46
  store i16 %i.ll, ptr %i.lm, align 2, !tbaa !24
  %i.ln = getelementptr inbounds [2 x i8], ptr %24, i64 %i.al
  %i.lo = load i16, ptr %i.ln, align 2, !tbaa !24
  %i.lp = getelementptr inbounds nuw i8, ptr %.11316, i64 48
  store i16 %i.lo, ptr %i.lp, align 2, !tbaa !24
  %i.lq = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.al
  %i.lr = load i16, ptr %i.lq, align 2, !tbaa !24
  %i.ls = getelementptr inbounds nuw i8, ptr %.11316, i64 50
  store i16 %i.lr, ptr %i.ls, align 2, !tbaa !24
  %i.lt = getelementptr inbounds [2 x i8], ptr %24, i64 %i.an
  %i.lu = load i16, ptr %i.lt, align 2, !tbaa !24
  %i.lv = getelementptr inbounds nuw i8, ptr %.11316, i64 52
  store i16 %i.lu, ptr %i.lv, align 2, !tbaa !24
  %i.lw = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.an
  %i.lx = load i16, ptr %i.lw, align 2, !tbaa !24
  %i.ly = getelementptr inbounds nuw i8, ptr %.11316, i64 54
  store i16 %i.lx, ptr %i.ly, align 2, !tbaa !24
  %i.lz = getelementptr inbounds [2 x i8], ptr %24, i64 %i.ap
  %i.ma = load i16, ptr %i.lz, align 2, !tbaa !24
  %i.mb = getelementptr inbounds nuw i8, ptr %.11316, i64 56
  store i16 %i.ma, ptr %i.mb, align 2, !tbaa !24
  %i.mc = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.ap
  %i.md = load i16, ptr %i.mc, align 2, !tbaa !24
  %i.me = getelementptr inbounds nuw i8, ptr %.11316, i64 58
  store i16 %i.md, ptr %i.me, align 2, !tbaa !24
  %i.mf = getelementptr inbounds [2 x i8], ptr %24, i64 %i.ar
  %i.mg = load i16, ptr %i.mf, align 2, !tbaa !24
  %i.mh = getelementptr inbounds nuw i8, ptr %.11316, i64 60
  store i16 %i.mg, ptr %i.mh, align 2, !tbaa !24
  %i.mi = getelementptr inbounds [2 x i8], ptr %i.iv, i64 %i.ar
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !24
  %i.mk = getelementptr inbounds nuw i8, ptr %.11316, i64 62
  store i16 %i.mj, ptr %i.mk, align 2, !tbaa !24
  %i.ml = getelementptr inbounds nuw i8, ptr %.11316, i64 64 ; 2 uses
  %i.mm = add nuw nsw i32 %.027681315, 2          ; 3 uses
  %i.mn = or disjoint i32 %i.mm, 1
  %i.mo = icmp slt i32 %i.mn, %4
  br i1 %i.mo, label %_ZNK4ncnn3Mat7channelEi.exit3601, label %.loopexit1305, !llvm.loop !575

.loopexit1305:                                    ; preds = %_ZNK4ncnn3Mat7channelEi.exit3601, %bb.c
  %.12769 = phi i32 [ 0, %bb.c ], [ %i.mm, %_ZNK4ncnn3Mat7channelEi.exit3601 ] ; 2 uses
  %.2 = phi ptr [ %.027571326, %bb.c ], [ %i.ml, %_ZNK4ncnn3Mat7channelEi.exit3601 ] ; 2 uses
  %i.mp = sdiv i32 %4, %i.d                       ; 2 uses
  %i.mq = extractelement <16 x i32> %i.hj, i64 0
  %factor.op.mul.reass = mul i32 %i.mq, %factor.op.mul1324
  %i.mr = icmp slt i32 %.12769, %i.mp
  br i1 %i.mr, label %_ZNK4ncnn3Mat7channelEi.exit3599.lr.ph, label %.loopexit1303

_ZNK4ncnn3Mat7channelEi.exit3599.lr.ph:           ; preds = %.loopexit1305
  %i.ms = sdiv i32 %3, %i.d
  %i.mt = mul nsw i32 %i.hk, %10
  br label %_ZNK4ncnn3Mat7channelEi.exit3599

_ZNK4ncnn3Mat7channelEi.exit3599:                 ; preds = %_ZNK4ncnn3Mat7channelEi.exit3599.lr.ph, %_ZN4ncnn3MatD2Ev.exit3344
  %.31322 = phi ptr [ %.2, %_ZNK4ncnn3Mat7channelEi.exit3599.lr.ph ], [ %.7, %_ZN4ncnn3MatD2Ev.exit3344 ] ; 61 uses
  %.227701321 = phi i32 [ %.12769, %_ZNK4ncnn3Mat7channelEi.exit3599.lr.ph ], [ %i.ajm, %_ZN4ncnn3MatD2Ev.exit3344 ] ; 2 uses
  %i.mu = add nsw i32 %i.ms, %.227701321          ; 2 uses
  %i.mv = srem i32 %i.mu, %i.j                    ; 2 uses
  %i.mw = insertelement <2 x i32> poison, i32 %i.mu, i64 0
  %i.mx = insertelement <2 x i32> %i.mw, i32 %i.mv, i64 1
  %i.my = sdiv <2 x i32> %i.mx, %i.dr             ; 2 uses
  %i.mz = srem i32 %i.mv, %5
  %i.na = load i32, ptr %i.a, align 4, !tbaa !31, !noalias !617
  %i.nb = load ptr, ptr %0, align 8, !tbaa !15, !noalias !617
  %i.nc = load i64, ptr %i.n, align 8, !tbaa !16, !noalias !617
  %i.nd = extractelement <2 x i32> %i.my, i64 0
  %i.ne = sext i32 %i.nd to i64
  %i.nf = mul i64 %i.nc, %i.ne
  %i.ng = load i64, ptr %i.o, align 8, !tbaa !17, !noalias !617 ; 2 uses
  %i.nh = mul i64 %i.nf, %i.ng
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nh
  %i.nj = sext i32 %i.na to i64
  %.reass1320 = mul i32 %i.mz, %factor.op.mul1319
  %i.nk = add i32 %.reass1320, %factor.op.mul.reass
  %i.nl = extractelement <2 x i32> %i.my, i64 1
  %i.nm = mul nsw i32 %i.nl, %8
  %i.nn = add nsw i32 %i.nm, %i.mt
  %i.no = sext i32 %i.nn to i64
  %i.np = mul nsw i64 %i.nj, %i.no
  %i.nq = mul i64 %i.np, %i.ng
  %i.nr = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.nq
  %i.ns = sext i32 %i.nk to i64
  %i.nt = getelementptr inbounds [2 x i8], ptr %i.nr, i64 %i.ns ; 64 uses
  switch i32 %i.d, label %bb.f [
    i32 16, label %.thread
    i32 8, label %bb.d
    i32 4, label %bb.e
  ]

.thread:                                          ; preds = %_ZNK4ncnn3Mat7channelEi.exit3599
  %i.nu = load <16 x bfloat>, ptr %i.nt, align 1, !tbaa !18
  %i.nv = fpext fast <16 x bfloat> %i.nu to <16 x float> ; 2 uses
  %i.nw = getelementptr inbounds [2 x i8], ptr %i.nt, i64 %i.at
  %i.nx = load <16 x bfloat>, ptr %i.nw, align 1, !tbaa !18
  %i.ny = fpext fast <16 x bfloat> %i.nx to <16 x float> ; 2 uses
  %i.nz = getelementptr inbounds [2 x i8], ptr %i.nt, i64 %i.bb
  %i.oa = load <16 x bfloat>, ptr %i.nz, align 1, !tbaa !18
  %i.ob = fpext fast <16 x bfloat> %i.oa to <16 x float> ; 2 uses
  %i.oc = getelementptr inbounds [2 x i8], ptr %i.nt, i64 %i.bj
  %i.od = load <16 x bfloat>, ptr %i.oc, align 1, !tbaa !18
  %i.oe = fpext fast <16 x bfloat> %i.od to <16 x float> ; 2 uses
  %i.of = getelementptr inbounds [2 x i8], ptr %i.nt, i64 %i.br
  %i.og = load <16 x bfloat>, ptr %i.of, align 1, !tbaa !18
  %i.oh = fpext fast <16 x bfloat> %i.og to <16 x float> ; 2 uses
  %i.oi = getelementptr inbounds [2 x i8], ptr %i.nt, i64 %i.bv
  %i.oj = load <16 x bfloat>, ptr %i.oi, align 1, !tbaa !18
  %i.ok = fpext fast <16 x bfloat> %i.oj to <16 x float> ; 2 uses
  %i.ol = getelementptr inbounds [2 x i8], ptr %i.nt, i64 %i.bz
  %i.om = load <16 x bfloat>, ptr %i.ol, align 1, !tbaa !18
  %i.on = fpext fast <16 x bfloat> %i.om to <16 x float> ; 2 uses
  %i.oo = getelementptr inbounds [2 x i8], ptr %i.nt, i64 %i.cd
  %i.op = load <16 x bfloat>, ptr %i.oo, align 1, !tbaa !18
  %i.oq = fpext fast <16 x bfloat> %i.op to <16 x float> ; 2 uses
  %i.or = getelementptr inbounds [2 x i8], ptr %i.nt, i64 %i.ch
  %i.os = load <16 x bfloat>, ptr %i.or, align 1, !tbaa !18
  %i.ot = fpext fast <16 x bfloat> %i.os to <16 x float> ; 2 uses
  %i.ou = getelementptr inbounds [2 x i8], ptr %i.nt, i64 %i.cj
  %i.ov = load <16 x bfloat>, ptr %i.ou, align 1, !tbaa !18
  %i.ow = fpext fast <16 x bfloat> %i.ov to <16 x float> ; 2 uses
  %i.ox = getelementptr inbounds [2 x i8], ptr %i.nt, i64 %i.cl
  %i.oy = load <16 x bfloat>, ptr %i.ox, align 1, !tbaa !18
  %i.oz = fpext fast <16 x bfloat> %i.oy to <16 x float> ; 2 uses
  %i.pa = getelementptr inbounds [2 x i8], ptr %i.nt, i64 %i.cn
  %i.pb = load <16 x bfloat>, ptr %i.pa, align 1, !tbaa !18
  %i.pc = fpext fast <16 x bfloat> %i.pb to <16 x float> ; 2 uses
  %i.pd = getelementptr inbounds [2 x i8], ptr %i.nt, i64 %i.cp
  %i.pe = load <16 x bfloat>, ptr %i.pd, align 1, !tbaa !18
  %i.pf = fpext fast <16 x bfloat> %i.pe to <16 x float> ; 2 uses
  %i.pg = getelementptr inbounds [2 x i8], ptr %i.nt, i64 %i.cr
  %i.ph = load <16 x bfloat>, ptr %i.pg, align 1, !tbaa !18
  %i.pi = fpext fast <16 x bfloat> %i.ph to <16 x float> ; 2 uses
  %i.pj = getelementptr inbounds [2 x i8], ptr %i.nt, i64 %i.ct
  %i.pk = load <16 x bfloat>, ptr %i.pj, align 1, !tbaa !18
  %i.pl = fpext fast <16 x bfloat> %i.pk to <16 x float> ; 2 uses
  %i.pm = getelementptr inbounds [2 x i8], ptr %i.nt, i64 %i.cv
  %i.pn = load <16 x bfloat>, ptr %i.pm, align 1, !tbaa !18
  %i.po = fpext fast <16 x bfloat> %i.pn to <16 x float> ; 2 uses
  %i.pp = shufflevector <16 x float> %i.nv, <16 x float> %i.ny, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pq = shufflevector <16 x float> %i.nv, <16 x float> %i.ny, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pr = shufflevector <16 x float> %i.ob, <16 x float> %i.oe, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.ps = shufflevector <16 x float> %i.ob, <16 x float> %i.oe, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pt = shufflevector <16 x float> %i.oh, <16 x float> %i.ok, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pu = shufflevector <16 x float> %i.oh, <16 x float> %i.ok, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pv = shufflevector <16 x float> %i.on, <16 x float> %i.oq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.pw = shufflevector <16 x float> %i.on, <16 x float> %i.oq, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.px = shufflevector <16 x float> %i.ot, <16 x float> %i.ow, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.py = shufflevector <16 x float> %i.ot, <16 x float> %i.ow, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.pz = shufflevector <16 x float> %i.oz, <16 x float> %i.pc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.qa = shufflevector <16 x float> %i.oz, <16 x float> %i.pc, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.qb = shufflevector <16 x float> %i.pf, <16 x float> %i.pi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.qc = shufflevector <16 x float> %i.pf, <16 x float> %i.pi, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.qd = shufflevector <16 x float> %i.pl, <16 x float> %i.po, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.qe = shufflevector <16 x float> %i.pl, <16 x float> %i.po, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.qf = shufflevector <16 x float> %i.pp, <16 x float> %i.pr, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qg = shufflevector <16 x float> %i.pp, <16 x float> %i.pr, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qh = shufflevector <16 x float> %i.pq, <16 x float> %i.ps, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qi = shufflevector <16 x float> %i.pq, <16 x float> %i.ps, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qj = shufflevector <16 x float> %i.pt, <16 x float> %i.pv, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qk = shufflevector <16 x float> %i.pt, <16 x float> %i.pv, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ql = shufflevector <16 x float> %i.pu, <16 x float> %i.pw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qm = shufflevector <16 x float> %i.pu, <16 x float> %i.pw, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qn = shufflevector <16 x float> %i.px, <16 x float> %i.pz, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qo = shufflevector <16 x float> %i.px, <16 x float> %i.pz, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qp = shufflevector <16 x float> %i.py, <16 x float> %i.qa, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qq = shufflevector <16 x float> %i.py, <16 x float> %i.qa, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qr = shufflevector <16 x float> %i.qb, <16 x float> %i.qd, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qs = shufflevector <16 x float> %i.qb, <16 x float> %i.qd, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qt = shufflevector <16 x float> %i.qc, <16 x float> %i.qe, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.qu = shufflevector <16 x float> %i.qc, <16 x float> %i.qe, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.qv = shufflevector <16 x float> %i.qf, <16 x float> %i.qj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qw = shufflevector <16 x float> %i.qn, <16 x float> %i.qr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qx = shufflevector <16 x float> %i.qg, <16 x float> %i.qk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qy = shufflevector <16 x float> %i.qo, <16 x float> %i.qs, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.qz = shufflevector <16 x float> %i.qh, <16 x float> %i.ql, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ra = shufflevector <16 x float> %i.qp, <16 x float> %i.qt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.rb = shufflevector <16 x float> %i.qi, <16 x float> %i.qm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.rc = shufflevector <16 x float> %i.qq, <16 x float> %i.qu, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.rd = shufflevector <16 x float> %i.qf, <16 x float> %i.qj, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.re = shufflevector <16 x float> %i.qn, <16 x float> %i.qr, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.rf = shufflevector <16 x float> %i.qg, <16 x float> %i.qk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.rg = shufflevector <16 x float> %i.qo, <16 x float> %i.qs, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.rh = shufflevector <16 x float> %i.qh, <16 x float> %i.ql, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ri = shufflevector <16 x float> %i.qp, <16 x float> %i.qt, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.rj = shufflevector <16 x float> %i.qi, <16 x float> %i.qm, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.rk = shufflevector <16 x float> %i.qq, <16 x float> %i.qu, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.rl = shufflevector <16 x float> %i.qv, <16 x float> %i.qw, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rm = shufflevector <16 x float> %i.qx, <16 x float> %i.qy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rn = shufflevector <16 x float> %i.qz, <16 x float> %i.ra, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ro = shufflevector <16 x float> %i.rb, <16 x float> %i.rc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rp = shufflevector <16 x float> %i.rd, <16 x float> %i.re, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rq = shufflevector <16 x float> %i.rf, <16 x float> %i.rg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rr = shufflevector <16 x float> %i.rh, <16 x float> %i.ri, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rs = shufflevector <16 x float> %i.rj, <16 x float> %i.rk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.rt = shufflevector <16 x float> %i.qv, <16 x float> %i.qw, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ru = shufflevector <16 x float> %i.qx, <16 x float> %i.qy, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rv = shufflevector <16 x float> %i.qz, <16 x float> %i.ra, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rw = shufflevector <16 x float> %i.rb, <16 x float> %i.rc, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rx = shufflevector <16 x float> %i.rd, <16 x float> %i.re, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ry = shufflevector <16 x float> %i.rf, <16 x float> %i.rg, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.rz = shufflevector <16 x float> %i.rh, <16 x float> %i.ri, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.sa = shufflevector <16 x float> %i.rj, <16 x float> %i.rk, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.sb = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rl) ; 2 uses
  %i.sc = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rm) ; 2 uses
  %i.sd = shufflevector <16 x bfloat> %i.sb, <16 x bfloat> %i.sc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.se = shufflevector <16 x bfloat> %i.sb, <16 x bfloat> %i.sc, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.sf = shufflevector <16 x bfloat> %i.sd, <16 x bfloat> %i.se, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x bfloat> %i.sf, ptr %.31322, align 1, !tbaa !18
  %i.sg = getelementptr inbounds nuw i8, ptr %.31322, i64 32
  %.uncasted1500 = shufflevector <16 x bfloat> %i.sd, <16 x bfloat> %i.se, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  store <16 x bfloat> %.uncasted1500, ptr %i.sg, align 1, !tbaa !18
  %i.sh = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rn) ; 2 uses
  %i.si = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ro) ; 2 uses
  %i.sj = shufflevector <16 x bfloat> %i.sh, <16 x bfloat> %i.si, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.sk = shufflevector <16 x bfloat> %i.sh, <16 x bfloat> %i.si, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.31322, i64 64
  %i.sm = shufflevector <16 x bfloat> %i.sj, <16 x bfloat> %i.sk, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  store <16 x bfloat> %i.sm, ptr %i.sl, align 1, !tbaa !18
  %i.sn = getelementptr inbounds nuw i8, ptr %.31322, i64 96
  %.uncasted1501 = shufflevector <16 x bfloat> %i.sj, <16 x bfloat> %i.sk, <16 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  store <16 x bfloat> %.uncasted1501, ptr %i.sn, align 1, !tbaa !18
  %i.so = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rp) ; 2 uses
  %i.sp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.rq) ; 2 uses
  %i.sq = shufflevector <16 x bfloat> %i.so, <16 x bfloat> %i.sp, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27> ; 2 uses
  %i.sr = shufflevector <16 x bfloat> %i.so, <16 x bfloat> %i.sp, <16 x i32> <i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %.31322, i64 128
  %i.st = shufflevector <16 x bfloat> %i.sq, <16 x bfloat> %i.sr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
end_hunk_0
begin_hunk_1_@_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii:bb.a
  %i.bpl = shufflevector <4 x float> %i.bog, <4 x float> %i.bol, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bpm = shufflevector <4 x float> %i.bnw, <4 x float> %i.bob, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bpn = shufflevector <4 x float> %i.bog, <4 x float> %i.bol, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bpo = shufflevector <4 x float> %i.bpk, <4 x float> %i.bpl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bpp = shufflevector <4 x float> %i.bpl, <4 x float> %i.bpk, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bpq = shufflevector <4 x float> %i.bpm, <4 x float> %i.bpn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bpr = shufflevector <4 x float> %i.bpn, <4 x float> %i.bpm, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.bps = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.boq)
  %i.bpt = bitcast <8 x bfloat> %i.bps to <2 x i64>
  %i.bpu = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.boy)
  %i.bpv = bitcast <8 x bfloat> %i.bpu to <2 x i64>
  %i.bpw = shufflevector <2 x i64> %i.bpt, <2 x i64> %i.bpv, <2 x i32> <i32 0, i32 2>
  %i.bpx = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bor)
  %i.bpy = bitcast <8 x bfloat> %i.bpx to <2 x i64>
  %i.bpz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.boz)
  %i.bqa = bitcast <8 x bfloat> %i.bpz to <2 x i64>
  %i.bqb = shufflevector <2 x i64> %i.bpy, <2 x i64> %i.bqa, <2 x i32> <i32 0, i32 2>
  %i.bqc = bitcast <2 x i64> %i.bpw to <8 x i16>  ; 2 uses
  %i.bqd = bitcast <2 x i64> %i.bqb to <8 x i16>  ; 2 uses
  %i.bqe = shufflevector <8 x i16> %i.bqc, <8 x i16> %i.bqd, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.bqe, ptr %.101313, align 1, !tbaa !18
  %i.bqf = getelementptr inbounds nuw i8, ptr %.101313, i64 16
  %i.bqg = shufflevector <8 x i16> %i.bqc, <8 x i16> %i.bqd, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.bqg, ptr %i.bqf, align 1, !tbaa !18
  %i.bqh = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bpg)
  %i.bqi = bitcast <8 x bfloat> %i.bqh to <2 x i64>
  %i.bqj = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bpo)
  %i.bqk = bitcast <8 x bfloat> %i.bqj to <2 x i64>
  %i.bql = shufflevector <2 x i64> %i.bqi, <2 x i64> %i.bqk, <2 x i32> <i32 0, i32 2>
  %i.bqm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bph)
  %i.bqn = bitcast <8 x bfloat> %i.bqm to <2 x i64>
  %i.bqo = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bpp)
  %i.bqp = bitcast <8 x bfloat> %i.bqo to <2 x i64>
  %i.bqq = shufflevector <2 x i64> %i.bqn, <2 x i64> %i.bqp, <2 x i32> <i32 0, i32 2>
  %i.bqr = getelementptr inbounds nuw i8, ptr %.101313, i64 32
  %i.bqs = bitcast <2 x i64> %i.bql to <8 x i16>  ; 2 uses
  %i.bqt = bitcast <2 x i64> %i.bqq to <8 x i16>  ; 2 uses
  %i.bqu = shufflevector <8 x i16> %i.bqs, <8 x i16> %i.bqt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.bqu, ptr %i.bqr, align 1, !tbaa !18
  %i.bqv = getelementptr inbounds nuw i8, ptr %.101313, i64 48
  %i.bqw = shufflevector <8 x i16> %i.bqs, <8 x i16> %i.bqt, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.bqw, ptr %i.bqv, align 1, !tbaa !18
  %i.bqx = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bos)
  %i.bqy = bitcast <8 x bfloat> %i.bqx to <2 x i64>
  %i.bqz = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bpa)
  %i.bra = bitcast <8 x bfloat> %i.bqz to <2 x i64>
  %i.brb = shufflevector <2 x i64> %i.bqy, <2 x i64> %i.bra, <2 x i32> <i32 0, i32 2>
  %i.brc = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bot)
  %i.brd = bitcast <8 x bfloat> %i.brc to <2 x i64>
  %i.bre = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bpb)
  %i.brf = bitcast <8 x bfloat> %i.bre to <2 x i64>
  %i.brg = shufflevector <2 x i64> %i.brd, <2 x i64> %i.brf, <2 x i32> <i32 0, i32 2>
  %i.brh = getelementptr inbounds nuw i8, ptr %.101313, i64 64
  %i.bri = bitcast <2 x i64> %i.brb to <8 x i16>  ; 2 uses
  %i.brj = bitcast <2 x i64> %i.brg to <8 x i16>  ; 2 uses
  %i.brk = shufflevector <8 x i16> %i.bri, <8 x i16> %i.brj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.brk, ptr %i.brh, align 1, !tbaa !18
  %i.brl = getelementptr inbounds nuw i8, ptr %.101313, i64 80
  %i.brm = shufflevector <8 x i16> %i.bri, <8 x i16> %i.brj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.brm, ptr %i.brl, align 1, !tbaa !18
  %i.brn = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bpi)
  %i.bro = bitcast <8 x bfloat> %i.brn to <2 x i64>
  %i.brp = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bpq)
  %i.brq = bitcast <8 x bfloat> %i.brp to <2 x i64>
  %i.brr = shufflevector <2 x i64> %i.bro, <2 x i64> %i.brq, <2 x i32> <i32 0, i32 2>
  %i.brs = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bpj)
  %i.brt = bitcast <8 x bfloat> %i.brs to <2 x i64>
  %i.bru = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16128(<4 x float> %i.bpr)
  %i.brv = bitcast <8 x bfloat> %i.bru to <2 x i64>
  %i.brw = shufflevector <2 x i64> %i.brt, <2 x i64> %i.brv, <2 x i32> <i32 0, i32 2>
  %i.brx = getelementptr inbounds nuw i8, ptr %.101313, i64 96
  %i.bry = bitcast <2 x i64> %i.brr to <8 x i16>  ; 2 uses
  %i.brz = bitcast <2 x i64> %i.brw to <8 x i16>  ; 2 uses
  %i.bsa = shufflevector <8 x i16> %i.bry, <8 x i16> %i.brz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  store <8 x i16> %i.bsa, ptr %i.brx, align 1, !tbaa !18
  %i.bsb = getelementptr inbounds nuw i8, ptr %.101313, i64 112
  %i.bsc = shufflevector <8 x i16> %i.bry, <8 x i16> %i.brz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.bsc, ptr %i.bsb, align 1, !tbaa !18
  %i.bsd = getelementptr inbounds nuw i8, ptr %.101313, i64 128
  br label %_ZN4ncnn3MatD2Ev.exit3339

bb.k:                                             ; preds = %_ZNK4ncnn3Mat7channelEi.exit3596
  br i1 %i.l, label %_ZN4ncnn3MatD2Ev.exit3339, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bse = load i16, ptr %i.ays, align 2, !tbaa !24
  store i16 %i.bse, ptr %.101313, align 2, !tbaa !24
  %i.bsf = load i16, ptr %i.ayt, align 2, !tbaa !24
  %i.bsg = getelementptr inbounds nuw i8, ptr %.101313, i64 2
  store i16 %i.bsf, ptr %i.bsg, align 2, !tbaa !24
  %i.bsh = load i16, ptr %i.ayu, align 2, !tbaa !24
  %i.bsi = getelementptr inbounds nuw i8, ptr %.101313, i64 4
  store i16 %i.bsh, ptr %i.bsi, align 2, !tbaa !24
  %i.bsj = load i16, ptr %i.ayv, align 2, !tbaa !24
  %i.bsk = getelementptr inbounds nuw i8, ptr %.101313, i64 6
  store i16 %i.bsj, ptr %i.bsk, align 2, !tbaa !24
  %i.bsl = load i16, ptr %i.ayw, align 2, !tbaa !24
  %i.bsm = getelementptr inbounds nuw i8, ptr %.101313, i64 8
  store i16 %i.bsl, ptr %i.bsm, align 2, !tbaa !24
  %i.bsn = load i16, ptr %i.ayx, align 2, !tbaa !24
  %i.bso = getelementptr inbounds nuw i8, ptr %.101313, i64 10
  store i16 %i.bsn, ptr %i.bso, align 2, !tbaa !24
  %i.bsp = load i16, ptr %i.ayy, align 2, !tbaa !24
  %i.bsq = getelementptr inbounds nuw i8, ptr %.101313, i64 12
  store i16 %i.bsp, ptr %i.bsq, align 2, !tbaa !24
  %i.bsr = load i16, ptr %i.azb, align 2, !tbaa !24
  %i.bss = getelementptr inbounds nuw i8, ptr %.101313, i64 14
  store i16 %i.bsr, ptr %i.bss, align 2, !tbaa !24
  %i.bst = load i16, ptr %i.azq, align 2, !tbaa !24
  %i.bsu = getelementptr inbounds nuw i8, ptr %.101313, i64 16
  store i16 %i.bst, ptr %i.bsu, align 2, !tbaa !24
  %i.bsv = load i16, ptr %i.azr, align 2, !tbaa !24
  %i.bsw = getelementptr inbounds nuw i8, ptr %.101313, i64 18
  store i16 %i.bsv, ptr %i.bsw, align 2, !tbaa !24
  %i.bsx = load i16, ptr %i.azs, align 2, !tbaa !24
  %i.bsy = getelementptr inbounds nuw i8, ptr %.101313, i64 20
  store i16 %i.bsx, ptr %i.bsy, align 2, !tbaa !24
  %i.bsz = load i16, ptr %i.azt, align 2, !tbaa !24
  %i.bta = getelementptr inbounds nuw i8, ptr %.101313, i64 22
  store i16 %i.bsz, ptr %i.bta, align 2, !tbaa !24
  %i.btb = load i16, ptr %i.azu, align 2, !tbaa !24
  %i.btc = getelementptr inbounds nuw i8, ptr %.101313, i64 24
  store i16 %i.btb, ptr %i.btc, align 2, !tbaa !24
  %i.btd = load i16, ptr %i.azv, align 2, !tbaa !24
  %i.bte = getelementptr inbounds nuw i8, ptr %.101313, i64 26
  store i16 %i.btd, ptr %i.bte, align 2, !tbaa !24
  %i.btf = load i16, ptr %i.azw, align 2, !tbaa !24
  %i.btg = getelementptr inbounds nuw i8, ptr %.101313, i64 28
  store i16 %i.btf, ptr %i.btg, align 2, !tbaa !24
  %i.bth = load i16, ptr %i.azz, align 2, !tbaa !24
  %i.bti = getelementptr inbounds nuw i8, ptr %.101313, i64 30
  store i16 %i.bth, ptr %i.bti, align 2, !tbaa !24
  %i.btj = getelementptr inbounds nuw i8, ptr %.101313, i64 32
  br label %_ZN4ncnn3MatD2Ev.exit3339

_ZN4ncnn3MatD2Ev.exit3339:                        ; preds = %bb.i, %.thread1239, %bb.j, %bb.l, %bb.k
  %.14 = phi ptr [ %i.btj, %bb.l ], [ %.101313, %bb.k ], [ %i.bsd, %bb.j ], [ %i.bfv, %.thread1239 ], [ %i.blj, %bb.i ] ; 2 uses
  %i.btk = add nuw nsw i32 %.230591312, 1         ; 2 uses
  %exitcond.not = icmp eq i32 %i.btk, %i.avk
  br i1 %exitcond.not, label %.loopexit1303, label %_ZNK4ncnn3Mat7channelEi.exit3596, !llvm.loop !584

.loopexit1303:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit3339, %_ZN4ncnn3MatD2Ev.exit3344, %.loopexit1308, %.loopexit1305
  %.15 = phi ptr [ %.7, %_ZN4ncnn3MatD2Ev.exit3344 ], [ %.2, %.loopexit1305 ], [ %.9, %.loopexit1308 ], [ %.14, %_ZN4ncnn3MatD2Ev.exit3339 ] ; 2 uses
  %i.btl = add nuw nsw i32 %.027581325, 16        ; 3 uses
  %i.btm = or disjoint i32 %i.btl, 15
  %i.btn = icmp slt i32 %i.btm, %2
  br i1 %i.btn, label %bb.b, label %.preheader1302, !llvm.loop !585

.preheader1295:                                   ; preds = %.loopexit1296, %.preheader1302
  %.12759.lcssa = phi i32 [ %.02758.lcssa, %.preheader1302 ], [ %i.dhk, %.loopexit1296 ] ; 3 uses
  %.16.lcssa = phi ptr [ %.02757.lcssa, %.preheader1302 ], [ %.31, %.loopexit1296 ] ; 2 uses
  %i.bto = or disjoint i32 %.12759.lcssa, 3
  %i.btp = icmp slt i32 %i.bto, %2
  br i1 %i.btp, label %.lr.ph1372, label %.preheader

.lr.ph1372:                                       ; preds = %.preheader1295
  %i.btq = icmp ne i32 %i.d, 1                    ; 4 uses
  %i.btr = icmp slt i32 %4, 2                     ; 2 uses
  %i.bts = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.btt = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.btu = sext i32 %9 to i64                     ; 3 uses
  %i.btv = shl nsw i32 %9, 1
  %i.btw = sext i32 %i.btv to i64                 ; 3 uses
  %i.btx = mul nsw i32 %9, 3
  %i.bty = sext i32 %i.btx to i64                 ; 3 uses
  %factor.op.mul1363 = mul i32 %7, %i.d
  %i.btz = shl nsw i32 %9, 2
  %i.bua = sext i32 %i.btz to i64
  %i.bub = shl nsw i32 %9, 3
  %i.buc = sext i32 %i.bub to i64                 ; 2 uses
  %i.bud = mul nsw i32 %9, 12
  %i.bue = sext i32 %i.bud to i64
  %i.buf = shl nsw i32 %9, 4
  %i.bug = sext i32 %i.buf to i64                 ; 2 uses
  %i.buh = mul nsw i32 %9, 24
  %i.bui = sext i32 %i.buh to i64
  %i.buj = shl nsw i32 %9, 5
  %i.buk = sext i32 %i.buj to i64
  %i.bul = mul nsw i32 %9, 48
  %i.bum = sext i32 %i.bul to i64
  %brmerge1403 = or i1 %i.btq, %i.btr
  %brmerge1400 = or i1 %i.btq, %i.btr
  %i.bun = insertelement <4 x i32> poison, i32 %10, i64 0
  %i.buo = shufflevector <4 x i32> %i.bun, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bup = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %i.buq = shufflevector <4 x i32> %i.bup, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bur = insertelement <2 x i32> poison, i32 %i.i, i64 0
  %i.bus = shufflevector <2 x i32> %i.bur, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.but = insertelement <2 x i32> poison, i32 %9, i64 0
  %i.buu = shufflevector <2 x i32> %i.but, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.buv = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.buw = shufflevector <2 x i32> %i.buv, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bux = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.buy = insertelement <2 x i32> %i.bux, i32 %5, i64 1
  %i.buz = insertelement <4 x i32> poison, i32 %8, i64 0
  %i.bva = insertelement <4 x i32> %i.buz, i32 %i.d, i64 1
  %i.bvb = shufflevector <4 x i32> %i.bva, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.bvc = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.bvd = shufflevector <2 x i32> %i.bvc, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bve = insertelement <2 x i32> poison, i32 %5, i64 0
  %i.bvf = shufflevector <2 x i32> %i.bve, <2 x i32> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bvg = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.bvh = shufflevector <2 x i32> %i.bvg, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bvi = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.bvj = insertelement <2 x i32> %i.bvi, i32 %5, i64 1
  br label %bb.aa

bb.m:                                             ; preds = %.lr.ph1349, %.loopexit1296
  %.161348 = phi ptr [ %.02757.lcssa, %.lr.ph1349 ], [ %.31, %.loopexit1296 ] ; 4 uses
  %.127591347 = phi i32 [ %.02758.lcssa, %.lr.ph1349 ], [ %i.dhk, %.loopexit1296 ] ; 2 uses
  %i.bvk = add nsw i32 %.127591347, %1            ; 5 uses
  %i.bvl = insertelement <4 x i32> poison, i32 %i.bvk, i64 0
  %i.bvm = shufflevector <4 x i32> %i.bvl, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.bvn = add nsw <4 x i32> %i.bvm, <i32 1, i32 2, i32 3, i32 4> ; 2 uses
  %i.bvo = add nsw i32 %i.bvk, 5                  ; 2 uses
  %i.bvp = insertelement <2 x i32> poison, i32 %i.bvk, i64 0
  %i.bvq = shufflevector <2 x i32> %i.bvp, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.bvr = add nsw <2 x i32> %i.bvq, <i32 6, i32 7> ; 2 uses
  %i.bvs = insertelement <8 x i32> poison, i32 %i.bvk, i64 0
  %i.bvt = shufflevector <4 x i32> %i.bvn, <4 x i32> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bvu = shufflevector <8 x i32> %i.bvs, <8 x i32> %i.bvt, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 poison, i32 poison, i32 poison>
  %i.bvv = insertelement <8 x i32> %i.bvu, i32 %i.bvo, i64 5
  %i.bvw = shufflevector <2 x i32> %i.bvr, <2 x i32> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bvx = shufflevector <8 x i32> %i.bvv, <8 x i32> %i.bvw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  %i.bvy = sdiv <8 x i32> %i.bvx, %i.fq           ; 4 uses
  %i.bvz = shufflevector <2 x i32> %i.bvr, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bwa = shufflevector <4 x i32> %i.bvn, <4 x i32> %i.bvz, <8 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 poison, i32 4, i32 5>
  %i.bwb = insertelement <8 x i32> %i.bwa, i32 %i.bvk, i64 0
  %i.bwc = insertelement <8 x i32> %i.bwb, i32 %i.bvo, i64 5
  %i.bwd = srem <8 x i32> %i.bwc, %i.fq           ; 15 uses
  %i.bwe = extractelement <8 x i32> %i.bvy, i64 0 ; 3 uses
  %i.bwf = extractelement <8 x i32> %i.bvy, i64 7
  %i.bwg = icmp eq i32 %i.bwe, %i.bwf
  br i1 %i.bwg, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  br i1 %brmerge1394, label %.loopexit1298, label %_ZNK4ncnn3Mat7channelEi.exit3595.lr.ph

_ZNK4ncnn3Mat7channelEi.exit3595.lr.ph:           ; preds = %bb.n
  %i.bwh = load i32, ptr %i.a, align 4, !tbaa !31, !noalias !620
  %i.bwi = load ptr, ptr %0, align 8, !tbaa !15, !noalias !620 ; 2 uses
  %i.bwj = load i64, ptr %i.dw, align 8, !tbaa !16, !noalias !620
  %i.bwk = load i64, ptr %i.dx, align 8, !tbaa !17, !noalias !620 ; 2 uses
  %i.bwl = mul i64 %i.bwk, %i.bwj
  %i.bwm = sext i32 %i.bwh to i64
  %i.bwn = mul nsw i32 %i.bwe, %10                ; 2 uses
  %i.bwo = mul i64 %i.bwk, %i.bwm                 ; 2 uses
  %i.bwp = extractelement <8 x i32> %i.bwd, i64 0
  %i.bwq = mul nsw i32 %i.bwp, %9                 ; 2 uses
  %i.bwr = insertelement <2 x i64> poison, i64 %i.bwl, i64 0
  %i.bws = shufflevector <2 x i64> %i.bwr, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %_ZNK4ncnn3Mat7channelEi.exit3595

_ZNK4ncnn3Mat7channelEi.exit3595:                 ; preds = %_ZNK4ncnn3Mat7channelEi.exit3595.lr.ph, %_ZNK4ncnn3Mat7channelEi.exit3595
  %.171337 = phi ptr [ %.161348, %_ZNK4ncnn3Mat7channelEi.exit3595.lr.ph ], [ %i.bzj, %_ZNK4ncnn3Mat7channelEi.exit3595 ] ; 17 uses
  %.030541336 = phi i32 [ 0, %_ZNK4ncnn3Mat7channelEi.exit3595.lr.ph ], [ %i.bzk, %_ZNK4ncnn3Mat7channelEi.exit3595 ] ; 2 uses
  %i.bwt = add nsw i32 %.030541336, %3            ; 3 uses
  %i.bwu = add nsw i32 %i.bwt, 1                  ; 2 uses
  %i.bwv = insertelement <2 x i32> poison, i32 %i.bwt, i64 0
  %i.bww = insertelement <2 x i32> %i.bwv, i32 %i.bwu, i64 1
  %i.bwx = sdiv <2 x i32> %i.bww, %i.ge
  %i.bwy = sext <2 x i32> %i.bwx to <2 x i64>
  %i.bwz = mul <2 x i64> %i.bws, %i.bwy           ; 2 uses
  %i.bxa = extractelement <2 x i64> %i.bwz, i64 0
  %i.bxb = getelementptr inbounds nuw i8, ptr %i.bwi, i64 %i.bxa
  %i.bxc = extractelement <2 x i64> %i.bwz, i64 1
  %i.bxd = getelementptr inbounds nuw i8, ptr %i.bwi, i64 %i.bxc
  %25 = insertelement <2 x i32> poison, i32 %i.bwu, i64 0
  %26 = insertelement <2 x i32> %25, i32 %i.bwt, i64 1
  %27 = srem <2 x i32> %26, %i.ge
  %.frozen1547 = freeze <2 x i32> %27             ; 2 uses
  %i.bxe = sdiv <2 x i32> %.frozen1547, %i.gg     ; 2 uses
  %i.bxf = mul <2 x i32> %i.bxe, %i.gg
  %.decomposed1548 = sub <2 x i32> %.frozen1547, %i.bxf ; 2 uses
  %28 = extractelement <2 x i32> %.decomposed1548, i64 1
  %29 = mul nsw i32 %28, %7
  %30 = add nsw i32 %29, %i.bwq
  %31 = sext i32 %30 to i64
  %i.bxg = extractelement <2 x i32> %.decomposed1548, i64 0
  %32 = mul nsw i32 %i.bxg, %7
  %33 = add nsw i32 %32, %i.bwq
  %34 = mul nsw <2 x i32> %i.bxe, %i.gi           ; 2 uses
  %35 = extractelement <2 x i32> %34, i64 1
  %i.bxh = add nsw i32 %35, %i.bwn
  %i.bxi = sext i32 %i.bxh to i64
  %36 = mul i64 %i.bwo, %i.bxi
  %37 = getelementptr inbounds nuw i8, ptr %i.bxb, i64 %36
  %38 = getelementptr inbounds [2 x i8], ptr %37, i64 %31 ; 8 uses
  %i.bxj = extractelement <2 x i32> %34, i64 0
  %i.bxk = add nsw i32 %i.bxj, %i.bwn
  %i.bxl = sext i32 %i.bxk to i64
  %i.bxm = mul i64 %i.bwo, %i.bxl
  %i.bxn = getelementptr inbounds nuw i8, ptr %i.bxd, i64 %i.bxm
  %i.bxo = sext i32 %33 to i64
  %i.bxp = getelementptr inbounds [2 x i8], ptr %i.bxn, i64 %i.bxo ; 8 uses
  %i.bxq = load i16, ptr %38, align 2, !tbaa !24
  store i16 %i.bxq, ptr %.171337, align 2, !tbaa !24
  %i.bxr = load i16, ptr %i.bxp, align 2, !tbaa !24
  %i.bxs = getelementptr inbounds nuw i8, ptr %.171337, i64 2
  store i16 %i.bxr, ptr %i.bxs, align 2, !tbaa !24
  %i.bxt = getelementptr inbounds [2 x i8], ptr %38, i64 %i.dy
  %i.bxu = load i16, ptr %i.bxt, align 2, !tbaa !24
  %i.bxv = getelementptr inbounds nuw i8, ptr %.171337, i64 4
  store i16 %i.bxu, ptr %i.bxv, align 2, !tbaa !24
  %i.bxw = getelementptr inbounds [2 x i8], ptr %i.bxp, i64 %i.dy
  %i.bxx = load i16, ptr %i.bxw, align 2, !tbaa !24
  %i.bxy = getelementptr inbounds nuw i8, ptr %.171337, i64 6
  store i16 %i.bxx, ptr %i.bxy, align 2, !tbaa !24
  %i.bxz = getelementptr inbounds [2 x i8], ptr %38, i64 %i.ea
  %i.bya = load i16, ptr %i.bxz, align 2, !tbaa !24
  %i.byb = getelementptr inbounds nuw i8, ptr %.171337, i64 8
  store i16 %i.bya, ptr %i.byb, align 2, !tbaa !24
  %i.byc = getelementptr inbounds [2 x i8], ptr %i.bxp, i64 %i.ea
  %i.byd = load i16, ptr %i.byc, align 2, !tbaa !24
  %i.bye = getelementptr inbounds nuw i8, ptr %.171337, i64 10
  store i16 %i.byd, ptr %i.bye, align 2, !tbaa !24
  %i.byf = getelementptr inbounds [2 x i8], ptr %38, i64 %i.ec
  %i.byg = load i16, ptr %i.byf, align 2, !tbaa !24
  %i.byh = getelementptr inbounds nuw i8, ptr %.171337, i64 12
  store i16 %i.byg, ptr %i.byh, align 2, !tbaa !24
  %i.byi = getelementptr inbounds [2 x i8], ptr %i.bxp, i64 %i.ec
  %i.byj = load i16, ptr %i.byi, align 2, !tbaa !24
  %i.byk = getelementptr inbounds nuw i8, ptr %.171337, i64 14
  store i16 %i.byj, ptr %i.byk, align 2, !tbaa !24
  %i.byl = getelementptr inbounds [2 x i8], ptr %38, i64 %i.ee
  %i.bym = load i16, ptr %i.byl, align 2, !tbaa !24
  %i.byn = getelementptr inbounds nuw i8, ptr %.171337, i64 16
  store i16 %i.bym, ptr %i.byn, align 2, !tbaa !24
  %i.byo = getelementptr inbounds [2 x i8], ptr %i.bxp, i64 %i.ee
  %i.byp = load i16, ptr %i.byo, align 2, !tbaa !24
  %i.byq = getelementptr inbounds nuw i8, ptr %.171337, i64 18
  store i16 %i.byp, ptr %i.byq, align 2, !tbaa !24
  %i.byr = getelementptr inbounds [2 x i8], ptr %38, i64 %i.eg
  %i.bys = load i16, ptr %i.byr, align 2, !tbaa !24
  %i.byt = getelementptr inbounds nuw i8, ptr %.171337, i64 20
  store i16 %i.bys, ptr %i.byt, align 2, !tbaa !24
  %i.byu = getelementptr inbounds [2 x i8], ptr %i.bxp, i64 %i.eg
  %i.byv = load i16, ptr %i.byu, align 2, !tbaa !24
  %i.byw = getelementptr inbounds nuw i8, ptr %.171337, i64 22
  store i16 %i.byv, ptr %i.byw, align 2, !tbaa !24
  %i.byx = getelementptr inbounds [2 x i8], ptr %38, i64 %i.ei
  %i.byy = load i16, ptr %i.byx, align 2, !tbaa !24
  %i.byz = getelementptr inbounds nuw i8, ptr %.171337, i64 24
  store i16 %i.byy, ptr %i.byz, align 2, !tbaa !24
  %i.bza = getelementptr inbounds [2 x i8], ptr %i.bxp, i64 %i.ei
  %i.bzb = load i16, ptr %i.bza, align 2, !tbaa !24
  %i.bzc = getelementptr inbounds nuw i8, ptr %.171337, i64 26
  store i16 %i.bzb, ptr %i.bzc, align 2, !tbaa !24
  %i.bzd = getelementptr inbounds [2 x i8], ptr %38, i64 %i.ek
  %i.bze = load i16, ptr %i.bzd, align 2, !tbaa !24
  %i.bzf = getelementptr inbounds nuw i8, ptr %.171337, i64 28
  store i16 %i.bze, ptr %i.bzf, align 2, !tbaa !24
  %i.bzg = getelementptr inbounds [2 x i8], ptr %i.bxp, i64 %i.ek
  %i.bzh = load i16, ptr %i.bzg, align 2, !tbaa !24
  %i.bzi = getelementptr inbounds nuw i8, ptr %.171337, i64 30
  store i16 %i.bzh, ptr %i.bzi, align 2, !tbaa !24
  %i.bzj = getelementptr inbounds nuw i8, ptr %.171337, i64 32 ; 2 uses
  %i.bzk = add nuw nsw i32 %.030541336, 2         ; 3 uses
  %i.bzl = or disjoint i32 %i.bzk, 1
  %i.bzm = icmp slt i32 %i.bzl, %4
  br i1 %i.bzm, label %_ZNK4ncnn3Mat7channelEi.exit3595, label %.loopexit1298, !llvm.loop !588

.loopexit1298:                                    ; preds = %_ZNK4ncnn3Mat7channelEi.exit3595, %bb.n
  %.13055 = phi i32 [ 0, %bb.n ], [ %i.bzk, %_ZNK4ncnn3Mat7channelEi.exit3595 ] ; 2 uses
  %.18 = phi ptr [ %.161348, %bb.n ], [ %i.bzj, %_ZNK4ncnn3Mat7channelEi.exit3595 ] ; 2 uses
  %i.bzn = sdiv i32 %4, %i.d                      ; 2 uses
  %i.bzo = extractelement <8 x i32> %i.bwd, i64 0
  %factor.op.mul.reass1346 = mul i32 %i.bzo, %factor.op.mul1324
  %i.bzp = icmp slt i32 %.13055, %i.bzn
  br i1 %i.bzp, label %_ZNK4ncnn3Mat7channelEi.exit3593.lr.ph, label %.loopexit1296

_ZNK4ncnn3Mat7channelEi.exit3593.lr.ph:           ; preds = %.loopexit1298
  %i.bzq = sdiv i32 %3, %i.d
  %i.bzr = mul nsw i32 %i.bwe, %10
  br label %_ZNK4ncnn3Mat7channelEi.exit3593

_ZNK4ncnn3Mat7channelEi.exit3593:                 ; preds = %_ZNK4ncnn3Mat7channelEi.exit3593.lr.ph, %_ZN4ncnn3MatD2Ev.exit3334
  %.191343 = phi ptr [ %.18, %_ZNK4ncnn3Mat7channelEi.exit3593.lr.ph ], [ %.23, %_ZN4ncnn3MatD2Ev.exit3334 ] ; 41 uses
  %.230561342 = phi i32 [ %.13055, %_ZNK4ncnn3Mat7channelEi.exit3593.lr.ph ], [ %i.cmo, %_ZN4ncnn3MatD2Ev.exit3334 ] ; 2 uses
  %i.bzs = add nsw i32 %i.bzq, %.230561342        ; 2 uses
  %i.bzt = srem i32 %i.bzs, %i.j                  ; 2 uses
  %i.bzu = insertelement <2 x i32> poison, i32 %i.bzs, i64 0
  %i.bzv = insertelement <2 x i32> %i.bzu, i32 %i.bzt, i64 1
  %i.bzw = sdiv <2 x i32> %i.bzv, %i.gk           ; 2 uses
  %i.bzx = srem i32 %i.bzt, %5
  %i.bzy = load i32, ptr %i.a, align 4, !tbaa !31, !noalias !621
  %i.bzz = load ptr, ptr %0, align 8, !tbaa !15, !noalias !621
  %i.caa = load i64, ptr %i.dw, align 8, !tbaa !16, !noalias !621
  %i.cab = extractelement <2 x i32> %i.bzw, i64 0
  %i.cac = sext i32 %i.cab to i64
  %i.cad = mul i64 %i.caa, %i.cac
  %i.cae = load i64, ptr %i.dx, align 8, !tbaa !17, !noalias !621 ; 2 uses
  %i.caf = mul i64 %i.cad, %i.cae
  %i.cag = getelementptr inbounds nuw i8, ptr %i.bzz, i64 %i.caf
  %i.cah = sext i32 %i.bzy to i64
  %.reass1341 = mul i32 %i.bzx, %factor.op.mul1340
  %i.cai = add i32 %.reass1341, %factor.op.mul.reass1346
  %i.caj = extractelement <2 x i32> %i.bzw, i64 1
  %i.cak = mul nsw i32 %i.caj, %8
  %i.cal = add nsw i32 %i.cak, %i.bzr
  %i.cam = sext i32 %i.cal to i64
  %i.can = mul nsw i64 %i.cah, %i.cam
  %i.cao = mul i64 %i.can, %i.cae
  %i.cap = getelementptr inbounds nuw i8, ptr %i.cag, i64 %i.cao
  %i.caq = sext i32 %i.cai to i64
  %i.car = getelementptr inbounds [2 x i8], ptr %i.cap, i64 %i.caq ; 32 uses
  switch i32 %i.d, label %bb.q [
    i32 16, label %.thread1247
    i32 8, label %bb.o
    i32 4, label %bb.p
  ]

.thread1247:                                      ; preds = %_ZNK4ncnn3Mat7channelEi.exit3593
  %i.cas = load <16 x bfloat>, ptr %i.car, align 1, !tbaa !18
  %i.cat = fpext fast <16 x bfloat> %i.cas to <16 x float> ; 2 uses
  %i.cau = getelementptr inbounds [2 x i8], ptr %i.car, i64 %i.eq
  %i.cav = load <16 x bfloat>, ptr %i.cau, align 1, !tbaa !18
  %i.caw = fpext fast <16 x bfloat> %i.cav to <16 x float> ; 2 uses
  %i.cax = getelementptr inbounds [2 x i8], ptr %i.car, i64 %i.ey
  %i.cay = load <16 x bfloat>, ptr %i.cax, align 1, !tbaa !18
  %i.caz = fpext fast <16 x bfloat> %i.cay to <16 x float> ; 2 uses
  %i.cba = getelementptr inbounds [2 x i8], ptr %i.car, i64 %i.fc
  %i.cbb = load <16 x bfloat>, ptr %i.cba, align 1, !tbaa !18
  %i.cbc = fpext fast <16 x bfloat> %i.cbb to <16 x float> ; 2 uses
  %i.cbd = getelementptr inbounds [2 x i8], ptr %i.car, i64 %i.fg
  %i.cbe = load <16 x bfloat>, ptr %i.cbd, align 1, !tbaa !18
  %i.cbf = fpext fast <16 x bfloat> %i.cbe to <16 x float> ; 2 uses
  %i.cbg = getelementptr inbounds [2 x i8], ptr %i.car, i64 %i.fi
  %i.cbh = load <16 x bfloat>, ptr %i.cbg, align 1, !tbaa !18
  %i.cbi = fpext fast <16 x bfloat> %i.cbh to <16 x float> ; 2 uses
  %i.cbj = getelementptr inbounds [2 x i8], ptr %i.car, i64 %i.fk
  %i.cbk = load <16 x bfloat>, ptr %i.cbj, align 1, !tbaa !18
  %i.cbl = fpext fast <16 x bfloat> %i.cbk to <16 x float> ; 2 uses
  %i.cbm = getelementptr inbounds [2 x i8], ptr %i.car, i64 %i.fm
  %i.cbn = load <16 x bfloat>, ptr %i.cbm, align 1, !tbaa !18
  %i.cbo = fpext fast <16 x bfloat> %i.cbn to <16 x float> ; 2 uses
  %i.cbp = shufflevector <16 x float> %i.cat, <16 x float> %i.caw, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.cbq = shufflevector <16 x float> %i.cat, <16 x float> %i.caw, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cbr = shufflevector <16 x float> %i.caz, <16 x float> %i.cbc, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.cbs = shufflevector <16 x float> %i.caz, <16 x float> %i.cbc, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cbt = shufflevector <16 x float> %i.cbf, <16 x float> %i.cbi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.cbu = shufflevector <16 x float> %i.cbf, <16 x float> %i.cbi, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cbv = shufflevector <16 x float> %i.cbl, <16 x float> %i.cbo, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.cbw = shufflevector <16 x float> %i.cbl, <16 x float> %i.cbo, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.cbx = shufflevector <16 x float> %i.cbp, <16 x float> %i.cbr, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cby = shufflevector <16 x float> %i.cbp, <16 x float> %i.cbr, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.cbz = shufflevector <16 x float> %i.cbq, <16 x float> %i.cbs, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cca = shufflevector <16 x float> %i.cbq, <16 x float> %i.cbs, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ccb = shufflevector <16 x float> %i.cbt, <16 x float> %i.cbv, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.ccc = shufflevector <16 x float> %i.cbt, <16 x float> %i.cbv, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ccd = shufflevector <16 x float> %i.cbu, <16 x float> %i.cbw, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 4, i32 5, i32 20, i32 21, i32 8, i32 9, i32 24, i32 25, i32 12, i32 13, i32 28, i32 29> ; 2 uses
  %i.cce = shufflevector <16 x float> %i.cbu, <16 x float> %i.cbw, <16 x i32> <i32 2, i32 3, i32 18, i32 19, i32 6, i32 7, i32 22, i32 23, i32 10, i32 11, i32 26, i32 27, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.ccf = shufflevector <16 x float> %i.cbx, <16 x float> %i.ccb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ccg = shufflevector <16 x float> %i.cby, <16 x float> %i.ccc, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.cch = shufflevector <16 x float> %i.cbz, <16 x float> %i.ccd, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.cci = shufflevector <16 x float> %i.cca, <16 x float> %i.cce, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27> ; 2 uses
  %i.ccj = shufflevector <16 x float> %i.cbx, <16 x float> %i.ccb, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.cck = shufflevector <16 x float> %i.cby, <16 x float> %i.ccc, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ccl = shufflevector <16 x float> %i.cbz, <16 x float> %i.ccd, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ccm = shufflevector <16 x float> %i.cca, <16 x float> %i.cce, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31> ; 2 uses
  %i.ccn = shufflevector <16 x float> %i.ccf, <16 x float> %i.ccg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.cco = shufflevector <16 x float> %i.cch, <16 x float> %i.cci, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ccp = shufflevector <16 x float> %i.ccj, <16 x float> %i.cck, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ccq = shufflevector <16 x float> %i.ccl, <16 x float> %i.ccm, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.ccr = shufflevector <16 x float> %i.ccf, <16 x float> %i.ccg, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ccs = shufflevector <16 x float> %i.cch, <16 x float> %i.cci, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.cct = shufflevector <16 x float> %i.ccj, <16 x float> %i.cck, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ccu = shufflevector <16 x float> %i.ccl, <16 x float> %i.ccm, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.ccv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ccn) ; 2 uses
  %i.ccw = bitcast <16 x bfloat> %i.ccv to <16 x i16> ; 2 uses
  %i.ccx = bitcast <16 x bfloat> %i.ccv to <16 x i16> ; 2 uses
  %i.ccy = shufflevector <16 x i16> %i.ccw, <16 x i16> %i.ccx, <8 x i32> <i32 0, i32 24, i32 1, i32 25, i32 2, i32 26, i32 3, i32 27>
  store <8 x i16> %i.ccy, ptr %.191343, align 1, !tbaa !18
  %i.ccz = getelementptr inbounds nuw i8, ptr %.191343, i64 16
  %i.cda = shufflevector <16 x i16> %i.ccw, <16 x i16> %i.ccx, <8 x i32> <i32 4, i32 28, i32 5, i32 29, i32 6, i32 30, i32 7, i32 31>
  store <8 x i16> %i.cda, ptr %i.ccz, align 1, !tbaa !18
  %i.cdb = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cco) ; 2 uses
  %i.cdc = getelementptr inbounds nuw i8, ptr %.191343, i64 32
  %i.cdd = bitcast <16 x bfloat> %i.cdb to <16 x i16> ; 2 uses
  %i.cde = bitcast <16 x bfloat> %i.cdb to <16 x i16> ; 2 uses
  %i.cdf = shufflevector <16 x i16> %i.cdd, <16 x i16> %i.cde, <8 x i32> <i32 0, i32 24, i32 1, i32 25, i32 2, i32 26, i32 3, i32 27>
  store <8 x i16> %i.cdf, ptr %i.cdc, align 1, !tbaa !18
  %i.cdg = getelementptr inbounds nuw i8, ptr %.191343, i64 48
  %i.cdh = shufflevector <16 x i16> %i.cdd, <16 x i16> %i.cde, <8 x i32> <i32 4, i32 28, i32 5, i32 29, i32 6, i32 30, i32 7, i32 31>
  store <8 x i16> %i.cdh, ptr %i.cdg, align 1, !tbaa !18
  %i.cdi = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ccp) ; 2 uses
  %i.cdj = getelementptr inbounds nuw i8, ptr %.191343, i64 64
  %i.cdk = bitcast <16 x bfloat> %i.cdi to <16 x i16> ; 2 uses
  %i.cdl = bitcast <16 x bfloat> %i.cdi to <16 x i16> ; 2 uses
  %i.cdm = shufflevector <16 x i16> %i.cdk, <16 x i16> %i.cdl, <8 x i32> <i32 0, i32 24, i32 1, i32 25, i32 2, i32 26, i32 3, i32 27>
  store <8 x i16> %i.cdm, ptr %i.cdj, align 1, !tbaa !18
  %i.cdn = getelementptr inbounds nuw i8, ptr %.191343, i64 80
  %i.cdo = shufflevector <16 x i16> %i.cdk, <16 x i16> %i.cdl, <8 x i32> <i32 4, i32 28, i32 5, i32 29, i32 6, i32 30, i32 7, i32 31>
  store <8 x i16> %i.cdo, ptr %i.cdn, align 1, !tbaa !18
  %i.cdp = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ccq) ; 2 uses
  %i.cdq = getelementptr inbounds nuw i8, ptr %.191343, i64 96
  %i.cdr = bitcast <16 x bfloat> %i.cdp to <16 x i16> ; 2 uses
  %i.cds = bitcast <16 x bfloat> %i.cdp to <16 x i16> ; 2 uses
  %i.cdt = shufflevector <16 x i16> %i.cdr, <16 x i16> %i.cds, <8 x i32> <i32 0, i32 24, i32 1, i32 25, i32 2, i32 26, i32 3, i32 27>
  store <8 x i16> %i.cdt, ptr %i.cdq, align 1, !tbaa !18
  %i.cdu = getelementptr inbounds nuw i8, ptr %.191343, i64 112
  %i.cdv = shufflevector <16 x i16> %i.cdr, <16 x i16> %i.cds, <8 x i32> <i32 4, i32 28, i32 5, i32 29, i32 6, i32 30, i32 7, i32 31>
  store <8 x i16> %i.cdv, ptr %i.cdu, align 1, !tbaa !18
  %i.cdw = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ccr) ; 2 uses
  %i.cdx = getelementptr inbounds nuw i8, ptr %.191343, i64 128
  %i.cdy = bitcast <16 x bfloat> %i.cdw to <16 x i16> ; 2 uses
  %i.cdz = bitcast <16 x bfloat> %i.cdw to <16 x i16> ; 2 uses
  %i.cea = shufflevector <16 x i16> %i.cdy, <16 x i16> %i.cdz, <8 x i32> <i32 0, i32 24, i32 1, i32 25, i32 2, i32 26, i32 3, i32 27>
  store <8 x i16> %i.cea, ptr %i.cdx, align 1, !tbaa !18
  %i.ceb = getelementptr inbounds nuw i8, ptr %.191343, i64 144
  %i.cec = shufflevector <16 x i16> %i.cdy, <16 x i16> %i.cdz, <8 x i32> <i32 4, i32 28, i32 5, i32 29, i32 6, i32 30, i32 7, i32 31>
  store <8 x i16> %i.cec, ptr %i.ceb, align 1, !tbaa !18
  %i.ced = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ccs) ; 2 uses
  %i.cee = getelementptr inbounds nuw i8, ptr %.191343, i64 160
  %i.cef = bitcast <16 x bfloat> %i.ced to <16 x i16> ; 2 uses
  %i.ceg = bitcast <16 x bfloat> %i.ced to <16 x i16> ; 2 uses
  %i.ceh = shufflevector <16 x i16> %i.cef, <16 x i16> %i.ceg, <8 x i32> <i32 0, i32 24, i32 1, i32 25, i32 2, i32 26, i32 3, i32 27>
  store <8 x i16> %i.ceh, ptr %i.cee, align 1, !tbaa !18
  %i.cei = getelementptr inbounds nuw i8, ptr %.191343, i64 176
  %i.cej = shufflevector <16 x i16> %i.cef, <16 x i16> %i.ceg, <8 x i32> <i32 4, i32 28, i32 5, i32 29, i32 6, i32 30, i32 7, i32 31>
  store <8 x i16> %i.cej, ptr %i.cei, align 1, !tbaa !18
  %i.cek = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.cct) ; 2 uses
  %i.cel = getelementptr inbounds nuw i8, ptr %.191343, i64 192
  %i.cem = bitcast <16 x bfloat> %i.cek to <16 x i16> ; 2 uses
  %i.cen = bitcast <16 x bfloat> %i.cek to <16 x i16> ; 2 uses
  %i.ceo = shufflevector <16 x i16> %i.cem, <16 x i16> %i.cen, <8 x i32> <i32 0, i32 24, i32 1, i32 25, i32 2, i32 26, i32 3, i32 27>
  store <8 x i16> %i.ceo, ptr %i.cel, align 1, !tbaa !18
  %i.cep = getelementptr inbounds nuw i8, ptr %.191343, i64 208
  %i.ceq = shufflevector <16 x i16> %i.cem, <16 x i16> %i.cen, <8 x i32> <i32 4, i32 28, i32 5, i32 29, i32 6, i32 30, i32 7, i32 31>
  store <8 x i16> %i.ceq, ptr %i.cep, align 1, !tbaa !18
  %i.cer = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.ccu) ; 2 uses
  %i.ces = getelementptr inbounds nuw i8, ptr %.191343, i64 224
  %i.cet = bitcast <16 x bfloat> %i.cer to <16 x i16> ; 2 uses
  %i.ceu = bitcast <16 x bfloat> %i.cer to <16 x i16> ; 2 uses
  %i.cev = shufflevector <16 x i16> %i.cet, <16 x i16> %i.ceu, <8 x i32> <i32 0, i32 24, i32 1, i32 25, i32 2, i32 26, i32 3, i32 27>
  store <8 x i16> %i.cev, ptr %i.ces, align 1, !tbaa !18
  %i.cew = getelementptr inbounds nuw i8, ptr %.191343, i64 240
  %i.cex = shufflevector <16 x i16> %i.cet, <16 x i16> %i.ceu, <8 x i32> <i32 4, i32 28, i32 5, i32 29, i32 6, i32 30, i32 7, i32 31>
  store <8 x i16> %i.cex, ptr %i.cew, align 1, !tbaa !18
  %i.cey = getelementptr inbounds nuw i8, ptr %.191343, i64 256
  br label %_ZN4ncnn3MatD2Ev.exit3334

bb.o:                                             ; preds = %_ZNK4ncnn3Mat7channelEi.exit3593
  %i.cez = load <8 x bfloat>, ptr %i.car, align 1, !tbaa !18
  %i.cfa = fpext fast <8 x bfloat> %i.cez to <8 x float> ; 2 uses
  %i.cfb = getelementptr inbounds [2 x i8], ptr %i.car, i64 %i.em
  %i.cfc = load <8 x bfloat>, ptr %i.cfb, align 1, !tbaa !18
  %i.cfd = fpext fast <8 x bfloat> %i.cfc to <8 x float> ; 2 uses
  %i.cfe = getelementptr inbounds [2 x i8], ptr %i.car, i64 %i.eq
end_hunk_1
begin_hunk_2_@_ZN4ncnnL40convolution_im2col_input_tile_impl_bf16sERKNS_3MatERS0_iiiiiiiiii:bb.a
  store <8 x i16> %i.dgp, ptr %i.dgm, align 1, !tbaa !18
  %i.dgq = getelementptr inbounds nuw i8, ptr %.261334, i64 48
  %i.dgr = shufflevector <8 x i16> %i.dgn, <8 x i16> %i.dgo, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.dgr, ptr %i.dgq, align 1, !tbaa !18
  %i.dgs = getelementptr inbounds nuw i8, ptr %.261334, i64 64
  br label %_ZN4ncnn3MatD2Ev.exit3329

bb.v:                                             ; preds = %_ZNK4ncnn3Mat7channelEi.exit3590
  br i1 %i.du, label %_ZN4ncnn3MatD2Ev.exit3329, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dgt = load i16, ptr %i.cvr, align 2, !tbaa !24
  store i16 %i.dgt, ptr %.261334, align 2, !tbaa !24
  %i.dgu = load i16, ptr %i.cvu, align 2, !tbaa !24
  %i.dgv = getelementptr inbounds nuw i8, ptr %.261334, i64 2
  store i16 %i.dgu, ptr %i.dgv, align 2, !tbaa !24
  %i.dgw = load i16, ptr %i.cvx, align 2, !tbaa !24
  %i.dgx = getelementptr inbounds nuw i8, ptr %.261334, i64 4
  store i16 %i.dgw, ptr %i.dgx, align 2, !tbaa !24
  %i.dgy = load i16, ptr %i.cwa, align 2, !tbaa !24
  %i.dgz = getelementptr inbounds nuw i8, ptr %.261334, i64 6
  store i16 %i.dgy, ptr %i.dgz, align 2, !tbaa !24
  %i.dha = load i16, ptr %i.cwd, align 2, !tbaa !24
  %i.dhb = getelementptr inbounds nuw i8, ptr %.261334, i64 8
  store i16 %i.dha, ptr %i.dhb, align 2, !tbaa !24
  %i.dhc = load i16, ptr %i.cwg, align 2, !tbaa !24
  %i.dhd = getelementptr inbounds nuw i8, ptr %.261334, i64 10
  store i16 %i.dhc, ptr %i.dhd, align 2, !tbaa !24
  %i.dhe = load i16, ptr %i.cwj, align 2, !tbaa !24
  %i.dhf = getelementptr inbounds nuw i8, ptr %.261334, i64 12
  store i16 %i.dhe, ptr %i.dhf, align 2, !tbaa !24
  %i.dhg = load i16, ptr %i.cwo, align 2, !tbaa !24
  %i.dhh = getelementptr inbounds nuw i8, ptr %.261334, i64 14
  store i16 %i.dhg, ptr %i.dhh, align 2, !tbaa !24
  %i.dhi = getelementptr inbounds nuw i8, ptr %.261334, i64 16
  br label %_ZN4ncnn3MatD2Ev.exit3329

_ZN4ncnn3MatD2Ev.exit3329:                        ; preds = %bb.t, %.thread1255, %bb.u, %bb.w, %bb.v
  %.30 = phi ptr [ %i.dhi, %bb.w ], [ %.261334, %bb.v ], [ %i.dgs, %bb.u ], [ %i.dao, %.thread1255 ], [ %i.ddi, %bb.t ] ; 2 uses
  %i.dhj = add nuw nsw i32 %.230531333, 1         ; 2 uses
  %exitcond1423.not = icmp eq i32 %i.dhj, %i.cte
  br i1 %exitcond1423.not, label %.loopexit1296, label %_ZNK4ncnn3Mat7channelEi.exit3590, !llvm.loop !597

.loopexit1296:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit3329, %_ZN4ncnn3MatD2Ev.exit3334, %.loopexit1301, %.loopexit1298
  %.31 = phi ptr [ %.23, %_ZN4ncnn3MatD2Ev.exit3334 ], [ %.18, %.loopexit1298 ], [ %.25, %.loopexit1301 ], [ %.30, %_ZN4ncnn3MatD2Ev.exit3329 ] ; 2 uses
  %i.dhk = add nuw nsw i32 %.127591347, 8         ; 3 uses
  %i.dhl = or disjoint i32 %i.dhk, 7
  %i.dhm = icmp slt i32 %i.dhl, %2
  br i1 %i.dhm, label %bb.m, label %.preheader1295, !llvm.loop !598

.preheader:                                       ; preds = %.loopexit, %.preheader1295
  %.22760.lcssa = phi i32 [ %.12759.lcssa, %.preheader1295 ], [ %i.efx, %.loopexit ] ; 2 uses
  %.32.lcssa = phi ptr [ %.16.lcssa, %.preheader1295 ], [ %.47, %.loopexit ]
  %i.dhn = icmp slt i32 %.22760.lcssa, %2
  br i1 %i.dhn, label %.lr.ph1384, label %._crit_edge1385.split

.lr.ph1384:                                       ; preds = %.preheader
  %i.dho = sdiv i32 %4, %i.d                      ; 2 uses
  %factor.op.mul1375 = mul i32 %7, %i.d
  %i.dhp = icmp sgt i32 %i.dho, 0
  %i.dhq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dhr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dhs = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.d, i1 true)
  br i1 %i.dhp, label %.lr.ph1384.split, label %._crit_edge1385.split

.lr.ph1384.split:                                 ; preds = %.lr.ph1384
  %i.dht = tail call range(i32 1, 33) i32 @llvm.ctpop.i32(i32 %i.d)
  %i.dhu = icmp eq i32 %i.dht, 1
  %i.dhv = sdiv i32 %3, %i.d
  br i1 %i.dhu, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph.us.preheader, label %._crit_edge1385.split

_ZNK4ncnn3Mat7channelEi.exit.lr.ph.us.preheader:  ; preds = %.lr.ph1384.split
  %i.dhw = insertelement <2 x i32> poison, i32 %i.j, i64 0
  %i.dhx = insertelement <2 x i32> %i.dhw, i32 %5, i64 1
  br label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph.us

_ZNK4ncnn3Mat7channelEi.exit.lr.ph.us:            ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph.us.preheader, %._crit_edge.split.us.us
  %.481383.us = phi ptr [ %.53.us.us, %._crit_edge.split.us.us ], [ %.32.lcssa, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph.us.preheader ]
  %.327611382.us = phi i32 [ %i.djl, %._crit_edge.split.us.us ], [ %.22760.lcssa, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph.us.preheader ] ; 2 uses
  %i.dhy = add nsw i32 %.327611382.us, %1         ; 2 uses
  %i.dhz = sdiv i32 %i.dhy, %i.i
  %i.dia = srem i32 %i.dhy, %i.i
  %factor.op.mul.reass1381.us = mul i32 %i.dia, %factor.op.mul1324
  %i.dib = mul nsw i32 %i.dhz, %10
  br label %_ZNK4ncnn3Mat7channelEi.exit.us.us

_ZNK4ncnn3Mat7channelEi.exit.us.us:               ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph.us
  %.01378.us.us = phi i32 [ 0, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph.us ], [ %i.djk, %_ZN4ncnn3MatD2Ev.exit.us.us ] ; 2 uses
  %.491377.us.us = phi ptr [ %.481383.us, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph.us ], [ %.53.us.us, %_ZN4ncnn3MatD2Ev.exit.us.us ] ; 9 uses
  %i.dic = add nsw i32 %i.dhv, %.01378.us.us      ; 2 uses
  %i.did = srem i32 %i.dic, %i.j                  ; 2 uses
  %i.die = insertelement <2 x i32> poison, i32 %i.dic, i64 0
  %i.dif = insertelement <2 x i32> %i.die, i32 %i.did, i64 1
  %i.dig = sdiv <2 x i32> %i.dif, %i.dhx          ; 2 uses
  %i.dih = srem i32 %i.did, %5
  %i.dii = load i32, ptr %i.a, align 4, !tbaa !31, !noalias !624
  %i.dij = load ptr, ptr %0, align 8, !tbaa !15, !noalias !624
  %i.dik = load i64, ptr %i.dhq, align 8, !tbaa !16, !noalias !624
  %i.dil = extractelement <2 x i32> %i.dig, i64 0
  %i.dim = sext i32 %i.dil to i64
  %i.din = mul i64 %i.dik, %i.dim
  %i.dio = load i64, ptr %i.dhr, align 8, !tbaa !17, !noalias !624 ; 2 uses
  %i.dip = mul i64 %i.din, %i.dio
  %i.diq = getelementptr inbounds nuw i8, ptr %i.dij, i64 %i.dip
  %i.dir = sext i32 %i.dii to i64
  %.reass1376.us.us = mul i32 %i.dih, %factor.op.mul1375
  %i.dis = add i32 %.reass1376.us.us, %factor.op.mul.reass1381.us
  %i.dit = extractelement <2 x i32> %i.dig, i64 1
  %i.diu = mul nsw i32 %i.dit, %8
  %i.div = add nsw i32 %i.diu, %i.dib
  %i.diw = sext i32 %i.div to i64
  %i.dix = mul nsw i64 %i.dir, %i.diw
  %i.diy = mul i64 %i.dix, %i.dio
  %i.diz = getelementptr inbounds nuw i8, ptr %i.diq, i64 %i.diy
  %i.dja = sext i32 %i.dis to i64
  %i.djb = getelementptr inbounds [2 x i8], ptr %i.diz, i64 %i.dja ; 4 uses
  switch i32 %i.dhs, label %_ZN4ncnn3MatD2Ev.exit.us.us [
    i32 4, label %.thread1279.us.us
    i32 3, label %bb.z
    i32 2, label %bb.y
    i32 0, label %bb.x
  ]

bb.x:                                             ; preds = %_ZNK4ncnn3Mat7channelEi.exit.us.us
  %i.djc = load i16, ptr %i.djb, align 2, !tbaa !24
  store i16 %i.djc, ptr %.491377.us.us, align 2, !tbaa !24
  %i.djd = getelementptr inbounds nuw i8, ptr %.491377.us.us, i64 2
  br label %_ZN4ncnn3MatD2Ev.exit.us.us

bb.y:                                             ; preds = %_ZNK4ncnn3Mat7channelEi.exit.us.us
  %i.dje = load i64, ptr %i.djb, align 1, !tbaa !18
  store i64 %i.dje, ptr %.491377.us.us, align 1, !tbaa !18
  %i.djf = getelementptr inbounds nuw i8, ptr %.491377.us.us, i64 8
  br label %_ZN4ncnn3MatD2Ev.exit.us.us

bb.z:                                             ; preds = %_ZNK4ncnn3Mat7channelEi.exit.us.us
  %i.djg = load <2 x i64>, ptr %i.djb, align 1, !tbaa !18
  store <2 x i64> %i.djg, ptr %.491377.us.us, align 1, !tbaa !18
  %i.djh = getelementptr inbounds nuw i8, ptr %.491377.us.us, i64 16
  br label %_ZN4ncnn3MatD2Ev.exit.us.us

.thread1279.us.us:                                ; preds = %_ZNK4ncnn3Mat7channelEi.exit.us.us
  %i.dji = load <4 x i64>, ptr %i.djb, align 1, !tbaa !18
  store <4 x i64> %i.dji, ptr %.491377.us.us, align 1, !tbaa !18
  %i.djj = getelementptr inbounds nuw i8, ptr %.491377.us.us, i64 32
  br label %_ZN4ncnn3MatD2Ev.exit.us.us

_ZN4ncnn3MatD2Ev.exit.us.us:                      ; preds = %.thread1279.us.us, %bb.z, %bb.y, %bb.x, %_ZNK4ncnn3Mat7channelEi.exit.us.us
  %.53.us.us = phi ptr [ %i.djd, %bb.x ], [ %.491377.us.us, %_ZNK4ncnn3Mat7channelEi.exit.us.us ], [ %i.djf, %bb.y ], [ %i.djj, %.thread1279.us.us ], [ %i.djh, %bb.z ] ; 2 uses
  %i.djk = add nuw nsw i32 %.01378.us.us, 1       ; 2 uses
  %exitcond1427.not = icmp eq i32 %i.djk, %i.dho
  br i1 %exitcond1427.not, label %._crit_edge.split.us.us, label %_ZNK4ncnn3Mat7channelEi.exit.us.us, !llvm.loop !601

._crit_edge.split.us.us:                          ; preds = %_ZN4ncnn3MatD2Ev.exit.us.us
  %i.djl = add nuw nsw i32 %.327611382.us, 1      ; 2 uses
  %exitcond1428.not = icmp eq i32 %i.djl, %2
  br i1 %exitcond1428.not, label %._crit_edge1385.split, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph.us, !llvm.loop !602

bb.aa:                                            ; preds = %.lr.ph1372, %.loopexit
  %.321371 = phi ptr [ %.16.lcssa, %.lr.ph1372 ], [ %.47, %.loopexit ] ; 4 uses
  %.227601370 = phi i32 [ %.12759.lcssa, %.lr.ph1372 ], [ %i.efx, %.loopexit ] ; 2 uses
  %i.djm = add nsw i32 %.227601370, %1            ; 3 uses
  %i.djn = insertelement <2 x i32> poison, i32 %i.djm, i64 0 ; 2 uses
  %i.djo = shufflevector <2 x i32> %i.djn, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.djp = add nsw <2 x i32> %i.djo, <i32 1, i32 2> ; 2 uses
  %i.djq = add nsw i32 %i.djm, 3                  ; 2 uses
  %i.djr = insertelement <4 x i32> poison, i32 %i.djm, i64 0
  %i.djs = shufflevector <2 x i32> %i.djp, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.djt = shufflevector <4 x i32> %i.djr, <4 x i32> %i.djs, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.dju = insertelement <4 x i32> %i.djt, i32 %i.djq, i64 3
  %i.djv = sdiv <4 x i32> %i.dju, %i.buq          ; 5 uses
  %i.djw = srem <2 x i32> %i.djp, %i.bus          ; 3 uses
  %i.djx = insertelement <2 x i32> %i.djn, i32 %i.djq, i64 1
  %i.djy = srem <2 x i32> %i.djx, %i.bus          ; 5 uses
  %i.djz = extractelement <4 x i32> %i.djv, i64 0 ; 4 uses
  %i.dka = extractelement <4 x i32> %i.djv, i64 3 ; 2 uses
  %i.dkb = icmp eq i32 %i.djz, %i.dka
  br i1 %i.dkb, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  br i1 %brmerge1400, label %.loopexit1291, label %_ZNK4ncnn3Mat7channelEi.exit3589.lr.ph

_ZNK4ncnn3Mat7channelEi.exit3589.lr.ph:           ; preds = %bb.ab
  %i.dkc = load i32, ptr %i.a, align 4, !tbaa !31, !noalias !625
  %i.dkd = load ptr, ptr %0, align 8, !tbaa !15, !noalias !625 ; 2 uses
  %i.dke = load i64, ptr %i.bts, align 8, !tbaa !16, !noalias !625
  %i.dkf = load i64, ptr %i.btt, align 8, !tbaa !17, !noalias !625 ; 2 uses
  %i.dkg = mul i64 %i.dkf, %i.dke
  %i.dkh = sext i32 %i.dkc to i64
  %i.dki = mul nsw i32 %i.djz, %10                ; 2 uses
  %i.dkj = mul i64 %i.dkf, %i.dkh                 ; 2 uses
  %i.dkk = extractelement <2 x i32> %i.djy, i64 0
  %i.dkl = mul nsw i32 %i.dkk, %9                 ; 2 uses
  %i.dkm = insertelement <2 x i64> poison, i64 %i.dkg, i64 0
  %i.dkn = shufflevector <2 x i64> %i.dkm, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %_ZNK4ncnn3Mat7channelEi.exit3589

_ZNK4ncnn3Mat7channelEi.exit3589:                 ; preds = %_ZNK4ncnn3Mat7channelEi.exit3589.lr.ph, %_ZNK4ncnn3Mat7channelEi.exit3589
  %.331360 = phi ptr [ %.321371, %_ZNK4ncnn3Mat7channelEi.exit3589.lr.ph ], [ %i.dmg, %_ZNK4ncnn3Mat7channelEi.exit3589 ] ; 9 uses
  %.027651359 = phi i32 [ 0, %_ZNK4ncnn3Mat7channelEi.exit3589.lr.ph ], [ %i.dmh, %_ZNK4ncnn3Mat7channelEi.exit3589 ] ; 2 uses
  %i.dko = add nsw i32 %.027651359, %3            ; 3 uses
  %i.dkp = add nsw i32 %i.dko, 1                  ; 2 uses
  %i.dkq = insertelement <2 x i32> poison, i32 %i.dko, i64 0
  %i.dkr = insertelement <2 x i32> %i.dkq, i32 %i.dkp, i64 1
  %i.dks = sdiv <2 x i32> %i.dkr, %i.bvd
  %i.dkt = sext <2 x i32> %i.dks to <2 x i64>
  %i.dku = mul <2 x i64> %i.dkn, %i.dkt           ; 2 uses
  %i.dkv = extractelement <2 x i64> %i.dku, i64 0
  %i.dkw = getelementptr inbounds nuw i8, ptr %i.dkd, i64 %i.dkv
  %i.dkx = extractelement <2 x i64> %i.dku, i64 1
  %i.dky = getelementptr inbounds nuw i8, ptr %i.dkd, i64 %i.dkx
  %39 = insertelement <2 x i32> poison, i32 %i.dkp, i64 0
  %40 = insertelement <2 x i32> %39, i32 %i.dko, i64 1
  %41 = srem <2 x i32> %40, %i.bvd
  %.frozen1551 = freeze <2 x i32> %41             ; 2 uses
  %i.dkz = sdiv <2 x i32> %.frozen1551, %i.bvf    ; 2 uses
  %i.dla = mul <2 x i32> %i.dkz, %i.bvf
  %.decomposed1552 = sub <2 x i32> %.frozen1551, %i.dla ; 2 uses
  %42 = extractelement <2 x i32> %.decomposed1552, i64 1
  %43 = mul nsw i32 %42, %7
  %44 = add nsw i32 %43, %i.dkl
  %45 = sext i32 %44 to i64
  %i.dlb = extractelement <2 x i32> %.decomposed1552, i64 0
  %46 = mul nsw i32 %i.dlb, %7
  %47 = add nsw i32 %46, %i.dkl
  %48 = mul nsw <2 x i32> %i.dkz, %i.bvh          ; 2 uses
  %49 = extractelement <2 x i32> %48, i64 1
  %i.dlc = add nsw i32 %49, %i.dki
  %i.dld = sext i32 %i.dlc to i64
  %50 = mul i64 %i.dkj, %i.dld
  %51 = getelementptr inbounds nuw i8, ptr %i.dkw, i64 %50
  %52 = getelementptr inbounds [2 x i8], ptr %51, i64 %45 ; 4 uses
  %i.dle = extractelement <2 x i32> %48, i64 0
  %i.dlf = add nsw i32 %i.dle, %i.dki
  %i.dlg = sext i32 %i.dlf to i64
  %i.dlh = mul i64 %i.dkj, %i.dlg
  %i.dli = getelementptr inbounds nuw i8, ptr %i.dky, i64 %i.dlh
  %i.dlj = sext i32 %47 to i64
  %i.dlk = getelementptr inbounds [2 x i8], ptr %i.dli, i64 %i.dlj ; 4 uses
  %i.dll = load i16, ptr %52, align 2, !tbaa !24
  store i16 %i.dll, ptr %.331360, align 2, !tbaa !24
  %i.dlm = load i16, ptr %i.dlk, align 2, !tbaa !24
  %i.dln = getelementptr inbounds nuw i8, ptr %.331360, i64 2
  store i16 %i.dlm, ptr %i.dln, align 2, !tbaa !24
  %i.dlo = getelementptr inbounds [2 x i8], ptr %52, i64 %i.btu
  %i.dlp = load i16, ptr %i.dlo, align 2, !tbaa !24
  %i.dlq = getelementptr inbounds nuw i8, ptr %.331360, i64 4
  store i16 %i.dlp, ptr %i.dlq, align 2, !tbaa !24
  %i.dlr = getelementptr inbounds [2 x i8], ptr %i.dlk, i64 %i.btu
  %i.dls = load i16, ptr %i.dlr, align 2, !tbaa !24
  %i.dlt = getelementptr inbounds nuw i8, ptr %.331360, i64 6
  store i16 %i.dls, ptr %i.dlt, align 2, !tbaa !24
  %i.dlu = getelementptr inbounds [2 x i8], ptr %52, i64 %i.btw
  %i.dlv = load i16, ptr %i.dlu, align 2, !tbaa !24
  %i.dlw = getelementptr inbounds nuw i8, ptr %.331360, i64 8
  store i16 %i.dlv, ptr %i.dlw, align 2, !tbaa !24
  %i.dlx = getelementptr inbounds [2 x i8], ptr %i.dlk, i64 %i.btw
  %i.dly = load i16, ptr %i.dlx, align 2, !tbaa !24
  %i.dlz = getelementptr inbounds nuw i8, ptr %.331360, i64 10
  store i16 %i.dly, ptr %i.dlz, align 2, !tbaa !24
  %i.dma = getelementptr inbounds [2 x i8], ptr %52, i64 %i.bty
  %i.dmb = load i16, ptr %i.dma, align 2, !tbaa !24
  %i.dmc = getelementptr inbounds nuw i8, ptr %.331360, i64 12
  store i16 %i.dmb, ptr %i.dmc, align 2, !tbaa !24
  %i.dmd = getelementptr inbounds [2 x i8], ptr %i.dlk, i64 %i.bty
  %i.dme = load i16, ptr %i.dmd, align 2, !tbaa !24
  %i.dmf = getelementptr inbounds nuw i8, ptr %.331360, i64 14
  store i16 %i.dme, ptr %i.dmf, align 2, !tbaa !24
  %i.dmg = getelementptr inbounds nuw i8, ptr %.331360, i64 16 ; 2 uses
  %i.dmh = add nuw nsw i32 %.027651359, 2         ; 3 uses
  %i.dmi = or disjoint i32 %i.dmh, 1
  %i.dmj = icmp slt i32 %i.dmi, %4
  br i1 %i.dmj, label %_ZNK4ncnn3Mat7channelEi.exit3589, label %.loopexit1291, !llvm.loop !605

.loopexit1291:                                    ; preds = %_ZNK4ncnn3Mat7channelEi.exit3589, %bb.ab
  %.12766 = phi i32 [ 0, %bb.ab ], [ %i.dmh, %_ZNK4ncnn3Mat7channelEi.exit3589 ] ; 2 uses
  %.34 = phi ptr [ %.321371, %bb.ab ], [ %i.dmg, %_ZNK4ncnn3Mat7channelEi.exit3589 ] ; 2 uses
  %i.dmk = sdiv i32 %4, %i.d                      ; 2 uses
  %i.dml = extractelement <2 x i32> %i.djy, i64 0
  %factor.op.mul.reass1369 = mul i32 %i.dml, %factor.op.mul1324
  %i.dmm = icmp slt i32 %.12766, %i.dmk
  br i1 %i.dmm, label %_ZNK4ncnn3Mat7channelEi.exit3587.lr.ph, label %.loopexit

_ZNK4ncnn3Mat7channelEi.exit3587.lr.ph:           ; preds = %.loopexit1291
  %i.dmn = sdiv i32 %3, %i.d
  %i.dmo = mul nsw i32 %i.djz, %10
  br label %_ZNK4ncnn3Mat7channelEi.exit3587

_ZNK4ncnn3Mat7channelEi.exit3587:                 ; preds = %_ZNK4ncnn3Mat7channelEi.exit3587.lr.ph, %_ZN4ncnn3MatD2Ev.exit3324
  %.351366 = phi ptr [ %.34, %_ZNK4ncnn3Mat7channelEi.exit3587.lr.ph ], [ %.39, %_ZN4ncnn3MatD2Ev.exit3324 ] ; 23 uses
  %.227671365 = phi i32 [ %.12766, %_ZNK4ncnn3Mat7channelEi.exit3587.lr.ph ], [ %i.dtn, %_ZN4ncnn3MatD2Ev.exit3324 ] ; 2 uses
  %i.dmp = add nsw i32 %i.dmn, %.227671365        ; 2 uses
  %i.dmq = srem i32 %i.dmp, %i.j                  ; 2 uses
  %i.dmr = insertelement <2 x i32> poison, i32 %i.dmp, i64 0
  %i.dms = insertelement <2 x i32> %i.dmr, i32 %i.dmq, i64 1
  %i.dmt = sdiv <2 x i32> %i.dms, %i.bvj          ; 2 uses
  %i.dmu = srem i32 %i.dmq, %5
  %i.dmv = load i32, ptr %i.a, align 4, !tbaa !31, !noalias !626
  %i.dmw = load ptr, ptr %0, align 8, !tbaa !15, !noalias !626
  %i.dmx = load i64, ptr %i.bts, align 8, !tbaa !16, !noalias !626
  %i.dmy = extractelement <2 x i32> %i.dmt, i64 0
  %i.dmz = sext i32 %i.dmy to i64
  %i.dna = mul i64 %i.dmx, %i.dmz
  %i.dnb = load i64, ptr %i.btt, align 8, !tbaa !17, !noalias !626 ; 2 uses
  %i.dnc = mul i64 %i.dna, %i.dnb
  %i.dnd = getelementptr inbounds nuw i8, ptr %i.dmw, i64 %i.dnc
  %i.dne = sext i32 %i.dmv to i64
  %.reass1364 = mul i32 %i.dmu, %factor.op.mul1363
  %i.dnf = add i32 %.reass1364, %factor.op.mul.reass1369
  %i.dng = extractelement <2 x i32> %i.dmt, i64 1
  %i.dnh = mul nsw i32 %i.dng, %8
  %i.dni = add nsw i32 %i.dnh, %i.dmo
  %i.dnj = sext i32 %i.dni to i64
  %i.dnk = mul nsw i64 %i.dne, %i.dnj
  %i.dnl = mul i64 %i.dnk, %i.dnb
  %i.dnm = getelementptr inbounds nuw i8, ptr %i.dnd, i64 %i.dnl
  %i.dnn = sext i32 %i.dnf to i64
  %i.dno = getelementptr inbounds [2 x i8], ptr %i.dnm, i64 %i.dnn ; 16 uses
  switch i32 %i.d, label %bb.ae [
    i32 16, label %.thread1263
    i32 8, label %bb.ac
    i32 4, label %bb.ad
  ]

.thread1263:                                      ; preds = %_ZNK4ncnn3Mat7channelEi.exit3587
  %i.dnp = load <16 x bfloat>, ptr %i.dno, align 1, !tbaa !18
  %i.dnq = fpext fast <16 x bfloat> %i.dnp to <16 x float> ; 2 uses
  %i.dnr = getelementptr inbounds [2 x i8], ptr %i.dno, i64 %i.bug
  %i.dns = load <16 x bfloat>, ptr %i.dnr, align 1, !tbaa !18
  %i.dnt = fpext fast <16 x bfloat> %i.dns to <16 x float> ; 2 uses
  %i.dnu = getelementptr inbounds [2 x i8], ptr %i.dno, i64 %i.buk
  %i.dnv = load <16 x bfloat>, ptr %i.dnu, align 1, !tbaa !18
  %i.dnw = fpext fast <16 x bfloat> %i.dnv to <16 x float> ; 2 uses
  %i.dnx = getelementptr inbounds [2 x i8], ptr %i.dno, i64 %i.bum
  %i.dny = load <16 x bfloat>, ptr %i.dnx, align 1, !tbaa !18
  %i.dnz = fpext fast <16 x bfloat> %i.dny to <16 x float> ; 2 uses
  %i.doa = shufflevector <16 x float> %i.dnq, <16 x float> %i.dnt, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.dob = shufflevector <16 x float> %i.dnq, <16 x float> %i.dnt, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.doc = shufflevector <16 x float> %i.dnw, <16 x float> %i.dnz, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 4, i32 20, i32 5, i32 21, i32 8, i32 24, i32 9, i32 25, i32 12, i32 28, i32 13, i32 29> ; 2 uses
  %i.dod = shufflevector <16 x float> %i.dnw, <16 x float> %i.dnz, <16 x i32> <i32 2, i32 18, i32 3, i32 19, i32 6, i32 22, i32 7, i32 23, i32 10, i32 26, i32 11, i32 27, i32 14, i32 30, i32 15, i32 31> ; 2 uses
  %i.doe = shufflevector <16 x float> %i.doa, <16 x float> %i.doc, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.dof = shufflevector <16 x float> %i.dob, <16 x float> %i.dod, <16 x i32> <i32 0, i32 1, i32 16, i32 17, i32 8, i32 9, i32 24, i32 25, i32 2, i32 3, i32 18, i32 19, i32 10, i32 11, i32 26, i32 27> ; 2 uses
  %i.dog = shufflevector <16 x float> %i.doa, <16 x float> %i.doc, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.doh = shufflevector <16 x float> %i.dob, <16 x float> %i.dod, <16 x i32> <i32 4, i32 5, i32 20, i32 21, i32 12, i32 13, i32 28, i32 29, i32 6, i32 7, i32 22, i32 23, i32 14, i32 15, i32 30, i32 31> ; 2 uses
  %i.doi = shufflevector <16 x float> %i.doe, <16 x float> %i.dof, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.doj = shufflevector <16 x float> %i.dog, <16 x float> %i.doh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19, i32 24, i32 25, i32 26, i32 27>
  %i.dok = shufflevector <16 x float> %i.doe, <16 x float> %i.dof, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.dol = shufflevector <16 x float> %i.dog, <16 x float> %i.doh, <16 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15, i32 20, i32 21, i32 22, i32 23, i32 28, i32 29, i32 30, i32 31>
  %i.dom = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.doi)
  %i.don = bitcast <16 x bfloat> %i.dom to <4 x i64> ; 2 uses
  %i.doo = shufflevector <4 x i64> %i.don, <4 x i64> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.dop = shufflevector <4 x i64> %i.don, <4 x i64> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.doq = bitcast <2 x i64> %i.doo to <8 x i16>
  %i.dor = bitcast <2 x i64> %i.doo to <8 x i16>
  %i.dos = shufflevector <8 x i16> %i.doq, <8 x i16> %i.dor, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  store <8 x i16> %i.dos, ptr %.351366, align 1, !tbaa !18
  %i.dot = bitcast <2 x i64> %i.dop to <8 x i16>
  %i.dou = bitcast <2 x i64> %i.dop to <8 x i16>
  %i.dov = shufflevector <8 x i16> %i.dot, <8 x i16> %i.dou, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.dow = getelementptr inbounds nuw i8, ptr %.351366, i64 16
  store <8 x i16> %i.dov, ptr %i.dow, align 1, !tbaa !18
  %i.dox = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.doj)
  %i.doy = bitcast <16 x bfloat> %i.dox to <4 x i64> ; 2 uses
  %i.doz = shufflevector <4 x i64> %i.doy, <4 x i64> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.dpa = shufflevector <4 x i64> %i.doy, <4 x i64> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.dpb = bitcast <2 x i64> %i.doz to <8 x i16>
  %i.dpc = bitcast <2 x i64> %i.doz to <8 x i16>
  %i.dpd = shufflevector <8 x i16> %i.dpb, <8 x i16> %i.dpc, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.dpe = getelementptr inbounds nuw i8, ptr %.351366, i64 32
  store <8 x i16> %i.dpd, ptr %i.dpe, align 1, !tbaa !18
  %i.dpf = bitcast <2 x i64> %i.dpa to <8 x i16>
  %i.dpg = bitcast <2 x i64> %i.dpa to <8 x i16>
  %i.dph = shufflevector <8 x i16> %i.dpf, <8 x i16> %i.dpg, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.dpi = getelementptr inbounds nuw i8, ptr %.351366, i64 48
  store <8 x i16> %i.dph, ptr %i.dpi, align 1, !tbaa !18
  %i.dpj = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.dok)
  %i.dpk = bitcast <16 x bfloat> %i.dpj to <4 x i64> ; 2 uses
  %i.dpl = shufflevector <4 x i64> %i.dpk, <4 x i64> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.dpm = shufflevector <4 x i64> %i.dpk, <4 x i64> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.dpn = bitcast <2 x i64> %i.dpl to <8 x i16>
  %i.dpo = bitcast <2 x i64> %i.dpl to <8 x i16>
  %i.dpp = shufflevector <8 x i16> %i.dpn, <8 x i16> %i.dpo, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.dpq = getelementptr inbounds nuw i8, ptr %.351366, i64 64
  store <8 x i16> %i.dpp, ptr %i.dpq, align 1, !tbaa !18
  %i.dpr = bitcast <2 x i64> %i.dpm to <8 x i16>
  %i.dps = bitcast <2 x i64> %i.dpm to <8 x i16>
  %i.dpt = shufflevector <8 x i16> %i.dpr, <8 x i16> %i.dps, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.dpu = getelementptr inbounds nuw i8, ptr %.351366, i64 80
  store <8 x i16> %i.dpt, ptr %i.dpu, align 1, !tbaa !18
  %i.dpv = tail call fast noundef nofpclass(nan inf) <16 x bfloat> @llvm.x86.avx512bf16.cvtneps2bf16.512(<16 x float> nofpclass(nan inf) %i.dol)
  %i.dpw = bitcast <16 x bfloat> %i.dpv to <4 x i64> ; 2 uses
  %i.dpx = shufflevector <4 x i64> %i.dpw, <4 x i64> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.dpy = shufflevector <4 x i64> %i.dpw, <4 x i64> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.dpz = bitcast <2 x i64> %i.dpx to <8 x i16>
  %i.dqa = bitcast <2 x i64> %i.dpx to <8 x i16>
  %i.dqb = shufflevector <8 x i16> %i.dpz, <8 x i16> %i.dqa, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.dqc = getelementptr inbounds nuw i8, ptr %.351366, i64 96
  store <8 x i16> %i.dqb, ptr %i.dqc, align 1, !tbaa !18
  %i.dqd = bitcast <2 x i64> %i.dpy to <8 x i16>
  %i.dqe = bitcast <2 x i64> %i.dpy to <8 x i16>
  %i.dqf = shufflevector <8 x i16> %i.dqd, <8 x i16> %i.dqe, <8 x i32> <i32 0, i32 12, i32 1, i32 13, i32 2, i32 14, i32 3, i32 15>
  %i.dqg = getelementptr inbounds nuw i8, ptr %.351366, i64 112
  store <8 x i16> %i.dqf, ptr %i.dqg, align 1, !tbaa !18
  %i.dqh = getelementptr inbounds nuw i8, ptr %.351366, i64 128
  br label %_ZN4ncnn3MatD2Ev.exit3324

bb.ac:                                            ; preds = %_ZNK4ncnn3Mat7channelEi.exit3587
  %i.dqi = load <8 x bfloat>, ptr %i.dno, align 1, !tbaa !18
  %i.dqj = fpext fast <8 x bfloat> %i.dqi to <8 x float> ; 2 uses
  %i.dqk = getelementptr inbounds [2 x i8], ptr %i.dno, i64 %i.buc
  %i.dql = load <8 x bfloat>, ptr %i.dqk, align 1, !tbaa !18
  %i.dqm = fpext fast <8 x bfloat> %i.dql to <8 x float> ; 2 uses
  %i.dqn = getelementptr inbounds [2 x i8], ptr %i.dno, i64 %i.bug
  %i.dqo = load <8 x bfloat>, ptr %i.dqn, align 1, !tbaa !18
  %i.dqp = fpext fast <8 x bfloat> %i.dqo to <8 x float> ; 2 uses
  %i.dqq = getelementptr inbounds [2 x i8], ptr %i.dno, i64 %i.bui
  %i.dqr = load <8 x bfloat>, ptr %i.dqq, align 1, !tbaa !18
  %i.dqs = fpext fast <8 x bfloat> %i.dqr to <8 x float> ; 2 uses
  %i.dqt = shufflevector <8 x float> %i.dqj, <8 x float> %i.dqm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dqu = shufflevector <8 x float> %i.dqj, <8 x float> %i.dqm, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dqv = shufflevector <8 x float> %i.dqp, <8 x float> %i.dqs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 4, i32 12, i32 5, i32 13> ; 2 uses
  %i.dqw = shufflevector <8 x float> %i.dqp, <8 x float> %i.dqs, <8 x i32> <i32 2, i32 10, i32 3, i32 11, i32 6, i32 14, i32 7, i32 15> ; 2 uses
  %i.dqx = shufflevector <8 x float> %i.dqt, <8 x float> %i.dqv, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.dqy = shufflevector <8 x float> %i.dqu, <8 x float> %i.dqw, <8 x i32> <i32 0, i32 1, i32 8, i32 9, i32 2, i32 3, i32 10, i32 11>
  %i.dqz = shufflevector <8 x float> %i.dqt, <8 x float> %i.dqv, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.dra = shufflevector <8 x float> %i.dqu, <8 x float> %i.dqw, <8 x i32> <i32 4, i32 5, i32 12, i32 13, i32 6, i32 7, i32 14, i32 15>
  %i.drb = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.dqx)
  %i.drc = bitcast <8 x bfloat> %i.drb to <8 x i16>
  %i.drd = shufflevector <8 x i16> %i.drc, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.drd, ptr %.351366, align 1, !tbaa !18
  %i.dre = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.dqy)
  %i.drf = getelementptr inbounds nuw i8, ptr %.351366, i64 16
  %i.drg = bitcast <8 x bfloat> %i.dre to <8 x i16>
  %i.drh = shufflevector <8 x i16> %i.drg, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.drh, ptr %i.drf, align 1, !tbaa !18
  %i.dri = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.dqz)
  %i.drj = getelementptr inbounds nuw i8, ptr %.351366, i64 32
  %i.drk = bitcast <8 x bfloat> %i.dri to <8 x i16>
  %i.drl = shufflevector <8 x i16> %i.drk, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.drl, ptr %i.drj, align 1, !tbaa !18
  %i.drm = tail call fast <8 x bfloat> @llvm.x86.vcvtneps2bf16256(<8 x float> %i.dra)
  %i.drn = getelementptr inbounds nuw i8, ptr %.351366, i64 48
  %i.dro = bitcast <8 x bfloat> %i.drm to <8 x i16>
  %i.drp = shufflevector <8 x i16> %i.dro, <8 x i16> poison, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %i.drp, ptr %i.drn, align 1, !tbaa !18
  %i.drq = getelementptr inbounds nuw i8, ptr %.351366, i64 64
  br label %_ZN4ncnn3MatD2Ev.exit3324

bb.ad:                                            ; preds = %_ZNK4ncnn3Mat7channelEi.exit3587
  %i.drr = load i64, ptr %i.dno, align 1, !tbaa !18
  %i.drs = insertelement <2 x i64> poison, i64 %i.drr, i64 0
  %i.drt = bitcast <2 x i64> %i.drs to <8 x i16>
  %i.dru = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.drt, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.drv = bitcast <8 x i16> %i.dru to <4 x float> ; 2 uses
  %i.drw = getelementptr inbounds [2 x i8], ptr %i.dno, i64 %i.bua
  %i.drx = load i64, ptr %i.drw, align 1, !tbaa !18
  %i.dry = insertelement <2 x i64> poison, i64 %i.drx, i64 0
  %i.drz = bitcast <2 x i64> %i.dry to <8 x i16>
  %i.dsa = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.drz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dsb = bitcast <8 x i16> %i.dsa to <4 x float> ; 2 uses
  %i.dsc = getelementptr inbounds [2 x i8], ptr %i.dno, i64 %i.buc
end_hunk_2
