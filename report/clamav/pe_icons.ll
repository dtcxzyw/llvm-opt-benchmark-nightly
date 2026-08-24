Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe_icons?download=true
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
  %i.dv = shl nuw nsw i64 %i.dr, 2
  %scevgep53 = getelementptr i8, ptr %i.do, i64 %i.dv
  %i.dw = lshr i32 %i.ci, 3
  %i.dx = and i32 %i.dw, 536870908
  %narrow132 = add nuw nsw i32 %i.dx, %i.cm
  %i.dy = shl nuw nsw i64 %i.dr, 1
  %scevgep56 = getelementptr i8, ptr %i.da, i64 %i.dy
  %i.dz = add nsw i64 %i.dr, -1                   ; 4 uses
  %i.ea = lshr i32 %i.ci, 3
  %i.eb = and i32 %i.ea, 536870908
  %narrow133 = add nuw nsw i32 %i.eb, %i.cm
  %i.ec = zext nneg i32 %narrow133 to i64
  %i.ed = shl nuw nsw i64 %i.dr, 2
  %scevgep65 = getelementptr i8, ptr %i.do, i64 %i.ed
  %i.ee = lshr i32 %i.ci, 3
  %i.ef = and i32 %i.ee, 536870908
  %narrow134 = add nuw nsw i32 %i.ef, %i.cm
  %i.eg = mul nuw nsw i64 %i.dr, 3
  %scevgep68 = getelementptr i8, ptr %i.da, i64 %i.eg
  %i.eh = add nsw i64 %i.dr, -1                   ; 3 uses
  %i.ei = lshr i32 %i.ci, 3
  %i.ej = and i32 %i.ei, 536870908
  %narrow135 = add nuw nsw i32 %i.ej, %i.cm
  %i.ek = zext nneg i32 %narrow135 to i64
  %i.el = shl nuw nsw i64 %i.dr, 2                ; 2 uses
  %scevgep90 = getelementptr i8, ptr %i.do, i64 %i.el
  %i.em = lshr i32 %i.ci, 3
  %i.en = and i32 %i.em, 536870908
  %narrow136 = add nuw nsw i32 %i.en, %i.cm
  %scevgep93 = getelementptr i8, ptr %i.da, i64 %i.el
  %min.iters.check99 = icmp ult i32 %.4..4..4..4..4..i, 20
  %i.eo = trunc nsw i64 %i.eh to i32
  %i.ep = trunc nsw i64 %i.eh to i32
  %mul.result86 = shl i32 %i.ep, 2                ; 4 uses
  %mul.overflow87 = icmp ugt i64 %i.eh, 1073741823
  %n.vec101 = and i64 %i.dr, 504                  ; 4 uses
  %i.eq = trunc nuw nsw i64 %n.vec101 to i32
  %i.er = shl nuw nsw i32 %i.eq, 2
  %cmp.n107 = icmp eq i64 %n.vec101, %i.dr
  %min.iters.check74 = icmp ult i32 %.4..4..4..4..4..i, 20
  %i.es = trunc nsw i64 %i.dz to i32
  %i.et = trunc nsw i64 %i.dz to i32
  %mul60 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.et, i32 3) ; 2 uses
  %mul.result61 = extractvalue { i32, i1 } %mul60, 0 ; 3 uses
  %mul.overflow62 = extractvalue { i32, i1 } %mul60, 1
  %i.eu = icmp ugt i64 %i.dz, 4294967295
  %i.ev = icmp ugt i64 %i.dz, 4294967295
  %invariant.op = or i1 %i.ev, %mul.overflow62
  %n.vec76 = and i64 %i.dr, 508                   ; 4 uses
  %i.ew = trunc nuw nsw i64 %n.vec76 to i32
  %i.ex = mul nuw nsw i32 %i.ew, 3
  %cmp.n81 = icmp eq i64 %n.vec76, %i.dr
  %min.iters.check = icmp ult i32 %.4..4..4..4..4..i, 12
  %i.ey = trunc nsw i64 %i.ds to i32
  %i.ez = trunc nsw i64 %i.ds to i32
  %mul.result = shl i32 %i.ez, 1                  ; 2 uses
  %i.fa = icmp ugt i64 %i.ds, 4294967295
  %n.vec = and i64 %i.dr, 508                     ; 4 uses
  %i.fb = trunc nuw nsw i64 %n.vec to i32
  %i.fc = shl nuw nsw i32 %i.fb, 1
  %cmp.n = icmp eq i64 %n.vec, %i.dr
  br label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.not603.i = icmp eq ptr %.0528.i, null
  br i1 %.not603.i, label %parseicon.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fd = shl nuw i32 1, %i.be
  %i.fe = sext i32 %i.fd to i64
  %i.ff = shl nsw i64 %i.fe, 2
  %i.fg = getelementptr i8, ptr %i.l, i64 16
  %.val.i621.i = load ptr, ptr %i.fg, align 8, !tbaa !90
  %i.fh = getelementptr i8, ptr %i.l, i64 72
  %.val3.i622.i = load i64, ptr %i.fh, align 8, !tbaa !91
  %i.fi = ptrtoint ptr %.0528.i to i64
  %i.fj = ptrtoint ptr %.val.i621.i to i64
  %i.fk = add i64 %.val3.i622.i, %i.fj
  %i.fl = sub i64 %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !92
  call void %i.fn(ptr noundef nonnull %i.l, i64 noundef %i.fl, i64 noundef range(i64 -8589934592, 8589934589) %i.ff) #13, !inline_history !93
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
  %i.fo = trunc i64 %indvars.iv747.i to i32
  %i.fp = mul i32 %narrow136, %i.fo
  %i.fq = zext i32 %i.fp to i64                   ; 2 uses
  %scevgep92 = getelementptr i8, ptr %i.da, i64 %i.fq
  %scevgep94 = getelementptr i8, ptr %scevgep93, i64 %i.fq
  %13 = trunc i64 %indvars.iv747.i to i32
  %14 = xor i32 %13, -1
  %15 = add i32 %i.bd, %14
  %16 = mul i32 %.4..4..4..4..4..i, %15
  %i.fr = mul i64 %indvars.iv747.i, %i.ek         ; 3 uses
  %17 = trunc i64 %i.fr to i32
  %i.fs = trunc i64 %i.fr to i32
  %i.ft = trunc i64 %i.fr to i32
  %i.fu = trunc i64 %indvars.iv747.i to i32
  %18 = xor i32 %i.fu, -1
  %19 = add i32 %i.bd, %18
  %20 = mul i32 %.4..4..4..4..4..i, %19
  %21 = zext i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 2                    ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.do, i64 %22
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %22
  %i.fv = trunc i64 %indvars.iv747.i to i32
  %i.fw = mul i32 %narrow134, %i.fv
  %i.fx = zext i32 %i.fw to i64                   ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.da, i64 %i.fx
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.fx
  %23 = trunc i64 %indvars.iv747.i to i32
  %24 = xor i32 %23, -1
  %25 = add i32 %i.bd, %24
  %26 = mul i32 %.4..4..4..4..4..i, %25
  %i.fy = mul i64 %indvars.iv747.i, %i.ec         ; 2 uses
  %27 = trunc i64 %i.fy to i32
  %i.fz = trunc i64 %i.fy to i32
  %i.ga = trunc i64 %indvars.iv747.i to i32
  %28 = xor i32 %i.ga, -1
  %29 = add i32 %i.bd, %28
  %30 = mul i32 %.4..4..4..4..4..i, %29
  %31 = zext i32 %30 to i64
  %32 = shl nuw nsw i64 %31, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.do, i64 %32
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %32
  %i.gb = trunc i64 %indvars.iv747.i to i32
  %i.gc = mul i32 %narrow132, %i.gb
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %scevgep55 = getelementptr i8, ptr %i.da, i64 %i.gd
  %scevgep57 = getelementptr i8, ptr %scevgep56, i64 %i.gd
  %33 = trunc i64 %indvars.iv747.i to i32
  %34 = xor i32 %33, -1
  %35 = add i32 %i.bd, %34
  %36 = mul i32 %.4..4..4..4..4..i, %35
  %i.ge = trunc i64 %indvars.iv747.i to i32
  %i.gf = mul i32 %narrow, %i.ge
  %i.gg = trunc i64 %indvars.iv747.i to i32
  %i.gh = mul i32 %i.cn, %i.gg                    ; 19 uses
  switch i16 %.14..14..14..14..14..i, label %.loopexit655.i [
    i16 1, label %.lr.ph676.i
    i16 4, label %.lr.ph676.i
    i16 8, label %.lr.ph676.i
    i16 16, label %.lr.ph671.i
    i16 24, label %.lr.ph668.i
    i16 32, label %.lr.ph.i
  ]

.lr.ph.i:                                         ; preds = %bb.ah
  %i.gi = xor i64 %indvars.iv747.i, -1
  %i.gj = add nsw i64 %i.gi, %i.dq
  %i.gk = mul i64 %i.gj, %i.dr                    ; 2 uses
  br i1 %min.iters.check99, label %scalar.ph98.preheader, label %vector.scevcheck84

vector.scevcheck84:                               ; preds = %.lr.ph.i
  %i.gl = xor i32 %16, -1
  %i.gm = icmp ult i32 %i.gl, %i.eo
  %i.gn = xor i32 %17, -4
  %i.go = icmp ult i32 %i.gn, %mul.result86
  %i.gp = xor i32 %i.gh, -1
  %i.gq = icmp ugt i32 %mul.result86, %i.gp
  %i.gr = or i1 %i.gq, %mul.overflow87
  %i.gs = xor i32 %i.fs, -2
  %i.gt = icmp ult i32 %i.gs, %mul.result86
  %i.gu = xor i32 %i.ft, -3
  %i.gv = icmp ult i32 %i.gu, %mul.result86
  %i.gw = or i1 %i.go, %i.gm
  %i.gx = or i1 %i.gw, %i.gr
  %i.gy = or i1 %i.gt, %i.gx
  %i.gz = or i1 %i.gv, %i.gy
  br i1 %i.gz, label %scalar.ph98.preheader, label %vector.memcheck88

