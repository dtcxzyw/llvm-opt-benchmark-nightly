Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/utils?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0_@flac__utils_parse_cue_specification:bb.a
  br i1 %.not42.us.i, label %local__parse_cue_.exit, label %.lr.ph96.i, !llvm.loop !2

local__parse_cue_.exit.thread37:                  ; preds = %bb.h, %.loopexit43.i, %bb.g, %bb.f
  %.03049137.i.ph = phi i32 [ 0, %bb.f ], [ %.us-phi64.i, %.loopexit43.i ], [ %i.p, %bb.g ], [ %i.x, %bb.h ]
  store i32 %.03049137.i.ph, ptr %i.j, align 4, !tbaa !12
  store i32 0, ptr %i.k, align 4, !tbaa !12
  br label %local__parse_cue_.exit.thread

local__parse_cue_.exit:                           ; preds = %bb.i
  store i32 %.us-phi64.i, ptr %i.j, align 4, !tbaa !12
  store i32 %i.ag, ptr %i.k, align 4, !tbaa !12
  br i1 %or.cond.us.peel.i, label %local__parse_cue_.exit.thread, label %bb.j

bb.j:                                             ; preds = %local__parse_cue_.exit
  store i32 1, ptr %i.a, align 4, !tbaa !24
  br label %local__parse_cue_.exit.thread

