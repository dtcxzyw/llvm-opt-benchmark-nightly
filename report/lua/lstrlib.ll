Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/lstrlib?download=true
inline.NumInlined: 79
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 16
begin_hunk_0_@str_pack:bb.a
  %i.jb = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull %i.f) #12 ; 2 uses
  %i.jc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.jb) #13 ; 2 uses
  %i.jd = load i64, ptr %i.f, align 8, !tbaa !11
  %i.je = icmp eq i64 %i.jc, %i.jd
  br i1 %i.je, label %bb.ae, label %bb.ad, !prof !14

bb.ad:                                            ; preds = %bb.ac
  %i.jf = call i32 @luaL_argerror(ptr noundef %0, i32 noundef %i.ad, ptr noundef nonnull @.str.40) #12 ; 0 uses
  %.pre183 = load i64, ptr %i.f, align 8, !tbaa !11
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.jg = phi i64 [ %.pre183, %bb.ad ], [ %i.jc, %bb.ac ]
  call void @luaL_addlstring(ptr noundef nonnull %1, ptr noundef nonnull %i.jb, i64 noundef %i.jg) #12
  %i.jh = load i64, ptr %i.k, align 16, !tbaa !21 ; 2 uses
  %i.ji = load i64, ptr %i.l, align 8, !tbaa !22
  %i.jj = icmp ult i64 %i.jh, %i.ji
  br i1 %i.jj, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jk = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 1) #12 ; 0 uses
  %.pre184 = load i64, ptr %i.k, align 16, !tbaa !21
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.jl = phi i64 [ %.pre184, %bb.af ], [ %i.jh, %bb.ae ] ; 2 uses
  %i.jm = load ptr, ptr %1, align 16, !tbaa !23
  %i.jn = add i64 %i.jl, 1
  store i64 %i.jn, ptr %i.k, align 16, !tbaa !21
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 %i.jl
  store i8 0, ptr %i.jo, align 1, !tbaa !13
  %i.jp = load i64, ptr %i.f, align 8, !tbaa !11
  %i.jq = add i64 %i.t, 1
  %i.jr = add i64 %i.jq, %i.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #12
  br label %bb.ak

bb.ah:                                            ; preds = %._crit_edge
  %i.js = load i64, ptr %i.k, align 16, !tbaa !21 ; 2 uses
  %i.jt = load i64, ptr %i.l, align 8, !tbaa !22
  %i.ju = icmp ult i64 %i.js, %i.jt
  br i1 %i.ju, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jv = call ptr @luaL_prepbuffsize(ptr noundef nonnull %1, i64 noundef 1) #12 ; 0 uses
  %.pre182 = load i64, ptr %i.k, align 16, !tbaa !21
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.jw = phi i64 [ %.pre182, %bb.ai ], [ %i.js, %bb.ah ] ; 2 uses
  %i.jx = load ptr, ptr %1, align 16, !tbaa !23
  %i.jy = add i64 %i.jw, 1
  store i64 %i.jy, ptr %i.k, align 16, !tbaa !21
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jw
  store i8 0, ptr %i.jz, align 1, !tbaa !13
  br label %bb.ak

default.unreachable196:                           ; preds = %._crit_edge
  unreachable

bb.ak:                                            ; preds = %._crit_edge, %._crit_edge, %bb.aj, %bb.ag, %packint.exit131, %bb.y, %copywithendian.exit106, %copywithendian.exit100, %copywithendian.exit, %packint.exit93, %packint.exit
  %.159 = phi i64 [ %i.jr, %bb.ag ], [ %i.t, %packint.exit ], [ %i.t, %packint.exit93 ], [ %i.t, %copywithendian.exit ], [ %i.t, %copywithendian.exit100 ], [ %i.t, %copywithendian.exit106 ], [ %i.t, %bb.y ], [ %i.ja, %packint.exit131 ], [ %i.t, %bb.aj ], [ %i.t, %._crit_edge ], [ %i.t, %._crit_edge ]
  %.1 = phi i32 [ %i.ad, %bb.ag ], [ %i.ad, %packint.exit ], [ %i.ad, %packint.exit93 ], [ %i.ad, %copywithendian.exit ], [ %i.ad, %copywithendian.exit100 ], [ %i.ad, %copywithendian.exit106 ], [ %i.ad, %bb.y ], [ %i.ad, %packint.exit131 ], [ %.0137, %bb.aj ], [ %.0137, %._crit_edge ], [ %.0137, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.ka = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !13
  %.not = icmp eq i8 %i.kb, 0
  br i1 %.not, label %._crit_edge140, label %bb.b

._crit_edge140:                                   ; preds = %bb.ak, %bb.a
  call void @luaL_pushresult(ptr noundef nonnull %1) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @str_packsize(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.Header, align 8             ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.d = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #12 ; 2 uses
  store ptr %i.d, ptr %i.a, align 8, !tbaa !46
  store ptr %0, ptr %1, align 8, !tbaa !48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 1, ptr %i.e, align 8, !tbaa !49
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !50
  %i.g = load i8, ptr %i.d, align 1, !tbaa !13
  %.not11 = icmp eq i8 %i.g, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.012 = phi i64 [ %i.r, %bb.e ], [ 0, %bb.a ]   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.h = call fastcc i32 @getdetails(ptr noundef %1, i64 noundef %.012, ptr noundef %i.a, ptr noundef %i.c, ptr noundef %i.b)
  %i.i = add nsw i32 %i.h, -8
  %i.j = icmp ult i32 %i.i, -2
  br i1 %i.j, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %.lr.ph
  %i.k = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.69) #12 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.l = load i32, ptr %i.b, align 4, !tbaa !45
  %i.m = zext i32 %i.l to i64
  %i.n = load i64, ptr %i.c, align 8, !tbaa !11
  %i.o = add i64 %i.n, %i.m                       ; 2 uses
  %i.p = sub i64 9223372036854775807, %i.o
  %.not10 = icmp ugt i64 %.012, %i.p
  br i1 %.not10, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  %i.q = tail call i32 @luaL_argerror(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.70) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = add i64 %i.o, %.012                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.t = load i8, ptr %i.s, align 1, !tbaa !13
  %.not = icmp eq i8 %i.t, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.r, %bb.e ]
  tail call void @lua_pushinteger(ptr noundef %0, i64 noundef %.0.lcssa) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483647, -2147483648) i32 @str_unpack(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.Header, align 8             ; 6 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.e = tail call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef null) #12 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !tbaa !46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.f = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b) #12 ; 7 uses
  %i.g = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef 1) #12 ; 5 uses
  %i.h = load i64, ptr %i.b, align 8, !tbaa !11   ; 3 uses
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
  br i1 %.not, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %posrelatI.exit
  %i.p = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.71) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %posrelatI.exit
  store ptr %0, ptr %1, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  store i32 1, ptr %i.q, align 8, !tbaa !49
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 1, ptr %i.r, align 4, !tbaa !50
  %i.s = load i8, ptr %i.e, align 1, !tbaa !13
  %.not6088 = icmp eq i8 %i.s, 0
  br i1 %.not6088, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.y
  %.090 = phi i32 [ %.1, %bb.y ], [ 0, %bb.e ]    ; 4 uses
  %.05889 = phi i64 [ %i.ha, %bb.y ], [ %i.o, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.t = call fastcc i32 @getdetails(ptr noundef %1, i64 noundef %.05889, ptr noundef %i.a, ptr noundef %i.d, ptr noundef %i.c) ; 2 uses
  %i.u = load i32, ptr %i.c, align 4, !tbaa !45
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = load i64, ptr %i.d, align 8, !tbaa !11   ; 18 uses
  %i.x = add i64 %i.w, %i.v
  %i.y = load i64, ptr %i.b, align 8, !tbaa !11
  %i.z = sub i64 %i.y, %.05889
  %.not61 = icmp ugt i64 %i.x, %i.z
  br i1 %.not61, label %bb.f, label %bb.g, !prof !12

bb.f:                                             ; preds = %.lr.ph
  %i.aa = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.72) #12 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph
  %i.ab = add i64 %.05889, %i.v                   ; 19 uses
  call void @luaL_checkstack(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.73) #12
  %i.ac = add nsw i32 %.090, 1                    ; 7 uses
  switch i32 %i.t, label %default.unreachable165 [
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
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab
  %i.ae = load i32, ptr %i.q, align 8, !tbaa !49
  %i.af = trunc i64 %i.w to i32
  %i.ag = icmp eq i32 %i.t, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = call fastcc i64 @unpackint(ptr noundef %0, ptr noundef %i.ad, i32 noundef %i.ae, i32 noundef %i.af, i32 noundef %i.ah)
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %i.ai) #12
  br label %bb.y

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 2 uses
  %i.ak = load i32, ptr %i.q, align 8, !tbaa !49
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
  %.0161 = phi float [ %i.ap, %bb.j ], [ %i.ao, %.preheader ]
  %i.aq = fpext float %.0161 to double
  call void @lua_pushnumber(ptr noundef %0, double noundef %i.aq) #12
  br label %bb.y

