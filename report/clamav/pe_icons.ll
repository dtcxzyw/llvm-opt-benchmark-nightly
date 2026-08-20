inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 26
begin_hunk_0_@cli_groupiconscan:bb.a

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
  %i.ce = add nsw i32 %.06792, -1                 ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.06990, i64 14
  %i.cg = add i32 %.06891, -14                    ; 3 uses
  %i.ch = icmp ne i32 %i.ce, 0                    ; 2 uses
  %i.ci = icmp ugt i32 %i.cg, 13
  %i.cj = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %i.cj, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %bb.d
  %.068.lcssa = phi i32 [ %i.ao, %bb.d ], [ %i.cg, %bb.j ] ; 2 uses
  %.067.lcssa = phi i32 [ %i.an, %bb.d ], [ %i.ce, %bb.j ]
  %.lcssa = phi i1 [ %i.ap, %bb.d ], [ %i.ch, %bb.j ]
  br i1 %.lcssa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.12, i32 noundef %.067.lcssa) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %.not = icmp eq i32 %.068.lcssa, 0
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.13, i32 noundef %.068.lcssa) #13
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
  %.0560.i = phi i32 [ 2, %bb.u ], [ %spec.select.i, %bb.w ], [ 0, %bb.v ]
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
  %.0559.i = phi i32 [ %i.ch, %bb.aa ], [ %i.bc, %bb.x ], [ %i.bc, %bb.x ], [ %i.bc, %bb.x ] ; 2 uses
  %.0528.i = phi ptr [ %i.cf, %bb.aa ], [ null, %bb.x ], [ null, %bb.x ], [ null, %bb.x ] ; 7 uses
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
  %i.cv = zext i32 %.0559.i to i64
  %i.cw = add nuw nsw i32 %i.cn, %i.cu
  %i.cx = mul nuw nsw i32 %i.cw, %i.bd
  %i.cy = zext nneg i32 %i.cx to i64
  %i.cz = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.da = call ptr %i.cz(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.cv, i64 noundef range(i64 0, 4294967296) %i.cy, i32 noundef 0) #13, !inline_history !87 ; 70 uses
  %.not600.i = icmp eq ptr %i.da, null
  br i1 %.not600.i, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %.not601.i = icmp eq ptr %.0528.i, null
  br i1 %.not601.i, label %parseicon.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.db = shl nuw i32 1, %i.be
  %i.dc = sext i32 %i.db to i64
  %i.dd = shl nsw i64 %i.dc, 2
  %i.de = getelementptr i8, ptr %i.l, i64 16
  %.val.i.i = load ptr, ptr %i.de, align 8, !tbaa !90
  %i.df = getelementptr i8, ptr %i.l, i64 72
  %.val3.i.i = load i64, ptr %i.df, align 8, !tbaa !91
  %i.dg = ptrtoint ptr %.0528.i to i64
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
  %narrow = add nuw nsw i32 %i.du, %i.cm
  %i.dv = zext nneg i32 %narrow to i64
  %i.dw = shl nuw nsw i64 %i.dr, 2
  %scevgep53 = getelementptr i8, ptr %i.do, i64 %i.dw
  %i.dx = lshr i32 %i.ci, 3
  %i.dy = and i32 %i.dx, 536870908
  %narrow132 = add nuw nsw i32 %i.dy, %i.cm
  %i.dz = shl nuw nsw i64 %i.dr, 1
  %scevgep56 = getelementptr i8, ptr %i.da, i64 %i.dz
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
  %scevgep68 = getelementptr i8, ptr %i.da, i64 %i.eh
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
  %scevgep93 = getelementptr i8, ptr %i.da, i64 %i.em
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
  %.not603.i = icmp eq ptr %.0528.i, null
  br i1 %.not603.i, label %parseicon.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fe = shl nuw i32 1, %i.be
  %i.ff = sext i32 %i.fe to i64
  %i.fg = shl nsw i64 %i.ff, 2
  %i.fh = getelementptr i8, ptr %i.l, i64 16
  %.val.i621.i = load ptr, ptr %i.fh, align 8, !tbaa !90
  %i.fi = getelementptr i8, ptr %i.l, i64 72
  %.val3.i622.i = load i64, ptr %i.fi, align 8, !tbaa !91
  %i.fj = ptrtoint ptr %.0528.i to i64
  %i.fk = ptrtoint ptr %.val.i621.i to i64
  %i.fl = add i64 %.val3.i622.i, %i.fk
  %i.fm = sub i64 %i.fj, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !92
  call void %i.fo(ptr noundef nonnull %i.l, i64 noundef %i.fm, i64 noundef range(i64 -8589934592, 8589934589) %i.fg) #13, !inline_history !93
  br label %parseicon.exit

bb.ah:                                            ; preds = %.loopexit655.i, %.lr.ph680.i
  %indvars.iv747.i = phi i64 [ 0, %.lr.ph680.i ], [ %indvars.iv.next748.i, %.loopexit655.i ] ; 18 uses
  %.0555679.i = phi i32 [ 0, %.lr.ph680.i ], [ %.2557.i, %.loopexit655.i ] ; 10 uses
  %7 = trunc i64 %indvars.iv747.i to i32
  %8 = xor i32 %7, -1
  %9 = add i32 %i.bd, %8
  %10 = mul i32 %.4..4..4..4..4..i, %9
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 2                    ; 2 uses
  %scevgep89 = getelementptr i8, ptr %i.do, i64 %12
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %12
  %i.fp = trunc i64 %indvars.iv747.i to i32
  %i.fq = mul i32 %narrow136, %i.fp
  %i.fr = zext i32 %i.fq to i64                   ; 2 uses
  %scevgep92 = getelementptr i8, ptr %i.da, i64 %i.fr
  %scevgep94 = getelementptr i8, ptr %scevgep93, i64 %i.fr
  %13 = trunc i64 %indvars.iv747.i to i32
  %14 = xor i32 %13, -1
  %15 = add i32 %i.bd, %14
  %16 = mul i32 %.4..4..4..4..4..i, %15
  %i.fs = mul i64 %indvars.iv747.i, %i.el         ; 4 uses
  %17 = trunc i64 %i.fs to i32
  %i.ft = trunc i64 %i.fs to i32
  %i.fu = trunc i64 %i.fs to i32
  %i.fv = trunc i64 %i.fs to i32
  %i.fw = trunc i64 %indvars.iv747.i to i32
  %18 = xor i32 %i.fw, -1
  %19 = add i32 %i.bd, %18
  %20 = mul i32 %.4..4..4..4..4..i, %19
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 2                    ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.do, i64 %22
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %22
  %i.fx = trunc i64 %indvars.iv747.i to i32
  %i.fy = mul i32 %narrow134, %i.fx
  %i.fz = zext i32 %i.fy to i64                   ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.da, i64 %i.fz
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.fz
  %23 = trunc i64 %indvars.iv747.i to i32
  %24 = xor i32 %23, -1
  %25 = add i32 %i.bd, %24
  %26 = mul i32 %.4..4..4..4..4..i, %25
  %i.ga = mul i64 %indvars.iv747.i, %i.ed         ; 3 uses
  %27 = trunc i64 %i.ga to i32
  %i.gb = trunc i64 %i.ga to i32
  %i.gc = trunc i64 %i.ga to i32
  %i.gd = trunc i64 %indvars.iv747.i to i32
  %28 = xor i32 %i.gd, -1
  %29 = add i32 %i.bd, %28
  %30 = mul i32 %.4..4..4..4..4..i, %29
  %31 = zext i32 %30 to i64
  %32 = shl nuw nsw i64 %31, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.do, i64 %32
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %32
  %i.ge = trunc i64 %indvars.iv747.i to i32
  %i.gf = mul i32 %narrow132, %i.ge
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  %scevgep55 = getelementptr i8, ptr %i.da, i64 %i.gg
  %scevgep57 = getelementptr i8, ptr %scevgep56, i64 %i.gg
  %33 = trunc i64 %indvars.iv747.i to i32
  %34 = xor i32 %33, -1
  %35 = add i32 %i.bd, %34
  %36 = mul i32 %.4..4..4..4..4..i, %35
  %i.gh = mul i64 %indvars.iv747.i, %i.dv         ; 2 uses
  %i.gi = trunc i64 %i.gh to i32
  %i.gj = trunc i64 %i.gh to i32
  %i.gk = trunc nuw nsw i64 %indvars.iv747.i to i32
  %i.gl = mul i32 %i.cn, %i.gk                    ; 16 uses
  switch i16 %.14..14..14..14..14..i, label %.loopexit655.i [
    i16 1, label %.lr.ph676.i
    i16 4, label %.lr.ph676.i
    i16 8, label %.lr.ph676.i
    i16 16, label %.lr.ph671.i
    i16 24, label %.lr.ph668.i
    i16 32, label %.lr.ph.i
  ]

.lr.ph.i:                                         ; preds = %bb.ah
  %i.gm = xor i64 %indvars.iv747.i, -1
  %i.gn = add nsw i64 %i.gm, %i.dq
  %i.go = mul i64 %i.gn, %i.dr                    ; 2 uses
  br i1 %min.iters.check99, label %scalar.ph98.preheader, label %vector.scevcheck84

vector.scevcheck84:                               ; preds = %.lr.ph.i
  %i.gp = xor i32 %16, -1
  %i.gq = icmp ult i32 %i.gp, %i.ep
  %i.gr = xor i32 %17, -4
  %i.gs = icmp ult i32 %i.gr, %mul.result86
  %i.gt = xor i32 %i.ft, -1
  %i.gu = icmp ugt i32 %mul.result86, %i.gt
  %i.gv = or i1 %i.gu, %mul.overflow87
  %i.gw = xor i32 %i.fu, -2
  %i.gx = icmp ult i32 %i.gw, %mul.result86
  %i.gy = xor i32 %i.fv, -3
  %i.gz = icmp ult i32 %i.gy, %mul.result86
  %i.ha = or i1 %i.gs, %i.gq
  %i.hb = or i1 %i.ha, %i.gv
  %i.hc = or i1 %i.gx, %i.hb
  %i.hd = or i1 %i.gz, %i.hc
  br i1 %i.hd, label %scalar.ph98.preheader, label %vector.memcheck88

