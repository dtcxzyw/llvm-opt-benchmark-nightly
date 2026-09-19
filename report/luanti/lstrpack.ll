Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/lstrpack?download=true
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
  %i.jg = sub nuw nsw i64 %i.hx, %indvars.iv39.i123.epil
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.jg
  store i8 %i.jf, ptr %i.jh, align 1, !tbaa !18
  %indvars.iv.next40.i125.epil = add nuw nsw i64 %indvars.iv39.i123.epil, 1
  %epil.iter209.next = add i64 %epil.iter209, 1   ; 2 uses
  %epil.iter209.cmp.not = icmp eq i64 %epil.iter209.next, %xtraiter208
  br i1 %epil.iter209.cmp.not, label %.loopexit.i106, label %.lr.ph.split.us.i122.epil, !llvm.loop !30

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
  store i8 %i.jj, ptr %i.jk, align 1, !tbaa !18
  %indvars.iv.next.i113.epil = add nuw nsw i64 %indvars.iv.i111.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i106, label %.lr.ph.split.i110.epil, !llvm.loop !31

.loopexit.i106:                                   ; preds = %.loopexit.i106.loopexit206.unr-lcssa, %.lr.ph.split.i110.epil, %.loopexit.i106.loopexit.unr-lcssa, %.lr.ph.split.us.i122.epil, %bb.ag
  %i.jl = load ptr, ptr %1, align 8, !tbaa !34
  %i.jm = sext i32 %i.n to i64
  %i.jn = getelementptr inbounds i8, ptr %i.jl, i64 %i.jm
  store ptr %i.jn, ptr %1, align 8, !tbaa !34
  br label %packint.exit130

packint.exit130:                                  ; preds = %bb.af, %.loopexit.i106
  %i.jo = load i64, ptr %i.e, align 8, !tbaa !22
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef %i.ha, i64 noundef %i.jo) #7
  %i.jp = load i64, ptr %i.e, align 8, !tbaa !22
  %i.jq = add i64 %i.jp, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %packint.exit

