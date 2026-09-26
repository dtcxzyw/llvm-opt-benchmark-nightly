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
  %.4..4..4..4..4..i = load i32, ptr %.4..4..4..4..4..sroa_idx, align 4, !tbaa !74 ; 43 uses
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
  %i.dq = zext nneg i32 %i.bd to i64
  %i.dr = zext nneg i32 %.4..4..4..4..4..i to i64 ; 18 uses
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
  %min.iters.check99 = icmp ult i32 %.4..4..4..4..4..i, 24
  %i.eo = trunc nsw i64 %i.eh to i32
  %i.ep = trunc nsw i64 %i.eh to i32
  %mul.result86 = shl i32 %i.ep, 2                ; 4 uses
  %mul.overflow87 = icmp ugt i64 %i.eh, 1073741823
  %n.vec101 = and i64 %i.dr, 504                  ; 4 uses
  %i.eq = trunc nuw nsw i64 %n.vec101 to i32
  %i.er = shl nuw nsw i32 %i.eq, 2
  %cmp.n107 = icmp eq i64 %n.vec101, %i.dr
  %min.iters.check74 = icmp ult i32 %.4..4..4..4..4..i, 24
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
  %indvars.iv747.i = phi i64 [ 0, %.lr.ph680.i ], [ %indvars.iv.next748.i, %.loopexit655.i ] ; 11 uses
  %.0555679.i = phi i32 [ 0, %.lr.ph680.i ], [ %.2557.i, %.loopexit655.i ] ; 10 uses
  %i.fo = trunc i64 %indvars.iv747.i to i32
  %i.fp = xor i32 %i.fo, -1
  %i.fq = add i32 %i.bd, %i.fp
  %i.fr = mul i32 %.4..4..4..4..4..i, %i.fq
  %i.fs = zext i32 %i.fr to i64
  %i.ft = shl nuw nsw i64 %i.fs, 2                ; 2 uses
  %scevgep89 = getelementptr i8, ptr %i.do, i64 %i.ft
  %scevgep91 = getelementptr i8, ptr %scevgep90, i64 %i.ft
  %i.fu = trunc i64 %indvars.iv747.i to i32
  %i.fv = mul i32 %narrow136, %i.fu
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %scevgep92 = getelementptr i8, ptr %i.da, i64 %i.fw
  %scevgep94 = getelementptr i8, ptr %scevgep93, i64 %i.fw
  %i.fx = mul i64 %indvars.iv747.i, %i.ek         ; 3 uses
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = trunc i64 %i.fx to i32
  %i.ga = trunc i64 %i.fx to i32
  %i.gb = trunc i64 %indvars.iv747.i to i32
  %i.gc = xor i32 %i.gb, -1
  %i.gd = add i32 %i.bd, %i.gc
  %i.ge = mul i32 %.4..4..4..4..4..i, %i.gd
  %i.gf = zext i32 %i.ge to i64
  %i.gg = shl nuw nsw i64 %i.gf, 2                ; 2 uses
  %scevgep64 = getelementptr i8, ptr %i.do, i64 %i.gg
  %scevgep66 = getelementptr i8, ptr %scevgep65, i64 %i.gg
  %i.gh = trunc i64 %indvars.iv747.i to i32
  %i.gi = mul i32 %narrow134, %i.gh
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %scevgep67 = getelementptr i8, ptr %i.da, i64 %i.gj
  %scevgep69 = getelementptr i8, ptr %scevgep68, i64 %i.gj
  %i.gk = mul i64 %indvars.iv747.i, %i.ec         ; 2 uses
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = trunc i64 %i.gk to i32
  %i.gn = trunc i64 %indvars.iv747.i to i32
  %i.go = xor i32 %i.gn, -1
  %i.gp = add i32 %i.bd, %i.go
  %i.gq = mul i32 %.4..4..4..4..4..i, %i.gp
  %i.gr = zext i32 %i.gq to i64
  %i.gs = shl nuw nsw i64 %i.gr, 2                ; 2 uses
  %scevgep = getelementptr i8, ptr %i.do, i64 %i.gs
  %scevgep54 = getelementptr i8, ptr %scevgep53, i64 %i.gs
  %i.gt = trunc i64 %indvars.iv747.i to i32
  %i.gu = mul i32 %narrow132, %i.gt
  %i.gv = zext i32 %i.gu to i64                   ; 2 uses
  %scevgep55 = getelementptr i8, ptr %i.da, i64 %i.gv
  %scevgep57 = getelementptr i8, ptr %scevgep56, i64 %i.gv
  %i.gw = trunc i64 %indvars.iv747.i to i32
  %i.gx = mul i32 %narrow, %i.gw
  %i.gy = trunc i64 %indvars.iv747.i to i32       ; 5 uses
  %i.gz = mul i32 %i.cn, %i.gy                    ; 19 uses
  switch i16 %.14..14..14..14..14..i, label %.loopexit655.i [
    i16 1, label %.lr.ph676.i
    i16 4, label %.lr.ph676.i
    i16 8, label %.lr.ph676.i
    i16 16, label %.lr.ph671.i
    i16 24, label %.lr.ph668.i
    i16 32, label %.lr.ph.i
  ]

.lr.ph.i:                                         ; preds = %bb.ah
  %7 = xor i32 %i.gy, -1
  %8 = add i32 %i.bd, %7
  %9 = mul i32 %8, %.4..4..4..4..4..i             ; 3 uses
  br i1 %min.iters.check99, label %scalar.ph98.preheader, label %vector.scevcheck84

vector.scevcheck84:                               ; preds = %.lr.ph.i
  %i.ha = xor i32 %9, -1
  %i.hb = icmp ult i32 %i.ha, %i.eo
  %i.hc = xor i32 %i.fy, -4
  %i.hd = icmp ult i32 %i.hc, %mul.result86
  %i.he = xor i32 %i.gz, -1
  %i.hf = icmp ugt i32 %mul.result86, %i.he
  %i.hg = or i1 %i.hf, %mul.overflow87
  %i.hh = xor i32 %i.fz, -2
  %i.hi = icmp ult i32 %i.hh, %mul.result86
  %i.hj = xor i32 %i.ga, -3
  %i.hk = icmp ult i32 %i.hj, %mul.result86
  %i.hl = or i1 %i.hd, %i.hb
  %i.hm = or i1 %i.hl, %i.hg
  %i.hn = or i1 %i.hi, %i.hm
  %i.ho = or i1 %i.hk, %i.hn
  br i1 %i.ho, label %scalar.ph98.preheader, label %vector.memcheck88

vector.memcheck88:                                ; preds = %vector.scevcheck84
  %bound095 = icmp ult ptr %scevgep89, %scevgep94
  %bound196 = icmp ult ptr %scevgep92, %scevgep91
  %found.conflict97 = and i1 %bound095, %bound196
  br i1 %found.conflict97, label %scalar.ph98.preheader, label %vector.ph100

