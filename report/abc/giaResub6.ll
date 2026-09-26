Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaResub6?download=true
inline.NumInlined: 131
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot open input file \22%s\22.\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Cannot read the header line of input file \22%s\22.\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"%s %d %d %d %d\00", align 1
@.str.4 = private unnamed_addr constant [64 x i8] c"Cannot read the parameters from the header of input file \22%s\22.\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Cannot read line %d of input file \22%s\22.\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Cannot open output file \22%s\22.\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"resyn %d %d %d %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Problem:   In = %d  Div = %d  Out  = %d  Pat = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"%02d : %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"const0\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"const1\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%02d : \00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"Solution:  In = %d  Div = %d  Node = %d  Out = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"x%-2d = \00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"  %c \00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Div = %d  Cost = %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"Verification FAILED with %d errors on %d patterns.\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c".sol\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"Cannot open file \22%s\22 for reading.\0A\00", align 1
@.str.26 = private unnamed_addr constant [83 x i8] c"The number of lines in the file (%d) does not match the number listed in .p (%d).\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c" \0D\0A\09\00", align 1
@.str.28 = private unnamed_addr constant [80 x i8] c"Several (%d) don't-care literals in the input part are replaced by zeros \22%s\22 \0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@str.1 = private unnamed_addr constant [25 x i8] c"Verification successful.\00", align 1

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Res6_ManReadPla(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) ; 4 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %Abc_ReadPla.exit.thread, label %bb.b

Abc_ReadPla.exit.thread:                          ; preds = %bb.a
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias dereferenceable_or_null(1000000) ptr @malloc(i64 noundef 1000000) #21 ; 6 uses
  store i32 0, ptr %i.c, align 4, !tbaa !8
  store i32 0, ptr %i.b, align 4, !tbaa !8
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %i.h = tail call ptr @fgets(ptr noundef %i.g, i32 noundef 1000000, ptr noundef nonnull %i.d)
  %.not41.i.i = icmp eq ptr %i.h, null
  br i1 %.not41.i.i, label %._crit_edge.i.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  br label %bb.c

bb.c:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i
  %.042.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.o, %.backedge.i.i ]
  %i.k = load i8, ptr %i.g, align 1, !tbaa !9     ; 3 uses
  %i.l = and i8 %i.k, -2
  %switch.i.i = icmp eq i8 %i.l, 48
  %i.m = icmp eq i8 %i.k, 45
  %narrow.i.i = or i1 %i.m, %switch.i.i
  %i.n = zext i1 %narrow.i.i to i32
  %i.o = add nuw nsw i32 %.042.i.i, %i.n          ; 4 uses
  %.not39.i.i = icmp eq i8 %i.k, 46
  br i1 %.not39.i.i, label %bb.d, label %.backedge.i.i

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.i, align 1, !tbaa !9
  switch i8 %i.p, label %.backedge.i.i [
    i8 105, label %.backedge.sink.split.i.i
    i8 111, label %bb.e
    i8 112, label %bb.f
    i8 101, label %._crit_edge.i.i
  ]

bb.e:                                             ; preds = %bb.d
  br label %.backedge.sink.split.i.i

bb.f:                                             ; preds = %bb.d
  br label %.backedge.sink.split.i.i

.backedge.sink.split.i.i:                         ; preds = %bb.f, %bb.e, %bb.d
  %.sink46.i.i = phi ptr [ %i.b, %bb.e ], [ %i.c, %bb.f ], [ %i.a, %bb.d ]
  %i.q = tail call i64 @strtol(ptr noundef nonnull captures(none) %i.j, ptr noundef null, i32 noundef 10) #22
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %.sink46.i.i, align 4, !tbaa !8
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.backedge.sink.split.i.i, %bb.d, %bb.c
  %i.s = tail call ptr @fgets(ptr noundef nonnull %i.g, i32 noundef 1000000, ptr noundef nonnull %i.d)
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.c, !llvm.loop !38

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.d
  %.0..0..0..0..0.11.pr.i = load i32, ptr %i.c, align 4, !tbaa !8 ; 4 uses
  %i.t = icmp eq i32 %.0..0..0..0..0.11.pr.i, 0
  %.not40.i.i = icmp eq i32 %.0..0..0..0..0.11.pr.i, %i.o
  %or.cond.i = select i1 %i.t, i1 true, i1 %.not40.i.i
  br i1 %or.cond.i, label %._crit_edge.i.thread.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %i.o, i32 noundef %.0..0..0..0..0.11.pr.i) ; 0 uses
  br label %._crit_edge.i.thread.i

