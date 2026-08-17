inline.NumInlined: 78
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL10gmatch_auxP9lua_State:bb.a
  %i.ag = ptrtoint ptr %.02437 to i64
  %i.ah = sub i64 %i.r, %i.ag
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %i.af, ptr noundef %.02437, i64 noundef %i.ah)
  br label %_ZL15push_onecaptureP10MatchStateiPKcS2_.exit.peel

bb.e:                                             ; preds = %.lr.ph.i.preheader
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !32 ; 2 uses
  switch i64 %i.aj, label %bb.g [
    i64 -1, label %.loopexit45
    i64 -2, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !34
  %i.al = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, 1
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %i.af, i32 noundef %i.aq)
  br label %_ZL15push_onecaptureP10MatchStateiPKcS2_.exit.peel

bb.g:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ac, align 8, !tbaa !34
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %i.af, ptr noundef %i.ar, i64 noundef %i.aj)
  br label %_ZL15push_onecaptureP10MatchStateiPKcS2_.exit.peel

_ZL15push_onecaptureP10MatchStateiPKcS2_.exit.peel: ; preds = %bb.g, %bb.f, %bb.d
  %exitcond.not.i.peel = icmp eq i32 %spec.select.i, 1
  br i1 %exitcond.not.i.peel, label %_ZL13push_capturesP10MatchStatePKcS2_.exit.thread29, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZL15push_onecaptureP10MatchStateiPKcS2_.exit.peel, %_ZL15push_onecaptureP10MatchStateiPKcS2_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZL15push_onecaptureP10MatchStateiPKcS2_.exit ], [ 1, %_ZL15push_onecaptureP10MatchStateiPKcS2_.exit.peel ] ; 3 uses
  %i.as = load i32, ptr %i.p, align 8, !tbaa !31
  %i.at = sext i32 %i.as to i64
  %.not.i = icmp slt i64 %indvars.iv, %i.at
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !25
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.au, ptr noundef nonnull @.str.29) #14
  unreachable

bb.i:                                             ; preds = %.lr.ph.i
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %indvars.iv ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !32 ; 2 uses
  %i.ay = load ptr, ptr %i.g, align 8, !tbaa !25  ; 3 uses
  switch i64 %i.ax, label %bb.k [
    i64 -1, label %.loopexit45
    i64 -2, label %bb.j
  ]

.loopexit45:                                      ; preds = %bb.i, %bb.e
  %.lcssa39 = phi ptr [ %i.af, %bb.e ], [ %i.ay, %bb.i ]
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %.lcssa39, ptr noundef nonnull @.str.30) #14
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.av, align 8, !tbaa !34
  %i.ba = load ptr, ptr %i.h, align 8, !tbaa !28
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = trunc i64 %i.bd to i32
  %i.bf = add nsw i32 %i.be, 1
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %i.ay, i32 noundef %i.bf)
  br label %_ZL15push_onecaptureP10MatchStateiPKcS2_.exit

bb.k:                                             ; preds = %bb.i
  %i.bg = load ptr, ptr %i.av, align 8, !tbaa !34
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %i.ay, ptr noundef %i.bg, i64 noundef %i.ax)
  br label %_ZL15push_onecaptureP10MatchStateiPKcS2_.exit

_ZL15push_onecaptureP10MatchStateiPKcS2_.exit:    ; preds = %bb.j, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.ad
  br i1 %exitcond.not.i, label %_ZL13push_capturesP10MatchStatePKcS2_.exit.thread29, label %.lr.ph.i, !llvm.loop !112

_ZL13push_capturesP10MatchStatePKcS2_.exit.thread: ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %.02437, i64 1 ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !29
  %.not = icmp ugt ptr %i.bh, %i.bi
  br i1 %.not, label %_ZL13push_capturesP10MatchStatePKcS2_.exit.thread29, label %bb.b, !llvm.loop !113

_ZL13push_capturesP10MatchStatePKcS2_.exit.thread29: ; preds = %_ZL13push_capturesP10MatchStatePKcS2_.exit.thread, %_ZL15push_onecaptureP10MatchStateiPKcS2_.exit, %_ZL15push_onecaptureP10MatchStateiPKcS2_.exit.peel, %bb.a, %bb.c
  %.2 = phi i32 [ %i.x, %bb.c ], [ 0, %bb.a ], [ 1, %_ZL15push_onecaptureP10MatchStateiPKcS2_.exit.peel ], [ %spec.select.i, %_ZL15push_onecaptureP10MatchStateiPKcS2_.exit ], [ 0, %_ZL13push_capturesP10MatchStatePKcS2_.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret i32 %.2
}

