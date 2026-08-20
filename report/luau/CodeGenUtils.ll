inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4Luau7CodeGen15executeNAMECALLEP9lua_StatePKjP10lua_TValueS6_:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !78
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 808
  %i.as = sext i32 %i.u to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %i.ar, i64 %i.as
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.in = phi ptr [ %i.ao, %bb.d ], [ %i.at, %bb.e ]
  %i.au = load ptr, ptr %.in, align 8, !tbaa !79  ; 4 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %.thread125, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 3 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !96  ; 2 uses
  %i.ay = and i8 %i.ax, 8
  %.not = icmp eq i8 %i.ay, 0
  br i1 %.not, label %bb.h, label %.thread122

bb.h:                                             ; preds = %bb.g
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !78
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1056
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !97
  %i.bd = tail call noundef ptr @_Z10luaT_gettmP8LuaTable3TMSP7TString(ptr noundef nonnull %i.au, i32 noundef 3, ptr noundef %i.bc) ; 2 uses
  %.not118 = icmp eq ptr %i.bd, null
  br i1 %.not118, label %..thread122_crit_edge, label %bb.i

..thread122_crit_edge:                            ; preds = %bb.h
  %.pre = load i8, ptr %i.aw, align 1, !tbaa !96
  br label %.thread122

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !29
  %i.bf = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !101
  br label %bb.r

.thread122:                                       ; preds = %..thread122_crit_edge, %bb.g
  %i.bh = phi i8 [ %.pre, %..thread122_crit_edge ], [ %i.ax, %bb.g ]
  %i.bi = and i8 %i.bh, 1
  %.not119 = icmp eq i8 %i.bi, 0
  br i1 %.not119, label %bb.j, label %.thread125

bb.j:                                             ; preds = %.thread122
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !78
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1032
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !97
  %i.bn = tail call noundef ptr @_Z10luaT_gettmP8LuaTable3TMSP7TString(ptr noundef nonnull %i.au, i32 noundef 0, ptr noundef %i.bm) ; 3 uses
  %.not120 = icmp eq ptr %i.bn, null
  br i1 %.not120, label %.thread125, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !17
  %i.bq = icmp eq i32 %i.bp, 7
  br i1 %i.bq, label %bb.l, label %.thread125

bb.l:                                             ; preds = %bb.k
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !19 ; 2 uses
  %i.bs = lshr i32 %i.c, 24
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 7
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !92
  %i.bv = zext i8 %i.bu to i32
  %i.bw = and i32 %i.bs, %i.bv                    ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !24
  %i.bz = zext nneg i32 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr %i.by, i64 %i.bz ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = and i32 %i.cc, 15
  %i.ce = icmp eq i32 %i.cd, 6
  br i1 %i.ce, label %bb.m, label %.critedge, !prof !60

bb.m:                                             ; preds = %bb.l
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !19
  %i.ch = load ptr, ptr %i.s, align 8, !tbaa !19
  %i.ci = icmp eq ptr %i.cg, %i.ch
  br i1 %i.ci, label %bb.n, label %.critedge, !prof !60

bb.n:                                             ; preds = %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !25
  %.not127 = icmp eq i32 %i.ck, 0
  br i1 %.not127, label %.critedge, label %bb.o, !prof !88

bb.o:                                             ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.ca, i64 16, i1 false), !tbaa.struct !29
  br label %bb.r

.critedge:                                        ; preds = %bb.m, %bb.l, %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !29
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 2 uses
  store i32 %i.bw, ptr %i.cn, align 4, !tbaa !93
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store ptr %i.m, ptr %i.cp, align 8, !tbaa !19
  tail call void @_Z13luaV_gettableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef nonnull %0, ptr noundef nonnull %i.l, ptr noundef %i.s, ptr noundef nonnull %i.h)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !31
  %i.cs = load i32, ptr %i.cn, align 4, !tbaa !93
  %i.ct = shl i32 %i.cs, 24
  %i.cu = load i32, ptr %1, align 4, !tbaa !20
  %i.cv = and i32 %i.cu, 16777215
  %i.cw = or disjoint i32 %i.cv, %i.ct
  store i32 %i.cw, ptr %1, align 4, !tbaa !20
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.cr, i64 %i.g ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !17
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.critedge
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.dc = load ptr, ptr %i.s, align 8, !tbaa !19
  tail call void @_Z16luaG_methoderrorP9lua_StatePK10lua_TValuePK7TString(ptr noundef nonnull %0, ptr noundef nonnull %i.db, ptr noundef %i.dc) #8
  unreachable

.thread125:                                       ; preds = %bb.f, %.thread122, %bb.k, %bb.j
  %i.dd = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !29
  %i.de = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  store ptr %i.m, ptr %i.df, align 8, !tbaa !19
  tail call void @_Z13luaV_gettableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef %0, ptr noundef nonnull %i.l, ptr noundef %i.s, ptr noundef nonnull %i.h)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !31
  %i.di = getelementptr inbounds nuw [16 x i8], ptr %i.dh, i64 %i.g ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 12
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !17
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.thread125
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dn = load ptr, ptr %i.s, align 8, !tbaa !19
  tail call void @_Z16luaG_methoderrorP9lua_StatePK10lua_TValuePK7TString(ptr noundef nonnull %0, ptr noundef nonnull %i.dm, ptr noundef %i.dn) #8
  unreachable

