Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/minilua?download=true
inline.NumInlined: 1353
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 27
begin_hunk_0_@lua_rawseti:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !95
  %.not28.i = icmp ult ptr %i.c, %i.e
  %.luaO_nilobject_.i = select i1 %.not28.i, ptr %i.c, ptr @luaO_nilobject_
  br label %index2adr.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %1, -10000
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.i
  br label %index2adr.exit

bb.e:                                             ; preds = %bb.c
  %i.k = icmp eq i32 %1, -10000
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !68
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  br label %index2adr.exit

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !111
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !117
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81
  store ptr %i.v, ptr %i.t, align 8, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 5, ptr %i.w, align 8, !tbaa !99
  br label %index2adr.exit

index2adr.exit:                                   ; preds = %bb.b, %bb.d, %bb.f, %bb.g
  %.1.i = phi ptr [ %.luaO_nilobject_.i, %bb.b ], [ %i.j, %bb.d ], [ %i.t, %bb.g ], [ %i.n, %bb.f ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95   ; 2 uses
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -16
  %i.aa = load ptr, ptr %.1.i, align 8, !tbaa !81 ; 6 uses
  %i.ab = add i32 %2, -1                          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !118
  %i.ae = icmp ult i32 %i.ab, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %index2adr.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !119
  %i.ah = sext i32 %i.ab to i64
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ag, i64 %i.ah
  br label %luaH_getnum.exit.i

bb.i:                                             ; preds = %index2adr.exit
  %i.aj = sitofp i32 %2 to double                 ; 3 uses
  %i.ak = icmp eq i32 %2, 0
  br i1 %i.ak, label %bb.j, label %.preheader.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !103
  br label %hashnum.exit.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.i
  %i.an = bitcast double %i.aj to i64             ; 2 uses
  %.sroa.0.4.extract.shift.i.i.i = lshr i64 %i.an, 32
  %i.ao = add i64 %.sroa.0.4.extract.shift.i.i.i, %i.an
  %.sroa.0.0.insert.ext.i.i.i = and i64 %i.ao, 4294967295
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !103
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aa, i64 11
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !120
  %i.at = zext nneg i8 %i.as to i64
  %notmask.i.i.i = shl nsw i64 -1, %i.at
  %i.au = xor i64 %notmask.i.i.i, -1
  %i.av = or i64 %i.au, 1
  %i.aw = urem i64 %.sroa.0.0.insert.ext.i.i.i, %i.av
  %i.ax = getelementptr inbounds nuw [40 x i8], ptr %i.aq, i64 %i.aw
  br label %hashnum.exit.i.i.preheader

hashnum.exit.i.i.preheader:                       ; preds = %.preheader.i.i.i, %bb.j
  %.0.i.i.ph = phi ptr [ %i.ax, %.preheader.i.i.i ], [ %i.am, %bb.j ]
  br label %hashnum.exit.i.i

hashnum.exit.i.i:                                 ; preds = %hashnum.exit.i.i.preheader, %bb.l
  %.0.i.i = phi ptr [ %i.bf, %bb.l ], [ %.0.i.i.ph, %hashnum.exit.i.i.preheader ] ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !81
  %i.ba = icmp eq i32 %i.az, 3
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %hashnum.exit.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !81
  %i.bd = fcmp oeq double %i.bc, %i.aj
  br i1 %i.bd, label %luaH_getnum.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %hashnum.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !81 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %luaH_getnum.exit.thread.i, label %hashnum.exit.i.i, !llvm.loop !2

luaH_getnum.exit.i:                               ; preds = %bb.k, %bb.h
  %.1.i.i = phi ptr [ %i.ai, %bb.h ], [ %.0.i.i, %bb.k ] ; 2 uses
  %.not.i16 = icmp eq ptr %.1.i.i, @luaO_nilobject_
  br i1 %.not.i16, label %luaH_getnum.exit.luaH_getnum.exit.thread_crit_edge.i, label %luaH_setnum.exit

luaH_getnum.exit.luaH_getnum.exit.thread_crit_edge.i: ; preds = %luaH_getnum.exit.i
  %.pre.i = sitofp i32 %2 to double
  br label %luaH_getnum.exit.thread.i

luaH_getnum.exit.thread.i:                        ; preds = %bb.l, %luaH_getnum.exit.luaH_getnum.exit.thread_crit_edge.i
  %.pre-phi.i = phi double [ %.pre.i, %luaH_getnum.exit.luaH_getnum.exit.thread_crit_edge.i ], [ %i.aj, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store double %.pre-phi.i, ptr %3, align 8, !tbaa !81
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.bg, align 8, !tbaa !99
  %i.bh = call fastcc ptr @newkey(ptr noundef %0, ptr noundef %i.aa, ptr noundef nonnull %3), !inline_history !3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %luaH_setnum.exit

luaH_setnum.exit:                                 ; preds = %luaH_getnum.exit.i, %luaH_getnum.exit.thread.i
  %.0.i = phi ptr [ %i.bh, %luaH_getnum.exit.thread.i ], [ %.1.i.i, %luaH_getnum.exit.i ] ; 2 uses
  %i.bi = load i64, ptr %i.z, align 8, !tbaa !81
  store i64 %i.bi, ptr %.0.i, align 8, !tbaa !81
  %i.bj = getelementptr inbounds i8, ptr %i.y, i64 -8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !99
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !99
  %i.bm = load ptr, ptr %i.x, align 8, !tbaa !95  ; 5 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !99
  %i.bp = icmp sgt i32 %i.bo, 3
  br i1 %i.bp, label %bb.m, label %bb.p

bb.m:                                             ; preds = %luaH_setnum.exit
  %i.bq = getelementptr inbounds i8, ptr %i.bm, i64 -16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !81
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 9
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !81
  %i.bu = and i8 %i.bt, 3
  %.not = icmp eq i8 %i.bu, 0
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %.1.i, align 8, !tbaa !81 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 9 ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !81  ; 2 uses
  %i.by = and i8 %i.bx, 4
  %.not15 = icmp eq i8 %i.by, 0
  br i1 %.not15, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bz = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.bz, align 8, !tbaa !68
  %i.ca = and i8 %i.bx, -5
  store i8 %i.ca, ptr %i.bw, align 1, !tbaa !81
  %i.cb = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !104
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !105
  store ptr %i.bv, ptr %i.cb, align 8, !tbaa !104
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !95
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %luaH_setnum.exit
  %i.ce = phi ptr [ %.pre, %bb.o ], [ %i.bm, %bb.n ], [ %i.bm, %bb.m ], [ %i.bm, %luaH_setnum.exit ]
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -16
  store ptr %i.cf, ptr %i.x, align 8, !tbaa !95
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @luaL_loadfile(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.SParser, align 8            ; 7 uses
  %3 = alloca %struct.Zio, align 8                ; 7 uses
  %4 = alloca %struct.LoadF, align 8              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.a = getelementptr i8, ptr %0, i64 16         ; 13 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !95  ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val35 = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.c = ptrtoint ptr %.val to i64
  %i.d = ptrtoint ptr %.val35 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 4                   ; 2 uses
  %i.g = trunc i64 %i.f to i32                    ; 5 uses
  %i.h = add nsw i32 %i.g, 1                      ; 8 uses
  store i32 0, ptr %4, align 8, !tbaa !122
  %5 = icmp eq ptr %1, null
  br i1 %5, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68   ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 120 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !89   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 112 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !96   ; 2 uses
  %.not.i = icmp ult i64 %i.l, %i.n
  br i1 %.not.i, label %lua_pushlstring.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 148
  %i.p = load i32, ptr %i.o, align 4, !tbaa !91
  %i.q = mul i32 %i.p, 10                         ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 0
  %spec.store.select.i.i = select i1 %i.s, i64 9223372036854775806, i64 %i.r
  %i.t = sub nuw i64 %i.l, %i.n
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 136 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !92
  %i.w = add i64 %i.t, %i.v
  store i64 %i.w, ptr %i.u, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 33
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %spec.store.select.i.i, %bb.c ], [ %i.z, %bb.d ]
  %i.y = tail call fastcc i64 @singlestep(ptr noundef nonnull %0), !inline_history !0
  %i.z = sub nsw i64 %.0.i.i, %i.y                ; 2 uses
  %i.aa = load i8, ptr %i.x, align 1, !tbaa !85
  %i.ab = icmp ne i8 %i.aa, 0                     ; 2 uses
  %i.ac = icmp sgt i64 %i.z, 0
  %or.cond.i.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e, !llvm.loop !1

bb.e:                                             ; preds = %bb.d
  br i1 %i.ab, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.u, align 8, !tbaa !92  ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 1024
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = load i64, ptr %i.k, align 8, !tbaa !89
  %i.ag = add i64 %i.af, 1024
  br label %luaC_step.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ah = add i64 %i.ad, -1024
  store i64 %i.ah, ptr %i.u, align 8, !tbaa !92
  %i.ai = load i64, ptr %i.k, align 8, !tbaa !89
  br label %luaC_step.exit.i

bb.i:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 128
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !98
  %i.al = udiv i64 %i.ak, 100
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  %i.an = load i32, ptr %i.am, align 8, !tbaa !90
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul i64 %i.al, %i.ao
  br label %luaC_step.exit.i

luaC_step.exit.i:                                 ; preds = %bb.i, %bb.h, %bb.g
  %.sink.i.i = phi i64 [ %i.ag, %bb.g ], [ %i.ai, %bb.h ], [ %i.ap, %bb.i ]
  store i64 %.sink.i.i, ptr %i.m, align 8, !tbaa !96
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !95
  br label %lua_pushlstring.exit

lua_pushlstring.exit:                             ; preds = %bb.b, %luaC_step.exit.i
  %i.aq = phi ptr [ %.val, %bb.b ], [ %.pre, %luaC_step.exit.i ] ; 2 uses
  %i.ar = tail call fastcc ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull @.str.273, i64 noundef 6)
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !81
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i32 4, ptr %i.as, align 8, !tbaa !99
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.au, ptr %i.a, align 8, !tbaa !95
  %i.av = load ptr, ptr @stdin, align 8, !tbaa !110 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !123
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %i.ax = tail call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.274, ptr noundef nonnull %1) ; 0 uses
  %i.ay = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.220) ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !123
  %i.ba = icmp eq ptr %i.ay, null
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @errfile(ptr noundef nonnull %0, ptr noundef nonnull @.str.217, i32 noundef %i.h)
  br label %bb.ah