vector.memcheck88:                                ; preds = %vector.scevcheck84
  %bound095 = icmp ult ptr %scevgep89, %scevgep94
  %bound196 = icmp ult ptr %scevgep92, %scevgep91
  %found.conflict97 = and i1 %bound095, %bound196
  br i1 %found.conflict97, label %scalar.ph98.preheader, label %vector.ph100

vector.ph100:                                     ; preds = %vector.memcheck88
  %i.he = add i32 %i.gl, %i.es
  %i.hf = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0555679.i, i64 0
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next105, %vector.body102 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.hf, %vector.ph100 ], [ %i.ok, %vector.body102 ]
  %vec.phi104 = phi <4 x i32> [ zeroinitializer, %vector.ph100 ], [ %i.ol, %vector.body102 ]
  %i.hg = trunc i64 %index103 to i32
  %i.hh = shl i32 %i.hg, 2
  %i.hi = add i32 %i.gl, %i.hh                    ; 11 uses
  %i.hj = add i32 %i.hi, 4                        ; 4 uses
  %i.hk = add i32 %i.hi, 8                        ; 4 uses
  %i.hl = add i32 %i.hi, 12                       ; 4 uses
  %i.hm = add i32 %i.hi, 16                       ; 4 uses
  %i.hn = add i32 %i.hi, 20                       ; 4 uses
  %i.ho = add i32 %i.hi, 24                       ; 4 uses
  %i.hp = add i32 %i.hi, 28                       ; 4 uses
  %i.hq = or disjoint i32 %i.hi, 3
  %i.hr = or disjoint i32 %i.hj, 3
  %i.hs = or disjoint i32 %i.hk, 3
  %i.ht = or disjoint i32 %i.hl, 3
  %i.hu = or disjoint i32 %i.hm, 3
  %i.hv = or disjoint i32 %i.hn, 3
  %i.hw = or disjoint i32 %i.ho, 3
  %i.hx = or disjoint i32 %i.hp, 3
  %i.hy = zext i32 %i.hq to i64
  %i.hz = zext i32 %i.hr to i64
  %i.ia = zext i32 %i.hs to i64
  %i.ib = zext i32 %i.ht to i64
  %i.ic = zext i32 %i.hu to i64
  %i.id = zext i32 %i.hv to i64
  %i.ie = zext i32 %i.hw to i64
  %i.if = zext i32 %i.hx to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.hy
  %i.ih = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.hz
  %i.ii = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ia
  %i.ij = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ib
  %i.ik = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ic
  %i.il = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.id
  %i.im = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ie
  %i.in = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.if
  %i.io = load i8, ptr %i.ig, align 1, !tbaa !77, !alias.scope !94
  %i.ip = load i8, ptr %i.ih, align 1, !tbaa !77, !alias.scope !94
  %i.iq = load i8, ptr %i.ii, align 1, !tbaa !77, !alias.scope !94
  %i.ir = load i8, ptr %i.ij, align 1, !tbaa !77, !alias.scope !94
  %i.is = insertelement <4 x i8> poison, i8 %i.io, i64 0
  %i.it = insertelement <4 x i8> %i.is, i8 %i.ip, i64 1
  %i.iu = insertelement <4 x i8> %i.it, i8 %i.iq, i64 2
  %i.iv = insertelement <4 x i8> %i.iu, i8 %i.ir, i64 3
  %i.iw = load i8, ptr %i.ik, align 1, !tbaa !77, !alias.scope !94
  %i.ix = load i8, ptr %i.il, align 1, !tbaa !77, !alias.scope !94
  %i.iy = load i8, ptr %i.im, align 1, !tbaa !77, !alias.scope !94
  %i.iz = load i8, ptr %i.in, align 1, !tbaa !77, !alias.scope !94
  %i.ja = insertelement <4 x i8> poison, i8 %i.iw, i64 0
  %i.jb = insertelement <4 x i8> %i.ja, i8 %i.ix, i64 1
  %i.jc = insertelement <4 x i8> %i.jb, i8 %i.iy, i64 2
  %i.jd = insertelement <4 x i8> %i.jc, i8 %i.iz, i64 3
  %i.je = zext <4 x i8> %i.iv to <4 x i32>
  %i.jf = zext <4 x i8> %i.jd to <4 x i32>
  %i.jg = shl nuw <4 x i32> %i.je, splat (i32 24) ; 2 uses
  %i.jh = shl nuw <4 x i32> %i.jf, splat (i32 24) ; 2 uses
  %i.ji = zext i32 %i.hi to i64
  %i.jj = zext i32 %i.hj to i64
  %i.jk = zext i32 %i.hk to i64
  %i.jl = zext i32 %i.hl to i64
  %i.jm = zext i32 %i.hm to i64
  %i.jn = zext i32 %i.hn to i64
  %i.jo = zext i32 %i.ho to i64
  %i.jp = zext i32 %i.hp to i64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ji
  %i.jr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jj
  %i.js = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jk
  %i.jt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jl
  %i.ju = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jm
  %i.jv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jn
  %i.jw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jo
  %i.jx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jp
  %i.jy = load i8, ptr %i.jq, align 1, !tbaa !77, !alias.scope !94
  %i.jz = load i8, ptr %i.jr, align 1, !tbaa !77, !alias.scope !94
  %i.ka = load i8, ptr %i.js, align 1, !tbaa !77, !alias.scope !94
  %i.kb = load i8, ptr %i.jt, align 1, !tbaa !77, !alias.scope !94
  %i.kc = insertelement <4 x i8> poison, i8 %i.jy, i64 0
  %i.kd = insertelement <4 x i8> %i.kc, i8 %i.jz, i64 1
  %i.ke = insertelement <4 x i8> %i.kd, i8 %i.ka, i64 2
  %i.kf = insertelement <4 x i8> %i.ke, i8 %i.kb, i64 3
  %i.kg = load i8, ptr %i.ju, align 1, !tbaa !77, !alias.scope !94
  %i.kh = load i8, ptr %i.jv, align 1, !tbaa !77, !alias.scope !94
  %i.ki = load i8, ptr %i.jw, align 1, !tbaa !77, !alias.scope !94
  %i.kj = load i8, ptr %i.jx, align 1, !tbaa !77, !alias.scope !94
  %i.kk = insertelement <4 x i8> poison, i8 %i.kg, i64 0
  %i.kl = insertelement <4 x i8> %i.kk, i8 %i.kh, i64 1
  %i.km = insertelement <4 x i8> %i.kl, i8 %i.ki, i64 2
  %i.kn = insertelement <4 x i8> %i.km, i8 %i.kj, i64 3
  %i.ko = zext <4 x i8> %i.kf to <4 x i32>
  %i.kp = zext <4 x i8> %i.kn to <4 x i32>
  %i.kq = or disjoint i32 %i.hi, 1
  %i.kr = or disjoint i32 %i.hj, 1
  %i.ks = or disjoint i32 %i.hk, 1
  %i.kt = or disjoint i32 %i.hl, 1
  %i.ku = or disjoint i32 %i.hm, 1
  %i.kv = or disjoint i32 %i.hn, 1
  %i.kw = or disjoint i32 %i.ho, 1
  %i.kx = or disjoint i32 %i.hp, 1
  %i.ky = zext i32 %i.kq to i64
  %i.kz = zext i32 %i.kr to i64
  %i.la = zext i32 %i.ks to i64
  %i.lb = zext i32 %i.kt to i64
  %i.lc = zext i32 %i.ku to i64
  %i.ld = zext i32 %i.kv to i64
  %i.le = zext i32 %i.kw to i64
  %i.lf = zext i32 %i.kx to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ky
  %i.lh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kz
  %i.li = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.la
  %i.lj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lb
  %i.lk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lc
  %i.ll = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ld
  %i.lm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.le
  %i.ln = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lf
  %i.lo = load i8, ptr %i.lg, align 1, !tbaa !77, !alias.scope !94
  %i.lp = load i8, ptr %i.lh, align 1, !tbaa !77, !alias.scope !94
  %i.lq = load i8, ptr %i.li, align 1, !tbaa !77, !alias.scope !94
  %i.lr = load i8, ptr %i.lj, align 1, !tbaa !77, !alias.scope !94
  %i.ls = insertelement <4 x i8> poison, i8 %i.lo, i64 0
  %i.lt = insertelement <4 x i8> %i.ls, i8 %i.lp, i64 1
  %i.lu = insertelement <4 x i8> %i.lt, i8 %i.lq, i64 2
  %i.lv = insertelement <4 x i8> %i.lu, i8 %i.lr, i64 3
  %i.lw = load i8, ptr %i.lk, align 1, !tbaa !77, !alias.scope !94
  %i.lx = load i8, ptr %i.ll, align 1, !tbaa !77, !alias.scope !94
  %i.ly = load i8, ptr %i.lm, align 1, !tbaa !77, !alias.scope !94
  %i.lz = load i8, ptr %i.ln, align 1, !tbaa !77, !alias.scope !94
  %i.ma = insertelement <4 x i8> poison, i8 %i.lw, i64 0
  %i.mb = insertelement <4 x i8> %i.ma, i8 %i.lx, i64 1
  %i.mc = insertelement <4 x i8> %i.mb, i8 %i.ly, i64 2
  %i.md = insertelement <4 x i8> %i.mc, i8 %i.lz, i64 3
  %i.me = zext <4 x i8> %i.lv to <4 x i32>
  %i.mf = zext <4 x i8> %i.md to <4 x i32>
  %i.mg = shl nuw nsw <4 x i32> %i.me, splat (i32 8)
  %i.mh = shl nuw nsw <4 x i32> %i.mf, splat (i32 8)
  %i.mi = or disjoint i32 %i.hi, 2
  %i.mj = or disjoint i32 %i.hj, 2
  %i.mk = or disjoint i32 %i.hk, 2
  %i.ml = or disjoint i32 %i.hl, 2
  %i.mm = or disjoint i32 %i.hm, 2
  %i.mn = or disjoint i32 %i.hn, 2
  %i.mo = or disjoint i32 %i.ho, 2
  %i.mp = or disjoint i32 %i.hp, 2
  %i.mq = zext i32 %i.mi to i64
  %i.mr = zext i32 %i.mj to i64
  %i.ms = zext i32 %i.mk to i64
  %i.mt = zext i32 %i.ml to i64
  %i.mu = zext i32 %i.mm to i64
  %i.mv = zext i32 %i.mn to i64
  %i.mw = zext i32 %i.mo to i64
  %i.mx = zext i32 %i.mp to i64
  %i.my = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mq
  %i.mz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mr
  %i.na = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ms
  %i.nb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mt
  %i.nc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mu
  %i.nd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mv
  %i.ne = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mw
  %i.nf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mx
  %i.ng = load i8, ptr %i.my, align 1, !tbaa !77, !alias.scope !94
  %i.nh = load i8, ptr %i.mz, align 1, !tbaa !77, !alias.scope !94
  %i.ni = load i8, ptr %i.na, align 1, !tbaa !77, !alias.scope !94
  %i.nj = load i8, ptr %i.nb, align 1, !tbaa !77, !alias.scope !94
  %i.nk = insertelement <4 x i8> poison, i8 %i.ng, i64 0
  %i.nl = insertelement <4 x i8> %i.nk, i8 %i.nh, i64 1
  %i.nm = insertelement <4 x i8> %i.nl, i8 %i.ni, i64 2
  %i.nn = insertelement <4 x i8> %i.nm, i8 %i.nj, i64 3
  %i.no = load i8, ptr %i.nc, align 1, !tbaa !77, !alias.scope !94
  %i.np = load i8, ptr %i.nd, align 1, !tbaa !77, !alias.scope !94
  %i.nq = load i8, ptr %i.ne, align 1, !tbaa !77, !alias.scope !94
  %i.nr = load i8, ptr %i.nf, align 1, !tbaa !77, !alias.scope !94
  %i.ns = insertelement <4 x i8> poison, i8 %i.no, i64 0
  %i.nt = insertelement <4 x i8> %i.ns, i8 %i.np, i64 1
  %i.nu = insertelement <4 x i8> %i.nt, i8 %i.nq, i64 2
  %i.nv = insertelement <4 x i8> %i.nu, i8 %i.nr, i64 3
  %i.nw = zext <4 x i8> %i.nn to <4 x i32>
  %i.nx = zext <4 x i8> %i.nv to <4 x i32>
  %i.ny = shl nuw nsw <4 x i32> %i.nw, splat (i32 16)
  %i.nz = shl nuw nsw <4 x i32> %i.nx, splat (i32 16)
  %i.oa = or disjoint <4 x i32> %i.mg, %i.ko
  %i.ob = or disjoint <4 x i32> %i.mh, %i.kp
  %i.oc = or disjoint <4 x i32> %i.oa, %i.ny
  %i.od = or disjoint <4 x i32> %i.ob, %i.nz
  %i.oe = or disjoint <4 x i32> %i.oc, %i.jg
  %i.of = or disjoint <4 x i32> %i.od, %i.jh
  %i.og = add i64 %index103, %i.go
  %i.oh = and i64 %i.og, 4294967295
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.oh ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  store <4 x i32> %i.oe, ptr %i.oi, align 4, !tbaa !57, !alias.scope !97, !noalias !94
  store <4 x i32> %i.of, ptr %i.oj, align 4, !tbaa !57, !alias.scope !97, !noalias !94
  %i.ok = or <4 x i32> %i.jg, %vec.phi            ; 2 uses
  %i.ol = or <4 x i32> %i.jh, %vec.phi104         ; 2 uses
  %index.next105 = add nuw i64 %index103, 8       ; 2 uses
  %i.om = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.om, label %middle.block106, label %vector.body102, !llvm.loop !99

