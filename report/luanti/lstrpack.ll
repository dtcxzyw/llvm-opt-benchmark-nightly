Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/lstrpack?download=true
inline.NumInlined: 22
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@str_pack:bb.a

.loopexit.i106.loopexit.unr-lcssa:                ; preds = %.lr.ph.split.us.i122
  %lcmp.mod211.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod211.not, label %.loopexit.i106, label %.lr.ph.split.us.i122.epil.preheader

.lr.ph.split.us.i122.epil.preheader:              ; preds = %.loopexit.i106.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i120
  %indvars.iv39.i123.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i120 ], [ %indvars.iv.next40.i125.3, %.loopexit.i106.loopexit.unr-lcssa ]
  %.03033.us.i124.epil.init = phi i64 [ %i.hq, %.lr.ph.split.us.preheader.i120 ], [ %i.ip, %.loopexit.i106.loopexit.unr-lcssa ]
  %lcmp.mod212 = icmp ne i64 %xtraiter209, 0
  call void @llvm.assume(i1 %lcmp.mod212)
  br label %.lr.ph.split.us.i122.epil

.lr.ph.split.us.i122.epil:                        ; preds = %.lr.ph.split.us.i122.epil, %.lr.ph.split.us.i122.epil.preheader
  %indvars.iv39.i123.epil = phi i64 [ %indvars.iv39.i123.epil.init, %.lr.ph.split.us.i122.epil.preheader ], [ %indvars.iv.next40.i125.epil, %.lr.ph.split.us.i122.epil ] ; 2 uses
  %.03033.us.i124.epil = phi i64 [ %.03033.us.i124.epil.init, %.lr.ph.split.us.i122.epil.preheader ], [ %i.ji, %.lr.ph.split.us.i122.epil ]
  %epil.iter210 = phi i64 [ 0, %.lr.ph.split.us.i122.epil.preheader ], [ %epil.iter210.next, %.lr.ph.split.us.i122.epil ]
  %i.ji = lshr i64 %.03033.us.i124.epil, 8        ; 2 uses
  %i.jj = trunc i64 %i.ji to i8
  %i.jk = sub nuw nsw i64 %i.ib, %indvars.iv39.i123.epil
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.jk
  store i8 %i.jj, ptr %i.jl, align 1, !tbaa !18
  %indvars.iv.next40.i125.epil = add nuw nsw i64 %indvars.iv39.i123.epil, 1
  %epil.iter210.next = add i64 %epil.iter210, 1   ; 2 uses
  %epil.iter210.cmp.not = icmp eq i64 %epil.iter210.next, %xtraiter209
  br i1 %epil.iter210.cmp.not, label %.loopexit.i106, label %.lr.ph.split.us.i122.epil, !llvm.loop !30

.loopexit.i106.loopexit207.unr-lcssa:             ; preds = %.lr.ph.split.i110
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i106, label %.lr.ph.split.i110.epil.preheader

.lr.ph.split.i110.epil.preheader:                 ; preds = %.loopexit.i106.loopexit207.unr-lcssa, %.lr.ph.split.preheader.i108
  %indvars.iv.i111.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i108 ], [ %indvars.iv.next.i113.3, %.loopexit.i106.loopexit207.unr-lcssa ]
  %.03033.i112.epil.init = phi i64 [ %i.hq, %.lr.ph.split.preheader.i108 ], [ %i.je, %.loopexit.i106.loopexit207.unr-lcssa ]
  %lcmp.mod208 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod208)
  br label %.lr.ph.split.i110.epil

.lr.ph.split.i110.epil:                           ; preds = %.lr.ph.split.i110.epil, %.lr.ph.split.i110.epil.preheader
  %indvars.iv.i111.epil = phi i64 [ %indvars.iv.i111.epil.init, %.lr.ph.split.i110.epil.preheader ], [ %indvars.iv.next.i113.epil, %.lr.ph.split.i110.epil ] ; 2 uses
  %.03033.i112.epil = phi i64 [ %.03033.i112.epil.init, %.lr.ph.split.i110.epil.preheader ], [ %i.jm, %.lr.ph.split.i110.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.split.i110.epil.preheader ], [ %epil.iter.next, %.lr.ph.split.i110.epil ]
  %i.jm = lshr i64 %.03033.i112.epil, 8           ; 2 uses
  %i.jn = trunc i64 %i.jm to i8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hr, i64 %indvars.iv.i111.epil
  store i8 %i.jn, ptr %i.jo, align 1, !tbaa !18
  %indvars.iv.next.i113.epil = add nuw nsw i64 %indvars.iv.i111.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit.i106, label %.lr.ph.split.i110.epil, !llvm.loop !31

