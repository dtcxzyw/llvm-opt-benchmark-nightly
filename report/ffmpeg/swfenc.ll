inline.NumInlined: 75
inline.NumDeleted: 8
begin_hunk_0_@put_swf_matrix:put_bits.exit

put_bits.exit45:                                  ; preds = %bb.o, %bb.p
  %.sink146 = phi i32 [ -1, %bb.o ], [ 31, %bb.p ]
  %.sroa.60.15.idx = phi i64 [ %.sroa.60.13.idx, %bb.o ], [ %.sroa.60.13.add, %bb.p ] ; 3 uses
  %.026.i.i43 = phi i32 [ %i.bb, %bb.o ], [ 0, %bb.p ] ; 2 uses
  %i.be = add nsw i32 %i.az, %.sink146            ; 4 uses
  %i.bf = icmp sgt i32 %i.be, 5
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %put_bits.exit45
  %i.bg = shl i32 %.026.i.i43, 5
  %i.bh = or disjoint i32 %i.bg, 1
  br label %put_bits.exit49

bb.r:                                             ; preds = %put_bits.exit45
  %.sroa.60.15.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.60.15.idx
  %i.bi = shl i32 %.026.i.i43, %i.be
  %i.bj = icmp eq i32 %i.be, 5
  %i.bk = zext i1 %i.bj to i32
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %i.bm = call i32 @llvm.bswap.i32(i32 %i.bl)
  store i32 %i.bm, ptr %.sroa.60.15.ptr, align 1, !tbaa !72
  %.sroa.60.15.add = add nuw nsw i64 %.sroa.60.15.idx, 4
  br label %put_bits.exit49

put_bits.exit49:                                  ; preds = %bb.q, %bb.r
  %.sink147 = phi i32 [ -5, %bb.q ], [ 27, %bb.r ]
  %.sroa.60.17.idx = phi i64 [ %.sroa.60.15.idx, %bb.q ], [ %.sroa.60.15.add, %bb.r ] ; 3 uses
  %.026.i.i47 = phi i32 [ %i.bh, %bb.q ], [ 1, %bb.r ] ; 2 uses
  %i.bn = add nsw i32 %i.be, %.sink147            ; 3 uses
  %i.bo = icmp sgt i32 %i.bn, 1
  br i1 %i.bo, label %bb.s, label %bb.t

bb.s:                                             ; preds = %put_bits.exit49
  %i.bp = shl i32 %.026.i.i47, 1
  br label %put_bits.exit53

bb.t:                                             ; preds = %put_bits.exit49
  %.sroa.60.17.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.60.17.idx
  %i.bq = shl i32 %.026.i.i47, %i.bn
  %i.br = call i32 @llvm.bswap.i32(i32 %i.bq)
  store i32 %i.br, ptr %.sroa.60.17.ptr, align 1, !tbaa !72
  %.sroa.60.17.add = add nuw nsw i64 %.sroa.60.17.idx, 4
  br label %put_bits.exit53

put_bits.exit53:                                  ; preds = %bb.s, %bb.t
  %.sink148 = phi i32 [ -1, %bb.s ], [ 31, %bb.t ]
  %.sroa.60.19.idx = phi i64 [ %.sroa.60.17.idx, %bb.s ], [ %.sroa.60.17.add, %bb.t ] ; 3 uses
  %.026.i.i51 = phi i32 [ %i.bp, %bb.s ], [ 0, %bb.t ] ; 2 uses
  %i.bs = add nsw i32 %i.bn, %.sink148            ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.u, label %bb.v

bb.u:                                             ; preds = %put_bits.exit53
  %i.bu = shl i32 %.026.i.i51, 1
  br label %put_bits.exit57

bb.v:                                             ; preds = %put_bits.exit53
  %.sroa.60.19.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.60.19.idx
  %i.bv = shl i32 %.026.i.i51, %i.bs
  %i.bw = call i32 @llvm.bswap.i32(i32 %i.bv)
  store i32 %i.bw, ptr %.sroa.60.19.ptr, align 1, !tbaa !72
  %.sroa.60.19.add = add nuw nsw i64 %.sroa.60.19.idx, 4
  br label %put_bits.exit57

