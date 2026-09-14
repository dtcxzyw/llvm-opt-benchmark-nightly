Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pe_icons?download=true
inline.NumInlined: 21
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 27
begin_hunk_0_@cli_groupiconscan:bb.a
  %i.bw = load i32, ptr %i.au, align 4, !tbaa !53 ; 2 uses
  %.not76 = icmp eq i32 %i.bw, 0
  br i1 %.not76, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.bx = load i32, ptr %i.at, align 4, !tbaa !54
  %i.by = icmp eq i32 %i.ax, %i.bx
  br i1 %i.by, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bz = load i16, ptr %i.bg, align 4, !tbaa !89
  %i.ca = zext i16 %i.bz to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.11, i32 noundef %i.ca, i32 noundef %1) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cb = load i32, ptr %i.av, align 8, !tbaa !29
  %i.cc = add i32 %i.cb, 1                        ; 2 uses
  store i32 %i.cc, ptr %i.av, align 8, !tbaa !29
  %i.cd = load i32, ptr %i.aw, align 4, !tbaa !52
  %.not77 = icmp ult i32 %i.cc, %i.cd
  br i1 %.not77, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 24, ptr %i.au, align 4, !tbaa !53
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
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !53
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
  %i.d = load ptr, ptr %0, align 8, !tbaa !28     ; 4 uses
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
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !75   ; 3 uses
  %.not586.i = icmp eq ptr %i.j, null
  br i1 %.not586.i, label %parseicon.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 19 uses
  %i.m = load i8, ptr @cli_debug_flag, align 1, !tbaa !74
  %.not587.i = icmp eq i8 %i.m, 0
  br i1 %.not587.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !113
  %.not588.i = icmp eq i32 %i.o, 0
  br i1 %.not588.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114  ; 2 uses
  %.not589.i = icmp eq ptr %i.q, null
  br i1 %.not589.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @cli_gettmpdir() #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  %i.s = phi ptr [ %i.r, %bb.g ], [ null, %bb.d ], [ null, %bb.e ], [ %i.q, %bb.f ] ; 4 uses
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 88 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !72
  %i.aa = call i32 @cli_rawaddr(i32 noundef %4, ptr noundef %i.t, i16 noundef zeroext %i.v, ptr noundef nonnull %i.a, i64 noundef %i.x, i32 noundef %i.z) #13
  %i.ab = load i32, ptr %i.a, align 4, !tbaa !56
  %.not590.i = icmp eq i32 %i.ab, 0
  br i1 %.not590.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 104 ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.af = call ptr %i.ae(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.ac, i64 noundef 4, i32 noundef 0) #13, !inline_history !90 ; 2 uses
  %.not591.i = icmp eq ptr %i.af, null
  br i1 %.not591.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !58
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !58
  br label %parseicon.exit

bb.k:                                             ; preds = %bb.i
  %i.aj = load i32, ptr %i.af, align 1, !tbaa !74
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !68
  %i.al = load i16, ptr %i.u, align 8, !tbaa !69
  %i.am = load i64, ptr %i.w, align 8, !tbaa !71
  %i.an = load i32, ptr %i.y, align 8, !tbaa !72
  %i.ao = call i32 @cli_rawaddr(i32 noundef %i.aj, ptr noundef %i.ak, i16 noundef zeroext %i.al, ptr noundef nonnull %i.a, i64 noundef %i.am, i32 noundef %i.an) #13 ; 2 uses
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !56
  %.not592.i = icmp eq i32 %i.ap, 0
  br i1 %.not592.i, label %bb.l, label %fmap_readn.exit.thread.i

bb.l:                                             ; preds = %bb.k
  %i.aq = zext i32 %i.ao to i64                   ; 3 uses
  %i.ar = load i64, ptr %i.w, align 8, !tbaa !71  ; 2 uses
  %or.cond640.not.i = icmp ugt i64 %i.ar, %i.aq
  br i1 %or.cond640.not.i, label %bb.m, label %fmap_readn.exit.thread.i

bb.m:                                             ; preds = %bb.l
  %i.as = sub nuw i64 %i.ar, %i.aq                ; 2 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.as, i64 40) ; 2 uses
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.au = call ptr %i.at(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.aq, i64 noundef range(i64 0, 4294967296) %spec.select.i.i, i32 noundef 0) #13, !inline_history !91 ; 2 uses
  %.not26.i.i = icmp eq ptr %i.au, null
  br i1 %.not26.i.i, label %fmap_readn.exit.thread.i, label %fmap_readn.exit.i

fmap_readn.exit.i:                                ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %5, ptr nonnull align 1 %i.au, i64 %spec.select.i.i, i1 false)
  %.not593.i = icmp ugt i64 %i.as, 39
  br i1 %.not593.i, label %bb.n, label %fmap_readn.exit.thread.i

fmap_readn.exit.thread.i:                         ; preds = %fmap_readn.exit.i, %bb.m, %bb.l, %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !59
  %i.ax = add i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !59
  br label %parseicon.exit

bb.n:                                             ; preds = %fmap_readn.exit.i
  %.0..0..0..0..0..i = load i32, ptr %5, align 4, !tbaa !74 ; 2 uses
  %i.ay = icmp ult i32 %.0..0..0..0..0..i, 40
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !60
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.az, align 8, !tbaa !60
  br label %parseicon.exit

