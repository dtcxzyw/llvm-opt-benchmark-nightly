inline.NumInlined: 19
inline.NumDeleted: 1
begin_hunk_0_@LexGetToken:bb.a

.loopexit:                                        ; preds = %.preheader296, %bb.az, %bb.br, %bb.m, %bb.n, %bb.o, %bb.cu, %bb.k, %bb.j, %bb.l, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.y, %bb.bt, %bb.bs, %bb.be
  %.5198 = phi ptr [ null, %bb.cu ], [ %i.y, %bb.j ], [ null, %bb.k ], [ null, %bb.l ], [ %.2195, %bb.br ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.y ], [ null, %bb.ad ], [ %i.cg, %bb.aa ], [ %i.cj, %bb.ab ], [ null, %bb.ac ], [ %i.nt, %bb.bs ], [ %i.nx, %bb.bt ], [ null, %bb.az ], [ %i.jw, %bb.be ], [ null, %.preheader296 ] ; 2 uses
  %.2192 = phi i8 [ %.0190, %bb.cu ], [ %.0190, %bb.j ], [ %.0190, %bb.k ], [ %.0190, %bb.l ], [ %.1191, %bb.br ], [ %.0190, %bb.m ], [ %.0190, %bb.n ], [ %i.ay, %bb.o ], [ %.0190, %bb.y ], [ %.0190, %bb.ad ], [ %.0190, %bb.aa ], [ %.0190, %bb.ab ], [ %.0190, %bb.ac ], [ %.0190, %bb.bs ], [ %.0190, %bb.bt ], [ %.0190, %bb.az ], [ %.0190, %bb.be ], [ %.0190, %.preheader296 ] ; 2 uses
  %.1189 = phi i8 [ %.0188, %bb.cu ], [ %.0188, %bb.j ], [ %.0188, %bb.k ], [ %.0188, %bb.l ], [ %.0188, %bb.br ], [ %i.at, %bb.m ], [ %i.au, %bb.n ], [ 0, %bb.o ], [ 0, %bb.y ], [ %.0188, %bb.ad ], [ %.0188, %bb.aa ], [ %.0188, %bb.ab ], [ 0, %bb.ac ], [ %.0188, %bb.bs ], [ %.0188, %bb.bt ], [ 0, %bb.az ], [ %.0188, %bb.be ], [ %.0188, %.preheader296 ] ; 2 uses
  %.10 = phi ptr [ %i.l, %bb.cu ], [ %i.z, %bb.j ], [ %i.l, %bb.k ], [ %i.ar, %bb.l ], [ %.6, %bb.br ], [ %i.l, %bb.m ], [ %i.l, %bb.n ], [ %i.az, %bb.o ], [ %i.cc, %bb.y ], [ %i.l, %bb.ad ], [ %.0187, %bb.aa ], [ %.0187, %bb.ab ], [ %i.ck, %bb.ac ], [ %.5, %bb.bs ], [ %.5, %bb.bt ], [ %.5, %bb.az ], [ %.5, %bb.be ], [ %.1, %.preheader296 ] ; 2 uses
  %i.vd = icmp eq ptr %.5198, null
  br i1 %i.vd, label %bb.f, label %.thread287, !llvm.loop !70

.thread287:                                       ; preds = %.loopexit, %._crit_edge, %._crit_edge345, %._crit_edge350, %bb.bc, %._crit_edge355, %._crit_edge360
  %.10295 = phi ptr [ %.7, %._crit_edge350 ], [ %.5, %bb.bc ], [ %.5, %._crit_edge355 ], [ %.5, %._crit_edge360 ], [ %i.oh, %._crit_edge ], [ %i.oh, %._crit_edge345 ], [ %.10, %.loopexit ] ; 2 uses
  %.1189294 = phi i8 [ %.0188, %._crit_edge350 ], [ %.0188, %bb.bc ], [ %.0188, %._crit_edge355 ], [ %.0188, %._crit_edge360 ], [ %.0188, %._crit_edge ], [ %.0188, %._crit_edge345 ], [ %.1189, %.loopexit ]
  %.2192293 = phi i8 [ %.0190, %._crit_edge350 ], [ %.0190, %bb.bc ], [ %.0190, %._crit_edge355 ], [ %.0190, %._crit_edge360 ], [ %.0190, %._crit_edge ], [ %.0190, %._crit_edge345 ], [ %.2192, %.loopexit ]
  %.5198292 = phi ptr [ %i.pe, %._crit_edge350 ], [ %i.jj, %bb.bc ], [ %i.hn, %._crit_edge355 ], [ %i.ew, %._crit_edge360 ], [ %i.sy, %._crit_edge ], [ %i.qy, %._crit_edge345 ], [ %.5198, %.loopexit ] ; 3 uses
  %i.ve = load ptr, ptr @startline, align 8, !tbaa !23
  %i.vf = ptrtoint ptr %.10295 to i64
  %i.vg = ptrtoint ptr %i.ve to i64
  %i.vh = sub i64 %i.vf, %i.vg
  %i.vi = icmp sgt i64 %i.vh, 2047
  br i1 %i.vi, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.thread287
  %i.vj = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.vk = and i32 %i.vj, 1048575
  %i.vl = or disjoint i32 %i.vk, 1048576
  store i32 %i.vl, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.vm = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 15, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull @file_pos) #10 ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.thread287
  store ptr %.10295, ptr @chpt, align 8, !tbaa !23
  %i.vn = getelementptr inbounds nuw i8, ptr %.5198292, i64 42
  store i8 %.2192293, ptr %i.vn, align 2, !tbaa !8
  %i.vo = getelementptr inbounds nuw i8, ptr %.5198292, i64 41
  store i8 %.1189294, ptr %i.vo, align 1, !tbaa !8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.d
  %.0185 = phi ptr [ %i.b, %bb.d ], [ %.5198292, %bb.cw ]
  ret ptr %.0185
}

declare ptr @NewToken(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @srcnext() unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @blksize, align 4, !tbaa !4
  %.not = icmp ne i32 %i.a, 0
  %.pre = load ptr, ptr @chpt, align 8, !tbaa !23 ; 3 uses
  %.pre13 = load ptr, ptr @limit, align 8, !tbaa !23 ; 3 uses
  %i.b = icmp ult ptr %.pre, %.pre13
  %or.cond23 = select i1 %.not, i1 %i.b, i1 false
  br i1 %or.cond23, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @buf, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.d = phi ptr [ %.pre13, %bb.b ], [ %i.e, %bb.c ] ; 3 uses
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.g, %bb.c ]  ; 2 uses
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8     ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %.0, i64 -1 ; 2 uses
  store i8 %i.f, ptr %i.g, align 1, !tbaa !8
  %.not8 = icmp eq i8 %i.f, 10
  br i1 %.not8, label %bb.d, label %bb.c, !llvm.loop !71

