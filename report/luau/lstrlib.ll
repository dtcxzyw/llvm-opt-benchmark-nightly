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
  %.058180 = phi i32 [ %i.qr, %bb.z ], [ %spec.store.select, %bb.c ] ; 2 uses
  %.059179 = phi i32 [ %.160, %bb.z ], [ 0, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.r = sext i32 %.058180 to i64                 ; 2 uses
  %i.s = call fastcc noundef i32 @_ZL10getdetailsP6HeadermPPKcPiS4_(ptr noundef %1, i64 noundef %i.r, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.d)
  %i.t = load i32, ptr %i.d, align 4, !tbaa !35   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = load i32, ptr %i.c, align 4, !tbaa !35
  %i.w = freeze i32 %i.v                          ; 76 uses
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
  %i.ah = zext nneg i32 %i.w to i64               ; 10 uses
  %i.ai = call i64 @llvm.umin.i64(i64 %i.ah, i64 8) ; 16 uses
  br i1 %.not41.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.aj = sub nsw i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %i.ae, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !13
  %i.am = zext i8 %i.al to i64                    ; 2 uses
  %.not327.a = icmp eq i32 %i.w, 1
  br i1 %.not327.a, label %._crit_edge.i, label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %.lr.ph.split.us.i
  %indvars.iv.next53.i = add nsw i64 %i.ai, -1
  %i.an = shl nuw nsw i64 %i.am, 8
  %i.ao = sub nsw i64 %i.ah, %indvars.iv.next53.i
  %i.ap = getelementptr inbounds i8, ptr %i.ae, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.ar = zext i8 %i.aq to i64
  %i.as = or disjoint i64 %i.an, %i.ar            ; 2 uses
  %i.at = icmp ugt i32 %i.w, 2
  br i1 %i.at, label %.lr.ph.split.us.i.2, label %._crit_edge.i

.lr.ph.split.us.i.2:                              ; preds = %.lr.ph.split.us.i.1
  %indvars.iv.next53.i.1 = add nsw i64 %i.ai, -2
  %i.au = shl nuw nsw i64 %i.as, 8
  %i.av = sub nsw i64 %i.ah, %indvars.iv.next53.i.1
  %i.aw = getelementptr inbounds i8, ptr %i.ae, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = zext i8 %i.ax to i64
  %i.az = or disjoint i64 %i.au, %i.ay            ; 2 uses
  %.not328.a = icmp eq i32 %i.w, 3
  br i1 %.not328.a, label %._crit_edge.i, label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %.lr.ph.split.us.i.2
  %indvars.iv.next53.i.2 = add nsw i64 %i.ai, -3
  %i.ba = shl nuw nsw i64 %i.az, 8
  %i.bb = sub nsw i64 %i.ah, %indvars.iv.next53.i.2
  %i.bc = getelementptr inbounds i8, ptr %i.ae, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  %i.be = zext i8 %i.bd to i64
  %i.bf = or disjoint i64 %i.ba, %i.be            ; 2 uses
  %i.bg = icmp ugt i32 %i.w, 4
  br i1 %i.bg, label %.lr.ph.split.us.i.4, label %._crit_edge.i

.lr.ph.split.us.i.4:                              ; preds = %.lr.ph.split.us.i.3
  %indvars.iv.next53.i.3 = add nsw i64 %i.ai, -4
  %i.bh = shl i64 %i.bf, 8
  %i.bi = sub nsw i64 %i.ah, %indvars.iv.next53.i.3
  %i.bj = getelementptr inbounds i8, ptr %i.ae, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = zext i8 %i.bk to i64
  %i.bm = or disjoint i64 %i.bh, %i.bl            ; 2 uses
  %.not329 = icmp eq i32 %i.w, 5
  br i1 %.not329, label %._crit_edge.i, label %.lr.ph.split.us.i.5

.lr.ph.split.us.i.5:                              ; preds = %.lr.ph.split.us.i.4
  %indvars.iv.next53.i.4 = add nsw i64 %i.ai, -5
  %i.bn = shl i64 %i.bm, 8
  %i.bo = sub nsw i64 %i.ah, %indvars.iv.next53.i.4
  %i.bp = getelementptr inbounds i8, ptr %i.ae, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !13
  %i.br = zext i8 %i.bq to i64
  %i.bs = or disjoint i64 %i.bn, %i.br            ; 2 uses
  %i.bt = icmp ugt i32 %i.w, 6
  br i1 %i.bt, label %.lr.ph.split.us.i.6, label %._crit_edge.i

.lr.ph.split.us.i.6:                              ; preds = %.lr.ph.split.us.i.5
  %indvars.iv.next53.i.5 = add nsw i64 %i.ai, -6
  %i.bu = shl i64 %i.bs, 8
  %i.bv = sub nsw i64 %i.ah, %indvars.iv.next53.i.5
  %i.bw = getelementptr inbounds i8, ptr %i.ae, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !13
  %i.by = zext i8 %i.bx to i64
  %i.bz = or disjoint i64 %i.bu, %i.by            ; 2 uses
  %.not330 = icmp eq i32 %i.w, 7
  br i1 %.not330, label %._crit_edge.i, label %.lr.ph.split.us.i.7

.lr.ph.split.us.i.7:                              ; preds = %.lr.ph.split.us.i.6
  %indvars.iv.next53.i.6 = add nsw i64 %i.ai, -7
  %i.ca = shl i64 %i.bz, 8
  %i.cb = sub nsw i64 %i.ah, %indvars.iv.next53.i.6
  %i.cc = getelementptr inbounds i8, ptr %i.ae, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !13
  %i.ce = zext i8 %i.cd to i64
  %i.cf = or disjoint i64 %i.ca, %i.ce
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.cg = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !13
  %i.cj = zext i8 %i.ci to i64                    ; 2 uses
  %.not323.a = icmp eq i32 %i.w, 1
  br i1 %.not323.a, label %._crit_edge.i, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  %i.ck = shl nuw nsw i64 %i.cj, 8
  %i.cl = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.cm = getelementptr i8, ptr %i.cl, i64 -2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %i.co = zext i8 %i.cn to i64
  %i.cp = or disjoint i64 %i.ck, %i.co            ; 2 uses
  %i.cq = icmp ugt i32 %i.w, 2
  br i1 %i.cq, label %.lr.ph.split.i.2, label %._crit_edge.i

.lr.ph.split.i.2:                                 ; preds = %.lr.ph.split.i.1
  %i.cr = shl nuw nsw i64 %i.cp, 8
  %i.cs = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.ct = getelementptr i8, ptr %i.cs, i64 -3
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !13
  %i.cv = zext i8 %i.cu to i64
  %i.cw = or disjoint i64 %i.cr, %i.cv            ; 2 uses
  %.not324.a = icmp eq i32 %i.w, 3
  br i1 %.not324.a, label %._crit_edge.i, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %.lr.ph.split.i.2
  %i.cx = shl nuw nsw i64 %i.cw, 8
  %i.cy = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.cz = getelementptr i8, ptr %i.cy, i64 -4
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !13
  %i.db = zext i8 %i.da to i64
  %i.dc = or disjoint i64 %i.cx, %i.db            ; 2 uses
  %i.dd = icmp ugt i32 %i.w, 4
  br i1 %i.dd, label %.lr.ph.split.i.4, label %._crit_edge.i

.lr.ph.split.i.4:                                 ; preds = %.lr.ph.split.i.3
  %i.de = shl i64 %i.dc, 8
  %i.df = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.dg = getelementptr i8, ptr %i.df, i64 -5
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !13
  %i.di = zext i8 %i.dh to i64
  %i.dj = or disjoint i64 %i.de, %i.di            ; 2 uses
  %.not325 = icmp eq i32 %i.w, 5
  br i1 %.not325, label %._crit_edge.i, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %.lr.ph.split.i.4
  %i.dk = shl i64 %i.dj, 8
  %i.dl = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.dm = getelementptr i8, ptr %i.dl, i64 -6
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !13
  %i.do = zext i8 %i.dn to i64
  %i.dp = or disjoint i64 %i.dk, %i.do            ; 2 uses
  %i.dq = icmp ugt i32 %i.w, 6
  br i1 %i.dq, label %.lr.ph.split.i.6, label %._crit_edge.i

.lr.ph.split.i.6:                                 ; preds = %.lr.ph.split.i.5
  %i.dr = shl i64 %i.dp, 8
  %i.ds = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.dt = getelementptr i8, ptr %i.ds, i64 -7
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !13
  %i.dv = zext i8 %i.du to i64
  %i.dw = or disjoint i64 %i.dr, %i.dv            ; 2 uses
  %.not326 = icmp eq i32 %i.w, 7
  br i1 %.not326, label %._crit_edge.i, label %.lr.ph.split.i.7

.lr.ph.split.i.7:                                 ; preds = %.lr.ph.split.i.6
  %i.dx = shl i64 %i.dw, 8
  %i.dy = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.dz = getelementptr i8, ptr %i.dy, i64 -8
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !13
  %i.eb = zext i8 %i.ea to i64
  %i.ec = or disjoint i64 %i.dx, %i.eb
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.split.i, %.lr.ph.split.i.1, %.lr.ph.split.i.2, %.lr.ph.split.i.3, %.lr.ph.split.i.4, %.lr.ph.split.i.5, %.lr.ph.split.i.6, %.lr.ph.split.i.7, %.lr.ph.split.us.i, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.6, %.lr.ph.split.us.i.7
  %.0.lcssa.i = phi i64 [ %i.cf, %.lr.ph.split.us.i.7 ], [ %i.am, %.lr.ph.split.us.i ], [ %i.as, %.lr.ph.split.us.i.1 ], [ %i.az, %.lr.ph.split.us.i.2 ], [ %i.bf, %.lr.ph.split.us.i.3 ], [ %i.bm, %.lr.ph.split.us.i.4 ], [ %i.bs, %.lr.ph.split.us.i.5 ], [ %i.bz, %.lr.ph.split.us.i.6 ], [ %i.cj, %.lr.ph.split.i ], [ %i.cp, %.lr.ph.split.i.1 ], [ %i.cw, %.lr.ph.split.i.2 ], [ %i.dc, %.lr.ph.split.i.3 ], [ %i.dj, %.lr.ph.split.i.4 ], [ %i.dp, %.lr.ph.split.i.5 ], [ %i.dw, %.lr.ph.split.i.6 ], [ %i.ec, %.lr.ph.split.i.7 ] ; 5 uses
  %i.ed = icmp samesign ult i32 %i.w, 8
  br i1 %i.ed, label %._crit_edge.thread.i, label %bb.g

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.f
  %.0.lcssa62.i = phi i64 [ %.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.f ]
  %i.ee = shl nsw i32 %i.w, 3
  %i.ef = add nsw i32 %i.ee, -1
  %i.eg = zext nneg i32 %i.ef to i64
  %i.eh = shl nuw i64 1, %i.eg                    ; 2 uses
  %i.ei = xor i64 %.0.lcssa62.i, %i.eh
  %i.ej = sub i64 %i.ei, %i.eh
  br label %_ZL9unpackintP9lua_StatePKciii.exit

bb.g:                                             ; preds = %._crit_edge.i
  %.not.i = icmp eq i32 %i.w, 8
  br i1 %.not.i, label %_ZL9unpackintP9lua_StatePKciii.exit, label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %bb.g
  %i.ek = icmp sgt i64 %.0.lcssa.i, -1
  %i.el = select i1 %i.ek, i32 0, i32 255         ; 2 uses
  br i1 %.not41.i, label %.lr.ph46.split.us.i, label %.lr.ph46.split.i.preheader

.lr.ph46.split.i.preheader:                       ; preds = %.lr.ph46.i
  %wide.trip.count215 = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.i

.lr.ph46.split.us.i:                              ; preds = %.lr.ph46.i, %bb.h
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %bb.h ], [ 8, %.lr.ph46.i ] ; 2 uses
  %i.em = trunc nuw nsw i64 %indvars.iv58.i to i32
  %i.en = xor i32 %i.em, -1
  %i.eo = add nsw i32 %i.w, %i.en
  %i.ep = sext i32 %i.eo to i64
  %i.eq = getelementptr inbounds i8, ptr %i.ae, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !13
  %i.es = zext i8 %i.er to i32
  %.not39.us.i = icmp eq i32 %i.el, %i.es
  br i1 %.not39.us.i, label %bb.h, label %.split.us.i

