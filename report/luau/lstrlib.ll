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
  %i.kd = load i64, ptr %i.i, align 8, !tbaa !9
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef %i.hz, i64 noundef %i.kd)
  %i.ke = load i64, ptr %i.i, align 8, !tbaa !9
  %i.kf = add i64 %i.ke, %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  br label %bb.aj

bb.ab:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #13
  %i.kg = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull %i.j) ; 2 uses
  %i.kh = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.kg) #15 ; 2 uses
  %i.ki = load i64, ptr %i.j, align 8, !tbaa !9
  %i.kj = icmp eq i64 %i.kh, %i.ki
  br i1 %i.kj, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull @.str.49) #14
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef nonnull %i.kg, i64 noundef %i.kh)
  %i.kk = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.kl = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.km = icmp ult ptr %i.kk, %i.kl
  br i1 %i.km, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kn = call noundef ptr @_Z17luaL_prepbuffsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef 1) ; 0 uses
  %.pre141 = load ptr, ptr %1, align 8, !tbaa !15
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ko = phi ptr [ %.pre141, %bb.ae ], [ %i.kk, %bb.ad ] ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  store ptr %i.kp, ptr %1, align 8, !tbaa !15
  store i8 0, ptr %i.ko, align 1, !tbaa !11
  %i.kq = load i64, ptr %i.j, align 8, !tbaa !9
  %i.kr = add i64 %i.u, 1
  %i.ks = add i64 %i.kr, %i.kq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #13
  br label %bb.aj

bb.ag:                                            ; preds = %._crit_edge
  %i.kt = load ptr, ptr %1, align 8, !tbaa !15    ; 2 uses
  %i.ku = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.kv = icmp ult ptr %i.kt, %i.ku
  br i1 %i.kv, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kw = call noundef ptr @_Z17luaL_prepbuffsizeP11luaL_Strbufm(ptr noundef nonnull %1, i64 noundef 1) ; 0 uses
  %.pre140 = load ptr, ptr %1, align 8, !tbaa !15
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.kx = phi ptr [ %.pre140, %bb.ah ], [ %i.kt, %bb.ag ] ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 1
  store ptr %i.ky, ptr %1, align 8, !tbaa !15
  store i8 0, ptr %i.kx, align 1, !tbaa !11
  br label %bb.aj

default.unreachable152:                           ; preds = %._crit_edge
  unreachable

bb.aj:                                            ; preds = %._crit_edge, %._crit_edge, %bb.ai, %bb.af, %_ZL7packintP11luaL_Strbufyiii.exit111, %._crit_edge122, %_ZL14copywithendianPVcPVKcii.exit, %_ZL7packintP11luaL_Strbufyiii.exit83, %_ZL7packintP11luaL_Strbufyiii.exit
  %.148 = phi i64 [ %i.ks, %bb.af ], [ %i.u, %_ZL7packintP11luaL_Strbufyiii.exit ], [ %i.u, %_ZL7packintP11luaL_Strbufyiii.exit83 ], [ %i.u, %_ZL14copywithendianPVcPVKcii.exit ], [ %i.u, %._crit_edge122 ], [ %i.kf, %_ZL7packintP11luaL_Strbufyiii.exit111 ], [ %i.u, %bb.ai ], [ %i.u, %._crit_edge ], [ %i.u, %._crit_edge ]
  %.1 = phi i32 [ %i.ae, %bb.af ], [ %i.ae, %_ZL7packintP11luaL_Strbufyiii.exit ], [ %i.ae, %_ZL7packintP11luaL_Strbufyiii.exit83 ], [ %i.ae, %_ZL14copywithendianPVcPVKcii.exit ], [ %i.ae, %._crit_edge122 ], [ %i.ae, %_ZL7packintP11luaL_Strbufyiii.exit111 ], [ %.0125, %bb.ai ], [ %.0125, %._crit_edge ], [ %.0125, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.kz = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.la = load i8, ptr %i.kz, align 1, !tbaa !11
  %.not = icmp eq i8 %i.la, 0
  br i1 %.not, label %._crit_edge128, label %bb.b, !llvm.loop !65

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
  store ptr %i.d, ptr %i.a, align 8, !tbaa !46
  store ptr %0, ptr %1, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !50
  %i.g = load i8, ptr %i.d, align 1, !tbaa !11
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
  %i.k = load i32, ptr %i.c, align 4, !tbaa !40
  %i.l = load i32, ptr %i.b, align 4, !tbaa !40
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
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %.not = icmp eq i8 %i.q, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !66

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
  store ptr %i.e, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.f = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b) ; 6 uses
  %i.g = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef 1) ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !9    ; 2 uses
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
  store ptr %0, ptr %1, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 1, ptr %i.o, align 8, !tbaa !49
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.p, align 4, !tbaa !50
  %i.q = load i8, ptr %i.e, align 1, !tbaa !11
  %.not63180 = icmp eq i8 %i.q, 0
  br i1 %.not63180, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.z
  %.0182 = phi i32 [ %i.rt, %bb.z ], [ %spec.store.select, %bb.c ] ; 2 uses
  %.058181 = phi i32 [ %.159, %bb.z ], [ 0, %bb.c ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.r = sext i32 %.0182 to i64                   ; 2 uses
  %i.s = call fastcc noundef i32 @_ZL10getdetailsP6HeadermPPKcPiS4_(ptr noundef %1, i64 noundef %i.r, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.d)
  %i.t = load i32, ptr %i.d, align 4, !tbaa !40   ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = load i32, ptr %i.c, align 4, !tbaa !40
  %i.w = freeze i32 %i.v                          ; 106 uses
  %i.x = sext i32 %i.w to i64                     ; 5 uses
  %i.y = add nsw i64 %i.x, %i.u
  %i.z = load i64, ptr %i.b, align 8, !tbaa !9
  %i.aa = sub i64 %i.z, %i.r
  %.not64 = icmp ugt i64 %i.y, %i.aa
  br i1 %.not64, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.59) #14
  unreachable

