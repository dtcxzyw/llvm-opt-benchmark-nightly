Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lstrlib?download=true
inline.NumInlined: 78
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL10gmatch_auxP9lua_State:bb.a
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next, %i.ad
  br i1 %exitcond.not.i, label %_ZL13push_capturesP10MatchStatePKcS2_.exit.thread29, label %.lr.ph.i, !llvm.loop !112

_ZL13push_capturesP10MatchStatePKcS2_.exit.thread: ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %.02337, i64 1 ; 2 uses
  %i.bi = load ptr, ptr %i.j, align 8, !tbaa !26
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
  %i.c = load i32, ptr %3, align 4, !tbaa !35
  %i.d = icmp eq i32 %i.b, 7
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !36
  %i.f = load i8, ptr %i.e, align 1, !tbaa !13
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
  %i.l = load ptr, ptr %0, align 8, !tbaa !38
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
  %i.q = load i32, ptr %i.p, align 4, !tbaa !40
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.m, i32 %i.q) ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %spec.select)
  %.not = icmp samesign ult i32 %i.r, 2
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %0, align 8, !tbaa !38
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
  store i32 %storemerge, ptr %4, align 4, !tbaa !35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %i.b
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 9) i32 @_ZL9getoptionP6HeaderPPKcPi(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !36     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 11 uses
  store ptr %i.b, ptr %1, align 8, !tbaa !36
  %i.c = load i8, ptr %i.a, align 1, !tbaa !13    ; 2 uses
  store i32 0, ptr %2, align 4, !tbaa !35
  switch i8 %i.c, label %bb.am [
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
    i8 122, label %bb.ao
    i8 120, label %bb.ad
    i8 88, label %bb.ae
    i8 32, label %bb.an
    i8 60, label %bb.af
    i8 62, label %bb.ag
    i8 61, label %bb.ah
    i8 33, label %bb.ai
  ]

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.d:                                             ; preds = %bb.a
  store i32 2, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.e:                                             ; preds = %bb.a
  store i32 2, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.f:                                             ; preds = %bb.a
  store i32 8, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.g:                                             ; preds = %bb.a
  store i32 8, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.h:                                             ; preds = %bb.a
  store i32 4, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.i:                                             ; preds = %bb.a
  store i32 4, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.j:                                             ; preds = %bb.a
  store i32 4, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.k:                                             ; preds = %bb.a
  store i32 4, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.l:                                             ; preds = %bb.a
  store i32 8, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.m:                                             ; preds = %bb.a
  store i32 8, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.n:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !13
  %3 = sext i8 %i.d to i32
  %4 = add nsw i32 %3, -58
  %i.e = icmp ult i32 %4, -10
  br i1 %i.e, label %_ZL11getnumlimitP6HeaderPPKci.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.n, %.preheader.i.i
  %i.f = phi ptr [ %i.h, %.preheader.i.i ], [ %i.b, %bb.n ] ; 2 uses
  %.0.i.i = phi i32 [ %i.l, %.preheader.i.i ], [ 0, %bb.n ]
  %i.g = mul nsw i32 %.0.i.i, 10
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 1 ; 3 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !36
  %i.i = load i8, ptr %i.f, align 1, !tbaa !13
  %i.j = sext i8 %i.i to i32
  %i.k = add i32 %i.g, -48
  %i.l = add i32 %i.k, %i.j                       ; 6 uses
  %i.m = load i8, ptr %i.h, align 1, !tbaa !13
  %5 = sext i8 %i.m to i32
  %6 = add nsw i32 %5, -48
  %i.n = icmp ult i32 %6, 10                      ; 2 uses
  %i.o = icmp slt i32 %i.l, 214748364
  %i.p = select i1 %i.n, i1 %i.o, i1 false
  br i1 %i.p, label %.preheader.i.i, label %bb.o, !llvm.loop !114

bb.o:                                             ; preds = %.preheader.i.i
  %i.q = icmp sgt i32 %i.l, 1073741824
  %or.cond.not.i.i = or i1 %i.q, %i.n
  br i1 %or.cond.not.i.i, label %bb.p, label %_ZL6getnumP6HeaderPPKci.exit.i

bb.p:                                             ; preds = %bb.o
  %i.r = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.r, ptr noundef nonnull @.str.55) #14
  unreachable

