Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_rar?download=true
inline.NumInlined: 106
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 14
begin_hunk_0_@execute_filter:bb.a
  %i.ik = add nuw nsw i32 %i.gi, 1                ; 2 uses
  store i32 %i.ik, ptr %i.ga, align 4, !tbaa !278
  %i.il = and i32 %i.gi, 31
  %.not53.i = icmp eq i32 %i.il, 0
  br i1 %.not53.i, label %.preheader.preheader.i, label %bb.au

.preheader.preheader.i:                           ; preds = %.lr.ph
  %i.im = icmp slt i32 %i.hp, %i.hl
  %spec.select.i = zext i1 %i.im to i8
  %i.in = tail call i32 @llvm.smin.i32(i32 %i.hp, i32 %i.hl)
  %i.io = icmp slt i32 %i.hs, %i.in
  %spec.select.1.i = select i1 %i.io, i8 2, i8 %spec.select.i ; 2 uses
  %i.ip = zext nneg i8 %spec.select.1.i to i64
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.ip
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !131
  %i.is = icmp slt i32 %i.hw, %i.ir
  %spec.select.2.i = select i1 %i.is, i8 3, i8 %spec.select.1.i ; 2 uses
  %i.it = zext nneg i8 %spec.select.2.i to i64
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.it
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !131
  %i.iw = icmp slt i32 %i.hz, %i.iv
  %spec.select.3.i = select i1 %i.iw, i8 4, i8 %spec.select.2.i ; 2 uses
  %i.ix = zext nneg i8 %spec.select.3.i to i64
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.ix
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !131
  %i.ja = icmp slt i32 %i.id, %i.iz
  %spec.select.4.i = select i1 %i.ja, i8 5, i8 %spec.select.3.i ; 2 uses
  %i.jb = zext nneg i8 %spec.select.4.i to i64
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.jb
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !131
  %i.je = icmp slt i32 %i.ig, %i.jd
  %spec.select.5.i = select i1 %i.je, i8 6, i8 %spec.select.4.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.ft, i8 0, i64 44, i1 false)
  switch i8 %spec.select.5.i, label %bb.au [
    i8 1, label %bb.ai
    i8 2, label %bb.ak
    i8 3, label %bb.am
    i8 4, label %bb.ao
    i8 5, label %bb.aq
    i8 6, label %bb.as
  ]

bb.ai:                                            ; preds = %.preheader.preheader.i
  %i.jf = icmp sgt i8 %i.gb, -17
  br i1 %i.jf, label %bb.aj, label %bb.au

bb.aj:                                            ; preds = %bb.ai
  %i.jg = add nsw i8 %i.gb, -1                    ; 2 uses
  store i8 %i.jg, ptr %4, align 4, !tbaa !37
  br label %bb.au

bb.ak:                                            ; preds = %.preheader.preheader.i
  %i.jh = icmp slt i8 %i.gb, 16
  br i1 %i.jh, label %bb.al, label %bb.au

bb.al:                                            ; preds = %bb.ak
  %i.ji = add nsw i8 %i.gb, 1                     ; 2 uses
  store i8 %i.ji, ptr %4, align 4, !tbaa !37
  br label %bb.au

bb.am:                                            ; preds = %.preheader.preheader.i
  %i.jj = icmp sgt i8 %i.gg, -17
  br i1 %i.jj, label %bb.an, label %bb.au

bb.an:                                            ; preds = %bb.am
  %i.jk = add nsw i8 %i.gg, -1                    ; 2 uses
  store i8 %i.jk, ptr %i.fr, align 1, !tbaa !37
  br label %bb.au

bb.ao:                                            ; preds = %.preheader.preheader.i
  %i.jl = icmp slt i8 %i.gg, 16
  br i1 %i.jl, label %bb.ap, label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.jm = add nsw i8 %i.gg, 1                     ; 2 uses
  store i8 %i.jm, ptr %i.fr, align 1, !tbaa !37
  br label %bb.au

bb.aq:                                            ; preds = %.preheader.preheader.i
  %i.jn = icmp sgt i8 %i.gh, -17
  br i1 %i.jn, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.jo = add nsw i8 %i.gh, -1                    ; 2 uses
  store i8 %i.jo, ptr %i.fs, align 2, !tbaa !37
  br label %bb.au

