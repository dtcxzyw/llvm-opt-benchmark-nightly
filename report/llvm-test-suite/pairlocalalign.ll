inline.NumInlined: 26
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@exit
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i32 @countamino(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.not6 = icmp eq i32 %1, 0
  br i1 %.not6, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader13, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.a, 4294967288               ; 4 uses
  %i.b = trunc nuw i64 %n.vec to i32
  %i.c = sub i32 %1, %i.b
  %i.d = getelementptr i8, ptr %0, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi10 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %next.gep = getelementptr i8, ptr %0, i64 %index ; 2 uses
  %i.e = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !8
  %wide.load11 = load <4 x i8>, ptr %i.e, align 1, !tbaa !8
  %i.f = icmp ne <4 x i8> %wide.load, splat (i8 45)
  %i.g = icmp ne <4 x i8> %wide.load11, splat (i8 45)
  %i.h = zext <4 x i1> %i.f to <4 x i32>
  %i.i = zext <4 x i1> %i.g to <4 x i32>
  %i.j = add <4 x i32> %vec.phi, %i.h             ; 2 uses
  %i.k = add <4 x i32> %vec.phi10, %i.i           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.k, %i.j
  %i.m = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader13

.lr.ph.preheader13:                               ; preds = %.lr.ph.preheader, %middle.block
  %.09.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.m, %middle.block ]
  %.038.ph = phi i32 [ %1, %.lr.ph.preheader ], [ %i.c, %middle.block ]
  %.047.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader13, %.lr.ph
  %.09 = phi i32 [ %spec.select, %.lr.ph ], [ %.09.ph, %.lr.ph.preheader13 ]
  %.038 = phi i32 [ %i.n, %.lr.ph ], [ %.038.ph, %.lr.ph.preheader13 ]
  %.047 = phi ptr [ %i.o, %.lr.ph ], [ %.047.ph, %.lr.ph.preheader13 ] ; 2 uses
  %i.n = add nsw i32 %.038, -1                    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.047, i64 1
  %i.p = load i8, ptr %.047, align 1, !tbaa !8
  %.not5 = icmp ne i8 %i.p, 45
  %i.q = zext i1 %.not5 to i32
  %spec.select = add nuw nsw i32 %.09, %i.q       ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.m, %middle.block ], [ %spec.select, %.lr.ph ]
  ret i32 %.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [1000 x i8], align 16             ; 5 uses
  %i.d = alloca i32, align 4                      ; 15 uses
  %i.e = alloca i32, align 4                      ; 15 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  tail call void @arguments(i32 noundef %0, ptr noundef %1)
  %i.g = load ptr, ptr @inputfile, align 8, !tbaa !9 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noalias ptr @fopen(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.11) ; 2 uses
  %.not22 = icmp eq ptr %i.h, null
  br i1 %.not22, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.j = load ptr, ptr @inputfile, align 8, !tbaa !9
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.i, ptr noundef nonnull @.str.12, ptr noundef %i.j) #19 ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @stdin, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.016 = phi ptr [ %i.h, %bb.b ], [ %i.l, %bb.d ] ; 4 uses
  tail call void @getnumlen(ptr noundef %.016) #20
  tail call void @rewind(ptr noundef %.016)
  %i.m = load i32, ptr @njob, align 4, !tbaa !4   ; 4 uses
  %i.n = icmp slt i32 %i.m, 2
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.o, ptr noundef nonnull @.str.13, i32 noundef %i.m) #19 ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.q = icmp samesign ugt i32 %i.m, 50000
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.r, ptr noundef nonnull @.str.14, i32 noundef 50000) #19 ; 0 uses
  %i.t = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.u = tail call i64 @fwrite(ptr nonnull @.str.15, i64 56, i64 1, ptr %i.t) #21 ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.v = load i32, ptr @nlenmax, align 4, !tbaa !4
  %i.w = mul nsw i32 %i.v, 9
  %i.x = add nsw i32 %i.w, 1
  %i.y = tail call ptr @AllocateCharMtx(i32 noundef %i.m, i32 noundef %i.x) #20
  store ptr %i.y, ptr @main.seq, align 8, !tbaa !27
  %i.z = load i32, ptr @njob, align 4, !tbaa !4
  %i.aa = load i32, ptr @nlenmax, align 4, !tbaa !4
  %i.ab = mul nsw i32 %i.aa, 9
  %i.ac = add nsw i32 %i.ab, 1
  %i.ad = tail call ptr @AllocateCharMtx(i32 noundef %i.z, i32 noundef %i.ac) #20
  store ptr %i.ad, ptr @main.aseq, align 8, !tbaa !27
  %i.ae = load i32, ptr @njob, align 4, !tbaa !4
  %i.af = load i32, ptr @nlenmax, align 4, !tbaa !4
  %i.ag = mul nsw i32 %i.af, 9
  %i.ah = add nsw i32 %i.ag, 1
  %i.ai = tail call ptr @AllocateCharMtx(i32 noundef %i.ae, i32 noundef %i.ah) #20
  store ptr %i.ai, ptr @main.bseq, align 8, !tbaa !27
  %i.aj = load i32, ptr @njob, align 4, !tbaa !4
  %i.ak = tail call ptr @AllocateCharMtx(i32 noundef %i.aj, i32 noundef 0) #20
  store ptr %i.ak, ptr @main.mseq1, align 8, !tbaa !27
  %i.al = load i32, ptr @njob, align 4, !tbaa !4
  %i.am = tail call ptr @AllocateCharMtx(i32 noundef %i.al, i32 noundef 0) #20
  store ptr %i.am, ptr @main.mseq2, align 8, !tbaa !27
  %i.an = load i32, ptr @nlenmax, align 4, !tbaa !4
  %i.ao = load i32, ptr @njob, align 4, !tbaa !4
  %i.ap = tail call ptr @AllocateDoubleVec(i32 noundef %i.ao) #20
  store ptr %i.ap, ptr @main.eff, align 8, !tbaa !30
  %i.aq = load ptr, ptr @main.seq, align 8, !tbaa !27
  tail call void @readData(ptr noundef %.016, ptr noundef nonnull @main.name, ptr noundef nonnull @main.nlen, ptr noundef %i.aq) #20
  %i.ar = tail call i32 @fclose(ptr noundef %.016) ; 0 uses
  %i.as = load i32, ptr @njob, align 4, !tbaa !4
  %i.at = load ptr, ptr @main.seq, align 8, !tbaa !27
  tail call void @constants(i32 noundef %i.as, ptr noundef %i.at) #20
  tail call void @initSignalSM() #20
  tail call void @initFiles() #20
  %i.au = load ptr, ptr @trap_g, align 8, !tbaa !16 ; 27 uses
  %i.av = load i32, ptr @dorp, align 4, !tbaa !4
  %i.aw = icmp eq i32 %i.av, 100
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ax = tail call i64 @fwrite(ptr nonnull @.str.22, i64 4, i64 1, ptr %i.au) ; 0 uses
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ay = load i32, ptr @scoremtx, align 4, !tbaa !4
  switch i32 %i.ay, label %bb.o [
    i32 0, label %bb.l
    i32 1, label %bb.m
    i32 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.az = load i32, ptr @pamN, align 4, !tbaa !4
  %i.ba = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.23, i32 noundef %i.az) #20 ; 0 uses
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.bb = load i32, ptr @nblosum, align 4, !tbaa !4
  %i.bc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.24, i32 noundef %i.bb) #20 ; 0 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.bd = tail call i64 @fwrite(ptr nonnull @.str.25, i64 4, i64 1, ptr %i.au) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.be = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.bf = load i32, ptr @ppenalty, align 4, !tbaa !4
  %i.bg = sitofp i32 %i.bf to double
  %i.bh = fdiv double %i.bg, 1.000000e+03
  %i.bi = load i32, ptr @ppenalty_ex, align 4, !tbaa !4
  %2 = sitofp i32 %i.bi to double
  %3 = fdiv double %2, 1.000000e+03
  %4 = load i32, ptr @poffset, align 4, !tbaa !4
  %5 = sitofp i32 %4 to double
  %6 = fdiv double %5, 1.000000e+03
  %i.bj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.26, double noundef %i.bh, double noundef %3, double noundef %6) #19 ; 0 uses
  %i.bk = load i8, ptr @use_fft, align 1, !tbaa !8
  %.not.i = icmp eq i8 %i.bk, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = tail call i64 @fwrite(ptr nonnull @.str.27, i64 7, i64 1, ptr %i.au) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bm = tail call i64 @fwrite(ptr nonnull @.str.28, i64 17, i64 1, ptr %i.au) ; 0 uses
  %i.bn = load i32, ptr @tbrweight, align 4, !tbaa !4
  switch i32 %i.bn, label %bb.t [
    i32 0, label %bb.r
    i32 3, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.bo = tail call i64 @fwrite(ptr nonnull @.str.29, i64 11, i64 1, ptr %i.au) ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.bp = tail call i64 @fwrite(ptr nonnull @.str.30, i64 24, i64 1, ptr %i.au) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.bq = load i32, ptr @tbitr, align 4, !tbaa !4
  %i.br = icmp ne i32 %i.bq, 0
  %i.bs = load i32, ptr @tbweight, align 4
  %i.bt = icmp ne i32 %i.bs, 0
  %or.cond.i = select i1 %i.br, i1 true, i1 %i.bt
  br i1 %or.cond.i, label %bb.u, label %bb.ab

bb.u:                                             ; preds = %bb.t
  %i.bu = tail call i64 @fwrite(ptr nonnull @.str.31, i64 21, i64 1, ptr %i.au) ; 0 uses
  %i.bv = load i32, ptr @tbitr, align 4, !tbaa !4 ; 2 uses
  %i.bw = icmp ne i32 %i.bv, 0
  %i.bx = load i32, ptr @tbrweight, align 4       ; 2 uses
  %i.by = icmp eq i32 %i.bx, 0
  %or.cond3.i = select i1 %i.bw, i1 %i.by, i1 false
  br i1 %or.cond3.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bz = tail call i64 @fwrite(ptr nonnull @.str.32, i64 13, i64 1, ptr %i.au) ; 0 uses
  %.pre.i = load i32, ptr @tbitr, align 4, !tbaa !4
  %.pre37.i = load i32, ptr @tbrweight, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ca = phi i32 [ %.pre37.i, %bb.v ], [ %i.bx, %bb.u ]
  %i.cb = phi i32 [ %.pre.i, %bb.v ], [ %i.bv, %bb.u ]
  %i.cc = icmp ne i32 %i.cb, 0
  %i.cd = icmp eq i32 %i.ca, 3
  %or.cond5.i = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %or.cond5.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ce = tail call i64 @fwrite(ptr nonnull @.str.33, i64 21, i64 1, ptr %i.au) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cf = load i32, ptr @tbweight, align 4, !tbaa !4
  %.not34.i = icmp eq i32 %i.cf, 0
  br i1 %.not34.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = tail call i64 @fwrite(ptr nonnull @.str.34, i64 11, i64 1, ptr %i.au) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %fputc.i = tail call i32 @fputc(i32 10, ptr %i.au) ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.t
  %i.ch = load i32, ptr @ppenalty, align 4, !tbaa !4
  %i.ci = sitofp i32 %i.ch to double
  %i.cj = fdiv double %i.ci, 1.000000e+03
  %i.ck = load i32, ptr @ppenalty_ex, align 4, !tbaa !4
  %7 = sitofp i32 %i.ck to double
  %8 = fdiv double %7, 1.000000e+03
  %9 = load i32, ptr @poffset, align 4, !tbaa !4
  %10 = sitofp i32 %9 to double
  %11 = fdiv double %10, 1.000000e+03
  %i.cl = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.26, double noundef %i.cj, double noundef %8, double noundef %11) #20 ; 0 uses
  %i.cm = load i8, ptr @alg, align 1, !tbaa !8
  switch i8 %i.cm, label %bb.ag [
    i8 97, label %bb.ac
    i8 65, label %bb.ad
    i8 83, label %bb.ae
    i8 67, label %bb.af
  ]