vector.ph100:                                     ; preds = %vector.memcheck88
  %i.hp = add i32 %i.gz, %i.er
  %i.hq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.0555679.i, i64 0
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph100
  %index103 = phi i64 [ 0, %vector.ph100 ], [ %index.next105, %vector.body102 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.hq, %vector.ph100 ], [ %i.ot, %vector.body102 ]
  %vec.phi104 = phi <4 x i32> [ zeroinitializer, %vector.ph100 ], [ %i.ou, %vector.body102 ]
  %i.hr = trunc i64 %index103 to i32              ; 2 uses
  %i.hs = shl i32 %i.hr, 2
  %i.ht = add i32 %i.gz, %i.hs                    ; 11 uses
  %i.hu = add i32 %i.ht, 4                        ; 4 uses
  %i.hv = add i32 %i.ht, 8                        ; 4 uses
  %i.hw = add i32 %i.ht, 12                       ; 4 uses
  %i.hx = add i32 %i.ht, 16                       ; 4 uses
  %i.hy = add i32 %i.ht, 20                       ; 4 uses
  %i.hz = add i32 %i.ht, 24                       ; 4 uses
  %i.ia = add i32 %i.ht, 28                       ; 4 uses
  %i.ib = or disjoint i32 %i.ht, 3
  %i.ic = or disjoint i32 %i.hu, 3
  %i.id = or disjoint i32 %i.hv, 3
  %i.ie = or disjoint i32 %i.hw, 3
  %i.if = or disjoint i32 %i.hx, 3
  %i.ig = or disjoint i32 %i.hy, 3
  %i.ih = or disjoint i32 %i.hz, 3
  %i.ii = or disjoint i32 %i.ia, 3
  %i.ij = zext i32 %i.ib to i64
  %i.ik = zext i32 %i.ic to i64
  %i.il = zext i32 %i.id to i64
  %i.im = zext i32 %i.ie to i64
  %i.in = zext i32 %i.if to i64
  %i.io = zext i32 %i.ig to i64
  %i.ip = zext i32 %i.ih to i64
  %i.iq = zext i32 %i.ii to i64
  %i.ir = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ij
  %i.is = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ik
  %i.it = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.il
  %i.iu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.im
  %i.iv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.in
  %i.iw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.io
  %i.ix = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ip
  %i.iy = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.iq
  %i.iz = load i8, ptr %i.ir, align 1, !tbaa !74, !alias.scope !118
  %i.ja = load i8, ptr %i.is, align 1, !tbaa !74, !alias.scope !118
  %i.jb = load i8, ptr %i.it, align 1, !tbaa !74, !alias.scope !118
  %i.jc = load i8, ptr %i.iu, align 1, !tbaa !74, !alias.scope !118
  %i.jd = insertelement <4 x i8> poison, i8 %i.iz, i64 0
  %i.je = insertelement <4 x i8> %i.jd, i8 %i.ja, i64 1
  %i.jf = insertelement <4 x i8> %i.je, i8 %i.jb, i64 2
  %i.jg = insertelement <4 x i8> %i.jf, i8 %i.jc, i64 3
  %i.jh = load i8, ptr %i.iv, align 1, !tbaa !74, !alias.scope !118
  %i.ji = load i8, ptr %i.iw, align 1, !tbaa !74, !alias.scope !118
  %i.jj = load i8, ptr %i.ix, align 1, !tbaa !74, !alias.scope !118
  %i.jk = load i8, ptr %i.iy, align 1, !tbaa !74, !alias.scope !118
  %i.jl = insertelement <4 x i8> poison, i8 %i.jh, i64 0
  %i.jm = insertelement <4 x i8> %i.jl, i8 %i.ji, i64 1
  %i.jn = insertelement <4 x i8> %i.jm, i8 %i.jj, i64 2
  %i.jo = insertelement <4 x i8> %i.jn, i8 %i.jk, i64 3
  %i.jp = zext <4 x i8> %i.jg to <4 x i32>
  %i.jq = zext <4 x i8> %i.jo to <4 x i32>
  %i.jr = shl nuw <4 x i32> %i.jp, splat (i32 24) ; 2 uses
  %i.js = shl nuw <4 x i32> %i.jq, splat (i32 24) ; 2 uses
  %i.jt = zext i32 %i.ht to i64
  %i.ju = zext i32 %i.hu to i64
  %i.jv = zext i32 %i.hv to i64
  %i.jw = zext i32 %i.hw to i64
  %i.jx = zext i32 %i.hx to i64
  %i.jy = zext i32 %i.hy to i64
  %i.jz = zext i32 %i.hz to i64
  %i.ka = zext i32 %i.ia to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jt
  %i.kc = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ju
  %i.kd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jv
  %i.ke = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jw
  %i.kf = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jx
  %i.kg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jy
  %i.kh = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.jz
  %i.ki = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ka
  %i.kj = load i8, ptr %i.kb, align 1, !tbaa !74, !alias.scope !118
  %i.kk = load i8, ptr %i.kc, align 1, !tbaa !74, !alias.scope !118
  %i.kl = load i8, ptr %i.kd, align 1, !tbaa !74, !alias.scope !118
  %i.km = load i8, ptr %i.ke, align 1, !tbaa !74, !alias.scope !118
  %i.kn = insertelement <4 x i8> poison, i8 %i.kj, i64 0
  %i.ko = insertelement <4 x i8> %i.kn, i8 %i.kk, i64 1
  %i.kp = insertelement <4 x i8> %i.ko, i8 %i.kl, i64 2
  %i.kq = insertelement <4 x i8> %i.kp, i8 %i.km, i64 3
  %i.kr = load i8, ptr %i.kf, align 1, !tbaa !74, !alias.scope !118
  %i.ks = load i8, ptr %i.kg, align 1, !tbaa !74, !alias.scope !118
  %i.kt = load i8, ptr %i.kh, align 1, !tbaa !74, !alias.scope !118
  %i.ku = load i8, ptr %i.ki, align 1, !tbaa !74, !alias.scope !118
  %i.kv = insertelement <4 x i8> poison, i8 %i.kr, i64 0
  %i.kw = insertelement <4 x i8> %i.kv, i8 %i.ks, i64 1
  %i.kx = insertelement <4 x i8> %i.kw, i8 %i.kt, i64 2
  %i.ky = insertelement <4 x i8> %i.kx, i8 %i.ku, i64 3
  %i.kz = zext <4 x i8> %i.kq to <4 x i32>
  %i.la = zext <4 x i8> %i.ky to <4 x i32>
  %i.lb = or disjoint i32 %i.ht, 1
  %i.lc = or disjoint i32 %i.hu, 1
  %i.ld = or disjoint i32 %i.hv, 1
  %i.le = or disjoint i32 %i.hw, 1
  %i.lf = or disjoint i32 %i.hx, 1
  %i.lg = or disjoint i32 %i.hy, 1
  %i.lh = or disjoint i32 %i.hz, 1
  %i.li = or disjoint i32 %i.ia, 1
  %i.lj = zext i32 %i.lb to i64
  %i.lk = zext i32 %i.lc to i64
  %i.ll = zext i32 %i.ld to i64
  %i.lm = zext i32 %i.le to i64
  %i.ln = zext i32 %i.lf to i64
  %i.lo = zext i32 %i.lg to i64
  %i.lp = zext i32 %i.lh to i64
  %i.lq = zext i32 %i.li to i64
  %i.lr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lj
  %i.ls = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lk
  %i.lt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ll
  %i.lu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lm
  %i.lv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ln
  %i.lw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lo
  %i.lx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lp
  %i.ly = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.lq
  %i.lz = load i8, ptr %i.lr, align 1, !tbaa !74, !alias.scope !118
  %i.ma = load i8, ptr %i.ls, align 1, !tbaa !74, !alias.scope !118
  %i.mb = load i8, ptr %i.lt, align 1, !tbaa !74, !alias.scope !118
  %i.mc = load i8, ptr %i.lu, align 1, !tbaa !74, !alias.scope !118
  %i.md = insertelement <4 x i8> poison, i8 %i.lz, i64 0
  %i.me = insertelement <4 x i8> %i.md, i8 %i.ma, i64 1
  %i.mf = insertelement <4 x i8> %i.me, i8 %i.mb, i64 2
  %i.mg = insertelement <4 x i8> %i.mf, i8 %i.mc, i64 3
  %i.mh = load i8, ptr %i.lv, align 1, !tbaa !74, !alias.scope !118
  %i.mi = load i8, ptr %i.lw, align 1, !tbaa !74, !alias.scope !118
  %i.mj = load i8, ptr %i.lx, align 1, !tbaa !74, !alias.scope !118
  %i.mk = load i8, ptr %i.ly, align 1, !tbaa !74, !alias.scope !118
  %i.ml = insertelement <4 x i8> poison, i8 %i.mh, i64 0
  %i.mm = insertelement <4 x i8> %i.ml, i8 %i.mi, i64 1
  %i.mn = insertelement <4 x i8> %i.mm, i8 %i.mj, i64 2
  %i.mo = insertelement <4 x i8> %i.mn, i8 %i.mk, i64 3
  %i.mp = zext <4 x i8> %i.mg to <4 x i32>
  %i.mq = zext <4 x i8> %i.mo to <4 x i32>
  %i.mr = shl nuw nsw <4 x i32> %i.mp, splat (i32 8)
  %i.ms = shl nuw nsw <4 x i32> %i.mq, splat (i32 8)
  %i.mt = or disjoint i32 %i.ht, 2
  %i.mu = or disjoint i32 %i.hu, 2
  %i.mv = or disjoint i32 %i.hv, 2
  %i.mw = or disjoint i32 %i.hw, 2
  %i.mx = or disjoint i32 %i.hx, 2
  %i.my = or disjoint i32 %i.hy, 2
  %i.mz = or disjoint i32 %i.hz, 2
  %i.na = or disjoint i32 %i.ia, 2
  %i.nb = zext i32 %i.mt to i64
  %i.nc = zext i32 %i.mu to i64
  %i.nd = zext i32 %i.mv to i64
  %i.ne = zext i32 %i.mw to i64
  %i.nf = zext i32 %i.mx to i64
  %i.ng = zext i32 %i.my to i64
  %i.nh = zext i32 %i.mz to i64
  %i.ni = zext i32 %i.na to i64
  %i.nj = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nb
  %i.nk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nc
  %i.nl = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nd
  %i.nm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ne
  %i.nn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nf
  %i.no = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ng
  %i.np = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.nh
  %i.nq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ni
  %i.nr = load i8, ptr %i.nj, align 1, !tbaa !74, !alias.scope !118
  %i.ns = load i8, ptr %i.nk, align 1, !tbaa !74, !alias.scope !118
  %i.nt = load i8, ptr %i.nl, align 1, !tbaa !74, !alias.scope !118
  %i.nu = load i8, ptr %i.nm, align 1, !tbaa !74, !alias.scope !118
  %i.nv = insertelement <4 x i8> poison, i8 %i.nr, i64 0
  %i.nw = insertelement <4 x i8> %i.nv, i8 %i.ns, i64 1
  %i.nx = insertelement <4 x i8> %i.nw, i8 %i.nt, i64 2
  %i.ny = insertelement <4 x i8> %i.nx, i8 %i.nu, i64 3
  %i.nz = load i8, ptr %i.nn, align 1, !tbaa !74, !alias.scope !118
  %i.oa = load i8, ptr %i.no, align 1, !tbaa !74, !alias.scope !118
  %i.ob = load i8, ptr %i.np, align 1, !tbaa !74, !alias.scope !118
  %i.oc = load i8, ptr %i.nq, align 1, !tbaa !74, !alias.scope !118
  %i.od = insertelement <4 x i8> poison, i8 %i.nz, i64 0
  %i.oe = insertelement <4 x i8> %i.od, i8 %i.oa, i64 1
  %i.of = insertelement <4 x i8> %i.oe, i8 %i.ob, i64 2
  %i.og = insertelement <4 x i8> %i.of, i8 %i.oc, i64 3
  %i.oh = zext <4 x i8> %i.ny to <4 x i32>
  %i.oi = zext <4 x i8> %i.og to <4 x i32>
  %i.oj = shl nuw nsw <4 x i32> %i.oh, splat (i32 16)
  %i.ok = shl nuw nsw <4 x i32> %i.oi, splat (i32 16)
  %i.ol = or disjoint <4 x i32> %i.mr, %i.kz
  %i.om = or disjoint <4 x i32> %i.ms, %i.la
  %i.on = or disjoint <4 x i32> %i.ol, %i.oj
  %i.oo = or disjoint <4 x i32> %i.om, %i.ok
  %i.op = or disjoint <4 x i32> %i.on, %i.jr
  %i.oq = or disjoint <4 x i32> %i.oo, %i.js
  %10 = add i32 %9, %i.hr
  %11 = zext i32 %10 to i64
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %11 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.or, i64 16
  store <4 x i32> %i.op, ptr %i.or, align 4, !tbaa !56, !alias.scope !119, !noalias !118
  store <4 x i32> %i.oq, ptr %i.os, align 4, !tbaa !56, !alias.scope !119, !noalias !118
  %i.ot = or <4 x i32> %i.jr, %vec.phi            ; 2 uses
  %i.ou = or <4 x i32> %i.js, %vec.phi104         ; 2 uses
  %index.next105 = add nuw i64 %index103, 8       ; 2 uses
  %i.ov = icmp eq i64 %index.next105, %n.vec101
  br i1 %i.ov, label %middle.block106, label %vector.body102, !llvm.loop !97

