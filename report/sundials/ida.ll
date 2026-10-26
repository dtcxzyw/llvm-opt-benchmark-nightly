Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/ida?download=true
inline.NumInlined: 26
inline.NumDeleted: 18
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@IDARootInit:bb.a
  store ptr null, ptr %i.l, align 8, !tbaa !73
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74
  tail call void @free(ptr noundef %i.o) #13
  store ptr null, ptr %i.n, align 8, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !75
  tail call void @free(ptr noundef %i.q) #13
  store ptr null, ptr %i.p, align 8, !tbaa !75
  %i.r = load i32, ptr %i.c, align 8, !tbaa !55   ; 2 uses
  %i.s = mul nsw i32 %i.r, 3
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.v = load <2 x i64>, ptr %i.u, align 8, !tbaa !33
  %i.w = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %i.x = shufflevector <2 x i64> %i.w, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.y = sub nsw <2 x i64> %i.v, %i.x
  store <2 x i64> %i.y, ptr %i.u, align 8, !tbaa !33
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.z = phi i32 [ %i.r, %bb.d ], [ %i.d, %bb.c ]
  %i.aa = icmp slt i32 %1, 1
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.c, align 8, !tbaa !55
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr null, ptr %i.ab, align 8, !tbaa !54
  br label %bb.z

bb.g:                                             ; preds = %bb.e
  %i.ac = icmp eq i32 %i.b, %i.z
  br i1 %i.ac, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1064 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !54
  %.not137 = icmp eq ptr %2, %i.ae
  br i1 %.not137, label %bb.z, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = icmp eq ptr %2, null
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !70
  tail call void @free(ptr noundef %i.ah) #13
  store ptr null, ptr %i.ag, align 8, !tbaa !70
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !71
  tail call void @free(ptr noundef %i.aj) #13
  store ptr null, ptr %i.ai, align 8, !tbaa !71
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !72
  tail call void @free(ptr noundef %i.al) #13
  store ptr null, ptr %i.ak, align 8, !tbaa !72
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !73
  tail call void @free(ptr noundef %i.an) #13
  store ptr null, ptr %i.am, align 8, !tbaa !73
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !74
  tail call void @free(ptr noundef %i.ap) #13
  store ptr null, ptr %i.ao, align 8, !tbaa !74
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !75
  tail call void @free(ptr noundef %i.ar) #13
  store ptr null, ptr %i.aq, align 8, !tbaa !75
  %i.as = mul nuw nsw i32 %i.b, 3
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.au, align 8, !tbaa !33
  %i.aw = insertelement <2 x i64> poison, i64 %i.at, i64 0
  %i.ax = shufflevector <2 x i64> %i.aw, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ay = sub nsw <2 x i64> %i.av, %i.ax
  store <2 x i64> %i.ay, ptr %i.au, align 8, !tbaa !33
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 900, ptr noundef nonnull @__func__.IDARootInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12)
  br label %bb.z

bb.k:                                             ; preds = %bb.i
  store ptr %2, ptr %i.ad, align 8, !tbaa !54
  br label %bb.z

bb.l:                                             ; preds = %bb.g
  store i32 %i.b, ptr %i.c, align 8, !tbaa !55
  %i.az = icmp eq ptr %2, null
  br i1 %i.az, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 923, ptr noundef nonnull @__func__.IDARootInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.12)
  br label %bb.z

bb.n:                                             ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1064
  store ptr %2, ptr %i.ba, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 6 uses
  %i.bc = zext nneg i32 %i.b to i64               ; 2 uses
  %i.bd = shl nuw nsw i64 %i.bc, 3                ; 3 uses
  %i.be = tail call noalias ptr @malloc(i64 noundef %i.bd) #14 ; 7 uses
  store ptr %i.be, ptr %i.bb, align 8, !tbaa !70
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 935, ptr noundef nonnull @__func__.IDARootInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2)
  br label %bb.z

bb.p:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 5 uses
  %i.bh = tail call noalias ptr @malloc(i64 noundef %i.bd) #14 ; 6 uses
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !71
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.be) #13
  store ptr null, ptr %i.bb, align 8, !tbaa !70
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 947, ptr noundef nonnull @__func__.IDARootInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2)
  br label %bb.z

bb.r:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1136 ; 4 uses
  %i.bk = tail call noalias ptr @malloc(i64 noundef %i.bd) #14 ; 5 uses
  store ptr %i.bk, ptr %i.bj, align 8, !tbaa !72
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.be) #13
  store ptr null, ptr %i.bb, align 8, !tbaa !70
  tail call void @free(ptr noundef nonnull %i.bh) #13
  store ptr null, ptr %i.bg, align 8, !tbaa !71
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 961, ptr noundef nonnull @__func__.IDARootInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2)
  br label %bb.z

bb.t:                                             ; preds = %bb.r
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1080 ; 3 uses
  %i.bn = shl nuw nsw i64 %i.bc, 2                ; 3 uses
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bn) #14 ; 4 uses
  store ptr %i.bo, ptr %i.bm, align 8, !tbaa !73
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.be) #13
  store ptr null, ptr %i.bb, align 8, !tbaa !70
  tail call void @free(ptr noundef nonnull %i.bh) #13
  store ptr null, ptr %i.bg, align 8, !tbaa !71
  tail call void @free(ptr noundef nonnull %i.bk) #13
  store ptr null, ptr %i.bj, align 8, !tbaa !72
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 977, ptr noundef nonnull @__func__.IDARootInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2)
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.br = tail call noalias ptr @malloc(i64 noundef %i.bn) #14 ; 4 uses
  store ptr %i.br, ptr %i.bq, align 8, !tbaa !74
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @free(ptr noundef nonnull %i.be) #13
  store ptr null, ptr %i.bb, align 8, !tbaa !70
  tail call void @free(ptr noundef nonnull %i.bh) #13
  store ptr null, ptr %i.bg, align 8, !tbaa !71
  tail call void @free(ptr noundef nonnull %i.bk) #13
  store ptr null, ptr %i.bj, align 8, !tbaa !72
  tail call void @free(ptr noundef nonnull %i.bo) #13
  store ptr null, ptr %i.bm, align 8, !tbaa !73
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 995, ptr noundef nonnull @__func__.IDARootInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2)
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bn) #14 ; 4 uses
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !75
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %bb.y, label %.lr.ph141.preheader

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.be) #13
  store ptr null, ptr %i.bb, align 8, !tbaa !70
  tail call void @free(ptr noundef nonnull %i.bh) #13
  store ptr null, ptr %i.bg, align 8, !tbaa !71
  tail call void @free(ptr noundef nonnull %i.bk) #13
  store ptr null, ptr %i.bj, align 8, !tbaa !72
  tail call void @free(ptr noundef nonnull %i.bo) #13
  store ptr null, ptr %i.bm, align 8, !tbaa !73
  tail call void @free(ptr noundef nonnull %i.br) #13
  store ptr null, ptr %i.bq, align 8, !tbaa !74
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -21, i32 noundef 1015, ptr noundef nonnull @__func__.IDARootInit, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2)
  br label %bb.z

.lr.ph141.preheader:                              ; preds = %bb.x
  %i.bw = zext nneg i32 %1 to i64
  %i.bx = shl nuw nsw i64 %i.bw, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.br, i8 0, i64 %i.bx, i1 false), !tbaa !26
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph141.preheader153, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph141.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %index ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store <4 x i32> splat (i32 1), ptr %i.by, align 4, !tbaa !26
  store <4 x i32> splat (i32 1), ptr %i.bz, align 4, !tbaa !26
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph141.preheader153

.lr.ph141.preheader153:                           ; preds = %.lr.ph141.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph141.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph141