middle.block106:                                  ; preds = %vector.body102
  %bin.rdx = or <4 x i32> %i.ol, %i.ok
  %i.on = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n107, label %.loopexit655.i, label %scalar.ph98.preheader

scalar.ph98.preheader:                            ; preds = %vector.memcheck88, %vector.scevcheck84, %.lr.ph.i, %middle.block106
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck88 ], [ 0, %vector.scevcheck84 ], [ 0, %.lr.ph.i ], [ %n.vec101, %middle.block106 ]
  %.4552665.i.ph = phi i32 [ %i.gl, %vector.memcheck88 ], [ %i.gl, %vector.scevcheck84 ], [ %i.gl, %.lr.ph.i ], [ %i.he, %middle.block106 ]
  %.1556664.i.ph = phi i32 [ %.0555679.i, %vector.memcheck88 ], [ %.0555679.i, %vector.scevcheck84 ], [ %.0555679.i, %.lr.ph.i ], [ %i.on, %middle.block106 ]
  br label %scalar.ph98

.lr.ph668.i:                                      ; preds = %bb.ah
  %i.oo = xor i64 %indvars.iv747.i, -1
  %i.op = add nsw i64 %i.oo, %i.dq
  %i.oq = mul i64 %i.op, %i.dr                    ; 2 uses
  br i1 %min.iters.check74, label %scalar.ph73.preheader, label %vector.scevcheck59

vector.scevcheck59:                               ; preds = %.lr.ph668.i
  %i.or = xor i32 %26, -1
  %i.os = icmp ult i32 %i.or, %i.et
  %i.ot = xor i32 %27, -1
  %i.ou = icmp ugt i32 %mul.result61, %i.ot
  %i.ov = or i1 %i.ou, %i.ev
  %i.ow = xor i32 %i.gb, -2
  %i.ox = icmp ult i32 %i.ow, %mul.result61
  %.reass = or i1 %i.ox, %invariant.op
  %i.oy = xor i32 %i.gc, -3
  %i.oz = icmp ult i32 %i.oy, %mul.result61
  %i.pa = or i1 %i.ov, %i.os
  %i.pb = or i1 %i.pa, %.reass
  %i.pc = or i1 %i.oz, %i.pb
  br i1 %i.pc, label %scalar.ph73.preheader, label %vector.memcheck63

vector.memcheck63:                                ; preds = %vector.scevcheck59
  %bound070 = icmp ult ptr %scevgep64, %scevgep69
  %bound171 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict72 = and i1 %bound070, %bound171
  br i1 %found.conflict72, label %scalar.ph73.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck63
  %i.pd = add i32 %i.gl, %i.ey
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next79, %vector.body77 ] ; 3 uses
  %i.pe = trunc i64 %index78 to i32
  %i.pf = mul i32 %i.pe, 3
  %i.pg = add i32 %i.gl, %i.pf                    ; 12 uses
  %i.ph = or disjoint i32 %i.pg, 3
  %i.pi = add i32 %i.pg, 6
  %i.pj = add i32 %i.pg, 9
  %i.pk = zext i32 %i.pg to i64
  %i.pl = zext i32 %i.ph to i64
  %i.pm = zext i32 %i.pi to i64
  %i.pn = zext i32 %i.pj to i64
  %i.po = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pk
  %i.pp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pl
  %i.pq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pm
  %i.pr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pn
  %i.ps = load i8, ptr %i.po, align 1, !tbaa !77, !alias.scope !102
  %i.pt = load i8, ptr %i.pp, align 1, !tbaa !77, !alias.scope !102
  %i.pu = load i8, ptr %i.pq, align 1, !tbaa !77, !alias.scope !102
  %i.pv = load i8, ptr %i.pr, align 1, !tbaa !77, !alias.scope !102
  %i.pw = insertelement <4 x i8> poison, i8 %i.ps, i64 0
  %i.px = insertelement <4 x i8> %i.pw, i8 %i.pt, i64 1
  %i.py = insertelement <4 x i8> %i.px, i8 %i.pu, i64 2
  %i.pz = insertelement <4 x i8> %i.py, i8 %i.pv, i64 3
  %i.qa = zext <4 x i8> %i.pz to <4 x i32>
  %i.qb = or disjoint i32 %i.pg, 1
  %i.qc = add i32 %i.pg, 4
  %i.qd = add i32 %i.pg, 7
  %i.qe = add i32 %i.pg, 10
  %i.qf = zext i32 %i.qb to i64
  %i.qg = zext i32 %i.qc to i64
  %i.qh = zext i32 %i.qd to i64
  %i.qi = zext i32 %i.qe to i64
  %i.qj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qf
  %i.qk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qg
  %i.ql = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qh
  %i.qm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qi
  %i.qn = load i8, ptr %i.qj, align 1, !tbaa !77, !alias.scope !102
  %i.qo = load i8, ptr %i.qk, align 1, !tbaa !77, !alias.scope !102
  %i.qp = load i8, ptr %i.ql, align 1, !tbaa !77, !alias.scope !102
  %i.qq = load i8, ptr %i.qm, align 1, !tbaa !77, !alias.scope !102
  %i.qr = insertelement <4 x i8> poison, i8 %i.qn, i64 0
  %i.qs = insertelement <4 x i8> %i.qr, i8 %i.qo, i64 1
  %i.qt = insertelement <4 x i8> %i.qs, i8 %i.qp, i64 2
  %i.qu = insertelement <4 x i8> %i.qt, i8 %i.qq, i64 3
  %i.qv = zext <4 x i8> %i.qu to <4 x i32>
  %i.qw = shl nuw nsw <4 x i32> %i.qv, splat (i32 8)
  %i.qx = or disjoint <4 x i32> %i.qw, %i.qa
  %i.qy = or disjoint i32 %i.pg, 2
  %i.qz = add i32 %i.pg, 5
  %i.ra = add i32 %i.pg, 8
  %i.rb = add i32 %i.pg, 11
  %i.rc = zext i32 %i.qy to i64
  %i.rd = zext i32 %i.qz to i64
  %i.re = zext i32 %i.ra to i64
  %i.rf = zext i32 %i.rb to i64
  %i.rg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rc
  %i.rh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rd
  %i.ri = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.re
  %i.rj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rf
  %i.rk = load i8, ptr %i.rg, align 1, !tbaa !77, !alias.scope !102
  %i.rl = load i8, ptr %i.rh, align 1, !tbaa !77, !alias.scope !102
  %i.rm = load i8, ptr %i.ri, align 1, !tbaa !77, !alias.scope !102
  %i.rn = load i8, ptr %i.rj, align 1, !tbaa !77, !alias.scope !102
  %i.ro = insertelement <4 x i8> poison, i8 %i.rk, i64 0
  %i.rp = insertelement <4 x i8> %i.ro, i8 %i.rl, i64 1
  %i.rq = insertelement <4 x i8> %i.rp, i8 %i.rm, i64 2
  %i.rr = insertelement <4 x i8> %i.rq, i8 %i.rn, i64 3
  %i.rs = zext <4 x i8> %i.rr to <4 x i32>
  %i.rt = shl nuw nsw <4 x i32> %i.rs, splat (i32 16)
  %i.ru = or disjoint <4 x i32> %i.qx, %i.rt
  %i.rv = add i64 %index78, %i.oq
  %i.rw = and i64 %i.rv, 4294967295
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.rw
  store <4 x i32> %i.ru, ptr %i.rx, align 4, !tbaa !57, !alias.scope !105, !noalias !102
  %index.next79 = add nuw i64 %index78, 4         ; 2 uses
  %i.ry = icmp eq i64 %index.next79, %n.vec76
  br i1 %i.ry, label %middle.block80, label %vector.body77, !llvm.loop !107