bb.r:                                             ; preds = %bb.i, %.thread125, %.critedge, %bb.o, %bb.b
  ret ptr %i.m
}

; Function Attrs: noreturn
declare hidden void @_Z16luaG_methoderrorP9lua_StatePK10lua_TValuePK7TString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4Luau7CodeGen14executeSETLISTEP9lua_StatePKjP10lua_TValueS6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %1, align 4, !tbaa !20     ; 3 uses
  %i.d = lshr i32 %i.c, 8
  %i.e = and i32 %i.d, 255
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.f ; 2 uses
  %i.h = lshr i32 %i.c, 16
  %i.i = and i32 %i.h, 255
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.j ; 4 uses
  %i.l = lshr i32 %i.c, 24                        ; 2 uses
  %i.m = add nsw i32 %i.l, -1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.b, align 4, !tbaa !20
  %i.p = icmp eq i32 %i.l, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.k to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = lshr exact i64 %i.v, 4
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41
  store ptr %i.z, ptr %i.r, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.041 = phi i32 [ %i.x, %bb.b ], [ %i.m, %bb.a ] ; 5 uses
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !19  ; 6 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !17
  %i.ad = icmp eq i32 %i.ac, 7
  br i1 %i.ad, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.ae = add i32 %i.o, -1                        ; 4 uses
  %i.af = add i32 %i.ae, %.041                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !9
  %i.ai = icmp sgt i32 %i.af, %i.ah
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.n, ptr %i.ak, align 8, !tbaa !19
  tail call void @_Z16luaH_resizearrayP9lua_StateP8LuaTablei(ptr noundef %0, ptr noundef nonnull %i.aa, i32 noundef %i.af)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %4 = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %5 = load ptr, ptr %4, align 8, !tbaa !16       ; 3 uses
  %i.al = icmp sgt i32 %.041, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %.041 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.am = icmp eq i32 %.041, 1
  br i1 %i.am, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.g

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod47 = trunc i32 %.041 to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.epil.init
  %6 = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %7 = add i32 %i.ae, %6
  %8 = zext i32 %7 to i64
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !19
  %i.ar = and i8 %i.aq, 4
  %.not = icmp eq i8 %i.ar, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv
  %9 = trunc nuw nsw i64 %indvars.iv to i32
  %10 = add i32 %i.ae, %9
  %11 = zext i32 %10 to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %indvars.iv.next
  %12 = trunc nuw nsw i64 %indvars.iv.next to i32
  %13 = add i32 %i.ae, %12
  %14 = zext i32 %13 to i64
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.g, !llvm.loop !102

bb.h:                                             ; preds = %._crit_edge
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  tail call void @_Z16luaC_barrierbackP9lua_StateP8GCObjectPS2_(ptr noundef %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.aw)
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h, %bb.c
  %.0 = phi ptr [ null, %bb.c ], [ %i.n, %bb.h ], [ %i.n, %._crit_edge ]
  ret ptr %.0
}

