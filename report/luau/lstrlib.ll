Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lstrlib?download=true
inline.NumInlined: 78
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL8str_packP9lua_State:bb.a
_ZL7packintP11luaL_Strbufyiii.exit111:            ; preds = %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit173.unr-lcssa, %.lr.ph.split.i91.epil, %_ZL7packintP11luaL_Strbufyiii.exit111.loopexit.unr-lcssa, %.lr.ph.split.us.i103.epil, %bb.aa
  %i.kc = sext i32 %i.r to i64
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef nonnull %i.a, i64 noundef %i.kc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.kd = load i64, ptr %i.i, align 8, !tbaa !12
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef %i.hz, i64 noundef %i.kd)
  %i.ke = load i64, ptr %i.i, align 8, !tbaa !12
  %i.kf = add i64 %i.ke, %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  br label %bb.aj

bb.ab:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  %i.kg = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull %i.j) ; 2 uses
  %i.kh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kg) #15 ; 2 uses
  %i.ki = load i64, ptr %i.j, align 8, !tbaa !12
  %i.kj = icmp eq i64 %i.kh, %i.ki
  br i1 %i.kj, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull @.str.49) #14
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef nonnull %i.kg, i64 noundef %i.kh)
  %i.kk = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.kl = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.km = icmp ult ptr %i.kk, %i.kl
  br i1 %i.km, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kn = call noundef ptr @_Z17luaL_prepbuffsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef 1) ; 0 uses
  %.pre141 = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ko = phi ptr [ %.pre141, %bb.ae ], [ %i.kk, %bb.ad ] ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  store ptr %i.kp, ptr %1, align 8, !tbaa !20
  store i8 0, ptr %i.ko, align 1, !tbaa !13
  %i.kq = load i64, ptr %i.j, align 8, !tbaa !12
  %i.kr = add i64 %i.u, 1
  %i.ks = add i64 %i.kr, %i.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  br label %bb.aj

bb.ag:                                            ; preds = %._crit_edge
  %i.kt = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.ku = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.kv = icmp ult ptr %i.kt, %i.ku
  br i1 %i.kv, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kw = call noundef ptr @_Z17luaL_prepbuffsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef 1) ; 0 uses
  %.pre140 = load ptr, ptr %1, align 8, !tbaa !20
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.kx = phi ptr [ %.pre140, %bb.ah ], [ %i.kt, %bb.ag ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 1
  store ptr %i.ky, ptr %1, align 8, !tbaa !20
  store i8 0, ptr %i.kx, align 1, !tbaa !13
  br label %bb.aj

default.unreachable152:                           ; preds = %._crit_edge
  unreachable

bb.aj:                                            ; preds = %._crit_edge, %._crit_edge, %bb.ai, %bb.af, %_ZL7packintP11luaL_Strbufyiii.exit111, %._crit_edge122, %_ZL14copywithendianPVcPVKcii.exit, %_ZL7packintP11luaL_Strbufyiii.exit83, %_ZL7packintP11luaL_Strbufyiii.exit
  %.148 = phi i32 [ %i.ae, %bb.af ], [ %i.ae, %_ZL7packintP11luaL_Strbufyiii.exit ], [ %i.ae, %_ZL7packintP11luaL_Strbufyiii.exit83 ], [ %i.ae, %_ZL14copywithendianPVcPVKcii.exit ], [ %i.ae, %._crit_edge122 ], [ %i.ae, %_ZL7packintP11luaL_Strbufyiii.exit111 ], [ %.047124, %bb.ai ], [ %.047124, %._crit_edge ], [ %.047124, %._crit_edge ]
  %.1 = phi i64 [ %i.ks, %bb.af ], [ %i.u, %_ZL7packintP11luaL_Strbufyiii.exit ], [ %i.u, %_ZL7packintP11luaL_Strbufyiii.exit83 ], [ %i.u, %_ZL14copywithendianPVcPVKcii.exit ], [ %i.u, %._crit_edge122 ], [ %i.kf, %_ZL7packintP11luaL_Strbufyiii.exit111 ], [ %i.u, %bb.ai ], [ %i.u, %._crit_edge ], [ %i.u, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.kz = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !13
  %.not = icmp eq i8 %i.la, 0
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
  %.058180 = phi i32 [ %i.pp, %bb.z ], [ %spec.store.select, %bb.c ] ; 2 uses
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
  %3 = call i32 @llvm.umin.i32(i32 %i.w, i32 8)   ; 9 uses
  %4 = zext nneg i32 %3 to i64                    ; 8 uses
  br i1 %.not41.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %5 = sub nsw i32 %i.w, %3
  %6 = sext i32 %5 to i64
  %i.ah = getelementptr inbounds i8, ptr %i.ae, i64 %6
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  %.not327 = icmp eq i32 %i.w, 1
  br i1 %.not327, label %._crit_edge.i, label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %.lr.ph.split.us.i
  %indvars.iv.next53.i = add nsw i32 %3, -1
  %i.ak = shl nuw nsw i64 %i.aj, 8
  %7 = sub i32 %i.w, %indvars.iv.next53.i
  %8 = sext i32 %7 to i64
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 %8
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = zext i8 %i.am to i64
  %i.ao = or disjoint i64 %i.ak, %i.an            ; 2 uses
  %i.ap = icmp ugt i32 %i.w, 2
  br i1 %i.ap, label %.lr.ph.split.us.i.2, label %._crit_edge.i

.lr.ph.split.us.i.2:                              ; preds = %.lr.ph.split.us.i.1
  %indvars.iv.next53.i.1 = add nsw i32 %3, -2
  %i.aq = shl nuw nsw i64 %i.ao, 8
  %9 = sub i32 %i.w, %indvars.iv.next53.i.1
  %10 = sext i32 %9 to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ae, i64 %10
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = zext i8 %i.as to i64
  %i.au = or disjoint i64 %i.aq, %i.at            ; 2 uses
  %.not328 = icmp eq i32 %i.w, 3
  br i1 %.not328, label %._crit_edge.i, label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %.lr.ph.split.us.i.2
  %indvars.iv.next53.i.2 = add nsw i32 %3, -3
  %i.av = shl nuw nsw i64 %i.au, 8
  %11 = sub i32 %i.w, %indvars.iv.next53.i.2
  %12 = sext i32 %11 to i64
  %i.aw = getelementptr inbounds i8, ptr %i.ae, i64 %12
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = zext i8 %i.ax to i64
  %i.az = or disjoint i64 %i.av, %i.ay            ; 2 uses
  %i.ba = icmp ugt i32 %i.w, 4
  br i1 %i.ba, label %.lr.ph.split.us.i.4, label %._crit_edge.i

.lr.ph.split.us.i.4:                              ; preds = %.lr.ph.split.us.i.3
  %indvars.iv.next53.i.3 = add nsw i32 %3, -4
  %i.bb = shl i64 %i.az, 8
  %13 = sub i32 %i.w, %indvars.iv.next53.i.3
  %14 = sext i32 %13 to i64
  %i.bc = getelementptr inbounds i8, ptr %i.ae, i64 %14
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  %i.be = zext i8 %i.bd to i64
  %i.bf = or disjoint i64 %i.bb, %i.be            ; 2 uses
  %.not329 = icmp eq i32 %i.w, 5
  br i1 %.not329, label %._crit_edge.i, label %.lr.ph.split.us.i.5

.lr.ph.split.us.i.5:                              ; preds = %.lr.ph.split.us.i.4
  %indvars.iv.next53.i.4 = add nsw i32 %3, -5
  %i.bg = shl i64 %i.bf, 8
  %15 = sub i32 %i.w, %indvars.iv.next53.i.4
  %16 = sext i32 %15 to i64
  %i.bh = getelementptr inbounds i8, ptr %i.ae, i64 %16
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !13
  %i.bj = zext i8 %i.bi to i64
  %i.bk = or disjoint i64 %i.bg, %i.bj            ; 2 uses
  %i.bl = icmp ugt i32 %i.w, 6
  br i1 %i.bl, label %.lr.ph.split.us.i.6, label %._crit_edge.i

.lr.ph.split.us.i.6:                              ; preds = %.lr.ph.split.us.i.5
  %indvars.iv.next53.i.5 = add nsw i32 %3, -6
  %i.bm = shl i64 %i.bk, 8
  %17 = sub i32 %i.w, %indvars.iv.next53.i.5
  %18 = sext i32 %17 to i64
  %i.bn = getelementptr inbounds i8, ptr %i.ae, i64 %18
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !13
  %i.bp = zext i8 %i.bo to i64
  %i.bq = or disjoint i64 %i.bm, %i.bp            ; 2 uses
  %.not330 = icmp eq i32 %i.w, 7
  br i1 %.not330, label %._crit_edge.i, label %.lr.ph.split.us.i.7

.lr.ph.split.us.i.7:                              ; preds = %.lr.ph.split.us.i.6
  %indvars.iv.next53.i.6 = add nsw i32 %3, -7
  %i.br = shl i64 %i.bq, 8
  %19 = sub i32 %i.w, %indvars.iv.next53.i.6
  %20 = sext i32 %19 to i64
  %i.bs = getelementptr inbounds i8, ptr %i.ae, i64 %20
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %i.bu = zext i8 %i.bt to i64
  %i.bv = or disjoint i64 %i.br, %i.bu
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bw = getelementptr i8, ptr %i.ae, i64 %4
  %i.bx = getelementptr i8, ptr %i.bw, i64 -1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !13
  %i.bz = zext i8 %i.by to i64                    ; 2 uses
  %.not323 = icmp eq i32 %i.w, 1
  br i1 %.not323, label %._crit_edge.i, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  %i.ca = shl nuw nsw i64 %i.bz, 8
  %i.cb = getelementptr i8, ptr %i.ae, i64 %4
  %i.cc = getelementptr i8, ptr %i.cb, i64 -2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !13
  %i.ce = zext i8 %i.cd to i64
  %i.cf = or disjoint i64 %i.ca, %i.ce            ; 2 uses
  %i.cg = icmp ugt i32 %i.w, 2
  br i1 %i.cg, label %.lr.ph.split.i.2, label %._crit_edge.i

.lr.ph.split.i.2:                                 ; preds = %.lr.ph.split.i.1
  %i.ch = shl nuw nsw i64 %i.cf, 8
  %i.ci = getelementptr i8, ptr %i.ae, i64 %4
  %i.cj = getelementptr i8, ptr %i.ci, i64 -3
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %i.cl = zext i8 %i.ck to i64
  %i.cm = or disjoint i64 %i.ch, %i.cl            ; 2 uses
  %.not324 = icmp eq i32 %i.w, 3
  br i1 %.not324, label %._crit_edge.i, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %.lr.ph.split.i.2
  %i.cn = shl nuw nsw i64 %i.cm, 8
  %i.co = getelementptr i8, ptr %i.ae, i64 %4
  %i.cp = getelementptr i8, ptr %i.co, i64 -4
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !13
  %i.cr = zext i8 %i.cq to i64
  %i.cs = or disjoint i64 %i.cn, %i.cr            ; 2 uses
  %i.ct = icmp ugt i32 %i.w, 4
  br i1 %i.ct, label %.lr.ph.split.i.4, label %._crit_edge.i

.lr.ph.split.i.4:                                 ; preds = %.lr.ph.split.i.3
  %i.cu = shl i64 %i.cs, 8
  %i.cv = getelementptr i8, ptr %i.ae, i64 %4
  %i.cw = getelementptr i8, ptr %i.cv, i64 -5
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.cy = zext i8 %i.cx to i64
  %i.cz = or disjoint i64 %i.cu, %i.cy            ; 2 uses
  %.not325 = icmp eq i32 %i.w, 5
  br i1 %.not325, label %._crit_edge.i, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %.lr.ph.split.i.4
  %i.da = shl i64 %i.cz, 8
  %i.db = getelementptr i8, ptr %i.ae, i64 %4
  %i.dc = getelementptr i8, ptr %i.db, i64 -6
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.de = zext i8 %i.dd to i64
  %i.df = or disjoint i64 %i.da, %i.de            ; 2 uses
  %i.dg = icmp ugt i32 %i.w, 6
  br i1 %i.dg, label %.lr.ph.split.i.6, label %._crit_edge.i

.lr.ph.split.i.6:                                 ; preds = %.lr.ph.split.i.5
  %i.dh = shl i64 %i.df, 8
  %i.di = getelementptr i8, ptr %i.ae, i64 %4
  %i.dj = getelementptr i8, ptr %i.di, i64 -7
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !13
  %i.dl = zext i8 %i.dk to i64
  %i.dm = or disjoint i64 %i.dh, %i.dl            ; 2 uses
  %.not326 = icmp eq i32 %i.w, 7
  br i1 %.not326, label %._crit_edge.i, label %.lr.ph.split.i.7

.lr.ph.split.i.7:                                 ; preds = %.lr.ph.split.i.6
  %i.dn = shl i64 %i.dm, 8
  %i.do = getelementptr i8, ptr %i.ae, i64 %4
  %i.dp = getelementptr i8, ptr %i.do, i64 -8
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !13
  %i.dr = zext i8 %i.dq to i64
  %i.ds = or disjoint i64 %i.dn, %i.dr
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.split.i, %.lr.ph.split.i.1, %.lr.ph.split.i.2, %.lr.ph.split.i.3, %.lr.ph.split.i.4, %.lr.ph.split.i.5, %.lr.ph.split.i.6, %.lr.ph.split.i.7, %.lr.ph.split.us.i, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.6, %.lr.ph.split.us.i.7
  %.0.lcssa.i = phi i64 [ %i.bv, %.lr.ph.split.us.i.7 ], [ %i.aj, %.lr.ph.split.us.i ], [ %i.ao, %.lr.ph.split.us.i.1 ], [ %i.au, %.lr.ph.split.us.i.2 ], [ %i.az, %.lr.ph.split.us.i.3 ], [ %i.bf, %.lr.ph.split.us.i.4 ], [ %i.bk, %.lr.ph.split.us.i.5 ], [ %i.bq, %.lr.ph.split.us.i.6 ], [ %i.bz, %.lr.ph.split.i ], [ %i.cf, %.lr.ph.split.i.1 ], [ %i.cm, %.lr.ph.split.i.2 ], [ %i.cs, %.lr.ph.split.i.3 ], [ %i.cz, %.lr.ph.split.i.4 ], [ %i.df, %.lr.ph.split.i.5 ], [ %i.dm, %.lr.ph.split.i.6 ], [ %i.ds, %.lr.ph.split.i.7 ] ; 5 uses
  %i.dt = icmp samesign ult i32 %i.w, 8
  br i1 %i.dt, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.f
  %.0.lcssa62.i = phi i64 [ %.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.f ]
  %i.du = shl nsw i32 %i.w, 3
  %i.dv = add nsw i32 %i.du, -1
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = shl nuw i64 1, %i.dw                    ; 2 uses
  %i.dy = xor i64 %.0.lcssa62.i, %i.dx
  %i.dz = sub i64 %i.dy, %i.dx
  br label %_ZL9unpackintP9lua_StatePKciii.exit

bb.g:                                             ; preds = %._crit_edge.i
  %.not.i = icmp eq i32 %i.w, 8
  br i1 %.not.i, label %_ZL9unpackintP9lua_StatePKciii.exit, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %bb.g
  %i.ea = icmp sgt i64 %.0.lcssa.i, -1
  %i.eb = select i1 %i.ea, i32 0, i32 255         ; 2 uses
  %21 = zext nneg i32 %i.w to i64                 ; 2 uses
  br i1 %.not41.i, label %.lr.ph46.split.us.i, label %.lr.ph46.split.i

.lr.ph46.split.us.i:                              ; preds = %.lr.ph46.i, %bb.h
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %bb.h ], [ 8, %.lr.ph46.i ] ; 2 uses
  %i.ec = trunc nuw nsw i64 %indvars.iv58.i to i32
  %i.ed = xor i32 %i.ec, -1
  %i.ee = add nsw i32 %i.w, %i.ed
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds i8, ptr %i.ae, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !13
  %i.ei = zext i8 %i.eh to i32
  %.not39.us.i = icmp eq i32 %i.eb, %i.ei
  br i1 %.not39.us.i, label %bb.h, label %.split.us.i

bb.h:                                             ; preds = %.lr.ph46.split.us.i
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next59.i, %21
  br i1 %exitcond217.not, label %_ZL9unpackintP9lua_StatePKciii.exit, label %.lr.ph46.split.us.i, !llvm.loop !68

bb.i:                                             ; preds = %.lr.ph46.split.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next55.i, %21
  br i1 %exitcond216.not, label %_ZL9unpackintP9lua_StatePKciii.exit, label %.lr.ph46.split.i, !llvm.loop !68

.lr.ph46.split.i:                                 ; preds = %.lr.ph46.i, %bb.i
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %bb.i ], [ 8, %.lr.ph46.i ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv54.i
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !13
  %i.el = zext i8 %i.ek to i32
  %.not39.i = icmp eq i32 %i.eb, %i.el
  br i1 %.not39.i, label %bb.i, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph46.split.i, %.lr.ph46.split.us.i
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.w) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit:              ; preds = %bb.i, %bb.h, %._crit_edge.thread.i, %bb.g
  %.1.i = phi i64 [ %i.dz, %._crit_edge.thread.i ], [ %.0.lcssa.i, %bb.h ], [ %.0.lcssa.i, %bb.g ], [ %.0.lcssa.i, %bb.i ]
  %i.em = sitofp i64 %.1.i to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.em)
  br label %bb.z

