Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcCas?download=true
inline.NumInlined: 693
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Abc_NtkLutCascadeFile:bb.a

bb.by:                                            ; preds = %bb.bx
  %i.jc = sitofp i32 %.0190.lcssa to double
  %i.jd = fmul nnan double %i.jc, 1.000000e+02
  %i.je = fdiv double %i.jd, %.pre-phi337
  %i.jf = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.77, i32 noundef %.0190.lcssa, double noundef %i.je) ; 0 uses
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.jg = sitofp i32 %.0188.lcssa to double
  %i.jh = fdiv double %.0186.lcssa, %i.jg
  %i.ji = sitofp i32 %i.ax to double
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #30
  %i.jj = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %18) #30
  %i.jk = icmp slt i32 %i.jj, 0
  br i1 %i.jk, label %Abc_Clock.exit295, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jl = load i64, ptr %18, align 8, !tbaa !27
  %i.jm = mul nsw i64 %i.jl, 1000000
  %i.jn = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !28
  %i.jp = sdiv i64 %i.jo, 1000
  %i.jq = add nsw i64 %i.jp, %i.jm
  br label %Abc_Clock.exit295

Abc_Clock.exit295:                                ; preds = %bb.bz, %bb.ca
  %.0.i294 = phi i64 [ %i.jq, %bb.ca ], [ -1, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #30
  %i.jr = sub nsw i64 %.0.i294, %.0.i
  %i.js = sitofp i64 %i.jr to double
  %i.jt = fdiv double %i.js, 1.000000e+06
  %i.ju = fdiv double %i.ji, %i.jt
  %i.jv = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.78, i32 noundef %i.ax, double noundef %i.jh, double noundef %i.ju) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #30
  %i.jw = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %17) #30
  %i.jx = icmp slt i32 %i.jw, 0
  br i1 %i.jx, label %Abc_Clock.exit297, label %bb.cb

bb.cb:                                            ; preds = %Abc_Clock.exit295
  %i.jy = load i64, ptr %17, align 8, !tbaa !27
  %i.jz = mul nsw i64 %i.jy, 1000000
  %i.ka = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !28
  %i.kc = sdiv i64 %i.kb, 1000
  %i.kd = add nsw i64 %i.kc, %i.jz
  br label %Abc_Clock.exit297

Abc_Clock.exit297:                                ; preds = %Abc_Clock.exit295, %bb.cb
  %.0.i296 = phi i64 [ %i.kd, %bb.cb ], [ -1, %Abc_Clock.exit295 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #30
  %i.ke = sub nsw i64 %.0.i296, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.79)
  %i.kf = sitofp i64 %i.ke to double
  %i.kg = fdiv double %i.kf, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.3, double noundef %i.kg)
  %.not217 = icmp eq ptr %.0183.lcssa, null
  br i1 %.not217, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %Abc_Clock.exit297
  %i.kh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.80, i32 noundef %i.ix, ptr noundef nonnull %i.c) ; 0 uses
  %i.ki = call i32 @fclose(ptr noundef nonnull %.0183.lcssa) ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %Abc_Clock.exit297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  br label %Vec_WrdReadBin.exit.thread

Vec_WrdReadBin.exit.thread:                       ; preds = %bb.h, %bb.f, %bb.d, %Vec_WrdFree.exit, %bb.cd, %Vec_WrdReadBin.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #22

