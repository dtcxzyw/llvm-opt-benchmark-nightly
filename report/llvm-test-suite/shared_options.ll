Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/shared_options?download=true
inline.NumInlined: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"!opt_parse: calloc failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"!Unknown option passed.\0A\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"!opt_check: opt == NULL\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"!opt_arg: opt == NULL\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"!opt_firstarg: opt == NULL\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"!opt_nextarg: *optnode == NULL\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"!register_option: No long option for -%c\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"WARNING: Ignoring option --%s (-%c)\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"WARNING: Ignoring option --%s\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"!register_long_option: malloc failed\0A\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [44 x i8] c"ERROR: register_long_option: malloc failed\0A\00", align 1

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @opt_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !8      ; 2 uses
  %.not1721 = icmp eq ptr %i.a, null
  br i1 %.not1721, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.f
  %.022 = phi ptr [ %i.g, %bb.f ], [ %i.a, %bb.b ] ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.022, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %.not19 = icmp eq ptr %i.c, null
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.c) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.022, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !15   ; 2 uses
  %.not20 = icmp eq ptr %i.e, null
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.e) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.022, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16   ; 2 uses
  tail call void @free(ptr noundef nonnull %.022) #9
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.f, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 2 uses
  %.not18 = icmp eq ptr %i.i, null
  br i1 %.not18, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.i) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  tail call void @free(ptr noundef nonnull %0) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @opt_parse(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @calloc(i64 noundef 1, i64 noundef 16) #10 ; 18 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %.preheader88.a

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @mprintf(ptr noundef nonnull @.str) #9
  br label %.loopexit

.preheader88.a:                                   ; preds = %bb.a, %.preheader88.backedge
  store i32 0, ptr %i.a, align 4, !tbaa !4
  %i.c = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %i.a) #9 ; 3 uses
  switch i32 %i.c, label %bb.j [
    i32 -1, label %bb.z
    i32 0, label %bb.c
  ]

bb.c:                                             ; preds = %.preheader88.a
  %i.d = load i32, ptr %i.a, align 4, !tbaa !4
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [32 x i8], ptr %3, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.h = call fastcc i32 @register_option(ptr noundef nonnull %i.b, ptr noundef %i.g, i8 noundef signext 0, ptr noundef %3, ptr noundef %4)
  %i.i = icmp eq i32 %i.h, -1
  br i1 %i.i, label %bb.d, label %.preheader88.backedge

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %.not1721.i = icmp eq ptr %i.j, null
  br i1 %.not1721.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.h
  %.022.i = phi ptr [ %i.p, %bb.h ], [ %i.j, %bb.d ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.022.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 2 uses
  %.not19.i = icmp eq ptr %i.l, null
  br i1 %.not19.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  call void @free(ptr noundef nonnull %i.l) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.022.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15   ; 2 uses
  %.not20.i = icmp eq ptr %i.n, null
  br i1 %.not20.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @free(ptr noundef nonnull %i.n) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %.022.i, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !16   ; 2 uses
  call void @free(ptr noundef nonnull %.022.i) #9
  %.not17.i = icmp eq ptr %i.p, null
  br i1 %.not17.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !17

._crit_edge.i:                                    ; preds = %bb.h, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19   ; 2 uses
  %.not18.i = icmp eq ptr %i.r, null
  br i1 %.not18.i, label %opt_free.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  call void @free(ptr noundef nonnull %i.r) #9
  br label %opt_free.exit

opt_free.exit:                                    ; preds = %._crit_edge.i, %bb.i
  call void @free(ptr noundef nonnull %i.b) #9
  br label %.loopexit

bb.j:                                             ; preds = %.preheader88.a
  %i.s = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.c) #11
  %.not54 = icmp eq ptr %i.s, null
  br i1 %.not54, label %bb.t, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %.not55 = icmp eq i32 %i.t, 0
  br i1 %.not55, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [32 x i8], ptr %3, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !20
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.0 = phi ptr [ %i.w, %bb.l ], [ null, %bb.k ]
  %i.x = trunc i32 %i.c to i8
  %i.y = call fastcc i32 @register_option(ptr noundef nonnull %i.b, ptr noundef %.0, i8 noundef signext %i.x, ptr noundef %3, ptr noundef %4)
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.n, label %.preheader88.backedge

.preheader88.backedge:                            ; preds = %bb.m, %bb.c
  br label %.preheader88.a