bb.h:                                             ; preds = %.lr.ph46.split.us.i
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond217.not = icmp eq i64 %indvars.iv.next59.i, %i.ah
  br i1 %exitcond217.not, label %_ZL9unpackintP9lua_StatePKciii.exit, label %.lr.ph46.split.us.i, !llvm.loop !68

bb.i:                                             ; preds = %.lr.ph46.split.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next55.i, %wide.trip.count215
  br i1 %exitcond216.not, label %_ZL9unpackintP9lua_StatePKciii.exit, label %.lr.ph46.split.i, !llvm.loop !68

.lr.ph46.split.i:                                 ; preds = %.lr.ph46.split.i.preheader, %bb.i
  %indvars.iv54.i = phi i64 [ %indvars.iv.next55.i, %bb.i ], [ 8, %.lr.ph46.split.i.preheader ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv54.i
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !13
  %i.ev = zext i8 %i.eu to i32
  %.not39.i = icmp eq i32 %i.el, %i.ev
  br i1 %.not39.i, label %bb.i, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph46.split.i, %.lr.ph46.split.us.i
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.w) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit:              ; preds = %bb.i, %bb.h, %._crit_edge.thread.i, %bb.g
  %.1.i = phi i64 [ %i.ej, %._crit_edge.thread.i ], [ %.0.lcssa.i, %bb.h ], [ %.0.lcssa.i, %bb.g ], [ %.0.lcssa.i, %bb.i ]
  %i.ew = sitofp i64 %.1.i to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.ew)
  br label %bb.z

bb.j:                                             ; preds = %bb.e
  %i.ex = sext i32 %i.ab to i64
  %i.ey = getelementptr inbounds i8, ptr %i.f, i64 %i.ex ; 18 uses
  %i.ez = icmp sgt i32 %i.w, 0
  br i1 %i.ez, label %.lr.ph.i69, label %_ZL9unpackintP9lua_StatePKciii.exit94

.lr.ph.i69:                                       ; preds = %bb.j
  %i.fa = load i32, ptr %i.o, align 8, !tbaa !39
  %.not41.i70 = icmp eq i32 %i.fa, 0
  %i.fb = zext nneg i32 %i.w to i64               ; 10 uses
  %i.fc = call i64 @llvm.umin.i64(i64 %i.fb, i64 8) ; 16 uses
  br i1 %.not41.i70, label %.lr.ph.split.us.i90, label %.lr.ph.split.i71

.lr.ph.split.us.i90:                              ; preds = %.lr.ph.i69
  %i.fd = sub nsw i64 %i.fb, %i.fc
  %i.fe = getelementptr inbounds i8, ptr %i.ey, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !13
  %i.fg = zext i8 %i.ff to i64                    ; 2 uses
  %.not319.a = icmp eq i32 %i.w, 1
  br i1 %.not319.a, label %._crit_edge.i75, label %.lr.ph.split.us.i90.1

