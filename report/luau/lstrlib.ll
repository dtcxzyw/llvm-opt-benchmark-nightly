Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lstrlib?download=true
inline.NumInlined: 78
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL11str_reverseP9lua_State:bb.a
  %.06 = phi ptr [ %i.j, %.lr.ph ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %.06, i64 1 ; 2 uses
  store i8 %i.i, ptr %.06, align 1, !tbaa !13
  %i.k = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.l = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.l, ptr %i.a, align 8, !tbaa !12
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.j, %.lr.ph ]
  %i.m = load ptr, ptr %1, align 8, !tbaa !20
  %i.n = ptrtoint ptr %.0.lcssa to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  call void @_Z19luaL_pushresultsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL7str_subP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a)
  %i.c = call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 2 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !12
  %i.e = icmp slt i32 %i.c, 0
  %i.f = trunc i64 %i.d to i32
  %i.g = add nsw i32 %i.f, 1
  %i.h = select i1 %i.e, i32 %i.g, i32 0
  %.0.i = add nsw i32 %i.h, %i.c
  %i.i = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef -1) ; 2 uses
  %i.j = load i64, ptr %i.a, align 8, !tbaa !12
  %i.k = icmp slt i32 %i.i, 0
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  %i.m = add nsw i32 %i.l, 1
  %i.n = select i1 %i.k, i32 %i.m, i32 0
  %.0.i14 = add nsw i32 %i.n, %i.i
  %i.o = call noundef range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %.0.i14, i32 0)
  %i.p = call i32 @llvm.smax.i32(i32 %.0.i, i32 1) ; 3 uses
  %spec.select = call i32 @llvm.smin.i32(i32 %i.o, i32 %i.l) ; 2 uses
  %.not = icmp sgt i32 %i.p, %spec.select
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.q
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -1
  %reass.sub = sub nsw i32 %spec.select, %i.p
  %i.t = add nuw nsw i32 %reass.sub, 1
  %i.u = zext nneg i32 %i.t to i64
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull %i.s, i64 noundef %i.u)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull @.str.42, i64 noundef 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9str_upperP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %1 = alloca %struct.luaL_Strbuf, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.b = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.c = load i64, ptr %i.a, align 8, !tbaa !12
  %i.d = call noundef ptr @_Z17luaL_buffinitsizeP9lua_StateP11luaL_Strbufm(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %i.c)
  %i.e = load i64, ptr %i.a, align 8, !tbaa !12
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %toupper.exit.lr.ph

toupper.exit.lr.ph:                               ; preds = %bb.a
  %i.f = tail call ptr @__ctype_toupper_loc() #16
  br label %toupper.exit

._crit_edge:                                      ; preds = %toupper.exit, %bb.a
  %.lcssa = phi i64 [ 0, %bb.a ], [ %i.p, %toupper.exit ]
  call void @_Z19luaL_pushresultsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef %.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 1

toupper.exit:                                     ; preds = %toupper.exit.lr.ph, %toupper.exit
  %.09 = phi i64 [ 0, %toupper.exit.lr.ph ], [ %i.o, %toupper.exit ] ; 2 uses
  %.068 = phi ptr [ %i.d, %toupper.exit.lr.ph ], [ %i.n, %toupper.exit ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %.09
  %i.h = load i8, ptr %i.g, align 1, !tbaa !13
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.j = zext i8 %i.h to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 4, !tbaa !35
  %i.m = trunc i32 %i.l to i8
  %i.n = getelementptr inbounds nuw i8, ptr %.068, i64 1
  store i8 %i.m, ptr %.068, align 1, !tbaa !13
  %i.o = add nuw i64 %.09, 1                      ; 2 uses
  %i.p = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %toupper.exit, label %._crit_edge, !llvm.loop !53
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9str_splitP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.d = call noundef ptr @_Z15luaL_optlstringP9lua_StateiPKcPm(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.44, ptr noundef nonnull %i.b)
  %i.e = load i64, ptr %i.a, align 8, !tbaa !12   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 2 uses
  call void @_Z15lua_createtableP9lua_Stateii(ptr noundef %0, i32 noundef 0, i32 noundef 0)
  %i.g = load i64, ptr %i.b, align 8, !tbaa !12   ; 4 uses
  %i.h = icmp eq i64 %i.g, 0
  %spec.select.idx = zext i1 %i.h to i64          ; 2 uses
  %i.i = sub i64 %i.e, %i.g
  %.not37 = icmp slt i64 %i.i, %spec.select.idx
  br i1 %.not37, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %spec.select = getelementptr inbounds nuw i8, ptr %i.c, i64 %spec.select.idx
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.c
  %i.j = add nsw i32 %.129, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i64 [ %i.g, %bb.a ], [ %.pr, %._crit_edge.loopexit ]
  %.030.lcssa = phi ptr [ %i.c, %bb.a ], [ %.131, %._crit_edge.loopexit ] ; 2 uses
  %.028.lcssa = phi i32 [ 1, %bb.a ], [ %i.j, %._crit_edge.loopexit ]
  %.not34 = icmp eq i64 %.lcssa, 0
  br i1 %.not34, label %bb.e, label %bb.d

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.pr43 = phi i64 [ %.pr, %bb.c ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %.040 = phi ptr [ %i.s, %bb.c ], [ %spec.select, %.lr.ph.preheader ] ; 5 uses
  %.02839 = phi i32 [ %.129, %bb.c ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03038 = phi ptr [ %.131, %bb.c ], [ %i.c, %.lr.ph.preheader ] ; 3 uses
  %bcmp = call i32 @bcmp(ptr %.040, ptr %i.d, i64 %.pr43)
  %i.k = icmp eq i32 %bcmp, 0
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.l = add nsw i32 %.02839, 1                   ; 2 uses
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %i.l)
  %i.m = ptrtoint ptr %.040 to i64
  %i.n = ptrtoint ptr %.03038 to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef %.03038, i64 noundef %i.o)
  call void @_Z12lua_settableP9lua_Statei(ptr noundef %0, i32 noundef -3)
  %i.p = load i64, ptr %i.b, align 8, !tbaa !12   ; 3 uses
  %i.q = getelementptr i8, ptr %.040, i64 %i.p    ; 2 uses
  %.not35 = icmp eq i64 %i.p, 0
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  %spec.select36 = select i1 %.not35, ptr %.040, ptr %i.r
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %.pr = phi i64 [ %.pr43, %.lr.ph ], [ %i.p, %bb.b ] ; 3 uses
  %.131 = phi ptr [ %.03038, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %.129 = phi i32 [ %.02839, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %.040, %.lr.ph ], [ %spec.select36, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %i.t = sub i64 0, %.pr
  %i.u = getelementptr inbounds i8, ptr %i.f, i64 %i.t
  %.not = icmp ugt ptr %i.s, %i.u
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !54

bb.d:                                             ; preds = %._crit_edge
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %.028.lcssa)
  %i.v = ptrtoint ptr %i.f to i64
  %i.w = ptrtoint ptr %.030.lcssa to i64
  %i.x = sub i64 %i.v, %i.w
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef %.030.lcssa, i64 noundef %i.x)
  call void @_Z12lua_settableP9lua_Statei(ptr noundef %0, i32 noundef -3)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8str_packP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 14 uses
  %i.b = alloca [16 x i8], align 16               ; 14 uses
  %i.c = alloca [16 x i8], align 16               ; 15 uses
  %1 = alloca %struct.luaL_Strbuf, align 8        ; 28 uses
  %2 = alloca %struct.Header, align 8             ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %3 = alloca %union.Ftypes, align 8              ; 9 uses
  %i.g = alloca [16 x i8], align 16               ; 6 uses
  %i.h = alloca i64, align 8                      ; 8 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.k = tail call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef null) ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !36
  store ptr %0, ptr %2, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 1, ptr %i.l, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 1, ptr %i.m, align 4, !tbaa !40
  tail call void @_Z11lua_pushnilP9lua_State(ptr noundef %0)
  call void @_Z13luaL_buffinitP9lua_StateP11luaL_Strbuf(ptr noundef %0, ptr noundef nonnull %1)
  %i.n = load i8, ptr %i.k, align 1, !tbaa !13
  %.not123 = icmp eq i8 %i.n, 0
  br i1 %.not123, label %._crit_edge128, label %.lr.ph127

.lr.ph127:                                        ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph127, %bb.aj
  %.0125 = phi i64 [ 0, %.lr.ph127 ], [ %.1, %bb.aj ] ; 2 uses
  %.047124 = phi i32 [ 1, %.lr.ph127 ], [ %.148, %bb.aj ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  %i.p = call fastcc noundef i32 @_ZL10getdetailsP6HeadermPPKcPiS4_(ptr noundef %2, i64 noundef %.0125, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f)
  %i.q = load i32, ptr %i.f, align 4, !tbaa !35   ; 3 uses
  %i.r = load i32, ptr %i.e, align 4, !tbaa !35   ; 45 uses
  %i.s = add nsw i32 %i.r, %i.q
  %i.t = sext i32 %i.s to i64
  %i.u = add i64 %.0125, %i.t                     ; 9 uses
  %i.v = icmp sgt i32 %i.q, 0
  br i1 %i.v, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.in = phi i32 [ %i.w, %bb.d ], [ %i.q, %bb.b ] ; 2 uses
  %i.w = add nsw i32 %.in, -1
  %i.x = load ptr, ptr %1, align 8, !tbaa !20     ; 2 uses
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.z = icmp ult ptr %i.x, %i.y
  br i1 %i.z, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.aa = call noundef ptr @_Z17luaL_prepbuffsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef 1) ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.ab = phi ptr [ %.pre, %bb.c ], [ %i.x, %.lr.ph ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  store ptr %i.ac, ptr %1, align 8, !tbaa !20
  store i8 0, ptr %i.ab, align 1, !tbaa !13
  %i.ad = icmp sgt i32 %.in, 1
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.d, %bb.b
  %i.ae = add nsw i32 %.047124, 1                 ; 17 uses
  switch i32 %i.p, label %default.unreachable152 [
    i32 0, label %bb.e
    i32 1, label %bb.i
    i32 2, label %bb.m
    i32 3, label %bb.s
    i32 4, label %bb.x
    i32 5, label %bb.ab
    i32 6, label %bb.ag
    i32 7, label %bb.aj
    i32 8, label %bb.aj
  ]

bb.e:                                             ; preds = %._crit_edge
  %i.af = call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef %i.ae)
  %i.ag = fptosi double %i.af to i64              ; 9 uses
  %i.ah = icmp slt i32 %i.r, 8
  br i1 %i.ah, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ai = shl nsw i32 %i.r, 3
  %i.aj = add nsw i32 %i.ai, -1
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = shl nuw i64 1, %i.ak                    ; 2 uses
  %i.am = sub nsw i64 0, %i.al
  %.not58 = icmp sle i64 %i.am, %i.ag
  %i.an = icmp sgt i64 %i.al, %i.ag
  %or.cond = and i1 %.not58, %i.an
  br i1 %or.cond, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull @.str.45) #14
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.ao = load i32, ptr %i.l, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.ap = trunc i64 %i.ag to i8
  %.not.i = icmp eq i32 %i.ao, 0                  ; 2 uses
  %i.aq = add i32 %i.r, -1                        ; 2 uses
  %i.ar = select i1 %.not.i, i32 %i.aq, i32 0
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.c, i64 %i.as
  store i8 %i.ap, ptr %i.at, align 1, !tbaa !13
  %i.au = icmp sgt i32 %i.r, 1
  br i1 %i.au, label %.lr.ph.i, label %_ZL7packintP11luaL_Strbufyiii.exit

.lr.ph.i:                                         ; preds = %bb.h
  br i1 %.not.i, label %.lr.ph.split.us.preheader.i, label %.lr.ph.split.preheader.i

.lr.ph.split.preheader.i:                         ; preds = %.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.r to i64
  %i.av = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter204 = and i64 %i.av, 3                 ; 3 uses
  %i.aw = add nsw i32 %i.r, -2
  %i.ax = icmp ult i32 %i.aw, 3
  br i1 %i.ax, label %.lr.ph.split.i.epil.preheader, label %.lr.ph.split.preheader.i.new

.lr.ph.split.preheader.i.new:                     ; preds = %.lr.ph.split.preheader.i
  %unroll_iter208 = and i64 %i.av, -4
  br label %.lr.ph.split.i

.lr.ph.split.us.preheader.i:                      ; preds = %.lr.ph.i
  %i.ay = zext nneg i32 %i.aq to i64              ; 6 uses
  %wide.trip.count34.i = zext nneg i32 %i.r to i64
  %i.az = add nsw i64 %wide.trip.count34.i, -1    ; 2 uses
  %xtraiter210 = and i64 %i.az, 3                 ; 3 uses
  %i.ba = add nsw i32 %i.r, -2
  %i.bb = icmp ult i32 %i.ba, 3
  br i1 %i.bb, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.preheader.i.new