bb.as:                                            ; preds = %.preheader.preheader.i
  %i.jp = icmp slt i8 %i.gh, 16
  br i1 %i.jp, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.jq = add nsw i8 %i.gh, 1                     ; 2 uses
  store i8 %i.jq, ptr %i.fs, align 2, !tbaa !37
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %.preheader.preheader.i, %.lr.ph
  %i.jr = phi i32 [ 0, %.preheader.preheader.i ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.am ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.at ], [ 0, %bb.as ], [ %i.ig, %.lr.ph ]
  %i.js = phi i32 [ 0, %.preheader.preheader.i ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.am ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.at ], [ 0, %bb.as ], [ %i.id, %.lr.ph ]
  %i.jt = phi i32 [ 0, %.preheader.preheader.i ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.am ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.at ], [ 0, %bb.as ], [ %i.hz, %.lr.ph ]
  %i.ju = phi i32 [ 0, %.preheader.preheader.i ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.am ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.at ], [ 0, %bb.as ], [ %i.hw, %.lr.ph ]
  %i.jv = phi i32 [ 0, %.preheader.preheader.i ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.am ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.at ], [ 0, %bb.as ], [ %i.hs, %.lr.ph ]
  %i.jw = phi i32 [ 0, %.preheader.preheader.i ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.am ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.at ], [ 0, %bb.as ], [ %i.hp, %.lr.ph ]
  %i.jx = phi i32 [ 0, %.preheader.preheader.i ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ 0, %bb.al ], [ 0, %bb.ak ], [ 0, %bb.an ], [ 0, %bb.am ], [ 0, %bb.ap ], [ 0, %bb.ao ], [ 0, %bb.ar ], [ 0, %bb.aq ], [ 0, %bb.at ], [ 0, %bb.as ], [ %i.hl, %.lr.ph ]
  %i.jy = phi i8 [ %i.gh, %.preheader.preheader.i ], [ %i.gh, %bb.aj ], [ %i.gh, %bb.ai ], [ %i.gh, %bb.al ], [ %i.gh, %bb.ak ], [ %i.gh, %bb.an ], [ %i.gh, %bb.am ], [ %i.gh, %bb.ap ], [ %i.gh, %bb.ao ], [ %i.jo, %bb.ar ], [ %i.gh, %bb.aq ], [ %i.jq, %bb.at ], [ %i.gh, %bb.as ], [ %i.gh, %.lr.ph ]
  %i.jz = phi i8 [ %i.gg, %.preheader.preheader.i ], [ %i.gg, %bb.aj ], [ %i.gg, %bb.ai ], [ %i.gg, %bb.al ], [ %i.gg, %bb.ak ], [ %i.jk, %bb.an ], [ %i.gg, %bb.am ], [ %i.jm, %bb.ap ], [ %i.gg, %bb.ao ], [ %i.gg, %bb.ar ], [ %i.gg, %bb.aq ], [ %i.gg, %bb.at ], [ %i.gg, %bb.as ], [ %i.gg, %.lr.ph ]
  %i.ka = phi i8 [ %i.gb, %.preheader.preheader.i ], [ %i.jg, %bb.aj ], [ %i.gb, %bb.ai ], [ %i.ji, %bb.al ], [ %i.gb, %bb.ak ], [ %i.gb, %bb.an ], [ %i.gb, %bb.am ], [ %i.gb, %bb.ap ], [ %i.gb, %bb.ao ], [ %i.gb, %bb.ar ], [ %i.gb, %bb.aq ], [ %i.gb, %bb.at ], [ %i.gb, %bb.as ], [ %i.gb, %.lr.ph ]
  %i.kb = add i32 %.04460.i93, %i.fh              ; 2 uses
  %.not54.i = icmp ult i32 %i.kb, %i.fg
  br i1 %.not54.i, label %.lr.ph.i34, label %._crit_edge.i31, !llvm.loop !272

.lr.ph.i34.preheader._crit_edge:                  ; preds = %.lr.ph.i34.preheader, %.lr.ph.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %execute_filter_delta.exit

._crit_edge.i31:                                  ; preds = %bb.au, %bb.ah
  %.147.lcssa.i = phi ptr [ %.04668.i, %bb.ah ], [ %i.gq, %bb.au ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.kc = add nuw i32 %.04569.i, 1                ; 2 uses
  %exitcond.not.i32 = icmp eq i32 %i.kc, %i.fh
  br i1 %exitcond.not.i32, label %._crit_edge72.i, label %bb.ah, !llvm.loop !273

._crit_edge72.i:                                  ; preds = %._crit_edge.i31, %bb.ag
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 %i.fg, ptr %i.kd, align 4, !tbaa !135
  %i.ke = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %i.fg, ptr %i.ke, align 8, !tbaa !136
  br label %execute_filter_delta.exit

bb.av:                                            ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 84, ptr noundef nonnull @.str.46) #20
  br label %execute_filter_delta.exit