bb.ah:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.jr = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull %i.f) #7 ; 2 uses
  %i.js = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jr) #8 ; 2 uses
  %i.jt = load i64, ptr %i.f, align 8, !tbaa !22
  %i.ju = icmp eq i64 %i.js, %i.jt
  br i1 %i.ju, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jv = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.8) #7 ; 0 uses
  %.pre188 = load i64, ptr %i.f, align 8, !tbaa !22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.jw = phi i64 [ %.pre188, %bb.ai ], [ %i.js, %bb.ah ]
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef nonnull %i.jr, i64 noundef %i.jw) #7
  %i.jx = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.jy = icmp ult ptr %i.jx, %i.k
  br i1 %i.jy, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jz = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre189 = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ka = phi ptr [ %.pre189, %bb.ak ], [ %i.jx, %bb.aj ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 1
  store ptr %i.kb, ptr %1, align 8, !tbaa !34
  store i8 0, ptr %i.ka, align 1, !tbaa !18
  %i.kc = load i64, ptr %i.f, align 8, !tbaa !22
  %i.kd = add i64 %i.q, 1
  %i.ke = add i64 %i.kd, %i.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %packint.exit

bb.am:                                            ; preds = %._crit_edge
  %i.kf = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.kg = icmp ult ptr %i.kf, %i.k
  br i1 %i.kg, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kh = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre187 = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ki = phi ptr [ %.pre187, %bb.an ], [ %i.kf, %bb.am ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 1
  store ptr %i.kj, ptr %1, align 8, !tbaa !34
  store i8 0, ptr %i.ki, align 1, !tbaa !18
  br label %packint.exit

default.unreachable200:                           ; preds = %._crit_edge
  unreachable

packint.exit:                                     ; preds = %.loopexit.i64, %bb.o, %.loopexit.i, %bb.i, %._crit_edge, %._crit_edge, %bb.ao, %bb.al, %packint.exit130, %._crit_edge140, %copywithendian.exit104, %copywithendian.exit97, %copywithendian.exit
  %.155 = phi i64 [ %i.ke, %bb.al ], [ %i.q, %._crit_edge ], [ %i.q, %.loopexit.i ], [ %i.q, %copywithendian.exit ], [ %i.q, %copywithendian.exit97 ], [ %i.q, %copywithendian.exit104 ], [ %i.q, %._crit_edge140 ], [ %i.jq, %packint.exit130 ], [ %i.q, %bb.ao ], [ %i.q, %._crit_edge ], [ %i.q, %bb.i ], [ %i.q, %bb.o ], [ %i.q, %.loopexit.i64 ]
  %.1 = phi i32 [ %i.z, %bb.al ], [ %.0143, %._crit_edge ], [ %i.z, %.loopexit.i ], [ %i.z, %copywithendian.exit ], [ %i.z, %copywithendian.exit97 ], [ %i.z, %copywithendian.exit104 ], [ %i.z, %._crit_edge140 ], [ %i.z, %packint.exit130 ], [ %.0143, %bb.ao ], [ %.0143, %._crit_edge ], [ %i.z, %bb.i ], [ %i.z, %bb.o ], [ %i.z, %.loopexit.i64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.kk = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !18
  %.not = icmp eq i8 %i.kl, 0
  br i1 %.not, label %._crit_edge146, label %bb.b, !llvm.loop !32

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
  store ptr %i.e, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.f = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b) #7 ; 7 uses
  %i.g = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef 1) #7 ; 5 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !22   ; 3 uses
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
  store ptr %0, ptr %1, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store i32 1, ptr %i.q, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !17
  %i.s = load i8, ptr %i.e, align 1, !tbaa !18
  %.not6087 = icmp eq i8 %i.s, 0
  br i1 %.not6087, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.y
  %.089 = phi i32 [ %.1, %bb.y ], [ 0, %bb.e ]    ; 4 uses
  %.05888 = phi i64 [ %i.gw, %bb.y ], [ %i.o, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.t = call fastcc i32 @getdetails(ptr noundef %1, i64 noundef %.05888, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %i.u = load i32, ptr %i.d, align 4, !tbaa !19
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = load i32, ptr %i.c, align 4, !tbaa !19   ; 22 uses
  %i.x = sext i32 %i.w to i64                     ; 5 uses
  %i.y = add nsw i64 %i.x, %i.v
  %i.z = load i64, ptr %i.b, align 8, !tbaa !22
  %i.aa = sub i64 %i.z, %.05888
  %.not61 = icmp ugt i64 %i.y, %i.aa
  br i1 %.not61, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.ab = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.16) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.ac = add i64 %.05888, %i.v                   ; 19 uses
  call void @luaL_checkstack(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.17) #7
  %i.ad = add nsw i32 %.089, 1                    ; 7 uses
  switch i32 %i.t, label %default.unreachable163 [
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
  %i.af = load i32, ptr %i.q, align 8, !tbaa !16
  %i.ag = icmp eq i32 %i.t, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = call fastcc i64 @unpackint(ptr noundef %0, ptr noundef %i.ae, i32 noundef %i.af, i32 noundef %i.w, i32 noundef %i.ah)
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ai) #7
  br label %bb.y

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 2 uses
  %i.ak = load i32, ptr %i.q, align 8, !tbaa !16
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
  %.0159 = phi float [ %i.ap, %bb.j ], [ %i.ao, %.preheader ]
  %i.aq = fpext float %.0159 to double
  call void @lua_pushnumber(ptr noundef %0, double noundef %i.aq) #7
  br label %bb.y

bb.k:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 9 uses
  %i.as = load i32, ptr %i.q, align 8, !tbaa !16
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.l, label %.preheader91

.preheader91:                                     ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !18
  %.7.insert.ext134 = zext i8 %i.av to i64
  %.7.insert.shift135 = shl nuw i64 %.7.insert.ext134, 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !18
  %.6.insert.ext129 = zext i8 %i.ax to i64
  %.6.insert.shift130 = shl nuw nsw i64 %.6.insert.ext129, 48
  %.6.insert.insert132 = or disjoint i64 %.7.insert.shift135, %.6.insert.shift130
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !18
  %.5.insert.ext124 = zext i8 %i.az to i64
  %.5.insert.shift125 = shl nuw nsw i64 %.5.insert.ext124, 40
  %.5.insert.insert127 = or disjoint i64 %.6.insert.insert132, %.5.insert.shift125
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.bb = load i8, ptr %i.ay, align 1, !tbaa !18
  %.4.insert.ext119 = zext i8 %i.bb to i64
  %.4.insert.shift120 = shl nuw nsw i64 %.4.insert.ext119, 32
  %.4.insert.insert122 = or disjoint i64 %.5.insert.insert127, %.4.insert.shift120
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 5
  %i.bd = load i8, ptr %i.ba, align 1, !tbaa !18
  %.3.insert.ext114 = zext i8 %i.bd to i64
  %.3.insert.shift115 = shl nuw nsw i64 %.3.insert.ext114, 24
  %.3.insert.insert117 = or disjoint i64 %.4.insert.insert122, %.3.insert.shift115
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  %i.bf = load i8, ptr %i.bc, align 1, !tbaa !18
  %.2.insert.ext109 = zext i8 %i.bf to i64
  %.2.insert.shift110 = shl nuw nsw i64 %.2.insert.ext109, 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 7
  %i.bh = load i8, ptr %i.be, align 1, !tbaa !18
  %.1.insert.ext104 = zext i8 %i.bh to i64
  %.1.insert.shift105 = shl nuw nsw i64 %.1.insert.ext104, 8
  %.1.insert.mask106 = or disjoint i64 %.3.insert.insert117, %.2.insert.shift110
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !18
  %.0.insert.ext100 = zext i8 %i.bi to i64
  %.0.insert.mask101 = or i64 %.1.insert.mask106, %.1.insert.shift105
  %.0.insert.insert102 = or i64 %.0.insert.mask101, %.0.insert.ext100
  %i.bj = bitcast i64 %.0.insert.insert102 to double
  br label %copywithendian.exit69

bb.l:                                             ; preds = %bb.k
  %i.bk = load double, ptr %i.ar, align 1
  br label %copywithendian.exit69

copywithendian.exit69:                            ; preds = %.preheader91, %bb.l
  %.0158 = phi double [ %i.bk, %bb.l ], [ %i.bj, %.preheader91 ]
  call void @lua_pushnumber(ptr noundef %0, double noundef %.0158) #7
  br label %bb.y

bb.m:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 9 uses
  %i.bm = load i32, ptr %i.q, align 8, !tbaa !16
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.n, label %.preheader92

.preheader92:                                     ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !18
  %.7.insert.ext = zext i8 %i.bp to i64
  %.7.insert.shift = shl nuw i64 %.7.insert.ext, 56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !18
  %.6.insert.ext = zext i8 %i.br to i64
  %.6.insert.shift = shl nuw nsw i64 %.6.insert.ext, 48
  %.6.insert.insert = or disjoint i64 %.7.insert.shift, %.6.insert.shift
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bt = load i8, ptr %i.bq, align 1, !tbaa !18
  %.5.insert.ext = zext i8 %i.bt to i64
  %.5.insert.shift = shl nuw nsw i64 %.5.insert.ext, 40
  %.5.insert.insert = or disjoint i64 %.6.insert.insert, %.5.insert.shift
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !18
  %.4.insert.ext = zext i8 %i.bv to i64
  %.4.insert.shift = shl nuw nsw i64 %.4.insert.ext, 32
  %.4.insert.insert = or disjoint i64 %.5.insert.insert, %.4.insert.shift
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 5
  %i.bx = load i8, ptr %i.bu, align 1, !tbaa !18
  %.3.insert.ext = zext i8 %i.bx to i64
  %.3.insert.shift = shl nuw nsw i64 %.3.insert.ext, 24
  %.3.insert.insert = or disjoint i64 %.4.insert.insert, %.3.insert.shift
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  %i.bz = load i8, ptr %i.bw, align 1, !tbaa !18
  %.2.insert.ext = zext i8 %i.bz to i64
  %.2.insert.shift = shl nuw nsw i64 %.2.insert.ext, 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 7
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !18
  %.1.insert.ext = zext i8 %i.cb to i64
  %.1.insert.shift = shl nuw nsw i64 %.1.insert.ext, 8
  %.1.insert.mask = or disjoint i64 %.3.insert.insert, %.2.insert.shift
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !18
  %.0.insert.ext = zext i8 %i.cc to i64
  %.0.insert.mask = or i64 %.1.insert.mask, %.1.insert.shift
  %.0.insert.insert = or i64 %.0.insert.mask, %.0.insert.ext
  %i.cd = bitcast i64 %.0.insert.insert to double
  br label %copywithendian.exit75

bb.n:                                             ; preds = %bb.m
  %i.ce = load double, ptr %i.bl, align 1
  br label %copywithendian.exit75

copywithendian.exit75:                            ; preds = %.preheader92, %bb.n
  %.0 = phi double [ %i.ce, %bb.n ], [ %i.cd, %.preheader92 ]
  call void @lua_pushnumber(ptr noundef %0, double noundef %.0) #7
  br label %bb.y

bb.o:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac
  call void @lua_pushlstring(ptr noundef %0, ptr noundef %i.cf, i64 noundef %i.x) #7
  br label %bb.y

bb.p:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 19 uses
  %2 = call i32 @llvm.smin.i32(i32 %i.w, i32 8)   ; 2 uses
  %i.ch = icmp sgt i32 %i.w, 0
  br i1 %i.ch, label %.lr.ph.i, label %unpackint.exit.thread

.lr.ph.i:                                         ; preds = %bb.p
  %i.ci = load i32, ptr %i.q, align 8, !tbaa !16
  %.not41.i = icmp eq i32 %i.ci, 0
  br i1 %.not41.i, label %.lr.ph.split.us.i.1.a, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %3 = call i32 @llvm.umin.i32(i32 %i.w, i32 8)
  %4 = zext nneg i32 %3 to i64                    ; 8 uses
  %5 = getelementptr i8, ptr %i.cg, i64 %4
  %i.cj = getelementptr i8, ptr %5, i64 -1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !18
  %i.cl = zext i8 %i.ck to i64                    ; 2 uses
  %.not182 = icmp eq i32 %i.w, 1
  br i1 %.not182, label %._crit_edge.i.thread, label %.lr.ph.split.i.1

.lr.ph.split.us.i.1.a:                            ; preds = %.lr.ph.i
  %6 = zext nneg i32 %2 to i64                    ; 8 uses
  %7 = zext nneg i32 %i.w to i64                  ; 8 uses
  %i.cm = sub nuw nsw i64 %7, %6
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !18
  %i.cp = zext i8 %i.co to i64                    ; 2 uses
  %.not181 = icmp eq i32 %i.w, 1
  br i1 %.not181, label %._crit_edge.i, label %.lr.ph.split.us.i.2.a

.lr.ph.split.us.i.2.a:                            ; preds = %.lr.ph.split.us.i.1.a
  %indvars.iv.next52.i.1 = add nsw i64 %6, -1
  %i.cq = shl nuw nsw i64 %i.cp, 8
  %i.cr = sub nuw nsw i64 %7, %indvars.iv.next52.i.1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !18
  %i.cu = zext i8 %i.ct to i64
  %i.cv = or disjoint i64 %i.cq, %i.cu            ; 2 uses
  %8 = icmp sgt i32 %i.w, 2
  br i1 %8, label %.lr.ph.split.us.i.3.a, label %._crit_edge.i

.lr.ph.split.us.i.3.a:                            ; preds = %.lr.ph.split.us.i.2.a
  %indvars.iv.next52.i.2 = add nsw i64 %6, -2     ; 2 uses
  %i.cw = shl nuw nsw i64 %i.cv, 8
  %i.cx = sub nuw nsw i64 %7, %indvars.iv.next52.i.2
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !18
  %i.da = zext i8 %i.cz to i64
  %i.db = or disjoint i64 %i.cw, %i.da            ; 2 uses
  %9 = trunc nuw i64 %indvars.iv.next52.i.2 to i32
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %.lr.ph.split.us.i.4.a, label %._crit_edge.i

.lr.ph.split.us.i.4.a:                            ; preds = %.lr.ph.split.us.i.3.a
  %indvars.iv.next52.i.3 = add nsw i64 %6, -3     ; 2 uses
  %i.dc = shl nuw nsw i64 %i.db, 8
  %i.dd = sub nuw nsw i64 %7, %indvars.iv.next52.i.3
  %i.de = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !18
  %i.dg = zext i8 %i.df to i64
  %i.dh = or disjoint i64 %i.dc, %i.dg            ; 2 uses
  %11 = trunc nuw i64 %indvars.iv.next52.i.3 to i32
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %.lr.ph.split.us.i.5.a, label %._crit_edge.i

.lr.ph.split.us.i.5.a:                            ; preds = %.lr.ph.split.us.i.4.a
  %indvars.iv.next52.i.4 = add nsw i64 %6, -4     ; 2 uses
  %i.di = shl i64 %i.dh, 8
  %i.dj = sub nuw nsw i64 %7, %indvars.iv.next52.i.4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !18
  %i.dm = zext i8 %i.dl to i64
  %i.dn = or disjoint i64 %i.di, %i.dm            ; 2 uses
  %13 = trunc nuw i64 %indvars.iv.next52.i.4 to i32
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %.lr.ph.split.us.i.6.a, label %._crit_edge.i

.lr.ph.split.us.i.6.a:                            ; preds = %.lr.ph.split.us.i.5.a
  %indvars.iv.next52.i.5 = add nsw i64 %6, -5     ; 2 uses
  %i.do = shl i64 %i.dn, 8
  %i.dp = sub nuw nsw i64 %7, %indvars.iv.next52.i.5
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dp
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !18
  %i.ds = zext i8 %i.dr to i64
  %i.dt = or disjoint i64 %i.do, %i.ds            ; 2 uses
  %15 = trunc nuw i64 %indvars.iv.next52.i.5 to i32
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %.lr.ph.split.us.i.7.a, label %._crit_edge.i

.lr.ph.split.us.i.7.a:                            ; preds = %.lr.ph.split.us.i.6.a
  %indvars.iv.next52.i.6 = add nsw i64 %6, -6     ; 2 uses
  %i.du = shl i64 %i.dt, 8
  %i.dv = sub nuw nsw i64 %7, %indvars.iv.next52.i.6
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !18
  %i.dy = zext i8 %i.dx to i64
  %i.dz = or disjoint i64 %i.du, %i.dy            ; 2 uses
  %17 = trunc nuw i64 %indvars.iv.next52.i.6 to i32
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %.lr.ph.split.i, label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.us.i.7.a
  %indvars.iv.next51.i.6 = add nsw i64 %6, -7
  %19 = shl i64 %i.dz, 8
  %20 = sub nuw nsw i64 %7, %indvars.iv.next51.i.6
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cg, i64 %20
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !18
  %i.ec = zext i8 %i.eb to i64
  %21 = or disjoint i64 %19, %i.ec
  br label %._crit_edge.i

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.us.i
  %i.ed = shl nuw nsw i64 %i.cl, 8
  %i.ee = getelementptr i8, ptr %i.cg, i64 %4
  %i.ef = getelementptr i8, ptr %i.ee, i64 -2
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !18
  %i.eh = zext i8 %i.eg to i64
  %i.ei = or disjoint i64 %i.ed, %i.eh            ; 2 uses
  %i.ej = icmp ugt i32 %i.w, 2
  br i1 %i.ej, label %.lr.ph.split.i.2, label %._crit_edge.i.thread

.lr.ph.split.i.2:                                 ; preds = %.lr.ph.split.i.1
  %i.ek = shl nuw nsw i64 %i.ei, 8
  %i.el = getelementptr i8, ptr %i.cg, i64 %4
  %i.em = getelementptr i8, ptr %i.el, i64 -3
  %i.en = load i8, ptr %i.em, align 1, !tbaa !18
  %i.eo = zext i8 %i.en to i64
  %i.ep = or disjoint i64 %i.ek, %i.eo            ; 2 uses
  %.not179.a = icmp eq i32 %i.w, 3
  br i1 %.not179.a, label %._crit_edge.i.thread, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %.lr.ph.split.i.2
  %i.eq = shl nuw nsw i64 %i.ep, 8
  %i.er = getelementptr i8, ptr %i.cg, i64 %4
  %i.es = getelementptr i8, ptr %i.er, i64 -4
  %i.et = load i8, ptr %i.es, align 1, !tbaa !18
  %i.eu = zext i8 %i.et to i64
  %i.ev = or disjoint i64 %i.eq, %i.eu            ; 2 uses
  %i.ew = icmp ugt i32 %i.w, 4
  br i1 %i.ew, label %.lr.ph.split.i.4, label %._crit_edge.i.thread

.lr.ph.split.i.4:                                 ; preds = %.lr.ph.split.i.3
  %i.ex = shl i64 %i.ev, 8
  %i.ey = getelementptr i8, ptr %i.cg, i64 %4
  %i.ez = getelementptr i8, ptr %i.ey, i64 -5
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !18
  %i.fb = zext i8 %i.fa to i64
  %i.fc = or disjoint i64 %i.ex, %i.fb            ; 2 uses
  %.not180.a = icmp eq i32 %i.w, 5
  br i1 %.not180.a, label %._crit_edge.i.thread, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %.lr.ph.split.i.4
  %i.fd = shl i64 %i.fc, 8
  %i.fe = getelementptr i8, ptr %i.cg, i64 %4
  %i.ff = getelementptr i8, ptr %i.fe, i64 -6
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !18
  %i.fh = zext i8 %i.fg to i64
  %i.fi = or disjoint i64 %i.fd, %i.fh            ; 2 uses
  %i.fj = icmp ugt i32 %i.w, 6
  br i1 %i.fj, label %.lr.ph.split.i.6, label %._crit_edge.i.thread

.lr.ph.split.i.6:                                 ; preds = %.lr.ph.split.i.5
  %i.fk = shl i64 %i.fi, 8
  %i.fl = getelementptr i8, ptr %i.cg, i64 %4
  %i.fm = getelementptr i8, ptr %i.fl, i64 -7
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !18
  %i.fo = zext i8 %i.fn to i64
  %i.fp = or disjoint i64 %i.fk, %i.fo            ; 2 uses
  %.not181.a = icmp eq i32 %i.w, 7
  br i1 %.not181.a, label %._crit_edge.i.thread, label %.lr.ph.split.i.7

.lr.ph.split.i.7:                                 ; preds = %.lr.ph.split.i.6
  %i.fq = shl i64 %i.fp, 8
  %i.fr = getelementptr i8, ptr %i.cg, i64 %4
  %i.fs = getelementptr i8, ptr %i.fr, i64 -8
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !18
  %i.fu = zext i8 %i.ft to i64
  %i.fv = or disjoint i64 %i.fq, %i.fu
  br label %._crit_edge.i.thread

._crit_edge.i:                                    ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i.7.a, %.lr.ph.split.us.i.6.a, %.lr.ph.split.us.i.5.a, %.lr.ph.split.us.i.4.a, %.lr.ph.split.us.i.3.a, %.lr.ph.split.us.i.2.a, %.lr.ph.split.us.i.1.a
  %.lcssa176 = phi i64 [ %i.cp, %.lr.ph.split.us.i.1.a ], [ %i.cv, %.lr.ph.split.us.i.2.a ], [ %i.db, %.lr.ph.split.us.i.3.a ], [ %i.dh, %.lr.ph.split.us.i.4.a ], [ %i.dn, %.lr.ph.split.us.i.5.a ], [ %i.dt, %.lr.ph.split.us.i.6.a ], [ %i.dz, %.lr.ph.split.us.i.7.a ], [ %21, %.lr.ph.split.i ] ; 2 uses
  %i.fw = icmp samesign ult i32 %i.w, 9
  br i1 %i.fw, label %unpackint.exit, label %.lr.ph46.split.i.preheader

._crit_edge.i.thread:                             ; preds = %.lr.ph.split.i.7, %.lr.ph.split.i.6, %.lr.ph.split.i.5, %.lr.ph.split.i.4, %.lr.ph.split.i.3, %.lr.ph.split.i.2, %.lr.ph.split.i.1, %.lr.ph.split.us.i
  %.lcssa = phi i64 [ %i.cl, %.lr.ph.split.us.i ], [ %i.ei, %.lr.ph.split.i.1 ], [ %i.ep, %.lr.ph.split.i.2 ], [ %i.ev, %.lr.ph.split.i.3 ], [ %i.fc, %.lr.ph.split.i.4 ], [ %i.fi, %.lr.ph.split.i.5 ], [ %i.fp, %.lr.ph.split.i.6 ], [ %i.fv, %.lr.ph.split.i.7 ] ; 2 uses
  %i.fx = icmp samesign ult i32 %i.w, 9
  br i1 %i.fx, label %unpackint.exit, label %.lr.ph46.split.preheader.i

.lr.ph46.split.preheader.i:                       ; preds = %._crit_edge.i.thread
  %22 = zext nneg i32 %2 to i64
  br label %.lr.ph46.split.i

.lr.ph46.split.i.preheader:                       ; preds = %._crit_edge.i
  %wide.trip.count = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.us.i

.lr.ph46.split.us.i:                              ; preds = %bb.r, %.lr.ph46.split.i.preheader
  %indvars.iv57.i = phi i64 [ 8, %.lr.ph46.split.i.preheader ], [ %indvars.iv.next58.i, %bb.r ] ; 2 uses
  %i.fy = trunc nuw nsw i64 %indvars.iv57.i to i32
  %i.fz = xor i32 %i.fy, -1
  %i.ga = add nsw i32 %i.w, %i.fz
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %i.cg, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !18
  %.not39.us.i = icmp eq i8 %i.gd, 0
  br i1 %.not39.us.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph46.split.us.i
  %i.ge = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %i.w) #7 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph46.split.us.i
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next58.i, %wide.trip.count
  br i1 %exitcond97.not, label %unpackint.exit, label %.lr.ph46.split.us.i, !llvm.loop !0

.lr.ph46.split.i:                                 ; preds = %bb.t, %.lr.ph46.split.preheader.i
  %indvars.iv53.i = phi i64 [ %22, %.lr.ph46.split.preheader.i ], [ %indvars.iv.next54.i, %bb.t ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv53.i
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !18
  %.not39.i = icmp eq i8 %i.gg, 0
  br i1 %.not39.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph46.split.i
  %i.gh = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %i.w) #7 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph46.split.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %23 = trunc nuw i64 %indvars.iv.next54.i to i32
  %24 = icmp sgt i32 %i.w, %23
  br i1 %24, label %.lr.ph46.split.i, label %unpackint.exit, !llvm.loop !0

unpackint.exit:                                   ; preds = %bb.t, %bb.r, %._crit_edge.i.thread, %._crit_edge.i
  %.0.lcssa.i166 = phi i64 [ %.lcssa, %._crit_edge.i.thread ], [ %.lcssa176, %bb.r ], [ %.lcssa176, %._crit_edge.i ], [ %.lcssa, %bb.t ] ; 3 uses
  %i.gi = load i64, ptr %i.b, align 8, !tbaa !22
  %i.gj = add i64 %i.ac, %i.x
  %i.gk = sub i64 %i.gi, %i.gj
  %.not62 = icmp ugt i64 %.0.lcssa.i166, %i.gk
  br i1 %.not62, label %bb.u, label %unpackint.exit.thread

bb.u:                                             ; preds = %unpackint.exit
  %i.gl = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.16) #7 ; 0 uses
  br label %unpackint.exit.thread