declare noundef ptr @_Z13lua_tolstringP9lua_StateiPm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z14lua_tointegerxP9lua_StateiPi(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z11lua_replaceP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z15luaL_typeerrorLP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z13lua_pushvalueP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z8lua_callP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z12lua_gettableP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z12lua_isstringP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_Z13luaL_typenameP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z13luaL_addvalueP11luaL_Strbuf(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #6

declare noundef ptr @_Z15luaL_optlstringP9lua_StateiPKcPm(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z15lua_createtableP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z12lua_settableP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 9) i32 @_ZL10getdetailsP6HeadermPPKcPiS4_(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) initializes((0, 4)) %3, ptr nofree noundef nonnull writeonly captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call fastcc noundef i32 @_ZL9getoptionP6HeaderPPKcPi(ptr noundef %0, ptr noundef %2, ptr noundef %3) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.c = load i32, ptr %3, align 4, !tbaa !40
  %i.d = icmp eq i32 %i.b, 7
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !46
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call fastcc noundef i32 @_ZL9getoptionP6HeaderPPKcPi(ptr noundef %0, ptr noundef %2, ptr noundef %i.a)
  %i.i = icmp eq i32 %i.h, 3
  %i.j = load i32, ptr %i.a, align 4              ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  %or.cond = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load ptr, ptr %0, align 8, !tbaa !47
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %i.l, i32 noundef 1, ptr noundef nonnull @.str.50) #14
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.m = phi i32 [ %i.j, %bb.c ], [ %i.c, %bb.a ] ; 2 uses
  %i.n = icmp slt i32 %i.m, 2
  %i.o = icmp eq i32 %i.b, 3
  %or.cond3 = or i1 %i.o, %i.n
  br i1 %or.cond3, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !50
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %i.q) ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %spec.select)
  %.not = icmp samesign ult i32 %i.r, 2
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !47
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %i.s, i32 noundef 1, ptr noundef nonnull @.str.51) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = add nsw i32 %spec.select, -1             ; 2 uses
  %i.u = trunc i64 %1 to i32
  %i.v = and i32 %i.t, %i.u
  %i.w = sub nsw i32 %spec.select, %i.v
  %i.x = and i32 %i.w, %i.t
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %storemerge = phi i32 [ %i.x, %bb.h ], [ 0, %bb.e ]
  store i32 %storemerge, ptr %4, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 9) i32 @_ZL9getoptionP6HeaderPPKcPi(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 11 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !46
  %i.c = load i8, ptr %i.a, align 1, !tbaa !11    ; 2 uses
  store i32 0, ptr %2, align 4, !tbaa !40
  switch i8 %i.c, label %_ZL11getnumlimitP6HeaderPPKci.exit58 [
    i8 98, label %bb.b
    i8 66, label %bb.c
    i8 104, label %bb.d
    i8 72, label %bb.e
    i8 108, label %bb.f
    i8 76, label %bb.g
    i8 106, label %bb.h
    i8 74, label %bb.i
    i8 84, label %bb.j
    i8 102, label %bb.k
    i8 100, label %bb.l
    i8 110, label %bb.m
    i8 105, label %bb.n
    i8 73, label %bb.r
    i8 115, label %bb.v
    i8 99, label %bb.z
    i8 122, label %bb.am
    i8 120, label %bb.ad
    i8 88, label %bb.ae
    i8 32, label %bb.al
    i8 60, label %bb.ak
    i8 62, label %bb.af
    i8 61, label %bb.ak
    i8 33, label %bb.ag
  ]

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !40
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !40
  br label %bb.am

bb.d:                                             ; preds = %bb.a
  store i32 2, ptr %2, align 4, !tbaa !40
  br label %bb.am

bb.e:                                             ; preds = %bb.a
  store i32 2, ptr %2, align 4, !tbaa !40
  br label %bb.am

bb.f:                                             ; preds = %bb.a
  store i32 8, ptr %2, align 4, !tbaa !40
  br label %bb.am

bb.g:                                             ; preds = %bb.a
  store i32 8, ptr %2, align 4, !tbaa !40
  br label %bb.am

bb.h:                                             ; preds = %bb.a
  store i32 4, ptr %2, align 4, !tbaa !40
  br label %bb.am

bb.i:                                             ; preds = %bb.a
  store i32 4, ptr %2, align 4, !tbaa !40
  br label %bb.am

bb.j:                                             ; preds = %bb.a
  store i32 4, ptr %2, align 4, !tbaa !40
  br label %bb.am

bb.k:                                             ; preds = %bb.a
  store i32 4, ptr %2, align 4, !tbaa !40
  br label %bb.am

bb.l:                                             ; preds = %bb.a
  store i32 8, ptr %2, align 4, !tbaa !40
  br label %bb.am

bb.m:                                             ; preds = %bb.a
  store i32 8, ptr %2, align 4, !tbaa !40
  br label %bb.am

bb.n:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !11
  %i.e = sext i8 %i.d to i32
  %i.f = add nsw i32 %i.e, -58
  %i.g = icmp ult i32 %i.f, -10
  br i1 %i.g, label %_ZL11getnumlimitP6HeaderPPKci.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.n, %.preheader.i.i
  %i.h = phi ptr [ %i.j, %.preheader.i.i ], [ %i.b, %bb.n ] ; 2 uses
  %.0.i.i = phi i32 [ %i.n, %.preheader.i.i ], [ 0, %bb.n ]
  %i.i = mul nsw i32 %.0.i.i, 10
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 3 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !46
  %i.k = load i8, ptr %i.h, align 1, !tbaa !11
  %i.l = sext i8 %i.k to i32
  %i.m = add i32 %i.i, -48
  %i.n = add i32 %i.m, %i.l                       ; 6 uses
  %i.o = load i8, ptr %i.j, align 1, !tbaa !11
  %i.p = sext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48
  %i.r = icmp ult i32 %i.q, 10                    ; 2 uses
  %i.s = icmp slt i32 %i.n, 214748364
  %i.t = select i1 %i.r, i1 %i.s, i1 false
  br i1 %i.t, label %.preheader.i.i, label %bb.o, !llvm.loop !114

bb.o:                                             ; preds = %.preheader.i.i
  %i.u = icmp sgt i32 %i.n, 1073741824
  %or.cond.not.i.i = or i1 %i.u, %i.r
  br i1 %or.cond.not.i.i, label %bb.p, label %_ZL6getnumP6HeaderPPKci.exit.i

bb.p:                                             ; preds = %bb.o
  %i.v = load ptr, ptr %0, align 8, !tbaa !47
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.v, ptr noundef nonnull @.str.55) #14
  unreachable

