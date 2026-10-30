Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/fe-connect?download=true
inline.NumInlined: 99
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@conninfo_uri_decode:bb.a
  %i.p = add i8 %i.n, -48
  %or.cond.i = icmp ult i8 %i.p, 10
  br i1 %or.cond.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add i8 %i.n, -65
  %or.cond5.i = icmp ult i8 %i.q, 6
  br i1 %or.cond5.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = add i8 %i.n, -97
  %or.cond8.i = icmp ult i8 %i.r, 6
  br i1 %or.cond8.i, label %bb.g, label %get_hexdigit.exit

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.sink21.i = phi i32 [ -48, %bb.d ], [ -55, %bb.e ], [ -87, %bb.f ]
  %i.s = add nsw i32 %.sink21.i, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %.1, i64 3
  %i.u = load i8, ptr %i.m, align 1               ; 4 uses
  %i.v = zext nneg i8 %i.u to i32
  %i.w = add i8 %i.u, -48
  %or.cond.i51 = icmp ult i8 %i.w, 10
  br i1 %or.cond.i51, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = add i8 %i.u, -65
  %or.cond5.i52 = icmp ult i8 %i.x, 6
  br i1 %or.cond5.i52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = add i8 %i.u, -97
  %or.cond8.i53 = icmp ult i8 %i.y, 6
  br i1 %or.cond8.i53, label %bb.j, label %get_hexdigit.exit

get_hexdigit.exit:                                ; preds = %bb.i, %bb.f
  tail call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %1, ptr noundef nonnull @.str.274, ptr noundef nonnull %0) #23
  tail call void @free(ptr noundef %i.c) #23
  br label %.critedge

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.sink21.i56 = phi i32 [ -48, %bb.g ], [ -55, %bb.h ], [ -87, %bb.i ]
  %i.z = add nsw i32 %.sink21.i56, %i.v
  %i.aa = shl nsw i32 %i.s, 4
  %i.ab = or i32 %i.z, %i.aa                      ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %1, ptr noundef nonnull @.str.275, ptr noundef nonnull %0) #23
  tail call void @free(ptr noundef %i.c) #23
  br label %.critedge

bb.l:                                             ; preds = %bb.j
  %i.ad = trunc i32 %i.ab to i8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.c
  %storemerge = phi i8 [ %i.ad, %bb.l ], [ %i.j, %bb.c ]
  %.4 = phi ptr [ %i.t, %bb.l ], [ %i.k, %bb.c ]  ; 2 uses
  %.242 = getelementptr inbounds nuw i8, ptr %.040, i64 1
  store i8 %storemerge, ptr %.040, align 1
  %.pre = load i8, ptr %.4, align 1
  br label %.preheader

._crit_edge:                                      ; preds = %.preheader, %.lr.ph76
  %i.ae = phi i8 [ %i.ag, %.lr.ph76 ], [ %i.j, %.preheader ]
  %.not50 = icmp eq i8 %i.ae, 0
  br i1 %.not50, label %bb.o, label %bb.n

.lr.ph76:                                         ; preds = %.preheader, %.lr.ph76
  %.075 = phi ptr [ %i.af, %.lr.ph76 ], [ %.1, %.preheader ]
  %i.af = getelementptr i8, ptr %.075, i64 1      ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %i.ah = icmp eq i8 %i.ag, 32
  br i1 %i.ah, label %.lr.ph76, label %._crit_edge, !llvm.loop !53

bb.n:                                             ; preds = %._crit_edge
  tail call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %1, ptr noundef nonnull @.str.276, ptr noundef nonnull %0) #23
  tail call void @free(ptr noundef %i.c) #23
  br label %.critedge

bb.o:                                             ; preds = %._crit_edge
  store i8 0, ptr %.040, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %get_hexdigit.exit, %bb.o, %bb.n, %bb.b
  %.346 = phi ptr [ null, %bb.b ], [ null, %bb.n ], [ %i.c, %bb.o ], [ null, %get_hexdigit.exit ], [ null, %bb.k ]
  ret ptr %.346
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @parseServiceFile(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3, ptr nofree noundef nonnull captures(none) initializes((0, 1)) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i8 0, ptr %4, align 1
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.286) ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %.preheader125

.preheader125:                                    ; preds = %bb.a
  %i.d = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.b) ; 2 uses
  %.not144 = icmp eq ptr %i.d, null
  br i1 %.not144, label %.thread119, label %.lr.ph146

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %3, ptr noundef nonnull @.str.287, ptr noundef nonnull %0) #23
  br label %bb.x

