inline.NumInlined: 273
inline.NumDeleted: 13
begin_hunk_0_@streamAppendItem:bb.a
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.not167 = icmp eq ptr %3, null
  br i1 %.not167, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  store i64 %.sroa.0196.0233, ptr %3, align 8, !tbaa !13
  %.sroa.17.0..sroa_idx214 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.17.0235, ptr %.sroa.17.0..sroa_idx214, align 8, !tbaa !13
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.bx

bb.bx:                                            ; preds = %bb.q, %bb.bw, %streamNextID.exit.thread.thread, %bb.f
  %.1 = phi i32 [ -1, %streamNextID.exit.thread.thread ], [ -1, %bb.f ], [ -1, %bb.q ], [ 0, %bb.bw ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

declare i32 @raxEOF(ptr noundef) local_unnamed_addr #2

declare ptr @lpShrinkToFit(ptr noundef) local_unnamed_addr #2

declare void @raxSetData(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lpNew(i64 noundef) local_unnamed_addr #2

declare ptr @lpAppendInteger(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lpAppend(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lpReplaceInteger(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local i64 @streamTrim(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.streamIterator, align 8     ; 12 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  %i.k = alloca i64, align 8                      ; 5 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca i64, align 8                      ; 5 uses
  %i.n = alloca i64, align 8                      ; 5 uses
  %i.o = alloca i64, align 8                      ; 5 uses
  %3 = alloca %struct.raxIterator, align 8        ; 13 uses
  %i.p = alloca ptr, align 8                      ; 32 uses
  %4 = alloca %struct.streamID, align 8           ; 6 uses
  %5 = alloca %struct.streamID, align 8           ; 6 uses
  %i.q = alloca ptr, align 8                      ; 5 uses
  %6 = alloca %struct.streamID, align 8           ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.s = load i64, ptr %i.r, align 8, !tbaa !154  ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.v = load i32, ptr %i.u, align 8, !tbaa !156
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.x = load i64, ptr %i.w, align 8, !tbaa !157  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.z = load i32, ptr %i.y, align 4, !tbaa !158  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !159 ; 2 uses
  %i.ac = icmp eq i32 %i.z, 0
  br i1 %i.ac, label %bb.bh, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  %i.ad = load ptr, ptr %0, align 8, !tbaa !20
  call void @raxStart(ptr noundef nonnull %3, ptr noundef %i.ad) #18
  %i.ae = call i32 @raxSeek(ptr noundef nonnull %3, ptr noundef nonnull @.str.3, ptr noundef null, i64 noundef 0) #18 ; 0 uses
  %i.af = call i32 @raxNext(ptr noundef nonnull %3) #18
  %.not235 = icmp eq i32 %i.af, 0
  br i1 %.not235, label %.loopexit201, label %.lr.ph238

.lr.ph238:                                        ; preds = %bb.b
  %i.ag = icmp eq i32 %i.z, 1                     ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.not144 = icmp ne i64 %i.x, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.an = icmp eq i32 %i.ab, 1                    ; 2 uses
  %i.ao = icmp ne i32 %i.v, 0
  %or.cond3 = select i1 %i.ao, i1 %i.an, i1 false
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph238, %select.unfold
  %.0120236 = phi i64 [ 0, %.lr.ph238 ], [ %.1121, %select.unfold ] ; 5 uses
  br i1 %i.ag, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !48
  %.not143 = icmp ugt i64 %i.at, %i.s
  br i1 %.not143, label %bb.e, label %.loopexit201

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.au = load ptr, ptr %i.ai, align 8, !tbaa !58 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #18
  %i.av = call ptr @lpFirst(ptr noundef %i.au) #18 ; 2 uses
  store ptr %i.av, ptr %i.p, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #18
  %i.aw = call ptr @lpGet(ptr noundef %i.av, ptr noundef nonnull %i.n, ptr noundef null) #18 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = load i64, ptr %i.n, align 8, !tbaa !13
  br label %lpGetIntegerIfValid.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #18
  store i64 0, ptr %i.o, align 8, !tbaa !21
  %i.az = load i64, ptr %i.n, align 8, !tbaa !13
  %i.ba = call i32 @string2ll(ptr noundef nonnull %i.aw, i64 noundef %i.az, ptr noundef nonnull %i.o) #18
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %bb.h, label %bb.i, !prof !63

bb.h:                                             ; preds = %bb.g
  call void @_serverAssert(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1, i32 noundef 322) #18
  call void @abort() #19
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bb = load i64, ptr %i.o, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #18
  br label %lpGetIntegerIfValid.exit

lpGetIntegerIfValid.exit:                         ; preds = %bb.f, %bb.i
  %.0.i = phi i64 [ %i.ay, %bb.f ], [ %i.bb, %bb.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #18
  %i.bc = add nsw i64 %.0.i, %.0120236            ; 2 uses
  %i.bd = icmp sgt i64 %i.bc, %i.x
  %or.cond155 = select i1 %.not144, i1 %i.bd, i1 false
  br i1 %or.cond155, label %.loopexit201.sink.split, label %bb.j

bb.j:                                             ; preds = %lpGetIntegerIfValid.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.be = load ptr, ptr %i.aj, align 8, !tbaa !59 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.be, align 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 1
  %i.bf = call i64 @llvm.bswap.i64(i64 %.sroa.0.0.copyload.i) ; 2 uses
  store i64 %i.bf, ptr %4, align 8, !tbaa !50
  %i.bg = call i64 @llvm.bswap.i64(i64 %.sroa.4.0.copyload.i) ; 2 uses
  store i64 %i.bg, ptr %i.ak, align 8, !tbaa !49
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bh = load i64, ptr %i.ah, align 8, !tbaa !48
  %i.bi = sub i64 %i.bh, %.0.i
  %i.bj = icmp uge i64 %i.bi, %i.s
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.bk = call i32 @lpGetEdgeStreamID(ptr noundef %i.au, i32 noundef 0, ptr noundef nonnull %4, ptr noundef nonnull %5) ; 0 uses
  %i.bl = load i64, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.bm = load i64, ptr %i.t, align 8, !tbaa !50  ; 2 uses
  %i.bn = icmp ugt i64 %i.bl, %i.bm
  br i1 %i.bn, label %streamCompareID.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = icmp ult i64 %i.bl, %i.bm
  br i1 %i.bo, label %streamCompareID.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bp = load i64, ptr %i.al, align 8, !tbaa !49
  %i.bq = load i64, ptr %i.am, align 8, !tbaa !49
  %i.br = icmp ult i64 %i.bp, %i.bq
  br label %streamCompareID.exit

streamCompareID.exit:                             ; preds = %bb.n, %bb.l, %bb.m
  %.0.i158 = phi i1 [ %i.br, %bb.n ], [ false, %bb.l ], [ true, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.o

bb.o:                                             ; preds = %streamCompareID.exit, %bb.k
  %.0138 = phi i1 [ %i.bj, %bb.k ], [ %.0.i158, %streamCompareID.exit ] ; 3 uses
  %or.cond = select i1 %.0138, i1 %i.an, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bs = call i64 @lpBytes(ptr noundef %i.au) #18
  %i.bt = load i64, ptr %i.aq, align 8, !tbaa !15
  %i.bu = sub i64 %i.bt, %i.bs
  store i64 %i.bu, ptr %i.aq, align 8, !tbaa !15
  call void @lpFree(ptr noundef %i.au) #18
  %i.bv = load ptr, ptr %0, align 8, !tbaa !20
  %i.bw = load ptr, ptr %i.aj, align 8, !tbaa !59
  %i.bx = load i64, ptr %i.as, align 8, !tbaa !52
  %i.by = call i32 @raxRemove(ptr noundef %i.bv, ptr noundef %i.bw, i64 noundef %i.bx, ptr noundef null) #18 ; 0 uses
  %i.bz = load ptr, ptr %i.aj, align 8, !tbaa !59
  %i.ca = load i64, ptr %i.as, align 8, !tbaa !52
  %i.cb = call i32 @raxSeek(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.bz, i64 noundef %i.ca) #18 ; 0 uses
  %i.cc = load i64, ptr %i.ah, align 8, !tbaa !48
  %i.cd = sub i64 %i.cc, %.0.i
  store i64 %i.cd, ptr %i.ah, align 8, !tbaa !48
  br label %select.unfold, !llvm.loop !160

bb.q:                                             ; preds = %bb.o
  br i1 %or.cond3, label %.thread194, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = call i64 @lpBytes(ptr noundef %i.au) #18 ; 2 uses
  %i.cf = load ptr, ptr %i.p, align 8, !tbaa !151
  %i.cg = call ptr @lpNext(ptr noundef %i.au, ptr noundef %i.cf) #18 ; 2 uses
  store ptr %i.cg, ptr %i.p, align 8, !tbaa !151
  %i.ch = call ptr @lpNext(ptr noundef %i.au, ptr noundef %i.cg) #18 ; 2 uses
  store ptr %i.ch, ptr %i.p, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #18
  %i.ci = call ptr @lpGet(ptr noundef %i.ch, ptr noundef nonnull %i.l, ptr noundef null) #18 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ck = load i64, ptr %i.l, align 8, !tbaa !13
  br label %lpGetIntegerIfValid.exit161

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #18
  store i64 0, ptr %i.m, align 8, !tbaa !21
  %i.cl = load i64, ptr %i.l, align 8, !tbaa !13
  %i.cm = call i32 @string2ll(ptr noundef nonnull %i.ci, i64 noundef %i.cl, ptr noundef nonnull %i.m) #18
  %.not11.i159 = icmp eq i32 %i.cm, 0
  br i1 %.not11.i159, label %bb.u, label %bb.v, !prof !63

bb.u:                                             ; preds = %bb.t
  call void @_serverAssert(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1, i32 noundef 322) #18
  call void @abort() #19
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cn = load i64, ptr %i.m, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #18
  br label %lpGetIntegerIfValid.exit161

lpGetIntegerIfValid.exit161:                      ; preds = %bb.s, %bb.v
  %.0.i160 = phi i64 [ %i.ck, %bb.s ], [ %i.cn, %bb.v ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #18
  %i.co = load ptr, ptr %i.p, align 8, !tbaa !151
  %i.cp = call ptr @lpNext(ptr noundef %i.au, ptr noundef %i.co) #18 ; 3 uses
  store ptr %i.cp, ptr %i.p, align 8, !tbaa !151
  %i.cq = icmp sgt i64 %.0.i160, 0
  br i1 %i.cq, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %lpGetIntegerIfValid.exit161
  %i.cr = phi ptr [ %i.cp, %lpGetIntegerIfValid.exit161 ], [ %i.cu, %.lr.ph ]
  %i.cs = call ptr @lpNext(ptr noundef %i.au, ptr noundef %i.cr) #18 ; 3 uses
  store ptr %i.cs, ptr %i.p, align 8, !tbaa !151
  %.not146229 = icmp eq ptr %i.cs, null
  br i1 %.not146229, label %.loopexit, label %.lr.ph233

.lr.ph:                                           ; preds = %lpGetIntegerIfValid.exit161, %.lr.ph
  %i.ct = phi ptr [ %i.cu, %.lr.ph ], [ %i.cp, %lpGetIntegerIfValid.exit161 ]
  %.0131223 = phi i64 [ %i.cv, %.lr.ph ], [ 0, %lpGetIntegerIfValid.exit161 ]
  %i.cu = call ptr @lpNext(ptr noundef %i.au, ptr noundef %i.ct) #18 ; 3 uses
  store ptr %i.cu, ptr %i.p, align 8, !tbaa !151
  %i.cv = add nuw nsw i64 %.0131223, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.cv, %.0.i160
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !161

thread-pre-split:                                 ; preds = %bb.at, %bb.av, %._crit_edge228
  %.pr = phi ptr [ %i.er, %._crit_edge228 ], [ %i.ff, %bb.av ], [ %.pre262, %bb.at ] ; 2 uses
  %.3135.ph = phi i64 [ %.0132230, %._crit_edge228 ], [ %i.ex, %bb.av ], [ %.0132230, %bb.at ] ; 2 uses
  %.3127.ph = phi ptr [ %.0124231, %._crit_edge228 ], [ %i.ew, %bb.av ], [ %.0124231, %bb.at ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  %.not146 = icmp eq ptr %.pr, null
  br i1 %.not146, label %.loopexit, label %.lr.ph233

.lr.ph233:                                        ; preds = %._crit_edge, %thread-pre-split
  %.0124231 = phi ptr [ %.3127.ph, %thread-pre-split ], [ %i.au, %._crit_edge ] ; 13 uses
  %.0132230 = phi i64 [ %.3135.ph, %thread-pre-split ], [ 0, %._crit_edge ] ; 6 uses
  %i.cw = phi ptr [ %.pr, %thread-pre-split ], [ %i.cs, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #18
  store ptr %i.cw, ptr %i.q, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #18
  %i.cx = call ptr @lpGet(ptr noundef nonnull %i.cw, ptr noundef nonnull %i.j, ptr noundef null) #18 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph233
  %i.cz = load i64, ptr %i.j, align 8, !tbaa !13
  br label %lpGetIntegerIfValid.exit164

bb.x:                                             ; preds = %.lr.ph233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #18
  store i64 0, ptr %i.k, align 8, !tbaa !21
  %i.da = load i64, ptr %i.j, align 8, !tbaa !13
  %i.db = call i32 @string2ll(ptr noundef nonnull %i.cx, i64 noundef %i.da, ptr noundef nonnull %i.k) #18
  %.not11.i162 = icmp eq i32 %i.db, 0
  br i1 %.not11.i162, label %bb.y, label %bb.z, !prof !63

bb.y:                                             ; preds = %bb.x
  call void @_serverAssert(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1, i32 noundef 322) #18
  call void @abort() #19
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.dc = load i64, ptr %i.k, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #18
  br label %lpGetIntegerIfValid.exit164

lpGetIntegerIfValid.exit164:                      ; preds = %bb.w, %bb.z
  %.0.i163 = phi i64 [ %i.cz, %bb.w ], [ %i.dc, %bb.z ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #18
  %i.dd = load ptr, ptr %i.p, align 8, !tbaa !151
  %i.de = call ptr @lpNext(ptr noundef %.0124231, ptr noundef %i.dd) #18 ; 2 uses
  store ptr %i.de, ptr %i.p, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %i.df = call ptr @lpGet(ptr noundef %i.de, ptr noundef nonnull %i.h, ptr noundef null) #18 ; 2 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %lpGetIntegerIfValid.exit164
  %i.dh = load i64, ptr %i.h, align 8, !tbaa !13
  br label %lpGetIntegerIfValid.exit167

bb.ab:                                            ; preds = %lpGetIntegerIfValid.exit164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #18
  store i64 0, ptr %i.i, align 8, !tbaa !21
  %i.di = load i64, ptr %i.h, align 8, !tbaa !13
  %i.dj = call i32 @string2ll(ptr noundef nonnull %i.df, i64 noundef %i.di, ptr noundef nonnull %i.i) #18
  %.not11.i165 = icmp eq i32 %i.dj, 0
  br i1 %.not11.i165, label %bb.ac, label %bb.ad, !prof !63

bb.ac:                                            ; preds = %bb.ab
  call void @_serverAssert(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1, i32 noundef 322) #18
  call void @abort() #19
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dk = load i64, ptr %i.i, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #18
  br label %lpGetIntegerIfValid.exit167

lpGetIntegerIfValid.exit167:                      ; preds = %bb.aa, %bb.ad
  %.0.i166 = phi i64 [ %i.dh, %bb.aa ], [ %i.dk, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  %i.dl = load ptr, ptr %i.p, align 8, !tbaa !151
  %i.dm = call ptr @lpNext(ptr noundef %.0124231, ptr noundef %i.dl) #18 ; 2 uses
  store ptr %i.dm, ptr %i.p, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  %i.dn = call ptr @lpGet(ptr noundef %i.dm, ptr noundef nonnull %i.f, ptr noundef null) #18 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %lpGetIntegerIfValid.exit167
  %i.dp = load i64, ptr %i.f, align 8, !tbaa !13
  br label %lpGetIntegerIfValid.exit170

bb.af:                                            ; preds = %lpGetIntegerIfValid.exit167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  store i64 0, ptr %i.g, align 8, !tbaa !21
  %i.dq = load i64, ptr %i.f, align 8, !tbaa !13
  %i.dr = call i32 @string2ll(ptr noundef nonnull %i.dn, i64 noundef %i.dq, ptr noundef nonnull %i.g) #18
  %.not11.i168 = icmp eq i32 %i.dr, 0
  br i1 %.not11.i168, label %bb.ag, label %bb.ah, !prof !63

bb.ag:                                            ; preds = %bb.af
  call void @_serverAssert(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1, i32 noundef 322) #18
  call void @abort() #19
  unreachable

bb.ah:                                            ; preds = %bb.af
  %i.ds = load i64, ptr %i.g, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  br label %lpGetIntegerIfValid.exit170

lpGetIntegerIfValid.exit170:                      ; preds = %bb.ae, %bb.ah
  %.0.i169 = phi i64 [ %i.dp, %bb.ae ], [ %i.ds, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  %i.dt = load ptr, ptr %i.p, align 8, !tbaa !151
  %i.du = call ptr @lpNext(ptr noundef %.0124231, ptr noundef %i.dt) #18 ; 3 uses
  store ptr %i.du, ptr %i.p, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.dv = add i64 %i.bf, %.0.i166                 ; 3 uses
  store i64 %i.dv, ptr %6, align 8, !tbaa !50
  %i.dw = add i64 %i.bg, %.0.i169                 ; 2 uses
  store i64 %i.dw, ptr %i.ap, align 8, !tbaa !49
  br i1 %i.ag, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %lpGetIntegerIfValid.exit170
  %i.dx = load i64, ptr %i.ah, align 8, !tbaa !48
  %.not198 = icmp ugt i64 %i.dx, %i.s
  br i1 %.not198, label %.thread181, label %.loopexit.sink.split

bb.aj:                                            ; preds = %lpGetIntegerIfValid.exit170
  %i.dy = load i64, ptr %i.t, align 8, !tbaa !50  ; 2 uses
  %i.dz = icmp ugt i64 %i.dv, %i.dy
  br i1 %i.dz, label %.loopexit.sink.split, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ea = icmp ult i64 %i.dv, %i.dy
  br i1 %i.ea, label %.thread181, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.eb = load i64, ptr %i.am, align 8, !tbaa !49
  %.not197 = icmp ult i64 %i.dw, %i.eb
  br i1 %.not197, label %.thread181, label %.loopexit.sink.split

.thread181:                                       ; preds = %bb.al, %bb.ak, %bb.ai
  %i.ec = and i64 %.0.i163, 2
  %.not147 = icmp eq i64 %i.ec, 0
  br i1 %.not147, label %bb.am, label %bb.ar

bb.am:                                            ; preds = %.thread181
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.ed = call ptr @lpGet(ptr noundef %i.du, ptr noundef nonnull %i.d, ptr noundef null) #18 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.ef = load i64, ptr %i.d, align 8, !tbaa !13
  br label %lpGetIntegerIfValid.exit176

bb.ao:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i64 0, ptr %i.e, align 8, !tbaa !21
  %i.eg = load i64, ptr %i.d, align 8, !tbaa !13
  %i.eh = call i32 @string2ll(ptr noundef nonnull %i.ed, i64 noundef %i.eg, ptr noundef nonnull %i.e) #18
  %.not11.i174 = icmp eq i32 %i.eh, 0
  br i1 %.not11.i174, label %bb.ap, label %bb.aq, !prof !63

bb.ap:                                            ; preds = %bb.ao
  call void @_serverAssert(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1, i32 noundef 322) #18
  call void @abort() #19
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.ei = load i64, ptr %i.e, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %lpGetIntegerIfValid.exit176

lpGetIntegerIfValid.exit176:                      ; preds = %bb.an, %bb.aq
  %.0.i175 = phi i64 [ %i.ef, %bb.an ], [ %i.ei, %bb.aq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.ej = load ptr, ptr %i.p, align 8, !tbaa !151
  %i.ek = call ptr @lpNext(ptr noundef %.0124231, ptr noundef %i.ej) #18 ; 2 uses
  store ptr %i.ek, ptr %i.p, align 8, !tbaa !151
  %i.el = shl nsw i64 %.0.i175, 1
  br label %bb.ar

bb.ar:                                            ; preds = %.thread181, %lpGetIntegerIfValid.exit176
  %i.em = phi ptr [ %i.ek, %lpGetIntegerIfValid.exit176 ], [ %i.du, %.thread181 ] ; 2 uses
  %.0129 = phi i64 [ %i.el, %lpGetIntegerIfValid.exit176 ], [ %.0.i160, %.thread181 ] ; 2 uses
  %.not148224 = icmp eq i64 %.0129, 0
  br i1 %.not148224, label %._crit_edge228, label %.lr.ph227

.lr.ph227:                                        ; preds = %bb.ar, %.lr.ph227
  %i.en = phi ptr [ %i.ep, %.lr.ph227 ], [ %i.em, %bb.ar ]
  %.1130225 = phi i64 [ %i.eo, %.lr.ph227 ], [ %.0129, %bb.ar ]
  %i.eo = add nsw i64 %.1130225, -1               ; 2 uses
  %i.ep = call ptr @lpNext(ptr noundef %.0124231, ptr noundef %i.en) #18 ; 3 uses
  store ptr %i.ep, ptr %i.p, align 8, !tbaa !151
  %.not148 = icmp eq i64 %i.eo, 0
  br i1 %.not148, label %._crit_edge228, label %.lr.ph227, !llvm.loop !162

._crit_edge228:                                   ; preds = %.lr.ph227, %bb.ar
  %i.eq = phi ptr [ %i.em, %bb.ar ], [ %i.ep, %.lr.ph227 ]
  %i.er = call ptr @lpNext(ptr noundef %.0124231, ptr noundef %i.eq) #18 ; 3 uses
  store ptr %i.er, ptr %i.p, align 8, !tbaa !151
  %i.es = and i64 %.0.i163, 1
  %.not149 = icmp eq i64 %i.es, 0
  br i1 %.not149, label %bb.as, label %thread-pre-split

bb.as:                                            ; preds = %._crit_edge228
  switch i32 %i.ab, label %.critedge [
    i32 3, label %bb.at
    i32 2, label %bb.au
  ]

bb.at:                                            ; preds = %bb.as
  %i.et = call i32 @streamEntryIsReferenced(ptr noundef nonnull %0, ptr noundef nonnull %6)
  %.not199 = icmp eq i32 %i.et, 0
  %.pre262 = load ptr, ptr %i.p, align 8, !tbaa !151 ; 2 uses
  br i1 %.not199, label %.critedge, label %thread-pre-split

bb.au:                                            ; preds = %bb.as
  call void @streamCleanupEntryCGroupRefs(ptr noundef nonnull %0, ptr noundef nonnull %6)
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !151
  br label %.critedge

.critedge:                                        ; preds = %bb.au, %bb.as, %bb.at
  %i.eu = phi ptr [ %.pre, %bb.au ], [ %i.er, %bb.as ], [ %.pre262, %bb.at ] ; 2 uses
  %i.ev = or disjoint i64 %.0.i163, 1
  %i.ew = call ptr @lpReplaceInteger(ptr noundef %.0124231, ptr noundef nonnull %i.q, i64 noundef %i.ev) #18 ; 3 uses
  %i.ex = add nsw i64 %.0132230, 1                ; 2 uses
  %i.ey = load i64, ptr %i.ah, align 8, !tbaa !48
  %i.ez = add i64 %i.ey, -1
  store i64 %i.ez, ptr %i.ah, align 8, !tbaa !48
  %i.fa = load ptr, ptr %i.p, align 8, !tbaa !151
  %.not152 = icmp eq ptr %i.fa, null
  br i1 %.not152, label %.loopexit.sink.split, label %bb.av

bb.av:                                            ; preds = %.critedge
  %.not151 = icmp eq ptr %i.eu, null
  %i.fb = ptrtoint ptr %i.eu to i64
  %i.fc = ptrtoint ptr %.0124231 to i64
  %i.fd = sub i64 %i.fb, %i.fc
  %i.fe = select i1 %.not151, i64 0, i64 %i.fd
  %i.ff = getelementptr inbounds i8, ptr %i.ew, i64 %i.fe ; 2 uses
  store ptr %i.ff, ptr %i.p, align 8, !tbaa !151
  br label %thread-pre-split

.loopexit.sink.split:                             ; preds = %bb.ai, %bb.al, %bb.aj, %.critedge
  %.0132213.ph = phi i64 [ %i.ex, %.critedge ], [ %.0132230, %bb.aj ], [ %.0132230, %bb.al ], [ %.0132230, %bb.ai ]
  %.0124207.ph = phi ptr [ %i.ew, %.critedge ], [ %.0124231, %bb.aj ], [ %.0124231, %bb.al ], [ %.0124231, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #18
  br label %.loopexit

.loopexit:                                        ; preds = %thread-pre-split, %.loopexit.sink.split, %._crit_edge
  %.0132213 = phi i64 [ %.0132213.ph, %.loopexit.sink.split ], [ 0, %._crit_edge ], [ %.3135.ph, %thread-pre-split ] ; 4 uses
  %.0124207 = phi ptr [ %.0124207.ph, %.loopexit.sink.split ], [ %i.au, %._crit_edge ], [ %.3127.ph, %thread-pre-split ] ; 3 uses
  %i.fg = add nsw i64 %.0132213, %.0120236        ; 3 uses
  %i.fh = icmp eq i64 %.0132213, %.0.i
  %or.cond156 = select i1 %.0138, i1 %i.fh, i1 false
  br i1 %or.cond156, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.loopexit
  %i.fi = load i64, ptr %i.aq, align 8, !tbaa !15
  %i.fj = sub i64 %i.fi, %i.ce
  store i64 %i.fj, ptr %i.aq, align 8, !tbaa !15
  call void @lpFree(ptr noundef %.0124207) #18
  %i.fk = load ptr, ptr %0, align 8, !tbaa !20
  %i.fl = load ptr, ptr %i.aj, align 8, !tbaa !59
  %i.fm = load i64, ptr %i.as, align 8, !tbaa !52
  %i.fn = call i32 @raxRemove(ptr noundef %i.fk, ptr noundef %i.fl, i64 noundef %i.fm, ptr noundef null) #18 ; 0 uses
  %i.fo = load ptr, ptr %i.aj, align 8, !tbaa !59
  %i.fp = load i64, ptr %i.as, align 8, !tbaa !52
  %i.fq = call i32 @raxSeek(ptr noundef nonnull %3, ptr noundef nonnull @.str.10, ptr noundef %i.fo, i64 noundef %i.fp) #18 ; 0 uses
  br label %select.unfold, !llvm.loop !160

bb.ax:                                            ; preds = %.loopexit
  %i.fr = call ptr @lpFirst(ptr noundef %.0124207) #18
  store ptr %i.fr, ptr %i.p, align 8, !tbaa !151
  %i.fs = sub nsw i64 %.0.i, %.0132213
  %i.ft = call ptr @lpReplaceInteger(ptr noundef %.0124207, ptr noundef nonnull %i.p, i64 noundef %i.fs) #18 ; 2 uses
  %i.fu = load ptr, ptr %i.p, align 8, !tbaa !151
  %i.fv = call ptr @lpNext(ptr noundef %i.ft, ptr noundef %i.fu) #18 ; 2 uses
  store ptr %i.fv, ptr %i.p, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.fw = call ptr @lpGet(ptr noundef %i.fv, ptr noundef nonnull %i.b, ptr noundef null) #18 ; 2 uses
  %i.fx = icmp eq ptr %i.fw, null
  br i1 %i.fx, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fy = load i64, ptr %i.b, align 8, !tbaa !13
  br label %lpGetIntegerIfValid.exit179

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i64 0, ptr %i.c, align 8, !tbaa !21
  %i.fz = load i64, ptr %i.b, align 8, !tbaa !13
  %i.ga = call i32 @string2ll(ptr noundef nonnull %i.fw, i64 noundef %i.fz, ptr noundef nonnull %i.c) #18
  %.not11.i177 = icmp eq i32 %i.ga, 0
  br i1 %.not11.i177, label %bb.ba, label %bb.bb, !prof !63

bb.ba:                                            ; preds = %bb.az
  call void @_serverAssert(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.1, i32 noundef 322) #18
  call void @abort() #19
  unreachable

bb.bb:                                            ; preds = %bb.az
  %i.gb = load i64, ptr %i.c, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  br label %lpGetIntegerIfValid.exit179

lpGetIntegerIfValid.exit179:                      ; preds = %bb.ay, %bb.bb
  %.0.i178 = phi i64 [ %i.fy, %bb.ay ], [ %i.gb, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.gc = add nsw i64 %.0.i178, %.0132213
  %i.gd = call ptr @lpReplaceInteger(ptr noundef %i.ft, ptr noundef nonnull %i.p, i64 noundef %i.gc) #18 ; 3 uses
  %i.ge = load ptr, ptr %i.p, align 8, !tbaa !151
  %i.gf = call ptr @lpNext(ptr noundef %i.gd, ptr noundef %i.ge) #18
  store ptr %i.gf, ptr %i.p, align 8, !tbaa !151
  %i.gg = load i64, ptr %i.aq, align 8, !tbaa !15
  %i.gh = sub i64 %i.gg, %i.ce
  store i64 %i.gh, ptr %i.aq, align 8, !tbaa !15
  %i.gi = call i64 @lpBytes(ptr noundef %i.gd) #18
  %i.gj = load i64, ptr %i.aq, align 8, !tbaa !15
  %i.gk = add i64 %i.gj, %i.gi
  store i64 %i.gk, ptr %i.aq, align 8, !tbaa !15
  %i.gl = load ptr, ptr %i.ar, align 8, !tbaa !149
  call void @raxSetData(ptr noundef %i.gl, ptr noundef %i.gd) #18
  br i1 %.0138, label %select.unfold, label %.thread194

.thread194:                                       ; preds = %bb.q, %lpGetIntegerIfValid.exit179
  %.1121.ph = phi i64 [ %i.fg, %lpGetIntegerIfValid.exit179 ], [ %.0120236, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %.loopexit201.sink.split

select.unfold:                                    ; preds = %lpGetIntegerIfValid.exit179, %bb.p, %bb.aw
  %.1121 = phi i64 [ %i.bc, %bb.p ], [ %i.fg, %bb.aw ], [ %i.fg, %lpGetIntegerIfValid.exit179 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  %i.gm = call i32 @raxNext(ptr noundef nonnull %3) #18
  %.not = icmp eq i32 %i.gm, 0
  br i1 %.not, label %.loopexit201, label %bb.c

.loopexit201.sink.split:                          ; preds = %lpGetIntegerIfValid.exit, %.thread194
  %.3123.ph = phi i64 [ %.1121.ph, %.thread194 ], [ %.0120236, %lpGetIntegerIfValid.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #18
  br label %.loopexit201

.loopexit201:                                     ; preds = %select.unfold, %bb.d, %.loopexit201.sink.split, %bb.b
  %.3123 = phi i64 [ 0, %bb.b ], [ %.3123.ph, %.loopexit201.sink.split ], [ %.1121, %select.unfold ], [ %.0120236, %bb.d ] ; 2 uses
  call void @raxStop(ptr noundef nonnull %3) #18
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !48
  %i.gp = icmp eq i64 %i.go, 0
  br i1 %i.gp, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.loopexit201
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, i8 0, i64 16, i1 false)
  br label %bb.bg

bb.bd:                                            ; preds = %.loopexit201
  %.not153 = icmp eq i64 %.3123, 0
  br i1 %.not153, label %bb.bg, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i8 0, i64 16, i1 false)
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, i8 -1, i64 16, i1 false)
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.gv = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i8 0, i64 16, i1 false)
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i8 -1, i64 16, i1 false)
  %i.gx = load ptr, ptr %0, align 8, !tbaa !20
  call void @raxStart(ptr noundef nonnull %i.gw, ptr noundef %i.gx) #18
  %i.gy = call i32 @raxSeek(ptr noundef nonnull %i.gw, ptr noundef nonnull @.str.3, ptr noundef null, i64 noundef 0) #18 ; 0 uses
  store ptr %0, ptr %2, align 8, !tbaa !118
  %i.gz = getelementptr inbounds nuw i8, ptr %2, i64 616
  %i.ha = getelementptr inbounds nuw i8, ptr %2, i64 52
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gz, i8 0, i64 24, i1 false)
  store i32 0, ptr %i.ha, align 4, !tbaa !120
  %i.hb = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 1, ptr %i.hb, align 8, !tbaa !121
  %i.hc = call i32 @streamIteratorGetID(ptr noundef nonnull %2, ptr noundef nonnull %i.gr, ptr noundef nonnull %i.a)
  %.not6.i = icmp eq i32 %i.hc, 0
  br i1 %.not6.i, label %bb.bf, label %streamGetEdgeID.exit

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i8 -1, i64 16, i1 false)
  br label %streamGetEdgeID.exit

streamGetEdgeID.exit:                             ; preds = %bb.be, %bb.bf
  call void @raxStop(ptr noundef nonnull %i.gw) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bd, %streamGetEdgeID.exit, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  br label %bb.bh

bb.bh:                                            ; preds = %bb.a, %bb.bg
  %.0 = phi i64 [ %.3123, %bb.bg ], [ 0, %bb.a ]
  ret i64 %.0
}

declare void @lpFree(ptr noundef) local_unnamed_addr #2

declare i32 @raxRemove(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @streamEntryIsReferenced(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.raxIterator, align 8        ; 8 uses
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %streamCompareID.exit23.thread28, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @raxSize(ptr noundef nonnull %i.c) #18
  %.not17 = icmp eq i64 %i.d, 0
  br i1 %.not17, label %streamCompareID.exit23.thread28, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8               ; 2 uses
  %i.g = and i8 %i.f, 1
  %.not18 = icmp eq i8 %i.g, 0
  br i1 %.not18, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.h = or disjoint i8 %i.f, 1
  store i8 %i.h, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 -1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !31
  call void @raxStart(ptr noundef nonnull %2, ptr noundef %i.k) #18
  %i.l = call i32 @raxSeek(ptr noundef nonnull %2, ptr noundef nonnull @.str.3, ptr noundef null, i64 noundef 0) #18 ; 0 uses
  %i.m = call i32 @raxNext(ptr noundef nonnull %2) #18
  %.not1931 = icmp eq i32 %i.m, 0
  br i1 %.not1931, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %streamCompareID.exit.thread
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58   ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !50   ; 2 uses
  %i.q = load i64, ptr %i.i, align 8, !tbaa !50   ; 2 uses
  %i.r = icmp ugt i64 %i.p, %i.q
  br i1 %i.r, label %streamCompareID.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp ult i64 %i.p, %i.q
  br i1 %i.s, label %streamCompareID.exit.thread25, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !49
  %i.v = load i64, ptr %i.j, align 8, !tbaa !49
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %streamCompareID.exit.thread25, label %streamCompareID.exit.thread

streamCompareID.exit.thread25:                    ; preds = %bb.g, %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !tbaa.struct !51
  br label %streamCompareID.exit.thread

streamCompareID.exit.thread:                      ; preds = %bb.e, %bb.g, %streamCompareID.exit.thread25
  %i.x = call i32 @raxNext(ptr noundef nonnull %2) #18
  %.not19 = icmp eq i32 %i.x, 0
  br i1 %.not19, label %._crit_edge, label %bb.e, !llvm.loop !163

._crit_edge:                                      ; preds = %streamCompareID.exit.thread, %bb.d
  call void @raxStop(ptr noundef nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.z = load i64, ptr %i.y, align 8, !tbaa !50   ; 2 uses
  %i.aa = load i64, ptr %1, align 8, !tbaa !50    ; 3 uses
  %i.ab = icmp ugt i64 %i.z, %i.aa
  br i1 %i.ab, label %streamCompareID.exit23.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp ult i64 %i.z, %i.aa
  br i1 %i.ac, label %streamCompareID.exit23.thread28, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !49
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !49
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %streamCompareID.exit23.thread28, label %streamCompareID.exit23.thread

streamCompareID.exit23.thread:                    ; preds = %bb.h, %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !32 ; 2 uses
  %.not20 = icmp eq ptr %i.aj, null
  br i1 %.not20, label %streamCompareID.exit23.thread28, label %bb.k

bb.k:                                             ; preds = %streamCompareID.exit23.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ak = call i64 @llvm.bswap.i64(i64 %i.aa)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !49
  %i.an = call i64 @llvm.bswap.i64(i64 %i.am)
  store i64 %i.ak, ptr %i.a, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.an, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.ao = call i32 @raxFind(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.a, i64 noundef 16, ptr noundef null) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %streamCompareID.exit23.thread28

streamCompareID.exit23.thread28:                  ; preds = %bb.j, %bb.i, %streamCompareID.exit23.thread, %bb.a, %bb.b, %bb.k
  %.0 = phi i32 [ 0, %bb.a ], [ %i.ao, %bb.k ], [ 1, %bb.j ], [ 0, %bb.b ], [ 0, %streamCompareID.exit23.thread ], [ 1, %bb.i ]
  ret i32 %.0
}
end_hunk_0
begin_hunk_1_@streamPropagateGroupID:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.s, ptr %i.t, align 16, !tbaa !144
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 688), align 8, !tbaa !173
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.u, ptr %i.v, align 8, !tbaa !144
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !62
  %i.y = tail call ptr @createStringObjectFromLongLong(i64 noundef %i.x) #18
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store ptr %i.y, ptr %i.z, align 16, !tbaa !144
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !174
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !186
  call void @alsoPropagate(i32 noundef %i.ad, ptr noundef nonnull %i.a, i32 noundef 7, i32 noundef 3) #18
  %i.ae = load ptr, ptr %i.t, align 16, !tbaa !144
  call void @decrRefCount(ptr noundef %i.ae) #18
  %i.af = load ptr, ptr %i.z, align 16, !tbaa !144
  call void @decrRefCount(ptr noundef %i.af) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

declare ptr @createStringObjectFromLongLong(i64 noundef) local_unnamed_addr #2

declare void @alsoPropagate(i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @decrRefCount(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @streamPropagateConsumerCreation(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x ptr], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 536), align 8, !tbaa !170
  store ptr %i.b, ptr %i.a, align 16, !tbaa !144
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 736), align 8, !tbaa !189
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8, !tbaa !144
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.e, align 16, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %i.f, align 8, !tbaa !144
  %i.g = tail call ptr @sdsdup(ptr noundef %3) #18
  %i.h = tail call ptr @createObject(i32 noundef 0, ptr noundef %i.g) #18
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.i, align 16, !tbaa !144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !174
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load i32, ptr %i.l, align 8, !tbaa !186
  call void @alsoPropagate(i32 noundef %i.m, ptr noundef nonnull %i.a, i32 noundef 5, i32 noundef 3) #18
  %i.n = load ptr, ptr %i.i, align 16, !tbaa !144
  call void @decrRefCount(ptr noundef %i.n) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @streamReplyWithRange(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(address_is_null) %2, ptr noundef %3, i64 noundef %4, i32 noundef %5, i64 noundef %6, ptr noundef %7, ptr noundef %8, i32 noundef %9, ptr noundef readonly captures(address_is_null) %10, ptr noundef captures(address_is_null) %11) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [14 x ptr], align 16              ; 15 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [14 x ptr], align 16              ; 15 uses
  %12 = alloca %struct.streamIterator, align 8    ; 20 uses
  %i.e = alloca i64, align 8                      ; 8 uses
  %13 = alloca %struct.streamID, align 8          ; 9 uses
  %14 = alloca %struct.streamID, align 8          ; 6 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 6 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca [16 x i8], align 16               ; 10 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !174
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %i.p = load i32, ptr %i.o, align 8, !tbaa !186  ; 2 uses
  %i.q = tail call i64 @commandTimeSnapshot() #18 ; 12 uses
  %i.r = icmp ne ptr %10, null                    ; 4 uses
  %i.s = icmp ne ptr %8, null
  %or.cond = and i1 %i.s, %i.r                    ; 4 uses
  br i1 %or.cond, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !75   ; 6 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %.val.i = load i8, ptr %i.v, align 1, !tbaa !69 ; 2 uses
  %i.w = and i8 %.val.i, 7
  switch i8 %i.w, label %sdslen.exit [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.x = lshr i8 %.val.i, 3
  %i.y = zext nneg i8 %i.x to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 -3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !69
  %i.ab = zext i8 %i.aa to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds i8, ptr %i.u, i64 -5
  %i.ad = load i16, ptr %i.ac, align 1, !tbaa !77
  %i.ae = zext i16 %i.ad to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds i8, ptr %i.u, i64 -9
  %i.ag = load i32, ptr %i.af, align 1, !tbaa !9
  %i.ah = zext i32 %i.ag to i64
  br label %sdslen.exit

bb.g:                                             ; preds = %bb.b
  %i.ai = getelementptr inbounds i8, ptr %i.u, i64 -17
  %i.aj = load i64, ptr %i.ai, align 1, !tbaa !13
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ %i.aj, %bb.g ], [ %i.y, %bb.c ], [ %i.ab, %bb.d ], [ %i.ae, %bb.e ], [ %i.ah, %bb.f ], [ 0, %bb.b ]
  %i.ak = tail call ptr @createStringObject(ptr noundef nonnull %i.u, i64 noundef %.0.i) #18
  %i.al = tail call ptr @createStringObjectFromLongLong(i64 noundef %i.q) #18
  %i.am = load ptr, ptr @SDS_NOINIT, align 8, !tbaa !151
  %i.an = tail call ptr @sdsnewlen(ptr noundef %i.am, i64 noundef 44) #18 ; 6 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 -1     ; 2 uses
  %.val.i.i.i = load i8, ptr %i.ao, align 1, !tbaa !69
  %i.ap = and i8 %.val.i.i.i, 7
  switch i8 %i.ap, label %createObjectFromStreamID.exit [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
  ]

bb.h:                                             ; preds = %sdslen.exit
  store i8 0, ptr %i.ao, align 1, !tbaa !69
  br label %createObjectFromStreamID.exit

bb.i:                                             ; preds = %sdslen.exit
  %i.aq = getelementptr inbounds i8, ptr %i.an, i64 -3
  store i8 0, ptr %i.aq, align 1, !tbaa !69
  br label %createObjectFromStreamID.exit

bb.j:                                             ; preds = %sdslen.exit
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 -5
  store i16 0, ptr %i.ar, align 1, !tbaa !77
  br label %createObjectFromStreamID.exit

bb.k:                                             ; preds = %sdslen.exit
  %i.as = getelementptr inbounds i8, ptr %i.an, i64 -9
  store i32 0, ptr %i.as, align 1, !tbaa !9
  br label %createObjectFromStreamID.exit

bb.l:                                             ; preds = %sdslen.exit
  %i.at = getelementptr inbounds i8, ptr %i.an, i64 -17
  store i64 0, ptr %i.at, align 1, !tbaa !13
  br label %createObjectFromStreamID.exit

createObjectFromStreamID.exit:                    ; preds = %sdslen.exit, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l
  %i.au = load i64, ptr %7, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !49
  %i.ax = tail call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.17, i64 noundef %i.au, i64 noundef %i.aw) #18
  %i.ay = tail call ptr @createObject(i32 noundef 0, ptr noundef %i.ax) #18
  br label %bb.m

bb.m:                                             ; preds = %createObjectFromStreamID.exit, %bb.a
  %.0225 = phi ptr [ %i.ay, %createObjectFromStreamID.exit ], [ null, %bb.a ] ; 5 uses
  %.0224 = phi ptr [ %i.al, %createObjectFromStreamID.exit ], [ null, %bb.a ] ; 5 uses
  %.0223 = phi ptr [ %i.ak, %createObjectFromStreamID.exit ], [ null, %bb.a ] ; 5 uses
  %.not = icmp eq ptr %11, null                   ; 4 uses
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %11, align 8, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.az = icmp ne ptr %7, null                    ; 4 uses
  %i.ba = icmp ne i64 %6, -1                      ; 3 uses
  %or.cond3 = and i1 %i.ba, %i.az
  br i1 %or.cond3, label %bb.p, label %.thread324

bb.p:                                             ; preds = %bb.o
  %i.bb = tail call ptr @addReplyDeferredLen(ptr noundef nonnull %0) #18 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 5 uses
  %15 = load ptr, ptr %i.bc, align 8, !tbaa !44
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !42 ; 2 uses
  %.not261347 = icmp eq ptr %i.be, null
  br i1 %.not261347, label %.thread324, label %.lr.ph353

.lr.ph353:                                        ; preds = %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.bh = getelementptr inbounds nuw i8, ptr %12, i64 648 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %12, i64 616 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %12, i64 632 ; 6 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 669
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %.not265 = icmp eq i64 %4, 0
  %i.by = getelementptr inbounds nuw i8, ptr %12, i64 128 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph353, %.thread
  %.0217351 = phi i64 [ 0, %.lr.ph353 ], [ %.1218, %.thread ] ; 3 uses
  %.0230350 = phi i64 [ 0, %.lr.ph353 ], [ %.3233, %.thread ] ; 3 uses
  %.0236348 = phi ptr [ %i.be, %.lr.ph353 ], [ %i.ca, %.thread ] ; 18 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.0236348, i64 56 ; 5 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !72 ; 2 uses
  %i.cb = load i64, ptr %.0236348, align 8, !tbaa !64
  %i.cc = sub nsw i64 %i.q, %i.cb                 ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %6
  br i1 %i.cd, label %.thread324, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %.0236348, i64 8 ; 3 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #18
  %i.cg = getelementptr inbounds nuw i8, ptr %.0236348, i64 32 ; 3 uses
  call void @streamIteratorStart(ptr noundef nonnull %12, ptr noundef %1, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.cg, i32 noundef %5)
  %i.ch = call i32 @streamIteratorGetID(ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %i.e)
  %.not262 = icmp eq i32 %i.ch, 0
  br i1 %.not262, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ci = load ptr, ptr @SDS_NOINIT, align 8, !tbaa !151
  %i.cj = call ptr @sdsnewlen(ptr noundef %i.ci, i64 noundef 44) #18 ; 6 uses
  %i.ck = getelementptr i8, ptr %i.cj, i64 -1     ; 2 uses
  %.val.i.i.i286 = load i8, ptr %i.ck, align 1, !tbaa !69
  %i.cl = and i8 %.val.i.i.i286, 7
  switch i8 %i.cl, label %createObjectFromStreamID.exit287 [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.v
    i8 3, label %bb.w
    i8 4, label %bb.x
  ]

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.ck, align 1, !tbaa !69
  br label %createObjectFromStreamID.exit287

bb.u:                                             ; preds = %bb.s
  %i.cm = getelementptr inbounds i8, ptr %i.cj, i64 -3
  store i8 0, ptr %i.cm, align 1, !tbaa !69
  br label %createObjectFromStreamID.exit287

bb.v:                                             ; preds = %bb.s
  %i.cn = getelementptr inbounds i8, ptr %i.cj, i64 -5
  store i16 0, ptr %i.cn, align 1, !tbaa !77
  br label %createObjectFromStreamID.exit287

bb.w:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds i8, ptr %i.cj, i64 -9
  store i32 0, ptr %i.co, align 1, !tbaa !9
  br label %createObjectFromStreamID.exit287

bb.x:                                             ; preds = %bb.s
  %i.cp = getelementptr inbounds i8, ptr %i.cj, i64 -17
  store i64 0, ptr %i.cp, align 1, !tbaa !13
  br label %createObjectFromStreamID.exit287

createObjectFromStreamID.exit287:                 ; preds = %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %i.cq = load i64, ptr %14, align 8, !tbaa !50
  %i.cr = load i64, ptr %i.bf, align 8, !tbaa !49
  %i.cs = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef nonnull %i.cj, ptr noundef nonnull @.str.17, i64 noundef %i.cq, i64 noundef %i.cr) #18
  %i.ct = call ptr @createObject(i32 noundef 0, ptr noundef %i.cs) #18 ; 3 uses
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 4) #18
  call void @addReplyBulk(ptr noundef nonnull %0, ptr noundef %i.ct) #18
  %i.cu = load i64, ptr %i.e, align 8, !tbaa !13  ; 3 uses
  %i.cv = shl nsw i64 %i.cu, 1
  call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef %i.cv) #18
  %.not263346 = icmp eq i64 %i.cu, 0
  br i1 %.not263346, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %createObjectFromStreamID.exit287, %streamIteratorGetField.exit
  %.in = phi i64 [ %i.cw, %streamIteratorGetField.exit ], [ %i.cu, %createObjectFromStreamID.exit287 ]
  %i.cw = add nsw i64 %.in, -1                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #18
  %i.cx = load i32, ptr %i.bg, align 8, !tbaa !138
  %i.cy = and i32 %i.cx, 2
  %.not.i = icmp eq i32 %i.cy, 0
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph
  %i.cz = load ptr, ptr %i.bj, align 8, !tbaa !141
  %i.da = call ptr @lpGet(ptr noundef %i.cz, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bh) #18
  %i.db = load ptr, ptr %i.bi, align 8, !tbaa !128
  %i.dc = load ptr, ptr %i.bj, align 8, !tbaa !141
  %i.dd = call ptr @lpNext(ptr noundef %i.db, ptr noundef %i.dc) #18
  store ptr %i.dd, ptr %i.bj, align 8, !tbaa !141
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !126
  br label %streamIteratorGetField.exit

bb.z:                                             ; preds = %.lr.ph
  %i.de = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !126
  %i.df = call ptr @lpGet(ptr noundef %i.de, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bh) #18
  %i.dg = load ptr, ptr %i.bi, align 8, !tbaa !128
  %i.dh = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !126
  %i.di = call ptr @lpNext(ptr noundef %i.dg, ptr noundef %i.dh) #18 ; 2 uses
  store ptr %i.di, ptr %.phi.trans.insert.i, align 8, !tbaa !126
  br label %streamIteratorGetField.exit

streamIteratorGetField.exit:                      ; preds = %bb.y, %bb.z
  %.0319 = phi ptr [ %i.df, %bb.z ], [ %i.da, %bb.y ]
  %i.dj = phi ptr [ %i.di, %bb.z ], [ %.pre.i, %bb.y ]
  %i.dk = call ptr @lpGet(ptr noundef %i.dj, ptr noundef nonnull %i.g, ptr noundef nonnull %i.bk) #18
  %i.dl = load ptr, ptr %i.bi, align 8, !tbaa !128
  %i.dm = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !126
  %i.dn = call ptr @lpNext(ptr noundef %i.dl, ptr noundef %i.dm) #18
  store ptr %i.dn, ptr %.phi.trans.insert.i, align 8, !tbaa !126
  %i.do = load i64, ptr %i.f, align 8, !tbaa !13
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef %.0319, i64 noundef %i.do) #18
  %i.dp = load i64, ptr %i.g, align 8, !tbaa !13
  call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef %i.dk, i64 noundef %i.dp) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  %.not263 = icmp eq i64 %i.cw, 0
  br i1 %.not263, label %._crit_edge, label %.lr.ph, !llvm.loop !190

._crit_edge:                                      ; preds = %streamIteratorGetField.exit, %createObjectFromStreamID.exit287
  store i64 -1, ptr %i.e, align 8, !tbaa !13
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.cc) #18
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.cf) #18
  %i.dq = getelementptr inbounds nuw i8, ptr %.0236348, i64 16 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !81 ; 2 uses
  %.not264 = icmp eq ptr %i.dr, %8
  br i1 %.not264, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  %i.ds = load i64, ptr %i.cg, align 8, !tbaa !50
  %i.dt = call i64 @llvm.bswap.i64(i64 %i.ds)
  %i.du = getelementptr inbounds nuw i8, ptr %.0236348, i64 40
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !49
  %i.dw = call i64 @llvm.bswap.i64(i64 %i.dv)
  store i64 %i.dt, ptr %i.h, align 16
  store i64 %i.dw, ptr %.sroa.4.0..sroa_idx.i, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !79
  %i.dz = call i32 @raxRemove(ptr noundef %i.dy, ptr noundef nonnull %i.h, i64 noundef 16, ptr noundef null) #18 ; 0 uses
  store ptr %8, ptr %i.dq, align 8, !tbaa !81
  %i.ea = load ptr, ptr %i.bl, align 8, !tbaa !79
  %i.eb = call i32 @raxInsert(ptr noundef %i.ea, ptr noundef nonnull %i.h, i64 noundef 16, ptr noundef nonnull %.0236348, ptr noundef null) #18 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge
  %i.ec = load i64, ptr %i.ce, align 8, !tbaa !68
  %i.ed = add i64 %i.ec, 1                        ; 2 uses
  store i64 %i.ed, ptr %i.ce, align 8, !tbaa !68
  %i.ee = getelementptr inbounds nuw i8, ptr %.0236348, i64 48 ; 6 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !71 ; 4 uses
  %.not.i.i = icmp eq ptr %i.ef, null
  %i.eg = load ptr, ptr %i.bz, align 8, !tbaa !72 ; 4 uses
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 56
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !72
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  store ptr %i.eg, ptr %i.bd, align 8, !tbaa !42
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not13.i.i = icmp eq ptr %i.eg, null
  br i1 %.not13.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 48
  store ptr %i.ef, ptr %i.ei, align 8, !tbaa !71
  br label %pelListUnlink.exit.i

bb.ag:                                            ; preds = %bb.ae
  store ptr %i.ef, ptr %i.bc, align 8, !tbaa !44
  br label %pelListUnlink.exit.i

pelListUnlink.exit.i:                             ; preds = %bb.ag, %bb.af
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false)
  store i64 %i.q, ptr %.0236348, align 8, !tbaa !64
  %i.ej = load ptr, ptr %i.bd, align 8, !tbaa !42 ; 4 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %pelListUnlink.exit.i
  store ptr %.0236348, ptr %i.bc, align 8, !tbaa !44
  store ptr %.0236348, ptr %i.bd, align 8, !tbaa !42
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ee, i8 0, i64 16, i1 false)
  br label %pelListUpdate.exit

bb.ai:                                            ; preds = %pelListUnlink.exit.i
  %i.el = load ptr, ptr %i.bc, align 8, !tbaa !44 ; 4 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !64
  %.not.i5.i = icmp slt i64 %i.q, %i.em
  br i1 %.not.i5.i, label %bb.aj, label %pelListInsertAtTail.exit.i.i

pelListInsertAtTail.exit.i.i:                     ; preds = %bb.ai
  store ptr %i.el, ptr %i.ee, align 8, !tbaa !71
  store ptr null, ptr %i.bz, align 8, !tbaa !72
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 56
  store ptr %.0236348, ptr %i.en, align 8, !tbaa !72
  store ptr %.0236348, ptr %i.bc, align 8, !tbaa !44
  br label %pelListUpdate.exit

bb.aj:                                            ; preds = %bb.ai
  %i.eo = load i64, ptr %i.ej, align 8, !tbaa !64
  %i.ep = icmp slt i64 %i.q, %i.eo
  br i1 %i.ep, label %bb.ak, label %.preheader.i.i

bb.ak:                                            ; preds = %bb.aj
  store ptr %i.ej, ptr %i.bz, align 8, !tbaa !72
  store ptr null, ptr %i.ee, align 8, !tbaa !71
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 48
  store ptr %.0236348, ptr %i.eq, align 8, !tbaa !71
  store ptr %.0236348, ptr %i.bd, align 8, !tbaa !42
  br label %pelListUpdate.exit

.preheader.i.i:                                   ; preds = %bb.aj, %bb.al
  %.038.i.i = phi ptr [ %i.eu, %bb.al ], [ %i.el, %bb.aj ] ; 3 uses
  %i.er = load i64, ptr %.038.i.i, align 8, !tbaa !64
  %i.es = icmp sgt i64 %i.er, %i.q
  br i1 %i.es, label %bb.al, label %.critedge.i.i

bb.al:                                            ; preds = %.preheader.i.i
  %i.et = getelementptr inbounds nuw i8, ptr %.038.i.i, i64 48
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !71 ; 2 uses
  %.not36.i.i = icmp eq ptr %i.eu, null
  br i1 %.not36.i.i, label %.critedge.i.i, label %.preheader.i.i, !llvm.loop !73

.critedge.i.i:                                    ; preds = %bb.al, %.preheader.i.i
  %.0.lcssa.i.i = phi ptr [ null, %bb.al ], [ %.038.i.i, %.preheader.i.i ] ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i, i64 56 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !72 ; 3 uses
  store ptr %i.ew, ptr %i.bz, align 8, !tbaa !72
  store ptr %.0.lcssa.i.i, ptr %i.ee, align 8, !tbaa !71
  %.not37.i.i = icmp eq ptr %i.ew, null
  br i1 %.not37.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.critedge.i.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 48
  store ptr %.0236348, ptr %i.ex, align 8, !tbaa !71
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.critedge.i.i
  store ptr %.0236348, ptr %i.ev, align 8, !tbaa !72
  br label %pelListUpdate.exit

pelListUpdate.exit:                               ; preds = %bb.ah, %pelListInsertAtTail.exit.i.i, %bb.ak, %bb.an
  store i64 %i.q, ptr %i.bm, align 8, !tbaa !191
  br i1 %i.r, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %pelListUpdate.exit
  %i.ey = call ptr @createStringObjectFromLongLong(i64 noundef %i.ed) #18 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.ez = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 544), align 8, !tbaa !192
  store ptr %i.ez, ptr %i.d, align 16, !tbaa !144
  %i.fa = load <2 x ptr>, ptr %10, align 8, !tbaa !144
  store <2 x ptr> %i.fa, ptr %i.bn, align 8, !tbaa !144
  store ptr %.0223, ptr %i.bo, align 8, !tbaa !144
  %i.fb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 896), align 8, !tbaa !144
  store ptr %i.fb, ptr %i.bp, align 16, !tbaa !144
  store ptr %i.ct, ptr %i.bq, align 8, !tbaa !144
  %i.fc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 640), align 8, !tbaa !193
  store ptr %i.fc, ptr %i.br, align 16, !tbaa !144
  store ptr %.0224, ptr %i.bs, align 8, !tbaa !144
  %i.fd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 664), align 8, !tbaa !194
  store ptr %i.fd, ptr %i.bt, align 16, !tbaa !144
  store ptr %i.ey, ptr %i.bu, align 8, !tbaa !144
  %i.fe = load <2 x ptr>, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 672), align 8, !tbaa !144
  store <2 x ptr> %i.fe, ptr %i.bv, align 16, !tbaa !144
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 696), align 8, !tbaa !195
  store ptr %i.ff, ptr %i.bw, align 16, !tbaa !144
  store ptr %.0225, ptr %i.bx, align 8, !tbaa !144
  call void @alsoPropagate(i32 noundef %i.p, ptr noundef nonnull %i.d, i32 noundef 14, i32 noundef 3) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @decrRefCount(ptr noundef %i.ey) #18
  br i1 %.not, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fg = load i64, ptr %11, align 8, !tbaa !13
  %i.fh = add i64 %i.fg, 1
  store i64 %i.fh, ptr %11, align 8, !tbaa !13
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %pelListUpdate.exit
  call void @decrRefCount(ptr noundef %i.ct) #18
  %i.fi = add i64 %.0217351, 1                    ; 3 uses
  br i1 %.not265, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fj = add i64 %.0230350, 1                    ; 2 uses
  %.not266 = icmp ult i64 %i.fj, %4
  br i1 %.not266, label %.thread, label %.thread329