.loopexit.i106:                                   ; preds = %.loopexit.i106.loopexit207.unr-lcssa, %.lr.ph.split.i110.epil, %.loopexit.i106.loopexit.unr-lcssa, %.lr.ph.split.us.i122.epil, %bb.ag
  %i.jp = load ptr, ptr %1, align 8, !tbaa !34
  %i.jq = sext i32 %i.n to i64
  %i.jr = getelementptr inbounds i8, ptr %i.jp, i64 %i.jq
  store ptr %i.jr, ptr %1, align 8, !tbaa !34
  br label %packint.exit130

packint.exit130:                                  ; preds = %bb.af, %.loopexit.i106
  %i.js = load i64, ptr %i.e, align 8, !tbaa !22
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef %i.he, i64 noundef %i.js) #7
  %i.jt = load i64, ptr %i.e, align 8, !tbaa !22
  %i.ju = add i64 %i.jt, %i.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %packint.exit

bb.ah:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.jv = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull %i.f) #7 ; 2 uses
  %i.jw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jv) #8 ; 2 uses
  %i.jx = load i64, ptr %i.f, align 8, !tbaa !22
  %i.jy = icmp eq i64 %i.jw, %i.jx
  br i1 %i.jy, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jz = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.z, ptr noundef nonnull @.str.8) #7 ; 0 uses
  %.pre188 = load i64, ptr %i.f, align 8, !tbaa !22
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ka = phi i64 [ %.pre188, %bb.ai ], [ %i.jw, %bb.ah ]
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef nonnull %i.jv, i64 noundef %i.ka) #7
  %i.kb = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.kc = icmp ult ptr %i.kb, %i.k
  br i1 %i.kc, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.kd = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre189 = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ke = phi ptr [ %.pre189, %bb.ak ], [ %i.kb, %bb.aj ] ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 1
  store ptr %i.kf, ptr %1, align 8, !tbaa !34
  store i8 0, ptr %i.ke, align 1, !tbaa !18
  %i.kg = load i64, ptr %i.f, align 8, !tbaa !22
  %i.kh = add i64 %i.q, 1
  %i.ki = add i64 %i.kh, %i.kg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %packint.exit

bb.am:                                            ; preds = %._crit_edge
  %i.kj = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.kk = icmp ult ptr %i.kj, %i.k
  br i1 %i.kk, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.kl = call ptr @luaL_prepbuffer(ptr noundef nonnull %1) #7 ; 0 uses
  %.pre187 = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.km = phi ptr [ %.pre187, %bb.an ], [ %i.kj, %bb.am ] ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 1
  store ptr %i.kn, ptr %1, align 8, !tbaa !34
  store i8 0, ptr %i.km, align 1, !tbaa !18
  br label %packint.exit

default.unreachable200:                           ; preds = %._crit_edge
  unreachable