declare hidden void @_Z16luaH_resizearrayP9lua_StateP8LuaTablei(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare hidden void @_Z16luaC_barrierbackP9lua_StateP8GCObjectPS2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN4Luau7CodeGen15executeFORGPREPEP9lua_StatePKjP10lua_TValueS6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.c = load i32, ptr %1, align 4, !tbaa !20     ; 2 uses
  %i.d = lshr i32 %i.c, 8
  %i.e = and i32 %i.d, 255
  %i.f = zext nneg i32 %i.e to i64                ; 2 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.f ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !17
  switch i32 %i.i, label %.critedge.thread [
    i32 8, label %bb.j
    i32 7, label %bb.c
    i32 9, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink72 = phi i64 [ 8, %bb.b ], [ 16, %bb.a ]
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sink72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !79   ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 3 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !96    ; 2 uses
  %i.p = and i8 %i.o, 32
  %.not = icmp eq i8 %i.p, 0
  br i1 %.not, label %bb.e, label %.thread66

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !78
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 1072
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !97
  %i.u = tail call noundef ptr @_Z10luaT_gettmP8LuaTable3TMSP7TString(ptr noundef nonnull %i.l, i32 noundef 5, ptr noundef %i.t) ; 2 uses
  %.not60 = icmp eq ptr %i.u, null
  br i1 %.not60, label %..thread66_crit_edge, label %bb.f

..thread66_crit_edge:                             ; preds = %bb.e
  %.pre = load i8, ptr %i.n, align 1, !tbaa !96
  br label %.thread66

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !29
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !39
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store ptr %i.b, ptr %i.z, align 8, !tbaa !19
  tail call void @_Z9luaD_callP9lua_StateP10lua_TValuei(ptr noundef nonnull %0, ptr noundef nonnull %i.g, i32 noundef 3)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !31
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41
  store ptr %i.ae, ptr %i.x, align 8, !tbaa !39
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.f ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !17
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  store ptr %i.b, ptr %i.aj, align 8, !tbaa !19
  tail call void @_Z15luaG_typeerrorLP9lua_StatePK10lua_TValuePKc(ptr noundef nonnull %0, ptr noundef nonnull %i.af, ptr noundef nonnull @.str.1) #8
  unreachable

.thread66:                                        ; preds = %..thread66_crit_edge, %bb.d
  %i.ak = phi i8 [ %.pre, %..thread66_crit_edge ], [ %i.o, %bb.d ]
  %i.al = and i8 %i.ak, 16
  %.not61 = icmp eq i8 %i.al, 0
  br i1 %.not61, label %bb.h, label %.critedge

bb.h:                                             ; preds = %.thread66
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !78
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1064
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !97
  %i.aq = tail call noundef ptr @_Z10luaT_gettmP8LuaTable3TMSP7TString(ptr noundef nonnull %i.l, i32 noundef 4, ptr noundef %i.ap)
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.critedge, label %bb.j

.critedge:                                        ; preds = %bb.c, %.thread66, %bb.h
  %.pr = load i32, ptr %i.h, align 4, !tbaa !17
  %i.as = icmp eq i32 %.pr, 7
  br i1 %i.as, label %bb.i, label %.critedge.thread

bb.i:                                             ; preds = %.critedge
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !29
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.au, align 8, !tbaa !19
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 128, ptr %i.av, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store i32 2, ptr %i.aw, align 4, !tbaa !17
  store i32 0, ptr %i.h, align 4, !tbaa !17
  br label %bb.j

.critedge.thread:                                 ; preds = %bb.a, %.critedge
  %i.ax = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %i.b, ptr %i.ay, align 8, !tbaa !19
  tail call void @_Z15luaG_typeerrorLP9lua_StatePK10lua_TValuePKc(ptr noundef %0, ptr noundef nonnull %i.g, ptr noundef nonnull @.str) #8
  unreachable

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.i, %bb.a
  %i.az = ashr i32 %i.c, 16
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ba
  ret ptr %i.bb
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4Luau7CodeGen24executeGETVARARGSMultRetEP9lua_StatePKjP10lua_TValuei(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = ptrtoint ptr %2 to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 4
  %i.j = trunc i64 %i.i to i32
  %i.k = load i8, ptr @_ZN5FFlag11LuauCIProtoE, align 8, !tbaa !44, !range !48, !noundef !49
  %i.l = trunc nuw i8 %i.k to i1
  %spec.select = select i1 %i.l, ptr %i.b, ptr %i.e
  %.in = getelementptr inbounds nuw i8, ptr %spec.select, i64 24
  %i.m = load ptr, ptr %.in, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i8, ptr %i.n, align 4, !tbaa !84
  %i.p = zext i8 %i.o to i32
  %i.q = xor i32 %i.p, -1
  %i.r = add i32 %i.q, %i.j                       ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %1, ptr %i.s, align 8, !tbaa !19
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !72
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = shl nsw i32 %i.r, 4
  %i.ab = sext i32 %i.aa to i64
  %.not = icmp sgt i64 %i.z, %i.ab
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14luaD_growstackP9lua_Statei(ptr noundef nonnull %0, i32 noundef %i.r)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31 ; 2 uses
  %i.ae = sext i32 %3 to i64
  %i.af = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ae ; 4 uses
  %i.ag = icmp sgt i32 %i.r, 0
  br i1 %i.ag, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ah = zext nneg i32 %i.r to i64               ; 3 uses
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.ad, i64 %i.ai ; 3 uses
  %xtraiter = and i64 %i.ah, 1
  %i.ak = icmp eq i32 %i.r, 1
  br i1 %i.ak, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.ah, 2147483646
  br label %bb.d

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod30 = trunc i32 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod30)
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv.epil.init
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.am, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  %i.an = sext i32 %i.r to i64
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.af, i64 %i.an
  store ptr %i.ao, ptr %i.v, align 8, !tbaa !39
  ret void

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %indvars.iv.next
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %indvars.iv.next
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.ar, i64 16, i1 false), !tbaa.struct !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !103
}

declare hidden void @_Z14luaD_growstackP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen22executeGETVARARGSConstEP9lua_StateP10lua_TValueii(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 4
  %i.j = trunc i64 %i.i to i32
  %i.k = load i8, ptr @_ZN5FFlag11LuauCIProtoE, align 8, !tbaa !44, !range !48, !noundef !49
  %i.l = trunc nuw i8 %i.k to i1
  %spec.select = select i1 %i.l, ptr %i.b, ptr %i.e
  %.in = getelementptr inbounds nuw i8, ptr %spec.select, i64 24
  %i.m = load ptr, ptr %.in, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i8, ptr %i.n, align 4, !tbaa !84
  %i.p = zext i8 %i.o to i32
  %i.q = xor i32 %i.p, -1
  %i.r = add i32 %i.q, %i.j
  %.fr = freeze i32 %i.r                          ; 4 uses
  %i.s = sext i32 %2 to i64
  %i.t = getelementptr inbounds [16 x i8], ptr %1, i64 %i.s ; 12 uses
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %3, i32 %.fr) ; 4 uses
  %i.u = icmp sgt i32 %invariant.smin, 0
  br i1 %i.u, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.v = sext i32 %.fr to i64
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [16 x i8], ptr %1, i64 %i.w ; 3 uses
  %wide.trip.count = zext nneg i32 %invariant.smin to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %invariant.smin, 1
  br i1 %i.y, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod35 = trunc i32 %invariant.smin to i1
  tail call void @llvm.assume(i1 %lcmp.mod35)
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv.epil.init
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.z, i64 16, i1 false), !tbaa.struct !29
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.a
  %i.ab = icmp slt i32 %.fr, %3
  br i1 %i.ab, label %.lr.ph28.preheader, label %._crit_edge