unpackint.exit.thread:                            ; preds = %bb.p, %bb.u, %unpackint.exit
  %.1.i79 = phi i64 [ %.0.lcssa.i166, %unpackint.exit ], [ %.0.lcssa.i166, %bb.u ], [ 0, %bb.p ] ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %i.cg, i64 %i.x
  call void @lua_pushlstring(ptr noundef %0, ptr noundef %i.gm, i64 noundef %.1.i79) #7
  %i.gn = add i64 %.1.i79, %i.ac
  br label %bb.y

bb.v:                                             ; preds = %bb.g
  %i.go = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 2 uses
  %i.gp = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.go) #8 ; 3 uses
  %i.gq = add i64 %i.gp, %i.ac
  %i.gr = load i64, ptr %i.b, align 8, !tbaa !22
  %i.gs = icmp ult i64 %i.gq, %i.gr
  br i1 %i.gs, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gt = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.18) #7 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.go, i64 noundef %i.gp) #7
  %i.gu = add i64 %i.ac, 1
  %i.gv = add i64 %i.gu, %i.gp
  br label %bb.y

default.unreachable163:                           ; preds = %bb.g
  unreachable

bb.y:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.x, %unpackint.exit.thread, %bb.o, %copywithendian.exit75, %copywithendian.exit69, %copywithendian.exit, %bb.h
  %.159 = phi i64 [ %i.gv, %bb.x ], [ %i.ac, %bb.h ], [ %i.ac, %copywithendian.exit ], [ %i.ac, %copywithendian.exit69 ], [ %i.ac, %copywithendian.exit75 ], [ %i.ac, %bb.o ], [ %i.gn, %unpackint.exit.thread ], [ %i.ac, %bb.g ], [ %i.ac, %bb.g ], [ %i.ac, %bb.g ]
  %.1 = phi i32 [ %i.ad, %bb.x ], [ %i.ad, %bb.h ], [ %i.ad, %copywithendian.exit ], [ %i.ad, %copywithendian.exit69 ], [ %i.ad, %copywithendian.exit75 ], [ %i.ad, %bb.o ], [ %i.ad, %unpackint.exit.thread ], [ %.089, %bb.g ], [ %.089, %bb.g ], [ %.089, %bb.g ] ; 2 uses
  %i.gw = add i64 %.159, %i.x                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !18
  %.not60 = icmp eq i8 %i.gy, 0
  br i1 %.not60, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !36

