Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/lbitlib?download=true
inline.NumInlined: 9
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL5b_xorP9lua_State:bb.a

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.c, %.lr.ph ]
  tail call void @_Z16lua_pushunsignedP9lua_Statej(ptr noundef %0, i32 noundef %.0.lcssa)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL6b_testP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef %0) ; 2 uses
  %.not8.i = icmp slt i32 %i.a, 1
  br i1 %.not8.i, label %_ZL6andauxP9lua_State.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.010.i = phi i32 [ %i.c, %.lr.ph.i ], [ -1, %bb.a ]
  %.079.i = phi i32 [ %i.d, %.lr.ph.i ], [ 1, %bb.a ] ; 3 uses
  %i.b = tail call noundef i32 @_Z18luaL_checkunsignedP9lua_Statei(ptr noundef %0, i32 noundef %.079.i)
  %i.c = and i32 %i.b, %.010.i                    ; 2 uses
  %i.d = add nuw i32 %.079.i, 1
  %exitcond.not.i = icmp eq i32 %.079.i, %i.a
  br i1 %exitcond.not.i, label %_ZL6andauxP9lua_State.exit.loopexit, label %.lr.ph.i, !llvm.loop !0

_ZL6andauxP9lua_State.exit.loopexit:              ; preds = %.lr.ph.i
  %i.e = icmp ne i32 %i.c, 0
  %i.f = zext i1 %i.e to i32
  br label %_ZL6andauxP9lua_State.exit

_ZL6andauxP9lua_State.exit:                       ; preds = %_ZL6andauxP9lua_State.exit.loopexit, %bb.a
  %.0.lcssa.i = phi i32 [ 1, %bb.a ], [ %i.f, %_ZL6andauxP9lua_State.exit.loopexit ]
  tail call void @_Z15lua_pushbooleanP9lua_Statei(ptr noundef %0, i32 noundef %.0.lcssa.i)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9b_extractP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z18luaL_checkunsignedP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.c = tail call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 3, i32 noundef 1) ; 3 uses
  %i.d = icmp sgt i32 %i.b, -1
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.16) #4
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.17) #4
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = add nuw nsw i32 %i.c, %i.b
  %i.g = icmp samesign ugt i32 %i.f, 32
  br i1 %i.g, label %bb.f, label %_ZL9fieldargsP9lua_StateiPi.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.18) #4
  unreachable

_ZL9fieldargsP9lua_StateiPi.exit:                 ; preds = %bb.e
  %i.h = lshr i32 %i.a, %i.b
  %i.i = add nsw i32 %i.c, -1
  %i.j = shl i32 -2, %i.i
  %i.k = xor i32 %i.j, -1
  %i.l = and i32 %i.h, %i.k
  tail call void @_Z16lua_pushunsignedP9lua_Statej(ptr noundef %0, i32 noundef %i.l)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL6b_lrotP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef 2)
  %i.b = tail call noundef i32 @_Z18luaL_checkunsignedP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.c = tail call i32 @llvm.fshl.i32(i32 %i.b, i32 %i.b, i32 %i.a)
  tail call void @_Z16lua_pushunsignedP9lua_Statej(ptr noundef %0, i32 noundef %i.c)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8b_lshiftP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z18luaL_checkunsignedP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.b = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 5 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %i.b, -31
  br i1 %i.d, label %_ZL7b_shiftP9lua_Stateji.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nsw i32 0, %i.b
  %i.f = lshr i32 %i.a, %i.e
  br label %_ZL7b_shiftP9lua_Stateji.exit

bb.d:                                             ; preds = %bb.a
  %i.g = icmp samesign ugt i32 %i.b, 31
  %i.h = shl i32 %i.a, %i.b
  %.0.i = select i1 %i.g, i32 0, i32 %i.h
  br label %_ZL7b_shiftP9lua_Stateji.exit

