Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_avx512?download=true
inline.NumInlined: 29
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN4ncnn15LSTM_x86_avx51220create_pipeline_int8ERKNS_6OptionE:bb.a

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.bn) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit10

_ZN4ncnn3Mat7releaseEv.exit10:                    ; preds = %bb.s, %bb.r, %_ZN4ncnn3Mat7releaseEv.exit13, %bb.o, %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %i.bs, align 8, !tbaa !20
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 600
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.r, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.br, i8 0, i64 20, i1 false)
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !11 ; 2 uses
  %.not.i5 = icmp eq ptr %i.bu, null
  br i1 %.not.i5, label %_ZN4ncnn3Mat7releaseEv.exit7, label %bb.t

bb.t:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit10
  %i.bv = atomicrmw add ptr %i.bu, i32 -1 acq_rel, align 4
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.u, label %_ZN4ncnn3Mat7releaseEv.exit7

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !17 ; 3 uses
  %.not3.i6 = icmp eq ptr %i.by, null
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i6, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef %i.bz), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit7

bb.w:                                             ; preds = %bb.u
  %.not.i22 = icmp eq ptr %i.bz, null
  br i1 %.not.i22, label %_ZN4ncnn3Mat7releaseEv.exit7, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @free(ptr noundef nonnull %i.bz) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit7

_ZN4ncnn3Mat7releaseEv.exit7:                     ; preds = %bb.x, %bb.w, %_ZN4ncnn3Mat7releaseEv.exit10, %bb.t, %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 0, ptr %i.ce, align 8, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cd, i8 0, i64 20, i1 false)
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !11 ; 2 uses
  %.not.i = icmp eq ptr %i.cg, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit7
  %i.ch = atomicrmw add ptr %i.cg, i32 -1 acq_rel, align 4
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.z, label %_ZN4ncnn3Mat7releaseEv.exit

bb.z:                                             ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !17 ; 3 uses
  %.not3.i = icmp eq ptr %i.ck, null
  %i.cl = load ptr, ptr %i.s, align 8, !tbaa !18  ; 3 uses
  br i1 %.not3.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !9
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef %i.cl), !inline_history !19
  br label %_ZN4ncnn3Mat7releaseEv.exit

bb.ab:                                            ; preds = %bb.z
  %.not.i24 = icmp eq ptr %i.cl, null
  br i1 %.not.i24, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef nonnull %i.cl) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit

_ZN4ncnn3Mat7releaseEv.exit:                      ; preds = %bb.ac, %bb.ab, %_ZN4ncnn3Mat7releaseEv.exit7, %bb.y, %bb.aa
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 584
  store i64 0, ptr %i.cq, align 8, !tbaa !20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.s, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cp, i8 0, i64 20, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %_ZN4ncnnL26lstm_transform_weight_int8ERKNS_3MatES2_S2_S2_S2_RS0_S3_S3_iiiiRKNS_6OptionE.exit
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #7

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnn15LSTM_x86_avx51215create_pipelineERKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4) #8 personality ptr @__gxx_personality_v0 {
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
  %i.by = zext nneg i32 %i.bs to i64
  %i.bz = zext nneg i32 %i.br to i64
  %i.ca = zext i32 %i.bo to i64                   ; 18 uses
  %5 = zext i32 %i.br to i64                      ; 13 uses
  %6 = zext i32 %i.bs to i64                      ; 13 uses
  %i.cb = sext i32 %i.k to i64                    ; 7 uses
  %i.cc = add nsw i32 %i.j, 1
  %invariant.op = add nsw i64 %i.bx, -1
  %i.cd = mul i64 %i.bi, %i.bj
  %i.ce = mul i64 %i.ak, %i.al
  %i.cf = mul i64 %i.ai, %i.cb                    ; 4 uses
  %i.cg = add nuw nsw i64 %i.ca, %6
  %i.ch = add nsw i64 %i.cg, -1
  %i.ci = mul i64 %i.ch, %i.al
  %i.cj = add i64 %i.cf, %i.ci
  %i.ck = mul i64 %i.ak, %i.cj
  %i.cl = mul i64 %i.ai, %i.ak
  %i.cm = mul i64 %i.ak, %i.al
  %i.cn = mul i64 %i.ak, %i.al
  %i.co = add nuw nsw i64 %i.ca, %5
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
  %i.dh = add nuw nsw i64 %i.ca, %6
  %i.di = add nsw i64 %i.dh, -1
  %i.dj = mul i64 %i.di, %i.t
  %i.dk = add i64 %i.dg, %i.dj
  %i.dl = mul i64 %i.s, %i.dk
  %i.dm = mul i64 %i.q, %i.s
  %i.dn = mul i64 %i.s, %i.t
  %i.do = mul i64 %i.s, %i.t
  %i.dp = add nuw nsw i64 %i.ca, %5
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
  %i.eo = add nuw nsw i64 %6, 1
  %i.ep = mul i64 %i.eo, %i.al
  %i.eq = add i64 %i.en, %i.ep
  %i.er = mul i64 %i.ak, %i.eq
  %i.es = mul i64 %i.ai, %i.ak
  %i.et = and i64 %i.eg, -2                       ; 5 uses
  %i.eu = add nsw i64 %i.et, %6
  %i.ev = add nsw i64 %i.eu, 1
  %i.ew = mul i64 %i.ev, %i.al
  %i.ex = add i64 %i.en, %i.ew
  %i.ey = mul i64 %i.ak, %i.ex
  %i.ez = mul i64 %i.ak, %i.al
  %i.fa = shl i64 %i.ez, 1
  %i.fb = or disjoint i64 %5, 1
  %i.fc = mul nsw i64 %i.fb, %i.al
  %i.fd = add i64 %i.en, %i.fc
  %i.fe = mul i64 %i.ak, %i.fd
  %i.ff = add nsw i64 %i.eg, %5
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
  %i.fz = mul nsw i64 %i.al, %6
  %i.ga = add i64 %i.en, %i.fz
  %i.gb = mul i64 %i.ak, %i.ga
  %i.gc = add nsw i64 %i.et, %6
  %i.gd = mul i64 %i.gc, %i.al
  %i.ge = add i64 %i.en, %i.gd
  %i.gf = mul i64 %i.ak, %i.ge
  %i.gg = mul nsw i64 %i.al, %5
  %i.gh = add i64 %i.en, %i.gg
  %i.gi = mul i64 %i.ak, %i.gh
  %i.gj = add nsw i64 %i.et, %5
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
  %i.hh = add nuw nsw i64 %6, 1
  %i.hi = mul i64 %i.hh, %i.t
  %i.hj = add i64 %i.hg, %i.hi
  %i.hk = mul i64 %i.s, %i.hj
  %i.hl = mul i64 %i.q, %i.s
  %i.hm = and i64 %i.gz, -2                       ; 5 uses
  %i.hn = add nsw i64 %i.hm, %6
  %i.ho = add nsw i64 %i.hn, 1
  %i.hp = mul i64 %i.ho, %i.t
  %i.hq = add i64 %i.hg, %i.hp
  %i.hr = mul i64 %i.s, %i.hq
  %i.hs = mul i64 %i.s, %i.t
  %i.ht = shl i64 %i.hs, 1
  %i.hu = or disjoint i64 %5, 1
  %i.hv = mul nsw i64 %i.hu, %i.t
  %i.hw = add i64 %i.hg, %i.hv
  %i.hx = mul i64 %i.s, %i.hw
  %i.hy = add nsw i64 %i.gz, %5
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
  %i.is = mul nsw i64 %i.t, %6
  %i.it = add i64 %i.hg, %i.is
  %i.iu = mul i64 %i.s, %i.it
  %i.iv = add nsw i64 %i.hm, %6
  %i.iw = mul i64 %i.iv, %i.t
  %i.ix = add i64 %i.hg, %i.iw
  %i.iy = mul i64 %i.s, %i.ix
  %i.iz = mul nsw i64 %i.t, %5
  %i.ja = add i64 %i.hg, %i.iz
  %i.jb = mul i64 %i.s, %i.ja
  %i.jc = add nsw i64 %i.hm, %5
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
  %i.jr = getelementptr i8, ptr %i.o, i64 %i.dl
  %i.js = getelementptr i8, ptr %i.o, i64 %i.dt
  %i.jt = getelementptr i8, ptr %i.o, i64 %i.dz
  %i.ju = getelementptr i8, ptr %i.o, i64 %i.ee
  %i.jv = getelementptr i8, ptr %i.ag, i64 %i.ck
  %i.jw = getelementptr i8, ptr %i.ag, i64 %i.cs
  %i.jx = getelementptr i8, ptr %i.ag, i64 %i.cy
  %i.jy = getelementptr i8, ptr %i.ag, i64 %i.dd
  %i.jz = getelementptr i8, ptr %i.ag, i64 %i.gp
  %i.ka = getelementptr i8, ptr %i.ag, i64 %i.gi
  %i.kb = getelementptr i8, ptr %i.ag, i64 %i.gb
  %i.kc = getelementptr i8, ptr %i.ag, i64 %i.fu
  %i.kd = getelementptr i8, ptr %i.ag, i64 %i.fn
  %i.ke = getelementptr i8, ptr %i.ag, i64 %i.fe
  %i.kf = getelementptr i8, ptr %i.ag, i64 %i.er
  %i.kg = getelementptr i8, ptr %i.o, i64 %i.ji
  %i.kh = getelementptr i8, ptr %i.o, i64 %i.jb
  %i.ki = getelementptr i8, ptr %i.o, i64 %i.iu
  %i.kj = getelementptr i8, ptr %i.o, i64 %i.in
  %i.kk = getelementptr i8, ptr %i.o, i64 %i.ig
  %i.kl = getelementptr i8, ptr %i.o, i64 %i.hx
  %i.km = getelementptr i8, ptr %i.o, i64 %i.hk
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
  %i.lf = insertelement <8 x i64> poison, i64 %i.fa, i64 0
  %i.lg = insertelement <8 x i64> poison, i64 %i.em, i64 0
  %i.lh = insertelement <8 x i64> poison, i64 %i.ht, i64 0
  %i.li = insertelement <8 x i64> poison, i64 %i.hf, i64 0
  %i.lj = or <8 x i64> %i.lh, %i.li
  %i.lk = icmp slt <8 x i64> %i.lj, zeroinitializer
  %i.ll = shufflevector <8 x i1> %i.lk, <8 x i1> poison, <8 x i32> zeroinitializer
  %i.lm = or <8 x i64> %i.lf, %i.lg
  %i.ln = icmp slt <8 x i64> %i.lm, zeroinitializer
  %i.lo = shufflevector <8 x i1> %i.ln, <8 x i1> poison, <8 x i32> zeroinitializer
  %stride.check527 = icmp slt i64 %i.dn, 0
  %stride.check477 = icmp slt i64 %i.cm, 0
  br label %.noexc231