execute_filter_delta.exit:                        ; preds = %.lr.ph.i27, %.lr.ph.1.i, %.lr.ph.2.i, %.lr.ph.i.preheader, %.lr.ph.i, %._crit_edge72.i, %.lr.ph.i34.preheader._crit_edge, %bb.af, %._crit_edge.i30, %bb.s, %bb.r, %.split.us.i23, %bb.k, %.split.us.i, %bb.d, %._crit_edge.i, %bb.b, %bb.av
  %.0 = phi i32 [ 0, %bb.av ], [ 0, %bb.af ], [ 0, %bb.d ], [ 0, %bb.k ], [ 0, %.lr.ph.i ], [ 1, %._crit_edge.i ], [ 0, %bb.b ], [ 1, %.split.us.i ], [ 1, %.split.us.i23 ], [ 1, %._crit_edge.i30 ], [ 0, %bb.r ], [ 0, %bb.s ], [ 0, %.lr.ph.i.preheader ], [ 0, %.lr.ph.1.i ], [ 1, %._crit_edge72.i ], [ 0, %.lr.ph.i34.preheader._crit_edge ], [ 0, %.lr.ph.2.i ], [ 0, %.lr.ph.i27 ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @delete_filter(ptr noundef captures(address_is_null) %0) unnamed_addr #14 {
bb.a:
  %.not5 = icmp eq ptr %0, null
  br i1 %.not5, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.06 = phi ptr [ %i.b, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.06, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.06, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.d) #20
  tail call void @free(ptr noundef nonnull %.06) #20
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #15

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @rar_br_fillup(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !56
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !139  ; 2 uses
  %i.f = sub i32 64, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 160 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %bb.a
  %i.j = phi i32 [ %i.e, %bb.a ], [ %i.dg, %bb.n ] ; 2 uses
  %.0 = phi i32 [ %i.f, %bb.a ], [ %i.dh, %bb.n ] ; 2 uses
  %i.k = ashr i32 %.0, 3
  switch i32 %i.k, label %._crit_edge [
    i32 8, label %bb.c
    i32 7, label %bb.e
    i32 6, label %bb.g
    i32 0, label %.loopexit
  ]

._crit_edge:                                      ; preds = %bb.b
  %.pre = load i64, ptr %i.g, align 8, !tbaa !279
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.g, align 8, !tbaa !279  ; 3 uses
  %i.m = icmp sgt i64 %i.l, 7
  br i1 %i.m, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !138  ; 2 uses
  %2 = load i64, ptr %i.n, align 1
  %3 = tail call i64 @llvm.bswap.i64(i64 %2)
  store i64 %3, ptr %1, align 8, !tbaa !146
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %i.i, align 8, !tbaa !138
  %i.p = add nsw i64 %i.l, -8
  br label %.loopexit.sink.split

bb.e:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.g, align 8, !tbaa !279  ; 3 uses
  %i.r = icmp sgt i64 %i.q, 6
  br i1 %i.r, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %1, align 8, !tbaa !146
  %i.t = shl i64 %i.s, 56
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !138  ; 8 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !37
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 48
  %i.y = or disjoint i64 %i.x, %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 40
  %i.ad = or disjoint i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !37
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 32
  %i.ai = or disjoint i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  %i.al = zext i8 %i.ak to i64
  %i.am = shl nuw nsw i64 %i.al, 24
  %i.an = or disjoint i64 %i.ai, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !37
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl nuw nsw i64 %i.aq, 16
  %i.as = or disjoint i64 %i.an, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 5
  %i.au = load i8, ptr %i.at, align 1, !tbaa !37
  %i.av = zext i8 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 8
  %i.ax = or i64 %i.as, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !37
  %i.ba = zext i8 %i.az to i64
  %i.bb = or i64 %i.ax, %i.ba
  store i64 %i.bb, ptr %1, align 8, !tbaa !146
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 7
  store ptr %i.bc, ptr %i.i, align 8, !tbaa !138
  %i.bd = add nsw i64 %i.q, -7
  br label %.loopexit.sink.split

bb.g:                                             ; preds = %bb.b
  %i.be = load i64, ptr %i.g, align 8, !tbaa !279 ; 3 uses
  %i.bf = icmp sgt i64 %i.be, 5
  br i1 %i.bf, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bg = load i64, ptr %1, align 8, !tbaa !146
  %i.bh = shl i64 %i.bg, 48
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !138 ; 7 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !37
  %i.bk = zext i8 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 40
  %i.bm = or disjoint i64 %i.bl, %i.bh
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !37
  %i.bp = zext i8 %i.bo to i64
  %i.bq = shl nuw nsw i64 %i.bp, 32
  %i.br = or disjoint i64 %i.bm, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !37
  %i.bu = zext i8 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 24
  %i.bw = or disjoint i64 %i.br, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !37
  %i.bz = zext i8 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 16
  %i.cb = or disjoint i64 %i.bw, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !37
  %i.ce = zext i8 %i.cd to i64
  %i.cf = shl nuw nsw i64 %i.ce, 8
  %i.cg = or disjoint i64 %i.cb, %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bi, i64 5
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !37
  %i.cj = zext i8 %i.ci to i64
  %i.ck = or i64 %i.cg, %i.cj
  store i64 %i.ck, ptr %1, align 8, !tbaa !146
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  store ptr %i.cl, ptr %i.i, align 8, !tbaa !138
  %i.cm = add nsw i64 %i.be, -6
  br label %.loopexit.sink.split

bb.i:                                             ; preds = %._crit_edge, %bb.g, %bb.e, %bb.c
  %i.cn = phi i64 [ %.pre, %._crit_edge ], [ %i.be, %bb.g ], [ %i.q, %bb.e ], [ %i.l, %bb.c ] ; 2 uses
  %i.co = icmp slt i64 %i.cn, 1
  br i1 %i.co, label %bb.j, label %._crit_edge74

._crit_edge74:                                    ; preds = %bb.i
  %.pre75 = load ptr, ptr %i.i, align 8, !tbaa !138
  br label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.cp = load i64, ptr %i.h, align 8, !tbaa !59  ; 2 uses
  %i.cq = icmp sgt i64 %i.cp, 0
  br i1 %i.cq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.cr = tail call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %i.cp) #20 ; 0 uses
  store i64 0, ptr %i.h, align 8, !tbaa !59
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cs = tail call fastcc ptr @rar_read_ahead(ptr noundef %0, i64 noundef 1, ptr noundef nonnull %i.g) ; 3 uses
  store ptr %i.cs, ptr %i.i, align 8, !tbaa !138
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cu = load i64, ptr %i.g, align 8, !tbaa !279 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.loopexit, label %._crit_edge76

._crit_edge76:                                    ; preds = %bb.m
  %.pre77 = load i32, ptr %i.d, align 8, !tbaa !139
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge76, %._crit_edge74
  %i.cw = phi i32 [ %i.j, %._crit_edge74 ], [ %.pre77, %._crit_edge76 ]
  %i.cx = phi i64 [ %i.cn, %._crit_edge74 ], [ %i.cu, %._crit_edge76 ]
  %i.cy = phi ptr [ %.pre75, %._crit_edge74 ], [ %i.cs, %._crit_edge76 ] ; 2 uses
  %i.cz = load i64, ptr %1, align 8, !tbaa !146
  %i.da = shl i64 %i.cz, 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  store ptr %i.db, ptr %i.i, align 8, !tbaa !138
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !37
  %i.dd = zext i8 %i.dc to i64
  %i.de = or disjoint i64 %i.da, %i.dd
  store i64 %i.de, ptr %1, align 8, !tbaa !146
  %i.df = add nsw i64 %i.cx, -1
  store i64 %i.df, ptr %i.g, align 8, !tbaa !279
  %i.dg = add nsw i32 %i.cw, 8                    ; 2 uses
  store i32 %i.dg, ptr %i.d, align 8, !tbaa !139
  %i.dh = add nsw i32 %.0, -8
  %i.di = load <2 x i64>, ptr %i.h, align 8, !tbaa !38
  %i.dj = add nsw <2 x i64> %i.di, <i64 1, i64 -1>
  store <2 x i64> %i.dj, ptr %i.h, align 8, !tbaa !38
  br label %bb.b

.loopexit.sink.split:                             ; preds = %bb.d, %bb.f, %bb.h
  %.sink = phi i64 [ %i.p, %bb.d ], [ %i.bd, %bb.f ], [ %i.cm, %bb.h ]
  %.sink103 = phi i32 [ 64, %bb.d ], [ 56, %bb.f ], [ 48, %bb.h ]
  %i.dk = phi <2 x i64> [ <i64 8, i64 -8>, %bb.d ], [ <i64 7, i64 -7>, %bb.f ], [ <i64 6, i64 -6>, %bb.h ]
  store i64 %.sink, ptr %i.g, align 8, !tbaa !279
  %i.dl = add nsw i32 %i.j, %.sink103
  store i32 %i.dl, ptr %i.d, align 8, !tbaa !139
  %i.dm = load <2 x i64>, ptr %i.h, align 8, !tbaa !38
  %i.dn = add nsw <2 x i64> %i.dm, %i.dk
  store <2 x i64> %i.dn, ptr %i.h, align 8, !tbaa !38
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.l, %bb.b, %.loopexit.sink.split
  %.065 = phi i32 [ 1, %.loopexit.sink.split ], [ 0, %bb.m ], [ 0, %bb.l ], [ 1, %bb.b ]
  ret i32 %.065
}

