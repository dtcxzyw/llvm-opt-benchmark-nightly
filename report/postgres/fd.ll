Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/fd?download=true
inline.NumInlined: 91
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@set_max_safe_fds:bb.a
  %i.az = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.11, i32 noundef %i.ay, i32 noundef %.us-phi51.i9, i32 noundef %i.am) #24 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1082, ptr noundef nonnull @__func__.set_max_safe_fds) #24
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  ret void
}

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @BasicOpenFile(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @pg_file_create_mode, align 4
  %i.b = tail call i32 @BasicOpenFilePerm(ptr noundef %0, i32 noundef %1, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, -2147483648) i32 @BasicOpenFilePerm(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1, i32 noundef %2) #24 ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #25    ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.off = add i32 %i.d, -23
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #24
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @errcode(i32 noundef 197) #24 ; 0 uses
  %i.g = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.12) #24 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1148, ptr noundef nonnull @__func__.BasicOpenFilePerm) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 0, ptr %i.c, align 4
  %i.h = load i32, ptr @nfile, align 4
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.e
  store i32 %i.d, ptr %i.c, align 4
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr @VfdCache, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i32, ptr %i.k, align 4
  tail call fastcc void @LruDelete(i32 noundef %i.l)
  %i.m = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef %1, i32 noundef %2) #24 ; 2 uses
  %i.n = icmp sgt i32 %i.m, -1
  br i1 %i.n, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.a, %.thread
  %.07 = phi i32 [ -1, %.thread ], [ %i.a, %bb.a ], [ %i.m, %bb.f ], [ -1, %bb.b ]
  ret i32 %.07
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @AcquireExternalFD() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @numExternalFDs, align 4   ; 3 uses
  %i.b = load i32, ptr @max_safe_fds, align 4     ; 2 uses
  %i.c = sdiv i32 %i.b, 3
  %i.d = icmp slt i32 %i.a, %i.c                  ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr @nfile, align 4            ; 2 uses
  %i.f = load i32, ptr @numAllocatedDescs, align 4
  %i.g = add i32 %i.e, %i.a
  %i.h = add i32 %i.g, %i.f
  %.not1.i.i = icmp sge i32 %i.h, %i.b
  %i.i = icmp sgt i32 %i.e, 0
  %or.cond2.i.i = and i1 %i.i, %.not1.i.i
  br i1 %or.cond2.i.i, label %ReleaseLruFile.exit.i.i, label %ReserveExternalFD.exit

ReleaseLruFile.exit.i.i:                          ; preds = %bb.b, %ReleaseLruFile.exit.i.i
  %i.j = load ptr, ptr @VfdCache, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.l = load i32, ptr %i.k, align 4
  tail call fastcc void @LruDelete(i32 noundef %i.l)
  %i.m = load i32, ptr @nfile, align 4            ; 2 uses
  %i.n = load i32, ptr @numAllocatedDescs, align 4
  %i.o = add i32 %i.n, %i.m
  %i.p = load i32, ptr @numExternalFDs, align 4   ; 2 uses
  %i.q = add i32 %i.o, %i.p
  %i.r = load i32, ptr @max_safe_fds, align 4
  %.not.i.i = icmp sge i32 %i.q, %i.r
  %i.s = icmp sgt i32 %i.m, 0
  %or.cond.i.i = and i1 %i.s, %.not.i.i
  br i1 %or.cond.i.i, label %ReleaseLruFile.exit.i.i, label %ReserveExternalFD.exit, !llvm.loop !11

ReserveExternalFD.exit:                           ; preds = %ReleaseLruFile.exit.i.i, %bb.b
  %i.t = phi i32 [ %i.a, %bb.b ], [ %i.p, %ReleaseLruFile.exit.i.i ]
  %i.u = add i32 %i.t, 1
  store i32 %i.u, ptr @numExternalFDs, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.v = tail call ptr @__errno_location() #25
  store i32 24, ptr %i.v, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %ReserveExternalFD.exit
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define dso_local void @ReserveExternalFD() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @nfile, align 4            ; 2 uses
  %i.b = load i32, ptr @numAllocatedDescs, align 4
  %i.c = add i32 %i.b, %i.a
  %i.d = load i32, ptr @numExternalFDs, align 4   ; 2 uses
  %i.e = add i32 %i.c, %i.d
  %i.f = load i32, ptr @max_safe_fds, align 4
  %.not1.i = icmp sge i32 %i.e, %i.f
  %i.g = icmp sgt i32 %i.a, 0
  %or.cond2.i = and i1 %i.g, %.not1.i
  br i1 %or.cond2.i, label %ReleaseLruFile.exit.i, label %ReleaseLruFiles.exit