put_bits.exit57:                                  ; preds = %bb.u, %bb.v
  %.sink149 = phi i32 [ -1, %bb.u ], [ 31, %bb.v ]
  %.sroa.60.21.idx = phi i64 [ %.sroa.60.19.idx, %bb.u ], [ %.sroa.60.19.add, %bb.v ] ; 2 uses
  %.026.i.i55 = phi i32 [ %i.bu, %bb.u ], [ 0, %bb.v ]
  %i.bx = add nsw i32 %i.bs, %.sink149            ; 3 uses
  %i.by = icmp slt i32 %i.bx, 32
  br i1 %i.by, label %.lr.ph.i, label %flush_put_bits.exit

.lr.ph.i:                                         ; preds = %put_bits.exit57
  %i.bz = shl i32 %.026.i.i55, %i.bx
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph.i, %bb.w
  %.sroa.60.22.idx = phi i64 [ %.sroa.60.21.idx, %.lr.ph.i ], [ %.sroa.60.22.add, %bb.w ] ; 2 uses
  %.sroa.31.0 = phi i32 [ %i.bx, %.lr.ph.i ], [ %i.cd, %bb.w ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %i.bz, %.lr.ph.i ], [ %i.cc, %bb.w ] ; 2 uses
  %.sroa.60.22.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.60.22.idx
  %i.ca = lshr i32 %.sroa.0.0, 24
  %i.cb = trunc nuw i32 %i.ca to i8
  %.sroa.60.22.add = add nuw nsw i64 %.sroa.60.22.idx, 1 ; 2 uses
  store i8 %i.cb, ptr %.sroa.60.22.ptr, align 1, !tbaa !72
  %i.cc = shl i32 %.sroa.0.0, 8
  %i.cd = add nsw i32 %.sroa.31.0, 8
  %i.ce = icmp slt i32 %.sroa.31.0, 24
  br i1 %i.ce, label %bb.w, label %flush_put_bits.exit, !llvm.loop !73

flush_put_bits.exit:                              ; preds = %bb.w, %put_bits.exit57
  %.sroa.60.21.idx.pn = phi i64 [ %.sroa.60.21.idx, %put_bits.exit57 ], [ %.sroa.60.22.add, %bb.w ]
  %i.cf = trunc i64 %.sroa.60.21.idx.pn to i32
  call void @avio_write(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.cf) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_swf_line_edge(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !70     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 11 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !71   ; 4 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = shl i32 %i.a, 1
  %i.f = or disjoint i32 %i.e, 1
  br label %put_bits.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69   ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = icmp ugt i64 %i.m, 3
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = shl i32 %i.a, %i.c
  %i.p = icmp eq i32 %i.c, 1
  %i.q = zext i1 %i.p to i32
  %i.r = or i32 %i.o, %i.q
  %i.s = tail call i32 @llvm.bswap.i32(i32 %i.r)
  store i32 %i.s, ptr %i.j, align 1, !tbaa !72
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store ptr %i.u, ptr %i.i, align 8, !tbaa !69
  br label %put_bits.exit

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.13) #7
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.d, %bb.e, %bb.b
  %.sink = phi i32 [ -1, %bb.b ], [ 31, %bb.e ], [ 31, %bb.d ]
  %.026.i.i = phi i32 [ %i.f, %bb.b ], [ 1, %bb.e ], [ 1, %bb.d ] ; 3 uses
  %i.v = add nsw i32 %i.c, %.sink                 ; 5 uses
  store i32 %.026.i.i, ptr %0, align 8, !tbaa !70
  store i32 %i.v, ptr %i.b, align 4, !tbaa !71
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %put_bits.exit
  %i.x = shl i32 %.026.i.i, 1
  %i.y = or disjoint i32 %i.x, 1
  br label %put_bits.exit27

bb.g:                                             ; preds = %put_bits.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !68
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !69 ; 2 uses
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp ugt i64 %i.af, 3
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = shl i32 %.026.i.i, %i.v
  %i.ai = icmp eq i32 %i.v, 1
  %i.aj = zext i1 %i.ai to i32
  %i.ak = or i32 %i.ah, %i.aj
  %i.al = tail call i32 @llvm.bswap.i32(i32 %i.ak)
  store i32 %i.al, ptr %i.ac, align 1, !tbaa !72
  %i.am = load ptr, ptr %i.ab, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  store ptr %i.an, ptr %i.ab, align 8, !tbaa !69
  br label %put_bits.exit27

