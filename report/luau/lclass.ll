Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lclass?download=true
inline.NumInlined: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_Z22luaR_addclassmetatableP9lua_StateP9LuauClass:bb.a
  store i8 1, ptr %i.t, align 4, !tbaa !55
  ret void
}

declare hidden noundef ptr @_Z8luaH_newP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare hidden noundef ptr @_Z16luaF_newCclosureP9lua_StateiP8LuaTable(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_Z17luaR_createobjectP9lua_State(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.lua_TValue, align 8         ; 5 uses
  tail call void @_Z14luaL_checktypeP9lua_Stateii(ptr noundef %0, i32 noundef 1, i32 noundef 12)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !20
  %i.f = tail call noundef ptr @_Z12luaM_newgco_P9lua_Statemh(ptr noundef %0, i64 noundef 40, i8 noundef zeroext %i.e) ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i8, ptr %i.i, align 16, !tbaa !36
  %i.k = and i8 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 2 uses
  store i8 %i.k, ptr %i.l, align 1, !tbaa !75
  store i8 13, ptr %i.f, align 8, !tbaa !76
  %i.m = load i8, ptr %i.d, align 4, !tbaa !20    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 %i.m, ptr %i.n, align 2, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.c, ptr %i.o, align 8, !tbaa !77
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 5 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !59
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 4
  %i.t = tail call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef %0, i64 noundef %i.s, i8 noundef zeroext %i.m)
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !60
  %i.v = load i32, ptr %i.p, align 8, !tbaa !59
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 %i.v, ptr %i.w, align 8, !tbaa !61
  %i.x = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0)
  %i.y = load i32, ptr %i.p, align 8, !tbaa !59   ; 3 uses
  %.not58 = icmp eq i32 %i.y, 0
  br i1 %.not58, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.z = load ptr, ptr %i.u, align 8, !tbaa !60   ; 9 uses
  %wide.trip.count = zext i32 %i.y to i64         ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.aa = icmp ult i32 %i.y, 8
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 4294967288
  br label %bb.c

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod64 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod64)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv.epil
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !52
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.b, !llvm.loop !71

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.b, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !78 ; 2 uses
  store ptr %i.f, ptr %i.ae, align 8, !tbaa !44
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 13, ptr %i.af, align 4, !tbaa !52
  %i.ag = load ptr, ptr %i.ad, align 8, !tbaa !78 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  store i32 0, ptr %i.ah, align 4, !tbaa !52
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 3 uses
  store ptr %i.ai, ptr %i.ad, align 8, !tbaa !78
  switch i32 %i.x, label %bb.e [
    i32 1, label %.loopexit
    i32 2, label %.preheader
  ]

.preheader:                                       ; preds = %._crit_edge
  %i.aj = load i32, ptr %i.p, align 8, !tbaa !59
  %.not59 = icmp eq i32 %i.aj, 0
  br i1 %.not59, label %.loopexit, label %.lr.ph57

.lr.ph57:                                         ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %bb.d

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.c ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.7, %bb.c ]
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  store i32 0, ptr %i.an, align 4, !tbaa !52
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  store i32 0, ptr %i.ap, align 4, !tbaa !52
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 44
  store i32 0, ptr %i.ar, align 4, !tbaa !52
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 60
  store i32 0, ptr %i.at, align 4, !tbaa !52
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 76
  store i32 0, ptr %i.av, align 4, !tbaa !52
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 92
  store i32 0, ptr %i.ax, align 4, !tbaa !52
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 108
  store i32 0, ptr %i.az, align 4, !tbaa !52
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 124
  store i32 0, ptr %i.bb, align 4, !tbaa !52
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !72

bb.d:                                             ; preds = %.lr.ph57, %bb.d
  %indvars.iv61 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next62, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv61
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !51
  store ptr %i.be, ptr %1, align 8, !tbaa !44
  store i32 6, ptr %i.al, align 4, !tbaa !52
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !74
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.ad, align 8, !tbaa !78
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 -16
  call void @_Z13luaV_gettableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef nonnull %0, ptr noundef nonnull %i.bg, ptr noundef nonnull %1, ptr noundef nonnull %i.bi)
  %i.bj = load ptr, ptr %i.ad, align 8, !tbaa !78
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -16
  %i.bl = load ptr, ptr %i.u, align 8, !tbaa !60
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %indvars.iv61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, ptr noundef nonnull align 8 dereferenceable(16) %i.bk, i64 16, i1 false), !tbaa.struct !66
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1 ; 2 uses
  %i.bn = load i32, ptr %i.p, align 8, !tbaa !59
  %i.bo = zext i32 %i.bn to i64
  %i.bp = icmp samesign ult i64 %indvars.iv.next62, %i.bo
  br i1 %i.bp, label %bb.d, label %.loopexit.loopexit, !llvm.loop !73

bb.e:                                             ; preds = %._crit_edge
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !41
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.bs) #7
  unreachable

.loopexit.loopexit:                               ; preds = %bb.d
  %.pre = load ptr, ptr %i.ad, align 8, !tbaa !78
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %._crit_edge
  %i.bt = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.ai, %.preheader ], [ %i.ai, %._crit_edge ]
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -16
  store ptr %i.bu, ptr %i.ad, align 8, !tbaa !78
  %i.bv = load i8, ptr %i.l, align 1, !tbaa !44
  %i.bw = and i8 %i.bv, 4
  %.not = icmp eq i8 %i.bw, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.loopexit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @_Z16luaC_barrierbackP9lua_StateP8GCObjectPS2_(ptr noundef nonnull %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.bx)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.loopexit
  ret i32 1
}