bb.p:                                             ; preds = %bb.n
  %i.bc = add i32 %.0..0..0..0..0..i, %i.ao       ; 5 uses
  %.4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %.4..4..4..4..4..i = load i32, ptr %.4..4..4..4..4..sroa_idx, align 4, !tbaa !74 ; 41 uses
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.8..8..8..8..8..i = load i32, ptr %.8..8..8..8..8..sroa_idx, align 4, !tbaa !74 ; 4 uses
  %i.bd = sdiv i32 %.8..8..8..8..8..i, 2          ; 29 uses
  %.14..14..14..14..14..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 14
  %.14..14..14..14..14..i = load i16, ptr %.14..14..14..14..14..sroa_idx, align 2, !tbaa !74 ; 5 uses
  %i.be = sext i16 %.14..14..14..14..14..i to i32 ; 8 uses
  %i.bf = add i32 %.4..4..4..4..4..i, -257
  %i.bg = icmp ult i32 %i.bf, -241
  %i.bh = add nsw i32 %i.bd, -257
  %i.bi = icmp ult i32 %i.bh, -241
  %or.cond5.i = select i1 %i.bg, i1 true, i1 %i.bi
  br i1 %or.cond5.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !61
  %i.bl = add i32 %i.bk, 1
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !61
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
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !57
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !57
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
  %i.ce = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.cf = call ptr %i.ce(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.ca, i64 noundef range(i64 -8589934592, 8589934589) %i.cd, i32 noundef 1) #13, !inline_history !92 ; 2 uses
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
  %i.cz = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.da = call ptr %i.cz(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.cv, i64 noundef range(i64 0, 4294967296) %i.cy, i32 noundef 0) #13, !inline_history !90 ; 70 uses
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
  %.val.i.i = load ptr, ptr %i.de, align 8, !tbaa !115
  %i.df = getelementptr i8, ptr %i.l, i64 72
  %.val3.i.i = load i64, ptr %i.df, align 8, !tbaa !116
  %i.dg = ptrtoint ptr %.0528.i to i64
  %i.dh = ptrtoint ptr %.val.i.i to i64
  %i.di = add i64 %.val3.i.i, %i.dh
  %i.dj = sub i64 %i.dg, %i.di
  %i.dk = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !117
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
  %narrow132.a = add nuw nsw i32 %i.dx, %i.cm
  %i.dy = shl nuw nsw i64 %i.dr, 1
  %scevgep56 = getelementptr i8, ptr %i.da, i64 %i.dy
  %i.dz = add nsw i64 %i.dr, -1                   ; 4 uses
  %i.ea = lshr i32 %i.ci, 3
  %i.eb = and i32 %i.ea, 536870908
  %narrow133.a = add nuw nsw i32 %i.eb, %i.cm
  %i.ec = zext nneg i32 %narrow133.a to i64
  %i.ed = shl nuw nsw i64 %i.dr, 2
  %scevgep65 = getelementptr i8, ptr %i.do, i64 %i.ed
  %i.ee = lshr i32 %i.ci, 3
  %i.ef = and i32 %i.ee, 536870908
  %narrow134.a = add nuw nsw i32 %i.ef, %i.cm
  %i.eg = mul nuw nsw i64 %i.dr, 3
  %scevgep68 = getelementptr i8, ptr %i.da, i64 %i.eg
  %i.eh = add nsw i64 %i.dr, -1                   ; 3 uses
  %i.ei = lshr i32 %i.ci, 3
  %i.ej = and i32 %i.ei, 536870908
  %narrow135.a = add nuw nsw i32 %i.ej, %i.cm
  %i.ek = zext nneg i32 %narrow135.a to i64
  %i.el = shl nuw nsw i64 %i.dr, 2                ; 2 uses
  %scevgep90.a = getelementptr i8, ptr %i.do, i64 %i.el
  %i.em = lshr i32 %i.ci, 3
  %i.en = and i32 %i.em, 536870908
  %narrow136 = add nuw nsw i32 %i.en, %i.cm
  %scevgep93.a = getelementptr i8, ptr %i.da, i64 %i.el
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
  %.val.i621.i = load ptr, ptr %i.fg, align 8, !tbaa !115
  %i.fh = getelementptr i8, ptr %i.l, i64 72
  %.val3.i622.i = load i64, ptr %i.fh, align 8, !tbaa !116
  %i.fi = ptrtoint ptr %.0528.i to i64
  %i.fj = ptrtoint ptr %.val.i621.i to i64
  %i.fk = add i64 %.val3.i622.i, %i.fj
  %i.fl = sub i64 %i.fi, %i.fk
  %i.fm = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !117
  call void %i.fn(ptr noundef nonnull %i.l, i64 noundef %i.fl, i64 noundef range(i64 -8589934592, 8589934589) %i.ff) #13, !inline_history !93
  br label %parseicon.exit

bb.ah:                                            ; preds = %.loopexit655.i, %.lr.ph680.i
  %indvars.iv747.i = phi i64 [ 0, %.lr.ph680.i ], [ %indvars.iv.next748.i, %.loopexit655.i ] ; 18 uses
  %.0555679.i = phi i32 [ 0, %.lr.ph680.i ], [ %.2557.i, %.loopexit655.i ] ; 10 uses
  %i.fo = trunc i64 %indvars.iv747.i to i32
  %i.fp = xor i32 %i.fo, -1
  %i.fq = add i32 %i.bd, %i.fp
  %i.fr = mul i32 %.4..4..4..4..4..i, %i.fq
  %i.fs = zext i32 %i.fr to i64
  %i.ft = shl nuw nsw i64 %i.fs, 2                ; 2 uses
  %scevgep89 = getelementptr i8, ptr %i.do, i64 %i.ft
  %scevgep91.a = getelementptr i8, ptr %scevgep90.a, i64 %i.ft
  %i.fu = trunc i64 %indvars.iv747.i to i32
  %i.fv = mul i32 %narrow136, %i.fu
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %scevgep92 = getelementptr i8, ptr %i.da, i64 %i.fw
  %scevgep94 = getelementptr i8, ptr %scevgep93.a, i64 %i.fw
  %i.fx = trunc i64 %indvars.iv747.i to i32
  %i.fy = xor i32 %i.fx, -1
  %i.fz = add i32 %i.bd, %i.fy
  %i.ga = mul i32 %.4..4..4..4..4..i, %i.fz
  %i.gb = mul i64 %indvars.iv747.i, %i.ek         ; 3 uses
  %i.gc = trunc i64 %i.gb to i32
  %i.gd = trunc i64 %i.gb to i32
  %i.ge = trunc i64 %i.gb to i32
  %i.gf = trunc i64 %indvars.iv747.i to i32
  %i.gg = xor i32 %i.gf, -1
  %i.gh = add i32 %i.bd, %i.gg
  %i.gi = mul i32 %.4..4..4..4..4..i, %i.gh
  %i.gj = zext i32 %i.gi to i64
  %i.gk = shl nuw nsw i64 %i.gj, 2                ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.do, i64 %i.gk
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %i.gk
  %i.gl = trunc i64 %indvars.iv747.i to i32
  %i.gm = mul i32 %narrow134.a, %i.gl
  %i.gn = zext i32 %i.gm to i64                   ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.da, i64 %i.gn
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.gn
  %i.go = trunc i64 %indvars.iv747.i to i32
  %i.gp = xor i32 %i.go, -1
  %i.gq = add i32 %i.bd, %i.gp
  %i.gr = mul i32 %.4..4..4..4..4..i, %i.gq
  %i.gs = mul i64 %indvars.iv747.i, %i.ec         ; 2 uses
  %i.gt = trunc i64 %i.gs to i32
  %i.gu = trunc i64 %i.gs to i32
  %i.gv = trunc i64 %indvars.iv747.i to i32
  %i.gw = xor i32 %i.gv, -1
  %i.gx = add i32 %i.bd, %i.gw
  %i.gy = mul i32 %.4..4..4..4..4..i, %i.gx
  %i.gz = zext i32 %i.gy to i64
  %i.ha = shl nuw nsw i64 %i.gz, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.do, i64 %i.ha
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.ha
  %i.hb = trunc i64 %indvars.iv747.i to i32
  %i.hc = mul i32 %narrow132.a, %i.hb
  %i.hd = zext i32 %i.hc to i64                   ; 2 uses
  %scevgep55 = getelementptr i8, ptr %i.da, i64 %i.hd
  %scevgep57 = getelementptr i8, ptr %scevgep56, i64 %i.hd
  %7 = trunc i64 %indvars.iv747.i to i32
  %8 = xor i32 %7, -1
  %9 = add i32 %i.bd, %8
  %10 = mul i32 %.4..4..4..4..4..i, %9
  %11 = trunc i64 %indvars.iv747.i to i32
  %12 = mul i32 %narrow, %11
  %i.he = trunc i64 %indvars.iv747.i to i32
  %i.hf = mul i32 %i.cn, %i.he                    ; 19 uses
  switch i16 %.14..14..14..14..14..i, label %.loopexit655.i [
    i16 1, label %.lr.ph676.i
    i16 4, label %.lr.ph676.i
    i16 8, label %.lr.ph676.i
    i16 16, label %.lr.ph671.i
    i16 24, label %.lr.ph668.i
    i16 32, label %.lr.ph.i
  ]