.lr.ph28.preheader:                               ; preds = %.preheader
  %i.ac = sext i32 %.fr to i64                    ; 4 uses
  %wide.trip.count33 = sext i32 %3 to i64         ; 3 uses
  %i.ad = sub nsw i64 %wide.trip.count33, %i.ac
  %xtraiter36 = and i64 %i.ad, 7                  ; 2 uses
  %lcmp.mod37.not = icmp eq i64 %xtraiter36, 0
  br i1 %lcmp.mod37.not, label %.lr.ph28.prol.loopexit, label %.lr.ph28.prol

.lr.ph28.prol:                                    ; preds = %.lr.ph28.preheader, %.lr.ph28.prol
  %indvars.iv30.prol = phi i64 [ %indvars.iv.next31.prol, %.lr.ph28.prol ], [ %i.ac, %.lr.ph28.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph28.prol ], [ 0, %.lr.ph28.preheader ]
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.t, i64 %indvars.iv30.prol
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !17
  %indvars.iv.next31.prol = add nsw i64 %indvars.iv30.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter36
  br i1 %prol.iter.cmp.not, label %.lr.ph28.prol.loopexit, label %.lr.ph28.prol, !llvm.loop !104

.lr.ph28.prol.loopexit:                           ; preds = %.lr.ph28.prol, %.lr.ph28.preheader
  %indvars.iv30.unr = phi i64 [ %i.ac, %.lr.ph28.preheader ], [ %indvars.iv.next31.prol, %.lr.ph28.prol ]
  %i.ag = sub nsw i64 %i.ac, %wide.trip.count33
  %i.ah = icmp ugt i64 %i.ag, -8
  br i1 %i.ah, label %._crit_edge, label %.lr.ph28

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false), !tbaa.struct !29
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv.next
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %indvars.iv.next
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !29
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.b, !llvm.loop !105

._crit_edge:                                      ; preds = %.lr.ph28.prol.loopexit, %.lr.ph28, %.preheader
  ret void

.lr.ph28:                                         ; preds = %.lr.ph28.prol.loopexit, %.lr.ph28
  %indvars.iv30 = phi i64 [ %indvars.iv.next31.7, %.lr.ph28 ], [ %indvars.iv30.unr, %.lr.ph28.prol.loopexit ] ; 9 uses
  %i.am = getelementptr inbounds [16 x i8], ptr %i.t, i64 %indvars.iv30
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !17
  %i.ao = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv30
  %i.ap = getelementptr i8, ptr %i.ao, i64 28
  store i32 0, ptr %i.ap, align 4, !tbaa !17
  %i.aq = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv30
  %i.ar = getelementptr i8, ptr %i.aq, i64 44
  store i32 0, ptr %i.ar, align 4, !tbaa !17
  %i.as = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv30
  %i.at = getelementptr i8, ptr %i.as, i64 60
  store i32 0, ptr %i.at, align 4, !tbaa !17
  %i.au = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv30
  %i.av = getelementptr i8, ptr %i.au, i64 76
  store i32 0, ptr %i.av, align 4, !tbaa !17
  %i.aw = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv30
  %i.ax = getelementptr i8, ptr %i.aw, i64 92
  store i32 0, ptr %i.ax, align 4, !tbaa !17
  %i.ay = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv30
  %i.az = getelementptr i8, ptr %i.ay, i64 108
  store i32 0, ptr %i.az, align 4, !tbaa !17
  %i.ba = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv30
  %i.bb = getelementptr i8, ptr %i.ba, i64 124
  store i32 0, ptr %i.bb, align 4, !tbaa !17
  %indvars.iv.next31.7 = add nsw i64 %indvars.iv30, 8 ; 2 uses
  %exitcond34.not.7 = icmp eq i64 %indvars.iv.next31.7, %wide.trip.count33
  br i1 %exitcond34.not.7, label %._crit_edge, label %.lr.ph28, !llvm.loop !106
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN4Luau7CodeGen17executeDUPCLOSUREEP9lua_StatePKjP10lua_TValueS6_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !20     ; 2 uses
  %i.h = lshr i32 %i.g, 8
  %i.i = and i32 %i.h, 255
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.j ; 3 uses
  %i.l = ashr i32 %i.g, 16
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %3, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !19   ; 14 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.f, ptr %i.p, align 8, !tbaa !19
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !82
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !82   ; 2 uses
  %i.u = icmp eq ptr %i.r, %i.t
  br i1 %i.u, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.w = load i8, ptr %i.v, align 4, !tbaa !107
  %i.x = zext i8 %i.w to i32
  %i.y = load i8, ptr @_ZN5FFlag11LuauCIProtoE, align 8, !tbaa !44, !range !48, !noundef !49
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !62
  %.not = icmp eq i8 %i.ab, 0
  br i1 %.not, label %bb.d, label %._crit_edge102

