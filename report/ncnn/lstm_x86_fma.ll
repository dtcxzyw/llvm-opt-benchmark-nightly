Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_fma?download=true
inline.NumInlined: 28
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4ncnn12LSTM_x86_fma20create_pipeline_int8ERKNS_6OptionE:bb.a

bb.p:                                             ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.az) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit13

_ZN4ncnn3Mat7releaseEv.exit13:                    ; preds = %bb.p, %bb.o, %_ZN4ncnn3Mat7releaseEv.exit16, %bb.l, %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 0, ptr %i.be, align 8, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bd, i8 0, i64 20, i1 false)
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !22 ; 2 uses
  %.not.i8 = icmp eq ptr %i.bg, null
  br i1 %.not.i8, label %_ZN4ncnn3Mat7releaseEv.exit10, label %bb.q

bb.q:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit13
  %i.bh = atomicrmw add ptr %i.bg, i32 -1 acq_rel, align 4
  %i.bi = icmp eq i32 %i.bh, 1
  br i1 %i.bi, label %bb.r, label %_ZN4ncnn3Mat7releaseEv.exit10

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !23 ; 3 uses
  %.not3.i9 = icmp eq ptr %i.bk, null
  %i.bl = load ptr, ptr %i.r, align 8, !tbaa !24  ; 3 uses
  br i1 %.not3.i9, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(8) %i.bk, ptr noundef %i.bl), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit10

bb.t:                                             ; preds = %bb.r
  %.not.i20 = icmp eq ptr %i.bl, null
  br i1 %.not.i20, label %_ZN4ncnn3Mat7releaseEv.exit10, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.bl) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit10

_ZN4ncnn3Mat7releaseEv.exit10:                    ; preds = %bb.u, %bb.t, %_ZN4ncnn3Mat7releaseEv.exit13, %bb.q, %bb.s
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %i.bq, align 8, !tbaa !25
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 600
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.r, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bp, i8 0, i64 20, i1 false)
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !22 ; 2 uses
  %.not.i5 = icmp eq ptr %i.bs, null
  br i1 %.not.i5, label %_ZN4ncnn3Mat7releaseEv.exit7, label %bb.v

bb.v:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit10
  %i.bt = atomicrmw add ptr %i.bs, i32 -1 acq_rel, align 4
  %i.bu = icmp eq i32 %i.bt, 1
  br i1 %i.bu, label %bb.w, label %_ZN4ncnn3Mat7releaseEv.exit7

bb.w:                                             ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !23 ; 3 uses
  %.not3.i6 = icmp eq ptr %i.bw, null
  %i.bx = load ptr, ptr %i.q, align 8, !tbaa !24  ; 3 uses
  br i1 %.not3.i6, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef %i.bx), !inline_history !0
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
  store i64 0, ptr %i.cc, align 8, !tbaa !25
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cb, i8 0, i64 20, i1 false)
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !22 ; 2 uses
  %.not.i = icmp eq ptr %i.ce, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN4ncnn3Mat7releaseEv.exit7
  %i.cf = atomicrmw add ptr %i.ce, i32 -1 acq_rel, align 4
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.ab, label %_ZN4ncnn3Mat7releaseEv.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !23 ; 3 uses
  %.not3.i = icmp eq ptr %i.ci, null
  %i.cj = load ptr, ptr %i.s, align 8, !tbaa !24  ; 3 uses
  br i1 %.not3.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.ci, ptr noundef %i.cj), !inline_history !0
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
  store i64 0, ptr %i.co, align 8, !tbaa !25
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
  %i.e = load i32, ptr %2, align 4, !tbaa !43     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !43
  %i.h = load i32, ptr %0, align 4, !tbaa !43     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !43
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !43
  %i.k = load i32, ptr %i.a, align 4, !tbaa !43   ; 2 uses
  %.not410 = icmp sgt i32 %i.k, %i.j
  br i1 %.not410, label %._crit_edge412, label %.noexc231.lr.ph

