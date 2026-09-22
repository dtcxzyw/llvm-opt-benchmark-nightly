Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_elf?download=true
inline.NumInlined: 37
inline.NumDeleted: 2
begin_hunk_0_@llvm.lifetime.start.p0

declare void @cli_dbgmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @cli_rawaddr(i32 noundef range(i32 1, 0) %0, ptr nofree noundef nonnull readonly captures(none) %1, i16 noundef zeroext %2, i8 noundef zeroext range(i8 0, 2) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #6 {
bb.a:
  %.not2839.not = icmp eq i16 %2, 0
  br i1 %.not2839.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not.i = icmp eq i8 %3, 0                      ; 3 uses
  %wide.trip.count52 = zext i16 %2 to i64         ; 2 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %bb.c ], [ 0, %.lr.ph ] ; 2 uses
  %i.a = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv49 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18   ; 2 uses
  %.not.us = icmp ugt i32 %i.c, %0
  br i1 %.not.us, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19
  %i.f = add i32 %i.e, %i.c
  %i.g = icmp ugt i32 %i.f, %0
  br i1 %i.g, label %.split.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us, %bb.b
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %.critedge, label %.lr.ph.split.us, !llvm.loop !47

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !18
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)  ; 2 uses
  %.not = icmp ugt i32 %i.k, %0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  %i.o = add i32 %i.n, %i.k
  %i.p = icmp ugt i32 %i.o, %0
  br i1 %i.p, label %.split.us, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count52
  br i1 %exitcond.not, label %.critedge, label %.lr.ph.split, !llvm.loop !47

.critedge:                                        ; preds = %bb.e, %bb.c, %bb.a
  store i8 1, ptr %4, align 1, !tbaa !8
  br label %bb.f

.split.us:                                        ; preds = %bb.d, %bb.b
  %.us-phi = phi ptr [ %i.a, %bb.b ], [ %i.h, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.us-phi, i64 8
  store i8 0, ptr %4, align 1, !tbaa !8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18   ; 2 uses
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)
  %.0.i34 = select i1 %.not.i, i32 %i.r, i32 %i.s
  %i.t = sub i32 %0, %.0.i34
  %i.u = getelementptr inbounds nuw i8, ptr %.us-phi, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !17   ; 2 uses
  %i.w = tail call i32 @llvm.bswap.i32(i32 %i.v)
  %.0.i36 = select i1 %.not.i, i32 %i.v, i32 %i.w
  %i.x = add i32 %i.t, %.0.i36
  br label %bb.f

bb.f:                                             ; preds = %.split.us, %.critedge
  %.025 = phi i32 [ %i.x, %.split.us ], [ 0, %.critedge ]
  ret i32 %.025
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @cli_elfheader(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.elf_file_hdr32, align 4     ; 13 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.74) #8
  %i.b = call i64 @read(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 52) #8
  %.not = icmp eq i64 %i.b, 52
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.1) #8
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  %lhsv = load i32, ptr %2, align 4
  %.not85 = icmp eq i32 %lhsv, 1179403647
  br i1 %.not85, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.3) #8
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i8, ptr %i.c, align 4, !tbaa !8
  %.not86 = icmp eq i8 %i.d, 1
  br i1 %.not86, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.4) #8
  br label %bb.ad

bb.g:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
  %.fr111 = freeze i8 %i.f
  %i.g = icmp ne i8 %.fr111, 1                    ; 9 uses
  %spec.select = zext i1 %i.g to i8
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.i = load i16, ptr %i.h, align 4, !tbaa !12   ; 2 uses
  %i.j = tail call i16 @llvm.bswap.i16(i16 %i.i)
  %.0.i = select i1 %i.g, i16 %i.j, i16 %i.i      ; 4 uses
  %i.k = icmp ugt i16 %.0.i, 128
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.27) #8
  br label %bb.ad

