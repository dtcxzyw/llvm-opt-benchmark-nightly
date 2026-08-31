Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/headers?download=true
inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Curl_cwtype = type { ptr, ptr, ptr, ptr, ptr, i64 }
%struct.curl_trc_feat = type { ptr, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Too many response headers, %d is max\00", align 1
@Curl_ccalloc = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Invalid response header\00", align 1
@Curl_cfree = external local_unnamed_addr global ptr, align 8
@hds_cw_collect = internal constant %struct.Curl_cwtype { ptr @.str.2, ptr null, ptr @Curl_cwriter_def_init, ptr @hds_cw_collect_write, ptr @Curl_cwriter_def_close, i64 32 }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"hds-collect\00", align 1
@Curl_trc_feat_write = external local_unnamed_addr global %struct.curl_trc_feat, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"header_collect pushed(type=%x, len=%zu) -> %d\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 0, 7) i32 @curl_easy_header(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %5, null
  %or.cond.not81.not87.not93 = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %0, null
  %or.cond3.not78.not84.not90 = or i1 %i.c, %or.cond.not81.not87.not93
  %i.d = add i32 %3, -32
  %i.e = icmp ult i32 %i.d, -31
  %or.cond7.not88 = or i1 %i.e, %or.cond3.not78.not84.not90
  %i.f = icmp slt i32 %4, -1
  %or.cond9 = or i1 %i.f, %or.cond7.not88
  br i1 %or.cond9, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4360 ; 3 uses
  %i.h = tail call i64 @Curl_llist_count(ptr noundef nonnull %i.g) #3
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2884
  %i.j = load i32, ptr %i.i, align 4, !tbaa !8    ; 2 uses
  %i.k = icmp sgt i32 %4, %i.j
  br i1 %i.k, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %4, -1
  %spec.select = select i1 %i.l, i32 %i.j, i32 %4 ; 2 uses
  %i.m = tail call ptr @Curl_llist_head(ptr noundef nonnull %i.g) #3 ; 2 uses
  %.not94103 = icmp eq ptr %i.m, null
  br i1 %.not94103, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %bb.h
  %.sroa.0.0104 = phi i64 [ %.sroa.0.1, %bb.h ], [ 0, %bb.d ] ; 3 uses
  %.063106 = phi i64 [ %.164, %bb.h ], [ 0, %bb.d ] ; 4 uses
  %.067105 = phi ptr [ %.168, %bb.h ], [ null, %bb.d ] ; 3 uses
  %.071104 = phi ptr [ %i.z, %bb.h ], [ %i.m, %bb.d ] ; 3 uses
  %i.n = tail call ptr @Curl_node_elem(ptr noundef nonnull %.071104) #3 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !72
  %i.q = tail call i32 @curl_strequal(ptr noundef %i.p, ptr noundef %1) #3
  %.not100 = icmp eq i32 %i.q, 0
  br i1 %.not100, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %i.s = load i8, ptr %i.r, align 4, !tbaa !74
  %i.t = zext i8 %i.s to i32
  %i.u = and i32 %3, %i.t
  %.not101 = icmp eq i32 %i.u, 0
  br i1 %.not101, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.w = load i32, ptr %i.v, align 8, !tbaa !75
  %i.x = icmp eq i32 %i.w, %spec.select
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = add i64 %.063106, 1
  %6 = ptrtoint ptr %i.n to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.e, %bb.f, %bb.g
  %.168 = phi ptr [ %.071104, %bb.g ], [ %.067105, %bb.f ], [ %.067105, %bb.e ], [ %.067105, %.lr.ph ] ; 2 uses
  %.164 = phi i64 [ %i.y, %bb.g ], [ %.063106, %bb.f ], [ %.063106, %bb.e ], [ %.063106, %.lr.ph ] ; 5 uses
  %.sroa.0.1 = phi i64 [ %6, %bb.g ], [ %.sroa.0.0104, %bb.f ], [ %.sroa.0.0104, %bb.e ], [ %.sroa.0.0104, %.lr.ph ] ; 2 uses
  %i.z = tail call ptr @Curl_node_next(ptr noundef nonnull %.071104) #3 ; 2 uses
  %.not94.a = icmp eq ptr %i.z, null
  br i1 %.not94.a, label %._crit_edge, label %.lr.ph, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.h
  %7 = inttoptr i64 %.sroa.0.1 to ptr             ; 2 uses
  %.not95.a = icmp eq i64 %.164, 0
  br i1 %.not95.a, label %.critedge, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %.not96.a = icmp ult i64 %2, %.164
  br i1 %.not96.a, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.aa = add i64 %.164, -1
  %i.ab = icmp eq i64 %2, %i.aa
  br i1 %i.ab, label %..loopexit_crit_edge, label %bb.k

..loopexit_crit_edge:                             ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %7, i64 52
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !tbaa !74
  %.pre117 = zext i8 %.pre to i32
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.ac = tail call ptr @Curl_llist_head(ptr noundef nonnull %i.g) #3 ; 2 uses
  %.not97110 = icmp eq ptr %i.ac, null
  br i1 %.not97110, label %.critedge, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.k, %bb.o
  %.065112 = phi i64 [ %.166, %bb.o ], [ 0, %bb.k ] ; 5 uses
  %.172111 = phi ptr [ %i.aq, %bb.o ], [ %i.ac, %bb.k ] ; 3 uses
  %i.ad = tail call ptr @Curl_node_elem(ptr noundef nonnull %.172111) #3 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !72
  %i.ag = tail call i32 @curl_strequal(ptr noundef %i.af, ptr noundef %1) #3
  %.not98 = icmp eq i32 %i.ag, 0
  br i1 %.not98, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.lr.ph114
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !74
  %i.aj = zext i8 %i.ai to i32                    ; 2 uses
  %i.ak = and i32 %3, %i.aj
  %.not99 = icmp eq i32 %i.ak, 0
  br i1 %.not99, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !75
  %i.an = icmp eq i32 %i.am, %spec.select
  br i1 %i.an, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ao = add i64 %.065112, 1
  %i.ap = icmp eq i64 %.065112, %2
  br i1 %i.ap, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.lr.ph114, %bb.l, %bb.m, %bb.n
  %.166 = phi i64 [ %i.ao, %bb.n ], [ %.065112, %bb.m ], [ %.065112, %bb.l ], [ %.065112, %.lr.ph114 ]
  %i.aq = tail call ptr @Curl_node_next(ptr noundef nonnull %.172111) #3 ; 2 uses
  %.not97 = icmp eq ptr %i.aq, null
  br i1 %.not97, label %.critedge, label %.lr.ph114, !llvm.loop !78

.loopexit:                                        ; preds = %bb.n, %..loopexit_crit_edge
  %.pre-phi = phi i32 [ %.pre117, %..loopexit_crit_edge ], [ %i.aj, %bb.n ]
  %.370 = phi ptr [ %.168, %..loopexit_crit_edge ], [ %.172111, %bb.n ]
  %.3 = phi ptr [ %7, %..loopexit_crit_edge ], [ %i.ad, %bb.n ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4392 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.3, i64 32
  %i.at = load <2 x ptr>, ptr %i.as, align 8, !tbaa !79
  store <2 x ptr> %i.at, ptr %i.ar, align 8, !tbaa !79
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4408
  store i64 %.164, ptr %i.au, align 8, !tbaa !80
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4416
  store i64 %2, ptr %i.av, align 8, !tbaa !82
  %i.aw = or disjoint i32 %.pre-phi, 134217728
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 4424
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !83
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4432
  store ptr %.370, ptr %i.ay, align 8, !tbaa !84
  store ptr %i.ar, ptr %5, align 8, !tbaa !85
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.d, %bb.k, %bb.i, %._crit_edge, %bb.c, %bb.b, %bb.a, %.loopexit
  %.073 = phi i32 [ 6, %bb.a ], [ 3, %bb.b ], [ 2, %._crit_edge ], [ 0, %.loopexit ], [ 1, %bb.i ], [ 4, %bb.c ], [ 2, %bb.k ], [ 2, %bb.d ], [ 2, %bb.o ]
  ret i32 %.073
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @Curl_llist_count(ptr noundef) local_unnamed_addr #2

declare ptr @Curl_llist_head(ptr noundef) local_unnamed_addr #2

declare ptr @Curl_node_elem(ptr noundef) local_unnamed_addr #2

declare i32 @curl_strequal(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @Curl_node_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noundef ptr @curl_easy_nextheader(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2884
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.c = icmp sgt i32 %2, %i.b
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %2, -1
  %spec.select = select i1 %i.d, i32 %i.b, i32 %2 ; 2 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !84   ; 2 uses
  %.not53.a = icmp eq ptr %i.f, null
  br i1 %.not53.a, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @Curl_node_next(ptr noundef nonnull %i.f) #3
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4360
  %i.i = tail call ptr @Curl_llist_head(ptr noundef nonnull %i.h) #3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.043 = phi ptr [ %i.g, %bb.d ], [ %i.i, %bb.e ] ; 2 uses
  %.not54.a = icmp eq ptr %.043, null
  br i1 %.not54.a, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.h
  %.144 = phi ptr [ %i.r, %bb.h ], [ %.043, %bb.f ] ; 5 uses
  %i.j = tail call ptr @Curl_node_elem(ptr noundef nonnull %.144) #3 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  %i.l = load i8, ptr %i.k, align 4, !tbaa !74
  %i.m = zext i8 %i.l to i32
  %i.n = and i32 %1, %i.m
  %.not55.a = icmp eq i32 %i.n, 0
  br i1 %.not55.a, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !75
  %i.q = icmp eq i32 %i.p, %spec.select
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader
  %i.r = tail call ptr @Curl_node_next(ptr noundef nonnull %.144) #3 ; 2 uses
  %.not56 = icmp eq ptr %i.r, null
  br i1 %.not56, label %.thread, label %.preheader, !llvm.loop !87

bb.i:                                             ; preds = %bb.g
  %i.s = tail call ptr @Curl_node_elem(ptr noundef nonnull %.144) #3 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4360
  %i.u = tail call ptr @Curl_llist_head(ptr noundef nonnull %i.t) #3 ; 2 uses
  %.not5866 = icmp eq ptr %i.u, null
  br i1 %.not5866, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %.069 = phi i64 [ 0, %.lr.ph ], [ %spec.select62, %bb.m ]
  %.04068 = phi i64 [ 0, %.lr.ph ], [ %.141, %bb.m ] ; 3 uses
  %.04267 = phi ptr [ %i.u, %.lr.ph ], [ %i.al, %bb.m ] ; 3 uses
  %i.w = tail call ptr @Curl_node_elem(ptr noundef nonnull %.04267) #3 ; 3 uses
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72
  %i.aa = tail call i32 @curl_strequal(ptr noundef %i.x, ptr noundef %i.z) #3
  %.not59.a = icmp eq i32 %i.aa, 0
  br i1 %.not59.a, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !75
  %i.ad = icmp eq i32 %i.ac, %spec.select
  br i1 %i.ad, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.af = load i8, ptr %i.ae, align 4, !tbaa !74
  %i.ag = zext i8 %i.af to i32
  %i.ah = and i32 %1, %i.ag
  %.not60 = icmp ne i32 %i.ah, 0
  %i.ai = zext i1 %.not60 to i64
  %spec.select61.a = add i64 %.04068, %i.ai
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.141 = phi i64 [ %.04068, %bb.j ], [ %spec.select61.a, %bb.l ], [ %.04068, %bb.k ] ; 3 uses
  %i.aj = icmp eq ptr %.04267, %.144
  %i.ak = add i64 %.141, -1
  %spec.select62 = select i1 %i.aj, i64 %i.ak, i64 %.069 ; 2 uses
  %i.al = tail call ptr @Curl_node_next(ptr noundef nonnull %.04267) #3 ; 2 uses
  %.not58 = icmp eq ptr %i.al, null
  br i1 %.not58, label %._crit_edge, label %bb.j, !llvm.loop !88

._crit_edge:                                      ; preds = %bb.m, %bb.i
  %.040.lcssa = phi i64 [ 0, %bb.i ], [ %.141, %bb.m ]
  %.0.lcssa = phi i64 [ 0, %bb.i ], [ %spec.select62, %bb.m ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 4440 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ao = load <2 x ptr>, ptr %i.an, align 8, !tbaa !79
  store <2 x ptr> %i.ao, ptr %i.am, align 8, !tbaa !79
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 4456
  store i64 %.040.lcssa, ptr %i.ap, align 8, !tbaa !80
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 4464
  store i64 %.0.lcssa, ptr %i.aq, align 8, !tbaa !82
  %i.ar = getelementptr inbounds nuw i8, ptr %i.s, i64 52
  %i.as = load i8, ptr %i.ar, align 4, !tbaa !74
  %i.at = zext i8 %i.as to i32
  %i.au = or disjoint i32 %i.at, 134217728
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4472
  store i32 %i.au, ptr %i.av, align 8, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4480
  store ptr %.144, ptr %i.aw, align 8, !tbaa !84
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.f, %bb.c, %bb.a, %._crit_edge
  %.045 = phi ptr [ null, %bb.a ], [ %i.am, %._crit_edge ], [ null, %bb.c ], [ null, %bb.f ], [ null, %bb.h ]
  ret ptr %.045
}

; Function Attrs: nounwind uwtable
define range(i32 0, 101) i32 @Curl_headers_push(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !89      ; 2 uses
  switch i8 %i.a, label %bb.b [
    i8 13, label %.critedge64
    i8 10, label %.critedge64
  ]

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %1, i64 %2
  %i.c = getelementptr i8, ptr %i.b, i64 -1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !89    ; 2 uses
  %i.e = icmp eq i8 %i.d, 10
  br i1 %i.e, label %bb.d, label %.thread69

bb.d:                                             ; preds = %bb.c
  %i.f = add i64 %2, -1                           ; 3 uses
  %.not59 = icmp eq i64 %i.f, 0
  br i1 %.not59, label %.thread, label %..thread69_crit_edge

..thread69_crit_edge:                             ; preds = %bb.d
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 %i.f
  %.phi.trans.insert87 = getelementptr i8, ptr %.phi.trans.insert, i64 -1
  %.pre = load i8, ptr %.phi.trans.insert87, align 1, !tbaa !89
  br label %.thread69

.thread69:                                        ; preds = %..thread69_crit_edge, %bb.c
  %i.g = phi i8 [ %.pre, %..thread69_crit_edge ], [ %i.d, %bb.c ]
  %.05072 = phi i64 [ %i.f, %..thread69_crit_edge ], [ %2, %bb.c ]
end_hunk_0
