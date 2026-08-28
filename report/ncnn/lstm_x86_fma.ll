Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_fma?download=true
inline.NumInlined: 28
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4ncnn12LSTM_x86_fma20create_pipeline_int8ERKNS_6OptionE:bb.a

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.bl) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit10

_ZN4ncnn3Mat7releaseEv.exit10:                    ; preds = %bb.u, %bb.t, %_ZN4ncnn3Mat7releaseEv.exit13, %bb.q, %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %i.bq, align 8, !tbaa !20
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 600
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.r, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bp, i8 0, i64 20, i1 false)
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !11 ; 2 uses
  %.not.i5 = icmp eq ptr %i.bs, null
  br i1 %.not.i5, label %_ZN4ncnn3Mat7releaseEv.exit7, label %bb.v

bb.v:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit10
  %i.bt = atomicrmw add ptr %i.bs, i32 -1 acq_rel, align 4
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.w, label %_ZN4ncnn3Mat7releaseEv.exit7

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !17 ; 3 uses
  %.not3.i6 = icmp eq ptr %i.bw, null
  %i.bx = load ptr, ptr %i.q, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i6, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef %i.bx), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit7

bb.y:                                             ; preds = %bb.w
  %.not.i22 = icmp eq ptr %i.bx, null
  br i1 %.not.i22, label %_ZN4ncnn3Mat7releaseEv.exit7, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @free(ptr noundef nonnull %i.bx) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit7

_ZN4ncnn3Mat7releaseEv.exit7:                     ; preds = %bb.z, %bb.y, %_ZN4ncnn3Mat7releaseEv.exit10, %bb.v, %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 0, ptr %i.cc, align 8, !tbaa !20
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cb, i8 0, i64 20, i1 false)
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit7
  %i.cf = atomicrmw add ptr %i.ce, i32 -1 acq_rel, align 4
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.ab, label %_ZN4ncnn3Mat7releaseEv.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.s, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef %i.cj), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.ad:                                            ; preds = %bb.ab
  %.not.i24 = icmp eq ptr %i.cj, null
  br i1 %.not.i24, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.cj) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.ae, %bb.ad, %_ZN4ncnn3Mat7releaseEv.exit7, %bb.aa, %bb.ac
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i64 0, ptr %i.co, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.s, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cn, i8 0, i64 20, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %_ZN4ncnnL26lstm_transform_weight_int8ERKNS_3MatES2_S2_S2_S2_RS0_S3_S3_iiiiRKNS_6OptionE.exit
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn12LSTM_x86_fma15create_pipelineERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #8 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !38     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !38
  %i.h = load i32, ptr %0, align 4, !tbaa !38     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !38
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !38
  %i.k = load i32, ptr %i.a, align 4, !tbaa !38   ; 2 uses
  %.not410 = icmp sgt i32 %i.k, %i.j
  br i1 %.not410, label %._crit_edge412, label %.noexc231.lr.ph