bb.n:                                             ; preds = %bb.m
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %.not1721.i59 = icmp eq ptr %i.aa, null
  br i1 %.not1721.i59, label %._crit_edge.i65, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %bb.n, %bb.r
  %.022.i61 = phi ptr [ %i.ag, %bb.r ], [ %i.aa, %bb.n ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.022.i61, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !13 ; 2 uses
  %.not19.i62 = icmp eq ptr %i.ac, null
  br i1 %.not19.i62, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i60
  call void @free(ptr noundef nonnull %i.ac) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i60
  %i.ad = getelementptr inbounds nuw i8, ptr %.022.i61, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !15 ; 2 uses
  %.not20.i63 = icmp eq ptr %i.ae, null
  br i1 %.not20.i63, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @free(ptr noundef nonnull %i.ae) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.af = getelementptr inbounds nuw i8, ptr %.022.i61, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !16 ; 2 uses
  call void @free(ptr noundef nonnull %.022.i61) #9
  %.not17.i64 = icmp eq ptr %i.ag, null
  br i1 %.not17.i64, label %._crit_edge.i65, label %.lr.ph.i60, !llvm.loop !17

._crit_edge.i65:                                  ; preds = %bb.r, %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !19 ; 2 uses
  %.not18.i66 = icmp eq ptr %i.ai, null
  br i1 %.not18.i66, label %opt_free.exit67, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i65
  call void @free(ptr noundef nonnull %i.ai) #9
  br label %opt_free.exit67

opt_free.exit67:                                  ; preds = %._crit_edge.i65, %bb.s
  call void @free(ptr noundef nonnull %i.b) #9
  br label %.loopexit

bb.t:                                             ; preds = %bb.j
  call void (ptr, ...) @mprintf(ptr noundef nonnull @.str.1) #9
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %.not1721.i69 = icmp eq ptr %i.aj, null
  br i1 %.not1721.i69, label %._crit_edge.i75, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %bb.t, %bb.x
  %.022.i71 = phi ptr [ %i.ap, %bb.x ], [ %i.aj, %bb.t ] ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.022.i71, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !13 ; 2 uses
  %.not19.i72 = icmp eq ptr %i.al, null
  br i1 %.not19.i72, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i70
  call void @free(ptr noundef nonnull %i.al) #9
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i70
  %i.am = getelementptr inbounds nuw i8, ptr %.022.i71, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15 ; 2 uses
  %.not20.i73 = icmp eq ptr %i.an, null
  br i1 %.not20.i73, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @free(ptr noundef nonnull %i.an) #9
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ao = getelementptr inbounds nuw i8, ptr %.022.i71, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !16 ; 2 uses
  call void @free(ptr noundef nonnull %.022.i71) #9
  %.not17.i74 = icmp eq ptr %i.ap, null
  br i1 %.not17.i74, label %._crit_edge.i75, label %.lr.ph.i70, !llvm.loop !17

._crit_edge.i75:                                  ; preds = %bb.x, %bb.t
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !19 ; 2 uses
  %.not18.i76 = icmp eq ptr %i.ar, null
  br i1 %.not18.i76, label %opt_free.exit77, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i75
  call void @free(ptr noundef nonnull %i.ar) #9
  br label %opt_free.exit77

opt_free.exit77:                                  ; preds = %._crit_edge.i75, %bb.y
  call void @free(ptr noundef nonnull %i.b) #9
  br label %.loopexit

bb.z:                                             ; preds = %.preheader88.a
  %i.as = load i32, ptr @optind, align 4, !tbaa !4 ; 3 uses
  %i.at = icmp slt i32 %i.as, %0
  br i1 %i.at, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.z
  %i.au = sext i32 %i.as to i64
  %wide.trip.count = sext i32 %0 to i64           ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %i.au, %.preheader.preheader ], [ %indvars.iv.next, %.preheader ] ; 2 uses
  %.04790 = phi i32 [ 0, %.preheader.preheader ], [ %i.az, %.preheader ]
  %i.av = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.ax = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aw) #11
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add i32 %.04790, %i.ay                  ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.aa, label %.preheader, !llvm.loop !24

bb.aa:                                            ; preds = %.preheader
  %i.ba = sub i32 %0, %i.as
  %i.bb = add i32 %i.ba, 63
  %i.bc = add i32 %i.bb, %i.az
  %i.bd = sext i32 %i.bc to i64
  %i.be = call noalias ptr @calloc(i64 noundef %i.bd, i64 noundef 1) #10 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !19
  %.not56 = icmp eq ptr %i.be, null
  br i1 %.not56, label %bb.ab, label %5

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, ...) @mprintf(ptr noundef nonnull @.str) #9
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %.not1721.i79 = icmp eq ptr %i.bg, null
  br i1 %.not1721.i79, label %opt_free.exit87, label %.lr.ph.i80