.lr.ph141:                                        ; preds = %.lr.ph141.preheader153, %.lr.ph141
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph141 ], [ %indvars.iv.ph, %.lr.ph141.preheader153 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv
  store i32 1, ptr %i.cb, align 4, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph141, !llvm.loop !123

._crit_edge:                                      ; preds = %.lr.ph141, %middle.block
  %i.cc = mul nuw nsw i32 %i.b, 3
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 2 uses
  %i.cf = load <2 x i64>, ptr %i.ce, align 8, !tbaa !33
  %i.cg = insertelement <2 x i64> poison, i64 %i.cd, i64 0
  %i.ch = shufflevector <2 x i64> %i.cg, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ci = add nsw <2 x i64> %i.cf, %i.ch
  store <2 x i64> %i.ci, ptr %i.ce, align 8, !tbaa !33
  br label %bb.z

bb.z:                                             ; preds = %bb.h, %._crit_edge, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.j, %bb.f, %bb.b
  %.0131 = phi i32 [ -20, %bb.b ], [ 0, %bb.f ], [ -22, %bb.j ], [ 0, %bb.k ], [ 0, %._crit_edge ], [ -22, %bb.m ], [ -21, %bb.o ], [ -21, %bb.q ], [ -21, %bb.s ], [ -21, %bb.u ], [ -21, %bb.w ], [ -21, %bb.y ], [ 0, %bb.h ]
  ret i32 %.0131
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 -99, 99) i32 @IDASolve(ptr noundef %0, double noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 1091, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %IDAStopTest2.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 972
  %i.e = load i32, ptr %i.d, align 4, !tbaa !58
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -23, i32 noundef 1102, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9)
  br label %IDAStopTest2.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %3, null
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1112, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13)
  br label %IDAStopTest2.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 5 uses
  store ptr %3, ptr %i.h, align 8, !tbaa !78
  %i.i = icmp eq ptr %4, null
  br i1 %i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1121, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14)
  br label %IDAStopTest2.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store ptr %4, ptr %i.j, align 8, !tbaa !79
  %i.k = icmp eq ptr %2, null
  br i1 %i.k, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1130, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15)
  br label %IDAStopTest2.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.l = add i32 %5, -3
  %or.cond = icmp ult i32 %i.l, -2
  br i1 %or.cond, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1138, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16)
  br label %IDAStopTest2.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 11 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !135
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.n, label %bb.an

bb.n:                                             ; preds = %bb.m
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 960 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !57
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.s = tail call i32 @IDAInitialSetup(ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.p, label %IDAStopTest2.exit.thread

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.p, align 8, !tbaa !57
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 3 uses
  %i.u = load double, ptr %i.t, align 8, !tbaa !48 ; 3 uses
  %i.v = fsub double %1, %i.u                     ; 3 uses
  %i.w = tail call double @llvm.fabs.f64(double %i.v) ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = fcmp oeq double %i.v, 0.000000e+00
  br i1 %i.y, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.z = load double, ptr %i.x, align 8, !tbaa !18
  %i.aa = fmul double %i.z, 2.000000e+00
  %i.ab = tail call double @llvm.fabs.f64(double %i.u)
  %i.ac = tail call double @llvm.fabs.f64(double %1)
  %i.ad = fadd double %i.ac, %i.ab
  %i.ae = fmul double %i.ad, %i.aa
  %i.af = fcmp olt double %i.w, %i.ae
  br i1 %i.af, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -60, i32 noundef 1169, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17)
  br label %IDAStopTest2.exit.thread

bb.t:                                             ; preds = %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !136 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 9 uses
  store double %i.ah, ptr %i.ai, align 8, !tbaa !80
  %i.aj = fcmp une double %i.ah, 0.000000e+00     ; 2 uses
  %i.ak = fmul double %i.v, %i.ah
  %i.al = fcmp olt double %i.ak, 0.000000e+00
  %or.cond297 = and i1 %i.aj, %i.al
  br i1 %or.cond297, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1181, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.18)
  br label %IDAStopTest2.exit.thread

bb.v:                                             ; preds = %bb.t
  br i1 %i.aj, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.am = fmul double %i.w, 1.000000e-03
  store double %i.am, ptr %i.ai, align 8, !tbaa !80
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !46
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !36
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !81
  %i.at = tail call double @IDAWrmsNorm(ptr noundef nonnull %0, ptr noundef %i.ao, ptr noundef %i.aq, i32 noundef %i.as) ; 2 uses
  %i.au = load double, ptr %i.ai, align 8, !tbaa !80 ; 2 uses
  %i.av = fdiv double 5.000000e-01, %i.au
  %i.aw = fcmp ogt double %i.at, %i.av
  br i1 %i.aw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ax = fdiv double 5.000000e-01, %i.at         ; 2 uses
  store double %i.ax, ptr %i.ai, align 8, !tbaa !80
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ay = phi double [ %i.ax, %bb.x ], [ %i.au, %bb.w ] ; 2 uses
  %i.az = load double, ptr %i.t, align 8, !tbaa !48 ; 3 uses
  %i.ba = fcmp olt double %1, %i.az
  br i1 %i.ba, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bb = fneg double %i.ay                       ; 2 uses
end_hunk_0
begin_hunk_1_@IDASolve:bb.a
  store double %i.acm, ptr %i.fb, align 8, !tbaa !51
  %i.acn = load i32, ptr %i.gm, align 8, !tbaa !161 ; 2 uses
  %i.aco = add nsw i32 %i.ww, -1
  %i.acp = icmp eq i32 %i.acn, %i.aco
  br i1 %i.acp, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.acq = load i32, ptr %i.gv, align 8, !tbaa !45 ; 3 uses
  %i.acr = icmp eq i32 %i.ww, %i.acq
  br i1 %i.acr, label %.thread148.thread.i.i, label %.thread.i.i

bb.dy:                                            ; preds = %bb.dw
  store i32 1, ptr %i.ff, align 4, !tbaa !144
  br label %bb.eh

.thread148.thread.i.i:                            ; preds = %bb.dx
  store i32 1, ptr %i.ff, align 4, !tbaa !144
  br label %.thread154.i.i

.thread.i.i:                                      ; preds = %bb.dx
  %i.acs = load i32, ptr %i.ff, align 4, !tbaa !144
  %i.act = icmp eq i32 %i.acs, 0
  br i1 %i.act, label %bb.dz, label %.thread148.i.i

bb.dz:                                            ; preds = %.thread.i.i
  %i.acu = icmp sgt i64 %i.aci, 0
  br i1 %i.acu, label %bb.ea, label %bb.em

bb.ea:                                            ; preds = %bb.dz
  %i.acv = add nsw i32 %i.ww, 1
  store i32 %i.acv, ptr %i.ez, align 8, !tbaa !140
  %i.acw = fmul double %i.acm, 2.000000e+00       ; 3 uses
  %i.acx = call double @llvm.fabs.f64(double %i.acw)
  %i.acy = load double, ptr %i.gw, align 8, !tbaa !137
  %i.acz = fmul double %i.acx, %i.acy             ; 2 uses
  %i.ada = fcmp ogt double %i.acz, 1.000000e+00
  %i.adb = fdiv double %i.acw, %i.acz
  %.0.i93.i = select i1 %i.ada, double %i.adb, double %i.acw
  store double %.0.i93.i, ptr %i.fc, align 8, !tbaa !80
  br label %bb.em

.thread148.i.i:                                   ; preds = %.thread.i.i
  %i.adc = add nsw i32 %i.ww, 1                   ; 2 uses
  %i.add = load i32, ptr %i.fg, align 8, !tbaa !145
  %i.ade = icmp sge i32 %i.adc, %i.add
  %i.adf = icmp eq i32 %i.acl, 1
  %or.cond.i77.i = select i1 %i.ade, i1 true, i1 %i.adf
  br i1 %or.cond.i77.i, label %.thread154.i.i, label %bb.eb

bb.eb:                                            ; preds = %.thread148.i.i
  %i.adg = load ptr, ptr %i.fy, align 8, !tbaa !37
  %i.adh = sext i32 %i.adc to i64
  %i.adi = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.adh
  %i.adj = load ptr, ptr %i.adi, align 8, !tbaa !46
  %i.adk = load ptr, ptr %i.gf, align 8, !tbaa !42
  call void @N_VLinearSum(double noundef 1.000000e+00, ptr noundef %i.adg, double noundef -1.000000e+00, ptr noundef %i.adj, ptr noundef %i.adk) #13
  %i.adl = load ptr, ptr %i.gf, align 8, !tbaa !42 ; 2 uses
  %i.adm = load ptr, ptr %i.es, align 8, !tbaa !36 ; 2 uses
  %i.adn = load i32, ptr %i.eu, align 8, !tbaa !81
  %.not.i.i78.i = icmp eq i32 %i.adn, 0
  br i1 %.not.i.i78.i, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ado = load ptr, ptr %i.ev, align 8, !tbaa !62
  %i.adp = call double @N_VWrmsNormMask(ptr noundef %i.adl, ptr noundef %i.adm, ptr noundef %i.ado) #13
  br label %IDAWrmsNorm.exit.i79.i

bb.ed:                                            ; preds = %bb.eb
  %i.adq = call double @N_VWrmsNorm(ptr noundef %i.adl, ptr noundef %i.adm) #13
  br label %IDAWrmsNorm.exit.i79.i

IDAWrmsNorm.exit.i79.i:                           ; preds = %bb.ed, %bb.ec
  %.0.i.i80.i = phi double [ %i.adp, %bb.ec ], [ %i.adq, %bb.ed ]
  %i.adr = load i32, ptr %i.ez, align 8, !tbaa !140 ; 6 uses
  %i.ads = add nsw i32 %i.adr, 2
  %i.adt = sitofp i32 %i.ads to double            ; 2 uses
  %i.adu = fdiv double %.0.i.i80.i, %i.adt        ; 2 uses
  %i.adv = add nsw i32 %i.adr, 1                  ; 3 uses
  %i.adw = sitofp i32 %i.adv to double
  %i.adx = fmul double %i.uw, %i.adw              ; 4 uses
  %i.ady = fmul double %i.adu, %i.adt             ; 4 uses
  %i.adz = icmp eq i32 %i.adr, 1
  br i1 %i.adz, label %bb.ef, label %bb.ee

