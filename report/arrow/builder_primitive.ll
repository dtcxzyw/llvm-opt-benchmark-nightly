Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/builder_primitive?download=true
inline.NumInlined: 724
inline.NumDeleted: 354
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN5arrow14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEE:bb.a
  call void @_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapERKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(40) %4)
  store ptr null, ptr %0, align 8, !tbaa !69, !alias.scope !251
  br label %bb.g

bb.g:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEEE3$_0EEvlOT0_.exit"
  ret void
}

declare void @_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapERKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14BooleanBuilder12AppendValuesERKSt6vectorIhSaIhEERKS1_IbSaIbEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !111    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZN5arrow14BooleanBuilder12AppendValuesEPKhlRKSt6vectorIbSaIbEE(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %i.a, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(40) %3)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14BooleanBuilder12AppendValuesERKSt6vectorIhSaIhEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !111    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !112
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZN5arrow14BooleanBuilder12AppendValuesEPKhlS2_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr noundef %i.a, i64 noundef %i.f, ptr noundef null)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEES5_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !115
  %i.e = load ptr, ptr %2, align 8, !tbaa !114
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl nsw i64 %i.h, 3
  %i.j = zext i32 %i.d to i64
  %i.k = add nsw i64 %i.i, %i.j                   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !97, !noalias !259 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !64, !noalias !259
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !259
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !259, !inline_history !7
  %i.r = add nsw i64 %i.q, %i.k                   ; 2 uses
  %.not.i = icmp sgt i64 %i.r, %i.m
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %_ZN5arrow6StatusD2Ev.exit15

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.s = shl nsw i64 %i.m, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.r, i64 %i.s)
  %i.t = load ptr, ptr %1, align 8, !tbaa !64, !noalias !259
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !noalias !259
  call void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !7
  %.pr = load ptr, ptr %4, align 8, !tbaa !69     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.w = icmp eq ptr %.pr, null
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit15, label %.critedge

