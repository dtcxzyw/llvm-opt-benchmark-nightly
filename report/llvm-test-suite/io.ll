Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/io?download=true
inline.NumInlined: 109
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 23
begin_hunk_0_@putlocalhom3:bb.a
  %i.ah = sitofp i32 %i.af to double
  %i.ai = fdiv double %.0104143, %i.ah
  %i.aj = fmul double %i.ai, 5.800000e+00
  %i.ak = fdiv double %i.aj, 6.000000e+02
  %i.al = getelementptr inbounds nuw i8, ptr %.194, i64 40
  store double %i.ak, ptr %i.al, align 8, !tbaa !25
  br label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.am = fadd double %.0104143, %.0100144
  %i.an = add i32 %.0114136, %.0108.neg148
  %i.ao = add nsw i32 %i.an, %.096145
  br label %bb.n

bb.k:                                             ; preds = %bb.e, %.lr.ph
  %.not126 = icmp eq i8 %i.m, 45
  br i1 %.not126, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load i8, ptr %.0106141, align 1, !tbaa !19 ; 2 uses
  %.not127 = icmp eq i8 %i.ap, 45
  br i1 %.not127, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = icmp eq i32 %.0147, 0                   ; 2 uses
  %spec.select = select i1 %i.aq, i32 %.0116135, i32 %.0111138
  %spec.select131 = select i1 %i.aq, i32 %.0114136, i32 %.0108139
  %i.ar = sext i8 %i.m to i64
  %i.as = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [104 x i8], ptr @n_dis, i64 %i.au
  %i.aw = sext i8 %i.ap to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !4
  %i.bc = sitofp i32 %i.bb to double
  %i.bd = fadd double %.0104143, %i.bc
  br label %bb.n

bb.n:                                             ; preds = %bb.i, %bb.j, %bb.k, %bb.l, %bb.m
  %.2113 = phi i32 [ %.0111138, %bb.k ], [ %spec.select, %bb.m ], [ %.0111138, %bb.l ], [ %.0111138, %bb.j ], [ %.0111138, %bb.i ] ; 2 uses
  %.2110 = phi i32 [ %.0108139, %bb.k ], [ %spec.select131, %bb.m ], [ %.0108139, %bb.l ], [ %.0108139, %bb.j ], [ %.0108139, %bb.i ] ; 3 uses
  %.1105 = phi double [ %.0104143, %bb.k ], [ %i.bd, %bb.m ], [ %.0104143, %bb.l ], [ 0.000000e+00, %bb.j ], [ 0.000000e+00, %bb.i ] ; 2 uses
  %.2102 = phi double [ %.0100144, %bb.k ], [ %.0100144, %bb.m ], [ %.0100144, %bb.l ], [ %i.am, %bb.j ], [ %.0100144, %bb.i ] ; 2 uses
  %.298 = phi i32 [ %.096145, %bb.k ], [ %.096145, %bb.m ], [ %.096145, %bb.l ], [ %i.ao, %bb.j ], [ %.096145, %bb.i ] ; 2 uses
  %.295 = phi ptr [ %.093146, %bb.k ], [ %.093146, %bb.m ], [ %.093146, %bb.l ], [ %.194, %bb.j ], [ %.194, %bb.i ] ; 2 uses
  %.2 = phi i32 [ %.0147, %bb.k ], [ 1, %bb.m ], [ %.0147, %bb.l ], [ 0, %bb.j ], [ 0, %bb.i ]
  %i.be = getelementptr inbounds nuw i8, ptr %.0107140, i64 1 ; 3 uses
  %i.bf = load i8, ptr %.0107140, align 1, !tbaa !19
  %.not129 = icmp ne i8 %i.bf, 45
  %i.bg = zext i1 %.not129 to i32
  %spec.select132 = add nsw i32 %.0116135, %i.bg  ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.0106141, i64 1 ; 2 uses
  %i.bi = load i8, ptr %.0106141, align 1, !tbaa !19
  %.not130 = icmp ne i8 %i.bi, 45
  %i.bj = zext i1 %.not130 to i32
  %.1115 = add nsw i32 %.0114136, %i.bj           ; 2 uses
  %.0108.neg = sub i32 0, %.2110                  ; 2 uses
  %i.bk = load i8, ptr %i.be, align 1, !tbaa !19  ; 2 uses
  %.not120 = icmp eq i8 %i.bk, 0
  br i1 %.not120, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.n, %bb.c
  %.0116.lcssa = phi i32 [ %3, %bb.c ], [ %spec.select132, %bb.n ]
  %.0114.lcssa = phi i32 [ %4, %bb.c ], [ %.1115, %bb.n ] ; 2 uses
  %.0111.lcssa = phi i32 [ 0, %bb.c ], [ %.2113, %bb.n ]
  %.0108.lcssa = phi i32 [ 0, %bb.c ], [ %.2110, %bb.n ] ; 2 uses
  %.0107.lcssa = phi ptr [ %0, %bb.c ], [ %i.be, %bb.n ]
  %.0106.lcssa = phi ptr [ %1, %bb.c ], [ %i.bh, %bb.n ]
  %.0104.lcssa = phi double [ 0.000000e+00, %bb.c ], [ %.1105, %bb.n ] ; 2 uses
  %.0100.lcssa = phi double [ 0.000000e+00, %bb.c ], [ %.2102, %bb.n ] ; 4 uses
  %.096.lcssa = phi i32 [ 0, %bb.c ], [ %.298, %bb.n ] ; 4 uses
  %.093.lcssa = phi ptr [ %.091, %bb.c ], [ %.295, %bb.n ] ; 2 uses
  %.0108.neg.lcssa = phi i32 [ 0, %bb.c ], [ %.0108.neg, %bb.n ]
  %i.bl = getelementptr inbounds i8, ptr %.0107.lcssa, i64 -1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !19
  %.not121 = icmp eq i8 %i.bm, 45
  br i1 %.not121, label %bb.u, label %bb.o

