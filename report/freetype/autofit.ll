Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/autofit?download=true
inline.NumInlined: 210
inline.NumDeleted: 87
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 37
begin_hunk_0_@af_latin_hints_compute_segments:bb.a
bb.ba:                                            ; preds = %bb.az
  %i.jn = getelementptr inbounds nuw i8, ptr %storemerge575, i64 10 ; 2 uses
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !459
  %i.jp = sub nsw i64 %i.id, %i.jl
  %i.jq = lshr i64 %i.jp, 1
  %i.jr = trunc i64 %i.jq to i16
  %i.js = add i16 %i.jo, %i.jr
  store i16 %i.js, ptr %i.jn, align 2, !tbaa !459
  br label %bb.bb

bb.bb:                                            ; preds = %bb.az, %bb.ba, %bb.av, %bb.aw
  %i.jt = getelementptr inbounds nuw i8, ptr %storemerge575, i64 80 ; 2 uses
  %i.ju = icmp ult ptr %i.jt, %i.hv
  br i1 %i.ju, label %.lr.ph577, label %.loopexit, !llvm.loop !467

bb.bc:                                            ; preds = %bb.ai, %bb.ak
  %.ph = phi i32 [ %i.gl, %bb.ai ], [ %i.gp, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bb, %._crit_edge, %bb.as, %.thread554, %bb.bc
  %.3414 = phi i32 [ 0, %.thread554 ], [ %.ph, %bb.bc ], [ 0, %bb.as ], [ 0, %._crit_edge ], [ 0, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret i32 %.3414
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @af_latin_hints_link_segments(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 0, 2) %3) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = zext nneg i32 %3 to i64
  %i.c = getelementptr inbounds nuw [2536 x i8], ptr %i.a, i64 %i.b ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !166  ; 8 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.c, align 8, !tbaa !167
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %i.e, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ] ; 6 uses
  %.not97 = icmp eq i32 %1, 0
  br i1 %.not97, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = add i32 %1, -1
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.k
  %i.m = load i64, ptr %i.l, align 8, !tbaa !170
  %i.n = freeze i64 %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.081 = phi i64 [ %i.n, %bb.d ], [ 0, %bb.c ]   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5168
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !95
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load i32, ptr %i.q, align 8, !tbaa !138
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = lshr i64 %i.s, 8
  %spec.store.select = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1) ; 2 uses
  %i.u = mul nuw nsw i64 %i.s, 375
  %i.v = lshr i64 %i.u, 7                         ; 2 uses
  %i.w = icmp ult ptr %i.e, %i.i
  br i1 %i.w, label %.lr.ph108.split.us, label %._crit_edge

.lr.ph108.split.us:                               ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !282  ; 4 uses
  %.not102 = icmp eq i64 %.081, 0
  br i1 %.not102, label %.lr.ph108.split.us.split.us, label %.lr.ph108.split.us.split

.lr.ph108.split.us.split.us:                      ; preds = %.lr.ph108.split.us, %..loopexit_crit_edge.split.us.us.us
  %.079105.us.us = phi ptr [ %i.ac, %..loopexit_crit_edge.split.us.us.us ], [ %i.e, %.lr.ph108.split.us ] ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.079105.us.us, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !465
  %i.ab = sext i8 %i.aa to i32
  %.not100.us.us = icmp eq i32 %i.y, %i.ab
  br i1 %.not100.us.us, label %.preheader103.us.us, label %..loopexit_crit_edge.split.us.us.us

..loopexit_crit_edge.split.us.us.us:              ; preds = %bb.l, %.lr.ph108.split.us.split.us
  %i.ac = getelementptr inbounds nuw i8, ptr %.079105.us.us, i64 80 ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.i
  br i1 %i.ad, label %.lr.ph108.split.us.split.us, label %.lr.ph.preheader, !llvm.loop !468

.lr.ph.preheader:                                 ; preds = %..loopexit_crit_edge.split.us116, %..loopexit_crit_edge.split.us.us.us
  br label %.lr.ph

