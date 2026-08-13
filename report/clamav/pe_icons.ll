inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 26
begin_hunk_0_@cli_groupiconscan:bb.a
  %i.bw = load i32, ptr %i.au, align 4, !tbaa !54 ; 2 uses
  %.not76 = icmp eq i32 %i.bw, 0
  br i1 %.not76, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.bx = load i32, ptr %i.at, align 4, !tbaa !55
  %i.by = icmp eq i32 %i.ax, %i.bx
  br i1 %i.by, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bz = load i16, ptr %i.bg, align 4, !tbaa !83
  %i.ca = zext i16 %i.bz to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11, i32 noundef %i.ca, i32 noundef %1) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cb = load i32, ptr %i.av, align 8, !tbaa !29
  %i.cc = add i32 %i.cb, 1                        ; 2 uses
  store i32 %i.cc, ptr %i.av, align 8, !tbaa !29
  %i.cd = load i32, ptr %i.aw, align 4, !tbaa !53
  %.not77 = icmp ult i32 %i.cc, %i.cd
  br i1 %.not77, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 24, ptr %i.au, align 4, !tbaa !54
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.ce = add nsw i32 %.07190, -1                 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.06992, i64 14
  %i.cg = add i32 %.07091, -14                    ; 3 uses
  %i.ch = icmp ne i32 %i.ce, 0                    ; 2 uses
  %i.ci = icmp ugt i32 %i.cg, 13
  %i.cj = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %i.cj, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %bb.d
  %.071.lcssa = phi i32 [ %i.an, %bb.d ], [ %i.ce, %bb.j ]
  %.070.lcssa = phi i32 [ %i.ao, %bb.d ], [ %i.cg, %bb.j ] ; 2 uses
  %.lcssa = phi i1 [ %i.ap, %bb.d ], [ %i.ch, %bb.j ]
  br i1 %.lcssa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12, i32 noundef %.071.lcssa) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.not = icmp eq i32 %.070.lcssa, 0
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13, i32 noundef %.070.lcssa) #13
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.m, %bb.l, %bb.b, %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.i, %.thread
  %.3 = phi i32 [ %i.cl, %.thread ], [ 24, %bb.i ], [ %i.bw, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i32 %.3
}

declare i32 @cli_rawaddr(i32 noundef, ptr noundef, i16 noundef zeroext, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @icon_scan_cb(ptr nofree noundef captures(none) %0, i32 %1, i32 %2, i32 %3, i32 noundef %4) #0 {
bb.a:
  %5 = alloca %struct.anon, align 4               ; 7 uses
  %6 = alloca %struct.icomtr, align 8             ; 23 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !25     ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %parseicon.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32   ; 3 uses
  %.not585.i = icmp eq ptr %i.h, null
  br i1 %.not585.i, label %parseicon.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !84   ; 3 uses
  %.not586.i = icmp eq ptr %i.j, null
  br i1 %.not586.i, label %parseicon.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8    ; 19 uses
  %i.m = load i8, ptr @cli_debug_flag, align 1, !tbaa !77
  %.not587.i = icmp eq i8 %i.m, 0
  br i1 %.not587.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !85
  %.not588.i = icmp eq i32 %i.o, 0
  br i1 %.not588.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !86   ; 2 uses
  %.not589.i = icmp eq ptr %i.q, null
  br i1 %.not589.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @cli_gettmpdir() #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.s = phi ptr [ %i.r, %bb.g ], [ null, %bb.d ], [ null, %bb.e ], [ %i.q, %bb.f ] ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !71
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !72
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !74
  %i.aa = call i32 @cli_rawaddr(i32 noundef %4, ptr noundef %i.t, i16 noundef zeroext %i.v, ptr noundef nonnull %i.a, i64 noundef %i.x, i32 noundef %i.z) #13
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !57
  %.not590.i = icmp eq i32 %i.ab, 0
  br i1 %.not590.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 104 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.af = call ptr %i.ae(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.ac, i64 noundef 4, i32 noundef 0) #13, !inline_history !87 ; 2 uses
  %.not591.i = icmp eq ptr %i.af, null
  br i1 %.not591.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !59
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !59
  br label %parseicon.exit

bb.k:                                             ; preds = %bb.i
  %i.aj = load i32, ptr %i.af, align 1, !tbaa !77
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.al = load i16, ptr %i.u, align 8, !tbaa !71
  %i.am = load i64, ptr %i.w, align 8, !tbaa !72
  %i.an = load i32, ptr %i.y, align 8, !tbaa !74
  %i.ao = call i32 @cli_rawaddr(i32 noundef %i.aj, ptr noundef %i.ak, i16 noundef zeroext %i.al, ptr noundef nonnull %i.a, i64 noundef %i.am, i32 noundef %i.an) #13 ; 2 uses
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !57
  %.not592.i = icmp eq i32 %i.ap, 0
  br i1 %.not592.i, label %bb.l, label %fmap_readn.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.aq = zext i32 %i.ao to i64                   ; 3 uses
  %i.ar = load i64, ptr %i.w, align 8, !tbaa !72  ; 2 uses
  %or.cond640.not.i = icmp ugt i64 %i.ar, %i.aq
  br i1 %or.cond640.not.i, label %bb.m, label %fmap_readn.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.as = sub nuw i64 %i.ar, %i.aq                ; 2 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.as, i64 40) ; 2 uses
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.au = call ptr %i.at(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.aq, i64 noundef range(i64 0, 4294967296) %spec.select.i.i, i32 noundef 0) #13, !inline_history !88 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.au, null
  br i1 %.not26.i.i, label %fmap_readn.exit.thread.i, label %fmap_readn.exit.i

fmap_readn.exit.i:                                ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %5, ptr nonnull align 1 %i.au, i64 %spec.select.i.i, i1 false)
  %.not593.i = icmp ugt i64 %i.as, 39
  br i1 %.not593.i, label %bb.n, label %fmap_readn.exit.thread.i

fmap_readn.exit.thread.i:                         ; preds = %fmap_readn.exit.i, %bb.m, %bb.l, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !60
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !60
  br label %parseicon.exit

bb.n:                                             ; preds = %fmap_readn.exit.i
  %.0..0..0..0..0..i = load i32, ptr %5, align 4, !tbaa !77 ; 2 uses
  %i.ay = icmp ult i32 %.0..0..0..0..0..i, 40
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !61
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !61
  br label %parseicon.exit

bb.p:                                             ; preds = %bb.n
  %i.bc = add i32 %.0..0..0..0..0..i, %i.ao       ; 5 uses
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.4..4..4..4..4..i = load i32, ptr %.4..4..4..4..4..sroa_idx, align 4, !tbaa !77 ; 41 uses
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.8..8..8..8..8..i = load i32, ptr %.8..8..8..8..8..sroa_idx, align 4, !tbaa !77 ; 4 uses
  %i.bd = sdiv i32 %.8..8..8..8..8..i, 2          ; 29 uses
  %.14..14..14..14..14..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 14
  %.14..14..14..14..14..i = load i16, ptr %.14..14..14..14..14..sroa_idx, align 2, !tbaa !77 ; 5 uses
  %i.be = sext i16 %.14..14..14..14..14..i to i32 ; 8 uses
  %i.bf = add i32 %.4..4..4..4..4..i, -257
  %i.bg = icmp ult i32 %i.bf, -241
  %i.bh = add nsw i32 %i.bd, -257
  %i.bi = icmp ult i32 %i.bh, -241
  %or.cond5.i = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %or.cond5.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !62
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !62
  br label %parseicon.exit

bb.r:                                             ; preds = %bb.p
  %i.bm = mul nuw nsw i32 %i.bd, 3
  %i.bn = lshr i32 %i.bm, 2
  %i.bo = icmp samesign ult i32 %.4..4..4..4..4..i, %i.bn
  br i1 %i.bo, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bp = mul nuw nsw i32 %.4..4..4..4..4..i, 3
  %i.bq = lshr i32 %i.bp, 2
  %i.br = icmp samesign ult i32 %i.bd, %i.bq
  br i1 %i.br, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !58
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !58
  br label %parseicon.exit