bb.j:                                             ; preds = %bb.e
  %i.en = sext i32 %i.ab to i64
  %i.eo = getelementptr inbounds i8, ptr %i.f, i64 %i.en ; 18 uses
  %i.ep = icmp sgt i32 %i.w, 0
  br i1 %i.ep, label %.lr.ph.i69, label %_ZL9unpackintP9lua_StatePKciii.exit94

.lr.ph.i69:                                       ; preds = %bb.j
  %i.eq = load i32, ptr %i.o, align 8, !tbaa !39
  %.not41.i70 = icmp eq i32 %i.eq, 0
  %22 = call i32 @llvm.umin.i32(i32 %i.w, i32 8)  ; 9 uses
  %23 = zext nneg i32 %22 to i64                  ; 8 uses
  br i1 %.not41.i70, label %.lr.ph.split.us.i90, label %.lr.ph.split.i71

.lr.ph.split.us.i90:                              ; preds = %.lr.ph.i69
  %24 = sub nsw i32 %i.w, %22
  %25 = sext i32 %24 to i64
  %i.er = getelementptr inbounds i8, ptr %i.eo, i64 %25
  %i.es = load i8, ptr %i.er, align 1, !tbaa !13
  %i.et = zext i8 %i.es to i64                    ; 2 uses
  %.not319 = icmp eq i32 %i.w, 1
  br i1 %.not319, label %._crit_edge.i75, label %.lr.ph.split.us.i90.1

.lr.ph.split.us.i90.1:                            ; preds = %.lr.ph.split.us.i90
  %indvars.iv.next53.i93 = add nsw i32 %22, -1
  %i.eu = shl nuw nsw i64 %i.et, 8
  %26 = sub i32 %i.w, %indvars.iv.next53.i93
  %27 = sext i32 %26 to i64
  %i.ev = getelementptr inbounds i8, ptr %i.eo, i64 %27
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !13
  %i.ex = zext i8 %i.ew to i64
  %i.ey = or disjoint i64 %i.eu, %i.ex            ; 2 uses
  %i.ez = icmp ugt i32 %i.w, 2
  br i1 %i.ez, label %.lr.ph.split.us.i90.2, label %._crit_edge.i75

.lr.ph.split.us.i90.2:                            ; preds = %.lr.ph.split.us.i90.1
  %indvars.iv.next53.i93.1 = add nsw i32 %22, -2
  %i.fa = shl nuw nsw i64 %i.ey, 8
  %28 = sub i32 %i.w, %indvars.iv.next53.i93.1
  %29 = sext i32 %28 to i64
  %i.fb = getelementptr inbounds i8, ptr %i.eo, i64 %29
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !13
  %i.fd = zext i8 %i.fc to i64
  %i.fe = or disjoint i64 %i.fa, %i.fd            ; 2 uses
  %.not320 = icmp eq i32 %i.w, 3
  br i1 %.not320, label %._crit_edge.i75, label %.lr.ph.split.us.i90.3

.lr.ph.split.us.i90.3:                            ; preds = %.lr.ph.split.us.i90.2
  %indvars.iv.next53.i93.2 = add nsw i32 %22, -3
  %i.ff = shl nuw nsw i64 %i.fe, 8
  %30 = sub i32 %i.w, %indvars.iv.next53.i93.2
  %31 = sext i32 %30 to i64
  %i.fg = getelementptr inbounds i8, ptr %i.eo, i64 %31
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !13
  %i.fi = zext i8 %i.fh to i64
  %i.fj = or disjoint i64 %i.ff, %i.fi            ; 2 uses
  %i.fk = icmp ugt i32 %i.w, 4
  br i1 %i.fk, label %.lr.ph.split.us.i90.4, label %._crit_edge.i75