.lr.ph.split.us.preheader.i.new:                  ; preds = %.lr.ph.split.us.preheader.i
  %unroll_iter214 = and i64 %i.az, -4
  %invariant.gep235 = getelementptr i8, ptr %i.c, i64 %i.ay
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.preheader.i.new
  %indvars.iv31.i = phi i64 [ 1, %.lr.ph.split.us.preheader.i.new ], [ %indvars.iv.next32.i.3, %.lr.ph.split.us.i ] ; 5 uses
  %.02325.us.i = phi i64 [ %i.ag, %.lr.ph.split.us.preheader.i.new ], [ %i.bm, %.lr.ph.split.us.i ] ; 4 uses
  %niter215 = phi i64 [ 0, %.lr.ph.split.us.preheader.i.new ], [ %niter215.next.3, %.lr.ph.split.us.i ]
  %i.bc = lshr i64 %.02325.us.i, 8
  %i.bd = trunc i64 %i.bc to i8
  %i.be = sub nuw nsw i64 %i.ay, %indvars.iv31.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.be
  store i8 %i.bd, ptr %i.bf, align 1, !tbaa !13
  %indvars.iv.next32.i.neg = xor i64 %indvars.iv31.i, -1
  %i.bg = lshr i64 %.02325.us.i, 16
  %i.bh = trunc i64 %i.bg to i8
  %gep236 = getelementptr i8, ptr %invariant.gep235, i64 %indvars.iv.next32.i.neg
  store i8 %i.bh, ptr %gep236, align 1, !tbaa !13
  %indvars.iv.next32.i.1 = add nuw nsw i64 %indvars.iv31.i, 2
  %i.bi = lshr i64 %.02325.us.i, 24
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = sub nuw nsw i64 %i.ay, %indvars.iv.next32.i.1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bk
  store i8 %i.bj, ptr %i.bl, align 1, !tbaa !13
  %indvars.iv.next32.i.2 = add nuw nsw i64 %indvars.iv31.i, 3
  %i.bm = lshr i64 %.02325.us.i, 32               ; 3 uses
  %i.bn = trunc i64 %i.bm to i8
  %i.bo = sub nuw nsw i64 %i.ay, %indvars.iv.next32.i.2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.bo
  store i8 %i.bn, ptr %i.bp, align 1, !tbaa !13
  %indvars.iv.next32.i.3 = add nuw nsw i64 %indvars.iv31.i, 4 ; 2 uses
  %niter215.next.3 = add nuw i64 %niter215, 4     ; 2 uses
  %niter215.ncmp.3 = icmp eq i64 %niter215.next.3, %unroll_iter214
  br i1 %niter215.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !56

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i, %.lr.ph.split.preheader.i.new
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.split.preheader.i.new ], [ %indvars.iv.next.i.3, %.lr.ph.split.i ] ; 5 uses
  %.02325.i = phi i64 [ %i.ag, %.lr.ph.split.preheader.i.new ], [ %i.cb, %.lr.ph.split.i ] ; 4 uses
  %niter209 = phi i64 [ 0, %.lr.ph.split.preheader.i.new ], [ %niter209.next.3, %.lr.ph.split.i ]
  %i.bq = lshr i64 %.02325.i, 8
  %i.br = trunc i64 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !13
  %i.bt = lshr i64 %.02325.i, 16
  %i.bu = trunc i64 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.bu, ptr %i.bw, align 1, !tbaa !13
  %i.bx = lshr i64 %.02325.i, 24
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2
  store i8 %i.by, ptr %i.ca, align 1, !tbaa !13
  %i.cb = lshr i64 %.02325.i, 32                  ; 3 uses
  %i.cc = trunc i64 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 3
  store i8 %i.cc, ptr %i.ce, align 1, !tbaa !13
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter209.next.3 = add nuw i64 %niter209, 4     ; 2 uses
  %niter209.ncmp.3 = icmp eq i64 %niter209.next.3, %unroll_iter208
  br i1 %niter209.ncmp.3, label %._crit_edge.thread44.i.unr-lcssa, label %.lr.ph.split.i, !llvm.loop !56

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.split.us.i
  %lcmp.mod212.not = icmp eq i64 %xtraiter210, 0
  br i1 %lcmp.mod212.not, label %._crit_edge.i, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.split.us.preheader.i
  %indvars.iv31.i.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i ], [ %indvars.iv.next32.i.3, %._crit_edge.i.unr-lcssa ]
  %.02325.us.i.epil.init = phi i64 [ %i.ag, %.lr.ph.split.us.preheader.i ], [ %i.bm, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod213 = icmp ne i64 %xtraiter210, 0
  call void @llvm.assume(i1 %lcmp.mod213)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %indvars.iv31.i.epil = phi i64 [ %indvars.iv31.i.epil.init, %.lr.ph.split.us.i.epil.preheader ], [ %indvars.iv.next32.i.epil, %.lr.ph.split.us.i.epil ] ; 2 uses
  %.02325.us.i.epil = phi i64 [ %.02325.us.i.epil.init, %.lr.ph.split.us.i.epil.preheader ], [ %i.cf, %.lr.ph.split.us.i.epil ]
  %epil.iter211 = phi i64 [ 0, %.lr.ph.split.us.i.epil.preheader ], [ %epil.iter211.next, %.lr.ph.split.us.i.epil ]
  %i.cf = lshr i64 %.02325.us.i.epil, 8           ; 2 uses
  %i.cg = trunc i64 %i.cf to i8
  %i.ch = sub nuw nsw i64 %i.ay, %indvars.iv31.i.epil
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ch
  store i8 %i.cg, ptr %i.ci, align 1, !tbaa !13
  %indvars.iv.next32.i.epil = add nuw nsw i64 %indvars.iv31.i.epil, 1
  %epil.iter211.next = add i64 %epil.iter211, 1   ; 2 uses
  %epil.iter211.cmp.not = icmp eq i64 %epil.iter211.next, %xtraiter210
  br i1 %epil.iter211.cmp.not, label %._crit_edge.i, label %.lr.ph.split.us.i.epil, !llvm.loop !57

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.i.epil, %._crit_edge.i.unr-lcssa
  %i.cj = icmp slt i64 %i.ag, 0
  %i.ck = icmp samesign ugt i32 %i.r, 8
  %or.cond.i = and i1 %i.ck, %i.cj
  br i1 %or.cond.i, label %.preheader.i, label %_ZL7packintP11luaL_Strbufyiii.exit

._crit_edge.thread44.i.unr-lcssa:                 ; preds = %.lr.ph.split.i
  %lcmp.mod206.not = icmp eq i64 %xtraiter204, 0
  br i1 %lcmp.mod206.not, label %._crit_edge.thread44.i, label %.lr.ph.split.i.epil.preheader

.lr.ph.split.i.epil.preheader:                    ; preds = %._crit_edge.thread44.i.unr-lcssa, %.lr.ph.split.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.thread44.i.unr-lcssa ]
  %.02325.i.epil.init = phi i64 [ %i.ag, %.lr.ph.split.preheader.i ], [ %i.cb, %._crit_edge.thread44.i.unr-lcssa ]
  %lcmp.mod207 = icmp ne i64 %xtraiter204, 0
  call void @llvm.assume(i1 %lcmp.mod207)
  br label %.lr.ph.split.i.epil

.lr.ph.split.i.epil:                              ; preds = %.lr.ph.split.i.epil, %.lr.ph.split.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.lr.ph.split.i.epil.preheader ], [ %indvars.iv.next.i.epil, %.lr.ph.split.i.epil ] ; 2 uses
  %.02325.i.epil = phi i64 [ %.02325.i.epil.init, %.lr.ph.split.i.epil.preheader ], [ %i.cl, %.lr.ph.split.i.epil ]
  %epil.iter205 = phi i64 [ 0, %.lr.ph.split.i.epil.preheader ], [ %epil.iter205.next, %.lr.ph.split.i.epil ]
  %i.cl = lshr i64 %.02325.i.epil, 8              ; 2 uses
  %i.cm = trunc i64 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.epil
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !13
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter205.next = add i64 %epil.iter205, 1   ; 2 uses
  %epil.iter205.cmp.not = icmp eq i64 %epil.iter205.next, %xtraiter204
  br i1 %epil.iter205.cmp.not, label %._crit_edge.thread44.i, label %.lr.ph.split.i.epil, !llvm.loop !58

._crit_edge.thread44.i:                           ; preds = %.lr.ph.split.i.epil, %._crit_edge.thread44.i.unr-lcssa
  %i.co = icmp slt i64 %i.ag, 0
  %i.cp = icmp samesign ugt i32 %i.r, 8
  %or.cond45.i = and i1 %i.cp, %i.co
  br i1 %or.cond45.i, label %.loopexit.sink.split.i, label %_ZL7packintP11luaL_Strbufyiii.exit

.preheader.i:                                     ; preds = %._crit_edge.i
  %4 = add nsw i64 %i.ay, -8
  %5 = add nsw i32 %i.r, -9
  %6 = zext nneg i32 %5 to i64
  %7 = sub nsw i64 %4, %6
  br label %.loopexit.sink.split.i

.loopexit.sink.split.i:                           ; preds = %.preheader.i, %._crit_edge.thread44.i
  %.sink.i = phi i64 [ %7, %.preheader.i ], [ 8, %._crit_edge.thread44.i ]
  %scevgep.i = getelementptr i8, ptr %i.c, i64 %.sink.i
  %i.cq = add nsw i32 %i.r, -8
  %i.cr = zext nneg i32 %i.cq to i64
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i, i8 -1, i64 %i.cr, i1 false), !tbaa !13
  br label %_ZL7packintP11luaL_Strbufyiii.exit

_ZL7packintP11luaL_Strbufyiii.exit:               ; preds = %bb.h, %._crit_edge.i, %._crit_edge.thread44.i, %.loopexit.sink.split.i
  %i.cs = sext i32 %i.r to i64
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i64 noundef %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.aj

bb.i:                                             ; preds = %._crit_edge
  %i.ct = call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef %i.ae)
  %i.cu = fptosi double %i.ct to i64              ; 6 uses
  %i.cv = icmp slt i32 %i.r, 8
  br i1 %i.cv, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.cw = shl nsw i32 %i.r, 3
  %i.cx = zext nneg i32 %i.cw to i64
  %.highbits57 = lshr i64 %i.cu, %i.cx
  %i.cy = icmp eq i64 %.highbits57, 0
  br i1 %i.cy, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull @.str.46) #14
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.cz = load i32, ptr %i.l, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.da = trunc i64 %i.cu to i8
  %.not.i59 = icmp eq i32 %i.cz, 0                ; 2 uses
  %i.db = add i32 %i.r, -1                        ; 2 uses
  %i.dc = select i1 %.not.i59, i32 %i.db, i32 0
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds i8, ptr %i.b, i64 %i.dd
  store i8 %i.da, ptr %i.de, align 1, !tbaa !13
  %i.df = icmp sgt i32 %i.r, 1
  br i1 %i.df, label %.lr.ph.i60, label %_ZL7packintP11luaL_Strbufyiii.exit83

.lr.ph.i60:                                       ; preds = %bb.l
  br i1 %.not.i59, label %.lr.ph.split.us.preheader.i73, label %.lr.ph.split.preheader.i61

.lr.ph.split.preheader.i61:                       ; preds = %.lr.ph.i60
  %wide.trip.count.i62 = zext nneg i32 %i.r to i64
  %i.dg = add nsw i64 %wide.trip.count.i62, -1    ; 2 uses
  %xtraiter192 = and i64 %i.dg, 3                 ; 3 uses
  %i.dh = add nsw i32 %i.r, -2
  %i.di = icmp ult i32 %i.dh, 3
  br i1 %i.di, label %.lr.ph.split.i63.epil.preheader, label %.lr.ph.split.preheader.i61.new

.lr.ph.split.preheader.i61.new:                   ; preds = %.lr.ph.split.preheader.i61
  %unroll_iter196 = and i64 %i.dg, -4
  br label %.lr.ph.split.i63

.lr.ph.split.us.preheader.i73:                    ; preds = %.lr.ph.i60
  %i.dj = zext nneg i32 %i.db to i64              ; 5 uses
  %wide.trip.count34.i74 = zext nneg i32 %i.r to i64
  %i.dk = add nsw i64 %wide.trip.count34.i74, -1  ; 2 uses
  %xtraiter198.a = and i64 %i.dk, 3               ; 3 uses
  %i.dl = add nsw i32 %i.r, -2
  %i.dm = icmp ult i32 %i.dl, 3
  br i1 %i.dm, label %.lr.ph.split.us.i75.epil.preheader, label %.lr.ph.split.us.preheader.i73.new

.lr.ph.split.us.preheader.i73.new:                ; preds = %.lr.ph.split.us.preheader.i73
  %unroll_iter202 = and i64 %i.dk, -4
  %invariant.gep233 = getelementptr i8, ptr %i.b, i64 %i.dj
  br label %.lr.ph.split.us.i75

.lr.ph.split.us.i75:                              ; preds = %.lr.ph.split.us.i75, %.lr.ph.split.us.preheader.i73.new
  %indvars.iv31.i76 = phi i64 [ 1, %.lr.ph.split.us.preheader.i73.new ], [ %indvars.iv.next32.i78.3, %.lr.ph.split.us.i75 ] ; 5 uses
  %.02325.us.i77 = phi i64 [ %i.cu, %.lr.ph.split.us.preheader.i73.new ], [ %i.dx, %.lr.ph.split.us.i75 ] ; 4 uses
  %niter203 = phi i64 [ 0, %.lr.ph.split.us.preheader.i73.new ], [ %niter203.next.3, %.lr.ph.split.us.i75 ]
  %i.dn = lshr i64 %.02325.us.i77, 8
  %i.do = trunc i64 %i.dn to i8
  %i.dp = sub nuw nsw i64 %i.dj, %indvars.iv31.i76
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dp
  store i8 %i.do, ptr %i.dq, align 1, !tbaa !13
  %indvars.iv.next32.i78.neg = xor i64 %indvars.iv31.i76, -1
  %i.dr = lshr i64 %.02325.us.i77, 16
  %i.ds = trunc i64 %i.dr to i8
  %gep234 = getelementptr i8, ptr %invariant.gep233, i64 %indvars.iv.next32.i78.neg
  store i8 %i.ds, ptr %gep234, align 1, !tbaa !13
  %indvars.iv.next32.i78.1 = add nuw nsw i64 %indvars.iv31.i76, 2
  %i.dt = lshr i64 %.02325.us.i77, 24
  %i.du = trunc i64 %i.dt to i8
  %i.dv = sub nuw nsw i64 %i.dj, %indvars.iv.next32.i78.1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dv
  store i8 %i.du, ptr %i.dw, align 1, !tbaa !13
  %indvars.iv.next32.i78.2 = add nuw nsw i64 %indvars.iv31.i76, 3
  %i.dx = lshr i64 %.02325.us.i77, 32             ; 3 uses
  %i.dy = trunc i64 %i.dx to i8
  %i.dz = sub nuw nsw i64 %i.dj, %indvars.iv.next32.i78.2
  %i.ea = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.dz
  store i8 %i.dy, ptr %i.ea, align 1, !tbaa !13
  %indvars.iv.next32.i78.3 = add nuw nsw i64 %indvars.iv31.i76, 4 ; 2 uses
  %niter203.next.3 = add nuw i64 %niter203, 4     ; 2 uses
  %niter203.ncmp.3 = icmp eq i64 %niter203.next.3, %unroll_iter202
  br i1 %niter203.ncmp.3, label %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit.unr-lcssa, label %.lr.ph.split.us.i75, !llvm.loop !56

.lr.ph.split.i63:                                 ; preds = %.lr.ph.split.i63, %.lr.ph.split.preheader.i61.new
  %indvars.iv.i64 = phi i64 [ 1, %.lr.ph.split.preheader.i61.new ], [ %indvars.iv.next.i66.3, %.lr.ph.split.i63 ] ; 5 uses
  %.02325.i65 = phi i64 [ %i.cu, %.lr.ph.split.preheader.i61.new ], [ %i.em, %.lr.ph.split.i63 ] ; 4 uses
  %niter197 = phi i64 [ 0, %.lr.ph.split.preheader.i61.new ], [ %niter197.next.3, %.lr.ph.split.i63 ]
  %i.eb = lshr i64 %.02325.i65, 8
  %i.ec = trunc i64 %i.eb to i8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i64
  store i8 %i.ec, ptr %i.ed, align 1, !tbaa !13
  %i.ee = lshr i64 %.02325.i65, 16
  %i.ef = trunc i64 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 1
  store i8 %i.ef, ptr %i.eh, align 1, !tbaa !13
  %i.ei = lshr i64 %.02325.i65, 24
  %i.ej = trunc i64 %i.ei to i8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 2
  store i8 %i.ej, ptr %i.el, align 1, !tbaa !13
  %i.em = lshr i64 %.02325.i65, 32                ; 3 uses
  %i.en = trunc i64 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i64
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 3
  store i8 %i.en, ptr %i.ep, align 1, !tbaa !13
  %indvars.iv.next.i66.3 = add nuw nsw i64 %indvars.iv.i64, 4 ; 2 uses
  %niter197.next.3 = add nuw i64 %niter197, 4     ; 2 uses
  %niter197.ncmp.3 = icmp eq i64 %niter197.next.3, %unroll_iter196
  br i1 %niter197.ncmp.3, label %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit171.unr-lcssa, label %.lr.ph.split.i63, !llvm.loop !56