middle.block80:                                   ; preds = %vector.body77
  br i1 %cmp.n81, label %.loopexit655.i, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %vector.memcheck63, %vector.scevcheck59, %.lr.ph668.i, %middle.block80
  %indvars.iv733.i.ph = phi i64 [ 0, %vector.memcheck63 ], [ 0, %vector.scevcheck59 ], [ 0, %.lr.ph668.i ], [ %n.vec76, %middle.block80 ]
  %.3551667.i.ph = phi i32 [ %i.gl, %vector.memcheck63 ], [ %i.gl, %vector.scevcheck59 ], [ %i.gl, %.lr.ph668.i ], [ %i.pd, %middle.block80 ]
  br label %scalar.ph73

.lr.ph671.i:                                      ; preds = %bb.ah
  %i.rz = xor i64 %indvars.iv747.i, -1
  %i.sa = add nsw i64 %i.rz, %i.dq
  %i.sb = mul i64 %i.sa, %i.dr                    ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph671.i
  %i.sc = xor i32 %36, -1
  %i.sd = icmp ult i32 %i.sc, %i.ez
  %i.se = xor i32 %i.gi, -1
  %i.sf = icmp ugt i32 %mul.result, %i.se
  %i.sg = or i1 %i.sf, %i.fb
  %i.sh = xor i32 %i.gj, -2
  %i.si = icmp ult i32 %i.sh, %mul.result
  %i.sj = or i1 %i.sd, %i.sg
  %i.sk = or i1 %i.si, %i.sj
  br i1 %i.sk, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep57
  %bound1 = icmp ult ptr %scevgep55, %scevgep54
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.sl = add i32 %i.gl, %i.fd
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.sm = trunc i64 %index to i32
  %i.sn = shl i32 %i.sm, 1
  %i.so = add i32 %i.gl, %i.sn                    ; 6 uses
  %i.sp = or disjoint i32 %i.so, 2
  %i.sq = add i32 %i.so, 4                        ; 2 uses
  %i.sr = add i32 %i.so, 6                        ; 2 uses
  %i.ss = zext i32 %i.so to i64
  %i.st = zext i32 %i.sp to i64
  %i.su = zext i32 %i.sq to i64
  %i.sv = zext i32 %i.sr to i64
  %i.sw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ss
  %i.sx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.st
  %i.sy = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.su
  %i.sz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sv
  %i.ta = load i8, ptr %i.sw, align 1, !tbaa !77, !alias.scope !108
  %i.tb = load i8, ptr %i.sx, align 1, !tbaa !77, !alias.scope !108
  %i.tc = load i8, ptr %i.sy, align 1, !tbaa !77, !alias.scope !108
  %i.td = load i8, ptr %i.sz, align 1, !tbaa !77, !alias.scope !108
  %i.te = insertelement <4 x i8> poison, i8 %i.ta, i64 0
  %i.tf = insertelement <4 x i8> %i.te, i8 %i.tb, i64 1
  %i.tg = insertelement <4 x i8> %i.tf, i8 %i.tc, i64 2
  %i.th = insertelement <4 x i8> %i.tg, i8 %i.td, i64 3
  %i.ti = zext <4 x i8> %i.th to <4 x i32>        ; 2 uses
  %i.tj = and <4 x i32> %i.ti, splat (i32 31)     ; 2 uses
  %i.tk = lshr <4 x i32> %i.ti, splat (i32 5)
  %i.tl = or disjoint i32 %i.so, 1
  %i.tm = or disjoint i32 %i.so, 3
  %i.tn = or disjoint i32 %i.sq, 1
  %i.to = or disjoint i32 %i.sr, 1
  %i.tp = zext i32 %i.tl to i64
  %i.tq = zext i32 %i.tm to i64
  %i.tr = zext i32 %i.tn to i64
  %i.ts = zext i32 %i.to to i64
  %i.tt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tp
  %i.tu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tq
  %i.tv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tr
  %i.tw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ts
  %i.tx = load i8, ptr %i.tt, align 1, !tbaa !77, !alias.scope !108
  %i.ty = load i8, ptr %i.tu, align 1, !tbaa !77, !alias.scope !108
  %i.tz = load i8, ptr %i.tv, align 1, !tbaa !77, !alias.scope !108
  %i.ua = load i8, ptr %i.tw, align 1, !tbaa !77, !alias.scope !108
  %i.ub = insertelement <4 x i8> poison, i8 %i.tx, i64 0
  %i.uc = insertelement <4 x i8> %i.ub, i8 %i.ty, i64 1
  %i.ud = insertelement <4 x i8> %i.uc, i8 %i.tz, i64 2
  %i.ue = insertelement <4 x i8> %i.ud, i8 %i.ua, i64 3
  %i.uf = zext <4 x i8> %i.ue to <4 x i32>        ; 2 uses
  %i.ug = shl nuw nsw <4 x i32> %i.uf, splat (i32 3) ; 2 uses
  %i.uh = and <4 x i32> %i.ug, splat (i32 24)
  %i.ui = or disjoint <4 x i32> %i.uh, %i.tk      ; 2 uses
  %i.uj = shl nuw nsw <4 x i32> %i.tj, splat (i32 3)
  %i.uk = lshr <4 x i32> %i.tj, splat (i32 2)
  %i.ul = or disjoint <4 x i32> %i.uj, %i.uk
  %i.um = shl nuw nsw <4 x i32> %i.ui, splat (i32 14)
  %i.un = shl nuw nsw <4 x i32> %i.ui, splat (i32 9)
  %i.uo = and <4 x i32> %i.un, splat (i32 14336)
  %i.up = or disjoint <4 x i32> %i.uo, %i.um
  %i.uq = and <4 x i32> %i.ug, splat (i32 2016)
  %i.ur = lshr <4 x i32> %i.uf, splat (i32 2)
  %i.us = or <4 x i32> %i.uq, %i.ur
  %i.ut = shl nuw nsw <4 x i32> %i.us, splat (i32 17)
  %i.uu = or <4 x i32> %i.ut, %i.up
  %i.uv = or disjoint <4 x i32> %i.uu, %i.ul
  %i.uw = add i64 %index, %i.sb
  %i.ux = and i64 %i.uw, 4294967295
  %i.uy = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ux
  store <4 x i32> %i.uv, ptr %i.uy, align 4, !tbaa !57, !alias.scope !111, !noalias !108
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.uz = icmp eq i64 %index.next, %n.vec
  br i1 %i.uz, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit655.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph671.i, %middle.block
  %indvars.iv738.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph671.i ], [ %n.vec, %middle.block ]
  %.2550670.i.ph = phi i32 [ %i.gl, %vector.memcheck ], [ %i.gl, %vector.scevcheck ], [ %i.gl, %.lr.ph671.i ], [ %i.sl, %middle.block ]
  br label %scalar.ph

