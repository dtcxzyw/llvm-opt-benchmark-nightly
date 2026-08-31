Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/tool_formparse?download=true
inline.NumInlined: 19
inline.NumDeleted: 11
loop-unroll.NumUnrolled: 1
begin_hunk_0_@formparse:bb.a
  store ptr %i.co, ptr %i.cu, align 8, !tbaa !20
  %i.cv = load ptr, ptr %i.f, align 8, !tbaa !33
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 64
  store ptr %i.cv, ptr %i.cw, align 8, !tbaa !21
  store ptr null, ptr %i.f, align 8, !tbaa !33
  %.pre164 = load ptr, ptr %i.d, align 8, !tbaa !32 ; 2 uses
  %.not134 = icmp eq ptr %.pre164, null
  br i1 %.not134, label %.thread193, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cx = call noalias ptr @strdup(ptr noundef nonnull %.pre164) #12 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 40
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !17
  %.not135 = icmp eq ptr %i.cx, null
  br i1 %.not135, label %tool_mime_new_parts.exit145.thread161, label %.thread193

.thread193:                                       ; preds = %bb.ai, %bb.al, %bb.ar, %bb.as
  %.187198 = phi i32 [ %.086, %bb.as ], [ %.086, %bb.ar ], [ %i.bw, %bb.al ], [ %i.bw, %bb.ai ] ; 2 uses
  %.2197 = phi ptr [ %i.cp, %bb.as ], [ %i.cp, %bb.ar ], [ %i.ca, %bb.al ], [ %i.ca, %bb.ai ] ; 4 uses
  %i.cz = load ptr, ptr %i.c, align 8, !tbaa !32  ; 2 uses
  %.not136 = icmp eq ptr %i.cz, null
  br i1 %.not136, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.thread193
  %i.da = call noalias ptr @strdup(ptr noundef nonnull %i.cz) #12 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.2197, i64 48
  store ptr %i.da, ptr %i.db, align 8, !tbaa !18
  %.not137 = icmp eq ptr %i.da, null
  br i1 %.not137, label %tool_mime_new_parts.exit145.thread161, label %bb.au

bb.au:                                            ; preds = %.thread193, %bb.at
  %i.dc = load ptr, ptr %i.e, align 8, !tbaa !32  ; 2 uses
  %.not138 = icmp eq ptr %i.dc, null
  br i1 %.not138, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dd = call noalias ptr @strdup(ptr noundef nonnull %i.dc) #12 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.2197, i64 56
  store ptr %i.dd, ptr %i.de, align 8, !tbaa !19
  %.not139 = icmp eq ptr %i.dd, null
  br i1 %.not139, label %tool_mime_new_parts.exit145.thread161, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.not140 = icmp eq i32 %.187198, 0
  br i1 %.not140, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.df = trunc nuw i32 %.187198 to i8
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !32  ; 2 uses
  store i8 %i.df, ptr %i.dg, align 1, !tbaa !34
  call void (ptr, ...) @warnf(ptr noundef nonnull @.str.3, ptr noundef nonnull %i.dg) #12
  br label %bb.ay

bb.ay:                                            ; preds = %tool_mime_new_parts.exit148, %bb.l, %bb.k, %bb.ax, %bb.aw
  %.3 = phi ptr [ %.2197, %bb.ax ], [ %.2197, %bb.aw ], [ %i.bt, %tool_mime_new_parts.exit148 ], [ %i.s, %bb.k ], [ %i.s, %bb.l ]
  %.not141 = icmp eq ptr %spec.select, null
  br i1 %.not141, label %tool_mime_new_parts.exit145, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dh = call noalias ptr @strdup(ptr noundef nonnull %i.j) #12 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.3, i64 32
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !16
  %.not142 = icmp eq ptr %i.dh, null
  br i1 %.not142, label %tool_mime_new_parts.exit145.thread161, label %tool_mime_new_parts.exit145

tool_mime_new_parts.exit145.thread161:            ; preds = %.preheader, %bb.ab, %bb.z, %tool_mime_new_parts.exit148.thread, %bb.ad, %bb.r, %bb.av, %bb.at, %bb.as, %bb.am, %bb.ah, %bb.l, %bb.ak, %bb.ag, %bb.o, %bb.g, %bb.az, %bb.h, %bb.w, %tool_mime_new.exit.i, %bb.an
  %.pre165 = load ptr, ptr %i.f, align 8, !tbaa !33
  br label %tool_mime_new_parts.exit145

bb.ba:                                            ; preds = %bb.e
  tail call void (ptr, ...) @warnf(ptr noundef nonnull @.str.4) #12
  br label %tool_mime_new_parts.exit145