bb.k:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 9 uses
  %i.as = load i32, ptr %i.q, align 8, !tbaa !49
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %bb.l, label %.preheader92.a

.preheader92.a:                                   ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  %i.av = load i8, ptr %i.ar, align 1, !tbaa !13
  %.7.insert.ext136 = zext i8 %i.av to i64
  %.7.insert.shift137 = shl nuw i64 %.7.insert.ext136, 56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !13
  %.6.insert.ext131 = zext i8 %i.ax to i64
  %.6.insert.shift132 = shl nuw nsw i64 %.6.insert.ext131, 48
  %.6.insert.insert134 = or disjoint i64 %.7.insert.shift137, %.6.insert.shift132
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 3
  %i.az = load i8, ptr %i.aw, align 1, !tbaa !13
  %.5.insert.ext126 = zext i8 %i.az to i64
  %.5.insert.shift127 = shl nuw nsw i64 %.5.insert.ext126, 40
  %.5.insert.insert129 = or disjoint i64 %.6.insert.insert134, %.5.insert.shift127
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.bb = load i8, ptr %i.ay, align 1, !tbaa !13
  %.4.insert.ext121 = zext i8 %i.bb to i64
  %.4.insert.shift122 = shl nuw nsw i64 %.4.insert.ext121, 32
  %.4.insert.insert124 = or disjoint i64 %.5.insert.insert129, %.4.insert.shift122
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ar, i64 5
  %i.bd = load i8, ptr %i.ba, align 1, !tbaa !13
  %.3.insert.ext116 = zext i8 %i.bd to i64
  %.3.insert.shift117 = shl nuw nsw i64 %.3.insert.ext116, 24
  %.3.insert.insert119 = or disjoint i64 %.4.insert.insert124, %.3.insert.shift117
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  %i.bf = load i8, ptr %i.bc, align 1, !tbaa !13
  %.2.insert.ext111 = zext i8 %i.bf to i64
  %.2.insert.shift112 = shl nuw nsw i64 %.2.insert.ext111, 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 7
  %i.bh = load i8, ptr %i.be, align 1, !tbaa !13
  %.1.insert.ext106 = zext i8 %i.bh to i64
  %.1.insert.shift107 = shl nuw nsw i64 %.1.insert.ext106, 8
  %.1.insert.mask108 = or disjoint i64 %.3.insert.insert119, %.2.insert.shift112
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !13
  %.0.insert.ext102 = zext i8 %i.bi to i64
  %.0.insert.mask103 = or i64 %.1.insert.mask108, %.1.insert.shift107
  %.0.insert.insert104 = or i64 %.0.insert.mask103, %.0.insert.ext102
  %i.bj = bitcast i64 %.0.insert.insert104 to double
  br label %copywithendian.exit69

bb.l:                                             ; preds = %bb.k
  %i.bk = load double, ptr %i.ar, align 1
  br label %copywithendian.exit69

copywithendian.exit69:                            ; preds = %.preheader92.a, %bb.l
  %.0160 = phi double [ %i.bk, %bb.l ], [ %i.bj, %.preheader92.a ]
  call void @lua_pushnumber(ptr noundef %0, double noundef %.0160) #12
  br label %bb.y

bb.m:                                             ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 9 uses
  %i.bm = load i32, ptr %i.q, align 8, !tbaa !49
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %bb.n, label %.preheader93

.preheader93:                                     ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bp = load i8, ptr %i.bl, align 1, !tbaa !13
  %.7.insert.ext = zext i8 %i.bp to i64
  %.7.insert.shift = shl nuw i64 %.7.insert.ext, 56
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 2
  %i.br = load i8, ptr %i.bo, align 1, !tbaa !13
  %.6.insert.ext = zext i8 %i.br to i64
  %.6.insert.shift = shl nuw nsw i64 %.6.insert.ext, 48
  %.6.insert.insert = or disjoint i64 %.7.insert.shift, %.6.insert.shift
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bl, i64 3
  %i.bt = load i8, ptr %i.bq, align 1, !tbaa !13
  %.5.insert.ext = zext i8 %i.bt to i64
  %.5.insert.shift = shl nuw nsw i64 %.5.insert.ext, 40
  %.5.insert.insert = or disjoint i64 %.6.insert.insert, %.5.insert.shift
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bl, i64 4
  %i.bv = load i8, ptr %i.bs, align 1, !tbaa !13
  %.4.insert.ext = zext i8 %i.bv to i64
  %.4.insert.shift = shl nuw nsw i64 %.4.insert.ext, 32
  %.4.insert.insert = or disjoint i64 %.5.insert.insert, %.4.insert.shift
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 5
  %i.bx = load i8, ptr %i.bu, align 1, !tbaa !13
  %.3.insert.ext = zext i8 %i.bx to i64
  %.3.insert.shift = shl nuw nsw i64 %.3.insert.ext, 24
  %.3.insert.insert = or disjoint i64 %.4.insert.insert, %.3.insert.shift
  %i.by = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  %i.bz = load i8, ptr %i.bw, align 1, !tbaa !13
  %.2.insert.ext = zext i8 %i.bz to i64
  %.2.insert.shift = shl nuw nsw i64 %.2.insert.ext, 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 7
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !13
  %.1.insert.ext = zext i8 %i.cb to i64
  %.1.insert.shift = shl nuw nsw i64 %.1.insert.ext, 8
  %.1.insert.mask = or disjoint i64 %.3.insert.insert, %.2.insert.shift
  %i.cc = load i8, ptr %i.ca, align 1, !tbaa !13
  %.0.insert.ext = zext i8 %i.cc to i64
  %.0.insert.mask = or i64 %.1.insert.mask, %.1.insert.shift
  %.0.insert.insert = or i64 %.0.insert.mask, %.0.insert.ext
  %i.cd = bitcast i64 %.0.insert.insert to double
  br label %copywithendian.exit75

bb.n:                                             ; preds = %bb.m
  %i.ce = load double, ptr %i.bl, align 1
  br label %copywithendian.exit75

copywithendian.exit75:                            ; preds = %.preheader93, %bb.n
  %.0 = phi double [ %i.ce, %bb.n ], [ %i.cd, %.preheader93 ]
  call void @lua_pushnumber(ptr noundef %0, double noundef %.0) #12
  br label %bb.y

bb.o:                                             ; preds = %bb.g
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab
  %i.cg = call ptr @lua_pushlstring(ptr noundef %0, ptr noundef %i.cf, i64 noundef %i.w) #12 ; 0 uses
  br label %bb.y

bb.p:                                             ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 19 uses
  %i.ci = trunc i64 %i.w to i32                   ; 20 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i, label %unpackint.exit.thread

.lr.ph.i:                                         ; preds = %bb.p
  %i.ck = load i32, ptr %i.q, align 8, !tbaa !49
  %.not41.i = icmp eq i32 %i.ck, 0
  %2 = call i32 @llvm.umin.i32(i32 %i.ci, i32 8)
  %3 = zext nneg i32 %2 to i64                    ; 16 uses
  br i1 %.not41.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.cl = sub i64 %i.w, %3
  %sext = shl i64 %i.cl, 32
  %4 = ashr exact i64 %sext, 32
  %i.cm = getelementptr inbounds i8, ptr %i.ch, i64 %4
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !13
  %i.co = zext i8 %i.cn to i64                    ; 2 uses
  %.not184 = icmp eq i32 %i.ci, 1
  br i1 %.not184, label %._crit_edge.i, label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %.lr.ph.split.us.i
  %indvars.iv.next52.i = add nsw i64 %3, -1
  %i.cp = shl nuw nsw i64 %i.co, 8
  %i.cq = sub i64 %i.w, %indvars.iv.next52.i
  %sext.1 = shl i64 %i.cq, 32
  %5 = ashr exact i64 %sext.1, 32
  %i.cr = getelementptr inbounds i8, ptr %i.ch, i64 %5
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !13
  %i.ct = zext i8 %i.cs to i64
  %i.cu = or disjoint i64 %i.cp, %i.ct            ; 2 uses
  %6 = icmp ugt i32 %i.ci, 2
  br i1 %6, label %.lr.ph.split.us.i.2, label %._crit_edge.i