_ZL6getnumP6HeaderPPKci.exit.i:                   ; preds = %bb.o
  %i.s = add i32 %i.l, -17
  %or.cond.i = icmp ult i32 %i.s, -16
  br i1 %or.cond.i, label %bb.q, label %_ZL11getnumlimitP6HeaderPPKci.exit

bb.q:                                             ; preds = %_ZL6getnumP6HeaderPPKci.exit.i
  %i.t = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.t, ptr noundef nonnull @.str.54, i32 noundef %i.l, i32 noundef 16) #14
  unreachable

_ZL11getnumlimitP6HeaderPPKci.exit:               ; preds = %bb.n, %_ZL6getnumP6HeaderPPKci.exit.i
  %.010.i.i61 = phi i32 [ %i.l, %_ZL6getnumP6HeaderPPKci.exit.i ], [ 4, %bb.n ]
  store i32 %.010.i.i61, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.r:                                             ; preds = %bb.a
  %i.u = load i8, ptr %i.b, align 1, !tbaa !13
  %7 = sext i8 %i.u to i32
  %8 = add nsw i32 %7, -58
  %i.v = icmp ult i32 %8, -10
  br i1 %i.v, label %_ZL11getnumlimitP6HeaderPPKci.exit44, label %.preheader.i.i38

.preheader.i.i38:                                 ; preds = %bb.r, %.preheader.i.i38
  %i.w = phi ptr [ %i.y, %.preheader.i.i38 ], [ %i.b, %bb.r ] ; 2 uses
  %.0.i.i39 = phi i32 [ %i.ac, %.preheader.i.i38 ], [ 0, %bb.r ]
  %i.x = mul nsw i32 %.0.i.i39, 10
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 3 uses
  store ptr %i.y, ptr %1, align 8, !tbaa !36
  %i.z = load i8, ptr %i.w, align 1, !tbaa !13
  %i.aa = sext i8 %i.z to i32
  %i.ab = add i32 %i.x, -48
  %i.ac = add i32 %i.ab, %i.aa                    ; 6 uses
  %i.ad = load i8, ptr %i.y, align 1, !tbaa !13
  %9 = sext i8 %i.ad to i32
  %10 = add nsw i32 %9, -48
  %i.ae = icmp ult i32 %10, 10                    ; 2 uses
  %i.af = icmp slt i32 %i.ac, 214748364
  %i.ag = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %i.ag, label %.preheader.i.i38, label %bb.s, !llvm.loop !114

bb.s:                                             ; preds = %.preheader.i.i38
  %i.ah = icmp sgt i32 %i.ac, 1073741824
  %or.cond.not.i.i40 = or i1 %i.ah, %i.ae
  br i1 %or.cond.not.i.i40, label %bb.t, label %_ZL6getnumP6HeaderPPKci.exit.i41

bb.t:                                             ; preds = %bb.s
  %i.ai = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.ai, ptr noundef nonnull @.str.55) #14
  unreachable

_ZL6getnumP6HeaderPPKci.exit.i41:                 ; preds = %bb.s
  %i.aj = add i32 %i.ac, -17
  %or.cond.i43 = icmp ult i32 %i.aj, -16
  br i1 %or.cond.i43, label %bb.u, label %_ZL11getnumlimitP6HeaderPPKci.exit44

bb.u:                                             ; preds = %_ZL6getnumP6HeaderPPKci.exit.i41
  %i.ak = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.ak, ptr noundef nonnull @.str.54, i32 noundef %i.ac, i32 noundef 16) #14
  unreachable

_ZL11getnumlimitP6HeaderPPKci.exit44:             ; preds = %bb.r, %_ZL6getnumP6HeaderPPKci.exit.i41
  %.010.i.i4264 = phi i32 [ %i.ac, %_ZL6getnumP6HeaderPPKci.exit.i41 ], [ 4, %bb.r ]
  store i32 %.010.i.i4264, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.v:                                             ; preds = %bb.a
  %i.al = load i8, ptr %i.b, align 1, !tbaa !13
  %11 = sext i8 %i.al to i32
  %12 = add nsw i32 %11, -58
  %i.am = icmp ult i32 %12, -10
  br i1 %i.am, label %_ZL11getnumlimitP6HeaderPPKci.exit51, label %.preheader.i.i45