vector.memcheck88:                                ; preds = %vector.scevcheck84
  %bound095 = icmp ult ptr %scevgep89, %scevgep94
  %bound196 = icmp ult ptr %scevgep92, %scevgep91
  %found.conflict97 = and i1 %bound095, %bound196
  br i1 %found.conflict97, label %scalar.ph98.preheader, label %vector.ph100

vector.ph100:                                     ; preds = %vector.memcheck88
  %i.ha = add i32 %i.gh, %i.er
  %i.hb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0555679.i, i64 0
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next105, %vector.body102 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.hb, %vector.ph100 ], [ %i.og, %vector.body102 ]
  %vec.phi104 = phi <4 x i32> [ zeroinitializer, %vector.ph100 ], [ %i.oh, %vector.body102 ]
  %i.hc = trunc i64 %index103 to i32
  %i.hd = shl i32 %i.hc, 2
  %i.he = add i32 %i.gh, %i.hd                    ; 11 uses
  %i.hf = add i32 %i.he, 4                        ; 4 uses
  %i.hg = add i32 %i.he, 8                        ; 4 uses
  %i.hh = add i32 %i.he, 12                       ; 4 uses
  %i.hi = add i32 %i.he, 16                       ; 4 uses
  %i.hj = add i32 %i.he, 20                       ; 4 uses
  %i.hk = add i32 %i.he, 24                       ; 4 uses
  %i.hl = add i32 %i.he, 28                       ; 4 uses
  %i.hm = or disjoint i32 %i.he, 3
  %i.hn = or disjoint i32 %i.hf, 3
  %i.ho = or disjoint i32 %i.hg, 3
  %i.hp = or disjoint i32 %i.hh, 3
  %i.hq = or disjoint i32 %i.hi, 3
  %i.hr = or disjoint i32 %i.hj, 3
  %i.hs = or disjoint i32 %i.hk, 3
  %i.ht = or disjoint i32 %i.hl, 3
  %i.hu = zext i32 %i.hm to i64
  %i.hv = zext i32 %i.hn to i64
  %i.hw = zext i32 %i.ho to i64
  %i.hx = zext i32 %i.hp to i64
  %i.hy = zext i32 %i.hq to i64
  %i.hz = zext i32 %i.hr to i64
  %i.ia = zext i32 %i.hs to i64
  %i.ib = zext i32 %i.ht to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.hu
  %i.id = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.hv
  %i.ie = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.hw
  %i.if = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.hx
  %i.ig = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.hy
  %i.ih = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.hz
  %i.ii = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ia
  %i.ij = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ib
  %i.ik = load i8, ptr %i.ic, align 1, !tbaa !77, !alias.scope !94
  %i.il = load i8, ptr %i.id, align 1, !tbaa !77, !alias.scope !94
  %i.im = load i8, ptr %i.ie, align 1, !tbaa !77, !alias.scope !94
  %i.in = load i8, ptr %i.if, align 1, !tbaa !77, !alias.scope !94
  %i.io = insertelement <4 x i8> poison, i8 %i.ik, i64 0
  %i.ip = insertelement <4 x i8> %i.io, i8 %i.il, i64 1
  %i.iq = insertelement <4 x i8> %i.ip, i8 %i.im, i64 2
  %i.ir = insertelement <4 x i8> %i.iq, i8 %i.in, i64 3
  %i.is = load i8, ptr %i.ig, align 1, !tbaa !77, !alias.scope !94
  %i.it = load i8, ptr %i.ih, align 1, !tbaa !77, !alias.scope !94
  %i.iu = load i8, ptr %i.ii, align 1, !tbaa !77, !alias.scope !94
  %i.iv = load i8, ptr %i.ij, align 1, !tbaa !77, !alias.scope !94
  %i.iw = insertelement <4 x i8> poison, i8 %i.is, i64 0
  %i.ix = insertelement <4 x i8> %i.iw, i8 %i.it, i64 1
  %i.iy = insertelement <4 x i8> %i.ix, i8 %i.iu, i64 2
  %i.iz = insertelement <4 x i8> %i.iy, i8 %i.iv, i64 3
  %i.ja = zext <4 x i8> %i.ir to <4 x i32>
  %i.jb = zext <4 x i8> %i.iz to <4 x i32>
  %i.jc = shl nuw <4 x i32> %i.ja, splat (i32 24) ; 2 uses
  %i.jd = shl nuw <4 x i32> %i.jb, splat (i32 24) ; 2 uses
  %i.je = zext i32 %i.he to i64
  %i.jf = zext i32 %i.hf to i64
  %i.jg = zext i32 %i.hg to i64
  %i.jh = zext i32 %i.hh to i64
  %i.ji = zext i32 %i.hi to i64
  %i.jj = zext i32 %i.hj to i64
  %i.jk = zext i32 %i.hk to i64
  %i.jl = zext i32 %i.hl to i64
  %i.jm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.je
  %i.jn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jf
  %i.jo = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jg
  %i.jp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jh
  %i.jq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ji
  %i.jr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jj
  %i.js = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jk
  %i.jt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jl
  %i.ju = load i8, ptr %i.jm, align 1, !tbaa !77, !alias.scope !94
  %i.jv = load i8, ptr %i.jn, align 1, !tbaa !77, !alias.scope !94
  %i.jw = load i8, ptr %i.jo, align 1, !tbaa !77, !alias.scope !94
  %i.jx = load i8, ptr %i.jp, align 1, !tbaa !77, !alias.scope !94
  %i.jy = insertelement <4 x i8> poison, i8 %i.ju, i64 0
  %i.jz = insertelement <4 x i8> %i.jy, i8 %i.jv, i64 1
  %i.ka = insertelement <4 x i8> %i.jz, i8 %i.jw, i64 2
  %i.kb = insertelement <4 x i8> %i.ka, i8 %i.jx, i64 3
  %i.kc = load i8, ptr %i.jq, align 1, !tbaa !77, !alias.scope !94
  %i.kd = load i8, ptr %i.jr, align 1, !tbaa !77, !alias.scope !94
  %i.ke = load i8, ptr %i.js, align 1, !tbaa !77, !alias.scope !94
  %i.kf = load i8, ptr %i.jt, align 1, !tbaa !77, !alias.scope !94
  %i.kg = insertelement <4 x i8> poison, i8 %i.kc, i64 0
  %i.kh = insertelement <4 x i8> %i.kg, i8 %i.kd, i64 1
  %i.ki = insertelement <4 x i8> %i.kh, i8 %i.ke, i64 2
  %i.kj = insertelement <4 x i8> %i.ki, i8 %i.kf, i64 3
  %i.kk = zext <4 x i8> %i.kb to <4 x i32>
  %i.kl = zext <4 x i8> %i.kj to <4 x i32>
  %i.km = or disjoint i32 %i.he, 1
  %i.kn = or disjoint i32 %i.hf, 1
  %i.ko = or disjoint i32 %i.hg, 1
  %i.kp = or disjoint i32 %i.hh, 1
  %i.kq = or disjoint i32 %i.hi, 1
  %i.kr = or disjoint i32 %i.hj, 1
  %i.ks = or disjoint i32 %i.hk, 1
  %i.kt = or disjoint i32 %i.hl, 1
  %i.ku = zext i32 %i.km to i64
  %i.kv = zext i32 %i.kn to i64
  %i.kw = zext i32 %i.ko to i64
  %i.kx = zext i32 %i.kp to i64
  %i.ky = zext i32 %i.kq to i64
  %i.kz = zext i32 %i.kr to i64
  %i.la = zext i32 %i.ks to i64
  %i.lb = zext i32 %i.kt to i64
  %i.lc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ku
  %i.ld = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kv
  %i.le = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kw
  %i.lf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kx
  %i.lg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ky
  %i.lh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kz
  %i.li = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.la
  %i.lj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lb
  %i.lk = load i8, ptr %i.lc, align 1, !tbaa !77, !alias.scope !94
  %i.ll = load i8, ptr %i.ld, align 1, !tbaa !77, !alias.scope !94
  %i.lm = load i8, ptr %i.le, align 1, !tbaa !77, !alias.scope !94
  %i.ln = load i8, ptr %i.lf, align 1, !tbaa !77, !alias.scope !94
  %i.lo = insertelement <4 x i8> poison, i8 %i.lk, i64 0
  %i.lp = insertelement <4 x i8> %i.lo, i8 %i.ll, i64 1
  %i.lq = insertelement <4 x i8> %i.lp, i8 %i.lm, i64 2
  %i.lr = insertelement <4 x i8> %i.lq, i8 %i.ln, i64 3
  %i.ls = load i8, ptr %i.lg, align 1, !tbaa !77, !alias.scope !94
  %i.lt = load i8, ptr %i.lh, align 1, !tbaa !77, !alias.scope !94
  %i.lu = load i8, ptr %i.li, align 1, !tbaa !77, !alias.scope !94
  %i.lv = load i8, ptr %i.lj, align 1, !tbaa !77, !alias.scope !94
  %i.lw = insertelement <4 x i8> poison, i8 %i.ls, i64 0
  %i.lx = insertelement <4 x i8> %i.lw, i8 %i.lt, i64 1
  %i.ly = insertelement <4 x i8> %i.lx, i8 %i.lu, i64 2
  %i.lz = insertelement <4 x i8> %i.ly, i8 %i.lv, i64 3
  %i.ma = zext <4 x i8> %i.lr to <4 x i32>
  %i.mb = zext <4 x i8> %i.lz to <4 x i32>
  %i.mc = shl nuw nsw <4 x i32> %i.ma, splat (i32 8)
  %i.md = shl nuw nsw <4 x i32> %i.mb, splat (i32 8)
  %i.me = or disjoint i32 %i.he, 2
  %i.mf = or disjoint i32 %i.hf, 2
  %i.mg = or disjoint i32 %i.hg, 2
  %i.mh = or disjoint i32 %i.hh, 2
  %i.mi = or disjoint i32 %i.hi, 2
  %i.mj = or disjoint i32 %i.hj, 2
  %i.mk = or disjoint i32 %i.hk, 2
  %i.ml = or disjoint i32 %i.hl, 2
  %i.mm = zext i32 %i.me to i64
  %i.mn = zext i32 %i.mf to i64
  %i.mo = zext i32 %i.mg to i64
  %i.mp = zext i32 %i.mh to i64
  %i.mq = zext i32 %i.mi to i64
  %i.mr = zext i32 %i.mj to i64
  %i.ms = zext i32 %i.mk to i64
  %i.mt = zext i32 %i.ml to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mm
  %i.mv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mn
  %i.mw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mo
  %i.mx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mp
  %i.my = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mq
  %i.mz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mr
  %i.na = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ms
  %i.nb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.mt
  %i.nc = load i8, ptr %i.mu, align 1, !tbaa !77, !alias.scope !94
  %i.nd = load i8, ptr %i.mv, align 1, !tbaa !77, !alias.scope !94
  %i.ne = load i8, ptr %i.mw, align 1, !tbaa !77, !alias.scope !94
  %i.nf = load i8, ptr %i.mx, align 1, !tbaa !77, !alias.scope !94
  %i.ng = insertelement <4 x i8> poison, i8 %i.nc, i64 0
  %i.nh = insertelement <4 x i8> %i.ng, i8 %i.nd, i64 1
  %i.ni = insertelement <4 x i8> %i.nh, i8 %i.ne, i64 2
  %i.nj = insertelement <4 x i8> %i.ni, i8 %i.nf, i64 3
  %i.nk = load i8, ptr %i.my, align 1, !tbaa !77, !alias.scope !94
  %i.nl = load i8, ptr %i.mz, align 1, !tbaa !77, !alias.scope !94
  %i.nm = load i8, ptr %i.na, align 1, !tbaa !77, !alias.scope !94
  %i.nn = load i8, ptr %i.nb, align 1, !tbaa !77, !alias.scope !94
  %i.no = insertelement <4 x i8> poison, i8 %i.nk, i64 0
  %i.np = insertelement <4 x i8> %i.no, i8 %i.nl, i64 1
  %i.nq = insertelement <4 x i8> %i.np, i8 %i.nm, i64 2
  %i.nr = insertelement <4 x i8> %i.nq, i8 %i.nn, i64 3
  %i.ns = zext <4 x i8> %i.nj to <4 x i32>
  %i.nt = zext <4 x i8> %i.nr to <4 x i32>
  %i.nu = shl nuw nsw <4 x i32> %i.ns, splat (i32 16)
  %i.nv = shl nuw nsw <4 x i32> %i.nt, splat (i32 16)
  %i.nw = or disjoint <4 x i32> %i.mc, %i.kk
  %i.nx = or disjoint <4 x i32> %i.md, %i.kl
  %i.ny = or disjoint <4 x i32> %i.nw, %i.nu
  %i.nz = or disjoint <4 x i32> %i.nx, %i.nv
  %i.oa = or disjoint <4 x i32> %i.ny, %i.jc
  %i.ob = or disjoint <4 x i32> %i.nz, %i.jd
  %i.oc = add i64 %index103, %i.gk
  %i.od = and i64 %i.oc, 4294967295
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.od ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 16
  store <4 x i32> %i.oa, ptr %i.oe, align 4, !tbaa !57, !alias.scope !97, !noalias !94
  store <4 x i32> %i.ob, ptr %i.of, align 4, !tbaa !57, !alias.scope !97, !noalias !94
  %i.og = or <4 x i32> %i.jc, %vec.phi            ; 2 uses
  %i.oh = or <4 x i32> %i.jd, %vec.phi104         ; 2 uses
  %index.next105 = add nuw i64 %index103, 8       ; 2 uses
  %i.oi = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.oi, label %middle.block106, label %vector.body102, !llvm.loop !99