.lr.ph.i:                                         ; preds = %bb.ah
  %i.hg = xor i64 %indvars.iv747.i, -1
  %i.hh = add nsw i64 %i.hg, %i.dq
  %i.hi = mul i64 %i.hh, %i.dr                    ; 2 uses
  br i1 %min.iters.check99, label %scalar.ph98.preheader, label %vector.scevcheck84

vector.scevcheck84:                               ; preds = %.lr.ph.i
  %i.hj = xor i32 %i.ga, -1
  %i.hk = icmp ult i32 %i.hj, %i.eo
  %i.hl = xor i32 %i.gc, -4
  %i.hm = icmp ult i32 %i.hl, %mul.result86
  %i.hn = xor i32 %i.hf, -1
  %i.ho = icmp ugt i32 %mul.result86, %i.hn
  %i.hp = or i1 %i.ho, %mul.overflow87
  %i.hq = xor i32 %i.gd, -2
  %i.hr = icmp ult i32 %i.hq, %mul.result86
  %i.hs = xor i32 %i.ge, -3
  %i.ht = icmp ult i32 %i.hs, %mul.result86
  %i.hu = or i1 %i.hm, %i.hk
  %i.hv = or i1 %i.hu, %i.hp
  %i.hw = or i1 %i.hr, %i.hv
  %i.hx = or i1 %i.ht, %i.hw
  br i1 %i.hx, label %scalar.ph98.preheader, label %vector.memcheck88

vector.memcheck88:                                ; preds = %vector.scevcheck84
  %bound095 = icmp ult ptr %scevgep89, %scevgep94
  %bound196 = icmp ult ptr %scevgep92, %scevgep91.a
  %found.conflict97 = and i1 %bound095, %bound196
  br i1 %found.conflict97, label %scalar.ph98.preheader, label %vector.ph100