declare hidden noundef ptr @_Z12luaS_newlstrP9lua_StatePKcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare hidden noundef ptr @_Z11luaH_setstrP9lua_StateP8LuaTableP7TString(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z13luaR_newclassP9lua_StateP7TStringP8LuaTablePS2_jj(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i8, ptr %i.a, align 4, !tbaa !20
  %i.c = tail call noundef ptr @_Z12luaM_newgco_P9lua_Statemh(ptr noundef %0, i64 noundef 72, i8 noundef zeroext %i.b) ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i8, ptr %i.f, align 16, !tbaa !36
  %i.h = and i8 %i.g, 3
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %i.h, ptr %i.i, align 1, !tbaa !38
  store i8 12, ptr %i.c, align 8, !tbaa !39
  %i.j = load i8, ptr %i.a, align 4, !tbaa !20    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 %i.j, ptr %i.k, align 2, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %1, ptr %i.l, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, i8 0, i64 48, i1 false)
  %i.n = zext i32 %5 to i64                       ; 3 uses
  %i.o = shl nuw nsw i64 %i.n, 4
  %i.p = tail call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef %0, i64 noundef %i.o, i8 noundef zeroext %i.j) ; 10 uses
  store ptr %i.p, ptr %i.m, align 8, !tbaa !67
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.n, 7                     ; 3 uses
  %i.q = icmp ult i32 %5, 8
  br i1 %i.q, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.n, 4294967288
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod28 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod28)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.epil ], [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv.epil
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !52
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !79

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %2, ptr %i.t, align 8, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %3, ptr %i.u, align 8, !tbaa !64
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i32 %4, ptr %i.v, align 8, !tbaa !59
  %6 = add i32 %5, %4
  %7 = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  store i32 %6, ptr %7, align 4, !tbaa !69
  %i.w = tail call noundef ptr @_Z8luaH_newP9lua_Stateii(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43
  %i.aa = tail call noundef ptr @_Z16luaF_newCclosureP9lua_StateiP8LuaTable(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.z) ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr @_Z17luaR_createobjectP9lua_State, ptr %i.ab, align 8, !tbaa !44
  %i.ac = load i8, ptr @_ZN5FFlag21LuauManagedDebugNamesE, align 8, !tbaa !48, !range !49, !noundef !50
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.b, label %_Z22luaR_addclassmetatableP9lua_StateP9LuauClass.exit

bb.b:                                             ; preds = %._crit_edge
  %i.ae = tail call noundef ptr @_Z12luaS_newlstrP9lua_StatePKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str, i64 noundef 17)
  br label %_Z22luaR_addclassmetatableP9lua_StateP9LuauClass.exit

_Z22luaR_addclassmetatableP9lua_StateP9LuauClass.exit: ; preds = %._crit_edge, %bb.b
  %.sink17.i = phi i64 [ 48, %bb.b ], [ 40, %._crit_edge ]
  %.str.sink.i = phi ptr [ %i.ae, %bb.b ], [ @.str, %._crit_edge ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.sink17.i
  store ptr %.str.sink.i, ptr %i.af, align 8, !tbaa !44
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store ptr null, ptr %i.ag, align 8, !tbaa !44
  %i.ah = load ptr, ptr %i.x, align 8, !tbaa !42
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1064
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !51
  %i.al = tail call noundef ptr @_Z11luaH_setstrP9lua_StateP8LuaTableP7TString(ptr noundef nonnull %0, ptr noundef %i.ah, ptr noundef %i.ak) ; 2 uses
  store ptr %i.aa, ptr %i.al, align 8, !tbaa !44
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 12
  store i32 8, ptr %i.am, align 4, !tbaa !52
  %i.an = load ptr, ptr %i.x, align 8, !tbaa !42
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i8 1, ptr %i.ao, align 4, !tbaa !55
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr null, ptr %i.ap, align 8, !tbaa !70
  ret ptr %i.c

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  store i32 0, ptr %i.ar, align 4, !tbaa !52
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 28
  store i32 0, ptr %i.at, align 4, !tbaa !52
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 44
  store i32 0, ptr %i.av, align 4, !tbaa !52
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 60
  store i32 0, ptr %i.ax, align 4, !tbaa !52
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 76
  store i32 0, ptr %i.az, align 4, !tbaa !52
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 92
  store i32 0, ptr %i.bb, align 4, !tbaa !52
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 108
  store i32 0, ptr %i.bd, align 4, !tbaa !52
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 124
  store i32 0, ptr %i.bf, align 4, !tbaa !52
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !80
}

declare hidden noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.c = zext i32 %5 to i64                       ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !66
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.c ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !52
  %i.i = icmp sgt i32 %i.h, 5
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !44
  %i.l = and i8 %i.k, 4
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !44
  %i.p = and i8 %i.o, 3
  %.not29 = icmp eq i8 %i.p, 0
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Z13luaC_barrierfP9lua_StateP8GCObjectS2_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.m)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.s = zext i32 %4 to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  store ptr %2, ptr %i.t, align 8, !tbaa !51
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.w = tail call noundef ptr @_Z11luaH_setstrP9lua_StateP8LuaTableP7TString(ptr noundef %0, ptr noundef %i.v, ptr noundef %2) ; 2 uses
  %i.x = uitofp i32 %4 to double
  store double %i.x, ptr %i.w, align 8, !tbaa !44
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 3, ptr %i.y, align 4, !tbaa !52
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare hidden void @_Z13luaC_barrierfP9lua_StateP8GCObjectS2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z17luaR_inheritclassP9lua_StatePK9LuauClassS3_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 8 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !59
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit172, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.e = load i32, ptr %i.a, align 8, !tbaa !59
  %i.f = zext i32 %i.e to i64
  %i.g = icmp samesign ult i64 %indvars.iv.next, %i.f
  br i1 %i.g, label %bb.c, label %.loopexit172, !llvm.loop !81

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !51   ; 2 uses
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.l = tail call noundef ptr @_Z11luaH_getstrP8LuaTableP7TString(ptr noundef %i.k, ptr noundef %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !52
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  tail call void (ptr, ptr, ...) @_Z14luaG_runerrorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.p, ptr noundef nonnull %i.s, ptr noundef nonnull %i.v) #7
  unreachable