.preheader103.us.us:                              ; preds = %.lr.ph108.split.us.split.us
  %i.ae = getelementptr inbounds nuw i8, ptr %.079105.us.us, i64 2
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !169 ; 2 uses
  %i.ag = sext i16 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.079105.us.us, i64 6
  %i.ai = getelementptr inbounds nuw i8, ptr %.079105.us.us, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.079105.us.us, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.079105.us.us, i64 32
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %.preheader103.us.us
  %.078104.us.us.us = phi ptr [ %i.e, %.preheader103.us.us ], [ %i.bk, %bb.l ] ; 8 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.078104.us.us.us, i64 2
  %i.am = load i16, ptr %i.al, align 2, !tbaa !169 ; 2 uses
  %i.an = sext i16 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.078104.us.us.us, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !465
  %i.aq = sext i8 %i.ap to i32
  %i.ar = sub nsw i32 0, %i.aq
  %i.as = icmp eq i32 %i.y, %i.ar
  %i.at = icmp sgt i16 %i.am, %i.af
  %or.cond.us.us.us = select i1 %i.as, i1 %i.at, i1 false
  br i1 %or.cond.us.us.us, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.au = load i16, ptr %i.ah, align 2, !tbaa !457
  %i.av = load i16, ptr %i.ai, align 8, !tbaa !458
  %i.aw = getelementptr inbounds nuw i8, ptr %.078104.us.us.us, i64 6
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !457
  %spec.select.us.us.us = tail call i16 @llvm.smax.i16(i16 %i.au, i16 %i.ax)
  %.077.us.us.us = sext i16 %spec.select.us.us.us to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %.078104.us.us.us, i64 8
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !458
  %.076.in.us.us.us = tail call i16 @llvm.smin.i16(i16 %i.av, i16 %i.az)
  %.076.us.us.us = sext i16 %.076.in.us.us.us to i64
  %i.ba = sub nsw i64 %.076.us.us.us, %.077.us.us.us ; 2 uses
  %.not101.us.us.us = icmp slt i64 %i.ba, %spec.store.select
  br i1 %.not101.us.us.us, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = sub nsw i64 %i.an, %i.ag
  %i.bc = udiv i64 %i.v, %i.ba
  %i.bd = add nsw i64 %i.bc, %i.bb                ; 4 uses
  %i.be = load i64, ptr %i.aj, align 8, !tbaa !469
  %i.bf = icmp slt i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.bd, ptr %i.aj, align 8, !tbaa !469
  store ptr %.078104.us.us.us, ptr %i.ak, align 8, !tbaa !168
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %.078104.us.us.us, i64 48 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !469
  %i.bi = icmp slt i64 %i.bd, %i.bh
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i64 %i.bd, ptr %i.bg, align 8, !tbaa !469
  %i.bj = getelementptr inbounds nuw i8, ptr %.078104.us.us.us, i64 32
  store ptr %.079105.us.us, ptr %i.bj, align 8, !tbaa !168
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.g, %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %.078104.us.us.us, i64 80 ; 2 uses
  %i.bl = icmp ult ptr %i.bk, %i.i
  br i1 %i.bl, label %bb.f, label %..loopexit_crit_edge.split.us.us.us, !llvm.loop !470

.lr.ph108.split.us.split:                         ; preds = %.lr.ph108.split.us, %..loopexit_crit_edge.split.us116
  %.079105.us = phi ptr [ %i.cx, %..loopexit_crit_edge.split.us116 ], [ %i.e, %.lr.ph108.split.us ] ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.079105.us, i64 1
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !465
  %i.bo = sext i8 %i.bn to i32
  %.not100.us = icmp eq i32 %i.y, %i.bo
  br i1 %.not100.us, label %.preheader103.us, label %..loopexit_crit_edge.split.us116

bb.m:                                             ; preds = %.preheader103.us, %bb.v
  %.078104.us109 = phi ptr [ %i.e, %.preheader103.us ], [ %i.cv, %bb.v ] ; 8 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 2
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !169 ; 2 uses
  %i.br = sext i16 %i.bq to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !465
  %i.bu = sext i8 %i.bt to i32
  %i.bv = sub nsw i32 0, %i.bu
  %i.bw = icmp eq i32 %i.y, %i.bv
  %i.bx = icmp sgt i16 %i.bq, %i.da
  %or.cond.us110 = select i1 %i.bw, i1 %i.bx, i1 false
  br i1 %or.cond.us110, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.by = load i16, ptr %i.dc, align 2, !tbaa !457
  %i.bz = load i16, ptr %i.dd, align 8, !tbaa !458
  %i.ca = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 6
  %i.cb = load i16, ptr %i.ca, align 2, !tbaa !457
  %spec.select.us111 = tail call i16 @llvm.smax.i16(i16 %i.by, i16 %i.cb)
  %.077.us112 = sext i16 %spec.select.us111 to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 8
  %i.cd = load i16, ptr %i.cc, align 8, !tbaa !458
  %.076.in.us113 = tail call i16 @llvm.smin.i16(i16 %i.bz, i16 %i.cd)
  %.076.us114 = sext i16 %.076.in.us113 to i64
  %i.ce = sub nsw i64 %.076.us114, %.077.us112    ; 2 uses
  %.not101.us115 = icmp slt i64 %i.ce, %spec.store.select
  br i1 %.not101.us115, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = sub nsw i64 %i.br, %i.db
  %i.cg = shl nuw nsw i64 %i.cf, 10
  %i.ch = sdiv i64 %i.cg, %.081                   ; 3 uses
  %i.ci = add nsw i64 %i.ch, -1024                ; 2 uses
  %i.cj = icmp sgt i64 %i.ch, 11024
  br i1 %i.cj, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ck = icmp sgt i64 %i.ch, 1024
  br i1 %i.ck, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cl = mul nuw nsw i64 %i.ci, %i.ci
  %.lhs.trunc.us = trunc nuw nsw i64 %i.cl to i32
  %i.cm = udiv i32 %.lhs.trunc.us, 3000
  %.zext.us = zext nneg i32 %i.cm to i64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.1.us = phi i64 [ 0, %bb.p ], [ 32000, %bb.o ], [ %.zext.us, %bb.q ]
  %i.cn = udiv i64 %i.v, %i.ce
  %i.co = add nuw nsw i64 %i.cn, %.1.us           ; 4 uses
  %i.cp = load i64, ptr %i.de, align 8, !tbaa !469
  %i.cq = icmp slt i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i64 %i.co, ptr %i.de, align 8, !tbaa !469
  store ptr %.078104.us109, ptr %i.df, align 8, !tbaa !168
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cr = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 48 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !469
  %i.ct = icmp slt i64 %i.co, %i.cs
  br i1 %i.ct, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i64 %i.co, ptr %i.cr, align 8, !tbaa !469
  %i.cu = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 32
  store ptr %.079105.us, ptr %i.cu, align 8, !tbaa !168
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.n, %bb.m
  %i.cv = getelementptr inbounds nuw i8, ptr %.078104.us109, i64 80 ; 2 uses
  %i.cw = icmp ult ptr %i.cv, %i.i
  br i1 %i.cw, label %bb.m, label %..loopexit_crit_edge.split.us116, !llvm.loop !470

