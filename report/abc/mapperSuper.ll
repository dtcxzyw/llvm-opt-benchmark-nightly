Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/mapperSuper?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot open input file \22%s\22.\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%5d : \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%5d   \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"A = %5.2f   \00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"D = %5.2f/%5.2f/%5.2f   \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" \09\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"GATE\00", align 1
@.str.10 = private unnamed_addr constant [80 x i8] c"The input file \22%s\22 looks like a genlib file and not a supergate library file.\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Cannot open the genlib file \22%s\22.\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"Cannot read genlib file \22%s\22.\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Suspicious number of variables (%d).\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Suspicious number of gates (%d).\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [69 x i8] c"The number of gates read (%d) is different what the file says (%d).\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c" \0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c" \0A\00\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"The following trailing symbols found \22%s\22.\0A\00", align 1
@str = private unnamed_addr constant [22 x i8] c"A gate name is empty.\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Map_LibraryRead(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5000 x i8], align 16             ; 11 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [2 x i32], align 4                ; 4 uses
  %i.d = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 9 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %1) ; 0 uses
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.g = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 2000, ptr noundef nonnull %i.d)
  %.not78.i = icmp eq ptr %i.g, null
  br i1 %.not78.i, label %.loopexit73.i, label %.preheader72.i

.preheader72.i:                                   ; preds = %bb.c, %.preheader72.i.backedge
  %.1.i = phi ptr [ %.1.i.be, %.preheader72.i.backedge ], [ %i.a, %bb.c ] ; 4 uses
  %i.h = load i8, ptr %.1.i, align 1, !tbaa !8
  switch i8 %i.h, label %.loopexit73.i [
    i8 32, label %.critedge.i
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
    i8 0, label %bb.d
    i8 35, label %bb.d
  ]

.critedge.i:                                      ; preds = %.preheader72.i, %.preheader72.i, %.preheader72.i
  %i.i = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %.preheader72.i.backedge

.preheader72.i.backedge:                          ; preds = %.critedge.i, %bb.d
  %.1.i.be = phi ptr [ %i.i, %.critedge.i ], [ %i.a, %bb.d ]
  br label %.preheader72.i

bb.d:                                             ; preds = %.preheader72.i, %.preheader72.i
  %i.j = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 2000, ptr noundef nonnull %i.d)
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %.loopexit73.i, label %.preheader72.i.backedge

.loopexit73.i:                                    ; preds = %bb.d, %.preheader72.i, %bb.c
  %.2.i = phi ptr [ null, %bb.c ], [ %.1.i, %.preheader72.i ], [ %.1.i, %bb.d ]
  %i.k = call ptr @strtok(ptr noundef %.2.i, ptr noundef nonnull @.str.8) #11 ; 5 uses
  %i.l = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(5) @.str.9) #12
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.loopexit73.i
  %i.n = load ptr, ptr %0, align 8, !tbaa !35
  %i.o = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, ptr noundef %i.n) ; 0 uses
  br label %Map_LibraryReadFile.exit

bb.f:                                             ; preds = %.loopexit73.i
  %i.p = call noalias ptr @fopen(ptr noundef nonnull %i.k, ptr noundef nonnull @.str) ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef nonnull %i.k) ; 0 uses
  br label %Map_LibraryReadFile.exit

bb.h:                                             ; preds = %bb.f
  %i.s = call i32 @fclose(ptr noundef nonnull %i.p) ; 0 uses
  %i.t = call ptr @Mio_LibraryRead(ptr noundef nonnull %i.k, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0) #11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !36
  %i.v = icmp eq ptr %i.t, null
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %i.k) ; 0 uses
  br label %Map_LibraryReadFile.exit

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.y = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.x) #11 ; 0 uses
  %i.z = load i32, ptr %i.x, align 8, !tbaa !37   ; 2 uses
  %i.aa = add i32 %i.z, -11
  %or.cond70.i = icmp ult i32 %i.aa, -9
  br i1 %or.cond70.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %i.z) ; 0 uses
  br label %Map_LibraryReadFile.exit

