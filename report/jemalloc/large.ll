Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/large?download=true
inline.NumInlined: 99
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@je_large_ralloc_no_move:bb.a
  %i.ac = icmp sgt i8 %i.y, 0
  br i1 %i.ac, label %ticker_geom_ticks.exit, label %bb.h

ticker_geom_ticks.exit:                           ; preds = %bb.g
  store i32 0, ptr %i.v, align 4, !tbaa !86
  br label %arena_decay_ticks.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !14
  %i.ae = mul i64 %i.ad, 6364136223846793005
  %i.af = add i64 %i.ae, 1442695040888963407      ; 2 uses
  store i64 %i.af, ptr %i.w, align 8, !tbaa !14
  %i.ag = lshr i64 %i.af, 58
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !87
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.ag
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !12
  %i.am = zext i8 %i.al to i64
  %i.an = mul nsw i64 %i.am, %i.aj
  %i.ao = udiv i64 %i.an, 61
  %i.ap = trunc i64 %i.ao to i32
  store i32 %i.ap, ptr %i.v, align 8, !tbaa !86
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.t, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %arena_decay_ticks.exit

bb.i:                                             ; preds = %bb.d
  %i.aq = icmp ult i64 %2, %3
  %i.ar = icmp ugt i64 %2, %.0.i
  %or.cond = and i1 %i.aq, %i.ar
  br i1 %or.cond, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.as = tail call fastcc zeroext i1 @large_ralloc_no_move_expand(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %2, i1 noundef zeroext %4)
  br i1 %i.as, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val42 = load i64, ptr %1, align 8, !tbaa !90
  %i.at = and i64 %.val42, 4095
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.at
  %i.av = load atomic ptr, ptr %i.au monotonic, align 8
  %i.aw = icmp eq ptr %0, null
  br i1 %i.aw, label %arena_decay_ticks.exit, label %bb.l, !prof !15

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !12
  %i.bb = load i32, ptr %i.ax, align 4, !tbaa !86 ; 2 uses
  %i.bc = add nsw i32 %i.bb, -1
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !86
  %i.bd = icmp slt i32 %i.bb, 1
  br i1 %i.bd, label %bb.m, label %arena_decay_ticks.exit, !prof !15

bb.m:                                             ; preds = %bb.l
  %i.be = icmp sgt i8 %i.ba, 0
  br i1 %i.be, label %ticker_geom_ticks.exit49, label %bb.n

ticker_geom_ticks.exit49:                         ; preds = %bb.m
  store i32 0, ptr %i.ax, align 4, !tbaa !86
  br label %arena_decay_ticks.exit

bb.n:                                             ; preds = %bb.m
  %i.bf = load i64, ptr %i.ay, align 8, !tbaa !14
  %i.bg = mul i64 %i.bf, 6364136223846793005
  %i.bh = add i64 %i.bg, 1442695040888963407      ; 2 uses
  store i64 %i.bh, ptr %i.ay, align 8, !tbaa !14
  %i.bi = lshr i64 %i.bh, 58
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !87
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.bi
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !12
  %i.bo = zext i8 %i.bn to i64
  %i.bp = mul nsw i64 %i.bo, %i.bl
  %i.bq = udiv i64 %i.bp, 61
  %i.br = trunc i64 %i.bq to i32
  store i32 %i.br, ptr %i.ax, align 8, !tbaa !86
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.av, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %arena_decay_ticks.exit

bb.o:                                             ; preds = %bb.i, %bb.j, %edata_usize_get.exit
  %.not = icmp ult i64 %.0.i, %2
  %.not36 = icmp ugt i64 %.0.i, %3                ; 2 uses
  %or.cond37 = or i1 %.not, %.not36
  br i1 %or.cond37, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val41 = load i64, ptr %1, align 8, !tbaa !90
  %i.bs = and i64 %.val41, 4095
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.bs
  %i.bu = load atomic ptr, ptr %i.bt monotonic, align 8
  %i.bv = icmp eq ptr %0, null
  br i1 %i.bv, label %arena_decay_ticks.exit, label %bb.q, !prof !15

bb.q:                                             ; preds = %bb.p
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !12
  %i.ca = load i32, ptr %i.bw, align 4, !tbaa !86 ; 2 uses
  %i.cb = add nsw i32 %i.ca, -1
  store i32 %i.cb, ptr %i.bw, align 4, !tbaa !86
  %i.cc = icmp slt i32 %i.ca, 1
  br i1 %i.cc, label %bb.r, label %arena_decay_ticks.exit, !prof !15

bb.r:                                             ; preds = %bb.q
  %i.cd = icmp sgt i8 %i.bz, 0
  br i1 %i.cd, label %ticker_geom_ticks.exit54, label %bb.s

ticker_geom_ticks.exit54:                         ; preds = %bb.r
  store i32 0, ptr %i.bw, align 4, !tbaa !86
  br label %arena_decay_ticks.exit

bb.s:                                             ; preds = %bb.r
  %i.ce = load i64, ptr %i.bx, align 8, !tbaa !14
  %i.cf = mul i64 %i.ce, 6364136223846793005
  %i.cg = add i64 %i.cf, 1442695040888963407      ; 2 uses
  store i64 %i.cg, ptr %i.bx, align 8, !tbaa !14
  %i.ch = lshr i64 %i.cg, 58
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !87
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.ch
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !12
  %i.cn = zext i8 %i.cm to i64
  %i.co = mul nsw i64 %i.cn, %i.ck
  %i.cp = udiv i64 %i.co, 61
  %i.cq = trunc i64 %i.cp to i32
  store i32 %i.cq, ptr %i.bw, align 8, !tbaa !86
  tail call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.bu, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %arena_decay_ticks.exit

bb.t:                                             ; preds = %bb.o
  br i1 %.not36, label %bb.u, label %arena_decay_ticks.exit

bb.u:                                             ; preds = %bb.t
  %.val.i55 = load i64, ptr %1, align 8, !tbaa !90
  %i.cr = and i64 %.val.i55, 4095
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.cr
  %i.ct = load atomic ptr, ptr %i.cs monotonic, align 8 ; 4 uses
  %i.cu = tail call ptr @je_arena_get_ehooks(ptr noundef %i.ct) #9
  %i.cv = getelementptr i8, ptr %1, i64 16
  %.val18.i = load i64, ptr %i.cv, align 8, !tbaa !12
  %i.cw = and i64 %.val18.i, -4096                ; 2 uses
  %.val.i.i = load i64, ptr %1, align 8, !tbaa !90
  %i.cx = trunc i64 %.val.i.i to i32
  %i.cy = lshr i32 %i.cx, 20
  %i.cz = and i32 %i.cy, 255                      ; 2 uses
  %i.da = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !18, !range !16, !noundef !19
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = icmp samesign ugt i32 %i.cz, 35
  %or.cond.not.i.i = select i1 %i.db, i1 %i.dc, i1 false
  br i1 %or.cond.not.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dd = zext nneg i32 %i.cz to i64
  %i.de = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 8, !tbaa !14
  br label %edata_usize_get.exit.i

