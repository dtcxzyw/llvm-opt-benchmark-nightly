inline.NumInlined: 22
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@str_pack:bb.a

.loopexit.i106.loopexit.unr-lcssa:                ; preds = %.lr.ph.split.us.i122
  %lcmp.mod210.not = icmp eq i64 %xtraiter208, 0
  br i1 %lcmp.mod210.not, label %.loopexit.i106, label %.lr.ph.split.us.i122.epil.preheader

.lr.ph.split.us.i122.epil.preheader:              ; preds = %.loopexit.i106.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i120
  %indvars.iv39.i123.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i120 ], [ %indvars.iv.next40.i125.3, %.loopexit.i106.loopexit.unr-lcssa ]
  %.03033.us.i124.epil.init = phi i64 [ %i.hm, %.lr.ph.split.us.preheader.i120 ], [ %i.il, %.loopexit.i106.loopexit.unr-lcssa ]
  %lcmp.mod211 = icmp ne i64 %xtraiter208, 0
  call void @llvm.assume(i1 %lcmp.mod211)
  br label %.lr.ph.split.us.i122.epil

.lr.ph.split.us.i122.epil:                        ; preds = %.lr.ph.split.us.i122.epil, %.lr.ph.split.us.i122.epil.preheader
  %indvars.iv39.i123.epil = phi i64 [ %indvars.iv39.i123.epil.init, %.lr.ph.split.us.i122.epil.preheader ], [ %indvars.iv.next40.i125.epil, %.lr.ph.split.us.i122.epil ] ; 2 uses
  %.03033.us.i124.epil = phi i64 [ %.03033.us.i124.epil.init, %.lr.ph.split.us.i122.epil.preheader ], [ %i.je, %.lr.ph.split.us.i122.epil ]
  %epil.iter209 = phi i64 [ 0, %.lr.ph.split.us.i122.epil.preheader ], [ %epil.iter209.next, %.lr.ph.split.us.i122.epil ]
  %i.je = lshr i64 %.03033.us.i124.epil, 8        ; 2 uses
  %i.jf = trunc i64 %i.je to i8
  %i.jg = sub nsw i64 %i.hx, %indvars.iv39.i123.epil
  %i.jh = getelementptr inbounds i8, ptr %i.hn, i64 %i.jg
  store i8 %i.jf, ptr %i.jh, align 1, !tbaa !17
  %indvars.iv.next40.i125.epil = add nuw nsw i64 %indvars.iv39.i123.epil, 1
  %epil.iter209.next = add i64 %epil.iter209, 1   ; 2 uses
  %epil.iter209.cmp.not = icmp eq i64 %epil.iter209.next, %xtraiter208
  br i1 %epil.iter209.cmp.not, label %.loopexit.i106, label %.lr.ph.split.us.i122.epil, !llvm.loop !32

.loopexit.i106.loopexit206.unr-lcssa:             ; preds = %.lr.ph.split.i110
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i106, label %.lr.ph.split.i110.epil.preheader

.lr.ph.split.i110.epil.preheader:                 ; preds = %.loopexit.i106.loopexit206.unr-lcssa, %.lr.ph.split.preheader.i108
  %indvars.iv.i111.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i108 ], [ %indvars.iv.next.i113.3, %.loopexit.i106.loopexit206.unr-lcssa ]
  %.03033.i112.epil.init = phi i64 [ %i.hm, %.lr.ph.split.preheader.i108 ], [ %i.ja, %.loopexit.i106.loopexit206.unr-lcssa ]
  %lcmp.mod207 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod207)
  br label %.lr.ph.split.i110.epil

.lr.ph.split.i110.epil:                           ; preds = %.lr.ph.split.i110.epil, %.lr.ph.split.i110.epil.preheader
  %indvars.iv.i111.epil = phi i64 [ %indvars.iv.i111.epil.init, %.lr.ph.split.i110.epil.preheader ], [ %indvars.iv.next.i113.epil, %.lr.ph.split.i110.epil ] ; 2 uses
  %.03033.i112.epil = phi i64 [ %.03033.i112.epil.init, %.lr.ph.split.i110.epil.preheader ], [ %i.ji, %.lr.ph.split.i110.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.split.i110.epil.preheader ], [ %epil.iter.next, %.lr.ph.split.i110.epil ]
  %i.ji = lshr i64 %.03033.i112.epil, 8           ; 2 uses
  %i.jj = trunc i64 %i.ji to i8
  %i.jk = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv.i111.epil
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !17
  %indvars.iv.next.i113.epil = add nuw nsw i64 %indvars.iv.i111.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i106, label %.lr.ph.split.i110.epil, !llvm.loop !33

.loopexit.i106:                                   ; preds = %.loopexit.i106.loopexit206.unr-lcssa, %.lr.ph.split.i110.epil, %.loopexit.i106.loopexit.unr-lcssa, %.lr.ph.split.us.i122.epil, %bb.ag
  %i.jl = load ptr, ptr %1, align 8, !tbaa !19
  %i.jm = sext i32 %i.n to i64
  %i.jn = getelementptr inbounds i8, ptr %i.jl, i64 %i.jm
  store ptr %i.jn, ptr %1, align 8, !tbaa !19
  br label %packint.exit130

packint.exit130:                                  ; preds = %bb.af, %.loopexit.i106
  %i.jo = load i64, ptr %i.e, align 8, !tbaa !29
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef %i.ha, i64 noundef %i.jo) #7
  %i.jp = load i64, ptr %i.e, align 8, !tbaa !29
  %i.jq = add i64 %i.jp, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %packint.exit