._crit_edge.i.thread.i:                           ; preds = %bb.g, %._crit_edge.i.i, %bb.b
  %.0..0..i = phi i32 [ %.0..0..0..0..0.11.pr.i, %bb.g ], [ 0, %bb.b ], [ %i.o, %._crit_edge.i.i ] ; 5 uses
  %i.v = tail call i32 @fclose(ptr noundef nonnull %i.d) ; 0 uses
  tail call void @free(ptr noundef %i.g) #22
  %.0..0..0..0..0.13.i = load i32, ptr %i.a, align 4, !tbaa !8 ; 5 uses
  %.0..0..0..0..0.12.i = load i32, ptr %i.b, align 4, !tbaa !8 ; 5 uses
  %i.w = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #23 ; 12 uses
  store i32 %.0..0..0..0..0.13.i, ptr %i.w, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4 ; 2 uses
  store i32 %.0..0..0..0..0.12.i, ptr %i.x, align 4, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store i32 %.0..0..i, ptr %i.y, align 8, !tbaa !61
  %i.z = ashr i32 %.0..0..i, 6
  %i.aa = and i32 %.0..0..i, 63
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = add nsw i32 %i.z, %i.ac                 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 12 ; 6 uses
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !62
  %i.af = mul nsw i32 %i.ad, %.0..0..0..0..0.13.i ; 4 uses
  %i.ag = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.ah = add i32 %i.af, -1
  %or.cond.i.i.i.i = icmp ult i32 %i.ah, 15
  %spec.store.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 16, i32 %i.af ; 3 uses
  store i32 %spec.store.select.i.i.i.i, ptr %i.ag, align 8, !tbaa !14
  %.not.i.i.i.i = icmp eq i32 %spec.store.select.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %Vec_WrdStart.exit.i.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.thread.i
  %i.ai = sext i32 %spec.store.select.i.i.i.i to i64
  %i.aj = shl nsw i64 %i.ai, 3
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #21
  br label %Vec_WrdStart.exit.i.i

