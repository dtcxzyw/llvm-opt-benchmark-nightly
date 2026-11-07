Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/mincross?download=true
inline.NumInlined: 101
inline.NumDeleted: 50
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@ordercmpf:bb.a
}

declare ptr @agsubnode(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @agfstin(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @agnxtin(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @agdelnode(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @agdeledge(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @expand_cluster(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @ordered_edges(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @G_ordering, align 8, !tbaa !237 ; 2 uses
  %i.b = icmp ne ptr %i.a, null
  %i.c = load ptr, ptr @N_ordering, align 8
  %i.d = icmp ne ptr %i.c, null
  %or.cond = select i1 %i.b, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %do_ordering.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @late_string(ptr noundef %0, ptr noundef %i.a, ptr noundef null) #20 ; 6 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(4) @.str.11) #25
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %sub_0

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @agfstnode(ptr noundef %0) #20 ; 2 uses
  %.not6.i = icmp eq ptr %i.h, null
  br i1 %.not6.i, label %do_ordering.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.07.i = phi ptr [ %i.j, %.lr.ph.i ], [ %i.h, %bb.d ] ; 2 uses
  %i.i = getelementptr i8, ptr %.07.i, i64 16
  %.0.val.i = load ptr, ptr %i.i, align 8, !tbaa !15
  tail call fastcc void @do_ordering_node(ptr noundef %0, ptr %.0.val.i, i1 noundef zeroext true)
  %i.j = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.07.i) #20 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %do_ordering.exit, label %.lr.ph.i, !llvm.loop !233

sub_0:                                            ; preds = %bb.c
  %i.k = load i8, ptr %i.e, align 1
  switch i8 %i.k, label %.thread43 [
    i8 105, label %sub_1
    i8 0, label %do_ordering.exit
  ]

sub_1:                                            ; preds = %sub_0
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.m = load i8, ptr %i.l, align 1
  %.not32 = icmp eq i8 %i.m, 110
  br i1 %.not32, label %.tail, label %.thread43

.tail:                                            ; preds = %sub_1
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.e, label %.thread43

bb.e:                                             ; preds = %.tail
  %i.q = tail call ptr @agfstnode(ptr noundef %0) #20 ; 2 uses
  %.not6.i18 = icmp eq ptr %i.q, null
  br i1 %.not6.i18, label %do_ordering.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %bb.e, %.lr.ph.i19
  %.07.i20 = phi ptr [ %i.s, %.lr.ph.i19 ], [ %i.q, %bb.e ] ; 2 uses
  %i.r = getelementptr i8, ptr %.07.i20, i64 16
  %.0.val.i21 = load ptr, ptr %i.r, align 8, !tbaa !15
  tail call fastcc void @do_ordering_node(ptr noundef %0, ptr %.0.val.i21, i1 noundef zeroext false)
  %i.s = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.07.i20) #20 ; 2 uses
  %.not.i22 = icmp eq ptr %i.s, null
  br i1 %.not.i22, label %do_ordering.exit, label %.lr.ph.i19, !llvm.loop !233

.thread43:                                        ; preds = %sub_0, %.tail, %sub_1
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.e) #20
  br label %do_ordering.exit

bb.f:                                             ; preds = %bb.b
  %i.t = tail call ptr @agfstsubg(ptr noundef %0) #20 ; 2 uses
  %.not1529 = icmp eq ptr %i.t, null
  br i1 %.not1529, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.h
  %.030 = phi ptr [ %i.v, %bb.h ], [ %i.t, %bb.f ] ; 3 uses
  %i.u = tail call zeroext i1 @is_a_cluster(ptr noundef nonnull %.030) #20
  br i1 %i.u, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  tail call fastcc void @ordered_edges(ptr noundef nonnull %.030)
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.g
  %i.v = tail call ptr @agnxtsubg(ptr noundef nonnull %.030) #20 ; 2 uses
  %.not15 = icmp eq ptr %i.v, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph, !llvm.loop !234

._crit_edge:                                      ; preds = %bb.h, %bb.f
  %i.w = load ptr, ptr @N_ordering, align 8, !tbaa !237
  %.not16 = icmp eq ptr %i.w, null
  br i1 %.not16, label %do_ordering.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.x = tail call ptr @agfstnode(ptr noundef %0) #20 ; 2 uses
  %.not18.i = icmp eq ptr %i.x, null
  br i1 %.not18.i, label %do_ordering.exit, label %.lr.ph.i24

.lr.ph.i24:                                       ; preds = %bb.i, %bb.m
  %.019.i = phi ptr [ %i.al, %bb.m ], [ %i.x, %bb.i ] ; 5 uses
  %i.y = load ptr, ptr @N_ordering, align 8, !tbaa !237
  %i.z = tail call ptr @late_string(ptr noundef nonnull %.019.i, ptr noundef %i.y, ptr noundef null) #20 ; 6 uses
  %.not15.i = icmp eq ptr %i.z, null
  br i1 %.not15.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i24
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.z, ptr noundef nonnull dereferenceable(4) @.str.11) #25
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.k, label %sub_0.i

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %.019.i, i64 16
  %.0.val17.i = load ptr, ptr %i.ac, align 8, !tbaa !15
  tail call fastcc void @do_ordering_node(ptr noundef %0, ptr %.0.val17.i, i1 noundef zeroext true)
  br label %bb.m

sub_0.i:                                          ; preds = %bb.j
  %i.ad = load i8, ptr %i.z, align 1
  switch i8 %i.ad, label %.thread25.i [
    i8 105, label %sub_1.i
    i8 0, label %bb.m
  ]

sub_1.i:                                          ; preds = %sub_0.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.af = load i8, ptr %i.ae, align 1
  %.not21.i = icmp eq i8 %i.af, 110
  br i1 %.not21.i, label %.tail.i, label %.thread25.i

.tail.i:                                          ; preds = %sub_1.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 2
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %.thread25.i

bb.l:                                             ; preds = %.tail.i
  %i.aj = getelementptr i8, ptr %.019.i, i64 16
  %.0.val.i26 = load ptr, ptr %i.aj, align 8, !tbaa !15
  tail call fastcc void @do_ordering_node(ptr noundef %0, ptr %.0.val.i26, i1 noundef zeroext false)
  br label %bb.m

.thread25.i:                                      ; preds = %.tail.i, %sub_1.i, %sub_0.i
  %i.ak = tail call ptr @agnameof(ptr noundef nonnull %.019.i) #20
  tail call void (ptr, ...) @agerrorf(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.z, ptr noundef %i.ak) #20
  br label %bb.m

bb.m:                                             ; preds = %.thread25.i, %bb.l, %sub_0.i, %bb.k, %.lr.ph.i24
  %i.al = tail call ptr @agnxtnode(ptr noundef %0, ptr noundef nonnull %.019.i) #20 ; 2 uses
  %.not.i25 = icmp eq ptr %i.al, null
  br i1 %.not.i25, label %do_ordering.exit, label %.lr.ph.i24, !llvm.loop !235

do_ordering.exit:                                 ; preds = %.lr.ph.i19, %.lr.ph.i, %bb.m, %sub_0, %bb.i, %bb.e, %bb.d, %.thread43, %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flat_breakcycles(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.d = load i32, ptr %i.c, align 8, !tbaa !37   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  %i.f = load i32, ptr %i.e, align 4, !tbaa !38
  %.not49 = icmp sgt i32 %i.d, %i.f
  br i1 %.not49, label %._crit_edge51, label %.preheader38.preheader

.preheader38.preheader:                           ; preds = %bb.a
  %i.g = sext i32 %i.d to i64
  br label %.preheader38

.preheader38:                                     ; preds = %.preheader38.preheader, %.loopexit
  %i.h = phi ptr [ %i.b, %.preheader38.preheader ], [ %i.bh, %.loopexit ] ; 5 uses
  %indvars.iv56 = phi i64 [ %i.g, %.preheader38.preheader ], [ %indvars.iv.next57, %.loopexit ] ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39   ; 2 uses
  %i.k = getelementptr inbounds [88 x i8], ptr %i.j, i64 %indvars.iv56 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !42   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader38
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.p = zext nneg i32 %i.l to i64                ; 6 uses
  %i.q = mul nuw nsw i64 %i.p, %i.p
  %i.r = add nuw nsw i64 %i.q, 7
  %i.s = lshr i64 %i.r, 3                         ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  br label %.outer

.outer:                                           ; preds = %new_matrix.exit, %.lr.ph
  %indvars.iv.ph = phi i64 [ %indvars.iv.next64, %new_matrix.exit ], [ 0, %.lr.ph ]
  %.045.ph = phi i1 [ true, %new_matrix.exit ], [ false, %.lr.ph ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %1
  %indvars.iv = phi i64 [ %indvars.iv.next, %1 ], [ %indvars.iv.ph, %.outer ] ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !44
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !15   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 224
  store i64 0, ptr %i.y, align 8, !tbaa !111
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 232
  store i8 0, ptr %i.z, align 8, !tbaa !117
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 448
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ab, ptr %i.aa, align 8, !tbaa !107
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 296
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !101
  %i.ae = icmp eq i64 %i.ad, 0
  %or.cond = or i1 %i.ae, %.045.ph
  br i1 %or.cond, label %1, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef range(i64 0, 2305843009213693953) 24) #21 ; 5 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.d, label %gv_alloc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !62
  %i.ai = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ah, ptr noundef nonnull @.str.16, i64 noundef 24) #22 ; 0 uses
  tail call fastcc void @graphviz_exit() #23
  unreachable

gv_alloc.exit.i:                                  ; preds = %bb.c
  %i.aj = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef range(i64 0, 2305843009213693953) %i.s) #21 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.e, label %new_matrix.exit

bb.e:                                             ; preds = %gv_alloc.exit.i
  %i.al = load ptr, ptr @stderr, align 8, !tbaa !62
  %i.am = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.al, ptr noundef nonnull @.str.16, i64 noundef range(i64 0, 2305843009213693953) %i.s) #22 ; 0 uses
  tail call fastcc void @graphviz_exit() #23
  unreachable

1:                                                ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %exitcond.not, label %bb.f, label %bb.b, !llvm.loop !238

new_matrix.exit:                                  ; preds = %gv_alloc.exit.i
  store i64 %i.p, ptr %i.af, align 8, !tbaa !118
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 %i.p, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !118
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store ptr %i.aj, ptr %.sroa.3.0..sroa_idx.i, align 8, !tbaa !119
  store ptr %i.af, ptr %i.t, align 8, !tbaa !90
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not65 = icmp eq i64 %indvars.iv.next64, %i.p
  br i1 %exitcond.not65, label %._crit_edge, label %.outer, !llvm.loop !238

bb.f:                                             ; preds = %1
  br i1 %.045.ph, label %._crit_edge, label %.loopexit

._crit_edge:                                      ; preds = %new_matrix.exit, %bb.f
  br label %.lr.ph48

.lr.ph48:                                         ; preds = %._crit_edge, %bb.h
  %i.an = phi ptr [ %i.az, %bb.h ], [ %i.h, %._crit_edge ]
  %i.ao = phi ptr [ %i.ba, %bb.h ], [ %i.h, %._crit_edge ]
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %bb.h ], [ 0, %._crit_edge ] ; 2 uses
  %i.ap = phi ptr [ %i.bc, %bb.h ], [ %i.j, %._crit_edge ]
  %i.aq = getelementptr inbounds [88 x i8], ptr %i.ap, i64 %indvars.iv56
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !43
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv53
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !44 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !15
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 224
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !111
  %.not37 = icmp eq i64 %i.ay, 0
  br i1 %.not37, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph48
  tail call fastcc void @flat_search(ptr noundef nonnull %0, ptr noundef nonnull %i.au)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !15  ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph48, %bb.g
  %i.az = phi ptr [ %i.an, %.lr.ph48 ], [ %.pre, %bb.g ] ; 2 uses
  %i.ba = phi ptr [ %i.ao, %.lr.ph48 ], [ %.pre, %bb.g ] ; 2 uses
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 264
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !39 ; 2 uses
  %i.bd = getelementptr inbounds [88 x i8], ptr %i.bc, i64 %indvars.iv56
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !42
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next54, %i.bf
  br i1 %i.bg, label %.lr.ph48, label %.loopexit, !llvm.loop !239