bb.w:                                             ; preds = %bb.u
  %i.dg = load i64, ptr @je_sz_large_pad, align 8, !tbaa !14
  %i.dh = sub i64 %i.cw, %i.dg
  br label %edata_usize_get.exit.i

edata_usize_get.exit.i:                           ; preds = %bb.w, %bb.v
  %.0.i19.i = phi i64 [ %i.df, %bb.v ], [ %i.dh, %bb.w ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dj = load atomic ptr, ptr %i.di acquire, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 56
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !101
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %arena_decay_ticks.exit, label %bb.x

bb.x:                                             ; preds = %edata_usize_get.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ct, i64 12288
  %i.do = load i64, ptr @je_sz_large_pad, align 8, !tbaa !14
  %i.dp = add i64 %i.do, %3
  %i.dq = icmp ult i64 %3, 4097
  br i1 %i.dq, label %bb.y, label %bb.z, !prof !11

bb.y:                                             ; preds = %bb.x
  %i.dr = add nuw nsw i64 %3, 7
  %i.ds = lshr i64 %i.dr, 3
  %i.dt = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !12
  %i.dv = zext i8 %i.du to i32
  br label %sz_size2index.exit.i

bb.z:                                             ; preds = %bb.x
  %i.dw = icmp ugt i64 %3, 8070450532247928832
  br i1 %i.dw, label %sz_size2index.exit.i, label %bb.aa, !prof !15

bb.aa:                                            ; preds = %bb.z
  %i.dx = shl nuw i64 %3, 1
  %i.dy = add i64 %i.dx, -1
  %i.dz = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.dy, i1 true) ; 2 uses
  %i.ea = trunc nuw nsw i64 %i.dz to i32
  %i.eb = sub nuw nsw i64 60, %i.dz
  %i.ec = add nsw i64 %3, -1
  %i.ed = lshr i64 %i.ec, %i.eb
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = and i32 %i.ee, 3
  %i.eg = shl nuw nsw i32 %i.ea, 2
  %reass.sub = sub nsw i32 %i.ef, %i.eg
  %i.eh = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit.i

sz_size2index.exit.i:                             ; preds = %bb.aa, %bb.z, %bb.y
  %.0.i.i56 = phi i32 [ %i.dv, %bb.y ], [ %i.eh, %bb.aa ], [ 232, %bb.z ]
  %i.ei = call zeroext i1 @je_pa_shrink(ptr noundef %0, ptr noundef nonnull %i.dn, ptr noundef nonnull %1, i64 noundef %i.cw, i64 noundef %i.dp, i32 noundef %.0.i.i56, ptr noundef nonnull %i.a) #9
  br i1 %i.ei, label %large_ralloc_no_move_shrink.exit.thread75, label %bb.ab

large_ralloc_no_move_shrink.exit.thread75:        ; preds = %sz_size2index.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %arena_decay_ticks.exit

bb.ab:                                            ; preds = %sz_size2index.exit.i
  %i.ej = load i8, ptr %i.a, align 1, !tbaa !18, !range !16, !noundef !19
  %i.ek = trunc nuw i8 %i.ej to i1
  br i1 %i.ek, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %i.ct) #9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @je_arena_extent_ralloc_large_shrink(ptr noundef %0, ptr noundef nonnull %i.ct, ptr noundef nonnull %1, i64 noundef %.0.i19.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.val = load i64, ptr %1, align 8, !tbaa !90
  %i.el = and i64 %.val, 4095
  %i.em = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.el
  %i.en = load atomic ptr, ptr %i.em monotonic, align 8
  %i.eo = icmp eq ptr %0, null
  br i1 %i.eo, label %arena_decay_ticks.exit, label %bb.ae, !prof !15

bb.ae:                                            ; preds = %bb.ad
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.es = load i8, ptr %i.er, align 1, !tbaa !12
  %i.et = load i32, ptr %i.ep, align 4, !tbaa !86 ; 2 uses
  %i.eu = add nsw i32 %i.et, -1
  store i32 %i.eu, ptr %i.ep, align 4, !tbaa !86
  %i.ev = icmp slt i32 %i.et, 1
  br i1 %i.ev, label %bb.af, label %arena_decay_ticks.exit, !prof !15

bb.af:                                            ; preds = %bb.ae
  %i.ew = icmp sgt i8 %i.es, 0
  br i1 %i.ew, label %ticker_geom_ticks.exit61, label %bb.ag

ticker_geom_ticks.exit61:                         ; preds = %bb.af
  store i32 0, ptr %i.ep, align 4, !tbaa !86
  br label %arena_decay_ticks.exit