.lr.ph.split.us.i90.1:                            ; preds = %.lr.ph.split.us.i90
  %indvars.iv.next53.i93 = add nsw i64 %i.fc, -1
  %i.fh = shl nuw nsw i64 %i.fg, 8
  %i.fi = sub nsw i64 %i.fb, %indvars.iv.next53.i93
  %i.fj = getelementptr inbounds i8, ptr %i.ey, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !13
  %i.fl = zext i8 %i.fk to i64
  %i.fm = or disjoint i64 %i.fh, %i.fl            ; 2 uses
  %i.fn = icmp ugt i32 %i.w, 2
  br i1 %i.fn, label %.lr.ph.split.us.i90.2, label %._crit_edge.i75

.lr.ph.split.us.i90.2:                            ; preds = %.lr.ph.split.us.i90.1
  %indvars.iv.next53.i93.1 = add nsw i64 %i.fc, -2
  %i.fo = shl nuw nsw i64 %i.fm, 8
  %i.fp = sub nsw i64 %i.fb, %indvars.iv.next53.i93.1
  %i.fq = getelementptr inbounds i8, ptr %i.ey, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !13
  %i.fs = zext i8 %i.fr to i64
  %i.ft = or disjoint i64 %i.fo, %i.fs            ; 2 uses
  %.not320.a = icmp eq i32 %i.w, 3
  br i1 %.not320.a, label %._crit_edge.i75, label %.lr.ph.split.us.i90.3

.lr.ph.split.us.i90.3:                            ; preds = %.lr.ph.split.us.i90.2
  %indvars.iv.next53.i93.2 = add nsw i64 %i.fc, -3
  %i.fu = shl nuw nsw i64 %i.ft, 8
  %i.fv = sub nsw i64 %i.fb, %indvars.iv.next53.i93.2
  %i.fw = getelementptr inbounds i8, ptr %i.ey, i64 %i.fv
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !13
  %i.fy = zext i8 %i.fx to i64
  %i.fz = or disjoint i64 %i.fu, %i.fy            ; 2 uses
  %i.ga = icmp ugt i32 %i.w, 4
  br i1 %i.ga, label %.lr.ph.split.us.i90.4, label %._crit_edge.i75

.lr.ph.split.us.i90.4:                            ; preds = %.lr.ph.split.us.i90.3
  %indvars.iv.next53.i93.3 = add nsw i64 %i.fc, -4
  %i.gb = shl i64 %i.fz, 8
  %i.gc = sub nsw i64 %i.fb, %indvars.iv.next53.i93.3
  %i.gd = getelementptr inbounds i8, ptr %i.ey, i64 %i.gc
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !13
  %i.gf = zext i8 %i.ge to i64
  %i.gg = or disjoint i64 %i.gb, %i.gf            ; 2 uses
  %.not321 = icmp eq i32 %i.w, 5
  br i1 %.not321, label %._crit_edge.i75, label %.lr.ph.split.us.i90.5

.lr.ph.split.us.i90.5:                            ; preds = %.lr.ph.split.us.i90.4
  %indvars.iv.next53.i93.4 = add nsw i64 %i.fc, -5
  %i.gh = shl i64 %i.gg, 8
  %i.gi = sub nsw i64 %i.fb, %indvars.iv.next53.i93.4
  %i.gj = getelementptr inbounds i8, ptr %i.ey, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !13
  %i.gl = zext i8 %i.gk to i64
  %i.gm = or disjoint i64 %i.gh, %i.gl            ; 2 uses
  %i.gn = icmp ugt i32 %i.w, 6
  br i1 %i.gn, label %.lr.ph.split.us.i90.6, label %._crit_edge.i75

.lr.ph.split.us.i90.6:                            ; preds = %.lr.ph.split.us.i90.5
  %indvars.iv.next53.i93.5 = add nsw i64 %i.fc, -6
  %i.go = shl i64 %i.gm, 8
  %i.gp = sub nsw i64 %i.fb, %indvars.iv.next53.i93.5
  %i.gq = getelementptr inbounds i8, ptr %i.ey, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !13
  %i.gs = zext i8 %i.gr to i64
  %i.gt = or disjoint i64 %i.go, %i.gs            ; 2 uses
  %.not322 = icmp eq i32 %i.w, 7
  br i1 %.not322, label %._crit_edge.i75, label %.lr.ph.split.us.i90.7

.lr.ph.split.us.i90.7:                            ; preds = %.lr.ph.split.us.i90.6
  %indvars.iv.next53.i93.6 = add nsw i64 %i.fc, -7
  %i.gu = shl i64 %i.gt, 8
  %i.gv = sub nsw i64 %i.fb, %indvars.iv.next53.i93.6
  %i.gw = getelementptr inbounds i8, ptr %i.ey, i64 %i.gv
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !13
  %i.gy = zext i8 %i.gx to i64
  %i.gz = or disjoint i64 %i.gu, %i.gy
  br label %._crit_edge.i75

.lr.ph.split.i71:                                 ; preds = %.lr.ph.i69
  %i.ha = getelementptr i8, ptr %i.ey, i64 %i.fc
  %i.hb = getelementptr i8, ptr %i.ha, i64 -1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !13
  %i.hd = zext i8 %i.hc to i64                    ; 2 uses
  %.not315.a = icmp eq i32 %i.w, 1
  br i1 %.not315.a, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.1

.lr.ph.split.i71.1:                               ; preds = %.lr.ph.split.i71
  %i.he = shl nuw nsw i64 %i.hd, 8
  %i.hf = getelementptr i8, ptr %i.ey, i64 %i.fc
  %i.hg = getelementptr i8, ptr %i.hf, i64 -2
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !13
  %i.hi = zext i8 %i.hh to i64
  %i.hj = or disjoint i64 %i.he, %i.hi            ; 2 uses
  %i.hk = icmp ugt i32 %i.w, 2
  br i1 %i.hk, label %.lr.ph.split.i71.2, label %._crit_edge.i75.thread

.lr.ph.split.i71.2:                               ; preds = %.lr.ph.split.i71.1
  %i.hl = shl nuw nsw i64 %i.hj, 8
  %i.hm = getelementptr i8, ptr %i.ey, i64 %i.fc
  %i.hn = getelementptr i8, ptr %i.hm, i64 -3
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !13
  %i.hp = zext i8 %i.ho to i64
  %i.hq = or disjoint i64 %i.hl, %i.hp            ; 2 uses
  %.not316.a = icmp eq i32 %i.w, 3
  br i1 %.not316.a, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.3

.lr.ph.split.i71.3:                               ; preds = %.lr.ph.split.i71.2
  %i.hr = shl nuw nsw i64 %i.hq, 8
  %i.hs = getelementptr i8, ptr %i.ey, i64 %i.fc
  %i.ht = getelementptr i8, ptr %i.hs, i64 -4
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !13
  %i.hv = zext i8 %i.hu to i64
  %i.hw = or disjoint i64 %i.hr, %i.hv            ; 2 uses
  %i.hx = icmp ugt i32 %i.w, 4
  br i1 %i.hx, label %.lr.ph.split.i71.4, label %._crit_edge.i75.thread

.lr.ph.split.i71.4:                               ; preds = %.lr.ph.split.i71.3
  %i.hy = shl i64 %i.hw, 8
  %i.hz = getelementptr i8, ptr %i.ey, i64 %i.fc
  %i.ia = getelementptr i8, ptr %i.hz, i64 -5
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !13
  %i.ic = zext i8 %i.ib to i64
  %i.id = or disjoint i64 %i.hy, %i.ic            ; 2 uses
  %.not317 = icmp eq i32 %i.w, 5
  br i1 %.not317, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.5

.lr.ph.split.i71.5:                               ; preds = %.lr.ph.split.i71.4
  %i.ie = shl i64 %i.id, 8
  %i.if = getelementptr i8, ptr %i.ey, i64 %i.fc
  %i.ig = getelementptr i8, ptr %i.if, i64 -6
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !13
  %i.ii = zext i8 %i.ih to i64
  %i.ij = or disjoint i64 %i.ie, %i.ii            ; 2 uses
  %i.ik = icmp ugt i32 %i.w, 6
  br i1 %i.ik, label %.lr.ph.split.i71.6, label %._crit_edge.i75.thread