..loopexit_crit_edge.split.us116:                 ; preds = %bb.v, %.lr.ph108.split.us.split
  %i.cx = getelementptr inbounds nuw i8, ptr %.079105.us, i64 80 ; 2 uses
  %i.cy = icmp ult ptr %i.cx, %i.i
  br i1 %i.cy, label %.lr.ph108.split.us.split, label %.lr.ph.preheader, !llvm.loop !468

.preheader103.us:                                 ; preds = %.lr.ph108.split.us.split
  %i.cz = getelementptr inbounds nuw i8, ptr %.079105.us, i64 2
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !169 ; 2 uses
  %i.db = sext i16 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.079105.us, i64 6
  %i.dd = getelementptr inbounds nuw i8, ptr %.079105.us, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %.079105.us, i64 48 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.079105.us, i64 32
  br label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.y
  %.180118 = phi ptr [ %i.dm, %bb.y ], [ %i.e, %.lr.ph.preheader ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.180118, i64 32 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !168 ; 2 uses
  %.not98 = icmp eq ptr %i.dh, null
  br i1 %.not98, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.lr.ph
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !168
  %.not99 = icmp eq ptr %i.dj, %.180118
  br i1 %.not99, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr null, ptr %i.dg, align 8, !tbaa !168
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !168
  %i.dl = getelementptr inbounds nuw i8, ptr %.180118, i64 40
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !471
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.x, %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %.180118, i64 80 ; 2 uses
  %i.dn = icmp ult ptr %i.dm, %i.i
  br i1 %i.dn, label %.lr.ph, label %._crit_edge, !llvm.loop !472

._crit_edge:                                      ; preds = %bb.y, %bb.e
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @af_sort_and_quantize_widths(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef range(i64 0, 42949673) %2) unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !64
  switch i32 %i.a, label %.lr.ph.preheader [
    i32 1, label %bb.i
    i32 0, label %._crit_edge101
  ]

.lr.ph.preheader:                                 ; preds = %bb.a, %._crit_edge
  %.07084 = phi i32 [ %i.i, %._crit_edge ], [ 1, %bb.a ] ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %.06882 = phi i32 [ %i.e, %bb.b ], [ %.07084, %.lr.ph.preheader ] ; 2 uses
  %i.b = zext i32 %.06882 to i64
  %i.c = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.b ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !170
  %i.e = add i32 %.06882, -1                      ; 3 uses
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.f ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !170
  %.not77 = icmp slt i64 %i.d, %i.h
  br i1 %.not77, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %.sroa.0.0.copyload = load <3 x i64>, ptr %i.c, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !tbaa.struct !473
  store <3 x i64> %.sroa.0.0.copyload, ptr %i.g, align 8
  %.not76 = icmp eq i32 %i.e, 0
  br i1 %.not76, label %._crit_edge, label %.lr.ph, !llvm.loop !474

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.pre = load i32, ptr %0, align 4, !tbaa !64    ; 5 uses
  %i.i = add nuw i32 %.07084, 1                   ; 2 uses
  %i.j = icmp ult i32 %i.i, %.pre
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge85, !llvm.loop !475

._crit_edge85:                                    ; preds = %._crit_edge
  %i.k = icmp ugt i32 %.pre, 1
  br i1 %i.k, label %.lr.ph97, label %._crit_edge101

.lr.ph97:                                         ; preds = %._crit_edge85
  %i.l = load i64, ptr %1, align 8, !tbaa !170
  %i.m = add i32 %.pre, -1                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph97, %bb.f
  %.06595 = phi i64 [ %i.l, %.lr.ph97 ], [ %.1, %bb.f ] ; 3 uses
  %.06694 = phi i32 [ 0, %.lr.ph97 ], [ %.167, %bb.f ] ; 4 uses
  %.17193 = phi i32 [ 1, %.lr.ph97 ], [ %i.ax, %bb.f ] ; 4 uses
  %i.n = zext i32 %.17193 to i64
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !170
  %i.q = sub nsw i64 %i.p, %.06595
  %i.r = icmp sgt i64 %i.q, %2                    ; 2 uses
  %i.s = icmp eq i32 %.17193, %i.m                ; 2 uses
  %or.cond = or i1 %i.s, %i.r
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %not. = xor i1 %i.r, true
  %narrow = and i1 %i.s, %not.
  %spec.select = zext i1 %narrow to i32
  %.272 = add nuw i32 %.17193, %spec.select       ; 6 uses
  %i.t = icmp ult i32 %.06694, %.272
  %i.u = zext i32 %.06694 to i64                  ; 6 uses
  br i1 %i.t, label %.lr.ph89.preheader, label %._crit_edge90

.lr.ph89.preheader:                               ; preds = %bb.d
  %wide.trip.count = zext i32 %.272 to i64        ; 4 uses
  %i.v = sub nsw i64 %wide.trip.count, %i.u       ; 2 uses
  %xtraiter = and i64 %i.v, 3                     ; 3 uses
  %i.w = sub nsw i64 %i.u, %wide.trip.count
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %.lr.ph89.epil.preheader, label %.lr.ph89.preheader.new

.lr.ph89.preheader.new:                           ; preds = %.lr.ph89.preheader
  %unroll_iter = and i64 %i.v, -4
  br label %.lr.ph89

.lr.ph89:                                         ; preds = %.lr.ph89, %.lr.ph89.preheader.new
  %indvars.iv = phi i64 [ %i.u, %.lr.ph89.preheader.new ], [ %indvars.iv.next.3, %.lr.ph89 ] ; 5 uses
  %.087 = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %i.am, %.lr.ph89 ]
  %niter = phi i64 [ 0, %.lr.ph89.preheader.new ], [ %niter.next.3, %.lr.ph89 ]
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !170
  %i.aa = add nsw i64 %i.z, %.087
  store i64 0, ptr %i.y, align 8, !tbaa !170
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !170
  %i.ae = add nsw i64 %i.ad, %i.aa
  store i64 0, ptr %i.ac, align 8, !tbaa !170
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !170
  %i.ai = add nsw i64 %i.ah, %i.ae
  store i64 0, ptr %i.ag, align 8, !tbaa !170
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !170
  %i.am = add nsw i64 %i.al, %i.ai                ; 3 uses
  store i64 0, ptr %i.ak, align 8, !tbaa !170
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge90.loopexit.unr-lcssa, label %.lr.ph89, !llvm.loop !476