_ZL6getnumP6HeaderPPKci.exit.i:                   ; preds = %bb.o
  %i.w = add i32 %i.n, -17
  %or.cond.i = icmp ult i32 %i.w, -16
  br i1 %or.cond.i, label %bb.q, label %_ZL11getnumlimitP6HeaderPPKci.exit

bb.q:                                             ; preds = %_ZL6getnumP6HeaderPPKci.exit.i
  %i.x = load ptr, ptr %0, align 8, !tbaa !47
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.x, ptr noundef nonnull @.str.54, i32 noundef %i.n, i32 noundef 16) #14
  unreachable

_ZL11getnumlimitP6HeaderPPKci.exit:               ; preds = %bb.n, %_ZL6getnumP6HeaderPPKci.exit.i
  %.010.i.i61 = phi i32 [ %i.n, %_ZL6getnumP6HeaderPPKci.exit.i ], [ 4, %bb.n ]
  store i32 %.010.i.i61, ptr %2, align 4, !tbaa !40
  br label %bb.am

bb.r:                                             ; preds = %bb.a
  %i.y = load i8, ptr %i.b, align 1, !tbaa !11
  %i.z = sext i8 %i.y to i32
  %i.aa = add nsw i32 %i.z, -58
  %i.ab = icmp ult i32 %i.aa, -10
  br i1 %i.ab, label %_ZL11getnumlimitP6HeaderPPKci.exit44, label %.preheader.i.i38