_ZN5arrow6StatusD2Ev.exit15:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.x = icmp eq i64 %i.k, 0
  br i1 %i.x, label %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEES8_E3$_0EEvlOT0_.exit", label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit15
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !73
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !98 ; 2 uses
  %i.ac = sdiv i64 %i.ab, 8
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac ; 4 uses
  %i.ae = srem i64 %i.ab, 8                       ; 3 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !40
  %i.ag = trunc nsw i64 %i.ae to i8
  %notmask.i.i = shl nsw i8 -1, %i.ag
  %i.ah = xor i8 %notmask.i.i, -1
  %i.ai = and i8 %i.af, %i.ah                     ; 2 uses
  %i.aj = icmp sgt i64 %i.k, 0
  br i1 %i.aj, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ae
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !40
  %.val49.val.i.i = load ptr, ptr %2, align 8, !tbaa !114
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.am = phi i64 [ 0, %.lr.ph.i.i ], [ %i.an, %bb.d ] ; 3 uses
  %.03560.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.aw, %bb.d ] ; 2 uses
  %.03659.i.i = phi i8 [ %i.al, %.lr.ph.i.i ], [ %i.av, %bb.d ] ; 2 uses
  %.04058.i.i = phi i8 [ %i.ai, %.lr.ph.i.i ], [ %i.au, %bb.d ]
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %i.ao = lshr i64 %i.am, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val49.val.i.i, i64 %i.ao
  %i.aq = shl nuw i64 1, %i.am
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !78
  %i.as = and i64 %i.ar, %i.aq
  %.not55.i.i = icmp eq i64 %i.as, 0
  %i.at = select i1 %.not55.i.i, i8 0, i8 %.03659.i.i
  %i.au = or i8 %i.at, %.04058.i.i                ; 2 uses
  %i.av = shl i8 %.03659.i.i, 1                   ; 2 uses
  %i.aw = add nsw i64 %.03560.i.i, -1             ; 2 uses
  %i.ax = icmp ne i8 %i.av, 0
  %i.ay = icmp samesign ugt i64 %.03560.i.i, 1
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %bb.d, label %._crit_edge.i.i, !llvm.loop !254

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ %i.an, %bb.d ]
  %.040.lcssa.i.i = phi i8 [ %i.ai, %bb.c ], [ %i.au, %bb.d ]
  %.035.lcssa.i.i = phi i64 [ %i.k, %bb.c ], [ %i.aw, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 %.040.lcssa.i.i, ptr %i.ad, align 1, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %bb.b
  %.1 = phi i64 [ 0, %bb.b ], [ %.0, %._crit_edge.i.i ] ; 2 uses
  %.038.i.i = phi ptr [ %i.ad, %bb.b ], [ %i.ba, %._crit_edge.i.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.k, %bb.b ], [ %.035.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.bb = icmp sgt i64 %.1.i.i, 7
  br i1 %i.bb, label %.preheader57.lr.ph.i.i, label %._crit_edge64.i.i

.preheader57.lr.ph.i.i:                           ; preds = %bb.e
  %i.bc = lshr i64 %.1.i.i, 3
  br label %.preheader57.i.i

.preheader57.i.i:                                 ; preds = %.preheader57.i.i, %.preheader57.lr.ph.i.i
  %.3 = phi i64 [ %.1, %.preheader57.lr.ph.i.i ], [ %i.di, %.preheader57.i.i ] ; 11 uses
  %.in.i.i = phi i64 [ %i.bc, %.preheader57.lr.ph.i.i ], [ %i.dr, %.preheader57.i.i ] ; 2 uses
  %.13963.i.i = phi ptr [ %.038.i.i, %.preheader57.lr.ph.i.i ], [ %i.em, %.preheader57.i.i ] ; 2 uses
  %.val47.val.i.i = load ptr, ptr %2, align 8, !tbaa !114 ; 8 uses
  %i.bd = add nuw nsw i64 %.3, 1                  ; 3 uses
  %.udiv2836 = lshr i64 %.3, 6
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.val47.val.i.i, i64 %.udiv2836
  %i.bf = and i64 %.3, -9223372036854775745
  %i.bg = icmp ugt i64 %i.bf, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i51.i.i = select i1 %i.bg, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i52.i.i = getelementptr inbounds i8, ptr %i.be, i64 %storemerge.idx.i.i.i.i.i.i51.i.i
  %i.bh = and i64 %.3, 63
  %i.bi = load i64, ptr %storemerge.i.i.i.i.i.i52.i.i, align 8, !tbaa !78
  %i.bj = lshr i64 %i.bi, %i.bh
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = and i8 %i.bk, 1
  %i.bm = add nuw nsw i64 %.3, 2                  ; 3 uses
  %.udiv37 = lshr i64 %i.bd, 6
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.val47.val.i.i, i64 %.udiv37
  %i.bo = and i64 %i.bd, -9223372036854775745
  %i.bp = icmp ugt i64 %i.bo, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i51.1.i.i = select i1 %i.bp, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i52.1.i.i = getelementptr inbounds i8, ptr %i.bn, i64 %storemerge.idx.i.i.i.i.i.i51.1.i.i
  %i.bq = and i64 %i.bd, 63
  %i.br = load i64, ptr %storemerge.i.i.i.i.i.i52.1.i.i, align 8, !tbaa !78
  %i.bs = lshr i64 %i.br, %i.bq
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = add nuw nsw i64 %.3, 3                  ; 3 uses
  %.udiv2938 = lshr i64 %i.bm, 6
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.val47.val.i.i, i64 %.udiv2938
  %i.bw = and i64 %i.bm, -9223372036854775745
  %i.bx = icmp ugt i64 %i.bw, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i51.2.i.i = select i1 %i.bx, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i52.2.i.i = getelementptr inbounds i8, ptr %i.bv, i64 %storemerge.idx.i.i.i.i.i.i51.2.i.i
  %i.by = and i64 %i.bm, 63
  %i.bz = load i64, ptr %storemerge.i.i.i.i.i.i52.2.i.i, align 8, !tbaa !78
  %i.ca = lshr i64 %i.bz, %i.by
  %i.cb = trunc i64 %i.ca to i8
  %i.cc = add nuw nsw i64 %.3, 4                  ; 3 uses
  %.udiv3039 = lshr i64 %i.bu, 6
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.val47.val.i.i, i64 %.udiv3039
  %i.ce = and i64 %i.bu, -9223372036854775745
  %i.cf = icmp ugt i64 %i.ce, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i51.3.i.i = select i1 %i.cf, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i52.3.i.i = getelementptr inbounds i8, ptr %i.cd, i64 %storemerge.idx.i.i.i.i.i.i51.3.i.i
  %i.cg = and i64 %i.bu, 63
  %i.ch = load i64, ptr %storemerge.i.i.i.i.i.i52.3.i.i, align 8, !tbaa !78
  %i.ci = lshr i64 %i.ch, %i.cg
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = add nuw nsw i64 %.3, 5                  ; 3 uses
  %5 = sdiv i64 %i.cc, 64
  %i.cl = getelementptr inbounds [8 x i8], ptr %.val47.val.i.i, i64 %5
  %i.cm = and i64 %i.cc, -9223372036854775745
  %i.cn = icmp ugt i64 %i.cm, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i51.4.i.i = select i1 %i.cn, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i52.4.i.i = getelementptr inbounds i8, ptr %i.cl, i64 %storemerge.idx.i.i.i.i.i.i51.4.i.i
  %i.co = and i64 %i.cc, 63
  %i.cp = load i64, ptr %storemerge.i.i.i.i.i.i52.4.i.i, align 8, !tbaa !78
  %i.cq = lshr i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i8
  %i.cs = add nuw nsw i64 %.3, 6                  ; 3 uses
  %6 = sdiv i64 %i.ck, 64
  %i.ct = getelementptr inbounds [8 x i8], ptr %.val47.val.i.i, i64 %6
  %i.cu = and i64 %i.ck, -9223372036854775745
  %i.cv = icmp ugt i64 %i.cu, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i51.5.i.i = select i1 %i.cv, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i52.5.i.i = getelementptr inbounds i8, ptr %i.ct, i64 %storemerge.idx.i.i.i.i.i.i51.5.i.i
  %i.cw = and i64 %i.ck, 63
  %i.cx = load i64, ptr %storemerge.i.i.i.i.i.i52.5.i.i, align 8, !tbaa !78
  %i.cy = lshr i64 %i.cx, %i.cw
  %i.cz = trunc i64 %i.cy to i8
  %i.da = add nuw nsw i64 %.3, 7                  ; 3 uses
  %7 = sdiv i64 %i.cs, 64
  %i.db = getelementptr inbounds [8 x i8], ptr %.val47.val.i.i, i64 %7
  %i.dc = and i64 %i.cs, -9223372036854775745
  %i.dd = icmp ugt i64 %i.dc, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i51.6.i.i = select i1 %i.dd, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i52.6.i.i = getelementptr inbounds i8, ptr %i.db, i64 %storemerge.idx.i.i.i.i.i.i51.6.i.i
  %i.de = and i64 %i.cs, 63
  %i.df = load i64, ptr %storemerge.i.i.i.i.i.i52.6.i.i, align 8, !tbaa !78
  %i.dg = lshr i64 %i.df, %i.de
  %i.dh = trunc i64 %i.dg to i8
  %i.di = add nuw nsw i64 %.3, 8                  ; 2 uses
  %i.dj = sdiv i64 %i.da, 64
  %i.dk = getelementptr inbounds [8 x i8], ptr %.val47.val.i.i, i64 %i.dj
  %i.dl = and i64 %i.da, -9223372036854775745
  %i.dm = icmp ugt i64 %i.dl, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i51.7.i.i = select i1 %i.dm, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i52.7.i.i = getelementptr inbounds i8, ptr %i.dk, i64 %storemerge.idx.i.i.i.i.i.i51.7.i.i
  %i.dn = and i64 %i.da, 63
  %i.do = load i64, ptr %storemerge.i.i.i.i.i.i52.7.i.i, align 8, !tbaa !78
  %i.dp = lshr i64 %i.do, %i.dn
  %i.dq = trunc i64 %i.dp to i8
  %i.dr = add nsw i64 %.in.i.i, -1
  %i.ds = shl i8 %i.bt, 1
  %i.dt = and i8 %i.ds, 2
  %i.du = or disjoint i8 %i.dt, %i.bl
  %i.dv = shl i8 %i.cb, 2
  %i.dw = and i8 %i.dv, 4
  %i.dx = or disjoint i8 %i.du, %i.dw
  %i.dy = shl i8 %i.cj, 3
  %i.dz = and i8 %i.dy, 8
  %i.ea = or disjoint i8 %i.dx, %i.dz
  %i.eb = shl i8 %i.cr, 4
  %i.ec = and i8 %i.eb, 16
  %i.ed = or disjoint i8 %i.ea, %i.ec
  %i.ee = shl i8 %i.cz, 5
  %i.ef = and i8 %i.ee, 32
  %i.eg = or disjoint i8 %i.ed, %i.ef
  %i.eh = shl i8 %i.dh, 6
  %i.ei = and i8 %i.eh, 64
  %i.ej = or i8 %i.eg, %i.ei
  %i.ek = shl i8 %i.dq, 7
  %i.el = or i8 %i.ej, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %.13963.i.i, i64 1 ; 2 uses
  store i8 %i.el, ptr %.13963.i.i, align 1, !tbaa !40
  %i.en = icmp samesign ugt i64 %.in.i.i, 1
  br i1 %i.en, label %.preheader57.i.i, label %._crit_edge64.i.i, !llvm.loop !255

._crit_edge64.i.i:                                ; preds = %.preheader57.i.i, %bb.e
  %.2 = phi i64 [ %.1, %bb.e ], [ %i.di, %.preheader57.i.i ]
  %.139.lcssa.i.i = phi ptr [ %.038.i.i, %bb.e ], [ %i.em, %.preheader57.i.i ]
  %i.eo = srem i64 %.1.i.i, 8                     ; 3 uses
  %.not45.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not45.i.i, label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEES7_E3$_0EEvPhllOT_.exit.i", label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge64.i.i
  %i.ep = icmp sgt i64 %i.eo, 0
  br i1 %i.ep, label %.lr.ph69.i.i, label %._crit_edge70.i.i

.lr.ph69.i.i:                                     ; preds = %.preheader.i.i
  %.val.val.i.i = load ptr, ptr %2, align 8, !tbaa !114
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph69.i.i
  %i.eq = phi i64 [ %.2, %.lr.ph69.i.i ], [ %i.es, %bb.f ] ; 4 uses
  %.068.i.i = phi i64 [ %i.eo, %.lr.ph69.i.i ], [ %i.er, %bb.f ] ; 2 uses
  %.13767.i.i = phi i8 [ 1, %.lr.ph69.i.i ], [ %i.fd, %bb.f ] ; 2 uses
  %.14166.i.i = phi i8 [ 0, %.lr.ph69.i.i ], [ %i.fc, %bb.f ]
  %i.er = add nsw i64 %.068.i.i, -1
  %i.es = add nsw i64 %i.eq, 1
  %i.et = sdiv i64 %i.eq, 64
  %i.eu = getelementptr inbounds [8 x i8], ptr %.val.val.i.i, i64 %i.et
  %i.ev = and i64 %i.eq, -9223372036854775745
  %i.ew = icmp ugt i64 %i.ev, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i53.i.i = select i1 %i.ew, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i54.i.i = getelementptr inbounds i8, ptr %i.eu, i64 %storemerge.idx.i.i.i.i.i.i53.i.i
  %i.ex = and i64 %i.eq, 63
  %i.ey = shl nuw i64 1, %i.ex
  %i.ez = load i64, ptr %storemerge.i.i.i.i.i.i54.i.i, align 8, !tbaa !78
  %i.fa = and i64 %i.ez, %i.ey
  %.not56.i.i = icmp eq i64 %i.fa, 0
  %i.fb = select i1 %.not56.i.i, i8 0, i8 %.13767.i.i
  %i.fc = or i8 %i.fb, %.14166.i.i                ; 2 uses
  %i.fd = shl nuw i8 %.13767.i.i, 1
  %i.fe = icmp samesign ugt i64 %.068.i.i, 1
  br i1 %i.fe, label %bb.f, label %._crit_edge70.i.i, !llvm.loop !256

._crit_edge70.i.i:                                ; preds = %bb.f, %.preheader.i.i
  %.141.lcssa.i.i = phi i8 [ 0, %.preheader.i.i ], [ %i.fc, %bb.f ]
  store i8 %.141.lcssa.i.i, ptr %.139.lcssa.i.i, align 1, !tbaa !40
  br label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEES7_E3$_0EEvPhllOT_.exit.i"

"_ZN5arrow8internal20GenerateBitsUnrolledIZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEES7_E3$_0EEvPhllOT_.exit.i": ; preds = %._crit_edge70.i.i, %._crit_edge64.i.i
  %i.ff = load i64, ptr %i.aa, align 8, !tbaa !98
  %i.fg = add nsw i64 %i.ff, %i.k
  store i64 %i.fg, ptr %i.aa, align 8, !tbaa !98
  br label %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEES8_E3$_0EEvlOT0_.exit"

"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEES8_E3$_0EEvlOT0_.exit": ; preds = %_ZN5arrow6StatusD2Ev.exit15, %"_ZN5arrow8internal20GenerateBitsUnrolledIZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEES7_E3$_0EEvPhllOT_.exit.i"
  call void @_ZN5arrow12ArrayBuilder20UnsafeAppendToBitmapERKSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(40) %3)
  store ptr null, ptr %0, align 8, !tbaa !69, !alias.scope !260
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEES8_E3$_0EEvlOT0_.exit"
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.d = load i32, ptr %i.c, align 8, !tbaa !115
  %i.e = load ptr, ptr %2, align 8, !tbaa !114
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = shl nsw i64 %i.h, 3
  %i.j = zext i32 %i.d to i64
  %i.k = add nsw i64 %i.i, %i.j                   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.m = load i64, ptr %i.l, align 8, !tbaa !97, !noalias !268 ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !64, !noalias !268
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !noalias !268
  %i.q = tail call noundef i64 %i.p(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !268, !inline_history !7
  %i.r = add nsw i64 %i.q, %i.k                   ; 2 uses
  %.not.i = icmp sgt i64 %i.r, %i.m
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit.thread

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN5arrow6StatusD2Ev.exit15

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.s = shl nsw i64 %i.m, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.r, i64 %i.s)
  %i.t = load ptr, ptr %1, align 8, !tbaa !64, !noalias !268
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !noalias !268
  call void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !7
  %.pr = load ptr, ptr %3, align 8, !tbaa !69     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.w = icmp eq ptr %.pr, null
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit15, label %.critedge

_ZN5arrow6StatusD2Ev.exit15:                      ; preds = %_ZN5arrow6StatusD2Ev.exit, %_ZN5arrow6StatusD2Ev.exit.thread
  %i.x = icmp eq i64 %i.k, 0
  br i1 %i.x, label %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEEE3$_0EEvlOT0_.exit", label %bb.b

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit15
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !73
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !98 ; 2 uses
  %i.ac = sdiv i64 %i.ab, 8
  %i.ad = getelementptr inbounds i8, ptr %i.z, i64 %i.ac ; 4 uses
  %i.ae = srem i64 %i.ab, 8                       ; 3 uses
  %.not.i.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = load i8, ptr %i.ad, align 1, !tbaa !40
  %i.ag = trunc nsw i64 %i.ae to i8
  %notmask.i.i = shl nsw i8 -1, %i.ag
  %i.ah = xor i8 %notmask.i.i, -1
  %i.ai = and i8 %i.af, %i.ah                     ; 2 uses
  %i.aj = icmp sgt i64 %i.k, 0
  br i1 %i.aj, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN5arrow8bit_utilL8kBitmaskE, i64 %i.ae
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !40
  %.val49.val.i.i = load ptr, ptr %2, align 8, !tbaa !114
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.am = phi i64 [ 0, %.lr.ph.i.i ], [ %i.an, %bb.d ] ; 3 uses
  %.03560.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.aw, %bb.d ] ; 2 uses
  %.03659.i.i = phi i8 [ %i.al, %.lr.ph.i.i ], [ %i.av, %bb.d ] ; 2 uses
  %.04058.i.i = phi i8 [ %i.ai, %.lr.ph.i.i ], [ %i.au, %bb.d ]
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %i.ao = lshr i64 %i.am, 6
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val49.val.i.i, i64 %i.ao
  %i.aq = shl nuw i64 1, %i.am
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !78
  %i.as = and i64 %i.ar, %i.aq
  %.not55.i.i = icmp eq i64 %i.as, 0
  %i.at = select i1 %.not55.i.i, i8 0, i8 %.03659.i.i
  %i.au = or i8 %i.at, %.04058.i.i                ; 2 uses
  %i.av = shl i8 %.03659.i.i, 1                   ; 2 uses
  %i.aw = add nsw i64 %.03560.i.i, -1             ; 2 uses
  %i.ax = icmp ne i8 %i.av, 0
  %i.ay = icmp samesign ugt i64 %.03560.i.i, 1
  %i.az = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %i.az, label %bb.d, label %._crit_edge.i.i, !llvm.loop !263

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.0 = phi i64 [ 0, %bb.c ], [ %i.an, %bb.d ]
  %.040.lcssa.i.i = phi i8 [ %i.ai, %bb.c ], [ %i.au, %bb.d ]
  %.035.lcssa.i.i = phi i64 [ %i.k, %bb.c ], [ %i.aw, %bb.d ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store i8 %.040.lcssa.i.i, ptr %i.ad, align 1, !tbaa !40
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %bb.b
  %.1 = phi i64 [ 0, %bb.b ], [ %.0, %._crit_edge.i.i ] ; 2 uses
  %.038.i.i = phi ptr [ %i.ad, %bb.b ], [ %i.ba, %._crit_edge.i.i ] ; 2 uses
  %.1.i.i = phi i64 [ %i.k, %bb.b ], [ %.035.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.bb = icmp sgt i64 %.1.i.i, 7
  br i1 %i.bb, label %.preheader57.lr.ph.i.i, label %._crit_edge64.i.i

.preheader57.lr.ph.i.i:                           ; preds = %bb.e
  %i.bc = lshr i64 %.1.i.i, 3
  br label %.preheader57.i.i

.preheader57.i.i:                                 ; preds = %.preheader57.i.i, %.preheader57.lr.ph.i.i
  %.3 = phi i64 [ %.1, %.preheader57.lr.ph.i.i ], [ %i.di, %.preheader57.i.i ] ; 11 uses
  %.in.i.i = phi i64 [ %i.bc, %.preheader57.lr.ph.i.i ], [ %i.dr, %.preheader57.i.i ] ; 2 uses
  %.13963.i.i = phi ptr [ %.038.i.i, %.preheader57.lr.ph.i.i ], [ %i.em, %.preheader57.i.i ] ; 2 uses
  %.val47.val.i.i = load ptr, ptr %2, align 8, !tbaa !114 ; 8 uses
  %i.bd = add nuw nsw i64 %.3, 1                  ; 3 uses
  %.udiv2836 = lshr i64 %.3, 6
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.val47.val.i.i, i64 %.udiv2836
  %i.bf = and i64 %.3, -9223372036854775745
  %i.bg = icmp ugt i64 %i.bf, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i51.i.i = select i1 %i.bg, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i52.i.i = getelementptr inbounds i8, ptr %i.be, i64 %storemerge.idx.i.i.i.i.i.i51.i.i
  %i.bh = and i64 %.3, 63
  %i.bi = load i64, ptr %storemerge.i.i.i.i.i.i52.i.i, align 8, !tbaa !78
  %i.bj = lshr i64 %i.bi, %i.bh
  %i.bk = trunc i64 %i.bj to i8
  %i.bl = and i8 %i.bk, 1
  %i.bm = add nuw nsw i64 %.3, 2                  ; 3 uses
  %.udiv37 = lshr i64 %i.bd, 6
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.val47.val.i.i, i64 %.udiv37
  %i.bo = and i64 %i.bd, -9223372036854775745
  %i.bp = icmp ugt i64 %i.bo, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i51.1.i.i = select i1 %i.bp, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i52.1.i.i = getelementptr inbounds i8, ptr %i.bn, i64 %storemerge.idx.i.i.i.i.i.i51.1.i.i
  %i.bq = and i64 %i.bd, 63
  %i.br = load i64, ptr %storemerge.i.i.i.i.i.i52.1.i.i, align 8, !tbaa !78
  %i.bs = lshr i64 %i.br, %i.bq
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = add nuw nsw i64 %.3, 3                  ; 3 uses
  %.udiv2938 = lshr i64 %i.bm, 6
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.val47.val.i.i, i64 %.udiv2938
  %i.bw = and i64 %i.bm, -9223372036854775745
  %i.bx = icmp ugt i64 %i.bw, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i51.2.i.i = select i1 %i.bx, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i52.2.i.i = getelementptr inbounds i8, ptr %i.bv, i64 %storemerge.idx.i.i.i.i.i.i51.2.i.i
  %i.by = and i64 %i.bm, 63
  %i.bz = load i64, ptr %storemerge.i.i.i.i.i.i52.2.i.i, align 8, !tbaa !78
  %i.ca = lshr i64 %i.bz, %i.by
  %i.cb = trunc i64 %i.ca to i8
  %i.cc = add nuw nsw i64 %.3, 4                  ; 3 uses
  %.udiv3039 = lshr i64 %i.bu, 6
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.val47.val.i.i, i64 %.udiv3039
  %i.ce = and i64 %i.bu, -9223372036854775745
  %i.cf = icmp ugt i64 %i.ce, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i51.3.i.i = select i1 %i.cf, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i52.3.i.i = getelementptr inbounds i8, ptr %i.cd, i64 %storemerge.idx.i.i.i.i.i.i51.3.i.i
  %i.cg = and i64 %i.bu, 63
  %i.ch = load i64, ptr %storemerge.i.i.i.i.i.i52.3.i.i, align 8, !tbaa !78
  %i.ci = lshr i64 %i.ch, %i.cg
  %i.cj = trunc i64 %i.ci to i8
  %i.ck = add nuw nsw i64 %.3, 5                  ; 3 uses
  %4 = sdiv i64 %i.cc, 64
  %i.cl = getelementptr inbounds [8 x i8], ptr %.val47.val.i.i, i64 %4
  %i.cm = and i64 %i.cc, -9223372036854775745
  %i.cn = icmp ugt i64 %i.cm, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i51.4.i.i = select i1 %i.cn, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i52.4.i.i = getelementptr inbounds i8, ptr %i.cl, i64 %storemerge.idx.i.i.i.i.i.i51.4.i.i
  %i.co = and i64 %i.cc, 63
  %i.cp = load i64, ptr %storemerge.i.i.i.i.i.i52.4.i.i, align 8, !tbaa !78
  %i.cq = lshr i64 %i.cp, %i.co
  %i.cr = trunc i64 %i.cq to i8
  %i.cs = add nuw nsw i64 %.3, 6                  ; 3 uses
  %5 = sdiv i64 %i.ck, 64
  %i.ct = getelementptr inbounds [8 x i8], ptr %.val47.val.i.i, i64 %5
  %i.cu = and i64 %i.ck, -9223372036854775745
  %i.cv = icmp ugt i64 %i.cu, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i51.5.i.i = select i1 %i.cv, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i52.5.i.i = getelementptr inbounds i8, ptr %i.ct, i64 %storemerge.idx.i.i.i.i.i.i51.5.i.i
  %i.cw = and i64 %i.ck, 63
  %i.cx = load i64, ptr %storemerge.i.i.i.i.i.i52.5.i.i, align 8, !tbaa !78
  %i.cy = lshr i64 %i.cx, %i.cw
  %i.cz = trunc i64 %i.cy to i8
  %i.da = add nuw nsw i64 %.3, 7                  ; 3 uses
  %6 = sdiv i64 %i.cs, 64
  %i.db = getelementptr inbounds [8 x i8], ptr %.val47.val.i.i, i64 %6
  %i.dc = and i64 %i.cs, -9223372036854775745
  %i.dd = icmp ugt i64 %i.dc, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i51.6.i.i = select i1 %i.dd, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i52.6.i.i = getelementptr inbounds i8, ptr %i.db, i64 %storemerge.idx.i.i.i.i.i.i51.6.i.i
  %i.de = and i64 %i.cs, 63
  %i.df = load i64, ptr %storemerge.i.i.i.i.i.i52.6.i.i, align 8, !tbaa !78
  %i.dg = lshr i64 %i.df, %i.de
  %i.dh = trunc i64 %i.dg to i8
  %i.di = add nuw nsw i64 %.3, 8                  ; 2 uses
  %i.dj = sdiv i64 %i.da, 64
  %i.dk = getelementptr inbounds [8 x i8], ptr %.val47.val.i.i, i64 %i.dj
  %i.dl = and i64 %i.da, -9223372036854775745
  %i.dm = icmp ugt i64 %i.dl, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i51.7.i.i = select i1 %i.dm, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i52.7.i.i = getelementptr inbounds i8, ptr %i.dk, i64 %storemerge.idx.i.i.i.i.i.i51.7.i.i
  %i.dn = and i64 %i.da, 63
  %i.do = load i64, ptr %storemerge.i.i.i.i.i.i52.7.i.i, align 8, !tbaa !78
  %i.dp = lshr i64 %i.do, %i.dn
  %i.dq = trunc i64 %i.dp to i8
  %i.dr = add nsw i64 %.in.i.i, -1
  %i.ds = shl i8 %i.bt, 1
  %i.dt = and i8 %i.ds, 2
  %i.du = or disjoint i8 %i.dt, %i.bl
  %i.dv = shl i8 %i.cb, 2
  %i.dw = and i8 %i.dv, 4
  %i.dx = or disjoint i8 %i.du, %i.dw
  %i.dy = shl i8 %i.cj, 3
  %i.dz = and i8 %i.dy, 8
  %i.ea = or disjoint i8 %i.dx, %i.dz
  %i.eb = shl i8 %i.cr, 4
  %i.ec = and i8 %i.eb, 16
  %i.ed = or disjoint i8 %i.ea, %i.ec
  %i.ee = shl i8 %i.cz, 5
  %i.ef = and i8 %i.ee, 32
  %i.eg = or disjoint i8 %i.ed, %i.ef
  %i.eh = shl i8 %i.dh, 6
  %i.ei = and i8 %i.eh, 64
  %i.ej = or i8 %i.eg, %i.ei
  %i.ek = shl i8 %i.dq, 7
  %i.el = or i8 %i.ej, %i.ek
  %i.em = getelementptr inbounds nuw i8, ptr %.13963.i.i, i64 1 ; 2 uses
  store i8 %i.el, ptr %.13963.i.i, align 1, !tbaa !40
  %i.en = icmp samesign ugt i64 %.in.i.i, 1
  br i1 %i.en, label %.preheader57.i.i, label %._crit_edge64.i.i, !llvm.loop !264

._crit_edge64.i.i:                                ; preds = %.preheader57.i.i, %bb.e
  %.2 = phi i64 [ %.1, %bb.e ], [ %i.di, %.preheader57.i.i ]
  %.139.lcssa.i.i = phi ptr [ %.038.i.i, %bb.e ], [ %i.em, %.preheader57.i.i ]
  %i.eo = srem i64 %.1.i.i, 8                     ; 3 uses
  %.not45.i.i = icmp eq i64 %i.eo, 0
  br i1 %.not45.i.i, label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEEE3$_0EEvPhllOT_.exit.i", label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge64.i.i
  %i.ep = icmp sgt i64 %i.eo, 0
  br i1 %i.ep, label %.lr.ph69.i.i, label %._crit_edge70.i.i

.lr.ph69.i.i:                                     ; preds = %.preheader.i.i
  %.val.val.i.i = load ptr, ptr %2, align 8, !tbaa !114
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph69.i.i
  %i.eq = phi i64 [ %.2, %.lr.ph69.i.i ], [ %i.es, %bb.f ] ; 4 uses
  %.068.i.i = phi i64 [ %i.eo, %.lr.ph69.i.i ], [ %i.er, %bb.f ] ; 2 uses
  %.13767.i.i = phi i8 [ 1, %.lr.ph69.i.i ], [ %i.fd, %bb.f ] ; 2 uses
  %.14166.i.i = phi i8 [ 0, %.lr.ph69.i.i ], [ %i.fc, %bb.f ]
  %i.er = add nsw i64 %.068.i.i, -1
  %i.es = add nsw i64 %i.eq, 1
  %i.et = sdiv i64 %i.eq, 64
  %i.eu = getelementptr inbounds [8 x i8], ptr %.val.val.i.i, i64 %i.et
  %i.ev = and i64 %i.eq, -9223372036854775745
  %i.ew = icmp ugt i64 %i.ev, -9223372036854775808
  %storemerge.idx.i.i.i.i.i.i53.i.i = select i1 %i.ew, i64 -8, i64 0
  %storemerge.i.i.i.i.i.i54.i.i = getelementptr inbounds i8, ptr %i.eu, i64 %storemerge.idx.i.i.i.i.i.i53.i.i
  %i.ex = and i64 %i.eq, 63
  %i.ey = shl nuw i64 1, %i.ex
  %i.ez = load i64, ptr %storemerge.i.i.i.i.i.i54.i.i, align 8, !tbaa !78
  %i.fa = and i64 %i.ez, %i.ey
  %.not56.i.i = icmp eq i64 %i.fa, 0
  %i.fb = select i1 %.not56.i.i, i8 0, i8 %.13767.i.i
  %i.fc = or i8 %i.fb, %.14166.i.i                ; 2 uses
  %i.fd = shl nuw i8 %.13767.i.i, 1
  %i.fe = icmp samesign ugt i64 %.068.i.i, 1
  br i1 %i.fe, label %bb.f, label %._crit_edge70.i.i, !llvm.loop !265

._crit_edge70.i.i:                                ; preds = %bb.f, %.preheader.i.i
  %.141.lcssa.i.i = phi i8 [ 0, %.preheader.i.i ], [ %i.fc, %bb.f ]
  store i8 %.141.lcssa.i.i, ptr %.139.lcssa.i.i, align 1, !tbaa !40
  br label %"_ZN5arrow8internal20GenerateBitsUnrolledIZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEEE3$_0EEvPhllOT_.exit.i"

"_ZN5arrow8internal20GenerateBitsUnrolledIZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEEE3$_0EEvPhllOT_.exit.i": ; preds = %._crit_edge70.i.i, %._crit_edge64.i.i
  %i.ff = load i64, ptr %i.aa, align 8, !tbaa !98
  %i.fg = add nsw i64 %i.ff, %i.k
  store i64 %i.fg, ptr %i.aa, align 8, !tbaa !98
  br label %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEEE3$_0EEvlOT0_.exit"

"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEEE3$_0EEvlOT0_.exit": ; preds = %_ZN5arrow6StatusD2Ev.exit15, %"_ZN5arrow8internal20GenerateBitsUnrolledIZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEEE3$_0EEvPhllOT_.exit.i"
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %i.k)
  store ptr null, ptr %0, align 8, !tbaa !69, !alias.scope !269
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %"_ZN5arrow18TypedBufferBuilderIbvE12UnsafeAppendILb0EZNS_14BooleanBuilder12AppendValuesERKSt6vectorIbSaIbEEE3$_0EEvlOT0_.exit"
  ret void
}