bb.e:                                             ; preds = %.lr.ph
  %i.ab = add nsw i32 %i.t, %.0182                ; 15 uses
  call void @_Z15luaL_checkstackP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.60)
  %i.ac = add nsw i32 %.058181, 1                 ; 6 uses
  switch i32 %i.s, label %default.unreachable213 [
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
  %3 = call i32 @llvm.smin.i32(i32 %i.w, i32 8)
  %i.af = icmp sgt i32 %i.w, 0
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.ag = load i32, ptr %i.o, align 8, !tbaa !49
  %.not41.i = icmp eq i32 %i.ag, 0                ; 2 uses
  %i.ah = call i32 @llvm.umin.i32(i32 %i.w, i32 8) ; 9 uses
  %i.ai = zext nneg i32 %i.ah to i64              ; 8 uses
  br i1 %.not41.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.aj = sub nsw i32 %i.w, %i.ah
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ae, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  %i.an = zext i8 %i.am to i64                    ; 2 uses
  %.not321.a = icmp eq i32 %i.w, 1
  br i1 %.not321.a, label %._crit_edge.i, label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %.lr.ph.split.us.i
  %indvars.iv.next53.i = add nsw i32 %i.ah, -1
  %i.ao = shl nuw nsw i64 %i.an, 8
  %i.ap = sub i32 %i.w, %indvars.iv.next53.i
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ae, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !11
  %i.at = zext i8 %i.as to i64
  %i.au = or disjoint i64 %i.ao, %i.at            ; 2 uses
  %i.av = icmp ugt i32 %i.w, 2
  br i1 %i.av, label %.lr.ph.split.us.i.2, label %._crit_edge.i

.lr.ph.split.us.i.2:                              ; preds = %.lr.ph.split.us.i.1
  %indvars.iv.next53.i.1 = add nsw i32 %i.ah, -2
  %i.aw = shl nuw nsw i64 %i.au, 8
  %i.ax = sub i32 %i.w, %indvars.iv.next53.i.1
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.ae, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !11
  %i.bb = zext i8 %i.ba to i64
  %i.bc = or disjoint i64 %i.aw, %i.bb            ; 2 uses
  %.not322.a = icmp eq i32 %i.w, 3
  br i1 %.not322.a, label %._crit_edge.i, label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %.lr.ph.split.us.i.2
  %indvars.iv.next53.i.2 = add nsw i32 %i.ah, -3
  %i.bd = shl nuw nsw i64 %i.bc, 8
  %i.be = sub i32 %i.w, %indvars.iv.next53.i.2
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds i8, ptr %i.ae, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !11
  %i.bi = zext i8 %i.bh to i64
  %i.bj = or disjoint i64 %i.bd, %i.bi            ; 2 uses
  %i.bk = icmp ugt i32 %i.w, 4
  br i1 %i.bk, label %.lr.ph.split.us.i.4, label %._crit_edge.i

.lr.ph.split.us.i.4:                              ; preds = %.lr.ph.split.us.i.3
  %indvars.iv.next53.i.3 = add nsw i32 %i.ah, -4
  %i.bl = shl i64 %i.bj, 8
  %i.bm = sub i32 %i.w, %indvars.iv.next53.i.3
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds i8, ptr %i.ae, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !11
  %i.bq = zext i8 %i.bp to i64
  %i.br = or disjoint i64 %i.bl, %i.bq            ; 2 uses
  %.not323.a = icmp eq i32 %i.w, 5
  br i1 %.not323.a, label %._crit_edge.i, label %.lr.ph.split.us.i.5

.lr.ph.split.us.i.5:                              ; preds = %.lr.ph.split.us.i.4
  %indvars.iv.next53.i.4 = add nsw i32 %i.ah, -5
  %i.bs = shl i64 %i.br, 8
  %i.bt = sub i32 %i.w, %indvars.iv.next53.i.4
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds i8, ptr %i.ae, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !11
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
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !11
  %i.cf = zext i8 %i.ce to i64
  %i.cg = or disjoint i64 %i.ca, %i.cf            ; 2 uses
  %.not324.a = icmp eq i32 %i.w, 7
  br i1 %.not324.a, label %._crit_edge.i, label %.lr.ph.split.us.i.7

.lr.ph.split.us.i.7:                              ; preds = %.lr.ph.split.us.i.6
  %indvars.iv.next53.i.6 = add nsw i32 %i.ah, -7
  %i.ch = shl i64 %i.cg, 8
  %i.ci = sub i32 %i.w, %indvars.iv.next53.i.6
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %i.ae, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !11
  %i.cm = zext i8 %i.cl to i64
  %i.cn = or disjoint i64 %i.ch, %i.cm
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.co = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.cp = getelementptr i8, ptr %i.co, i64 -1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !11
  %i.cr = zext i8 %i.cq to i64                    ; 2 uses
  %.not317.a = icmp eq i32 %i.w, 1
  br i1 %.not317.a, label %._crit_edge.i, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  %i.cs = shl nuw nsw i64 %i.cr, 8
  %i.ct = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.cu = getelementptr i8, ptr %i.ct, i64 -2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !11
  %i.cw = zext i8 %i.cv to i64
  %i.cx = or disjoint i64 %i.cs, %i.cw            ; 2 uses
  %i.cy = icmp ugt i32 %i.w, 2
  br i1 %i.cy, label %.lr.ph.split.i.2, label %._crit_edge.i

.lr.ph.split.i.2:                                 ; preds = %.lr.ph.split.i.1
  %i.cz = shl nuw nsw i64 %i.cx, 8
  %i.da = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.db = getelementptr i8, ptr %i.da, i64 -3
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !11
  %i.dd = zext i8 %i.dc to i64
  %i.de = or disjoint i64 %i.cz, %i.dd            ; 2 uses
  %.not318.a = icmp eq i32 %i.w, 3
  br i1 %.not318.a, label %._crit_edge.i, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %.lr.ph.split.i.2
  %i.df = shl nuw nsw i64 %i.de, 8
  %i.dg = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.dh = getelementptr i8, ptr %i.dg, i64 -4
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !11
  %i.dj = zext i8 %i.di to i64
  %i.dk = or disjoint i64 %i.df, %i.dj            ; 2 uses
  %i.dl = icmp ugt i32 %i.w, 4
  br i1 %i.dl, label %.lr.ph.split.i.4, label %._crit_edge.i

.lr.ph.split.i.4:                                 ; preds = %.lr.ph.split.i.3
  %i.dm = shl i64 %i.dk, 8
  %i.dn = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.do = getelementptr i8, ptr %i.dn, i64 -5
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !11
  %i.dq = zext i8 %i.dp to i64
  %i.dr = or disjoint i64 %i.dm, %i.dq            ; 2 uses
  %.not319.a = icmp eq i32 %i.w, 5
  br i1 %.not319.a, label %._crit_edge.i, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %.lr.ph.split.i.4
  %i.ds = shl i64 %i.dr, 8
  %i.dt = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.du = getelementptr i8, ptr %i.dt, i64 -6
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !11
  %i.dw = zext i8 %i.dv to i64
  %i.dx = or disjoint i64 %i.ds, %i.dw            ; 2 uses
  %i.dy = icmp ugt i32 %i.w, 6
  br i1 %i.dy, label %.lr.ph.split.i.6, label %._crit_edge.i

.lr.ph.split.i.6:                                 ; preds = %.lr.ph.split.i.5
  %i.dz = shl i64 %i.dx, 8
  %i.ea = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.eb = getelementptr i8, ptr %i.ea, i64 -7
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !11
  %i.ed = zext i8 %i.ec to i64
  %i.ee = or disjoint i64 %i.dz, %i.ed            ; 2 uses
  %.not320.a = icmp eq i32 %i.w, 7
  br i1 %.not320.a, label %._crit_edge.i, label %.lr.ph.split.i.7

.lr.ph.split.i.7:                                 ; preds = %.lr.ph.split.i.6
  %i.ef = shl i64 %i.ee, 8
  %i.eg = getelementptr i8, ptr %i.ae, i64 %i.ai
  %i.eh = getelementptr i8, ptr %i.eg, i64 -8
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !11
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
  br i1 %.not41.i, label %.lr.ph46.split.us.preheader.i, label %.lr.ph46.split.preheader.i

.lr.ph46.split.preheader.i:                       ; preds = %.lr.ph46.i
  %4 = zext nneg i32 %3 to i64
  br label %.lr.ph46.split.i

.lr.ph46.split.us.preheader.i:                    ; preds = %.lr.ph46.i
  %5 = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.us.i

.lr.ph46.split.us.i:                              ; preds = %bb.h, %.lr.ph46.split.us.preheader.i
  %indvars.iv58.i = phi i64 [ 8, %.lr.ph46.split.us.preheader.i ], [ %indvars.iv.next59.i, %bb.h ] ; 2 uses
  %i.eu = trunc nsw i64 %indvars.iv58.i to i32
  %i.ev = xor i32 %i.eu, -1
  %i.ew = add nsw i32 %i.w, %i.ev
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds i8, ptr %i.ae, i64 %i.ex
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !11
  %i.fa = zext i8 %i.ez to i32
  %.not39.us.i = icmp eq i32 %i.et, %i.fa
  br i1 %.not39.us.i, label %bb.h, label %.split.us.i

bb.h:                                             ; preds = %.lr.ph46.split.us.i
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1 ; 2 uses
  %exitcond212.not.a = icmp eq i64 %indvars.iv.next59.i, %5
  br i1 %exitcond212.not.a, label %_ZL9unpackintP9lua_StatePKciii.exit, label %.lr.ph46.split.us.i, !llvm.loop !67

bb.i:                                             ; preds = %.lr.ph46.split.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1 ; 2 uses
  %6 = trunc nuw i64 %indvars.iv.next55.i to i32
  %7 = icmp sgt i32 %i.w, %6
  br i1 %7, label %.lr.ph46.split.i, label %_ZL9unpackintP9lua_StatePKciii.exit, !llvm.loop !67

.lr.ph46.split.i:                                 ; preds = %bb.i, %.lr.ph46.split.preheader.i
  %indvars.iv54.i = phi i64 [ %4, %.lr.ph46.split.preheader.i ], [ %indvars.iv.next55.i, %bb.i ] ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv54.i
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !11
  %i.fd = zext i8 %i.fc to i32
  %.not39.i = icmp eq i32 %i.et, %i.fd
  br i1 %.not39.i, label %bb.i, label %.split.us.i

.split.us.i:                                      ; preds = %.lr.ph46.split.i, %.lr.ph46.split.us.i
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.w) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit:              ; preds = %bb.i, %bb.h, %._crit_edge.thread.i, %bb.g
  %.1.i = phi i64 [ %i.er, %._crit_edge.thread.i ], [ %.0.lcssa.i, %bb.h ], [ %.0.lcssa.i, %bb.g ], [ %.0.lcssa.i, %bb.i ]
  %i.fe = sitofp i64 %.1.i to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.fe)
  br label %bb.z

bb.j:                                             ; preds = %bb.e
  %i.ff = sext i32 %i.ab to i64
  %i.fg = getelementptr inbounds i8, ptr %i.f, i64 %i.ff ; 18 uses
  %8 = call i32 @llvm.smin.i32(i32 %i.w, i32 8)
  %i.fh = icmp sgt i32 %i.w, 0
  br i1 %i.fh, label %.lr.ph.i69, label %_ZL9unpackintP9lua_StatePKciii.exit95