bb.ee:                                            ; preds = %IDAWrmsNorm.exit.i79.i
  %i.aea = sitofp i32 %i.adr to double
  %i.aeb = fmul double %.2108.i, %i.aea
  %i.aec = fcmp olt double %i.adx, %i.ady
  %i.aed = select i1 %i.aec, double %i.adx, double %i.ady
  %i.aee = fcmp ugt double %i.aeb, %i.aed
  br i1 %i.aee, label %.split.i.i, label %._crit_edge166.i.i

._crit_edge166.i.i:                               ; preds = %bb.ee
  %.pre167.i.i = add nsw i32 %i.adr, -1
  br label %bb.eh

.split.i.i:                                       ; preds = %bb.ee
  %i.aef = fcmp ult double %i.ady, %i.adx
  br i1 %i.aef, label %bb.eg, label %.thread154.i.i

bb.ef:                                            ; preds = %IDAWrmsNorm.exit.i79.i
  %i.aeg = fmul double %i.adx, 5.000000e-01
  %i.aeh = fcmp ult double %i.ady, %i.aeg
  br i1 %i.aeh, label %bb.eg, label %.thread154.i.i

bb.eg:                                            ; preds = %bb.ef, %.split.i.i
  store i32 %i.adv, ptr %i.ez, align 8, !tbaa !140
  br label %.thread154.i.i

bb.eh:                                            ; preds = %._crit_edge166.i.i, %bb.dy
  %.pre-phi.i81.i = phi i32 [ %.pre167.i.i, %._crit_edge166.i.i ], [ %i.acn, %bb.dy ] ; 2 uses
  store i32 %.pre-phi.i81.i, ptr %i.ez, align 8, !tbaa !140
  br label %.thread154.i.i

.thread154.i.i:                                   ; preds = %bb.eh, %bb.eg, %bb.ef, %.split.i.i, %.thread148.i.i, %.thread148.thread.i.i
  %i.aei = phi i32 [ %i.adv, %bb.eg ], [ %.pre-phi.i81.i, %bb.eh ], [ %i.ww, %.thread148.i.i ], [ %i.ww, %.thread148.thread.i.i ], [ 1, %bb.ef ], [ %i.adr, %.split.i.i ]
  %.0128.i.i = phi double [ %i.adu, %bb.eg ], [ %.2108.i, %bb.eh ], [ %i.uw, %.thread148.i.i ], [ %i.uw, %.thread148.thread.i.i ], [ %i.uw, %bb.ef ], [ %i.uw, %.split.i.i ]
  store double 1.000000e+00, ptr %i.gk, align 8, !tbaa !160
  %i.aej = call double @llvm.fmuladd.f64(double %.0128.i.i, double 2.000000e+00, double 1.000000e-04)
  %i.aek = add nsw i32 %i.aei, 1
  %i.ael = sitofp i32 %i.aek to double
  %i.aem = fdiv double -1.000000e+00, %i.ael
  %i.aen = call double @pow(double noundef %i.aej, double noundef %i.aem) #13 ; 6 uses
  %i.aeo = load double, ptr %i.gx, align 8, !tbaa !166
  %i.aep = fcmp ult double %i.aen, %i.aeo
  br i1 %i.aep, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %.thread154.i.i
  %i.aeq = load double, ptr %i.gy, align 8, !tbaa !167 ; 2 uses
  %i.aer = fcmp olt double %i.aen, %i.aeq
  %.146.i.i = select i1 %i.aer, double %i.aen, double %i.aeq ; 2 uses
  %i.aes = load double, ptr %i.fc, align 8, !tbaa !80 ; 2 uses
  %i.aet = call double @llvm.fabs.f64(double %i.aes)
  %i.aeu = fmul double %.146.i.i, %i.aet
  %i.aev = load double, ptr %i.gw, align 8, !tbaa !137
  %i.aew = fmul double %i.aev, %i.aeu             ; 2 uses
  %i.aex = fcmp olt double %i.aew, 1.000000e+00
  %i.aey = select i1 %i.aex, double 1.000000e+00, double %i.aew
  %i.aez = fdiv double %.146.i.i, %i.aey
  br label %.sink.split.i82.i

bb.ej:                                            ; preds = %.thread154.i.i
  %i.afa = load double, ptr %i.gz, align 8, !tbaa !168
  %i.afb = fcmp ugt double %i.aen, %i.afa
  %.pre.i92.i = load double, ptr %i.fc, align 8, !tbaa !80 ; 3 uses
  br i1 %i.afb, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.afc = load double, ptr %i.gu, align 8, !tbaa !164 ; 2 uses
  %i.afd = fcmp olt double %i.aen, %i.afc
  %.147.i.i = select i1 %i.afd, double %i.aen, double %i.afc ; 2 uses
  %i.afe = load double, ptr %i.ha, align 8, !tbaa !169 ; 2 uses
  %i.aff = fcmp ogt double %.147.i.i, %i.afe
  %i.afg = select i1 %i.aff, double %.147.i.i, double %i.afe ; 2 uses
  %i.afh = load double, ptr %i.gi, align 8, !tbaa !138
  %i.afi = call double @llvm.fabs.f64(double %.pre.i92.i)
  %i.afj = fdiv double %i.afh, %i.afi             ; 2 uses
  %i.afk = fcmp ogt double %i.afg, %i.afj
  %i.afl = select i1 %i.afk, double %i.afg, double %i.afj
  br label %.sink.split.i82.i

.sink.split.i82.i:                                ; preds = %bb.ek, %bb.ei
  %.sink.i83.i = phi double [ %i.afl, %bb.ek ], [ %i.aez, %bb.ei ] ; 2 uses
  %.ph.i.i = phi double [ %.pre.i92.i, %bb.ek ], [ %i.aes, %bb.ei ]
  store double %.sink.i83.i, ptr %i.gk, align 8, !tbaa !160
  %i.afm = fmul double %.sink.i83.i, %.ph.i.i
  br label %bb.el

bb.el:                                            ; preds = %.sink.split.i82.i, %bb.ej
  %i.afn = phi double [ %.pre.i92.i, %bb.ej ], [ %i.afm, %.sink.split.i82.i ]
  store double %i.afn, ptr %i.fc, align 8, !tbaa !80
  %.pre163.i.i = load i32, ptr %i.fa, align 4, !tbaa !50
  %.pre164.i.i = load i32, ptr %i.gv, align 8, !tbaa !45
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ea, %bb.dz
  %i.afo = phi i32 [ %i.acq, %bb.dz ], [ %i.acq, %bb.ea ], [ %.pre164.i.i, %bb.el ]
  %i.afp = phi i32 [ %i.ww, %bb.dz ], [ %i.ww, %bb.ea ], [ %.pre163.i.i, %bb.el ] ; 3 uses
  %i.afq = icmp slt i32 %i.afp, %i.afo
  br i1 %i.afq, label %bb.en, label %bb.eo

bb.en:                                            ; preds = %bb.em
  %i.afr = load ptr, ptr %i.fy, align 8, !tbaa !37
  %i.afs = sext i32 %i.afp to i64
  %i.aft = getelementptr [8 x i8], ptr %0, i64 %i.afs
  %i.afu = getelementptr i8, ptr %i.aft, i64 104
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !46
  call void @N_VScale(double noundef 1.000000e+00, ptr noundef %i.afr, ptr noundef %i.afv) #13
  %.pre165.i.i = load i32, ptr %i.fa, align 4, !tbaa !50
  br label %bb.eo

bb.eo:                                            ; preds = %bb.en, %bb.em
  %i.afw = phi i32 [ %.pre165.i.i, %bb.en ], [ %i.afp, %bb.em ] ; 7 uses
  %i.afx = load ptr, ptr %i.fy, align 8, !tbaa !37
  store ptr %i.afx, ptr %i.hb, align 8, !tbaa !46
  %i.afy = sext i32 %i.afw to i64
  %i.afz = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.afy
  %i.aga = load ptr, ptr %i.afz, align 8, !tbaa !46
  store ptr %i.aga, ptr %i.hc, align 8, !tbaa !46
  %.not160.i.i = icmp slt i32 %i.afw, 1
  br i1 %.not160.i.i, label %.loopexit298, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.eo
  %i.agb = zext nneg i32 %i.afw to i64            ; 3 uses
  %i.agc = zext nneg i32 %i.afw to i64            ; 2 uses
  %xtraiter633 = and i64 %i.agc, 1
  %i.agd = icmp eq i32 %i.afw, 1
  br i1 %i.agd, label %.lr.ph.i86.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter637 = and i64 %i.agc, 2147483646
  br label %.lr.ph.i86.i