declare void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow14BooleanBuilder12AppendValuesElb(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !97, !noalias !274 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !64, !noalias !274
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noalias !274
  %i.f = tail call noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(144) %1), !noalias !274, !inline_history !7
  %i.g = add nsw i64 %i.f, %2                     ; 2 uses
  %.not.i = icmp sgt i64 %i.g, %i.b
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6StatusD2Ev.exit13.thread

_ZN5arrow6StatusD2Ev.exit13.thread:               ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.b

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.a
  %i.h = shl nsw i64 %i.b, 1
  %.sroa.speculated.i.i = tail call noundef i64 @llvm.smax.i64(i64 %i.g, i64 %i.h)
  %i.i = load ptr, ptr %1, align 8, !tbaa !64, !noalias !274
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !noalias !274
  call void %i.k(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %.sroa.speculated.i.i), !inline_history !7
  %.pr = load ptr, ptr %4, align 8, !tbaa !69     ; 2 uses
  store ptr %.pr, ptr %0, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.l = icmp eq ptr %.pr, null
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit13.thread, %_ZN5arrow6StatusD2Ev.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !73
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 200 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !98
  call void @_ZN5arrow8bit_util9SetBitsToEPhllb(ptr noundef %i.n, i64 noundef %i.p, i64 noundef %2, i1 noundef zeroext %3)
  %i.q = select i1 %3, i64 0, i64 %2
  %i.r = load <2 x i64>, ptr %i.o, align 8, !tbaa !78
  %i.s = insertelement <2 x i64> poison, i64 %2, i64 0
  %i.t = insertelement <2 x i64> %i.s, i64 %i.q, i64 1
  %i.u = add nsw <2 x i64> %i.r, %i.t
  store <2 x i64> %i.u, ptr %i.o, align 8, !tbaa !78
  call void @_ZN5arrow12ArrayBuilder16UnsafeSetNotNullEl(ptr noundef nonnull align 8 dereferenceable(144) %1, i64 noundef %2)
  store ptr null, ptr %0, align 8, !tbaa !69, !alias.scope !275
  br label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow12ArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN5arrow12ArrayBuilderE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !278  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !279  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow12ArrayBuilderEES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.v, %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.h = load atomic i64, ptr %i.g acquire, align 8 ; 2 uses
  %i.i = icmp eq i64 %i.h, 4294967297
  %i.j = trunc i64 %i.h to i32                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.g, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.k, align 4, !tbaa !62
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #20, !inline_history !276
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !64
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.f) #20, !inline_history !276
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow12ArrayBuilderEEEvPT_.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !40
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
end_hunk_0