_ZL7packintP11luaL_Strbufyiii.exit83.loopexit.unr-lcssa: ; preds = %.lr.ph.split.us.i75
  %lcmp.mod200.not = icmp eq i64 %xtraiter198.a, 0
  br i1 %lcmp.mod200.not, label %_ZL7packintP11luaL_Strbufyiii.exit83, label %.lr.ph.split.us.i75.epil.preheader

.lr.ph.split.us.i75.epil.preheader:               ; preds = %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i73
  %indvars.iv31.i76.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i73 ], [ %indvars.iv.next32.i78.3, %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit.unr-lcssa ]
  %.02325.us.i77.epil.init = phi i64 [ %i.cu, %.lr.ph.split.us.preheader.i73 ], [ %i.dx, %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit.unr-lcssa ]
  %lcmp.mod201 = icmp ne i64 %xtraiter198.a, 0
  call void @llvm.assume(i1 %lcmp.mod201)
  br label %.lr.ph.split.us.i75.epil

.lr.ph.split.us.i75.epil:                         ; preds = %.lr.ph.split.us.i75.epil, %.lr.ph.split.us.i75.epil.preheader
  %indvars.iv31.i76.epil = phi i64 [ %indvars.iv31.i76.epil.init, %.lr.ph.split.us.i75.epil.preheader ], [ %indvars.iv.next32.i78.epil, %.lr.ph.split.us.i75.epil ] ; 2 uses
  %.02325.us.i77.epil = phi i64 [ %.02325.us.i77.epil.init, %.lr.ph.split.us.i75.epil.preheader ], [ %i.eq, %.lr.ph.split.us.i75.epil ]
  %epil.iter199 = phi i64 [ 0, %.lr.ph.split.us.i75.epil.preheader ], [ %epil.iter199.next, %.lr.ph.split.us.i75.epil ]
  %i.eq = lshr i64 %.02325.us.i77.epil, 8         ; 2 uses
  %i.er = trunc i64 %i.eq to i8
  %i.es = sub nuw nsw i64 %i.dj, %indvars.iv31.i76.epil
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.es
  store i8 %i.er, ptr %i.et, align 1, !tbaa !13
  %indvars.iv.next32.i78.epil = add nuw nsw i64 %indvars.iv31.i76.epil, 1
  %epil.iter199.next = add i64 %epil.iter199, 1   ; 2 uses
  %epil.iter199.cmp.not = icmp eq i64 %epil.iter199.next, %xtraiter198.a
  br i1 %epil.iter199.cmp.not, label %_ZL7packintP11luaL_Strbufyiii.exit83, label %.lr.ph.split.us.i75.epil, !llvm.loop !59

_ZL7packintP11luaL_Strbufyiii.exit83.loopexit171.unr-lcssa: ; preds = %.lr.ph.split.i63
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %_ZL7packintP11luaL_Strbufyiii.exit83, label %.lr.ph.split.i63.epil.preheader

.lr.ph.split.i63.epil.preheader:                  ; preds = %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit171.unr-lcssa, %.lr.ph.split.preheader.i61
  %indvars.iv.i64.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i61 ], [ %indvars.iv.next.i66.3, %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit171.unr-lcssa ]
  %.02325.i65.epil.init = phi i64 [ %i.cu, %.lr.ph.split.preheader.i61 ], [ %i.em, %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit171.unr-lcssa ]
  %lcmp.mod195 = icmp ne i64 %xtraiter192, 0
  call void @llvm.assume(i1 %lcmp.mod195)
  br label %.lr.ph.split.i63.epil

.lr.ph.split.i63.epil:                            ; preds = %.lr.ph.split.i63.epil, %.lr.ph.split.i63.epil.preheader
  %indvars.iv.i64.epil = phi i64 [ %indvars.iv.i64.epil.init, %.lr.ph.split.i63.epil.preheader ], [ %indvars.iv.next.i66.epil, %.lr.ph.split.i63.epil ] ; 2 uses
  %.02325.i65.epil = phi i64 [ %.02325.i65.epil.init, %.lr.ph.split.i63.epil.preheader ], [ %i.eu, %.lr.ph.split.i63.epil ]
  %epil.iter193 = phi i64 [ 0, %.lr.ph.split.i63.epil.preheader ], [ %epil.iter193.next, %.lr.ph.split.i63.epil ]
  %i.eu = lshr i64 %.02325.i65.epil, 8            ; 2 uses
  %i.ev = trunc i64 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i64.epil
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !13
  %indvars.iv.next.i66.epil = add nuw nsw i64 %indvars.iv.i64.epil, 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %_ZL7packintP11luaL_Strbufyiii.exit83, label %.lr.ph.split.i63.epil, !llvm.loop !60

_ZL7packintP11luaL_Strbufyiii.exit83:             ; preds = %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit171.unr-lcssa, %.lr.ph.split.i63.epil, %_ZL7packintP11luaL_Strbufyiii.exit83.loopexit.unr-lcssa, %.lr.ph.split.us.i75.epil, %bb.l
  %i.ex = sext i32 %i.r to i64
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef nonnull %i.b, i64 noundef %i.ex)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.aj

bb.m:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  %i.ey = call noundef double @_Z16luaL_checknumberP9lua_Statei(ptr noundef %0, i32 noundef %i.ae) ; 3 uses
  switch i32 %i.r, label %bb.p [
    i32 4, label %bb.n
    i32 8, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.ez = fptrunc double %i.ey to float
  store volatile float %i.ez, ptr %3, align 8, !tbaa !13
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  store volatile double %i.ey, ptr %3, align 8, !tbaa !13
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  store volatile double %i.ey, ptr %3, align 8, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n
  %i.fa = load i32, ptr %i.l, align 8, !tbaa !39
  %i.fb = icmp eq i32 %i.fa, 1
  %.not1218.i = icmp eq i32 %i.r, 0               ; 2 uses
  br i1 %i.fb, label %.preheader.i86, label %bb.r

.preheader.i86:                                   ; preds = %bb.q
  br i1 %.not1218.i, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i.preheader

.lr.ph22.i.preheader:                             ; preds = %.preheader.i86
  %i.fc = add i32 %i.r, -1
  %xtraiter189 = and i32 %i.r, 7                  ; 2 uses
  %lcmp.mod190.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod190.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol

.lr.ph22.i.prol:                                  ; preds = %.lr.ph22.i.preheader, %.lr.ph22.i.prol
  %.021.i.prol = phi ptr [ %i.fg, %.lr.ph22.i.prol ], [ %i.g, %.lr.ph22.i.preheader ] ; 2 uses
  %.0820.i.prol = phi i32 [ %i.fd, %.lr.ph22.i.prol ], [ %i.r, %.lr.ph22.i.preheader ]
  %.01019.i.prol = phi ptr [ %i.fe, %.lr.ph22.i.prol ], [ %3, %.lr.ph22.i.preheader ] ; 2 uses
  %prol.iter191 = phi i32 [ %prol.iter191.next, %.lr.ph22.i.prol ], [ 0, %.lr.ph22.i.preheader ]
  %i.fd = add nsw i32 %.0820.i.prol, -1           ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 1 ; 2 uses
  %i.ff = load volatile i8, ptr %.01019.i.prol, align 1, !tbaa !13
  %i.fg = getelementptr inbounds nuw i8, ptr %.021.i.prol, i64 1 ; 2 uses
  store volatile i8 %i.ff, ptr %.021.i.prol, align 1, !tbaa !13
  %prol.iter191.next = add i32 %prol.iter191, 1   ; 2 uses
  %prol.iter191.cmp.not = icmp eq i32 %prol.iter191.next, %xtraiter189
  br i1 %prol.iter191.cmp.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol, !llvm.loop !61

.lr.ph22.i.prol.loopexit:                         ; preds = %.lr.ph22.i.prol, %.lr.ph22.i.preheader
  %.021.i.unr = phi ptr [ %i.g, %.lr.ph22.i.preheader ], [ %i.fg, %.lr.ph22.i.prol ]
  %.0820.i.unr = phi i32 [ %i.r, %.lr.ph22.i.preheader ], [ %i.fd, %.lr.ph22.i.prol ]
  %.01019.i.unr = phi ptr [ %3, %.lr.ph22.i.preheader ], [ %i.fe, %.lr.ph22.i.prol ]
  %i.fh = icmp ult i32 %i.fc, 7
  br i1 %i.fh, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  %.021.i = phi ptr [ %i.gg, %.lr.ph22.i ], [ %.021.i.unr, %.lr.ph22.i.prol.loopexit ] ; 9 uses
  %.0820.i = phi i32 [ %i.gd, %.lr.ph22.i ], [ %.0820.i.unr, %.lr.ph22.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.ge, %.lr.ph22.i ], [ %.01019.i.unr, %.lr.ph22.i.prol.loopexit ] ; 9 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.01019.i, i64 1
  %i.fj = load volatile i8, ptr %.01019.i, align 1, !tbaa !13
  %i.fk = getelementptr inbounds nuw i8, ptr %.021.i, i64 1
  store volatile i8 %i.fj, ptr %.021.i, align 1, !tbaa !13
  %i.fl = getelementptr inbounds nuw i8, ptr %.01019.i, i64 2
  %i.fm = load volatile i8, ptr %i.fi, align 1, !tbaa !13
  %i.fn = getelementptr inbounds nuw i8, ptr %.021.i, i64 2
  store volatile i8 %i.fm, ptr %i.fk, align 1, !tbaa !13
  %i.fo = getelementptr inbounds nuw i8, ptr %.01019.i, i64 3
  %i.fp = load volatile i8, ptr %i.fl, align 1, !tbaa !13
  %i.fq = getelementptr inbounds nuw i8, ptr %.021.i, i64 3
  store volatile i8 %i.fp, ptr %i.fn, align 1, !tbaa !13
  %i.fr = getelementptr inbounds nuw i8, ptr %.01019.i, i64 4
  %i.fs = load volatile i8, ptr %i.fo, align 1, !tbaa !13
  %i.ft = getelementptr inbounds nuw i8, ptr %.021.i, i64 4
  store volatile i8 %i.fs, ptr %i.fq, align 1, !tbaa !13
  %i.fu = getelementptr inbounds nuw i8, ptr %.01019.i, i64 5
  %i.fv = load volatile i8, ptr %i.fr, align 1, !tbaa !13
  %i.fw = getelementptr inbounds nuw i8, ptr %.021.i, i64 5
  store volatile i8 %i.fv, ptr %i.ft, align 1, !tbaa !13
  %i.fx = getelementptr inbounds nuw i8, ptr %.01019.i, i64 6
  %i.fy = load volatile i8, ptr %i.fu, align 1, !tbaa !13
  %i.fz = getelementptr inbounds nuw i8, ptr %.021.i, i64 6
  store volatile i8 %i.fy, ptr %i.fw, align 1, !tbaa !13
  %i.ga = getelementptr inbounds nuw i8, ptr %.01019.i, i64 7
  %i.gb = load volatile i8, ptr %i.fx, align 1, !tbaa !13
  %i.gc = getelementptr inbounds nuw i8, ptr %.021.i, i64 7
  store volatile i8 %i.gb, ptr %i.fz, align 1, !tbaa !13
  %i.gd = add nsw i32 %.0820.i, -8                ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  %i.gf = load volatile i8, ptr %i.ga, align 1, !tbaa !13
  %i.gg = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  store volatile i8 %i.gf, ptr %i.gc, align 1, !tbaa !13
  %.not12.i.7 = icmp eq i32 %i.gd, 0
  br i1 %.not12.i.7, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i, !llvm.loop !0

bb.r:                                             ; preds = %bb.q
  br i1 %.not1218.i, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.gh = sext i32 %i.r to i64
  %i.gi = getelementptr i8, ptr %i.g, i64 %i.gh   ; 2 uses
  %i.gj = add i32 %i.r, -1
  %xtraiter187 = and i32 %i.r, 7                  ; 2 uses
  %lcmp.mod188.not = icmp eq i32 %xtraiter187, 0
  br i1 %lcmp.mod188.not, label %.lr.ph.i84.prol.loopexit, label %.lr.ph.i84.prol

.lr.ph.i84.prol:                                  ; preds = %.lr.ph.preheader.i, %.lr.ph.i84.prol
  %.pn17.i.prol = phi ptr [ %.1.i.prol, %.lr.ph.i84.prol ], [ %i.gi, %.lr.ph.preheader.i ]
  %.1916.i.prol = phi i32 [ %i.gk, %.lr.ph.i84.prol ], [ %i.r, %.lr.ph.preheader.i ]
  %.11115.i.prol = phi ptr [ %i.gl, %.lr.ph.i84.prol ], [ %3, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i84.prol ], [ 0, %.lr.ph.preheader.i ]
  %.1.i.prol = getelementptr i8, ptr %.pn17.i.prol, i64 -1 ; 3 uses
  %i.gk = add nsw i32 %.1916.i.prol, -1           ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.11115.i.prol, i64 1 ; 2 uses
  %i.gm = load volatile i8, ptr %.11115.i.prol, align 1, !tbaa !13
  store volatile i8 %i.gm, ptr %.1.i.prol, align 1, !tbaa !13
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter187
  br i1 %prol.iter.cmp.not, label %.lr.ph.i84.prol.loopexit, label %.lr.ph.i84.prol, !llvm.loop !62

.lr.ph.i84.prol.loopexit:                         ; preds = %.lr.ph.i84.prol, %.lr.ph.preheader.i
  %.pn17.i.unr = phi ptr [ %i.gi, %.lr.ph.preheader.i ], [ %.1.i.prol, %.lr.ph.i84.prol ]
  %.1916.i.unr = phi i32 [ %i.r, %.lr.ph.preheader.i ], [ %i.gk, %.lr.ph.i84.prol ]
  %.11115.i.unr = phi ptr [ %3, %.lr.ph.preheader.i ], [ %i.gl, %.lr.ph.i84.prol ]
  %i.gn = icmp ult i32 %i.gj, 7
  br i1 %i.gn, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %.lr.ph.i84.prol.loopexit, %.lr.ph.i84
  %.pn17.i = phi ptr [ %.1.i.7, %.lr.ph.i84 ], [ %.pn17.i.unr, %.lr.ph.i84.prol.loopexit ] ; 8 uses
  %.1916.i = phi i32 [ %i.hc, %.lr.ph.i84 ], [ %.1916.i.unr, %.lr.ph.i84.prol.loopexit ]
  %.11115.i = phi ptr [ %i.hd, %.lr.ph.i84 ], [ %.11115.i.unr, %.lr.ph.i84.prol.loopexit ] ; 9 uses
  %.1.i = getelementptr i8, ptr %.pn17.i, i64 -1
  %i.go = getelementptr inbounds nuw i8, ptr %.11115.i, i64 1
  %i.gp = load volatile i8, ptr %.11115.i, align 1, !tbaa !13
  store volatile i8 %i.gp, ptr %.1.i, align 1, !tbaa !13
  %.1.i.1 = getelementptr i8, ptr %.pn17.i, i64 -2
  %i.gq = getelementptr inbounds nuw i8, ptr %.11115.i, i64 2
  %i.gr = load volatile i8, ptr %i.go, align 1, !tbaa !13
  store volatile i8 %i.gr, ptr %.1.i.1, align 1, !tbaa !13
  %.1.i.2 = getelementptr i8, ptr %.pn17.i, i64 -3
  %i.gs = getelementptr inbounds nuw i8, ptr %.11115.i, i64 3
  %i.gt = load volatile i8, ptr %i.gq, align 1, !tbaa !13
  store volatile i8 %i.gt, ptr %.1.i.2, align 1, !tbaa !13
  %.1.i.3 = getelementptr i8, ptr %.pn17.i, i64 -4
  %i.gu = getelementptr inbounds nuw i8, ptr %.11115.i, i64 4
  %i.gv = load volatile i8, ptr %i.gs, align 1, !tbaa !13
  store volatile i8 %i.gv, ptr %.1.i.3, align 1, !tbaa !13
  %.1.i.4 = getelementptr i8, ptr %.pn17.i, i64 -5
  %i.gw = getelementptr inbounds nuw i8, ptr %.11115.i, i64 5
  %i.gx = load volatile i8, ptr %i.gu, align 1, !tbaa !13
  store volatile i8 %i.gx, ptr %.1.i.4, align 1, !tbaa !13
  %.1.i.5 = getelementptr i8, ptr %.pn17.i, i64 -6
  %i.gy = getelementptr inbounds nuw i8, ptr %.11115.i, i64 6
  %i.gz = load volatile i8, ptr %i.gw, align 1, !tbaa !13
  store volatile i8 %i.gz, ptr %.1.i.5, align 1, !tbaa !13
  %.1.i.6 = getelementptr i8, ptr %.pn17.i, i64 -7
  %i.ha = getelementptr inbounds nuw i8, ptr %.11115.i, i64 7
  %i.hb = load volatile i8, ptr %i.gy, align 1, !tbaa !13
  store volatile i8 %i.hb, ptr %.1.i.6, align 1, !tbaa !13
  %.1.i.7 = getelementptr i8, ptr %.pn17.i, i64 -8 ; 2 uses
  %i.hc = add nsw i32 %.1916.i, -8                ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.11115.i, i64 8
  %i.he = load volatile i8, ptr %i.ha, align 1, !tbaa !13
  store volatile i8 %i.he, ptr %.1.i.7, align 1, !tbaa !13
  %.not.i85.7 = icmp eq i32 %i.hc, 0
  br i1 %.not.i85.7, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.i84, !llvm.loop !1

_ZL14copywithendianPVcPVKcii.exit:                ; preds = %.lr.ph.i84.prol.loopexit, %.lr.ph.i84, %.lr.ph22.i.prol.loopexit, %.lr.ph22.i, %.preheader.i86, %bb.r
  %i.hf = sext i32 %i.r to i64
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef nonnull %i.g, i64 noundef %i.hf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.aj

bb.s:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  %i.hg = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull %i.h)
  %i.hh = load i64, ptr %i.h, align 8, !tbaa !12  ; 2 uses
  %i.hi = sext i32 %i.r to i64                    ; 3 uses
  %.not56 = icmp ugt i64 %i.hh, %i.hi
  br i1 %.not56, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull @.str.47) #14
  unreachable