; Function Attrs: nofree nounwind uwtable
define void @Vec_WrdWriteTruthHex(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #12 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.64) ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef %0) ; 0 uses
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %2, 7                       ; 2 uses
  %i.e = add nsw i32 %2, -6                       ; 2 uses
  %i.f = shl nuw i32 1, %i.e                      ; 2 uses
  %i.g = select i1 %i.d, i32 1, i32 %i.f
  %i.h = getelementptr i8, ptr %1, i64 4
  %.val16 = load i32, ptr %i.h, align 4, !tbaa !84
  %i.i = sdiv i32 %.val16, %i.g                   ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.k = select i1 %i.d, i32 0, i32 %i.e
  %i.l = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.m = icmp samesign ugt i32 %2, 5
  %i.n = add nsw i32 %2, -2
  %i.o = icmp slt i32 %2, 2
  %i.p = icmp samesign ult i32 %2, 7
  %i.q = select i1 %i.p, i32 1, i32 %i.f          ; 2 uses
  %i.r = zext nneg i32 %i.q to i64
  %.idx.i = shl nuw nsw i64 %i.r, 3
  %notmask.i = shl nsw i32 -1, %i.n
  %i.s = xor i32 %notmask.i, -1
  %i.t = select i1 %i.m, i32 15, i32 %i.s
  %i.u = zext nneg i32 %i.t to i64
  br i1 %i.o, label %Abc_TtPrintHexRev.exit.us, label %.lr.ph.split

Abc_TtPrintHexRev.exit.us:                        ; preds = %.lr.ph, %Abc_TtPrintHexRev.exit.us
  %.017.us = phi i32 [ %i.ad, %Abc_TtPrintHexRev.exit.us ], [ 0, %.lr.ph ] ; 2 uses
  %.val.us = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.v = zext nneg i32 %.017.us to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val.us, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !72
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.y, 15                         ; 3 uses
  %i.aa = icmp samesign ult i32 %i.z, 10
  %i.ab = or disjoint i32 %i.z, 48
  %i.ac = add nuw nsw i32 %i.z, 55
  %.0.i.i.us = select i1 %i.aa, i32 %i.ab, i32 %i.ac
  %fputc17.i.us = tail call i32 @fputc(i32 %.0.i.i.us, ptr nonnull %i.a) ; 0 uses
  %fputc.us = tail call i32 @fputc(i32 10, ptr nonnull %i.a) ; 0 uses
  %i.ad = add nuw nsw i32 %.017.us, 1             ; 2 uses
  %exitcond25.not = icmp eq i32 %i.ad, %i.i
  br i1 %exitcond25.not, label %._crit_edge, label %Abc_TtPrintHexRev.exit.us, !llvm.loop !348

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not22.i = icmp slt i32 %i.q, 1
  br i1 %.not22.i, label %Abc_TtPrintHexRev.exit.us20, label %.lr.ph.i

Abc_TtPrintHexRev.exit.us20:                      ; preds = %.lr.ph.split, %Abc_TtPrintHexRev.exit.us20
  %.017.us18 = phi i32 [ %i.ae, %Abc_TtPrintHexRev.exit.us20 ], [ 0, %.lr.ph.split ]
  %fputc.us21 = tail call i32 @fputc(i32 10, ptr nonnull %i.a) ; 0 uses
  %i.ae = add nuw nsw i32 %.017.us18, 1           ; 2 uses
  %exitcond24.not = icmp eq i32 %i.ae, %i.i
  br i1 %exitcond24.not, label %._crit_edge, label %Abc_TtPrintHexRev.exit.us20, !llvm.loop !348

.lr.ph.i:                                         ; preds = %.lr.ph.split, %Abc_TtPrintHexRev.exit.loopexit
  %.017 = phi i32 [ %i.at, %Abc_TtPrintHexRev.exit.loopexit ], [ 0, %.lr.ph.split ] ; 2 uses
  %i.af = shl i32 %.017, %i.k
  %.val = load ptr, ptr %i.l, align 8, !tbaa !71
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.ag ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 %.idx.i
  %.01521.i = getelementptr i8, ptr %i.ai, i64 -8
  br label %bb.d

.loopexit.i:                                      ; preds = %bb.e
  %.015.i = getelementptr inbounds i8, ptr %.01523.i, i64 -8 ; 2 uses
  %.not.i = icmp ult ptr %.015.i, %i.ah
  br i1 %.not.i, label %Abc_TtPrintHexRev.exit.loopexit, label %bb.d, !llvm.loop !2

bb.d:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.01523.i = phi ptr [ %.01521.i, %.lr.ph.i ], [ %.015.i, %.loopexit.i ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv.i = phi i64 [ %i.u, %bb.d ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %i.aj = load i64, ptr %.01523.i, align 8, !tbaa !72
  %i.ak = shl nsw i64 %indvars.iv.i, 2
  %i.al = and i64 %i.ak, 4294967292
  %i.am = lshr i64 %i.aj, %i.al
  %i.an = trunc i64 %i.am to i32
  %i.ao = and i32 %i.an, 15                       ; 3 uses
  %i.ap = icmp samesign ult i32 %i.ao, 10
  %i.aq = or disjoint i32 %i.ao, 48
  %i.ar = add nuw nsw i32 %i.ao, 55
  %.0.i18.i = select i1 %i.ap, i32 %i.aq, i32 %i.ar
  %fputc.i = tail call i32 @fputc(i32 %.0.i18.i, ptr nonnull %i.a) ; 0 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.as = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.as, label %bb.e, label %.loopexit.i, !llvm.loop !3

Abc_TtPrintHexRev.exit.loopexit:                  ; preds = %.loopexit.i
  %fputc = tail call i32 @fputc(i32 10, ptr nonnull %i.a) ; 0 uses
  %i.at = add nuw nsw i32 %.017, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.at, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.i, !llvm.loop !348

._crit_edge:                                      ; preds = %Abc_TtPrintHexRev.exit.loopexit, %Abc_TtPrintHexRev.exit.us20, %Abc_TtPrintHexRev.exit.us, %bb.c
  %i.au = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkSuppMinFile(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [1000 x i8], align 16             ; 40 uses
  %i.c = tail call i32 @Gia_FileSize(ptr noundef %0) #30 ; 4 uses
  %i.d = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.52) ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.53, ptr noundef %0) ; 0 uses
  br label %bb.ao

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(256) ptr @calloc(i64 noundef 32, i64 noundef 8) #34 ; 13 uses
  %i.h = sext i32 %i.c to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #31 ; 5 uses
  %i.j = sdiv i32 %i.c, 16
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #31 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i32 -1, ptr %i.a, align 4, !tbaa !60
  %i.n = tail call ptr @fgets(ptr noundef %i.i, i32 noundef %i.c, ptr noundef nonnull %i.d)
  %.not101 = icmp eq ptr %i.n, null
  br i1 %.not101, label %.loopexit, label %.lr.ph108

.lr.ph108:                                        ; preds = %bb.c, %bb.v
  %.059105 = phi i32 [ %i.bw, %bb.v ], [ 0, %bb.c ] ; 3 uses
  %.sroa.8.0104 = phi i32 [ %.sroa.8.1, %bb.v ], [ 0, %bb.c ] ; 4 uses
  %.sroa.0.0103 = phi i32 [ %.sroa.0.1, %bb.v ], [ 0, %bb.c ] ; 4 uses
  %.060102 = phi i32 [ %.1, %bb.v ], [ 0, %bb.c ] ; 4 uses
  %i.o = tail call ptr @strtok(ptr noundef %i.i, ptr noundef nonnull @.str.54) #30 ; 5 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.v, label %bb.d

bb.d:                                             ; preds = %.lr.ph108
  %i.q = load i8, ptr %i.o, align 1, !tbaa !67
  %i.r = icmp eq i8 %i.q, 48
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !67
  %i.u = icmp eq i8 %i.t, 120
  %spec.select.idx = select i1 %i.u, i64 2, i64 0
  %spec.select = getelementptr inbounds nuw i8, ptr %i.o, i64 %spec.select.idx
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.061 = phi ptr [ %i.o, %bb.d ], [ %spec.select, %bb.e ] ; 3 uses
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.061) #33
  %i.w = trunc i64 %i.v to i32                    ; 5 uses
  %i.x = icmp ult i32 %i.w, 2
  %i.y = add i32 %i.w, -1
  %i.z = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.y, i1 true)
  %i.aa = sub nuw nsw i32 32, %i.z
  %.09.i = select i1 %i.x, i32 %i.w, i32 %i.aa    ; 2 uses
  %i.ab = shl nuw i32 1, %.09.i
  %.not72 = icmp eq i32 %i.ab, %i.w
  br i1 %.not72, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.81, i32 noundef %i.w, i32 noundef %.059105) ; 0 uses
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ad = add nsw i32 %.09.i, 2                   ; 3 uses
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !60
  %i.ae = tail call fastcc i32 @Abc_TtReadHex(ptr noundef %i.m, ptr noundef %.061)
  %.not73 = icmp eq i32 %i.ae, 0
  br i1 %.not73, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.af = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.56, i32 noundef %.059105, ptr noundef nonnull %.061) ; 0 uses
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ag = add nsw i32 %i.ad, %.sroa.0.0103
  call fastcc void @Abc_TtMinimumBase(ptr noundef %i.m, ptr noundef null, i32 noundef %i.ad, ptr noundef %i.a)
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !60  ; 4 uses
  %i.ai = add nsw i32 %i.ah, %.sroa.8.0104
  %i.aj = sext i32 %i.ah to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.aj ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !89 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.ao, align 4, !tbaa !84
  store i32 10000, ptr %i.an, align 8, !tbaa !83
  %i.ap = tail call noalias dereferenceable_or_null(80000) ptr @malloc(i64 noundef 80000) #31
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !71
  store ptr %i.an, ptr %i.ak, align 8, !tbaa !89
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ar = phi ptr [ %i.an, %bb.k ], [ %i.al, %bb.j ] ; 4 uses
  %i.as = icmp slt i32 %i.ah, 7
  %i.at = add nsw i32 %i.ah, -6
  %i.au = shl nuw i32 1, %i.at
  %i.av = select i1 %i.as, i32 1, i32 %i.au       ; 2 uses
  %i.aw = icmp sgt i32 %i.av, 0
  br i1 %i.aw, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %wide.trip.count = zext nneg i32 %i.av to i64
  %.pre = load i32, ptr %i.ax, align 4, !tbaa !84
  %.pre135 = load i32, ptr %i.ar, align 8, !tbaa !83
  br label %bb.m