bb.i:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11   ; 2 uses
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  %.0.i97 = select i1 %i.g, i32 %i.n, i32 %i.m    ; 2 uses
  %i.o = icmp ne i16 %.0.i, 0
  %i.p = icmp ne i32 %.0.i97, 0
  %or.cond = select i1 %i.o, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.j, label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.r = load i16, ptr %i.q, align 2, !tbaa !14   ; 2 uses
  %i.s = tail call i16 @llvm.bswap.i16(i16 %i.r)
  %.0.i98 = select i1 %i.g, i16 %i.s, i16 %i.r
  %.not87 = icmp eq i16 %.0.i98, 32
  br i1 %.not87, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.29) #8
  br label %bb.ad

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !15   ; 2 uses
  %i.v = tail call i32 @llvm.bswap.i32(i32 %i.u)
  %.0.i99 = select i1 %i.g, i32 %i.v, i32 %i.u    ; 2 uses
  %i.w = zext i32 %.0.i99 to i64
  %i.x = tail call i64 @lseek(i32 noundef %0, i64 noundef %i.w, i32 noundef 0) #8
  %i.y = trunc i64 %i.x to i32
  %.not88 = icmp eq i32 %.0.i99, %i.y
  br i1 %.not88, label %bb.m, label %bb.ad

bb.m:                                             ; preds = %bb.l
  %i.z = zext nneg i16 %.0.i to i64               ; 2 uses
  %i.aa = tail call ptr @cli_calloc(i64 noundef %i.z, i64 noundef 32) #8 ; 5 uses
  %.not89 = icmp eq ptr %i.aa, null
  br i1 %.not89, label %bb.n, label %.preheader106

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.31) #8
  br label %bb.ad

.preheader106:                                    ; preds = %bb.m, %bb.p
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.p ], [ 0, %bb.m ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = tail call i64 @read(i32 noundef %0, ptr noundef nonnull %i.ab, i64 noundef 32) #8
  %.not96 = icmp eq i64 %i.ac, 32
  br i1 %.not96, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.preheader106
  %i.ad = trunc nuw nsw i64 %indvars.iv to i32
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.33, i32 noundef %i.ad) #8
  tail call void @free(ptr noundef nonnull %i.aa) #8
  br label %bb.ad

bb.p:                                             ; preds = %.preheader106
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.z
  br i1 %exitcond.not, label %bb.q, label %.preheader106, !llvm.loop !48

bb.q:                                             ; preds = %bb.p
  %i.ae = call fastcc i32 @cli_rawaddr(i32 noundef %.0.i97, ptr noundef %i.aa, i16 noundef zeroext %.0.i, i8 noundef zeroext %spec.select, ptr noundef %i.a)
  tail call void @free(ptr noundef nonnull %i.aa) #8
  %i.af = load i8, ptr %i.a, align 1, !tbaa !8
  %.not90 = icmp eq i8 %i.af, 0
  br i1 %.not90, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.41) #8
  br label %bb.ad

bb.s:                                             ; preds = %bb.q, %bb.i
  %.074 = phi i32 [ %i.ae, %bb.q ], [ 0, %bb.i ]
  store i32 %.074, ptr %1, align 8, !tbaa !53
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ah = load i16, ptr %i.ag, align 4, !tbaa !21 ; 2 uses
  %i.ai = tail call i16 @llvm.bswap.i16(i16 %i.ah)
  %.0.i100 = select i1 %i.g, i16 %i.ai, i16 %i.ah ; 4 uses
  %i.aj = icmp ugt i16 %.0.i100, 256
  br i1 %i.aj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.45) #8
  br label %bb.ad

bb.u:                                             ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i16 %.0.i100, ptr %i.ak, align 4, !tbaa !54
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 46
  %i.am = load i16, ptr %i.al, align 2, !tbaa !22 ; 2 uses
  %i.an = tail call i16 @llvm.bswap.i16(i16 %i.am)
  %.0.i101 = select i1 %i.g, i16 %i.an, i16 %i.am
  %.not91 = icmp eq i16 %.0.i101, 40
  br i1 %.not91, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.46) #8
  br label %bb.ad

bb.w:                                             ; preds = %bb.u
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !23 ; 2 uses
  %i.aq = tail call i32 @llvm.bswap.i32(i32 %i.ap)
  %.0.i102 = select i1 %i.g, i32 %i.aq, i32 %i.ap ; 2 uses
  %i.ar = zext i32 %.0.i102 to i64
  %i.as = tail call i64 @lseek(i32 noundef %0, i64 noundef %i.ar, i32 noundef 0) #8
  %i.at = trunc i64 %i.as to i32
  %.not92 = icmp eq i32 %.0.i102, %i.at
  br i1 %.not92, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.au = load i16, ptr %i.ak, align 4, !tbaa !54
  %i.av = zext i16 %i.au to i64
  %i.aw = tail call ptr @cli_calloc(i64 noundef %i.av, i64 noundef 36) #8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !55
  %.not93 = icmp eq ptr %i.aw, null
  br i1 %.not93, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.48) #8
  br label %bb.ad

