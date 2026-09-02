Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lutf8lib?download=true
inline.NumInlined: 11
inline.NumDeleted: 4
begin_hunk_0_@_ZL10byteoffsetP9lua_State:bb.a
  %.13753 = phi i32 [ %.137, %bb.m ], [ %.13751, %.preheader47.preheader ] ; 2 uses
  %.352 = phi i64 [ %indvars.iv.next, %bb.m ], [ %i.aj, %.preheader47.preheader ]
  br label %bb.l

bb.l:                                             ; preds = %.preheader47, %bb.l
  %indvars.iv = phi i64 [ %.352, %.preheader47 ], [ %indvars.iv.next, %bb.l ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !12
  %i.ay = icmp slt i8 %i.ax, -64
  br i1 %i.ay, label %bb.l, label %bb.m, !llvm.loop !18

bb.m:                                             ; preds = %bb.l
  %i.az = trunc nuw i64 %indvars.iv.next to i32   ; 2 uses
  %.137 = add nsw i32 %.13753, -1                 ; 2 uses
  %i.ba = icmp samesign ugt i32 %.13753, 1
  %i.bb = icmp slt i32 %i.az, %i.t
  %i.bc = and i1 %i.ba, %i.bb
  br i1 %i.bc, label %.preheader47, label %.critedge, !llvm.loop !19

.critedge:                                        ; preds = %bb.m, %.critedge2, %.critedge2.thread, %.preheader48
  %.238 = phi i32 [ %i.an, %.critedge2.thread ], [ %i.as, %.critedge2 ], [ %.13751, %.preheader48 ], [ %.137, %bb.m ]
  %.5 = phi i32 [ 0, %.critedge2.thread ], [ %indvars.le, %.critedge2 ], [ %i.s, %.preheader48 ], [ %i.az, %bb.m ]
  %i.bd = icmp eq i32 %.238, 0
  br i1 %i.bd, label %.critedge.thread, label %.critedge.thread83

.critedge.thread:                                 ; preds = %.lr.ph, %bb.f, %.preheader, %.critedge
  %.582 = phi i32 [ %.5, %.critedge ], [ 0, %.preheader ], [ %.059, %.lr.ph ], [ 0, %bb.f ]
  %i.be = add nuw nsw i32 %.582, 1
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %i.be)
  br label %bb.n

.critedge.thread83:                               ; preds = %.preheader45, %.critedge
  call void @_Z11lua_pushnilP9lua_State(ptr noundef %0)
  br label %bb.n

bb.n:                                             ; preds = %.critedge.thread83, %.critedge.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9codepointP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) ; 2 uses
  %i.c = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 2, i32 noundef 1) ; 4 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.e = icmp sgt i32 %i.c, -1
  br i1 %i.e, label %_ZL10u_posrelatim.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %i.c to i64
  %i.g = sub nsw i64 0, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %_ZL10u_posrelatim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.d to i32
  %i.j = add nsw i32 %i.c, 1
  %i.k = add i32 %i.j, %i.i
  br label %_ZL10u_posrelatim.exit

_ZL10u_posrelatim.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.k, %bb.c ], [ %i.c, %bb.a ], [ 0, %bb.b ] ; 5 uses
  %i.l = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef %.0.i) ; 4 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.n = icmp sgt i32 %i.l, -1
  br i1 %i.n, label %_ZL10u_posrelatim.exit36, label %bb.d

bb.d:                                             ; preds = %_ZL10u_posrelatim.exit
  %i.o = sext i32 %i.l to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = icmp ult i64 %i.m, %i.p
  br i1 %i.q, label %_ZL10u_posrelatim.exit36, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = trunc i64 %i.m to i32
  %i.s = add nsw i32 %i.l, 1
  %i.t = add i32 %i.s, %i.r
  br label %_ZL10u_posrelatim.exit36