tool_mime_new_parts.exit145:                      ; preds = %tool_mime_new_parts.exit145.thread161, %.thread, %bb.az, %bb.ay, %tool_mime_new_parts.exit.thread, %bb.ba, %bb.d
  %i.dj = phi ptr [ null, %tool_mime_new_parts.exit.thread ], [ null, %bb.d ], [ null, %bb.ba ], [ null, %bb.ay ], [ null, %bb.az ], [ null, %.thread ], [ %.pre165, %tool_mime_new_parts.exit145.thread161 ]
  %.091 = phi ptr [ null, %tool_mime_new_parts.exit.thread ], [ null, %bb.d ], [ %i.j, %bb.ba ], [ %i.j, %bb.ay ], [ %i.j, %bb.az ], [ %i.j, %.thread ], [ %i.j, %tool_mime_new_parts.exit145.thread161 ]
  %.088 = phi i32 [ 1, %tool_mime_new_parts.exit.thread ], [ 1, %bb.d ], [ 1, %bb.ba ], [ 0, %bb.ay ], [ 0, %bb.az ], [ 0, %.thread ], [ 1, %tool_mime_new_parts.exit145.thread161 ]
  call void @free(ptr noundef %.091) #12
  call void @curl_slist_free_all(ptr noundef %i.dj) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.088
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 256) i32 @get_param_part(i8 noundef signext range(i8 0, 45) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 8)) %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %7 = alloca %struct.dynbuf, align 8             ; 11 uses
  %i.c = alloca i8, align 1                       ; 7 uses
  %8 = alloca %struct.dynbuf, align 8             ; 8 uses
  %i.d = alloca ptr, align 8                      ; 11 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca [256 x i8], align 16              ; 3 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %i.i = alloca ptr, align 8                      ; 16 uses
  %i.j = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #12
  %i.k = load ptr, ptr %1, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #12
  store ptr null, ptr %3, align 8, !tbaa !32
  %.not = icmp eq ptr %4, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %4, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  store ptr null, ptr %6, align 8, !tbaa !33
  %.not57 = icmp eq ptr %5, null                  ; 3 uses
  br i1 %.not57, label %.preheader354, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %5, align 8, !tbaa !32
  br label %.preheader354

.preheader354:                                    ; preds = %bb.d, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %.preheader354, %.critedge
  %i.l = phi ptr [ %i.n, %.critedge ], [ %i.k, %.preheader354 ] ; 6 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !34
  switch i8 %i.m, label %bb.f [
    i8 32, label %.critedge
    i8 9, label %.critedge
  ]

.critedge:                                        ; preds = %bb.e, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  br label %bb.e, !llvm.loop !38

bb.f:                                             ; preds = %bb.e
  store ptr %i.l, ptr %i.i, align 8
  %i.o = call fastcc ptr @get_param_word(ptr noundef %i.i, ptr noundef %i.j, i8 noundef signext %0) ; 3 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  store ptr %i.o, ptr %2, align 8, !tbaa !32
  %i.q = icmp eq ptr %i.o, %i.l
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !32  ; 6 uses
  br i1 %i.q, label %.preheader141, label %.critedge2