bb.u:                                             ; preds = %bb.s
  %i.bv = icmp eq i32 %.4..4..4..4..4..i, %i.bd
  br i1 %i.bv, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.bw = and i32 %.4..4..4..4..4..i, 503
  %or.cond7.i = icmp eq i32 %i.bw, 16
  %i.bx = icmp eq i32 %.4..4..4..4..4..i, 32
  %or.cond9.i = or i1 %i.bx, %or.cond7.i
  br i1 %or.cond9.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.by = and i32 %.4..4..4..4..4..i, 31
  %.not594.i = icmp eq i32 %i.by, 0
  %.lhs.trunc638.i = trunc nuw nsw i32 %.4..4..4..4..4..i to i16
  %i.bz = urem i16 %.lhs.trunc638.i, 24
  %.not595.i = icmp eq i16 %i.bz, 0
  %or.cond.i = or i1 %.not594.i, %.not595.i
  %spec.select.i = select i1 %or.cond.i, i32 1, i32 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %.0549.i = phi i32 [ 2, %bb.u ], [ %spec.select.i, %bb.w ], [ 0, %bb.v ]
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.16, i32 noundef %.4..4..4..4..4..i, i32 noundef %i.bd, i32 noundef %i.be) #13
  switch i16 %.14..14..14..14..14..i, label %bb.y [
    i16 32, label %bb.ab
    i16 1, label %bb.z
    i16 4, label %bb.z
    i16 8, label %bb.z
    i16 16, label %bb.ab
    i16 24, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.17) #13
  br label %parseicon.exit

bb.z:                                             ; preds = %bb.x, %bb.x, %bb.x
  %i.ca = zext i32 %i.bc to i64
  %i.cb = shl nuw nsw i32 1, %i.be
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 2                ; 2 uses
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.cf = call ptr %i.ce(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.ca, i64 noundef range(i64 -8589934592, 8589934589) %i.cd, i32 noundef 1) #13, !inline_history !89 ; 2 uses
  %.not596.i = icmp eq ptr %i.cf, null
  br i1 %.not596.i, label %parseicon.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cg = trunc nuw nsw i64 %i.cd to i32
  %i.ch = add i32 %i.bc, %i.cg
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.x, %bb.x, %bb.x
  %.0550.i = phi i32 [ %i.ch, %bb.aa ], [ %i.bc, %bb.x ], [ %i.bc, %bb.x ], [ %i.bc, %bb.x ] ; 2 uses
  %.0523.i = phi ptr [ %i.cf, %bb.aa ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ] ; 7 uses
  %i.ci = mul nuw nsw i32 %.4..4..4..4..4..i, %i.be ; 8 uses
  %i.cj = lshr i32 %i.ci, 3
  %i.ck = and i32 %i.cj, 536870908
  %i.cl = and i32 %i.ci, 31
  %.not597.i = icmp eq i32 %i.cl, 0
  %i.cm = select i1 %.not597.i, i32 0, i32 4      ; 7 uses
  %i.cn = add nuw nsw i32 %i.cm, %i.ck            ; 3 uses
  %i.co = and i16 %.14..14..14..14..14..i, 31
  %.not599.i = icmp eq i16 %i.co, 0               ; 2 uses
  %i.cp = lshr i32 %.4..4..4..4..4..i, 3
  %i.cq = and i32 %i.cp, 60
  %i.cr = and i32 %.4..4..4..4..4..i, 31
  %.not598.i = icmp eq i32 %i.cr, 0
  %i.cs = select i1 %.not598.i, i32 0, i32 4
  %i.ct = add nuw nsw i32 %i.cs, %i.cq            ; 4 uses
  %i.cu = select i1 %.not599.i, i32 0, i32 %i.ct  ; 2 uses
  %i.cv = zext i32 %.0550.i to i64
  %i.cw = add nuw nsw i32 %i.cn, %i.cu
  %i.cx = mul nuw nsw i32 %i.cw, %i.bd
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.da = call ptr %i.cz(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.cv, i64 noundef range(i64 0, 4294967296) %i.cy, i32 noundef 0) #13, !inline_history !87 ; 70 uses
  %.not600.i = icmp eq ptr %i.da, null
  br i1 %.not600.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %.not601.i = icmp eq ptr %.0523.i, null
  br i1 %.not601.i, label %parseicon.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = shl nuw i32 1, %i.be
  %i.dc = sext i32 %i.db to i64
  %i.dd = shl nsw i64 %i.dc, 2
  %i.de = getelementptr i8, ptr %i.l, i64 16
  %.val.i.i = load ptr, ptr %i.de, align 8, !tbaa !90
  %i.df = getelementptr i8, ptr %i.l, i64 72
  %.val3.i.i = load i64, ptr %i.df, align 8, !tbaa !91
  %i.dg = ptrtoint ptr %.0523.i to i64
  %i.dh = ptrtoint ptr %.val.i.i to i64
  %i.di = add i64 %.val3.i.i, %i.dh
  %i.dj = sub i64 %i.dg, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !92
  call void %i.dl(ptr noundef nonnull %i.l, i64 noundef %i.dj, i64 noundef range(i64 -8589934592, 8589934589) %i.dd) #13, !inline_history !93
  br label %parseicon.exit

bb.ae:                                            ; preds = %bb.ab
  %narrow.i = shl nuw nsw i32 %.4..4..4..4..4..i, 2
  %i.dm = mul nuw nsw i32 %narrow.i, %i.bd
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = call ptr @cli_max_malloc(i64 noundef %i.dn) #13 ; 30 uses
  %.not602.i = icmp eq ptr %i.do, null
  br i1 %.not602.i, label %bb.af, label %.preheader662.i

.preheader662.i:                                  ; preds = %bb.ae
  %.8..off.i = add i32 %.8..8..8..8..8..i, 1
  %.not717.i = icmp ult i32 %.8..off.i, 3
  br i1 %.not717.i, label %._crit_edge.i, label %.lr.ph680.i

.lr.ph680.i:                                      ; preds = %.preheader662.i
  %notmask.i = shl nsw i32 -1, %i.be
  %i.dp = xor i32 %notmask.i, -1
  %i.dq = zext nneg i32 %i.bd to i64              ; 5 uses
  %i.dr = zext nneg i32 %.4..4..4..4..4..i to i64 ; 22 uses
  %i.ds = add nsw i64 %i.dr, -1                   ; 3 uses
  %i.dt = lshr i32 %i.ci, 3
  %i.du = and i32 %i.dt, 536870908
  %narrow.a = add nuw nsw i32 %i.du, %i.cm
  %i.dv = zext nneg i32 %narrow.a to i64
  %i.dw = shl nuw nsw i64 %i.dr, 2
  %scevgep53 = getelementptr i8, ptr %i.do, i64 %i.dw
  %i.dx = lshr i32 %i.ci, 3
  %i.dy = and i32 %i.dx, 536870908
  %narrow132 = add nuw nsw i32 %i.dy, %i.cm
  %i.dz = shl nuw nsw i64 %i.dr, 1
  %scevgep56.a = getelementptr i8, ptr %i.da, i64 %i.dz
  %i.ea = add nsw i64 %i.dr, -1                   ; 4 uses
  %i.eb = lshr i32 %i.ci, 3
  %i.ec = and i32 %i.eb, 536870908
  %narrow133 = add nuw nsw i32 %i.ec, %i.cm
  %i.ed = zext nneg i32 %narrow133 to i64
  %i.ee = shl nuw nsw i64 %i.dr, 2
  %scevgep65 = getelementptr i8, ptr %i.do, i64 %i.ee
  %i.ef = lshr i32 %i.ci, 3
  %i.eg = and i32 %i.ef, 536870908
  %narrow134 = add nuw nsw i32 %i.eg, %i.cm
  %i.eh = mul nuw nsw i64 %i.dr, 3
  %scevgep68.a = getelementptr i8, ptr %i.da, i64 %i.eh
  %i.ei = add nsw i64 %i.dr, -1                   ; 3 uses
  %i.ej = lshr i32 %i.ci, 3
  %i.ek = and i32 %i.ej, 536870908
  %narrow135 = add nuw nsw i32 %i.ek, %i.cm
  %i.el = zext nneg i32 %narrow135 to i64
  %i.em = shl nuw nsw i64 %i.dr, 2                ; 2 uses
  %scevgep90 = getelementptr i8, ptr %i.do, i64 %i.em
  %i.en = lshr i32 %i.ci, 3
  %i.eo = and i32 %i.en, 536870908
  %narrow136 = add nuw nsw i32 %i.eo, %i.cm
  %scevgep93.a = getelementptr i8, ptr %i.da, i64 %i.em
  %min.iters.check99 = icmp ult i32 %.4..4..4..4..4..i, 20
  %i.ep = trunc nsw i64 %i.ei to i32
  %i.eq = trunc nsw i64 %i.ei to i32
  %mul.result86 = shl i32 %i.eq, 2                ; 4 uses
  %mul.overflow87 = icmp ugt i64 %i.ei, 1073741823
  %n.vec101 = and i64 %i.dr, 504                  ; 4 uses
  %i.er = trunc nuw nsw i64 %n.vec101 to i32
  %i.es = shl nuw nsw i32 %i.er, 2
  %cmp.n107 = icmp eq i64 %n.vec101, %i.dr
  %min.iters.check74 = icmp ult i32 %.4..4..4..4..4..i, 20
  %i.et = trunc nsw i64 %i.ea to i32
  %i.eu = trunc nsw i64 %i.ea to i32
  %mul60 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.eu, i32 3) ; 2 uses
  %mul.result61 = extractvalue { i32, i1 } %mul60, 0 ; 3 uses
  %mul.overflow62 = extractvalue { i32, i1 } %mul60, 1
  %i.ev = icmp ugt i64 %i.ea, 4294967295
  %i.ew = icmp ugt i64 %i.ea, 4294967295
  %invariant.op = or i1 %i.ew, %mul.overflow62
  %n.vec76 = and i64 %i.dr, 508                   ; 4 uses
  %i.ex = trunc nuw nsw i64 %n.vec76 to i32
  %i.ey = mul nuw nsw i32 %i.ex, 3
  %cmp.n81 = icmp eq i64 %n.vec76, %i.dr
  %min.iters.check = icmp ult i32 %.4..4..4..4..4..i, 12
  %i.ez = trunc nsw i64 %i.ds to i32
  %i.fa = trunc nsw i64 %i.ds to i32
  %mul.result = shl i32 %i.fa, 1                  ; 2 uses
  %i.fb = icmp ugt i64 %i.ds, 4294967295
  %n.vec = and i64 %i.dr, 508                     ; 4 uses
  %i.fc = trunc nuw nsw i64 %n.vec to i32
  %i.fd = shl nuw nsw i32 %i.fc, 1
  %cmp.n = icmp eq i64 %n.vec, %i.dr
  br label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.not603.i = icmp eq ptr %.0523.i, null
  br i1 %.not603.i, label %parseicon.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fe = shl nuw i32 1, %i.be
  %i.ff = sext i32 %i.fe to i64
  %i.fg = shl nsw i64 %i.ff, 2
  %i.fh = getelementptr i8, ptr %i.l, i64 16
  %.val.i621.i = load ptr, ptr %i.fh, align 8, !tbaa !90
  %i.fi = getelementptr i8, ptr %i.l, i64 72
  %.val3.i622.i = load i64, ptr %i.fi, align 8, !tbaa !91
  %i.fj = ptrtoint ptr %.0523.i to i64
  %i.fk = ptrtoint ptr %.val.i621.i to i64
  %i.fl = add i64 %.val3.i622.i, %i.fk
  %i.fm = sub i64 %i.fj, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !92
  call void %i.fo(ptr noundef nonnull %i.l, i64 noundef %i.fm, i64 noundef range(i64 -8589934592, 8589934589) %i.fg) #13, !inline_history !93
  br label %parseicon.exit

