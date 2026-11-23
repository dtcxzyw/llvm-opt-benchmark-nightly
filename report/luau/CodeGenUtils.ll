Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/CodeGenUtils?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4Luau7CodeGen12callFallbackEP9lua_StateP10lua_TValueS4_i:bb.a
.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.085105 = phi i32 [ %i.ct, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.087104 = phi ptr [ %i.cr, %.lr.ph ], [ %i.cl, %.lr.ph.preheader ] ; 2 uses
  %.088103 = phi ptr [ %i.cs, %.lr.ph ], [ %i.cf, %.lr.ph.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.087104, i64 16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.088103, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.088103, ptr noundef nonnull align 8 dereferenceable(16) %.087104, i64 16, i1 false), !tbaa.struct !28
  %i.ct = add nsw i32 %.085105, -1                ; 3 uses
  %i.cu = icmp ne i32 %i.ct, 0
  %i.cv = icmp ult ptr %i.cr, %i.cg
  %i.cw = select i1 %i.cu, i1 %i.cv, i1 false
  br i1 %i.cw, label %.lr.ph, label %.preheader, !llvm.loop !93

.lr.ph109:                                        ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109
  %.186108 = phi i32 [ %i.de, %.lr.ph109 ], [ %.186108.unr, %.lr.ph109.prol.loopexit ] ; 2 uses
  %.189107 = phi ptr [ %i.df, %.lr.ph109 ], [ %.189107.unr, %.lr.ph109.prol.loopexit ] ; 9 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.189107, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !19
  %i.cy = getelementptr inbounds nuw i8, ptr %.189107, i64 28
  store i32 0, ptr %i.cy, align 4, !tbaa !19
  %i.cz = getelementptr inbounds nuw i8, ptr %.189107, i64 44
  store i32 0, ptr %i.cz, align 4, !tbaa !19
  %i.da = getelementptr inbounds nuw i8, ptr %.189107, i64 60
  store i32 0, ptr %i.da, align 4, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %.189107, i64 76
  store i32 0, ptr %i.db, align 4, !tbaa !19
  %i.dc = getelementptr inbounds nuw i8, ptr %.189107, i64 92
  store i32 0, ptr %i.dc, align 4, !tbaa !19
  %i.dd = getelementptr inbounds nuw i8, ptr %.189107, i64 108
  store i32 0, ptr %i.dd, align 4, !tbaa !19
  %i.de = add nsw i32 %.186108, -8
  %i.df = getelementptr inbounds nuw i8, ptr %.189107, i64 128 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.189107, i64 124
  store i32 0, ptr %i.dg, align 4, !tbaa !19
  %i.dh = icmp sgt i32 %.186108, 8
  br i1 %i.dh, label %.lr.ph109, label %._crit_edge, !llvm.loop !94

._crit_edge:                                      ; preds = %.lr.ph109.prol.loopexit, %.lr.ph109, %.preheader
  %.189.lcssa = phi ptr [ %.088.lcssa, %.preheader ], [ %.lcssa136.unr, %.lr.ph109.prol.loopexit ], [ %i.df, %.lr.ph109 ]
  store ptr %i.cd, ptr %i.e, align 8, !tbaa !38
  %i.di = load ptr, ptr %i.cd, align 8, !tbaa !66
  store ptr %i.di, ptr %i.ao, align 8, !tbaa !36
  %i.dj = icmp eq i32 %3, -1
  br i1 %i.dj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge
  %i.dk = getelementptr inbounds i8, ptr %i.cc, i64 -32
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !41
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.s
  %i.dm = phi ptr [ %i.dl, %bb.s ], [ %.189.lcssa, %._crit_edge ]
  store ptr %i.dm, ptr %i.ap, align 8, !tbaa !37
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q, %bb.o, %bb.p
  %.1 = phi ptr [ %i.d, %bb.o ], [ %i.d, %bb.p ], [ null, %bb.t ], [ inttoptr (i64 1 to ptr), %bb.q ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN4Luau7CodeGen16executeGETGLOBALEP9lua_StatePKjP10lua_TValueS6_(ptr noundef initializes((84, 88)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %1, align 4, !tbaa !21     ; 2 uses
  %i.h = lshr i32 %i.g, 8
  %i.i = and i32 %i.h, 255
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.f, align 4, !tbaa !21
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76   ; 2 uses
  %i.r = lshr i32 %i.g, 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 7
  %i.t = load i8, ptr %i.s, align 1, !tbaa !79
  %i.u = zext i8 %i.t to i32
  %i.v = and i32 %i.r, %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %i.q, ptr %4, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 7, ptr %i.w, align 4, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 %i.v, ptr %i.x, align 4, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.l, ptr %i.y, align 8, !tbaa !20
  call void @_Z13luaV_gettableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %i.o, ptr noundef %i.k)
  %i.z = load i32, ptr %i.x, align 4, !tbaa !80
  %i.aa = shl i32 %i.z, 24
  %i.ab = load i32, ptr %1, align 4, !tbaa !21
  %i.ac = and i32 %i.ab, 16777215
  %i.ad = or disjoint i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %1, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret ptr %i.l
}

declare hidden void @_Z13luaV_gettableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN4Luau7CodeGen16executeSETGLOBALEP9lua_StatePKjP10lua_TValueS6_(ptr noundef initializes((84, 88)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %1, align 4, !tbaa !21     ; 2 uses
  %i.h = lshr i32 %i.g, 8
  %i.i = and i32 %i.h, 255
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.f, align 4, !tbaa !21
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !76   ; 2 uses
  %i.r = lshr i32 %i.g, 24
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 7
  %i.t = load i8, ptr %i.s, align 1, !tbaa !79
  %i.u = zext i8 %i.t to i32
  %i.v = and i32 %i.r, %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  store ptr %i.q, ptr %4, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 7, ptr %i.w, align 4, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 %i.v, ptr %i.x, align 4, !tbaa !80
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.l, ptr %i.y, align 8, !tbaa !20
  call void @_Z13luaV_settableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %i.o, ptr noundef %i.k)
  %i.z = load i32, ptr %i.x, align 4, !tbaa !80
  %i.aa = shl i32 %i.z, 24
  %i.ab = load i32, ptr %1, align 4, !tbaa !21
  %i.ac = and i32 %i.ab, 16777215
  %i.ad = or disjoint i32 %i.ac, %i.aa
  store i32 %i.ad, ptr %1, align 4, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret ptr %i.l
}

declare hidden void @_Z13luaV_settableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN4Luau7CodeGen17executeGETTABLEKSEP9lua_StatePKjP10lua_TValueS6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %1, align 4, !tbaa !21     ; 7 uses
  %i.d = and i32 %i.c, 255
  %i.e = lshr i32 %i.c, 8
  %i.f = and i32 %i.e, 255                        ; 3 uses
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.g ; 7 uses
  %i.i = lshr i32 %i.c, 16
  %i.j = and i32 %i.i, 255
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.k ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !21   ; 2 uses
  %i.o = icmp eq i32 %i.d, 83
  %i.p = and i32 %i.n, 65535
  %i.q = select i1 %i.o, i32 %i.p, i32 %i.n
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.r ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 12 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !19   ; 3 uses
  %i.v = icmp eq i32 %i.u, 7
  br i1 %i.v, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.l, align 8, !tbaa !20   ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !81
  %.not183 = icmp eq ptr %i.y, null
  br i1 %.not183, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.aa = tail call noundef ptr @_Z11luaH_getstrP8LuaTableP7TString(ptr noundef nonnull %i.w, ptr noundef %i.z) ; 3 uses
  %.not184 = icmp eq ptr %i.aa, @luaO_nilobject_
  br i1 %.not184, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !24
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %4 = lshr i64 %i.af, 5
  %5 = trunc i64 %4 to i8
  %6 = getelementptr i8, ptr %1, i64 3
  store i8 %5, ptr %6, align 1, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !28
  br label %bb.ab

bb.f:                                             ; preds = %bb.b
  %i.ag = lshr i32 %i.c, 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 7
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !79
  %i.aj = zext i8 %i.ai to i32
  %i.ak = and i32 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !80
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.m, ptr %i.an, align 8, !tbaa !20
  tail call void @_Z13luaV_gettableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef %0, ptr noundef nonnull %i.l, ptr noundef %i.s, ptr noundef nonnull %i.h)
  %i.ao = load i32, ptr %i.al, align 4, !tbaa !80
  %i.ap = shl i32 %i.ao, 24
  %i.aq = load i32, ptr %1, align 4, !tbaa !21
  %i.ar = and i32 %i.aq, 16777215
  %i.as = or disjoint i32 %i.ar, %i.ap
  store i32 %i.as, ptr %1, align 4, !tbaa !21
  br label %bb.ab

bb.g:                                             ; preds = %bb.a
  %i.at = load i8, ptr @_ZN5FFlag18LuauDirectFieldGetE, align 8, !tbaa !45, !range !46, !noundef !47
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = icmp eq i32 %i.u, 9
  %or.cond = and i1 %i.av, %i.au
  br i1 %or.cond, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !72
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 17488
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !20  ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !97
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !73 ; 4 uses
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %thread-pre-split.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = lshr i32 %i.c, 24
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 7
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !79
  %i.bi = zext i8 %i.bh to i32
  %i.bj = and i32 %i.bf, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !24
  %i.bm = zext nneg i32 %i.bj to i64
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %i.bm ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 28
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = and i32 %i.bp, 15
  %i.br = icmp eq i32 %i.bq, 6
  %.pre = load ptr, ptr %i.s, align 8, !tbaa !20  ; 2 uses
  br i1 %i.br, label %bb.j, label %.critedge, !prof !58

bb.j:                                             ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !20
  %i.bu = icmp eq ptr %i.bt, %.pre
  br i1 %i.bu, label %bb.k, label %.critedge, !prof !58

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !27
  %.not198 = icmp eq i32 %i.bw, 0
  br i1 %.not198, label %.critedge, label %bb.l, !prof !78

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.bn, align 8, !tbaa !20
  %i.by = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  tail call void %i.bx(ptr noundef nonnull %i.by, ptr noundef nonnull %i.h)
  br label %bb.ab

.critedge:                                        ; preds = %bb.j, %bb.i, %bb.k
  %i.bz = tail call noundef ptr @_Z11luaH_getstrP8LuaTableP7TString(ptr noundef nonnull %i.be, ptr noundef %.pre) ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !19
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %.critedge.thread-pre-split_crit_edge, label %bb.m

.critedge.thread-pre-split_crit_edge:             ; preds = %.critedge
  %.pr.pre = load i32, ptr %i.t, align 4, !tbaa !19
  br label %thread-pre-split

bb.m:                                             ; preds = %.critedge
  %i.cd = load ptr, ptr %i.bk, align 8, !tbaa !24
  %i.ce = ptrtoint ptr %i.bz to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %7 = lshr i64 %i.cg, 5
  %8 = trunc i64 %7 to i8
  %9 = getelementptr i8, ptr %1, i64 3
  store i8 %8, ptr %9, align 1, !tbaa !21
  %i.ch = load ptr, ptr %i.bz, align 8, !tbaa !20
  %i.ci = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  tail call void %i.ch(ptr noundef nonnull %i.cj, ptr noundef nonnull %i.h)
  br label %bb.ab

thread-pre-split:                                 ; preds = %.critedge.thread-pre-split_crit_edge, %bb.g
  %i.ck = phi i32 [ %i.u, %bb.g ], [ %.pr.pre, %.critedge.thread-pre-split_crit_edge ]
  %i.cl = icmp eq i32 %i.ck, 9
  br i1 %i.cl, label %thread-pre-split.thread, label %.thread189

thread-pre-split.thread:                          ; preds = %bb.h, %thread-pre-split
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !75 ; 3 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %.thread189, label %bb.n

bb.n:                                             ; preds = %thread-pre-split.thread
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 3
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !82
  %i.cs = and i8 %i.cr, 1
  %.not177 = icmp eq i8 %i.cs, 0
  br i1 %.not177, label %bb.o, label %.thread189

bb.o:                                             ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !72
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1032
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !83
  %i.cx = tail call noundef ptr @_Z10luaT_gettmP8LuaTable3TMSP7TString(ptr noundef nonnull %i.co, i32 noundef 0, ptr noundef %i.cw) ; 4 uses
  %.not178 = icmp eq ptr %i.cx, null
  br i1 %.not178, label %.thread189, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !19
  %i.da = icmp eq i32 %i.cz, 8
  br i1 %i.da, label %bb.q, label %.thread189

bb.q:                                             ; preds = %bb.p
  %i.db = load ptr, ptr %i.cx, align 8, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 3
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !61
  %.not179 = icmp eq i8 %i.dd, 0
  br i1 %.not179, label %.thread189, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !37 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %i.cx, i64 16, i1 false), !tbaa.struct !28
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !28
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dh, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !28
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  store ptr %i.di, ptr %i.de, align 8, !tbaa !37
  %i.dj = lshr i32 %i.c, 24
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !80
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store ptr %i.m, ptr %i.dm, align 8, !tbaa !20
  tail call void @_Z11luaV_callTMP9lua_Stateii(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %i.f)
  %i.dn = load i32, ptr %i.dk, align 4, !tbaa !80
  %i.do = shl i32 %i.dn, 24
  %i.dp = load i32, ptr %1, align 4, !tbaa !21
  %i.dq = and i32 %i.dp, 16777215
  %i.dr = or disjoint i32 %i.dq, %i.do
  store i32 %i.dr, ptr %1, align 4, !tbaa !21
  br label %bb.ab