vector.ph100:                                     ; preds = %vector.memcheck88
  %i.hy = add i32 %i.hf, %i.er
  %i.hz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0555679.i, i64 0
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next105, %vector.body102 ] ; 3 uses
  %vec.phi = phi <4 x i32> [ %i.hz, %vector.ph100 ], [ %i.pe, %vector.body102 ]
  %vec.phi104 = phi <4 x i32> [ zeroinitializer, %vector.ph100 ], [ %i.pf, %vector.body102 ]
  %i.ia = trunc i64 %index103 to i32
  %i.ib = shl i32 %i.ia, 2
  %i.ic = add i32 %i.hf, %i.ib                    ; 11 uses
  %i.id = add i32 %i.ic, 4                        ; 4 uses
  %i.ie = add i32 %i.ic, 8                        ; 4 uses
  %i.if = add i32 %i.ic, 12                       ; 4 uses
  %i.ig = add i32 %i.ic, 16                       ; 4 uses
  %i.ih = add i32 %i.ic, 20                       ; 4 uses
  %i.ii = add i32 %i.ic, 24                       ; 4 uses
  %i.ij = add i32 %i.ic, 28                       ; 4 uses
  %i.ik = or disjoint i32 %i.ic, 3
  %i.il = or disjoint i32 %i.id, 3
  %i.im = or disjoint i32 %i.ie, 3
  %i.in = or disjoint i32 %i.if, 3
  %i.io = or disjoint i32 %i.ig, 3
  %i.ip = or disjoint i32 %i.ih, 3
  %i.iq = or disjoint i32 %i.ii, 3
  %i.ir = or disjoint i32 %i.ij, 3
  %i.is = zext i32 %i.ik to i64
  %i.it = zext i32 %i.il to i64
  %i.iu = zext i32 %i.im to i64
  %i.iv = zext i32 %i.in to i64
  %i.iw = zext i32 %i.io to i64
  %i.ix = zext i32 %i.ip to i64
  %i.iy = zext i32 %i.iq to i64
  %i.iz = zext i32 %i.ir to i64
  %i.ja = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.is
  %i.jb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.it
  %i.jc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.iu
  %i.jd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.iv
  %i.je = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.iw
  %i.jf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ix
  %i.jg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.iy
  %i.jh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.iz
  %i.ji = load i8, ptr %i.ja, align 1, !tbaa !74, !alias.scope !118
  %i.jj = load i8, ptr %i.jb, align 1, !tbaa !74, !alias.scope !118
  %i.jk = load i8, ptr %i.jc, align 1, !tbaa !74, !alias.scope !118
  %i.jl = load i8, ptr %i.jd, align 1, !tbaa !74, !alias.scope !118
  %i.jm = insertelement <4 x i8> poison, i8 %i.ji, i64 0
  %i.jn = insertelement <4 x i8> %i.jm, i8 %i.jj, i64 1
  %i.jo = insertelement <4 x i8> %i.jn, i8 %i.jk, i64 2
  %i.jp = insertelement <4 x i8> %i.jo, i8 %i.jl, i64 3
  %i.jq = load i8, ptr %i.je, align 1, !tbaa !74, !alias.scope !118
  %i.jr = load i8, ptr %i.jf, align 1, !tbaa !74, !alias.scope !118
  %i.js = load i8, ptr %i.jg, align 1, !tbaa !74, !alias.scope !118
  %i.jt = load i8, ptr %i.jh, align 1, !tbaa !74, !alias.scope !118
  %i.ju = insertelement <4 x i8> poison, i8 %i.jq, i64 0
  %i.jv = insertelement <4 x i8> %i.ju, i8 %i.jr, i64 1
  %i.jw = insertelement <4 x i8> %i.jv, i8 %i.js, i64 2
  %i.jx = insertelement <4 x i8> %i.jw, i8 %i.jt, i64 3
  %i.jy = zext <4 x i8> %i.jp to <4 x i32>
  %i.jz = zext <4 x i8> %i.jx to <4 x i32>
  %i.ka = shl nuw <4 x i32> %i.jy, splat (i32 24) ; 2 uses
  %i.kb = shl nuw <4 x i32> %i.jz, splat (i32 24) ; 2 uses
  %i.kc = zext i32 %i.ic to i64
  %i.kd = zext i32 %i.id to i64
  %i.ke = zext i32 %i.ie to i64
  %i.kf = zext i32 %i.if to i64
  %i.kg = zext i32 %i.ig to i64
  %i.kh = zext i32 %i.ih to i64
  %i.ki = zext i32 %i.ii to i64
  %i.kj = zext i32 %i.ij to i64
  %i.kk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kc
  %i.kl = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kd
  %i.km = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ke
  %i.kn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kf
  %i.ko = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kg
  %i.kp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kh
  %i.kq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ki
  %i.kr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.kj
  %i.ks = load i8, ptr %i.kk, align 1, !tbaa !74, !alias.scope !118
  %i.kt = load i8, ptr %i.kl, align 1, !tbaa !74, !alias.scope !118
  %i.ku = load i8, ptr %i.km, align 1, !tbaa !74, !alias.scope !118
  %i.kv = load i8, ptr %i.kn, align 1, !tbaa !74, !alias.scope !118
  %i.kw = insertelement <4 x i8> poison, i8 %i.ks, i64 0
  %i.kx = insertelement <4 x i8> %i.kw, i8 %i.kt, i64 1
  %i.ky = insertelement <4 x i8> %i.kx, i8 %i.ku, i64 2
  %i.kz = insertelement <4 x i8> %i.ky, i8 %i.kv, i64 3
  %i.la = load i8, ptr %i.ko, align 1, !tbaa !74, !alias.scope !118
  %i.lb = load i8, ptr %i.kp, align 1, !tbaa !74, !alias.scope !118
  %i.lc = load i8, ptr %i.kq, align 1, !tbaa !74, !alias.scope !118
  %i.ld = load i8, ptr %i.kr, align 1, !tbaa !74, !alias.scope !118
  %i.le = insertelement <4 x i8> poison, i8 %i.la, i64 0
  %i.lf = insertelement <4 x i8> %i.le, i8 %i.lb, i64 1
  %i.lg = insertelement <4 x i8> %i.lf, i8 %i.lc, i64 2
  %i.lh = insertelement <4 x i8> %i.lg, i8 %i.ld, i64 3
  %i.li = zext <4 x i8> %i.kz to <4 x i32>
  %i.lj = zext <4 x i8> %i.lh to <4 x i32>
  %i.lk = or disjoint i32 %i.ic, 1
  %i.ll = or disjoint i32 %i.id, 1
  %i.lm = or disjoint i32 %i.ie, 1
  %i.ln = or disjoint i32 %i.if, 1
  %i.lo = or disjoint i32 %i.ig, 1
  %i.lp = or disjoint i32 %i.ih, 1
  %i.lq = or disjoint i32 %i.ii, 1
  %i.lr = or disjoint i32 %i.ij, 1
  %i.ls = zext i32 %i.lk to i64
  %i.lt = zext i32 %i.ll to i64
  %i.lu = zext i32 %i.lm to i64
  %i.lv = zext i32 %i.ln to i64
  %i.lw = zext i32 %i.lo to i64
  %i.lx = zext i32 %i.lp to i64
  %i.ly = zext i32 %i.lq to i64
  %i.lz = zext i32 %i.lr to i64
  %i.ma = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ls
  %i.mb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lt
  %i.mc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lu
  %i.md = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lv
  %i.me = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lw
  %i.mf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lx
  %i.mg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ly
  %i.mh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lz
  %i.mi = load i8, ptr %i.ma, align 1, !tbaa !74, !alias.scope !118
  %i.mj = load i8, ptr %i.mb, align 1, !tbaa !74, !alias.scope !118
  %i.mk = load i8, ptr %i.mc, align 1, !tbaa !74, !alias.scope !118
  %i.ml = load i8, ptr %i.md, align 1, !tbaa !74, !alias.scope !118
  %i.mm = insertelement <4 x i8> poison, i8 %i.mi, i64 0
  %i.mn = insertelement <4 x i8> %i.mm, i8 %i.mj, i64 1
  %i.mo = insertelement <4 x i8> %i.mn, i8 %i.mk, i64 2
  %i.mp = insertelement <4 x i8> %i.mo, i8 %i.ml, i64 3
  %i.mq = load i8, ptr %i.me, align 1, !tbaa !74, !alias.scope !118
  %i.mr = load i8, ptr %i.mf, align 1, !tbaa !74, !alias.scope !118
  %i.ms = load i8, ptr %i.mg, align 1, !tbaa !74, !alias.scope !118
  %i.mt = load i8, ptr %i.mh, align 1, !tbaa !74, !alias.scope !118
  %i.mu = insertelement <4 x i8> poison, i8 %i.mq, i64 0
  %i.mv = insertelement <4 x i8> %i.mu, i8 %i.mr, i64 1
  %i.mw = insertelement <4 x i8> %i.mv, i8 %i.ms, i64 2
  %i.mx = insertelement <4 x i8> %i.mw, i8 %i.mt, i64 3
  %i.my = zext <4 x i8> %i.mp to <4 x i32>
  %i.mz = zext <4 x i8> %i.mx to <4 x i32>
  %i.na = shl nuw nsw <4 x i32> %i.my, splat (i32 8)
  %i.nb = shl nuw nsw <4 x i32> %i.mz, splat (i32 8)
  %i.nc = or disjoint i32 %i.ic, 2
  %i.nd = or disjoint i32 %i.id, 2
  %i.ne = or disjoint i32 %i.ie, 2
  %i.nf = or disjoint i32 %i.if, 2
  %i.ng = or disjoint i32 %i.ig, 2
  %i.nh = or disjoint i32 %i.ih, 2
  %i.ni = or disjoint i32 %i.ii, 2
  %i.nj = or disjoint i32 %i.ij, 2
  %i.nk = zext i32 %i.nc to i64
  %i.nl = zext i32 %i.nd to i64
  %i.nm = zext i32 %i.ne to i64
  %i.nn = zext i32 %i.nf to i64
  %i.no = zext i32 %i.ng to i64
  %i.np = zext i32 %i.nh to i64
  %i.nq = zext i32 %i.ni to i64
  %i.nr = zext i32 %i.nj to i64
  %i.ns = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nk
  %i.nt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nl
  %i.nu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nm
  %i.nv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nn
  %i.nw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.no
  %i.nx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.np
  %i.ny = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nq
  %i.nz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nr
  %i.oa = load i8, ptr %i.ns, align 1, !tbaa !74, !alias.scope !118
  %i.ob = load i8, ptr %i.nt, align 1, !tbaa !74, !alias.scope !118
  %i.oc = load i8, ptr %i.nu, align 1, !tbaa !74, !alias.scope !118
  %i.od = load i8, ptr %i.nv, align 1, !tbaa !74, !alias.scope !118
  %i.oe = insertelement <4 x i8> poison, i8 %i.oa, i64 0
  %i.of = insertelement <4 x i8> %i.oe, i8 %i.ob, i64 1
  %i.og = insertelement <4 x i8> %i.of, i8 %i.oc, i64 2
  %i.oh = insertelement <4 x i8> %i.og, i8 %i.od, i64 3
  %i.oi = load i8, ptr %i.nw, align 1, !tbaa !74, !alias.scope !118
  %i.oj = load i8, ptr %i.nx, align 1, !tbaa !74, !alias.scope !118
  %i.ok = load i8, ptr %i.ny, align 1, !tbaa !74, !alias.scope !118
  %i.ol = load i8, ptr %i.nz, align 1, !tbaa !74, !alias.scope !118
  %i.om = insertelement <4 x i8> poison, i8 %i.oi, i64 0
  %i.on = insertelement <4 x i8> %i.om, i8 %i.oj, i64 1
  %i.oo = insertelement <4 x i8> %i.on, i8 %i.ok, i64 2
  %i.op = insertelement <4 x i8> %i.oo, i8 %i.ol, i64 3
  %i.oq = zext <4 x i8> %i.oh to <4 x i32>
  %i.or = zext <4 x i8> %i.op to <4 x i32>
  %i.os = shl nuw nsw <4 x i32> %i.oq, splat (i32 16)
  %i.ot = shl nuw nsw <4 x i32> %i.or, splat (i32 16)
  %i.ou = or disjoint <4 x i32> %i.na, %i.li
  %i.ov = or disjoint <4 x i32> %i.nb, %i.lj
  %i.ow = or disjoint <4 x i32> %i.ou, %i.os
  %i.ox = or disjoint <4 x i32> %i.ov, %i.ot
  %i.oy = or disjoint <4 x i32> %i.ow, %i.ka
  %i.oz = or disjoint <4 x i32> %i.ox, %i.kb
  %i.pa = add i64 %index103, %i.hi
  %i.pb = and i64 %i.pa, 4294967295
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.pb ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  store <4 x i32> %i.oy, ptr %i.pc, align 4, !tbaa !56, !alias.scope !119, !noalias !118
  store <4 x i32> %i.oz, ptr %i.pd, align 4, !tbaa !56, !alias.scope !119, !noalias !118
  %i.pe = or <4 x i32> %i.ka, %vec.phi            ; 2 uses
  %i.pf = or <4 x i32> %i.kb, %vec.phi104         ; 2 uses
  %index.next105 = add nuw i64 %index103, 8       ; 2 uses
  %i.pg = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.pg, label %middle.block106, label %vector.body102, !llvm.loop !97