bb.ag:                                            ; preds = %bb.af
  %i.ex = load i64, ptr %i.eq, align 8, !tbaa !14
  %i.ey = mul i64 %i.ex, 6364136223846793005
  %i.ez = add i64 %i.ey, 1442695040888963407      ; 2 uses
  store i64 %i.ez, ptr %i.eq, align 8, !tbaa !14
  %i.fa = lshr i64 %i.ez, 58
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !87
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr @je_ticker_geom_table, i64 %i.fa
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !12
  %i.fg = zext i8 %i.ff to i64
  %i.fh = mul nsw i64 %i.fg, %i.fd
  %i.fi = udiv i64 %i.fh, 61
  %i.fj = trunc i64 %i.fi to i32
  store i32 %i.fj, ptr %i.ep, align 8, !tbaa !86
  call void @je_arena_decay(ptr noundef nonnull %0, ptr noundef %i.en, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %arena_decay_ticks.exit

arena_decay_ticks.exit:                           ; preds = %bb.ae, %edata_usize_get.exit.i, %bb.q, %bb.l, %bb.f, %bb.ag, %bb.ad, %ticker_geom_ticks.exit61, %large_ralloc_no_move_shrink.exit.thread75, %bb.s, %bb.p, %ticker_geom_ticks.exit54, %bb.n, %bb.k, %ticker_geom_ticks.exit49, %bb.h, %bb.e, %ticker_geom_ticks.exit, %bb.t
  %.0 = phi i1 [ false, %bb.n ], [ true, %bb.t ], [ false, %bb.q ], [ false, %bb.h ], [ true, %large_ralloc_no_move_shrink.exit.thread75 ], [ false, %ticker_geom_ticks.exit ], [ false, %bb.ag ], [ false, %bb.e ], [ false, %ticker_geom_ticks.exit49 ], [ false, %bb.f ], [ false, %bb.k ], [ false, %ticker_geom_ticks.exit54 ], [ false, %bb.l ], [ false, %bb.p ], [ false, %bb.s ], [ false, %ticker_geom_ticks.exit61 ], [ true, %edata_usize_get.exit.i ], [ false, %bb.ad ], [ false, %bb.ae ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @large_ralloc_no_move_expand(ptr noundef %0, ptr noundef %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %.val30 = load i64, ptr %1, align 8, !tbaa !90  ; 2 uses
  %i.b = and i64 %.val30, 4095
  %i.c = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.b
  %i.d = load atomic ptr, ptr %i.c monotonic, align 8 ; 3 uses
  %i.e = getelementptr i8, ptr %1, i64 16
  %.val31 = load i64, ptr %i.e, align 8, !tbaa !12
  %i.f = and i64 %.val31, -4096                   ; 2 uses
  %i.g = trunc i64 %.val30 to i32
  %i.h = lshr i32 %i.g, 20
  %i.i = and i32 %i.h, 255                        ; 2 uses
  %i.j = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !18, !range !16, !noundef !19
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = icmp samesign ugt i32 %i.i, 35
  %or.cond.not.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %or.cond.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = zext nneg i32 %i.i to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !tbaa !14
  %.pre = load i64, ptr @je_sz_large_pad, align 8, !tbaa !14
  br label %edata_usize_get.exit

bb.c:                                             ; preds = %bb.a
  %i.p = load i64, ptr @je_sz_large_pad, align 8, !tbaa !14 ; 2 uses
  %i.q = sub i64 %i.f, %i.p
  br label %edata_usize_get.exit

edata_usize_get.exit:                             ; preds = %bb.b, %bb.c
  %i.r = phi i64 [ %.pre, %bb.b ], [ %i.p, %bb.c ]
  %.0.i32 = phi i64 [ %i.o, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.s = add i64 %i.r, %2
  %i.t = icmp ult i64 %2, 4097
  br i1 %i.t, label %bb.d, label %bb.e, !prof !11

bb.d:                                             ; preds = %edata_usize_get.exit
  %i.u = add nuw nsw i64 %2, 7
  %i.v = lshr i64 %i.u, 3
  %i.w = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !12
  %i.y = zext i8 %i.x to i32
  br label %sz_size2index.exit

bb.e:                                             ; preds = %edata_usize_get.exit
  %i.z = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.z, label %sz_size2index.exit, label %bb.f, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.aa = shl nuw i64 %2, 1
  %i.ab = add i64 %i.aa, -1
  %i.ac = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.ab, i1 true) ; 2 uses
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = sub nuw nsw i64 60, %i.ac
  %i.af = add nsw i64 %2, -1
  %i.ag = lshr i64 %i.af, %i.ae
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = and i32 %i.ah, 3
  %i.aj = shl nuw nsw i32 %i.ad, 2
  %reass.sub = sub nsw i32 %i.ai, %i.aj
  %i.ak = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i32 [ %i.y, %bb.d ], [ %i.ak, %bb.f ], [ 232, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i8 0, ptr %i.a, align 1, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 12288
  %i.am = call zeroext i1 @je_pa_expand(ptr noundef %0, ptr noundef nonnull %i.al, ptr noundef nonnull %1, i64 noundef %i.f, i64 noundef %i.s, i32 noundef %.0.i, i1 noundef zeroext %3, ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.an = load i8, ptr %i.a, align 1, !tbaa !18, !range !16, !noundef !19
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %sz_size2index.exit
  call void @je_arena_handle_deferred_work(ptr noundef %0, ptr noundef nonnull %i.d) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %sz_size2index.exit
  br i1 %i.am, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i8, ptr @je_opt_cache_oblivious, align 1, !range !16
  %i.aq = trunc nuw i8 %i.ap to i1
  %or.cond = select i1 %3, i1 %i.aq, i1 false
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.ar, align 8, !tbaa !89
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 %.0.i32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4096
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = and i64 %i.au, 4095
  %i.aw = sub nuw nsw i64 4096, %i.av
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.as, i8 0, i64 %i.aw, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @je_arena_extent_ralloc_large_expand(ptr noundef %0, ptr noundef nonnull %i.d, ptr noundef nonnull %1, i64 noundef %.0.i32) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i1 %i.am
}

; Function Attrs: nounwind uwtable
define hidden ptr @je_large_ralloc(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, i1 noundef zeroext %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %9 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  %10 = alloca %struct.rtree_ctx_s, align 8       ; 4 uses
  %11 = alloca %struct.rtree_contents_s, align 8  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %10) #9
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i41 = phi ptr [ %10, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #9
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %11, ptr noundef %0, ptr noundef nonnull %.0.i41, i64 noundef %i.c)
  %i.d = load ptr, ptr %11, align 8, !tbaa !93    ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  %.val.i = load i64, ptr %i.d, align 8, !tbaa !90
  %i.e = trunc i64 %.val.i to i32
  %i.f = lshr i32 %i.e, 20
  %i.g = and i32 %i.f, 255                        ; 2 uses
  %i.h = load i8, ptr @je_opt_disable_large_size_classes, align 1, !tbaa !18, !range !16, !noundef !19
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = icmp samesign ugt i32 %i.g, 35
  %or.cond.not.i = select i1 %i.i, i1 %i.j, i1 false
  br i1 %or.cond.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.k = zext nneg i32 %i.g to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @je_sz_index2size_tab, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !14
  br label %edata_usize_get.exit

bb.e:                                             ; preds = %tsdn_rtree_ctx.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !12
  %i.p = and i64 %i.o, -4096
  %i.q = load i64, ptr @je_sz_large_pad, align 8, !tbaa !14
  %i.r = sub i64 %i.p, %i.q
  br label %edata_usize_get.exit

edata_usize_get.exit:                             ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.m, %bb.d ], [ %i.r, %bb.e ] ; 8 uses
  %i.s = call zeroext i1 @je_large_ralloc_no_move(ptr noundef %0, ptr noundef nonnull %i.d, i64 noundef %3, i64 noundef %3, i1 noundef zeroext %5)
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %edata_usize_get.exit
  %i.t = load i8, ptr %7, align 8, !tbaa !103, !range !16, !noundef !19
  %i.u = xor i8 %i.t, 1
  %not. = zext nneg i8 %i.u to i32
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @je_hook_invoke_expand(i32 noundef %not., ptr noundef %2, i64 noundef %.0.i, i64 noundef %3, i64 noundef %i.c, ptr noundef nonnull %i.v) #9
  %i.w = getelementptr i8, ptr %i.d, i64 8
  %.val48 = load ptr, ptr %i.w, align 8, !tbaa !89
  br label %arena_sdalloc.exit

bb.g:                                             ; preds = %edata_usize_get.exit
  %..i = call i64 @llvm.umax.i64(i64 %4, i64 64)
  %i.x = call ptr @je_large_palloc(ptr noundef %0, ptr noundef %1, i64 noundef %3, i64 noundef %..i, i1 noundef zeroext %5) ; 13 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %arena_sdalloc.exit, label %tsdn_witness_tsdp_get.exit

tsdn_witness_tsdp_get.exit:                       ; preds = %bb.g
  %i.z = load i8, ptr %7, align 8, !tbaa !103, !range !16, !noundef !19
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = select i1 %i.aa, i32 8, i32 9
  %i.ac = ptrtoint ptr %i.x to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  call void @je_hook_invoke_alloc(i32 noundef %i.ab, ptr noundef nonnull %i.x, i64 noundef %i.ac, ptr noundef nonnull %i.ad) #9
  %i.ae = load i8, ptr %7, align 8, !tbaa !103, !range !16, !noundef !19
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = select i1 %i.af, i32 3, i32 4
  call void @je_hook_invoke_dalloc(i32 noundef %i.ag, ptr noundef %2, ptr noundef nonnull %i.ad) #9
  %i.ah = call i64 @llvm.umin.i64(i64 %3, i64 %.0.i)
  %i.ai = getelementptr i8, ptr %i.d, i64 8       ; 2 uses
  %.val47 = load ptr, ptr %i.ai, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %.val47, i64 %i.ah, i1 false)
  %.val = load ptr, ptr %i.ai, align 8, !tbaa !89 ; 7 uses
  %i.aj = icmp eq ptr %6, null
  br i1 %i.aj, label %bb.h, label %bb.i, !prof !15

bb.h:                                             ; preds = %tsdn_witness_tsdp_get.exit
  call fastcc void @arena_sdalloc_no_tcache(ptr noundef %0, ptr noundef %.val, i64 noundef %.0.i)
  br label %arena_sdalloc.exit

bb.i:                                             ; preds = %tsdn_witness_tsdp_get.exit
  %i.ak = icmp ult i64 %.0.i, 4097
  br i1 %i.ak, label %sz_size2index.exit.i, label %bb.j, !prof !11

bb.j:                                             ; preds = %bb.i
  %i.al = icmp ugt i64 %.0.i, 8070450532247928832
  br i1 %i.al, label %sz_s2u.exit.i, label %sz_size2index.exit.i.thread65, !prof !15

sz_size2index.exit.i:                             ; preds = %bb.i
  %i.am = add nuw nsw i64 %.0.i, 7
  %i.an = lshr i64 %i.am, 3
  %i.ao = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !12  ; 2 uses
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  %i.ar = icmp ult i8 %i.ap, 36
  br i1 %i.ar, label %bb.k, label %sz_s2u.exit.i, !prof !104

sz_size2index.exit.i.thread65:                    ; preds = %bb.j
  %i.as = shl nuw i64 %.0.i, 1
  %i.at = add i64 %i.as, -1
  %i.au = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.at, i1 true) ; 2 uses
  %i.av = trunc nuw nsw i64 %i.au to i32
  %i.aw = sub nuw nsw i64 60, %i.au
  %i.ax = add nsw i64 %.0.i, -1
  %i.ay = lshr i64 %i.ax, %i.aw
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i32 %i.az, 3
  %i.bb = shl nuw nsw i32 %i.av, 2
  %reass.sub2.i = sub nsw i32 %i.ba, %i.bb        ; 2 uses
  %i.bc = add nsw i32 %reass.sub2.i, 229          ; 2 uses
  %i.bd = icmp slt i32 %reass.sub2.i, -193
  br i1 %i.bd, label %bb.k, label %sz_s2u.exit.i, !prof !104

bb.k:                                             ; preds = %sz_size2index.exit.i.thread65, %sz_size2index.exit.i
  %.0.i18.i67 = phi i32 [ %i.bc, %sz_size2index.exit.i.thread65 ], [ %i.aq, %sz_size2index.exit.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bf = zext nneg i32 %.0.i18.i67 to i64
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.bf ; 7 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !110 ; 3 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 18 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !111
  %i.bl = trunc i64 %i.bi to i16
  %i.bm = icmp eq i16 %i.bk, %i.bl
  br i1 %i.bm, label %cache_bin_dalloc_easy.exit45, label %cache_bin_dalloc_easy.exit45.thread, !prof !15

cache_bin_dalloc_easy.exit45.thread:              ; preds = %bb.k
  %i.bn = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  store ptr %i.bn, ptr %i.bg, align 8, !tbaa !110
  store ptr %.val, ptr %i.bn, align 8, !tbaa !112
  br label %arena_sdalloc.exit

cache_bin_dalloc_easy.exit45:                     ; preds = %bb.k
  %i.bo = icmp eq ptr %i.bh, @je_disabled_bin
  br i1 %i.bo, label %bb.l, label %bb.m, !prof !15

bb.l:                                             ; preds = %cache_bin_dalloc_easy.exit45
  call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %.val) #9
  br label %arena_sdalloc.exit

bb.m:                                             ; preds = %cache_bin_dalloc_easy.exit45
  %i.bp = getelementptr i8, ptr %i.bg, i64 22
  %.val57 = load i16, ptr %i.bp, align 2, !tbaa !113
  %i.bq = zext i16 %.val57 to i32
  %i.br = load i32, ptr @je_opt_lg_tcache_flush_small_div, align 4, !tbaa !31
  %i.bs = lshr i32 %i.bq, %i.br
  call void @je_tcache_bin_flush_small(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %i.bg, i32 noundef range(i32 0, 256) %.0.i18.i67, i32 noundef %i.bs) #9
  %i.bt = load ptr, ptr %i.bg, align 8, !tbaa !110 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = load i16, ptr %i.bj, align 2, !tbaa !111
  %i.bw = trunc i64 %i.bu to i16
  %i.bx = icmp eq i16 %i.bv, %i.bw
  br i1 %i.bx, label %arena_sdalloc.exit, label %bb.n, !prof !15

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds i8, ptr %i.bt, i64 -8 ; 2 uses
  store ptr %i.by, ptr %i.bg, align 8, !tbaa !110
  store ptr %.val, ptr %i.by, align 8, !tbaa !112
  br label %arena_sdalloc.exit

sz_s2u.exit.i:                                    ; preds = %sz_size2index.exit.i.thread65, %sz_size2index.exit.i, %bb.j
  %.0.i18.i6063 = phi i32 [ 232, %bb.j ], [ %i.aq, %sz_size2index.exit.i ], [ %i.bc, %sz_size2index.exit.i.thread65 ] ; 3 uses
  %i.bz = load ptr, ptr %6, align 8, !tbaa !115
  %i.ca = getelementptr i8, ptr %i.bz, i64 48
  %.val53 = load i32, ptr %i.ca, align 8, !tbaa !116
  %i.cb = icmp ult i32 %.0.i18.i6063, %.val53
  br i1 %i.cb, label %bb.o, label %bb.r

bb.o:                                             ; preds = %sz_s2u.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cd = zext nneg i32 %.0.i18.i6063 to i64
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.cc, i64 %i.cd ; 7 uses
  %.val50 = load ptr, ptr %i.ce, align 8, !tbaa !110 ; 3 uses
  %i.cf = icmp eq ptr %.val50, @je_disabled_bin
  %i.cg = getelementptr i8, ptr %i.ce, i64 22
  br i1 %i.cf, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = ptrtoint ptr %.val50 to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 18 ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 2, !tbaa !111
  %i.ck = trunc i64 %i.ch to i16
  %i.cl = icmp eq i16 %i.cj, %i.ck
  br i1 %i.cl, label %cache_bin_dalloc_easy.exit12.i, label %cache_bin_dalloc_easy.exit12.i.thread, !prof !15

cache_bin_dalloc_easy.exit12.i.thread:            ; preds = %bb.p
  %i.cm = getelementptr inbounds i8, ptr %.val50, i64 -8 ; 2 uses
  store ptr %i.cm, ptr %i.ce, align 8, !tbaa !110
  store ptr %.val, ptr %i.cm, align 8, !tbaa !112
  br label %arena_sdalloc.exit

cache_bin_dalloc_easy.exit12.i:                   ; preds = %bb.p
  %.val56 = load i16, ptr %i.cg, align 2, !tbaa !113
  %i.cn = zext i16 %.val56 to i32
  %i.co = load i32, ptr @je_opt_lg_tcache_flush_large_div, align 4, !tbaa !31
  %i.cp = lshr i32 %i.cn, %i.co
  call void @je_tcache_bin_flush_large(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %i.ce, i32 noundef range(i32 0, 256) %.0.i18.i6063, i32 noundef %i.cp) #9
  %i.cq = load ptr, ptr %i.ce, align 8, !tbaa !110 ; 2 uses
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = load i16, ptr %i.ci, align 2, !tbaa !111
  %i.ct = trunc i64 %i.cr to i16
  %i.cu = icmp eq i16 %i.cs, %i.ct
  br i1 %i.cu, label %arena_sdalloc.exit, label %bb.q, !prof !15

bb.q:                                             ; preds = %cache_bin_dalloc_easy.exit12.i
  %i.cv = getelementptr inbounds i8, ptr %i.cq, i64 -8 ; 2 uses
  store ptr %i.cv, ptr %i.ce, align 8, !tbaa !110
  store ptr %.val, ptr %i.cv, align 8, !tbaa !112
  br label %arena_sdalloc.exit

bb.r:                                             ; preds = %bb.o, %sz_s2u.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  br i1 %i.a, label %bb.s, label %bb.t, !prof !15

bb.s:                                             ; preds = %bb.r
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %8) #9
  br label %tsdn_rtree_ctx.exit.i