.loopexit172:                                     ; preds = %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.z = load i8, ptr %i.y, align 4, !tbaa !20
  %i.aa = tail call noundef ptr @_Z12luaM_newgco_P9lua_Statemh(ptr noundef %0, i64 noundef 72, i8 noundef zeroext %i.z) ; 17 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ae = load i8, ptr %i.ad, align 16, !tbaa !36
  %i.af = and i8 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 5 uses
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !38
  store i8 12, ptr %i.aa, align 8, !tbaa !39
  %i.ah = load i8, ptr %i.y, align 4, !tbaa !20   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.aa, i64 2 ; 3 uses
  store i8 %i.ah, ptr %i.ai, align 2, !tbaa !40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.x, ptr %i.aj, align 8, !tbaa !41
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i8 0, i64 48, i1 false)
  %i.al = load i32, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !69
  %i.ao = icmp ult i32 %i.al, %i.an
  br i1 %i.ao, label %.lr.ph177, label %._crit_edge

.lr.ph177:                                        ; preds = %.loopexit172
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ar = zext i32 %i.al to i64
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %i.a, align 8, !tbaa !59
  %.pre221 = load i8, ptr %i.ai, align 2, !tbaa !40
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit172
  %i.as = phi i8 [ %i.ah, %.loopexit172 ], [ %.pre221, %._crit_edge.loopexit ]
  %i.at = phi i32 [ %i.al, %.loopexit172 ], [ %.pre, %._crit_edge.loopexit ]
  %.0152.lcssa = phi i32 [ 0, %.loopexit172 ], [ %spec.select, %._crit_edge.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !69
  %i.aw = add i32 %i.av, %.0152.lcssa
  %i.ax = add i32 %i.aw, %i.at                    ; 4 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = tail call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef nonnull %0, i64 noundef %i.az, i8 noundef zeroext %i.as)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aa, i64 40 ; 5 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aa, i64 68
  store i32 %i.ax, ptr %i.bc, align 4, !tbaa !69
  %i.bd = tail call noundef ptr @_Z8luaH_newP9lua_Stateii(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.ax) ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 5 uses
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !68
  %i.bf = load i8, ptr %i.ag, align 1, !tbaa !44
  %i.bg = and i8 %i.bf, 4
  %.not159 = icmp eq i8 %i.bg, 0
  br i1 %.not159, label %bb.h, label %bb.f

bb.e:                                             ; preds = %.lr.ph177, %bb.e
  %indvars.iv206 = phi i64 [ %i.ar, %.lr.ph177 ], [ %indvars.iv.next207, %bb.e ] ; 2 uses
  %.0152176 = phi i32 [ 0, %.lr.ph177 ], [ %spec.select, %bb.e ]
  %i.bh = load ptr, ptr %i.ap, align 8, !tbaa !64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %indvars.iv206
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !51
  %i.bk = load ptr, ptr %i.aq, align 8, !tbaa !68
  %i.bl = tail call noundef ptr @_Z11luaH_getstrP8LuaTableP7TString(ptr noundef %i.bk, ptr noundef %i.bj)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !52
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %spec.select = add i32 %.0152176, %i.bp         ; 2 uses
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.bq = load i32, ptr %i.am, align 4, !tbaa !69
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp samesign ult i64 %indvars.iv.next207, %i.br
  br i1 %i.bs, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !82

bb.f:                                             ; preds = %._crit_edge
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !44
  %i.bv = and i8 %i.bu, 3
  %.not160 = icmp eq i8 %i.bv, 0
  br i1 %.not160, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_Z13luaC_barrierfP9lua_StateP8GCObjectS2_(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.bd)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %._crit_edge
  %i.bw = load i32, ptr %i.a, align 8, !tbaa !59
  %.not161 = icmp eq i32 %i.bw, 0
  br i1 %.not161, label %.loopexit170, label %.lr.ph179

.lr.ph179:                                        ; preds = %bb.h
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph179, %bb.i
  %indvars.iv209 = phi i64 [ 0, %.lr.ph179 ], [ %indvars.iv.next210, %bb.i ] ; 4 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !64
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %indvars.iv209
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !51 ; 2 uses
  %i.cb = load ptr, ptr %i.bb, align 8, !tbaa !64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv209
  store ptr %i.ca, ptr %i.cc, align 8, !tbaa !51
  %i.cd = load ptr, ptr %i.be, align 8, !tbaa !68
  %i.ce = tail call noundef ptr @_Z11luaH_setstrP9lua_StateP8LuaTableP7TString(ptr noundef nonnull %0, ptr noundef %i.cd, ptr noundef %i.ca) ; 2 uses
  %i.cf = trunc nuw i64 %indvars.iv209 to i32
  %i.cg = uitofp i32 %i.cf to double
  store double %i.cg, ptr %i.ce, align 8, !tbaa !44
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  store i32 3, ptr %i.ch, align 4, !tbaa !52
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 3 uses
  %i.ci = load i32, ptr %i.a, align 8, !tbaa !59
  %i.cj = zext i32 %i.ci to i64
  %i.ck = icmp samesign ult i64 %indvars.iv.next210, %i.cj
  br i1 %i.ck, label %bb.i, label %.loopexit170.loopexit, !llvm.loop !83