._crit_edge:                                      ; preds = %Vec_WrdPush.exit, %bb.l
  %i.az = add nsw i32 %.060102, 1
  br label %bb.v

bb.m:                                             ; preds = %.lr.ph, %Vec_WrdPush.exit
  %i.ba = phi i32 [ %.pre135, %.lr.ph ], [ %i.bs, %Vec_WrdPush.exit ] ; 8 uses
  %i.bb = phi i32 [ %.pre, %.lr.ph ], [ %i.bt, %Vec_WrdPush.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_WrdPush.exit ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !72
  %i.be = icmp eq i32 %i.bb, %i.ba
  br i1 %i.be, label %bb.n, label %.Vec_WrdPush.exit_crit_edge

.Vec_WrdPush.exit_crit_edge:                      ; preds = %bb.m
  %.pre136 = load ptr, ptr %i.ay, align 8, !tbaa !71
  br label %Vec_WrdPush.exit

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp slt i32 %i.ba, 16
  br i1 %i.bf, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %i.ay, align 8, !tbaa !71 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.bg, null
  br i1 %.not9.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = tail call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %i.bg, i64 noundef 128) #32
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.bi = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #31
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.r:                                             ; preds = %bb.n
  %i.bj = icmp samesign ult i32 %i.ba, 1073741823
  %i.bk = shl nuw nsw i32 %i.ba, 1
  %spec.select.i = select i1 %i.bj, i32 %i.bk, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.ba, %spec.select.i
  %.pre137 = load ptr, ptr %i.ay, align 8, !tbaa !71 ; 3 uses
  br i1 %.not.i9.i, label %bb.s, label %Vec_WrdPush.exit

