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
  %.4..4..4..4..4..i = load i32, ptr %.4..4..4..4..4..sroa_idx, align 4, !tbaa !74 ; 42 uses
  %.8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.8..8..8..8..8..i = load i32, ptr %.8..8..8..8..8..sroa_idx, align 4, !tbaa !74 ; 4 uses
  %i.bd = sdiv i32 %.8..8..8..8..8..i, 2          ; 30 uses
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
  %wide.trip.count750.i = zext nneg i32 %i.bd to i64
  %wide.trip.count.i = zext nneg i32 %.4..4..4..4..4..i to i64 ; 18 uses
  %i.dq = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %i.dr = lshr i32 %i.ci, 3
  %i.ds = and i32 %i.dr, 536870908
  %narrow = add nuw nsw i32 %i.ds, %i.cm
  %i.dt = shl nuw nsw i64 %wide.trip.count.i, 2
  %scevgep53 = getelementptr i8, ptr %i.do, i64 %i.dt
  %i.du = lshr i32 %i.ci, 3
  %i.dv = and i32 %i.du, 536870908
  %narrow132.a = add nuw nsw i32 %i.dv, %i.cm
  %i.dw = shl nuw nsw i64 %wide.trip.count.i, 1
  %scevgep56 = getelementptr i8, ptr %i.da, i64 %i.dw
  %i.dx = add nsw i64 %wide.trip.count.i, -1      ; 4 uses
  %i.dy = lshr i32 %i.ci, 3
  %i.dz = and i32 %i.dy, 536870908
  %narrow133.a = add nuw nsw i32 %i.dz, %i.cm
  %i.ea = zext nneg i32 %narrow133.a to i64
  %i.eb = shl nuw nsw i64 %wide.trip.count.i, 2
  %scevgep65 = getelementptr i8, ptr %i.do, i64 %i.eb
  %i.ec = lshr i32 %i.ci, 3
  %i.ed = and i32 %i.ec, 536870908
  %narrow134.a = add nuw nsw i32 %i.ed, %i.cm
  %i.ee = mul nuw nsw i64 %wide.trip.count.i, 3
  %scevgep68 = getelementptr i8, ptr %i.da, i64 %i.ee
  %i.ef = add nsw i64 %wide.trip.count.i, -1      ; 3 uses
  %i.eg = lshr i32 %i.ci, 3
  %i.eh = and i32 %i.eg, 536870908
  %narrow135.a = add nuw nsw i32 %i.eh, %i.cm
  %i.ei = zext nneg i32 %narrow135.a to i64
  %i.ej = shl nuw nsw i64 %wide.trip.count.i, 2   ; 2 uses
  %scevgep90.a = getelementptr i8, ptr %i.do, i64 %i.ej
  %i.ek = lshr i32 %i.ci, 3
  %i.el = and i32 %i.ek, 536870908
  %narrow136 = add nuw nsw i32 %i.el, %i.cm
  %scevgep93.a = getelementptr i8, ptr %i.da, i64 %i.ej
  %min.iters.check99 = icmp ult i32 %.4..4..4..4..4..i, 24
  %i.em = trunc nsw i64 %i.ef to i32
  %i.en = trunc nsw i64 %i.ef to i32
  %mul.result86 = shl i32 %i.en, 2                ; 4 uses
  %mul.overflow87 = icmp ugt i64 %i.ef, 1073741823
  %n.vec101 = and i64 %wide.trip.count.i, 504     ; 4 uses
  %i.eo = trunc nuw nsw i64 %n.vec101 to i32
  %i.ep = shl nuw nsw i32 %i.eo, 2
  %cmp.n107 = icmp eq i64 %n.vec101, %wide.trip.count.i
  %min.iters.check74 = icmp ult i32 %.4..4..4..4..4..i, 24
  %i.eq = trunc nsw i64 %i.dx to i32
  %i.er = trunc nsw i64 %i.dx to i32
  %mul60 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.er, i32 3) ; 2 uses
  %mul.result61 = extractvalue { i32, i1 } %mul60, 0 ; 3 uses
  %mul.overflow62 = extractvalue { i32, i1 } %mul60, 1
  %i.es = icmp ugt i64 %i.dx, 4294967295
  %i.et = icmp ugt i64 %i.dx, 4294967295
  %invariant.op = or i1 %i.et, %mul.overflow62
  %n.vec76 = and i64 %wide.trip.count.i, 508      ; 4 uses
  %i.eu = trunc nuw nsw i64 %n.vec76 to i32
  %i.ev = mul nuw nsw i32 %i.eu, 3
  %cmp.n81 = icmp eq i64 %n.vec76, %wide.trip.count.i
  %i.ew = trunc nsw i64 %i.dq to i32
  %i.ex = trunc nsw i64 %i.dq to i32
  %mul.result = shl i32 %i.ex, 1                  ; 2 uses
  %i.ey = icmp ugt i64 %i.dq, 4294967295
  %n.vec = and i64 %wide.trip.count.i, 508        ; 4 uses
  %i.ez = trunc nuw nsw i64 %n.vec to i32
  %i.fa = shl nuw nsw i32 %i.ez, 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.not603.i = icmp eq ptr %.0528.i, null
  br i1 %.not603.i, label %parseicon.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fb = shl nuw i32 1, %i.be
  %i.fc = sext i32 %i.fb to i64
  %i.fd = shl nsw i64 %i.fc, 2
  %i.fe = getelementptr i8, ptr %i.l, i64 16
  %.val.i621.i = load ptr, ptr %i.fe, align 8, !tbaa !115
  %i.ff = getelementptr i8, ptr %i.l, i64 72
  %.val3.i622.i = load i64, ptr %i.ff, align 8, !tbaa !116
  %i.fg = ptrtoint ptr %.0528.i to i64
  %i.fh = ptrtoint ptr %.val.i621.i to i64
  %i.fi = add i64 %.val3.i622.i, %i.fh
  %i.fj = sub i64 %i.fg, %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !117
  call void %i.fl(ptr noundef nonnull %i.l, i64 noundef %i.fj, i64 noundef range(i64 -8589934592, 8589934589) %i.fd) #13, !inline_history !93
  br label %parseicon.exit