_ZL10u_posrelatim.exit36:                         ; preds = %_ZL10u_posrelatim.exit, %bb.d, %bb.e
  %.0.i35 = phi i32 [ %i.t, %bb.e ], [ %i.l, %_ZL10u_posrelatim.exit ], [ 0, %bb.d ] ; 4 uses
  %i.u = icmp sgt i32 %.0.i, 0
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZL10u_posrelatim.exit36
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.10) #5
  unreachable

bb.g:                                             ; preds = %_ZL10u_posrelatim.exit36
  %i.v = trunc i64 %i.m to i32
  %.not = icmp sgt i32 %.0.i35, %i.v
  br i1 %.not, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.10) #5
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.w = icmp sgt i32 %.0.i, %.0.i35
  br i1 %i.w, label %.loopexit40, label %bb.j

bb.j:                                             ; preds = %bb.i
  %reass.sub = sub nsw i32 %.0.i35, %.0.i
  %i.x = add nuw nsw i32 %reass.sub, 1
  call void @_Z15luaL_checkstackP9lua_StateiPKc(ptr noundef %0, i32 noundef %i.x, ptr noundef nonnull @.str.11)
  %i.y = zext nneg i32 %.0.i35 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = zext nneg i32 %.0.i to i64
  %i.ab = getelementptr i8, ptr %i.b, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1     ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.z
  br i1 %i.ad, label %.lr.ph, label %.loopexit40

.lr.ph:                                           ; preds = %bb.j, %bb.o
  %.048 = phi i32 [ %i.bd, %bb.o ], [ 0, %bb.j ]
  %.02947 = phi ptr [ %i.bc, %bb.o ], [ %i.ac, %bb.j ] ; 4 uses
  %i.ae = load i8, ptr %.02947, align 1, !tbaa !12 ; 2 uses
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = icmp sgt i8 %i.ae, -1
  br i1 %i.ag, label %bb.o, label %.preheader.i

.preheader.i:                                     ; preds = %.lr.ph, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %.lr.ph ] ; 5 uses
  %.032.i = phi i32 [ %i.ap, %bb.k ], [ %i.af, %.lr.ph ] ; 3 uses
  %.030.i = phi i32 [ %i.ao, %bb.k ], [ 0, %.lr.ph ] ; 2 uses
  %i.ah = and i32 %.032.i, 64
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.02947, i64 %indvars.iv.next.i
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !12
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = and i32 %i.ak, 192
  %.not45.i = icmp eq i32 %i.al, 128
  %i.am = shl i32 %.030.i, 6
  %i.an = and i32 %i.ak, 63
  %i.ao = or disjoint i32 %i.an, %i.am
  %i.ap = shl i32 %.032.i, 1
  br i1 %.not45.i, label %.preheader.i, label %.loopexit, !llvm.loop !0

bb.l:                                             ; preds = %.preheader.i
  %i.aq = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ar = and i32 %.032.i, 63
  %i.as = mul nuw nsw i32 %i.aq, 5
  %i.at = shl i32 %i.ar, %i.as
  %i.au = or i32 %i.at, %.030.i                   ; 4 uses
  %i.av = icmp samesign ugt i64 %indvars.iv.i, 3
  %i.aw = icmp ugt i32 %i.au, 1114111
  %or.cond.i = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond.i, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11utf8_decodePKcPiE6limits, i64 %indvars.iv.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !14
  %.not44.i = icmp ule i32 %i.au, %i.ay
  %i.az = and i32 %i.au, 2095104
  %i.ba = icmp eq i32 %i.az, 55296
  %or.cond48.i = or i1 %i.ba, %.not44.i
  br i1 %or.cond48.i, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = getelementptr inbounds nuw i8, ptr %.02947, i64 %indvars.iv.i
  br label %bb.o

.loopexit:                                        ; preds = %bb.l, %bb.m, %bb.k
  call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.12) #5
  unreachable