bb.u:                                             ; preds = %bb.s
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef %i.hg, i64 noundef %i.hh)
  %i.hj = load i64, ptr %i.h, align 8, !tbaa !12  ; 2 uses
  %i.hk = add i64 %i.hj, 1
  store i64 %i.hk, ptr %i.h, align 8, !tbaa !12
  %i.hl = icmp ult i64 %i.hj, %i.hi
  br i1 %i.hl, label %.lr.ph121, label %._crit_edge122

.lr.ph121:                                        ; preds = %bb.u, %bb.w
  %i.hm = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.hn = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.ho = icmp ult ptr %i.hm, %i.hn
  br i1 %i.ho, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph121
  %i.hp = call noundef ptr @_Z17luaL_prepbuffsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef 1) ; 0 uses
  %.pre143 = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph121
  %i.hq = phi ptr [ %.pre143, %bb.v ], [ %i.hm, %.lr.ph121 ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1
  store ptr %i.hr, ptr %1, align 8, !tbaa !20
  store i8 0, ptr %i.hq, align 1, !tbaa !13
  %i.hs = load i64, ptr %i.h, align 8, !tbaa !12  ; 2 uses
  %i.ht = add i64 %i.hs, 1
  store i64 %i.ht, ptr %i.h, align 8, !tbaa !12
  %i.hu = icmp ult i64 %i.hs, %i.hi
  br i1 %i.hu, label %.lr.ph121, label %._crit_edge122, !llvm.loop !63

._crit_edge122:                                   ; preds = %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  br label %bb.aj

bb.x:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.hv = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull %i.i)
  %i.hw = icmp sgt i32 %i.r, 7
  %.pre142 = load i64, ptr %i.i, align 8, !tbaa !12 ; 6 uses
  br i1 %i.hw, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hx = shl nsw i32 %i.r, 3
  %i.hy = zext nneg i32 %i.hx to i64
  %.highbits = lshr i64 %.pre142, %i.hy
  %i.hz = icmp eq i64 %.highbits, 0
  br i1 %i.hz, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull @.str.48) #14
  unreachable

bb.aa:                                            ; preds = %bb.x, %bb.y
  %i.ia = load i32, ptr %i.l, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.ib = trunc i64 %.pre142 to i8
  %.not.i87 = icmp eq i32 %i.ia, 0                ; 2 uses
  %i.ic = add i32 %i.r, -1                        ; 2 uses
  %i.id = select i1 %.not.i87, i32 %i.ic, i32 0
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds i8, ptr %i.a, i64 %i.ie
  store i8 %i.ib, ptr %i.if, align 1, !tbaa !13
  %i.ig = icmp sgt i32 %i.r, 1
  br i1 %i.ig, label %.lr.ph.i88, label %_ZL7packintP11luaL_Strbufyiii.exit111

.lr.ph.i88:                                       ; preds = %bb.aa
  br i1 %.not.i87, label %.lr.ph.split.us.preheader.i101, label %.lr.ph.split.preheader.i89

.lr.ph.split.preheader.i89:                       ; preds = %.lr.ph.i88
  %wide.trip.count.i90 = zext nneg i32 %i.r to i64
  %i.ih = add nsw i64 %wide.trip.count.i90, -1    ; 2 uses
  %xtraiter = and i64 %i.ih, 3                    ; 3 uses
  %i.ii = add nsw i32 %i.r, -2
  %i.ij = icmp ult i32 %i.ii, 3
  br i1 %i.ij, label %.lr.ph.split.i91.epil.preheader, label %.lr.ph.split.preheader.i89.new

.lr.ph.split.preheader.i89.new:                   ; preds = %.lr.ph.split.preheader.i89
  %unroll_iter = and i64 %i.ih, -4
  br label %.lr.ph.split.i91

.lr.ph.split.us.preheader.i101:                   ; preds = %.lr.ph.i88
  %i.ik = zext nneg i32 %i.ic to i64              ; 5 uses
  %wide.trip.count34.i102 = zext nneg i32 %i.r to i64
  %i.il = add nsw i64 %wide.trip.count34.i102, -1 ; 2 uses
  %xtraiter181 = and i64 %i.il, 3                 ; 3 uses
  %i.im = add nsw i32 %i.r, -2
  %i.in = icmp ult i32 %i.im, 3
  br i1 %i.in, label %.lr.ph.split.us.i103.epil.preheader, label %.lr.ph.split.us.preheader.i101.new

.lr.ph.split.us.preheader.i101.new:               ; preds = %.lr.ph.split.us.preheader.i101
  %unroll_iter185 = and i64 %i.il, -4
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %i.ik
  br label %.lr.ph.split.us.i103

.lr.ph.split.us.i103:                             ; preds = %.lr.ph.split.us.i103, %.lr.ph.split.us.preheader.i101.new
  %indvars.iv31.i104 = phi i64 [ 1, %.lr.ph.split.us.preheader.i101.new ], [ %indvars.iv.next32.i106.3, %.lr.ph.split.us.i103 ] ; 5 uses
  %.02325.us.i105 = phi i64 [ %.pre142, %.lr.ph.split.us.preheader.i101.new ], [ %i.iy, %.lr.ph.split.us.i103 ] ; 4 uses
  %niter186 = phi i64 [ 0, %.lr.ph.split.us.preheader.i101.new ], [ %niter186.next.3, %.lr.ph.split.us.i103 ]
  %i.io = lshr i64 %.02325.us.i105, 8
  %i.ip = trunc i64 %i.io to i8
  %i.iq = sub nuw nsw i64 %i.ik, %indvars.iv31.i104
  %i.ir = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.iq
  store i8 %i.ip, ptr %i.ir, align 1, !tbaa !13
  %indvars.iv.next32.i106.neg = xor i64 %indvars.iv31.i104, -1
  %i.is = lshr i64 %.02325.us.i105, 16
  %i.it = trunc i64 %i.is to i8
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv.next32.i106.neg
  store i8 %i.it, ptr %gep, align 1, !tbaa !13
  %indvars.iv.next32.i106.1 = add nuw nsw i64 %indvars.iv31.i104, 2
  %i.iu = lshr i64 %.02325.us.i105, 24
  %i.iv = trunc i64 %i.iu to i8
  %i.iw = sub nuw nsw i64 %i.ik, %indvars.iv.next32.i106.1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.iw
  store i8 %i.iv, ptr %i.ix, align 1, !tbaa !13
  %indvars.iv.next32.i106.2 = add nuw nsw i64 %indvars.iv31.i104, 3
  %i.iy = lshr i64 %.02325.us.i105, 32            ; 3 uses
  %i.iz = trunc i64 %i.iy to i8
  %i.ja = sub nuw nsw i64 %i.ik, %indvars.iv.next32.i106.2
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ja
  store i8 %i.iz, ptr %i.jb, align 1, !tbaa !13
  %indvars.iv.next32.i106.3 = add nuw nsw i64 %indvars.iv31.i104, 4 ; 2 uses
  %niter186.next.3 = add nuw i64 %niter186, 4     ; 2 uses
  %niter186.ncmp.3 = icmp eq i64 %niter186.next.3, %unroll_iter185
  br i1 %niter186.ncmp.3, label %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit.unr-lcssa, label %.lr.ph.split.us.i103, !llvm.loop !56

.lr.ph.split.i91:                                 ; preds = %.lr.ph.split.i91, %.lr.ph.split.preheader.i89.new
  %indvars.iv.i92 = phi i64 [ 1, %.lr.ph.split.preheader.i89.new ], [ %indvars.iv.next.i94.3, %.lr.ph.split.i91 ] ; 5 uses
  %.02325.i93 = phi i64 [ %.pre142, %.lr.ph.split.preheader.i89.new ], [ %i.jn, %.lr.ph.split.i91 ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.i89.new ], [ %niter.next.3, %.lr.ph.split.i91 ]
  %i.jc = lshr i64 %.02325.i93, 8
  %i.jd = trunc i64 %i.jc to i8
  %i.je = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i92
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !13
  %i.jf = lshr i64 %.02325.i93, 16
  %i.jg = trunc i64 %i.jf to i8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i92
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 1
  store i8 %i.jg, ptr %i.ji, align 1, !tbaa !13
  %i.jj = lshr i64 %.02325.i93, 24
  %i.jk = trunc i64 %i.jj to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i92
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  store i8 %i.jk, ptr %i.jm, align 1, !tbaa !13
  %i.jn = lshr i64 %.02325.i93, 32                ; 3 uses
  %i.jo = trunc i64 %i.jn to i8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i92
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 3
  store i8 %i.jo, ptr %i.jq, align 1, !tbaa !13
  %indvars.iv.next.i94.3 = add nuw nsw i64 %indvars.iv.i92, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit173.unr-lcssa, label %.lr.ph.split.i91, !llvm.loop !56

_ZL7packintP11luaL_Strbufyiii.exit111.loopexit.unr-lcssa: ; preds = %.lr.ph.split.us.i103
  %lcmp.mod183.not = icmp eq i64 %xtraiter181, 0
  br i1 %lcmp.mod183.not, label %_ZL7packintP11luaL_Strbufyiii.exit111, label %.lr.ph.split.us.i103.epil.preheader

.lr.ph.split.us.i103.epil.preheader:              ; preds = %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit.unr-lcssa, %.lr.ph.split.us.preheader.i101
  %indvars.iv31.i104.epil.init = phi i64 [ 1, %.lr.ph.split.us.preheader.i101 ], [ %indvars.iv.next32.i106.3, %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit.unr-lcssa ]
  %.02325.us.i105.epil.init = phi i64 [ %.pre142, %.lr.ph.split.us.preheader.i101 ], [ %i.iy, %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit.unr-lcssa ]
  %lcmp.mod184 = icmp ne i64 %xtraiter181, 0
  call void @llvm.assume(i1 %lcmp.mod184)
  br label %.lr.ph.split.us.i103.epil

.lr.ph.split.us.i103.epil:                        ; preds = %.lr.ph.split.us.i103.epil, %.lr.ph.split.us.i103.epil.preheader
  %indvars.iv31.i104.epil = phi i64 [ %indvars.iv31.i104.epil.init, %.lr.ph.split.us.i103.epil.preheader ], [ %indvars.iv.next32.i106.epil, %.lr.ph.split.us.i103.epil ] ; 2 uses
  %.02325.us.i105.epil = phi i64 [ %.02325.us.i105.epil.init, %.lr.ph.split.us.i103.epil.preheader ], [ %i.jr, %.lr.ph.split.us.i103.epil ]
  %epil.iter182 = phi i64 [ 0, %.lr.ph.split.us.i103.epil.preheader ], [ %epil.iter182.next, %.lr.ph.split.us.i103.epil ]
  %i.jr = lshr i64 %.02325.us.i105.epil, 8        ; 2 uses
  %i.js = trunc i64 %i.jr to i8
  %i.jt = sub nuw nsw i64 %i.ik, %indvars.iv31.i104.epil
  %i.ju = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.jt
  store i8 %i.js, ptr %i.ju, align 1, !tbaa !13
  %indvars.iv.next32.i106.epil = add nuw nsw i64 %indvars.iv31.i104.epil, 1
  %epil.iter182.next = add i64 %epil.iter182, 1   ; 2 uses
  %epil.iter182.cmp.not = icmp eq i64 %epil.iter182.next, %xtraiter181
  br i1 %epil.iter182.cmp.not, label %_ZL7packintP11luaL_Strbufyiii.exit111, label %.lr.ph.split.us.i103.epil, !llvm.loop !64

_ZL7packintP11luaL_Strbufyiii.exit111.loopexit173.unr-lcssa: ; preds = %.lr.ph.split.i91
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZL7packintP11luaL_Strbufyiii.exit111, label %.lr.ph.split.i91.epil.preheader