ReleaseLruFile.exit.i:                            ; preds = %bb.a, %ReleaseLruFile.exit.i
  %i.h = load ptr, ptr @VfdCache, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.j = load i32, ptr %i.i, align 4
  tail call fastcc void @LruDelete(i32 noundef %i.j)
  %i.k = load i32, ptr @nfile, align 4            ; 2 uses
  %i.l = load i32, ptr @numAllocatedDescs, align 4
  %i.m = add i32 %i.l, %i.k
  %i.n = load i32, ptr @numExternalFDs, align 4   ; 2 uses
  %i.o = add i32 %i.m, %i.n
  %i.p = load i32, ptr @max_safe_fds, align 4
  %.not.i = icmp sge i32 %i.o, %i.p
  %i.q = icmp sgt i32 %i.k, 0
  %or.cond.i = and i1 %i.q, %.not.i
  br i1 %or.cond.i, label %ReleaseLruFile.exit.i, label %ReleaseLruFiles.exit, !llvm.loop !11

ReleaseLruFiles.exit:                             ; preds = %ReleaseLruFile.exit.i, %bb.a
  %i.r = phi i32 [ %i.d, %bb.a ], [ %i.n, %ReleaseLruFile.exit.i ]
  %i.s = add i32 %i.r, 1
  store i32 %i.s, ptr @numExternalFDs, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @ReleaseExternalFD() local_unnamed_addr #12 {
bb.a:
  %i.a = load i32, ptr @numExternalFDs, align 4
  %i.b = add i32 %i.a, -1
  store i32 %i.b, ptr @numExternalFDs, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PathNameOpenFile(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @pg_file_create_mode, align 4
  %i.b = tail call i32 @PathNameOpenFilePerm(ptr noundef %0, i32 noundef %1, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local i32 @PathNameOpenFilePerm(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @strdup(ptr noundef %0) #24 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #26 ; 0 uses
  %i.d = tail call i32 @errcode(i32 noundef 8389) #24 ; 0 uses
  %i.e = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #24 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1592, ptr noundef nonnull @__func__.PathNameOpenFilePerm) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @VfdCache, align 8         ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %AllocateVfd.exit

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @SizeVfdCache, align 8     ; 3 uses
  %i.k = shl i64 %i.j, 1
  %spec.store.select.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 32) ; 5 uses
  %i.l = mul i64 %spec.store.select.i, 56
  %i.m = tail call ptr @realloc(ptr noundef nonnull %i.f, i64 noundef %i.l) #28 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #26 ; 0 uses
  %i.p = tail call i32 @errcode(i32 noundef 8389) #24 ; 0 uses
  %i.q = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8) #24 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1431, ptr noundef nonnull @__func__.AllocateVfd) #24
  unreachable

bb.f:                                             ; preds = %bb.d
  store ptr %i.m, ptr @VfdCache, align 8
  %i.r = trunc i64 %i.j to i32                    ; 3 uses
  %3 = and i64 %i.j, 4294967295                   ; 2 uses
  %i.s = icmp ugt i64 %spec.store.select.i, %3
  br i1 %i.s, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %.loopexit.i
  %i.t = phi i64 [ %i.ab, %.loopexit.i ], [ %3, %bb.f ]
  %.03034.i = phi i32 [ %i.z, %.loopexit.i ], [ %i.r, %bb.f ]
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %i.m, i64 %i.t ; 5 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = and i64 %i.v, 7
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %.preheader.preheader.i, label %bb.g

.preheader.preheader.i:                           ; preds = %.lr.ph.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, i8 0, i64 56, i1 false)
  br label %.loopexit.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(52) %i.y, i8 0, i64 52, i1 false)
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.g, %.preheader.preheader.i
  %i.z = add i32 %.03034.i, 1                     ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i32 %i.z, ptr %i.aa, align 8
  store i32 -1, ptr %i.u, align 8
  %i.ab = zext i32 %i.z to i64                    ; 2 uses
  %i.ac = icmp ugt i64 %spec.store.select.i, %i.ab
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !12

._crit_edge.i:                                    ; preds = %.loopexit.i, %bb.f
  %i.ad = getelementptr [56 x i8], ptr %i.m, i64 %spec.store.select.i
  %i.ae = getelementptr i8, ptr %i.ad, i64 -40
  store i32 0, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %i.r, ptr %i.af, align 8
  store i64 %spec.store.select.i, ptr @SizeVfdCache, align 8
  br label %AllocateVfd.exit

