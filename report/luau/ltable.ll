Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/ltable?download=true
inline.NumInlined: 33
inline.NumDeleted: 16
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZL6resizeP9lua_StateP8LuaTableii:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.bx, align 4, !tbaa !29
  %indvars.iv.next.i73.epil = add nuw nsw i64 %indvars.iv.i72.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter93
  br i1 %epil.iter.cmp.not, label %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit, label %bb.m, !llvm.loop !70

_ZL13setnodevectorP9lua_StateP8LuaTablei.exit:    ; preds = %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit.loopexit.unr-lcssa, %bb.m, %bb.h
  %.026.i = phi i32 [ 0, %bb.h ], [ %i.av, %bb.m ], [ %i.av, %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit.loopexit.unr-lcssa ] ; 2 uses
  %.0.i = phi i32 [ 0, %bb.h ], [ %i.ax, %bb.m ], [ %i.ax, %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit.loopexit.unr-lcssa ]
  %i.by = trunc i32 %.026.i to i8
  store i8 %i.by, ptr %i.e, align 2, !tbaa !26
  %notmask.i = shl nsw i32 -1, %.026.i
  %i.bz = trunc i32 %notmask.i to i8
  %i.ca = xor i8 %i.bz, -1
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 7
  store i8 %i.ca, ptr %i.cb, align 1, !tbaa !32
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %.0.i, ptr %i.cc, align 4, !tbaa !22
  %i.cd = icmp slt i32 %2, %i.d
  br i1 %i.cd, label %bb.n, label %bb.u

bb.n:                                             ; preds = %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit
  store i32 %2, ptr %i.c, align 8, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cg = sext i32 %2 to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.r
  %i.ch = icmp sgt i32 %2, -1
  br i1 %i.ch, label %bb.s, label %bb.t

