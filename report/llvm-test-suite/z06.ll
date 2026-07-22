begin_hunk_0_@SetScope:bb.a

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.t = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.s, ptr noundef nonnull @.str.4) #6 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.j
  tail call void @SetScope(ptr noundef nonnull %.023, ptr noundef %1, i32 noundef 0)
  %.not31 = icmp eq i32 %2, 0
  %i.u = getelementptr inbounds nuw i8, ptr %.0, i64 80
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !8    ; 2 uses
  br i1 %.not31, label %bb.k, label %.loopexit._crit_edge

bb.k:                                             ; preds = %.loopexit
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 112
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.y = icmp ne ptr %i.x, null
  %i.z = zext i1 %i.y to i32
  br label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %.loopexit, %bb.k
  %i.aa = phi i32 [ %i.z, %bb.k ], [ 1, %.loopexit ]
  tail call void @PushScope(ptr noundef %i.v, i32 noundef 0, i32 noundef %i.aa) #6
  %i.ab = load i32, ptr %1, align 4, !tbaa !4
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %1, align 4, !tbaa !4
  br label %bb.l

bb.l:                                             ; preds = %.loopexit._crit_edge, %bb.d
  ret void
}

declare void @PushScope(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @InitParser(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #7
  %i.b = icmp ugt i64 %i.a, 2047
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.d = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 10, ptr noundef nonnull @.str.5, i32 noundef 1, ptr noundef %i.c, ptr noundef nonnull %0) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.f = tail call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %0, ptr noundef %i.e) #6
  store ptr %i.f, ptr @cross_name, align 8, !tbaa !13
  %i.g = load i32, ptr @ttop, align 4, !tbaa !4   ; 3 uses
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr @ttop, align 4, !tbaa !4
  %i.i = icmp slt i32 %i.g, 99
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.k = load ptr, ptr @StartSym, align 8, !tbaa !13
  %i.l = tail call ptr @NewToken(i8 noundef zeroext 110, ptr noundef %i.j, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 100, ptr noundef %i.k) #6
  %i.m = load i32, ptr @ttop, align 4, !tbaa !4
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [8 x i8], ptr @tok_stack, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.p = zext nneg i32 %i.g to i64
  %i.q = getelementptr inbounds nuw [8 x i8], ptr @tok_stack, i64 %i.p
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %i.s) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @MakeWord(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @NewToken(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @Parse(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 134 uses
  %i.b = alloca ptr, align 8                      ; 26 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %struct.STYLE, align 4              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.h = load i32, ptr @ttop, align 4, !tbaa !4   ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.i = load ptr, ptr %0, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load i8, ptr %i.j, align 8, !tbaa !8
  switch i8 %i.k, label %bb.b [
    i8 102, label %bb.c
    i8 104, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.m = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str, i32 noundef 0, ptr noundef %i.l, ptr noundef nonnull @.str.7) #6 ; 0 uses
  %.pr = load i32, ptr @ttop, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %bb.a
  %i.n = phi i32 [ %.pr, %bb.b ], [ %i.h, %bb.a ], [ %i.h, %bb.a ] ; 3 uses
  %i.o = add nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.o, ptr @ttop, align 4, !tbaa !4
  %i.p = icmp slt i32 %i.n, 99
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %0, align 8, !tbaa !13
  %i.r = sext i32 %i.o to i64
  %i.s = getelementptr inbounds [8 x i8], ptr @tok_stack, i64 %i.r
  store ptr %i.q, ptr %i.s, align 8, !tbaa !13
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.t = zext nneg i32 %i.n to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr @tok_stack, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !13
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.x = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 2, ptr noundef nonnull @.str.6, i32 noundef 1, ptr noundef nonnull %i.w) #6 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.y = tail call ptr @LexGetToken() #6
  store ptr %i.y, ptr %i.a, align 8, !tbaa !13
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.ap, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @ReadDefinitions(ptr noundef nonnull %i.a, ptr noundef %1, i8 noundef zeroext -113) #6
  %i.z = call i32 @ErrorSeen() #6
  %.not1194 = icmp eq i32 %i.z, 0
  br i1 %.not1194, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.ac = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 14, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull %i.ab) #6 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ad = load ptr, ptr @StartSym, align 8, !tbaa !13
  %i.ae = icmp eq ptr %1, %i.ad
  br i1 %i.ae, label %bb.j, label %bb.ap

bb.j:                                             ; preds = %bb.i
  %i.af = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 82), align 1, !tbaa !8 ; 3 uses
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  store i32 %i.ag, ptr @zz_size, align 4, !tbaa !4
  %i.ah = zext i8 %i.af to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !13 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.am = call ptr @GetMemory(i32 noundef %i.ag, ptr noundef %i.al) #6 ; 2 uses
  store ptr %i.am, ptr @zz_hold, align 8, !tbaa !13
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store ptr %i.aj, ptr @zz_hold, align 8, !tbaa !13
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !8
  %i.ao = zext i8 %i.af to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ao
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !13
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.aq = phi ptr [ %i.am, %bb.k ], [ %i.aj, %bb.l ] ; 10 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store i8 82, ptr %i.ar, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.aq, ptr %i.au, align 8, !tbaa !8
  store ptr %i.aq, ptr %i.aq, align 8, !tbaa !8
  store ptr %i.aq, ptr %i.b, align 8, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %.backedge2093, %bb.m
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !13  ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !8   ; 3 uses
  switch i8 %i.ax, label %.thread [
    i8 11, label %bb.o
    i8 106, label %bb.w
    i8 114, label %bb.ak
    i8 115, label %bb.ak
    i8 116, label %bb.al
    i8 117, label %bb.al
  ]

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 64 ; 6 uses
  %i.az = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(4) @.str.10) #7
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(8) @.str.11) #7
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(6) @.str.12) #7
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(7) @.str.13) #7
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(7) @.str.14) #7
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(7) @.str.15) #7
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o
  call void @ReadDefinitions(ptr noundef nonnull %i.a, ptr noundef %1, i8 noundef zeroext -113) #6
  %i.bl = call i32 @ErrorSeen() #6
  %.not1366 = icmp eq i32 %i.bl, 0
  br i1 %.not1366, label %.backedge2093, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  %i.bo = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 39, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef nonnull %i.bn) #6 ; 0 uses
  br label %.backedge2093