bb.l:                                             ; preds = %bb.j
  %i.ac = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !15  ; 3 uses
  %i.ae = add i32 %i.ad, -10000001
  %or.cond.i = icmp ult i32 %i.ae, -10000000
  br i1 %or.cond.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i32 noundef %i.ad) ; 0 uses
  br label %Map_LibraryReadFile.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = load ptr, ptr @stdout, align 8, !tbaa !39
  %i.ah = call ptr @Extra_ProgressBarStart(ptr noundef %i.ag, i32 noundef %i.ad) #11 ; 4 uses
  %i.ai = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 5000, ptr noundef nonnull %i.d)
  %.not677985.i = icmp eq ptr %i.ai, null
  br i1 %.not677985.i, label %.outer._crit_edge.i, label %.preheader.lr.ph.lr.ph.i

.preheader.lr.ph.lr.ph.i:                         ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.not.i71.i = icmp eq ptr %i.ah, null
  br label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %Extra_ProgressBarUpdate.exit.i, %.preheader.lr.ph.lr.ph.i
  %.0.ph86.i = phi i32 [ 0, %.preheader.lr.ph.lr.ph.i ], [ %i.df, %Extra_ProgressBarUpdate.exit.i ] ; 2 uses
  br label %.preheader.i

.loopexit.i:                                      ; preds = %.preheader.i
  %i.an = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 5000, ptr noundef nonnull %i.d)
  %.not67.i = icmp eq ptr %i.an, null
  br i1 %.not67.i, label %.outer._crit_edge.i, label %.preheader.i.backedge

.preheader.i:                                     ; preds = %.preheader.i.backedge, %.preheader.lr.ph.i
  %.3.i = phi ptr [ %i.a, %.preheader.lr.ph.i ], [ %.3.i.be, %.preheader.i.backedge ] ; 3 uses
  %i.ao = load i8, ptr %.3.i, align 1, !tbaa !8
  switch i8 %i.ao, label %bb.o [
    i8 32, label %.critedge3.i
    i8 13, label %.critedge3.i
    i8 10, label %.critedge3.i
    i8 0, label %.loopexit.i
  ]

.critedge3.i:                                     ; preds = %.preheader.i, %.preheader.i, %.preheader.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.3.i, i64 1
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %.critedge3.i, %.loopexit.i
  %.3.i.be = phi ptr [ %i.ap, %.critedge3.i ], [ %i.a, %.loopexit.i ]
  br label %.preheader.i

bb.o:                                             ; preds = %.preheader.i
  %i.aq = load i32, ptr %i.x, align 8, !tbaa !37  ; 2 uses
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.as = call ptr @Extra_MmFixedEntryFetch(ptr noundef %i.ar) #11 ; 16 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.as, i8 0, i64 256, i1 false)
  %i.at = call ptr @strtok(ptr noundef nonnull %.3.i, ptr noundef nonnull @.str.17) #11
  %i.au = call i64 @strtol(ptr noundef nonnull captures(none) %i.at, ptr noundef null, i32 noundef 10) #11, !inline_history !23
  %i.av = trunc i64 %i.au to i32
  store i32 %i.av, ptr %i.as, align 8, !tbaa !17
  %i.aw = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.17) #11 ; 3 uses
  %i.ax = load i32, ptr %i.x, align 8, !tbaa !37
  %i.ay = icmp slt i32 %i.ax, 6
  br i1 %i.ay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.az = call i32 @Extra_ReadBinary(ptr noundef %i.aw) #11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !15
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 32 ; 2 uses
  %i.bc = call i32 @Extra_ReadBinary(ptr noundef nonnull %i.bb) #11
  %i.bd = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !15
  store i8 0, ptr %i.bb, align 1, !tbaa !8
  %i.be = call i32 @Extra_ReadBinary(ptr noundef %i.aw) #11
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sink.i.i = phi i32 [ 0, %bb.p ], [ %i.be, %bb.q ]
  %2 = getelementptr inbounds nuw i8, ptr %i.as, i64 76
  store i32 %.sink.i.i, ptr %2, align 4, !tbaa !15
  %i.bf = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.17) #11
  %i.bg = call double @strtod(ptr noundef nonnull captures(none) %i.bf, ptr noundef null) #11, !inline_history !24
  %i.bh = fptrunc double %i.bg to float           ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 224
  store float %i.bh, ptr %i.bi, align 8, !tbaa !18
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 228
  store float %i.bh, ptr %i.bj, align 4, !tbaa !19
  %i.bk = icmp sgt i32 %i.aq, 0
  br i1 %i.bk, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %wide.trip.count.i.i = zext nneg i32 %i.aq to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.s ] ; 3 uses
  %i.bm = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.17) #11
  %i.bn = call double @strtod(ptr noundef nonnull captures(none) %i.bm, ptr noundef null) #11, !inline_history !24
  %i.bo = fptrunc double %i.bn to float           ; 2 uses
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %i.bl, i64 %indvars.iv.i.i
  store float %i.bo, ptr %i.bp, align 4, !tbaa !41
  %i.bq = getelementptr inbounds nuw [12 x i8], ptr %i.as, i64 %indvars.iv.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 156
  store float %i.bo, ptr %i.br, align 4, !tbaa !42
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.s, !llvm.loop !25