bb.o:                                             ; preds = %bb.n, %.lr.ph
  %.135.i = phi ptr [ %i.bb, %bb.n ], [ %.02947, %.lr.ph ]
  %.3.i = phi i32 [ %i.au, %bb.n ], [ %i.af, %.lr.ph ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.135.i, i64 1 ; 2 uses
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %.3.i)
  %i.bd = add nuw nsw i32 %.048, 1                ; 2 uses
  %i.be = icmp ult ptr %i.bc, %i.z
  br i1 %i.be, label %.lr.ph, label %.loopexit40, !llvm.loop !20

.loopexit40:                                      ; preds = %bb.o, %bb.j, %bb.i
  %.030 = phi i32 [ 0, %bb.i ], [ 0, %bb.j ], [ %i.bd, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.030
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL7utfcharP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 8 uses
  %1 = alloca %struct.luaL_Strbuf, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0) ; 3 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 3 uses
  %or.cond.i = icmp ult i32 %i.d, 1114112
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.13) #5
  unreachable

bb.d:                                             ; preds = %bb.b
  %2 = zext nneg i32 %i.d to i64                  ; 2 uses
  %i.e = icmp samesign ult i32 %i.d, 128
  br i1 %i.e, label %_ZL11buffutfcharP9lua_StateiPcPPKc.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ 1, %bb.d ] ; 3 uses
  %.015.i.i = phi i64 [ %i.k, %.preheader.i.i ], [ %2, %bb.d ] ; 2 uses
  %.0.i.i = phi i32 [ %i.l, %.preheader.i.i ], [ 63, %bb.d ]
  %i.f = trunc i64 %.015.i.i to i8
  %i.g = and i8 %i.f, 63
  %i.h = or disjoint i8 %i.g, -128
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.i = sub nsw i64 8, %indvars.iv.i.i
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  store i8 %i.h, ptr %i.j, align 1, !tbaa !12
  %i.k = lshr i64 %.015.i.i, 6                    ; 3 uses
  %i.l = lshr i32 %.0.i.i, 1                      ; 3 uses
  %i.m = zext nneg i32 %i.l to i64
  %i.n = icmp samesign ugt i64 %i.k, %i.m
  br i1 %i.n, label %.preheader.i.i, label %bb.e, !llvm.loop !21

bb.e:                                             ; preds = %.preheader.i.i
  %i.o = trunc nsw i64 %indvars.iv.next.i.i to i32
  %3 = xor i32 %i.l, -1
  %4 = shl nsw i32 %3, 1
  %5 = zext i32 %4 to i64
  %6 = or i64 %i.k, %5
  %i.p = shl i64 %indvars.iv.i.i, 32
  %sext.i.i = sub i64 30064771072, %i.p
  %i.q = ashr exact i64 %sext.i.i, 32
  br label %_ZL11buffutfcharP9lua_StateiPcPPKc.exit

_ZL11buffutfcharP9lua_StateiPcPPKc.exit:          ; preds = %bb.d, %bb.e
  %.sink29.i.i = phi i64 [ %i.q, %bb.e ], [ 7, %bb.d ]
  %.sink.in.i.i = phi i64 [ %6, %bb.e ], [ %2, %bb.d ]
  %.1.i.i = phi i32 [ %i.o, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %.sink.i.i = trunc i64 %.sink.in.i.i to i8
  %i.r = getelementptr inbounds i8, ptr %i.a, i64 %.sink29.i.i
  store i8 %.sink.i.i, ptr %i.r, align 1, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %narrow.i = sub nsw i32 0, %.1.i.i
  %i.t = sext i32 %narrow.i to i64
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t
  %i.v = sext i32 %.1.i.i to i64
  call void @_Z15lua_pushlstringP9lua_StatePKcm(ptr noundef %0, ptr noundef nonnull %i.u, i64 noundef %i.v)
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #4
  call void @_Z13luaL_buffinitP9lua_StateP11luaL_Strbuf(ptr noundef %0, ptr noundef nonnull %1)
  %.not30 = icmp slt i32 %i.b, 1
  br i1 %.not30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.g

._crit_edge:                                      ; preds = %_ZL11buffutfcharP9lua_StateiPcPPKc.exit24, %bb.f
  call void @_Z15luaL_pushresultP11luaL_Strbuf(ptr noundef nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  br label %bb.k

bb.g:                                             ; preds = %.lr.ph, %_ZL11buffutfcharP9lua_StateiPcPPKc.exit24
  %.031 = phi i32 [ 1, %.lr.ph ], [ %i.ap, %_ZL11buffutfcharP9lua_StateiPcPPKc.exit24 ] ; 4 uses
  %i.x = call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef %.031) ; 3 uses
  %or.cond.i12 = icmp ult i32 %i.x, 1114112
  br i1 %or.cond.i12, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef %.031, ptr noundef nonnull @.str.13) #5
  unreachable