bb.ah:                                            ; preds = %.loopexit655.i, %.lr.ph680.i
  %indvars.iv747.i = phi i64 [ 0, %.lr.ph680.i ], [ %indvars.iv.next748.i, %.loopexit655.i ] ; 11 uses
  %.0555679.i = phi i32 [ 0, %.lr.ph680.i ], [ %.2557.i, %.loopexit655.i ] ; 10 uses
  %i.fm = trunc i64 %indvars.iv747.i to i32
  %i.fn = xor i32 %i.fm, -1
  %i.fo = add i32 %i.bd, %i.fn
  %i.fp = mul i32 %.4..4..4..4..4..i, %i.fo
  %i.fq = zext i32 %i.fp to i64
  %i.fr = shl nuw nsw i64 %i.fq, 2                ; 2 uses
  %scevgep89 = getelementptr i8, ptr %i.do, i64 %i.fr
  %scevgep91.a = getelementptr i8, ptr %scevgep90.a, i64 %i.fr
  %i.fs = trunc i64 %indvars.iv747.i to i32
  %i.ft = mul i32 %narrow136, %i.fs
  %i.fu = zext i32 %i.ft to i64                   ; 2 uses
  %scevgep92 = getelementptr i8, ptr %i.da, i64 %i.fu
  %scevgep94 = getelementptr i8, ptr %scevgep93.a, i64 %i.fu
  %i.fv = mul i64 %indvars.iv747.i, %i.ei         ; 3 uses
  %i.fw = trunc i64 %i.fv to i32
  %i.fx = trunc i64 %i.fv to i32
  %i.fy = trunc i64 %i.fv to i32
  %i.fz = trunc i64 %indvars.iv747.i to i32
  %i.ga = xor i32 %i.fz, -1
  %i.gb = add i32 %i.bd, %i.ga
  %i.gc = mul i32 %.4..4..4..4..4..i, %i.gb
  %i.gd = zext i32 %i.gc to i64
  %i.ge = shl nuw nsw i64 %i.gd, 2                ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.do, i64 %i.ge
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %i.ge
  %i.gf = trunc i64 %indvars.iv747.i to i32
  %i.gg = mul i32 %narrow134.a, %i.gf
  %i.gh = zext i32 %i.gg to i64                   ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.da, i64 %i.gh
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.gh
  %i.gi = mul i64 %indvars.iv747.i, %i.ea         ; 2 uses
  %i.gj = trunc i64 %i.gi to i32
  %i.gk = trunc i64 %i.gi to i32
  %i.gl = trunc i64 %indvars.iv747.i to i32
  %i.gm = xor i32 %i.gl, -1
  %i.gn = add i32 %i.bd, %i.gm
  %i.go = mul i32 %.4..4..4..4..4..i, %i.gn
  %i.gp = zext i32 %i.go to i64
  %i.gq = shl nuw nsw i64 %i.gp, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.do, i64 %i.gq
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.gq
  %i.gr = trunc i64 %indvars.iv747.i to i32
  %i.gs = mul i32 %narrow132.a, %i.gr
  %i.gt = zext i32 %i.gs to i64                   ; 2 uses
  %scevgep55 = getelementptr i8, ptr %i.da, i64 %i.gt
  %scevgep57 = getelementptr i8, ptr %scevgep56, i64 %i.gt
  %i.gu = trunc i64 %indvars.iv747.i to i32       ; 5 uses
  %i.gv = mul i32 %i.cn, %i.gu                    ; 18 uses
  switch i16 %.14..14..14..14..14..i, label %.loopexit655.i [
    i16 1, label %.lr.ph676.i
    i16 4, label %.lr.ph676.i
    i16 8, label %.lr.ph676.i
    i16 16, label %vector.scevcheck
    i16 24, label %.lr.ph668.i
    i16 32, label %.lr.ph.i
  ]

.lr.ph.i:                                         ; preds = %bb.ah
  %i.gw = xor i32 %i.gu, -1
  %i.gx = add nsw i32 %i.bd, %i.gw
  %i.gy = mul i32 %i.gx, %.4..4..4..4..4..i       ; 3 uses
  br i1 %min.iters.check99, label %scalar.ph98.preheader, label %vector.scevcheck84

vector.scevcheck84:                               ; preds = %.lr.ph.i
  %i.gz = xor i32 %i.gy, -1
  %i.ha = icmp ult i32 %i.gz, %i.em
  %i.hb = xor i32 %i.fw, -4
  %i.hc = icmp ult i32 %i.hb, %mul.result86
  %i.hd = xor i32 %i.gv, -1
  %i.he = icmp ugt i32 %mul.result86, %i.hd
  %i.hf = or i1 %i.he, %mul.overflow87
  %i.hg = xor i32 %i.fx, -2
  %i.hh = icmp ult i32 %i.hg, %mul.result86
  %i.hi = xor i32 %i.fy, -3
  %i.hj = icmp ult i32 %i.hi, %mul.result86
  %i.hk = or i1 %i.hc, %i.ha
  %i.hl = or i1 %i.hk, %i.hf
  %i.hm = or i1 %i.hh, %i.hl
  %i.hn = or i1 %i.hj, %i.hm
  br i1 %i.hn, label %scalar.ph98.preheader, label %vector.memcheck88

vector.memcheck88:                                ; preds = %vector.scevcheck84
  %bound095 = icmp ult ptr %scevgep89, %scevgep94
  %bound196 = icmp ult ptr %scevgep92, %scevgep91.a
  %found.conflict97 = and i1 %bound095, %bound196
  br i1 %found.conflict97, label %scalar.ph98.preheader, label %vector.ph100