middle.block106:                                  ; preds = %vector.body102
  %bin.rdx = or <4 x i32> %i.oh, %i.og
  %i.oj = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n107, label %.loopexit655.i, label %scalar.ph98.preheader

scalar.ph98.preheader:                            ; preds = %vector.memcheck88, %vector.scevcheck84, %.lr.ph.i, %middle.block106
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck88 ], [ 0, %vector.scevcheck84 ], [ 0, %.lr.ph.i ], [ %n.vec101, %middle.block106 ]
  %.4552665.i.ph = phi i32 [ %i.gh, %vector.memcheck88 ], [ %i.gh, %vector.scevcheck84 ], [ %i.gh, %.lr.ph.i ], [ %i.ha, %middle.block106 ]
  %.1556664.i.ph = phi i32 [ %.0555679.i, %vector.memcheck88 ], [ %.0555679.i, %vector.scevcheck84 ], [ %.0555679.i, %.lr.ph.i ], [ %i.oj, %middle.block106 ]
  br label %scalar.ph98

.lr.ph668.i:                                      ; preds = %bb.ah
  %i.ok = xor i64 %indvars.iv747.i, -1
  %i.ol = add nsw i64 %i.ok, %i.dq
  %i.om = mul i64 %i.ol, %i.dr                    ; 2 uses
  br i1 %min.iters.check74, label %scalar.ph73.preheader, label %vector.scevcheck59

vector.scevcheck59:                               ; preds = %.lr.ph668.i
  %i.on = xor i32 %26, -1
  %i.oo = icmp ult i32 %i.on, %i.es
  %i.op = xor i32 %i.gh, -1
  %i.oq = icmp ugt i32 %mul.result61, %i.op
  %i.or = or i1 %i.oq, %i.eu
  %i.os = xor i32 %27, -2
  %i.ot = icmp ult i32 %i.os, %mul.result61
  %.reass = or i1 %i.ot, %invariant.op
  %i.ou = xor i32 %i.fz, -3
  %i.ov = icmp ult i32 %i.ou, %mul.result61
  %i.ow = or i1 %i.or, %i.oo
  %i.ox = or i1 %i.ow, %.reass
  %i.oy = or i1 %i.ov, %i.ox
  br i1 %i.oy, label %scalar.ph73.preheader, label %vector.memcheck63

vector.memcheck63:                                ; preds = %vector.scevcheck59
  %bound070 = icmp ult ptr %scevgep64, %scevgep69
  %bound171 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict72 = and i1 %bound070, %bound171
  br i1 %found.conflict72, label %scalar.ph73.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck63
  %i.oz = add i32 %i.gh, %i.ex
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next79, %vector.body77 ] ; 3 uses
  %i.pa = trunc i64 %index78 to i32
  %i.pb = mul i32 %i.pa, 3
  %i.pc = add i32 %i.gh, %i.pb                    ; 12 uses
  %i.pd = or disjoint i32 %i.pc, 3
  %i.pe = add i32 %i.pc, 6
  %i.pf = add i32 %i.pc, 9
  %i.pg = zext i32 %i.pc to i64
  %i.ph = zext i32 %i.pd to i64
  %i.pi = zext i32 %i.pe to i64
  %i.pj = zext i32 %i.pf to i64
  %i.pk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pg
  %i.pl = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ph
  %i.pm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pi
  %i.pn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pj
  %i.po = load i8, ptr %i.pk, align 1, !tbaa !77, !alias.scope !102
  %i.pp = load i8, ptr %i.pl, align 1, !tbaa !77, !alias.scope !102
  %i.pq = load i8, ptr %i.pm, align 1, !tbaa !77, !alias.scope !102
  %i.pr = load i8, ptr %i.pn, align 1, !tbaa !77, !alias.scope !102
  %i.ps = insertelement <4 x i8> poison, i8 %i.po, i64 0
  %i.pt = insertelement <4 x i8> %i.ps, i8 %i.pp, i64 1
  %i.pu = insertelement <4 x i8> %i.pt, i8 %i.pq, i64 2
  %i.pv = insertelement <4 x i8> %i.pu, i8 %i.pr, i64 3
  %i.pw = zext <4 x i8> %i.pv to <4 x i32>
  %i.px = or disjoint i32 %i.pc, 1
  %i.py = add i32 %i.pc, 4
  %i.pz = add i32 %i.pc, 7
  %i.qa = add i32 %i.pc, 10
  %i.qb = zext i32 %i.px to i64
  %i.qc = zext i32 %i.py to i64
  %i.qd = zext i32 %i.pz to i64
  %i.qe = zext i32 %i.qa to i64
  %i.qf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qb
  %i.qg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qc
  %i.qh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qd
  %i.qi = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qe
  %i.qj = load i8, ptr %i.qf, align 1, !tbaa !77, !alias.scope !102
  %i.qk = load i8, ptr %i.qg, align 1, !tbaa !77, !alias.scope !102
  %i.ql = load i8, ptr %i.qh, align 1, !tbaa !77, !alias.scope !102
  %i.qm = load i8, ptr %i.qi, align 1, !tbaa !77, !alias.scope !102
  %i.qn = insertelement <4 x i8> poison, i8 %i.qj, i64 0
  %i.qo = insertelement <4 x i8> %i.qn, i8 %i.qk, i64 1
  %i.qp = insertelement <4 x i8> %i.qo, i8 %i.ql, i64 2
  %i.qq = insertelement <4 x i8> %i.qp, i8 %i.qm, i64 3
  %i.qr = zext <4 x i8> %i.qq to <4 x i32>
  %i.qs = shl nuw nsw <4 x i32> %i.qr, splat (i32 8)
  %i.qt = or disjoint <4 x i32> %i.qs, %i.pw
  %i.qu = or disjoint i32 %i.pc, 2
  %i.qv = add i32 %i.pc, 5
  %i.qw = add i32 %i.pc, 8
  %i.qx = add i32 %i.pc, 11
  %i.qy = zext i32 %i.qu to i64
  %i.qz = zext i32 %i.qv to i64
  %i.ra = zext i32 %i.qw to i64
  %i.rb = zext i32 %i.qx to i64
  %i.rc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qy
  %i.rd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qz
  %i.re = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ra
  %i.rf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rb
  %i.rg = load i8, ptr %i.rc, align 1, !tbaa !77, !alias.scope !102
  %i.rh = load i8, ptr %i.rd, align 1, !tbaa !77, !alias.scope !102
  %i.ri = load i8, ptr %i.re, align 1, !tbaa !77, !alias.scope !102
  %i.rj = load i8, ptr %i.rf, align 1, !tbaa !77, !alias.scope !102
  %i.rk = insertelement <4 x i8> poison, i8 %i.rg, i64 0
  %i.rl = insertelement <4 x i8> %i.rk, i8 %i.rh, i64 1
  %i.rm = insertelement <4 x i8> %i.rl, i8 %i.ri, i64 2
  %i.rn = insertelement <4 x i8> %i.rm, i8 %i.rj, i64 3
  %i.ro = zext <4 x i8> %i.rn to <4 x i32>
  %i.rp = shl nuw nsw <4 x i32> %i.ro, splat (i32 16)
  %i.rq = or disjoint <4 x i32> %i.qt, %i.rp
  %i.rr = add i64 %index78, %i.om
  %i.rs = and i64 %i.rr, 4294967295
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.rs
  store <4 x i32> %i.rq, ptr %i.rt, align 4, !tbaa !57, !alias.scope !105, !noalias !102
  %index.next79 = add nuw i64 %index78, 4         ; 2 uses
  %i.ru = icmp eq i64 %index.next79, %n.vec76
  br i1 %i.ru, label %middle.block80, label %vector.body77, !llvm.loop !107

