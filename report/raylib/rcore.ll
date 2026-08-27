Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/rcore?download=true
inline.NumInlined: 1934
inline.NumDeleted: 137
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 45
begin_hunk_0_@LoadFileData:bb.a
  %.not40 = icmp eq ptr %i.c, null
  br i1 %.not40, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @fseek(ptr noundef nonnull %i.c, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.e = tail call i64 @ftell(ptr noundef nonnull %i.c) ; 2 uses
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = tail call i32 @fseek(ptr noundef nonnull %i.c, i64 noundef 0, i32 noundef 0) ; 0 uses
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.i = and i64 %i.e, 2147483647                 ; 2 uses
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 1) #60 ; 5 uses
  %.not41 = icmp eq ptr %i.j, null
  br i1 %.not41, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i64 @fread(ptr noundef nonnull %i.j, i64 noundef 1, i64 noundef %i.i, ptr noundef nonnull %i.c) ; 3 uses
  %i.l = icmp ugt i64 %i.k, 2147483647
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.202, ptr noundef nonnull %0)
  tail call void @free(ptr noundef nonnull %i.j) #56
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.m = trunc nuw nsw i64 %i.k to i32            ; 2 uses
  store i32 %i.m, ptr %1, align 4
  %.not42 = icmp eq i32 %i.m, %i.f
  br i1 %.not42, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.203, ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef %i.k)
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.204, ptr noundef nonnull %0)
  br label %bb.n

bb.l:                                             ; preds = %bb.f
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.205, ptr noundef nonnull %0)
  br label %bb.n

bb.m:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.206, ptr noundef nonnull %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.l, %bb.m
  %.1 = phi ptr [ null, %bb.m ], [ null, %bb.l ], [ null, %bb.h ], [ %i.j, %bb.j ], [ %i.j, %bb.k ]
  %i.n = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.207, ptr noundef nonnull %0)
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.208)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.c
  %.031 = phi ptr [ %i.b, %bb.c ], [ null, %bb.p ], [ %.1, %bb.n ], [ null, %bb.o ]
  ret ptr %.031
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #36

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #36

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #36

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #36

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @UnloadFileData(ptr noundef captures(none) %0) local_unnamed_addr #33 {
bb.a:
  tail call void @free(ptr noundef %0) #56
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @SaveFileData(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @saveFileData, align 8     ; 2 uses
  %.not24 = icmp eq ptr %i.a, null
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call zeroext i1 %i.a(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) #56
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.209) ; 3 uses
  %.not25 = icmp eq ptr %i.c, null
  br i1 %.not25, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = sext i32 %2 to i64
  %i.e = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %i.d, ptr noundef nonnull %i.c)
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.210, ptr noundef nonnull %0)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %.not26 = icmp eq i32 %2, %i.f
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.211, ptr noundef nonnull %0)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.212, ptr noundef nonnull %0)
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %i.h = tail call i32 @fclose(ptr noundef nonnull %i.c)
  %i.i = icmp eq i32 %i.h, 0
  br label %bb.m