vector.ph100:                                     ; preds = %vector.memcheck88
  %i.ho = add i32 %i.gv, %i.ep
  %i.hp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0555679.i, i64 0
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next105, %vector.body102 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.hp, %vector.ph100 ], [ %i.ou, %vector.body102 ]
  %vec.phi104 = phi <4 x i32> [ zeroinitializer, %vector.ph100 ], [ %i.ov, %vector.body102 ]
  %i.hq = trunc i64 %index103 to i32              ; 2 uses
  %i.hr = shl i32 %i.hq, 2
  %i.hs = add i32 %i.gv, %i.hr                    ; 11 uses
  %i.ht = add i32 %i.hs, 4                        ; 4 uses
  %i.hu = add i32 %i.hs, 8                        ; 4 uses
  %i.hv = add i32 %i.hs, 12                       ; 4 uses
  %i.hw = add i32 %i.hs, 16                       ; 4 uses
  %i.hx = add i32 %i.hs, 20                       ; 4 uses
  %i.hy = add i32 %i.hs, 24                       ; 4 uses
  %i.hz = add i32 %i.hs, 28                       ; 4 uses
  %i.ia = or disjoint i32 %i.hs, 3
  %i.ib = or disjoint i32 %i.ht, 3
  %i.ic = or disjoint i32 %i.hu, 3
  %i.id = or disjoint i32 %i.hv, 3
  %i.ie = or disjoint i32 %i.hw, 3
  %i.if = or disjoint i32 %i.hx, 3
  %i.ig = or disjoint i32 %i.hy, 3
  %i.ih = or disjoint i32 %i.hz, 3
  %i.ii = zext i32 %i.ia to i64
  %i.ij = zext i32 %i.ib to i64
  %i.ik = zext i32 %i.ic to i64
  %i.il = zext i32 %i.id to i64
  %i.im = zext i32 %i.ie to i64
  %i.in = zext i32 %i.if to i64
  %i.io = zext i32 %i.ig to i64
  %i.ip = zext i32 %i.ih to i64
  %i.iq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ii
  %i.ir = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ij
  %i.is = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ik
  %i.it = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.il
  %i.iu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.im
  %i.iv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.in
  %i.iw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.io
  %i.ix = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ip
  %i.iy = load i8, ptr %i.iq, align 1, !tbaa !74, !alias.scope !118
  %i.iz = load i8, ptr %i.ir, align 1, !tbaa !74, !alias.scope !118
  %i.ja = load i8, ptr %i.is, align 1, !tbaa !74, !alias.scope !118
  %i.jb = load i8, ptr %i.it, align 1, !tbaa !74, !alias.scope !118
  %i.jc = insertelement <4 x i8> poison, i8 %i.iy, i64 0
  %i.jd = insertelement <4 x i8> %i.jc, i8 %i.iz, i64 1
  %i.je = insertelement <4 x i8> %i.jd, i8 %i.ja, i64 2
  %i.jf = insertelement <4 x i8> %i.je, i8 %i.jb, i64 3
  %i.jg = load i8, ptr %i.iu, align 1, !tbaa !74, !alias.scope !118
  %i.jh = load i8, ptr %i.iv, align 1, !tbaa !74, !alias.scope !118
  %i.ji = load i8, ptr %i.iw, align 1, !tbaa !74, !alias.scope !118
  %i.jj = load i8, ptr %i.ix, align 1, !tbaa !74, !alias.scope !118
  %i.jk = insertelement <4 x i8> poison, i8 %i.jg, i64 0
  %i.jl = insertelement <4 x i8> %i.jk, i8 %i.jh, i64 1
  %i.jm = insertelement <4 x i8> %i.jl, i8 %i.ji, i64 2
  %i.jn = insertelement <4 x i8> %i.jm, i8 %i.jj, i64 3
  %i.jo = zext <4 x i8> %i.jf to <4 x i32>
  %i.jp = zext <4 x i8> %i.jn to <4 x i32>
  %i.jq = shl nuw <4 x i32> %i.jo, splat (i32 24) ; 2 uses
  %i.jr = shl nuw <4 x i32> %i.jp, splat (i32 24) ; 2 uses
  %i.js = zext i32 %i.hs to i64
  %i.jt = zext i32 %i.ht to i64
  %i.ju = zext i32 %i.hu to i64
  %i.jv = zext i32 %i.hv to i64
  %i.jw = zext i32 %i.hw to i64
  %i.jx = zext i32 %i.hx to i64
  %i.jy = zext i32 %i.hy to i64
  %i.jz = zext i32 %i.hz to i64
  %i.ka = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.js
  %i.kb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jt
  %i.kc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ju
  %i.kd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jv
  %i.ke = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jw
  %i.kf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jx
  %i.kg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jy
  %i.kh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jz
  %i.ki = load i8, ptr %i.ka, align 1, !tbaa !74, !alias.scope !118
  %i.kj = load i8, ptr %i.kb, align 1, !tbaa !74, !alias.scope !118
  %i.kk = load i8, ptr %i.kc, align 1, !tbaa !74, !alias.scope !118
  %i.kl = load i8, ptr %i.kd, align 1, !tbaa !74, !alias.scope !118
  %i.km = insertelement <4 x i8> poison, i8 %i.ki, i64 0
  %i.kn = insertelement <4 x i8> %i.km, i8 %i.kj, i64 1
  %i.ko = insertelement <4 x i8> %i.kn, i8 %i.kk, i64 2
  %i.kp = insertelement <4 x i8> %i.ko, i8 %i.kl, i64 3
  %i.kq = load i8, ptr %i.ke, align 1, !tbaa !74, !alias.scope !118
  %i.kr = load i8, ptr %i.kf, align 1, !tbaa !74, !alias.scope !118
  %i.ks = load i8, ptr %i.kg, align 1, !tbaa !74, !alias.scope !118
  %i.kt = load i8, ptr %i.kh, align 1, !tbaa !74, !alias.scope !118
  %i.ku = insertelement <4 x i8> poison, i8 %i.kq, i64 0
  %i.kv = insertelement <4 x i8> %i.ku, i8 %i.kr, i64 1
  %i.kw = insertelement <4 x i8> %i.kv, i8 %i.ks, i64 2
  %i.kx = insertelement <4 x i8> %i.kw, i8 %i.kt, i64 3
  %i.ky = zext <4 x i8> %i.kp to <4 x i32>
  %i.kz = zext <4 x i8> %i.kx to <4 x i32>
  %i.la = or disjoint i32 %i.hs, 1
  %i.lb = or disjoint i32 %i.ht, 1
  %i.lc = or disjoint i32 %i.hu, 1
  %i.ld = or disjoint i32 %i.hv, 1
  %i.le = or disjoint i32 %i.hw, 1
  %i.lf = or disjoint i32 %i.hx, 1
  %i.lg = or disjoint i32 %i.hy, 1
  %i.lh = or disjoint i32 %i.hz, 1
  %i.li = zext i32 %i.la to i64
  %i.lj = zext i32 %i.lb to i64
  %i.lk = zext i32 %i.lc to i64
  %i.ll = zext i32 %i.ld to i64
  %i.lm = zext i32 %i.le to i64
  %i.ln = zext i32 %i.lf to i64
  %i.lo = zext i32 %i.lg to i64
  %i.lp = zext i32 %i.lh to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.li
  %i.lr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lj
  %i.ls = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lk
  %i.lt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ll
  %i.lu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lm
  %i.lv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ln
  %i.lw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lo
  %i.lx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lp
  %i.ly = load i8, ptr %i.lq, align 1, !tbaa !74, !alias.scope !118
  %i.lz = load i8, ptr %i.lr, align 1, !tbaa !74, !alias.scope !118
  %i.ma = load i8, ptr %i.ls, align 1, !tbaa !74, !alias.scope !118
  %i.mb = load i8, ptr %i.lt, align 1, !tbaa !74, !alias.scope !118
  %i.mc = insertelement <4 x i8> poison, i8 %i.ly, i64 0
  %i.md = insertelement <4 x i8> %i.mc, i8 %i.lz, i64 1
  %i.me = insertelement <4 x i8> %i.md, i8 %i.ma, i64 2
  %i.mf = insertelement <4 x i8> %i.me, i8 %i.mb, i64 3
  %i.mg = load i8, ptr %i.lu, align 1, !tbaa !74, !alias.scope !118
  %i.mh = load i8, ptr %i.lv, align 1, !tbaa !74, !alias.scope !118
  %i.mi = load i8, ptr %i.lw, align 1, !tbaa !74, !alias.scope !118
  %i.mj = load i8, ptr %i.lx, align 1, !tbaa !74, !alias.scope !118
  %i.mk = insertelement <4 x i8> poison, i8 %i.mg, i64 0
  %i.ml = insertelement <4 x i8> %i.mk, i8 %i.mh, i64 1
  %i.mm = insertelement <4 x i8> %i.ml, i8 %i.mi, i64 2
  %i.mn = insertelement <4 x i8> %i.mm, i8 %i.mj, i64 3
  %i.mo = zext <4 x i8> %i.mf to <4 x i32>
  %i.mp = zext <4 x i8> %i.mn to <4 x i32>
  %i.mq = shl nuw nsw <4 x i32> %i.mo, splat (i32 8)
  %i.mr = shl nuw nsw <4 x i32> %i.mp, splat (i32 8)
  %i.ms = or disjoint i32 %i.hs, 2
  %i.mt = or disjoint i32 %i.ht, 2
  %i.mu = or disjoint i32 %i.hu, 2
  %i.mv = or disjoint i32 %i.hv, 2
  %i.mw = or disjoint i32 %i.hw, 2
  %i.mx = or disjoint i32 %i.hx, 2
  %i.my = or disjoint i32 %i.hy, 2
  %i.mz = or disjoint i32 %i.hz, 2
  %i.na = zext i32 %i.ms to i64
  %i.nb = zext i32 %i.mt to i64
  %i.nc = zext i32 %i.mu to i64
  %i.nd = zext i32 %i.mv to i64
  %i.ne = zext i32 %i.mw to i64
  %i.nf = zext i32 %i.mx to i64
  %i.ng = zext i32 %i.my to i64
  %i.nh = zext i32 %i.mz to i64
  %i.ni = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.na
  %i.nj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nb
  %i.nk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nc
  %i.nl = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nd
  %i.nm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ne
  %i.nn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nf
  %i.no = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ng
  %i.np = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nh
  %i.nq = load i8, ptr %i.ni, align 1, !tbaa !74, !alias.scope !118
  %i.nr = load i8, ptr %i.nj, align 1, !tbaa !74, !alias.scope !118
  %i.ns = load i8, ptr %i.nk, align 1, !tbaa !74, !alias.scope !118
  %i.nt = load i8, ptr %i.nl, align 1, !tbaa !74, !alias.scope !118
  %i.nu = insertelement <4 x i8> poison, i8 %i.nq, i64 0
  %i.nv = insertelement <4 x i8> %i.nu, i8 %i.nr, i64 1
  %i.nw = insertelement <4 x i8> %i.nv, i8 %i.ns, i64 2
  %i.nx = insertelement <4 x i8> %i.nw, i8 %i.nt, i64 3
  %i.ny = load i8, ptr %i.nm, align 1, !tbaa !74, !alias.scope !118
  %i.nz = load i8, ptr %i.nn, align 1, !tbaa !74, !alias.scope !118
  %i.oa = load i8, ptr %i.no, align 1, !tbaa !74, !alias.scope !118
  %i.ob = load i8, ptr %i.np, align 1, !tbaa !74, !alias.scope !118
  %i.oc = insertelement <4 x i8> poison, i8 %i.ny, i64 0
  %i.od = insertelement <4 x i8> %i.oc, i8 %i.nz, i64 1
  %i.oe = insertelement <4 x i8> %i.od, i8 %i.oa, i64 2
  %i.of = insertelement <4 x i8> %i.oe, i8 %i.ob, i64 3
  %i.og = zext <4 x i8> %i.nx to <4 x i32>
  %i.oh = zext <4 x i8> %i.of to <4 x i32>
  %i.oi = shl nuw nsw <4 x i32> %i.og, splat (i32 16)
  %i.oj = shl nuw nsw <4 x i32> %i.oh, splat (i32 16)
  %i.ok = or disjoint <4 x i32> %i.mq, %i.ky
  %i.ol = or disjoint <4 x i32> %i.mr, %i.kz
  %i.om = or disjoint <4 x i32> %i.ok, %i.oi
  %i.on = or disjoint <4 x i32> %i.ol, %i.oj
  %i.oo = or disjoint <4 x i32> %i.om, %i.jq
  %i.op = or disjoint <4 x i32> %i.on, %i.jr
  %i.oq = add i32 %i.gy, %i.hq
  %i.or = zext i32 %i.oq to i64
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.or ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  store <4 x i32> %i.oo, ptr %i.os, align 4, !tbaa !56, !alias.scope !119, !noalias !118
  store <4 x i32> %i.op, ptr %i.ot, align 4, !tbaa !56, !alias.scope !119, !noalias !118
  %i.ou = or <4 x i32> %i.jq, %vec.phi            ; 2 uses
  %i.ov = or <4 x i32> %i.jr, %vec.phi104         ; 2 uses
  %index.next105 = add nuw i64 %index103, 8       ; 2 uses
  %i.ow = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.ow, label %middle.block106, label %vector.body102, !llvm.loop !97