bb.w:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  store ptr %i.av, ptr @zz_hold, align 8, !tbaa !13
  %5 = load i8, ptr %i.aw, align 8, !tbaa !8      ; 2 uses
  %.off = add i8 %5, -11
  %switch = icmp ult i8 %.off, 2
  %6 = getelementptr inbounds nuw i8, ptr %i.av, i64 33
  %7 = zext i8 %5 to i64
  %8 = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %7
  %.in1361.in = select i1 %switch, ptr %6, ptr %8
  %.in1361 = load i8, ptr %.in1361.in, align 1, !tbaa !8 ; 2 uses
  %i.bp = zext i8 %.in1361 to i32
  store i32 %i.bp, ptr @zz_size, align 4, !tbaa !4
  %i.bq = zext i8 %.in1361 to i64
  %i.br = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !13
  store ptr %i.bs, ptr %i.av, align 8, !tbaa !8
  %i.bt = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.bu = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.bv
  store ptr %i.bt, ptr %i.bw, align 8, !tbaa !13
  %i.bx = call ptr @LexGetToken() #6              ; 2 uses
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !13
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !8
  %.not1362 = icmp eq i8 %i.bz, 102
  br i1 %.not1362, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ca = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 15, ptr noundef nonnull @.str.16, i32 noundef 1, ptr noundef nonnull %i.by, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #6 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cb = call ptr @Parse(ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 0, i32 noundef 0) ; 11 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !tbaa !8
  switch i8 %i.cd, label %bb.ai [
    i8 6, label %bb.z
    i8 7, label %bb.z
    i8 2, label %bb.af
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.pn1365 = phi ptr [ %i.cf, %bb.z ], [ %.0990, %bb.aa ]
  %.0990.in = getelementptr inbounds nuw i8, ptr %.pn1365, i64 16
  %.0990 = load ptr, ptr %.0990.in, align 8, !tbaa !8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.0990, i64 32
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !8
  switch i8 %i.ch, label %bb.ae [
    i8 0, label %bb.aa
    i8 2, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  store ptr null, ptr %i.f, align 8, !tbaa !13
  %i.ci = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cj = call ptr @CrossExpand(ptr noundef nonnull %i.cb, ptr noundef %i.ci, ptr noundef nonnull %4, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #6 ; 5 uses
  %i.ck = load ptr, ptr %i.f, align 8, !tbaa !13
  %.not1364 = icmp eq ptr %i.ck, null
  br i1 %.not1364, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cm = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 16, ptr noundef nonnull @.str.19, i32 noundef 1, ptr noundef nonnull %i.cl, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21) #6 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call fastcc void @HuntCommandOptions(ptr noundef %i.cj)
  %i.cn = load ptr, ptr %i.g, align 8, !tbaa !13
  call void @AttachEnv(ptr noundef %i.cn, ptr noundef %i.cj) #6
  %i.co = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.cp = call ptr @SetEnv(ptr noundef %i.cj, ptr noundef %i.co) #6
  store ptr %i.cp, ptr %i.b, align 8, !tbaa !13
  br label %bb.aj

bb.ae:                                            ; preds = %bb.aa
  %i.cq = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 17, ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef nonnull %i.cc, ptr noundef nonnull @.str.18) #6 ; 0 uses
  br label %bb.aj

bb.af:                                            ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 80 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !8  ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 112
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !8
  %.not1363 = icmp eq ptr %i.cu, null
  br i1 %.not1363, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cv = call ptr @SymName(ptr noundef nonnull %i.cs) #6
  %i.cw = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 18, ptr noundef nonnull @.str.23, i32 noundef 1, ptr noundef nonnull %i.cc, ptr noundef %i.cv, ptr noundef nonnull @.str.18) #6 ; 0 uses
  %.pre = load ptr, ptr %i.cr, align 8, !tbaa !8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cx = phi ptr [ %.pre, %bb.ag ], [ %i.cs, %bb.af ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 112
  store ptr %i.cb, ptr %i.cy, align 8, !tbaa !8
  call fastcc void @HuntCommandOptions(ptr noundef nonnull %i.cb)
  %i.cz = load ptr, ptr %i.b, align 8, !tbaa !13
  call void @AttachEnv(ptr noundef %i.cz, ptr noundef nonnull %i.cb) #6
  %i.da = call ptr @SetEnv(ptr noundef nonnull %i.cb, ptr noundef null) #6
  store ptr %i.da, ptr %i.b, align 8, !tbaa !13
  br label %bb.aj

bb.ai:                                            ; preds = %bb.y
  %i.db = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 6, i32 noundef 19, ptr noundef nonnull @.str.22, i32 noundef 1, ptr noundef nonnull %i.cc, ptr noundef nonnull @.str.18) #6 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ad, %bb.ae, %bb.ah, %bb.ai
  %.11013 = phi ptr [ %i.cb, %bb.ai ], [ %i.cb, %bb.ah ], [ %i.cj, %bb.ad ], [ %i.cb, %bb.ae ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.11013, i64 80
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !8
  call void @PushScope(ptr noundef %i.dd, i32 noundef 0, i32 noundef 1) #6
  %i.de = call ptr @LexGetToken() #6
  store ptr %i.de, ptr %i.a, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  br label %.backedge2093

.backedge2093:                                    ; preds = %bb.aj, %bb.al, %bb.ak, %bb.u, %bb.v
  br label %bb.n

bb.ak:                                            ; preds = %bb.n, %bb.n
  %i.df = zext nneg i8 %i.ax to i32
  call void @ReadPrependDef(i32 noundef %i.df, ptr noundef %1) #6
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !13  ; 4 uses
  store ptr %i.dg, ptr @zz_hold, align 8, !tbaa !13
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.di = load i8, ptr %i.dh, align 8, !tbaa !8   ; 2 uses
  %.off1403 = add i8 %i.di, -11
  %switch1404 = icmp ult i8 %.off1403, 2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 33
  %i.dk = zext i8 %i.di to i64
  %i.dl = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.dk
  %.in1360.in = select i1 %switch1404, ptr %i.dj, ptr %i.dl
  %.in1360 = load i8, ptr %.in1360.in, align 1, !tbaa !8 ; 2 uses
  %i.dm = zext i8 %.in1360 to i32
  store i32 %i.dm, ptr @zz_size, align 4, !tbaa !4
  %i.dn = zext i8 %.in1360 to i64
  %i.do = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !13
  store ptr %i.dp, ptr %i.dg, align 8, !tbaa !8
  %i.dq = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.dr = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.ds
  store ptr %i.dq, ptr %i.dt, align 8, !tbaa !13
  %i.du = call ptr @LexGetToken() #6
  store ptr %i.du, ptr %i.a, align 8, !tbaa !13
  br label %.backedge2093

bb.al:                                            ; preds = %bb.n, %bb.n
  %i.dv = zext nneg i8 %i.ax to i32
  call void @ReadDatabaseDef(i32 noundef %i.dv, ptr noundef %1) #6
  %i.dw = load ptr, ptr %i.a, align 8, !tbaa !13  ; 4 uses
  store ptr %i.dw, ptr @zz_hold, align 8, !tbaa !13
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !8   ; 2 uses
  %.off1405 = add i8 %i.dy, -11
  %switch1406 = icmp ult i8 %.off1405, 2
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 33
  %i.ea = zext i8 %i.dy to i64
  %i.eb = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.ea
  %.in1359.in = select i1 %switch1406, ptr %i.dz, ptr %i.eb
  %.in1359 = load i8, ptr %.in1359.in, align 1, !tbaa !8 ; 2 uses
  %i.ec = zext i8 %.in1359 to i32
  store i32 %i.ec, ptr @zz_size, align 4, !tbaa !4
  %i.ed = zext i8 %.in1359 to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !13
  store ptr %i.ef, ptr %i.dw, align 8, !tbaa !8
  %i.eg = load ptr, ptr @zz_hold, align 8, !tbaa !13
  %i.eh = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.ei = sext i32 %i.eh to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.ei
  store ptr %i.eg, ptr %i.ej, align 8, !tbaa !13
  %i.ek = call ptr @LexGetToken() #6
  store ptr %i.ek, ptr %i.a, align 8, !tbaa !13
  br label %.backedge2093

.thread:                                          ; preds = %bb.n, %bb.t
  %i.el = load i32, ptr @AllowCrossDb, align 4, !tbaa !4
  %.not1195 = icmp eq i32 %i.el, 0
  br i1 %.not1195, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.thread
  %i.em = load ptr, ptr @cross_name, align 8, !tbaa !13
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.eo = load ptr, ptr @no_fpos, align 8, !tbaa !9
  %i.ep = call ptr @MakeWord(i32 noundef 11, ptr noundef nonnull %i.en, ptr noundef %i.eo) #6
  %i.eq = call ptr @DbCreate(ptr noundef %i.ep) #6
  store ptr %i.eq, ptr @NewCrossDb, align 8, !tbaa !13
  %i.er = load ptr, ptr @cross_name, align 8, !tbaa !13
  %i.es = load i32, ptr @InMemoryDbIndexes, align 4, !tbaa !4
  %i.et = call ptr @DbLoad(ptr noundef %i.er, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef %i.es) #6
  br label %bb.ao

bb.an:                                            ; preds = %.thread
  store ptr null, ptr @NewCrossDb, align 8, !tbaa !13
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %storemerge = phi ptr [ null, %bb.an ], [ %i.et, %bb.am ]
  store ptr %storemerge, ptr @OldCrossDb, align 8, !tbaa !13
end_hunk_0