; Function Attrs: nounwind uwtable
define internal zeroext i8 @ppmd_read(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !280    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 2072
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !56   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20280 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 20288 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !139  ; 2 uses
  %i.h = icmp sgt i32 %i.g, 7
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call fastcc i32 @rar_br_fillup(ptr noundef nonnull %i.a, ptr noundef nonnull %i.e)
  %.not = icmp ne i32 %i.i, 0
  %.pre = load i32, ptr %i.f, align 8, !tbaa !139 ; 2 uses
  %i.j = icmp sgt i32 %.pre, 7
  %or.cond = select i1 %.not, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %i.a, i32 noundef 84, ptr noundef nonnull @.str.40) #20
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  store i8 0, ptr %i.k, align 8, !tbaa !120
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i32 [ %i.g, %bb.a ], [ %.pre, %bb.b ]
  %i.m = load i64, ptr %i.e, align 8, !tbaa !146
  %i.n = add nsw i32 %i.l, -8                     ; 2 uses
end_hunk_0
begin_hunk_1_@membr_next_rarvm_number:bb.a
  %i.cf = icmp slt i32 %i.cd, 4
  br i1 %i.cf, label %bb.k, label %membr_fill.exit.i37

bb.k:                                             ; preds = %membr_bits.exit33.thread
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !154
  %.not.i39 = icmp eq i32 %i.ch, 0
  br i1 %.not.i39, label %.lr.ph.i.i40, label %membr_bits.exit45