middle.block106:                                  ; preds = %vector.body102
  %bin.rdx = or <4 x i32> %i.ov, %i.ou
  %i.ox = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n107, label %.loopexit655.i, label %scalar.ph98.preheader

scalar.ph98.preheader:                            ; preds = %vector.memcheck88, %vector.scevcheck84, %.lr.ph.i, %middle.block106
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck88 ], [ 0, %vector.scevcheck84 ], [ 0, %.lr.ph.i ], [ %n.vec101, %middle.block106 ]
  %.4552665.i.ph = phi i32 [ %i.gv, %vector.memcheck88 ], [ %i.gv, %vector.scevcheck84 ], [ %i.gv, %.lr.ph.i ], [ %i.ho, %middle.block106 ]
  %.1556664.i.ph = phi i32 [ %.0555679.i, %vector.memcheck88 ], [ %.0555679.i, %vector.scevcheck84 ], [ %.0555679.i, %.lr.ph.i ], [ %i.ox, %middle.block106 ]
  br label %scalar.ph98

.lr.ph668.i:                                      ; preds = %bb.ah
  %i.oy = xor i32 %i.gu, -1
  %i.oz = add nsw i32 %i.bd, %i.oy
  %i.pa = mul nuw nsw i32 %i.oz, %.4..4..4..4..4..i ; 3 uses
  br i1 %min.iters.check74, label %scalar.ph73.preheader, label %vector.scevcheck59