bb.ah:                                            ; preds = %.loopexit655.i, %.lr.ph680.i
  %indvars.iv747.i = phi i64 [ 0, %.lr.ph680.i ], [ %indvars.iv.next748.i, %.loopexit655.i ] ; 18 uses
  %.0551677.i = phi i32 [ 0, %.lr.ph680.i ], [ %.2553.i, %.loopexit655.i ] ; 10 uses
  %i.fp = trunc i64 %indvars.iv747.i to i32
  %i.fq = xor i32 %i.fp, -1
  %i.fr = add i32 %i.bd, %i.fq
  %i.fs = mul i32 %.4..4..4..4..4..i, %i.fr
  %i.ft = zext i32 %i.fs to i64
  %i.fu = shl nuw nsw i64 %i.ft, 2                ; 2 uses
  %scevgep89 = getelementptr i8, ptr %i.do, i64 %i.fu
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.fu
  %i.fv = trunc i64 %indvars.iv747.i to i32
  %i.fw = mul i32 %narrow136, %i.fv
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %scevgep92 = getelementptr i8, ptr %i.da, i64 %i.fx
  %scevgep94 = getelementptr i8, ptr %scevgep93.a, i64 %i.fx
  %i.fy = trunc i64 %indvars.iv747.i to i32
  %i.fz = xor i32 %i.fy, -1
  %i.ga = add i32 %i.bd, %i.fz
  %i.gb = mul i32 %.4..4..4..4..4..i, %i.ga
  %i.gc = mul i64 %indvars.iv747.i, %i.el         ; 4 uses
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = trunc i64 %i.gc to i32
  %i.gf = trunc i64 %i.gc to i32
  %i.gg = trunc i64 %i.gc to i32
  %i.gh = trunc i64 %indvars.iv747.i to i32
  %i.gi = xor i32 %i.gh, -1
  %i.gj = add i32 %i.bd, %i.gi
  %i.gk = mul i32 %.4..4..4..4..4..i, %i.gj
  %i.gl = zext i32 %i.gk to i64
  %i.gm = shl nuw nsw i64 %i.gl, 2                ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.do, i64 %i.gm
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %i.gm
  %i.gn = trunc i64 %indvars.iv747.i to i32
  %i.go = mul i32 %narrow134, %i.gn
  %i.gp = zext i32 %i.go to i64                   ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.da, i64 %i.gp
  %scevgep69 = getelementptr i8, ptr %scevgep68.a, i64 %i.gp
  %i.gq = trunc i64 %indvars.iv747.i to i32
  %i.gr = xor i32 %i.gq, -1
  %i.gs = add i32 %i.bd, %i.gr
  %i.gt = mul i32 %.4..4..4..4..4..i, %i.gs
  %i.gu = mul i64 %indvars.iv747.i, %i.ed         ; 3 uses
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = trunc i64 %i.gu to i32
  %i.gx = trunc i64 %i.gu to i32
  %i.gy = trunc i64 %indvars.iv747.i to i32
  %i.gz = xor i32 %i.gy, -1
  %i.ha = add i32 %i.bd, %i.gz
  %i.hb = mul i32 %.4..4..4..4..4..i, %i.ha
  %i.hc = zext i32 %i.hb to i64
  %i.hd = shl nuw nsw i64 %i.hc, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.do, i64 %i.hd
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.hd
  %i.he = trunc i64 %indvars.iv747.i to i32
  %i.hf = mul i32 %narrow132, %i.he
  %i.hg = zext i32 %i.hf to i64                   ; 2 uses
  %scevgep55 = getelementptr i8, ptr %i.da, i64 %i.hg
  %scevgep57 = getelementptr i8, ptr %scevgep56.a, i64 %i.hg
  %i.hh = trunc i64 %indvars.iv747.i to i32
  %i.hi = xor i32 %i.hh, -1
  %i.hj = add i32 %i.bd, %i.hi
  %i.hk = mul i32 %.4..4..4..4..4..i, %i.hj
  %i.hl = mul i64 %indvars.iv747.i, %i.dv         ; 2 uses
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = trunc i64 %i.hl to i32
  %i.ho = trunc nuw nsw i64 %indvars.iv747.i to i32
  %i.hp = mul i32 %i.cn, %i.ho                    ; 16 uses
  switch i16 %.14..14..14..14..14..i, label %.loopexit655.i [
    i16 1, label %.lr.ph676.i
    i16 4, label %.lr.ph676.i
    i16 8, label %.lr.ph676.i
    i16 16, label %.lr.ph671.i
    i16 24, label %.lr.ph668.i
    i16 32, label %.lr.ph.i
  ]

.lr.ph.i:                                         ; preds = %bb.ah
  %i.hq = xor i64 %indvars.iv747.i, -1
  %i.hr = add nsw i64 %i.hq, %i.dq
  %i.hs = mul i64 %i.hr, %i.dr                    ; 2 uses
  br i1 %min.iters.check99, label %scalar.ph98.preheader, label %vector.scevcheck84

vector.scevcheck84:                               ; preds = %.lr.ph.i
  %i.ht = xor i32 %i.gb, -1
  %i.hu = icmp ult i32 %i.ht, %i.ep
  %i.hv = xor i32 %i.gd, -4
  %i.hw = icmp ult i32 %i.hv, %mul.result86
  %i.hx = xor i32 %i.ge, -1
  %i.hy = icmp ugt i32 %mul.result86, %i.hx
  %i.hz = or i1 %i.hy, %mul.overflow87
  %i.ia = xor i32 %i.gf, -2
  %i.ib = icmp ult i32 %i.ia, %mul.result86
  %i.ic = xor i32 %i.gg, -3
  %i.id = icmp ult i32 %i.ic, %mul.result86
  %i.ie = or i1 %i.hw, %i.hu
  %i.if = or i1 %i.ie, %i.hz
  %i.ig = or i1 %i.ib, %i.if