.noexc231.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 348
  %i.n = load i32, ptr %i.m, align 4, !tbaa !62, !noalias !152
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !18, !noalias !152 ; 20 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.q = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !152 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.s = load i64, ptr %i.r, align 8, !tbaa !53, !noalias !152 ; 29 uses
  %factor.op.mul = mul i64 %i.q, %i.s
  %i.t = sext i32 %i.n to i64                     ; 26 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 376
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 420
  %i.w = load i32, ptr %i.v, align 4, !tbaa !62, !noalias !155
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !18, !noalias !155
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 440
  %i.z = load i64, ptr %i.y, align 8, !tbaa !20, !noalias !155
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 392
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !53, !noalias !155 ; 2 uses
  %factor.op.mul413 = mul i64 %i.z, %i.ab
  %i.ac = sext i32 %i.w to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 276
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !62, !noalias !158
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !18, !noalias !158 ; 20 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !20, !noalias !158 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !53, !noalias !158 ; 29 uses
  %factor.op.mul415 = mul i64 %i.ai, %i.ak
  %i.al = sext i32 %i.af to i64                   ; 26 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 664
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 708
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !62, !noalias !161
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !18, !noalias !161 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 728
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !20, !noalias !161 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 680
  %i.at = load i64, ptr %i.as, align 8, !tbaa !53, !noalias !161 ; 6 uses
  %factor.op.mul417 = mul i64 %i.ar, %i.at
  %i.au = sext i32 %i.ao to i64                   ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 736
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !18, !noalias !164
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 800
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !20, !noalias !164
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 752
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !53, !noalias !164
  %factor.op.mul419 = mul i64 %i.ay, %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 808
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 852
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !62, !noalias !167
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !18, !noalias !167 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 872
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !20, !noalias !167 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 824
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !53, !noalias !167 ; 6 uses
  %factor.op.mul421 = mul i64 %i.bg, %i.bi
  %i.bj = sext i32 %i.bd to i64                   ; 4 uses
  %i.bk = mul i64 %i.ab, %i.ac                    ; 3 uses
  %i.bl = shl i64 %i.bk, 1
  %i.bm = mul i64 %i.bk, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 220
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40 ; 6 uses
  %i.bp = icmp sgt i32 %i.bo, 1
  %i.bq = mul i64 %i.s, %i.t                      ; 12 uses
  %i.br = shl i32 %i.bo, 1                        ; 2 uses
  %i.bs = mul i32 %i.bo, 3                        ; 2 uses
  %i.bt = mul i64 %i.ak, %i.al                    ; 12 uses
  %i.bu = mul i64 %i.at, %i.au                    ; 2 uses
  %i.bv = mul i64 %i.bi, %i.bj                    ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 208 ; 2 uses
  %i.bx = sext i32 %i.bo to i64                   ; 8 uses
  %i.by = zext i32 %i.bs to i64                   ; 9 uses
  %i.bz = zext i32 %i.br to i64                   ; 9 uses
  %i.ca = zext i32 %i.bo to i64                   ; 18 uses
  %5 = sext i32 %i.br to i64                      ; 5 uses
  %6 = sext i32 %i.bs to i64                      ; 5 uses
  %i.cb = sext i32 %i.k to i64                    ; 7 uses
  %i.cc = add nsw i32 %i.j, 1
  %invariant.op = add nsw i64 %i.bx, -1
  %i.cd = mul i64 %i.bi, %i.bj
  %i.ce = mul i64 %i.ak, %i.al
  %i.cf = mul i64 %i.ai, %i.cb                    ; 4 uses
  %i.cg = add nsw i64 %6, %i.ca
  %i.ch = add nsw i64 %i.cg, -1
  %i.ci = mul i64 %i.ch, %i.al
  %i.cj = add i64 %i.cf, %i.ci
  %i.ck = mul i64 %i.ak, %i.cj
  %i.cl = mul i64 %i.ai, %i.ak
  %i.cm = mul i64 %i.ak, %i.al
  %i.cn = mul i64 %i.ak, %i.al
  %i.co = add nsw i64 %5, %i.ca
  %i.cp = add nsw i64 %i.co, -1
  %i.cq = mul i64 %i.cp, %i.al
  %i.cr = add i64 %i.cf, %i.cq
  %i.cs = mul i64 %i.ak, %i.cr
  %i.ct = mul i64 %i.ak, %i.al
  %i.cu = add nsw i64 %i.bx, %i.ca
  %i.cv = add nsw i64 %i.cu, -1
  %i.cw = mul i64 %i.cv, %i.al
  %i.cx = add i64 %i.cf, %i.cw
  %i.cy = mul i64 %i.ak, %i.cx
  %i.cz = mul i64 %i.ak, %i.al
  %i.da = add nsw i64 %i.ca, -1
  %i.db = mul i64 %i.da, %i.al
  %i.dc = add i64 %i.cf, %i.db
  %i.dd = mul i64 %i.ak, %i.dc
  %i.de = mul i64 %i.at, %i.au
  %i.df = mul i64 %i.s, %i.t
  %i.dg = mul i64 %i.q, %i.cb                     ; 4 uses
  %i.dh = add nsw i64 %6, %i.ca
  %i.di = add nsw i64 %i.dh, -1
  %i.dj = mul i64 %i.di, %i.t
  %i.dk = add i64 %i.dg, %i.dj
  %i.dl = mul i64 %i.s, %i.dk
  %i.dm = mul i64 %i.q, %i.s
  %i.dn = mul i64 %i.s, %i.t
  %i.do = mul i64 %i.s, %i.t
  %i.dp = add nsw i64 %5, %i.ca
  %i.dq = add nsw i64 %i.dp, -1
  %i.dr = mul i64 %i.dq, %i.t
  %i.ds = add i64 %i.dg, %i.dr
  %i.dt = mul i64 %i.s, %i.ds
  %i.du = mul i64 %i.s, %i.t
  %i.dv = add nsw i64 %i.bx, %i.ca
  %i.dw = add nsw i64 %i.dv, -1
  %i.dx = mul i64 %i.dw, %i.t
  %i.dy = add i64 %i.dg, %i.dx
  %i.dz = mul i64 %i.s, %i.dy
  %i.ea = mul i64 %i.s, %i.t
  %i.eb = add nsw i64 %i.ca, -1
  %i.ec = mul i64 %i.eb, %i.t
  %i.ed = add i64 %i.dg, %i.ec
  %i.ee = mul i64 %i.s, %i.ed
  %i.ef = mul i64 %i.bg, %i.cb
  %i.eg = add nsw i64 %i.bx, -2                   ; 4 uses
  %i.eh = lshr i64 %i.eg, 1                       ; 2 uses
  %i.ei = mul i64 %i.eh, %i.bj
  %i.ej = add i64 %i.ef, %i.ei
  %i.ek = mul i64 %i.bi, %i.ej
  %i.el = mul i64 %i.bg, %i.bi
  %i.em = mul i64 %i.bi, %i.bj
  %i.en = mul i64 %i.ai, %i.cb                    ; 15 uses
  %i.eo = add nuw nsw i64 %i.by, 1
  %i.ep = mul i64 %i.eo, %i.al
  %i.eq = add i64 %i.en, %i.ep
  %i.er = mul i64 %i.ak, %i.eq
  %i.es = mul i64 %i.ai, %i.ak
  %i.et = and i64 %i.eg, -2                       ; 5 uses
  %i.eu = add nsw i64 %i.et, %i.by
  %i.ev = add nsw i64 %i.eu, 1
  %i.ew = mul i64 %i.ev, %i.al
  %i.ex = add i64 %i.en, %i.ew
  %i.ey = mul i64 %i.ak, %i.ex
  %i.ez = mul i64 %i.ak, %i.al
  %i.fa = shl i64 %i.ez, 1
  %i.fb = or disjoint i64 %i.bz, 1
  %i.fc = mul nsw i64 %i.fb, %i.al
  %i.fd = add i64 %i.en, %i.fc
  %i.fe = mul i64 %i.ak, %i.fd
  %i.ff = add nsw i64 %i.eg, %i.bz
  %i.fg = or i64 %i.ff, 1
  %i.fh = mul i64 %i.fg, %i.al
  %i.fi = add i64 %i.en, %i.fh
  %i.fj = mul i64 %i.ak, %i.fi
  %i.fk = add nuw nsw i64 %i.ca, 1
  %i.fl = mul i64 %i.fk, %i.al
  %i.fm = add i64 %i.en, %i.fl
  %i.fn = mul i64 %i.ak, %i.fm
  %i.fo = add nsw i64 %i.et, %i.ca
  %i.fp = add nsw i64 %i.fo, 1
  %i.fq = mul i64 %i.fp, %i.al
  %i.fr = add i64 %i.en, %i.fq
  %i.fs = mul i64 %i.ak, %i.fr
  %i.ft = add i64 %i.en, %i.al
  %i.fu = mul i64 %i.ak, %i.ft
  %i.fv = or i64 %i.eg, 1
  %i.fw = mul i64 %i.fv, %i.al
  %i.fx = add i64 %i.en, %i.fw
  %i.fy = mul i64 %i.ak, %i.fx
  %i.fz = mul nsw i64 %i.al, %i.by
  %i.ga = add i64 %i.en, %i.fz
  %i.gb = mul i64 %i.ak, %i.ga
  %i.gc = add nsw i64 %i.et, %i.by
  %i.gd = mul i64 %i.gc, %i.al
  %i.ge = add i64 %i.en, %i.gd
  %i.gf = mul i64 %i.ak, %i.ge
  %i.gg = mul nsw i64 %i.al, %i.bz
  %i.gh = add i64 %i.en, %i.gg
  %i.gi = mul i64 %i.ak, %i.gh
  %i.gj = add nsw i64 %i.et, %i.bz
  %i.gk = mul i64 %i.gj, %i.al
  %i.gl = add i64 %i.en, %i.gk
  %i.gm = mul i64 %i.ak, %i.gl
  %i.gn = mul nsw i64 %i.al, %i.ca
  %i.go = add i64 %i.en, %i.gn
  %i.gp = mul i64 %i.ak, %i.go
  %i.gq = add nsw i64 %i.et, %i.ca
  %i.gr = mul i64 %i.gq, %i.al
  %i.gs = add i64 %i.en, %i.gr
  %i.gt = mul i64 %i.ak, %i.gs
  %i.gu = mul i64 %i.eh, %i.al
  %i.gv = shl i64 %i.gu, 1
  %i.gw = add i64 %i.gv, %i.en
  %i.gx = mul i64 %i.ak, %i.gw
  %i.gy = mul i64 %i.ar, %i.cb
  %i.gz = add nsw i64 %i.bx, -2                   ; 4 uses
  %i.ha = lshr i64 %i.gz, 1                       ; 2 uses
  %i.hb = mul i64 %i.ha, %i.au
  %i.hc = add i64 %i.gy, %i.hb
  %i.hd = mul i64 %i.at, %i.hc
  %i.he = mul i64 %i.ar, %i.at
  %i.hf = mul i64 %i.at, %i.au
  %i.hg = mul i64 %i.q, %i.cb                     ; 15 uses
  %i.hh = add nuw nsw i64 %i.by, 1
  %i.hi = mul i64 %i.hh, %i.t
  %i.hj = add i64 %i.hg, %i.hi
  %i.hk = mul i64 %i.s, %i.hj
  %i.hl = mul i64 %i.q, %i.s
  %i.hm = and i64 %i.gz, -2                       ; 5 uses
  %i.hn = add nsw i64 %i.hm, %i.by
  %i.ho = add nsw i64 %i.hn, 1
  %i.hp = mul i64 %i.ho, %i.t
  %i.hq = add i64 %i.hg, %i.hp
  %i.hr = mul i64 %i.s, %i.hq
  %i.hs = mul i64 %i.s, %i.t
  %i.ht = shl i64 %i.hs, 1
  %i.hu = or disjoint i64 %i.bz, 1
  %i.hv = mul nsw i64 %i.hu, %i.t
  %i.hw = add i64 %i.hg, %i.hv
  %i.hx = mul i64 %i.s, %i.hw
  %i.hy = add nsw i64 %i.gz, %i.bz
  %i.hz = or i64 %i.hy, 1
  %i.ia = mul i64 %i.hz, %i.t
  %i.ib = add i64 %i.hg, %i.ia
  %i.ic = mul i64 %i.s, %i.ib
  %i.id = add nuw nsw i64 %i.ca, 1
  %i.ie = mul i64 %i.id, %i.t
  %i.if = add i64 %i.hg, %i.ie
  %i.ig = mul i64 %i.s, %i.if
  %i.ih = add nsw i64 %i.hm, %i.ca
  %i.ii = add nsw i64 %i.ih, 1
  %i.ij = mul i64 %i.ii, %i.t
  %i.ik = add i64 %i.hg, %i.ij
  %i.il = mul i64 %i.s, %i.ik
  %i.im = add i64 %i.hg, %i.t
  %i.in = mul i64 %i.s, %i.im
  %i.io = or i64 %i.gz, 1
  %i.ip = mul i64 %i.io, %i.t
  %i.iq = add i64 %i.hg, %i.ip
  %i.ir = mul i64 %i.s, %i.iq
  %i.is = mul nsw i64 %i.t, %i.by
  %i.it = add i64 %i.hg, %i.is
  %i.iu = mul i64 %i.s, %i.it
  %i.iv = add nsw i64 %i.hm, %i.by
  %i.iw = mul i64 %i.iv, %i.t
  %i.ix = add i64 %i.hg, %i.iw
  %i.iy = mul i64 %i.s, %i.ix
  %i.iz = mul nsw i64 %i.t, %i.bz
  %i.ja = add i64 %i.hg, %i.iz
  %i.jb = mul i64 %i.s, %i.ja
  %i.jc = add nsw i64 %i.hm, %i.bz
  %i.jd = mul i64 %i.jc, %i.t
  %i.je = add i64 %i.hg, %i.jd
  %i.jf = mul i64 %i.s, %i.je
  %i.jg = mul nsw i64 %i.t, %i.ca
  %i.jh = add i64 %i.hg, %i.jg
  %i.ji = mul i64 %i.s, %i.jh
  %i.jj = add nsw i64 %i.hm, %i.ca
  %i.jk = mul i64 %i.jj, %i.t
  %i.jl = add i64 %i.hg, %i.jk
  %i.jm = mul i64 %i.s, %i.jl
  %i.jn = mul i64 %i.ha, %i.t
  %i.jo = shl i64 %i.jn, 1
  %i.jp = add i64 %i.jo, %i.hg
  %i.jq = mul i64 %i.s, %i.jp
  %i.jr = getelementptr i8, ptr %i.o, i64 %i.hk
  %i.js = getelementptr i8, ptr %i.o, i64 %i.hx
  %i.jt = getelementptr i8, ptr %i.o, i64 %i.ig
  %i.ju = getelementptr i8, ptr %i.o, i64 %i.in
  %i.jv = getelementptr i8, ptr %i.o, i64 %i.iu
  %i.jw = getelementptr i8, ptr %i.o, i64 %i.jb
  %i.jx = getelementptr i8, ptr %i.o, i64 %i.ji
  %i.jy = getelementptr i8, ptr %i.ag, i64 %i.er
  %i.jz = getelementptr i8, ptr %i.ag, i64 %i.fe
  %i.ka = getelementptr i8, ptr %i.ag, i64 %i.fn
  %i.kb = getelementptr i8, ptr %i.ag, i64 %i.fu
  %i.kc = getelementptr i8, ptr %i.ag, i64 %i.gb
  %i.kd = getelementptr i8, ptr %i.ag, i64 %i.gi
  %i.ke = getelementptr i8, ptr %i.ag, i64 %i.gp
  %i.kf = getelementptr i8, ptr %i.o, i64 %i.dl
  %i.kg = getelementptr i8, ptr %i.o, i64 %i.dt
  %i.kh = getelementptr i8, ptr %i.o, i64 %i.dz
  %i.ki = getelementptr i8, ptr %i.o, i64 %i.ee
  %i.kj = getelementptr i8, ptr %i.ag, i64 %i.ck
  %i.kk = getelementptr i8, ptr %i.ag, i64 %i.cs
  %i.kl = getelementptr i8, ptr %i.ag, i64 %i.cy
  %i.km = getelementptr i8, ptr %i.ag, i64 %i.dd
  %i.kn = getelementptr i8, ptr %i.ag, i64 %i.gx
  %i.ko = getelementptr i8, ptr %i.ag, i64 %i.gt
  %i.kp = getelementptr i8, ptr %i.ag, i64 %i.gm
  %i.kq = getelementptr i8, ptr %i.ag, i64 %i.gf
  %i.kr = getelementptr i8, ptr %i.ag, i64 %i.fy
  %i.ks = getelementptr i8, ptr %i.ag, i64 %i.fs
  %i.kt = getelementptr i8, ptr %i.ag, i64 %i.fj
  %i.ku = getelementptr i8, ptr %i.ag, i64 %i.ey
  %i.kv = getelementptr i8, ptr %i.be, i64 %i.ek
  %i.kw = getelementptr i8, ptr %i.o, i64 %i.jq
  %i.kx = getelementptr i8, ptr %i.o, i64 %i.jm
  %i.ky = getelementptr i8, ptr %i.o, i64 %i.jf
  %i.kz = getelementptr i8, ptr %i.o, i64 %i.iy
  %i.la = getelementptr i8, ptr %i.o, i64 %i.ir
  %i.lb = getelementptr i8, ptr %i.o, i64 %i.il
  %i.lc = getelementptr i8, ptr %i.o, i64 %i.ic
  %i.ld = getelementptr i8, ptr %i.o, i64 %i.hr
  %i.le = getelementptr i8, ptr %i.ap, i64 %i.hd
  %i.lf = or i64 %i.ht, %i.hf
  %i.lg = icmp slt i64 %i.lf, 0
  %i.lh = or i64 %i.fa, %i.em
  %i.li = icmp slt i64 %i.lh, 0
  %stride.check515 = icmp slt i64 %i.dn, 0
  %stride.check477 = icmp slt i64 %i.cm, 0
  br label %.noexc231