vector.scevcheck59:                               ; preds = %.lr.ph668.i
  %i.pb = xor i32 %i.pa, -1
  %i.pc = icmp ult i32 %i.pb, %i.eq
  %i.pd = xor i32 %i.gv, -1
  %i.pe = icmp ugt i32 %mul.result61, %i.pd
  %i.pf = or i1 %i.pe, %i.es
  %i.pg = xor i32 %i.gj, -2
  %i.ph = icmp ult i32 %i.pg, %mul.result61
  %.reass = or i1 %i.ph, %invariant.op
  %i.pi = xor i32 %i.gk, -3
  %i.pj = icmp ult i32 %i.pi, %mul.result61
  %i.pk = or i1 %i.pf, %i.pc
  %i.pl = or i1 %i.pk, %.reass
  %i.pm = or i1 %i.pj, %i.pl
  br i1 %i.pm, label %scalar.ph73.preheader, label %vector.memcheck63

vector.memcheck63:                                ; preds = %vector.scevcheck59
  %bound070 = icmp ult ptr %scevgep64, %scevgep69
  %bound171 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict72 = and i1 %bound070, %bound171
  br i1 %found.conflict72, label %scalar.ph73.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck63
  %i.pn = add i32 %i.gv, %i.ev
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next79, %vector.body77 ] ; 2 uses
  %i.po = trunc i64 %index78 to i32               ; 2 uses
  %i.pp = mul i32 %i.po, 3
  %i.pq = add i32 %i.gv, %i.pp                    ; 12 uses
  %i.pr = or disjoint i32 %i.pq, 3
  %i.ps = add i32 %i.pq, 6
  %i.pt = add i32 %i.pq, 9
  %i.pu = zext i32 %i.pq to i64
  %i.pv = zext i32 %i.pr to i64
  %i.pw = zext i32 %i.ps to i64
  %i.px = zext i32 %i.pt to i64
  %i.py = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pu
  %i.pz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pv
  %i.qa = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pw
  %i.qb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.px
  %i.qc = load i8, ptr %i.py, align 1, !tbaa !74, !alias.scope !120
  %i.qd = load i8, ptr %i.pz, align 1, !tbaa !74, !alias.scope !120
  %i.qe = load i8, ptr %i.qa, align 1, !tbaa !74, !alias.scope !120
  %i.qf = load i8, ptr %i.qb, align 1, !tbaa !74, !alias.scope !120
  %i.qg = insertelement <4 x i8> poison, i8 %i.qc, i64 0
  %i.qh = insertelement <4 x i8> %i.qg, i8 %i.qd, i64 1
  %i.qi = insertelement <4 x i8> %i.qh, i8 %i.qe, i64 2
  %i.qj = insertelement <4 x i8> %i.qi, i8 %i.qf, i64 3
  %i.qk = zext <4 x i8> %i.qj to <4 x i32>
  %i.ql = or disjoint i32 %i.pq, 1
  %i.qm = add i32 %i.pq, 4
  %i.qn = add i32 %i.pq, 7
  %i.qo = add i32 %i.pq, 10
  %i.qp = zext i32 %i.ql to i64
  %i.qq = zext i32 %i.qm to i64
  %i.qr = zext i32 %i.qn to i64
  %i.qs = zext i32 %i.qo to i64
  %i.qt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qp
  %i.qu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qq
  %i.qv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qr
  %i.qw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qs
  %i.qx = load i8, ptr %i.qt, align 1, !tbaa !74, !alias.scope !120
  %i.qy = load i8, ptr %i.qu, align 1, !tbaa !74, !alias.scope !120
  %i.qz = load i8, ptr %i.qv, align 1, !tbaa !74, !alias.scope !120
  %i.ra = load i8, ptr %i.qw, align 1, !tbaa !74, !alias.scope !120
  %i.rb = insertelement <4 x i8> poison, i8 %i.qx, i64 0
  %i.rc = insertelement <4 x i8> %i.rb, i8 %i.qy, i64 1
  %i.rd = insertelement <4 x i8> %i.rc, i8 %i.qz, i64 2
  %i.re = insertelement <4 x i8> %i.rd, i8 %i.ra, i64 3
  %i.rf = zext <4 x i8> %i.re to <4 x i32>
  %i.rg = shl nuw nsw <4 x i32> %i.rf, splat (i32 8)
  %i.rh = or disjoint <4 x i32> %i.rg, %i.qk
  %i.ri = or disjoint i32 %i.pq, 2
  %i.rj = add i32 %i.pq, 5
  %i.rk = add i32 %i.pq, 8
  %i.rl = add i32 %i.pq, 11
  %i.rm = zext i32 %i.ri to i64
  %i.rn = zext i32 %i.rj to i64
  %i.ro = zext i32 %i.rk to i64
  %i.rp = zext i32 %i.rl to i64
  %i.rq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rm
  %i.rr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rn
  %i.rs = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ro
  %i.rt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rp
  %i.ru = load i8, ptr %i.rq, align 1, !tbaa !74, !alias.scope !120
  %i.rv = load i8, ptr %i.rr, align 1, !tbaa !74, !alias.scope !120
  %i.rw = load i8, ptr %i.rs, align 1, !tbaa !74, !alias.scope !120
  %i.rx = load i8, ptr %i.rt, align 1, !tbaa !74, !alias.scope !120
  %i.ry = insertelement <4 x i8> poison, i8 %i.ru, i64 0
  %i.rz = insertelement <4 x i8> %i.ry, i8 %i.rv, i64 1
  %i.sa = insertelement <4 x i8> %i.rz, i8 %i.rw, i64 2
  %i.sb = insertelement <4 x i8> %i.sa, i8 %i.rx, i64 3
  %i.sc = zext <4 x i8> %i.sb to <4 x i32>
  %i.sd = shl nuw nsw <4 x i32> %i.sc, splat (i32 16)
  %i.se = or disjoint <4 x i32> %i.rh, %i.sd
  %i.sf = add i32 %i.pa, %i.po
  %i.sg = zext i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.sg
  store <4 x i32> %i.se, ptr %i.sh, align 4, !tbaa !56, !alias.scope !121, !noalias !120
  %index.next79 = add nuw i64 %index78, 4         ; 2 uses
  %i.si = icmp eq i64 %index.next79, %n.vec76
  br i1 %i.si, label %middle.block80, label %vector.body77, !llvm.loop !101