.noexc231:                                        ; preds = %.noexc231.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar461 = phi i64 [ 0, %.noexc231.lr.ph ], [ %indvar.next462, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %indvars.iv448 = phi i64 [ %i.cb, %.noexc231.lr.ph ], [ %indvars.iv.next449, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.lp = mul i64 %i.dm, %indvar461               ; 4 uses
  %scevgep509 = getelementptr i8, ptr %i.jr, i64 %i.lp
  %scevgep512 = getelementptr i8, ptr %i.js, i64 %i.lp
  %scevgep515 = getelementptr i8, ptr %i.jt, i64 %i.lp
  %scevgep518 = getelementptr i8, ptr %i.ju, i64 %i.lp
  %i.lq = mul i64 %i.cl, %indvar461               ; 4 uses
  %scevgep463 = getelementptr i8, ptr %i.jv, i64 %i.lq
  %scevgep466 = getelementptr i8, ptr %i.jw, i64 %i.lq
  %scevgep469 = getelementptr i8, ptr %i.jx, i64 %i.lq
  %scevgep472 = getelementptr i8, ptr %i.jy, i64 %i.lq
  %.reass = mul i64 %factor.op.mul, %indvars.iv448
  %i.lr = getelementptr i8, ptr %i.o, i64 %.reass ; 17 uses
  %.reass414 = mul i64 %factor.op.mul413, %indvars.iv448
  %i.ls = getelementptr inbounds nuw i8, ptr %i.x, i64 %.reass414 ; 6 uses
  %.reass416 = mul i64 %factor.op.mul415, %indvars.iv448
  %i.lt = getelementptr i8, ptr %i.ag, i64 %.reass416 ; 17 uses
  %.reass418 = mul i64 %factor.op.mul417, %indvars.iv448
  %i.lu = getelementptr i8, ptr %i.ap, i64 %.reass418 ; 5 uses
  %.reass420 = mul i64 %factor.op.mul419, %indvars.iv448
  %i.lv = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.reass420 ; 2 uses
  %.reass422 = mul i64 %factor.op.mul421, %indvars.iv448
  %i.lw = getelementptr i8, ptr %i.be, i64 %.reass422 ; 5 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.bk ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.bl ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.bm ; 3 uses
  br i1 %i.bp, label %.lr.ph396, label %.preheader388

.lr.ph396:                                        ; preds = %.noexc231
  %i.ma = mul i64 %i.es, %indvar461               ; 15 uses
  %scevgep596 = getelementptr i8, ptr %i.jz, i64 %i.ma
  %scevgep593 = getelementptr i8, ptr %i.ka, i64 %i.ma
  %scevgep590 = getelementptr i8, ptr %i.kb, i64 %i.ma
  %scevgep587 = getelementptr i8, ptr %i.kc, i64 %i.ma
  %scevgep584 = getelementptr i8, ptr %i.kd, i64 %i.ma
  %scevgep581 = getelementptr i8, ptr %i.ke, i64 %i.ma
  %scevgep578 = getelementptr i8, ptr %i.kf, i64 %i.ma
  %i.mb = mul i64 %i.hl, %indvar461               ; 15 uses
  %scevgep713 = getelementptr i8, ptr %i.kg, i64 %i.mb
  %scevgep710 = getelementptr i8, ptr %i.kh, i64 %i.mb
  %scevgep707 = getelementptr i8, ptr %i.ki, i64 %i.mb
  %scevgep704 = getelementptr i8, ptr %i.kj, i64 %i.mb
  %scevgep701 = getelementptr i8, ptr %i.kk, i64 %i.mb
  %scevgep698 = getelementptr i8, ptr %i.kl, i64 %i.mb
  %scevgep695 = getelementptr i8, ptr %i.km, i64 %i.mb
  %scevgep599 = getelementptr i8, ptr %i.kn, i64 %i.ma
  %scevgep597 = getelementptr i8, ptr %i.ko, i64 %i.ma
  %scevgep594 = getelementptr i8, ptr %i.kp, i64 %i.ma
  %scevgep591 = getelementptr i8, ptr %i.kq, i64 %i.ma
  %scevgep588 = getelementptr i8, ptr %i.kr, i64 %i.ma
  %scevgep585 = getelementptr i8, ptr %i.ks, i64 %i.ma
  %scevgep582 = getelementptr i8, ptr %i.kt, i64 %i.ma
  %scevgep579 = getelementptr i8, ptr %i.ku, i64 %i.ma
  %i.mc = mul i64 %i.el, %indvar461
  %scevgep576 = getelementptr i8, ptr %i.kv, i64 %i.mc
  %scevgep716 = getelementptr i8, ptr %i.kw, i64 %i.mb
  %scevgep714 = getelementptr i8, ptr %i.kx, i64 %i.mb
  %scevgep711 = getelementptr i8, ptr %i.ky, i64 %i.mb
  %scevgep708 = getelementptr i8, ptr %i.kz, i64 %i.mb
  %scevgep705 = getelementptr i8, ptr %i.la, i64 %i.mb
  %scevgep702 = getelementptr i8, ptr %i.lb, i64 %i.mb
  %scevgep699 = getelementptr i8, ptr %i.lc, i64 %i.mb
  %scevgep696 = getelementptr i8, ptr %i.ld, i64 %i.mb
  %i.md = mul i64 %i.he, %indvar461
  %scevgep693 = getelementptr i8, ptr %i.le, i64 %i.md
  %i.me = load i32, ptr %4, align 4, !tbaa !38    ; 4 uses
  %i.mf = icmp sgt i32 %i.me, 0
  %i.mg = load i32, ptr %i.bw, align 8, !tbaa !41 ; 4 uses
  %i.mh = icmp sgt i32 %i.mg, 0
  %wide.trip.count = zext i32 %i.me to i64        ; 8 uses
  %wide.trip.count428 = zext i32 %i.mg to i64     ; 8 uses
  %i.mi = shl nuw nsw i64 %wide.trip.count428, 5
  %scevgep577 = getelementptr i8, ptr %scevgep576, i64 %i.mi
  %i.mj = shl nuw nsw i64 %wide.trip.count428, 2  ; 8 uses
  %scevgep580 = getelementptr i8, ptr %scevgep579, i64 %i.mj
  %scevgep583 = getelementptr i8, ptr %scevgep582, i64 %i.mj
  %scevgep586 = getelementptr i8, ptr %scevgep585, i64 %i.mj
  %scevgep589 = getelementptr i8, ptr %scevgep588, i64 %i.mj
  %scevgep592 = getelementptr i8, ptr %scevgep591, i64 %i.mj
  %scevgep595 = getelementptr i8, ptr %scevgep594, i64 %i.mj
  %scevgep598 = getelementptr i8, ptr %scevgep597, i64 %i.mj
  %scevgep600 = getelementptr i8, ptr %scevgep599, i64 %i.mj
  %i.mk = shl nuw nsw i64 %wide.trip.count, 5
  %scevgep694 = getelementptr i8, ptr %scevgep693, i64 %i.mk
  %i.ml = shl nuw nsw i64 %wide.trip.count, 2     ; 8 uses
  %scevgep697 = getelementptr i8, ptr %scevgep696, i64 %i.ml
  %scevgep700 = getelementptr i8, ptr %scevgep699, i64 %i.ml
  %scevgep703 = getelementptr i8, ptr %scevgep702, i64 %i.ml
  %scevgep706 = getelementptr i8, ptr %scevgep705, i64 %i.ml
  %scevgep709 = getelementptr i8, ptr %scevgep708, i64 %i.ml
  %scevgep712 = getelementptr i8, ptr %scevgep711, i64 %i.ml
  %scevgep715 = getelementptr i8, ptr %scevgep714, i64 %i.ml
  %scevgep717 = getelementptr i8, ptr %scevgep716, i64 %i.ml
  %i.mm = insertelement <8 x ptr> poison, ptr %i.lw, i64 0 ; 2 uses
  %i.mn = insertelement <8 x ptr> %i.mm, ptr %scevgep581, i64 1
  %i.mo = insertelement <8 x ptr> %i.mn, ptr %scevgep587, i64 3
  %i.mp = insertelement <8 x ptr> %i.mo, ptr %scevgep593, i64 5
  %i.mq = insertelement <8 x ptr> %i.mp, ptr %i.lt, i64 7
  %i.mr = shufflevector <8 x ptr> %i.mq, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 0, i32 5, i32 0, i32 7>
  %i.ms = insertelement <8 x ptr> poison, ptr %scevgep580, i64 0
  %i.mt = insertelement <8 x ptr> %i.ms, ptr %scevgep577, i64 1 ; 2 uses
  %i.mu = insertelement <8 x ptr> %i.mt, ptr %scevgep586, i64 2
  %i.mv = insertelement <8 x ptr> %i.mu, ptr %scevgep592, i64 4
  %i.mw = insertelement <8 x ptr> %i.mv, ptr %scevgep598, i64 6
  %i.mx = shufflevector <8 x ptr> %i.mw, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 4, i32 1, i32 6, i32 1>
  %i.my = shufflevector <8 x ptr> %i.mm, <8 x ptr> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0>
  %i.mz = insertelement <8 x ptr> %i.my, ptr %scevgep578, i64 0
  %i.na = insertelement <8 x ptr> %i.mz, ptr %scevgep584, i64 2
  %i.nb = insertelement <8 x ptr> %i.na, ptr %scevgep590, i64 4
  %i.nc = insertelement <8 x ptr> %i.nb, ptr %scevgep596, i64 6
  %i.nd = shufflevector <8 x ptr> %i.mt, <8 x ptr> poison, <8 x i32> <i32 1, i32 poison, i32 1, i32 poison, i32 1, i32 poison, i32 1, i32 poison>
  %i.ne = insertelement <8 x ptr> %i.nd, ptr %scevgep583, i64 1
  %i.nf = insertelement <8 x ptr> %i.ne, ptr %scevgep589, i64 3
  %i.ng = insertelement <8 x ptr> %i.nf, ptr %scevgep595, i64 5
  %i.nh = insertelement <8 x ptr> %i.ng, ptr %scevgep600, i64 7
  %i.ni = insertelement <8 x ptr> poison, ptr %i.lu, i64 0 ; 2 uses
  %i.nj = insertelement <8 x ptr> %i.ni, ptr %scevgep698, i64 1
  %i.nk = insertelement <8 x ptr> %i.nj, ptr %scevgep704, i64 3
  %i.nl = insertelement <8 x ptr> %i.nk, ptr %scevgep710, i64 5
  %i.nm = insertelement <8 x ptr> %i.nl, ptr %i.lr, i64 7
  %i.nn = shufflevector <8 x ptr> %i.nm, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 0, i32 5, i32 0, i32 7>
  %i.no = insertelement <8 x ptr> poison, ptr %scevgep697, i64 0
  %i.np = insertelement <8 x ptr> %i.no, ptr %scevgep694, i64 1 ; 2 uses
  %i.nq = insertelement <8 x ptr> %i.np, ptr %scevgep703, i64 2
  %i.nr = insertelement <8 x ptr> %i.nq, ptr %scevgep709, i64 4
  %i.ns = insertelement <8 x ptr> %i.nr, ptr %scevgep715, i64 6
  %i.nt = shufflevector <8 x ptr> %i.ns, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 4, i32 1, i32 6, i32 1>
  %i.nu = shufflevector <8 x ptr> %i.ni, <8 x ptr> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0>
  %i.nv = insertelement <8 x ptr> %i.nu, ptr %scevgep695, i64 0
  %i.nw = insertelement <8 x ptr> %i.nv, ptr %scevgep701, i64 2
  %i.nx = insertelement <8 x ptr> %i.nw, ptr %scevgep707, i64 4
  %i.ny = insertelement <8 x ptr> %i.nx, ptr %scevgep713, i64 6
  %i.nz = shufflevector <8 x ptr> %i.np, <8 x ptr> poison, <8 x i32> <i32 1, i32 poison, i32 1, i32 poison, i32 1, i32 poison, i32 1, i32 poison>
  %i.oa = insertelement <8 x ptr> %i.nz, ptr %scevgep700, i64 1
  %i.ob = insertelement <8 x ptr> %i.oa, ptr %scevgep706, i64 3
  %i.oc = insertelement <8 x ptr> %i.ob, ptr %scevgep712, i64 5
  %i.od = insertelement <8 x ptr> %i.oc, ptr %scevgep717, i64 7
  %min.iters.check765 = icmp ult i32 %i.me, 4
  %i.oe = icmp ult <8 x ptr> %i.nn, %i.nt
  %i.of = icmp ult <8 x ptr> %i.ny, %i.od
  %i.og = and <8 x i1> %i.of, %i.oe
  %rdx.op809 = or <8 x i1> %i.ll, %i.og
  %i.oh = bitcast <8 x i1> %rdx.op809 to i8
  %.not = icmp eq i8 %i.oh, 0
  %min.iters.check767 = icmp ult i32 %i.me, 16
  %i.oi = and i64 %wide.trip.count, 12
  %n.vec769 = and i64 %wide.trip.count, 2147483632 ; 5 uses
  %i.oj = shl nuw nsw i64 %n.vec769, 5
  %cmp.n784 = icmp eq i64 %n.vec769, %wide.trip.count
  %min.epilog.iters.check789 = icmp eq i64 %i.oi, 0
  %n.vec791 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.ok = shl nuw nsw i64 %n.vec791, 5
  %cmp.n806 = icmp eq i64 %n.vec791, %wide.trip.count
  %min.iters.check648 = icmp ult i32 %i.mg, 4
  %i.ol = icmp ult <8 x ptr> %i.mr, %i.mx
  %i.om = icmp ult <8 x ptr> %i.nc, %i.nh
  %i.on = and <8 x i1> %i.om, %i.ol
  %rdx.op = or <8 x i1> %i.lo, %i.on
  %i.oo = bitcast <8 x i1> %rdx.op to i8
  %.not810 = icmp eq i8 %i.oo, 0
  %min.iters.check650 = icmp ult i32 %i.mg, 16
  %i.op = and i64 %wide.trip.count428, 12
  %n.vec652 = and i64 %wide.trip.count428, 2147483632 ; 5 uses
  %i.oq = shl nuw nsw i64 %n.vec652, 5
  %cmp.n667 = icmp eq i64 %n.vec652, %wide.trip.count428
  %min.epilog.iters.check672 = icmp eq i64 %i.op, 0
  %n.vec674 = and i64 %wide.trip.count428, 2147483644 ; 4 uses
  %i.or = shl nuw nsw i64 %n.vec674, 5
  %cmp.n689 = icmp eq i64 %n.vec674, %wide.trip.count428
  br label %bb.c

.preheader388.loopexit:                           ; preds = %._crit_edge
  %i.os = trunc nuw nsw i64 %indvars.iv.next431 to i32
  br label %.preheader388

.preheader388:                                    ; preds = %.preheader388.loopexit, %.noexc231
  %.0182.lcssa = phi ptr [ %i.lv, %.noexc231 ], [ %i.qx, %.preheader388.loopexit ]
  %.0181.lcssa = phi i32 [ 0, %.noexc231 ], [ %i.os, %.preheader388.loopexit ] ; 6 uses
  %i.ot = icmp slt i32 %.0181.lcssa, %i.bo
  br i1 %i.ot, label %.lr.ph409, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph409:                                        ; preds = %.preheader388
  %i.ou = load i32, ptr %4, align 4, !tbaa !38    ; 4 uses
  %i.ov = icmp sgt i32 %i.ou, 0
  %i.ow = load i32, ptr %i.bw, align 8, !tbaa !41 ; 4 uses
  %i.ox = icmp sgt i32 %i.ow, 0
  %i.oy = zext i32 %.0181.lcssa to i64            ; 9 uses
  %wide.trip.count436 = zext i32 %i.ou to i64     ; 10 uses
  %wide.trip.count441 = zext i32 %i.ow to i64     ; 10 uses
  %i.oz = shl nuw nsw i64 %wide.trip.count441, 4
  %scevgep458 = getelementptr i8, ptr %i.lw, i64 %i.oz
  %i.pa = add nuw nsw i64 %6, %i.oy
  %i.pb = mul i64 %i.ce, %i.pa
  %scevgep460 = getelementptr i8, ptr %i.lt, i64 %i.pb
  %i.pc = shl nuw nsw i64 %wide.trip.count441, 2  ; 4 uses
  %scevgep464 = getelementptr i8, ptr %scevgep463, i64 %i.pc
  %i.pd = add nuw nsw i64 %5, %i.oy
  %i.pe = mul i64 %i.cn, %i.pd
  %scevgep465 = getelementptr i8, ptr %i.lt, i64 %i.pe
  %scevgep467 = getelementptr i8, ptr %scevgep466, i64 %i.pc
  %i.pf = add nsw i64 %i.bx, %i.oy
  %i.pg = mul i64 %i.ct, %i.pf
  %scevgep468 = getelementptr i8, ptr %i.lt, i64 %i.pg
  %scevgep470 = getelementptr i8, ptr %scevgep469, i64 %i.pc
  %i.ph = mul i64 %i.cz, %i.oy
  %scevgep471 = getelementptr i8, ptr %i.lt, i64 %i.ph
  %scevgep473 = getelementptr i8, ptr %scevgep472, i64 %i.pc
  %i.pi = shl nuw nsw i64 %wide.trip.count436, 4
  %scevgep506 = getelementptr i8, ptr %i.lu, i64 %i.pi
  %i.pj = add nuw nsw i64 %6, %i.oy
  %i.pk = mul i64 %i.df, %i.pj
  %scevgep508 = getelementptr i8, ptr %i.lr, i64 %i.pk
  %i.pl = shl nuw nsw i64 %wide.trip.count436, 2  ; 4 uses
  %scevgep510 = getelementptr i8, ptr %scevgep509, i64 %i.pl
  %i.pm = add nuw nsw i64 %5, %i.oy
  %i.pn = mul i64 %i.do, %i.pm
  %scevgep511 = getelementptr i8, ptr %i.lr, i64 %i.pn
  %scevgep513 = getelementptr i8, ptr %scevgep512, i64 %i.pl
  %i.po = add nsw i64 %i.bx, %i.oy
  %i.pp = mul i64 %i.du, %i.po
  %scevgep514 = getelementptr i8, ptr %i.lr, i64 %i.pp
  %scevgep516 = getelementptr i8, ptr %scevgep515, i64 %i.pl
  %i.pq = mul i64 %i.ea, %i.oy
  %scevgep517 = getelementptr i8, ptr %i.lr, i64 %i.pq
  %scevgep519 = getelementptr i8, ptr %scevgep518, i64 %i.pl
  %min.iters.check539 = icmp ult i32 %i.ou, 4
  %min.iters.check541 = icmp ult i32 %i.ou, 16
  %i.pr = and i64 %wide.trip.count436, 12
  %n.vec543 = and i64 %wide.trip.count436, 2147483632 ; 5 uses
  %i.ps = shl nuw nsw i64 %n.vec543, 4
  %cmp.n554 = icmp eq i64 %n.vec543, %wide.trip.count436
  %min.epilog.iters.check559 = icmp eq i64 %i.pr, 0
  %n.vec561 = and i64 %wide.trip.count436, 2147483644 ; 4 uses
  %i.pt = shl nuw nsw i64 %n.vec561, 4
  %cmp.n572 = icmp eq i64 %n.vec561, %wide.trip.count436
  %xtraiter = and i64 %wide.trip.count436, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.pu = add nsw i64 %wide.trip.count436, -1
  %min.iters.check = icmp ult i32 %i.ow, 4
  %min.iters.check488 = icmp ult i32 %i.ow, 16
  %i.pv = and i64 %wide.trip.count441, 12
  %n.vec = and i64 %wide.trip.count441, 2147483632 ; 5 uses
  %i.pw = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count441
  %min.epilog.iters.check = icmp eq i64 %i.pv, 0
  %n.vec492 = and i64 %wide.trip.count441, 2147483644 ; 4 uses
  %i.px = shl nuw nsw i64 %n.vec492, 4
  %cmp.n501 = icmp eq i64 %n.vec492, %wide.trip.count441
  %xtraiter811 = and i64 %wide.trip.count441, 1
  %lcmp.mod812.not = icmp eq i64 %xtraiter811, 0
  %i.py = add nsw i64 %wide.trip.count441, -1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph396, %._crit_edge
  %indvars.iv430 = phi i64 [ 0, %.lr.ph396 ], [ %indvars.iv.next431, %._crit_edge ] ; 12 uses
  %.0182394 = phi ptr [ %i.lv, %.lr.ph396 ], [ %i.qx, %._crit_edge ] ; 9 uses
  %i.pz = or disjoint i64 %indvars.iv430, 1       ; 6 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv430
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !56
  store float %i.qb, ptr %.0182394, align 4, !tbaa !56
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %indvars.iv430
  %i.qd = load float, ptr %i.qc, align 4, !tbaa !56
  %i.qe = getelementptr inbounds nuw i8, ptr %.0182394, i64 4
  store float %i.qd, ptr %i.qe, align 4, !tbaa !56
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %indvars.iv430
  %i.qg = load float, ptr %i.qf, align 4, !tbaa !56
  %i.qh = getelementptr inbounds nuw i8, ptr %.0182394, i64 8
  store float %i.qg, ptr %i.qh, align 4, !tbaa !56
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv430
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !56
  %i.qk = getelementptr inbounds nuw i8, ptr %.0182394, i64 12
  store float %i.qj, ptr %i.qk, align 4, !tbaa !56
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.pz
  %i.qm = load float, ptr %i.ql, align 4, !tbaa !56
  %i.qn = getelementptr inbounds nuw i8, ptr %.0182394, i64 16
  store float %i.qm, ptr %i.qn, align 4, !tbaa !56
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %i.pz
  %i.qp = load float, ptr %i.qo, align 4, !tbaa !56
  %i.qq = getelementptr inbounds nuw i8, ptr %.0182394, i64 20
  store float %i.qp, ptr %i.qq, align 4, !tbaa !56
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %i.pz
  %i.qs = load float, ptr %i.qr, align 4, !tbaa !56
  %i.qt = getelementptr inbounds nuw i8, ptr %.0182394, i64 24
  store float %i.qs, ptr %i.qt, align 4, !tbaa !56
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.pz
  %i.qv = load float, ptr %i.qu, align 4, !tbaa !56
  %i.qw = getelementptr inbounds nuw i8, ptr %.0182394, i64 28
  store float %i.qv, ptr %i.qw, align 4, !tbaa !56
  %i.qx = getelementptr inbounds nuw i8, ptr %.0182394, i64 32 ; 2 uses
  %i.qy = mul i64 %i.bq, %indvars.iv430
  %i.qz = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.qy ; 3 uses
  %i.ra = add nuw nsw i64 %indvars.iv430, %i.ca   ; 3 uses
  %i.rb = mul i64 %i.bq, %i.ra
  %i.rc = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.rb ; 3 uses
  %i.rd = add nuw nsw i64 %indvars.iv430, %i.bz   ; 3 uses
  %i.re = mul i64 %i.bq, %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.re ; 3 uses
  %i.rg = add nuw nsw i64 %indvars.iv430, %i.by   ; 3 uses
  %i.rh = mul i64 %i.bq, %i.rg
  %i.ri = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.rh ; 3 uses
  %i.rj = mul i64 %i.bq, %i.pz
  %i.rk = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.rj ; 3 uses
  %i.rl = add nuw nsw i64 %i.ra, 1                ; 2 uses
  %i.rm = mul i64 %i.bq, %i.rl
  %i.rn = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.rm ; 3 uses
  %i.ro = or disjoint i64 %i.rd, 1                ; 2 uses
  %i.rp = mul i64 %i.bq, %i.ro
  %i.rq = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.rp ; 3 uses
  %i.rr = add nuw nsw i64 %i.rg, 1                ; 2 uses
  %i.rs = mul i64 %i.bq, %i.rr
  %i.rt = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.rs ; 3 uses
  %i.ru = mul i64 %i.bt, %indvars.iv430
  %i.rv = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.ru ; 3 uses
  %i.rw = mul i64 %i.bt, %i.ra
  %i.rx = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.rw ; 3 uses
  %i.ry = mul i64 %i.bt, %i.rd
  %i.rz = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.ry ; 3 uses
  %i.sa = mul i64 %i.bt, %i.rg
  %i.sb = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.sa ; 3 uses
  %i.sc = mul i64 %i.bt, %i.pz
  %i.sd = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.sc ; 3 uses
  %i.se = mul i64 %i.bt, %i.rl
  %i.sf = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.se ; 3 uses
  %i.sg = mul i64 %i.bt, %i.ro
  %i.sh = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.sg ; 3 uses
  %i.si = mul i64 %i.bt, %i.rr
  %i.sj = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.si ; 3 uses
  %i.sk = lshr exact i64 %indvars.iv430, 1        ; 2 uses
  %i.sl = mul i64 %i.bv, %i.sk
  %i.sm = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.sl ; 5 uses
  br i1 %i.mf, label %iter.check786, label %.preheader387

iter.check786:                                    ; preds = %bb.c
  %i.sn = mul i64 %i.bu, %i.sk
  %i.so = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.sn ; 5 uses
  %.not.not = xor i1 %.not, true
  %brmerge = select i1 %min.iters.check765, i1 true, i1 %.not.not
  br i1 %brmerge, label %.lr.ph.preheader, label %vector.main.loop.iter.check766

vector.main.loop.iter.check766:                   ; preds = %iter.check786
  br i1 %min.iters.check767, label %vec.epilog.ph790, label %vector.ph768

vector.ph768:                                     ; preds = %vector.main.loop.iter.check766
  %i.sp = getelementptr i8, ptr %i.so, i64 %i.oj
  br label %vector.body770

vector.body770:                                   ; preds = %vector.body770, %vector.ph768
  %index771 = phi i64 [ 0, %vector.ph768 ], [ %index.next782, %vector.body770 ] ; 10 uses
  %i.sq = shl i64 %index771, 5
  %next.gep772 = getelementptr i8, ptr %i.so, i64 %i.sq
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %index771
  %wide.load773 = load <16 x float>, ptr %i.sr, align 4, !tbaa !56, !alias.scope !170
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %index771
  %wide.load774 = load <16 x float>, ptr %i.ss, align 4, !tbaa !56, !alias.scope !173
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %index771
  %wide.load775 = load <16 x float>, ptr %i.st, align 4, !tbaa !56, !alias.scope !175
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %index771
  %wide.load776 = load <16 x float>, ptr %i.su, align 4, !tbaa !56, !alias.scope !177
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %index771
  %wide.load777 = load <16 x float>, ptr %i.sv, align 4, !tbaa !56, !alias.scope !179
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %index771
  %wide.load778 = load <16 x float>, ptr %i.sw, align 4, !tbaa !56, !alias.scope !181
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %index771
  %wide.load779 = load <16 x float>, ptr %i.sx, align 4, !tbaa !56, !alias.scope !183
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %index771
  %wide.load780 = load <16 x float>, ptr %i.sy, align 4, !tbaa !56, !alias.scope !185
  %i.sz = shufflevector <16 x float> %wide.load773, <16 x float> %wide.load774, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ta = shufflevector <16 x float> %wide.load775, <16 x float> %wide.load776, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.tb = shufflevector <16 x float> %wide.load777, <16 x float> %wide.load778, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.tc = shufflevector <16 x float> %wide.load779, <16 x float> %wide.load780, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.td = shufflevector <32 x float> %i.sz, <32 x float> %i.ta, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.te = shufflevector <32 x float> %i.tb, <32 x float> %i.tc, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec781 = shufflevector <64 x float> %i.td, <64 x float> %i.te, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x float> %interleaved.vec781, ptr %next.gep772, align 4, !tbaa !56, !alias.scope !187, !noalias !189
  %index.next782 = add nuw i64 %index771, 16      ; 2 uses
  %i.tf = icmp eq i64 %index.next782, %n.vec769
  br i1 %i.tf, label %middle.block783, label %vector.body770, !llvm.loop !190

middle.block783:                                  ; preds = %vector.body770
  br i1 %cmp.n784, label %.preheader387, label %vec.epilog.iter.check788

vec.epilog.iter.check788:                         ; preds = %middle.block783
  br i1 %min.epilog.iters.check789, label %.lr.ph.preheader, label %vec.epilog.ph790, !prof !193

vec.epilog.ph790:                                 ; preds = %vector.main.loop.iter.check766, %vec.epilog.iter.check788
  %vec.epilog.resume.val785 = phi i64 [ %n.vec769, %vec.epilog.iter.check788 ], [ 0, %vector.main.loop.iter.check766 ]
  %i.tg = getelementptr i8, ptr %i.so, i64 %i.ok
  br label %vec.epilog.vector.body792

vec.epilog.vector.body792:                        ; preds = %vec.epilog.vector.body792, %vec.epilog.ph790
  %index793 = phi i64 [ %vec.epilog.resume.val785, %vec.epilog.ph790 ], [ %index.next804, %vec.epilog.vector.body792 ] ; 10 uses
  %i.th = shl i64 %index793, 5
  %next.gep794 = getelementptr i8, ptr %i.so, i64 %i.th
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %index793
  %wide.load795 = load <4 x float>, ptr %i.ti, align 4, !tbaa !56, !alias.scope !170
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %index793
  %wide.load796 = load <4 x float>, ptr %i.tj, align 4, !tbaa !56, !alias.scope !173
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %index793
  %wide.load797 = load <4 x float>, ptr %i.tk, align 4, !tbaa !56, !alias.scope !175
  %i.tl = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %index793
  %wide.load798 = load <4 x float>, ptr %i.tl, align 4, !tbaa !56, !alias.scope !177
  %i.tm = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %index793
  %wide.load799 = load <4 x float>, ptr %i.tm, align 4, !tbaa !56, !alias.scope !179
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %index793
  %wide.load800 = load <4 x float>, ptr %i.tn, align 4, !tbaa !56, !alias.scope !181
  %i.to = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %index793
  %wide.load801 = load <4 x float>, ptr %i.to, align 4, !tbaa !56, !alias.scope !183
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %index793
  %wide.load802 = load <4 x float>, ptr %i.tp, align 4, !tbaa !56, !alias.scope !185
  %i.tq = shufflevector <4 x float> %wide.load795, <4 x float> %wide.load796, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.tr = shufflevector <4 x float> %wide.load797, <4 x float> %wide.load798, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ts = shufflevector <4 x float> %wide.load799, <4 x float> %wide.load800, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.tt = shufflevector <4 x float> %wide.load801, <4 x float> %wide.load802, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.tu = shufflevector <8 x float> %i.tq, <8 x float> %i.tr, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.tv = shufflevector <8 x float> %i.ts, <8 x float> %i.tt, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
end_hunk_0
begin_hunk_1_@_ZN4ncnn15LSTM_x86_avx51215create_pipelineERKNS_6OptionE.omp_outlined:bb.a
  %wide.load658 = load <16 x float>, ptr %i.ub, align 4, !tbaa !56, !alias.scope !200
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %index654
  %wide.load659 = load <16 x float>, ptr %i.uc, align 4, !tbaa !56, !alias.scope !202
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %index654
  %wide.load660 = load <16 x float>, ptr %i.ud, align 4, !tbaa !56, !alias.scope !204
  %i.ue = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %index654
  %wide.load661 = load <16 x float>, ptr %i.ue, align 4, !tbaa !56, !alias.scope !206
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %index654
  %wide.load662 = load <16 x float>, ptr %i.uf, align 4, !tbaa !56, !alias.scope !208
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %index654
  %wide.load663 = load <16 x float>, ptr %i.ug, align 4, !tbaa !56, !alias.scope !210
  %i.uh = shufflevector <16 x float> %wide.load656, <16 x float> %wide.load657, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ui = shufflevector <16 x float> %wide.load658, <16 x float> %wide.load659, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.uj = shufflevector <16 x float> %wide.load660, <16 x float> %wide.load661, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.uk = shufflevector <16 x float> %wide.load662, <16 x float> %wide.load663, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ul = shufflevector <32 x float> %i.uh, <32 x float> %i.ui, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.um = shufflevector <32 x float> %i.uj, <32 x float> %i.uk, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec664 = shufflevector <64 x float> %i.ul, <64 x float> %i.um, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x float> %interleaved.vec664, ptr %next.gep655, align 4, !tbaa !56, !alias.scope !212, !noalias !214
  %index.next665 = add nuw i64 %index654, 16      ; 2 uses
  %i.un = icmp eq i64 %index.next665, %n.vec652
  br i1 %i.un, label %middle.block666, label %vector.body653, !llvm.loop !215

middle.block666:                                  ; preds = %vector.body653
  br i1 %cmp.n667, label %._crit_edge, label %vec.epilog.iter.check671

vec.epilog.iter.check671:                         ; preds = %middle.block666
  br i1 %min.epilog.iters.check672, label %.lr.ph393.preheader, label %vec.epilog.ph673, !prof !193

vec.epilog.ph673:                                 ; preds = %vector.main.loop.iter.check649, %vec.epilog.iter.check671
  %vec.epilog.resume.val668 = phi i64 [ %n.vec652, %vec.epilog.iter.check671 ], [ 0, %vector.main.loop.iter.check649 ]
  %i.uo = getelementptr i8, ptr %i.sm, i64 %i.or
  br label %vec.epilog.vector.body675

vec.epilog.vector.body675:                        ; preds = %vec.epilog.vector.body675, %vec.epilog.ph673
  %index676 = phi i64 [ %vec.epilog.resume.val668, %vec.epilog.ph673 ], [ %index.next687, %vec.epilog.vector.body675 ] ; 10 uses
  %i.up = shl i64 %index676, 5
  %next.gep677 = getelementptr i8, ptr %i.sm, i64 %i.up
  %i.uq = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %index676
  %wide.load678 = load <4 x float>, ptr %i.uq, align 4, !tbaa !56, !alias.scope !195
  %i.ur = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %index676
  %wide.load679 = load <4 x float>, ptr %i.ur, align 4, !tbaa !56, !alias.scope !198
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %index676
  %wide.load680 = load <4 x float>, ptr %i.us, align 4, !tbaa !56, !alias.scope !200
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %index676
  %wide.load681 = load <4 x float>, ptr %i.ut, align 4, !tbaa !56, !alias.scope !202
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %index676
  %wide.load682 = load <4 x float>, ptr %i.uu, align 4, !tbaa !56, !alias.scope !204
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %index676
  %wide.load683 = load <4 x float>, ptr %i.uv, align 4, !tbaa !56, !alias.scope !206
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %index676
  %wide.load684 = load <4 x float>, ptr %i.uw, align 4, !tbaa !56, !alias.scope !208
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %index676
  %wide.load685 = load <4 x float>, ptr %i.ux, align 4, !tbaa !56, !alias.scope !210
  %i.uy = shufflevector <4 x float> %wide.load678, <4 x float> %wide.load679, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.uz = shufflevector <4 x float> %wide.load680, <4 x float> %wide.load681, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.va = shufflevector <4 x float> %wide.load682, <4 x float> %wide.load683, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vb = shufflevector <4 x float> %wide.load684, <4 x float> %wide.load685, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.vc = shufflevector <8 x float> %i.uy, <8 x float> %i.uz, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vd = shufflevector <8 x float> %i.va, <8 x float> %i.vb, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec686 = shufflevector <16 x float> %i.vc, <16 x float> %i.vd, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec686, ptr %next.gep677, align 4, !tbaa !56, !alias.scope !212, !noalias !214
  %index.next687 = add nuw i64 %index676, 4       ; 2 uses
  %i.ve = icmp eq i64 %index.next687, %n.vec674
  br i1 %i.ve, label %vec.epilog.middle.block688, label %vec.epilog.vector.body675, !llvm.loop !216

vec.epilog.middle.block688:                       ; preds = %vec.epilog.vector.body675
  br i1 %cmp.n689, label %._crit_edge, label %.lr.ph393.preheader

.lr.ph393.preheader:                              ; preds = %iter.check669, %vec.epilog.iter.check671, %vec.epilog.middle.block688
  %indvars.iv425.ph = phi i64 [ 0, %iter.check669 ], [ %n.vec674, %vec.epilog.middle.block688 ], [ %n.vec652, %vec.epilog.iter.check671 ]
  %.0179391.ph = phi ptr [ %i.sm, %iter.check669 ], [ %i.uo, %vec.epilog.middle.block688 ], [ %i.tx, %vec.epilog.iter.check671 ]
  br label %.lr.ph393

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 9 uses
  %.0180389 = phi ptr [ %i.wc, %.lr.ph ], [ %.0180389.ph, %.lr.ph.preheader ] ; 9 uses
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !56
  store float %i.vg, ptr %.0180389, align 4, !tbaa !56
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %i.rc, i64 %indvars.iv
  %i.vi = load float, ptr %i.vh, align 4, !tbaa !56
  %i.vj = getelementptr inbounds nuw i8, ptr %.0180389, i64 4
  store float %i.vi, ptr %i.vj, align 4, !tbaa !56
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.rf, i64 %indvars.iv
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !56
  %i.vm = getelementptr inbounds nuw i8, ptr %.0180389, i64 8
  store float %i.vl, ptr %i.vm, align 4, !tbaa !56
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %indvars.iv
  %i.vo = load float, ptr %i.vn, align 4, !tbaa !56
  %i.vp = getelementptr inbounds nuw i8, ptr %.0180389, i64 12
  store float %i.vo, ptr %i.vp, align 4, !tbaa !56
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.rk, i64 %indvars.iv
  %i.vr = load float, ptr %i.vq, align 4, !tbaa !56
  %i.vs = getelementptr inbounds nuw i8, ptr %.0180389, i64 16
  store float %i.vr, ptr %i.vs, align 4, !tbaa !56
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.rn, i64 %indvars.iv
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !56
  %i.vv = getelementptr inbounds nuw i8, ptr %.0180389, i64 20
  store float %i.vu, ptr %i.vv, align 4, !tbaa !56
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %i.rq, i64 %indvars.iv
  %i.vx = load float, ptr %i.vw, align 4, !tbaa !56
  %i.vy = getelementptr inbounds nuw i8, ptr %.0180389, i64 24
  store float %i.vx, ptr %i.vy, align 4, !tbaa !56
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.rt, i64 %indvars.iv
  %i.wa = load float, ptr %i.vz, align 4, !tbaa !56
  %i.wb = getelementptr inbounds nuw i8, ptr %.0180389, i64 28
  store float %i.wa, ptr %i.wb, align 4, !tbaa !56
  %i.wc = getelementptr inbounds nuw i8, ptr %.0180389, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader387, label %.lr.ph, !llvm.loop !217

._crit_edge:                                      ; preds = %.lr.ph393, %middle.block666, %vec.epilog.middle.block688, %.preheader387
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 2 ; 3 uses
  %i.wd = icmp slt i64 %indvars.iv.next431, %invariant.op
  br i1 %i.wd, label %bb.c, label %.preheader388.loopexit, !llvm.loop !218

.lr.ph393:                                        ; preds = %.lr.ph393.preheader, %.lr.ph393
  %indvars.iv425 = phi i64 [ %indvars.iv.next426, %.lr.ph393 ], [ %indvars.iv425.ph, %.lr.ph393.preheader ] ; 9 uses
  %.0179391 = phi ptr [ %i.xb, %.lr.ph393 ], [ %.0179391.ph, %.lr.ph393.preheader ] ; 9 uses
  %i.we = getelementptr inbounds nuw [4 x i8], ptr %i.rv, i64 %indvars.iv425
  %i.wf = load float, ptr %i.we, align 4, !tbaa !56
  store float %i.wf, ptr %.0179391, align 4, !tbaa !56
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.rx, i64 %indvars.iv425
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !56
  %i.wi = getelementptr inbounds nuw i8, ptr %.0179391, i64 4
  store float %i.wh, ptr %i.wi, align 4, !tbaa !56
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %i.rz, i64 %indvars.iv425
  %i.wk = load float, ptr %i.wj, align 4, !tbaa !56
  %i.wl = getelementptr inbounds nuw i8, ptr %.0179391, i64 8
  store float %i.wk, ptr %i.wl, align 4, !tbaa !56
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %indvars.iv425
  %i.wn = load float, ptr %i.wm, align 4, !tbaa !56
  %i.wo = getelementptr inbounds nuw i8, ptr %.0179391, i64 12
  store float %i.wn, ptr %i.wo, align 4, !tbaa !56
  %i.wp = getelementptr inbounds nuw [4 x i8], ptr %i.sd, i64 %indvars.iv425
  %i.wq = load float, ptr %i.wp, align 4, !tbaa !56
  %i.wr = getelementptr inbounds nuw i8, ptr %.0179391, i64 16
  store float %i.wq, ptr %i.wr, align 4, !tbaa !56
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %indvars.iv425
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !56
  %i.wu = getelementptr inbounds nuw i8, ptr %.0179391, i64 20
  store float %i.wt, ptr %i.wu, align 4, !tbaa !56
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.sh, i64 %indvars.iv425
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !56
  %i.wx = getelementptr inbounds nuw i8, ptr %.0179391, i64 24
  store float %i.ww, ptr %i.wx, align 4, !tbaa !56
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.sj, i64 %indvars.iv425
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !56
  %i.xa = getelementptr inbounds nuw i8, ptr %.0179391, i64 28
  store float %i.wz, ptr %i.xa, align 4, !tbaa !56
  %i.xb = getelementptr inbounds nuw i8, ptr %.0179391, i64 32
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1 ; 2 uses
  %exitcond429.not = icmp eq i64 %indvars.iv.next426, %wide.trip.count428
  br i1 %exitcond429.not, label %._crit_edge, label %.lr.ph393, !llvm.loop !219

bb.d:                                             ; preds = %.lr.ph409, %._crit_edge406
  %indvar = phi i32 [ 0, %.lr.ph409 ], [ %indvar.next, %._crit_edge406 ] ; 5 uses
  %indvars.iv443 = phi i64 [ %i.oy, %.lr.ph409 ], [ %indvars.iv.next444, %._crit_edge406 ] ; 11 uses
  %.1183407 = phi ptr [ %.0182.lcssa, %.lr.ph409 ], [ %i.yb, %._crit_edge406 ] ; 5 uses
  %i.xc = add i32 %.0181.lcssa, %indvar
  %i.xd = lshr i32 %i.xc, 1
  %i.xe = sub i32 %.0181.lcssa, %indvar
  %i.xf = and i32 %i.xe, 1
  %i.xg = add nuw i32 %i.xd, %i.xf
  %i.xh = zext i32 %i.xg to i64
  %i.xi = mul i64 %i.de, %i.xh                    ; 2 uses
  %scevgep505 = getelementptr i8, ptr %i.lu, i64 %i.xi ; 4 uses
  %scevgep507 = getelementptr i8, ptr %scevgep506, i64 %i.xi ; 4 uses
  %i.xj = add i32 %.0181.lcssa, %indvar
  %i.xk = lshr i32 %i.xj, 1
  %i.xl = sub i32 %.0181.lcssa, %indvar
  %i.xm = and i32 %i.xl, 1
  %i.xn = add nuw i32 %i.xk, %i.xm
  %i.xo = zext i32 %i.xn to i64
  %i.xp = mul i64 %i.cd, %i.xo                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.lw, i64 %i.xp ; 4 uses
  %scevgep459 = getelementptr i8, ptr %scevgep458, i64 %i.xp ; 4 uses
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %indvars.iv443
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !56
  store float %i.xr, ptr %.1183407, align 4, !tbaa !56
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %indvars.iv443
  %i.xt = load float, ptr %i.xs, align 4, !tbaa !56
  %i.xu = getelementptr inbounds nuw i8, ptr %.1183407, i64 4
  store float %i.xt, ptr %i.xu, align 4, !tbaa !56
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.ly, i64 %indvars.iv443
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !56
  %i.xx = getelementptr inbounds nuw i8, ptr %.1183407, i64 8
  store float %i.xw, ptr %i.xx, align 4, !tbaa !56
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %indvars.iv443
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !56
  %i.ya = getelementptr inbounds nuw i8, ptr %.1183407, i64 12
  store float %i.xz, ptr %i.ya, align 4, !tbaa !56
  %i.yb = getelementptr inbounds nuw i8, ptr %.1183407, i64 16
  %i.yc = mul i64 %i.bq, %indvars.iv443
  %i.yd = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.yc ; 5 uses
  %i.ye = add nsw i64 %indvars.iv443, %i.bx       ; 2 uses
  %i.yf = mul i64 %i.bq, %i.ye
  %i.yg = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.yf ; 5 uses
  %i.yh = add nuw nsw i64 %indvars.iv443, %5      ; 2 uses
  %i.yi = mul i64 %i.bq, %i.yh
  %i.yj = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.yi ; 5 uses
  %i.yk = add nuw nsw i64 %indvars.iv443, %6      ; 2 uses
  %i.yl = mul i64 %i.bq, %i.yk
  %i.ym = getelementptr inbounds nuw i8, ptr %i.lr, i64 %i.yl ; 5 uses
  %i.yn = mul i64 %i.bt, %indvars.iv443
  %i.yo = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.yn ; 5 uses
  %i.yp = mul i64 %i.bt, %i.ye
  %i.yq = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.yp ; 5 uses
  %i.yr = mul i64 %i.bt, %i.yh
  %i.ys = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.yr ; 5 uses
  %i.yt = mul i64 %i.bt, %i.yk
  %i.yu = getelementptr inbounds nuw i8, ptr %i.lt, i64 %i.yt ; 5 uses
  %i.yv = trunc nuw nsw i64 %indvars.iv443 to i32 ; 2 uses
  %i.yw = lshr i32 %i.yv, 1
  %i.yx = and i32 %i.yv, 1
  %i.yy = add nuw nsw i32 %i.yw, %i.yx
  %i.yz = zext nneg i32 %i.yy to i64              ; 2 uses
  %i.za = mul i64 %i.bv, %i.yz
  %i.zb = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.za ; 6 uses
  br i1 %i.ov, label %iter.check556, label %.preheader

iter.check556:                                    ; preds = %bb.d
  %i.zc = mul i64 %i.bu, %i.yz
  %i.zd = getelementptr inbounds nuw i8, ptr %i.lu, i64 %i.zc ; 6 uses
  br i1 %min.iters.check539, label %.lr.ph402.preheader, label %vector.memcheck504

vector.memcheck504:                               ; preds = %iter.check556
  %bound0520 = icmp ult ptr %scevgep505, %scevgep510
  %bound1521 = icmp ult ptr %scevgep508, %scevgep507
  %found.conflict522 = and i1 %bound0520, %bound1521
  %bound0524 = icmp ult ptr %scevgep505, %scevgep513
  %bound1525 = icmp ult ptr %scevgep511, %scevgep507
  %found.conflict526 = and i1 %bound0524, %bound1525
  %i.ze = or i1 %found.conflict526, %stride.check527
  %conflict.rdx528 = or i1 %found.conflict522, %i.ze
  %bound0529 = icmp ult ptr %scevgep505, %scevgep516
  %bound1530 = icmp ult ptr %scevgep514, %scevgep507
  %found.conflict531 = and i1 %bound0529, %bound1530
  %conflict.rdx533 = or i1 %found.conflict531, %conflict.rdx528
  %bound0534 = icmp ult ptr %scevgep505, %scevgep519
  %bound1535 = icmp ult ptr %scevgep517, %scevgep507
  %found.conflict536 = and i1 %bound0534, %bound1535
  %conflict.rdx538 = or i1 %found.conflict536, %conflict.rdx533
  br i1 %conflict.rdx538, label %.lr.ph402.preheader, label %vector.main.loop.iter.check540

vector.main.loop.iter.check540:                   ; preds = %vector.memcheck504
  br i1 %min.iters.check541, label %vec.epilog.ph560, label %vector.ph542

vector.ph542:                                     ; preds = %vector.main.loop.iter.check540
  %i.zf = getelementptr i8, ptr %i.zd, i64 %i.ps
  br label %vector.body544

vector.body544:                                   ; preds = %vector.body544, %vector.ph542
  %index545 = phi i64 [ 0, %vector.ph542 ], [ %index.next552, %vector.body544 ] ; 6 uses
  %i.zg = shl i64 %index545, 4
  %next.gep546 = getelementptr i8, ptr %i.zd, i64 %i.zg
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %index545
  %wide.load547 = load <16 x float>, ptr %i.zh, align 4, !tbaa !56, !alias.scope !220
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %index545
  %wide.load548 = load <16 x float>, ptr %i.zi, align 4, !tbaa !56, !alias.scope !223
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %index545
  %wide.load549 = load <16 x float>, ptr %i.zj, align 4, !tbaa !56, !alias.scope !225
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %index545
  %wide.load550 = load <16 x float>, ptr %i.zk, align 4, !tbaa !56, !alias.scope !227
  %i.zl = shufflevector <16 x float> %wide.load547, <16 x float> %wide.load548, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.zm = shufflevector <16 x float> %wide.load549, <16 x float> %wide.load550, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec551 = shufflevector <32 x float> %i.zl, <32 x float> %i.zm, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x float> %interleaved.vec551, ptr %next.gep546, align 4, !tbaa !56, !alias.scope !229, !noalias !231
  %index.next552 = add nuw i64 %index545, 16      ; 2 uses
  %i.zn = icmp eq i64 %index.next552, %n.vec543
  br i1 %i.zn, label %middle.block553, label %vector.body544, !llvm.loop !232

middle.block553:                                  ; preds = %vector.body544
  br i1 %cmp.n554, label %.preheader, label %vec.epilog.iter.check558

vec.epilog.iter.check558:                         ; preds = %middle.block553
  br i1 %min.epilog.iters.check559, label %.lr.ph402.preheader, label %vec.epilog.ph560, !prof !193

vec.epilog.ph560:                                 ; preds = %vector.main.loop.iter.check540, %vec.epilog.iter.check558
  %vec.epilog.resume.val555 = phi i64 [ %n.vec543, %vec.epilog.iter.check558 ], [ 0, %vector.main.loop.iter.check540 ]
  %i.zo = getelementptr i8, ptr %i.zd, i64 %i.pt
  br label %vec.epilog.vector.body562

vec.epilog.vector.body562:                        ; preds = %vec.epilog.vector.body562, %vec.epilog.ph560
  %index563 = phi i64 [ %vec.epilog.resume.val555, %vec.epilog.ph560 ], [ %index.next570, %vec.epilog.vector.body562 ] ; 6 uses
  %i.zp = shl i64 %index563, 4
  %next.gep564 = getelementptr i8, ptr %i.zd, i64 %i.zp
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %index563
  %wide.load565 = load <4 x float>, ptr %i.zq, align 4, !tbaa !56, !alias.scope !220
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %index563
  %wide.load566 = load <4 x float>, ptr %i.zr, align 4, !tbaa !56, !alias.scope !223
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %index563
  %wide.load567 = load <4 x float>, ptr %i.zs, align 4, !tbaa !56, !alias.scope !225
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %index563
  %wide.load568 = load <4 x float>, ptr %i.zt, align 4, !tbaa !56, !alias.scope !227
  %i.zu = shufflevector <4 x float> %wide.load565, <4 x float> %wide.load566, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.zv = shufflevector <4 x float> %wide.load567, <4 x float> %wide.load568, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec569 = shufflevector <8 x float> %i.zu, <8 x float> %i.zv, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec569, ptr %next.gep564, align 4, !tbaa !56, !alias.scope !229, !noalias !231
  %index.next570 = add nuw i64 %index563, 4       ; 2 uses
  %i.zw = icmp eq i64 %index.next570, %n.vec561
  br i1 %i.zw, label %vec.epilog.middle.block571, label %vec.epilog.vector.body562, !llvm.loop !233

vec.epilog.middle.block571:                       ; preds = %vec.epilog.vector.body562
  br i1 %cmp.n572, label %.preheader, label %.lr.ph402.preheader

.lr.ph402.preheader:                              ; preds = %vector.memcheck504, %iter.check556, %vec.epilog.iter.check558, %vec.epilog.middle.block571
  %indvars.iv433.ph = phi i64 [ 0, %iter.check556 ], [ 0, %vector.memcheck504 ], [ %n.vec543, %vec.epilog.iter.check558 ], [ %n.vec561, %vec.epilog.middle.block571 ] ; 7 uses
  %.0176399.ph = phi ptr [ %i.zd, %iter.check556 ], [ %i.zd, %vector.memcheck504 ], [ %i.zf, %vec.epilog.iter.check558 ], [ %i.zo, %vec.epilog.middle.block571 ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph402.prol.loopexit, label %.lr.ph402.prol

.lr.ph402.prol:                                   ; preds = %.lr.ph402.preheader
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.yd, i64 %indvars.iv433.ph
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !56
  store float %i.zy, ptr %.0176399.ph, align 4, !tbaa !56
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.yg, i64 %indvars.iv433.ph
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !56
  %i.aab = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 4
  store float %i.aaa, ptr %i.aab, align 4, !tbaa !56
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.yj, i64 %indvars.iv433.ph
  %i.aad = load float, ptr %i.aac, align 4, !tbaa !56
  %i.aae = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 8
  store float %i.aad, ptr %i.aae, align 4, !tbaa !56
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %indvars.iv433.ph
  %i.aag = load float, ptr %i.aaf, align 4, !tbaa !56
  %i.aah = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 12
  store float %i.aag, ptr %i.aah, align 4, !tbaa !56
  %i.aai = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 16
  %indvars.iv.next434.prol = or disjoint i64 %indvars.iv433.ph, 1
  br label %.lr.ph402.prol.loopexit

.lr.ph402.prol.loopexit:                          ; preds = %.lr.ph402.prol, %.lr.ph402.preheader
  %indvars.iv433.unr = phi i64 [ %indvars.iv433.ph, %.lr.ph402.preheader ], [ %indvars.iv.next434.prol, %.lr.ph402.prol ]
  %.0176399.unr = phi ptr [ %.0176399.ph, %.lr.ph402.preheader ], [ %i.aai, %.lr.ph402.prol ]
  %i.aaj = icmp eq i64 %indvars.iv433.ph, %i.pu
  br i1 %i.aaj, label %.preheader, label %.lr.ph402

.preheader:                                       ; preds = %.lr.ph402.prol.loopexit, %.lr.ph402, %middle.block553, %vec.epilog.middle.block571, %bb.d
  br i1 %i.ox, label %iter.check, label %._crit_edge406

iter.check:                                       ; preds = %.preheader
  br i1 %min.iters.check, label %.lr.ph405.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %bound0 = icmp ult ptr %scevgep, %scevgep464
  %bound1 = icmp ult ptr %scevgep460, %scevgep459
  %found.conflict = and i1 %bound0, %bound1
  %bound0474 = icmp ult ptr %scevgep, %scevgep467
  %bound1475 = icmp ult ptr %scevgep465, %scevgep459
  %found.conflict476 = and i1 %bound0474, %bound1475
  %i.aak = or i1 %found.conflict476, %stride.check477
  %conflict.rdx = or i1 %found.conflict, %i.aak
  %bound0478 = icmp ult ptr %scevgep, %scevgep470
  %bound1479 = icmp ult ptr %scevgep468, %scevgep459
  %found.conflict480 = and i1 %bound0478, %bound1479
  %conflict.rdx482 = or i1 %found.conflict480, %conflict.rdx
  %bound0483 = icmp ult ptr %scevgep, %scevgep473
  %bound1484 = icmp ult ptr %scevgep471, %scevgep459
  %found.conflict485 = and i1 %bound0483, %bound1484
  %conflict.rdx487 = or i1 %found.conflict485, %conflict.rdx482
  br i1 %conflict.rdx487, label %.lr.ph405.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check488, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aal = getelementptr i8, ptr %i.zb, i64 %i.pw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.aam = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.zb, i64 %i.aam
  %i.aan = getelementptr inbounds nuw [4 x i8], ptr %i.yo, i64 %index
  %wide.load = load <16 x float>, ptr %i.aan, align 4, !tbaa !56, !alias.scope !234
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.yq, i64 %index
  %wide.load489 = load <16 x float>, ptr %i.aao, align 4, !tbaa !56, !alias.scope !237
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.ys, i64 %index
  %wide.load490 = load <16 x float>, ptr %i.aap, align 4, !tbaa !56, !alias.scope !239
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.yu, i64 %index
  %wide.load491 = load <16 x float>, ptr %i.aaq, align 4, !tbaa !56, !alias.scope !241
  %i.aar = shufflevector <16 x float> %wide.load, <16 x float> %wide.load489, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aas = shufflevector <16 x float> %wide.load490, <16 x float> %wide.load491, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x float> %i.aar, <32 x float> %i.aas, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !56, !alias.scope !243, !noalias !245
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aat = icmp eq i64 %index.next, %n.vec
  br i1 %i.aat, label %middle.block, label %vector.body, !llvm.loop !246

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge406, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph405.preheader, label %vec.epilog.ph, !prof !193

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.aau = getelementptr i8, ptr %i.zb, i64 %i.px
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index493 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next500, %vec.epilog.vector.body ] ; 6 uses
end_hunk_1
begin_hunk_2_@_ZN4ncnnL26lstm_transform_weight_int8ERKNS_3MatES2_S2_S2_S2_RS0_S3_S3_iiiiRKNS_6OptionE.omp_outlined:bb.a
  store i8 %i.alu, ptr %i.alv, align 1, !tbaa !293
  %i.alw = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.aih
  %i.alx = load i8, ptr %i.alw, align 1, !tbaa !293
  %i.aly = getelementptr inbounds nuw i8, ptr %.617252096, i64 31
  store i8 %i.alx, ptr %i.aly, align 1, !tbaa !293
  %i.alz = getelementptr inbounds nuw i8, ptr %.617252096, i64 32 ; 2 uses
  %indvars.iv.next2257 = add nuw nsw i64 %indvars.iv2256, 2 ; 3 uses
  %i.ama = or disjoint i64 %indvars.iv.next2257, 1 ; 2 uses
  %i.amb = load i32, ptr %13, align 4, !tbaa !38  ; 2 uses
  %i.amc = trunc nuw i64 %i.ama to i32
  %i.amd = icmp sgt i32 %i.amb, %i.amc
  br i1 %i.amd, label %.lr.ph2098, label %.preheader2060.loopexit, !llvm.loop !387

.lr.ph2103:                                       ; preds = %.lr.ph2103.preheader, %.lr.ph2103
  %indvars.iv2259 = phi i64 [ %i.aig, %.lr.ph2103.preheader ], [ %indvars.iv.next2260, %.lr.ph2103 ] ; 17 uses
  %.717262101 = phi ptr [ %.61725.lcssa, %.lr.ph2103.preheader ], [ %i.anz, %.lr.ph2103 ] ; 17 uses
  %i.ame = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv2259
  %i.amf = load i8, ptr %i.ame, align 1, !tbaa !293
  store i8 %i.amf, ptr %.717262101, align 1, !tbaa !293
  %i.amg = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv2259
  %i.amh = load i8, ptr %i.amg, align 1, !tbaa !293
  %i.ami = getelementptr inbounds nuw i8, ptr %.717262101, i64 1
  store i8 %i.amh, ptr %i.ami, align 1, !tbaa !293
  %i.amj = getelementptr inbounds nuw i8, ptr %i.gz, i64 %indvars.iv2259
  %i.amk = load i8, ptr %i.amj, align 1, !tbaa !293
  %i.aml = getelementptr inbounds nuw i8, ptr %.717262101, i64 2
  store i8 %i.amk, ptr %i.aml, align 1, !tbaa !293
  %i.amm = getelementptr inbounds nuw i8, ptr %i.hh, i64 %indvars.iv2259
  %i.amn = load i8, ptr %i.amm, align 1, !tbaa !293
  %i.amo = getelementptr inbounds nuw i8, ptr %.717262101, i64 3
  store i8 %i.amn, ptr %i.amo, align 1, !tbaa !293
  %i.amp = getelementptr inbounds nuw i8, ptr %i.gl, i64 %indvars.iv2259
  %i.amq = load i8, ptr %i.amp, align 1, !tbaa !293
  %i.amr = getelementptr inbounds nuw i8, ptr %.717262101, i64 4
  store i8 %i.amq, ptr %i.amr, align 1, !tbaa !293
  %i.ams = getelementptr inbounds nuw i8, ptr %i.gt, i64 %indvars.iv2259
  %i.amt = load i8, ptr %i.ams, align 1, !tbaa !293
  %i.amu = getelementptr inbounds nuw i8, ptr %.717262101, i64 5
  store i8 %i.amt, ptr %i.amu, align 1, !tbaa !293
  %i.amv = getelementptr inbounds nuw i8, ptr %i.hb, i64 %indvars.iv2259
  %i.amw = load i8, ptr %i.amv, align 1, !tbaa !293
  %i.amx = getelementptr inbounds nuw i8, ptr %.717262101, i64 6
  store i8 %i.amw, ptr %i.amx, align 1, !tbaa !293
  %i.amy = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv2259
  %i.amz = load i8, ptr %i.amy, align 1, !tbaa !293
  %i.ana = getelementptr inbounds nuw i8, ptr %.717262101, i64 7
  store i8 %i.amz, ptr %i.ana, align 1, !tbaa !293
  %i.anb = getelementptr inbounds nuw i8, ptr %i.gn, i64 %indvars.iv2259
  %i.anc = load i8, ptr %i.anb, align 1, !tbaa !293
  %i.and = getelementptr inbounds nuw i8, ptr %.717262101, i64 8
  store i8 %i.anc, ptr %i.and, align 1, !tbaa !293
  %i.ane = getelementptr inbounds nuw i8, ptr %i.gv, i64 %indvars.iv2259
  %i.anf = load i8, ptr %i.ane, align 1, !tbaa !293
  %i.ang = getelementptr inbounds nuw i8, ptr %.717262101, i64 9
  store i8 %i.anf, ptr %i.ang, align 1, !tbaa !293
  %i.anh = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv2259
  %i.ani = load i8, ptr %i.anh, align 1, !tbaa !293
  %i.anj = getelementptr inbounds nuw i8, ptr %.717262101, i64 10
  store i8 %i.ani, ptr %i.anj, align 1, !tbaa !293
  %i.ank = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv2259
  %i.anl = load i8, ptr %i.ank, align 1, !tbaa !293
  %i.anm = getelementptr inbounds nuw i8, ptr %.717262101, i64 11
  store i8 %i.anl, ptr %i.anm, align 1, !tbaa !293
  %i.ann = getelementptr inbounds nuw i8, ptr %i.gp, i64 %indvars.iv2259
  %i.ano = load i8, ptr %i.ann, align 1, !tbaa !293
  %i.anp = getelementptr inbounds nuw i8, ptr %.717262101, i64 12
  store i8 %i.ano, ptr %i.anp, align 1, !tbaa !293
  %i.anq = getelementptr inbounds nuw i8, ptr %i.gx, i64 %indvars.iv2259
  %i.anr = load i8, ptr %i.anq, align 1, !tbaa !293
  %i.ans = getelementptr inbounds nuw i8, ptr %.717262101, i64 13
  store i8 %i.anr, ptr %i.ans, align 1, !tbaa !293
  %i.ant = getelementptr inbounds nuw i8, ptr %i.hf, i64 %indvars.iv2259
  %i.anu = load i8, ptr %i.ant, align 1, !tbaa !293
  %i.anv = getelementptr inbounds nuw i8, ptr %.717262101, i64 14
  store i8 %i.anu, ptr %i.anv, align 1, !tbaa !293
  %i.anw = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv2259
  %i.anx = load i8, ptr %i.anw, align 1, !tbaa !293
  %i.any = getelementptr inbounds nuw i8, ptr %.717262101, i64 15
  store i8 %i.anx, ptr %i.any, align 1, !tbaa !293
  %i.anz = getelementptr inbounds nuw i8, ptr %.717262101, i64 16
  %indvars.iv.next2260 = add nuw nsw i64 %indvars.iv2259, 1 ; 2 uses
  %i.aoa = load i32, ptr %13, align 4, !tbaa !38
  %i.aob = trunc nuw i64 %indvars.iv.next2260 to i32
  %i.aoc = icmp sgt i32 %i.aoa, %i.aob
  br i1 %i.aoc, label %.lr.ph2103, label %._crit_edge, !llvm.loop !388

._crit_edge:                                      ; preds = %.lr.ph2103, %.preheader2060
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv2262
  %i.aoe = load <4 x float>, ptr %i.aod, align 1, !tbaa !293
  %i.aof = load i32, ptr %11, align 4, !tbaa !38  ; 3 uses
  %i.aog = sext i32 %i.aof to i64                 ; 2 uses
  %i.aoh = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.aog
  %i.aoi = getelementptr inbounds nuw [4 x i8], ptr %i.aoh, i64 %indvars.iv2262
  %i.aoj = load <4 x float>, ptr %i.aoi, align 1, !tbaa !293
  %i.aok = shl nsw i32 %i.aof, 1
  %i.aol = sext i32 %i.aok to i64                 ; 2 uses
  %i.aom = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.aol
  %i.aon = getelementptr inbounds nuw [4 x i8], ptr %i.aom, i64 %indvars.iv2262
  %i.aoo = load <4 x float>, ptr %i.aon, align 1, !tbaa !293
  %i.aop = mul nsw i32 %i.aof, 3
  %i.aoq = sext i32 %i.aop to i64                 ; 2 uses
  %i.aor = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.aoq
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.aor, i64 %indvars.iv2262
  %i.aot = load <4 x float>, ptr %i.aos, align 1, !tbaa !293
  %i.aou = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv2262
  %i.aov = load <4 x float>, ptr %i.aou, align 1, !tbaa !293
  %i.aow = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.aog
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %i.aow, i64 %indvars.iv2262
  %i.aoy = load <4 x float>, ptr %i.aox, align 1, !tbaa !293
  %i.aoz = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.aol
  %i.apa = getelementptr inbounds nuw [4 x i8], ptr %i.aoz, i64 %indvars.iv2262
  %i.apb = load <4 x float>, ptr %i.apa, align 1, !tbaa !293
  %i.apc = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.aoq
  %i.apd = getelementptr inbounds nuw [4 x i8], ptr %i.apc, i64 %indvars.iv2262
  %i.ape = load <4 x float>, ptr %i.apd, align 1, !tbaa !293
  %i.apf = shufflevector <4 x float> %i.aoe, <4 x float> %i.aoj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apg = shufflevector <4 x float> %i.aoo, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aph = shufflevector <16 x float> %i.apf, <16 x float> %i.apg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.api = shufflevector <4 x float> %i.aot, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apj = shufflevector <16 x float> %i.aph, <16 x float> %i.api, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.apk = shufflevector <4 x float> %i.aov, <4 x float> %i.aoy, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apl = shufflevector <4 x float> %i.apb, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apm = shufflevector <16 x float> %i.apk, <16 x float> %i.apl, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apn = shufflevector <4 x float> %i.ape, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.apo = shufflevector <16 x float> %i.apm, <16 x float> %i.apn, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 16, i32 17, i32 18, i32 19>
  %i.app = fdiv fast <16 x float> splat (float 1.000000e+00), %i.apj
  %i.apq = fdiv fast <16 x float> splat (float 1.000000e+00), %i.apo
  store <16 x float> %i.app, ptr %i.hs, align 1, !tbaa !293
  %i.apr = getelementptr inbounds nuw i8, ptr %i.hs, i64 64
  store <16 x float> %i.apq, ptr %i.apr, align 1, !tbaa !293
  %indvars.iv.next2263 = add nuw nsw i64 %indvars.iv2262, 4 ; 3 uses
  %i.aps = or disjoint i64 %indvars.iv.next2263, 3
  %i.apt = load i32, ptr %11, align 4, !tbaa !38  ; 2 uses
  %i.apu = sext i32 %i.apt to i64
  %i.apv = icmp slt i64 %i.aps, %i.apu
  br i1 %i.apv, label %bb.c, label %.preheader2068.loopexit, !llvm.loop !389

.preheader2067.loopexit:                          ; preds = %._crit_edge2147
  %i.apw = trunc nuw nsw i64 %indvars.iv.next2292 to i32
  br label %.preheader2067

.preheader2067:                                   ; preds = %.preheader2067.loopexit, %.preheader2068
  %i.apx = phi i32 [ %i.dc, %.preheader2068 ], [ %i.bla, %.preheader2067.loopexit ] ; 3 uses
  %.11731.lcssa = phi ptr [ %.01730.lcssa, %.preheader2068 ], [ %i.arc, %.preheader2067.loopexit ]
  %.11728.lcssa = phi i32 [ %.01727.lcssa, %.preheader2068 ], [ %i.apw, %.preheader2067.loopexit ] ; 2 uses
  %i.apy = icmp slt i32 %.11728.lcssa, %i.apx
  br i1 %i.apy, label %.lr.ph2194, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph2194:                                       ; preds = %.preheader2067
  %i.apz = mul i64 %i.am, %i.ap                   ; 4 uses
  %i.aqa = mul i64 %i.au, %i.ax                   ; 4 uses
  %i.aqb = mul i64 %i.by, %i.cb
  %i.aqc = mul i64 %i.cm, %i.cp
  %i.aqd = zext nneg i32 %.11728.lcssa to i64
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph2150, %._crit_edge2147
  %indvars.iv2291 = phi i64 [ %i.dj, %.lr.ph2150 ], [ %indvars.iv.next2292, %._crit_edge2147 ] ; 10 uses
  %indvars.iv2289 = phi i64 [ %i.dk, %.lr.ph2150 ], [ %indvars.iv.next2290, %._crit_edge2147 ] ; 9 uses
  %i.aqe = phi i32 [ %i.dc, %.lr.ph2150 ], [ %i.bla, %._crit_edge2147 ] ; 3 uses
  %.117312148 = phi ptr [ %.01730.lcssa, %.lr.ph2150 ], [ %i.arc, %._crit_edge2147 ] ; 9 uses
  %i.aqf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv2291
  %i.aqg = load float, ptr %i.aqf, align 4, !tbaa !56
  store float %i.aqg, ptr %.117312148, align 4, !tbaa !56
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv2291
  %i.aqi = load float, ptr %i.aqh, align 4, !tbaa !56
  %i.aqj = getelementptr inbounds nuw i8, ptr %.117312148, i64 4
  store float %i.aqi, ptr %i.aqj, align 4, !tbaa !56
  %i.aqk = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv2291
  %i.aql = load float, ptr %i.aqk, align 4, !tbaa !56
  %i.aqm = getelementptr inbounds nuw i8, ptr %.117312148, i64 8
  store float %i.aql, ptr %i.aqm, align 4, !tbaa !56
  %i.aqn = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv2291
  %i.aqo = load float, ptr %i.aqn, align 4, !tbaa !56
  %i.aqp = getelementptr inbounds nuw i8, ptr %.117312148, i64 12
  store float %i.aqo, ptr %i.aqp, align 4, !tbaa !56
  %i.aqq = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv2289
  %i.aqr = load float, ptr %i.aqq, align 4, !tbaa !56
  %i.aqs = getelementptr inbounds nuw i8, ptr %.117312148, i64 16
  store float %i.aqr, ptr %i.aqs, align 4, !tbaa !56
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %indvars.iv2289
  %i.aqu = load float, ptr %i.aqt, align 4, !tbaa !56
  %i.aqv = getelementptr inbounds nuw i8, ptr %.117312148, i64 20
  store float %i.aqu, ptr %i.aqv, align 4, !tbaa !56
  %i.aqw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv2289
  %i.aqx = load float, ptr %i.aqw, align 4, !tbaa !56
  %i.aqy = getelementptr inbounds nuw i8, ptr %.117312148, i64 24
  store float %i.aqx, ptr %i.aqy, align 4, !tbaa !56
  %i.aqz = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv2289
  %i.ara = load float, ptr %i.aqz, align 4, !tbaa !56
  %i.arb = getelementptr inbounds nuw i8, ptr %.117312148, i64 28
  store float %i.ara, ptr %i.arb, align 4, !tbaa !56
  %i.arc = getelementptr inbounds nuw i8, ptr %.117312148, i64 32 ; 2 uses
  %i.ard = mul i64 %i.df, %indvars.iv2291
  %i.are = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ard ; 8 uses
  %i.arf = trunc nuw nsw i64 %indvars.iv2291 to i32 ; 8 uses
  %i.arg = add nsw i32 %i.aqe, %i.arf             ; 2 uses
  %i.arh = sext i32 %i.arg to i64                 ; 2 uses
  %i.ari = mul i64 %i.df, %i.arh
  %i.arj = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ari ; 8 uses
  %i.ark = shl nuw nsw i32 %i.aqe, 1
  %i.arl = add nsw i32 %i.ark, %i.arf             ; 2 uses
  %i.arm = sext i32 %i.arl to i64                 ; 2 uses
  %i.arn = mul i64 %i.df, %i.arm
  %i.aro = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.arn ; 8 uses
  %i.arp = mul nuw nsw i32 %i.aqe, 3
  %i.arq = add nsw i32 %i.arp, %i.arf             ; 2 uses
  %i.arr = sext i32 %i.arq to i64                 ; 2 uses
  %i.ars = mul i64 %i.df, %i.arr
  %i.art = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ars ; 8 uses
  %i.aru = mul i64 %i.df, %indvars.iv2289
  %i.arv = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.aru ; 8 uses
  %i.arw = add nsw i32 %i.arg, 1
  %i.arx = sext i32 %i.arw to i64                 ; 2 uses
  %i.ary = mul i64 %i.df, %i.arx
  %i.arz = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ary ; 8 uses
  %i.asa = or disjoint i32 %i.arl, 1
  %i.asb = sext i32 %i.asa to i64                 ; 2 uses
  %i.asc = mul i64 %i.df, %i.asb
  %i.asd = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.asc ; 8 uses
  %i.ase = add nsw i32 %i.arq, 1
  %i.asf = sext i32 %i.ase to i64                 ; 2 uses
  %i.asg = mul i64 %i.df, %i.asf
  %i.ash = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.asg ; 8 uses
  %i.asi = mul i64 %i.dg, %indvars.iv2291
  %i.asj = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.asi ; 8 uses
  %i.ask = mul i64 %i.dg, %i.arh
  %i.asl = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ask ; 8 uses
  %i.asm = mul i64 %i.dg, %i.arm
  %i.asn = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.asm ; 8 uses
  %i.aso = mul i64 %i.dg, %i.arr
  %i.asp = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.aso ; 8 uses
  %i.asq = mul i64 %i.dg, %indvars.iv2289
  %i.asr = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.asq ; 8 uses
  %i.ass = mul i64 %i.dg, %i.arx
  %i.ast = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ass ; 8 uses
  %i.asu = mul i64 %i.dg, %i.asb
  %i.asv = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.asu ; 8 uses
  %i.asw = mul i64 %i.dg, %i.asf
  %i.asx = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.asw ; 8 uses
  %i.asy = lshr i32 %i.arf, 2
  %i.asz = lshr exact i32 %i.arf, 1
  %i.ata = and i32 %i.asz, 1
  %i.atb = add nuw nsw i32 %i.ata, %i.asy
  %i.atc = zext nneg i32 %i.atb to i64            ; 2 uses
  %i.atd = mul i64 %i.dh, %i.atc
  %i.ate = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.atd ; 2 uses
  %i.atf = mul i64 %i.di, %i.atc
  %i.atg = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.atf ; 16 uses
  %i.ath = load i32, ptr %12, align 4, !tbaa !38  ; 2 uses
  %i.ati = icmp sgt i32 %i.ath, 7
  br i1 %i.ati, label %.lr.ph2112, label %.preheader2059

.preheader2059.loopexit:                          ; preds = %.lr.ph2112
  %i.atj = trunc nuw nsw i64 %indvars.iv.next2266 to i32
  br label %.preheader2059

.preheader2059:                                   ; preds = %.preheader2059.loopexit, %bb.d
  %i.atk = phi i32 [ %i.ath, %bb.d ], [ %i.auo, %.preheader2059.loopexit ] ; 2 uses
  %.01702.lcssa = phi ptr [ %i.ate, %bb.d ], [ %i.aum, %.preheader2059.loopexit ] ; 2 uses
  %.01694.lcssa = phi i32 [ 0, %bb.d ], [ %i.atj, %.preheader2059.loopexit ] ; 3 uses
  %i.atl = or disjoint i32 %.01694.lcssa, 3       ; 2 uses
  %i.atm = icmp slt i32 %i.atl, %i.atk
  br i1 %i.atm, label %.lr.ph2117.preheader, label %.preheader2058

.lr.ph2117.preheader:                             ; preds = %.preheader2059
  %i.atn = zext nneg i32 %.01694.lcssa to i64
  %i.ato = zext nneg i32 %i.atl to i64
  br label %.lr.ph2117

.lr.ph2112:                                       ; preds = %bb.d, %.lr.ph2112
  %indvars.iv2265 = phi i64 [ %indvars.iv.next2266, %.lr.ph2112 ], [ 0, %bb.d ] ; 9 uses
  %.017022109 = phi ptr [ %i.aum, %.lr.ph2112 ], [ %i.ate, %bb.d ] ; 9 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.are, i64 %indvars.iv2265
  %i.atq = load i64, ptr %i.atp, align 1, !tbaa !293
  store i64 %i.atq, ptr %.017022109, align 1, !tbaa !293
  %i.atr = getelementptr inbounds nuw i8, ptr %.017022109, i64 8
  %i.ats = getelementptr inbounds nuw i8, ptr %i.arv, i64 %indvars.iv2265
  %i.att = load i64, ptr %i.ats, align 1, !tbaa !293
  store i64 %i.att, ptr %i.atr, align 1, !tbaa !293
  %i.atu = getelementptr inbounds nuw i8, ptr %.017022109, i64 16
  %i.atv = getelementptr inbounds nuw i8, ptr %i.arj, i64 %indvars.iv2265
  %i.atw = load i64, ptr %i.atv, align 1, !tbaa !293
  store i64 %i.atw, ptr %i.atu, align 1, !tbaa !293
  %i.atx = getelementptr inbounds nuw i8, ptr %.017022109, i64 24
  %i.aty = getelementptr inbounds nuw i8, ptr %i.arz, i64 %indvars.iv2265
  %i.atz = load i64, ptr %i.aty, align 1, !tbaa !293
  store i64 %i.atz, ptr %i.atx, align 1, !tbaa !293
  %i.aua = getelementptr inbounds nuw i8, ptr %.017022109, i64 32
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aro, i64 %indvars.iv2265
  %i.auc = load i64, ptr %i.aub, align 1, !tbaa !293
  store i64 %i.auc, ptr %i.aua, align 1, !tbaa !293
  %i.aud = getelementptr inbounds nuw i8, ptr %.017022109, i64 40
  %i.aue = getelementptr inbounds nuw i8, ptr %i.asd, i64 %indvars.iv2265
  %i.auf = load i64, ptr %i.aue, align 1, !tbaa !293
  store i64 %i.auf, ptr %i.aud, align 1, !tbaa !293
  %i.aug = getelementptr inbounds nuw i8, ptr %.017022109, i64 48
  %i.auh = getelementptr inbounds nuw i8, ptr %i.art, i64 %indvars.iv2265
  %i.aui = load i64, ptr %i.auh, align 1, !tbaa !293
  store i64 %i.aui, ptr %i.aug, align 1, !tbaa !293
  %i.auj = getelementptr inbounds nuw i8, ptr %.017022109, i64 56
  %i.auk = getelementptr inbounds nuw i8, ptr %i.ash, i64 %indvars.iv2265
  %i.aul = load i64, ptr %i.auk, align 1, !tbaa !293
  store i64 %i.aul, ptr %i.auj, align 1, !tbaa !293
  %i.aum = getelementptr inbounds nuw i8, ptr %.017022109, i64 64 ; 2 uses
  %indvars.iv.next2266 = add nuw nsw i64 %indvars.iv2265, 8 ; 3 uses
  %i.aun = or disjoint i64 %indvars.iv.next2266, 7
  %i.auo = load i32, ptr %12, align 4, !tbaa !38  ; 2 uses
  %i.aup = sext i32 %i.auo to i64
  %i.auq = icmp slt i64 %i.aun, %i.aup
  br i1 %i.auq, label %.lr.ph2112, label %.preheader2059.loopexit, !llvm.loop !390

.preheader2058.loopexit:                          ; preds = %.lr.ph2117
  %i.aur = trunc nuw nsw i64 %indvars.iv.next2269 to i32
  br label %.preheader2058

.preheader2058:                                   ; preds = %.preheader2058.loopexit, %.preheader2059
  %i.aus = phi i32 [ %i.atk, %.preheader2059 ], [ %i.ayt, %.preheader2058.loopexit ] ; 2 uses
  %.11703.lcssa = phi ptr [ %.01702.lcssa, %.preheader2059 ], [ %i.ayr, %.preheader2058.loopexit ] ; 2 uses
  %.11695.lcssa = phi i32 [ %.01694.lcssa, %.preheader2059 ], [ %i.aur, %.preheader2058.loopexit ] ; 3 uses
  %i.aut = or disjoint i32 %.11695.lcssa, 1       ; 2 uses
  %i.auu = icmp slt i32 %i.aut, %i.aus
  br i1 %i.auu, label %.lr.ph2122.preheader, label %.preheader2057

.lr.ph2122.preheader:                             ; preds = %.preheader2058
  %i.auv = zext nneg i32 %.11695.lcssa to i64
  %i.auw = zext nneg i32 %i.aut to i64
  br label %.lr.ph2122

.lr.ph2117:                                       ; preds = %.lr.ph2117.preheader, %.lr.ph2117
  %indvars.iv2268 = phi i64 [ %i.atn, %.lr.ph2117.preheader ], [ %indvars.iv.next2269, %.lr.ph2117 ] ; 11 uses
  %i.aux = phi i64 [ %i.ato, %.lr.ph2117.preheader ], [ %i.ays, %.lr.ph2117 ] ; 8 uses
  %.117032115 = phi ptr [ %.01702.lcssa, %.lr.ph2117.preheader ], [ %i.ayr, %.lr.ph2117 ] ; 33 uses
  %i.auy = getelementptr inbounds nuw i8, ptr %i.are, i64 %indvars.iv2268
  %i.auz = load i8, ptr %i.auy, align 1, !tbaa !293
  store i8 %i.auz, ptr %.117032115, align 1, !tbaa !293
  %i.ava = or disjoint i64 %indvars.iv2268, 1     ; 8 uses
  %i.avb = getelementptr inbounds nuw i8, ptr %i.are, i64 %i.ava
  %i.avc = load i8, ptr %i.avb, align 1, !tbaa !293
  %i.avd = getelementptr inbounds nuw i8, ptr %.117032115, i64 1
  store i8 %i.avc, ptr %i.avd, align 1, !tbaa !293
  %i.ave = or disjoint i64 %indvars.iv2268, 2     ; 8 uses
  %i.avf = getelementptr inbounds nuw i8, ptr %i.are, i64 %i.ave
  %i.avg = load i8, ptr %i.avf, align 1, !tbaa !293
  %i.avh = getelementptr inbounds nuw i8, ptr %.117032115, i64 2
  store i8 %i.avg, ptr %i.avh, align 1, !tbaa !293
  %i.avi = getelementptr inbounds nuw i8, ptr %i.are, i64 %i.aux
  %i.avj = load i8, ptr %i.avi, align 1, !tbaa !293
  %i.avk = getelementptr inbounds nuw i8, ptr %.117032115, i64 3
  store i8 %i.avj, ptr %i.avk, align 1, !tbaa !293
  %i.avl = getelementptr inbounds nuw i8, ptr %i.arj, i64 %indvars.iv2268
  %i.avm = load i8, ptr %i.avl, align 1, !tbaa !293
  %i.avn = getelementptr inbounds nuw i8, ptr %.117032115, i64 4
  store i8 %i.avm, ptr %i.avn, align 1, !tbaa !293
  %i.avo = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.ava
  %i.avp = load i8, ptr %i.avo, align 1, !tbaa !293
  %i.avq = getelementptr inbounds nuw i8, ptr %.117032115, i64 5
  store i8 %i.avp, ptr %i.avq, align 1, !tbaa !293
  %i.avr = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.ave
  %i.avs = load i8, ptr %i.avr, align 1, !tbaa !293
  %i.avt = getelementptr inbounds nuw i8, ptr %.117032115, i64 6
  store i8 %i.avs, ptr %i.avt, align 1, !tbaa !293
  %i.avu = getelementptr inbounds nuw i8, ptr %i.arj, i64 %i.aux
  %i.avv = load i8, ptr %i.avu, align 1, !tbaa !293
  %i.avw = getelementptr inbounds nuw i8, ptr %.117032115, i64 7
  store i8 %i.avv, ptr %i.avw, align 1, !tbaa !293
  %i.avx = getelementptr inbounds nuw i8, ptr %i.arv, i64 %indvars.iv2268
  %i.avy = load i8, ptr %i.avx, align 1, !tbaa !293
  %i.avz = getelementptr inbounds nuw i8, ptr %.117032115, i64 8
  store i8 %i.avy, ptr %i.avz, align 1, !tbaa !293
  %i.awa = getelementptr inbounds nuw i8, ptr %i.arv, i64 %i.ava
  %i.awb = load i8, ptr %i.awa, align 1, !tbaa !293
  %i.awc = getelementptr inbounds nuw i8, ptr %.117032115, i64 9
  store i8 %i.awb, ptr %i.awc, align 1, !tbaa !293
  %i.awd = getelementptr inbounds nuw i8, ptr %i.arv, i64 %i.ave
  %i.awe = load i8, ptr %i.awd, align 1, !tbaa !293
  %i.awf = getelementptr inbounds nuw i8, ptr %.117032115, i64 10
  store i8 %i.awe, ptr %i.awf, align 1, !tbaa !293
  %i.awg = getelementptr inbounds nuw i8, ptr %i.arv, i64 %i.aux
  %i.awh = load i8, ptr %i.awg, align 1, !tbaa !293
  %i.awi = getelementptr inbounds nuw i8, ptr %.117032115, i64 11
  store i8 %i.awh, ptr %i.awi, align 1, !tbaa !293
  %i.awj = getelementptr inbounds nuw i8, ptr %i.arz, i64 %indvars.iv2268
  %i.awk = load i8, ptr %i.awj, align 1, !tbaa !293
  %i.awl = getelementptr inbounds nuw i8, ptr %.117032115, i64 12
  store i8 %i.awk, ptr %i.awl, align 1, !tbaa !293
  %i.awm = getelementptr inbounds nuw i8, ptr %i.arz, i64 %i.ava
  %i.awn = load i8, ptr %i.awm, align 1, !tbaa !293
  %i.awo = getelementptr inbounds nuw i8, ptr %.117032115, i64 13
  store i8 %i.awn, ptr %i.awo, align 1, !tbaa !293
  %i.awp = getelementptr inbounds nuw i8, ptr %i.arz, i64 %i.ave
  %i.awq = load i8, ptr %i.awp, align 1, !tbaa !293
  %i.awr = getelementptr inbounds nuw i8, ptr %.117032115, i64 14
  store i8 %i.awq, ptr %i.awr, align 1, !tbaa !293
  %i.aws = getelementptr inbounds nuw i8, ptr %i.arz, i64 %i.aux
  %i.awt = load i8, ptr %i.aws, align 1, !tbaa !293
  %i.awu = getelementptr inbounds nuw i8, ptr %.117032115, i64 15
  store i8 %i.awt, ptr %i.awu, align 1, !tbaa !293
  %i.awv = getelementptr inbounds nuw i8, ptr %i.aro, i64 %indvars.iv2268
  %i.aww = load i8, ptr %i.awv, align 1, !tbaa !293
  %i.awx = getelementptr inbounds nuw i8, ptr %.117032115, i64 16
  store i8 %i.aww, ptr %i.awx, align 1, !tbaa !293
  %i.awy = getelementptr inbounds nuw i8, ptr %i.aro, i64 %i.ava
  %i.awz = load i8, ptr %i.awy, align 1, !tbaa !293
  %i.axa = getelementptr inbounds nuw i8, ptr %.117032115, i64 17
  store i8 %i.awz, ptr %i.axa, align 1, !tbaa !293
end_hunk_2