.lr.ph.i86.i:                                     ; preds = %.lr.ph.i86.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i87.i = phi i64 [ 1, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i88.i.1, %.lr.ph.i86.i ] ; 5 uses
  %niter638 = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter638.next.1, %.lr.ph.i86.i ]
  %i.age = sub nuw nsw i64 %i.agb, %indvars.iv.i87.i
  %i.agf = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.age ; 2 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agf, i64 8
  %i.agh = load ptr, ptr %i.agg, align 8, !tbaa !46
  %i.agi = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv.i87.i
  store ptr %i.agh, ptr %i.agi, align 8, !tbaa !46
  %i.agj = load ptr, ptr %i.agf, align 8, !tbaa !46
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.i87.i
  store ptr %i.agj, ptr %i.agk, align 8, !tbaa !46
  %indvars.iv.next.i88.i = add nuw nsw i64 %indvars.iv.i87.i, 1 ; 3 uses
  %i.agl = sub nuw nsw i64 %i.agb, %indvars.iv.next.i88.i
  %i.agm = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.agl ; 2 uses
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  %i.ago = load ptr, ptr %i.agn, align 8, !tbaa !46
  %i.agp = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv.next.i88.i
  store ptr %i.ago, ptr %i.agp, align 8, !tbaa !46
  %i.agq = load ptr, ptr %i.agm, align 8, !tbaa !46
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.next.i88.i
  store ptr %i.agq, ptr %i.agr, align 8, !tbaa !46
  %indvars.iv.next.i88.i.1 = add nuw nsw i64 %indvars.iv.i87.i, 2 ; 2 uses
  %niter638.next.1 = add nuw i64 %niter638, 2     ; 2 uses
  %niter638.ncmp.1 = icmp eq i64 %niter638.next.1, %unroll_iter637
  br i1 %niter638.ncmp.1, label %.loopexit298.loopexit.unr-lcssa, label %.lr.ph.i86.i

.loopexit:                                        ; preds = %bb.ds, %bb.cq, %bb.cr, %bb.dm, %bb.dj
  %.045.i.ph = phi i32 [ -11, %bb.cq ], [ %spec.select.i76.i, %bb.dj ], [ %..i74.i, %bb.dm ], [ -11, %bb.cr ], [ -3, %bb.ds ]
  %i.ags = call fastcc i32 @IDAHandleFailure(ptr noundef %0, i32 noundef %.045.i.ph)
  %i.agt = load double, ptr %i.ey, align 8, !tbaa !48 ; 3 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %0, i64 680
  store double %i.agt, ptr %i.agu, align 8, !tbaa !85
  store double %i.agt, ptr %2, align 8, !tbaa !21
  %i.agv = call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.agt, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  br label %IDAStopTest2.exit.thread

.loopexit298.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i86.i
  %lcmp.mod635.not = icmp eq i64 %xtraiter633, 0
  br i1 %lcmp.mod635.not, label %.loopexit298, label %.lr.ph.i86.i.epil.preheader

.lr.ph.i86.i.epil.preheader:                      ; preds = %.loopexit298.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i87.i.epil.init = phi i64 [ 1, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i88.i.1, %.loopexit298.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod636 = trunc i32 %i.afw to i1
  call void @llvm.assume(i1 %lcmp.mod636)
  %i.agw = sub nuw nsw i64 %i.agb, %indvars.iv.i87.i.epil.init
  %i.agx = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.agw ; 2 uses
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agx, i64 8
  %i.agz = load ptr, ptr %i.agy, align 8, !tbaa !46
  %i.aha = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %indvars.iv.i87.i.epil.init
  store ptr %i.agz, ptr %i.aha, align 8, !tbaa !46
  %i.ahb = load ptr, ptr %i.agx, align 8, !tbaa !46
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv.i87.i.epil.init
  store ptr %i.ahb, ptr %i.ahc, align 8, !tbaa !46
  br label %.loopexit298

.loopexit298:                                     ; preds = %.lr.ph.i86.i.epil.preheader, %.loopexit298.loopexit.unr-lcssa, %bb.eo
  %.pre-phi169.i.i = add i32 %i.afw, 1
  %i.ahd = call i32 @N_VLinearSumVectorArray(i32 noundef %.pre-phi169.i.i, double noundef 1.000000e+00, ptr noundef nonnull %i.hc, double noundef 1.000000e+00, ptr noundef nonnull %i.hb, ptr noundef nonnull %i.hc) #13 ; 0 uses
  %i.ahe = load ptr, ptr %i.fy, align 8, !tbaa !37 ; 2 uses
  call void @N_VScale(double noundef %.102.i159.i, ptr noundef %i.ahe, ptr noundef %i.ahe) #13
  %i.ahf = add nuw nsw i64 %.0253, 1
  %i.ahg = load i32, ptr %i.fn, align 8, !tbaa !82
  %.not283 = icmp eq i32 %i.ahg, 0
  br i1 %.not283, label %bb.er, label %bb.ep

bb.ep:                                            ; preds = %.loopexit298
  %i.ahh = load double, ptr %i.ew, align 8, !tbaa !18
  %i.ahi = fmul double %i.ahh, 1.000000e+02
  %i.ahj = load double, ptr %i.ey, align 8, !tbaa !48 ; 2 uses
  %i.ahk = call double @llvm.fabs.f64(double %i.ahj)
  %i.ahl = load double, ptr %i.fc, align 8, !tbaa !80
  %i.ahm = call double @llvm.fabs.f64(double %i.ahl)
  %i.ahn = fadd double %i.ahk, %i.ahm
  %i.aho = fmul double %i.ahi, %i.ahn
  %i.ahp = load double, ptr %i.fo, align 8, !tbaa !83 ; 2 uses
  %i.ahq = fsub double %i.ahj, %i.ahp
  %i.ahr = call double @llvm.fabs.f64(double %i.ahq)
  %i.ahs = fcmp ugt double %i.ahr, %i.aho
  br i1 %i.ahs, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  store double %i.ahp, ptr %i.ey, align 8, !tbaa !48
  br label %bb.er

bb.er:                                            ; preds = %bb.ep, %bb.eq, %.loopexit298
  %i.aht = load i32, ptr %i.hd, align 8, !tbaa !55
  %i.ahu = icmp sgt i32 %i.aht, 0
  br i1 %i.ahu, label %bb.es, label %.thread

bb.es:                                            ; preds = %bb.er
  %i.ahv = call fastcc i32 @IDARcheck3(ptr noundef %0, double noundef %1, i32 noundef %5)
  switch i32 %i.ahv, label %bb.ev [
    i32 1, label %bb.et
    i32 -10, label %bb.eu
  ]

bb.et:                                            ; preds = %bb.es
  %i.ahw = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 1, ptr %i.ahw, align 8, !tbaa !53
  %i.ahx = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.ahy = load double, ptr %i.ahx, align 8, !tbaa !84 ; 2 uses
  store double %i.ahy, ptr %2, align 8, !tbaa !21
  %i.ahz = getelementptr inbounds nuw i8, ptr %0, i64 680
  store double %i.ahy, ptr %i.ahz, align 8, !tbaa !85
  br label %IDAStopTest2.exit.thread

bb.eu:                                            ; preds = %bb.es
  %i.aia = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.aib = load double, ptr %i.aia, align 8, !tbaa !84
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -10, i32 noundef 1446, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20, double noundef %i.aib)
  br label %IDAStopTest2.exit.thread

bb.ev:                                            ; preds = %bb.es
  %i.aic = load i64, ptr %i.m, align 8, !tbaa !135
  %i.aid = icmp eq i64 %i.aic, 1
  br i1 %i.aid, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.ev
  %i.aie = load i32, ptr %i.hd, align 8, !tbaa !55 ; 2 uses
  %i.aif = icmp sgt i32 %i.aie, 0
  br i1 %i.aif, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader
  %i.aig = load ptr, ptr %i.he, align 8, !tbaa !75
  %wide.trip.count = zext nneg i32 %i.aie to i64
  br label %bb.ex

bb.ew:                                            ; preds = %bb.ex
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.ex

bb.ex:                                            ; preds = %.lr.ph, %bb.ew
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.ew ] ; 2 uses
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.aig, i64 %indvars.iv
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !26
  %.not284 = icmp eq i32 %i.aii, 0
  br i1 %.not284, label %bb.ey, label %bb.ew

bb.ey:                                            ; preds = %bb.ex
  %i.aij = load i32, ptr %i.hf, align 8, !tbaa !56
  %i.aik = icmp sgt i32 %i.aij, 0
  br i1 %i.aik, label %bb.ez, label %.thread