bb.i:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.13) #7
  br label %put_bits.exit27

put_bits.exit27:                                  ; preds = %bb.h, %bb.i, %bb.f
  %.sink92 = phi i32 [ -1, %bb.f ], [ 31, %bb.i ], [ 31, %bb.h ]
  %.026.i.i25 = phi i32 [ %i.y, %bb.f ], [ 1, %bb.i ], [ 1, %bb.h ] ; 3 uses
  %i.ao = add nsw i32 %i.v, %.sink92              ; 5 uses
  store i32 %.026.i.i25, ptr %0, align 8, !tbaa !70
  store i32 %i.ao, ptr %i.b, align 4, !tbaa !71
  %i.ap = icmp eq i32 %1, 0                       ; 2 uses
  br i1 %i.ap, label %max_nbits.exit, label %bb.j

bb.j:                                             ; preds = %put_bits.exit27
  %i.aq = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.013.i = phi i32 [ 1, %bb.j ], [ %i.ar, %bb.k ]
  %.01012.i = phi i32 [ %i.aq, %bb.j ], [ %i.as, %bb.k ]
  %i.ar = add nuw nsw i32 %.013.i, 1              ; 2 uses
  %i.as = lshr i32 %.01012.i, 1                   ; 2 uses
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %3, label %bb.k, !llvm.loop !82

3:                                                ; preds = %bb.k
  %spec.select = tail call i32 @llvm.umax.i32(i32 %i.ar, i32 2)
  br label %max_nbits.exit

max_nbits.exit:                                   ; preds = %3, %put_bits.exit27
  %.0 = phi i32 [ 2, %put_bits.exit27 ], [ %spec.select, %3 ] ; 2 uses
  %i.at = icmp eq i32 %2, 0                       ; 2 uses
  br i1 %i.at, label %max_nbits.exit32, label %bb.l

bb.l:                                             ; preds = %max_nbits.exit
  %i.au = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %.013.i28 = phi i32 [ 1, %bb.l ], [ %i.av, %bb.m ]
  %.01012.i29 = phi i32 [ %i.au, %bb.l ], [ %i.aw, %bb.m ]
  %i.av = add nuw nsw i32 %.013.i28, 1            ; 2 uses
  %i.aw = lshr i32 %.01012.i29, 1                 ; 2 uses
  %.not.i30 = icmp eq i32 %i.aw, 0
  br i1 %.not.i30, label %bb.n, label %bb.m, !llvm.loop !82

bb.n:                                             ; preds = %bb.m
  %spec.select79 = tail call i32 @llvm.smax.i32(i32 %.0, i32 %i.av)
  br label %max_nbits.exit32

max_nbits.exit32:                                 ; preds = %bb.n, %max_nbits.exit
  %.1 = phi i32 [ %.0, %max_nbits.exit ], [ %spec.select79, %bb.n ] ; 22 uses
  %notmask = shl nsw i32 -1, %.1
  %i.ax = xor i32 %notmask, -1                    ; 4 uses
  %i.ay = add nsw i32 %.1, -2                     ; 4 uses
  %i.az = icmp sgt i32 %i.ao, 4
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %max_nbits.exit32
  %i.ba = shl i32 %.026.i.i25, 4
  %i.bb = or i32 %i.ay, %i.ba
  br label %put_bits.exit36

bb.p:                                             ; preds = %max_nbits.exit32
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !68
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !69 ; 2 uses
  %i.bg = ptrtoint ptr %i.bd to i64
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = icmp ugt i64 %i.bi, 3
  br i1 %i.bj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bk = shl i32 %.026.i.i25, %i.ao
  %i.bl = sub nsw i32 4, %i.ao
  %i.bm = lshr i32 %i.ay, %i.bl
  %i.bn = or i32 %i.bm, %i.bk
  %i.bo = tail call i32 @llvm.bswap.i32(i32 %i.bn)
  store i32 %i.bo, ptr %i.bf, align 1, !tbaa !72
  %i.bp = load ptr, ptr %i.be, align 8, !tbaa !69
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  store ptr %i.bq, ptr %i.be, align 8, !tbaa !69
  br label %put_bits.exit36