.lr.ph.i80:                                       ; preds = %bb.ab, %bb.af
  %.022.i81 = phi ptr [ %i.bm, %bb.af ], [ %i.bg, %bb.ab ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.022.i81, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !13 ; 2 uses
  %.not19.i82 = icmp eq ptr %i.bi, null
  br i1 %.not19.i82, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i80
  call void @free(ptr noundef nonnull %i.bi) #9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i80
  %i.bj = getelementptr inbounds nuw i8, ptr %.022.i81, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !15 ; 2 uses
  %.not20.i83 = icmp eq ptr %i.bk, null
  br i1 %.not20.i83, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.bk) #9
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bl = getelementptr inbounds nuw i8, ptr %.022.i81, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !16 ; 2 uses
  call void @free(ptr noundef nonnull %.022.i81) #9
  %.not17.i84 = icmp eq ptr %i.bm, null
  br i1 %.not17.i84, label %opt_free.exit87, label %.lr.ph.i80, !llvm.loop !17

opt_free.exit87:                                  ; preds = %bb.af, %bb.ab
  call void @free(ptr noundef nonnull %i.b) #9
  br label %.loopexit

5:                                                ; preds = %bb.aa
  %6 = load i32, ptr @optind, align 4, !tbaa !4   ; 2 uses
  %7 = icmp slt i32 %6, %0
  br i1 %7, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %5
  %8 = add nsw i32 %0, -1
  %9 = sext i32 %6 to i64
  %sext = sext i32 %8 to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.ai
  %indvars.iv93 = phi i64 [ %9, %.lr.ph ], [ %indvars.iv.next94, %bb.ai ] ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv93
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !23 ; 2 uses
  %i.bp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #11
  %i.bq = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %i.be, ptr noundef nonnull %i.bo, i64 noundef %i.bp) #9 ; 0 uses
  %i.br = icmp eq i64 %indvars.iv93, %sext
  br i1 %i.br, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %i.be)
  %endptr = getelementptr inbounds i8, ptr %i.be, i64 %strlen
  store i16 9, ptr %endptr, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count
  br i1 %exitcond97.not, label %.loopexit, label %bb.ag, !llvm.loop !25

.loopexit:                                        ; preds = %bb.ai, %5, %bb.z, %opt_free.exit87, %opt_free.exit77, %opt_free.exit67, %opt_free.exit, %bb.b
  %.049 = phi ptr [ null, %bb.b ], [ null, %opt_free.exit87 ], [ null, %opt_free.exit ], [ null, %opt_free.exit67 ], [ null, %opt_free.exit77 ], [ %i.b, %bb.z ], [ %i.b, %5 ], [ %i.b, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.049
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

declare void @mprintf(ptr noundef, ...) local_unnamed_addr #5

declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @register_option(ptr nofree noundef captures(none) %0, ptr noundef %1, i8 noundef signext %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4) unnamed_addr #3 {
bb.a:
  %.not = icmp eq i8 %2, 0                        ; 2 uses
  br i1 %.not, label %bb.c, label %.preheader72

.preheader72:                                     ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %.not5674 = icmp eq ptr %i.a, null
  br i1 %.not5674, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader72
  %i.b = sext i8 %2 to i32                        ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !26
  %i.e = icmp eq i32 %i.d, %i.b
  br i1 %i.e, label %.thread68, label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph, %bb.b
  %indvars.iv97 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv97, 1 ; 3 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %indvars.iv.next
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20   ; 2 uses
  %.not56 = icmp eq ptr %i.g, null
  br i1 %.not56, label %.thread, label %bb.b, !llvm.loop !27

bb.b:                                             ; preds = %.lr.ph98
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %3, i64 %indvars.iv.next
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !26
  %i.k = icmp eq i32 %i.j, %i.b
  br i1 %i.k, label %.thread68, label %.lr.ph98, !llvm.loop !27

bb.c:                                             ; preds = %bb.a
  %.not57 = icmp eq ptr %1, null
  br i1 %.not57, label %.thread, label %.thread68

.thread:                                          ; preds = %.lr.ph98, %.preheader72, %bb.c
  %i.l = sext i8 %2 to i32
  tail call void (ptr, ...) @mprintf(ptr noundef nonnull @.str.7, i32 noundef %i.l) #9
  br label %bb.p

.thread68:                                        ; preds = %bb.b, %.lr.ph, %bb.c
  %.071 = phi ptr [ %1, %bb.c ], [ %i.a, %.lr.ph ], [ %i.g, %bb.b ] ; 5 uses
  %.not58 = icmp eq ptr %4, null
  br i1 %.not58, label %bb.f, label %.preheader

.preheader:                                       ; preds = %.thread68
  %i.m = load ptr, ptr %4, align 8, !tbaa !23     ; 2 uses
  %.not5976 = icmp eq ptr %i.m, null
  br i1 %.not5976, label %._crit_edge.thread, label %.lr.ph79

.lr.ph79:                                         ; preds = %.preheader, %.lr.ph79
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %.lr.ph79 ], [ 0, %.preheader ]
  %i.n = phi ptr [ %i.q, %.lr.ph79 ], [ %i.m, %.preheader ]
  %.04378 = phi i32 [ %spec.select, %.lr.ph79 ], [ 0, %.preheader ]
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.n, ptr noundef nonnull dereferenceable(1) %.071) #11
  %.not65 = icmp eq i32 %i.o, 0
  %spec.select = select i1 %.not65, i32 1, i32 %.04378 ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next83
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !23   ; 2 uses
  %.not59 = icmp eq ptr %i.q, null
  br i1 %.not59, label %._crit_edge, label %.lr.ph79, !llvm.loop !28