bb.t:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit.i

tsdn_rtree_ctx.exit.i:                            ; preds = %bb.t, %bb.s
  %.0.i.i42 = phi ptr [ %8, %bb.s ], [ %i.cw, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.cx = ptrtoint ptr %.val to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef %0, ptr noundef nonnull %.0.i.i42, i64 noundef %i.cx)
  %i.cy = load ptr, ptr %9, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @je_large_dalloc(ptr noundef %0, ptr noundef %i.cy)
  br label %arena_sdalloc.exit

arena_sdalloc.exit:                               ; preds = %bb.h, %bb.n, %bb.m, %cache_bin_dalloc_easy.exit45.thread, %bb.l, %cache_bin_dalloc_easy.exit12.i.thread, %bb.q, %cache_bin_dalloc_easy.exit12.i, %tsdn_rtree_ctx.exit.i, %bb.g, %bb.f
  %.1 = phi ptr [ %.val48, %bb.f ], [ null, %bb.g ], [ %i.x, %tsdn_rtree_ctx.exit.i ], [ %i.x, %cache_bin_dalloc_easy.exit12.i ], [ %i.x, %bb.q ], [ %i.x, %cache_bin_dalloc_easy.exit12.i.thread ], [ %i.x, %bb.l ], [ %i.x, %cache_bin_dalloc_easy.exit45.thread ], [ %i.x, %bb.m ], [ %i.x, %bb.n ], [ %i.x, %bb.h ]
  ret ptr %.1
}