.lr.ph.split.us.i90.4:                            ; preds = %.lr.ph.split.us.i90.3
  %indvars.iv.next53.i93.3 = add nsw i32 %22, -4
  %i.fl = shl i64 %i.fj, 8
  %32 = sub i32 %i.w, %indvars.iv.next53.i93.3
  %33 = sext i32 %32 to i64
  %i.fm = getelementptr inbounds i8, ptr %i.eo, i64 %33
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !13
  %i.fo = zext i8 %i.fn to i64
  %i.fp = or disjoint i64 %i.fl, %i.fo            ; 2 uses
  %.not321 = icmp eq i32 %i.w, 5
  br i1 %.not321, label %._crit_edge.i75, label %.lr.ph.split.us.i90.5

.lr.ph.split.us.i90.5:                            ; preds = %.lr.ph.split.us.i90.4
  %indvars.iv.next53.i93.4 = add nsw i32 %22, -5
  %i.fq = shl i64 %i.fp, 8
  %34 = sub i32 %i.w, %indvars.iv.next53.i93.4
  %35 = sext i32 %34 to i64
  %i.fr = getelementptr inbounds i8, ptr %i.eo, i64 %35
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !13
  %i.ft = zext i8 %i.fs to i64
  %i.fu = or disjoint i64 %i.fq, %i.ft            ; 2 uses
  %i.fv = icmp ugt i32 %i.w, 6
  br i1 %i.fv, label %.lr.ph.split.us.i90.6, label %._crit_edge.i75

.lr.ph.split.us.i90.6:                            ; preds = %.lr.ph.split.us.i90.5
  %indvars.iv.next53.i93.5 = add nsw i32 %22, -6
  %i.fw = shl i64 %i.fu, 8
  %36 = sub i32 %i.w, %indvars.iv.next53.i93.5
  %37 = sext i32 %36 to i64
  %i.fx = getelementptr inbounds i8, ptr %i.eo, i64 %37
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !13
  %i.fz = zext i8 %i.fy to i64
  %i.ga = or disjoint i64 %i.fw, %i.fz            ; 2 uses
  %.not322 = icmp eq i32 %i.w, 7
  br i1 %.not322, label %._crit_edge.i75, label %.lr.ph.split.us.i90.7

.lr.ph.split.us.i90.7:                            ; preds = %.lr.ph.split.us.i90.6
  %indvars.iv.next53.i93.6 = add nsw i32 %22, -7
  %i.gb = shl i64 %i.ga, 8
  %38 = sub i32 %i.w, %indvars.iv.next53.i93.6
  %39 = sext i32 %38 to i64
  %i.gc = getelementptr inbounds i8, ptr %i.eo, i64 %39
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !13
  %i.ge = zext i8 %i.gd to i64
  %i.gf = or disjoint i64 %i.gb, %i.ge
  br label %._crit_edge.i75

.lr.ph.split.i71:                                 ; preds = %.lr.ph.i69
  %i.gg = getelementptr i8, ptr %i.eo, i64 %23
  %i.gh = getelementptr i8, ptr %i.gg, i64 -1
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !13
  %i.gj = zext i8 %i.gi to i64                    ; 2 uses
  %.not315 = icmp eq i32 %i.w, 1
  br i1 %.not315, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.1

.lr.ph.split.i71.1:                               ; preds = %.lr.ph.split.i71
  %i.gk = shl nuw nsw i64 %i.gj, 8
  %i.gl = getelementptr i8, ptr %i.eo, i64 %23
  %i.gm = getelementptr i8, ptr %i.gl, i64 -2
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !13
  %i.go = zext i8 %i.gn to i64
  %i.gp = or disjoint i64 %i.gk, %i.go            ; 2 uses
  %i.gq = icmp ugt i32 %i.w, 2
  br i1 %i.gq, label %.lr.ph.split.i71.2, label %._crit_edge.i75.thread

.lr.ph.split.i71.2:                               ; preds = %.lr.ph.split.i71.1
  %i.gr = shl nuw nsw i64 %i.gp, 8
  %i.gs = getelementptr i8, ptr %i.eo, i64 %23
  %i.gt = getelementptr i8, ptr %i.gs, i64 -3
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !13
  %i.gv = zext i8 %i.gu to i64
  %i.gw = or disjoint i64 %i.gr, %i.gv            ; 2 uses
  %.not316 = icmp eq i32 %i.w, 3
  br i1 %.not316, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.3

.lr.ph.split.i71.3:                               ; preds = %.lr.ph.split.i71.2
  %i.gx = shl nuw nsw i64 %i.gw, 8
  %i.gy = getelementptr i8, ptr %i.eo, i64 %23
  %i.gz = getelementptr i8, ptr %i.gy, i64 -4
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !13
  %i.hb = zext i8 %i.ha to i64
  %i.hc = or disjoint i64 %i.gx, %i.hb            ; 2 uses
  %i.hd = icmp ugt i32 %i.w, 4
  br i1 %i.hd, label %.lr.ph.split.i71.4, label %._crit_edge.i75.thread

.lr.ph.split.i71.4:                               ; preds = %.lr.ph.split.i71.3
  %i.he = shl i64 %i.hc, 8
  %i.hf = getelementptr i8, ptr %i.eo, i64 %23
  %i.hg = getelementptr i8, ptr %i.hf, i64 -5
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !13
  %i.hi = zext i8 %i.hh to i64
  %i.hj = or disjoint i64 %i.he, %i.hi            ; 2 uses
  %.not317 = icmp eq i32 %i.w, 5
  br i1 %.not317, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.5

.lr.ph.split.i71.5:                               ; preds = %.lr.ph.split.i71.4
  %i.hk = shl i64 %i.hj, 8
  %i.hl = getelementptr i8, ptr %i.eo, i64 %23
  %i.hm = getelementptr i8, ptr %i.hl, i64 -6
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !13
  %i.ho = zext i8 %i.hn to i64
  %i.hp = or disjoint i64 %i.hk, %i.ho            ; 2 uses
  %i.hq = icmp ugt i32 %i.w, 6
  br i1 %i.hq, label %.lr.ph.split.i71.6, label %._crit_edge.i75.thread

.lr.ph.split.i71.6:                               ; preds = %.lr.ph.split.i71.5
  %i.hr = shl i64 %i.hp, 8
  %i.hs = getelementptr i8, ptr %i.eo, i64 %23
  %i.ht = getelementptr i8, ptr %i.hs, i64 -7
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !13
  %i.hv = zext i8 %i.hu to i64
  %i.hw = or disjoint i64 %i.hr, %i.hv            ; 2 uses
  %.not318 = icmp eq i32 %i.w, 7
  br i1 %.not318, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.7

.lr.ph.split.i71.7:                               ; preds = %.lr.ph.split.i71.6
  %i.hx = shl i64 %i.hw, 8
  %i.hy = getelementptr i8, ptr %i.eo, i64 %23
  %i.hz = getelementptr i8, ptr %i.hy, i64 -8
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !13
  %i.ib = zext i8 %i.ia to i64
  %i.ic = or disjoint i64 %i.hx, %i.ib
  br label %._crit_edge.i75.thread

._crit_edge.i75:                                  ; preds = %.lr.ph.split.us.i90.7, %.lr.ph.split.us.i90.6, %.lr.ph.split.us.i90.5, %.lr.ph.split.us.i90.4, %.lr.ph.split.us.i90.3, %.lr.ph.split.us.i90.2, %.lr.ph.split.us.i90.1, %.lr.ph.split.us.i90
  %.lcssa289 = phi i64 [ %i.et, %.lr.ph.split.us.i90 ], [ %i.ey, %.lr.ph.split.us.i90.1 ], [ %i.fe, %.lr.ph.split.us.i90.2 ], [ %i.fj, %.lr.ph.split.us.i90.3 ], [ %i.fp, %.lr.ph.split.us.i90.4 ], [ %i.fu, %.lr.ph.split.us.i90.5 ], [ %i.ga, %.lr.ph.split.us.i90.6 ], [ %i.gf, %.lr.ph.split.us.i90.7 ] ; 2 uses
  %i.id = icmp samesign ult i32 %i.w, 9
  br i1 %i.id, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.us.preheader.i85

._crit_edge.i75.thread:                           ; preds = %.lr.ph.split.i71.7, %.lr.ph.split.i71.6, %.lr.ph.split.i71.5, %.lr.ph.split.i71.4, %.lr.ph.split.i71.3, %.lr.ph.split.i71.2, %.lr.ph.split.i71.1, %.lr.ph.split.i71
  %.lcssa288 = phi i64 [ %i.gj, %.lr.ph.split.i71 ], [ %i.gp, %.lr.ph.split.i71.1 ], [ %i.gw, %.lr.ph.split.i71.2 ], [ %i.hc, %.lr.ph.split.i71.3 ], [ %i.hj, %.lr.ph.split.i71.4 ], [ %i.hp, %.lr.ph.split.i71.5 ], [ %i.hw, %.lr.ph.split.i71.6 ], [ %i.ic, %.lr.ph.split.i71.7 ] ; 2 uses
  %i.ie = icmp samesign ult i32 %i.w, 9
  br i1 %i.ie, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.i80.preheader

.lr.ph46.split.i80.preheader:                     ; preds = %._crit_edge.i75.thread
  %wide.trip.count211 = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.i80

.lr.ph46.split.us.preheader.i85:                  ; preds = %._crit_edge.i75
  %i.if = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.us.i86

.lr.ph46.split.us.i86:                            ; preds = %bb.k, %.lr.ph46.split.us.preheader.i85
  %indvars.iv58.i87 = phi i64 [ 8, %.lr.ph46.split.us.preheader.i85 ], [ %indvars.iv.next59.i89, %bb.k ] ; 2 uses
  %i.ig = trunc nuw nsw i64 %indvars.iv58.i87 to i32
  %i.ih = xor i32 %i.ig, -1
  %i.ii = add nsw i32 %i.w, %i.ih
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr inbounds i8, ptr %i.eo, i64 %i.ij
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !13
  %.not39.us.i88 = icmp eq i8 %i.il, 0
  br i1 %.not39.us.i88, label %bb.k, label %.split.us.i83

bb.k:                                             ; preds = %.lr.ph46.split.us.i86
  %indvars.iv.next59.i89 = add nuw nsw i64 %indvars.iv58.i87, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next59.i89, %i.if
  br i1 %exitcond213.not, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.us.i86, !llvm.loop !68

bb.l:                                             ; preds = %.lr.ph46.split.i80
  %indvars.iv.next55.i84 = add nuw nsw i64 %indvars.iv54.i81, 1 ; 2 uses
  %exitcond212.not = icmp eq i64 %indvars.iv.next55.i84, %wide.trip.count211
  br i1 %exitcond212.not, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.i80, !llvm.loop !68