middle.block106:                                  ; preds = %vector.body102
  %bin.rdx = or <4 x i32> %i.ou, %i.ot
  %i.ow = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n107, label %.loopexit655.i, label %scalar.ph98.preheader

scalar.ph98.preheader:                            ; preds = %vector.memcheck88, %vector.scevcheck84, %.lr.ph.i, %middle.block106
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck88 ], [ 0, %vector.scevcheck84 ], [ 0, %.lr.ph.i ], [ %n.vec101, %middle.block106 ]
  %.4552665.i.ph = phi i32 [ %i.gz, %vector.memcheck88 ], [ %i.gz, %vector.scevcheck84 ], [ %i.gz, %.lr.ph.i ], [ %i.hp, %middle.block106 ]
  %.1556664.i.ph = phi i32 [ %.0555679.i, %vector.memcheck88 ], [ %.0555679.i, %vector.scevcheck84 ], [ %.0555679.i, %.lr.ph.i ], [ %i.ow, %middle.block106 ]
  br label %scalar.ph98

.lr.ph668.i:                                      ; preds = %bb.ah
  %12 = xor i32 %i.gy, -1
  %13 = add nsw i32 %i.bd, %12
  %14 = mul nuw nsw i32 %13, %.4..4..4..4..4..i   ; 3 uses
  br i1 %min.iters.check74, label %scalar.ph73.preheader, label %vector.scevcheck59

vector.scevcheck59:                               ; preds = %.lr.ph668.i
  %i.ox = xor i32 %14, -1
  %i.oy = icmp ult i32 %i.ox, %i.es
  %i.oz = xor i32 %i.gz, -1
  %i.pa = icmp ugt i32 %mul.result61, %i.oz
  %i.pb = or i1 %i.pa, %i.eu
  %i.pc = xor i32 %i.gl, -2
  %i.pd = icmp ult i32 %i.pc, %mul.result61
  %.reass = or i1 %i.pd, %invariant.op
  %i.pe = xor i32 %i.gm, -3
  %i.pf = icmp ult i32 %i.pe, %mul.result61
  %i.pg = or i1 %i.pb, %i.oy
  %i.ph = or i1 %i.pg, %.reass
  %i.pi = or i1 %i.pf, %i.ph
  br i1 %i.pi, label %scalar.ph73.preheader, label %vector.memcheck63

vector.memcheck63:                                ; preds = %vector.scevcheck59
  %bound070 = icmp ult ptr %scevgep64, %scevgep69
  %bound171 = icmp ult ptr %scevgep67, %scevgep66
  %found.conflict72 = and i1 %bound070, %bound171
  br i1 %found.conflict72, label %scalar.ph73.preheader, label %vector.ph75

vector.ph75:                                      ; preds = %vector.memcheck63
  %i.pj = add i32 %i.gz, %i.ex
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph75
  %index78 = phi i64 [ 0, %vector.ph75 ], [ %index.next79, %vector.body77 ] ; 2 uses
  %i.pk = trunc i64 %index78 to i32               ; 2 uses
  %i.pl = mul i32 %i.pk, 3
  %i.pm = add i32 %i.gz, %i.pl                    ; 12 uses
  %i.pn = or disjoint i32 %i.pm, 3
  %i.po = add i32 %i.pm, 6
  %i.pp = add i32 %i.pm, 9
  %i.pq = zext i32 %i.pm to i64
  %i.pr = zext i32 %i.pn to i64
  %i.ps = zext i32 %i.po to i64
  %i.pt = zext i32 %i.pp to i64
  %i.pu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pq
  %i.pv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pr
  %i.pw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ps
  %i.px = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.pt
  %i.py = load i8, ptr %i.pu, align 1, !tbaa !74, !alias.scope !120
  %i.pz = load i8, ptr %i.pv, align 1, !tbaa !74, !alias.scope !120
  %i.qa = load i8, ptr %i.pw, align 1, !tbaa !74, !alias.scope !120
  %i.qb = load i8, ptr %i.px, align 1, !tbaa !74, !alias.scope !120
  %i.qc = insertelement <4 x i8> poison, i8 %i.py, i64 0
  %i.qd = insertelement <4 x i8> %i.qc, i8 %i.pz, i64 1
  %i.qe = insertelement <4 x i8> %i.qd, i8 %i.qa, i64 2
  %i.qf = insertelement <4 x i8> %i.qe, i8 %i.qb, i64 3
  %i.qg = zext <4 x i8> %i.qf to <4 x i32>
  %i.qh = or disjoint i32 %i.pm, 1
  %i.qi = add i32 %i.pm, 4
  %i.qj = add i32 %i.pm, 7
  %i.qk = add i32 %i.pm, 10
  %i.ql = zext i32 %i.qh to i64
  %i.qm = zext i32 %i.qi to i64
  %i.qn = zext i32 %i.qj to i64
  %i.qo = zext i32 %i.qk to i64
  %i.qp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ql
  %i.qq = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qm
  %i.qr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qn
  %i.qs = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.qo
  %i.qt = load i8, ptr %i.qp, align 1, !tbaa !74, !alias.scope !120
  %i.qu = load i8, ptr %i.qq, align 1, !tbaa !74, !alias.scope !120
  %i.qv = load i8, ptr %i.qr, align 1, !tbaa !74, !alias.scope !120
  %i.qw = load i8, ptr %i.qs, align 1, !tbaa !74, !alias.scope !120
  %i.qx = insertelement <4 x i8> poison, i8 %i.qt, i64 0
  %i.qy = insertelement <4 x i8> %i.qx, i8 %i.qu, i64 1
  %i.qz = insertelement <4 x i8> %i.qy, i8 %i.qv, i64 2
  %i.ra = insertelement <4 x i8> %i.qz, i8 %i.qw, i64 3
  %i.rb = zext <4 x i8> %i.ra to <4 x i32>
  %i.rc = shl nuw nsw <4 x i32> %i.rb, splat (i32 8)
  %i.rd = or disjoint <4 x i32> %i.rc, %i.qg
  %i.re = or disjoint i32 %i.pm, 2
  %i.rf = add i32 %i.pm, 5
  %i.rg = add i32 %i.pm, 8
  %i.rh = add i32 %i.pm, 11
  %i.ri = zext i32 %i.re to i64
  %i.rj = zext i32 %i.rf to i64
  %i.rk = zext i32 %i.rg to i64
  %i.rl = zext i32 %i.rh to i64
  %i.rm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ri
  %i.rn = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rj
  %i.ro = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rk
  %i.rp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.rl
  %i.rq = load i8, ptr %i.rm, align 1, !tbaa !74, !alias.scope !120
  %i.rr = load i8, ptr %i.rn, align 1, !tbaa !74, !alias.scope !120
  %i.rs = load i8, ptr %i.ro, align 1, !tbaa !74, !alias.scope !120
  %i.rt = load i8, ptr %i.rp, align 1, !tbaa !74, !alias.scope !120
  %i.ru = insertelement <4 x i8> poison, i8 %i.rq, i64 0
  %i.rv = insertelement <4 x i8> %i.ru, i8 %i.rr, i64 1
  %i.rw = insertelement <4 x i8> %i.rv, i8 %i.rs, i64 2
  %i.rx = insertelement <4 x i8> %i.rw, i8 %i.rt, i64 3
  %i.ry = zext <4 x i8> %i.rx to <4 x i32>
  %i.rz = shl nuw nsw <4 x i32> %i.ry, splat (i32 16)
  %i.sa = or disjoint <4 x i32> %i.rd, %i.rz
  %15 = add i32 %14, %i.pk
  %16 = zext i32 %15 to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %16
  store <4 x i32> %i.sa, ptr %i.sb, align 4, !tbaa !56, !alias.scope !121, !noalias !120
  %index.next79 = add nuw i64 %index78, 4         ; 2 uses
  %i.sc = icmp eq i64 %index.next79, %n.vec76
  br i1 %i.sc, label %middle.block80, label %vector.body77, !llvm.loop !101