packint.exit:                                     ; preds = %.loopexit.i64, %bb.o, %.loopexit.i, %bb.i, %._crit_edge, %._crit_edge, %bb.ao, %bb.al, %packint.exit130, %._crit_edge140, %copywithendian.exit104, %copywithendian.exit97, %copywithendian.exit
  %.155 = phi i64 [ %i.ki, %bb.al ], [ %i.q, %._crit_edge ], [ %i.q, %.loopexit.i ], [ %i.q, %copywithendian.exit ], [ %i.q, %copywithendian.exit97 ], [ %i.q, %copywithendian.exit104 ], [ %i.q, %._crit_edge140 ], [ %i.ju, %packint.exit130 ], [ %i.q, %bb.ao ], [ %i.q, %._crit_edge ], [ %i.q, %bb.i ], [ %i.q, %bb.o ], [ %i.q, %.loopexit.i64 ]
  %.1 = phi i32 [ %i.z, %bb.al ], [ %.0143, %._crit_edge ], [ %i.z, %.loopexit.i ], [ %i.z, %copywithendian.exit ], [ %i.z, %copywithendian.exit97 ], [ %i.z, %copywithendian.exit104 ], [ %i.z, %._crit_edge140 ], [ %i.z, %packint.exit130 ], [ %.0143, %bb.ao ], [ %.0143, %._crit_edge ], [ %i.z, %bb.i ], [ %i.z, %bb.o ], [ %i.z, %.loopexit.i64 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  %i.ko = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !18
  %.not = icmp eq i8 %i.kp, 0
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
  %.05888 = phi i64 [ %i.hf, %bb.y ], [ %i.o, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.t = call fastcc i32 @getdetails(ptr noundef %1, i64 noundef %.05888, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.d) ; 2 uses
  %i.u = load i32, ptr %i.d, align 4, !tbaa !19
  %i.v = sext i32 %i.u to i64                     ; 2 uses
  %i.w = load i32, ptr %i.c, align 4, !tbaa !19   ; 23 uses
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
  %i.ch = icmp sgt i32 %i.w, 0
  br i1 %i.ch, label %.lr.ph.i, label %unpackint.exit.thread

.lr.ph.i:                                         ; preds = %bb.p
  %i.ci = load i32, ptr %i.q, align 8, !tbaa !16
  %.not41.i = icmp eq i32 %i.ci, 0
  %i.cj = zext nneg i32 %i.w to i64               ; 11 uses
  %i.ck = call i64 @llvm.umin.i64(i64 %i.cj, i64 8) ; 16 uses
  br i1 %.not41.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.cl = sub nsw i64 %i.cj, %i.ck
  %i.cm = getelementptr inbounds i8, ptr %i.cg, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !18
  %i.co = zext i8 %i.cn to i64                    ; 2 uses
  %.not182 = icmp eq i32 %i.w, 1
  br i1 %.not182, label %._crit_edge.i, label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %.lr.ph.split.us.i
  %indvars.iv.next52.i = add nsw i64 %i.ck, -1
  %i.cp = shl nuw nsw i64 %i.co, 8
  %i.cq = sub nsw i64 %i.cj, %indvars.iv.next52.i
  %i.cr = getelementptr inbounds i8, ptr %i.cg, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !18
  %i.ct = zext i8 %i.cs to i64
  %i.cu = or disjoint i64 %i.cp, %i.ct            ; 2 uses
  %i.cv = icmp ugt i32 %i.w, 2
  br i1 %i.cv, label %.lr.ph.split.us.i.2, label %._crit_edge.i

.lr.ph.split.us.i.2:                              ; preds = %.lr.ph.split.us.i.1
  %indvars.iv.next52.i.1 = add nsw i64 %i.ck, -2
  %i.cw = shl nuw nsw i64 %i.cu, 8
  %i.cx = sub nsw i64 %i.cj, %indvars.iv.next52.i.1
  %i.cy = getelementptr inbounds i8, ptr %i.cg, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !18
  %i.da = zext i8 %i.cz to i64
  %i.db = or disjoint i64 %i.cw, %i.da            ; 2 uses
  %.not183 = icmp eq i32 %i.w, 3
  br i1 %.not183, label %._crit_edge.i, label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %.lr.ph.split.us.i.2
  %indvars.iv.next52.i.2 = add nsw i64 %i.ck, -3
  %i.dc = shl nuw nsw i64 %i.db, 8
  %i.dd = sub nsw i64 %i.cj, %indvars.iv.next52.i.2
  %i.de = getelementptr inbounds i8, ptr %i.cg, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !18
  %i.dg = zext i8 %i.df to i64
  %i.dh = or disjoint i64 %i.dc, %i.dg            ; 2 uses
  %i.di = icmp ugt i32 %i.w, 4
  br i1 %i.di, label %.lr.ph.split.us.i.4, label %._crit_edge.i

.lr.ph.split.us.i.4:                              ; preds = %.lr.ph.split.us.i.3
  %indvars.iv.next52.i.3 = add nsw i64 %i.ck, -4
  %i.dj = shl i64 %i.dh, 8
  %i.dk = sub nsw i64 %i.cj, %indvars.iv.next52.i.3
  %i.dl = getelementptr inbounds i8, ptr %i.cg, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !18
  %i.dn = zext i8 %i.dm to i64
  %i.do = or disjoint i64 %i.dj, %i.dn            ; 2 uses
  %.not184 = icmp eq i32 %i.w, 5
  br i1 %.not184, label %._crit_edge.i, label %.lr.ph.split.us.i.5

.lr.ph.split.us.i.5:                              ; preds = %.lr.ph.split.us.i.4
  %indvars.iv.next52.i.4 = add nsw i64 %i.ck, -5
  %i.dp = shl i64 %i.do, 8
  %i.dq = sub nsw i64 %i.cj, %indvars.iv.next52.i.4
  %i.dr = getelementptr inbounds i8, ptr %i.cg, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !18
  %i.dt = zext i8 %i.ds to i64
  %i.du = or disjoint i64 %i.dp, %i.dt            ; 2 uses
  %i.dv = icmp ugt i32 %i.w, 6
  br i1 %i.dv, label %.lr.ph.split.us.i.6, label %._crit_edge.i

.lr.ph.split.us.i.6:                              ; preds = %.lr.ph.split.us.i.5
  %indvars.iv.next52.i.5 = add nsw i64 %i.ck, -6
  %i.dw = shl i64 %i.du, 8
  %i.dx = sub nsw i64 %i.cj, %indvars.iv.next52.i.5
  %i.dy = getelementptr inbounds i8, ptr %i.cg, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !18
  %i.ea = zext i8 %i.dz to i64
  %i.eb = or disjoint i64 %i.dw, %i.ea            ; 2 uses
  %.not185 = icmp eq i32 %i.w, 7
  br i1 %.not185, label %._crit_edge.i, label %.lr.ph.split.us.i.7

.lr.ph.split.us.i.7:                              ; preds = %.lr.ph.split.us.i.6
  %indvars.iv.next52.i.6 = add nsw i64 %i.ck, -7
  %i.ec = shl i64 %i.eb, 8
  %i.ed = sub nsw i64 %i.cj, %indvars.iv.next52.i.6
  %i.ee = getelementptr inbounds i8, ptr %i.cg, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !18
  %i.eg = zext i8 %i.ef to i64
  %i.eh = or disjoint i64 %i.ec, %i.eg
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ei = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.ej = getelementptr i8, ptr %i.ei, i64 -1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !18
  %i.el = zext i8 %i.ek to i64                    ; 2 uses
  %.not178 = icmp eq i32 %i.w, 1
  br i1 %.not178, label %._crit_edge.i.thread, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  %i.em = shl nuw nsw i64 %i.el, 8
  %i.en = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.eo = getelementptr i8, ptr %i.en, i64 -2
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !18
  %i.eq = zext i8 %i.ep to i64
  %i.er = or disjoint i64 %i.em, %i.eq            ; 2 uses
  %i.es = icmp ugt i32 %i.w, 2
  br i1 %i.es, label %.lr.ph.split.i.2, label %._crit_edge.i.thread

.lr.ph.split.i.2:                                 ; preds = %.lr.ph.split.i.1
  %i.et = shl nuw nsw i64 %i.er, 8
  %i.eu = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.ev = getelementptr i8, ptr %i.eu, i64 -3
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !18
  %i.ex = zext i8 %i.ew to i64
  %i.ey = or disjoint i64 %i.et, %i.ex            ; 2 uses
  %.not179 = icmp eq i32 %i.w, 3
  br i1 %.not179, label %._crit_edge.i.thread, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %.lr.ph.split.i.2
  %i.ez = shl nuw nsw i64 %i.ey, 8
  %i.fa = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.fb = getelementptr i8, ptr %i.fa, i64 -4
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !18
  %i.fd = zext i8 %i.fc to i64
  %i.fe = or disjoint i64 %i.ez, %i.fd            ; 2 uses
  %i.ff = icmp ugt i32 %i.w, 4
  br i1 %i.ff, label %.lr.ph.split.i.4, label %._crit_edge.i.thread

.lr.ph.split.i.4:                                 ; preds = %.lr.ph.split.i.3
  %i.fg = shl i64 %i.fe, 8
  %i.fh = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.fi = getelementptr i8, ptr %i.fh, i64 -5
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !18
  %i.fk = zext i8 %i.fj to i64
  %i.fl = or disjoint i64 %i.fg, %i.fk            ; 2 uses
  %.not180 = icmp eq i32 %i.w, 5
  br i1 %.not180, label %._crit_edge.i.thread, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %.lr.ph.split.i.4
  %i.fm = shl i64 %i.fl, 8
  %i.fn = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.fo = getelementptr i8, ptr %i.fn, i64 -6
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !18
  %i.fq = zext i8 %i.fp to i64
  %i.fr = or disjoint i64 %i.fm, %i.fq            ; 2 uses
  %i.fs = icmp ugt i32 %i.w, 6
  br i1 %i.fs, label %.lr.ph.split.i.6, label %._crit_edge.i.thread

.lr.ph.split.i.6:                                 ; preds = %.lr.ph.split.i.5
  %i.ft = shl i64 %i.fr, 8
  %i.fu = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.fv = getelementptr i8, ptr %i.fu, i64 -7
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !18
  %i.fx = zext i8 %i.fw to i64
  %i.fy = or disjoint i64 %i.ft, %i.fx            ; 2 uses
  %.not181 = icmp eq i32 %i.w, 7
  br i1 %.not181, label %._crit_edge.i.thread, label %.lr.ph.split.i.7

.lr.ph.split.i.7:                                 ; preds = %.lr.ph.split.i.6
  %i.fz = shl i64 %i.fy, 8
  %i.ga = getelementptr i8, ptr %i.cg, i64 %i.ck
  %i.gb = getelementptr i8, ptr %i.ga, i64 -8
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !18
  %i.gd = zext i8 %i.gc to i64
  %i.ge = or disjoint i64 %i.fz, %i.gd
  br label %._crit_edge.i.thread

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.i.7, %.lr.ph.split.us.i.6, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i
  %.lcssa176 = phi i64 [ %i.co, %.lr.ph.split.us.i ], [ %i.cu, %.lr.ph.split.us.i.1 ], [ %i.db, %.lr.ph.split.us.i.2 ], [ %i.dh, %.lr.ph.split.us.i.3 ], [ %i.do, %.lr.ph.split.us.i.4 ], [ %i.du, %.lr.ph.split.us.i.5 ], [ %i.eb, %.lr.ph.split.us.i.6 ], [ %i.eh, %.lr.ph.split.us.i.7 ] ; 2 uses
  %i.gf = icmp samesign ult i32 %i.w, 9
  br i1 %i.gf, label %unpackint.exit, label %.lr.ph46.split.us.i

._crit_edge.i.thread:                             ; preds = %.lr.ph.split.i.7, %.lr.ph.split.i.6, %.lr.ph.split.i.5, %.lr.ph.split.i.4, %.lr.ph.split.i.3, %.lr.ph.split.i.2, %.lr.ph.split.i.1, %.lr.ph.split.i
  %.lcssa = phi i64 [ %i.el, %.lr.ph.split.i ], [ %i.er, %.lr.ph.split.i.1 ], [ %i.ey, %.lr.ph.split.i.2 ], [ %i.fe, %.lr.ph.split.i.3 ], [ %i.fl, %.lr.ph.split.i.4 ], [ %i.fr, %.lr.ph.split.i.5 ], [ %i.fy, %.lr.ph.split.i.6 ], [ %i.ge, %.lr.ph.split.i.7 ] ; 2 uses
  %i.gg = icmp samesign ult i32 %i.w, 9
  br i1 %i.gg, label %unpackint.exit, label %.lr.ph46.split.i

.lr.ph46.split.us.i:                              ; preds = %._crit_edge.i, %bb.r
  %indvars.iv57.i = phi i64 [ %indvars.iv.next58.i, %bb.r ], [ 8, %._crit_edge.i ] ; 2 uses
  %i.gh = trunc nuw nsw i64 %indvars.iv57.i to i32
  %i.gi = xor i32 %i.gh, -1
  %i.gj = add nsw i32 %i.w, %i.gi
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %i.cg, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !18
  %.not39.us.i = icmp eq i8 %i.gm, 0
  br i1 %.not39.us.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph46.split.us.i
  %i.gn = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %i.w) #7 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph46.split.us.i
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next58.i, %i.cj
  br i1 %exitcond97.not, label %unpackint.exit, label %.lr.ph46.split.us.i, !llvm.loop !0

.lr.ph46.split.i:                                 ; preds = %._crit_edge.i.thread, %bb.t
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %bb.t ], [ 8, %._crit_edge.i.thread ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.cg, i64 %indvars.iv53.i
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !18
  %.not39.i = icmp eq i8 %i.gp, 0
  br i1 %.not39.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph46.split.i
  %i.gq = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.19, i32 noundef %i.w) #7 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph46.split.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next54.i, %i.cj
  br i1 %exitcond.not, label %unpackint.exit, label %.lr.ph46.split.i, !llvm.loop !0