._crit_edge.loopexit:                             ; preds = %bb.y
  %i.gz = add i64 %i.gw, 1
  %i.ha = add nsw i32 %.1, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.058.lcssa = phi i64 [ %.0.i, %bb.e ], [ %i.gz, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 1, %bb.e ], [ %i.ha, %._crit_edge.loopexit ]
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %.058.lcssa) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 %.0.lcssa
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
  store ptr %i.d, ptr %i.a, align 8, !tbaa !12
  store ptr %0, ptr %1, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !17
  %i.g = load i8, ptr %i.d, align 1, !tbaa !18
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
  %i.k = load i32, ptr %i.c, align 4, !tbaa !19
  %i.l = load i32, ptr %i.b, align 4, !tbaa !19
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
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.s = load i8, ptr %i.r, align 1, !tbaa !18
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
  %i.c = load i32, ptr %3, align 4, !tbaa !19     ; 2 uses
  %i.d = icmp eq i32 %i.b, 9
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !12
  %i.f = load i8, ptr %i.e, align 1, !tbaa !18
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
  %i.m = load ptr, ptr %0, align 8, !tbaa !15
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
  %i.s = load i32, ptr %i.r, align 4, !tbaa !17
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %i.s) ; 3 uses
  %i.t = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %spec.select)
  %.not = icmp samesign ult i32 %i.t, 2
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %0, align 8, !tbaa !15
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
  store ptr %i.ad, ptr %1, align 8, !tbaa !12
  %i.ae = load i8, ptr %i.ab, align 1, !tbaa !18
  %i.af = sext i8 %i.ae to i32
  %i.ag = add i32 %i.ac, -48
  %i.ah = add i32 %i.ag, %i.af                    ; 5 uses
  %i.ai = load i8, ptr %i.ad, align 1, !tbaa !18
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
  %i.ap = load ptr, ptr %0, align 8, !tbaa !15
  %i.aq = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.ap, ptr noundef nonnull @.str.13, i32 noundef %i.ah, i32 noundef 16) #7
  br label %getnumlimit.exit43