.lr.ph676.i:                                      ; preds = %bb.ah, %bb.ah, %bb.ah
  %i.va = xor i64 %indvars.iv747.i, -1
  %i.vb = add nsw i64 %i.va, %i.dq
  %i.vc = mul i64 %i.vb, %i.dr
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph676.i
  %indvars.iv743.i = phi i64 [ 0, %.lr.ph676.i ], [ %indvars.iv.next744.i, %bb.ak ] ; 2 uses
  %.0544675.i = phi i8 [ 0, %.lr.ph676.i ], [ %.1545.i, %bb.ak ]
  %.0546674.i = phi i32 [ 0, %.lr.ph676.i ], [ %i.vh, %bb.ak ] ; 2 uses
  %.0548673.i = phi i32 [ %i.gl, %.lr.ph676.i ], [ %.1549.i, %bb.ak ] ; 3 uses
  %.not620.i = icmp eq i32 %.0546674.i, 0
  br i1 %.not620.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.vd = add i32 %.0548673.i, 1
  %i.ve = zext i32 %.0548673.i to i64
  %i.vf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ve
  %i.vg = load i8, ptr %i.vf, align 1, !tbaa !77
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1549.i = phi i32 [ %.0548673.i, %bb.ai ], [ %i.vd, %bb.aj ]
  %.1547.i = phi i32 [ %.0546674.i, %bb.ai ], [ 8, %bb.aj ]
  %.1545.i = phi i8 [ %.0544675.i, %bb.ai ], [ %i.vg, %bb.aj ] ; 2 uses
  %i.vh = sub i32 %.1547.i, %i.be                 ; 2 uses
  %i.vi = zext i8 %.1545.i to i32
  %i.vj = lshr i32 %i.vi, %i.vh
  %i.vk = and i32 %i.vj, %i.dp
  %i.vl = zext nneg i32 %i.vk to i64
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %.0528.i, i64 %i.vl
  %i.vn = load i32, ptr %i.vm, align 1, !tbaa !77
  %i.vo = add i64 %indvars.iv743.i, %i.vc
  %i.vp = and i64 %i.vo, 4294967295
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.vp
  store i32 %i.vn, ptr %i.vq, align 4, !tbaa !57
  %indvars.iv.next744.i = add nuw nsw i64 %indvars.iv743.i, 1 ; 2 uses
  %exitcond746.not.i = icmp eq i64 %indvars.iv.next744.i, %i.dr
  br i1 %exitcond746.not.i, label %.loopexit655.i, label %bb.ai

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv738.i = phi i64 [ %indvars.iv.next739.i, %scalar.ph ], [ %indvars.iv738.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.2550670.i = phi i32 [ %i.wv, %scalar.ph ], [ %.2550670.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.vr = zext i32 %.2550670.i to i64
  %i.vs = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.vr
  %i.vt = load i8, ptr %i.vs, align 1, !tbaa !77
  %i.vu = zext i8 %i.vt to i32                    ; 2 uses
  %i.vv = and i32 %i.vu, 31                       ; 2 uses
  %i.vw = lshr i32 %i.vu, 5
  %i.vx = or disjoint i32 %.2550670.i, 1
  %i.vy = zext i32 %i.vx to i64
  %i.vz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.vy
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !77
  %i.wb = zext i8 %i.wa to i32                    ; 2 uses
  %i.wc = shl nuw nsw i32 %i.wb, 3                ; 2 uses
  %i.wd = and i32 %i.wc, 24
  %i.we = or disjoint i32 %i.wd, %i.vw            ; 2 uses
  %i.wf = shl nuw nsw i32 %i.vv, 3
  %i.wg = lshr i32 %i.vv, 2
  %i.wh = or disjoint i32 %i.wf, %i.wg
  %i.wi = shl nuw nsw i32 %i.we, 14
  %i.wj = shl nuw nsw i32 %i.we, 9
  %i.wk = and i32 %i.wj, 14336
  %i.wl = or disjoint i32 %i.wk, %i.wi
  %i.wm = and i32 %i.wc, 2016
  %i.wn = lshr i32 %i.wb, 2
  %i.wo = or i32 %i.wm, %i.wn
  %i.wp = shl nuw nsw i32 %i.wo, 17
  %i.wq = or i32 %i.wp, %i.wl
  %i.wr = or disjoint i32 %i.wq, %i.wh
  %i.ws = add i64 %indvars.iv738.i, %i.sb
  %i.wt = and i64 %i.ws, 4294967295
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.wt
  store i32 %i.wr, ptr %i.wu, align 4, !tbaa !57
  %i.wv = add i32 %.2550670.i, 2
  %indvars.iv.next739.i = add nuw nsw i64 %indvars.iv738.i, 1 ; 2 uses
  %exitcond742.not.i = icmp eq i64 %indvars.iv.next739.i, %i.dr
  br i1 %exitcond742.not.i, label %.loopexit655.i, label %scalar.ph, !llvm.loop !114

scalar.ph73:                                      ; preds = %scalar.ph73.preheader, %scalar.ph73
  %indvars.iv733.i = phi i64 [ %indvars.iv.next734.i, %scalar.ph73 ], [ %indvars.iv733.i.ph, %scalar.ph73.preheader ] ; 2 uses
  %.3551667.i = phi i32 [ %i.xr, %scalar.ph73 ], [ %.3551667.i.ph, %scalar.ph73.preheader ] ; 4 uses
  %i.ww = zext i32 %.3551667.i to i64
  %i.wx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ww
  %i.wy = load i8, ptr %i.wx, align 1, !tbaa !77
  %i.wz = zext i8 %i.wy to i32
  %i.xa = add i32 %.3551667.i, 1
  %i.xb = zext i32 %i.xa to i64
  %i.xc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xb
  %i.xd = load i8, ptr %i.xc, align 1, !tbaa !77
  %i.xe = zext i8 %i.xd to i32
  %i.xf = shl nuw nsw i32 %i.xe, 8
  %i.xg = or disjoint i32 %i.xf, %i.wz
  %i.xh = add i32 %.3551667.i, 2
  %i.xi = zext i32 %i.xh to i64
  %i.xj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xi
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !77
  %i.xl = zext i8 %i.xk to i32
  %i.xm = shl nuw nsw i32 %i.xl, 16
  %i.xn = or disjoint i32 %i.xg, %i.xm
  %i.xo = add i64 %indvars.iv733.i, %i.oq
  %i.xp = and i64 %i.xo, 4294967295
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.xp
  store i32 %i.xn, ptr %i.xq, align 4, !tbaa !57
  %i.xr = add i32 %.3551667.i, 3
  %indvars.iv.next734.i = add nuw nsw i64 %indvars.iv733.i, 1 ; 2 uses
  %exitcond737.not.i = icmp eq i64 %indvars.iv.next734.i, %i.dr
  br i1 %exitcond737.not.i, label %.loopexit655.i, label %scalar.ph73, !llvm.loop !115

scalar.ph98:                                      ; preds = %scalar.ph98.preheader, %scalar.ph98
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph98 ], [ %indvars.iv.i.ph, %scalar.ph98.preheader ] ; 2 uses
  %.4552665.i = phi i32 [ %i.yv, %scalar.ph98 ], [ %.4552665.i.ph, %scalar.ph98.preheader ] ; 5 uses
  %.1556664.i = phi i32 [ %i.yu, %scalar.ph98 ], [ %.1556664.i.ph, %scalar.ph98.preheader ]
  %i.xs = or disjoint i32 %.4552665.i, 3
  %i.xt = zext i32 %i.xs to i64
  %i.xu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xt
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !77
  %i.xw = zext i8 %i.xv to i32
  %i.xx = shl nuw i32 %i.xw, 24                   ; 2 uses
  %i.xy = zext i32 %.4552665.i to i64
  %i.xz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xy
  %i.ya = load i8, ptr %i.xz, align 1, !tbaa !77
  %i.yb = zext i8 %i.ya to i32
  %i.yc = or disjoint i32 %.4552665.i, 1
  %i.yd = zext i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yd
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !77
  %i.yg = zext i8 %i.yf to i32
  %i.yh = shl nuw nsw i32 %i.yg, 8
  %i.yi = or disjoint i32 %.4552665.i, 2
  %i.yj = zext i32 %i.yi to i64
  %i.yk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yj
  %i.yl = load i8, ptr %i.yk, align 1, !tbaa !77
  %i.ym = zext i8 %i.yl to i32
  %i.yn = shl nuw nsw i32 %i.ym, 16
  %i.yo = or disjoint i32 %i.yh, %i.yb
  %i.yp = or disjoint i32 %i.yo, %i.yn
  %i.yq = or disjoint i32 %i.yp, %i.xx
  %i.yr = add i64 %indvars.iv.i, %i.go
  %i.ys = and i64 %i.yr, 4294967295
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ys
  store i32 %i.yq, ptr %i.yt, align 4, !tbaa !57
  %i.yu = or i32 %i.xx, %.1556664.i               ; 2 uses
  %i.yv = add i32 %.4552665.i, 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dr
  br i1 %exitcond.not.i, label %.loopexit655.i, label %scalar.ph98, !llvm.loop !116

.loopexit655.i:                                   ; preds = %scalar.ph98, %scalar.ph73, %scalar.ph, %bb.ak, %middle.block106, %middle.block80, %middle.block, %bb.ah
  %.2557.i = phi i32 [ %.0555679.i, %bb.ah ], [ %.0555679.i, %middle.block80 ], [ %.0555679.i, %scalar.ph ], [ %.0555679.i, %middle.block ], [ %.0555679.i, %scalar.ph73 ], [ %.0555679.i, %bb.ak ], [ %i.on, %middle.block106 ], [ %i.yu, %scalar.ph98 ] ; 2 uses
  %indvars.iv.next748.i = add nuw nsw i64 %indvars.iv747.i, 1 ; 2 uses
  %exitcond751.not.i = icmp eq i64 %indvars.iv.next748.i, %i.dq
  br i1 %exitcond751.not.i, label %._crit_edge.loopexit.i, label %bb.ah

._crit_edge.loopexit.i:                           ; preds = %.loopexit655.i
  %i.yw = icmp ne i32 %.2557.i, 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader662.i
  %.0555.lcssa.i = phi i1 [ false, %.preheader662.i ], [ %i.yw, %._crit_edge.loopexit.i ] ; 2 uses
  %.not604.i = icmp eq ptr %.0528.i, null
  br i1 %.not604.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i
  %i.yx = shl nuw i32 1, %i.be
  %i.yy = sext i32 %i.yx to i64
  %i.yz = shl nsw i64 %i.yy, 2
  %i.za = getelementptr i8, ptr %i.l, i64 16
  %.val.i623.i = load ptr, ptr %i.za, align 8, !tbaa !90
  %i.zb = getelementptr i8, ptr %i.l, i64 72
  %.val3.i624.i = load i64, ptr %i.zb, align 8, !tbaa !91
  %i.zc = ptrtoint ptr %.0528.i to i64
  %i.zd = ptrtoint ptr %.val.i623.i to i64
  %i.ze = add i64 %.val3.i624.i, %i.zd
  %i.zf = sub i64 %i.zc, %i.ze
  %i.zg = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !92
  call void %i.zh(ptr noundef nonnull %i.l, i64 noundef %i.zf, i64 noundef range(i64 -8589934592, 8589934589) %i.yz) #13, !inline_history !93
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i
  call fastcc void @makebmp(ptr noundef nonnull @.str.18, ptr noundef %i.s, i32 noundef %.4..4..4..4..4..i, i32 noundef %i.bd, ptr noundef %i.do)
  %i.zi = icmp ne i16 %.14..14..14..14..14..i, 32
  %or.cond11.i = select i1 %i.zi, i1 true, i1 %.0555.lcssa.i
  %i.zj = mul i32 %i.cn, %i.bd                    ; 2 uses
  br i1 %or.cond11.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.zk = add i32 %.0559.i, %i.zj
  %i.zl = zext i32 %i.zk to i64
  %i.zm = mul nuw nsw i32 %i.ct, %i.bd
  %i.zn = zext nneg i32 %i.zm to i64
  %i.zo = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.zp = call ptr %i.zo(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.zl, i64 noundef range(i64 0, 4294967296) %i.zn, i32 noundef 0) #13, !inline_history !87 ; 2 uses
  %.not605.i = icmp eq ptr %i.zp, null
  br i1 %.not605.i, label %.preheader654.i, label %bb.ao

.preheader654.i:                                  ; preds = %bb.an
  %i.zq = add i32 %.8..8..8..8..8..i, -2
  %i.zr = icmp ult i32 %i.zq, -3
  %i.zs = icmp ne i32 %.4..4..4..4..4..i, 0
  %or.cond713.i = and i1 %i.zs, %i.zr
  br i1 %or.cond713.i, label %.preheader653.preheader.i, label %._crit_edge686.split.i

.preheader653.preheader.i:                        ; preds = %.preheader654.i
  %i.zt = zext nneg i32 %.4..4..4..4..4..i to i64 ; 4 uses
  %umax760.i = call i32 @llvm.umax.i32(i32 %i.bd, i32 1)
  %wide.trip.count761.i = zext nneg i32 %umax760.i to i64
  %min.iters.check111 = icmp ult i32 %.4..4..4..4..4..i, 8
  %n.vec113 = and i64 %i.zt, 504                  ; 3 uses
  %cmp.n119 = icmp eq i64 %n.vec113, %i.zt
  br label %.preheader653.i

.preheader653.i:                                  ; preds = %._crit_edge684.i, %.preheader653.preheader.i
  %indvars.iv757.i = phi i64 [ 0, %.preheader653.preheader.i ], [ %indvars.iv.next758.i, %._crit_edge684.i ] ; 2 uses
  %i.zu = mul nuw nsw i64 %indvars.iv757.i, %i.zt
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.zu ; 2 uses
  br i1 %min.iters.check111, label %scalar.ph110.preheader, label %vector.body114

vector.body114:                                   ; preds = %.preheader653.i, %vector.body114
  %index115 = phi i64 [ %index.next117, %vector.body114 ], [ 0, %.preheader653.i ] ; 2 uses
  %i.zv = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %index115 ; 3 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.zv, align 4, !tbaa !57
  %wide.load116 = load <4 x i32>, ptr %i.zw, align 4, !tbaa !57
  %i.zx = or <4 x i32> %wide.load, splat (i32 -16777216)
  %i.zy = or <4 x i32> %wide.load116, splat (i32 -16777216)
  store <4 x i32> %i.zx, ptr %i.zv, align 4, !tbaa !57
  store <4 x i32> %i.zy, ptr %i.zw, align 4, !tbaa !57
  %index.next117 = add nuw i64 %index115, 8       ; 2 uses
  %i.zz = icmp eq i64 %index.next117, %n.vec113
  br i1 %i.zz, label %middle.block118, label %vector.body114, !llvm.loop !117

middle.block118:                                  ; preds = %vector.body114
  br i1 %cmp.n119, label %._crit_edge684.i, label %scalar.ph110.preheader

scalar.ph110.preheader:                           ; preds = %.preheader653.i, %middle.block118
  %indvars.iv752.i.ph = phi i64 [ 0, %.preheader653.i ], [ %n.vec113, %middle.block118 ]
  br label %scalar.ph110

scalar.ph110:                                     ; preds = %scalar.ph110.preheader, %scalar.ph110
  %indvars.iv752.i = phi i64 [ %indvars.iv.next753.i, %scalar.ph110 ], [ %indvars.iv752.i.ph, %scalar.ph110.preheader ] ; 2 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv752.i ; 2 uses
  %i.aaa = load i32, ptr %gep.i, align 4, !tbaa !57
  %i.aab = or i32 %i.aaa, -16777216
  store i32 %i.aab, ptr %gep.i, align 4, !tbaa !57
  %indvars.iv.next753.i = add nuw nsw i64 %indvars.iv752.i, 1 ; 2 uses
  %exitcond756.not.i = icmp eq i64 %indvars.iv.next753.i, %i.zt
  br i1 %exitcond756.not.i, label %._crit_edge684.i, label %scalar.ph110, !llvm.loop !118

._crit_edge684.i:                                 ; preds = %scalar.ph110, %middle.block118
  %indvars.iv.next758.i = add nuw nsw i64 %indvars.iv757.i, 1 ; 2 uses
  %exitcond762.not.i = icmp eq i64 %indvars.iv.next758.i, %wide.trip.count761.i
  br i1 %exitcond762.not.i, label %._crit_edge686.split.i, label %.preheader653.i

._crit_edge686.split.i:                           ; preds = %._crit_edge684.i, %.preheader654.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19) #13
  br label %bb.aq

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.20) #13
  br label %bb.aq