end_hunk_0
begin_hunk_1_@icon_scan_cb:bb.a

bb.ai:                                            ; preds = %bb.ak, %.lr.ph676.i
  %indvars.iv743.i = phi i64 [ 0, %.lr.ph676.i ], [ %indvars.iv.next744.i, %bb.ak ] ; 2 uses
  %.0557674.i = phi i32 [ %i.hp, %.lr.ph676.i ], [ %.1558.i, %bb.ak ] ; 3 uses
  %.0562673.i = phi i32 [ 0, %.lr.ph676.i ], [ %i.wl, %bb.ak ] ; 2 uses
  %.0564672.i = phi i8 [ 0, %.lr.ph676.i ], [ %.1565.i, %bb.ak ]
  %.not620.i = icmp eq i32 %.0562673.i, 0
  br i1 %.not620.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.wh = add i32 %.0557674.i, 1
  %i.wi = zext i32 %.0557674.i to i64
  %i.wj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wi
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !77
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1565.i = phi i8 [ %.0564672.i, %bb.ai ], [ %i.wk, %bb.aj ] ; 2 uses
  %.1563.i = phi i32 [ %.0562673.i, %bb.ai ], [ 8, %bb.aj ]
  %.1558.i = phi i32 [ %.0557674.i, %bb.ai ], [ %i.wh, %bb.aj ]
  %i.wl = sub i32 %.1563.i, %i.be                 ; 2 uses
  %i.wm = zext i8 %.1565.i to i32
  %i.wn = lshr i32 %i.wm, %i.wl
  %i.wo = and i32 %i.wn, %i.dp
  %i.wp = zext nneg i32 %i.wo to i64
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %.0523.i, i64 %i.wp
  %i.wr = load i32, ptr %i.wq, align 1, !tbaa !77
  %i.ws = add i64 %indvars.iv743.i, %i.wg
  %i.wt = and i64 %i.ws, 4294967295
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.wt
  store i32 %i.wr, ptr %i.wu, align 4, !tbaa !57
  %indvars.iv.next744.i = add nuw nsw i64 %indvars.iv743.i, 1 ; 2 uses
  %exitcond746.not.i = icmp eq i64 %indvars.iv.next744.i, %i.dr
  br i1 %exitcond746.not.i, label %.loopexit655.i, label %bb.ai

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv738.i = phi i64 [ %indvars.iv.next739.i, %scalar.ph ], [ %indvars.iv738.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.2559669.i = phi i32 [ %i.xz, %scalar.ph ], [ %.2559669.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.wv = zext i32 %.2559669.i to i64
  %i.ww = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wv
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !77
  %i.wy = zext i8 %i.wx to i32                    ; 2 uses
  %i.wz = and i32 %i.wy, 31                       ; 2 uses
  %i.xa = lshr i32 %i.wy, 5
  %i.xb = or disjoint i32 %.2559669.i, 1
  %i.xc = zext i32 %i.xb to i64
  %i.xd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xc
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !77
  %i.xf = zext i8 %i.xe to i32                    ; 2 uses
  %i.xg = shl nuw nsw i32 %i.xf, 3                ; 2 uses
  %i.xh = and i32 %i.xg, 24
  %i.xi = or disjoint i32 %i.xh, %i.xa            ; 2 uses
  %i.xj = shl nuw nsw i32 %i.wz, 3
  %i.xk = lshr i32 %i.wz, 2
  %i.xl = or disjoint i32 %i.xj, %i.xk
  %i.xm = shl nuw nsw i32 %i.xi, 14
  %i.xn = shl nuw nsw i32 %i.xi, 9
  %i.xo = and i32 %i.xn, 14336
  %i.xp = or disjoint i32 %i.xo, %i.xm
  %i.xq = and i32 %i.xg, 2016
  %i.xr = lshr i32 %i.xf, 2
  %i.xs = or i32 %i.xq, %i.xr
  %i.xt = shl nuw nsw i32 %i.xs, 17
  %i.xu = or i32 %i.xt, %i.xp
  %i.xv = or disjoint i32 %i.xu, %i.xl
  %i.xw = add i64 %indvars.iv738.i, %i.tf
  %i.xx = and i64 %i.xw, 4294967295
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.xx
  store i32 %i.xv, ptr %i.xy, align 4, !tbaa !57
  %i.xz = add i32 %.2559669.i, 2
  %indvars.iv.next739.i = add nuw nsw i64 %indvars.iv738.i, 1 ; 2 uses
  %exitcond742.not.i = icmp eq i64 %indvars.iv.next739.i, %i.dr
  br i1 %exitcond742.not.i, label %.loopexit655.i, label %scalar.ph, !llvm.loop !114

scalar.ph73:                                      ; preds = %scalar.ph73.preheader, %scalar.ph73
  %indvars.iv733.i = phi i64 [ %indvars.iv.next734.i, %scalar.ph73 ], [ %indvars.iv733.i.ph, %scalar.ph73.preheader ] ; 2 uses
  %.3560666.i = phi i32 [ %i.yv, %scalar.ph73 ], [ %.3560666.i.ph, %scalar.ph73.preheader ] ; 4 uses
  %i.ya = zext i32 %.3560666.i to i64
  %i.yb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ya
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !77
  %i.yd = zext i8 %i.yc to i32
  %i.ye = add i32 %.3560666.i, 1
  %i.yf = zext i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !77
  %i.yi = zext i8 %i.yh to i32
  %i.yj = shl nuw nsw i32 %i.yi, 8
  %i.yk = or disjoint i32 %i.yj, %i.yd
  %i.yl = add i32 %.3560666.i, 2
  %i.ym = zext i32 %i.yl to i64
  %i.yn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ym
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !77
  %i.yp = zext i8 %i.yo to i32
  %i.yq = shl nuw nsw i32 %i.yp, 16
  %i.yr = or disjoint i32 %i.yk, %i.yq
  %i.ys = add i64 %indvars.iv733.i, %i.pu
  %i.yt = and i64 %i.ys, 4294967295
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.yt
  store i32 %i.yr, ptr %i.yu, align 4, !tbaa !57
  %i.yv = add i32 %.3560666.i, 3
  %indvars.iv.next734.i = add nuw nsw i64 %indvars.iv733.i, 1 ; 2 uses
  %exitcond737.not.i = icmp eq i64 %indvars.iv.next734.i, %i.dr
  br i1 %exitcond737.not.i, label %.loopexit655.i, label %scalar.ph73, !llvm.loop !115

scalar.ph98:                                      ; preds = %scalar.ph98.preheader, %scalar.ph98
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph98 ], [ %indvars.iv.i.ph, %scalar.ph98.preheader ] ; 2 uses
  %.1552664.i = phi i32 [ %i.zy, %scalar.ph98 ], [ %.1552664.i.ph, %scalar.ph98.preheader ]
  %.4561663.i = phi i32 [ %i.zz, %scalar.ph98 ], [ %.4561663.i.ph, %scalar.ph98.preheader ] ; 5 uses
  %i.yw = or disjoint i32 %.4561663.i, 3
  %i.yx = zext i32 %i.yw to i64
  %i.yy = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yx
  %i.yz = load i8, ptr %i.yy, align 1, !tbaa !77
  %i.za = zext i8 %i.yz to i32
  %i.zb = shl nuw i32 %i.za, 24                   ; 2 uses
  %i.zc = zext i32 %.4561663.i to i64
  %i.zd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.zc
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !77
  %i.zf = zext i8 %i.ze to i32
  %i.zg = or disjoint i32 %.4561663.i, 1
  %i.zh = zext i32 %i.zg to i64
  %i.zi = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.zh
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !77
  %i.zk = zext i8 %i.zj to i32
  %i.zl = shl nuw nsw i32 %i.zk, 8
  %i.zm = or disjoint i32 %.4561663.i, 2
  %i.zn = zext i32 %i.zm to i64
  %i.zo = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.zn
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !77
  %i.zq = zext i8 %i.zp to i32
  %i.zr = shl nuw nsw i32 %i.zq, 16
  %i.zs = or disjoint i32 %i.zl, %i.zf
  %i.zt = or disjoint i32 %i.zs, %i.zr
  %i.zu = or disjoint i32 %i.zt, %i.zb
  %i.zv = add i64 %indvars.iv.i, %i.hs
  %i.zw = and i64 %i.zv, 4294967295
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.zw
  store i32 %i.zu, ptr %i.zx, align 4, !tbaa !57
  %i.zy = or i32 %i.zb, %.1552664.i               ; 2 uses
  %i.zz = add i32 %.4561663.i, 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dr
  br i1 %exitcond.not.i, label %.loopexit655.i, label %scalar.ph98, !llvm.loop !116

.loopexit655.i:                                   ; preds = %scalar.ph98, %scalar.ph73, %scalar.ph, %bb.ak, %middle.block106, %middle.block80, %middle.block, %bb.ah
  %.2553.i = phi i32 [ %.0551677.i, %bb.ah ], [ %.0551677.i, %middle.block80 ], [ %.0551677.i, %scalar.ph ], [ %.0551677.i, %middle.block ], [ %.0551677.i, %scalar.ph73 ], [ %.0551677.i, %bb.ak ], [ %i.pr, %middle.block106 ], [ %i.zy, %scalar.ph98 ] ; 2 uses
  %indvars.iv.next748.i = add nuw nsw i64 %indvars.iv747.i, 1 ; 2 uses
  %exitcond751.not.i = icmp eq i64 %indvars.iv.next748.i, %i.dq
  br i1 %exitcond751.not.i, label %._crit_edge.loopexit.i, label %bb.ah

._crit_edge.loopexit.i:                           ; preds = %.loopexit655.i
  %i.aaa = icmp ne i32 %.2553.i, 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader662.i
  %.0551.lcssa.i = phi i1 [ false, %.preheader662.i ], [ %i.aaa, %._crit_edge.loopexit.i ] ; 2 uses
  %.not604.i = icmp eq ptr %.0523.i, null
  br i1 %.not604.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i
  %i.aab = shl nuw i32 1, %i.be
  %i.aac = sext i32 %i.aab to i64
  %i.aad = shl nsw i64 %i.aac, 2
  %i.aae = getelementptr i8, ptr %i.l, i64 16
  %.val.i623.i = load ptr, ptr %i.aae, align 8, !tbaa !90
  %i.aaf = getelementptr i8, ptr %i.l, i64 72
  %.val3.i624.i = load i64, ptr %i.aaf, align 8, !tbaa !91
  %i.aag = ptrtoint ptr %.0523.i to i64
  %i.aah = ptrtoint ptr %.val.i623.i to i64
  %i.aai = add i64 %.val3.i624.i, %i.aah
  %i.aaj = sub i64 %i.aag, %i.aai
  %i.aak = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !92
  call void %i.aal(ptr noundef nonnull %i.l, i64 noundef %i.aaj, i64 noundef range(i64 -8589934592, 8589934589) %i.aad) #13, !inline_history !93
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i
  call fastcc void @makebmp(ptr noundef nonnull @.str.18, ptr noundef %i.s, i32 noundef %.4..4..4..4..4..i, i32 noundef %i.bd, ptr noundef %i.do)
  %i.aam = icmp ne i16 %.14..14..14..14..14..i, 32
  %or.cond11.i = select i1 %i.aam, i1 true, i1 %.0551.lcssa.i
  %i.aan = mul i32 %i.cn, %i.bd                   ; 2 uses
  br i1 %or.cond11.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.aao = add i32 %.0550.i, %i.aan
  %i.aap = zext i32 %i.aao to i64
  %i.aaq = mul nuw nsw i32 %i.ct, %i.bd
  %i.aar = zext nneg i32 %i.aaq to i64
  %i.aas = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.aat = call ptr %i.aas(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.aap, i64 noundef range(i64 0, 4294967296) %i.aar, i32 noundef 0) #13, !inline_history !87 ; 2 uses
  %.not605.i = icmp eq ptr %i.aat, null
  br i1 %.not605.i, label %.preheader654.i, label %bb.ao

.preheader654.i:                                  ; preds = %bb.an
  %i.aau = add i32 %.8..8..8..8..8..i, -2
  %i.aav = icmp ult i32 %i.aau, -3
  %i.aaw = icmp ne i32 %.4..4..4..4..4..i, 0
  %or.cond713.i = and i1 %i.aaw, %i.aav
  br i1 %or.cond713.i, label %.preheader653.preheader.i, label %._crit_edge686.split.i

.preheader653.preheader.i:                        ; preds = %.preheader654.i
  %7 = zext nneg i32 %.4..4..4..4..4..i to i64    ; 4 uses
  %umax760.i = call i32 @llvm.umax.i32(i32 %i.bd, i32 1)
  %wide.trip.count761.i = zext nneg i32 %umax760.i to i64
  %min.iters.check111 = icmp ult i32 %.4..4..4..4..4..i, 8
  %n.vec113 = and i64 %7, 504                     ; 3 uses
  %cmp.n119 = icmp eq i64 %n.vec113, %7
  br label %.preheader653.i.a

.preheader653.i.a:                                ; preds = %._crit_edge684.i, %.preheader653.preheader.i
  %indvars.iv757.i = phi i64 [ 0, %.preheader653.preheader.i ], [ %indvars.iv.next758.i, %._crit_edge684.i ] ; 2 uses
  %8 = mul nuw nsw i64 %indvars.iv757.i, %7
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %8 ; 2 uses
  br i1 %min.iters.check111, label %scalar.ph110.preheader, label %vector.body114

vector.body114:                                   ; preds = %.preheader653.i.a, %vector.body114
  %index115 = phi i64 [ %index.next117, %vector.body114 ], [ 0, %.preheader653.i.a ] ; 2 uses
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %index115 ; 3 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.aax, align 4, !tbaa !57
  %wide.load116 = load <4 x i32>, ptr %i.aay, align 4, !tbaa !57
  %i.aaz = or <4 x i32> %wide.load, splat (i32 -16777216)
  %i.aba = or <4 x i32> %wide.load116, splat (i32 -16777216)
  store <4 x i32> %i.aaz, ptr %i.aax, align 4, !tbaa !57
  store <4 x i32> %i.aba, ptr %i.aay, align 4, !tbaa !57
  %index.next117 = add nuw i64 %index115, 8       ; 2 uses
  %i.abb = icmp eq i64 %index.next117, %n.vec113
  br i1 %i.abb, label %middle.block118, label %vector.body114, !llvm.loop !117

middle.block118:                                  ; preds = %vector.body114
  br i1 %cmp.n119, label %._crit_edge684.i, label %scalar.ph110.preheader

scalar.ph110.preheader:                           ; preds = %.preheader653.i.a, %middle.block118
  %indvars.iv752.i.ph = phi i64 [ 0, %.preheader653.i.a ], [ %n.vec113, %middle.block118 ]
  br label %scalar.ph110

scalar.ph110:                                     ; preds = %scalar.ph110.preheader, %scalar.ph110
  %indvars.iv752.i = phi i64 [ %indvars.iv.next753.i, %scalar.ph110 ], [ %indvars.iv752.i.ph, %scalar.ph110.preheader ] ; 2 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv752.i ; 2 uses
  %i.abc = load i32, ptr %gep.i, align 4, !tbaa !57
  %i.abd = or i32 %i.abc, -16777216
  store i32 %i.abd, ptr %gep.i, align 4, !tbaa !57
  %indvars.iv.next753.i = add nuw nsw i64 %indvars.iv752.i, 1 ; 2 uses
  %exitcond756.not.i = icmp eq i64 %indvars.iv.next753.i, %7
  br i1 %exitcond756.not.i, label %._crit_edge684.i, label %scalar.ph110, !llvm.loop !118

._crit_edge684.i:                                 ; preds = %scalar.ph110, %middle.block118
  %indvars.iv.next758.i = add nuw nsw i64 %indvars.iv757.i, 1 ; 2 uses
  %exitcond762.not.i = icmp eq i64 %indvars.iv.next758.i, %wide.trip.count761.i
  br i1 %exitcond762.not.i, label %._crit_edge686.split.i, label %.preheader653.i.a

._crit_edge686.split.i:                           ; preds = %._crit_edge684.i, %.preheader654.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19) #13
  br label %bb.aq

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20) #13
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  %i.abe = zext i32 %i.aan to i64
  %i.abf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.abe
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %._crit_edge686.split.i
  %.3554.i = phi i1 [ %.0551.lcssa.i, %bb.ap ], [ false, %bb.ao ], [ true, %._crit_edge686.split.i ]
  %.0528.i = phi i32 [ %i.cu, %bb.ap ], [ %i.ct, %bb.ao ], [ %i.ct, %._crit_edge686.split.i ]
  %.0522.i = phi ptr [ %i.abf, %bb.ap ], [ %i.aat, %bb.ao ], [ null, %._crit_edge686.split.i ]
  %or.cond13.i = select i1 %.not599.i, i1 %.3554.i, i1 false
  %or.cond13.not.i = xor i1 %or.cond13.i, true
  %i.abg = add i32 %.8..8..8..8..8..i, -2
  %i.abh = icmp ult i32 %i.abg, -3                ; 2 uses
  %or.cond714.i = select i1 %or.cond13.not.i, i1 %i.abh, i1 false
  %i.abi = icmp ne i32 %.4..4..4..4..4..i, 0      ; 2 uses
  %or.cond715.i = and i1 %i.abi, %or.cond714.i
  br i1 %or.cond715.i, label %.lr.ph692.preheader.i, label %.loopexit652.i

