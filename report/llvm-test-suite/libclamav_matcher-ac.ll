Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_matcher-ac?download=true
inline.NumInlined: 13
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cli_target_info = type { i64, %struct.cli_exe_info, i8 }
%struct.cli_exe_info = type { i32, i16, i64, ptr }

@cli_ac_mindepth = dso_local local_unnamed_addr global i8 2, align 1
@cli_ac_maxdepth = dso_local local_unnamed_addr global i8 3, align 1
@.str = private unnamed_addr constant [53 x i8] c"cli_ac_addpatt: Can't allocate memory for pt->trans\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"cli_ac_addpatt: Can't allocate memory for AC node\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"cli_ac_addpatt: Can't allocate memory for next->trans\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"cli_ac_addpatt: Can't realloc ac_nodetable\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"cli_ac_addpatt: Can't realloc ac_pattable\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"cli_ac_buildtrie: AC pattern matcher is not initialised\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"cli_ac_init: Can't allocate memory for ac_root\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"cli_ac_init: Can't allocate memory for ac_root->trans\0A\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"cli_ac_init: data == NULL\0A\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"cli_ac_init: Can't allocate memory for data->offmatrix\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"cli_ac_scanbuff: mdata == NULL\0A\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"cli_ac_scanbuff: Can't allocate memory for mdata->offmatrix[%u]\0A\00", align 1
@.str.12 = private unnamed_addr constant [68 x i8] c"cli_ac_scanbuff: Can't allocate memory for mdata->offmatrix[%u][0]\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Matched signature for file type %s at %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.15 = private unnamed_addr constant [38 x i8] c"cli_ac_addsig: Can't allocate newalt\0A\00", align 1
@.str.16 = private unnamed_addr constant [44 x i8] c"cli_ac_addsig: Can't realloc new->alttable\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"cli_ac_addsig: Can't allocate newalt->str\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"cli_ac_addsig: Can't allocate altpt->next\0A\00", align 1
@.str.20 = private unnamed_addr constant [60 x i8] c"cli_ac_addsig: Can't find a static subpattern of length %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c" (Clam)\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"cli_ac_addsig: No virus name\0A\00", align 1
@.str.23 = private unnamed_addr constant [49 x i8] c"bfs_enqueue: Can't allocate memory for bfs_list\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"ac_findmatch: Unknown wildcard 0x%x\0A\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"cli_ac_addtype: Can't allocate memory for new type node\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -117, 1) i32 @cli_ac_addpatt(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 37
  %i.b = load i8, ptr %i.a, align 1, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !25
  %i.e = zext i8 %i.b to i16
  %i.f = tail call i16 @llvm.umin.i16(i16 %i.d, i16 %i.e) ; 3 uses
  %.not199 = icmp eq i16 %i.f, 0
  br i1 %.not199, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %wide.trip.count = zext nneg i16 %i.f to i64
  %i.h = load i16, ptr %i.g, align 2, !tbaa !27
  %.not258 = icmp ult i16 %i.h, 256
  br i1 %.not258, label %.lr.ph260, label %._crit_edge

.lr.ph260:                                        ; preds = %.lr.ph, %bb.b
  %indvars.iv258 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv258, 1 ; 4 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.._crit_edge_crit_edge, label %bb.b, !llvm.loop !77

bb.b:                                             ; preds = %.lr.ph260
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.j = load i16, ptr %i.i, align 2, !tbaa !27
  %.not = icmp ult i16 %i.j, 256
  br i1 %.not, label %.lr.ph260, label %.._crit_edge_crit_edge261, !llvm.loop !77

.._crit_edge_crit_edge:                           ; preds = %.lr.ph260
  br label %._crit_edge, !llvm.loop !77

.._crit_edge_crit_edge261:                        ; preds = %bb.b
  %2 = trunc nuw i64 %indvars.iv.next to i16
  br label %._crit_edge

