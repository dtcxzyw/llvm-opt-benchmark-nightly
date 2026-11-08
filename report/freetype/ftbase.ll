Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/ftbase?download=true
inline.NumInlined: 363
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@FT_Select_Charmap:bb.a
bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load i32, ptr %i.a, align 8, !tbaa !279
  %.not20 = icmp eq i32 %i.b, 0
  br i1 %.not20, label %.loopexit, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = tail call i32 @find_unicode_charmap(ptr noundef nonnull %0)
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !278  ; 3 uses
  %.not21 = icmp eq ptr %i.e, null
  br i1 %.not21, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !279  ; 2 uses
  %i.h = sext i32 %i.g to i64
  %.idx = shl nsw i64 %i.h, 3
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %.idx
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph, label %.loopexit

bb.g:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.022, i64 8 ; 2 uses
  %i.l = icmp ult ptr %i.k, %i.i
  br i1 %i.l, label %.lr.ph, label %.loopexit, !llvm.loop !497

.lr.ph:                                           ; preds = %bb.f, %bb.g
  %.022 = phi ptr [ %i.k, %bb.g ], [ %i.e, %bb.f ] ; 2 uses
  %i.m = load ptr, ptr %.022, align 8, !tbaa !280 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !281
  %i.p = icmp eq i32 %i.o, %1
  br i1 %i.p, label %bb.h, label %bb.g