middle.block80:                                   ; preds = %vector.body77
  br i1 %cmp.n81, label %.loopexit655.i, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %vector.memcheck63, %vector.scevcheck59, %.lr.ph668.i, %middle.block80
  %indvars.iv733.i.ph = phi i64 [ 0, %vector.memcheck63 ], [ 0, %vector.scevcheck59 ], [ 0, %.lr.ph668.i ], [ %n.vec76, %middle.block80 ]
  %.3551667.i.ph = phi i32 [ %i.gv, %vector.memcheck63 ], [ %i.gv, %vector.scevcheck59 ], [ %i.gv, %.lr.ph668.i ], [ %i.pn, %middle.block80 ]
  br label %scalar.ph73

vector.scevcheck:                                 ; preds = %bb.ah
  %7 = trunc i64 %indvars.iv747.i to i32
  %8 = mul i32 %narrow, %7
  %9 = xor i32 %i.gu, -1
  %10 = add nsw i32 %i.bd, %9
  %11 = mul i32 %10, %.4..4..4..4..4..i           ; 3 uses
  %i.sj = xor i32 %11, -1
  %i.sk = icmp ult i32 %i.sj, %i.ew
  %i.sl = xor i32 %i.gv, -1
  %i.sm = icmp ugt i32 %mul.result, %i.sl
  %i.sn = or i1 %i.sm, %i.ey
  %i.so = xor i32 %8, -2
  %i.sp = icmp ult i32 %i.so, %mul.result
  %i.sq = or i1 %i.sk, %i.sn
  %i.sr = or i1 %i.sp, %i.sq
  br i1 %i.sr, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep57
  %bound1 = icmp ult ptr %scevgep55, %scevgep54
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ss = add i32 %i.gv, %i.fa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.st = trunc i64 %index to i32                 ; 2 uses
  %i.su = shl i32 %i.st, 1
  %i.sv = add i32 %i.gv, %i.su                    ; 6 uses
  %i.sw = or disjoint i32 %i.sv, 2
  %i.sx = add i32 %i.sv, 4                        ; 2 uses
  %i.sy = add i32 %i.sv, 6                        ; 2 uses
  %i.sz = zext i32 %i.sv to i64
  %i.ta = zext i32 %i.sw to i64
  %i.tb = zext i32 %i.sx to i64
  %i.tc = zext i32 %i.sy to i64
  %i.td = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sz
  %i.te = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ta
  %i.tf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tb
  %i.tg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tc
  %i.th = load i8, ptr %i.td, align 1, !tbaa !74, !alias.scope !122
  %i.ti = load i8, ptr %i.te, align 1, !tbaa !74, !alias.scope !122
  %i.tj = load i8, ptr %i.tf, align 1, !tbaa !74, !alias.scope !122
  %i.tk = load i8, ptr %i.tg, align 1, !tbaa !74, !alias.scope !122
  %i.tl = insertelement <4 x i8> poison, i8 %i.th, i64 0
  %i.tm = insertelement <4 x i8> %i.tl, i8 %i.ti, i64 1
  %i.tn = insertelement <4 x i8> %i.tm, i8 %i.tj, i64 2
  %i.to = insertelement <4 x i8> %i.tn, i8 %i.tk, i64 3
  %i.tp = zext <4 x i8> %i.to to <4 x i32>        ; 2 uses
  %i.tq = and <4 x i32> %i.tp, splat (i32 31)     ; 2 uses
  %i.tr = lshr <4 x i32> %i.tp, splat (i32 5)
  %i.ts = or disjoint i32 %i.sv, 1
  %i.tt = or disjoint i32 %i.sv, 3
  %i.tu = or disjoint i32 %i.sx, 1
  %i.tv = or disjoint i32 %i.sy, 1
  %i.tw = zext i32 %i.ts to i64
  %i.tx = zext i32 %i.tt to i64
  %i.ty = zext i32 %i.tu to i64
  %i.tz = zext i32 %i.tv to i64
  %i.ua = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tw
  %i.ub = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tx
  %i.uc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ty
  %i.ud = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tz
  %i.ue = load i8, ptr %i.ua, align 1, !tbaa !74, !alias.scope !122
  %i.uf = load i8, ptr %i.ub, align 1, !tbaa !74, !alias.scope !122
  %i.ug = load i8, ptr %i.uc, align 1, !tbaa !74, !alias.scope !122
  %i.uh = load i8, ptr %i.ud, align 1, !tbaa !74, !alias.scope !122
  %i.ui = insertelement <4 x i8> poison, i8 %i.ue, i64 0
  %i.uj = insertelement <4 x i8> %i.ui, i8 %i.uf, i64 1
  %i.uk = insertelement <4 x i8> %i.uj, i8 %i.ug, i64 2
  %i.ul = insertelement <4 x i8> %i.uk, i8 %i.uh, i64 3
  %i.um = zext <4 x i8> %i.ul to <4 x i32>        ; 2 uses
  %i.un = shl nuw nsw <4 x i32> %i.um, splat (i32 3) ; 2 uses
  %i.uo = and <4 x i32> %i.un, splat (i32 24)
  %i.up = or disjoint <4 x i32> %i.uo, %i.tr      ; 2 uses
  %i.uq = shl nuw nsw <4 x i32> %i.tq, splat (i32 3)
  %i.ur = lshr <4 x i32> %i.tq, splat (i32 2)
  %i.us = or disjoint <4 x i32> %i.uq, %i.ur
  %i.ut = shl nuw nsw <4 x i32> %i.up, splat (i32 14)
  %i.uu = shl nuw nsw <4 x i32> %i.up, splat (i32 9)
  %i.uv = and <4 x i32> %i.uu, splat (i32 14336)
  %i.uw = or disjoint <4 x i32> %i.uv, %i.ut
  %i.ux = and <4 x i32> %i.un, splat (i32 2016)
  %i.uy = lshr <4 x i32> %i.um, splat (i32 2)
  %i.uz = or <4 x i32> %i.ux, %i.uy
  %i.va = shl nuw nsw <4 x i32> %i.uz, splat (i32 17)
  %i.vb = or <4 x i32> %i.va, %i.uw
  %i.vc = or disjoint <4 x i32> %i.vb, %i.us
  %i.vd = add i32 %11, %i.st
  %i.ve = zext i32 %i.vd to i64
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ve
  store <4 x i32> %i.vc, ptr %i.vf, align 4, !tbaa !56, !alias.scope !123, !noalias !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vg = icmp eq i64 %index.next, %n.vec
  br i1 %i.vg, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit655.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %middle.block
  %indvars.iv738.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ %n.vec, %middle.block ]
  %.2550670.i.ph = phi i32 [ %i.gv, %vector.memcheck ], [ %i.gv, %vector.scevcheck ], [ %i.ss, %middle.block ]
  br label %scalar.ph