._crit_edge:                                      ; preds = %.._crit_edge_crit_edge261, %.._crit_edge_crit_edge, %.lr.ph
  %.0 = phi i16 [ %2, %.._crit_edge_crit_edge261 ], [ %i.f, %.._crit_edge_crit_edge ], [ 0, %.lr.ph ] ; 4 uses
  %i.k = zext nneg i16 %.0 to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.m = load i8, ptr %i.l, align 4, !tbaa !29
  %i.n = zext i8 %i.m to i16
  %i.o = icmp samesign ult i16 %.0, %i.n
  br i1 %i.o, label %bb.aj, label %bb.c

._crit_edge.thread:                               ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.q = load i8, ptr %i.p, align 4, !tbaa !29
  %.not247 = icmp eq i8 %i.q, 0
  br i1 %.not247, label %.thread232, label %bb.aj

.thread232:                                       ; preds = %._crit_edge.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30
  br label %._crit_edge183

bb.c:                                             ; preds = %._crit_edge
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !30   ; 2 uses
  %.not200 = icmp eq i16 %.0, 0
  br i1 %.not200, label %._crit_edge183, label %.lr.ph182

.lr.ph182:                                        ; preds = %bb.c
  %i.v = add nsw i32 %i.k, -1
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.y = trunc i16 %.0 to i8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph182, %bb.s
  %i.z = phi i32 [ 0, %.lr.ph182 ], [ %i.bj, %bb.s ]
  %.1180 = phi i8 [ 0, %.lr.ph182 ], [ %i.bi, %bb.s ] ; 2 uses
  %.0119179 = phi ptr [ %i.u, %.lr.ph182 ], [ %.0118, %bb.s ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0119179, i64 16 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32 ; 2 uses
  %.not146 = icmp eq ptr %i.ab, null
  br i1 %.not146, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call ptr @cli_calloc(i64 noundef 256, i64 noundef 8) #12 ; 3 uses
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !32
  %.not147 = icmp eq ptr %i.ac, null
  br i1 %.not147, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str) #12
  br label %bb.aj

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ad = phi ptr [ %i.ac, %bb.e ], [ %i.ab, %bb.d ]
  %i.ae = load ptr, ptr %1, align 8, !tbaa !26
  %i.af = zext i8 %.1180 to i64                   ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !27
  %i.ai = and i16 %i.ah, 255
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !33 ; 2 uses
  %.not148 = icmp eq ptr %i.al, null
  br i1 %.not148, label %bb.h, label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.am = tail call ptr @cli_calloc(i64 noundef 1, i64 noundef 32) #12 ; 9 uses
  %.not149 = icmp eq ptr %i.am, null
  br i1 %.not149, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.1) #12
  br label %bb.aj

bb.j:                                             ; preds = %bb.h
  %.not150 = icmp eq i32 %i.v, %i.z
  br i1 %.not150, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = tail call ptr @cli_calloc(i64 noundef 256, i64 noundef 8) #12 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !32
  %.not151 = icmp eq ptr %i.an, null
  br i1 %.not151, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.2) #12
  tail call void @free(ptr noundef nonnull %i.am) #12
  br label %bb.aj

bb.m:                                             ; preds = %bb.j
  store i8 1, ptr %i.am, align 8, !tbaa !34
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m
  %i.ap = load i32, ptr %i.w, align 4, !tbaa !35
  %i.aq = add i32 %i.ap, 1                        ; 2 uses
  store i32 %i.aq, ptr %i.w, align 4, !tbaa !35
  %i.ar = load ptr, ptr %i.x, align 8, !tbaa !36
  %i.as = zext i32 %i.aq to i64
  %i.at = shl nuw nsw i64 %i.as, 3
  %i.au = tail call ptr @cli_realloc(ptr noundef %i.ar, i64 noundef %i.at) #12 ; 3 uses
  %.not152 = icmp eq ptr %i.au, null
  %i.av = load i32, ptr %i.w, align 4, !tbaa !35
  %i.aw = add i32 %i.av, -1                       ; 2 uses
  br i1 %.not152, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  store i32 %i.aw, ptr %i.w, align 4, !tbaa !35
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.3) #12
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !32 ; 2 uses
  %.not153 = icmp eq ptr %i.ay, null
  br i1 %.not153, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @free(ptr noundef nonnull %i.ay) #12
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @free(ptr noundef nonnull %i.am) #12
  br label %bb.aj