bb.k:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.207, ptr noundef nonnull %0)
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.208)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.c
  %.019 = phi i1 [ %i.b, %bb.c ], [ false, %bb.l ], [ %i.i, %bb.j ], [ false, %bb.k ]
  ret i1 %.019
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #36

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @ExportDataAsCode(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 10 uses
  %i.b = mul nsw i32 %1, 6
  %i.c = add nsw i32 %i.b, 2000
  %i.d = sext i32 %i.c to i64
  %i.e = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 1) #60 ; 16 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.e, ptr noundef nonnull align 1 dereferenceable(90) @.str.213, i64 89, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 89
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.f, ptr noundef nonnull align 1 dereferenceable(90) @.str.214, i64 89, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 178
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.g, ptr noundef nonnull align 1 dereferenceable(90) @.str.215, i64 89, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 267
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.h, ptr noundef nonnull align 1 dereferenceable(90) @.str.214, i64 89, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 356
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.i, ptr noundef nonnull align 1 dereferenceable(90) @.str.216, i64 89, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 445
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.j, ptr noundef nonnull align 1 dereferenceable(90) @.str.217, i64 89, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 534
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.k, ptr noundef nonnull align 1 dereferenceable(90) @.str.214, i64 89, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 623
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.l, ptr noundef nonnull align 1 dereferenceable(90) @.str.218, i64 89, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(90) %i.m, ptr noundef nonnull align 1 dereferenceable(90) @.str.214, i64 89, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 801
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(91) %i.n, ptr noundef nonnull align 1 dereferenceable(91) @.str.219, i64 91, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @GetFileNameWithoutExt.fileName, i8 0, i64 256, i1 false)
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %GetFileNameWithoutExt.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.03.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i ], [ null, %bb.a ] ; 2 uses
  %.052.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %2, %bb.a ]
  %i.p = tail call ptr @strpbrk(ptr noundef nonnull %.052.i.i.i, ptr noundef nonnull @.str.238) #57 ; 3 uses
  %.not7.i.i.i = icmp eq ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  br i1 %.not7.i.i.i, label %GetFileName.exit.i, label %.lr.ph.i.i.i

GetFileName.exit.i:                               ; preds = %.lr.ph.i.i.i
  %i.r = icmp eq ptr %.03.i.i.i, null
  %i.s = getelementptr inbounds nuw i8, ptr %.03.i.i.i, i64 1
  %.06.i.i = select i1 %i.r, ptr %2, ptr %i.s
  %i.t = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @GetFileNameWithoutExt.fileName, ptr noundef nonnull dereferenceable(1) %.06.i.i, i64 noundef 255) #56 ; 0 uses
  %i.u = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @GetFileNameWithoutExt.fileName) #57 ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.lr.ph.preheader.i, label %GetFileNameWithoutExt.exit

.lr.ph.preheader.i:                               ; preds = %GetFileName.exit.i
  %3 = and i64 %i.u, 2147483647
  br label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.x = icmp sgt i64 %indvars.iv.i, 1
  br i1 %i.x, label %.lr.ph.i, label %GetFileNameWithoutExt.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %3, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.b ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr @GetFileNameWithoutExt.fileName, i64 %indvars.iv.i
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.z, 46
  br i1 %i.aa, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr @GetFileNameWithoutExt.fileName, i64 %indvars.iv.i
  store i8 0, ptr %i.ab, align 1
  br label %GetFileNameWithoutExt.exit

GetFileNameWithoutExt.exit:                       ; preds = %bb.b, %bb.a, %GetFileName.exit.i, %bb.c
  %i.ac = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @GetFileNameWithoutExt.fileName, i64 noundef 255) #56 ; 0 uses
  %i.ad = load i8, ptr %i.a, align 16             ; 2 uses
  %.not79 = icmp eq i8 %i.ad, 0
  br i1 %.not79, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %GetFileNameWithoutExt.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 891
  %i.af = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull dereferenceable(1) @.str.220, ptr noundef nonnull %i.a, i32 noundef %1) #56
  %i.ag = add nsw i32 %i.af, 891                  ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.e, i64 %i.ah
  %i.aj = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) @.str.221, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a) #56
  %i.ak = add nsw i32 %i.ag, %i.aj                ; 2 uses
  %i.al = add i32 %1, -1                          ; 2 uses
  %i.am = icmp sgt i32 %1, 1
  br i1 %i.am, label %.lr.ph84.preheader, label %._crit_edge85

.lr.ph84.preheader:                               ; preds = %._crit_edge
  %wide.trip.count = zext nneg i32 %i.al to i64
  br label %.lr.ph84