.loopexit170.loopexit:                            ; preds = %bb.i
  %i.cl = trunc nuw i64 %indvars.iv.next210 to i32
  br label %.loopexit170

.loopexit170:                                     ; preds = %.loopexit170.loopexit, %bb.h
  %.1155 = phi i32 [ 0, %bb.h ], [ %i.cl, %.loopexit170.loopexit ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !59
  %.not162 = icmp eq i32 %i.cn, 0
  br i1 %.not162, label %.loopexit, label %.lr.ph183

.lr.ph183:                                        ; preds = %.loopexit170
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph183, %bb.j
  %indvars.iv212 = phi i64 [ 0, %.lr.ph183 ], [ %indvars.iv.next213, %bb.j ] ; 2 uses
  %.2156181 = phi i32 [ %.1155, %.lr.ph183 ], [ %i.cz, %bb.j ] ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !64
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %indvars.iv212
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !51 ; 2 uses
  %i.cs = load ptr, ptr %i.bb, align 8, !tbaa !64
  %i.ct = zext i32 %.2156181 to i64
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %i.ct
  store ptr %i.cr, ptr %i.cu, align 8, !tbaa !51
  %i.cv = load ptr, ptr %i.be, align 8, !tbaa !68
  %i.cw = tail call noundef ptr @_Z11luaH_setstrP9lua_StateP8LuaTableP7TString(ptr noundef nonnull %0, ptr noundef %i.cv, ptr noundef %i.cr) ; 2 uses
  %i.cx = uitofp i32 %.2156181 to double
  store double %i.cx, ptr %i.cw, align 8, !tbaa !44
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 3, ptr %i.cy, align 4, !tbaa !52
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %i.cz = add i32 %.2156181, 1                    ; 2 uses
  %i.da = load i32, ptr %i.cm, align 8, !tbaa !59
  %i.db = zext i32 %i.da to i64
  %i.dc = icmp samesign ult i64 %indvars.iv.next213, %i.db
  br i1 %i.dc, label %bb.j, label %.loopexit, !llvm.loop !84

.loopexit:                                        ; preds = %bb.j, %.loopexit170
  %.3 = phi i32 [ %.1155, %.loopexit170 ], [ %i.cz, %bb.j ] ; 4 uses
  %i.dd = sub i32 %i.ax, %.3
  %i.de = zext i32 %i.dd to i64
  %i.df = shl nuw nsw i64 %i.de, 4
  %i.dg = load i8, ptr %i.ai, align 2, !tbaa !40
  %i.dh = tail call noundef ptr @_Z9luaM_new_P9lua_Statemh(ptr noundef nonnull %0, i64 noundef %i.df, i8 noundef zeroext %i.dg)
  store ptr %i.dh, ptr %i.ak, align 8, !tbaa !67
  %i.di = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  store i32 %.3, ptr %i.di, align 8, !tbaa !59
  %i.dj = load i32, ptr %i.a, align 8, !tbaa !59  ; 2 uses
  %i.dk = load i32, ptr %i.am, align 4, !tbaa !69
  %i.dl = icmp ult i32 %i.dj, %i.dk
  br i1 %i.dl, label %.lr.ph189, label %._crit_edge190

.lr.ph189:                                        ; preds = %.loopexit
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dp = zext i32 %i.dj to i64
  br label %bb.k

._crit_edge190:                                   ; preds = %bb.p, %.loopexit
  %.4.lcssa = phi i32 [ %.3, %.loopexit ], [ %.5, %bb.p ]
  %.0150.lcssa = phi i32 [ 0, %.loopexit ], [ %.1, %bb.p ]
  %i.dq = load i32, ptr %i.cm, align 8, !tbaa !59 ; 2 uses
  %i.dr = load i32, ptr %i.au, align 4, !tbaa !69
  %i.ds = icmp ult i32 %i.dq, %i.dr
  br i1 %i.ds, label %.lr.ph197, label %._crit_edge198

.lr.ph197:                                        ; preds = %._crit_edge190
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dv = zext i32 %i.dq to i64
  br label %bb.r

bb.k:                                             ; preds = %.lr.ph189, %bb.p
  %indvars.iv215 = phi i64 [ %i.dp, %.lr.ph189 ], [ %indvars.iv.next216, %bb.p ] ; 3 uses
  %.0150186 = phi i32 [ 0, %.lr.ph189 ], [ %.1, %bb.p ] ; 3 uses
  %.4185 = phi i32 [ %.3, %.lr.ph189 ], [ %.5, %bb.p ] ; 4 uses
  %i.dw = load ptr, ptr %i.dm, align 8, !tbaa !64
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %indvars.iv215
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !51 ; 3 uses
  %i.dz = load ptr, ptr %i.dn, align 8, !tbaa !68
  %i.ea = tail call noundef ptr @_Z11luaH_getstrP8LuaTableP7TString(ptr noundef %i.dz, ptr noundef %i.dy)
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !52
  %i.ed = icmp eq i32 %i.ec, 0
  br i1 %i.ed, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ee = load ptr, ptr %i.do, align 8, !tbaa !67
  %i.ef = load i32, ptr %i.a, align 8, !tbaa !59
  %i.eg = trunc nuw i64 %indvars.iv215 to i32
  %i.eh = sub i32 %i.eg, %i.ef
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.ee, i64 %i.ei
  %i.ek = load ptr, ptr %i.ak, align 8, !tbaa !67
  %i.el = zext i32 %.0150186 to i64               ; 2 uses
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.ek, i64 %i.el
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ej, i64 16, i1 false), !tbaa.struct !66
  %i.en = load ptr, ptr %i.ak, align 8, !tbaa !67
  %i.eo = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %i.el ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 12
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !52
  %i.er = icmp sgt i32 %i.eq, 5
  br i1 %i.er, label %bb.m, label %_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit

bb.m:                                             ; preds = %bb.l
  %i.es = load i8, ptr %i.ag, align 1, !tbaa !44
  %i.et = and i8 %i.es, 4
  %.not.i = icmp eq i8 %i.et, 0
  br i1 %.not.i, label %_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !44 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !44
  %i.ex = and i8 %i.ew, 3
  %.not29.i = icmp eq i8 %i.ex, 0
  br i1 %.not29.i, label %_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @_Z13luaC_barrierfP9lua_StateP8GCObjectS2_(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.eu)
  br label %_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit

_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.o
  %i.ey = load ptr, ptr %i.bb, align 8, !tbaa !64
  %i.ez = zext i32 %.4185 to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ey, i64 %i.ez
  store ptr %i.dy, ptr %i.fa, align 8, !tbaa !51
  %i.fb = load ptr, ptr %i.be, align 8, !tbaa !68
  %i.fc = tail call noundef ptr @_Z11luaH_setstrP9lua_StateP8LuaTableP7TString(ptr noundef nonnull %0, ptr noundef %i.fb, ptr noundef %i.dy) ; 2 uses
  %i.fd = uitofp i32 %.4185 to double
  store double %i.fd, ptr %i.fc, align 8, !tbaa !44
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 12
  store i32 3, ptr %i.fe, align 4, !tbaa !52
  %i.ff = add i32 %.4185, 1
  %i.fg = add i32 %.0150186, 1
  br label %bb.p

bb.p:                                             ; preds = %_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit, %bb.k
  %.5 = phi i32 [ %i.ff, %_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit ], [ %.4185, %bb.k ] ; 2 uses
  %.1 = phi i32 [ %i.fg, %_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit ], [ %.0150186, %bb.k ] ; 2 uses
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %i.fh = load i32, ptr %i.am, align 4, !tbaa !69
  %i.fi = zext i32 %i.fh to i64
  %i.fj = icmp samesign ult i64 %indvars.iv.next216, %i.fi
  br i1 %i.fj, label %bb.k, label %._crit_edge190, !llvm.loop !85

._crit_edge198:                                   ; preds = %_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit168, %._crit_edge190
  %i.fk = tail call noundef ptr @_Z8luaH_newP9lua_Stateii(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 1)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.aa, i64 48 ; 3 uses
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !42
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !43
  %i.fo = tail call noundef ptr @_Z16luaF_newCclosureP9lua_StateiP8LuaTable(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.fn) ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  store ptr @_Z17luaR_createobjectP9lua_State, ptr %i.fp, align 8, !tbaa !44
  %i.fq = load i8, ptr @_ZN5FFlag21LuauManagedDebugNamesE, align 8, !tbaa !48, !range !49, !noundef !50
  %i.fr = trunc nuw i8 %i.fq to i1
  br i1 %i.fr, label %bb.q, label %_Z22luaR_addclassmetatableP9lua_StateP9LuauClass.exit

bb.q:                                             ; preds = %._crit_edge198
  %i.fs = tail call noundef ptr @_Z12luaS_newlstrP9lua_StatePKcm(ptr noundef nonnull %0, ptr noundef nonnull @.str, i64 noundef 17)
  br label %_Z22luaR_addclassmetatableP9lua_StateP9LuauClass.exit

_Z22luaR_addclassmetatableP9lua_StateP9LuauClass.exit: ; preds = %._crit_edge198, %bb.q
  %.sink17.i = phi i64 [ 48, %bb.q ], [ 40, %._crit_edge198 ]
  %.str.sink.i = phi ptr [ %i.fs, %bb.q ], [ @.str, %._crit_edge198 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.sink17.i
  store ptr %.str.sink.i, ptr %i.ft, align 8, !tbaa !44
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  store ptr null, ptr %i.fu, align 8, !tbaa !44
  %i.fv = load ptr, ptr %i.fl, align 8, !tbaa !42
  %i.fw = load ptr, ptr %i.ab, align 8, !tbaa !21
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 1064
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !51
  %i.fz = tail call noundef ptr @_Z11luaH_setstrP9lua_StateP8LuaTableP7TString(ptr noundef nonnull %0, ptr noundef %i.fv, ptr noundef %i.fy) ; 2 uses
  store ptr %i.fo, ptr %i.fz, align 8, !tbaa !44
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 12
  store i32 8, ptr %i.ga, align 4, !tbaa !52
  %i.gb = load ptr, ptr %i.fl, align 8, !tbaa !42
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 4
  store i8 1, ptr %i.gc, align 4, !tbaa !55
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !70 ; 2 uses
  %.not163 = icmp eq ptr %i.ge, null
  br i1 %.not163, label %bb.y, label %bb.v

bb.r:                                             ; preds = %.lr.ph197, %_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit168
  %indvars.iv218 = phi i64 [ %i.dv, %.lr.ph197 ], [ %indvars.iv.next219, %_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit168 ] ; 3 uses
  %.2194 = phi i32 [ %.0150.lcssa, %.lr.ph197 ], [ %i.hk, %_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit168 ] ; 2 uses
  %.6193 = phi i32 [ %.4.lcssa, %.lr.ph197 ], [ %i.hj, %_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit168 ] ; 3 uses
  %i.gf = load ptr, ptr %i.dt, align 8, !tbaa !64
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv218
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !51 ; 2 uses
  %i.gi = load ptr, ptr %i.du, align 8, !tbaa !67
  %i.gj = load i32, ptr %i.cm, align 8, !tbaa !59
  %i.gk = trunc nuw i64 %indvars.iv218 to i32
  %i.gl = sub i32 %i.gk, %i.gj
  %i.gm = zext i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.gm
  %i.go = load ptr, ptr %i.ak, align 8, !tbaa !67
  %i.gp = zext i32 %.2194 to i64                  ; 2 uses
  %i.gq = getelementptr inbounds nuw [16 x i8], ptr %i.go, i64 %i.gp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gq, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.gn, i64 16, i1 false), !tbaa.struct !66
  %i.gr = load ptr, ptr %i.ak, align 8, !tbaa !67
  %i.gs = getelementptr inbounds nuw [16 x i8], ptr %i.gr, i64 %i.gp ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !52
  %i.gv = icmp sgt i32 %i.gu, 5
  br i1 %i.gv, label %bb.s, label %_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit168