.lr.ph146:                                        ; preds = %.preheader125, %.critedge2.thread
  %i.e = phi ptr [ %i.bn, %.critedge2.thread ], [ %i.d, %.preheader125 ] ; 5 uses
  %.092145 = phi i32 [ %i.f, %.critedge2.thread ], [ 0, %.preheader125 ]
  %i.f = add i32 %.092145, 1                      ; 6 uses
  %i.g = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #24 ; 3 uses
  %i.h = icmp ugt i64 %i.g, 1022
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph146
  call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %3, ptr noundef nonnull @.str.288, i32 noundef %i.f, ptr noundef nonnull %0) #23
  br label %.thread119.thread

bb.d:                                             ; preds = %.lr.ph146
  %.not151 = icmp eq i64 %i.g, 0
  br i1 %.not151, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.i = trunc nuw nsw i64 %i.g to i32
  %i.j = tail call ptr @__ctype_b_loc() #25
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %.087135 = phi i32 [ %i.i, %.lr.ph ], [ %i.t, %bb.f ] ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = zext nneg i32 %.087135 to i64
  %i.m = getelementptr i8, ptr %i.e, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.k, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2
  %i.s = and i16 %i.r, 8192
  %.not102 = icmp eq i16 %i.s, 0
  br i1 %.not102, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = add nsw i32 %.087135, -1                 ; 2 uses
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.u
  store i8 0, ptr %i.v, align 1
  %i.w = icmp sgt i32 %.087135, 1
  br i1 %i.w, label %bb.e, label %.critedge, !llvm.loop !54

.critedge:                                        ; preds = %bb.e, %bb.f, %bb.d
  %i.x = load i8, ptr %i.e, align 1               ; 2 uses
  %.not103137 = icmp eq i8 %i.x, 0
  br i1 %.not103137, label %.critedge2.thread, label %.lr.ph139

.lr.ph139:                                        ; preds = %.critedge
  %i.y = tail call ptr @__ctype_b_loc() #25
  %i.z = load ptr, ptr %i.y, align 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph139, %bb.h
  %i.aa = phi i8 [ %i.x, %.lr.ph139 ], [ %i.ag, %bb.h ] ; 2 uses
  %.089138 = phi ptr [ %i.e, %.lr.ph139 ], [ %i.af, %bb.h ] ; 8 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = and i16 %i.ad, 8192
  %.not104 = icmp eq i16 %i.ae, 0
  br i1 %.not104, label %.critedge2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.089138, i64 1 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 1             ; 2 uses
  %.not103 = icmp eq i8 %i.ag, 0
  br i1 %.not103, label %.critedge2.thread, label %bb.g, !llvm.loop !55

.critedge2:                                       ; preds = %bb.g
  switch i8 %i.aa, label %bb.m [
    i8 91, label %bb.i
    i8 35, label %.critedge2.thread
  ]

bb.i:                                             ; preds = %.critedge2
  %i.ah = load i8, ptr %4, align 1, !range !8, !noundef !9
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %.thread119, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.089138, i64 1
  %i.ak = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 2 uses
  %i.al = call i32 @strncmp(ptr noundef nonnull %i.aj, ptr noundef nonnull %1, i64 noundef %i.ak) #24
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr i8, ptr %.089138, i64 %i.ak
  %i.ao = getelementptr i8, ptr %i.an, i64 1
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = icmp eq i8 %i.ap, 93
  br i1 %i.aq, label %.critedge2.thread.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %.critedge2.thread.sink.split

bb.m:                                             ; preds = %.critedge2
  %i.ar = load i8, ptr %4, align 1, !range !8, !noundef !9
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.n, label %.critedge2.thread

bb.n:                                             ; preds = %bb.m
  %i.at = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.089138, i32 noundef 61) #24 ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %3, ptr noundef nonnull @.str.289, ptr noundef nonnull %0, i32 noundef %i.f) #23
  br label %.thread119.thread

bb.p:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  store i8 0, ptr %i.at, align 1
  %i.aw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.089138, ptr noundef nonnull dereferenceable(8) @.str.116) #24
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %3, ptr noundef nonnull @.str.290, ptr noundef nonnull %0, i32 noundef %i.f) #23
  br label %.thread119.thread

bb.r:                                             ; preds = %bb.p
  %i.ay = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.089138, ptr noundef nonnull dereferenceable(12) @.str.119) #24
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.s, label %.preheader124