.lr.ph.split.i91.epil.preheader:                  ; preds = %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit173.unr-lcssa, %.lr.ph.split.preheader.i89
  %indvars.iv.i92.epil.init = phi i64 [ 1, %.lr.ph.split.preheader.i89 ], [ %indvars.iv.next.i94.3, %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit173.unr-lcssa ]
  %.02325.i93.epil.init = phi i64 [ %.pre142, %.lr.ph.split.preheader.i89 ], [ %i.jn, %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit173.unr-lcssa ]
  %lcmp.mod180 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod180)
  br label %.lr.ph.split.i91.epil

.lr.ph.split.i91.epil:                            ; preds = %.lr.ph.split.i91.epil, %.lr.ph.split.i91.epil.preheader
  %indvars.iv.i92.epil = phi i64 [ %indvars.iv.i92.epil.init, %.lr.ph.split.i91.epil.preheader ], [ %indvars.iv.next.i94.epil, %.lr.ph.split.i91.epil ] ; 2 uses
  %.02325.i93.epil = phi i64 [ %.02325.i93.epil.init, %.lr.ph.split.i91.epil.preheader ], [ %i.jv, %.lr.ph.split.i91.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.split.i91.epil.preheader ], [ %epil.iter.next, %.lr.ph.split.i91.epil ]
  %i.jv = lshr i64 %.02325.i93.epil, 8            ; 2 uses
  %i.jw = trunc i64 %i.jv to i8
  %i.jx = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i92.epil
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !13
  %indvars.iv.next.i94.epil = add nuw nsw i64 %indvars.iv.i92.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZL7packintP11luaL_Strbufyiii.exit111, label %.lr.ph.split.i91.epil, !llvm.loop !65

_ZL7packintP11luaL_Strbufyiii.exit111:            ; preds = %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit173.unr-lcssa, %.lr.ph.split.i91.epil, %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit.unr-lcssa, %.lr.ph.split.us.i103.epil, %bb.aa
  %i.jy = sext i32 %i.r to i64
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.jy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.jz = load i64, ptr %i.i, align 8, !tbaa !12
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef %i.hv, i64 noundef %i.jz)
  %i.ka = load i64, ptr %i.i, align 8, !tbaa !12
  %i.kb = add i64 %i.ka, %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  br label %bb.aj

bb.ab:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  %i.kc = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull %i.j) ; 2 uses
  %i.kd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kc) #15 ; 2 uses
  %i.ke = load i64, ptr %i.j, align 8, !tbaa !12
  %i.kf = icmp eq i64 %i.kd, %i.ke
  br i1 %i.kf, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull @.str.49) #14
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef nonnull %i.kc, i64 noundef %i.kd)
  %i.kg = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.kh = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.ki = icmp ult ptr %i.kg, %i.kh
  br i1 %i.ki, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kj = call noundef ptr @_Z17luaL_prepbuffsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef 1) ; 0 uses
  %.pre141 = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.kk = phi ptr [ %.pre141, %bb.ae ], [ %i.kg, %bb.ad ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  store ptr %i.kl, ptr %1, align 8, !tbaa !20
  store i8 0, ptr %i.kk, align 1, !tbaa !13
  %i.km = load i64, ptr %i.j, align 8, !tbaa !12
  %i.kn = add i64 %i.u, 1
  %i.ko = add i64 %i.kn, %i.km
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  br label %bb.aj

bb.ag:                                            ; preds = %._crit_edge
  %i.kp = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.kq = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.kr = icmp ult ptr %i.kp, %i.kq
  br i1 %i.kr, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ks = call noundef ptr @_Z17luaL_prepbuffsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef 1) ; 0 uses
  %.pre140 = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.kt = phi ptr [ %.pre140, %bb.ah ], [ %i.kp, %bb.ag ] ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  store ptr %i.ku, ptr %1, align 8, !tbaa !20
  store i8 0, ptr %i.kt, align 1, !tbaa !13
  br label %bb.aj

default.unreachable152:                           ; preds = %._crit_edge
  unreachable

bb.aj:                                            ; preds = %._crit_edge, %._crit_edge, %bb.ai, %bb.af, %_ZL7packintP11luaL_Strbufyiii.exit111, %._crit_edge122, %_ZL14copywithendianPVcPVKcii.exit, %_ZL7packintP11luaL_Strbufyiii.exit83, %_ZL7packintP11luaL_Strbufyiii.exit
  %.148 = phi i32 [ %i.ae, %bb.af ], [ %i.ae, %_ZL7packintP11luaL_Strbufyiii.exit ], [ %i.ae, %_ZL7packintP11luaL_Strbufyiii.exit83 ], [ %i.ae, %_ZL14copywithendianPVcPVKcii.exit ], [ %i.ae, %._crit_edge122 ], [ %i.ae, %_ZL7packintP11luaL_Strbufyiii.exit111 ], [ %.047124, %bb.ai ], [ %.047124, %._crit_edge ], [ %.047124, %._crit_edge ]
  %.1 = phi i64 [ %i.ko, %bb.af ], [ %i.u, %_ZL7packintP11luaL_Strbufyiii.exit ], [ %i.u, %_ZL7packintP11luaL_Strbufyiii.exit83 ], [ %i.u, %_ZL14copywithendianPVcPVKcii.exit ], [ %i.u, %._crit_edge122 ], [ %i.kb, %_ZL7packintP11luaL_Strbufyiii.exit111 ], [ %i.u, %bb.ai ], [ %i.u, %._crit_edge ], [ %i.u, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.kv = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !13
  %.not = icmp eq i8 %i.kw, 0
  br i1 %.not, label %._crit_edge128, label %bb.b, !llvm.loop !66

._crit_edge128:                                   ; preds = %bb.aj, %bb.a
  call void @_Z15luaL_pushresultP11luaL_Strbuf(ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL12str_packsizeP9lua_State(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.Header, align 8             ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = tail call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef null) ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !36
  store ptr %0, ptr %1, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !40
  %i.g = load i8, ptr %i.d, align 1, !tbaa !13
  %.not14 = icmp eq i8 %i.g, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.015 = phi i32 [ %i.o, %bb.e ], [ 0, %bb.a ]   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.h = sext i32 %.015 to i64
  %i.i = call fastcc noundef i32 @_ZL10getdetailsP6HeadermPPKcPiS4_(ptr noundef %1, i64 noundef %i.h, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %i.j = add nsw i32 %i.i, -6
  %or.cond = icmp ult i32 %i.j, -2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.56) #14
  unreachable

bb.c:                                             ; preds = %.lr.ph
  %i.k = load i32, ptr %i.c, align 4, !tbaa !35
  %i.l = load i32, ptr %i.b, align 4, !tbaa !35
  %i.m = add nsw i32 %i.l, %i.k                   ; 2 uses
  %i.n = sub nsw i32 1073741824, %i.m
  %.not11 = icmp sgt i32 %.015, %i.n
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.57) #14
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = add nsw i32 %i.m, %.015                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.q = load i8, ptr %i.p, align 1, !tbaa !13
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !67

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %bb.e ]
  tail call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %.0.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -2147483647, -2147483648) i32 @_ZL10str_unpackP9lua_State(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.Header, align 8             ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %2 = alloca %union.Ftypes, align 8              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.e = tail call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef null) ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.f = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b) ; 6 uses
  %i.g = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef 1) ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %i.i = icmp slt i32 %i.g, 0
  %i.j = trunc i64 %i.h to i32
  %i.k = add nsw i32 %i.j, 1
  %i.l = select i1 %i.i, i32 %i.k, i32 0
  %.0.i = add nsw i32 %i.l, %i.g
  %i.m = call i32 @llvm.smax.i32(i32 %.0.i, i32 1) ; 2 uses
  %spec.store.select = add nsw i32 %i.m, -1       ; 2 uses
  %i.n = zext nneg i32 %spec.store.select to i64
  %.not = icmp ult i64 %i.h, %i.n
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.58) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  store ptr %0, ptr %1, align 8, !tbaa !38
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 1, ptr %i.o, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.p, align 4, !tbaa !40
  %i.q = load i8, ptr %i.e, align 1, !tbaa !13
  %.not63178 = icmp eq i8 %i.q, 0
  br i1 %.not63178, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.z
  %.058180 = phi i32 [ %i.rs, %bb.z ], [ %spec.store.select, %bb.c ] ; 2 uses
  %.059179 = phi i32 [ %.160, %bb.z ], [ 0, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.r = sext i32 %.058180 to i64                 ; 2 uses
  %i.s = call fastcc noundef i32 @_ZL10getdetailsP6HeadermPPKcPiS4_(ptr noundef %1, i64 noundef %i.r, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.d)
  %i.t = load i32, ptr %i.d, align 4, !tbaa !35   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = load i32, ptr %i.c, align 4, !tbaa !35
  %i.w = freeze i32 %i.v                          ; 102 uses
  %i.x = sext i32 %i.w to i64                     ; 5 uses
  %i.y = add nsw i64 %i.x, %i.u
  %i.z = load i64, ptr %i.b, align 8, !tbaa !12
  %i.aa = sub i64 %i.z, %i.r
  %.not64 = icmp ugt i64 %i.y, %i.aa
  br i1 %.not64, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.59) #14
  unreachable

bb.e:                                             ; preds = %.lr.ph
  %i.ab = add nsw i32 %i.t, %.058180              ; 15 uses
  call void @_Z15luaL_checkstackP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.60)
  %i.ac = add nsw i32 %.059179, 1                 ; 6 uses
  switch i32 %i.s, label %default.unreachable219 [
    i32 0, label %bb.f
    i32 1, label %bb.j
    i32 2, label %bb.m
    i32 3, label %bb.r
    i32 4, label %bb.s
    i32 5, label %bb.w
    i32 7, label %bb.z
    i32 6, label %bb.z
    i32 8, label %bb.z
  ]

bb.f:                                             ; preds = %bb.e
  %i.ad = sext i32 %i.ab to i64
  %i.ae = getelementptr inbounds i8, ptr %i.f, i64 %i.ad ; 18 uses
  %i.af = icmp sgt i32 %i.w, 0
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !39
  %.not41.i = icmp eq i32 %i.ag, 0                ; 2 uses
  %i.ah = call i32 @llvm.umin.i32(i32 %i.w, i32 8) ; 9 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 8 uses
  br i1 %.not41.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.aj = sub nsw i32 %i.w, %i.ah
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = zext i8 %i.am to i64                    ; 2 uses
  %.not327 = icmp eq i32 %i.w, 1
  br i1 %.not327, label %._crit_edge.i, label %.lr.ph.split.us.i.1
end_hunk_0
begin_hunk_1_@_ZL10str_unpackP9lua_State:bb.a
  %i.bs = shl i64 %i.br, 8
  %i.bt = sub i32 %i.w, %indvars.iv.next53.i.4
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.ae, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !13
  %i.bx = zext i8 %i.bw to i64
  %i.by = or disjoint i64 %i.bs, %i.bx            ; 2 uses
  %i.bz = icmp ugt i32 %i.w, 6
  br i1 %i.bz, label %.lr.ph.split.us.i.6, label %._crit_edge.i

.lr.ph.split.us.i.6:                              ; preds = %.lr.ph.split.us.i.5
  %indvars.iv.next53.i.5 = add nsw i32 %i.ah, -6
  %i.ca = shl i64 %i.by, 8
  %i.cb = sub i32 %i.w, %indvars.iv.next53.i.5
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %i.ae, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !13
  %i.cf = zext i8 %i.ce to i64
  %i.cg = or disjoint i64 %i.ca, %i.cf            ; 2 uses
  %.not330 = icmp eq i32 %i.w, 7
  br i1 %.not330, label %._crit_edge.i, label %.lr.ph.split.us.i.7

.lr.ph.split.us.i.7:                              ; preds = %.lr.ph.split.us.i.6
  %indvars.iv.next53.i.6 = add nsw i32 %i.ah, -7
  %i.ch = shl i64 %i.cg, 8
  %i.ci = sub i32 %i.w, %indvars.iv.next53.i.6
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.ae, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !13
  %i.cm = zext i8 %i.cl to i64
  %i.cn = or disjoint i64 %i.ch, %i.cm
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.co = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.cp = getelementptr i8, ptr %i.co, i64 -1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = zext i8 %i.cq to i64                    ; 2 uses
  %.not323 = icmp eq i32 %i.w, 1
  br i1 %.not323, label %._crit_edge.i, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  %i.cs = shl nuw nsw i64 %i.cr, 8
  %i.ct = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.cu = getelementptr i8, ptr %i.ct, i64 -2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !13
  %i.cw = zext i8 %i.cv to i64
  %i.cx = or disjoint i64 %i.cs, %i.cw            ; 2 uses
  %i.cy = icmp ugt i32 %i.w, 2
  br i1 %i.cy, label %.lr.ph.split.i.2, label %._crit_edge.i

.lr.ph.split.i.2:                                 ; preds = %.lr.ph.split.i.1
  %i.cz = shl nuw nsw i64 %i.cx, 8
  %i.da = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.db = getelementptr i8, ptr %i.da, i64 -3
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !13
  %i.dd = zext i8 %i.dc to i64
  %i.de = or disjoint i64 %i.cz, %i.dd            ; 2 uses
  %.not324 = icmp eq i32 %i.w, 3
  br i1 %.not324, label %._crit_edge.i, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %.lr.ph.split.i.2
  %i.df = shl nuw nsw i64 %i.de, 8
  %i.dg = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.dh = getelementptr i8, ptr %i.dg, i64 -4
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !13
  %i.dj = zext i8 %i.di to i64
  %i.dk = or disjoint i64 %i.df, %i.dj            ; 2 uses
  %i.dl = icmp ugt i32 %i.w, 4
  br i1 %i.dl, label %.lr.ph.split.i.4, label %._crit_edge.i

.lr.ph.split.i.4:                                 ; preds = %.lr.ph.split.i.3
  %i.dm = shl i64 %i.dk, 8
  %i.dn = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.do = getelementptr i8, ptr %i.dn, i64 -5
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !13
  %i.dq = zext i8 %i.dp to i64
  %i.dr = or disjoint i64 %i.dm, %i.dq            ; 2 uses
  %.not325 = icmp eq i32 %i.w, 5
  br i1 %.not325, label %._crit_edge.i, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %.lr.ph.split.i.4
  %i.ds = shl i64 %i.dr, 8
  %i.dt = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.du = getelementptr i8, ptr %i.dt, i64 -6
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !13
  %i.dw = zext i8 %i.dv to i64
  %i.dx = or disjoint i64 %i.ds, %i.dw            ; 2 uses
  %i.dy = icmp ugt i32 %i.w, 6
  br i1 %i.dy, label %.lr.ph.split.i.6, label %._crit_edge.i

.lr.ph.split.i.6:                                 ; preds = %.lr.ph.split.i.5
  %i.dz = shl i64 %i.dx, 8
  %i.ea = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.eb = getelementptr i8, ptr %i.ea, i64 -7
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !13
  %i.ed = zext i8 %i.ec to i64
  %i.ee = or disjoint i64 %i.dz, %i.ed            ; 2 uses
  %.not326 = icmp eq i32 %i.w, 7
  br i1 %.not326, label %._crit_edge.i, label %.lr.ph.split.i.7