.lr.ph:                                           ; preds = %GetFileNameWithoutExt.exit, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %GetFileNameWithoutExt.exit ] ; 2 uses
  %i.an = phi i8 [ %i.as, %bb.f ], [ %i.ad, %GetFileNameWithoutExt.exit ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.ap = add i8 %i.an, -97
  %or.cond = icmp ult i8 %i.ap, 26
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %narrow = add nsw i8 %i.an, -32
  br label %.sink.split

bb.e:                                             ; preds = %.lr.ph
  %switch.tableidx = add i8 %i.an, -33            ; 2 uses
  %i.aq = icmp ult i8 %switch.tableidx, 31
  br i1 %i.aq, label %switch.hole_check, label %bb.f

switch.hole_check:                                ; preds = %bb.e
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 1073755137, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %.sink.split, label %bb.f

.sink.split:                                      ; preds = %switch.hole_check, %bb.d
  %narrow.sink = phi i8 [ %narrow, %bb.d ], [ 95, %switch.hole_check ]
  store i8 %narrow.sink, ptr %i.ao, align 1
  br label %bb.f

bb.f:                                             ; preds = %switch.hole_check, %bb.e, %.sink.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next
  %i.as = load i8, ptr %i.ar, align 1             ; 2 uses
  %.not = icmp eq i8 %i.as, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge85:                                    ; preds = %.lr.ph84, %._crit_edge
  %.072.lcssa = phi i32 [ %i.ak, %._crit_edge ], [ %i.bl, %.lr.ph84 ]
  %i.at = sext i32 %.072.lcssa to i64
  %i.au = getelementptr inbounds i8, ptr %i.e, i64 %i.at
  %i.av = sext i32 %i.al to i64
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = zext i8 %i.ax to i32
  %i.az = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.au, ptr noundef nonnull dereferenceable(1) @.str.224, i32 noundef %i.ay) #56 ; 0 uses
  %i.ba = call zeroext i1 @SaveFileText(ptr noundef %2, ptr noundef nonnull %i.e) ; 2 uses
  call void @free(ptr noundef nonnull %i.e) #56
  br i1 %i.ba, label %bb.g, label %bb.h

.lr.ph84:                                         ; preds = %.lr.ph84.preheader, %.lr.ph84
  %indvars.iv89 = phi i64 [ 0, %.lr.ph84.preheader ], [ %indvars.iv.next90, %.lr.ph84 ] ; 3 uses
  %.07281 = phi i32 [ %i.ak, %.lr.ph84.preheader ], [ %i.bl, %.lr.ph84 ] ; 2 uses
  %i.bb = sext i32 %.07281 to i64
  %i.bc = getelementptr inbounds i8, ptr %i.e, i64 %i.bb
  %i.bd = trunc nuw nsw i64 %indvars.iv89 to i32
  %i.be = urem i32 %i.bd, 20
  %i.bf = icmp eq i32 %i.be, 0
  %i.bg = select i1 %i.bf, ptr @.str.222, ptr @.str.223
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv89
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i32
  %i.bk = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bc, ptr noundef nonnull dereferenceable(1) %i.bg, i32 noundef %i.bj) #56
  %i.bl = add nsw i32 %i.bk, %.07281              ; 2 uses
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge85, label %.lr.ph84

bb.g:                                             ; preds = %._crit_edge85
  call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.225, ptr noundef %2)
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge85
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.226, ptr noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret i1 %i.ba
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @GetFileNameWithoutExt(ptr nofree noundef readonly %0) local_unnamed_addr #30 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) @GetFileNameWithoutExt.fileName, i8 0, i64 256, i1 false)
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.03.i.i = phi ptr [ %i.a, %.lr.ph.i.i ], [ null, %bb.a ] ; 2 uses
  %.052.i.i = phi ptr [ %i.b, %.lr.ph.i.i ], [ %0, %bb.a ]
  %i.a = tail call ptr @strpbrk(ptr noundef nonnull %.052.i.i, ptr noundef nonnull @.str.238) #57 ; 3 uses
  %.not7.i.i = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br i1 %.not7.i.i, label %GetFileName.exit, label %.lr.ph.i.i