bb.ah:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.jr = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull %i.f) #7 ; 2 uses
  %i.js = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jr) #8 ; 2 uses
  %i.jt = load i64, ptr %i.f, align 8, !tbaa !29
  %i.ju = icmp eq i64 %i.js, %i.jt
  br i1 %i.ju, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jv = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.8) #7 ; 0 uses
  %.pre188 = load i64, ptr %i.f, align 8, !tbaa !29
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.jw = phi i64 [ %.pre188, %bb.ai ], [ %i.js, %bb.ah ]
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef nonnull %i.jr, i64 noundef %i.jw) #7
  %i.jx = load ptr, ptr %1, align 8, !tbaa !19    ; 2 uses
  %i.jy = icmp ult ptr %i.jx, %i.k
  br i1 %i.jy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jz = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre189 = load ptr, ptr %1, align 8, !tbaa !19
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ka = phi ptr [ %.pre189, %bb.ak ], [ %i.jx, %bb.aj ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 1
  store ptr %i.kb, ptr %1, align 8, !tbaa !19
  store i8 0, ptr %i.ka, align 1, !tbaa !17
  %i.kc = load i64, ptr %i.f, align 8, !tbaa !29
  %i.kd = add i64 %i.q, 1
  %i.ke = add i64 %i.kd, %i.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %packint.exit

bb.am:                                            ; preds = %._crit_edge
  %i.kf = load ptr, ptr %1, align 8, !tbaa !19    ; 2 uses
  %i.kg = icmp ult ptr %i.kf, %i.k
  br i1 %i.kg, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kh = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre187 = load ptr, ptr %1, align 8, !tbaa !19
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ki = phi ptr [ %.pre187, %bb.an ], [ %i.kf, %bb.am ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 1
  store ptr %i.kj, ptr %1, align 8, !tbaa !19
  store i8 0, ptr %i.ki, align 1, !tbaa !17
  br label %packint.exit

default.unreachable200:                           ; preds = %._crit_edge
  unreachable

packint.exit:                                     ; preds = %.loopexit.i64, %bb.o, %.loopexit.i, %bb.i, %._crit_edge, %._crit_edge, %bb.ao, %bb.al, %packint.exit130, %._crit_edge140, %copywithendian.exit104, %copywithendian.exit97, %copywithendian.exit
  %.155 = phi i64 [ %i.ke, %bb.al ], [ %i.q, %._crit_edge ], [ %i.q, %.loopexit.i ], [ %i.q, %copywithendian.exit ], [ %i.q, %copywithendian.exit97 ], [ %i.q, %copywithendian.exit104 ], [ %i.q, %._crit_edge140 ], [ %i.jq, %packint.exit130 ], [ %i.q, %bb.ao ], [ %i.q, %._crit_edge ], [ %i.q, %bb.i ], [ %i.q, %bb.o ], [ %i.q, %.loopexit.i64 ]
  %.1 = phi i32 [ %i.z, %bb.al ], [ %.0143, %._crit_edge ], [ %i.z, %.loopexit.i ], [ %i.z, %copywithendian.exit ], [ %i.z, %copywithendian.exit97 ], [ %i.z, %copywithendian.exit104 ], [ %i.z, %._crit_edge140 ], [ %i.z, %packint.exit130 ], [ %.0143, %bb.ao ], [ %.0143, %._crit_edge ], [ %i.z, %bb.i ], [ %i.z, %bb.o ], [ %i.z, %.loopexit.i64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.kk = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !17
  %.not = icmp eq i8 %i.kl, 0
  br i1 %.not, label %._crit_edge146, label %bb.b, !llvm.loop !34

._crit_edge146:                                   ; preds = %packint.exit, %bb.a
  call void @luaL_pushresult(ptr noundef nonnull %1) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 1
}

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483647, -2147483648) i32 @str_unpack(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.Header, align 8             ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.e = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #7 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.f = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b) #7 ; 7 uses
  %i.g = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef 1) #7 ; 5 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !29   ; 3 uses
  %i.i = icmp sgt i64 %i.g, 0
  br i1 %i.i, label %posrelatI.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.g, 0
  %i.k = sub nsw i64 0, %i.h
  %i.l = icmp slt i64 %i.g, %i.k
  %or.cond.i = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond.i, label %posrelatI.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i64 %i.g, 1
  %i.n = add i64 %i.m, %i.h
  br label %posrelatI.exit

posrelatI.exit:                                   ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i64 [ %i.n, %bb.c ], [ %i.g, %bb.a ], [ 1, %bb.b ] ; 2 uses
  %i.o = add i64 %.0.i, -1                        ; 2 uses
  %.not = icmp ugt i64 %i.o, %i.h
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %posrelatI.exit
  %i.p = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.15) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %posrelatI.exit
  store ptr %0, ptr %1, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store i32 1, ptr %i.q, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !16
  %i.s = load i8, ptr %i.e, align 1, !tbaa !17
  %.not6087 = icmp eq i8 %i.s, 0
  br i1 %.not6087, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.y
  %.089 = phi i64 [ %i.hp, %bb.y ], [ %i.o, %bb.e ] ; 3 uses
  %.05888 = phi i32 [ %.159, %bb.y ], [ 0, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.t = call fastcc i32 @getdetails(ptr noundef %1, i64 noundef %.089, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %i.u = load i32, ptr %i.d, align 4, !tbaa !18
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = load i32, ptr %i.c, align 4, !tbaa !18   ; 34 uses
  %i.x = sext i32 %i.w to i64                     ; 5 uses
  %i.y = add nsw i64 %i.x, %i.v
  %i.z = load i64, ptr %i.b, align 8, !tbaa !29
  %i.aa = sub i64 %i.z, %.089
  %.not61 = icmp ugt i64 %i.y, %i.aa
  br i1 %.not61, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ab = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.16) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.ac = add i64 %.089, %i.v                     ; 19 uses
  call void @luaL_checkstack(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.17) #7
  %i.ad = add nsw i32 %.05888, 1                  ; 7 uses
  switch i32 %i.t, label %default.unreachable167 [
    i32 0, label %bb.h
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.k
    i32 4, label %bb.m
    i32 5, label %bb.o
    i32 6, label %bb.p
    i32 7, label %bb.v
    i32 9, label %bb.y
    i32 8, label %bb.y
    i32 10, label %bb.y
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac
  %i.af = load i32, ptr %i.q, align 8, !tbaa !15
  %i.ag = icmp eq i32 %i.t, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = call fastcc i64 @unpackint(ptr noundef %0, ptr noundef %i.ae, i32 noundef %i.af, i32 noundef %i.w, i32 noundef %i.ah)
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ai) #7
  br label %bb.y

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 2 uses
  %i.ak = load i32, ptr %i.q, align 8, !tbaa !15
  %i.al = icmp eq i32 %i.ak, 1
  br i1 %i.al, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.am = load i32, ptr %i.aj, align 1
  %i.an = call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = bitcast i32 %i.an to float
  br label %copywithendian.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = load float, ptr %i.aj, align 1
  br label %copywithendian.exit

copywithendian.exit:                              ; preds = %.preheader, %bb.j
  %.1162 = phi float [ %i.ap, %bb.j ], [ %i.ao, %.preheader ]
  %i.aq = fpext float %.1162 to double
  call void @lua_pushnumber(ptr noundef %0, double noundef %i.aq) #7
  br label %bb.y

bb.k:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 9 uses
  %i.as = load i32, ptr %i.q, align 8, !tbaa !15
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.l, label %.preheader91

.preheader91:                                     ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !17
  %.7.insert.ext133 = zext i8 %i.av to i64
  %.7.insert.shift134 = shl nuw i64 %.7.insert.ext133, 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !17
  %.6.insert.ext128 = zext i8 %i.ax to i64
  %.6.insert.shift129 = shl nuw nsw i64 %.6.insert.ext128, 48
  %.6.insert.insert131 = or disjoint i64 %.7.insert.shift134, %.6.insert.shift129
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !17
  %.5.insert.ext123 = zext i8 %i.az to i64
  %.5.insert.shift124 = shl nuw nsw i64 %.5.insert.ext123, 40
  %.5.insert.insert126 = or disjoint i64 %.6.insert.insert131, %.5.insert.shift124
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.bb = load i8, ptr %i.ay, align 1, !tbaa !17
  %.4.insert.ext118 = zext i8 %i.bb to i64
  %.4.insert.shift119 = shl nuw nsw i64 %.4.insert.ext118, 32
  %.4.insert.insert121 = or disjoint i64 %.5.insert.insert126, %.4.insert.shift119
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 5
  %i.bd = load i8, ptr %i.ba, align 1, !tbaa !17
  %.3.insert.ext113 = zext i8 %i.bd to i64
  %.3.insert.shift114 = shl nuw nsw i64 %.3.insert.ext113, 24
  %.3.insert.insert116 = or disjoint i64 %.4.insert.insert121, %.3.insert.shift114
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  %i.bf = load i8, ptr %i.bc, align 1, !tbaa !17
  %.2.insert.ext108 = zext i8 %i.bf to i64
  %.2.insert.shift109 = shl nuw nsw i64 %.2.insert.ext108, 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 7
  %i.bh = load i8, ptr %i.be, align 1, !tbaa !17
  %.1.insert.ext103 = zext i8 %i.bh to i64
  %.1.insert.shift104 = shl nuw nsw i64 %.1.insert.ext103, 8
  %.1.insert.mask105 = or disjoint i64 %.3.insert.insert116, %.2.insert.shift109
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !17
  %.0.insert.ext99 = zext i8 %i.bi to i64
  %.0.insert.mask100 = or i64 %.1.insert.mask105, %.1.insert.shift104
  %.0.insert.insert101 = or i64 %.0.insert.mask100, %.0.insert.ext99
  %i.bj = bitcast i64 %.0.insert.insert101 to double
  br label %copywithendian.exit69

bb.l:                                             ; preds = %bb.k
  %i.bk = load double, ptr %i.ar, align 1
  br label %copywithendian.exit69

copywithendian.exit69:                            ; preds = %.preheader91, %bb.l
  %.1159 = phi double [ %i.bk, %bb.l ], [ %i.bj, %.preheader91 ]
  call void @lua_pushnumber(ptr noundef %0, double noundef %.1159) #7
  br label %bb.y

bb.m:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 9 uses
  %i.bm = load i32, ptr %i.q, align 8, !tbaa !15
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.n, label %.preheader92

.preheader92:                                     ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !17
  %.7.insert.ext = zext i8 %i.bp to i64
  %.7.insert.shift = shl nuw i64 %.7.insert.ext, 56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !17
  %.6.insert.ext = zext i8 %i.br to i64
  %.6.insert.shift = shl nuw nsw i64 %.6.insert.ext, 48
  %.6.insert.insert = or disjoint i64 %.7.insert.shift, %.6.insert.shift
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bt = load i8, ptr %i.bq, align 1, !tbaa !17
  %.5.insert.ext = zext i8 %i.bt to i64
  %.5.insert.shift = shl nuw nsw i64 %.5.insert.ext, 40
  %.5.insert.insert = or disjoint i64 %.6.insert.insert, %.5.insert.shift
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !17
  %.4.insert.ext = zext i8 %i.bv to i64
  %.4.insert.shift = shl nuw nsw i64 %.4.insert.ext, 32
  %.4.insert.insert = or disjoint i64 %.5.insert.insert, %.4.insert.shift
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 5
  %i.bx = load i8, ptr %i.bu, align 1, !tbaa !17
  %.3.insert.ext = zext i8 %i.bx to i64
  %.3.insert.shift = shl nuw nsw i64 %.3.insert.ext, 24
  %.3.insert.insert = or disjoint i64 %.4.insert.insert, %.3.insert.shift
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  %i.bz = load i8, ptr %i.bw, align 1, !tbaa !17
  %.2.insert.ext = zext i8 %i.bz to i64
  %.2.insert.shift = shl nuw nsw i64 %.2.insert.ext, 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 7
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !17
  %.1.insert.ext = zext i8 %i.cb to i64
  %.1.insert.shift = shl nuw nsw i64 %.1.insert.ext, 8
  %.1.insert.mask = or disjoint i64 %.3.insert.insert, %.2.insert.shift
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !17
  %.0.insert.ext = zext i8 %i.cc to i64
  %.0.insert.mask = or i64 %.1.insert.mask, %.1.insert.shift
  %.0.insert.insert = or i64 %.0.insert.mask, %.0.insert.ext
  %i.cd = bitcast i64 %.0.insert.insert to double
  br label %copywithendian.exit75

bb.n:                                             ; preds = %bb.m
  %i.ce = load double, ptr %i.bl, align 1
  br label %copywithendian.exit75

copywithendian.exit75:                            ; preds = %.preheader92, %bb.n
  %.1157 = phi double [ %i.ce, %bb.n ], [ %i.cd, %.preheader92 ]
  call void @lua_pushnumber(ptr noundef %0, double noundef %.1157) #7
  br label %bb.y

bb.o:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac
  call void @lua_pushlstring(ptr noundef %0, ptr noundef %i.cf, i64 noundef %i.x) #7
  br label %bb.y

bb.p:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 19 uses
  %2 = call i32 @llvm.smin.i32(i32 %i.w, i32 8)
  %i.ch = icmp sgt i32 %i.w, 0
  br i1 %i.ch, label %.lr.ph.i, label %unpackint.exit.thread

.lr.ph.i:                                         ; preds = %bb.p
  %i.ci = load i32, ptr %i.q, align 8, !tbaa !15
  %.not41.i = icmp eq i32 %i.ci, 0
  %i.cj = call i32 @llvm.umin.i32(i32 %i.w, i32 8) ; 9 uses
  %i.ck = zext nneg i32 %i.cj to i64              ; 8 uses
  br i1 %.not41.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.cl = sub nsw i32 %i.w, %i.cj
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds i8, ptr %i.cg, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !17
  %i.cp = zext i8 %i.co to i64                    ; 2 uses
  %.not186.a = icmp eq i32 %i.w, 1
  br i1 %.not186.a, label %._crit_edge.i, label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %.lr.ph.split.us.i
  %indvars.iv.next52.i = add nsw i32 %i.cj, -1
  %i.cq = shl nuw nsw i64 %i.cp, 8
  %i.cr = sub i32 %i.w, %indvars.iv.next52.i
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds i8, ptr %i.cg, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !17
  %i.cv = zext i8 %i.cu to i64
  %i.cw = or disjoint i64 %i.cq, %i.cv            ; 2 uses
  %i.cx = icmp ugt i32 %i.w, 2
  br i1 %i.cx, label %.lr.ph.split.us.i.2, label %._crit_edge.i

.lr.ph.split.us.i.2:                              ; preds = %.lr.ph.split.us.i.1
  %indvars.iv.next52.i.1 = add nsw i32 %i.cj, -2
  %i.cy = shl nuw nsw i64 %i.cw, 8
  %i.cz = sub i32 %i.w, %indvars.iv.next52.i.1
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr %i.cg, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !17
  %i.dd = zext i8 %i.dc to i64
  %i.de = or disjoint i64 %i.cy, %i.dd            ; 2 uses
  %.not187 = icmp eq i32 %i.w, 3
  br i1 %.not187, label %._crit_edge.i, label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %.lr.ph.split.us.i.2
  %indvars.iv.next52.i.2 = add nsw i32 %i.cj, -3
  %i.df = shl nuw nsw i64 %i.de, 8
  %i.dg = sub i32 %i.w, %indvars.iv.next52.i.2
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %i.cg, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !17
  %i.dk = zext i8 %i.dj to i64
  %i.dl = or disjoint i64 %i.df, %i.dk            ; 2 uses
  %i.dm = icmp ugt i32 %i.w, 4
  br i1 %i.dm, label %.lr.ph.split.us.i.4, label %._crit_edge.i

.lr.ph.split.us.i.4:                              ; preds = %.lr.ph.split.us.i.3
  %indvars.iv.next52.i.3 = add nsw i32 %i.cj, -4
  %i.dn = shl i64 %i.dl, 8
  %i.do = sub i32 %i.w, %indvars.iv.next52.i.3
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds i8, ptr %i.cg, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !17
  %i.ds = zext i8 %i.dr to i64
  %i.dt = or disjoint i64 %i.dn, %i.ds            ; 2 uses
  %.not188 = icmp eq i32 %i.w, 5
  br i1 %.not188, label %._crit_edge.i, label %.lr.ph.split.us.i.5

.lr.ph.split.us.i.5:                              ; preds = %.lr.ph.split.us.i.4
  %indvars.iv.next52.i.4 = add nsw i32 %i.cj, -5
  %i.du = shl i64 %i.dt, 8
  %i.dv = sub i32 %i.w, %indvars.iv.next52.i.4
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds i8, ptr %i.cg, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !17
  %i.dz = zext i8 %i.dy to i64
  %i.ea = or disjoint i64 %i.du, %i.dz            ; 2 uses
  %i.eb = icmp ugt i32 %i.w, 6
  br i1 %i.eb, label %.lr.ph.split.us.i.6, label %._crit_edge.i

.lr.ph.split.us.i.6:                              ; preds = %.lr.ph.split.us.i.5
  %indvars.iv.next52.i.5 = add nsw i32 %i.cj, -6
  %i.ec = shl i64 %i.ea, 8
  %i.ed = sub i32 %i.w, %indvars.iv.next52.i.5
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %i.cg, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !17
  %i.eh = zext i8 %i.eg to i64
  %i.ei = or disjoint i64 %i.ec, %i.eh            ; 2 uses
  %.not189 = icmp eq i32 %i.w, 7
  br i1 %.not189, label %._crit_edge.i, label %.lr.ph.split.us.i.7

.lr.ph.split.us.i.7:                              ; preds = %.lr.ph.split.us.i.6
  %indvars.iv.next52.i.6 = add nsw i32 %i.cj, -7
  %i.ej = shl i64 %i.ei, 8
  %i.ek = sub i32 %i.w, %indvars.iv.next52.i.6
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds i8, ptr %i.cg, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !17
  %i.eo = zext i8 %i.en to i64
  %i.ep = or disjoint i64 %i.ej, %i.eo
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.eq = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.er = getelementptr i8, ptr %i.eq, i64 -1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !17
  %i.et = zext i8 %i.es to i64                    ; 2 uses
  %.not182 = icmp eq i32 %i.w, 1
  br i1 %.not182, label %._crit_edge.i.thread, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  %i.eu = shl nuw nsw i64 %i.et, 8
  %i.ev = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.ew = getelementptr i8, ptr %i.ev, i64 -2
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !17
  %i.ey = zext i8 %i.ex to i64
  %i.ez = or disjoint i64 %i.eu, %i.ey            ; 2 uses
  %i.fa = icmp ugt i32 %i.w, 2
  br i1 %i.fa, label %.lr.ph.split.i.2, label %._crit_edge.i.thread

.lr.ph.split.i.2:                                 ; preds = %.lr.ph.split.i.1
  %i.fb = shl nuw nsw i64 %i.ez, 8
  %i.fc = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.fd = getelementptr i8, ptr %i.fc, i64 -3
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !17
  %i.ff = zext i8 %i.fe to i64
  %i.fg = or disjoint i64 %i.fb, %i.ff            ; 2 uses
  %.not183 = icmp eq i32 %i.w, 3
  br i1 %.not183, label %._crit_edge.i.thread, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %.lr.ph.split.i.2
  %i.fh = shl nuw nsw i64 %i.fg, 8
  %i.fi = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.fj = getelementptr i8, ptr %i.fi, i64 -4
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !17
  %i.fl = zext i8 %i.fk to i64
  %i.fm = or disjoint i64 %i.fh, %i.fl            ; 2 uses
  %i.fn = icmp ugt i32 %i.w, 4
  br i1 %i.fn, label %.lr.ph.split.i.4, label %._crit_edge.i.thread

.lr.ph.split.i.4:                                 ; preds = %.lr.ph.split.i.3
  %i.fo = shl i64 %i.fm, 8
  %i.fp = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.fq = getelementptr i8, ptr %i.fp, i64 -5
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !17
  %i.fs = zext i8 %i.fr to i64
  %i.ft = or disjoint i64 %i.fo, %i.fs            ; 2 uses
  %.not184 = icmp eq i32 %i.w, 5
  br i1 %.not184, label %._crit_edge.i.thread, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %.lr.ph.split.i.4
  %i.fu = shl i64 %i.ft, 8
  %i.fv = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.fw = getelementptr i8, ptr %i.fv, i64 -6
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !17
  %i.fy = zext i8 %i.fx to i64
  %i.fz = or disjoint i64 %i.fu, %i.fy            ; 2 uses
  %i.ga = icmp ugt i32 %i.w, 6
  br i1 %i.ga, label %.lr.ph.split.i.6, label %._crit_edge.i.thread

.lr.ph.split.i.6:                                 ; preds = %.lr.ph.split.i.5
  %i.gb = shl i64 %i.fz, 8
  %i.gc = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.gd = getelementptr i8, ptr %i.gc, i64 -7
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !17
  %i.gf = zext i8 %i.ge to i64
  %i.gg = or disjoint i64 %i.gb, %i.gf            ; 2 uses
  %.not185 = icmp eq i32 %i.w, 7
  br i1 %.not185, label %._crit_edge.i.thread, label %.lr.ph.split.i.7

.lr.ph.split.i.7:                                 ; preds = %.lr.ph.split.i.6
  %i.gh = shl i64 %i.gg, 8
  %i.gi = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.gj = getelementptr i8, ptr %i.gi, i64 -8
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !17
  %i.gl = zext i8 %i.gk to i64
  %i.gm = or disjoint i64 %i.gh, %i.gl
  br label %._crit_edge.i.thread

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.i.7, %.lr.ph.split.us.i.6, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i
  %.lcssa180 = phi i64 [ %i.cp, %.lr.ph.split.us.i ], [ %i.cw, %.lr.ph.split.us.i.1 ], [ %i.de, %.lr.ph.split.us.i.2 ], [ %i.dl, %.lr.ph.split.us.i.3 ], [ %i.dt, %.lr.ph.split.us.i.4 ], [ %i.ea, %.lr.ph.split.us.i.5 ], [ %i.ei, %.lr.ph.split.us.i.6 ], [ %i.ep, %.lr.ph.split.us.i.7 ] ; 2 uses
  %i.gn = icmp samesign ult i32 %i.w, 9
  br i1 %i.gn, label %unpackint.exit, label %.lr.ph46.split.us.preheader.i

._crit_edge.i.thread:                             ; preds = %.lr.ph.split.i.7, %.lr.ph.split.i.6, %.lr.ph.split.i.5, %.lr.ph.split.i.4, %.lr.ph.split.i.3, %.lr.ph.split.i.2, %.lr.ph.split.i.1, %.lr.ph.split.i
  %.lcssa = phi i64 [ %i.et, %.lr.ph.split.i ], [ %i.ez, %.lr.ph.split.i.1 ], [ %i.fg, %.lr.ph.split.i.2 ], [ %i.fm, %.lr.ph.split.i.3 ], [ %i.ft, %.lr.ph.split.i.4 ], [ %i.fz, %.lr.ph.split.i.5 ], [ %i.gg, %.lr.ph.split.i.6 ], [ %i.gm, %.lr.ph.split.i.7 ] ; 2 uses
  %i.go = icmp samesign ult i32 %i.w, 9
  br i1 %i.go, label %unpackint.exit, label %.lr.ph46.split.preheader.i

.lr.ph46.split.preheader.i:                       ; preds = %._crit_edge.i.thread
  %i.gp = zext nneg i32 %2 to i64
  br label %.lr.ph46.split.i

.lr.ph46.split.us.preheader.i:                    ; preds = %._crit_edge.i
  %i.gq = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.us.i

.lr.ph46.split.us.i:                              ; preds = %bb.r, %.lr.ph46.split.us.preheader.i
  %indvars.iv57.i = phi i64 [ 8, %.lr.ph46.split.us.preheader.i ], [ %indvars.iv.next58.i, %bb.r ] ; 2 uses
  %i.gr = trunc nsw i64 %indvars.iv57.i to i32
  %i.gs = xor i32 %i.gr, -1
  %i.gt = add nsw i32 %i.w, %i.gs
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds i8, ptr %i.cg, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !17
  %.not39.us.i = icmp eq i8 %i.gw, 0
  br i1 %.not39.us.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph46.split.us.i
  %i.gx = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %i.w) #7 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph46.split.us.i
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next58.i, %i.gq
  br i1 %exitcond.not.a, label %unpackint.exit, label %.lr.ph46.split.us.i, !llvm.loop !35