bb.r:                                             ; preds = %bb.n
  %i.az = zext i32 %i.aw to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.az
  store ptr %i.am, ptr %i.ba, align 8, !tbaa !33
  store ptr %i.au, ptr %i.x, align 8, !tbaa !36
  %i.bb = load ptr, ptr %i.aa, align 8, !tbaa !32
  %i.bc = load ptr, ptr %1, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.bc, i64 %i.af
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !27
  %i.bf = and i16 %i.be, 255
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.bg
  store ptr %i.am, ptr %i.bh, align 8, !tbaa !33
  store i8 0, ptr %.0119179, align 8, !tbaa !34
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.g
  %.0118 = phi ptr [ %i.al, %bb.g ], [ %i.am, %bb.r ] ; 2 uses
  %i.bi = add nuw i8 %.1180, 1                    ; 4 uses
  %i.bj = zext i8 %i.bi to i32
  %i.bk = icmp ult i8 %i.bi, %i.y
  br i1 %i.bk, label %bb.d, label %._crit_edge183, !llvm.loop !78

._crit_edge183:                                   ; preds = %bb.s, %.thread232, %bb.c
  %.0119.lcssa = phi ptr [ %i.u, %bb.c ], [ %i.s, %.thread232 ], [ %.0118, %bb.s ] ; 2 uses
  %.1.lcssa = phi i8 [ 0, %bb.c ], [ 0, %.thread232 ], [ %i.bi, %bb.s ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !37
  %i.bn = add i32 %i.bm, 1                        ; 2 uses
  store i32 %i.bn, ptr %i.bl, align 8, !tbaa !37
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !38
  %i.bq = zext i32 %i.bn to i64
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = tail call ptr @cli_realloc2(ptr noundef %i.bp, i64 noundef %i.br) #12 ; 3 uses
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !38
  %.not130 = icmp eq ptr %i.bs, null
  br i1 %.not130, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge183
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.4) #12
  br label %bb.aj

bb.u:                                             ; preds = %._crit_edge183
  %i.bt = load i32, ptr %i.bl, align 8, !tbaa !37
  %i.bu = add i32 %i.bt, -1
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bv
  store ptr %1, ptr %i.bw, align 8, !tbaa !39
  %i.bx = getelementptr inbounds nuw i8, ptr %.0119.lcssa, i64 1
  store i8 1, ptr %i.bx, align 1, !tbaa !40
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i8 %.1.lcssa, ptr %i.by, align 4, !tbaa !41
  %i.bz = getelementptr inbounds nuw i8, ptr %.0119.lcssa, i64 8 ; 2 uses
  %.0117192 = load ptr, ptr %i.bz, align 8, !tbaa !39 ; 3 uses
  %.not131193 = icmp eq ptr %.0117192, null
  br i1 %.not131193, label %._crit_edge198, label %.lr.ph197

.lr.ph197:                                        ; preds = %bb.u
  %i.ca = load i16, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cf = zext i16 %i.ca to i64
  %i.cg = shl nuw nsw i64 %i.cf, 1
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph197, %.thread
  %.0117194 = phi ptr [ %.0117192, %.lr.ph197 ], [ %.0117, %.thread ] ; 8 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0117194, i64 16
  %i.ci = load i16, ptr %i.ch, align 8, !tbaa !25
  %i.cj = icmp eq i16 %i.ci, %i.ca
  br i1 %i.cj, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %.0117194, i64 18
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !42 ; 2 uses
  %i.cm = load i16, ptr %i.cb, align 2, !tbaa !42
end_hunk_0