local__parse_cue_.exit.thread:                    ; preds = %.lr.ph96.i, %.split60.us.i, %local__parse_cue_.exit.thread37, %bb.e, %bb.j, %local__parse_cue_.exit, %bb.c
  %.022 = phi i32 [ 0, %local__parse_cue_.exit ], [ 0, %bb.c ], [ 1, %bb.j ], [ 1, %bb.e ], [ 0, %local__parse_cue_.exit.thread37 ], [ 0, %.split60.us.i ], [ 0, %.lr.ph96.i ]
  ret i32 %.022
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @local__parse_cue_(ptr nofree noundef nonnull readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = ptrtoaddr ptr %1 to i64
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %.split55.us, label %.split55

.split55.us:                                      ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !20      ; 4 uses
  %.not41.us74 = icmp eq i8 %i.c, 0
  br i1 %.not41.us74, label %.split83.us, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.split55.us
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.e = add i8 %i.c, -48
  %or.cond.us.peel = icmp ult i8 %i.e, 10
  br i1 %or.cond.us.peel, label %bb.b, label %.split60.us

bb.b:                                             ; preds = %.lr.ph.preheader
  %i.f = zext nneg i8 %i.c to i32
  %i.g = add nsw i32 %i.f, -48                    ; 2 uses
  %i.h = load i8, ptr %i.d, align 1, !tbaa !20    ; 2 uses
  %.not41.us.peel = icmp eq i8 %i.h, 0
  br i1 %.not41.us.peel, label %.split83.us, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.i = phi i8 [ %i.p, %bb.c ], [ %i.h, %bb.b ]  ; 3 uses
  %.030.us76 = phi i32 [ %i.o, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %.034.us75 = phi ptr [ %i.j, %bb.c ], [ %i.d, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %.034.us75, i64 1 ; 3 uses
  %i.k = add i8 %i.i, -48
  %or.cond.us = icmp ult i8 %i.k, 10
  br i1 %or.cond.us, label %bb.c, label %.split60.us

bb.c:                                             ; preds = %.lr.ph
  %i.l = zext nneg i8 %i.i to i32
  %i.m = mul i32 %.030.us76, 10
  %i.n = add i32 %i.m, -48
  %i.o = add i32 %i.n, %i.l                       ; 2 uses
  %i.p = load i8, ptr %i.j, align 1, !tbaa !20    ; 2 uses
  %.not41.us = icmp eq i8 %i.p, 0
  br i1 %.not41.us, label %.split83.us, label %.lr.ph, !llvm.loop !1

.split55:                                         ; preds = %bb.a
  %i.q = icmp ult ptr %0, %1
  br i1 %i.q, label %thread-pre-split.preheader, label %.split81

thread-pre-split.preheader:                       ; preds = %.split55
  %i.r = sub i64 %i.b, %i.a
  %scevgep = getelementptr i8, ptr %0, i64 %i.r   ; 2 uses
  %.pr.peel = load i8, ptr %0, align 1, !tbaa !20 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.t = add i8 %.pr.peel, -48
  %or.cond.peel = icmp ult i8 %i.t, 10
  br i1 %or.cond.peel, label %.split.peel, label %.split60.us

.split.peel:                                      ; preds = %thread-pre-split.preheader
  %i.u = zext nneg i8 %.pr.peel to i32
  %i.v = add nsw i32 %i.u, -48                    ; 2 uses
  %exitcond.peel.not = icmp eq ptr %i.s, %1
  br i1 %exitcond.peel.not, label %.split81, label %thread-pre-split

thread-pre-split:                                 ; preds = %.split.peel, %.split
  %.03071 = phi i32 [ %i.ab, %.split ], [ %i.v, %.split.peel ] ; 2 uses
  %.03470 = phi ptr [ %i.w, %.split ], [ %i.s, %.split.peel ] ; 2 uses
  %.pr = load i8, ptr %.03470, align 1, !tbaa !20 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.03470, i64 1 ; 3 uses
  %i.x = add i8 %.pr, -48
  %or.cond = icmp ult i8 %i.x, 10
  br i1 %or.cond, label %.split, label %.split60.us

.split:                                           ; preds = %thread-pre-split
  %i.y = zext nneg i8 %.pr to i32
  %i.z = mul i32 %.03071, 10
  %i.aa = add i32 %i.z, -48
  %i.ab = add i32 %i.aa, %i.y                     ; 2 uses
  %exitcond.not = icmp eq ptr %i.w, %1
  br i1 %exitcond.not, label %.split81, label %thread-pre-split, !llvm.loop !30

.split60.us:                                      ; preds = %thread-pre-split, %.lr.ph, %thread-pre-split.preheader, %.lr.ph.preheader
  %.us-phi61 = phi i8 [ %i.i, %.lr.ph ], [ %i.c, %.lr.ph.preheader ], [ %.pr.peel, %thread-pre-split.preheader ], [ %.pr, %thread-pre-split ]
  %.us-phi62 = phi ptr [ %i.j, %.lr.ph ], [ %i.d, %.lr.ph.preheader ], [ %i.s, %thread-pre-split.preheader ], [ %i.w, %thread-pre-split ] ; 3 uses
  %.us-phi63 = phi i32 [ 1, %.lr.ph ], [ 0, %.lr.ph.preheader ], [ 0, %thread-pre-split.preheader ], [ 1, %thread-pre-split ] ; 2 uses
  %.us-phi64 = phi i32 [ %.030.us76, %.lr.ph ], [ 0, %.lr.ph.preheader ], [ 0, %thread-pre-split.preheader ], [ %.03071, %thread-pre-split ] ; 3 uses
  %i.ac = icmp eq i8 %.us-phi61, 46
  br i1 %i.ac, label %.loopexit43, label %.loopexit

.loopexit43:                                      ; preds = %.split60.us
  br i1 %.not, label %.split81.us, label %.split81

.split81.us:                                      ; preds = %.loopexit43
  %.pr150 = load i8, ptr %.us-phi62, align 1, !tbaa !20 ; 2 uses
  %.not42.us93 = icmp eq i8 %.pr150, 0
  br i1 %.not42.us93, label %.split83.us, label %.lr.ph96

.lr.ph96:                                         ; preds = %.split81.us, %bb.d
  %i.ad = phi i8 [ %i.ak, %bb.d ], [ %.pr150, %.split81.us ] ; 2 uses
  %.0.us95 = phi i32 [ %i.aj, %bb.d ], [ 0, %.split81.us ]
  %.2.us94 = phi ptr [ %i.ag, %bb.d ], [ %.us-phi62, %.split81.us ]
  %i.ae = add i8 %i.ad, -48
  %or.cond5.us = icmp ult i8 %i.ae, 10
  br i1 %or.cond5.us, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph96
  %i.af = zext nneg i8 %i.ad to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %.2.us94, i64 1 ; 2 uses
  %i.ah = mul i32 %.0.us95, 10
  %i.ai = add i32 %i.ah, -48
  %i.aj = add i32 %i.ai, %i.af                    ; 2 uses
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !20  ; 2 uses
  %.not42.us = icmp eq i8 %i.ak, 0
  br i1 %.not42.us, label %.split83.us, label %.lr.ph96, !llvm.loop !2

.split81:                                         ; preds = %.split, %.split55, %.split.peel, %.loopexit43
  %.1149 = phi ptr [ %.us-phi62, %.loopexit43 ], [ %0, %.split55 ], [ %scevgep, %.split.peel ], [ %scevgep, %.split ] ; 2 uses
  %.03049148 = phi i32 [ %.us-phi64, %.loopexit43 ], [ 0, %.split55 ], [ %i.v, %.split.peel ], [ %i.ab, %.split ] ; 2 uses
  %i.al = phi i32 [ %.us-phi63, %.loopexit43 ], [ 0, %.split55 ], [ 1, %.split.peel ], [ 1, %.split ]
  %i.am = icmp ult ptr %.1149, %1
  br i1 %i.am, label %.lr.ph90, label %.split83.us

.lr.ph90:                                         ; preds = %.split81, %.split40
  %.089 = phi i32 [ %i.at, %.split40 ], [ 0, %.split81 ]
  %.288 = phi ptr [ %i.aq, %.split40 ], [ %.1149, %.split81 ] ; 2 uses
  %i.an = load i8, ptr %.288, align 1, !tbaa !20  ; 2 uses
  %i.ao = add i8 %i.an, -48
  %or.cond5 = icmp ult i8 %i.ao, 10
  br i1 %or.cond5, label %.split40, label %.loopexit

.split40:                                         ; preds = %.lr.ph90
  %i.ap = zext nneg i8 %i.an to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %.288, i64 1 ; 2 uses
  %i.ar = mul i32 %.089, 10
  %i.as = add i32 %i.ar, -48
  %i.at = add i32 %i.as, %i.ap                    ; 2 uses
  %exitcond123.not = icmp eq ptr %i.aq, %1
  br i1 %exitcond123.not, label %.split83.us, label %.lr.ph90, !llvm.loop !2

.split83.us:                                      ; preds = %bb.c, %.split40, %bb.d, %bb.b, %.split55.us, %.split81, %.split81.us
  %.03049137 = phi i32 [ %.us-phi64, %bb.d ], [ %.us-phi64, %.split81.us ], [ %.03049148, %.split81 ], [ %.03049148, %.split40 ], [ 0, %.split55.us ], [ %i.g, %bb.b ], [ %i.o, %bb.c ]
  %.us-phi84 = phi i32 [ %.us-phi63, %bb.d ], [ 0, %.split81.us ], [ 0, %.split81 ], [ %i.al, %.split40 ], [ 0, %.split55.us ], [ 0, %bb.b ], [ 0, %bb.c ]
  %.us-phi85 = phi i32 [ %i.aj, %bb.d ], [ 0, %.split81.us ], [ 0, %.split81 ], [ %i.at, %.split40 ], [ 0, %.split55.us ], [ 0, %bb.b ], [ 0, %bb.c ]
  store i32 %.03049137, ptr %2, align 4, !tbaa !12
  store i32 %.us-phi85, ptr %3, align 4, !tbaa !12
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph90, %.lr.ph96, %.split60.us, %.split83.us
  %.033 = phi i32 [ 0, %.split60.us ], [ %.us-phi84, %.split83.us ], [ 0, %.lr.ph96 ], [ 0, %.lr.ph90 ]
  ret i32 %.033
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @flac__utils_canonicalize_cue_specification(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4) local_unnamed_addr #17 {
bb.a:
  store i32 0, ptr %3, align 8, !tbaa !18
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 1, ptr %i.a, align 4, !tbaa !19
  store i32 0, ptr %4, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 1, ptr %i.b, align 4, !tbaa !19
  %i.c = load i32, ptr %0, align 4, !tbaa !25
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %local__find_closest_cue_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !36
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.i = load i32, ptr %i.h, align 4, !tbaa !39   ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph81.i, label %local__find_closest_cue_.exit

.lr.ph81.i:                                       ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !40
  %5 = zext nneg i32 %i.i to i64
  br label %bb.c

.loopexit.i:                                      ; preds = %bb.e, %.lr.ph70.split.i, %bb.c
  %i.m = icmp sgt i64 %indvars.iv102.i, 1
  br i1 %i.m, label %bb.c, label %local__find_closest_cue_.exit, !llvm.loop !31

bb.c:                                             ; preds = %.loopexit.i, %.lr.ph81.i
  %indvars.iv102.i = phi i64 [ %5, %.lr.ph81.i ], [ %indvars.iv.next103.i, %.loopexit.i ] ; 2 uses
  %indvars.iv.next103.i = add nsw i64 %indvars.iv102.i, -1 ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %indvars.iv.next103.i ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 23
  %i.p = load i8, ptr %i.o, align 1, !tbaa !42    ; 2 uses
  %i.q = zext i8 %i.p to i32
  %.167.i = add nsw i32 %i.q, -1                  ; 2 uses
  %.not83.i = icmp eq i8 %i.p, 0
  br i1 %.not83.i, label %.loopexit.i, label %.lr.ph70.i

.lr.ph70.i:                                       ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load i8, ptr %i.r, align 8, !tbaa !43
  %i.t = zext i8 %i.s to i32                      ; 2 uses
  %i.u = icmp ugt i32 %i.e, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  br i1 %i.u, label %.split72.us.loopexit84.i, label %.lr.ph70.split.i

.lr.ph70.split.i:                                 ; preds = %.lr.ph70.i
  %i.w = icmp eq i32 %i.e, %i.t
  br i1 %i.w, label %.lr.ph70.split.split.i, label %.loopexit.i

.lr.ph70.split.split.i:                           ; preds = %.lr.ph70.split.i
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !44   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph70.split.split.i
  %.168.i = phi i32 [ %.167.i, %.lr.ph70.split.split.i ], [ %.1.i, %bb.e ] ; 3 uses
  %i.y = zext nneg i32 %.168.i to i64             ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !46
  %i.ac = zext i8 %i.ab to i32
  %.not53.i = icmp ult i32 %i.g, %i.ac
  br i1 %.not53.i, label %bb.e, label %.split72.us.i

.split72.us.loopexit84.i:                         ; preds = %.lr.ph70.i
  %.pre105.i = load ptr, ptr %i.v, align 8, !tbaa !44
  %.pre106.i = zext nneg i32 %.167.i to i64
  br label %.split72.us.i

.split72.us.i:                                    ; preds = %bb.d, %.split72.us.loopexit84.i
  %.pre-phi.i = phi i64 [ %.pre106.i, %.split72.us.loopexit84.i ], [ %i.y, %bb.d ]
  %i.ad = phi ptr [ %.pre105.i, %.split72.us.loopexit84.i ], [ %i.x, %bb.d ]
  %i.ae = load i64, ptr %i.n, align 8, !tbaa !47
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.pre-phi.i
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !48
  %i.ah = add i64 %i.ag, %i.ae
  br label %local__find_closest_cue_.exit

bb.e:                                             ; preds = %bb.d
  %.1.i = add nsw i32 %.168.i, -1
  %i.ai = icmp sgt i32 %.168.i, 0
  br i1 %i.ai, label %bb.d, label %.loopexit.i, !llvm.loop !32

local__find_closest_cue_.exit:                    ; preds = %.loopexit.i, %bb.a, %.split72.us.i, %bb.b
  %.sink = phi i64 [ 0, %bb.a ], [ %i.ah, %.split72.us.i ], [ 0, %bb.b ], [ 0, %.loopexit.i ]
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sink, ptr %i.aj, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !24
  %.not18 = icmp eq i32 %i.al, 0
  br i1 %.not18, label %local__find_closest_cue_.exit20, label %bb.f

bb.f:                                             ; preds = %local__find_closest_cue_.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i32, ptr %i.am, align 4, !tbaa !49 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !39 ; 2 uses
  %6 = icmp sgt i32 %i.ar, 0
  br i1 %6, label %.preheader.lr.ph.i, label %local__find_closest_cue_.exit20

.preheader.lr.ph.i:                               ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !40
  %wide.trip.count100.i = zext nneg i32 %i.ar to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.split.i, %.preheader.lr.ph.i
  %indvars.iv97.i = phi i64 [ 0, %.preheader.lr.ph.i ], [ %indvars.iv.next98.i, %._crit_edge.split.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw [32 x i8], ptr %i.at, i64 %indvars.iv97.i ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 23
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !42  ; 2 uses
  %.not82.i = icmp eq i8 %i.aw, 0
  br i1 %.not82.i, label %._crit_edge.split.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !43
  %i.az = zext i8 %i.ay to i32                    ; 2 uses
  %i.ba = icmp ult i32 %i.an, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  br i1 %i.ba, label %.split.us.loopexit85.i, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bc = icmp eq i32 %i.an, %i.az
  br i1 %i.bc, label %.lr.ph.split.split.i, label %._crit_edge.split.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.split.i
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !44 ; 2 uses
  %wide.trip.count.i = zext i8 %i.aw to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.split.split.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.split.split.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !46
  %i.bh = zext i8 %i.bg to i32
  %.not54.i = icmp ugt i32 %i.ap, %i.bh
  br i1 %.not54.i, label %bb.h, label %.split.us.i

.split.us.loopexit85.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.bb, align 8, !tbaa !44
  br label %.split.us.i

.split.us.i:                                      ; preds = %bb.g, %.split.us.loopexit85.i
  %i.bi = phi ptr [ %.pre.i, %.split.us.loopexit85.i ], [ %i.bd, %bb.g ]
  %.us-phi.i = phi i64 [ 0, %.split.us.loopexit85.i ], [ %indvars.iv.i, %bb.g ]
  %i.bj = load i64, ptr %i.au, align 8, !tbaa !47
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bi, i64 %.us-phi.i
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !48
  %i.bm = add i64 %i.bl, %i.bj
  br label %local__find_closest_cue_.exit20

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.split.i, label %bb.g, !llvm.loop !33

._crit_edge.split.i:                              ; preds = %bb.h, %.lr.ph.split.i, %.preheader.i
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %exitcond101.not.i = icmp eq i64 %indvars.iv.next98.i, %wide.trip.count100.i
  br i1 %exitcond101.not.i, label %local__find_closest_cue_.exit20, label %.preheader.i, !llvm.loop !34

local__find_closest_cue_.exit20:                  ; preds = %._crit_edge.split.i, %local__find_closest_cue_.exit, %.split.us.i, %bb.f
  %.sink76 = phi i64 [ %2, %local__find_closest_cue_.exit ], [ %i.bm, %.split.us.i ], [ %2, %bb.f ], [ %2, %._crit_edge.split.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sink76, ptr %i.bn, align 8, !tbaa !20
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @flac__utils_set_channel_mask_tag(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = load ptr, ptr @CHANNEL_MASK_TAG, align 8, !tbaa !22
  %i.c = call i32 (ptr, i64, ptr, ...) @flac_snprintf(ptr noundef nonnull %i.a, i64 noundef 128, ptr noundef nonnull @.str.8, ptr noundef %i.b, i32 noundef %1) #20 ; 2 uses
  %i.d = icmp ugt i32 %i.c, 127
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call i32 @FLAC__metadata_object_vorbiscomment_replace_comment(ptr noundef %0, i32 %i.c, ptr nonnull %i.a, i32 noundef 1, i32 noundef 1) #20
  %.not = icmp ne i32 %i.e, 0
  %. = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ %., %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

declare i32 @flac_snprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #8

declare i32 @FLAC__metadata_object_vorbiscomment_replace_comment(ptr noundef, i32, ptr, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 0, 2) i32 @flac__utils_get_channel_mask_tag(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = load ptr, ptr @CHANNEL_MASK_TAG, align 8, !tbaa !22
  %i.c = tail call i32 @FLAC__metadata_object_vorbiscomment_find_entry_from(ptr noundef %0, i32 noundef 0, ptr noundef %i.b) #20 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.g = zext nneg i32 %i.c to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !52
  %i.j = zext i32 %i.i to i64
  %i.k = load ptr, ptr @CHANNEL_MASK_TAG, align 8, !tbaa !22
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #21
  %i.m = add i64 %i.l, 4
  %i.n = icmp ugt i64 %i.m, %i.j
  br i1 %i.n, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53
  %i.q = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.p, i32 noundef 61) #21 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = tail call i32 @strncasecmp(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.9, i64 noundef 3) #21
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 3
  %i.u = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.t, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.a) #20
  %.not10 = icmp eq i32 %i.u, 1
  br i1 %.not10, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.a, align 4, !tbaa !12
  store i32 %i.v, ptr %1, align 4, !tbaa !12
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.0
}

declare i32 @FLAC__metadata_object_vorbiscomment_find_entry_from(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strspn(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare double @strtod(ptr noundef readonly, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #10

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind allocsize(0) }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16, !26}
!2 = distinct !{!2, !16}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"", !9, i64 0, !9, i64 4, !8, i64 8}
!18 = !{!17, !9, i64 0}
!19 = !{!17, !9, i64 4}
!20 = !{!8, !8, i64 0}
!21 = !{!"p1 omnipotent char", !13, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!24 = !{!23, !9, i64 4}
!25 = !{!23, !9, i64 0}
!26 = !{!"llvm.loop.peeled.count", i32 1}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = distinct !{!30, !16, !26}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = !{!23, !9, i64 8}
!36 = !{!23, !9, i64 12}
!37 = !{!"long", !8, i64 0}
!38 = !{!"", !8, i64 0, !37, i64 136, !9, i64 144, !9, i64 148, !13, i64 152}
!39 = !{!38, !9, i64 148}
!40 = !{!38, !13, i64 152}
!41 = !{!"", !37, i64 0, !8, i64 8, !8, i64 9, !9, i64 22, !9, i64 22, !8, i64 23, !13, i64 24}
!42 = !{!41, !8, i64 23}
!43 = !{!41, !8, i64 8}
!44 = !{!41, !13, i64 24}
!45 = !{!"", !37, i64 0, !8, i64 8}
!46 = !{!45, !8, i64 8}
!47 = !{!41, !37, i64 0}
!48 = !{!45, !37, i64 0}
!49 = !{!23, !9, i64 16}
!50 = !{!23, !9, i64 20}
!51 = !{!"", !9, i64 0, !21, i64 8}
!52 = !{!51, !9, i64 0}
!53 = !{!51, !21, i64 8}
end_hunk_0