.preheader124:                                    ; preds = %bb.r
  %i.ba = load ptr, ptr %2, align 8               ; 2 uses
  %.not105.not140 = icmp eq ptr %i.ba, null
  br i1 %.not105.not140, label %.critedge111, label %.lr.ph142.preheader

.lr.ph142.preheader:                              ; preds = %.preheader124
  %i.bb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ba, ptr noundef nonnull dereferenceable(1) %.089138) #24
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %.lr.ph142._crit_edge, label %.lr.ph208

bb.s:                                             ; preds = %bb.r
  call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %3, ptr noundef nonnull @.str.291, ptr noundef nonnull %0, i32 noundef %i.f) #23
  br label %.thread119.thread

.lr.ph208:                                        ; preds = %.lr.ph142.preheader, %.lr.ph142
  %.090141207 = phi i32 [ %i.bd, %.lr.ph142 ], [ 0, %.lr.ph142.preheader ]
  %i.bd = add i32 %.090141207, 1                  ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [56 x i8], ptr %2, i64 %i.be ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not105.not = icmp eq ptr %i.bg, null
  br i1 %.not105.not, label %.critedge111, label %.lr.ph142, !llvm.loop !56

.lr.ph142:                                        ; preds = %.lr.ph208
  %i.bh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bg, ptr noundef nonnull dereferenceable(1) %.089138) #24
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %.lr.ph142._crit_edge, label %.lr.ph208, !llvm.loop !56

.lr.ph142._crit_edge:                             ; preds = %.lr.ph142, %.lr.ph142.preheader
  %.lcssa197 = phi ptr [ %2, %.lr.ph142.preheader ], [ %i.bf, %.lr.ph142 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.lcssa197, i64 24 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.t, label %.critedge2.thread

bb.t:                                             ; preds = %.lr.ph142._crit_edge
  %i.bm = call noalias ptr @strdup(ptr noundef nonnull %i.av) #23 ; 2 uses
  store ptr %i.bm, ptr %i.bj, align 8
  %.not106 = icmp eq ptr %i.bm, null
  br i1 %.not106, label %bb.u, label %.critedge2.thread

bb.u:                                             ; preds = %bb.t
  call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %3, ptr noundef nonnull @.str) #23
  br label %.thread119.thread

.critedge111:                                     ; preds = %.preheader124, %.lr.ph208
  call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %3, ptr noundef nonnull @.str.289, ptr noundef nonnull %0, i32 noundef %i.f) #23
  br label %.thread119.thread

.critedge2.thread.sink.split:                     ; preds = %bb.k, %bb.l
  %.sink = phi i8 [ 0, %bb.l ], [ 1, %bb.k ]
  store i8 %.sink, ptr %4, align 1
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %bb.h, %.critedge2.thread.sink.split, %.critedge, %.lr.ph142._crit_edge, %bb.t, %bb.m, %.critedge2
  %i.bn = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.b) ; 2 uses
  %.not = icmp eq ptr %i.bn, null
  br i1 %.not, label %.thread119, label %.lr.ph146

.thread119:                                       ; preds = %.critedge2.thread, %bb.i, %.preheader125
  %i.bo = load i8, ptr %4, align 1, !range !8, !noundef !9
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %.preheader, label %.thread119.thread

.preheader:                                       ; preds = %.thread119
  %i.bq = load ptr, ptr %2, align 8               ; 2 uses
  %.not107148 = icmp eq ptr %i.bq, null
  br i1 %.not107148, label %.thread119.thread, label %.lr.ph150.preheader

.lr.ph150.preheader:                              ; preds = %.preheader
  %i.br = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bq, ptr noundef nonnull dereferenceable(12) @.str.119) #24
  %.not108209 = icmp eq i32 %i.br, 0
  br i1 %.not108209, label %.lr.ph150._crit_edge, label %.lr.ph211

.lr.ph211:                                        ; preds = %.lr.ph150.preheader, %.lr.ph150
  %.191149210 = phi i32 [ %i.bs, %.lr.ph150 ], [ 0, %.lr.ph150.preheader ]
  %i.bs = add i32 %.191149210, 1                  ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds [56 x i8], ptr %2, i64 %i.bt ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not107 = icmp eq ptr %i.bv, null
  br i1 %.not107, label %.thread119.thread, label %.lr.ph150, !llvm.loop !57

.lr.ph150:                                        ; preds = %.lr.ph211
  %i.bw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bv, ptr noundef nonnull dereferenceable(12) @.str.119) #24
  %.not108 = icmp eq i32 %i.bw, 0
  br i1 %.not108, label %.lr.ph150._crit_edge, label %.lr.ph211, !llvm.loop !57