bb.s:                                             ; preds = %bb.r
  %.not9.i10.i = icmp eq ptr %.pre137, null
  %i.bl = zext nneg i32 %spec.select.i to i64
  %i.bm = shl nuw nsw i64 %i.bl, 3                ; 2 uses
  br i1 %.not9.i10.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = tail call ptr @realloc(ptr noundef nonnull %.pre137, i64 noundef %i.bm) #32
  br label %Vec_WrdGrow.exit11.sink.split.i

bb.u:                                             ; preds = %bb.s
  %i.bo = tail call noalias ptr @malloc(i64 noundef %i.bm) #31
  br label %Vec_WrdGrow.exit11.sink.split.i

Vec_WrdGrow.exit11.sink.split.i:                  ; preds = %bb.t, %bb.u, %bb.p, %bb.q
  %i.bp = phi ptr [ %i.bi, %bb.q ], [ %i.bh, %bb.p ], [ %i.bn, %bb.t ], [ %i.bo, %bb.u ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.q ], [ 16, %bb.p ], [ %spec.select.i, %bb.t ], [ %spec.select.i, %bb.u ] ; 2 uses
  store ptr %i.bp, ptr %i.ay, align 8, !tbaa !71
  store i32 %spec.select.sink.i, ptr %i.ar, align 8, !tbaa !83
  %.pre138 = load i32, ptr %i.ax, align 4, !tbaa !84
  br label %Vec_WrdPush.exit

Vec_WrdPush.exit:                                 ; preds = %.Vec_WrdPush.exit_crit_edge, %bb.r, %Vec_WrdGrow.exit11.sink.split.i
  %i.bq = phi i32 [ %i.bb, %.Vec_WrdPush.exit_crit_edge ], [ %i.ba, %bb.r ], [ %.pre138, %Vec_WrdGrow.exit11.sink.split.i ] ; 2 uses
  %i.br = phi ptr [ %.pre136, %.Vec_WrdPush.exit_crit_edge ], [ %.pre137, %bb.r ], [ %i.bp, %Vec_WrdGrow.exit11.sink.split.i ]
  %i.bs = phi i32 [ %i.ba, %.Vec_WrdPush.exit_crit_edge ], [ %i.ba, %bb.r ], [ %spec.select.sink.i, %Vec_WrdGrow.exit11.sink.split.i ]
  %i.bt = add nsw i32 %i.bq, 1                    ; 2 uses
  store i32 %i.bt, ptr %i.ax, align 4, !tbaa !84
  %i.bu = sext i32 %i.bq to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.bu
  store i64 %i.bd, ptr %i.bv, align 8, !tbaa !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !349

bb.v:                                             ; preds = %.lr.ph108, %._crit_edge
  %.1 = phi i32 [ %.060102, %.lr.ph108 ], [ %i.az, %._crit_edge ] ; 2 uses
  %.sroa.0.1 = phi i32 [ %.sroa.0.0103, %.lr.ph108 ], [ %i.ag, %._crit_edge ] ; 2 uses
  %.sroa.8.1 = phi i32 [ %.sroa.8.0104, %.lr.ph108 ], [ %i.ai, %._crit_edge ] ; 2 uses
  %i.bw = add nuw nsw i32 %.059105, 1
  %i.bx = tail call ptr @fgets(ptr noundef %i.i, i32 noundef %i.c, ptr noundef nonnull %i.d)
  %.not = icmp eq ptr %i.bx, null
  br i1 %.not, label %.loopexit, label %.lr.ph108, !llvm.loop !350

.loopexit:                                        ; preds = %bb.v, %bb.c, %bb.i, %bb.g
  %.06097 = phi i32 [ %.060102, %bb.g ], [ %.060102, %bb.i ], [ 0, %bb.c ], [ %.1, %bb.v ]
  %.sroa.0.094 = phi i32 [ %.sroa.0.0103, %bb.g ], [ %.sroa.0.0103, %bb.i ], [ 0, %bb.c ], [ %.sroa.0.1, %bb.v ] ; 3 uses
  %.sroa.8.091 = phi i32 [ %.sroa.8.0104, %bb.g ], [ %.sroa.8.0104, %bb.i ], [ 0, %bb.c ], [ %.sroa.8.1, %bb.v ] ; 2 uses
  %.not86 = phi i1 [ false, %bb.g ], [ false, %bb.i ], [ true, %bb.c ], [ true, %bb.v ]
  %.not74 = icmp eq ptr %i.m, null
  br i1 %.not74, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.m) #30
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.w
  %.not75 = icmp eq ptr %i.i, null
  br i1 %.not75, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @free(ptr noundef nonnull %i.i) #30
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.by = tail call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  br i1 %.not86, label %.peel.begin, label %.preheader