bb.r:                                             ; preds = %bb.p
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.13) #7
  br label %put_bits.exit36

put_bits.exit36:                                  ; preds = %bb.q, %bb.r, %bb.o
  %.sink93 = phi i32 [ -4, %bb.o ], [ 28, %bb.r ], [ 28, %bb.q ]
  %.026.i.i34 = phi i32 [ %i.bb, %bb.o ], [ %i.ay, %bb.r ], [ %i.ay, %bb.q ] ; 7 uses
  %i.br = add nsw i32 %i.ao, %.sink93             ; 9 uses
  store i32 %.026.i.i34, ptr %0, align 8, !tbaa !70
  store i32 %i.br, ptr %i.b, align 4, !tbaa !71
  %i.bs = icmp sgt i32 %i.br, 1                   ; 3 uses
  br i1 %i.ap, label %bb.s, label %bb.ag

bb.s:                                             ; preds = %put_bits.exit36
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = shl i32 %.026.i.i34, 1
  br label %put_bits.exit40

bb.u:                                             ; preds = %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !68
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !69 ; 2 uses
  %i.by = ptrtoint ptr %i.bv to i64
  %i.bz = ptrtoint ptr %i.bx to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = icmp ugt i64 %i.ca, 3
  br i1 %i.cb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cc = shl i32 %.026.i.i34, %i.br
  %i.cd = tail call i32 @llvm.bswap.i32(i32 %i.cc)
  store i32 %i.cd, ptr %i.bx, align 1, !tbaa !72
  %i.ce = load ptr, ptr %i.bw, align 8, !tbaa !69
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store ptr %i.cf, ptr %i.bw, align 8, !tbaa !69
  br label %put_bits.exit40

bb.w:                                             ; preds = %bb.u
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.13) #7
  br label %put_bits.exit40

put_bits.exit40:                                  ; preds = %bb.v, %bb.w, %bb.t
  %.sink94 = phi i32 [ -1, %bb.t ], [ 31, %bb.w ], [ 31, %bb.v ]
  %.026.i.i38 = phi i32 [ %i.bt, %bb.t ], [ 0, %bb.w ], [ 0, %bb.v ] ; 3 uses
  %i.cg = add nsw i32 %i.br, %.sink94             ; 5 uses
  store i32 %.026.i.i38, ptr %0, align 8, !tbaa !70
  store i32 %i.cg, ptr %i.b, align 4, !tbaa !71
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.x, label %bb.y

bb.x:                                             ; preds = %put_bits.exit40
  %i.ci = shl i32 %.026.i.i38, 1
  %i.cj = or disjoint i32 %i.ci, 1
  br label %put_bits.exit44

bb.y:                                             ; preds = %put_bits.exit40
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !68
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !69 ; 2 uses
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = icmp ugt i64 %i.cq, 3
  br i1 %i.cr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cs = shl i32 %.026.i.i38, %i.cg
  %i.ct = icmp eq i32 %i.cg, 1
  %i.cu = zext i1 %i.ct to i32
  %i.cv = or disjoint i32 %i.cs, %i.cu
  %i.cw = tail call i32 @llvm.bswap.i32(i32 %i.cv)
  store i32 %i.cw, ptr %i.cn, align 1, !tbaa !72
  %i.cx = load ptr, ptr %i.cm, align 8, !tbaa !69
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  store ptr %i.cy, ptr %i.cm, align 8, !tbaa !69
  br label %put_bits.exit44

bb.aa:                                            ; preds = %bb.y
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.13) #7
  br label %put_bits.exit44

