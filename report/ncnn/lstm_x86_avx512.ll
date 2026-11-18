Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/lstm_x86_avx512?download=true
inline.NumInlined: 29
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN4ncnn15LSTM_x86_avx51220create_pipeline_int8ERKNS_6OptionE:bb.a
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !24 ; 2 uses
  %.not.i11 = icmp eq ptr %i.aw, null
  br i1 %.not.i11, label %_ZN4ncnn3Mat7releaseEv.exit13, label %bb.j

bb.j:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit16
  %i.ax = atomicrmw add ptr %i.aw, i32 -1 acq_rel, align 4
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %bb.k, label %_ZN4ncnn3Mat7releaseEv.exit13

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !25 ; 3 uses
  %.not3.i12 = icmp eq ptr %i.ba, null
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !26  ; 3 uses
  br i1 %.not3.i12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef %i.bb), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit13

bb.m:                                             ; preds = %bb.k
  %.not.i18 = icmp eq ptr %i.bb, null
  br i1 %.not.i18, label %_ZN4ncnn3Mat7releaseEv.exit13, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @free(ptr noundef nonnull %i.bb) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit13

_ZN4ncnn3Mat7releaseEv.exit13:                    ; preds = %bb.n, %bb.m, %_ZN4ncnn3Mat7releaseEv.exit16, %bb.j, %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 0, ptr %i.bg, align 8, !tbaa !27
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.t, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.bf, i8 0, i64 20, i1 false)
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !24 ; 2 uses
  %.not.i8 = icmp eq ptr %i.bi, null
  br i1 %.not.i8, label %_ZN4ncnn3Mat7releaseEv.exit10, label %bb.o

bb.o:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit13
  %i.bj = atomicrmw add ptr %i.bi, i32 -1 acq_rel, align 4
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %bb.p, label %_ZN4ncnn3Mat7releaseEv.exit10

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !25 ; 3 uses
  %.not3.i9 = icmp eq ptr %i.bm, null
  %i.bn = load ptr, ptr %i.r, align 8, !tbaa !26  ; 3 uses
  br i1 %.not3.i9, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.bm, ptr noundef %i.bn), !inline_history !0
  br label %_ZN4ncnn3Mat7releaseEv.exit10

bb.r:                                             ; preds = %bb.p
  %.not.i20 = icmp eq ptr %i.bn, null
  br i1 %.not.i20, label %_ZN4ncnn3Mat7releaseEv.exit10, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.bn) #9
  br label %_ZN4ncnn3Mat7releaseEv.exit10

_ZN4ncnn3Mat7releaseEv.exit10:                    ; preds = %bb.s, %bb.r, %_ZN4ncnn3Mat7releaseEv.exit13, %bb.o, %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 0, ptr %i.bs, align 8, !tbaa !27
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 600
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.r, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.br, i8 0, i64 20, i1 false)
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !24 ; 2 uses
  %.not.i5 = icmp eq ptr %i.bu, null
  br i1 %.not.i5, label %_ZN4ncnn3Mat7releaseEv.exit7, label %bb.t

bb.t:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit10
  %i.bv = atomicrmw add ptr %i.bu, i32 -1 acq_rel, align 4
  %i.bw = icmp eq i32 %i.bv, 1
  br i1 %i.bw, label %bb.u, label %_ZN4ncnn3Mat7releaseEv.exit7

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !25 ; 3 uses
  %.not3.i6 = icmp eq ptr %i.by, null
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !26  ; 3 uses
  br i1 %.not3.i6, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = load ptr, ptr %i.by, align 8, !tbaa !18
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %i.by, ptr noundef %i.bz), !inline_history !0
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
  store i64 0, ptr %i.ce, align 8, !tbaa !27
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 528
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.q, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.cd, i8 0, i64 20, i1 false)
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !24 ; 2 uses
  %.not.i = icmp eq ptr %i.cg, null
  br i1 %.not.i, label %_ZN4ncnn3Mat7releaseEv.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4ncnn3Mat7releaseEv.exit7
  %i.ch = atomicrmw add ptr %i.cg, i32 -1 acq_rel, align 4
  %i.ci = icmp eq i32 %i.ch, 1
  br i1 %i.ci, label %bb.z, label %_ZN4ncnn3Mat7releaseEv.exit

bb.z:                                             ; preds = %bb.y
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !25 ; 3 uses
  %.not3.i = icmp eq ptr %i.ck, null
  %i.cl = load ptr, ptr %i.s, align 8, !tbaa !26  ; 3 uses
  br i1 %.not3.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !18
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.ck, ptr noundef %i.cl), !inline_history !0
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
  store i64 0, ptr %i.cq, align 8, !tbaa !27
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
  %i.e = load i32, ptr %2, align 4, !tbaa !45     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i32 0, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 %i.g, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 1, ptr %i.c, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !45
  %i.h = load i32, ptr %0, align 4, !tbaa !45     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !45
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !45
  %i.k = load i32, ptr %i.a, align 4, !tbaa !45   ; 2 uses
  %.not410 = icmp sgt i32 %i.k, %i.j
  br i1 %.not410, label %._crit_edge412, label %.noexc231.lr.ph