bb.o:                                             ; preds = %._crit_edge
  %i.bn = getelementptr inbounds i8, ptr %.0106.lcssa, i64 -1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !19
  %.not122 = icmp eq i8 %i.bo, 45
  br i1 %.not122, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = load i32, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.bq = add nsw i32 %i.bp, 1
  store i32 %i.bq, ptr %2, align 8, !tbaa !16
  %i.br = icmp sgt i32 %i.bp, 0
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bs = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #29 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.093.lcssa, i64 8
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr null, ptr %i.bu, align 8, !tbaa !8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.3 = phi ptr [ %i.bs, %bb.q ], [ %.093.lcssa, %bb.p ] ; 6 uses
  %i.bv = add nsw i32 %.0116.lcssa, -1
  %i.bw = add nsw i32 %.0114.lcssa, -1            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.3, i64 24
  store i32 %.0111.lcssa, ptr %i.bx, align 8, !tbaa !20
  %i.by = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store i32 %.0108.lcssa, ptr %i.by, align 8, !tbaa !21
  %i.bz = getelementptr inbounds nuw i8, ptr %.3, i64 28
  store i32 %i.bv, ptr %i.bz, align 4, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %.3, i64 36
  store i32 %i.bw, ptr %i.ca, align 4, !tbaa !23
  %i.cb = load i32, ptr @divpairscore, align 4, !tbaa !4
  %.not123 = icmp eq i32 %i.cb, 0
  br i1 %.not123, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cc = sub nsw i32 %i.bw, %.0108.lcssa
  %i.cd = add nsw i32 %i.cc, 1                    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.3, i64 48
  store i32 %i.cd, ptr %i.ce, align 8, !tbaa !24
  %i.cf = sitofp i32 %i.cd to double
  %i.cg = fdiv double %.0104.lcssa, %i.cf
  %i.ch = fmul double %i.cg, 5.800000e+00
  %i.ci = fdiv double %i.ch, 6.000000e+02
  %i.cj = getelementptr inbounds nuw i8, ptr %.3, i64 40
  store double %i.ci, ptr %i.cj, align 8, !tbaa !25
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.ck = fadd double %.0104.lcssa, %.0100.lcssa
  %i.cl = add i32 %.0114.lcssa, %.0108.neg.lcssa
  %i.cm = add nsw i32 %i.cl, %.096.lcssa
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.o, %._crit_edge
  %.3103 = phi double [ %.0100.lcssa, %bb.s ], [ %i.ck, %bb.t ], [ %.0100.lcssa, %bb.o ], [ %.0100.lcssa, %._crit_edge ] ; 2 uses
  %.399 = phi i32 [ %.096.lcssa, %bb.s ], [ %i.cm, %bb.t ], [ %.096.lcssa, %bb.o ], [ %.096.lcssa, %._crit_edge ] ; 2 uses
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.co = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cn, ptr noundef nonnull @.str.3, double noundef %.3103) #28 ; 0 uses
  %i.cp = load i32, ptr @divpairscore, align 4, !tbaa !4
  %.not124 = icmp eq i32 %i.cp, 0
  br i1 %.not124, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %bb.u
  br i1 %i.e, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.192 = phi ptr [ %.091, %bb.v ], [ %i.cq, %bb.w ] ; 2 uses
  %.not125159 = icmp eq ptr %.192, null
  br i1 %.not125159, label %.loopexit, label %.lr.ph162

.lr.ph162:                                        ; preds = %bb.x
  %i.cr = fmul double %.3103, 5.800000e+00
  %i.cs = fdiv double %i.cr, 6.000000e+02
  %i.ct = sitofp i32 %.399 to double
  %i.cu = fdiv double %i.cs, %i.ct                ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph162, %bb.y
  %.4160 = phi ptr [ %.192, %.lr.ph162 ], [ %i.da, %bb.y ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.4160, i64 48
  store i32 %.399, ptr %i.cv, align 8, !tbaa !24
  %i.cw = getelementptr inbounds nuw i8, ptr %.4160, i64 40
  store double %i.cu, ptr %i.cw, align 8, !tbaa !25
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.cy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cx, ptr noundef nonnull @.str.4, double noundef %i.cu) #28 ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.4160, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !8  ; 2 uses
  %.not125 = icmp eq ptr %i.da, null
  br i1 %.not125, label %.loopexit, label %bb.y, !llvm.loop !27