.preheader:                                       ; preds = %bb.z, %bb.ab
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %bb.ab ], [ 0, %bb.z ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv127 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !89 ; 3 uses
  %.not80 = icmp eq ptr %i.ca, null
  br i1 %.not80, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.preheader
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !71 ; 2 uses
  %.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i, label %Vec_WrdFreeP.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.aa
  tail call void @free(ptr noundef nonnull %i.cc) #30
  br label %Vec_WrdFreeP.exit

Vec_WrdFreeP.exit:                                ; preds = %bb.aa, %.thread.i
  tail call void @free(ptr noundef nonnull %i.ca) #30
  store ptr null, ptr %i.bz, align 8, !tbaa !89
  br label %bb.ab

bb.ab:                                            ; preds = %.preheader, %Vec_WrdFreeP.exit
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond130.not = icmp eq i64 %indvars.iv.next128, 32
  br i1 %exitcond130.not, label %bb.ac, label %.preheader, !llvm.loop !351

bb.ac:                                            ; preds = %bb.ab
  tail call void @free(ptr noundef nonnull %i.g) #30
  br label %bb.an

.peel.begin:                                      ; preds = %bb.z
  %i.cd = sub nsw i32 %.sroa.0.094, %.sroa.8.091
  %i.ce = sitofp i32 %i.cd to double
  %i.cf = fmul nnan double %i.ce, 1.000000e+02
  %i.cg = tail call noundef i32 @llvm.smax.i32(i32 %.sroa.0.094, i32 1)
  %i.ch = uitofp nneg i32 %i.cg to double
  %i.ci = fdiv double %i.cf, %i.ch
  %i.cj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.82, i32 noundef %.06097, i32 noundef %.sroa.0.094, i32 noundef %.sroa.8.091, double noundef %i.ci) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %i.ck = load ptr, ptr %i.g, align 8, !tbaa !89  ; 5 uses
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.peel.next, label %bb.ad

bb.ad:                                            ; preds = %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.cm = tail call ptr @Extra_FileNameGeneric(ptr noundef %0) #30
  %i.cn = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef %i.cm, i32 noundef 0) #30 ; 0 uses
  call void @Vec_WrdWriteTruthHex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ck, i32 noundef 0)
  %i.co = getelementptr i8, ptr %i.ck, i64 4
  %.val.peel = load i32, ptr %i.co, align 4, !tbaa !84
  %i.cp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, i32 noundef 0, i32 noundef %.val.peel, ptr noundef nonnull %i.b) ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !71 ; 2 uses
  %.not.i81.peel = icmp eq ptr %i.cr, null
  br i1 %.not.i81.peel, label %Vec_WrdFreeP.exit83.peel, label %.thread.i82.peel

.thread.i82.peel:                                 ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.cr) #30
  br label %Vec_WrdFreeP.exit83.peel

Vec_WrdFreeP.exit83.peel:                         ; preds = %.thread.i82.peel, %bb.ad
  call void @free(ptr noundef nonnull %i.ck) #30
  store ptr null, ptr %i.g, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.begin, %Vec_WrdFreeP.exit83.peel
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !89 ; 5 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %.peel.next185, label %bb.ae

bb.ae:                                            ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.cv = call ptr @Extra_FileNameGeneric(ptr noundef %0) #30
  %i.cw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef %i.cv, i32 noundef 1) #30 ; 0 uses
  call void @Vec_WrdWriteTruthHex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ct, i32 noundef 1)
  %i.cx = getelementptr i8, ptr %i.ct, i64 4
  %.val.peel186 = load i32, ptr %i.cx, align 4, !tbaa !84
  %i.cy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, i32 noundef 1, i32 noundef %.val.peel186, ptr noundef nonnull %i.b) ; 0 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !71 ; 2 uses
  %.not.i81.peel187 = icmp eq ptr %i.da, null
  br i1 %.not.i81.peel187, label %Vec_WrdFreeP.exit83.peel189, label %.thread.i82.peel188

.thread.i82.peel188:                              ; preds = %bb.ae
  call void @free(ptr noundef nonnull %i.da) #30
  br label %Vec_WrdFreeP.exit83.peel189

Vec_WrdFreeP.exit83.peel189:                      ; preds = %.thread.i82.peel188, %bb.ae
  call void @free(ptr noundef nonnull %i.ct) #30
  store ptr null, ptr %i.cs, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.peel.next185

.peel.next185:                                    ; preds = %.peel.next, %Vec_WrdFreeP.exit83.peel189
  %i.db = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !89 ; 5 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %.peel.next192, label %bb.af

