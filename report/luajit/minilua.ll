Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/minilua?download=true
inline.NumInlined: 1353
inline.NumDeleted: 303
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 27
begin_hunk_0_@open_func:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(15) %i.aq, i8 0, i64 15, i1 false)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !225
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr %i.at, ptr %i.au, align 8, !tbaa !163
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 115
  store i8 2, ptr %i.av, align 1, !tbaa !182
  %i.aw = tail call fastcc ptr @luaH_new(ptr noundef nonnull %i.b, i32 noundef 0, i32 noundef 0) ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !242
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !95 ; 2 uses
  store ptr %i.aw, ptr %i.az, align 8, !tbaa !81
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i32 5, ptr %i.ba, align 8, !tbaa !99
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !139
  %i.bd = load ptr, ptr %i.ay, align 8, !tbaa !95 ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = icmp slt i64 %i.bg, 17
  br i1 %i.bh, label %bb.g, label %bb.h

bb.g:                                             ; preds = %luaF_newproto.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !70 ; 3 uses
  %.not.i = icmp slt i32 %i.bj, 1
  %i.bk = add nsw i32 %i.bj, 1
  %i.bl = shl nsw i32 %i.bj, 1
  %.sink.i = select i1 %.not.i, i32 %i.bk, i32 %i.bl
  tail call fastcc void @luaD_reallocstack(ptr noundef nonnull %i.b, i32 noundef %.sink.i), !inline_history !25
  %.pre = load ptr, ptr %i.ay, align 8, !tbaa !95
  br label %bb.h

bb.h:                                             ; preds = %luaF_newproto.exit, %bb.g
  %i.bm = phi ptr [ %i.bd, %luaF_newproto.exit ], [ %.pre, %bb.g ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  store ptr %i.bn, ptr %i.ay, align 8, !tbaa !95
  store ptr %i.i, ptr %i.bn, align 8, !tbaa !81
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i32 9, ptr %i.bo, align 8, !tbaa !99
  %i.bp = load ptr, ptr %i.bb, align 8, !tbaa !139
  %i.bq = load ptr, ptr %i.ay, align 8, !tbaa !95 ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs
  %i.bu = icmp slt i64 %i.bt, 17
  br i1 %i.bu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !70 ; 3 uses
  %.not.i42 = icmp slt i32 %i.bw, 1
  %i.bx = add nsw i32 %i.bw, 1
  %i.by = shl nsw i32 %i.bw, 1
  %.sink.i43 = select i1 %.not.i42, i32 %i.bx, i32 %i.by
  tail call fastcc void @luaD_reallocstack(ptr noundef nonnull %i.b, i32 noundef %.sink.i43), !inline_history !25
  %.pre44 = load ptr, ptr %i.ay, align 8, !tbaa !95
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bz = phi ptr [ %i.bq, %bb.h ], [ %.pre44, %bb.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  store ptr %i.ca, ptr %i.ay, align 8, !tbaa !95
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @chunk(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.expdesc, align 8            ; 7 uses
  %2 = alloca %struct.BlockCnt, align 8           ; 8 uses
  %3 = alloca %struct.expdesc, align 8            ; 7 uses
  %4 = alloca %struct.BlockCnt, align 8           ; 8 uses
  %5 = alloca %struct.lua_TValue, align 8         ; 6 uses
  %6 = alloca %struct.FuncState, align 8          ; 9 uses
  %7 = alloca %struct.BlockCnt, align 8           ; 8 uses
  %8 = alloca %struct.BlockCnt, align 8           ; 8 uses
  %9 = alloca %struct.expdesc, align 8            ; 7 uses
  %10 = alloca %struct.BlockCnt, align 8          ; 8 uses
  %11 = alloca %struct.BlockCnt, align 8          ; 8 uses
  %12 = alloca %struct.expdesc, align 8           ; 9 uses
  %13 = alloca %struct.BlockCnt, align 8          ; 8 uses
  %14 = alloca %struct.expdesc, align 8           ; 7 uses
  %15 = alloca %struct.BlockCnt, align 8          ; 8 uses
  %16 = alloca %struct.BlockCnt, align 8          ; 8 uses
  %17 = alloca %struct.expdesc, align 8           ; 6 uses
  %18 = alloca %struct.expdesc, align 8           ; 4 uses
  %19 = alloca %struct.FuncState, align 8         ; 6 uses
  %20 = alloca %struct.expdesc, align 8           ; 7 uses
  %21 = alloca %struct.expdesc, align 8           ; 4 uses
  %22 = alloca %struct.expdesc, align 8           ; 10 uses
  %23 = alloca %struct.expdesc, align 8           ; 15 uses
  %24 = alloca %struct.LHS_assign, align 8        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 10 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !116
  %i.e = add i16 %i.d, 1                          ; 2 uses
  store i16 %i.e, ptr %i.c, align 8, !tbaa !116
  %i.f = icmp ugt i16 %i.e, 200
  br i1 %i.f, label %bb.b, label %enterlevel.exit.preheader

enterlevel.exit.preheader:                        ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 88 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 24 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 28 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 84 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 32 uses
  %i.l = getelementptr i8, ptr %0, i64 48         ; 32 uses
  %i.m = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %20, i64 20
  %i.q = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 14
  %i.t = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %15, i64 13
  %i.v = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %16, i64 14
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 13 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 14
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 13
  %i.ae = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 14
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 12
  %i.aj = getelementptr inbounds nuw i8, ptr %11, i64 13
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 14
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 13
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 14
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 13
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 14
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 13
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 14
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 13
  %i.bh = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %24, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.148, i32 noundef 0)
  unreachable

bb.c:                                             ; preds = %enterlevel.exit.preheader, %testnext.exit
  %i.bj = load i32, ptr %i.g, align 8, !tbaa !234 ; 2 uses
  switch i32 %i.bj, label %bb.d [
    i32 260, label %.critedge
    i32 261, label %.critedge
    i32 262, label %.critedge
    i32 276, label %.critedge
    i32 287, label %.critedge
  ]

bb.d:                                             ; preds = %bb.c
  %i.bk = load i32, ptr %i.h, align 4, !tbaa !223 ; 19 uses
  switch i32 %i.bj, label %bb.he [
    i32 266, label %bb.e
    i32 277, label %bb.bc
    i32 259, label %bb.by
    i32 264, label %bb.cb
    i32 272, label %bb.dm
    i32 265, label %bb.eo
    i32 268, label %bb.et
    i32 273, label %bb.fy
    i32 258, label %bb.hb
  ]

bb.e:                                             ; preds = %bb.d
  %i.bl = load ptr, ptr %i.l, align 8, !tbaa !222 ; 14 uses
  store i32 %i.bk, ptr %i.i, align 8, !tbaa !224
  %i.bm = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i152 = icmp eq i32 %i.bm, 287
  br i1 %.not.i152, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  br label %luaX_next.exit153.a

bb.g:                                             ; preds = %bb.e
  %i.bn = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k)
  store i32 %i.bn, ptr %i.g, align 8, !tbaa !234
  br label %luaX_next.exit153.a

luaX_next.exit153.a:                              ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %25 = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0), !inline_history !451 ; 0 uses
  %26 = load i32, ptr %1, align 8, !tbaa !244     ; 2 uses
  %27 = icmp eq i32 %26, 1
  %spec.store.select = select i1 %27, i32 3, i32 %26
  store i32 %spec.store.select, ptr %1, align 8, !tbaa !244
  %i.bo = load ptr, ptr %i.l, align 8, !tbaa !222
  call fastcc void @luaK_goiftrue(ptr noundef %i.bo, ptr noundef %1), !inline_history !452
  %i.bp = load i32, ptr %i.at, align 4, !tbaa !245
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.bq = load i32, ptr %i.g, align 8, !tbaa !234
  %.not.i.i145 = icmp eq i32 %i.bq, 274
  br i1 %.not.i.i145, label %check.exit.i147, label %bb.h

bb.h:                                             ; preds = %luaX_next.exit153.a
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !219
  %i.bs = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.br, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.80)
  %i.bt = load i32, ptr %i.g, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.bs, i32 noundef %i.bt)
  unreachable

check.exit.i147:                                  ; preds = %luaX_next.exit153.a
  %i.bu = load i32, ptr %i.h, align 4, !tbaa !223
  store i32 %i.bu, ptr %i.i, align 8, !tbaa !224
  %i.bv = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i2.i148 = icmp eq i32 %i.bv, 287
  br i1 %.not.i2.i148, label %bb.j, label %bb.i

bb.i:                                             ; preds = %check.exit.i147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  br label %checknext.exit150

bb.j:                                             ; preds = %check.exit.i147
  %i.bw = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k)
  store i32 %i.bw, ptr %i.g, align 8, !tbaa !234
  br label %checknext.exit150

checknext.exit150:                                ; preds = %bb.i, %bb.j
  %i.bx = load ptr, ptr %i.l, align 8, !tbaa !222 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store i32 -1, ptr %i.au, align 8, !tbaa !247
  store i8 0, ptr %i.av, align 2, !tbaa !248
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 74
  %i.bz = load i8, ptr %i.by, align 2, !tbaa !249
  store i8 %i.bz, ptr %i.aw, align 4, !tbaa !250
  store i8 0, ptr %i.ax, align 1, !tbaa !251
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 40 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !241
  store ptr %i.cb, ptr %2, align 8, !tbaa !252
  store ptr %2, ptr %i.ca, align 8, !tbaa !241
  call fastcc void @chunk(ptr noundef nonnull %0), !inline_history !453
  call fastcc void @leaveblock(ptr noundef %i.bx), !inline_history !453
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 56 ; 10 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 10 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 4 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bl, i64 52 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %checknext.exit142, %checknext.exit150
  %.0157 = phi i32 [ -1, %checknext.exit150 ], [ %.3, %checknext.exit142 ] ; 12 uses
  %.0.i76 = phi i32 [ %i.bp, %checknext.exit150 ], [ %i.ff, %checknext.exit142 ] ; 9 uses
  %i.cg = load i32, ptr %i.g, align 8, !tbaa !234
  switch i32 %i.cg, label %bb.as [
    i32 261, label %bb.l
    i32 260, label %bb.ad
  ]

bb.l:                                             ; preds = %bb.k
  %i.ch = load i32, ptr %i.cc, align 8, !tbaa !240 ; 3 uses
  store i32 -1, ptr %i.cc, align 8, !tbaa !240
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !236
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !224
  %i.cl = call fastcc i32 @luaK_code(ptr noundef %i.bl, i32 noundef 2147450902, i32 noundef %i.ck), !inline_history !454 ; 4 uses
  %i.cm = icmp eq i32 %i.ch, -1
  %i.cn = icmp eq i32 %i.cl, -1                   ; 2 uses
  br i1 %i.cm, label %luaK_jump.exit.i86, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.cn, label %luaK_jump.exit.i86.thread, label %.preheader.i.i.i78

.preheader.i.i.i78:                               ; preds = %bb.m
  %.val.i.i.i79 = load ptr, ptr %i.bl, align 8, !tbaa !232
  %i.co = getelementptr i8, ptr %.val.i.i.i79, i64 24
  %.val.val.i.i.i80 = load ptr, ptr %i.co, align 8, !tbaa !160 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader.i.i.i78
  %.0.i.i.i81 = phi i32 [ %i.cw, %bb.n ], [ %i.cl, %.preheader.i.i.i78 ] ; 3 uses
  %i.cp = sext i32 %.0.i.i.i81 to i64             ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i80, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !162 ; 2 uses
  %i.cs = lshr i32 %i.cr, 14
  %i.ct = add nsw i32 %i.cs, -131071              ; 2 uses
  %i.cu = icmp eq i32 %i.ct, -1
  %i.cv = add nuw nsw i32 %.0.i.i.i81, 1
  %i.cw = add nsw i32 %i.cv, %i.ct                ; 2 uses
  %.not13.i.i.i82 = icmp eq i32 %i.cw, -1
  %.not.i.i.i83 = select i1 %i.cu, i1 true, i1 %.not13.i.i.i82
  br i1 %.not.i.i.i83, label %bb.o, label %bb.n, !llvm.loop !26

bb.o:                                             ; preds = %bb.n
  %.neg.i.i.i.i84 = xor i32 %.0.i.i.i81, -1
  %i.cx = add i32 %i.ch, %.neg.i.i.i.i84          ; 2 uses
  %i.cy = add i32 %i.cx, -131072
  %i.cz = icmp ult i32 %i.cy, -262143
  br i1 %i.cz, label %bb.p, label %fixjump.exit.i.i.i85

bb.p:                                             ; preds = %bb.o
  %i.da = load ptr, ptr %i.cd, align 8, !tbaa !236 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.da, ptr noundef nonnull @.str.150, i32 noundef %i.dc), !inline_history !454
  unreachable

fixjump.exit.i.i.i85:                             ; preds = %bb.o
  %i.dd = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i80, i64 %i.cp
  %i.de = and i32 %i.cr, 16383
  %i.df = shl nsw i32 %i.cx, 14
  %i.dg = add i32 %i.df, 2147467264
  %i.dh = or disjoint i32 %i.dg, %i.de
  store i32 %i.dh, ptr %i.dd, align 4, !tbaa !162
  br label %luaK_jump.exit.i86.thread

luaK_jump.exit.i86:                               ; preds = %bb.l
  br i1 %i.cn, label %luaK_concat.exit.i, label %luaK_jump.exit.i86.thread

luaK_jump.exit.i86.thread:                        ; preds = %bb.m, %fixjump.exit.i.i.i85, %luaK_jump.exit.i86
  %.0.i.i87161 = phi i32 [ %i.cl, %luaK_jump.exit.i86 ], [ %i.ch, %bb.m ], [ %i.cl, %fixjump.exit.i.i.i85 ] ; 2 uses
  %i.di = icmp eq i32 %.0157, -1
  br i1 %i.di, label %luaK_concat.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %luaK_jump.exit.i86.thread
  %.val.i.i88 = load ptr, ptr %i.bl, align 8, !tbaa !232
  %i.dj = getelementptr i8, ptr %.val.i.i88, i64 24
  %.val.val.i.i = load ptr, ptr %i.dj, align 8, !tbaa !160 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.preheader.i.i
  %.0.i20.i = phi i32 [ %i.dr, %bb.q ], [ %.0157, %.preheader.i.i ] ; 3 uses
  %i.dk = sext i32 %.0.i20.i to i64               ; 2 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !162 ; 2 uses
  %i.dn = lshr i32 %i.dm, 14
  %i.do = add nsw i32 %i.dn, -131071              ; 2 uses
  %i.dp = icmp eq i32 %i.do, -1
  %i.dq = add nuw nsw i32 %.0.i20.i, 1
  %i.dr = add nsw i32 %i.dq, %i.do                ; 2 uses
  %.not13.i.i = icmp eq i32 %i.dr, -1
  %.not.i.i89 = select i1 %i.dp, i1 true, i1 %.not13.i.i
  br i1 %.not.i.i89, label %bb.r, label %bb.q, !llvm.loop !26

bb.r:                                             ; preds = %bb.q
  %.neg.i.i.i = xor i32 %.0.i20.i, -1
  %i.ds = add i32 %.0.i.i87161, %.neg.i.i.i       ; 2 uses
  %i.dt = add i32 %i.ds, -131072
  %i.du = icmp ult i32 %i.dt, -262143
  br i1 %i.du, label %bb.s, label %fixjump.exit.i.i

bb.s:                                             ; preds = %bb.r
  %i.dv = load ptr, ptr %i.cd, align 8, !tbaa !236 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.dv, ptr noundef nonnull @.str.150, i32 noundef %i.dx), !inline_history !454
  unreachable

fixjump.exit.i.i:                                 ; preds = %bb.r
  %i.dy = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.dk
  %i.dz = and i32 %i.dm, 16383
  %i.ea = shl nsw i32 %i.ds, 14
  %i.eb = add i32 %i.ea, 2147467264
  %i.ec = or disjoint i32 %i.eb, %i.dz
  store i32 %i.ec, ptr %i.dy, align 4, !tbaa !162
  br label %luaK_concat.exit.i

luaK_concat.exit.i:                               ; preds = %luaK_jump.exit.i86.thread, %fixjump.exit.i.i, %luaK_jump.exit.i86
  %.3 = phi i32 [ %.0157, %luaK_jump.exit.i86 ], [ %.0157, %fixjump.exit.i.i ], [ %.0.i.i87161, %luaK_jump.exit.i86.thread ]
  %i.ed = load i32, ptr %i.ce, align 8, !tbaa !238
  store i32 %i.ed, ptr %i.cf, align 4, !tbaa !239
  %i.ee = icmp eq i32 %.0.i76, -1
  br i1 %i.ee, label %luaK_patchtohere.exit.i90, label %bb.t

bb.t:                                             ; preds = %luaK_concat.exit.i
  %i.ef = load i32, ptr %i.cc, align 8, !tbaa !162 ; 2 uses
  %i.eg = icmp eq i32 %i.ef, -1
  br i1 %i.eg, label %bb.u, label %.preheader.i.i21.i

.preheader.i.i21.i:                               ; preds = %bb.t
  %.val.i.i22.i = load ptr, ptr %i.bl, align 8, !tbaa !232
  %i.eh = getelementptr i8, ptr %.val.i.i22.i, i64 24
  %.val.val.i.i23.i = load ptr, ptr %i.eh, align 8, !tbaa !160 ; 2 uses
  br label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 %.0.i76, ptr %i.cc, align 8, !tbaa !162
  br label %luaK_patchtohere.exit.i90

bb.v:                                             ; preds = %bb.v, %.preheader.i.i21.i
  %.0.i.i24.i = phi i32 [ %i.ep, %bb.v ], [ %i.ef, %.preheader.i.i21.i ] ; 3 uses
  %i.ei = sext i32 %.0.i.i24.i to i64             ; 2 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %.val.val.i.i23.i, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !162 ; 2 uses
  %i.el = lshr i32 %i.ek, 14
  %i.em = add nsw i32 %i.el, -131071              ; 2 uses
  %i.en = icmp eq i32 %i.em, -1
  %i.eo = add nuw nsw i32 %.0.i.i24.i, 1
  %i.ep = add nsw i32 %i.eo, %i.em                ; 2 uses
  %.not13.i.i25.i = icmp eq i32 %i.ep, -1
  %.not.i.i26.i = select i1 %i.en, i1 true, i1 %.not13.i.i25.i
  br i1 %.not.i.i26.i, label %bb.w, label %bb.v, !llvm.loop !26

bb.w:                                             ; preds = %bb.v
  %.neg.i.i.i27.i = xor i32 %.0.i.i24.i, -1
  %i.eq = add i32 %.0.i76, %.neg.i.i.i27.i        ; 2 uses
  %i.er = add i32 %i.eq, -131072
  %i.es = icmp ult i32 %i.er, -262143
  br i1 %i.es, label %bb.x, label %fixjump.exit.i.i28.i

bb.x:                                             ; preds = %bb.w
  %i.et = load ptr, ptr %i.cd, align 8, !tbaa !236 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.et, ptr noundef nonnull @.str.150, i32 noundef %i.ev), !inline_history !454
  unreachable

fixjump.exit.i.i28.i:                             ; preds = %bb.w
  %i.ew = getelementptr inbounds [4 x i8], ptr %.val.val.i.i23.i, i64 %i.ei
  %i.ex = and i32 %i.ek, 16383
  %i.ey = shl nsw i32 %i.eq, 14
  %i.ez = add i32 %i.ey, 2147467264
  %i.fa = or disjoint i32 %i.ez, %i.ex
  store i32 %i.fa, ptr %i.ew, align 4, !tbaa !162
  br label %luaK_patchtohere.exit.i90

luaK_patchtohere.exit.i90:                        ; preds = %fixjump.exit.i.i28.i, %bb.u, %luaK_concat.exit.i
  %i.fb = load i32, ptr %i.h, align 4, !tbaa !223
  store i32 %i.fb, ptr %i.i, align 8, !tbaa !224
  %i.fc = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i143 = icmp eq i32 %i.fc, 287
  br i1 %.not.i143, label %bb.z, label %bb.y

bb.y:                                             ; preds = %luaK_patchtohere.exit.i90
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  br label %luaX_next.exit144.a

bb.z:                                             ; preds = %luaK_patchtohere.exit.i90
  %i.fd = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k)
  store i32 %i.fd, ptr %i.g, align 8, !tbaa !234
  br label %luaX_next.exit144.a

luaX_next.exit144.a:                              ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %28 = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0), !inline_history !451 ; 0 uses
  %29 = load i32, ptr %3, align 8, !tbaa !244     ; 2 uses
  %30 = icmp eq i32 %29, 1
  %spec.store.select699 = select i1 %30, i32 3, i32 %29
  store i32 %spec.store.select699, ptr %3, align 8, !tbaa !244
  %i.fe = load ptr, ptr %i.l, align 8, !tbaa !222
  call fastcc void @luaK_goiftrue(ptr noundef %i.fe, ptr noundef %3), !inline_history !452
  %i.ff = load i32, ptr %i.ay, align 4, !tbaa !245
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.fg = load i32, ptr %i.g, align 8, !tbaa !234
  %.not.i.i137 = icmp eq i32 %i.fg, 274
  br i1 %.not.i.i137, label %check.exit.i139, label %bb.aa

bb.aa:                                            ; preds = %luaX_next.exit144.a
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !219
  %i.fi = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.fh, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.80)
  %i.fj = load i32, ptr %i.g, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.fi, i32 noundef %i.fj)
  unreachable

check.exit.i139:                                  ; preds = %luaX_next.exit144.a
  %i.fk = load i32, ptr %i.h, align 4, !tbaa !223
  store i32 %i.fk, ptr %i.i, align 8, !tbaa !224
  %i.fl = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i2.i140 = icmp eq i32 %i.fl, 287
  br i1 %.not.i2.i140, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %check.exit.i139
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  br label %checknext.exit142

bb.ac:                                            ; preds = %check.exit.i139
  %i.fm = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k)
  store i32 %i.fm, ptr %i.g, align 8, !tbaa !234
  br label %checknext.exit142

checknext.exit142:                                ; preds = %bb.ab, %bb.ac
  %i.fn = load ptr, ptr %i.l, align 8, !tbaa !222 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store i32 -1, ptr %i.az, align 8, !tbaa !247
  store i8 0, ptr %i.ba, align 2, !tbaa !248
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 74
  %i.fp = load i8, ptr %i.fo, align 2, !tbaa !249
  store i8 %i.fp, ptr %i.bb, align 4, !tbaa !250
  store i8 0, ptr %i.bc, align 1, !tbaa !251
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 40 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !241
  store ptr %i.fr, ptr %4, align 8, !tbaa !252
  store ptr %4, ptr %i.fq, align 8, !tbaa !241
  call fastcc void @chunk(ptr noundef nonnull %0), !inline_history !453
  call fastcc void @leaveblock(ptr noundef %i.fn), !inline_history !453
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.k, !llvm.loop !455

bb.ad:                                            ; preds = %bb.k
  %i.fs = load i32, ptr %i.cc, align 8, !tbaa !240 ; 3 uses
  store i32 -1, ptr %i.cc, align 8, !tbaa !240
  %i.ft = load ptr, ptr %i.cd, align 8, !tbaa !236
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 8
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !224
  %i.fw = call fastcc i32 @luaK_code(ptr noundef %i.bl, i32 noundef 2147450902, i32 noundef %i.fv), !inline_history !454 ; 4 uses
  %i.fx = icmp eq i32 %i.fs, -1
  %i.fy = icmp eq i32 %i.fw, -1                   ; 2 uses
  br i1 %i.fx, label %luaK_jump.exit38.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.fy, label %luaK_jump.exit38.i.thread, label %.preheader.i.i29.i

.preheader.i.i29.i:                               ; preds = %bb.ae
  %.val.i.i30.i = load ptr, ptr %i.bl, align 8, !tbaa !232
  %i.fz = getelementptr i8, ptr %.val.i.i30.i, i64 24
  %.val.val.i.i31.i = load ptr, ptr %i.fz, align 8, !tbaa !160 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.preheader.i.i29.i
  %.0.i.i32.i = phi i32 [ %i.gh, %bb.af ], [ %i.fw, %.preheader.i.i29.i ] ; 3 uses
  %i.ga = sext i32 %.0.i.i32.i to i64             ; 2 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %.val.val.i.i31.i, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !162 ; 2 uses
  %i.gd = lshr i32 %i.gc, 14
  %i.ge = add nsw i32 %i.gd, -131071              ; 2 uses
  %i.gf = icmp eq i32 %i.ge, -1
  %i.gg = add nuw nsw i32 %.0.i.i32.i, 1
  %i.gh = add nsw i32 %i.gg, %i.ge                ; 2 uses
  %.not13.i.i33.i = icmp eq i32 %i.gh, -1
  %.not.i.i34.i = select i1 %i.gf, i1 true, i1 %.not13.i.i33.i
  br i1 %.not.i.i34.i, label %bb.ag, label %bb.af, !llvm.loop !26

bb.ag:                                            ; preds = %bb.af
  %.neg.i.i.i35.i = xor i32 %.0.i.i32.i, -1
  %i.gi = add i32 %i.fs, %.neg.i.i.i35.i          ; 2 uses
  %i.gj = add i32 %i.gi, -131072
  %i.gk = icmp ult i32 %i.gj, -262143
  br i1 %i.gk, label %bb.ah, label %fixjump.exit.i.i36.i

bb.ah:                                            ; preds = %bb.ag
  %i.gl = load ptr, ptr %i.cd, align 8, !tbaa !236 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 16
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.gl, ptr noundef nonnull @.str.150, i32 noundef %i.gn), !inline_history !454
  unreachable

fixjump.exit.i.i36.i:                             ; preds = %bb.ag
  %i.go = getelementptr inbounds [4 x i8], ptr %.val.val.i.i31.i, i64 %i.ga
  %i.gp = and i32 %i.gc, 16383
  %i.gq = shl nsw i32 %i.gi, 14
  %i.gr = add i32 %i.gq, 2147467264
  %i.gs = or disjoint i32 %i.gr, %i.gp
  store i32 %i.gs, ptr %i.go, align 4, !tbaa !162
  br label %luaK_jump.exit38.i.thread

luaK_jump.exit38.i:                               ; preds = %bb.ad
  br i1 %i.fy, label %luaK_concat.exit47.i, label %luaK_jump.exit38.i.thread

luaK_jump.exit38.i.thread:                        ; preds = %bb.ae, %fixjump.exit.i.i36.i, %luaK_jump.exit38.i
  %.0.i37.i163 = phi i32 [ %i.fw, %luaK_jump.exit38.i ], [ %i.fs, %bb.ae ], [ %i.fw, %fixjump.exit.i.i36.i ] ; 2 uses
  %i.gt = icmp eq i32 %.0157, -1
  br i1 %i.gt, label %luaK_concat.exit47.i, label %.preheader.i39.i

.preheader.i39.i:                                 ; preds = %luaK_jump.exit38.i.thread
  %.val.i40.i = load ptr, ptr %i.bl, align 8, !tbaa !232
  %i.gu = getelementptr i8, ptr %.val.i40.i, i64 24
  %.val.val.i41.i = load ptr, ptr %i.gu, align 8, !tbaa !160 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.preheader.i39.i
  %.0.i42.i = phi i32 [ %i.hc, %bb.ai ], [ %.0157, %.preheader.i39.i ] ; 3 uses
  %i.gv = sext i32 %.0.i42.i to i64               ; 2 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %.val.val.i41.i, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !162 ; 2 uses
  %i.gy = lshr i32 %i.gx, 14
  %i.gz = add nsw i32 %i.gy, -131071              ; 2 uses
  %i.ha = icmp eq i32 %i.gz, -1
  %i.hb = add nuw nsw i32 %.0.i42.i, 1
  %i.hc = add nsw i32 %i.hb, %i.gz                ; 2 uses
  %.not13.i43.i = icmp eq i32 %i.hc, -1
  %.not.i44.i = select i1 %i.ha, i1 true, i1 %.not13.i43.i
  br i1 %.not.i44.i, label %bb.aj, label %bb.ai, !llvm.loop !26