GetFileName.exit:                                 ; preds = %.lr.ph.i.i
  %i.c = icmp eq ptr %.03.i.i, null
  %i.d = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 1
  %.06.i = select i1 %i.c, ptr %0, ptr %i.d
  %i.e = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) @GetFileNameWithoutExt.fileName, ptr noundef nonnull dereferenceable(1) %.06.i, i64 noundef 255) #56 ; 0 uses
  %i.f = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @GetFileNameWithoutExt.fileName) #57 ; 2 uses
  %i.g = trunc i64 %i.f to i32
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %GetFileName.exit
  %1 = and i64 %i.f, 2147483647
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.i = icmp sgt i64 %indvars.iv, 1
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr @GetFileNameWithoutExt.fileName, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 46
  br i1 %i.l, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr @GetFileNameWithoutExt.fileName, i64 %indvars.iv
  store i8 0, ptr %i.m, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %GetFileName.exit, %bb.c, %bb.a
  ret ptr @GetFileNameWithoutExt.fileName
}

; Function Attrs: nounwind uwtable
define zeroext i1 @SaveFileText(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @saveFileText, align 8     ; 2 uses
  %.not18 = icmp eq ptr %i.a, null
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call zeroext i1 %i.a(ptr noundef nonnull %0, ptr noundef %1) #56
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.231) ; 3 uses
  %.not19 = icmp eq ptr %i.c, null
  br i1 %.not19, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.232, ptr noundef %1) #56
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.233, ptr noundef nonnull %0)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 3, ptr noundef nonnull @.str.234, ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.c)
  %i.g = icmp eq i32 %i.f, 0
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.230, ptr noundef nonnull %0)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.208)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.c
  %.014 = phi i1 [ %i.b, %bb.c ], [ false, %bb.j ], [ %i.g, %bb.h ], [ false, %bb.i ]
  ret i1 %.014
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #36

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @SetLoadFileDataCallback(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  store ptr %0, ptr @loadFileData, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @SetSaveFileDataCallback(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  store ptr %0, ptr @saveFileData, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @SetLoadFileTextCallback(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  store ptr %0, ptr @loadFileText, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @SetSaveFileTextCallback(ptr noundef %0) local_unnamed_addr #2 {
bb.a:
  store ptr %0, ptr @saveFileText, align 8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define noundef i32 @FileRename(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #45 {
bb.a:
  %i.a = tail call i32 @access(ptr noundef readonly %0, i32 noundef 0) #56
  %.not.i.not = icmp eq i32 %i.a, -1
  br i1 %.not.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @rename(ptr noundef %0, ptr noundef %1) #56
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #36

; Function Attrs: nofree nounwind uwtable
define noundef i32 @FileRemove(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #45 {
bb.a:
  %i.a = tail call i32 @access(ptr noundef readonly %0, i32 noundef 0) #56
  %.not.i.not = icmp eq i32 %i.a, -1
  br i1 %.not.i.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @remove(ptr noundef %0) #56
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @remove(ptr noundef readonly captures(none)) local_unnamed_addr #36

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @FileCopy(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  store i32 0, ptr %i.a, align 4
  %i.b = call ptr @LoadFileData(ptr noundef %0, ptr noundef nonnull %i.a) ; 3 uses
  %i.c = call ptr @GetDirectoryPath(ptr noundef %1) ; 0 uses
  %i.d = call noalias ptr @opendir(ptr noundef nonnull @GetDirectoryPath.dirPath) ; 2 uses
  %.not.i.not = icmp eq ptr %i.d, null
  br i1 %.not.i.not, label %DirectoryExists.exit, label %DirectoryExists.exit.thread

DirectoryExists.exit.thread:                      ; preds = %bb.a
  %i.e = call i32 @closedir(ptr noundef nonnull %i.d) ; 0 uses
  br label %.critedge

DirectoryExists.exit:                             ; preds = %bb.a
  %i.f = call ptr @GetDirectoryPath(ptr noundef %1) ; 0 uses
  %i.g = call i32 @MakeDirectory(ptr noundef nonnull @GetDirectoryPath.dirPath)
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.critedge, label %bb.c

.critedge:                                        ; preds = %DirectoryExists.exit.thread, %DirectoryExists.exit
  %i.i = icmp ne ptr %i.b, null
  %i.j = load i32, ptr %i.a, align 4              ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  %or.cond = select i1 %i.i, i1 %i.k, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.critedge
  %i.l = call zeroext i1 @SaveFileData(ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef %i.j)
  %i.m = zext i1 %i.l to i32
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b, %DirectoryExists.exit
  %.1 = phi i32 [ %i.m, %bb.b ], [ 0, %.critedge ], [ -1, %DirectoryExists.exit ]
  call void @free(ptr noundef %i.b) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  ret i32 %.1
}

; Function Attrs: nofree nounwind uwtable
define noundef zeroext i1 @DirectoryExists(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #45 {
bb.a:
  %i.a = tail call noalias ptr @opendir(ptr noundef %0) ; 2 uses
  %.not = icmp ne ptr %i.a, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @closedir(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i1 %.not
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @GetDirectoryPath(ptr nofree noundef readonly %0) local_unnamed_addr #30 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @GetDirectoryPath.dirPath, i8 0, i64 4096, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1
  %.not = icmp eq i8 %i.b, 58
  br i1 %.not, label %.lr.ph.i.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1
  switch i8 %i.c, label %bb.c [
    i8 92, label %.lr.ph.i.preheader
    i8 47, label %.lr.ph.i.preheader
  ]

bb.c:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@IsFileExtension:bb.a
bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.ai, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ap = sext i32 %.05165 to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ap
  store ptr %i.ao, ptr %i.aq, align 8
  %i.ar = add nsw i32 %.05165, 1
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c, %bb.d
  %.1 = phi i32 [ %i.ar, %bb.d ], [ %.05165, %bb.c ], [ %.05165, %.thread ] ; 3 uses
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %wide.trip.count79
  br i1 %exitcond80.not, label %.preheader, label %.lr.ph68

.lr.ph70:                                         ; preds = %.lr.ph70, %.lr.ph70.preheader
  %indvars.iv81 = phi i64 [ 0, %.lr.ph70.preheader ], [ %indvars.iv.next82, %.lr.ph70 ] ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv81
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  %i.au = load i8, ptr %i.at, align 1
  %.not60.not.not = icmp ne i8 %i.au, 46
  %spec.select.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %.not60.not.not to i64
  %spec.select.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.select.idx.sroa.sel.idx.sroa.sel.idx
  %i.av = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %spec.select.idx.sroa.sel.idx.sroa.sel, ptr noundef nonnull dereferenceable(1) %i.at) #57
  %i.aw = icmp eq i32 %i.av, 0                    ; 2 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %exitcond85.not = icmp eq i64 %indvars.iv.next82, %wide.trip.count84
  %or.cond95 = select i1 %i.aw, i1 true, i1 %exitcond85.not
  br i1 %or.cond95, label %._crit_edge71, label %.lr.ph70

._crit_edge71:                                    ; preds = %.lr.ph70, %.preheader
  %.lcssa = phi i1 [ false, %.preheader ], [ %i.aw, %.lr.ph70 ]
  tail call void @free(ptr noundef %i.y) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #56
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge71, %bb.a
  %.155 = phi i1 [ %.lcssa, %._crit_edge71 ], [ false, %bb.a ]
  ret i1 %.155
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @GetFileExtension(ptr nofree noundef readonly %0) local_unnamed_addr #17 {
bb.a:
  %i.a = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #57 ; 2 uses
  %i.b = icmp eq ptr %i.a, %0
  %.0 = select i1 %i.b, ptr null, ptr %i.a
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #35

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #36

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #36

; Function Attrs: nounwind uwtable
define noundef i32 @GetFileLength(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.201) ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @fseek(ptr noundef nonnull %i.a, i64 noundef 0, i32 noundef 2) ; 0 uses
  %i.c = tail call i64 @ftell(ptr noundef nonnull %i.a) ; 2 uses
  %i.d = icmp sgt i64 %i.c, 2147483647
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.237, ptr noundef %0)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.e = trunc i64 %i.c to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %i.e, %bb.d ]
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.1 = phi i32 [ %.0, %bb.e ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nofree nounwind uwtable
define i64 @GetFileModTime(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #45 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %1, i8 0, i64 144, i1 false)
  %i.a = call i32 @stat(ptr noundef %0, ptr noundef nonnull %1) #56
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %.0 = select i1 %i.b, i64 %i.d, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #56
  ret i64 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #36

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #35

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @GetFileName(ptr nofree noundef readonly %0) local_unnamed_addr #49 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %strprbrk.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.03.i = phi ptr [ %i.a, %.lr.ph.i ], [ null, %bb.a ]
  %.052.i = phi ptr [ %i.b, %.lr.ph.i ], [ %0, %bb.a ]
  %i.a = tail call ptr @strpbrk(ptr noundef nonnull %.052.i, ptr noundef nonnull @.str.238) #57 ; 3 uses
  %.not7.i = icmp eq ptr %i.a, null
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br i1 %.not7.i, label %strprbrk.exit, label %.lr.ph.i

strprbrk.exit:                                    ; preds = %.lr.ph.i, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %.03.i, %.lr.ph.i ] ; 2 uses
  %i.c = icmp eq ptr %.0, null
  %i.d = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.06 = select i1 %i.c, ptr %0, ptr %i.d
  ret ptr %.06
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef nonnull ptr @GetPrevDirectoryPath(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #30 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @GetPrevDirectoryPath.prevDirPath, i8 0, i64 4096, i1 false)
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #57
  %.fr = freeze i64 %i.a                          ; 2 uses
  %i.b = trunc i64 %.fr to i32
  %i.c = icmp slt i32 %i.b, 4
  br i1 %i.c, label %.loopexit.split.sink.split, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %i.d = and i64 %.fr, 2147483647                 ; 2 uses
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %.loopexit.split, label %.lr.ph

.split:                                           ; preds = %.lr.ph
  %i.e = icmp sgt i64 %indvars.iv26, 1
  br i1 %i.e, label %.lr.ph, label %.loopexit.split

.lr.ph:                                           ; preds = %.split.preheader, %.split
  %indvars.iv26 = phi i64 [ %indvars.iv.next, %.split ], [ %i.d, %.split.preheader ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv26, -1 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.g = load i8, ptr %i.f, align 1
  switch i8 %i.g, label %.split [
    i8 92, label %bb.b
    i8 47, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph
  %i.h = trunc nsw i64 %indvars.iv.next to i32
  switch i32 %i.h, label %bb.e [
    i32 2, label %bb.c
    i32 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = icmp eq i8 %i.j, 58
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.1 = phi i64 [ %indvars.iv26, %bb.d ], [ 2, %bb.c ], [ %indvars.iv.next, %bb.b ]
  %i.l = and i64 %.1, 4294967295
  br label %.loopexit.split.sink.split

.loopexit.split.sink.split:                       ; preds = %bb.a, %bb.e
  %.sink = phi i64 [ %i.l, %bb.e ], [ 4095, %bb.a ]
  %i.m = tail call ptr @strncpy(ptr noundef nonnull @GetPrevDirectoryPath.prevDirPath, ptr noundef nonnull %0, i64 noundef %.sink) #56 ; 0 uses
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %.split, %.split.preheader, %.loopexit.split.sink.split
  ret ptr @GetPrevDirectoryPath.prevDirPath
}

; Function Attrs: nounwind
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #42

; Function Attrs: nofree nounwind uwtable
define noundef nonnull ptr @GetApplicationDirectory() local_unnamed_addr #45 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) @GetApplicationDirectory.appDir, i8 0, i64 4096, i1 false)
  %i.a = tail call i64 @readlink(ptr noundef nonnull @.str.239, ptr noundef nonnull @GetApplicationDirectory.appDir, i64 noundef 4096) #56 ; 3 uses
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %0 = and i64 %i.a, 2147483648
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %2 = and i64 %i.a, 2147483647
  br label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.c = icmp sgt i64 %indvars.iv, 0
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv = phi i64 [ %2, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr @GetApplicationDirectory.appDir, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.d, label %bb.c

bb.d:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr @GetApplicationDirectory.appDir, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 0, ptr %i.h, align 1
  br label %.loopexit

bb.e:                                             ; preds = %bb.a
  store i8 46, ptr @GetApplicationDirectory.appDir, align 16
  store i8 47, ptr getelementptr inbounds nuw (i8, ptr @GetApplicationDirectory.appDir, i64 1), align 1
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.d, %bb.e
  ret ptr @GetApplicationDirectory.appDir
}

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr noundef readonly captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #36

; Function Attrs: nounwind uwtable
define { i32, ptr } @LoadDirectoryFiles(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call { i32, ptr } @LoadDirectoryFilesEx(ptr noundef %0, ptr noundef nonnull @.str.240, i1 noundef zeroext false)
  ret { i32, ptr } %i.a
}

; Function Attrs: nounwind uwtable
define { i32, ptr } @LoadDirectoryFilesEx(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.FilePathList, align 8       ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.a = tail call noalias ptr @opendir(ptr noundef readonly %0) ; 2 uses
  %.not.i.not = icmp eq ptr %i.a, null
  br i1 %.not.i.not, label %DirectoryExists.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @closedir(ptr noundef nonnull %i.a) ; 0 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i8, ptr %1, align 1
  %i.d = icmp eq i8 %i.c, 0
  %spec.store.select = select i1 %i.d, ptr null, ptr %1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.018 = phi ptr [ %spec.store.select, %bb.c ], [ null, %bb.b ] ; 2 uses
  %i.e = tail call i32 @GetDirectoryFileCountEx(ptr noundef %0, ptr noundef %.018, i1 noundef zeroext %2) ; 7 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 8) #60 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %.not24 = icmp eq i32 %i.e, 0
  br i1 %.not24, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  call fastcc void @ScanDirectoryFiles(ptr noundef %0, ptr noundef %3, ptr noundef %.018, i32 noundef %i.e, i1 noundef zeroext %2)
  %i.i = load i32, ptr %3, align 8                ; 2 uses
  %.not22 = icmp eq i32 %i.i, %i.e
  br i1 %.not22, label %bb.f, label %bb.e

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %i.j = tail call noalias dereferenceable_or_null(4096) ptr @calloc(i64 noundef 4096, i64 noundef 1) #60
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  store ptr %i.j, ptr %i.k, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %._crit_edge
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.241, i32 noundef %i.i, i32 noundef %i.e)
  br label %bb.f

DirectoryExists.exit:                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.242, ptr noundef %0)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %DirectoryExists.exit
  %.fca.0.load = phi i32 [ %i.e, %._crit_edge ], [ %i.e, %bb.e ], [ 0, %DirectoryExists.exit ]
  %.fca.0.insert = insertvalue { i32, ptr } poison, i32 %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load ptr, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { i32, ptr } %.fca.0.insert, ptr %.fca.1.load, 1
  ret { i32, ptr } %.fca.1.insert
}

; Function Attrs: nounwind uwtable
define i32 @GetDirectoryFileCountEx(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 5 uses
  %i.a = alloca [4096 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 0, i64 4096, i1 false)
  %i.b = tail call noalias ptr @opendir(ptr noundef %0) ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.p, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = tail call ptr @readdir(ptr noundef nonnull %i.b) #56 ; 2 uses
  %.not3042 = icmp eq ptr %i.c, null
  br i1 %.not3042, label %._crit_edge, label %sub_0.lr.ph

sub_0.lr.ph:                                      ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.not33 = icmp eq ptr %1, null                  ; 2 uses
  br label %sub_0

sub_0:                                            ; preds = %sub_0.lr.ph, %bb.o
  %i.e = phi ptr [ %i.c, %sub_0.lr.ph ], [ %i.ad, %bb.o ] ; 4 uses
  %.043 = phi i32 [ 0, %sub_0.lr.ph ], [ %.3, %bb.o ] ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 19 ; 2 uses
  %i.g = load i8, ptr %i.f, align 1
  %.not44 = icmp eq i8 %i.g, 46
  br i1 %.not44, label %.tail, label %.tail38.thread

.tail:                                            ; preds = %sub_0
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.i = load i8, ptr %i.h, align 1
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.o, label %sub_140

sub_140:                                          ; preds = %.tail
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.l = load i8, ptr %i.k, align 1
  %.not46 = icmp eq i8 %i.l, 46
  br i1 %.not46, label %.tail38, label %.tail38.thread

.tail38:                                          ; preds = %sub_140
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 21
  %i.n = load i8, ptr %i.m, align 1
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.o, label %.tail38.thread

.tail38.thread:                                   ; preds = %sub_0, %sub_140, %.tail38
  %i.p = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 4095, ptr noundef nonnull @.str.190, ptr noundef %0, ptr noundef nonnull %i.f) #56
  %or.cond = icmp ugt i32 %i.p, 4095
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.tail38.thread
  call void (i32, ptr, ...) @TraceLog(i32 noundef 4, ptr noundef nonnull @.str.246, i32 noundef 4096, ptr noundef %0)
  br label %bb.o

bb.c:                                             ; preds = %.tail38.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %3, i8 0, i64 144, i1 false)
  %i.q = call i32 @stat(ptr noundef nonnull readonly %i.a, ptr noundef nonnull %3) #56 ; 0 uses
  %i.r = load i32, ptr %i.d, align 8
  %i.s = and i32 %i.r, 61440
  %i.t = icmp eq i32 %i.s, 32768
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #56
  br i1 %i.t, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  br i1 %.not33, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.240) #57
  %.not36 = icmp eq ptr %i.u, null
  br i1 %.not36, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.247) #57
  %.not37 = icmp eq ptr %i.v, null
  br i1 %.not37, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = call zeroext i1 @IsFileExtension(ptr noundef nonnull %i.a, ptr noundef nonnull %1)
  br i1 %i.w, label %bb.h, label %bb.o

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.x = add i32 %.043, 1
  br label %bb.o

bb.i:                                             ; preds = %bb.c
  br i1 %.not33, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.240) #57
  %.not34 = icmp eq ptr %i.y, null
  br i1 %.not34, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.z = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.248) #57
  %.not35 = icmp eq ptr %i.z, null
  br i1 %.not35, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.aa = add i32 %.043, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.1 = phi i32 [ %i.aa, %bb.l ], [ %.043, %bb.k ], [ %.043, %bb.i ] ; 2 uses
  br i1 %2, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = call i32 @GetDirectoryFileCountEx(ptr noundef nonnull %i.a, ptr noundef %1, i1 noundef zeroext true)
  %i.ac = add i32 %i.ab, %.1
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.m, %bb.n, %bb.g, %bb.h, %.tail38, %.tail
  %.3 = phi i32 [ %.043, %.tail ], [ %.043, %.tail38 ], [ %.043, %bb.b ], [ %i.x, %bb.h ], [ %.043, %bb.g ], [ %i.ac, %bb.n ], [ %.1, %bb.m ] ; 2 uses
end_hunk_1
