Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/tng_compress?download=true
inline.NumInlined: 102
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 61
begin_hunk_0_@tng_compress_vel_int:bb.a
  %i.bh = sub nsw i32 %i.be, %i.bg
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bc
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !16
  %indvars.iv.next54.i = or disjoint i64 %indvars.iv53.i, 1 ; 2 uses
  %i.bj = add nuw nsw i64 %indvars.iv.next54.i, %i.am
  %i.bk = trunc nuw nsw i64 %indvars.iv.next54.i to i32
  %i.bl = add i32 %i.ap, %i.bk
  %i.bm = mul i32 %i.bl, 3
  %sext.i.1 = mul i64 %i.bj, 12884901888
  %i.bn = ashr exact i64 %sext.i.1, 32            ; 3 uses
  %i.bo = sext i32 %i.bm to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bn
  %i.bq = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bo ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bn
  %i.bs = load <2 x i32>, ptr %i.bp, align 4, !tbaa !16
  %i.bt = load <2 x i32>, ptr %i.bq, align 4, !tbaa !16
  %i.bu = sub nsw <2 x i32> %i.bs, %i.bt
  store <2 x i32> %i.bu, ptr %i.br, align 4, !tbaa !16
  %i.bv = add nsw i64 %i.bn, 2                    ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !16
  %i.by = getelementptr i8, ptr %i.bq, i64 8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !16
  %i.ca = sub nsw i32 %i.bx, %i.bz
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bv
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !16
  %indvars.iv.next54.i.1 = add nuw nsw i64 %indvars.iv53.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.preheader.i, !llvm.loop !0

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.preheader.i.epil.preheader

.preheader.i.epil.preheader:                      ; preds = %._crit_edge.i.unr-lcssa, %.preheader37.i
  %indvars.iv53.i.epil.init = phi i64 [ 0, %.preheader37.i ], [ %indvars.iv.next54.i.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod65)
  %i.cc = add nuw nsw i64 %indvars.iv53.i.epil.init, %i.am
  %i.cd = trunc nuw nsw i64 %indvars.iv53.i.epil.init to i32
  %i.ce = add i32 %i.ap, %i.cd
  %i.cf = mul i32 %i.ce, 3
  %sext.i.epil = mul i64 %i.cc, 12884901888
  %i.cg = ashr exact i64 %sext.i.epil, 32         ; 3 uses
  %i.ch = sext i32 %i.cf to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %0, i64 %i.cg
  %i.cj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ch ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.cg
  %i.cl = load <2 x i32>, ptr %i.ci, align 4, !tbaa !16
  %i.cm = load <2 x i32>, ptr %i.cj, align 4, !tbaa !16
  %i.cn = sub nsw <2 x i32> %i.cl, %i.cm
  store <2 x i32> %i.cn, ptr %i.ck, align 4, !tbaa !16
  %i.co = add nsw i64 %i.cg, 2                    ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %0, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !16
  %i.cr = getelementptr i8, ptr %i.cj, i64 8
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !16
  %i.ct = sub nsw i32 %i.cq, %i.cs
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.co
  store i32 %i.ct, ptr %i.cu, align 4, !tbaa !16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i.epil.preheader
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %wide.trip.count61.i
  br i1 %exitcond62.not.i, label %quant_inter_differences.exit, label %.preheader37.i, !llvm.loop !1

quant_inter_differences.exit:                     ; preds = %._crit_edge.i, %bb.a, %.preheader38.i
  %i.cv = icmp eq i32 %i.q, -1
  br i1 %i.cv, label %bb.b, label %bb.c

bb.b:                                             ; preds = %quant_inter_differences.exit
  store i32 -1, ptr %i.b, align 4, !tbaa !16
  br label %.sink.split

bb.c:                                             ; preds = %quant_inter_differences.exit
  %i.cw = icmp eq i32 %i.s, -1
  br i1 %i.cw, label %.sink.split, label %bb.d