.lr.ph.split.i71.6:                               ; preds = %.lr.ph.split.i71.5
  %i.il = shl i64 %i.ij, 8
  %i.im = getelementptr i8, ptr %i.ey, i64 %i.fc
  %i.in = getelementptr i8, ptr %i.im, i64 -7
  %i.io = load i8, ptr %i.in, align 1, !tbaa !13
  %i.ip = zext i8 %i.io to i64
  %i.iq = or disjoint i64 %i.il, %i.ip            ; 2 uses
  %.not318 = icmp eq i32 %i.w, 7
  br i1 %.not318, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.7

.lr.ph.split.i71.7:                               ; preds = %.lr.ph.split.i71.6
  %i.ir = shl i64 %i.iq, 8
  %i.is = getelementptr i8, ptr %i.ey, i64 %i.fc
  %i.it = getelementptr i8, ptr %i.is, i64 -8
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !13
  %i.iv = zext i8 %i.iu to i64
  %i.iw = or disjoint i64 %i.ir, %i.iv
  br label %._crit_edge.i75.thread

._crit_edge.i75:                                  ; preds = %.lr.ph.split.us.i90.7, %.lr.ph.split.us.i90.6, %.lr.ph.split.us.i90.5, %.lr.ph.split.us.i90.4, %.lr.ph.split.us.i90.3, %.lr.ph.split.us.i90.2, %.lr.ph.split.us.i90.1, %.lr.ph.split.us.i90
  %.lcssa289 = phi i64 [ %i.fg, %.lr.ph.split.us.i90 ], [ %i.fm, %.lr.ph.split.us.i90.1 ], [ %i.ft, %.lr.ph.split.us.i90.2 ], [ %i.fz, %.lr.ph.split.us.i90.3 ], [ %i.gg, %.lr.ph.split.us.i90.4 ], [ %i.gm, %.lr.ph.split.us.i90.5 ], [ %i.gt, %.lr.ph.split.us.i90.6 ], [ %i.gz, %.lr.ph.split.us.i90.7 ] ; 2 uses
  %i.ix = icmp samesign ult i32 %i.w, 9
  br i1 %i.ix, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.us.i86

._crit_edge.i75.thread:                           ; preds = %.lr.ph.split.i71.7, %.lr.ph.split.i71.6, %.lr.ph.split.i71.5, %.lr.ph.split.i71.4, %.lr.ph.split.i71.3, %.lr.ph.split.i71.2, %.lr.ph.split.i71.1, %.lr.ph.split.i71
  %.lcssa288 = phi i64 [ %i.hd, %.lr.ph.split.i71 ], [ %i.hj, %.lr.ph.split.i71.1 ], [ %i.hq, %.lr.ph.split.i71.2 ], [ %i.hw, %.lr.ph.split.i71.3 ], [ %i.id, %.lr.ph.split.i71.4 ], [ %i.ij, %.lr.ph.split.i71.5 ], [ %i.iq, %.lr.ph.split.i71.6 ], [ %i.iw, %.lr.ph.split.i71.7 ] ; 2 uses
  %i.iy = icmp samesign ult i32 %i.w, 9
  br i1 %i.iy, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.i80.preheader

.lr.ph46.split.i80.preheader:                     ; preds = %._crit_edge.i75.thread
  %wide.trip.count211 = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.i80

.lr.ph46.split.us.i86:                            ; preds = %._crit_edge.i75, %bb.k
  %indvars.iv58.i87 = phi i64 [ %indvars.iv.next59.i89, %bb.k ], [ 8, %._crit_edge.i75 ] ; 2 uses
  %i.iz = trunc nuw nsw i64 %indvars.iv58.i87 to i32
  %i.ja = xor i32 %i.iz, -1
  %i.jb = add nsw i32 %i.w, %i.ja
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds i8, ptr %i.ey, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !13
  %.not39.us.i88 = icmp eq i8 %i.je, 0
  br i1 %.not39.us.i88, label %bb.k, label %.split.us.i83

bb.k:                                             ; preds = %.lr.ph46.split.us.i86
  %indvars.iv.next59.i89 = add nuw nsw i64 %indvars.iv58.i87, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next59.i89, %i.fb
  br i1 %exitcond213.not, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.us.i86, !llvm.loop !68

bb.l:                                             ; preds = %.lr.ph46.split.i80
  %indvars.iv.next55.i84 = add nuw nsw i64 %indvars.iv54.i81, 1 ; 2 uses
  %exitcond212.not = icmp eq i64 %indvars.iv.next55.i84, %wide.trip.count211
  br i1 %exitcond212.not, label %_ZL9unpackintP9lua_StatePKciii.exit94, label %.lr.ph46.split.i80, !llvm.loop !68

.lr.ph46.split.i80:                               ; preds = %.lr.ph46.split.i80.preheader, %bb.l
  %indvars.iv54.i81 = phi i64 [ %indvars.iv.next55.i84, %bb.l ], [ 8, %.lr.ph46.split.i80.preheader ] ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ey, i64 %indvars.iv54.i81
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !13
  %.not39.i82 = icmp eq i8 %i.jg, 0
  br i1 %.not39.i82, label %bb.l, label %.split.us.i83

.split.us.i83:                                    ; preds = %.lr.ph46.split.i80, %.lr.ph46.split.us.i86
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.w) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit94:            ; preds = %bb.l, %bb.k, %._crit_edge.i75.thread, %._crit_edge.i75, %bb.j
  %.1.i68 = phi i64 [ %.lcssa288, %._crit_edge.i75.thread ], [ %.lcssa289, %._crit_edge.i75 ], [ 0, %bb.j ], [ %.lcssa289, %bb.k ], [ %.lcssa288, %bb.l ]
  %i.jh = uitofp i64 %.1.i68 to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.jh)
  br label %bb.z

bb.m:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.ji = sext i32 %i.ab to i64
  %i.jj = getelementptr inbounds i8, ptr %i.f, i64 %i.ji ; 4 uses
  %i.jk = load i32, ptr %i.o, align 8, !tbaa !39
  %i.jl = icmp eq i32 %i.jk, 1
  %.not1218.i = icmp eq i32 %i.w, 0               ; 2 uses
  br i1 %i.jl, label %.preheader.i, label %bb.n

.preheader.i:                                     ; preds = %bb.m
  br i1 %.not1218.i, label %_ZL14copywithendianPVcPVKcii.exit.thread, label %.lr.ph22.i.preheader

.lr.ph22.i.preheader:                             ; preds = %.preheader.i
  %xtraiter304 = and i32 %i.w, 7                  ; 2 uses
  %lcmp.mod305.not = icmp eq i32 %xtraiter304, 0
  br i1 %lcmp.mod305.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol

.lr.ph22.i.prol:                                  ; preds = %.lr.ph22.i.preheader, %.lr.ph22.i.prol
  %.021.i.prol = phi ptr [ %i.jp, %.lr.ph22.i.prol ], [ %2, %.lr.ph22.i.preheader ] ; 2 uses
  %.0820.i.prol = phi i32 [ %i.jm, %.lr.ph22.i.prol ], [ %i.w, %.lr.ph22.i.preheader ]
  %.01019.i.prol = phi ptr [ %i.jn, %.lr.ph22.i.prol ], [ %i.jj, %.lr.ph22.i.preheader ] ; 2 uses
  %prol.iter306 = phi i32 [ %prol.iter306.next, %.lr.ph22.i.prol ], [ 0, %.lr.ph22.i.preheader ]
  %i.jm = add nsw i32 %.0820.i.prol, -1           ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 1 ; 2 uses
  %i.jo = load volatile i8, ptr %.01019.i.prol, align 1, !tbaa !13
  %i.jp = getelementptr inbounds nuw i8, ptr %.021.i.prol, i64 1 ; 2 uses
  store volatile i8 %i.jo, ptr %.021.i.prol, align 1, !tbaa !13
  %prol.iter306.next = add i32 %prol.iter306, 1   ; 2 uses
  %prol.iter306.cmp.not = icmp eq i32 %prol.iter306.next, %xtraiter304
  br i1 %prol.iter306.cmp.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol, !llvm.loop !69