bb.l:                                             ; preds = %bb.j, %lua_pushlstring.exit
  %i.bb = phi ptr [ %i.ay, %bb.j ], [ %i.av, %lua_pushlstring.exit ] ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bd = tail call i32 @getc(ptr noundef %i.bb)  ; 2 uses
  %i.be = icmp eq i32 %i.bd, 35
  br i1 %i.be, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %4, align 8, !tbaa !122
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %i.bf = tail call i32 @getc(ptr noundef %i.bb)
  switch i32 %i.bf, label %bb.n [
    i32 10, label %bb.o
    i32 -1, label %.thread
  ]

.thread:                                          ; preds = %bb.n
  %6 = icmp ne ptr %1, null
  br label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bg = tail call i32 @getc(ptr noundef %i.bb)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %.0 = phi i32 [ %i.bg, %bb.o ], [ %i.bd, %bb.l ] ; 2 uses
  %i.bh = icmp eq i32 %.0, 27
  %7 = icmp ne ptr %1, null                       ; 2 uses
  %or.cond = and i1 %7, %i.bh
  br i1 %or.cond, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.bi = tail call ptr @freopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.276, ptr noundef %i.bb) #33 ; 4 uses
  store ptr %i.bi, ptr %i.bc, align 8, !tbaa !123
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.r, label %.preheader

bb.r:                                             ; preds = %bb.q
  tail call fastcc void @errfile(ptr noundef nonnull %0, ptr noundef nonnull @.str.277, i32 noundef %i.h)
  br label %bb.ah

.preheader:                                       ; preds = %bb.q, %.preheader
  %i.bk = tail call i32 @getc(ptr noundef nonnull %i.bi) ; 2 uses
  switch i32 %i.bk, label %.preheader [
    i32 -1, label %bb.s
    i32 27, label %bb.s
  ]

bb.s:                                             ; preds = %.preheader, %.preheader
  store i32 0, ptr %4, align 8, !tbaa !122
  br label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s, %bb.p
  %i.bl = phi ptr [ %i.bi, %bb.s ], [ %i.bb, %bb.p ], [ %i.bb, %.thread ]
  %i.bm = phi i1 [ true, %bb.s ], [ %7, %bb.p ], [ %6, %.thread ]
  %.1 = phi i32 [ %i.bk, %bb.s ], [ %.0, %bb.p ], [ -1, %.thread ]
  %i.bn = tail call i32 @ungetc(i32 noundef %.1, ptr noundef %i.bl) ; 0 uses
  %i.bo = tail call fastcc ptr @lua_tolstring(ptr noundef nonnull %0, i32 noundef -1, ptr noundef null) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %.not.i36 = icmp eq ptr %i.bo, null
  %spec.store.select.i = select i1 %.not.i36, ptr @.str.122, ptr %i.bo
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %0, ptr %i.bp, align 8, !tbaa !125
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr @getF, ptr %i.bq, align 8, !tbaa !126
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %4, ptr %i.br, align 8, !tbaa !127
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %3, ptr %2, align 8, !tbaa !130
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr %spec.store.select.i, ptr %i.bs, align 8, !tbaa !131
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.bt, align 8, !tbaa !132
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i64 0, ptr %i.bu, align 8, !tbaa !133
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !69
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !76
  %i.cd = call fastcc i32 @luaD_pcall(ptr noundef nonnull %0, ptr noundef nonnull @f_parser, ptr noundef %2, i64 noundef %i.ca, i64 noundef %i.cc)
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !132
  %i.cf = load i64, ptr %i.bu, align 8, !tbaa !133 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !68 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !78
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !79
  %i.cm = call ptr %i.cj(ptr noundef %i.cl, ptr noundef %i.ce, i64 noundef %i.cf, i64 noundef 0) #33, !inline_history !300 ; 0 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 120 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !89
  %i.cp = sub i64 %i.co, %i.cf
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !89
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.cq = load ptr, ptr %i.bc, align 8, !tbaa !123 ; 2 uses
  %i.cr = call i32 @ferror(ptr noundef %i.cq) #33
  br i1 %i.bm, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cs = call i32 @fclose(ptr noundef %i.cq)     ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.not = icmp eq i32 %i.cr, 0
  br i1 %.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = icmp sgt i32 %i.g, -2
  br i1 %i.ct, label %.preheader.i, label %bb.x