bb.i:                                             ; preds = %bb.g
  %7 = zext nneg i32 %i.x to i64                  ; 2 uses
  %i.y = icmp samesign ult i32 %i.x, 128
  br i1 %i.y, label %_ZL11buffutfcharP9lua_StateiPcPPKc.exit24, label %.preheader.i.i13

.preheader.i.i13:                                 ; preds = %bb.i, %.preheader.i.i13
  %indvars.iv.i.i14 = phi i64 [ %indvars.iv.next.i.i17, %.preheader.i.i13 ], [ 1, %bb.i ] ; 3 uses
  %.015.i.i15 = phi i64 [ %i.ae, %.preheader.i.i13 ], [ %7, %bb.i ] ; 2 uses
  %.0.i.i16 = phi i32 [ %i.af, %.preheader.i.i13 ], [ 63, %bb.i ]
  %i.z = trunc i64 %.015.i.i15 to i8
  %i.aa = and i8 %i.z, 63
  %i.ab = or disjoint i8 %i.aa, -128
  %indvars.iv.next.i.i17 = add nuw nsw i64 %indvars.iv.i.i14, 1 ; 2 uses
  %i.ac = sub nsw i64 8, %indvars.iv.i.i14
  %i.ad = getelementptr inbounds i8, ptr %i.a, i64 %i.ac
  store i8 %i.ab, ptr %i.ad, align 1, !tbaa !12
  %i.ae = lshr i64 %.015.i.i15, 6                 ; 3 uses
  %i.af = lshr i32 %.0.i.i16, 1                   ; 3 uses
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = icmp samesign ugt i64 %i.ae, %i.ag
  br i1 %i.ah, label %.preheader.i.i13, label %bb.j, !llvm.loop !21

bb.j:                                             ; preds = %.preheader.i.i13
  %i.ai = trunc nsw i64 %indvars.iv.next.i.i17 to i32
  %8 = xor i32 %i.af, -1
  %9 = shl nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = or i64 %i.ae, %10
  %i.aj = shl i64 %indvars.iv.i.i14, 32
  %sext.i.i18 = sub i64 30064771072, %i.aj
  %i.ak = ashr exact i64 %sext.i.i18, 32
  br label %_ZL11buffutfcharP9lua_StateiPcPPKc.exit24