_ZL7b_shiftP9lua_Stateji.exit:                    ; preds = %bb.b, %bb.c, %bb.d
  %.1.i = phi i32 [ %.0.i, %bb.d ], [ %i.f, %bb.c ], [ 0, %bb.b ]
  tail call void @_Z16lua_pushunsignedP9lua_Statej(ptr noundef %0, i32 noundef %.1.i)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9b_replaceP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z18luaL_checkunsignedP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call noundef i32 @_Z18luaL_checkunsignedP9lua_Statei(ptr noundef %0, i32 noundef 2)
  %i.c = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef 3) ; 4 uses
  %i.d = tail call noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef %0, i32 noundef 4, i32 noundef 1) ; 3 uses
  %i.e = icmp sgt i32 %i.c, -1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.16) #4
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.d, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.17) #4
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.g = add nuw nsw i32 %i.d, %i.c
  %i.h = icmp samesign ugt i32 %i.g, 32
  br i1 %i.h, label %bb.f, label %_ZL9fieldargsP9lua_StateiPi.exit

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef %0, ptr noundef nonnull @.str.18) #4
  unreachable

_ZL9fieldargsP9lua_StateiPi.exit:                 ; preds = %bb.e
  %i.i = add nsw i32 %i.d, -1
  %i.j = shl i32 -2, %i.i
  %i.k = xor i32 %i.j, -1                         ; 2 uses
  %i.l = and i32 %i.b, %i.k
  %i.m = shl i32 %i.k, %i.c
  %i.n = xor i32 %i.m, -1
  %i.o = and i32 %i.a, %i.n
  %i.p = shl i32 %i.l, %i.c
  %i.q = or i32 %i.o, %i.p
  tail call void @_Z16lua_pushunsignedP9lua_Statej(ptr noundef %0, i32 noundef %i.q)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL6b_rrotP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef 2)
  %i.b = tail call noundef i32 @_Z18luaL_checkunsignedP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.c = tail call i32 @llvm.fshr.i32(i32 %i.b, i32 %i.b, i32 %i.a)
  tail call void @_Z16lua_pushunsignedP9lua_Statej(ptr noundef %0, i32 noundef %i.c)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL8b_rshiftP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z18luaL_checkunsignedP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 2 uses
  %i.b = tail call noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef %0, i32 noundef 2) ; 3 uses
  %i.c = sub nsw i32 0, %i.b                      ; 3 uses
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %i.c, -31
  %i.f = lshr i32 %i.a, %i.b
  %spec.select = select i1 %i.e, i32 0, i32 %i.f
  br label %_ZL7b_shiftP9lua_Stateji.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp samesign ugt i32 %i.c, 31
  %i.h = shl i32 %i.a, %i.c
  %.0.i = select i1 %i.g, i32 0, i32 %i.h
  br label %_ZL7b_shiftP9lua_Stateji.exit

_ZL7b_shiftP9lua_Stateji.exit:                    ; preds = %bb.b, %bb.c
  %.1.i = phi i32 [ %.0.i, %bb.c ], [ %spec.select, %bb.b ]
  tail call void @_Z16lua_pushunsignedP9lua_Statej(ptr noundef %0, i32 noundef %.1.i)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9b_countlzP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z18luaL_checkunsignedP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 32 uses
  %.not = icmp sgt i32 %i.a, -1
  br i1 %.not, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  %.not.2.a = icmp samesign ult i32 %i.a, 1073741824
  br i1 %.not.2.a, label %bb.c, label %bb.af

bb.c:                                             ; preds = %bb.b
  %.not.3.a = icmp samesign ult i32 %i.a, 536870912
  br i1 %.not.3.a, label %bb.d, label %bb.af

bb.d:                                             ; preds = %bb.c
  %.not.4.a = icmp samesign ult i32 %i.a, 268435456
  br i1 %.not.4.a, label %bb.e, label %bb.af

bb.e:                                             ; preds = %bb.d
  %.not.5.a = icmp samesign ult i32 %i.a, 134217728
  br i1 %.not.5.a, label %bb.f, label %bb.af

bb.f:                                             ; preds = %bb.e
  %.not.6.a = icmp samesign ult i32 %i.a, 67108864
  br i1 %.not.6.a, label %bb.g, label %bb.af

bb.g:                                             ; preds = %bb.f
  %.not.7.a = icmp samesign ult i32 %i.a, 33554432
  br i1 %.not.7.a, label %bb.h, label %bb.af

bb.h:                                             ; preds = %bb.g
  %.not.8.a = icmp samesign ult i32 %i.a, 16777216
  br i1 %.not.8.a, label %bb.i, label %bb.af