.preheader.i:                                     ; preds = %bb.w
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.cv = zext nneg i32 %i.h to i64
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.cu, i64 %i.cv ; 4 uses
  %i.cx = load ptr, ptr %i.a, align 8, !tbaa !95  ; 2 uses
  %i.cy = icmp ult ptr %i.cx, %i.cw
  br i1 %i.cy, label %.lr.ph.i, label %lua_settop.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.cz = phi ptr [ %i.da, %.lr.ph.i ], [ %i.cx, %.preheader.i ] ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store i32 0, ptr %i.db, align 8, !tbaa !99
  %i.dc = icmp ult ptr %i.da, %i.cw
  br i1 %i.dc, label %.lr.ph.i, label %lua_settop.exit, !llvm.loop !5

bb.x:                                             ; preds = %bb.w
  %i.dd = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.de = sext i32 %i.h to i64
  %i.df = getelementptr [16 x i8], ptr %i.dd, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 16
  br label %lua_settop.exit

lua_settop.exit:                                  ; preds = %.lr.ph.i, %.preheader.i, %bb.x
  %.sink.i = phi ptr [ %i.dg, %bb.x ], [ %i.cw, %.preheader.i ], [ %i.cw, %.lr.ph.i ]
  store ptr %.sink.i, ptr %i.a, align 8, !tbaa !95
  call fastcc void @errfile(ptr noundef nonnull %0, ptr noundef nonnull @.str.205, i32 noundef %i.h)
  br label %bb.ah

bb.y:                                             ; preds = %bb.v
  %i.dh = icmp sgt i32 %i.g, -1
  br i1 %i.dh, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.dj = zext nneg i32 %i.h to i64
  %i.dk = getelementptr [16 x i8], ptr %i.di, i64 %i.dj
  %i.dl = getelementptr i8, ptr %i.dk, i64 -16    ; 2 uses
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !95
  %.not28.i.i = icmp ult ptr %i.dl, %i.dm
  %.luaO_nilobject_.i.i = select i1 %.not28.i.i, ptr %i.dl, ptr @luaO_nilobject_
  br label %index2adr.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.dn = icmp samesign ugt i32 %i.g, -10001
  br i1 %i.dn, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.dp = sext i32 %i.h to i64
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.do, i64 %i.dp
  br label %index2adr.exit.i