.lr.ph692.preheader.i:                            ; preds = %bb.aq
  %i.abj = zext nneg i32 %i.bd to i64
  %i.abk = zext nneg i32 %.4..4..4..4..4..i to i64 ; 2 uses
  %umax770.i = call i32 @llvm.umax.i32(i32 %i.bd, i32 1)
  %wide.trip.count771.i = zext nneg i32 %umax770.i to i64
  br label %.lr.ph692.i

.lr.ph692.i:                                      ; preds = %._crit_edge693.i, %.lr.ph692.preheader.i
  %indvars.iv767.i = phi i64 [ 0, %.lr.ph692.preheader.i ], [ %indvars.iv.next768.i, %._crit_edge693.i ] ; 3 uses
  %i.abl = xor i64 %indvars.iv767.i, -1
  %i.abm = add nsw i64 %i.abl, %i.abj
  %i.abn = mul i64 %i.abm, %i.abk
  %i.abo = trunc i64 %indvars.iv767.i to i32
  %i.abp = mul i32 %.0528.i, %i.abo
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %.lr.ph692.i
  %indvars.iv763.i = phi i64 [ 0, %.lr.ph692.i ], [ %indvars.iv.next764.i, %bb.at ] ; 2 uses
  %.0566689.i = phi i32 [ %i.abp, %.lr.ph692.i ], [ %.1567.i, %bb.at ] ; 3 uses
  %.0568688.i = phi i32 [ 0, %.lr.ph692.i ], [ %i.abu, %bb.at ] ; 2 uses
  %.0570687.i = phi i8 [ 0, %.lr.ph692.i ], [ %.1571.i, %bb.at ]
  %.not606.i = icmp eq i32 %.0568688.i, 0
  br i1 %.not606.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.abq = add i32 %.0566689.i, 1
  %i.abr = zext i32 %.0566689.i to i64
  %i.abs = getelementptr inbounds nuw i8, ptr %.0522.i, i64 %i.abr
  %i.abt = load i8, ptr %i.abs, align 1, !tbaa !77
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1571.i = phi i8 [ %.0570687.i, %bb.ar ], [ %i.abt, %bb.as ] ; 2 uses
  %.1569.i = phi i32 [ %.0568688.i, %bb.ar ], [ 8, %bb.as ]
  %.1567.i = phi i32 [ %.0566689.i, %bb.ar ], [ %i.abq, %bb.as ]
  %i.abu = add nsw i32 %.1569.i, -1               ; 2 uses
  %i.abv = zext i8 %.1571.i to i32
  %i.abw = xor i32 %i.abv, -1
  %i.abx = lshr i32 %i.abw, %i.abu
  %i.aby = trunc i32 %i.abx to i1
  %i.abz = select i1 %i.aby, i32 -16777216, i32 0
  %i.aca = add i64 %indvars.iv763.i, %i.abn
  %i.acb = and i64 %i.aca, 4294967295
  %i.acc = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.acb ; 2 uses
  %i.acd = load i32, ptr %i.acc, align 4, !tbaa !57
  %i.ace = or i32 %i.abz, %i.acd
  store i32 %i.ace, ptr %i.acc, align 4, !tbaa !57
  %indvars.iv.next764.i = add nuw nsw i64 %indvars.iv763.i, 1 ; 2 uses
  %exitcond766.not.i = icmp eq i64 %indvars.iv.next764.i, %i.abk
  br i1 %exitcond766.not.i, label %._crit_edge693.i, label %bb.ar

