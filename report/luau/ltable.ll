Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ltable?download=true
inline.NumInlined: 33
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZL6resizeP9lua_StateP8LuaTableii:bb.a
  %i.an = getelementptr i8, ptr %i.am, i64 92
  store i32 0, ptr %i.an, align 4, !tbaa !9
  %i.ao = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 108
  store i32 0, ptr %i.ap, align 4, !tbaa !9
  %i.aq = getelementptr [16 x i8], ptr %i.t, i64 %indvars.iv.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 124
  store i32 0, ptr %i.ar, align 4, !tbaa !9
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.l
  br i1 %exitcond.not.i.7, label %_ZL14setarrayvectorP9lua_StateP8LuaTablei.exit, label %.lr.ph.i, !llvm.loop !34

_ZL14setarrayvectorP9lua_StateP8LuaTablei.exit:   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.e
  store i32 %2, ptr %i.c, align 8, !tbaa !11
  br label %bb.g

bb.g:                                             ; preds = %_ZL14setarrayvectorP9lua_StateP8LuaTablei.exit, %bb.c
  %i.as = icmp eq i32 %3, 0
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store ptr @luaH_dummynode, ptr %i.h, align 8, !tbaa !19
  br label %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit

bb.i:                                             ; preds = %bb.g
  %i.at = add nsw i32 %3, -1
  %i.au = tail call noundef i32 @_Z9luaO_log2j(i32 noundef %i.at) ; 2 uses
  %i.av = add nsw i32 %i.au, 1                    ; 4 uses
  %i.aw = icmp sgt i32 %i.au, 25
  br i1 %i.aw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ptr, ...) @_Z14luaG_runerrorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.4) #10
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ax = shl nuw nsw i32 1, %i.av                ; 3 uses
  %i.ay = zext nneg i32 %i.ax to i64              ; 3 uses
  %i.az = shl nuw nsw i64 %i.ay, 5
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !31
  %i.bc = tail call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef %0, i64 noundef %i.az, i8 noundef zeroext %i.bb)
  store ptr %i.bc, ptr %i.h, align 8, !tbaa !19
  %xtraiter93 = and i64 %i.ay, 3                  ; 3 uses
  %i.bd = icmp ult i32 %i.av, 2
  br i1 %i.bd, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.ay, 2147483644
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %indvars.iv.i72 = phi i64 [ 0, %.new ], [ %indvars.iv.next.i73.3, %bb.l ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %indvars.iv.i72 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 28
  store i32 0, ptr %i.bg, align 4
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bh, align 4, !tbaa !26
  %i.bi = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv.i72 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 60
  store i32 0, ptr %i.bk, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 44
  store i32 0, ptr %i.bl, align 4, !tbaa !26
  %i.bm = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bm, i64 %indvars.iv.i72 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 92
  store i32 0, ptr %i.bo, align 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 76
  store i32 0, ptr %i.bp, align 4, !tbaa !26
  %i.bq = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bq, i64 %indvars.iv.i72 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 124
  store i32 0, ptr %i.bs, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 108
  store i32 0, ptr %i.bt, align 4, !tbaa !26
  %indvars.iv.next.i73.3 = add nuw nsw i64 %indvars.iv.i72, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit.loopexit.unr-lcssa, label %bb.l, !llvm.loop !35

_ZL13setnodevectorP9lua_StateP8LuaTablei.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod94.not = icmp eq i64 %xtraiter93, 0
  br i1 %lcmp.mod94.not, label %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit.loopexit.unr-lcssa, %bb.k
  %indvars.iv.i72.epil.init = phi i64 [ 0, %bb.k ], [ %indvars.iv.next.i73.3, %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit.loopexit.unr-lcssa ]
  %lcmp.mod95 = icmp ne i64 %xtraiter93, 0
  tail call void @llvm.assume(i1 %lcmp.mod95)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv.i72.epil = phi i64 [ %indvars.iv.i72.epil.init, %.epil.preheader ], [ %indvars.iv.next.i73.epil, %bb.m ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.bu = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.bv = getelementptr inbounds nuw [32 x i8], ptr %i.bu, i64 %indvars.iv.i72.epil ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 28
  store i32 0, ptr %i.bw, align 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !26
  %indvars.iv.next.i73.epil = add nuw nsw i64 %indvars.iv.i72.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter93
  br i1 %epil.iter.cmp.not, label %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit, label %bb.m, !llvm.loop !36

_ZL13setnodevectorP9lua_StateP8LuaTablei.exit:    ; preds = %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit.loopexit.unr-lcssa, %bb.m, %bb.h
  %.026.i = phi i32 [ 0, %bb.h ], [ %i.av, %bb.m ], [ %i.av, %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit.loopexit.unr-lcssa ] ; 2 uses
  %.0.i = phi i32 [ 0, %bb.h ], [ %i.ax, %bb.m ], [ %i.ax, %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit.loopexit.unr-lcssa ]
  %i.by = trunc i32 %.026.i to i8
  store i8 %i.by, ptr %i.e, align 2, !tbaa !24
  %notmask.i = shl nsw i32 -1, %.026.i
  %i.bz = trunc i32 %notmask.i to i8
  %i.ca = xor i8 %i.bz, -1
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !37
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.0.i, ptr %i.cc, align 4, !tbaa !18
  %i.cd = icmp slt i32 %2, %i.d
  br i1 %i.cd, label %bb.n, label %bb.u

bb.n:                                             ; preds = %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit
  store i32 %2, ptr %i.c, align 8, !tbaa !11
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cg = sext i32 %2 to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.r
  %i.ch = icmp sgt i32 %2, -1
  br i1 %i.ch, label %bb.s, label %bb.t

bb.p:                                             ; preds = %bb.n, %bb.r
  %indvars.iv = phi i64 [ %i.cg, %bb.n ], [ %indvars.iv.next.pre-phi, %bb.r ] ; 3 uses
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !22
  %i.cj = getelementptr inbounds [16 x i8], ptr %i.ci, i64 %indvars.iv ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !9
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %._crit_edge86, label %bb.q

._crit_edge86:                                    ; preds = %bb.p
  %.pre = add nsw i64 %indvars.iv, 1              ; 2 uses
  %.pre87 = trunc i64 %.pre to i32
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.cn = add nsw i64 %indvars.iv, 1              ; 2 uses
  %i.co = trunc i64 %i.cn to i32                  ; 2 uses
  %i.cp = sitofp i32 %i.co to double
  store double %i.cp, ptr %4, align 8, !tbaa !18
  store i32 3, ptr %i.cf, align 4, !tbaa !9
  %i.cq = call fastcc noundef ptr @_ZL6newkeyP9lua_StateP8LuaTablePK10lua_TValue(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge86, %bb.q
  %lftr.wideiv.pre-phi = phi i32 [ %.pre87, %._crit_edge86 ], [ %i.co, %bb.q ]
  %indvars.iv.next.pre-phi = phi i64 [ %.pre, %._crit_edge86 ], [ %i.cn, %bb.q ]
  %exitcond.not = icmp eq i32 %lftr.wideiv.pre-phi, %i.d
  br i1 %exitcond.not, label %bb.o, label %bb.p, !llvm.loop !40

bb.s:                                             ; preds = %bb.o
  %i.cr = zext nneg i32 %2 to i64
  %i.cs = sext i32 %i.d to i64
  %i.ct = shl nuw nsw i64 %i.cs, 4
  %i.cu = load ptr, ptr %i.ce, align 8, !tbaa !22
  %i.cv = shl nuw nsw i64 %i.cr, 4
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !31
  %i.cy = call noundef ptr @_Z13luaM_realloc_P9lua_StatePvmmh(ptr noundef %0, ptr noundef %i.cu, i64 noundef %i.ct, i64 noundef %i.cv, i8 noundef zeroext %i.cx)
  store ptr %i.cy, ptr %i.ce, align 8, !tbaa !22
  br label %bb.u

bb.t:                                             ; preds = %bb.o
  call void @_Z11luaM_toobigP9lua_State(ptr noundef %0) #10
  unreachable

bb.u:                                             ; preds = %bb.s, %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit
  %i.cz = shl nuw i32 1, %i.g                     ; 2 uses
  %.not81 = icmp eq i8 %i.f, 31
  br i1 %.not81, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dd = zext i32 %i.cz to i64
  br label %bb.v

._crit_edge:                                      ; preds = %bb.aa, %bb.u
  %.not = icmp eq ptr %i.i, @luaH_dummynode
  br i1 %.not, label %bb.ac, label %bb.ab

bb.v:                                             ; preds = %.lr.ph, %bb.aa
  %indvars.iv83 = phi i64 [ %i.dd, %.lr.ph ], [ %indvars.iv.next84, %bb.aa ] ; 2 uses
  %indvars.iv.next84 = add nsw i64 %indvars.iv83, -1 ; 2 uses
  %6 = and i64 %indvars.iv.next84, 4294967295
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %6 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !26
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !18 ; 2 uses
  store i64 %i.dj, ptr %5, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dl = load i32, ptr %i.dk, align 8
  store i32 %i.dl, ptr %i.da, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 28
  %i.dn = load i32, ptr %i.dm, align 4
  %i.do = and i32 %i.dn, 15                       ; 2 uses
  store i32 %i.do, ptr %i.db, align 4, !tbaa !9
  %i.dp = icmp eq i32 %i.do, 3
  br i1 %i.dp, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.dq = bitcast i64 %i.dj to double             ; 2 uses
  %i.dr = fptosi double %i.dq to i32              ; 2 uses
  %i.ds = sitofp i32 %i.dr to double
  %i.dt = fcmp oeq double %i.dq, %i.ds
  br i1 %i.dt, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.du = add i32 %i.dr, -1                       ; 2 uses
  %i.dv = load i32, ptr %i.c, align 8, !tbaa !11
  %i.dw = icmp ult i32 %i.du, %i.dv
  br i1 %i.dw, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.dx = load ptr, ptr %i.dc, align 8, !tbaa !22
  %i.dy = sext i32 %i.du to i64
  %i.dz = getelementptr inbounds [16 x i8], ptr %i.dx, i64 %i.dy
  br label %_ZL13arrayornewkeyP9lua_StateP8LuaTablePK10lua_TValue.exit

.thread:                                          ; preds = %bb.x, %bb.y, %bb.w
  %i.ea = call fastcc noundef ptr @_ZL6newkeyP9lua_StateP8LuaTablePK10lua_TValue(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5), !inline_history !41
  br label %_ZL13arrayornewkeyP9lua_StateP8LuaTablePK10lua_TValue.exit

_ZL13arrayornewkeyP9lua_StateP8LuaTablePK10lua_TValue.exit: ; preds = %bb.z, %.thread
  %.1.i = phi ptr [ %i.ea, %.thread ], [ %i.dz, %bb.z ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.i, ptr noundef nonnull align 8 dereferenceable(16) %i.de, i64 16, i1 false), !tbaa.struct !38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.aa

bb.aa:                                            ; preds = %_ZL13arrayornewkeyP9lua_StateP8LuaTablePK10lua_TValue.exit, %bb.v
  %i.eb = trunc nuw i64 %indvars.iv83 to i32
  %i.ec = icmp sgt i32 %i.eb, 1
  br i1 %i.ec, label %bb.v, label %._crit_edge, !llvm.loop !42

bb.ab:                                            ; preds = %._crit_edge
  %i.ed = sext i32 %i.cz to i64
  %i.ee = shl nsw i64 %i.ed, 5
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.eg = load i8, ptr %i.ef, align 2, !tbaa !31
  call void @_Z10luaM_free_P9lua_StatePvmh(ptr noundef %0, ptr noundef %i.i, i64 noundef %i.ee, i8 noundef zeroext %i.eg)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z15luaH_resizehashP9lua_StateP8LuaTablei(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !11
  tail call fastcc void @_ZL6resizeP9lua_StateP8LuaTableii(ptr noundef %0, ptr noundef %1, i32 noundef %i.b, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z8luaH_newP9lua_Stateii(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !43
  %i.c = tail call noundef ptr @_Z12luaM_newgco_P9lua_Statemh(ptr noundef %0, i64 noundef 48, i8 noundef zeroext %i.b) ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !51
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i8, ptr %i.f, align 16, !tbaa !52
  %i.h = and i8 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.h, ptr %i.i, align 1, !tbaa !66
  store i8 7, ptr %i.c, align 8, !tbaa !67
  %i.j = load i8, ptr %i.a, align 4, !tbaa !43    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  store i8 %i.j, ptr %i.k, align 2, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.l, align 8, !tbaa !68
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 -1, ptr %i.m, align 1, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, i8 0, i64 12, i1 false)
  store ptr @luaH_dummynode, ptr %i.t, align 8, !tbaa !19
  %i.u = icmp sgt i32 %1, 0
  br i1 %i.u, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.v = icmp samesign ugt i32 %1, 67108864
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @_Z14luaG_runerrorLP9lua_StatePKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.w = zext nneg i32 %1 to i64                  ; 4 uses
  %i.x = shl nuw nsw i64 %i.w, 4
  %i.y = tail call noundef ptr @_Z13luaM_realloc_P9lua_StatePvmmh(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i64 noundef %i.x, i8 noundef zeroext %i.j) ; 10 uses
  store ptr %i.y, ptr %i.n, align 8, !tbaa !22
  %i.z = load i32, ptr %i.o, align 8, !tbaa !11   ; 2 uses
  %i.aa = icmp slt i32 %i.z, %1
  br i1 %i.aa, label %.lr.ph.preheader.i, label %_ZL14setarrayvectorP9lua_StateP8LuaTablei.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.ab = sext i32 %i.z to i64                    ; 4 uses
  %i.ac = sub nsw i64 %i.w, %i.ab
  %xtraiter = and i64 %i.ac, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.ab, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.ad = getelementptr inbounds [16 x i8], ptr %i.y, i64 %indvars.iv.i.prol
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  store i32 0, ptr %i.ae, align 4, !tbaa !9
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !70

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.ab, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.af = sub nsw i64 %i.ab, %i.w
  %i.ag = icmp ugt i64 %i.af, -8
  br i1 %i.ag, label %_ZL14setarrayvectorP9lua_StateP8LuaTablei.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ah = getelementptr inbounds [16 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 0, ptr %i.ai, align 4, !tbaa !9
  %i.aj = getelementptr [16 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 28
  store i32 0, ptr %i.ak, align 4, !tbaa !9
  %i.al = getelementptr [16 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.am = getelementptr i8, ptr %i.al, i64 44
  store i32 0, ptr %i.am, align 4, !tbaa !9
  %i.an = getelementptr [16 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.ao = getelementptr i8, ptr %i.an, i64 60
  store i32 0, ptr %i.ao, align 4, !tbaa !9
  %i.ap = getelementptr [16 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aq = getelementptr i8, ptr %i.ap, i64 76
  store i32 0, ptr %i.aq, align 4, !tbaa !9
  %i.ar = getelementptr [16 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.as = getelementptr i8, ptr %i.ar, i64 92
  store i32 0, ptr %i.as, align 4, !tbaa !9
  %i.at = getelementptr [16 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.au = getelementptr i8, ptr %i.at, i64 108
  store i32 0, ptr %i.au, align 4, !tbaa !9
  %i.av = getelementptr [16 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aw = getelementptr i8, ptr %i.av, i64 124
  store i32 0, ptr %i.aw, align 4, !tbaa !9
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.w
  br i1 %exitcond.not.i.7, label %_ZL14setarrayvectorP9lua_StateP8LuaTablei.exit, label %.lr.ph.i, !llvm.loop !34

_ZL14setarrayvectorP9lua_StateP8LuaTablei.exit:   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  store i32 %1, ptr %i.o, align 8, !tbaa !11
  br label %bb.e

bb.e:                                             ; preds = %_ZL14setarrayvectorP9lua_StateP8LuaTablei.exit, %bb.a
  %i.ax = icmp sgt i32 %2, 0
  br i1 %i.ax, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ay = add nsw i32 %2, -1
  %i.az = tail call noundef i32 @_Z9luaO_log2j(i32 noundef %i.ay) ; 2 uses
  %i.ba = add nsw i32 %i.az, 1                    ; 4 uses
  %i.bb = icmp sgt i32 %i.az, 25
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @_Z14luaG_runerrorLP9lua_StatePKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #10
  unreachable

bb.h:                                             ; preds = %bb.f
end_hunk_0