bb.aj:                                            ; preds = %bb.ai
  %.neg.i.i45.i = xor i32 %.0.i42.i, -1
  %i.hd = add i32 %.0.i37.i163, %.neg.i.i45.i     ; 2 uses
  %i.he = add i32 %i.hd, -131072
  %i.hf = icmp ult i32 %i.he, -262143
  br i1 %i.hf, label %bb.ak, label %fixjump.exit.i46.i

bb.ak:                                            ; preds = %bb.aj
  %i.hg = load ptr, ptr %i.cd, align 8, !tbaa !236 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.hi = load i32, ptr %i.hh, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.hg, ptr noundef nonnull @.str.150, i32 noundef %i.hi), !inline_history !454
  unreachable

fixjump.exit.i46.i:                               ; preds = %bb.aj
  %i.hj = getelementptr inbounds [4 x i8], ptr %.val.val.i41.i, i64 %i.gv
  %i.hk = and i32 %i.gx, 16383
  %i.hl = shl nsw i32 %i.hd, 14
  %i.hm = add i32 %i.hl, 2147467264
  %i.hn = or disjoint i32 %i.hm, %i.hk
  store i32 %i.hn, ptr %i.hj, align 4, !tbaa !162
  br label %luaK_concat.exit47.i

luaK_concat.exit47.i:                             ; preds = %luaK_jump.exit38.i.thread, %fixjump.exit.i46.i, %luaK_jump.exit38.i
  %.1 = phi i32 [ %.0157, %luaK_jump.exit38.i ], [ %.0157, %fixjump.exit.i46.i ], [ %.0.i37.i163, %luaK_jump.exit38.i.thread ]
  %i.ho = load i32, ptr %i.ce, align 8, !tbaa !238
  store i32 %i.ho, ptr %i.cf, align 4, !tbaa !239
  %i.hp = icmp eq i32 %.0.i76, -1
  br i1 %i.hp, label %luaK_patchtohere.exit56.i, label %bb.al

bb.al:                                            ; preds = %luaK_concat.exit47.i
  %i.hq = load i32, ptr %i.cc, align 8, !tbaa !162 ; 2 uses
  %i.hr = icmp eq i32 %i.hq, -1
  br i1 %i.hr, label %bb.am, label %.preheader.i.i48.i

.preheader.i.i48.i:                               ; preds = %bb.al
  %.val.i.i49.i = load ptr, ptr %i.bl, align 8, !tbaa !232
  %i.hs = getelementptr i8, ptr %.val.i.i49.i, i64 24
  %.val.val.i.i50.i = load ptr, ptr %i.hs, align 8, !tbaa !160 ; 2 uses
  br label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 %.0.i76, ptr %i.cc, align 8, !tbaa !162
  br label %luaK_patchtohere.exit56.i

bb.an:                                            ; preds = %bb.an, %.preheader.i.i48.i
  %.0.i.i51.i = phi i32 [ %i.ia, %bb.an ], [ %i.hq, %.preheader.i.i48.i ] ; 3 uses
  %i.ht = sext i32 %.0.i.i51.i to i64             ; 2 uses
  %i.hu = getelementptr inbounds [4 x i8], ptr %.val.val.i.i50.i, i64 %i.ht
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !162 ; 2 uses
  %i.hw = lshr i32 %i.hv, 14
  %i.hx = add nsw i32 %i.hw, -131071              ; 2 uses
  %i.hy = icmp eq i32 %i.hx, -1
  %i.hz = add nuw nsw i32 %.0.i.i51.i, 1
  %i.ia = add nsw i32 %i.hz, %i.hx                ; 2 uses
  %.not13.i.i52.i = icmp eq i32 %i.ia, -1
  %.not.i.i53.i = select i1 %i.hy, i1 true, i1 %.not13.i.i52.i
  br i1 %.not.i.i53.i, label %bb.ao, label %bb.an, !llvm.loop !26

bb.ao:                                            ; preds = %bb.an
  %.neg.i.i.i54.i = xor i32 %.0.i.i51.i, -1
  %i.ib = add i32 %.0.i76, %.neg.i.i.i54.i        ; 2 uses
  %i.ic = add i32 %i.ib, -131072
  %i.id = icmp ult i32 %i.ic, -262143
  br i1 %i.id, label %bb.ap, label %fixjump.exit.i.i55.i

bb.ap:                                            ; preds = %bb.ao
  %i.ie = load ptr, ptr %i.cd, align 8, !tbaa !236 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.ie, ptr noundef nonnull @.str.150, i32 noundef %i.ig), !inline_history !454
  unreachable

fixjump.exit.i.i55.i:                             ; preds = %bb.ao
  %i.ih = getelementptr inbounds [4 x i8], ptr %.val.val.i.i50.i, i64 %i.ht
  %i.ii = and i32 %i.hv, 16383
  %i.ij = shl nsw i32 %i.ib, 14
  %i.ik = add i32 %i.ij, 2147467264
  %i.il = or disjoint i32 %i.ik, %i.ii
  store i32 %i.il, ptr %i.ih, align 4, !tbaa !162
  br label %luaK_patchtohere.exit56.i

luaK_patchtohere.exit56.i:                        ; preds = %fixjump.exit.i.i55.i, %bb.am, %luaK_concat.exit47.i
  %i.im = load i32, ptr %i.h, align 4, !tbaa !223
  store i32 %i.im, ptr %i.i, align 8, !tbaa !224
  %i.in = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i57.i = icmp eq i32 %i.in, 287
  br i1 %.not.i57.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %luaK_patchtohere.exit56.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  br label %luaX_next.exit.i77

bb.ar:                                            ; preds = %luaK_patchtohere.exit56.i
  %i.io = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k), !inline_history !454
  store i32 %i.io, ptr %i.g, align 8, !tbaa !234
  br label %luaX_next.exit.i77

luaX_next.exit.i77:                               ; preds = %bb.ar, %bb.aq
  %i.ip = load ptr, ptr %i.l, align 8, !tbaa !222 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  store i32 -1, ptr %i.bd, align 8, !tbaa !247
  store i8 0, ptr %i.be, align 2, !tbaa !248
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 74
  %i.ir = load i8, ptr %i.iq, align 2, !tbaa !249
  store i8 %i.ir, ptr %i.bf, align 4, !tbaa !250
  store i8 0, ptr %i.bg, align 1, !tbaa !251
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 40 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !241
  store ptr %i.it, ptr %7, align 8, !tbaa !252
  store ptr %7, ptr %i.is, align 8, !tbaa !241
  call fastcc void @chunk(ptr noundef nonnull %0), !inline_history !456
  call fastcc void @leaveblock(ptr noundef %i.ip), !inline_history !456
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #33
  br label %luaK_concat.exit66.i

bb.as:                                            ; preds = %bb.k
  %i.iu = icmp eq i32 %.0.i76, -1
  br i1 %i.iu, label %luaK_concat.exit66.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.iv = icmp eq i32 %.0157, -1
  br i1 %i.iv, label %luaK_concat.exit66.i.thread, label %.preheader.i58.i

.preheader.i58.i:                                 ; preds = %bb.at
  %.val.i59.i = load ptr, ptr %i.bl, align 8, !tbaa !232
  %i.iw = getelementptr i8, ptr %.val.i59.i, i64 24
  %.val.val.i60.i = load ptr, ptr %i.iw, align 8, !tbaa !160 ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.preheader.i58.i
  %.0.i61.i = phi i32 [ %i.je, %bb.au ], [ %.0157, %.preheader.i58.i ] ; 3 uses
  %i.ix = sext i32 %.0.i61.i to i64               ; 2 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %.val.val.i60.i, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !162 ; 2 uses
  %i.ja = lshr i32 %i.iz, 14
  %i.jb = add nsw i32 %i.ja, -131071              ; 2 uses
  %i.jc = icmp eq i32 %i.jb, -1
  %i.jd = add nuw nsw i32 %.0.i61.i, 1
  %i.je = add nsw i32 %i.jd, %i.jb                ; 2 uses
  %.not13.i62.i = icmp eq i32 %i.je, -1
  %.not.i63.i = select i1 %i.jc, i1 true, i1 %.not13.i62.i
  br i1 %.not.i63.i, label %bb.av, label %bb.au, !llvm.loop !26

bb.av:                                            ; preds = %bb.au
  %.neg.i.i64.i = xor i32 %.0.i61.i, -1
  %i.jf = add i32 %.0.i76, %.neg.i.i64.i          ; 2 uses
  %i.jg = add i32 %i.jf, -131072
  %i.jh = icmp ult i32 %i.jg, -262143
  br i1 %i.jh, label %bb.aw, label %fixjump.exit.i65.i

bb.aw:                                            ; preds = %bb.av
  %i.ji = load ptr, ptr %i.cd, align 8, !tbaa !236 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.ji, ptr noundef nonnull @.str.150, i32 noundef %i.jk), !inline_history !454
  unreachable

fixjump.exit.i65.i:                               ; preds = %bb.av
  %i.jl = getelementptr inbounds [4 x i8], ptr %.val.val.i60.i, i64 %i.ix
  %i.jm = and i32 %i.iz, 16383
  %i.jn = shl nsw i32 %i.jf, 14
  %i.jo = add i32 %i.jn, 2147467264
  %i.jp = or disjoint i32 %i.jo, %i.jm
  store i32 %i.jp, ptr %i.jl, align 4, !tbaa !162
  br label %luaK_concat.exit66.i.thread

luaK_concat.exit66.i.thread:                      ; preds = %fixjump.exit.i65.i, %bb.at
  %.2.ph = phi i32 [ %.0.i76, %bb.at ], [ %.0157, %fixjump.exit.i65.i ]
  %i.jq = load i32, ptr %i.ce, align 8, !tbaa !238
  store i32 %i.jq, ptr %i.cf, align 4, !tbaa !239
  br label %bb.ax

luaK_concat.exit66.i:                             ; preds = %bb.as, %luaX_next.exit.i77
  %.2 = phi i32 [ %.1, %luaX_next.exit.i77 ], [ %.0157, %bb.as ] ; 2 uses
  %i.jr = load i32, ptr %i.ce, align 8, !tbaa !238
  store i32 %i.jr, ptr %i.cf, align 4, !tbaa !239
  %i.js = icmp eq i32 %.2, -1
  br i1 %i.js, label %ifstat.exit, label %bb.ax

bb.ax:                                            ; preds = %luaK_concat.exit66.i.thread, %luaK_concat.exit66.i
  %.2165 = phi i32 [ %.2.ph, %luaK_concat.exit66.i.thread ], [ %.2, %luaK_concat.exit66.i ] ; 2 uses
  %i.jt = load i32, ptr %i.cc, align 4, !tbaa !162 ; 2 uses
  %i.ju = icmp eq i32 %i.jt, -1
  br i1 %i.ju, label %bb.ay, label %.preheader.i.i67.i

.preheader.i.i67.i:                               ; preds = %bb.ax
  %.val.i.i68.i = load ptr, ptr %i.bl, align 8, !tbaa !232
  %i.jv = getelementptr i8, ptr %.val.i.i68.i, i64 24
  %.val.val.i.i69.i = load ptr, ptr %i.jv, align 8, !tbaa !160 ; 2 uses
  br label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 %.2165, ptr %i.cc, align 4, !tbaa !162
  br label %ifstat.exit

bb.az:                                            ; preds = %bb.az, %.preheader.i.i67.i
  %.0.i.i70.i = phi i32 [ %i.kd, %bb.az ], [ %i.jt, %.preheader.i.i67.i ] ; 3 uses
  %i.jw = sext i32 %.0.i.i70.i to i64             ; 2 uses
  %i.jx = getelementptr inbounds [4 x i8], ptr %.val.val.i.i69.i, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !162 ; 2 uses
  %i.jz = lshr i32 %i.jy, 14
  %i.ka = add nsw i32 %i.jz, -131071              ; 2 uses
  %i.kb = icmp eq i32 %i.ka, -1
  %i.kc = add nuw nsw i32 %.0.i.i70.i, 1
  %i.kd = add nsw i32 %i.kc, %i.ka                ; 2 uses
  %.not13.i.i71.i = icmp eq i32 %i.kd, -1
  %.not.i.i72.i = select i1 %i.kb, i1 true, i1 %.not13.i.i71.i
  br i1 %.not.i.i72.i, label %bb.ba, label %bb.az, !llvm.loop !26

bb.ba:                                            ; preds = %bb.az
  %.neg.i.i.i73.i = xor i32 %.0.i.i70.i, -1
  %i.ke = add i32 %.2165, %.neg.i.i.i73.i         ; 2 uses
  %i.kf = add i32 %i.ke, -131072
  %i.kg = icmp ult i32 %i.kf, -262143
  br i1 %i.kg, label %bb.bb, label %fixjump.exit.i.i74.i

bb.bb:                                            ; preds = %bb.ba
  %i.kh = load ptr, ptr %i.cd, align 8, !tbaa !236 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 16
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.kh, ptr noundef nonnull @.str.150, i32 noundef %i.kj), !inline_history !454
  unreachable

fixjump.exit.i.i74.i:                             ; preds = %bb.ba
  %i.kk = getelementptr inbounds [4 x i8], ptr %.val.val.i.i69.i, i64 %i.jw
  %i.kl = and i32 %i.jy, 16383
  %i.km = shl nsw i32 %i.ke, 14
  %i.kn = add i32 %i.km, 2147467264
  %i.ko = or disjoint i32 %i.kn, %i.kl
  store i32 %i.ko, ptr %i.kk, align 4, !tbaa !162
  br label %ifstat.exit

ifstat.exit:                                      ; preds = %luaK_concat.exit66.i, %bb.ay, %fixjump.exit.i.i74.i
  call fastcc void @check_match(ptr noundef nonnull %0, i32 noundef 262, i32 noundef 266, i32 noundef %i.bk), !inline_history !454
  br label %statement.exit

bb.bc:                                            ; preds = %bb.d
  %i.kp = load ptr, ptr %i.l, align 8, !tbaa !222 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #33
  store i32 %i.bk, ptr %i.i, align 8, !tbaa !224
  %i.kq = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i.i52 = icmp eq i32 %i.kq, 287
  br i1 %.not.i.i52, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  br label %luaX_next.exit.i53.a

bb.be:                                            ; preds = %bb.bc
  %i.kr = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k), !inline_history !457
  store i32 %i.kr, ptr %i.g, align 8, !tbaa !234
  br label %luaX_next.exit.i53.a

luaX_next.exit.i53.a:                             ; preds = %bb.be, %bb.bd
  %31 = getelementptr inbounds nuw i8, ptr %i.kp, i64 48 ; 3 uses
  %32 = load i32, ptr %31, align 8, !tbaa !238    ; 5 uses
  %33 = getelementptr inbounds nuw i8, ptr %i.kp, i64 52 ; 3 uses
  store i32 %32, ptr %33, align 4, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
  %34 = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %9, i32 noundef 0), !inline_history !458 ; 0 uses
  %35 = load i32, ptr %9, align 8, !tbaa !244     ; 2 uses
  %36 = icmp eq i32 %35, 1
  %spec.store.select700 = select i1 %36, i32 3, i32 %35
  store i32 %spec.store.select700, ptr %9, align 8, !tbaa !244
  %i.ks = load ptr, ptr %i.l, align 8, !tbaa !222
  call fastcc void @luaK_goiftrue(ptr noundef %i.ks, ptr noundef %9), !inline_history !459
  %i.kt = load i32, ptr %i.ak, align 4, !tbaa !245 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #33
  store i32 -1, ptr %i.al, align 8, !tbaa !247
  store i8 1, ptr %i.am, align 2, !tbaa !248
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kp, i64 74
  %i.kv = load i8, ptr %i.ku, align 2, !tbaa !249
  store i8 %i.kv, ptr %i.an, align 4, !tbaa !250
  store i8 0, ptr %i.ao, align 1, !tbaa !251
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kp, i64 40 ; 2 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !241
  store ptr %i.kx, ptr %10, align 8, !tbaa !252
  store ptr %10, ptr %i.kw, align 8, !tbaa !241
  %i.ky = load i32, ptr %i.g, align 8, !tbaa !234
  %.not.i.i.i55 = icmp eq i32 %i.ky, 259
  br i1 %.not.i.i.i55, label %check.exit.i.i56, label %bb.bf

bb.bf:                                            ; preds = %luaX_next.exit.i53.a
  %i.kz = load ptr, ptr %i.a, align 8, !tbaa !219
  %i.la = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.kz, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.67), !inline_history !457
  %i.lb = load i32, ptr %i.g, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.la, i32 noundef %i.lb), !inline_history !457
  unreachable

check.exit.i.i56:                                 ; preds = %luaX_next.exit.i53.a
  %i.lc = load i32, ptr %i.h, align 4, !tbaa !223
  store i32 %i.lc, ptr %i.i, align 8, !tbaa !224
  %i.ld = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i2.i.i = icmp eq i32 %i.ld, 287
  br i1 %.not.i2.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %check.exit.i.i56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  br label %checknext.exit.i

bb.bh:                                            ; preds = %check.exit.i.i56
  %i.le = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k), !inline_history !457
  store i32 %i.le, ptr %i.g, align 8, !tbaa !234
  br label %checknext.exit.i

checknext.exit.i:                                 ; preds = %bb.bh, %bb.bg
  %i.lf = load ptr, ptr %i.l, align 8, !tbaa !222 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  store i32 -1, ptr %i.ap, align 8, !tbaa !247
  store i8 0, ptr %i.aq, align 2, !tbaa !248
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 74
  %i.lh = load i8, ptr %i.lg, align 2, !tbaa !249
  store i8 %i.lh, ptr %i.ar, align 4, !tbaa !250
  store i8 0, ptr %i.as, align 1, !tbaa !251
  %i.li = getelementptr inbounds nuw i8, ptr %i.lf, i64 40 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !241
  store ptr %i.lj, ptr %8, align 8, !tbaa !252
  store ptr %8, ptr %i.li, align 8, !tbaa !241
  call fastcc void @chunk(ptr noundef nonnull %0), !inline_history !460
  call fastcc void @leaveblock(ptr noundef %i.lf), !inline_history !460
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #33
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kp, i64 56 ; 6 uses
  %i.ll = load i32, ptr %i.lk, align 8, !tbaa !240 ; 3 uses
  store i32 -1, ptr %i.lk, align 8, !tbaa !240
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !236
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load i32, ptr %i.lo, align 8, !tbaa !224
  %i.lq = call fastcc i32 @luaK_code(ptr noundef nonnull %i.kp, i32 noundef 2147450902, i32 noundef %i.lp), !inline_history !457 ; 4 uses
  %i.lr = icmp eq i32 %i.ll, -1
  br i1 %i.lr, label %luaK_jump.exit.i64, label %bb.bi

bb.bi:                                            ; preds = %checknext.exit.i
  %i.ls = icmp eq i32 %i.lq, -1
  br i1 %i.ls, label %luaK_jump.exit.i64, label %.preheader.i.i.i57

.preheader.i.i.i57:                               ; preds = %bb.bi
  %.val.i.i.i58 = load ptr, ptr %i.kp, align 8, !tbaa !232
  %i.lt = getelementptr i8, ptr %.val.i.i.i58, i64 24
  %.val.val.i.i.i59 = load ptr, ptr %i.lt, align 8, !tbaa !160 ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %.preheader.i.i.i57
  %.0.i.i.i60 = phi i32 [ %i.mb, %bb.bj ], [ %i.lq, %.preheader.i.i.i57 ] ; 3 uses
  %i.lu = sext i32 %.0.i.i.i60 to i64             ; 2 uses
  %i.lv = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i59, i64 %i.lu
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !162 ; 2 uses
  %i.lx = lshr i32 %i.lw, 14
  %i.ly = add nsw i32 %i.lx, -131071              ; 2 uses
  %i.lz = icmp eq i32 %i.ly, -1
  %i.ma = add nuw nsw i32 %.0.i.i.i60, 1
  %i.mb = add nsw i32 %i.ma, %i.ly                ; 2 uses
  %.not13.i.i.i61 = icmp eq i32 %i.mb, -1
  %.not.i.i14.i = select i1 %i.lz, i1 true, i1 %.not13.i.i.i61
  br i1 %.not.i.i14.i, label %bb.bk, label %bb.bj, !llvm.loop !26

bb.bk:                                            ; preds = %bb.bj
  %.neg.i.i.i.i62 = xor i32 %.0.i.i.i60, -1
  %i.mc = add i32 %i.ll, %.neg.i.i.i.i62          ; 2 uses
  %i.md = add i32 %i.mc, -131072
  %i.me = icmp ult i32 %i.md, -262143
  br i1 %i.me, label %bb.bl, label %fixjump.exit.i.i.i63

bb.bl:                                            ; preds = %bb.bk
  %i.mf = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !236 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 16
  %i.mi = load i32, ptr %i.mh, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.mg, ptr noundef nonnull @.str.150, i32 noundef %i.mi), !inline_history !457
  unreachable

fixjump.exit.i.i.i63:                             ; preds = %bb.bk
  %i.mj = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i59, i64 %i.lu
  %i.mk = and i32 %i.lw, 16383
  %i.ml = shl nsw i32 %i.mc, 14
  %i.mm = add i32 %i.ml, 2147467264
  %i.mn = or disjoint i32 %i.mm, %i.mk
  store i32 %i.mn, ptr %i.mj, align 4, !tbaa !162
  br label %luaK_jump.exit.i64

luaK_jump.exit.i64:                               ; preds = %fixjump.exit.i.i.i63, %bb.bi, %checknext.exit.i
  %.0.i.i65 = phi i32 [ %i.lq, %checknext.exit.i ], [ %i.lq, %fixjump.exit.i.i.i63 ], [ %i.ll, %bb.bi ] ; 4 uses
  %i.mo = load i32, ptr %31, align 8, !tbaa !238
  %i.mp = icmp eq i32 %32, %i.mo
  br i1 %i.mp, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %luaK_jump.exit.i64
  store i32 %32, ptr %33, align 4, !tbaa !239
  %i.mq = icmp eq i32 %.0.i.i65, -1
  br i1 %i.mq, label %luaK_patchlist.exit.i66, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mr = load i32, ptr %i.lk, align 8, !tbaa !162 ; 2 uses
  %i.ms = icmp eq i32 %i.mr, -1
  br i1 %i.ms, label %bb.bo, label %.preheader.i.i.i.i68

.preheader.i.i.i.i68:                             ; preds = %bb.bn
  %.val.i.i.i.i69 = load ptr, ptr %i.kp, align 8, !tbaa !232
  %i.mt = getelementptr i8, ptr %.val.i.i.i.i69, i64 24
  %.val.val.i.i.i.i70 = load ptr, ptr %i.mt, align 8, !tbaa !160 ; 2 uses
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  store i32 %.0.i.i65, ptr %i.lk, align 8, !tbaa !162
  br label %luaK_patchlist.exit.i66

bb.bp:                                            ; preds = %bb.bp, %.preheader.i.i.i.i68
  %.0.i.i.i.i71 = phi i32 [ %i.nb, %bb.bp ], [ %i.mr, %.preheader.i.i.i.i68 ] ; 3 uses
  %i.mu = sext i32 %.0.i.i.i.i71 to i64           ; 2 uses
  %i.mv = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i.i70, i64 %i.mu
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !162 ; 2 uses
  %i.mx = lshr i32 %i.mw, 14
  %i.my = add nsw i32 %i.mx, -131071              ; 2 uses
  %i.mz = icmp eq i32 %i.my, -1
  %i.na = add nuw nsw i32 %.0.i.i.i.i71, 1
  %i.nb = add nsw i32 %i.na, %i.my                ; 2 uses
  %.not13.i.i.i.i72 = icmp eq i32 %i.nb, -1
  %.not.i.i.i.i73 = select i1 %i.mz, i1 true, i1 %.not13.i.i.i.i72
  br i1 %.not.i.i.i.i73, label %bb.bq, label %bb.bp, !llvm.loop !26

bb.bq:                                            ; preds = %bb.bp
  %.neg.i.i.i.i.i74 = xor i32 %.0.i.i.i.i71, -1
  %i.nc = add i32 %.0.i.i65, %.neg.i.i.i.i.i74    ; 2 uses
  %i.nd = add i32 %i.nc, -131072
  %i.ne = icmp ult i32 %i.nd, -262143
  br i1 %i.ne, label %bb.br, label %fixjump.exit.i.i.i.i75

bb.br:                                            ; preds = %bb.bq
  %i.nf = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !236 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.ni = load i32, ptr %i.nh, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.ng, ptr noundef nonnull @.str.150, i32 noundef %i.ni), !inline_history !457
  unreachable

fixjump.exit.i.i.i.i75:                           ; preds = %bb.bq
  %i.nj = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i.i70, i64 %i.mu
  %i.nk = and i32 %i.mw, 16383
  %i.nl = shl nsw i32 %i.nc, 14
  %i.nm = add i32 %i.nl, 2147467264
  %i.nn = or disjoint i32 %i.nm, %i.nk
  store i32 %i.nn, ptr %i.nj, align 4, !tbaa !162
  br label %luaK_patchlist.exit.i66

bb.bs:                                            ; preds = %luaK_jump.exit.i64
  call fastcc void @patchlistaux(ptr noundef nonnull %i.kp, i32 noundef %.0.i.i65, i32 noundef %32, i32 noundef 255, i32 noundef %32), !inline_history !457
  br label %luaK_patchlist.exit.i66

luaK_patchlist.exit.i66:                          ; preds = %bb.bs, %fixjump.exit.i.i.i.i75, %bb.bo, %bb.bm
  call fastcc void @check_match(ptr noundef nonnull %0, i32 noundef 262, i32 noundef 277, i32 noundef %i.bk), !inline_history !457
  call fastcc void @leaveblock(ptr noundef nonnull %i.kp), !inline_history !457
  %i.no = load i32, ptr %31, align 8, !tbaa !238
  store i32 %i.no, ptr %33, align 4, !tbaa !239
  %i.np = icmp eq i32 %i.kt, -1
  br i1 %i.np, label %whilestat.exit, label %bb.bt

bb.bt:                                            ; preds = %luaK_patchlist.exit.i66
  %i.nq = load i32, ptr %i.lk, align 8, !tbaa !162 ; 2 uses
  %i.nr = icmp eq i32 %i.nq, -1
  br i1 %i.nr, label %bb.bu, label %.preheader.i.i15.i

.preheader.i.i15.i:                               ; preds = %bb.bt
  %.val.i.i16.i = load ptr, ptr %i.kp, align 8, !tbaa !232
  %i.ns = getelementptr i8, ptr %.val.i.i16.i, i64 24
  %.val.val.i.i17.i = load ptr, ptr %i.ns, align 8, !tbaa !160 ; 2 uses
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store i32 %i.kt, ptr %i.lk, align 8, !tbaa !162
  br label %whilestat.exit

bb.bv:                                            ; preds = %bb.bv, %.preheader.i.i15.i
  %.0.i.i18.i = phi i32 [ %i.oa, %bb.bv ], [ %i.nq, %.preheader.i.i15.i ] ; 3 uses
  %i.nt = sext i32 %.0.i.i18.i to i64             ; 2 uses
  %i.nu = getelementptr inbounds [4 x i8], ptr %.val.val.i.i17.i, i64 %i.nt
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !162 ; 2 uses
  %i.nw = lshr i32 %i.nv, 14
  %i.nx = add nsw i32 %i.nw, -131071              ; 2 uses
  %i.ny = icmp eq i32 %i.nx, -1
  %i.nz = add nuw nsw i32 %.0.i.i18.i, 1
  %i.oa = add nsw i32 %i.nz, %i.nx                ; 2 uses
  %.not13.i.i19.i = icmp eq i32 %i.oa, -1
  %.not.i.i20.i = select i1 %i.ny, i1 true, i1 %.not13.i.i19.i
  br i1 %.not.i.i20.i, label %bb.bw, label %bb.bv, !llvm.loop !26

