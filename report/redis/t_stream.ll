inline.NumInlined: 273
inline.NumDeleted: 13
begin_hunk_0_@streamIncrID:bb.a

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.d, 1
  store i64 %i.f, ptr %0, align 8, !tbaa !50
  store i64 0, ptr %i.a, align 8, !tbaa !49
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = add nuw i64 %i.b, 1
  store i64 %i.g, ptr %i.a, align 8, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 1) i32 @streamDecrID(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !tbaa !50     ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 -1, i64 16, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = add i64 %i.d, -1
  store i64 %i.f, ptr %0, align 8, !tbaa !50
  store i64 -1, ptr %i.a, align 8, !tbaa !49
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.g = add i64 %i.b, -1
  store i64 %i.g, ptr %i.a, align 8, !tbaa !49
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %.0 = phi i32 [ -1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @streamNextID(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) initializes((0, 16)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @commandTimeSnapshot() #18 ; 2 uses
  %i.b = load i64, ptr %0, align 8, !tbaa !50
  %i.c = icmp ugt i64 %i.a, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.a, ptr %1, align 8, !tbaa !50
  store i64 0, ptr %i.d, align 8, !tbaa !49
  br label %streamIncrID.exit

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false), !tbaa.struct !51
  %i.e = load i64, ptr %i.d, align 8, !tbaa !49   ; 2 uses
  %i.f = icmp eq i64 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = load i64, ptr %1, align 8, !tbaa !50     ; 2 uses
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %streamIncrID.exit

bb.f:                                             ; preds = %bb.d
  %i.i = add nuw i64 %i.g, 1
  store i64 %i.i, ptr %1, align 8, !tbaa !50
  store i64 0, ptr %i.d, align 8, !tbaa !49
  br label %streamIncrID.exit

bb.g:                                             ; preds = %bb.c
  %i.j = add nuw i64 %i.e, 1
  store i64 %i.j, ptr %i.d, align 8, !tbaa !49
  br label %streamIncrID.exit

streamIncrID.exit:                                ; preds = %bb.g, %bb.f, %bb.e, %bb.b
  ret void
}

declare i64 @commandTimeSnapshot() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @streamDup(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %1 = alloca %struct.raxIterator, align 8        ; 10 uses
  %2 = alloca %struct.raxIterator, align 8        ; 10 uses
  %3 = alloca %struct.raxIterator, align 8        ; 9 uses
  %4 = alloca %struct.raxIterator, align 8        ; 8 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %5 = alloca %struct.raxIterator, align 8        ; 8 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = load i64, ptr %0, align 8                ; 2 uses
  %i.e = and i64 %i.d, 15
  %i.f = icmp eq i64 %i.e, 6
  br i1 %i.f, label %bb.c, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  tail call void @_serverAssert(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 188) #18
  tail call void @abort() #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = and i64 %i.d, 240
  %cond = icmp eq i64 %i.g, 160
  br i1 %cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @createStreamObject() #18  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !46   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !46   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !20
  call void @raxStart(ptr noundef nonnull %1, ptr noundef %i.m) #18
  %i.n = call i32 @raxSeek(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef null, i64 noundef 0) #18 ; 0 uses
  %i.o = call i32 @raxNext(ptr noundef nonnull %1) #18
  %.not76 = icmp eq i32 %i.o, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @_serverPanic(ptr noundef nonnull @.str.1, i32 noundef 195, ptr noundef nonnull @.str.2) #18
  tail call void @abort() #19
  unreachable

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %i.t = load i64, ptr %i.p, align 8, !tbaa !52
  %i.u = icmp eq i64 %i.t, 16
  br i1 %i.u, label %bb.h, label %bb.g, !prof !43

bb.g:                                             ; preds = %bb.f
  call void @_serverAssert(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 211) #18
  call void @abort() #19
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !58   ; 2 uses
  %i.w = call i64 @lpBytes(ptr noundef %i.v) #18  ; 3 uses
  %i.x = call noalias ptr @zmalloc(i64 noundef %i.w) #20 ; 2 uses
  %i.y = load i64, ptr %i.r, align 8, !tbaa !15
  %i.z = add i64 %i.y, %i.w
  store i64 %i.z, ptr %i.r, align 8, !tbaa !15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %i.v, i64 %i.w, i1 false)
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.ac = load i64, ptr %i.p, align 8, !tbaa !52
  %i.ad = call i32 @raxInsert(ptr noundef %i.aa, ptr noundef %i.ab, i64 noundef %i.ac, ptr noundef %i.x, ptr noundef null) #18 ; 0 uses
  %i.ae = call i32 @raxNext(ptr noundef nonnull %1) #18
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %._crit_edge, label %bb.f, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.h, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !48
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !51
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !51
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !61
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !61
  call void @raxStop(ptr noundef nonnull %1) #18
  %i.ar = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !31 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.ah, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @raxStart(ptr noundef nonnull %2, ptr noundef nonnull %i.as) #18
  %i.au = call i32 @raxSeek(ptr noundef nonnull %2, ptr noundef nonnull @.str.3, ptr noundef null, i64 noundef 0) #18 ; 0 uses
  %i.av = call i32 @raxNext(ptr noundef nonnull %2) #18
  %.not6888 = icmp eq i32 %i.av, 0
  br i1 %.not6888, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph90, %._crit_edge87
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !58 ; 4 uses
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !59
  %i.bg = load i64, ptr %i.ay, align 8, !tbaa !52
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !62
  %i.bj = call ptr @streamCreateCG(ptr noundef %i.l, ptr noundef %i.bf, i64 noundef %i.bg, ptr noundef %i.be, i64 noundef %i.bi) ; 7 uses
  %.not69 = icmp eq ptr %i.bj, null
  br i1 %.not69, label %bb.k, label %bb.l, !prof !63

bb.k:                                             ; preds = %bb.j
  call void @_serverAssert(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1, i32 noundef 239) #18
  call void @abort() #19
  unreachable

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !39
  call void @raxStart(ptr noundef nonnull %3, ptr noundef %i.bl) #18
  %i.bm = call i32 @raxSeek(ptr noundef nonnull %3, ptr noundef nonnull @.str.3, ptr noundef null, i64 noundef 0) #18 ; 0 uses
  %i.bn = call i32 @raxNext(ptr noundef nonnull %3) #18
  %.not7077 = icmp eq i32 %i.bn, 0
  br i1 %.not7077, label %._crit_edge80, label %.lr.ph79

.lr.ph79:                                         ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 32 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 40 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph79, %pelListInsertSorted.exit
  %i.br = load ptr, ptr %i.az, align 8, !tbaa !58
  %i.bs = load ptr, ptr %i.ba, align 8, !tbaa !59 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.bs, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 1
  %i.bt = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.i)
  %i.bu = call i64 @llvm.bswap.i64(i64 %.sroa.4.0.copyload.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.bv = call ptr @zmalloc_usable(i64 noundef 64, ptr noundef nonnull %i.a) #18 ; 21 uses
  %i.bw = load i64, ptr %i.a, align 8, !tbaa !13
  %i.bx = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.by = add i64 %i.bx, %i.bw
  store i64 %i.by, ptr %i.bb, align 8, !tbaa !15
  %i.bz = call i64 @commandTimeSnapshot() #18
  store i64 %i.bz, ptr %i.bv, align 8, !tbaa !64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 1, ptr %i.ca, align 8, !tbaa !68
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  store i64 %i.bt, ptr %i.cd, align 8, !tbaa !13
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  store i64 %i.bu, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !13
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bv, i64 48 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.cf = load <2 x i64>, ptr %i.br, align 8, !tbaa !69
  store <2 x i64> %i.cf, ptr %i.bv, align 8, !tbaa !69
  %i.cg = load ptr, ptr %i.ba, align 8, !tbaa !59
  %i.ch = call ptr @streamLinkCGroupToEntry(ptr noundef %i.l, ptr noundef nonnull %i.bj, ptr noundef %i.cg)
  store ptr %i.ch, ptr %i.cc, align 8, !tbaa !70
  %i.ci = load ptr, ptr %i.bo, align 8, !tbaa !39
  %i.cj = load ptr, ptr %i.ba, align 8, !tbaa !59
  %i.ck = call i32 @raxInsert(ptr noundef %i.ci, ptr noundef %i.cj, i64 noundef 16, ptr noundef nonnull %i.bv, ptr noundef null) #18 ; 0 uses
  %i.cl = load ptr, ptr %i.bp, align 8, !tbaa !42 ; 4 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %i.bv, ptr %i.bq, align 8, !tbaa !44
  store ptr %i.bv, ptr %i.bp, align 8, !tbaa !42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  br label %pelListInsertSorted.exit

bb.o:                                             ; preds = %bb.m
  %i.cn = load i64, ptr %i.bv, align 8, !tbaa !64 ; 3 uses
  %i.co = load ptr, ptr %i.bq, align 8, !tbaa !44 ; 4 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !64
  %.not.i = icmp slt i64 %i.cn, %i.cp
  br i1 %.not.i, label %bb.p, label %pelListInsertAtTail.exit.i

pelListInsertAtTail.exit.i:                       ; preds = %bb.o
  store ptr %i.co, ptr %i.ce, align 8, !tbaa !71
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store ptr null, ptr %i.cq, align 8, !tbaa !72
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  store ptr %i.bv, ptr %i.cr, align 8, !tbaa !72
  store ptr %i.bv, ptr %i.bq, align 8, !tbaa !44
  br label %pelListInsertSorted.exit

bb.p:                                             ; preds = %bb.o
  %i.cs = load i64, ptr %i.cl, align 8, !tbaa !64
  %i.ct = icmp slt i64 %i.cn, %i.cs
  br i1 %i.ct, label %bb.q, label %.preheader.i

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store ptr %i.cl, ptr %i.cu, align 8, !tbaa !72
  store ptr null, ptr %i.ce, align 8, !tbaa !71
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  store ptr %i.bv, ptr %i.cv, align 8, !tbaa !71
  store ptr %i.bv, ptr %i.bp, align 8, !tbaa !42
  br label %pelListInsertSorted.exit

.preheader.i:                                     ; preds = %bb.p, %bb.r
  %.038.i = phi ptr [ %i.cz, %bb.r ], [ %i.co, %bb.p ] ; 3 uses
  %i.cw = load i64, ptr %.038.i, align 8, !tbaa !64
  %i.cx = icmp sgt i64 %i.cw, %i.cn
  br i1 %i.cx, label %bb.r, label %.critedge.i

bb.r:                                             ; preds = %.preheader.i
  %i.cy = getelementptr inbounds nuw i8, ptr %.038.i, i64 48
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !71 ; 2 uses
  %.not36.i = icmp eq ptr %i.cz, null
  br i1 %.not36.i, label %.critedge.i, label %.preheader.i, !llvm.loop !73

.critedge.i:                                      ; preds = %bb.r, %.preheader.i
  %.0.lcssa.i = phi ptr [ null, %bb.r ], [ %.038.i, %.preheader.i ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 56 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !72 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !72
  store ptr %.0.lcssa.i, ptr %i.ce, align 8, !tbaa !71
  %.not37.i = icmp eq ptr %i.db, null
  br i1 %.not37.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 48
  store ptr %i.bv, ptr %i.dd, align 8, !tbaa !71
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge.i
  store ptr %i.bv, ptr %i.da, align 8, !tbaa !72
  br label %pelListInsertSorted.exit

pelListInsertSorted.exit:                         ; preds = %bb.n, %pelListInsertAtTail.exit.i, %bb.q, %bb.t
  %i.de = call i32 @raxNext(ptr noundef nonnull %3) #18
  %.not70 = icmp eq i32 %i.de, 0
  br i1 %.not70, label %._crit_edge80, label %bb.m, !llvm.loop !74

._crit_edge80:                                    ; preds = %pelListInsertSorted.exit, %bb.l
  call void @raxStop(ptr noundef nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.df = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !45
  call void @raxStart(ptr noundef nonnull %4, ptr noundef %i.dg) #18
  %i.dh = call i32 @raxSeek(ptr noundef nonnull %4, ptr noundef nonnull @.str.3, ptr noundef null, i64 noundef 0) #18 ; 0 uses
  %i.di = call i32 @raxNext(ptr noundef nonnull %4) #18
  %.not7184 = icmp eq i32 %i.di, 0
  br i1 %.not7184, label %._crit_edge87, label %.lr.ph86

.lr.ph86:                                         ; preds = %._crit_edge80
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph86, %._crit_edge83
  %i.dl = load ptr, ptr %i.bc, align 8, !tbaa !58 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.dm = call ptr @zmalloc_usable(i64 noundef 32, ptr noundef nonnull %i.b) #18 ; 5 uses
  %i.dn = load i64, ptr %i.b, align 8, !tbaa !13
  %i.do = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.dp = add i64 %i.do, %i.dn
  store i64 %i.dp, ptr %i.bb, align 8, !tbaa !15
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !75
  %i.ds = call ptr @sdsdup(ptr noundef %i.dr) #18 ; 6 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 16 ; 2 uses
  store ptr %i.ds, ptr %i.dt, align 8, !tbaa !75
  %i.du = getelementptr i8, ptr %i.ds, i64 -1
  %.val.i = load i8, ptr %i.du, align 1, !tbaa !69 ; 2 uses
  %i.dv = and i8 %.val.i, 7
  switch i8 %i.dv, label %sdsAllocSize.exit [
    i8 0, label %bb.v
    i8 1, label %bb.w
    i8 2, label %bb.x
    i8 3, label %bb.y
    i8 4, label %bb.z
  ]

bb.v:                                             ; preds = %bb.u
end_hunk_0
begin_hunk_1_@streamValidateListpackIntegrity:bb.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !285

.lr.ph:                                           ; preds = %.preheader144, %bb.j
  %.088150 = phi i64 [ %i.aj, %bb.j ], [ 0, %.preheader144 ]
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !151
  %i.al = call i32 @lpValidateNext(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef %1) #18
  %.not99 = icmp eq i32 %i.al, 0
  br i1 %.not99, label %.critedge, label %bb.j

._crit_edge:                                      ; preds = %bb.j, %.preheader144
  %.071.lcssa = phi ptr [ %i.ah, %.preheader144 ], [ %i.ak, %bb.j ]
  %i.am = call fastcc i64 @lpGetIntegerIfValid(ptr noundef %.071.lcssa, ptr noundef nonnull %i.g)
  %i.an = load i32, ptr %i.g, align 4, !tbaa !9
  %i.ao = icmp eq i32 %i.an, 0
  %i.ap = icmp ne i64 %i.am, 0
  %or.cond = select i1 %i.ao, i1 true, i1 %i.ap
  br i1 %or.cond, label %.critedge, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.aq = load ptr, ptr %i.h, align 8, !tbaa !151
  %i.ar = call i32 @lpValidateNext(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef %1) #18
  %.not101 = icmp eq i32 %i.ar, 0
  br i1 %.not101, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = add nsw i64 %.0.i124133, %.0.i130       ; 2 uses
  %.not102189 = icmp eq i64 %i.as, 0
  br i1 %.not102189, label %._crit_edge193, label %.lr.ph192

bb.m:                                             ; preds = %bb.z
  %.not102 = icmp eq i64 %i.at, 0
  br i1 %.not102, label %._crit_edge193, label %.lr.ph192, !llvm.loop !286

.lr.ph192:                                        ; preds = %bb.l, %bb.m
  %.in = phi i64 [ %i.at, %bb.m ], [ %i.as, %bb.l ]
  %.273190 = phi ptr [ %i.bv, %bb.m ], [ %i.aq, %bb.l ] ; 2 uses
  %i.at = add nsw i64 %.in, -1                    ; 2 uses
  %.not104 = icmp eq ptr %.273190, null
  br i1 %.not104, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.lr.ph192
  %i.au = call fastcc i64 @lpGetIntegerIfValid(ptr noundef nonnull %.273190, ptr noundef nonnull %i.g)
  %i.av = load i32, ptr %i.g, align 4, !tbaa !9
  %.not105 = icmp eq i32 %i.av, 0
  br i1 %.not105, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = load ptr, ptr %i.h, align 8, !tbaa !151
  %i.ax = call i32 @lpValidateNext(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef %1) #18
  %.not106 = icmp eq i32 %i.ax, 0
  br i1 %.not106, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = call fastcc i64 @lpGetIntegerIfValid(ptr noundef %i.aw, ptr noundef nonnull %i.g) ; 0 uses
  %i.az = load i32, ptr %i.g, align 4, !tbaa !9
  %.not107 = icmp eq i32 %i.az, 0
  br i1 %.not107, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !151
  %i.bb = call i32 @lpValidateNext(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef %1) #18
  %.not108 = icmp eq i32 %i.bb, 0
  br i1 %.not108, label %.critedge, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = call fastcc i64 @lpGetIntegerIfValid(ptr noundef %i.ba, ptr noundef nonnull %i.g) ; 0 uses
  %i.bd = load i32, ptr %i.g, align 4, !tbaa !9
  %.not109 = icmp eq i32 %i.bd, 0
  br i1 %.not109, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !151 ; 2 uses
  %i.bf = call i32 @lpValidateNext(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef %1) #18
  %.not110 = icmp eq i32 %i.bf, 0
  br i1 %.not110, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bg = and i64 %i.au, 2
  %.not111 = icmp eq i64 %i.bg, 0
  br i1 %.not111, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.bh = call fastcc i64 @lpGetIntegerIfValid(ptr noundef %i.be, ptr noundef nonnull %i.g) ; 4 uses
  %i.bi = load i32, ptr %i.g, align 4, !tbaa !9
  %.not112 = icmp eq i32 %i.bi, 0
  br i1 %.not112, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !151
  %i.bk = call i32 @lpValidateNext(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef %1) #18
  %.not113 = icmp eq i32 %i.bk, 0
  br i1 %.not113, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.v
  %.not115151 = icmp sgt i64 %i.bh, 0
  br i1 %.not115151, label %.lr.ph153, label %._crit_edge154

bb.w:                                             ; preds = %.lr.ph153
  %i.bl = add nuw nsw i64 %.070152, 1             ; 2 uses
  %exitcond168.not = icmp eq i64 %i.bl, %i.bh
  br i1 %exitcond168.not, label %._crit_edge154, label %.lr.ph153, !llvm.loop !287

.lr.ph153:                                        ; preds = %.preheader, %bb.w
  %.070152 = phi i64 [ %i.bl, %bb.w ], [ 0, %.preheader ]
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !151
  %i.bn = call i32 @lpValidateNext(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef %1) #18
  %.not114 = icmp eq i32 %i.bn, 0
  br i1 %.not114, label %.critedge, label %bb.w

._crit_edge154:                                   ; preds = %bb.w, %.preheader
  %.374.lcssa = phi ptr [ %i.bj, %.preheader ], [ %i.bm, %bb.w ]
  %i.bo = add nsw i64 %i.bh, 4
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge154, %bb.t
  %.082 = phi i64 [ %.0.i126136, %bb.t ], [ %i.bh, %._crit_edge154 ] ; 3 uses
  %.081 = phi i64 [ 3, %bb.t ], [ %i.bo, %._crit_edge154 ]
  %.576 = phi ptr [ %i.be, %bb.t ], [ %.374.lcssa, %._crit_edge154 ]
  %.not117156 = icmp sgt i64 %.082, 0
  br i1 %.not117156, label %.lr.ph159, label %._crit_edge160

bb.y:                                             ; preds = %.lr.ph159
  %i.bp = add nuw nsw i64 %.069157, 1             ; 2 uses
  %exitcond169.not = icmp eq i64 %i.bp, %.082
  br i1 %exitcond169.not, label %._crit_edge160, label %.lr.ph159, !llvm.loop !288

.lr.ph159:                                        ; preds = %bb.x, %bb.y
  %.069157 = phi i64 [ %i.bp, %bb.y ], [ 0, %bb.x ]
  %i.bq = load ptr, ptr %i.h, align 8, !tbaa !151
  %i.br = call i32 @lpValidateNext(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef %1) #18
  %.not116 = icmp eq i32 %i.br, 0
  br i1 %.not116, label %.critedge, label %bb.y

._crit_edge160:                                   ; preds = %bb.y, %bb.x
  %.677.lcssa = phi ptr [ %.576, %bb.x ], [ %i.bq, %bb.y ]
  %i.bs = call fastcc i64 @lpGetIntegerIfValid(ptr noundef %.677.lcssa, ptr noundef nonnull %i.g)
  %i.bt = load i32, ptr %i.g, align 4, !tbaa !9
  %.not118 = icmp ne i32 %i.bt, 0
  %i.bu = add nsw i64 %.081, %.082
  %.not119 = icmp eq i64 %i.bs, %i.bu
  %or.cond123 = select i1 %.not118, i1 %.not119, i1 false
  br i1 %or.cond123, label %bb.z, label %.critedge

bb.z:                                             ; preds = %._crit_edge160
  %i.bv = load ptr, ptr %i.h, align 8, !tbaa !151
  %i.bw = call i32 @lpValidateNext(ptr noundef %0, ptr noundef nonnull %i.h, i64 noundef %1) #18
  %.not120.not = icmp eq i32 %i.bw, 0
  br i1 %.not120.not, label %.critedge, label %bb.m, !llvm.loop !286

._crit_edge193:                                   ; preds = %bb.m, %bb.l
  %i.bx = load ptr, ptr %i.h, align 8, !tbaa !151
  %.not103 = icmp eq ptr %i.bx, null
  %.121 = zext i1 %.not103 to i32
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.v, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %._crit_edge160, %.lr.ph192, %bb.z, %.lr.ph153, %.lr.ph159, %lpGetIntegerIfValid.exit, %bb.e, %lpGetIntegerIfValid.exit127, %bb.i, %._crit_edge193, %bb.k, %._crit_edge, %bb.g, %lpGetIntegerIfValid.exit125, %bb.c, %bb.b, %bb.a
  %.11 = phi i32 [ 0, %.lr.ph153 ], [ 0, %bb.c ], [ 1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.e ], [ 0, %lpGetIntegerIfValid.exit ], [ 0, %bb.g ], [ 0, %lpGetIntegerIfValid.exit125 ], [ 0, %bb.i ], [ 0, %bb.v ], [ 0, %lpGetIntegerIfValid.exit127 ], [ 0, %._crit_edge ], [ 0, %.lr.ph159 ], [ 0, %bb.k ], [ %.121, %._crit_edge193 ], [ 0, %bb.z ], [ 0, %.lr.ph192 ], [ 0, %._crit_edge160 ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %bb.u ], [ 0, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  ret i32 %.11
}

declare i32 @lpValidateIntegrity(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lpValidateFirst(ptr noundef) local_unnamed_addr #2

declare i32 @lpValidateNext(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @dictAddRaw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dictSetUnsignedIntegerVal(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @incrRefCount(ptr noundef) local_unnamed_addr #2

declare i64 @dictGetUnsignedIntegerVal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @handleClaimableStreamEntries() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.dictIterator, align 8       ; 6 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !289 ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.a, i32 16)
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph30.preheader, label %._crit_edge31

.lr.ph30.preheader:                               ; preds = %bb.a
  %.pre32 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !290
  %.pre34 = load i32, ptr @handleClaimableStreamEntries.current_db, align 4, !tbaa !9
  br label %.lr.ph30

.lr.ph30:                                         ; preds = %.lr.ph30.preheader, %bb.h
  %i.c = phi i32 [ %i.af, %bb.h ], [ %i.a, %.lr.ph30.preheader ] ; 2 uses
  %i.d = phi i32 [ %i.ag, %bb.h ], [ %.pre34, %.lr.ph30.preheader ] ; 2 uses
  %i.e = phi ptr [ %i.ah, %bb.h ], [ %.pre32, %.lr.ph30.preheader ] ; 2 uses
  %.02028 = phi i32 [ %i.ai, %bb.h ], [ 0, %.lr.ph30.preheader ]
  %i.f = urem i32 %i.d, %i.c
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [96 x i8], ptr %i.e, i64 %i.g ; 3 uses
  %i.i = add i32 %i.d, 1                          ; 2 uses
  store i32 %i.i, ptr @handleClaimableStreamEntries.current_db, align 4, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !242  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !13
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph30
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !13
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph30
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  call void @dictInitSafeIterator(ptr noundef nonnull %0, ptr noundef nonnull %i.k) #18
  %i.r = call ptr @dictNext(ptr noundef nonnull %0) #18 ; 2 uses
  %.not27 = icmp eq ptr %i.r, null
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.g
  %i.s = phi ptr [ %i.ae, %bb.g ], [ %i.r, %bb.c ] ; 2 uses
  %i.t = call ptr @dictGetKey(ptr noundef nonnull %i.s) #18 ; 3 uses
  %i.u = call i64 @dictGetUnsignedIntegerVal(ptr noundef nonnull %i.s) #18
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.x = call ptr @dbFind(ptr noundef %i.h, ptr noundef %i.w) #18 ; 2 uses
  %.not25 = icmp eq ptr %i.x, null
  br i1 %.not25, label %.sink.split, label %bb.d, !llvm.loop !291

bb.d:                                             ; preds = %.lr.ph
  %i.y = load i64, ptr %i.x, align 8
  %i.z = and i64 %i.y, 15
  %.not26 = icmp eq i64 %i.z, 6
  br i1 %.not26, label %bb.e, label %.sink.split, !llvm.loop !291

bb.e:                                             ; preds = %bb.d
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8064), align 8, !tbaa !292
  %i.ab = icmp ult i64 %i.u, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @signalKeyAsReady(ptr noundef %i.h, ptr noundef nonnull %i.t, i32 noundef 6) #18
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph, %bb.d, %bb.f
  %i.ac = load ptr, ptr %i.j, align 8, !tbaa !242
  %i.ad = call i32 @dictDelete(ptr noundef %i.ac, ptr noundef nonnull %i.t) #18 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.e
  %i.ae = call ptr @dictNext(ptr noundef nonnull %0) #18 ; 2 uses
  %.not = icmp eq ptr %i.ae, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.g, %bb.c
  call void @dictResetIterator(ptr noundef nonnull %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !290
  %.pre33 = load i32, ptr @handleClaimableStreamEntries.current_db, align 4, !tbaa !9
  %.pre35 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !289
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %._crit_edge
  %i.af = phi i32 [ %i.c, %bb.b ], [ %.pre35, %._crit_edge ]
  %i.ag = phi i32 [ %i.i, %bb.b ], [ %.pre33, %._crit_edge ]
  %i.ah = phi ptr [ %i.e, %bb.b ], [ %.pre, %._crit_edge ]
  %i.ai = add nuw nsw i32 %.02028, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ai, %spec.select
  br i1 %exitcond.not, label %._crit_edge31, label %.lr.ph30, !llvm.loop !293

._crit_edge31:                                    ; preds = %bb.h, %bb.a
  ret void
}

declare void @dictInitSafeIterator(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @dictNext(ptr noundef) local_unnamed_addr #2

declare ptr @dictGetKey(ptr noundef) local_unnamed_addr #2

declare ptr @dbFind(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dictDelete(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dictResetIterator(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @idmpDictHashFunction(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13
  %i.d = tail call i64 @dictGenHashFunction(ptr noundef nonnull %i.a, i64 noundef %i.c) #18
  ret i64 %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @idmpDictKeyCompare(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.e, ptr nonnull %i.f, i64 %i.b)
  %i.g = icmp eq i32 %bcmp, 0
  %i.h = zext i1 %i.g to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @idmpProducerCreate(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = call ptr @zmalloc_usable(i64 noundef 24, ptr noundef nonnull %i.a) #18 ; 3 uses
  %i.c = call ptr @dictCreate(ptr noundef nonnull @idmpDictType) #18
  store ptr %i.c, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.e = load i64, ptr %i.a, align 8, !tbaa !13
  %i.f = load i64, ptr %0, align 8, !tbaa !13
  %i.g = add i64 %i.f, %i.e
  store i64 %i.g, ptr %0, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret ptr %i.b
}

declare ptr @dictCreate(ptr noundef) local_unnamed_addr #2

declare void @dictRelease(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @handleExpiredIdmpEntries() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %0 = alloca %struct.dictIterator, align 8       ; 6 uses
  %1 = alloca %struct.raxIterator, align 8        ; 11 uses
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !289 ; 3 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.d, i32 16)
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph64, label %._crit_edge65

.lr.ph64:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.pre66 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !290
  %.pre68 = load i32, ptr @handleExpiredIdmpEntries.current_db, align 4, !tbaa !9
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph64, %bb.t
  %i.i = phi i32 [ %i.d, %.lr.ph64 ], [ %i.ch, %bb.t ] ; 2 uses
  %i.j = phi i32 [ %.pre68, %.lr.ph64 ], [ %i.ci, %bb.t ] ; 2 uses
  %i.k = phi ptr [ %.pre66, %.lr.ph64 ], [ %i.cj, %bb.t ] ; 2 uses
  %.04162 = phi i32 [ 0, %.lr.ph64 ], [ %i.ck, %bb.t ]
  %i.l = urem i32 %i.j, %i.i
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %i.m ; 2 uses
  %i.o = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.o, ptr @handleExpiredIdmpEntries.current_db, align 4, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !216  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !13
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !13
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #18
  call void @dictInitSafeIterator(ptr noundef nonnull %0, ptr noundef nonnull %i.q) #18
  %i.x = call ptr @dictNext(ptr noundef nonnull %0) #18 ; 2 uses
  %.not58 = icmp eq ptr %i.x, null
  br i1 %.not58, label %._crit_edge61, label %.lr.ph60

.lr.ph60:                                         ; preds = %bb.d, %bb.s
  %i.y = phi ptr [ %i.cg, %bb.s ], [ %i.x, %bb.d ]
  %i.z = call ptr @dictGetKey(ptr noundef nonnull %i.y) #18 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ac = call ptr @dbFind(ptr noundef %i.n, ptr noundef %i.ab) #18 ; 3 uses
  %.not47 = icmp eq ptr %i.ac, null
  br i1 %.not47, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph60
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = and i64 %i.ad, 15
  %.not48 = icmp eq i64 %i.ae, 6
  br i1 %.not48, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph60
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !216
  %i.ag = call i32 @dictDelete(ptr noundef %i.af, ptr noundef nonnull %i.z) #18 ; 0 uses
  br label %bb.s, !llvm.loop !294

bb.g:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !46 ; 3 uses
  %i.aj = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 8064), align 8, !tbaa !292
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !275
  %.neg = mul i64 %i.al, -1000
  %i.am = add i64 %.neg, %i.aj
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 136 ; 5 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !33 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !216
  %i.ar = call i32 @dictDelete(ptr noundef %i.aq, ptr noundef nonnull %i.z) #18 ; 0 uses
  br label %bb.s, !llvm.loop !294

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @raxStart(ptr noundef nonnull %1, ptr noundef nonnull %i.ao) #18
  %i.as = call i32 @raxSeek(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, ptr noundef null, i64 noundef 0) #18 ; 0 uses
  %i.at = call i32 @raxNext(ptr noundef nonnull %1) #18
  %.not4956 = icmp eq i32 %i.at, 0
  br i1 %.not4956, label %._crit_edge, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.ai, i64 72 ; 6 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph57, %.loopexit
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !58  ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !27 ; 2 uses
  %.not5055 = icmp eq ptr %i.ax, null
  br i1 %.not5055, label %.thread53, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.n
  %.pr = phi ptr [ %i.ax, %.lr.ph ], [ %i.bi, %bb.n ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !50
  %.not51 = icmp ugt i64 %i.ba, %i.am
  br i1 %.not51, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !23
  %i.bc = call i32 @dictDelete(ptr noundef %i.bb, ptr noundef nonnull %.pr) #18 ; 0 uses
  %i.bd = load ptr, ptr %.pr, align 8, !tbaa !28  ; 2 uses
  store ptr %i.bd, ptr %i.aw, align 8, !tbaa !27
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr null, ptr %i.ay, align 8, !tbaa !220
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @zfree_usable(ptr noundef nonnull %.pr, ptr noundef nonnull %i.c) #18
  %i.bf = load i64, ptr %i.c, align 8, !tbaa !13
  %i.bg = load i64, ptr %i.au, align 8, !tbaa !13
  %i.bh = sub i64 %i.bg, %i.bf
  store i64 %i.bh, ptr %i.au, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  %i.bi = load ptr, ptr %i.aw, align 8, !tbaa !27 ; 2 uses
  %.not50 = icmp eq ptr %i.bi, null
  br i1 %.not50, label %.thread53, label %bb.k

.thread53:                                        ; preds = %bb.n, %bb.j
  %i.bj = load ptr, ptr %i.an, align 8, !tbaa !33
  %i.bk = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.bl = load i64, ptr %i.h, align 8, !tbaa !52
  %i.bm = call i32 @raxRemove(ptr noundef %i.bj, ptr noundef %i.bk, i64 noundef %i.bl, ptr noundef null) #18 ; 0 uses
  %i.bn = load ptr, ptr %i.av, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp eq ptr %i.bn, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread53
  call void @dictRelease(ptr noundef nonnull %i.bn) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread53
  %i.bo = load ptr, ptr %i.aw, align 8, !tbaa !27 ; 2 uses
  %.not1314.i = icmp eq ptr %i.bo, null
  br i1 %.not1314.i, label %idmpProducerFree.exit, label %idmpEntryFree.exit.i

idmpEntryFree.exit.i:                             ; preds = %bb.p, %idmpEntryFree.exit.i
  %.015.i = phi ptr [ %i.bp, %idmpEntryFree.exit.i ], [ %i.bo, %bb.p ] ; 2 uses
  %i.bp = load ptr, ptr %.015.i, align 8, !tbaa !28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @zfree_usable(ptr noundef nonnull %.015.i, ptr noundef nonnull %i.a) #18
  %i.bq = load i64, ptr %i.a, align 8, !tbaa !13
  %i.br = load i64, ptr %i.au, align 8, !tbaa !13
  %i.bs = sub i64 %i.br, %i.bq
  store i64 %i.bs, ptr %i.au, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %.not13.i = icmp eq ptr %i.bp, null
  br i1 %.not13.i, label %idmpProducerFree.exit, label %idmpEntryFree.exit.i, !llvm.loop !29

idmpProducerFree.exit:                            ; preds = %idmpEntryFree.exit.i, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @zfree_usable(ptr noundef nonnull %i.av, ptr noundef nonnull %i.b) #18
  %i.bt = load i64, ptr %i.b, align 8, !tbaa !13
  %i.bu = load i64, ptr %i.au, align 8, !tbaa !13
  %i.bv = sub i64 %i.bu, %i.bt
  store i64 %i.bv, ptr %i.au, align 8, !tbaa !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !59
  %i.bx = load i64, ptr %i.h, align 8, !tbaa !52
  %i.by = call i32 @raxSeek(ptr noundef nonnull %1, ptr noundef nonnull @.str.10, ptr noundef %i.bw, i64 noundef %i.bx) #18 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %idmpProducerFree.exit
  %i.bz = call i32 @raxNext(ptr noundef nonnull %1) #18
  %.not49 = icmp eq i32 %i.bz, 0
  br i1 %.not49, label %._crit_edge, label %bb.j, !llvm.loop !295

._crit_edge:                                      ; preds = %.loopexit, %bb.i
  call void @raxStop(ptr noundef nonnull %1) #18
  %i.ca = load ptr, ptr %i.an, align 8, !tbaa !33
  %i.cb = call i64 @raxSize(ptr noundef %i.ca) #18
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %i.cd = load ptr, ptr %i.an, align 8, !tbaa !33
  call void @raxFree(ptr noundef %i.cd) #18
  store ptr null, ptr %i.an, align 8, !tbaa !33
  %i.ce = load ptr, ptr %i.p, align 8, !tbaa !216
  %i.cf = call i32 @dictDelete(ptr noundef %i.ce, ptr noundef %i.z) #18 ; 0 uses
  br label %bb.r, !llvm.loop !294

bb.r:                                             ; preds = %._crit_edge, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.s

bb.s:                                             ; preds = %bb.h, %bb.r, %bb.f
  %i.cg = call ptr @dictNext(ptr noundef nonnull %0) #18 ; 2 uses
  %.not = icmp eq ptr %i.cg, null
  br i1 %.not, label %._crit_edge61, label %.lr.ph60

._crit_edge61:                                    ; preds = %bb.s, %bb.d
  call void @dictResetIterator(ptr noundef nonnull %0) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #18
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 64), align 8, !tbaa !290
  %.pre67 = load i32, ptr @handleExpiredIdmpEntries.current_db, align 4, !tbaa !9
  %.pre69 = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6516), align 4, !tbaa !289
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %._crit_edge61
  %i.ch = phi i32 [ %i.i, %bb.c ], [ %.pre69, %._crit_edge61 ]
  %i.ci = phi i32 [ %i.o, %bb.c ], [ %.pre67, %._crit_edge61 ]
  %i.cj = phi ptr [ %i.k, %bb.c ], [ %.pre, %._crit_edge61 ]
  %i.ck = add nuw nsw i32 %.04162, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ck, %spec.select
  br i1 %exitcond.not, label %._crit_edge65, label %bb.b, !llvm.loop !296

._crit_edge65:                                    ; preds = %bb.t, %bb.a
  ret void
}

declare i32 @string2ll(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @mustObeyClient(ptr noundef) local_unnamed_addr #2

declare i64 @dictGenHashFunction(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @dictFind(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dictAdd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @raxNew() local_unnamed_addr #2

declare noalias ptr @XXH3_createState() local_unnamed_addr #2

declare i32 @XXH3_128bits_reset(ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @getObjectReadOnlyString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @XXH3_128bits_update(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare { i64, i64 } @XXH3_128bits_digest(ptr noundef captures(none)) local_unnamed_addr #16

declare i32 @XXH3_freeState(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #10

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