.thread189:                                       ; preds = %bb.n, %thread-pre-split.thread, %bb.q, %bb.p, %bb.o, %thread-pre-split
  %i.ds = load i32, ptr %i.t, align 4, !tbaa !19
  %i.dt = icmp eq i32 %i.ds, 5
  br i1 %i.dt, label %bb.s, label %.thread192

bb.s:                                             ; preds = %.thread189
  %i.du = load ptr, ptr %i.s, align 8, !tbaa !20  ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !20
  %i.dx = or i8 %i.dw, 32
  %i.dy = sext i8 %i.dx to i32
  %i.dz = add nsw i32 %i.dy, -120                 ; 2 uses
  %i.ea = icmp ult i32 %i.dz, 3
  br i1 %i.ea, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 25
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !20
  %i.ed = icmp eq i8 %i.ec, 0
  br i1 %i.ed, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ee = zext nneg i32 %i.dz to i64
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !99
  %i.eh = fpext float %i.eg to double
  store double %i.eh, ptr %i.h, align 8, !tbaa !20
  %i.ei = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 3, ptr %i.ei, align 4, !tbaa !19
  br label %bb.ab

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !72 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 848
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !73 ; 3 uses
  %i.en = icmp eq ptr %i.em, null
  br i1 %i.en, label %.thread192, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 3
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !82
  %i.eq = and i8 %i.ep, 1
  %.not180 = icmp eq i8 %i.eq, 0
  br i1 %.not180, label %bb.x, label %.thread192