.lr.ph.split.us.i.2:                              ; preds = %.lr.ph.split.us.i.1
  %indvars.iv.next52.i.1 = add nsw i64 %3, -2
  %i.cv = shl nuw nsw i64 %i.cu, 8
  %i.cw = sub i64 %i.w, %indvars.iv.next52.i.1
  %sext.2 = shl i64 %i.cw, 32
  %7 = ashr exact i64 %sext.2, 32
  %i.cx = getelementptr inbounds i8, ptr %i.ch, i64 %7
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !13
  %i.cz = zext i8 %i.cy to i64
  %i.da = or disjoint i64 %i.cv, %i.cz            ; 2 uses
  %.not185 = icmp eq i32 %i.ci, 3
  br i1 %.not185, label %._crit_edge.i, label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %.lr.ph.split.us.i.2
  %indvars.iv.next52.i.2 = add nsw i64 %3, -3
  %i.db = shl nuw nsw i64 %i.da, 8
  %i.dc = sub i64 %i.w, %indvars.iv.next52.i.2
  %sext.3 = shl i64 %i.dc, 32
  %8 = ashr exact i64 %sext.3, 32
  %i.dd = getelementptr inbounds i8, ptr %i.ch, i64 %8
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !13
  %i.df = zext i8 %i.de to i64
  %i.dg = or disjoint i64 %i.db, %i.df            ; 2 uses
  %9 = icmp ugt i32 %i.ci, 4
  br i1 %9, label %.lr.ph.split.us.i.4, label %._crit_edge.i

.lr.ph.split.us.i.4:                              ; preds = %.lr.ph.split.us.i.3
  %indvars.iv.next52.i.3 = add nsw i64 %3, -4
  %i.dh = shl i64 %i.dg, 8
  %i.di = sub i64 %i.w, %indvars.iv.next52.i.3
  %sext.4 = shl i64 %i.di, 32
  %10 = ashr exact i64 %sext.4, 32
  %i.dj = getelementptr inbounds i8, ptr %i.ch, i64 %10
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !13
  %i.dl = zext i8 %i.dk to i64
  %i.dm = or disjoint i64 %i.dh, %i.dl            ; 2 uses
  %.not186 = icmp eq i32 %i.ci, 5
  br i1 %.not186, label %._crit_edge.i, label %.lr.ph.split.us.i.5

.lr.ph.split.us.i.5:                              ; preds = %.lr.ph.split.us.i.4
  %indvars.iv.next52.i.4 = add nsw i64 %3, -5
  %i.dn = shl i64 %i.dm, 8
  %i.do = sub i64 %i.w, %indvars.iv.next52.i.4
  %sext.5 = shl i64 %i.do, 32
  %11 = ashr exact i64 %sext.5, 32
  %i.dp = getelementptr inbounds i8, ptr %i.ch, i64 %11
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !13
  %i.dr = zext i8 %i.dq to i64
  %i.ds = or disjoint i64 %i.dn, %i.dr            ; 2 uses
  %12 = icmp ugt i32 %i.ci, 6
  br i1 %12, label %.lr.ph.split.us.i.6, label %._crit_edge.i

.lr.ph.split.us.i.6:                              ; preds = %.lr.ph.split.us.i.5
  %indvars.iv.next52.i.5 = add nsw i64 %3, -6
  %i.dt = shl i64 %i.ds, 8
  %i.du = sub i64 %i.w, %indvars.iv.next52.i.5
  %sext.6 = shl i64 %i.du, 32
  %13 = ashr exact i64 %sext.6, 32
  %i.dv = getelementptr inbounds i8, ptr %i.ch, i64 %13
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !13
  %i.dx = zext i8 %i.dw to i64
  %i.dy = or disjoint i64 %i.dt, %i.dx            ; 2 uses
  %.not187 = icmp eq i32 %i.ci, 7
  br i1 %.not187, label %._crit_edge.i, label %.lr.ph.split.us.i.7

.lr.ph.split.us.i.7:                              ; preds = %.lr.ph.split.us.i.6
  %indvars.iv.next52.i.6 = add nuw nsw i64 %3, 4294967289
  %i.dz = shl i64 %i.dy, 8
  %i.ea = sub i64 %i.w, %indvars.iv.next52.i.6
  %sext.7 = shl i64 %i.ea, 32
  %14 = ashr exact i64 %sext.7, 32
  %i.eb = getelementptr inbounds i8, ptr %i.ch, i64 %14
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !13
  %i.ed = zext i8 %i.ec to i64
  %i.ee = or disjoint i64 %i.dz, %i.ed
  br label %._crit_edge.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ef = getelementptr i8, ptr %i.ch, i64 %3
  %i.eg = getelementptr i8, ptr %i.ef, i64 -1
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !13
  %i.ei = zext i8 %i.eh to i64                    ; 2 uses
  %.not180 = icmp eq i32 %i.ci, 1
  br i1 %.not180, label %._crit_edge.i.thread, label %.lr.ph.split.i.1

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i
  %i.ej = shl nuw nsw i64 %i.ei, 8
  %i.ek = getelementptr i8, ptr %i.ch, i64 %3
  %i.el = getelementptr i8, ptr %i.ek, i64 -2
  %i.em = load i8, ptr %i.el, align 1, !tbaa !13
  %i.en = zext i8 %i.em to i64
  %i.eo = or disjoint i64 %i.ej, %i.en            ; 2 uses
  %15 = icmp ugt i32 %i.ci, 2
  br i1 %15, label %.lr.ph.split.i.2, label %._crit_edge.i.thread

.lr.ph.split.i.2:                                 ; preds = %.lr.ph.split.i.1
  %i.ep = shl nuw nsw i64 %i.eo, 8
  %i.eq = getelementptr i8, ptr %i.ch, i64 %3
  %i.er = getelementptr i8, ptr %i.eq, i64 -3
  %i.es = load i8, ptr %i.er, align 1, !tbaa !13
  %i.et = zext i8 %i.es to i64
  %i.eu = or disjoint i64 %i.ep, %i.et            ; 2 uses
  %.not181 = icmp eq i32 %i.ci, 3
  br i1 %.not181, label %._crit_edge.i.thread, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %.lr.ph.split.i.2
  %i.ev = shl nuw nsw i64 %i.eu, 8
  %i.ew = getelementptr i8, ptr %i.ch, i64 %3
  %i.ex = getelementptr i8, ptr %i.ew, i64 -4
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !13
  %i.ez = zext i8 %i.ey to i64
  %i.fa = or disjoint i64 %i.ev, %i.ez            ; 2 uses
  %16 = icmp ugt i32 %i.ci, 4
  br i1 %16, label %.lr.ph.split.i.4, label %._crit_edge.i.thread

.lr.ph.split.i.4:                                 ; preds = %.lr.ph.split.i.3
  %i.fb = shl i64 %i.fa, 8
  %i.fc = getelementptr i8, ptr %i.ch, i64 %3
  %i.fd = getelementptr i8, ptr %i.fc, i64 -5
  %i.fe = load i8, ptr %i.fd, align 1, !tbaa !13
  %i.ff = zext i8 %i.fe to i64
  %i.fg = or disjoint i64 %i.fb, %i.ff            ; 2 uses
  %.not182 = icmp eq i32 %i.ci, 5
  br i1 %.not182, label %._crit_edge.i.thread, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %.lr.ph.split.i.4
  %i.fh = shl i64 %i.fg, 8
  %i.fi = getelementptr i8, ptr %i.ch, i64 %3
  %i.fj = getelementptr i8, ptr %i.fi, i64 -6
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !13
  %i.fl = zext i8 %i.fk to i64
  %i.fm = or disjoint i64 %i.fh, %i.fl            ; 2 uses
  %17 = icmp ugt i32 %i.ci, 6
  br i1 %17, label %.lr.ph.split.i.6, label %._crit_edge.i.thread

.lr.ph.split.i.6:                                 ; preds = %.lr.ph.split.i.5
  %i.fn = shl i64 %i.fm, 8
  %i.fo = getelementptr i8, ptr %i.ch, i64 %3
  %i.fp = getelementptr i8, ptr %i.fo, i64 -7
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !13
  %i.fr = zext i8 %i.fq to i64
  %i.fs = or disjoint i64 %i.fn, %i.fr            ; 2 uses
  %.not183 = icmp eq i32 %i.ci, 7
  br i1 %.not183, label %._crit_edge.i.thread, label %.lr.ph.split.i.7