.lr.ph.split.i.7:                                 ; preds = %.lr.ph.split.i.6
  %i.ef = shl i64 %i.ee, 8
  %i.eg = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.eh = getelementptr i8, ptr %i.eg, i64 -8
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !13
  %i.ej = zext i8 %i.ei to i64
  %i.ek = or disjoint i64 %i.ef, %i.ej
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.split.i, %.lr.ph.split.i.1, %.lr.ph.split.i.2, %.lr.ph.split.i.3, %.lr.ph.split.i.4, %.lr.ph.split.i.5, %.lr.ph.split.i.6, %.lr.ph.split.i.7, %.lr.ph.split.us.i, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.6, %.lr.ph.split.us.i.7
  %.0.lcssa.i = phi i64 [ %i.cn, %.lr.ph.split.us.i.7 ], [ %i.an, %.lr.ph.split.us.i ], [ %i.au, %.lr.ph.split.us.i.1 ], [ %i.bc, %.lr.ph.split.us.i.2 ], [ %i.bj, %.lr.ph.split.us.i.3 ], [ %i.br, %.lr.ph.split.us.i.4 ], [ %i.by, %.lr.ph.split.us.i.5 ], [ %i.cg, %.lr.ph.split.us.i.6 ], [ %i.cr, %.lr.ph.split.i ], [ %i.cx, %.lr.ph.split.i.1 ], [ %i.de, %.lr.ph.split.i.2 ], [ %i.dk, %.lr.ph.split.i.3 ], [ %i.dr, %.lr.ph.split.i.4 ], [ %i.dx, %.lr.ph.split.i.5 ], [ %i.ee, %.lr.ph.split.i.6 ], [ %i.ek, %.lr.ph.split.i.7 ] ; 5 uses
  %i.el = icmp samesign ult i32 %i.w, 8
  br i1 %i.el, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.f
  %.0.lcssa62.i = phi i64 [ %.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.f ]
  %i.em = shl nsw i32 %i.w, 3
  %i.en = add nsw i32 %i.em, -1
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = shl nuw i64 1, %i.eo                    ; 2 uses
  %i.eq = xor i64 %.0.lcssa62.i, %i.ep
  %i.er = sub i64 %i.eq, %i.ep
  br label %_ZL9unpackintP9lua_StatePKciii.exit

bb.g:                                             ; preds = %._crit_edge.i
  %.not.i = icmp eq i32 %i.w, 8
  br i1 %.not.i, label %_ZL9unpackintP9lua_StatePKciii.exit, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %bb.g
  %i.es = icmp sgt i64 %.0.lcssa.i, -1
  %i.et = select i1 %i.es, i32 0, i32 255         ; 2 uses
  %i.eu = zext nneg i32 %i.w to i64               ; 2 uses
  br i1 %.not41.i, label %.lr.ph46.split.us.i, label %.lr.ph46.split.i

.lr.ph46.split.us.i:                              ; preds = %.lr.ph46.i, %bb.h
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %bb.h ], [ 8, %.lr.ph46.i ] ; 2 uses
  %i.ev = trunc nsw i64 %indvars.iv58.i to i32
  %i.ew = xor i32 %i.ev, -1
  %i.ex = add nsw i32 %i.w, %i.ew
  %i.ey = sext i32 %i.ex to i64
  %i.ez = getelementptr inbounds i8, ptr %i.ae, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !13
  %i.fb = zext i8 %i.fa to i32
  %.not39.us.i = icmp eq i32 %i.et, %i.fb
  br i1 %.not39.us.i, label %bb.h, label %.split.us.i

bb.h:                                             ; preds = %.lr.ph46.split.us.i
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next59.i, %i.eu
  br i1 %exitcond217.not, label %_ZL9unpackintP9lua_StatePKciii.exit, label %.lr.ph46.split.us.i, !llvm.loop !68

bb.i:                                             ; preds = %.lr.ph46.split.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next55.i, %i.eu
  br i1 %exitcond216.not, label %_ZL9unpackintP9lua_StatePKciii.exit, label %.lr.ph46.split.i, !llvm.loop !68

.lr.ph46.split.i:                                 ; preds = %.lr.ph46.i, %bb.i
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %bb.i ], [ 8, %.lr.ph46.i ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv54.i
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !13
  %i.fe = zext i8 %i.fd to i32
  %.not39.i = icmp eq i32 %i.et, %i.fe
  br i1 %.not39.i, label %bb.i, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph46.split.i, %.lr.ph46.split.us.i
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.w) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit:              ; preds = %bb.i, %bb.h, %._crit_edge.thread.i, %bb.g
  %.1.i = phi i64 [ %i.er, %._crit_edge.thread.i ], [ %.0.lcssa.i, %bb.h ], [ %.0.lcssa.i, %bb.g ], [ %.0.lcssa.i, %bb.i ]
  %i.ff = sitofp i64 %.1.i to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.ff)
  br label %bb.z

bb.j:                                             ; preds = %bb.e
  %i.fg = sext i32 %i.ab to i64
  %i.fh = getelementptr inbounds i8, ptr %i.f, i64 %i.fg ; 18 uses
  %i.fi = icmp sgt i32 %i.w, 0
  br i1 %i.fi, label %.lr.ph.i69, label %_ZL9unpackintP9lua_StatePKciii.exit94

.lr.ph.i69:                                       ; preds = %bb.j
  %i.fj = load i32, ptr %i.o, align 8, !tbaa !39
  %.not41.i70 = icmp eq i32 %i.fj, 0
  %i.fk = call i32 @llvm.umin.i32(i32 %i.w, i32 8) ; 9 uses
  %i.fl = zext nneg i32 %i.fk to i64              ; 8 uses
  br i1 %.not41.i70, label %.lr.ph.split.us.i90, label %.lr.ph.split.i71

.lr.ph.split.us.i90:                              ; preds = %.lr.ph.i69
  %i.fm = sub nsw i32 %i.w, %i.fk
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds i8, ptr %i.fh, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !13
  %i.fq = zext i8 %i.fp to i64                    ; 2 uses
  %.not319 = icmp eq i32 %i.w, 1
  br i1 %.not319, label %._crit_edge.i75, label %.lr.ph.split.us.i90.1

.lr.ph.split.us.i90.1:                            ; preds = %.lr.ph.split.us.i90
  %indvars.iv.next53.i93 = add nsw i32 %i.fk, -1
  %i.fr = shl nuw nsw i64 %i.fq, 8
  %i.fs = sub i32 %i.w, %indvars.iv.next53.i93
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %i.fh, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !13
  %i.fw = zext i8 %i.fv to i64
  %i.fx = or disjoint i64 %i.fr, %i.fw            ; 2 uses
  %i.fy = icmp ugt i32 %i.w, 2
  br i1 %i.fy, label %.lr.ph.split.us.i90.2, label %._crit_edge.i75

.lr.ph.split.us.i90.2:                            ; preds = %.lr.ph.split.us.i90.1
  %indvars.iv.next53.i93.1 = add nsw i32 %i.fk, -2
  %i.fz = shl nuw nsw i64 %i.fx, 8
  %i.ga = sub i32 %i.w, %indvars.iv.next53.i93.1
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds i8, ptr %i.fh, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !13
  %i.ge = zext i8 %i.gd to i64
  %i.gf = or disjoint i64 %i.fz, %i.ge            ; 2 uses
  %.not320 = icmp eq i32 %i.w, 3
  br i1 %.not320, label %._crit_edge.i75, label %.lr.ph.split.us.i90.3

.lr.ph.split.us.i90.3:                            ; preds = %.lr.ph.split.us.i90.2
  %indvars.iv.next53.i93.2 = add nsw i32 %i.fk, -3
  %i.gg = shl nuw nsw i64 %i.gf, 8
  %i.gh = sub i32 %i.w, %indvars.iv.next53.i93.2
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds i8, ptr %i.fh, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !13
  %i.gl = zext i8 %i.gk to i64
  %i.gm = or disjoint i64 %i.gg, %i.gl            ; 2 uses
  %i.gn = icmp ugt i32 %i.w, 4
  br i1 %i.gn, label %.lr.ph.split.us.i90.4, label %._crit_edge.i75

.lr.ph.split.us.i90.4:                            ; preds = %.lr.ph.split.us.i90.3
  %indvars.iv.next53.i93.3 = add nsw i32 %i.fk, -4
  %i.go = shl i64 %i.gm, 8
  %i.gp = sub i32 %i.w, %indvars.iv.next53.i93.3
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds i8, ptr %i.fh, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !13
  %i.gt = zext i8 %i.gs to i64
  %i.gu = or disjoint i64 %i.go, %i.gt            ; 2 uses
  %.not321 = icmp eq i32 %i.w, 5
  br i1 %.not321, label %._crit_edge.i75, label %.lr.ph.split.us.i90.5

.lr.ph.split.us.i90.5:                            ; preds = %.lr.ph.split.us.i90.4
  %indvars.iv.next53.i93.4 = add nsw i32 %i.fk, -5
  %i.gv = shl i64 %i.gu, 8
  %i.gw = sub i32 %i.w, %indvars.iv.next53.i93.4
  %i.gx = sext i32 %i.gw to i64
  %i.gy = getelementptr inbounds i8, ptr %i.fh, i64 %i.gx
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !13
  %i.ha = zext i8 %i.gz to i64
  %i.hb = or disjoint i64 %i.gv, %i.ha            ; 2 uses
  %i.hc = icmp ugt i32 %i.w, 6
  br i1 %i.hc, label %.lr.ph.split.us.i90.6, label %._crit_edge.i75

.lr.ph.split.us.i90.6:                            ; preds = %.lr.ph.split.us.i90.5
  %indvars.iv.next53.i93.5 = add nsw i32 %i.fk, -6
  %i.hd = shl i64 %i.hb, 8
  %i.he = sub i32 %i.w, %indvars.iv.next53.i93.5
  %i.hf = sext i32 %i.he to i64
  %i.hg = getelementptr inbounds i8, ptr %i.fh, i64 %i.hf
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !13
  %i.hi = zext i8 %i.hh to i64
  %i.hj = or disjoint i64 %i.hd, %i.hi            ; 2 uses
  %.not322 = icmp eq i32 %i.w, 7
  br i1 %.not322, label %._crit_edge.i75, label %.lr.ph.split.us.i90.7

.lr.ph.split.us.i90.7:                            ; preds = %.lr.ph.split.us.i90.6
  %indvars.iv.next53.i93.6 = add nsw i32 %i.fk, -7
  %i.hk = shl i64 %i.hj, 8
  %i.hl = sub i32 %i.w, %indvars.iv.next53.i93.6
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds i8, ptr %i.fh, i64 %i.hm
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !13
  %i.hp = zext i8 %i.ho to i64
  %i.hq = or disjoint i64 %i.hk, %i.hp
  br label %._crit_edge.i75

.lr.ph.split.i71:                                 ; preds = %.lr.ph.i69
  %i.hr = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.hs = getelementptr i8, ptr %i.hr, i64 -1
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !13
  %i.hu = zext i8 %i.ht to i64                    ; 2 uses
  %.not315 = icmp eq i32 %i.w, 1
  br i1 %.not315, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.1

.lr.ph.split.i71.1:                               ; preds = %.lr.ph.split.i71
  %i.hv = shl nuw nsw i64 %i.hu, 8
  %i.hw = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.hx = getelementptr i8, ptr %i.hw, i64 -2
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !13
  %i.hz = zext i8 %i.hy to i64
  %i.ia = or disjoint i64 %i.hv, %i.hz            ; 2 uses
  %i.ib = icmp ugt i32 %i.w, 2
  br i1 %i.ib, label %.lr.ph.split.i71.2, label %._crit_edge.i75.thread

.lr.ph.split.i71.2:                               ; preds = %.lr.ph.split.i71.1
  %i.ic = shl nuw nsw i64 %i.ia, 8
  %i.id = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.ie = getelementptr i8, ptr %i.id, i64 -3
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !13
  %i.ig = zext i8 %i.if to i64
  %i.ih = or disjoint i64 %i.ic, %i.ig            ; 2 uses
  %.not316 = icmp eq i32 %i.w, 3
  br i1 %.not316, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.3

.lr.ph.split.i71.3:                               ; preds = %.lr.ph.split.i71.2
  %i.ii = shl nuw nsw i64 %i.ih, 8
  %i.ij = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.ik = getelementptr i8, ptr %i.ij, i64 -4
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !13
  %i.im = zext i8 %i.il to i64
  %i.in = or disjoint i64 %i.ii, %i.im            ; 2 uses
  %i.io = icmp ugt i32 %i.w, 4
  br i1 %i.io, label %.lr.ph.split.i71.4, label %._crit_edge.i75.thread

.lr.ph.split.i71.4:                               ; preds = %.lr.ph.split.i71.3
  %i.ip = shl i64 %i.in, 8
  %i.iq = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.ir = getelementptr i8, ptr %i.iq, i64 -5
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !13
  %i.it = zext i8 %i.is to i64
  %i.iu = or disjoint i64 %i.ip, %i.it            ; 2 uses
  %.not317 = icmp eq i32 %i.w, 5
  br i1 %.not317, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.5

.lr.ph.split.i71.5:                               ; preds = %.lr.ph.split.i71.4
  %i.iv = shl i64 %i.iu, 8
  %i.iw = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.ix = getelementptr i8, ptr %i.iw, i64 -6
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !13
  %i.iz = zext i8 %i.iy to i64
  %i.ja = or disjoint i64 %i.iv, %i.iz            ; 2 uses
  %i.jb = icmp ugt i32 %i.w, 6
  br i1 %i.jb, label %.lr.ph.split.i71.6, label %._crit_edge.i75.thread

.lr.ph.split.i71.6:                               ; preds = %.lr.ph.split.i71.5
  %i.jc = shl i64 %i.ja, 8
  %i.jd = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.je = getelementptr i8, ptr %i.jd, i64 -7
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !13
  %i.jg = zext i8 %i.jf to i64
  %i.jh = or disjoint i64 %i.jc, %i.jg            ; 2 uses
  %.not318 = icmp eq i32 %i.w, 7
  br i1 %.not318, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.7

.lr.ph.split.i71.7:                               ; preds = %.lr.ph.split.i71.6
  %i.ji = shl i64 %i.jh, 8
  %i.jj = getelementptr i8, ptr %i.fh, i64 %i.fl
  %i.jk = getelementptr i8, ptr %i.jj, i64 -8
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !13
  %i.jm = zext i8 %i.jl to i64
  %i.jn = or disjoint i64 %i.ji, %i.jm
  br label %._crit_edge.i75.thread