.loopexit:                                        ; preds = %bb.y, %bb.x, %bb.u
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @putlocalhom_ext(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !19      ; 2 uses
  %.not117 = icmp eq i8 %i.a, 0
  br i1 %.not117, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %7 = load i32, ptr @divpairscore, align 4
  %.not112 = icmp eq i32 %7, 0
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph, %bb.l
  %i.b = phi i8 [ %i.a, %.lr.ph ], [ %i.aw, %bb.l ] ; 3 uses
  %.094.neg132 = phi i32 [ 0, %.lr.ph ], [ %.094.neg, %bb.l ]
  %.0131 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.l ] ; 4 uses
  %.078130 = phi i32 [ 0, %.lr.ph ], [ %.179, %bb.l ] ; 5 uses
  %.080129 = phi ptr [ %2, %.lr.ph ], [ %.282, %bb.l ] ; 5 uses
  %.083128 = phi i32 [ 0, %.lr.ph ], [ %.285, %bb.l ] ; 5 uses
  %.090126 = phi i32 [ 0, %.lr.ph ], [ %.191, %bb.l ] ; 4 uses
  %.092124 = phi ptr [ %1, %.lr.ph ], [ %i.at, %bb.l ] ; 4 uses
  %.093123 = phi ptr [ %0, %.lr.ph ], [ %i.aq, %bb.l ] ; 2 uses
  %.094122 = phi i32 [ 0, %.lr.ph ], [ %.296, %bb.l ] ; 7 uses
  %.097121 = phi i32 [ 0, %.lr.ph ], [ %.299, %bb.l ] ; 6 uses
  %.0100119 = phi i32 [ %4, %.lr.ph ], [ %.1101, %bb.l ] ; 4 uses
  %.0102118 = phi i32 [ %3, %.lr.ph ], [ %spec.select116, %bb.l ] ; 3 uses
  %i.c = icmp eq i32 %.0131, 1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %.lr.ph.a
  %i.d = icmp eq i8 %i.b, 45
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %.092124, align 1, !tbaa !19
  %i.f = icmp eq i8 %i.e, 45
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = add nsw i32 %.0102118, -1
  %i.h = add nsw i32 %.0100119, -1                ; 2 uses
  %i.i = add nsw i32 %.078130, 1                  ; 2 uses
  %i.j = icmp sgt i32 %.078130, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #29 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.080129, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.181 = phi ptr [ %i.k, %bb.e ], [ %.080129, %bb.d ] ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.181, i64 24
  store i32 %.097121, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %.181, i64 32
  store i32 %.094122, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %.181, i64 28
  store i32 %i.g, ptr %i.p, align 4, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %.181, i64 36
  store i32 %i.h, ptr %i.q, align 4, !tbaa !23
  br i1 %.not112, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = sub nsw i32 %i.h, %.094122
  %i.s = add nsw i32 %i.r, 1                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.181, i64 48
  store i32 %i.s, ptr %i.t, align 8, !tbaa !24
  %i.u = sitofp i32 %.090126 to double
  %i.v = sitofp i32 %i.s to double
  %i.w = fdiv double %i.u, %i.v
  %i.x = fmul double %i.w, 5.800000e+00
  %i.y = fdiv double %i.x, 6.000000e+02
  %i.z = getelementptr inbounds nuw i8, ptr %.181, i64 40
  store double %i.y, ptr %i.z, align 8, !tbaa !25
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.aa = add i32 %.0100119, %.094.neg132
  %i.ab = add nsw i32 %i.aa, %.083128
  br label %bb.l