bb.ap:                                            ; preds = %bb.am
  %i.aac = zext i32 %i.zj to i64
  %i.aad = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.aac
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %._crit_edge686.split.i
  %.3558.i = phi i1 [ %.0555.lcssa.i, %bb.ap ], [ false, %bb.ao ], [ true, %._crit_edge686.split.i ]
  %.0537.i = phi i32 [ %i.cu, %bb.ap ], [ %i.ct, %bb.ao ], [ %i.ct, %._crit_edge686.split.i ]
  %.0527.i = phi ptr [ %i.aad, %bb.ap ], [ %i.zp, %bb.ao ], [ null, %._crit_edge686.split.i ]
  %or.cond13.i = select i1 %.not599.i, i1 %.3558.i, i1 false
  %or.cond13.not.i = xor i1 %or.cond13.i, true
  %i.aae = add i32 %.8..8..8..8..8..i, -2
  %i.aaf = icmp ult i32 %i.aae, -3                ; 2 uses
  %or.cond714.i = select i1 %or.cond13.not.i, i1 %i.aaf, i1 false
  %i.aag = icmp ne i32 %.4..4..4..4..4..i, 0      ; 2 uses
  %or.cond715.i = and i1 %i.aag, %or.cond714.i
  br i1 %or.cond715.i, label %.lr.ph692.preheader.i, label %.loopexit652.i

.lr.ph692.preheader.i:                            ; preds = %bb.aq
  %i.aah = zext nneg i32 %i.bd to i64
  %i.aai = zext nneg i32 %.4..4..4..4..4..i to i64 ; 2 uses
  %umax770.i = call i32 @llvm.umax.i32(i32 %i.bd, i32 1)
  %wide.trip.count771.i = zext nneg i32 %umax770.i to i64
  br label %.lr.ph692.i

.lr.ph692.i:                                      ; preds = %._crit_edge693.i, %.lr.ph692.preheader.i
  %indvars.iv767.i = phi i64 [ 0, %.lr.ph692.preheader.i ], [ %indvars.iv.next768.i, %._crit_edge693.i ] ; 3 uses
  %i.aaj = xor i64 %indvars.iv767.i, -1
  %i.aak = add nsw i64 %i.aaj, %i.aah
  %i.aal = mul i64 %i.aak, %i.aai
  %i.aam = trunc i64 %indvars.iv767.i to i32
  %i.aan = mul i32 %.0537.i, %i.aam
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %.lr.ph692.i
  %indvars.iv763.i = phi i64 [ 0, %.lr.ph692.i ], [ %indvars.iv.next764.i, %bb.at ] ; 2 uses
  %.0531690.i = phi i8 [ 0, %.lr.ph692.i ], [ %.1532.i, %bb.at ]
  %.0533689.i = phi i32 [ 0, %.lr.ph692.i ], [ %i.aas, %bb.at ] ; 2 uses
  %.0535688.i = phi i32 [ %i.aan, %.lr.ph692.i ], [ %.1536.i, %bb.at ] ; 3 uses
  %.not606.i = icmp eq i32 %.0533689.i, 0
  br i1 %.not606.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.aao = add i32 %.0535688.i, 1
  %i.aap = zext i32 %.0535688.i to i64
  %i.aaq = getelementptr inbounds nuw i8, ptr %.0527.i, i64 %i.aap
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !77
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1536.i = phi i32 [ %.0535688.i, %bb.ar ], [ %i.aao, %bb.as ]
  %.1534.i = phi i32 [ %.0533689.i, %bb.ar ], [ 8, %bb.as ]
  %.1532.i = phi i8 [ %.0531690.i, %bb.ar ], [ %i.aar, %bb.as ] ; 2 uses
  %i.aas = add nsw i32 %.1534.i, -1               ; 2 uses
  %i.aat = zext i8 %.1532.i to i32
  %i.aau = xor i32 %i.aat, -1
  %i.aav = lshr i32 %i.aau, %i.aas
  %i.aaw = trunc i32 %i.aav to i1
  %i.aax = select i1 %i.aaw, i32 -16777216, i32 0
  %i.aay = add i64 %indvars.iv763.i, %i.aal
  %i.aaz = and i64 %i.aay, 4294967295
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.aaz ; 2 uses
  %i.abb = load i32, ptr %i.aba, align 4, !tbaa !57
  %i.abc = or i32 %i.aax, %i.abb
  store i32 %i.abc, ptr %i.aba, align 4, !tbaa !57
  %indvars.iv.next764.i = add nuw nsw i64 %indvars.iv763.i, 1 ; 2 uses
  %exitcond766.not.i = icmp eq i64 %indvars.iv.next764.i, %i.aai
  br i1 %exitcond766.not.i, label %._crit_edge693.i, label %bb.ar

._crit_edge693.i:                                 ; preds = %bb.at
  %indvars.iv.next768.i = add nuw nsw i64 %indvars.iv767.i, 1 ; 2 uses
  %exitcond772.not.i = icmp eq i64 %indvars.iv.next768.i, %wide.trip.count771.i
  br i1 %exitcond772.not.i, label %.loopexit652.i, label %.lr.ph692.i

.loopexit652.i:                                   ; preds = %._crit_edge693.i, %bb.aq
  call fastcc void @makebmp(ptr noundef nonnull @.str.21, ptr noundef %i.s, i32 noundef %.4..4..4..4..4..i, i32 noundef %i.bd, ptr noundef %i.do)
  %or.cond716.i = and i1 %i.aag, %i.aaf
  br i1 %or.cond716.i, label %.preheader650.preheader.i, label %._crit_edge700.split.i