bb.ez:                                            ; preds = %bb.ey
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef 99, i32 noundef 1470, ptr noundef nonnull @__func__.IDASolve, ptr noundef nonnull @.str, ptr noundef nonnull @.str.26)
  br label %.thread

.thread:                                          ; preds = %bb.ew, %.preheader, %bb.ev, %bb.ez, %bb.ey, %bb.er
  %i.ail = load i32, ptr %i.fn, align 8, !tbaa !82
  %.not.i288 = icmp eq i32 %i.ail, 0
  br i1 %.not.i288, label %bb.ff, label %bb.fa

bb.fa:                                            ; preds = %.thread
  %i.aim = load double, ptr %i.ew, align 8, !tbaa !18 ; 2 uses
  %i.ain = fmul double %i.aim, 1.000000e+02
  %i.aio = load double, ptr %i.ey, align 8, !tbaa !48 ; 4 uses
  %i.aip = call double @llvm.fabs.f64(double %i.aio)
  %i.aiq = load double, ptr %i.fc, align 8, !tbaa !80 ; 4 uses
  %i.air = call double @llvm.fabs.f64(double %i.aiq)
  %i.ais = fadd double %i.aip, %i.air
  %i.ait = fmul double %i.ain, %i.ais             ; 2 uses
  %i.aiu = load double, ptr %i.fo, align 8, !tbaa !83 ; 5 uses
  %i.aiv = fsub double %i.aio, %i.aiu
  %i.aiw = call double @llvm.fabs.f64(double %i.aiv)
  %i.aix = fcmp ugt double %i.aiw, %i.ait
  br i1 %i.aix, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.aiy = fsub double %1, %i.aiu                 ; 2 uses
  %i.aiz = fmul double %i.aiq, %i.aiy
  %i.aja = fcmp ult double %i.aiz, 0.000000e+00
  %i.ajb = call double @llvm.fabs.f64(double %i.aiy)
  %i.ajc = fcmp ugt double %i.ajb, %i.ait
  %or.cond.i = and i1 %i.aja, %i.ajc
  br i1 %or.cond.i, label %bb.ff, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.ajd = call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.aiu, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  %i.aje = load double, ptr %i.fo, align 8, !tbaa !83 ; 2 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr %0, i64 680
  store double %i.aje, ptr %i.ajf, align 8, !tbaa !85
  store double %i.aje, ptr %2, align 8, !tbaa !21
  store i32 0, ptr %i.fn, align 8, !tbaa !82
  br label %IDAStopTest2.exit.thread

bb.fd:                                            ; preds = %bb.fa
  %i.ajg = fadd double %i.aio, %i.aiq
  %i.ajh = fsub double %i.ajg, %i.aiu
  %i.aji = fmul double %i.aiq, %i.ajh
  %i.ajj = fcmp ogt double %i.aji, 0.000000e+00
  br i1 %i.ajj, label %bb.fe, label %bb.ff

bb.fe:                                            ; preds = %bb.fd
  %i.ajk = fsub double %i.aiu, %i.aio
  %i.ajl = call double @llvm.fmuladd.f64(double %i.aim, double -4.000000e+00, double 1.000000e+00)
  %i.ajm = fmul double %i.ajl, %i.ajk
  store double %i.ajm, ptr %i.fc, align 8, !tbaa !80
  br label %bb.ff

bb.ff:                                            ; preds = %bb.fe, %bb.fd, %bb.fb, %.thread
  switch i32 %5, label %IDAStopTest2.exit.thread [
    i32 1, label %bb.fg
    i32 2, label %bb.fi
  ]

bb.fg:                                            ; preds = %bb.ff
  %i.ajn = load double, ptr %i.ey, align 8, !tbaa !48
  %i.ajo = fsub double %i.ajn, %1
  %i.ajp = load double, ptr %i.fc, align 8, !tbaa !80
  %i.ajq = fmul double %i.ajo, %i.ajp
  %i.ajr = fcmp ult double %i.ajq, 0.000000e+00
  br i1 %i.ajr, label %IDAStopTest2.exit, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.ajs = call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  %i.ajt = getelementptr inbounds nuw i8, ptr %0, i64 680
  store double %1, ptr %i.ajt, align 8, !tbaa !85
  store double %1, ptr %2, align 8, !tbaa !21
  br label %IDAStopTest2.exit.thread

bb.fi:                                            ; preds = %bb.ff
  %i.aju = load double, ptr %i.ey, align 8, !tbaa !48 ; 2 uses
  %i.ajv = getelementptr inbounds nuw i8, ptr %0, i64 680
  store double %i.aju, ptr %i.ajv, align 8, !tbaa !85
  store double %i.aju, ptr %2, align 8, !tbaa !21
  br label %IDAStopTest2.exit.thread

IDAStopTest2.exit.thread:                         ; preds = %bb.ff, %bb.fi, %bb.fh, %bb.fc, %bb.bd, %bb.bl, %.loopexit, %bb.et, %bb.eu, %bb.bq, %bb.bp, %bb.bb, %bb.o, %bb.ba, %bb.az, %bb.ay, %bb.au, %bb.at, %bb.as, %bb.al, %bb.ag, %bb.u, %bb.s, %bb.l, %bb.j, %bb.h, %bb.f, %bb.d, %bb.b
  %.0254 = phi i32 [ -20, %bb.b ], [ -23, %bb.d ], [ -22, %bb.f ], [ -22, %bb.h ], [ -22, %bb.j ], [ -22, %bb.l ], [ -10, %bb.ba ], [ -60, %bb.s ], [ -22, %bb.u ], [ -22, %bb.ag ], [ -10, %bb.al ], [ -22, %bb.as ], [ -10, %bb.at ], [ 2, %bb.au ], [ 0, %bb.ay ], [ %i.s, %bb.o ], [ %i.eo, %bb.bb ], [ 2, %bb.az ], [ -1, %bb.bd ], [ -22, %bb.bl ], [ -2, %bb.bq ], [ -2, %bb.bp ], [ %i.ags, %.loopexit ], [ 2, %bb.et ], [ -10, %bb.eu ], [ 1, %bb.fc ], [ 0, %bb.fi ], [ 0, %bb.fh ], [ -22, %bb.ff ]
  ret i32 %.0254
}

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @IDAInitialSetup(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !81
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !46
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 176
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !170
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 1994, ptr noundef nonnull @__func__.IDAInitialSetup, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7)
  br label %bb.u

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 432
end_hunk_1
begin_hunk_2_@IDARcheck3:bb.a
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.next335.i
  store double %i.ky, ptr %i.kz, align 8, !tbaa !21
  %indvars.iv.next335.i.1 = add nuw nsw i64 %indvars.iv334.i, 2 ; 2 uses
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %indvars.iv.next335.i.1
  %i.lb = load double, ptr %i.la, align 8, !tbaa !21
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.next335.i.1
  store double %i.lb, ptr %i.lc, align 8, !tbaa !21
  %indvars.iv.next335.i.2 = add nuw nsw i64 %indvars.iv334.i, 3 ; 2 uses
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr %i.kf, i64 %indvars.iv.next335.i.2
  %i.le = load double, ptr %i.ld, align 8, !tbaa !21
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %indvars.iv.next335.i.2
  store double %i.le, ptr %i.lf, align 8, !tbaa !21
  %indvars.iv.next335.i.3 = add nuw nsw i64 %indvars.iv334.i, 4 ; 2 uses
  %exitcond338.not.i.3 = icmp eq i64 %indvars.iv.next335.i.3, %wide.trip.count327.i
  br i1 %exitcond338.not.i.3, label %._crit_edge293.loopexit.i, label %scalar.ph, !llvm.loop !184

._crit_edge293.loopexit.i:                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre356.i = load double, ptr %i.ci, align 8, !tbaa !84
  br label %._crit_edge293.i

._crit_edge293.i:                                 ; preds = %._crit_edge293.loopexit.i, %.thread427.i
  %.3220.lcssa406426429.i = phi i32 [ %.3220277.ph.i, %._crit_edge293.loopexit.i ], [ %.2219295.i, %.thread427.i ]
  %i.lg = phi double [ %.pre356.i, %._crit_edge293.loopexit.i ], [ %.1231.i, %.thread427.i ] ; 2 uses
  %i.lh = load double, ptr %i.m, align 8, !tbaa !188 ; 3 uses
  %i.li = fsub double %i.lh, %i.lg                ; 2 uses
  %i.lj = tail call double @llvm.fabs.f64(double %i.li) ; 2 uses
  %i.lk = load double, ptr %i.aq, align 8, !tbaa !90 ; 2 uses
  %i.ll = fcmp ugt double %i.lj, %i.lk
  br i1 %i.ll, label %.backedge.i, label %.loopexit252.i.loopexit