unpackint.exit:                                   ; preds = %bb.t, %bb.r, %._crit_edge.i.thread, %._crit_edge.i
  %.0.lcssa.i166 = phi i64 [ %.lcssa, %._crit_edge.i.thread ], [ %.lcssa176, %bb.r ], [ %.lcssa176, %._crit_edge.i ], [ %.lcssa, %bb.t ] ; 3 uses
  %i.gr = load i64, ptr %i.b, align 8, !tbaa !22
  %i.gs = add i64 %i.ac, %i.x
  %i.gt = sub i64 %i.gr, %i.gs
  %.not62 = icmp ugt i64 %.0.lcssa.i166, %i.gt
  br i1 %.not62, label %bb.u, label %unpackint.exit.thread

bb.u:                                             ; preds = %unpackint.exit
  %i.gu = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.16) #7 ; 0 uses
  br label %unpackint.exit.thread

unpackint.exit.thread:                            ; preds = %bb.p, %bb.u, %unpackint.exit
  %.1.i79 = phi i64 [ %.0.lcssa.i166, %unpackint.exit ], [ %.0.lcssa.i166, %bb.u ], [ 0, %bb.p ] ; 2 uses
  %i.gv = getelementptr inbounds i8, ptr %i.cg, i64 %i.x
  call void @lua_pushlstring(ptr noundef %0, ptr noundef %i.gv, i64 noundef %.1.i79) #7
  %i.gw = add i64 %.1.i79, %i.ac
  br label %bb.y