bb.d:                                             ; preds = %bb.c
  store ptr %.0, ptr @frst, align 8, !tbaa !23
  store ptr %i.d, ptr @limit, align 8, !tbaa !23
  store i32 0, ptr @blksize, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.h = phi ptr [ %i.d, %bb.d ], [ %.pre13, %bb.a ] ; 2 uses
  %.not9 = icmp ult ptr %.pre, %i.h
  br i1 %.not9, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = icmp ugt ptr %.pre, %i.h
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.k = and i32 %i.j, 1048575
  %i.l = or disjoint i32 %i.k, 1048576
  store i32 %i.l, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.m = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 5, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull @file_pos) #10 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = load ptr, ptr @frst, align 8, !tbaa !23
  store ptr %i.n, ptr @chpt, align 8, !tbaa !23
  %i.o = load ptr, ptr @buf, align 8, !tbaa !23
  %i.p = load ptr, ptr @fp, align 8, !tbaa !32
  %i.q = tail call i64 @fread(ptr noundef %i.o, i64 noundef 1, i64 noundef 8192, ptr noundef %i.p) ; 2 uses
  %i.r = trunc i64 %i.q to i32                    ; 5 uses
  store i32 %i.r, ptr @blksize, align 4, !tbaa !4
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.i, label %._crit_edge

._crit_edge:                                      ; preds = %bb.h
  %.pre14 = load i8, ptr @last_char, align 1
  %.pre16.pre = load ptr, ptr @buf, align 8, !tbaa !23
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = load ptr, ptr @buf, align 8, !tbaa !23   ; 2 uses
  %i.u = and i64 %i.q, 2147483647
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8     ; 2 uses
  store i8 %i.x, ptr @last_char, align 1, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.i
  %.pre16 = phi ptr [ %.pre16.pre, %._crit_edge ], [ %i.t, %bb.i ] ; 3 uses
  %i.y = phi i8 [ %.pre14, %._crit_edge ], [ %i.x, %bb.i ]
  %i.z = icmp slt i32 %i.r, 8192
  %i.aa = icmp ne i8 %i.y, 10
  %or.cond = select i1 %i.z, i1 %i.aa, i1 false
  br i1 %or.cond, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ab = add nsw i32 %i.r, 1                     ; 3 uses
  store i32 %i.ab, ptr @blksize, align 4, !tbaa !4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %.pre16, i64 %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.ad, i64 -1
  store i8 10, ptr %i.ae, align 1, !tbaa !8
  store i8 10, ptr @last_char, align 1, !tbaa !8
  %i.af = load i16, ptr @ftype, align 2, !tbaa !31
  %i.ag = icmp eq i16 %i.af, 3
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.ah = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 25, ptr noundef nonnull @.str.55, i32 noundef 1, ptr noundef nonnull @file_pos) #10 ; 0 uses
  %.pre15 = load ptr, ptr @buf, align 8, !tbaa !23
  %.pre17 = load i32, ptr @blksize, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.l, %bb.k
  %i.ai = phi i32 [ %i.ab, %bb.k ], [ %.pre17, %bb.l ], [ %i.r, %bb.j ]
  %i.aj = phi ptr [ %.pre16, %bb.k ], [ %.pre15, %bb.l ], [ %.pre16, %bb.j ] ; 2 uses
  store ptr %i.aj, ptr @frst, align 8, !tbaa !23
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak ; 3 uses
  store ptr %i.al, ptr @limit, align 8, !tbaa !23
  store i8 10, ptr %i.al, align 1, !tbaa !8
  %.pre18 = load ptr, ptr @chpt, align 8, !tbaa !23
  %i.am = icmp ult ptr %.pre18, %i.al
  br i1 %i.am, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr @buf, align 8, !tbaa !23  ; 3 uses
  store ptr %i.an, ptr @limit, align 8, !tbaa !23
  store ptr %i.an, ptr @chpt, align 8, !tbaa !23
  store i8 0, ptr %i.an, align 1, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.n, %bb.m
  ret void
}

declare zeroext i16 @NextFile(i16 noundef zeroext) local_unnamed_addr #4