._crit_edge693.i:                                 ; preds = %bb.at
  %indvars.iv.next768.i = add nuw nsw i64 %indvars.iv767.i, 1 ; 2 uses
  %exitcond772.not.i = icmp eq i64 %indvars.iv.next768.i, %wide.trip.count771.i
  br i1 %exitcond772.not.i, label %.loopexit652.i, label %.lr.ph692.i

.loopexit652.i:                                   ; preds = %._crit_edge693.i, %bb.aq
  call fastcc void @makebmp(ptr noundef nonnull @.str.21, ptr noundef %i.s, i32 noundef %.4..4..4..4..4..i, i32 noundef %i.bd, ptr noundef %i.do)
  %or.cond716.i = and i1 %i.abi, %i.abh
  br i1 %or.cond716.i, label %.preheader650.preheader.i, label %._crit_edge700.split.i

.preheader650.preheader.i:                        ; preds = %.loopexit652.i
  %9 = zext nneg i32 %.4..4..4..4..4..i to i64    ; 4 uses
  %umax781.i = call i32 @llvm.umax.i32(i32 %i.bd, i32 1)
  %wide.trip.count782.i = zext nneg i32 %umax781.i to i64
  %min.iters.check122 = icmp ult i32 %.4..4..4..4..4..i, 4
  %n.vec124 = and i64 %9, 508                     ; 3 uses
  %cmp.n130 = icmp eq i64 %n.vec124, %9
  br label %.preheader650.i.a

.preheader650.i.a:                                ; preds = %._crit_edge698.i, %.preheader650.preheader.i
  %indvars.iv778.i = phi i64 [ 0, %.preheader650.preheader.i ], [ %indvars.iv.next779.i, %._crit_edge698.i ] ; 2 uses
  %10 = mul nuw nsw i64 %indvars.iv778.i, %9
  %invariant.gep825.i = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %10 ; 2 uses
  br i1 %min.iters.check122, label %scalar.ph121.preheader, label %vector.body125

vector.body125:                                   ; preds = %.preheader650.i.a, %vector.body125
  %index126 = phi i64 [ %index.next128, %vector.body125 ], [ 0, %.preheader650.i.a ] ; 2 uses
  %i.acf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep825.i, i64 %index126 ; 2 uses
  %wide.load127 = load <4 x i32>, ptr %i.acf, align 4, !tbaa !57 ; 4 uses
  %i.acg = lshr <4 x i32> %wide.load127, splat (i32 24) ; 4 uses
  %i.ach = lshr <4 x i32> %wide.load127, splat (i32 16)
  %i.aci = and <4 x i32> %i.ach, splat (i32 255)
  %i.acj = lshr <4 x i32> %wide.load127, splat (i32 8)
  %i.ack = and <4 x i32> %i.acj, splat (i32 255)
  %i.acl = and <4 x i32> %wide.load127, splat (i32 255)
  %i.acm = xor <4 x i32> %i.acg, splat (i32 255)  ; 3 uses
  %i.acn = mul nuw nsw <4 x i32> %i.aci, %i.acg
  %i.aco = trunc nuw <4 x i32> %i.acn to <4 x i16>
  %i.acp = udiv <4 x i16> %i.aco, splat (i16 255)
  %i.acq = zext nneg <4 x i16> %i.acp to <4 x i32>
  %i.acr = add nuw nsw <4 x i32> %i.acm, %i.acq
  %i.acs = mul nuw nsw <4 x i32> %i.ack, %i.acg
  %i.act = trunc nuw <4 x i32> %i.acs to <4 x i16>
  %i.acu = udiv <4 x i16> %i.act, splat (i16 255)
  %i.acv = zext nneg <4 x i16> %i.acu to <4 x i32>
  %i.acw = add nuw nsw <4 x i32> %i.acm, %i.acv
  %i.acx = mul nuw nsw <4 x i32> %i.acg, %i.acl
  %i.acy = trunc nuw <4 x i32> %i.acx to <4 x i16>
  %i.acz = udiv <4 x i16> %i.acy, splat (i16 255)
  %i.ada = zext nneg <4 x i16> %i.acz to <4 x i32>
  %i.adb = add nuw nsw <4 x i32> %i.acm, %i.ada
  %i.adc = shl nuw nsw <4 x i32> %i.acr, splat (i32 16)
  %i.add = shl nuw nsw <4 x i32> %i.acw, splat (i32 8)
  %i.ade = or <4 x i32> %i.adb, %i.add
  %i.adf = or <4 x i32> %i.ade, %i.adc
  %i.adg = or <4 x i32> %i.adf, splat (i32 -16777216)
  store <4 x i32> %i.adg, ptr %i.acf, align 4, !tbaa !57
  %index.next128 = add nuw i64 %index126, 4       ; 2 uses
  %i.adh = icmp eq i64 %index.next128, %n.vec124
  br i1 %i.adh, label %middle.block129, label %vector.body125, !llvm.loop !119