middle.block80:                                   ; preds = %vector.body77
  br i1 %cmp.n81, label %.loopexit655.i, label %scalar.ph73.preheader

scalar.ph73.preheader:                            ; preds = %vector.memcheck63, %vector.scevcheck59, %.lr.ph668.i, %middle.block80
  %indvars.iv733.i.ph = phi i64 [ 0, %vector.memcheck63 ], [ 0, %vector.scevcheck59 ], [ 0, %.lr.ph668.i ], [ %n.vec76, %middle.block80 ]
  %.3551667.i.ph = phi i32 [ %i.gz, %vector.memcheck63 ], [ %i.gz, %vector.scevcheck59 ], [ %i.gz, %.lr.ph668.i ], [ %i.pj, %middle.block80 ]
  br label %scalar.ph73

.lr.ph671.i:                                      ; preds = %bb.ah
  %17 = xor i32 %i.gy, -1
  %18 = add i32 %i.bd, %17
  %19 = mul i32 %18, %.4..4..4..4..4..i           ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph671.i
  %i.sd = xor i32 %19, -1
  %i.se = icmp ult i32 %i.sd, %i.ey
  %i.sf = xor i32 %i.gz, -1
  %i.sg = icmp ugt i32 %mul.result, %i.sf
  %i.sh = or i1 %i.sg, %i.fa
  %i.si = xor i32 %i.gx, -2
  %i.sj = icmp ult i32 %i.si, %mul.result
  %i.sk = or i1 %i.se, %i.sh
  %i.sl = or i1 %i.sj, %i.sk
  br i1 %i.sl, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %scevgep, %scevgep57
  %bound1 = icmp ult ptr %scevgep55, %scevgep54
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.sm = add i32 %i.gz, %i.fc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.sn = trunc i64 %index to i32                 ; 2 uses
  %i.so = shl i32 %i.sn, 1
  %i.sp = add i32 %i.gz, %i.so                    ; 6 uses
  %i.sq = or disjoint i32 %i.sp, 2
  %i.sr = add i32 %i.sp, 4                        ; 2 uses
  %i.ss = add i32 %i.sp, 6                        ; 2 uses
  %i.st = zext i32 %i.sp to i64
  %i.su = zext i32 %i.sq to i64
  %i.sv = zext i32 %i.sr to i64
  %i.sw = zext i32 %i.ss to i64
  %i.sx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.st
  %i.sy = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.su
  %i.sz = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sv
  %i.ta = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.sw
  %i.tb = load i8, ptr %i.sx, align 1, !tbaa !74, !alias.scope !122
  %i.tc = load i8, ptr %i.sy, align 1, !tbaa !74, !alias.scope !122
  %i.td = load i8, ptr %i.sz, align 1, !tbaa !74, !alias.scope !122
  %i.te = load i8, ptr %i.ta, align 1, !tbaa !74, !alias.scope !122
  %i.tf = insertelement <4 x i8> poison, i8 %i.tb, i64 0
  %i.tg = insertelement <4 x i8> %i.tf, i8 %i.tc, i64 1
  %i.th = insertelement <4 x i8> %i.tg, i8 %i.td, i64 2
  %i.ti = insertelement <4 x i8> %i.th, i8 %i.te, i64 3
  %i.tj = zext <4 x i8> %i.ti to <4 x i32>        ; 2 uses
  %i.tk = and <4 x i32> %i.tj, splat (i32 31)     ; 2 uses
  %i.tl = lshr <4 x i32> %i.tj, splat (i32 5)
  %i.tm = or disjoint i32 %i.sp, 1
  %i.tn = or disjoint i32 %i.sp, 3
  %i.to = or disjoint i32 %i.sr, 1
  %i.tp = or disjoint i32 %i.ss, 1
  %i.tq = zext i32 %i.tm to i64
  %i.tr = zext i32 %i.tn to i64
  %i.ts = zext i32 %i.to to i64
  %i.tt = zext i32 %i.tp to i64
  %i.tu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tq
  %i.tv = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tr
  %i.tw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.ts
  %i.tx = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.tt
  %i.ty = load i8, ptr %i.tu, align 1, !tbaa !74, !alias.scope !122
  %i.tz = load i8, ptr %i.tv, align 1, !tbaa !74, !alias.scope !122
  %i.ua = load i8, ptr %i.tw, align 1, !tbaa !74, !alias.scope !122
  %i.ub = load i8, ptr %i.tx, align 1, !tbaa !74, !alias.scope !122
  %i.uc = insertelement <4 x i8> poison, i8 %i.ty, i64 0
  %i.ud = insertelement <4 x i8> %i.uc, i8 %i.tz, i64 1
  %i.ue = insertelement <4 x i8> %i.ud, i8 %i.ua, i64 2
  %i.uf = insertelement <4 x i8> %i.ue, i8 %i.ub, i64 3
  %i.ug = zext <4 x i8> %i.uf to <4 x i32>        ; 2 uses
  %i.uh = shl nuw nsw <4 x i32> %i.ug, splat (i32 3) ; 2 uses
  %i.ui = and <4 x i32> %i.uh, splat (i32 24)
  %i.uj = or disjoint <4 x i32> %i.ui, %i.tl      ; 2 uses
  %i.uk = shl nuw nsw <4 x i32> %i.tk, splat (i32 3)
  %i.ul = lshr <4 x i32> %i.tk, splat (i32 2)
  %i.um = or disjoint <4 x i32> %i.uk, %i.ul
  %i.un = shl nuw nsw <4 x i32> %i.uj, splat (i32 14)
  %i.uo = shl nuw nsw <4 x i32> %i.uj, splat (i32 9)
  %i.up = and <4 x i32> %i.uo, splat (i32 14336)
  %i.uq = or disjoint <4 x i32> %i.up, %i.un
  %i.ur = and <4 x i32> %i.uh, splat (i32 2016)
  %i.us = lshr <4 x i32> %i.ug, splat (i32 2)
  %i.ut = or <4 x i32> %i.ur, %i.us
  %i.uu = shl nuw nsw <4 x i32> %i.ut, splat (i32 17)
  %i.uv = or <4 x i32> %i.uu, %i.uq
  %i.uw = or disjoint <4 x i32> %i.uv, %i.um
  %20 = add i32 %19, %i.sn
  %21 = zext i32 %20 to i64
  %i.ux = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %21
  store <4 x i32> %i.uw, ptr %i.ux, align 4, !tbaa !56, !alias.scope !123, !noalias !122
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.uy = icmp eq i64 %index.next, %n.vec
  br i1 %i.uy, label %middle.block, label %vector.body, !llvm.loop !105

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit655.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph671.i, %middle.block
  %indvars.iv738.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph671.i ], [ %n.vec, %middle.block ]
  %.2550670.i.ph = phi i32 [ %i.gz, %vector.memcheck ], [ %i.gz, %vector.scevcheck ], [ %i.gz, %.lr.ph671.i ], [ %i.sm, %middle.block ]
  br label %scalar.ph