.loopexit252.thread.i:                            ; preds = %scalar.ph197.prol.loopexit, %scalar.ph197, %middle.block208
  %.pre357.i = load double, ptr %i.m, align 8, !tbaa !188
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store double %.pre357.i, ptr %i.lm, align 8, !tbaa !189
  br label %.lr.ph310.i

.loopexit252.i.loopexit:                          ; preds = %._crit_edge289.loopexit.i, %.backedge.i, %._crit_edge293.i
  %.ph = phi double [ %i.lh, %._crit_edge293.i ], [ %i.jb, %.backedge.i ], [ %.pre.i, %._crit_edge289.loopexit.i ]
  %i.ln = icmp sgt i32 %i.gj, 0
  %i.lo = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store double %.ph, ptr %i.lo, align 8, !tbaa !189
  br i1 %i.ln, label %.loopexit252.i..lr.ph310.i_crit_edge, label %._crit_edge.thread.thread132

._crit_edge.thread.thread132:                     ; preds = %.loopexit252.i.loopexit
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !189
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store double %i.lq, ptr %i.lr, align 8, !tbaa !84
  br label %bb.at

.loopexit252.i..lr.ph310.i_crit_edge.critedge:    ; preds = %.preheader254.i
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store double %i.cj, ptr %i.ls, align 8, !tbaa !189
  br label %.loopexit252.i..lr.ph310.i_crit_edge

.loopexit252.i..lr.ph310.i_crit_edge:             ; preds = %.loopexit252.i..lr.ph310.i_crit_edge.critedge, %.loopexit252.i.loopexit
  %.pre106 = load ptr, ptr %i.x, align 8, !tbaa !71
  %.phi.trans.insert107 = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %.pre108 = load ptr, ptr %.phi.trans.insert107, align 8, !tbaa !72
  %.pre109 = load ptr, ptr %i.ax, align 8, !tbaa !75
  br label %.lr.ph310.i

.lr.ph310.i:                                      ; preds = %.loopexit252.i..lr.ph310.i_crit_edge, %.loopexit252.thread.i
  %i.lt = phi ptr [ %.pre109, %.loopexit252.i..lr.ph310.i_crit_edge ], [ %i.gl, %.loopexit252.thread.i ]
  %i.lu = phi ptr [ %.pre108, %.loopexit252.i..lr.ph310.i_crit_edge ], [ %i.je, %.loopexit252.thread.i ]
  %i.lv = phi ptr [ %.pre106, %.loopexit252.i..lr.ph310.i_crit_edge ], [ %i.jf, %.loopexit252.thread.i ]
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !73
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ao, %.lr.ph310.i
  %indvars.iv345.i = phi i64 [ 0, %.lr.ph310.i ], [ %indvars.iv.next346.i, %bb.ao ] ; 9 uses
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lv, i64 %indvars.iv345.i
  %i.lz = load double, ptr %i.ly, align 8         ; 3 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.lu, i64 %indvars.iv345.i
  store double %i.lz, ptr %i.ma, align 8, !tbaa !21
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lx, i64 %indvars.iv345.i ; 3 uses
  store i32 0, ptr %i.mb, align 4, !tbaa !26
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %indvars.iv345.i
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !26
  %.not244.i = icmp eq i32 %i.md, 0
  %i.me = bitcast double %i.lz to i64
  br i1 %.not244.i, label %bb.ao, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.mf = fcmp oeq double %i.lz, 0.000000e+00
  %.pre358.i = load ptr, ptr %i.az, align 8, !tbaa !70 ; 2 uses
  br i1 %i.mf, label %bb.aj, label %._crit_edge359.i

._crit_edge359.i:                                 ; preds = %bb.ai
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %.pre358.i, i64 %indvars.iv345.i
  %.pre360.i = load double, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  br label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.mg = load ptr, ptr %i.ba, align 8, !tbaa !74
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.mg, i64 %indvars.iv345.i
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !26
  %i.mj = sitofp i32 %i.mi to double
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %.pre358.i, i64 %indvars.iv345.i
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !21 ; 4 uses
  %i.mm = fmul double %i.ml, %i.mj
  %i.mn = fcmp ugt double %i.mm, 0.000000e+00
  br i1 %i.mn, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.mo = fcmp ogt double %i.ml, 0.000000e+00
  %i.mp = select i1 %i.mo, i32 -1, i32 1
  store i32 %i.mp, ptr %i.mb, align 4, !tbaa !26
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj, %._crit_edge359.i
  %i.mq = phi double [ %.pre360.i, %._crit_edge359.i ], [ %i.ml, %bb.ak ], [ %i.ml, %bb.aj ] ; 3 uses
  %i.mr = bitcast double %i.mq to i64
  %.unshifted246.i = xor i64 %i.mr, %i.me
  %i.ms = icmp sgt i64 %.unshifted246.i, -1
  br i1 %i.ms, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.mt = load ptr, ptr %i.ba, align 8, !tbaa !74
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mt, i64 %indvars.iv345.i
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !26
  %i.mw = sitofp i32 %i.mv to double
  %i.mx = fmul double %i.mq, %i.mw
  %i.my = fcmp ugt double %i.mx, 0.000000e+00
  br i1 %i.my, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.mz = fcmp ogt double %i.mq, 0.000000e+00
  %i.na = select i1 %i.mz, i32 -1, i32 1
  store i32 %i.na, ptr %i.mb, align 4, !tbaa !26
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al, %bb.ah
  %indvars.iv.next346.i = add nuw nsw i64 %indvars.iv345.i, 1 ; 2 uses
  %i.nb = load i32, ptr %i.ar, align 8, !tbaa !55 ; 2 uses
  %i.nc = sext i32 %i.nb to i64
  %i.nd = icmp slt i64 %indvars.iv.next346.i, %i.nc
  br i1 %i.nd, label %bb.ah, label %IDARootfind.exit

IDARootfind.exit:                                 ; preds = %bb.ao, %bb.r, %._crit_edge314.i
  %i.ne = phi i32 [ %i.as, %._crit_edge314.i ], [ %i.em, %bb.r ], [ %i.nb, %bb.ao ] ; 2 uses
  %i.nf = phi i1 [ true, %._crit_edge314.i ], [ false, %bb.r ], [ false, %bb.ao ] ; 2 uses
  %i.ng = icmp sgt i32 %i.ne, 0
  br i1 %i.ng, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %IDARootfind.exit
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !75
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 1136
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %bb.as
  %i.nk = phi i32 [ %i.ne, %.lr.ph ], [ %i.nr, %bb.as ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.as ] ; 3 uses
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.ni, i64 %indvars.iv ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !26
  %.not53 = icmp eq i32 %i.nm, 0
  br i1 %.not53, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.nn = load ptr, ptr %i.nj, align 8, !tbaa !72
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv
  %i.np = load double, ptr %i.no, align 8, !tbaa !21
  %i.nq = fcmp une double %i.np, 0.000000e+00
  br i1 %i.nq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  store i32 1, ptr %i.nl, align 4, !tbaa !26
  %.pre110 = load i32, ptr %i.ar, align 8, !tbaa !55
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.aq, %bb.ar
  %i.nr = phi i32 [ %i.nk, %bb.ap ], [ %i.nk, %bb.aq ], [ %.pre110, %bb.ar ] ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ns = sext i32 %i.nr to i64
  %i.nt = icmp slt i64 %indvars.iv.next, %i.ns
  br i1 %i.nt, label %bb.ap, label %._crit_edge

._crit_edge.thread:                               ; preds = %IDARootfind.exit
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !189
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store double %i.nv, ptr %i.nw, align 8, !tbaa !84
  br i1 %i.nf, label %IDARootfind.exit.thread, label %bb.at

._crit_edge:                                      ; preds = %bb.as
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !189
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 1096
  store double %i.ny, ptr %i.nz, align 8, !tbaa !84
  %i.oa = icmp sgt i32 %i.nr, 0
  br i1 %i.oa, label %.lr.ph78, label %._crit_edge79

.lr.ph78:                                         ; preds = %._crit_edge
  %i.ob = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !72 ; 7 uses
  %i.od = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !70 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.nr to i64   ; 5 uses
  %min.iters.check230 = icmp ult i32 %i.nr, 8
  %i.of = ptrtoaddr ptr %i.oe to i64
  %i.og = ptrtoaddr ptr %i.oc to i64
  %i.oh = sub i64 %i.og, %i.of
  %diff.check232 = icmp ugt i64 %i.oh, -32
  %or.cond256 = select i1 %min.iters.check230, i1 true, i1 %diff.check232
  br i1 %or.cond256, label %scalar.ph229.preheader, label %vector.ph233