_ZL11buffutfcharP9lua_StateiPcPPKc.exit24:        ; preds = %bb.i, %bb.j
  %.sink29.i.i19 = phi i64 [ %i.ak, %bb.j ], [ 7, %bb.i ]
  %.sink.in.i.i20 = phi i64 [ %11, %bb.j ], [ %7, %bb.i ]
  %.1.i.i21 = phi i32 [ %i.ai, %bb.j ], [ 1, %bb.i ] ; 2 uses
  %.sink.i.i22 = trunc i64 %.sink.in.i.i20 to i8
  %i.al = getelementptr inbounds i8, ptr %i.a, i64 %.sink29.i.i19
  store i8 %.sink.i.i22, ptr %i.al, align 1, !tbaa !12
  %narrow.i23 = sub nsw i32 0, %.1.i.i21
  %i.am = sext i32 %narrow.i23 to i64
  %i.an = getelementptr inbounds i8, ptr %i.w, i64 %i.am
  %i.ao = sext i32 %.1.i.i21 to i64
  call void @_Z15luaL_addlstringP11luaL_StrbufPKcm(ptr noundef nonnull %1, ptr noundef nonnull %i.an, i64 noundef %i.ao)
  %i.ap = add nuw i32 %.031, 1
  %exitcond.not = icmp eq i32 %.031, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !22

bb.k:                                             ; preds = %._crit_edge, %_ZL11buffutfcharP9lua_StateiPcPPKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 1, 3) i32 @_ZL6utflenP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  %i.b = call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) ; 2 uses
  %i.c = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 2, i32 noundef 1) ; 4 uses
  %i.d = load i64, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.e = icmp sgt i32 %i.c, -1
  br i1 %i.e, label %_ZL10u_posrelatim.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = sext i32 %i.c to i64
  %i.g = sub nsw i64 0, %i.f
  %i.h = icmp ult i64 %i.d, %i.g
  br i1 %i.h, label %_ZL10u_posrelatim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = trunc i64 %i.d to i32
  %i.j = add nsw i32 %i.c, 1
  %i.k = add i32 %i.j, %i.i
  br label %_ZL10u_posrelatim.exit

_ZL10u_posrelatim.exit:                           ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.k, %bb.c ], [ %i.c, %bb.a ], [ 0, %bb.b ] ; 3 uses
  %i.l = call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef -1) ; 4 uses
  %i.m = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.n = icmp sgt i32 %i.l, -1
  br i1 %i.n, label %_ZL10u_posrelatim.exit35, label %bb.d

bb.d:                                             ; preds = %_ZL10u_posrelatim.exit
  %i.o = sext i32 %i.l to i64
  %i.p = sub nsw i64 0, %i.o
  %i.q = icmp ult i64 %i.m, %i.p
  br i1 %i.q, label %_ZL10u_posrelatim.exit35, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = trunc i64 %i.m to i32
  %i.s = add nsw i32 %i.l, 1
  %i.t = add i32 %i.s, %i.r
  br label %_ZL10u_posrelatim.exit35

_ZL10u_posrelatim.exit35:                         ; preds = %_ZL10u_posrelatim.exit, %bb.d, %bb.e
  %.0.i34 = phi i32 [ %i.t, %bb.e ], [ %i.l, %_ZL10u_posrelatim.exit ], [ 0, %bb.d ] ; 3 uses
  %i.u = icmp sgt i32 %.0.i, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL10u_posrelatim.exit35
  %i.v = add nsw i32 %.0.i, -1                    ; 2 uses
  %i.w = trunc i64 %i.m to i32                    ; 2 uses
  %.not = icmp sgt i32 %i.v, %i.w
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %_ZL10u_posrelatim.exit35
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.14) #5
  unreachable

bb.h:                                             ; preds = %bb.f
  %.not31 = icmp sgt i32 %.0.i34, %i.w
  br i1 %.not31, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.h
  %.not32.not52.not = icmp sgt i32 %.0.i, %.0.i34
  br i1 %.not32.not52.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.x = ptrtoint ptr %i.b to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.15) #5
  unreachable