getnumlimit.exit43:                               ; preds = %bb.p, %getnum.exit.i39, %bb.q
  %.0.i42 = phi i32 [ %i.aq, %bb.q ], [ %i.ah, %getnum.exit.i39 ], [ 4, %bb.p ]
  store i32 %.0.i42, ptr %2, align 4, !tbaa !19
  br label %bb.ae

bb.r:                                             ; preds = %bb.a
  %i.ar = load i8, ptr %i.b, align 1, !tbaa !18
  %i.as = sext i8 %i.ar to i32
  %i.at = add nsw i32 %i.as, -58
  %i.au = icmp ult i32 %i.at, -10
  br i1 %i.au, label %getnumlimit.exit50, label %.preheader.i.i44

.preheader.i.i44:                                 ; preds = %bb.r, %.preheader.i.i44
  %i.av = phi ptr [ %i.ax, %.preheader.i.i44 ], [ %i.b, %bb.r ] ; 2 uses
  %.0.i.i45 = phi i32 [ %i.bb, %.preheader.i.i44 ], [ 0, %bb.r ]
  %i.aw = mul nsw i32 %.0.i.i45, 10
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 1 ; 3 uses
  store ptr %i.ax, ptr %1, align 8, !tbaa !12
  %i.ay = load i8, ptr %i.av, align 1, !tbaa !18
  %i.az = sext i8 %i.ay to i32
  %i.ba = add i32 %i.aw, -48
  %i.bb = add i32 %i.ba, %i.az                    ; 5 uses
  %i.bc = load i8, ptr %i.ax, align 1, !tbaa !18
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
  %i.bj = load ptr, ptr %0, align 8, !tbaa !15
  %i.bk = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.bj, ptr noundef nonnull @.str.13, i32 noundef %i.bb, i32 noundef 16) #7
  br label %getnumlimit.exit50