.lr.ph22.i.prol.loopexit:                         ; preds = %.lr.ph22.i.prol, %.lr.ph22.i.preheader
  %.021.i.unr = phi ptr [ %2, %.lr.ph22.i.preheader ], [ %i.jp, %.lr.ph22.i.prol ]
  %.0820.i.unr = phi i32 [ %i.w, %.lr.ph22.i.preheader ], [ %i.jm, %.lr.ph22.i.prol ]
  %.01019.i.unr = phi ptr [ %i.jj, %.lr.ph22.i.preheader ], [ %i.jn, %.lr.ph22.i.prol ]
  %i.jq = icmp ult i32 %i.w, 8
  br i1 %i.jq, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i

.lr.ph22.i:                                       ; preds = %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  %.021.i = phi ptr [ %i.kp, %.lr.ph22.i ], [ %.021.i.unr, %.lr.ph22.i.prol.loopexit ] ; 9 uses
  %.0820.i = phi i32 [ %i.km, %.lr.ph22.i ], [ %.0820.i.unr, %.lr.ph22.i.prol.loopexit ]
  %.01019.i = phi ptr [ %i.kn, %.lr.ph22.i ], [ %.01019.i.unr, %.lr.ph22.i.prol.loopexit ] ; 9 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.01019.i, i64 1
  %i.js = load volatile i8, ptr %.01019.i, align 1, !tbaa !13
  %i.jt = getelementptr inbounds nuw i8, ptr %.021.i, i64 1
  store volatile i8 %i.js, ptr %.021.i, align 1, !tbaa !13
  %i.ju = getelementptr inbounds nuw i8, ptr %.01019.i, i64 2
  %i.jv = load volatile i8, ptr %i.jr, align 1, !tbaa !13
  %i.jw = getelementptr inbounds nuw i8, ptr %.021.i, i64 2
  store volatile i8 %i.jv, ptr %i.jt, align 1, !tbaa !13
  %i.jx = getelementptr inbounds nuw i8, ptr %.01019.i, i64 3
  %i.jy = load volatile i8, ptr %i.ju, align 1, !tbaa !13
  %i.jz = getelementptr inbounds nuw i8, ptr %.021.i, i64 3
  store volatile i8 %i.jy, ptr %i.jw, align 1, !tbaa !13
  %i.ka = getelementptr inbounds nuw i8, ptr %.01019.i, i64 4
  %i.kb = load volatile i8, ptr %i.jx, align 1, !tbaa !13
  %i.kc = getelementptr inbounds nuw i8, ptr %.021.i, i64 4
  store volatile i8 %i.kb, ptr %i.jz, align 1, !tbaa !13
  %i.kd = getelementptr inbounds nuw i8, ptr %.01019.i, i64 5
  %i.ke = load volatile i8, ptr %i.ka, align 1, !tbaa !13
  %i.kf = getelementptr inbounds nuw i8, ptr %.021.i, i64 5
  store volatile i8 %i.ke, ptr %i.kc, align 1, !tbaa !13
  %i.kg = getelementptr inbounds nuw i8, ptr %.01019.i, i64 6
  %i.kh = load volatile i8, ptr %i.kd, align 1, !tbaa !13
  %i.ki = getelementptr inbounds nuw i8, ptr %.021.i, i64 6
  store volatile i8 %i.kh, ptr %i.kf, align 1, !tbaa !13
  %i.kj = getelementptr inbounds nuw i8, ptr %.01019.i, i64 7
  %i.kk = load volatile i8, ptr %i.kg, align 1, !tbaa !13
  %i.kl = getelementptr inbounds nuw i8, ptr %.021.i, i64 7
  store volatile i8 %i.kk, ptr %i.ki, align 1, !tbaa !13
  %i.km = add nsw i32 %.0820.i, -8                ; 2 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  %i.ko = load volatile i8, ptr %i.kj, align 1, !tbaa !13
  %i.kp = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  store volatile i8 %i.ko, ptr %i.kl, align 1, !tbaa !13
  %.not12.i.7 = icmp eq i32 %i.km, 0
  br i1 %.not12.i.7, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i, !llvm.loop !0

bb.n:                                             ; preds = %bb.m
  br i1 %.not1218.i, label %_ZL14copywithendianPVcPVKcii.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.kq = getelementptr i8, ptr %2, i64 %i.x      ; 2 uses
  %xtraiter = and i32 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol

.lr.ph.i95.prol:                                  ; preds = %.lr.ph.preheader.i, %.lr.ph.i95.prol
  %.pn17.i.prol = phi ptr [ %.1.i96.prol, %.lr.ph.i95.prol ], [ %i.kq, %.lr.ph.preheader.i ]
  %.1916.i.prol = phi i32 [ %i.kr, %.lr.ph.i95.prol ], [ %i.w, %.lr.ph.preheader.i ]
  %.11115.i.prol = phi ptr [ %i.ks, %.lr.ph.i95.prol ], [ %i.jj, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i95.prol ], [ 0, %.lr.ph.preheader.i ]
  %.1.i96.prol = getelementptr i8, ptr %.pn17.i.prol, i64 -1 ; 3 uses
  %i.kr = add nsw i32 %.1916.i.prol, -1           ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.11115.i.prol, i64 1 ; 2 uses
  %i.kt = load volatile i8, ptr %.11115.i.prol, align 1, !tbaa !13
  store volatile i8 %i.kt, ptr %.1.i96.prol, align 1, !tbaa !13
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i95.prol.loopexit, label %.lr.ph.i95.prol, !llvm.loop !70