bb.x:                                             ; preds = %bb.w
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 1032
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !83
  %i.et = tail call noundef ptr @_Z10luaT_gettmP8LuaTable3TMSP7TString(ptr noundef nonnull %i.em, i32 noundef 0, ptr noundef %i.es) ; 4 uses
  %.not181 = icmp eq ptr %i.et, null
  br i1 %.not181, label %.thread192, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !19
  %i.ew = icmp eq i32 %i.ev, 8
  br i1 %i.ew, label %bb.z, label %.thread192

bb.z:                                             ; preds = %bb.y
  %i.ex = load ptr, ptr %i.et, align 8, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 3
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !61
  %.not182 = icmp eq i8 %i.ez, 0
  br i1 %.not182, label %.thread192, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !37 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fb, ptr noundef nonnull align 8 dereferenceable(16) %i.et, i64 16, i1 false), !tbaa.struct !28
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fc, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !28
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !28
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 48
  store ptr %i.fe, ptr %i.fa, align 8, !tbaa !37
  %i.ff = lshr i32 %i.c, 24
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !80
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  store ptr %i.m, ptr %i.fi, align 8, !tbaa !20
  tail call void @_Z11luaV_callTMP9lua_Stateii(ptr noundef nonnull %0, i32 noundef 2, i32 noundef %i.f)
  %i.fj = load i32, ptr %i.fg, align 4, !tbaa !80
  %i.fk = shl i32 %i.fj, 24
  %i.fl = load i32, ptr %1, align 4, !tbaa !21
  %i.fm = and i32 %i.fl, 16777215
  %i.fn = or disjoint i32 %i.fm, %i.fk
  store i32 %i.fn, ptr %1, align 4, !tbaa !21
  br label %bb.ab