.lr.ph676.i:                                      ; preds = %bb.ah, %bb.ah, %bb.ah
  %22 = xor i32 %i.gy, -1
  %23 = add nsw i32 %i.bd, %22
  %24 = mul nuw nsw i32 %23, %.4..4..4..4..4..i
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph676.i
  %indvars.iv743.i = phi i64 [ 0, %.lr.ph676.i ], [ %indvars.iv.next744.i, %bb.ak ] ; 2 uses
  %.0544675.i = phi i8 [ 0, %.lr.ph676.i ], [ %.1545.i, %bb.ak ]
  %.0546674.i = phi i32 [ 0, %.lr.ph676.i ], [ %i.vd, %bb.ak ] ; 2 uses
  %.0548673.i = phi i32 [ %i.gz, %.lr.ph676.i ], [ %.1549.i, %bb.ak ] ; 3 uses
  %.not620.i = icmp eq i32 %.0546674.i, 0
  br i1 %.not620.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.uz = add i32 %.0548673.i, 1
  %i.va = zext i32 %.0548673.i to i64
  %i.vb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.va
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !74
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
  %i.vj = load i32, ptr %i.vi, align 1, !tbaa !74
  %25 = trunc i64 %indvars.iv743.i to i32
  %26 = add i32 %24, %25
  %27 = zext i32 %26 to i64
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %27
  store i32 %i.vj, ptr %i.vk, align 4, !tbaa !56
  %indvars.iv.next744.i = add nuw nsw i64 %indvars.iv743.i, 1 ; 2 uses
  %exitcond746.not.i = icmp eq i64 %indvars.iv.next744.i, %i.dr
  br i1 %exitcond746.not.i, label %.loopexit655.i, label %bb.ai

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv738.i = phi i64 [ %indvars.iv.next739.i, %scalar.ph ], [ %indvars.iv738.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.2550670.i = phi i32 [ %i.wn, %scalar.ph ], [ %.2550670.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.vl = zext i32 %.2550670.i to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.vl
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !74
  %i.vo = zext i8 %i.vn to i32                    ; 2 uses
  %i.vp = and i32 %i.vo, 31                       ; 2 uses
  %i.vq = lshr i32 %i.vo, 5
  %i.vr = or disjoint i32 %.2550670.i, 1
  %i.vs = zext i32 %i.vr to i64
  %i.vt = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.vs
  %i.vu = load i8, ptr %i.vt, align 1, !tbaa !74
  %i.vv = zext i8 %i.vu to i32                    ; 2 uses
  %i.vw = shl nuw nsw i32 %i.vv, 3                ; 2 uses
  %i.vx = and i32 %i.vw, 24
  %i.vy = or disjoint i32 %i.vx, %i.vq            ; 2 uses
  %i.vz = shl nuw nsw i32 %i.vp, 3
  %i.wa = lshr i32 %i.vp, 2
  %i.wb = or disjoint i32 %i.vz, %i.wa
  %i.wc = shl nuw nsw i32 %i.vy, 14
  %i.wd = shl nuw nsw i32 %i.vy, 9
  %i.we = and i32 %i.wd, 14336
  %i.wf = or disjoint i32 %i.we, %i.wc
  %i.wg = and i32 %i.vw, 2016
  %i.wh = lshr i32 %i.vv, 2
  %i.wi = or i32 %i.wg, %i.wh
  %i.wj = shl nuw nsw i32 %i.wi, 17
  %i.wk = or i32 %i.wj, %i.wf
  %i.wl = or disjoint i32 %i.wk, %i.wb
  %28 = trunc i64 %indvars.iv738.i to i32
  %29 = add i32 %19, %28
  %30 = zext i32 %29 to i64
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %30
  store i32 %i.wl, ptr %i.wm, align 4, !tbaa !56
  %i.wn = add i32 %.2550670.i, 2
  %indvars.iv.next739.i = add nuw nsw i64 %indvars.iv738.i, 1 ; 2 uses
  %exitcond742.not.i = icmp eq i64 %indvars.iv.next739.i, %i.dr
  br i1 %exitcond742.not.i, label %.loopexit655.i, label %scalar.ph, !llvm.loop !106

scalar.ph73:                                      ; preds = %scalar.ph73.preheader, %scalar.ph73
  %indvars.iv733.i = phi i64 [ %indvars.iv.next734.i, %scalar.ph73 ], [ %indvars.iv733.i.ph, %scalar.ph73.preheader ] ; 2 uses
  %.3551667.i = phi i32 [ %i.xh, %scalar.ph73 ], [ %.3551667.i.ph, %scalar.ph73.preheader ] ; 4 uses
  %i.wo = zext i32 %.3551667.i to i64
  %i.wp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wo
  %i.wq = load i8, ptr %i.wp, align 1, !tbaa !74
  %i.wr = zext i8 %i.wq to i32
  %i.ws = add i32 %.3551667.i, 1
  %i.wt = zext i32 %i.ws to i64
  %i.wu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.wt
  %i.wv = load i8, ptr %i.wu, align 1, !tbaa !74
  %i.ww = zext i8 %i.wv to i32
  %i.wx = shl nuw nsw i32 %i.ww, 8
  %i.wy = or disjoint i32 %i.wx, %i.wr
  %i.wz = add i32 %.3551667.i, 2
  %i.xa = zext i32 %i.wz to i64
  %i.xb = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xa
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !74
  %i.xd = zext i8 %i.xc to i32
  %i.xe = shl nuw nsw i32 %i.xd, 16
  %i.xf = or disjoint i32 %i.wy, %i.xe
  %31 = trunc i64 %indvars.iv733.i to i32
  %32 = add i32 %14, %31
  %33 = zext i32 %32 to i64
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %33
  store i32 %i.xf, ptr %i.xg, align 4, !tbaa !56
  %i.xh = add i32 %.3551667.i, 3
  %indvars.iv.next734.i = add nuw nsw i64 %indvars.iv733.i, 1 ; 2 uses
  %exitcond737.not.i = icmp eq i64 %indvars.iv.next734.i, %i.dr
  br i1 %exitcond737.not.i, label %.loopexit655.i, label %scalar.ph73, !llvm.loop !107

scalar.ph98:                                      ; preds = %scalar.ph98.preheader, %scalar.ph98
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph98 ], [ %indvars.iv.i.ph, %scalar.ph98.preheader ] ; 2 uses
  %.4552665.i = phi i32 [ %i.yj, %scalar.ph98 ], [ %.4552665.i.ph, %scalar.ph98.preheader ] ; 5 uses
  %.1556664.i = phi i32 [ %i.yi, %scalar.ph98 ], [ %.1556664.i.ph, %scalar.ph98.preheader ]
  %i.xi = or disjoint i32 %.4552665.i, 3
  %i.xj = zext i32 %i.xi to i64
  %i.xk = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xj
  %i.xl = load i8, ptr %i.xk, align 1, !tbaa !74
  %i.xm = zext i8 %i.xl to i32
  %i.xn = shl nuw i32 %i.xm, 24                   ; 2 uses
  %i.xo = zext i32 %.4552665.i to i64
  %i.xp = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xo
  %i.xq = load i8, ptr %i.xp, align 1, !tbaa !74
  %i.xr = zext i8 %i.xq to i32
  %i.xs = or disjoint i32 %.4552665.i, 1
  %i.xt = zext i32 %i.xs to i64
  %i.xu = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xt
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !74
  %i.xw = zext i8 %i.xv to i32
  %i.xx = shl nuw nsw i32 %i.xw, 8
  %i.xy = or disjoint i32 %.4552665.i, 2
  %i.xz = zext i32 %i.xy to i64
  %i.ya = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.xz
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !74
  %i.yc = zext i8 %i.yb to i32
  %i.yd = shl nuw nsw i32 %i.yc, 16
  %i.ye = or disjoint i32 %i.xx, %i.xr
  %i.yf = or disjoint i32 %i.ye, %i.yd
  %i.yg = or disjoint i32 %i.yf, %i.xn
  %34 = trunc i64 %indvars.iv.i to i32
  %35 = add i32 %9, %34
  %36 = zext i32 %35 to i64
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %36
  store i32 %i.yg, ptr %i.yh, align 4, !tbaa !56
  %i.yi = or i32 %i.xn, %.1556664.i               ; 2 uses
  %i.yj = add i32 %.4552665.i, 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dr
  br i1 %exitcond.not.i, label %.loopexit655.i, label %scalar.ph98, !llvm.loop !108

.loopexit655.i:                                   ; preds = %scalar.ph98, %scalar.ph73, %scalar.ph, %bb.ak, %middle.block106, %middle.block80, %middle.block, %bb.ah
  %.2557.i = phi i32 [ %.0555679.i, %bb.ah ], [ %.0555679.i, %middle.block80 ], [ %.0555679.i, %scalar.ph ], [ %.0555679.i, %middle.block ], [ %.0555679.i, %scalar.ph73 ], [ %.0555679.i, %bb.ak ], [ %i.ow, %middle.block106 ], [ %i.yi, %scalar.ph98 ] ; 2 uses
  %indvars.iv.next748.i = add nuw nsw i64 %indvars.iv747.i, 1 ; 2 uses
  %exitcond751.not.i = icmp eq i64 %indvars.iv.next748.i, %i.dq
  br i1 %exitcond751.not.i, label %._crit_edge.loopexit.i, label %bb.ah

._crit_edge.loopexit.i:                           ; preds = %.loopexit655.i
  %i.yk = icmp ne i32 %.2557.i, 0
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader662.i
  %.0555.lcssa.i = phi i1 [ false, %.preheader662.i ], [ %i.yk, %._crit_edge.loopexit.i ] ; 2 uses
  %.not604.i = icmp eq ptr %.0528.i, null
  br i1 %.not604.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i
  %i.yl = shl nuw i32 1, %i.be
  %i.ym = sext i32 %i.yl to i64
  %i.yn = shl nsw i64 %i.ym, 2
  %i.yo = getelementptr i8, ptr %i.l, i64 16
  %.val.i623.i = load ptr, ptr %i.yo, align 8, !tbaa !115
  %i.yp = getelementptr i8, ptr %i.l, i64 72
  %.val3.i624.i = load i64, ptr %i.yp, align 8, !tbaa !116
  %i.yq = ptrtoint ptr %.0528.i to i64
  %i.yr = ptrtoint ptr %.val.i623.i to i64
  %i.ys = add i64 %.val3.i624.i, %i.yr
  %i.yt = sub i64 %i.yq, %i.ys
  %i.yu = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !117
  call void %i.yv(ptr noundef nonnull %i.l, i64 noundef %i.yt, i64 noundef range(i64 -8589934592, 8589934589) %i.yn) #13, !inline_history !93
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i
  call fastcc void @makebmp(ptr noundef nonnull @.str.18, ptr noundef %i.s, i32 noundef %.4..4..4..4..4..i, i32 noundef %i.bd, ptr noundef %i.do)
  %i.yw = icmp ne i16 %.14..14..14..14..14..i, 32
  %or.cond11.i = select i1 %i.yw, i1 true, i1 %.0555.lcssa.i
  %i.yx = mul i32 %i.cn, %i.bd                    ; 2 uses
  br i1 %or.cond11.i, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.yy = add i32 %.0559.i, %i.yx
  %i.yz = zext i32 %i.yy to i64
  %i.za = mul nuw nsw i32 %i.ct, %i.bd
  %i.zb = zext nneg i32 %i.za to i64
  %i.zc = load ptr, ptr %i.ad, align 8, !tbaa !73
  %i.zd = call ptr %i.zc(ptr noundef nonnull %i.l, i64 noundef range(i64 0, 4294967296) %i.yz, i64 noundef range(i64 0, 4294967296) %i.zb, i32 noundef 0) #13, !inline_history !90 ; 2 uses
  %.not605.i = icmp eq ptr %i.zd, null
  br i1 %.not605.i, label %.preheader654.i, label %bb.ao

.preheader654.i:                                  ; preds = %bb.an
  %i.ze = add i32 %.8..8..8..8..8..i, -2
  %i.zf = icmp ult i32 %i.ze, -3
  %i.zg = icmp ne i32 %.4..4..4..4..4..i, 0
  %or.cond713.i = and i1 %i.zg, %i.zf
  br i1 %or.cond713.i, label %.preheader653.preheader.i, label %._crit_edge686.split.i

.preheader653.preheader.i:                        ; preds = %.preheader654.i
  %i.zh = zext nneg i32 %.4..4..4..4..4..i to i64 ; 4 uses
  %umax760.i = call i32 @llvm.umax.i32(i32 %i.bd, i32 1)
  %wide.trip.count761.i = zext nneg i32 %umax760.i to i64
  %min.iters.check111 = icmp ult i32 %.4..4..4..4..4..i, 8
  %n.vec113 = and i64 %i.zh, 504                  ; 3 uses
  %cmp.n119 = icmp eq i64 %n.vec113, %i.zh
  br label %.preheader653.i

.preheader653.i:                                  ; preds = %._crit_edge684.i, %.preheader653.preheader.i
  %indvars.iv757.i = phi i64 [ 0, %.preheader653.preheader.i ], [ %indvars.iv.next758.i, %._crit_edge684.i ] ; 2 uses
  %i.zi = mul nuw nsw i64 %indvars.iv757.i, %i.zh
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.zi ; 2 uses
  br i1 %min.iters.check111, label %scalar.ph110.preheader, label %vector.body114

vector.body114:                                   ; preds = %.preheader653.i, %vector.body114
  %index115 = phi i64 [ %index.next117, %vector.body114 ], [ 0, %.preheader653.i ] ; 2 uses
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %index115 ; 3 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.zj, align 4, !tbaa !56
  %wide.load116 = load <4 x i32>, ptr %i.zk, align 4, !tbaa !56
  %i.zl = or <4 x i32> %wide.load, splat (i32 -16777216)
  %i.zm = or <4 x i32> %wide.load116, splat (i32 -16777216)
  store <4 x i32> %i.zl, ptr %i.zj, align 4, !tbaa !56
  store <4 x i32> %i.zm, ptr %i.zk, align 4, !tbaa !56
  %index.next117 = add nuw i64 %index115, 8       ; 2 uses
  %i.zn = icmp eq i64 %index.next117, %n.vec113
  br i1 %i.zn, label %middle.block118, label %vector.body114, !llvm.loop !109

middle.block118:                                  ; preds = %vector.body114
  br i1 %cmp.n119, label %._crit_edge684.i, label %scalar.ph110.preheader

scalar.ph110.preheader:                           ; preds = %.preheader653.i, %middle.block118
  %indvars.iv752.i.ph = phi i64 [ 0, %.preheader653.i ], [ %n.vec113, %middle.block118 ]
  br label %scalar.ph110

scalar.ph110:                                     ; preds = %scalar.ph110.preheader, %scalar.ph110
  %indvars.iv752.i = phi i64 [ %indvars.iv.next753.i, %scalar.ph110 ], [ %indvars.iv752.i.ph, %scalar.ph110.preheader ] ; 2 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv752.i ; 2 uses
  %i.zo = load i32, ptr %gep.i, align 4, !tbaa !56
  %i.zp = or i32 %i.zo, -16777216
  store i32 %i.zp, ptr %gep.i, align 4, !tbaa !56
  %indvars.iv.next753.i = add nuw nsw i64 %indvars.iv752.i, 1 ; 2 uses
  %exitcond756.not.i = icmp eq i64 %indvars.iv.next753.i, %i.zh
  br i1 %exitcond756.not.i, label %._crit_edge684.i, label %scalar.ph110, !llvm.loop !110

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
  %i.zq = zext i32 %i.yx to i64
  %i.zr = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.zq
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %._crit_edge686.split.i
  %.3558.i = phi i1 [ %.0555.lcssa.i, %bb.ap ], [ false, %bb.ao ], [ true, %._crit_edge686.split.i ]
  %.0537.i = phi i32 [ %i.cu, %bb.ap ], [ %i.ct, %bb.ao ], [ %i.ct, %._crit_edge686.split.i ]
  %.0527.i = phi ptr [ %i.zr, %bb.ap ], [ %i.zd, %bb.ao ], [ null, %._crit_edge686.split.i ]
  %or.cond13.i = select i1 %.not599.i, i1 %.3558.i, i1 false
  %or.cond13.not.i = xor i1 %or.cond13.i, true
  %i.zs = add i32 %.8..8..8..8..8..i, -2
  %i.zt = icmp ult i32 %i.zs, -3                  ; 2 uses
  %or.cond714.i = select i1 %or.cond13.not.i, i1 %i.zt, i1 false
  %i.zu = icmp ne i32 %.4..4..4..4..4..i, 0       ; 2 uses
  %or.cond715.i = and i1 %i.zu, %or.cond714.i
  br i1 %or.cond715.i, label %.lr.ph692.preheader.i, label %.loopexit652.i

.lr.ph692.preheader.i:                            ; preds = %bb.aq
  %umax770.i = call i32 @llvm.umax.i32(i32 %i.bd, i32 1)
  %i.zv = zext nneg i32 %umax770.i to i64
  %wide.trip.count771.i = zext nneg i32 %.4..4..4..4..4..i to i64
  br label %.lr.ph692.i

.lr.ph692.i:                                      ; preds = %._crit_edge693.i, %.lr.ph692.preheader.i
  %indvars.iv767.i = phi i64 [ 0, %.lr.ph692.preheader.i ], [ %indvars.iv.next768.i, %._crit_edge693.i ] ; 2 uses
  %37 = trunc i64 %indvars.iv767.i to i32         ; 2 uses
  %38 = xor i32 %37, -1
  %39 = add nsw i32 %i.bd, %38
  %40 = mul nuw nsw i32 %39, %.4..4..4..4..4..i
  %i.zw = mul i32 %.0537.i, %37
  br label %bb.ar

bb.ar:                                            ; preds = %bb.at, %.lr.ph692.i
  %indvars.iv763.i = phi i64 [ 0, %.lr.ph692.i ], [ %indvars.iv.next764.i, %bb.at ] ; 2 uses
  %.0531690.i = phi i8 [ 0, %.lr.ph692.i ], [ %.1532.i, %bb.at ]
  %.0533689.i = phi i32 [ 0, %.lr.ph692.i ], [ %i.aab, %bb.at ] ; 2 uses
  %.0535688.i = phi i32 [ %i.zw, %.lr.ph692.i ], [ %.1536.i, %bb.at ] ; 3 uses
  %.not606.i = icmp eq i32 %.0533689.i, 0
  br i1 %.not606.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.zx = add i32 %.0535688.i, 1
  %i.zy = zext i32 %.0535688.i to i64
  %i.zz = getelementptr inbounds nuw i8, ptr %.0527.i, i64 %i.zy
  %i.aaa = load i8, ptr %i.zz, align 1, !tbaa !74
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.1536.i = phi i32 [ %.0535688.i, %bb.ar ], [ %i.zx, %bb.as ]
  %.1534.i = phi i32 [ %.0533689.i, %bb.ar ], [ 8, %bb.as ]
  %.1532.i = phi i8 [ %.0531690.i, %bb.ar ], [ %i.aaa, %bb.as ] ; 2 uses
  %i.aab = add nsw i32 %.1534.i, -1               ; 2 uses
  %i.aac = zext i8 %.1532.i to i32
  %i.aad = xor i32 %i.aac, -1
  %i.aae = lshr i32 %i.aad, %i.aab
  %i.aaf = trunc i32 %i.aae to i1
  %i.aag = select i1 %i.aaf, i32 -16777216, i32 0
  %41 = trunc i64 %indvars.iv763.i to i32
  %42 = add i32 %40, %41
  %43 = zext i32 %42 to i64
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %43 ; 2 uses
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !56
  %i.aaj = or i32 %i.aag, %i.aai
  store i32 %i.aaj, ptr %i.aah, align 4, !tbaa !56
  %indvars.iv.next764.i = add nuw nsw i64 %indvars.iv763.i, 1 ; 2 uses
  %exitcond766.not.i = icmp eq i64 %indvars.iv.next764.i, %wide.trip.count771.i
  br i1 %exitcond766.not.i, label %._crit_edge693.i, label %bb.ar

._crit_edge693.i:                                 ; preds = %bb.at
  %indvars.iv.next768.i = add nuw nsw i64 %indvars.iv767.i, 1 ; 2 uses
  %exitcond772.not.i = icmp eq i64 %indvars.iv.next768.i, %i.zv
  br i1 %exitcond772.not.i, label %.loopexit652.i, label %.lr.ph692.i

.loopexit652.i:                                   ; preds = %._crit_edge693.i, %bb.aq
  call fastcc void @makebmp(ptr noundef nonnull @.str.21, ptr noundef %i.s, i32 noundef %.4..4..4..4..4..i, i32 noundef %i.bd, ptr noundef %i.do)
  %or.cond716.i = and i1 %i.zu, %i.zt
  br i1 %or.cond716.i, label %.preheader650.preheader.i, label %._crit_edge700.split.i

.preheader650.preheader.i:                        ; preds = %.loopexit652.i
  %i.aak = zext nneg i32 %.4..4..4..4..4..i to i64 ; 4 uses
  %umax781.i = call i32 @llvm.umax.i32(i32 %i.bd, i32 1)
  %wide.trip.count782.i = zext nneg i32 %umax781.i to i64
  %min.iters.check122 = icmp ult i32 %.4..4..4..4..4..i, 4
  %n.vec124 = and i64 %i.aak, 508                 ; 3 uses
  %cmp.n130 = icmp eq i64 %n.vec124, %i.aak
  br label %.preheader650.i

.preheader650.i:                                  ; preds = %._crit_edge698.i, %.preheader650.preheader.i
  %indvars.iv778.i = phi i64 [ 0, %.preheader650.preheader.i ], [ %indvars.iv.next779.i, %._crit_edge698.i ] ; 2 uses
  %i.aal = mul nuw nsw i64 %indvars.iv778.i, %i.aak
  %invariant.gep825.i = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.aal ; 2 uses
  br i1 %min.iters.check122, label %scalar.ph121.preheader, label %vector.body125

vector.body125:                                   ; preds = %.preheader650.i, %vector.body125
  %index126 = phi i64 [ %index.next128, %vector.body125 ], [ 0, %.preheader650.i ] ; 2 uses
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep825.i, i64 %index126 ; 2 uses
  %wide.load127 = load <4 x i32>, ptr %i.aam, align 4, !tbaa !56 ; 4 uses
  %i.aan = lshr <4 x i32> %wide.load127, splat (i32 24) ; 4 uses
  %i.aao = lshr <4 x i32> %wide.load127, splat (i32 16)
  %i.aap = and <4 x i32> %i.aao, splat (i32 255)
  %i.aaq = lshr <4 x i32> %wide.load127, splat (i32 8)
  %i.aar = and <4 x i32> %i.aaq, splat (i32 255)
  %i.aas = and <4 x i32> %wide.load127, splat (i32 255)
  %i.aat = xor <4 x i32> %i.aan, splat (i32 255)  ; 3 uses
  %i.aau = mul nuw nsw <4 x i32> %i.aap, %i.aan
  %i.aav = trunc nuw <4 x i32> %i.aau to <4 x i16>
  %i.aaw = udiv <4 x i16> %i.aav, splat (i16 255)
  %i.aax = zext nneg <4 x i16> %i.aaw to <4 x i32>
  %i.aay = add nuw nsw <4 x i32> %i.aat, %i.aax
  %i.aaz = mul nuw nsw <4 x i32> %i.aar, %i.aan
  %i.aba = trunc nuw <4 x i32> %i.aaz to <4 x i16>
  %i.abb = udiv <4 x i16> %i.aba, splat (i16 255)
  %i.abc = zext nneg <4 x i16> %i.abb to <4 x i32>
  %i.abd = add nuw nsw <4 x i32> %i.aat, %i.abc
  %i.abe = mul nuw nsw <4 x i32> %i.aan, %i.aas
  %i.abf = trunc nuw <4 x i32> %i.abe to <4 x i16>
  %i.abg = udiv <4 x i16> %i.abf, splat (i16 255)
  %i.abh = zext nneg <4 x i16> %i.abg to <4 x i32>
  %i.abi = add nuw nsw <4 x i32> %i.aat, %i.abh
  %i.abj = shl nuw nsw <4 x i32> %i.aay, splat (i32 16)
  %i.abk = shl nuw nsw <4 x i32> %i.abd, splat (i32 8)
  %i.abl = or <4 x i32> %i.abi, %i.abk
  %i.abm = or <4 x i32> %i.abl, %i.abj
  %i.abn = or <4 x i32> %i.abm, splat (i32 -16777216)
  store <4 x i32> %i.abn, ptr %i.aam, align 4, !tbaa !56
  %index.next128 = add nuw i64 %index126, 4       ; 2 uses
  %i.abo = icmp eq i64 %index.next128, %n.vec124
  br i1 %i.abo, label %middle.block129, label %vector.body125, !llvm.loop !111

middle.block129:                                  ; preds = %vector.body125
  br i1 %cmp.n130, label %._crit_edge698.i, label %scalar.ph121.preheader

scalar.ph121.preheader:                           ; preds = %.preheader650.i, %middle.block129
  %indvars.iv773.i.ph = phi i64 [ 0, %.preheader650.i ], [ %n.vec124, %middle.block129 ]
  br label %scalar.ph121

scalar.ph121:                                     ; preds = %scalar.ph121.preheader, %scalar.ph121
  %indvars.iv773.i = phi i64 [ %indvars.iv.next774.i, %scalar.ph121 ], [ %indvars.iv773.i.ph, %scalar.ph121.preheader ] ; 2 uses
  %gep826.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep825.i, i64 %indvars.iv773.i ; 2 uses
  %i.abp = load i32, ptr %gep826.i, align 4, !tbaa !56 ; 4 uses
  %i.abq = lshr i32 %i.abp, 24                    ; 4 uses
  %i.abr = lshr i32 %i.abp, 16
  %i.abs = and i32 %i.abr, 255
  %i.abt = lshr i32 %i.abp, 8
  %i.abu = and i32 %i.abt, 255
  %i.abv = and i32 %i.abp, 255
  %i.abw = xor i32 %i.abq, 255                    ; 3 uses
  %i.abx = mul nuw nsw i32 %i.abs, %i.abq
  %.lhs.trunc.i = trunc nuw i32 %i.abx to i16
  %i.aby = udiv i16 %.lhs.trunc.i, 255
  %.zext.i = zext nneg i16 %i.aby to i32
  %i.abz = add nuw nsw i32 %i.abw, %.zext.i
  %i.aca = mul nuw nsw i32 %i.abu, %i.abq
  %.lhs.trunc634.i = trunc nuw i32 %i.aca to i16
  %i.acb = udiv i16 %.lhs.trunc634.i, 255
  %.zext635.i = zext nneg i16 %i.acb to i32
  %i.acc = add nuw nsw i32 %i.abw, %.zext635.i
  %i.acd = mul nuw nsw i32 %i.abq, %i.abv
  %.lhs.trunc636.i = trunc nuw i32 %i.acd to i16
  %i.ace = udiv i16 %.lhs.trunc636.i, 255
  %.zext637.i = zext nneg i16 %i.ace to i32
  %i.acf = add nuw nsw i32 %i.abw, %.zext637.i
  %i.acg = shl nuw nsw i32 %i.abz, 16
  %i.ach = shl nuw nsw i32 %i.acc, 8
  %i.aci = or i32 %i.acf, %i.ach
  %i.acj = or i32 %i.aci, %i.acg
  %i.ack = or i32 %i.acj, -16777216
  store i32 %i.ack, ptr %gep826.i, align 4, !tbaa !56
  %indvars.iv.next774.i = add nuw nsw i64 %indvars.iv773.i, 1 ; 2 uses
  %exitcond777.not.i = icmp eq i64 %indvars.iv.next774.i, %i.aak
  br i1 %exitcond777.not.i, label %._crit_edge698.i, label %scalar.ph121, !llvm.loop !112

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
  %i.acl = icmp ugt i32 %.4..4..4..4..4..i, 32
  br i1 %i.acl, label %.preheader647.i, label %.loopexit649.i

.preheader647.i:                                  ; preds = %.preheader648.i, %._crit_edge703.i
  %.0538705.i = phi i32 [ %i.aee, %._crit_edge703.i ], [ %.4..4..4..4..4..i, %.preheader648.i ] ; 6 uses
  %.0541704.i = phi i32 [ %i.aef, %._crit_edge703.i ], [ %i.bd, %.preheader648.i ] ; 3 uses
  %.not725.i = icmp eq i32 %.0541704.i, 0
  br i1 %.not725.i, label %._crit_edge703.i, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader647.i
  %i.acm = zext nneg i32 %.0538705.i to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.av, %.preheader.preheader.i
  %.4565702.i = phi i32 [ %i.aec, %bb.av ], [ 0, %.preheader.preheader.i ] ; 4 uses
  %i.acn = mul i32 %.4565702.i, %.0538705.i
  %i.aco = or disjoint i32 %.4565702.i, 1
  %i.acp = mul i32 %i.aco, %.0538705.i
  %i.acq = lshr exact i32 %.4565702.i, 1
  %i.acr = mul i32 %i.acq, %.0538705.i
  %i.acs = lshr i32 %i.acr, 1
  %i.act = zext nneg i32 %i.acs to i64
  %invariant.gep827.i = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.act
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %.preheader.i
  %indvars.iv784.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next785.i, %bb.au ] ; 3 uses
  %i.acu = trunc nuw nsw i64 %indvars.iv784.i to i32 ; 2 uses
  %i.acv = add i32 %i.acn, %i.acu                 ; 2 uses
  %i.acw = zext i32 %i.acv to i64
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.acw
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !56 ; 2 uses
  %i.acz = or disjoint i32 %i.acv, 1
  %i.ada = zext i32 %i.acz to i64
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ada
  %i.adc = load i32, ptr %i.adb, align 4, !tbaa !56 ; 2 uses
  %i.add = add i32 %i.acp, %i.acu                 ; 2 uses
  %i.ade = zext i32 %i.add to i64
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.ade
  %i.adg = load i32, ptr %i.adf, align 4, !tbaa !56 ; 2 uses
  %i.adh = add i32 %i.add, 1
  %i.adi = zext i32 %i.adh to i64
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.adi
  %i.adk = load i32, ptr %i.adj, align 4, !tbaa !56 ; 2 uses
  %i.adl = xor i32 %i.adc, %i.acy
  %i.adm = lshr i32 %i.adl, 1
  %i.adn = and i32 %i.adm, 2139062143
  %i.ado = and i32 %i.adc, %i.acy
  %i.adp = add i32 %i.adn, %i.ado                 ; 2 uses
  %i.adq = xor i32 %i.adk, %i.adg
  %i.adr = lshr i32 %i.adq, 1
  %i.ads = and i32 %i.adr, 2139062143
  %i.adt = and i32 %i.adk, %i.adg
  %i.adu = add i32 %i.ads, %i.adt                 ; 2 uses
  %i.adv = xor i32 %i.adu, %i.adp
  %i.adw = lshr i32 %i.adv, 1
  %i.adx = and i32 %i.adw, 2139062143
  %i.ady = and i32 %i.adu, %i.adp
  %i.adz = add i32 %i.adx, %i.ady
  %i.aea = lshr exact i64 %indvars.iv784.i, 1
  %gep828.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep827.i, i64 %i.aea
  store i32 %i.adz, ptr %gep828.i, align 4, !tbaa !56
  %indvars.iv.next785.i = add nuw nsw i64 %indvars.iv784.i, 2 ; 2 uses
  %i.aeb = icmp samesign ult i64 %indvars.iv.next785.i, %i.acm
  br i1 %i.aeb, label %bb.au, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.aec = add i32 %.4565702.i, 2                 ; 2 uses
  %i.aed = icmp ult i32 %i.aec, %.0541704.i
  br i1 %i.aed, label %.preheader.i, label %._crit_edge703.i

._crit_edge703.i:                                 ; preds = %bb.av, %.preheader647.i
  %i.aee = lshr i32 %.0538705.i, 1                ; 3 uses
  %i.aef = lshr i32 %.0541704.i, 1                ; 3 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.22, i32 noundef %i.aee, i32 noundef %i.aef) #13
  %i.aeg = icmp ugt i32 %.0538705.i, 65
  br i1 %i.aeg, label %.preheader647.i, label %.loopexit649.i

bb.aw:                                            ; preds = %._crit_edge700.split.i
  %i.aeh = add nsw i32 %.4..4..4..4..4..i, -32
  %i.aei = call i32 @llvm.abs.i32(i32 %i.aeh, i1 true)
  %i.aej = add nsw i32 %i.bd, -32
  %i.aek = call i32 @llvm.abs.i32(i32 %i.aej, i1 true)
  %i.ael = add nuw nsw i32 %i.aek, %i.aei
  %i.aem = add nsw i32 %.4..4..4..4..4..i, -24
  %i.aen = call i32 @llvm.abs.i32(i32 %i.aem, i1 true)
  %i.aeo = add nsw i32 %i.bd, -24
end_hunk_0