.preheader.i.i45:                                 ; preds = %bb.v, %.preheader.i.i45
  %i.an = phi ptr [ %i.ap, %.preheader.i.i45 ], [ %i.b, %bb.v ] ; 2 uses
  %.0.i.i46 = phi i32 [ %i.at, %.preheader.i.i45 ], [ 0, %bb.v ]
  %i.ao = mul nsw i32 %.0.i.i46, 10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 3 uses
  store ptr %i.ap, ptr %1, align 8, !tbaa !36
  %i.aq = load i8, ptr %i.an, align 1, !tbaa !13
  %i.ar = sext i8 %i.aq to i32
  %i.as = add i32 %i.ao, -48
  %i.at = add i32 %i.as, %i.ar                    ; 6 uses
  %i.au = load i8, ptr %i.ap, align 1, !tbaa !13
  %13 = sext i8 %i.au to i32
  %14 = add nsw i32 %13, -48
  %i.av = icmp ult i32 %14, 10                    ; 2 uses
  %i.aw = icmp slt i32 %i.at, 214748364
  %i.ax = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %i.ax, label %.preheader.i.i45, label %bb.w, !llvm.loop !114

bb.w:                                             ; preds = %.preheader.i.i45
  %i.ay = icmp sgt i32 %i.at, 1073741824
  %or.cond.not.i.i47 = or i1 %i.ay, %i.av
  br i1 %or.cond.not.i.i47, label %bb.x, label %_ZL6getnumP6HeaderPPKci.exit.i48

bb.x:                                             ; preds = %bb.w
  %i.az = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.az, ptr noundef nonnull @.str.55) #14
  unreachable

_ZL6getnumP6HeaderPPKci.exit.i48:                 ; preds = %bb.w
  %i.ba = add i32 %i.at, -17
  %or.cond.i50 = icmp ult i32 %i.ba, -16
  br i1 %or.cond.i50, label %bb.y, label %_ZL11getnumlimitP6HeaderPPKci.exit51

bb.y:                                             ; preds = %_ZL6getnumP6HeaderPPKci.exit.i48
  %i.bb = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.bb, ptr noundef nonnull @.str.54, i32 noundef %i.at, i32 noundef 16) #14
  unreachable

_ZL11getnumlimitP6HeaderPPKci.exit51:             ; preds = %bb.v, %_ZL6getnumP6HeaderPPKci.exit.i48
  %.010.i.i4967 = phi i32 [ %i.at, %_ZL6getnumP6HeaderPPKci.exit.i48 ], [ 4, %bb.v ]
  store i32 %.010.i.i4967, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.z:                                             ; preds = %bb.a
  %i.bc = load i8, ptr %i.b, align 1, !tbaa !13
  %15 = sext i8 %i.bc to i32
  %16 = add nsw i32 %15, -58
  %i.bd = icmp ult i32 %16, -10
  br i1 %i.bd, label %_ZL6getnumP6HeaderPPKci.exit.thread, label %.preheader.i

_ZL6getnumP6HeaderPPKci.exit.thread:              ; preds = %bb.z
  store i32 -1, ptr %2, align 4, !tbaa !35
  br label %bb.ac

.preheader.i:                                     ; preds = %bb.z, %.preheader.i
  %i.be = phi ptr [ %i.bg, %.preheader.i ], [ %i.b, %bb.z ] ; 2 uses
  %.0.i = phi i32 [ %i.bk, %.preheader.i ], [ 0, %bb.z ]
  %i.bf = mul nsw i32 %.0.i, 10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 1 ; 3 uses
  store ptr %i.bg, ptr %1, align 8, !tbaa !36
  %i.bh = load i8, ptr %i.be, align 1, !tbaa !13
  %i.bi = sext i8 %i.bh to i32
  %i.bj = add i32 %i.bf, -48
  %i.bk = add i32 %i.bj, %i.bi                    ; 5 uses
  %i.bl = load i8, ptr %i.bg, align 1, !tbaa !13
  %17 = sext i8 %i.bl to i32
  %18 = add nsw i32 %17, -48
  %i.bm = icmp ult i32 %18, 10                    ; 2 uses
  %i.bn = icmp slt i32 %i.bk, 214748364
  %i.bo = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %i.bo, label %.preheader.i, label %bb.aa, !llvm.loop !114

bb.aa:                                            ; preds = %.preheader.i
  %i.bp = icmp sgt i32 %i.bk, 1073741824
  %or.cond.not.i = or i1 %i.bp, %i.bm
  br i1 %or.cond.not.i, label %bb.ab, label %_ZL6getnumP6HeaderPPKci.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bq = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.bq, ptr noundef nonnull @.str.55) #14
  unreachable