.noexc231.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 348
  %i.n = load i32, ptr %i.m, align 4, !tbaa !63, !noalias !221
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !24, !noalias !221 ; 20 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25, !noalias !221 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.s = load i64, ptr %i.r, align 8, !tbaa !57, !noalias !221 ; 29 uses
  %factor.op.mul = mul i64 %i.q, %i.s
  %i.t = sext i32 %i.n to i64                     ; 26 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 376
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 420
  %i.w = load i32, ptr %i.v, align 4, !tbaa !63, !noalias !222
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !24, !noalias !222
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 440
  %i.z = load i64, ptr %i.y, align 8, !tbaa !25, !noalias !222
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 392
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !57, !noalias !222 ; 2 uses
  %factor.op.mul413 = mul i64 %i.z, %i.ab
  %i.ac = sext i32 %i.w to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 276
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !63, !noalias !223
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !24, !noalias !223 ; 20 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !25, !noalias !223 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !57, !noalias !223 ; 29 uses
  %factor.op.mul415 = mul i64 %i.ai, %i.ak
  %i.al = sext i32 %i.af to i64                   ; 26 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 664
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 708
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !63, !noalias !224
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !24, !noalias !224 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 728
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !25, !noalias !224 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 680
  %i.at = load i64, ptr %i.as, align 8, !tbaa !57, !noalias !224 ; 5 uses
  %factor.op.mul417 = mul i64 %i.ar, %i.at
  %i.au = sext i32 %i.ao to i64                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 736
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !24, !noalias !225
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 800
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !25, !noalias !225
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 752
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !57, !noalias !225
  %factor.op.mul419 = mul i64 %i.ay, %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 808
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 852
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !63, !noalias !226
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !24, !noalias !226 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 872
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !25, !noalias !226 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 824
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !57, !noalias !226 ; 5 uses
  %factor.op.mul421 = mul i64 %i.bg, %i.bi
  %i.bj = sext i32 %i.bd to i64                   ; 3 uses
  %i.bk = mul i64 %i.ab, %i.ac                    ; 3 uses
  %i.bl = shl i64 %i.bk, 1
  %i.bm = mul i64 %i.bk, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 220
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !45 ; 6 uses
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
  %i.cb = zext i32 %i.br to i64                   ; 13 uses
  %i.cc = zext i32 %i.bs to i64                   ; 13 uses
  %i.cd = sext i32 %i.k to i64                    ; 7 uses
  %i.ce = add nsw i32 %i.j, 1
  %invariant.op = add nsw i64 %i.bx, -1
  %i.cf = mul i64 %i.ak, %i.al
  %i.cg = add nsw i64 %i.ca, -1
  %i.ch = mul i64 %i.cg, %i.al
  %i.ci = mul i64 %i.ai, %i.cd                    ; 4 uses
  %i.cj = add i64 %i.ch, %i.ci
  %i.ck = mul i64 %i.ak, %i.cj
  %i.cl = mul i64 %i.ai, %i.ak
  %i.cm = mul i64 %i.ak, %i.al
  %i.cn = add nsw i64 %i.bx, %i.ca
  %i.co = add nsw i64 %i.cn, -1
  %i.cp = mul i64 %i.co, %i.al
  %i.cq = add i64 %i.cp, %i.ci
  %i.cr = mul i64 %i.ak, %i.cq
  %i.cs = mul i64 %i.ak, %i.al
  %i.ct = add nuw nsw i64 %i.ca, %i.cb
  %i.cu = add nsw i64 %i.ct, -1
  %i.cv = mul i64 %i.cu, %i.al
  %i.cw = add i64 %i.cv, %i.ci
  %i.cx = mul i64 %i.ak, %i.cw
  %i.cy = mul i64 %i.ak, %i.al
  %i.cz = add nuw nsw i64 %i.ca, %i.cc
  %i.da = add nsw i64 %i.cz, -1
  %i.db = mul i64 %i.da, %i.al
  %i.dc = add i64 %i.db, %i.ci
  %i.dd = mul i64 %i.ak, %i.dc
  %i.de = mul i64 %i.ak, %i.al
  %i.df = mul i64 %i.s, %i.t
  %i.dg = add nsw i64 %i.ca, -1
  %i.dh = mul i64 %i.dg, %i.t
  %i.di = mul i64 %i.q, %i.cd                     ; 4 uses
  %i.dj = add i64 %i.dh, %i.di
  %i.dk = mul i64 %i.s, %i.dj
  %i.dl = mul i64 %i.q, %i.s
  %i.dm = mul i64 %i.s, %i.t
  %i.dn = add nsw i64 %i.bx, %i.ca
  %i.do = add nsw i64 %i.dn, -1
  %i.dp = mul i64 %i.do, %i.t
  %i.dq = add i64 %i.dp, %i.di
  %i.dr = mul i64 %i.s, %i.dq
  %i.ds = mul i64 %i.s, %i.t
  %i.dt = add nuw nsw i64 %i.ca, %i.cb
  %i.du = add nsw i64 %i.dt, -1
  %i.dv = mul i64 %i.du, %i.t
  %i.dw = add i64 %i.dv, %i.di
  %i.dx = mul i64 %i.s, %i.dw
  %i.dy = mul i64 %i.s, %i.t
  %i.dz = add nuw nsw i64 %i.ca, %i.cc
  %i.ea = add nsw i64 %i.dz, -1
  %i.eb = mul i64 %i.ea, %i.t
  %i.ec = add i64 %i.eb, %i.di
  %i.ed = mul i64 %i.s, %i.ec
  %i.ee = mul i64 %i.s, %i.t
  %i.ef = mul i64 %i.ak, %i.al
  %i.eg = mul i64 %i.bi, %i.bj
  %i.eh = add nsw i64 %i.bx, -2                   ; 4 uses
  %i.ei = lshr i64 %i.eh, 1                       ; 2 uses
  %i.ej = mul i64 %i.ei, %i.al
  %i.ek = shl i64 %i.ej, 1
  %i.el = mul i64 %i.ai, %i.cd                    ; 15 uses
  %i.em = add i64 %i.ek, %i.el
  %i.en = mul i64 %i.ak, %i.em
  %i.eo = mul i64 %i.ai, %i.ak
  %i.ep = and i64 %i.eh, -2                       ; 5 uses
  %i.eq = add nsw i64 %i.ep, %i.ca
  %i.er = mul i64 %i.eq, %i.al
  %i.es = add i64 %i.er, %i.el
  %i.et = mul i64 %i.ak, %i.es
  %i.eu = mul nsw i64 %i.al, %i.ca
  %i.ev = add i64 %i.el, %i.eu
  %i.ew = mul i64 %i.ak, %i.ev
  %i.ex = add nsw i64 %i.ep, %i.cb
  %i.ey = mul i64 %i.ex, %i.al
  %i.ez = add i64 %i.ey, %i.el
  %i.fa = mul i64 %i.ak, %i.ez
  %i.fb = mul nsw i64 %i.al, %i.cb
  %i.fc = add i64 %i.el, %i.fb
  %i.fd = mul i64 %i.ak, %i.fc
  %i.fe = add nsw i64 %i.ep, %i.cc
  %i.ff = mul i64 %i.fe, %i.al
  %i.fg = add i64 %i.ff, %i.el
  %i.fh = mul i64 %i.ak, %i.fg
  %i.fi = mul nsw i64 %i.al, %i.cc
  %i.fj = add i64 %i.el, %i.fi
  %i.fk = mul i64 %i.ak, %i.fj
  %i.fl = or i64 %i.eh, 1
  %i.fm = mul i64 %i.fl, %i.al
  %i.fn = add i64 %i.fm, %i.el
  %i.fo = mul i64 %i.ak, %i.fn
  %i.fp = add i64 %i.el, %i.al
  %i.fq = mul i64 %i.ak, %i.fp
  %i.fr = add nsw i64 %i.ep, %i.ca
  %i.fs = add nsw i64 %i.fr, 1
  %i.ft = mul i64 %i.fs, %i.al
  %i.fu = add i64 %i.ft, %i.el
  %i.fv = mul i64 %i.ak, %i.fu
  %i.fw = add nuw nsw i64 %i.ca, 1
  %i.fx = mul i64 %i.fw, %i.al
  %i.fy = add i64 %i.fx, %i.el
  %i.fz = mul i64 %i.ak, %i.fy
  %i.ga = add nsw i64 %i.eh, %i.cb
  %i.gb = or i64 %i.ga, 1
  %i.gc = mul i64 %i.gb, %i.al
  %i.gd = add i64 %i.gc, %i.el
  %i.ge = mul i64 %i.ak, %i.gd
  %i.gf = or disjoint i64 %i.cb, 1
  %i.gg = mul nsw i64 %i.gf, %i.al
  %i.gh = add i64 %i.gg, %i.el
  %i.gi = mul i64 %i.ak, %i.gh
  %i.gj = add nsw i64 %i.ep, %i.cc
  %i.gk = add nsw i64 %i.gj, 1
  %i.gl = mul i64 %i.gk, %i.al
  %i.gm = add i64 %i.gl, %i.el
  %i.gn = mul i64 %i.ak, %i.gm
  %i.go = add nuw nsw i64 %i.cc, 1
  %i.gp = mul i64 %i.go, %i.al
  %i.gq = add i64 %i.gp, %i.el
  %i.gr = mul i64 %i.ak, %i.gq
  %i.gs = mul i64 %i.ei, %i.bj
  %i.gt = mul i64 %i.bg, %i.cd
  %i.gu = add i64 %i.gs, %i.gt
  %i.gv = mul i64 %i.bi, %i.gu
  %i.gw = mul i64 %i.bg, %i.bi
  %i.gx = mul i64 %i.s, %i.t
  %i.gy = mul i64 %i.at, %i.au
  %i.gz = add nsw i64 %i.bx, -2                   ; 4 uses
  %i.ha = lshr i64 %i.gz, 1                       ; 2 uses
  %i.hb = mul i64 %i.ha, %i.t
  %i.hc = shl i64 %i.hb, 1
  %i.hd = mul i64 %i.q, %i.cd                     ; 15 uses
  %i.he = add i64 %i.hc, %i.hd
  %i.hf = mul i64 %i.s, %i.he
  %i.hg = mul i64 %i.q, %i.s
  %i.hh = and i64 %i.gz, -2                       ; 5 uses
  %i.hi = add nsw i64 %i.hh, %i.ca
  %i.hj = mul i64 %i.hi, %i.t
  %i.hk = add i64 %i.hj, %i.hd
  %i.hl = mul i64 %i.s, %i.hk
  %i.hm = mul nsw i64 %i.t, %i.ca
  %i.hn = add i64 %i.hd, %i.hm
  %i.ho = mul i64 %i.s, %i.hn
  %i.hp = add nsw i64 %i.hh, %i.cb
  %i.hq = mul i64 %i.hp, %i.t
  %i.hr = add i64 %i.hq, %i.hd
  %i.hs = mul i64 %i.s, %i.hr
  %i.ht = mul nsw i64 %i.t, %i.cb
  %i.hu = add i64 %i.hd, %i.ht
  %i.hv = mul i64 %i.s, %i.hu
  %i.hw = add nsw i64 %i.hh, %i.cc
  %i.hx = mul i64 %i.hw, %i.t
  %i.hy = add i64 %i.hx, %i.hd
  %i.hz = mul i64 %i.s, %i.hy
  %i.ia = mul nsw i64 %i.t, %i.cc
  %i.ib = add i64 %i.hd, %i.ia
  %i.ic = mul i64 %i.s, %i.ib
  %i.id = or i64 %i.gz, 1
  %i.ie = mul i64 %i.id, %i.t
  %i.if = add i64 %i.ie, %i.hd
  %i.ig = mul i64 %i.s, %i.if
  %i.ih = add i64 %i.hd, %i.t
  %i.ii = mul i64 %i.s, %i.ih
  %i.ij = add nsw i64 %i.hh, %i.ca
  %i.ik = add nsw i64 %i.ij, 1
  %i.il = mul i64 %i.ik, %i.t
  %i.im = add i64 %i.il, %i.hd
  %i.in = mul i64 %i.s, %i.im
  %i.io = add nuw nsw i64 %i.ca, 1
  %i.ip = mul i64 %i.io, %i.t
  %i.iq = add i64 %i.ip, %i.hd
  %i.ir = mul i64 %i.s, %i.iq
  %i.is = add nsw i64 %i.gz, %i.cb
  %i.it = or i64 %i.is, 1
  %i.iu = mul i64 %i.it, %i.t
  %i.iv = add i64 %i.iu, %i.hd
  %i.iw = mul i64 %i.s, %i.iv
  %i.ix = or disjoint i64 %i.cb, 1
  %i.iy = mul nsw i64 %i.ix, %i.t
  %i.iz = add i64 %i.iy, %i.hd
  %i.ja = mul i64 %i.s, %i.iz
  %i.jb = add nsw i64 %i.hh, %i.cc
  %i.jc = add nsw i64 %i.jb, 1
  %i.jd = mul i64 %i.jc, %i.t
  %i.je = add i64 %i.jd, %i.hd
  %i.jf = mul i64 %i.s, %i.je
  %i.jg = add nuw nsw i64 %i.cc, 1
  %i.jh = mul i64 %i.jg, %i.t
  %i.ji = add i64 %i.jh, %i.hd
  %i.jj = mul i64 %i.s, %i.ji
  %i.jk = mul i64 %i.ha, %i.au
  %i.jl = mul i64 %i.ar, %i.cd
  %i.jm = add i64 %i.jk, %i.jl
  %i.jn = mul i64 %i.at, %i.jm
  %i.jo = mul i64 %i.ar, %i.at
  %i.jp = getelementptr i8, ptr %i.o, i64 %i.ho
  %i.jq = getelementptr i8, ptr %i.o, i64 %i.hv
  %i.jr = getelementptr i8, ptr %i.o, i64 %i.ic
  %i.js = getelementptr i8, ptr %i.o, i64 %i.ii
  %i.jt = getelementptr i8, ptr %i.o, i64 %i.ir
  %i.ju = getelementptr i8, ptr %i.o, i64 %i.ja
  %i.jv = getelementptr i8, ptr %i.o, i64 %i.jj
  %i.jw = getelementptr i8, ptr %i.ag, i64 %i.ew
  %i.jx = getelementptr i8, ptr %i.ag, i64 %i.fd
  %i.jy = getelementptr i8, ptr %i.ag, i64 %i.fk
  %i.jz = getelementptr i8, ptr %i.ag, i64 %i.fq
  %i.ka = getelementptr i8, ptr %i.ag, i64 %i.fz
  %i.kb = getelementptr i8, ptr %i.ag, i64 %i.gi
  %i.kc = getelementptr i8, ptr %i.ag, i64 %i.gr
  %i.kd = getelementptr i8, ptr %i.o, i64 %i.dk
  %i.ke = getelementptr i8, ptr %i.o, i64 %i.dr
  %i.kf = getelementptr i8, ptr %i.o, i64 %i.dx
  %i.kg = getelementptr i8, ptr %i.o, i64 %i.ed
  %i.kh = getelementptr i8, ptr %i.ag, i64 %i.ck
  %i.ki = getelementptr i8, ptr %i.ag, i64 %i.cr
  %i.kj = getelementptr i8, ptr %i.ag, i64 %i.cx
  %i.kk = getelementptr i8, ptr %i.ag, i64 %i.dd
  %i.kl = getelementptr i8, ptr %i.be, i64 %i.gv
  %i.km = getelementptr i8, ptr %i.ag, i64 %i.gn
  %i.kn = getelementptr i8, ptr %i.ag, i64 %i.ge
  %i.ko = getelementptr i8, ptr %i.ag, i64 %i.fv
  %i.kp = getelementptr i8, ptr %i.ag, i64 %i.fo
  %i.kq = getelementptr i8, ptr %i.ag, i64 %i.fh
  %i.kr = getelementptr i8, ptr %i.ag, i64 %i.fa
  %i.ks = getelementptr i8, ptr %i.ag, i64 %i.et
  %i.kt = getelementptr i8, ptr %i.ag, i64 %i.en
  %i.ku = getelementptr i8, ptr %i.ap, i64 %i.jn
  %i.kv = getelementptr i8, ptr %i.o, i64 %i.jf
  %i.kw = getelementptr i8, ptr %i.o, i64 %i.iw
  %i.kx = getelementptr i8, ptr %i.o, i64 %i.in
  %i.ky = getelementptr i8, ptr %i.o, i64 %i.ig
  %i.kz = getelementptr i8, ptr %i.o, i64 %i.hz
  %i.la = getelementptr i8, ptr %i.o, i64 %i.hs
  %i.lb = getelementptr i8, ptr %i.o, i64 %i.hl
  %i.lc = getelementptr i8, ptr %i.o, i64 %i.hf
  %stride.check818 = icmp slt i64 %i.gy, 0
  %.mask = and i64 %i.gx, 4611686018427387904
  %stride.check819 = icmp ne i64 %.mask, 0
  %invariant.op874 = or i1 %stride.check818, %stride.check819
  %stride.check679 = icmp slt i64 %i.eg, 0
  %.mask867 = and i64 %i.ef, 4611686018427387904
  %stride.check680 = icmp ne i64 %.mask867, 0
  %invariant.op876 = or i1 %stride.check679, %stride.check680
  %stride.check561 = icmp slt i64 %i.df, 0
  %stride.check = icmp slt i64 %i.cf, 0
  br label %.noexc231