.lr.ph.i69:                                       ; preds = %bb.j
  %i.fi = load i32, ptr %i.o, align 8, !tbaa !49
  %.not41.i70 = icmp eq i32 %i.fi, 0
  %i.fj = call i32 @llvm.umin.i32(i32 %i.w, i32 8) ; 9 uses
  %i.fk = zext nneg i32 %i.fj to i64              ; 8 uses
  br i1 %.not41.i70, label %.lr.ph.split.us.i91, label %.lr.ph.split.i71

.lr.ph.split.us.i91:                              ; preds = %.lr.ph.i69
  %i.fl = sub nsw i32 %i.w, %i.fj
  %i.fm = sext i32 %i.fl to i64
  %i.fn = getelementptr inbounds i8, ptr %i.fg, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !11
  %i.fp = zext i8 %i.fo to i64                    ; 2 uses
  %.not313.a = icmp eq i32 %i.w, 1
  br i1 %.not313.a, label %._crit_edge.i75, label %.lr.ph.split.us.i91.1

.lr.ph.split.us.i91.1:                            ; preds = %.lr.ph.split.us.i91
  %indvars.iv.next53.i94 = add nsw i32 %i.fj, -1
  %i.fq = shl nuw nsw i64 %i.fp, 8
  %i.fr = sub i32 %i.w, %indvars.iv.next53.i94
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds i8, ptr %i.fg, i64 %i.fs
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !11
  %i.fv = zext i8 %i.fu to i64
  %i.fw = or disjoint i64 %i.fq, %i.fv            ; 2 uses
  %i.fx = icmp ugt i32 %i.w, 2
  br i1 %i.fx, label %.lr.ph.split.us.i91.2, label %._crit_edge.i75

.lr.ph.split.us.i91.2:                            ; preds = %.lr.ph.split.us.i91.1
  %indvars.iv.next53.i94.1 = add nsw i32 %i.fj, -2
  %i.fy = shl nuw nsw i64 %i.fw, 8
  %i.fz = sub i32 %i.w, %indvars.iv.next53.i94.1
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds i8, ptr %i.fg, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !11
  %i.gd = zext i8 %i.gc to i64
  %i.ge = or disjoint i64 %i.fy, %i.gd            ; 2 uses
  %.not314.a = icmp eq i32 %i.w, 3
  br i1 %.not314.a, label %._crit_edge.i75, label %.lr.ph.split.us.i91.3

.lr.ph.split.us.i91.3:                            ; preds = %.lr.ph.split.us.i91.2
  %indvars.iv.next53.i94.2 = add nsw i32 %i.fj, -3
  %i.gf = shl nuw nsw i64 %i.ge, 8
  %i.gg = sub i32 %i.w, %indvars.iv.next53.i94.2
  %i.gh = sext i32 %i.gg to i64
  %i.gi = getelementptr inbounds i8, ptr %i.fg, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !11
  %i.gk = zext i8 %i.gj to i64
  %i.gl = or disjoint i64 %i.gf, %i.gk            ; 2 uses
  %i.gm = icmp ugt i32 %i.w, 4
  br i1 %i.gm, label %.lr.ph.split.us.i91.4, label %._crit_edge.i75

.lr.ph.split.us.i91.4:                            ; preds = %.lr.ph.split.us.i91.3
  %indvars.iv.next53.i94.3 = add nsw i32 %i.fj, -4
  %i.gn = shl i64 %i.gl, 8
  %i.go = sub i32 %i.w, %indvars.iv.next53.i94.3
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr inbounds i8, ptr %i.fg, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !11
  %i.gs = zext i8 %i.gr to i64
  %i.gt = or disjoint i64 %i.gn, %i.gs            ; 2 uses
  %.not315.a = icmp eq i32 %i.w, 5
  br i1 %.not315.a, label %._crit_edge.i75, label %.lr.ph.split.us.i91.5

.lr.ph.split.us.i91.5:                            ; preds = %.lr.ph.split.us.i91.4
  %indvars.iv.next53.i94.4 = add nsw i32 %i.fj, -5
  %i.gu = shl i64 %i.gt, 8
  %i.gv = sub i32 %i.w, %indvars.iv.next53.i94.4
  %i.gw = sext i32 %i.gv to i64
  %i.gx = getelementptr inbounds i8, ptr %i.fg, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !11
  %i.gz = zext i8 %i.gy to i64
  %i.ha = or disjoint i64 %i.gu, %i.gz            ; 2 uses
  %i.hb = icmp ugt i32 %i.w, 6
  br i1 %i.hb, label %.lr.ph.split.us.i91.6, label %._crit_edge.i75

.lr.ph.split.us.i91.6:                            ; preds = %.lr.ph.split.us.i91.5
  %indvars.iv.next53.i94.5 = add nsw i32 %i.fj, -6
  %i.hc = shl i64 %i.ha, 8
  %i.hd = sub i32 %i.w, %indvars.iv.next53.i94.5
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds i8, ptr %i.fg, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !11
  %i.hh = zext i8 %i.hg to i64
  %i.hi = or disjoint i64 %i.hc, %i.hh            ; 2 uses
  %.not316.a = icmp eq i32 %i.w, 7
  br i1 %.not316.a, label %._crit_edge.i75, label %.lr.ph.split.us.i91.7

.lr.ph.split.us.i91.7:                            ; preds = %.lr.ph.split.us.i91.6
  %indvars.iv.next53.i94.6 = add nsw i32 %i.fj, -7
  %i.hj = shl i64 %i.hi, 8
  %i.hk = sub i32 %i.w, %indvars.iv.next53.i94.6
  %i.hl = sext i32 %i.hk to i64
  %i.hm = getelementptr inbounds i8, ptr %i.fg, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !11
  %i.ho = zext i8 %i.hn to i64
  %i.hp = or disjoint i64 %i.hj, %i.ho
  br label %._crit_edge.i75

.lr.ph.split.i71:                                 ; preds = %.lr.ph.i69
  %i.hq = getelementptr i8, ptr %i.fg, i64 %i.fk
  %i.hr = getelementptr i8, ptr %i.hq, i64 -1
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !11
  %i.ht = zext i8 %i.hs to i64                    ; 2 uses
  %.not309.a = icmp eq i32 %i.w, 1
  br i1 %.not309.a, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.1

.lr.ph.split.i71.1:                               ; preds = %.lr.ph.split.i71
  %i.hu = shl nuw nsw i64 %i.ht, 8
  %i.hv = getelementptr i8, ptr %i.fg, i64 %i.fk
  %i.hw = getelementptr i8, ptr %i.hv, i64 -2
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !11
  %i.hy = zext i8 %i.hx to i64
  %i.hz = or disjoint i64 %i.hu, %i.hy            ; 2 uses
  %i.ia = icmp ugt i32 %i.w, 2
  br i1 %i.ia, label %.lr.ph.split.i71.2, label %._crit_edge.i75.thread

.lr.ph.split.i71.2:                               ; preds = %.lr.ph.split.i71.1
  %i.ib = shl nuw nsw i64 %i.hz, 8
  %i.ic = getelementptr i8, ptr %i.fg, i64 %i.fk
  %i.id = getelementptr i8, ptr %i.ic, i64 -3
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !11
  %i.if = zext i8 %i.ie to i64
  %i.ig = or disjoint i64 %i.ib, %i.if            ; 2 uses
  %.not310.a = icmp eq i32 %i.w, 3
  br i1 %.not310.a, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.3

.lr.ph.split.i71.3:                               ; preds = %.lr.ph.split.i71.2
  %i.ih = shl nuw nsw i64 %i.ig, 8
  %i.ii = getelementptr i8, ptr %i.fg, i64 %i.fk
  %i.ij = getelementptr i8, ptr %i.ii, i64 -4
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !11
  %i.il = zext i8 %i.ik to i64
  %i.im = or disjoint i64 %i.ih, %i.il            ; 2 uses
  %i.in = icmp ugt i32 %i.w, 4
  br i1 %i.in, label %.lr.ph.split.i71.4, label %._crit_edge.i75.thread

.lr.ph.split.i71.4:                               ; preds = %.lr.ph.split.i71.3
  %i.io = shl i64 %i.im, 8
  %i.ip = getelementptr i8, ptr %i.fg, i64 %i.fk
  %i.iq = getelementptr i8, ptr %i.ip, i64 -5
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !11
  %i.is = zext i8 %i.ir to i64
  %i.it = or disjoint i64 %i.io, %i.is            ; 2 uses
  %.not311.a = icmp eq i32 %i.w, 5
  br i1 %.not311.a, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.5