.loopexit:                                        ; preds = %bb.h, %bb.f, %.preheader38
  %i.bh = phi ptr [ %i.h, %.preheader38 ], [ %i.h, %bb.f ], [ %i.az, %bb.h ] ; 2 uses
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 340
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !38
  %i.bk = sext i32 %i.bj to i64
  %.not.not = icmp slt i64 %indvars.iv56, %i.bk
  br i1 %.not.not, label %.preheader38, label %._crit_edge51, !llvm.loop !240

._crit_edge51:                                    ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flat_reorder(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.nodes_t, align 8            ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %1, i8 0, i64 48, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 344
  %i.d = load i8, ptr %i.c, align 8, !tbaa !252, !range !112, !noundef !113
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.aw

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.g = load i32, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 340
  %i.i = load i32, ptr %i.h, align 4, !tbaa !38
  %.not202 = icmp sgt i32 %i.g, %i.i
  br i1 %.not202, label %._crit_edge209, label %.lr.ph205

.lr.ph205:                                        ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.m = sext i32 %i.g to i64
  br label %bb.c

.preheader:                                       ; preds = %bb.ar
  %.val206.pre = load i64, ptr %i.j, align 8, !tbaa !68
  %i.n = icmp eq i64 %.val206.pre, 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %i.n, label %._crit_edge209, label %.lr.ph208

.lr.ph208:                                        ; preds = %.preheader
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.as

bb.c:                                             ; preds = %.lr.ph205, %bb.ar
  %i.q = phi ptr [ %i.b, %.lr.ph205 ], [ %i.mj, %bb.ar ] ; 2 uses
  %indvars.iv226 = phi i64 [ %i.m, %.lr.ph205 ], [ %indvars.iv.next227, %bb.ar ] ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 264
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.t = getelementptr inbounds [88 x i8], ptr %i.s, i64 %indvars.iv226 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !42   ; 4 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.ar, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43   ; 6 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 364
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !57
  %i.ad = icmp sgt i32 %i.u, 0
  br i1 %i.ad, label %.lr.ph.preheader, label %.preheader171

.lr.ph.preheader:                                 ; preds = %bb.d
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.ae = icmp ult i32 %i.u, 4
  br i1 %i.ae, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %.lr.ph

.preheader171.loopexit.unr-lcssa:                 ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader171, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader171.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %.preheader171.loopexit.unr-lcssa ]
  %lcmp.mod271 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod271)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.epil
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 224
  store i64 0, ptr %i.aj, align 8, !tbaa !111
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader171, label %.lr.ph.epil, !llvm.loop !241