.noexc231.lr.ph:                                  ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 304
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 348
  %i.n = load i32, ptr %i.m, align 4, !tbaa !65, !noalias !226
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !26, !noalias !226 ; 20 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 368
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27, !noalias !226 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 320
  %i.s = load i64, ptr %i.r, align 8, !tbaa !59, !noalias !226 ; 29 uses
  %factor.op.mul = mul i64 %i.q, %i.s
  %i.t = sext i32 %i.n to i64                     ; 26 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 376
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 420
  %i.w = load i32, ptr %i.v, align 4, !tbaa !65, !noalias !227
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !26, !noalias !227
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 440
  %i.z = load i64, ptr %i.y, align 8, !tbaa !27, !noalias !227
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 392
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !59, !noalias !227 ; 2 uses
  %factor.op.mul413 = mul i64 %i.z, %i.ab
  %i.ac = sext i32 %i.w to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 276
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !65, !noalias !228
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !26, !noalias !228 ; 20 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 296
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !27, !noalias !228 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !59, !noalias !228 ; 29 uses
  %factor.op.mul415 = mul i64 %i.ai, %i.ak
  %i.al = sext i32 %i.af to i64                   ; 26 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 664
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 708
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !65, !noalias !229
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !26, !noalias !229 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 728
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !27, !noalias !229 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 680
  %i.at = load i64, ptr %i.as, align 8, !tbaa !59, !noalias !229 ; 5 uses
  %factor.op.mul417 = mul i64 %i.ar, %i.at
  %i.au = sext i32 %i.ao to i64                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 736
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !26, !noalias !230
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 800
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !27, !noalias !230
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 752
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !59, !noalias !230
  %factor.op.mul419 = mul i64 %i.ay, %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 808
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 852
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !65, !noalias !231
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !26, !noalias !231 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 872
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !27, !noalias !231 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 824
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !59, !noalias !231 ; 5 uses
  %factor.op.mul421 = mul i64 %i.bg, %i.bi
  %i.bj = sext i32 %i.bd to i64                   ; 3 uses
  %i.bk = mul i64 %i.ab, %i.ac                    ; 3 uses
  %i.bl = shl i64 %i.bk, 1
  %i.bm = mul i64 %i.bk, 3
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 220
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !47 ; 6 uses
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
  %5 = mul i64 %i.ak, %i.al
  %i.cf = add nsw i64 %i.ca, -1
  %i.cg = mul i64 %i.cf, %i.al
  %i.ch = mul i64 %i.ai, %i.cd                    ; 4 uses
  %i.ci = add i64 %i.cg, %i.ch
  %i.cj = mul i64 %i.ak, %i.ci
  %i.ck = mul i64 %i.ai, %i.ak
  %i.cl = mul i64 %i.ak, %i.al
  %i.cm = add nsw i64 %i.bx, %i.ca
  %i.cn = add nsw i64 %i.cm, -1
  %i.co = mul i64 %i.cn, %i.al
  %i.cp = add i64 %i.co, %i.ch
  %i.cq = mul i64 %i.ak, %i.cp
  %i.cr = mul i64 %i.ak, %i.al
  %i.cs = add nuw nsw i64 %i.ca, %i.cb
  %i.ct = add nsw i64 %i.cs, -1
  %i.cu = mul i64 %i.ct, %i.al
  %i.cv = add i64 %i.cu, %i.ch
  %i.cw = mul i64 %i.ak, %i.cv
  %i.cx = mul i64 %i.ak, %i.al
  %i.cy = add nuw nsw i64 %i.ca, %i.cc
  %i.cz = add nsw i64 %i.cy, -1
  %i.da = mul i64 %i.cz, %i.al
  %i.db = add i64 %i.da, %i.ch
  %6 = mul i64 %i.ak, %i.db
  %i.dc = mul i64 %i.ak, %i.al
  %i.dd = mul i64 %i.s, %i.t
  %i.de = add nsw i64 %i.ca, -1
  %i.df = mul i64 %i.de, %i.t
  %i.dg = mul i64 %i.q, %i.cd                     ; 4 uses
  %i.dh = add i64 %i.df, %i.dg
  %i.di = mul i64 %i.s, %i.dh
  %i.dj = mul i64 %i.q, %i.s
  %i.dk = mul i64 %i.s, %i.t
  %i.dl = add nsw i64 %i.bx, %i.ca
  %i.dm = add nsw i64 %i.dl, -1
  %i.dn = mul i64 %i.dm, %i.t
  %i.do = add i64 %i.dn, %i.dg
  %i.dp = mul i64 %i.s, %i.do
  %i.dq = mul i64 %i.s, %i.t
  %i.dr = add nuw nsw i64 %i.ca, %i.cb
  %i.ds = add nsw i64 %i.dr, -1
  %i.dt = mul i64 %i.ds, %i.t
  %i.du = add i64 %i.dt, %i.dg
  %i.dv = mul i64 %i.s, %i.du
  %i.dw = mul i64 %i.s, %i.t
  %i.dx = add nuw nsw i64 %i.ca, %i.cc
  %i.dy = add nsw i64 %i.dx, -1
  %i.dz = mul i64 %i.dy, %i.t
  %i.ea = add i64 %i.dz, %i.dg
  %7 = mul i64 %i.s, %i.ea
  %8 = mul i64 %i.s, %i.t
  %i.eb = mul i64 %i.ak, %i.al
  %i.ec = mul i64 %i.bi, %i.bj
  %i.ed = add nsw i64 %i.bx, -2                   ; 4 uses
  %i.ee = lshr i64 %i.ed, 1                       ; 2 uses
  %i.ef = mul i64 %i.ee, %i.al
  %i.eg = shl i64 %i.ef, 1
  %i.eh = mul i64 %i.ai, %i.cd                    ; 15 uses
  %i.ei = add i64 %i.eg, %i.eh
  %i.ej = mul i64 %i.ak, %i.ei
  %i.ek = mul i64 %i.ai, %i.ak
  %i.el = and i64 %i.ed, -2                       ; 5 uses
  %i.em = add nsw i64 %i.el, %i.ca
  %i.en = mul i64 %i.em, %i.al
  %i.eo = add i64 %i.en, %i.eh
  %i.ep = mul i64 %i.ak, %i.eo
  %i.eq = mul nsw i64 %i.al, %i.ca
  %i.er = add i64 %i.eh, %i.eq
  %i.es = mul i64 %i.ak, %i.er
  %i.et = add nsw i64 %i.el, %i.cb
  %i.eu = mul i64 %i.et, %i.al
  %i.ev = add i64 %i.eu, %i.eh
  %i.ew = mul i64 %i.ak, %i.ev
  %i.ex = mul nsw i64 %i.al, %i.cb
  %i.ey = add i64 %i.eh, %i.ex
  %i.ez = mul i64 %i.ak, %i.ey
  %i.fa = add nsw i64 %i.el, %i.cc
  %i.fb = mul i64 %i.fa, %i.al
  %i.fc = add i64 %i.fb, %i.eh
  %i.fd = mul i64 %i.ak, %i.fc
  %i.fe = mul nsw i64 %i.al, %i.cc
  %i.ff = add i64 %i.eh, %i.fe
  %i.fg = mul i64 %i.ak, %i.ff
  %i.fh = or i64 %i.ed, 1
  %i.fi = mul i64 %i.fh, %i.al
  %i.fj = add i64 %i.fi, %i.eh
  %i.fk = mul i64 %i.ak, %i.fj
  %i.fl = add i64 %i.eh, %i.al
  %i.fm = mul i64 %i.ak, %i.fl
  %i.fn = add nsw i64 %i.el, %i.ca
  %i.fo = add nsw i64 %i.fn, 1
  %i.fp = mul i64 %i.fo, %i.al
  %i.fq = add i64 %i.fp, %i.eh
  %i.fr = mul i64 %i.ak, %i.fq
  %i.fs = add nuw nsw i64 %i.ca, 1
  %i.ft = mul i64 %i.fs, %i.al
  %i.fu = add i64 %i.ft, %i.eh
  %i.fv = mul i64 %i.ak, %i.fu
  %i.fw = add nsw i64 %i.ed, %i.cb
  %i.fx = or i64 %i.fw, 1
  %i.fy = mul i64 %i.fx, %i.al
  %i.fz = add i64 %i.fy, %i.eh
  %i.ga = mul i64 %i.ak, %i.fz
  %i.gb = or disjoint i64 %i.cb, 1
  %i.gc = mul nsw i64 %i.gb, %i.al
  %i.gd = add i64 %i.gc, %i.eh
  %i.ge = mul i64 %i.ak, %i.gd
  %9 = add nsw i64 %i.el, %i.cc
  %10 = add nsw i64 %9, 1
  %11 = mul i64 %10, %i.al
  %i.gf = add i64 %11, %i.eh
  %i.gg = mul i64 %i.ak, %i.gf
  %i.gh = add nuw nsw i64 %i.cc, 1
  %i.gi = mul i64 %i.gh, %i.al
  %i.gj = add i64 %i.gi, %i.eh
  %i.gk = mul i64 %i.ak, %i.gj
  %12 = mul i64 %i.ee, %i.bj
  %i.gl = mul i64 %i.bg, %i.cd
  %13 = add i64 %12, %i.gl
  %i.gm = mul i64 %i.bi, %13
  %14 = mul i64 %i.bg, %i.bi
  %i.gn = mul i64 %i.s, %i.t
  %i.go = mul i64 %i.at, %i.au
  %i.gp = add nsw i64 %i.bx, -2                   ; 4 uses
  %i.gq = lshr i64 %i.gp, 1                       ; 2 uses
  %i.gr = mul i64 %i.gq, %i.t
  %i.gs = shl i64 %i.gr, 1
  %i.gt = mul i64 %i.q, %i.cd                     ; 15 uses
  %i.gu = add i64 %i.gs, %i.gt
  %i.gv = mul i64 %i.s, %i.gu
  %i.gw = mul i64 %i.q, %i.s
  %i.gx = and i64 %i.gp, -2                       ; 5 uses
  %i.gy = add nsw i64 %i.gx, %i.ca
  %i.gz = mul i64 %i.gy, %i.t
  %i.ha = add i64 %i.gz, %i.gt
  %i.hb = mul i64 %i.s, %i.ha
  %i.hc = mul nsw i64 %i.t, %i.ca
  %i.hd = add i64 %i.gt, %i.hc
  %i.he = mul i64 %i.s, %i.hd
  %i.hf = add nsw i64 %i.gx, %i.cb
  %i.hg = mul i64 %i.hf, %i.t
  %i.hh = add i64 %i.hg, %i.gt
  %i.hi = mul i64 %i.s, %i.hh
  %i.hj = mul nsw i64 %i.t, %i.cb
  %i.hk = add i64 %i.gt, %i.hj
  %i.hl = mul i64 %i.s, %i.hk
  %i.hm = add nsw i64 %i.gx, %i.cc
  %i.hn = mul i64 %i.hm, %i.t
  %i.ho = add i64 %i.hn, %i.gt
  %i.hp = mul i64 %i.s, %i.ho
  %i.hq = mul nsw i64 %i.t, %i.cc
  %i.hr = add i64 %i.gt, %i.hq
  %i.hs = mul i64 %i.s, %i.hr
  %i.ht = or i64 %i.gp, 1
  %i.hu = mul i64 %i.ht, %i.t
  %i.hv = add i64 %i.hu, %i.gt
  %i.hw = mul i64 %i.s, %i.hv
  %i.hx = add i64 %i.gt, %i.t
  %i.hy = mul i64 %i.s, %i.hx
  %i.hz = add nsw i64 %i.gx, %i.ca
  %i.ia = add nsw i64 %i.hz, 1
  %i.ib = mul i64 %i.ia, %i.t
  %i.ic = add i64 %i.ib, %i.gt
  %i.id = mul i64 %i.s, %i.ic
  %i.ie = add nuw nsw i64 %i.ca, 1
  %i.if = mul i64 %i.ie, %i.t
  %i.ig = add i64 %i.if, %i.gt
  %i.ih = mul i64 %i.s, %i.ig
  %i.ii = add nsw i64 %i.gp, %i.cb
  %i.ij = or i64 %i.ii, 1
  %i.ik = mul i64 %i.ij, %i.t
  %i.il = add i64 %i.ik, %i.gt
  %i.im = mul i64 %i.s, %i.il
  %i.in = or disjoint i64 %i.cb, 1
  %i.io = mul nsw i64 %i.in, %i.t
  %i.ip = add i64 %i.io, %i.gt
  %i.iq = mul i64 %i.s, %i.ip
  %i.ir = add nsw i64 %i.gx, %i.cc
  %i.is = add nsw i64 %i.ir, 1
  %i.it = mul i64 %i.is, %i.t
  %i.iu = add i64 %i.it, %i.gt
  %i.iv = mul i64 %i.s, %i.iu
  %i.iw = add nuw nsw i64 %i.cc, 1
  %i.ix = mul i64 %i.iw, %i.t
  %i.iy = add i64 %i.ix, %i.gt
  %i.iz = mul i64 %i.s, %i.iy
  %i.ja = mul i64 %i.gq, %i.au
  %i.jb = mul i64 %i.ar, %i.cd
  %i.jc = add i64 %i.ja, %i.jb
  %i.jd = mul i64 %i.at, %i.jc
  %i.je = mul i64 %i.ar, %i.at
  %i.jf = getelementptr i8, ptr %i.o, i64 %i.di
  %i.jg = getelementptr i8, ptr %i.o, i64 %i.dp
  %i.jh = getelementptr i8, ptr %i.o, i64 %i.dv
  %i.ji = getelementptr i8, ptr %i.o, i64 %7
  %i.jj = getelementptr i8, ptr %i.ag, i64 %i.cj
  %i.jk = getelementptr i8, ptr %i.ag, i64 %i.cq
  %i.jl = getelementptr i8, ptr %i.ag, i64 %i.cw
  %i.jm = getelementptr i8, ptr %i.ag, i64 %6
  %i.jn = getelementptr i8, ptr %i.ag, i64 %i.gk
  %i.jo = getelementptr i8, ptr %i.ag, i64 %i.ge
  %i.jp = getelementptr i8, ptr %i.ag, i64 %i.fv
  %i.jq = getelementptr i8, ptr %i.ag, i64 %i.fm
  %i.jr = getelementptr i8, ptr %i.ag, i64 %i.fg
  %i.js = getelementptr i8, ptr %i.ag, i64 %i.ez
  %i.jt = getelementptr i8, ptr %i.ag, i64 %i.es
  %i.ju = getelementptr i8, ptr %i.o, i64 %i.iz
  %i.jv = getelementptr i8, ptr %i.o, i64 %i.iq
  %i.jw = getelementptr i8, ptr %i.o, i64 %i.ih
  %i.jx = getelementptr i8, ptr %i.o, i64 %i.hy
  %i.jy = getelementptr i8, ptr %i.o, i64 %i.hs
  %i.jz = getelementptr i8, ptr %i.o, i64 %i.hl
  %i.ka = getelementptr i8, ptr %i.o, i64 %i.he
  %i.kb = getelementptr i8, ptr %i.be, i64 %i.gm
  %i.kc = getelementptr i8, ptr %i.ag, i64 %i.gg
  %i.kd = getelementptr i8, ptr %i.ag, i64 %i.ga
  %i.ke = getelementptr i8, ptr %i.ag, i64 %i.fr
  %i.kf = getelementptr i8, ptr %i.ag, i64 %i.fk
  %i.kg = getelementptr i8, ptr %i.ag, i64 %i.fd
  %i.kh = getelementptr i8, ptr %i.ag, i64 %i.ew
  %i.ki = getelementptr i8, ptr %i.ag, i64 %i.ep
  %i.kj = getelementptr i8, ptr %i.ag, i64 %i.ej
  %i.kk = getelementptr i8, ptr %i.ap, i64 %i.jd
  %i.kl = getelementptr i8, ptr %i.o, i64 %i.iv
  %i.km = getelementptr i8, ptr %i.o, i64 %i.im
  %i.kn = getelementptr i8, ptr %i.o, i64 %i.id
  %i.ko = getelementptr i8, ptr %i.o, i64 %i.hw
  %i.kp = getelementptr i8, ptr %i.o, i64 %i.hp
  %i.kq = getelementptr i8, ptr %i.o, i64 %i.hi
  %i.kr = getelementptr i8, ptr %i.o, i64 %i.hb
  %i.ks = getelementptr i8, ptr %i.o, i64 %i.gv
  %stride.check872 = icmp slt i64 %i.go, 0
  %.mask = and i64 %i.gn, 4611686018427387904
  %stride.check873 = icmp ne i64 %.mask, 0
  %invariant.op953 = or i1 %stride.check873, %stride.check872
  %stride.check710 = icmp slt i64 %i.ec, 0
  %.mask945 = and i64 %i.eb, 4611686018427387904
  %stride.check711 = icmp ne i64 %.mask945, 0
  %invariant.op954 = or i1 %stride.check711, %stride.check710
  %stride.check573 = icmp slt i64 %i.dd, 0
  %stride.check = icmp slt i64 %5, 0
  br label %.noexc231