bb.ac:                                            ; preds = %bb.ab
  %i.cn = tail call i64 @fwrite(ptr nonnull @.str.36, i64 12, i64 1, ptr %i.au) ; 0 uses
  br label %bb.ah

bb.ad:                                            ; preds = %bb.ab
  %i.co = tail call i64 @fwrite(ptr nonnull @.str.37, i64 13, i64 1, ptr %i.au) ; 0 uses
  br label %bb.ah

bb.ae:                                            ; preds = %bb.ab
  %i.cp = tail call i64 @fwrite(ptr nonnull @.str.38, i64 12, i64 1, ptr %i.au) ; 0 uses
  br label %bb.ah

bb.af:                                            ; preds = %bb.ab
  %i.cq = tail call i64 @fwrite(ptr nonnull @.str.39, i64 15, i64 1, ptr %i.au) ; 0 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ab
  %i.cr = tail call i64 @fwrite(ptr nonnull @.str.40, i64 18, i64 1, ptr %i.au) ; 0 uses
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %i.cs = load i8, ptr @use_fft, align 1, !tbaa !8
  %.not35.i = icmp eq i8 %i.cs, 0
  br i1 %.not35.i, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ct = tail call i64 @fwrite(ptr nonnull @.str.27, i64 7, i64 1, ptr %i.au) ; 0 uses
  %i.cu = load i32, ptr @dorp, align 4, !tbaa !4
  %i.cv = icmp eq i32 %i.cu, 100
  br i1 %i.cv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cw = tail call i64 @fwrite(ptr nonnull @.str.41, i64 22, i64 1, ptr %i.au) ; 0 uses
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.cx = load i32, ptr @fftscore, align 4, !tbaa !4
  %.not36.i = icmp eq i32 %i.cx, 0
  br i1 %.not36.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cy = tail call i64 @fwrite(ptr nonnull @.str.42, i64 28, i64 1, ptr %i.au) ; 0 uses
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.cz = tail call i64 @fwrite(ptr nonnull @.str.43, i64 23, i64 1, ptr %i.au) ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.aj
  %i.da = load i32, ptr @fftThreshold, align 4, !tbaa !4
  %i.db = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.44, i32 noundef %i.da) #20 ; 0 uses
  %i.dc = load i32, ptr @fftWinSize, align 4, !tbaa !4
  %i.dd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.au, ptr noundef nonnull @.str.45, i32 noundef %i.dc) #20 ; 0 uses
  br label %WriteOptions.exit