.thread329:                                       ; preds = %bb.ar
  call void @raxStop(ptr noundef nonnull %i.by) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  br label %.thread324

.thread:                                          ; preds = %bb.aq, %bb.ar, %bb.r
  %.3233 = phi i64 [ %.0230350, %bb.r ], [ %.0230350, %bb.aq ], [ %i.fj, %bb.ar ]
  %.1218 = phi i64 [ %.0217351, %bb.r ], [ %i.fi, %bb.aq ], [ %i.fi, %bb.ar ] ; 2 uses
  call void @raxStop(ptr noundef nonnull %i.by) #18
  %i.fk = icmp eq ptr %.0236348, %15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #18
  %.not261406 = icmp eq ptr %i.ca, null
  %.not261 = select i1 %i.fk, i1 true, i1 %.not261406
  br i1 %.not261, label %.thread324, label %bb.q

.thread324:                                       ; preds = %.thread, %bb.q, %bb.p, %.thread329, %bb.o
  %.5 = phi i64 [ 0, %bb.o ], [ %i.fi, %.thread329 ], [ 0, %bb.p ], [ %.1218, %.thread ], [ %.0217351, %bb.q ] ; 5 uses
  %.0216 = phi ptr [ null, %bb.o ], [ %i.bb, %.thread329 ], [ %i.bb, %bb.p ], [ %i.bb, %bb.q ], [ %i.bb, %.thread ] ; 4 uses
  %i.fl = and i32 %9, 4
  %.not267 = icmp ne i32 %i.fl, 0
  %or.cond280.not = and i1 %i.az, %.not267
  br i1 %or.cond280.not, label %bb.as, label %bb.av