.lr.ph46.split.i:                                 ; preds = %bb.t, %.lr.ph46.split.preheader.i
  %indvars.iv53.i = phi i64 [ %i.gp, %.lr.ph46.split.preheader.i ], [ %indvars.iv.next54.i, %bb.t ] ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv53.i
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !17
  %.not39.i = icmp eq i8 %i.gz, 0
  br i1 %.not39.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph46.split.i
  %i.ha = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %i.w) #7 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph46.split.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %3 = trunc nuw i64 %indvars.iv.next54.i to i32
  %4 = icmp sgt i32 %i.w, %3
  br i1 %4, label %.lr.ph46.split.i, label %unpackint.exit, !llvm.loop !35

unpackint.exit:                                   ; preds = %bb.t, %bb.r, %._crit_edge.i.thread, %._crit_edge.i
  %.0.lcssa.i170 = phi i64 [ %.lcssa, %._crit_edge.i.thread ], [ %.lcssa180, %bb.r ], [ %.lcssa180, %._crit_edge.i ], [ %.lcssa, %bb.t ] ; 3 uses
  %i.hb = load i64, ptr %i.b, align 8, !tbaa !29
  %i.hc = add i64 %i.ac, %i.x
  %i.hd = sub i64 %i.hb, %i.hc
  %.not62 = icmp ugt i64 %.0.lcssa.i170, %i.hd
  br i1 %.not62, label %bb.u, label %unpackint.exit.thread