getnumlimit.exit50:                               ; preds = %bb.r, %getnum.exit.i46, %bb.s
  %.0.i49 = phi i32 [ %i.bk, %bb.s ], [ %i.bb, %getnum.exit.i46 ], [ 8, %bb.r ]
  store i32 %.0.i49, ptr %2, align 4, !tbaa !19
  br label %bb.ae

bb.t:                                             ; preds = %bb.a
  %i.bl = load i8, ptr %i.b, align 1, !tbaa !18
  %i.bm = sext i8 %i.bl to i32
  %i.bn = add nsw i32 %i.bm, -58
  %i.bo = icmp ult i32 %i.bn, -10
  br i1 %i.bo, label %getnum.exit.thread, label %.preheader.i

getnum.exit.thread:                               ; preds = %bb.t
  store i32 -1, ptr %2, align 4, !tbaa !19
  br label %bb.u

.preheader.i:                                     ; preds = %bb.t, %.preheader.i
  %i.bp = phi ptr [ %i.br, %.preheader.i ], [ %i.b, %bb.t ] ; 2 uses
  %.0.i51 = phi i32 [ %i.bv, %.preheader.i ], [ 0, %bb.t ]
  %i.bq = mul nsw i32 %.0.i51, 10
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1 ; 3 uses
  store ptr %i.br, ptr %1, align 8, !tbaa !12
  %i.bs = load i8, ptr %i.bp, align 1, !tbaa !18
  %i.bt = sext i8 %i.bs to i32
  %i.bu = add i32 %i.bq, -48
  %i.bv = add i32 %i.bu, %i.bt                    ; 4 uses
  %i.bw = load i8, ptr %i.br, align 1, !tbaa !18
  %i.bx = sext i8 %i.bw to i32
  %i.by = add nsw i32 %i.bx, -48
  %i.bz = icmp ult i32 %i.by, 10
  %i.ca = icmp slt i32 %i.bv, 214748364
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %.preheader.i, label %getnum.exit, !llvm.loop !38

getnum.exit:                                      ; preds = %.preheader.i
  store i32 %i.bv, ptr %2, align 4, !tbaa !19
  %i.cc = icmp eq i32 %i.bv, -1
  br i1 %i.cc, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %getnum.exit.thread, %getnum.exit
  %i.cd = load ptr, ptr %0, align 8, !tbaa !15
  %i.ce = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.cd, ptr noundef nonnull @.str.11) #7 ; 0 uses
  br label %bb.ae

bb.v:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !19
  br label %bb.ae

bb.w:                                             ; preds = %bb.a
  br label %bb.ae

bb.x:                                             ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.cf, align 8, !tbaa !16
  br label %bb.ad

bb.y:                                             ; preds = %bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.cg, align 8, !tbaa !16
  br label %bb.ad

bb.z:                                             ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ch, align 8, !tbaa !16
  br label %bb.ad

bb.aa:                                            ; preds = %bb.a
  %i.ci = load i8, ptr %i.b, align 1, !tbaa !18
  %i.cj = sext i8 %i.ci to i32
  %i.ck = add nsw i32 %i.cj, -58
  %i.cl = icmp ult i32 %i.ck, -10
  br i1 %i.cl, label %getnumlimit.exit58, label %.preheader.i.i52

.preheader.i.i52:                                 ; preds = %bb.aa, %.preheader.i.i52
  %i.cm = phi ptr [ %i.co, %.preheader.i.i52 ], [ %i.b, %bb.aa ] ; 2 uses
  %.0.i.i53 = phi i32 [ %i.cs, %.preheader.i.i52 ], [ 0, %bb.aa ]
  %i.cn = mul nsw i32 %.0.i.i53, 10
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 3 uses
  store ptr %i.co, ptr %1, align 8, !tbaa !12
  %i.cp = load i8, ptr %i.cm, align 1, !tbaa !18
  %i.cq = sext i8 %i.cp to i32
  %i.cr = add i32 %i.cn, -48
  %i.cs = add i32 %i.cr, %i.cq                    ; 5 uses
  %i.ct = load i8, ptr %i.co, align 1, !tbaa !18
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
  %i.da = load ptr, ptr %0, align 8, !tbaa !15
  %i.db = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.da, ptr noundef nonnull @.str.13, i32 noundef %i.cs, i32 noundef 16) #7
  br label %getnumlimit.exit58

getnumlimit.exit58:                               ; preds = %bb.aa, %getnum.exit.i54, %bb.ab
  %.0.i57 = phi i32 [ %i.db, %bb.ab ], [ %i.cs, %getnum.exit.i54 ], [ 8, %bb.aa ]
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0.i57, ptr %i.dc, align 4, !tbaa !17
  br label %bb.ad

bb.ac:                                            ; preds = %bb.a
  %i.dd = sext i8 %i.c to i32
  %i.de = load ptr, ptr %0, align 8, !tbaa !15
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
  %5 = tail call i32 @llvm.smin.i32(i32 %3, i32 8) ; 2 uses
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %.not41 = icmp eq i32 %2, 0
  br i1 %.not41, label %.lr.ph.split.us.1.a, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %6 = tail call i32 @llvm.umin.i32(i32 %3, i32 8)
  %7 = zext nneg i32 %6 to i64                    ; 8 uses
  %8 = getelementptr i8, ptr %1, i64 %7
  %i.b = getelementptr i8, ptr %8, i64 -1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !18
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %.not75.a = icmp eq i32 %3, 1
  br i1 %.not75.a, label %._crit_edge, label %.lr.ph.split.1

.lr.ph.split.us.1.a:                              ; preds = %.lr.ph
  %9 = zext nneg i32 %5 to i64                    ; 8 uses
  %10 = zext nneg i32 %3 to i64                   ; 8 uses
  %i.e = sub nuw nsw i64 %10, %9
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18
  %i.h = zext i8 %i.g to i64                      ; 2 uses
  %.not75 = icmp eq i32 %3, 1
  br i1 %.not75, label %._crit_edge, label %.lr.ph.split.us.2.a

