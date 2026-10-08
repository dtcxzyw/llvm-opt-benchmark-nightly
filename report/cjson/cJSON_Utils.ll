Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cjson/original/cJSON_Utils?download=true
inline.NumInlined: 38
inline.NumDeleted: 11
begin_hunk_0_@cJSONUtils_FindPointerFromObjectTo:bb.a
bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.d, align 1
  br label %cJSONUtils_strdup.exit

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.03649 = load ptr, ptr %i.f, align 8, !tbaa !10 ; 2 uses
  %.not50 = icmp eq ptr %.03649, null
  br i1 %.not50, label %cJSONUtils_strdup.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.s
  %.03652 = phi ptr [ %.036, %bb.s ], [ %.03649, %bb.e ] ; 3 uses
  %.03751 = phi i64 [ %i.ad, %bb.s ], [ 0, %bb.e ] ; 2 uses
  %i.g = tail call ptr @cJSONUtils_FindPointerFromObjectTo(ptr noundef nonnull %.03652, ptr noundef %1) ; 8 uses
  %.not41 = icmp eq ptr %i.g, null
  br i1 %.not41, label %bb.s, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.h = tail call i32 @cJSON_IsArray(ptr noundef %0) #12
  %.not42 = icmp eq i32 %i.h, 0
  br i1 %.not42, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #13
  %i.j = add i64 %i.i, 22
  %i.k = tail call ptr @cJSON_malloc(i64 noundef %i.j) #12 ; 2 uses
  %i.l = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.k, ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %.03751, ptr noundef nonnull %i.g) #12 ; 0 uses
  tail call void @cJSON_free(ptr noundef nonnull %i.g) #12
  br label %cJSONUtils_strdup.exit