.lr.ph46.split.i80:                               ; preds = %.lr.ph46.split.i80.preheader, %bb.l
  %indvars.iv54.i81 = phi i64 [ %indvars.iv.next55.i84, %bb.l ], [ 8, %.lr.ph46.split.i80.preheader ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.eo, i64 %indvars.iv54.i81
  %i.in = load i8, ptr %i.im, align 1, !tbaa !13
  %.not39.i82 = icmp eq i8 %i.in, 0
  br i1 %.not39.i82, label %bb.l, label %.split.us.i83

.split.us.i83:                                    ; preds = %.lr.ph46.split.i80, %.lr.ph46.split.us.i86
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.w) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit94:            ; preds = %bb.l, %bb.k, %._crit_edge.i75.thread, %._crit_edge.i75, %bb.j
  %.1.i68 = phi i64 [ %.lcssa288, %._crit_edge.i75.thread ], [ %.lcssa289, %._crit_edge.i75 ], [ 0, %bb.j ], [ %.lcssa289, %bb.k ], [ %.lcssa288, %bb.l ]
  %i.io = uitofp i64 %.1.i68 to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.io)
  br label %bb.z

bb.m:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.ip = sext i32 %i.ab to i64
  %i.iq = getelementptr inbounds i8, ptr %i.f, i64 %i.ip ; 4 uses
  %i.ir = load i32, ptr %i.o, align 8, !tbaa !39
  %i.is = icmp eq i32 %i.ir, 1
  %.not1218.i = icmp eq i32 %i.w, 0               ; 2 uses
  br i1 %i.is, label %.preheader.i, label %bb.n

.preheader.i:                                     ; preds = %bb.m
  br i1 %.not1218.i, label %_ZL14copywithendianPVcPVKcii.exit.thread, label %.lr.ph22.i.preheader

.lr.ph22.i.preheader:                             ; preds = %.preheader.i
  %xtraiter304 = and i32 %i.w, 7                  ; 2 uses
  %lcmp.mod305.not = icmp eq i32 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol

.lr.ph22.i.prol:                                  ; preds = %.lr.ph22.i.preheader, %.lr.ph22.i.prol
  %.021.i.prol = phi ptr [ %i.iw, %.lr.ph22.i.prol ], [ %2, %.lr.ph22.i.preheader ] ; 2 uses
  %.0820.i.prol = phi i32 [ %i.it, %.lr.ph22.i.prol ], [ %i.w, %.lr.ph22.i.preheader ]
  %.01019.i.prol = phi ptr [ %i.iu, %.lr.ph22.i.prol ], [ %i.iq, %.lr.ph22.i.preheader ] ; 2 uses
  %prol.iter306 = phi i32 [ %prol.iter306.next, %.lr.ph22.i.prol ], [ 0, %.lr.ph22.i.preheader ]
  %i.it = add nsw i32 %.0820.i.prol, -1           ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 1 ; 2 uses
  %i.iv = load volatile i8, ptr %.01019.i.prol, align 1, !tbaa !13
  %i.iw = getelementptr inbounds nuw i8, ptr %.021.i.prol, i64 1 ; 2 uses
  store volatile i8 %i.iv, ptr %.021.i.prol, align 1, !tbaa !13
  %prol.iter306.next = add i32 %prol.iter306, 1   ; 2 uses
  %prol.iter306.cmp.not = icmp eq i32 %prol.iter306.next, %xtraiter304
  br i1 %prol.iter306.cmp.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol, !llvm.loop !69

.lr.ph22.i.prol.loopexit:                         ; preds = %.lr.ph22.i.prol, %.lr.ph22.i.preheader
  %.021.i.unr = phi ptr [ %2, %.lr.ph22.i.preheader ], [ %i.iw, %.lr.ph22.i.prol ]
  %.0820.i.unr = phi i32 [ %i.w, %.lr.ph22.i.preheader ], [ %i.it, %.lr.ph22.i.prol ]
  %.01019.i.unr = phi ptr [ %i.iq, %.lr.ph22.i.preheader ], [ %i.iu, %.lr.ph22.i.prol ]
  %i.ix = icmp ult i32 %i.w, 8
  br i1 %i.ix, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  %.021.i = phi ptr [ %i.jw, %.lr.ph22.i ], [ %.021.i.unr, %.lr.ph22.i.prol.loopexit ] ; 9 uses
  %.0820.i = phi i32 [ %i.jt, %.lr.ph22.i ], [ %.0820.i.unr, %.lr.ph22.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.ju, %.lr.ph22.i ], [ %.01019.i.unr, %.lr.ph22.i.prol.loopexit ] ; 9 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.01019.i, i64 1
  %i.iz = load volatile i8, ptr %.01019.i, align 1, !tbaa !13
  %i.ja = getelementptr inbounds nuw i8, ptr %.021.i, i64 1
  store volatile i8 %i.iz, ptr %.021.i, align 1, !tbaa !13
  %i.jb = getelementptr inbounds nuw i8, ptr %.01019.i, i64 2
  %i.jc = load volatile i8, ptr %i.iy, align 1, !tbaa !13
  %i.jd = getelementptr inbounds nuw i8, ptr %.021.i, i64 2
  store volatile i8 %i.jc, ptr %i.ja, align 1, !tbaa !13
  %i.je = getelementptr inbounds nuw i8, ptr %.01019.i, i64 3
  %i.jf = load volatile i8, ptr %i.jb, align 1, !tbaa !13
  %i.jg = getelementptr inbounds nuw i8, ptr %.021.i, i64 3
  store volatile i8 %i.jf, ptr %i.jd, align 1, !tbaa !13
  %i.jh = getelementptr inbounds nuw i8, ptr %.01019.i, i64 4
  %i.ji = load volatile i8, ptr %i.je, align 1, !tbaa !13
  %i.jj = getelementptr inbounds nuw i8, ptr %.021.i, i64 4
  store volatile i8 %i.ji, ptr %i.jg, align 1, !tbaa !13
  %i.jk = getelementptr inbounds nuw i8, ptr %.01019.i, i64 5
  %i.jl = load volatile i8, ptr %i.jh, align 1, !tbaa !13
  %i.jm = getelementptr inbounds nuw i8, ptr %.021.i, i64 5
  store volatile i8 %i.jl, ptr %i.jj, align 1, !tbaa !13
  %i.jn = getelementptr inbounds nuw i8, ptr %.01019.i, i64 6
  %i.jo = load volatile i8, ptr %i.jk, align 1, !tbaa !13
  %i.jp = getelementptr inbounds nuw i8, ptr %.021.i, i64 6
  store volatile i8 %i.jo, ptr %i.jm, align 1, !tbaa !13
  %i.jq = getelementptr inbounds nuw i8, ptr %.01019.i, i64 7
  %i.jr = load volatile i8, ptr %i.jn, align 1, !tbaa !13
  %i.js = getelementptr inbounds nuw i8, ptr %.021.i, i64 7
  store volatile i8 %i.jr, ptr %i.jp, align 1, !tbaa !13
  %i.jt = add nsw i32 %.0820.i, -8                ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  %i.jv = load volatile i8, ptr %i.jq, align 1, !tbaa !13
  %i.jw = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  store volatile i8 %i.jv, ptr %i.js, align 1, !tbaa !13
  %.not12.i.7 = icmp eq i32 %i.jt, 0
  br i1 %.not12.i.7, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i, !llvm.loop !0

bb.n:                                             ; preds = %bb.m
  br i1 %.not1218.i, label %_ZL14copywithendianPVcPVKcii.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.jx = getelementptr i8, ptr %2, i64 %i.x      ; 2 uses
  %xtraiter = and i32 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol

.lr.ph.i95.prol:                                  ; preds = %.lr.ph.preheader.i, %.lr.ph.i95.prol
  %.pn17.i.prol = phi ptr [ %.1.i96.prol, %.lr.ph.i95.prol ], [ %i.jx, %.lr.ph.preheader.i ]
  %.1916.i.prol = phi i32 [ %i.jy, %.lr.ph.i95.prol ], [ %i.w, %.lr.ph.preheader.i ]
  %.11115.i.prol = phi ptr [ %i.jz, %.lr.ph.i95.prol ], [ %i.iq, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i95.prol ], [ 0, %.lr.ph.preheader.i ]
  %.1.i96.prol = getelementptr i8, ptr %.pn17.i.prol, i64 -1 ; 3 uses
  %i.jy = add nsw i32 %.1916.i.prol, -1           ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.11115.i.prol, i64 1 ; 2 uses
  %i.ka = load volatile i8, ptr %.11115.i.prol, align 1, !tbaa !13
  store volatile i8 %i.ka, ptr %.1.i96.prol, align 1, !tbaa !13
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol, !llvm.loop !70

.lr.ph.i95.prol.loopexit:                         ; preds = %.lr.ph.i95.prol, %.lr.ph.preheader.i
  %.pn17.i.unr = phi ptr [ %i.jx, %.lr.ph.preheader.i ], [ %.1.i96.prol, %.lr.ph.i95.prol ]
  %.1916.i.unr = phi i32 [ %i.w, %.lr.ph.preheader.i ], [ %i.jy, %.lr.ph.i95.prol ]
  %.11115.i.unr = phi ptr [ %i.iq, %.lr.ph.preheader.i ], [ %i.jz, %.lr.ph.i95.prol ]
  %i.kb = icmp ult i32 %i.w, 8
  br i1 %i.kb, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95
  %.pn17.i = phi ptr [ %.1.i96.7, %.lr.ph.i95 ], [ %.pn17.i.unr, %.lr.ph.i95.prol.loopexit ] ; 8 uses
  %.1916.i = phi i32 [ %i.kq, %.lr.ph.i95 ], [ %.1916.i.unr, %.lr.ph.i95.prol.loopexit ]
  %.11115.i = phi ptr [ %i.kr, %.lr.ph.i95 ], [ %.11115.i.unr, %.lr.ph.i95.prol.loopexit ] ; 9 uses
  %.1.i96 = getelementptr i8, ptr %.pn17.i, i64 -1
  %i.kc = getelementptr inbounds nuw i8, ptr %.11115.i, i64 1
  %i.kd = load volatile i8, ptr %.11115.i, align 1, !tbaa !13
  store volatile i8 %i.kd, ptr %.1.i96, align 1, !tbaa !13
  %.1.i96.1 = getelementptr i8, ptr %.pn17.i, i64 -2
  %i.ke = getelementptr inbounds nuw i8, ptr %.11115.i, i64 2
  %i.kf = load volatile i8, ptr %i.kc, align 1, !tbaa !13
  store volatile i8 %i.kf, ptr %.1.i96.1, align 1, !tbaa !13
  %.1.i96.2 = getelementptr i8, ptr %.pn17.i, i64 -3
  %i.kg = getelementptr inbounds nuw i8, ptr %.11115.i, i64 3
  %i.kh = load volatile i8, ptr %i.ke, align 1, !tbaa !13
  store volatile i8 %i.kh, ptr %.1.i96.2, align 1, !tbaa !13
  %.1.i96.3 = getelementptr i8, ptr %.pn17.i, i64 -4
  %i.ki = getelementptr inbounds nuw i8, ptr %.11115.i, i64 4
  %i.kj = load volatile i8, ptr %i.kg, align 1, !tbaa !13
  store volatile i8 %i.kj, ptr %.1.i96.3, align 1, !tbaa !13
  %.1.i96.4 = getelementptr i8, ptr %.pn17.i, i64 -5
  %i.kk = getelementptr inbounds nuw i8, ptr %.11115.i, i64 5
  %i.kl = load volatile i8, ptr %i.ki, align 1, !tbaa !13
  store volatile i8 %i.kl, ptr %.1.i96.4, align 1, !tbaa !13
  %.1.i96.5 = getelementptr i8, ptr %.pn17.i, i64 -6
  %i.km = getelementptr inbounds nuw i8, ptr %.11115.i, i64 6
  %i.kn = load volatile i8, ptr %i.kk, align 1, !tbaa !13
  store volatile i8 %i.kn, ptr %.1.i96.5, align 1, !tbaa !13
  %.1.i96.6 = getelementptr i8, ptr %.pn17.i, i64 -7
  %i.ko = getelementptr inbounds nuw i8, ptr %.11115.i, i64 7
  %i.kp = load volatile i8, ptr %i.km, align 1, !tbaa !13
  store volatile i8 %i.kp, ptr %.1.i96.6, align 1, !tbaa !13
  %.1.i96.7 = getelementptr i8, ptr %.pn17.i, i64 -8 ; 2 uses
  %i.kq = add nsw i32 %.1916.i, -8                ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.11115.i, i64 8
  %i.ks = load volatile i8, ptr %i.ko, align 1, !tbaa !13
  store volatile i8 %i.ks, ptr %.1.i96.7, align 1, !tbaa !13
  %.not.i97.7 = icmp eq i32 %i.kq, 0
  br i1 %.not.i97.7, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.i95, !llvm.loop !1