bb.j:                                             ; preds = %.lr.ph, %bb.o
  %.02254 = phi i32 [ %i.v, %.lr.ph ], [ %i.bc, %bb.o ] ; 2 uses
  %.02353 = phi i32 [ 0, %.lr.ph ], [ %i.bd, %bb.o ]
  %i.y = sext i32 %.02254 to i64
  %i.z = getelementptr inbounds i8, ptr %i.b, i64 %i.y ; 4 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !12   ; 2 uses
  %i.ab = icmp sgt i8 %i.aa, -1
  br i1 %i.ab, label %bb.o, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.j
  %i.ac = zext i8 %i.aa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.k
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.k ], [ 0, %.preheader.i.preheader ] ; 5 uses
  %.032.i = phi i32 [ %i.al, %bb.k ], [ %i.ac, %.preheader.i.preheader ] ; 3 uses
  %.030.i = phi i32 [ %i.ak, %bb.k ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.ad = and i32 %.032.i, 64
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.next.i
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !12
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = and i32 %i.ag, 192
  %.not45.i = icmp eq i32 %i.ah, 128
  %i.ai = shl i32 %.030.i, 6
  %i.aj = and i32 %i.ag, 63
  %i.ak = or disjoint i32 %i.aj, %i.ai
  %i.al = shl i32 %.032.i, 1
  br i1 %.not45.i, label %.preheader.i, label %.thread, !llvm.loop !0

bb.l:                                             ; preds = %.preheader.i
  %i.am = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.an = and i32 %.032.i, 63
  %i.ao = mul nuw nsw i32 %i.am, 5
  %i.ap = shl i32 %i.an, %i.ao
  %i.aq = or i32 %i.ap, %.030.i                   ; 3 uses
  %i.ar = icmp samesign ugt i64 %indvars.iv.i, 3
  %i.as = icmp ugt i32 %i.aq, 1114111
  %or.cond.i = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond.i, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw [4 x i8], ptr @_ZZL11utf8_decodePKcPiE6limits, i64 %indvars.iv.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !14
  %.not44.i = icmp ule i32 %i.aq, %i.au
  %i.av = and i32 %i.aq, 2095104
  %i.aw = icmp eq i32 %i.av, 55296
  %or.cond48.i = or i1 %i.aw, %.not44.i
  br i1 %or.cond48.i, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.i
  br label %bb.o

.thread:                                          ; preds = %bb.m, %bb.l, %bb.k
  call void @_Z11lua_pushnilP9lua_State(ptr noundef %0)
  %i.ay = add nsw i32 %.02254, 1
  br label %._crit_edge

bb.o:                                             ; preds = %bb.j, %bb.n
  %.135.i = phi ptr [ %i.ax, %bb.n ], [ %i.z, %bb.j ]
  %i.az = getelementptr inbounds nuw i8, ptr %.135.i, i64 1
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ba, %i.x
  %i.bc = trunc i64 %i.bb to i32                  ; 2 uses
  %i.bd = add nuw nsw i32 %.02353, 1              ; 2 uses
  %.not32.not = icmp sgt i32 %.0.i34, %i.bc
  br i1 %.not32.not, label %bb.j, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.o, %.preheader, %.thread
  %.sink = phi i32 [ %i.ay, %.thread ], [ 0, %.preheader ], [ %i.bd, %bb.o ]
  %.2 = phi i32 [ 2, %.thread ], [ 1, %.preheader ], [ 1, %bb.o ]
  call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef %.sink)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret i32 %.2
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL10iter_codesP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef %0, i32 noundef 1, ptr noundef null) ; 0 uses
  tail call void @_Z17lua_pushcclosurekP9lua_StatePFiS0_EPKciPFiS0_iE(ptr noundef %0, ptr noundef nonnull @_ZL8iter_auxP9lua_State, ptr noundef null, i32 noundef 0, ptr noundef null)
  tail call void @_Z13lua_pushvalueP9lua_Statei(ptr noundef %0, i32 noundef 1)
  tail call void @_Z15lua_pushintegerP9lua_Statei(ptr noundef %0, i32 noundef 0)
  ret i32 3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef ptr @_Z17luaL_checklstringP9lua_StateiPm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @_Z15lua_pushintegerP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z11lua_pushnilP9lua_State(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_0