bb.as:                                            ; preds = %.thread324
  br i1 %or.cond, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  call void @decrRefCount(ptr noundef %.0224) #18
  call void @decrRefCount(ptr noundef %.0223) #18
  call void @decrRefCount(ptr noundef %.0225) #18
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fm = call i64 @streamReplyWithRangeFromConsumerPEL(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %7, ptr noundef %8)
  br label %bb.do

bb.av:                                            ; preds = %.thread324
  %i.fn = and i32 %9, 8
  %.not268 = icmp ne i32 %i.fn, 0
  %or.cond282.not = and i1 %i.az, %.not268
  br i1 %or.cond282.not, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not269 = icmp ne i64 %4, 0                    ; 2 uses
  %i.fo = icmp eq i64 %4, %.5
  %or.cond283 = select i1 %.not269, i1 %i.fo, i1 false
  br i1 %or.cond283, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.not278 = icmp eq ptr %.0216, null
  br i1 %.not278, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @setDeferredArrayLen(ptr noundef %0, ptr noundef nonnull %.0216, i64 noundef %.5) #18
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  br i1 %or.cond, label %bb.ba, label %bb.do

bb.ba:                                            ; preds = %bb.az
  call void @decrRefCount(ptr noundef %.0224) #18
  call void @decrRefCount(ptr noundef %.0223) #18
  call void @decrRefCount(ptr noundef %.0225) #18
  br label %bb.do