.lr.ph.i.i40:                                     ; preds = %bb.k
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !151
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.promoted13.i.i41 = load i64, ptr %i.ci, align 8, !tbaa !155 ; 2 uses
  %umax.i.i42 = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i41, i64 %i.ck)
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i40
  %i.cm = phi i64 [ %.pre.i36, %.lr.ph.i.i40 ], [ %i.cv, %bb.m ]
  %i.cn = phi i64 [ %.promoted13.i.i41, %.lr.ph.i.i40 ], [ %i.cr, %bb.m ] ; 3 uses
  %i.co = phi i32 [ %i.cd, %.lr.ph.i.i40 ], [ %i.cw, %bb.m ] ; 2 uses
  %exitcond.not.i.i43 = icmp eq i64 %i.cn, %umax.i.i42
  br i1 %exitcond.not.i.i43, label %membr_fill.exit.thread.i44, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cp = shl i64 %i.cm, 8
  %i.cq = load ptr, ptr %0, align 8, !tbaa !150
  %i.cr = add i64 %i.cn, 1                        ; 2 uses
  store i64 %i.cr, ptr %i.ci, align 8, !tbaa !155
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cn
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !37
  %i.cu = zext i8 %i.ct to i64
  %i.cv = or disjoint i64 %i.cp, %i.cu            ; 3 uses
  store i64 %i.cv, ptr %i.cl, align 8, !tbaa !153
  %i.cw = add nsw i32 %i.co, 8                    ; 3 uses
  store i32 %i.cw, ptr %i.a, align 8, !tbaa !152
  %i.cx = icmp slt i32 %i.co, -4
  br i1 %i.cx, label %bb.l, label %membr_fill.exit.i37, !llvm.loop !3

membr_fill.exit.thread.i44:                       ; preds = %bb.l
  store i32 1, ptr %i.cg, align 4, !tbaa !154
  br label %membr_bits.exit45

membr_fill.exit.i37:                              ; preds = %bb.m, %membr_bits.exit33.thread
  %i.cy = phi i32 [ %i.cd, %membr_bits.exit33.thread ], [ %i.cw, %bb.m ]
  %i.cz = phi i64 [ %.pre.i36, %membr_bits.exit33.thread ], [ %i.cv, %bb.m ]
  %i.da = add nsw i32 %i.cy, -4                   ; 2 uses
  store i32 %i.da, ptr %i.a, align 8, !tbaa !152
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = lshr i64 %i.cz, %i.db
  %i.dd = trunc i64 %i.dc to i32
  %i.de = and i32 %i.dd, 15
  %i.df = or disjoint i32 %i.de, %i.ce
  br label %membr_bits.exit45

membr_bits.exit45:                                ; preds = %bb.k, %membr_fill.exit.thread.i44, %membr_fill.exit.i37
  %.0.i38 = phi i32 [ %i.df, %membr_fill.exit.i37 ], [ %i.ce, %membr_fill.exit.thread.i44 ], [ %i.ce, %bb.k ]
  %i.dg = or i32 %.0.i38, -256
  br label %membr_bits.exit21

bb.n:                                             ; preds = %membr_bits.exit
  %i.dh = icmp samesign ult i32 %i.v, 18
  br i1 %i.dh, label %bb.o, label %membr_fill.exit.i49

bb.o:                                             ; preds = %bb.n
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !154
  %.not.i51 = icmp eq i32 %i.dj, 0
  br i1 %.not.i51, label %.lr.ph.i.i52, label %membr_bits.exit21

.lr.ph.i.i52:                                     ; preds = %bb.o
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !151
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.promoted13.i.i53 = load i64, ptr %i.dk, align 8, !tbaa !155 ; 2 uses
  %umax.i.i54 = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i53, i64 %i.dm)
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.lr.ph.i.i52
  %i.do = phi i64 [ %.pre.i24, %.lr.ph.i.i52 ], [ %i.dx, %bb.q ]
  %i.dp = phi i64 [ %.promoted13.i.i53, %.lr.ph.i.i52 ], [ %i.dt, %bb.q ] ; 3 uses
  %i.dq = phi i32 [ %i.w, %.lr.ph.i.i52 ], [ %i.dy, %bb.q ] ; 2 uses
  %exitcond.not.i.i55 = icmp eq i64 %i.dp, %umax.i.i54
  br i1 %exitcond.not.i.i55, label %membr_fill.exit.thread.i56, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dr = shl i64 %i.do, 8
  %i.ds = load ptr, ptr %0, align 8, !tbaa !150
  %i.dt = add i64 %i.dp, 1                        ; 2 uses
  store i64 %i.dt, ptr %i.dk, align 8, !tbaa !155
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dp
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !37
  %i.dw = zext i8 %i.dv to i64
  %i.dx = or disjoint i64 %i.dr, %i.dw            ; 3 uses
  store i64 %i.dx, ptr %i.dn, align 8, !tbaa !153
  %i.dy = add nsw i32 %i.dq, 8                    ; 3 uses
  store i32 %i.dy, ptr %i.a, align 8, !tbaa !152
  %i.dz = icmp slt i32 %i.dq, 8
  br i1 %i.dz, label %bb.p, label %membr_fill.exit.i49, !llvm.loop !3