.lr.ph.i95.prol.loopexit:                         ; preds = %.lr.ph.i95.prol, %.lr.ph.preheader.i
  %.pn17.i.unr = phi ptr [ %i.kq, %.lr.ph.preheader.i ], [ %.1.i96.prol, %.lr.ph.i95.prol ]
  %.1916.i.unr = phi i32 [ %i.w, %.lr.ph.preheader.i ], [ %i.kr, %.lr.ph.i95.prol ]
  %.11115.i.unr = phi ptr [ %i.jj, %.lr.ph.preheader.i ], [ %i.ks, %.lr.ph.i95.prol ]
  %i.ku = icmp ult i32 %i.w, 8
  br i1 %i.ku, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95
  %.pn17.i = phi ptr [ %.1.i96.7, %.lr.ph.i95 ], [ %.pn17.i.unr, %.lr.ph.i95.prol.loopexit ] ; 8 uses
  %.1916.i = phi i32 [ %i.lj, %.lr.ph.i95 ], [ %.1916.i.unr, %.lr.ph.i95.prol.loopexit ]
  %.11115.i = phi ptr [ %i.lk, %.lr.ph.i95 ], [ %.11115.i.unr, %.lr.ph.i95.prol.loopexit ] ; 9 uses
  %.1.i96 = getelementptr i8, ptr %.pn17.i, i64 -1
  %i.kv = getelementptr inbounds nuw i8, ptr %.11115.i, i64 1
  %i.kw = load volatile i8, ptr %.11115.i, align 1, !tbaa !13
  store volatile i8 %i.kw, ptr %.1.i96, align 1, !tbaa !13
  %.1.i96.1 = getelementptr i8, ptr %.pn17.i, i64 -2
  %i.kx = getelementptr inbounds nuw i8, ptr %.11115.i, i64 2
  %i.ky = load volatile i8, ptr %i.kv, align 1, !tbaa !13
  store volatile i8 %i.ky, ptr %.1.i96.1, align 1, !tbaa !13
  %.1.i96.2 = getelementptr i8, ptr %.pn17.i, i64 -3
  %i.kz = getelementptr inbounds nuw i8, ptr %.11115.i, i64 3
  %i.la = load volatile i8, ptr %i.kx, align 1, !tbaa !13
  store volatile i8 %i.la, ptr %.1.i96.2, align 1, !tbaa !13
  %.1.i96.3 = getelementptr i8, ptr %.pn17.i, i64 -4
  %i.lb = getelementptr inbounds nuw i8, ptr %.11115.i, i64 4
  %i.lc = load volatile i8, ptr %i.kz, align 1, !tbaa !13
  store volatile i8 %i.lc, ptr %.1.i96.3, align 1, !tbaa !13
  %.1.i96.4 = getelementptr i8, ptr %.pn17.i, i64 -5
  %i.ld = getelementptr inbounds nuw i8, ptr %.11115.i, i64 5
  %i.le = load volatile i8, ptr %i.lb, align 1, !tbaa !13
  store volatile i8 %i.le, ptr %.1.i96.4, align 1, !tbaa !13
  %.1.i96.5 = getelementptr i8, ptr %.pn17.i, i64 -6
  %i.lf = getelementptr inbounds nuw i8, ptr %.11115.i, i64 6
  %i.lg = load volatile i8, ptr %i.ld, align 1, !tbaa !13
  store volatile i8 %i.lg, ptr %.1.i96.5, align 1, !tbaa !13
  %.1.i96.6 = getelementptr i8, ptr %.pn17.i, i64 -7
  %i.lh = getelementptr inbounds nuw i8, ptr %.11115.i, i64 7
  %i.li = load volatile i8, ptr %i.lf, align 1, !tbaa !13
  store volatile i8 %i.li, ptr %.1.i96.6, align 1, !tbaa !13
  %.1.i96.7 = getelementptr i8, ptr %.pn17.i, i64 -8 ; 2 uses
  %i.lj = add nsw i32 %.1916.i, -8                ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.11115.i, i64 8
  %i.ll = load volatile i8, ptr %i.lh, align 1, !tbaa !13
  store volatile i8 %i.ll, ptr %.1.i96.7, align 1, !tbaa !13
  %.not.i97.7 = icmp eq i32 %i.lj, 0
  br i1 %.not.i97.7, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.i95, !llvm.loop !1

_ZL14copywithendianPVcPVKcii.exit:                ; preds = %.lr.ph.i95.prol.loopexit, %.lr.ph.i95, %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  switch i32 %i.w, label %_ZL14copywithendianPVcPVKcii.exit.thread [
    i32 4, label %bb.o
    i32 8, label %bb.p
  ]

bb.o:                                             ; preds = %_ZL14copywithendianPVcPVKcii.exit
  %i.lm = load volatile float, ptr %2, align 8, !tbaa !13
  %i.ln = fpext float %i.lm to double
  br label %bb.q

bb.p:                                             ; preds = %_ZL14copywithendianPVcPVKcii.exit
  %i.lo = load volatile double, ptr %2, align 8, !tbaa !13
  br label %bb.q

_ZL14copywithendianPVcPVKcii.exit.thread:         ; preds = %bb.n, %.preheader.i, %_ZL14copywithendianPVcPVKcii.exit
  %i.lp = load volatile double, ptr %2, align 8, !tbaa !13
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZL14copywithendianPVcPVKcii.exit.thread, %bb.o
  %.0 = phi double [ %i.ln, %bb.o ], [ %i.lo, %bb.p ], [ %i.lp, %_ZL14copywithendianPVcPVKcii.exit.thread ]
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.z

bb.r:                                             ; preds = %bb.e
  %i.lq = sext i32 %i.ab to i64
  %i.lr = getelementptr inbounds i8, ptr %i.f, i64 %i.lq
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef %i.lr, i64 noundef %i.x)
  br label %bb.z

bb.s:                                             ; preds = %bb.e
  %i.ls = sext i32 %i.ab to i64                   ; 2 uses
  %i.lt = getelementptr inbounds i8, ptr %i.f, i64 %i.ls ; 19 uses
  %i.lu = icmp sgt i32 %i.w, 0
  br i1 %i.lu, label %.lr.ph.i101, label %_ZL9unpackintP9lua_StatePKciii.exit126.thread

.lr.ph.i101:                                      ; preds = %bb.s
  %i.lv = load i32, ptr %i.o, align 8, !tbaa !39
  %.not41.i102 = icmp eq i32 %i.lv, 0
  %i.lw = zext nneg i32 %i.w to i64               ; 10 uses
  %i.lx = call i64 @llvm.umin.i64(i64 %i.lw, i64 8) ; 16 uses
  br i1 %.not41.i102, label %.lr.ph.split.us.i122, label %.lr.ph.split.i103

.lr.ph.split.us.i122:                             ; preds = %.lr.ph.i101
  %i.ly = sub nsw i64 %i.lw, %i.lx
  %i.lz = getelementptr inbounds i8, ptr %i.lt, i64 %i.ly
  %i.ma = load i8, ptr %i.lz, align 1, !tbaa !13
  %i.mb = zext i8 %i.ma to i64                    ; 2 uses
  %.not311.a = icmp eq i32 %i.w, 1
  br i1 %.not311.a, label %._crit_edge.i107, label %.lr.ph.split.us.i122.1

.lr.ph.split.us.i122.1:                           ; preds = %.lr.ph.split.us.i122
  %indvars.iv.next53.i125 = add nsw i64 %i.lx, -1
  %i.mc = shl nuw nsw i64 %i.mb, 8
  %i.md = sub nsw i64 %i.lw, %indvars.iv.next53.i125
  %i.me = getelementptr inbounds i8, ptr %i.lt, i64 %i.md
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !13
  %i.mg = zext i8 %i.mf to i64
  %i.mh = or disjoint i64 %i.mc, %i.mg            ; 2 uses
  %i.mi = icmp ugt i32 %i.w, 2
  br i1 %i.mi, label %.lr.ph.split.us.i122.2, label %._crit_edge.i107

.lr.ph.split.us.i122.2:                           ; preds = %.lr.ph.split.us.i122.1
  %indvars.iv.next53.i125.1 = add nsw i64 %i.lx, -2
  %i.mj = shl nuw nsw i64 %i.mh, 8
  %i.mk = sub nsw i64 %i.lw, %indvars.iv.next53.i125.1
  %i.ml = getelementptr inbounds i8, ptr %i.lt, i64 %i.mk
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !13
  %i.mn = zext i8 %i.mm to i64
  %i.mo = or disjoint i64 %i.mj, %i.mn            ; 2 uses
  %.not312.a = icmp eq i32 %i.w, 3
  br i1 %.not312.a, label %._crit_edge.i107, label %.lr.ph.split.us.i122.3

.lr.ph.split.us.i122.3:                           ; preds = %.lr.ph.split.us.i122.2
  %indvars.iv.next53.i125.2 = add nsw i64 %i.lx, -3
  %i.mp = shl nuw nsw i64 %i.mo, 8
  %i.mq = sub nsw i64 %i.lw, %indvars.iv.next53.i125.2
  %i.mr = getelementptr inbounds i8, ptr %i.lt, i64 %i.mq
  %i.ms = load i8, ptr %i.mr, align 1, !tbaa !13
  %i.mt = zext i8 %i.ms to i64
  %i.mu = or disjoint i64 %i.mp, %i.mt            ; 2 uses
  %i.mv = icmp ugt i32 %i.w, 4
  br i1 %i.mv, label %.lr.ph.split.us.i122.4, label %._crit_edge.i107