bb.bb:                                            ; preds = %bb.aw
  %i.fp = and i32 %9, 2
  %i.fq = icmp ne i32 %i.fp, 0
  %i.fr = icmp ne ptr %.0216, null
  %or.cond9 = select i1 %i.fq, i1 true, i1 %i.fr
  br i1 %or.cond9, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fs = call ptr @addReplyDeferredLen(ptr noundef %0) #18
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.1 = phi ptr [ %.0216, %bb.bb ], [ %i.fs, %bb.bc ] ; 2 uses
  call void @streamIteratorStart(ptr noundef nonnull %12, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %5)
  %i.ft = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ga = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ge = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %12, i64 648 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 616 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 3 uses
  %.phi.trans.insert.i299 = getelementptr inbounds nuw i8, ptr %12, i64 632 ; 6 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %12, i64 669
  %i.gk = icmp eq ptr %7, null
  %i.gl = trunc i32 %9 to i1
  %or.cond11 = or i1 %i.gk, %i.gl
  %.sroa.4.0..sroa_idx.i302 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.gm = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 6 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 5 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.gs = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gv = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.gx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.gz = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ha = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.hc = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %. = select i1 %i.ba, i64 4, i64 2
  br label %bb.be

bb.be:                                            ; preds = %bb.dg, %bb.bd
  %.0220 = phi i32 [ 0, %bb.bd ], [ %.1221, %bb.dg ] ; 4 uses
  %.6 = phi i64 [ %.5, %bb.bd ], [ %i.ml, %bb.dg ] ; 2 uses
  %i.he = call i32 @streamIteratorGetID(ptr noundef nonnull %12, ptr noundef nonnull %13, ptr noundef nonnull %i.e)
  %.not270 = icmp eq i32 %i.he, 0
  br i1 %.not270, label %bb.dh, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.az, label %bb.bg, label %streamCompareID.exit