declare ptr @OpenFile(i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @SearchSym(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @GetMemory(i32 noundef, ptr noundef) local_unnamed_addr #4

declare ptr @CopyTokenList(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

declare ptr @SymName(ptr noundef) local_unnamed_addr #4

declare void @UnSuppressScope() local_unnamed_addr #4

declare ptr @Parse(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @ReplaceWithTidy(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @SuppressScope() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare zeroext i16 @DefineFile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local ptr @LexScanVerbatim(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 22 uses
  %i.b = alloca [512 x i8], align 16              ; 35 uses
  %i.c = alloca i32, align 4                      ; 56 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  %i.e = load ptr, ptr @next_token, align 8, !tbaa !35
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 16, ptr noundef nonnull @.str.42, i32 noundef 1, ptr noundef %2) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr @chpt, align 8, !tbaa !23
  store i32 0, ptr %i.c, align 4, !tbaa !4
  %i.h = icmp eq ptr %0, null                     ; 19 uses
  %.not246 = icmp eq i32 %1, 0                    ; 2 uses
  %.not253 = icmp eq i32 %3, 0                    ; 2 uses
  %i.i = select i1 %.not253, ptr @.str.45, ptr @.str.44
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %bb.c
  %.0186317 = phi ptr [ %i.g, %bb.c ], [ %.0186317.be, %.backedge ] ; 23 uses
  %.0187316 = phi i32 [ 0, %bb.c ], [ %.0187316.be, %.backedge ] ; 26 uses
  %.0191314 = phi i32 [ 1, %bb.c ], [ %.0191314.be, %.backedge ] ; 6 uses
  %.0199313 = phi ptr [ null, %bb.c ], [ %.0199313.be, %.backedge ] ; 29 uses
  %.0202312 = phi i32 [ 0, %bb.c ], [ %.0202312.be, %.backedge ] ; 23 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.0186317, i64 1 ; 24 uses
  %i.k = load i8, ptr %.0186317, align 1, !tbaa !8 ; 6 uses
  %i.l = zext i8 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !tbaa !8
  switch i8 %i.n, label %bb.dh [
    i8 3, label %bb.e
    i8 4, label %bb.e
    i8 2, label %bb.e
    i8 5, label %bb.q
    i8 7, label %bb.q
    i8 6, label %bb.q
    i8 8, label %bb.y
    i8 9, label %bb.ah
    i8 0, label %bb.ak
    i8 1, label %bb.bv
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.o = icmp sgt i32 %.0202312, 0
  br i1 %i.o, label %.lr.ph309.preheader, label %._crit_edge310

.lr.ph309.preheader:                              ; preds = %bb.e
  %wide.trip.count373 = zext nneg i32 %.0202312 to i64
  br label %.lr.ph309

.lr.ph309:                                        ; preds = %.lr.ph309.preheader, %bb.k
  %indvars.iv370 = phi i64 [ 0, %.lr.ph309.preheader ], [ %indvars.iv.next371, %bb.k ] ; 3 uses
  %.1200306 = phi ptr [ %.0199313, %.lr.ph309.preheader ], [ %.2201, %bb.k ] ; 4 uses
  br i1 %i.h, label %bb.f, label %bb.j

bb.f:                                             ; preds = %.lr.ph309
  %i.p = load i32, ptr %i.c, align 4, !tbaa !4    ; 3 uses
  %i.q = icmp slt i32 %i.p, 512
  br i1 %i.q, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv370
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8     ; 2 uses
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = icmp eq i8 %i.v, 8
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = call fastcc ptr @BuildLines(ptr noundef %.1200306, ptr noundef %i.b, ptr noundef %i.c)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.y = add nsw i32 %i.p, 1
  store i32 %i.y, ptr %i.c, align 4, !tbaa !4
  %i.z = sext i32 %i.p to i64
  %i.aa = getelementptr inbounds i8, ptr %i.b, i64 %i.z
  store i8 %i.s, ptr %i.aa, align 1, !tbaa !8
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph309
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv370
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !8
  %i.ad = zext i8 %i.ac to i32
  %i.ae = call i32 @putc(i32 noundef %i.ad, ptr noundef nonnull %0) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.i, %bb.f
  %.2201 = phi ptr [ %i.x, %bb.h ], [ %.1200306, %bb.i ], [ %.1200306, %bb.f ], [ %.1200306, %bb.j ] ; 2 uses
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1 ; 2 uses
  %exitcond374.not = icmp eq i64 %indvars.iv.next371, %wide.trip.count373
  br i1 %exitcond374.not, label %._crit_edge310, label %.lr.ph309, !llvm.loop !72

._crit_edge310:                                   ; preds = %bb.k, %bb.e
  %.1200.lcssa = phi ptr [ %.0199313, %bb.e ], [ %.2201, %bb.k ] ; 4 uses
  br i1 %i.h, label %bb.l, label %bb.p

bb.l:                                             ; preds = %._crit_edge310
  %i.af = load i32, ptr %i.c, align 4, !tbaa !4   ; 3 uses
  %i.ag = icmp slt i32 %i.af, 512
  br i1 %i.ag, label %bb.m, label %.backedge

bb.m:                                             ; preds = %bb.l
  %i.ah = load i8, ptr %.0186317, align 1, !tbaa !8 ; 2 uses
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !8
  %i.al = icmp eq i8 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.am = call fastcc ptr @BuildLines(ptr noundef %.1200.lcssa, ptr noundef %i.b, ptr noundef %i.c)
  br label %.backedge

bb.o:                                             ; preds = %bb.m
  %i.an = add nsw i32 %i.af, 1
  store i32 %i.an, ptr %i.c, align 4, !tbaa !4
  %i.ao = sext i32 %i.af to i64
  %i.ap = getelementptr inbounds i8, ptr %i.b, i64 %i.ao
  store i8 %i.ah, ptr %i.ap, align 1, !tbaa !8
  br label %.backedge

bb.p:                                             ; preds = %._crit_edge310
  %i.aq = load i8, ptr %.0186317, align 1, !tbaa !8
  %i.ar = zext i8 %i.aq to i32
  %i.as = call i32 @putc(i32 noundef %i.ar, ptr noundef nonnull %0) ; 0 uses
  br label %.backedge

bb.q:                                             ; preds = %bb.d, %bb.d, %bb.d
  %.not256 = icmp eq i32 %.0191314, 0
  br i1 %.not256, label %bb.r, label %.backedge

bb.r:                                             ; preds = %bb.q
  %i.at = icmp eq i32 %.0202312, 512
  br i1 %i.at, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.r, %bb.x
  %indvars.iv366 = phi i64 [ %indvars.iv.next367, %bb.x ], [ 0, %bb.r ] ; 3 uses
  %.3304 = phi ptr [ %.4, %bb.x ], [ %.0199313, %bb.r ] ; 4 uses
  br i1 %i.h, label %bb.s, label %bb.w

bb.s:                                             ; preds = %.preheader
  %i.au = load i32, ptr %i.c, align 4, !tbaa !4   ; 3 uses
  %i.av = icmp slt i32 %i.au, 512
  br i1 %i.av, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv366
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !8   ; 2 uses
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !8
  %i.bb = icmp eq i8 %i.ba, 8
  br i1 %i.bb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bc = call fastcc ptr @BuildLines(ptr noundef %.3304, ptr noundef %i.b, ptr noundef %i.c)
  br label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.bd = add nsw i32 %i.au, 1
  store i32 %i.bd, ptr %i.c, align 4, !tbaa !4
  %i.be = sext i32 %i.au to i64
  %i.bf = getelementptr inbounds i8, ptr %i.b, i64 %i.be
  store i8 %i.ax, ptr %i.bf, align 1, !tbaa !8
  br label %bb.x

bb.w:                                             ; preds = %.preheader
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv366
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !8
  %i.bi = zext i8 %i.bh to i32
  %i.bj = call i32 @putc(i32 noundef %i.bi, ptr noundef nonnull %0) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u, %bb.v, %bb.s
  %.4 = phi ptr [ %i.bc, %bb.u ], [ %.3304, %bb.v ], [ %.3304, %bb.s ], [ %.3304, %bb.w ] ; 2 uses
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond369.not = icmp eq i64 %indvars.iv.next367, 512
  br i1 %exitcond369.not, label %.loopexit.loopexit, label %.preheader, !llvm.loop !73

.loopexit.loopexit:                               ; preds = %bb.x
  %.pre375.a = load i8, ptr %.0186317, align 1, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.r
  %i.bk = phi i8 [ %i.k, %bb.r ], [ %.pre375.a, %.loopexit.loopexit ]
  %.1203 = phi i32 [ %.0202312, %bb.r ], [ 0, %.loopexit.loopexit ] ; 2 uses
  %.5 = phi ptr [ %.0199313, %bb.r ], [ %.4, %.loopexit.loopexit ]
  %i.bl = add nsw i32 %.1203, 1
  %i.bm = sext i32 %.1203 to i64
  %i.bn = getelementptr inbounds i8, ptr %i.a, i64 %i.bm
  store i8 %i.bk, ptr %i.bn, align 1, !tbaa !8
  br label %.backedge

bb.y:                                             ; preds = %bb.d
  %.not254 = icmp eq i32 %.0191314, 0
end_hunk_0
begin_hunk_1_@LexScanVerbatim:bb.a
  store i8 %i.dk, ptr %i.ds, align 1, !tbaa !8
  br label %bb.aw

bb.av:                                            ; preds = %._crit_edge295
  %i.dt = load i8, ptr %.0186317, align 1, !tbaa !8
  %i.du = zext i8 %i.dt to i32
  %i.dv = call i32 @putc(i32 noundef %i.du, ptr noundef nonnull %0) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ar, %bb.au, %bb.at, %bb.av
  %.12 = phi ptr [ %i.dp, %bb.at ], [ %.10.lcssa, %bb.au ], [ %.10.lcssa, %bb.ar ], [ %.10.lcssa, %bb.av ]
  %i.dw = add nsw i32 %.0187316, 1
  br label %.backedge

bb.ax:                                            ; preds = %bb.ak
  %i.dx = icmp eq i32 %.0187316, 0
  %or.cond = select i1 %.not246, i1 %i.dx, i1 false
  br i1 %or.cond, label %bb.di, label %.preheader263

.preheader263:                                    ; preds = %bb.ax
  %i.dy = icmp sgt i32 %.0202312, 0
  br i1 %i.dy, label %.lr.ph289.preheader, label %._crit_edge290

.lr.ph289.preheader:                              ; preds = %.preheader263
  %wide.trip.count350 = zext nneg i32 %.0202312 to i64
  br label %.lr.ph289

.lr.ph289:                                        ; preds = %.lr.ph289.preheader, %bb.bd
  %indvars.iv347 = phi i64 [ 0, %.lr.ph289.preheader ], [ %indvars.iv.next348, %bb.bd ] ; 3 uses
  %.13287 = phi ptr [ %.0199313, %.lr.ph289.preheader ], [ %.14, %bb.bd ] ; 4 uses
  br i1 %i.h, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %.lr.ph289
  %i.dz = load i32, ptr %i.c, align 4, !tbaa !4   ; 3 uses
  %i.ea = icmp slt i32 %i.dz, 512
  br i1 %i.ea, label %bb.az, label %bb.bd

bb.az:                                            ; preds = %bb.ay
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv347
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !8   ; 2 uses
  %i.ed = zext i8 %i.ec to i64
  %i.ee = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !8
  %i.eg = icmp eq i8 %i.ef, 8
  br i1 %i.eg, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.eh = call fastcc ptr @BuildLines(ptr noundef %.13287, ptr noundef %i.b, ptr noundef %i.c)
  br label %bb.bd

bb.bb:                                            ; preds = %bb.az
  %i.ei = add nsw i32 %i.dz, 1
  store i32 %i.ei, ptr %i.c, align 4, !tbaa !4
  %i.ej = sext i32 %i.dz to i64
  %i.ek = getelementptr inbounds i8, ptr %i.b, i64 %i.ej
  store i8 %i.ec, ptr %i.ek, align 1, !tbaa !8
  br label %bb.bd

bb.bc:                                            ; preds = %.lr.ph289
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv347
  %i.em = load i8, ptr %i.el, align 1, !tbaa !8
  %i.en = zext i8 %i.em to i32
  %i.eo = call i32 @putc(i32 noundef %i.en, ptr noundef nonnull %0) ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.ba, %bb.bb, %bb.ay
  %.14 = phi ptr [ %i.eh, %bb.ba ], [ %.13287, %bb.bb ], [ %.13287, %bb.ay ], [ %.13287, %bb.bc ] ; 2 uses
  %indvars.iv.next348 = add nuw nsw i64 %indvars.iv347, 1 ; 2 uses
  %exitcond351.not = icmp eq i64 %indvars.iv.next348, %wide.trip.count350
  br i1 %exitcond351.not, label %._crit_edge290, label %.lr.ph289, !llvm.loop !76

._crit_edge290:                                   ; preds = %bb.bd, %.preheader263
  %.13.lcssa = phi ptr [ %.0199313, %.preheader263 ], [ %.14, %bb.bd ] ; 4 uses
  br i1 %i.h, label %bb.be, label %bb.bi

bb.be:                                            ; preds = %._crit_edge290
  %i.ep = load i32, ptr %i.c, align 4, !tbaa !4   ; 3 uses
  %i.eq = icmp slt i32 %i.ep, 512
  br i1 %i.eq, label %bb.bf, label %bb.bj

bb.bf:                                            ; preds = %bb.be
  %i.er = load i8, ptr %.0186317, align 1, !tbaa !8 ; 2 uses
  %i.es = zext i8 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !8
  %i.ev = icmp eq i8 %i.eu, 8
  br i1 %i.ev, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ew = call fastcc ptr @BuildLines(ptr noundef %.13.lcssa, ptr noundef %i.b, ptr noundef %i.c)
  br label %bb.bj

bb.bh:                                            ; preds = %bb.bf
  %i.ex = add nsw i32 %i.ep, 1
  store i32 %i.ex, ptr %i.c, align 4, !tbaa !4
  %i.ey = sext i32 %i.ep to i64
  %i.ez = getelementptr inbounds i8, ptr %i.b, i64 %i.ey
  store i8 %i.er, ptr %i.ez, align 1, !tbaa !8
  br label %bb.bj

bb.bi:                                            ; preds = %._crit_edge290
  %i.fa = load i8, ptr %.0186317, align 1, !tbaa !8
  %i.fb = zext i8 %i.fa to i32
  %i.fc = call i32 @putc(i32 noundef %i.fb, ptr noundef nonnull %0) ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.be, %bb.bh, %bb.bg, %bb.bi
  %.15 = phi ptr [ %i.ew, %bb.bg ], [ %.13.lcssa, %bb.bh ], [ %.13.lcssa, %bb.be ], [ %.13.lcssa, %bb.bi ]
  %i.fd = add nsw i32 %.0187316, -1
  br label %.backedge

.lr.ph299:                                        ; preds = %.lr.ph299.preheader, %bb.bp
  %indvars.iv357 = phi i64 [ 0, %.lr.ph299.preheader ], [ %indvars.iv.next358, %bb.bp ] ; 3 uses
  %.16297 = phi ptr [ %.0199313, %.lr.ph299.preheader ], [ %.17, %bb.bp ] ; 4 uses
  br i1 %i.h, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %.lr.ph299
  %i.fe = load i32, ptr %i.c, align 4, !tbaa !4   ; 3 uses
  %i.ff = icmp slt i32 %i.fe, 512
  br i1 %i.ff, label %bb.bl, label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv357
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !8   ; 2 uses
  %i.fi = zext i8 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !8
  %i.fl = icmp eq i8 %i.fk, 8
  br i1 %i.fl, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.fm = call fastcc ptr @BuildLines(ptr noundef %.16297, ptr noundef %i.b, ptr noundef %i.c)
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bl
  %i.fn = add nsw i32 %i.fe, 1
  store i32 %i.fn, ptr %i.c, align 4, !tbaa !4
  %i.fo = sext i32 %i.fe to i64
  %i.fp = getelementptr inbounds i8, ptr %i.b, i64 %i.fo
  store i8 %i.fh, ptr %i.fp, align 1, !tbaa !8
  br label %bb.bp

bb.bo:                                            ; preds = %.lr.ph299
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv357
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !8
  %i.fs = zext i8 %i.fr to i32
  %i.ft = call i32 @putc(i32 noundef %i.fs, ptr noundef nonnull %0) ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bm, %bb.bn, %bb.bk
  %.17 = phi ptr [ %i.fm, %bb.bm ], [ %.16297, %bb.bn ], [ %.16297, %bb.bk ], [ %.16297, %bb.bo ] ; 2 uses
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %exitcond361.not = icmp eq i64 %indvars.iv.next358, %wide.trip.count360
  br i1 %exitcond361.not, label %._crit_edge300, label %.lr.ph299, !llvm.loop !77

._crit_edge300:                                   ; preds = %bb.bp, %.preheader261
  %.16.lcssa = phi ptr [ %.0199313, %.preheader261 ], [ %.17, %bb.bp ] ; 4 uses
  br i1 %i.h, label %bb.bq, label %bb.bu

bb.bq:                                            ; preds = %._crit_edge300
  %i.fu = load i32, ptr %i.c, align 4, !tbaa !4   ; 3 uses
  %i.fv = icmp slt i32 %i.fu, 512
  br i1 %i.fv, label %bb.br, label %.backedge

bb.br:                                            ; preds = %bb.bq
  %i.fw = load i8, ptr %.0186317, align 1, !tbaa !8 ; 2 uses
  %i.fx = zext i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.fx
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !8
  %i.ga = icmp eq i8 %i.fz, 8
  br i1 %i.ga, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.gb = call fastcc ptr @BuildLines(ptr noundef %.16.lcssa, ptr noundef %i.b, ptr noundef %i.c)
  br label %.backedge

bb.bt:                                            ; preds = %bb.br
  %i.gc = add nsw i32 %i.fu, 1
  store i32 %i.gc, ptr %i.c, align 4, !tbaa !4
  %i.gd = sext i32 %i.fu to i64
  %i.ge = getelementptr inbounds i8, ptr %i.b, i64 %i.gd
  store i8 %i.fw, ptr %i.ge, align 1, !tbaa !8
  br label %.backedge

bb.bu:                                            ; preds = %._crit_edge300
  %i.gf = load i8, ptr %.0186317, align 1, !tbaa !8
  %i.gg = zext i8 %i.gf to i32
  %i.gh = call i32 @putc(i32 noundef %i.gg, ptr noundef nonnull %0) ; 0 uses
  br label %.backedge

bb.bv:                                            ; preds = %bb.d
  %i.gi = icmp eq i8 %i.k, 64
  br i1 %i.gi, label %bb.ca, label %.preheader265

.preheader265:                                    ; preds = %bb.bv
  %i.gj = icmp sgt i32 %.0202312, 0
  br i1 %i.gj, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader265
  %wide.trip.count325 = zext nneg i32 %.0202312 to i64 ; 2 uses
  br i1 %i.h, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.pre375 = load i32, ptr %i.c, align 4, !tbaa !4
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.bz
  %4 = phi i32 [ %.pre375, %.lr.ph.split.us.preheader ], [ %5, %bb.bz ] ; 4 uses
  %indvars.iv322 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next323, %bb.bz ] ; 2 uses
  %.25266.us = phi ptr [ %.0199313, %.lr.ph.split.us.preheader ], [ %.26.us, %bb.bz ] ; 3 uses
  %i.gk = icmp slt i32 %4, 512
  br i1 %i.gk, label %bb.bw, label %bb.bz

bb.bw:                                            ; preds = %.lr.ph.split.us
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv322
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !8   ; 2 uses
  %i.gn = zext i8 %i.gm to i64
  %i.go = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !8
  %i.gq = icmp eq i8 %i.gp, 8
  br i1 %i.gq, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gr = add nsw i32 %4, 1                       ; 2 uses
  store i32 %i.gr, ptr %i.c, align 4, !tbaa !4
  %i.gs = sext i32 %4 to i64
  %i.gt = getelementptr inbounds i8, ptr %i.b, i64 %i.gs
  store i8 %i.gm, ptr %i.gt, align 1, !tbaa !8
  br label %bb.bz

bb.by:                                            ; preds = %bb.bw
  %i.gu = call fastcc ptr @BuildLines(ptr noundef %.25266.us, ptr noundef %i.b, ptr noundef %i.c)
  %.pre = load i32, ptr %i.c, align 4, !tbaa !4
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %.lr.ph.split.us
  %5 = phi i32 [ %.pre, %bb.by ], [ %i.gr, %bb.bx ], [ %4, %.lr.ph.split.us ]
  %.26.us = phi ptr [ %i.gu, %bb.by ], [ %.25266.us, %bb.bx ], [ %.25266.us, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv.next323 = add nuw nsw i64 %indvars.iv322, 1 ; 2 uses
  %exitcond326.not = icmp eq i64 %indvars.iv.next323, %wide.trip.count325
  br i1 %exitcond326.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !78

bb.ca:                                            ; preds = %bb.bv
  br i1 %.not246, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gv = call i32 @StringBeginsWith(ptr noundef nonnull %.0186317, ptr noundef nonnull @.str.47) #10
  %.not247 = icmp eq i32 %i.gv, 0
  br i1 %.not247, label %bb.cc, label %bb.di

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.gw = call i32 @StringBeginsWith(ptr noundef nonnull %.0186317, ptr noundef nonnull @.str.48) #10
  %.not248 = icmp eq i32 %i.gw, 0
  br i1 %.not248, label %bb.cd, label %bb.ci

bb.cd:                                            ; preds = %bb.cc
  %i.gx = call i32 @StringBeginsWith(ptr noundef nonnull %.0186317, ptr noundef nonnull @.str.49) #10
  %.not249 = icmp eq i32 %i.gx, 0
  br i1 %.not249, label %.preheader264, label %bb.ci

.preheader264:                                    ; preds = %bb.cd
  %i.gy = icmp sgt i32 %.0202312, 0
  br i1 %i.gy, label %.lr.ph283, label %._crit_edge284

.lr.ph283:                                        ; preds = %.preheader264
  %wide.trip.count345 = zext nneg i32 %.0202312 to i64 ; 2 uses
  br i1 %i.h, label %.lr.ph283.split.us.preheader, label %.lr.ph283.split

.lr.ph283.split.us.preheader:                     ; preds = %.lr.ph283
  %.pre379 = load i32, ptr %i.c, align 4, !tbaa !4
  br label %.lr.ph283.split.us

.lr.ph283.split.us:                               ; preds = %.lr.ph283.split.us.preheader, %bb.ch
  %6 = phi i32 [ %.pre379, %.lr.ph283.split.us.preheader ], [ %7, %bb.ch ] ; 4 uses
  %indvars.iv342 = phi i64 [ 0, %.lr.ph283.split.us.preheader ], [ %indvars.iv.next343, %bb.ch ] ; 2 uses
  %.22281.us = phi ptr [ %.0199313, %.lr.ph283.split.us.preheader ], [ %.23.us, %bb.ch ] ; 3 uses
  %i.gz = icmp slt i32 %6, 512
  br i1 %i.gz, label %bb.ce, label %bb.ch

bb.ce:                                            ; preds = %.lr.ph283.split.us
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv342
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !8   ; 2 uses
  %i.hc = zext i8 %i.hb to i64
  %i.hd = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !8
  %i.hf = icmp eq i8 %i.he, 8
  br i1 %i.hf, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.hg = add nsw i32 %6, 1                       ; 2 uses
  store i32 %i.hg, ptr %i.c, align 4, !tbaa !4
  %i.hh = sext i32 %6 to i64
  %i.hi = getelementptr inbounds i8, ptr %i.b, i64 %i.hh
  store i8 %i.hb, ptr %i.hi, align 1, !tbaa !8
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.hj = call fastcc ptr @BuildLines(ptr noundef %.22281.us, ptr noundef %i.b, ptr noundef %i.c)
  %.pre378 = load i32, ptr %i.c, align 4, !tbaa !4
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %.lr.ph283.split.us
  %7 = phi i32 [ %.pre378, %bb.cg ], [ %i.hg, %bb.cf ], [ %6, %.lr.ph283.split.us ]
  %.23.us = phi ptr [ %i.hj, %bb.cg ], [ %.22281.us, %bb.cf ], [ %.22281.us, %.lr.ph283.split.us ] ; 2 uses
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 2 uses
  %exitcond346.not = icmp eq i64 %indvars.iv.next343, %wide.trip.count345
  br i1 %exitcond346.not, label %._crit_edge284, label %.lr.ph283.split.us, !llvm.loop !79

bb.ci:                                            ; preds = %bb.cd, %bb.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  %i.hk = call i32 @StringBeginsWith(ptr noundef nonnull %.0186317, ptr noundef nonnull @.str.49) #10
  %i.hl = icmp sgt i32 %.0202312, 0
  br i1 %i.hl, label %.lr.ph271, label %._crit_edge272

.lr.ph271:                                        ; preds = %bb.ci
  %wide.trip.count335 = zext nneg i32 %.0202312 to i64 ; 2 uses
  br i1 %i.h, label %.lr.ph271.split.us.preheader, label %.lr.ph271.split

.lr.ph271.split.us.preheader:                     ; preds = %.lr.ph271
  %.pre377 = load i32, ptr %i.c, align 4, !tbaa !4
  br label %.lr.ph271.split.us

.lr.ph271.split.us:                               ; preds = %.lr.ph271.split.us.preheader, %bb.cm
  %8 = phi i32 [ %.pre377, %.lr.ph271.split.us.preheader ], [ %9, %bb.cm ] ; 4 uses
  %indvars.iv332 = phi i64 [ 0, %.lr.ph271.split.us.preheader ], [ %indvars.iv.next333, %bb.cm ] ; 2 uses
  %.18268.us = phi ptr [ %.0199313, %.lr.ph271.split.us.preheader ], [ %.19.us, %bb.cm ] ; 3 uses
  %i.hm = icmp slt i32 %8, 512
  br i1 %i.hm, label %bb.cj, label %bb.cm

bb.cj:                                            ; preds = %.lr.ph271.split.us
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv332
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !8   ; 2 uses
  %i.hp = zext i8 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.hp
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !8
  %i.hs = icmp eq i8 %i.hr, 8
  br i1 %i.hs, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ht = add nsw i32 %8, 1                       ; 2 uses
  store i32 %i.ht, ptr %i.c, align 4, !tbaa !4
  %i.hu = sext i32 %8 to i64
  %i.hv = getelementptr inbounds i8, ptr %i.b, i64 %i.hu
  store i8 %i.ho, ptr %i.hv, align 1, !tbaa !8
  br label %bb.cm

bb.cl:                                            ; preds = %bb.cj
  %i.hw = call fastcc ptr @BuildLines(ptr noundef %.18268.us, ptr noundef %i.b, ptr noundef %i.c)
  %.pre376 = load i32, ptr %i.c, align 4, !tbaa !4
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %.lr.ph271.split.us
  %9 = phi i32 [ %.pre376, %bb.cl ], [ %i.ht, %bb.ck ], [ %8, %.lr.ph271.split.us ]
  %.19.us = phi ptr [ %i.hw, %bb.cl ], [ %.18268.us, %bb.ck ], [ %.18268.us, %.lr.ph271.split.us ] ; 2 uses
  %indvars.iv.next333 = add nuw nsw i64 %indvars.iv332, 1 ; 2 uses
  %exitcond336.not = icmp eq i64 %indvars.iv.next333, %wide.trip.count335
  br i1 %exitcond336.not, label %._crit_edge272, label %.lr.ph271.split.us, !llvm.loop !80

.lr.ph271.split:                                  ; preds = %.lr.ph271, %.lr.ph271.split
  %indvars.iv327 = phi i64 [ %indvars.iv.next328, %.lr.ph271.split ], [ 0, %.lr.ph271 ] ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv327
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !8
  %i.hz = zext i8 %i.hy to i32
  %i.ia = call i32 @putc(i32 noundef %i.hz, ptr noundef nonnull %0) ; 0 uses
  %indvars.iv.next328 = add nuw nsw i64 %indvars.iv327, 1 ; 2 uses
  %exitcond331.not = icmp eq i64 %indvars.iv.next328, %wide.trip.count335
  br i1 %exitcond331.not, label %._crit_edge272, label %.lr.ph271.split, !llvm.loop !80

._crit_edge272:                                   ; preds = %.lr.ph271.split, %bb.cm, %bb.ci
  %.18.lcssa = phi ptr [ %.0199313, %bb.ci ], [ %.19.us, %bb.cm ], [ %.0199313, %.lr.ph271.split ] ; 2 uses
  %.not250 = icmp eq i32 %i.hk, 0                 ; 3 uses
  %i.ib = select i1 %.not250, i64 8, i64 11
  %i.ic = getelementptr inbounds nuw i8, ptr %.0186317, i64 %i.ib
  store ptr %i.ic, ptr @chpt, align 8, !tbaa !23
  %i.id = call ptr @LexGetToken()                 ; 2 uses
  store ptr %i.id, ptr %i.d, align 8, !tbaa !35
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32 ; 2 uses
  %i.if = load i8, ptr %i.ie, align 8, !tbaa !8
  %.not251 = icmp eq i8 %i.if, 102
  br i1 %.not251, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge272
  %i.ig = select i1 %.not250, ptr @.str.48, ptr @.str.49
  %i.ih = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 18, ptr noundef nonnull @.str.50, i32 noundef 1, ptr noundef nonnull %i.ie, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.ig) #10 ; 0 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %._crit_edge272
  %i.ii = call ptr @Parse(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %i.ij = load ptr, ptr @chpt, align 8, !tbaa !23
  %i.ik = call ptr @ReplaceWithTidy(ptr noundef %i.ii, i32 noundef 0) #10 ; 5 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32 ; 4 uses
  %i.im = load i8, ptr %i.il, align 8, !tbaa !8
  %.off = add i8 %i.im, -11
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.in = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 19, ptr noundef nonnull @.str.51, i32 noundef 1, ptr noundef nonnull %i.il) #10 ; 0 uses
  br label %bb.cq

bb.cq:                                            ; preds = %bb.co, %bb.cp
  %i.io = getelementptr inbounds nuw i8, ptr %i.ik, i64 64
  %i.ip = select i1 %.not250, i32 1, i32 2
  %i.iq = call zeroext i16 @DefineFile(ptr noundef nonnull %i.io, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.il, i32 noundef 1, i32 noundef %i.ip) #10 ; 3 uses
  store ptr %i.ik, ptr @zz_hold, align 8, !tbaa !35
  %i.ir = load i8, ptr %i.il, align 8, !tbaa !8   ; 2 uses
  %.off257 = add i8 %i.ir, -11
  %switch258 = icmp ult i8 %.off257, 2
  %i.is = getelementptr inbounds nuw i8, ptr %i.ik, i64 33
  %i.it = zext i8 %i.ir to i64
  %i.iu = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.it
  %.in.in = select i1 %switch258, ptr %i.is, ptr %i.iu
  %.in = load i8, ptr %.in.in, align 1, !tbaa !8  ; 2 uses
  %i.iv = zext i8 %.in to i32
  store i32 %i.iv, ptr @zz_size, align 4, !tbaa !4
  %i.iw = zext i8 %.in to i64
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.iw
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !35
  store ptr %i.iy, ptr %i.ik, align 8, !tbaa !8
  %i.iz = load ptr, ptr @zz_hold, align 8, !tbaa !35
  %i.ja = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.jb = sext i32 %i.ja to i64
  %i.jc = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.jb
  store ptr %i.iz, ptr %i.jc, align 8, !tbaa !35
  %i.jd = call ptr @OpenFile(i16 noundef zeroext %i.iq, i32 noundef 0, i32 noundef 1) #10 ; 4 uses
  %i.je = icmp eq ptr %i.jd, null
  br i1 %i.je, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.jf = call ptr @PosOfFile(i16 noundef zeroext %i.iq) #10
  %i.jg = call ptr @FullFileName(i16 noundef zeroext %i.iq) #10
  %i.jh = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 20, ptr noundef nonnull @.str.52, i32 noundef 1, ptr noundef %i.jf, ptr noundef %i.jg) #10 ; 0 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %bb.cq
  %i.ji = call i32 @getc(ptr noundef %i.jd)       ; 2 uses
  %.not252275 = icmp eq i32 %i.ji, -1
  br i1 %.not252275, label %._crit_edge279, label %.lr.ph278

.lr.ph278:                                        ; preds = %bb.cs, %bb.cy
  %i.jj = phi i32 [ %i.jw, %bb.cy ], [ %i.ji, %bb.cs ] ; 3 uses
  %.20276 = phi ptr [ %.21, %bb.cy ], [ %.18.lcssa, %bb.cs ] ; 4 uses
  br i1 %i.h, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %.lr.ph278
  %i.jk = load i32, ptr %i.c, align 4, !tbaa !4   ; 3 uses
  %i.jl = icmp slt i32 %i.jk, 512
  br i1 %i.jl, label %bb.cu, label %bb.cy

bb.cu:                                            ; preds = %bb.ct
  %i.jm = sext i32 %i.jj to i64
  %i.jn = getelementptr inbounds i8, ptr @chtbl, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !8
  %i.jp = icmp eq i8 %i.jo, 8
  br i1 %i.jp, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.jq = call fastcc ptr @BuildLines(ptr noundef %.20276, ptr noundef %i.b, ptr noundef %i.c)
  br label %bb.cy

bb.cw:                                            ; preds = %bb.cu
  %i.jr = trunc i32 %i.jj to i8
  %i.js = add nsw i32 %i.jk, 1
  store i32 %i.js, ptr %i.c, align 4, !tbaa !4
  %i.jt = sext i32 %i.jk to i64
  %i.ju = getelementptr inbounds i8, ptr %i.b, i64 %i.jt
  store i8 %i.jr, ptr %i.ju, align 1, !tbaa !8
  br label %bb.cy

bb.cx:                                            ; preds = %.lr.ph278
  %i.jv = call i32 @putc(i32 noundef %i.jj, ptr noundef nonnull %0) ; 0 uses
  br label %bb.cy

bb.cy:                                            ; preds = %bb.ct, %bb.cw, %bb.cv, %bb.cx
  %.21 = phi ptr [ %i.jq, %bb.cv ], [ %.20276, %bb.cw ], [ %.20276, %bb.ct ], [ %.20276, %bb.cx ] ; 2 uses
  %i.jw = call i32 @getc(ptr noundef %i.jd)       ; 2 uses
  %.not252 = icmp eq i32 %i.jw, -1
  br i1 %.not252, label %._crit_edge279, label %.lr.ph278, !llvm.loop !81

._crit_edge279:                                   ; preds = %bb.cy, %bb.cs
  %.20.lcssa = phi ptr [ %.18.lcssa, %bb.cs ], [ %.21, %bb.cy ]
  %i.jx = call i32 @fclose(ptr noundef %i.jd)     ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  br label %.backedge

.lr.ph283.split:                                  ; preds = %.lr.ph283, %.lr.ph283.split
  %indvars.iv337 = phi i64 [ %indvars.iv.next338, %.lr.ph283.split ], [ 0, %.lr.ph283 ] ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv337
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !8
  %i.ka = zext i8 %i.jz to i32
  %i.kb = call i32 @putc(i32 noundef %i.ka, ptr noundef nonnull %0) ; 0 uses
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1 ; 2 uses
  %exitcond341.not = icmp eq i64 %indvars.iv.next338, %wide.trip.count345
  br i1 %exitcond341.not, label %._crit_edge284.thread, label %.lr.ph283.split, !llvm.loop !79

._crit_edge284:                                   ; preds = %bb.ch, %.preheader264
  %.22.lcssa = phi ptr [ %.0199313, %.preheader264 ], [ %.23.us, %bb.ch ] ; 4 uses
  br i1 %i.h, label %bb.cz, label %._crit_edge284.thread

bb.cz:                                            ; preds = %._crit_edge284
  %i.kc = load i32, ptr %i.c, align 4, !tbaa !4   ; 3 uses
  %i.kd = icmp slt i32 %i.kc, 512
  br i1 %i.kd, label %bb.da, label %.backedge

bb.da:                                            ; preds = %bb.cz
  %i.ke = load i8, ptr %.0186317, align 1, !tbaa !8 ; 2 uses
  %i.kf = zext i8 %i.ke to i64
  %i.kg = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.kf
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !8
  %i.ki = icmp eq i8 %i.kh, 8
  br i1 %i.ki, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.kj = call fastcc ptr @BuildLines(ptr noundef %.22.lcssa, ptr noundef %i.b, ptr noundef %i.c)
  br label %.backedge

bb.dc:                                            ; preds = %bb.da
  %i.kk = add nsw i32 %i.kc, 1
  store i32 %i.kk, ptr %i.c, align 4, !tbaa !4
  %i.kl = sext i32 %i.kc to i64
  %i.km = getelementptr inbounds i8, ptr %i.b, i64 %i.kl
  store i8 %i.ke, ptr %i.km, align 1, !tbaa !8
  br label %.backedge

._crit_edge284.thread:                            ; preds = %.lr.ph283.split, %._crit_edge284
  %.22.lcssa407 = phi ptr [ %.22.lcssa, %._crit_edge284 ], [ %.0199313, %.lr.ph283.split ]
  %i.kn = load i8, ptr %.0186317, align 1, !tbaa !8
  %i.ko = zext i8 %i.kn to i32
  %i.kp = call i32 @putc(i32 noundef %i.ko, ptr noundef nonnull %0) ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %._crit_edge284.thread, %bb.db, %bb.dc, %bb.cz, %._crit_edge279, %bb.dd, %bb.dg, %bb.df, %._crit_edge.thread, %bb.aw, %bb.bu, %bb.bs, %bb.bt, %bb.bq, %bb.bj, %bb.ai, %bb.aj, %bb.q, %.loopexit, %bb.p, %bb.n, %bb.o, %bb.l, %bb.dh, %bb.ag
  %.0186317.be = phi ptr [ %i.j, %bb.dh ], [ %i.j, %bb.n ], [ %i.j, %bb.o ], [ %i.j, %bb.l ], [ %i.j, %bb.p ], [ %i.j, %bb.q ], [ %i.j, %.loopexit ], [ %i.cm, %bb.ag ], [ %i.j, %bb.ai ], [ %i.j, %bb.aj ], [ %i.j, %bb.aw ], [ %i.j, %._crit_edge.thread ], [ %i.j, %bb.bj ], [ %i.j, %bb.bs ], [ %i.j, %bb.bt ], [ %i.j, %bb.bq ], [ %i.j, %bb.bu ], [ %i.j, %bb.db ], [ %i.ij, %._crit_edge279 ], [ %i.j, %._crit_edge284.thread ], [ %i.j, %bb.df ], [ %i.j, %bb.dg ], [ %i.j, %bb.dd ], [ %i.j, %bb.cz ], [ %i.j, %bb.dc ]
  %.0187316.be = phi i32 [ %.0187316, %bb.dh ], [ %.0187316, %bb.n ], [ %.0187316, %bb.o ], [ %.0187316, %bb.l ], [ %.0187316, %bb.p ], [ %.0187316, %bb.q ], [ %.0187316, %.loopexit ], [ %.0187316, %bb.ag ], [ %.0187316, %bb.ai ], [ %.0187316, %bb.aj ], [ %i.dw, %bb.aw ], [ %.0187316, %._crit_edge.thread ], [ %i.fd, %bb.bj ], [ %.0187316, %bb.bs ], [ %.0187316, %bb.bt ], [ %.0187316, %bb.bq ], [ %.0187316, %bb.bu ], [ %.0187316, %bb.db ], [ %.0187316, %._crit_edge279 ], [ %.0187316, %._crit_edge284.thread ], [ %.0187316, %bb.df ], [ %.0187316, %bb.dg ], [ %.0187316, %bb.dd ], [ %.0187316, %bb.cz ], [ %.0187316, %bb.dc ]
  %.0191314.be = phi i32 [ %.0191314, %bb.dh ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.p ], [ 1, %bb.q ], [ 0, %.loopexit ], [ %spec.select, %bb.ag ], [ %.0191314, %bb.ai ], [ %.0191314, %bb.aj ], [ 0, %bb.aw ], [ 0, %._crit_edge.thread ], [ 0, %bb.bj ], [ 0, %bb.bs ], [ 0, %bb.bt ], [ 0, %bb.bq ], [ 0, %bb.bu ], [ 0, %bb.db ], [ 0, %._crit_edge279 ], [ 0, %._crit_edge284.thread ], [ 0, %bb.df ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.cz ], [ 0, %bb.dc ]
  %.0199313.be = phi ptr [ %.0199313, %bb.dh ], [ %i.am, %bb.n ], [ %.1200.lcssa, %bb.o ], [ %.1200.lcssa, %bb.l ], [ %.1200.lcssa, %bb.p ], [ %.0199313, %bb.q ], [ %.5, %.loopexit ], [ %.9, %bb.ag ], [ %.0199313, %bb.ai ], [ %.0199313, %bb.aj ], [ %.12, %bb.aw ], [ %.25.lcssa409, %._crit_edge.thread ], [ %.15, %bb.bj ], [ %i.gb, %bb.bs ], [ %.16.lcssa, %bb.bt ], [ %.16.lcssa, %bb.bq ], [ %.16.lcssa, %bb.bu ], [ %i.kj, %bb.db ], [ %.20.lcssa, %._crit_edge279 ], [ %.22.lcssa407, %._crit_edge284.thread ], [ %i.lb, %bb.df ], [ %.25.lcssa, %bb.dg ], [ %.25.lcssa, %bb.dd ], [ %.22.lcssa, %bb.cz ], [ %.22.lcssa, %bb.dc ]
  %.0202312.be = phi i32 [ %.0202312, %bb.dh ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.l ], [ 0, %bb.p ], [ %.0202312, %bb.q ], [ %i.bl, %.loopexit ], [ %.3205, %bb.ag ], [ %.0202312, %bb.ai ], [ %.0202312, %bb.aj ], [ 0, %bb.aw ], [ 0, %._crit_edge.thread ], [ 0, %bb.bj ], [ 0, %bb.bs ], [ 0, %bb.bt ], [ 0, %bb.bq ], [ 0, %bb.bu ], [ 0, %bb.db ], [ 0, %._crit_edge279 ], [ 0, %._crit_edge284.thread ], [ 0, %bb.df ], [ 0, %bb.dg ], [ 0, %bb.dd ], [ 0, %bb.cz ], [ 0, %bb.dc ]
  br label %bb.d, !llvm.loop !82

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ 0, %.lr.ph ] ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !8
  %i.ks = zext i8 %i.kr to i32
  %i.kt = call i32 @putc(i32 noundef %i.ks, ptr noundef nonnull %0) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count325
  br i1 %exitcond.not, label %._crit_edge.thread, label %.lr.ph.split, !llvm.loop !78

._crit_edge:                                      ; preds = %bb.bz, %.preheader265
  %.25.lcssa = phi ptr [ %.0199313, %.preheader265 ], [ %.26.us, %bb.bz ] ; 4 uses
  br i1 %i.h, label %bb.dd, label %._crit_edge.thread

end_hunk_1