bb.h:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.m, ptr %i.q, align 8, !tbaa !270
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.a, %bb.h, %bb.d
  %.016 = phi i32 [ %i.c, %bb.d ], [ 0, %bb.h ], [ 38, %bb.e ], [ 6, %bb.c ], [ 35, %bb.a ], [ 6, %bb.f ], [ 6, %bb.g ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define range(i32 0, 39) i32 @FT_Set_Charmap(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.TT_CMapInfo_, align 8       ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !278  ; 3 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = icmp ne ptr %1, null
  %or.cond = and i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i32, ptr %i.e, align 8, !tbaa !279  ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nsw i64 %i.g, 3
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 %.idx
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %.026 = phi ptr [ %i.b, %.lr.ph ], [ %i.y, %bb.i ] ; 3 uses
  %i.k = load ptr, ptr %.026, align 8, !tbaa !280
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  %i.m = load ptr, ptr %1, align 8, !tbaa !284    ; 2 uses
  %.not15.i = icmp eq ptr %i.m, null
  br i1 %.not15.i, label %FT_Get_CMap_Format.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !107  ; 2 uses
  %.not16.i = icmp eq ptr %i.r, null
  br i1 %.not16.i, label %FT_Get_CMap_Format.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call ptr %i.r(ptr noundef nonnull %i.o, ptr noundef nonnull @.str.7) #30, !inline_history !285 ; 2 uses
  %.not17.i = icmp eq ptr %i.s, null
  br i1 %.not17.i, label %FT_Get_CMap_Format.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !287
  %i.u = call i32 %i.t(ptr noundef nonnull %1, ptr noundef nonnull %2) #30, !inline_history !285
  %.not18.i = icmp eq i32 %i.u, 0
  br i1 %.not18.i, label %FT_Get_CMap_Format.exit, label %FT_Get_CMap_Format.exit.thread

FT_Get_CMap_Format.exit.thread:                   ; preds = %bb.g, %bb.f, %bb.e, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.loopexit22

FT_Get_CMap_Format.exit:                          ; preds = %bb.h
  %i.v = load i64, ptr %i.j, align 8, !tbaa !289
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %.not19 = icmp eq i64 %i.v, 14
  br i1 %.not19, label %bb.i, label %.loopexit22

.loopexit22:                                      ; preds = %FT_Get_CMap_Format.exit, %FT_Get_CMap_Format.exit.thread
  %i.w = load ptr, ptr %.026, align 8, !tbaa !280
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr %i.w, ptr %i.x, align 8, !tbaa !270
  br label %.loopexit

bb.i:                                             ; preds = %bb.d, %FT_Get_CMap_Format.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.026, i64 8 ; 2 uses
  %i.z = icmp ult ptr %i.y, %i.h
  br i1 %i.z, label %bb.d, label %.loopexit, !llvm.loop !498

.loopexit:                                        ; preds = %bb.i, %bb.c, %bb.b, %bb.a, %.loopexit22
  %.015 = phi i32 [ 0, %.loopexit22 ], [ 38, %bb.b ], [ 35, %bb.a ], [ 6, %bb.c ], [ 6, %bb.i ]
  ret i32 %.015
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @FT_Get_Charmap_Index(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !284    ; 3 uses
  %.not11 = icmp eq ptr %i.a, null
  br i1 %.not11, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i32, ptr %i.b, align 8, !tbaa !279  ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !278
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !280
  %i.i = icmp eq ptr %i.h, %0
  br i1 %i.i, label %.loopexit.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.c, !llvm.loop !499

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.c
  %i.j = trunc nuw nsw i64 %indvars.iv to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.loopexit.split.loop.exit, %.preheader, %bb.a, %bb.b
  %.09 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ 0, %.preheader ], [ %i.j, %.loopexit.loopexit.split.loop.exit ], [ %i.c, %bb.d ]
  ret i32 %.09
}

; Function Attrs: nounwind uwtable
define hidden void @FT_CMap_Done(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !317    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !207  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !279  ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !278  ; 5 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv59 = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next60, %bb.p ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 9 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !280
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = add nsw i32 %i.e, -1                     ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !280  ; 3 uses
  %i.q = icmp eq i32 %i.m, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !129
  tail call void %i.s(ptr noundef %i.c, ptr noundef nonnull %i.h) #30, !inline_history !149
  br label %ft_mem_qrealloc.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp sgt i32 %i.e, 268435456
  br i1 %i.t, label %ft_mem_qrealloc.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = shl nuw nsw i64 %wide.trip.count, 3
  %i.v = shl nuw nsw i64 %i.n, 3
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !151
  %i.y = tail call ptr %i.x(ptr noundef %i.c, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull %i.h) #30, !inline_history !150 ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %ft_mem_qrealloc.exit.thread, label %ft_mem_qrealloc.exit

ft_mem_qrealloc.exit.thread:                      ; preds = %bb.f, %bb.g
  store ptr %i.h, ptr %i.g, align 8, !tbaa !278
  br label %.critedge

ft_mem_qrealloc.exit:                             ; preds = %bb.g, %bb.e
  %.134.i = phi ptr [ %i.y, %bb.g ], [ null, %bb.e ] ; 7 uses
  store ptr %.134.i, ptr %i.g, align 8, !tbaa !278
  %i.z = load i32, ptr %i.d, align 8, !tbaa !279  ; 4 uses
  %.03453 = add nuw nsw i32 %i.l, 1
  %i.aa = icmp slt i32 %.03453, %i.z
  br i1 %i.aa, label %.lr.ph56, label %ft_mem_qrealloc.exit.._crit_edge_crit_edge

ft_mem_qrealloc.exit.._crit_edge_crit_edge:       ; preds = %ft_mem_qrealloc.exit
  %.pre = add nsw i32 %i.z, -1
  br label %._crit_edge

.lr.ph56:                                         ; preds = %ft_mem_qrealloc.exit
  %i.ab = add nsw i32 %i.z, -2
  %i.ac = zext i32 %i.ab to i64                   ; 3 uses
  %i.ad = add nsw i32 %i.z, -1                    ; 3 uses
  %wide.trip.count70 = zext i32 %i.ad to i64      ; 3 uses
  %i.ae = sub nsw i64 %wide.trip.count70, %indvars.iv
  %.neg = add nuw i64 %indvars.iv, 1
  %xtraiter = and i64 %i.ae, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph56
  %i.af = icmp eq i64 %indvars.iv, %i.ac
  br i1 %i.af, label %.prol.loopexit.unr-lcssa, label %bb.h

bb.h:                                             ; preds = %.prol.preheader
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.134.i, i64 %indvars.iv59
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !280
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.h, %.prol.preheader
  %.sink.prol = phi ptr [ %i.ah, %bb.h ], [ %i.p, %.prol.preheader ]
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.134.i, i64 %indvars.iv
  store ptr %.sink.prol, ptr %i.ai, align 8, !tbaa !280
  %indvars.iv.next63.prol = add nuw nsw i64 %indvars.iv59, 1
  %indvars.iv.next66.prol = add nuw nsw i64 %indvars.iv, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph56
  %indvars.iv65.unr = phi i64 [ %indvars.iv, %.lr.ph56 ], [ %indvars.iv.next66.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv62.unr = phi i64 [ %indvars.iv59, %.lr.ph56 ], [ %indvars.iv.next63.prol, %.prol.loopexit.unr-lcssa ]
  %i.aj = icmp eq i64 %.neg, %wide.trip.count70
  br i1 %i.aj, label %._crit_edge, label %.lr.ph56.new

.lr.ph56.new:                                     ; preds = %.prol.loopexit, %bb.l
  %indvars.iv65 = phi i64 [ %indvars.iv.next66.1, %bb.l ], [ %indvars.iv65.unr, %.prol.loopexit ] ; 4 uses
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.1, %bb.l ], [ %indvars.iv62.unr, %.prol.loopexit ] ; 3 uses
  %i.ak = icmp eq i64 %indvars.iv65, %i.ac
  br i1 %i.ak, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph56.new
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.134.i, i64 %indvars.iv62
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !280
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph56.new, %bb.i
  %.sink = phi ptr [ %i.am, %bb.i ], [ %i.p, %.lr.ph56.new ]
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.134.i, i64 %indvars.iv65
  store ptr %.sink, ptr %i.an, align 8, !tbaa !280
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.ao = icmp eq i64 %indvars.iv.next66, %i.ac
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.134.i, i64 %indvars.iv62
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !280
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sink.1 = phi ptr [ %i.ar, %bb.k ], [ %i.p, %bb.j ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %.134.i, i64 %indvars.iv.next66
  store ptr %.sink.1, ptr %i.as, align 8, !tbaa !280
  %indvars.iv.next63.1 = add nuw nsw i64 %indvars.iv62, 2
  %indvars.iv.next66.1 = add nuw nsw i64 %indvars.iv65, 2 ; 2 uses
  %exitcond71.not.1 = icmp eq i64 %indvars.iv.next66.1, %wide.trip.count70
  br i1 %exitcond71.not.1, label %._crit_edge, label %.lr.ph56.new, !llvm.loop !500

._crit_edge:                                      ; preds = %.prol.loopexit, %bb.l, %ft_mem_qrealloc.exit.._crit_edge_crit_edge
  %.pre-phi = phi i32 [ %.pre, %ft_mem_qrealloc.exit.._crit_edge_crit_edge ], [ %i.ad, %bb.l ], [ %i.ad, %.prol.loopexit ]
  store i32 %.pre-phi, ptr %i.d, align 8, !tbaa !279
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !270
  %i.av = icmp eq ptr %i.au, %0
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge
  store ptr null, ptr %i.at, align 8, !tbaa !270
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !274
  %i.ay = load ptr, ptr %0, align 8, !tbaa !317
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 184
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !207 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !318 ; 2 uses
  %.not.i40 = icmp eq ptr %i.bc, null
  br i1 %.not.i40, label %ft_cmap_done_internal.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void %i.bc(ptr noundef nonnull %0) #30, !inline_history !14
  br label %ft_cmap_done_internal.exit

ft_cmap_done_internal.exit:                       ; preds = %bb.n, %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !129
  tail call void %i.be(ptr noundef %i.ba, ptr noundef nonnull %0) #30, !inline_history !15
  br label %.critedge

bb.p:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br i1 %exitcond.not, label %.critedge, label %bb.c, !llvm.loop !501

.critedge:                                        ; preds = %bb.p, %bb.b, %ft_cmap_done_internal.exit, %ft_mem_qrealloc.exit.thread, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @ft_mem_qrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = or i64 %2, %1
  %i.b = or i64 %i.a, %3
  %or.cond3.not = icmp sgt i64 %i.b, -1
  br i1 %or.cond3.not, label %bb.b, label %ft_mem_free.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %3, 0
  %i.d = icmp eq i64 %1, 0
  %or.cond5 = or i1 %i.d, %i.c
  br i1 %or.cond5, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %ft_mem_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !129
  tail call void %i.f(ptr noundef %0, ptr noundef nonnull %4) #30, !inline_history !130
  br label %ft_mem_free.exit

bb.e:                                             ; preds = %bb.b
  %i.g = udiv i64 2147483647, %1
  %i.h = icmp sgt i64 %3, %i.g
  br i1 %i.h, label %ft_mem_free.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp eq i64 %2, 0
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !109
  %i.l = mul nuw nsw i64 %3, %1
  %i.m = tail call ptr %i.k(ptr noundef %0, i64 noundef %i.l) #30 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %spec.select41 = select i1 %i.n, i32 64, i32 0
  br label %ft_mem_free.exit

bb.h:                                             ; preds = %bb.f
  %i.o = mul nuw nsw i64 %2, %1
  %i.p = mul nuw nsw i64 %3, %1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !151
  %i.s = tail call ptr %i.r(ptr noundef %0, i64 noundef %i.o, i64 noundef %i.p, ptr noundef %4) #30 ; 2 uses
  %.not = icmp eq ptr %i.s, null                  ; 2 uses
  %. = select i1 %.not, ptr %4, ptr %i.s
  %.42 = select i1 %.not, i32 64, i32 0
  br label %ft_mem_free.exit

ft_mem_free.exit:                                 ; preds = %bb.d, %bb.c, %bb.g, %bb.e, %bb.a, %bb.h
  %.134 = phi ptr [ %., %bb.h ], [ %i.m, %bb.g ], [ %4, %bb.a ], [ %4, %bb.e ], [ null, %bb.c ], [ null, %bb.d ]
  %.1 = phi i32 [ %.42, %bb.h ], [ %spec.select41, %bb.g ], [ 6, %bb.a ], [ 10, %bb.e ], [ 0, %bb.c ], [ 0, %bb.d ]
  store i32 %.1, ptr %5, align 4, !tbaa !119
  ret ptr %.134
}

; Function Attrs: nounwind uwtable
define hidden i32 @FT_CMap_New(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %2, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !284    ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !207  ; 7 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !502    ; 4 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %ft_mem_qalloc.exit.i, label %ft_mem_qalloc.exit.thread.i

ft_mem_qalloc.exit.thread.i:                      ; preds = %bb.c
  %.not14.i.i = icmp ne i64 %i.f, 0
  tail call void @llvm.assume(i1 %.not14.i.i)
  br label %ft_mem_alloc.exit

ft_mem_qalloc.exit.i:                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.j = tail call ptr %i.i(ptr noundef %i.e, i64 noundef %i.f) #30, !inline_history !110 ; 10 uses
  %.not.i.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i.not.i, label %ft_mem_alloc.exit, label %select.unfold

select.unfold:                                    ; preds = %ft_mem_qalloc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.j, i8 0, i64 %i.f, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !503
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store ptr %0, ptr %i.k, align 8, !tbaa !274
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !504  ; 2 uses
  %.not35 = icmp eq ptr %i.m, null
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %i.n = tail call i32 %i.m(ptr noundef nonnull %i.j, ptr noundef %1) #30 ; 2 uses
  %.not36 = icmp eq i32 %i.n, 0
  br i1 %.not36, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d, %select.unfold
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 3 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !279  ; 4 uses
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = add nsw i32 %i.p, 1                      ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 80 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !278  ; 6 uses
  %i.v = or i64 %i.s, %i.q
  %or.cond3.not.i = icmp sgt i64 %i.v, -1
  br i1 %or.cond3.not.i, label %bb.f, label %ft_mem_qrealloc.exit

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %i.r, 0
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !129
  tail call void %i.y(ptr noundef nonnull %i.e, ptr noundef nonnull %i.u) #30, !inline_history !149
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.z = icmp sgt i32 %i.p, 268435454
  br i1 %i.z, label %ft_mem_qrealloc.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp eq i32 %i.p, 0
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.h, align 8, !tbaa !109
  %i.ac = tail call ptr %i.ab(ptr noundef nonnull %i.e, i64 noundef 8) #30, !inline_history !150 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %ft_mem_qrealloc.exit, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ae = shl nuw nsw i64 %i.q, 3
  %i.af = shl nuw nsw i64 %i.s, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !151
  %i.ai = tail call ptr %i.ah(ptr noundef nonnull %i.e, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef %i.u) #30, !inline_history !150 ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %ft_mem_qrealloc.exit, label %bb.l

ft_mem_qrealloc.exit:                             ; preds = %bb.j, %bb.k, %bb.e, %bb.h
  %.134.i = phi ptr [ %i.u, %bb.h ], [ %i.u, %bb.k ], [ %i.u, %bb.e ], [ null, %bb.j ]
  %.1.i = phi i32 [ 10, %bb.h ], [ 64, %bb.k ], [ 6, %bb.e ], [ 64, %bb.j ]
  store ptr %.134.i, ptr %i.t, align 8, !tbaa !278
  br label %bb.n

bb.l:                                             ; preds = %bb.k, %bb.j
  %.134.i.ph = phi ptr [ %i.ai, %bb.k ], [ %i.ac, %bb.j ] ; 2 uses
  store ptr %.134.i.ph, ptr %i.t, align 8, !tbaa !278
  %i.aj = load i32, ptr %i.o, align 8, !tbaa !279 ; 2 uses
  %i.ak = add nsw i32 %i.aj, 1
  store i32 %i.ak, ptr %i.o, align 8, !tbaa !279
  %i.al = sext i32 %i.aj to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %.134.i.ph, i64 %i.al
  store ptr %i.j, ptr %i.am, align 8, !tbaa !280
  br label %ft_mem_alloc.exit

ft_mem_alloc.exit:                                ; preds = %ft_mem_qalloc.exit.thread.i, %ft_mem_qalloc.exit.i, %bb.l, %ft_cmap_done_internal.exit
  %.042 = phi i32 [ 0, %bb.l ], [ %.1, %ft_cmap_done_internal.exit ], [ 6, %ft_mem_qalloc.exit.thread.i ], [ 64, %ft_mem_qalloc.exit.i ] ; 2 uses
  %.0 = phi ptr [ %i.j, %bb.l ], [ null, %ft_cmap_done_internal.exit ], [ null, %ft_mem_qalloc.exit.thread.i ], [ null, %ft_mem_qalloc.exit.i ]
  %.not38 = icmp eq ptr %3, null
  br i1 %.not38, label %bb.p, label %bb.m

bb.m:                                             ; preds = %ft_mem_alloc.exit
  store ptr %.0, ptr %3, align 8, !tbaa !506
  br label %bb.p

bb.n:                                             ; preds = %ft_mem_qrealloc.exit, %bb.d
  %.1 = phi i32 [ %.1.i, %ft_mem_qrealloc.exit ], [ %i.n, %bb.d ]
  %i.an = load ptr, ptr %i.k, align 8, !tbaa !274
  %i.ao = load ptr, ptr %i.j, align 8, !tbaa !317
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 184
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !207 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !318 ; 2 uses
  %.not.i39 = icmp eq ptr %i.as, null
  br i1 %.not.i39, label %ft_cmap_done_internal.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void %i.as(ptr noundef nonnull %i.j) #30, !inline_history !14
  br label %ft_cmap_done_internal.exit
end_hunk_0