.lr.ph.split.i.7:                                 ; preds = %.lr.ph.split.i.6
  %i.ft = shl i64 %i.fs, 8
  %i.fu = getelementptr i8, ptr %i.ch, i64 %3
  %i.fv = getelementptr i8, ptr %i.fu, i64 -8
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !13
  %i.fx = zext i8 %i.fw to i64
  %i.fy = or disjoint i64 %i.ft, %i.fx
  br label %._crit_edge.i.thread

._crit_edge.i:                                    ; preds = %.lr.ph.split.us.i.7, %.lr.ph.split.us.i.6, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i
  %.lcssa178 = phi i64 [ %i.co, %.lr.ph.split.us.i ], [ %i.cu, %.lr.ph.split.us.i.1 ], [ %i.da, %.lr.ph.split.us.i.2 ], [ %i.dg, %.lr.ph.split.us.i.3 ], [ %i.dm, %.lr.ph.split.us.i.4 ], [ %i.ds, %.lr.ph.split.us.i.5 ], [ %i.dy, %.lr.ph.split.us.i.6 ], [ %i.ee, %.lr.ph.split.us.i.7 ] ; 2 uses
  %i.fz = icmp samesign ult i32 %i.ci, 9
  br i1 %i.fz, label %unpackint.exit, label %.lr.ph46.split.us.preheader.i

._crit_edge.i.thread:                             ; preds = %.lr.ph.split.i.7, %.lr.ph.split.i.6, %.lr.ph.split.i.5, %.lr.ph.split.i.4, %.lr.ph.split.i.3, %.lr.ph.split.i.2, %.lr.ph.split.i.1, %.lr.ph.split.i
  %.lcssa = phi i64 [ %i.ei, %.lr.ph.split.i ], [ %i.eo, %.lr.ph.split.i.1 ], [ %i.eu, %.lr.ph.split.i.2 ], [ %i.fa, %.lr.ph.split.i.3 ], [ %i.fg, %.lr.ph.split.i.4 ], [ %i.fm, %.lr.ph.split.i.5 ], [ %i.fs, %.lr.ph.split.i.6 ], [ %i.fy, %.lr.ph.split.i.7 ] ; 2 uses
  %i.ga = icmp samesign ult i32 %i.ci, 9
  br i1 %i.ga, label %unpackint.exit, label %.lr.ph46.split.i.preheader

.lr.ph46.split.i.preheader:                       ; preds = %._crit_edge.i.thread
  %wide.trip.count = and i64 %i.w, 2147483647
  br label %.lr.ph46.split.i

.lr.ph46.split.us.preheader.i:                    ; preds = %._crit_edge.i
  %18 = and i64 %i.w, 2147483647
  %umax = call i64 @llvm.umax.i64(i64 %18, i64 9)
  br label %.lr.ph46.split.us.i

.lr.ph46.split.us.i:                              ; preds = %bb.r, %.lr.ph46.split.us.preheader.i
  %indvars.iv57.i = phi i64 [ 8, %.lr.ph46.split.us.preheader.i ], [ %indvars.iv.next58.i, %bb.r ] ; 2 uses
  %i.gb = xor i64 %indvars.iv57.i, -1
  %i.gc = add i64 %i.w, %i.gb
  %sext80 = shl i64 %i.gc, 32
  %i.gd = ashr exact i64 %sext80, 32
  %i.ge = getelementptr inbounds i8, ptr %i.ch, i64 %i.gd
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !13
  %.not39.us.i = icmp eq i8 %i.gf, 0
  br i1 %.not39.us.i, label %bb.r, label %bb.q, !prof !14

bb.q:                                             ; preds = %.lr.ph46.split.us.i
  %i.gg = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %i.ci) #12 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph46.split.us.i
  %indvars.iv.next58.i = add nuw nsw i64 %indvars.iv57.i, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next58.i, %umax
  br i1 %exitcond99.not, label %unpackint.exit, label %.lr.ph46.split.us.i

.lr.ph46.split.i:                                 ; preds = %.lr.ph46.split.i.preheader, %bb.t
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %bb.t ], [ 8, %.lr.ph46.split.i.preheader ] ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ch, i64 %indvars.iv53.i
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !13
  %.not39.i = icmp eq i8 %i.gi, 0
  br i1 %.not39.i, label %bb.t, label %bb.s, !prof !14

bb.s:                                             ; preds = %.lr.ph46.split.i
  %i.gj = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %i.ci) #12 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph46.split.i
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count
  br i1 %exitcond.not, label %unpackint.exit, label %.lr.ph46.split.i

unpackint.exit:                                   ; preds = %bb.t, %bb.r, %._crit_edge.i.thread, %._crit_edge.i
  %.0.lcssa.i168 = phi i64 [ %.lcssa, %._crit_edge.i.thread ], [ %.lcssa178, %bb.r ], [ %.lcssa178, %._crit_edge.i ], [ %.lcssa, %bb.t ] ; 3 uses
  %i.gk = load i64, ptr %i.b, align 8, !tbaa !11
  %i.gl = add i64 %i.ab, %i.w
  %i.gm = sub i64 %i.gk, %i.gl
  %.not62 = icmp ugt i64 %.0.lcssa.i168, %i.gm
  br i1 %.not62, label %bb.u, label %unpackint.exit.thread, !prof !60

bb.u:                                             ; preds = %unpackint.exit
  %i.gn = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.72) #12 ; 0 uses
  br label %unpackint.exit.thread

unpackint.exit.thread:                            ; preds = %bb.p, %bb.u, %unpackint.exit
  %.1.i79 = phi i64 [ %.0.lcssa.i168, %unpackint.exit ], [ %.0.lcssa.i168, %bb.u ], [ 0, %bb.p ] ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.w
  %i.gp = call ptr @lua_pushlstring(ptr noundef %0, ptr noundef %i.go, i64 noundef %.1.i79) #12 ; 0 uses
  %i.gq = add i64 %.1.i79, %i.ab
  br label %bb.y

bb.v:                                             ; preds = %bb.g
  %i.gr = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab ; 2 uses
  %i.gs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.gr) #13 ; 3 uses
  %i.gt = add i64 %i.gs, %i.ab
  %i.gu = load i64, ptr %i.b, align 8, !tbaa !11
  %i.gv = icmp ult i64 %i.gt, %i.gu
  br i1 %i.gv, label %bb.x, label %bb.w, !prof !14

bb.w:                                             ; preds = %bb.v
  %i.gw = call i32 @luaL_argerror(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.74) #12 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.gx = call ptr @lua_pushlstring(ptr noundef %0, ptr noundef nonnull %i.gr, i64 noundef %i.gs) #12 ; 0 uses
  %i.gy = add i64 %i.ab, 1
  %i.gz = add i64 %i.gy, %i.gs
  br label %bb.y

default.unreachable165:                           ; preds = %bb.g
  unreachable