._crit_edge90.loopexit.unr-lcssa:                 ; preds = %.lr.ph89
end_hunk_0
begin_hunk_1_@af_cjk_metrics_scale_dim:bb.a
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.au = add nsw i64 %i.x, 32
  %i.av = and i64 %i.au, -64                      ; 2 uses
  store i64 %i.av, ptr %i.z, align 8, !tbaa !488
  %i.aw = tail call i64 @FT_DivFix(i64 noundef %i.av, i64 noundef %.062) #18
  %i.ax = load i64, ptr %i.aa, align 8, !tbaa !489
  %i.ay = sub nsw i64 %i.aw, %i.ax                ; 2 uses
  %i.az = icmp slt i64 %i.ay, 0
  %spec.select = tail call i64 @llvm.abs.i64(i64 %i.ay, i1 true)
  %i.ba = mul i64 %spec.select, %.062             ; 2 uses
  %i.bb = ashr i64 %i.ba, 63
  %i.bc = add i64 %i.ba, 32768
  %i.bd = add i64 %i.bc, %i.bb
  %i.be = ashr i64 %i.bd, 16                      ; 2 uses
  %i.bf = icmp slt i64 %i.be, 32
  %i.bg = add nuw nsw i64 %i.be, 32
  %i.bh = and i64 %i.bg, 9223372036854775744
  %.1 = select i1 %i.bf, i64 0, i64 %i.bh         ; 2 uses
  %i.bi = sub nsw i64 0, %.1
  %i.bj = select i1 %i.az, i64 %.1, i64 %i.bi
  %i.bk = load i64, ptr %i.z, align 8, !tbaa !488
  %i.bl = add i64 %i.bj, %i.bk
  store i64 %i.bl, ptr %i.aj, align 8, !tbaa !491
  %i.bm = load i32, ptr %i.ak, align 8, !tbaa !492
  %i.bn = or i32 %i.bm, 1
  store i32 %i.bn, ptr %i.ak, align 8, !tbaa !492
  %.pre = load i32, ptr %i.m, align 4, !tbaa !87
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.bo = phi i32 [ %.pre, %bb.e ], [ %i.p, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bp = zext i32 %i.bo to i64
  %i.bq = icmp samesign ult i64 %indvars.iv.next, %i.bp
  br i1 %i.bq, label %bb.d, label %.loopexit, !llvm.loop !493

.loopexit:                                        ; preds = %bb.f, %bb.c, %bb.b
  ret void
}