bb.bg:                                            ; preds = %bb.bf
  %i.hf = load i64, ptr %13, align 8, !tbaa !50   ; 4 uses
  %i.hg = load i64, ptr %7, align 8, !tbaa !50    ; 7 uses
  %i.hh = icmp ugt i64 %i.hf, %i.hg
  br i1 %i.hh, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hi = icmp ult i64 %i.hf, %i.hg
  br i1 %i.hi, label %streamCompareID.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hj = load i64, ptr %i.ft, align 8, !tbaa !49
  %i.hk = load i64, ptr %i.fu, align 8, !tbaa !49
  %i.hl = icmp ugt i64 %i.hj, %i.hk
  br i1 %i.hl, label %bb.bj, label %streamCompareID.exit

bb.bj:                                            ; preds = %bb.bi, %bb.bg
  %i.hm = load i64, ptr %i.fv, align 8, !tbaa !62 ; 2 uses
  %.not271 = icmp eq i64 %i.hm, -1
  br i1 %.not271, label %streamRangeHasTombstones.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hn = load i64, ptr %i.fw, align 8, !tbaa !50 ; 2 uses
  %i.ho = icmp ugt i64 %i.hg, %i.hn
  br i1 %i.ho, label %streamCompareID.exit291.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.hp = icmp ult i64 %i.hg, %i.hn
  br i1 %i.hp, label %streamRangeHasTombstones.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hq = load i64, ptr %i.fu, align 8, !tbaa !49
  %i.hr = load i64, ptr %i.fx, align 8, !tbaa !49
  %.not341 = icmp ult i64 %i.hq, %i.hr
  br i1 %.not341, label %streamRangeHasTombstones.exit, label %streamCompareID.exit291.thread