.lr.ph.split.i71.5:                               ; preds = %.lr.ph.split.i71.4
  %i.iu = shl i64 %i.it, 8
  %i.iv = getelementptr i8, ptr %i.fg, i64 %i.fk
  %i.iw = getelementptr i8, ptr %i.iv, i64 -6
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !11
  %i.iy = zext i8 %i.ix to i64
  %i.iz = or disjoint i64 %i.iu, %i.iy            ; 2 uses
  %i.ja = icmp ugt i32 %i.w, 6
  br i1 %i.ja, label %.lr.ph.split.i71.6, label %._crit_edge.i75.thread

.lr.ph.split.i71.6:                               ; preds = %.lr.ph.split.i71.5
  %i.jb = shl i64 %i.iz, 8
  %i.jc = getelementptr i8, ptr %i.fg, i64 %i.fk
  %i.jd = getelementptr i8, ptr %i.jc, i64 -7
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !11
  %i.jf = zext i8 %i.je to i64
  %i.jg = or disjoint i64 %i.jb, %i.jf            ; 2 uses
  %.not312.a = icmp eq i32 %i.w, 7
  br i1 %.not312.a, label %._crit_edge.i75.thread, label %.lr.ph.split.i71.7

.lr.ph.split.i71.7:                               ; preds = %.lr.ph.split.i71.6
  %i.jh = shl i64 %i.jg, 8
  %i.ji = getelementptr i8, ptr %i.fg, i64 %i.fk
  %i.jj = getelementptr i8, ptr %i.ji, i64 -8
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !11
  %i.jl = zext i8 %i.jk to i64
  %i.jm = or disjoint i64 %i.jh, %i.jl
  br label %._crit_edge.i75.thread

._crit_edge.i75:                                  ; preds = %.lr.ph.split.us.i91.7, %.lr.ph.split.us.i91.6, %.lr.ph.split.us.i91.5, %.lr.ph.split.us.i91.4, %.lr.ph.split.us.i91.3, %.lr.ph.split.us.i91.2, %.lr.ph.split.us.i91.1, %.lr.ph.split.us.i91
  %.lcssa283 = phi i64 [ %i.fp, %.lr.ph.split.us.i91 ], [ %i.fw, %.lr.ph.split.us.i91.1 ], [ %i.ge, %.lr.ph.split.us.i91.2 ], [ %i.gl, %.lr.ph.split.us.i91.3 ], [ %i.gt, %.lr.ph.split.us.i91.4 ], [ %i.ha, %.lr.ph.split.us.i91.5 ], [ %i.hi, %.lr.ph.split.us.i91.6 ], [ %i.hp, %.lr.ph.split.us.i91.7 ] ; 2 uses
  %i.jn = icmp samesign ult i32 %i.w, 9
  br i1 %i.jn, label %_ZL9unpackintP9lua_StatePKciii.exit95, label %.lr.ph46.split.us.preheader.i86

._crit_edge.i75.thread:                           ; preds = %.lr.ph.split.i71.7, %.lr.ph.split.i71.6, %.lr.ph.split.i71.5, %.lr.ph.split.i71.4, %.lr.ph.split.i71.3, %.lr.ph.split.i71.2, %.lr.ph.split.i71.1, %.lr.ph.split.i71
  %.lcssa282 = phi i64 [ %i.ht, %.lr.ph.split.i71 ], [ %i.hz, %.lr.ph.split.i71.1 ], [ %i.ig, %.lr.ph.split.i71.2 ], [ %i.im, %.lr.ph.split.i71.3 ], [ %i.it, %.lr.ph.split.i71.4 ], [ %i.iz, %.lr.ph.split.i71.5 ], [ %i.jg, %.lr.ph.split.i71.6 ], [ %i.jm, %.lr.ph.split.i71.7 ] ; 2 uses
  %i.jo = icmp samesign ult i32 %i.w, 9
  br i1 %i.jo, label %_ZL9unpackintP9lua_StatePKciii.exit95, label %.lr.ph46.split.preheader.i80

.lr.ph46.split.preheader.i80:                     ; preds = %._crit_edge.i75.thread
  %i.jp = zext nneg i32 %8 to i64
  br label %.lr.ph46.split.i81

.lr.ph46.split.us.preheader.i86:                  ; preds = %._crit_edge.i75
  %i.jq = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.us.i87

.lr.ph46.split.us.i87:                            ; preds = %bb.k, %.lr.ph46.split.us.preheader.i86
  %indvars.iv58.i88 = phi i64 [ 8, %.lr.ph46.split.us.preheader.i86 ], [ %indvars.iv.next59.i90, %bb.k ] ; 2 uses
  %i.jr = trunc nsw i64 %indvars.iv58.i88 to i32
  %i.js = xor i32 %i.jr, -1
  %i.jt = add nsw i32 %i.w, %i.js
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds i8, ptr %i.fg, i64 %i.ju
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !11
  %.not39.us.i89 = icmp eq i8 %i.jw, 0
  br i1 %.not39.us.i89, label %bb.k, label %.split.us.i84

bb.k:                                             ; preds = %.lr.ph46.split.us.i87
  %indvars.iv.next59.i90 = add nuw nsw i64 %indvars.iv58.i88, 1 ; 2 uses
  %exitcond211.not = icmp eq i64 %indvars.iv.next59.i90, %i.jq
  br i1 %exitcond211.not, label %_ZL9unpackintP9lua_StatePKciii.exit95, label %.lr.ph46.split.us.i87, !llvm.loop !67

bb.l:                                             ; preds = %.lr.ph46.split.i81
  %indvars.iv.next55.i85 = add nuw nsw i64 %indvars.iv54.i82, 1 ; 2 uses
  %9 = trunc nuw i64 %indvars.iv.next55.i85 to i32
  %10 = icmp sgt i32 %i.w, %9
  br i1 %10, label %.lr.ph46.split.i81, label %_ZL9unpackintP9lua_StatePKciii.exit95, !llvm.loop !67

.lr.ph46.split.i81:                               ; preds = %bb.l, %.lr.ph46.split.preheader.i80
  %indvars.iv54.i82 = phi i64 [ %i.jp, %.lr.ph46.split.preheader.i80 ], [ %indvars.iv.next55.i85, %bb.l ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.fg, i64 %indvars.iv54.i82
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !11
  %.not39.i83 = icmp eq i8 %i.jy, 0
  br i1 %.not39.i83, label %bb.l, label %.split.us.i84

.split.us.i84:                                    ; preds = %.lr.ph46.split.i81, %.lr.ph46.split.us.i87
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.w) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit95:            ; preds = %bb.l, %bb.k, %._crit_edge.i75.thread, %._crit_edge.i75, %bb.j
  %.1.i68 = phi i64 [ %.lcssa282, %._crit_edge.i75.thread ], [ %.lcssa283, %._crit_edge.i75 ], [ 0, %bb.j ], [ %.lcssa283, %bb.k ], [ %.lcssa282, %bb.l ]
  %i.jz = uitofp i64 %.1.i68 to double
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %i.jz)
  br label %bb.z

bb.m:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.ka = sext i32 %i.ab to i64
  %i.kb = getelementptr inbounds i8, ptr %i.f, i64 %i.ka ; 4 uses
  %i.kc = load i32, ptr %i.o, align 8, !tbaa !49
  %i.kd = icmp eq i32 %i.kc, 1
  %.not1218.i = icmp eq i32 %i.w, 0               ; 2 uses
  br i1 %i.kd, label %.preheader.i, label %bb.n

.preheader.i:                                     ; preds = %bb.m
  br i1 %.not1218.i, label %_ZL14copywithendianPVcPVKcii.exit.thread, label %.lr.ph22.i.preheader

.lr.ph22.i.preheader:                             ; preds = %.preheader.i
  %xtraiter298 = and i32 %i.w, 7                  ; 2 uses
  %lcmp.mod299.not = icmp eq i32 %xtraiter298, 0
  br i1 %lcmp.mod299.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol

.lr.ph22.i.prol:                                  ; preds = %.lr.ph22.i.preheader, %.lr.ph22.i.prol
  %.021.i.prol = phi ptr [ %i.kh, %.lr.ph22.i.prol ], [ %2, %.lr.ph22.i.preheader ] ; 2 uses
  %.0820.i.prol = phi i32 [ %i.ke, %.lr.ph22.i.prol ], [ %i.w, %.lr.ph22.i.preheader ]
  %.01019.i.prol = phi ptr [ %i.kf, %.lr.ph22.i.prol ], [ %i.kb, %.lr.ph22.i.preheader ] ; 2 uses
  %prol.iter300 = phi i32 [ %prol.iter300.next, %.lr.ph22.i.prol ], [ 0, %.lr.ph22.i.preheader ]
  %i.ke = add nsw i32 %.0820.i.prol, -1           ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.01019.i.prol, i64 1 ; 2 uses
  %i.kg = load volatile i8, ptr %.01019.i.prol, align 1, !tbaa !11
  %i.kh = getelementptr inbounds nuw i8, ptr %.021.i.prol, i64 1 ; 2 uses
  store volatile i8 %i.kg, ptr %.021.i.prol, align 1, !tbaa !11
  %prol.iter300.next = add i32 %prol.iter300, 1   ; 2 uses
  %prol.iter300.cmp.not = icmp eq i32 %prol.iter300.next, %xtraiter298
  br i1 %prol.iter300.cmp.not, label %.lr.ph22.i.prol.loopexit, label %.lr.ph22.i.prol, !llvm.loop !68

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
  %i.kk = load volatile i8, ptr %.01019.i, align 1, !tbaa !11
  %i.kl = getelementptr inbounds nuw i8, ptr %.021.i, i64 1
  store volatile i8 %i.kk, ptr %.021.i, align 1, !tbaa !11
  %i.km = getelementptr inbounds nuw i8, ptr %.01019.i, i64 2
  %i.kn = load volatile i8, ptr %i.kj, align 1, !tbaa !11
  %i.ko = getelementptr inbounds nuw i8, ptr %.021.i, i64 2
  store volatile i8 %i.kn, ptr %i.kl, align 1, !tbaa !11
  %i.kp = getelementptr inbounds nuw i8, ptr %.01019.i, i64 3
  %i.kq = load volatile i8, ptr %i.km, align 1, !tbaa !11
  %i.kr = getelementptr inbounds nuw i8, ptr %.021.i, i64 3
  store volatile i8 %i.kq, ptr %i.ko, align 1, !tbaa !11
  %i.ks = getelementptr inbounds nuw i8, ptr %.01019.i, i64 4
  %i.kt = load volatile i8, ptr %i.kp, align 1, !tbaa !11
  %i.ku = getelementptr inbounds nuw i8, ptr %.021.i, i64 4
  store volatile i8 %i.kt, ptr %i.kr, align 1, !tbaa !11
  %i.kv = getelementptr inbounds nuw i8, ptr %.01019.i, i64 5
  %i.kw = load volatile i8, ptr %i.ks, align 1, !tbaa !11
  %i.kx = getelementptr inbounds nuw i8, ptr %.021.i, i64 5
  store volatile i8 %i.kw, ptr %i.ku, align 1, !tbaa !11
  %i.ky = getelementptr inbounds nuw i8, ptr %.01019.i, i64 6
  %i.kz = load volatile i8, ptr %i.kv, align 1, !tbaa !11
  %i.la = getelementptr inbounds nuw i8, ptr %.021.i, i64 6
  store volatile i8 %i.kz, ptr %i.kx, align 1, !tbaa !11
  %i.lb = getelementptr inbounds nuw i8, ptr %.01019.i, i64 7
  %i.lc = load volatile i8, ptr %i.ky, align 1, !tbaa !11
  %i.ld = getelementptr inbounds nuw i8, ptr %.021.i, i64 7
  store volatile i8 %i.lc, ptr %i.la, align 1, !tbaa !11
  %i.le = add nsw i32 %.0820.i, -8                ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.01019.i, i64 8
  %i.lg = load volatile i8, ptr %i.lb, align 1, !tbaa !11
  %i.lh = getelementptr inbounds nuw i8, ptr %.021.i, i64 8
  store volatile i8 %i.lg, ptr %i.ld, align 1, !tbaa !11
  %.not12.i.7 = icmp eq i32 %i.le, 0
  br i1 %.not12.i.7, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph22.i, !llvm.loop !59

bb.n:                                             ; preds = %bb.m
  br i1 %.not1218.i, label %_ZL14copywithendianPVcPVKcii.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.n
  %i.li = getelementptr i8, ptr %2, i64 %i.x      ; 2 uses
  %xtraiter = and i32 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i96.prol.loopexit, label %.lr.ph.i96.prol

.lr.ph.i96.prol:                                  ; preds = %.lr.ph.preheader.i, %.lr.ph.i96.prol
  %.pn17.i.prol = phi ptr [ %.1.i97.prol, %.lr.ph.i96.prol ], [ %i.li, %.lr.ph.preheader.i ]
  %.1916.i.prol = phi i32 [ %i.lj, %.lr.ph.i96.prol ], [ %i.w, %.lr.ph.preheader.i ]
  %.11115.i.prol = phi ptr [ %i.lk, %.lr.ph.i96.prol ], [ %i.kb, %.lr.ph.preheader.i ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i96.prol ], [ 0, %.lr.ph.preheader.i ]
  %.1.i97.prol = getelementptr i8, ptr %.pn17.i.prol, i64 -1 ; 3 uses
  %i.lj = add nsw i32 %.1916.i.prol, -1           ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.11115.i.prol, i64 1 ; 2 uses
  %i.ll = load volatile i8, ptr %.11115.i.prol, align 1, !tbaa !11
  store volatile i8 %i.ll, ptr %.1.i97.prol, align 1, !tbaa !11
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i96.prol.loopexit, label %.lr.ph.i96.prol, !llvm.loop !69

.lr.ph.i96.prol.loopexit:                         ; preds = %.lr.ph.i96.prol, %.lr.ph.preheader.i
  %.pn17.i.unr = phi ptr [ %i.li, %.lr.ph.preheader.i ], [ %.1.i97.prol, %.lr.ph.i96.prol ]
  %.1916.i.unr = phi i32 [ %i.w, %.lr.ph.preheader.i ], [ %i.lj, %.lr.ph.i96.prol ]
  %.11115.i.unr = phi ptr [ %i.kb, %.lr.ph.preheader.i ], [ %i.lk, %.lr.ph.i96.prol ]
  %i.lm = icmp ult i32 %i.w, 8
  br i1 %i.lm, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %.lr.ph.i96.prol.loopexit, %.lr.ph.i96
  %.pn17.i = phi ptr [ %.1.i97.7, %.lr.ph.i96 ], [ %.pn17.i.unr, %.lr.ph.i96.prol.loopexit ] ; 8 uses
  %.1916.i = phi i32 [ %i.mb, %.lr.ph.i96 ], [ %.1916.i.unr, %.lr.ph.i96.prol.loopexit ]
  %.11115.i = phi ptr [ %i.mc, %.lr.ph.i96 ], [ %.11115.i.unr, %.lr.ph.i96.prol.loopexit ] ; 9 uses
  %.1.i97 = getelementptr i8, ptr %.pn17.i, i64 -1
  %i.ln = getelementptr inbounds nuw i8, ptr %.11115.i, i64 1
  %i.lo = load volatile i8, ptr %.11115.i, align 1, !tbaa !11
  store volatile i8 %i.lo, ptr %.1.i97, align 1, !tbaa !11
  %.1.i97.1 = getelementptr i8, ptr %.pn17.i, i64 -2
  %i.lp = getelementptr inbounds nuw i8, ptr %.11115.i, i64 2
  %i.lq = load volatile i8, ptr %i.ln, align 1, !tbaa !11
  store volatile i8 %i.lq, ptr %.1.i97.1, align 1, !tbaa !11
  %.1.i97.2 = getelementptr i8, ptr %.pn17.i, i64 -3
  %i.lr = getelementptr inbounds nuw i8, ptr %.11115.i, i64 3
  %i.ls = load volatile i8, ptr %i.lp, align 1, !tbaa !11
  store volatile i8 %i.ls, ptr %.1.i97.2, align 1, !tbaa !11
  %.1.i97.3 = getelementptr i8, ptr %.pn17.i, i64 -4
  %i.lt = getelementptr inbounds nuw i8, ptr %.11115.i, i64 4
  %i.lu = load volatile i8, ptr %i.lr, align 1, !tbaa !11
  store volatile i8 %i.lu, ptr %.1.i97.3, align 1, !tbaa !11
  %.1.i97.4 = getelementptr i8, ptr %.pn17.i, i64 -5
  %i.lv = getelementptr inbounds nuw i8, ptr %.11115.i, i64 5
  %i.lw = load volatile i8, ptr %i.lt, align 1, !tbaa !11
  store volatile i8 %i.lw, ptr %.1.i97.4, align 1, !tbaa !11
  %.1.i97.5 = getelementptr i8, ptr %.pn17.i, i64 -6
  %i.lx = getelementptr inbounds nuw i8, ptr %.11115.i, i64 6
  %i.ly = load volatile i8, ptr %i.lv, align 1, !tbaa !11
  store volatile i8 %i.ly, ptr %.1.i97.5, align 1, !tbaa !11
  %.1.i97.6 = getelementptr i8, ptr %.pn17.i, i64 -7
  %i.lz = getelementptr inbounds nuw i8, ptr %.11115.i, i64 7
  %i.ma = load volatile i8, ptr %i.lx, align 1, !tbaa !11
  store volatile i8 %i.ma, ptr %.1.i97.6, align 1, !tbaa !11
  %.1.i97.7 = getelementptr i8, ptr %.pn17.i, i64 -8 ; 2 uses
  %i.mb = add nsw i32 %.1916.i, -8                ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.11115.i, i64 8
  %i.md = load volatile i8, ptr %i.lz, align 1, !tbaa !11
  store volatile i8 %i.md, ptr %.1.i97.7, align 1, !tbaa !11
  %.not.i98.7 = icmp eq i32 %i.mb, 0
  br i1 %.not.i98.7, label %_ZL14copywithendianPVcPVKcii.exit, label %.lr.ph.i96, !llvm.loop !61