middle.block80:                                   ; preds = %vector.body77
  br i1 %cmp.n81, label %.loopexit655.i, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %vector.memcheck63, %vector.scevcheck59, %.lr.ph668.i, %middle.block80
  %indvars.iv733.i.ph = phi i64 [ 0, %vector.memcheck63 ], [ 0, %vector.scevcheck59 ], [ 0, %.lr.ph668.i ], [ %n.vec76, %middle.block80 ]
  %.3551667.i.ph = phi i32 [ %i.gh, %vector.memcheck63 ], [ %i.gh, %vector.scevcheck59 ], [ %i.gh, %.lr.ph668.i ], [ %i.oz, %middle.block80 ]
  br label %scalar.ph73

.lr.ph671.i:                                      ; preds = %bb.ah
  %i.rv = xor i64 %indvars.iv747.i, -1
  %i.rw = add nsw i64 %i.rv, %i.dq
  %i.rx = mul i64 %i.rw, %i.dr                    ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph671.i
  %i.ry = xor i32 %36, -1
  %i.rz = icmp ult i32 %i.ry, %i.ey
  %i.sa = xor i32 %i.gh, -1
  %i.sb = icmp ugt i32 %mul.result, %i.sa
  %i.sc = or i1 %i.sb, %i.fa
  %i.sd = xor i32 %i.gf, -2
  %i.se = icmp ult i32 %i.sd, %mul.result
  %i.sf = or i1 %i.rz, %i.sc
  %i.sg = or i1 %i.se, %i.sf
  br i1 %i.sg, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep57
  %bound1 = icmp ult ptr %scevgep55, %scevgep54
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.sh = add i32 %i.gh, %i.fc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.si = trunc i64 %index to i32
  %i.sj = shl i32 %i.si, 1
  %i.sk = add i32 %i.gh, %i.sj                    ; 6 uses
  %i.sl = or disjoint i32 %i.sk, 2
  %i.sm = add i32 %i.sk, 4                        ; 2 uses
  %i.sn = add i32 %i.sk, 6                        ; 2 uses
  %i.so = zext i32 %i.sk to i64
  %i.sp = zext i32 %i.sl to i64
  %i.sq = zext i32 %i.sm to i64
  %i.sr = zext i32 %i.sn to i64
  %i.ss = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.so
  %i.st = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sp
  %i.su = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sq
  %i.sv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sr
  %i.sw = load i8, ptr %i.ss, align 1, !tbaa !77, !alias.scope !108
  %i.sx = load i8, ptr %i.st, align 1, !tbaa !77, !alias.scope !108
  %i.sy = load i8, ptr %i.su, align 1, !tbaa !77, !alias.scope !108
  %i.sz = load i8, ptr %i.sv, align 1, !tbaa !77, !alias.scope !108
  %i.ta = insertelement <4 x i8> poison, i8 %i.sw, i64 0
  %i.tb = insertelement <4 x i8> %i.ta, i8 %i.sx, i64 1
  %i.tc = insertelement <4 x i8> %i.tb, i8 %i.sy, i64 2
  %i.td = insertelement <4 x i8> %i.tc, i8 %i.sz, i64 3
  %i.te = zext <4 x i8> %i.td to <4 x i32>        ; 2 uses
  %i.tf = and <4 x i32> %i.te, splat (i32 31)     ; 2 uses
  %i.tg = lshr <4 x i32> %i.te, splat (i32 5)
  %i.th = or disjoint i32 %i.sk, 1
  %i.ti = or disjoint i32 %i.sk, 3
  %i.tj = or disjoint i32 %i.sm, 1
  %i.tk = or disjoint i32 %i.sn, 1
  %i.tl = zext i32 %i.th to i64
  %i.tm = zext i32 %i.ti to i64
  %i.tn = zext i32 %i.tj to i64
  %i.to = zext i32 %i.tk to i64
  %i.tp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tl
  %i.tq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tm
  %i.tr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tn
  %i.ts = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.to
  %i.tt = load i8, ptr %i.tp, align 1, !tbaa !77, !alias.scope !108
  %i.tu = load i8, ptr %i.tq, align 1, !tbaa !77, !alias.scope !108
  %i.tv = load i8, ptr %i.tr, align 1, !tbaa !77, !alias.scope !108
  %i.tw = load i8, ptr %i.ts, align 1, !tbaa !77, !alias.scope !108
  %i.tx = insertelement <4 x i8> poison, i8 %i.tt, i64 0
  %i.ty = insertelement <4 x i8> %i.tx, i8 %i.tu, i64 1
  %i.tz = insertelement <4 x i8> %i.ty, i8 %i.tv, i64 2
  %i.ua = insertelement <4 x i8> %i.tz, i8 %i.tw, i64 3
  %i.ub = zext <4 x i8> %i.ua to <4 x i32>        ; 2 uses
  %i.uc = shl nuw nsw <4 x i32> %i.ub, splat (i32 3) ; 2 uses
  %i.ud = and <4 x i32> %i.uc, splat (i32 24)
  %i.ue = or disjoint <4 x i32> %i.ud, %i.tg      ; 2 uses
  %i.uf = shl nuw nsw <4 x i32> %i.tf, splat (i32 3)
  %i.ug = lshr <4 x i32> %i.tf, splat (i32 2)
  %i.uh = or disjoint <4 x i32> %i.uf, %i.ug
  %i.ui = shl nuw nsw <4 x i32> %i.ue, splat (i32 14)
  %i.uj = shl nuw nsw <4 x i32> %i.ue, splat (i32 9)
  %i.uk = and <4 x i32> %i.uj, splat (i32 14336)
  %i.ul = or disjoint <4 x i32> %i.uk, %i.ui
  %i.um = and <4 x i32> %i.uc, splat (i32 2016)
  %i.un = lshr <4 x i32> %i.ub, splat (i32 2)
  %i.uo = or <4 x i32> %i.um, %i.un
  %i.up = shl nuw nsw <4 x i32> %i.uo, splat (i32 17)
  %i.uq = or <4 x i32> %i.up, %i.ul
  %i.ur = or disjoint <4 x i32> %i.uq, %i.uh
  %i.us = add i64 %index, %i.rx
  %i.ut = and i64 %i.us, 4294967295
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ut
  store <4 x i32> %i.ur, ptr %i.uu, align 4, !tbaa !57, !alias.scope !111, !noalias !108
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.uv = icmp eq i64 %index.next, %n.vec
  br i1 %i.uv, label %middle.block, label %vector.body, !llvm.loop !113

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit655.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph671.i, %middle.block
  %indvars.iv738.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph671.i ], [ %n.vec, %middle.block ]
  %.2550670.i.ph = phi i32 [ %i.gh, %vector.memcheck ], [ %i.gh, %vector.scevcheck ], [ %i.gh, %.lr.ph671.i ], [ %i.sh, %middle.block ]
  br label %scalar.ph