.noexc231:                                        ; preds = %.noexc231.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar461 = phi i64 [ 0, %.noexc231.lr.ph ], [ %indvar.next462, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %indvars.iv448 = phi i64 [ %i.cb, %.noexc231.lr.ph ], [ %indvars.iv.next449, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.lj = mul i64 %i.hl, %indvar461               ; 15 uses
  %scevgep641 = getelementptr i8, ptr %i.jr, i64 %i.lj
  %scevgep644 = getelementptr i8, ptr %i.js, i64 %i.lj
  %scevgep647 = getelementptr i8, ptr %i.jt, i64 %i.lj
  %scevgep650 = getelementptr i8, ptr %i.ju, i64 %i.lj
  %scevgep653 = getelementptr i8, ptr %i.jv, i64 %i.lj
  %scevgep656 = getelementptr i8, ptr %i.jw, i64 %i.lj
  %scevgep659 = getelementptr i8, ptr %i.jx, i64 %i.lj
  %i.lk = mul i64 %i.es, %indvar461               ; 15 uses
  %scevgep547 = getelementptr i8, ptr %i.jy, i64 %i.lk
  %scevgep550 = getelementptr i8, ptr %i.jz, i64 %i.lk
  %scevgep553 = getelementptr i8, ptr %i.ka, i64 %i.lk
  %scevgep556 = getelementptr i8, ptr %i.kb, i64 %i.lk
  %scevgep559 = getelementptr i8, ptr %i.kc, i64 %i.lk
  %scevgep562 = getelementptr i8, ptr %i.kd, i64 %i.lk
  %scevgep565 = getelementptr i8, ptr %i.ke, i64 %i.lk
  %i.ll = mul i64 %i.dm, %indvar461               ; 4 uses
  %scevgep497 = getelementptr i8, ptr %i.kf, i64 %i.ll
  %scevgep500 = getelementptr i8, ptr %i.kg, i64 %i.ll
  %scevgep503 = getelementptr i8, ptr %i.kh, i64 %i.ll
  %scevgep506 = getelementptr i8, ptr %i.ki, i64 %i.ll
  %i.lm = mul i64 %i.cl, %indvar461               ; 4 uses
  %scevgep463 = getelementptr i8, ptr %i.kj, i64 %i.lm
  %scevgep466 = getelementptr i8, ptr %i.kk, i64 %i.lm
  %scevgep469 = getelementptr i8, ptr %i.kl, i64 %i.lm
  %scevgep472 = getelementptr i8, ptr %i.km, i64 %i.lm
  %.reass = mul i64 %factor.op.mul, %indvars.iv448
  %i.ln = getelementptr i8, ptr %i.o, i64 %.reass ; 17 uses
  %.reass414 = mul i64 %factor.op.mul413, %indvars.iv448
  %i.lo = getelementptr inbounds nuw i8, ptr %i.x, i64 %.reass414 ; 6 uses
  %.reass416 = mul i64 %factor.op.mul415, %indvars.iv448
  %i.lp = getelementptr i8, ptr %i.ag, i64 %.reass416 ; 17 uses
  %.reass418 = mul i64 %factor.op.mul417, %indvars.iv448
  %i.lq = getelementptr i8, ptr %i.ap, i64 %.reass418 ; 12 uses
  %.reass420 = mul i64 %factor.op.mul419, %indvars.iv448
  %i.lr = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.reass420 ; 2 uses
  %.reass422 = mul i64 %factor.op.mul421, %indvars.iv448
  %i.ls = getelementptr i8, ptr %i.be, i64 %.reass422 ; 12 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.bk ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.bl ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lo, i64 %i.bm ; 3 uses
  br i1 %i.bp, label %.lr.ph396, label %.preheader388

.lr.ph396:                                        ; preds = %.noexc231
  %scevgep568 = getelementptr i8, ptr %i.kn, i64 %i.lk
  %scevgep566 = getelementptr i8, ptr %i.ko, i64 %i.lk
  %scevgep563 = getelementptr i8, ptr %i.kp, i64 %i.lk
  %scevgep560 = getelementptr i8, ptr %i.kq, i64 %i.lk
  %scevgep557 = getelementptr i8, ptr %i.kr, i64 %i.lk
  %scevgep554 = getelementptr i8, ptr %i.ks, i64 %i.lk
  %scevgep551 = getelementptr i8, ptr %i.kt, i64 %i.lk
  %scevgep548 = getelementptr i8, ptr %i.ku, i64 %i.lk
  %i.lw = mul i64 %i.el, %indvar461
  %scevgep545 = getelementptr i8, ptr %i.kv, i64 %i.lw
  %scevgep662 = getelementptr i8, ptr %i.kw, i64 %i.lj
  %scevgep660 = getelementptr i8, ptr %i.kx, i64 %i.lj
  %scevgep657 = getelementptr i8, ptr %i.ky, i64 %i.lj
  %scevgep654 = getelementptr i8, ptr %i.kz, i64 %i.lj
  %scevgep651 = getelementptr i8, ptr %i.la, i64 %i.lj
  %scevgep648 = getelementptr i8, ptr %i.lb, i64 %i.lj
  %scevgep645 = getelementptr i8, ptr %i.lc, i64 %i.lj
  %scevgep642 = getelementptr i8, ptr %i.ld, i64 %i.lj
  %i.lx = mul i64 %i.he, %indvar461
  %scevgep639 = getelementptr i8, ptr %i.le, i64 %i.lx
  %i.ly = load i32, ptr %4, align 4, !tbaa !38    ; 3 uses
  %i.lz = icmp sgt i32 %i.ly, 0
  %i.ma = load i32, ptr %i.bw, align 8, !tbaa !41 ; 3 uses
  %i.mb = icmp sgt i32 %i.ma, 0
  %wide.trip.count = zext i32 %i.ly to i64        ; 5 uses
  %wide.trip.count428 = zext i32 %i.ma to i64     ; 5 uses
  %i.mc = shl nuw nsw i64 %wide.trip.count428, 5
  %scevgep546 = getelementptr i8, ptr %scevgep545, i64 %i.mc ; 8 uses
  %i.md = shl nuw nsw i64 %wide.trip.count428, 2  ; 8 uses
  %scevgep549 = getelementptr i8, ptr %scevgep548, i64 %i.md
  %scevgep552 = getelementptr i8, ptr %scevgep551, i64 %i.md
  %scevgep555 = getelementptr i8, ptr %scevgep554, i64 %i.md
  %scevgep558 = getelementptr i8, ptr %scevgep557, i64 %i.md
  %scevgep561 = getelementptr i8, ptr %scevgep560, i64 %i.md
  %scevgep564 = getelementptr i8, ptr %scevgep563, i64 %i.md
  %scevgep567 = getelementptr i8, ptr %scevgep566, i64 %i.md
  %scevgep569 = getelementptr i8, ptr %scevgep568, i64 %i.md
  %i.me = shl nuw nsw i64 %wide.trip.count, 5
  %scevgep640 = getelementptr i8, ptr %scevgep639, i64 %i.me ; 8 uses
  %i.mf = shl nuw nsw i64 %wide.trip.count, 2     ; 8 uses
  %scevgep643 = getelementptr i8, ptr %scevgep642, i64 %i.mf
  %scevgep646 = getelementptr i8, ptr %scevgep645, i64 %i.mf
  %scevgep649 = getelementptr i8, ptr %scevgep648, i64 %i.mf
  %scevgep652 = getelementptr i8, ptr %scevgep651, i64 %i.mf
  %scevgep655 = getelementptr i8, ptr %scevgep654, i64 %i.mf
  %scevgep658 = getelementptr i8, ptr %scevgep657, i64 %i.mf
  %scevgep661 = getelementptr i8, ptr %scevgep660, i64 %i.mf
  %scevgep663 = getelementptr i8, ptr %scevgep662, i64 %i.mf
  %min.iters.check712 = icmp ult i32 %i.ly, 24
  %bound0664 = icmp ult ptr %i.lq, %scevgep643
  %bound1665 = icmp ult ptr %scevgep641, %scevgep640
  %found.conflict666 = and i1 %bound0664, %bound1665
  %bound0669 = icmp ult ptr %i.lq, %scevgep646
  %bound1670 = icmp ult ptr %scevgep644, %scevgep640
  %found.conflict671 = and i1 %bound0669, %bound1670
  %bound0675 = icmp ult ptr %i.lq, %scevgep649
  %bound1676 = icmp ult ptr %scevgep647, %scevgep640
  %found.conflict677 = and i1 %bound0675, %bound1676
  %bound0681 = icmp ult ptr %i.lq, %scevgep652
  %bound1682 = icmp ult ptr %scevgep650, %scevgep640
  %found.conflict683 = and i1 %bound0681, %bound1682
  %bound0687 = icmp ult ptr %i.lq, %scevgep655
  %bound1688 = icmp ult ptr %scevgep653, %scevgep640
  %found.conflict689 = and i1 %bound0687, %bound1688
  %bound0693 = icmp ult ptr %i.lq, %scevgep658
  %bound1694 = icmp ult ptr %scevgep656, %scevgep640
  %found.conflict695 = and i1 %bound0693, %bound1694
  %bound0699 = icmp ult ptr %i.lq, %scevgep661
  %bound1700 = icmp ult ptr %scevgep659, %scevgep640
  %found.conflict701 = and i1 %bound0699, %bound1700
  %bound0705 = icmp ult ptr %i.lq, %scevgep663
  %bound1706 = icmp ult ptr %i.ln, %scevgep640
  %found.conflict707 = and i1 %bound0705, %bound1706
  %op.rdx739 = or i1 %i.lg, %found.conflict666
  %op.rdx740 = or i1 %found.conflict671, %found.conflict677
  %op.rdx741 = or i1 %found.conflict683, %found.conflict689
  %op.rdx742 = or i1 %found.conflict695, %found.conflict701
  %op.rdx743 = or i1 %op.rdx739, %op.rdx740
  %op.rdx744 = or i1 %op.rdx741, %op.rdx742
  %op.rdx745 = or i1 %op.rdx743, %op.rdx744
  %op.rdx746 = or i1 %op.rdx745, %found.conflict707
  %n.vec714 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %i.mg = shl nuw nsw i64 %n.vec714, 5
  %cmp.n729 = icmp eq i64 %n.vec714, %wide.trip.count
  %min.iters.check618 = icmp ult i32 %i.ma, 24
  %bound0570 = icmp ult ptr %i.ls, %scevgep549
  %bound1571 = icmp ult ptr %scevgep547, %scevgep546
  %found.conflict572 = and i1 %bound0570, %bound1571
  %bound0575 = icmp ult ptr %i.ls, %scevgep552
  %bound1576 = icmp ult ptr %scevgep550, %scevgep546
  %found.conflict577 = and i1 %bound0575, %bound1576
  %bound0581 = icmp ult ptr %i.ls, %scevgep555
  %bound1582 = icmp ult ptr %scevgep553, %scevgep546
  %found.conflict583 = and i1 %bound0581, %bound1582
  %bound0587 = icmp ult ptr %i.ls, %scevgep558
  %bound1588 = icmp ult ptr %scevgep556, %scevgep546
  %found.conflict589 = and i1 %bound0587, %bound1588
  %bound0593 = icmp ult ptr %i.ls, %scevgep561
  %bound1594 = icmp ult ptr %scevgep559, %scevgep546
  %found.conflict595 = and i1 %bound0593, %bound1594
  %bound0599 = icmp ult ptr %i.ls, %scevgep564
  %bound1600 = icmp ult ptr %scevgep562, %scevgep546
  %found.conflict601 = and i1 %bound0599, %bound1600
  %bound0605 = icmp ult ptr %i.ls, %scevgep567
  %bound1606 = icmp ult ptr %scevgep565, %scevgep546
  %found.conflict607 = and i1 %bound0605, %bound1606
  %bound0611 = icmp ult ptr %i.ls, %scevgep569
  %bound1612 = icmp ult ptr %i.lp, %scevgep546
  %found.conflict613 = and i1 %bound0611, %bound1612
  %op.rdx = or i1 %i.li, %found.conflict572
  %op.rdx732 = or i1 %found.conflict577, %found.conflict583
  %op.rdx733 = or i1 %found.conflict589, %found.conflict595
  %op.rdx734 = or i1 %found.conflict601, %found.conflict607
  %op.rdx735 = or i1 %op.rdx, %op.rdx732
  %op.rdx736 = or i1 %op.rdx733, %op.rdx734
  %op.rdx737 = or i1 %op.rdx735, %op.rdx736
  %op.rdx738 = or i1 %op.rdx737, %found.conflict613
  %n.vec620 = and i64 %wide.trip.count428, 2147483640 ; 4 uses
  %i.mh = shl nuw nsw i64 %n.vec620, 5
  %cmp.n635 = icmp eq i64 %n.vec620, %wide.trip.count428
  br label %bb.c

.preheader388.loopexit:                           ; preds = %._crit_edge
  %i.mi = trunc nuw nsw i64 %indvars.iv.next431 to i32
  br label %.preheader388

.preheader388:                                    ; preds = %.preheader388.loopexit, %.noexc231
  %.0182.lcssa = phi ptr [ %i.lr, %.noexc231 ], [ %i.oj, %.preheader388.loopexit ]
  %.0181.lcssa = phi i32 [ 0, %.noexc231 ], [ %i.mi, %.preheader388.loopexit ] ; 6 uses
  %i.mj = icmp slt i32 %.0181.lcssa, %i.bo
  br i1 %i.mj, label %.lr.ph409, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph409:                                        ; preds = %.preheader388
  %i.mk = load i32, ptr %4, align 4, !tbaa !38    ; 3 uses
  %i.ml = icmp sgt i32 %i.mk, 0
  %i.mm = load i32, ptr %i.bw, align 8, !tbaa !41 ; 3 uses
  %i.mn = icmp sgt i32 %i.mm, 0
  %i.mo = zext i32 %.0181.lcssa to i64            ; 9 uses
  %wide.trip.count436 = zext i32 %i.mk to i64     ; 7 uses
  %wide.trip.count441 = zext i32 %i.mm to i64     ; 7 uses
  %i.mp = shl nuw nsw i64 %wide.trip.count441, 4
  %scevgep458 = getelementptr i8, ptr %i.ls, i64 %i.mp
  %i.mq = add nsw i64 %6, %i.mo
  %i.mr = mul i64 %i.ce, %i.mq
  %scevgep460 = getelementptr i8, ptr %i.lp, i64 %i.mr
  %i.ms = shl nuw nsw i64 %wide.trip.count441, 2  ; 4 uses
  %scevgep464 = getelementptr i8, ptr %scevgep463, i64 %i.ms
  %i.mt = add nsw i64 %5, %i.mo
  %i.mu = mul i64 %i.cn, %i.mt
  %scevgep465 = getelementptr i8, ptr %i.lp, i64 %i.mu
  %scevgep467 = getelementptr i8, ptr %scevgep466, i64 %i.ms
  %i.mv = add nsw i64 %i.bx, %i.mo
  %i.mw = mul i64 %i.ct, %i.mv
  %scevgep468 = getelementptr i8, ptr %i.lp, i64 %i.mw
  %scevgep470 = getelementptr i8, ptr %scevgep469, i64 %i.ms
  %i.mx = mul i64 %i.cz, %i.mo
  %scevgep471 = getelementptr i8, ptr %i.lp, i64 %i.mx
  %scevgep473 = getelementptr i8, ptr %scevgep472, i64 %i.ms
  %i.my = shl nuw nsw i64 %wide.trip.count436, 4
  %scevgep494 = getelementptr i8, ptr %i.lq, i64 %i.my
  %i.mz = add nsw i64 %6, %i.mo
  %i.na = mul i64 %i.df, %i.mz
  %scevgep496 = getelementptr i8, ptr %i.ln, i64 %i.na
  %i.nb = shl nuw nsw i64 %wide.trip.count436, 2  ; 4 uses
  %scevgep498 = getelementptr i8, ptr %scevgep497, i64 %i.nb
  %i.nc = add nsw i64 %5, %i.mo
  %i.nd = mul i64 %i.do, %i.nc
  %scevgep499 = getelementptr i8, ptr %i.ln, i64 %i.nd
  %scevgep501 = getelementptr i8, ptr %scevgep500, i64 %i.nb
  %i.ne = add nsw i64 %i.bx, %i.mo
  %i.nf = mul i64 %i.du, %i.ne
  %scevgep502 = getelementptr i8, ptr %i.ln, i64 %i.nf
  %scevgep504 = getelementptr i8, ptr %scevgep503, i64 %i.nb
  %i.ng = mul i64 %i.ea, %i.mo
  %scevgep505 = getelementptr i8, ptr %i.ln, i64 %i.ng
  %scevgep507 = getelementptr i8, ptr %scevgep506, i64 %i.nb
  %min.iters.check528 = icmp ult i32 %i.mk, 16
  %n.vec530 = and i64 %wide.trip.count436, 2147483640 ; 4 uses
  %i.nh = shl nuw nsw i64 %n.vec530, 4
  %cmp.n541 = icmp eq i64 %n.vec530, %wide.trip.count436
  %xtraiter = and i64 %wide.trip.count436, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ni = add nsw i64 %wide.trip.count436, -1
  %min.iters.check = icmp ult i32 %i.mm, 16
  %n.vec = and i64 %wide.trip.count441, 2147483640 ; 4 uses
  %i.nj = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count441
  %xtraiter751 = and i64 %wide.trip.count441, 1
  %lcmp.mod752.not = icmp eq i64 %xtraiter751, 0
  %i.nk = add nsw i64 %wide.trip.count441, -1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph396, %._crit_edge
  %indvars.iv430 = phi i64 [ 0, %.lr.ph396 ], [ %indvars.iv.next431, %._crit_edge ] ; 12 uses
  %.0182394 = phi ptr [ %i.lr, %.lr.ph396 ], [ %i.oj, %._crit_edge ] ; 9 uses
  %i.nl = or disjoint i64 %indvars.iv430, 1       ; 6 uses
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %indvars.iv430
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !56
  store float %i.nn, ptr %.0182394, align 4, !tbaa !56
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv430
  %i.np = load float, ptr %i.no, align 4, !tbaa !56
  %i.nq = getelementptr inbounds nuw i8, ptr %.0182394, i64 4
  store float %i.np, ptr %i.nq, align 4, !tbaa !56
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv430
  %i.ns = load float, ptr %i.nr, align 4, !tbaa !56
  %i.nt = getelementptr inbounds nuw i8, ptr %.0182394, i64 8
  store float %i.ns, ptr %i.nt, align 4, !tbaa !56
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv430
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !56
  %i.nw = getelementptr inbounds nuw i8, ptr %.0182394, i64 12
  store float %i.nv, ptr %i.nw, align 4, !tbaa !56
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.nl
  %i.ny = load float, ptr %i.nx, align 4, !tbaa !56
  %i.nz = getelementptr inbounds nuw i8, ptr %.0182394, i64 16
  store float %i.ny, ptr %i.nz, align 4, !tbaa !56
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.nl
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !56
  %i.oc = getelementptr inbounds nuw i8, ptr %.0182394, i64 20
  store float %i.ob, ptr %i.oc, align 4, !tbaa !56
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %i.nl
  %i.oe = load float, ptr %i.od, align 4, !tbaa !56
  %i.of = getelementptr inbounds nuw i8, ptr %.0182394, i64 24
  store float %i.oe, ptr %i.of, align 4, !tbaa !56
  %i.og = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.nl
  %i.oh = load float, ptr %i.og, align 4, !tbaa !56
  %i.oi = getelementptr inbounds nuw i8, ptr %.0182394, i64 28
  store float %i.oh, ptr %i.oi, align 4, !tbaa !56
  %i.oj = getelementptr inbounds nuw i8, ptr %.0182394, i64 32 ; 2 uses
  %i.ok = mul i64 %i.bq, %indvars.iv430
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.ok ; 2 uses
  %i.om = add nuw nsw i64 %indvars.iv430, %i.ca   ; 3 uses
  %i.on = mul i64 %i.bq, %i.om
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.on ; 2 uses
  %i.op = add nuw nsw i64 %indvars.iv430, %i.bz   ; 3 uses
  %i.oq = mul i64 %i.bq, %i.op
  %i.or = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.oq ; 2 uses
  %i.os = add nuw nsw i64 %indvars.iv430, %i.by   ; 3 uses
  %i.ot = mul i64 %i.bq, %i.os
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.ot ; 2 uses
  %i.ov = mul i64 %i.bq, %i.nl
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.ov ; 2 uses
  %i.ox = add nuw nsw i64 %i.om, 1                ; 2 uses
  %i.oy = mul i64 %i.bq, %i.ox
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.oy ; 2 uses
  %i.pa = or disjoint i64 %i.op, 1                ; 2 uses
  %i.pb = mul i64 %i.bq, %i.pa
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.pb ; 2 uses
  %i.pd = add nuw nsw i64 %i.os, 1                ; 2 uses
  %i.pe = mul i64 %i.bq, %i.pd
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.pe ; 2 uses
  %i.pg = mul i64 %i.bt, %indvars.iv430
  %i.ph = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.pg ; 2 uses
  %i.pi = mul i64 %i.bt, %i.om
  %i.pj = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.pi ; 2 uses
  %i.pk = mul i64 %i.bt, %i.op
  %i.pl = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.pk ; 2 uses
  %i.pm = mul i64 %i.bt, %i.os
  %i.pn = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.pm ; 2 uses
  %i.po = mul i64 %i.bt, %i.nl
  %i.pp = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.po ; 2 uses
  %i.pq = mul i64 %i.bt, %i.ox
  %i.pr = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.pq ; 2 uses
  %i.ps = mul i64 %i.bt, %i.pa
  %i.pt = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.ps ; 2 uses
  %i.pu = mul i64 %i.bt, %i.pd
  %i.pv = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.pu ; 2 uses
  %i.pw = lshr exact i64 %indvars.iv430, 1        ; 2 uses
  %i.px = mul i64 %i.bv, %i.pw
  %i.py = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.px ; 3 uses
  br i1 %i.lz, label %.lr.ph.preheader, label %.preheader387

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.pz = mul i64 %i.bu, %i.pw
  %i.qa = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.pz ; 3 uses
  %brmerge = select i1 %min.iters.check712, i1 true, i1 %op.rdx746
  br i1 %brmerge, label %.lr.ph.preheader750, label %vector.ph713

vector.ph713:                                     ; preds = %.lr.ph.preheader
  %i.qb = getelementptr i8, ptr %i.qa, i64 %i.mg
  br label %vector.body715

vector.body715:                                   ; preds = %vector.body715, %vector.ph713
  %index716 = phi i64 [ 0, %vector.ph713 ], [ %index.next727, %vector.body715 ] ; 10 uses
  %i.qc = shl i64 %index716, 5
  %next.gep717 = getelementptr i8, ptr %i.qa, i64 %i.qc
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %index716
  %wide.load718 = load <8 x float>, ptr %i.qd, align 4, !tbaa !56, !alias.scope !170
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %index716
  %wide.load719 = load <8 x float>, ptr %i.qe, align 4, !tbaa !56, !alias.scope !173
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %index716
  %wide.load720 = load <8 x float>, ptr %i.qf, align 4, !tbaa !56, !alias.scope !175
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %index716
  %wide.load721 = load <8 x float>, ptr %i.qg, align 4, !tbaa !56, !alias.scope !177
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %index716
  %wide.load722 = load <8 x float>, ptr %i.qh, align 4, !tbaa !56, !alias.scope !179
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %index716
  %wide.load723 = load <8 x float>, ptr %i.qi, align 4, !tbaa !56, !alias.scope !181
  %i.qj = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %index716
  %wide.load724 = load <8 x float>, ptr %i.qj, align 4, !tbaa !56, !alias.scope !183
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %index716
  %wide.load725 = load <8 x float>, ptr %i.qk, align 4, !tbaa !56, !alias.scope !185
  %i.ql = shufflevector <8 x float> %wide.load718, <8 x float> %wide.load719, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qm = shufflevector <8 x float> %wide.load720, <8 x float> %wide.load721, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qn = shufflevector <8 x float> %wide.load722, <8 x float> %wide.load723, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qo = shufflevector <8 x float> %wide.load724, <8 x float> %wide.load725, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qp = shufflevector <16 x float> %i.ql, <16 x float> %i.qm, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.qq = shufflevector <16 x float> %i.qn, <16 x float> %i.qo, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec726 = shufflevector <32 x float> %i.qp, <32 x float> %i.qq, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec726, ptr %next.gep717, align 4, !tbaa !56, !alias.scope !187, !noalias !189
  %index.next727 = add nuw i64 %index716, 8       ; 2 uses
  %i.qr = icmp eq i64 %index.next727, %n.vec714
  br i1 %i.qr, label %middle.block728, label %vector.body715, !llvm.loop !190

middle.block728:                                  ; preds = %vector.body715
  br i1 %cmp.n729, label %.preheader387, label %.lr.ph.preheader750

.lr.ph.preheader750:                              ; preds = %.lr.ph.preheader, %middle.block728
  %indvars.iv.ph = phi i64 [ %n.vec714, %middle.block728 ], [ 0, %.lr.ph.preheader ]
  %.0180389.ph = phi ptr [ %i.qb, %middle.block728 ], [ %i.qa, %.lr.ph.preheader ]
  br label %.lr.ph

.preheader387:                                    ; preds = %.lr.ph, %middle.block728, %bb.c
  br i1 %i.mb, label %.lr.ph393.preheader, label %._crit_edge

.lr.ph393.preheader:                              ; preds = %.preheader387
  %brmerge753 = select i1 %min.iters.check618, i1 true, i1 %op.rdx738
  br i1 %brmerge753, label %.lr.ph393.preheader749, label %vector.ph619

vector.ph619:                                     ; preds = %.lr.ph393.preheader
  %i.qs = getelementptr i8, ptr %i.py, i64 %i.mh
  br label %vector.body621

vector.body621:                                   ; preds = %vector.body621, %vector.ph619
  %index622 = phi i64 [ 0, %vector.ph619 ], [ %index.next633, %vector.body621 ] ; 10 uses
  %i.qt = shl i64 %index622, 5
  %next.gep623 = getelementptr i8, ptr %i.py, i64 %i.qt
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %index622
  %wide.load624 = load <8 x float>, ptr %i.qu, align 4, !tbaa !56, !alias.scope !193
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %index622
  %wide.load625 = load <8 x float>, ptr %i.qv, align 4, !tbaa !56, !alias.scope !196
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %index622
  %wide.load626 = load <8 x float>, ptr %i.qw, align 4, !tbaa !56, !alias.scope !198
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %index622
  %wide.load627 = load <8 x float>, ptr %i.qx, align 4, !tbaa !56, !alias.scope !200
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %index622
  %wide.load628 = load <8 x float>, ptr %i.qy, align 4, !tbaa !56, !alias.scope !202
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %index622
  %wide.load629 = load <8 x float>, ptr %i.qz, align 4, !tbaa !56, !alias.scope !204
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %index622
  %wide.load630 = load <8 x float>, ptr %i.ra, align 4, !tbaa !56, !alias.scope !206
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %index622
  %wide.load631 = load <8 x float>, ptr %i.rb, align 4, !tbaa !56, !alias.scope !208
  %i.rc = shufflevector <8 x float> %wide.load624, <8 x float> %wide.load625, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rd = shufflevector <8 x float> %wide.load626, <8 x float> %wide.load627, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.re = shufflevector <8 x float> %wide.load628, <8 x float> %wide.load629, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rf = shufflevector <8 x float> %wide.load630, <8 x float> %wide.load631, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rg = shufflevector <16 x float> %i.rc, <16 x float> %i.rd, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.rh = shufflevector <16 x float> %i.re, <16 x float> %i.rf, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec632 = shufflevector <32 x float> %i.rg, <32 x float> %i.rh, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec632, ptr %next.gep623, align 4, !tbaa !56, !alias.scope !210, !noalias !212
  %index.next633 = add nuw i64 %index622, 8       ; 2 uses
  %i.ri = icmp eq i64 %index.next633, %n.vec620
  br i1 %i.ri, label %middle.block634, label %vector.body621, !llvm.loop !213

middle.block634:                                  ; preds = %vector.body621
  br i1 %cmp.n635, label %._crit_edge, label %.lr.ph393.preheader749

.lr.ph393.preheader749:                           ; preds = %.lr.ph393.preheader, %middle.block634
  %indvars.iv425.ph = phi i64 [ %n.vec620, %middle.block634 ], [ 0, %.lr.ph393.preheader ]
  %.0179391.ph = phi ptr [ %i.qs, %middle.block634 ], [ %i.py, %.lr.ph393.preheader ]
  br label %.lr.ph393

.lr.ph:                                           ; preds = %.lr.ph.preheader750, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader750 ] ; 9 uses
  %.0180389 = phi ptr [ %i.sg, %.lr.ph ], [ %.0180389.ph, %.lr.ph.preheader750 ] ; 9 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.ol, i64 %indvars.iv
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !56
  store float %i.rk, ptr %.0180389, align 4, !tbaa !56
  %i.rl = getelementptr inbounds nuw [4 x i8], ptr %i.oo, i64 %indvars.iv
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !56
  %i.rn = getelementptr inbounds nuw i8, ptr %.0180389, i64 4
  store float %i.rm, ptr %i.rn, align 4, !tbaa !56
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !56
  %i.rq = getelementptr inbounds nuw i8, ptr %.0180389, i64 8
  store float %i.rp, ptr %i.rq, align 4, !tbaa !56
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !56
  %i.rt = getelementptr inbounds nuw i8, ptr %.0180389, i64 12
  store float %i.rs, ptr %i.rt, align 4, !tbaa !56
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %i.ow, i64 %indvars.iv
  %i.rv = load float, ptr %i.ru, align 4, !tbaa !56
  %i.rw = getelementptr inbounds nuw i8, ptr %.0180389, i64 16
  store float %i.rv, ptr %i.rw, align 4, !tbaa !56
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.oz, i64 %indvars.iv
  %i.ry = load float, ptr %i.rx, align 4, !tbaa !56
  %i.rz = getelementptr inbounds nuw i8, ptr %.0180389, i64 20
  store float %i.ry, ptr %i.rz, align 4, !tbaa !56
  %i.sa = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %indvars.iv
  %i.sb = load float, ptr %i.sa, align 4, !tbaa !56
  %i.sc = getelementptr inbounds nuw i8, ptr %.0180389, i64 24
  store float %i.sb, ptr %i.sc, align 4, !tbaa !56
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %indvars.iv
  %i.se = load float, ptr %i.sd, align 4, !tbaa !56
  %i.sf = getelementptr inbounds nuw i8, ptr %.0180389, i64 28
  store float %i.se, ptr %i.sf, align 4, !tbaa !56
  %i.sg = getelementptr inbounds nuw i8, ptr %.0180389, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader387, label %.lr.ph, !llvm.loop !214

._crit_edge:                                      ; preds = %.lr.ph393, %middle.block634, %.preheader387
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 2 ; 3 uses
  %i.sh = icmp slt i64 %indvars.iv.next431, %invariant.op
  br i1 %i.sh, label %bb.c, label %.preheader388.loopexit, !llvm.loop !215

.lr.ph393:                                        ; preds = %.lr.ph393.preheader749, %.lr.ph393
  %indvars.iv425 = phi i64 [ %indvars.iv.next426, %.lr.ph393 ], [ %indvars.iv425.ph, %.lr.ph393.preheader749 ] ; 9 uses
  %.0179391 = phi ptr [ %i.tf, %.lr.ph393 ], [ %.0179391.ph, %.lr.ph393.preheader749 ] ; 9 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.ph, i64 %indvars.iv425
  %i.sj = load float, ptr %i.si, align 4, !tbaa !56
  store float %i.sj, ptr %.0179391, align 4, !tbaa !56
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.pj, i64 %indvars.iv425
  %i.sl = load float, ptr %i.sk, align 4, !tbaa !56
  %i.sm = getelementptr inbounds nuw i8, ptr %.0179391, i64 4
  store float %i.sl, ptr %i.sm, align 4, !tbaa !56
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %indvars.iv425
  %i.so = load float, ptr %i.sn, align 4, !tbaa !56
  %i.sp = getelementptr inbounds nuw i8, ptr %.0179391, i64 8
  store float %i.so, ptr %i.sp, align 4, !tbaa !56
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.pn, i64 %indvars.iv425
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !56
  %i.ss = getelementptr inbounds nuw i8, ptr %.0179391, i64 12
  store float %i.sr, ptr %i.ss, align 4, !tbaa !56
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.pp, i64 %indvars.iv425
  %i.su = load float, ptr %i.st, align 4, !tbaa !56
  %i.sv = getelementptr inbounds nuw i8, ptr %.0179391, i64 16
  store float %i.su, ptr %i.sv, align 4, !tbaa !56
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.pr, i64 %indvars.iv425
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !56
  %i.sy = getelementptr inbounds nuw i8, ptr %.0179391, i64 20
  store float %i.sx, ptr %i.sy, align 4, !tbaa !56
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.pt, i64 %indvars.iv425
  %i.ta = load float, ptr %i.sz, align 4, !tbaa !56
  %i.tb = getelementptr inbounds nuw i8, ptr %.0179391, i64 24
  store float %i.ta, ptr %i.tb, align 4, !tbaa !56
  %i.tc = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %indvars.iv425
  %i.td = load float, ptr %i.tc, align 4, !tbaa !56
  %i.te = getelementptr inbounds nuw i8, ptr %.0179391, i64 28
  store float %i.td, ptr %i.te, align 4, !tbaa !56
  %i.tf = getelementptr inbounds nuw i8, ptr %.0179391, i64 32
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1 ; 2 uses
  %exitcond429.not = icmp eq i64 %indvars.iv.next426, %wide.trip.count428
  br i1 %exitcond429.not, label %._crit_edge, label %.lr.ph393, !llvm.loop !216

bb.d:                                             ; preds = %.lr.ph409, %._crit_edge406
  %indvar = phi i32 [ 0, %.lr.ph409 ], [ %indvar.next, %._crit_edge406 ] ; 5 uses
  %indvars.iv443 = phi i64 [ %i.mo, %.lr.ph409 ], [ %indvars.iv.next444, %._crit_edge406 ] ; 11 uses
  %.1183407 = phi ptr [ %.0182.lcssa, %.lr.ph409 ], [ %i.uf, %._crit_edge406 ] ; 5 uses
  %i.tg = add i32 %.0181.lcssa, %indvar
  %i.th = lshr i32 %i.tg, 1
  %i.ti = sub i32 %.0181.lcssa, %indvar
  %i.tj = and i32 %i.ti, 1
  %i.tk = add nuw i32 %i.th, %i.tj
  %i.tl = zext i32 %i.tk to i64
  %i.tm = mul i64 %i.de, %i.tl                    ; 2 uses
  %scevgep493 = getelementptr i8, ptr %i.lq, i64 %i.tm ; 4 uses
  %scevgep495 = getelementptr i8, ptr %scevgep494, i64 %i.tm ; 4 uses
  %i.tn = add i32 %.0181.lcssa, %indvar
  %i.to = lshr i32 %i.tn, 1
  %i.tp = sub i32 %.0181.lcssa, %indvar
  %i.tq = and i32 %i.tp, 1
  %i.tr = add nuw i32 %i.to, %i.tq
  %i.ts = zext i32 %i.tr to i64
  %i.tt = mul i64 %i.cd, %i.ts                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ls, i64 %i.tt ; 4 uses
  %scevgep459 = getelementptr i8, ptr %scevgep458, i64 %i.tt ; 4 uses
  %i.tu = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %indvars.iv443
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !56
  store float %i.tv, ptr %.1183407, align 4, !tbaa !56
  %i.tw = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv443
  %i.tx = load float, ptr %i.tw, align 4, !tbaa !56
  %i.ty = getelementptr inbounds nuw i8, ptr %.1183407, i64 4
  store float %i.tx, ptr %i.ty, align 4, !tbaa !56
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.lu, i64 %indvars.iv443
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !56
  %i.ub = getelementptr inbounds nuw i8, ptr %.1183407, i64 8
  store float %i.ua, ptr %i.ub, align 4, !tbaa !56
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %indvars.iv443
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !56
  %i.ue = getelementptr inbounds nuw i8, ptr %.1183407, i64 12
  store float %i.ud, ptr %i.ue, align 4, !tbaa !56
  %i.uf = getelementptr inbounds nuw i8, ptr %.1183407, i64 16
  %i.ug = mul i64 %i.bq, %indvars.iv443
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.ug ; 4 uses
  %i.ui = add nsw i64 %indvars.iv443, %i.bx       ; 2 uses
  %i.uj = mul i64 %i.bq, %i.ui
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.uj ; 4 uses
  %i.ul = add nsw i64 %indvars.iv443, %5          ; 2 uses
  %i.um = mul i64 %i.bq, %i.ul
  %i.un = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.um ; 4 uses
  %i.uo = add nsw i64 %indvars.iv443, %6          ; 2 uses
  %i.up = mul i64 %i.bq, %i.uo
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.up ; 4 uses
  %i.ur = mul i64 %i.bt, %indvars.iv443
  %i.us = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.ur ; 4 uses
  %i.ut = mul i64 %i.bt, %i.ui
  %i.uu = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.ut ; 4 uses
  %i.uv = mul i64 %i.bt, %i.ul
  %i.uw = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.uv ; 4 uses
  %i.ux = mul i64 %i.bt, %i.uo
  %i.uy = getelementptr inbounds nuw i8, ptr %i.lp, i64 %i.ux ; 4 uses
  %i.uz = trunc nuw nsw i64 %indvars.iv443 to i32 ; 2 uses
  %i.va = lshr i32 %i.uz, 1
  %i.vb = and i32 %i.uz, 1
  %i.vc = add nuw nsw i32 %i.va, %i.vb
  %i.vd = zext nneg i32 %i.vc to i64              ; 2 uses
  %i.ve = mul i64 %i.bv, %i.vd
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.ve ; 4 uses
  br i1 %i.ml, label %.lr.ph402.preheader, label %.preheader

.lr.ph402.preheader:                              ; preds = %bb.d
  %i.vg = mul i64 %i.bu, %i.vd
  %i.vh = getelementptr inbounds nuw i8, ptr %i.lq, i64 %i.vg ; 4 uses
  br i1 %min.iters.check528, label %.lr.ph402.preheader748, label %vector.memcheck492

vector.memcheck492:                               ; preds = %.lr.ph402.preheader
  %bound0508 = icmp ult ptr %scevgep493, %scevgep498
  %bound1509 = icmp ult ptr %scevgep496, %scevgep495
  %found.conflict510 = and i1 %bound0508, %bound1509
  %bound0512 = icmp ult ptr %scevgep493, %scevgep501
  %bound1513 = icmp ult ptr %scevgep499, %scevgep495
  %found.conflict514 = and i1 %bound0512, %bound1513
  %i.vi = or i1 %found.conflict514, %stride.check515
  %conflict.rdx516 = or i1 %found.conflict510, %i.vi
  %bound0517 = icmp ult ptr %scevgep493, %scevgep504
  %bound1518 = icmp ult ptr %scevgep502, %scevgep495
  %found.conflict519 = and i1 %bound0517, %bound1518
  %conflict.rdx521 = or i1 %found.conflict519, %conflict.rdx516
  %bound0522 = icmp ult ptr %scevgep493, %scevgep507
  %bound1523 = icmp ult ptr %scevgep505, %scevgep495
  %found.conflict524 = and i1 %bound0522, %bound1523
  %conflict.rdx526 = or i1 %found.conflict524, %conflict.rdx521
  br i1 %conflict.rdx526, label %.lr.ph402.preheader748, label %vector.ph529

vector.ph529:                                     ; preds = %vector.memcheck492
  %i.vj = getelementptr i8, ptr %i.vh, i64 %i.nh
  br label %vector.body531

vector.body531:                                   ; preds = %vector.body531, %vector.ph529
  %index532 = phi i64 [ 0, %vector.ph529 ], [ %index.next539, %vector.body531 ] ; 6 uses
  %i.vk = shl i64 %index532, 4
  %next.gep533 = getelementptr i8, ptr %i.vh, i64 %i.vk
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %index532
  %wide.load534 = load <8 x float>, ptr %i.vl, align 4, !tbaa !56, !alias.scope !217
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %index532
  %wide.load535 = load <8 x float>, ptr %i.vm, align 4, !tbaa !56, !alias.scope !220
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %index532
  %wide.load536 = load <8 x float>, ptr %i.vn, align 4, !tbaa !56, !alias.scope !222
  %i.vo = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %index532
  %wide.load537 = load <8 x float>, ptr %i.vo, align 4, !tbaa !56, !alias.scope !224
  %i.vp = shufflevector <8 x float> %wide.load534, <8 x float> %wide.load535, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vq = shufflevector <8 x float> %wide.load536, <8 x float> %wide.load537, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec538 = shufflevector <16 x float> %i.vp, <16 x float> %i.vq, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec538, ptr %next.gep533, align 4, !tbaa !56, !alias.scope !226, !noalias !228
  %index.next539 = add nuw i64 %index532, 8       ; 2 uses
  %i.vr = icmp eq i64 %index.next539, %n.vec530
  br i1 %i.vr, label %middle.block540, label %vector.body531, !llvm.loop !229

middle.block540:                                  ; preds = %vector.body531
  br i1 %cmp.n541, label %.preheader, label %.lr.ph402.preheader748

.lr.ph402.preheader748:                           ; preds = %vector.memcheck492, %.lr.ph402.preheader, %middle.block540
  %indvars.iv433.ph = phi i64 [ 0, %vector.memcheck492 ], [ 0, %.lr.ph402.preheader ], [ %n.vec530, %middle.block540 ] ; 7 uses
  %.0176399.ph = phi ptr [ %i.vh, %vector.memcheck492 ], [ %i.vh, %.lr.ph402.preheader ], [ %i.vj, %middle.block540 ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph402.prol.loopexit, label %.lr.ph402.prol

.lr.ph402.prol:                                   ; preds = %.lr.ph402.preheader748
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %indvars.iv433.ph
  %i.vt = load float, ptr %i.vs, align 4, !tbaa !56
  store float %i.vt, ptr %.0176399.ph, align 4, !tbaa !56
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %indvars.iv433.ph
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !56
  %i.vw = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 4
  store float %i.vv, ptr %i.vw, align 4, !tbaa !56
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %indvars.iv433.ph
  %i.vy = load float, ptr %i.vx, align 4, !tbaa !56
  %i.vz = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 8
  store float %i.vy, ptr %i.vz, align 4, !tbaa !56
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %indvars.iv433.ph
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !56
  %i.wc = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 12
  store float %i.wb, ptr %i.wc, align 4, !tbaa !56
  %i.wd = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 16
  %indvars.iv.next434.prol = or disjoint i64 %indvars.iv433.ph, 1
  br label %.lr.ph402.prol.loopexit

.lr.ph402.prol.loopexit:                          ; preds = %.lr.ph402.prol, %.lr.ph402.preheader748
  %indvars.iv433.unr = phi i64 [ %indvars.iv433.ph, %.lr.ph402.preheader748 ], [ %indvars.iv.next434.prol, %.lr.ph402.prol ]
  %.0176399.unr = phi ptr [ %.0176399.ph, %.lr.ph402.preheader748 ], [ %i.wd, %.lr.ph402.prol ]
  %i.we = icmp eq i64 %indvars.iv433.ph, %i.ni
  br i1 %i.we, label %.preheader, label %.lr.ph402

.preheader:                                       ; preds = %.lr.ph402.prol.loopexit, %.lr.ph402, %middle.block540, %bb.d
  br i1 %i.mn, label %.lr.ph405.preheader, label %._crit_edge406

.lr.ph405.preheader:                              ; preds = %.preheader
  br i1 %min.iters.check, label %.lr.ph405.preheader747, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph405.preheader
  %bound0 = icmp ult ptr %scevgep, %scevgep464
  %bound1 = icmp ult ptr %scevgep460, %scevgep459
  %found.conflict = and i1 %bound0, %bound1
  %bound0474 = icmp ult ptr %scevgep, %scevgep467
  %bound1475 = icmp ult ptr %scevgep465, %scevgep459
  %found.conflict476 = and i1 %bound0474, %bound1475
  %i.wf = or i1 %found.conflict476, %stride.check477
  %conflict.rdx = or i1 %found.conflict, %i.wf
  %bound0478 = icmp ult ptr %scevgep, %scevgep470
  %bound1479 = icmp ult ptr %scevgep468, %scevgep459
  %found.conflict480 = and i1 %bound0478, %bound1479
  %conflict.rdx482 = or i1 %found.conflict480, %conflict.rdx
  %bound0483 = icmp ult ptr %scevgep, %scevgep473
  %bound1484 = icmp ult ptr %scevgep471, %scevgep459
  %found.conflict485 = and i1 %bound0483, %bound1484
  %conflict.rdx487 = or i1 %found.conflict485, %conflict.rdx482
  br i1 %conflict.rdx487, label %.lr.ph405.preheader747, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.wg = getelementptr i8, ptr %i.vf, i64 %i.nj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.wh = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.vf, i64 %i.wh
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %index
  %wide.load = load <8 x float>, ptr %i.wi, align 4, !tbaa !56, !alias.scope !230
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %index
  %wide.load488 = load <8 x float>, ptr %i.wj, align 4, !tbaa !56, !alias.scope !233
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %index
  %wide.load489 = load <8 x float>, ptr %i.wk, align 4, !tbaa !56, !alias.scope !235
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %index
  %wide.load490 = load <8 x float>, ptr %i.wl, align 4, !tbaa !56, !alias.scope !237
  %i.wm = shufflevector <8 x float> %wide.load, <8 x float> %wide.load488, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.wn = shufflevector <8 x float> %wide.load489, <8 x float> %wide.load490, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.wm, <16 x float> %i.wn, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !56, !alias.scope !239, !noalias !241
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.wo = icmp eq i64 %index.next, %n.vec
  br i1 %i.wo, label %middle.block, label %vector.body, !llvm.loop !242

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge406, label %.lr.ph405.preheader747

.lr.ph405.preheader747:                           ; preds = %vector.memcheck, %.lr.ph405.preheader, %middle.block
  %indvars.iv438.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph405.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %.0175403.ph = phi ptr [ %i.vf, %vector.memcheck ], [ %i.vf, %.lr.ph405.preheader ], [ %i.wg, %middle.block ] ; 6 uses
  br i1 %lcmp.mod752.not, label %.lr.ph405.prol.loopexit, label %.lr.ph405.prol

.lr.ph405.prol:                                   ; preds = %.lr.ph405.preheader747
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.us, i64 %indvars.iv438.ph
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !56
  store float %i.wq, ptr %.0175403.ph, align 4, !tbaa !56
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.uu, i64 %indvars.iv438.ph
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !56
  %i.wt = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 4
  store float %i.ws, ptr %i.wt, align 4, !tbaa !56
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.uw, i64 %indvars.iv438.ph
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !56
  %i.ww = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 8
  store float %i.wv, ptr %i.ww, align 4, !tbaa !56
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %indvars.iv438.ph
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !56
  %i.wz = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 12
  store float %i.wy, ptr %i.wz, align 4, !tbaa !56
  %i.xa = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 16
  %indvars.iv.next439.prol = or disjoint i64 %indvars.iv438.ph, 1
  br label %.lr.ph405.prol.loopexit

.lr.ph405.prol.loopexit:                          ; preds = %.lr.ph405.prol, %.lr.ph405.preheader747
  %indvars.iv438.unr = phi i64 [ %indvars.iv438.ph, %.lr.ph405.preheader747 ], [ %indvars.iv.next439.prol, %.lr.ph405.prol ]
  %.0175403.unr = phi ptr [ %.0175403.ph, %.lr.ph405.preheader747 ], [ %i.xa, %.lr.ph405.prol ]
  %i.xb = icmp eq i64 %indvars.iv438.ph, %i.nk
  br i1 %i.xb, label %._crit_edge406, label %.lr.ph405

.lr.ph402:                                        ; preds = %.lr.ph402.prol.loopexit, %.lr.ph402
  %indvars.iv433 = phi i64 [ %indvars.iv.next434.1, %.lr.ph402 ], [ %indvars.iv433.unr, %.lr.ph402.prol.loopexit ] ; 6 uses
  %.0176399 = phi ptr [ %i.xz, %.lr.ph402 ], [ %.0176399.unr, %.lr.ph402.prol.loopexit ] ; 9 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.uh, i64 %indvars.iv433
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !56
  store float %i.xd, ptr %.0176399, align 4, !tbaa !56
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %indvars.iv433
  %i.xf = load float, ptr %i.xe, align 4, !tbaa !56
  %i.xg = getelementptr inbounds nuw i8, ptr %.0176399, i64 4
  store float %i.xf, ptr %i.xg, align 4, !tbaa !56
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.un, i64 %indvars.iv433
  %i.xi = load float, ptr %i.xh, align 4, !tbaa !56
  %i.xj = getelementptr inbounds nuw i8, ptr %.0176399, i64 8
  store float %i.xi, ptr %i.xj, align 4, !tbaa !56
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %indvars.iv433
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !56
end_hunk_0