.lr.ph.split.us.2.a:                              ; preds = %.lr.ph.split.us.1.a
  %indvars.iv.next52.1 = add nsw i64 %9, -1
  %i.i = shl nuw nsw i64 %i.h, 8
  %i.j = sub nuw nsw i64 %10, %indvars.iv.next52.1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18
  %i.m = zext i8 %i.l to i64
  %i.n = or disjoint i64 %i.i, %i.m               ; 2 uses
  %11 = icmp sgt i32 %3, 2
  br i1 %11, label %.lr.ph.split.us.3.a, label %._crit_edge

.lr.ph.split.us.3.a:                              ; preds = %.lr.ph.split.us.2.a
  %indvars.iv.next52.2 = add nsw i64 %9, -2       ; 2 uses
  %i.o = shl nuw nsw i64 %i.n, 8
  %i.p = sub nuw nsw i64 %10, %indvars.iv.next52.2
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  %i.s = zext i8 %i.r to i64
  %i.t = or disjoint i64 %i.o, %i.s               ; 2 uses
  %12 = trunc nuw i64 %indvars.iv.next52.2 to i32
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %.lr.ph.split.us.4.a, label %._crit_edge

.lr.ph.split.us.4.a:                              ; preds = %.lr.ph.split.us.3.a
  %indvars.iv.next52.3 = add nsw i64 %9, -3       ; 2 uses
  %i.u = shl nuw nsw i64 %i.t, 8
  %i.v = sub nuw nsw i64 %10, %indvars.iv.next52.3
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !18
  %i.y = zext i8 %i.x to i64
  %i.z = or disjoint i64 %i.u, %i.y               ; 2 uses
  %14 = trunc nuw i64 %indvars.iv.next52.3 to i32
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %.lr.ph.split.us.5.a, label %._crit_edge

.lr.ph.split.us.5.a:                              ; preds = %.lr.ph.split.us.4.a
  %indvars.iv.next52.4 = add nsw i64 %9, -4       ; 2 uses
  %i.aa = shl i64 %i.z, 8
  %i.ab = sub nuw nsw i64 %10, %indvars.iv.next52.4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !18
  %i.ae = zext i8 %i.ad to i64
  %i.af = or disjoint i64 %i.aa, %i.ae            ; 2 uses
  %16 = trunc nuw i64 %indvars.iv.next52.4 to i32
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %.lr.ph.split.us.6.a, label %._crit_edge

.lr.ph.split.us.6.a:                              ; preds = %.lr.ph.split.us.5.a
  %indvars.iv.next52.5 = add nsw i64 %9, -5       ; 2 uses
  %i.ag = shl i64 %i.af, 8
  %i.ah = sub nuw nsw i64 %10, %indvars.iv.next52.5
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !18
  %i.ak = zext i8 %i.aj to i64
  %i.al = or disjoint i64 %i.ag, %i.ak            ; 2 uses
  %18 = trunc nuw i64 %indvars.iv.next52.5 to i32
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %.lr.ph.split.us.7.a, label %._crit_edge

.lr.ph.split.us.7.a:                              ; preds = %.lr.ph.split.us.6.a
  %indvars.iv.next52.6 = add nsw i64 %9, -6       ; 2 uses
  %i.am = shl i64 %i.al, 8
  %i.an = sub nuw nsw i64 %10, %indvars.iv.next52.6
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !18
  %i.aq = zext i8 %i.ap to i64
  %i.ar = or disjoint i64 %i.am, %i.aq            ; 2 uses
  %20 = trunc nuw i64 %indvars.iv.next52.6 to i32
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %.lr.ph.split, label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.us.7.a
  %indvars.iv.next51.6 = add nsw i64 %9, -7
  %22 = shl i64 %i.ar, 8
  %23 = sub nuw nsw i64 %10, %indvars.iv.next51.6
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %23
  %i.at = load i8, ptr %i.as, align 1, !tbaa !18
  %i.au = zext i8 %i.at to i64
  %24 = or disjoint i64 %22, %i.au
  br label %._crit_edge

.lr.ph.split.1:                                   ; preds = %.lr.ph.split.us
  %i.av = shl nuw nsw i64 %i.d, 8
  %i.aw = getelementptr i8, ptr %1, i64 %7
  %i.ax = getelementptr i8, ptr %i.aw, i64 -2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !18
  %i.az = zext i8 %i.ay to i64
  %i.ba = or disjoint i64 %i.av, %i.az            ; 2 uses
  %i.bb = icmp ugt i32 %3, 2
  br i1 %i.bb, label %.lr.ph.split.2, label %._crit_edge

.lr.ph.split.2:                                   ; preds = %.lr.ph.split.1
  %i.bc = shl nuw nsw i64 %i.ba, 8
  %i.bd = getelementptr i8, ptr %1, i64 %7
  %i.be = getelementptr i8, ptr %i.bd, i64 -3
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !18
  %i.bg = zext i8 %i.bf to i64
  %i.bh = or disjoint i64 %i.bc, %i.bg            ; 2 uses
  %.not72 = icmp eq i32 %3, 3
  br i1 %.not72, label %._crit_edge, label %.lr.ph.split.3

.lr.ph.split.3:                                   ; preds = %.lr.ph.split.2
  %i.bi = shl nuw nsw i64 %i.bh, 8
  %i.bj = getelementptr i8, ptr %1, i64 %7
  %i.bk = getelementptr i8, ptr %i.bj, i64 -4
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !18
  %i.bm = zext i8 %i.bl to i64
  %i.bn = or disjoint i64 %i.bi, %i.bm            ; 2 uses
  %i.bo = icmp ugt i32 %3, 4
  br i1 %i.bo, label %.lr.ph.split.4, label %._crit_edge

.lr.ph.split.4:                                   ; preds = %.lr.ph.split.3
  %i.bp = shl i64 %i.bn, 8
  %i.bq = getelementptr i8, ptr %1, i64 %7
  %i.br = getelementptr i8, ptr %i.bq, i64 -5
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !18
  %i.bt = zext i8 %i.bs to i64
  %i.bu = or disjoint i64 %i.bp, %i.bt            ; 2 uses
  %.not73 = icmp eq i32 %3, 5
  br i1 %.not73, label %._crit_edge, label %.lr.ph.split.5

.lr.ph.split.5:                                   ; preds = %.lr.ph.split.4
  %i.bv = shl i64 %i.bu, 8
  %i.bw = getelementptr i8, ptr %1, i64 %7
  %i.bx = getelementptr i8, ptr %i.bw, i64 -6
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !18
  %i.bz = zext i8 %i.by to i64
  %i.ca = or disjoint i64 %i.bv, %i.bz            ; 2 uses
  %i.cb = icmp ugt i32 %3, 6
  br i1 %i.cb, label %.lr.ph.split.6, label %._crit_edge