.preheader.i.i38:                                 ; preds = %bb.r, %.preheader.i.i38
  %i.ac = phi ptr [ %i.ae, %.preheader.i.i38 ], [ %i.b, %bb.r ] ; 2 uses
  %.0.i.i39 = phi i32 [ %i.ai, %.preheader.i.i38 ], [ 0, %bb.r ]
  %i.ad = mul nsw i32 %.0.i.i39, 10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 1 ; 3 uses
  store ptr %i.ae, ptr %1, align 8, !tbaa !46
  %i.af = load i8, ptr %i.ac, align 1, !tbaa !11
  %i.ag = sext i8 %i.af to i32
  %i.ah = add i32 %i.ad, -48
  %i.ai = add i32 %i.ah, %i.ag                    ; 6 uses
  %i.aj = load i8, ptr %i.ae, align 1, !tbaa !11
  %i.ak = sext i8 %i.aj to i32
  %i.al = add nsw i32 %i.ak, -48
  %i.am = icmp ult i32 %i.al, 10                  ; 2 uses
  %i.an = icmp slt i32 %i.ai, 214748364
  %i.ao = select i1 %i.am, i1 %i.an, i1 false
  br i1 %i.ao, label %.preheader.i.i38, label %bb.s, !llvm.loop !114

bb.s:                                             ; preds = %.preheader.i.i38
  %i.ap = icmp sgt i32 %i.ai, 1073741824
  %or.cond.not.i.i40 = or i1 %i.ap, %i.am
  br i1 %or.cond.not.i.i40, label %bb.t, label %_ZL6getnumP6HeaderPPKci.exit.i41

bb.t:                                             ; preds = %bb.s
  %i.aq = load ptr, ptr %0, align 8, !tbaa !47
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.aq, ptr noundef nonnull @.str.55) #14
  unreachable

_ZL6getnumP6HeaderPPKci.exit.i41:                 ; preds = %bb.s
  %i.ar = add i32 %i.ai, -17
  %or.cond.i43 = icmp ult i32 %i.ar, -16
  br i1 %or.cond.i43, label %bb.u, label %_ZL11getnumlimitP6HeaderPPKci.exit44

bb.u:                                             ; preds = %_ZL6getnumP6HeaderPPKci.exit.i41
  %i.as = load ptr, ptr %0, align 8, !tbaa !47
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.as, ptr noundef nonnull @.str.54, i32 noundef %i.ai, i32 noundef 16) #14
  unreachable

_ZL11getnumlimitP6HeaderPPKci.exit44:             ; preds = %bb.r, %_ZL6getnumP6HeaderPPKci.exit.i41
  %.010.i.i4264 = phi i32 [ %i.ai, %_ZL6getnumP6HeaderPPKci.exit.i41 ], [ 4, %bb.r ]
  store i32 %.010.i.i4264, ptr %2, align 4, !tbaa !40
  br label %bb.am

bb.v:                                             ; preds = %bb.a
  %i.at = load i8, ptr %i.b, align 1, !tbaa !11
  %i.au = sext i8 %i.at to i32
  %i.av = add nsw i32 %i.au, -58
  %i.aw = icmp ult i32 %i.av, -10
  br i1 %i.aw, label %_ZL11getnumlimitP6HeaderPPKci.exit51, label %.preheader.i.i45

.preheader.i.i45:                                 ; preds = %bb.v, %.preheader.i.i45
  %i.ax = phi ptr [ %i.az, %.preheader.i.i45 ], [ %i.b, %bb.v ] ; 2 uses
  %.0.i.i46 = phi i32 [ %i.bd, %.preheader.i.i45 ], [ 0, %bb.v ]
  %i.ay = mul nsw i32 %.0.i.i46, 10
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 1 ; 3 uses
  store ptr %i.az, ptr %1, align 8, !tbaa !46
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !11
  %i.bb = sext i8 %i.ba to i32
  %i.bc = add i32 %i.ay, -48
  %i.bd = add i32 %i.bc, %i.bb                    ; 6 uses
  %i.be = load i8, ptr %i.az, align 1, !tbaa !11
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
  %i.bl = load ptr, ptr %0, align 8, !tbaa !47
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.bl, ptr noundef nonnull @.str.55) #14
  unreachable

_ZL6getnumP6HeaderPPKci.exit.i48:                 ; preds = %bb.w
  %i.bm = add i32 %i.bd, -17
  %or.cond.i50 = icmp ult i32 %i.bm, -16
  br i1 %or.cond.i50, label %bb.y, label %_ZL11getnumlimitP6HeaderPPKci.exit51