streamCompareID.exit291.thread:                   ; preds = %bb.bk, %bb.bm
  %i.hs = load i64, ptr %i.fy, align 8, !tbaa !48
  %.not.i292 = icmp eq i64 %i.hs, 0
  br i1 %.not.i292, label %bb.br, label %bb.bn

bb.bn:                                            ; preds = %streamCompareID.exit291.thread
  %i.ht = load i64, ptr %i.fz, align 8, !tbaa !50 ; 3 uses
  %.not.i.i293 = icmp eq i64 %i.ht, 0
  br i1 %.not.i.i293, label %streamIDEqZero.exit.i, label %bb.bo

streamIDEqZero.exit.i:                            ; preds = %bb.bn
  %i.hu = load i64, ptr %i.ga, align 8, !tbaa !49
  %.not21.i = icmp eq i64 %i.hu, 0
  br i1 %.not21.i, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %streamIDEqZero.exit.i, %bb.bn
  %.sroa.517.0.copyload.i = load i64, ptr %i.fu, align 8, !tbaa !13
  %i.hv = icmp ugt i64 %i.hg, %i.ht
  br i1 %i.hv, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hw = icmp ult i64 %i.hg, %i.ht
  br i1 %i.hw, label %streamRangeHasTombstones.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hx = load i64, ptr %i.ga, align 8, !tbaa !49
  %i.hy = icmp ugt i64 %.sroa.517.0.copyload.i, %i.hx
  br i1 %i.hy, label %bb.br, label %streamRangeHasTombstones.exit

bb.br:                                            ; preds = %bb.bo, %streamCompareID.exit291.thread, %streamIDEqZero.exit.i, %bb.bq
  %i.hz = add nuw nsw i64 %i.hm, 1
  br label %.sink.split

streamRangeHasTombstones.exit:                    ; preds = %bb.bq, %bb.bp, %bb.bm, %bb.bl, %bb.bj
  %i.ia = load i64, ptr %i.gb, align 8, !tbaa !61
  %.not273 = icmp eq i64 %i.ia, 0
  br i1 %.not273, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %streamRangeHasTombstones.exit
  %i.ib = call i64 @streamEstimateDistanceFromFirstEverEntry(ptr noundef nonnull %1, ptr noundef nonnull %13)
  br label %.sink.split

end_hunk_1
begin_hunk_2_@xreadCommand:bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 80
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !31 ; 2 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %streamLookupCG.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store ptr null, ptr %i.d, align 8, !tbaa !80
  %i.el = getelementptr i8, ptr %.pre666, i64 -1
  %.val.i.i = load i8, ptr %i.el, align 1, !tbaa !69 ; 2 uses
  %i.em = and i8 %.val.i.i, 7
  switch i8 %i.em, label %streamLookupCG.exit [
    i8 0, label %bb.ao
    i8 1, label %bb.ap
    i8 2, label %bb.aq
    i8 3, label %bb.ar
    i8 4, label %bb.as
  ]

bb.ao:                                            ; preds = %bb.an
  %i.en = lshr i8 %.val.i.i, 3
  %i.eo = zext nneg i8 %i.en to i64
  br label %streamLookupCG.exit