membr_fill.exit.thread.i56:                       ; preds = %bb.p
  store i32 1, ptr %i.di, align 4, !tbaa !154
  br label %membr_bits.exit21

membr_fill.exit.i49:                              ; preds = %bb.q, %bb.n
  %i.ea = phi i32 [ %i.w, %bb.n ], [ %i.dy, %bb.q ]
  %i.eb = phi i64 [ %.pre.i24, %bb.n ], [ %i.dx, %bb.q ]
  %i.ec = add nsw i32 %i.ea, -16                  ; 2 uses
  store i32 %i.ec, ptr %i.a, align 8, !tbaa !152
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = lshr i64 %i.eb, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = and i32 %i.ef, 65535
  br label %membr_bits.exit21

default.unreachable:                              ; preds = %membr_bits.exit
  unreachable

bb.r:                                             ; preds = %membr_bits.exit
  %i.eh = icmp samesign ult i32 %i.v, 34
  br i1 %i.eh, label %bb.s, label %membr_fill.exit.i61

bb.s:                                             ; preds = %bb.r
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !154
  %.not.i63 = icmp eq i32 %i.ej, 0
  br i1 %.not.i63, label %.lr.ph.i.i64, label %membr_bits.exit21

.lr.ph.i.i64:                                     ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !151
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.promoted13.i.i65 = load i64, ptr %i.ek, align 8, !tbaa !155 ; 2 uses
  %umax.i.i66 = tail call i64 @llvm.umax.i64(i64 %.promoted13.i.i65, i64 %i.em)
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i.i64
  %i.eo = phi i64 [ %.pre.i24, %.lr.ph.i.i64 ], [ %i.ex, %bb.u ]
  %i.ep = phi i64 [ %.promoted13.i.i65, %.lr.ph.i.i64 ], [ %i.et, %bb.u ] ; 3 uses
  %i.eq = phi i32 [ %i.w, %.lr.ph.i.i64 ], [ %i.ey, %bb.u ] ; 2 uses
  %exitcond.not.i.i67 = icmp eq i64 %i.ep, %umax.i.i66
  br i1 %exitcond.not.i.i67, label %membr_fill.exit.thread.i68, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.er = shl i64 %i.eo, 8
  %i.es = load ptr, ptr %0, align 8, !tbaa !150
  %i.et = add i64 %i.ep, 1                        ; 2 uses
  store i64 %i.et, ptr %i.ek, align 8, !tbaa !155
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 %i.ep
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !37
  %i.ew = zext i8 %i.ev to i64
  %i.ex = or disjoint i64 %i.er, %i.ew            ; 3 uses
  store i64 %i.ex, ptr %i.en, align 8, !tbaa !153
  %i.ey = add nsw i32 %i.eq, 8                    ; 3 uses
  store i32 %i.ey, ptr %i.a, align 8, !tbaa !152
  %i.ez = icmp slt i32 %i.eq, 24
  br i1 %i.ez, label %bb.t, label %membr_fill.exit.i61, !llvm.loop !3

membr_fill.exit.thread.i68:                       ; preds = %bb.t
  store i32 1, ptr %i.ei, align 4, !tbaa !154
  br label %membr_bits.exit21

membr_fill.exit.i61:                              ; preds = %bb.u, %bb.r
  %i.fa = phi i32 [ %i.w, %bb.r ], [ %i.ey, %bb.u ]
  %i.fb = phi i64 [ %.pre.i24, %bb.r ], [ %i.ex, %bb.u ]
  %i.fc = add nsw i32 %i.fa, -32                  ; 2 uses
  store i32 %i.fc, ptr %i.a, align 8, !tbaa !152
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = lshr i64 %i.fb, %i.fd
  %i.ff = trunc i64 %i.fe to i32
  br label %membr_bits.exit21

membr_bits.exit21:                                ; preds = %membr_fill.exit.i61, %membr_fill.exit.thread.i68, %bb.s, %membr_fill.exit.i49, %membr_fill.exit.thread.i56, %bb.o, %membr_fill.exit.i13, %membr_fill.exit.thread.i20, %membr_bits.exit.thread.thread, %membr_bits.exit33, %membr_bits.exit45
  %.0 = phi i32 [ 0, %bb.o ], [ %i.cb, %membr_bits.exit33 ], [ 0, %membr_bits.exit.thread.thread ], [ %i.dg, %membr_bits.exit45 ], [ %i.bb, %membr_fill.exit.i13 ], [ 0, %membr_fill.exit.thread.i20 ], [ %i.eg, %membr_fill.exit.i49 ], [ 0, %membr_fill.exit.thread.i56 ], [ %i.ff, %membr_fill.exit.i61 ], [ 0, %membr_fill.exit.thread.i68 ], [ 0, %bb.s ]
  ret i32 %.0
}