bb.u:                                             ; preds = %unpackint.exit
  %i.he = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.16) #7 ; 0 uses
  br label %unpackint.exit.thread

unpackint.exit.thread:                            ; preds = %bb.p, %bb.u, %unpackint.exit
  %.1.i79 = phi i64 [ %.0.lcssa.i170, %unpackint.exit ], [ %.0.lcssa.i170, %bb.u ], [ 0, %bb.p ] ; 2 uses
  %i.hf = getelementptr inbounds i8, ptr %i.cg, i64 %i.x
  call void @lua_pushlstring(ptr noundef %0, ptr noundef %i.hf, i64 noundef %.1.i79) #7
  %i.hg = add i64 %.1.i79, %i.ac
  br label %bb.y

bb.v:                                             ; preds = %bb.g
  %i.hh = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 2 uses
  %i.hi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.hh) #8 ; 3 uses
  %i.hj = add i64 %i.hi, %i.ac
  %i.hk = load i64, ptr %i.b, align 8, !tbaa !29
  %i.hl = icmp ult i64 %i.hj, %i.hk
  br i1 %i.hl, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hm = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.18) #7 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.hh, i64 noundef %i.hi) #7
  %i.hn = add i64 %i.ac, 1
  %i.ho = add i64 %i.hn, %i.hi
  br label %bb.y