_ZL14copywithendianPVcPVKcii.exit:                ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95, %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  switch i32 %i.w, label %_ZL14copywithendianPVcPVKcii.exit.thread [
    i32 4, label %bb.o
    i32 8, label %bb.p
  ]

bb.o:                                             ; preds = %_ZL14copywithendianPVcPVKcii.exit
  %i.kt = load volatile float, ptr %2, align 8, !tbaa !13
  %i.ku = fpext float %i.kt to double
  br label %bb.q

bb.p:                                             ; preds = %_ZL14copywithendianPVcPVKcii.exit
  %i.kv = load volatile double, ptr %2, align 8, !tbaa !13
  br label %bb.q

_ZL14copywithendianPVcPVKcii.exit.thread:         ; preds = %bb.n, %.preheader.i, %_ZL14copywithendianPVcPVKcii.exit
  %i.kw = load volatile double, ptr %2, align 8, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZL14copywithendianPVcPVKcii.exit.thread, %bb.o
  %.0 = phi double [ %i.ku, %bb.o ], [ %i.kv, %bb.p ], [ %i.kw, %_ZL14copywithendianPVcPVKcii.exit.thread ]
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.z

bb.r:                                             ; preds = %bb.e
  %i.kx = sext i32 %i.ab to i64
  %i.ky = getelementptr inbounds i8, ptr %i.f, i64 %i.kx
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef %i.ky, i64 noundef %i.x)
  br label %bb.z

bb.s:                                             ; preds = %bb.e
  %i.kz = sext i32 %i.ab to i64                   ; 2 uses
  %i.la = getelementptr inbounds i8, ptr %i.f, i64 %i.kz ; 19 uses
  %i.lb = icmp sgt i32 %i.w, 0
  br i1 %i.lb, label %.lr.ph.i101, label %_ZL9unpackintP9lua_StatePKciii.exit126.thread

.lr.ph.i101:                                      ; preds = %bb.s
  %i.lc = load i32, ptr %i.o, align 8, !tbaa !39
  %.not41.i102 = icmp eq i32 %i.lc, 0
  %40 = call i32 @llvm.umin.i32(i32 %i.w, i32 8)  ; 9 uses
  %41 = zext nneg i32 %40 to i64                  ; 8 uses
  br i1 %.not41.i102, label %.lr.ph.split.us.i122, label %.lr.ph.split.i103

.lr.ph.split.us.i122:                             ; preds = %.lr.ph.i101
  %42 = sub nsw i32 %i.w, %40
  %43 = sext i32 %42 to i64
  %i.ld = getelementptr inbounds i8, ptr %i.la, i64 %43
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !13
  %i.lf = zext i8 %i.le to i64                    ; 2 uses
  %.not311 = icmp eq i32 %i.w, 1
  br i1 %.not311, label %._crit_edge.i107, label %.lr.ph.split.us.i122.1

.lr.ph.split.us.i122.1:                           ; preds = %.lr.ph.split.us.i122
  %indvars.iv.next53.i125 = add nsw i32 %40, -1
  %i.lg = shl nuw nsw i64 %i.lf, 8
  %44 = sub i32 %i.w, %indvars.iv.next53.i125
  %45 = sext i32 %44 to i64
  %i.lh = getelementptr inbounds i8, ptr %i.la, i64 %45
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !13
  %i.lj = zext i8 %i.li to i64
  %i.lk = or disjoint i64 %i.lg, %i.lj            ; 2 uses
  %i.ll = icmp ugt i32 %i.w, 2
  br i1 %i.ll, label %.lr.ph.split.us.i122.2, label %._crit_edge.i107

.lr.ph.split.us.i122.2:                           ; preds = %.lr.ph.split.us.i122.1
  %indvars.iv.next53.i125.1 = add nsw i32 %40, -2
  %i.lm = shl nuw nsw i64 %i.lk, 8
  %46 = sub i32 %i.w, %indvars.iv.next53.i125.1
  %47 = sext i32 %46 to i64
  %i.ln = getelementptr inbounds i8, ptr %i.la, i64 %47
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !13
  %i.lp = zext i8 %i.lo to i64
  %i.lq = or disjoint i64 %i.lm, %i.lp            ; 2 uses
  %.not312 = icmp eq i32 %i.w, 3
  br i1 %.not312, label %._crit_edge.i107, label %.lr.ph.split.us.i122.3

.lr.ph.split.us.i122.3:                           ; preds = %.lr.ph.split.us.i122.2
  %indvars.iv.next53.i125.2 = add nsw i32 %40, -3
  %i.lr = shl nuw nsw i64 %i.lq, 8
  %48 = sub i32 %i.w, %indvars.iv.next53.i125.2
  %49 = sext i32 %48 to i64
  %i.ls = getelementptr inbounds i8, ptr %i.la, i64 %49
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !13
  %i.lu = zext i8 %i.lt to i64
  %i.lv = or disjoint i64 %i.lr, %i.lu            ; 2 uses
  %i.lw = icmp ugt i32 %i.w, 4
  br i1 %i.lw, label %.lr.ph.split.us.i122.4, label %._crit_edge.i107

.lr.ph.split.us.i122.4:                           ; preds = %.lr.ph.split.us.i122.3
  %indvars.iv.next53.i125.3 = add nsw i32 %40, -4
  %i.lx = shl i64 %i.lv, 8
  %50 = sub i32 %i.w, %indvars.iv.next53.i125.3
  %51 = sext i32 %50 to i64
  %i.ly = getelementptr inbounds i8, ptr %i.la, i64 %51
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !13
  %i.ma = zext i8 %i.lz to i64
  %i.mb = or disjoint i64 %i.lx, %i.ma            ; 2 uses
  %.not313 = icmp eq i32 %i.w, 5
  br i1 %.not313, label %._crit_edge.i107, label %.lr.ph.split.us.i122.5

.lr.ph.split.us.i122.5:                           ; preds = %.lr.ph.split.us.i122.4
  %indvars.iv.next53.i125.4 = add nsw i32 %40, -5
  %i.mc = shl i64 %i.mb, 8
  %52 = sub i32 %i.w, %indvars.iv.next53.i125.4
  %53 = sext i32 %52 to i64
  %i.md = getelementptr inbounds i8, ptr %i.la, i64 %53
  %i.me = load i8, ptr %i.md, align 1, !tbaa !13
  %i.mf = zext i8 %i.me to i64
  %i.mg = or disjoint i64 %i.mc, %i.mf            ; 2 uses
  %i.mh = icmp ugt i32 %i.w, 6
  br i1 %i.mh, label %.lr.ph.split.us.i122.6, label %._crit_edge.i107

.lr.ph.split.us.i122.6:                           ; preds = %.lr.ph.split.us.i122.5
  %indvars.iv.next53.i125.5 = add nsw i32 %40, -6
  %i.mi = shl i64 %i.mg, 8
  %54 = sub i32 %i.w, %indvars.iv.next53.i125.5
  %55 = sext i32 %54 to i64
  %i.mj = getelementptr inbounds i8, ptr %i.la, i64 %55
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !13
  %i.ml = zext i8 %i.mk to i64
  %i.mm = or disjoint i64 %i.mi, %i.ml            ; 2 uses
  %.not314 = icmp eq i32 %i.w, 7
  br i1 %.not314, label %._crit_edge.i107, label %.lr.ph.split.us.i122.7

.lr.ph.split.us.i122.7:                           ; preds = %.lr.ph.split.us.i122.6
  %indvars.iv.next53.i125.6 = add nsw i32 %40, -7
  %i.mn = shl i64 %i.mm, 8
  %56 = sub i32 %i.w, %indvars.iv.next53.i125.6
  %57 = sext i32 %56 to i64
  %i.mo = getelementptr inbounds i8, ptr %i.la, i64 %57
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !13
  %i.mq = zext i8 %i.mp to i64
  %i.mr = or disjoint i64 %i.mn, %i.mq
  br label %._crit_edge.i107

.lr.ph.split.i103:                                ; preds = %.lr.ph.i101
  %i.ms = getelementptr i8, ptr %i.la, i64 %41
  %i.mt = getelementptr i8, ptr %i.ms, i64 -1
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !13
  %i.mv = zext i8 %i.mu to i64                    ; 2 uses
  %.not307 = icmp eq i32 %i.w, 1
  br i1 %.not307, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.1

.lr.ph.split.i103.1:                              ; preds = %.lr.ph.split.i103
  %i.mw = shl nuw nsw i64 %i.mv, 8
  %i.mx = getelementptr i8, ptr %i.la, i64 %41
  %i.my = getelementptr i8, ptr %i.mx, i64 -2
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !13
  %i.na = zext i8 %i.mz to i64
  %i.nb = or disjoint i64 %i.mw, %i.na            ; 2 uses
  %i.nc = icmp ugt i32 %i.w, 2
  br i1 %i.nc, label %.lr.ph.split.i103.2, label %._crit_edge.i107.thread