_ZL14copywithendianPVcPVKcii.exit:                ; preds = %.lr.ph.i96.prol.loopexit, %.lr.ph.i96, %.lr.ph22.i.prol.loopexit, %.lr.ph22.i
  switch i32 %i.w, label %_ZL14copywithendianPVcPVKcii.exit.thread [
    i32 4, label %bb.o
    i32 8, label %bb.p
  ]

bb.o:                                             ; preds = %_ZL14copywithendianPVcPVKcii.exit
  %i.me = load volatile float, ptr %2, align 8, !tbaa !11
  %i.mf = fpext float %i.me to double
  br label %bb.q

bb.p:                                             ; preds = %_ZL14copywithendianPVcPVKcii.exit
  %i.mg = load volatile double, ptr %2, align 8, !tbaa !11
  br label %bb.q

_ZL14copywithendianPVcPVKcii.exit.thread:         ; preds = %bb.n, %.preheader.i, %_ZL14copywithendianPVcPVKcii.exit
  %i.mh = load volatile double, ptr %2, align 8, !tbaa !11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_ZL14copywithendianPVcPVKcii.exit.thread, %bb.o
  %.060 = phi double [ %i.mf, %bb.o ], [ %i.mg, %bb.p ], [ %i.mh, %_ZL14copywithendianPVcPVKcii.exit.thread ]
  call void @_Z14lua_pushnumberP9lua_Stated(ptr noundef %0, double noundef %.060)
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
  %11 = call i32 @llvm.smin.i32(i32 %i.w, i32 8)
  %i.mm = icmp sgt i32 %i.w, 0
  br i1 %i.mm, label %.lr.ph.i102, label %_ZL9unpackintP9lua_StatePKciii.exit128.thread

.lr.ph.i102:                                      ; preds = %bb.s
  %i.mn = load i32, ptr %i.o, align 8, !tbaa !49
  %.not41.i103 = icmp eq i32 %i.mn, 0
  %i.mo = call i32 @llvm.umin.i32(i32 %i.w, i32 8) ; 9 uses
  %i.mp = zext nneg i32 %i.mo to i64              ; 8 uses
  br i1 %.not41.i103, label %.lr.ph.split.us.i124, label %.lr.ph.split.i104

.lr.ph.split.us.i124:                             ; preds = %.lr.ph.i102
  %i.mq = sub nsw i32 %i.w, %i.mo
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds i8, ptr %i.ml, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !11
  %i.mu = zext i8 %i.mt to i64                    ; 2 uses
  %.not305 = icmp eq i32 %i.w, 1
  br i1 %.not305, label %._crit_edge.i108, label %.lr.ph.split.us.i124.1

.lr.ph.split.us.i124.1:                           ; preds = %.lr.ph.split.us.i124
  %indvars.iv.next53.i127 = add nsw i32 %i.mo, -1
  %i.mv = shl nuw nsw i64 %i.mu, 8
  %i.mw = sub i32 %i.w, %indvars.iv.next53.i127
  %i.mx = sext i32 %i.mw to i64
  %i.my = getelementptr inbounds i8, ptr %i.ml, i64 %i.mx
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !11
  %i.na = zext i8 %i.mz to i64
  %i.nb = or disjoint i64 %i.mv, %i.na            ; 2 uses
  %i.nc = icmp ugt i32 %i.w, 2
  br i1 %i.nc, label %.lr.ph.split.us.i124.2, label %._crit_edge.i108

.lr.ph.split.us.i124.2:                           ; preds = %.lr.ph.split.us.i124.1
  %indvars.iv.next53.i127.1 = add nsw i32 %i.mo, -2
  %i.nd = shl nuw nsw i64 %i.nb, 8
  %i.ne = sub i32 %i.w, %indvars.iv.next53.i127.1
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds i8, ptr %i.ml, i64 %i.nf
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !11
  %i.ni = zext i8 %i.nh to i64
  %i.nj = or disjoint i64 %i.nd, %i.ni            ; 2 uses
  %.not306.a = icmp eq i32 %i.w, 3
  br i1 %.not306.a, label %._crit_edge.i108, label %.lr.ph.split.us.i124.3

.lr.ph.split.us.i124.3:                           ; preds = %.lr.ph.split.us.i124.2
  %indvars.iv.next53.i127.2 = add nsw i32 %i.mo, -3
  %i.nk = shl nuw nsw i64 %i.nj, 8
  %i.nl = sub i32 %i.w, %indvars.iv.next53.i127.2
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds i8, ptr %i.ml, i64 %i.nm
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !11
  %i.np = zext i8 %i.no to i64
  %i.nq = or disjoint i64 %i.nk, %i.np            ; 2 uses
  %i.nr = icmp ugt i32 %i.w, 4
  br i1 %i.nr, label %.lr.ph.split.us.i124.4, label %._crit_edge.i108

.lr.ph.split.us.i124.4:                           ; preds = %.lr.ph.split.us.i124.3
  %indvars.iv.next53.i127.3 = add nsw i32 %i.mo, -4
  %i.ns = shl i64 %i.nq, 8
  %i.nt = sub i32 %i.w, %indvars.iv.next53.i127.3
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds i8, ptr %i.ml, i64 %i.nu
  %i.nw = load i8, ptr %i.nv, align 1, !tbaa !11
  %i.nx = zext i8 %i.nw to i64
  %i.ny = or disjoint i64 %i.ns, %i.nx            ; 2 uses
  %.not307.a = icmp eq i32 %i.w, 5
  br i1 %.not307.a, label %._crit_edge.i108, label %.lr.ph.split.us.i124.5

.lr.ph.split.us.i124.5:                           ; preds = %.lr.ph.split.us.i124.4
  %indvars.iv.next53.i127.4 = add nsw i32 %i.mo, -5
  %i.nz = shl i64 %i.ny, 8
  %i.oa = sub i32 %i.w, %indvars.iv.next53.i127.4
  %i.ob = sext i32 %i.oa to i64
  %i.oc = getelementptr inbounds i8, ptr %i.ml, i64 %i.ob
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !11
  %i.oe = zext i8 %i.od to i64
  %i.of = or disjoint i64 %i.nz, %i.oe            ; 2 uses
  %i.og = icmp ugt i32 %i.w, 6
  br i1 %i.og, label %.lr.ph.split.us.i124.6, label %._crit_edge.i108

.lr.ph.split.us.i124.6:                           ; preds = %.lr.ph.split.us.i124.5
  %indvars.iv.next53.i127.5 = add nsw i32 %i.mo, -6
  %i.oh = shl i64 %i.of, 8
  %i.oi = sub i32 %i.w, %indvars.iv.next53.i127.5
  %i.oj = sext i32 %i.oi to i64
  %i.ok = getelementptr inbounds i8, ptr %i.ml, i64 %i.oj
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !11
  %i.om = zext i8 %i.ol to i64
  %i.on = or disjoint i64 %i.oh, %i.om            ; 2 uses
  %.not308.a = icmp eq i32 %i.w, 7
  br i1 %.not308.a, label %._crit_edge.i108, label %.lr.ph.split.us.i124.7

.lr.ph.split.us.i124.7:                           ; preds = %.lr.ph.split.us.i124.6
  %indvars.iv.next53.i127.6 = add nsw i32 %i.mo, -7
  %i.oo = shl i64 %i.on, 8
  %i.op = sub i32 %i.w, %indvars.iv.next53.i127.6
  %i.oq = sext i32 %i.op to i64
  %i.or = getelementptr inbounds i8, ptr %i.ml, i64 %i.oq
  %i.os = load i8, ptr %i.or, align 1, !tbaa !11
  %i.ot = zext i8 %i.os to i64
  %i.ou = or disjoint i64 %i.oo, %i.ot
  br label %._crit_edge.i108