._crit_edge.i.i:                                  ; preds = %bb.s, %bb.r
  %i.bs = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.17) #11
  %i.bt = call double @strtod(ptr noundef nonnull captures(none) %i.bs, ptr noundef null) #11, !inline_history !24
  %i.bu = fptrunc double %i.bt to float
  %i.bv = getelementptr inbounds nuw i8, ptr %i.as, i64 236
  store float %i.bu, ptr %i.bv, align 4, !tbaa !21
  %i.bw = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.18) #11 ; 3 uses
  %char0.i.i = load i8, ptr %i.bw, align 1
  %i.bx = icmp eq i8 %char0.i.i, 0
  br i1 %i.bx, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  %puts.i.i = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i
  %i.by = load ptr, ptr %i.ak, align 8, !tbaa !43
  %i.bz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bw) #12
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = add i32 %i.ca, 1
  %i.cc = call ptr @Extra_MmFlexEntryFetch(ptr noundef %i.by, i32 noundef %i.cb) #11 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.as, i64 240 ; 2 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !22
  %i.ce = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.cc, ptr noundef nonnull dereferenceable(1) %i.bw) #11 ; 0 uses
  %i.cf = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.20) #11 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i, label %Map_LibraryReadGate.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef nonnull %i.cf) ; 0 uses
  br label %Map_LibraryReadGate.exit.i

Map_LibraryReadGate.exit.i:                       ; preds = %bb.v, %bb.u
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !22 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !8   ; 2 uses
  %.not6982.i = icmp eq i8 %i.ci, 0
  br i1 %.not6982.i, label %._crit_edge84.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Map_LibraryReadGate.exit.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %.promoted.i = load i32, ptr %i.cj, align 4
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i
  %i.ck = phi i32 [ %.promoted.i, %.lr.ph.i ], [ %i.cr, %bb.w ] ; 2 uses
  %i.cl = phi i8 [ %i.ci, %.lr.ph.i ], [ %i.ct, %bb.w ]
  %.483.i = phi ptr [ %i.ch, %.lr.ph.i ], [ %i.cs, %bb.w ]
  %i.cm = icmp eq i8 %i.cl, 40
  %i.cn = select i1 %i.cm, i32 32, i32 0
  %i.co = add i32 %i.cn, %i.ck
  %i.cp = and i32 %i.co, 224
  %i.cq = and i32 %i.ck, -225
  %i.cr = or disjoint i32 %i.cp, %i.cq            ; 2 uses
  store i32 %i.cr, ptr %i.cj, align 4
  %i.cs = getelementptr inbounds nuw i8, ptr %.483.i, i64 1 ; 2 uses
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !8   ; 2 uses
  %.not69.i = icmp eq i8 %i.ct, 0
  br i1 %.not69.i, label %._crit_edge84.i, label %bb.w, !llvm.loop !26