bb.bw:                                            ; preds = %bb.bv
  %.neg.i.i.i21.i = xor i32 %.0.i.i18.i, -1
  %i.ob = add i32 %i.kt, %.neg.i.i.i21.i          ; 2 uses
  %i.oc = add i32 %i.ob, -131072
  %i.od = icmp ult i32 %i.oc, -262143
  br i1 %i.od, label %bb.bx, label %fixjump.exit.i.i22.i

bb.bx:                                            ; preds = %bb.bw
  %i.oe = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !236 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 16
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.of, ptr noundef nonnull @.str.150, i32 noundef %i.oh), !inline_history !457
  unreachable

fixjump.exit.i.i22.i:                             ; preds = %bb.bw
  %i.oi = getelementptr inbounds [4 x i8], ptr %.val.val.i.i17.i, i64 %i.nt
  %i.oj = and i32 %i.nv, 16383
  %i.ok = shl nsw i32 %i.ob, 14
  %i.ol = add i32 %i.ok, 2147467264
  %i.om = or disjoint i32 %i.ol, %i.oj
  store i32 %i.om, ptr %i.oi, align 4, !tbaa !162
  br label %whilestat.exit

whilestat.exit:                                   ; preds = %luaK_patchlist.exit.i66, %bb.bu, %fixjump.exit.i.i22.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #33
  br label %statement.exit

bb.by:                                            ; preds = %bb.d
  store i32 %i.bk, ptr %i.i, align 8, !tbaa !224
  %i.on = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i50 = icmp eq i32 %i.on, 287
  br i1 %.not.i50, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  br label %luaX_next.exit51

bb.ca:                                            ; preds = %bb.by
  %i.oo = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k)
  store i32 %i.oo, ptr %i.g, align 8, !tbaa !234
  br label %luaX_next.exit51

luaX_next.exit51:                                 ; preds = %bb.bz, %bb.ca
  %i.op = load ptr, ptr %i.l, align 8, !tbaa !222 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  store i32 -1, ptr %i.ag, align 8, !tbaa !247
  store i8 0, ptr %i.ah, align 2, !tbaa !248
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 74
  %i.or = load i8, ptr %i.oq, align 2, !tbaa !249
  store i8 %i.or, ptr %i.ai, align 4, !tbaa !250
  store i8 0, ptr %i.aj, align 1, !tbaa !251
  %i.os = getelementptr inbounds nuw i8, ptr %i.op, i64 40 ; 2 uses
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !241
  store ptr %i.ot, ptr %11, align 8, !tbaa !252
  store ptr %11, ptr %i.os, align 8, !tbaa !241
  call fastcc void @chunk(ptr noundef nonnull %0), !inline_history !461
  call fastcc void @leaveblock(ptr noundef %i.op), !inline_history !461
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #33
  call fastcc void @check_match(ptr noundef nonnull %0, i32 noundef 262, i32 noundef 259, i32 noundef %i.bk), !inline_history !462
  br label %statement.exit

bb.cb:                                            ; preds = %bb.d
  %i.ou = load ptr, ptr %i.l, align 8, !tbaa !222 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #33
  store i32 -1, ptr %i.aa, align 8, !tbaa !247
  store i8 1, ptr %i.ab, align 2, !tbaa !248
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 74
  %i.ow = load i8, ptr %i.ov, align 2, !tbaa !249
  store i8 %i.ow, ptr %i.ac, align 4, !tbaa !250
  store i8 0, ptr %i.ad, align 1, !tbaa !251
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 40 ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !241
  store ptr %i.oy, ptr %13, align 8, !tbaa !252
  store ptr %13, ptr %i.ox, align 8, !tbaa !241
  store i32 %i.bk, ptr %i.i, align 8, !tbaa !224
  %i.oz = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i.i43 = icmp eq i32 %i.oz, 287
  br i1 %.not.i.i43, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  %.pr = load i32, ptr %i.g, align 8, !tbaa !234
  br label %luaX_next.exit.i44

bb.cd:                                            ; preds = %bb.cb
  %i.pa = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k), !inline_history !463 ; 2 uses
  store i32 %i.pa, ptr %i.g, align 8, !tbaa !234
  br label %luaX_next.exit.i44

luaX_next.exit.i44:                               ; preds = %bb.cd, %bb.cc
  %i.pb = phi i32 [ %i.pa, %bb.cd ], [ %.pr, %bb.cc ]
  %.not.i.i.i45 = icmp eq i32 %i.pb, 285
  br i1 %.not.i.i.i45, label %check.exit.i.i46, label %bb.ce

bb.ce:                                            ; preds = %luaX_next.exit.i44
  %i.pc = load ptr, ptr %i.a, align 8, !tbaa !219
  %i.pd = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.pc, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.90), !inline_history !463
  %i.pe = load i32, ptr %i.g, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.pd, i32 noundef %i.pe), !inline_history !463
  unreachable

check.exit.i.i46:                                 ; preds = %luaX_next.exit.i44
  %i.pf = load ptr, ptr %i.k, align 8, !tbaa !81  ; 2 uses
  %i.pg = load i32, ptr %i.h, align 4, !tbaa !223
  store i32 %i.pg, ptr %i.i, align 8, !tbaa !224
  %i.ph = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i4.i.i47 = icmp eq i32 %i.ph, 287
  br i1 %.not.i4.i.i47, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %check.exit.i.i46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  %.pr166 = load i32, ptr %i.g, align 8, !tbaa !234
  br label %str_checkname.exit.i48

bb.cg:                                            ; preds = %check.exit.i.i46
  %i.pi = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k), !inline_history !463 ; 2 uses
  store i32 %i.pi, ptr %i.g, align 8, !tbaa !234
  br label %str_checkname.exit.i48

str_checkname.exit.i48:                           ; preds = %bb.cg, %bb.cf
  %i.pj = phi i32 [ %i.pi, %bb.cg ], [ %.pr166, %bb.cf ] ; 2 uses
  switch i32 %i.pj, label %bb.dl [
    i32 61, label %bb.ch
    i32 44, label %bb.cp
    i32 267, label %bb.cp
  ]

bb.ch:                                            ; preds = %str_checkname.exit.i48
  %i.pk = load ptr, ptr %i.l, align 8, !tbaa !222 ; 6 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 60 ; 4 uses
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !253
  %i.pn = call fastcc ptr @luaX_newstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.168, i64 noundef 11), !inline_history !464
  call fastcc void @new_localvar(ptr noundef nonnull %0, ptr noundef %i.pn, i32 noundef 0), !inline_history !464
  %i.po = call fastcc ptr @luaX_newstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.169, i64 noundef 11), !inline_history !464
  call fastcc void @new_localvar(ptr noundef nonnull %0, ptr noundef %i.po, i32 noundef 1), !inline_history !464
  %i.pp = call fastcc ptr @luaX_newstring(ptr noundef nonnull %0, ptr noundef nonnull @.str.170, i64 noundef 10), !inline_history !464
  call fastcc void @new_localvar(ptr noundef nonnull %0, ptr noundef %i.pp, i32 noundef 2), !inline_history !464
  call fastcc void @new_localvar(ptr noundef nonnull %0, ptr noundef %i.pf, i32 noundef 3), !inline_history !464
  call fastcc void @checknext(ptr noundef nonnull %0, i32 noundef 61), !inline_history !464
  call fastcc void @exp1(ptr noundef nonnull %0)
  call fastcc void @checknext(ptr noundef nonnull %0, i32 noundef 44), !inline_history !464
  call fastcc void @exp1(ptr noundef nonnull %0)
  %i.pq = load i32, ptr %i.g, align 8, !tbaa !234
  %i.pr = icmp eq i32 %i.pq, 44
  br i1 %i.pr, label %bb.ci, label %testnext.exit136

bb.ci:                                            ; preds = %bb.ch
  %i.ps = load i32, ptr %i.h, align 4, !tbaa !223
  store i32 %i.ps, ptr %i.i, align 8, !tbaa !224
  %i.pt = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i.i135 = icmp eq i32 %i.pt, 287
  br i1 %.not.i.i135, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.pu = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k)
  store i32 %i.pu, ptr %i.g, align 8, !tbaa !234
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck
end_hunk_0
begin_hunk_1_@chunk:bb.a
  %i.rr = call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.rq, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.74)
  %i.rs = load i32, ptr %i.g, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.rr, i32 noundef %i.rs)
  unreachable

check.exit.i:                                     ; preds = %forlist.exit.i
  %i.rt = load i32, ptr %i.h, align 4, !tbaa !223 ; 2 uses
  store i32 %i.rt, ptr %i.i, align 8, !tbaa !224
  %i.ru = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i2.i = icmp eq i32 %i.ru, 287
  br i1 %.not.i2.i, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %check.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  br label %checknext.exit

bb.cy:                                            ; preds = %check.exit.i
  %i.rv = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k)
  store i32 %i.rv, ptr %i.g, align 8, !tbaa !234
  %.pre450 = load i32, ptr %i.h, align 4, !tbaa !223
  br label %checknext.exit

checknext.exit:                                   ; preds = %bb.cx, %bb.cy
  %i.rw = phi i32 [ %i.rt, %bb.cx ], [ %.pre450, %bb.cy ]
  %i.rx = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %12, i32 noundef 0), !inline_history !467 ; 0 uses
  %i.ry = load i32, ptr %i.g, align 8, !tbaa !234
  %i.rz = icmp eq i32 %i.ry, 44
  br i1 %i.rz, label %.lr.ph334, label %explist1.exit

.lr.ph334:                                        ; preds = %checknext.exit, %luaK_exp2nextreg.exit.i119
  %.0.i113333 = phi i32 [ %i.tc, %luaK_exp2nextreg.exit.i119 ], [ 1, %checknext.exit ]
  %i.sa = load i32, ptr %i.h, align 4, !tbaa !223
  store i32 %i.sa, ptr %i.i, align 8, !tbaa !224
  %i.sb = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i.i.i122 = icmp eq i32 %i.sb, 287
  br i1 %.not.i.i.i122, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  br label %bb.db

bb.da:                                            ; preds = %.lr.ph334
  %i.sc = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k), !inline_history !468
  store i32 %i.sc, ptr %i.g, align 8, !tbaa !234
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da
  %i.sd = load ptr, ptr %i.l, align 8, !tbaa !222 ; 7 uses
  call fastcc void @luaK_dischargevars(ptr noundef %i.sd, ptr noundef nonnull %12), !inline_history !468
  %i.se = load i32, ptr %12, align 8, !tbaa !244
  %i.sf = icmp eq i32 %i.se, 12
  br i1 %i.sf, label %bb.dc, label %freeexp.exit.i.i117

bb.dc:                                            ; preds = %bb.db
  %i.sg = load i32, ptr %i.ae, align 8, !tbaa !81 ; 2 uses
  %i.sh = and i32 %i.sg, 256
  %.not.i.i.i.i120 = icmp eq i32 %i.sh, 0
  br i1 %.not.i.i.i.i120, label %bb.dd, label %freeexp.exit.i.i117

bb.dd:                                            ; preds = %bb.dc
  %i.si = getelementptr inbounds nuw i8, ptr %i.sd, i64 74
  %i.sj = load i8, ptr %i.si, align 2, !tbaa !249
  %i.sk = zext i8 %i.sj to i32
  %.not3.i.i.i.i121 = icmp slt i32 %i.sg, %i.sk
  br i1 %.not3.i.i.i.i121, label %freeexp.exit.i.i117, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sd, i64 60 ; 2 uses
  %i.sm = load i32, ptr %i.sl, align 4, !tbaa !253
  %i.sn = add nsw i32 %i.sm, -1
  store i32 %i.sn, ptr %i.sl, align 4, !tbaa !253
  br label %freeexp.exit.i.i117

freeexp.exit.i.i117:                              ; preds = %bb.de, %bb.dd, %bb.dc, %bb.db
  %i.so = getelementptr inbounds nuw i8, ptr %i.sd, i64 60 ; 2 uses
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !253 ; 4 uses
  %i.sq = add nsw i32 %i.sp, 1                    ; 2 uses
  %i.sr = load ptr, ptr %i.sd, align 8, !tbaa !232
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sr, i64 115 ; 2 uses
  %i.st = load i8, ptr %i.ss, align 1, !tbaa !182
  %i.su = zext i8 %i.st to i32
  %.not.i.i118 = icmp slt i32 %i.sp, %i.su
  br i1 %.not.i.i118, label %luaK_exp2nextreg.exit.i119, label %bb.df

bb.df:                                            ; preds = %freeexp.exit.i.i117
  %i.sv = icmp samesign ugt i32 %i.sp, 248
  br i1 %i.sv, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.sx = load ptr, ptr %i.sw, align 8, !tbaa !236 ; 2 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.sz = load i32, ptr %i.sy, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.sx, ptr noundef nonnull @.str.152, i32 noundef %i.sz), !inline_history !468
  unreachable

bb.dh:                                            ; preds = %bb.df
  %i.ta = trunc nuw i32 %i.sq to i8
  store i8 %i.ta, ptr %i.ss, align 1, !tbaa !182
  br label %luaK_exp2nextreg.exit.i119

luaK_exp2nextreg.exit.i119:                       ; preds = %bb.dh, %freeexp.exit.i.i117
  store i32 %i.sq, ptr %i.so, align 4, !tbaa !253
  call fastcc void @exp2reg(ptr noundef nonnull %i.sd, ptr noundef nonnull %12, i32 noundef %i.sp), !inline_history !468
  %i.tb = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %12, i32 noundef 0), !inline_history !467 ; 0 uses
  %i.tc = add nuw nsw i32 %.0.i113333, 1          ; 2 uses
  %i.td = load i32, ptr %i.g, align 8, !tbaa !234
  %i.te = icmp eq i32 %i.td, 44
  br i1 %i.te, label %.lr.ph334, label %explist1.exit, !llvm.loop !27

explist1.exit:                                    ; preds = %luaK_exp2nextreg.exit.i119, %checknext.exit
  %.0.i113.lcssa = phi i32 [ 1, %checknext.exit ], [ %i.tc, %luaK_exp2nextreg.exit.i119 ]
  %.val.i.i = load ptr, ptr %i.l, align 8, !tbaa !222
  call fastcc void @adjust_assign(ptr %.val.i.i, i32 noundef 3, i32 noundef %.0.i113.lcssa, ptr noundef %12), !inline_history !465
  %i.tf = load i32, ptr %i.qt, align 4, !tbaa !253 ; 2 uses
  %i.tg = add nsw i32 %i.tf, 3                    ; 2 uses
  %i.th = load ptr, ptr %i.qs, align 8, !tbaa !232
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 115 ; 2 uses
  %i.tj = load i8, ptr %i.ti, align 1, !tbaa !182
  %i.tk = zext i8 %i.tj to i32
  %i.tl = icmp sgt i32 %i.tg, %i.tk
  br i1 %i.tl, label %bb.di, label %luaK_checkstack.exit

bb.di:                                            ; preds = %explist1.exit
  %i.tm = icmp sgt i32 %i.tf, 246
  br i1 %i.tm, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.tn = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  %i.to = load ptr, ptr %i.tn, align 8, !tbaa !236 ; 2 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 16
  %i.tq = load i32, ptr %i.tp, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.to, ptr noundef nonnull @.str.152, i32 noundef %i.tq)
  unreachable

bb.dk:                                            ; preds = %bb.di
  %i.tr = trunc nuw i32 %i.tg to i8
  store i8 %i.tr, ptr %i.ti, align 1, !tbaa !182
  br label %luaK_checkstack.exit

luaK_checkstack.exit:                             ; preds = %explist1.exit, %bb.dk
  call fastcc void @forbody(ptr noundef nonnull %0, i32 noundef %i.qu, i32 noundef %i.rw, i32 noundef %.0.i.i49.lcssa, i32 noundef 0), !inline_history !465
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #33
  br label %forstat.exit

bb.dl:                                            ; preds = %str_checkname.exit.i48
  call fastcc void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.167, i32 noundef %i.pj), !inline_history !463
  unreachable

forstat.exit:                                     ; preds = %fornum.exit.i, %luaK_checkstack.exit
  call fastcc void @check_match(ptr noundef nonnull %0, i32 noundef 262, i32 noundef 264, i32 noundef %i.bk), !inline_history !463
  call fastcc void @leaveblock(ptr noundef %i.ou), !inline_history !463
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #33
  br label %statement.exit

bb.dm:                                            ; preds = %bb.d
  %i.ts = load ptr, ptr %i.l, align 8, !tbaa !222 ; 12 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %i.ts, i64 48
  %i.tu = load i32, ptr %i.tt, align 8, !tbaa !238 ; 9 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.ts, i64 52
  store i32 %i.tu, ptr %i.tv, align 4, !tbaa !239
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #33
  store i32 -1, ptr %i.r, align 8, !tbaa !247
  store i8 1, ptr %i.s, align 2, !tbaa !248
  %i.tw = getelementptr inbounds nuw i8, ptr %i.ts, i64 74
  %i.tx = load i8, ptr %i.tw, align 2, !tbaa !249 ; 2 uses
  store i8 %i.tx, ptr %i.t, align 4, !tbaa !250
  store i8 0, ptr %i.u, align 1, !tbaa !251
  %i.ty = getelementptr inbounds nuw i8, ptr %i.ts, i64 40 ; 2 uses
  %i.tz = load ptr, ptr %i.ty, align 8, !tbaa !241
  store ptr %i.tz, ptr %15, align 8, !tbaa !252
  store i32 -1, ptr %i.v, align 8, !tbaa !247
  store i8 0, ptr %i.w, align 2, !tbaa !248
  store i8 %i.tx, ptr %i.x, align 4, !tbaa !250
  store i8 0, ptr %i.y, align 1, !tbaa !251
  store ptr %15, ptr %16, align 8, !tbaa !252
  store ptr %16, ptr %i.ty, align 8, !tbaa !241
  store i32 %i.bk, ptr %i.i, align 8, !tbaa !224
  %i.ua = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i.i37 = icmp eq i32 %i.ua, 287
  br i1 %.not.i.i37, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  br label %luaX_next.exit.i38

bb.do:                                            ; preds = %bb.dm
  %i.ub = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k), !inline_history !469
  store i32 %i.ub, ptr %i.g, align 8, !tbaa !234
  br label %luaX_next.exit.i38

luaX_next.exit.i38:                               ; preds = %bb.do, %bb.dn
  call fastcc void @chunk(ptr noundef nonnull %0), !inline_history !469
  call fastcc void @check_match(ptr noundef nonnull %0, i32 noundef 276, i32 noundef 272, i32 noundef %i.bk), !inline_history !469
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #33
  %i.uc = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %14, i32 noundef 0), !inline_history !470 ; 0 uses
  %37 = load i32, ptr %14, align 8, !tbaa !244    ; 2 uses
  %38 = icmp eq i32 %37, 1
  %spec.store.select701 = select i1 %38, i32 3, i32 %37
  store i32 %spec.store.select701, ptr %14, align 8, !tbaa !244
  %39 = load ptr, ptr %i.l, align 8, !tbaa !222
  call fastcc void @luaK_goiftrue(ptr noundef %39, ptr noundef %14), !inline_history !471
  %i.ud = load i32, ptr %i.z, align 4, !tbaa !245 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #33
  %40 = load i8, ptr %i.y, align 1, !tbaa !251
  %.not.i39.a = icmp eq i8 %40, 0
  br i1 %.not.i39.a, label %bb.dp, label %bb.dx

bb.dp:                                            ; preds = %luaX_next.exit.i38
  call fastcc void @leaveblock(ptr noundef nonnull %i.ts), !inline_history !469
  %i.ue = load ptr, ptr %i.l, align 8, !tbaa !222 ; 6 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ue, i64 48
  %i.ug = load i32, ptr %i.uf, align 8, !tbaa !238
  %i.uh = icmp eq i32 %i.tu, %i.ug
  br i1 %i.uh, label %bb.dq, label %bb.dw

bb.dq:                                            ; preds = %bb.dp
  %i.ui = getelementptr inbounds nuw i8, ptr %i.ue, i64 52
  store i32 %i.tu, ptr %i.ui, align 4, !tbaa !239
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ue, i64 56 ; 2 uses
  %i.uk = icmp eq i32 %i.ud, -1
  br i1 %i.uk, label %repeatstat.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.ul = load i32, ptr %i.uj, align 8, !tbaa !162 ; 2 uses
  %i.um = icmp eq i32 %i.ul, -1
  br i1 %i.um, label %bb.ds, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.dr
  %.val.i.i.i.i = load ptr, ptr %i.ue, align 8, !tbaa !232
  %i.un = getelementptr i8, ptr %.val.i.i.i.i, i64 24
  %.val.val.i.i.i.i = load ptr, ptr %i.un, align 8, !tbaa !160 ; 2 uses
  br label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  store i32 %i.ud, ptr %i.uj, align 8, !tbaa !162
  br label %repeatstat.exit

bb.dt:                                            ; preds = %bb.dt, %.preheader.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.uv, %bb.dt ], [ %i.ul, %.preheader.i.i.i.i ] ; 3 uses
  %i.uo = sext i32 %.0.i.i.i.i to i64             ; 2 uses
  %i.up = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i.i, i64 %i.uo
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !162 ; 2 uses
  %i.ur = lshr i32 %i.uq, 14
  %i.us = add nsw i32 %i.ur, -131071              ; 2 uses
  %i.ut = icmp eq i32 %i.us, -1
  %i.uu = add nuw nsw i32 %.0.i.i.i.i, 1
  %i.uv = add nsw i32 %i.uu, %i.us                ; 2 uses
  %.not13.i.i.i.i = icmp eq i32 %i.uv, -1
  %.not.i.i.i.i42 = select i1 %i.ut, i1 true, i1 %.not13.i.i.i.i
  br i1 %.not.i.i.i.i42, label %bb.du, label %bb.dt, !llvm.loop !26

bb.du:                                            ; preds = %bb.dt
  %.neg.i.i.i.i.i = xor i32 %.0.i.i.i.i, -1
  %i.uw = add i32 %i.ud, %.neg.i.i.i.i.i          ; 2 uses
  %i.ux = add i32 %i.uw, -131072
  %i.uy = icmp ult i32 %i.ux, -262143
  br i1 %i.uy, label %bb.dv, label %fixjump.exit.i.i.i.i

bb.dv:                                            ; preds = %bb.du
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ue, i64 24
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !236 ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %i.vc = load i32, ptr %i.vb, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.va, ptr noundef nonnull @.str.150, i32 noundef %i.vc), !inline_history !469
  unreachable

fixjump.exit.i.i.i.i:                             ; preds = %bb.du
  %i.vd = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i.i, i64 %i.uo
  %i.ve = and i32 %i.uq, 16383
  %i.vf = shl nsw i32 %i.uw, 14
  %i.vg = add i32 %i.vf, 2147467264
  %i.vh = or disjoint i32 %i.vg, %i.ve
  store i32 %i.vh, ptr %i.vd, align 4, !tbaa !162
  br label %repeatstat.exit

bb.dw:                                            ; preds = %bb.dp
  call fastcc void @patchlistaux(ptr noundef nonnull %i.ue, i32 noundef %i.ud, i32 noundef %i.tu, i32 noundef 255, i32 noundef %i.tu), !inline_history !469
  br label %repeatstat.exit

bb.dx:                                            ; preds = %luaX_next.exit.i38
  call fastcc void @breakstat(ptr noundef nonnull %0), !inline_history !469
  %i.vi = load ptr, ptr %i.l, align 8, !tbaa !222 ; 5 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 48
  %i.vk = load i32, ptr %i.vj, align 8, !tbaa !238
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vi, i64 52
  store i32 %i.vk, ptr %i.vl, align 4, !tbaa !239
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vi, i64 56 ; 2 uses
  %i.vn = icmp eq i32 %i.ud, -1
  br i1 %i.vn, label %luaK_patchtohere.exit.i, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.vo = load i32, ptr %i.vm, align 8, !tbaa !162 ; 2 uses
  %i.vp = icmp eq i32 %i.vo, -1
  br i1 %i.vp, label %bb.dz, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.dy
  %.val.i.i.i = load ptr, ptr %i.vi, align 8, !tbaa !232
  %i.vq = getelementptr i8, ptr %.val.i.i.i, i64 24
  %.val.val.i.i.i = load ptr, ptr %i.vq, align 8, !tbaa !160 ; 2 uses
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  store i32 %i.ud, ptr %i.vm, align 8, !tbaa !162
  br label %luaK_patchtohere.exit.i

bb.ea:                                            ; preds = %bb.ea, %.preheader.i.i.i
  %.0.i.i.i = phi i32 [ %i.vy, %bb.ea ], [ %i.vo, %.preheader.i.i.i ] ; 3 uses
  %i.vr = sext i32 %.0.i.i.i to i64               ; 2 uses
  %i.vs = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i, i64 %i.vr
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !162 ; 2 uses
  %i.vu = lshr i32 %i.vt, 14
  %i.vv = add nsw i32 %i.vu, -131071              ; 2 uses
  %i.vw = icmp eq i32 %i.vv, -1
  %i.vx = add nuw nsw i32 %.0.i.i.i, 1
  %i.vy = add nsw i32 %i.vx, %i.vv                ; 2 uses
  %.not13.i.i.i = icmp eq i32 %i.vy, -1
  %.not.i.i.i40 = select i1 %i.vw, i1 true, i1 %.not13.i.i.i
  br i1 %.not.i.i.i40, label %bb.eb, label %bb.ea, !llvm.loop !26

bb.eb:                                            ; preds = %bb.ea
  %.neg.i.i.i.i = xor i32 %.0.i.i.i, -1
  %i.vz = add i32 %i.ud, %.neg.i.i.i.i            ; 2 uses
  %i.wa = add i32 %i.vz, -131072
  %i.wb = icmp ult i32 %i.wa, -262143
  br i1 %i.wb, label %bb.ec, label %fixjump.exit.i.i.i

bb.ec:                                            ; preds = %bb.eb
  %i.wc = getelementptr inbounds nuw i8, ptr %i.vi, i64 24
  %i.wd = load ptr, ptr %i.wc, align 8, !tbaa !236 ; 2 uses
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 16
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.wd, ptr noundef nonnull @.str.150, i32 noundef %i.wf), !inline_history !469
  unreachable

fixjump.exit.i.i.i:                               ; preds = %bb.eb
  %i.wg = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i, i64 %i.vr
  %i.wh = and i32 %i.vt, 16383
  %i.wi = shl nsw i32 %i.vz, 14
  %i.wj = add i32 %i.wi, 2147467264
  %i.wk = or disjoint i32 %i.wj, %i.wh
  store i32 %i.wk, ptr %i.wg, align 4, !tbaa !162
  br label %luaK_patchtohere.exit.i

luaK_patchtohere.exit.i:                          ; preds = %fixjump.exit.i.i.i, %bb.dz, %bb.dx
  call fastcc void @leaveblock(ptr noundef nonnull %i.ts), !inline_history !469
  %i.wl = load ptr, ptr %i.l, align 8, !tbaa !222 ; 6 uses
  %i.wm = getelementptr inbounds nuw i8, ptr %i.ts, i64 56 ; 2 uses
  %i.wn = load i32, ptr %i.wm, align 8, !tbaa !240 ; 3 uses
  store i32 -1, ptr %i.wm, align 8, !tbaa !240
  %i.wo = getelementptr inbounds nuw i8, ptr %i.ts, i64 24
  %i.wp = load ptr, ptr %i.wo, align 8, !tbaa !236
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.wr = load i32, ptr %i.wq, align 8, !tbaa !224
  %i.ws = call fastcc i32 @luaK_code(ptr noundef nonnull %i.ts, i32 noundef 2147450902, i32 noundef %i.wr), !inline_history !469 ; 4 uses
  %i.wt = icmp eq i32 %i.wn, -1
  br i1 %i.wt, label %luaK_jump.exit.i, label %bb.ed

bb.ed:                                            ; preds = %luaK_patchtohere.exit.i
  %i.wu = icmp eq i32 %i.ws, -1
  br i1 %i.wu, label %luaK_jump.exit.i, label %.preheader.i.i20.i