bb.h:                                             ; preds = %bb.f
  %i.m = tail call i32 @cJSON_IsObject(ptr noundef %0) #12
  %.not43 = icmp eq i32 %i.m, 0
  br i1 %.not43, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #13
  %i.o = getelementptr inbounds nuw i8, ptr %.03652, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %.06.i = phi ptr [ %i.p, %bb.i ], [ %i.s, %bb.l ] ; 2 uses
  %.0.i = phi i64 [ 0, %bb.i ], [ %i.t, %bb.l ]   ; 3 uses
  %i.q = load i8, ptr %.06.i, align 1, !tbaa !15
  switch i8 %i.q, label %bb.l [
    i8 0, label %pointer_encoded_length.exit
    i8 126, label %bb.k
    i8 47, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.r = add i64 %.0.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.i = phi i64 [ %i.r, %bb.k ], [ %.0.i, %bb.j ]
  %i.s = getelementptr inbounds nuw i8, ptr %.06.i, i64 1
  %i.t = add i64 %.1.i, 1
  br label %bb.j

pointer_encoded_length.exit:                      ; preds = %bb.j
  %i.u = add i64 %i.n, 2
  %i.v = add i64 %i.u, %.0.i
  %i.w = tail call ptr @cJSON_malloc(i64 noundef %i.v) #12 ; 4 uses
  store i8 47, ptr %i.w, align 1, !tbaa !15
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !14
  br label %bb.m

bb.m:                                             ; preds = %bb.q, %pointer_encoded_length.exit
  %.pn = phi ptr [ %i.w, %pointer_encoded_length.exit ], [ %.1.i45, %bb.q ] ; 3 uses
  %.0.i44 = phi ptr [ %i.x, %pointer_encoded_length.exit ], [ %i.ab, %bb.q ] ; 2 uses
  %.014.i = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 5 uses
  %i.y = load i8, ptr %.0.i44, align 1, !tbaa !15 ; 2 uses
  switch i8 %i.y, label %bb.p [
    i8 0, label %encode_string_as_pointer.exit
    i8 47, label %bb.n
    i8 126, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  store i8 126, ptr %.014.i, align 1, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 2 uses
  store i8 49, ptr %i.z, align 1, !tbaa !15
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  store i8 126, ptr %.014.i, align 1, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 2 uses
  store i8 48, ptr %i.aa, align 1, !tbaa !15
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  store i8 %i.y, ptr %.014.i, align 1, !tbaa !15
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1.i45 = phi ptr [ %i.z, %bb.n ], [ %i.aa, %bb.o ], [ %.014.i, %bb.p ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i44, i64 1
  br label %bb.m

encode_string_as_pointer.exit:                    ; preds = %bb.m
  store i8 0, ptr %.014.i, align 1, !tbaa !15
  %i.ac = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(1) %i.g) #12 ; 0 uses
  tail call void @cJSON_free(ptr noundef nonnull %i.g) #12
  br label %cJSONUtils_strdup.exit

bb.r:                                             ; preds = %bb.h
  tail call void @cJSON_free(ptr noundef nonnull %i.g) #12
  br label %cJSONUtils_strdup.exit

bb.s:                                             ; preds = %.lr.ph
  %i.ad = add i64 %.03751, 1
  %.036 = load ptr, ptr %.03652, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq ptr %.036, null
  br i1 %.not, label %cJSONUtils_strdup.exit, label %.lr.ph

cJSONUtils_strdup.exit:                           ; preds = %bb.s, %bb.e, %bb.g, %encode_string_as_pointer.exit, %bb.r, %bb.d, %bb.c, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ %i.k, %bb.g ], [ %i.d, %bb.d ], [ null, %bb.c ], [ null, %bb.r ], [ %i.w, %encode_string_as_pointer.exit ], [ null, %bb.e ], [ null, %bb.s ]
  ret ptr %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @cJSON_IsArray(ptr noundef) local_unnamed_addr #2

declare ptr @cJSON_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @cJSON_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @cJSON_IsObject(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define ptr @cJSONUtils_GetPointer(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @get_item_from_pointer(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @get_item_from_pointer(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.critedge38, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !15
  %i.c = icmp eq i8 %i.b, 47
  %i.d = icmp ne ptr %0, null
  %i.e = and i1 %i.d, %i.c
  br i1 %i.e, label %.lr.ph60, label %.critedge38

.lr.ph60:                                         ; preds = %.preheader
  %.not38.i = icmp eq i32 %2, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph60, %.critedge2
  %.02259 = phi ptr [ %0, %.lr.ph60 ], [ %.3, %.critedge2 ] ; 4 uses
  %.02758 = phi ptr [ %1, %.lr.ph60 ], [ %.128, %.critedge2 ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02758, i64 1 ; 6 uses
  %i.g = tail call i32 @cJSON_IsArray(ptr noundef nonnull %.02259) #12
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.f, align 1, !tbaa !15    ; 4 uses
  %i.i = icmp eq i8 %i.h, 48
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.02758, i64 2
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15
  switch i8 %i.k, label %.critedge38 [
    i8 0, label %.lr.ph.i.preheader
    i8 47, label %.lr.ph.i.preheader
  ]

bb.e:                                             ; preds = %bb.c
  %i.l = add i8 %i.h, -48
  %or.cond25.i = icmp ult i8 %i.l, 10
  br i1 %or.cond25.i, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %bb.e, %bb.d, %bb.d
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.m = phi i8 [ %i.t, %.lr.ph.i ], [ %i.h, %.lr.ph.i.preheader ]
  %.027.i = phi i64 [ %i.r, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.01726.i = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.n = zext nneg i8 %i.m to i64
  %i.o = mul i64 %.01726.i, 10
  %i.p = add nsw i64 %i.n, -48
  %i.q = add i64 %i.p, %i.o                       ; 2 uses
  %i.r = add i64 %.027.i, 1                       ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !15    ; 3 uses
  %i.u = add i8 %i.t, -48
  %or.cond.i = icmp ult i8 %i.u, 10
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %bb.e
  %.017.lcssa.i = phi i64 [ 0, %bb.e ], [ %i.q, %.lr.ph.i ]
  %.lcssa.i = phi i8 [ %i.h, %bb.e ], [ %i.t, %.lr.ph.i ]
  switch i8 %.lcssa.i, label %.critedge38 [
    i8 0, label %decode_array_index_from_pointer.exit
    i8 47, label %decode_array_index_from_pointer.exit
  ]

decode_array_index_from_pointer.exit:             ; preds = %.critedge.i, %.critedge.i
  %i.v = getelementptr inbounds nuw i8, ptr %.02259, i64 16
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %decode_array_index_from_pointer.exit
  %.06.i = phi i64 [ %.017.lcssa.i, %decode_array_index_from_pointer.exit ], [ %i.z, %bb.f ] ; 2 uses
  %.0.in.i = phi ptr [ %i.v, %decode_array_index_from_pointer.exit ], [ %.0.i, %bb.f ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !10 ; 3 uses
  %i.w = icmp ne ptr %.0.i, null
  %i.x = icmp ne i64 %.06.i, 0
  %i.y = select i1 %i.w, i1 %i.x, i1 false
  %i.z = add i64 %.06.i, -1
  br i1 %i.y, label %bb.f, label %.critedge

bb.g:                                             ; preds = %bb.b
  %i.aa = tail call i32 @cJSON_IsObject(ptr noundef nonnull %.02259) #12
  %.not31 = icmp eq i32 %i.aa, 0
  br i1 %.not31, label %.critedge38, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %.02259, i64 16
  %.254 = load ptr, ptr %i.ab, align 8, !tbaa !10 ; 2 uses
  %.not3255 = icmp eq ptr %.254, null
  br i1 %.not3255, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.backedge
  %.256 = phi ptr [ %.2, %.backedge ], [ %.254, %bb.h ] ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.256, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %.backedge, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !15  ; 3 uses
  %.not50.i = icmp eq i8 %i.af, 0
  br i1 %.not50.i, label %.critedge.i42, label %.lr.ph.i39

.lr.ph.i39:                                       ; preds = %.preheader.i
  br i1 %.not38.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i39, %bb.l
  %i.ag = phi i8 [ %i.au, %bb.l ], [ %i.af, %.lr.ph.i39 ] ; 3 uses
  %.02752.us.i = phi ptr [ %i.as, %bb.l ], [ %i.ad, %.lr.ph.i39 ]
  %.02851.us.i = phi ptr [ %i.at, %bb.l ], [ %i.f, %.lr.ph.i39 ] ; 5 uses
  %i.ah = load i8, ptr %.02851.us.i, align 1, !tbaa !15 ; 2 uses
  switch i8 %i.ah, label %bb.k [
    i8 0, label %.critedge.i42.thr_comm
    i8 47, label %.critedge.i42.thr_comm
    i8 126, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.split.us.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.02851.us.i, i64 1 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !15  ; 2 uses
  %.not41.us.i = icmp eq i8 %i.aj, 48
  %.not42.us.i = icmp eq i8 %i.ag, 126
  %or.cond.us.i = and i1 %.not42.us.i, %.not41.us.i
  br i1 %or.cond.us.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not43.us.i = icmp eq i8 %i.aj, 49
  %.not44.us.i = icmp eq i8 %i.ag, 47
  %or.cond47.us.i = and i1 %.not44.us.i, %.not43.us.i
  br i1 %or.cond47.us.i, label %bb.l, label %.backedge

bb.k:                                             ; preds = %.lr.ph.split.us.i
  %i.ak = tail call ptr @__ctype_tolower_loc() #14
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !17 ; 2 uses
  %i.am = zext i8 %i.ag to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !18
  %i.ap = zext i8 %i.ah to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !18
  %.not39.us.i = icmp eq i32 %i.ao, %i.ar
  br i1 %.not39.us.i, label %bb.l, label %.backedge

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %.1.us.i = phi ptr [ %i.ai, %bb.j ], [ %.02851.us.i, %bb.k ], [ %i.ai, %bb.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.02752.us.i, i64 1 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.1.us.i, i64 1 ; 2 uses
  %i.au = load i8, ptr %i.as, align 1, !tbaa !15  ; 2 uses
  %.not.us.i = icmp eq i8 %i.au, 0
  br i1 %.not.us.i, label %.critedge.i42, label %.lr.ph.split.us.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i39, %bb.o
  %i.av = phi i8 [ %i.bb, %bb.o ], [ %i.af, %.lr.ph.i39 ] ; 3 uses
  %.02752.i = phi ptr [ %i.az, %bb.o ], [ %i.ad, %.lr.ph.i39 ]
  %.02851.i = phi ptr [ %i.ba, %bb.o ], [ %i.f, %.lr.ph.i39 ] ; 5 uses
  %i.aw = load i8, ptr %.02851.i, align 1, !tbaa !15 ; 2 uses
  switch i8 %i.aw, label %.critedge46.i [
    i8 0, label %.critedge.i42.thr_comm
    i8 47, label %.critedge.i42.thr_comm
    i8 126, label %bb.m
  ]

bb.m:                                             ; preds = %.lr.ph.split.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.02851.i, i64 1 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15  ; 2 uses
  %.not41.i = icmp eq i8 %i.ay, 48
  %.not42.i = icmp eq i8 %i.av, 126
  %or.cond.i40 = and i1 %.not42.i, %.not41.i
  br i1 %or.cond.i40, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not43.i = icmp eq i8 %i.ay, 49
  %.not44.i = icmp eq i8 %i.av, 47
  %or.cond47.i = and i1 %.not44.i, %.not43.i
  br i1 %or.cond47.i, label %bb.o, label %.backedge

.critedge46.i:                                    ; preds = %.lr.ph.split.i
  %.not40.i = icmp eq i8 %i.av, %i.aw
  br i1 %.not40.i, label %bb.o, label %.backedge

bb.o:                                             ; preds = %.critedge46.i, %bb.n, %bb.m
  %.1.i = phi ptr [ %i.ax, %bb.n ], [ %.02851.i, %.critedge46.i ], [ %i.ax, %bb.m ]
  %i.az = getelementptr inbounds nuw i8, ptr %.02752.i, i64 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 2 uses
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !15  ; 2 uses
  %.not.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i, label %.critedge.i42, label %.lr.ph.split.i

.critedge.i42.thr_comm:                           ; preds = %.lr.ph.split.i, %.lr.ph.split.i, %.lr.ph.split.us.i, %.lr.ph.split.us.i
  %.028.lcssa.i.ph = phi ptr [ %.02851.us.i, %.lr.ph.split.us.i ], [ %.02851.us.i, %.lr.ph.split.us.i ], [ %.02851.i, %.lr.ph.split.i ], [ %.02851.i, %.lr.ph.split.i ]
  %i.bc = load i8, ptr %.028.lcssa.i.ph, align 1, !tbaa !15
  switch i8 %i.bc, label %.critedge [
    i8 47, label %.backedge
    i8 0, label %.backedge
  ]

.critedge.i42:                                    ; preds = %bb.o, %bb.l, %.preheader.i
  %.028.lcssa.i = phi ptr [ %i.f, %.preheader.i ], [ %i.at, %bb.l ], [ %i.ba, %bb.o ]
  %i.bd = load i8, ptr %.028.lcssa.i, align 1, !tbaa !15
  switch i8 %i.bd, label %.backedge [
    i8 47, label %.critedge
    i8 0, label %.critedge
  ]

.backedge:                                        ; preds = %.critedge46.i, %bb.n, %bb.k, %bb.j, %.critedge.i42, %.critedge.i42.thr_comm, %.critedge.i42.thr_comm, %.lr.ph
  %.2 = load ptr, ptr %.256, align 8, !tbaa !10   ; 2 uses
  %.not32 = icmp eq ptr %.2, null
  br i1 %.not32, label %.critedge, label %.lr.ph

.critedge:                                        ; preds = %bb.f, %.backedge, %.critedge.i42.thr_comm, %.critedge.i42, %.critedge.i42, %bb.h
  %.3 = phi ptr [ %.256, %.critedge.i42 ], [ null, %bb.h ], [ %.256, %.critedge.i42.thr_comm ], [ null, %.backedge ], [ %.256, %.critedge.i42 ], [ %.0.i, %bb.f ] ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.critedge
  %.128 = phi ptr [ %i.f, %.critedge ], [ %i.bf, %bb.q ] ; 3 uses
  %i.be = load i8, ptr %.128, align 1, !tbaa !15  ; 2 uses
  switch i8 %i.be, label %bb.q [
    i8 0, label %.critedge2
    i8 47, label %.critedge2
  ]

bb.q:                                             ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %.128, i64 1
  br label %bb.p

.critedge2:                                       ; preds = %bb.p, %bb.p
  %i.bg = icmp eq i8 %i.be, 47
  %i.bh = icmp ne ptr %.3, null
  %i.bi = and i1 %i.bh, %i.bg
  br i1 %i.bi, label %bb.b, label %.critedge38

.critedge38:                                      ; preds = %bb.g, %.critedge2, %bb.d, %.critedge.i, %.preheader, %bb.a
  %.326 = phi ptr [ null, %bb.a ], [ %0, %.preheader ], [ null, %bb.d ], [ %.3, %.critedge2 ], [ null, %bb.g ], [ null, %.critedge.i ]
  ret ptr %.326
}

; Function Attrs: nounwind sspstrong uwtable
define ptr @cJSONUtils_GetPointerCaseSensitive(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @get_item_from_pointer(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define range(i32 0, 14) i32 @cJSONUtils_ApplyPatches(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @cJSON_IsArray(ptr noundef %1) #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not12 = icmp eq ptr %1, null
  br i1 %.not12, label %.loopexit, label %bb.c
end_hunk_0
begin_hunk_1_@merge_patch:bb.a
  br label %.loopexit

bb.j:                                             ; preds = %.split
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.s = tail call i32 @cJSON_AddItemToObject(ptr noundef %.032, ptr noundef %i.r, ptr noundef nonnull %i.q) #12 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.030 = load ptr, ptr %.03043, align 8, !tbaa !10 ; 2 uses
  %.not36 = icmp eq ptr %.030, null
  br i1 %.not36, label %.loopexit, label %.lr.ph.split.split

.loopexit:                                        ; preds = %bb.k, %bb.h, %bb.e, %.thread, %bb.b
  %.3 = phi ptr [ null, %.thread ], [ %i.b, %bb.b ], [ %.032, %bb.e ], [ %.032, %bb.h ], [ %.032, %bb.k ]
  ret ptr %.3
}

; Function Attrs: nounwind sspstrong uwtable
define ptr @cJSONUtils_MergePatchCaseSensitive(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @merge_patch(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define ptr @cJSONUtils_GenerateMergePatch(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @generate_merge_patch(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @generate_merge_patch(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @cJSON_CreateNull() #12
  br label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.c = tail call i32 @cJSON_IsObject(ptr noundef nonnull %1) #12
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @cJSON_IsObject(ptr noundef %0) #12
  %.not43 = icmp eq i32 %i.d, 0
  br i1 %.not43, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = tail call ptr @cJSON_Duplicate(ptr noundef nonnull %1, i32 noundef 1) #12
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  %i.f = icmp eq ptr %0, null
  br i1 %i.f, label %sort_object.exit48, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.i = tail call fastcc ptr @sort_list(ptr noundef %i.h, i32 noundef range(i32 0, 2) %2)
  store ptr %i.i, ptr %i.g, align 8, !tbaa !19
  br label %sort_object.exit48

sort_object.exit48:                               ; preds = %bb.f, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !19
  %i.l = tail call fastcc ptr @sort_list(ptr noundef %i.k, i32 noundef range(i32 0, 2) %2) ; 3 uses
  store ptr %i.l, ptr %i.j, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !19   ; 2 uses
  %i.o = tail call ptr @cJSON_CreateObject() #12  ; 7 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.r, label %.preheader

.preheader:                                       ; preds = %sort_object.exit48
  %i.q = icmp ne ptr %i.n, null                   ; 2 uses
  %i.r = icmp ne ptr %i.l, null                   ; 2 uses
  %i.s = select i1 %i.q, i1 true, i1 %i.r
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %bb.p
  %i.t = phi i1 [ %i.au, %bb.p ], [ %i.r, %.preheader ]
  %i.u = phi i1 [ %i.at, %bb.p ], [ %i.q, %.preheader ] ; 2 uses
  %.03850 = phi ptr [ %.1, %bb.p ], [ %i.l, %.preheader ] ; 9 uses
  %.03949 = phi ptr [ %.140, %bb.p ], [ %i.n, %.preheader ] ; 7 uses
  %i.v = select i1 %i.u, i1 %i.t, i1 false
  %.mux = select i1 %i.u, i32 -1, i32 1
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %.03949, i64 56
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %.03850, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !14
  %i.aa = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) %i.z) #13
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h
  %.0 = phi i32 [ %i.aa, %bb.h ], [ %.mux, %.lr.ph ] ; 2 uses
  %i.ab = icmp slt i32 %.0, 0
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.03949, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.ae = tail call ptr @cJSON_CreateNull() #12
  %i.af = tail call i32 @cJSON_AddItemToObject(ptr noundef nonnull %i.o, ptr noundef %i.ad, ptr noundef %i.ae) #12 ; 0 uses
  %i.ag = load ptr, ptr %.03949, align 8, !tbaa !20
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  %.not44 = icmp eq i32 %.0, 0
  br i1 %.not44, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %.03850, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !14
  %i.aj = tail call ptr @cJSON_Duplicate(ptr noundef %.03850, i32 noundef 1) #12
  %i.ak = tail call i32 @cJSON_AddItemToObject(ptr noundef nonnull %i.o, ptr noundef %i.ai, ptr noundef %i.aj) #12 ; 0 uses
  %i.al = load ptr, ptr %.03850, align 8, !tbaa !20
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.am = tail call fastcc i32 @compare_json(ptr noundef %.03949, ptr noundef %.03850, i32 noundef %2)
  %.not45 = icmp eq i32 %i.am, 0
  br i1 %.not45, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %.03850, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !14
  %i.ap = tail call fastcc ptr @generate_merge_patch(ptr noundef %.03949, ptr noundef %.03850, i32 noundef 0), !inline_history !28
  %i.aq = tail call i32 @cJSON_AddItemToObject(ptr noundef nonnull %i.o, ptr noundef %i.ao, ptr noundef %i.ap) #12 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ar = load ptr, ptr %.03949, align 8, !tbaa !20
  %i.as = load ptr, ptr %.03850, align 8, !tbaa !20
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o, %bb.j
  %.140 = phi ptr [ %i.ag, %bb.j ], [ %.03949, %bb.l ], [ %i.ar, %bb.o ] ; 2 uses
  %.1 = phi ptr [ %.03850, %bb.j ], [ %i.al, %bb.l ], [ %i.as, %bb.o ] ; 2 uses
  %i.at = icmp ne ptr %.140, null                 ; 2 uses
  %i.au = icmp ne ptr %.1, null                   ; 2 uses
  %i.av = select i1 %i.at, i1 true, i1 %i.au
  br i1 %i.av, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  tail call void @cJSON_Delete(ptr noundef nonnull %i.o) #12
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %sort_object.exit48, %bb.q, %bb.e, %bb.b
  %.041 = phi ptr [ %i.b, %bb.b ], [ %i.e, %bb.e ], [ null, %bb.q ], [ null, %sort_object.exit48 ], [ %i.o, %._crit_edge ]
  ret ptr %.041
}

; Function Attrs: nounwind sspstrong uwtable
define ptr @cJSONUtils_GenerateMergePatchCaseSensitive(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @generate_merge_patch(ptr noundef %0, ptr noundef %1, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @decode_array_index_from_pointer(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !15      ; 4 uses
  %i.b = icmp eq i8 %i.a, 48
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !15
  switch i8 %i.d, label %bb.e [
    i8 0, label %.lr.ph.preheader
    i8 47, label %.lr.ph.preheader
  ]

bb.c:                                             ; preds = %bb.a
  %i.e = add i8 %i.a, -48
  %or.cond25 = icmp ult i8 %i.e, 10
  br i1 %or.cond25, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.b, %bb.c
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i8 [ %i.m, %.lr.ph ], [ %i.a, %.lr.ph.preheader ]
  %.027 = phi i64 [ %i.k, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.01726 = phi i64 [ %i.j, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %i.g = zext nneg i8 %i.f to i64
  %i.h = mul i64 %.01726, 10
  %i.i = add i64 %i.h, -48
  %i.j = add i64 %i.i, %i.g                       ; 2 uses
  %i.k = add i64 %.027, 1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !15    ; 3 uses
  %i.n = add i8 %i.m, -48
  %or.cond = icmp ult i8 %i.n, 10
  br i1 %or.cond, label %.lr.ph, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.c
  %.017.lcssa = phi i64 [ 0, %bb.c ], [ %i.j, %.lr.ph ]
  %.lcssa = phi i8 [ %i.a, %bb.c ], [ %i.m, %.lr.ph ]
  switch i8 %.lcssa, label %bb.e [
    i8 0, label %bb.d
    i8 47, label %bb.d
  ]

bb.d:                                             ; preds = %.critedge, %.critedge
  store i64 %.017.lcssa, ptr %1, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.b, %bb.d
  %.018 = phi i32 [ 1, %bb.d ], [ 0, %bb.b ], [ 0, %.critedge ]
  ret i32 %.018
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_tolower_loc() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @get_object_item(ptr noundef nonnull %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @cJSON_GetObjectItemCaseSensitive(ptr noundef nonnull %0, ptr noundef %1) #12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @cJSON_GetObjectItem(ptr noundef nonnull %0, ptr noundef %1) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.c ]
  ret ptr %.0
}

declare i32 @cJSON_IsString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @compare_json(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !24
  %i.e = and i32 %i.d, 255                        ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !24
  %i.h = and i32 %i.g, 255
  %.not = icmp eq i32 %i.e, %i.h
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = tail call range(i32 0, 9) i32 @llvm.ctpop.i32(i32 %i.e)
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %.split, label %.thread

.split:                                           ; preds = %bb.c
  %i.k = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.e, i1 true)
  switch i32 %i.k, label %.thread [
    i32 3, label %bb.d
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %sort_object.exit67
  ]

bb.d:                                             ; preds = %.split
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !25
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i32, ptr %i.n, align 8, !tbaa !25
  %.not62 = icmp eq i32 %i.m, %i.o
  br i1 %.not62, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load double, ptr %i.p, align 8, !tbaa !26 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load double, ptr %i.r, align 8, !tbaa !26 ; 2 uses
  %i.t = tail call double @llvm.fabs.f64(double %i.q) ; 2 uses
  %i.u = tail call double @llvm.fabs.f64(double %i.s) ; 2 uses
  %i.v = fcmp ogt double %i.t, %i.u
  %..i = select i1 %i.v, double %i.t, double %i.u
  %i.w = fsub double %i.q, %i.s
  %i.x = tail call double @llvm.fabs.f64(double %i.w)
  %i.y = fmul double %..i, f0x3CB0000000000000
  %i.z = fcmp ole double %i.x, %i.y
  br label %.thread

bb.f:                                             ; preds = %.split
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !21
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(1) %i.ad) #13
  %.not61 = icmp eq i32 %i.ae, 0
  br label %.thread

bb.g:                                             ; preds = %.split
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  %.053.in = phi ptr [ %i.af, %bb.g ], [ %.053, %bb.i ]
  %.051.in = phi ptr [ %i.ag, %bb.g ], [ %.051, %bb.i ]
  %.051 = load ptr, ptr %.051.in, align 8, !tbaa !10 ; 3 uses
  %.053 = load ptr, ptr %.053.in, align 8, !tbaa !10 ; 3 uses
  %i.ah = icmp ne ptr %.053, null                 ; 2 uses
  %i.ai = icmp ne ptr %.051, null                 ; 2 uses
  %i.aj = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call fastcc i32 @compare_json(ptr noundef nonnull %.053, ptr noundef nonnull %.051, i32 noundef %2)
  %.not60.not = icmp eq i32 %i.ak, 0
  br i1 %.not60.not, label %.thread, label %bb.h

bb.j:                                             ; preds = %bb.h
  %or.cond3 = select i1 %i.ah, i1 true, i1 %i.ai
  %not.or.cond3 = xor i1 %or.cond3, true
  br label %.thread

sort_object.exit67:                               ; preds = %.split
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !19
  %i.an = tail call fastcc ptr @sort_list(ptr noundef %i.am, i32 noundef range(i32 0, 2) %2)
  store ptr %i.an, ptr %i.al, align 8, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19
  %i.aq = tail call fastcc ptr @sort_list(ptr noundef %i.ap, i32 noundef range(i32 0, 2) %2)
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !19
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %sort_object.exit67.split.us, label %sort_object.exit67.split

sort_object.exit67.split.us:                      ; preds = %sort_object.exit67, %compare_strings.exit.thread.us
  %.154.in.us = phi ptr [ %.154.us, %compare_strings.exit.thread.us ], [ %i.al, %sort_object.exit67 ]
  %.152.in.us = phi ptr [ %.152.us, %compare_strings.exit.thread.us ], [ %i.ao, %sort_object.exit67 ]
  %.152.us = load ptr, ptr %.152.in.us, align 8, !tbaa !10 ; 4 uses
  %.154.us = load ptr, ptr %.154.in.us, align 8, !tbaa !10 ; 4 uses
  %i.ar = icmp ne ptr %.154.us, null              ; 2 uses
  %i.as = icmp ne ptr %.152.us, null              ; 2 uses
  %i.at = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %i.at, label %bb.k, label %.split85.us

bb.k:                                             ; preds = %sort_object.exit67.split.us
  %i.au = getelementptr inbounds nuw i8, ptr %.154.us, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.152.us, i64 56
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !14 ; 4 uses
  %i.ay = icmp eq ptr %i.av, null
  %i.az = icmp eq ptr %i.ax, null
  %or.cond.i.us = or i1 %i.ay, %i.az
  br i1 %or.cond.i.us, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = icmp eq ptr %i.av, %i.ax
  br i1 %i.ba, label %compare_strings.exit.thread.us, label %.preheader.i.us

.preheader.i.us:                                  ; preds = %bb.l
  %i.bb = tail call ptr @__ctype_tolower_loc() #14
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !17 ; 4 uses
  %i.bd = load i8, ptr %i.av, align 1, !tbaa !15  ; 2 uses
  %i.be = zext i8 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !18
  %i.bh = load i8, ptr %i.ax, align 1, !tbaa !15
  %i.bi = zext i8 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !18
  %i.bl = icmp eq i32 %i.bg, %i.bk
  br i1 %i.bl, label %.lr.ph.i.us, label %.thread

.lr.ph.i.us:                                      ; preds = %.preheader.i.us, %bb.m
  %i.bm = phi i8 [ %i.bq, %bb.m ], [ %i.bd, %.preheader.i.us ]
  %.02333.i.us = phi ptr [ %i.bo, %bb.m ], [ %i.av, %.preheader.i.us ]
  %.02432.i.us = phi ptr [ %i.bp, %bb.m ], [ %i.ax, %.preheader.i.us ]
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %compare_strings.exit.thread.us, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.us
  %i.bo = getelementptr inbounds nuw i8, ptr %.02333.i.us, i64 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.02432.i.us, i64 1 ; 2 uses
  %i.bq = load i8, ptr %i.bo, align 1, !tbaa !15  ; 2 uses
  %i.br = zext i8 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.br
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !18
  %i.bu = load i8, ptr %i.bp, align 1, !tbaa !15
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !18
  %i.by = icmp eq i32 %i.bt, %i.bx
  br i1 %i.by, label %.lr.ph.i.us, label %.thread

compare_strings.exit.thread.us:                   ; preds = %.lr.ph.i.us, %bb.l
  %i.bz = tail call fastcc i32 @compare_json(ptr noundef nonnull %.154.us, ptr noundef nonnull %.152.us, i32 noundef 0)
  %.not59.not.us = icmp eq i32 %i.bz, 0
  br i1 %.not59.not.us, label %.thread, label %sort_object.exit67.split.us

sort_object.exit67.split:                         ; preds = %sort_object.exit67, %compare_strings.exit.thread
  %.154.in = phi ptr [ %.154, %compare_strings.exit.thread ], [ %i.al, %sort_object.exit67 ]
  %.152.in = phi ptr [ %.152, %compare_strings.exit.thread ], [ %i.ao, %sort_object.exit67 ]
  %.152 = load ptr, ptr %.152.in, align 8, !tbaa !10 ; 4 uses
  %.154 = load ptr, ptr %.154.in, align 8, !tbaa !10 ; 4 uses
  %i.ca = icmp ne ptr %.154, null                 ; 2 uses
  %i.cb = icmp ne ptr %.152, null                 ; 2 uses
  %i.cc = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %i.cc, label %bb.n, label %.split85.us

bb.n:                                             ; preds = %sort_object.exit67.split
  %i.cd = getelementptr inbounds nuw i8, ptr %.154, i64 56
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !14 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.152, i64 56
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !14 ; 3 uses
  %i.ch = icmp eq ptr %i.ce, null
  %i.ci = icmp eq ptr %i.cg, null
  %or.cond.i = or i1 %i.ch, %i.ci
  br i1 %or.cond.i, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = icmp eq ptr %i.ce, %i.cg
  br i1 %i.cj, label %compare_strings.exit.thread, label %compare_strings.exit

compare_strings.exit:                             ; preds = %bb.o
  %i.ck = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ce, ptr noundef nonnull readonly dereferenceable(1) %i.cg) #13
  %.not58 = icmp eq i32 %i.ck, 0
  br i1 %.not58, label %compare_strings.exit.thread, label %.thread

compare_strings.exit.thread:                      ; preds = %bb.o, %compare_strings.exit
  %i.cl = tail call fastcc i32 @compare_json(ptr noundef nonnull %.154, ptr noundef nonnull %.152, i32 noundef 1)
  %.not59.not = icmp eq i32 %i.cl, 0
  br i1 %.not59.not, label %.thread, label %sort_object.exit67.split

.split85.us:                                      ; preds = %sort_object.exit67.split, %sort_object.exit67.split.us
  %.us-phi = phi i1 [ %i.ar, %sort_object.exit67.split.us ], [ %i.ca, %sort_object.exit67.split ]
  %.us-phi86 = phi i1 [ %i.as, %sort_object.exit67.split.us ], [ %i.cb, %sort_object.exit67.split ]
  %or.cond5 = select i1 %.us-phi, i1 true, i1 %.us-phi86
  %not.or.cond5 = xor i1 %or.cond5, true
  br label %.thread

.thread:                                          ; preds = %compare_strings.exit.thread, %compare_strings.exit, %bb.n, %compare_strings.exit.thread.us, %bb.k, %.preheader.i.us, %bb.m, %bb.i, %bb.e, %bb.c, %.split, %.split85.us, %bb.j, %bb.f, %bb.d, %bb.a, %bb.b
  %.4.shrunk = phi i1 [ false, %bb.b ], [ %not.or.cond5, %.split85.us ], [ false, %bb.a ], [ true, %bb.c ], [ %.not61, %bb.f ], [ false, %bb.d ], [ true, %.split ], [ %not.or.cond3, %bb.j ], [ %i.z, %bb.e ], [ false, %compare_strings.exit.thread.us ], [ false, %bb.m ], [ false, %bb.i ], [ false, %.preheader.i.us ], [ false, %bb.k ], [ false, %bb.n ], [ false, %compare_strings.exit ], [ false, %compare_strings.exit.thread ]
  %.4 = zext i1 %.4.shrunk to i32
  ret i32 %.4
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @overwrite_item(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef readonly byval(%struct.cJSON) align 8 captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @cJSON_free(ptr noundef nonnull %i.c) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not11 = icmp eq ptr %i.e, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @cJSON_free(ptr noundef nonnull %i.e) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %.not12 = icmp eq ptr %i.g, null
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @cJSON_Delete(ptr noundef nonnull %i.g) #12
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.h
  ret void
}

declare ptr @cJSON_Duplicate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @detach_path(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #13
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %i.c = tail call ptr @cJSON_malloc(i64 noundef %i.b) #12 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %detach_item_from_array.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull readonly align 1 %1, i64 %i.b, i1 false)
  %i.e = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 47) #13 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %detach_item_from_array.exit.thread34, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.e, align 1, !tbaa !15
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 5 uses
  %i.h = tail call fastcc ptr @get_item_from_pointer(ptr noundef %0, ptr noundef nonnull %i.c, i32 noundef %2) ; 4 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %bb.g
  %.012.i = phi ptr [ %i.n, %bb.g ], [ %i.g, %bb.c ] ; 3 uses
  %.0.i = phi ptr [ %i.m, %bb.g ], [ %i.g, %bb.c ] ; 4 uses
  %i.i = load i8, ptr %.012.i, align 1, !tbaa !15
  switch i8 %i.i, label %bb.g [
    i8 0, label %bb.h
    i8 126, label %bb.d
  ]

bb.d:                                             ; preds = %.preheader.i
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 3 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !15
  switch i8 %i.k, label %decode_pointer_inplace.exit [
    i8 48, label %bb.e
    i8 49, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  store i8 126, ptr %.0.i, align 1, !tbaa !15
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  store i8 47, ptr %i.l, align 1, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %.preheader.i
  %.1.i = phi ptr [ %.012.i, %.preheader.i ], [ %i.j, %bb.f ], [ %i.j, %bb.e ]
  %i.m = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  br label %.preheader.i

bb.h:                                             ; preds = %.preheader.i
  store i8 0, ptr %.0.i, align 1, !tbaa !15
  br label %decode_pointer_inplace.exit

decode_pointer_inplace.exit:                      ; preds = %bb.d, %bb.h
  %i.o = tail call i32 @cJSON_IsArray(ptr noundef %i.h) #12
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.s, label %bb.i

bb.i:                                             ; preds = %decode_pointer_inplace.exit
  %i.p = load i8, ptr %i.g, align 1, !tbaa !15    ; 4 uses
  %i.q = icmp eq i8 %i.p, 48
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !15
  switch i8 %i.s, label %detach_item_from_array.exit.thread34 [
    i8 0, label %.lr.ph.i.preheader
    i8 47, label %.lr.ph.i.preheader
  ]

bb.k:                                             ; preds = %bb.i
  %i.t = add i8 %i.p, -48
  %or.cond25.i = icmp ult i8 %i.t, 10
  br i1 %or.cond25.i, label %.lr.ph.i.preheader, label %.critedge.i

.lr.ph.i.preheader:                               ; preds = %bb.k, %bb.j, %bb.j
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.u = phi i8 [ %i.ab, %.lr.ph.i ], [ %i.p, %.lr.ph.i.preheader ]
  %.027.i = phi i64 [ %i.z, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %.01726.i = phi i64 [ %i.y, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader ]
  %i.v = zext nneg i8 %i.u to i64
  %i.w = mul i64 %.01726.i, 10
  %i.x = add nsw i64 %i.v, -48
  %i.y = add i64 %i.x, %i.w                       ; 2 uses
  %i.z = add i64 %.027.i, 1                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15  ; 3 uses
  %i.ac = add i8 %i.ab, -48
  %or.cond.i = icmp ult i8 %i.ac, 10
  br i1 %or.cond.i, label %.lr.ph.i, label %.critedge.i

.critedge.i:                                      ; preds = %.lr.ph.i, %bb.k
  %.017.lcssa.i = phi i64 [ 0, %bb.k ], [ %i.y, %.lr.ph.i ]
  %.lcssa.i = phi i8 [ %i.p, %bb.k ], [ %i.ab, %.lr.ph.i ]
  switch i8 %.lcssa.i, label %detach_item_from_array.exit.thread34 [
    i8 0, label %decode_array_index_from_pointer.exit
    i8 47, label %decode_array_index_from_pointer.exit
  ]

decode_array_index_from_pointer.exit:             ; preds = %.critedge.i, %.critedge.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %decode_array_index_from_pointer.exit
  %.023.i = phi i64 [ %.017.lcssa.i, %decode_array_index_from_pointer.exit ], [ %i.ah, %bb.l ] ; 2 uses
  %.0.in.i = phi ptr [ %i.ad, %decode_array_index_from_pointer.exit ], [ %.0.i28, %bb.l ]
  %.0.i28 = load ptr, ptr %.0.in.i, align 8, !tbaa !10 ; 8 uses
  %i.ae = icmp ne ptr %.0.i28, null               ; 2 uses
  %i.af = icmp ne i64 %.023.i, 0
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  %i.ah = add i64 %.023.i, -1
  br i1 %i.ag, label %bb.l, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ae, label %bb.n, label %detach_item_from_array.exit.thread34

bb.n:                                             ; preds = %bb.m
  %i.ai = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp eq ptr %.0.i28, %i.ai
  %i.aj = load ptr, ptr %.0.i28, align 8, !tbaa !20 ; 6 uses
  br i1 %.not.i, label %bb.o, label %.thread29.i

bb.o:                                             ; preds = %bb.n
  %.not27.i = icmp eq ptr %i.aj, null
  br i1 %.not27.i, label %bb.p, label %.thread.i

.thread29.i:                                      ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i28, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !27 ; 3 uses
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !20
  %.not2730.i = icmp eq ptr %i.aj, null
  br i1 %.not2730.i, label %bb.q, label %.thread28.i

.thread.i:                                        ; preds = %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i28, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !27
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !27
  br label %bb.p

.thread28.i:                                      ; preds = %.thread29.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.al, ptr %i.ap, align 8, !tbaa !27
  br label %bb.r

bb.p:                                             ; preds = %.thread.i, %bb.o
  store ptr %i.aj, ptr %i.ad, align 8, !tbaa !19
  br label %bb.r

bb.q:                                             ; preds = %.thread29.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.al, ptr %i.aq, align 8, !tbaa !27
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %.thread28.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i28, i8 0, i64 16, i1 false)
  br label %detach_item_from_array.exit.thread34

bb.s:                                             ; preds = %decode_pointer_inplace.exit
  %i.ar = tail call i32 @cJSON_IsObject(ptr noundef %i.h) #12
  %.not25 = icmp eq i32 %i.ar, 0
  br i1 %.not25, label %detach_item_from_array.exit.thread34, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.as = tail call ptr @cJSON_DetachItemFromObject(ptr noundef %i.h, ptr noundef nonnull %i.g) #12
  br label %detach_item_from_array.exit.thread34

detach_item_from_array.exit.thread34:             ; preds = %bb.s, %bb.t, %bb.r, %bb.m, %bb.j, %.critedge.i, %bb.b
  %.136 = phi ptr [ null, %bb.b ], [ %.0.i28, %bb.r ], [ null, %bb.m ], [ null, %bb.s ], [ %i.as, %bb.t ], [ null, %bb.j ], [ null, %.critedge.i ]
  tail call void @cJSON_free(ptr noundef nonnull %i.c) #12
  br label %detach_item_from_array.exit.thread

detach_item_from_array.exit.thread:               ; preds = %bb.a, %detach_item_from_array.exit.thread34
  %.133 = phi ptr [ %.136, %detach_item_from_array.exit.thread34 ], [ null, %bb.a ]
  ret ptr %.133
}

declare void @cJSON_Delete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @cJSON_AddItemToArray(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @insert_item_in_array(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.022 = phi i64 [ %1, %bb.a ], [ %i.e, %bb.b ]  ; 2 uses
  %.0.in = phi ptr [ %i.a, %bb.a ], [ %.0, %bb.b ]
  %.0 = load ptr, ptr %.0.in, align 8, !tbaa !10  ; 5 uses
  %i.b = icmp ne ptr %.0, null                    ; 2 uses
  %i.c = icmp ne i64 %.022, 0                     ; 2 uses
  %i.d = select i1 %i.b, i1 %i.c, i1 false
  %i.e = add i64 %.022, -1
  br i1 %i.d, label %bb.b, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.c, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = tail call i32 @cJSON_AddItemToArray(ptr noundef nonnull %0, ptr noundef %2) #12 ; 0 uses
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  store ptr %.0, ptr %2, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !27
  store ptr %2, ptr %i.g, align 8, !tbaa !27
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.k = icmp eq ptr %.0, %i.j
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store ptr %2, ptr %i.a, align 8, !tbaa !19
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !27
  store ptr %2, ptr %i.l, align 8, !tbaa !20
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.e
  %.021 = phi i32 [ 0, %bb.c ], [ 1, %bb.e ], [ 1, %bb.h ], [ 1, %bb.g ]
  ret i32 %.021
}

declare void @cJSON_DeleteItemFromObjectCaseSensitive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @cJSON_DeleteItemFromObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @cJSON_AddItemToObject(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cJSON_GetObjectItemCaseSensitive(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cJSON_GetObjectItem(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #9

declare ptr @cJSON_DetachItemFromObject(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cJSON_CreateObject() local_unnamed_addr #2

declare ptr @cJSON_CreateString(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc ptr @sort_list(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !20     ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.critedge.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not.i = icmp eq i32 %1, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.usthread-pre-split:              ; preds = %._crit_edge.i.us
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %.not79.us = icmp eq ptr %.pr, null
  br i1 %.not79.us, label %.critedge.thread, label %.preheader.split.us.preheader

.preheader.split.us.preheader:                    ; preds = %.preheader, %.preheader.split.usthread-pre-split
  %.067.us204 = phi ptr [ %i.d, %.preheader.split.usthread-pre-split ], [ %0, %.preheader ]
  %i.d = phi ptr [ %.pr, %.preheader.split.usthread-pre-split ], [ %i.b, %.preheader ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.067.us204, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !14   ; 4 uses
  %i.i = icmp eq ptr %i.f, null
  %i.j = icmp eq ptr %i.h, null
end_hunk_1