._crit_edge.i75:                                  ; preds = %.lr.ph.split.us.i90.7, %.lr.ph.split.us.i90.6, %.lr.ph.split.us.i90.5, %.lr.ph.split.us.i90.4, %.lr.ph.split.us.i90.3, %.lr.ph.split.us.i90.2, %.lr.ph.split.us.i90.1, %.lr.ph.split.us.i90
  %.lcssa289 = phi i64 [ %i.fq, %.lr.ph.split.us.i90 ], [ %i.fx, %.lr.ph.split.us.i90.1 ], [ %i.gf, %.lr.ph.split.us.i90.2 ], [ %i.gm, %.lr.ph.split.us.i90.3 ], [ %i.gu, %.lr.ph.split.us.i90.4 ], [ %i.hb, %.lr.ph.split.us.i90.5 ], [ %i.hj, %.lr.ph.split.us.i90.6 ], [ %i.hq, %.lr.ph.split.us.i90.7 ] ; 2 uses
  %i.jo = icmp samesign ult i32 %i.w, 9
  br i1 %i.jo, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.us.preheader.i85

._crit_edge.i75.thread:                           ; preds = %.lr.ph.split.i71.7, %.lr.ph.split.i71.6, %.lr.ph.split.i71.5, %.lr.ph.split.i71.4, %.lr.ph.split.i71.3, %.lr.ph.split.i71.2, %.lr.ph.split.i71.1, %.lr.ph.split.i71
  %.lcssa288 = phi i64 [ %i.hu, %.lr.ph.split.i71 ], [ %i.ia, %.lr.ph.split.i71.1 ], [ %i.ih, %.lr.ph.split.i71.2 ], [ %i.in, %.lr.ph.split.i71.3 ], [ %i.iu, %.lr.ph.split.i71.4 ], [ %i.ja, %.lr.ph.split.i71.5 ], [ %i.jh, %.lr.ph.split.i71.6 ], [ %i.jn, %.lr.ph.split.i71.7 ] ; 2 uses
  %i.jp = icmp samesign ult i32 %i.w, 9
  br i1 %i.jp, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.i80.preheader

.lr.ph46.split.i80.preheader:                     ; preds = %._crit_edge.i75.thread
  %wide.trip.count211 = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.i80

.lr.ph46.split.us.preheader.i85:                  ; preds = %._crit_edge.i75
  %i.jq = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.us.i86

.lr.ph46.split.us.i86:                            ; preds = %bb.k, %.lr.ph46.split.us.preheader.i85
  %indvars.iv58.i87 = phi i64 [ 8, %.lr.ph46.split.us.preheader.i85 ], [ %indvars.iv.next59.i89, %bb.k ] ; 2 uses
  %i.jr = trunc nsw i64 %indvars.iv58.i87 to i32
  %i.js = xor i32 %i.jr, -1
  %i.jt = add nsw i32 %i.w, %i.js
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds i8, ptr %i.fh, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !13
  %.not39.us.i88 = icmp eq i8 %i.jw, 0
  br i1 %.not39.us.i88, label %bb.k, label %.split.us.i83

bb.k:                                             ; preds = %.lr.ph46.split.us.i86
  %indvars.iv.next59.i89 = add nuw nsw i64 %indvars.iv58.i87, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next59.i89, %i.jq
  br i1 %exitcond213.not, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.us.i86, !llvm.loop !68

bb.l:                                             ; preds = %.lr.ph46.split.i80
  %indvars.iv.next55.i84 = add nuw nsw i64 %indvars.iv54.i81, 1 ; 2 uses
  %exitcond212.not = icmp eq i64 %indvars.iv.next55.i84, %wide.trip.count211
  br i1 %exitcond212.not, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.i80, !llvm.loop !68

.lr.ph46.split.i80:                               ; preds = %.lr.ph46.split.i80.preheader, %bb.l
  %indvars.iv54.i81 = phi i64 [ %indvars.iv.next55.i84, %bb.l ], [ 8, %.lr.ph46.split.i80.preheader ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.fh, i64 %indvars.iv54.i81
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !13
  %.not39.i82 = icmp eq i8 %i.jy, 0
end_hunk_1
begin_hunk_2_@_ZL10str_unpackP9lua_State:bb.a
  %i.kc = load i32, ptr %i.o, align 8, !tbaa !39
  %i.kd = icmp eq i32 %i.kc, 1
  %.not1218.i = icmp eq i32 %i.w, 0               ; 2 uses
  br i1 %i.kd, label %.preheader.i, label %bb.n

.preheader.i:                                     ; preds = %bb.m
  br i1 %.not1218.i, label %_ZL14copywithendianPVcPVKcii.exit.thread, label %.lr.ph22.i.preheader

.lr.ph22.i.preheader:                             ; preds = %.preheader.i
  %xtraiter304 = and i32 %i.w, 7                  ; 2 uses
  %lcmp.mod305.not = icmp eq i32 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol

.lr.ph22.i.prol:                                  ; preds = %.lr.ph22.i.preheader, %.lr.ph22.i.prol
  %.021.i.prol = phi ptr [ %i.kh, %.lr.ph22.i.prol ], [ %2, %.lr.ph22.i.preheader ] ; 2 uses
  %.0820.i.prol = phi i32 [ %i.ke, %.lr.ph22.i.prol ], [ %i.w, %.lr.ph22.i.preheader ]
  %.01019.i.prol = phi ptr [ %i.kf, %.lr.ph22.i.prol ], [ %i.kb, %.lr.ph22.i.preheader ] ; 2 uses
  %prol.iter306 = phi i32 [ %prol.iter306.next, %.lr.ph22.i.prol ], [ 0, %.lr.ph22.i.preheader ]
  %i.ke = add nsw i32 %.0820.i.prol, -1           ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 1 ; 2 uses
  %i.kg = load volatile i8, ptr %.01019.i.prol, align 1, !tbaa !13
  %i.kh = getelementptr inbounds nuw i8, ptr %.021.i.prol, i64 1 ; 2 uses
  store volatile i8 %i.kg, ptr %.021.i.prol, align 1, !tbaa !13
  %prol.iter306.next = add i32 %prol.iter306, 1   ; 2 uses
  %prol.iter306.cmp.not = icmp eq i32 %prol.iter306.next, %xtraiter304
  br i1 %prol.iter306.cmp.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol, !llvm.loop !69

.lr.ph22.i.prol.loopexit:                         ; preds = %.lr.ph22.i.prol, %.lr.ph22.i.preheader
  %.021.i.unr = phi ptr [ %2, %.lr.ph22.i.preheader ], [ %i.kh, %.lr.ph22.i.prol ]
  %.0820.i.unr = phi i32 [ %i.w, %.lr.ph22.i.preheader ], [ %i.ke, %.lr.ph22.i.prol ]
  %.01019.i.unr = phi ptr [ %i.kb, %.lr.ph22.i.preheader ], [ %i.kf, %.lr.ph22.i.prol ]
  %i.ki = icmp ult i32 %i.w, 8
  br i1 %i.ki, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  %.021.i = phi ptr [ %i.lh, %.lr.ph22.i ], [ %.021.i.unr, %.lr.ph22.i.prol.loopexit ] ; 9 uses
  %.0820.i = phi i32 [ %i.le, %.lr.ph22.i ], [ %.0820.i.unr, %.lr.ph22.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.lf, %.lr.ph22.i ], [ %.01019.i.unr, %.lr.ph22.i.prol.loopexit ] ; 9 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.01019.i, i64 1
  %i.kk = load volatile i8, ptr %.01019.i, align 1, !tbaa !13
  %i.kl = getelementptr inbounds nuw i8, ptr %.021.i, i64 1
  store volatile i8 %i.kk, ptr %.021.i, align 1, !tbaa !13
  %i.km = getelementptr inbounds nuw i8, ptr %.01019.i, i64 2
  %i.kn = load volatile i8, ptr %i.kj, align 1, !tbaa !13
  %i.ko = getelementptr inbounds nuw i8, ptr %.021.i, i64 2
  store volatile i8 %i.kn, ptr %i.kl, align 1, !tbaa !13
  %i.kp = getelementptr inbounds nuw i8, ptr %.01019.i, i64 3
  %i.kq = load volatile i8, ptr %i.km, align 1, !tbaa !13
  %i.kr = getelementptr inbounds nuw i8, ptr %.021.i, i64 3
  store volatile i8 %i.kq, ptr %i.ko, align 1, !tbaa !13
  %i.ks = getelementptr inbounds nuw i8, ptr %.01019.i, i64 4
  %i.kt = load volatile i8, ptr %i.kp, align 1, !tbaa !13
  %i.ku = getelementptr inbounds nuw i8, ptr %.021.i, i64 4
  store volatile i8 %i.kt, ptr %i.kr, align 1, !tbaa !13
  %i.kv = getelementptr inbounds nuw i8, ptr %.01019.i, i64 5
  %i.kw = load volatile i8, ptr %i.ks, align 1, !tbaa !13
  %i.kx = getelementptr inbounds nuw i8, ptr %.021.i, i64 5
  store volatile i8 %i.kw, ptr %i.ku, align 1, !tbaa !13
  %i.ky = getelementptr inbounds nuw i8, ptr %.01019.i, i64 6
  %i.kz = load volatile i8, ptr %i.kv, align 1, !tbaa !13
  %i.la = getelementptr inbounds nuw i8, ptr %.021.i, i64 6
  store volatile i8 %i.kz, ptr %i.kx, align 1, !tbaa !13
  %i.lb = getelementptr inbounds nuw i8, ptr %.01019.i, i64 7
  %i.lc = load volatile i8, ptr %i.ky, align 1, !tbaa !13
  %i.ld = getelementptr inbounds nuw i8, ptr %.021.i, i64 7
  store volatile i8 %i.lc, ptr %i.la, align 1, !tbaa !13
  %i.le = add nsw i32 %.0820.i, -8                ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  %i.lg = load volatile i8, ptr %i.lb, align 1, !tbaa !13
  %i.lh = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  store volatile i8 %i.lg, ptr %i.ld, align 1, !tbaa !13
  %.not12.i.7 = icmp eq i32 %i.le, 0
  br i1 %.not12.i.7, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i, !llvm.loop !0

bb.n:                                             ; preds = %bb.m
  br i1 %.not1218.i, label %_ZL14copywithendianPVcPVKcii.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.li = getelementptr i8, ptr %2, i64 %i.x      ; 2 uses
  %xtraiter = and i32 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol

.lr.ph.i95.prol:                                  ; preds = %.lr.ph.preheader.i, %.lr.ph.i95.prol
  %.pn17.i.prol = phi ptr [ %.1.i96.prol, %.lr.ph.i95.prol ], [ %i.li, %.lr.ph.preheader.i ]
  %.1916.i.prol = phi i32 [ %i.lj, %.lr.ph.i95.prol ], [ %i.w, %.lr.ph.preheader.i ]
  %.11115.i.prol = phi ptr [ %i.lk, %.lr.ph.i95.prol ], [ %i.kb, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i95.prol ], [ 0, %.lr.ph.preheader.i ]
  %.1.i96.prol = getelementptr i8, ptr %.pn17.i.prol, i64 -1 ; 3 uses
  %i.lj = add nsw i32 %.1916.i.prol, -1           ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.11115.i.prol, i64 1 ; 2 uses
  %i.ll = load volatile i8, ptr %.11115.i.prol, align 1, !tbaa !13
  store volatile i8 %i.ll, ptr %.1.i96.prol, align 1, !tbaa !13
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol, !llvm.loop !70

.lr.ph.i95.prol.loopexit:                         ; preds = %.lr.ph.i95.prol, %.lr.ph.preheader.i
  %.pn17.i.unr = phi ptr [ %i.li, %.lr.ph.preheader.i ], [ %.1.i96.prol, %.lr.ph.i95.prol ]
  %.1916.i.unr = phi i32 [ %i.w, %.lr.ph.preheader.i ], [ %i.lj, %.lr.ph.i95.prol ]
  %.11115.i.unr = phi ptr [ %i.kb, %.lr.ph.preheader.i ], [ %i.lk, %.lr.ph.i95.prol ]
  %i.lm = icmp ult i32 %i.w, 8
  br i1 %i.lm, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95
  %.pn17.i = phi ptr [ %.1.i96.7, %.lr.ph.i95 ], [ %.pn17.i.unr, %.lr.ph.i95.prol.loopexit ] ; 8 uses
  %.1916.i = phi i32 [ %i.mb, %.lr.ph.i95 ], [ %.1916.i.unr, %.lr.ph.i95.prol.loopexit ]
  %.11115.i = phi ptr [ %i.mc, %.lr.ph.i95 ], [ %.11115.i.unr, %.lr.ph.i95.prol.loopexit ] ; 9 uses
  %.1.i96 = getelementptr i8, ptr %.pn17.i, i64 -1
  %i.ln = getelementptr inbounds nuw i8, ptr %.11115.i, i64 1
  %i.lo = load volatile i8, ptr %.11115.i, align 1, !tbaa !13
  store volatile i8 %i.lo, ptr %.1.i96, align 1, !tbaa !13
  %.1.i96.1 = getelementptr i8, ptr %.pn17.i, i64 -2
  %i.lp = getelementptr inbounds nuw i8, ptr %.11115.i, i64 2
  %i.lq = load volatile i8, ptr %i.ln, align 1, !tbaa !13
  store volatile i8 %i.lq, ptr %.1.i96.1, align 1, !tbaa !13
  %.1.i96.2 = getelementptr i8, ptr %.pn17.i, i64 -3
  %i.lr = getelementptr inbounds nuw i8, ptr %.11115.i, i64 3
  %i.ls = load volatile i8, ptr %i.lp, align 1, !tbaa !13
  store volatile i8 %i.ls, ptr %.1.i96.2, align 1, !tbaa !13
  %.1.i96.3 = getelementptr i8, ptr %.pn17.i, i64 -4
  %i.lt = getelementptr inbounds nuw i8, ptr %.11115.i, i64 4
  %i.lu = load volatile i8, ptr %i.lr, align 1, !tbaa !13
  store volatile i8 %i.lu, ptr %.1.i96.3, align 1, !tbaa !13
  %.1.i96.4 = getelementptr i8, ptr %.pn17.i, i64 -5
  %i.lv = getelementptr inbounds nuw i8, ptr %.11115.i, i64 5
  %i.lw = load volatile i8, ptr %i.lt, align 1, !tbaa !13
  store volatile i8 %i.lw, ptr %.1.i96.4, align 1, !tbaa !13
  %.1.i96.5 = getelementptr i8, ptr %.pn17.i, i64 -6
  %i.lx = getelementptr inbounds nuw i8, ptr %.11115.i, i64 6
  %i.ly = load volatile i8, ptr %i.lv, align 1, !tbaa !13
  store volatile i8 %i.ly, ptr %.1.i96.5, align 1, !tbaa !13
  %.1.i96.6 = getelementptr i8, ptr %.pn17.i, i64 -7
  %i.lz = getelementptr inbounds nuw i8, ptr %.11115.i, i64 7
  %i.ma = load volatile i8, ptr %i.lx, align 1, !tbaa !13
  store volatile i8 %i.ma, ptr %.1.i96.6, align 1, !tbaa !13
  %.1.i96.7 = getelementptr i8, ptr %.pn17.i, i64 -8 ; 2 uses
  %i.mb = add nsw i32 %.1916.i, -8                ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.11115.i, i64 8
  %i.md = load volatile i8, ptr %i.lz, align 1, !tbaa !13
  store volatile i8 %i.md, ptr %.1.i96.7, align 1, !tbaa !13
  %.not.i97.7 = icmp eq i32 %i.mb, 0
  br i1 %.not.i97.7, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.i95, !llvm.loop !1

_ZL14copywithendianPVcPVKcii.exit:                ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95, %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  switch i32 %i.w, label %_ZL14copywithendianPVcPVKcii.exit.thread [
    i32 4, label %bb.o
    i32 8, label %bb.p
  ]

bb.o:                                             ; preds = %_ZL14copywithendianPVcPVKcii.exit
  %i.me = load volatile float, ptr %2, align 8, !tbaa !13
  %i.mf = fpext float %i.me to double
  br label %bb.q

bb.p:                                             ; preds = %_ZL14copywithendianPVcPVKcii.exit
  %i.mg = load volatile double, ptr %2, align 8, !tbaa !13
  br label %bb.q

_ZL14copywithendianPVcPVKcii.exit.thread:         ; preds = %bb.n, %.preheader.i, %_ZL14copywithendianPVcPVKcii.exit
  %i.mh = load volatile double, ptr %2, align 8, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZL14copywithendianPVcPVKcii.exit.thread, %bb.o
  %.0 = phi double [ %i.mf, %bb.o ], [ %i.mg, %bb.p ], [ %i.mh, %_ZL14copywithendianPVcPVKcii.exit.thread ]
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.z

bb.r:                                             ; preds = %bb.e
  %i.mi = sext i32 %i.ab to i64
  %i.mj = getelementptr inbounds i8, ptr %i.f, i64 %i.mi
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef %i.mj, i64 noundef %i.x)
  br label %bb.z