.sink.split:                                      ; preds = %bb.c, %bb.b
  call fastcc void @determine_best_vel_initial_coding(ptr noundef %0, i32 noundef %1, i32 noundef %spec.store.select1, ptr noundef %i.a, ptr noundef %i.b)
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %i.cx = icmp eq i32 %2, 1
  br i1 %i.cx, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  store i32 0, ptr %i.c, align 4, !tbaa !16
  store i32 0, ptr %i.d, align 4, !tbaa !16
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.cy = icmp sgt i32 %2, 1
  br i1 %i.cy, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.cz = icmp eq i32 %i.u, -1
  br i1 %i.cz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 -1, ptr %i.d, align 4, !tbaa !16
  call fastcc void @determine_best_vel_coding(ptr noundef %0, ptr noundef %i.m, i32 noundef %1, i32 noundef %2, i32 noundef %spec.store.select1, i64 noundef %3, i64 noundef %4, ptr noundef %i.c, ptr noundef %i.d)
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.da = icmp eq i32 %i.w, -1
  br i1 %i.da, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call fastcc void @determine_best_vel_coding(ptr noundef %0, ptr noundef %i.m, i32 noundef %1, i32 noundef %2, i32 noundef %spec.store.select1, i64 noundef %3, i64 noundef %4, ptr noundef %i.c, ptr noundef %i.d)
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.g, %bb.i, %bb.h, %bb.e
  %i.db = load i32, ptr %i.a, align 4, !tbaa !16  ; 2 uses
  %i.dc = load i32, ptr %i.b, align 4, !tbaa !16  ; 2 uses
  %i.dd = load i32, ptr %i.c, align 4, !tbaa !16  ; 2 uses
  %i.de = load i32, ptr %i.d, align 4, !tbaa !16  ; 2 uses
  tail call fastcc void @compress_quantized_vel(ptr noundef %0, ptr noundef %i.m, i32 noundef %1, i32 noundef %2, i32 noundef %spec.store.select1, i32 noundef %i.db, i32 noundef %i.dc, i32 noundef %i.dd, i32 noundef %i.de, i64 noundef %3, i64 noundef %4, ptr noundef %7, ptr noundef %i.i)
  tail call void @free(ptr noundef %i.m) #12
  %i.df = load i32, ptr %6, align 4, !tbaa !16
  %i.dg = icmp eq i32 %i.df, -1
  br i1 %i.dg, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 %i.db, ptr %6, align 4, !tbaa !16
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.dh = load i32, ptr %i.r, align 4, !tbaa !16
  %i.di = icmp eq i32 %i.dh, -1
  br i1 %i.di, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.dc, ptr %i.r, align 4, !tbaa !16
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dj = load i32, ptr %i.t, align 4, !tbaa !16
  %i.dk = icmp eq i32 %i.dj, -1
  br i1 %i.dk, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 %i.dd, ptr %i.t, align 4, !tbaa !16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dl = load i32, ptr %i.v, align 4, !tbaa !16
  %i.dm = icmp eq i32 %i.dl, -1
  br i1 %i.dm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.de, ptr %i.v, align 4, !tbaa !16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %i.i
}