bb.i:                                             ; preds = %bb.h
  %.not.9.a = icmp samesign ult i32 %i.a, 8388608
  br i1 %.not.9.a, label %bb.j, label %bb.af

bb.j:                                             ; preds = %bb.i
  %.not.10.a = icmp samesign ult i32 %i.a, 4194304
  br i1 %.not.10.a, label %bb.k, label %bb.af

bb.k:                                             ; preds = %bb.j
  %.not.11.a = icmp samesign ult i32 %i.a, 2097152
  br i1 %.not.11.a, label %bb.l, label %bb.af

bb.l:                                             ; preds = %bb.k
  %.not.12.a = icmp samesign ult i32 %i.a, 1048576
  br i1 %.not.12.a, label %bb.m, label %bb.af

bb.m:                                             ; preds = %bb.l
  %.not.13.a = icmp samesign ult i32 %i.a, 524288
  br i1 %.not.13.a, label %bb.n, label %bb.af

bb.n:                                             ; preds = %bb.m
  %.not.14.a = icmp samesign ult i32 %i.a, 262144
  br i1 %.not.14.a, label %bb.o, label %bb.af

bb.o:                                             ; preds = %bb.n
  %.not.15.a = icmp samesign ult i32 %i.a, 131072
  br i1 %.not.15.a, label %bb.p, label %bb.af

bb.p:                                             ; preds = %bb.o
  %.not.16.a = icmp samesign ult i32 %i.a, 65536
  br i1 %.not.16.a, label %bb.q, label %bb.af

bb.q:                                             ; preds = %bb.p
  %.not.17.a = icmp samesign ult i32 %i.a, 32768
  br i1 %.not.17.a, label %bb.r, label %bb.af

bb.r:                                             ; preds = %bb.q
  %.not.18.a = icmp samesign ult i32 %i.a, 16384
  br i1 %.not.18.a, label %bb.s, label %bb.af

bb.s:                                             ; preds = %bb.r
  %.not.19.a = icmp samesign ult i32 %i.a, 8192
  br i1 %.not.19.a, label %bb.t, label %bb.af

bb.t:                                             ; preds = %bb.s
  %.not.20.a = icmp samesign ult i32 %i.a, 4096
  br i1 %.not.20.a, label %bb.u, label %bb.af

bb.u:                                             ; preds = %bb.t
  %.not.21.a = icmp samesign ult i32 %i.a, 2048
  br i1 %.not.21.a, label %bb.v, label %bb.af

bb.v:                                             ; preds = %bb.u
  %.not.22.a = icmp samesign ult i32 %i.a, 1024
  br i1 %.not.22.a, label %bb.w, label %bb.af

bb.w:                                             ; preds = %bb.v
  %.not.23.a = icmp samesign ult i32 %i.a, 512
  br i1 %.not.23.a, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  %.not.24.a = icmp samesign ult i32 %i.a, 256
  br i1 %.not.24.a, label %bb.y, label %bb.af

bb.y:                                             ; preds = %bb.x
  %.not.25.a = icmp samesign ult i32 %i.a, 128
  br i1 %.not.25.a, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  %.not.26.a = icmp samesign ult i32 %i.a, 64
  br i1 %.not.26.a, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %.not.27.a = icmp samesign ult i32 %i.a, 32
  br i1 %.not.27.a, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  %.not.28.a = icmp samesign ult i32 %i.a, 16
  br i1 %.not.28.a, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %.not.29.a = icmp samesign ult i32 %i.a, 8
  br i1 %.not.29.a, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %.not.30.a = icmp samesign ult i32 %i.a, 4
  br i1 %.not.30.a, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %.not.30 = icmp samesign ult i32 %i.a, 2
  %spec.select = sub nuw nsw i32 32, %i.a
  %spec.select.a = select i1 %.not.30, i32 %spec.select, i32 30
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.07 = phi i32 [ 16, %bb.q ], [ 0, %bb.a ], [ 1, %bb.b ], [ 24, %bb.y ], [ 2, %bb.c ], [ 20, %bb.u ], [ 3, %bb.d ], [ %spec.select.a, %bb.ae ], [ 4, %bb.e ], [ 17, %bb.r ], [ 5, %bb.f ], [ 29, %bb.ad ], [ 6, %bb.g ], [ 23, %bb.x ], [ 7, %bb.h ], [ 28, %bb.ac ], [ 8, %bb.i ], [ 18, %bb.s ], [ 9, %bb.j ], [ 27, %bb.ab ], [ 10, %bb.k ], [ 21, %bb.v ], [ 11, %bb.l ], [ 26, %bb.aa ], [ 12, %bb.m ], [ 19, %bb.t ], [ 13, %bb.n ], [ 25, %bb.z ], [ 14, %bb.o ], [ 22, %bb.w ], [ 15, %bb.p ]
  tail call void @_Z16lua_pushunsignedP9lua_Statej(ptr noundef %0, i32 noundef %.07)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL9b_countrzP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z18luaL_checkunsignedP9lua_Statei(ptr noundef %0, i32 noundef 1) ; 32 uses
  %i.b = and i32 %i.a, 1
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 2
  %.not.1 = icmp eq i32 %i.c, 0
  br i1 %.not.1, label %bb.c, label %bb.ag

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.a, 4
  %.not.2 = icmp eq i32 %i.d, 0
  br i1 %.not.2, label %bb.d, label %bb.ag