bb.ao:                                            ; preds = %bb.ah
  %i.de = tail call i64 @fwrite(ptr nonnull @.str.46, i64 8, i64 1, ptr %i.au) ; 0 uses
  br label %WriteOptions.exit

WriteOptions.exit:                                ; preds = %bb.an, %bb.ao
  %i.df = tail call i32 @fflush(ptr noundef %i.au) ; 0 uses
  %i.dg = load ptr, ptr @main.seq, align 8, !tbaa !27
  %i.dh = tail call signext i8 @seqcheck(ptr noundef %i.dg) #20 ; 2 uses
  %.not23 = icmp eq i8 %i.dh, 0
  br i1 %.not23, label %.preheader28, label %bb.ap

.preheader28:                                     ; preds = %WriteOptions.exit
  %i.di = load i32, ptr @njob, align 4, !tbaa !4  ; 4 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph, label %.preheader.._crit_edge_crit_edge

.lr.ph:                                           ; preds = %.preheader28
  %i.dk = load ptr, ptr @main.eff, align 8, !tbaa !30 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.di to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.di, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %index ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  store <2 x double> splat (double 1.000000e+00), ptr %i.dl, align 8, !tbaa !12
  store <2 x double> splat (double 1.000000e+00), ptr %i.dm, align 8, !tbaa !12
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph49.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.ap:                                            ; preds = %WriteOptions.exit
  %i.do = load ptr, ptr @stderr, align 8, !tbaa !16
  %i.dp = sext i8 %i.dh to i32
  %i.dq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.do, ptr noundef nonnull @.str.16, i32 noundef %i.dp) #19 ; 0 uses
  tail call void @exit(i32 noundef 1) #22
  unreachable

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader28
  %.pre = sext i32 %i.di to i64
  br label %._crit_edge

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %indvars.iv
  store double 1.000000e+00, ptr %i.dr, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph49.preheader, label %scalar.ph, !llvm.loop !33