bb.ap:                                            ; preds = %bb.an
  %i.ep = getelementptr inbounds i8, ptr %.pre666, i64 -3
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !69
  %i.er = zext i8 %i.eq to i64
  br label %streamLookupCG.exit

bb.aq:                                            ; preds = %bb.an
  %i.es = getelementptr inbounds i8, ptr %.pre666, i64 -5
  %i.et = load i16, ptr %i.es, align 1, !tbaa !77
  %i.eu = zext i16 %i.et to i64
  br label %streamLookupCG.exit

bb.ar:                                            ; preds = %bb.an
  %i.ev = getelementptr inbounds i8, ptr %.pre666, i64 -9
  %i.ew = load i32, ptr %i.ev, align 1, !tbaa !9
  %i.ex = zext i32 %i.ew to i64
  br label %streamLookupCG.exit

bb.as:                                            ; preds = %bb.an
  %i.ey = getelementptr inbounds i8, ptr %.pre666, i64 -17
  %i.ez = load i64, ptr %i.ey, align 1, !tbaa !13
  br label %streamLookupCG.exit

streamLookupCG.exit:                              ; preds = %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as
  %.0.i.i = phi i64 [ %i.ez, %bb.as ], [ %i.eo, %bb.ao ], [ %i.er, %bb.ap ], [ %i.eu, %bb.aq ], [ %i.ex, %bb.ar ], [ 0, %bb.an ]
  %i.fa = call i32 @raxFind(ptr noundef nonnull %i.ej, ptr noundef nonnull %.pre666, i64 noundef %.0.i.i, ptr noundef nonnull %i.d) #18 ; 0 uses
  %i.fb = load ptr, ptr %i.d, align 8, !tbaa !80  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  %i.fc = icmp eq ptr %i.fb, null
  br i1 %i.fc, label %streamLookupCG.exit.streamLookupCG.exit.thread_crit_edge, label %bb.at

streamLookupCG.exit.streamLookupCG.exit.thread_crit_edge: ; preds = %streamLookupCG.exit
  %.pre = load ptr, ptr %i.dd, align 8, !tbaa !46
  br label %streamLookupCG.exit.thread

streamLookupCG.exit.thread:                       ; preds = %bb.am, %bb.al, %streamLookupCG.exit.streamLookupCG.exit.thread_crit_edge
  %i.fd = phi ptr [ %.pre, %streamLookupCG.exit.streamLookupCG.exit.thread_crit_edge ], [ %.pre666, %bb.al ], [ %.pre666, %bb.am ]
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !46
  call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.44, ptr noundef %i.ff, ptr noundef %i.fd) #18
  br label %streamDecrID.exit.thread467

bb.at:                                            ; preds = %streamLookupCG.exit
  %i.fg = sext i32 %i.dx to i64
  %i.fh = getelementptr inbounds [8 x i8], ptr %.0323, i64 %i.fg
  store ptr %i.fb, ptr %i.fh, align 8, !tbaa !234
  br label %sub_0

sub_0:                                            ; preds = %bb.at, %bb.ak
  %i.fi = load ptr, ptr %i.i, align 8, !tbaa !204
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %indvars.iv
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !144 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !46 ; 4 uses
  %i.fn = load i8, ptr %i.fm, align 1
  switch i8 %i.fn, label %.tail524.thread [
    i8 36, label %.tail
    i8 43, label %.tail520
    i8 62, label %.tail524
  ]

.tail:                                            ; preds = %sub_0
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fp = load i8, ptr %i.fo, align 1
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %bb.au, label %.tail524.thread

bb.au:                                            ; preds = %.tail
  br i1 %i.ac, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.45) #18
  br label %streamDecrID.exit.thread467

bb.aw:                                            ; preds = %bb.au
  %.not372 = icmp eq ptr %i.ed, null
  br i1 %.not372, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !46
  %i.ft = sext i32 %i.dx to i64
  %i.fu = getelementptr inbounds [16 x i8], ptr %.0309, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fu, ptr noundef nonnull align 8 dereferenceable(16) %i.fv, i64 16, i1 false), !tbaa.struct !51
  br label %select.unfold

bb.ay:                                            ; preds = %bb.aw
  %i.fw = sext i32 %i.dx to i64
  %i.fx = getelementptr inbounds [16 x i8], ptr %.0309, i64 %i.fw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, i8 0, i64 16, i1 false)
  br label %select.unfold

.tail520:                                         ; preds = %sub_0
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.fz = load i8, ptr %i.fy, align 1
  %i.ga = icmp eq i8 %i.fz, 0
  br i1 %i.ga, label %bb.az, label %.tail524.thread

bb.az:                                            ; preds = %.tail520
  br i1 %i.ac, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.47) #18
  br label %streamDecrID.exit.thread467

bb.bb:                                            ; preds = %bb.az
  %.not370 = icmp eq ptr %i.ed, null
  br i1 %.not370, label %bb.bi, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !46 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !48
  %.not371 = icmp eq i64 %i.ge, 0
  br i1 %.not371, label %bb.bi, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gf = sext i32 %i.dx to i64
  %i.gg = getelementptr inbounds [16 x i8], ptr %.0309, i64 %i.gf ; 5 uses
  call void @streamLastValidID(ptr noundef nonnull %i.gc, ptr noundef %i.gg)
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 3 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !49 ; 2 uses
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd
  %i.gk = load i64, ptr %i.gg, align 8, !tbaa !50 ; 2 uses
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gg, i8 -1, i64 16, i1 false)
  br label %select.unfold

bb.bg:                                            ; preds = %bb.be
  %i.gm = add i64 %i.gk, -1
  store i64 %i.gm, ptr %i.gg, align 8, !tbaa !50
  store i64 -1, ptr %i.gh, align 8, !tbaa !49
  br label %select.unfold

bb.bh:                                            ; preds = %bb.bd
  %i.gn = add i64 %i.gi, -1
  store i64 %i.gn, ptr %i.gh, align 8, !tbaa !49
  br label %select.unfold

bb.bi:                                            ; preds = %bb.bc, %bb.bb
  %i.go = sext i32 %i.dx to i64
  %i.gp = getelementptr inbounds [16 x i8], ptr %.0309, i64 %i.go
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gp, i8 0, i64 16, i1 false)
  br label %select.unfold

.tail524:                                         ; preds = %sub_0
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fm, i64 1
  %i.gr = load i8, ptr %i.gq, align 1
  %i.gs = icmp eq i8 %i.gr, 0
  br i1 %i.gs, label %bb.bj, label %.tail524.thread

bb.bj:                                            ; preds = %.tail524
  br i1 %i.ac, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.49) #18
  br label %streamDecrID.exit.thread467

bb.bl:                                            ; preds = %bb.bj
  %i.gt = sext i32 %i.dx to i64
  %i.gu = getelementptr inbounds [16 x i8], ptr %.0309, i64 %i.gt
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gu, i8 -1, i64 16, i1 false)
  br label %select.unfold

.tail524.thread:                                  ; preds = %sub_0, %.tail520, %.tail, %.tail524
  %i.gv = sext i32 %i.dx to i64
  %i.gw = getelementptr inbounds [16 x i8], ptr %.0309, i64 %i.gv
  %i.gx = call range(i32 -1, 1) i32 @streamGenericParseIDOrReply(ptr noundef nonnull %0, ptr noundef nonnull readonly %i.fk, ptr noundef %i.gw, i64 noundef 0, i32 noundef 1, ptr noundef null)
  %.not369 = icmp eq i32 %i.gx, 0
  br i1 %.not369, label %select.unfold, label %streamDecrID.exit.thread467

select.unfold:                                    ; preds = %.tail524.thread, %bb.bi, %bb.ax, %bb.bl, %bb.ay, %bb.bf, %bb.bg, %bb.bh
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.gy = load i32, ptr %i.ae, align 8, !tbaa !202
  %i.gz = sext i32 %i.gy to i64
  %i.ha = icmp slt i64 %indvars.iv.next, %i.gz
  br i1 %i.ha, label %bb.aj, label %streamDecrID.exit.preheader, !llvm.loop !235

streamDecrID.exit._crit_edge:                     ; preds = %streamDecrID.exit
  %.not373 = icmp eq i64 %.2344, 0
  br i1 %.not373, label %streamDecrID.exit._crit_edge.thread, label %bb.de

bb.bm:                                            ; preds = %.lr.ph604, %streamDecrID.exit
  %indvars.iv658.a = phi i64 [ 0, %.lr.ph604 ], [ %indvars.iv.next659.a, %streamDecrID.exit ] ; 7 uses
  %.0333602 = phi i64 [ 9223372036854775807, %.lr.ph604 ], [ %.5, %streamDecrID.exit ] ; 7 uses
  %.0338601 = phi ptr [ null, %.lr.ph604 ], [ %.3341, %streamDecrID.exit ] ; 4 uses
  %.0342600 = phi i64 [ 0, %.lr.ph604 ], [ %.2344, %streamDecrID.exit ] ; 5 uses
  %i.hb = load ptr, ptr %i.dh, align 8, !tbaa !174
  %i.hc = load ptr, ptr %i.i, align 8, !tbaa !204
  %i.hd = add nsw i64 %indvars.iv658.a, %i.dv     ; 8 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.hd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !144
  %i.hg = call ptr @lookupKeyRead(ptr noundef %i.hb, ptr noundef %i.hf) #18 ; 10 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %streamDecrID.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !46 ; 7 uses
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %.0309, i64 %indvars.iv658.a ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  %i.hl = load ptr, ptr %i.i, align 8, !tbaa !204
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hl, i64 %i.hd
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !144 ; 2 uses
  store ptr %i.hn, ptr %4, align 8, !tbaa !197
  store ptr %.0324590, ptr %i.di, align 8, !tbaa !199
  br i1 %.not379, label %bb.ck, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ho = load i64, ptr %i.e, align 8, !tbaa !21
  %.not381 = icmp eq i64 %i.ho, -1
  br i1 %.not381, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.0323, i64 %indvars.iv658.a
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !234
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 32
  %.0310596 = load ptr, ptr %i.hr, align 8, !tbaa !166 ; 2 uses
  %.not382597 = icmp eq ptr %.0310596, null
  br i1 %.not382597, label %.loopexit, label %.lr.ph599