bb.i:                                             ; preds = %bb.c, %.lr.ph.a
  %.not110 = icmp eq i8 %i.b, 45
  br i1 %.not110, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %.092124, align 1, !tbaa !19 ; 2 uses
  %.not111 = icmp eq i8 %i.ac, 45
  br i1 %.not111, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp eq i32 %.0131, 0                   ; 2 uses
  %spec.select = select i1 %i.ad, i32 %.0102118, i32 %.097121
  %spec.select115 = select i1 %i.ad, i32 %.0100119, i32 %.094122
  %i.ae = sext i8 %i.b to i64
  %i.af = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [104 x i8], ptr @n_dis, i64 %i.ah
  %i.aj = sext i8 %i.ac to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = add nsw i32 %i.ao, %.090126
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.299 = phi i32 [ %.097121, %bb.i ], [ %spec.select, %bb.k ], [ %.097121, %bb.j ], [ %.097121, %bb.h ], [ %.097121, %bb.g ] ; 2 uses
  %.296 = phi i32 [ %.094122, %bb.i ], [ %spec.select115, %bb.k ], [ %.094122, %bb.j ], [ %.094122, %bb.h ], [ %.094122, %bb.g ] ; 3 uses
  %.191 = phi i32 [ %.090126, %bb.i ], [ %i.ap, %bb.k ], [ %.090126, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.285 = phi i32 [ %.083128, %bb.i ], [ %.083128, %bb.k ], [ %.083128, %bb.j ], [ %i.ab, %bb.h ], [ %.083128, %bb.g ] ; 2 uses
  %.282 = phi ptr [ %.080129, %bb.i ], [ %.080129, %bb.k ], [ %.080129, %bb.j ], [ %.181, %bb.h ], [ %.181, %bb.g ] ; 2 uses
  %.179 = phi i32 [ %.078130, %bb.i ], [ %.078130, %bb.k ], [ %.078130, %bb.j ], [ %i.i, %bb.h ], [ %i.i, %bb.g ] ; 2 uses
  %.2 = phi i32 [ %.0131, %bb.i ], [ 1, %bb.k ], [ %.0131, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.093123, i64 1 ; 3 uses
  %i.ar = load i8, ptr %.093123, align 1, !tbaa !19
  %.not113 = icmp ne i8 %i.ar, 45
  %i.as = zext i1 %.not113 to i32
  %spec.select116 = add nsw i32 %.0102118, %i.as  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.092124, i64 1 ; 2 uses
  %i.au = load i8, ptr %.092124, align 1, !tbaa !19
  %.not114 = icmp ne i8 %i.au, 45
  %i.av = zext i1 %.not114 to i32
  %.1101 = add nsw i32 %.0100119, %i.av           ; 2 uses
  %.094.neg = sub i32 0, %.296                    ; 2 uses
  %i.aw = load i8, ptr %i.aq, align 1, !tbaa !19  ; 2 uses
  %.not = icmp eq i8 %i.aw, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph.a, !llvm.loop !28

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.ax = icmp sgt i32 %.179, 0
  %i.ay = sitofp i32 %.191 to double
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0102.lcssa = phi i32 [ %3, %bb.a ], [ %spec.select116, %._crit_edge.loopexit ]
  %.0100.lcssa = phi i32 [ %4, %bb.a ], [ %.1101, %._crit_edge.loopexit ] ; 2 uses
  %.097.lcssa = phi i32 [ 0, %bb.a ], [ %.299, %._crit_edge.loopexit ]
  %.094.lcssa = phi i32 [ 0, %bb.a ], [ %.296, %._crit_edge.loopexit ] ; 2 uses
  %.093.lcssa = phi ptr [ %0, %bb.a ], [ %i.aq, %._crit_edge.loopexit ]
  %.092.lcssa = phi ptr [ %1, %bb.a ], [ %i.at, %._crit_edge.loopexit ]
  %.090.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ay, %._crit_edge.loopexit ]
  %.083.lcssa = phi i32 [ 0, %bb.a ], [ %.285, %._crit_edge.loopexit ] ; 4 uses
  %.080.lcssa = phi ptr [ %2, %bb.a ], [ %.282, %._crit_edge.loopexit ] ; 2 uses
  %.078.lcssa = phi i1 [ false, %bb.a ], [ %i.ax, %._crit_edge.loopexit ]
  %.094.neg.lcssa = phi i32 [ 0, %bb.a ], [ %.094.neg, %._crit_edge.loopexit ]
  %i.az = getelementptr inbounds i8, ptr %.093.lcssa, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !19
  %.not105 = icmp eq i8 %i.ba, 45
  br i1 %.not105, label %bb.s, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds i8, ptr %.092.lcssa, i64 -1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !19
  %.not106 = icmp eq i8 %i.bc, 45
  br i1 %.not106, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.078.lcssa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #29 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.080.lcssa, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr null, ptr %i.bf, align 8, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.3 = phi ptr [ %i.bd, %bb.o ], [ %.080.lcssa, %bb.n ] ; 6 uses
  %i.bg = add nsw i32 %.0102.lcssa, -1
  %i.bh = add nsw i32 %.0100.lcssa, -1            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.3, i64 24
  store i32 %.097.lcssa, ptr %i.bi, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store i32 %.094.lcssa, ptr %i.bj, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %.3, i64 28
  store i32 %i.bg, ptr %i.bk, align 4, !tbaa !22
  %i.bl = getelementptr inbounds nuw i8, ptr %.3, i64 36
  store i32 %i.bh, ptr %i.bl, align 4, !tbaa !23
  %i.bm = load i32, ptr @divpairscore, align 4, !tbaa !4
  %.not107 = icmp eq i32 %i.bm, 0
  br i1 %.not107, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = sub nsw i32 %i.bh, %.094.lcssa
  %i.bo = add nsw i32 %i.bn, 1                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.3, i64 48
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !24
  %i.bq = sitofp i32 %i.bo to double
  %i.br = fdiv double %.090.lcssa, %i.bq
  %i.bs = fmul double %i.br, 5.800000e+00
  %i.bt = fdiv double %i.bs, 6.000000e+02
  %i.bu = getelementptr inbounds nuw i8, ptr %.3, i64 40
  store double %i.bt, ptr %i.bu, align 8, !tbaa !25
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bv = add i32 %.0100.lcssa, %.094.neg.lcssa
  %i.bw = add nsw i32 %i.bv, %.083.lcssa
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.m, %._crit_edge
  %.386 = phi i32 [ %.083.lcssa, %bb.q ], [ %i.bw, %bb.r ], [ %.083.lcssa, %bb.m ], [ %.083.lcssa, %._crit_edge ]
  %i.bx = load i32, ptr @divpairscore, align 4, !tbaa !4
  %.not108 = icmp ne i32 %i.bx, 0
  %.not109143 = icmp eq ptr %2, null
  %or.cond = or i1 %.not108, %.not109143
  br i1 %or.cond, label %.loopexit, label %.lr.ph145

.lr.ph145:                                        ; preds = %bb.s, %.lr.ph145
  %.4144 = phi ptr [ %i.cb, %.lr.ph145 ], [ %2, %bb.s ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.4144, i64 48
  store i32 %.386, ptr %i.by, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %.4144, i64 40
  store double 5.800000e+00, ptr %i.bz, align 8, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %.4144, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !8  ; 2 uses
  %.not109 = icmp eq ptr %i.cb, null
  br i1 %.not109, label %.loopexit, label %.lr.ph145, !llvm.loop !29

.loopexit:                                        ; preds = %.lr.ph145, %bb.s
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @putlocalhom2(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !19      ; 2 uses
  %.not120 = icmp eq i8 %i.a, 0
  br i1 %.not120, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %7 = load i32, ptr @divpairscore, align 4
  %.not115 = icmp eq i32 %7, 0
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph, %bb.l
  %i.b = phi i8 [ %i.a, %.lr.ph ], [ %i.ax, %bb.l ] ; 3 uses
  %.097.neg135 = phi i32 [ 0, %.lr.ph ], [ %.097.neg, %bb.l ]
  %.0134 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.l ] ; 4 uses
  %.080133 = phi i32 [ 0, %.lr.ph ], [ %.181, %bb.l ] ; 5 uses
  %.082132 = phi ptr [ %2, %.lr.ph ], [ %.284, %bb.l ] ; 5 uses
  %.085131 = phi i32 [ 0, %.lr.ph ], [ %.287, %bb.l ] ; 5 uses
  %.089130 = phi i32 [ 0, %.lr.ph ], [ %.291, %bb.l ] ; 5 uses
  %.093129 = phi i32 [ 0, %.lr.ph ], [ %.194, %bb.l ] ; 5 uses
  %.095127 = phi ptr [ %1, %.lr.ph ], [ %i.au, %bb.l ] ; 4 uses
  %.096126 = phi ptr [ %0, %.lr.ph ], [ %i.ar, %bb.l ] ; 2 uses
  %.097125 = phi i32 [ 0, %.lr.ph ], [ %.299, %bb.l ] ; 7 uses
  %.0100124 = phi i32 [ 0, %.lr.ph ], [ %.2102, %bb.l ] ; 6 uses
  %.0103122 = phi i32 [ %4, %.lr.ph ], [ %.1104, %bb.l ] ; 4 uses
  %.0105121 = phi i32 [ %3, %.lr.ph ], [ %spec.select119, %bb.l ] ; 3 uses
  %i.c = icmp eq i32 %.0134, 1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %.lr.ph.a
  %i.d = icmp eq i8 %i.b, 45
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %.095127, align 1, !tbaa !19
  %i.f = icmp eq i8 %i.e, 45
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = add nsw i32 %.0105121, -1
  %i.h = add nsw i32 %.0103122, -1                ; 2 uses
  %i.i = add nsw i32 %.080133, 1                  ; 2 uses
  %i.j = icmp sgt i32 %.080133, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #29 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.082132, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.183 = phi ptr [ %i.k, %bb.e ], [ %.082132, %bb.d ] ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.183, i64 24
  store i32 %.0100124, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %.183, i64 32
  store i32 %.097125, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %.183, i64 28
  store i32 %i.g, ptr %i.p, align 4, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %.183, i64 36
  store i32 %i.h, ptr %i.q, align 4, !tbaa !23
  br i1 %.not115, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = sub nsw i32 %i.h, %.097125
  %i.s = add nsw i32 %i.r, 1                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.183, i64 48
  store i32 %i.s, ptr %i.t, align 8, !tbaa !24
  %i.u = sitofp i32 %.093129 to double
  %i.v = sitofp i32 %i.s to double
  %i.w = fdiv double %i.u, %i.v
  %i.x = fmul double %i.w, 5.800000e+00
  %i.y = fdiv double %i.x, 6.000000e+02
  %i.z = getelementptr inbounds nuw i8, ptr %.183, i64 40
  store double %i.y, ptr %i.z, align 8, !tbaa !25
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.aa = add nsw i32 %.089130, %.093129
  %i.ab = add i32 %.0103122, %.097.neg135
  %i.ac = add nsw i32 %i.ab, %.085131
  br label %bb.l

bb.i:                                             ; preds = %bb.c, %.lr.ph.a
  %.not113 = icmp eq i8 %i.b, 45
  br i1 %.not113, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load i8, ptr %.095127, align 1, !tbaa !19 ; 2 uses
  %.not114 = icmp eq i8 %i.ad, 45
  br i1 %.not114, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = icmp eq i32 %.0134, 0                   ; 2 uses
  %spec.select = select i1 %i.ae, i32 %.0105121, i32 %.0100124
  %spec.select118 = select i1 %i.ae, i32 %.0103122, i32 %.097125
  %i.af = sext i8 %i.b to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [104 x i8], ptr @n_dis, i64 %i.ai
  %i.ak = sext i8 %i.ad to i64
  %i.al = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = add nsw i32 %i.ap, %.093129
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.2102 = phi i32 [ %.0100124, %bb.i ], [ %spec.select, %bb.k ], [ %.0100124, %bb.j ], [ %.0100124, %bb.h ], [ %.0100124, %bb.g ] ; 2 uses
  %.299 = phi i32 [ %.097125, %bb.i ], [ %spec.select118, %bb.k ], [ %.097125, %bb.j ], [ %.097125, %bb.h ], [ %.097125, %bb.g ] ; 3 uses
  %.194 = phi i32 [ %.093129, %bb.i ], [ %i.aq, %bb.k ], [ %.093129, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.291 = phi i32 [ %.089130, %bb.i ], [ %.089130, %bb.k ], [ %.089130, %bb.j ], [ %i.aa, %bb.h ], [ %.089130, %bb.g ] ; 2 uses
  %.287 = phi i32 [ %.085131, %bb.i ], [ %.085131, %bb.k ], [ %.085131, %bb.j ], [ %i.ac, %bb.h ], [ %.085131, %bb.g ] ; 2 uses
  %.284 = phi ptr [ %.082132, %bb.i ], [ %.082132, %bb.k ], [ %.082132, %bb.j ], [ %.183, %bb.h ], [ %.183, %bb.g ] ; 2 uses
  %.181 = phi i32 [ %.080133, %bb.i ], [ %.080133, %bb.k ], [ %.080133, %bb.j ], [ %i.i, %bb.h ], [ %i.i, %bb.g ] ; 2 uses
  %.2 = phi i32 [ %.0134, %bb.i ], [ 1, %bb.k ], [ %.0134, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.096126, i64 1 ; 3 uses
  %i.as = load i8, ptr %.096126, align 1, !tbaa !19
  %.not116 = icmp ne i8 %i.as, 45
  %i.at = zext i1 %.not116 to i32
  %spec.select119 = add nsw i32 %.0105121, %i.at  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.095127, i64 1 ; 2 uses
  %i.av = load i8, ptr %.095127, align 1, !tbaa !19
  %.not117 = icmp ne i8 %i.av, 45
  %i.aw = zext i1 %.not117 to i32
  %.1104 = add nsw i32 %.0103122, %i.aw           ; 2 uses
  %.097.neg = sub i32 0, %.299                    ; 2 uses
  %i.ax = load i8, ptr %i.ar, align 1, !tbaa !19  ; 2 uses
  %.not = icmp eq i8 %i.ax, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph.a, !llvm.loop !30

._crit_edge.loopexit:                             ; preds = %bb.l
  %i.ay = icmp sgt i32 %.181, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.0105.lcssa = phi i32 [ %3, %bb.a ], [ %spec.select119, %._crit_edge.loopexit ]
  %.0103.lcssa = phi i32 [ %4, %bb.a ], [ %.1104, %._crit_edge.loopexit ] ; 2 uses
  %.0100.lcssa = phi i32 [ 0, %bb.a ], [ %.2102, %._crit_edge.loopexit ]
  %.097.lcssa = phi i32 [ 0, %bb.a ], [ %.299, %._crit_edge.loopexit ] ; 2 uses
  %.096.lcssa = phi ptr [ %0, %bb.a ], [ %i.ar, %._crit_edge.loopexit ]
  %.095.lcssa = phi ptr [ %1, %bb.a ], [ %i.au, %._crit_edge.loopexit ]
  %.093.lcssa = phi i32 [ 0, %bb.a ], [ %.194, %._crit_edge.loopexit ] ; 2 uses
  %.089.lcssa = phi i32 [ 0, %bb.a ], [ %.291, %._crit_edge.loopexit ] ; 4 uses
  %.085.lcssa = phi i32 [ 0, %bb.a ], [ %.287, %._crit_edge.loopexit ] ; 4 uses
  %.082.lcssa = phi ptr [ %2, %bb.a ], [ %.284, %._crit_edge.loopexit ] ; 2 uses
  %.080.lcssa = phi i1 [ false, %bb.a ], [ %i.ay, %._crit_edge.loopexit ]
  %.097.neg.lcssa = phi i32 [ 0, %bb.a ], [ %.097.neg, %._crit_edge.loopexit ]
  %i.az = getelementptr inbounds i8, ptr %.096.lcssa, i64 -1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !19
  %.not108 = icmp eq i8 %i.ba, 45
  br i1 %.not108, label %bb.s, label %bb.m

bb.m:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds i8, ptr %.095.lcssa, i64 -1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !19
  %.not109 = icmp eq i8 %i.bc, 45
  br i1 %.not109, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %.080.lcssa, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bd = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #29 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.082.lcssa, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr null, ptr %i.bf, align 8, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.3 = phi ptr [ %i.bd, %bb.o ], [ %.082.lcssa, %bb.n ] ; 6 uses
  %i.bg = add nsw i32 %.0105.lcssa, -1
  %i.bh = add nsw i32 %.0103.lcssa, -1            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.3, i64 24
  store i32 %.0100.lcssa, ptr %i.bi, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store i32 %.097.lcssa, ptr %i.bj, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %.3, i64 28
  store i32 %i.bg, ptr %i.bk, align 4, !tbaa !22
  %i.bl = getelementptr inbounds nuw i8, ptr %.3, i64 36
  store i32 %i.bh, ptr %i.bl, align 4, !tbaa !23
  %i.bm = load i32, ptr @divpairscore, align 4, !tbaa !4
  %.not110 = icmp eq i32 %i.bm, 0
  br i1 %.not110, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = sub nsw i32 %i.bh, %.097.lcssa
  %i.bo = add nsw i32 %i.bn, 1                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.3, i64 48
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !24
  %i.bq = sitofp i32 %.093.lcssa to double
  %i.br = sitofp i32 %i.bo to double
  %i.bs = fdiv double %i.bq, %i.br
  %i.bt = fmul double %i.bs, 5.800000e+00
  %i.bu = fdiv double %i.bt, 6.000000e+02
  %i.bv = getelementptr inbounds nuw i8, ptr %.3, i64 40
  store double %i.bu, ptr %i.bv, align 8, !tbaa !25
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bw = add nsw i32 %.089.lcssa, %.093.lcssa
  %i.bx = add i32 %.0103.lcssa, %.097.neg.lcssa
  %i.by = add nsw i32 %i.bx, %.085.lcssa
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.m, %._crit_edge
  %.392 = phi i32 [ %.089.lcssa, %bb.q ], [ %i.bw, %bb.r ], [ %.089.lcssa, %bb.m ], [ %.089.lcssa, %._crit_edge ]
  %.388 = phi i32 [ %.085.lcssa, %bb.q ], [ %i.by, %bb.r ], [ %.085.lcssa, %bb.m ], [ %.085.lcssa, %._crit_edge ] ; 2 uses
  %i.bz = load i32, ptr @divpairscore, align 4, !tbaa !4
  %.not111 = icmp ne i32 %i.bz, 0
  %.not112147 = icmp eq ptr %2, null
  %or.cond = or i1 %.not111, %.not112147
  br i1 %or.cond, label %.loopexit, label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.s
  %i.ca = sitofp i32 %.392 to double
  %i.cb = fmul nnan double %i.ca, 5.800000e+00
  %i.cc = mul nsw i32 %.388, 600
  %i.cd = sitofp i32 %i.cc to double
  %i.ce = fdiv double %i.cb, %i.cd
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph149, %bb.t
  %.4148 = phi ptr [ %2, %.lr.ph149 ], [ %i.ci, %bb.t ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.4148, i64 48
  store i32 %.388, ptr %i.cf, align 8, !tbaa !24
  %i.cg = getelementptr inbounds nuw i8, ptr %.4148, i64 40
  store double %i.ce, ptr %i.cg, align 8, !tbaa !25
  %i.ch = getelementptr inbounds nuw i8, ptr %.4148, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !8  ; 2 uses
  %.not112 = icmp eq ptr %i.ci, null
  br i1 %.not112, label %.loopexit, label %bb.t, !llvm.loop !31

.loopexit:                                        ; preds = %bb.t, %bb.s
  ret void
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @putlocalhom(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, i32 noundef %4, i32 %5, i32 %6) local_unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !19      ; 2 uses
  %.not118 = icmp eq i8 %i.a, 0
  br i1 %.not118, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %7 = load i32, ptr @divpairscore, align 4
  %.not111 = icmp eq i32 %7, 0
  br label %.lr.ph.a

.lr.ph.a:                                         ; preds = %.lr.ph, %bb.l
  %i.b = phi i8 [ %i.a, %.lr.ph ], [ %i.ax, %bb.l ] ; 3 uses
  %.095.neg133 = phi i32 [ 0, %.lr.ph ], [ %.095.neg, %bb.l ]
  %.0132 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.l ] ; 4 uses
  %.078131 = phi i32 [ 0, %.lr.ph ], [ %.179, %bb.l ] ; 5 uses
  %.080130 = phi ptr [ %2, %.lr.ph ], [ %.282, %bb.l ] ; 5 uses
  %.083129 = phi i32 [ 0, %.lr.ph ], [ %.285, %bb.l ] ; 5 uses
  %.087128 = phi double [ 0.000000e+00, %.lr.ph ], [ %.289, %bb.l ] ; 5 uses
  %.091127 = phi double [ 0.000000e+00, %.lr.ph ], [ %.192, %bb.l ] ; 5 uses
  %.093125 = phi ptr [ %1, %.lr.ph ], [ %i.au, %bb.l ] ; 4 uses
  %.094124 = phi ptr [ %0, %.lr.ph ], [ %i.ar, %bb.l ] ; 2 uses
  %.095123 = phi i32 [ 0, %.lr.ph ], [ %.297, %bb.l ] ; 7 uses
  %.098122 = phi i32 [ 0, %.lr.ph ], [ %.2100, %bb.l ] ; 6 uses
  %.0101120 = phi i32 [ %4, %.lr.ph ], [ %.1102, %bb.l ] ; 4 uses
  %.0103119 = phi i32 [ %3, %.lr.ph ], [ %spec.select115, %bb.l ] ; 3 uses
  %i.c = icmp eq i32 %.0132, 1
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %.lr.ph.a
  %i.d = icmp eq i8 %i.b, 45
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %.093125, align 1, !tbaa !19
  %i.f = icmp eq i8 %i.e, 45
  br i1 %i.f, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = add nsw i32 %.0103119, -1
  %i.h = add nsw i32 %.0101120, -1                ; 2 uses
  %i.i = add nsw i32 %.078131, 1                  ; 2 uses
  %i.j = icmp sgt i32 %.078131, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #29 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.080130, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.m, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.181 = phi ptr [ %i.k, %bb.e ], [ %.080130, %bb.d ] ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.181, i64 24
  store i32 %.098122, ptr %i.n, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %.181, i64 32
  store i32 %.095123, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %.181, i64 28
  store i32 %i.g, ptr %i.p, align 4, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %.181, i64 36
  store i32 %i.h, ptr %i.q, align 4, !tbaa !23
  br i1 %.not111, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = sub nsw i32 %i.h, %.095123
  %i.s = add nsw i32 %i.r, 1                      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.181, i64 48
  store i32 %i.s, ptr %i.t, align 8, !tbaa !24
  %i.u = sitofp i32 %i.s to double
  %i.v = fdiv double %.091127, %i.u
  %i.w = fmul double %i.v, 5.800000e+00
  %i.x = fdiv double %i.w, 6.000000e+02
  %i.y = getelementptr inbounds nuw i8, ptr %.181, i64 40
  store double %i.x, ptr %i.y, align 8, !tbaa !25
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.z = fadd double %.091127, %.087128
  %i.aa = add i32 %.0101120, %.095.neg133
  %i.ab = add nsw i32 %i.aa, %.083129
  br label %bb.l

bb.i:                                             ; preds = %bb.c, %.lr.ph.a
  %.not109 = icmp eq i8 %i.b, 45
  br i1 %.not109, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i8, ptr %.093125, align 1, !tbaa !19 ; 2 uses
  %.not110 = icmp eq i8 %i.ac, 45
  br i1 %.not110, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = icmp eq i32 %.0132, 0                   ; 2 uses
  %spec.select = select i1 %i.ad, i32 %.0103119, i32 %.098122
  %spec.select114 = select i1 %i.ad, i32 %.0101120, i32 %.095123
  %i.ae = sext i8 %i.b to i64
  %i.af = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [104 x i8], ptr @n_dis, i64 %i.ah
  %i.aj = sext i8 %i.ac to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr @amino_n, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = fadd double %.091127, %i.ap
  br label %bb.l

bb.l:                                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k
  %.2100 = phi i32 [ %.098122, %bb.i ], [ %spec.select, %bb.k ], [ %.098122, %bb.j ], [ %.098122, %bb.h ], [ %.098122, %bb.g ] ; 3 uses
  %.297 = phi i32 [ %.095123, %bb.i ], [ %spec.select114, %bb.k ], [ %.095123, %bb.j ], [ %.095123, %bb.h ], [ %.095123, %bb.g ] ; 4 uses
  %.192 = phi double [ %.091127, %bb.i ], [ %i.aq, %bb.k ], [ %.091127, %bb.j ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %bb.g ] ; 4 uses
  %.289 = phi double [ %.087128, %bb.i ], [ %.087128, %bb.k ], [ %.087128, %bb.j ], [ %i.z, %bb.h ], [ %.087128, %bb.g ] ; 2 uses
  %.285 = phi i32 [ %.083129, %bb.i ], [ %.083129, %bb.k ], [ %.083129, %bb.j ], [ %i.ab, %bb.h ], [ %.083129, %bb.g ] ; 3 uses
  %.282 = phi ptr [ %.080130, %bb.i ], [ %.080130, %bb.k ], [ %.080130, %bb.j ], [ %.181, %bb.h ], [ %.181, %bb.g ] ; 3 uses
  %.179 = phi i32 [ %.078131, %bb.i ], [ %.078131, %bb.k ], [ %.078131, %bb.j ], [ %i.i, %bb.h ], [ %i.i, %bb.g ] ; 2 uses
  %.2 = phi i32 [ %.0132, %bb.i ], [ 1, %bb.k ], [ %.0132, %bb.j ], [ 0, %bb.h ], [ 0, %bb.g ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.094124, i64 1 ; 2 uses
  %i.as = load i8, ptr %.094124, align 1, !tbaa !19
  %.not112 = icmp ne i8 %i.as, 45
  %i.at = zext i1 %.not112 to i32
  %spec.select115 = add nsw i32 %.0103119, %i.at  ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.093125, i64 1
  %i.av = load i8, ptr %.093125, align 1, !tbaa !19
  %.not113 = icmp ne i8 %i.av, 45
  %i.aw = zext i1 %.not113 to i32
  %.1102 = add nsw i32 %.0101120, %i.aw           ; 3 uses
  %.095.neg = sub i32 0, %.297                    ; 3 uses
  %i.ax = load i8, ptr %i.ar, align 1, !tbaa !19  ; 2 uses
  %.not = icmp eq i8 %i.ax, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.a, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.l
  %i.ay = icmp sgt i32 %.179, 0
  %i.az = fadd double %.192, %.289
  %i.ba = fmul double %i.az, 5.800000e+00         ; 2 uses
  br i1 %i.ay, label %bb.m, label %._crit_edge.thread

bb.m:                                             ; preds = %._crit_edge
  %i.bb = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #29 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.282, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store ptr null, ptr %i.bd, align 8, !tbaa !8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.m, %._crit_edge
  %.095.neg.lcssa169 = phi i32 [ %.095.neg, %bb.m ], [ %.095.neg, %._crit_edge ], [ 0, %bb.a ]
  %.083.lcssa168 = phi i32 [ %.285, %bb.m ], [ %.285, %._crit_edge ], [ 0, %bb.a ]
  %.087.lcssa167 = phi double [ %i.ba, %bb.m ], [ %i.ba, %._crit_edge ], [ 0.000000e+00, %bb.a ]
  %.091.lcssa166 = phi double [ %.192, %bb.m ], [ %.192, %._crit_edge ], [ 0.000000e+00, %bb.a ]
  %.095.lcssa165 = phi i32 [ %.297, %bb.m ], [ %.297, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.098.lcssa164 = phi i32 [ %.2100, %bb.m ], [ %.2100, %._crit_edge ], [ 0, %bb.a ]
  %.0101.lcssa163 = phi i32 [ %.1102, %bb.m ], [ %.1102, %._crit_edge ], [ %4, %bb.a ] ; 2 uses
  %.0103.lcssa162 = phi i32 [ %spec.select115, %bb.m ], [ %spec.select115, %._crit_edge ], [ %3, %bb.a ]
  %.3 = phi ptr [ %i.bb, %bb.m ], [ %.282, %._crit_edge ], [ %2, %bb.a ] ; 6 uses
  %i.be = add nsw i32 %.0103.lcssa162, -1
  %i.bf = add nsw i32 %.0101.lcssa163, -1         ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.3, i64 24
  store i32 %.098.lcssa164, ptr %i.bg, align 8, !tbaa !20
  %i.bh = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store i32 %.095.lcssa165, ptr %i.bh, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %.3, i64 28
  store i32 %i.be, ptr %i.bi, align 4, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %.3, i64 36
  store i32 %i.bf, ptr %i.bj, align 4, !tbaa !23
  %i.bk = load i32, ptr @divpairscore, align 4, !tbaa !4
  %.not106 = icmp eq i32 %i.bk, 0
  br i1 %.not106, label %bb.n, label %.thread

.thread:                                          ; preds = %._crit_edge.thread
  %i.bl = sub nsw i32 %i.bf, %.095.lcssa165
  %i.bm = add nsw i32 %i.bl, 1                    ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.3, i64 48
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !24
  %i.bo = sitofp i32 %i.bm to double
  %i.bp = fdiv double %.091.lcssa166, %i.bo
  %i.bq = fmul double %i.bp, 5.800000e+00
  %i.br = fdiv double %i.bq, 6.000000e+02
  %i.bs = getelementptr inbounds nuw i8, ptr %.3, i64 40
  store double %i.br, ptr %i.bs, align 8, !tbaa !25
  br label %.loopexit

bb.n:                                             ; preds = %._crit_edge.thread
  %i.bt = add i32 %.0101.lcssa163, %.095.neg.lcssa169
  %i.bu = add nsw i32 %i.bt, %.083.lcssa168       ; 2 uses
  %.not108143 = icmp eq ptr %2, null
  br i1 %.not108143, label %.loopexit, label %.lr.ph146

.lr.ph146:                                        ; preds = %bb.n
  %i.bv = fdiv double %.087.lcssa167, 6.000000e+02
  %i.bw = sitofp i32 %i.bu to double
  %i.bx = fdiv double %i.bv, %i.bw
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph146, %bb.o
  %.4144 = phi ptr [ %2, %.lr.ph146 ], [ %i.cb, %bb.o ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.4144, i64 48
  store i32 %i.bu, ptr %i.by, align 8, !tbaa !24
  %i.bz = getelementptr inbounds nuw i8, ptr %.4144, i64 40
  store double %i.bx, ptr %i.bz, align 8, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %.4144, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !8  ; 2 uses
  %.not108 = icmp eq ptr %i.cb, null
  br i1 %.not108, label %.loopexit, label %bb.o, !llvm.loop !33

.loopexit:                                        ; preds = %bb.o, %bb.n, %.thread
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local ptr @cutal(ptr nofree noundef captures(ret: address, provenance) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.013 = phi i32 [ %1, %bb.a ], [ %spec.select16, %bb.c ] ; 3 uses
  %.011 = phi ptr [ %0, %bb.a ], [ %i.e, %bb.c ]  ; 4 uses
  %.0 = phi ptr [ null, %bb.a ], [ %spec.select, %bb.c ]
  %i.a = icmp eq i32 %2, %.013
  %spec.select = select i1 %i.a, ptr %.011, ptr %.0 ; 2 uses
  %i.b = icmp eq i32 %3, %.013
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %.011, align 1, !tbaa !19   ; 2 uses
  %.not = icmp ne i8 %i.c, 45
  %i.d = zext i1 %.not to i32
  %spec.select16 = add nsw i32 %.013, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %.011, i64 1 ; 2 uses
  %.not15 = icmp eq i8 %i.c, 0
  br i1 %.not15, label %bb.d, label %bb.b, !llvm.loop !34

bb.d:                                             ; preds = %bb.b, %bb.c
  %.112 = phi ptr [ %.011, %bb.b ], [ %i.e, %bb.c ]
  %i.f = getelementptr inbounds nuw i8, ptr %.112, i64 1
  store i8 0, ptr %i.f, align 1, !tbaa !19
  ret ptr %spec.select
}

; Function Attrs: cold nofree noreturn nounwind uwtable
define dso_local void @ErrorExit(ptr noundef %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !17
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.5, ptr noundef %0) #28 ; 0 uses
  tail call void @exit(i32 noundef 1) #30
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @strncpy_caseC(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = load i32, ptr @dorp, align 4, !tbaa !4
  %i.b = icmp eq i32 %i.a, 100
  %i.c = load i32, ptr @upperCase, align 4
  %i.d = icmp sgt i32 %i.c, 0
end_hunk_0