.preheader650.preheader.i:                        ; preds = %.loopexit652.i
  %i.abd = zext nneg i32 %.4..4..4..4..4..i to i64 ; 4 uses
  %umax781.i = call i32 @llvm.umax.i32(i32 %i.bd, i32 1)
  %wide.trip.count782.i = zext nneg i32 %umax781.i to i64
  %min.iters.check122 = icmp ult i32 %.4..4..4..4..4..i, 4
  %n.vec124 = and i64 %i.abd, 508                 ; 3 uses
  %cmp.n130 = icmp eq i64 %n.vec124, %i.abd
  br label %.preheader650.i

.preheader650.i:                                  ; preds = %._crit_edge698.i, %.preheader650.preheader.i
  %indvars.iv778.i = phi i64 [ 0, %.preheader650.preheader.i ], [ %indvars.iv.next779.i, %._crit_edge698.i ] ; 2 uses
  %i.abe = mul nuw nsw i64 %indvars.iv778.i, %i.abd
  %invariant.gep825.i = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.abe ; 2 uses
  br i1 %min.iters.check122, label %scalar.ph121.preheader, label %vector.body125

vector.body125:                                   ; preds = %.preheader650.i, %vector.body125
  %index126 = phi i64 [ %index.next128, %vector.body125 ], [ 0, %.preheader650.i ] ; 2 uses
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep825.i, i64 %index126 ; 2 uses
  %wide.load127 = load <4 x i32>, ptr %i.abf, align 4, !tbaa !57 ; 4 uses
  %i.abg = lshr <4 x i32> %wide.load127, splat (i32 24) ; 4 uses
  %i.abh = lshr <4 x i32> %wide.load127, splat (i32 16)
  %i.abi = and <4 x i32> %i.abh, splat (i32 255)
  %i.abj = lshr <4 x i32> %wide.load127, splat (i32 8)
  %i.abk = and <4 x i32> %i.abj, splat (i32 255)
  %i.abl = and <4 x i32> %wide.load127, splat (i32 255)
  %i.abm = xor <4 x i32> %i.abg, splat (i32 255)  ; 3 uses
  %i.abn = mul nuw nsw <4 x i32> %i.abi, %i.abg
  %i.abo = trunc nuw <4 x i32> %i.abn to <4 x i16>
  %i.abp = udiv <4 x i16> %i.abo, splat (i16 255)
  %i.abq = zext nneg <4 x i16> %i.abp to <4 x i32>
  %i.abr = add nuw nsw <4 x i32> %i.abm, %i.abq
  %i.abs = mul nuw nsw <4 x i32> %i.abk, %i.abg
  %i.abt = trunc nuw <4 x i32> %i.abs to <4 x i16>
  %i.abu = udiv <4 x i16> %i.abt, splat (i16 255)
  %i.abv = zext nneg <4 x i16> %i.abu to <4 x i32>
  %i.abw = add nuw nsw <4 x i32> %i.abm, %i.abv
  %i.abx = mul nuw nsw <4 x i32> %i.abg, %i.abl
  %i.aby = trunc nuw <4 x i32> %i.abx to <4 x i16>
  %i.abz = udiv <4 x i16> %i.aby, splat (i16 255)
  %i.aca = zext nneg <4 x i16> %i.abz to <4 x i32>
  %i.acb = add nuw nsw <4 x i32> %i.abm, %i.aca
  %i.acc = shl nuw nsw <4 x i32> %i.abr, splat (i32 16)
  %i.acd = shl nuw nsw <4 x i32> %i.abw, splat (i32 8)
  %i.ace = or <4 x i32> %i.acb, %i.acd
  %i.acf = or <4 x i32> %i.ace, %i.acc
  %i.acg = or <4 x i32> %i.acf, splat (i32 -16777216)
  store <4 x i32> %i.acg, ptr %i.abf, align 4, !tbaa !57
  %index.next128 = add nuw i64 %index126, 4       ; 2 uses
  %i.ach = icmp eq i64 %index.next128, %n.vec124
  br i1 %i.ach, label %middle.block129, label %vector.body125, !llvm.loop !119

middle.block129:                                  ; preds = %vector.body125
  br i1 %cmp.n130, label %._crit_edge698.i, label %scalar.ph121.preheader

scalar.ph121.preheader:                           ; preds = %.preheader650.i, %middle.block129
  %indvars.iv773.i.ph = phi i64 [ 0, %.preheader650.i ], [ %n.vec124, %middle.block129 ]
  br label %scalar.ph121

scalar.ph121:                                     ; preds = %scalar.ph121.preheader, %scalar.ph121
  %indvars.iv773.i.a = phi i64 [ %indvars.iv.next774.i.a, %scalar.ph121 ], [ %indvars.iv773.i.ph, %scalar.ph121.preheader ] ; 2 uses
  %gep826.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep825.i, i64 %indvars.iv773.i.a ; 2 uses
  %i.aci = load i32, ptr %gep826.i, align 4, !tbaa !57 ; 4 uses
  %i.acj = lshr i32 %i.aci, 24                    ; 4 uses
  %i.ack = lshr i32 %i.aci, 16
  %i.acl = and i32 %i.ack, 255
  %i.acm = lshr i32 %i.aci, 8
  %i.acn = and i32 %i.acm, 255
  %i.aco = and i32 %i.aci, 255
  %i.acp = xor i32 %i.acj, 255                    ; 3 uses
  %i.acq = mul nuw nsw i32 %i.acl, %i.acj
  %.lhs.trunc.i = trunc nuw i32 %i.acq to i16
  %i.acr = udiv i16 %.lhs.trunc.i, 255
  %.zext.i = zext nneg i16 %i.acr to i32
  %i.acs = add nuw nsw i32 %i.acp, %.zext.i
  %i.act = mul nuw nsw i32 %i.acn, %i.acj
  %.lhs.trunc634.i = trunc nuw i32 %i.act to i16
  %i.acu = udiv i16 %.lhs.trunc634.i, 255
  %.zext635.i = zext nneg i16 %i.acu to i32
  %i.acv = add nuw nsw i32 %i.acp, %.zext635.i
  %i.acw = mul nuw nsw i32 %i.acj, %i.aco
  %.lhs.trunc636.i = trunc nuw i32 %i.acw to i16
  %i.acx = udiv i16 %.lhs.trunc636.i, 255
  %.zext637.i = zext nneg i16 %i.acx to i32
  %i.acy = add nuw nsw i32 %i.acp, %.zext637.i
  %i.acz = shl nuw nsw i32 %i.acs, 16
  %i.ada = shl nuw nsw i32 %i.acv, 8
  %i.adb = or i32 %i.acy, %i.ada
  %i.adc = or i32 %i.adb, %i.acz
  %i.add = or i32 %i.adc, -16777216
  store i32 %i.add, ptr %gep826.i, align 4, !tbaa !57
  %indvars.iv.next774.i.a = add nuw nsw i64 %indvars.iv773.i.a, 1 ; 2 uses
  %exitcond777.not.i = icmp eq i64 %indvars.iv.next774.i.a, %i.abd
  br i1 %exitcond777.not.i, label %._crit_edge698.i, label %scalar.ph121, !llvm.loop !120

._crit_edge698.i:                                 ; preds = %scalar.ph121, %middle.block129
  %indvars.iv.next779.i = add nuw nsw i64 %indvars.iv778.i, 1 ; 2 uses
  %exitcond783.not.i = icmp eq i64 %indvars.iv.next779.i, %wide.trip.count782.i
  br i1 %exitcond783.not.i, label %._crit_edge700.split.i, label %.preheader650.i

._crit_edge700.split.i:                           ; preds = %._crit_edge698.i, %.loopexit652.i
  switch i32 %.0560.i, label %.loopexit649.i [
    i32 2, label %bb.aw
    i32 1, label %.preheader648.i
  ]

.preheader648.i:                                  ; preds = %._crit_edge700.split.i
  %i.ade = icmp ugt i32 %.4..4..4..4..4..i, 32
  br i1 %i.ade, label %.preheader647.i, label %.loopexit649.i

.preheader647.i:                                  ; preds = %.preheader648.i, %._crit_edge703.i
  %.0538705.i = phi i32 [ %i.aex, %._crit_edge703.i ], [ %.4..4..4..4..4..i, %.preheader648.i ] ; 6 uses
  %.0541704.i = phi i32 [ %i.aey, %._crit_edge703.i ], [ %i.bd, %.preheader648.i ] ; 3 uses
  %.not725.i = icmp eq i32 %.0541704.i, 0
  br i1 %.not725.i, label %._crit_edge703.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader647.i
  %i.adf = zext nneg i32 %.0538705.i to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.av, %.preheader.preheader.i
  %.4565702.i = phi i32 [ %i.aev, %bb.av ], [ 0, %.preheader.preheader.i ] ; 4 uses
  %i.adg = mul i32 %.4565702.i, %.0538705.i
  %i.adh = or disjoint i32 %.4565702.i, 1
  %i.adi = mul i32 %i.adh, %.0538705.i
  %i.adj = lshr exact i32 %.4565702.i, 1
  %i.adk = mul i32 %i.adj, %.0538705.i
  %i.adl = lshr i32 %i.adk, 1
  %i.adm = zext nneg i32 %i.adl to i64
  %invariant.gep827.i = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.adm
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.preheader.i
  %indvars.iv784.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next785.i, %bb.au ] ; 3 uses
  %i.adn = trunc nuw nsw i64 %indvars.iv784.i to i32 ; 2 uses
  %i.ado = add i32 %i.adg, %i.adn                 ; 2 uses
  %i.adp = zext i32 %i.ado to i64
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.adp
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !57 ; 2 uses
  %i.ads = or disjoint i32 %i.ado, 1
  %i.adt = zext i32 %i.ads to i64
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.adt
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !57 ; 2 uses
  %i.adw = add i32 %i.adi, %i.adn                 ; 2 uses
  %i.adx = zext i32 %i.adw to i64
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.adx
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !57 ; 2 uses
  %i.aea = add i32 %i.adw, 1
  %i.aeb = zext i32 %i.aea to i64
  %i.aec = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.aeb
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !57 ; 2 uses
  %i.aee = xor i32 %i.adv, %i.adr
  %i.aef = lshr i32 %i.aee, 1
  %i.aeg = and i32 %i.aef, 2139062143
  %i.aeh = and i32 %i.adv, %i.adr
  %i.aei = add i32 %i.aeg, %i.aeh                 ; 2 uses
  %i.aej = xor i32 %i.aed, %i.adz
  %i.aek = lshr i32 %i.aej, 1
  %i.ael = and i32 %i.aek, 2139062143
  %i.aem = and i32 %i.aed, %i.adz
  %i.aen = add i32 %i.ael, %i.aem                 ; 2 uses
  %i.aeo = xor i32 %i.aen, %i.aei
  %i.aep = lshr i32 %i.aeo, 1
  %i.aeq = and i32 %i.aep, 2139062143
  %i.aer = and i32 %i.aen, %i.aei
  %i.aes = add i32 %i.aeq, %i.aer
  %i.aet = lshr exact i64 %indvars.iv784.i, 1
  %gep828.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep827.i, i64 %i.aet
  store i32 %i.aes, ptr %gep828.i, align 4, !tbaa !57
  %indvars.iv.next785.i = add nuw nsw i64 %indvars.iv784.i, 2 ; 2 uses
  %i.aeu = icmp samesign ult i64 %indvars.iv.next785.i, %i.adf
  br i1 %i.aeu, label %bb.au, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.aev = add i32 %.4565702.i, 2                 ; 2 uses
  %i.aew = icmp ult i32 %i.aev, %.0541704.i
  br i1 %i.aew, label %.preheader.i, label %._crit_edge703.i