.preheader141:                                    ; preds = %bb.f
  %i.r = icmp ugt ptr %.pre, %i.l
  br i1 %i.r, label %.lr.ph.preheader, label %.critedge2.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader141
  %.promoted178225 = ptrtoaddr ptr %.pre to i64
  %i.s = sub i64 %i.p, %.promoted178225
  %scevgep = getelementptr i8, ptr %.pre, i64 %i.s
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge4
  %i.t = phi ptr [ %i.u, %.critedge4 ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1 ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !34
  switch i8 %i.v, label %.critedge2.loopexit [
    i8 32, label %.critedge4
    i8 9, label %.critedge4
  ]

.critedge4:                                       ; preds = %.lr.ph, %.lr.ph
  %i.w = icmp ugt ptr %i.u, %i.l
  br i1 %i.w, label %.lr.ph, label %.critedge2.loopexit, !llvm.loop !39

.critedge2.loopexit:                              ; preds = %.lr.ph, %.critedge4, %.preheader141
  %.lcssa179 = phi ptr [ %.pre, %.preheader141 ], [ %scevgep, %.critedge4 ], [ %i.t, %.lr.ph ] ; 2 uses
  store ptr %.lcssa179, ptr %i.j, align 8
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.f
  %i.x = phi ptr [ %.lcssa179, %.critedge2.loopexit ], [ %.pre, %bb.f ]
  %i.y = load ptr, ptr %i.i, align 8, !tbaa !32
  %i.z = load i8, ptr %i.y, align 1, !tbaa !34    ; 4 uses
  store i8 0, ptr %i.x, align 1, !tbaa !34
  %i.aa = icmp eq i8 %i.z, 59
  br i1 %i.aa, label %.preheader.preheader, label %.thread261

.preheader.preheader:                             ; preds = %.critedge2
  %.promoted182.pre = load ptr, ptr %i.i, align 8, !tbaa !32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.critedge10
  %.promoted182 = phi ptr [ %.promoted182227, %.critedge10 ], [ %.promoted182.pre, %.preheader.preheader ] ; 3 uses
  %.0107199 = phi ptr [ %.1, %.critedge10 ], [ null, %.preheader.preheader ] ; 11 uses
  %.0108198 = phi ptr [ %.3111, %.critedge10 ], [ null, %.preheader.preheader ] ; 4 uses
  %.0119197 = phi ptr [ %.1120, %.critedge10 ], [ null, %.preheader.preheader ] ; 6 uses
  %.0121196 = phi ptr [ %.1122, %.critedge10 ], [ null, %.preheader.preheader ] ; 6 uses
  %.sroa.0.0192 = phi i64 [ %.sroa.0.1, %.critedge10 ], [ 0, %.preheader.preheader ] ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.promoted182, i64 1 ; 2 uses
  %.not61184 = icmp eq ptr %.promoted182, null
  br i1 %.not61184, label %.critedge6, label %.lr.ph185

.lr.ph185:                                        ; preds = %.preheader, %.critedge8
  %i.ac = phi ptr [ %i.af, %.critedge8 ], [ %i.ab, %.preheader ] ; 4 uses
  %i.ad = phi ptr [ %i.ac, %.critedge8 ], [ %.promoted182, %.preheader ]
  %i.ae = load i8, ptr %i.ac, align 1, !tbaa !34
  switch i8 %i.ae, label %.critedge6 [
    i8 32, label %.critedge8
    i8 9, label %.critedge8
  ]

.critedge8:                                       ; preds = %.lr.ph185, %.lr.ph185
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  br label %.lr.ph185, !llvm.loop !40

.critedge6:                                       ; preds = %.lr.ph185, %.preheader
  %.lcssa183 = phi ptr [ %i.ab, %.preheader ], [ %i.ac, %.lr.ph185 ] ; 9 uses
  %.lcssa142 = phi ptr [ null, %.preheader ], [ %i.ad, %.lr.ph185 ] ; 4 uses
  store ptr %.lcssa183, ptr %i.i, align 8, !tbaa !32
  %.not62 = icmp eq ptr %.0108198, null
  br i1 %.not62, label %bb.g, label %.thread

bb.g:                                             ; preds = %.critedge6
  %i.ag = call i32 @curl_strnequal(ptr noundef nonnull %.lcssa183, ptr noundef nonnull @.str.7, i64 noundef 5) #12
  %.not63 = icmp eq i32 %i.ag, 0
  br i1 %.not63, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %.lcssa142, i64 6
  br label %bb.i

bb.i:                                             ; preds = %.critedge.i, %bb.h
  %.0.i = phi ptr [ %i.ah, %bb.h ], [ %i.aj, %.critedge.i ] ; 5 uses
  %i.ai = load i8, ptr %.0.i, align 1, !tbaa !34
  switch i8 %i.ai, label %param_type.exit [
    i8 32, label %.critedge.i
    i8 9, label %.critedge.i
  ]

.critedge.i:                                      ; preds = %bb.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br label %bb.i, !llvm.loop !41

param_type.exit:                                  ; preds = %bb.i
  %9 = ptrtoint ptr %.0.i to i64
  %i.ak = call i64 @strcspn(ptr noundef nonnull %.0.i, ptr noundef nonnull @.str.17) #15
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.ak ; 4 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !34
  store ptr %i.al, ptr %i.i, align 8, !tbaa !32
  br label %.critedge10

bb.j:                                             ; preds = %bb.g
  %i.an = call i32 @curl_strnequal(ptr noundef nonnull %.lcssa183, ptr noundef nonnull @.str.8, i64 noundef 9) #12
  %.not64 = icmp eq i32 %i.an, 0
  br i1 %.not64, label %bb.p, label %bb.k

.thread:                                          ; preds = %.critedge6
  %i.ao = call i32 @curl_strnequal(ptr noundef nonnull %.lcssa183, ptr noundef nonnull @.str.8, i64 noundef 9) #12
  %.not64125 = icmp eq i32 %i.ao, 0
  br i1 %.not64125, label %.thread127, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  br label %bb.m

bb.l:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #12
  store i8 0, ptr %.0108198, align 1, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.lcssa142, i64 10
  br label %bb.n

bb.n:                                             ; preds = %.critedge.i73, %bb.m
  %storemerge.i = phi ptr [ %i.ap, %bb.m ], [ %i.ar, %.critedge.i73 ] ; 7 uses
  %i.aq = load i8, ptr %storemerge.i, align 1, !tbaa !34
  switch i8 %i.aq, label %bb.o [
    i8 32, label %.critedge.i73
    i8 9, label %.critedge.i73
  ]

.critedge.i73:                                    ; preds = %bb.n, %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 1
  br label %bb.n, !llvm.loop !42

bb.o:                                             ; preds = %bb.n
  store ptr %storemerge.i, ptr %i.g, align 8, !tbaa !32
  %i.as = call fastcc ptr @get_param_word(ptr noundef %i.g, ptr noundef %i.h, i8 noundef signext range(i8 0, 45) %0) ; 2 uses
  %i.at = icmp eq ptr %i.as, %storemerge.i
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !32 ; 5 uses
  %i.au = icmp ugt ptr %.pre.i, %storemerge.i
  %or.cond.i = select i1 %i.at, i1 %i.au, i1 false
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %param_filename.exit

.lr.ph.preheader.i:                               ; preds = %bb.o
  %i.av = ptrtoaddr ptr %storemerge.i to i64
  %.promoted20.i = ptrtoaddr ptr %.pre.i to i64
  %i.aw = sub i64 %i.av, %.promoted20.i
  %scevgep.i = getelementptr i8, ptr %.pre.i, i64 %i.aw
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge4.i, %.lr.ph.preheader.i
  %i.ax = phi ptr [ %i.ay, %.critedge4.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -1 ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !34
  switch i8 %i.az, label %param_filename.exit [
    i8 32, label %.critedge4.i
    i8 9, label %.critedge4.i
  ]

.critedge4.i:                                     ; preds = %.lr.ph.i, %.lr.ph.i
  %i.ba = icmp ugt ptr %i.ay, %storemerge.i
  br i1 %i.ba, label %.lr.ph.i, label %param_filename.exit, !llvm.loop !43

param_filename.exit:                              ; preds = %.lr.ph.i, %.critedge4.i, %bb.o
  %i.bb = phi ptr [ %.pre.i, %bb.o ], [ %scevgep.i, %.critedge4.i ], [ %i.ax, %.lr.ph.i ]
  %i.bc = load ptr, ptr %i.g, align 8, !tbaa !32  ; 3 uses
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !34
  store i8 0, ptr %i.bb, align 1, !tbaa !34
  store ptr %i.bc, ptr %i.i, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #12
  br label %.critedge10

bb.p:                                             ; preds = %bb.j
  %i.be = call i32 @curl_strnequal(ptr noundef nonnull %.lcssa183, ptr noundef nonnull @.str.9, i64 noundef 8) #12
  %.not65 = icmp eq i32 %i.be, 0
  br i1 %.not65, label %bb.ae, label %bb.q

.thread127:                                       ; preds = %.thread
  %i.bf = call i32 @curl_strnequal(ptr noundef nonnull %.lcssa183, ptr noundef nonnull @.str.9, i64 noundef 8) #12
  %.not65128 = icmp eq i32 %i.bf, 0
  br i1 %.not65128, label %.thread134.a, label %.thread129

.thread129:                                       ; preds = %.thread127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i8 0, ptr %.0108198, align 1, !tbaa !34
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.thread129
  %i.bg = getelementptr inbounds nuw i8, ptr %.lcssa142, i64 9 ; 3 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !34  ; 2 uses
  switch i8 %i.bh, label %.preheader65.i [
    i8 64, label %.critedge.i75.preheader
    i8 60, label %.critedge.i75.preheader
  ]

.critedge.i75.preheader:                          ; preds = %bb.r, %bb.r
  br label %.critedge.i75

.critedge.i75:                                    ; preds = %.critedge.i75.backedge, %.critedge.i75.preheader
  %i.bi = phi ptr [ %i.bg, %.critedge.i75.preheader ], [ %i.bj, %.critedge.i75.backedge ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 7 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !34
  switch i8 %i.bk, label %bb.s [
    i8 32, label %.critedge.i75.backedge
    i8 9, label %.critedge.i75.backedge
  ]

.critedge.i75.backedge:                           ; preds = %.critedge.i75, %.critedge.i75
  br label %.critedge.i75

bb.s:                                             ; preds = %.critedge.i75
  store ptr %i.bj, ptr %i.d, align 8, !tbaa !32
  %i.bl = call fastcc ptr @get_param_word(ptr noundef %i.d, ptr noundef %i.e, i8 noundef signext range(i8 0, 45) %0) ; 3 uses
  %i.bm = icmp eq ptr %i.bl, %i.bj
  %.pre.i76 = load ptr, ptr %i.e, align 8, !tbaa !32 ; 5 uses
  %i.bn = icmp ugt ptr %.pre.i76, %i.bj
  %or.cond.i77 = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond.i77, label %.lr.ph.preheader.i79, label %.critedge4.i78

.lr.ph.preheader.i79:                             ; preds = %bb.s
  %i.bo = ptrtoaddr ptr %i.bj to i64
  %.promoted7186.i = ptrtoaddr ptr %.pre.i76 to i64
  %i.bp = sub i64 %i.bo, %.promoted7186.i
  %scevgep.i80 = getelementptr i8, ptr %.pre.i76, i64 %i.bp
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.critedge6.i, %.lr.ph.preheader.i79
  %i.bq = phi ptr [ %i.br, %.critedge6.i ], [ %.pre.i76, %.lr.ph.preheader.i79 ] ; 2 uses
  %i.br = getelementptr inbounds i8, ptr %i.bq, i64 -1 ; 3 uses
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !34
  switch i8 %i.bs, label %.critedge4.i78 [
    i8 32, label %.critedge6.i
    i8 9, label %.critedge6.i
  ]

.critedge6.i:                                     ; preds = %.lr.ph.i81, %.lr.ph.i81
  %i.bt = icmp ugt ptr %i.br, %i.bj
  br i1 %i.bt, label %.lr.ph.i81, label %.critedge4.i78, !llvm.loop !44

.critedge4.i78:                                   ; preds = %.critedge6.i, %.lr.ph.i81, %bb.s
  %i.bu = phi ptr [ %.pre.i76, %bb.s ], [ %scevgep.i80, %.critedge6.i ], [ %i.bq, %.lr.ph.i81 ]
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !34  ; 2 uses
  store i8 0, ptr %i.bu, align 1, !tbaa !34
  %i.bx = call noalias ptr @fopen(ptr noundef %i.bl, ptr noundef nonnull @.str.18) ; 5 uses
  %.not54.i = icmp eq ptr %i.bx, null
  br i1 %.not54.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.critedge4.i78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  %i.by = tail call ptr @__errno_location() #16
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !36
  %i.ca = call ptr @curlx_strerror(i32 noundef %i.bz, ptr noundef nonnull %i.f, i64 noundef 256) #12
  call void (ptr, ...) @warnf(ptr noundef nonnull @.str.19, ptr noundef %i.bl, ptr noundef %i.ca) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %param_headers.exit

bb.u:                                             ; preds = %.critedge4.i78
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i8 0, ptr %i.c, align 1, !tbaa !45
  call void @curlx_dyn_init(ptr noundef nonnull %7, i64 noundef 8192) #12
  %i.cb = call zeroext i1 @my_get_line(ptr noundef nonnull %i.bx, ptr noundef nonnull %7, ptr noundef nonnull %i.c) #12
  br i1 %i.cb, label %.lr.ph72.i.i, label %._crit_edge.i.i

.lr.ph72.i.i:                                     ; preds = %bb.u, %.critedge55.i.i
  %.5 = phi ptr [ %.6, %.critedge55.i.i ], [ %.0107199, %bb.u ] ; 9 uses
  %i.cc = call ptr @curlx_dyn_ptr(ptr noundef nonnull %7) #12 ; 4 uses
  %i.cd = call i64 @curlx_dyn_len(ptr noundef nonnull %7) #12 ; 2 uses
  %i.ce = load i8, ptr %i.cc, align 1, !tbaa !34  ; 2 uses
  %i.cf = icmp eq i8 %i.ce, 35
  br i1 %i.cf, label %.critedge55.i.i, label %bb.v, !llvm.loop !47

bb.v:                                             ; preds = %.lr.ph72.i.i
  %i.cg = icmp ne i8 %i.ce, 32
  %.not4670.i.i = icmp eq i64 %i.cd, 0
  br i1 %.not4670.i.i, label %.critedge55.i.i, label %.lr.ph.i.i, !llvm.loop !47

.lr.ph.i.i:                                       ; preds = %bb.v
  br label %bb.w, !llvm.loop !47

bb.w:                                             ; preds = %.critedge2.i.i, %.lr.ph.i.i
  %.04071.i.i = phi i64 [ %i.cd, %.lr.ph.i.i ], [ %i.ck, %.critedge2.i.i ] ; 4 uses
  %i.ch = getelementptr i8, ptr %i.cc, i64 %.04071.i.i
end_hunk_0
begin_hunk_1_@get_param_part:bb.a

.critedge8.i:                                     ; preds = %.preheader65.i, %.preheader65.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 1 ; 2 uses
  %.pre89.i = load i8, ptr %i.dc, align 1, !tbaa !34
  br label %.preheader65.i, !llvm.loop !55

bb.ad:                                            ; preds = %.preheader65.i
  store ptr %i.db, ptr %i.d, align 8
  %i.dd = call fastcc ptr @get_param_word(ptr noundef %i.d, ptr noundef %i.e, i8 noundef signext range(i8 0, 45) %0) ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.db
  %.pre90.i = load ptr, ptr %i.e, align 8, !tbaa !32 ; 5 uses
  %i.df = icmp ugt ptr %.pre90.i, %i.db
  %or.cond103.i = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond103.i, label %.lr.ph79.preheader.i, label %.critedge10.i

.lr.ph79.preheader.i:                             ; preds = %bb.ad
  %i.dg = ptrtoaddr ptr %i.db to i64
  %.promoted7787.i = ptrtoaddr ptr %.pre90.i to i64
  %i.dh = sub i64 %i.dg, %.promoted7787.i
  %scevgep88.i = getelementptr i8, ptr %.pre90.i, i64 %i.dh
  br label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %.critedge12.i, %.lr.ph79.preheader.i
  %i.di = phi ptr [ %i.dj, %.critedge12.i ], [ %.pre90.i, %.lr.ph79.preheader.i ] ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -1 ; 3 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !34
  switch i8 %i.dk, label %.critedge10.i [
    i8 32, label %.critedge12.i
    i8 9, label %.critedge12.i
  ]

.critedge12.i:                                    ; preds = %.lr.ph79.i, %.lr.ph79.i
  %i.dl = icmp ugt ptr %i.dj, %i.db
  br i1 %i.dl, label %.lr.ph79.i, label %.critedge10.i, !llvm.loop !56

.critedge10.i:                                    ; preds = %.critedge12.i, %.lr.ph79.i, %bb.ad
  %i.dm = phi ptr [ %.pre90.i, %bb.ad ], [ %scevgep88.i, %.critedge12.i ], [ %i.di, %.lr.ph79.i ]
  %i.dn = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !34
  store i8 0, ptr %i.dm, align 1, !tbaa !34
  %i.dp = call ptr @curl_slist_append(ptr noundef %.0107199, ptr noundef %i.dd) #12 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i, label %slist_append.exit.i, label %param_headers.exit

slist_append.exit.i:                              ; preds = %.critedge10.i
  call void (ptr, ...) @errorf(ptr noundef nonnull @.str.20) #12
  br label %param_headers.exit.thread

.critedge59.critedge.i:                           ; preds = %._crit_edge.i.i
  call void @curlx_dyn_free(ptr noundef nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  %i.dq = call i32 @fclose(ptr noundef nonnull %i.bx) ; 0 uses
  br label %param_headers.exit

param_headers.exit.thread:                        ; preds = %slist_append.exit.i, %read_field_headers.exit.i
  %.0107199.lcssa316.sink = phi ptr [ %.0107199, %slist_append.exit.i ], [ %.4, %read_field_headers.exit.i ]
  call void @curl_slist_free_all(ptr noundef %.0107199.lcssa316.sink) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %bb.ay

param_headers.exit:                               ; preds = %bb.t, %.critedge59.critedge.i, %.critedge10.i
  %.2117 = phi i8 [ %i.bw, %.critedge59.critedge.i ], [ %i.bw, %bb.t ], [ %i.do, %.critedge10.i ]
  %.3 = phi ptr [ %.2, %.critedge59.critedge.i ], [ %.0107199, %bb.t ], [ %i.dp, %.critedge10.i ]
  %i.dr = load ptr, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  store ptr %i.dr, ptr %i.i, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %.critedge10

bb.ae:                                            ; preds = %bb.p
  %i.ds = call i32 @curl_strnequal(ptr noundef nonnull %.lcssa183, ptr noundef nonnull @.str.10, i64 noundef 8) #12
  %.not66 = icmp eq i32 %i.ds, 0
  br i1 %.not66, label %bb.an, label %bb.af

.thread134.a:                                     ; preds = %.thread127
  %i.dt = call i32 @curl_strnequal(ptr noundef nonnull %.lcssa183, ptr noundef nonnull @.str.10, i64 noundef 8) #12
  %.not66135 = icmp eq i32 %i.dt, 0
  br i1 %.not66135, label %.thread137.preheader, label %.thread136

.thread137.preheader:                             ; preds = %.thread134.a
  %.promoted193 = load ptr, ptr %i.i, align 8, !tbaa !32
  br label %.thread137

.thread136:                                       ; preds = %.thread134.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i8 0, ptr %.0108198, align 1, !tbaa !34
  br label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread136
  %i.du = getelementptr inbounds nuw i8, ptr %.lcssa142, i64 9
  br label %bb.ah

bb.ah:                                            ; preds = %.critedge.i84, %bb.ag
  %storemerge.i83 = phi ptr [ %i.du, %bb.ag ], [ %i.dw, %.critedge.i84 ] ; 7 uses
  %i.dv = load i8, ptr %storemerge.i83, align 1, !tbaa !34
  switch i8 %i.dv, label %bb.ai [
    i8 32, label %.critedge.i84
    i8 9, label %.critedge.i84
  ]

.critedge.i84:                                    ; preds = %bb.ah, %bb.ah
  %i.dw = getelementptr inbounds nuw i8, ptr %storemerge.i83, i64 1
  br label %bb.ah, !llvm.loop !57

bb.ai:                                            ; preds = %bb.ah
  store ptr %storemerge.i83, ptr %i.a, align 8, !tbaa !32
  %i.dx = call fastcc ptr @get_param_word(ptr noundef %i.a, ptr noundef %i.b, i8 noundef signext range(i8 0, 45) %0) ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %storemerge.i83
  %.pre.i85 = load ptr, ptr %i.b, align 8, !tbaa !32 ; 5 uses
  %i.dz = icmp ugt ptr %.pre.i85, %storemerge.i83
  %or.cond.i86 = select i1 %i.dy, i1 %i.dz, i1 false
  br i1 %or.cond.i86, label %.lr.ph.preheader.i87, label %param_encoder.exit

.lr.ph.preheader.i87:                             ; preds = %bb.ai
  %i.ea = ptrtoaddr ptr %storemerge.i83 to i64
  %.promoted20.i88 = ptrtoaddr ptr %.pre.i85 to i64
  %i.eb = sub i64 %i.ea, %.promoted20.i88
  %scevgep.i89 = getelementptr i8, ptr %.pre.i85, i64 %i.eb
  br label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %.critedge4.i91, %.lr.ph.preheader.i87
  %i.ec = phi ptr [ %i.ed, %.critedge4.i91 ], [ %.pre.i85, %.lr.ph.preheader.i87 ] ; 2 uses
  %i.ed = getelementptr inbounds i8, ptr %i.ec, i64 -1 ; 3 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !34
  switch i8 %i.ee, label %param_encoder.exit [
    i8 32, label %.critedge4.i91
    i8 9, label %.critedge4.i91
  ]

.critedge4.i91:                                   ; preds = %.lr.ph.i90, %.lr.ph.i90
  %i.ef = icmp ugt ptr %i.ed, %storemerge.i83
  br i1 %i.ef, label %.lr.ph.i90, label %param_encoder.exit, !llvm.loop !58

param_encoder.exit:                               ; preds = %.lr.ph.i90, %.critedge4.i91, %bb.ai
  %i.eg = phi ptr [ %.pre.i85, %bb.ai ], [ %scevgep.i89, %.critedge4.i91 ], [ %i.ec, %.lr.ph.i90 ]
  %i.eh = load ptr, ptr %i.a, align 8, !tbaa !32  ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !34
  store i8 0, ptr %i.eg, align 1, !tbaa !34
  store ptr %i.eh, ptr %i.i, align 8, !tbaa !32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.critedge10

.thread137:                                       ; preds = %.thread137.preheader, %bb.am
  %i.ej = phi ptr [ %i.em, %bb.am ], [ %.promoted193, %.thread137.preheader ] ; 5 uses
  %.1109 = phi ptr [ %.2110, %bb.am ], [ %.lcssa183, %.thread137.preheader ] ; 3 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !34  ; 5 uses
  switch i8 %i.ek, label %bb.aj [
    i8 0, label %.critedge10.loopexit
    i8 59, label %.critedge10.loopexit
  ]

bb.aj:                                            ; preds = %.thread137
  %.not71 = icmp eq i8 %i.ek, %0
  br i1 %.not71, label %.critedge10.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  switch i8 %i.ek, label %bb.al [
    i8 32, label %bb.am
    i8 9, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.ak, %bb.al
  %.2110 = phi ptr [ %i.el, %bb.al ], [ %.1109, %bb.ak ], [ %.1109, %bb.ak ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  br label %.thread137, !llvm.loop !59

bb.an:                                            ; preds = %bb.ae
  %i.en = call fastcc ptr @get_param_word(ptr noundef %i.i, ptr noundef %i.j, i8 noundef signext %0) ; 2 uses
  %i.eo = load ptr, ptr %i.i, align 8, !tbaa !32  ; 3 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !34  ; 2 uses
  %i.eq = load ptr, ptr %i.j, align 8, !tbaa !32
  store i8 0, ptr %i.eq, align 1, !tbaa !34
  %i.er = load i8, ptr %i.en, align 1, !tbaa !34
  %.not68 = icmp eq i8 %i.er, 0
  br i1 %.not68, label %.critedge10, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ...) @warnf(ptr noundef nonnull @.str.11, ptr noundef nonnull %i.en) #12
  br label %.critedge10

.critedge10.loopexit:                             ; preds = %.thread137, %.thread137, %bb.aj
  %.lcssa210 = phi i8 [ %i.ek, %.thread137 ], [ %i.ek, %.thread137 ], [ %0, %bb.aj ]
  store ptr %i.ej, ptr %i.i, align 8
  br label %.critedge10

.critedge10:                                      ; preds = %.critedge10.loopexit, %param_headers.exit, %bb.an, %bb.ao, %param_filename.exit, %param_encoder.exit, %param_type.exit
  %.promoted182227 = phi ptr [ %i.eo, %bb.an ], [ %i.eo, %bb.ao ], [ %i.al, %param_type.exit ], [ %i.eh, %param_encoder.exit ], [ %i.dr, %param_headers.exit ], [ %i.bc, %param_filename.exit ], [ %i.ej, %.critedge10.loopexit ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0192, %bb.an ], [ %.sroa.0.0192, %bb.ao ], [ %9, %param_type.exit ], [ %.sroa.0.0192, %param_encoder.exit ], [ %.sroa.0.0192, %param_headers.exit ], [ %.sroa.0.0192, %param_filename.exit ], [ %.sroa.0.0192, %.critedge10.loopexit ] ; 2 uses
  %.1122 = phi ptr [ %.0121196, %bb.an ], [ %.0121196, %bb.ao ], [ %.0121196, %param_type.exit ], [ %.0121196, %param_encoder.exit ], [ %.0121196, %param_headers.exit ], [ %i.as, %param_filename.exit ], [ %.0121196, %.critedge10.loopexit ] ; 4 uses
  %.1120 = phi ptr [ %.0119197, %bb.an ], [ %.0119197, %bb.ao ], [ %.0119197, %param_type.exit ], [ %i.dx, %param_encoder.exit ], [ %.0119197, %param_headers.exit ], [ %.0119197, %param_filename.exit ], [ %.0119197, %.critedge10.loopexit ] ; 4 uses
  %.1116 = phi i8 [ %i.ep, %bb.an ], [ %i.ep, %bb.ao ], [ %i.am, %param_type.exit ], [ %i.ei, %param_encoder.exit ], [ %.2117, %param_headers.exit ], [ %i.bd, %param_filename.exit ], [ %.lcssa210, %.critedge10.loopexit ] ; 4 uses
  %.3111 = phi ptr [ null, %bb.an ], [ null, %bb.ao ], [ %i.al, %param_type.exit ], [ null, %param_encoder.exit ], [ null, %param_headers.exit ], [ null, %param_filename.exit ], [ %.1109, %.critedge10.loopexit ] ; 3 uses
  %.1 = phi ptr [ %.0107199, %bb.an ], [ %.0107199, %bb.ao ], [ %.0107199, %param_type.exit ], [ %.0107199, %param_encoder.exit ], [ %.3, %param_headers.exit ], [ %.0107199, %param_filename.exit ], [ %.0107199, %.critedge10.loopexit ] ; 4 uses
  %i.es = icmp eq i8 %.1116, 59
  br i1 %i.es, label %.preheader, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %.critedge10
  %10 = inttoptr i64 %.sroa.0.1 to ptr
  %.not58 = icmp eq ptr %.3111, null
  br i1 %.not58, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  store i8 0, ptr %.3111, align 1, !tbaa !34
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge, %bb.ap
  store ptr %10, ptr %3, align 8, !tbaa !32
  br i1 %.not, label %bb.as, label %bb.ar

.thread261:                                       ; preds = %.critedge2
  store ptr null, ptr %3, align 8, !tbaa !32
  br i1 %.not, label %.thread284, label %bb.ar

bb.ar:                                            ; preds = %.thread261, %bb.aq
  %.0121.lcssa257276 = phi ptr [ null, %.thread261 ], [ %.1122, %bb.aq ]
  %.0119.lcssa258274 = phi ptr [ null, %.thread261 ], [ %.1120, %bb.aq ]
  %.0115.lcssa259271 = phi i8 [ %i.z, %.thread261 ], [ %.1116, %bb.aq ]
  %.0107.lcssa260268 = phi ptr [ null, %.thread261 ], [ %.1, %bb.aq ]
  store ptr %.0121.lcssa257276, ptr %4, align 8, !tbaa !32
  br label %bb.au

bb.as:                                            ; preds = %bb.aq
  %.not59 = icmp eq ptr %.1122, null
  br i1 %.not59, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void (ptr, ...) @warnf(ptr noundef nonnull @.str.13, ptr noundef nonnull %.1122) #12
  br label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at, %bb.ar
  %.0119.lcssa258273 = phi ptr [ %.1120, %bb.as ], [ %.1120, %bb.at ], [ %.0119.lcssa258274, %bb.ar ] ; 3 uses
  %.0115.lcssa259270 = phi i8 [ %.1116, %bb.as ], [ %.1116, %bb.at ], [ %.0115.lcssa259271, %bb.ar ] ; 3 uses
  %.0107.lcssa260267 = phi ptr [ %.1, %bb.as ], [ %.1, %bb.at ], [ %.0107.lcssa260268, %bb.ar ] ; 3 uses
  br i1 %.not57, label %bb.aw, label %bb.av

.thread284:                                       ; preds = %.thread261
  br i1 %.not57, label %.thread296, label %bb.av

bb.av:                                            ; preds = %.thread284, %bb.au
  %.0107.lcssa260267294 = phi ptr [ null, %.thread284 ], [ %.0107.lcssa260267, %bb.au ]
  %.0115.lcssa259270291 = phi i8 [ %i.z, %.thread284 ], [ %.0115.lcssa259270, %bb.au ]
  %.0119.lcssa258273288 = phi ptr [ null, %.thread284 ], [ %.0119.lcssa258273, %bb.au ]
  store ptr %.0119.lcssa258273288, ptr %5, align 8, !tbaa !32
  br label %.thread296

bb.aw:                                            ; preds = %bb.au
  %.not60 = icmp eq ptr %.0119.lcssa258273, null
  br i1 %.not60, label %.thread296, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void (ptr, ...) @warnf(ptr noundef nonnull @.str.14, ptr noundef nonnull %.0119.lcssa258273) #12
  br label %.thread296

.thread296:                                       ; preds = %.thread284, %bb.av, %bb.ax, %bb.aw
  %.0107.lcssa260267293 = phi ptr [ %.0107.lcssa260267294, %bb.av ], [ %.0107.lcssa260267, %bb.ax ], [ %.0107.lcssa260267, %bb.aw ], [ null, %.thread284 ]
  %.0115.lcssa259270290 = phi i8 [ %.0115.lcssa259270291, %bb.av ], [ %.0115.lcssa259270, %bb.ax ], [ %.0115.lcssa259270, %bb.aw ], [ %i.z, %.thread284 ]
  store ptr %.0107.lcssa260267293, ptr %6, align 8, !tbaa !33
  %i.et = load ptr, ptr %i.i, align 8, !tbaa !32
  store ptr %i.et, ptr %1, align 8, !tbaa !32
  %i.eu = zext i8 %.0115.lcssa259270290 to i32
  br label %bb.ay

bb.ay:                                            ; preds = %param_headers.exit.thread, %.thread296
  %.0 = phi i32 [ %i.eu, %.thread296 ], [ -1, %param_headers.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #12
  ret i32 %.0
}

declare void @warnf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @tool_mime_new_filedata(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i1 noundef zeroext %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %3) unnamed_addr #0 {
sub_0:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %4 = alloca %struct.stat, align 8               ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  store i32 27, ptr %3, align 4, !tbaa !36
  %i.c = load i8, ptr %1, align 1
  %.not65 = icmp eq i8 %i.c, 45
  br i1 %.not65, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 0
  br i1 %i.f, label %bb.g, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.g = tail call noalias ptr @strdup(ptr noundef nonnull %1) #12 ; 3 uses
  %.not58 = icmp eq ptr %i.g, null
  br i1 %.not58, label %bb.v, label %bb.a

bb.a:                                             ; preds = %.tail.thread
  %i.h = tail call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #14 ; 8 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %tool_mime_new.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 3, ptr %i.h, align 8, !tbaa !29
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %0, ptr %i.i, align 8, !tbaa !35
  %.not11.i = icmp eq ptr %0, null
  br i1 %.not11.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.k, ptr %i.l, align 8, !tbaa !15
  store ptr %i.h, ptr %i.j, align 8, !tbaa !8
  br label %bb.d

tool_mime_new.exit:                               ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.g) #12
  br label %bb.v

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.g, ptr %i.m, align 8, !tbaa !20
  br i1 %2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 4, ptr %i.h, align 8, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 0, ptr %3, align 4, !tbaa !36
  br label %bb.v

bb.g:                                             ; preds = %.tail
  %i.n = load ptr, ptr @stdin, align 8, !tbaa !61
  %i.o = tail call i32 @fileno(ptr noundef %i.n) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.p = load ptr, ptr @stdin, align 8, !tbaa !61
  %i.q = tail call i64 @ftell(ptr noundef %i.p)   ; 3 uses
  %i.r = icmp sgt i32 %i.o, -1
  %i.s = icmp sgt i64 %i.q, -1
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.t = call i32 @fstat(i32 noundef %i.o, ptr noundef nonnull %4) #12
  %.not54 = icmp eq i32 %i.t, 0
  br i1 %.not54, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !63
  %i.w = and i32 %i.v, 61440
  %i.x = icmp eq i32 %i.w, 32768
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !66
  %i.aa = sub nsw i64 %i.z, %i.q
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 0)
  br label %bb.o

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i64 0, ptr %i.b, align 8, !tbaa !67
  %i.ab = load ptr, ptr @stdin, align 8, !tbaa !61
  %i.ac = call i32 @file2memory(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.ab) #12
  switch i32 %i.ac, label %bb.l [
    i32 15, label %.critedge
    i32 20, label %._crit_edge
  ]

._crit_edge:                                      ; preds = %bb.k
  %.pre = load i64, ptr %i.b, align 8, !tbaa !67
  br label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !67  ; 2 uses
  %.not55 = icmp eq i64 %i.ad, 0
  br i1 %.not55, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ae = call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str.24) #12 ; 2 uses
  store ptr %i.ae, ptr %i.a, align 8, !tbaa !32
  %.not56 = icmp eq ptr %i.ae, null
  br i1 %.not56, label %.critedge, label %bb.n

bb.n:                                             ; preds = %._crit_edge, %bb.l, %bb.m
  %i.af = phi i64 [ %i.ad, %bb.l ], [ 0, %bb.m ], [ %.pre, %._crit_edge ]
  %.042 = phi i32 [ 0, %bb.l ], [ 0, %bb.m ], [ 26, %._crit_edge ]
  %i.ag = and i64 %i.af, 9223372036854775807
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  %.244 = phi i32 [ %.042, %bb.n ], [ 0, %bb.j ]
  %.139 = phi i64 [ %i.ag, %bb.n ], [ %spec.store.select, %bb.j ]
  %.137 = phi i64 [ 0, %bb.n ], [ %i.q, %bb.j ]
  %i.ah = call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #14 ; 10 uses
  %.not.i62 = icmp eq ptr %i.ah, null
  br i1 %.not.i62, label %tool_mime_new.exit64, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 5, ptr %i.ah, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store ptr %0, ptr %i.ai, align 8, !tbaa !35
  %.not11.i63 = icmp eq ptr %0, null
end_hunk_1