.noexc231:                                        ; preds = %.noexc231.lr.ph, %_ZN4ncnn3MatD2Ev.exit
  %indvar = phi i64 [ 0, %.noexc231.lr.ph ], [ %indvar.next, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %indvars.iv448 = phi i64 [ %i.cd, %.noexc231.lr.ph ], [ %indvars.iv.next449, %_ZN4ncnn3MatD2Ev.exit ] ; 7 uses
  %i.kt = mul i64 %i.dj, %indvar                  ; 4 uses
  %scevgep555 = getelementptr i8, ptr %i.jf, i64 %i.kt
  %scevgep558 = getelementptr i8, ptr %i.jg, i64 %i.kt
  %scevgep561 = getelementptr i8, ptr %i.jh, i64 %i.kt
  %scevgep564 = getelementptr i8, ptr %i.ji, i64 %i.kt
  %i.ku = mul i64 %i.ck, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.jj, i64 %i.ku
  %scevgep486 = getelementptr i8, ptr %i.jk, i64 %i.ku
  %scevgep489 = getelementptr i8, ptr %i.jl, i64 %i.ku
  %scevgep492 = getelementptr i8, ptr %i.jm, i64 %i.ku
  %.reass = mul i64 %factor.op.mul, %indvars.iv448
  %i.kv = getelementptr i8, ptr %i.o, i64 %.reass ; 17 uses
  %.reass414 = mul i64 %factor.op.mul413, %indvars.iv448
  %i.kw = getelementptr inbounds nuw i8, ptr %i.x, i64 %.reass414 ; 6 uses
  %.reass416 = mul i64 %factor.op.mul415, %indvars.iv448
  %i.kx = getelementptr i8, ptr %i.ag, i64 %.reass416 ; 17 uses
  %.reass418 = mul i64 %factor.op.mul417, %indvars.iv448
  %i.ky = getelementptr i8, ptr %i.ap, i64 %.reass418 ; 4 uses
  %.reass420 = mul i64 %factor.op.mul419, %indvars.iv448
  %i.kz = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.reass420 ; 2 uses
  %.reass422 = mul i64 %factor.op.mul421, %indvars.iv448
  %i.la = getelementptr i8, ptr %i.be, i64 %.reass422 ; 4 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.bk ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.bl ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kw, i64 %i.bm ; 3 uses
  br i1 %i.bp, label %.lr.ph396, label %.preheader388

.lr.ph396:                                        ; preds = %.noexc231
  %i.le = mul i64 %i.ek, %indvar                  ; 15 uses
  %scevgep702 = getelementptr i8, ptr %i.jn, i64 %i.le
  %scevgep699 = getelementptr i8, ptr %i.jo, i64 %i.le
  %scevgep696 = getelementptr i8, ptr %i.jp, i64 %i.le
  %scevgep693 = getelementptr i8, ptr %i.jq, i64 %i.le
  %scevgep690 = getelementptr i8, ptr %i.jr, i64 %i.le
  %scevgep687 = getelementptr i8, ptr %i.js, i64 %i.le
  %scevgep684 = getelementptr i8, ptr %i.jt, i64 %i.le
  %i.lf = mul i64 %i.gw, %indvar                  ; 15 uses
  %scevgep864 = getelementptr i8, ptr %i.ju, i64 %i.lf
  %scevgep861 = getelementptr i8, ptr %i.jv, i64 %i.lf
  %scevgep858 = getelementptr i8, ptr %i.jw, i64 %i.lf
  %scevgep855 = getelementptr i8, ptr %i.jx, i64 %i.lf
  %scevgep852 = getelementptr i8, ptr %i.jy, i64 %i.lf
  %scevgep849 = getelementptr i8, ptr %i.jz, i64 %i.lf
  %scevgep846 = getelementptr i8, ptr %i.ka, i64 %i.lf
  %i.lg = mul i64 %14, %indvar
  %scevgep703 = getelementptr i8, ptr %i.kb, i64 %i.lg
  %scevgep700 = getelementptr i8, ptr %i.kc, i64 %i.le
  %scevgep697 = getelementptr i8, ptr %i.kd, i64 %i.le
  %scevgep694 = getelementptr i8, ptr %i.ke, i64 %i.le
  %scevgep691 = getelementptr i8, ptr %i.kf, i64 %i.le
  %scevgep688 = getelementptr i8, ptr %i.kg, i64 %i.le
  %scevgep685 = getelementptr i8, ptr %i.kh, i64 %i.le
  %scevgep682 = getelementptr i8, ptr %i.ki, i64 %i.le
  %scevgep680 = getelementptr i8, ptr %i.kj, i64 %i.le
  %i.lh = mul i64 %i.je, %indvar
  %scevgep865 = getelementptr i8, ptr %i.kk, i64 %i.lh
  %scevgep862 = getelementptr i8, ptr %i.kl, i64 %i.lf
  %scevgep859 = getelementptr i8, ptr %i.km, i64 %i.lf
  %scevgep856 = getelementptr i8, ptr %i.kn, i64 %i.lf
  %scevgep853 = getelementptr i8, ptr %i.ko, i64 %i.lf
  %scevgep850 = getelementptr i8, ptr %i.kp, i64 %i.lf
  %scevgep847 = getelementptr i8, ptr %i.kq, i64 %i.lf
  %scevgep844 = getelementptr i8, ptr %i.kr, i64 %i.lf
  %scevgep842 = getelementptr i8, ptr %i.ks, i64 %i.lf
  %i.li = load i32, ptr %4, align 4, !tbaa !45    ; 4 uses
  %i.lj = icmp sgt i32 %i.li, 0
  %i.lk = load i32, ptr %i.bw, align 8, !tbaa !48 ; 4 uses
  %i.ll = icmp sgt i32 %i.lk, 0
  %wide.trip.count = zext i32 %i.li to i64        ; 8 uses
  %wide.trip.count428 = zext i32 %i.lk to i64     ; 8 uses
  %i.lm = shl nuw nsw i64 %wide.trip.count428, 2  ; 8 uses
  %scevgep681 = getelementptr i8, ptr %scevgep680, i64 %i.lm
  %scevgep683 = getelementptr i8, ptr %scevgep682, i64 %i.lm
  %scevgep686 = getelementptr i8, ptr %scevgep685, i64 %i.lm
  %scevgep689 = getelementptr i8, ptr %scevgep688, i64 %i.lm
  %scevgep692 = getelementptr i8, ptr %scevgep691, i64 %i.lm
  %scevgep695 = getelementptr i8, ptr %scevgep694, i64 %i.lm
  %scevgep698 = getelementptr i8, ptr %scevgep697, i64 %i.lm
  %scevgep701 = getelementptr i8, ptr %scevgep700, i64 %i.lm
  %i.ln = shl nuw nsw i64 %wide.trip.count428, 5
  %scevgep704 = getelementptr i8, ptr %scevgep703, i64 %i.ln
  %i.lo = shl nuw nsw i64 %wide.trip.count, 2     ; 8 uses
  %scevgep843 = getelementptr i8, ptr %scevgep842, i64 %i.lo
  %scevgep845 = getelementptr i8, ptr %scevgep844, i64 %i.lo
  %scevgep848 = getelementptr i8, ptr %scevgep847, i64 %i.lo
  %scevgep851 = getelementptr i8, ptr %scevgep850, i64 %i.lo
  %scevgep854 = getelementptr i8, ptr %scevgep853, i64 %i.lo
  %scevgep857 = getelementptr i8, ptr %scevgep856, i64 %i.lo
  %scevgep860 = getelementptr i8, ptr %scevgep859, i64 %i.lo
  %scevgep863 = getelementptr i8, ptr %scevgep862, i64 %i.lo
  %i.lp = shl nuw nsw i64 %wide.trip.count, 5
  %scevgep866 = getelementptr i8, ptr %scevgep865, i64 %i.lp
  %i.lq = insertelement <8 x ptr> poison, ptr %i.la, i64 0 ; 2 uses
  %i.lr = insertelement <8 x ptr> %i.lq, ptr %scevgep699, i64 1
  %i.ls = insertelement <8 x ptr> %i.lr, ptr %scevgep693, i64 3
  %i.lt = insertelement <8 x ptr> %i.ls, ptr %scevgep687, i64 5
  %i.lu = insertelement <8 x ptr> %i.lt, ptr %i.kx, i64 7
  %i.lv = shufflevector <8 x ptr> %i.lu, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 0, i32 5, i32 0, i32 7>
  %i.lw = insertelement <8 x ptr> poison, ptr %scevgep701, i64 0
  %i.lx = insertelement <8 x ptr> %i.lw, ptr %scevgep704, i64 1 ; 2 uses
  %i.ly = insertelement <8 x ptr> %i.lx, ptr %scevgep695, i64 2
  %i.lz = insertelement <8 x ptr> %i.ly, ptr %scevgep689, i64 4
  %i.ma = insertelement <8 x ptr> %i.lz, ptr %scevgep683, i64 6
  %i.mb = shufflevector <8 x ptr> %i.ma, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 4, i32 1, i32 6, i32 1>
  %i.mc = shufflevector <8 x ptr> %i.lq, <8 x ptr> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0>
  %i.md = insertelement <8 x ptr> %i.mc, ptr %scevgep702, i64 0
  %i.me = insertelement <8 x ptr> %i.md, ptr %scevgep696, i64 2
  %i.mf = insertelement <8 x ptr> %i.me, ptr %scevgep690, i64 4
  %i.mg = insertelement <8 x ptr> %i.mf, ptr %scevgep684, i64 6
  %i.mh = shufflevector <8 x ptr> %i.lx, <8 x ptr> poison, <8 x i32> <i32 1, i32 poison, i32 1, i32 poison, i32 1, i32 poison, i32 1, i32 poison>
  %i.mi = insertelement <8 x ptr> %i.mh, ptr %scevgep698, i64 1
  %i.mj = insertelement <8 x ptr> %i.mi, ptr %scevgep692, i64 3
  %i.mk = insertelement <8 x ptr> %i.mj, ptr %scevgep686, i64 5
  %i.ml = insertelement <8 x ptr> %i.mk, ptr %scevgep681, i64 7
  %i.mm = insertelement <8 x ptr> poison, ptr %i.ky, i64 0 ; 2 uses
  %i.mn = insertelement <8 x ptr> %i.mm, ptr %scevgep861, i64 1
  %i.mo = insertelement <8 x ptr> %i.mn, ptr %scevgep855, i64 3
  %i.mp = insertelement <8 x ptr> %i.mo, ptr %scevgep849, i64 5
  %i.mq = insertelement <8 x ptr> %i.mp, ptr %i.kv, i64 7
  %i.mr = shufflevector <8 x ptr> %i.mq, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 3, i32 0, i32 5, i32 0, i32 7>
  %i.ms = insertelement <8 x ptr> poison, ptr %scevgep863, i64 0
  %i.mt = insertelement <8 x ptr> %i.ms, ptr %scevgep866, i64 1 ; 2 uses
  %i.mu = insertelement <8 x ptr> %i.mt, ptr %scevgep857, i64 2
  %i.mv = insertelement <8 x ptr> %i.mu, ptr %scevgep851, i64 4
  %i.mw = insertelement <8 x ptr> %i.mv, ptr %scevgep845, i64 6
  %i.mx = shufflevector <8 x ptr> %i.mw, <8 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 1, i32 4, i32 1, i32 6, i32 1>
  %i.my = shufflevector <8 x ptr> %i.mm, <8 x ptr> poison, <8 x i32> <i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0>
  %i.mz = insertelement <8 x ptr> %i.my, ptr %scevgep864, i64 0
  %i.na = insertelement <8 x ptr> %i.mz, ptr %scevgep858, i64 2
  %i.nb = insertelement <8 x ptr> %i.na, ptr %scevgep852, i64 4
  %i.nc = insertelement <8 x ptr> %i.nb, ptr %scevgep846, i64 6
  %i.nd = shufflevector <8 x ptr> %i.mt, <8 x ptr> poison, <8 x i32> <i32 1, i32 poison, i32 1, i32 poison, i32 1, i32 poison, i32 1, i32 poison>
  %i.ne = insertelement <8 x ptr> %i.nd, ptr %scevgep860, i64 1
  %i.nf = insertelement <8 x ptr> %i.ne, ptr %scevgep854, i64 3
  %i.ng = insertelement <8 x ptr> %i.nf, ptr %scevgep848, i64 5
  %i.nh = insertelement <8 x ptr> %i.ng, ptr %scevgep843, i64 7
  %min.iters.check867 = icmp ult i32 %i.li, 4
  %i.ni = icmp ult <8 x ptr> %i.mr, %i.mx
  %i.nj = icmp ult <8 x ptr> %i.nc, %i.nh
  %i.nk = and <8 x i1> %i.nj, %i.ni
  %i.nl = bitcast <8 x i1> %i.nk to i8
  %i.nm = icmp ne i8 %i.nl, 0
  %op.rdx950.reass = or i1 %i.nm, %invariant.op953
  %min.iters.check903 = icmp ult i32 %i.li, 16
  %i.nn = and i64 %wide.trip.count, 12
  %n.vec905 = and i64 %wide.trip.count, 2147483632 ; 5 uses
  %i.no = shl nuw nsw i64 %n.vec905, 5
  %cmp.n920 = icmp eq i64 %n.vec905, %wide.trip.count
  %min.epilog.iters.check924 = icmp eq i64 %i.nn, 0
  %n.vec927 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.np = shl nuw nsw i64 %n.vec927, 5
  %cmp.n942 = icmp eq i64 %n.vec927, %wide.trip.count
  %min.iters.check705 = icmp ult i32 %i.lk, 4
  %i.nq = icmp ult <8 x ptr> %i.lv, %i.mb
  %i.nr = icmp ult <8 x ptr> %i.mg, %i.ml
  %i.ns = and <8 x i1> %i.nr, %i.nq
  %i.nt = bitcast <8 x i1> %i.ns to i8
  %i.nu = icmp ne i8 %i.nt, 0
  %op.rdx948.reass = or i1 %i.nu, %invariant.op954
  %min.iters.check741 = icmp ult i32 %i.lk, 16
  %i.nv = and i64 %wide.trip.count428, 12
  %n.vec743 = and i64 %wide.trip.count428, 2147483632 ; 5 uses
  %i.nw = shl nuw nsw i64 %n.vec743, 5
  %cmp.n758 = icmp eq i64 %n.vec743, %wide.trip.count428
  %min.epilog.iters.check762 = icmp eq i64 %i.nv, 0
  %n.vec765 = and i64 %wide.trip.count428, 2147483644 ; 4 uses
  %i.nx = shl nuw nsw i64 %n.vec765, 5
  %cmp.n780 = icmp eq i64 %n.vec765, %wide.trip.count428
  br label %bb.c

.preheader388.loopexit:                           ; preds = %._crit_edge
  %i.ny = trunc nuw nsw i64 %indvars.iv.next431 to i32
  br label %.preheader388

.preheader388:                                    ; preds = %.preheader388.loopexit, %.noexc231
  %.0182.lcssa = phi ptr [ %i.kz, %.noexc231 ], [ %i.qt, %.preheader388.loopexit ]
  %.0181.lcssa = phi i32 [ 0, %.noexc231 ], [ %i.ny, %.preheader388.loopexit ] ; 2 uses
  %i.nz = icmp slt i32 %.0181.lcssa, %i.bo
  br i1 %i.nz, label %.lr.ph409, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph409:                                        ; preds = %.preheader388
  %i.oa = load i32, ptr %4, align 4, !tbaa !45    ; 4 uses
  %i.ob = icmp sgt i32 %i.oa, 0
  %i.oc = load i32, ptr %i.bw, align 8, !tbaa !48 ; 4 uses
  %i.od = icmp sgt i32 %i.oc, 0
  %i.oe = zext i32 %.0181.lcssa to i64            ; 9 uses
  %wide.trip.count436 = zext i32 %i.oa to i64     ; 10 uses
  %wide.trip.count441 = zext i32 %i.oc to i64     ; 10 uses
  %i.of = shl nuw nsw i64 %wide.trip.count441, 2  ; 4 uses
  %scevgep484 = getelementptr i8, ptr %scevgep, i64 %i.of
  %i.og = mul i64 %i.cl, %i.oe
  %scevgep485 = getelementptr i8, ptr %i.kx, i64 %i.og
  %scevgep487 = getelementptr i8, ptr %scevgep486, i64 %i.of
  %i.oh = add nsw i64 %i.bx, %i.oe
  %i.oi = mul i64 %i.cr, %i.oh
  %scevgep488 = getelementptr i8, ptr %i.kx, i64 %i.oi
  %scevgep490 = getelementptr i8, ptr %scevgep489, i64 %i.of
  %i.oj = add nuw nsw i64 %i.cb, %i.oe
  %i.ok = mul i64 %i.cx, %i.oj
  %scevgep491 = getelementptr i8, ptr %i.kx, i64 %i.ok
  %scevgep493 = getelementptr i8, ptr %scevgep492, i64 %i.of
  %i.ol = add nuw nsw i64 %i.cc, %i.oe
  %i.om = mul i64 %i.dc, %i.ol
  %scevgep494 = getelementptr i8, ptr %i.kx, i64 %i.om
  %i.on = shl nuw nsw i64 %wide.trip.count441, 4
  %scevgep495 = getelementptr i8, ptr %i.la, i64 %i.on
  %i.oo = shl nuw nsw i64 %wide.trip.count436, 2  ; 4 uses
  %scevgep556 = getelementptr i8, ptr %scevgep555, i64 %i.oo
  %i.op = mul i64 %i.dk, %i.oe
  %scevgep557 = getelementptr i8, ptr %i.kv, i64 %i.op
  %scevgep559 = getelementptr i8, ptr %scevgep558, i64 %i.oo
  %i.oq = add nsw i64 %i.bx, %i.oe
  %i.or = mul i64 %i.dq, %i.oq
  %scevgep560 = getelementptr i8, ptr %i.kv, i64 %i.or
  %scevgep562 = getelementptr i8, ptr %scevgep561, i64 %i.oo
  %i.os = add nuw nsw i64 %i.cb, %i.oe
  %i.ot = mul i64 %i.dw, %i.os
  %scevgep563 = getelementptr i8, ptr %i.kv, i64 %i.ot
  %scevgep565 = getelementptr i8, ptr %scevgep564, i64 %i.oo
  %i.ou = add nuw nsw i64 %i.cc, %i.oe
  %i.ov = mul i64 %8, %i.ou
  %scevgep566 = getelementptr i8, ptr %i.kv, i64 %i.ov
  %i.ow = shl nuw nsw i64 %wide.trip.count436, 4
  %scevgep567 = getelementptr i8, ptr %i.ky, i64 %i.ow
  %i.ox = insertelement <4 x ptr> poison, ptr %scevgep493, i64 0
  %i.oy = insertelement <4 x ptr> %i.ox, ptr %scevgep490, i64 1
  %i.oz = insertelement <4 x ptr> %i.oy, ptr %scevgep487, i64 2
  %i.pa = insertelement <4 x ptr> %i.oz, ptr %scevgep484, i64 3
  %i.pb = insertelement <4 x ptr> poison, ptr %scevgep494, i64 0
  %i.pc = insertelement <4 x ptr> %i.pb, ptr %scevgep491, i64 1
  %i.pd = insertelement <4 x ptr> %i.pc, ptr %scevgep488, i64 2
  %i.pe = insertelement <4 x ptr> %i.pd, ptr %scevgep485, i64 3
  %i.pf = insertelement <4 x ptr> poison, ptr %scevgep565, i64 0
  %i.pg = insertelement <4 x ptr> %i.pf, ptr %scevgep562, i64 1
  %i.ph = insertelement <4 x ptr> %i.pg, ptr %scevgep559, i64 2
  %i.pi = insertelement <4 x ptr> %i.ph, ptr %scevgep556, i64 3
  %i.pj = insertelement <4 x ptr> poison, ptr %scevgep566, i64 0
  %i.pk = insertelement <4 x ptr> %i.pj, ptr %scevgep563, i64 1
  %i.pl = insertelement <4 x ptr> %i.pk, ptr %scevgep560, i64 2
  %i.pm = insertelement <4 x ptr> %i.pl, ptr %scevgep557, i64 3
  %min.iters.check568 = icmp ult i32 %i.oa, 4
  %min.iters.check587 = icmp ult i32 %i.oa, 16
  %i.pn = and i64 %wide.trip.count436, 12
  %n.vec589 = and i64 %wide.trip.count436, 2147483632 ; 5 uses
  %i.po = shl nuw nsw i64 %n.vec589, 4
  %cmp.n600 = icmp eq i64 %n.vec589, %wide.trip.count436
  %min.epilog.iters.check604 = icmp eq i64 %i.pn, 0
  %n.vec607 = and i64 %wide.trip.count436, 2147483644 ; 4 uses
  %i.pp = shl nuw nsw i64 %n.vec607, 4
  %cmp.n618 = icmp eq i64 %n.vec607, %wide.trip.count436
  %xtraiter = and i64 %wide.trip.count436, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.pq = add nsw i64 %wide.trip.count436, -1
  %min.iters.check = icmp ult i32 %i.oc, 4
  %min.iters.check507 = icmp ult i32 %i.oc, 16
  %i.pr = and i64 %wide.trip.count441, 12
  %n.vec = and i64 %wide.trip.count441, 2147483632 ; 5 uses
  %i.ps = shl nuw nsw i64 %n.vec, 4
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count441
  %min.epilog.iters.check = icmp eq i64 %i.pr, 0
  %n.vec511 = and i64 %wide.trip.count441, 2147483644 ; 4 uses
  %i.pt = shl nuw nsw i64 %n.vec511, 4
  %cmp.n520 = icmp eq i64 %n.vec511, %wide.trip.count441
  %xtraiter951 = and i64 %wide.trip.count441, 1
  %lcmp.mod952.not = icmp eq i64 %xtraiter951, 0
  %i.pu = add nsw i64 %wide.trip.count441, -1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph396, %._crit_edge
  %indvars.iv430 = phi i64 [ 0, %.lr.ph396 ], [ %indvars.iv.next431, %._crit_edge ] ; 12 uses
  %.0182394 = phi ptr [ %i.kz, %.lr.ph396 ], [ %i.qt, %._crit_edge ] ; 9 uses
  %i.pv = or disjoint i64 %indvars.iv430, 1       ; 6 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %indvars.iv430
  %i.px = load float, ptr %i.pw, align 4, !tbaa !63
  store float %i.px, ptr %.0182394, align 4, !tbaa !63
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %indvars.iv430
  %i.pz = load float, ptr %i.py, align 4, !tbaa !63
  %i.qa = getelementptr inbounds nuw i8, ptr %.0182394, i64 4
  store float %i.pz, ptr %i.qa, align 4, !tbaa !63
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %indvars.iv430
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !63
  %i.qd = getelementptr inbounds nuw i8, ptr %.0182394, i64 8
  store float %i.qc, ptr %i.qd, align 4, !tbaa !63
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %indvars.iv430
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !63
  %i.qg = getelementptr inbounds nuw i8, ptr %.0182394, i64 12
  store float %i.qf, ptr %i.qg, align 4, !tbaa !63
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.pv
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !63
  %i.qj = getelementptr inbounds nuw i8, ptr %.0182394, i64 16
  store float %i.qi, ptr %i.qj, align 4, !tbaa !63
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %i.pv
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !63
  %i.qm = getelementptr inbounds nuw i8, ptr %.0182394, i64 20
  store float %i.ql, ptr %i.qm, align 4, !tbaa !63
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %i.pv
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !63
  %i.qp = getelementptr inbounds nuw i8, ptr %.0182394, i64 24
  store float %i.qo, ptr %i.qp, align 4, !tbaa !63
  %i.qq = getelementptr inbounds nuw [4 x i8], ptr %i.ld, i64 %i.pv
  %i.qr = load float, ptr %i.qq, align 4, !tbaa !63
  %i.qs = getelementptr inbounds nuw i8, ptr %.0182394, i64 28
  store float %i.qr, ptr %i.qs, align 4, !tbaa !63
  %i.qt = getelementptr inbounds nuw i8, ptr %.0182394, i64 32 ; 2 uses
  %i.qu = mul i64 %i.bq, %indvars.iv430
  %i.qv = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.qu ; 3 uses
  %i.qw = add nuw nsw i64 %indvars.iv430, %i.ca   ; 3 uses
  %i.qx = mul i64 %i.bq, %i.qw
  %i.qy = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.qx ; 3 uses
  %i.qz = add nuw nsw i64 %indvars.iv430, %i.bz   ; 3 uses
  %i.ra = mul i64 %i.bq, %i.qz
  %i.rb = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ra ; 3 uses
  %i.rc = add nuw nsw i64 %indvars.iv430, %i.by   ; 3 uses
  %i.rd = mul i64 %i.bq, %i.rc
  %i.re = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.rd ; 3 uses
  %i.rf = mul i64 %i.bq, %i.pv
  %i.rg = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.rf ; 3 uses
  %i.rh = add nuw nsw i64 %i.qw, 1                ; 2 uses
  %i.ri = mul i64 %i.bq, %i.rh
  %i.rj = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ri ; 3 uses
  %i.rk = or disjoint i64 %i.qz, 1                ; 2 uses
  %i.rl = mul i64 %i.bq, %i.rk
  %i.rm = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.rl ; 3 uses
  %i.rn = add nuw nsw i64 %i.rc, 1                ; 2 uses
  %i.ro = mul i64 %i.bq, %i.rn
  %i.rp = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.ro ; 3 uses
  %i.rq = mul i64 %i.bt, %indvars.iv430
  %i.rr = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.rq ; 3 uses
  %i.rs = mul i64 %i.bt, %i.qw
  %i.rt = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.rs ; 3 uses
  %i.ru = mul i64 %i.bt, %i.qz
  %i.rv = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.ru ; 3 uses
  %i.rw = mul i64 %i.bt, %i.rc
  %i.rx = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.rw ; 3 uses
  %i.ry = mul i64 %i.bt, %i.pv
  %i.rz = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.ry ; 3 uses
  %i.sa = mul i64 %i.bt, %i.rh
  %i.sb = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.sa ; 3 uses
  %i.sc = mul i64 %i.bt, %i.rk
  %i.sd = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.sc ; 3 uses
  %i.se = mul i64 %i.bt, %i.rn
  %i.sf = getelementptr inbounds nuw i8, ptr %i.kx, i64 %i.se ; 3 uses
  %i.sg = lshr exact i64 %indvars.iv430, 1        ; 2 uses
  %i.sh = mul i64 %i.bv, %i.sg
  %i.si = getelementptr inbounds nuw i8, ptr %i.la, i64 %i.sh ; 5 uses
  br i1 %i.lj, label %iter.check921, label %.preheader387

iter.check921:                                    ; preds = %bb.c
  %i.sj = mul i64 %i.bu, %i.sg
  %i.sk = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.sj ; 5 uses
  %brmerge = select i1 %min.iters.check867, i1 true, i1 %op.rdx950.reass
  br i1 %brmerge, label %.lr.ph.preheader, label %vector.main.loop.iter.check902

vector.main.loop.iter.check902:                   ; preds = %iter.check921
  br i1 %min.iters.check903, label %vec.epilog.ph925, label %vector.ph904

vector.ph904:                                     ; preds = %vector.main.loop.iter.check902
  %i.sl = getelementptr i8, ptr %i.sk, i64 %i.no
  br label %vector.body906

vector.body906:                                   ; preds = %vector.ph904, %vector.body906
  %index907 = phi i64 [ 0, %vector.ph904 ], [ %index.next918, %vector.body906 ] ; 10 uses
  %i.sm = shl i64 %index907, 5
  %next.gep908 = getelementptr i8, ptr %i.sk, i64 %i.sm
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %index907
  %wide.load909 = load <16 x float>, ptr %i.sn, align 4, !tbaa !63, !alias.scope !232
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %index907
  %wide.load910 = load <16 x float>, ptr %i.so, align 4, !tbaa !63, !alias.scope !233
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %index907
  %wide.load911 = load <16 x float>, ptr %i.sp, align 4, !tbaa !63, !alias.scope !234
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %index907
  %wide.load912 = load <16 x float>, ptr %i.sq, align 4, !tbaa !63, !alias.scope !235
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %index907
  %wide.load913 = load <16 x float>, ptr %i.sr, align 4, !tbaa !63, !alias.scope !236
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %index907
  %wide.load914 = load <16 x float>, ptr %i.ss, align 4, !tbaa !63, !alias.scope !237
  %i.st = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %index907
  %wide.load915 = load <16 x float>, ptr %i.st, align 4, !tbaa !63, !alias.scope !238
  %i.su = getelementptr inbounds nuw [4 x i8], ptr %i.rp, i64 %index907
  %wide.load916 = load <16 x float>, ptr %i.su, align 4, !tbaa !63, !alias.scope !239
  %i.sv = shufflevector <16 x float> %wide.load909, <16 x float> %wide.load910, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.sw = shufflevector <16 x float> %wide.load911, <16 x float> %wide.load912, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.sx = shufflevector <16 x float> %wide.load913, <16 x float> %wide.load914, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.sy = shufflevector <16 x float> %wide.load915, <16 x float> %wide.load916, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.sz = shufflevector <32 x float> %i.sv, <32 x float> %i.sw, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %i.ta = shufflevector <32 x float> %i.sx, <32 x float> %i.sy, <64 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>
  %interleaved.vec917 = shufflevector <64 x float> %i.sz, <64 x float> %i.ta, <128 x i32> <i32 0, i32 16, i32 32, i32 48, i32 64, i32 80, i32 96, i32 112, i32 1, i32 17, i32 33, i32 49, i32 65, i32 81, i32 97, i32 113, i32 2, i32 18, i32 34, i32 50, i32 66, i32 82, i32 98, i32 114, i32 3, i32 19, i32 35, i32 51, i32 67, i32 83, i32 99, i32 115, i32 4, i32 20, i32 36, i32 52, i32 68, i32 84, i32 100, i32 116, i32 5, i32 21, i32 37, i32 53, i32 69, i32 85, i32 101, i32 117, i32 6, i32 22, i32 38, i32 54, i32 70, i32 86, i32 102, i32 118, i32 7, i32 23, i32 39, i32 55, i32 71, i32 87, i32 103, i32 119, i32 8, i32 24, i32 40, i32 56, i32 72, i32 88, i32 104, i32 120, i32 9, i32 25, i32 41, i32 57, i32 73, i32 89, i32 105, i32 121, i32 10, i32 26, i32 42, i32 58, i32 74, i32 90, i32 106, i32 122, i32 11, i32 27, i32 43, i32 59, i32 75, i32 91, i32 107, i32 123, i32 12, i32 28, i32 44, i32 60, i32 76, i32 92, i32 108, i32 124, i32 13, i32 29, i32 45, i32 61, i32 77, i32 93, i32 109, i32 125, i32 14, i32 30, i32 46, i32 62, i32 78, i32 94, i32 110, i32 126, i32 15, i32 31, i32 47, i32 63, i32 79, i32 95, i32 111, i32 127>
  store <128 x float> %interleaved.vec917, ptr %next.gep908, align 4, !tbaa !63, !alias.scope !240, !noalias !241
  %index.next918 = add nuw i64 %index907, 16      ; 2 uses
  %i.tb = icmp eq i64 %index.next918, %n.vec905
  br i1 %i.tb, label %middle.block919, label %vector.body906, !llvm.loop !190

middle.block919:                                  ; preds = %vector.body906
  br i1 %cmp.n920, label %.preheader387, label %vec.epilog.iter.check922

vec.epilog.iter.check922:                         ; preds = %middle.block919
  br i1 %min.epilog.iters.check924, label %.lr.ph.preheader, label %vec.epilog.ph925, !prof !242

vec.epilog.ph925:                                 ; preds = %vector.main.loop.iter.check902, %vec.epilog.iter.check922
  %vec.epilog.resume.val926 = phi i64 [ %n.vec905, %vec.epilog.iter.check922 ], [ 0, %vector.main.loop.iter.check902 ]
  %i.tc = getelementptr i8, ptr %i.sk, i64 %i.np
  br label %vec.epilog.vector.body928

vec.epilog.vector.body928:                        ; preds = %vec.epilog.vector.body928, %vec.epilog.ph925
  %index929 = phi i64 [ %vec.epilog.resume.val926, %vec.epilog.ph925 ], [ %index.next940, %vec.epilog.vector.body928 ] ; 10 uses
  %i.td = shl i64 %index929, 5
  %next.gep930 = getelementptr i8, ptr %i.sk, i64 %i.td
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.qv, i64 %index929
  %wide.load931 = load <4 x float>, ptr %i.te, align 4, !tbaa !63, !alias.scope !232
  %i.tf = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %index929
  %wide.load932 = load <4 x float>, ptr %i.tf, align 4, !tbaa !63, !alias.scope !233
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.rb, i64 %index929
  %wide.load933 = load <4 x float>, ptr %i.tg, align 4, !tbaa !63, !alias.scope !234
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %i.re, i64 %index929
  %wide.load934 = load <4 x float>, ptr %i.th, align 4, !tbaa !63, !alias.scope !235
  %i.ti = getelementptr inbounds nuw [4 x i8], ptr %i.rg, i64 %index929
  %wide.load935 = load <4 x float>, ptr %i.ti, align 4, !tbaa !63, !alias.scope !236
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %i.rj, i64 %index929
  %wide.load936 = load <4 x float>, ptr %i.tj, align 4, !tbaa !63, !alias.scope !237
  %i.tk = getelementptr inbounds nuw [4 x i8], ptr %i.rm, i64 %index929
  %wide.load937 = load <4 x float>, ptr %i.tk, align 4, !tbaa !63, !alias.scope !238
end_hunk_0