bb.p:                                             ; preds = %bb.n, %bb.r
  %indvars.iv = phi i64 [ %i.cg, %bb.n ], [ %indvars.iv.next.pre-phi, %bb.r ] ; 3 uses
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !25
  %i.cj = getelementptr inbounds [16 x i8], ptr %i.ci, i64 %indvars.iv ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !14
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
  store double %i.cp, ptr %4, align 8, !tbaa !22
  store i32 3, ptr %i.cf, align 4, !tbaa !14
  %i.cq = call fastcc noundef ptr @_ZL6newkeyP9lua_StateP8LuaTablePK10lua_TValue(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge86, %bb.q
  %lftr.wideiv.pre-phi = phi i32 [ %.pre87, %._crit_edge86 ], [ %i.co, %bb.q ]
  %indvars.iv.next.pre-phi = phi i64 [ %.pre, %._crit_edge86 ], [ %i.cn, %bb.q ]
  %exitcond.not = icmp eq i32 %lftr.wideiv.pre-phi, %i.d
  br i1 %exitcond.not, label %bb.o, label %bb.p, !llvm.loop !71

bb.s:                                             ; preds = %bb.o
  %i.cr = zext nneg i32 %2 to i64
  %i.cs = sext i32 %i.d to i64
  %i.ct = shl nuw nsw i64 %i.cs, 4
  %i.cu = load ptr, ptr %i.ce, align 8, !tbaa !25
  %i.cv = shl nuw nsw i64 %i.cr, 4
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cx = load i8, ptr %i.cw, align 2, !tbaa !30
  %i.cy = call noundef ptr @_Z13luaM_realloc_P9lua_StatePvmmh(ptr noundef %0, ptr noundef %i.cu, i64 noundef %i.ct, i64 noundef %i.cv, i8 noundef zeroext %i.cx)
  store ptr %i.cy, ptr %i.ce, align 8, !tbaa !25
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
  %i.de = and i64 %indvars.iv.next84, 4294967295
  %i.df = getelementptr inbounds nuw [32 x i8], ptr %i.i, i64 %i.de ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !29
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !22 ; 2 uses
  store i64 %i.dk, ptr %5, align 8, !tbaa !22
  %i.dl = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dm = load i32, ptr %i.dl, align 8
  store i32 %i.dm, ptr %i.da, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 28
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = and i32 %i.do, 15                       ; 2 uses
  store i32 %i.dp, ptr %i.db, align 4, !tbaa !14
  %i.dq = icmp eq i32 %i.dp, 3
  br i1 %i.dq, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.dr = bitcast i64 %i.dk to double             ; 2 uses
  %i.ds = fptosi double %i.dr to i32              ; 2 uses
  %i.dt = sitofp i32 %i.ds to double
  %i.du = fcmp oeq double %i.dr, %i.dt
  br i1 %i.du, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.dv = add i32 %i.ds, -1                       ; 2 uses
  %i.dw = load i32, ptr %i.c, align 8, !tbaa !21
  %i.dx = icmp ult i32 %i.dv, %i.dw
  br i1 %i.dx, label %bb.z, label %.thread

bb.z:                                             ; preds = %bb.y
  %i.dy = load ptr, ptr %i.dc, align 8, !tbaa !25
  %i.dz = sext i32 %i.dv to i64
  %i.ea = getelementptr inbounds [16 x i8], ptr %i.dy, i64 %i.dz
  br label %_ZL13arrayornewkeyP9lua_StateP8LuaTablePK10lua_TValue.exit

.thread:                                          ; preds = %bb.x, %bb.y, %bb.w
  %i.eb = call fastcc noundef ptr @_ZL6newkeyP9lua_StateP8LuaTablePK10lua_TValue(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5), !inline_history !72
  br label %_ZL13arrayornewkeyP9lua_StateP8LuaTablePK10lua_TValue.exit

_ZL13arrayornewkeyP9lua_StateP8LuaTablePK10lua_TValue.exit: ; preds = %bb.z, %.thread
  %.1.i = phi ptr [ %i.eb, %.thread ], [ %i.ea, %bb.z ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.1.i, ptr noundef nonnull align 8 dereferenceable(16) %i.df, i64 16, i1 false), !tbaa.struct !74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.aa

bb.aa:                                            ; preds = %_ZL13arrayornewkeyP9lua_StateP8LuaTablePK10lua_TValue.exit, %bb.v
  %i.ec = trunc nuw i64 %indvars.iv83 to i32
  %i.ed = icmp sgt i32 %i.ec, 1
  br i1 %i.ed, label %bb.v, label %._crit_edge, !llvm.loop !73

bb.ab:                                            ; preds = %._crit_edge
  %i.ee = sext i32 %i.cz to i64
  %i.ef = shl nsw i64 %i.ee, 5
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.eh = load i8, ptr %i.eg, align 2, !tbaa !30
  call void @_Z10luaM_free_P9lua_StatePvmh(ptr noundef %0, ptr noundef %i.i, i64 noundef %i.ef, i8 noundef zeroext %i.eh)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z15luaH_resizehashP9lua_StateP8LuaTablei(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21
  tail call fastcc void @_ZL6resizeP9lua_StateP8LuaTableii(ptr noundef %0, ptr noundef %1, i32 noundef %i.b, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z8luaH_newP9lua_Stateii(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !41
  %i.c = tail call noundef ptr @_Z12luaM_newgco_P9lua_Statemh(ptr noundef %0, i64 noundef 48, i8 noundef zeroext %i.b) ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i8, ptr %i.f, align 16, !tbaa !56
  %i.h = and i8 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.h, ptr %i.i, align 1, !tbaa !57
  store i8 7, ptr %i.c, align 8, !tbaa !58
  %i.j = load i8, ptr %i.a, align 4, !tbaa !41    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  store i8 %i.j, ptr %i.k, align 2, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.l, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 -1, ptr %i.m, align 1, !tbaa !60
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !25
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %3 = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.r, i8 0, i64 12, i1 false)
  store ptr @luaH_dummynode, ptr %3, align 8, !tbaa !23
  %i.t = icmp sgt i32 %1, 0
  br i1 %i.t, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.u = icmp samesign ugt i32 %1, 67108864
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @_Z14luaG_runerrorLP9lua_StatePKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #10
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.v = zext nneg i32 %1 to i64                  ; 4 uses
  %i.w = shl nuw nsw i64 %i.v, 4
  %i.x = tail call noundef ptr @_Z13luaM_realloc_P9lua_StatePvmmh(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0, i64 noundef %i.w, i8 noundef zeroext %i.j) ; 10 uses
  store ptr %i.x, ptr %i.n, align 8, !tbaa !25
  %i.y = load i32, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.z = icmp slt i32 %i.y, %1
  br i1 %i.z, label %.lr.ph.preheader.i, label %_ZL14setarrayvectorP9lua_StateP8LuaTablei.exit

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.aa = sext i32 %i.y to i64                    ; 4 uses
  %i.ab = sub nsw i64 %i.v, %i.aa
  %xtraiter = and i64 %i.ab, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %i.aa, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.ac = getelementptr inbounds [16 x i8], ptr %i.x, i64 %indvars.iv.i.prol
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !14
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !75

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i.unr = phi i64 [ %i.aa, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ae = sub nsw i64 %i.aa, %i.v
  %i.af = icmp ugt i64 %i.ae, -8
  br i1 %i.af, label %_ZL14setarrayvectorP9lua_StateP8LuaTablei.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !14
  %i.ai = getelementptr [16 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.aj = getelementptr i8, ptr %i.ai, i64 28
  store i32 0, ptr %i.aj, align 4, !tbaa !14
  %i.ak = getelementptr [16 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.al = getelementptr i8, ptr %i.ak, i64 44
  store i32 0, ptr %i.al, align 4, !tbaa !14
  %i.am = getelementptr [16 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.an = getelementptr i8, ptr %i.am, i64 60
  store i32 0, ptr %i.an, align 4, !tbaa !14
  %i.ao = getelementptr [16 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ap = getelementptr i8, ptr %i.ao, i64 76
  store i32 0, ptr %i.ap, align 4, !tbaa !14
  %i.aq = getelementptr [16 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 92
  store i32 0, ptr %i.ar, align 4, !tbaa !14
  %i.as = getelementptr [16 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.at = getelementptr i8, ptr %i.as, i64 108
  store i32 0, ptr %i.at, align 4, !tbaa !14
  %i.au = getelementptr [16 x i8], ptr %i.x, i64 %indvars.iv.i
  %i.av = getelementptr i8, ptr %i.au, i64 124
  store i32 0, ptr %i.av, align 4, !tbaa !14
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %i.v
  br i1 %exitcond.not.i.7, label %_ZL14setarrayvectorP9lua_StateP8LuaTablei.exit, label %.lr.ph.i, !llvm.loop !1

_ZL14setarrayvectorP9lua_StateP8LuaTablei.exit:   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.d
  store i32 %1, ptr %i.o, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %_ZL14setarrayvectorP9lua_StateP8LuaTablei.exit, %bb.a
  %i.aw = icmp sgt i32 %2, 0
  br i1 %i.aw, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ax = add nsw i32 %2, -1
  %i.ay = tail call noundef i32 @_Z9luaO_log2j(i32 noundef %i.ax) ; 2 uses
  %i.az = add nsw i32 %i.ay, 1                    ; 4 uses
  %i.ba = icmp sgt i32 %i.ay, 25
  br i1 %i.ba, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @_Z14luaG_runerrorLP9lua_StatePKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.4) #10
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bb = shl nuw nsw i32 1, %i.az                ; 2 uses
  %i.bc = zext nneg i32 %i.bb to i64              ; 3 uses
  %i.bd = shl nuw nsw i64 %i.bc, 5
  %i.be = load i8, ptr %i.k, align 2, !tbaa !30
  %i.bf = tail call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef nonnull %0, i64 noundef %i.bd, i8 noundef zeroext %i.be)
  store ptr %i.bf, ptr %3, align 8, !tbaa !23
  %xtraiter31 = and i64 %i.bc, 3                  ; 3 uses
  %i.bg = icmp ult i32 %i.az, 2
  br i1 %i.bg, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.h
  %unroll_iter = and i64 %i.bc, 2147483644
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.new
  %indvars.iv.i26 = phi i64 [ 0, %.new ], [ %indvars.iv.next.i27.3, %bb.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.i ]
  %i.bh = load ptr, ptr %3, align 8, !tbaa !23
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.bh, i64 %indvars.iv.i26 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 28
  store i32 0, ptr %i.bj, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !29
  %i.bl = load ptr, ptr %3, align 8, !tbaa !23
  %i.bm = getelementptr inbounds nuw [32 x i8], ptr %i.bl, i64 %indvars.iv.i26 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 60
  store i32 0, ptr %i.bn, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 44
  store i32 0, ptr %i.bo, align 4, !tbaa !29
  %i.bp = load ptr, ptr %3, align 8, !tbaa !23
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.bp, i64 %indvars.iv.i26 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 92
  store i32 0, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 76
  store i32 0, ptr %i.bs, align 4, !tbaa !29
  %i.bt = load ptr, ptr %3, align 8, !tbaa !23
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bt, i64 %indvars.iv.i26 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 124
  store i32 0, ptr %i.bv, align 4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 108
  store i32 0, ptr %i.bw, align 4, !tbaa !29
  %indvars.iv.next.i27.3 = add nuw nsw i64 %indvars.iv.i26, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit.unr-lcssa, label %bb.i, !llvm.loop !2

_ZL13setnodevectorP9lua_StateP8LuaTablei.exit.unr-lcssa: ; preds = %bb.i
  %lcmp.mod32.not = icmp eq i64 %xtraiter31, 0
  br i1 %lcmp.mod32.not, label %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit.unr-lcssa, %bb.h
  %indvars.iv.i26.epil.init = phi i64 [ 0, %bb.h ], [ %indvars.iv.next.i27.3, %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit.unr-lcssa ]
  %lcmp.mod33 = icmp ne i64 %xtraiter31, 0
  tail call void @llvm.assume(i1 %lcmp.mod33)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader
  %indvars.iv.i26.epil = phi i64 [ %indvars.iv.i26.epil.init, %.epil.preheader ], [ %indvars.iv.next.i27.epil, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.j ]
  %i.bx = load ptr, ptr %3, align 8, !tbaa !23
  %i.by = getelementptr inbounds nuw [32 x i8], ptr %i.bx, i64 %indvars.iv.i26.epil ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 28
  store i32 0, ptr %i.bz, align 4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !29
  %indvars.iv.next.i27.epil = add nuw nsw i64 %indvars.iv.i26.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter31
  br i1 %epil.iter.cmp.not, label %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit, label %bb.j, !llvm.loop !76

_ZL13setnodevectorP9lua_StateP8LuaTablei.exit:    ; preds = %bb.j, %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit.unr-lcssa
  %i.cb = trunc i32 %i.az to i8
  store i8 %i.cb, ptr %i.q, align 2, !tbaa !26
  %notmask.i = shl nsw i32 -1, %i.az
  %i.cc = trunc i32 %notmask.i to i8
  %i.cd = xor i8 %i.cc, -1
  store i8 %i.cd, ptr %i.s, align 1, !tbaa !32
  store i32 %i.bb, ptr %i.p, align 4, !tbaa !22
  br label %bb.k

bb.k:                                             ; preds = %_ZL13setnodevectorP9lua_StateP8LuaTablei.exit, %bb.e
  ret ptr %i.c
}

declare hidden noundef ptr @_Z12luaM_newgco_P9lua_Statemh(ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_Z9luaH_freeP9lua_StateP8LuaTableP8lua_Page(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.b, @luaH_dummynode
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.d = load i8, ptr %i.c, align 2, !tbaa !26
  %i.e = zext nneg i8 %i.d to i32
  %i.f = shl nuw i32 1, %i.e
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 5
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.j = load i8, ptr %i.i, align 2, !tbaa !30
  tail call void @_Z10luaM_free_P9lua_StatePvmh(ptr noundef %0, ptr noundef %i.b, i64 noundef %i.h, i8 noundef zeroext %i.j)
  br label %bb.c
end_hunk_0
begin_hunk_1_@_ZL6newkeyP9lua_StateP8LuaTablePK10lua_TValue:bb.a
  store i32 %i.cv, ptr %i.ct, align 8
  %i.cw = load i32, ptr %i.a, align 4, !tbaa !14
  %i.cx = getelementptr inbounds nuw i8, ptr %.275, i64 28 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = and i32 %i.cw, 15
  %i.da = and i32 %i.cy, -16
  %i.db = or disjoint i32 %i.da, %i.cz
  store i32 %i.db, ptr %i.cx, align 4
  %i.dc = load i32, ptr %i.a, align 4, !tbaa !14
  %i.dd = icmp sgt i32 %i.dc, 5
  br i1 %i.dd, label %bb.t, label %_ZL13arrayornewkeyP9lua_StateP8LuaTablePK10lua_TValue.exit

bb.t:                                             ; preds = %.loopexit
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !22
  %i.dg = and i8 %i.df, 4
  %.not95 = icmp eq i8 %i.dg, 0
  br i1 %.not95, label %_ZL13arrayornewkeyP9lua_StateP8LuaTablePK10lua_TValue.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dh = load ptr, ptr %2, align 8, !tbaa !22    ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !22
  %i.dk = and i8 %i.dj, 3
  %.not96 = icmp eq i8 %i.dk, 0
  br i1 %.not96, label %_ZL13arrayornewkeyP9lua_StateP8LuaTablePK10lua_TValue.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_Z17luaC_barriertableP9lua_StateP8LuaTableP8GCObject(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.dh)
  br label %_ZL13arrayornewkeyP9lua_StateP8LuaTablePK10lua_TValue.exit

_ZL13arrayornewkeyP9lua_StateP8LuaTablePK10lua_TValue.exit: ; preds = %bb.m, %bb.f, %bb.v, %bb.u, %bb.t, %.loopexit
  %.2 = phi ptr [ %.275, %.loopexit ], [ %i.x, %bb.f ], [ %.275, %bb.v ], [ %.275, %bb.u ], [ %.275, %bb.t ], [ %i.az, %bb.m ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z11luaH_setnumP9lua_StateP8LuaTablei(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %i.a = add i32 %2, -1                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !21
  %i.d = icmp ult i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25
  %i.g = sext i32 %i.a to i64
  %i.h = getelementptr inbounds [16 x i8], ptr %i.f, i64 %i.g
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.j, @luaH_dummynode
  %.pre = sitofp i32 %2 to double                 ; 3 uses
  br i1 %.not.i, label %_Z11luaH_getnumP8LuaTablei.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %1, i64 6
  %.val.i = load i8, ptr %i.k, align 2, !tbaa !26
  %i.l = bitcast double %.pre to i64              ; 2 uses
  %.0.extract.trunc.i.i = trunc i64 %i.l to i32
  %.4.extract.shift.i.i = lshr i64 %i.l, 32
  %.4.extract.trunc.i.i = trunc nuw i64 %.4.extract.shift.i.i to i32
  %i.m = and i32 %.4.extract.trunc.i.i, 2147483647 ; 2 uses
  %i.n = lshr i32 %i.m, 18
  %i.o = xor i32 %i.n, %.0.extract.trunc.i.i
  %i.p = mul i32 %i.o, 1540483477                 ; 2 uses
  %i.q = lshr i32 %i.p, 22
  %i.r = xor i32 %i.q, %i.m
  %i.s = mul i32 %i.r, 1540483477                 ; 2 uses
  %i.t = lshr i32 %i.s, 17
  %i.u = xor i32 %i.t, %i.p
  %i.v = mul i32 %i.u, 1540483477
  %i.w = lshr i32 %i.v, 19
  %i.x = xor i32 %i.w, %i.s
  %i.y = mul i32 %i.x, 1540483477
  %i.z = zext nneg i8 %.val.i to i32
  %notmask.i.i = shl nsw i32 -1, %i.z
  %i.aa = xor i32 %notmask.i.i, -1
  %i.ab = and i32 %i.y, %i.aa
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.ac
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.0.i = phi ptr [ %i.ad, %bb.d ], [ %i.ao, %bb.h ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.af = load i32, ptr %i.ae, align 4            ; 2 uses
  %i.ag = and i32 %i.af, 15
  %i.ah = icmp eq i32 %i.ag, 3
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !22
  %i.ak = fcmp oeq double %i.aj, %.pre
  br i1 %i.ak, label %_Z11luaH_getnumP8LuaTablei.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.al = ashr i32 %i.af, 4                       ; 2 uses
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %_Z11luaH_getnumP8LuaTablei.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = sext i32 %i.al to i64
  %i.ao = getelementptr inbounds [32 x i8], ptr %.0.i, i64 %i.an
  br label %bb.e, !llvm.loop !0

_Z11luaH_getnumP8LuaTablei.exit:                  ; preds = %bb.f
  %.not = icmp eq ptr %.0.i, @luaO_nilobject_
  br i1 %.not, label %_Z11luaH_getnumP8LuaTablei.exit.thread, label %bb.i

_Z11luaH_getnumP8LuaTablei.exit.thread:           ; preds = %bb.g, %bb.c, %_Z11luaH_getnumP8LuaTablei.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store double %.pre, ptr %3, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 3, ptr %i.ap, align 4, !tbaa !14
  %i.aq = call fastcc noundef ptr @_ZL6newkeyP9lua_StateP8LuaTablePK10lua_TValue(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.i

bb.i:                                             ; preds = %_Z11luaH_getnumP8LuaTablei.exit.thread, %_Z11luaH_getnumP8LuaTablei.exit, %bb.b
  %.1 = phi ptr [ %i.h, %bb.b ], [ %i.aq, %_Z11luaH_getnumP8LuaTablei.exit.thread ], [ %.0.i, %_Z11luaH_getnumP8LuaTablei.exit ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z11luaH_setstrP9lua_StateP8LuaTableP7TString(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.f = load i8, ptr %i.e, align 2, !tbaa !26
  %i.g = zext nneg i8 %i.f to i32
  %notmask.i = shl nsw i32 -1, %i.g
  %i.h = xor i32 %notmask.i, -1
  %i.i = and i32 %i.d, %i.h
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.j
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.0.i = phi ptr [ %i.k, %bb.a ], [ %i.w, %bb.e ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 28
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = and i32 %i.m, 15
  %i.o = icmp eq i32 %i.n, 6
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !22
  %i.r = icmp eq ptr %i.q, %2
  br i1 %i.r, label %_Z11luaH_getstrP8LuaTableP7TString.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.s = ashr i32 %i.m, 4                         ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %_Z11luaH_getstrP8LuaTableP7TString.exit.thread, label %bb.e

_Z11luaH_getstrP8LuaTableP7TString.exit.thread:   ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 0, ptr %i.u, align 1, !tbaa !60
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds [32 x i8], ptr %.0.i, i64 %i.v
  br label %bb.b, !llvm.loop !3

_Z11luaH_getstrP8LuaTableP7TString.exit:          ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 3
  store i8 0, ptr %i.x, align 1, !tbaa !60
  %.not = icmp eq ptr %.0.i, @luaO_nilobject_
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_Z11luaH_getstrP8LuaTableP7TString.exit.thread, %_Z11luaH_getstrP8LuaTableP7TString.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store ptr %2, ptr %3, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 6, ptr %i.y, align 4, !tbaa !14
  %i.z = call fastcc noundef ptr @_ZL6newkeyP9lua_StateP8LuaTablePK10lua_TValue(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.g

bb.g:                                             ; preds = %_Z11luaH_getstrP8LuaTableP7TString.exit, %bb.f
  %.0 = phi ptr [ %i.z, %bb.f ], [ %.0.i, %_Z11luaH_getstrP8LuaTableP7TString.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z9luaH_setpP9lua_StateP8LuaTablePvi(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.lua_TValue, align 8         ; 6 uses
  %i.a = getelementptr i8, ptr %1, i64 6
  %.val.i = load i8, ptr %i.a, align 2, !tbaa !26
  %i.b = getelementptr i8, ptr %1, i64 32
  %.val17.i = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.c = ptrtoint ptr %2 to i64
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = lshr i32 %i.d, 16
  %i.f = xor i32 %i.e, %i.d
  %i.g = mul i32 %i.f, -2048144789                ; 2 uses
  %i.h = lshr i32 %i.g, 13
  %i.i = xor i32 %i.h, %i.g
  %i.j = mul i32 %i.i, -1028477387                ; 2 uses
  %i.k = lshr i32 %i.j, 16
  %i.l = xor i32 %i.k, %i.j
  %i.m = zext nneg i8 %.val.i to i32
  %notmask.i.i = shl nsw i32 -1, %i.m
  %i.n = xor i32 %notmask.i.i, -1
  %i.o = and i32 %i.l, %i.n
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %.val17.i, i64 %i.p
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.013.i = phi ptr [ %i.q, %bb.a ], [ %i.ae, %bb.f ] ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i, i64 28
  %i.s = load i32, ptr %i.r, align 4              ; 2 uses
  %i.t = and i32 %i.s, 15
  %i.u = icmp eq i32 %i.t, 2
  br i1 %i.u, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.013.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !22
  %i.x = icmp eq ptr %i.w, %2
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %.013.i, i64 24
  %i.z = load i32, ptr %i.y, align 8, !tbaa !33
  %i.aa = icmp eq i32 %i.z, %3
  br i1 %i.aa, label %_Z9luaH_getpP8LuaTablePvi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ab = ashr i32 %i.s, 4                        ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_Z9luaH_getpP8LuaTablePvi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds [32 x i8], ptr %.013.i, i64 %i.ad
  br label %bb.b

_Z9luaH_getpP8LuaTablePvi.exit:                   ; preds = %bb.d
  %.not = icmp eq ptr %.013.i, @luaO_nilobject_
  br i1 %.not, label %_Z9luaH_getpP8LuaTablePvi.exit.thread, label %bb.g

_Z9luaH_getpP8LuaTablePvi.exit.thread:            ; preds = %bb.e, %_Z9luaH_getpP8LuaTablePvi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr %2, ptr %4, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %3, ptr %i.af, align 8, !tbaa !33
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store i32 2, ptr %5, align 4, !tbaa !14
  %i.ag = call fastcc noundef ptr @_ZL6newkeyP9lua_StateP8LuaTablePK10lua_TValue(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.g

bb.g:                                             ; preds = %_Z9luaH_getpP8LuaTablePvi.exit, %_Z9luaH_getpP8LuaTablePvi.exit.thread
  %.0 = phi ptr [ %i.ag, %_Z9luaH_getpP8LuaTablePvi.exit.thread ], [ %.013.i, %_Z9luaH_getpP8LuaTablePvi.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef i32 @_Z9luaH_getnP8LuaTable(ptr nofree noundef captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 5 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.d = sub nsw i32 0, %i.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !21   ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZL15updateaboundaryP8LuaTablei.exit

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = phi i32 [ %.pre, %.thread ], [ %i.f, %bb.b ] ; 10 uses
  %i.i = phi i32 [ %i.d, %.thread ], [ %i.f, %bb.b ] ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !25   ; 5 uses
  %i.l = sext i32 %i.h to i64
  %i.m = getelementptr [16 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !14
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.s = icmp eq ptr %i.r, @luaH_dummynode
  br i1 %i.s, label %_ZL15updateaboundaryP8LuaTablei.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = icmp slt i32 %i.i, %i.h
  br i1 %i.t, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.u = zext nneg i32 %i.i to i64
  %i.v = getelementptr [16 x i8], ptr %i.k, i64 %i.u ; 3 uses
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !14
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_ZL15updateaboundaryP8LuaTablei.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ac = add nsw i32 %i.i, -1                    ; 3 uses
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !14
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.ai = icmp samesign ugt i32 %i.i, 1
  br i1 %i.ai, label %bb.j, label %_ZL15updateaboundaryP8LuaTablei.exit.thread.thread

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr i8, ptr %i.v, i64 -20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !14
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %_ZL15updateaboundaryP8LuaTablei.exit.thread.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = icmp slt i32 %i.b, 1
  br i1 %i.am, label %bb.l, label %_ZL15updateaboundaryP8LuaTablei.exit

bb.l:                                             ; preds = %bb.k
  %i.an = sub nsw i32 1, %i.i
  br label %_ZL15updateaboundaryP8LuaTablei.exit.sink.split

bb.m:                                             ; preds = %bb.e, %bb.h
  %i.ao = add nuw nsw i32 %i.i, 1                 ; 4 uses
  %i.ap = icmp slt i32 %i.ao, %i.h
  br i1 %i.ap, label %bb.n, label %_ZL15updateaboundaryP8LuaTablei.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.aq = zext nneg i32 %i.i to i64
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4, !tbaa !14
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZL15updateaboundaryP8LuaTablei.exit.thread.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = zext nneg i32 %i.ao to i64
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !14
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.p, label %_ZL15updateaboundaryP8LuaTablei.exit.thread.thread

bb.p:                                             ; preds = %bb.o
  %i.ba = icmp slt i32 %i.b, 1
  br i1 %i.ba, label %bb.q, label %_ZL15updateaboundaryP8LuaTablei.exit

bb.q:                                             ; preds = %bb.p
  %i.bb = xor i32 %i.i, -1
  br label %_ZL15updateaboundaryP8LuaTablei.exit.sink.split

_ZL15updateaboundaryP8LuaTablei.exit.thread:      ; preds = %bb.m
  %i.bc = icmp sgt i32 %i.h, 0
  br i1 %i.bc, label %_ZL15updateaboundaryP8LuaTablei.exit.thread.thread, label %_ZL15updateaboundaryP8LuaTablei.exit

_ZL15updateaboundaryP8LuaTablei.exit.thread.thread: ; preds = %bb.n, %bb.o, %bb.i, %bb.j, %_ZL15updateaboundaryP8LuaTablei.exit.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !25 ; 4 uses
  %i.bf = zext nneg i32 %i.h to i64
  %i.bg = getelementptr [16 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 -4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !14
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %.preheader, label %_ZL15updateaboundaryP8LuaTablei.exit

.preheader:                                       ; preds = %_ZL15updateaboundaryP8LuaTablei.exit.thread.thread
  %i.bk = lshr i32 %i.h, 1                        ; 2 uses
  %.not5463 = icmp eq i32 %i.bk, 0
  br i1 %.not5463, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.bl = phi i32 [ %i.bt, %.lr.ph ], [ %i.bk, %.preheader ] ; 2 uses
  %.065 = phi i32 [ %i.bs, %.lr.ph ], [ %i.h, %.preheader ]
  %.04464 = phi ptr [ %i.br, %.lr.ph ], [ %i.be, %.preheader ] ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [16 x i8], ptr %.04464, i64 %i.bm ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !14
  %i.bq = icmp eq i32 %i.bp, 0
  %i.br = select i1 %i.bq, ptr %.04464, ptr %i.bn ; 2 uses
  %i.bs = sub nsw i32 %.065, %i.bl                ; 2 uses
  %i.bt = ashr i32 %i.bs, 1                       ; 2 uses
  %.not54 = icmp eq i32 %i.bt, 0
  br i1 %.not54, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.044.lcssa = phi ptr [ %i.be, %.preheader ], [ %i.br, %.lr.ph ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.044.lcssa, i64 12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !14
  %i.bw = icmp ne i32 %i.bv, 0
  %i.bx = zext i1 %i.bw to i32
  %i.by = ptrtoint ptr %.044.lcssa to i64
  %i.bz = ptrtoint ptr %i.be to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = lshr exact i64 %i.ca, 4
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = add nsw i32 %i.bx, %i.cc                ; 3 uses
  %i.ce = icmp slt i32 %i.b, 1
  br i1 %i.ce, label %bb.r, label %_ZL15updateaboundaryP8LuaTablei.exit

bb.r:                                             ; preds = %._crit_edge
  %i.cf = sub nsw i32 0, %i.cd
  br label %_ZL15updateaboundaryP8LuaTablei.exit.sink.split

_ZL15updateaboundaryP8LuaTablei.exit.sink.split:  ; preds = %bb.r, %bb.l, %bb.q
  %.sink = phi i32 [ %i.bb, %bb.q ], [ %i.an, %bb.l ], [ %i.cf, %bb.r ]
  %.2.ph = phi i32 [ %i.ao, %bb.q ], [ %i.ac, %bb.l ], [ %i.cd, %bb.r ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !22
  br label %_ZL15updateaboundaryP8LuaTablei.exit

_ZL15updateaboundaryP8LuaTablei.exit:             ; preds = %_ZL15updateaboundaryP8LuaTablei.exit.sink.split, %bb.b, %bb.p, %bb.k, %._crit_edge, %_ZL15updateaboundaryP8LuaTablei.exit.thread.thread, %_ZL15updateaboundaryP8LuaTablei.exit.thread, %bb.g, %bb.d
  %.2 = phi i32 [ %i.i, %bb.g ], [ %i.h, %_ZL15updateaboundaryP8LuaTablei.exit.thread ], [ %i.h, %bb.d ], [ %i.cd, %._crit_edge ], [ %i.f, %bb.b ], [ %i.h, %_ZL15updateaboundaryP8LuaTablei.exit.thread.thread ], [ %i.ao, %bb.p ], [ %i.ac, %bb.k ], [ %.2.ph, %_ZL15updateaboundaryP8LuaTablei.exit.sink.split ]
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z10luaH_cloneP9lua_StateP8LuaTable(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !41
  %i.c = tail call noundef ptr @_Z12luaM_newgco_P9lua_Statemh(ptr noundef %0, i64 noundef 48, i8 noundef zeroext %i.b) ; 13 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i8, ptr %i.f, align 16, !tbaa !56
  %i.h = and i8 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.h, ptr %i.i, align 1, !tbaa !57
  store i8 7, ptr %i.c, align 8, !tbaa !58
  %i.j = load i8, ptr %i.a, align 4, !tbaa !41    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  store i8 %i.j, ptr %i.k, align 2, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !59
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.p = load i8, ptr %i.o, align 1, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 %i.p, ptr %i.q, align 1, !tbaa !60
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %2 = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 0, ptr %i.v, align 4
  store ptr @luaH_dummynode, ptr %2, align 8, !tbaa !23
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 4 uses
  store i32 0, ptr %i.w, align 4, !tbaa !22
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !21   ; 3 uses
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.z = icmp sgt i32 %i.y, -1
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = zext nneg i32 %i.y to i64
  %i.ab = shl nuw nsw i64 %i.aa, 4
  %i.ac = tail call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef nonnull %0, i64 noundef %i.ab, i8 noundef zeroext %i.j) ; 2 uses
  store ptr %i.ac, ptr %i.r, align 8, !tbaa !25
  %i.ad = load i32, ptr %i.w, align 4, !tbaa !22
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %bb.e, label %bb.i

bb.d:                                             ; preds = %bb.b
  tail call void @_Z11luaM_toobigP9lua_State(ptr noundef nonnull %0) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !22 ; 2 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ai = sub nsw i32 0, %i.ag
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.aj = load i32, ptr %i.x, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = phi i32 [ %i.ai, %bb.f ], [ %i.aj, %bb.g ]
  %i.al = sub nsw i32 0, %i.ak
  store i32 %i.al, ptr %i.w, align 4, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.c
  %i.am = load i32, ptr %i.x, align 8, !tbaa !21  ; 2 uses
  store i32 %i.am, ptr %i.s, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25
  %i.ap = sext i32 %i.am to i64
  %i.aq = shl nsw i64 %i.ap, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ac, ptr align 8 %i.ao, i64 %i.aq, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !23
  %.not56 = icmp eq ptr %i.as, @luaH_dummynode
  br i1 %.not56, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 2 uses
  %i.au = load i8, ptr %i.at, align 2, !tbaa !26  ; 2 uses
  %.not57 = icmp eq i8 %i.au, 31
  br i1 %.not57, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = zext nneg i8 %i.au to i32
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = sext i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 5                ; 2 uses
  %i.az = load i8, ptr %i.k, align 2, !tbaa !30
  %i.ba = tail call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef nonnull %0, i64 noundef %i.ay, i8 noundef zeroext %i.az) ; 2 uses
  store ptr %i.ba, ptr %2, align 8, !tbaa !23
  %i.bb = load i8, ptr %i.at, align 2, !tbaa !26
  store i8 %i.bb, ptr %i.t, align 2, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !32
  store i8 %i.bd, ptr %i.u, align 1, !tbaa !32
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ba, ptr noundef nonnull align 8 dereferenceable(1) %i.be, i64 %i.ay, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !22
  store i32 %i.bg, ptr %i.w, align 4, !tbaa !22
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @_Z11luaM_toobigP9lua_State(ptr noundef nonnull %0) #10
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.j
  ret ptr %i.c
}

declare hidden noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noreturn
declare hidden void @_Z11luaM_toobigP9lua_State(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_Z10luaH_clearP8LuaTable(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !25   ; 9 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.f = icmp ult i32 %i.b, 8
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod31 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod31)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv.epil
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !14
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !80

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !22
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.c ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.c ]
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !14
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  store i32 0, ptr %i.o, align 4, !tbaa !14
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 44
  store i32 0, ptr %i.q, align 4, !tbaa !14
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 60
  store i32 0, ptr %i.s, align 4, !tbaa !14
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 76
  store i32 0, ptr %i.u, align 4, !tbaa !14
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 92
  store i32 0, ptr %i.w, align 4, !tbaa !14
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 108
  store i32 0, ptr %i.y, align 4, !tbaa !14
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 124
  store i32 0, ptr %i.aa, align 4, !tbaa !14
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !81

bb.d:                                             ; preds = %._crit_edge
  store i32 0, ptr %i.i, align 4, !tbaa !22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
  %.not = icmp eq ptr %i.ac, @luaH_dummynode
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !26  ; 2 uses
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = shl nuw i32 1, %i.af                    ; 3 uses
  store i32 %i.ag, ptr %i.i, align 4, !tbaa !22
  %.not24 = icmp eq i8 %i.ae, 31
  br i1 %.not24, label %.loopexit, label %.lr.ph23.preheader

.lr.ph23.preheader:                               ; preds = %bb.f
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 1)
  %wide.trip.count29 = zext nneg i32 %smax to i64 ; 2 uses
  %xtraiter32 = and i64 %wide.trip.count29, 3     ; 3 uses
  %i.ah = icmp slt i32 %i.ag, 4
end_hunk_1