Vec_WrdStart.exit.i.i:                            ; preds = %bb.h, %._crit_edge.i.thread.i
  %i.al = phi ptr [ %i.ak, %bb.h ], [ null, %._crit_edge.i.thread.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.an = getelementptr i8, ptr %i.ag, i64 8      ; 2 uses
  store ptr %i.al, ptr %i.an, align 8, !tbaa !15
  store i32 %i.af, ptr %i.am, align 4, !tbaa !16
  %i.ao = sext i32 %i.af to i64
  %i.ap = shl nsw i64 %i.ao, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.al, i8 0, i64 %i.ap, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  store ptr %i.ag, ptr %i.aq, align 8, !tbaa !63
  %i.ar = shl nsw i32 %.0..0..0..0..0.12.i, 1
  %i.as = mul nsw i32 %i.ar, %i.ad                ; 4 uses
  %i.at = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 4 uses
  %i.au = add i32 %i.as, -1
  %or.cond.i.i16.i.i = icmp ult i32 %i.au, 15
  %spec.store.select.i.i17.i.i = select i1 %or.cond.i.i16.i.i, i32 16, i32 %i.as ; 3 uses
  store i32 %spec.store.select.i.i17.i.i, ptr %i.at, align 8, !tbaa !14
  %.not.i.i18.i.i = icmp eq i32 %spec.store.select.i.i17.i.i, 0
  br i1 %.not.i.i18.i.i, label %Abc_RDataStart.exit.i, label %bb.i

bb.i:                                             ; preds = %Vec_WrdStart.exit.i.i
  %i.av = sext i32 %spec.store.select.i.i17.i.i to i64
  %i.aw = shl nsw i64 %i.av, 3
  %i.ax = tail call noalias ptr @malloc(i64 noundef %i.aw) #21
  br label %Abc_RDataStart.exit.i

Abc_RDataStart.exit.i:                            ; preds = %bb.i, %Vec_WrdStart.exit.i.i
  %i.ay = phi ptr [ %i.ax, %bb.i ], [ null, %Vec_WrdStart.exit.i.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.ba = getelementptr i8, ptr %i.at, i64 8      ; 2 uses
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !15
  store i32 %i.as, ptr %i.az, align 4, !tbaa !16
  %i.bb = sext i32 %i.as to i64
  %i.bc = shl nsw i64 %i.bb, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ay, i8 0, i64 %i.bc, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 4 uses
  store ptr %i.at, ptr %i.bd, align 8, !tbaa !64
  %i.be = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 4      ; 3 uses
  store i32 0, ptr %i.bf, align 4, !tbaa !19
  store i32 16, ptr %i.be, align 8, !tbaa !20
  %i.bg = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  %i.bh = getelementptr i8, ptr %i.be, i64 8      ; 3 uses
  store ptr %i.bg, ptr %i.bh, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.be, ptr %i.bi, align 8, !tbaa !65
  %i.bj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  store i32 0, ptr %i.bk, align 4, !tbaa !19
  store i32 16, ptr %i.bj, align 8, !tbaa !20
  %i.bl = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  store ptr %i.bj, ptr %i.bn, align 8, !tbaa !66
  %i.bo = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str) ; 5 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %Abc_ReadPla.exit.thread92, label %bb.j

Abc_ReadPla.exit.thread92:                        ; preds = %Abc_RDataStart.exit.i
  %i.bq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ah

bb.j:                                             ; preds = %Abc_RDataStart.exit.i
  %i.br = add i32 %.0..0..0..0..0.13.i, 10000
  %i.bs = add i32 %i.br, %.0..0..0..0..0.12.i     ; 3 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = tail call noalias ptr @malloc(i64 noundef %i.bt) #21 ; 9 uses
  %i.bv = tail call ptr @fgets(ptr noundef %i.bu, i32 noundef %i.bs, ptr noundef nonnull %i.bo)
  %.not85.i.i = icmp eq ptr %i.bv, null
  br i1 %.not85.i.i, label %bb.ag, label %.lr.ph89.i.i

.lr.ph89.i.i:                                     ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  br label %bb.k

bb.k:                                             ; preds = %.backedge.i9.i, %.lr.ph89.i.i
  %.05987.i.i = phi i32 [ 0, %.lr.ph89.i.i ], [ %.3.i.i, %.backedge.i9.i ] ; 2 uses
  %.06086.i.i = phi i32 [ 0, %.lr.ph89.i.i ], [ %.161.i.i, %.backedge.i9.i ] ; 4 uses
end_hunk_0
begin_hunk_1_@Res6_FindBestEvalPla:bb.a
vector.body202:                                   ; preds = %vector.body202, %vector.ph200
  %index203 = phi i64 [ 0, %vector.ph200 ], [ %index.next213, %vector.body202 ] ; 5 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph200 ], [ %i.lm, %vector.body202 ]
  %vec.phi204 = phi <2 x i32> [ zeroinitializer, %vector.ph200 ], [ %i.ln, %vector.body202 ]
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %index203 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %wide.load205 = load <2 x i64>, ptr %i.ku, align 8, !tbaa !29
  %wide.load206 = load <2 x i64>, ptr %i.kv, align 8, !tbaa !29
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %index203 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 16
  %wide.load207 = load <2 x i64>, ptr %i.kw, align 8, !tbaa !29
  %wide.load208 = load <2 x i64>, ptr %i.kx, align 8, !tbaa !29
  %i.ky = and <2 x i64> %wide.load207, %wide.load205
  %i.kz = and <2 x i64> %wide.load208, %wide.load206
  %i.la = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %index203 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 16
  %wide.load209 = load <2 x i64>, ptr %i.la, align 8, !tbaa !29
  %wide.load210 = load <2 x i64>, ptr %i.lb, align 8, !tbaa !29
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %index203 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 16
  %wide.load211 = load <2 x i64>, ptr %i.lc, align 8, !tbaa !29
  %wide.load212 = load <2 x i64>, ptr %i.ld, align 8, !tbaa !29
  %i.le = and <2 x i64> %wide.load211, %wide.load209
  %i.lf = and <2 x i64> %wide.load212, %wide.load210
  %i.lg = or <2 x i64> %i.le, %i.ky
  %i.lh = or <2 x i64> %i.lf, %i.kz
  %i.li = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.lg)
  %i.lj = tail call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.lh)
  %i.lk = trunc nuw nsw <2 x i64> %i.li to <2 x i32>
  %i.ll = trunc nuw nsw <2 x i64> %i.lj to <2 x i32>
  %i.lm = add <2 x i32> %vec.phi, %i.lk           ; 2 uses
  %i.ln = add <2 x i32> %vec.phi204, %i.ll        ; 2 uses
  %index.next213 = add nuw i64 %index203, 4       ; 2 uses
  %i.lo = icmp eq i64 %index.next213, %n.vec201
  br i1 %i.lo, label %middle.block214, label %vector.body202, !llvm.loop !131