vector.ph233:                                     ; preds = %.lr.ph78
  %n.vec234 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph233
  %index236 = phi i64 [ 0, %vector.ph233 ], [ %index.next239, %vector.body235 ] ; 3 uses
  %i.oi = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %index236 ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %wide.load237 = load <2 x double>, ptr %i.oi, align 8, !tbaa !21
  %wide.load238 = load <2 x double>, ptr %i.oj, align 8, !tbaa !21
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %index236 ; 2 uses
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 16
  store <2 x double> %wide.load237, ptr %i.ok, align 8, !tbaa !21
  store <2 x double> %wide.load238, ptr %i.ol, align 8, !tbaa !21
  %index.next239 = add nuw i64 %index236, 4       ; 2 uses
  %i.om = icmp eq i64 %index.next239, %n.vec234
  br i1 %i.om, label %middle.block240, label %vector.body235, !llvm.loop !185

middle.block240:                                  ; preds = %vector.body235
  %cmp.n241 = icmp eq i64 %n.vec234, %wide.trip.count
  br i1 %cmp.n241, label %._crit_edge79, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %.lr.ph78, %middle.block240
  %indvars.iv101.ph = phi i64 [ 0, %.lr.ph78 ], [ %n.vec234, %middle.block240 ] ; 3 uses
  %xtraiter289 = and i64 %wide.trip.count, 3      ; 2 uses
  %lcmp.mod290.not = icmp eq i64 %xtraiter289, 0
  br i1 %lcmp.mod290.not, label %scalar.ph229.prol.loopexit, label %scalar.ph229.prol

scalar.ph229.prol:                                ; preds = %scalar.ph229.preheader, %scalar.ph229.prol
  %indvars.iv101.prol = phi i64 [ %indvars.iv.next102.prol, %scalar.ph229.prol ], [ %indvars.iv101.ph, %scalar.ph229.preheader ] ; 3 uses
  %prol.iter291 = phi i64 [ %prol.iter291.next, %scalar.ph229.prol ], [ 0, %scalar.ph229.preheader ]
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv101.prol
  %i.oo = load double, ptr %i.on, align 8, !tbaa !21
  %i.op = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %indvars.iv101.prol
  store double %i.oo, ptr %i.op, align 8, !tbaa !21
  %indvars.iv.next102.prol = add nuw nsw i64 %indvars.iv101.prol, 1 ; 2 uses
  %prol.iter291.next = add i64 %prol.iter291, 1   ; 2 uses
  %prol.iter291.cmp.not = icmp eq i64 %prol.iter291.next, %xtraiter289
  br i1 %prol.iter291.cmp.not, label %scalar.ph229.prol.loopexit, label %scalar.ph229.prol, !llvm.loop !186

scalar.ph229.prol.loopexit:                       ; preds = %scalar.ph229.prol, %scalar.ph229.preheader
  %indvars.iv101.unr = phi i64 [ %indvars.iv101.ph, %scalar.ph229.preheader ], [ %indvars.iv.next102.prol, %scalar.ph229.prol ]
  %i.oq = sub nsw i64 %indvars.iv101.ph, %wide.trip.count
  %i.or = icmp ugt i64 %i.oq, -4
  br i1 %i.or, label %._crit_edge79, label %scalar.ph229

scalar.ph229:                                     ; preds = %scalar.ph229.prol.loopexit, %scalar.ph229
  %indvars.iv101 = phi i64 [ %indvars.iv.next102.3, %scalar.ph229 ], [ %indvars.iv101.unr, %scalar.ph229.prol.loopexit ] ; 6 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv101
  %i.ot = load double, ptr %i.os, align 8, !tbaa !21
  %i.ou = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %indvars.iv101
  store double %i.ot, ptr %i.ou, align 8, !tbaa !21
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.next102
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !21
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %indvars.iv.next102
  store double %i.ow, ptr %i.ox, align 8, !tbaa !21
  %indvars.iv.next102.1 = add nuw nsw i64 %indvars.iv101, 2 ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.next102.1
  %i.oz = load double, ptr %i.oy, align 8, !tbaa !21
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %indvars.iv.next102.1
  store double %i.oz, ptr %i.pa, align 8, !tbaa !21
  %indvars.iv.next102.2 = add nuw nsw i64 %indvars.iv101, 3 ; 2 uses
  %i.pb = getelementptr inbounds nuw [8 x i8], ptr %i.oc, i64 %indvars.iv.next102.2
  %i.pc = load double, ptr %i.pb, align 8, !tbaa !21
  %i.pd = getelementptr inbounds nuw [8 x i8], ptr %i.oe, i64 %indvars.iv.next102.2
  store double %i.pc, ptr %i.pd, align 8, !tbaa !21
  %indvars.iv.next102.3 = add nuw nsw i64 %indvars.iv101, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next102.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge79, label %scalar.ph229, !llvm.loop !187

._crit_edge79:                                    ; preds = %scalar.ph229.prol.loopexit, %scalar.ph229, %middle.block240, %._crit_edge
  br i1 %i.nf, label %IDARootfind.exit.thread, label %bb.at

bb.at:                                            ; preds = %._crit_edge.thread.thread132, %._crit_edge.thread, %._crit_edge79
  %i.pe = phi ptr [ %i.nu, %._crit_edge.thread ], [ %i.nx, %._crit_edge79 ], [ %i.lp, %._crit_edge.thread.thread132 ]
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !189
  %i.pg = load ptr, ptr %i.n, align 8, !tbaa !78
  %i.ph = load ptr, ptr %i.p, align 8, !tbaa !79
  %i.pi = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.pf, ptr noundef %i.pg, ptr noundef %i.ph) ; 0 uses
  br label %IDARootfind.exit.thread

IDARootfind.exit.thread:                          ; preds = %bb.w, %._crit_edge.thread.thread, %._crit_edge.thread, %._crit_edge79, %bb.d, %bb.at
  %.051 = phi i32 [ 1, %bb.at ], [ -10, %bb.d ], [ 0, %._crit_edge79 ], [ 0, %._crit_edge.thread ], [ 0, %._crit_edge.thread.thread ], [ -10, %bb.w ]
  ret i32 %.051
}