AllocateVfd.exit:                                 ; preds = %bb.c, %._crit_edge.i
  %i.ag = phi i32 [ %i.r, %._crit_edge.i ], [ %i.h, %bb.c ] ; 5 uses
  %i.ah = phi ptr [ %i.m, %._crit_edge.i ], [ %i.f, %bb.c ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = sext i32 %i.ag to i64                   ; 3 uses
  %i.ak = getelementptr inbounds [56 x i8], ptr %i.ah, i64 %i.aj ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i32, ptr %i.al, align 8
  store i32 %i.am, ptr %i.ai, align 8
  %i.an = load i32, ptr @nfile, align 4           ; 2 uses
  %i.ao = load i32, ptr @numAllocatedDescs, align 4
  %i.ap = add i32 %i.ao, %i.an
  %i.aq = load i32, ptr @numExternalFDs, align 4
  %i.ar = add i32 %i.ap, %i.aq
  %i.as = load i32, ptr @max_safe_fds, align 4
  %.not1.i = icmp sge i32 %i.ar, %i.as
  %i.at = icmp sgt i32 %i.an, 0
  %or.cond2.i = and i1 %i.at, %.not1.i
  br i1 %or.cond2.i, label %ReleaseLruFile.exit.i, label %ReleaseLruFiles.exit

ReleaseLruFile.exit.i:                            ; preds = %AllocateVfd.exit, %ReleaseLruFile.exit.i
  %i.au = load ptr, ptr @VfdCache, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 20
  %i.aw = load i32, ptr %i.av, align 4
  tail call fastcc void @LruDelete(i32 noundef %i.aw)
  %i.ax = load i32, ptr @nfile, align 4           ; 2 uses
  %i.ay = load i32, ptr @numAllocatedDescs, align 4
  %i.az = add i32 %i.ay, %i.ax
  %i.ba = load i32, ptr @numExternalFDs, align 4
  %i.bb = add i32 %i.az, %i.ba
  %i.bc = load i32, ptr @max_safe_fds, align 4
  %.not.i = icmp sge i32 %i.bb, %i.bc
  %i.bd = icmp sgt i32 %i.ax, 0
  %or.cond.i = and i1 %i.bd, %.not.i
  br i1 %or.cond.i, label %ReleaseLruFile.exit.i, label %ReleaseLruFiles.exit, !llvm.loop !11

ReleaseLruFiles.exit:                             ; preds = %ReleaseLruFile.exit.i, %AllocateVfd.exit
  %i.be = or i32 %1, 524288                       ; 2 uses
  %i.bf = tail call i32 @BasicOpenFilePerm(ptr noundef %0, i32 noundef %i.be, i32 noundef %2) ; 2 uses
  store i32 %i.bf, ptr %i.ak, align 8
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.h, label %bb.j

bb.h:                                             ; preds = %ReleaseLruFiles.exit
  %i.bh = tail call ptr @__errno_location() #25   ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4
  %i.bj = load ptr, ptr @VfdCache, align 8        ; 2 uses
  %i.bk = getelementptr inbounds [56 x i8], ptr %i.bj, i64 %i.aj ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 40 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %.not.i24 = icmp eq ptr %i.bm, null
  br i1 %.not.i24, label %FreeVfd.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.bm) #24
  store ptr null, ptr %i.bl, align 8
  br label %FreeVfd.exit

FreeVfd.exit:                                     ; preds = %bb.h, %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i16 0, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store i32 %i.bp, ptr %i.bq, align 8
  store i32 %i.ag, ptr %i.bo, align 8
  tail call void @free(ptr noundef %i.a) #24
  store i32 %i.bi, ptr %i.bh, align 4
  br label %bb.k

bb.j:                                             ; preds = %ReleaseLruFiles.exit
  %i.br = load i32, ptr @nfile, align 4
  %i.bs = add i32 %i.br, 1
  store i32 %i.bs, ptr @nfile, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr %i.a, ptr %i.bt, align 8
  %i.bu = and i32 %i.be, -705
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i32 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ak, i64 52
  store i32 %2, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store i64 0, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  store i16 0, ptr %i.by, align 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr null, ptr %i.bz, align 8
  %i.ca = load ptr, ptr @VfdCache, align 8        ; 3 uses
  %i.cb = getelementptr inbounds [56 x i8], ptr %i.ca, i64 %i.aj ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 20
  store i32 0, ptr %i.cc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 24 ; 2 uses
  store i32 %i.ce, ptr %i.cf, align 8
  store i32 %i.ag, ptr %i.cd, align 8
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [56 x i8], ptr %i.ca, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  store i32 %i.ag, ptr %i.cj, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %FreeVfd.exit
  %.0 = phi i32 [ -1, %FreeVfd.exit ], [ %i.ag, %bb.j ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @PathNameCreateTemporaryDir(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @pg_dir_create_mode, align 4
  %i.b = tail call noundef i32 @mkdir(ptr noundef readonly %1, i32 noundef %i.a) #24
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #25    ; 3 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 17
  br i1 %i.f, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @pg_dir_create_mode, align 4
  %i.h = tail call noundef i32 @mkdir(ptr noundef readonly %0, i32 noundef %i.g) #24
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %i.d, align 4
  %.not = icmp eq i32 %i.j, 17
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #26 ; 0 uses
  %i.l = tail call i32 @errcode_for_file_access() #24 ; 0 uses
  %i.m = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.13, ptr noundef %0) #24 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1664, ptr noundef nonnull @__func__.PathNameCreateTemporaryDir) #24
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.n = load i32, ptr @pg_dir_create_mode, align 4
  %i.o = tail call noundef i32 @mkdir(ptr noundef readonly %1, i32 noundef %i.n) #24
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.q = load i32, ptr %i.d, align 4
  %.not5 = icmp eq i32 %i.q, 17
  br i1 %.not5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #26 ; 0 uses
  %i.s = tail call i32 @errcode_for_file_access() #24 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.14, ptr noundef %1) #24 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1671, ptr noundef nonnull @__func__.PathNameCreateTemporaryDir) #24
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.b, %bb.a
  ret void
end_hunk_0