.lr.ph.split.i103.2:                              ; preds = %.lr.ph.split.i103.1
  %i.nd = shl nuw nsw i64 %i.nb, 8
  %i.ne = getelementptr i8, ptr %i.la, i64 %41
  %i.nf = getelementptr i8, ptr %i.ne, i64 -3
  %i.ng = load i8, ptr %i.nf, align 1, !tbaa !13
  %i.nh = zext i8 %i.ng to i64
  %i.ni = or disjoint i64 %i.nd, %i.nh            ; 2 uses
  %.not308 = icmp eq i32 %i.w, 3
  br i1 %.not308, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.3

.lr.ph.split.i103.3:                              ; preds = %.lr.ph.split.i103.2
  %i.nj = shl nuw nsw i64 %i.ni, 8
  %i.nk = getelementptr i8, ptr %i.la, i64 %41
  %i.nl = getelementptr i8, ptr %i.nk, i64 -4
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !13
  %i.nn = zext i8 %i.nm to i64
  %i.no = or disjoint i64 %i.nj, %i.nn            ; 2 uses
  %i.np = icmp ugt i32 %i.w, 4
  br i1 %i.np, label %.lr.ph.split.i103.4, label %._crit_edge.i107.thread

.lr.ph.split.i103.4:                              ; preds = %.lr.ph.split.i103.3
  %i.nq = shl i64 %i.no, 8
  %i.nr = getelementptr i8, ptr %i.la, i64 %41
  %i.ns = getelementptr i8, ptr %i.nr, i64 -5
  %i.nt = load i8, ptr %i.ns, align 1, !tbaa !13
  %i.nu = zext i8 %i.nt to i64
  %i.nv = or disjoint i64 %i.nq, %i.nu            ; 2 uses
  %.not309 = icmp eq i32 %i.w, 5
  br i1 %.not309, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.5

.lr.ph.split.i103.5:                              ; preds = %.lr.ph.split.i103.4
  %i.nw = shl i64 %i.nv, 8
  %i.nx = getelementptr i8, ptr %i.la, i64 %41
  %i.ny = getelementptr i8, ptr %i.nx, i64 -6
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !13
  %i.oa = zext i8 %i.nz to i64
  %i.ob = or disjoint i64 %i.nw, %i.oa            ; 2 uses
  %i.oc = icmp ugt i32 %i.w, 6
  br i1 %i.oc, label %.lr.ph.split.i103.6, label %._crit_edge.i107.thread

.lr.ph.split.i103.6:                              ; preds = %.lr.ph.split.i103.5
  %i.od = shl i64 %i.ob, 8
  %i.oe = getelementptr i8, ptr %i.la, i64 %41
  %i.of = getelementptr i8, ptr %i.oe, i64 -7
  %i.og = load i8, ptr %i.of, align 1, !tbaa !13
  %i.oh = zext i8 %i.og to i64
  %i.oi = or disjoint i64 %i.od, %i.oh            ; 2 uses
  %.not310 = icmp eq i32 %i.w, 7
  br i1 %.not310, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.7

.lr.ph.split.i103.7:                              ; preds = %.lr.ph.split.i103.6
  %i.oj = shl i64 %i.oi, 8
  %i.ok = getelementptr i8, ptr %i.la, i64 %41
  %i.ol = getelementptr i8, ptr %i.ok, i64 -8
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !13
  %i.on = zext i8 %i.om to i64
  %i.oo = or disjoint i64 %i.oj, %i.on
  br label %._crit_edge.i107.thread

._crit_edge.i107:                                 ; preds = %.lr.ph.split.us.i122.7, %.lr.ph.split.us.i122.6, %.lr.ph.split.us.i122.5, %.lr.ph.split.us.i122.4, %.lr.ph.split.us.i122.3, %.lr.ph.split.us.i122.2, %.lr.ph.split.us.i122.1, %.lr.ph.split.us.i122
  %.lcssa287 = phi i64 [ %i.lf, %.lr.ph.split.us.i122 ], [ %i.lk, %.lr.ph.split.us.i122.1 ], [ %i.lq, %.lr.ph.split.us.i122.2 ], [ %i.lv, %.lr.ph.split.us.i122.3 ], [ %i.mb, %.lr.ph.split.us.i122.4 ], [ %i.mg, %.lr.ph.split.us.i122.5 ], [ %i.mm, %.lr.ph.split.us.i122.6 ], [ %i.mr, %.lr.ph.split.us.i122.7 ] ; 2 uses
  %i.op = icmp samesign ult i32 %i.w, 9
  br i1 %i.op, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.us.preheader.i117

._crit_edge.i107.thread:                          ; preds = %.lr.ph.split.i103.7, %.lr.ph.split.i103.6, %.lr.ph.split.i103.5, %.lr.ph.split.i103.4, %.lr.ph.split.i103.3, %.lr.ph.split.i103.2, %.lr.ph.split.i103.1, %.lr.ph.split.i103
  %.lcssa = phi i64 [ %i.mv, %.lr.ph.split.i103 ], [ %i.nb, %.lr.ph.split.i103.1 ], [ %i.ni, %.lr.ph.split.i103.2 ], [ %i.no, %.lr.ph.split.i103.3 ], [ %i.nv, %.lr.ph.split.i103.4 ], [ %i.ob, %.lr.ph.split.i103.5 ], [ %i.oi, %.lr.ph.split.i103.6 ], [ %i.oo, %.lr.ph.split.i103.7 ] ; 2 uses
  %i.oq = icmp samesign ult i32 %i.w, 9
  br i1 %i.oq, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.i112.preheader

.lr.ph46.split.i112.preheader:                    ; preds = %._crit_edge.i107.thread
  %wide.trip.count = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.i112

.lr.ph46.split.us.preheader.i117:                 ; preds = %._crit_edge.i107
  %i.or = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.us.i118

.lr.ph46.split.us.i118:                           ; preds = %bb.t, %.lr.ph46.split.us.preheader.i117
  %indvars.iv58.i119 = phi i64 [ 8, %.lr.ph46.split.us.preheader.i117 ], [ %indvars.iv.next59.i121, %bb.t ] ; 2 uses
  %i.os = trunc nuw nsw i64 %indvars.iv58.i119 to i32
  %i.ot = xor i32 %i.os, -1
  %i.ou = add nsw i32 %i.w, %i.ot
  %i.ov = sext i32 %i.ou to i64
  %i.ow = getelementptr inbounds i8, ptr %i.la, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !13
  %.not39.us.i120 = icmp eq i8 %i.ox, 0
  br i1 %.not39.us.i120, label %bb.t, label %.split.us.i115

bb.t:                                             ; preds = %.lr.ph46.split.us.i118
  %indvars.iv.next59.i121 = add nuw nsw i64 %indvars.iv58.i119, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next59.i121, %i.or
  br i1 %exitcond209.not, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.us.i118, !llvm.loop !68

bb.u:                                             ; preds = %.lr.ph46.split.i112
  %indvars.iv.next55.i116 = add nuw nsw i64 %indvars.iv54.i113, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next55.i116, %wide.trip.count
  br i1 %exitcond.not, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.i112, !llvm.loop !68

.lr.ph46.split.i112:                              ; preds = %.lr.ph46.split.i112.preheader, %bb.u
  %indvars.iv54.i113 = phi i64 [ %indvars.iv.next55.i116, %bb.u ], [ 8, %.lr.ph46.split.i112.preheader ] ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.la, i64 %indvars.iv54.i113
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !13
  %.not39.i114 = icmp eq i8 %i.oz, 0
  br i1 %.not39.i114, label %bb.u, label %.split.us.i115

.split.us.i115:                                   ; preds = %.lr.ph46.split.i112, %.lr.ph46.split.us.i118
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.w) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit126:           ; preds = %bb.u, %bb.t, %._crit_edge.i107.thread, %._crit_edge.i107
  %.0.lcssa.i108226 = phi i64 [ %.lcssa, %._crit_edge.i107.thread ], [ %.lcssa287, %bb.t ], [ %.lcssa287, %._crit_edge.i107 ], [ %.lcssa, %bb.u ] ; 2 uses
  %i.pa = load i64, ptr %i.b, align 8, !tbaa !12
  %i.pb = add nsw i64 %i.kz, %i.x
  %i.pc = sub i64 %i.pa, %i.pb
  %.not65 = icmp ugt i64 %.0.lcssa.i108226, %i.pc
  br i1 %.not65, label %bb.v, label %_ZL9unpackintP9lua_StatePKciii.exit126.thread

bb.v:                                             ; preds = %_ZL9unpackintP9lua_StatePKciii.exit126
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.59) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit126.thread:    ; preds = %bb.s, %_ZL9unpackintP9lua_StatePKciii.exit126
  %.1.i100129 = phi i64 [ %.0.lcssa.i108226, %_ZL9unpackintP9lua_StatePKciii.exit126 ], [ 0, %bb.s ] ; 2 uses
  %i.pd = getelementptr inbounds i8, ptr %i.la, i64 %i.x
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef %i.pd, i64 noundef %.1.i100129)
  %i.pe = trunc i64 %.1.i100129 to i32
  %i.pf = add nsw i32 %i.ab, %i.pe
  br label %bb.z

bb.w:                                             ; preds = %bb.e
  %i.pg = sext i32 %i.ab to i64                   ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %i.f, i64 %i.pg ; 2 uses
  %i.pi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ph) #15 ; 3 uses
  %i.pj = add i64 %i.pi, %i.pg
  %i.pk = load i64, ptr %i.b, align 8, !tbaa !12
  %i.pl = icmp ult i64 %i.pj, %i.pk
  br i1 %i.pl, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.61) #14
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull %i.ph, i64 noundef %i.pi)
  %i.pm = trunc i64 %i.pi to i32
  %i.pn = add i32 %i.ab, 1
  %i.po = add i32 %i.pn, %i.pm
  br label %bb.z

default.unreachable219:                           ; preds = %bb.e
  unreachable

bb.z:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.y, %_ZL9unpackintP9lua_StatePKciii.exit126.thread, %bb.r, %bb.q, %_ZL9unpackintP9lua_StatePKciii.exit94, %_ZL9unpackintP9lua_StatePKciii.exit
  %.160 = phi i32 [ %i.ac, %bb.y ], [ %i.ac, %_ZL9unpackintP9lua_StatePKciii.exit ], [ %i.ac, %_ZL9unpackintP9lua_StatePKciii.exit94 ], [ %i.ac, %bb.q ], [ %i.ac, %bb.r ], [ %i.ac, %_ZL9unpackintP9lua_StatePKciii.exit126.thread ], [ %.059179, %bb.e ], [ %.059179, %bb.e ], [ %.059179, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.po, %bb.y ], [ %i.ab, %_ZL9unpackintP9lua_StatePKciii.exit ], [ %i.ab, %_ZL9unpackintP9lua_StatePKciii.exit94 ], [ %i.ab, %bb.q ], [ %i.ab, %bb.r ], [ %i.pf, %_ZL9unpackintP9lua_StatePKciii.exit126.thread ], [ %i.ab, %bb.e ], [ %i.ab, %bb.e ], [ %i.ab, %bb.e ]
  %i.pp = add nsw i32 %.1, %i.w                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.pq = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.pr = load i8, ptr %i.pq, align 1, !tbaa !13
  %.not63 = icmp eq i8 %i.pr, 0
  br i1 %.not63, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !71