middle.block214:                                  ; preds = %vector.body202
  %bin.rdx = add <2 x i32> %i.ln, %i.lm
  %i.lp = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n215 = icmp eq i64 %n.vec201, %wide.trip.count.i86
  br i1 %cmp.n215, label %Res6_FindGetCost.exit, label %scalar.ph198.preheader

scalar.ph198.preheader:                           ; preds = %.lr.ph.i85, %middle.block214
  %indvars.iv.i87.ph = phi i64 [ 0, %.lr.ph.i85 ], [ %n.vec201, %middle.block214 ]
  %.016.i.ph = phi i32 [ 0, %.lr.ph.i85 ], [ %i.lp, %middle.block214 ]
  br label %scalar.ph198

scalar.ph198:                                     ; preds = %scalar.ph198.preheader, %scalar.ph198
  %indvars.iv.i87 = phi i64 [ %indvars.iv.next.i88, %scalar.ph198 ], [ %indvars.iv.i87.ph, %scalar.ph198.preheader ] ; 5 uses
  %.016.i = phi i32 [ %i.md, %scalar.ph198 ], [ %.016.i.ph, %scalar.ph198.preheader ]
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %indvars.iv.i87
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !29
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.kn, i64 %indvars.iv.i87
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !29
  %i.lu = and i64 %i.lt, %i.lr
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %indvars.iv.i87
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !29
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr %i.kt, i64 %indvars.iv.i87
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !29
  %i.lz = and i64 %i.ly, %i.lw
  %i.ma = or i64 %i.lz, %i.lu
  %i.mb = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ma)
  %i.mc = trunc nuw nsw i64 %i.mb to i32
  %i.md = add nuw nsw i32 %.016.i, %i.mc          ; 2 uses
  %indvars.iv.next.i88 = add nuw nsw i64 %indvars.iv.i87, 1 ; 2 uses
  %exitcond.not.i89 = icmp eq i64 %indvars.iv.next.i88, %wide.trip.count.i86
  br i1 %exitcond.not.i89, label %Res6_FindGetCost.exit, label %scalar.ph198, !llvm.loop !132

Res6_FindGetCost.exit:                            ; preds = %scalar.ph198, %middle.block214, %.critedge._crit_edge
  %.0.lcssa.i = phi i32 [ 0, %.critedge._crit_edge ], [ %i.lp, %middle.block214 ], [ %i.md, %scalar.ph198 ]
  ret i32 %.0.lcssa.i
}