middle.block106:                                  ; preds = %vector.body102
  %bin.rdx = or <4 x i32> %i.pf, %i.pe
  %i.ph = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n107, label %.loopexit655.i, label %scalar.ph98.preheader

scalar.ph98.preheader:                            ; preds = %vector.memcheck88, %vector.scevcheck84, %.lr.ph.i, %middle.block106
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck88 ], [ 0, %vector.scevcheck84 ], [ 0, %.lr.ph.i ], [ %n.vec101, %middle.block106 ]
  %.4552665.i.ph = phi i32 [ %i.hf, %vector.memcheck88 ], [ %i.hf, %vector.scevcheck84 ], [ %i.hf, %.lr.ph.i ], [ %i.hy, %middle.block106 ]
  %.1556664.i.ph = phi i32 [ %.0555679.i, %vector.memcheck88 ], [ %.0555679.i, %vector.scevcheck84 ], [ %.0555679.i, %.lr.ph.i ], [ %i.ph, %middle.block106 ]
  br label %scalar.ph98

.lr.ph668.i:                                      ; preds = %bb.ah
  %i.pi = xor i64 %indvars.iv747.i, -1
  %i.pj = add nsw i64 %i.pi, %i.dq
  %i.pk = mul i64 %i.pj, %i.dr                    ; 2 uses
  br i1 %min.iters.check74, label %scalar.ph73.preheader, label %vector.scevcheck59

vector.scevcheck59:                               ; preds = %.lr.ph668.i
  %i.pl = xor i32 %i.gr, -1
  %i.pm = icmp ult i32 %i.pl, %i.es
  %i.pn = xor i32 %i.hf, -1
  %i.po = icmp ugt i32 %mul.result61, %i.pn
  %i.pp = or i1 %i.po, %i.eu
  %i.pq = xor i32 %i.gt, -2
  %i.pr = icmp ult i32 %i.pq, %mul.result61
  %.reass = or i1 %i.pr, %invariant.op
  %i.ps = xor i32 %i.gu, -3
  %i.pt = icmp ult i32 %i.ps, %mul.result61
  %i.pu = or i1 %i.pp, %i.pm
  %i.pv = or i1 %i.pu, %.reass
  %i.pw = or i1 %i.pt, %i.pv
  br i1 %i.pw, label %scalar.ph73.preheader, label %vector.memcheck63

vector.memcheck63:                                ; preds = %vector.scevcheck59
  %bound070 = icmp ult ptr %scevgep64, %scevgep69
  %bound171 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict72 = and i1 %bound070, %bound171
  br i1 %found.conflict72, label %scalar.ph73.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck63
  %i.px = add i32 %i.hf, %i.ex
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next79, %vector.body77 ] ; 3 uses
  %i.py = trunc i64 %index78 to i32
  %i.pz = mul i32 %i.py, 3
  %i.qa = add i32 %i.hf, %i.pz                    ; 12 uses
  %i.qb = or disjoint i32 %i.qa, 3
  %i.qc = add i32 %i.qa, 6
  %i.qd = add i32 %i.qa, 9
  %i.qe = zext i32 %i.qa to i64
  %i.qf = zext i32 %i.qb to i64
  %i.qg = zext i32 %i.qc to i64
  %i.qh = zext i32 %i.qd to i64
  %i.qi = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qe
  %i.qj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qf
  %i.qk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qg
  %i.ql = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qh
  %i.qm = load i8, ptr %i.qi, align 1, !tbaa !74, !alias.scope !120
  %i.qn = load i8, ptr %i.qj, align 1, !tbaa !74, !alias.scope !120
  %i.qo = load i8, ptr %i.qk, align 1, !tbaa !74, !alias.scope !120
  %i.qp = load i8, ptr %i.ql, align 1, !tbaa !74, !alias.scope !120
  %i.qq = insertelement <4 x i8> poison, i8 %i.qm, i64 0
  %i.qr = insertelement <4 x i8> %i.qq, i8 %i.qn, i64 1
  %i.qs = insertelement <4 x i8> %i.qr, i8 %i.qo, i64 2
  %i.qt = insertelement <4 x i8> %i.qs, i8 %i.qp, i64 3
  %i.qu = zext <4 x i8> %i.qt to <4 x i32>
  %i.qv = or disjoint i32 %i.qa, 1
  %i.qw = add i32 %i.qa, 4
  %i.qx = add i32 %i.qa, 7
  %i.qy = add i32 %i.qa, 10
  %i.qz = zext i32 %i.qv to i64
  %i.ra = zext i32 %i.qw to i64
  %i.rb = zext i32 %i.qx to i64
  %i.rc = zext i32 %i.qy to i64
  %i.rd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qz
  %i.re = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ra
  %i.rf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rb
  %i.rg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rc
  %i.rh = load i8, ptr %i.rd, align 1, !tbaa !74, !alias.scope !120
  %i.ri = load i8, ptr %i.re, align 1, !tbaa !74, !alias.scope !120
  %i.rj = load i8, ptr %i.rf, align 1, !tbaa !74, !alias.scope !120
  %i.rk = load i8, ptr %i.rg, align 1, !tbaa !74, !alias.scope !120
  %i.rl = insertelement <4 x i8> poison, i8 %i.rh, i64 0
  %i.rm = insertelement <4 x i8> %i.rl, i8 %i.ri, i64 1
  %i.rn = insertelement <4 x i8> %i.rm, i8 %i.rj, i64 2
  %i.ro = insertelement <4 x i8> %i.rn, i8 %i.rk, i64 3
  %i.rp = zext <4 x i8> %i.ro to <4 x i32>
  %i.rq = shl nuw nsw <4 x i32> %i.rp, splat (i32 8)
  %i.rr = or disjoint <4 x i32> %i.rq, %i.qu
  %i.rs = or disjoint i32 %i.qa, 2
  %i.rt = add i32 %i.qa, 5
  %i.ru = add i32 %i.qa, 8
  %i.rv = add i32 %i.qa, 11
  %i.rw = zext i32 %i.rs to i64
  %i.rx = zext i32 %i.rt to i64
  %i.ry = zext i32 %i.ru to i64
  %i.rz = zext i32 %i.rv to i64
  %i.sa = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rw
  %i.sb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rx
  %i.sc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ry
  %i.sd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rz
  %i.se = load i8, ptr %i.sa, align 1, !tbaa !74, !alias.scope !120
  %i.sf = load i8, ptr %i.sb, align 1, !tbaa !74, !alias.scope !120
  %i.sg = load i8, ptr %i.sc, align 1, !tbaa !74, !alias.scope !120
  %i.sh = load i8, ptr %i.sd, align 1, !tbaa !74, !alias.scope !120
  %i.si = insertelement <4 x i8> poison, i8 %i.se, i64 0
  %i.sj = insertelement <4 x i8> %i.si, i8 %i.sf, i64 1
  %i.sk = insertelement <4 x i8> %i.sj, i8 %i.sg, i64 2
  %i.sl = insertelement <4 x i8> %i.sk, i8 %i.sh, i64 3
  %i.sm = zext <4 x i8> %i.sl to <4 x i32>
  %i.sn = shl nuw nsw <4 x i32> %i.sm, splat (i32 16)
  %i.so = or disjoint <4 x i32> %i.rr, %i.sn
  %i.sp = add i64 %index78, %i.pk
  %i.sq = and i64 %i.sp, 4294967295
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.sq
  store <4 x i32> %i.so, ptr %i.sr, align 4, !tbaa !56, !alias.scope !121, !noalias !120
  %index.next79 = add nuw i64 %index78, 4         ; 2 uses
  %i.ss = icmp eq i64 %index.next79, %n.vec76
  br i1 %i.ss, label %middle.block80, label %vector.body77, !llvm.loop !101