.thread192:                                       ; preds = %bb.w, %bb.v, %.thread189, %bb.z, %bb.y, %bb.x
  %i.fo = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store ptr %i.m, ptr %i.fp, align 8, !tbaa !20
  tail call void @_Z13luaV_gettableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef %0, ptr noundef nonnull %i.l, ptr noundef %i.s, ptr noundef nonnull %i.h)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.r, %bb.aa, %bb.u, %bb.m, %bb.l, %bb.e, %bb.f, %.thread192
  ret ptr %i.m
}

declare hidden noundef ptr @_Z11luaH_getstrP8LuaTableP7TString(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden noundef ptr @_Z10luaT_gettmP8LuaTable3TMSP7TString(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @_Z11luaV_callTMP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN4Luau7CodeGen17executeSETTABLEKSEP9lua_StatePKjP10lua_TValueS6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %1, align 4, !tbaa !21     ; 5 uses
  %i.d = and i32 %i.c, 255
  %i.e = lshr i32 %i.c, 8
  %i.f = and i32 %i.e, 255
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.g ; 6 uses
  %i.i = lshr i32 %i.c, 16
  %i.j = and i32 %i.i, 255
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.k ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !21   ; 2 uses
  %i.o = icmp eq i32 %i.d, 84
  %i.p = and i32 %i.n, 65535
  %i.q = select i1 %i.o, i32 %i.p, i32 %i.n
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.r ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !19
  switch i32 %i.u, label %.thread [
    i32 7, label %bb.b
    i32 9, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !20   ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 3
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !82
  %i.ab = and i8 %i.aa, 2
  %.not102 = icmp eq i8 %i.ab, 0
  br i1 %.not102, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ad = load i8, ptr %i.ac, align 4, !tbaa !100
  %.not103 = icmp eq i8 %i.ad, 0
  br i1 %.not103, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  store ptr %i.m, ptr %i.af, align 8, !tbaa !20
  %i.ag = load ptr, ptr %i.s, align 8, !tbaa !20
  %i.ah = tail call noundef ptr @_Z11luaH_setstrP9lua_StateP8LuaTableP7TString(ptr noundef %0, ptr noundef nonnull %i.v, ptr noundef %i.ag) ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !24
  %i.ak = ptrtoint ptr %i.ah to i64
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = sub i64 %i.ak, %i.al
  %4 = lshr i64 %i.am, 5
  %5 = trunc i64 %4 to i8
  %6 = getelementptr i8, ptr %1, i64 3
  store i8 %5, ptr %6, align 1, !tbaa !21
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !28
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !19
  %i.ap = icmp sgt i32 %i.ao, 5
  br i1 %i.ap, label %bb.f, label %bb.p

bb.f:                                             ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !20
  %i.as = and i8 %i.ar, 4
  %.not104 = icmp eq i8 %i.as, 0
  br i1 %.not104, label %bb.p, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.h, align 8, !tbaa !20  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !20
  %i.aw = and i8 %i.av, 3
  %.not105 = icmp eq i8 %i.aw, 0
  br i1 %.not105, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_Z17luaC_barriertableP9lua_StateP8LuaTableP8GCObject(ptr noundef nonnull %0, ptr noundef nonnull %i.v, ptr noundef nonnull %i.at)
  br label %bb.p

bb.i:                                             ; preds = %bb.d, %bb.c
  %i.ax = lshr i32 %i.c, 24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 7
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !79
  %i.ba = zext i8 %i.az to i32
  %i.bb = and i32 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !80
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store ptr %i.m, ptr %i.be, align 8, !tbaa !20
  tail call void @_Z13luaV_settableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef %0, ptr noundef nonnull %i.l, ptr noundef %i.s, ptr noundef nonnull %i.h)
  %i.bf = load i32, ptr %i.bc, align 4, !tbaa !80
  %i.bg = shl i32 %i.bf, 24
  %i.bh = load i32, ptr %1, align 4, !tbaa !21
  %i.bi = and i32 %i.bh, 16777215
  %i.bj = or disjoint i32 %i.bi, %i.bg
  store i32 %i.bj, ptr %1, align 4, !tbaa !21
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.bk = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !75 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !82
  %i.bq = and i8 %i.bp, 2
  %.not = icmp eq i8 %i.bq, 0
  br i1 %.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !72
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1040
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !83
  %i.bv = tail call noundef ptr @_Z10luaT_gettmP8LuaTable3TMSP7TString(ptr noundef nonnull %i.bm, i32 noundef 1, ptr noundef %i.bu) ; 4 uses
  %.not100 = icmp eq ptr %i.bv, null
  br i1 %.not100, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !19
  %i.by = icmp eq i32 %i.bx, 8
  br i1 %i.by, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !20
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !61
  %.not101 = icmp eq i8 %i.cb, 0
  br i1 %.not101, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !37 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !28
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !28
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !28
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cg, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !28
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  store ptr %i.ch, ptr %i.cc, align 8, !tbaa !37
  %i.ci = lshr i32 %i.c, 24
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !80
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  store ptr %i.m, ptr %i.cl, align 8, !tbaa !20
  tail call void @_Z11luaV_callTMP9lua_Stateii(ptr noundef nonnull %0, i32 noundef 3, i32 noundef -1)
  %i.cm = load i32, ptr %i.cj, align 4, !tbaa !80
  %i.cn = shl i32 %i.cm, 24
  %i.co = load i32, ptr %1, align 4, !tbaa !21
  %i.cp = and i32 %i.co, 16777215
  %i.cq = or disjoint i32 %i.cp, %i.cn
  store i32 %i.cq, ptr %1, align 4, !tbaa !21
  br label %bb.p

.thread:                                          ; preds = %bb.k, %bb.j, %bb.a, %bb.n, %bb.m, %bb.l
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  store ptr %i.m, ptr %i.cs, align 8, !tbaa !20
  tail call void @_Z13luaV_settableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef %0, ptr noundef nonnull %i.l, ptr noundef %i.s, ptr noundef nonnull %i.h)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  ret ptr %i.m
}