.lr.ph676.i:                                      ; preds = %bb.ah, %bb.ah, %bb.ah
  %i.vh = xor i32 %i.gu, -1
  %i.vi = add nsw i32 %i.bd, %i.vh
  %i.vj = mul nuw nsw i32 %i.vi, %.4..4..4..4..4..i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph676.i
  %indvars.iv743.i = phi i64 [ 0, %.lr.ph676.i ], [ %indvars.iv.next744.i, %bb.ak ] ; 2 uses
  %.0544675.i = phi i8 [ 0, %.lr.ph676.i ], [ %.1545.i, %bb.ak ]
  %.0546674.i = phi i32 [ 0, %.lr.ph676.i ], [ %i.vo, %bb.ak ] ; 2 uses
  %.0548673.i = phi i32 [ %i.gv, %.lr.ph676.i ], [ %.1549.i, %bb.ak ] ; 3 uses
  %.not620.i = icmp eq i32 %.0546674.i, 0
  br i1 %.not620.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.vk = add i32 %.0548673.i, 1
  %i.vl = zext i32 %.0548673.i to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.vl
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !74
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1549.i = phi i32 [ %.0548673.i, %bb.ai ], [ %i.vk, %bb.aj ]
  %.1547.i = phi i32 [ %.0546674.i, %bb.ai ], [ 8, %bb.aj ]
  %.1545.i = phi i8 [ %.0544675.i, %bb.ai ], [ %i.vn, %bb.aj ] ; 2 uses
  %i.vo = sub i32 %.1547.i, %i.be                 ; 2 uses
  %i.vp = zext i8 %.1545.i to i32
  %i.vq = lshr i32 %i.vp, %i.vo
  %i.vr = and i32 %i.vq, %i.dp
  %i.vs = zext nneg i32 %i.vr to i64
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %.0528.i, i64 %i.vs
  %i.vu = load i32, ptr %i.vt, align 1, !tbaa !74
  %i.vv = trunc i64 %indvars.iv743.i to i32
  %i.vw = add i32 %i.vj, %i.vv
  %i.vx = zext i32 %i.vw to i64
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.vx
  store i32 %i.vu, ptr %i.vy, align 4, !tbaa !56
  %indvars.iv.next744.i = add nuw nsw i64 %indvars.iv743.i, 1 ; 2 uses
  %exitcond746.not.i = icmp eq i64 %indvars.iv.next744.i, %wide.trip.count.i
  br i1 %exitcond746.not.i, label %.loopexit655.i, label %bb.ai

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv738.i = phi i64 [ %indvars.iv.next739.i, %scalar.ph ], [ %indvars.iv738.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.2550670.i = phi i32 [ %i.xe, %scalar.ph ], [ %.2550670.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.vz = zext i32 %.2550670.i to i64
  %i.wa = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.vz
  %i.wb = load i8, ptr %i.wa, align 1, !tbaa !74
  %i.wc = zext i8 %i.wb to i32                    ; 2 uses
  %i.wd = and i32 %i.wc, 31                       ; 2 uses
  %i.we = lshr i32 %i.wc, 5
  %i.wf = or disjoint i32 %.2550670.i, 1
  %i.wg = zext i32 %i.wf to i64
  %i.wh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wg
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !74
  %i.wj = zext i8 %i.wi to i32                    ; 2 uses
  %i.wk = shl nuw nsw i32 %i.wj, 3                ; 2 uses
  %i.wl = and i32 %i.wk, 24
  %i.wm = or disjoint i32 %i.wl, %i.we            ; 2 uses
  %i.wn = shl nuw nsw i32 %i.wd, 3
  %i.wo = lshr i32 %i.wd, 2
  %i.wp = or disjoint i32 %i.wn, %i.wo
  %i.wq = shl nuw nsw i32 %i.wm, 14
  %i.wr = shl nuw nsw i32 %i.wm, 9
  %i.ws = and i32 %i.wr, 14336
  %i.wt = or disjoint i32 %i.ws, %i.wq
  %i.wu = and i32 %i.wk, 2016
  %i.wv = lshr i32 %i.wj, 2
  %i.ww = or i32 %i.wu, %i.wv
  %i.wx = shl nuw nsw i32 %i.ww, 17
  %i.wy = or i32 %i.wx, %i.wt
  %i.wz = or disjoint i32 %i.wy, %i.wp
  %i.xa = trunc i64 %indvars.iv738.i to i32
  %i.xb = add i32 %11, %i.xa
  %i.xc = zext i32 %i.xb to i64
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.xc
  store i32 %i.wz, ptr %i.xd, align 4, !tbaa !56
  %i.xe = add i32 %.2550670.i, 2
  %indvars.iv.next739.i = add nuw nsw i64 %indvars.iv738.i, 1 ; 2 uses
  %exitcond742.not.i = icmp eq i64 %indvars.iv.next739.i, %wide.trip.count.i
  br i1 %exitcond742.not.i, label %.loopexit655.i, label %scalar.ph, !llvm.loop !106

scalar.ph73:                                      ; preds = %scalar.ph73.preheader, %scalar.ph73
  %indvars.iv733.i = phi i64 [ %indvars.iv.next734.i, %scalar.ph73 ], [ %indvars.iv733.i.ph, %scalar.ph73.preheader ] ; 2 uses
  %.3551667.i = phi i32 [ %i.yb, %scalar.ph73 ], [ %.3551667.i.ph, %scalar.ph73.preheader ] ; 4 uses
  %i.xf = zext i32 %.3551667.i to i64
  %i.xg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xf
  %i.xh = load i8, ptr %i.xg, align 1, !tbaa !74
  %i.xi = zext i8 %i.xh to i32
  %i.xj = add i32 %.3551667.i, 1
  %i.xk = zext i32 %i.xj to i64
  %i.xl = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xk
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !74
  %i.xn = zext i8 %i.xm to i32
  %i.xo = shl nuw nsw i32 %i.xn, 8
  %i.xp = or disjoint i32 %i.xo, %i.xi
  %i.xq = add i32 %.3551667.i, 2
  %i.xr = zext i32 %i.xq to i64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xr
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !74
  %i.xu = zext i8 %i.xt to i32
  %i.xv = shl nuw nsw i32 %i.xu, 16
  %i.xw = or disjoint i32 %i.xp, %i.xv
  %i.xx = trunc i64 %indvars.iv733.i to i32
  %i.xy = add i32 %i.pa, %i.xx
  %i.xz = zext i32 %i.xy to i64
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.xz
  store i32 %i.xw, ptr %i.ya, align 4, !tbaa !56
  %i.yb = add i32 %.3551667.i, 3
  %indvars.iv.next734.i = add nuw nsw i64 %indvars.iv733.i, 1 ; 2 uses
  %exitcond737.not.i = icmp eq i64 %indvars.iv.next734.i, %wide.trip.count.i
  br i1 %exitcond737.not.i, label %.loopexit655.i, label %scalar.ph73, !llvm.loop !107

scalar.ph98:                                      ; preds = %scalar.ph98.preheader, %scalar.ph98
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph98 ], [ %indvars.iv.i.ph, %scalar.ph98.preheader ] ; 2 uses
  %.4552665.i = phi i32 [ %i.zg, %scalar.ph98 ], [ %.4552665.i.ph, %scalar.ph98.preheader ] ; 5 uses
  %.1556664.i = phi i32 [ %i.zf, %scalar.ph98 ], [ %.1556664.i.ph, %scalar.ph98.preheader ]
  %i.yc = or disjoint i32 %.4552665.i, 3
  %i.yd = zext i32 %i.yc to i64
  %i.ye = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yd
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !74
  %i.yg = zext i8 %i.yf to i32
  %i.yh = shl nuw i32 %i.yg, 24                   ; 2 uses
  %i.yi = zext i32 %.4552665.i to i64
  %i.yj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yi
  %i.yk = load i8, ptr %i.yj, align 1, !tbaa !74
  %i.yl = zext i8 %i.yk to i32
  %i.ym = or disjoint i32 %.4552665.i, 1
  %i.yn = zext i32 %i.ym to i64
  %i.yo = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yn
  %i.yp = load i8, ptr %i.yo, align 1, !tbaa !74
  %i.yq = zext i8 %i.yp to i32
  %i.yr = shl nuw nsw i32 %i.yq, 8
  %i.ys = or disjoint i32 %.4552665.i, 2
  %i.yt = zext i32 %i.ys to i64
  %i.yu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.yt
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !74
  %i.yw = zext i8 %i.yv to i32
  %i.yx = shl nuw nsw i32 %i.yw, 16
  %i.yy = or disjoint i32 %i.yr, %i.yl
  %i.yz = or disjoint i32 %i.yy, %i.yx
  %i.za = or disjoint i32 %i.yz, %i.yh
  %i.zb = trunc i64 %indvars.iv.i to i32
  %i.zc = add i32 %i.gy, %i.zb
  %i.zd = zext i32 %i.zc to i64
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.zd
  store i32 %i.za, ptr %i.ze, align 4, !tbaa !56
  %i.zf = or i32 %i.yh, %.1556664.i               ; 2 uses
  %i.zg = add i32 %.4552665.i, 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit655.i, label %scalar.ph98, !llvm.loop !108

.loopexit655.i:                                   ; preds = %scalar.ph98, %scalar.ph73, %scalar.ph, %bb.ak, %middle.block106, %middle.block80, %middle.block, %bb.ah
  %.2557.i = phi i32 [ %.0555679.i, %bb.ah ], [ %.0555679.i, %middle.block80 ], [ %.0555679.i, %scalar.ph ], [ %.0555679.i, %middle.block ], [ %.0555679.i, %scalar.ph73 ], [ %.0555679.i, %bb.ak ], [ %i.ox, %middle.block106 ], [ %i.zf, %scalar.ph98 ] ; 2 uses
  %indvars.iv.next748.i = add nuw nsw i64 %indvars.iv747.i, 1 ; 2 uses
  %exitcond751.not.i = icmp eq i64 %indvars.iv.next748.i, %wide.trip.count750.i
  br i1 %exitcond751.not.i, label %._crit_edge.loopexit.i, label %bb.ah

._crit_edge.loopexit.i:                           ; preds = %.loopexit655.i
  %i.zh = icmp ne i32 %.2557.i, 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader662.i
  %.0555.lcssa.i = phi i1 [ false, %.preheader662.i ], [ %i.zh, %._crit_edge.loopexit.i ] ; 2 uses
  %.not604.i = icmp eq ptr %.0528.i, null
  br i1 %.not604.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i
  %i.zi = shl nuw i32 1, %i.be
  %i.zj = sext i32 %i.zi to i64
  %i.zk = shl nsw i64 %i.zj, 2
  %i.zl = getelementptr i8, ptr %i.l, i64 16
  %.val.i623.i = load ptr, ptr %i.zl, align 8, !tbaa !115
  %i.zm = getelementptr i8, ptr %i.l, i64 72
  %.val3.i624.i = load i64, ptr %i.zm, align 8, !tbaa !116
  %i.zn = ptrtoint ptr %.0528.i to i64
  %i.zo = ptrtoint ptr %.val.i623.i to i64
  %i.zp = add i64 %.val3.i624.i, %i.zo
  %i.zq = sub i64 %i.zn, %i.zp
  %i.zr = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.zs = load ptr, ptr %i.zr, align 8, !tbaa !117
  call void %i.zs(ptr noundef nonnull %i.l, i64 noundef %i.zq, i64 noundef range(i64 -8589934592, 8589934589) %i.zk) #13, !inline_history !93
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i
  call fastcc void @makebmp(ptr noundef nonnull @.str.18, ptr noundef %i.s, i32 noundef %.4..4..4..4..4..i, i32 noundef %i.bd, ptr noundef %i.do)
  %i.zt = icmp ne i16 %.14..14..14..14..14..i, 32
  %or.cond11.i = select i1 %i.zt, i1 true, i1 %.0555.lcssa.i
  %i.zu = mul i32 %i.cn, %i.bd                    ; 2 uses
  br i1 %or.cond11.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.zv = add i32 %.0559.i, %i.zu
  %i.zw = zext i32 %i.zv to i64
  %i.zx = mul nuw nsw i32 %i.ct, %i.bd
  %i.zy = zext nneg i32 %i.zx to i64
  %i.zz = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.aaa = call ptr %i.zz(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.zw, i64 noundef range(i64 0, 4294967296) %i.zy, i32 noundef 0) #13, !inline_history !90 ; 2 uses
end_hunk_0