put_bits.exit44:                                  ; preds = %bb.z, %bb.aa, %bb.x
  %.sink95 = phi i32 [ -1, %bb.x ], [ 31, %bb.aa ], [ 31, %bb.z ]
  %.026.i.i42 = phi i32 [ %i.cj, %bb.x ], [ 1, %bb.aa ], [ 1, %bb.z ] ; 3 uses
  %i.cz = add nsw i32 %i.cg, %.sink95             ; 6 uses
  store i32 %.026.i.i42, ptr %0, align 8, !tbaa !70
  store i32 %i.cz, ptr %i.b, align 4, !tbaa !71
  %i.da = and i32 %2, %i.ax                       ; 3 uses
  %i.db = icmp slt i32 %.1, %i.cz
  br i1 %i.db, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %put_bits.exit44
  %i.dc = shl i32 %.026.i.i42, %.1
  %i.dd = or i32 %i.dc, %i.da
  %i.de = sub nsw i32 %i.cz, %.1
  br label %put_bits.exit48

bb.ac:                                            ; preds = %put_bits.exit44
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !68
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !69 ; 2 uses
  %i.dj = ptrtoint ptr %i.dg to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = icmp ugt i64 %i.dl, 3
  br i1 %i.dm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dn = shl i32 %.026.i.i42, %i.cz
  %i.do = sub nsw i32 %.1, %i.cz
  %i.dp = lshr i32 %i.da, %i.do
  %i.dq = or i32 %i.dp, %i.dn
  %i.dr = tail call i32 @llvm.bswap.i32(i32 %i.dq)
  store i32 %i.dr, ptr %i.di, align 1, !tbaa !72
  %i.ds = load ptr, ptr %i.dh, align 8, !tbaa !69
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store ptr %i.dt, ptr %i.dh, align 8, !tbaa !69
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.13) #7
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %reass.sub83 = sub i32 %i.cz, %.1
  %i.du = add i32 %reass.sub83, 32
  br label %put_bits.exit48

bb.ag:                                            ; preds = %put_bits.exit36
  br i1 %i.at, label %bb.ah, label %bb.av

bb.ah:                                            ; preds = %bb.ag
  br i1 %i.bs, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dv = shl i32 %.026.i.i34, 1
  br label %put_bits.exit52

bb.aj:                                            ; preds = %bb.ah
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_0
begin_hunk_1_@swf_write_video:bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %.val100, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %.val100, i64 40
  store i32 317, ptr %i.ae, align 8, !tbaa !65
  tail call void @avio_wl16(ptr noundef %.val101, i32 noundef 0) #7
  tail call void @avio_wl32(ptr noundef %.val101, i32 noundef 0) #7
  tail call void @avio_wl16(ptr noundef %i.e, i32 noundef 0) #7
  %i.af = load i32, ptr %i.l, align 4, !tbaa !33  ; 2 uses
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.l, align 4, !tbaa !33
  tail call void @avio_wl16(ptr noundef %i.e, i32 noundef %i.af) #7
  %i.ah = load i32, ptr %i.f, align 4, !tbaa !46
  %i.ai = icmp eq i32 %i.ah, 86
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = and i32 %4, 1
  %.not86 = icmp eq i32 %i.aj, 0
  %i.ak = select i1 %.not86, i32 32, i32 16
  %i.al = or i32 %i.h, %i.ak
  tail call void @avio_w8(ptr noundef %i.e, i32 noundef %i.al) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @avio_write(ptr noundef %i.e, ptr noundef %2, i32 noundef %3) #7
  br label %.sink.split