.lr.ph.split.6:                                   ; preds = %.lr.ph.split.5
  %i.cc = shl i64 %i.ca, 8
  %i.cd = getelementptr i8, ptr %1, i64 %7
  %i.ce = getelementptr i8, ptr %i.cd, i64 -7
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !18
  %i.cg = zext i8 %i.cf to i64
  %i.ch = or disjoint i64 %i.cc, %i.cg            ; 2 uses
  %.not74 = icmp eq i32 %3, 7
  br i1 %.not74, label %._crit_edge, label %.lr.ph.split.7

.lr.ph.split.7:                                   ; preds = %.lr.ph.split.6
  %i.ci = shl i64 %i.ch, 8
  %i.cj = getelementptr i8, ptr %1, i64 %7
  %i.ck = getelementptr i8, ptr %i.cj, i64 -8
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !18
  %i.cm = zext i8 %i.cl to i64
  %i.cn = or disjoint i64 %i.ci, %i.cm
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.us, %.lr.ph.split.1, %.lr.ph.split.2, %.lr.ph.split.3, %.lr.ph.split.4, %.lr.ph.split.5, %.lr.ph.split.6, %.lr.ph.split.7, %.lr.ph.split.us.1.a, %.lr.ph.split.us.2.a, %.lr.ph.split.us.3.a, %.lr.ph.split.us.4.a, %.lr.ph.split.us.5.a, %.lr.ph.split.us.6.a, %.lr.ph.split.us.7.a, %.lr.ph.split
  %.0.lcssa = phi i64 [ %24, %.lr.ph.split ], [ %i.h, %.lr.ph.split.us.1.a ], [ %i.n, %.lr.ph.split.us.2.a ], [ %i.t, %.lr.ph.split.us.3.a ], [ %i.z, %.lr.ph.split.us.4.a ], [ %i.af, %.lr.ph.split.us.5.a ], [ %i.al, %.lr.ph.split.us.6.a ], [ %i.ar, %.lr.ph.split.us.7.a ], [ %i.d, %.lr.ph.split.us ], [ %i.ba, %.lr.ph.split.1 ], [ %i.bh, %.lr.ph.split.2 ], [ %i.bn, %.lr.ph.split.3 ], [ %i.bu, %.lr.ph.split.4 ], [ %i.ca, %.lr.ph.split.5 ], [ %i.ch, %.lr.ph.split.6 ], [ %i.cn, %.lr.ph.split.7 ] ; 5 uses
  %i.co = icmp samesign ult i32 %3, 8
  br i1 %i.co, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0.lcssa61 = phi i64 [ %.0.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.not40 = icmp eq i32 %4, 0
  br i1 %.not40, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread
  %i.cp = shl nsw i32 %3, 3
  %i.cq = add nsw i32 %i.cp, -1
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = shl nuw i64 1, %i.cr                    ; 2 uses
  %i.ct = xor i64 %.0.lcssa61, %i.cs
  %i.cu = sub i64 %i.ct, %i.cs
  br label %.loopexit

bb.c:                                             ; preds = %._crit_edge
  %.not = icmp eq i32 %3, 8
  br i1 %.not, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.c
  %.not37 = icmp eq i32 %4, 0
  %i.cv = icmp sgt i64 %.0.lcssa, -1
  %i.cw = select i1 %.not37, i1 true, i1 %i.cv
  %i.cx = select i1 %i.cw, i32 0, i32 255         ; 2 uses
  %.not38 = icmp eq i32 %2, 0
  br i1 %.not38, label %.lr.ph46.split.us.preheader, label %.lr.ph46.split.preheader

.lr.ph46.split.preheader:                         ; preds = %.lr.ph46
  %25 = zext nneg i32 %5 to i64
  br label %.lr.ph46.split

.lr.ph46.split.us.preheader:                      ; preds = %.lr.ph46
  %i.cy = zext nneg i32 %3 to i64
  br label %.lr.ph46.split.us

.lr.ph46.split.us:                                ; preds = %.lr.ph46.split.us.preheader, %bb.e
  %indvars.iv57 = phi i64 [ 8, %.lr.ph46.split.us.preheader ], [ %indvars.iv.next58, %bb.e ] ; 2 uses
  %i.cz = trunc nsw i64 %indvars.iv57 to i32
  %i.da = xor i32 %i.cz, -1
  %i.db = add nsw i32 %3, %i.da
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds i8, ptr %1, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !18
  %i.df = zext i8 %i.de to i32
  %.not39.us = icmp eq i32 %i.cx, %i.df
  br i1 %.not39.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph46.split.us
  %i.dg = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %3) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph46.split.us, %bb.d
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.dh = icmp samesign ult i64 %indvars.iv.next58, %i.cy
  br i1 %i.dh, label %.lr.ph46.split.us, label %.loopexit, !llvm.loop !0

.lr.ph46.split:                                   ; preds = %.lr.ph46.split.preheader, %bb.g
  %indvars.iv53 = phi i64 [ %25, %.lr.ph46.split.preheader ], [ %indvars.iv.next54, %bb.g ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv53
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !18
  %i.dk = zext i8 %i.dj to i32
  %.not39 = icmp eq i32 %i.cx, %i.dk
  br i1 %.not39, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph46.split
  %i.dl = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %3) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph46.split, %bb.f
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.dm = trunc nuw i64 %indvars.iv.next54 to i32
  %i.dn = icmp sgt i32 %3, %i.dm
  br i1 %i.dn, label %.lr.ph46.split, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.c, %._crit_edge.thread, %bb.b
  %.1 = phi i64 [ %i.cu, %bb.b ], [ %.0.lcssa61, %._crit_edge.thread ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %bb.g ]
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

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !20}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 _ZTS9lua_State", !10, i64 0}
!14 = !{!"Header", !13, i64 0, !7, i64 8, !7, i64 12}
!15 = !{!14, !13, i64 0}
!16 = !{!14, !7, i64 8}
!17 = !{!14, !7, i64 12}
!18 = !{!6, !6, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!"long", !6, i64 0}
!22 = !{!21, !21, i64 0}
!23 = distinct !{!23, !20}
!24 = distinct !{!24, !20}
!25 = distinct !{!25, !35}
!26 = distinct !{!26, !35}
!27 = distinct !{!27, !35}
!28 = distinct !{!28, !35}
!29 = distinct !{!29, !20}
!30 = distinct !{!30, !35}
!31 = distinct !{!31, !35}
!32 = distinct !{!32, !20}
!33 = !{!"luaL_Buffer", !11, i64 0, !7, i64 8, !13, i64 16, !6, i64 24}
!34 = !{!33, !11, i64 0}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20}
end_hunk_1