bb.s:                                             ; preds = %bb.r
  %i.gw = load i8, ptr %i.ag, align 1, !tbaa !44
  %i.gx = and i8 %i.gw, 4
  %.not.i166 = icmp eq i8 %i.gx, 0
  br i1 %.not.i166, label %_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit168, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gy = load ptr, ptr %i.gs, align 8, !tbaa !44 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !44
  %i.hb = and i8 %i.ha, 3
  %.not29.i167 = icmp eq i8 %i.hb, 0
  br i1 %.not29.i167, label %_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit168, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_Z13luaC_barrierfP9lua_StateP8GCObjectS2_(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.gy)
  br label %_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit168

_Z25luaR_registerstaticmemberP9lua_StateP9LuauClassP7TStringPK10lua_TValuejj.exit168: ; preds = %bb.r, %bb.s, %bb.t, %bb.u
  %i.hc = load ptr, ptr %i.bb, align 8, !tbaa !64
  %i.hd = zext i32 %.6193 to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.hd
  store ptr %i.gh, ptr %i.he, align 8, !tbaa !51
  %i.hf = load ptr, ptr %i.be, align 8, !tbaa !68
  %i.hg = tail call noundef ptr @_Z11luaH_setstrP9lua_StateP8LuaTableP7TString(ptr noundef nonnull %0, ptr noundef %i.hf, ptr noundef %i.gh) ; 2 uses
  %i.hh = uitofp i32 %.6193 to double
  store double %i.hh, ptr %i.hg, align 8, !tbaa !44
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  store i32 3, ptr %i.hi, align 4, !tbaa !52
  %i.hj = add i32 %.6193, 1
  %i.hk = add i32 %.2194, 1
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %i.hl = load i32, ptr %i.au, align 4, !tbaa !69
  %i.hm = zext i32 %i.hl to i64
  %i.hn = icmp samesign ult i64 %indvars.iv.next219, %i.hm
  br i1 %i.hn, label %bb.r, label %._crit_edge198, !llvm.loop !86

bb.v:                                             ; preds = %_Z22luaR_addclassmetatableP9lua_StateP9LuauClass.exit
  %i.ho = tail call noundef ptr @_Z10luaH_cloneP9lua_StateP8LuaTable(ptr noundef nonnull %0, ptr noundef nonnull %i.ge) ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !70
  %i.hq = load i8, ptr %i.ag, align 1, !tbaa !44
  %i.hr = and i8 %i.hq, 4
  %.not164 = icmp eq i8 %i.hr, 0
  br i1 %.not164, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hs = getelementptr inbounds nuw i8, ptr %i.ho, i64 1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !44
  %i.hu = and i8 %i.ht, 3
  %.not165 = icmp eq i8 %i.hu, 0
  br i1 %.not165, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_Z13luaC_barrierfP9lua_StateP8GCObjectS2_(ptr noundef nonnull %0, ptr noundef nonnull %i.aa, ptr noundef nonnull %i.ho)
  br label %bb.z

bb.y:                                             ; preds = %_Z22luaR_addclassmetatableP9lua_StateP9LuauClass.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store ptr null, ptr %i.hv, align 8, !tbaa !70
  br label %bb.z

bb.z:                                             ; preds = %bb.v, %bb.w, %bb.x, %bb.y
  ret ptr %i.aa
}