.lr.ph676.i:                                      ; preds = %bb.ah, %bb.ah, %bb.ah
  %i.uw = xor i64 %indvars.iv747.i, -1
  %i.ux = add nsw i64 %i.uw, %i.dq
  %i.uy = mul i64 %i.ux, %i.dr
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph676.i
  %indvars.iv743.i = phi i64 [ 0, %.lr.ph676.i ], [ %indvars.iv.next744.i, %bb.ak ] ; 2 uses
  %.0544675.i = phi i8 [ 0, %.lr.ph676.i ], [ %.1545.i, %bb.ak ]
  %.0546674.i = phi i32 [ 0, %.lr.ph676.i ], [ %i.vd, %bb.ak ] ; 2 uses
  %.0548673.i = phi i32 [ %i.gh, %.lr.ph676.i ], [ %.1549.i, %bb.ak ] ; 3 uses
  %.not620.i = icmp eq i32 %.0546674.i, 0
  br i1 %.not620.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.uz = add i32 %.0548673.i, 1
  %i.va = zext i32 %.0548673.i to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.va
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !77
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1549.i = phi i32 [ %.0548673.i, %bb.ai ], [ %i.uz, %bb.aj ]
  %.1547.i = phi i32 [ %.0546674.i, %bb.ai ], [ 8, %bb.aj ]
  %.1545.i = phi i8 [ %.0544675.i, %bb.ai ], [ %i.vc, %bb.aj ] ; 2 uses
  %i.vd = sub i32 %.1547.i, %i.be                 ; 2 uses
  %i.ve = zext i8 %.1545.i to i32
  %i.vf = lshr i32 %i.ve, %i.vd
  %i.vg = and i32 %i.vf, %i.dp
  %i.vh = zext nneg i32 %i.vg to i64
  %i.vi = getelementptr inbounds nuw [4 x i8], ptr %.0528.i, i64 %i.vh
  %i.vj = load i32, ptr %i.vi, align 1, !tbaa !77
  %i.vk = add i64 %indvars.iv743.i, %i.uy
  %i.vl = and i64 %i.vk, 4294967295
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.vl
  store i32 %i.vj, ptr %i.vm, align 4, !tbaa !57
  %indvars.iv.next744.i = add nuw nsw i64 %indvars.iv743.i, 1 ; 2 uses
  %exitcond746.not.i = icmp eq i64 %indvars.iv.next744.i, %i.dr
  br i1 %exitcond746.not.i, label %.loopexit655.i, label %bb.ai

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv738.i = phi i64 [ %indvars.iv.next739.i, %scalar.ph ], [ %indvars.iv738.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.2550670.i = phi i32 [ %i.wr, %scalar.ph ], [ %.2550670.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.vn = zext i32 %.2550670.i to i64
  %i.vo = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.vn
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !77
  %i.vq = zext i8 %i.vp to i32                    ; 2 uses
  %i.vr = and i32 %i.vq, 31                       ; 2 uses
  %i.vs = lshr i32 %i.vq, 5
  %i.vt = or disjoint i32 %.2550670.i, 1
  %i.vu = zext i32 %i.vt to i64
  %i.vv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.vu
  %i.vw = load i8, ptr %i.vv, align 1, !tbaa !77
  %i.vx = zext i8 %i.vw to i32                    ; 2 uses
  %i.vy = shl nuw nsw i32 %i.vx, 3                ; 2 uses
  %i.vz = and i32 %i.vy, 24
  %i.wa = or disjoint i32 %i.vz, %i.vs            ; 2 uses
  %i.wb = shl nuw nsw i32 %i.vr, 3
  %i.wc = lshr i32 %i.vr, 2
  %i.wd = or disjoint i32 %i.wb, %i.wc
  %i.we = shl nuw nsw i32 %i.wa, 14
  %i.wf = shl nuw nsw i32 %i.wa, 9
  %i.wg = and i32 %i.wf, 14336
  %i.wh = or disjoint i32 %i.wg, %i.we
  %i.wi = and i32 %i.vy, 2016
  %i.wj = lshr i32 %i.vx, 2
  %i.wk = or i32 %i.wi, %i.wj
  %i.wl = shl nuw nsw i32 %i.wk, 17
  %i.wm = or i32 %i.wl, %i.wh
  %i.wn = or disjoint i32 %i.wm, %i.wd
  %i.wo = add i64 %indvars.iv738.i, %i.rx
  %i.wp = and i64 %i.wo, 4294967295
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.wp
  store i32 %i.wn, ptr %i.wq, align 4, !tbaa !57
  %i.wr = add i32 %.2550670.i, 2
  %indvars.iv.next739.i = add nuw nsw i64 %indvars.iv738.i, 1 ; 2 uses
  %exitcond742.not.i = icmp eq i64 %indvars.iv.next739.i, %i.dr
  br i1 %exitcond742.not.i, label %.loopexit655.i, label %scalar.ph, !llvm.loop !114

scalar.ph73:                                      ; preds = %scalar.ph73.preheader, %scalar.ph73
  %indvars.iv733.i = phi i64 [ %indvars.iv.next734.i, %scalar.ph73 ], [ %indvars.iv733.i.ph, %scalar.ph73.preheader ] ; 2 uses
  %.3551667.i = phi i32 [ %i.xn, %scalar.ph73 ], [ %.3551667.i.ph, %scalar.ph73.preheader ] ; 4 uses
  %i.ws = zext i32 %.3551667.i to i64
  %i.wt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ws
  %i.wu = load i8, ptr %i.wt, align 1, !tbaa !77
  %i.wv = zext i8 %i.wu to i32
  %i.ww = add i32 %.3551667.i, 1
  %i.wx = zext i32 %i.ww to i64
  %i.wy = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wx
  %i.wz = load i8, ptr %i.wy, align 1, !tbaa !77
  %i.xa = zext i8 %i.wz to i32
  %i.xb = shl nuw nsw i32 %i.xa, 8
  %i.xc = or disjoint i32 %i.xb, %i.wv
  %i.xd = add i32 %.3551667.i, 2
  %i.xe = zext i32 %i.xd to i64
  %i.xf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xe
  %i.xg = load i8, ptr %i.xf, align 1, !tbaa !77
  %i.xh = zext i8 %i.xg to i32
  %i.xi = shl nuw nsw i32 %i.xh, 16
  %i.xj = or disjoint i32 %i.xc, %i.xi
  %i.xk = add i64 %indvars.iv733.i, %i.om
  %i.xl = and i64 %i.xk, 4294967295
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.xl
  store i32 %i.xj, ptr %i.xm, align 4, !tbaa !57
  %i.xn = add i32 %.3551667.i, 3
  %indvars.iv.next734.i = add nuw nsw i64 %indvars.iv733.i, 1 ; 2 uses
  %exitcond737.not.i = icmp eq i64 %indvars.iv.next734.i, %i.dr
  br i1 %exitcond737.not.i, label %.loopexit655.i, label %scalar.ph73, !llvm.loop !115

scalar.ph98:                                      ; preds = %scalar.ph98.preheader, %scalar.ph98
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph98 ], [ %indvars.iv.i.ph, %scalar.ph98.preheader ] ; 2 uses
  %.4552665.i = phi i32 [ %i.yr, %scalar.ph98 ], [ %.4552665.i.ph, %scalar.ph98.preheader ] ; 5 uses
  %.1556664.i = phi i32 [ %i.yq, %scalar.ph98 ], [ %.1556664.i.ph, %scalar.ph98.preheader ]
  %i.xo = or disjoint i32 %.4552665.i, 3
  %i.xp = zext i32 %i.xo to i64
  %i.xq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xp
  %i.xr = load i8, ptr %i.xq, align 1, !tbaa !77
  %i.xs = zext i8 %i.xr to i32
  %i.xt = shl nuw i32 %i.xs, 24                   ; 2 uses
  %i.xu = zext i32 %.4552665.i to i64
  %i.xv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xu
  %i.xw = load i8, ptr %i.xv, align 1, !tbaa !77
  %i.xx = zext i8 %i.xw to i32
  %i.xy = or disjoint i32 %.4552665.i, 1
  %i.xz = zext i32 %i.xy to i64
  %i.ya = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xz
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !77
  %i.yc = zext i8 %i.yb to i32
  %i.yd = shl nuw nsw i32 %i.yc, 8
  %i.ye = or disjoint i32 %.4552665.i, 2
  %i.yf = zext i32 %i.ye to i64
  %i.yg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yf
  %i.yh = load i8, ptr %i.yg, align 1, !tbaa !77
  %i.yi = zext i8 %i.yh to i32
  %i.yj = shl nuw nsw i32 %i.yi, 16
  %i.yk = or disjoint i32 %i.yd, %i.xx
  %i.yl = or disjoint i32 %i.yk, %i.yj
  %i.ym = or disjoint i32 %i.yl, %i.xt
  %i.yn = add i64 %indvars.iv.i, %i.gk
  %i.yo = and i64 %i.yn, 4294967295
  %i.yp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.yo
  store i32 %i.ym, ptr %i.yp, align 4, !tbaa !57
  %i.yq = or i32 %i.xt, %.1556664.i               ; 2 uses
  %i.yr = add i32 %.4552665.i, 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dr
  br i1 %exitcond.not.i, label %.loopexit655.i, label %scalar.ph98, !llvm.loop !116

.loopexit655.i:                                   ; preds = %scalar.ph98, %scalar.ph73, %scalar.ph, %bb.ak, %middle.block106, %middle.block80, %middle.block, %bb.ah
  %.2557.i = phi i32 [ %.0555679.i, %bb.ah ], [ %.0555679.i, %middle.block80 ], [ %.0555679.i, %scalar.ph ], [ %.0555679.i, %middle.block ], [ %.0555679.i, %scalar.ph73 ], [ %.0555679.i, %bb.ak ], [ %i.oj, %middle.block106 ], [ %i.yq, %scalar.ph98 ] ; 2 uses
  %indvars.iv.next748.i = add nuw nsw i64 %indvars.iv747.i, 1 ; 2 uses
  %exitcond751.not.i = icmp eq i64 %indvars.iv.next748.i, %i.dq
  br i1 %exitcond751.not.i, label %._crit_edge.loopexit.i, label %bb.ah

._crit_edge.loopexit.i:                           ; preds = %.loopexit655.i
  %i.ys = icmp ne i32 %.2557.i, 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader662.i
  %.0555.lcssa.i = phi i1 [ false, %.preheader662.i ], [ %i.ys, %._crit_edge.loopexit.i ] ; 2 uses
  %.not604.i = icmp eq ptr %.0528.i, null
  br i1 %.not604.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i
  %i.yt = shl nuw i32 1, %i.be
  %i.yu = sext i32 %i.yt to i64
  %i.yv = shl nsw i64 %i.yu, 2
  %i.yw = getelementptr i8, ptr %i.l, i64 16
  %.val.i623.i = load ptr, ptr %i.yw, align 8, !tbaa !90
  %i.yx = getelementptr i8, ptr %i.l, i64 72
  %.val3.i624.i = load i64, ptr %i.yx, align 8, !tbaa !91
  %i.yy = ptrtoint ptr %.0528.i to i64
  %i.yz = ptrtoint ptr %.val.i623.i to i64
  %i.za = add i64 %.val3.i624.i, %i.yz
  %i.zb = sub i64 %i.yy, %i.za
  %i.zc = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !92
  call void %i.zd(ptr noundef nonnull %i.l, i64 noundef %i.zb, i64 noundef range(i64 -8589934592, 8589934589) %i.yv) #13, !inline_history !93
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i
  call fastcc void @makebmp(ptr noundef nonnull @.str.18, ptr noundef %i.s, i32 noundef %.4..4..4..4..4..i, i32 noundef %i.bd, ptr noundef %i.do)
  %i.ze = icmp ne i16 %.14..14..14..14..14..i, 32
  %or.cond11.i = select i1 %i.ze, i1 true, i1 %.0555.lcssa.i
  %i.zf = mul i32 %i.cn, %i.bd                    ; 2 uses
  br i1 %or.cond11.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.zg = add i32 %.0559.i, %i.zf
  %i.zh = zext i32 %i.zg to i64
  %i.zi = mul nuw nsw i32 %i.ct, %i.bd
  %i.zj = zext nneg i32 %i.zi to i64
  %i.zk = load ptr, ptr %i.ad, align 8, !tbaa !75
  %i.zl = call ptr %i.zk(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.zh, i64 noundef range(i64 0, 4294967296) %i.zj, i32 noundef 0) #13, !inline_history !87 ; 2 uses
  %.not605.i = icmp eq ptr %i.zl, null
  br i1 %.not605.i, label %.preheader654.i, label %bb.ao

.preheader654.i:                                  ; preds = %bb.an
  %i.zm = add i32 %.8..8..8..8..8..i, -2
  %i.zn = icmp ult i32 %i.zm, -3
  %i.zo = icmp ne i32 %.4..4..4..4..4..i, 0
  %or.cond713.i = and i1 %i.zo, %i.zn
  br i1 %or.cond713.i, label %.preheader653.preheader.i, label %._crit_edge686.split.i

.preheader653.preheader.i:                        ; preds = %.preheader654.i
  %i.zp = zext nneg i32 %.4..4..4..4..4..i to i64 ; 4 uses
  %umax760.i = call i32 @llvm.umax.i32(i32 %i.bd, i32 1)
  %wide.trip.count761.i = zext nneg i32 %umax760.i to i64
  %min.iters.check111 = icmp ult i32 %.4..4..4..4..4..i, 8
  %n.vec113 = and i64 %i.zp, 504                  ; 3 uses
  %cmp.n119 = icmp eq i64 %n.vec113, %i.zp
  br label %.preheader653.i

.preheader653.i:                                  ; preds = %._crit_edge684.i, %.preheader653.preheader.i
  %indvars.iv757.i = phi i64 [ 0, %.preheader653.preheader.i ], [ %indvars.iv.next758.i, %._crit_edge684.i ] ; 2 uses
  %i.zq = mul nuw nsw i64 %indvars.iv757.i, %i.zp
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.zq ; 2 uses
  br i1 %min.iters.check111, label %scalar.ph110.preheader, label %vector.body114

vector.body114:                                   ; preds = %.preheader653.i, %vector.body114
  %index115 = phi i64 [ %index.next117, %vector.body114 ], [ 0, %.preheader653.i ] ; 2 uses
  %i.zr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %index115 ; 3 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.zr, align 4, !tbaa !57
  %wide.load116 = load <4 x i32>, ptr %i.zs, align 4, !tbaa !57
  %i.zt = or <4 x i32> %wide.load, splat (i32 -16777216)
  %i.zu = or <4 x i32> %wide.load116, splat (i32 -16777216)
  store <4 x i32> %i.zt, ptr %i.zr, align 4, !tbaa !57
  store <4 x i32> %i.zu, ptr %i.zs, align 4, !tbaa !57
  %index.next117 = add nuw i64 %index115, 8       ; 2 uses
  %i.zv = icmp eq i64 %index.next117, %n.vec113
  br i1 %i.zv, label %middle.block118, label %vector.body114, !llvm.loop !117

middle.block118:                                  ; preds = %vector.body114
  br i1 %cmp.n119, label %._crit_edge684.i, label %scalar.ph110.preheader

scalar.ph110.preheader:                           ; preds = %.preheader653.i, %middle.block118
  %indvars.iv752.i.ph = phi i64 [ 0, %.preheader653.i ], [ %n.vec113, %middle.block118 ]
  br label %scalar.ph110

scalar.ph110:                                     ; preds = %scalar.ph110.preheader, %scalar.ph110
  %indvars.iv752.i = phi i64 [ %indvars.iv.next753.i, %scalar.ph110 ], [ %indvars.iv752.i.ph, %scalar.ph110.preheader ] ; 2 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv752.i ; 2 uses
  %i.zw = load i32, ptr %gep.i, align 4, !tbaa !57
  %i.zx = or i32 %i.zw, -16777216
  store i32 %i.zx, ptr %gep.i, align 4, !tbaa !57
  %indvars.iv.next753.i = add nuw nsw i64 %indvars.iv752.i, 1 ; 2 uses
  %exitcond756.not.i = icmp eq i64 %indvars.iv.next753.i, %i.zp
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
  %i.zy = zext i32 %i.zf to i64
  %i.zz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.zy
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %._crit_edge686.split.i
  %.3558.i = phi i1 [ %.0555.lcssa.i, %bb.ap ], [ false, %bb.ao ], [ true, %._crit_edge686.split.i ]
  %.0537.i = phi i32 [ %i.cu, %bb.ap ], [ %i.ct, %bb.ao ], [ %i.ct, %._crit_edge686.split.i ]
  %.0527.i = phi ptr [ %i.zz, %bb.ap ], [ %i.zl, %bb.ao ], [ null, %._crit_edge686.split.i ]
  %or.cond13.i = select i1 %.not599.i, i1 %.3558.i, i1 false
  %or.cond13.not.i = xor i1 %or.cond13.i, true
  %i.aaa = add i32 %.8..8..8..8..8..i, -2
  %i.aab = icmp ult i32 %i.aaa, -3                ; 2 uses
  %or.cond714.i = select i1 %or.cond13.not.i, i1 %i.aab, i1 false
  %i.aac = icmp ne i32 %.4..4..4..4..4..i, 0      ; 2 uses
  %or.cond715.i = and i1 %i.aac, %or.cond714.i
  br i1 %or.cond715.i, label %.lr.ph692.preheader.i, label %.loopexit652.i

.lr.ph692.preheader.i:                            ; preds = %bb.aq
  %i.aad = zext nneg i32 %i.bd to i64
  %i.aae = zext nneg i32 %.4..4..4..4..4..i to i64 ; 2 uses
  %umax770.i = call i32 @llvm.umax.i32(i32 %i.bd, i32 1)
  %wide.trip.count771.i = zext nneg i32 %umax770.i to i64
  br label %.lr.ph692.i

.lr.ph692.i:                                      ; preds = %._crit_edge693.i, %.lr.ph692.preheader.i
  %indvars.iv767.i = phi i64 [ 0, %.lr.ph692.preheader.i ], [ %indvars.iv.next768.i, %._crit_edge693.i ] ; 3 uses
  %i.aaf = xor i64 %indvars.iv767.i, -1
  %i.aag = add nsw i64 %i.aaf, %i.aad
  %i.aah = mul i64 %i.aag, %i.aae
  %i.aai = trunc i64 %indvars.iv767.i to i32
  %i.aaj = mul i32 %.0537.i, %i.aai
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %.lr.ph692.i
  %indvars.iv763.i = phi i64 [ 0, %.lr.ph692.i ], [ %indvars.iv.next764.i, %bb.at ] ; 2 uses
  %.0531690.i = phi i8 [ 0, %.lr.ph692.i ], [ %.1532.i, %bb.at ]
  %.0533689.i = phi i32 [ 0, %.lr.ph692.i ], [ %i.aao, %bb.at ] ; 2 uses
  %.0535688.i = phi i32 [ %i.aaj, %.lr.ph692.i ], [ %.1536.i, %bb.at ] ; 3 uses
  %.not606.i = icmp eq i32 %.0533689.i, 0
  br i1 %.not606.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.aak = add i32 %.0535688.i, 1
  %i.aal = zext i32 %.0535688.i to i64
  %i.aam = getelementptr inbounds nuw i8, ptr %.0527.i, i64 %i.aal
  %i.aan = load i8, ptr %i.aam, align 1, !tbaa !77
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1536.i = phi i32 [ %.0535688.i, %bb.ar ], [ %i.aak, %bb.as ]
  %.1534.i = phi i32 [ %.0533689.i, %bb.ar ], [ 8, %bb.as ]
  %.1532.i = phi i8 [ %.0531690.i, %bb.ar ], [ %i.aan, %bb.as ] ; 2 uses
  %i.aao = add nsw i32 %.1534.i, -1               ; 2 uses
  %i.aap = zext i8 %.1532.i to i32
  %i.aaq = xor i32 %i.aap, -1
  %i.aar = lshr i32 %i.aaq, %i.aao
  %i.aas = trunc i32 %i.aar to i1
  %i.aat = select i1 %i.aas, i32 -16777216, i32 0
  %i.aau = add i64 %indvars.iv763.i, %i.aah
  %i.aav = and i64 %i.aau, 4294967295
  %i.aaw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.aav ; 2 uses
  %i.aax = load i32, ptr %i.aaw, align 4, !tbaa !57
  %i.aay = or i32 %i.aat, %i.aax
  store i32 %i.aay, ptr %i.aaw, align 4, !tbaa !57
  %indvars.iv.next764.i = add nuw nsw i64 %indvars.iv763.i, 1 ; 2 uses
  %exitcond766.not.i = icmp eq i64 %indvars.iv.next764.i, %i.aae
  br i1 %exitcond766.not.i, label %._crit_edge693.i, label %bb.ar

._crit_edge693.i:                                 ; preds = %bb.at
  %indvars.iv.next768.i = add nuw nsw i64 %indvars.iv767.i, 1 ; 2 uses
  %exitcond772.not.i = icmp eq i64 %indvars.iv.next768.i, %wide.trip.count771.i
  br i1 %exitcond772.not.i, label %.loopexit652.i, label %.lr.ph692.i

.loopexit652.i:                                   ; preds = %._crit_edge693.i, %bb.aq
  call fastcc void @makebmp(ptr noundef nonnull @.str.21, ptr noundef %i.s, i32 noundef %.4..4..4..4..4..i, i32 noundef %i.bd, ptr noundef %i.do)
  %or.cond716.i = and i1 %i.aac, %i.aab
  br i1 %or.cond716.i, label %.preheader650.preheader.i, label %._crit_edge700.split.i

.preheader650.preheader.i:                        ; preds = %.loopexit652.i
  %i.aaz = zext nneg i32 %.4..4..4..4..4..i to i64 ; 4 uses
  %umax781.i = call i32 @llvm.umax.i32(i32 %i.bd, i32 1)
  %wide.trip.count782.i = zext nneg i32 %umax781.i to i64
  %min.iters.check122 = icmp ult i32 %.4..4..4..4..4..i, 4
  %n.vec124 = and i64 %i.aaz, 508                 ; 3 uses
  %cmp.n130 = icmp eq i64 %n.vec124, %i.aaz
  br label %.preheader650.i

.preheader650.i:                                  ; preds = %._crit_edge698.i, %.preheader650.preheader.i
  %indvars.iv778.i = phi i64 [ 0, %.preheader650.preheader.i ], [ %indvars.iv.next779.i, %._crit_edge698.i ] ; 2 uses
  %i.aba = mul nuw nsw i64 %indvars.iv778.i, %i.aaz
  %invariant.gep825.i = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.aba ; 2 uses
  br i1 %min.iters.check122, label %scalar.ph121.preheader, label %vector.body125

vector.body125:                                   ; preds = %.preheader650.i, %vector.body125
  %index126 = phi i64 [ %index.next128, %vector.body125 ], [ 0, %.preheader650.i ] ; 2 uses
  %i.abb = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep825.i, i64 %index126 ; 2 uses
  %wide.load127 = load <4 x i32>, ptr %i.abb, align 4, !tbaa !57 ; 4 uses
  %i.abc = lshr <4 x i32> %wide.load127, splat (i32 24) ; 4 uses
  %i.abd = lshr <4 x i32> %wide.load127, splat (i32 16)
  %i.abe = and <4 x i32> %i.abd, splat (i32 255)
  %i.abf = lshr <4 x i32> %wide.load127, splat (i32 8)
  %i.abg = and <4 x i32> %i.abf, splat (i32 255)
  %i.abh = and <4 x i32> %wide.load127, splat (i32 255)
  %i.abi = xor <4 x i32> %i.abc, splat (i32 255)  ; 3 uses
  %i.abj = mul nuw nsw <4 x i32> %i.abe, %i.abc
  %i.abk = trunc nuw <4 x i32> %i.abj to <4 x i16>
  %i.abl = udiv <4 x i16> %i.abk, splat (i16 255)
  %i.abm = zext nneg <4 x i16> %i.abl to <4 x i32>
  %i.abn = add nuw nsw <4 x i32> %i.abi, %i.abm
  %i.abo = mul nuw nsw <4 x i32> %i.abg, %i.abc
  %i.abp = trunc nuw <4 x i32> %i.abo to <4 x i16>
  %i.abq = udiv <4 x i16> %i.abp, splat (i16 255)
  %i.abr = zext nneg <4 x i16> %i.abq to <4 x i32>
  %i.abs = add nuw nsw <4 x i32> %i.abi, %i.abr
  %i.abt = mul nuw nsw <4 x i32> %i.abc, %i.abh
  %i.abu = trunc nuw <4 x i32> %i.abt to <4 x i16>
  %i.abv = udiv <4 x i16> %i.abu, splat (i16 255)
  %i.abw = zext nneg <4 x i16> %i.abv to <4 x i32>
  %i.abx = add nuw nsw <4 x i32> %i.abi, %i.abw
  %i.aby = shl nuw nsw <4 x i32> %i.abn, splat (i32 16)
  %i.abz = shl nuw nsw <4 x i32> %i.abs, splat (i32 8)
  %i.aca = or <4 x i32> %i.abx, %i.abz
  %i.acb = or <4 x i32> %i.aca, %i.aby
  %i.acc = or <4 x i32> %i.acb, splat (i32 -16777216)
  store <4 x i32> %i.acc, ptr %i.abb, align 4, !tbaa !57
  %index.next128 = add nuw i64 %index126, 4       ; 2 uses
  %i.acd = icmp eq i64 %index.next128, %n.vec124
  br i1 %i.acd, label %middle.block129, label %vector.body125, !llvm.loop !119

middle.block129:                                  ; preds = %vector.body125
  br i1 %cmp.n130, label %._crit_edge698.i, label %scalar.ph121.preheader

scalar.ph121.preheader:                           ; preds = %.preheader650.i, %middle.block129
  %indvars.iv773.i.ph = phi i64 [ 0, %.preheader650.i ], [ %n.vec124, %middle.block129 ]
  br label %scalar.ph121

scalar.ph121:                                     ; preds = %scalar.ph121.preheader, %scalar.ph121
  %indvars.iv773.i.a = phi i64 [ %indvars.iv.next774.i.a, %scalar.ph121 ], [ %indvars.iv773.i.ph, %scalar.ph121.preheader ] ; 2 uses
  %gep826.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep825.i, i64 %indvars.iv773.i.a ; 2 uses
  %i.ace = load i32, ptr %gep826.i, align 4, !tbaa !57 ; 4 uses
  %i.acf = lshr i32 %i.ace, 24                    ; 4 uses
  %i.acg = lshr i32 %i.ace, 16
  %i.ach = and i32 %i.acg, 255
  %i.aci = lshr i32 %i.ace, 8
  %i.acj = and i32 %i.aci, 255
  %i.ack = and i32 %i.ace, 255
  %i.acl = xor i32 %i.acf, 255                    ; 3 uses
  %i.acm = mul nuw nsw i32 %i.ach, %i.acf
  %.lhs.trunc.i = trunc nuw i32 %i.acm to i16
  %i.acn = udiv i16 %.lhs.trunc.i, 255
  %.zext.i = zext nneg i16 %i.acn to i32
  %i.aco = add nuw nsw i32 %i.acl, %.zext.i
  %i.acp = mul nuw nsw i32 %i.acj, %i.acf
  %.lhs.trunc634.i = trunc nuw i32 %i.acp to i16
  %i.acq = udiv i16 %.lhs.trunc634.i, 255
  %.zext635.i = zext nneg i16 %i.acq to i32
  %i.acr = add nuw nsw i32 %i.acl, %.zext635.i
  %i.acs = mul nuw nsw i32 %i.acf, %i.ack
  %.lhs.trunc636.i = trunc nuw i32 %i.acs to i16
  %i.act = udiv i16 %.lhs.trunc636.i, 255
  %.zext637.i = zext nneg i16 %i.act to i32
  %i.acu = add nuw nsw i32 %i.acl, %.zext637.i
  %i.acv = shl nuw nsw i32 %i.aco, 16
  %i.acw = shl nuw nsw i32 %i.acr, 8
  %i.acx = or i32 %i.acu, %i.acw
  %i.acy = or i32 %i.acx, %i.acv
  %i.acz = or i32 %i.acy, -16777216
  store i32 %i.acz, ptr %gep826.i, align 4, !tbaa !57
  %indvars.iv.next774.i.a = add nuw nsw i64 %indvars.iv773.i.a, 1 ; 2 uses
  %exitcond777.not.i = icmp eq i64 %indvars.iv.next774.i.a, %i.aaz
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
  %i.ada = icmp ugt i32 %.4..4..4..4..4..i, 32
  br i1 %i.ada, label %.preheader647.i, label %.loopexit649.i

.preheader647.i:                                  ; preds = %.preheader648.i, %._crit_edge703.i
  %.0538705.i = phi i32 [ %i.aet, %._crit_edge703.i ], [ %.4..4..4..4..4..i, %.preheader648.i ] ; 6 uses
  %.0541704.i = phi i32 [ %i.aeu, %._crit_edge703.i ], [ %i.bd, %.preheader648.i ] ; 3 uses
  %.not725.i = icmp eq i32 %.0541704.i, 0
  br i1 %.not725.i, label %._crit_edge703.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader647.i
  %i.adb = zext nneg i32 %.0538705.i to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.av, %.preheader.preheader.i
  %.4565702.i = phi i32 [ %i.aer, %bb.av ], [ 0, %.preheader.preheader.i ] ; 4 uses
  %i.adc = mul i32 %.4565702.i, %.0538705.i
  %i.add = or disjoint i32 %.4565702.i, 1
  %i.ade = mul i32 %i.add, %.0538705.i
  %i.adf = lshr exact i32 %.4565702.i, 1
  %i.adg = mul i32 %i.adf, %.0538705.i
  %i.adh = lshr i32 %i.adg, 1
  %i.adi = zext nneg i32 %i.adh to i64
  %invariant.gep827.i = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.adi
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.preheader.i
  %indvars.iv784.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next785.i, %bb.au ] ; 3 uses
  %i.adj = trunc nuw nsw i64 %indvars.iv784.i to i32 ; 2 uses
  %i.adk = add i32 %i.adc, %i.adj                 ; 2 uses
  %i.adl = zext i32 %i.adk to i64
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.adl
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !57 ; 2 uses
  %i.ado = or disjoint i32 %i.adk, 1
  %i.adp = zext i32 %i.ado to i64
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.adp
  %i.adr = load i32, ptr %i.adq, align 4, !tbaa !57 ; 2 uses
  %i.ads = add i32 %i.ade, %i.adj                 ; 2 uses
  %i.adt = zext i32 %i.ads to i64
  %i.adu = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.adt
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !57 ; 2 uses
  %i.adw = add i32 %i.ads, 1
  %i.adx = zext i32 %i.adw to i64
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.adx
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !57 ; 2 uses
  %i.aea = xor i32 %i.adr, %i.adn
  %i.aeb = lshr i32 %i.aea, 1
  %i.aec = and i32 %i.aeb, 2139062143
  %i.aed = and i32 %i.adr, %i.adn
  %i.aee = add i32 %i.aec, %i.aed                 ; 2 uses
  %i.aef = xor i32 %i.adz, %i.adv
  %i.aeg = lshr i32 %i.aef, 1
  %i.aeh = and i32 %i.aeg, 2139062143
  %i.aei = and i32 %i.adz, %i.adv
  %i.aej = add i32 %i.aeh, %i.aei                 ; 2 uses
  %i.aek = xor i32 %i.aej, %i.aee
  %i.ael = lshr i32 %i.aek, 1
  %i.aem = and i32 %i.ael, 2139062143
  %i.aen = and i32 %i.aej, %i.aee
  %i.aeo = add i32 %i.aem, %i.aen
  %i.aep = lshr exact i64 %indvars.iv784.i, 1
  %gep828.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep827.i, i64 %i.aep
  store i32 %i.aeo, ptr %gep828.i, align 4, !tbaa !57
  %indvars.iv.next785.i = add nuw nsw i64 %indvars.iv784.i, 2 ; 2 uses
  %i.aeq = icmp samesign ult i64 %indvars.iv.next785.i, %i.adb
  br i1 %i.aeq, label %bb.au, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.aer = add i32 %.4565702.i, 2                 ; 2 uses
  %i.aes = icmp ult i32 %i.aer, %.0541704.i
  br i1 %i.aes, label %.preheader.i, label %._crit_edge703.i