bb.af:                                            ; preds = %.peel.next185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.de = call ptr @Extra_FileNameGeneric(ptr noundef %0) #30
  %i.df = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef %i.de, i32 noundef 2) #30 ; 0 uses
  call void @Vec_WrdWriteTruthHex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.dc, i32 noundef 2)
  %i.dg = getelementptr i8, ptr %i.dc, i64 4
  %.val.peel193 = load i32, ptr %i.dg, align 4, !tbaa !84
  %i.dh = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, i32 noundef 2, i32 noundef %.val.peel193, ptr noundef nonnull %i.b) ; 0 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !71 ; 2 uses
  %.not.i81.peel194 = icmp eq ptr %i.dj, null
  br i1 %.not.i81.peel194, label %Vec_WrdFreeP.exit83.peel196, label %.thread.i82.peel195

.thread.i82.peel195:                              ; preds = %bb.af
  call void @free(ptr noundef nonnull %i.dj) #30
  br label %Vec_WrdFreeP.exit83.peel196

Vec_WrdFreeP.exit83.peel196:                      ; preds = %.thread.i82.peel195, %bb.af
  call void @free(ptr noundef nonnull %i.dc) #30
  store ptr null, ptr %i.db, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.peel.next192

.peel.next192:                                    ; preds = %.peel.next185, %Vec_WrdFreeP.exit83.peel196
  %i.dk = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !89 ; 5 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %.peel.next199, label %bb.ag

bb.ag:                                            ; preds = %.peel.next192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.dn = call ptr @Extra_FileNameGeneric(ptr noundef %0) #30
  %i.do = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef %i.dn, i32 noundef 3) #30 ; 0 uses
  call void @Vec_WrdWriteTruthHex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.dl, i32 noundef 3)
  %i.dp = getelementptr i8, ptr %i.dl, i64 4
  %.val.peel200 = load i32, ptr %i.dp, align 4, !tbaa !84
  %i.dq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, i32 noundef 3, i32 noundef %.val.peel200, ptr noundef nonnull %i.b) ; 0 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !71 ; 2 uses
  %.not.i81.peel201 = icmp eq ptr %i.ds, null
  br i1 %.not.i81.peel201, label %Vec_WrdFreeP.exit83.peel203, label %.thread.i82.peel202

.thread.i82.peel202:                              ; preds = %bb.ag
  call void @free(ptr noundef nonnull %i.ds) #30
  br label %Vec_WrdFreeP.exit83.peel203

Vec_WrdFreeP.exit83.peel203:                      ; preds = %.thread.i82.peel202, %bb.ag
  call void @free(ptr noundef nonnull %i.dl) #30
  store ptr null, ptr %i.dk, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.peel.next199

.peel.next199:                                    ; preds = %.peel.next192, %Vec_WrdFreeP.exit83.peel203
  %i.dt = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !89 ; 5 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %.peel.next206, label %bb.ah

bb.ah:                                            ; preds = %.peel.next199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.dw = call ptr @Extra_FileNameGeneric(ptr noundef %0) #30
  %i.dx = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef %i.dw, i32 noundef 4) #30 ; 0 uses
  call void @Vec_WrdWriteTruthHex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.du, i32 noundef 4)
  %i.dy = getelementptr i8, ptr %i.du, i64 4
  %.val.peel207 = load i32, ptr %i.dy, align 4, !tbaa !84
  %i.dz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, i32 noundef 4, i32 noundef %.val.peel207, ptr noundef nonnull %i.b) ; 0 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !71 ; 2 uses
  %.not.i81.peel208 = icmp eq ptr %i.eb, null
  br i1 %.not.i81.peel208, label %Vec_WrdFreeP.exit83.peel210, label %.thread.i82.peel209

.thread.i82.peel209:                              ; preds = %bb.ah
  call void @free(ptr noundef nonnull %i.eb) #30
  br label %Vec_WrdFreeP.exit83.peel210

Vec_WrdFreeP.exit83.peel210:                      ; preds = %.thread.i82.peel209, %bb.ah
  call void @free(ptr noundef nonnull %i.du) #30
  store ptr null, ptr %i.dt, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.peel.next206

.peel.next206:                                    ; preds = %.peel.next199, %Vec_WrdFreeP.exit83.peel210
  %i.ec = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !89 ; 5 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %.peel.next213, label %bb.ai

bb.ai:                                            ; preds = %.peel.next206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.ef = call ptr @Extra_FileNameGeneric(ptr noundef %0) #30
  %i.eg = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef %i.ef, i32 noundef 5) #30 ; 0 uses
  call void @Vec_WrdWriteTruthHex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ed, i32 noundef 5)
  %i.eh = getelementptr i8, ptr %i.ed, i64 4
  %.val.peel214 = load i32, ptr %i.eh, align 4, !tbaa !84
  %i.ei = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, i32 noundef 5, i32 noundef %.val.peel214, ptr noundef nonnull %i.b) ; 0 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !71 ; 2 uses
  %.not.i81.peel215 = icmp eq ptr %i.ek, null
  br i1 %.not.i81.peel215, label %Vec_WrdFreeP.exit83.peel217, label %.thread.i82.peel216