._crit_edge.loopexit:                             ; preds = %bb.z
  %i.ps = add nsw i32 %i.pp, 1
  %i.pt = add nsw i32 %.160, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.059.lcssa = phi i32 [ 1, %bb.c ], [ %i.pt, %._crit_edge.loopexit ]
  %.058.lcssa = phi i32 [ %i.m, %bb.c ], [ %i.ps, %._crit_edge.loopexit ]
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %.058.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 %.059.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @_Z15luaL_checkstackP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z15lua_pushintegerP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef) local_unnamed_addr #1

declare noundef ptr @_Z17luaL_buffinitsizeP9lua_StateP11luaL_Strbufm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z19luaL_pushresultsizeP11luaL_Strbufm(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL12str_find_auxP9lua_Statei(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %2 = alloca %struct.MatchState, align 8         ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) ; 8 uses
  %i.d = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b) ; 9 uses
  %i.e = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef 1) ; 2 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !12
  %i.g = icmp slt i32 %i.e, 0
  %i.h = trunc i64 %i.f to i32
  %i.i = add nsw i32 %i.h, 1                      ; 2 uses
  %i.j = select i1 %i.g, i32 %i.i, i32 0
  %.0.i = add nsw i32 %i.j, %i.e                  ; 3 uses
  %i.k = icmp slt i32 %.0.i, 1
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp sgt i32 %.0.i, %i.i
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_Z11lua_pushnilP9lua_State(ptr noundef %0)
  br label %bb.n

bb.d:                                             ; preds = %bb.a, %bb.b
  %.048 = phi i32 [ %.0.i, %bb.b ], [ 1, %bb.a ]  ; 2 uses
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %._ZL10nospecialsPKcm.exit.thread_crit_edge, label %bb.e

._ZL10nospecialsPKcm.exit.thread_crit_edge:       ; preds = %bb.d
  %.pre92.pre = load i64, ptr %i.b, align 8, !tbaa !12
  br label %_ZL10nospecialsPKcm.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.m = call noundef i32 @_Z13lua_tobooleanP9lua_Statei(ptr noundef %0, i32 noundef 4)
  %.not56 = icmp eq i32 %i.m, 0
  %.pre = load i64, ptr %i.b, align 8, !tbaa !12  ; 5 uses
  br i1 %.not56, label %.preheader, label %_ZL10nospecialsPKcm.exit

.preheader:                                       ; preds = %bb.e, %bb.f
  %.0.i64 = phi i64 [ %i.r, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.i64 ; 2 uses
  %i.o = call noundef ptr @strpbrk(ptr noundef readonly %i.n, ptr noundef nonnull @.str.20) #15
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.f, label %_ZL10nospecialsPKcm.exit.thread

bb.f:                                             ; preds = %.preheader
  %i.p = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.n) #15
  %i.q = add i64 %.0.i64, 1
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %.not9.i = icmp ugt i64 %i.r, %.pre
  br i1 %.not9.i, label %_ZL10nospecialsPKcm.exit, label %.preheader, !llvm.loop !72

_ZL10nospecialsPKcm.exit:                         ; preds = %bb.f, %bb.e
  %i.s = zext nneg i32 %.048 to i64               ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1 ; 2 uses
  %i.v = load i64, ptr %i.a, align 8, !tbaa !12
  %i.w = sub i64 %i.v, %i.s
  %i.x = add i64 %i.w, 1                          ; 2 uses
  %i.y = icmp eq i64 %.pre, 0
  br i1 %i.y, label %_ZL8lmemfindPKcmS0_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZL10nospecialsPKcm.exit
  %i.z = icmp ugt i64 %.pre, %i.x
  br i1 %i.z, label %.critedge62, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.aa = add i64 %.pre, -1                       ; 2 uses
  %i.ab = sub nuw i64 %i.x, %i.aa
  %i.ac = load i8, ptr %i.d, align 1, !tbaa !13
  %i.ad = sext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %.02029.i = phi i64 [ %i.ab, %.lr.ph.i ], [ %i.ak, %bb.j ] ; 2 uses
  %.02128.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.ag, %bb.j ] ; 2 uses
  %i.af = call noundef ptr @memchr(ptr noundef nonnull %.02128.i, i32 noundef %i.ad, i64 noundef %.02029.i) #15 ; 3 uses
  %.not25.i = icmp eq ptr %i.af, null
  br i1 %.not25.i, label %.critedge62, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 3 uses
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.ag, ptr nonnull readonly %i.ae, i64 %i.aa)
  %i.ah = icmp eq i32 %bcmp.i, 0
  br i1 %i.ah, label %_ZL8lmemfindPKcmS0_m.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = ptrtoint ptr %i.ag to i64
end_hunk_0
begin_hunk_1_@_ZL9getoptionP6HeaderPPKcPi:bb.a
  %i.ax = phi ptr [ %i.az, %.preheader.i.i45 ], [ %i.b, %bb.v ] ; 2 uses
  %.0.i.i46 = phi i32 [ %i.bd, %.preheader.i.i45 ], [ 0, %bb.v ]
  %i.ay = mul nsw i32 %.0.i.i46, 10
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 3 uses
  store ptr %i.az, ptr %1, align 8, !tbaa !36
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !13
  %i.bb = sext i8 %i.ba to i32
  %i.bc = add i32 %i.ay, -48
  %i.bd = add i32 %i.bc, %i.bb                    ; 6 uses
  %i.be = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bf = sext i8 %i.be to i32
  %i.bg = add nsw i32 %i.bf, -48
  %i.bh = icmp ult i32 %i.bg, 10                  ; 2 uses
  %i.bi = icmp slt i32 %i.bd, 214748364
  %i.bj = select i1 %i.bh, i1 %i.bi, i1 false
  br i1 %i.bj, label %.preheader.i.i45, label %bb.w, !llvm.loop !114

bb.w:                                             ; preds = %.preheader.i.i45
  %i.bk = icmp sgt i32 %i.bd, 1073741824
  %or.cond.not.i.i47 = or i1 %i.bk, %i.bh
  br i1 %or.cond.not.i.i47, label %bb.x, label %_ZL6getnumP6HeaderPPKci.exit.i48

bb.x:                                             ; preds = %bb.w
  %i.bl = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.bl, ptr noundef nonnull @.str.55) #14
  unreachable

_ZL6getnumP6HeaderPPKci.exit.i48:                 ; preds = %bb.w
  %i.bm = add i32 %i.bd, -17
  %or.cond.i50 = icmp ult i32 %i.bm, -16
  br i1 %or.cond.i50, label %bb.y, label %_ZL11getnumlimitP6HeaderPPKci.exit51

bb.y:                                             ; preds = %_ZL6getnumP6HeaderPPKci.exit.i48
  %i.bn = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.bn, ptr noundef nonnull @.str.54, i32 noundef %i.bd, i32 noundef 16) #14
  unreachable

_ZL11getnumlimitP6HeaderPPKci.exit51:             ; preds = %bb.v, %_ZL6getnumP6HeaderPPKci.exit.i48
  %.010.i.i4967 = phi i32 [ %i.bd, %_ZL6getnumP6HeaderPPKci.exit.i48 ], [ 4, %bb.v ]
  store i32 %.010.i.i4967, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.z:                                             ; preds = %bb.a
  %i.bo = load i8, ptr %i.b, align 1, !tbaa !13
  %i.bp = sext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -58
  %i.br = icmp ult i32 %i.bq, -10
  br i1 %i.br, label %_ZL6getnumP6HeaderPPKci.exit.thread, label %.preheader.i

_ZL6getnumP6HeaderPPKci.exit.thread:              ; preds = %bb.z
  store i32 -1, ptr %2, align 4, !tbaa !35
  br label %bb.ac

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %i.bs = phi ptr [ %i.bu, %.preheader.i ], [ %i.b, %bb.z ] ; 2 uses
  %.0.i = phi i32 [ %i.by, %.preheader.i ], [ 0, %bb.z ]
  %i.bt = mul nsw i32 %.0.i, 10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 3 uses
  store ptr %i.bu, ptr %1, align 8, !tbaa !36
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !13
  %i.bw = sext i8 %i.bv to i32
  %i.bx = add i32 %i.bt, -48
  %i.by = add i32 %i.bx, %i.bw                    ; 5 uses
  %i.bz = load i8, ptr %i.bu, align 1, !tbaa !13
  %i.ca = sext i8 %i.bz to i32
  %i.cb = add nsw i32 %i.ca, -48
  %i.cc = icmp ult i32 %i.cb, 10                  ; 2 uses
  %i.cd = icmp slt i32 %i.by, 214748364
  %i.ce = select i1 %i.cc, i1 %i.cd, i1 false
  br i1 %i.ce, label %.preheader.i, label %bb.aa, !llvm.loop !114

bb.aa:                                            ; preds = %.preheader.i
  %i.cf = icmp sgt i32 %i.by, 1073741824
  %or.cond.not.i = or i1 %i.cf, %i.cc
  br i1 %or.cond.not.i, label %bb.ab, label %_ZL6getnumP6HeaderPPKci.exit

bb.ab:                                            ; preds = %bb.aa
  %i.cg = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.cg, ptr noundef nonnull @.str.55) #14
  unreachable

_ZL6getnumP6HeaderPPKci.exit:                     ; preds = %bb.aa
  store i32 %i.by, ptr %2, align 4, !tbaa !35
  %i.ch = icmp eq i32 %i.by, -1
  br i1 %i.ch, label %bb.ac, label %bb.ao

bb.ac:                                            ; preds = %_ZL6getnumP6HeaderPPKci.exit.thread, %_ZL6getnumP6HeaderPPKci.exit
  %i.ci = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.ci, ptr noundef nonnull @.str.52) #14
  unreachable

bb.ad:                                            ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.ae:                                            ; preds = %bb.a
  br label %bb.ao

bb.af:                                            ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.cj, align 8, !tbaa !39
  br label %bb.an

bb.ag:                                            ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.ck, align 8, !tbaa !39
  br label %bb.an

bb.ah:                                            ; preds = %bb.a
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.cl, align 8, !tbaa !39
  br label %bb.an

bb.ai:                                            ; preds = %bb.a
  %i.cm = load i8, ptr %i.b, align 1, !tbaa !13
  %i.cn = sext i8 %i.cm to i32
  %i.co = add nsw i32 %i.cn, -58
  %i.cp = icmp ult i32 %i.co, -10
  br i1 %i.cp, label %_ZL11getnumlimitP6HeaderPPKci.exit58, label %.preheader.i.i52