._crit_edge703.i:                                 ; preds = %bb.av, %.preheader647.i
  %i.aet = lshr i32 %.0538705.i, 1                ; 3 uses
  %i.aeu = lshr i32 %.0541704.i, 1                ; 3 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, i32 noundef %i.aet, i32 noundef %i.aeu) #13
  %i.aev = icmp ugt i32 %.0538705.i, 65
  br i1 %i.aev, label %.preheader647.i, label %.loopexit649.i

bb.aw:                                            ; preds = %._crit_edge700.split.i
  %i.aew = add nsw i32 %.4..4..4..4..4..i, -32
  %i.aex = call i32 @llvm.abs.i32(i32 %i.aew, i1 true)
  %i.aey = add nsw i32 %i.bd, -32
  %i.aez = call i32 @llvm.abs.i32(i32 %i.aey, i1 true)
  %i.afa = add nuw nsw i32 %i.aez, %i.aex
  %i.afb = add nsw i32 %.4..4..4..4..4..i, -24
  %i.afc = call i32 @llvm.abs.i32(i32 %i.afb, i1 true)
  %i.afd = add nsw i32 %i.bd, -24
  %i.afe = call i32 @llvm.abs.i32(i32 %i.afd, i1 true)
  %i.aff = add nuw nsw i32 %i.afe, %i.afc         ; 2 uses
  %i.afg = icmp samesign ult i32 %i.afa, %i.aff
  br i1 %i.afg, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.afh = add nsw i32 %.4..4..4..4..4..i, -16
  %i.afi = call i32 @llvm.abs.i32(i32 %i.afh, i1 true)
  %i.afj = add nsw i32 %i.bd, -16
  %i.afk = call i32 @llvm.abs.i32(i32 %i.afj, i1 true)
  %i.afl = add nuw nsw i32 %i.afk, %i.afi
  %i.afm = icmp samesign ult i32 %i.aff, %i.afl
  %..i = select i1 %i.afm, i32 24, i32 16
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.0525.i = phi i32 [ 32, %bb.aw ], [ %..i, %bb.ax ] ; 8 uses
  %i.afn = shl nuw nsw i32 %.0525.i, 2
  %i.afo = mul nuw nsw i32 %i.afn, %.0525.i
  %i.afp = zext nneg i32 %i.afo to i64
  %i.afq = call ptr @cli_max_malloc(i64 noundef %i.afp) #13 ; 3 uses
  %.not608.not.i = icmp eq ptr %i.afq, null
  br i1 %.not608.not.i, label %.thread.i, label %bb.az