declare void @je_hook_invoke_expand(i32 noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @je_hook_invoke_alloc(i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @je_hook_invoke_dalloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden void @je_large_dalloc_prep_locked(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %1, align 8, !tbaa !90
  %i.a = and i64 %.val, 4095
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @je_arenas, i64 %i.a
  %i.c = load atomic ptr, ptr %i.b monotonic, align 8 ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 80640
  %.val.i = load i32, ptr %i.d, align 64, !tbaa !79
  %i.e = load i32, ptr @je_manual_arena_base, align 4, !tbaa !31
  %i.f = icmp ult i32 %.val.i, %i.e
  br i1 %i.f, label %large_dalloc_prep_impl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 12112 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 16, !tbaa !84  ; 2 uses
  %i.i = icmp eq ptr %i.h, %1
  br i1 %i.i, label %bb.c, label %.thread.i16.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12   ; 2 uses
  store ptr %i.k, ptr %i.g, align 16, !tbaa !84
  %i.l = icmp eq ptr %i.k, %1
  br i1 %i.l, label %bb.d, label %.thread.i16.i

.thread.i16.i:                                    ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store ptr %i.p, ptr %i.s, align 8, !tbaa !12
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !12   ; 2 uses
  %i.u = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.t, ptr %i.v, align 8, !tbaa !12
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !12
  store ptr %i.x, ptr %i.q, align 8, !tbaa !12
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !12   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store ptr %i.y, ptr %i.ab, align 8, !tbaa !12
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store ptr %1, ptr %i.ad, align 8, !tbaa !12
  br label %large_dalloc_prep_impl.exit

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.g, align 16, !tbaa !84
  br label %large_dalloc_prep_impl.exit

large_dalloc_prep_impl.exit:                      ; preds = %bb.a, %.thread.i16.i, %bb.d
  tail call void @je_arena_extent_dalloc_large_prep(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %1) #9
end_hunk_0
begin_hunk_1_@je_arena_choose_huge
declare ptr @je_arena_choose_huge(ptr noundef) local_unnamed_addr #2

declare ptr @je_arena_choose_hard(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @je_tcache_arena_reassociate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_tcache_arena_associate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @je_arena_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sched_getcpu() local_unnamed_addr #5

declare void @je_arena_migrate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_malloc_mutex_lock_slow(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_trylock(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #5

declare void @je_arena_decay(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare zeroext i1 @je_pa_expand(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @je_arena_handle_deferred_work(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

declare void @je_arena_extent_ralloc_large_expand(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @je_arena_get_ehooks(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @je_pa_shrink(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @je_arena_extent_ralloc_large_shrink(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @rtree_read(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 18)) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = lshr i64 %3, 30
  %i.b = and i64 %i.a, 15
  %i.c = and i64 %3, -1073741824                  ; 11 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.b ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !127  ; 3 uses
  %i.f = icmp eq i64 %i.e, %i.c
  br i1 %i.f, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128
  %i.i = lshr i64 %3, 12
  %i.j = and i64 %i.i, 262143
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.j
  br label %rtree_leaf_elm_lookup.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !127
  %i.n = icmp eq i64 %i.m, %i.c
  br i1 %i.n, label %bb.d, label %.preheader.preheader, !prof !11

.preheader.preheader:                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 272 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !127
  %i.q = icmp eq i64 %i.p, %i.c
  br i1 %i.q, label %bb.f, label %.preheader.1, !prof !11

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 264 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !128  ; 2 uses
  store i64 %i.e, ptr %i.l, align 8, !tbaa !127
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !128
  store ptr %i.u, ptr %i.r, align 8, !tbaa !128
  store i64 %i.c, ptr %i.d, align 8, !tbaa !127
  store ptr %i.s, ptr %i.t, align 8, !tbaa !128
  %i.v = lshr i64 %3, 12
  %i.w = and i64 %i.v, 262143
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.w
  br label %rtree_leaf_elm_lookup.exit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 288 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !127
  %i.aa = icmp eq i64 %i.z, %i.c
  br i1 %i.aa, label %bb.f, label %.preheader.2, !prof !11

.preheader.2:                                     ; preds = %.preheader.1
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 304 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !127
  %i.ad = icmp eq i64 %i.ac, %i.c
  br i1 %i.ad, label %bb.f, label %.preheader.3, !prof !11

.preheader.3:                                     ; preds = %.preheader.2
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 320 ; 2 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !127
  %i.ag = icmp eq i64 %i.af, %i.c
  br i1 %i.ag, label %bb.f, label %.preheader.4, !prof !11

.preheader.4:                                     ; preds = %.preheader.3
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 336 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !127
  %i.aj = icmp eq i64 %i.ai, %i.c
  br i1 %i.aj, label %bb.f, label %.preheader.5, !prof !11

.preheader.5:                                     ; preds = %.preheader.4
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 352 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !127
  %i.am = icmp eq i64 %i.al, %i.c
  br i1 %i.am, label %bb.f, label %.preheader.6, !prof !11

.preheader.6:                                     ; preds = %.preheader.5
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 368 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !127
  %i.ap = icmp eq i64 %i.ao, %i.c
  br i1 %i.ap, label %bb.f, label %bb.e, !prof !11

bb.e:                                             ; preds = %.preheader.6
  %i.aq = tail call ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef %1, ptr noundef nonnull @je_arena_emap_global, ptr noundef nonnull %2, i64 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false) #9
  br label %rtree_leaf_elm_lookup.exit

bb.f:                                             ; preds = %.preheader.6, %.preheader.5, %.preheader.4, %.preheader.3, %.preheader.2, %.preheader.1, %.preheader.preheader
  %.lcssa = phi ptr [ %i.o, %.preheader.preheader ], [ %i.y, %.preheader.1 ], [ %i.ab, %.preheader.2 ], [ %i.ae, %.preheader.3 ], [ %i.ah, %.preheader.4 ], [ %i.ak, %.preheader.5 ], [ %i.an, %.preheader.6 ] ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !128 ; 2 uses
  %i.at = getelementptr i8, ptr %.lcssa, i64 -16  ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !127
  store i64 %i.au, ptr %.lcssa, align 8, !tbaa !127
  %i.av = getelementptr i8, ptr %.lcssa, i64 -8   ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !128
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !128
  store i64 %i.e, ptr %i.at, align 8, !tbaa !127
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !128
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !128
  store i64 %i.c, ptr %i.d, align 8, !tbaa !127
  store ptr %i.as, ptr %i.ax, align 8, !tbaa !128
  %i.az = lshr i64 %3, 12
  %i.ba = and i64 %i.az, 262143
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.ba
  br label %rtree_leaf_elm_lookup.exit

rtree_leaf_elm_lookup.exit:                       ; preds = %bb.f, %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.k, %bb.b ], [ %i.x, %bb.d ], [ %i.aq, %bb.e ], [ %i.bb, %bb.f ]
  %i.bc = load atomic ptr, ptr %.1.i monotonic, align 8, !noalias !129
  %i.bd = ptrtoint ptr %i.bc to i64               ; 4 uses
  %i.be = lshr i64 %i.bd, 48
  %i.bf = trunc nuw nsw i64 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.bf, ptr %i.bg, align 8, !tbaa !130, !alias.scope !131
  %i.bh = trunc i64 %i.bd to i8                   ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 17
  %i.bj = and i8 %i.bh, 1
  store i8 %i.bj, ptr %i.bi, align 1, !tbaa !132, !alias.scope !131
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bl = lshr i8 %i.bh, 1
  %i.bm = and i8 %i.bl, 1
  store i8 %i.bm, ptr %i.bk, align 8, !tbaa !133, !alias.scope !131
  %i.bn = trunc i64 %i.bd to i32
  %i.bo = lshr i32 %i.bn, 2
  %i.bp = and i32 %i.bo, 7
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !134, !alias.scope !131
  %i.br = shl i64 %i.bd, 16
  %i.bs = ashr exact i64 %i.br, 16
  %i.bt = and i64 %i.bs, -128
  %i.bu = inttoptr i64 %i.bt to ptr
  store ptr %i.bu, ptr %0, align 8, !tbaa !93, !alias.scope !131
  ret void
}

declare void @je_rtree_ctx_data_init(ptr noundef) local_unnamed_addr #2

declare ptr @je_rtree_leaf_elm_lookup_hard(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_sdalloc_no_tcache(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = icmp ult i64 %2, 4097
  br i1 %i.a, label %bb.b, label %bb.c, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.b = add nuw nsw i64 %2, 7
  %i.c = lshr i64 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr @je_sz_size2index_tab, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = zext i8 %i.e to i32
  br label %sz_size2index.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %2, 8070450532247928832
  br i1 %i.g, label %emap_alloc_ctx_usize_get.exit, label %bb.d, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.h = shl nuw i64 %2, 1
  %i.i = add i64 %i.h, -1
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 8193, -2305843009213693952) %i.i, i1 true) ; 2 uses
  %i.k = trunc nuw nsw i64 %i.j to i32
  %i.l = sub nuw nsw i64 60, %i.j
  %i.m = add nsw i64 %2, -1
  %i.n = lshr i64 %i.m, %i.l
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 3
  %i.q = shl nuw nsw i32 %i.k, 2
  %reass.sub = sub nsw i32 %i.p, %i.q
  %i.r = add nsw i32 %reass.sub, 229
  br label %sz_size2index.exit

sz_size2index.exit:                               ; preds = %bb.d, %bb.b
  %.0.i = phi i32 [ %i.f, %bb.b ], [ %i.r, %bb.d ]
  %i.s = icmp samesign ult i32 %.0.i, 36
  br i1 %i.s, label %bb.e, label %emap_alloc_ctx_usize_get.exit, !prof !135

bb.e:                                             ; preds = %sz_size2index.exit
  tail call void @je_arena_dalloc_small(ptr noundef %0, ptr noundef %1) #9
  br label %bb.f

emap_alloc_ctx_usize_get.exit:                    ; preds = %bb.c, %sz_size2index.exit
  tail call fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %emap_alloc_ctx_usize_get.exit, %bb.e
  ret void
}

declare void @je_arena_dalloc_small(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @arena_dalloc_large_no_tcache(ptr noundef %0, ptr noundef %1) unnamed_addr #7 {
bb.a:
  %2 = alloca %struct.rtree_ctx_s, align 8        ; 4 uses
  %3 = alloca %struct.rtree_contents_s, align 8   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c, !prof !15

bb.b:                                             ; preds = %bb.a
  call void @je_rtree_ctx_data_init(ptr noundef nonnull %2) #9
  br label %tsdn_rtree_ctx.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  br label %tsdn_rtree_ctx.exit

tsdn_rtree_ctx.exit:                              ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %2, %bb.b ], [ %i.b, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.c = ptrtoint ptr %1 to i64
  call fastcc void @rtree_read(ptr dead_on_unwind noalias writable align 8 %3, ptr noundef %0, ptr noundef nonnull %.0.i, i64 noundef %i.c)
  %i.d = load ptr, ptr %3, align 8, !tbaa !93
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  call void @je_large_dalloc(ptr noundef %0, ptr noundef %i.d)
  ret void
}

declare void @je_tcache_bin_flush_small(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @je_tcache_bin_flush_large(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @je_arena_extent_dalloc_large_prep(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @je_pa_dalloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!12 = !{!7, !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{i8 0, i8 2}
!17 = !{!"_Bool", !7, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{}
!20 = !{!"any pointer", !7, i64 0}
!21 = !{!"p1 _ZTS7arena_s", !20, i64 0}
!22 = !{!"p1 _ZTS13tcache_slow_s", !20, i64 0}
!23 = !{!"", !22, i64 0, !22, i64 8}
!24 = !{!"p1 _ZTS28cache_bin_array_descriptor_s", !20, i64 0}
!25 = !{!"", !24, i64 0, !24, i64 8}
!26 = !{!"p1 _ZTS11cache_bin_s", !20, i64 0}
!27 = !{!"cache_bin_array_descriptor_s", !25, i64 0, !26, i64 16}
!28 = !{!"", !13, i64 0}
!29 = !{!"p1 _ZTS8tcache_s", !20, i64 0}
!30 = !{!"tcache_slow_s", !23, i64 0, !27, i64 16, !21, i64 40, !8, i64 48, !28, i64 56, !8, i64 64, !8, i64 68, !8, i64 72, !7, i64 76, !7, i64 148, !7, i64 184, !20, i64 224, !29, i64 232}
!31 = !{!8, !8, i64 0}
!32 = !{!"", !8, i64 0}
!33 = !{!"p1 _ZTS6tsdn_s", !20, i64 0}
!34 = !{!"locked_u64_s", !28, i64 0}
!35 = !{!"pac_decay_stats_s", !34, i64 0, !34, i64 8, !34, i64 16}
!36 = !{!"pac_stats_s", !35, i64 0, !35, i64 24, !13, i64 48, !28, i64 56, !28, i64 64}
!37 = !{!"pa_shard_stats_s", !13, i64 0, !36, i64 8}
!38 = !{!"arena_stats_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !28, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !37, i64 104, !13, i64 184, !13, i64 192, !7, i64 200, !7, i64 968, !28, i64 11944}
!39 = !{!"", !22, i64 0}
!40 = !{!"", !24, i64 0}
!41 = !{!"malloc_mutex_s", !7, i64 0}
!42 = !{!"p1 _ZTS7edata_s", !20, i64 0}
!43 = !{!"", !42, i64 0}
!44 = !{!"", !43, i64 0}
!45 = !{!"p1 _ZTS12pa_central_s", !20, i64 0}
!46 = !{!"", !17, i64 0}
!47 = !{!"pai_s", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32}
!48 = !{!"eset_s", !7, i64 0, !7, i64 32, !7, i64 6432, !44, i64 9632, !28, i64 9640, !8, i64 9648}
!49 = !{!"ecache_s", !41, i64 0, !48, i64 112, !48, i64 9768, !8, i64 19424, !8, i64 19428, !17, i64 19432}
!50 = !{!"p1 _ZTS6base_s", !20, i64 0}
!51 = !{!"p1 _ZTS6emap_s", !20, i64 0}
!52 = !{!"p1 _ZTS13edata_cache_s", !20, i64 0}
!53 = !{!"exp_grow_s", !8, i64 0, !8, i64 4}
!54 = !{!"san_bump_alloc_s", !41, i64 0, !42, i64 112}
!55 = !{!"decay_s", !41, i64 0, !17, i64 112, !28, i64 120, !28, i64 128, !28, i64 136, !13, i64 144, !28, i64 152, !13, i64 160, !13, i64 168, !7, i64 176, !13, i64 1776}
!56 = !{!"p1 _ZTS14malloc_mutex_s", !20, i64 0}
!57 = !{!"p1 _ZTS11pac_stats_s", !20, i64 0}
!58 = !{!"pac_s", !47, i64 0, !49, i64 40, !49, i64 19480, !49, i64 38920, !50, i64 58360, !51, i64 58368, !52, i64 58376, !53, i64 58384, !41, i64 58392, !54, i64 58504, !28, i64 58624, !55, i64 58632, !55, i64 60416, !56, i64 62200, !57, i64 62208, !28, i64 62216}
!59 = !{!"p1 _ZTS13hpa_central_s", !20, i64 0}
!60 = !{!"edata_cache_fast_s", !44, i64 0, !52, i64 8, !17, i64 16}
!61 = !{!"sec_opts_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!62 = !{!"p1 _ZTS9sec_bin_s", !20, i64 0}
!63 = !{!"sec_s", !61, i64 0, !62, i64 32, !8, i64 40}
!64 = !{!"psset_bin_stats_s", !13, i64 0, !13, i64 8, !13, i64 16}
!65 = !{!"psset_stats_s", !64, i64 0, !7, i64 24, !7, i64 72, !7, i64 3144, !7, i64 3192}
!66 = !{!"p1 _ZTS8hpdata_s", !20, i64 0}
!67 = !{!"", !66, i64 0}
!68 = !{!"", !67, i64 0}
!69 = !{!"psset_s", !7, i64 0, !7, i64 1024, !65, i64 1032, !68, i64 4272, !7, i64 4280, !7, i64 5304, !68, i64 5320}
!70 = !{!"hpa_shard_opts_s", !13, i64 0, !13, i64 8, !8, i64 16, !17, i64 20, !13, i64 24, !17, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !8, i64 72}
!71 = !{!"hpa_shard_nonderived_stats_s", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!72 = !{!"hpa_shard_s", !47, i64 0, !59, i64 40, !41, i64 48, !41, i64 160, !50, i64 272, !60, i64 280, !63, i64 320, !69, i64 368, !13, i64 5696, !8, i64 5704, !51, i64 5712, !70, i64 5720, !13, i64 5800, !71, i64 5808, !28, i64 5848, !28, i64 5856}
!73 = !{!"ph_s", !20, i64 0, !13, i64 8}
!74 = !{!"", !73, i64 0}
!75 = !{!"edata_cache_s", !74, i64 0, !28, i64 16, !41, i64 24, !50, i64 136}
!76 = !{!"p1 _ZTS16pa_shard_stats_s", !20, i64 0}
!77 = !{!"pa_shard_s", !45, i64 0, !28, i64 8, !46, i64 16, !17, i64 17, !58, i64 24, !72, i64 62272, !75, i64 68160, !8, i64 68304, !56, i64 68312, !76, i64 68320, !51, i64 68328, !50, i64 68336}
!78 = !{!"arena_s", !7, i64 0, !32, i64 8, !33, i64 16, !38, i64 24, !39, i64 11976, !40, i64 11984, !41, i64 11992, !32, i64 12104, !44, i64 12112, !41, i64 12120, !77, i64 12288, !8, i64 80640, !50, i64 80648, !28, i64 80656, !7, i64 80664, !7, i64 80704}
!79 = !{!78, !8, i64 80640}
!80 = !{!"", !28, i64 0, !28, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !32, i64 36, !13, i64 40, !33, i64 48, !13, i64 56}
!81 = !{!80, !13, i64 56}
!82 = !{!80, !33, i64 48}
!83 = !{!80, !13, i64 40}
!84 = !{!44, !42, i64 0}
!85 = !{!"ticker_geom_s", !8, i64 0, !8, i64 4}
!86 = !{!85, !8, i64 0}
!87 = !{!85, !8, i64 4}
!88 = !{!"edata_s", !13, i64 0, !20, i64 8, !7, i64 16, !66, i64 24, !13, i64 32, !7, i64 40, !7, i64 64}
!89 = !{!88, !20, i64 8}
!90 = !{!88, !13, i64 0}
!91 = !{!"rtree_metadata_s", !8, i64 0, !8, i64 4, !17, i64 8, !17, i64 9}
!92 = !{!"rtree_contents_s", !42, i64 0, !91, i64 8}
!93 = !{!92, !42, i64 0}
!94 = !{!"branch_weights", !"expected", i32 1609874, i32 2145873774}
!95 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!96 = !{!21, !21, i64 0}
!97 = !{!30, !21, i64 40}
!98 = !{!78, !33, i64 16}
!99 = !{!"branch_weights", !"expected", i32 1808549991, i32 338933657}
!100 = !{!"extent_hooks_s", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64}
!101 = !{!100, !20, i64 56}
!102 = !{!"hook_ralloc_args_s", !17, i64 0, !7, i64 8}
!103 = !{!102, !17, i64 0}
!104 = !{!"branch_weights", !"expected", i32 2146410980, i32 1072668}
!105 = !{!"any p2 pointer", !20, i64 0}
!106 = !{!"cache_bin_stats_s", !13, i64 0}
!107 = !{!"short", !7, i64 0}
!108 = !{!"cache_bin_info_s", !107, i64 0}
!109 = !{!"cache_bin_s", !105, i64 0, !106, i64 8, !107, i64 16, !107, i64 18, !107, i64 20, !108, i64 22}
!110 = !{!109, !105, i64 0}
!111 = !{!109, !107, i64 18}
!112 = !{!20, !20, i64 0}
!113 = !{!109, !107, i64 22}
!114 = !{!"tcache_s", !22, i64 0, !7, i64 8}
!115 = !{!114, !22, i64 0}
end_hunk_1