.lr.ph.split.us.i122.4:                           ; preds = %.lr.ph.split.us.i122.3
  %indvars.iv.next53.i125.3 = add nsw i64 %i.lx, -4
  %i.mw = shl i64 %i.mu, 8
  %i.mx = sub nsw i64 %i.lw, %indvars.iv.next53.i125.3
  %i.my = getelementptr inbounds i8, ptr %i.lt, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !13
  %i.na = zext i8 %i.mz to i64
  %i.nb = or disjoint i64 %i.mw, %i.na            ; 2 uses
  %.not313 = icmp eq i32 %i.w, 5
  br i1 %.not313, label %._crit_edge.i107, label %.lr.ph.split.us.i122.5

.lr.ph.split.us.i122.5:                           ; preds = %.lr.ph.split.us.i122.4
  %indvars.iv.next53.i125.4 = add nsw i64 %i.lx, -5
  %i.nc = shl i64 %i.nb, 8
  %i.nd = sub nsw i64 %i.lw, %indvars.iv.next53.i125.4
  %i.ne = getelementptr inbounds i8, ptr %i.lt, i64 %i.nd
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !13
  %i.ng = zext i8 %i.nf to i64
  %i.nh = or disjoint i64 %i.nc, %i.ng            ; 2 uses
  %i.ni = icmp ugt i32 %i.w, 6
  br i1 %i.ni, label %.lr.ph.split.us.i122.6, label %._crit_edge.i107

.lr.ph.split.us.i122.6:                           ; preds = %.lr.ph.split.us.i122.5
  %indvars.iv.next53.i125.5 = add nsw i64 %i.lx, -6
  %i.nj = shl i64 %i.nh, 8
  %i.nk = sub nsw i64 %i.lw, %indvars.iv.next53.i125.5
  %i.nl = getelementptr inbounds i8, ptr %i.lt, i64 %i.nk
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !13
  %i.nn = zext i8 %i.nm to i64
  %i.no = or disjoint i64 %i.nj, %i.nn            ; 2 uses
  %.not314 = icmp eq i32 %i.w, 7
  br i1 %.not314, label %._crit_edge.i107, label %.lr.ph.split.us.i122.7

.lr.ph.split.us.i122.7:                           ; preds = %.lr.ph.split.us.i122.6
  %indvars.iv.next53.i125.6 = add nsw i64 %i.lx, -7
  %i.np = shl i64 %i.no, 8
  %i.nq = sub nsw i64 %i.lw, %indvars.iv.next53.i125.6
  %i.nr = getelementptr inbounds i8, ptr %i.lt, i64 %i.nq
  %i.ns = load i8, ptr %i.nr, align 1, !tbaa !13
  %i.nt = zext i8 %i.ns to i64
  %i.nu = or disjoint i64 %i.np, %i.nt
  br label %._crit_edge.i107

.lr.ph.split.i103:                                ; preds = %.lr.ph.i101
  %i.nv = getelementptr i8, ptr %i.lt, i64 %i.lx
  %i.nw = getelementptr i8, ptr %i.nv, i64 -1
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !13
  %i.ny = zext i8 %i.nx to i64                    ; 2 uses
  %.not307.a = icmp eq i32 %i.w, 1
  br i1 %.not307.a, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.1

.lr.ph.split.i103.1:                              ; preds = %.lr.ph.split.i103
  %i.nz = shl nuw nsw i64 %i.ny, 8
  %i.oa = getelementptr i8, ptr %i.lt, i64 %i.lx
  %i.ob = getelementptr i8, ptr %i.oa, i64 -2
  %i.oc = load i8, ptr %i.ob, align 1, !tbaa !13
  %i.od = zext i8 %i.oc to i64
  %i.oe = or disjoint i64 %i.nz, %i.od            ; 2 uses
  %i.of = icmp ugt i32 %i.w, 2
  br i1 %i.of, label %.lr.ph.split.i103.2, label %._crit_edge.i107.thread

.lr.ph.split.i103.2:                              ; preds = %.lr.ph.split.i103.1
  %i.og = shl nuw nsw i64 %i.oe, 8
  %i.oh = getelementptr i8, ptr %i.lt, i64 %i.lx
  %i.oi = getelementptr i8, ptr %i.oh, i64 -3
  %i.oj = load i8, ptr %i.oi, align 1, !tbaa !13
  %i.ok = zext i8 %i.oj to i64
  %i.ol = or disjoint i64 %i.og, %i.ok            ; 2 uses
  %.not308.a = icmp eq i32 %i.w, 3
  br i1 %.not308.a, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.3

.lr.ph.split.i103.3:                              ; preds = %.lr.ph.split.i103.2
  %i.om = shl nuw nsw i64 %i.ol, 8
  %i.on = getelementptr i8, ptr %i.lt, i64 %i.lx
  %i.oo = getelementptr i8, ptr %i.on, i64 -4
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !13
  %i.oq = zext i8 %i.op to i64
  %i.or = or disjoint i64 %i.om, %i.oq            ; 2 uses
  %i.os = icmp ugt i32 %i.w, 4
  br i1 %i.os, label %.lr.ph.split.i103.4, label %._crit_edge.i107.thread

.lr.ph.split.i103.4:                              ; preds = %.lr.ph.split.i103.3
  %i.ot = shl i64 %i.or, 8
  %i.ou = getelementptr i8, ptr %i.lt, i64 %i.lx
  %i.ov = getelementptr i8, ptr %i.ou, i64 -5
  %i.ow = load i8, ptr %i.ov, align 1, !tbaa !13
  %i.ox = zext i8 %i.ow to i64
  %i.oy = or disjoint i64 %i.ot, %i.ox            ; 2 uses
  %.not309 = icmp eq i32 %i.w, 5
  br i1 %.not309, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.5

.lr.ph.split.i103.5:                              ; preds = %.lr.ph.split.i103.4
  %i.oz = shl i64 %i.oy, 8
  %i.pa = getelementptr i8, ptr %i.lt, i64 %i.lx
  %i.pb = getelementptr i8, ptr %i.pa, i64 -6
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !13
  %i.pd = zext i8 %i.pc to i64
  %i.pe = or disjoint i64 %i.oz, %i.pd            ; 2 uses
  %i.pf = icmp ugt i32 %i.w, 6
  br i1 %i.pf, label %.lr.ph.split.i103.6, label %._crit_edge.i107.thread

.lr.ph.split.i103.6:                              ; preds = %.lr.ph.split.i103.5
  %i.pg = shl i64 %i.pe, 8
  %i.ph = getelementptr i8, ptr %i.lt, i64 %i.lx
  %i.pi = getelementptr i8, ptr %i.ph, i64 -7
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !13
  %i.pk = zext i8 %i.pj to i64
  %i.pl = or disjoint i64 %i.pg, %i.pk            ; 2 uses
  %.not310 = icmp eq i32 %i.w, 7
  br i1 %.not310, label %._crit_edge.i107.thread, label %.lr.ph.split.i103.7

.lr.ph.split.i103.7:                              ; preds = %.lr.ph.split.i103.6
  %i.pm = shl i64 %i.pl, 8
  %i.pn = getelementptr i8, ptr %i.lt, i64 %i.lx
  %i.po = getelementptr i8, ptr %i.pn, i64 -8
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !13
  %i.pq = zext i8 %i.pp to i64
  %i.pr = or disjoint i64 %i.pm, %i.pq
  br label %._crit_edge.i107.thread

._crit_edge.i107:                                 ; preds = %.lr.ph.split.us.i122.7, %.lr.ph.split.us.i122.6, %.lr.ph.split.us.i122.5, %.lr.ph.split.us.i122.4, %.lr.ph.split.us.i122.3, %.lr.ph.split.us.i122.2, %.lr.ph.split.us.i122.1, %.lr.ph.split.us.i122
  %.lcssa287 = phi i64 [ %i.mb, %.lr.ph.split.us.i122 ], [ %i.mh, %.lr.ph.split.us.i122.1 ], [ %i.mo, %.lr.ph.split.us.i122.2 ], [ %i.mu, %.lr.ph.split.us.i122.3 ], [ %i.nb, %.lr.ph.split.us.i122.4 ], [ %i.nh, %.lr.ph.split.us.i122.5 ], [ %i.no, %.lr.ph.split.us.i122.6 ], [ %i.nu, %.lr.ph.split.us.i122.7 ] ; 2 uses
  %i.ps = icmp samesign ult i32 %i.w, 9
  br i1 %i.ps, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.us.i118