; Function Attrs: nofree nounwind uwtable
define void @Res6_ManResubVerifyPla(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i32 @Res6_FindBestEvalPla(ptr noundef %0, ptr noundef %1) ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !36
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.a, i32 noundef %i.d) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Res6_PrintSolutionPla(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val = load i32, ptr %i.a, align 4, !tbaa !19  ; 2 uses
  %i.b = sdiv i32 %.val, 2                        ; 2 uses
  %i.c = add nsw i32 %i.b, -1
  %i.d = add nsw i32 %2, -1
  %i.e = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef %1, i32 noundef %i.d, i32 noundef %i.c, i32 noundef 1) ; 0 uses
  %.not.not29 = icmp sgt i32 %.val, 1
  br i1 %.not.not29, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8
  %i.g = add nsw i32 %1, 1
  %i.h = icmp slt i32 %1, 27                      ; 2 uses
  %i.i = icmp sgt i32 %1, 26                      ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %Res6_LitPrint.exit26
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Res6_LitPrint.exit26 ] ; 3 uses
  %.val20 = load ptr, ptr %i.f, align 8, !tbaa !21
  %.idx = shl nuw nsw i64 %indvars.iv, 3
  %i.j = getelementptr inbounds nuw i8, ptr %.val20, i64 %.idx ; 3 uses
  %i.k = trunc i64 %indvars.iv to i32
  %i.l = add i32 %i.g, %i.k
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.l) ; 0 uses
  %i.n = load i32, ptr %i.j, align 4, !tbaa !8    ; 4 uses
  %i.o = icmp slt i32 %i.n, 2
  br i1 %i.o, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = and i32 %i.n, 1
  %.not.i.i = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not.i.i, i32 32, i32 126
  %i.r = lshr i32 %i.n, 1                         ; 3 uses
  %.not27 = icmp sgt i32 %i.r, %1                 ; 2 uses
  %i.s = add nuw nsw i32 %i.r, 96
  %spec.select.i.i = select i1 %i.h, i32 %i.s, i32 100
  %i.t = select i1 %.not27, i32 120, i32 %spec.select.i.i
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %i.q, i32 noundef %i.t) ; 0 uses
  %or.cond.i = or i1 %i.i, %.not27
  br i1 %or.cond.i, label %.sink.split.i, label %Res6_LitPrint.exit

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ %i.n, %bb.b ], [ %i.r, %bb.c ]
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %.sink.i) ; 0 uses
  br label %Res6_LitPrint.exit

Res6_LitPrint.exit:                               ; preds = %bb.c, %.sink.split.i
  %i.w = load i32, ptr %i.j, align 4, !tbaa !8    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8    ; 2 uses
  %.not = icmp eq i32 %i.w, %i.y
  br i1 %.not, label %Res6_LitPrint.exit26, label %bb.d

bb.d:                                             ; preds = %Res6_LitPrint.exit
  %i.z = icmp slt i32 %i.w, %i.y
  %i.aa = select i1 %i.z, i32 38, i32 94
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.aa) ; 0 uses
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !8   ; 4 uses
  %i.ad = icmp slt i32 %i.ac, 2
  br i1 %i.ad, label %.sink.split.i24, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = and i32 %i.ac, 1
  %.not.i.i21 = icmp eq i32 %i.ae, 0
  %i.af = select i1 %.not.i.i21, i32 32, i32 126
  %i.ag = lshr i32 %i.ac, 1                       ; 3 uses
  %.not28 = icmp sgt i32 %i.ag, %1                ; 2 uses
  %i.ah = add nuw nsw i32 %i.ag, 96
  %spec.select.i.i22 = select i1 %i.h, i32 %i.ah, i32 100
  %i.ai = select i1 %.not28, i32 120, i32 %spec.select.i.i22
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %i.af, i32 noundef %i.ai) ; 0 uses
  %or.cond.i23 = or i1 %i.i, %.not28
  br i1 %or.cond.i23, label %.sink.split.i24, label %Res6_LitPrint.exit26

.sink.split.i24:                                  ; preds = %bb.e, %bb.d
  %.sink.i25 = phi i32 [ %i.ac, %bb.d ], [ %i.ag, %bb.e ]
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29, i32 noundef %.sink.i25) ; 0 uses
  br label %Res6_LitPrint.exit26

Res6_LitPrint.exit26:                             ; preds = %.sink.split.i24, %bb.e, %Res6_LitPrint.exit
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !133

._crit_edge:                                      ; preds = %Res6_LitPrint.exit26, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @Res6_ManResubCheckPla(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Res6_ManReadPla(ptr noundef %0) ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !25   ; 2 uses
  %i.f = xor i32 %i.c, -1
  %i.g = add i32 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = load i32, ptr %i.h, align 4, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !36
  %i.l = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.c, i32 noundef %i.g, i32 noundef %i.i, i32 noundef %i.k) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.n = getelementptr i8, ptr %i.a, i64 124
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  tail call void @Res6_PrintSolutionPla(ptr noundef nonnull %i.m, i32 noundef %i.o, i32 noundef %i.e)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.q = tail call i32 @Res6_FindBestEvalPla(ptr noundef nonnull readonly %i.a, ptr noundef nonnull readonly %i.p) ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %Res6_ManResubVerifyPla.exit