.preheader.i.i20.i:                               ; preds = %bb.ed
  %.val.i.i21.i = load ptr, ptr %i.ts, align 8, !tbaa !232
  %i.wv = getelementptr i8, ptr %.val.i.i21.i, i64 24
  %.val.val.i.i22.i = load ptr, ptr %i.wv, align 8, !tbaa !160 ; 2 uses
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ee, %.preheader.i.i20.i
  %.0.i.i23.i = phi i32 [ %i.xd, %bb.ee ], [ %i.ws, %.preheader.i.i20.i ] ; 3 uses
  %i.ww = sext i32 %.0.i.i23.i to i64             ; 2 uses
  %i.wx = getelementptr inbounds [4 x i8], ptr %.val.val.i.i22.i, i64 %i.ww
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !162 ; 2 uses
  %i.wz = lshr i32 %i.wy, 14
  %i.xa = add nsw i32 %i.wz, -131071              ; 2 uses
  %i.xb = icmp eq i32 %i.xa, -1
  %i.xc = add nuw nsw i32 %.0.i.i23.i, 1
  %i.xd = add nsw i32 %i.xc, %i.xa                ; 2 uses
  %.not13.i.i24.i = icmp eq i32 %i.xd, -1
  %.not.i.i25.i = select i1 %i.xb, i1 true, i1 %.not13.i.i24.i
  br i1 %.not.i.i25.i, label %bb.ef, label %bb.ee, !llvm.loop !26

bb.ef:                                            ; preds = %bb.ee
  %.neg.i.i.i26.i = xor i32 %.0.i.i23.i, -1
  %i.xe = add i32 %i.wn, %.neg.i.i.i26.i          ; 2 uses
  %i.xf = add i32 %i.xe, -131072
  %i.xg = icmp ult i32 %i.xf, -262143
  br i1 %i.xg, label %bb.eg, label %fixjump.exit.i.i27.i

bb.eg:                                            ; preds = %bb.ef
  %i.xh = getelementptr inbounds nuw i8, ptr %i.ts, i64 24
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !236 ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.xi, i64 16
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.xi, ptr noundef nonnull @.str.150, i32 noundef %i.xk), !inline_history !469
  unreachable

fixjump.exit.i.i27.i:                             ; preds = %bb.ef
  %i.xl = getelementptr inbounds [4 x i8], ptr %.val.val.i.i22.i, i64 %i.ww
  %i.xm = and i32 %i.wy, 16383
  %i.xn = shl nsw i32 %i.xe, 14
  %i.xo = add i32 %i.xn, 2147467264
  %i.xp = or disjoint i32 %i.xo, %i.xm
  store i32 %i.xp, ptr %i.xl, align 4, !tbaa !162
  br label %luaK_jump.exit.i

luaK_jump.exit.i:                                 ; preds = %fixjump.exit.i.i27.i, %bb.ed, %luaK_patchtohere.exit.i
  %.0.i.i41 = phi i32 [ %i.ws, %luaK_patchtohere.exit.i ], [ %i.ws, %fixjump.exit.i.i27.i ], [ %i.wn, %bb.ed ] ; 4 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.wl, i64 48
  %i.xr = load i32, ptr %i.xq, align 8, !tbaa !238
  %i.xs = icmp eq i32 %i.tu, %i.xr
  br i1 %i.xs, label %bb.eh, label %bb.en

bb.eh:                                            ; preds = %luaK_jump.exit.i
  %i.xt = getelementptr inbounds nuw i8, ptr %i.wl, i64 52
  store i32 %i.tu, ptr %i.xt, align 4, !tbaa !239
  %i.xu = getelementptr inbounds nuw i8, ptr %i.wl, i64 56 ; 2 uses
  %i.xv = icmp eq i32 %.0.i.i41, -1
  br i1 %i.xv, label %repeatstat.exit, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.xw = load i32, ptr %i.xu, align 8, !tbaa !162 ; 2 uses
  %i.xx = icmp eq i32 %i.xw, -1
  br i1 %i.xx, label %bb.ej, label %.preheader.i.i.i28.i

.preheader.i.i.i28.i:                             ; preds = %bb.ei
  %.val.i.i.i29.i = load ptr, ptr %i.wl, align 8, !tbaa !232
  %i.xy = getelementptr i8, ptr %.val.i.i.i29.i, i64 24
  %.val.val.i.i.i30.i = load ptr, ptr %i.xy, align 8, !tbaa !160 ; 2 uses
  br label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  store i32 %.0.i.i41, ptr %i.xu, align 8, !tbaa !162
  br label %repeatstat.exit

bb.ek:                                            ; preds = %bb.ek, %.preheader.i.i.i28.i
  %.0.i.i.i31.i = phi i32 [ %i.yg, %bb.ek ], [ %i.xw, %.preheader.i.i.i28.i ] ; 3 uses
  %i.xz = sext i32 %.0.i.i.i31.i to i64           ; 2 uses
  %i.ya = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i30.i, i64 %i.xz
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !162 ; 2 uses
  %i.yc = lshr i32 %i.yb, 14
  %i.yd = add nsw i32 %i.yc, -131071              ; 2 uses
  %i.ye = icmp eq i32 %i.yd, -1
  %i.yf = add nuw nsw i32 %.0.i.i.i31.i, 1
  %i.yg = add nsw i32 %i.yf, %i.yd                ; 2 uses
  %.not13.i.i.i32.i = icmp eq i32 %i.yg, -1
  %.not.i.i.i33.i = select i1 %i.ye, i1 true, i1 %.not13.i.i.i32.i
  br i1 %.not.i.i.i33.i, label %bb.el, label %bb.ek, !llvm.loop !26

bb.el:                                            ; preds = %bb.ek
  %.neg.i.i.i.i34.i = xor i32 %.0.i.i.i31.i, -1
  %i.yh = add i32 %.0.i.i41, %.neg.i.i.i.i34.i    ; 2 uses
  %i.yi = add i32 %i.yh, -131072
  %i.yj = icmp ult i32 %i.yi, -262143
  br i1 %i.yj, label %bb.em, label %fixjump.exit.i.i.i35.i

bb.em:                                            ; preds = %bb.el
  %i.yk = getelementptr inbounds nuw i8, ptr %i.wl, i64 24
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !236 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 16
  %i.yn = load i32, ptr %i.ym, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.yl, ptr noundef nonnull @.str.150, i32 noundef %i.yn), !inline_history !469
  unreachable

fixjump.exit.i.i.i35.i:                           ; preds = %bb.el
  %i.yo = getelementptr inbounds [4 x i8], ptr %.val.val.i.i.i30.i, i64 %i.xz
  %i.yp = and i32 %i.yb, 16383
  %i.yq = shl nsw i32 %i.yh, 14
  %i.yr = add i32 %i.yq, 2147467264
  %i.ys = or disjoint i32 %i.yr, %i.yp
  store i32 %i.ys, ptr %i.yo, align 4, !tbaa !162
  br label %repeatstat.exit

bb.en:                                            ; preds = %luaK_jump.exit.i
  call fastcc void @patchlistaux(ptr noundef nonnull %i.wl, i32 noundef %.0.i.i41, i32 noundef %i.tu, i32 noundef 255, i32 noundef %i.tu), !inline_history !469
  br label %repeatstat.exit

repeatstat.exit:                                  ; preds = %bb.eh, %bb.ej, %fixjump.exit.i.i.i35.i, %bb.en, %bb.dq, %bb.ds, %fixjump.exit.i.i.i.i, %bb.dw
  call fastcc void @leaveblock(ptr noundef nonnull %i.ts), !inline_history !469
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #33
  br label %statement.exit

bb.eo:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  store i32 %i.bk, ptr %i.i, align 8, !tbaa !224
  %i.yt = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i.i33 = icmp eq i32 %i.yt, 287
  br i1 %.not.i.i33, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  br label %luaX_next.exit.i34

bb.eq:                                            ; preds = %bb.eo
  %i.yu = call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k), !inline_history !472
  store i32 %i.yu, ptr %i.g, align 8, !tbaa !234
  br label %luaX_next.exit.i34

luaX_next.exit.i34:                               ; preds = %bb.eq, %bb.ep
  call fastcc void @singlevar(ptr noundef nonnull %0, ptr noundef nonnull %17), !inline_history !472
  br label %bb.er

bb.er:                                            ; preds = %bb.es, %luaX_next.exit.i34
  %i.yv = load i32, ptr %i.g, align 8, !tbaa !234
  switch i32 %i.yv, label %funcstat.exit [
    i32 46, label %bb.es
    i32 58, label %.critedge191
  ]

bb.es:                                            ; preds = %bb.er
  call fastcc void @field(ptr noundef nonnull %0, ptr noundef nonnull %17), !inline_history !472
  br label %bb.er, !llvm.loop !473

.critedge191:                                     ; preds = %bb.er
  call fastcc void @field(ptr noundef nonnull %0, ptr noundef nonnull %17), !inline_history !472
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call fastcc void @open_func(ptr noundef nonnull %0, ptr noundef %6), !inline_history !474
  %i.yw = load ptr, ptr %6, align 8, !tbaa !232
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 96
  store i32 %i.bk, ptr %i.yx, align 8, !tbaa !211
end_hunk_1
begin_hunk_2_@checknext:bb.a
  %.not.i2 = icmp eq i32 %i.x, 287
  br i1 %.not.i2, label %bb.h, label %bb.g

bb.g:                                             ; preds = %check.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.w, align 8, !tbaa !220
  br label %luaX_next.exit

bb.h:                                             ; preds = %check.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.y)
  store i32 %i.z, ptr %i.a, align 8, !tbaa !234
  br label %luaX_next.exit

luaX_next.exit:                                   ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @luaK_goiftrue(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @luaK_dischargevars(ptr noundef %0, ptr noundef %1)
  %i.a = load i32, ptr %1, align 8, !tbaa !244
  switch i32 %i.a, label %bb.e [
    i32 4, label %luaK_concat.exit
    i32 5, label %luaK_concat.exit
    i32 2, label %luaK_concat.exit
    i32 10, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !232
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %.val13 = load i32, ptr %i.b, align 8, !tbaa !81 ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.c, align 8, !tbaa !160
  %i.d = sext i32 %.val13 to i64
  %i.e = getelementptr inbounds [4 x i8], ptr %.val.val, i64 %i.d ; 3 uses
  %i.f = icmp sgt i32 %.val13, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !162  ; 2 uses
  %i.i = and i32 %i.h, 63
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = and i64 %i.k, 266027925503
  %.not.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.not.i.i, label %invertjump.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !162
  br label %invertjump.exit

invertjump.exit:                                  ; preds = %bb.c, %bb.d
  %i.m = phi i32 [ %.pre.i, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %.0.i.i = phi ptr [ %i.e, %bb.d ], [ %i.g, %bb.c ]
  %i.n = and i32 %i.m, -16321
  %i.o = and i32 %i.m, 16320
  %.not.i = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not.i, i32 64, i32 0
  %i.q = or disjoint i32 %i.p, %i.n
  store i32 %i.q, ptr %.0.i.i, align 4, !tbaa !162
  %i.r = load i32, ptr %i.b, align 8, !tbaa !81
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.s = tail call fastcc i32 @jumponcond(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %invertjump.exit
  %.0 = phi i32 [ %i.s, %bb.e ], [ %i.r, %invertjump.exit ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.u = icmp eq i32 %.0, -1
  br i1 %i.u, label %luaK_concat.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %i.t, align 4, !tbaa !162  ; 2 uses
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %.val.i = load ptr, ptr %0, align 8, !tbaa !232
  %i.x = getelementptr i8, ptr %.val.i, i64 24
  %.val.val.i = load ptr, ptr %i.x, align 8, !tbaa !160 ; 2 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %.0, ptr %i.t, align 4, !tbaa !162
  br label %luaK_concat.exit

bb.i:                                             ; preds = %bb.i, %.preheader.i
  %.0.i = phi i32 [ %i.af, %bb.i ], [ %i.v, %.preheader.i ] ; 3 uses
  %i.y = sext i32 %.0.i to i64                    ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !162 ; 2 uses
  %i.ab = lshr i32 %i.aa, 14
  %i.ac = add nsw i32 %i.ab, -131071              ; 2 uses
  %i.ad = icmp eq i32 %i.ac, -1
  %i.ae = add nuw nsw i32 %.0.i, 1
  %i.af = add nsw i32 %i.ae, %i.ac                ; 2 uses
  %.not13.i = icmp eq i32 %i.af, -1
  %.not.i14 = select i1 %i.ad, i1 true, i1 %.not13.i
  br i1 %.not.i14, label %bb.j, label %bb.i, !llvm.loop !26

bb.j:                                             ; preds = %bb.i
  %.neg.i.i = xor i32 %.0.i, -1
  %i.ag = add i32 %.0, %.neg.i.i                  ; 2 uses
  %i.ah = add i32 %i.ag, -131072
  %i.ai = icmp ult i32 %i.ah, -262143
  br i1 %i.ai, label %bb.k, label %fixjump.exit.i

bb.k:                                             ; preds = %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !236 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.ak, ptr noundef nonnull @.str.150, i32 noundef %i.am)
  unreachable

fixjump.exit.i:                                   ; preds = %bb.j
  %i.an = getelementptr inbounds [4 x i8], ptr %.val.val.i, i64 %i.y
  %i.ao = and i32 %i.aa, 16383
  %i.ap = shl nsw i32 %i.ag, 14
  %i.aq = add i32 %i.ap, 2147467264
  %i.ar = or disjoint i32 %i.aq, %i.ao
  store i32 %i.ar, ptr %i.an, align 4, !tbaa !162
  br label %luaK_concat.exit

luaK_concat.exit:                                 ; preds = %bb.a, %bb.a, %bb.a, %bb.f, %bb.h, %fixjump.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !255 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load i32, ptr %i.au, align 8, !tbaa !238
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !239
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ay = icmp eq i32 %i.at, -1
  br i1 %i.ay, label %luaK_patchtohere.exit, label %bb.l

bb.l:                                             ; preds = %luaK_concat.exit
  %i.az = load i32, ptr %i.ax, align 8, !tbaa !162 ; 2 uses
  %i.ba = icmp eq i32 %i.az, -1
  br i1 %i.ba, label %bb.m, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.l
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !232
  %i.bb = getelementptr i8, ptr %.val.i.i, i64 24
  %.val.val.i.i = load ptr, ptr %i.bb, align 8, !tbaa !160 ; 2 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.at, ptr %i.ax, align 8, !tbaa !162
  br label %luaK_patchtohere.exit

bb.n:                                             ; preds = %bb.n, %.preheader.i.i
  %.0.i.i15 = phi i32 [ %i.bj, %bb.n ], [ %i.az, %.preheader.i.i ] ; 3 uses
  %i.bc = sext i32 %.0.i.i15 to i64               ; 2 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !162 ; 2 uses
  %i.bf = lshr i32 %i.be, 14
  %i.bg = add nsw i32 %i.bf, -131071              ; 2 uses
  %i.bh = icmp eq i32 %i.bg, -1
  %i.bi = add nuw nsw i32 %.0.i.i15, 1
  %i.bj = add nsw i32 %i.bi, %i.bg                ; 2 uses
  %.not13.i.i = icmp eq i32 %i.bj, -1
  %.not.i.i = select i1 %i.bh, i1 true, i1 %.not13.i.i
  br i1 %.not.i.i, label %bb.o, label %bb.n, !llvm.loop !26

bb.o:                                             ; preds = %bb.n
  %.neg.i.i.i = xor i32 %.0.i.i15, -1
  %i.bk = add i32 %i.at, %.neg.i.i.i              ; 2 uses
  %i.bl = add i32 %i.bk, -131072
  %i.bm = icmp ult i32 %i.bl, -262143
  br i1 %i.bm, label %bb.p, label %fixjump.exit.i.i

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !236 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.bo, ptr noundef nonnull @.str.150, i32 noundef %i.bq)
  unreachable

fixjump.exit.i.i:                                 ; preds = %bb.o
  %i.br = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.bc
  %i.bs = and i32 %i.be, 16383
  %i.bt = shl nsw i32 %i.bk, 14
  %i.bu = add i32 %i.bt, 2147467264
  %i.bv = or disjoint i32 %i.bu, %i.bs
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !162
  br label %luaK_patchtohere.exit

luaK_patchtohere.exit:                            ; preds = %luaK_concat.exit, %bb.m, %fixjump.exit.i.i
  store i32 -1, ptr %i.as, align 8, !tbaa !255
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 16) i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull captures(none) %1, i32 noundef range(i32 0, 256) %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.lua_TValue, align 8         ; 6 uses
  %4 = alloca %struct.FuncState, align 8          ; 6 uses
  %5 = alloca %struct.expdesc, align 8            ; 7 uses
  %6 = alloca %struct.expdesc, align 8            ; 38 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !219
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !116
  %i.e = add i16 %i.d, 1                          ; 2 uses
  store i16 %i.e, ptr %i.c, align 8, !tbaa !116
  %i.f = icmp ugt i16 %i.e, 200
  br i1 %i.f, label %bb.b, label %enterlevel.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.148, i32 noundef 0)
  unreachable

enterlevel.exit:                                  ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !234
  switch i32 %i.h, label %bb.aq [
    i32 270, label %bb.e
    i32 45, label %bb.c
    i32 35, label %bb.d
    i32 284, label %bb.ae
    i32 286, label %bb.af
    i32 269, label %bb.ag
    i32 275, label %bb.ah
    i32 263, label %bb.ai
    i32 279, label %bb.aj
    i32 123, label %bb.am
    i32 265, label %bb.an
  ]

bb.c:                                             ; preds = %enterlevel.exit
  br label %bb.e

bb.d:                                             ; preds = %enterlevel.exit
  br label %bb.e

bb.e:                                             ; preds = %enterlevel.exit, %bb.d, %bb.c
  %.0.i.ph = phi i32 [ 1, %enterlevel.exit ], [ 0, %bb.c ], [ 2, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !223
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !224
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !220
  %.not.i = icmp eq i32 %i.m, 287
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.l, align 8, !tbaa !220
  br label %luaX_next.exit

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.n)
  store i32 %i.o, ptr %i.g, align 8, !tbaa !234
  br label %luaX_next.exit

luaX_next.exit:                                   ; preds = %bb.f, %bb.g
  %i.p = tail call fastcc i32 @subexpr(ptr noundef %0, ptr noundef %1, i32 noundef 8) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !222  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 20
  store i32 -1, ptr %i.s, align 4, !tbaa !245
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 -1, ptr %i.t, align 8, !tbaa !255
  store i32 5, ptr %5, align 8, !tbaa !244
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double 0.000000e+00, ptr %i.u, align 8, !tbaa !81
  switch i32 %.0.i.ph, label %default.unreachable125 [
    i32 0, label %bb.h
    i32 1, label %bb.j
    i32 2, label %codenot.exit.sink.split.sink.split.i
  ]

bb.h:                                             ; preds = %luaX_next.exit
  %i.v = load i32, ptr %1, align 8, !tbaa !244
  %i.w = icmp eq i32 %i.v, 5
  br i1 %i.w, label %bb.i, label %codenot.exit.sink.split.sink.split.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load i32, ptr %i.x, align 8, !tbaa !255
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %isnumeral.exit.i, label %codenot.exit.sink.split.sink.split.i

isnumeral.exit.i:                                 ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !245
  %.not.i28 = icmp eq i32 %i.ab, -1
  br i1 %.not.i28, label %codenot.exit.sink.split.i, label %codenot.exit.sink.split.sink.split.i

bb.j:                                             ; preds = %luaX_next.exit
  tail call fastcc void @luaK_dischargevars(ptr noundef %i.r, ptr noundef nonnull %1)
  %i.ac = load i32, ptr %1, align 8, !tbaa !244
  switch i32 %i.ac, label %bb.v [
    i32 1, label %bb.k
    i32 3, label %bb.k
    i32 4, label %bb.l
    i32 5, label %bb.l
    i32 2, label %bb.l
    i32 10, label %bb.m
    i32 12, label %discharge2anyreg.exit.thread.i.i
    i32 11, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  store i32 2, ptr %1, align 8, !tbaa !244
  br label %bb.v

bb.l:                                             ; preds = %bb.j, %bb.j, %bb.j
  store i32 3, ptr %1, align 8, !tbaa !244
  br label %bb.v

bb.m:                                             ; preds = %bb.j
  %.val.i.i = load ptr, ptr %i.r, align 8, !tbaa !232
  %i.ad = getelementptr i8, ptr %1, i64 8
  %.val23.i.i = load i32, ptr %i.ad, align 8, !tbaa !81 ; 2 uses
  %i.ae = getelementptr i8, ptr %.val.i.i, i64 24
  %.val.val.i.i = load ptr, ptr %i.ae, align 8, !tbaa !160
  %i.af = sext i32 %.val23.i.i to i64
  %i.ag = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.af ; 3 uses
  %i.ah = icmp sgt i32 %.val23.i.i, 0
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -4 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !162 ; 2 uses
  %i.ak = and i32 %i.aj, 63
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = shl nuw i64 1, %i.al
  %i.an = and i64 %i.am, 266027925503
  %.not.not.i.i.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.not.i.i.i.i, label %invertjump.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pre.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !162
  br label %invertjump.exit.i.i

invertjump.exit.i.i:                              ; preds = %bb.o, %bb.n
  %i.ao = phi i32 [ %.pre.i.i.i, %bb.o ], [ %i.aj, %bb.n ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %i.ag, %bb.o ], [ %i.ai, %bb.n ]
  %i.ap = and i32 %i.ao, -16321
  %i.aq = and i32 %i.ao, 16320
  %.not.i.i.i = icmp eq i32 %i.aq, 0
  %i.ar = select i1 %.not.i.i.i, i32 64, i32 0
  %i.as = or disjoint i32 %i.ar, %i.ap
  store i32 %i.as, ptr %.0.i.i.i.i, align 4, !tbaa !162
  br label %bb.v

bb.p:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 60 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !253 ; 4 uses
  %i.av = add nsw i32 %i.au, 1                    ; 2 uses
  %i.aw = load ptr, ptr %i.r, align 8, !tbaa !232
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 115 ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !182
  %i.az = zext i8 %i.ay to i32
  %.not5.i.i.i = icmp slt i32 %i.au, %i.az
  br i1 %.not5.i.i.i, label %discharge2anyreg.exit.i.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = icmp samesign ugt i32 %i.au, 248
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !236 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.bc, ptr noundef nonnull @.str.152, i32 noundef %i.be)
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bf = trunc nuw i32 %i.av to i8
  store i8 %i.bf, ptr %i.ax, align 1, !tbaa !182
  br label %discharge2anyreg.exit.i.i

discharge2anyreg.exit.i.i:                        ; preds = %bb.s, %bb.p
  store i32 %i.av, ptr %i.at, align 4, !tbaa !253
  tail call fastcc void @discharge2reg(ptr noundef nonnull %i.r, ptr noundef nonnull %1, i32 noundef %i.au)
  %.pre.i.i = load i32, ptr %1, align 8, !tbaa !244
  %i.bg = icmp eq i32 %.pre.i.i, 12
  br i1 %i.bg, label %discharge2anyreg.exit.thread.i.i, label %freeexp.exit.i.i

discharge2anyreg.exit.thread.i.i:                 ; preds = %discharge2anyreg.exit.i.i, %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !81 ; 2 uses
  %i.bj = and i32 %i.bi, 256
  %.not.i.i.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i.i, label %bb.t, label %freeexp.exit.i.i

bb.t:                                             ; preds = %discharge2anyreg.exit.thread.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 74
end_hunk_2
begin_hunk_3_@addk:bb.a
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [16 x i8], ptr %i.ae, i64 %i.bc ; 2 uses
  %i.be = load i64, ptr %2, align 8, !tbaa !81
  store i64 %i.be, ptr %i.bd, align 8, !tbaa !81
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !99 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !99
  %i.bi = icmp sgt i32 %i.bg, 3
  br i1 %i.bi, label %bb.k, label %luaC_barrierf.exit

bb.k:                                             ; preds = %._crit_edge
  %i.bj = load ptr, ptr %2, align 8, !tbaa !81    ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 9
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !81
  %i.bm = and i8 %i.bl, 3
  %.not37 = icmp eq i8 %i.bm, 0
  br i1 %.not37, label %luaC_barrierf.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 9 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !81  ; 2 uses
  %i.bp = and i8 %i.bo, 4
  %.not38 = icmp eq i8 %i.bp, 0
  br i1 %.not38, label %luaC_barrierf.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr i8, ptr %i.b, i64 32
  %.val = load ptr, ptr %i.bq, align 8, !tbaa !68 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val, i64 33
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !85
  %i.bt = icmp eq i8 %i.bs, 1
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @reallymarkobject(ptr noundef nonnull %.val, ptr noundef nonnull %i.bj)
  br label %luaC_barrierf.exit

bb.o:                                             ; preds = %bb.m
  %i.bu = and i8 %i.bo, -8
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !67
  %i.bx = and i8 %i.bw, 3
  %i.by = or disjoint i8 %i.bx, %i.bu
  store i8 %i.by, ptr %i.bn, align 1, !tbaa !81
  br label %luaC_barrierf.exit

luaC_barrierf.exit:                               ; preds = %bb.o, %bb.n, %bb.l, %bb.k, %._crit_edge
  %i.bz = load i32, ptr %i.t, align 8, !tbaa !261 ; 2 uses
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %i.t, align 8, !tbaa !261
  br label %bb.p

bb.p:                                             ; preds = %luaC_barrierf.exit, %bb.g
  %.0 = phi i32 [ %i.s, %bb.g ], [ %i.bz, %luaC_barrierf.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @luaK_exp2RK(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lua_TValue, align 8         ; 6 uses
  %3 = alloca %struct.lua_TValue, align 8         ; 6 uses
  %4 = alloca %struct.lua_TValue, align 8         ; 5 uses
  %5 = alloca %struct.lua_TValue, align 8         ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !255
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !245
  %.not.i = icmp eq i32 %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef nonnull %1) ; 0 uses
  br label %luaK_exp2val.exit

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @luaK_dischargevars(ptr noundef %0, ptr noundef nonnull %1)
  br label %luaK_exp2val.exit

luaK_exp2val.exit:                                ; preds = %bb.b, %bb.c
  %i.f = load i32, ptr %1, align 8, !tbaa !244    ; 3 uses
  switch i32 %i.f, label %bb.l [
    i32 5, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 1, label %bb.d
    i32 4, label %bb.j
  ]

bb.d:                                             ; preds = %luaK_exp2val.exit, %luaK_exp2val.exit, %luaK_exp2val.exit, %luaK_exp2val.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i32, ptr %i.g, align 8, !tbaa !261
  %i.i = icmp slt i32 %i.h, 256
  br i1 %i.i, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  switch i32 %i.f, label %bb.h [
    i32 1, label %bb.f
    i32 5, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 0, ptr %i.j, align 8, !tbaa !99
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !242
  store ptr %i.l, ptr %4, align 8, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 5, ptr %i.m, align 8, !tbaa !99
  %i.n = call fastcc i32 @addk(ptr noundef nonnull %0, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load double, ptr %i.o, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store double %i.p, ptr %3, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 3, ptr %i.q, align 8, !tbaa !99
  %i.r = call fastcc i32 @addk(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.s = icmp eq i32 %i.f, 2
  %i.t = zext i1 %i.s to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store i32 %i.t, ptr %2, align 8, !tbaa !81
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 1, ptr %i.u, align 8, !tbaa !99
  %i.v = call fastcc i32 @addk(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %i.w = phi i32 [ %i.n, %bb.f ], [ %i.r, %bb.g ], [ %i.v, %bb.h ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.w, ptr %i.x, align 8, !tbaa !81
  store i32 4, ptr %1, align 8, !tbaa !244
  %i.y = or i32 %i.w, 256
  br label %bb.m

bb.j:                                             ; preds = %luaK_exp2val.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !81  ; 2 uses
  %i.ab = icmp slt i32 %i.aa, 256
  br i1 %i.ab, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ac = or i32 %i.aa, 256
  br label %bb.m

bb.l:                                             ; preds = %luaK_exp2val.exit, %bb.j, %bb.d
  %i.ad = tail call fastcc i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i
  %.0 = phi i32 [ %i.ad, %bb.l ], [ %i.y, %bb.i ], [ %i.ac, %bb.k ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @constructor(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ConsControl, align 8        ; 23 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222  ; 25 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !223
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 10 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !236
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !224
  %i.i = tail call fastcc i32 @luaK_code(ptr noundef %i.b, i32 noundef 10, i32 noundef %i.h) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  store i32 0, ptr %i.j, align 8, !tbaa !516
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i32 0, ptr %i.k, align 8, !tbaa !269
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 36 ; 11 uses
  store i32 0, ptr %i.l, align 4, !tbaa !517
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %1, ptr %i.m, align 8, !tbaa !270
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 -1, ptr %i.n, align 8, !tbaa !255
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 -1, ptr %i.o, align 4, !tbaa !245
  store i32 11, ptr %1, align 8, !tbaa !244
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 %i.i, ptr %i.p, align 8, !tbaa !81
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 -1, ptr %i.q, align 8, !tbaa !255
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 -1, ptr %i.r, align 4, !tbaa !245
  store i32 0, ptr %2, align 8, !tbaa !244
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store i32 0, ptr %i.s, align 8, !tbaa !81
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !222  ; 7 uses
  tail call fastcc void @luaK_dischargevars(ptr noundef %i.t, ptr noundef nonnull %1)
  %i.u = load i32, ptr %1, align 8, !tbaa !244
  %i.v = icmp eq i32 %i.u, 12
  br i1 %i.v, label %bb.b, label %freeexp.exit.i

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %i.p, align 8, !tbaa !81   ; 2 uses
  %i.x = and i32 %i.w, 256
  %.not.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i, label %bb.c, label %freeexp.exit.i

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 74
  %i.z = load i8, ptr %i.y, align 2, !tbaa !249
  %i.aa = zext i8 %i.z to i32
  %.not3.i.i.i = icmp slt i32 %i.w, %i.aa
  br i1 %.not3.i.i.i, label %freeexp.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 60 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !253
  %i.ad = add nsw i32 %i.ac, -1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !253
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 60 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !253 ; 4 uses
  %i.ag = add nsw i32 %i.af, 1                    ; 2 uses
  %i.ah = load ptr, ptr %i.t, align 8, !tbaa !232
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 115 ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !182
  %i.ak = zext i8 %i.aj to i32
  %.not.i = icmp slt i32 %i.af, %i.ak
  br i1 %.not.i, label %luaK_exp2nextreg.exit, label %bb.e

bb.e:                                             ; preds = %freeexp.exit.i
  %i.al = icmp samesign ugt i32 %i.af, 248
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !236 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.an, ptr noundef nonnull @.str.152, i32 noundef %i.ap)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aq = trunc nuw i32 %i.ag to i8
  store i8 %i.aq, ptr %i.ai, align 1, !tbaa !182
  br label %luaK_exp2nextreg.exit

luaK_exp2nextreg.exit:                            ; preds = %freeexp.exit.i, %bb.g
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !253
  tail call fastcc void @exp2reg(ptr noundef nonnull %i.t, ptr noundef nonnull %1, i32 noundef %i.af)
  tail call fastcc void @checknext(ptr noundef %0, i32 noundef 123)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !234 ; 2 uses
  %i.at = icmp eq i32 %i.as, 125
  br i1 %i.at, label %testnext.exit36.thread, label %.lr.ph

.lr.ph:                                           ; preds = %luaK_exp2nextreg.exit
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 74
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %.critedge.backedge
  %i.ba = phi i32 [ %i.as, %.lr.ph ], [ %i.eb, %.critedge.backedge ]
  %i.bb = load i32, ptr %2, align 8, !tbaa !518
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %closelistfield.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @luaK_dischargevars(ptr noundef %i.b, ptr noundef nonnull %2)
  %i.bd = load i32, ptr %2, align 8, !tbaa !244
  %i.be = icmp eq i32 %i.bd, 12
  br i1 %i.be, label %bb.j, label %freeexp.exit.i.ithread-pre-split

bb.j:                                             ; preds = %bb.i
  %i.bf = load i32, ptr %i.s, align 8, !tbaa !81  ; 2 uses
  %i.bg = and i32 %i.bf, 256
  %.not.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %freeexp.exit.i.ithread-pre-split

bb.k:                                             ; preds = %bb.j
  %i.bh = load i8, ptr %i.au, align 2, !tbaa !249
  %i.bi = zext i8 %i.bh to i32
  %.not3.i.i.i.i = icmp slt i32 %i.bf, %i.bi
  br i1 %.not3.i.i.i.i, label %freeexp.exit.i.ithread-pre-split, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = load i32, ptr %i.av, align 4, !tbaa !253
  %i.bk = add nsw i32 %i.bj, -1                   ; 2 uses
  store i32 %i.bk, ptr %i.av, align 4, !tbaa !253
  br label %freeexp.exit.i.i

freeexp.exit.i.ithread-pre-split:                 ; preds = %bb.i, %bb.j, %bb.k
  %.pr79 = load i32, ptr %i.av, align 4, !tbaa !253
  br label %freeexp.exit.i.i

freeexp.exit.i.i:                                 ; preds = %freeexp.exit.i.ithread-pre-split, %bb.l
  %i.bl = phi i32 [ %.pr79, %freeexp.exit.i.ithread-pre-split ], [ %i.bk, %bb.l ] ; 4 uses
  %i.bm = add nsw i32 %i.bl, 1                    ; 2 uses
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 115 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !182
  %i.bq = zext i8 %i.bp to i32
  %.not.i.i = icmp slt i32 %i.bl, %i.bq
  br i1 %.not.i.i, label %luaK_exp2nextreg.exit.i, label %bb.m

bb.m:                                             ; preds = %freeexp.exit.i.i
  %i.br = icmp samesign ugt i32 %i.bl, 248
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = load ptr, ptr %i.e, align 8, !tbaa !236 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.bs, ptr noundef nonnull @.str.152, i32 noundef %i.bu)
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.bv = trunc nuw i32 %i.bm to i8
  store i8 %i.bv, ptr %i.bo, align 1, !tbaa !182
  br label %luaK_exp2nextreg.exit.i

luaK_exp2nextreg.exit.i:                          ; preds = %bb.o, %freeexp.exit.i.i
  store i32 %i.bm, ptr %i.av, align 4, !tbaa !253
  call fastcc void @exp2reg(ptr noundef nonnull %i.b, ptr noundef nonnull %2, i32 noundef %i.bl)
  store i32 0, ptr %2, align 8, !tbaa !518
  %i.bw = load i32, ptr %i.j, align 8, !tbaa !516
  %i.bx = icmp eq i32 %i.bw, 50
  br i1 %i.bx, label %bb.p, label %closelistfield.exitthread-pre-split

bb.p:                                             ; preds = %luaK_exp2nextreg.exit.i
  %i.by = load ptr, ptr %i.m, align 8, !tbaa !270
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !81 ; 2 uses
  %i.cb = load i32, ptr %i.l, align 4, !tbaa !517 ; 2 uses
  %i.cc = add nsw i32 %i.cb, -1
  %i.cd = sdiv i32 %i.cc, 50
  %i.ce = add nsw i32 %i.cd, 1                    ; 2 uses
  %i.cf = icmp slt i32 %i.cb, 25551
  %i.cg = shl i32 %i.ca, 6                        ; 2 uses
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ch = shl i32 %i.ce, 14
  %i.ci = or i32 %i.cg, %i.ch
  %i.cj = or i32 %i.ci, 419430434
  br label %luaK_setlist.exit.i

bb.r:                                             ; preds = %bb.p
  %i.ck = or i32 %i.cg, 419430434
  %i.cl = load ptr, ptr %i.e, align 8, !tbaa !236
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !224
  %3 = tail call fastcc i32 @luaK_code(ptr noundef nonnull %i.b, i32 noundef %i.ck, i32 noundef %i.cn) ; 0 uses
  br label %luaK_setlist.exit.i

luaK_setlist.exit.i:                              ; preds = %bb.r, %bb.q
  %.sink.i.i = phi i32 [ %i.ce, %bb.r ], [ %i.cj, %bb.q ]
  %.sink17.i.i = load ptr, ptr %i.e, align 8, !tbaa !236
  %i.co = getelementptr inbounds nuw i8, ptr %.sink17.i.i, i64 8
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !224
  %4 = tail call fastcc i32 @luaK_code(ptr noundef nonnull %i.b, i32 noundef %.sink.i.i, i32 noundef %i.cp) ; 0 uses
  %i.cq = add nsw i32 %i.ca, 1
  store i32 %i.cq, ptr %i.av, align 4, !tbaa !253
  store i32 0, ptr %i.j, align 8, !tbaa !516
  br label %closelistfield.exitthread-pre-split

closelistfield.exitthread-pre-split:              ; preds = %luaK_setlist.exit.i, %luaK_exp2nextreg.exit.i
  %.pr = load i32, ptr %i.ar, align 8, !tbaa !234
  br label %closelistfield.exit

closelistfield.exit:                              ; preds = %closelistfield.exitthread-pre-split, %bb.h
  %i.cr = phi i32 [ %.pr, %closelistfield.exitthread-pre-split ], [ %i.ba, %bb.h ]
  switch i32 %i.cr, label %bb.aa [
    i32 285, label %bb.s
    i32 91, label %bb.z
  ]

bb.s:                                             ; preds = %closelistfield.exit
  %5 = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.ax) ; 2 uses
  store i32 %5, ptr %i.aw, align 8, !tbaa !220
  %.not = icmp eq i32 %5, 61
  br i1 %.not, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0), !inline_history !513 ; 0 uses
  %i.ct = load i32, ptr %i.l, align 4, !tbaa !517 ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, 2147483645
  br i1 %i.cu, label %bb.u, label %listfield.exit

bb.u:                                             ; preds = %bb.t
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !222 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !232
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 96
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !211 ; 2 uses
  %i.cz = icmp eq i32 %i.cy, 0
  %i.da = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !237 ; 2 uses
  br i1 %i.cz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %6 = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.db, ptr noundef nonnull @.str.155, i32 noundef 2147483645, ptr noundef nonnull @.str.154)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %7 = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.db, ptr noundef nonnull @.str.156, i32 noundef %i.cy, i32 noundef 2147483645, ptr noundef nonnull @.str.154)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dc = phi ptr [ %6, %bb.v ], [ %7, %bb.w ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !236
  tail call fastcc void @luaX_lexerror(ptr noundef %i.de, ptr noundef nonnull %i.dc, i32 noundef 0)
  unreachable

listfield.exit:                                   ; preds = %bb.t
  %i.df = add nsw i32 %i.ct, 1
  store i32 %i.df, ptr %i.l, align 4, !tbaa !517
  %i.dg = load i32, ptr %i.j, align 8, !tbaa !516
  %i.dh = add nsw i32 %i.dg, 1
  store i32 %i.dh, ptr %i.j, align 8, !tbaa !516
  br label %bb.af

bb.y:                                             ; preds = %bb.s
  call fastcc void @recfield(ptr noundef %0, ptr noundef %2)
  br label %bb.af

bb.z:                                             ; preds = %closelistfield.exit
  call fastcc void @recfield(ptr noundef %0, ptr noundef %2)
  br label %bb.af

bb.aa:                                            ; preds = %closelistfield.exit
  %i.di = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0), !inline_history !513 ; 0 uses
  %i.dj = load i32, ptr %i.l, align 4, !tbaa !517 ; 2 uses
  %i.dk = icmp sgt i32 %i.dj, 2147483645
  br i1 %i.dk, label %bb.ab, label %listfield.exit32

bb.ab:                                            ; preds = %bb.aa
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !222 ; 3 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !232
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 96
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !211 ; 2 uses
  %i.dp = icmp eq i32 %i.do, 0
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !237 ; 2 uses
  br i1 %i.dp, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %8 = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.dr, ptr noundef nonnull @.str.155, i32 noundef 2147483645, ptr noundef nonnull @.str.154)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %9 = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.dr, ptr noundef nonnull @.str.156, i32 noundef %i.do, i32 noundef 2147483645, ptr noundef nonnull @.str.154)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ds = phi ptr [ %8, %bb.ac ], [ %9, %bb.ad ]
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !236
  tail call fastcc void @luaX_lexerror(ptr noundef %i.du, ptr noundef nonnull %i.ds, i32 noundef 0)
  unreachable

listfield.exit32:                                 ; preds = %bb.aa
  %i.dv = add nsw i32 %i.dj, 1
  store i32 %i.dv, ptr %i.l, align 4, !tbaa !517
  %i.dw = load i32, ptr %i.j, align 8, !tbaa !516
  %i.dx = add nsw i32 %i.dw, 1
  store i32 %i.dx, ptr %i.j, align 8, !tbaa !516
  br label %bb.af

bb.af:                                            ; preds = %bb.z, %listfield.exit32, %bb.y, %listfield.exit
  %i.dy = load i32, ptr %i.ar, align 8, !tbaa !234
  switch i32 %i.dy, label %testnext.exit36.thread [
    i32 44, label %bb.ag
    i32 59, label %bb.ai
  ]

bb.ag:                                            ; preds = %bb.af
  %i.dz = load i32, ptr %i.c, align 4, !tbaa !223
  store i32 %i.dz, ptr %i.ay, align 8, !tbaa !224
  %i.ea = load i32, ptr %i.aw, align 8, !tbaa !220
  %.not.i.i33 = icmp eq i32 %i.ea, 287
  br i1 %.not.i.i33, label %bb.ah, label %.critedge.backedgethread-pre-split

bb.ah:                                            ; preds = %bb.ag
  %10 = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.az) ; 2 uses
  store i32 %10, ptr %i.ar, align 8, !tbaa !234
  br label %.critedge.backedge