bb.y:                                             ; preds = %_ZL6getnumP6HeaderPPKci.exit.i48
  %i.bn = load ptr, ptr %0, align 8, !tbaa !47
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.bn, ptr noundef nonnull @.str.54, i32 noundef %i.bd, i32 noundef 16) #14
  unreachable

_ZL11getnumlimitP6HeaderPPKci.exit51:             ; preds = %bb.v, %_ZL6getnumP6HeaderPPKci.exit.i48
  %.010.i.i4967 = phi i32 [ %i.bd, %_ZL6getnumP6HeaderPPKci.exit.i48 ], [ 4, %bb.v ]
  store i32 %.010.i.i4967, ptr %2, align 4, !tbaa !40
  br label %bb.am

bb.z:                                             ; preds = %bb.a
  %i.bo = load i8, ptr %i.b, align 1, !tbaa !11
  %i.bp = sext i8 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, -58
  %i.br = icmp ult i32 %i.bq, -10
  br i1 %i.br, label %_ZL6getnumP6HeaderPPKci.exit.thread, label %.preheader.i

_ZL6getnumP6HeaderPPKci.exit.thread:              ; preds = %bb.z
  store i32 -1, ptr %2, align 4, !tbaa !40
  br label %bb.ac

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %i.bs = phi ptr [ %i.bu, %.preheader.i ], [ %i.b, %bb.z ] ; 2 uses
  %.0.i = phi i32 [ %i.by, %.preheader.i ], [ 0, %bb.z ]
  %i.bt = mul nsw i32 %.0.i, 10
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 1 ; 3 uses
  store ptr %i.bu, ptr %1, align 8, !tbaa !46
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !11
  %i.bw = sext i8 %i.bv to i32
  %i.bx = add i32 %i.bt, -48
  %i.by = add i32 %i.bx, %i.bw                    ; 5 uses
  %i.bz = load i8, ptr %i.bu, align 1, !tbaa !11
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
  %i.cg = load ptr, ptr %0, align 8, !tbaa !47
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.cg, ptr noundef nonnull @.str.55) #14
  unreachable

_ZL6getnumP6HeaderPPKci.exit:                     ; preds = %bb.aa
  store i32 %i.by, ptr %2, align 4, !tbaa !40
  %i.ch = icmp eq i32 %i.by, -1
  br i1 %i.ch, label %bb.ac, label %bb.am

bb.ac:                                            ; preds = %_ZL6getnumP6HeaderPPKci.exit.thread, %_ZL6getnumP6HeaderPPKci.exit
  %i.ci = load ptr, ptr %0, align 8, !tbaa !47
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.ci, ptr noundef nonnull @.str.52) #14
  unreachable

bb.ad:                                            ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !40
  br label %bb.am

bb.ae:                                            ; preds = %bb.a
  br label %bb.am

bb.af:                                            ; preds = %bb.a
  br label %bb.ak

bb.ag:                                            ; preds = %bb.a
  %i.cj = load i8, ptr %i.b, align 1, !tbaa !11
  %i.ck = sext i8 %i.cj to i32
  %i.cl = add nsw i32 %i.ck, -58
  %i.cm = icmp ult i32 %i.cl, -10
  br i1 %i.cm, label %bb.ak, label %.preheader.i.i52

.preheader.i.i52:                                 ; preds = %bb.ag, %.preheader.i.i52
  %i.cn = phi ptr [ %i.cp, %.preheader.i.i52 ], [ %i.b, %bb.ag ] ; 2 uses
  %.0.i.i53 = phi i32 [ %i.ct, %.preheader.i.i52 ], [ 0, %bb.ag ]
  %i.co = mul nsw i32 %.0.i.i53, 10
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 3 uses
  store ptr %i.cp, ptr %1, align 8, !tbaa !46
  %i.cq = load i8, ptr %i.cn, align 1, !tbaa !11
  %i.cr = sext i8 %i.cq to i32
  %i.cs = add i32 %i.co, -48
  %i.ct = add i32 %i.cs, %i.cr                    ; 6 uses
  %i.cu = load i8, ptr %i.cp, align 1, !tbaa !11
  %i.cv = sext i8 %i.cu to i32
  %i.cw = add nsw i32 %i.cv, -48
  %i.cx = icmp ult i32 %i.cw, 10                  ; 2 uses
  %i.cy = icmp slt i32 %i.ct, 214748364
  %i.cz = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %i.cz, label %.preheader.i.i52, label %bb.ah, !llvm.loop !114