; Function Attrs: nounwind uwtable
define range(i32 -28, 1) i32 @IDAGetSolution(ptr noundef %0, double noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef null, i32 noundef -20, i32 noundef 3435, ptr noundef nonnull @__func__.IDAGetSolution, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !18
  %i.d = fmul double %i.c, 1.000000e+02
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.f = load double, ptr %i.e, align 8, !tbaa !48 ; 4 uses
  %i.g = tail call double @llvm.fabs.f64(double %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.i = load double, ptr %i.h, align 8, !tbaa !80 ; 3 uses
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %i.k = fadd double %i.g, %i.j
  %i.l = fmul double %i.d, %i.k                   ; 2 uses
  %i.m = fcmp olt double %i.i, 0.000000e+00
  %i.n = fneg double %i.l
  %.060 = select i1 %i.m, double %i.n, double %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.p = load double, ptr %i.o, align 8, !tbaa !51
  %i.q = fsub double %i.f, %i.p                   ; 2 uses
  %i.r = fsub double %i.q, %.060
  %i.s = fsub double %1, %i.r
  %i.t = fmul double %i.i, %i.s
  %i.u = fcmp olt double %i.t, 0.000000e+00
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -26, i32 noundef 3448, ptr noundef nonnull @__func__.IDAGetSolution, ptr noundef nonnull @.str, ptr noundef nonnull @.str.29, double noundef %1, double noundef %i.q, double noundef %i.f)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.w = load i32, ptr %i.v, align 4, !tbaa !50   ; 2 uses
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %i.w, i32 1) ; 5 uses
  %i.x = fsub double %1, %i.f                     ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  %i.z = load double, ptr %i.y, align 8, !tbaa !21 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 5 uses
  store double 1.000000e+00, ptr %i.aa, align 8, !tbaa !21
  %.not65 = icmp slt i32 %spec.store.select, 1
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ab = fdiv double %i.x, %i.z                  ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 1256      ; 3 uses
  %i.ad = zext nneg i32 %spec.store.select to i64 ; 2 uses
  %xtraiter = and i64 %i.ad, 1
  %4 = icmp ult i32 %i.w, 2
  br i1 %4, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ad, 2147483646
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.new
  %i.ae = phi double [ %i.z, %.lr.ph.new ], [ %i.at, %bb.f ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 5 uses
  %.05768 = phi double [ %i.ab, %.lr.ph.new ], [ %i.au, %bb.f ] ; 2 uses
  %.05867 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.ap, %bb.f ]
  %.05966 = phi double [ 1.000000e+00, %.lr.ph.new ], [ %i.aq, %bb.f ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.f ]
  %i.af = fdiv double %.05966, %i.ae
  %i.ag = tail call double @llvm.fmuladd.f64(double %.05867, double %.05768, double %i.af) ; 2 uses
  %i.ah = fmul double %.05966, %.05768            ; 3 uses
  %i.ai = fadd double %i.x, %i.ae
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !21 ; 3 uses
  %i.al = fdiv double %i.ai, %i.ak                ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv
  store double %i.ah, ptr %i.am, align 8, !tbaa !21
  %i.an = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv
  store double %i.ag, ptr %i.an, align 8, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ao = fdiv double %i.ah, %i.ak
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.al, double %i.ao) ; 3 uses
  %i.aq = fmul double %i.ah, %i.al                ; 3 uses
  %i.ar = fadd double %i.x, %i.ak
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next
  %i.at = load double, ptr %i.as, align 8, !tbaa !21 ; 3 uses
  %i.au = fdiv double %i.ar, %i.at                ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.next
  store double %i.aq, ptr %i.av, align 8, !tbaa !21
  %i.aw = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.next
  store double %i.ap, ptr %i.aw, align 8, !tbaa !21
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.f

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %.epil.init = phi double [ %i.z, %.lr.ph ], [ %i.at, %._crit_edge.loopexit.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.05768.epil.init = phi double [ %i.ab, %.lr.ph ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.05867.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %.05966.epil.init = phi double [ 1.000000e+00, %.lr.ph ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod71 = trunc i32 %spec.store.select to i1
  tail call void @llvm.assume(i1 %lcmp.mod71)
  %i.ax = fdiv double %.05966.epil.init, %.epil.init
  %i.ay = tail call double @llvm.fmuladd.f64(double %.05867.epil.init, double %.05768.epil.init, double %i.ax)
  %i.az = fmul double %.05966.epil.init, %.05768.epil.init
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv.epil.init
  store double %i.az, ptr %i.ba, align 8, !tbaa !21
  %i.bb = getelementptr [8 x i8], ptr %i.ac, i64 %indvars.iv.epil.init
  store double %i.ay, ptr %i.bb, align 8, !tbaa !21
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.e
  %.pre-phi = add i32 %spec.store.select, 1
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bd = tail call i32 @N_VLinearCombination(i32 noundef %.pre-phi, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.bc, ptr noundef %2) #13
  %.not63 = icmp eq i32 %i.bd, 0
  br i1 %.not63, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bg = tail call i32 @N_VLinearCombination(i32 noundef %spec.store.select, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, ptr noundef %3) #13
  %.not64 = icmp eq i32 %i.bg, 0
  %. = select i1 %.not64, i32 0, i32 -28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge, %bb.d, %bb.b
  %.061 = phi i32 [ -20, %bb.b ], [ -26, %bb.d ], [ -28, %._crit_edge ], [ %., %bb.g ]
  ret i32 %.061
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -22, 100) i32 @IDAStopTest1(ptr noundef nonnull %0, double noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef %5) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !82
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !48 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 2 uses
  %i.f = load double, ptr %i.e, align 8, !tbaa !83 ; 6 uses
  %i.g = fsub double %i.d, %i.f                   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 2 uses
  %i.i = load double, ptr %i.h, align 8, !tbaa !80 ; 5 uses
  %i.j = fmul double %i.g, %i.i
  %i.k = fcmp ogt double %i.j, 0.000000e+00
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2190, ptr noundef nonnull @__func__.IDAStopTest1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, double noundef %i.f, double noundef %i.d)
  br label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load double, ptr %i.l, align 8, !tbaa !18 ; 2 uses
  %i.n = fmul double %i.m, 1.000000e+02
  %i.o = tail call double @llvm.fabs.f64(double %i.d)
  %i.p = tail call double @llvm.fabs.f64(double %i.i)
  %i.q = fadd double %i.o, %i.p
  %i.r = fmul double %i.q, %i.n                   ; 2 uses
  %i.s = tail call double @llvm.fabs.f64(double %i.g)
  %i.t = fcmp ugt double %i.s, %i.r
  br i1 %i.t, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = fsub double %1, %i.f                     ; 2 uses
  %i.v = fmul double %i.u, %i.i
  %i.w = fcmp ult double %i.v, 0.000000e+00
  %i.x = tail call double @llvm.fabs.f64(double %i.u)
  %i.y = fcmp ugt double %i.x, %i.r
  %or.cond = and i1 %i.w, %i.y
  br i1 %or.cond, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.f, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not71 = icmp eq i32 %i.z, 0
  %i.aa = load double, ptr %i.e, align 8, !tbaa !83 ; 3 uses
  br i1 %.not71, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load double, ptr %i.c, align 8, !tbaa !48
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2208, ptr noundef nonnull @__func__.IDAStopTest1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, double noundef %i.aa, double noundef %i.ab)
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 680
  store double %i.aa, ptr %i.ac, align 8, !tbaa !85
  store double %i.aa, ptr %2, align 8, !tbaa !21
  store i32 0, ptr %i.a, align 8, !tbaa !82
  br label %bb.t

bb.i:                                             ; preds = %bb.d
  %i.ad = fadd double %i.d, %i.i
  %i.ae = fsub double %i.ad, %i.f
  %i.af = fmul double %i.i, %i.ae
  %i.ag = fcmp ogt double %i.af, 0.000000e+00
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = fsub double %i.f, %i.d
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.m, double -4.000000e+00, double 1.000000e+00)
  %i.aj = fmul double %i.ah, %i.ai
  store double %i.aj, ptr %i.h, align 8, !tbaa !80
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.j, %bb.i, %bb.a
  switch i32 %5, label %bb.t [
    i32 1, label %bb.l
    i32 2, label %bb.r
  ]

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.al = load double, ptr %i.ak, align 8, !tbaa !85
  %i.am = fcmp oeq double %1, %i.al
  br i1 %i.am, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store double %1, ptr %i.ak, align 8, !tbaa !85
  store double %1, ptr %2, align 8, !tbaa !21
  br label %bb.t

bb.n:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ao = load double, ptr %i.an, align 8, !tbaa !48
  %i.ap = fsub double %i.ao, %1
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !80
  %i.as = fmul double %i.ap, %i.ar
  %i.at = fcmp ult double %i.as, 0.000000e+00
  br i1 %i.at, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %1, ptr noundef nonnull %3, ptr noundef nonnull %4)
  %.not70 = icmp eq i32 %i.au, 0
  br i1 %.not70, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -22, i32 noundef 2242, ptr noundef nonnull @__func__.IDAStopTest1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, double noundef %1)
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  store double %1, ptr %i.ak, align 8, !tbaa !85
  store double %1, ptr %2, align 8, !tbaa !21
  br label %bb.t

bb.r:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 672 ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !48 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !85
  %i.az = fsub double %i.aw, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !80
  %i.bc = fmul double %i.az, %i.bb
  %i.bd = fcmp ogt double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.be = tail call i32 @IDAGetSolution(ptr noundef nonnull %0, double noundef %i.aw, ptr noundef nonnull %3, ptr noundef nonnull %4) ; 0 uses
  %i.bf = load double, ptr %i.av, align 8, !tbaa !48 ; 2 uses
  store double %i.bf, ptr %i.ax, align 8, !tbaa !85
  store double %i.bf, ptr %2, align 8, !tbaa !21
  br label %bb.t

bb.t:                                             ; preds = %bb.k, %bb.r, %bb.n, %bb.s, %bb.q, %bb.p, %bb.m, %bb.h, %bb.g, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ -22, %bb.g ], [ 1, %bb.h ], [ 99, %bb.r ], [ 0, %bb.m ], [ -22, %bb.p ], [ 0, %bb.q ], [ 99, %bb.n ], [ 0, %bb.s ], [ -22, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -99, -2) i32 @IDAHandleFailure(ptr nofree noundef nonnull readonly captures(address_is_null) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  switch i32 %1, label %bb.m [
    i32 -3, label %bb.b
    i32 -4, label %bb.c
    i32 -6, label %bb.d
    i32 -7, label %bb.e
    i32 -9, label %bb.f
    i32 -8, label %bb.g
    i32 -11, label %bb.h
    i32 -20, label %bb.i
    i32 -9999, label %bb.j
    i32 -16, label %bb.k
    i32 -17, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.b = load double, ptr %i.a, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.d = load double, ptr %i.c, align 8, !tbaa !80
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -3, i32 noundef 2365, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.38, double noundef %i.b, double noundef %i.d)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.f = load double, ptr %i.e, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.h = load double, ptr %i.g, align 8, !tbaa !80
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -4, i32 noundef 2370, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, double noundef %i.f, double noundef %i.h)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.j = load double, ptr %i.i, align 8, !tbaa !48
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @IDAProcessError(ptr noundef nonnull %0, i32 noundef -6, i32 noundef 2375, ptr noundef nonnull @__func__.IDAHandleFailure, ptr noundef nonnull @.str, ptr noundef nonnull @.str.40, double noundef %i.j)
  br label %bb.n

bb.e:                                             ; preds = %bb.a
end_hunk_2