default.unreachable167:                           ; preds = %bb.g
  unreachable

bb.y:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.x, %unpackint.exit.thread, %bb.o, %copywithendian.exit75, %copywithendian.exit69, %copywithendian.exit, %bb.h
  %.159 = phi i32 [ %i.ad, %bb.x ], [ %i.ad, %bb.h ], [ %i.ad, %copywithendian.exit ], [ %i.ad, %copywithendian.exit69 ], [ %i.ad, %copywithendian.exit75 ], [ %i.ad, %bb.o ], [ %i.ad, %unpackint.exit.thread ], [ %.05888, %bb.g ], [ %.05888, %bb.g ], [ %.05888, %bb.g ] ; 2 uses
  %.1 = phi i64 [ %i.ho, %bb.x ], [ %i.ac, %bb.h ], [ %i.ac, %copywithendian.exit ], [ %i.ac, %copywithendian.exit69 ], [ %i.ac, %copywithendian.exit75 ], [ %i.ac, %bb.o ], [ %i.hg, %unpackint.exit.thread ], [ %i.ac, %bb.g ], [ %i.ac, %bb.g ], [ %i.ac, %bb.g ]
  %i.hp = add i64 %.1, %i.x                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.hq = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !17
  %.not60 = icmp eq i8 %i.hr, 0
  br i1 %.not60, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !36

._crit_edge.loopexit:                             ; preds = %bb.y
  %i.hs = add i64 %i.hp, 1
  %i.ht = add nsw i32 %.159, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.058.lcssa = phi i32 [ 1, %bb.e ], [ %i.ht, %._crit_edge.loopexit ]
  %.0.lcssa = phi i64 [ %.0.i, %bb.e ], [ %i.hs, %._crit_edge.loopexit ]
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %.0.lcssa) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 %.058.lcssa
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @str_packsize(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.Header, align 8             ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #7 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !9
  store ptr %0, ptr %1, align 8, !tbaa !12
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !16
  %i.g = load i8, ptr %i.d, align 1, !tbaa !17
  %.not12 = icmp eq i8 %i.g, 0
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.013 = phi i64 [ %i.q, %bb.e ], [ 0, %bb.a ]   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.h = call fastcc i32 @getdetails(ptr noundef %1, i64 noundef %.013, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %i.i = add nsw i32 %i.h, -8
  %or.cond = icmp ult i32 %i.i, -2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.20) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.k = load i32, ptr %i.c, align 4, !tbaa !18
  %i.l = load i32, ptr %i.b, align 4, !tbaa !18
  %i.m = add nsw i32 %i.l, %i.k
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = sub nsw i64 2147483647, %i.n
  %.not11 = icmp ugt i64 %.013, %i.o
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.21) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = add i64 %.013, %i.n                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17
  %.not = icmp eq i8 %i.s, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.q, %bb.e ]
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %.0.lcssa) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 1
}

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @luaL_checklstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_pushnil(ptr noundef) local_unnamed_addr #1

declare void @luaL_buffinit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 11) i32 @getdetails(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call fastcc i32 @getoption(ptr noundef %0, ptr noundef %2, ptr noundef %3) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.c = load i32, ptr %3, align 4, !tbaa !18     ; 2 uses
  %i.d = icmp eq i32 %i.b, 9
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call fastcc i32 @getoption(ptr noundef %0, ptr noundef %2, ptr noundef %i.a)
  %i.i = icmp eq i32 %i.h, 5
  %i.j = load i32, ptr %i.a, align 4              ; 3 uses
  %i.k = icmp eq i32 %i.j, 0
  %or.cond = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = phi i32 [ %i.j, %bb.c ], [ %i.c, %bb.b ]
  %i.m = load ptr, ptr %0, align 8, !tbaa !12
  %i.n = tail call i32 @luaL_argerror(ptr noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str.9) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.o = phi i32 [ %i.l, %bb.d ], [ %i.j, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %i.p = icmp slt i32 %i.o, 2
  %i.q = icmp eq i32 %i.b, 5
  %or.cond3 = or i1 %i.q, %i.p
  br i1 %or.cond3, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !16
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %i.s) ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %spec.select)
  %.not = icmp samesign ult i32 %i.t, 2
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %0, align 8, !tbaa !12
  %i.v = tail call i32 @luaL_argerror(ptr noundef %i.u, i32 noundef 1, ptr noundef nonnull @.str.10) #7 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.w = add nsw i32 %spec.select, -1             ; 2 uses
  %i.x = trunc i64 %1 to i32
  %i.y = and i32 %i.w, %i.x
  %i.z = sub nsw i32 %spec.select, %i.y
  %i.aa = and i32 %i.z, %i.w
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
end_hunk_0
begin_hunk_1_@getoption:bb.a
  br i1 %i.aa, label %getnumlimit.exit43, label %.preheader.i.i37

.preheader.i.i37:                                 ; preds = %bb.p, %.preheader.i.i37
  %i.ab = phi ptr [ %i.ad, %.preheader.i.i37 ], [ %i.b, %bb.p ] ; 2 uses
  %.0.i.i38 = phi i32 [ %i.ah, %.preheader.i.i37 ], [ 0, %bb.p ]
  %i.ac = mul nsw i32 %.0.i.i38, 10
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1 ; 3 uses
  store ptr %i.ad, ptr %1, align 8, !tbaa !9
  %i.ae = load i8, ptr %i.ab, align 1, !tbaa !17
  %i.af = sext i8 %i.ae to i32
  %i.ag = add i32 %i.ac, -48
  %i.ah = add i32 %i.ag, %i.af                    ; 5 uses
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !17
  %i.aj = sext i8 %i.ai to i32
  %i.ak = add nsw i32 %i.aj, -48
  %i.al = icmp ult i32 %i.ak, 10
  %i.am = icmp slt i32 %i.ah, 214748364
  %i.an = select i1 %i.al, i1 %i.am, i1 false
  br i1 %i.an, label %.preheader.i.i37, label %getnum.exit.i39, !llvm.loop !38