._crit_edge84.i:                                  ; preds = %bb.w, %Map_LibraryReadGate.exit.i
  %i.cu = load i32, ptr %i.x, align 8, !tbaa !37  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.as, i64 72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.cx = call i32 @Map_CanonComputeSlow(ptr noundef nonnull %i.al, i32 noundef %i.cu, i32 noundef %i.cu, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.c) #11
  %i.cy = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = shl i32 %i.cx, 28
  %i.db = and i32 %i.cz, 268435455
  %i.dc = or disjoint i32 %i.db, %i.da
  store i32 %i.dc, ptr %i.cy, align 4
  %i.dd = load ptr, ptr %i.am, align 8, !tbaa !44
  %i.de = call i32 @Map_SuperTableInsertC(ptr noundef %i.dd, ptr noundef nonnull %i.c, ptr noundef nonnull %i.as) #11 ; 0 uses
  %i.df = add nuw nsw i32 %.0.ph86.i, 1           ; 4 uses
  br i1 %.not.i71.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge84.i
  %i.dg = load i32, ptr %i.ah, align 4, !tbaa !15
  %i.dh = icmp slt i32 %i.df, %i.dg
  br i1 %i.dh, label %Extra_ProgressBarUpdate.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge84.i
  call void @Extra_ProgressBarUpdate_int(ptr noundef %i.ah, i32 noundef range(i32 -2147483647, -2147483648) %i.df, ptr noundef null) #11
  br label %Extra_ProgressBarUpdate.exit.i

Extra_ProgressBarUpdate.exit.i:                   ; preds = %bb.y, %bb.x
  %i.di = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 5000, ptr noundef nonnull %i.d)
  %.not6779.i = icmp eq ptr %i.di, null
  br i1 %.not6779.i, label %.outer._crit_edge.i, label %.preheader.lr.ph.i, !llvm.loop !27

.outer._crit_edge.i:                              ; preds = %Extra_ProgressBarUpdate.exit.i, %.loopexit.i, %bb.n
  %.0.ph.lcssa.i = phi i32 [ %.0.ph86.i, %.loopexit.i ], [ 0, %bb.n ], [ %i.df, %Extra_ProgressBarUpdate.exit.i ] ; 3 uses
  call void @Extra_ProgressBarStop(ptr noundef %i.ah) #11
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.0.ph.lcssa.i, ptr %i.dj, align 4, !tbaa !45
  %i.dk = load i32, ptr %i.b, align 4, !tbaa !15  ; 2 uses
  %.not68.i = icmp eq i32 %.0.ph.lcssa.i, %i.dk
  br i1 %.not68.i, label %Map_LibraryReadFile.exit, label %bb.z

bb.z:                                             ; preds = %.outer._crit_edge.i
  %i.dl = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.dk, i32 noundef %.0.ph.lcssa.i) ; 0 uses
  br label %Map_LibraryReadFile.exit

Map_LibraryReadFile.exit:                         ; preds = %bb.e, %bb.g, %bb.i, %bb.k, %bb.m, %.outer._crit_edge.i, %bb.z
  %.057.i = phi i32 [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.k ], [ 0, %bb.m ], [ 1, %bb.z ], [ 1, %.outer._crit_edge.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.dm = call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %Map_LibraryReadFile.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %.057.i, %Map_LibraryReadFile.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @Map_LibraryReadFormulaStep(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.051 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]  ; 4 uses
  %i.a = load i8, ptr %.051, align 1, !tbaa !8    ; 2 uses
  %cond = icmp eq i8 %i.a, 32
  %i.b = getelementptr inbounds nuw i8, ptr %.051, i64 1
  br i1 %cond, label %bb.b, label %.critedge, !llvm.loop !46

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.c = phi i8 [ %.pr, %bb.c ], [ %i.a, %bb.b ]
  %.050 = phi ptr [ %i.d, %bb.c ], [ %.051, %bb.b ] ; 4 uses
  switch i8 %i.c, label %bb.c [
    i8 0, label %.critedge4.thread
    i8 40, label %bb.d
  ]

bb.c:                                             ; preds = %.critedge
  %i.d = getelementptr inbounds nuw i8, ptr %.050, i64 1 ; 2 uses
  %.pr = load i8, ptr %i.d, align 1, !tbaa !8
  br label %.critedge, !llvm.loop !47

bb.d:                                             ; preds = %.critedge
  store i8 0, ptr %.050, align 1, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %.050, i64 1 ; 5 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8     ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.g = phi i8 [ %i.k, %bb.g ], [ %i.f, %bb.d ]
  %.068 = phi i32 [ %.1, %bb.g ], [ 1, %bb.d ]    ; 3 uses
  %.04967 = phi ptr [ %i.j, %bb.g ], [ %i.e, %bb.d ] ; 2 uses
  switch i8 %i.g, label %bb.g [
    i8 40, label %bb.e
    i8 41, label %bb.f
  ]

end_hunk_0