.thread.i82.peel216:                              ; preds = %bb.ai
  call void @free(ptr noundef nonnull %i.ek) #30
  br label %Vec_WrdFreeP.exit83.peel217

Vec_WrdFreeP.exit83.peel217:                      ; preds = %.thread.i82.peel216, %bb.ai
  call void @free(ptr noundef nonnull %i.ed) #30
  store ptr null, ptr %i.ec, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.peel.next213

.peel.next213:                                    ; preds = %.peel.next206, %Vec_WrdFreeP.exit83.peel217
  %i.el = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !89 ; 5 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %.peel.newph, label %bb.aj

bb.aj:                                            ; preds = %.peel.next213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.eo = call ptr @Extra_FileNameGeneric(ptr noundef %0) #30
  %i.ep = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef %i.eo, i32 noundef 6) #30 ; 0 uses
  call void @Vec_WrdWriteTruthHex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.em, i32 noundef 6)
  %i.eq = getelementptr i8, ptr %i.em, i64 4
  %.val.peel221 = load i32, ptr %i.eq, align 4, !tbaa !84
  %i.er = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, i32 noundef 6, i32 noundef %.val.peel221, ptr noundef nonnull %i.b) ; 0 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !71 ; 2 uses
  %.not.i81.peel222 = icmp eq ptr %i.et, null
  br i1 %.not.i81.peel222, label %Vec_WrdFreeP.exit83.peel224, label %.thread.i82.peel223

.thread.i82.peel223:                              ; preds = %bb.aj
  call void @free(ptr noundef nonnull %i.et) #30
  br label %Vec_WrdFreeP.exit83.peel224

Vec_WrdFreeP.exit83.peel224:                      ; preds = %.thread.i82.peel223, %bb.aj
  call void @free(ptr noundef nonnull %i.em) #30
  store ptr null, ptr %i.el, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %.peel.newph

.peel.newph:                                      ; preds = %.peel.next213, %Vec_WrdFreeP.exit83.peel224
  br label %bb.ak

bb.ak:                                            ; preds = %.peel.newph, %bb.am
  %indvars.iv131 = phi i64 [ %indvars.iv.next132, %bb.am ], [ 7, %.peel.newph ] ; 4 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv131 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !89 ; 5 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.ex = call ptr @Extra_FileNameGeneric(ptr noundef %0) #30
  %i.ey = trunc nuw nsw i64 %indvars.iv131 to i32 ; 3 uses
  %i.ez = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) @.str.84, ptr noundef %i.ex, i32 noundef %i.ey) #30 ; 0 uses
  call void @Vec_WrdWriteTruthHex(ptr noundef nonnull %i.b, ptr noundef nonnull %i.ev, i32 noundef %i.ey)
  %i.fa = getelementptr i8, ptr %i.ev, i64 4
  %.val = load i32, ptr %i.fa, align 4, !tbaa !84
  %i.fb = trunc i64 %indvars.iv131 to i32
  %i.fc = add i32 %i.fb, -6
  %i.fd = shl nuw nsw i32 1, %i.fc
  %i.fe = sdiv i32 %.val, %i.fd
  %i.ff = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, i32 noundef %i.ey, i32 noundef %i.fe, ptr noundef nonnull %i.b) ; 0 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !71 ; 2 uses
  %.not.i81 = icmp eq ptr %i.fh, null
  br i1 %.not.i81, label %Vec_WrdFreeP.exit83, label %.thread.i82

.thread.i82:                                      ; preds = %bb.al
  call void @free(ptr noundef nonnull %i.fh) #30
  br label %Vec_WrdFreeP.exit83

Vec_WrdFreeP.exit83:                              ; preds = %bb.al, %.thread.i82
  call void @free(ptr noundef nonnull %i.ev) #30
  store ptr null, ptr %i.eu, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %Vec_WrdFreeP.exit83
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next132, 32
  br i1 %exitcond134.not, label %.loopexit228, label %bb.ak, !llvm.loop !352

.loopexit228:                                     ; preds = %bb.am
  call void @free(ptr noundef nonnull %i.g) #30
  br label %bb.an

bb.an:                                            ; preds = %.loopexit228, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_NtkRandFile(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 7                       ; 2 uses
  %i.b = add nsw i32 %1, -6                       ; 2 uses
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c          ; 2 uses
  %i.e = select i1 %i.a, i32 0, i32 %i.b          ; 3 uses
  %i.f = shl i32 %2, %i.e                         ; 4 uses
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #31 ; 7 uses
  %i.h = add i32 %i.f, -1
  %or.cond.i.i = icmp ult i32 %i.h, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.f ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.g, align 8, !tbaa !83
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_WrdStart.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = sext i32 %spec.store.select.i.i to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #31
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.n, align 8, !tbaa !71
  store i32 %i.f, ptr %i.m, align 4, !tbaa !84
  %i.o = sext i32 %i.f to i64
  %i.p = shl nsw i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.l, i8 0, i64 %i.p, i1 false)
  %i.q = tail call i32 @Abc_Random(i32 noundef 1) #30 ; 0 uses
  %i.r = icmp sgt i32 %2, 0
  br i1 %i.r, label %.lr.ph48, label %._crit_edge