bb.s:                                             ; preds = %bb.e
  %i.mk = sext i32 %i.ab to i64                   ; 2 uses
  %i.ml = getelementptr inbounds i8, ptr %i.f, i64 %i.mk ; 19 uses
  %i.mm = icmp sgt i32 %i.w, 0
  br i1 %i.mm, label %.lr.ph.i101, label %_ZL9unpackintP9lua_StatePKciii.exit126.thread

.lr.ph.i101:                                      ; preds = %bb.s
  %i.mn = load i32, ptr %i.o, align 8, !tbaa !39
  %.not41.i102 = icmp eq i32 %i.mn, 0
  %i.mo = call i32 @llvm.umin.i32(i32 %i.w, i32 8) ; 9 uses
  %i.mp = zext nneg i32 %i.mo to i64              ; 8 uses
  br i1 %.not41.i102, label %.lr.ph.split.us.i122, label %.lr.ph.split.i103

.lr.ph.split.us.i122:                             ; preds = %.lr.ph.i101
  %i.mq = sub nsw i32 %i.w, %i.mo
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds i8, ptr %i.ml, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !13
  %i.mu = zext i8 %i.mt to i64                    ; 2 uses
  %.not311 = icmp eq i32 %i.w, 1
  br i1 %.not311, label %._crit_edge.i107, label %.lr.ph.split.us.i122.1

.lr.ph.split.us.i122.1:                           ; preds = %.lr.ph.split.us.i122
  %indvars.iv.next53.i125 = add nsw i32 %i.mo, -1
  %i.mv = shl nuw nsw i64 %i.mu, 8
  %i.mw = sub i32 %i.w, %indvars.iv.next53.i125
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds i8, ptr %i.ml, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !13
  %i.na = zext i8 %i.mz to i64
  %i.nb = or disjoint i64 %i.mv, %i.na            ; 2 uses
  %i.nc = icmp ugt i32 %i.w, 2
  br i1 %i.nc, label %.lr.ph.split.us.i122.2, label %._crit_edge.i107

.lr.ph.split.us.i122.2:                           ; preds = %.lr.ph.split.us.i122.1
  %indvars.iv.next53.i125.1 = add nsw i32 %i.mo, -2
  %i.nd = shl nuw nsw i64 %i.nb, 8
  %i.ne = sub i32 %i.w, %indvars.iv.next53.i125.1
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds i8, ptr %i.ml, i64 %i.nf
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !13
  %i.ni = zext i8 %i.nh to i64
  %i.nj = or disjoint i64 %i.nd, %i.ni            ; 2 uses
  %.not312 = icmp eq i32 %i.w, 3
  br i1 %.not312, label %._crit_edge.i107, label %.lr.ph.split.us.i122.3

.lr.ph.split.us.i122.3:                           ; preds = %.lr.ph.split.us.i122.2
  %indvars.iv.next53.i125.2 = add nsw i32 %i.mo, -3
  %i.nk = shl nuw nsw i64 %i.nj, 8
  %i.nl = sub i32 %i.w, %indvars.iv.next53.i125.2
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds i8, ptr %i.ml, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !13
  %i.np = zext i8 %i.no to i64
  %i.nq = or disjoint i64 %i.nk, %i.np            ; 2 uses
  %i.nr = icmp ugt i32 %i.w, 4
  br i1 %i.nr, label %.lr.ph.split.us.i122.4, label %._crit_edge.i107

.lr.ph.split.us.i122.4:                           ; preds = %.lr.ph.split.us.i122.3
  %indvars.iv.next53.i125.3 = add nsw i32 %i.mo, -4
  %i.ns = shl i64 %i.nq, 8
  %i.nt = sub i32 %i.w, %indvars.iv.next53.i125.3
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds i8, ptr %i.ml, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !13
  %i.nx = zext i8 %i.nw to i64
  %i.ny = or disjoint i64 %i.ns, %i.nx            ; 2 uses
  %.not313 = icmp eq i32 %i.w, 5
  br i1 %.not313, label %._crit_edge.i107, label %.lr.ph.split.us.i122.5

.lr.ph.split.us.i122.5:                           ; preds = %.lr.ph.split.us.i122.4
  %indvars.iv.next53.i125.4 = add nsw i32 %i.mo, -5
  %i.nz = shl i64 %i.ny, 8
  %i.oa = sub i32 %i.w, %indvars.iv.next53.i125.4
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds i8, ptr %i.ml, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !13
  %i.oe = zext i8 %i.od to i64
  %i.of = or disjoint i64 %i.nz, %i.oe            ; 2 uses
  %i.og = icmp ugt i32 %i.w, 6
  br i1 %i.og, label %.lr.ph.split.us.i122.6, label %._crit_edge.i107

.lr.ph.split.us.i122.6:                           ; preds = %.lr.ph.split.us.i122.5
  %indvars.iv.next53.i125.5 = add nsw i32 %i.mo, -6
  %i.oh = shl i64 %i.of, 8
  %i.oi = sub i32 %i.w, %indvars.iv.next53.i125.5
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds i8, ptr %i.ml, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !13
  %i.om = zext i8 %i.ol to i64
  %i.on = or disjoint i64 %i.oh, %i.om            ; 2 uses
  %.not314 = icmp eq i32 %i.w, 7
  br i1 %.not314, label %._crit_edge.i107, label %.lr.ph.split.us.i122.7

.lr.ph.split.us.i122.7:                           ; preds = %.lr.ph.split.us.i122.6
  %indvars.iv.next53.i125.6 = add nsw i32 %i.mo, -7
  %i.oo = shl i64 %i.on, 8
  %i.op = sub i32 %i.w, %indvars.iv.next53.i125.6
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds i8, ptr %i.ml, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !13
  %i.ot = zext i8 %i.os to i64
  %i.ou = or disjoint i64 %i.oo, %i.ot
  br label %._crit_edge.i107

.lr.ph.split.i103:                                ; preds = %.lr.ph.i101
  %i.ov = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.ow = getelementptr i8, ptr %i.ov, i64 -1
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !13
  %i.oy = zext i8 %i.ox to i64                    ; 2 uses
  %.not307 = icmp eq i32 %i.w, 1
  br i1 %.not307, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.1

.lr.ph.split.i103.1:                              ; preds = %.lr.ph.split.i103
  %i.oz = shl nuw nsw i64 %i.oy, 8
  %i.pa = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.pb = getelementptr i8, ptr %i.pa, i64 -2
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !13
  %i.pd = zext i8 %i.pc to i64
  %i.pe = or disjoint i64 %i.oz, %i.pd            ; 2 uses
  %i.pf = icmp ugt i32 %i.w, 2
  br i1 %i.pf, label %.lr.ph.split.i103.2, label %._crit_edge.i107.thread

.lr.ph.split.i103.2:                              ; preds = %.lr.ph.split.i103.1
  %i.pg = shl nuw nsw i64 %i.pe, 8
  %i.ph = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.pi = getelementptr i8, ptr %i.ph, i64 -3
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !13
  %i.pk = zext i8 %i.pj to i64
  %i.pl = or disjoint i64 %i.pg, %i.pk            ; 2 uses
  %.not308 = icmp eq i32 %i.w, 3
  br i1 %.not308, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.3

.lr.ph.split.i103.3:                              ; preds = %.lr.ph.split.i103.2
  %i.pm = shl nuw nsw i64 %i.pl, 8
  %i.pn = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.po = getelementptr i8, ptr %i.pn, i64 -4
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !13
  %i.pq = zext i8 %i.pp to i64
  %i.pr = or disjoint i64 %i.pm, %i.pq            ; 2 uses
  %i.ps = icmp ugt i32 %i.w, 4
  br i1 %i.ps, label %.lr.ph.split.i103.4, label %._crit_edge.i107.thread

.lr.ph.split.i103.4:                              ; preds = %.lr.ph.split.i103.3
  %i.pt = shl i64 %i.pr, 8
  %i.pu = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.pv = getelementptr i8, ptr %i.pu, i64 -5
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !13
  %i.px = zext i8 %i.pw to i64
  %i.py = or disjoint i64 %i.pt, %i.px            ; 2 uses
  %.not309 = icmp eq i32 %i.w, 5
  br i1 %.not309, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.5

.lr.ph.split.i103.5:                              ; preds = %.lr.ph.split.i103.4
  %i.pz = shl i64 %i.py, 8
  %i.qa = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.qb = getelementptr i8, ptr %i.qa, i64 -6
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !13
  %i.qd = zext i8 %i.qc to i64
  %i.qe = or disjoint i64 %i.pz, %i.qd            ; 2 uses
  %i.qf = icmp ugt i32 %i.w, 6
  br i1 %i.qf, label %.lr.ph.split.i103.6, label %._crit_edge.i107.thread

.lr.ph.split.i103.6:                              ; preds = %.lr.ph.split.i103.5
  %i.qg = shl i64 %i.qe, 8
  %i.qh = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.qi = getelementptr i8, ptr %i.qh, i64 -7
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !13
  %i.qk = zext i8 %i.qj to i64
  %i.ql = or disjoint i64 %i.qg, %i.qk            ; 2 uses
  %.not310 = icmp eq i32 %i.w, 7
  br i1 %.not310, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.7

.lr.ph.split.i103.7:                              ; preds = %.lr.ph.split.i103.6
  %i.qm = shl i64 %i.ql, 8
  %i.qn = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.qo = getelementptr i8, ptr %i.qn, i64 -8
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !13
  %i.qq = zext i8 %i.qp to i64
  %i.qr = or disjoint i64 %i.qm, %i.qq
  br label %._crit_edge.i107.thread

._crit_edge.i107:                                 ; preds = %.lr.ph.split.us.i122.7, %.lr.ph.split.us.i122.6, %.lr.ph.split.us.i122.5, %.lr.ph.split.us.i122.4, %.lr.ph.split.us.i122.3, %.lr.ph.split.us.i122.2, %.lr.ph.split.us.i122.1, %.lr.ph.split.us.i122
  %.lcssa287 = phi i64 [ %i.mu, %.lr.ph.split.us.i122 ], [ %i.nb, %.lr.ph.split.us.i122.1 ], [ %i.nj, %.lr.ph.split.us.i122.2 ], [ %i.nq, %.lr.ph.split.us.i122.3 ], [ %i.ny, %.lr.ph.split.us.i122.4 ], [ %i.of, %.lr.ph.split.us.i122.5 ], [ %i.on, %.lr.ph.split.us.i122.6 ], [ %i.ou, %.lr.ph.split.us.i122.7 ] ; 2 uses
  %i.qs = icmp samesign ult i32 %i.w, 9
  br i1 %i.qs, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.us.preheader.i117

._crit_edge.i107.thread:                          ; preds = %.lr.ph.split.i103.7, %.lr.ph.split.i103.6, %.lr.ph.split.i103.5, %.lr.ph.split.i103.4, %.lr.ph.split.i103.3, %.lr.ph.split.i103.2, %.lr.ph.split.i103.1, %.lr.ph.split.i103
  %.lcssa = phi i64 [ %i.oy, %.lr.ph.split.i103 ], [ %i.pe, %.lr.ph.split.i103.1 ], [ %i.pl, %.lr.ph.split.i103.2 ], [ %i.pr, %.lr.ph.split.i103.3 ], [ %i.py, %.lr.ph.split.i103.4 ], [ %i.qe, %.lr.ph.split.i103.5 ], [ %i.ql, %.lr.ph.split.i103.6 ], [ %i.qr, %.lr.ph.split.i103.7 ] ; 2 uses
  %i.qt = icmp samesign ult i32 %i.w, 9
  br i1 %i.qt, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.i112.preheader

.lr.ph46.split.i112.preheader:                    ; preds = %._crit_edge.i107.thread
  %wide.trip.count = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.i112

.lr.ph46.split.us.preheader.i117:                 ; preds = %._crit_edge.i107
  %i.qu = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.us.i118

.lr.ph46.split.us.i118:                           ; preds = %bb.t, %.lr.ph46.split.us.preheader.i117
  %indvars.iv58.i119 = phi i64 [ 8, %.lr.ph46.split.us.preheader.i117 ], [ %indvars.iv.next59.i121, %bb.t ] ; 2 uses
  %i.qv = trunc nsw i64 %indvars.iv58.i119 to i32
  %i.qw = xor i32 %i.qv, -1
  %i.qx = add nsw i32 %i.w, %i.qw
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds i8, ptr %i.ml, i64 %i.qy
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !13
  %.not39.us.i120 = icmp eq i8 %i.ra, 0
  br i1 %.not39.us.i120, label %bb.t, label %.split.us.i115

bb.t:                                             ; preds = %.lr.ph46.split.us.i118
  %indvars.iv.next59.i121 = add nuw nsw i64 %indvars.iv58.i119, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next59.i121, %i.qu
  br i1 %exitcond209.not, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.us.i118, !llvm.loop !68

bb.u:                                             ; preds = %.lr.ph46.split.i112
  %indvars.iv.next55.i116 = add nuw nsw i64 %indvars.iv54.i113, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next55.i116, %wide.trip.count
  br i1 %exitcond.not, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.i112, !llvm.loop !68

.lr.ph46.split.i112:                              ; preds = %.lr.ph46.split.i112.preheader, %bb.u
  %indvars.iv54.i113 = phi i64 [ %indvars.iv.next55.i116, %bb.u ], [ 8, %.lr.ph46.split.i112.preheader ] ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ml, i64 %indvars.iv54.i113
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !13
  %.not39.i114 = icmp eq i8 %i.rc, 0
end_hunk_2