.lr.ph49.preheader:                               ; preds = %scalar.ph, %middle.block
  br label %.lr.ph49

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %.lr.ph49
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.lr.ph49 ], [ 0, %.lr.ph49.preheader ] ; 3 uses
  %i.ds = load ptr, ptr @main.bseq, align 8, !tbaa !27
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv69
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !9
  %i.dv = load ptr, ptr @main.seq, align 8, !tbaa !27
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %indvars.iv69
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !9
  tail call void @gappick0(ptr noundef %i.du, ptr noundef %i.dx) #20
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.dy = load i32, ptr @njob, align 4, !tbaa !4
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = icmp slt i64 %indvars.iv.next70, %i.dz
  br i1 %i.ea, label %.lr.ph49, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph49, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.dz, %.lr.ph49 ]
  %i.eb = mul nsw i32 %i.an, 9                    ; 18 uses
  %i.ec = load ptr, ptr @main.bseq, align 8, !tbaa !27 ; 9 uses
  %i.ed = load ptr, ptr @main.aseq, align 8, !tbaa !27 ; 4 uses
  %i.ee = load ptr, ptr @main.mseq1, align 8, !tbaa !27 ; 24 uses
  %i.ef = load ptr, ptr @main.mseq2, align 8, !tbaa !27 ; 24 uses
  %i.eg = load ptr, ptr @main.eff, align 8, !tbaa !30 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.eh = tail call noalias ptr @calloc(i64 noundef %.pre-phi, i64 noundef 8) #23 ; 4 uses
  %i.ei = load i32, ptr @njob, align 4, !tbaa !4  ; 3 uses
  %i.ej = icmp sgt i32 %i.ei, 0
  br i1 %i.ej, label %.lr.ph25.i, label %._crit_edge26.i