bb.d:                                             ; preds = %bb.c
  %i.ac = load i8, ptr @_ZN5FFlag16LuauPromoteProtoE, align 8, !tbaa !44, !range !48, !noundef !49
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !19 ; 3 uses
  br i1 %i.ad, label %bb.e, label %._crit_edge102

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 192
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64 ; 2 uses
  %.not80 = icmp eq ptr %i.ah, null
  br i1 %.not80, label %._crit_edge102, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %i.ai = phi ptr [ %i.ak, %.lr.ph.i ], [ %i.ah, %bb.e ] ; 4 uses
  store ptr %i.ai, ptr %i.ae, align 8, !tbaa !19
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 192
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !64 ; 2 uses
  %.not.i = icmp eq ptr %i.ak, null
  br i1 %.not.i, label %_Z17luaF_promoteprotoP7Closure.exit, label %.lr.ph.i, !llvm.loop !65

_Z17luaF_promoteprotoP7Closure.exit:              ; preds = %.lr.ph.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 6
  %i.an = load i8, ptr %i.am, align 2, !tbaa !66
  store i8 %i.an, ptr %i.al, align 1, !tbaa !67
  br label %._crit_edge102

bb.f:                                             ; preds = %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !19
  br label %._crit_edge102

._crit_edge102:                                   ; preds = %bb.d, %bb.e, %bb.c, %_Z17luaF_promoteprotoP7Closure.exit, %bb.f
  %i.aq = phi ptr [ %i.ap, %bb.f ], [ null, %bb.c ], [ %i.ai, %_Z17luaF_promoteprotoP7Closure.exit ], [ %i.af, %bb.e ], [ %i.af, %bb.d ]
  %i.ar = tail call noundef ptr @_Z16luaF_newLclosureP9lua_StateiP8LuaTableP5Proto(ptr noundef nonnull %0, i32 noundef %i.x, ptr noundef %i.t, ptr noundef %i.aq)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %._crit_edge102
  %i.as = phi ptr [ %i.ar, %._crit_edge102 ], [ %i.o, %bb.a ] ; 3 uses
  store ptr %i.as, ptr %i.k, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  store i32 8, ptr %i.at, align 4, !tbaa !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 4 uses
  %i.av = load i8, ptr %i.au, align 4, !tbaa !107
  %.not100 = icmp eq i8 %i.av, 0
  br i1 %.not100, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 6
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.o, i64 5
  br label %bb.h