getnum.exit.i39:                                  ; preds = %.preheader.i.i37
  %i.ao = add i32 %i.ah, -17
  %or.cond.i41 = icmp ult i32 %i.ao, -16
  br i1 %or.cond.i41, label %bb.q, label %getnumlimit.exit43

bb.q:                                             ; preds = %getnum.exit.i39
  %i.ap = load ptr, ptr %0, align 8, !tbaa !12
  %i.aq = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.ap, ptr noundef nonnull @.str.13, i32 noundef %i.ah, i32 noundef 16) #7
  br label %getnumlimit.exit43

getnumlimit.exit43:                               ; preds = %bb.p, %getnum.exit.i39, %bb.q
  %.0.i42 = phi i32 [ %i.aq, %bb.q ], [ %i.ah, %getnum.exit.i39 ], [ 4, %bb.p ]
  store i32 %.0.i42, ptr %2, align 4, !tbaa !18
  br label %bb.ae

bb.r:                                             ; preds = %bb.a
  %i.ar = load i8, ptr %i.b, align 1, !tbaa !17
  %i.as = sext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, -58
  %i.au = icmp ult i32 %i.at, -10
  br i1 %i.au, label %getnumlimit.exit50, label %.preheader.i.i44

.preheader.i.i44:                                 ; preds = %bb.r, %.preheader.i.i44
  %i.av = phi ptr [ %i.ax, %.preheader.i.i44 ], [ %i.b, %bb.r ] ; 2 uses
  %.0.i.i45 = phi i32 [ %i.bb, %.preheader.i.i44 ], [ 0, %bb.r ]
  %i.aw = mul nsw i32 %.0.i.i45, 10
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 3 uses
  store ptr %i.ax, ptr %1, align 8, !tbaa !9
  %i.ay = load i8, ptr %i.av, align 1, !tbaa !17
  %i.az = sext i8 %i.ay to i32
  %i.ba = add i32 %i.aw, -48
  %i.bb = add i32 %i.ba, %i.az                    ; 5 uses
  %i.bc = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.bd = sext i8 %i.bc to i32
  %i.be = add nsw i32 %i.bd, -48
  %i.bf = icmp ult i32 %i.be, 10
  %i.bg = icmp slt i32 %i.bb, 214748364
  %i.bh = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %i.bh, label %.preheader.i.i44, label %getnum.exit.i46, !llvm.loop !38

getnum.exit.i46:                                  ; preds = %.preheader.i.i44
  %i.bi = add i32 %i.bb, -17
  %or.cond.i48 = icmp ult i32 %i.bi, -16
  br i1 %or.cond.i48, label %bb.s, label %getnumlimit.exit50

bb.s:                                             ; preds = %getnum.exit.i46
  %i.bj = load ptr, ptr %0, align 8, !tbaa !12
  %i.bk = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.bj, ptr noundef nonnull @.str.13, i32 noundef %i.bb, i32 noundef 16) #7
  br label %getnumlimit.exit50

getnumlimit.exit50:                               ; preds = %bb.r, %getnum.exit.i46, %bb.s
  %.0.i49 = phi i32 [ %i.bk, %bb.s ], [ %i.bb, %getnum.exit.i46 ], [ 8, %bb.r ]
  store i32 %.0.i49, ptr %2, align 4, !tbaa !18
  br label %bb.ae

bb.t:                                             ; preds = %bb.a
  %i.bl = load i8, ptr %i.b, align 1, !tbaa !17
  %i.bm = sext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -58
  %i.bo = icmp ult i32 %i.bn, -10
  br i1 %i.bo, label %getnum.exit.thread, label %.preheader.i

getnum.exit.thread:                               ; preds = %bb.t
  store i32 -1, ptr %2, align 4, !tbaa !18
  br label %bb.u

.preheader.i:                                     ; preds = %bb.t, %.preheader.i
  %i.bp = phi ptr [ %i.br, %.preheader.i ], [ %i.b, %bb.t ] ; 2 uses
  %.0.i51 = phi i32 [ %i.bv, %.preheader.i ], [ 0, %bb.t ]
  %i.bq = mul nsw i32 %.0.i51, 10
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 3 uses
  store ptr %i.br, ptr %1, align 8, !tbaa !9
  %i.bs = load i8, ptr %i.bp, align 1, !tbaa !17
  %i.bt = sext i8 %i.bs to i32
  %i.bu = add i32 %i.bq, -48
  %i.bv = add i32 %i.bu, %i.bt                    ; 4 uses
  %i.bw = load i8, ptr %i.br, align 1, !tbaa !17
  %i.bx = sext i8 %i.bw to i32
  %i.by = add nsw i32 %i.bx, -48
  %i.bz = icmp ult i32 %i.by, 10
  %i.ca = icmp slt i32 %i.bv, 214748364
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %.preheader.i, label %getnum.exit, !llvm.loop !38

getnum.exit:                                      ; preds = %.preheader.i
  store i32 %i.bv, ptr %2, align 4, !tbaa !18
  %i.cc = icmp eq i32 %i.bv, -1
  br i1 %i.cc, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %getnum.exit.thread, %getnum.exit
  %i.cd = load ptr, ptr %0, align 8, !tbaa !12
  %i.ce = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.cd, ptr noundef nonnull @.str.11) #7 ; 0 uses
  br label %bb.ae

bb.v:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !18
  br label %bb.ae

bb.w:                                             ; preds = %bb.a
  br label %bb.ae

bb.x:                                             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.cf, align 8, !tbaa !15
  br label %bb.ad

bb.y:                                             ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.cg, align 8, !tbaa !15
  br label %bb.ad

bb.z:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ch, align 8, !tbaa !15
  br label %bb.ad

bb.aa:                                            ; preds = %bb.a
  %i.ci = load i8, ptr %i.b, align 1, !tbaa !17
  %i.cj = sext i8 %i.ci to i32
  %i.ck = add nsw i32 %i.cj, -58
  %i.cl = icmp ult i32 %i.ck, -10
  br i1 %i.cl, label %getnumlimit.exit58, label %.preheader.i.i52

.preheader.i.i52:                                 ; preds = %bb.aa, %.preheader.i.i52
  %i.cm = phi ptr [ %i.co, %.preheader.i.i52 ], [ %i.b, %bb.aa ] ; 2 uses
  %.0.i.i53 = phi i32 [ %i.cs, %.preheader.i.i52 ], [ 0, %bb.aa ]
  %i.cn = mul nsw i32 %.0.i.i53, 10
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 3 uses
  store ptr %i.co, ptr %1, align 8, !tbaa !9
  %i.cp = load i8, ptr %i.cm, align 1, !tbaa !17
  %i.cq = sext i8 %i.cp to i32
  %i.cr = add i32 %i.cn, -48
  %i.cs = add i32 %i.cr, %i.cq                    ; 5 uses
  %i.ct = load i8, ptr %i.co, align 1, !tbaa !17
  %i.cu = sext i8 %i.ct to i32
  %i.cv = add nsw i32 %i.cu, -48
  %i.cw = icmp ult i32 %i.cv, 10
  %i.cx = icmp slt i32 %i.cs, 214748364
  %i.cy = select i1 %i.cw, i1 %i.cx, i1 false
  br i1 %i.cy, label %.preheader.i.i52, label %getnum.exit.i54, !llvm.loop !38

getnum.exit.i54:                                  ; preds = %.preheader.i.i52
  %i.cz = add i32 %i.cs, -17
  %or.cond.i56 = icmp ult i32 %i.cz, -16
  br i1 %or.cond.i56, label %bb.ab, label %getnumlimit.exit58

