Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lua/original/ldo?download=true
inline.NumInlined: 34
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@luaD_poscall:bb.a
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !70
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rethook(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #6 {
bb.a:
  %3 = alloca %struct.lua_Debug, align 8          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.b = load volatile i32, ptr %i.a, align 4, !tbaa !55
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.f = sext i32 %2 to i64
  %i.g = sub nsw i64 0, %i.f
  %i.h = getelementptr inbounds [16 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.j = load i32, ptr %i.i, align 4, !tbaa !45
  %i.k = and i32 %i.j, 32768
  %.not20 = icmp eq i32 %i.k, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !30    ; 2 uses
  br i1 %.not20, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %.pre, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !58   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 11
  %i.p = load i8, ptr %i.o, align 1, !tbaa !95
  %i.q = and i8 %i.p, 1
  %.not21 = icmp eq i8 %i.q, 0
  br i1 %.not21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.s = load i32, ptr %i.r, align 4, !tbaa !30
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 10
  %i.u = load i8, ptr %i.t, align 2, !tbaa !66
  %i.v = zext i8 %i.u to i32
  %i.w = add i32 %i.s, 1
  %i.x = add i32 %i.w, %i.v
  %i.y = sext i32 %i.x to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.1 = phi i64 [ 0, %bb.b ], [ %i.y, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.z = getelementptr inbounds [16 x i8], ptr %.pre, i64 %.1 ; 4 uses
  store ptr %i.z, ptr %1, align 8, !tbaa !30
  %i.aa = ptrtoint ptr %i.h to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab
  %i.ad = lshr exact i64 %i.ac, 4
  %i.ae = trunc i64 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ag = load volatile ptr, ptr %i.af, align 8, !tbaa !46 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, null
  br i1 %.not.i, label %luaD_hook.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 3 uses
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !47
  %.not40.i = icmp eq i8 %i.ai, 0
  br i1 %.not40.i, label %luaD_hook.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !41 ; 3 uses
  %i.al = load ptr, ptr %i.d, align 8, !tbaa !30  ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.ao = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.ap = ptrtoint ptr %i.an to i64               ; 2 uses
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 5 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = sub i64 %i.at, %i.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store i32 1, ptr %3, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i32 -1, ptr %i.av, align 8, !tbaa !50
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 136
  store ptr %i.ak, ptr %i.aw, align 8, !tbaa !51
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %i.ae, ptr %i.ax, align 8, !tbaa !52
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 %2, ptr %i.ay, align 4, !tbaa !53
  %i.az = getelementptr inbounds nuw i8, ptr %i.ak, i64 60 ; 5 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !45
  %i.bb = and i32 %i.ba, 32768
  %.not41.i = icmp eq i32 %i.bb, 0
  br i1 %.not41.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.ar, align 8, !tbaa !30 ; 4 uses
  %i.bd = icmp ult ptr %i.al, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.bc, ptr %i.d, align 8, !tbaa !30
  %.pre42.i = ptrtoint ptr %i.bc to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.pre-phi.i = phi i64 [ %.pre42.i, %bb.i ], [ %i.ao, %bb.h ], [ %i.ao, %bb.g ]
  %i.be = phi ptr [ %i.bc, %bb.i ], [ %i.al, %bb.h ], [ %i.al, %bb.g ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !30
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %.pre-phi.i
  %i.bj = icmp slt i64 %i.bi, 336
  br i1 %i.bj, label %bb.k, label %bb.l, !prof !43

bb.k:                                             ; preds = %bb.j
  %i.bk = tail call i32 @luaD_growstack(ptr noundef nonnull %0, i32 noundef 20, i32 noundef 1) ; 0 uses
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bl = phi ptr [ %i.be, %bb.j ], [ %.pre.i, %bb.k ]
  %i.bm = load ptr, ptr %i.ar, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 320 ; 2 uses
  %i.bo = icmp ult ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store ptr %i.bn, ptr %i.ar, align 8, !tbaa !30
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  store i8 0, ptr %i.ah, align 2, !tbaa !47
  %i.bp = load i32, ptr %i.az, align 4, !tbaa !45
  %i.bq = or i32 %i.bp, 1048576
  store i32 %i.bq, ptr %i.az, align 4, !tbaa !45
  call void %i.ag(ptr noundef nonnull %0, ptr noundef nonnull %3) #16, !inline_history !67
  store i8 1, ptr %i.ah, align 2, !tbaa !47
  %i.br = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 %i.au
  store ptr %i.bs, ptr %i.ar, align 8, !tbaa !30
  %i.bt = load ptr, ptr %i.am, align 8, !tbaa !30
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.aq
  store ptr %i.bu, ptr %i.d, align 8, !tbaa !30
  %i.bv = load i32, ptr %i.az, align 4, !tbaa !45
  %i.bw = and i32 %i.bv, -1048577
  store i32 %i.bw, ptr %i.az, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %.pre23 = load ptr, ptr %1, align 8, !tbaa !30
  br label %luaD_hook.exit

luaD_hook.exit:                                   ; preds = %bb.e, %bb.f, %bb.n
  %i.bx = phi ptr [ %i.z, %bb.e ], [ %i.z, %bb.f ], [ %.pre23, %bb.n ]
  %i.by = sub nsw i64 0, %.1
  %i.bz = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.by
  store ptr %i.bz, ptr %1, align 8, !tbaa !30
  br label %bb.o

bb.o:                                             ; preds = %luaD_hook.exit, %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !70 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 60
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !45
  %i.ce = and i32 %i.cd, 32768
  %.not22 = icmp eq i32 %i.ce, 0
  br i1 %.not22, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !30
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !30
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !30
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !58
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 64
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !71
  %i.cn = ptrtoint ptr %i.cg to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = lshr exact i64 %i.cp, 2
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = add nsw i32 %i.cr, -1
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !54
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @luaD_pretailcall(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !30
  br label %bb.b

bb.b:                                             ; preds = %tryfuncTM.exit, %bb.a
  %indvar = phi i32 [ %indvar.next, %tryfuncTM.exit ], [ 0, %bb.a ] ; 3 uses
  %i.d = phi i8 [ %i.go, %tryfuncTM.exit ], [ %.pre, %bb.a ]
  %.065 = phi i32 [ %i.gs, %tryfuncTM.exit ], [ 0, %bb.a ] ; 4 uses
  %.063 = phi i32 [ %i.gt, %tryfuncTM.exit ], [ %3, %bb.a ] ; 8 uses
  %.062 = phi ptr [ %.2, %tryfuncTM.exit ], [ %2, %bb.a ] ; 11 uses
  %i.e = and i8 %i.d, 63
  switch i8 %i.e, label %bb.p [
    i8 38, label %bb.c
    i8 22, label %bb.h
    i8 6, label %bb.m
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.062, align 8, !tbaa !30
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !73
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp slt i64 %i.m, 336
  br i1 %i.n, label %bb.d, label %bb.e, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.p = ptrtoint ptr %.062 to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = tail call i32 @luaD_growstack(ptr noundef nonnull %0, i32 noundef 20, i32 noundef 1) ; 0 uses
  %i.t = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.r
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = phi ptr [ %.pre.i, %bb.d ], [ %i.j, %bb.c ]
  %.0.i = phi ptr [ %i.u, %bb.d ], [ %.062, %bb.c ] ; 2 uses
  %i.w = or i32 %.065, 32768
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 320
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !42 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.f, label %prepCallInfo.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call ptr @luaE_extendCI(ptr noundef nonnull %0, i32 noundef 1) #16
  br label %prepCallInfo.exit.i

prepCallInfo.exit.i:                              ; preds = %bb.f, %bb.e
  %i.ad = phi ptr [ %i.ac, %bb.f ], [ %i.ab, %bb.e ] ; 5 uses
  store ptr %.0.i, ptr %i.ad, align 8, !tbaa !30
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  store i32 %i.w, ptr %i.ae, align 4, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.x, ptr %i.af, align 8, !tbaa !30
  store ptr %i.ad, ptr %i.y, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ah = load volatile i32, ptr %i.ag, align 4, !tbaa !55
  %i.ai = and i32 %i.ah, 1
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %precallC.exit, label %bb.g, !prof !68

bb.g:                                             ; preds = %prepCallInfo.exit.i
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = ptrtoint ptr %.0.i to i64
  %i.am = sub i64 %i.ak, %i.al
  %i.an = lshr exact i64 %i.am, 4
  %i.ao = trunc i64 %i.an to i32
  %i.ap = add nsw i32 %i.ao, -1
  tail call void @luaD_hook(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, i32 noundef 1, i32 noundef %i.ap)
  br label %precallC.exit

precallC.exit:                                    ; preds = %prepCallInfo.exit.i, %bb.g
  %i.aq = tail call i32 %i.h(ptr noundef nonnull %0) #16, !inline_history !96 ; 2 uses
  tail call void @luaD_poscall(ptr noundef nonnull %0, ptr noundef nonnull %i.ad, i32 noundef %i.aq)
  br label %bb.v

bb.h:                                             ; preds = %bb.b
  %i.ar = load ptr, ptr %.062, align 8, !tbaa !30
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.at = load ptr, ptr %i.b, align 8, !tbaa !30  ; 2 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = icmp slt i64 %i.aw, 336
  br i1 %i.ax, label %bb.i, label %bb.j, !prof !43

bb.i:                                             ; preds = %bb.h
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.az = ptrtoint ptr %.062 to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = tail call i32 @luaD_growstack(ptr noundef nonnull %0, i32 noundef 20, i32 noundef 1) ; 0 uses
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.bb
  %.pre.i72 = load ptr, ptr %i.b, align 8, !tbaa !30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bf = phi ptr [ %.pre.i72, %bb.i ], [ %i.at, %bb.h ]
  %.0.i68 = phi ptr [ %i.be, %bb.i ], [ %.062, %bb.h ] ; 2 uses
  %i.bg = or i32 %.065, 32768
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 320
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !41
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !42 ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i69, label %bb.k, label %prepCallInfo.exit.i70

bb.k:                                             ; preds = %bb.j
  %i.bm = tail call ptr @luaE_extendCI(ptr noundef nonnull %0, i32 noundef 1) #16
  br label %prepCallInfo.exit.i70

prepCallInfo.exit.i70:                            ; preds = %bb.k, %bb.j
  %i.bn = phi ptr [ %i.bm, %bb.k ], [ %i.bl, %bb.j ] ; 5 uses
  store ptr %.0.i68, ptr %i.bn, align 8, !tbaa !30
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 60
  store i32 %i.bg, ptr %i.bo, align 4, !tbaa !45
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bh, ptr %i.bp, align 8, !tbaa !30
  store ptr %i.bn, ptr %i.bi, align 8, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.br = load volatile i32, ptr %i.bq, align 4, !tbaa !55
  %i.bs = and i32 %i.br, 1
  %.not.i71 = icmp eq i32 %i.bs, 0
  br i1 %.not.i71, label %precallC.exit73, label %bb.l, !prof !68

bb.l:                                             ; preds = %prepCallInfo.exit.i70
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.0.i68 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = lshr exact i64 %i.bw, 4
  %i.by = trunc i64 %i.bx to i32
  %i.bz = add nsw i32 %i.by, -1
  tail call void @luaD_hook(ptr noundef nonnull %0, i32 noundef 0, i32 noundef -1, i32 noundef 1, i32 noundef %i.bz)
  br label %precallC.exit73

precallC.exit73:                                  ; preds = %prepCallInfo.exit.i70, %bb.l
  %i.ca = tail call i32 %i.ar(ptr noundef nonnull %0) #16, !inline_history !96 ; 2 uses
  tail call void @luaD_poscall(ptr noundef nonnull %0, ptr noundef nonnull %i.bn, i32 noundef %i.ca)
  br label %bb.v

bb.m:                                             ; preds = %bb.b
  %i.cb = load ptr, ptr %.062, align 8, !tbaa !30
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !58 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  %i.cf = load i8, ptr %i.ce, align 4, !tbaa !74  ; 2 uses
  %i.cg = zext i8 %i.cf to i32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 10
  %i.ci = load i8, ptr %i.ch, align 2, !tbaa !66
  %i.cj = zext i8 %i.ci to i32                    ; 4 uses
  %i.ck = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 4
  %i.cq = sub nsw i32 %i.cg, %4                   ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %.not = icmp sgt i64 %i.cp, %i.cr
  br i1 %.not, label %bb.o, label %bb.n, !prof !68

bb.n:                                             ; preds = %bb.m
  %i.cs = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.ct = ptrtoint ptr %.062 to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = tail call i32 @luaD_growstack(ptr noundef nonnull %0, i32 noundef %i.cq, i32 noundef 1) ; 0 uses
  %i.cx = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.cv
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %.1 = phi ptr [ %i.cy, %bb.n ], [ %.062, %bb.m ] ; 3 uses
  %i.cz = load ptr, ptr %1, align 8, !tbaa !30
  %i.da = sext i32 %4 to i64
  %i.db = sub nsw i64 0, %i.da
  %i.dc = getelementptr inbounds [16 x i8], ptr %i.cz, i64 %i.db ; 2 uses
  store ptr %i.dc, ptr %1, align 8, !tbaa !30
  %i.dd = icmp sgt i32 %.063, 0
  br i1 %i.dd, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.o
  %wide.trip.count = zext nneg i32 %.063 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.de = icmp eq i32 %.063, 1
  br i1 %i.de, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.df = load ptr, ptr %1, align 8, !tbaa !30
  %i.dg = getelementptr inbounds nuw [16 x i8], ptr %i.df, i64 %indvars.iv ; 2 uses
  %i.dh = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !30
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !30
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dk = load i8, ptr %i.dj, align 8, !tbaa !34
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i8 %i.dk, ptr %i.dl, align 8, !tbaa !34
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dm = load ptr, ptr %1, align 8, !tbaa !30
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %indvars.iv.next ; 2 uses
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv.next ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !30
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !30
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dr = load i8, ptr %i.dq, align 8, !tbaa !34
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store i8 %i.dr, ptr %i.ds, align 8, !tbaa !34
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod180 = trunc i32 %.063 to i1
  tail call void @llvm.assume(i1 %lcmp.mod180)
  %i.dt = load ptr, ptr %1, align 8, !tbaa !30
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %indvars.iv.epil.init ; 2 uses
  %i.dv = getelementptr inbounds nuw [16 x i8], ptr %.1, i64 %indvars.iv.epil.init ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !30
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !30
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = load i8, ptr %i.dx, align 8, !tbaa !34
  %i.dz = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store i8 %i.dy, ptr %i.dz, align 8, !tbaa !34
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.pre122 = load ptr, ptr %1, align 8, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.o
  %i.ea = phi ptr [ %.pre122, %._crit_edge.loopexit ], [ %i.dc, %bb.o ] ; 11 uses
  %.not6789 = icmp sgt i32 %.063, %i.cj
  br i1 %.not6789, label %._crit_edge93, label %.lr.ph92.preheader

.lr.ph92.preheader:                               ; preds = %._crit_edge
  %5 = sext i32 %.063 to i64                      ; 2 uses
  %i.eb = add nuw nsw i32 %i.cj, 1                ; 3 uses
  %i.ec = add i32 %3, %indvar
  %reass.sub = sub i32 %i.cj, %i.ec
  %i.ed = add i32 %reass.sub, 1
  %i.ee = add i32 %indvar, %3
  %i.ef = sub i32 %i.cj, %i.ee
  %xtraiter185 = and i32 %i.ed, 7                 ; 2 uses
  %lcmp.mod186.not = icmp eq i32 %xtraiter185, 0
  br i1 %lcmp.mod186.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol

.lr.ph92.prol:                                    ; preds = %.lr.ph92.preheader, %.lr.ph92.prol
  %indvars.iv118.prol = phi i64 [ %indvars.iv.next119.prol, %.lr.ph92.prol ], [ %5, %.lr.ph92.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph92.prol ], [ 0, %.lr.ph92.preheader ]
  %i.eg = getelementptr inbounds [16 x i8], ptr %i.ea, i64 %indvars.iv118.prol
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store i8 0, ptr %i.eh, align 8, !tbaa !30
  %indvars.iv.next119.prol = add nsw i64 %indvars.iv118.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter185
  br i1 %prol.iter.cmp.not, label %.lr.ph92.prol.loopexit, label %.lr.ph92.prol, !llvm.loop !97

.lr.ph92.prol.loopexit:                           ; preds = %.lr.ph92.prol, %.lr.ph92.preheader
  %indvars.iv118.unr = phi i64 [ %5, %.lr.ph92.preheader ], [ %indvars.iv.next119.prol, %.lr.ph92.prol ]
  %i.ei = icmp ult i32 %i.ef, 7
  br i1 %i.ei, label %._crit_edge93, label %.lr.ph92

.lr.ph92:                                         ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92
  %indvars.iv118 = phi i64 [ %indvars.iv.next119.7, %.lr.ph92 ], [ %indvars.iv118.unr, %.lr.ph92.prol.loopexit ] ; 9 uses
  %i.ej = getelementptr inbounds [16 x i8], ptr %i.ea, i64 %indvars.iv118
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  store i8 0, ptr %i.ek, align 8, !tbaa !30
  %i.el = getelementptr [16 x i8], ptr %i.ea, i64 %indvars.iv118
  %i.em = getelementptr i8, ptr %i.el, i64 24
  store i8 0, ptr %i.em, align 8, !tbaa !30
  %i.en = getelementptr [16 x i8], ptr %i.ea, i64 %indvars.iv118
  %i.eo = getelementptr i8, ptr %i.en, i64 40
  store i8 0, ptr %i.eo, align 8, !tbaa !30
  %i.ep = getelementptr [16 x i8], ptr %i.ea, i64 %indvars.iv118
  %i.eq = getelementptr i8, ptr %i.ep, i64 56
  store i8 0, ptr %i.eq, align 8, !tbaa !30
  %i.er = getelementptr [16 x i8], ptr %i.ea, i64 %indvars.iv118
  %i.es = getelementptr i8, ptr %i.er, i64 72
  store i8 0, ptr %i.es, align 8, !tbaa !30
  %i.et = getelementptr [16 x i8], ptr %i.ea, i64 %indvars.iv118
  %i.eu = getelementptr i8, ptr %i.et, i64 88
  store i8 0, ptr %i.eu, align 8, !tbaa !30
  %i.ev = getelementptr [16 x i8], ptr %i.ea, i64 %indvars.iv118
  %i.ew = getelementptr i8, ptr %i.ev, i64 104
  store i8 0, ptr %i.ew, align 8, !tbaa !30
  %i.ex = getelementptr [16 x i8], ptr %i.ea, i64 %indvars.iv118
  %i.ey = getelementptr i8, ptr %i.ex, i64 120
  store i8 0, ptr %i.ey, align 8, !tbaa !30
  %indvars.iv.next119.7 = add nsw i64 %indvars.iv118, 8 ; 2 uses
  %lftr.wideiv.7 = trunc i64 %indvars.iv.next119.7 to i32
  %exitcond121.not.7 = icmp eq i32 %i.eb, %lftr.wideiv.7
  br i1 %exitcond121.not.7, label %._crit_edge93, label %.lr.ph92

._crit_edge93:                                    ; preds = %.lr.ph92.prol.loopexit, %.lr.ph92, %._crit_edge
  %.164.lcssa = phi i32 [ %.063, %._crit_edge ], [ %i.eb, %.lr.ph92 ], [ %i.eb, %.lr.ph92.prol.loopexit ]
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.fa = zext i8 %i.cf to i64
  %i.fb = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.fb, ptr %i.fc, align 8, !tbaa !30
  %i.fd = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !71
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !30
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 60 ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !45
  %i.fi = or i32 %i.fh, 4194304
  store i32 %i.fi, ptr %i.fg, align 4, !tbaa !45
  %i.fj = zext nneg i32 %.164.lcssa to i64
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.fj
  store ptr %i.fk, ptr %i.b, align 8, !tbaa !30
  br label %bb.v

bb.p:                                             ; preds = %bb.b
  %i.fl = load ptr, ptr %i.a, align 8, !tbaa !30
  %i.fm = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = icmp slt i64 %i.fp, 17
  br i1 %i.fq, label %bb.q, label %bb.r, !prof !43

bb.q:                                             ; preds = %bb.p
  %i.fr = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.fs = ptrtoint ptr %.062 to i64
  %i.ft = ptrtoint ptr %i.fr to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = tail call i32 @luaD_growstack(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1) ; 0 uses
  %i.fw = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.fx = getelementptr inbounds i8, ptr %i.fw, i64 %i.fu
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.2 = phi ptr [ %i.fx, %bb.q ], [ %.062, %bb.p ] ; 7 uses
  %i.fy = tail call ptr @luaT_gettmbyobj(ptr noundef nonnull %0, ptr noundef %.2, i32 noundef 23) #16 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 8, !tbaa !34
  %i.gb = and i8 %i.ga, 15
  %i.gc = icmp eq i8 %i.gb, 0
  br i1 %i.gc, label %bb.s, label %bb.t, !prof !43

bb.s:                                             ; preds = %bb.r
  tail call void @luaG_callerror(ptr noundef nonnull %0, ptr noundef %.2) #15
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.gd = load ptr, ptr %i.b, align 8, !tbaa !30  ; 3 uses
  %i.ge = icmp ugt ptr %i.gd, %.2
  br i1 %i.ge, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %.025.i = phi ptr [ %i.gf, %.lr.ph.i ], [ %i.gd, %bb.t ] ; 4 uses
  %i.gf = getelementptr inbounds i8, ptr %.025.i, i64 -16 ; 3 uses
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !30
  store i64 %i.gg, ptr %.025.i, align 8, !tbaa !30
  %i.gh = getelementptr inbounds i8, ptr %.025.i, i64 -8
  %i.gi = load i8, ptr %i.gh, align 8, !tbaa !34
  %i.gj = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  store i8 %i.gi, ptr %i.gj, align 8, !tbaa !34
  %i.gk = icmp ugt ptr %i.gf, %.2
  br i1 %i.gk, label %.lr.ph.i, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i74 = load ptr, ptr %i.b, align 8, !tbaa !30
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.t
  %i.gl = phi ptr [ %.pre.i74, %._crit_edge.loopexit.i ], [ %i.gd, %bb.t ]
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  store ptr %i.gm, ptr %i.b, align 8, !tbaa !30
  %i.gn = load i64, ptr %i.fy, align 8, !tbaa !30
  store i64 %i.gn, ptr %.2, align 8, !tbaa !30
  %i.go = load i8, ptr %i.fz, align 8, !tbaa !34  ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.2, i64 8
  store i8 %i.go, ptr %i.gp, align 8, !tbaa !34
  %i.gq = and i32 %.065, 3840
  %i.gr = icmp eq i32 %i.gq, 3840
  br i1 %i.gr, label %bb.u, label %tryfuncTM.exit

bb.u:                                             ; preds = %._crit_edge.i
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #15
  unreachable

tryfuncTM.exit:                                   ; preds = %._crit_edge.i
  %i.gs = add nuw nsw i32 %.065, 256
  %i.gt = add nsw i32 %.063, 1
  %indvar.next = add i32 %indvar, 1
  br label %bb.b

bb.v:                                             ; preds = %._crit_edge93, %precallC.exit73, %precallC.exit
  %.0 = phi i32 [ %i.aq, %precallC.exit ], [ %i.ca, %precallC.exit73 ], [ -1, %._crit_edge93 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden noundef ptr @luaD_precall(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = add nsw i32 %2, 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 20 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !30
  br label %bb.b

bb.b:                                             ; preds = %tryfuncTM.exit, %bb.a
  %i.e = phi i8 [ %.pre, %bb.a ], [ %i.ey, %tryfuncTM.exit ]
  %.049 = phi i32 [ %i.a, %bb.a ], [ %i.fc, %tryfuncTM.exit ] ; 5 uses
  %.047 = phi ptr [ %1, %bb.a ], [ %.2, %tryfuncTM.exit ] ; 11 uses
  %i.f = and i8 %i.e, 63
  switch i8 %i.f, label %bb.o [
    i8 38, label %bb.c
    i8 22, label %bb.g
    i8 6, label %bb.k
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %.047, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !73   ; 2 uses
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp slt i64 %i.n, 336
  br i1 %i.o, label %bb.d, label %bb.e, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.q = ptrtoint ptr %.047 to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = tail call i32 @luaD_growstack(ptr noundef nonnull %0, i32 noundef 20, i32 noundef 1) ; 0 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 %i.s
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = phi ptr [ %.pre.i, %bb.d ], [ %i.k, %bb.c ]
  %.0.i = phi ptr [ %i.v, %bb.d ], [ %.047, %bb.c ] ; 2 uses
  %i.x = or i32 %.049, 32768
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 320
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.f, label %prepCallInfo.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call ptr @luaE_extendCI(ptr noundef nonnull %0, i32 noundef 1) #16
  br label %prepCallInfo.exit.i

prepCallInfo.exit.i:                              ; preds = %bb.f, %bb.e
  %i.ae = phi ptr [ %i.ad, %bb.f ], [ %i.ac, %bb.e ] ; 6 uses
  store ptr %.0.i, ptr %i.ae, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 60
  store i32 %i.x, ptr %i.af, align 4, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %i.y, ptr %i.ag, align 8, !tbaa !30
  store ptr %i.ae, ptr %i.z, align 8, !tbaa !41
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.ai = load volatile i32, ptr %i.ah, align 4, !tbaa !55
  %i.aj = and i32 %i.ai, 1
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %.loopexit.sink.split, label %.loopexit.sink.split.sink.split, !prof !68

bb.g:                                             ; preds = %bb.b
  %i.ak = load ptr, ptr %.047, align 8, !tbaa !30 ; 2 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !30  ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = icmp slt i64 %i.ap, 336
  br i1 %i.aq, label %bb.h, label %bb.i, !prof !43

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.as = ptrtoint ptr %.047 to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = tail call i32 @luaD_growstack(ptr noundef nonnull %0, i32 noundef 20, i32 noundef 1) ; 0 uses
  %i.aw = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au
  %.pre.i54 = load ptr, ptr %i.c, align 8, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = phi ptr [ %.pre.i54, %bb.h ], [ %i.am, %bb.g ]
  %.0.i50 = phi ptr [ %i.ax, %bb.h ], [ %.047, %bb.g ] ; 2 uses
  %i.az = or i32 %.049, 32768
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 320
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !41
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !42 ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.be, null
  br i1 %.not.i.i51, label %bb.j, label %prepCallInfo.exit.i52

bb.j:                                             ; preds = %bb.i
  %i.bf = tail call ptr @luaE_extendCI(ptr noundef nonnull %0, i32 noundef 1) #16
  br label %prepCallInfo.exit.i52

prepCallInfo.exit.i52:                            ; preds = %bb.j, %bb.i
  %i.bg = phi ptr [ %i.bf, %bb.j ], [ %i.be, %bb.i ] ; 6 uses
  store ptr %.0.i50, ptr %i.bg, align 8, !tbaa !30
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 60
  store i32 %i.az, ptr %i.bh, align 4, !tbaa !45
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.ba, ptr %i.bi, align 8, !tbaa !30
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !41
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.bk = load volatile i32, ptr %i.bj, align 4, !tbaa !55
  %i.bl = and i32 %i.bk, 1
  %.not.i53 = icmp eq i32 %i.bl, 0
  br i1 %.not.i53, label %.loopexit.sink.split, label %.loopexit.sink.split.sink.split, !prof !68

bb.k:                                             ; preds = %bb.b
  %i.bm = load ptr, ptr %.047, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !58 ; 3 uses
  %i.bp = load ptr, ptr %i.c, align 8, !tbaa !30
  %i.bq = ptrtoint ptr %i.bp to i64               ; 2 uses
  %i.br = ptrtoint ptr %.047 to i64               ; 2 uses
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = lshr i64 %i.bs, 4
  %i.bu = trunc i64 %i.bt to i32                  ; 4 uses
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 10
  %i.bx = load i8, ptr %i.bw, align 2, !tbaa !66
  %i.by = zext i8 %i.bx to i32                    ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !74  ; 2 uses
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !30
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = sub i64 %i.cc, %i.bq
  %i.ce = ashr exact i64 %i.cd, 4
  %i.cf = zext i8 %i.ca to i64                    ; 2 uses
  %.not = icmp sgt i64 %i.ce, %i.cf
  br i1 %.not, label %bb.m, label %bb.l, !prof !68

bb.l:                                             ; preds = %bb.k
  %i.cg = zext i8 %i.ca to i32
  %i.ch = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = sub i64 %i.br, %i.ci
  %i.ck = tail call i32 @luaD_growstack(ptr noundef nonnull %0, i32 noundef %i.cg, i32 noundef 1) ; 0 uses
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !30
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.cj
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.1 = phi ptr [ %i.cm, %bb.l ], [ %.047, %bb.k ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.1, i64 16
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cn, i64 %i.cf
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !41
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !42 ; 2 uses
  %.not.i56 = icmp eq ptr %i.cs, null
  br i1 %.not.i56, label %bb.n, label %prepCallInfo.exit

bb.n:                                             ; preds = %bb.m
  %i.ct = tail call ptr @luaE_extendCI(ptr noundef nonnull %0, i32 noundef 1) #16
  br label %prepCallInfo.exit

prepCallInfo.exit:                                ; preds = %bb.m, %bb.n
  %i.cu = phi ptr [ %i.ct, %bb.n ], [ %i.cs, %bb.m ] ; 8 uses
  store ptr %.1, ptr %i.cu, align 8, !tbaa !30
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 60
  store i32 %.049, ptr %i.cv, align 4, !tbaa !45
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store ptr %i.co, ptr %i.cw, align 8, !tbaa !30
  store ptr %i.cu, ptr %i.cp, align 8, !tbaa !41
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !71
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 32
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !30
  %.not68 = icmp sgt i32 %i.bu, %i.by
  br i1 %.not68, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %prepCallInfo.exit
  %i.da = add nuw nsw i32 %i.by, 1
end_hunk_0