.lr.ph25.i:                                       ; preds = %._crit_edge, %._crit_edge.i
  %indvars.iv90.i = phi i64 [ %indvars.iv.next91.i, %._crit_edge.i ], [ 0, %._crit_edge ] ; 2 uses
  %i.ek = phi i32 [ %i.eo, %._crit_edge.i ], [ %i.ei, %._crit_edge ]
  %i.el = sext i32 %i.ek to i64
  %i.em = tail call noalias ptr @calloc(i64 noundef %i.el, i64 noundef 80) #23 ; 4 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %indvars.iv90.i
  store ptr %i.em, ptr %i.en, align 8, !tbaa !35
  %i.eo = load i32, ptr @njob, align 4, !tbaa !4  ; 7 uses
  %i.ep = icmp sgt i32 %i.eo, 0
  br i1 %i.ep, label %.lr.ph.preheader.i, label %.lr.ph25.._crit_edge_crit_edge.i

.lr.ph25.._crit_edge_crit_edge.i:                 ; preds = %.lr.ph25.i
  %.pre143.i = sext i32 %i.eo to i64
  br label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph25.i
  %i.eq = zext nneg i32 %i.eo to i64              ; 4 uses
  %xtraiter = and i64 %i.eq, 1
  %i.er = icmp eq i32 %i.eo, 1
  br i1 %i.er, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.eq, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.es = getelementptr inbounds nuw [80 x i8], ptr %i.em, i64 %indvars.iv.i ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.et, i8 -1, i64 16, i1 false)
  store double -1.000000e+00, ptr %i.eu, align 8, !tbaa !37
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr null, ptr %i.ev, align 8, !tbaa !39
  store i32 0, ptr %i.es, align 8, !tbaa !40
  %i.ew = getelementptr inbounds nuw [80 x i8], ptr %i.em, i64 %indvars.iv.i ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 80
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 104
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 120
end_hunk_0