bb.j:                                             ; preds = %bb.c
  %i.am = load i32, ptr %i.f, align 4, !tbaa !46
  switch i32 %i.am, label %bb.p [
    i32 7, label %bb.k
    i32 61, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.an = load i32, ptr %i.i, align 8, !tbaa !32
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.val98 = load ptr, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %.val99 = load ptr, ptr %i.d, align 8, !tbaa !26 ; 2 uses
  %i.ap = tail call i64 @avio_seek(ptr noundef %.val99, i64 noundef 0, i32 noundef 1) #7
  %i.aq = getelementptr inbounds nuw i8, ptr %.val98, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %.val98, i64 40
  store i32 5, ptr %i.ar, align 8, !tbaa !65
  tail call void @avio_wl16(ptr noundef %.val99, i32 noundef 0) #7
  tail call void @avio_wl16(ptr noundef %i.e, i32 noundef 1) #7
  tail call void @avio_wl16(ptr noundef %i.e, i32 noundef 1) #7
  %.val118 = load ptr, ptr %i.b, align 8, !tbaa !9
  %.val119 = load ptr, ptr %i.d, align 8, !tbaa !26
  tail call fastcc void @put_swf_end_tag(ptr %.val118, ptr %.val119)
  %.val96 = load ptr, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %.val97 = load ptr, ptr %i.d, align 8, !tbaa !26 ; 2 uses
  %i.as = tail call i64 @avio_seek(ptr noundef %.val97, i64 noundef 0, i32 noundef 1) #7
  %i.at = getelementptr inbounds nuw i8, ptr %.val96, i64 8
  store i64 %i.as, ptr %i.at, align 8, !tbaa !64
  %i.au = getelementptr inbounds nuw i8, ptr %.val96, i64 40
  store i32 3, ptr %i.au, align 8, !tbaa !65
  tail call void @avio_wl16(ptr noundef %.val97, i32 noundef 0) #7
  tail call void @avio_wl16(ptr noundef %i.e, i32 noundef 0) #7
  %.val116 = load ptr, ptr %i.b, align 8, !tbaa !9
  %.val117 = load ptr, ptr %i.d, align 8, !tbaa !26
  tail call fastcc void @put_swf_end_tag(ptr %.val116, ptr %.val117)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.val94 = load ptr, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %.val95 = load ptr, ptr %i.d, align 8, !tbaa !26 ; 3 uses
  %i.av = tail call i64 @avio_seek(ptr noundef %.val95, i64 noundef 0, i32 noundef 1) #7
  %i.aw = getelementptr inbounds nuw i8, ptr %.val94, i64 8
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %.val94, i64 40
  store i32 277, ptr %i.ax, align 8, !tbaa !65
  tail call void @avio_wl16(ptr noundef %.val95, i32 noundef 0) #7
  tail call void @avio_wl32(ptr noundef %.val95, i32 noundef 0) #7
  tail call void @avio_wl16(ptr noundef %i.e, i32 noundef 0) #7
  %i.ay = load i32, ptr %i.f, align 4, !tbaa !46
  %i.az = icmp eq i32 %i.ay, 7
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @avio_wb32(ptr noundef %i.e, i32 noundef -2555943) #7
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @avio_write(ptr noundef %i.e, ptr noundef %2, i32 noundef %3) #7
  %.val114 = load ptr, ptr %i.b, align 8, !tbaa !9
  %.val115 = load ptr, ptr %i.d, align 8, !tbaa !26
  tail call fastcc void @put_swf_end_tag(ptr %.val114, ptr %.val115)
  %.val92 = load ptr, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %.val93 = load ptr, ptr %i.d, align 8, !tbaa !26 ; 2 uses
  %i.ba = tail call i64 @avio_seek(ptr noundef %.val93, i64 noundef 0, i32 noundef 1) #7
  %i.bb = getelementptr inbounds nuw i8, ptr %.val92, i64 8
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %.val92, i64 40
  store i32 4, ptr %i.bc, align 8, !tbaa !65
  tail call void @avio_wl16(ptr noundef %.val93, i32 noundef 0) #7
  tail call void @avio_wl16(ptr noundef %i.e, i32 noundef 1) #7
  tail call void @avio_wl16(ptr noundef %i.e, i32 noundef 1) #7
  tail call fastcc void @put_swf_matrix(ptr noundef %i.e, i32 noundef 1310720, i32 noundef 1310720)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.o
  %.val112 = load ptr, ptr %i.b, align 8, !tbaa !9
  %.val113 = load ptr, ptr %i.d, align 8, !tbaa !26
  tail call fastcc void @put_swf_end_tag(ptr %.val112, ptr %.val113)
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.j
  %i.bd = load i32, ptr %i.i, align 8, !tbaa !32
  %i.be = add nsw i32 %i.bd, 1
  store i32 %i.be, ptr %i.i, align 8, !tbaa !32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !47
  %.not87 = icmp eq ptr %i.bg, null
  br i1 %.not87, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !48
  %i.bj = tail call i64 @av_fifo_can_read(ptr noundef %i.bi) #7
  %.not88 = icmp eq i64 %i.bj, 0
  br i1 %.not88, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !48
  %i.bl = tail call i64 @av_fifo_can_read(ptr noundef %i.bk) #7
  store i64 %i.bl, ptr %i.a, align 8, !tbaa !83
  %.val90 = load ptr, ptr %i.b, align 8, !tbaa !9 ; 2 uses
  %.val91 = load ptr, ptr %i.d, align 8, !tbaa !26 ; 3 uses
  %i.bm = tail call i64 @avio_seek(ptr noundef %.val91, i64 noundef 0, i32 noundef 1) #7
  %i.bn = getelementptr inbounds nuw i8, ptr %.val90, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !tbaa !64
  %i.bo = getelementptr inbounds nuw i8, ptr %.val90, i64 40
  store i32 275, ptr %i.bo, align 8, !tbaa !65
  tail call void @avio_wl16(ptr noundef %.val91, i32 noundef 0) #7
  tail call void @avio_wl32(ptr noundef %.val91, i32 noundef 0) #7
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 28 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !27
  tail call void @avio_wl16(ptr noundef %i.e, i32 noundef %i.bq) #7
  tail call void @avio_wl16(ptr noundef %i.e, i32 noundef 0) #7
  %i.br = load ptr, ptr %i.bh, align 8, !tbaa !48
  %i.bs = call i32 @av_fifo_read_to_cb(ptr noundef %i.br, ptr noundef nonnull @fifo_avio_wrapper, ptr noundef %i.e, ptr noundef nonnull %i.a) #7 ; 0 uses
  %.val110 = load ptr, ptr %i.b, align 8, !tbaa !9
  %.val111 = load ptr, ptr %i.d, align 8, !tbaa !26
  call fastcc void @put_swf_end_tag(ptr %.val110, ptr %.val111)
  store i32 0, ptr %i.bp, align 4, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.val = load ptr, ptr %i.b, align 8, !tbaa !9   ; 2 uses
  %.val89 = load ptr, ptr %i.d, align 8, !tbaa !26 ; 2 uses
  %i.bt = call i64 @avio_seek(ptr noundef %.val89, i64 noundef 0, i32 noundef 1) #7
  %i.bu = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !64
  %i.bv = getelementptr inbounds nuw i8, ptr %.val, i64 40
  store i32 1, ptr %i.bv, align 8, !tbaa !65
  call void @avio_wl16(ptr noundef %.val89, i32 noundef 0) #7
  %.val108 = load ptr, ptr %i.b, align 8, !tbaa !9
  %.val109 = load ptr, ptr %i.d, align 8, !tbaa !26
  call fastcc void @put_swf_end_tag(ptr %.val108, ptr %.val109)
  ret void
}