.lr.ph599:                                        ; preds = %bb.bp, %bb.bs
  %.0310598 = phi ptr [ %.0310, %bb.bs ], [ %.0310596, %bb.bp ] ; 5 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.0310598, i64 32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @streamIteratorStart(ptr noundef nonnull %1, ptr noundef %i.hj, ptr noundef nonnull readonly %i.hs, ptr noundef nonnull readonly %i.hs, i32 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  %i.ht = call i32 @streamIteratorGetID(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull %i.c)
  call void @raxStop(ptr noundef nonnull %i.dj) #18
  %.not.i = icmp eq i32 %i.ht, 0
  br i1 %.not.i, label %bb.bs, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph599
  %i.hu = load i64, ptr %i.hs, align 8, !tbaa !50
  %i.hv = load i64, ptr %2, align 8, !tbaa !50
  %or.cond.not.i = icmp eq i64 %i.hu, %i.hv
  br i1 %or.cond.not.i, label %bb.br, label %streamCompareID.exit.thread.i

bb.br:                                            ; preds = %bb.bq
  %i.hw = getelementptr inbounds nuw i8, ptr %.0310598, i64 40
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !49
  %i.hy = load i64, ptr %i.dk, align 8, !tbaa !49
  %or.cond.not7.i = icmp eq i64 %i.hx, %i.hy
  br i1 %or.cond.not7.i, label %bb.bt, label %streamCompareID.exit.thread.i, !prof !169

streamCompareID.exit.thread.i:                    ; preds = %bb.br, %bb.bq
  call void @_serverAssert(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.1, i32 noundef 1585) #18
  call void @abort() #19
  unreachable

bb.bs:                                            ; preds = %.lr.ph599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.hz = getelementptr inbounds nuw i8, ptr %.0310598, i64 56
  %.0310 = load ptr, ptr %i.hz, align 8, !tbaa !166 ; 2 uses
  %.not382 = icmp eq ptr %.0310, null
  br i1 %.not382, label %.loopexit, label %.lr.ph599, !llvm.loop !236

bb.bt:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  %i.ia = load i64, ptr %.0310598, align 8, !tbaa !64
  %spec.select = call i64 @llvm.smin.i64(i64 %i.ia, i64 %.0333602)
  %i.ib = call i64 @commandTimeSnapshot() #18
  %i.ic = load i64, ptr %.0310598, align 8, !tbaa !64
  %i.id = sub nsw i64 %i.ib, %i.ic
  %i.ie = load i64, ptr %i.e, align 8, !tbaa !21
  %.not384 = icmp uge i64 %i.id, %i.ie
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bs, %bb.bp, %bb.bt, %bb.bo
  %.3336 = phi i64 [ %.0333602, %bb.bo ], [ %spec.select, %bb.bt ], [ %.0333602, %bb.bp ], [ %.0333602, %bb.bs ] ; 3 uses
  %.2321 = phi i1 [ false, %bb.bo ], [ %.not384, %bb.bt ], [ false, %bb.bp ], [ false, %bb.bs ]
  %i.if = load i64, ptr %i.hk, align 8, !tbaa !50
  %.not385 = icmp eq i64 %i.if, -1
  br i1 %.not385, label %bb.bu, label %bb.ca

bb.bu:                                            ; preds = %.loopexit
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !49
  %.not386 = icmp eq i64 %i.ih, -1
  br i1 %.not386, label %bb.bv, label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !48
  %.not387 = icmp eq i64 %i.ij, 0
  br i1 %.not387, label %bb.ca, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.0323, i64 %indvars.iv658.a
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !234 ; 3 uses
  call void @streamLastValidID(ptr noundef nonnull %i.hj, ptr noundef nonnull %5)
  %i.im = load i64, ptr %5, align 8, !tbaa !50    ; 2 uses
  %i.in = load i64, ptr %i.il, align 8, !tbaa !50 ; 2 uses
  %i.io = icmp ugt i64 %i.im, %i.in
  br i1 %i.io, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ip = icmp ult i64 %i.im, %i.in
  br i1 %i.ip, label %streamCompareID.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iq = load i64, ptr %i.dl, align 8, !tbaa !49
  %i.ir = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !49
  %i.it = icmp ugt i64 %i.iq, %i.is
  br i1 %i.it, label %bb.bz, label %streamCompareID.exit

bb.bz:                                            ; preds = %bb.by, %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %i.il, i64 16, i1 false), !tbaa.struct !51
  br label %streamCompareID.exit

streamCompareID.exit:                             ; preds = %bb.by, %bb.bx, %bb.bz
  %.0315 = phi i32 [ 1, %bb.bz ], [ 0, %bb.bx ], [ 0, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.ca

bb.ca:                                            ; preds = %.loopexit, %bb.bu, %bb.bv, %streamCompareID.exit
  %.1316 = phi i32 [ 0, %bb.bv ], [ %.0315, %streamCompareID.exit ], [ 1, %bb.bu ], [ 1, %.loopexit ] ; 3 uses
  %i.iu = phi i1 [ true, %bb.bv ], [ true, %streamCompareID.exit ], [ false, %bb.bu ], [ false, %.loopexit ]
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.0323, i64 %indvars.iv658.a ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !234 ; 2 uses
  %i.ix = load ptr, ptr %i.dm, align 8, !tbaa !46 ; 6 uses
  %i.iy = icmp eq ptr %i.iw, null
  br i1 %i.iy, label %streamLookupConsumer.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store ptr null, ptr %i.b, align 8, !tbaa !80
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iw, i64 48
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !45
  %i.jb = getelementptr i8, ptr %i.ix, i64 -1
  %.val.i.i405 = load i8, ptr %i.jb, align 1, !tbaa !69 ; 2 uses
  %i.jc = and i8 %.val.i.i405, 7
  switch i8 %i.jc, label %streamLookupConsumer.exit [
    i8 0, label %bb.cc
    i8 1, label %bb.cd
    i8 2, label %bb.ce
    i8 3, label %bb.cf
    i8 4, label %bb.cg
  ]

bb.cc:                                            ; preds = %bb.cb
  %i.jd = lshr i8 %.val.i.i405, 3
  %i.je = zext nneg i8 %i.jd to i64
  br label %streamLookupConsumer.exit

bb.cd:                                            ; preds = %bb.cb
  %i.jf = getelementptr inbounds i8, ptr %i.ix, i64 -3
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !69
  %i.jh = zext i8 %i.jg to i64
  br label %streamLookupConsumer.exit

bb.ce:                                            ; preds = %bb.cb
  %i.ji = getelementptr inbounds i8, ptr %i.ix, i64 -5
  %i.jj = load i16, ptr %i.ji, align 1, !tbaa !77
  %i.jk = zext i16 %i.jj to i64
  br label %streamLookupConsumer.exit

bb.cf:                                            ; preds = %bb.cb
  %i.jl = getelementptr inbounds i8, ptr %i.ix, i64 -9
  %i.jm = load i32, ptr %i.jl, align 1, !tbaa !9
  %i.jn = zext i32 %i.jm to i64
  br label %streamLookupConsumer.exit

bb.cg:                                            ; preds = %bb.cb
  %i.jo = getelementptr inbounds i8, ptr %i.ix, i64 -17
  %i.jp = load i64, ptr %i.jo, align 1, !tbaa !13
  br label %streamLookupConsumer.exit

streamLookupConsumer.exit:                        ; preds = %bb.cb, %bb.cc, %bb.cd, %bb.ce, %bb.cf, %bb.cg
  %.0.i.i407 = phi i64 [ %i.jp, %bb.cg ], [ %i.je, %bb.cc ], [ %i.jh, %bb.cd ], [ %i.jk, %bb.ce ], [ %i.jn, %bb.cf ], [ 0, %bb.cb ]
  %i.jq = call i32 @raxFind(ptr noundef %i.ja, ptr noundef nonnull %i.ix, i64 noundef %.0.i.i407, ptr noundef nonnull %i.b) #18 ; 0 uses
  %i.jr = load ptr, ptr %i.b, align 8, !tbaa !80  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %streamLookupConsumer.exit.thread, label %bb.co

streamLookupConsumer.exit.thread:                 ; preds = %bb.ca, %streamLookupConsumer.exit
  %i.jt = call i64 @kvobjAllocSize(ptr noundef nonnull %i.hg) #18
  %i.ju = load ptr, ptr %i.iv, align 8, !tbaa !234
  %i.jv = load ptr, ptr %i.dm, align 8, !tbaa !46
  %i.jw = load ptr, ptr %i.i, align 8, !tbaa !204
  %i.jx = getelementptr inbounds [8 x i8], ptr %i.jw, i64 %i.hd
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !144
  %i.jz = load ptr, ptr %i.dh, align 8, !tbaa !174
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 72
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !186
  %i.kc = call ptr @streamCreateConsumer(ptr noundef %i.hj, ptr noundef %i.ju, ptr noundef %i.jv, ptr noundef %i.jy, i32 noundef %i.kb, i32 noundef 0) ; 3 uses
  %i.kd = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !215
  %.not388 = icmp eq i32 %i.kd, 0
  br i1 %.not388, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %streamLookupConsumer.exit.thread
  %i.ke = load ptr, ptr %i.dh, align 8, !tbaa !174
  %i.kf = load ptr, ptr %i.i, align 8, !tbaa !204
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.kf, i64 %i.hd
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !144
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load ptr, ptr %i.ki, align 8, !tbaa !46
  %i.kk = call i32 @getKeySlot(ptr noundef %i.kj) #18
  %i.kl = call i64 @kvobjAllocSize(ptr noundef nonnull %i.hg) #18
  call void @updateSlotAllocSize(ptr noundef %i.ke, i32 noundef %i.kk, ptr noundef nonnull %i.hg, i64 noundef %i.jt, i64 noundef %i.kl) #18
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %streamLookupConsumer.exit.thread
  br i1 %.not389, label %bb.co, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.km = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.ko = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 536), align 8, !tbaa !170
  store ptr %i.ko, ptr %i.a, align 16, !tbaa !144
  %i.kp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @shared, i64 736), align 8, !tbaa !189
  store ptr %i.kp, ptr %i.dn, align 8, !tbaa !144
  store ptr %i.hn, ptr %i.do, align 16, !tbaa !144
  store ptr %.0324590, ptr %i.dp, align 8, !tbaa !144
  %i.kq = call ptr @sdsdup(ptr noundef %i.kn) #18
  %i.kr = call ptr @createObject(i32 noundef 0, ptr noundef %i.kq) #18
  store ptr %i.kr, ptr %i.dq, align 16, !tbaa !144
  %i.ks = load ptr, ptr %i.dh, align 8, !tbaa !174
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ks, i64 72
  %i.ku = load i32, ptr %i.kt, align 8, !tbaa !186
  call void @alsoPropagate(i32 noundef %i.ku, ptr noundef nonnull %i.a, i32 noundef 5, i32 noundef 3) #18
  %i.kv = load ptr, ptr %i.dq, align 16, !tbaa !144
  call void @decrRefCount(ptr noundef %i.kv) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.co

bb.ck:                                            ; preds = %bb.bn
  %i.kw = getelementptr inbounds nuw i8, ptr %i.hj, i64 8
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !48
  %.not380 = icmp eq i64 %i.kx, 0
  br i1 %.not380, label %.thread477.thread.thread, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @streamLastValidID(ptr noundef nonnull %i.hj, ptr noundef nonnull %6)
  %i.ky = load i64, ptr %6, align 8, !tbaa !50    ; 2 uses
  %i.kz = load i64, ptr %i.hk, align 8, !tbaa !50 ; 2 uses
  %i.la = icmp ugt i64 %i.ky, %i.kz
  br i1 %i.la, label %streamCompareID.exit411, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.lb = icmp ult i64 %i.ky, %i.kz
  br i1 %i.lb, label %streamCompareID.exit411, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lc = load i64, ptr %i.dr, align 8, !tbaa !49
  %i.ld = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !49
  %i.lf = icmp ugt i64 %i.lc, %i.le
  %spec.select519 = zext i1 %i.lf to i32
  br label %streamCompareID.exit411

streamCompareID.exit411:                          ; preds = %bb.cn, %bb.cl, %bb.cm
  %i.lg = phi i32 [ 1, %bb.cl ], [ 0, %bb.cm ], [ %spec.select519, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.thread477.thread

bb.co:                                            ; preds = %streamLookupConsumer.exit, %bb.cj, %bb.ci
  %.0311 = phi ptr [ %i.kc, %bb.cj ], [ %i.kc, %bb.ci ], [ %i.jr, %streamLookupConsumer.exit ] ; 4 uses
  %i.lh = call i64 @commandTimeSnapshot() #18
  store i64 %i.lh, ptr %.0311, align 8, !tbaa !237
  %i.li = load ptr, ptr %i.dh, align 8, !tbaa !174
  %i.lj = load ptr, ptr %i.i, align 8, !tbaa !204
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.hd
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !144
  call void @keyModified(ptr noundef %0, ptr noundef %i.li, ptr noundef %i.ll, ptr noundef nonnull %i.hg, i32 noundef 0) #18
  br i1 %i.iu, label %.thread477, label %bb.cp
end_hunk_2