.lr.ph150._crit_edge:                             ; preds = %.lr.ph150, %.lr.ph150.preheader
  %.lcssa = phi ptr [ %2, %.lr.ph150.preheader ], [ %i.bu, %.lr.ph150 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.lcssa, i64 24 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %.not109 = icmp eq ptr %i.by, null
  br i1 %.not109, label %bb.v, label %.thread119.thread

bb.v:                                             ; preds = %.lr.ph150._crit_edge
  %i.bz = call noalias ptr @strdup(ptr noundef nonnull %0) #23 ; 2 uses
  store ptr %i.bz, ptr %i.bx, align 8
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %bb.w, label %.thread119.thread

bb.w:                                             ; preds = %bb.v
  call void (ptr, ptr, ...) @libpq_append_error(ptr noundef %3, ptr noundef nonnull @.str) #23
  br label %.thread119.thread

.thread119.thread:                                ; preds = %.lr.ph211, %.preheader, %.critedge111, %bb.u, %bb.s, %bb.q, %bb.o, %bb.c, %.lr.ph150._crit_edge, %bb.w, %bb.v, %.thread119
  %.5 = phi i32 [ 0, %.lr.ph150._crit_edge ], [ 3, %bb.w ], [ 0, %bb.v ], [ 2, %bb.c ], [ 0, %.thread119 ], [ 3, %.critedge111 ], [ 3, %bb.u ], [ 3, %bb.s ], [ 3, %bb.q ], [ 3, %bb.o ], [ 0, %.preheader ], [ 0, %.lr.ph211 ]
  %i.cb = call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %.thread119.thread, %bb.b
  %.095 = phi i32 [ 1, %bb.b ], [ %.5, %.thread119.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i32 %.095
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #19

declare ptr @PQresultErrorMessage(ptr noundef) local_unnamed_addr #1

declare i32 @pg_fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr noundef captures(none)) local_unnamed_addr #19

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr noundef captures(none)) local_unnamed_addr #18

declare i32 @enlargePQExpBuffer(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @pg_strip_crlf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc ptr @pwdfMatchesString(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #22 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1                 ; 2 uses
  switch i8 %i.c, label %.lr.ph.preheader [
    i8 42, label %bb.c
    i8 0, label %.loopexit
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 58
  br i1 %i.f, label %bb.d, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b, %bb.c
  br label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %i.h = phi i8 [ %i.r, %bb.f ], [ %i.c, %.lr.ph.preheader ]
  %.02536 = phi ptr [ %i.q, %bb.f ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.02635 = phi ptr [ %i.p, %bb.f ], [ %0, %.lr.ph.preheader ]
  %.not32 = icmp eq i8 %i.h, 92                   ; 2 uses
  %spec.select.idx = zext i1 %.not32 to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %.02635, i64 %spec.select.idx ; 3 uses
  %i.i = load i8, ptr %spec.select, align 1       ; 2 uses
  %i.j = icmp ne i8 %i.i, 58
  %i.k = load i8, ptr %.02536, align 1            ; 3 uses
  %i.l = icmp ne i8 %i.k, 0
  %or.cond5 = or i1 %.not32, %i.l
  %or.cond44 = select i1 %i.j, i1 true, i1 %or.cond5
  br i1 %or.cond44, label %thread-pre-split, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %spec.select, i64 1
  br label %.loopexit

thread-pre-split:                                 ; preds = %.lr.ph
  %i.n = icmp ne i8 %i.k, 0
  %i.o = icmp eq i8 %i.i, %i.k
  %or.cond33 = and i1 %i.n, %i.o
  br i1 %or.cond33, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %thread-pre-split
  %i.p = getelementptr inbounds nuw i8, ptr %spec.select, i64 1 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02536, i64 1
  %i.r = load i8, ptr %i.p, align 1               ; 2 uses
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !58

.loopexit:                                        ; preds = %thread-pre-split, %bb.f, %bb.b, %bb.a, %bb.e, %bb.d
  %.028 = phi ptr [ %i.m, %bb.e ], [ %i.g, %bb.d ], [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.f ], [ null, %thread-pre-split ]
  ret ptr %.028
}

declare i32 @pg_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !7}
!1 = distinct !{!1, !7}
!2 = distinct !{!2, !7}
!3 = distinct !{!3, !7}
!4 = !{i32 8, !"PIC Level", i32 2}
end_hunk_0