middle.block129:                                  ; preds = %vector.body125
  br i1 %cmp.n130, label %._crit_edge698.i, label %scalar.ph121.preheader

scalar.ph121.preheader:                           ; preds = %.preheader650.i.a, %middle.block129
  %indvars.iv773.i.ph = phi i64 [ 0, %.preheader650.i.a ], [ %n.vec124, %middle.block129 ]
  br label %scalar.ph121

scalar.ph121:                                     ; preds = %scalar.ph121.preheader, %scalar.ph121
  %indvars.iv773.i = phi i64 [ %indvars.iv.next774.i, %scalar.ph121 ], [ %indvars.iv773.i.ph, %scalar.ph121.preheader ] ; 2 uses
  %gep826.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep825.i, i64 %indvars.iv773.i ; 2 uses
  %i.adi = load i32, ptr %gep826.i, align 4, !tbaa !57 ; 4 uses
  %i.adj = lshr i32 %i.adi, 24                    ; 4 uses
  %i.adk = lshr i32 %i.adi, 16
  %i.adl = and i32 %i.adk, 255
  %i.adm = lshr i32 %i.adi, 8
  %i.adn = and i32 %i.adm, 255
  %i.ado = and i32 %i.adi, 255
  %i.adp = xor i32 %i.adj, 255                    ; 3 uses
  %i.adq = mul nuw nsw i32 %i.adl, %i.adj
  %.lhs.trunc.i = trunc nuw i32 %i.adq to i16
  %i.adr = udiv i16 %.lhs.trunc.i, 255
  %.zext.i = zext nneg i16 %i.adr to i32
  %i.ads = add nuw nsw i32 %i.adp, %.zext.i
  %i.adt = mul nuw nsw i32 %i.adn, %i.adj
  %.lhs.trunc634.i = trunc nuw i32 %i.adt to i16
  %i.adu = udiv i16 %.lhs.trunc634.i, 255
  %.zext635.i = zext nneg i16 %i.adu to i32
  %i.adv = add nuw nsw i32 %i.adp, %.zext635.i
  %i.adw = mul nuw nsw i32 %i.adj, %i.ado
  %.lhs.trunc636.i = trunc nuw i32 %i.adw to i16
  %i.adx = udiv i16 %.lhs.trunc636.i, 255
  %.zext637.i = zext nneg i16 %i.adx to i32
  %i.ady = add nuw nsw i32 %i.adp, %.zext637.i
  %i.adz = shl nuw nsw i32 %i.ads, 16
  %i.aea = shl nuw nsw i32 %i.adv, 8
  %i.aeb = or i32 %i.ady, %i.aea
  %i.aec = or i32 %i.aeb, %i.adz
  %i.aed = or i32 %i.aec, -16777216
  store i32 %i.aed, ptr %gep826.i, align 4, !tbaa !57
  %indvars.iv.next774.i = add nuw nsw i64 %indvars.iv773.i, 1 ; 2 uses
  %exitcond777.not.i = icmp eq i64 %indvars.iv.next774.i, %9
  br i1 %exitcond777.not.i, label %._crit_edge698.i, label %scalar.ph121, !llvm.loop !120

._crit_edge698.i:                                 ; preds = %scalar.ph121, %middle.block129
  %indvars.iv.next779.i = add nuw nsw i64 %indvars.iv778.i, 1 ; 2 uses
  %exitcond783.not.i = icmp eq i64 %indvars.iv.next779.i, %wide.trip.count782.i
  br i1 %exitcond783.not.i, label %._crit_edge700.split.i, label %.preheader650.i.a

._crit_edge700.split.i:                           ; preds = %._crit_edge698.i, %.loopexit652.i
  switch i32 %.0549.i, label %.loopexit649.i [
    i32 2, label %bb.aw
    i32 1, label %.preheader648.i
  ]

.preheader648.i:                                  ; preds = %._crit_edge700.split.i
  %i.aee = icmp ugt i32 %.4..4..4..4..4..i, 32
  br i1 %i.aee, label %.preheader647.i, label %.loopexit649.i

.preheader647.i:                                  ; preds = %.preheader648.i, %._crit_edge703.i
  %.0529705.i = phi i32 [ %i.afx, %._crit_edge703.i ], [ %.4..4..4..4..4..i, %.preheader648.i ] ; 6 uses
  %.0534704.i = phi i32 [ %i.afy, %._crit_edge703.i ], [ %i.bd, %.preheader648.i ] ; 3 uses
  %.not725.i = icmp eq i32 %.0534704.i, 0
  br i1 %.not725.i, label %._crit_edge703.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader647.i
  %i.aef = zext nneg i32 %.0529705.i to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.av, %.preheader.preheader.i
  %.4547702.i = phi i32 [ %i.afv, %bb.av ], [ 0, %.preheader.preheader.i ] ; 4 uses
  %i.aeg = mul i32 %.4547702.i, %.0529705.i
  %i.aeh = or disjoint i32 %.4547702.i, 1
  %i.aei = mul i32 %i.aeh, %.0529705.i
  %i.aej = lshr exact i32 %.4547702.i, 1
  %i.aek = mul i32 %i.aej, %.0529705.i
  %i.ael = lshr i32 %i.aek, 1
  %i.aem = zext nneg i32 %i.ael to i64
  %invariant.gep827.i = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.aem
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.preheader.i
  %indvars.iv784.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next785.i, %bb.au ] ; 3 uses
  %i.aen = trunc nuw nsw i64 %indvars.iv784.i to i32 ; 2 uses
  %i.aeo = add i32 %i.aeg, %i.aen                 ; 2 uses
  %i.aep = zext i32 %i.aeo to i64
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.aep
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !57 ; 2 uses
  %i.aes = or disjoint i32 %i.aeo, 1
  %i.aet = zext i32 %i.aes to i64
  %i.aeu = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.aet
  %i.aev = load i32, ptr %i.aeu, align 4, !tbaa !57 ; 2 uses
  %i.aew = add i32 %i.aei, %i.aen                 ; 2 uses
  %i.aex = zext i32 %i.aew to i64
  %i.aey = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.aex
  %i.aez = load i32, ptr %i.aey, align 4, !tbaa !57 ; 2 uses
  %i.afa = add i32 %i.aew, 1
  %i.afb = zext i32 %i.afa to i64
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.afb
  %i.afd = load i32, ptr %i.afc, align 4, !tbaa !57 ; 2 uses
  %i.afe = xor i32 %i.aev, %i.aer
  %i.aff = lshr i32 %i.afe, 1
  %i.afg = and i32 %i.aff, 2139062143
  %i.afh = and i32 %i.aev, %i.aer
  %i.afi = add i32 %i.afg, %i.afh                 ; 2 uses
  %i.afj = xor i32 %i.afd, %i.aez
  %i.afk = lshr i32 %i.afj, 1
  %i.afl = and i32 %i.afk, 2139062143
  %i.afm = and i32 %i.afd, %i.aez
  %i.afn = add i32 %i.afl, %i.afm                 ; 2 uses
  %i.afo = xor i32 %i.afn, %i.afi
  %i.afp = lshr i32 %i.afo, 1
  %i.afq = and i32 %i.afp, 2139062143
  %i.afr = and i32 %i.afn, %i.afi
  %i.afs = add i32 %i.afq, %i.afr
  %i.aft = lshr exact i64 %indvars.iv784.i, 1
  %gep828.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep827.i, i64 %i.aft
  store i32 %i.afs, ptr %gep828.i, align 4, !tbaa !57
  %indvars.iv.next785.i = add nuw nsw i64 %indvars.iv784.i, 2 ; 2 uses
  %i.afu = icmp samesign ult i64 %indvars.iv.next785.i, %i.aef
  br i1 %i.afu, label %bb.au, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.afv = add i32 %.4547702.i, 2                 ; 2 uses
  %i.afw = icmp ult i32 %i.afv, %.0534704.i
  br i1 %i.afw, label %.preheader.i, label %._crit_edge703.i