bb.ab:                                            ; preds = %getnum.exit.i54
  %i.da = load ptr, ptr %0, align 8, !tbaa !12
  %i.db = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.da, ptr noundef nonnull @.str.13, i32 noundef %i.cs, i32 noundef 16) #7
  br label %getnumlimit.exit58

getnumlimit.exit58:                               ; preds = %bb.aa, %getnum.exit.i54, %bb.ab
  %.0.i57 = phi i32 [ %i.db, %bb.ab ], [ %i.cs, %getnum.exit.i54 ], [ 8, %bb.aa ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0.i57, ptr %i.dc, align 4, !tbaa !16
  br label %bb.ad

bb.ac:                                            ; preds = %bb.a
  %i.dd = sext i8 %i.c to i32
  %i.de = load ptr, ptr %0, align 8, !tbaa !12
  %i.df = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.de, ptr noundef nonnull @.str.12, i32 noundef %i.dd) #7 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %getnumlimit.exit58, %bb.z, %bb.y, %bb.x, %bb.a
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %getnum.exit, %bb.u, %bb.ad, %bb.w, %bb.v, %getnumlimit.exit50, %getnumlimit.exit43, %getnumlimit.exit, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 10, %bb.ad ], [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 2, %bb.k ], [ 3, %bb.l ], [ 4, %bb.m ], [ 0, %getnumlimit.exit ], [ 1, %getnumlimit.exit43 ], [ 6, %getnumlimit.exit50 ], [ 9, %bb.w ], [ 5, %getnum.exit ], [ 8, %bb.v ], [ 5, %bb.u ], [ 7, %bb.a ]
  ret i32 %.0
}