.lr.ph.split.i104:                                ; preds = %.lr.ph.i102
  %i.ov = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.ow = getelementptr i8, ptr %i.ov, i64 -1
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !11
  %i.oy = zext i8 %i.ox to i64                    ; 2 uses
  %.not301 = icmp eq i32 %i.w, 1
  br i1 %.not301, label %._crit_edge.i108.thread, label %.lr.ph.split.i104.1

.lr.ph.split.i104.1:                              ; preds = %.lr.ph.split.i104
  %i.oz = shl nuw nsw i64 %i.oy, 8
  %i.pa = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.pb = getelementptr i8, ptr %i.pa, i64 -2
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !11
  %i.pd = zext i8 %i.pc to i64
  %i.pe = or disjoint i64 %i.oz, %i.pd            ; 2 uses
  %i.pf = icmp ugt i32 %i.w, 2
  br i1 %i.pf, label %.lr.ph.split.i104.2, label %._crit_edge.i108.thread

.lr.ph.split.i104.2:                              ; preds = %.lr.ph.split.i104.1
  %i.pg = shl nuw nsw i64 %i.pe, 8
  %i.ph = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.pi = getelementptr i8, ptr %i.ph, i64 -3
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !11
  %i.pk = zext i8 %i.pj to i64
  %i.pl = or disjoint i64 %i.pg, %i.pk            ; 2 uses
  %.not302 = icmp eq i32 %i.w, 3
  br i1 %.not302, label %._crit_edge.i108.thread, label %.lr.ph.split.i104.3

.lr.ph.split.i104.3:                              ; preds = %.lr.ph.split.i104.2
  %i.pm = shl nuw nsw i64 %i.pl, 8
  %i.pn = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.po = getelementptr i8, ptr %i.pn, i64 -4
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !11
  %i.pq = zext i8 %i.pp to i64
  %i.pr = or disjoint i64 %i.pm, %i.pq            ; 2 uses
  %i.ps = icmp ugt i32 %i.w, 4
  br i1 %i.ps, label %.lr.ph.split.i104.4, label %._crit_edge.i108.thread

.lr.ph.split.i104.4:                              ; preds = %.lr.ph.split.i104.3
  %i.pt = shl i64 %i.pr, 8
  %i.pu = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.pv = getelementptr i8, ptr %i.pu, i64 -5
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !11
  %i.px = zext i8 %i.pw to i64
  %i.py = or disjoint i64 %i.pt, %i.px            ; 2 uses
  %.not303 = icmp eq i32 %i.w, 5
  br i1 %.not303, label %._crit_edge.i108.thread, label %.lr.ph.split.i104.5

.lr.ph.split.i104.5:                              ; preds = %.lr.ph.split.i104.4
  %i.pz = shl i64 %i.py, 8
  %i.qa = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.qb = getelementptr i8, ptr %i.qa, i64 -6
  %i.qc = load i8, ptr %i.qb, align 1, !tbaa !11
  %i.qd = zext i8 %i.qc to i64
  %i.qe = or disjoint i64 %i.pz, %i.qd            ; 2 uses
  %i.qf = icmp ugt i32 %i.w, 6
  br i1 %i.qf, label %.lr.ph.split.i104.6, label %._crit_edge.i108.thread

.lr.ph.split.i104.6:                              ; preds = %.lr.ph.split.i104.5
  %i.qg = shl i64 %i.qe, 8
  %i.qh = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.qi = getelementptr i8, ptr %i.qh, i64 -7
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !11
  %i.qk = zext i8 %i.qj to i64
  %i.ql = or disjoint i64 %i.qg, %i.qk            ; 2 uses
  %.not304 = icmp eq i32 %i.w, 7
  br i1 %.not304, label %._crit_edge.i108.thread, label %.lr.ph.split.i104.7

.lr.ph.split.i104.7:                              ; preds = %.lr.ph.split.i104.6
  %i.qm = shl i64 %i.ql, 8
  %i.qn = getelementptr i8, ptr %i.ml, i64 %i.mp
  %i.qo = getelementptr i8, ptr %i.qn, i64 -8
  %i.qp = load i8, ptr %i.qo, align 1, !tbaa !11
  %i.qq = zext i8 %i.qp to i64
  %i.qr = or disjoint i64 %i.qm, %i.qq
  br label %._crit_edge.i108.thread

._crit_edge.i108:                                 ; preds = %.lr.ph.split.us.i124.7, %.lr.ph.split.us.i124.6, %.lr.ph.split.us.i124.5, %.lr.ph.split.us.i124.4, %.lr.ph.split.us.i124.3, %.lr.ph.split.us.i124.2, %.lr.ph.split.us.i124.1, %.lr.ph.split.us.i124
  %.lcssa281 = phi i64 [ %i.mu, %.lr.ph.split.us.i124 ], [ %i.nb, %.lr.ph.split.us.i124.1 ], [ %i.nj, %.lr.ph.split.us.i124.2 ], [ %i.nq, %.lr.ph.split.us.i124.3 ], [ %i.ny, %.lr.ph.split.us.i124.4 ], [ %i.of, %.lr.ph.split.us.i124.5 ], [ %i.on, %.lr.ph.split.us.i124.6 ], [ %i.ou, %.lr.ph.split.us.i124.7 ] ; 2 uses
  %i.qs = icmp samesign ult i32 %i.w, 9
  br i1 %i.qs, label %_ZL9unpackintP9lua_StatePKciii.exit128, label %.lr.ph46.split.us.preheader.i119

._crit_edge.i108.thread:                          ; preds = %.lr.ph.split.i104.7, %.lr.ph.split.i104.6, %.lr.ph.split.i104.5, %.lr.ph.split.i104.4, %.lr.ph.split.i104.3, %.lr.ph.split.i104.2, %.lr.ph.split.i104.1, %.lr.ph.split.i104
  %.lcssa = phi i64 [ %i.oy, %.lr.ph.split.i104 ], [ %i.pe, %.lr.ph.split.i104.1 ], [ %i.pl, %.lr.ph.split.i104.2 ], [ %i.pr, %.lr.ph.split.i104.3 ], [ %i.py, %.lr.ph.split.i104.4 ], [ %i.qe, %.lr.ph.split.i104.5 ], [ %i.ql, %.lr.ph.split.i104.6 ], [ %i.qr, %.lr.ph.split.i104.7 ] ; 2 uses
  %i.qt = icmp samesign ult i32 %i.w, 9
  br i1 %i.qt, label %_ZL9unpackintP9lua_StatePKciii.exit128, label %.lr.ph46.split.preheader.i113

.lr.ph46.split.preheader.i113:                    ; preds = %._crit_edge.i108.thread
  %i.qu = zext nneg i32 %11 to i64
  br label %.lr.ph46.split.i114

.lr.ph46.split.us.preheader.i119:                 ; preds = %._crit_edge.i108
  %i.qv = zext nneg i32 %i.w to i64
  br label %.lr.ph46.split.us.i120

.lr.ph46.split.us.i120:                           ; preds = %bb.t, %.lr.ph46.split.us.preheader.i119
  %indvars.iv58.i121 = phi i64 [ 8, %.lr.ph46.split.us.preheader.i119 ], [ %indvars.iv.next59.i123, %bb.t ] ; 2 uses
  %i.qw = trunc nsw i64 %indvars.iv58.i121 to i32
  %i.qx = xor i32 %i.qw, -1
  %i.qy = add nsw i32 %i.w, %i.qx
  %i.qz = sext i32 %i.qy to i64
  %i.ra = getelementptr inbounds i8, ptr %i.ml, i64 %i.qz
  %i.rb = load i8, ptr %i.ra, align 1, !tbaa !11
  %.not39.us.i122 = icmp eq i8 %i.rb, 0
  br i1 %.not39.us.i122, label %bb.t, label %.split.us.i117

bb.t:                                             ; preds = %.lr.ph46.split.us.i120
  %indvars.iv.next59.i123 = add nuw nsw i64 %indvars.iv58.i121, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next59.i123, %i.qv
  br i1 %exitcond.not.a, label %_ZL9unpackintP9lua_StatePKciii.exit128, label %.lr.ph46.split.us.i120, !llvm.loop !67

bb.u:                                             ; preds = %.lr.ph46.split.i114
  %indvars.iv.next55.i118 = add nuw nsw i64 %indvars.iv54.i115, 1 ; 2 uses
  %12 = trunc nuw i64 %indvars.iv.next55.i118 to i32
  %13 = icmp sgt i32 %i.w, %12
  br i1 %13, label %.lr.ph46.split.i114, label %_ZL9unpackintP9lua_StatePKciii.exit128, !llvm.loop !67