._crit_edge703.i:                                 ; preds = %bb.av, %.preheader647.i
  %i.aex = lshr i32 %.0538705.i, 1                ; 3 uses
  %i.aey = lshr i32 %.0541704.i, 1                ; 3 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, i32 noundef %i.aex, i32 noundef %i.aey) #13
  %i.aez = icmp ugt i32 %.0538705.i, 65
  br i1 %i.aez, label %.preheader647.i, label %.loopexit649.i

bb.aw:                                            ; preds = %._crit_edge700.split.i
  %i.afa = add nsw i32 %.4..4..4..4..4..i, -32
  %i.afb = call i32 @llvm.abs.i32(i32 %i.afa, i1 true)
  %i.afc = add nsw i32 %i.bd, -32
  %i.afd = call i32 @llvm.abs.i32(i32 %i.afc, i1 true)
  %i.afe = add nuw nsw i32 %i.afd, %i.afb
  %i.aff = add nsw i32 %.4..4..4..4..4..i, -24
  %i.afg = call i32 @llvm.abs.i32(i32 %i.aff, i1 true)
  %i.afh = add nsw i32 %i.bd, -24
  %i.afi = call i32 @llvm.abs.i32(i32 %i.afh, i1 true)
  %i.afj = add nuw nsw i32 %i.afi, %i.afg         ; 2 uses
  %i.afk = icmp samesign ult i32 %i.afe, %i.afj
  br i1 %i.afk, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.afl = add nsw i32 %.4..4..4..4..4..i, -16
  %i.afm = call i32 @llvm.abs.i32(i32 %i.afl, i1 true)
  %i.afn = add nsw i32 %i.bd, -16
  %i.afo = call i32 @llvm.abs.i32(i32 %i.afn, i1 true)
  %i.afp = add nuw nsw i32 %i.afo, %i.afm
  %i.afq = icmp samesign ult i32 %i.afj, %i.afp
  %..i = select i1 %i.afq, i32 24, i32 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0525.i = phi i32 [ 32, %bb.aw ], [ %..i, %bb.ax ] ; 8 uses
  %i.afr = shl nuw nsw i32 %.0525.i, 2
  %i.afs = mul nuw nsw i32 %i.afr, %.0525.i
  %i.aft = zext nneg i32 %i.afs to i64
  %i.afu = call ptr @cli_max_malloc(i64 noundef %i.aft) #13 ; 3 uses
  %.not608.not.i = icmp eq ptr %i.afu, null
  br i1 %.not608.not.i, label %.thread.i, label %bb.az

.thread.i:                                        ; preds = %bb.ay
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.23) #13
  br label %parseicon.exit

bb.az:                                            ; preds = %bb.ay
  %i.afv = uitofp nneg i32 %.4..4..4..4..4..i to double
  %i.afw = insertelement <2 x double> poison, double %i.afv, i64 0
  %i.afx = uitofp nneg i32 %i.bd to double
  %i.afy = insertelement <2 x double> %i.afw, double %i.afx, i64 1
  %i.afz = uitofp nneg i32 %.0525.i to double
  %i.aga = insertelement <2 x double> poison, double %i.afz, i64 0
  %i.agb = shufflevector <2 x double> %i.aga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.agc = fdiv <2 x double> %i.afy, %i.agb       ; 2 uses
  %i.agd = extractelement <2 x double> %i.agc, i64 0 ; 3 uses
  %i.age = extractelement <2 x double> %i.agc, i64 1 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24, i32 noundef %.0525.i, i32 noundef %.0525.i, double noundef %i.agd, double noundef %i.age) #13
  %i.agf = zext nneg i32 %.0525.i to i64          ; 3 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %bb.az
  %indvars.iv792.i = phi i64 [ 0, %bb.az ], [ %indvars.iv.next793.i, %bb.bc ] ; 3 uses
  %i.agg = trunc nuw nsw i64 %indvars.iv792.i to i32
  %i.agh = uitofp nneg i32 %i.agg to double
  %i.agi = fmul double %i.age, %i.agh
  %i.agj = fptoui double %i.agi to i32
  %i.agk = mul i32 %.4..4..4..4..4..i, %i.agj     ; 2 uses
  %i.agl = mul nuw nsw i64 %indvars.iv792.i, %i.agf
  %invariant.gep829.i = getelementptr inbounds nuw [4 x i8], ptr %i.afu, i64 %i.agl ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %indvars.iv787.i = phi i64 [ 0, %bb.ba ], [ %indvars.iv.next788.i.1, %bb.bb ] ; 4 uses
  %i.agm = trunc nuw nsw i64 %indvars.iv787.i to i32
  %i.agn = uitofp nneg i32 %i.agm to double
  %i.ago = call double @llvm.fmuladd.f64(double %i.agn, double %i.agd, double 5.000000e-01)
  %i.agp = fptoui double %i.ago to i32
  %i.agq = add i32 %i.agk, %i.agp
  %i.agr = zext i32 %i.agq to i64
  %i.ags = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.agr
  %i.agt = load i32, ptr %i.ags, align 4, !tbaa !57
  %gep830.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep829.i, i64 %indvars.iv787.i
  store i32 %i.agt, ptr %gep830.i, align 4, !tbaa !57
  %indvars.iv.next788.i = or disjoint i64 %indvars.iv787.i, 1 ; 2 uses
  %i.agu = trunc nuw nsw i64 %indvars.iv.next788.i to i32
  %i.agv = uitofp nneg i32 %i.agu to double
  %i.agw = call double @llvm.fmuladd.f64(double %i.agv, double %i.agd, double 5.000000e-01)
  %i.agx = fptoui double %i.agw to i32
  %i.agy = add i32 %i.agk, %i.agx
  %i.agz = zext i32 %i.agy to i64
  %i.aha = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.agz
  %i.ahb = load i32, ptr %i.aha, align 4, !tbaa !57
  %gep830.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep829.i, i64 %indvars.iv.next788.i
  store i32 %i.ahb, ptr %gep830.i.1, align 4, !tbaa !57
  %indvars.iv.next788.i.1 = add nuw nsw i64 %indvars.iv787.i, 2 ; 2 uses
  %exitcond791.not.i.1 = icmp eq i64 %indvars.iv.next788.i.1, %i.agf
  br i1 %exitcond791.not.i.1, label %bb.bc, label %bb.bb

bb.bc:                                            ; preds = %bb.bb
  %indvars.iv.next793.i = add nuw nsw i64 %indvars.iv792.i, 1 ; 2 uses
  %exitcond796.not.i = icmp eq i64 %indvars.iv.next793.i, %i.agf
  br i1 %exitcond796.not.i, label %bb.bd, label %bb.ba

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.do) #13
  br label %.loopexit649.i

.loopexit649.i:                                   ; preds = %._crit_edge703.i, %bb.bd, %.preheader648.i, %._crit_edge700.split.i
  %.2543.i = phi i32 [ %i.bd, %._crit_edge700.split.i ], [ %.0525.i, %bb.bd ], [ %i.bd, %.preheader648.i ], [ %i.aey, %._crit_edge703.i ]
  %.2540.i = phi i32 [ %.4..4..4..4..4..i, %._crit_edge700.split.i ], [ %.0525.i, %bb.bd ], [ %.4..4..4..4..4..i, %.preheader648.i ], [ %i.aex, %._crit_edge703.i ] ; 11 uses
  %.1530.i = phi ptr [ %i.do, %._crit_edge700.split.i ], [ %i.afu, %bb.bd ], [ %i.do, %.preheader648.i ], [ %i.do, %._crit_edge703.i ] ; 3 uses
  call fastcc void @makebmp(ptr noundef nonnull @.str.25, ptr noundef %i.s, i32 noundef %.2540.i, i32 noundef %.2543.i, ptr noundef %.1530.i)
  call fastcc void @getmetrics(i32 noundef %.2540.i, ptr noundef %.1530.i, ptr noundef %6, ptr noundef %i.s)
  call void @free(ptr noundef %.1530.i) #13
  %i.ahc = lshr i32 %.2540.i, 3                   ; 2 uses
  %i.ahd = add nsw i32 %i.ahc, -2
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ahf = zext nneg i32 %i.ahd to i64            ; 2 uses
  %i.ahg = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %i.ahf
  %i.ahh = load i32, ptr %i.ahg, align 4, !tbaa !57 ; 2 uses
  %.not726.i = icmp eq i32 %i.ahh, 0
  br i1 %.not726.i, label %parseicon.exit, label %.lr.ph712.i
end_hunk_0