declare i64 @FT_DivFix(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc i32 @af_cjk_hints_detect_features(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = zext nneg i32 %1 to i64                  ; 2 uses
  %i.d = getelementptr inbounds nuw [2536 x i8], ptr %i.b, i64 %i.c ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !166  ; 3 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %af_cjk_hints_compute_segments.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.d, align 8, !tbaa !167  ; 2 uses
  %i.h = zext i32 %i.g to i64
  %.idx.i = mul nuw nsw i64 %i.h, 80
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx.i
  %i.j = tail call fastcc i32 @af_latin_hints_compute_segments(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %1) ; 2 uses
  %.not35.i = icmp eq i32 %i.j, 0
  br i1 %.not35.i, label %.preheader.i, label %af_cjk_hints_compute_edges.exit

.preheader.i:                                     ; preds = %bb.b
  %.not51.i = icmp eq i32 %i.g, 0
  br i1 %.not51.i, label %af_cjk_hints_compute_segments.exit.thread, label %.lr.ph42.i

.lr.ph42.i:                                       ; preds = %.preheader.i, %._crit_edge.i
  %.03041.i = phi ptr [ %i.aa, %._crit_edge.i ], [ %i.f, %.preheader.i ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.03041.i, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !454  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.03041.i, i64 72
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !117  ; 2 uses
  %i.o = load i16, ptr %i.l, align 8, !tbaa !122
  %i.p = load i8, ptr %.03041.i, align 8, !tbaa !456 ; 2 uses
  %i.q = and i8 %i.p, -2
  store i8 %i.q, ptr %.03041.i, align 8, !tbaa !456
  %.not3637.i = icmp eq ptr %i.l, %i.n
  br i1 %.not3637.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph42.i
  %i.r = and i16 %i.o, 3
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %.0.in39.i = phi i16 [ %i.r, %.lr.ph.preheader.i ], [ %i.v, %bb.c ]
  %.02938.i = phi ptr [ %i.l, %.lr.ph.preheader.i ], [ %i.t, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.02938.i, i64 64
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !263  ; 3 uses
  %i.u = load i16, ptr %i.t, align 8, !tbaa !122
  %i.v = and i16 %i.u, 3                          ; 2 uses
  %i.w = icmp ne i16 %.0.in39.i, 0
  %i.x = icmp ne i16 %i.v, 0
  %or.cond.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i, label %bb.c, label %._crit_edge.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.y = icmp eq ptr %i.t, %i.n
  br i1 %i.y, label %.thread50.i, label %.lr.ph.i

.thread50.i:                                      ; preds = %bb.c
  %i.z = or i8 %i.p, 1
  store i8 %i.z, ptr %.03041.i, align 8, !tbaa !456
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.thread50.i, %.lr.ph42.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.03041.i, i64 80 ; 2 uses
  %i.ab = icmp ult ptr %i.aa, %i.i
  br i1 %i.ab, label %.lr.ph42.i, label %af_cjk_hints_compute_segments.exit.thread, !llvm.loop !494

af_cjk_hints_compute_segments.exit:               ; preds = %bb.a
  %i.ac = tail call fastcc i32 @af_latin_hints_compute_segments(ptr noundef nonnull %0, i32 noundef range(i32 0, 2) %1) ; 2 uses
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %af_cjk_hints_compute_segments.exit.thread, label %af_cjk_hints_compute_edges.exit

af_cjk_hints_compute_segments.exit.thread:        ; preds = %._crit_edge.i, %.preheader.i, %af_cjk_hints_compute_segments.exit
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !166 ; 9 uses
  %.not.i8 = icmp eq ptr %i.ad, null
  br i1 %.not.i8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %af_cjk_hints_compute_segments.exit.thread
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !167
  %i.af = zext i32 %i.ae to i64
  %i.ag = getelementptr inbounds nuw [80 x i8], ptr %i.ad, i64 %i.af
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %af_cjk_hints_compute_segments.exit.thread
  %i.ah = phi ptr [ %i.ag, %bb.d ], [ null, %af_cjk_hints_compute_segments.exit.thread ] ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !282 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 5168 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 80
  %i.an = load i32, ptr %i.am, align 8, !tbaa !138
  %i.ao = lshr i32 %i.an, 8
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = icmp eq i32 %1, 0
  %.in.v.i = select i1 %i.aq, i64 8, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v.i ; 2 uses
  %i.ar = load i64, ptr %.in.i, align 8, !tbaa !71
  %i.as = tail call i64 @FT_DivFix(i64 noundef 192, i64 noundef %i.ar) #18 ; 2 uses
  %i.at = icmp ult ptr %i.ad, %i.ah
  br i1 %i.at, label %.lr.ph183.split.us.i, label %af_cjk_hints_link_segments.exit

.lr.ph183.split.us.i:                             ; preds = %bb.e, %..loopexit180_crit_edge.us.i
  %.0135182.us.i = phi ptr [ %i.cj, %..loopexit180_crit_edge.us.i ], [ %i.ad, %bb.e ] ; 10 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0135182.us.i, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !465
  %i.aw = sext i8 %i.av to i32
  %.not170.us.i = icmp eq i32 %i.aj, %i.aw
  br i1 %.not170.us.i, label %.preheader179.us.i, label %..loopexit180_crit_edge.us.i

bb.f:                                             ; preds = %.preheader179.us.i, %bb.r
  %.0134181.us.i = phi ptr [ %i.ad, %.preheader179.us.i ], [ %i.ch, %bb.r ] ; 11 uses
  %.not171.us.i = icmp eq ptr %.0134181.us.i, %.0135182.us.i
  br i1 %.not171.us.i, label %bb.r, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %.0134181.us.i, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !465
  %i.az = sext i8 %i.ay to i32
  %i.ba = sub nsw i32 0, %i.az
  %i.bb = icmp eq i32 %i.aj, %i.ba
  br i1 %i.bb, label %bb.h, label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %.0134181.us.i, i64 2
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !169
  %i.be = sext i16 %i.bd to i64
  %i.bf = load i16, ptr %i.cl, align 2, !tbaa !169
  %i.bg = sext i16 %i.bf to i64
  %i.bh = sub nsw i64 %i.be, %i.bg                ; 4 uses
  %i.bi = icmp slt i64 %i.bh, 0
  br i1 %i.bi, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bj = load i16, ptr %i.cm, align 2, !tbaa !457
  %i.bk = load i16, ptr %i.cn, align 8, !tbaa !458
  %i.bl = getelementptr inbounds nuw i8, ptr %.0134181.us.i, i64 6
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !457
  %spec.select.us.i = tail call i16 @llvm.smax.i16(i16 %i.bj, i16 %i.bm)
  %.0133.us.i = sext i16 %spec.select.us.i to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.0134181.us.i, i64 8
  %i.bo = load i16, ptr %i.bn, align 8, !tbaa !458
  %.0132.in.us.i = tail call i16 @llvm.smin.i16(i16 %i.bk, i16 %i.bo)
  %.0132.us.i = sext i16 %.0132.in.us.i to i64
  %i.bp = sub nsw i64 %.0132.us.i, %.0133.us.i    ; 5 uses
  %.not172.us.i = icmp slt i64 %i.bp, %i.ap
  br i1 %.not172.us.i, label %bb.r, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = shl nuw nsw i64 %i.bh, 3                ; 4 uses
  %i.br = load i64, ptr %i.co, align 8, !tbaa !469 ; 2 uses
  %i.bs = mul nsw i64 %i.br, 9
  %i.bt = icmp slt i64 %i.bq, %i.bs
  br i1 %i.bt, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.bu = mul nuw nsw i64 %i.br, 7
  %2 = icmp samesign ult i64 %i.bq, %i.bu
  br i1 %2, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load i64, ptr %i.cp, align 8, !tbaa !495
  %i.bw = icmp slt i64 %i.bv, %i.bp
  br i1 %i.bw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  store i64 %i.bh, ptr %i.co, align 8, !tbaa !469
  store i64 %i.bp, ptr %i.cp, align 8, !tbaa !495
  store ptr %.0134181.us.i, ptr %i.cq, align 8, !tbaa !168
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %.0134181.us.i, i64 48 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !469 ; 2 uses
  %i.bz = mul nsw i64 %i.by, 9
  %i.ca = icmp slt i64 %i.bq, %i.bz
  br i1 %i.ca, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cb = mul nuw nsw i64 %i.by, 7
  %3 = icmp samesign ult i64 %i.bq, %i.cb
  br i1 %3, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cc = getelementptr inbounds nuw i8, ptr %.0134181.us.i, i64 56
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !495
  %i.ce = icmp slt i64 %i.cd, %i.bp
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  store i64 %i.bh, ptr %i.bx, align 8, !tbaa !469
  %i.cf = getelementptr inbounds nuw i8, ptr %.0134181.us.i, i64 56
  store i64 %i.bp, ptr %i.cf, align 8, !tbaa !495
  %i.cg = getelementptr inbounds nuw i8, ptr %.0134181.us.i, i64 32
  store ptr %.0135182.us.i, ptr %i.cg, align 8, !tbaa !168
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.n, %bb.i, %bb.h, %bb.g, %bb.f
  %i.ch = getelementptr inbounds nuw i8, ptr %.0134181.us.i, i64 80 ; 2 uses
  %i.ci = icmp ult ptr %i.ch, %i.ah
  br i1 %i.ci, label %bb.f, label %..loopexit180_crit_edge.us.i, !llvm.loop !496

..loopexit180_crit_edge.us.i:                     ; preds = %bb.r, %.lr.ph183.split.us.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.0135182.us.i, i64 80 ; 2 uses
  %i.ck = icmp ult ptr %i.cj, %i.ah
  br i1 %i.ck, label %.lr.ph183.split.us.i, label %.lr.ph.split.us.i, !llvm.loop !497

.preheader179.us.i:                               ; preds = %.lr.ph183.split.us.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.0135182.us.i, i64 2
  %i.cm = getelementptr inbounds nuw i8, ptr %.0135182.us.i, i64 6
  %i.cn = getelementptr inbounds nuw i8, ptr %.0135182.us.i, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %.0135182.us.i, i64 48 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0135182.us.i, i64 56 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.0135182.us.i, i64 32
  br label %bb.f

.lr.ph.split.us.i:                                ; preds = %..loopexit180_crit_edge.us.i, %..loopexit177_crit_edge.split.us.us.i
  %.1136188.us.i = phi ptr [ %i.db, %..loopexit177_crit_edge.split.us.us.i ], [ %i.ad, %..loopexit180_crit_edge.us.i ] ; 8 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.1136188.us.i, i64 32 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !168 ; 4 uses
  %.not161.us.i = icmp eq ptr %i.cs, null
  br i1 %.not161.us.i, label %..loopexit177_crit_edge.split.us.us.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph.split.us.i
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 32 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !168
  %.not162.us.i = icmp eq ptr %i.cu, %.1136188.us.i
  br i1 %.not162.us.i, label %bb.t, label %..loopexit177_crit_edge.split.us.us.i

bb.t:                                             ; preds = %bb.s
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !169 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.1136188.us.i, i64 2
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !169 ; 3 uses
  %.not163.us.i = icmp sgt i16 %i.cw, %i.cy
  br i1 %.not163.us.i, label %bb.u, label %..loopexit177_crit_edge.split.us.us.i

bb.u:                                             ; preds = %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %.1136188.us.i, i64 48
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !469 ; 3 uses
  %.not164.us.i = icmp slt i64 %i.da, %i.as
  br i1 %.not164.us.i, label %.preheader176.us.i, label %..loopexit177_crit_edge.split.us.us.i

..loopexit177_crit_edge.split.us.us.i:            ; preds = %..loopexit_crit_edge.us.us.i, %.split.us.us.i, %bb.u, %bb.t, %bb.s, %.lr.ph.split.us.i
  %i.db = getelementptr inbounds nuw i8, ptr %.1136188.us.i, i64 80 ; 2 uses
  %i.dc = icmp ult ptr %i.db, %i.ah
  br i1 %i.dc, label %.lr.ph.split.us.i, label %.lr.ph192.i, !llvm.loop !498

.preheader176.us.i:                               ; preds = %bb.u
  %i.dd = shl nsw i64 %i.da, 2
  %i.de = getelementptr inbounds nuw i8, ptr %.1136188.us.i, i64 56
  br label %bb.v

bb.v:                                             ; preds = %..loopexit_crit_edge.us.us.i, %.preheader176.us.i
  %.1185.us.us.i = phi ptr [ %i.ad, %.preheader176.us.i ], [ %i.ef, %..loopexit_crit_edge.us.us.i ] ; 8 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.1185.us.us.i, i64 2
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !169 ; 2 uses
  %i.dh = icmp sgt i16 %i.dg, %i.cy
  %i.di = icmp eq ptr %.1136188.us.i, %.1185.us.us.i
  %or.cond.us.us.i = or i1 %i.di, %i.dh
  br i1 %or.cond.us.us.i, label %..loopexit_crit_edge.us.us.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %.1185.us.us.i, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !168 ; 4 uses
  %.not165.us.us.i = icmp eq ptr %i.dk, null
  br i1 %.not165.us.us.i, label %..loopexit_crit_edge.us.us.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !168
  %.not166.us.us.i = icmp eq ptr %i.dm, %.1185.us.us.i
  br i1 %.not166.us.us.i, label %bb.y, label %..loopexit_crit_edge.us.us.i

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 2
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !169 ; 2 uses
  %i.dp = icmp slt i16 %i.do, %i.cw
  br i1 %i.dp, label %..loopexit_crit_edge.us.us.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dq = icmp eq i16 %i.cy, %i.dg
  %i.dr = icmp eq i16 %i.cw, %i.do
  %or.cond173.us.us.i = and i1 %i.dq, %i.dr
  br i1 %or.cond173.us.us.i, label %..loopexit_crit_edge.us.us.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %.1185.us.us.i, i64 48
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !469 ; 2 uses
  %.not167.us.us.i = icmp sgt i64 %i.dt, %i.da
  %.not168.us.us.i = icmp sgt i64 %i.dd, %i.dt
  %or.cond174.us.us.i = select i1 %.not167.us.us.i, i1 %.not168.us.us.i, i1 false
  br i1 %or.cond174.us.us.i, label %bb.ab, label %..loopexit_crit_edge.us.us.i

bb.ab:                                            ; preds = %bb.aa
  %i.du = load i64, ptr %i.de, align 8, !tbaa !495
  %i.dv = getelementptr inbounds nuw i8, ptr %.1185.us.us.i, i64 56
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !495
  %i.dx = mul nsw i64 %i.dw, 3
  %.not169.us.us.i = icmp slt i64 %i.du, %i.dx
  br i1 %.not169.us.us.i, label %.split.us.us.i, label %.preheader175.us.us.i

.preheader175.us.us.i:                            ; preds = %bb.ab, %bb.ad
  %.0184.us.us.i = phi ptr [ %i.ed, %bb.ad ], [ %i.ad, %bb.ab ] ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.0184.us.us.i, i64 32 ; 2 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !168 ; 2 uses
  %i.ea = icmp eq ptr %i.dz, %.1185.us.us.i
  br i1 %i.ea, label %.sink.split.i, label %bb.ac

bb.ac:                                            ; preds = %.preheader175.us.us.i
  %i.eb = icmp eq ptr %i.dz, %i.dk
  br i1 %i.eb, label %.sink.split.i, label %bb.ad

.sink.split.i:                                    ; preds = %bb.ac, %.preheader175.us.us.i
  %.sink.i = phi ptr [ %.1136188.us.i, %bb.ac ], [ %i.cs, %.preheader175.us.us.i ]
  store ptr null, ptr %i.dy, align 8, !tbaa !168
  %i.ec = getelementptr inbounds nuw i8, ptr %.0184.us.us.i, i64 40
  store ptr %.sink.i, ptr %i.ec, align 8, !tbaa !471
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split.i, %bb.ac
  %i.ed = getelementptr inbounds nuw i8, ptr %.0184.us.us.i, i64 80 ; 2 uses
  %i.ee = icmp ult ptr %i.ed, %i.ah
  br i1 %i.ee, label %.preheader175.us.us.i, label %..loopexit_crit_edge.us.us.i, !llvm.loop !499

..loopexit_crit_edge.us.us.i:                     ; preds = %bb.ad, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %.1185.us.us.i, i64 80 ; 2 uses
  %i.eg = icmp ult ptr %i.ef, %i.ah
  br i1 %i.eg, label %bb.v, label %..loopexit177_crit_edge.split.us.us.i, !llvm.loop !500

.split.us.us.i:                                   ; preds = %bb.ab
  store ptr null, ptr %i.ct, align 8, !tbaa !168
  store ptr null, ptr %i.cr, align 8, !tbaa !168
  br label %..loopexit177_crit_edge.split.us.us.i

.lr.ph192.i:                                      ; preds = %..loopexit177_crit_edge.split.us.us.i, %bb.ai
  %.2191.i = phi ptr [ %i.eu, %bb.ai ], [ %i.ad, %..loopexit177_crit_edge.split.us.us.i ] ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.2191.i, i64 32 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !168 ; 3 uses
  %.not159.i = icmp eq ptr %i.ei, null
  br i1 %.not159.i, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph192.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !168
  %.not160.i = icmp eq ptr %i.ek, %.2191.i
  br i1 %.not160.i, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr null, ptr %i.eh, align 8, !tbaa !168
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.em = load i64, ptr %i.el, align 8, !tbaa !469 ; 2 uses
  %i.en = icmp slt i64 %i.em, %i.as
  br i1 %i.en, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.eo = getelementptr inbounds nuw i8, ptr %.2191.i, i64 48
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !469
  %i.eq = shl nsw i64 %i.em, 2
  %i.er = icmp slt i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.es = load ptr, ptr %i.ej, align 8, !tbaa !168
  %i.et = getelementptr inbounds nuw i8, ptr %.2191.i, i64 40
  store ptr %i.es, ptr %i.et, align 8, !tbaa !471
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae, %.lr.ph192.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.2191.i, i64 80 ; 2 uses
  %i.ev = icmp ult ptr %i.eu, %i.ah
  br i1 %i.ev, label %.lr.ph192.i, label %af_cjk_hints_link_segments.exit, !llvm.loop !501

af_cjk_hints_link_segments.exit:                  ; preds = %bb.ai, %bb.e
  %i.ew = load ptr, ptr %0, align 8, !tbaa !141
  %i.ex = load ptr, ptr %i.ak, align 8, !tbaa !95
  %i.ey = getelementptr inbounds nuw [896 x i8], ptr %i.ex, i64 %i.c
  %i.ez = load ptr, ptr %i.e, align 8, !tbaa !166 ; 4 uses
  %.not.i11 = icmp eq ptr %i.ez, null
  br i1 %.not.i11, label %bb.ak, label %bb.aj

end_hunk_1