middle.block80:                                   ; preds = %vector.body77
  br i1 %cmp.n81, label %.loopexit655.i, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %vector.memcheck63, %vector.scevcheck59, %.lr.ph668.i, %middle.block80
  %indvars.iv733.i.ph = phi i64 [ 0, %vector.memcheck63 ], [ 0, %vector.scevcheck59 ], [ 0, %.lr.ph668.i ], [ %n.vec76, %middle.block80 ]
  %.3551667.i.ph = phi i32 [ %i.hf, %vector.memcheck63 ], [ %i.hf, %vector.scevcheck59 ], [ %i.hf, %.lr.ph668.i ], [ %i.px, %middle.block80 ]
  br label %scalar.ph73

.lr.ph671.i:                                      ; preds = %bb.ah
  %13 = xor i64 %indvars.iv747.i, -1
  %14 = add nsw i64 %13, %i.dq
  %15 = mul i64 %14, %i.dr                        ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph671.i
  %i.st = xor i32 %10, -1
  %i.su = icmp ult i32 %i.st, %i.ey
  %i.sv = xor i32 %i.hf, -1
  %i.sw = icmp ugt i32 %mul.result, %i.sv
  %i.sx = or i1 %i.sw, %i.fa
  %i.sy = xor i32 %12, -2
  %i.sz = icmp ult i32 %i.sy, %mul.result
  %i.ta = or i1 %i.su, %i.sx
  %i.tb = or i1 %i.sz, %i.ta
  br i1 %i.tb, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep57
  %bound1 = icmp ult ptr %scevgep55, %scevgep54
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.tc = add i32 %i.hf, %i.fc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.td = trunc i64 %index to i32
  %i.te = shl i32 %i.td, 1
  %i.tf = add i32 %i.hf, %i.te                    ; 6 uses
  %i.tg = or disjoint i32 %i.tf, 2
  %i.th = add i32 %i.tf, 4                        ; 2 uses
  %i.ti = add i32 %i.tf, 6                        ; 2 uses
  %i.tj = zext i32 %i.tf to i64
  %i.tk = zext i32 %i.tg to i64
  %i.tl = zext i32 %i.th to i64
  %i.tm = zext i32 %i.ti to i64
  %i.tn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tj
  %i.to = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tk
  %i.tp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tl
  %i.tq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tm
  %i.tr = load i8, ptr %i.tn, align 1, !tbaa !74, !alias.scope !122
  %i.ts = load i8, ptr %i.to, align 1, !tbaa !74, !alias.scope !122
  %i.tt = load i8, ptr %i.tp, align 1, !tbaa !74, !alias.scope !122
  %i.tu = load i8, ptr %i.tq, align 1, !tbaa !74, !alias.scope !122
  %i.tv = insertelement <4 x i8> poison, i8 %i.tr, i64 0
  %i.tw = insertelement <4 x i8> %i.tv, i8 %i.ts, i64 1
  %i.tx = insertelement <4 x i8> %i.tw, i8 %i.tt, i64 2
  %i.ty = insertelement <4 x i8> %i.tx, i8 %i.tu, i64 3
  %i.tz = zext <4 x i8> %i.ty to <4 x i32>        ; 2 uses
  %i.ua = and <4 x i32> %i.tz, splat (i32 31)     ; 2 uses
  %i.ub = lshr <4 x i32> %i.tz, splat (i32 5)
  %i.uc = or disjoint i32 %i.tf, 1
  %i.ud = or disjoint i32 %i.tf, 3
  %i.ue = or disjoint i32 %i.th, 1
  %i.uf = or disjoint i32 %i.ti, 1
  %i.ug = zext i32 %i.uc to i64
  %i.uh = zext i32 %i.ud to i64
  %i.ui = zext i32 %i.ue to i64
  %i.uj = zext i32 %i.uf to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ug
  %i.ul = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.uh
  %i.um = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ui
  %i.un = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.uj
  %i.uo = load i8, ptr %i.uk, align 1, !tbaa !74, !alias.scope !122
  %i.up = load i8, ptr %i.ul, align 1, !tbaa !74, !alias.scope !122
  %i.uq = load i8, ptr %i.um, align 1, !tbaa !74, !alias.scope !122
  %i.ur = load i8, ptr %i.un, align 1, !tbaa !74, !alias.scope !122
  %i.us = insertelement <4 x i8> poison, i8 %i.uo, i64 0
  %i.ut = insertelement <4 x i8> %i.us, i8 %i.up, i64 1
  %i.uu = insertelement <4 x i8> %i.ut, i8 %i.uq, i64 2
  %i.uv = insertelement <4 x i8> %i.uu, i8 %i.ur, i64 3
  %i.uw = zext <4 x i8> %i.uv to <4 x i32>        ; 2 uses
  %i.ux = shl nuw nsw <4 x i32> %i.uw, splat (i32 3) ; 2 uses
  %i.uy = and <4 x i32> %i.ux, splat (i32 24)
  %i.uz = or disjoint <4 x i32> %i.uy, %i.ub      ; 2 uses
  %i.va = shl nuw nsw <4 x i32> %i.ua, splat (i32 3)
  %i.vb = lshr <4 x i32> %i.ua, splat (i32 2)
  %i.vc = or disjoint <4 x i32> %i.va, %i.vb
  %i.vd = shl nuw nsw <4 x i32> %i.uz, splat (i32 14)
  %i.ve = shl nuw nsw <4 x i32> %i.uz, splat (i32 9)
  %i.vf = and <4 x i32> %i.ve, splat (i32 14336)
  %i.vg = or disjoint <4 x i32> %i.vf, %i.vd
  %i.vh = and <4 x i32> %i.ux, splat (i32 2016)
  %i.vi = lshr <4 x i32> %i.uw, splat (i32 2)
  %i.vj = or <4 x i32> %i.vh, %i.vi
  %i.vk = shl nuw nsw <4 x i32> %i.vj, splat (i32 17)
  %i.vl = or <4 x i32> %i.vk, %i.vg
  %i.vm = or disjoint <4 x i32> %i.vl, %i.vc
  %i.vn = add i64 %index, %15
  %i.vo = and i64 %i.vn, 4294967295
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.vo
  store <4 x i32> %i.vm, ptr %i.vp, align 4, !tbaa !56, !alias.scope !123, !noalias !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vq = icmp eq i64 %index.next, %n.vec
  br i1 %i.vq, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit655.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph671.i, %middle.block
  %indvars.iv738.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph671.i ], [ %n.vec, %middle.block ]
  %.2550670.i.ph = phi i32 [ %i.hf, %vector.memcheck ], [ %i.hf, %vector.scevcheck ], [ %i.hf, %.lr.ph671.i ], [ %i.tc, %middle.block ]
  br label %scalar.ph