._crit_edge:                                      ; preds = %.lr.ph79
  %i.r = icmp eq i32 %spec.select, 0
  br i1 %i.r, label %._crit_edge.thread, label %bb.f

._crit_edge.thread:                               ; preds = %.preheader, %._crit_edge
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread
  %i.s = sext i8 %2 to i32
  tail call void (ptr, ...) @mprintf(ptr noundef nonnull @.str.8, ptr noundef nonnull %.071, i32 noundef %i.s) #9
  br label %bb.p

bb.e:                                             ; preds = %._crit_edge.thread
  tail call void (ptr, ...) @mprintf(ptr noundef nonnull @.str.9, ptr noundef nonnull %.071) #9
  br label %bb.p

bb.f:                                             ; preds = %._crit_edge, %.thread68
  %i.t = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #12 ; 9 uses
  %.not61 = icmp eq ptr %i.t, null
  br i1 %.not61, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @mprintf(ptr noundef nonnull @.str.10) #9
  br label %bb.p

bb.h:                                             ; preds = %bb.f
  store i8 %2, ptr %i.t, align 8, !tbaa !29
  %i.u = load ptr, ptr @optarg, align 8, !tbaa !23 ; 3 uses
  %.not62 = icmp eq ptr %i.u, null
  br i1 %.not62, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.u) #11
  %i.w = add i64 %i.v, 1
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.w) #12 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !13
  %.not63 = icmp eq ptr %i.x, null
  br i1 %.not63, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @mprintf(ptr noundef nonnull @.str.10) #9
  tail call void @free(ptr noundef nonnull %i.t) #9
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.z = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) %i.u) #9 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr null, ptr %i.aa, align 8, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = phi ptr [ null, %bb.l ], [ %i.x, %bb.k ]
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.071) #11
  %i.ad = add i64 %i.ac, 1
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.ad) #12 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !15
  %.not64 = icmp eq ptr %i.ae, null
  br i1 %.not64, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @mprintf(ptr noundef nonnull @.str.11) #9
  tail call void @free(ptr noundef %i.ab) #9
  tail call void @free(ptr noundef nonnull %i.t) #9
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ag = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) %.071) #9 ; 0 uses
  %i.ah = load ptr, ptr %0, align 8, !tbaa !8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !16
  store ptr %i.t, ptr %0, align 8, !tbaa !8
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.e, %bb.o, %bb.n, %bb.j, %bb.g, %.thread
  %.046 = phi i32 [ 0, %bb.o ], [ -1, %bb.n ], [ -1, %bb.j ], [ -1, %bb.g ], [ -1, %.thread ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.046
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @opt_check(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.013 = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %.not1014 = icmp eq ptr %.013, null
  br i1 %.not1014, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @mprintf(ptr noundef nonnull @.str.3) #9
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.d
  %.015 = phi ptr [ %.0, %bb.d ], [ %.013, %.preheader ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.015, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %.not11 = icmp eq ptr %i.b, null
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.c = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %1) #11
  %.not12 = icmp eq i32 %i.c, 0
  br i1 %.not12, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.015, i64 24
  %.0 = load ptr, ptr %i.d, align 8, !tbaa !30    ; 2 uses
  %.not10 = icmp eq ptr %.0, null
  br i1 %.not10, label %.loopexit, label %.lr.ph, !llvm.loop !31
end_hunk_0