bb.ah:                                            ; preds = %.preheader.i.i52
  %i.da = icmp sgt i32 %i.ct, 1073741824
  %or.cond.not.i.i54 = or i1 %i.da, %i.cx
  br i1 %or.cond.not.i.i54, label %bb.ai, label %_ZL6getnumP6HeaderPPKci.exit.i55

bb.ai:                                            ; preds = %bb.ah
  %i.db = load ptr, ptr %0, align 8, !tbaa !47
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.db, ptr noundef nonnull @.str.55) #14
  unreachable

_ZL6getnumP6HeaderPPKci.exit.i55:                 ; preds = %bb.ah
  %i.dc = add i32 %i.ct, -17
  %or.cond.i57 = icmp ult i32 %i.dc, -16
  br i1 %or.cond.i57, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %_ZL6getnumP6HeaderPPKci.exit.i55
  %i.dd = load ptr, ptr %0, align 8, !tbaa !47
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.dd, ptr noundef nonnull @.str.54, i32 noundef %i.ct, i32 noundef 16) #14
  unreachable

_ZL11getnumlimitP6HeaderPPKci.exit58:             ; preds = %bb.a
  %3 = sext i8 %i.c to i32
  %4 = load ptr, ptr %0, align 8, !tbaa !47
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %4, ptr noundef nonnull @.str.53, i32 noundef %3) #14
  unreachable

bb.ak:                                            ; preds = %_ZL6getnumP6HeaderPPKci.exit.i55, %bb.ag, %bb.a, %bb.a, %bb.af
  %.sink104 = phi i64 [ 8, %bb.a ], [ 8, %bb.a ], [ 8, %bb.af ], [ 12, %bb.ag ], [ 12, %_ZL6getnumP6HeaderPPKci.exit.i55 ]
  %.010.i.i5671.sink = phi i32 [ 1, %bb.a ], [ 1, %bb.a ], [ 0, %bb.af ], [ 8, %bb.ag ], [ %i.ct, %_ZL6getnumP6HeaderPPKci.exit.i55 ]
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink104
  store i32 %.010.i.i5671.sink, ptr %5, align 4, !tbaa !40
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.a
  br label %bb.am