bb.v:                                             ; preds = %bb.g
  %i.gx = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ac ; 2 uses
  %i.gy = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gx) #8 ; 3 uses
  %i.gz = add i64 %i.gy, %i.ac
  %i.ha = load i64, ptr %i.b, align 8, !tbaa !22
  %i.hb = icmp ult i64 %i.gz, %i.ha
  br i1 %i.hb, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hc = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.18) #7 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.gx, i64 noundef %i.gy) #7
  %i.hd = add i64 %i.ac, 1
  %i.he = add i64 %i.hd, %i.gy
  br label %bb.y

default.unreachable163:                           ; preds = %bb.g
  unreachable

bb.y:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.x, %unpackint.exit.thread, %bb.o, %copywithendian.exit75, %copywithendian.exit69, %copywithendian.exit, %bb.h
  %.159 = phi i64 [ %i.he, %bb.x ], [ %i.ac, %bb.h ], [ %i.ac, %copywithendian.exit ], [ %i.ac, %copywithendian.exit69 ], [ %i.ac, %copywithendian.exit75 ], [ %i.ac, %bb.o ], [ %i.gw, %unpackint.exit.thread ], [ %i.ac, %bb.g ], [ %i.ac, %bb.g ], [ %i.ac, %bb.g ]
  %.1 = phi i32 [ %i.ad, %bb.x ], [ %i.ad, %bb.h ], [ %i.ad, %copywithendian.exit ], [ %i.ad, %copywithendian.exit69 ], [ %i.ad, %copywithendian.exit75 ], [ %i.ad, %bb.o ], [ %i.ad, %unpackint.exit.thread ], [ %.089, %bb.g ], [ %.089, %bb.g ], [ %.089, %bb.g ] ; 2 uses
  %i.hf = add i64 %.159, %i.x                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.hg = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !18
  %.not60 = icmp eq i8 %i.hh, 0
  br i1 %.not60, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !36

._crit_edge.loopexit:                             ; preds = %bb.y
  %i.hi = add i64 %i.hf, 1
  %i.hj = add nsw i32 %.1, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.058.lcssa = phi i64 [ %.0.i, %bb.e ], [ %i.hi, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 1, %bb.e ], [ %i.hj, %._crit_edge.loopexit ]
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

end_hunk_0