.lr.ph676.i:                                      ; preds = %bb.ah, %bb.ah, %bb.ah
  %i.vr = xor i64 %indvars.iv747.i, -1
  %i.vs = add nsw i64 %i.vr, %i.dq
  %i.vt = mul i64 %i.vs, %i.dr
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph676.i
  %indvars.iv743.i = phi i64 [ 0, %.lr.ph676.i ], [ %indvars.iv.next744.i, %bb.ak ] ; 2 uses
  %.0544675.i = phi i8 [ 0, %.lr.ph676.i ], [ %.1545.i, %bb.ak ]
  %.0546674.i = phi i32 [ 0, %.lr.ph676.i ], [ %i.vy, %bb.ak ] ; 2 uses
  %.0548673.i = phi i32 [ %i.hf, %.lr.ph676.i ], [ %.1549.i, %bb.ak ] ; 3 uses
  %.not620.i = icmp eq i32 %.0546674.i, 0
  br i1 %.not620.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.vu = add i32 %.0548673.i, 1
  %i.vv = zext i32 %.0548673.i to i64
  %i.vw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.vv
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !74
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1549.i = phi i32 [ %.0548673.i, %bb.ai ], [ %i.vu, %bb.aj ]
  %.1547.i = phi i32 [ %.0546674.i, %bb.ai ], [ 8, %bb.aj ]
  %.1545.i = phi i8 [ %.0544675.i, %bb.ai ], [ %i.vx, %bb.aj ] ; 2 uses
  %i.vy = sub i32 %.1547.i, %i.be                 ; 2 uses
  %i.vz = zext i8 %.1545.i to i32
  %i.wa = lshr i32 %i.vz, %i.vy
  %i.wb = and i32 %i.wa, %i.dp
  %i.wc = zext nneg i32 %i.wb to i64
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %.0528.i, i64 %i.wc
  %i.we = load i32, ptr %i.wd, align 1, !tbaa !74
  %i.wf = add i64 %indvars.iv743.i, %i.vt
  %i.wg = and i64 %i.wf, 4294967295
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.wg
  store i32 %i.we, ptr %i.wh, align 4, !tbaa !56
  %indvars.iv.next744.i = add nuw nsw i64 %indvars.iv743.i, 1 ; 2 uses
  %exitcond746.not.i = icmp eq i64 %indvars.iv.next744.i, %i.dr
  br i1 %exitcond746.not.i, label %.loopexit655.i, label %bb.ai

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv738.i = phi i64 [ %indvars.iv.next739.i, %scalar.ph ], [ %indvars.iv738.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.2550670.i = phi i32 [ %i.xm, %scalar.ph ], [ %.2550670.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.wi = zext i32 %.2550670.i to i64
  %i.wj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wi
  %i.wk = load i8, ptr %i.wj, align 1, !tbaa !74
  %i.wl = zext i8 %i.wk to i32                    ; 2 uses
  %i.wm = and i32 %i.wl, 31                       ; 2 uses
  %i.wn = lshr i32 %i.wl, 5
  %i.wo = or disjoint i32 %.2550670.i, 1
  %i.wp = zext i32 %i.wo to i64
  %i.wq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wp
  %i.wr = load i8, ptr %i.wq, align 1, !tbaa !74
  %i.ws = zext i8 %i.wr to i32                    ; 2 uses
  %i.wt = shl nuw nsw i32 %i.ws, 3                ; 2 uses
  %i.wu = and i32 %i.wt, 24
  %i.wv = or disjoint i32 %i.wu, %i.wn            ; 2 uses
  %i.ww = shl nuw nsw i32 %i.wm, 3
  %i.wx = lshr i32 %i.wm, 2
  %i.wy = or disjoint i32 %i.ww, %i.wx
  %i.wz = shl nuw nsw i32 %i.wv, 14
  %i.xa = shl nuw nsw i32 %i.wv, 9
  %i.xb = and i32 %i.xa, 14336
  %i.xc = or disjoint i32 %i.xb, %i.wz
  %i.xd = and i32 %i.wt, 2016
  %i.xe = lshr i32 %i.ws, 2
  %i.xf = or i32 %i.xd, %i.xe
  %i.xg = shl nuw nsw i32 %i.xf, 17
  %i.xh = or i32 %i.xg, %i.xc
  %i.xi = or disjoint i32 %i.xh, %i.wy
  %i.xj = add i64 %indvars.iv738.i, %15
  %i.xk = and i64 %i.xj, 4294967295
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.xk
  store i32 %i.xi, ptr %i.xl, align 4, !tbaa !56
  %i.xm = add i32 %.2550670.i, 2
  %indvars.iv.next739.i = add nuw nsw i64 %indvars.iv738.i, 1 ; 2 uses
  %exitcond742.not.i = icmp eq i64 %indvars.iv.next739.i, %i.dr
  br i1 %exitcond742.not.i, label %.loopexit655.i, label %scalar.ph, !llvm.loop !106

scalar.ph73:                                      ; preds = %scalar.ph73.preheader, %scalar.ph73
  %indvars.iv733.i = phi i64 [ %indvars.iv.next734.i, %scalar.ph73 ], [ %indvars.iv733.i.ph, %scalar.ph73.preheader ] ; 2 uses
  %.3551667.i = phi i32 [ %i.yi, %scalar.ph73 ], [ %.3551667.i.ph, %scalar.ph73.preheader ] ; 4 uses
  %i.xn = zext i32 %.3551667.i to i64
  %i.xo = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xn
  %i.xp = load i8, ptr %i.xo, align 1, !tbaa !74
  %i.xq = zext i8 %i.xp to i32
  %i.xr = add i32 %.3551667.i, 1
  %i.xs = zext i32 %i.xr to i64
  %i.xt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xs
  %i.xu = load i8, ptr %i.xt, align 1, !tbaa !74
  %i.xv = zext i8 %i.xu to i32
  %i.xw = shl nuw nsw i32 %i.xv, 8
  %i.xx = or disjoint i32 %i.xw, %i.xq
  %i.xy = add i32 %.3551667.i, 2
  %i.xz = zext i32 %i.xy to i64
  %i.ya = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xz
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !74
  %i.yc = zext i8 %i.yb to i32
  %i.yd = shl nuw nsw i32 %i.yc, 16
  %i.ye = or disjoint i32 %i.xx, %i.yd
  %i.yf = add i64 %indvars.iv733.i, %i.pk
  %i.yg = and i64 %i.yf, 4294967295
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.yg
  store i32 %i.ye, ptr %i.yh, align 4, !tbaa !56
  %i.yi = add i32 %.3551667.i, 3
  %indvars.iv.next734.i = add nuw nsw i64 %indvars.iv733.i, 1 ; 2 uses
  %exitcond737.not.i = icmp eq i64 %indvars.iv.next734.i, %i.dr
  br i1 %exitcond737.not.i, label %.loopexit655.i, label %scalar.ph73, !llvm.loop !107

scalar.ph98:                                      ; preds = %scalar.ph98.preheader, %scalar.ph98
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph98 ], [ %indvars.iv.i.ph, %scalar.ph98.preheader ] ; 2 uses
  %.4552665.i = phi i32 [ %i.zm, %scalar.ph98 ], [ %.4552665.i.ph, %scalar.ph98.preheader ] ; 5 uses
  %.1556664.i = phi i32 [ %i.zl, %scalar.ph98 ], [ %.1556664.i.ph, %scalar.ph98.preheader ]
  %i.yj = or disjoint i32 %.4552665.i, 3
  %i.yk = zext i32 %i.yj to i64
  %i.yl = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yk
  %i.ym = load i8, ptr %i.yl, align 1, !tbaa !74
  %i.yn = zext i8 %i.ym to i32
  %i.yo = shl nuw i32 %i.yn, 24                   ; 2 uses
  %i.yp = zext i32 %.4552665.i to i64
  %i.yq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yp
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !74
  %i.ys = zext i8 %i.yr to i32
  %i.yt = or disjoint i32 %.4552665.i, 1
  %i.yu = zext i32 %i.yt to i64
  %i.yv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yu
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !74
  %i.yx = zext i8 %i.yw to i32
  %i.yy = shl nuw nsw i32 %i.yx, 8
  %i.yz = or disjoint i32 %.4552665.i, 2
  %i.za = zext i32 %i.yz to i64
  %i.zb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.za
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !74
  %i.zd = zext i8 %i.zc to i32
  %i.ze = shl nuw nsw i32 %i.zd, 16
  %i.zf = or disjoint i32 %i.yy, %i.ys
  %i.zg = or disjoint i32 %i.zf, %i.ze
  %i.zh = or disjoint i32 %i.zg, %i.yo
  %i.zi = add i64 %indvars.iv.i, %i.hi
  %i.zj = and i64 %i.zi, 4294967295
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.zj
  store i32 %i.zh, ptr %i.zk, align 4, !tbaa !56
  %i.zl = or i32 %i.yo, %.1556664.i               ; 2 uses
  %i.zm = add i32 %.4552665.i, 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dr
  br i1 %exitcond.not.i, label %.loopexit655.i, label %scalar.ph98, !llvm.loop !108

.loopexit655.i:                                   ; preds = %scalar.ph98, %scalar.ph73, %scalar.ph, %bb.ak, %middle.block106, %middle.block80, %middle.block, %bb.ah
  %.2557.i = phi i32 [ %.0555679.i, %bb.ah ], [ %.0555679.i, %middle.block80 ], [ %.0555679.i, %scalar.ph ], [ %.0555679.i, %middle.block ], [ %.0555679.i, %scalar.ph73 ], [ %.0555679.i, %bb.ak ], [ %i.ph, %middle.block106 ], [ %i.zl, %scalar.ph98 ] ; 2 uses
  %indvars.iv.next748.i = add nuw nsw i64 %indvars.iv747.i, 1 ; 2 uses
  %exitcond751.not.i = icmp eq i64 %indvars.iv.next748.i, %i.dq
  br i1 %exitcond751.not.i, label %._crit_edge.loopexit.i, label %bb.ah

._crit_edge.loopexit.i:                           ; preds = %.loopexit655.i
  %i.zn = icmp ne i32 %.2557.i, 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader662.i
  %.0555.lcssa.i = phi i1 [ false, %.preheader662.i ], [ %i.zn, %._crit_edge.loopexit.i ] ; 2 uses
  %.not604.i = icmp eq ptr %.0528.i, null
  br i1 %.not604.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i
  %i.zo = shl nuw i32 1, %i.be
  %i.zp = sext i32 %i.zo to i64
  %i.zq = shl nsw i64 %i.zp, 2
  %i.zr = getelementptr i8, ptr %i.l, i64 16
  %.val.i623.i = load ptr, ptr %i.zr, align 8, !tbaa !115
  %i.zs = getelementptr i8, ptr %i.l, i64 72
  %.val3.i624.i = load i64, ptr %i.zs, align 8, !tbaa !116
  %i.zt = ptrtoint ptr %.0528.i to i64
  %i.zu = ptrtoint ptr %.val.i623.i to i64
  %i.zv = add i64 %.val3.i624.i, %i.zu
  %i.zw = sub i64 %i.zt, %i.zv
  %i.zx = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !117
  call void %i.zy(ptr noundef nonnull %i.l, i64 noundef %i.zw, i64 noundef range(i64 -8589934592, 8589934589) %i.zq) #13, !inline_history !93
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i
  call fastcc void @makebmp(ptr noundef nonnull @.str.18, ptr noundef %i.s, i32 noundef %.4..4..4..4..4..i, i32 noundef %i.bd, ptr noundef %i.do)
  %i.zz = icmp ne i16 %.14..14..14..14..14..i, 32
  %or.cond11.i = select i1 %i.zz, i1 true, i1 %.0555.lcssa.i
  %i.aaa = mul i32 %i.cn, %i.bd                   ; 2 uses
  br i1 %or.cond11.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.aab = add i32 %.0559.i, %i.aaa
  %i.aac = zext i32 %i.aab to i64
  %i.aad = mul nuw nsw i32 %i.ct, %i.bd
  %i.aae = zext nneg i32 %i.aad to i64
  %i.aaf = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.aag = call ptr %i.aaf(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.aac, i64 noundef range(i64 0, 4294967296) %i.aae, i32 noundef 0) #13, !inline_history !90 ; 2 uses
  %.not605.i = icmp eq ptr %i.aag, null
  br i1 %.not605.i, label %.preheader654.i, label %bb.ao

.preheader654.i:                                  ; preds = %bb.an
end_hunk_0
