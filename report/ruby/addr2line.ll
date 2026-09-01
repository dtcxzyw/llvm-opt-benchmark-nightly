Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/addr2line?download=true
inline.NumInlined: 199
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@parse_debug_line_header:bb.a
  %i.p = getelementptr i8, ptr %2, i64 8
  store i16 %i.o, ptr %i.p, align 8, !tbaa !97
  %i.q = icmp ugt i16 %i.o, 5
  br i1 %i.q, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.r = icmp eq i16 %i.o, 5                      ; 2 uses
  %spec.select.v86 = select i1 %i.r, i64 4, i64 2
  %spec.select87 = getelementptr i8, ptr %i.d, i64 %spec.select.v86 ; 2 uses
  %i.s = load i32, ptr %spec.select87, align 4, !tbaa !7
  %i.t = zext i32 %i.s to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.u = icmp eq i16 %i.j, 5                      ; 2 uses
  %spec.select.v = select i1 %i.u, i64 4, i64 2
  %spec.select = getelementptr i8, ptr %i.g, i64 %spec.select.v ; 2 uses
  %i.v = load i64, ptr %spec.select, align 8, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %spec.select89 = phi ptr [ %spec.select87, %bb.c ], [ %spec.select, %bb.d ]
  %i.w = phi i1 [ %i.r, %bb.c ], [ %i.u, %bb.d ]
  %i.x = phi i8 [ 4, %bb.c ], [ 8, %bb.d ]        ; 2 uses
  %i.y = phi ptr [ %i.m, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.z = phi i16 [ %i.o, %bb.c ], [ %i.j, %bb.d ]
  %i.aa = phi i64 [ %i.t, %bb.c ], [ %i.v, %bb.d ] ; 2 uses
  %i.ab = getelementptr i8, ptr %2, i64 16
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !140
  %i.ac = zext nneg i8 %i.x to i64
  %i.ad = getelementptr i8, ptr %spec.select89, i64 %i.ac ; 4 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.aa  ; 2 uses
  %i.af = getelementptr i8, ptr %2, i64 48        ; 2 uses
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !141
  %i.ag = getelementptr i8, ptr %i.ad, i64 1      ; 2 uses
  %i.ah = load i8, ptr %i.ad, align 1, !tbaa !14
  %i.ai = getelementptr i8, ptr %2, i64 24
  store i8 %i.ah, ptr %i.ai, align 8, !tbaa !142
  %i.aj = icmp samesign ugt i16 %i.z, 3
  br i1 %i.aj, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = load i8, ptr %i.ag, align 1, !tbaa !14
  %.not = icmp eq i8 %i.ak, 1
  br i1 %.not, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr i8, ptr %i.ad, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.2 = phi ptr [ %i.al, %bb.g ], [ %i.ag, %bb.e ] ; 4 uses
  %i.am = getelementptr i8, ptr %.2, i64 1
  %i.an = load i8, ptr %.2, align 1, !tbaa !14
  %i.ao = getelementptr i8, ptr %2, i64 26
  store i8 %i.an, ptr %i.ao, align 2, !tbaa !143
  %i.ap = getelementptr i8, ptr %.2, i64 2
  %i.aq = load i8, ptr %i.am, align 1, !tbaa !14
  %i.ar = getelementptr i8, ptr %2, i64 27
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !144
  %i.as = getelementptr i8, ptr %.2, i64 3        ; 2 uses
  %i.at = load i8, ptr %i.ap, align 1, !tbaa !14
  %i.au = getelementptr i8, ptr %2, i64 28
  store i8 %i.at, ptr %i.au, align 4, !tbaa !145
  %i.av = load i8, ptr %i.as, align 1, !tbaa !14  ; 2 uses
  %i.aw = getelementptr i8, ptr %2, i64 29
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !146
  %i.ax = zext i8 %i.av to i64
  %i.ay = getelementptr i8, ptr %i.as, i64 %i.ax  ; 6 uses
  %i.az = getelementptr i8, ptr %2, i64 32
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !147
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = tail call fastcc ptr @parse_ver5_debug_line_header(ptr noundef %i.ay, i32 noundef -1, i8 noundef zeroext %i.x, ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %3)
  %i.bb = getelementptr i8, ptr %2, i64 40
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !148
  %.pre = load ptr, ptr %i.af, align 8, !tbaa !141
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %.not71 = icmp ult ptr %i.ay, %i.y
  br i1 %.not71, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.j
  %i.bc = load i8, ptr %i.ay, align 1, !tbaa !14
  %.not7275 = icmp eq i8 %i.bc, 0
  br i1 %.not7275, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bd = ptrtoint ptr %i.y to i64
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.be = getelementptr i8, ptr %i.bi, i64 1      ; 3 uses
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !14
  %.not72 = icmp eq i8 %i.bf, 0
  br i1 %.not72, label %._crit_edge, label %bb.l, !llvm.loop !149

bb.l:                                             ; preds = %.lr.ph, %bb.k
  %.376 = phi ptr [ %i.ay, %.lr.ph ], [ %i.be, %bb.k ] ; 2 uses
  %i.bg = ptrtoint ptr %.376 to i64
  %i.bh = sub i64 %i.bd, %i.bg
  %i.bi = tail call ptr @memchr(ptr noundef nonnull %.376, i32 noundef 0, i64 noundef %i.bh) #16 ; 2 uses
  %.not73 = icmp eq ptr %i.bi, null
  br i1 %.not73, label %.loopexit, label %bb.k

._crit_edge:                                      ; preds = %bb.k, %.preheader
  %.3.lcssa = phi ptr [ %i.ay, %.preheader ], [ %i.be, %bb.k ]
  %i.bj = getelementptr i8, ptr %.3.lcssa, i64 1
  %i.bk = getelementptr i8, ptr %2, i64 40
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !148
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.i
  %i.bl = phi ptr [ %i.ae, %._crit_edge ], [ %.pre, %bb.i ]
  store ptr %i.bl, ptr %1, align 8, !tbaa !64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.thread, %bb.j, %bb.f, %bb.b, %bb.m
  %.067 = phi i32 [ -1, %bb.j ], [ -1, %bb.b ], [ 0, %bb.m ], [ -1, %bb.f ], [ -1, %.thread ], [ -1, %bb.l ]
  ret i32 %.067
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @parse_ver5_debug_line_header(ptr noundef %0, i32 noundef %1, i8 noundef zeroext %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr noundef %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.DebugInfoReader, align 8    ; 11 uses
  %8 = alloca %struct.DebugInfoValue, align 8     ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 1          ; 3 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !14      ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = shl nuw nsw i32 %i.c, 1
  %.not98 = icmp eq i8 %i.b, 0                    ; 2 uses
  br i1 %.not98, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %uleb128.exit.1
  %.03591 = phi i32 [ %i.s, %uleb128.exit.1 ], [ 0, %bb.a ]
  %.07690 = phi ptr [ %.177.1, %uleb128.exit.1 ], [ %i.a, %bb.a ] ; 2 uses
  %i.e = getelementptr i8, ptr %.07690, i64 1     ; 2 uses
  %i.f = load i8, ptr %.07690, align 1, !tbaa !14
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %uleb128.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %i.h = phi ptr [ %i.i, %.lr.ph.i ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 1        ; 2 uses
  %i.j = load i8, ptr %i.h, align 1, !tbaa !14
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %uleb128.exit, label %.lr.ph.i

uleb128.exit:                                     ; preds = %.lr.ph.i, %.lr.ph
  %.177 = phi ptr [ %i.e, %.lr.ph ], [ %i.i, %.lr.ph.i ] ; 2 uses
  %i.l = getelementptr i8, ptr %.177, i64 1       ; 2 uses
  %i.m = load i8, ptr %.177, align 1, !tbaa !14
  %i.n = icmp sgt i8 %i.m, -1
  br i1 %i.n, label %uleb128.exit.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %uleb128.exit, %.lr.ph.i.1
  %i.o = phi ptr [ %i.p, %.lr.ph.i.1 ], [ %i.l, %uleb128.exit ] ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 1        ; 2 uses
  %i.q = load i8, ptr %i.o, align 1, !tbaa !14
  %i.r = icmp sgt i8 %i.q, -1
  br i1 %i.r, label %uleb128.exit.1, label %.lr.ph.i.1

uleb128.exit.1:                                   ; preds = %.lr.ph.i.1, %uleb128.exit
  %.177.1 = phi ptr [ %i.l, %uleb128.exit ], [ %i.p, %.lr.ph.i.1 ] ; 2 uses
  %i.s = add nuw nsw i32 %.03591, 2               ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.s, %i.d
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !150

._crit_edge:                                      ; preds = %uleb128.exit.1, %bb.a
  %.076.lcssa = phi ptr [ %i.a, %bb.a ], [ %.177.1, %uleb128.exit.1 ] ; 2 uses
  %i.t = getelementptr i8, ptr %.076.lcssa, i64 1 ; 2 uses
  %i.u = load i8, ptr %.076.lcssa, align 1, !tbaa !14 ; 3 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %uleb128.exit53, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %._crit_edge, %.lr.ph.i44
  %i.w = phi i8 [ %i.ae, %.lr.ph.i44 ], [ %i.u, %._crit_edge ]
  %i.x = phi ptr [ %i.ad, %.lr.ph.i44 ], [ %i.t, %._crit_edge ] ; 2 uses
  %.01020.i45 = phi i32 [ %i.ac, %.lr.ph.i44 ], [ 0, %._crit_edge ] ; 2 uses
  %.01119.i46 = phi i64 [ %.112.i47, %.lr.ph.i44 ], [ 0, %._crit_edge ]
  %i.y = and i8 %i.w, 127
  %i.z = zext nneg i8 %i.y to i32
  %i.aa = shl i32 %i.z, %.01020.i45
  %i.ab = zext i32 %i.aa to i64
  %i.ac = add i32 %.01020.i45, 7                  ; 2 uses
  %.112.i47 = add i64 %.01119.i46, %i.ab          ; 2 uses
  %i.ad = getelementptr i8, ptr %i.x, i64 1       ; 2 uses
  %i.ae = load i8, ptr %i.x, align 1, !tbaa !14   ; 3 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %._crit_edge.loopexit.i48, label %.lr.ph.i44

._crit_edge.loopexit.i48:                         ; preds = %.lr.ph.i44
  %i.ag = zext nneg i32 %i.ac to i64
  br label %uleb128.exit53

uleb128.exit53:                                   ; preds = %._crit_edge, %._crit_edge.loopexit.i48
  %.278 = phi ptr [ %i.t, %._crit_edge ], [ %i.ad, %._crit_edge.loopexit.i48 ] ; 3 uses
  %.011.lcssa.i49 = phi i64 [ 0, %._crit_edge ], [ %.112.i47, %._crit_edge.loopexit.i48 ]
  %.010.lcssa.i50 = phi i64 [ 0, %._crit_edge ], [ %i.ag, %._crit_edge.loopexit.i48 ]
  %.lcssa.i51 = phi i8 [ %i.u, %._crit_edge ], [ %i.ae, %._crit_edge.loopexit.i48 ]
  %i.ah = zext nneg i8 %.lcssa.i51 to i64
  %i.ai = shl i64 %i.ah, %.010.lcssa.i50
  %.11217.i52 = add i64 %i.ai, %.011.lcssa.i49
  %.11217.i52.fr = freeze i64 %.11217.i52
  %i.aj = trunc i64 %.11217.i52.fr to i32         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ak, i8 0, i64 2184, i1 false)
  %i.al = getelementptr i8, ptr %3, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !78
  store ptr %3, ptr %7, align 8, !tbaa !80
  %i.ao = getelementptr i8, ptr %3, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !76
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.ar = getelementptr i8, ptr %3, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !82
  %i.at = getelementptr i8, ptr %i.ap, i64 %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 112
  store ptr %i.at, ptr %i.au, align 8, !tbaa !83
  %i.av = getelementptr i8, ptr %3, i64 96
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !84
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !85
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i8 0, i64 32, i1 false)
  %i.az = zext i8 %2 to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 136
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !86
  store ptr %.278, ptr %i.aq, align 8, !tbaa !81
  %i.bb = icmp sgt i32 %i.aj, 0
  br i1 %i.bb, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %uleb128.exit53
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.bd = icmp ne ptr %4, null
  %i.be = icmp ne ptr %5, null
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  br i1 %.not98, label %.preheader.preheader, label %.preheader.us

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bg = add nsw i32 %i.aj, -1
  %.not = icmp ugt i32 %1, %i.bg
  %spec.select = select i1 %.not, ptr %.278, ptr null
  br label %.loopexit

.preheader.us:                                    ; preds = %.preheader.lr.ph, %bb.g
  %.03496.us = phi i32 [ %i.cy, %bb.g ], [ 0, %.preheader.lr.ph ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.f
  %.13693.us = phi i32 [ 0, %.preheader.us ], [ %i.cx, %bb.f ]
  %.092.us = phi ptr [ %i.a, %.preheader.us ], [ %.2.us, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false)
  %i.bh = getelementptr i8, ptr %.092.us, i64 1   ; 2 uses
  %i.bi = load i8, ptr %.092.us, align 1, !tbaa !14 ; 3 uses
  %i.bj = icmp sgt i8 %i.bi, -1
  br i1 %i.bj, label %uleb128.exit64.us, label %.lr.ph.i55.us

.lr.ph.i55.us:                                    ; preds = %bb.b, %.lr.ph.i55.us
  %i.bk = phi i8 [ %i.bs, %.lr.ph.i55.us ], [ %i.bi, %bb.b ]
  %i.bl = phi ptr [ %i.br, %.lr.ph.i55.us ], [ %i.bh, %bb.b ] ; 2 uses
  %.01020.i56.us = phi i32 [ %i.bq, %.lr.ph.i55.us ], [ 0, %bb.b ] ; 2 uses
  %.01119.i57.us = phi i64 [ %.112.i58.us, %.lr.ph.i55.us ], [ 0, %bb.b ]
  %i.bm = and i8 %i.bk, 127
  %i.bn = zext nneg i8 %i.bm to i32
  %i.bo = shl i32 %i.bn, %.01020.i56.us
  %i.bp = sext i32 %i.bo to i64
  %i.bq = add i32 %.01020.i56.us, 7               ; 2 uses
  %.112.i58.us = add i64 %.01119.i57.us, %i.bp    ; 2 uses
  %i.br = getelementptr i8, ptr %i.bl, i64 1      ; 2 uses
  %i.bs = load i8, ptr %i.bl, align 1, !tbaa !14  ; 3 uses
  %i.bt = icmp sgt i8 %i.bs, -1
  br i1 %i.bt, label %._crit_edge.loopexit.i59.us, label %.lr.ph.i55.us

._crit_edge.loopexit.i59.us:                      ; preds = %.lr.ph.i55.us
  %i.bu = zext nneg i32 %i.bq to i64
  br label %uleb128.exit64.us

uleb128.exit64.us:                                ; preds = %._crit_edge.loopexit.i59.us, %bb.b
  %.1.us = phi ptr [ %i.bh, %bb.b ], [ %i.br, %._crit_edge.loopexit.i59.us ] ; 2 uses
  %.011.lcssa.i60.us = phi i64 [ 0, %bb.b ], [ %.112.i58.us, %._crit_edge.loopexit.i59.us ]
  %.010.lcssa.i61.us = phi i64 [ 0, %bb.b ], [ %i.bu, %._crit_edge.loopexit.i59.us ]
  %.lcssa.i62.us = phi i8 [ %i.bi, %bb.b ], [ %i.bs, %._crit_edge.loopexit.i59.us ]
  %i.bv = zext nneg i8 %.lcssa.i62.us to i64
  %i.bw = shl i64 %i.bv, %.010.lcssa.i61.us
  %.11217.i63.us = add i64 %i.bw, %.011.lcssa.i60.us ; 2 uses
  %i.bx = getelementptr i8, ptr %.1.us, i64 1     ; 2 uses
  %i.by = load i8, ptr %.1.us, align 1, !tbaa !14 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %uleb128.exit75.us, label %.lr.ph.i66.us

.lr.ph.i66.us:                                    ; preds = %uleb128.exit64.us, %.lr.ph.i66.us
  %i.ca = phi i8 [ %i.ci, %.lr.ph.i66.us ], [ %i.by, %uleb128.exit64.us ]
  %i.cb = phi ptr [ %i.ch, %.lr.ph.i66.us ], [ %i.bx, %uleb128.exit64.us ] ; 2 uses
  %.01020.i67.us = phi i32 [ %i.cg, %.lr.ph.i66.us ], [ 0, %uleb128.exit64.us ] ; 2 uses
  %.01119.i68.us = phi i64 [ %.112.i69.us, %.lr.ph.i66.us ], [ 0, %uleb128.exit64.us ]
  %i.cc = and i8 %i.ca, 127
  %i.cd = zext nneg i8 %i.cc to i32
  %i.ce = shl i32 %i.cd, %.01020.i67.us
  %i.cf = sext i32 %i.ce to i64
  %i.cg = add i32 %.01020.i67.us, 7               ; 2 uses
  %.112.i69.us = add i64 %.01119.i68.us, %i.cf    ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cb, i64 1      ; 2 uses
  %i.ci = load i8, ptr %i.cb, align 1, !tbaa !14  ; 3 uses
  %i.cj = icmp sgt i8 %i.ci, -1
  br i1 %i.cj, label %._crit_edge.loopexit.i70.us, label %.lr.ph.i66.us

._crit_edge.loopexit.i70.us:                      ; preds = %.lr.ph.i66.us
  %i.ck = zext nneg i32 %i.cg to i64
  br label %uleb128.exit75.us

uleb128.exit75.us:                                ; preds = %._crit_edge.loopexit.i70.us, %uleb128.exit64.us
  %.2.us = phi ptr [ %i.bx, %uleb128.exit64.us ], [ %i.ch, %._crit_edge.loopexit.i70.us ]
  %.011.lcssa.i71.us = phi i64 [ 0, %uleb128.exit64.us ], [ %.112.i69.us, %._crit_edge.loopexit.i70.us ]
  %.010.lcssa.i72.us = phi i64 [ 0, %uleb128.exit64.us ], [ %i.ck, %._crit_edge.loopexit.i70.us ]
  %.lcssa.i73.us = phi i8 [ %i.by, %uleb128.exit64.us ], [ %i.ci, %._crit_edge.loopexit.i70.us ]
  %i.cl = zext nneg i8 %.lcssa.i73.us to i64
  %i.cm = shl i64 %i.cl, %.010.lcssa.i72.us
  %.11217.i74.us = add i64 %i.cm, %.011.lcssa.i71.us
  %i.cn = call fastcc zeroext i1 @debug_info_reader_read_value(ptr noundef %7, i64 noundef %.11217.i74.us, ptr noundef %8, ptr noundef %6)
  br i1 %i.cn, label %bb.c, label %.critedge42

bb.c:                                             ; preds = %uleb128.exit75.us
  %i.co = icmp eq i64 %.11217.i63.us, 1
  %i.cp = load i32, ptr %i.bc, align 8            ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 1
  %or.cond.us = select i1 %i.co, i1 %i.cq, i1 false
  %or.cond5.us = and i1 %i.bd, %or.cond.us
  br i1 %or.cond5.us, label %.thread.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cr = icmp eq i64 %.11217.i63.us, 2
  %i.cs = icmp eq i32 %i.cp, 3
  %or.cond8.us = select i1 %i.cr, i1 %i.cs, i1 false
  %or.cond10.us = and i1 %i.be, %or.cond8.us
  br i1 %or.cond10.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ct = load i64, ptr %8, align 8, !tbaa !14
  store i64 %i.ct, ptr %5, align 8, !tbaa !67
  br label %bb.f

.thread.us:                                       ; preds = %bb.c
  %i.cu = load ptr, ptr %8, align 8, !tbaa !14
  %i.cv = load i64, ptr %i.bf, align 8, !tbaa !151
  %i.cw = getelementptr i8, ptr %i.cu, i64 %i.cv
  store ptr %i.cw, ptr %4, align 8, !tbaa !64
  br label %bb.f

bb.f:                                             ; preds = %.thread.us, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %i.cx = add nuw nsw i32 %.13693.us, 1           ; 2 uses
  %exitcond111.not = icmp eq i32 %i.cx, %i.c
  br i1 %exitcond111.not, label %._crit_edge95.us, label %bb.b, !llvm.loop !152

bb.g:                                             ; preds = %._crit_edge95.us
  %i.cy = add nuw nsw i32 %.03496.us, 1           ; 2 uses
  %exitcond112.not = icmp eq i32 %i.cy, %i.aj
  br i1 %exitcond112.not, label %._crit_edge97.loopexit101, label %.preheader.us, !llvm.loop !153

._crit_edge95.us:                                 ; preds = %bb.f
  %.not.us = icmp eq i32 %.03496.us, %1
  br i1 %.not.us, label %.loopexit, label %bb.g

._crit_edge97.loopexit101:                        ; preds = %bb.g
  %.pre = load ptr, ptr %i.aq, align 8, !tbaa !81
  br label %.loopexit

.critedge42:                                      ; preds = %uleb128.exit75.us
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge95.us, %.preheader.preheader, %uleb128.exit53, %._crit_edge97.loopexit101, %.critedge42
  %.4 = phi ptr [ null, %.critedge42 ], [ %.278, %uleb128.exit53 ], [ %spec.select, %.preheader.preheader ], [ %.pre, %._crit_edge97.loopexit101 ], [ null, %._crit_edge95.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  ret ptr %.4
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @debug_info_reader_read_value(ptr nofree noundef nonnull %0, i64 noundef %1, ptr nofree noundef nonnull writeonly %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  switch i64 %1, label %bb.bx [
    i64 1, label %bb.b
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
    i64 8, label %bb.j
    i64 9, label %bb.k
    i64 10, label %bb.l
    i64 11, label %bb.m
    i64 12, label %bb.n
    i64 13, label %bb.o
    i64 14, label %bb.r
    i64 15, label %bb.u
    i64 16, label %bb.v
    i64 17, label %bb.ac
    i64 18, label %bb.ad
    i64 19, label %bb.ae
    i64 20, label %bb.af
    i64 21, label %bb.ag
    i64 22, label %bb.ah
    i64 23, label %bb.ai
    i64 24, label %bb.al
    i64 25, label %bb.am
    i64 26, label %bb.an
    i64 27, label %bb.aq
    i64 28, label %bb.ar
    i64 29, label %bb.as
    i64 30, label %bb.av
    i64 31, label %bb.aw
    i64 32, label %bb.az
    i64 33, label %bb.ba
    i64 34, label %bb.bd
    i64 35, label %bb.be
    i64 36, label %bb.bf
    i64 37, label %bb.bg
    i64 38, label %bb.bj
    i64 39, label %bb.bm
    i64 40, label %bb.bp
    i64 41, label %bb.bs
    i64 42, label %bb.bt
    i64 43, label %bb.bu
    i64 44, label %bb.bv
    i64 7968, label %read_uint.exit273
    i64 7969, label %read_uint.exit273
    i64 0, label %bb.bw
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 140
  %i.b = load i8, ptr %i.a, align 4, !tbaa !90    ; 2 uses
  switch i8 %i.b, label %debug_info_reader_read_addr_value_member.exit [
    i8 4, label %bb.c
    i8 8, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  store ptr %i.e, ptr %i.c, align 8, !tbaa !64
  %.val.i.i.i = load i32, ptr %i.d, align 1
  %i.f = zext i32 %.val.i.i.i to i64
  br label %debug_info_reader_read_addr_value_member.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 96         ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.g, align 8, !tbaa !64
  %.val.i3.i.i.i = load i64, ptr %i.h, align 1
  br label %debug_info_reader_read_addr_value_member.exit.thread

debug_info_reader_read_addr_value_member.exit.thread: ; preds = %bb.c, %bb.d
  %.sink.i = phi i64 [ %i.f, %bb.c ], [ %.val.i3.i.i.i, %bb.d ]
  store i64 %.sink.i, ptr %2, align 8, !tbaa !14
  %i.j = getelementptr i8, ptr %2, i64 40
  store i32 3, ptr %i.j, align 8, !tbaa !116
  br label %bb.bx

debug_info_reader_read_addr_value_member.exit:    ; preds = %bb.b
  %i.k = zext i8 %i.b to i32
  %i.l = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.18, i32 noundef %i.k) #15 ; 0 uses
  br label %bb.bx

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !64   ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 2        ; 2 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !64
  %.val.i = load i16, ptr %i.n, align 1
  %i.p = zext i16 %.val.i to i64                  ; 2 uses
  %i.q = getelementptr i8, ptr %2, i64 32
  store i64 %i.p, ptr %i.q, align 8, !tbaa !154
  store ptr %i.o, ptr %2, align 8, !tbaa !14
  %i.r = getelementptr i8, ptr %2, i64 40
  store i32 2, ptr %i.r, align 8, !tbaa !116
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !81
  %i.t = getelementptr i8, ptr %i.s, i64 %i.p
  store ptr %i.t, ptr %i.m, align 8, !tbaa !81
  br label %bb.bx

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr i8, ptr %0, i64 96         ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !64   ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 4        ; 2 uses
  store ptr %i.w, ptr %i.u, align 8, !tbaa !64
  %.val.i.i = load i32, ptr %i.v, align 1
  %i.x = zext i32 %.val.i.i to i64                ; 2 uses
  %i.y = getelementptr i8, ptr %2, i64 32
  store i64 %i.x, ptr %i.y, align 8, !tbaa !154
  store ptr %i.w, ptr %2, align 8, !tbaa !14
  %i.z = getelementptr i8, ptr %2, i64 40
  store i32 2, ptr %i.z, align 8, !tbaa !116
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !81
  %i.ab = getelementptr i8, ptr %i.aa, i64 %i.x
  store ptr %i.ab, ptr %i.u, align 8, !tbaa !81
  br label %bb.bx

bb.g:                                             ; preds = %bb.a
  %i.ac = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !64 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 2
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !64
  %.val.i137 = load i16, ptr %i.ad, align 1
  %i.af = zext i16 %.val.i137 to i64
  store i64 %i.af, ptr %2, align 8, !tbaa !14
  %i.ag = getelementptr i8, ptr %2, i64 40
  store i32 3, ptr %i.ag, align 8, !tbaa !116
  br label %bb.bx

bb.h:                                             ; preds = %bb.a
  %i.ah = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64 ; 2 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store ptr %i.aj, ptr %i.ah, align 8, !tbaa !64
  %.val.i.i138 = load i32, ptr %i.ai, align 1
  %i.ak = zext i32 %.val.i.i138 to i64
  store i64 %i.ak, ptr %2, align 8, !tbaa !14
  %i.al = getelementptr i8, ptr %2, i64 40
  store i32 3, ptr %i.al, align 8, !tbaa !116
  br label %bb.bx

bb.i:                                             ; preds = %bb.a
  %i.am = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !64 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !64
  %.val.i3.i.i = load i64, ptr %i.an, align 1
  store i64 %.val.i3.i.i, ptr %2, align 8, !tbaa !14
  %i.ap = getelementptr i8, ptr %2, i64 40
  store i32 3, ptr %i.ap, align 8, !tbaa !116
  br label %bb.bx

bb.j:                                             ; preds = %bb.a
  %i.aq = getelementptr i8, ptr %0, i64 96        ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !81 ; 3 uses
  %i.as = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ar) #16 ; 2 uses
  %i.at = getelementptr i8, ptr %2, i64 32
  store i64 %i.as, ptr %i.at, align 8, !tbaa !154
  store ptr %i.ar, ptr %2, align 8, !tbaa !14
  %i.au = getelementptr i8, ptr %2, i64 8
  store i64 0, ptr %i.au, align 8, !tbaa !151
  %i.av = getelementptr i8, ptr %2, i64 40
  store i32 1, ptr %i.av, align 8, !tbaa !116
  %i.aw = getelementptr i8, ptr %i.ar, i64 %i.as
  %i.ax = getelementptr i8, ptr %i.aw, i64 1
  store ptr %i.ax, ptr %i.aq, align 8, !tbaa !81
  br label %bb.bx

bb.k:                                             ; preds = %bb.a
  %i.ay = getelementptr i8, ptr %0, i64 96        ; 5 uses
  %.promoted.i = load ptr, ptr %i.ay, align 8, !tbaa !64 ; 2 uses
  %i.az = getelementptr i8, ptr %.promoted.i, i64 1 ; 3 uses
end_hunk_0