.lr.ph46.split.i114:                              ; preds = %bb.u, %.lr.ph46.split.preheader.i113
  %indvars.iv54.i115 = phi i64 [ %i.qu, %.lr.ph46.split.preheader.i113 ], [ %indvars.iv.next55.i118, %bb.u ] ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.ml, i64 %indvars.iv54.i115
  %i.rd = load i8, ptr %i.rc, align 1, !tbaa !11
  %.not39.i116 = icmp eq i8 %i.rd, 0
  br i1 %.not39.i116, label %bb.u, label %.split.us.i117

.split.us.i117:                                   ; preds = %.lr.ph46.split.i114, %.lr.ph46.split.us.i120
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.62, i32 noundef %i.w) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit128:           ; preds = %bb.u, %bb.t, %._crit_edge.i108.thread, %._crit_edge.i108
  %.0.lcssa.i109220 = phi i64 [ %.lcssa, %._crit_edge.i108.thread ], [ %.lcssa281, %bb.t ], [ %.lcssa281, %._crit_edge.i108 ], [ %.lcssa, %bb.u ] ; 2 uses
  %i.re = load i64, ptr %i.b, align 8, !tbaa !9
  %i.rf = add nsw i64 %i.mk, %i.x
  %i.rg = sub i64 %i.re, %i.rf
  %.not65 = icmp ugt i64 %.0.lcssa.i109220, %i.rg
  br i1 %.not65, label %bb.v, label %_ZL9unpackintP9lua_StatePKciii.exit128.thread

bb.v:                                             ; preds = %_ZL9unpackintP9lua_StatePKciii.exit128
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.59) #14
  unreachable

_ZL9unpackintP9lua_StatePKciii.exit128.thread:    ; preds = %bb.s, %_ZL9unpackintP9lua_StatePKciii.exit128
  %.1.i101131 = phi i64 [ %.0.lcssa.i109220, %_ZL9unpackintP9lua_StatePKciii.exit128 ], [ 0, %bb.s ] ; 2 uses
  %i.rh = getelementptr inbounds i8, ptr %i.ml, i64 %i.x
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef %i.rh, i64 noundef %.1.i101131)
  %i.ri = trunc i64 %.1.i101131 to i32
  %i.rj = add nsw i32 %i.ab, %i.ri
  br label %bb.z

bb.w:                                             ; preds = %bb.e
  %i.rk = sext i32 %i.ab to i64                   ; 2 uses
  %i.rl = getelementptr inbounds i8, ptr %i.f, i64 %i.rk ; 2 uses
  %i.rm = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.rl) #15 ; 3 uses
  %i.rn = add i64 %i.rm, %i.rk
  %i.ro = load i64, ptr %i.b, align 8, !tbaa !9
  %i.rp = icmp ult i64 %i.rn, %i.ro
  br i1 %i.rp, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.61) #14
  unreachable

bb.y:                                             ; preds = %bb.w
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull %i.rl, i64 noundef %i.rm)
  %i.rq = trunc i64 %i.rm to i32
  %i.rr = add i32 %i.ab, 1
  %i.rs = add i32 %i.rr, %i.rq
  br label %bb.z

default.unreachable213:                           ; preds = %bb.e
  unreachable

bb.z:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.y, %_ZL9unpackintP9lua_StatePKciii.exit128.thread, %bb.r, %bb.q, %_ZL9unpackintP9lua_StatePKciii.exit95, %_ZL9unpackintP9lua_StatePKciii.exit
  %.159 = phi i32 [ %i.ac, %bb.y ], [ %i.ac, %_ZL9unpackintP9lua_StatePKciii.exit ], [ %i.ac, %_ZL9unpackintP9lua_StatePKciii.exit95 ], [ %i.ac, %bb.q ], [ %i.ac, %bb.r ], [ %i.ac, %_ZL9unpackintP9lua_StatePKciii.exit128.thread ], [ %.058181, %bb.e ], [ %.058181, %bb.e ], [ %.058181, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %i.rs, %bb.y ], [ %i.ab, %_ZL9unpackintP9lua_StatePKciii.exit ], [ %i.ab, %_ZL9unpackintP9lua_StatePKciii.exit95 ], [ %i.ab, %bb.q ], [ %i.ab, %bb.r ], [ %i.rj, %_ZL9unpackintP9lua_StatePKciii.exit128.thread ], [ %i.ab, %bb.e ], [ %i.ab, %bb.e ], [ %i.ab, %bb.e ]
  %i.rt = add nsw i32 %.1, %i.w                   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.ru = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !11
  %.not63 = icmp eq i8 %i.rv, 0
  br i1 %.not63, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !70

._crit_edge.loopexit:                             ; preds = %bb.z
  %i.rw = add nsw i32 %i.rt, 1
  %i.rx = add nsw i32 %.159, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.058.lcssa = phi i32 [ 1, %bb.c ], [ %i.rx, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ %i.m, %bb.c ], [ %i.rw, %._crit_edge.loopexit ]
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %.0.lcssa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 %.058.lcssa
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
  %i.f = load i64, ptr %i.a, align 8, !tbaa !9
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
  %.049 = phi i32 [ %.0.i, %bb.b ], [ 1, %bb.a ]  ; 2 uses
  %.not = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %.not, label %._ZL10nospecialsPKcm.exit.thread_crit_edge, label %bb.e

._ZL10nospecialsPKcm.exit.thread_crit_edge:       ; preds = %bb.d
  %.pre91.pre = load i64, ptr %i.b, align 8, !tbaa !9
  br label %_ZL10nospecialsPKcm.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.m = call noundef i32 @_Z13lua_tobooleanP9lua_Statei(ptr noundef %0, i32 noundef 4)
  %.not55 = icmp eq i32 %i.m, 0
  %.pre = load i64, ptr %i.b, align 8, !tbaa !9   ; 5 uses
  br i1 %.not55, label %.preheader, label %_ZL10nospecialsPKcm.exit

.preheader:                                       ; preds = %bb.e, %bb.f
  %.0.i63 = phi i64 [ %i.r, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0.i63 ; 2 uses
  %i.o = call noundef ptr @strpbrk(ptr noundef readonly %i.n, ptr noundef nonnull @.str.20) #15
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.f, label %_ZL10nospecialsPKcm.exit.thread

bb.f:                                             ; preds = %.preheader
  %i.p = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.n) #15
  %i.q = add i64 %.0.i63, 1
  %i.r = add i64 %i.q, %i.p                       ; 2 uses
  %.not9.i = icmp ugt i64 %i.r, %.pre
  br i1 %.not9.i, label %_ZL10nospecialsPKcm.exit, label %.preheader, !llvm.loop !71

_ZL10nospecialsPKcm.exit:                         ; preds = %bb.f, %bb.e
  %i.s = zext nneg i32 %.049 to i64               ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.s
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -1 ; 2 uses
  %i.v = load i64, ptr %i.a, align 8, !tbaa !9
  %i.w = sub i64 %i.v, %i.s
  %i.x = add i64 %i.w, 1                          ; 2 uses
  %i.y = icmp eq i64 %.pre, 0
  br i1 %i.y, label %_ZL8lmemfindPKcmS0_m.exit, label %bb.g

bb.g:                                             ; preds = %_ZL10nospecialsPKcm.exit
  %i.z = icmp ugt i64 %.pre, %i.x
  br i1 %i.z, label %.critedge61, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.aa = add i64 %.pre, -1                       ; 2 uses
  %i.ab = sub i64 %i.x, %i.aa
  %i.ac = load i8, ptr %i.d, align 1, !tbaa !11
  %i.ad = sext i8 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %.lr.ph.i
  %.02029.i = phi i64 [ %i.ab, %.lr.ph.i ], [ %i.ak, %bb.j ] ; 2 uses
  %.02128.i = phi ptr [ %i.u, %.lr.ph.i ], [ %i.ag, %bb.j ] ; 2 uses
  %i.af = call noundef ptr @memchr(ptr noundef nonnull %.02128.i, i32 noundef %i.ad, i64 noundef %.02029.i) #15 ; 3 uses
  %.not25.i = icmp eq ptr %i.af, null
  br i1 %.not25.i, label %.critedge61, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 3 uses
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.ag, ptr nonnull readonly %i.ae, i64 %i.aa)
  %i.ah = icmp eq i32 %bcmp.i, 0
  br i1 %i.ah, label %_ZL8lmemfindPKcmS0_m.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = ptrtoint ptr %i.ag to i64
end_hunk_0
