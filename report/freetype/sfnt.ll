Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/sfnt?download=true
inline.NumInlined: 119
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 35
begin_hunk_0_@tt_face_get_paint_layers:bb.a
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ac = icmp ugt ptr %i.h, %i.ab
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load i8, ptr %i.h, align 1, !tbaa !29
  %i.ae = zext i8 %i.ad to i64
  %i.af = shl nuw nsw i64 %i.ae, 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !29
  %i.ai = zext i8 %i.ah to i64
  %i.aj = shl nuw nsw i64 %i.ai, 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !29
  %i.am = zext i8 %i.al to i64
  %i.an = shl nuw nsw i64 %i.am, 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !29
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.ar, align 8, !tbaa !321
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.af
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.aj
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aq ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !303
  %i.ay = icmp uge ptr %i.av, %i.ax
  %.not42 = icmp ult ptr %i.av, %i.aa
  %or.cond43 = and i1 %i.ay, %.not42
  br i1 %or.cond43, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store ptr %i.av, ptr %2, align 8, !tbaa !320
  store ptr %i.az, ptr %i.g, align 8, !tbaa !316
  %i.ba = add i32 %i.b, 1
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !318
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.g
  %.0 = phi i8 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.d ], [ 0, %bb.f ], [ 1, %bb.g ], [ 0, %bb.e ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext range(i8 0, 2) i8 @tt_face_get_colorline_stops(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(address_is_null) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !181  ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !309  ; 2 uses
  %i.e = icmp ne ptr %i.d, null
  %i.f = icmp ne ptr %2, null
  %or.cond = and i1 %i.f, %i.e
  br i1 %or.cond, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !606  ; 4 uses
  %i.i = load i32, ptr %2, align 8, !tbaa !607    ; 2 uses
  %.not53 = icmp ult i32 %i.h, %i.i
  br i1 %.not53, label %bb.d, label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i8, ptr %i.j, align 8, !tbaa !608
  %.not54 = icmp eq i8 %i.k, 0                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !609  ; 10 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !303
  %i.p = icmp ult ptr %i.m, %i.o
  br i1 %i.p, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select = select i1 %.not54, i32 6, i32 10 ; 2 uses
  %i.q = xor i32 %i.h, -1
  %i.r = add i32 %i.i, %i.q
  %i.s = mul i32 %spec.select, %i.r
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.w = load i64, ptr %i.v, align 8, !tbaa !310
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.w
  %i.y = zext nneg i32 %spec.select to i64
  %i.z = sub nsw i64 0, %i.y
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %i.z
  %i.ab = icmp ugt ptr %i.u, %i.aa
  br i1 %i.ab, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load i8, ptr %i.m, align 1, !tbaa !29
  %i.ad = zext i8 %i.ac to i16
  %i.ae = shl nuw i16 %i.ad, 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !29
  %i.ah = zext i8 %i.ag to i16
  %i.ai = or disjoint i16 %i.ae, %i.ah
  %i.aj = sext i16 %i.ai to i64
  %i.ak = shl nsw i64 %i.aj, 2                    ; 2 uses
  store i64 %i.ak, ptr %1, align 8, !tbaa !612
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.am = load i8, ptr %i.al, align 1, !tbaa !29
  %i.an = zext i8 %i.am to i16
  %i.ao = shl nuw i16 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !29
  %i.ar = zext i8 %i.aq to i16
  %i.as = or disjoint i16 %i.ao, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i16 %i.as, ptr %i.at, align 8, !tbaa !613
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 6 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29
  %i.ax = zext i8 %i.aw to i16
  %i.ay = shl nuw i16 %i.ax, 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.m, i64 5
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !29
  %i.bb = zext i8 %i.ba to i16
  %i.bc = or disjoint i16 %i.ay, %i.bb            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !614
  br i1 %.not54, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.m, i64 10
  %i.bf = load i32, ptr %i.au, align 1            ; 2 uses
  %i.bg = tail call i32 @llvm.bswap.i32(i32 %i.bf) ; 2 uses
  %i.bh = zext i32 %i.bg to i64                   ; 3 uses
  %i.bi = icmp eq i32 %i.bf, -1
  br i1 %i.bi, label %get_deltas_for_var_index_base.exit, label %.preheader37.i

.preheader37.i:                                   ; preds = %bb.g
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !128
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 112 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !326 ; 2 uses
  %.not.i = icmp eq ptr %i.bq, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.preheader37.i
  %i.br = load i64, ptr %i.bo, align 8, !tbaa !327 ; 2 uses
  %.not36.i = icmp ugt i64 %i.br, %i.bh
  %i.bs = add nsw i64 %i.br, -1
  %spec.select.i = select i1 %.not36.i, i64 %i.bh, i64 %i.bs ; 2 uses
  %i.bt = load ptr, ptr %i.bp, align 8, !tbaa !328
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %spec.select.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !30
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %spec.select.i
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !30
  br label %bb.i

bb.i:                                             ; preds = %.preheader37.i, %bb.h
  %.031.i = phi i32 [ %i.bv, %bb.h ], [ 0, %.preheader37.i ]
  %.030.i = phi i32 [ %i.bx, %bb.h ], [ %i.bg, %.preheader37.i ]
  %i.by = load ptr, ptr %i.bm, align 8, !tbaa !329
  %i.bz = tail call i32 %i.by(ptr noundef nonnull %0, ptr noundef nonnull %i.bn, i32 noundef %.031.i, i32 noundef %.030.i) #27, !inline_history !605
  %i.ca = add nuw nsw i64 %i.bh, 1                ; 3 uses
  %i.cb = load ptr, ptr %i.bl, align 8, !tbaa !326 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.cb, null
  br i1 %.not.i.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cc = load i64, ptr %i.bo, align 8, !tbaa !327 ; 2 uses
  %.not36.i.1 = icmp ult i64 %i.ca, %i.cc
  %i.cd = add nsw i64 %i.cc, -1
  %spec.select.i.1 = select i1 %.not36.i.1, i64 %i.ca, i64 %i.cd ; 2 uses
  %i.ce = load ptr, ptr %i.bp, align 8, !tbaa !328
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %spec.select.i.1
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !30
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %spec.select.i.1
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !30
  br label %get_deltas_for_var_index_base.exit.loopexit

bb.k:                                             ; preds = %bb.i
  %i.cj = trunc nuw i64 %i.ca to i32
  br label %get_deltas_for_var_index_base.exit.loopexit

get_deltas_for_var_index_base.exit.loopexit:      ; preds = %bb.k, %bb.j
  %.031.i.1 = phi i32 [ %i.cg, %bb.j ], [ 0, %bb.k ]
  %.030.i.1 = phi i32 [ %i.ci, %bb.j ], [ %i.cj, %bb.k ]
  %i.ck = load ptr, ptr %i.bm, align 8, !tbaa !329
  %i.cl = tail call i32 %i.ck(ptr noundef nonnull %0, ptr noundef nonnull %i.bn, i32 noundef %.031.i.1, i32 noundef %.030.i.1) #27, !inline_history !605
  %.pre = load i64, ptr %1, align 8, !tbaa !612
  %.pre56 = load i16, ptr %i.bd, align 2, !tbaa !614
  %.pre57.pre = load i32, ptr %i.g, align 4, !tbaa !606
  %i.cm = sext i32 %i.bz to i64
  %i.cn = shl nsw i64 %i.cm, 2
  %i.co = trunc i32 %i.cl to i16
  br label %get_deltas_for_var_index_base.exit

get_deltas_for_var_index_base.exit:               ; preds = %get_deltas_for_var_index_base.exit.loopexit, %bb.g
  %.pre57 = phi i32 [ %i.h, %bb.g ], [ %.pre57.pre, %get_deltas_for_var_index_base.exit.loopexit ]
  %i.cp = phi i16 [ %i.bc, %bb.g ], [ %.pre56, %get_deltas_for_var_index_base.exit.loopexit ]
  %i.cq = phi i64 [ %i.ak, %bb.g ], [ %.pre, %get_deltas_for_var_index_base.exit.loopexit ]
  %.sroa.0.1 = phi i64 [ 0, %bb.g ], [ %i.cn, %get_deltas_for_var_index_base.exit.loopexit ]
  %.sroa.5.1 = phi i16 [ 0, %bb.g ], [ %i.co, %get_deltas_for_var_index_base.exit.loopexit ]
  %i.cr = add nsw i64 %i.cq, %.sroa.0.1
  store i64 %i.cr, ptr %1, align 8, !tbaa !612
  %i.cs = add i16 %i.cp, %.sroa.5.1
  store i16 %i.cs, ptr %i.bd, align 2, !tbaa !614
  br label %bb.l

bb.l:                                             ; preds = %get_deltas_for_var_index_base.exit, %bb.f
  %i.ct = phi i32 [ %.pre57, %get_deltas_for_var_index_base.exit ], [ %i.h, %bb.f ]
  %.048 = phi ptr [ %i.be, %get_deltas_for_var_index_base.exit ], [ %i.au, %bb.f ]
  store ptr %.048, ptr %i.l, align 8, !tbaa !609
  %i.cu = add i32 %i.ct, 1
  store i32 %i.cu, ptr %i.g, align 4, !tbaa !606
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.a, %bb.b, %bb.l
  %.1 = phi i8 [ 0, %bb.a ], [ 0, %bb.c ], [ 1, %bb.l ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i8 %.1
}

; Function Attrs: nounwind uwtable
define internal zeroext range(i8 0, 2) i8 @tt_face_get_paint(ptr noundef %0, ptr %1, i8 %2, ptr nofree noundef %3) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 17 uses
  %i.b = alloca ptr, align 8                      ; 18 uses
  %i.c = alloca [6 x i32], align 16               ; 42 uses
  %4 = alloca %struct.FT_Matrix_, align 8         ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !181  ; 26 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.ee, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !300
  %.not27 = icmp eq ptr %i.g, null
  br i1 %.not27, label %bb.ee, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 24 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !309  ; 2 uses
  %.not28 = icmp eq ptr %i.i, null
  br i1 %.not28, label %bb.ee, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not29 = icmp eq i8 %2, 0
  br i1 %.not29, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 12, ptr %3, align 8, !tbaa !616
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.j, align 8, !tbaa !141
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !262  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !322
  %i.o = add nsw i64 %i.n, 32
  %i.p = ashr i64 %i.o, 6                         ; 2 uses
  store i64 %i.p, ptr %4, align 8, !tbaa !617
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  %i.s = load i64, ptr %i.r, align 8, !tbaa !323
  %i.t = add nsw i64 %i.s, 32
  %i.u = ashr i64 %i.t, 6                         ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !618
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !165  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load i32, ptr %i.y, align 8, !tbaa !324
  %i.aa = and i32 %i.z, 1
  %.not30 = icmp eq i32 %i.aa, 0
  br i1 %.not30, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @FT_Matrix_Multiply(ptr noundef nonnull %i.x, ptr noundef nonnull %4) #27
  %.pre = load i64, ptr %4, align 8, !tbaa !617
  %.pre32 = load i64, ptr %i.q, align 8, !tbaa !619
  %.pre33 = load i64, ptr %i.ab, align 8, !tbaa !620
  %.pre34 = load i64, ptr %i.v, align 8, !tbaa !618
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = phi i64 [ %.pre34, %bb.f ], [ %i.u, %bb.e ]
  %i.ad = phi i64 [ %.pre33, %bb.f ], [ 0, %bb.e ]
  %i.ae = phi i64 [ %.pre32, %bb.f ], [ 0, %bb.e ]
  %i.af = phi i64 [ %.pre, %bb.f ], [ %i.p, %bb.e ]
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.ae, ptr %i.ah, align 8, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %i.ad, ptr %i.ai, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i64 %i.ac, ptr %i.aj, align 8, !tbaa !29
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !165 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.am = load i32, ptr %i.al, align 8, !tbaa !324
  %i.an = and i32 %i.am, 2
  %.not31 = icmp eq i32 %i.an, 0
  br i1 %.not31, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !621
  %i.aq = shl nsw i64 %i.ap, 10
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !29
  %i.as = load ptr, ptr %i.w, align 8, !tbaa !165
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load i64, ptr %i.at, align 8, !tbaa !622
  %i.av = shl nsw i64 %i.au, 10
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !29
  br label %bb.ee

bb.i:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 0, ptr %i.ax, align 8, !tbaa !29
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 64
  store i64 0, ptr %i.ay, align 8, !tbaa !29
  br label %bb.ee

bb.j:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  store ptr null, ptr %i.b, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %read_paint.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 64 ; 24 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !303
  %i.bb = icmp ult ptr %1, %i.ba
  br i1 %i.bb, label %read_paint.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 24 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !310
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bd ; 3 uses
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 -2 ; 2 uses
  %i.bg = icmp ugt ptr %1, %i.bf
  br i1 %i.bg, label %read_paint.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 7 uses
  store ptr %i.bh, ptr %i.a, align 8, !tbaa !141
  %i.bi = load i8, ptr %1, align 1, !tbaa !29     ; 4 uses
  %i.bj = zext i8 %i.bi to i32
  store i32 %i.bj, ptr %3, align 8, !tbaa !616
  %i.bk = icmp ugt i8 %i.bi, 32
  br i1 %i.bk, label %read_paint.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i8 %i.bi, label %bb.aa [
    i8 1, label %bb.o
    i8 2, label %bb.s
    i8 3, label %bb.s
    i8 11, label %bb.y
  ]

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds i8, ptr %i.be, i64 -5
  %i.bm = icmp ugt ptr %i.bh, %i.bl
  br i1 %i.bm, label %read_paint.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = load i8, ptr %i.bh, align 1, !tbaa !29  ; 2 uses
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !301 ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bo
  br i1 %i.br, label %read_paint.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bt = load i32, ptr %i.bs, align 1
  %i.bu = tail call i32 @llvm.bswap.i32(i32 %i.bt) ; 2 uses
  %i.bv = zext i8 %i.bn to i32                    ; 2 uses
  %i.bw = add i32 %i.bu, %i.bv
  %i.bx = zext i32 %i.bw to i64
  %i.by = icmp ult i64 %i.bq, %i.bx
  br i1 %i.by, label %read_paint.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bv, ptr %i.bz, align 8, !tbaa !29
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !29
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !302
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = shl i32 %i.bu, 2
  %i.cf = zext i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cf
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !29
end_hunk_0