bb.z:                                             ; preds = %bb.x
  %i.ay = zext nneg i16 %.0.i100 to i64           ; 3 uses
  %i.az = tail call ptr @cli_calloc(i64 noundef %i.ay, i64 noundef 40) #8 ; 5 uses
  %.not94 = icmp eq ptr %i.az, null
  br i1 %.not94, label %bb.ab, label %.preheader

.preheader:                                       ; preds = %bb.z
  %.not110 = icmp eq i16 %.0.i100, 0
  br i1 %.not110, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  br i1 %i.g, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.aa
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %bb.aa ], [ 0, %.lr.ph ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %indvars.iv121 ; 4 uses
  %i.bb = tail call i64 @read(i32 noundef %0, ptr noundef nonnull %i.ba, i64 noundef 40) #8
  %.not95.us = icmp eq i64 %i.bb, 40
  br i1 %.not95.us, label %bb.aa, label %.split.us

bb.aa:                                            ; preds = %.lr.ph.split.us
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !56
  %i.be = tail call i32 @llvm.bswap.i32(i32 %i.bd)
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.bg = getelementptr inbounds nuw [36 x i8], ptr %i.bf, i64 %indvars.iv121 ; 3 uses
  store i32 %i.be, ptr %i.bg, align 4, !tbaa !58
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !25
  %i.bj = tail call i32 @llvm.bswap.i32(i32 %i.bi)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !59
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !26
  %i.bn = tail call i32 @llvm.bswap.i32(i32 %i.bm)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !60
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %i.ay
  br i1 %exitcond125.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !49

bb.ab:                                            ; preds = %bb.z
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.48) #8
  %i.bp = load ptr, ptr %i.ax, align 8, !tbaa !55
  tail call void @free(ptr noundef %i.bp) #8
  store ptr null, ptr %i.ax, align 8, !tbaa !55
  br label %bb.ad

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.ac
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %bb.ac ], [ 0, %.lr.ph ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %i.az, i64 %indvars.iv116 ; 3 uses
  %i.br = tail call i64 @read(i32 noundef %0, ptr noundef nonnull %i.bq, i64 noundef 40) #8
  %.not95 = icmp eq i64 %i.br, 40
  br i1 %.not95, label %bb.ac, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  tail call void @free(ptr noundef nonnull %i.az) #8
  %i.bs = load ptr, ptr %i.ax, align 8, !tbaa !55
  tail call void @free(ptr noundef %i.bs) #8
  store ptr null, ptr %i.ax, align 8, !tbaa !55
  br label %bb.ad

bb.ac:                                            ; preds = %.lr.ph.split
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !56
  %i.bv = load ptr, ptr %i.ax, align 8, !tbaa !55
  %i.bw = getelementptr inbounds nuw [36 x i8], ptr %i.bv, i64 %indvars.iv116 ; 2 uses
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !58
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.bz = load <2 x i32>, ptr %i.bx, align 4, !tbaa !7
  store <2 x i32> %i.bz, ptr %i.by, align 4, !tbaa !7
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %i.ay
  br i1 %exitcond120.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !49

._crit_edge:                                      ; preds = %bb.ac, %bb.aa, %.preheader
  tail call void @free(ptr noundef nonnull %i.az) #8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.w, %bb.l, %._crit_edge, %.split.us, %bb.ab, %bb.y, %bb.v, %bb.t, %bb.r, %bb.o, %bb.n, %bb.k, %bb.h, %bb.f, %bb.d, %bb.b
  %.076 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.h ], [ -1, %bb.k ], [ -1, %bb.n ], [ -1, %bb.o ], [ -1, %bb.r ], [ -1, %bb.t ], [ -1, %bb.v ], [ -1, %bb.l ], [ -1, %.split.us ], [ 0, %._crit_edge ], [ -1, %bb.ab ], [ -1, %bb.y ], [ -1, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.076
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!"elf_file_hdr32", !5, i64 0, !9, i64 16, !9, i64 18, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !9, i64 40, !9, i64 42, !9, i64 44, !9, i64 46, !9, i64 48, !9, i64 50}
!11 = !{!10, !6, i64 24}
!12 = !{!10, !9, i64 44}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!10, !9, i64 42}
!15 = !{!10, !6, i64 28}
!16 = !{!"elf_program_hdr32", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
!17 = !{!16, !6, i64 4}
!18 = !{!16, !6, i64 8}
!19 = !{!16, !6, i64 20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!10, !9, i64 48}
end_hunk_0