._crit_edge703.i:                                 ; preds = %bb.av, %.preheader647.i
  %i.afx = lshr i32 %.0529705.i, 1                ; 3 uses
  %i.afy = lshr i32 %.0534704.i, 1                ; 3 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, i32 noundef %i.afx, i32 noundef %i.afy) #13
  %i.afz = icmp ugt i32 %.0529705.i, 65
  br i1 %i.afz, label %.preheader647.i, label %.loopexit649.i

bb.aw:                                            ; preds = %._crit_edge700.split.i
  %i.aga = add nsw i32 %.4..4..4..4..4..i, -32
  %i.agb = call i32 @llvm.abs.i32(i32 %i.aga, i1 true)
  %i.agc = add nsw i32 %i.bd, -32
  %i.agd = call i32 @llvm.abs.i32(i32 %i.agc, i1 true)
  %i.age = add nuw nsw i32 %i.agd, %i.agb
  %i.agf = add nsw i32 %.4..4..4..4..4..i, -24
  %i.agg = call i32 @llvm.abs.i32(i32 %i.agf, i1 true)
  %i.agh = add nsw i32 %i.bd, -24
  %i.agi = call i32 @llvm.abs.i32(i32 %i.agh, i1 true)
  %i.agj = add nuw nsw i32 %i.agi, %i.agg         ; 2 uses
  %i.agk = icmp samesign ult i32 %i.age, %i.agj
  br i1 %i.agk, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.agl = add nsw i32 %.4..4..4..4..4..i, -16
  %i.agm = call i32 @llvm.abs.i32(i32 %i.agl, i1 true)
  %i.agn = add nsw i32 %i.bd, -16
  %i.ago = call i32 @llvm.abs.i32(i32 %i.agn, i1 true)
  %i.agp = add nuw nsw i32 %i.ago, %i.agm
  %i.agq = icmp samesign ult i32 %i.agj, %i.agp
  %..i = select i1 %i.agq, i32 24, i32 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0542.i = phi i32 [ 32, %bb.aw ], [ %..i, %bb.ax ] ; 8 uses
  %i.agr = shl nuw nsw i32 %.0542.i, 2
  %i.ags = mul nuw nsw i32 %i.agr, %.0542.i
  %i.agt = zext nneg i32 %i.ags to i64
  %i.agu = call ptr @cli_max_malloc(i64 noundef %i.agt) #13 ; 3 uses
  %.not608.not.i = icmp eq ptr %i.agu, null
  br i1 %.not608.not.i, label %.thread.i, label %bb.az

.thread.i:                                        ; preds = %bb.ay
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.23) #13
  br label %parseicon.exit

bb.az:                                            ; preds = %bb.ay
  %i.agv = uitofp nneg i32 %.4..4..4..4..4..i to double
  %i.agw = insertelement <2 x double> poison, double %i.agv, i64 0
  %i.agx = uitofp nneg i32 %i.bd to double
  %i.agy = insertelement <2 x double> %i.agw, double %i.agx, i64 1
  %i.agz = uitofp nneg i32 %.0542.i to double
  %i.aha = insertelement <2 x double> poison, double %i.agz, i64 0
  %i.ahb = shufflevector <2 x double> %i.aha, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ahc = fdiv <2 x double> %i.agy, %i.ahb       ; 2 uses
  %i.ahd = extractelement <2 x double> %i.ahc, i64 0 ; 3 uses
  %i.ahe = extractelement <2 x double> %i.ahc, i64 1 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24, i32 noundef %.0542.i, i32 noundef %.0542.i, double noundef %i.ahd, double noundef %i.ahe) #13
  %i.ahf = zext nneg i32 %.0542.i to i64          ; 3 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %bb.az
  %indvars.iv792.i = phi i64 [ 0, %bb.az ], [ %indvars.iv.next793.i, %bb.bc ] ; 3 uses
  %i.ahg = trunc nuw nsw i64 %indvars.iv792.i to i32
  %i.ahh = uitofp nneg i32 %i.ahg to double
  %i.ahi = fmul double %i.ahe, %i.ahh
  %i.ahj = fptoui double %i.ahi to i32
  %i.ahk = mul i32 %.4..4..4..4..4..i, %i.ahj     ; 2 uses
  %i.ahl = mul nuw nsw i64 %indvars.iv792.i, %i.ahf
  %invariant.gep829.i = getelementptr inbounds nuw [4 x i8], ptr %i.agu, i64 %i.ahl ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %indvars.iv787.i.a = phi i64 [ 0, %bb.ba ], [ %indvars.iv.next788.i.1, %bb.bb ] ; 4 uses
  %i.ahm = trunc nuw nsw i64 %indvars.iv787.i.a to i32
  %i.ahn = uitofp nneg i32 %i.ahm to double
  %i.aho = call double @llvm.fmuladd.f64(double %i.ahn, double %i.ahd, double 5.000000e-01)
  %i.ahp = fptoui double %i.aho to i32
  %i.ahq = add i32 %i.ahk, %i.ahp
  %i.ahr = zext i32 %i.ahq to i64
  %i.ahs = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ahr
  %i.aht = load i32, ptr %i.ahs, align 4, !tbaa !57
  %gep830.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep829.i, i64 %indvars.iv787.i.a
  store i32 %i.aht, ptr %gep830.i, align 4, !tbaa !57
  %indvars.iv.next788.i.a = or disjoint i64 %indvars.iv787.i.a, 1 ; 2 uses
  %i.ahu = trunc nuw nsw i64 %indvars.iv.next788.i.a to i32
  %i.ahv = uitofp nneg i32 %i.ahu to double
  %i.ahw = call double @llvm.fmuladd.f64(double %i.ahv, double %i.ahd, double 5.000000e-01)
  %i.ahx = fptoui double %i.ahw to i32
  %i.ahy = add i32 %i.ahk, %i.ahx
  %i.ahz = zext i32 %i.ahy to i64
  %i.aia = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ahz
  %i.aib = load i32, ptr %i.aia, align 4, !tbaa !57
  %gep830.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep829.i, i64 %indvars.iv.next788.i.a
  store i32 %i.aib, ptr %gep830.i.1, align 4, !tbaa !57
  %indvars.iv.next788.i.1 = add nuw nsw i64 %indvars.iv787.i.a, 2 ; 2 uses
  %exitcond791.not.i.1 = icmp eq i64 %indvars.iv.next788.i.1, %i.ahf
  br i1 %exitcond791.not.i.1, label %bb.bc, label %bb.bb

bb.bc:                                            ; preds = %bb.bb
  %indvars.iv.next793.i = add nuw nsw i64 %indvars.iv792.i, 1 ; 2 uses
  %exitcond796.not.i = icmp eq i64 %indvars.iv.next793.i, %i.ahf
  br i1 %exitcond796.not.i, label %bb.bd, label %bb.ba

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.do) #13
  br label %.loopexit649.i

.loopexit649.i:                                   ; preds = %._crit_edge703.i, %bb.bd, %.preheader648.i, %._crit_edge700.split.i
  %.2536.i = phi i32 [ %i.bd, %._crit_edge700.split.i ], [ %.0542.i, %bb.bd ], [ %i.bd, %.preheader648.i ], [ %i.afy, %._crit_edge703.i ]
  %.2531.i = phi i32 [ %.4..4..4..4..4..i, %._crit_edge700.split.i ], [ %.0542.i, %bb.bd ], [ %.4..4..4..4..4..i, %.preheader648.i ], [ %i.afx, %._crit_edge703.i ] ; 11 uses
  %.1525.i = phi ptr [ %i.do, %._crit_edge700.split.i ], [ %i.agu, %bb.bd ], [ %i.do, %.preheader648.i ], [ %i.do, %._crit_edge703.i ] ; 3 uses
  call fastcc void @makebmp(ptr noundef nonnull @.str.25, ptr noundef %i.s, i32 noundef %.2531.i, i32 noundef %.2536.i, ptr noundef %.1525.i)
  call fastcc void @getmetrics(i32 noundef %.2531.i, ptr noundef %.1525.i, ptr noundef %6, ptr noundef %i.s)
  call void @free(ptr noundef %.1525.i) #13
  %i.aic = lshr i32 %.2531.i, 3                   ; 2 uses
  %i.aid = add nsw i32 %i.aic, -2
  %i.aie = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.aif = zext nneg i32 %i.aid to i64            ; 2 uses
  %i.aig = getelementptr inbounds nuw [4 x i8], ptr %i.aie, i64 %i.aif
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !57 ; 2 uses
  %.not726.i = icmp eq i32 %i.aih, 0
  br i1 %.not726.i, label %parseicon.exit, label %.lr.ph712.i

.lr.ph712.i:                                      ; preds = %.loopexit649.i
end_hunk_1