declare i64 @av_fifo_can_write(ptr noundef) local_unnamed_addr #2

declare i32 @av_fifo_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @av_get_audio_frame_duration2(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avio_wb32(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @av_fifo_can_read(ptr noundef) local_unnamed_addr #2

declare i32 @av_fifo_read_to_cb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @fifo_avio_wrapper(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !83
  %i.b = trunc i64 %i.a to i32
  tail call void @avio_write(ptr noundef %0, ptr noundef %1, i32 noundef %i.b) #7
  ret i32 0
}

declare void @av_fifo_freep2(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 24}
!10 = !{!"AVFormatContext", !11, i64 0, !13, i64 8, !14, i64 16, !12, i64 24, !15, i64 32, !6, i64 40, !6, i64 44, !16, i64 48, !6, i64 56, !18, i64 64, !6, i64 72, !19, i64 80, !20, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !21, i64 136, !21, i64 144, !20, i64 152, !6, i64 160, !6, i64 164, !22, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !23, i64 192, !21, i64 200, !6, i64 208, !6, i64 212, !24, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !21, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !21, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !20, i64 336, !20, i64 344, !20, i64 352, !20, i64 360, !6, i64 368, !25, i64 376, !25, i64 384, !25, i64 392, !25, i64 400, !6, i64 408, !12, i64 416, !12, i64 424, !21, i64 432, !20, i64 440, !12, i64 448, !12, i64 456, !21, i64 464, !20, i64 472}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS13AVInputFormat", !12, i64 0}
!14 = !{!"p1 _ZTS14AVOutputFormat", !12, i64 0}
!15 = !{!"p1 _ZTS11AVIOContext", !12, i64 0}
!16 = !{!"p2 _ZTS8AVStream", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p2 _ZTS13AVStreamGroup", !17, i64 0}
!19 = !{!"p2 _ZTS9AVChapter", !17, i64 0}
!20 = !{!"p1 omnipotent char", !12, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!"p2 _ZTS9AVProgram", !17, i64 0}
!23 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!24 = !{!"AVIOInterruptCB", !12, i64 0, !12, i64 8}
!25 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!26 = !{!10, !15, i64 32}
!27 = !{!28, !6, i64 28}
!28 = !{!"SWFEncContext", !21, i64 0, !21, i64 8, !21, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !29, i64 48, !30, i64 56, !30, i64 64, !31, i64 72}
!29 = !{!"p1 _ZTS6AVFifo", !12, i64 0}
!30 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!31 = !{!"p1 _ZTS8AVStream", !12, i64 0}
!32 = !{!28, !6, i64 32}
!33 = !{!28, !6, i64 36}
!34 = !{!10, !6, i64 44}
!35 = !{!10, !16, i64 48}
!36 = !{!31, !31, i64 0}
!37 = !{!38, !30, i64 16}
!38 = !{!"AVStream", !11, i64 0, !6, i64 8, !6, i64 12, !30, i64 16, !12, i64 24, !39, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !6, i64 64, !6, i64 68, !39, i64 72, !23, i64 80, !39, i64 88, !40, i64 96, !6, i64 200, !39, i64 204, !6, i64 212}
!39 = !{!"AVRational", !6, i64 0, !6, i64 4}
!40 = !{!"AVPacket", !41, i64 0, !21, i64 8, !21, i64 16, !20, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !42, i64 48, !6, i64 56, !21, i64 64, !21, i64 72, !12, i64 80, !41, i64 88, !39, i64 96}
!41 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!42 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!43 = !{!44, !6, i64 0}
!44 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !20, i64 16, !6, i64 24, !42, i64 32, !6, i64 40, !6, i64 44, !21, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !39, i64 80, !39, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !45, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!45 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!46 = !{!44, !6, i64 4}
!47 = !{!28, !30, i64 56}
!48 = !{!28, !29, i64 48}
!49 = !{!28, !31, i64 72}
!50 = !{!28, !30, i64 64}
!51 = distinct !{!51, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!44, !6, i64 72}
!54 = !{!44, !6, i64 76}
!55 = !{!38, !6, i64 36}
!56 = !{!38, !6, i64 32}
!57 = !{!44, !6, i64 152}
!58 = !{!28, !6, i64 24}
!59 = !{!10, !14, i64 16}
!60 = !{!61, !20, i64 0}
!61 = !{!"AVOutputFormat", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !62, i64 48, !11, i64 56}
!62 = !{!"p2 _ZTS10AVCodecTag", !17, i64 0}
!63 = !{!28, !21, i64 0}
!64 = !{!28, !21, i64 8}
!65 = !{!28, !6, i64 40}
!66 = !{!67, !20, i64 8}
!67 = !{!"PutBitContext", !6, i64 0, !6, i64 4, !20, i64 8, !20, i64 16, !20, i64 24}
!68 = !{!67, !20, i64 24}
!69 = !{!67, !20, i64 16}
!70 = !{!67, !6, i64 0}
!71 = !{!67, !6, i64 4}
!72 = !{!7, !7, i64 0}
!73 = distinct !{!73, !52}
!74 = !{!44, !6, i64 132}
!75 = !{!40, !6, i64 36}
!76 = !{!40, !20, i64 24}
!77 = !{!40, !6, i64 32}
!78 = !{!40, !6, i64 40}
!79 = !{!80, !6, i64 144}
!80 = !{!"AVIOContext", !11, i64 0, !20, i64 8, !6, i64 16, !20, i64 24, !20, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !21, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !21, i64 104, !20, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !6, i64 144, !6, i64 148, !20, i64 152, !20, i64 160, !12, i64 168, !6, i64 176, !20, i64 184, !21, i64 192, !21, i64 200}
!81 = !{!28, !21, i64 16}
!82 = distinct !{!82, !52}
!83 = !{!21, !21, i64 0}
end_hunk_1