bb.y:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.x, %unpackint.exit.thread, %bb.o, %copywithendian.exit75, %copywithendian.exit69, %copywithendian.exit, %bb.h
  %.159 = phi i64 [ %i.gz, %bb.x ], [ %i.ab, %bb.h ], [ %i.ab, %copywithendian.exit ], [ %i.ab, %copywithendian.exit69 ], [ %i.ab, %copywithendian.exit75 ], [ %i.ab, %bb.o ], [ %i.gq, %unpackint.exit.thread ], [ %i.ab, %bb.g ], [ %i.ab, %bb.g ], [ %i.ab, %bb.g ]
  %.1 = phi i32 [ %i.ac, %bb.x ], [ %i.ac, %bb.h ], [ %i.ac, %copywithendian.exit ], [ %i.ac, %copywithendian.exit69 ], [ %i.ac, %copywithendian.exit75 ], [ %i.ac, %bb.o ], [ %i.ac, %unpackint.exit.thread ], [ %.090, %bb.g ], [ %.090, %bb.g ], [ %.090, %bb.g ] ; 2 uses
  %i.ha = add i64 %.159, %i.w                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  %i.hb = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !13
  %.not60 = icmp eq i8 %i.hc, 0
  br i1 %.not60, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.y
  %i.hd = add nsw i64 %i.ha, 1
  %i.he = add nsw i32 %.1, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.058.lcssa = phi i64 [ %.0.i, %bb.e ], [ %i.hd, %._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 1, %bb.e ], [ %i.he, %._crit_edge.loopexit ]
  call void @lua_pushinteger(ptr noundef %0, i64 noundef %.058.lcssa) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i32 %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @luaL_checklstring(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @luaL_optinteger(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @luaL_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @luaL_checkstack(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_pushinteger(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare i32 @lua_gettop(ptr noundef) local_unnamed_addr #1

declare ptr @luaL_buffinitsize(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @luaL_checkinteger(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @luaL_argerror(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @luaL_pushresultsize(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @lua_toboolean(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_type(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_iscfunction(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_pushvalue(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @lua_dump(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @writer(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = load i32, ptr %3, align 16, !tbaa !20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %3, align 16, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @luaL_buffinit(ptr noundef %0, ptr noundef nonnull %i.b) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = icmp eq ptr %1, null
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @luaL_pushresult(ptr noundef nonnull %i.d) #12
  tail call void @lua_copy(ptr noundef %0, i32 noundef -1, i32 noundef 1) #12
  tail call void @lua_settop(ptr noundef %0, i32 noundef -2) #12
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @luaL_addlstring(ptr noundef nonnull %i.d, ptr noundef nonnull %1, i64 noundef %2) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret i32 0
}

declare void @lua_settop(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @luaL_buffinit(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @luaL_pushresult(ptr noundef) local_unnamed_addr #1

declare void @lua_copy(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @luaL_addlstring(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @str_find_aux(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %2 = alloca %struct.MatchState, align 8         ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.a) #12 ; 9 uses
  %i.d = call ptr @luaL_checklstring(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.b) #12 ; 9 uses
  %i.e = call i64 @luaL_optinteger(ptr noundef %0, i32 noundef 3, i64 noundef 1) #12 ; 5 uses
  %i.f = load i64, ptr %i.a, align 8, !tbaa !11   ; 3 uses
  %i.g = icmp sgt i64 %i.e, 0
  br i1 %i.g, label %posrelatI.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.e, 0
  %i.i = sub nsw i64 0, %i.f
  %i.j = icmp slt i64 %i.e, %i.i
  %or.cond.i = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond.i, label %posrelatI.exit, label %bb.c

end_hunk_0
begin_hunk_1_@getoption:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1 ; 3 uses
  store ptr %i.ag, ptr %1, align 8, !tbaa !46
  %i.ah = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ai = sext i8 %i.ah to i64
  %i.aj = add nsw i64 %i.ai, 4294967248
  %i.ak = and i64 %i.aj, 4294967295
  %i.al = add nuw i64 %i.ak, %i.af                ; 5 uses
  %i.am = load i8, ptr %i.ag, align 1, !tbaa !13
  %i.an = sext i8 %i.am to i32
  %i.ao = add nsw i32 %i.an, -48
  %i.ap = icmp ult i32 %i.ao, 10
  %i.aq = icmp ult i64 %i.al, 922337203685477580
  %i.ar = select i1 %i.ap, i1 %i.aq, i1 false
  br i1 %i.ar, label %.preheader.i.i37, label %getnum.exit.i39

getnum.exit.i39:                                  ; preds = %.preheader.i.i37
  %i.as = add i64 %i.al, -17
  %i.at = icmp ult i64 %i.as, -16
  br i1 %i.at, label %bb.q, label %getnumlimit.exit42, !prof !70

bb.q:                                             ; preds = %getnum.exit.i39
  %i.au = load ptr, ptr %0, align 8, !tbaa !48
  %i.av = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.au, ptr noundef nonnull @.str.68, i64 noundef %i.al, i32 noundef 16) #12
  %i.aw = zext i32 %i.av to i64
  br label %getnumlimit.exit42

getnumlimit.exit42:                               ; preds = %getnum.exit.i39, %bb.p, %bb.q
  %.0.i41 = phi i64 [ %i.aw, %bb.q ], [ %i.al, %getnum.exit.i39 ], [ 4, %bb.p ]
  store i64 %.0.i41, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.r:                                             ; preds = %bb.a
  %i.ax = load i8, ptr %i.b, align 1, !tbaa !13
  %i.ay = sext i8 %i.ax to i32
  %i.az = add nsw i32 %i.ay, -58
  %i.ba = icmp ult i32 %i.az, -10
  br i1 %i.ba, label %getnumlimit.exit48, label %.preheader.i.i43

.preheader.i.i43:                                 ; preds = %bb.r, %.preheader.i.i43
  %i.bb = phi ptr [ %i.bd, %.preheader.i.i43 ], [ %i.b, %bb.r ] ; 2 uses
  %.0.i.i44 = phi i64 [ %i.bi, %.preheader.i.i43 ], [ 0, %bb.r ]
  %i.bc = mul nuw nsw i64 %.0.i.i44, 10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1 ; 3 uses
  store ptr %i.bd, ptr %1, align 8, !tbaa !46
  %i.be = load i8, ptr %i.bb, align 1, !tbaa !13
  %i.bf = sext i8 %i.be to i64
  %i.bg = add nsw i64 %i.bf, 4294967248
  %i.bh = and i64 %i.bg, 4294967295
  %i.bi = add nuw i64 %i.bh, %i.bc                ; 5 uses
  %i.bj = load i8, ptr %i.bd, align 1, !tbaa !13
  %i.bk = sext i8 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -48
  %i.bm = icmp ult i32 %i.bl, 10
  %i.bn = icmp ult i64 %i.bi, 922337203685477580
  %i.bo = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %i.bo, label %.preheader.i.i43, label %getnum.exit.i45

getnum.exit.i45:                                  ; preds = %.preheader.i.i43
  %i.bp = add i64 %i.bi, -17
  %i.bq = icmp ult i64 %i.bp, -16
  br i1 %i.bq, label %bb.s, label %getnumlimit.exit48, !prof !70

bb.s:                                             ; preds = %getnum.exit.i45
  %i.br = load ptr, ptr %0, align 8, !tbaa !48
  %i.bs = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.br, ptr noundef nonnull @.str.68, i64 noundef %i.bi, i32 noundef 16) #12
  %i.bt = zext i32 %i.bs to i64
  br label %getnumlimit.exit48

getnumlimit.exit48:                               ; preds = %getnum.exit.i45, %bb.r, %bb.s
  %.0.i47 = phi i64 [ %i.bt, %bb.s ], [ %i.bi, %getnum.exit.i45 ], [ 8, %bb.r ]
  store i64 %.0.i47, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.t:                                             ; preds = %bb.a
  %i.bu = load i8, ptr %i.b, align 1, !tbaa !13
  %i.bv = sext i8 %i.bu to i32
  %i.bw = add nsw i32 %i.bv, -58
  %i.bx = icmp ult i32 %i.bw, -10
  br i1 %i.bx, label %bb.u, label %.preheader.i

.preheader.i:                                     ; preds = %bb.t, %.preheader.i
  %i.by = phi ptr [ %i.ca, %.preheader.i ], [ %i.b, %bb.t ] ; 2 uses
  %.0.i49 = phi i64 [ %i.cf, %.preheader.i ], [ 0, %bb.t ]
  %i.bz = mul nuw nsw i64 %.0.i49, 10
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 1 ; 3 uses
  store ptr %i.ca, ptr %1, align 8, !tbaa !46
  %i.cb = load i8, ptr %i.by, align 1, !tbaa !13
  %i.cc = sext i8 %i.cb to i64
  %i.cd = add nsw i64 %i.cc, 4294967248
  %i.ce = and i64 %i.cd, 4294967295
  %i.cf = add nuw i64 %i.ce, %i.bz                ; 3 uses
  %i.cg = load i8, ptr %i.ca, align 1, !tbaa !13
  %i.ch = sext i8 %i.cg to i32
  %i.ci = add nsw i32 %i.ch, -48
  %i.cj = icmp ult i32 %i.ci, 10
  %i.ck = icmp ult i64 %i.cf, 922337203685477580
  %i.cl = select i1 %i.cj, i1 %i.ck, i1 false
  br i1 %i.cl, label %.preheader.i, label %getnum.exit

getnum.exit:                                      ; preds = %.preheader.i
  store i64 %i.cf, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.u:                                             ; preds = %bb.t
  store i64 -1, ptr %2, align 8, !tbaa !11
  %i.cm = load ptr, ptr %0, align 8, !tbaa !48
  %i.cn = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.cm, ptr noundef nonnull @.str.66) #12 ; 0 uses
  br label %bb.ae

bb.v:                                             ; preds = %bb.a
  store i64 1, ptr %2, align 8, !tbaa !11
  br label %bb.ae

bb.w:                                             ; preds = %bb.a
  br label %bb.ae

bb.x:                                             ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.co, align 8, !tbaa !49
  br label %bb.ad

bb.y:                                             ; preds = %bb.a
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.cp, align 8, !tbaa !49
  br label %bb.ad

bb.z:                                             ; preds = %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.cq, align 8, !tbaa !49
  br label %bb.ad

bb.aa:                                            ; preds = %bb.a
  %i.cr = load i8, ptr %i.b, align 1, !tbaa !13
  %i.cs = sext i8 %i.cr to i32
  %i.ct = add nsw i32 %i.cs, -58
  %i.cu = icmp ult i32 %i.ct, -10
  br i1 %i.cu, label %getnum.exit.i52.thread, label %.preheader.i.i50

.preheader.i.i50:                                 ; preds = %bb.aa, %.preheader.i.i50
  %i.cv = phi ptr [ %i.cx, %.preheader.i.i50 ], [ %i.b, %bb.aa ] ; 2 uses
  %.0.i.i51 = phi i64 [ %i.dc, %.preheader.i.i50 ], [ 0, %bb.aa ]
  %i.cw = mul nuw nsw i64 %.0.i.i51, 10
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 1 ; 3 uses
  store ptr %i.cx, ptr %1, align 8, !tbaa !46
  %i.cy = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.cz = sext i8 %i.cy to i64
  %i.da = add nsw i64 %i.cz, 4294967248
  %i.db = and i64 %i.da, 4294967295
  %i.dc = add nuw i64 %i.db, %i.cw                ; 5 uses
  %i.dd = load i8, ptr %i.cx, align 1, !tbaa !13
  %i.de = sext i8 %i.dd to i32
  %i.df = add nsw i32 %i.de, -48
  %i.dg = icmp ult i32 %i.df, 10
  %i.dh = icmp ult i64 %i.dc, 922337203685477580
  %i.di = select i1 %i.dg, i1 %i.dh, i1 false
  br i1 %i.di, label %.preheader.i.i50, label %getnum.exit.i52

getnum.exit.i52:                                  ; preds = %.preheader.i.i50
  %i.dj = add i64 %i.dc, -17
  %i.dk = icmp ult i64 %i.dj, -16
  br i1 %i.dk, label %bb.ab, label %getnum.exit.i52.thread, !prof !70

bb.ab:                                            ; preds = %getnum.exit.i52
  %i.dl = load ptr, ptr %0, align 8, !tbaa !48
  %i.dm = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.dl, ptr noundef nonnull @.str.68, i64 noundef %i.dc, i32 noundef 16) #12
  br label %getnumlimit.exit55

getnum.exit.i52.thread:                           ; preds = %bb.aa, %getnum.exit.i52
  %.07.i.i5364 = phi i64 [ %i.dc, %getnum.exit.i52 ], [ 16, %bb.aa ]
  %i.dn = trunc nuw nsw i64 %.07.i.i5364 to i32
  br label %getnumlimit.exit55

getnumlimit.exit55:                               ; preds = %bb.ab, %getnum.exit.i52.thread
  %.0.i54 = phi i32 [ %i.dm, %bb.ab ], [ %i.dn, %getnum.exit.i52.thread ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.0.i54, ptr %i.do, align 4, !tbaa !50
  br label %bb.ad

bb.ac:                                            ; preds = %bb.a
  %i.dp = sext i8 %i.c to i32
  %i.dq = load ptr, ptr %0, align 8, !tbaa !48
  %i.dr = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %i.dq, ptr noundef nonnull @.str.67, i32 noundef %i.dp) #12 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %getnumlimit.exit55, %bb.z, %bb.y, %bb.x, %bb.a
  br label %bb.ae

bb.ae:                                            ; preds = %getnum.exit, %bb.a, %bb.u, %bb.ad, %bb.w, %bb.v, %getnumlimit.exit48, %getnumlimit.exit42, %getnumlimit.exit, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ 10, %bb.ad ], [ 0, %bb.b ], [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.h ], [ 1, %bb.i ], [ 1, %bb.j ], [ 2, %bb.k ], [ 3, %bb.l ], [ 4, %bb.m ], [ 0, %getnumlimit.exit ], [ 1, %getnumlimit.exit42 ], [ 6, %getnumlimit.exit48 ], [ 9, %bb.w ], [ 5, %getnum.exit ], [ 8, %bb.v ], [ 5, %bb.u ], [ 7, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @unpackint(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.a
  %.not41 = icmp eq i32 %2, 0
  %5 = tail call i32 @llvm.umin.i32(i32 %3, i32 8) ; 9 uses
  %6 = zext nneg i32 %5 to i64                    ; 8 uses
  br i1 %.not41, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %7 = sub nsw i32 %3, %5
  %8 = sext i32 %7 to i64
  %i.b = getelementptr inbounds i8, ptr %1, i64 %8
  %i.c = load i8, ptr %i.b, align 1, !tbaa !13
  %i.d = zext i8 %i.c to i64                      ; 2 uses
  %.not75 = icmp eq i32 %3, 1
  br i1 %.not75, label %._crit_edge, label %.lr.ph.split.us.1

.lr.ph.split.us.1:                                ; preds = %.lr.ph.split.us
  %indvars.iv.next52 = add nsw i32 %5, -1
  %i.e = shl nuw nsw i64 %i.d, 8
  %9 = sub i32 %3, %indvars.iv.next52
  %10 = sext i32 %9 to i64
  %i.f = getelementptr inbounds i8, ptr %1, i64 %10
  %i.g = load i8, ptr %i.f, align 1, !tbaa !13
  %i.h = zext i8 %i.g to i64
  %i.i = or disjoint i64 %i.e, %i.h               ; 2 uses
  %i.j = icmp ugt i32 %3, 2
  br i1 %i.j, label %.lr.ph.split.us.2, label %._crit_edge

.lr.ph.split.us.2:                                ; preds = %.lr.ph.split.us.1
  %indvars.iv.next52.1 = add nsw i32 %5, -2
  %i.k = shl nuw nsw i64 %i.i, 8
  %11 = sub i32 %3, %indvars.iv.next52.1
  %12 = sext i32 %11 to i64
  %i.l = getelementptr inbounds i8, ptr %1, i64 %12
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = zext i8 %i.m to i64
  %i.o = or disjoint i64 %i.k, %i.n               ; 2 uses
  %.not76 = icmp eq i32 %3, 3
  br i1 %.not76, label %._crit_edge, label %.lr.ph.split.us.3

.lr.ph.split.us.3:                                ; preds = %.lr.ph.split.us.2
  %indvars.iv.next52.2 = add nsw i32 %5, -3
  %i.p = shl nuw nsw i64 %i.o, 8
  %13 = sub i32 %3, %indvars.iv.next52.2
  %14 = sext i32 %13 to i64
  %i.q = getelementptr inbounds i8, ptr %1, i64 %14
  %i.r = load i8, ptr %i.q, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i64
  %i.t = or disjoint i64 %i.p, %i.s               ; 2 uses
  %i.u = icmp ugt i32 %3, 4
  br i1 %i.u, label %.lr.ph.split.us.4, label %._crit_edge

.lr.ph.split.us.4:                                ; preds = %.lr.ph.split.us.3
  %indvars.iv.next52.3 = add nsw i32 %5, -4
  %i.v = shl i64 %i.t, 8
  %15 = sub i32 %3, %indvars.iv.next52.3
  %16 = sext i32 %15 to i64
  %i.w = getelementptr inbounds i8, ptr %1, i64 %16
  %i.x = load i8, ptr %i.w, align 1, !tbaa !13
  %i.y = zext i8 %i.x to i64
  %i.z = or disjoint i64 %i.v, %i.y               ; 2 uses
  %.not77 = icmp eq i32 %3, 5
  br i1 %.not77, label %._crit_edge, label %.lr.ph.split.us.5

.lr.ph.split.us.5:                                ; preds = %.lr.ph.split.us.4
  %indvars.iv.next52.4 = add nsw i32 %5, -5
  %i.aa = shl i64 %i.z, 8
  %17 = sub i32 %3, %indvars.iv.next52.4
  %18 = sext i32 %17 to i64
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %18
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !13
  %i.ad = zext i8 %i.ac to i64
  %i.ae = or disjoint i64 %i.aa, %i.ad            ; 2 uses
  %i.af = icmp ugt i32 %3, 6
  br i1 %i.af, label %.lr.ph.split.us.6, label %._crit_edge

.lr.ph.split.us.6:                                ; preds = %.lr.ph.split.us.5
  %indvars.iv.next52.5 = add nsw i32 %5, -6
  %i.ag = shl i64 %i.ae, 8
  %19 = sub i32 %3, %indvars.iv.next52.5
  %20 = sext i32 %19 to i64
  %i.ah = getelementptr inbounds i8, ptr %1, i64 %20
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !13
  %i.aj = zext i8 %i.ai to i64
  %i.ak = or disjoint i64 %i.ag, %i.aj            ; 2 uses
  %.not78 = icmp eq i32 %3, 7
  br i1 %.not78, label %._crit_edge, label %.lr.ph.split.us.7

.lr.ph.split.us.7:                                ; preds = %.lr.ph.split.us.6
  %indvars.iv.next52.6 = add nsw i32 %5, -7
  %i.al = shl i64 %i.ak, 8
  %21 = sub i32 %3, %indvars.iv.next52.6
  %22 = sext i32 %21 to i64
  %i.am = getelementptr inbounds i8, ptr %1, i64 %22
  %i.an = load i8, ptr %i.am, align 1, !tbaa !13
  %i.ao = zext i8 %i.an to i64
  %i.ap = or disjoint i64 %i.al, %i.ao
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.aq = getelementptr i8, ptr %1, i64 %6
  %i.ar = getelementptr i8, ptr %i.aq, i64 -1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = zext i8 %i.as to i64                    ; 2 uses
  %.not71 = icmp eq i32 %3, 1
  br i1 %.not71, label %._crit_edge, label %.lr.ph.split.1

.lr.ph.split.1:                                   ; preds = %.lr.ph.split
  %i.au = shl nuw nsw i64 %i.at, 8
  %i.av = getelementptr i8, ptr %1, i64 %6
  %i.aw = getelementptr i8, ptr %i.av, i64 -2
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !13
  %i.ay = zext i8 %i.ax to i64
  %i.az = or disjoint i64 %i.au, %i.ay            ; 2 uses
  %i.ba = icmp ugt i32 %3, 2
  br i1 %i.ba, label %.lr.ph.split.2, label %._crit_edge

.lr.ph.split.2:                                   ; preds = %.lr.ph.split.1
  %i.bb = shl nuw nsw i64 %i.az, 8
  %i.bc = getelementptr i8, ptr %1, i64 %6
  %i.bd = getelementptr i8, ptr %i.bc, i64 -3
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !13
  %i.bf = zext i8 %i.be to i64
  %i.bg = or disjoint i64 %i.bb, %i.bf            ; 2 uses
  %.not72 = icmp eq i32 %3, 3
  br i1 %.not72, label %._crit_edge, label %.lr.ph.split.3

.lr.ph.split.3:                                   ; preds = %.lr.ph.split.2
  %i.bh = shl nuw nsw i64 %i.bg, 8
  %i.bi = getelementptr i8, ptr %1, i64 %6
  %i.bj = getelementptr i8, ptr %i.bi, i64 -4
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !13
  %i.bl = zext i8 %i.bk to i64
  %i.bm = or disjoint i64 %i.bh, %i.bl            ; 2 uses
  %i.bn = icmp ugt i32 %3, 4
  br i1 %i.bn, label %.lr.ph.split.4, label %._crit_edge

.lr.ph.split.4:                                   ; preds = %.lr.ph.split.3
  %i.bo = shl i64 %i.bm, 8
  %i.bp = getelementptr i8, ptr %1, i64 %6
  %i.bq = getelementptr i8, ptr %i.bp, i64 -5
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !13
  %i.bs = zext i8 %i.br to i64
  %i.bt = or disjoint i64 %i.bo, %i.bs            ; 2 uses
  %.not73 = icmp eq i32 %3, 5
  br i1 %.not73, label %._crit_edge, label %.lr.ph.split.5

.lr.ph.split.5:                                   ; preds = %.lr.ph.split.4
  %i.bu = shl i64 %i.bt, 8
  %i.bv = getelementptr i8, ptr %1, i64 %6
  %i.bw = getelementptr i8, ptr %i.bv, i64 -6
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !13
  %i.by = zext i8 %i.bx to i64
  %i.bz = or disjoint i64 %i.bu, %i.by            ; 2 uses
  %i.ca = icmp ugt i32 %3, 6
  br i1 %i.ca, label %.lr.ph.split.6, label %._crit_edge

.lr.ph.split.6:                                   ; preds = %.lr.ph.split.5
  %i.cb = shl i64 %i.bz, 8
  %i.cc = getelementptr i8, ptr %1, i64 %6
  %i.cd = getelementptr i8, ptr %i.cc, i64 -7
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !13
  %i.cf = zext i8 %i.ce to i64
  %i.cg = or disjoint i64 %i.cb, %i.cf            ; 2 uses
  %.not74 = icmp eq i32 %3, 7
  br i1 %.not74, label %._crit_edge, label %.lr.ph.split.7

.lr.ph.split.7:                                   ; preds = %.lr.ph.split.6
  %i.ch = shl i64 %i.cg, 8
  %i.ci = getelementptr i8, ptr %1, i64 %6
  %i.cj = getelementptr i8, ptr %i.ci, i64 -8
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !13
  %i.cl = zext i8 %i.ck to i64
  %i.cm = or disjoint i64 %i.ch, %i.cl
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split, %.lr.ph.split.1, %.lr.ph.split.2, %.lr.ph.split.3, %.lr.ph.split.4, %.lr.ph.split.5, %.lr.ph.split.6, %.lr.ph.split.7, %.lr.ph.split.us, %.lr.ph.split.us.1, %.lr.ph.split.us.2, %.lr.ph.split.us.3, %.lr.ph.split.us.4, %.lr.ph.split.us.5, %.lr.ph.split.us.6, %.lr.ph.split.us.7
  %.0.lcssa = phi i64 [ %i.ap, %.lr.ph.split.us.7 ], [ %i.d, %.lr.ph.split.us ], [ %i.i, %.lr.ph.split.us.1 ], [ %i.o, %.lr.ph.split.us.2 ], [ %i.t, %.lr.ph.split.us.3 ], [ %i.z, %.lr.ph.split.us.4 ], [ %i.ae, %.lr.ph.split.us.5 ], [ %i.ak, %.lr.ph.split.us.6 ], [ %i.at, %.lr.ph.split ], [ %i.az, %.lr.ph.split.1 ], [ %i.bg, %.lr.ph.split.2 ], [ %i.bm, %.lr.ph.split.3 ], [ %i.bt, %.lr.ph.split.4 ], [ %i.bz, %.lr.ph.split.5 ], [ %i.cg, %.lr.ph.split.6 ], [ %i.cm, %.lr.ph.split.7 ] ; 5 uses
  %i.cn = icmp samesign ult i32 %3, 8
  br i1 %i.cn, label %._crit_edge.thread, label %bb.c

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.0.lcssa61 = phi i64 [ %.0.lcssa, %._crit_edge ], [ 0, %bb.a ] ; 2 uses
  %.not40 = icmp eq i32 %4, 0
  br i1 %.not40, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread
  %i.co = shl nsw i32 %3, 3
  %i.cp = add nsw i32 %i.co, -1
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = shl nuw i64 1, %i.cq                    ; 2 uses
  %i.cs = xor i64 %.0.lcssa61, %i.cr
  %i.ct = sub i64 %i.cs, %i.cr
  br label %.loopexit

bb.c:                                             ; preds = %._crit_edge
  %.not = icmp eq i32 %3, 8
  br i1 %.not, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %bb.c
  %.not37 = icmp eq i32 %4, 0
  %i.cu = icmp sgt i64 %.0.lcssa, -1
  %i.cv = select i1 %.not37, i1 true, i1 %i.cu
  %i.cw = select i1 %i.cv, i32 0, i32 255         ; 2 uses
  %.not38 = icmp eq i32 %2, 0
  br i1 %.not38, label %.lr.ph46.split.us.preheader, label %.lr.ph46.split

.lr.ph46.split.us.preheader:                      ; preds = %.lr.ph46
  %i.cx = zext nneg i32 %3 to i64
  br label %.lr.ph46.split.us

.lr.ph46.split.us:                                ; preds = %.lr.ph46.split.us.preheader, %bb.e
  %indvars.iv57 = phi i64 [ 8, %.lr.ph46.split.us.preheader ], [ %indvars.iv.next58, %bb.e ] ; 2 uses
  %i.cy = trunc nsw i64 %indvars.iv57 to i32
  %i.cz = xor i32 %i.cy, -1
  %i.da = add nsw i32 %3, %i.cz
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %1, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !13
  %i.de = zext i8 %i.dd to i32
  %.not39.us = icmp eq i32 %i.cw, %i.de
  br i1 %.not39.us, label %bb.e, label %bb.d, !prof !14

bb.d:                                             ; preds = %.lr.ph46.split.us
  %i.df = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %3) #12 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph46.split.us, %bb.d
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %i.dg = icmp samesign ult i64 %indvars.iv.next58, %i.cx
  br i1 %i.dg, label %.lr.ph46.split.us, label %.loopexit

.lr.ph46.split:                                   ; preds = %.lr.ph46, %bb.g
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %bb.g ], [ 8, %.lr.ph46 ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv53
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !13
  %i.dj = zext i8 %i.di to i32
  %.not39 = icmp eq i32 %i.cw, %i.dj
  br i1 %.not39, label %bb.g, label %bb.f, !prof !14

bb.f:                                             ; preds = %.lr.ph46.split
  %i.dk = tail call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %3) #12 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph46.split, %bb.f
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %i.dl = trunc nuw i64 %indvars.iv.next54 to i32
  %i.dm = icmp sgt i32 %3, %i.dl
  br i1 %i.dm, label %.lr.ph46.split, label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.c, %._crit_edge.thread, %bb.b
  %.1 = phi i64 [ %i.ct, %bb.b ], [ %.0.lcssa61, %._crit_edge.thread ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %bb.e ], [ %.0.lcssa, %bb.g ]
  ret i64 %.1
}

declare void @lua_pushnumber(ptr noundef, double noundef) local_unnamed_addr #1

declare i32 @lua_setmetatable(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @lua_setfield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_add(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.77)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_sub(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.78)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_mul(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 2, ptr noundef nonnull @.str.79)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_mod(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 3, ptr noundef nonnull @.str.80)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_pow(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 4, ptr noundef nonnull @.str.81)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_div(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 5, ptr noundef nonnull @.str.82)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_idiv(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 6, ptr noundef nonnull @.str.83)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @arith_unm(ptr noundef %0) #0 {
bb.a:
  tail call fastcc void @arith(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.84)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arith(ptr noundef %0, i32 noundef range(i32 0, 13) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = tail call i32 @lua_type(ptr noundef %0, i32 noundef 1) #12
  %i.d = icmp eq i32 %i.c, 3
  br i1 %i.d, label %tonum.exit.thread, label %bb.b

tonum.exit.thread:                                ; preds = %bb.a
  tail call void @lua_pushvalue(ptr noundef %0, i32 noundef 1) #12
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.e = call ptr @lua_tolstring(ptr noundef %0, i32 noundef 1, ptr noundef nonnull %i.b) #12 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %tonum.exit.thread13, label %tonum.exit

tonum.exit.thread13:                              ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.f

tonum.exit:                                       ; preds = %bb.b
  %i.f = call i64 @lua_stringtonumber(ptr noundef %0, ptr noundef nonnull %i.e) #12
  %i.g = load i64, ptr %i.b, align 8, !tbaa !11
  %i.h = add i64 %i.g, 1
  %.not = icmp eq i64 %i.f, %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br i1 %.not, label %bb.c, label %bb.f

bb.c:                                             ; preds = %tonum.exit.thread, %tonum.exit
  %i.i = call i32 @lua_type(ptr noundef %0, i32 noundef 2) #12
  %i.j = icmp eq i32 %i.i, 3
  br i1 %i.j, label %tonum.exit9.thread, label %bb.d

tonum.exit9.thread:                               ; preds = %bb.c
  call void @lua_pushvalue(ptr noundef %0, i32 noundef 2) #12
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.k = call ptr @lua_tolstring(ptr noundef %0, i32 noundef 2, ptr noundef nonnull %i.a) #12 ; 2 uses
  %.not.i7 = icmp eq ptr %i.k, null
  br i1 %.not.i7, label %tonum.exit9.thread17, label %tonum.exit9

tonum.exit9.thread17:                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.f

tonum.exit9:                                      ; preds = %bb.d
  %i.l = call i64 @lua_stringtonumber(ptr noundef %0, ptr noundef nonnull %i.k) #12
  %i.m = load i64, ptr %i.a, align 8, !tbaa !11
  %i.n = add i64 %i.m, 1
  %.not19 = icmp eq i64 %i.l, %i.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %.not19, label %bb.e, label %bb.f

bb.e:                                             ; preds = %tonum.exit9.thread, %tonum.exit9
  call void @lua_arith(ptr noundef %0, i32 noundef %1) #12
  br label %bb.h

bb.f:                                             ; preds = %tonum.exit9.thread17, %tonum.exit.thread13, %tonum.exit9, %tonum.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 2
  call void @lua_settop(ptr noundef %0, i32 noundef 2) #12
  %i.p = call i32 @lua_type(ptr noundef %0, i32 noundef 2) #12
  %i.q = icmp eq i32 %i.p, 4
  br i1 %i.q, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = call i32 @luaL_getmetafield(ptr noundef %0, i32 noundef 2, ptr noundef %2) #12
  %.not.i10 = icmp eq i32 %i.r, 0
  br i1 %.not.i10, label %.critedge.i, label %trymt.exit, !prof !12

.critedge.i:                                      ; preds = %bb.g, %bb.f
  %i.s = call i32 @lua_type(ptr noundef %0, i32 noundef -2) #12
  %i.t = call ptr @lua_typename(ptr noundef %0, i32 noundef %i.s) #12
  %i.u = call i32 @lua_type(ptr noundef %0, i32 noundef -1) #12
  %i.v = call ptr @lua_typename(ptr noundef %0, i32 noundef %i.u) #12
  %i.w = call i32 (ptr, ptr, ...) @luaL_error(ptr noundef %0, ptr noundef nonnull @.str.85, ptr noundef nonnull %i.o, ptr noundef %i.t, ptr noundef %i.v) #12 ; 0 uses
  br label %trymt.exit

trymt.exit:                                       ; preds = %bb.g, %.critedge.i
  call void @lua_rotate(ptr noundef %0, i32 noundef -3, i32 noundef 1) #12
  call void @lua_callk(ptr noundef %0, i32 noundef 2, i32 noundef 1, i64 noundef 0, ptr noundef null) #12
  br label %bb.h

bb.h:                                             ; preds = %trymt.exit, %bb.e
  ret void
}

declare void @lua_arith(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i64 @lua_stringtonumber(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @luaL_getmetafield(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @lua_rotate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 1, !"long-double-type", !"x86_fp80"}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = !{!6, !6, i64 0}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"p1 omnipotent char", !15, i64 0}
!17 = !{!"p1 _ZTS9lua_State", !15, i64 0}
!18 = !{!"luaL_Buffer", !16, i64 0, !10, i64 8, !10, i64 16, !17, i64 24, !6, i64 32}
!19 = !{!"str_Writer", !7, i64 0, !18, i64 16}
!20 = !{!19, !7, i64 0}
!21 = !{!18, !10, i64 16}
!22 = !{!18, !10, i64 8}
!23 = !{!18, !16, i64 0}
!24 = !{!"p1 short", !15, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"short", !6, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"MatchState", !16, i64 0, !16, i64 8, !16, i64 16, !17, i64 24, !7, i64 32, !7, i64 36, !6, i64 40}
!29 = !{!28, !17, i64 24}
!30 = !{!28, !16, i64 0}
!31 = !{!28, !16, i64 8}
!32 = !{!28, !16, i64 16}
!33 = !{!"GMatchState", !16, i64 0, !16, i64 8, !16, i64 16, !28, i64 24}
!34 = !{!33, !16, i64 0}
!35 = !{!33, !16, i64 8}
!36 = !{!33, !16, i64 16}
!37 = !{!28, !7, i64 32}
!38 = !{!28, !7, i64 36}
!39 = !{!"", !16, i64 0, !10, i64 8}
!40 = !{!39, !10, i64 8}
!41 = !{!39, !16, i64 0}
!42 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!43 = !{!"p1 int", !15, i64 0}
!44 = !{!43, !43, i64 0}
!45 = !{!7, !7, i64 0}
!46 = !{!16, !16, i64 0}
!47 = !{!"Header", !17, i64 0, !7, i64 8, !7, i64 12}
!48 = !{!47, !17, i64 0}
!49 = !{!47, !7, i64 8}
!50 = !{!47, !7, i64 12}
!51 = !{!"lconv", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !6, i64 80, !6, i64 81, !6, i64 82, !6, i64 83, !6, i64 84, !6, i64 85, !6, i64 86, !6, i64 87, !6, i64 88, !6, i64 89, !6, i64 90, !6, i64 91, !6, i64 92, !6, i64 93}
!52 = !{!51, !16, i64 0}
!53 = distinct !{!53, !59}
!54 = distinct !{!54, !59}
!55 = distinct !{!55, !59}
!56 = distinct !{!56, !59}
!57 = distinct !{!57, !59}
!58 = distinct !{!58, !59}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!61 = distinct !{null}
!62 = distinct !{null}
!63 = distinct !{null}
!64 = distinct !{null}
!65 = distinct !{!65, !67}
!66 = distinct !{!66, !67}
!67 = !{!"llvm.loop.peeled.count", i32 1}
!68 = !{!33, !17, i64 48}
!69 = !{!33, !16, i64 32}
!70 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
end_hunk_1