declare i32 @luaL_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare i64 @luaL_optinteger(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare void @luaL_checkstack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @unpackint(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %5 = tail call i32 @llvm.smin.i32(i32 %3, i32 8)
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %.not41 = icmp eq i32 %2, 0
  %i.b = tail call i32 @llvm.umin.i32(i32 %3, i32 8) ; 9 uses
  %i.c = zext nneg i32 %i.b to i64                ; 8 uses
  br i1 %.not41, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.d = sub nsw i32 %3, %i.b
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds i8, ptr %1, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %.not75 = icmp eq i32 %3, 1
  br i1 %.not75, label %._crit_edge, label %.lr.ph.split.us.1

.lr.ph.split.us.1:                                ; preds = %.lr.ph.split.us
  %indvars.iv.next52 = add nsw i32 %i.b, -1
  %i.i = shl nuw nsw i64 %i.h, 8
  %i.j = sub i32 %3, %indvars.iv.next52
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !17
  %i.n = zext i8 %i.m to i64
  %i.o = or disjoint i64 %i.i, %i.n               ; 2 uses
  %i.p = icmp ugt i32 %3, 2
  br i1 %i.p, label %.lr.ph.split.us.2, label %._crit_edge

.lr.ph.split.us.2:                                ; preds = %.lr.ph.split.us.1
  %indvars.iv.next52.1 = add nsw i32 %i.b, -2
  %i.q = shl nuw nsw i64 %i.o, 8
  %i.r = sub i32 %3, %indvars.iv.next52.1
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %1, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17
  %i.v = zext i8 %i.u to i64
  %i.w = or disjoint i64 %i.q, %i.v               ; 2 uses
  %.not76 = icmp eq i32 %3, 3
  br i1 %.not76, label %._crit_edge, label %.lr.ph.split.us.3

.lr.ph.split.us.3:                                ; preds = %.lr.ph.split.us.2
  %indvars.iv.next52.2 = add nsw i32 %i.b, -3
  %i.x = shl nuw nsw i64 %i.w, 8
  %i.y = sub i32 %3, %indvars.iv.next52.2
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %1, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !17
  %i.ac = zext i8 %i.ab to i64
  %i.ad = or disjoint i64 %i.x, %i.ac             ; 2 uses
  %i.ae = icmp ugt i32 %3, 4
  br i1 %i.ae, label %.lr.ph.split.us.4, label %._crit_edge

.lr.ph.split.us.4:                                ; preds = %.lr.ph.split.us.3
  %indvars.iv.next52.3 = add nsw i32 %i.b, -4
  %i.af = shl i64 %i.ad, 8
  %i.ag = sub i32 %3, %indvars.iv.next52.3
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !17
  %i.ak = zext i8 %i.aj to i64
  %i.al = or disjoint i64 %i.af, %i.ak            ; 2 uses
  %.not77 = icmp eq i32 %3, 5
  br i1 %.not77, label %._crit_edge, label %.lr.ph.split.us.5

.lr.ph.split.us.5:                                ; preds = %.lr.ph.split.us.4
  %indvars.iv.next52.4 = add nsw i32 %i.b, -5
  %i.am = shl i64 %i.al, 8
  %i.an = sub i32 %3, %indvars.iv.next52.4
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %1, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !17
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.am, %i.ar            ; 2 uses
  %i.at = icmp ugt i32 %3, 6
  br i1 %i.at, label %.lr.ph.split.us.6, label %._crit_edge

.lr.ph.split.us.6:                                ; preds = %.lr.ph.split.us.5
  %indvars.iv.next52.5 = add nsw i32 %i.b, -6
  %i.au = shl i64 %i.as, 8
  %i.av = sub i32 %3, %indvars.iv.next52.5
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %1, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.az = zext i8 %i.ay to i64
  %i.ba = or disjoint i64 %i.au, %i.az            ; 2 uses
  %.not78 = icmp eq i32 %3, 7
  br i1 %.not78, label %._crit_edge, label %.lr.ph.split.us.7

.lr.ph.split.us.7:                                ; preds = %.lr.ph.split.us.6
  %indvars.iv.next52.6 = add nsw i32 %i.b, -7
  %i.bb = shl i64 %i.ba, 8
  %i.bc = sub i32 %3, %indvars.iv.next52.6
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds i8, ptr %1, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !17
  %i.bg = zext i8 %i.bf to i64
  %i.bh = or disjoint i64 %i.bb, %i.bg
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bi = getelementptr i8, ptr %1, i64 %i.c
  %i.bj = getelementptr i8, ptr %i.bi, i64 -1
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !17
  %i.bl = zext i8 %i.bk to i64                    ; 2 uses
  %.not71 = icmp eq i32 %3, 1
  br i1 %.not71, label %._crit_edge, label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %.lr.ph.split
  %i.bm = shl nuw nsw i64 %i.bl, 8
  %i.bn = getelementptr i8, ptr %1, i64 %i.c
  %i.bo = getelementptr i8, ptr %i.bn, i64 -2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  %i.bq = zext i8 %i.bp to i64
  %i.br = or disjoint i64 %i.bm, %i.bq            ; 2 uses
  %i.bs = icmp ugt i32 %3, 2
  br i1 %i.bs, label %.lr.ph.split.2, label %._crit_edge

.lr.ph.split.2:                                   ; preds = %.lr.ph.split.1
  %i.bt = shl nuw nsw i64 %i.br, 8
  %i.bu = getelementptr i8, ptr %1, i64 %i.c
  %i.bv = getelementptr i8, ptr %i.bu, i64 -3
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !17
  %i.bx = zext i8 %i.bw to i64
  %i.by = or disjoint i64 %i.bt, %i.bx            ; 2 uses
  %.not72 = icmp eq i32 %3, 3
  br i1 %.not72, label %._crit_edge, label %.lr.ph.split.3

.lr.ph.split.3:                                   ; preds = %.lr.ph.split.2
  %i.bz = shl nuw nsw i64 %i.by, 8
  %i.ca = getelementptr i8, ptr %1, i64 %i.c
  %i.cb = getelementptr i8, ptr %i.ca, i64 -4
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !17
  %i.cd = zext i8 %i.cc to i64
  %i.ce = or disjoint i64 %i.bz, %i.cd            ; 2 uses
  %i.cf = icmp ugt i32 %3, 4
  br i1 %i.cf, label %.lr.ph.split.4, label %._crit_edge

.lr.ph.split.4:                                   ; preds = %.lr.ph.split.3
  %i.cg = shl i64 %i.ce, 8
  %i.ch = getelementptr i8, ptr %1, i64 %i.c
  %i.ci = getelementptr i8, ptr %i.ch, i64 -5
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !17
  %i.ck = zext i8 %i.cj to i64
  %i.cl = or disjoint i64 %i.cg, %i.ck            ; 2 uses
  %.not73 = icmp eq i32 %3, 5
  br i1 %.not73, label %._crit_edge, label %.lr.ph.split.5

.lr.ph.split.5:                                   ; preds = %.lr.ph.split.4
  %i.cm = shl i64 %i.cl, 8
  %i.cn = getelementptr i8, ptr %1, i64 %i.c
  %i.co = getelementptr i8, ptr %i.cn, i64 -6
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !17
  %i.cq = zext i8 %i.cp to i64
  %i.cr = or disjoint i64 %i.cm, %i.cq            ; 2 uses
  %i.cs = icmp ugt i32 %3, 6
  br i1 %i.cs, label %.lr.ph.split.6, label %._crit_edge

.lr.ph.split.6:                                   ; preds = %.lr.ph.split.5
  %i.ct = shl i64 %i.cr, 8
  %i.cu = getelementptr i8, ptr %1, i64 %i.c
  %i.cv = getelementptr i8, ptr %i.cu, i64 -7
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !17
  %i.cx = zext i8 %i.cw to i64
  %i.cy = or disjoint i64 %i.ct, %i.cx            ; 2 uses
  %.not74 = icmp eq i32 %3, 7
  br i1 %.not74, label %._crit_edge, label %.lr.ph.split.7

.lr.ph.split.7:                                   ; preds = %.lr.ph.split.6
  %i.cz = shl i64 %i.cy, 8
  %i.da = getelementptr i8, ptr %1, i64 %i.c
  %i.db = getelementptr i8, ptr %i.da, i64 -8
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !17
  %i.dd = zext i8 %i.dc to i64
  %i.de = or disjoint i64 %i.cz, %i.dd
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.1, %.lr.ph.split.2, %.lr.ph.split.3, %.lr.ph.split.4, %.lr.ph.split.5, %.lr.ph.split.6, %.lr.ph.split.7, %.lr.ph.split.us, %.lr.ph.split.us.1, %.lr.ph.split.us.2, %.lr.ph.split.us.3, %.lr.ph.split.us.4, %.lr.ph.split.us.5, %.lr.ph.split.us.6, %.lr.ph.split.us.7
  %.0.lcssa = phi i64 [ %i.bh, %.lr.ph.split.us.7 ], [ %i.h, %.lr.ph.split.us ], [ %i.o, %.lr.ph.split.us.1 ], [ %i.w, %.lr.ph.split.us.2 ], [ %i.ad, %.lr.ph.split.us.3 ], [ %i.al, %.lr.ph.split.us.4 ], [ %i.as, %.lr.ph.split.us.5 ], [ %i.ba, %.lr.ph.split.us.6 ], [ %i.bl, %.lr.ph.split ], [ %i.br, %.lr.ph.split.1 ], [ %i.by, %.lr.ph.split.2 ], [ %i.ce, %.lr.ph.split.3 ], [ %i.cl, %.lr.ph.split.4 ], [ %i.cr, %.lr.ph.split.5 ], [ %i.cy, %.lr.ph.split.6 ], [ %i.de, %.lr.ph.split.7 ] ; 5 uses
  %i.df = icmp samesign ult i32 %3, 8
  br i1 %i.df, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0.lcssa61 = phi i64 [ %.0.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.not40 = icmp eq i32 %4, 0
  br i1 %.not40, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread
  %i.dg = shl nsw i32 %3, 3
  %i.dh = add nsw i32 %i.dg, -1
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = shl nuw i64 1, %i.di                    ; 2 uses
  %i.dk = xor i64 %.0.lcssa61, %i.dj
  %i.dl = sub i64 %i.dk, %i.dj
  br label %.loopexit

bb.c:                                             ; preds = %._crit_edge
  %.not = icmp eq i32 %3, 8
  br i1 %.not, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.c
  %.not37 = icmp eq i32 %4, 0
  %i.dm = icmp sgt i64 %.0.lcssa, -1
  %i.dn = select i1 %.not37, i1 true, i1 %i.dm
  %i.do = select i1 %i.dn, i32 0, i32 255         ; 2 uses
  %.not38 = icmp eq i32 %2, 0
  br i1 %.not38, label %.lr.ph46.split.us.preheader, label %.lr.ph46.split.preheader

.lr.ph46.split.preheader:                         ; preds = %.lr.ph46
  %6 = zext nneg i32 %5 to i64
  br label %.lr.ph46.split

.lr.ph46.split.us.preheader:                      ; preds = %.lr.ph46
  %i.dp = zext nneg i32 %3 to i64
  br label %.lr.ph46.split.us

.lr.ph46.split.us:                                ; preds = %.lr.ph46.split.us.preheader, %bb.e
  %indvars.iv57 = phi i64 [ 8, %.lr.ph46.split.us.preheader ], [ %indvars.iv.next58, %bb.e ] ; 2 uses
  %i.dq = trunc nsw i64 %indvars.iv57 to i32
  %i.dr = xor i32 %i.dq, -1
  %i.ds = add nsw i32 %3, %i.dr
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds i8, ptr %1, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !17
  %i.dw = zext i8 %i.dv to i32
  %.not39.us = icmp eq i32 %i.do, %i.dw
  br i1 %.not39.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph46.split.us
  %i.dx = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %3) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph46.split.us, %bb.d
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.dy = icmp samesign ult i64 %indvars.iv.next58, %i.dp
  br i1 %i.dy, label %.lr.ph46.split.us, label %.loopexit, !llvm.loop !35

.lr.ph46.split:                                   ; preds = %.lr.ph46.split.preheader, %bb.g
  %indvars.iv53 = phi i64 [ %6, %.lr.ph46.split.preheader ], [ %indvars.iv.next54, %bb.g ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv53
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !17
  %i.eb = zext i8 %i.ea to i32
  %.not39 = icmp eq i32 %i.do, %i.eb
  br i1 %.not39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph46.split
  %i.ec = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %3) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph46.split, %bb.f
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.ed = trunc nuw i64 %indvars.iv.next54 to i32
  %i.ee = icmp sgt i32 %3, %i.ed
  br i1 %i.ee, label %.lr.ph46.split, label %.loopexit, !llvm.loop !35

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.c, %._crit_edge.thread, %bb.b
  %.1 = phi i64 [ %i.dl, %bb.b ], [ %.0.lcssa61, %._crit_edge.thread ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %bb.g ]
  ret i64 %.1
}

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @lua_pushnumber(ptr noundef, double noundef) local_unnamed_addr #1

declare void @lua_pushlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

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
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !14, i64 0}
!13 = !{!"Header", !14, i64 0, !6, i64 8, !6, i64 12}
!14 = !{!"p1 _ZTS9lua_State", !11, i64 0}
!15 = !{!13, !6, i64 8}
!16 = !{!13, !6, i64 12}
!17 = !{!7, !7, i64 0}
!18 = !{!6, !6, i64 0}
!19 = !{!20, !10, i64 0}
!20 = !{!"luaL_Buffer", !10, i64 0, !6, i64 8, !14, i64 16, !7, i64 24}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !25}
!27 = distinct !{!27, !25}
!28 = distinct !{!28, !25}
!29 = !{!30, !30, i64 0}
!30 = !{!"long", !7, i64 0}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !25}
!33 = distinct !{!33, !25}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !22}
!38 = distinct !{!38, !22}
end_hunk_1