._crit_edge:                                      ; preds = %bb.t, %bb.g
  %.076.lcssa = phi ptr [ %i.as, %bb.g ], [ %.177, %bb.t ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.076.lcssa, i64 6
  store i8 0, ptr %i.bb, align 2, !tbaa !108
  %.not81 = icmp eq ptr %i.o, %.076.lcssa
  br i1 %.not81, label %bb.w, label %bb.u

bb.h:                                             ; preds = %.lr.ph, %bb.t
  %.098 = phi i32 [ 0, %.lr.ph ], [ %i.cv, %bb.t ] ; 6 uses
  %.07697 = phi ptr [ %i.as, %.lr.ph ], [ %.177, %bb.t ] ; 10 uses
  %i.bc = sext i32 %.098 to i64                   ; 3 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !20 ; 2 uses
  %i.bf = and i32 %i.be, 65280
  %i.bg = icmp eq i32 %i.bf, 0
  %i.bh = lshr i32 %i.be, 16
  %i.bi = and i32 %i.bh, 255
  %i.bj = zext nneg i32 %i.bi to i64
  %. = select i1 %i.bg, ptr %2, ptr %i.aw
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %., i64 %i.bj ; 4 uses
  %i.bl = icmp eq ptr %.07697, %i.o
  br i1 %i.bl, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %.07697, i64 32
  %i.bn = getelementptr inbounds [16 x i8], ptr %i.bm, i64 %i.bc
  %i.bo = tail call noundef i32 @_Z16luaO_rawequalObjPK10lua_TValueS1_(ptr noundef nonnull %i.bn, ptr noundef %i.bk)
  %.not83 = icmp eq i32 %i.bo, 0
  br i1 %.not83, label %bb.j, label %bb.t

bb.j:                                             ; preds = %bb.i
  %i.bp = load i8, ptr %i.ax, align 2, !tbaa !108
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.br = load i8, ptr %i.au, align 4, !tbaa !107
  %i.bs = zext i8 %i.br to i32
  %i.bt = load ptr, ptr %i.s, align 8, !tbaa !82
  %i.bu = load i8, ptr @_ZN5FFlag11LuauCIProtoE, align 8, !tbaa !44, !range !48, !noundef !49
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bw = load i8, ptr %i.az, align 1, !tbaa !62
  %.not86 = icmp eq i8 %i.bw, 0
  br i1 %.not86, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bx = load i8, ptr @_ZN5FFlag16LuauPromoteProtoE, align 8, !tbaa !44, !range !48, !noundef !49
  %i.by = trunc nuw i8 %i.bx to i1
  %.pre103 = load ptr, ptr %i.ay, align 8, !tbaa !19 ; 3 uses
  br i1 %i.by, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre103, i64 192
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !64 ; 2 uses
  %.not87 = icmp eq ptr %i.ca, null
  br i1 %.not87, label %bb.p, label %.lr.ph.i90

.lr.ph.i90:                                       ; preds = %bb.n, %.lr.ph.i90
  %i.cb = phi ptr [ %i.cd, %.lr.ph.i90 ], [ %i.ca, %bb.n ] ; 4 uses
  store ptr %i.cb, ptr %i.ay, align 8, !tbaa !19
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 192
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !64 ; 2 uses
  %.not.i91 = icmp eq ptr %i.cd, null
  br i1 %.not.i91, label %_Z17luaF_promoteprotoP7Closure.exit94, label %.lr.ph.i90, !llvm.loop !65

_Z17luaF_promoteprotoP7Closure.exit94:            ; preds = %.lr.ph.i90
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 6
  %i.cf = load i8, ptr %i.ce, align 2, !tbaa !66
  store i8 %i.cf, ptr %i.ba, align 1, !tbaa !67
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.cg = load ptr, ptr %i.ay, align 8, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.l, %_Z17luaF_promoteprotoP7Closure.exit94, %bb.o
  %i.ch = phi ptr [ %i.cg, %bb.o ], [ null, %bb.l ], [ %i.cb, %_Z17luaF_promoteprotoP7Closure.exit94 ], [ %.pre103, %bb.n ], [ %.pre103, %bb.m ]
  %i.ci = tail call noundef ptr @_Z16luaF_newLclosureP9lua_StateiP8LuaTableP5Proto(ptr noundef %0, i32 noundef %i.bs, ptr noundef %i.bt, ptr noundef %i.ch) ; 2 uses
  store ptr %i.ci, ptr %i.k, align 8, !tbaa !19
  store i32 8, ptr %i.at, align 4, !tbaa !17
  br label %bb.t

.critedge:                                        ; preds = %bb.h, %bb.j
  %i.cj = getelementptr inbounds nuw i8, ptr %.07697, i64 32
  %i.ck = getelementptr inbounds [16 x i8], ptr %i.cj, i64 %i.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !29
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !17
  %i.cn = icmp sgt i32 %i.cm, 5
  br i1 %i.cn, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.critedge
  %i.co = getelementptr inbounds nuw i8, ptr %.07697, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !19
  %i.cq = and i8 %i.cp, 4
  %.not84 = icmp eq i8 %i.cq, 0
  br i1 %.not84, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cr = load ptr, ptr %i.bk, align 8, !tbaa !19 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !19
  %i.cu = and i8 %i.ct, 3
  %.not85 = icmp eq i8 %i.cu, 0
  br i1 %.not85, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_Z13luaC_barrierfP9lua_StateP8GCObjectS2_(ptr noundef %0, ptr noundef nonnull %.07697, ptr noundef nonnull %i.cr)
  br label %bb.t

bb.t:                                             ; preds = %.critedge, %bb.q, %bb.r, %bb.s, %bb.i, %bb.p
  %.177 = phi ptr [ %.07697, %bb.i ], [ %i.ci, %bb.p ], [ %.07697, %bb.s ], [ %.07697, %bb.r ], [ %.07697, %bb.q ], [ %.07697, %.critedge ] ; 2 uses
  %.1 = phi i32 [ %.098, %bb.i ], [ -1, %bb.p ], [ %.098, %bb.s ], [ %.098, %bb.r ], [ %.098, %bb.q ], [ %.098, %.critedge ]
  %i.cv = add nsw i32 %.1, 1                      ; 2 uses
  %i.cw = load i8, ptr %i.au, align 4, !tbaa !107
  %i.cx = zext i8 %i.cw to i32
  %i.cy = icmp slt i32 %i.cv, %i.cx
  br i1 %i.cy, label %bb.h, label %._crit_edge, !llvm.loop !109

bb.u:                                             ; preds = %._crit_edge
  %i.cz = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  store ptr %i.f, ptr %i.da, align 8, !tbaa !19
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !78 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 72
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !110
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %i.dg = load i64, ptr %i.df, align 16, !tbaa !121
  %.not82 = icmp ult i64 %i.de, %i.dg
  br i1 %.not82, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dh = tail call noundef i64 @_Z9luaC_stepP9lua_Stateb(ptr noundef nonnull %0, i1 noundef zeroext true) ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %._crit_edge
  %i.di = load i8, ptr %i.au, align 4, !tbaa !107
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dj
  ret ptr %i.dk
}