declare i64 @__archive_read_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @__archive_reset_read_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.xor.v4i32(<4 x i32>) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { nounwind willreturn memory(read) }
attributes #23 = { nounwind allocsize(1) }
attributes #24 = { nounwind willreturn memory(none) }
attributes #25 = { nounwind allocsize(0) }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !39}
!1 = distinct !{!1, !39}
!2 = distinct !{!2, !39}
!3 = distinct !{!3, !39}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"p1 _ZTS18data_block_offsets", !14, i64 0}
!17 = !{!"p1 _ZTS17huffman_tree_node", !14, i64 0}
!18 = !{!"p1 _ZTS19huffman_table_entry", !14, i64 0}
!19 = !{!"huffman_code", !17, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !18, i64 32}
!20 = !{!"lzss", !15, i64 0, !10, i64 8, !13, i64 16}
!21 = !{!"p1 _ZTS19rar_virtual_machine", !14, i64 0}
!22 = !{!"p1 _ZTS16rar_program_code", !14, i64 0}
!23 = !{!"p1 _ZTS10rar_filter", !14, i64 0}
!24 = !{!"rar_filters", !21, i64 0, !22, i64 8, !23, i64 16, !13, i64 24, !10, i64 32, !13, i64 40, !15, i64 48, !13, i64 56}
!25 = !{!"p1 _ZTS15CPpmd7_Context_", !14, i64 0}
!26 = !{!"short", !9, i64 0}
!27 = !{!"", !26, i64 0, !9, i64 2, !9, i64 3}
!28 = !{!"", !25, i64 0, !25, i64 8, !14, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !10, i64 40, !10, i64 44, !10, i64 48, !10, i64 52, !10, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !10, i64 104, !9, i64 108, !9, i64 146, !9, i64 276, !9, i64 428, !9, i64 684, !9, i64 940, !27, i64 1196, !9, i64 1200, !9, i64 2800}
!29 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16}
!30 = !{!"", !29, i64 0, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !14, i64 40}
!31 = !{!"p1 _ZTS12archive_read", !14, i64 0}
!32 = !{!"", !31, i64 0, !14, i64 8}
!33 = !{!"p1 _ZTS19archive_string_conv", !14, i64 0}
!34 = !{!"rar_br", !13, i64 0, !10, i64 8, !13, i64 16, !15, i64 24}
!35 = !{!"rar", !10, i64 0, !13, i64 8, !9, i64 16, !9, i64 18, !9, i64 22, !9, i64 23, !10, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !10, i64 64, !15, i64 72, !15, i64 80, !13, i64 88, !13, i64 96, !9, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !9, i64 208, !10, i64 212, !10, i64 216, !15, i64 224, !10, i64 232, !9, i64 236, !9, i64 237, !13, i64 240, !10, i64 248, !9, i64 252, !16, i64 256, !13, i64 264, !13, i64 272, !9, i64 280, !19, i64 288, !19, i64 328, !19, i64 368, !19, i64 408, !9, i64 448, !20, i64 856, !10, i64 880, !10, i64 884, !9, i64 888, !10, i64 904, !10, i64 908, !9, i64 912, !24, i64 920, !9, i64 984, !9, i64 985, !9, i64 986, !10, i64 988, !28, i64 992, !30, i64 20176, !32, i64 20224, !10, i64 20240, !33, i64 20248, !33, i64 20256, !33, i64 20264, !33, i64 20272, !34, i64 20280, !10, i64 20312}
!36 = !{!35, !10, i64 20312}
!37 = !{!9, !9, i64 0}
!38 = !{!13, !13, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"p1 _ZTS14archive_vtable", !14, i64 0}
!41 = !{!"archive_string", !15, i64 0, !13, i64 8, !13, i64 16}
!42 = !{!"archive", !10, i64 0, !10, i64 4, !40, i64 8, !10, i64 16, !15, i64 24, !10, i64 32, !10, i64 36, !15, i64 40, !41, i64 48, !15, i64 72, !10, i64 80, !10, i64 84, !33, i64 88, !15, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !9, i64 128, !13, i64 136}
!43 = !{!"p1 _ZTS13archive_entry", !14, i64 0}
!44 = !{!"p1 _ZTS22archive_read_data_node", !14, i64 0}
!45 = !{!"archive_read_client", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !10, i64 48, !10, i64 52, !13, i64 56, !44, i64 64}
!46 = !{!"p1 _ZTS19archive_read_filter", !14, i64 0}
!47 = !{!"p1 _ZTS25archive_format_descriptor", !14, i64 0}
!48 = !{!"p1 _ZTS20archive_read_extract", !14, i64 0}
!49 = !{!"p1 _ZTS23archive_read_passphrase", !14, i64 0}
!50 = !{!"any p2 pointer", !14, i64 0}
!51 = !{!"p2 _ZTS23archive_read_passphrase", !50, i64 0}
!52 = !{!"", !49, i64 0, !51, i64 8, !10, i64 16, !14, i64 24, !14, i64 32}
!53 = !{!"archive_read", !42, i64 0, !43, i64 144, !10, i64 152, !13, i64 160, !13, i64 168, !45, i64 176, !9, i64 248, !46, i64 632, !10, i64 640, !13, i64 648, !10, i64 656, !10, i64 660, !9, i64 664, !47, i64 2072, !48, i64 2080, !14, i64 2088, !52, i64 2096}
!54 = !{!53, !47, i64 2072}
!55 = !{!"archive_format_descriptor", !14, i64 0, !15, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80}
!56 = !{!55, !14, i64 0}
!57 = !{!35, !33, i64 20256}
!58 = !{!35, !10, i64 0}
!59 = !{!35, !13, i64 160}
!60 = !{!14, !14, i64 0}
!61 = !{!35, !9, i64 237}
!62 = !{!35, !13, i64 200}
!63 = !{!35, !13, i64 40}
!64 = !{!35, !13, i64 184}
!65 = !{!35, !9, i64 23}
!66 = !{!35, !13, i64 168}
!67 = !{!35, !10, i64 24}
!68 = !{!35, !13, i64 8}
!69 = !{!35, !13, i64 240}
!70 = !{!"", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88}
!71 = !{!70, !14, i64 16}
!72 = !{!35, !9, i64 912}
!73 = !{!35, !9, i64 984}
!74 = !{!53, !43, i64 144}
!75 = !{!35, !16, i64 256}
!76 = !{!"data_block_offsets", !13, i64 0, !13, i64 8, !13, i64 16}
!77 = !{!76, !13, i64 8}
!78 = !{!35, !13, i64 264}
!79 = !{!76, !13, i64 16}
!80 = !{!76, !13, i64 0}
!81 = !{!35, !13, i64 272}
!82 = !{!35, !9, i64 252}
!83 = !{!35, !17, i64 288}
!84 = !{!35, !17, i64 328}
!85 = !{!35, !17, i64 368}
!86 = !{!35, !17, i64 408}
!87 = !{!35, !18, i64 320}
!88 = !{!35, !18, i64 360}
!89 = !{!35, !18, i64 400}
!90 = !{!35, !18, i64 440}
!91 = !{!24, !23, i64 16}
!92 = !{!"rar_filter", !22, i64 0, !9, i64 8, !15, i64 40, !10, i64 48, !13, i64 56, !10, i64 64, !10, i64 68, !10, i64 72, !23, i64 80}
!93 = !{!92, !23, i64 80}
!94 = !{!92, !15, i64 40}
!95 = !{!24, !22, i64 8}
!96 = !{!"rar_program_code", !15, i64 0, !10, i64 8, !15, i64 16, !10, i64 24, !13, i64 32, !10, i64 40, !10, i64 44, !22, i64 48}
!97 = !{!96, !22, i64 48}
!98 = !{!96, !15, i64 0}
!99 = !{!96, !15, i64 16}
!100 = !{!24, !21, i64 0}
!101 = !{!35, !15, i64 72}
!102 = !{!35, !15, i64 80}
!103 = !{!35, !15, i64 224}
!104 = !{!35, !15, i64 856}
!105 = !{!"tm", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !10, i64 24, !10, i64 28, !10, i64 32, !13, i64 40, !15, i64 48}
!106 = !{!105, !10, i64 0}
!107 = !{!105, !10, i64 4}
!108 = !{!105, !10, i64 8}
!109 = !{!105, !10, i64 12}
!110 = !{!105, !10, i64 16}
!111 = !{!105, !10, i64 20}
!112 = !{!105, !10, i64 32}
!113 = !{!35, !13, i64 48}
!114 = !{!35, !13, i64 32}
!115 = !{!"llvm.loop.isvectorized", i32 1}
!116 = !{!"llvm.loop.unroll.runtime.disable"}
!117 = !{!35, !9, i64 280}
!118 = !{!35, !13, i64 872}
!119 = !{!35, !10, i64 232}
!120 = !{!35, !9, i64 208}
!121 = !{!35, !9, i64 986}
!122 = !{!35, !10, i64 212}
!123 = !{!35, !10, i64 216}
!124 = !{!35, !9, i64 985}
!125 = !{!35, !13, i64 944}
!126 = !{!35, !13, i64 56}
!127 = !{!35, !13, i64 128}
!128 = !{!35, !13, i64 136}
!129 = !{!35, !13, i64 112}
!130 = !{!35, !13, i64 120}
!131 = !{!10, !10, i64 0}
!132 = !{!24, !13, i64 24}
!133 = !{!92, !10, i64 64}
!134 = !{!23, !23, i64 0}
!135 = !{!92, !10, i64 68}
!136 = !{!92, !10, i64 72}
!137 = !{!92, !13, i64 56}
!138 = !{!34, !15, i64 24}
!139 = !{!34, !10, i64 8}
!140 = !{!35, !10, i64 988}
!141 = !{!20, !13, i64 16}
!142 = !{!20, !15, i64 0}
!143 = !{!20, !10, i64 8}
!144 = !{!"branch_weights", i32 4, i32 28}
!145 = !{!"llvm.loop.unroll.disable"}
!146 = !{!34, !13, i64 0}
!147 = !{!19, !17, i64 0}
!148 = !{!19, !18, i64 32}
!149 = !{!"memory_bit_reader", !15, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !10, i64 32, !10, i64 36}
!150 = !{!149, !15, i64 0}
!151 = !{!149, !13, i64 8}
!152 = !{!149, !10, i64 32}
!153 = !{!149, !13, i64 24}
!154 = !{!149, !10, i64 36}
end_hunk_1