.critedge.backedgethread-pre-split:               ; preds = %bb.ag, %bb.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  store i32 287, ptr %i.aw, align 8, !tbaa !220
  %.pr80 = load i32, ptr %i.ar, align 8, !tbaa !234
  br label %.critedge.backedge

.critedge.backedge:                               ; preds = %.critedge.backedgethread-pre-split, %bb.aj, %bb.ah
  %i.eb = phi i32 [ %.pr80, %.critedge.backedgethread-pre-split ], [ %11, %bb.aj ], [ %10, %bb.ah ] ; 2 uses
  %i.ec = icmp eq i32 %i.eb, 125
  br i1 %i.ec, label %testnext.exit36.thread, label %bb.h, !llvm.loop !514

bb.ai:                                            ; preds = %bb.af
  %i.ed = load i32, ptr %i.c, align 4, !tbaa !223
  store i32 %i.ed, ptr %i.ay, align 8, !tbaa !224
  %i.ee = load i32, ptr %i.aw, align 8, !tbaa !220
  %.not.i.i35 = icmp eq i32 %i.ee, 287
  br i1 %.not.i.i35, label %bb.aj, label %.critedge.backedgethread-pre-split

bb.aj:                                            ; preds = %bb.ai
  %11 = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.az) ; 2 uses
  store i32 %11, ptr %i.ar, align 8, !tbaa !234
  br label %.critedge.backedge

testnext.exit36.thread:                           ; preds = %.critedge.backedge, %bb.af, %luaK_exp2nextreg.exit
  tail call fastcc void @check_match(ptr noundef %0, i32 noundef 125, i32 noundef 123, i32 noundef %i.d)
  %i.ef = load i32, ptr %i.j, align 8, !tbaa !516 ; 2 uses
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %lastlistfield.exit, label %bb.ak

bb.ak:                                            ; preds = %testnext.exit36.thread
  %i.eh = load i32, ptr %2, align 8, !tbaa !518
  switch i32 %i.eh, label %bb.as [
    i32 0, label %bb.az
    i32 13, label %bb.al
    i32 14, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ei = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !160
  %i.el = load i32, ptr %i.s, align 8, !tbaa !81
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ek, i64 %i.em ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !162
  %i.ep = and i32 %i.eo, -8372225
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !162
  br label %luaK_setreturns.exit.i

bb.am:                                            ; preds = %bb.ak
  %i.eq = load ptr, ptr %i.b, align 8, !tbaa !232 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !160 ; 2 uses
  %i.et = load i32, ptr %i.s, align 8, !tbaa !81  ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.eu ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !162
  %i.ex = and i32 %i.ew, 8388607
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !162
  %i.ey = sext i32 %i.et to i64
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.ey ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !162
  %i.fb = and i32 %i.fa, -16321
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !253
  %i.fe = shl i32 %i.fd, 6
  %i.ff = and i32 %i.fe, 16320
  %i.fg = or disjoint i32 %i.ff, %i.fb
  store i32 %i.fg, ptr %i.ez, align 4, !tbaa !162
  %i.fh = load i32, ptr %i.fc, align 4, !tbaa !253 ; 3 uses
  %i.fi = add nsw i32 %i.fh, 1                    ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.eq, i64 115 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !182
  %i.fl = zext i8 %i.fk to i32
  %.not.i.i37 = icmp slt i32 %i.fh, %i.fl
  br i1 %.not.i.i37, label %luaK_reserveregs.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fm = icmp samesign ugt i32 %i.fh, 248
  br i1 %i.fm, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fn = load ptr, ptr %i.e, align 8, !tbaa !236 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.fn, ptr noundef nonnull @.str.152, i32 noundef %i.fp)
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.fq = trunc nuw i32 %i.fi to i8
  store i8 %i.fq, ptr %i.fj, align 1, !tbaa !182
  br label %luaK_reserveregs.exit.i.i

luaK_reserveregs.exit.i.i:                        ; preds = %bb.ap, %bb.am
  store i32 %i.fi, ptr %i.fc, align 4, !tbaa !253
  br label %luaK_setreturns.exit.i

luaK_setreturns.exit.i:                           ; preds = %luaK_reserveregs.exit.i.i, %bb.al
  %i.fr = load ptr, ptr %i.m, align 8, !tbaa !270
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load i32, ptr %i.fs, align 8, !tbaa !81 ; 2 uses
  %i.fu = load i32, ptr %i.l, align 4, !tbaa !517 ; 2 uses
  %i.fv = add nsw i32 %i.fu, -1
  %i.fw = sdiv i32 %i.fv, 50
  %i.fx = add nsw i32 %i.fw, 1                    ; 2 uses
  %i.fy = icmp slt i32 %i.fu, 25551
  %i.fz = shl i32 %i.ft, 6                        ; 2 uses
  br i1 %i.fy, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %luaK_setreturns.exit.i
  %i.ga = shl i32 %i.fx, 14
  %i.gb = or i32 %i.fz, %i.ga
  %i.gc = or disjoint i32 %i.gb, 34
  br label %luaK_setlist.exit.i38

bb.ar:                                            ; preds = %luaK_setreturns.exit.i
  %i.gd = or disjoint i32 %i.fz, 34
  %i.ge = load ptr, ptr %i.e, align 8, !tbaa !236
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load i32, ptr %i.gf, align 8, !tbaa !224
  %12 = tail call fastcc i32 @luaK_code(ptr noundef nonnull %i.b, i32 noundef %i.gd, i32 noundef %i.gg) ; 0 uses
  br label %luaK_setlist.exit.i38

luaK_setlist.exit.i38:                            ; preds = %bb.ar, %bb.aq
  %.sink.i.i40 = phi i32 [ %i.fx, %bb.ar ], [ %i.gc, %bb.aq ]
  %.sink17.i.i41 = load ptr, ptr %i.e, align 8, !tbaa !236
  %i.gh = getelementptr inbounds nuw i8, ptr %.sink17.i.i41, i64 8
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !224
  %13 = tail call fastcc i32 @luaK_code(ptr noundef nonnull %i.b, i32 noundef %.sink.i.i40, i32 noundef %i.gi) ; 0 uses
  %i.gj = add nsw i32 %i.ft, 1
  %i.gk = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %i.gj, ptr %i.gk, align 4, !tbaa !253
  %i.gl = load i32, ptr %i.l, align 4, !tbaa !517
  %i.gm = add nsw i32 %i.gl, -1
  store i32 %i.gm, ptr %i.l, align 4, !tbaa !517
  br label %lastlistfield.exit

bb.as:                                            ; preds = %bb.ak
  call fastcc void @luaK_dischargevars(ptr noundef %i.b, ptr noundef nonnull %2)
  %i.gn = load i32, ptr %2, align 8, !tbaa !244
  %i.go = icmp eq i32 %i.gn, 12
  br i1 %i.go, label %bb.at, label %freeexp.exit.i.i42

bb.at:                                            ; preds = %bb.as
  %i.gp = load i32, ptr %i.s, align 8, !tbaa !81  ; 2 uses
  %i.gq = and i32 %i.gp, 256
  %.not.i.i.i.i44 = icmp eq i32 %i.gq, 0
  br i1 %.not.i.i.i.i44, label %bb.au, label %freeexp.exit.i.i42

bb.au:                                            ; preds = %bb.at
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 74
  %i.gs = load i8, ptr %i.gr, align 2, !tbaa !249
  %i.gt = zext i8 %i.gs to i32
  %.not3.i.i.i.i45 = icmp slt i32 %i.gp, %i.gt
  br i1 %.not3.i.i.i.i45, label %freeexp.exit.i.i42, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gu = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !253
  %i.gw = add nsw i32 %i.gv, -1
  store i32 %i.gw, ptr %i.gu, align 4, !tbaa !253
  br label %freeexp.exit.i.i42

freeexp.exit.i.i42:                               ; preds = %bb.av, %bb.au, %bb.at, %bb.as
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !253 ; 4 uses
  %i.gz = add nsw i32 %i.gy, 1                    ; 2 uses
  %i.ha = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 115 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !182
  %i.hd = zext i8 %i.hc to i32
  %.not.i16.i = icmp slt i32 %i.gy, %i.hd
  br i1 %.not.i16.i, label %luaK_exp2nextreg.exit.i43, label %bb.aw

bb.aw:                                            ; preds = %freeexp.exit.i.i42
  %i.he = icmp samesign ugt i32 %i.gy, 248
  br i1 %i.he, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.hf = load ptr, ptr %i.e, align 8, !tbaa !236 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.hf, ptr noundef nonnull @.str.152, i32 noundef %i.hh)
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %i.hi = trunc nuw i32 %i.gz to i8
  store i8 %i.hi, ptr %i.hb, align 1, !tbaa !182
  br label %luaK_exp2nextreg.exit.i43

luaK_exp2nextreg.exit.i43:                        ; preds = %bb.ay, %freeexp.exit.i.i42
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !253
  call fastcc void @exp2reg(ptr noundef nonnull %i.b, ptr noundef nonnull %2, i32 noundef %i.gy)
  %.pre.i = load i32, ptr %i.j, align 8, !tbaa !516
  br label %bb.az

bb.az:                                            ; preds = %luaK_exp2nextreg.exit.i43, %bb.ak
  %i.hj = phi i32 [ %i.ef, %bb.ak ], [ %.pre.i, %luaK_exp2nextreg.exit.i43 ] ; 2 uses
  %i.hk = load ptr, ptr %i.m, align 8, !tbaa !270
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !81 ; 2 uses
  %i.hn = load i32, ptr %i.l, align 4, !tbaa !517 ; 2 uses
  %i.ho = add nsw i32 %i.hn, -1
  %i.hp = sdiv i32 %i.ho, 50
  %i.hq = add nsw i32 %i.hp, 1                    ; 2 uses
  %i.hr = icmp eq i32 %i.hj, -1
  %i.hs = icmp slt i32 %i.hn, 25551
  %i.ht = shl i32 %i.hm, 6                        ; 2 uses
  %i.hu = shl i32 %i.hj, 23
  %i.hv = select i1 %i.hr, i32 0, i32 %i.hu       ; 2 uses
  br i1 %i.hs, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hw = shl i32 %i.hq, 14
  %i.hx = or i32 %i.ht, %i.hw
  %i.hy = or i32 %i.hx, %i.hv
  %i.hz = or disjoint i32 %i.hy, 34
  br label %luaK_setlist.exit21.i

bb.bb:                                            ; preds = %bb.az
  %i.ia = or i32 %i.hv, %i.ht
  %i.ib = or disjoint i32 %i.ia, 34
  %i.ic = load ptr, ptr %i.e, align 8, !tbaa !236
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 8
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !224
  %14 = tail call fastcc i32 @luaK_code(ptr noundef %i.b, i32 noundef %i.ib, i32 noundef %i.ie) ; 0 uses
  br label %luaK_setlist.exit21.i

luaK_setlist.exit21.i:                            ; preds = %bb.bb, %bb.ba
  %.sink.i19.i = phi i32 [ %i.hq, %bb.bb ], [ %i.hz, %bb.ba ]
  %.sink17.i20.i = load ptr, ptr %i.e, align 8, !tbaa !236
  %i.if = getelementptr inbounds nuw i8, ptr %.sink17.i20.i, i64 8
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !224
  %15 = tail call fastcc i32 @luaK_code(ptr noundef %i.b, i32 noundef %.sink.i19.i, i32 noundef %i.ig) ; 0 uses
  %i.ih = add nsw i32 %i.hm, 1
  %i.ii = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %i.ih, ptr %i.ii, align 4, !tbaa !253
  br label %lastlistfield.exit

lastlistfield.exit:                               ; preds = %testnext.exit36.thread, %luaK_setlist.exit.i38, %luaK_setlist.exit21.i
  %i.ij = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !160
  %i.im = sext i32 %i.i to i64
  %i.in = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.im ; 3 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !162
  %i.ip = and i32 %i.io, 8388607
  %i.iq = load i32, ptr %i.l, align 4, !tbaa !517 ; 3 uses
  %i.ir = icmp ugt i32 %i.iq, 15
  br i1 %i.ir, label %.lr.ph.i, label %luaO_int2fb.exit

.lr.ph.i:                                         ; preds = %lastlistfield.exit, %.lr.ph.i
  %.011.i = phi i32 [ %i.iu, %.lr.ph.i ], [ 0, %lastlistfield.exit ]
  %.0810.i = phi i32 [ %i.it, %.lr.ph.i ], [ %i.iq, %lastlistfield.exit ]
  %i.is = add i32 %.0810.i, 1                     ; 2 uses
  %i.it = lshr i32 %i.is, 1                       ; 2 uses
  %i.iu = add nuw nsw i32 %.011.i, 1              ; 2 uses
  %i.iv = icmp ugt i32 %i.is, 31
  br i1 %i.iv, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !515

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.iw = shl i32 %i.iu, 3
  %i.ix = add i32 %i.iw, 8
  br label %luaO_int2fb.exit

luaO_int2fb.exit:                                 ; preds = %lastlistfield.exit, %._crit_edge.loopexit.i
  %.08.lcssa.i = phi i32 [ %i.iq, %lastlistfield.exit ], [ %i.it, %._crit_edge.loopexit.i ] ; 3 uses
  %.0.lcssa.i = phi i32 [ 8, %lastlistfield.exit ], [ %i.ix, %._crit_edge.loopexit.i ]
  %i.iy = icmp samesign ult i32 %.08.lcssa.i, 8
  %i.iz = add nuw i32 %.08.lcssa.i, 504
  %i.ja = or i32 %.0.lcssa.i, %i.iz
  %.09.i = select i1 %i.iy, i32 %.08.lcssa.i, i32 %i.ja
  %i.jb = shl i32 %.09.i, 23
  %i.jc = or disjoint i32 %i.jb, %i.ip            ; 2 uses
  store i32 %i.jc, ptr %i.in, align 4, !tbaa !162
  %i.jd = load i32, ptr %i.k, align 8, !tbaa !269 ; 3 uses
  %i.je = icmp ugt i32 %i.jd, 15
  br i1 %i.je, label %.lr.ph.i49, label %luaO_int2fb.exit53