.lr.ph48:                                         ; preds = %Vec_WrdStart.exit
  %i.s = icmp eq i32 %3, 0
  %notmask = shl nsw i32 -1, %1
  %i.t = xor i32 %notmask, -1
  br i1 %i.s, label %.lr.ph48.split.us, label %.lr.ph48.split

.lr.ph48.split.us:                                ; preds = %.lr.ph48
  %i.u = icmp sgt i32 %i.d, 0
  br i1 %i.u, label %.preheader39.us.preheader, label %._crit_edge.thread63

._crit_edge.thread63:                             ; preds = %.lr.ph48.split.us
  tail call void @Vec_WrdWriteTruthHex(ptr noundef %0, ptr noundef nonnull %i.g, i32 noundef %1)
  br label %bb.g

.preheader39.us.preheader:                        ; preds = %.lr.ph48.split.us
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %.preheader39.us

.preheader39.us:                                  ; preds = %.preheader39.us.preheader, %..loopexit_crit_edge.us
  %.03447.us = phi i32 [ %i.aa, %..loopexit_crit_edge.us ], [ 0, %.preheader39.us.preheader ] ; 2 uses
  %i.v = shl i32 %.03447.us, %i.e
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.w
  br label %bb.c

bb.c:                                             ; preds = %.preheader39.us, %bb.c
  %indvars.iv = phi i64 [ 0, %.preheader39.us ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.y = tail call i64 @Abc_RandomW(i32 noundef 0) #30
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  store i64 %i.y, ptr %i.z, align 8, !tbaa !72
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond54.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond54.not, label %..loopexit_crit_edge.us, label %bb.c, !llvm.loop !354

..loopexit_crit_edge.us:                          ; preds = %bb.c
  %i.aa = add nuw nsw i32 %.03447.us, 1           ; 2 uses
  %exitcond55.not = icmp eq i32 %i.aa, %2
  br i1 %exitcond55.not, label %._crit_edge, label %.preheader39.us, !llvm.loop !355

.lr.ph48.split:                                   ; preds = %.lr.ph48
  %i.ab = icmp sgt i32 %3, 0
  br i1 %i.ab, label %.preheader40, label %._crit_edge.thread

.preheader40:                                     ; preds = %.lr.ph48.split, %..loopexit41_crit_edge
  %.03447 = phi i32 [ %i.as, %..loopexit41_crit_edge ], [ 0, %.lr.ph48.split ] ; 2 uses
  %i.ac = shl i32 %.03447, %i.e
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.ad ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader40, %bb.e
  %.145 = phi i32 [ 0, %.preheader40 ], [ %i.ar, %bb.e ]
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %i.af = tail call i32 @Abc_Random(i32 noundef 0) #30
  %i.ag = and i32 %i.af, %i.t                     ; 2 uses
  %i.ah = lshr i32 %i.ag, 6
  %i.ai = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !72 ; 2 uses
  %i.al = and i32 %i.ag, 63
  %i.am = zext nneg i32 %i.al to i64
  %i.an = shl nuw i64 1, %i.am                    ; 2 uses
  %i.ao = and i64 %i.an, %i.ak
  %.not38 = icmp eq i64 %i.ao, 0
  br i1 %.not38, label %bb.e, label %bb.d, !llvm.loop !356

bb.e:                                             ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ai
  %i.aq = or i64 %i.an, %i.ak
  store i64 %i.aq, ptr %i.ap, align 8, !tbaa !72
  %i.ar = add nuw nsw i32 %.145, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, %3
  br i1 %exitcond.not, label %..loopexit41_crit_edge, label %.preheader, !llvm.loop !357

..loopexit41_crit_edge:                           ; preds = %bb.e
  %i.as = add nuw nsw i32 %.03447, 1              ; 2 uses
  %exitcond52.not = icmp eq i32 %i.as, %2
  br i1 %exitcond52.not, label %._crit_edge.thread, label %.preheader40, !llvm.loop !355

._crit_edge.thread:                               ; preds = %..loopexit41_crit_edge, %.lr.ph48.split
  tail call void @Vec_WrdWriteTruthHex(ptr noundef %0, ptr noundef nonnull %i.g, i32 noundef %1)
  br label %bb.f

._crit_edge:                                      ; preds = %..loopexit_crit_edge.us, %Vec_WrdStart.exit
  tail call void @Vec_WrdWriteTruthHex(ptr noundef %0, ptr noundef nonnull %i.g, i32 noundef %1)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.at = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86, i32 noundef %2, i32 noundef %1, i32 noundef %3, ptr noundef %0) ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge.thread63, %._crit_edge
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.87, i32 noundef %2, i32 noundef %1, ptr noundef %0) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %Vec_WrdFree.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.l) #30
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %bb.h, %bb.i
  tail call void @free(ptr noundef nonnull %i.g) #30
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_LutCascadeDumpVerilog(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.64) ; 75 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
end_hunk_0