bb.am:                                            ; preds = %bb.a, %_ZL6getnumP6HeaderPPKci.exit, %bb.al, %bb.ae, %bb.ad, %_ZL11getnumlimitP6HeaderPPKci.exit51, %_ZL11getnumlimitP6HeaderPPKci.exit44, %_ZL11getnumlimitP6HeaderPPKci.exit, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 2, %bb.k ], [ 2, %bb.l ], [ 2, %bb.m ], [ 0, %_ZL11getnumlimitP6HeaderPPKci.exit ], [ 1, %_ZL11getnumlimitP6HeaderPPKci.exit44 ], [ 4, %_ZL11getnumlimitP6HeaderPPKci.exit51 ], [ 8, %bb.al ], [ 3, %_ZL6getnumP6HeaderPPKci.exit ], [ 6, %bb.ad ], [ 7, %bb.ae ], [ 5, %bb.a ]
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
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !17, i64 0}
!16 = !{!"_ZTS11luaL_Strbuf", !17, i64 0, !17, i64 8, !19, i64 16, !20, i64 24, !7, i64 32}
!17 = !{!"p1 omnipotent char", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"p1 _ZTS9lua_State", !18, i64 0}
!20 = !{!"p1 _ZTS7TString", !18, i64 0}
!21 = !{!16, !17, i64 8}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = !{!26, !19, i64 32}
!26 = !{!"_ZTS10MatchState", !6, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !19, i64 32, !6, i64 40, !7, i64 48}
!27 = !{!26, !6, i64 0}
!28 = !{!26, !17, i64 8}
!29 = !{!26, !17, i64 16}
!30 = !{!26, !17, i64 24}
!31 = !{!26, !6, i64 40}
!32 = !{!33, !10, i64 8}
!33 = !{!"_ZTSN10MatchStateUt_E", !17, i64 0, !10, i64 8}
!34 = !{!33, !17, i64 0}
!35 = distinct !{!35, !13, !36}
!36 = !{!"llvm.loop.peeled.count", i32 1}
!37 = distinct !{!37, !13}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 int", !18, i64 0}
!40 = !{!6, !6, i64 0}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = !{!17, !17, i64 0}
!47 = !{!48, !19, i64 0}
!48 = !{!"_ZTS6Header", !19, i64 0, !6, i64 8, !6, i64 12}
!49 = !{!48, !6, i64 8}
!50 = !{!48, !6, i64 12}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !54}
!58 = distinct !{!58, !54}
!59 = distinct !{!59, !13}
!60 = distinct !{!60, !54}
!61 = distinct !{!61, !13}
!62 = distinct !{!62, !13}
!63 = distinct !{!63, !54}
!64 = distinct !{!64, !54}
!65 = distinct !{!65, !13}
!66 = distinct !{!66, !13}
!67 = distinct !{!67, !13}
!68 = distinct !{!68, !54}
!69 = distinct !{!69, !54}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = !{!75, !78, i64 24}
!75 = !{!"_ZTS9lua_State", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !76, i64 5, !76, i64 6, !77, i64 8, !77, i64 16, !78, i64 24, !79, i64 32, !77, i64 40, !77, i64 48, !79, i64 56, !79, i64 64, !6, i64 72, !6, i64 76, !80, i64 80, !80, i64 82, !6, i64 84, !81, i64 88, !82, i64 96, !83, i64 104, !20, i64 112, !18, i64 120}
!76 = !{!"bool", !7, i64 0}
!77 = !{!"p1 _ZTS10lua_TValue", !18, i64 0}
!78 = !{!"p1 _ZTS12global_State", !18, i64 0}
!79 = !{!"p1 _ZTS8CallInfo", !18, i64 0}
!80 = !{!"short", !7, i64 0}
!81 = !{!"p1 _ZTS8LuaTable", !18, i64 0}
!82 = !{!"p1 _ZTS5UpVal", !18, i64 0}
!83 = !{!"p1 _ZTS8GCObject", !18, i64 0}
!84 = !{!85, !18, i64 1296}
!85 = !{!"_ZTS12global_State", !86, i64 0, !18, i64 16, !18, i64 24, !7, i64 32, !7, i64 33, !83, i64 40, !83, i64 48, !83, i64 56, !10, i64 64, !10, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !7, i64 96, !7, i64 416, !89, i64 736, !89, i64 744, !89, i64 752, !19, i64 760, !90, i64 768, !7, i64 808, !7, i64 920, !7, i64 1032, !91, i64 1200, !91, i64 1216, !6, i64 1232, !92, i64 1240, !10, i64 1248, !7, i64 1256, !93, i64 1288, !94, i64 1368, !7, i64 1440, !7, i64 1952, !7, i64 11312, !7, i64 13360, !7, i64 14384, !7, i64 15408, !91, i64 16432, !6, i64 16448, !18, i64 16456, !7, i64 16464, !7, i64 17488, !95, i64 18528, !6, i64 18712}
!86 = !{!"_ZTS11stringtable", !87, i64 0, !6, i64 8, !6, i64 12}
!87 = !{!"p2 _ZTS7TString", !88, i64 0}
!88 = !{!"any p2 pointer", !18, i64 0}
!89 = !{!"p1 _ZTS8lua_Page", !18, i64 0}
!90 = !{!"_ZTS5UpVal", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !77, i64 8, !7, i64 16}
!91 = !{!"_ZTS10lua_TValue", !7, i64 0, !7, i64 8, !6, i64 12}
!92 = !{!"p1 _ZTS10lua_jmpbuf", !18, i64 0}
!93 = !{!"_ZTS13lua_Callbacks", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !18, i64 72}
!94 = !{!"_ZTS22lua_ExecutionCallbacks", !18, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64}
!95 = !{!"_ZTS7GCStats", !7, i64 0, !6, i64 128, !6, i64 132, !10, i64 136, !10, i64 144, !10, i64 152, !96, i64 160, !96, i64 168, !96, i64 176}
!96 = !{!"double", !7, i64 0}
!97 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!98 = !{!75, !80, i64 80}
!99 = distinct !{null}
!100 = distinct !{!100, !13}
!101 = distinct !{null}
!102 = distinct !{!102, !13}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !13}
!105 = distinct !{null}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !13}
!108 = distinct !{null}
!109 = !{!110, !110, i64 0}
!110 = !{!"p1 short", !18, i64 0}
!111 = !{!80, !80, i64 0}
!112 = distinct !{!112, !13, !36}
!113 = distinct !{!113, !13}
!114 = distinct !{!114, !13}
end_hunk_0