.lr.ph.i49:                                       ; preds = %luaO_int2fb.exit, %.lr.ph.i49
  %.011.i50 = phi i32 [ %i.jh, %.lr.ph.i49 ], [ 0, %luaO_int2fb.exit ]
  %.0810.i51 = phi i32 [ %i.jg, %.lr.ph.i49 ], [ %i.jd, %luaO_int2fb.exit ]
  %i.jf = add i32 %.0810.i51, 1                   ; 2 uses
  %i.jg = lshr i32 %i.jf, 1                       ; 2 uses
  %i.jh = add nuw nsw i32 %.011.i50, 1            ; 2 uses
  %i.ji = icmp ugt i32 %i.jf, 31
  br i1 %i.ji, label %.lr.ph.i49, label %._crit_edge.loopexit.i52, !llvm.loop !515

._crit_edge.loopexit.i52:                         ; preds = %.lr.ph.i49
  %i.jj = shl i32 %i.jh, 3
  %i.jk = add i32 %i.jj, 8
  br label %luaO_int2fb.exit53

luaO_int2fb.exit53:                               ; preds = %luaO_int2fb.exit, %._crit_edge.loopexit.i52
  %.08.lcssa.i46 = phi i32 [ %i.jd, %luaO_int2fb.exit ], [ %i.jg, %._crit_edge.loopexit.i52 ] ; 3 uses
  %.0.lcssa.i47 = phi i32 [ 8, %luaO_int2fb.exit ], [ %i.jk, %._crit_edge.loopexit.i52 ]
  %i.jl = and i32 %i.jc, -8372225
  %i.jm = icmp samesign ult i32 %.08.lcssa.i46, 8
  %i.jn = add nuw i32 %.08.lcssa.i46, 504
  %i.jo = or i32 %.0.lcssa.i47, %i.jn
  %.09.i48 = select i1 %i.jm, i32 %.08.lcssa.i46, i32 %i.jo
  %i.jp = shl i32 %.09.i48, 14
  %i.jq = and i32 %i.jp, 8372224
  %i.jr = or disjoint i32 %i.jq, %i.jl
  store i32 %i.jr, ptr %i.in, align 4, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @primaryexp(ptr noundef nonnull %0, ptr noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lua_TValue, align 8         ; 6 uses
  %3 = alloca %struct.expdesc, align 8            ; 8 uses
  %4 = alloca %struct.expdesc, align 8            ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222  ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 12 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !234  ; 2 uses
  switch i32 %i.d, label %bb.f [
    i32 40, label %bb.b
    i32 285, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !223  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.f, ptr %i.g, align 8, !tbaa !224
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !220
  %.not.i27 = icmp eq i32 %i.i, 287
  br i1 %.not.i27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.h, align 8, !tbaa !220
  br label %luaX_next.exit28

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.j)
  store i32 %i.k, ptr %i.c, align 8, !tbaa !234
  br label %luaX_next.exit28

luaX_next.exit28:                                 ; preds = %bb.c, %bb.d
  %i.l = tail call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0), !inline_history !519 ; 0 uses
  tail call fastcc void @check_match(ptr noundef nonnull %0, i32 noundef 41, i32 noundef 40, i32 noundef %i.f), !inline_history !520
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !222
  tail call fastcc void @luaK_dischargevars(ptr noundef %i.m, ptr noundef nonnull %1), !inline_history !520
  br label %prefixexp.exit

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @singlevar(ptr noundef nonnull %0, ptr noundef nonnull %1), !inline_history !520
  br label %prefixexp.exit

bb.f:                                             ; preds = %bb.a
  tail call fastcc void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.161, i32 noundef %i.d)
  unreachable

prefixexp.exit:                                   ; preds = %luaX_next.exit28, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 14 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 74 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 14 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 20
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %prefixexp.exit
  %i.ac = load i32, ptr %i.c, align 8, !tbaa !234
  switch i32 %i.ac, label %bb.ar [
    i32 46, label %bb.h
    i32 91, label %bb.i
    i32 58, label %bb.n
    i32 40, label %bb.ac
    i32 286, label %bb.ac
    i32 123, label %bb.ac
  ]

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @field(ptr noundef %0, ptr noundef %1)
  br label %.backedge

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %5 = tail call fastcc i32 @luaK_exp2anyreg(ptr noundef %i.b, ptr noundef %1) ; 0 uses
  %i.ad = load i32, ptr %i.s, align 4, !tbaa !223
  store i32 %i.ad, ptr %i.t, align 8, !tbaa !224
  %i.ae = load i32, ptr %i.u, align 8, !tbaa !220
  %.not.i30 = icmp eq i32 %i.ae, 287
  br i1 %.not.i30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.u, align 8, !tbaa !220
  br label %luaX_next.exit31

bb.k:                                             ; preds = %bb.i
  %6 = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.v)
  store i32 %6, ptr %i.c, align 8, !tbaa !234
  br label %luaX_next.exit31

luaX_next.exit31:                                 ; preds = %bb.j, %bb.k
  %i.af = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0), !inline_history !31 ; 0 uses
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !222 ; 2 uses
  %i.ah = load i32, ptr %i.aa, align 8, !tbaa !255
  %i.ai = load i32, ptr %i.ab, align 4, !tbaa !245
  %.not.i29 = icmp eq i32 %i.ah, %i.ai
  br i1 %.not.i29, label %bb.m, label %bb.l

bb.l:                                             ; preds = %luaX_next.exit31
  %i.aj = call fastcc i32 @luaK_exp2anyreg(ptr noundef %i.ag, ptr noundef nonnull %3) ; 0 uses
  br label %luaK_exp2val.exit

bb.m:                                             ; preds = %luaX_next.exit31
  call fastcc void @luaK_dischargevars(ptr noundef %i.ag, ptr noundef nonnull %3)
  br label %luaK_exp2val.exit

luaK_exp2val.exit:                                ; preds = %bb.l, %bb.m
  tail call fastcc void @checknext(ptr noundef nonnull %0, i32 noundef 93), !inline_history !32
  %i.ak = call fastcc i32 @luaK_exp2RK(ptr noundef %i.b, ptr noundef nonnull %3)
  store i32 %i.ak, ptr %i.o, align 4, !tbaa !81
  store i32 9, ptr %1, align 8, !tbaa !244
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %.backedge

bb.n:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.al = load i32, ptr %i.s, align 4, !tbaa !223
  store i32 %i.al, ptr %i.t, align 8, !tbaa !224
  %i.am = load i32, ptr %i.u, align 8, !tbaa !220
  %.not.i = icmp eq i32 %i.am, 287
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.u, align 8, !tbaa !220
  %.pr = load i32, ptr %i.c, align 8, !tbaa !234
  br label %luaX_next.exit

bb.p:                                             ; preds = %bb.n
  %7 = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.v) ; 2 uses
  store i32 %7, ptr %i.c, align 8, !tbaa !234
  br label %luaX_next.exit

luaX_next.exit:                                   ; preds = %bb.o, %bb.p
  %i.an = phi i32 [ %.pr, %bb.o ], [ %7, %bb.p ]
  %.not.i.i.i = icmp eq i32 %i.an, 285
  br i1 %.not.i.i.i, label %check.exit.i.i, label %bb.q

bb.q:                                             ; preds = %luaX_next.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !219
  %8 = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.ap, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.90)
  %i.aq = load i32, ptr %i.c, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull %8, i32 noundef %i.aq)
  unreachable

check.exit.i.i:                                   ; preds = %luaX_next.exit
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !81
  %i.as = load i32, ptr %i.s, align 4, !tbaa !223
  store i32 %i.as, ptr %i.t, align 8, !tbaa !224
  %i.at = load i32, ptr %i.u, align 8, !tbaa !220
  %.not.i4.i.i = icmp eq i32 %i.at, 287
  br i1 %.not.i4.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %check.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.u, align 8, !tbaa !220
  br label %checkname.exit

bb.s:                                             ; preds = %check.exit.i.i
  %9 = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.v)
  store i32 %9, ptr %i.c, align 8, !tbaa !234
  br label %checkname.exit

checkname.exit:                                   ; preds = %bb.r, %bb.s
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %i.ar, ptr %2, align 8, !tbaa !81
  store i32 4, ptr %i.w, align 8, !tbaa !99
  %i.au = call fastcc i32 @addk(ptr noundef %.val.i, ptr noundef %2, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  store i32 -1, ptr %i.x, align 8, !tbaa !255
  store i32 -1, ptr %i.y, align 4, !tbaa !245
  store i32 4, ptr %4, align 8, !tbaa !244
  store i32 %i.au, ptr %i.z, align 8, !tbaa !81
  %10 = tail call fastcc i32 @luaK_exp2anyreg(ptr noundef %i.b, ptr noundef nonnull %1) ; 0 uses
  %i.av = load i32, ptr %1, align 8, !tbaa !244
  %i.aw = icmp eq i32 %i.av, 12
  br i1 %i.aw, label %bb.t, label %freeexp.exit.ithread-pre-split

bb.t:                                             ; preds = %checkname.exit
  %i.ax = load i32, ptr %i.n, align 8, !tbaa !81  ; 2 uses
  %i.ay = and i32 %i.ax, 256
  %.not.i.i.i21 = icmp eq i32 %i.ay, 0
  br i1 %.not.i.i.i21, label %bb.u, label %freeexp.exit.ithread-pre-split

bb.u:                                             ; preds = %bb.t
  %i.az = load i8, ptr %i.p, align 2, !tbaa !249
  %i.ba = zext i8 %i.az to i32
  %.not3.i.i.i = icmp slt i32 %i.ax, %i.ba
  br i1 %.not3.i.i.i, label %freeexp.exit.ithread-pre-split, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bb = load i32, ptr %i.q, align 4, !tbaa !253
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.q, align 4, !tbaa !253
  br label %freeexp.exit.i

freeexp.exit.ithread-pre-split:                   ; preds = %checkname.exit, %bb.t, %bb.u
  %.pr36 = load i32, ptr %i.q, align 4, !tbaa !253
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %freeexp.exit.ithread-pre-split, %bb.v
  %i.bd = phi i32 [ %.pr36, %freeexp.exit.ithread-pre-split ], [ %i.bc, %bb.v ] ; 4 uses
  %i.be = add nsw i32 %i.bd, 2                    ; 3 uses
  %i.bf = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 115 ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !182
  %i.bi = zext i8 %i.bh to i32
  %i.bj = icmp sgt i32 %i.be, %i.bi
  br i1 %i.bj, label %bb.w, label %luaK_reserveregs.exit.i

bb.w:                                             ; preds = %freeexp.exit.i
  %i.bk = icmp sgt i32 %i.bd, 247
  br i1 %i.bk, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bl = load ptr, ptr %i.r, align 8, !tbaa !236 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.bl, ptr noundef nonnull @.str.152, i32 noundef %i.bn)
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bo = trunc nuw i32 %i.be to i8
  store i8 %i.bo, ptr %i.bg, align 1, !tbaa !182
  br label %luaK_reserveregs.exit.i

luaK_reserveregs.exit.i:                          ; preds = %bb.y, %freeexp.exit.i
  store i32 %i.be, ptr %i.q, align 4, !tbaa !253
  %i.bp = load i32, ptr %i.n, align 8, !tbaa !81
  %i.bq = call fastcc i32 @luaK_exp2RK(ptr noundef nonnull %i.b, ptr noundef nonnull %4)
  %i.br = shl i32 %i.bd, 6
  %i.bs = shl i32 %i.bp, 23
  %i.bt = shl i32 %i.bq, 14
  %i.bu = or i32 %i.br, %i.bs
  %i.bv = or i32 %i.bu, %i.bt
  %i.bw = or disjoint i32 %i.bv, 11
  %i.bx = load ptr, ptr %i.r, align 8, !tbaa !236
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !224
  %11 = tail call fastcc i32 @luaK_code(ptr noundef nonnull %i.b, i32 noundef %i.bw, i32 noundef %i.bz) ; 0 uses
  %i.ca = load i32, ptr %4, align 8, !tbaa !244
  %i.cb = icmp eq i32 %i.ca, 12
  br i1 %i.cb, label %bb.z, label %luaK_self.exit

bb.z:                                             ; preds = %luaK_reserveregs.exit.i
  %i.cc = load i32, ptr %i.z, align 8, !tbaa !81  ; 2 uses
  %i.cd = and i32 %i.cc, 256
  %.not.i.i15.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i15.i, label %bb.aa, label %luaK_self.exit

bb.aa:                                            ; preds = %bb.z
  %i.ce = load i8, ptr %i.p, align 2, !tbaa !249
  %i.cf = zext i8 %i.ce to i32
  %.not3.i.i16.i = icmp slt i32 %i.cc, %i.cf
  br i1 %.not3.i.i16.i, label %luaK_self.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cg = load i32, ptr %i.q, align 4, !tbaa !253
  %i.ch = add nsw i32 %i.cg, -1
  store i32 %i.ch, ptr %i.q, align 4, !tbaa !253
  br label %luaK_self.exit

luaK_self.exit:                                   ; preds = %luaK_reserveregs.exit.i, %bb.z, %bb.aa, %bb.ab
  store i32 %i.bd, ptr %i.n, align 8, !tbaa !81
  store i32 12, ptr %1, align 8, !tbaa !244
  tail call fastcc void @funcargs(ptr noundef %0, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %.backedge

bb.ac:                                            ; preds = %bb.g, %bb.g, %bb.g
  %i.ci = load i32, ptr %1, align 8, !tbaa !244
  switch i32 %i.ci, label %freeexp.exit.i22thread-pre-split [
    i32 6, label %luaK_dischargevars.exit.thread33
    i32 7, label %bb.ad
    i32 8, label %bb.ae
    i32 9, label %bb.af
    i32 13, label %luaK_dischargevars.exit.thread
    i32 14, label %bb.ak
    i32 12, label %bb.al
  ]

luaK_dischargevars.exit.thread33:                 ; preds = %bb.ac
  store i32 12, ptr %1, align 8, !tbaa !244
  br label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.cj = load i32, ptr %i.n, align 8, !tbaa !81
  %i.ck = shl i32 %i.cj, 23
  %i.cl = or disjoint i32 %i.ck, 4
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !236
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !224
  %12 = tail call fastcc i32 @luaK_code(ptr noundef %i.b, i32 noundef %i.cl, i32 noundef %i.co)
  store i32 %12, ptr %i.n, align 8, !tbaa !81
  br label %freeexp.exit.i22thread-pre-split.sink.split

bb.ae:                                            ; preds = %bb.ac
  %i.cp = load i32, ptr %i.n, align 8, !tbaa !81
  %i.cq = shl i32 %i.cp, 14
  %i.cr = or disjoint i32 %i.cq, 5
  %i.cs = load ptr, ptr %i.r, align 8, !tbaa !236
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !224
  %13 = tail call fastcc i32 @luaK_code(ptr noundef %i.b, i32 noundef %i.cr, i32 noundef %i.cu)
  store i32 %13, ptr %i.n, align 8, !tbaa !81
  br label %freeexp.exit.i22thread-pre-split.sink.split

bb.af:                                            ; preds = %bb.ac
  %i.cv = load i32, ptr %i.o, align 4, !tbaa !81  ; 2 uses
  %i.cw = and i32 %i.cv, 256
  %.not.i.i = icmp eq i32 %i.cw, 0
  br i1 %.not.i.i, label %bb.ag, label %freereg.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.cx = load i8, ptr %i.p, align 2, !tbaa !249
  %i.cy = zext i8 %i.cx to i32
  %.not3.i.i = icmp slt i32 %i.cv, %i.cy
  br i1 %.not3.i.i, label %freereg.exit.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cz = load i32, ptr %i.q, align 4, !tbaa !253
  %i.da = add nsw i32 %i.cz, -1
  store i32 %i.da, ptr %i.q, align 4, !tbaa !253
  br label %freereg.exit.i

freereg.exit.i:                                   ; preds = %bb.ah, %bb.ag, %bb.af
  %i.db = load i32, ptr %i.n, align 8, !tbaa !81  ; 4 uses
  %i.dc = and i32 %i.db, 256
  %.not.i21.i = icmp eq i32 %i.dc, 0
  br i1 %.not.i21.i, label %bb.ai, label %freereg.exit23.i

bb.ai:                                            ; preds = %freereg.exit.i
  %i.dd = load i8, ptr %i.p, align 2, !tbaa !249
  %i.de = zext i8 %i.dd to i32
  %.not3.i22.i = icmp slt i32 %i.db, %i.de
  br i1 %.not3.i22.i, label %freereg.exit23.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.df = load i32, ptr %i.q, align 4, !tbaa !253
  %i.dg = add nsw i32 %i.df, -1
  store i32 %i.dg, ptr %i.q, align 4, !tbaa !253
  %.pre.i = load i32, ptr %i.n, align 8, !tbaa !81
  br label %freereg.exit23.i

freereg.exit23.i:                                 ; preds = %bb.aj, %bb.ai, %freereg.exit.i
  %i.dh = phi i32 [ %i.db, %freereg.exit.i ], [ %i.db, %bb.ai ], [ %.pre.i, %bb.aj ]
  %i.di = load i32, ptr %i.o, align 4, !tbaa !81
  %i.dj = shl i32 %i.dh, 23
  %i.dk = shl i32 %i.di, 14
  %i.dl = or i32 %i.dj, %i.dk
  %i.dm = or disjoint i32 %i.dl, 6
  %i.dn = load ptr, ptr %i.r, align 8, !tbaa !236
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !224
  %14 = tail call fastcc i32 @luaK_code(ptr noundef %i.b, i32 noundef %i.dm, i32 noundef %i.dp)
  store i32 %14, ptr %i.n, align 8, !tbaa !81
  br label %freeexp.exit.i22thread-pre-split.sink.split

luaK_dischargevars.exit.thread:                   ; preds = %bb.ac
  store i32 12, ptr %1, align 8, !tbaa !244
  %i.dq = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !160
  %i.dt = load i32, ptr %i.n, align 8, !tbaa !81
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !162
  %i.dx = lshr i32 %i.dw, 6
  %i.dy = and i32 %i.dx, 255
  store i32 %i.dy, ptr %i.n, align 8, !tbaa !81
  br label %bb.al

bb.ak:                                            ; preds = %bb.ac
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !160
  %i.ec = load i32, ptr %i.n, align 8, !tbaa !81
  %i.ed = sext i32 %i.ec to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ed ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !162
  %i.eg = and i32 %i.ef, 8388607
  %i.eh = or disjoint i32 %i.eg, 16777216
  store i32 %i.eh, ptr %i.ee, align 4, !tbaa !162
  br label %freeexp.exit.i22thread-pre-split.sink.split

bb.al:                                            ; preds = %bb.ac, %luaK_dischargevars.exit.thread, %luaK_dischargevars.exit.thread33
  %i.ei = load i32, ptr %i.n, align 8, !tbaa !81  ; 2 uses
  %i.ej = and i32 %i.ei, 256
  %.not.i.i.i25 = icmp eq i32 %i.ej, 0
  br i1 %.not.i.i.i25, label %bb.am, label %freeexp.exit.i22thread-pre-split

bb.am:                                            ; preds = %bb.al
  %i.ek = load i8, ptr %i.p, align 2, !tbaa !249
  %i.el = zext i8 %i.ek to i32
  %.not3.i.i.i26 = icmp slt i32 %i.ei, %i.el
  br i1 %.not3.i.i.i26, label %freeexp.exit.i22thread-pre-split, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.em = load i32, ptr %i.q, align 4, !tbaa !253
  %i.en = add nsw i32 %i.em, -1                   ; 2 uses
  store i32 %i.en, ptr %i.q, align 4, !tbaa !253
  br label %freeexp.exit.i22

freeexp.exit.i22thread-pre-split.sink.split:      ; preds = %bb.ak, %freereg.exit23.i, %bb.ae, %bb.ad
  store i32 11, ptr %1, align 8, !tbaa !244
  br label %freeexp.exit.i22thread-pre-split

freeexp.exit.i22thread-pre-split:                 ; preds = %freeexp.exit.i22thread-pre-split.sink.split, %bb.ac, %bb.al, %bb.am
  %.pr37 = load i32, ptr %i.q, align 4, !tbaa !253
  br label %freeexp.exit.i22

freeexp.exit.i22:                                 ; preds = %freeexp.exit.i22thread-pre-split, %bb.an
  %i.eo = phi i32 [ %.pr37, %freeexp.exit.i22thread-pre-split ], [ %i.en, %bb.an ] ; 4 uses
  %i.ep = add nsw i32 %i.eo, 1                    ; 2 uses
  %i.eq = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 115 ; 2 uses
  %i.es = load i8, ptr %i.er, align 1, !tbaa !182
  %i.et = zext i8 %i.es to i32
  %.not.i23 = icmp slt i32 %i.eo, %i.et
  br i1 %.not.i23, label %luaK_exp2nextreg.exit, label %bb.ao

bb.ao:                                            ; preds = %freeexp.exit.i22
  %i.eu = icmp samesign ugt i32 %i.eo, 248
  br i1 %i.eu, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ev = load ptr, ptr %i.r, align 8, !tbaa !236 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.ev, ptr noundef nonnull @.str.152, i32 noundef %i.ex)
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.ey = trunc nuw i32 %i.ep to i8
  store i8 %i.ey, ptr %i.er, align 1, !tbaa !182
  br label %luaK_exp2nextreg.exit

luaK_exp2nextreg.exit:                            ; preds = %freeexp.exit.i22, %bb.aq
  store i32 %i.ep, ptr %i.q, align 4, !tbaa !253
  tail call fastcc void @exp2reg(ptr noundef nonnull %i.b, ptr noundef nonnull %1, i32 noundef %i.eo)
  tail call fastcc void @funcargs(ptr noundef %0, ptr noundef %1)
  br label %.backedge

.backedge:                                        ; preds = %luaK_exp2nextreg.exit, %luaK_self.exit, %luaK_exp2val.exit, %bb.h
  br label %bb.g

bb.ar:                                            ; preds = %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @recfield(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lua_TValue, align 8         ; 6 uses
  %3 = alloca %struct.expdesc, align 8            ; 12 uses
  %4 = alloca %struct.expdesc, align 8            ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222  ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !253
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !234
  %i.g = icmp eq i32 %i.f, 285
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !269
  %i.j = icmp sgt i32 %i.i, 2147483645
  br i1 %i.j, label %bb.c, label %check.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 96
  %i.m = load i32, ptr %i.l, align 8, !tbaa !211  ; 2 uses
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !237  ; 2 uses
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.p, ptr noundef nonnull @.str.155, i32 noundef 2147483645, ptr noundef nonnull @.str.154)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.r = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.p, ptr noundef nonnull @.str.156, i32 noundef %i.m, i32 noundef 2147483645, ptr noundef nonnull @.str.154)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %i.q, %bb.d ], [ %i.r, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !236
  tail call fastcc void @luaX_lexerror(ptr noundef %i.u, ptr noundef nonnull %i.s, i32 noundef 0)
  unreachable

check.exit.i.i:                                   ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !223
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.y, ptr %i.z, align 8, !tbaa !224
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !220
  %.not.i4.i.i = icmp eq i32 %i.ab, 287
  br i1 %.not.i4.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %check.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.aa, align 8, !tbaa !220
  br label %checkname.exit

bb.h:                                             ; preds = %check.exit.i.i
  %i.ac = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.v)
  store i32 %i.ac, ptr %i.e, align 8, !tbaa !234
  %.val.i.pre = load ptr, ptr %i.a, align 8, !tbaa !222
  br label %checkname.exit

checkname.exit:                                   ; preds = %bb.g, %bb.h
  %.val.i = phi ptr [ %i.b, %bb.g ], [ %.val.i.pre, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %i.w, ptr %2, align 8, !tbaa !81
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 4, ptr %i.ad, align 8, !tbaa !99
  %i.ae = call fastcc i32 @addk(ptr noundef %.val.i, ptr noundef %2, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1, ptr %i.af, align 8, !tbaa !255
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 -1, ptr %i.ag, align 4, !tbaa !245
  store i32 4, ptr %3, align 8, !tbaa !244
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !81
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !223
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !224
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !220
  %.not.i16 = icmp eq i32 %i.am, 287
  br i1 %.not.i16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.al, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.al, align 8, !tbaa !220
  br label %luaX_next.exit

bb.k:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.an)
  store i32 %i.ao, ptr %i.e, align 8, !tbaa !234
  br label %luaX_next.exit

luaX_next.exit:                                   ; preds = %bb.j, %bb.k
  %i.ap = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0), !inline_history !31 ; 0 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !222 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !255
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.au = load i32, ptr %i.at, align 4, !tbaa !245
  %.not.i = icmp eq i32 %i.as, %i.au
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %luaX_next.exit
  %i.av = call fastcc i32 @luaK_exp2anyreg(ptr noundef %i.aq, ptr noundef nonnull %3) ; 0 uses
  br label %luaK_exp2val.exit

bb.m:                                             ; preds = %luaX_next.exit
  call fastcc void @luaK_dischargevars(ptr noundef %i.aq, ptr noundef nonnull %3)
  br label %luaK_exp2val.exit

luaK_exp2val.exit:                                ; preds = %bb.l, %bb.m
  tail call fastcc void @checknext(ptr noundef nonnull %0, i32 noundef 93), !inline_history !32
  br label %bb.n