declare hidden noundef ptr @_Z11luaH_getstrP8LuaTableP7TString(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare hidden void @_Z14luaG_runerrorLP9lua_StatePKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare hidden noundef ptr @_Z10luaH_cloneP9lua_StateP8LuaTable(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_Z19luaR_addclassmemberP9lua_StateP9LuauClassP7TStringP10lua_TValue(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.c = tail call noundef ptr @_Z11luaH_getstrP8LuaTableP7TString(ptr noundef %i.b, ptr noundef %2)
  %i.d = load double, ptr %i.c, align 8, !tbaa !44
  %i.e = fptoui double %i.d to i32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load i32, ptr %i.h, align 8, !tbaa !59
  %i.j = sub i32 %i.e, %i.i
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !66
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !52
  %i.o = icmp sgt i32 %i.n, 5
  br i1 %i.o, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !44
  %i.r = and i8 %i.q, 4
  %.not = icmp eq i8 %i.r, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !44
  %i.v = and i8 %i.u, 3
  %.not45 = icmp eq i8 %i.v, 0
  br i1 %.not45, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Z13luaC_barrierfP9lua_StateP8GCObjectS2_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.s)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.w = tail call noundef ptr @_Z12luaS_newlstrP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull @.str.2, i64 noundef 10)
  %.044.in51.not = icmp eq ptr %2, %i.w
  br i1 %.044.in51.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1032
  br label %bb.f

._crit_edge:                                      ; preds = %bb.f
  br i1 %.044.in, label %bb.n, label %._crit_edge.thread

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.044.in = icmp ne ptr %2, %i.ab                ; 2 uses
  %i.ac = icmp samesign ult i64 %indvars.iv, 20
  %i.ad = select i1 %i.ac, i1 %.044.in, i1 false
  br i1 %i.ad, label %bb.f, label %._crit_edge, !llvm.loop !87

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !70 ; 2 uses
  %.not46 = icmp eq ptr %i.af, null
  br i1 %.not46, label %bb.g, label %bb.j

bb.g:                                             ; preds = %._crit_edge.thread
  %i.ag = tail call noundef ptr @_Z8luaH_newP9lua_Stateii(ptr noundef %0, i32 noundef 0, i32 noundef 1) ; 5 uses
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !44
  %i.aj = and i8 %i.ai, 4
  %.not47 = icmp eq i8 %i.aj, 0
  br i1 %.not47, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !44
  %i.am = and i8 %i.al, 3
  %.not48 = icmp eq i8 %i.am, 0
  br i1 %.not48, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_Z13luaC_barrierfP9lua_StateP8GCObjectS2_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %i.ag)
  %.pre = load ptr, ptr %i.ae, align 8, !tbaa !70
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i, %._crit_edge.thread
  %i.an = phi ptr [ %i.ag, %bb.g ], [ %i.ag, %bb.h ], [ %.pre, %bb.i ], [ %i.af, %._crit_edge.thread ]
  %i.ao = tail call noundef ptr @_Z11luaH_setstrP9lua_StateP8LuaTableP7TString(ptr noundef %0, ptr noundef %i.an, ptr noundef %2)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !66
  %i.ap = load i32, ptr %i.m, align 4, !tbaa !52
  %i.aq = icmp sgt i32 %i.ap, 5
  br i1 %i.aq, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ar = load ptr, ptr %i.ae, align 8, !tbaa !70 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !44
  %i.au = and i8 %i.at, 4
  %.not49 = icmp eq i8 %i.au, 0
  br i1 %.not49, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.av = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !44
  %i.ay = and i8 %i.ax, 3
  %.not50 = icmp eq i8 %i.ay, 0
  br i1 %.not50, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_Z13luaC_barrierfP9lua_StateP8GCObjectS2_(ptr noundef %0, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.av)
  br label %bb.n

bb.n:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.m, %._crit_edge
  ret void
}

declare void @_Z14luaL_checktypeP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef) local_unnamed_addr #2

declare hidden void @_Z13luaV_gettableP9lua_StatePK10lua_TValuePS1_S4_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare hidden void @_Z16luaC_barrierbackP9lua_StateP8GCObjectPS2_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_Z14luaR_freeclassP9lua_StateP9LuauClassP8lua_Page(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.d = load i32, ptr %i.c, align 4, !tbaa !69
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !59
  %i.g = sub i32 %i.d, %i.f
  %i.h = zext i32 %i.g to i64
  %i.i = shl nuw nsw i64 %i.h, 4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.k = load i8, ptr %i.j, align 2, !tbaa !40
  tail call void @_Z10luaM_free_P9lua_StatePvmh(ptr noundef %0, ptr noundef nonnull %i.b, i64 noundef %i.i, i8 noundef zeroext %i.k)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64   ; 2 uses
  %.not16 = icmp eq ptr %i.m, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.o = load i32, ptr %i.n, align 4, !tbaa !69
  %i.p = zext i32 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.s = load i8, ptr %i.r, align 2, !tbaa !40
  tail call void @_Z10luaM_free_P9lua_StatePvmh(ptr noundef %0, ptr noundef nonnull %i.m, i64 noundef %i.q, i8 noundef zeroext %i.s)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.u = load i8, ptr %i.t, align 2, !tbaa !40
  tail call void @_Z13luaM_freegco_P9lua_StateP8GCObjectmhP8lua_Page(ptr noundef %0, ptr noundef nonnull %1, i64 noundef 72, i8 noundef zeroext %i.u, ptr noundef %2)
  ret void
}

declare hidden void @_Z10luaM_free_P9lua_StatePvmh(ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext) local_unnamed_addr #2