; Function Attrs: nounwind uwtable
define internal fastcc void @determine_best_vel_initial_coding(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = load i32, ptr %3, align 4, !tbaa !16     ; 2 uses
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.h = mul nsw i32 %1, 3                        ; 3 uses
  %i.i = tail call ptr @Ptngc_coder_init() #12    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.026.i = phi i32 [ -1, %bb.b ], [ %.2.i, %bb.e ] ; 3 uses
  %.01725.i = phi i32 [ 0, %bb.b ], [ %.219.i, %bb.e ] ; 3 uses
  %.02024.i = phi i32 [ 1, %bb.b ], [ %i.n, %bb.e ] ; 3 uses
  store i32 %i.h, ptr %i.e, align 4, !tbaa !16
  %i.j = call ptr @Ptngc_pack_array(ptr noundef %i.i, ptr noundef %0, ptr noundef nonnull %i.e, i32 noundef 1, i32 noundef %.02024.i, i32 noundef %1, i32 noundef 0) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %.026.i, -1
  %i.l = load i32, ptr %i.e, align 4              ; 2 uses
  %i.m = icmp slt i32 %i.l, %.01725.i
  %or.cond.i = select i1 %i.k, i1 true, i1 %i.m   ; 2 uses
  %.118.i = select i1 %or.cond.i, i32 %i.l, i32 %.01725.i
  %.1.i = select i1 %or.cond.i, i32 %.02024.i, i32 %.026.i
  call void @free(ptr noundef nonnull %i.j) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.219.i = phi i32 [ %.118.i, %bb.d ], [ %.01725.i, %bb.c ] ; 2 uses
  %.2.i = phi i32 [ %.1.i, %bb.d ], [ %.026.i, %bb.c ] ; 3 uses
  %i.n = add nuw nsw i32 %.02024.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.n, 20
  br i1 %exitcond.not.i, label %determine_best_coding_stop_bits.exit, label %bb.c, !llvm.loop !3

determine_best_coding_stop_bits.exit:             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @Ptngc_coder_deinit(ptr noundef %i.i) #12
  %i.o = call ptr @Ptngc_coder_init() #12         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %determine_best_coding_stop_bits.exit
  %.026.i57 = phi i32 [ -1, %determine_best_coding_stop_bits.exit ], [ %.2.i65, %bb.h ] ; 3 uses
  %.01725.i58 = phi i32 [ 0, %determine_best_coding_stop_bits.exit ], [ %.219.i64, %bb.h ] ; 3 uses
  %.02024.i59 = phi i32 [ 1, %determine_best_coding_stop_bits.exit ], [ %i.t, %bb.h ] ; 3 uses
  store i32 %i.h, ptr %i.d, align 4, !tbaa !16
  %i.p = call ptr @Ptngc_pack_array(ptr noundef %i.o, ptr noundef %0, ptr noundef nonnull %i.d, i32 noundef 2, i32 noundef %.02024.i59, i32 noundef %1, i32 noundef 0) #12 ; 2 uses
  %.not.i60 = icmp eq ptr %i.p, null
  br i1 %.not.i60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = icmp eq i32 %.026.i57, -1
  %i.r = load i32, ptr %i.d, align 4              ; 2 uses
  %i.s = icmp slt i32 %i.r, %.01725.i58
  %or.cond.i61 = select i1 %i.q, i1 true, i1 %i.s ; 2 uses
  %.118.i62 = select i1 %or.cond.i61, i32 %i.r, i32 %.01725.i58
  %.1.i63 = select i1 %or.cond.i61, i32 %.02024.i59, i32 %.026.i57
  call void @free(ptr noundef nonnull %i.p) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.219.i64 = phi i32 [ %.118.i62, %bb.g ], [ %.01725.i58, %bb.f ] ; 3 uses
  %.2.i65 = phi i32 [ %.1.i63, %bb.g ], [ %.026.i57, %bb.f ] ; 3 uses
  %i.t = add nuw nsw i32 %.02024.i59, 1           ; 2 uses
  %exitcond.not.i66 = icmp eq i32 %i.t, 20
  br i1 %exitcond.not.i66, label %determine_best_coding_triple.exit, label %bb.f, !llvm.loop !2

determine_best_coding_triple.exit:                ; preds = %bb.h
  %.not = icmp eq i32 %.2.i, -1                   ; 4 uses
  %.048 = select i1 %.not, i32 -1, i32 %.219.i    ; 2 uses
  %.0 = select i1 %.not, i32 -1, i32 1
  %i.u = icmp ne i32 %.2.i65, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  %i.v = icmp slt i32 %.219.i64, %.048
  %or.cond = select i1 %.not, i1 true, i1 %i.v
  %or.cond123 = select i1 %i.u, i1 %or.cond, i1 false ; 4 uses
  %.146 = select i1 %or.cond123, i32 %.2.i65, i32 %.2.i ; 2 uses
  %.1 = select i1 %or.cond123, i32 3, i32 %.0     ; 2 uses
  call void @Ptngc_coder_deinit(ptr noundef %i.o) #12
  %i.w = icmp sgt i32 %2, 3
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %determine_best_coding_triple.exit
  %.149 = select i1 %or.cond123, i32 %.219.i64, i32 %.048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 %i.h, ptr %i.c, align 4, !tbaa !16
  %i.x = call ptr @Ptngc_coder_init() #12         ; 2 uses
  %i.y = call ptr @Ptngc_pack_array(ptr noundef %i.x, ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef 9, i32 noundef 0, i32 noundef %1, i32 noundef %2) #12 ; 0 uses
  call void @Ptngc_coder_deinit(ptr noundef %i.x) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %not.or.cond123 = xor i1 %or.cond123, true
  %i.z = select i1 %not.or.cond123, i1 %.not, i1 false
  %i.aa = icmp sgt i32 %.149, 40
  %or.cond55 = select i1 %i.z, i1 true, i1 %i.aa  ; 2 uses
  %spec.select = select i1 %or.cond55, i32 0, i32 %.146
  %spec.select56 = select i1 %or.cond55, i32 9, i32 %.1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %determine_best_coding_triple.exit
  %.247 = phi i32 [ %.146, %determine_best_coding_triple.exit ], [ %spec.select, %bb.i ]
  %.2 = phi i32 [ %.1, %determine_best_coding_triple.exit ], [ %spec.select56, %bb.i ]
  store i32 %.2, ptr %3, align 4, !tbaa !16
  store i32 %.247, ptr %4, align 4, !tbaa !16
  br label %bb.z

bb.k:                                             ; preds = %bb.a
  %i.ab = load i32, ptr %4, align 4, !tbaa !16
  %i.ac = icmp eq i32 %i.ab, -1
  br i1 %i.ac, label %bb.l, label %bb.z

bb.l:                                             ; preds = %bb.k
  switch i32 %i.f, label %bb.z [
    i32 9, label %bb.m
    i32 1, label %bb.n
    i32 3, label %bb.t
  ]

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %4, align 4, !tbaa !16
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %i.ad = tail call ptr @Ptngc_coder_init() #12   ; 2 uses
  %i.ae = mul nsw i32 %1, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %.026.i69 = phi i32 [ -1, %bb.n ], [ %.2.i77, %bb.q ] ; 3 uses
  %.01725.i70 = phi i32 [ 0, %bb.n ], [ %.219.i76, %bb.q ] ; 3 uses
  %.02024.i71 = phi i32 [ 1, %bb.n ], [ %i.aj, %bb.q ] ; 3 uses
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !16
  %i.af = call ptr @Ptngc_pack_array(ptr noundef %i.ad, ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef 1, i32 noundef %.02024.i71, i32 noundef %1, i32 noundef 0) #12 ; 2 uses
  %.not.i72 = icmp eq ptr %i.af, null
  br i1 %.not.i72, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = icmp eq i32 %.026.i69, -1
  %i.ah = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ai = icmp slt i32 %i.ah, %.01725.i70
  %or.cond.i73 = select i1 %i.ag, i1 true, i1 %i.ai ; 2 uses
  %.118.i74 = select i1 %or.cond.i73, i32 %i.ah, i32 %.01725.i70
  %.1.i75 = select i1 %or.cond.i73, i32 %.02024.i71, i32 %.026.i69
  call void @free(ptr noundef nonnull %i.af) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.219.i76 = phi i32 [ %.118.i74, %bb.p ], [ %.01725.i70, %bb.o ]
  %.2.i77 = phi i32 [ %.1.i75, %bb.p ], [ %.026.i69, %bb.o ] ; 3 uses
  %i.aj = add nuw nsw i32 %.02024.i71, 1          ; 2 uses
  %exitcond.not.i78 = icmp eq i32 %i.aj, 20
  br i1 %exitcond.not.i78, label %bb.r, label %bb.o, !llvm.loop !3

bb.r:                                             ; preds = %bb.q
  %i.ak = icmp eq i32 %.2.i77, -1
  br i1 %i.ak, label %determine_best_coding_stop_bits.exit80, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %.2.i77, ptr %4, align 4, !tbaa !16
  br label %determine_best_coding_stop_bits.exit80

determine_best_coding_stop_bits.exit80:           ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @Ptngc_coder_deinit(ptr noundef %i.ad) #12
  br label %bb.z

bb.t:                                             ; preds = %bb.l
  %i.al = tail call ptr @Ptngc_coder_init() #12   ; 2 uses
  %i.am = mul nsw i32 %1, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br label %bb.u

bb.u:                                             ; preds = %bb.w, %bb.t
  %.026.i81 = phi i32 [ -1, %bb.t ], [ %.2.i89, %bb.w ] ; 3 uses
  %.01725.i82 = phi i32 [ 0, %bb.t ], [ %.219.i88, %bb.w ] ; 3 uses
  %.02024.i83 = phi i32 [ 1, %bb.t ], [ %i.ar, %bb.w ] ; 3 uses
  store i32 %i.am, ptr %i.a, align 4, !tbaa !16
  %i.an = call ptr @Ptngc_pack_array(ptr noundef %i.al, ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef %.02024.i83, i32 noundef %1, i32 noundef 0) #12 ; 2 uses
  %.not.i84 = icmp eq ptr %i.an, null
  br i1 %.not.i84, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ao = icmp eq i32 %.026.i81, -1
  %i.ap = load i32, ptr %i.a, align 4             ; 2 uses
  %i.aq = icmp slt i32 %i.ap, %.01725.i82
  %or.cond.i85 = select i1 %i.ao, i1 true, i1 %i.aq ; 2 uses
  %.118.i86 = select i1 %or.cond.i85, i32 %i.ap, i32 %.01725.i82
  %.1.i87 = select i1 %or.cond.i85, i32 %.02024.i83, i32 %.026.i81
  call void @free(ptr noundef nonnull %i.an) #12
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.219.i88 = phi i32 [ %.118.i86, %bb.v ], [ %.01725.i82, %bb.u ]
  %.2.i89 = phi i32 [ %.1.i87, %bb.v ], [ %.026.i81, %bb.u ] ; 3 uses
  %i.ar = add nuw nsw i32 %.02024.i83, 1          ; 2 uses
  %exitcond.not.i90 = icmp eq i32 %i.ar, 20
  br i1 %exitcond.not.i90, label %bb.x, label %bb.u, !llvm.loop !2

bb.x:                                             ; preds = %bb.w
  %i.as = icmp eq i32 %.2.i89, -1
  br i1 %i.as, label %determine_best_coding_triple.exit92, label %bb.y

bb.y:                                             ; preds = %bb.x
  store i32 %.2.i89, ptr %4, align 4, !tbaa !16
  br label %determine_best_coding_triple.exit92

determine_best_coding_triple.exit92:              ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @Ptngc_coder_deinit(ptr noundef %i.al) #12
  br label %bb.z

bb.z:                                             ; preds = %bb.l, %bb.k, %determine_best_coding_stop_bits.exit80, %determine_best_coding_triple.exit92, %bb.m, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @determine_best_vel_coding(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef range(i32 2, -2147483648) %3, i32 noundef %4, i64 noundef %5, i64 noundef %6, ptr nofree noundef nonnull captures(none) %7, ptr nofree noundef nonnull captures(none) %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 9 uses
  %i.k = load i32, ptr %7, align 4, !tbaa !16     ; 2 uses
  %i.l = icmp eq i32 %i.k, -1
  br i1 %i.l, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.m = mul nsw i32 %2, 3                        ; 3 uses
  store i32 %i.m, ptr %i.i, align 4, !tbaa !16
  %i.n = tail call ptr @Ptngc_coder_init() #12    ; 2 uses
  %i.o = call ptr @Ptngc_pack_array(ptr noundef %i.n, ptr noundef %0, ptr noundef nonnull %i.i, i32 noundef 1, i32 noundef 5, i32 noundef %2, i32 noundef %4) #12 ; 0 uses
  call void @Ptngc_coder_deinit(ptr noundef %i.n) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  %i.p = add nsw i32 %3, -1
  %i.q = mul nsw i32 %i.p, %i.m                   ; 6 uses
  %i.r = call ptr @Ptngc_coder_init() #12         ; 2 uses
  %i.s = sext i32 %i.m to i64                     ; 2 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.026.i = phi i32 [ -1, %bb.b ], [ %.2.i, %bb.e ] ; 3 uses
  %.01725.i = phi i32 [ 0, %bb.b ], [ %.219.i, %bb.e ] ; 3 uses
  %.02024.i = phi i32 [ 1, %bb.b ], [ %i.y, %bb.e ] ; 3 uses
  store i32 %i.q, ptr %i.h, align 4, !tbaa !16
  %i.u = call ptr @Ptngc_pack_array(ptr noundef %i.r, ptr noundef %i.t, ptr noundef nonnull %i.h, i32 noundef 1, i32 noundef %.02024.i, i32 noundef %2, i32 noundef 0) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i32 %.026.i, -1
  %i.w = load i32, ptr %i.h, align 4              ; 2 uses
  %i.x = icmp slt i32 %i.w, %.01725.i
  %or.cond.i = select i1 %i.v, i1 true, i1 %i.x   ; 2 uses
  %.118.i = select i1 %or.cond.i, i32 %i.w, i32 %.01725.i
  %.1.i = select i1 %or.cond.i, i32 %.02024.i, i32 %.026.i
  call void @free(ptr noundef nonnull %i.u) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.219.i = phi i32 [ %.118.i, %bb.d ], [ %.01725.i, %bb.c ] ; 3 uses
  %.2.i = phi i32 [ %.1.i, %bb.d ], [ %.026.i, %bb.c ] ; 3 uses
  %i.y = add nuw nsw i32 %.02024.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.y, 20
  br i1 %exitcond.not.i, label %bb.f, label %bb.c, !llvm.loop !3

bb.f:                                             ; preds = %bb.e
  %i.z = icmp eq i32 %.2.i, -1
  br i1 %i.z, label %determine_best_coding_stop_bits.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 %.219.i, ptr %i.j, align 4, !tbaa !16
  br label %determine_best_coding_stop_bits.exit

end_hunk_0