declare hidden noundef ptr @_Z16luaF_newLclosureP9lua_StateiP8LuaTableP5Proto(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden noundef i32 @_Z16luaO_rawequalObjPK10lua_TValueS1_(ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden void @_Z13luaC_barrierfP9lua_StateP8GCObjectS2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare hidden noundef i64 @_Z9luaC_stepP9lua_Stateb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN4Luau7CodeGen18executePREPVARARGSEP9lua_StatePKjP10lua_TValueS6_(ptr noundef %0, ptr noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.g = load i32, ptr %1, align 4, !tbaa !20
  %i.h = lshr i32 %i.g, 8                         ; 2 uses
  %i.i = and i32 %i.h, 255                        ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.f, ptr %i.j, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !39   ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !67
  %i.t = zext i8 %i.s to i32
  %i.u = add nuw nsw i32 %i.i, %i.t               ; 2 uses
  %i.v = shl nuw nsw i32 %i.u, 4
  %i.w = zext nneg i32 %i.v to i64
  %.not = icmp sgt i64 %i.q, %i.w
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14luaD_growstackP9lua_Statei(ptr noundef nonnull %0, i32 noundef %i.u)
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !39
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.x = phi ptr [ %i.n, %bb.a ], [ %.pre, %bb.b ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 3 uses
  %.not36 = icmp eq i32 %i.i, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.aa = icmp eq i32 %i.i, 1
  br i1 %i.aa, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod38 = trunc i32 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.epil.init ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.c
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !40  ; 2 uses
  store ptr %i.x, ptr %i.ae, align 8, !tbaa !69
  %i.af = load i8, ptr %i.r, align 1, !tbaa !67
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.ag ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !41
  store ptr %i.x, ptr %i.y, align 8, !tbaa !31
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !39
  ret ptr %i.f

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ak, ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i64 16, i1 false), !tbaa.struct !29
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  store i32 0, ptr %i.al, align 4, !tbaa !17
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.next ; 2 uses
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv.next
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !29
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.ao, align 4, !tbaa !17
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !122
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { noreturn }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 8}
!10 = !{!"_ZTS8LuaTable", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !6, i64 8, !7, i64 12, !11, i64 16, !13, i64 24, !14, i64 32, !15, i64 40}
!11 = !{!"p1 _ZTS8LuaTable", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS10lua_TValue", !12, i64 0}
!14 = !{!"p1 _ZTS7LuaNode", !12, i64 0}
!15 = !{!"p1 _ZTS8GCObject", !12, i64 0}
!16 = !{!10, !13, i64 24}
!17 = !{!18, !6, i64 12}
!18 = !{!"_ZTS10lua_TValue", !7, i64 0, !7, i64 8, !6, i64 12}
!19 = !{!7, !7, i64 0}
!20 = !{!6, !6, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!10, !7, i64 6}
!24 = !{!10, !14, i64 32}
!25 = !{!26, !6, i64 12}
!26 = !{!"_ZTS7LuaNode", !18, i64 0, !27, i64 16}
!27 = !{!"_ZTS4TKey", !7, i64 0, !7, i64 8, !6, i64 12, !6, i64 12}
!28 = distinct !{!28, !22}
!29 = !{i64 0, i64 8, !19, i64 8, i64 4, !19, i64 12, i64 4, !20}
!30 = distinct !{!30, !22}
!31 = !{!32, !13, i64 16}
!32 = !{!"_ZTS9lua_State", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !33, i64 5, !33, i64 6, !13, i64 8, !13, i64 16, !34, i64 24, !35, i64 32, !13, i64 40, !13, i64 48, !35, i64 56, !35, i64 64, !6, i64 72, !6, i64 76, !36, i64 80, !36, i64 82, !6, i64 84, !11, i64 88, !37, i64 96, !15, i64 104, !38, i64 112, !12, i64 120}
!33 = !{!"bool", !7, i64 0}
!34 = !{!"p1 _ZTS12global_State", !12, i64 0}
!35 = !{!"p1 _ZTS8CallInfo", !12, i64 0}
!36 = !{!"short", !7, i64 0}
!37 = !{!"p1 _ZTS5UpVal", !12, i64 0}
!38 = !{!"p1 _ZTS7TString", !12, i64 0}
!39 = !{!32, !13, i64 8}
!40 = !{!32, !35, i64 32}
!41 = !{!42, !13, i64 16}
!42 = !{!"_ZTS8CallInfo", !13, i64 0, !13, i64 8, !13, i64 16, !43, i64 24, !7, i64 32, !6, i64 40, !6, i64 44}
!43 = !{!"p1 _ZTS5Proto", !12, i64 0}
!44 = !{!45, !33, i64 0}
!45 = !{!"_ZTSN4Luau6FValueIbEE", !33, i64 0, !33, i64 1, !46, i64 8, !47, i64 16, !6, i64 24}
!46 = !{!"p1 omnipotent char", !12, i64 0}
!47 = !{!"p1 _ZTSN4Luau6FValueIbEE", !12, i64 0}
!48 = !{i8 0, i8 2}
!49 = !{}
!50 = !{!42, !13, i64 8}
!51 = !{!52, !53, i64 16}
!52 = !{!"_ZTS5Proto", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !13, i64 8, !53, i64 16, !54, i64 24, !53, i64 32, !12, i64 40, !56, i64 48, !46, i64 56, !53, i64 64, !57, i64 72, !58, i64 80, !38, i64 88, !38, i64 96, !46, i64 104, !46, i64 112, !12, i64 120, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !59, i64 176, !6, i64 184, !6, i64 188, !43, i64 192, !43, i64 200, !56, i64 208}
!53 = !{!"p1 int", !12, i64 0}
!54 = !{!"p2 _ZTS5Proto", !55, i64 0}
!55 = !{!"any p2 pointer", !12, i64 0}
!56 = !{!"long", !7, i64 0}
!57 = !{!"p1 _ZTS6LocVar", !12, i64 0}
!58 = !{!"p2 _ZTS7TString", !55, i64 0}
!59 = !{!"p1 _ZTS18FeedbackVectorSlot", !12, i64 0}
!60 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!61 = !{!32, !35, i64 56}
!62 = !{!63, !7, i64 3}
!63 = !{!"_ZTS7Closure", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !15, i64 8, !11, i64 16, !7, i64 24}
!64 = !{!52, !43, i64 192}
!65 = distinct !{!65, !22}
!66 = !{!52, !7, i64 6}
!67 = !{!63, !7, i64 5}
!68 = !{!42, !43, i64 24}
!69 = !{!42, !13, i64 0}
!70 = !{!42, !6, i64 44}
!71 = !{!42, !6, i64 40}
!72 = !{!32, !13, i64 40}
!73 = !{!32, !6, i64 72}
!74 = distinct !{!74, !75}
!75 = !{!"llvm.loop.unroll.disable"}
!76 = distinct !{!76, !22}
!77 = distinct !{!77, !22}
!78 = !{!32, !34, i64 24}
!79 = !{!11, !11, i64 0}
!80 = !{!81, !11, i64 8}
!81 = !{!"_ZTS5Udata", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !6, i64 4, !11, i64 8, !7, i64 16}
!82 = !{!63, !11, i64 16}
!83 = !{!52, !13, i64 8}
!84 = !{!52, !7, i64 4}
!85 = distinct !{!85, !22}
!86 = !{!52, !7, i64 5}
!87 = !{!52, !56, i64 48}
!88 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!89 = distinct !{!89, !75}
!90 = distinct !{!90, !22}
!91 = distinct !{!91, !22}
!92 = !{!10, !7, i64 7}
!93 = !{!32, !6, i64 84}
!94 = !{!10, !11, i64 16}
!95 = !{!81, !7, i64 3}
!96 = !{!10, !7, i64 3}
!97 = !{!38, !38, i64 0}
!98 = !{!99, !99, i64 0}
!99 = !{!"float", !7, i64 0}
!100 = !{!10, !7, i64 4}
!101 = !{!32, !38, i64 112}
!102 = distinct !{!102, !22}
!103 = distinct !{!103, !22}
!104 = distinct !{!104, !75}
!105 = distinct !{!105, !22}
!106 = distinct !{!106, !22}
!107 = !{!63, !7, i64 4}
!108 = !{!63, !7, i64 6}
!109 = distinct !{!109, !22}
!110 = !{!111, !56, i64 72}
!111 = !{!"_ZTS12global_State", !112, i64 0, !12, i64 16, !12, i64 24, !7, i64 32, !7, i64 33, !15, i64 40, !15, i64 48, !15, i64 56, !56, i64 64, !56, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !7, i64 96, !7, i64 416, !113, i64 736, !113, i64 744, !113, i64 752, !114, i64 760, !115, i64 768, !7, i64 808, !7, i64 920, !7, i64 1032, !18, i64 1200, !18, i64 1216, !6, i64 1232, !116, i64 1240, !56, i64 1248, !7, i64 1256, !117, i64 1288, !118, i64 1368, !7, i64 1440, !7, i64 1952, !7, i64 11312, !7, i64 13360, !7, i64 14384, !7, i64 15408, !18, i64 16432, !6, i64 16448, !12, i64 16456, !7, i64 16464, !7, i64 17488, !119, i64 18528, !6, i64 18712}
!112 = !{!"_ZTS11stringtable", !58, i64 0, !6, i64 8, !6, i64 12}
!113 = !{!"p1 _ZTS8lua_Page", !12, i64 0}
!114 = !{!"p1 _ZTS9lua_State", !12, i64 0}
!115 = !{!"_ZTS5UpVal", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !13, i64 8, !7, i64 16}
!116 = !{!"p1 _ZTS10lua_jmpbuf", !12, i64 0}
!117 = !{!"_ZTS13lua_Callbacks", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72}
!118 = !{!"_ZTS22lua_ExecutionCallbacks", !12, i64 0, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64}
!119 = !{!"_ZTS7GCStats", !7, i64 0, !6, i64 128, !6, i64 132, !56, i64 136, !56, i64 144, !56, i64 152, !120, i64 160, !120, i64 168, !120, i64 176}
!120 = !{!"double", !7, i64 0}
!121 = !{!111, !56, i64 64}
!122 = distinct !{!122, !22}
end_hunk_0