._crit_edge.i107.thread:                          ; preds = %.lr.ph.split.i103.7, %.lr.ph.split.i103.6, %.lr.ph.split.i103.5, %.lr.ph.split.i103.4, %.lr.ph.split.i103.3, %.lr.ph.split.i103.2, %.lr.ph.split.i103.1, %.lr.ph.split.i103
  %.lcssa = phi i64 [ %i.ny, %.lr.ph.split.i103 ], [ %i.oe, %.lr.ph.split.i103.1 ], [ %i.ol, %.lr.ph.split.i103.2 ], [ %i.or, %.lr.ph.split.i103.3 ], [ %i.oy, %.lr.ph.split.i103.4 ], [ %i.pe, %.lr.ph.split.i103.5 ], [ %i.pl, %.lr.ph.split.i103.6 ], [ %i.pr, %.lr.ph.split.i103.7 ] ; 2 uses
  %i.pt = icmp samesign ult i32 %i.w, 9
  br i1 %i.pt, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.i112.preheader

.lr.ph46.split.i112.preheader:                    ; preds = %._crit_edge.i107.thread
  %wide.trip.count = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.i112

.lr.ph46.split.us.i118:                           ; preds = %._crit_edge.i107, %bb.t
  %indvars.iv58.i119 = phi i64 [ %indvars.iv.next59.i121, %bb.t ], [ 8, %._crit_edge.i107 ] ; 2 uses
  %i.pu = trunc nuw nsw i64 %indvars.iv58.i119 to i32
  %i.pv = xor i32 %i.pu, -1
  %i.pw = add nsw i32 %i.w, %i.pv
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds i8, ptr %i.lt, i64 %i.px
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !13
  %.not39.us.i120 = icmp eq i8 %i.pz, 0
  br i1 %.not39.us.i120, label %bb.t, label %.split.us.i115

bb.t:                                             ; preds = %.lr.ph46.split.us.i118
  %indvars.iv.next59.i121 = add nuw nsw i64 %indvars.iv58.i119, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next59.i121, %i.lw
  br i1 %exitcond209.not, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.us.i118, !llvm.loop !68

bb.u:                                             ; preds = %.lr.ph46.split.i112
  %indvars.iv.next55.i116 = add nuw nsw i64 %indvars.iv54.i113, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next55.i116, %wide.trip.count
  br i1 %exitcond.not, label %_ZL9unpackintP9lua_StatePKciii.exit126, label %.lr.ph46.split.i112, !llvm.loop !68

.lr.ph46.split.i112:                              ; preds = %.lr.ph46.split.i112.preheader, %bb.u
  %indvars.iv54.i113 = phi i64 [ %indvars.iv.next55.i116, %bb.u ], [ 8, %.lr.ph46.split.i112.preheader ] ; 2 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.lt, i64 %indvars.iv54.i113
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !13
  %.not39.i114 = icmp eq i8 %i.qb, 0
  br i1 %.not39.i114, label %bb.u, label %.split.us.i115

.split.us.i115:                                   ; preds = %.lr.ph46.split.i112, %.lr.ph46.split.us.i118
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.w) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit126:           ; preds = %bb.u, %bb.t, %._crit_edge.i107.thread, %._crit_edge.i107
  %.0.lcssa.i108226 = phi i64 [ %.lcssa, %._crit_edge.i107.thread ], [ %.lcssa287, %bb.t ], [ %.lcssa287, %._crit_edge.i107 ], [ %.lcssa, %bb.u ] ; 2 uses
  %i.qc = load i64, ptr %i.b, align 8, !tbaa !12
  %i.qd = add nsw i64 %i.ls, %i.x
  %i.qe = sub i64 %i.qc, %i.qd
  %.not65 = icmp ugt i64 %.0.lcssa.i108226, %i.qe
  br i1 %.not65, label %bb.v, label %_ZL9unpackintP9lua_StatePKciii.exit126.thread

bb.v:                                             ; preds = %_ZL9unpackintP9lua_StatePKciii.exit126
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.59) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit126.thread:    ; preds = %bb.s, %_ZL9unpackintP9lua_StatePKciii.exit126
  %.1.i100129 = phi i64 [ %.0.lcssa.i108226, %_ZL9unpackintP9lua_StatePKciii.exit126 ], [ 0, %bb.s ] ; 2 uses
  %i.qf = getelementptr inbounds i8, ptr %i.lt, i64 %i.x
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef %i.qf, i64 noundef %.1.i100129)
  %i.qg = trunc i64 %.1.i100129 to i32
  %i.qh = add nsw i32 %i.ab, %i.qg
  br label %bb.z

bb.w:                                             ; preds = %bb.e
  %i.qi = sext i32 %i.ab to i64                   ; 2 uses
  %i.qj = getelementptr inbounds i8, ptr %i.f, i64 %i.qi ; 2 uses
  %i.qk = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.qj) #15 ; 3 uses
  %i.ql = add i64 %i.qk, %i.qi
  %i.qm = load i64, ptr %i.b, align 8, !tbaa !12
  %i.qn = icmp ult i64 %i.ql, %i.qm
  br i1 %i.qn, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.61) #14
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull %i.qj, i64 noundef %i.qk)
  %i.qo = trunc i64 %i.qk to i32
  %i.qp = add i32 %i.ab, 1
  %i.qq = add i32 %i.qp, %i.qo
  br label %bb.z

default.unreachable219:                           ; preds = %bb.e
  unreachable

bb.z:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.y, %_ZL9unpackintP9lua_StatePKciii.exit126.thread, %bb.r, %bb.q, %_ZL9unpackintP9lua_StatePKciii.exit94, %_ZL9unpackintP9lua_StatePKciii.exit
  %.160 = phi i32 [ %i.ac, %bb.y ], [ %i.ac, %_ZL9unpackintP9lua_StatePKciii.exit ], [ %i.ac, %_ZL9unpackintP9lua_StatePKciii.exit94 ], [ %i.ac, %bb.q ], [ %i.ac, %bb.r ], [ %i.ac, %_ZL9unpackintP9lua_StatePKciii.exit126.thread ], [ %.059179, %bb.e ], [ %.059179, %bb.e ], [ %.059179, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.qq, %bb.y ], [ %i.ab, %_ZL9unpackintP9lua_StatePKciii.exit ], [ %i.ab, %_ZL9unpackintP9lua_StatePKciii.exit94 ], [ %i.ab, %bb.q ], [ %i.ab, %bb.r ], [ %i.qh, %_ZL9unpackintP9lua_StatePKciii.exit126.thread ], [ %i.ab, %bb.e ], [ %i.ab, %bb.e ], [ %i.ab, %bb.e ]
  %i.qr = add nsw i32 %.1, %i.w                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.qs = load ptr, ptr %i.a, align 8, !tbaa !36
  %i.qt = load i8, ptr %i.qs, align 1, !tbaa !13
  %.not63 = icmp eq i8 %i.qt, 0
  br i1 %.not63, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !71

._crit_edge.loopexit:                             ; preds = %bb.z
  %i.qu = add nsw i32 %i.qr, 1
  %i.qv = add nsw i32 %.160, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.059.lcssa = phi i32 [ 1, %bb.c ], [ %i.qv, %._crit_edge.loopexit ]
  %.058.lcssa = phi i32 [ %i.m, %bb.c ], [ %i.qu, %._crit_edge.loopexit ]
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