bb.d:                                             ; preds = %bb.c
  %i.e = and i32 %i.a, 8
  %.not.3 = icmp eq i32 %i.e, 0
  br i1 %.not.3, label %bb.e, label %bb.ag

bb.e:                                             ; preds = %bb.d
  %i.f = and i32 %i.a, 16
  %.not.4 = icmp eq i32 %i.f, 0
  br i1 %.not.4, label %bb.f, label %bb.ag

bb.f:                                             ; preds = %bb.e
  %i.g = and i32 %i.a, 32
  %.not.5 = icmp eq i32 %i.g, 0
  br i1 %.not.5, label %bb.g, label %bb.ag

bb.g:                                             ; preds = %bb.f
  %i.h = and i32 %i.a, 64
  %.not.6 = icmp eq i32 %i.h, 0
  br i1 %.not.6, label %bb.h, label %bb.ag

bb.h:                                             ; preds = %bb.g
  %i.i = and i32 %i.a, 128
  %.not.7 = icmp eq i32 %i.i, 0
  br i1 %.not.7, label %bb.i, label %bb.ag

bb.i:                                             ; preds = %bb.h
  %i.j = and i32 %i.a, 256
  %.not.8 = icmp eq i32 %i.j, 0
  br i1 %.not.8, label %bb.j, label %bb.ag

bb.j:                                             ; preds = %bb.i
  %i.k = and i32 %i.a, 512
  %.not.9 = icmp eq i32 %i.k, 0
  br i1 %.not.9, label %bb.k, label %bb.ag

bb.k:                                             ; preds = %bb.j
  %i.l = and i32 %i.a, 1024
  %.not.10 = icmp eq i32 %i.l, 0
  br i1 %.not.10, label %bb.l, label %bb.ag

bb.l:                                             ; preds = %bb.k
  %i.m = and i32 %i.a, 2048
  %.not.11 = icmp eq i32 %i.m, 0
  br i1 %.not.11, label %bb.m, label %bb.ag

bb.m:                                             ; preds = %bb.l
  %i.n = and i32 %i.a, 4096
  %.not.12 = icmp eq i32 %i.n, 0
  br i1 %.not.12, label %bb.n, label %bb.ag

bb.n:                                             ; preds = %bb.m
  %i.o = and i32 %i.a, 8192
  %.not.13 = icmp eq i32 %i.o, 0
  br i1 %.not.13, label %bb.o, label %bb.ag

bb.o:                                             ; preds = %bb.n
  %i.p = and i32 %i.a, 16384
  %.not.14 = icmp eq i32 %i.p, 0
  br i1 %.not.14, label %bb.p, label %bb.ag

bb.p:                                             ; preds = %bb.o
  %i.q = and i32 %i.a, 32768
  %.not.15 = icmp eq i32 %i.q, 0
  br i1 %.not.15, label %bb.q, label %bb.ag

bb.q:                                             ; preds = %bb.p
  %i.r = and i32 %i.a, 65536
  %.not.16 = icmp eq i32 %i.r, 0
  br i1 %.not.16, label %bb.r, label %bb.ag