bb.n:                                             ; preds = %luaK_exp2val.exit, %checkname.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !269
  %i.ay = add nsw i32 %i.ax, 1
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !269
  tail call fastcc void @checknext(ptr noundef %0, i32 noundef 61)
  %i.az = call fastcc i32 @luaK_exp2RK(ptr noundef nonnull %i.b, ptr noundef %3)
  %i.ba = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 0), !inline_history !33 ; 0 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !270
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !81
  %i.bf = call fastcc i32 @luaK_exp2RK(ptr noundef nonnull %i.b, ptr noundef %4)
  %i.bg = shl i32 %i.be, 6
  %i.bh = shl i32 %i.az, 23
  %i.bi = shl i32 %i.bf, 14
  %i.bj = or i32 %i.bh, %i.bg
  %i.bk = or i32 %i.bj, %i.bi
  %i.bl = or disjoint i32 %i.bk, 9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !236
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !224
  %5 = tail call fastcc i32 @luaK_code(ptr noundef nonnull %i.b, i32 noundef %i.bl, i32 noundef %i.bp) ; 0 uses
  store i32 %i.d, ptr %i.c, align 4, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @new_localvar(ptr nofree noundef nonnull readonly captures(none) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 74 ; 2 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !249
  %i.e = zext i8 %i.d to i32
  %i.f = add nsw i32 %2, %i.e
  %i.g = icmp sgt i32 %i.f, 199
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !232  ; 5 uses
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96
  %i.j = load i32, ptr %i.i, align 8, !tbaa !211  ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !237  ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.m, ptr noundef nonnull @.str.155, i32 noundef 200, ptr noundef nonnull @.str.158)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.o = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.m, ptr noundef nonnull @.str.156, i32 noundef %i.j, i32 noundef 200, ptr noundef nonnull @.str.158)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = phi ptr [ %i.n, %bb.c ], [ %i.o, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !236
  tail call fastcc void @luaX_lexerror(ptr noundef %i.r, ptr noundef nonnull %i.p, i32 noundef 0)
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 92 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !197  ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 4 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !263
  %i.w = sext i16 %i.v to i32
  %.not.i = icmp sgt i32 %i.t, %i.w
  br i1 %.not.i, label %..._crit_edge_crit_edge.i_crit_edge, label %bb.g

..._crit_edge_crit_edge.i_crit_edge:              ; preds = %bb.f
  %.phi.trans.insert.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.pre25.i.pre = load ptr, ptr %.phi.trans.insert.i.phi.trans.insert, align 8, !tbaa !198
  br label %._crit_edge.i

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !219
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !198
  %i.ab = tail call fastcc ptr @luaM_growaux_(ptr noundef %i.y, ptr noundef %i.aa, ptr noundef nonnull %i.s, i64 noundef 16, i32 noundef 32767, ptr noundef nonnull @.str.159) ; 9 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !198
  %.pre.i = load i32, ptr %i.s, align 4, !tbaa !197 ; 2 uses
  %i.ac = icmp slt i32 %i.t, %.pre.i
  br i1 %i.ac, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ad = sext i32 %i.t to i64                    ; 4 uses
  %wide.trip.count.i = sext i32 %.pre.i to i64    ; 3 uses
  %i.ae = sub nsw i64 %wide.trip.count.i, %i.ad
  %xtraiter = and i64 %i.ae, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.prol.preheader ], [ %i.ad, %.lr.ph.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %i.af = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %indvars.iv.i.prol
  store ptr null, ptr %i.af, align 8, !tbaa !200
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !521

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.ad, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.preheader ]
  %i.ag = sub nsw i64 %i.ad, %wide.trip.count.i
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 5 uses
  %i.ai = getelementptr inbounds [16 x i8], ptr %i.ab, i64 %indvars.iv.i
  store ptr null, ptr %i.ai, align 8, !tbaa !200
  %i.aj = getelementptr [16 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ak = getelementptr i8, ptr %i.aj, i64 16
  store ptr null, ptr %i.ak, align 8, !tbaa !200
  %i.al = getelementptr [16 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.am = getelementptr i8, ptr %i.al, i64 32
  store ptr null, ptr %i.am, align 8, !tbaa !200
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.an = getelementptr [16 x i8], ptr %i.ab, i64 %indvars.iv.i
  %i.ao = getelementptr i8, ptr %i.an, i64 48
  store ptr null, ptr %i.ao, align 8, !tbaa !200
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i.new, !llvm.loop !522

._crit_edge.i:                                    ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.g, %..._crit_edge_crit_edge.i_crit_edge
  %i.ap = phi ptr [ %i.ab, %bb.g ], [ %.pre25.i.pre, %..._crit_edge_crit_edge.i_crit_edge ], [ %i.ab, %.lr.ph.i.new ], [ %i.ab, %.prol.loopexit ]
  %i.aq = load i16, ptr %i.u, align 8, !tbaa !263
  %i.ar = sext i16 %i.aq to i64
  %i.as = getelementptr inbounds [16 x i8], ptr %i.ap, i64 %i.ar
  store ptr %1, ptr %i.as, align 8, !tbaa !200
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.au = load i8, ptr %i.at, align 1, !tbaa !81
  %i.av = and i8 %i.au, 3
  %.not21.i = icmp eq i8 %i.av, 0
  br i1 %.not21.i, label %registerlocalvar.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 9 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !81  ; 2 uses
  %i.ay = and i8 %i.ax, 4
  %.not22.i = icmp eq i8 %i.ay, 0
  br i1 %.not22.i, label %registerlocalvar.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !219
  %i.bb = getelementptr i8, ptr %i.ba, i64 32
  %.val.i = load ptr, ptr %i.bb, align 8, !tbaa !68 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i, i64 33
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !85
  %i.be = icmp eq i8 %i.bd, 1
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @reallymarkobject(ptr noundef nonnull %.val.i, ptr noundef nonnull %1)
  br label %registerlocalvar.exit

bb.k:                                             ; preds = %bb.i
  %i.bf = and i8 %i.ax, -8
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.i, i64 32
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !67
  %i.bi = and i8 %i.bh, 3
  %i.bj = or disjoint i8 %i.bi, %i.bf
  store i8 %i.bj, ptr %i.aw, align 1, !tbaa !81
  br label %registerlocalvar.exit

registerlocalvar.exit:                            ; preds = %._crit_edge.i, %bb.h, %bb.j, %bb.k
  %i.bk = load i16, ptr %i.u, align 8, !tbaa !263 ; 2 uses
  %i.bl = add i16 %i.bk, 1
  store i16 %i.bl, ptr %i.u, align 8, !tbaa !263
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  %i.bn = load i8, ptr %i.c, align 2, !tbaa !249
  %i.bo = zext i8 %i.bn to i32
  %i.bp = add nsw i32 %2, %i.bo
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [2 x i8], ptr %i.bm, i64 %i.bq
  store i16 %i.bk, ptr %i.br, align 2, !tbaa !177
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parlist(ptr nofree noundef nonnull captures(address_is_null) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222  ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !232  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 114 ; 4 uses
  store i8 0, ptr %i.d, align 2, !tbaa !183
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !234  ; 2 uses
  %.not = icmp eq i32 %i.f, 41
  br i1 %.not, label %adjustlocalvars.exit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.backedge, %.preheader
  %i.k = phi i32 [ %i.f, %.preheader ], [ %.be, %thread-pre-split.backedge ] ; 2 uses
  %.0 = phi i32 [ 0, %.preheader ], [ %i.p, %thread-pre-split.backedge ] ; 5 uses
  switch i32 %i.k, label %bb.g [
    i32 285, label %check.exit.i
    i32 279, label %bb.d
  ]

check.exit.i:                                     ; preds = %thread-pre-split
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !81
  %i.m = load i32, ptr %i.h, align 4, !tbaa !223
  store i32 %i.m, ptr %i.i, align 8, !tbaa !224
  %i.n = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i4.i = icmp eq i32 %i.n, 287
  br i1 %.not.i4.i, label %bb.c, label %bb.b

end_hunk_3
begin_hunk_4_@pushclosure:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.ba, ptr %i.bd, align 8, !tbaa !81
  %i.be = load ptr, ptr %1, align 8, !tbaa !232
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 112
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !180
  %.not39 = icmp eq i8 %i.bg, 0
  br i1 %.not39, label %._crit_edge38, label %.lr.ph37

.lr.ph37:                                         ; preds = %luaC_barrierf.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 75
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph37, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph37 ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.bh, i64 %indvars.iv ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !272
  %i.bk = icmp eq i8 %i.bj, 6
  %i.bl = select i1 %i.bk, i32 0, i32 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !273
  %i.bo = zext i8 %i.bn to i32
  %i.bp = shl nuw nsw i32 %i.bo, 23
  %i.bq = or disjoint i32 %i.bp, %i.bl
  %i.br = load ptr, ptr %i.aw, align 8, !tbaa !236
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !224
  %i.bu = tail call fastcc i32 @luaK_code(ptr noundef nonnull %i.b, i32 noundef %i.bq, i32 noundef %i.bt) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bv = load ptr, ptr %1, align 8, !tbaa !232
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 112
  %i.bx = load i8, ptr %i.bw, align 8, !tbaa !180
  %i.by = zext i8 %i.bx to i64
  %i.bz = icmp samesign ult i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %bb.g, label %._crit_edge38, !llvm.loop !525

._crit_edge38:                                    ; preds = %bb.g, %luaC_barrierf.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @field(ptr nofree noundef nonnull captures(address_is_null) initializes((8, 12)) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lua_TValue, align 8         ; 6 uses
  %3 = alloca %struct.expdesc, align 8            ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.c = tail call fastcc i32 @luaK_exp2anyreg(ptr noundef %i.b, ptr noundef %1) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !223
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 %i.e, ptr %i.f, align 8, !tbaa !224
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !220
  %.not.i = icmp eq i32 %i.h, 287
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.g, align 8, !tbaa !220
  %.pr = load i32, ptr %i.i, align 8, !tbaa !234
  br label %luaX_next.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.j) ; 2 uses
  store i32 %i.k, ptr %i.i, align 8, !tbaa !234
  br label %luaX_next.exit

luaX_next.exit:                                   ; preds = %bb.b, %bb.c
  %i.l = phi i32 [ %.pr, %bb.b ], [ %i.k, %bb.c ]
  %.not.i.i.i = icmp eq i32 %i.l, 285
  br i1 %.not.i.i.i, label %check.exit.i.i, label %bb.d

bb.d:                                             ; preds = %luaX_next.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !219
  %i.o = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.n, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.90)
  %i.p = load i32, ptr %i.i, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.o, i32 noundef %i.p)
  unreachable

check.exit.i.i:                                   ; preds = %luaX_next.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81
  %i.s = load i32, ptr %i.d, align 4, !tbaa !223
  store i32 %i.s, ptr %i.f, align 8, !tbaa !224
  %i.t = load i32, ptr %i.g, align 8, !tbaa !220
  %.not.i4.i.i = icmp eq i32 %i.t, 287
  br i1 %.not.i4.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %check.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.g, align 8, !tbaa !220
  br label %checkname.exit

bb.f:                                             ; preds = %check.exit.i.i
  %i.u = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.q)
  store i32 %i.u, ptr %i.i, align 8, !tbaa !234
  br label %checkname.exit

checkname.exit:                                   ; preds = %bb.e, %bb.f
  %.val.i = load ptr, ptr %i.a, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %i.r, ptr %2, align 8, !tbaa !81
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 4, ptr %i.v, align 8, !tbaa !99
  %i.w = call fastcc i32 @addk(ptr noundef %.val.i, ptr noundef %2, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1, ptr %i.x, align 8, !tbaa !255
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 -1, ptr %i.y, align 4, !tbaa !245
  store i32 4, ptr %3, align 8, !tbaa !244
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.w, ptr %i.z, align 8, !tbaa !81
  %i.aa = call fastcc i32 @luaK_exp2RK(ptr noundef %i.b, ptr noundef nonnull %3)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !81
  store i32 9, ptr %1, align 8, !tbaa !244
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @funcargs(ptr noundef nonnull %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lua_TValue, align 8         ; 6 uses
  %3 = alloca %struct.expdesc, align 8            ; 22 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222  ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !223  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !234  ; 2 uses
  switch i32 %i.f, label %bb.ab [
    i32 40, label %bb.b
    i32 123, label %bb.x
    i32 286, label %bb.y
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !224
  %.not = icmp eq i32 %i.d, %i.h
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.163, i32 noundef 40)
  unreachable

bb.d:                                             ; preds = %bb.b
  store i32 %i.d, ptr %i.g, align 8, !tbaa !224
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !220
  %.not.i = icmp eq i32 %i.j, 287
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.i, align 8, !tbaa !220
  %.pr = load i32, ptr %i.e, align 8, !tbaa !234
  br label %luaX_next.exit

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.k) ; 2 uses
  store i32 %i.l, ptr %i.e, align 8, !tbaa !234
  br label %luaX_next.exit

luaX_next.exit:                                   ; preds = %bb.e, %bb.f
  %i.m = phi i32 [ %.pr, %bb.e ], [ %i.l, %bb.f ]
  %i.n = icmp eq i32 %i.m, 41
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %luaX_next.exit
  store i32 0, ptr %3, align 8, !tbaa !244
  br label %luaK_setreturns.exit

bb.h:                                             ; preds = %luaX_next.exit
  %i.o = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0), !inline_history !34 ; 0 uses
  %i.p = load i32, ptr %i.e, align 8, !tbaa !234
  %i.q = icmp eq i32 %i.p, 44
  br i1 %i.q, label %.lr.ph, label %explist1.exit

.lr.ph:                                           ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %luaK_exp2nextreg.exit46
  %i.t = load i32, ptr %i.c, align 4, !tbaa !223
  store i32 %i.t, ptr %i.g, align 8, !tbaa !224
  %i.u = load i32, ptr %i.i, align 8, !tbaa !220
  %.not.i.i = icmp eq i32 %i.u, 287
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.i, align 8, !tbaa !220
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %4 = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.r)
  store i32 %4, ptr %i.e, align 8, !tbaa !234
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !222  ; 7 uses
  call fastcc void @luaK_dischargevars(ptr noundef %i.v, ptr noundef nonnull %3)
  %i.w = load i32, ptr %3, align 8, !tbaa !244
  %i.x = icmp eq i32 %i.w, 12
  br i1 %i.x, label %bb.m, label %freeexp.exit.i41

bb.m:                                             ; preds = %bb.l
  %i.y = load i32, ptr %i.s, align 8, !tbaa !81   ; 2 uses
  %i.z = and i32 %i.y, 256
  %.not.i.i.i44 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i44, label %bb.n, label %freeexp.exit.i41

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 74
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !249
  %i.ac = zext i8 %i.ab to i32
  %.not3.i.i.i45 = icmp slt i32 %i.y, %i.ac
  br i1 %.not3.i.i.i45, label %freeexp.exit.i41, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 60 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !253
  %i.af = add nsw i32 %i.ae, -1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !253
  br label %freeexp.exit.i41

freeexp.exit.i41:                                 ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 60 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !253 ; 4 uses
  %i.ai = add nsw i32 %i.ah, 1                    ; 2 uses
  %i.aj = load ptr, ptr %i.v, align 8, !tbaa !232
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 115 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !182
  %i.am = zext i8 %i.al to i32
  %.not.i42 = icmp slt i32 %i.ah, %i.am
  br i1 %.not.i42, label %luaK_exp2nextreg.exit46, label %bb.p

bb.p:                                             ; preds = %freeexp.exit.i41
  %i.an = icmp samesign ugt i32 %i.ah, 248
  br i1 %i.an, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !236 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.ap, ptr noundef nonnull @.str.152, i32 noundef %i.ar)
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.as = trunc nuw i32 %i.ai to i8
  store i8 %i.as, ptr %i.ak, align 1, !tbaa !182
  br label %luaK_exp2nextreg.exit46

luaK_exp2nextreg.exit46:                          ; preds = %freeexp.exit.i41, %bb.r
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !253
  call fastcc void @exp2reg(ptr noundef nonnull %i.v, ptr noundef nonnull %3, i32 noundef %i.ah)
  %i.at = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0), !inline_history !34 ; 0 uses
  %i.au = load i32, ptr %i.e, align 8, !tbaa !234
  %i.av = icmp eq i32 %i.au, 44
  br i1 %i.av, label %bb.i, label %explist1.exit, !llvm.loop !27

explist1.exit:                                    ; preds = %luaK_exp2nextreg.exit46, %bb.h
  %i.aw = load i32, ptr %3, align 8, !tbaa !244
  switch i32 %i.aw, label %luaK_setreturns.exit [
    i32 13, label %bb.s
    i32 14, label %bb.t
  ]

bb.s:                                             ; preds = %explist1.exit
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !160
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !81
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !162
  %i.bf = and i32 %i.be, -8372225
  store i32 %i.bf, ptr %i.bd, align 4, !tbaa !162
  br label %luaK_setreturns.exit

bb.t:                                             ; preds = %explist1.exit
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !232 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !160 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !81
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !162
  %i.bo = and i32 %i.bn, 8388607
  store i32 %i.bo, ptr %i.bm, align 4, !tbaa !162
  %i.bp = load i32, ptr %i.bj, align 8, !tbaa !81
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %i.bq ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !162
  %i.bt = and i32 %i.bs, -16321
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !253
  %i.bw = shl i32 %i.bv, 6
  %i.bx = and i32 %i.bw, 16320
  %i.by = or disjoint i32 %i.bx, %i.bt
  store i32 %i.by, ptr %i.br, align 4, !tbaa !162
  %i.bz = load i32, ptr %i.bu, align 4, !tbaa !253 ; 3 uses
  %i.ca = add nsw i32 %i.bz, 1                    ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 115 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !182
  %i.cd = zext i8 %i.cc to i32
  %.not.i35 = icmp slt i32 %i.bz, %i.cd
  br i1 %.not.i35, label %luaK_reserveregs.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = icmp samesign ugt i32 %i.bz, 248
  br i1 %i.ce, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !236 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.cg, ptr noundef nonnull @.str.152, i32 noundef %i.ci)
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cj = trunc nuw i32 %i.ca to i8
  store i8 %i.cj, ptr %i.cb, align 1, !tbaa !182
  br label %luaK_reserveregs.exit.i

luaK_reserveregs.exit.i:                          ; preds = %bb.w, %bb.t
  store i32 %i.ca, ptr %i.bu, align 4, !tbaa !253
  br label %luaK_setreturns.exit

luaK_setreturns.exit:                             ; preds = %luaK_reserveregs.exit.i, %bb.s, %explist1.exit, %bb.g
  tail call fastcc void @check_match(ptr noundef %0, i32 noundef 41, i32 noundef 40, i32 noundef %i.d)
  br label %luaX_next.exit37

bb.x:                                             ; preds = %bb.a
  call fastcc void @constructor(ptr noundef %0, ptr noundef %3)
  br label %luaX_next.exit37

bb.y:                                             ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  store ptr %i.cl, ptr %2, align 8, !tbaa !81
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 4, ptr %i.cm, align 8, !tbaa !99
  %i.cn = call fastcc i32 @addk(ptr noundef %i.b, ptr noundef %2, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1, ptr %i.co, align 8, !tbaa !255
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 -1, ptr %i.cp, align 4, !tbaa !245
  store i32 4, ptr %3, align 8, !tbaa !244
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.cn, ptr %i.cq, align 8, !tbaa !81
  %i.cr = load i32, ptr %i.c, align 4, !tbaa !223
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.cr, ptr %i.cs, align 8, !tbaa !224
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !220
  %.not.i36 = icmp eq i32 %i.cu, 287
  br i1 %.not.i36, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.ct, align 8, !tbaa !220
  br label %luaX_next.exit37

bb.aa:                                            ; preds = %bb.y
  %i.cv = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.ck)
  store i32 %i.cv, ptr %i.e, align 8, !tbaa !234
  br label %luaX_next.exit37

bb.ab:                                            ; preds = %bb.a
  tail call fastcc void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.164, i32 noundef %i.f)
  unreachable

luaX_next.exit37:                                 ; preds = %bb.aa, %bb.z, %bb.x, %luaK_setreturns.exit
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !81 ; 3 uses
  %i.cy = load i32, ptr %3, align 8, !tbaa !244   ; 2 uses
  %i.cz = add i32 %i.cy, -13
  %or.cond = icmp ult i32 %i.cz, 2
  br i1 %or.cond, label %bb.al, label %bb.ac

bb.ac:                                            ; preds = %luaX_next.exit37
  %.not31 = icmp eq i32 %i.cy, 0
  br i1 %.not31, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @luaK_dischargevars(ptr noundef %i.b, ptr noundef nonnull %3)
  %i.da = load i32, ptr %3, align 8, !tbaa !244
  %i.db = icmp eq i32 %i.da, 12
  br i1 %i.db, label %bb.ae, label %freeexp.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !81 ; 2 uses
  %i.de = and i32 %i.dd, 256
  %.not.i.i.i = icmp eq i32 %i.de, 0
  br i1 %.not.i.i.i, label %bb.af, label %freeexp.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 74
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !249
  %i.dh = zext i8 %i.dg to i32
  %.not3.i.i.i = icmp slt i32 %i.dd, %i.dh
  br i1 %.not3.i.i.i, label %freeexp.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !253
  %i.dk = add nsw i32 %i.dj, -1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !253
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.ag, %bb.af, %bb.ae, %bb.ad
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !253 ; 4 uses
  %i.dn = add nsw i32 %i.dm, 1                    ; 2 uses
  %i.do = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 115 ; 2 uses
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !182
  %i.dr = zext i8 %i.dq to i32
  %.not.i39 = icmp slt i32 %i.dm, %i.dr
  br i1 %.not.i39, label %luaK_exp2nextreg.exit, label %bb.ah

bb.ah:                                            ; preds = %freeexp.exit.i
  %i.ds = icmp samesign ugt i32 %i.dm, 248
  br i1 %i.ds, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !236 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !234
  call fastcc void @luaX_lexerror(ptr noundef readonly %i.du, ptr noundef nonnull @.str.152, i32 noundef %i.dw)
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.dx = trunc nuw i32 %i.dn to i8
  store i8 %i.dx, ptr %i.dp, align 1, !tbaa !182
  br label %luaK_exp2nextreg.exit

luaK_exp2nextreg.exit:                            ; preds = %freeexp.exit.i, %bb.aj
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !253
  call fastcc void @exp2reg(ptr noundef nonnull %i.b, ptr noundef nonnull %3, i32 noundef %i.dm)
  br label %bb.ak

bb.ak:                                            ; preds = %luaK_exp2nextreg.exit, %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !253
  %i.ea = sub i32 %i.dz, %i.cx
  %i.eb = shl i32 %i.ea, 23
  br label %bb.al

bb.al:                                            ; preds = %luaX_next.exit37, %bb.ak
  %.0 = phi i32 [ %i.eb, %bb.ak ], [ 0, %luaX_next.exit37 ]
  %i.ec = shl i32 %i.cx, 6
  %i.ed = or i32 %i.ec, %.0
  %i.ee = or i32 %i.ed, 32796
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !236
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !224
  %i.ej = call fastcc i32 @luaK_code(ptr noundef %i.b, i32 noundef %i.ee, i32 noundef %i.ei)
  %i.ek = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 -1, ptr %i.ek, align 8, !tbaa !255
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 -1, ptr %i.el, align 4, !tbaa !245
  store i32 13, ptr %1, align 8, !tbaa !244
  store i32 %i.ej, ptr %i.cw, align 8, !tbaa !81
  %.val32 = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.em = getelementptr i8, ptr %i.b, i64 48
  %.val33 = load i32, ptr %i.em, align 8, !tbaa !238
  %i.en = getelementptr i8, ptr %.val32, i64 40
  %.val32.val = load ptr, ptr %i.en, align 8, !tbaa !161
  %i.eo = sext i32 %.val33 to i64
  %i.ep = getelementptr [4 x i8], ptr %.val32.val, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 -4
  store i32 %i.d, ptr %i.eq, align 4, !tbaa !162
  %i.er = add nsw i32 %i.cx, 1
  %i.es = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %i.er, ptr %i.es, align 4, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @singlevar(ptr nofree noundef nonnull captures(address_is_null) %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.lua_TValue, align 8         ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !234
  %.not.i.i = icmp eq i32 %i.b, 285
  br i1 %.not.i.i, label %check.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !219
  %i.e = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.d, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.90)
  %i.f = load i32, ptr %i.a, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.e, i32 noundef %i.f)
  unreachable

check.exit.i:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !81   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !223
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.k, align 8, !tbaa !224
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !220
  %.not.i4.i = icmp eq i32 %i.m, 287
  br i1 %.not.i4.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %check.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.l, align 8, !tbaa !220
  br label %str_checkname.exit

bb.d:                                             ; preds = %check.exit.i
  %i.n = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.g)
  store i32 %i.n, ptr %i.a, align 8, !tbaa !234
  br label %str_checkname.exit

str_checkname.exit:                               ; preds = %bb.c, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !222  ; 2 uses
  %i.q = tail call fastcc i32 @singlevaraux(ptr noundef %i.p, ptr noundef %i.h, ptr noundef %1, i32 noundef 1)
  %i.r = icmp eq i32 %i.q, 8
  br i1 %i.r, label %bb.e, label %bb.f
end_hunk_4
begin_hunk_5_@leaveblock:bb.a
.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %indvars.iv.prol = phi i64 [ %i.v, %.prol.preheader ], [ %i.s, %.lr.ph.i ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.v = add nsw i64 %indvars.iv.prol, -1         ; 4 uses
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !177
  %i.y = zext i16 %i.x to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  store i32 %i.n, ptr %i.aa, align 4, !tbaa !260
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !529

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %indvars.iv.unr = phi i64 [ %i.s, %.lr.ph.i ], [ %i.v, %.prol.preheader ]
  %.lcssa28.unr = phi i64 [ poison, %.lr.ph.i ], [ %i.v, %.prol.preheader ]
  %i.ab = sub nsw i64 %i.t, %i.s
  %i.ac = icmp ugt i64 %i.ab, -4
  br i1 %i.ac, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv = phi i64 [ %i.av, %.lr.ph.i.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 4 uses
  %i.ad = getelementptr [2 x i8], ptr %i.r, i64 %indvars.iv
  %i.ae = getelementptr i8, ptr %i.ad, i64 -2
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !177
  %i.ag = zext i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  store i32 %i.n, ptr %i.ai, align 4, !tbaa !260
  %i.aj = getelementptr [2 x i8], ptr %i.r, i64 %indvars.iv
  %i.ak = getelementptr i8, ptr %i.aj, i64 -4
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !177
  %i.am = zext i16 %i.al to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  store i32 %i.n, ptr %i.ao, align 4, !tbaa !260
  %i.ap = getelementptr [2 x i8], ptr %i.r, i64 %indvars.iv
  %i.aq = getelementptr i8, ptr %i.ap, i64 -6
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !177
  %i.as = zext i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 %i.n, ptr %i.au, align 4, !tbaa !260
  %i.av = add nsw i64 %indvars.iv, -4             ; 4 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !177
  %i.ay = zext i16 %i.ax to i64
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  store i32 %i.n, ptr %i.ba, align 4, !tbaa !260
  %.wide.3 = icmp ugt i64 %i.av, %i.t
  br i1 %.wide.3, label %.lr.ph.i.new, label %._crit_edge.i, !llvm.loop !29

._crit_edge.i:                                    ; preds = %.lr.ph.i.new, %.prol.loopexit
  %.lcssa28 = phi i64 [ %.lcssa28.unr, %.prol.loopexit ], [ %i.av, %.lr.ph.i.new ]
  %i.bb = trunc nuw i64 %.lcssa28 to i8
  store i8 %i.bb, ptr %i.j, align 2, !tbaa !249
  br label %removevars.exit

removevars.exit:                                  ; preds = %bb.a, %._crit_edge.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !251
  %.not = icmp eq i8 %i.bd, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %removevars.exit
  %i.be = shl nuw nsw i32 %i.h, 6
  %i.bf = or disjoint i32 %i.be, 35
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !224
  %i.bi = tail call fastcc i32 @luaK_code(ptr noundef nonnull %0, i32 noundef %i.bf, i32 noundef %i.bh) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %removevars.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.bk = load i8, ptr %i.bj, align 2, !tbaa !249
  %i.bl = zext i8 %i.bk to i32
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !253
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !247 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !238
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !239
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.bt = icmp eq i32 %i.bo, -1
  br i1 %i.bt, label %luaK_patchtohere.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bu = load i32, ptr %i.bs, align 8, !tbaa !162 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, -1
  br i1 %i.bv, label %bb.e, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.d
  %.val.i.i = load ptr, ptr %0, align 8, !tbaa !232
  %i.bw = getelementptr i8, ptr %.val.i.i, i64 24
  %.val.val.i.i = load ptr, ptr %i.bw, align 8, !tbaa !160 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.bo, ptr %i.bs, align 8, !tbaa !162
  br label %luaK_patchtohere.exit

bb.f:                                             ; preds = %bb.f, %.preheader.i.i
  %.0.i.i = phi i32 [ %i.ce, %bb.f ], [ %i.bu, %.preheader.i.i ] ; 3 uses
  %i.bx = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !162 ; 2 uses
  %i.ca = lshr i32 %i.bz, 14
  %i.cb = add nsw i32 %i.ca, -131071              ; 2 uses
  %i.cc = icmp eq i32 %i.cb, -1
  %i.cd = add nuw nsw i32 %.0.i.i, 1
  %i.ce = add nsw i32 %i.cd, %i.cb                ; 2 uses
  %.not13.i.i = icmp eq i32 %i.ce, -1
  %.not.i.i = select i1 %i.cc, i1 true, i1 %.not13.i.i
  br i1 %.not.i.i, label %bb.g, label %bb.f, !llvm.loop !26

bb.g:                                             ; preds = %bb.f
  %.neg.i.i.i = xor i32 %.0.i.i, -1
  %i.cf = add i32 %i.bo, %.neg.i.i.i              ; 2 uses
  %i.cg = add i32 %i.cf, -131072
  %i.ch = icmp ult i32 %i.cg, -262143
  br i1 %i.ch, label %bb.h, label %fixjump.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.ci = load ptr, ptr %i.d, align 8, !tbaa !236 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.ck = load i32, ptr %i.cj, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.ci, ptr noundef nonnull @.str.150, i32 noundef %i.ck)
  unreachable

fixjump.exit.i.i:                                 ; preds = %bb.g
  %i.cl = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.bx
  %i.cm = and i32 %i.bz, 16383
  %i.cn = shl nsw i32 %i.cf, 14
  %i.co = add i32 %i.cn, 2147467264
  %i.cp = or disjoint i32 %i.co, %i.cm
  store i32 %i.cp, ptr %i.cl, align 4, !tbaa !162
  br label %luaK_patchtohere.exit

luaK_patchtohere.exit:                            ; preds = %bb.c, %bb.e, %fixjump.exit.i.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @exp1(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.expdesc, align 8            ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  %i.a = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 0), !inline_history !33 ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !222  ; 7 uses
  call fastcc void @luaK_dischargevars(ptr noundef %i.c, ptr noundef nonnull %1)
  %i.d = load i32, ptr %1, align 8, !tbaa !244
  %i.e = icmp eq i32 %i.d, 12
  br i1 %i.e, label %bb.b, label %freeexp.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !81   ; 2 uses
  %i.h = and i32 %i.g, 256
  %.not.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i, label %bb.c, label %freeexp.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 74
  %i.j = load i8, ptr %i.i, align 2, !tbaa !249
  %i.k = zext i8 %i.j to i32
  %.not3.i.i.i = icmp slt i32 %i.g, %i.k
  br i1 %.not3.i.i.i, label %freeexp.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !253
  %i.n = add nsw i32 %i.m, -1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !253
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 60 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !253  ; 4 uses
  %i.q = add nsw i32 %i.p, 1                      ; 2 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !232
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 115 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !tbaa !182
  %i.u = zext i8 %i.t to i32
  %.not.i = icmp slt i32 %i.p, %i.u
  br i1 %.not.i, label %luaK_exp2nextreg.exit, label %bb.e

bb.e:                                             ; preds = %freeexp.exit.i
  %i.v = icmp samesign ugt i32 %i.p, 248
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !236  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.x, ptr noundef nonnull @.str.152, i32 noundef %i.z)
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aa = trunc nuw i32 %i.q to i8
  store i8 %i.aa, ptr %i.s, align 1, !tbaa !182
  br label %luaK_exp2nextreg.exit