_ZL6getnumP6HeaderPPKci.exit:                     ; preds = %bb.aa
  store i32 %i.bk, ptr %2, align 4, !tbaa !35
  %i.br = icmp eq i32 %i.bk, -1
  br i1 %i.br, label %bb.ac, label %bb.ao

bb.ac:                                            ; preds = %_ZL6getnumP6HeaderPPKci.exit.thread, %_ZL6getnumP6HeaderPPKci.exit
  %i.bs = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.bs, ptr noundef nonnull @.str.52) #14
  unreachable

bb.ad:                                            ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !35
  br label %bb.ao

bb.ae:                                            ; preds = %bb.a
  br label %bb.ao

bb.af:                                            ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.bt, align 8, !tbaa !39
  br label %bb.an

bb.ag:                                            ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.bu, align 8, !tbaa !39
  br label %bb.an

bb.ah:                                            ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.bv, align 8, !tbaa !39
  br label %bb.an

bb.ai:                                            ; preds = %bb.a
  %i.bw = load i8, ptr %i.b, align 1, !tbaa !13
  %19 = sext i8 %i.bw to i32
  %20 = add nsw i32 %19, -58
  %i.bx = icmp ult i32 %20, -10
  br i1 %i.bx, label %_ZL11getnumlimitP6HeaderPPKci.exit58, label %.preheader.i.i52

.preheader.i.i52:                                 ; preds = %bb.ai, %.preheader.i.i52
  %i.by = phi ptr [ %i.ca, %.preheader.i.i52 ], [ %i.b, %bb.ai ] ; 2 uses
  %.0.i.i53 = phi i32 [ %i.ce, %.preheader.i.i52 ], [ 0, %bb.ai ]
  %i.bz = mul nsw i32 %.0.i.i53, 10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 3 uses
  store ptr %i.ca, ptr %1, align 8, !tbaa !36
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !13
  %i.cc = sext i8 %i.cb to i32
  %i.cd = add i32 %i.bz, -48
  %i.ce = add i32 %i.cd, %i.cc                    ; 6 uses
  %i.cf = load i8, ptr %i.ca, align 1, !tbaa !13
  %21 = sext i8 %i.cf to i32
  %22 = add nsw i32 %21, -48
  %i.cg = icmp ult i32 %22, 10                    ; 2 uses
  %i.ch = icmp slt i32 %i.ce, 214748364
  %i.ci = select i1 %i.cg, i1 %i.ch, i1 false
  br i1 %i.ci, label %.preheader.i.i52, label %bb.aj, !llvm.loop !114

bb.aj:                                            ; preds = %.preheader.i.i52
  %i.cj = icmp sgt i32 %i.ce, 1073741824
  %or.cond.not.i.i54 = or i1 %i.cj, %i.cg
  br i1 %or.cond.not.i.i54, label %bb.ak, label %_ZL6getnumP6HeaderPPKci.exit.i55

bb.ak:                                            ; preds = %bb.aj
  %i.ck = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.ck, ptr noundef nonnull @.str.55) #14
  unreachable

_ZL6getnumP6HeaderPPKci.exit.i55:                 ; preds = %bb.aj
  %i.cl = add i32 %i.ce, -17
  %or.cond.i57 = icmp ult i32 %i.cl, -16
  br i1 %or.cond.i57, label %bb.al, label %_ZL11getnumlimitP6HeaderPPKci.exit58

bb.al:                                            ; preds = %_ZL6getnumP6HeaderPPKci.exit.i55
  %i.cm = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.cm, ptr noundef nonnull @.str.54, i32 noundef %i.ce, i32 noundef 16) #14
  unreachable

_ZL11getnumlimitP6HeaderPPKci.exit58:             ; preds = %bb.ai, %_ZL6getnumP6HeaderPPKci.exit.i55
  %.010.i.i5671 = phi i32 [ %i.ce, %_ZL6getnumP6HeaderPPKci.exit.i55 ], [ 8, %bb.ai ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.010.i.i5671, ptr %i.cn, align 4, !tbaa !40
  br label %bb.an

bb.am:                                            ; preds = %bb.a
  %i.co = sext i8 %i.c to i32
  %i.cp = load ptr, ptr %0, align 8, !tbaa !38
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %i.cp, ptr noundef nonnull @.str.53, i32 noundef %i.co) #14
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
end_hunk_0