.preheader.i.i52:                                 ; preds = %bb.ai, %.preheader.i.i52
  %i.cq = phi ptr [ %i.cs, %.preheader.i.i52 ], [ %i.b, %bb.ai ] ; 2 uses
  %.0.i.i53 = phi i32 [ %i.cw, %.preheader.i.i52 ], [ 0, %bb.ai ]
  %i.cr = mul nsw i32 %.0.i.i53, 10
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 1 ; 3 uses
  store ptr %i.cs, ptr %1, align 8, !tbaa !36
  %i.ct = load i8, ptr %i.cq, align 1, !tbaa !13
  %i.cu = sext i8 %i.ct to i32
  %i.cv = add i32 %i.cr, -48
  %i.cw = add i32 %i.cv, %i.cu                    ; 6 uses
  %i.cx = load i8, ptr %i.cs, align 1, !tbaa !13
  %i.cy = sext i8 %i.cx to i32
  %i.cz = add nsw i32 %i.cy, -48
  %i.da = icmp ult i32 %i.cz, 10                  ; 2 uses
  %i.db = icmp slt i32 %i.cw, 214748364
  %i.dc = select i1 %i.da, i1 %i.db, i1 false
  br i1 %i.dc, label %.preheader.i.i52, label %bb.aj, !llvm.loop !114

bb.aj:                                            ; preds = %.preheader.i.i52
  %i.dd = icmp sgt i32 %i.cw, 1073741824
  %or.cond.not.i.i54 = or i1 %i.dd, %i.da
  br i1 %or.cond.not.i.i54, label %bb.ak, label %_ZL6getnumP6HeaderPPKci.exit.i55

bb.ak:                                            ; preds = %bb.aj
  %i.de = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.de, ptr noundef nonnull @.str.55) #14
  unreachable

_ZL6getnumP6HeaderPPKci.exit.i55:                 ; preds = %bb.aj
  %i.df = add i32 %i.cw, -17
  %or.cond.i57 = icmp ult i32 %i.df, -16
  br i1 %or.cond.i57, label %bb.al, label %_ZL11getnumlimitP6HeaderPPKci.exit58

bb.al:                                            ; preds = %_ZL6getnumP6HeaderPPKci.exit.i55
  %i.dg = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.dg, ptr noundef nonnull @.str.54, i32 noundef %i.cw, i32 noundef 16) #14
  unreachable

_ZL11getnumlimitP6HeaderPPKci.exit58:             ; preds = %bb.ai, %_ZL6getnumP6HeaderPPKci.exit.i55
  %.010.i.i5671 = phi i32 [ %i.cw, %_ZL6getnumP6HeaderPPKci.exit.i55 ], [ 8, %bb.ai ]
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.010.i.i5671, ptr %i.dh, align 4, !tbaa !40
  br label %bb.an

bb.am:                                            ; preds = %bb.a
  %i.di = sext i8 %i.c to i32
  %i.dj = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.dj, ptr noundef nonnull @.str.53, i32 noundef %i.di) #14
  unreachable

bb.an:                                            ; preds = %_ZL11getnumlimitP6HeaderPPKci.exit58, %bb.ah, %bb.ag, %bb.af, %bb.a
  br label %bb.ao

bb.ao:                                            ; preds = %bb.a, %_ZL6getnumP6HeaderPPKci.exit, %bb.an, %bb.ae, %bb.ad, %_ZL11getnumlimitP6HeaderPPKci.exit51, %_ZL11getnumlimitP6HeaderPPKci.exit44, %_ZL11getnumlimitP6HeaderPPKci.exit, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 2, %bb.k ], [ 2, %bb.l ], [ 2, %bb.m ], [ 0, %_ZL11getnumlimitP6HeaderPPKci.exit ], [ 1, %_ZL11getnumlimitP6HeaderPPKci.exit44 ], [ 4, %_ZL11getnumlimitP6HeaderPPKci.exit51 ], [ 8, %bb.an ], [ 3, %_ZL6getnumP6HeaderPPKci.exit ], [ 6, %bb.ad ], [ 7, %bb.ae ], [ 5, %bb.a ]
  ret i32 %.0
}

declare void @_Z14lua_pushnumberP9lua_Stated(ptr noundef, double noundef) local_unnamed_addr #1

declare noundef i32 @_Z16lua_setmetatableP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z12lua_setfieldP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !14}
!1 = distinct !{!1, !14}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!7, !7, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"p1 _ZTS9lua_State", !15, i64 0}
!18 = !{!"p1 _ZTS7TString", !15, i64 0}
!19 = !{!"_ZTS11luaL_Strbuf", !16, i64 0, !16, i64 8, !17, i64 16, !18, i64 24, !7, i64 32}
!20 = !{!19, !16, i64 0}
!21 = !{!19, !16, i64 8}
!22 = !{!"_ZTS10MatchState", !8, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !17, i64 32, !8, i64 40, !7, i64 48}
!23 = !{!22, !17, i64 32}
!24 = !{!22, !8, i64 0}
!25 = !{!22, !16, i64 8}
!26 = !{!22, !16, i64 16}
!27 = !{!22, !16, i64 24}
!28 = !{!22, !8, i64 40}
!29 = !{!"_ZTSN10MatchStateUt_E", !16, i64 0, !11, i64 8}
!30 = !{!29, !11, i64 8}
!31 = !{!29, !16, i64 0}
!32 = !{!"llvm.loop.peeled.count", i32 1}
!33 = !{!"p1 int", !15, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!8, !8, i64 0}
!36 = !{!16, !16, i64 0}
!37 = !{!"_ZTS6Header", !17, i64 0, !8, i64 8, !8, i64 12}
!38 = !{!37, !17, i64 0}
!39 = !{!37, !8, i64 8}
!40 = !{!37, !8, i64 12}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!"short", !7, i64 0}
!43 = distinct !{!43, !14}
!44 = distinct !{!44, !14}
!45 = distinct !{!45, !14}
!46 = distinct !{!46, !14}
!47 = distinct !{!47, !14}
!48 = distinct !{!48, !14, !32}
!49 = distinct !{!49, !14}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = distinct !{!52, !14}
!53 = distinct !{!53, !14}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
!56 = distinct !{!56, !14}
!57 = distinct !{!57, !41}
!58 = distinct !{!58, !41}
!59 = distinct !{!59, !41}
!60 = distinct !{!60, !41}
!61 = distinct !{!61, !41}
!62 = distinct !{!62, !41}
!63 = distinct !{!63, !14}
!64 = distinct !{!64, !41}
!65 = distinct !{!65, !41}
!66 = distinct !{!66, !14}
!67 = distinct !{!67, !14}
!68 = distinct !{!68, !14}
!69 = distinct !{!69, !41}
!70 = distinct !{!70, !41}
!71 = distinct !{!71, !14}
!72 = distinct !{!72, !14}
!73 = distinct !{!73, !14}
!74 = distinct !{!74, !14}
!75 = distinct !{null}
!76 = distinct !{!76, !14}
!77 = distinct !{null}
!78 = distinct !{!78, !14}
!79 = distinct !{!79, !14}
!80 = distinct !{!80, !14}
!81 = distinct !{null}
!82 = distinct !{!82, !14}
!83 = distinct !{!83, !14}
!84 = distinct !{null}
!85 = !{!"bool", !7, i64 0}
!86 = !{!"p1 _ZTS10lua_TValue", !15, i64 0}
!87 = !{!"p1 _ZTS12global_State", !15, i64 0}
!88 = !{!"p1 _ZTS8CallInfo", !15, i64 0}
!89 = !{!"p1 _ZTS8LuaTable", !15, i64 0}
!90 = !{!"p1 _ZTS5UpVal", !15, i64 0}
!91 = !{!"p1 _ZTS8GCObject", !15, i64 0}
!92 = !{!"_ZTS9lua_State", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !85, i64 5, !85, i64 6, !86, i64 8, !86, i64 16, !87, i64 24, !88, i64 32, !86, i64 40, !86, i64 48, !88, i64 56, !88, i64 64, !8, i64 72, !8, i64 76, !42, i64 80, !42, i64 82, !8, i64 84, !89, i64 88, !90, i64 96, !91, i64 104, !18, i64 112, !15, i64 120}
!93 = !{!92, !87, i64 24}
!94 = !{!"any p2 pointer", !15, i64 0}
!95 = !{!"p2 _ZTS7TString", !94, i64 0}
!96 = !{!"_ZTS11stringtable", !95, i64 0, !8, i64 8, !8, i64 12}
!97 = !{!"p1 _ZTS8lua_Page", !15, i64 0}
!98 = !{!"_ZTS5UpVal", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !86, i64 8, !7, i64 16}
!99 = !{!"_ZTS10lua_TValue", !7, i64 0, !7, i64 8, !8, i64 12}
!100 = !{!"p1 _ZTS10lua_jmpbuf", !15, i64 0}
!101 = !{!"_ZTS13lua_Callbacks", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72}
!102 = !{!"_ZTS22lua_ExecutionCallbacks", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64}
!103 = !{!"double", !7, i64 0}
!104 = !{!"_ZTS7GCStats", !7, i64 0, !8, i64 128, !8, i64 132, !11, i64 136, !11, i64 144, !11, i64 152, !103, i64 160, !103, i64 168, !103, i64 176}
!105 = !{!"_ZTS12global_State", !96, i64 0, !15, i64 16, !15, i64 24, !7, i64 32, !7, i64 33, !91, i64 40, !91, i64 48, !91, i64 56, !11, i64 64, !11, i64 72, !8, i64 80, !8, i64 84, !8, i64 88, !7, i64 96, !7, i64 416, !97, i64 736, !97, i64 744, !97, i64 752, !17, i64 760, !98, i64 768, !7, i64 808, !7, i64 920, !7, i64 1032, !99, i64 1200, !99, i64 1216, !8, i64 1232, !100, i64 1240, !11, i64 1248, !7, i64 1256, !101, i64 1288, !102, i64 1368, !7, i64 1440, !7, i64 1952, !7, i64 11312, !7, i64 13360, !7, i64 14384, !7, i64 15408, !99, i64 16432, !8, i64 16448, !15, i64 16456, !7, i64 16464, !7, i64 17488, !104, i64 18528, !8, i64 18712}
!106 = !{!105, !15, i64 1296}
!107 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!108 = !{!92, !42, i64 80}
!109 = !{!"p1 short", !15, i64 0}
!110 = !{!109, !109, i64 0}
!111 = !{!42, !42, i64 0}
!112 = distinct !{!112, !14, !32}
!113 = distinct !{!113, !14}
!114 = distinct !{!114, !14}
end_hunk_1