.preheader171:                                    ; preds = %.preheader171.loopexit.unr-lcssa, %.lr.ph.epil, %bb.d
  %.val138176 = load i64, ptr %i.j, align 8, !tbaa !68
  %.not210 = icmp eq i64 %.val138176, 0
  br i1 %.not210, label %._crit_edge, label %.lr.ph178

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !15
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 224
  store i64 0, ptr %i.ao, align 8, !tbaa !111
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !44
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 224
  store i64 0, ptr %i.au, align 8, !tbaa !111
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !44
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !15
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 224
  store i64 0, ptr %i.ba, align 8, !tbaa !111
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !44
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 224
  store i64 0, ptr %i.bg, align 8, !tbaa !111
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader171.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !242

._crit_edge:                                      ; preds = %bb.g, %.preheader171
  call void @gv_list_clear_(ptr noundef nonnull %1, i64 noundef 8) #20
  %i.bh = load ptr, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 264
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !39 ; 2 uses
  %i.bk = getelementptr inbounds [88 x i8], ptr %i.bj, i64 %indvars.iv226
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !42 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph191, label %._crit_edge192

.lr.ph178:                                        ; preds = %.preheader171, %bb.g
  %.0119177 = phi i64 [ %i.bu, %bb.g ], [ 0, %.preheader171 ] ; 2 uses
  %i.bn = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %1, i64 noundef %.0119177) #20 ; 2 uses
  %i.bo = load ptr, ptr %i.k, align 8, !tbaa !70  ; 2 uses
  %magicptr = ptrtoint ptr %i.bo to i64
  switch i64 %magicptr, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %.lr.ph178
  %i.bp = load ptr, ptr %1, align 8, !tbaa !66
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bn
  %.0.copyload19 = load ptr, ptr %i.bq, align 8
  call void @free(ptr noundef %.0.copyload19) #20
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph178
  %i.br = load ptr, ptr %1, align 8, !tbaa !66
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bn
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !44
  call void %i.bo(ptr noundef %i.bt) #20
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph178, %bb.f, %bb.e
  %i.bu = add nuw i64 %.0119177, 1                ; 2 uses
  %.val138 = load i64, ptr %i.j, align 8, !tbaa !68
  %i.bv = icmp ult i64 %i.bu, %.val138
  br i1 %i.bv, label %.lr.ph178, label %._crit_edge, !llvm.loop !243

.lr.ph191:                                        ; preds = %._crit_edge, %bb.ak
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %bb.ak ], [ 0, %._crit_edge ] ; 3 uses
  %i.bw = phi i32 [ %i.iu, %bb.ak ], [ %i.bl, %._crit_edge ]
  %i.bx = phi ptr [ %i.is, %bb.ak ], [ %i.bj, %._crit_edge ]
  %i.by = phi ptr [ %i.iq, %bb.ak ], [ %i.bh, %._crit_edge ]
  %i.bz = getelementptr inbounds [88 x i8], ptr %i.bx, i64 %indvars.iv226
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 132
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !106
  %i.cc = and i32 %i.cb, 1
  %.not133 = icmp eq i32 %i.cc, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !43
  %i.cf = trunc nuw nsw i64 %indvars.iv217 to i32
  %i.cg = xor i32 %i.cf, -1
  %i.ch = add i32 %i.bw, %i.cg
  %i.ci = sext i32 %i.ch to i64
end_hunk_0