bb.r:                                             ; preds = %bb.q
  %i.s = and i32 %i.a, 131072
  %.not.17 = icmp eq i32 %i.s, 0
  br i1 %.not.17, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %bb.r
  %i.t = and i32 %i.a, 262144
  %.not.18 = icmp eq i32 %i.t, 0
  br i1 %.not.18, label %bb.t, label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.u = and i32 %i.a, 524288
  %.not.19 = icmp eq i32 %i.u, 0
  br i1 %.not.19, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.v = and i32 %i.a, 1048576
  %.not.20 = icmp eq i32 %i.v, 0
  br i1 %.not.20, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %bb.u
  %i.w = and i32 %i.a, 2097152
  %.not.21 = icmp eq i32 %i.w, 0
  br i1 %.not.21, label %bb.w, label %bb.ag

bb.w:                                             ; preds = %bb.v
  %i.x = and i32 %i.a, 4194304
  %.not.22 = icmp eq i32 %i.x, 0
  br i1 %.not.22, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.y = and i32 %i.a, 8388608
  %.not.23 = icmp eq i32 %i.y, 0
  br i1 %.not.23, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.z = and i32 %i.a, 16777216
  %.not.24 = icmp eq i32 %i.z, 0
  br i1 %.not.24, label %bb.z, label %bb.ag

bb.z:                                             ; preds = %bb.y
  %i.aa = and i32 %i.a, 33554432
  %.not.25 = icmp eq i32 %i.aa, 0
  br i1 %.not.25, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.ab = and i32 %i.a, 67108864
  %.not.26 = icmp eq i32 %i.ab, 0
  br i1 %.not.26, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.ac = and i32 %i.a, 134217728
  %.not.27 = icmp eq i32 %i.ac, 0
  br i1 %.not.27, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.ad = and i32 %i.a, 268435456
  %.not.28 = icmp eq i32 %i.ad, 0
  br i1 %.not.28, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ae = and i32 %i.a, 536870912
  %.not.29 = icmp eq i32 %i.ae, 0
  br i1 %.not.29, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.af = and i32 %i.a, 1073741824
  %.not.30 = icmp eq i32 %i.af, 0
  br i1 %.not.30, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.not.31 = icmp eq i32 %i.a, 0
  %spec.select = select i1 %.not.31, i32 32, i32 31
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.07 = phi i32 [ 16, %bb.q ], [ 0, %bb.a ], [ 1, %bb.b ], [ %spec.select, %bb.af ], [ 2, %bb.c ], [ 20, %bb.u ], [ 3, %bb.d ], [ 30, %bb.ae ], [ 4, %bb.e ], [ 17, %bb.r ], [ 5, %bb.f ], [ 29, %bb.ad ], [ 6, %bb.g ], [ 23, %bb.x ], [ 7, %bb.h ], [ 28, %bb.ac ], [ 8, %bb.i ], [ 18, %bb.s ], [ 9, %bb.j ], [ 27, %bb.ab ], [ 10, %bb.k ], [ 21, %bb.v ], [ 11, %bb.l ], [ 26, %bb.aa ], [ 12, %bb.m ], [ 19, %bb.t ], [ 13, %bb.n ], [ 25, %bb.z ], [ 14, %bb.o ], [ 22, %bb.w ], [ 15, %bb.p ], [ 24, %bb.y ]
  tail call void @_Z16lua_pushunsignedP9lua_Statej(ptr noundef %0, i32 noundef %.07)
  ret i32 1
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL6b_swapP9lua_State(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call noundef i32 @_Z18luaL_checkunsignedP9lua_Statei(ptr noundef %0, i32 noundef 1)
  %i.b = tail call i32 @llvm.bswap.i32(i32 %i.a)
  tail call void @_Z16lua_pushunsignedP9lua_Statej(ptr noundef %0, i32 noundef %i.b)
  ret i32 1
}

declare noundef i32 @_Z18luaL_checkunsignedP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z17luaL_checkintegerP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z16lua_pushunsignedP9lua_Statej(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z10lua_gettopP9lua_State(ptr noundef) local_unnamed_addr #1

declare void @_Z15lua_pushbooleanP9lua_Statei(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_Z15luaL_optintegerP9lua_Stateii(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Z14luaL_argerrorLP9lua_StateiPKc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_Z11luaL_errorLP9lua_StatePKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

end_hunk_0