.thread.i:                                        ; preds = %bb.ay
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.23) #13
  br label %parseicon.exit

bb.az:                                            ; preds = %bb.ay
  %i.afr = uitofp nneg i32 %.4..4..4..4..4..i to double
  %i.afs = insertelement <2 x double> poison, double %i.afr, i64 0
  %i.aft = uitofp nneg i32 %i.bd to double
  %i.afu = insertelement <2 x double> %i.afs, double %i.aft, i64 1
  %i.afv = uitofp nneg i32 %.0525.i to double
  %i.afw = insertelement <2 x double> poison, double %i.afv, i64 0
  %i.afx = shufflevector <2 x double> %i.afw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.afy = fdiv <2 x double> %i.afu, %i.afx       ; 2 uses
  %i.afz = extractelement <2 x double> %i.afy, i64 0 ; 3 uses
  %i.aga = extractelement <2 x double> %i.afy, i64 1 ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.24, i32 noundef %.0525.i, i32 noundef %.0525.i, double noundef %i.afz, double noundef %i.aga) #13
  %i.agb = zext nneg i32 %.0525.i to i64          ; 3 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %bb.az
  %indvars.iv792.i = phi i64 [ 0, %bb.az ], [ %indvars.iv.next793.i, %bb.bc ] ; 3 uses
  %i.agc = trunc nuw nsw i64 %indvars.iv792.i to i32
  %i.agd = uitofp nneg i32 %i.agc to double
  %i.age = fmul double %i.aga, %i.agd
  %i.agf = fptoui double %i.age to i32
  %i.agg = mul i32 %.4..4..4..4..4..i, %i.agf     ; 2 uses
  %i.agh = mul nuw nsw i64 %indvars.iv792.i, %i.agb
  %invariant.gep829.i = getelementptr inbounds nuw [4 x i8], ptr %i.afq, i64 %i.agh ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bb, %bb.ba
  %indvars.iv787.i = phi i64 [ 0, %bb.ba ], [ %indvars.iv.next788.i.1, %bb.bb ] ; 4 uses
  %i.agi = trunc nuw nsw i64 %indvars.iv787.i to i32
  %i.agj = uitofp nneg i32 %i.agi to double
  %i.agk = call double @llvm.fmuladd.f64(double %i.agj, double %i.afz, double 5.000000e-01)
  %i.agl = fptoui double %i.agk to i32
  %i.agm = add i32 %i.agg, %i.agl
  %i.agn = zext i32 %i.agm to i64
  %i.ago = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.agn
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !57
  %gep830.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep829.i, i64 %indvars.iv787.i
  store i32 %i.agp, ptr %gep830.i, align 4, !tbaa !57
  %indvars.iv.next788.i = or disjoint i64 %indvars.iv787.i, 1 ; 2 uses
  %i.agq = trunc nuw nsw i64 %indvars.iv.next788.i to i32
  %i.agr = uitofp nneg i32 %i.agq to double
  %i.ags = call double @llvm.fmuladd.f64(double %i.agr, double %i.afz, double 5.000000e-01)
  %i.agt = fptoui double %i.ags to i32
  %i.agu = add i32 %i.agg, %i.agt
  %i.agv = zext i32 %i.agu to i64
  %i.agw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.agv
  %i.agx = load i32, ptr %i.agw, align 4, !tbaa !57
  %gep830.i.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep829.i, i64 %indvars.iv.next788.i
  store i32 %i.agx, ptr %gep830.i.1, align 4, !tbaa !57
  %indvars.iv.next788.i.1 = add nuw nsw i64 %indvars.iv787.i, 2 ; 2 uses
  %exitcond791.not.i.1 = icmp eq i64 %indvars.iv.next788.i.1, %i.agb
  br i1 %exitcond791.not.i.1, label %bb.bc, label %bb.bb