declare hidden void @_Z13luaM_freegco_P9lua_StateP8GCObjectmhP8lua_Page(ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_Z15luaR_freeobjectP9lua_StateP10LuauObjectP8lua_Page(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !61
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.h = load i8, ptr %i.g, align 2, !tbaa !58
  tail call void @_Z10luaM_free_P9lua_StatePvmh(ptr noundef %0, ptr noundef %i.b, i64 noundef %i.f, i8 noundef zeroext %i.h)
  %i.i = load i8, ptr %i.g, align 2, !tbaa !58
  tail call void @_Z13luaM_freegco_P9lua_StateP8GCObjectmhP8lua_Page(ptr noundef %0, ptr noundef %1, i64 noundef 40, i8 noundef zeroext %i.i, ptr noundef %2)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS10lua_TValue", !10, i64 0}
!12 = !{!"p1 _ZTS12global_State", !10, i64 0}
!13 = !{!"p1 _ZTS8CallInfo", !10, i64 0}
!14 = !{!"short", !5, i64 0}
!15 = !{!"p1 _ZTS8LuaTable", !10, i64 0}
!16 = !{!"p1 _ZTS5UpVal", !10, i64 0}
!17 = !{!"p1 _ZTS8GCObject", !10, i64 0}
!18 = !{!"p1 _ZTS7TString", !10, i64 0}
!19 = !{!"_ZTS9lua_State", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !9, i64 5, !9, i64 6, !11, i64 8, !11, i64 16, !12, i64 24, !13, i64 32, !11, i64 40, !11, i64 48, !13, i64 56, !13, i64 64, !6, i64 72, !6, i64 76, !14, i64 80, !14, i64 82, !6, i64 84, !15, i64 88, !16, i64 96, !17, i64 104, !18, i64 112, !10, i64 120}
!20 = !{!19, !5, i64 4}
!21 = !{!19, !12, i64 24}
!22 = !{!"any p2 pointer", !10, i64 0}
!23 = !{!"p2 _ZTS7TString", !22, i64 0}
!24 = !{!"_ZTS11stringtable", !23, i64 0, !6, i64 8, !6, i64 12}
!25 = !{!"long", !5, i64 0}
!26 = !{!"p1 _ZTS8lua_Page", !10, i64 0}
!27 = !{!"p1 _ZTS9lua_State", !10, i64 0}
!28 = !{!"_ZTS5UpVal", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !11, i64 8, !5, i64 16}
!29 = !{!"_ZTS10lua_TValue", !5, i64 0, !5, i64 8, !6, i64 12}
!30 = !{!"p1 _ZTS10lua_jmpbuf", !10, i64 0}
!31 = !{!"_ZTS13lua_Callbacks", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72}
!32 = !{!"_ZTS22lua_ExecutionCallbacks", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64}
!33 = !{!"double", !5, i64 0}
!34 = !{!"_ZTS7GCStats", !5, i64 0, !6, i64 128, !6, i64 132, !25, i64 136, !25, i64 144, !25, i64 152, !33, i64 160, !33, i64 168, !33, i64 176}
!35 = !{!"_ZTS12global_State", !24, i64 0, !10, i64 16, !10, i64 24, !5, i64 32, !5, i64 33, !17, i64 40, !17, i64 48, !17, i64 56, !25, i64 64, !25, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !5, i64 96, !5, i64 416, !26, i64 736, !26, i64 744, !26, i64 752, !27, i64 760, !28, i64 768, !5, i64 808, !5, i64 920, !5, i64 1032, !29, i64 1200, !29, i64 1216, !6, i64 1232, !30, i64 1240, !25, i64 1248, !5, i64 1256, !31, i64 1288, !32, i64 1368, !5, i64 1440, !5, i64 1952, !5, i64 11312, !5, i64 13360, !5, i64 14384, !5, i64 15408, !29, i64 16432, !6, i64 16448, !10, i64 16456, !5, i64 16464, !5, i64 17488, !34, i64 18528, !6, i64 18712}
!36 = !{!35, !5, i64 32}
!37 = !{!"_ZTS9LuauClass", !5, i64 0, !5, i64 1, !5, i64 2, !17, i64 8, !18, i64 16, !11, i64 24, !15, i64 32, !23, i64 40, !15, i64 48, !15, i64 56, !6, i64 64, !6, i64 68}
!38 = !{!37, !5, i64 1}
!39 = !{!37, !5, i64 0}
!40 = !{!37, !5, i64 2}
!41 = !{!37, !18, i64 16}
!42 = !{!37, !15, i64 48}
!43 = !{!19, !15, i64 88}
!44 = !{!5, !5, i64 0}
!45 = !{!"p1 omnipotent char", !10, i64 0}
!46 = !{!"p1 _ZTSN4Luau6FValueIbEE", !10, i64 0}
!47 = !{!"_ZTSN4Luau6FValueIbEE", !9, i64 0, !9, i64 1, !45, i64 8, !46, i64 16, !6, i64 24}
!48 = !{!47, !9, i64 0}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!18, !18, i64 0}
!52 = !{!29, !6, i64 12}
!53 = !{!"p1 _ZTS7LuaNode", !10, i64 0}
!54 = !{!"_ZTS8LuaTable", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !6, i64 8, !5, i64 12, !15, i64 16, !11, i64 24, !53, i64 32, !17, i64 40}
!55 = !{!54, !5, i64 4}
!56 = !{!"p1 _ZTS9LuauClass", !10, i64 0}
!57 = !{!"_ZTS10LuauObject", !5, i64 0, !5, i64 1, !5, i64 2, !17, i64 8, !56, i64 16, !6, i64 24, !11, i64 32}
!58 = !{!57, !5, i64 2}
!59 = !{!37, !6, i64 64}
!60 = !{!57, !11, i64 32}
!61 = !{!57, !6, i64 24}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!37, !23, i64 40}
!65 = !{!6, !6, i64 0}
!66 = !{i64 0, i64 8, !44, i64 8, i64 4, !44, i64 12, i64 4, !65}
!67 = !{!37, !11, i64 24}
!68 = !{!37, !15, i64 32}
!69 = !{!37, !6, i64 68}
!70 = !{!37, !15, i64 56}
!71 = distinct !{!71, !62}
!72 = distinct !{!72, !63}
!73 = distinct !{!73, !63}
!74 = !{!19, !11, i64 16}
!75 = !{!57, !5, i64 1}
!76 = !{!57, !5, i64 0}
!77 = !{!57, !56, i64 16}
!78 = !{!19, !11, i64 8}
!79 = distinct !{!79, !62}
!80 = distinct !{!80, !63}
!81 = distinct !{!81, !63}
!82 = distinct !{!82, !63}
!83 = distinct !{!83, !63}
!84 = distinct !{!84, !63}
!85 = distinct !{!85, !63}
!86 = distinct !{!86, !63}
!87 = distinct !{!87, !63}
end_hunk_0