bb.e:                                             ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = load i32, ptr %i.s, align 8, !tbaa !36
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %i.q, i32 noundef %i.t) ; 0 uses
  br label %Res6_ManResubVerifyPla.exit

Res6_ManResubVerifyPla.exit:                      ; preds = %bb.d, %bb.e
  tail call fastcc void @Res6_ManStop(ptr noundef nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %Res6_ManResubVerifyPla.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nofree nounwind memory(readwrite, argmem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind }
attributes #23 = { nounwind allocsize(0,1) }
attributes #24 = { nounwind allocsize(1) }
attributes #25 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 long", !11, i64 0}
!13 = !{!"Vec_Wrd_t_", !5, i64 0, !5, i64 4, !12, i64 8}
!14 = !{!13, !5, i64 0}
!15 = !{!13, !12, i64 8}
!16 = !{!13, !5, i64 4}
!17 = !{!"p1 int", !11, i64 0}
!18 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !17, i64 8}
!19 = !{!18, !5, i64 4}
!20 = !{!18, !5, i64 0}
!21 = !{!18, !17, i64 8}
!22 = !{!"any p2 pointer", !11, i64 0}
!23 = !{!"p2 long", !22, i64 0}
!24 = !{!"Res6_Man_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !13, i64 24, !13, i64 40, !23, i64 56, !23, i64 64, !18, i64 72, !18, i64 88, !18, i64 104, !18, i64 120}
!25 = !{!24, !5, i64 4}
!26 = !{!24, !23, i64 56}
!27 = !{!12, !12, i64 0}
!28 = !{!"long", !4, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!24, !5, i64 12}
!34 = !{!24, !23, i64 64}
!35 = !{!24, !5, i64 0}
!36 = !{!24, !5, i64 16}
!37 = !{!24, !5, i64 20}
!38 = distinct !{!38, !10}
!39 = distinct !{!39, !10}
!40 = distinct !{null}
!41 = distinct !{!41, !10}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10, !30, !31}
!44 = distinct !{!44, !32}
!45 = distinct !{!45, !10, !30}
!46 = distinct !{!46, !10, !30, !31}
!47 = distinct !{!47, !32}
!48 = distinct !{!48, !10, !30}
!49 = distinct !{!49, !10}
!50 = distinct !{!50, !10, !30, !31}
!51 = distinct !{!51, !32}
!52 = distinct !{!52, !10, !30}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = !{!"p1 _ZTS10Vec_Wrd_t_", !11, i64 0}
!57 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!58 = !{!"Abc_RData_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !56, i64 16, !56, i64 24, !57, i64 32, !57, i64 40}
!59 = !{!58, !5, i64 0}
!60 = !{!58, !5, i64 4}
!61 = !{!58, !5, i64 8}
!62 = !{!58, !5, i64 12}
!63 = !{!58, !56, i64 16}
!64 = !{!58, !56, i64 24}
!65 = !{!58, !57, i64 32}
!66 = !{!58, !57, i64 40}
!67 = !{!56, !56, i64 0}
!68 = !{!57, !57, i64 0}
!69 = distinct !{!69, !32}
!70 = distinct !{!70, !10}
!71 = distinct !{!71, !10}
!72 = distinct !{!72, !32}
!73 = !{!24, !5, i64 8}
!74 = distinct !{!74, !10}
!75 = distinct !{!75, !10}
!76 = distinct !{!76, !10}
!77 = distinct !{!77, !10}
!78 = distinct !{!78, !10}
!79 = distinct !{!79, !10}
!80 = distinct !{!80, !10}
!81 = distinct !{!81, !10}
!82 = distinct !{!82, !10}
!83 = distinct !{!83, !10}
!84 = distinct !{!84, !10}
!85 = distinct !{!85, !10}
!86 = distinct !{!86, !10}
!87 = distinct !{!87, !10}
!88 = distinct !{!88, !10}
!89 = distinct !{!89, !10}
!90 = distinct !{!90, !10}
!91 = distinct !{!91, !10, !30, !31}
!92 = distinct !{!92, !10, !31, !30}
!93 = distinct !{!93, !10, !30, !31}
!94 = distinct !{!94, !10, !31, !30}
!95 = distinct !{!95, !10}
end_hunk_1