bb.bc:                                            ; preds = %bb.bb
  %indvars.iv.next793.i = add nuw nsw i64 %indvars.iv792.i, 1 ; 2 uses
  %exitcond796.not.i = icmp eq i64 %indvars.iv.next793.i, %i.agb
  br i1 %exitcond796.not.i, label %bb.bd, label %bb.ba

bb.bd:                                            ; preds = %bb.bc
  call void @free(ptr noundef nonnull %i.do) #13
  br label %.loopexit649.i

.loopexit649.i:                                   ; preds = %._crit_edge703.i, %bb.bd, %.preheader648.i, %._crit_edge700.split.i
  %.2543.i = phi i32 [ %i.bd, %._crit_edge700.split.i ], [ %.0525.i, %bb.bd ], [ %i.bd, %.preheader648.i ], [ %i.aeu, %._crit_edge703.i ]
  %.2540.i = phi i32 [ %.4..4..4..4..4..i, %._crit_edge700.split.i ], [ %.0525.i, %bb.bd ], [ %.4..4..4..4..4..i, %.preheader648.i ], [ %i.aet, %._crit_edge703.i ] ; 11 uses
  %.1530.i = phi ptr [ %i.do, %._crit_edge700.split.i ], [ %i.afq, %bb.bd ], [ %i.do, %.preheader648.i ], [ %i.do, %._crit_edge703.i ] ; 3 uses
  call fastcc void @makebmp(ptr noundef nonnull @.str.25, ptr noundef %i.s, i32 noundef %.2540.i, i32 noundef %.2543.i, ptr noundef %.1530.i)
  call fastcc void @getmetrics(i32 noundef %.2540.i, ptr noundef %.1530.i, ptr noundef %6, ptr noundef %i.s)
  call void @free(ptr noundef %.1530.i) #13
  %i.agy = lshr i32 %.2540.i, 3                   ; 2 uses
  %i.agz = add nsw i32 %i.agy, -2
  %i.aha = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ahb = zext nneg i32 %i.agz to i64            ; 2 uses
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.aha, i64 %i.ahb
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !57 ; 2 uses
  %.not726.i = icmp eq i32 %i.ahd, 0
  br i1 %.not726.i, label %parseicon.exit, label %.lr.ph712.i
end_hunk_0