bb.ac:                                            ; preds = %bb.aa
  switch i32 %i.h, label %bb.ag [
    i32 -10000, label %bb.ad
    i32 -10001, label %bb.ae
    i32 -10002, label %bb.af
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.dr = load ptr, ptr %i.cg, align 8, !tbaa !68
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 160
  br label %index2adr.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !111
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !117
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !81
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !81
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !81
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 5, ptr %i.eb, align 8, !tbaa !99
  br label %index2adr.exit.i

bb.af:                                            ; preds = %bb.ac
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %index2adr.exit.i

bb.ag:                                            ; preds = %bb.ac
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !111
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !117
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !81 ; 2 uses
  %i.ei = sub nsw i32 -10003, %i.g
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 11
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !81
  %i.el = zext i8 %i.ek to i32
  %.not.i.i = icmp samesign ugt i32 %i.ei, %i.el
  %i.em = getelementptr inbounds nuw i8, ptr %i.eh, i64 40
  %i.en = sub nsw i64 4294957292, %i.f
  %i.eo = and i64 %i.en, 4294967295
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.em, i64 %i.eo
  %i.eq = select i1 %.not.i.i, ptr @luaO_nilobject_, ptr %i.ep
  br label %index2adr.exit.i

index2adr.exit.i:                                 ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ab, %bb.z
  %.1.i.i = phi ptr [ %.luaO_nilobject_.i.i, %bb.z ], [ %i.dq, %bb.ab ], [ %i.eq, %bb.ag ], [ %i.ds, %bb.ad ], [ %i.dy, %bb.ae ], [ %i.ec, %bb.af ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16 ; 2 uses
  %i.es = load ptr, ptr %i.a, align 8, !tbaa !95  ; 2 uses
  %i.et = icmp ult ptr %i.er, %i.es
  br i1 %i.et, label %.lr.ph.i37, label %lua_remove.exit

.lr.ph.i37:                                       ; preds = %index2adr.exit.i, %.lr.ph.i37
  %i.eu = phi ptr [ %i.ez, %.lr.ph.i37 ], [ %i.er, %index2adr.exit.i ] ; 3 uses
  %.013.i = phi ptr [ %i.eu, %.lr.ph.i37 ], [ %.1.i.i, %index2adr.exit.i ] ; 3 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !81
  store i64 %i.ev, ptr %.013.i, align 8, !tbaa !81
  %i.ew = getelementptr inbounds nuw i8, ptr %.013.i, i64 24
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !99
  %i.ey = getelementptr inbounds nuw i8, ptr %.013.i, i64 8
  store i32 %i.ex, ptr %i.ey, align 8, !tbaa !99
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 16 ; 2 uses
  %i.fa = load ptr, ptr %i.a, align 8, !tbaa !95  ; 2 uses
  %i.fb = icmp ult ptr %i.ez, %i.fa
  br i1 %i.fb, label %.lr.ph.i37, label %lua_remove.exit, !llvm.loop !4

lua_remove.exit:                                  ; preds = %.lr.ph.i37, %index2adr.exit.i
  %.lcssa.i = phi ptr [ %i.es, %index2adr.exit.i ], [ %i.fa, %.lr.ph.i37 ]
  %i.fc = getelementptr inbounds i8, ptr %.lcssa.i, i64 -16
  store ptr %i.fc, ptr %i.a, align 8, !tbaa !95
  br label %bb.ah

bb.ah:                                            ; preds = %lua_remove.exit, %lua_settop.exit, %bb.r, %bb.k
  %.030 = phi i32 [ 6, %bb.r ], [ 6, %lua_settop.exit ], [ %i.cd, %lua_remove.exit ], [ 6, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  ret i32 %.030
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lua_tolstring(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
end_hunk_0
begin_hunk_1_@luaB_next:bb.a
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %bb.m, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !81
  store i64 %i.fr, ptr %i.o, align 8, !tbaa !81
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fm, i64 24
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !99
  store i32 %i.ft, ptr %i.p, align 8, !tbaa !99
  %i.fu = load ptr, ptr %i.fh, align 8, !tbaa !103
  %i.fv = getelementptr inbounds nuw [40 x i8], ptr %i.fu, i64 %indvars.iv70.i.i
  br label %lua_next.exit

lua_next.exit:                                    ; preds = %bb.l, %bb.o
  %storemerge12.in.i = phi ptr [ %i.ey, %bb.l ], [ %i.fv, %bb.o ] ; 2 uses
  %storemerge12.i = load i64, ptr %storemerge12.in.i, align 8, !tbaa !81
  store i64 %storemerge12.i, ptr %i.h, align 8, !tbaa !81
  %i.fw = getelementptr inbounds nuw i8, ptr %storemerge12.in.i, i64 8
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !99
  %i.fy = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.fx, ptr %i.fy, align 8, !tbaa !99
  %i.fz = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  br label %bb.p

.loopexit:                                        ; preds = %bb.m, %._crit_edge
  store i32 0, ptr %i.p, align 8, !tbaa !99
  br label %bb.p

bb.p:                                             ; preds = %lua_next.exit, %.loopexit
  %storemerge = phi ptr [ %i.h, %.loopexit ], [ %i.ga, %lua_next.exit ]
  %.0 = phi i32 [ 1, %.loopexit ], [ 2, %lua_next.exit ]
  store ptr %storemerge, ptr %i.c, align 8, !tbaa !95
  ret i32 %.0
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @lua_setmetatable(ptr nofree noundef captures(none) %0, i32 noundef range(i32 -2, 3) %1) unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr [16 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 -16      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !95   ; 2 uses
  %.not28.i = icmp ult ptr %i.f, %i.h
  %.luaO_nilobject_.i = select i1 %.not28.i, ptr %i.f, ptr @luaO_nilobject_
  br label %index2adr.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !95   ; 2 uses
  %i.k = sext i32 %1 to i64
  %i.l = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.k
  br label %index2adr.exit

index2adr.exit:                                   ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %i.h, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %.1.i = phi ptr [ %.luaO_nilobject_.i, %bb.b ], [ %i.l, %bb.c ] ; 5 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !99
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %index2adr.exit
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 -16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81
  br label %bb.e

bb.e:                                             ; preds = %index2adr.exit, %bb.d
  %.0 = phi ptr [ %i.r, %bb.d ], [ null, %index2adr.exit ] ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !99   ; 2 uses
  switch i32 %i.t, label %bb.p [
    i32 5, label %bb.f
    i32 7, label %bb.j
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %.1.i, align 8, !tbaa !81
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %.0, ptr %i.v, align 8, !tbaa !81
  %.not25 = icmp eq ptr %.0, null
  br i1 %.not25, label %luaC_barrierf.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 9
  %i.x = load i8, ptr %i.w, align 1, !tbaa !81
  %i.y = and i8 %i.x, 3
  %.not26 = icmp eq i8 %i.y, 0
  br i1 %.not26, label %luaC_barrierf.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %.1.i, align 8, !tbaa !81  ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 9 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !81  ; 2 uses
  %i.ac = and i8 %i.ab, 4
  %.not27 = icmp eq i8 %i.ac, 0
  br i1 %.not27, label %luaC_barrierf.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.ad, align 8, !tbaa !68
  %i.ae = and i8 %i.ab, -5
  store i8 %i.ae, ptr %i.aa, align 1, !tbaa !81
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 64 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !104
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !105
  store ptr %i.z, ptr %i.af, align 8, !tbaa !104
  br label %luaC_barrierf.exit

bb.j:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %.1.i, align 8, !tbaa !81
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %.0, ptr %i.aj, align 8, !tbaa !81
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %luaC_barrierf.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %.0, i64 9
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !81
  %i.am = and i8 %i.al, 3
  %.not23 = icmp eq i8 %i.am, 0
  br i1 %.not23, label %luaC_barrierf.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %.1.i, align 8, !tbaa !81
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 9 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !81  ; 2 uses
  %i.aq = and i8 %i.ap, 4
  %.not24 = icmp eq i8 %i.aq, 0
  br i1 %.not24, label %luaC_barrierf.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr i8, ptr %0, i64 32
  %.val28 = load ptr, ptr %i.ar, align 8, !tbaa !68 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val28, i64 33
  %i.at = load i8, ptr %i.as, align 1, !tbaa !85
  %i.au = icmp eq i8 %i.at, 1
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @reallymarkobject(ptr noundef nonnull %.val28, ptr noundef nonnull %.0)
  br label %luaC_barrierf.exit

bb.o:                                             ; preds = %bb.m
  %i.av = and i8 %i.ap, -8
  %i.aw = getelementptr inbounds nuw i8, ptr %.val28, i64 32
  %i.ax = load i8, ptr %i.aw, align 8, !tbaa !67
  %i.ay = and i8 %i.ax, 3
  %i.az = or disjoint i8 %i.ay, %i.av
  store i8 %i.az, ptr %i.ao, align 1, !tbaa !81
  br label %luaC_barrierf.exit

bb.p:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !68
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 224
  %i.bd = sext i32 %i.t to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.bc, i64 %i.bd
  store ptr %.0, ptr %i.be, align 8, !tbaa !94
  br label %luaC_barrierf.exit

luaC_barrierf.exit:                               ; preds = %bb.o, %bb.n, %bb.j, %bb.l, %bb.k, %bb.f, %bb.i, %bb.h, %bb.g, %bb.p
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !95
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -16
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !95
  ret void
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @luaB_newproxy(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !114  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !95   ; 2 uses
  %i.f = icmp ult ptr %i.e, %i.d
  br i1 %i.f, label %.lr.ph.i, label %lua_settop.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.g = phi ptr [ %i.h, %.lr.ph.i ], [ %i.e, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i32 0, ptr %i.i, align 8, !tbaa !99
  %i.j = icmp ult ptr %i.g, %i.c
  br i1 %i.j, label %.lr.ph.i, label %lua_settop.exit, !llvm.loop !5

lua_settop.exit:                                  ; preds = %.lr.ph.i, %bb.a
  store ptr %i.d, ptr %i.a, align 8, !tbaa !95
  %i.k = tail call fastcc ptr @lua_newuserdata(ptr noundef nonnull %0, i64 noundef 0) ; 0 uses
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !114  ; 6 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !95   ; 5 uses
  %.not28.i.i = icmp uge ptr %i.l, %i.m           ; 2 uses
  %.luaO_nilobject_.i.i = select i1 %.not28.i.i, ptr @luaO_nilobject_, ptr %i.l ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.luaO_nilobject_.i.i, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !99
  switch i32 %i.o, label %lua_toboolean.exit.thread35 [
    i32 0, label %lua_toboolean.exit.thread
    i32 1, label %lua_toboolean.exit
  ]

lua_toboolean.exit:                               ; preds = %lua_settop.exit
  %i.p = load i32, ptr %.luaO_nilobject_.i.i, align 8, !tbaa !81
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %lua_toboolean.exit.thread, label %lua_toboolean.exit.thread35

lua_toboolean.exit.thread35:                      ; preds = %lua_settop.exit, %lua_toboolean.exit
  %i.q = icmp eq ptr %i.l, @luaO_nilobject_
  %or.cond = or i1 %i.q, %.not28.i.i
  br i1 %or.cond, label %lua_type.exit.thread, label %lua_type.exit

lua_type.exit:                                    ; preds = %lua_toboolean.exit.thread35
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.s = load i32, ptr %i.r, align 8, !tbaa !99
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.b, label %lua_type.exit.thread

bb.b:                                             ; preds = %lua_type.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !68   ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !89   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 112 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !96   ; 2 uses
  %.not.i = icmp ult i64 %i.x, %i.z
  br i1 %.not.i, label %lua_createtable.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 148
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !91
  %i.ac = mul i32 %i.ab, 10                       ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %spec.store.select.i.i = select i1 %i.ae, i64 9223372036854775806, i64 %i.ad
  %i.af = sub nuw i64 %i.x, %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 136 ; 4 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !92
  %i.ai = add i64 %i.af, %i.ah
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !92
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 33
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i64 [ %spec.store.select.i.i, %bb.c ], [ %i.al, %bb.d ]
  %i.ak = tail call fastcc i64 @singlestep(ptr noundef nonnull %0), !inline_history !0
  %i.al = sub nsw i64 %.0.i.i, %i.ak              ; 2 uses
  %i.am = load i8, ptr %i.aj, align 1, !tbaa !85
  %i.an = icmp ne i8 %i.am, 0                     ; 2 uses
  %i.ao = icmp sgt i64 %i.al, 0
  %or.cond.i.i = select i1 %i.an, i1 %i.ao, i1 false
  br i1 %or.cond.i.i, label %bb.d, label %bb.e, !llvm.loop !1

bb.e:                                             ; preds = %bb.d
  br i1 %i.an, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ap = load i64, ptr %i.ag, align 8, !tbaa !92 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 1024
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = load i64, ptr %i.w, align 8, !tbaa !89
  %i.as = add i64 %i.ar, 1024
  br label %luaC_step.exit.i

bb.h:                                             ; preds = %bb.f
  %i.at = add i64 %i.ap, -1024
  store i64 %i.at, ptr %i.ag, align 8, !tbaa !92
  %i.au = load i64, ptr %i.w, align 8, !tbaa !89
  br label %luaC_step.exit.i

bb.i:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !98
  %i.ax = udiv i64 %i.aw, 100
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !90
  %i.ba = sext i32 %i.az to i64
  %i.bb = mul i64 %i.ax, %i.ba
  br label %luaC_step.exit.i

luaC_step.exit.i:                                 ; preds = %bb.i, %bb.h, %bb.g
  %.sink.i.i = phi i64 [ %i.as, %bb.g ], [ %i.au, %bb.h ], [ %i.bb, %bb.i ]
  store i64 %.sink.i.i, ptr %i.y, align 8, !tbaa !96
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !95
  br label %lua_createtable.exit

lua_createtable.exit:                             ; preds = %bb.b, %luaC_step.exit.i
  %i.bc = phi ptr [ %i.m, %bb.b ], [ %.pre, %luaC_step.exit.i ] ; 2 uses
  %i.bd = tail call fastcc ptr @luaH_new(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0)
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !81
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 5, ptr %i.be, align 8, !tbaa !99
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !95  ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !95
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !81
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !81
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !99
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !99
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !95  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 2 uses
  store ptr %i.bm, ptr %i.a, align 8, !tbaa !95
  store i32 1, ptr %i.bm, align 8, !tbaa !81
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store i32 1, ptr %i.bn, align 8, !tbaa !99
  %i.bo = load ptr, ptr %i.a, align 8, !tbaa !95  ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !95
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !111
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !117
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !81 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 11
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !81
  %.not.i.i = icmp eq i8 %i.bw, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %i.by = select i1 %.not.i.i, ptr @luaO_nilobject_, ptr %i.bx ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !81 ; 3 uses
  %i.ca = getelementptr inbounds i8, ptr %i.bo, i64 -16 ; 3 uses
  %i.cb = tail call fastcc ptr @luaH_get(ptr noundef %i.bz, ptr noundef nonnull readonly %i.ca), !inline_history !21 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 10
  store i8 0, ptr %i.cc, align 2, !tbaa !147
  %.not.i16.i = icmp eq ptr %i.cb, @luaO_nilobject_
  br i1 %.not.i16.i, label %bb.j, label %luaH_set.exit.i

bb.j:                                             ; preds = %lua_createtable.exit
  %i.cd = getelementptr inbounds i8, ptr %i.bo, i64 -8
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !99
  switch i32 %i.ce, label %bb.n [
    i32 0, label %bb.k
    i32 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.40), !inline_history !21
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.cf = load double, ptr %i.ca, align 8, !tbaa !81
  %i.cg = fcmp ord double %i.cf, 0.000000e+00
  br i1 %i.cg, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.41), !inline_history !21
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.j
  %i.ch = tail call fastcc ptr @newkey(ptr noundef nonnull %0, ptr noundef nonnull %i.bz, ptr noundef nonnull readonly %i.ca), !inline_history !21
  br label %luaH_set.exit.i

luaH_set.exit.i:                                  ; preds = %bb.n, %lua_createtable.exit
  %.0.i.i20 = phi ptr [ %i.ch, %bb.n ], [ %i.cb, %lua_createtable.exit ] ; 2 uses
  %i.ci = load i64, ptr %i.bo, align 8, !tbaa !81
  store i64 %i.ci, ptr %.0.i.i20, align 8, !tbaa !81
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !99
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.i.i20, i64 8
  store i32 %i.ck, ptr %i.cl, align 8, !tbaa !99
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !95  ; 5 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 -8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !99
  %i.cp = icmp sgt i32 %i.co, 3
  br i1 %i.cp, label %bb.o, label %lua_rawset.exit

bb.o:                                             ; preds = %luaH_set.exit.i
  %i.cq = getelementptr inbounds i8, ptr %i.cm, i64 -16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !81
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 9
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !81
  %i.cu = and i8 %i.ct, 3
  %.not.i21 = icmp eq i8 %i.cu, 0
  br i1 %.not.i21, label %lua_rawset.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = load ptr, ptr %i.by, align 8, !tbaa !81 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 9 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !81  ; 2 uses
  %i.cy = and i8 %i.cx, 4
  %.not15.i = icmp eq i8 %i.cy, 0
  br i1 %.not15.i, label %lua_rawset.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %.val.i = load ptr, ptr %i.u, align 8, !tbaa !68
  %i.cz = and i8 %i.cx, -5
  store i8 %i.cz, ptr %i.cw, align 1, !tbaa !81
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i, i64 64 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !104
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cv, i64 48
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !105
  store ptr %i.cv, ptr %i.da, align 8, !tbaa !104
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !95
  br label %lua_rawset.exit

lua_rawset.exit:                                  ; preds = %luaH_set.exit.i, %bb.o, %bb.p, %bb.q
  %i.dd = phi ptr [ %.pre.i, %bb.q ], [ %i.cm, %bb.p ], [ %i.cm, %bb.o ], [ %i.cm, %luaH_set.exit.i ]
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -32
  br label %lua_getmetatable.exit34.sink.split

lua_type.exit.thread:                             ; preds = %lua_toboolean.exit.thread35, %lua_type.exit
  %.not28.i.i22 = icmp ult ptr %i.l, %i.m
  %.luaO_nilobject_.i.i23 = select i1 %.not28.i.i22, ptr %i.l, ptr @luaO_nilobject_ ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.luaO_nilobject_.i.i23, i64 8
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !99 ; 2 uses
  switch i32 %i.dg, label %bb.t [
    i32 5, label %bb.r
    i32 7, label %bb.s
  ]

bb.r:                                             ; preds = %lua_type.exit.thread
  %i.dh = load ptr, ptr %.luaO_nilobject_.i.i23, align 8, !tbaa !81
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  br label %bb.u

bb.s:                                             ; preds = %lua_type.exit.thread
  %i.dj = load ptr, ptr %.luaO_nilobject_.i.i23, align 8, !tbaa !81
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  br label %bb.u

bb.t:                                             ; preds = %lua_type.exit.thread
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !68
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 224
  %i.do = sext i32 %i.dg to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.dn, i64 %i.do
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.013.in.i = phi ptr [ %i.dp, %bb.t ], [ %i.di, %bb.r ], [ %i.dk, %bb.s ]
  %.013.i = load ptr, ptr %.013.in.i, align 8, !tbaa !81 ; 2 uses
  %i.dq = icmp eq ptr %.013.i, null
  br i1 %i.dq, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  store ptr %.013.i, ptr %i.m, align 8, !tbaa !81
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 5, ptr %i.dr, align 8, !tbaa !99
  %i.ds = load ptr, ptr %i.a, align 8, !tbaa !95  ; 4 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store ptr %i.dt, ptr %i.a, align 8, !tbaa !95
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !111
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !117
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !81 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 11
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !81
  %.not.i.i24 = icmp eq i8 %i.ea, 0
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 40
  %i.ec = select i1 %.not.i.i24, ptr @luaO_nilobject_, ptr %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !81
  %i.ee = tail call fastcc ptr @luaH_get(ptr noundef %i.ed, ptr noundef nonnull %i.ds) ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !81
  store i64 %i.ef, ptr %i.ds, align 8, !tbaa !81
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eh = load i32, ptr %i.eg, align 8, !tbaa !99
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i32 %i.eh, ptr %i.ei, align 8, !tbaa !99
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !95  ; 3 uses
  %i.ek = getelementptr inbounds i8, ptr %i.ej, i64 -8
  %i.el = load i32, ptr %i.ek, align 8, !tbaa !99
  %i.em = getelementptr i8, ptr %i.ej, i64 -16    ; 6 uses
  switch i32 %i.el, label %lua_toboolean.exit28.thread38 [
    i32 0, label %lua_toboolean.exit28.thread
    i32 1, label %lua_toboolean.exit28
  ]

lua_toboolean.exit28.thread:                      ; preds = %bb.v
  store ptr %i.em, ptr %i.a, align 8, !tbaa !95
  br label %.critedge

lua_toboolean.exit28.thread38:                    ; preds = %bb.v
  store ptr %i.em, ptr %i.a, align 8, !tbaa !95
  br label %bb.w

lua_toboolean.exit28:                             ; preds = %bb.v
  %i.en = load i32, ptr %i.em, align 8, !tbaa !81
  %.not39 = icmp eq i32 %i.en, 0
  store ptr %i.em, ptr %i.a, align 8, !tbaa !95
  br i1 %.not39, label %.critedge, label %bb.w

.critedge:                                        ; preds = %bb.u, %lua_toboolean.exit28.thread, %lua_toboolean.exit28
  tail call fastcc void @luaL_argerror(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.188)
  unreachable

bb.w:                                             ; preds = %lua_toboolean.exit28.thread38, %lua_toboolean.exit28
  %i.eo = load ptr, ptr %i.b, align 8, !tbaa !114 ; 2 uses
  %.not28.i.i29 = icmp ult ptr %i.eo, %i.em
  %.luaO_nilobject_.i.i30 = select i1 %.not28.i.i29, ptr %i.eo, ptr @luaO_nilobject_ ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.luaO_nilobject_.i.i30, i64 8
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !99 ; 2 uses
  switch i32 %i.eq, label %bb.z [
    i32 5, label %bb.x
    i32 7, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.er = load ptr, ptr %.luaO_nilobject_.i.i30, align 8, !tbaa !81
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 16
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.et = load ptr, ptr %.luaO_nilobject_.i.i30, align 8, !tbaa !81
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !68
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 224
  %i.ey = sext i32 %i.eq to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.ey
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.013.in.i31 = phi ptr [ %i.ez, %bb.z ], [ %i.es, %bb.x ], [ %i.eu, %bb.y ]
  %.013.i32 = load ptr, ptr %.013.in.i31, align 8, !tbaa !81 ; 2 uses
  %i.fa = icmp eq ptr %.013.i32, null
  br i1 %i.fa, label %lua_getmetatable.exit34, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %.013.i32, ptr %i.em, align 8, !tbaa !81
  %i.fb = getelementptr i8, ptr %i.ej, i64 -8
  store i32 5, ptr %i.fb, align 8, !tbaa !99
  %i.fc = load ptr, ptr %i.a, align 8, !tbaa !95
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  br label %lua_getmetatable.exit34.sink.split

lua_getmetatable.exit34.sink.split:               ; preds = %lua_rawset.exit, %bb.ab
  %.sink = phi ptr [ %i.fd, %bb.ab ], [ %i.de, %lua_rawset.exit ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !95
  br label %lua_getmetatable.exit34

lua_getmetatable.exit34:                          ; preds = %lua_getmetatable.exit34.sink.split, %bb.aa
  tail call fastcc void @lua_setmetatable(ptr noundef nonnull %0, i32 noundef 2)
  br label %lua_toboolean.exit.thread

lua_toboolean.exit.thread:                        ; preds = %lua_settop.exit, %lua_toboolean.exit, %lua_getmetatable.exit34
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @luaB_assert(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95   ; 3 uses
  %.not28.i.i.i = icmp uge ptr %i.b, %i.d
  %i.e = icmp eq ptr %i.b, @luaO_nilobject_
  %or.cond.i = or i1 %i.e, %.not28.i.i.i
  br i1 %or.cond.i, label %lua_type.exit.thread.i, label %lua_type.exit.i

lua_type.exit.i:                                  ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !99
  switch i32 %i.g, label %lua_toboolean.exit.thread11 [
    i32 -1, label %lua_type.exit.thread.i
    i32 0, label %lua_toboolean.exit.thread
    i32 1, label %lua_toboolean.exit
  ]

lua_type.exit.thread.i:                           ; preds = %lua_type.exit.i, %bb.a
  tail call fastcc void @luaL_argerror(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull @.str.117)
  unreachable

lua_toboolean.exit:                               ; preds = %lua_type.exit.i
  %i.h = load i32, ptr %i.b, align 8, !tbaa !81
  %.not13 = icmp eq i32 %i.h, 0
  br i1 %.not13, label %lua_toboolean.exit.thread, label %lua_toboolean.exit.thread11

lua_toboolean.exit.thread:                        ; preds = %lua_type.exit.i, %lua_toboolean.exit
  %i.i = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %.not28.i.i.i6 = icmp uge ptr %i.i, %i.d
  %i.j = icmp eq ptr %i.i, @luaO_nilobject_
  %or.cond.i7 = or i1 %.not28.i.i.i6, %i.j
  br i1 %or.cond.i7, label %luaL_optlstring.exit, label %lua_type.exit.i8

lua_type.exit.i8:                                 ; preds = %lua_toboolean.exit.thread
  %i.k = getelementptr i8, ptr %i.b, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !99
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %luaL_optlstring.exit, label %bb.b

bb.b:                                             ; preds = %lua_type.exit.i8
  %i.n = tail call fastcc ptr @lua_tolstring(ptr noundef nonnull %0, i32 noundef 2, ptr noundef null) ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.c, label %luaL_optlstring.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @luaL_typerror(ptr noundef nonnull %0, i32 noundef 2, ptr noundef nonnull @.str.26)
  unreachable

luaL_optlstring.exit:                             ; preds = %lua_toboolean.exit.thread, %lua_type.exit.i8, %bb.b
  %.0.i = phi ptr [ %i.n, %bb.b ], [ @.str.116, %lua_type.exit.i8 ], [ @.str.116, %lua_toboolean.exit.thread ]
  tail call void (ptr, ptr, ...) @luaL_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.115, ptr noundef nonnull %.0.i)
  unreachable

lua_toboolean.exit.thread11:                      ; preds = %lua_type.exit.i, %lua_toboolean.exit
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = ptrtoint ptr %i.b to i64
  %i.q = sub i64 %i.o, %i.p
end_hunk_1
begin_hunk_2_@g_read:bb.a
  %i.cc = add i64 %i.cb, 1024
  br label %luaC_step.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.cd = add i64 %i.bz, -1024
  store i64 %i.cd, ptr %i.bq, align 8, !tbaa !92
  %i.ce = load i64, ptr %i.bg, align 8, !tbaa !89
  br label %luaC_step.exit.i.i

bb.s:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bf, i64 128
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !98
  %i.ch = udiv i64 %i.cg, 100
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !90
  %i.ck = sext i32 %i.cj to i64
  %i.cl = mul i64 %i.ch, %i.ck
  br label %luaC_step.exit.i.i

luaC_step.exit.i.i:                               ; preds = %bb.s, %bb.r, %bb.q
  %.sink.i.i.i61 = phi i64 [ %i.cc, %bb.q ], [ %i.ce, %bb.r ], [ %i.cl, %bb.s ]
  store i64 %.sink.i.i.i61, ptr %i.bi, align 8, !tbaa !96
  br label %test_eof.exit

test_eof.exit:                                    ; preds = %bb.l, %luaC_step.exit.i.i
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  %i.cn = call fastcc ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef null, i64 noundef 0)
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !81
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i32 4, ptr %i.co, align 8, !tbaa !99
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store ptr %i.cq, ptr %i.b, align 8, !tbaa !95
  %i.cr = icmp ne i32 %i.bd, -1
  %i.cs = zext i1 %i.cr to i32
  br label %bb.ac

bb.t:                                             ; preds = %bb.k
  %i.ct = call fastcc i32 @read_chars(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %i.bb)
  br label %bb.ac

lua_type.exit.thread:                             ; preds = %bb.j, %lua_type.exit
  %i.cu = trunc nuw nsw i64 %indvars.iv to i32    ; 3 uses
  %i.cv = call fastcc ptr @lua_tolstring(ptr noundef nonnull %0, i32 noundef %i.cu, ptr noundef null) ; 3 uses
  %.not = icmp eq ptr %i.cv, null
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %lua_type.exit.thread
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !81
  %i.cx = icmp eq i8 %i.cw, 42
  br i1 %i.cx, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %lua_type.exit.thread
  call fastcc void @luaL_argerror(ptr noundef nonnull %0, i32 noundef %i.cu, ptr noundef nonnull @.str.212)
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !81
  switch i8 %i.cz, label %.critedge [
    i8 110, label %bb.x
    i8 108, label %bb.aa
    i8 97, label %bb.ab
  ]

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.da = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef nonnull @.str.214, ptr noundef nonnull %i.a) #33
  %i.db = icmp eq i32 %i.da, 1
  br i1 %i.db, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dc = load double, ptr %i.a, align 8, !tbaa !165
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  store double %i.dc, ptr %i.dd, align 8, !tbaa !81
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  store i32 3, ptr %i.de, align 8, !tbaa !99
  %i.df = load ptr, ptr %i.b, align 8, !tbaa !95
  br label %read_number.exit

bb.z:                                             ; preds = %bb.x
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store i32 0, ptr %i.dh, align 8, !tbaa !99
  br label %read_number.exit

read_number.exit:                                 ; preds = %bb.y, %bb.z
  %.pn = phi ptr [ %i.dg, %bb.z ], [ %i.df, %bb.y ]
  %.0.i = phi i32 [ 0, %bb.z ], [ 1, %bb.y ]
  %storemerge = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  store ptr %storemerge, ptr %i.b, align 8, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.ac

bb.aa:                                            ; preds = %bb.w
  %i.di = call fastcc i32 @read_line(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.w
  %i.dj = call fastcc i32 @read_chars(ptr noundef nonnull %0, ptr noundef %1, i64 noundef -1) ; 0 uses
  br label %bb.ac

.critedge:                                        ; preds = %bb.w
  call fastcc void @luaL_argerror(ptr noundef nonnull %0, i32 noundef %i.cu, ptr noundef nonnull @.str.213)
  unreachable

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %read_number.exit, %test_eof.exit, %bb.t
  %.3 = phi i32 [ %i.ct, %bb.t ], [ %i.cs, %test_eof.exit ], [ 1, %bb.ab ], [ %.0.i, %read_number.exit ], [ %i.di, %bb.aa ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dk = add nsw i32 %i.ar, -1
  %i.dl = icmp ne i32 %i.ar, 0
  %i.dm = icmp ne i32 %.3, 0
  %i.dn = select i1 %i.dl, i1 %i.dm, i1 false
  br i1 %i.dn, label %bb.j, label %.loopexit.loopexit, !llvm.loop !540

.loopexit.loopexit:                               ; preds = %bb.ac
  %i.do = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.b
  %.4 = phi i32 [ %i.j, %bb.b ], [ %.3, %.loopexit.loopexit ]
  %.1 = phi i32 [ %i.k, %bb.b ], [ %i.do, %.loopexit.loopexit ]
  %i.dp = call i32 @ferror(ptr noundef %1) #33
  %.not56 = icmp eq i32 %i.dp, 0
  br i1 %.not56, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  %i.dq = tail call ptr @__errno_location() #40
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !162 ; 2 uses
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  store i32 0, ptr %i.dt, align 8, !tbaa !99
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store ptr %i.du, ptr %i.b, align 8, !tbaa !95
  %i.dv = call ptr @strerror(i32 noundef %i.dr) #33
  %i.dw = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.115, ptr noundef %i.dv) ; 0 uses
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  %i.dy = sitofp i32 %i.dr to double
  store double %i.dy, ptr %i.dx, align 8, !tbaa !81
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i32 3, ptr %i.dz, align 8, !tbaa !99
  %i.ea = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr %i.eb, ptr %i.b, align 8, !tbaa !95
  br label %bb.ah

bb.ae:                                            ; preds = %.loopexit
  %.not57 = icmp eq i32 %.4, 0
  br i1 %.not57, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ec = load ptr, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  %i.ed = getelementptr i8, ptr %i.ec, i64 -8
  store i32 0, ptr %i.ed, align 8, !tbaa !99
  store ptr %i.ec, ptr %i.b, align 8, !tbaa !95
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ee = sub nsw i32 %.1, %2
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %.352 = phi i32 [ 3, %bb.ad ], [ %i.ee, %bb.ag ]
  ret i32 %.352
}

; Function Attrs: nofree nounwind
declare void @clearerr(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @read_chars(ptr noundef %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 1, 0) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %3 = alloca %struct.luaL_Buffer, align 8        ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %0, ptr %i.b, align 8, !tbaa !275
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr %i.c, ptr %3, align 8, !tbaa !276
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !277
  br label %bb.b

bb.b:                                             ; preds = %luaL_prepbuffer.exit, %bb.a
  %.014 = phi i64 [ %2, %bb.a ], [ %i.i, %luaL_prepbuffer.exit ] ; 2 uses
  %.0 = phi i64 [ 8192, %bb.a ], [ %spec.select, %luaL_prepbuffer.exit ]
  %i.e = call fastcc i32 @emptybuffer(ptr noundef nonnull %3)
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %luaL_prepbuffer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call fastcc void @adjuststack(ptr noundef nonnull %3)
  br label %luaL_prepbuffer.exit

luaL_prepbuffer.exit:                             ; preds = %bb.b, %bb.c
  %spec.select = call i64 @llvm.umin.i64(i64 %.0, i64 %.014) ; 3 uses
  %i.f = call i64 @fread(ptr noundef nonnull %i.c, i64 noundef 1, i64 noundef %spec.select, ptr noundef %1) ; 3 uses
  %i.g = load ptr, ptr %3, align 8, !tbaa !276
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  store ptr %i.h, ptr %3, align 8, !tbaa !276
  %i.i = sub i64 %.014, %i.f                      ; 3 uses
  %i.j = icmp ne i64 %i.i, 0
  %i.k = icmp eq i64 %i.f, %spec.select
  %i.l = and i1 %i.k, %i.j
  br i1 %i.l, label %bb.b, label %bb.d, !llvm.loop !541

bb.d:                                             ; preds = %luaL_prepbuffer.exit
  %i.m = call fastcc i32 @emptybuffer(ptr noundef nonnull %3) ; 0 uses
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !275
  %i.o = load i32, ptr %i.d, align 8, !tbaa !277
  call fastcc void @lua_concat(ptr noundef %i.n, i32 noundef %i.o)
  store i32 1, ptr %i.d, align 8, !tbaa !277
  %4 = icmp eq i64 %i.i, 0
  br i1 %4, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !95   ; 2 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -16 ; 5 uses
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 -8 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !99
  switch i32 %i.t, label %lua_objlen.exit [
    i32 4, label %bb.f
    i32 7, label %bb.g
    i32 5, label %bb.h
    i32 3, label %bb.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !81
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !81
  br label %lua_objlen.exit

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !81
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load i64, ptr %i.y, align 8, !tbaa !81
  br label %lua_objlen.exit

bb.h:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !81
  %i.ab = call fastcc i32 @luaH_getn(ptr noundef %i.aa)
  %i.ac = sext i32 %i.ab to i64
  br label %lua_objlen.exit

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.ad = load double, ptr %i.r, align 8, !tbaa !81
  %i.ae = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %i.ad) #33, !inline_history !6 ; 0 uses
  %i.af = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #35, !inline_history !6
  %i.ag = call fastcc ptr @luaS_newlstr(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i64 noundef %i.af), !inline_history !6 ; 2 uses
  store ptr %i.ag, ptr %i.r, align 8, !tbaa !81
  store i32 4, ptr %i.s, align 8, !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !81
  br label %lua_objlen.exit

lua_objlen.exit:                                  ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ 0, %bb.e ], [ %i.w, %bb.f ], [ %i.z, %bb.g ], [ %i.ac, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp ne i64 %.0.i, 0
  %i.ak = zext i1 %i.aj to i32
  br label %bb.j

bb.j:                                             ; preds = %lua_objlen.exit, %bb.d
  %i.al = phi i32 [ 1, %bb.d ], [ %i.ak, %lua_objlen.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret i32 %i.al
}

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @ungetc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #27

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 1, 4) i32 @g_write(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef range(i32 1, 3) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 8 uses
  %.val = load ptr, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %.val19 = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.d = ptrtoint ptr %.val to i64
  %i.e = ptrtoint ptr %.val19 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4
  %i.h = trunc i64 %i.g to i32
  %.01523 = add nsw i32 %i.h, -1                  ; 2 uses
  %.not24 = icmp eq i32 %.01523, 0
  br i1 %.not24, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.i = zext nneg i32 %2 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.backedge, %.lr.ph.preheader
  %indvars.iv = phi i64 [ %i.i, %.lr.ph.preheader ], [ %indvars.iv.be, %.lr.ph.backedge ] ; 4 uses
  %.01527 = phi i32 [ %.01523, %.lr.ph.preheader ], [ %.01527.be, %.lr.ph.backedge ] ; 2 uses
  %.026 = phi i32 [ 1, %.lr.ph.preheader ], [ %.026.be, %.lr.ph.backedge ] ; 2 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.k = getelementptr [16 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 -16      ; 2 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !95
  %.not28.i.i = icmp uge ptr %i.l, %i.m
  %i.n = icmp eq ptr %i.l, @luaO_nilobject_
  %or.cond = or i1 %.not28.i.i, %i.n
  br i1 %or.cond, label %lua_type.exit.thread, label %lua_type.exit

lua_type.exit:                                    ; preds = %.lr.ph
  %i.o = getelementptr i8, ptr %i.k, i64 -8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !99
  %i.q = icmp eq i32 %i.p, 3
  br i1 %i.q, label %bb.b, label %lua_type.exit.thread

bb.b:                                             ; preds = %lua_type.exit
  %.not18 = icmp eq i32 %.026, 0
  br i1 %.not18, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  %i.s = call fastcc double @lua_tonumber(ptr noundef %0, i32 noundef %i.r)
  %i.t = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.16, double noundef %i.s) #33
  %i.u = icmp sgt i32 %i.t, 0
  %i.v = zext i1 %i.u to i32
  br label %bb.g

lua_type.exit.thread:                             ; preds = %.lr.ph, %lua_type.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.w = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.x = call fastcc ptr @lua_tolstring(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.d, label %luaL_checklstring.exit

bb.d:                                             ; preds = %lua_type.exit.thread
  call fastcc void @luaL_typerror(ptr noundef %0, i32 noundef %i.w, ptr noundef nonnull @.str.26)
  unreachable

luaL_checklstring.exit:                           ; preds = %lua_type.exit.thread
  %.not17 = icmp eq i32 %.026, 0
  br i1 %.not17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %luaL_checklstring.exit
  %i.y = load i64, ptr %i.a, align 8, !tbaa !134  ; 2 uses
  %i.z = call i64 @fwrite(ptr noundef nonnull %i.x, i64 noundef 1, i64 noundef %i.y, ptr noundef %1)
  %i.aa = icmp eq i64 %i.z, %i.y
  %i.ab = zext i1 %i.aa to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %luaL_checklstring.exit
  %i.ac = phi i32 [ 0, %luaL_checklstring.exit ], [ %i.ab, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %.1 = phi i32 [ %i.ac, %bb.f ], [ %i.v, %bb.c ] ; 2 uses
  %.015 = add nsw i32 %.01527, -1                 ; 2 uses
  %.not = icmp eq i32 %.015, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.g, %.thread
  %.01527.be = phi i32 [ %.015, %bb.g ], [ %.01533, %.thread ]
  %.026.be = phi i32 [ %.1, %bb.g ], [ 0, %.thread ]
  %indvars.iv.be = add nuw nsw i64 %indvars.iv, 1
  br label %.lr.ph, !llvm.loop !542

.thread:                                          ; preds = %bb.b
  %.01533 = add nsw i32 %.01527, -1               ; 2 uses
  %.not34 = icmp eq i32 %.01533, 0
  br i1 %.not34, label %._crit_edge.thread36, label %.lr.ph.backedge

._crit_edge.thread36:                             ; preds = %.thread
  %.pre38 = load ptr, ptr %i.b, align 8, !tbaa !95
  br label %bb.h

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  %i.ad = icmp eq i32 %.1, 0
  br i1 %i.ad, label %bb.h, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %i.ae = phi ptr [ %.pre, %._crit_edge ], [ %.val, %bb.a ] ; 2 uses
  store i32 1, ptr %i.ae, align 8, !tbaa !81
  br label %pushresult.exit

bb.h:                                             ; preds = %._crit_edge.thread36, %._crit_edge
  %.pre39 = phi ptr [ %.pre38, %._crit_edge.thread36 ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.af = tail call ptr @__errno_location() #40
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !162 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre39, i64 8
  store i32 0, ptr %i.ah, align 8, !tbaa !99
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre39, i64 16
  store ptr %i.ai, ptr %i.b, align 8, !tbaa !95
  %i.aj = call ptr @strerror(i32 noundef %i.ag) #33
  %i.ak = call ptr (ptr, ptr, ...) @lua_pushfstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.115, ptr noundef %i.aj) ; 0 uses
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !95  ; 2 uses
  %i.am = sitofp i32 %i.ag to double
  store double %i.am, ptr %i.al, align 8, !tbaa !81
  br label %pushresult.exit

pushresult.exit:                                  ; preds = %._crit_edge.thread, %bb.h
  %.sink16.i = phi ptr [ %i.al, %bb.h ], [ %i.ae, %._crit_edge.thread ]
  %.sink.i = phi i32 [ 3, %bb.h ], [ 1, %._crit_edge.thread ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sink16.i, i64 8
  store i32 %.sink.i, ptr %i.an, align 8, !tbaa !99
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
end_hunk_2