.noexc231:                                        ; preds = %.noexc231.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i64 [ 0, %.noexc231.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %indvars.iv448 = phi i64 [ %i.cd, %.noexc231.lr.ph ], [ %indvars.iv.next449, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.ld = mul i64 %i.hg, %indvar                  ; 15 uses
  %scevgep791.a = getelementptr i8, ptr %i.jp, i64 %i.ld
  %scevgep794.a = getelementptr i8, ptr %i.jq, i64 %i.ld
  %scevgep797.a = getelementptr i8, ptr %i.jr, i64 %i.ld
  %scevgep800.a = getelementptr i8, ptr %i.js, i64 %i.ld
  %scevgep803.a = getelementptr i8, ptr %i.jt, i64 %i.ld
  %scevgep806.a = getelementptr i8, ptr %i.ju, i64 %i.ld
  %scevgep809.a = getelementptr i8, ptr %i.jv, i64 %i.ld
  %i.le = mul i64 %i.eo, %indvar                  ; 15 uses
  %scevgep652.a = getelementptr i8, ptr %i.jw, i64 %i.le
  %scevgep655.a = getelementptr i8, ptr %i.jx, i64 %i.le
  %scevgep658.a = getelementptr i8, ptr %i.jy, i64 %i.le
  %scevgep661.a = getelementptr i8, ptr %i.jz, i64 %i.le
  %scevgep664.a = getelementptr i8, ptr %i.ka, i64 %i.le
  %scevgep667.a = getelementptr i8, ptr %i.kb, i64 %i.le
  %scevgep670.a = getelementptr i8, ptr %i.kc, i64 %i.le
  %i.lf = mul i64 %i.dl, %indvar                  ; 4 uses
  %scevgep543 = getelementptr i8, ptr %i.kd, i64 %i.lf
  %scevgep546.a = getelementptr i8, ptr %i.ke, i64 %i.lf
  %scevgep549.a = getelementptr i8, ptr %i.kf, i64 %i.lf
  %scevgep552.a = getelementptr i8, ptr %i.kg, i64 %i.lf
  %i.lg = mul i64 %i.cl, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.kh, i64 %i.lg
  %scevgep486 = getelementptr i8, ptr %i.ki, i64 %i.lg
  %scevgep489 = getelementptr i8, ptr %i.kj, i64 %i.lg
  %scevgep492 = getelementptr i8, ptr %i.kk, i64 %i.lg
  %.reass = mul i64 %factor.op.mul, %indvars.iv448
  %i.lh = getelementptr i8, ptr %i.o, i64 %.reass ; 17 uses
  %.reass414 = mul i64 %factor.op.mul413, %indvars.iv448
  %i.li = getelementptr inbounds nuw i8, ptr %i.x, i64 %.reass414 ; 6 uses
  %.reass416 = mul i64 %factor.op.mul415, %indvars.iv448
  %i.lj = getelementptr i8, ptr %i.ag, i64 %.reass416 ; 17 uses
  %.reass418 = mul i64 %factor.op.mul417, %indvars.iv448
  %i.lk = getelementptr i8, ptr %i.ap, i64 %.reass418 ; 11 uses
  %.reass420 = mul i64 %factor.op.mul419, %indvars.iv448
  %i.ll = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.reass420 ; 2 uses
  %.reass422 = mul i64 %factor.op.mul421, %indvars.iv448
  %i.lm = getelementptr i8, ptr %i.be, i64 %.reass422 ; 11 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.bk ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.bl ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.li, i64 %i.bm ; 3 uses
  br i1 %i.bp, label %.lr.ph396, label %.preheader388

.lr.ph396:                                        ; preds = %.noexc231
  %i.lq = mul i64 %i.gw, %indvar
  %scevgep671.a = getelementptr i8, ptr %i.kl, i64 %i.lq
  %scevgep668.a = getelementptr i8, ptr %i.km, i64 %i.le
  %scevgep665.a = getelementptr i8, ptr %i.kn, i64 %i.le
  %scevgep662.a = getelementptr i8, ptr %i.ko, i64 %i.le
  %scevgep659.a = getelementptr i8, ptr %i.kp, i64 %i.le
  %scevgep656.a = getelementptr i8, ptr %i.kq, i64 %i.le
  %scevgep653.a = getelementptr i8, ptr %i.kr, i64 %i.le
  %scevgep650.a = getelementptr i8, ptr %i.ks, i64 %i.le
  %scevgep648 = getelementptr i8, ptr %i.kt, i64 %i.le
  %i.lr = mul i64 %i.jo, %indvar
  %scevgep810.a = getelementptr i8, ptr %i.ku, i64 %i.lr
  %scevgep807.a = getelementptr i8, ptr %i.kv, i64 %i.ld
  %scevgep804.a = getelementptr i8, ptr %i.kw, i64 %i.ld
  %scevgep801.a = getelementptr i8, ptr %i.kx, i64 %i.ld
  %scevgep798.a = getelementptr i8, ptr %i.ky, i64 %i.ld
  %scevgep795.a = getelementptr i8, ptr %i.kz, i64 %i.ld
  %scevgep792.a = getelementptr i8, ptr %i.la, i64 %i.ld
  %scevgep789.a = getelementptr i8, ptr %i.lb, i64 %i.ld
  %scevgep787 = getelementptr i8, ptr %i.lc, i64 %i.ld
  %i.ls = load i32, ptr %4, align 4, !tbaa !43    ; 3 uses
  %i.lt = icmp sgt i32 %i.ls, 0
  %i.lu = load i32, ptr %i.bw, align 8, !tbaa !46 ; 3 uses
  %i.lv = icmp sgt i32 %i.lu, 0
  %wide.trip.count = zext i32 %i.ls to i64        ; 5 uses
  %wide.trip.count428 = zext i32 %i.lu to i64     ; 5 uses
  %i.lw = shl nuw nsw i64 %wide.trip.count428, 2  ; 8 uses
  %scevgep649 = getelementptr i8, ptr %scevgep648, i64 %i.lw
  %scevgep651 = getelementptr i8, ptr %scevgep650.a, i64 %i.lw
  %scevgep654 = getelementptr i8, ptr %scevgep653.a, i64 %i.lw
  %scevgep657 = getelementptr i8, ptr %scevgep656.a, i64 %i.lw
  %scevgep660 = getelementptr i8, ptr %scevgep659.a, i64 %i.lw
  %scevgep663 = getelementptr i8, ptr %scevgep662.a, i64 %i.lw
  %scevgep666 = getelementptr i8, ptr %scevgep665.a, i64 %i.lw
  %scevgep669 = getelementptr i8, ptr %scevgep668.a, i64 %i.lw
  %i.lx = shl nuw nsw i64 %wide.trip.count428, 5
  %scevgep672 = getelementptr i8, ptr %scevgep671.a, i64 %i.lx ; 8 uses
  %i.ly = shl nuw nsw i64 %wide.trip.count, 2     ; 8 uses
  %scevgep788 = getelementptr i8, ptr %scevgep787, i64 %i.ly
  %scevgep790 = getelementptr i8, ptr %scevgep789.a, i64 %i.ly
  %scevgep793 = getelementptr i8, ptr %scevgep792.a, i64 %i.ly
  %scevgep796 = getelementptr i8, ptr %scevgep795.a, i64 %i.ly
  %scevgep799 = getelementptr i8, ptr %scevgep798.a, i64 %i.ly
  %scevgep802 = getelementptr i8, ptr %scevgep801.a, i64 %i.ly
  %scevgep805 = getelementptr i8, ptr %scevgep804.a, i64 %i.ly
  %scevgep808 = getelementptr i8, ptr %scevgep807.a, i64 %i.ly
  %i.lz = shl nuw nsw i64 %wide.trip.count, 5
  %scevgep811 = getelementptr i8, ptr %scevgep810.a, i64 %i.lz ; 8 uses
  %min.iters.check813 = icmp ult i32 %i.ls, 16
  %bound0815 = icmp ult ptr %i.lk, %scevgep808
  %bound1816 = icmp ult ptr %scevgep809.a, %scevgep811
  %found.conflict817 = and i1 %bound0815, %bound1816
  %.reass875 = or i1 %found.conflict817, %invariant.op874
  %bound0820 = icmp ult ptr %i.lk, %scevgep805
  %bound1821 = icmp ult ptr %scevgep806.a, %scevgep811
  %found.conflict822 = and i1 %bound0820, %bound1821
  %conflict.rdx823 = or i1 %.reass875, %found.conflict822
  %bound0824 = icmp ult ptr %i.lk, %scevgep802
  %bound1825 = icmp ult ptr %scevgep803.a, %scevgep811
  %found.conflict826 = and i1 %bound0824, %bound1825
  %conflict.rdx827 = or i1 %conflict.rdx823, %found.conflict826
  %bound0828 = icmp ult ptr %i.lk, %scevgep799
  %bound1829 = icmp ult ptr %scevgep800.a, %scevgep811
  %found.conflict830 = and i1 %bound0828, %bound1829
  %conflict.rdx831 = or i1 %conflict.rdx827, %found.conflict830
  %bound0832 = icmp ult ptr %i.lk, %scevgep796
  %bound1833 = icmp ult ptr %scevgep797.a, %scevgep811
  %found.conflict834 = and i1 %bound0832, %bound1833
  %conflict.rdx835 = or i1 %conflict.rdx831, %found.conflict834
  %bound0836 = icmp ult ptr %i.lk, %scevgep793
  %bound1837 = icmp ult ptr %scevgep794.a, %scevgep811
  %found.conflict838 = and i1 %bound0836, %bound1837
  %conflict.rdx839 = or i1 %conflict.rdx835, %found.conflict838
  %bound0840 = icmp ult ptr %i.lk, %scevgep790
  %bound1841 = icmp ult ptr %scevgep791.a, %scevgep811
  %found.conflict842 = and i1 %bound0840, %bound1841
  %conflict.rdx843 = or i1 %conflict.rdx839, %found.conflict842
  %bound0844 = icmp ult ptr %i.lk, %scevgep788
  %bound1845 = icmp ult ptr %i.lh, %scevgep811
  %found.conflict846 = and i1 %bound0844, %bound1845
  %conflict.rdx847 = or i1 %conflict.rdx843, %found.conflict846
  %n.vec849 = and i64 %wide.trip.count, 2147483640 ; 4 uses
  %i.ma = shl nuw nsw i64 %n.vec849, 5
  %cmp.n864 = icmp eq i64 %n.vec849, %wide.trip.count
  %min.iters.check674 = icmp ult i32 %i.lu, 16
  %bound0676 = icmp ult ptr %i.lm, %scevgep669
  %bound1677 = icmp ult ptr %scevgep670.a, %scevgep672
  %found.conflict678 = and i1 %bound0676, %bound1677
  %.reass877 = or i1 %found.conflict678, %invariant.op876
  %bound0681 = icmp ult ptr %i.lm, %scevgep666
  %bound1682 = icmp ult ptr %scevgep667.a, %scevgep672
  %found.conflict683 = and i1 %bound0681, %bound1682
  %conflict.rdx684 = or i1 %.reass877, %found.conflict683
  %bound0685 = icmp ult ptr %i.lm, %scevgep663
  %bound1686 = icmp ult ptr %scevgep664.a, %scevgep672
  %found.conflict687 = and i1 %bound0685, %bound1686
  %conflict.rdx688 = or i1 %conflict.rdx684, %found.conflict687
  %bound0689 = icmp ult ptr %i.lm, %scevgep660
  %bound1690 = icmp ult ptr %scevgep661.a, %scevgep672
  %found.conflict691 = and i1 %bound0689, %bound1690
  %conflict.rdx692 = or i1 %conflict.rdx688, %found.conflict691
  %bound0693 = icmp ult ptr %i.lm, %scevgep657
  %bound1694 = icmp ult ptr %scevgep658.a, %scevgep672
  %found.conflict695 = and i1 %bound0693, %bound1694
  %conflict.rdx696 = or i1 %conflict.rdx692, %found.conflict695
  %bound0697 = icmp ult ptr %i.lm, %scevgep654
  %bound1698 = icmp ult ptr %scevgep655.a, %scevgep672
  %found.conflict699 = and i1 %bound0697, %bound1698
  %conflict.rdx700 = or i1 %conflict.rdx696, %found.conflict699
  %bound0701 = icmp ult ptr %i.lm, %scevgep651
  %bound1702 = icmp ult ptr %scevgep652.a, %scevgep672
  %found.conflict703 = and i1 %bound0701, %bound1702
  %conflict.rdx704 = or i1 %conflict.rdx700, %found.conflict703
  %bound0705 = icmp ult ptr %i.lm, %scevgep649
  %bound1706 = icmp ult ptr %i.lj, %scevgep672
  %found.conflict707 = and i1 %bound0705, %bound1706
  %conflict.rdx708 = or i1 %conflict.rdx704, %found.conflict707
  %n.vec710 = and i64 %wide.trip.count428, 2147483640 ; 4 uses
  %i.mb = shl nuw nsw i64 %n.vec710, 5
  %cmp.n725 = icmp eq i64 %n.vec710, %wide.trip.count428
  br label %bb.c

.preheader388.loopexit:                           ; preds = %._crit_edge
  %i.mc = trunc nuw nsw i64 %indvars.iv.next431 to i32
  br label %.preheader388

.preheader388:                                    ; preds = %.preheader388.loopexit, %.noexc231
  %.0182.lcssa = phi ptr [ %i.ll, %.noexc231 ], [ %i.oe, %.preheader388.loopexit ]
  %.0181.lcssa = phi i32 [ 0, %.noexc231 ], [ %i.mc, %.preheader388.loopexit ] ; 2 uses
  %i.md = icmp slt i32 %.0181.lcssa, %i.bo
  br i1 %i.md, label %.lr.ph409, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph409:                                        ; preds = %.preheader388
  %i.me = load i32, ptr %4, align 4, !tbaa !43    ; 3 uses
  %i.mf = icmp sgt i32 %i.me, 0
  %i.mg = load i32, ptr %i.bw, align 8, !tbaa !46 ; 3 uses
  %i.mh = icmp sgt i32 %i.mg, 0
  %i.mi = zext i32 %.0181.lcssa to i64            ; 9 uses
  %wide.trip.count436 = zext i32 %i.me to i64     ; 7 uses
  %wide.trip.count441 = zext i32 %i.mg to i64     ; 7 uses
  %i.mj = shl nuw nsw i64 %wide.trip.count441, 2  ; 4 uses
  %scevgep484 = getelementptr i8, ptr %scevgep, i64 %i.mj
  %i.mk = mul i64 %i.cm, %i.mi
  %scevgep485 = getelementptr i8, ptr %i.lj, i64 %i.mk
  %scevgep487 = getelementptr i8, ptr %scevgep486, i64 %i.mj
  %i.ml = add nsw i64 %i.bx, %i.mi
  %i.mm = mul i64 %i.cs, %i.ml
  %scevgep488 = getelementptr i8, ptr %i.lj, i64 %i.mm
  %scevgep490 = getelementptr i8, ptr %scevgep489, i64 %i.mj
  %i.mn = add nuw nsw i64 %i.cb, %i.mi
  %i.mo = mul i64 %i.cy, %i.mn
  %scevgep491 = getelementptr i8, ptr %i.lj, i64 %i.mo
  %scevgep493 = getelementptr i8, ptr %scevgep492, i64 %i.mj
  %i.mp = add nuw nsw i64 %i.cc, %i.mi
  %i.mq = mul i64 %i.de, %i.mp
  %scevgep494 = getelementptr i8, ptr %i.lj, i64 %i.mq
  %i.mr = shl nuw nsw i64 %wide.trip.count441, 4
  %scevgep495 = getelementptr i8, ptr %i.lm, i64 %i.mr
  %i.ms = shl nuw nsw i64 %wide.trip.count436, 2  ; 4 uses
  %scevgep544 = getelementptr i8, ptr %scevgep543, i64 %i.ms
  %i.mt = mul i64 %i.dm, %i.mi
  %scevgep545 = getelementptr i8, ptr %i.lh, i64 %i.mt
  %scevgep547 = getelementptr i8, ptr %scevgep546.a, i64 %i.ms
  %i.mu = add nsw i64 %i.bx, %i.mi
  %i.mv = mul i64 %i.ds, %i.mu
  %scevgep548 = getelementptr i8, ptr %i.lh, i64 %i.mv
  %scevgep550 = getelementptr i8, ptr %scevgep549.a, i64 %i.ms
  %i.mw = add nuw nsw i64 %i.cb, %i.mi
  %i.mx = mul i64 %i.dy, %i.mw
  %scevgep551 = getelementptr i8, ptr %i.lh, i64 %i.mx
  %scevgep553 = getelementptr i8, ptr %scevgep552.a, i64 %i.ms
  %i.my = add nuw nsw i64 %i.cc, %i.mi
  %i.mz = mul i64 %i.ee, %i.my
  %scevgep554 = getelementptr i8, ptr %i.lh, i64 %i.mz
  %i.na = shl nuw nsw i64 %wide.trip.count436, 4
  %i.nb = getelementptr i8, ptr %i.lk, i64 %i.na
  %min.iters.check558 = icmp ult i32 %i.me, 8
  %n.vec575 = and i64 %wide.trip.count436, 2147483640 ; 4 uses
  %i.nc = shl nuw nsw i64 %n.vec575, 4
  %cmp.n586 = icmp eq i64 %n.vec575, %wide.trip.count436
  %xtraiter = and i64 %wide.trip.count436, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.nd = add nsw i64 %wide.trip.count436, -1
  %min.iters.check = icmp ult i32 %i.mg, 8
  %n.vec = and i64 %wide.trip.count441, 2147483640 ; 4 uses
  %i.ne = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count441
  %xtraiter872 = and i64 %wide.trip.count441, 1
  %lcmp.mod873.not = icmp eq i64 %xtraiter872, 0
  %i.nf = add nsw i64 %wide.trip.count441, -1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph396, %._crit_edge
  %indvars.iv430 = phi i64 [ 0, %.lr.ph396 ], [ %indvars.iv.next431, %._crit_edge ] ; 12 uses
  %.0182394 = phi ptr [ %i.ll, %.lr.ph396 ], [ %i.oe, %._crit_edge ] ; 9 uses
  %i.ng = or disjoint i64 %indvars.iv430, 1       ; 6 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv430
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !61
  store float %i.ni, ptr %.0182394, align 4, !tbaa !61
  %i.nj = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv430
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !61
  %i.nl = getelementptr inbounds nuw i8, ptr %.0182394, i64 4
  store float %i.nk, ptr %i.nl, align 4, !tbaa !61
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %indvars.iv430
  %i.nn = load float, ptr %i.nm, align 4, !tbaa !61
  %i.no = getelementptr inbounds nuw i8, ptr %.0182394, i64 8
  store float %i.nn, ptr %i.no, align 4, !tbaa !61
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv430
  %i.nq = load float, ptr %i.np, align 4, !tbaa !61
  %i.nr = getelementptr inbounds nuw i8, ptr %.0182394, i64 12
  store float %i.nq, ptr %i.nr, align 4, !tbaa !61
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.ng
  %i.nt = load float, ptr %i.ns, align 4, !tbaa !61
  %i.nu = getelementptr inbounds nuw i8, ptr %.0182394, i64 16
  store float %i.nt, ptr %i.nu, align 4, !tbaa !61
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %i.ng
  %i.nw = load float, ptr %i.nv, align 4, !tbaa !61
  %i.nx = getelementptr inbounds nuw i8, ptr %.0182394, i64 20
  store float %i.nw, ptr %i.nx, align 4, !tbaa !61
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.ng
  %i.nz = load float, ptr %i.ny, align 4, !tbaa !61
  %i.oa = getelementptr inbounds nuw i8, ptr %.0182394, i64 24
  store float %i.nz, ptr %i.oa, align 4, !tbaa !61
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %i.ng
  %i.oc = load float, ptr %i.ob, align 4, !tbaa !61
  %i.od = getelementptr inbounds nuw i8, ptr %.0182394, i64 28
  store float %i.oc, ptr %i.od, align 4, !tbaa !61
  %i.oe = getelementptr inbounds nuw i8, ptr %.0182394, i64 32 ; 2 uses
  %i.of = mul i64 %i.bq, %indvars.iv430
  %i.og = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.of ; 2 uses
  %i.oh = add nuw nsw i64 %indvars.iv430, %i.ca   ; 3 uses
  %i.oi = mul i64 %i.bq, %i.oh
  %i.oj = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.oi ; 2 uses
  %i.ok = add nuw nsw i64 %indvars.iv430, %i.bz   ; 3 uses
  %i.ol = mul i64 %i.bq, %i.ok
  %i.om = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.ol ; 2 uses
  %i.on = add nuw nsw i64 %indvars.iv430, %i.by   ; 3 uses
  %i.oo = mul i64 %i.bq, %i.on
  %i.op = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.oo ; 2 uses
  %i.oq = mul i64 %i.bq, %i.ng
  %i.or = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.oq ; 2 uses
  %i.os = add nuw nsw i64 %i.oh, 1                ; 2 uses
  %i.ot = mul i64 %i.bq, %i.os
  %i.ou = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.ot ; 2 uses
  %i.ov = or disjoint i64 %i.ok, 1                ; 2 uses
  %i.ow = mul i64 %i.bq, %i.ov
  %i.ox = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.ow ; 2 uses
  %i.oy = add nuw nsw i64 %i.on, 1                ; 2 uses
  %i.oz = mul i64 %i.bq, %i.oy
  %i.pa = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.oz ; 2 uses
  %i.pb = mul i64 %i.bt, %indvars.iv430
  %i.pc = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.pb ; 2 uses
  %i.pd = mul i64 %i.bt, %i.oh
  %i.pe = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.pd ; 2 uses
  %i.pf = mul i64 %i.bt, %i.ok
  %i.pg = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.pf ; 2 uses
  %i.ph = mul i64 %i.bt, %i.on
  %i.pi = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.ph ; 2 uses
  %i.pj = mul i64 %i.bt, %i.ng
  %i.pk = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.pj ; 2 uses
  %i.pl = mul i64 %i.bt, %i.os
  %i.pm = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.pl ; 2 uses
  %i.pn = mul i64 %i.bt, %i.ov
  %i.po = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.pn ; 2 uses
  %i.pp = mul i64 %i.bt, %i.oy
  %i.pq = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.pp ; 2 uses
  %i.pr = lshr exact i64 %indvars.iv430, 1        ; 2 uses
  %i.ps = mul i64 %i.bv, %i.pr
  %i.pt = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.ps ; 3 uses
  br i1 %i.lt, label %.lr.ph.preheader, label %.preheader387

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.pu = mul i64 %i.bu, %i.pr
  %i.pv = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.pu ; 3 uses
  %brmerge = select i1 %min.iters.check813, i1 true, i1 %conflict.rdx847
  br i1 %brmerge, label %.lr.ph.preheader871, label %vector.ph848

vector.ph848:                                     ; preds = %.lr.ph.preheader
  %i.pw = getelementptr i8, ptr %i.pv, i64 %i.ma
  br label %vector.body850

vector.body850:                                   ; preds = %vector.body850, %vector.ph848
  %index851 = phi i64 [ 0, %vector.ph848 ], [ %index.next862, %vector.body850 ] ; 10 uses
  %i.px = shl i64 %index851, 5
  %next.gep852 = getelementptr i8, ptr %i.pv, i64 %i.px
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %index851
  %wide.load853 = load <8 x float>, ptr %i.py, align 4, !tbaa !61, !alias.scope !227
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %index851
  %wide.load854 = load <8 x float>, ptr %i.pz, align 4, !tbaa !61, !alias.scope !228
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %index851
  %wide.load855 = load <8 x float>, ptr %i.qa, align 4, !tbaa !61, !alias.scope !229
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %index851
  %wide.load856 = load <8 x float>, ptr %i.qb, align 4, !tbaa !61, !alias.scope !230
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %index851
  %wide.load857 = load <8 x float>, ptr %i.qc, align 4, !tbaa !61, !alias.scope !231
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %index851
  %wide.load858 = load <8 x float>, ptr %i.qd, align 4, !tbaa !61, !alias.scope !232
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %index851
  %wide.load859 = load <8 x float>, ptr %i.qe, align 4, !tbaa !61, !alias.scope !233
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %index851
  %wide.load860 = load <8 x float>, ptr %i.qf, align 4, !tbaa !61, !alias.scope !234
  %i.qg = shufflevector <8 x float> %wide.load853, <8 x float> %wide.load854, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qh = shufflevector <8 x float> %wide.load855, <8 x float> %wide.load856, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qi = shufflevector <8 x float> %wide.load857, <8 x float> %wide.load858, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qj = shufflevector <8 x float> %wide.load859, <8 x float> %wide.load860, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qk = shufflevector <16 x float> %i.qg, <16 x float> %i.qh, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.ql = shufflevector <16 x float> %i.qi, <16 x float> %i.qj, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec861 = shufflevector <32 x float> %i.qk, <32 x float> %i.ql, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec861, ptr %next.gep852, align 4, !tbaa !61, !alias.scope !235, !noalias !236
  %index.next862 = add nuw i64 %index851, 8       ; 2 uses
  %i.qm = icmp eq i64 %index.next862, %n.vec849
  br i1 %i.qm, label %middle.block863, label %vector.body850, !llvm.loop !189

middle.block863:                                  ; preds = %vector.body850
  br i1 %cmp.n864, label %.preheader387, label %.lr.ph.preheader871

.lr.ph.preheader871:                              ; preds = %.lr.ph.preheader, %middle.block863
  %indvars.iv.ph = phi i64 [ %n.vec849, %middle.block863 ], [ 0, %.lr.ph.preheader ]
  %.0180389.ph = phi ptr [ %i.pw, %middle.block863 ], [ %i.pv, %.lr.ph.preheader ]
  br label %.lr.ph

.preheader387:                                    ; preds = %.lr.ph, %middle.block863, %bb.c
  br i1 %i.lv, label %.lr.ph393.preheader, label %._crit_edge

.lr.ph393.preheader:                              ; preds = %.preheader387
  %brmerge878 = select i1 %min.iters.check674, i1 true, i1 %conflict.rdx708
  br i1 %brmerge878, label %.lr.ph393.preheader870, label %vector.ph709

vector.ph709:                                     ; preds = %.lr.ph393.preheader
  %i.qn = getelementptr i8, ptr %i.pt, i64 %i.mb
  br label %vector.body711

vector.body711:                                   ; preds = %vector.body711, %vector.ph709
  %index712 = phi i64 [ 0, %vector.ph709 ], [ %index.next723, %vector.body711 ] ; 10 uses
  %i.qo = shl i64 %index712, 5
  %next.gep713 = getelementptr i8, ptr %i.pt, i64 %i.qo
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %index712
  %wide.load714 = load <8 x float>, ptr %i.qp, align 4, !tbaa !61, !alias.scope !237
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %index712
  %wide.load715 = load <8 x float>, ptr %i.qq, align 4, !tbaa !61, !alias.scope !238
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %index712
  %wide.load716 = load <8 x float>, ptr %i.qr, align 4, !tbaa !61, !alias.scope !239
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %index712
  %wide.load717 = load <8 x float>, ptr %i.qs, align 4, !tbaa !61, !alias.scope !240
  %i.qt = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %index712
  %wide.load718 = load <8 x float>, ptr %i.qt, align 4, !tbaa !61, !alias.scope !241
  %i.qu = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %index712
  %wide.load719 = load <8 x float>, ptr %i.qu, align 4, !tbaa !61, !alias.scope !242
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %index712
  %wide.load720 = load <8 x float>, ptr %i.qv, align 4, !tbaa !61, !alias.scope !243
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %index712
  %wide.load721 = load <8 x float>, ptr %i.qw, align 4, !tbaa !61, !alias.scope !244
  %i.qx = shufflevector <8 x float> %wide.load714, <8 x float> %wide.load715, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qy = shufflevector <8 x float> %wide.load716, <8 x float> %wide.load717, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.qz = shufflevector <8 x float> %wide.load718, <8 x float> %wide.load719, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ra = shufflevector <8 x float> %wide.load720, <8 x float> %wide.load721, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.rb = shufflevector <16 x float> %i.qx, <16 x float> %i.qy, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.rc = shufflevector <16 x float> %i.qz, <16 x float> %i.ra, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec722 = shufflevector <32 x float> %i.rb, <32 x float> %i.rc, <64 x i32> <i32 0, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 1, i32 9, i32 17, i32 25, i32 33, i32 41, i32 49, i32 57, i32 2, i32 10, i32 18, i32 26, i32 34, i32 42, i32 50, i32 58, i32 3, i32 11, i32 19, i32 27, i32 35, i32 43, i32 51, i32 59, i32 4, i32 12, i32 20, i32 28, i32 36, i32 44, i32 52, i32 60, i32 5, i32 13, i32 21, i32 29, i32 37, i32 45, i32 53, i32 61, i32 6, i32 14, i32 22, i32 30, i32 38, i32 46, i32 54, i32 62, i32 7, i32 15, i32 23, i32 31, i32 39, i32 47, i32 55, i32 63>
  store <64 x float> %interleaved.vec722, ptr %next.gep713, align 4, !tbaa !61, !alias.scope !245, !noalias !246
  %index.next723 = add nuw i64 %index712, 8       ; 2 uses
  %i.rd = icmp eq i64 %index.next723, %n.vec710
  br i1 %i.rd, label %middle.block724, label %vector.body711, !llvm.loop !200

middle.block724:                                  ; preds = %vector.body711
  br i1 %cmp.n725, label %._crit_edge, label %.lr.ph393.preheader870

.lr.ph393.preheader870:                           ; preds = %.lr.ph393.preheader, %middle.block724
  %indvars.iv425.ph = phi i64 [ %n.vec710, %middle.block724 ], [ 0, %.lr.ph393.preheader ]
  %.0179391.ph = phi ptr [ %i.qn, %middle.block724 ], [ %i.pt, %.lr.ph393.preheader ]
  br label %.lr.ph393

.lr.ph:                                           ; preds = %.lr.ph.preheader871, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader871 ] ; 9 uses
  %.0180389 = phi ptr [ %i.sb, %.lr.ph ], [ %.0180389.ph, %.lr.ph.preheader871 ] ; 9 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %indvars.iv
  %i.rf = load float, ptr %i.re, align 4, !tbaa !61
  store float %i.rf, ptr %.0180389, align 4, !tbaa !61
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %i.oj, i64 %indvars.iv
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !61
  %i.ri = getelementptr inbounds nuw i8, ptr %.0180389, i64 4
  store float %i.rh, ptr %i.ri, align 4, !tbaa !61
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.om, i64 %indvars.iv
  %i.rk = load float, ptr %i.rj, align 4, !tbaa !61
  %i.rl = getelementptr inbounds nuw i8, ptr %.0180389, i64 8
  store float %i.rk, ptr %i.rl, align 4, !tbaa !61
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !61
  %i.ro = getelementptr inbounds nuw i8, ptr %.0180389, i64 12
  store float %i.rn, ptr %i.ro, align 4, !tbaa !61
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.or, i64 %indvars.iv
  %i.rq = load float, ptr %i.rp, align 4, !tbaa !61
  %i.rr = getelementptr inbounds nuw i8, ptr %.0180389, i64 16
  store float %i.rq, ptr %i.rr, align 4, !tbaa !61
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !61
  %i.ru = getelementptr inbounds nuw i8, ptr %.0180389, i64 20
  store float %i.rt, ptr %i.ru, align 4, !tbaa !61
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.ox, i64 %indvars.iv
  %i.rw = load float, ptr %i.rv, align 4, !tbaa !61
  %i.rx = getelementptr inbounds nuw i8, ptr %.0180389, i64 24
  store float %i.rw, ptr %i.rx, align 4, !tbaa !61
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %indvars.iv
  %i.rz = load float, ptr %i.ry, align 4, !tbaa !61
  %i.sa = getelementptr inbounds nuw i8, ptr %.0180389, i64 28
  store float %i.rz, ptr %i.sa, align 4, !tbaa !61
  %i.sb = getelementptr inbounds nuw i8, ptr %.0180389, i64 32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader387, label %.lr.ph, !llvm.loop !201

._crit_edge:                                      ; preds = %.lr.ph393, %middle.block724, %.preheader387
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 2 ; 3 uses
  %i.sc = icmp slt i64 %indvars.iv.next431, %invariant.op
  br i1 %i.sc, label %bb.c, label %.preheader388.loopexit, !llvm.loop !202

.lr.ph393:                                        ; preds = %.lr.ph393.preheader870, %.lr.ph393
  %indvars.iv425 = phi i64 [ %indvars.iv.next426, %.lr.ph393 ], [ %indvars.iv425.ph, %.lr.ph393.preheader870 ] ; 9 uses
  %.0179391 = phi ptr [ %i.ta, %.lr.ph393 ], [ %.0179391.ph, %.lr.ph393.preheader870 ] ; 9 uses
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.pc, i64 %indvars.iv425
  %i.se = load float, ptr %i.sd, align 4, !tbaa !61
  store float %i.se, ptr %.0179391, align 4, !tbaa !61
  %i.sf = getelementptr inbounds nuw [4 x i8], ptr %i.pe, i64 %indvars.iv425
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !61
  %i.sh = getelementptr inbounds nuw i8, ptr %.0179391, i64 4
  store float %i.sg, ptr %i.sh, align 4, !tbaa !61
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.pg, i64 %indvars.iv425
  %i.sj = load float, ptr %i.si, align 4, !tbaa !61
  %i.sk = getelementptr inbounds nuw i8, ptr %.0179391, i64 8
  store float %i.sj, ptr %i.sk, align 4, !tbaa !61
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %i.pi, i64 %indvars.iv425
  %i.sm = load float, ptr %i.sl, align 4, !tbaa !61
  %i.sn = getelementptr inbounds nuw i8, ptr %.0179391, i64 12
  store float %i.sm, ptr %i.sn, align 4, !tbaa !61
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %indvars.iv425
  %i.sp = load float, ptr %i.so, align 4, !tbaa !61
  %i.sq = getelementptr inbounds nuw i8, ptr %.0179391, i64 16
  store float %i.sp, ptr %i.sq, align 4, !tbaa !61
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %indvars.iv425
  %i.ss = load float, ptr %i.sr, align 4, !tbaa !61
  %i.st = getelementptr inbounds nuw i8, ptr %.0179391, i64 20
  store float %i.ss, ptr %i.st, align 4, !tbaa !61
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %indvars.iv425
  %i.sv = load float, ptr %i.su, align 4, !tbaa !61
  %i.sw = getelementptr inbounds nuw i8, ptr %.0179391, i64 24
  store float %i.sv, ptr %i.sw, align 4, !tbaa !61
  %i.sx = getelementptr inbounds nuw [4 x i8], ptr %i.pq, i64 %indvars.iv425
  %i.sy = load float, ptr %i.sx, align 4, !tbaa !61
  %i.sz = getelementptr inbounds nuw i8, ptr %.0179391, i64 28
  store float %i.sy, ptr %i.sz, align 4, !tbaa !61
  %i.ta = getelementptr inbounds nuw i8, ptr %.0179391, i64 32
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1 ; 2 uses
  %exitcond429.not = icmp eq i64 %indvars.iv.next426, %wide.trip.count428
  br i1 %exitcond429.not, label %._crit_edge, label %.lr.ph393, !llvm.loop !203

bb.d:                                             ; preds = %.lr.ph409, %._crit_edge406
  %indvars.iv443 = phi i64 [ %i.mi, %.lr.ph409 ], [ %indvars.iv.next444, %._crit_edge406 ] ; 11 uses
  %.1183407 = phi ptr [ %.0182.lcssa, %.lr.ph409 ], [ %i.tm, %._crit_edge406 ] ; 5 uses
  %i.tb = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %indvars.iv443
  %i.tc = load float, ptr %i.tb, align 4, !tbaa !61
  store float %i.tc, ptr %.1183407, align 4, !tbaa !61
  %i.td = getelementptr inbounds nuw [4 x i8], ptr %i.ln, i64 %indvars.iv443
  %i.te = load float, ptr %i.td, align 4, !tbaa !61
  %i.tf = getelementptr inbounds nuw i8, ptr %.1183407, i64 4
  store float %i.te, ptr %i.tf, align 4, !tbaa !61
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %indvars.iv443
  %i.th = load float, ptr %i.tg, align 4, !tbaa !61
  %i.ti = getelementptr inbounds nuw i8, ptr %.1183407, i64 8
  store float %i.th, ptr %i.ti, align 4, !tbaa !61
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.lp, i64 %indvars.iv443
  %i.tk = load float, ptr %i.tj, align 4, !tbaa !61
  %i.tl = getelementptr inbounds nuw i8, ptr %.1183407, i64 12
  store float %i.tk, ptr %i.tl, align 4, !tbaa !61
  %i.tm = getelementptr inbounds nuw i8, ptr %.1183407, i64 16
  %i.tn = mul i64 %i.bq, %indvars.iv443
  %i.to = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.tn ; 4 uses
  %i.tp = add nuw nsw i64 %indvars.iv443, %i.bx   ; 2 uses
  %i.tq = mul i64 %i.bq, %i.tp
  %i.tr = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.tq ; 4 uses
  %i.ts = add nuw nsw i64 %indvars.iv443, %i.cb   ; 2 uses
  %i.tt = mul i64 %i.bq, %i.ts
  %i.tu = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.tt ; 4 uses
  %i.tv = add nuw nsw i64 %indvars.iv443, %i.cc   ; 2 uses
  %i.tw = mul i64 %i.bq, %i.tv
  %i.tx = getelementptr inbounds nuw i8, ptr %i.lh, i64 %i.tw ; 4 uses
  %i.ty = mul i64 %i.bt, %indvars.iv443
  %i.tz = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.ty ; 4 uses
  %i.ua = mul i64 %i.bt, %i.tp
  %i.ub = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.ua ; 4 uses
  %i.uc = mul i64 %i.bt, %i.ts
  %i.ud = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.uc ; 4 uses
  %i.ue = mul i64 %i.bt, %i.tv
  %i.uf = getelementptr inbounds nuw i8, ptr %i.lj, i64 %i.ue ; 4 uses
  %i.ug = trunc i64 %indvars.iv443 to i32         ; 2 uses
  %i.uh = lshr i32 %i.ug, 1
  %i.ui = and i32 %i.ug, 1
  %i.uj = add nuw i32 %i.uh, %i.ui
  %i.uk = zext i32 %i.uj to i64                   ; 2 uses
  %i.ul = mul i64 %i.bv, %i.uk                    ; 2 uses
  %i.um = getelementptr i8, ptr %i.lm, i64 %i.ul  ; 8 uses
  br i1 %i.mf, label %.lr.ph402.preheader, label %.preheader

.lr.ph402.preheader:                              ; preds = %bb.d
  %i.un = mul i64 %i.bu, %i.uk                    ; 2 uses
  %i.uo = getelementptr i8, ptr %i.lk, i64 %i.un  ; 8 uses
  br i1 %min.iters.check558, label %.lr.ph402.preheader869, label %vector.memcheck557

vector.memcheck557:                               ; preds = %.lr.ph402.preheader
  %i.up = getelementptr i8, ptr %i.nb, i64 %i.un  ; 4 uses
  %bound0558 = icmp ult ptr %i.uo, %scevgep553
  %bound1559 = icmp ult ptr %scevgep554, %i.up
  %found.conflict560 = and i1 %bound0558, %bound1559
  %i.uq = or i1 %found.conflict560, %stride.check561
  %bound0562 = icmp ult ptr %i.uo, %scevgep550
  %bound1563 = icmp ult ptr %scevgep551, %i.up
  %found.conflict564 = and i1 %bound0562, %bound1563
  %conflict.rdx565 = or i1 %i.uq, %found.conflict564
  %bound0566 = icmp ult ptr %i.uo, %scevgep547
  %bound1567 = icmp ult ptr %scevgep548, %i.up
  %found.conflict568 = and i1 %bound0566, %bound1567
  %conflict.rdx569 = or i1 %conflict.rdx565, %found.conflict568
  %bound0570 = icmp ult ptr %i.uo, %scevgep544
  %bound1571 = icmp ult ptr %scevgep545, %i.up
  %found.conflict572 = and i1 %bound0570, %bound1571
  %conflict.rdx573 = or i1 %conflict.rdx569, %found.conflict572
  br i1 %conflict.rdx573, label %.lr.ph402.preheader869, label %vector.ph574

vector.ph574:                                     ; preds = %vector.memcheck557
  %i.ur = getelementptr i8, ptr %i.uo, i64 %i.nc
  br label %vector.body576

vector.body576:                                   ; preds = %vector.body576, %vector.ph574
  %index577 = phi i64 [ 0, %vector.ph574 ], [ %index.next584, %vector.body576 ] ; 6 uses
  %i.us = shl i64 %index577, 4
  %next.gep578 = getelementptr i8, ptr %i.uo, i64 %i.us
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %index577
  %wide.load579 = load <8 x float>, ptr %i.ut, align 4, !tbaa !61, !alias.scope !247
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %index577
  %wide.load580 = load <8 x float>, ptr %i.uu, align 4, !tbaa !61, !alias.scope !248
  %i.uv = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %index577
  %wide.load581 = load <8 x float>, ptr %i.uv, align 4, !tbaa !61, !alias.scope !249
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %index577
  %wide.load582 = load <8 x float>, ptr %i.uw, align 4, !tbaa !61, !alias.scope !250
  %i.ux = shufflevector <8 x float> %wide.load579, <8 x float> %wide.load580, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.uy = shufflevector <8 x float> %wide.load581, <8 x float> %wide.load582, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec583 = shufflevector <16 x float> %i.ux, <16 x float> %i.uy, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec583, ptr %next.gep578, align 4, !tbaa !61, !alias.scope !251, !noalias !252
  %index.next584 = add nuw i64 %index577, 8       ; 2 uses
  %i.uz = icmp eq i64 %index.next584, %n.vec575
  br i1 %i.uz, label %middle.block585, label %vector.body576, !llvm.loop !210

middle.block585:                                  ; preds = %vector.body576
  br i1 %cmp.n586, label %.preheader, label %.lr.ph402.preheader869

.lr.ph402.preheader869:                           ; preds = %vector.memcheck557, %.lr.ph402.preheader, %middle.block585
  %indvars.iv433.ph = phi i64 [ 0, %vector.memcheck557 ], [ 0, %.lr.ph402.preheader ], [ %n.vec575, %middle.block585 ] ; 7 uses
  %.0176399.ph = phi ptr [ %i.uo, %vector.memcheck557 ], [ %i.uo, %.lr.ph402.preheader ], [ %i.ur, %middle.block585 ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph402.prol.loopexit, label %.lr.ph402.prol

.lr.ph402.prol:                                   ; preds = %.lr.ph402.preheader869
  %i.va = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %indvars.iv433.ph
  %i.vb = load float, ptr %i.va, align 4, !tbaa !61
  store float %i.vb, ptr %.0176399.ph, align 4, !tbaa !61
  %i.vc = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %indvars.iv433.ph
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !61
  %i.ve = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 4
  store float %i.vd, ptr %i.ve, align 4, !tbaa !61
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv433.ph
  %i.vg = load float, ptr %i.vf, align 4, !tbaa !61
  %i.vh = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 8
  store float %i.vg, ptr %i.vh, align 4, !tbaa !61
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv433.ph
  %i.vj = load float, ptr %i.vi, align 4, !tbaa !61
  %i.vk = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 12
  store float %i.vj, ptr %i.vk, align 4, !tbaa !61
  %i.vl = getelementptr inbounds nuw i8, ptr %.0176399.ph, i64 16
  %indvars.iv.next434.prol = or disjoint i64 %indvars.iv433.ph, 1
  br label %.lr.ph402.prol.loopexit

.lr.ph402.prol.loopexit:                          ; preds = %.lr.ph402.prol, %.lr.ph402.preheader869
  %indvars.iv433.unr = phi i64 [ %indvars.iv433.ph, %.lr.ph402.preheader869 ], [ %indvars.iv.next434.prol, %.lr.ph402.prol ]
  %.0176399.unr = phi ptr [ %.0176399.ph, %.lr.ph402.preheader869 ], [ %i.vl, %.lr.ph402.prol ]
  %i.vm = icmp eq i64 %indvars.iv433.ph, %i.nd
  br i1 %i.vm, label %.preheader, label %.lr.ph402

.preheader:                                       ; preds = %.lr.ph402.prol.loopexit, %.lr.ph402, %middle.block585, %bb.d
  br i1 %i.mh, label %.lr.ph405.preheader, label %._crit_edge406

.lr.ph405.preheader:                              ; preds = %.preheader
  br i1 %min.iters.check, label %.lr.ph405.preheader868, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph405.preheader
  %i.vn = getelementptr i8, ptr %scevgep495, i64 %i.ul ; 4 uses
  %bound0 = icmp ult ptr %i.um, %scevgep493
  %bound1 = icmp ult ptr %scevgep494, %i.vn
  %found.conflict = and i1 %bound0, %bound1
  %i.vo = or i1 %found.conflict, %stride.check
  %bound0495 = icmp ult ptr %i.um, %scevgep490
  %bound1496 = icmp ult ptr %scevgep491, %i.vn
  %found.conflict497 = and i1 %bound0495, %bound1496
  %conflict.rdx = or i1 %i.vo, %found.conflict497
  %bound0498 = icmp ult ptr %i.um, %scevgep487
  %bound1499 = icmp ult ptr %scevgep488, %i.vn
  %found.conflict500 = and i1 %bound0498, %bound1499
  %conflict.rdx501 = or i1 %conflict.rdx, %found.conflict500
  %bound0502 = icmp ult ptr %i.um, %scevgep484
  %bound1503 = icmp ult ptr %scevgep485, %i.vn
  %found.conflict504 = and i1 %bound0502, %bound1503
  %conflict.rdx505 = or i1 %conflict.rdx501, %found.conflict504
  br i1 %conflict.rdx505, label %.lr.ph405.preheader868, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.vp = getelementptr i8, ptr %i.um, i64 %i.ne
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.vq = shl i64 %index, 4
  %next.gep = getelementptr i8, ptr %i.um, i64 %i.vq
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %index
  %wide.load = load <8 x float>, ptr %i.vr, align 4, !tbaa !61, !alias.scope !253
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %index
  %wide.load506 = load <8 x float>, ptr %i.vs, align 4, !tbaa !61, !alias.scope !254
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %index
  %wide.load507 = load <8 x float>, ptr %i.vt, align 4, !tbaa !61, !alias.scope !255
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %index
  %wide.load508 = load <8 x float>, ptr %i.vu, align 4, !tbaa !61, !alias.scope !256
  %i.vv = shufflevector <8 x float> %wide.load, <8 x float> %wide.load506, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.vw = shufflevector <8 x float> %wide.load507, <8 x float> %wide.load508, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.vv, <16 x float> %i.vw, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !61, !alias.scope !257, !noalias !258
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.vx = icmp eq i64 %index.next, %n.vec
  br i1 %i.vx, label %middle.block, label %vector.body, !llvm.loop !217

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge406, label %.lr.ph405.preheader868

.lr.ph405.preheader868:                           ; preds = %vector.memcheck, %.lr.ph405.preheader, %middle.block
  %indvars.iv438.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph405.preheader ], [ %n.vec, %middle.block ] ; 7 uses
  %.0175403.ph = phi ptr [ %i.um, %vector.memcheck ], [ %i.um, %.lr.ph405.preheader ], [ %i.vp, %middle.block ] ; 6 uses
  br i1 %lcmp.mod873.not, label %.lr.ph405.prol.loopexit, label %.lr.ph405.prol

.lr.ph405.prol:                                   ; preds = %.lr.ph405.preheader868
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %indvars.iv438.ph
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !61
  store float %i.vz, ptr %.0175403.ph, align 4, !tbaa !61
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv438.ph
  %i.wb = load float, ptr %i.wa, align 4, !tbaa !61
  %i.wc = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 4
  store float %i.wb, ptr %i.wc, align 4, !tbaa !61
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %indvars.iv438.ph
  %i.we = load float, ptr %i.wd, align 4, !tbaa !61
  %i.wf = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 8
  store float %i.we, ptr %i.wf, align 4, !tbaa !61
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %indvars.iv438.ph
  %i.wh = load float, ptr %i.wg, align 4, !tbaa !61
  %i.wi = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 12
  store float %i.wh, ptr %i.wi, align 4, !tbaa !61
  %i.wj = getelementptr inbounds nuw i8, ptr %.0175403.ph, i64 16
  %indvars.iv.next439.prol = or disjoint i64 %indvars.iv438.ph, 1
  br label %.lr.ph405.prol.loopexit

.lr.ph405.prol.loopexit:                          ; preds = %.lr.ph405.prol, %.lr.ph405.preheader868
  %indvars.iv438.unr = phi i64 [ %indvars.iv438.ph, %.lr.ph405.preheader868 ], [ %indvars.iv.next439.prol, %.lr.ph405.prol ]
  %.0175403.unr = phi ptr [ %.0175403.ph, %.lr.ph405.preheader868 ], [ %i.wj, %.lr.ph405.prol ]
  %i.wk = icmp eq i64 %indvars.iv438.ph, %i.nf
  br i1 %i.wk, label %._crit_edge406, label %.lr.ph405

.lr.ph402:                                        ; preds = %.lr.ph402.prol.loopexit, %.lr.ph402
  %indvars.iv433 = phi i64 [ %indvars.iv.next434.1, %.lr.ph402 ], [ %indvars.iv433.unr, %.lr.ph402.prol.loopexit ] ; 6 uses
  %.0176399 = phi ptr [ %i.xi, %.lr.ph402 ], [ %.0176399.unr, %.lr.ph402.prol.loopexit ] ; 9 uses
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %indvars.iv433
  %i.wm = load float, ptr %i.wl, align 4, !tbaa !61
  store float %i.wm, ptr %.0176399, align 4, !tbaa !61
  %i.wn = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %indvars.iv433
  %i.wo = load float, ptr %i.wn, align 4, !tbaa !61
  %i.wp = getelementptr inbounds nuw i8, ptr %.0176399, i64 4
  store float %i.wo, ptr %i.wp, align 4, !tbaa !61
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv433
  %i.wr = load float, ptr %i.wq, align 4, !tbaa !61
  %i.ws = getelementptr inbounds nuw i8, ptr %.0176399, i64 8
  store float %i.wr, ptr %i.ws, align 4, !tbaa !61
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv433
  %i.wu = load float, ptr %i.wt, align 4, !tbaa !61
  %i.wv = getelementptr inbounds nuw i8, ptr %.0176399, i64 12
  store float %i.wu, ptr %i.wv, align 4, !tbaa !61
  %i.ww = getelementptr inbounds nuw i8, ptr %.0176399, i64 16
  %indvars.iv.next434 = add nuw nsw i64 %indvars.iv433, 1 ; 4 uses
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.to, i64 %indvars.iv.next434
  %i.wy = load float, ptr %i.wx, align 4, !tbaa !61
  store float %i.wy, ptr %i.ww, align 4, !tbaa !61
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.tr, i64 %indvars.iv.next434
  %i.xa = load float, ptr %i.wz, align 4, !tbaa !61
  %i.xb = getelementptr inbounds nuw i8, ptr %.0176399, i64 20
  store float %i.xa, ptr %i.xb, align 4, !tbaa !61
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.tu, i64 %indvars.iv.next434
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !61
  %i.xe = getelementptr inbounds nuw i8, ptr %.0176399, i64 24
  store float %i.xd, ptr %i.xe, align 4, !tbaa !61
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.tx, i64 %indvars.iv.next434
  %i.xg = load float, ptr %i.xf, align 4, !tbaa !61
  %i.xh = getelementptr inbounds nuw i8, ptr %.0176399, i64 28
  store float %i.xg, ptr %i.xh, align 4, !tbaa !61
  %i.xi = getelementptr inbounds nuw i8, ptr %.0176399, i64 32
  %indvars.iv.next434.1 = add nuw nsw i64 %indvars.iv433, 2 ; 2 uses
  %exitcond437.not.1 = icmp eq i64 %indvars.iv.next434.1, %wide.trip.count436
  br i1 %exitcond437.not.1, label %.preheader, label %.lr.ph402, !llvm.loop !218

._crit_edge406:                                   ; preds = %.lr.ph405.prol.loopexit, %.lr.ph405, %middle.block, %.preheader
  %indvars.iv.next444 = add nuw nsw i64 %indvars.iv443, 1 ; 2 uses
  %exitcond447.not = icmp eq i64 %indvars.iv.next444, %i.ca
  br i1 %exitcond447.not, label %_ZN4ncnn3MatD2Ev.exit, label %bb.d, !llvm.loop !219

.lr.ph405:                                        ; preds = %.lr.ph405.prol.loopexit, %.lr.ph405
  %indvars.iv438 = phi i64 [ %indvars.iv.next439.1, %.lr.ph405 ], [ %indvars.iv438.unr, %.lr.ph405.prol.loopexit ] ; 6 uses
  %.0175403 = phi ptr [ %i.yg, %.lr.ph405 ], [ %.0175403.unr, %.lr.ph405.prol.loopexit ] ; 9 uses
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %indvars.iv438
  %i.xk = load float, ptr %i.xj, align 4, !tbaa !61
  store float %i.xk, ptr %.0175403, align 4, !tbaa !61
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv438
  %i.xm = load float, ptr %i.xl, align 4, !tbaa !61
  %i.xn = getelementptr inbounds nuw i8, ptr %.0175403, i64 4
  store float %i.xm, ptr %i.xn, align 4, !tbaa !61
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %indvars.iv438
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !61
  %i.xq = getelementptr inbounds nuw i8, ptr %.0175403, i64 8
  store float %i.xp, ptr %i.xq, align 4, !tbaa !61
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %indvars.iv438
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !61
  %i.xt = getelementptr inbounds nuw i8, ptr %.0175403, i64 12
  store float %i.xs, ptr %i.xt, align 4, !tbaa !61
  %i.xu = getelementptr inbounds nuw i8, ptr %.0175403, i64 16
  %indvars.iv.next439 = add nuw nsw i64 %indvars.iv438, 1 ; 4 uses
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %i.tz, i64 %indvars.iv.next439
  %i.xw = load float, ptr %i.xv, align 4, !tbaa !61
  store float %i.xw, ptr %i.xu, align 4, !tbaa !61
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.ub, i64 %indvars.iv.next439
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !61
  %i.xz = getelementptr inbounds nuw i8, ptr %.0175403, i64 20
  store float %i.xy, ptr %i.xz, align 4, !tbaa !61
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.ud, i64 %indvars.iv.next439
  %i.yb = load float, ptr %i.ya, align 4, !tbaa !61
  %i.yc = getelementptr inbounds nuw i8, ptr %.0175403, i64 24
  store float %i.yb, ptr %i.yc, align 4, !tbaa !61
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.uf, i64 %indvars.iv.next439
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !61
  %i.yf = getelementptr inbounds nuw i8, ptr %.0175403, i64 28
  store float %i.ye, ptr %i.yf, align 4, !tbaa !61
  %i.yg = getelementptr inbounds nuw i8, ptr %.0175403, i64 32
  %indvars.iv.next439.1 = add nuw nsw i64 %indvars.iv438, 2 ; 2 uses
  %exitcond442.not.1 = icmp eq i64 %indvars.iv.next439.1, %wide.trip.count441
  br i1 %exitcond442.not.1, label %._crit_edge406, label %.lr.ph405, !llvm.loop !220

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge406, %.preheader388
  %indvars.iv.next449 = add nsw i64 %indvars.iv448, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next449 to i32
  %exitcond451.not = icmp eq i32 %i.ce, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond451.not, label %._crit_edge412, label %.noexc231

._crit_edge412:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge412, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #7

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare !callback !71 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 -100, 1) i32 @_ZNK4ncnn12LSTM_x86_fma12forward_int8ERKNS_3MatERS1_RKNS_6OptionE(ptr nofree noundef nonnull readonly align 8 dereferenceable(1024) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