declare hidden noundef ptr @_Z11luaH_setstrP9lua_StateP8LuaTableP7TString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @_Z17luaC_barriertableP9lua_StateP8LuaTableP8GCObject(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN4Luau7CodeGen15executeNAMECALLEP9lua_StatePKjP10lua_TValueS6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %1, align 4, !tbaa !21     ; 5 uses
  %i.d = and i32 %i.c, 255
  %i.e = lshr i32 %i.c, 8
  %i.f = and i32 %i.e, 255
  %i.g = zext nneg i32 %i.f to i64                ; 4 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.g ; 10 uses
  %i.i = lshr i32 %i.c, 16
  %i.j = and i32 %i.i, 255
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.k ; 10 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !21   ; 2 uses
  %i.o = icmp eq i32 %i.d, 85
  %i.p = and i32 %i.n, 65535
  %i.q = select i1 %i.o, i32 %i.p, i32 %i.n
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.r ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !19   ; 2 uses
  switch i32 %i.u, label %bb.e [
    i32 7, label %bb.b
    i32 9, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !28
  %i.w = lshr i32 %i.c, 24
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !80
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.m, ptr %i.z, align 8, !tbaa !20
  tail call void @_Z13luaV_gettableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef %0, ptr noundef nonnull %i.l, ptr noundef %i.s, ptr noundef nonnull %i.h)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !80
  %i.ad = shl i32 %i.ac, 24
  %i.ae = load i32, ptr %1, align 4, !tbaa !21
  %i.af = and i32 %i.ae, 16777215
  %i.ag = or disjoint i32 %i.af, %i.ad
  store i32 %i.ag, ptr %1, align 4, !tbaa !21
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.g ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !19
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !20
  tail call void @_Z16luaG_methoderrorP9lua_StatePK10lua_TValuePK7TString(ptr noundef nonnull %0, ptr noundef nonnull %i.al, ptr noundef %i.am) #8
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.an = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !72
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 808
  %i.as = sext i32 %i.u to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.in = phi ptr [ %i.ao, %bb.d ], [ %i.at, %bb.e ]
  %i.au = load ptr, ptr %.in, align 8, !tbaa !73  ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.thread125, label %bb.g
end_hunk_0