luaK_exp2nextreg.exit:                            ; preds = %freeexp.exit.i, %bb.g
  store i32 %i.q, ptr %i.o, align 4, !tbaa !253
  call fastcc void @exp2reg(ptr noundef nonnull %i.c, ptr noundef nonnull %1, i32 noundef %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @forbody(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 -2147483648, 2147483645) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
adjustlocalvars.exit:
  %5 = alloca %struct.BlockCnt, align 8           ; 8 uses
  %6 = alloca %struct.BlockCnt, align 8           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !222  ; 30 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 74 ; 3 uses
  %i.d = load i8, ptr %i.c, align 2, !tbaa !249
  %i.e = add i8 %i.d, 3                           ; 2 uses
  store i8 %i.e, ptr %i.c, align 2, !tbaa !249
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 5 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !238  ; 3 uses
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !198  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 196 ; 3 uses
  %i.l = zext i8 %i.e to i64                      ; 3 uses
  %i.m = getelementptr [2 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -6
  %i.o = load i16, ptr %i.n, align 2, !tbaa !177
  %i.p = zext i16 %i.o to i64
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.g, ptr %i.r, align 8, !tbaa !254
  %i.s = getelementptr [2 x i8], ptr %i.k, i64 %i.l
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %i.u = load i16, ptr %i.t, align 2, !tbaa !177
  %i.v = zext i16 %i.u to i64
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.g, ptr %i.x, align 8, !tbaa !254
  %i.y = getelementptr [2 x i8], ptr %i.k, i64 %i.l
  %i.z = getelementptr i8, ptr %i.y, i64 -2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !177
  %i.ab = zext i16 %i.aa to i64
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i32 %i.g, ptr %i.ad, align 8, !tbaa !254
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !234
  %.not.i.i = icmp eq i32 %i.af, 259
  br i1 %.not.i.i, label %check.exit.i, label %bb.a

bb.a:                                             ; preds = %adjustlocalvars.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !219
  %i.ai = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.ah, ptr noundef nonnull @.str.166, ptr noundef nonnull @.str.67)
  %i.aj = load i32, ptr %i.ae, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.ai, i32 noundef %i.aj)
  unreachable

check.exit.i:                                     ; preds = %adjustlocalvars.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !223
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.al, ptr %i.am, align 8, !tbaa !224
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !220
  %.not.i2.i = icmp eq i32 %i.ao, 287
  br i1 %.not.i2.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %check.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.an, align 8, !tbaa !220
  br label %checknext.exit

bb.c:                                             ; preds = %check.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.ap)
  store i32 %i.aq, ptr %i.ae, align 8, !tbaa !234
  br label %checknext.exit

checknext.exit:                                   ; preds = %bb.b, %bb.c
  %.not = icmp eq i32 %4, 0                       ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %checknext.exit
  %i.ar = shl i32 %1, 6
  %i.as = or i32 %i.ar, 2147450912
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !236
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !224
  %i.ax = tail call fastcc i32 @luaK_code(ptr noundef nonnull %i.b, i32 noundef %i.as, i32 noundef %i.aw)
  br label %luaK_jump.exit

bb.e:                                             ; preds = %checknext.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !240 ; 3 uses
  store i32 -1, ptr %i.ay, align 8, !tbaa !240
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !236
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !224
  %i.be = tail call fastcc i32 @luaK_code(ptr noundef nonnull %i.b, i32 noundef 2147450902, i32 noundef %i.bd) ; 4 uses
  %i.bf = icmp eq i32 %i.az, -1
  br i1 %i.bf, label %luaK_jump.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = icmp eq i32 %i.be, -1
  br i1 %i.bg, label %luaK_jump.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.f
  %.val.i.i = load ptr, ptr %i.b, align 8, !tbaa !232
  %i.bh = getelementptr i8, ptr %.val.i.i, i64 24
  %.val.val.i.i = load ptr, ptr %i.bh, align 8, !tbaa !160 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader.i.i
  %.0.i.i = phi i32 [ %i.bp, %bb.g ], [ %i.be, %.preheader.i.i ] ; 3 uses
  %i.bi = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !162 ; 2 uses
  %i.bl = lshr i32 %i.bk, 14
  %i.bm = add nsw i32 %i.bl, -131071              ; 2 uses
  %i.bn = icmp eq i32 %i.bm, -1
  %i.bo = add nuw nsw i32 %.0.i.i, 1
  %i.bp = add nsw i32 %i.bo, %i.bm                ; 2 uses
  %.not13.i.i = icmp eq i32 %i.bp, -1
  %.not.i.i31 = select i1 %i.bn, i1 true, i1 %.not13.i.i
  br i1 %.not.i.i31, label %bb.h, label %bb.g, !llvm.loop !26

bb.h:                                             ; preds = %bb.g
  %.neg.i.i.i = xor i32 %.0.i.i, -1
  %i.bq = add i32 %i.az, %.neg.i.i.i              ; 2 uses
  %i.br = add i32 %i.bq, -131072
  %i.bs = icmp ult i32 %i.br, -262143
  br i1 %i.bs, label %bb.i, label %fixjump.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !236 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.bt, ptr noundef nonnull @.str.150, i32 noundef %i.bv)
  unreachable

fixjump.exit.i.i:                                 ; preds = %bb.h
  %i.bw = getelementptr inbounds [4 x i8], ptr %.val.val.i.i, i64 %i.bi
  %i.bx = and i32 %i.bk, 16383
  %i.by = shl nsw i32 %i.bq, 14
  %i.bz = add i32 %i.by, 2147467264
  %i.ca = or disjoint i32 %i.bz, %i.bx
  store i32 %i.ca, ptr %i.bw, align 4, !tbaa !162
  br label %luaK_jump.exit

luaK_jump.exit:                                   ; preds = %fixjump.exit.i.i, %bb.f, %bb.e, %bb.d
  %i.cb = phi i32 [ %i.ax, %bb.d ], [ %i.be, %bb.e ], [ %i.be, %fixjump.exit.i.i ], [ %i.az, %bb.f ] ; 4 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 -1, ptr %i.cc, align 8, !tbaa !247
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 14
  store i8 0, ptr %i.cd, align 2, !tbaa !248
  %i.ce = load i8, ptr %i.c, align 2, !tbaa !249
  %i.cf = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i8 %i.ce, ptr %i.cf, align 4, !tbaa !250
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 13
  store i8 0, ptr %i.cg, align 1, !tbaa !251
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !241
  store ptr %i.ci, ptr %6, align 8, !tbaa !252
  store ptr %6, ptr %i.ch, align 8, !tbaa !241
  %.val = load ptr, ptr %i.a, align 8, !tbaa !222 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val, i64 74 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 2, !tbaa !249
  %i.cl = trunc i32 %3 to i8
  %i.cm = add i8 %i.ck, %i.cl                     ; 3 uses
  store i8 %i.cm, ptr %i.cj, align 2, !tbaa !249
  %.not1.i = icmp eq i32 %3, 0
  br i1 %.not1.i, label %adjustlocalvars.exit35, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %luaK_jump.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !238 ; 5 uses
  %i.cp = load ptr, ptr %.val, align 8, !tbaa !232
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !198 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.val, i64 196 ; 5 uses
  %i.ct = sext i32 %3 to i64                      ; 3 uses
  %i.cu = zext i8 %i.cm to i64                    ; 5 uses
  %xtraiter = and i64 %i.ct, 3
  %i.cv = and i32 %3, 3
  %lcmp.mod.not = icmp eq i32 %i.cv, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
end_hunk_5
begin_hunk_6_@luaK_storevar:bb.a
  %i.n = load i32, ptr %i.m, align 8, !tbaa !81
  tail call fastcc void @exp2reg(ptr noundef %0, ptr noundef %2, i32 noundef %i.n)
  br label %freeexp.exit25

bb.f:                                             ; preds = %bb.a
  %i.o = tail call fastcc i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %2)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !81
  %i.r = shl i32 %i.o, 6
  %i.s = shl i32 %i.q, 23
  %i.t = or i32 %i.r, %i.s
  %i.u = or disjoint i32 %i.t, 8
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  %i.v = tail call fastcc i32 @luaK_exp2anyreg(ptr noundef %0, ptr noundef %2)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load i32, ptr %i.w, align 8, !tbaa !81
  %i.y = shl i32 %i.v, 6
  %i.z = shl i32 %i.x, 14
  %i.aa = or i32 %i.y, %i.z
  %i.ab = or disjoint i32 %i.aa, 7
  br label %.sink.split

bb.h:                                             ; preds = %bb.a
  %i.ac = tail call fastcc i32 @luaK_exp2RK(ptr noundef %0, ptr noundef %2)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !81
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !81
  %i.ah = shl i32 %i.ae, 6
  %i.ai = shl i32 %i.ag, 23
  %i.aj = shl i32 %i.ac, 14
  %i.ak = or i32 %i.aj, %i.ah
  %i.al = or i32 %i.ak, %i.ai
  %i.am = or disjoint i32 %i.al, 9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.g, %bb.h
  %.sink = phi i32 [ %i.am, %bb.h ], [ %i.ab, %bb.g ], [ %i.u, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !236
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !224
  %i.ar = tail call fastcc i32 @luaK_code(ptr noundef %0, i32 noundef %.sink, i32 noundef %i.aq) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.a
  %i.as = load i32, ptr %2, align 8, !tbaa !244
  %i.at = icmp eq i32 %i.as, 12
  br i1 %i.at, label %bb.j, label %freeexp.exit25

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !81 ; 2 uses
  %i.aw = and i32 %i.av, 256
  %.not.i.i23 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.i23, label %bb.k, label %freeexp.exit25

bb.k:                                             ; preds = %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 74
  %i.ay = load i8, ptr %i.ax, align 2, !tbaa !249
  %i.az = zext i8 %i.ay to i32
  %.not3.i.i24 = icmp slt i32 %i.av, %i.az
  br i1 %.not3.i.i24, label %freeexp.exit25, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !253
  %i.bc = add nsw i32 %i.bb, -1
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !253
  br label %freeexp.exit25

freeexp.exit25:                                   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %freeexp.exit
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @assignment(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.expdesc, align 8            ; 19 uses
  %4 = alloca %struct.LHS_assign, align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !258
  %i.c = add i32 %i.b, -6
  %or.cond = icmp ult i32 %i.c, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !234  ; 2 uses
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @luaX_lexerror(ptr noundef nonnull readonly %0, ptr noundef nonnull @.str.175, i32 noundef %i.e)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.e, 44
  br i1 %i.f, label %bb.d, label %testnext.exit

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !223
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.i, align 8, !tbaa !224
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !220
  %.not.i.i = icmp eq i32 %i.k, 287
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.j, align 8, !tbaa !220
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.l)
  store i32 %i.m, ptr %i.d, align 8, !tbaa !234
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store ptr %1, ptr %4, align 8, !tbaa !259
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call fastcc void @primaryexp(ptr noundef %0, ptr noundef %i.n)
  %i.o = load i32, ptr %i.n, align 8, !tbaa !258
  %i.p = icmp eq i32 %i.o, 6
  br i1 %i.p, label %bb.h, label %check_conflict.exit

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %0, i64 48
  %.val37 = load ptr, ptr %i.q, align 8, !tbaa !222 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val37, i64 60 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !253  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.h
  %.03.i = phi i32 [ 0, %bb.h ], [ %.03.i.be, %.backedge.i.backedge ] ; 2 uses
  %.0172.i = phi ptr [ %1, %bb.h ], [ %.0172.i.be, %.backedge.i.backedge ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.0172.i, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !258
  %i.w = icmp eq i32 %i.v, 9
  br i1 %i.w, label %bb.i, label %bb.l

bb.i:                                             ; preds = %.backedge.i
  %i.x = getelementptr inbounds nuw i8, ptr %.0172.i, i64 16 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !81
  %i.z = load i32, ptr %i.t, align 8, !tbaa !81   ; 2 uses
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.s, ptr %i.x, align 8, !tbaa !81
  %.pre.i = load i32, ptr %i.t, align 8, !tbaa !81
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ab = phi i32 [ %.pre.i, %bb.j ], [ %i.z, %bb.i ] ; 2 uses
  %.1.i = phi i32 [ 1, %bb.j ], [ %.03.i, %bb.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.0172.i, i64 20 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !81
  %i.ae = icmp eq i32 %i.ad, %i.ab
  br i1 %i.ae, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %.backedge.i
  %.2.i = phi i32 [ %.03.i, %.backedge.i ], [ %.1.i, %bb.k ] ; 2 uses
  %i.af = load ptr, ptr %.0172.i, align 8, !tbaa !259 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.m, label %.backedge.i.backedge

.thread.i:                                        ; preds = %bb.k
  store i32 %i.s, ptr %i.ac, align 4, !tbaa !81
  %i.ag = load ptr, ptr %.0172.i, align 8, !tbaa !259 ; 2 uses
  %.not7.i = icmp eq ptr %i.ag, null
  br i1 %.not7.i, label %.thread9.i, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %.thread.i, %bb.l
  %.03.i.be = phi i32 [ %.2.i, %bb.l ], [ 1, %.thread.i ]
  %.0172.i.be = phi ptr [ %i.af, %bb.l ], [ %i.ag, %.thread.i ]
  br label %.backedge.i, !llvm.loop !532

bb.m:                                             ; preds = %bb.l
  %.not18.i = icmp eq i32 %.2.i, 0
  br i1 %.not18.i, label %check_conflict.exit, label %..thread9.i_crit_edge

..thread9.i_crit_edge:                            ; preds = %bb.m
  %.pre = load i32, ptr %i.t, align 8, !tbaa !81
  br label %.thread9.i

.thread9.i:                                       ; preds = %.thread.i, %..thread9.i_crit_edge
  %i.ah = phi i32 [ %.pre, %..thread9.i_crit_edge ], [ %i.ab, %.thread.i ]
  %i.ai = load i32, ptr %i.r, align 4, !tbaa !253
  %i.aj = shl i32 %i.ai, 6
  %i.ak = shl i32 %i.ah, 23
  %i.al = or i32 %i.ak, %i.aj
  %i.am = getelementptr inbounds nuw i8, ptr %.val37, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !236
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !224
  %5 = tail call fastcc i32 @luaK_code(ptr noundef %.val37, i32 noundef %i.al, i32 noundef %i.ap) ; 0 uses
  %i.aq = load i32, ptr %i.r, align 4, !tbaa !253 ; 3 uses
  %i.ar = add nsw i32 %i.aq, 1                    ; 2 uses
  %i.as = load ptr, ptr %.val37, align 8, !tbaa !232
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 115 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !182
  %i.av = zext i8 %i.au to i32
  %.not1.i = icmp slt i32 %i.aq, %i.av
  br i1 %.not1.i, label %luaK_reserveregs.exit.i, label %bb.n

bb.n:                                             ; preds = %.thread9.i
  %i.aw = icmp samesign ugt i32 %i.aq, 248
  br i1 %i.aw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ax = load ptr, ptr %i.am, align 8, !tbaa !236 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.ax, ptr noundef nonnull @.str.152, i32 noundef %i.az)
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ba = trunc nuw i32 %i.ar to i8
  store i8 %i.ba, ptr %i.at, align 1, !tbaa !182
  br label %luaK_reserveregs.exit.i

luaK_reserveregs.exit.i:                          ; preds = %bb.p, %.thread9.i
  store i32 %i.ar, ptr %i.r, align 4, !tbaa !253
  br label %check_conflict.exit

check_conflict.exit:                              ; preds = %luaK_reserveregs.exit.i, %bb.m, %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !219
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 96
  %i.be = load i16, ptr %i.bd, align 8, !tbaa !116
  %i.bf = zext i16 %i.be to i32
  %i.bg = sub nsw i32 200, %i.bf                  ; 3 uses
  %i.bh = icmp sgt i32 %2, %i.bg
  br i1 %i.bh, label %bb.q, label %bb.u

bb.q:                                             ; preds = %check_conflict.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !222 ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !232
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 96
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !211 ; 2 uses
  %i.bn = icmp eq i32 %i.bm, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !237 ; 2 uses
  br i1 %i.bn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %6 = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.bp, ptr noundef nonnull @.str.155, i32 noundef range(i32 -65335, 2147483646) %i.bg, ptr noundef nonnull @.str.176)
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %7 = tail call ptr (ptr, ptr, ...) @luaO_pushfstring(ptr noundef %i.bp, ptr noundef nonnull @.str.156, i32 noundef %i.bm, i32 noundef range(i32 -65335, 2147483646) %i.bg, ptr noundef nonnull @.str.176)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bq = phi ptr [ %6, %bb.r ], [ %7, %bb.s ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !236
  tail call fastcc void @luaX_lexerror(ptr noundef %i.bs, ptr noundef nonnull %i.bq, i32 noundef 0)
  unreachable

bb.u:                                             ; preds = %check_conflict.exit
  %i.bt = add nsw i32 %2, 1
  call fastcc void @assignment(ptr noundef %0, ptr noundef %4, i32 noundef %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %.thread

testnext.exit:                                    ; preds = %bb.c
  tail call fastcc void @checknext(ptr noundef %0, i32 noundef 61)
  %i.bu = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0), !inline_history !34 ; 0 uses
  %i.bv = load i32, ptr %i.d, align 8, !tbaa !234
  %i.bw = icmp eq i32 %i.bv, 44
  br i1 %i.bw, label %.lr.ph, label %explist1.exit

.lr.ph:                                           ; preds = %testnext.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %luaK_exp2nextreg.exit
  %.0.i3850 = phi i32 [ 1, %.lr.ph ], [ %i.de, %luaK_exp2nextreg.exit ]
  %i.cd = load i32, ptr %i.bx, align 4, !tbaa !223
  store i32 %i.cd, ptr %i.by, align 8, !tbaa !224
  %i.ce = load i32, ptr %i.bz, align 8, !tbaa !220
  %.not.i.i43 = icmp eq i32 %i.ce, 287
  br i1 %.not.i.i43, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i64 16, i1 false), !tbaa.struct !233
  store i32 287, ptr %i.bz, align 8, !tbaa !220
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %8 = tail call fastcc i32 @llex(ptr noundef nonnull %0, ptr noundef %i.ca)
  store i32 %8, ptr %i.d, align 8, !tbaa !234
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.cf = load ptr, ptr %i.cb, align 8, !tbaa !222 ; 7 uses
  call fastcc void @luaK_dischargevars(ptr noundef %i.cf, ptr noundef nonnull %3)
  %i.cg = load i32, ptr %3, align 8, !tbaa !244
  %i.ch = icmp eq i32 %i.cg, 12
  br i1 %i.ch, label %bb.z, label %freeexp.exit.i

bb.z:                                             ; preds = %bb.y
  %i.ci = load i32, ptr %i.cc, align 8, !tbaa !81 ; 2 uses
  %i.cj = and i32 %i.ci, 256
  %.not.i.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not.i.i.i, label %bb.aa, label %freeexp.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 74
  %i.cl = load i8, ptr %i.ck, align 2, !tbaa !249
  %i.cm = zext i8 %i.cl to i32
  %.not3.i.i.i = icmp slt i32 %i.ci, %i.cm
  br i1 %.not3.i.i.i, label %freeexp.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 60 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !253
  %i.cp = add nsw i32 %i.co, -1
  store i32 %i.cp, ptr %i.cn, align 4, !tbaa !253
  br label %freeexp.exit.i

freeexp.exit.i:                                   ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 60 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !253 ; 4 uses
  %i.cs = add nsw i32 %i.cr, 1                    ; 2 uses
  %i.ct = load ptr, ptr %i.cf, align 8, !tbaa !232
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 115 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !182
  %i.cw = zext i8 %i.cv to i32
  %.not.i40 = icmp slt i32 %i.cr, %i.cw
  br i1 %.not.i40, label %luaK_exp2nextreg.exit, label %bb.ac

bb.ac:                                            ; preds = %freeexp.exit.i
  %i.cx = icmp samesign ugt i32 %i.cr, 248
  br i1 %i.cx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !236 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = load i32, ptr %i.da, align 8, !tbaa !234
  tail call fastcc void @luaX_lexerror(ptr noundef readonly %i.cz, ptr noundef nonnull @.str.152, i32 noundef %i.db)
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.dc = trunc nuw i32 %i.cs to i8
  store i8 %i.dc, ptr %i.cu, align 1, !tbaa !182
  br label %luaK_exp2nextreg.exit

luaK_exp2nextreg.exit:                            ; preds = %freeexp.exit.i, %bb.ae
  store i32 %i.cs, ptr %i.cq, align 4, !tbaa !253
  call fastcc void @exp2reg(ptr noundef nonnull %i.cf, ptr noundef nonnull %3, i32 noundef %i.cr)
  %i.dd = call fastcc i32 @subexpr(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 0), !inline_history !34 ; 0 uses
  %i.de = add nuw nsw i32 %.0.i3850, 1            ; 2 uses
  %i.df = load i32, ptr %i.d, align 8, !tbaa !234
  %i.dg = icmp eq i32 %i.df, 44
  br i1 %i.dg, label %bb.v, label %explist1.exit, !llvm.loop !27

explist1.exit:                                    ; preds = %luaK_exp2nextreg.exit, %testnext.exit
  %.0.i38.lcssa = phi i32 [ 1, %testnext.exit ], [ %i.de, %luaK_exp2nextreg.exit ] ; 4 uses
  %.not36.not = icmp eq i32 %.0.i38.lcssa, %2
  %i.dh = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !222 ; 6 uses
  br i1 %.not36.not, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %explist1.exit
  call fastcc void @adjust_assign(ptr %i.di, i32 noundef %2, i32 noundef %.0.i38.lcssa, ptr noundef %3)
  %i.dj = icmp sgt i32 %.0.i38.lcssa, %2
  br i1 %i.dj, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %.neg = sub i32 %2, %.0.i38.lcssa
  %i.dk = load ptr, ptr %i.dh, align 8, !tbaa !222
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 60 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !253
  %i.dn = add i32 %.neg, %i.dm
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !253
  br label %.thread

bb.ah:                                            ; preds = %explist1.exit
  %i.do = load i32, ptr %3, align 8, !tbaa !244
  switch i32 %i.do, label %bb.ak [
    i32 13, label %bb.ai
    i32 14, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  store i32 12, ptr %3, align 8, !tbaa !244
  %i.dp = load ptr, ptr %i.di, align 8, !tbaa !232
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !160
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !81
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !162
  %i.dx = lshr i32 %i.dw, 6
  %i.dy = and i32 %i.dx, 255
  store i32 %i.dy, ptr %i.ds, align 8, !tbaa !81
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.dz = load ptr, ptr %i.di, align 8, !tbaa !232
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !160
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !81
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.eb, i64 %i.ee ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !162
  %i.eh = and i32 %i.eg, 8388607
  %i.ei = or disjoint i32 %i.eh, 16777216
  store i32 %i.ei, ptr %i.ef, align 4, !tbaa !162
  store i32 11, ptr %3, align 8, !tbaa !244
  br label %bb.ak

.thread:                                          ; preds = %bb.af, %bb.ag, %bb.u
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !222 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 60
  %i.em = load i32, ptr %i.el, align 4, !tbaa !253
  %i.en = add nsw i32 %i.em, -1
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1, ptr %i.eo, align 8, !tbaa !255
  %i.ep = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 -1, ptr %i.ep, align 4, !tbaa !245
  store i32 12, ptr %3, align 8, !tbaa !244
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.en, ptr %i.eq, align 8, !tbaa !81
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.ai, %bb.aj, %.thread
  %.sink = phi ptr [ %i.ek, %.thread ], [ %i.di, %bb.aj ], [ %i.di, %bb.ai ], [ %i.di, %bb.ah ]
  call fastcc void @luaK_storevar(ptr noundef %.sink, ptr noundef %i.a, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc double @lua_tonumber(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #23 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !114
  %i.e = zext nneg i32 %1 to i64
  %i.f = getelementptr [16 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -16      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95
  %.not28.i = icmp ult ptr %i.g, %i.i
  %.luaO_nilobject_.i = select i1 %.not28.i, ptr %i.g, ptr @luaO_nilobject_
  br label %index2adr.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp sgt i32 %1, -10000
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !95
  %i.m = sext i32 %1 to i64
  %i.n = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.m
  br label %index2adr.exit

bb.e:                                             ; preds = %bb.c
  switch i32 %1, label %bb.i [
    i32 -10000, label %bb.f
    i32 -10001, label %bb.g
    i32 -10002, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !68
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 160
  br label %index2adr.exit

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !117
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !81
  store ptr %i.y, ptr %i.w, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 5, ptr %i.z, align 8, !tbaa !99
  br label %index2adr.exit

bb.h:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 120
  br label %index2adr.exit

bb.i:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !111
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !117
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !81 ; 2 uses
  %i.ag = sub nuw nsw i32 -10002, %1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 11
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !81
  %i.aj = zext i8 %i.ai to i32
  %.not.i = icmp samesign ugt i32 %i.ag, %i.aj
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  %i.al = sub nuw nsw i32 -10003, %1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.am
  %i.ao = select i1 %.not.i, ptr @luaO_nilobject_, ptr %i.an
  br label %index2adr.exit

index2adr.exit:                                   ; preds = %bb.b, %bb.d, %bb.f, %bb.g, %bb.h, %bb.i
  %.1.i = phi ptr [ %.luaO_nilobject_.i, %bb.b ], [ %i.n, %bb.d ], [ %i.ao, %bb.i ], [ %i.q, %bb.f ], [ %i.w, %bb.g ], [ %i.aa, %bb.h ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !99
  switch i32 %i.aq, label %luaV_tonumber.exit [
    i32 3, label %index2adr.exit.luaV_tonumber.exit.thread_crit_edge
    i32 4, label %bb.j
  ]

index2adr.exit.luaV_tonumber.exit.thread_crit_edge: ; preds = %index2adr.exit
  %.pre = load double, ptr %.1.i, align 8, !tbaa !81
  br label %luaV_tonumber.exit

bb.j:                                             ; preds = %index2adr.exit
  %i.ar = load ptr, ptr %.1.i, align 8, !tbaa !81
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.at = call double @strtod(ptr noundef nonnull %i.as, ptr noundef nonnull %i.a) #33
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !100 ; 3 uses
  %i.av = icmp eq ptr %i.au, %i.as
  br i1 %i.av, label %luaO_str2d.exit.thread.i, label %bb.k

luaO_str2d.exit.thread.i:                         ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %luaV_tonumber.exit
end_hunk_6
