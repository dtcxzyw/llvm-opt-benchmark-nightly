inline.NumInlined: 33059
inline.NumDeleted: 6234
begin_hunk_0_@_ZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchE:bb.a
  %60 = alloca %"class.folly::Range", align 8     ; 6 uses
  %61 = alloca %"class.folly::Range", align 8     ; 6 uses
  %62 = alloca %"struct.fmt::v11::detail::format_arg_store.1794", align 16 ; 4 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i16, align 2                      ; 4 uses
  %i.f = alloca i16, align 2                      ; 4 uses
  %63 = alloca %class.anon.1717, align 8          ; 7 uses
  %64 = alloca %"struct.fmt::v11::detail::format_arg_store.352", align 16 ; 5 uses
  %65 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %66 = alloca %"class.std::function.462", align 8 ; 12 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %68 = alloca %"struct.facebook::velox::StringView", align 8 ; 11 uses
  %69 = alloca %class.anon.83, align 8            ; 6 uses
  %i.g = alloca ptr, align 8                      ; 9 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.yl, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.eis, %bb.yl ] ; 52 uses
  %i.h = load ptr, ptr %.tr, align 8, !tbaa !35   ; 29 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 28
  %i.j = load i32, ptr %i.i, align 4, !tbaa !38
  switch i32 %i.j, label %bb.ym [
    i32 3, label %bb.b
    i32 1, label %bb.di
    i32 2, label %bb.kk
    i32 0, label %bb.np
    i32 5, label %bb.te
    i32 8, label %bb.wj
    i32 6, label %bb.xj
    i32 9, label %bb.yl
  ]

bb.b:                                             ; preds = %tailrecurse
  store ptr %2, ptr %i.g, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.l = load i8, ptr %i.k, align 8, !tbaa !54
  switch i8 %i.l, label %bb.dh [
    i8 33, label %bb.c
    i8 35, label %bb.au
  ]

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !55
  %i.n = icmp eq ptr %i.m, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorINS0_12UnknownValueEEE, i64 16)
  %i.o = select i1 %i.n, ptr %i.h, ptr null
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !57   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !83
  %.not5.i.i = icmp eq ptr %i.s, null
  br i1 %.not5.i.i, label %bb.d, label %.preheader9.i.i

.preheader9.i.i:                                  ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !84   ; 2 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !87     ; 2 uses
  %.not25.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not25.i.i, label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit", label %.lr.ph17.i.i

.lr.ph17.i.i:                                     ; preds = %.preheader9.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 9 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 232 ; 2 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !84 ; 2 uses
  %.not21.i.i = icmp eq ptr %i.ag, %i.ai
  br i1 %.not21.i.i, label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit", label %.lr.ph24.i.i

.lr.ph24.i.i:                                     ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 68
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 280 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 232
  br label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendINS0_12UnknownValueEEEvN5folly5RangeIPKT_EE.exit.i.i, %.lr.ph24.i.i
  %.05022.i.i = phi ptr [ %i.ag, %.lr.ph24.i.i ], [ %i.bn, %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendINS0_12UnknownValueEEEvN5folly5RangeIPKT_EE.exit.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.05022.i.i, i64 4 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !88 ; 3 uses
  %i.aq = load i32, ptr %i.aj, align 4, !tbaa !90
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.as = sext i32 %i.ap to i64
  tail call void @_ZN8facebook5velox16ByteOutputStream10appendBoolEbl(ptr noundef nonnull align 8 dereferenceable(64) %i.ak, i1 noundef zeroext false, i64 noundef %i.as)
  %.pre42.i.i = load i32, ptr %i.ao, align 4, !tbaa !88
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i.i

_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i.i: ; preds = %bb.f, %bb.e
  %i.at = phi i32 [ %i.ap, %bb.e ], [ %.pre42.i.i, %bb.f ]
  %i.au = load i32, ptr %i.al, align 8, !tbaa !113
  %i.av = add nsw i32 %i.au, %i.ap
  store i32 %i.av, ptr %i.al, align 8, !tbaa !113
  %i.aw = load i32, ptr %.05022.i.i, align 4, !tbaa !114
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds i8, ptr %i.q, i64 %i.ax ; 2 uses
  %i.az = sext i32 %i.at to i64                   ; 4 uses
  %i.ba = load ptr, ptr %i.am, align 8, !tbaa !115 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !116 ; 2 uses
  %i.bd = add i64 %i.bc, %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !117
  %i.bg = icmp ugt i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i.i
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.an, i64 %i.az, ptr %i.ay)
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendINS0_12UnknownValueEEEvN5folly5RangeIPKT_EE.exit.i.i

bb.h:                                             ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i.i
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !118
  %i.bi = getelementptr inbounds i8, ptr %i.bh, i64 %i.bc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bi, ptr align 1 %i.ay, i64 %i.az, i1 false)
  %i.bj = load ptr, ptr %i.am, align 8, !tbaa !115
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !116
  %i.bm = add i64 %i.bl, %i.az
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendINS0_12UnknownValueEEEvN5folly5RangeIPKT_EE.exit.i.i

_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendINS0_12UnknownValueEEEvN5folly5RangeIPKT_EE.exit.i.i: ; preds = %bb.h, %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %.05022.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, %i.ai
  br i1 %.not.i.i, label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit", label %bb.e

._crit_edge18.i.i:                                ; preds = %._crit_edge.i.i
  %.not58.i.i = icmp eq i32 %.154.lcssa.i.i, -1
  br i1 %.not58.i.i, label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit", label %bb.ar

bb.i:                                             ; preds = %._crit_edge.i.i, %.lr.ph17.i.i
  %i.bo = phi ptr [ %i.v, %.lr.ph17.i.i ], [ %i.bw, %._crit_edge.i.i ] ; 2 uses
  %i.bp = phi ptr [ %i.u, %.lr.ph17.i.i ], [ %i.bx, %._crit_edge.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph17.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 2 uses
  %.05215.i.i = phi i32 [ -1, %.lr.ph17.i.i ], [ %.1.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %.05314.i.i = phi i32 [ -1, %.lr.ph17.i.i ], [ %.154.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i.i ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !114 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !88 ; 2 uses
  %i.bu = add nsw i32 %i.bt, %i.br
  %i.bv = icmp sgt i32 %i.bt, 0
  br i1 %i.bv, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.loopexit.i.i:                         ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i.i
  %.pre40.i.i = load ptr, ptr %i.t, align 8, !tbaa !84
  %.pre41.i.i = load ptr, ptr %1, align 8, !tbaa !87
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.i
  %i.bw = phi ptr [ %i.bo, %bb.i ], [ %.pre41.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.bx = phi ptr [ %i.bp, %bb.i ], [ %.pre40.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %.154.lcssa.i.i = phi i32 [ %.05314.i.i, %bb.i ], [ %.255.i.i, %._crit_edge.loopexit.i.i ] ; 4 uses
  %.1.lcssa.i.i = phi i32 [ %.05215.i.i, %bb.i ], [ %.2.i.i, %._crit_edge.loopexit.i.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bw to i64
  %i.ca = sub i64 %i.by, %i.bz
  %i.cb = ashr exact i64 %i.ca, 3
  %i.cc = icmp ugt i64 %i.cb, %indvars.iv.next.i.i
  br i1 %i.cc, label %bb.i, label %._crit_edge18.i.i, !llvm.loop !119

.lr.ph.i.i:                                       ; preds = %bb.i, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i.i
  %.012.i.i = phi i32 [ %i.mg, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i.i ], [ %i.br, %bb.i ] ; 10 uses
  %.111.i.i = phi i32 [ %.2.i.i, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i.i ], [ %.05215.i.i, %bb.i ] ; 4 uses
  %.15410.i.i = phi i32 [ %.255.i.i, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i.i ], [ %.05314.i.i, %bb.i ] ; 7 uses
  %i.cd = load ptr, ptr %i.r, align 8, !tbaa !83  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i.i, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i

.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i.i: ; preds = %.lr.ph.i.i
  %.pre33.i.i = load i32, ptr %i.x, align 4, !tbaa !90
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ce = zext i32 %.012.i.i to i64               ; 2 uses
  %i.cf = lshr i64 %i.ce, 6
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cf
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !121
  %i.ci = and i64 %i.ce, 63
  %i.cj = shl nuw i64 1, %i.ci
  %i.ck = and i64 %i.ch, %i.cj
  %.not.i.i.i.i = icmp eq i64 %i.ck, 0
  %.pre34.i.i = load i32, ptr %i.x, align 4       ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.j, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i.i

bb.j:                                             ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i.i
  %i.cl = load i32, ptr %i.w, align 8, !tbaa !113 ; 3 uses
  %.not.i59.i.i = icmp ne i32 %i.cl, 0
  %i.cm = icmp eq i32 %.pre34.i.i, 0
  %or.cond.i.i.i = select i1 %.not.i59.i.i, i1 %i.cm, i1 false
  br i1 %or.cond.i.i.i, label %bb.k, label %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i.i

._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i.i: ; preds = %bb.j
  %.pre.i.i = load ptr, ptr %i.z, align 8, !tbaa !115 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 16
  %.pre27.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i.i

bb.k:                                             ; preds = %bb.j
  %i.cn = sext i32 %i.cl to i64                   ; 3 uses
  %i.co = icmp eq i32 %i.cl, 1
  br i1 %i.co, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cp = load ptr, ptr %i.z, align 8, !tbaa !115 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !117
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !116 ; 3 uses
  %i.cu = icmp sgt i64 %i.cr, %i.ct
  br i1 %i.cu, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cv = load ptr, ptr %i.cp, align 8, !tbaa !118
  %i.cw = lshr i64 %i.ct, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !34
  %i.cz = and i64 %i.ct, 7
  %i.da = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !34
  %i.dc = and i8 %i.db, %i.cy
  store i8 %i.dc, ptr %i.cx, align 1, !tbaa !34
  %i.dd = load ptr, ptr %i.z, align 8, !tbaa !115 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !116
  %i.dg = add nsw i64 %i.df, 1                    ; 2 uses
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i.i

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.dh = add nsw i64 %i.cn, 7
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %bb.n
  %.014.i64.i.i = phi i64 [ 0, %bb.n ], [ %i.ff, %bb.u ] ; 2 uses
  %i.di = sub nsw i64 %i.cn, %.014.i64.i.i
  %i.dj = load ptr, ptr %i.z, align 8, !tbaa !115 ; 4 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !117
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 3 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !116 ; 3 uses
  %i.do = sub nsw i64 %i.dl, %i.dn
  %.sroa.speculated.i65.i.i = tail call i64 @llvm.smin.i64(i64 %i.do, i64 %i.di) ; 3 uses
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !118 ; 3 uses
  %i.dq = trunc i64 %i.dn to i32                  ; 6 uses
  %i.dr = add nsw i64 %.sroa.speculated.i65.i.i, %i.dn ; 3 uses
  %i.ds = trunc i64 %i.dr to i32                  ; 4 uses
  %.not.i.i.i66.i.i = icmp slt i32 %i.dq, %i.ds
  br i1 %.not.i.i.i66.i.i, label %bb.p, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i.i

bb.p:                                             ; preds = %bb.o
  %i.dt = add i32 %i.dq, 63                       ; 2 uses
  %i.du = srem i32 %i.dt, 64
  %i.dv = sub nsw i32 %i.dt, %i.du                ; 6 uses
  %i.dw = and i32 %i.ds, -64                      ; 4 uses
  %i.dx = icmp slt i32 %i.dw, %i.dv
  br i1 %i.dx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dy = and i64 %i.dr, 63
  %notmask.i.i.i.i79.i.i = shl nsw i64 -1, %i.dy
  %i.dz = sub nsw i32 %i.dv, %i.dq                ; 2 uses
  %i.ea = zext nneg i32 %i.dz to i64
  %notmask.i.i.i.i.i80.i.i = shl nsw i64 -1, %i.ea
  %i.eb = xor i64 %notmask.i.i.i.i.i80.i.i, -1
  %i.ec = sub nsw i32 64, %i.dz
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = shl i64 %i.eb, %i.ed
  %.not6.i.i = xor i64 %i.ee, -1
  %i.ef = or i64 %notmask.i.i.i.i79.i.i, %.not6.i.i
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i.i

bb.r:                                             ; preds = %bb.p
  %.not32.i.i.i69.i.i = icmp eq i32 %i.dv, %i.dq
  br i1 %.not32.i.i.i69.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eg = sdiv i32 %i.dq, 64
  %i.eh = sub nsw i32 %i.dv, %i.dq                ; 2 uses
  %i.ei = zext nneg i32 %i.eh to i64
  %notmask.i.i35.i.i.i70.i.i = shl nsw i64 -1, %i.ei
  %i.ej = xor i64 %notmask.i.i35.i.i.i70.i.i, -1
  %i.ek = sub nsw i32 64, %i.eh
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = shl i64 %i.ej, %i.el
  %i.en = xor i64 %i.em, -1
  %i.eo = sext i32 %i.eg to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.eo ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !121
  %i.er = and i64 %i.eq, %i.en
  store i64 %i.er, ptr %i.ep, align 8, !tbaa !121
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i.i: ; preds = %bb.s, %bb.r
  %i.es = add nsw i32 %i.dv, 64                   ; 2 uses
  %.not3347.i.i.i72.i.i = icmp sgt i32 %i.es, %i.dw
  br i1 %.not3347.i.i.i72.i.i, label %._crit_edge.i.i.i76.i.i, label %.lr.ph.i.i.i73.i.i

._crit_edge.i.i.i76.i.i:                          ; preds = %.lr.ph.i.i.i73.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i.i
  %.not34.i.i.i77.i.i = icmp eq i32 %i.dw, %i.ds
  br i1 %.not34.i.i.i77.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i.i, label %bb.t

.lr.ph.i.i.i73.i.i:                               ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i.i, %.lr.ph.i.i.i73.i.i
  %i.et = phi i32 [ %i.ex, %.lr.ph.i.i.i73.i.i ], [ %i.es, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i.i ] ; 2 uses
  %.048.i.i.i74.i.i = phi i32 [ %i.et, %.lr.ph.i.i.i73.i.i ], [ %i.dv, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i.i ]
  %i.eu = sdiv i32 %.048.i.i.i74.i.i, 64
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.ev
  store i64 0, ptr %i.ew, align 8, !tbaa !121
  %i.ex = add nsw i32 %i.et, 64                   ; 2 uses
  %.not33.i.i.i75.i.i = icmp sgt i32 %i.ex, %i.dw
  br i1 %.not33.i.i.i75.i.i, label %._crit_edge.i.i.i76.i.i, label %.lr.ph.i.i.i73.i.i, !llvm.loop !122

bb.t:                                             ; preds = %._crit_edge.i.i.i76.i.i
  %i.ey = and i64 %i.dr, 63
  %notmask.i37.i.i.i78.i.i = shl nsw i64 -1, %i.ey
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i.i: ; preds = %bb.t, %bb.q
  %notmask.i37.i.i.i78.sink.i.i = phi i64 [ %notmask.i37.i.i.i78.i.i, %bb.t ], [ %i.ef, %bb.q ]
  %.sink.i.i = ashr i32 %i.ds, 6
  %i.ez = sext i32 %.sink.i.i to i64
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.ez ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !121
  %i.fc = and i64 %i.fb, %notmask.i37.i.i.i78.sink.i.i
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !121
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i.i, %._crit_edge.i.i.i76.i.i, %bb.o
  %i.fd = load i64, ptr %i.dm, align 8, !tbaa !116
  %i.fe = add nsw i64 %i.fd, %.sroa.speculated.i65.i.i ; 2 uses
  store i64 %i.fe, ptr %i.dm, align 8, !tbaa !116
  %i.ff = add nsw i64 %.sroa.speculated.i65.i.i, %.014.i64.i.i ; 3 uses
  %.not.i68.i.i = icmp eq i64 %i.ff, %i.cn
  br i1 %.not.i68.i.i, label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i.i, label %bb.u

bb.u:                                             ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i.i
  %i.fg = sub i64 %i.dh, %i.ff
  %i.fh = lshr i64 %i.fg, 3
  tail call void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 noundef %i.fh)
  br label %bb.o, !llvm.loop !123

_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i.i, %bb.m, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i.i
  %i.fi = phi i64 [ %.pre27.i.i, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i.i ], [ %i.dg, %bb.m ], [ %i.fe, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i.i ] ; 4 uses
  %i.fj = phi ptr [ %.pre.i.i, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i.i ], [ %i.dd, %bb.m ], [ %i.dj, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i.i ] ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !117 ; 2 uses
  %i.fm = icmp sgt i64 %i.fl, %i.fi
  br i1 %i.fm, label %bb.v, label %.preheader8.i.i

bb.v:                                             ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i.i
  %i.fn = load ptr, ptr %i.fj, align 8, !tbaa !118
  %i.fo = lshr i64 %i.fi, 3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fo ; 2 uses
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !34
  %i.fr = trunc i64 %i.fi to i8
  %i.fs = and i8 %i.fr, 7
  %i.ft = shl nuw i8 1, %i.fs
  %i.fu = or i8 %i.fq, %i.ft
  store i8 %i.fu, ptr %i.fp, align 1, !tbaa !34
  %i.fv = load ptr, ptr %i.z, align 8, !tbaa !115
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !116
  %i.fy = add nsw i64 %i.fx, 1
  store i64 %i.fy, ptr %i.fw, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i.i

.preheader8.i.i:                                  ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i.i, %bb.ab
  %i.fz = phi i64 [ %.pre32.i.i, %bb.ab ], [ %i.fi, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i.i ] ; 3 uses
  %i.ga = phi i64 [ %.pre30.i.i, %bb.ab ], [ %i.fl, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i.i ]
  %i.gb = phi ptr [ %.pre28.i.i, %bb.ab ], [ %i.fj, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i.i ] ; 2 uses
  %.014.i.i.i = phi i64 [ %i.hw, %bb.ab ], [ 0, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i.i ] ; 2 uses
  %i.gc = sub nsw i64 1, %.014.i.i.i
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 2 uses
  %i.ge = sub nsw i64 %i.ga, %i.fz
  %.sroa.speculated.i.i.i = tail call i64 @llvm.smin.i64(i64 %i.ge, i64 %i.gc) ; 3 uses
  %i.gf = load ptr, ptr %i.gb, align 8, !tbaa !118 ; 3 uses
  %i.gg = trunc i64 %i.fz to i32                  ; 6 uses
  %i.gh = add nsw i64 %.sroa.speculated.i.i.i, %i.fz ; 3 uses
  %i.gi = trunc i64 %i.gh to i32                  ; 4 uses
  %.not.i.i.i.i.i = icmp slt i32 %i.gg, %i.gi
  br i1 %.not.i.i.i.i.i, label %bb.w, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i.i

end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchE:bb.a
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16 ; 2 uses
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !116
  %i.my = add i64 %i.mx, %i.ml
  store i64 %i.my, ptr %i.mw, align 8, !tbaa !116
  br label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit"

bb.au:                                            ; preds = %bb.b
  %i.mz = load ptr, ptr %i.h, align 8, !tbaa !55
  %.not.i2.i = icmp eq ptr %i.mz, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorISt10shared_ptrIvEEE, i64 16)
  br i1 %.not.i2.i, label %bb.aw, label %bb.av, !prof !10

bb.av:                                            ; preds = %bb.au
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE35EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamEE18veloxCheckFailArgs, ptr noundef nonnull @.str.159) #48
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.na = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !11, !noalias !127, !nonnull !9, !noundef !9
  %i.nc = tail call ptr @__dynamic_cast(ptr nonnull %i.nb, ptr nonnull @_ZTIN8facebook5velox4TypeE, ptr nonnull @_ZTIN8facebook5velox10OpaqueTypeE, i64 0) #36, !noalias !127 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nc) ]
  %i.nd = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !130, !noalias !127 ; 16 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ne, null     ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZSt20dynamic_pointer_castIKN8facebook5velox10OpaqueTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 3 uses
  %i.ng = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34, !noalias !127
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ng, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.nh = load i32, ptr %i.nf, align 4, !tbaa !3, !noalias !127
  %i.ni = add nsw i32 %i.nh, 1
  store i32 %i.ni, ptr %i.nf, align 4, !tbaa !3, !noalias !127
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox10OpaqueTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i.i

bb.az:                                            ; preds = %bb.ax
  %i.nj = atomicrmw volatile add ptr %i.nf, i32 1 acq_rel, align 4, !noalias !127 ; 0 uses
  br label %_ZSt20dynamic_pointer_castIKN8facebook5velox10OpaqueTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i.i

_ZSt20dynamic_pointer_castIKN8facebook5velox10OpaqueTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i.i: ; preds = %bb.az, %bb.ay, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #36
  invoke void @_ZNK8facebook5velox10OpaqueType16getSerializeFuncB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::function.462") align 8 %66, ptr noundef nonnull align 8 dereferenceable(32) %i.nc)
          to label %bb.ba unwind label %bb.bj

bb.ba:                                            ; preds = %_ZSt20dynamic_pointer_castIKN8facebook5velox10OpaqueTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i.i
  %i.nk = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !131
  %i.nm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.nn = load ptr, ptr %i.nm, align 8, !tbaa !84 ; 2 uses
  %i.no = load ptr, ptr %1, align 8, !tbaa !87    ; 2 uses
  %.not33.i.i = icmp eq ptr %i.nn, %i.no
  br i1 %.not33.i.i, label %._crit_edge32.i.i, label %.lr.ph31.i.i

.lr.ph31.i.i:                                     ; preds = %bb.ba
  %i.np = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %2, i64 68 ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 152 ; 9 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 76
  %i.nv = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 5 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %2, i64 168 ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %66, i64 16 ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %66, i64 24
  %i.oa = getelementptr inbounds nuw i8, ptr %67, i64 8
  %i.ob = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.oc = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 4 uses
  %.4..4..4..4..4..4..4..sroa_idx1780 = getelementptr inbounds nuw i8, ptr %68, i64 4
  %.8..8..8..8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %68, i64 8
  %.4..4..4..4..4..4..4..sroa_idx1781 = getelementptr inbounds nuw i8, ptr %68, i64 4
  %.8..8..8..8..8..8..8..sroa_idx1782 = getelementptr inbounds nuw i8, ptr %68, i64 8
  %.4..4..4..4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %68, i64 4
  %.8..8..8..8..8..8..8..sroa_idx1783 = getelementptr inbounds nuw i8, ptr %68, i64 8
  br label %bb.bk

._crit_edge32.i.i:                                ; preds = %._crit_edge.i3.i, %bb.ba
  %i.od = getelementptr inbounds nuw i8, ptr %66, i64 16
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !141 ; 2 uses
  %.not.i.i4.i = icmp eq ptr %i.oe, null
  br i1 %.not.i.i4.i, label %_ZNSt14_Function_baseD2Ev.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %._crit_edge32.i.i
  %i.of = invoke noundef zeroext i1 %i.oe(ptr noundef nonnull align 8 dereferenceable(32) %66, ptr noundef nonnull align 8 dereferenceable(32) %66, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit.i.i unwind label %bb.bc ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  %i.og = landingpad { ptr, i32 }
          catch ptr null
  %i.oh = extractvalue { ptr, i32 } %i.og, 0
  call void @__clang_call_terminate(ptr %i.oh) #47
  unreachable

_ZNSt14_Function_baseD2Ev.exit.i.i:               ; preds = %bb.bb, %._crit_edge32.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %66) #36
  br i1 %.not.i.i.i.i.i.i, label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit", label %bb.bd

bb.bd:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit.i.i
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ne, i64 8 ; 4 uses
  %i.oj = load atomic i64, ptr %i.oi acquire, align 8 ; 2 uses
  %i.ok = icmp eq i64 %i.oj, 4294967297
  %i.ol = trunc i64 %i.oj to i32                  ; 2 uses
  br i1 %i.ok, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i32 0, ptr %i.oi, align 8, !tbaa !143
  %i.om = getelementptr inbounds nuw i8, ptr %i.ne, i64 12
  store i32 0, ptr %i.om, align 4, !tbaa !145
  %i.on = load ptr, ptr %i.ne, align 8, !tbaa !55
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 16
  %i.op = load ptr, ptr %i.oo, align 8
  call void %i.op(ptr noundef nonnull align 8 dereferenceable(16) %i.ne) #36, !inline_history !146
  %i.oq = load ptr, ptr %i.ne, align 8, !tbaa !55
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 24
  %i.os = load ptr, ptr %i.or, align 8
  call void %i.os(ptr noundef nonnull align 8 dereferenceable(16) %i.ne) #36, !inline_history !146
  br label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit"

bb.bf:                                            ; preds = %bb.bd
  %i.ot = load i8, ptr @__libc_single_threaded, align 1, !tbaa !34
  %.not.i.i.i.i6.i = icmp eq i8 %i.ot, 0
  br i1 %.not.i.i.i.i6.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ou = add nsw i32 %i.ol, -1
  store i32 %i.ou, ptr %i.oi, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.ov = atomicrmw volatile add ptr %i.oi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bh, %bb.bg
  %.0.i.i.i.i.i.i = phi i32 [ %i.ol, %bb.bg ], [ %i.ov, %bb.bh ]
  %i.ow = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.ow, label %bb.bi, label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit", !prof !147

bb.bi:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ne) #36
  br label %"_ZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEv.exit"

bb.bj:                                            ; preds = %_ZSt20dynamic_pointer_castIKN8facebook5velox10OpaqueTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E.exit.i.i
  %i.ox = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit51.i.i

bb.bk:                                            ; preds = %._crit_edge.i3.i, %.lr.ph31.i.i
  %i.oy = phi ptr [ %i.no, %.lr.ph31.i.i ], [ %i.pi, %._crit_edge.i3.i ] ; 2 uses
  %i.oz = phi ptr [ %i.nn, %.lr.ph31.i.i ], [ %i.pj, %._crit_edge.i3.i ]
  %indvars.iv36.i.i = phi i64 [ 0, %.lr.ph31.i.i ], [ %indvars.iv.next37.i.i, %._crit_edge.i3.i ] ; 2 uses
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %indvars.iv36.i.i ; 2 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !88 ; 2 uses
  %i.pd = icmp sgt i32 %i.pc, 0
  br i1 %i.pd, label %.lr.ph.preheader.i.i, label %._crit_edge.i3.i

.lr.ph.preheader.i.i:                             ; preds = %bb.bk
  %i.pe = load i32, ptr %i.pa, align 4, !tbaa !114 ; 2 uses
  %i.pf = add nsw i32 %i.pe, %i.pc
  %i.pg = sext i32 %i.pe to i64
  %i.ph = sext i32 %i.pf to i64
  br label %.lr.ph.i7.i

._crit_edge.loopexit.i13.i:                       ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i11.i
  %.pre47.i.i = load ptr, ptr %i.nm, align 8, !tbaa !84
  %.pre48.i.i = load ptr, ptr %1, align 8, !tbaa !87
  br label %._crit_edge.i3.i

._crit_edge.i3.i:                                 ; preds = %._crit_edge.loopexit.i13.i, %bb.bk
  %i.pi = phi ptr [ %.pre48.i.i, %._crit_edge.loopexit.i13.i ], [ %i.oy, %bb.bk ] ; 2 uses
  %i.pj = phi ptr [ %.pre47.i.i, %._crit_edge.loopexit.i13.i ], [ %i.oz, %bb.bk ] ; 2 uses
  %indvars.iv.next37.i.i = add nuw nsw i64 %indvars.iv36.i.i, 1 ; 2 uses
  %i.pk = ptrtoint ptr %i.pj to i64
  %i.pl = ptrtoint ptr %i.pi to i64
  %i.pm = sub i64 %i.pk, %i.pl
  %i.pn = ashr exact i64 %i.pm, 3
  %i.po = icmp ugt i64 %i.pn, %indvars.iv.next37.i.i
  br i1 %i.po, label %bb.bk, label %._crit_edge32.i.i, !llvm.loop !148

.lr.ph.i7.i:                                      ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i11.i, %.lr.ph.preheader.i.i
  %indvars.iv.i8.i = phi i64 [ %i.pg, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i12.i, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i11.i ] ; 4 uses
  %i.pp = load ptr, ptr %i.np, align 8, !tbaa !83 ; 2 uses
  %.not.i35.i.i = icmp eq ptr %i.pp, null
  br i1 %.not.i35.i.i, label %.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i36.i, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i9.i

.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i36.i: ; preds = %.lr.ph.i7.i
  %.pre45.i.i = load i32, ptr %i.nr, align 4, !tbaa !90
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i10.i

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i9.i: ; preds = %.lr.ph.i7.i
  %i.pq = lshr i64 %indvars.iv.i8.i, 6
  %i.pr = and i64 %i.pq, 67108863
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %i.pp, i64 %i.pr
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !121
  %i.pu = and i64 %indvars.iv.i8.i, 63
  %i.pv = shl nuw i64 1, %i.pu
  %i.pw = and i64 %i.pt, %i.pv
  %.not.i.i36.i.i = icmp eq i64 %i.pw, 0
  %.pre46.i.i = load i32, ptr %i.nr, align 4      ; 2 uses
  br i1 %.not.i.i36.i.i, label %bb.bl, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i10.i

bb.bl:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i9.i
  %i.px = load i32, ptr %i.nq, align 8, !tbaa !113 ; 3 uses
  %.not.i37.i.i = icmp ne i32 %i.px, 0
  %i.py = icmp eq i32 %.pre46.i.i, 0
  %or.cond.i.i15.i = select i1 %.not.i37.i.i, i1 %i.py, i1 false
  br i1 %or.cond.i.i15.i, label %bb.bm, label %..noexc_crit_edge.i.i

..noexc_crit_edge.i.i:                            ; preds = %bb.bl
  %.pre43.i.i = load ptr, ptr %i.nt, align 8, !tbaa !115 ; 2 uses
  %.phi.trans.insert.i16.i = getelementptr inbounds nuw i8, ptr %.pre43.i.i, i64 16
  %.pre44.i.i = load i64, ptr %.phi.trans.insert.i16.i, align 8, !tbaa !116
  br label %.noexc.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.pz = sext i32 %i.px to i64                   ; 3 uses
  %i.qa = icmp eq i32 %i.px, 1
  br i1 %i.qa, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %bb.bm
  %i.qb = load ptr, ptr %i.nt, align 8, !tbaa !115 ; 3 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !117
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !116 ; 3 uses
  %i.qg = icmp sgt i64 %i.qd, %i.qf
  br i1 %i.qg, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.qh = load ptr, ptr %i.qb, align 8, !tbaa !118
  %i.qi = lshr i64 %i.qf, 3
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qh, i64 %i.qi ; 2 uses
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !34
  %i.ql = and i64 %i.qf, 7
  %i.qm = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ql
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !34
  %i.qo = and i8 %i.qn, %i.qk
  store i8 %i.qo, ptr %i.qj, align 1, !tbaa !34
  %i.qp = load ptr, ptr %i.nt, align 8, !tbaa !115 ; 2 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 16 ; 2 uses
  %i.qr = load i64, ptr %i.qq, align 8, !tbaa !116
  %i.qs = add nsw i64 %i.qr, 1                    ; 2 uses
  store i64 %i.qs, ptr %i.qq, align 8, !tbaa !116
  br label %.noexc.i.i

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %i.qt = add nsw i64 %i.pz, 7
  br label %.noexc72.i.i

.noexc72.i.i:                                     ; preds = %bb.bv, %bb.bp
  %.014.i55.i.i = phi i64 [ 0, %bb.bp ], [ %i.sr, %bb.bv ] ; 2 uses
  %i.qu = sub nsw i64 %i.pz, %.014.i55.i.i
  %i.qv = load ptr, ptr %i.nt, align 8, !tbaa !115 ; 4 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load i64, ptr %i.qw, align 8, !tbaa !117
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qv, i64 16 ; 3 uses
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !116 ; 3 uses
  %i.ra = sub nsw i64 %i.qx, %i.qz
  %.sroa.speculated.i56.i.i = call i64 @llvm.smin.i64(i64 %i.ra, i64 %i.qu) ; 3 uses
  %i.rb = load ptr, ptr %i.qv, align 8, !tbaa !118 ; 3 uses
  %i.rc = trunc i64 %i.qz to i32                  ; 6 uses
  %i.rd = add nsw i64 %.sroa.speculated.i56.i.i, %i.qz ; 3 uses
  %i.re = trunc i64 %i.rd to i32                  ; 4 uses
  %.not.i.i.i57.i.i = icmp slt i32 %i.rc, %i.re
  br i1 %.not.i.i.i57.i.i, label %bb.bq, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i58.i.i

bb.bq:                                            ; preds = %.noexc72.i.i
  %i.rf = add i32 %i.rc, 63                       ; 2 uses
  %i.rg = srem i32 %i.rf, 64
  %i.rh = sub nsw i32 %i.rf, %i.rg                ; 6 uses
  %i.ri = and i32 %i.re, -64                      ; 4 uses
  %i.rj = icmp slt i32 %i.ri, %i.rh
  br i1 %i.rj, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.rk = and i64 %i.rd, 63
  %notmask.i.i.i.i70.i.i = shl nsw i64 -1, %i.rk
  %i.rl = sub nsw i32 %i.rh, %i.rc                ; 2 uses
  %i.rm = zext nneg i32 %i.rl to i64
  %notmask.i.i.i.i.i71.i.i = shl nsw i64 -1, %i.rm
  %i.rn = xor i64 %notmask.i.i.i.i.i71.i.i, -1
  %i.ro = sub nsw i32 64, %i.rl
  %i.rp = zext nneg i32 %i.ro to i64
  %i.rq = shl i64 %i.rn, %i.rp
  %.not6.i35.i = xor i64 %i.rq, -1
  %i.rr = or i64 %notmask.i.i.i.i70.i.i, %.not6.i35.i
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i58.sink.split.i.i

bb.bs:                                            ; preds = %bb.bq
  %.not32.i.i.i60.i.i = icmp eq i32 %i.rh, %i.rc
  br i1 %.not32.i.i.i60.i.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i62.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.rs = sdiv i32 %i.rc, 64
  %i.rt = sub nsw i32 %i.rh, %i.rc                ; 2 uses
  %i.ru = zext nneg i32 %i.rt to i64
  %notmask.i.i35.i.i.i61.i.i = shl nsw i64 -1, %i.ru
  %i.rv = xor i64 %notmask.i.i35.i.i.i61.i.i, -1
  %i.rw = sub nsw i32 64, %i.rt
  %i.rx = zext nneg i32 %i.rw to i64
  %i.ry = shl i64 %i.rv, %i.rx
  %i.rz = xor i64 %i.ry, -1
  %i.sa = sext i32 %i.rs to i64
  %i.sb = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.sa ; 2 uses
  %i.sc = load i64, ptr %i.sb, align 8, !tbaa !121
  %i.sd = and i64 %i.sc, %i.rz
  store i64 %i.sd, ptr %i.sb, align 8, !tbaa !121
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i62.i.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i62.i.i: ; preds = %bb.bt, %bb.bs
  %i.se = add nsw i32 %i.rh, 64                   ; 2 uses
  %.not3347.i.i.i63.i.i = icmp sgt i32 %i.se, %i.ri
  br i1 %.not3347.i.i.i63.i.i, label %._crit_edge.i.i.i67.i.i, label %.lr.ph.i.i.i64.i.i

._crit_edge.i.i.i67.i.i:                          ; preds = %.lr.ph.i.i.i64.i.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i62.i.i
  %.not34.i.i.i68.i.i = icmp eq i32 %i.ri, %i.re
  br i1 %.not34.i.i.i68.i.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i58.i.i, label %bb.bu

.lr.ph.i.i.i64.i.i:                               ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i62.i.i, %.lr.ph.i.i.i64.i.i
  %i.sf = phi i32 [ %i.sj, %.lr.ph.i.i.i64.i.i ], [ %i.se, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i62.i.i ] ; 2 uses
  %.048.i.i.i65.i.i = phi i32 [ %i.sf, %.lr.ph.i.i.i64.i.i ], [ %i.rh, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i62.i.i ]
  %i.sg = sdiv i32 %.048.i.i.i65.i.i, 64
  %i.sh = sext i32 %i.sg to i64
  %i.si = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.sh
  store i64 0, ptr %i.si, align 8, !tbaa !121
  %i.sj = add nsw i32 %i.sf, 64                   ; 2 uses
  %.not33.i.i.i66.i.i = icmp sgt i32 %i.sj, %i.ri
  br i1 %.not33.i.i.i66.i.i, label %._crit_edge.i.i.i67.i.i, label %.lr.ph.i.i.i64.i.i, !llvm.loop !122

bb.bu:                                            ; preds = %._crit_edge.i.i.i67.i.i
  %i.sk = and i64 %i.rd, 63
  %notmask.i37.i.i.i69.i.i = shl nsw i64 -1, %i.sk
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i58.sink.split.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i58.sink.split.i.i: ; preds = %bb.bu, %bb.br
  %notmask.i37.i.i.i69.sink.i.i = phi i64 [ %notmask.i37.i.i.i69.i.i, %bb.bu ], [ %i.rr, %bb.br ]
  %.sink.i34.i = ashr i32 %i.re, 6
  %i.sl = sext i32 %.sink.i34.i to i64
  %i.sm = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.sl ; 2 uses
  %i.sn = load i64, ptr %i.sm, align 8, !tbaa !121
  %i.so = and i64 %i.sn, %notmask.i37.i.i.i69.sink.i.i
  store i64 %i.so, ptr %i.sm, align 8, !tbaa !121
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i58.i.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i58.i.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i58.sink.split.i.i, %._crit_edge.i.i.i67.i.i, %.noexc72.i.i
  %i.sp = load i64, ptr %i.qy, align 8, !tbaa !116
  %i.sq = add nsw i64 %i.sp, %.sroa.speculated.i56.i.i ; 2 uses
  store i64 %i.sq, ptr %i.qy, align 8, !tbaa !116
  %i.sr = add nsw i64 %.sroa.speculated.i56.i.i, %.014.i55.i.i ; 3 uses
  %.not.i59.i33.i = icmp eq i64 %i.sr, %i.pz
  br i1 %.not.i59.i33.i, label %.noexc.i.i, label %bb.bv

bb.bv:                                            ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i58.i.i
  %i.ss = sub i64 %i.qt, %i.sr
  %i.st = lshr i64 %i.ss, 3
  invoke void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64) %i.ns, i64 noundef %i.st)
          to label %.noexc72.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i.i, !llvm.loop !123

.noexc.i.i:                                       ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i58.i.i, %bb.bo, %..noexc_crit_edge.i.i
  %i.su = phi i64 [ %.pre44.i.i, %..noexc_crit_edge.i.i ], [ %i.qs, %bb.bo ], [ %i.sq, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i58.i.i ] ; 3 uses
  %i.sv = phi ptr [ %.pre43.i.i, %..noexc_crit_edge.i.i ], [ %i.qp, %bb.bo ], [ %i.qv, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i58.i.i ] ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !117
  %i.sy = icmp sgt i64 %i.sx, %i.su
  br i1 %i.sy, label %bb.bw, label %.noexc54.i.i

bb.bw:                                            ; preds = %.noexc.i.i
  %i.sz = load ptr, ptr %i.sv, align 8, !tbaa !118
  %i.ta = lshr i64 %i.su, 3
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sz, i64 %i.ta ; 2 uses
  %i.tc = load i8, ptr %i.tb, align 1, !tbaa !34
  %i.td = trunc i64 %i.su to i8
  %i.te = and i8 %i.td, 7
  %i.tf = shl nuw i8 1, %i.te
  %i.tg = or i8 %i.tc, %i.tf
  store i8 %i.tg, ptr %i.tb, align 1, !tbaa !34
  %i.th = load ptr, ptr %i.nt, align 8, !tbaa !115
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 16 ; 2 uses
  %i.tj = load i64, ptr %i.ti, align 8, !tbaa !116
  %i.tk = add nsw i64 %i.tj, 1
  store i64 %i.tk, ptr %i.ti, align 8, !tbaa !116
  br label %.noexc38.i.i

.noexc54.i.i:                                     ; preds = %.noexc.i.i, %bb.cc
  %.014.i.i17.i = phi i64 [ %i.vj, %bb.cc ], [ 0, %.noexc.i.i ] ; 2 uses
  %i.tl = sub nsw i64 1, %.014.i.i17.i
  %i.tm = load ptr, ptr %i.nt, align 8, !tbaa !115 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.to = load i64, ptr %i.tn, align 8, !tbaa !117
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 16 ; 3 uses
  %i.tq = load i64, ptr %i.tp, align 8, !tbaa !116 ; 3 uses
  %i.tr = sub nsw i64 %i.to, %i.tq
  %.sroa.speculated.i.i18.i = call i64 @llvm.smin.i64(i64 %i.tr, i64 %i.tl) ; 3 uses
  %i.ts = load ptr, ptr %i.tm, align 8, !tbaa !118 ; 3 uses
  %i.tt = trunc i64 %i.tq to i32                  ; 6 uses
  %i.tu = add nsw i64 %.sroa.speculated.i.i18.i, %i.tq ; 3 uses
  %i.tv = trunc i64 %i.tu to i32                  ; 4 uses
  %.not.i.i.i52.i.i = icmp slt i32 %i.tt, %i.tv
  br i1 %.not.i.i.i52.i.i, label %bb.bx, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i19.i
end_hunk_1
begin_hunk_2_@"_ZZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEvENKUlvE_clEv":bb.a
  %i.lp = add nsw i32 %i.lo, 1
  store i32 %i.lp, ptr %i.aa, align 8, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.lq = call noundef zeroext i1 @_ZNK8facebook5velox10FlatVectorIbE11valueAtFastEi(ptr noundef nonnull align 8 dereferenceable(176) %i.d, i32 noundef %.090.i)
  %i.lr = zext i1 %i.lq to i8                     ; 2 uses
  store i8 %i.lr, ptr %i.b, align 1, !tbaa !34
  %i.ls = load ptr, ptr %i.ab, align 8, !tbaa !115 ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !116 ; 2 uses
  %i.lv = add i64 %i.lu, 1
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !117
  %i.ly = icmp ugt i64 %i.lv, %i.lx
  br i1 %i.ly, label %bb.am, label %bb.an

bb.am:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit43.i
  call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, i64 1, ptr nonnull align 1 dereferenceable(1) %i.b)
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream9appendOneIhEEvRKT_.exit44.i

bb.an:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit43.i
  %i.lz = load ptr, ptr %i.ls, align 8, !tbaa !118
  %i.ma = getelementptr inbounds i8, ptr %i.lz, i64 %i.lu
  store i8 %i.lr, ptr %i.ma, align 1
  %i.mb = load ptr, ptr %i.ab, align 8, !tbaa !115
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 16 ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !116
  %i.me = add i64 %i.md, 1
  store i64 %i.me, ptr %i.mc, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream9appendOneIhEEvRKT_.exit44.i

_ZN8facebook5velox10serializer6presto6detail12VectorStream9appendOneIhEEvRKT_.exit44.i: ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i

_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i: ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream9appendOneIhEEvRKT_.exit44.i, %bb.ac, %bb.ab, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i
  %i.mf = add nsw i32 %.090.i, 1                  ; 2 uses
  %i.mg = icmp slt i32 %i.mf, %i.ca
  br i1 %i.mg, label %.lr.ph92.i, label %._crit_edge93.loopexit.i, !llvm.loop !647

bb.ao:                                            ; preds = %bb.a
  %i.mh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mi = load ptr, ptr %i.mh, align 8, !tbaa !641, !nonnull !9, !align !640 ; 5 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !642, !nonnull !9, !align !640
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !52 ; 15 uses
  %i.mm = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.mn = icmp eq ptr %i.mm, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIiEE, i64 16)
  %i.mo = select i1 %i.mn, ptr %i.d, ptr null
  %i.mp = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !648 ; 3 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 40 ; 2 uses
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !83
  %.not5.i = icmp eq ptr %i.ms, null
  br i1 %.not5.i, label %bb.ap, label %.preheader11.i

.preheader11.i:                                   ; preds = %bb.ao
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 2 uses
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !84 ; 2 uses
  %i.mv = load ptr, ptr %i.mi, align 8, !tbaa !87 ; 2 uses
  %.not27.i = icmp eq ptr %i.mu, %i.mv
  br i1 %.not27.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %.preheader11.i
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ml, i64 64 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ml, i64 68 ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.ml, i64 104 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.ml, i64 152 ; 9 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.ml, i64 76
  %i.nb = getelementptr inbounds nuw i8, ptr %i.ml, i64 72 ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.ml, i64 216 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.ml, i64 168
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ml, i64 280 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ml, i64 232 ; 2 uses
  br label %bb.au

bb.ap:                                            ; preds = %bb.ao
  %i.ng = load ptr, ptr %i.mi, align 8, !tbaa !87 ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !84 ; 2 uses
  %.not23.i = icmp eq ptr %i.ng, %i.ni
  br i1 %.not23.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph26.i

.lr.ph26.i:                                       ; preds = %bb.ap
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ml, i64 68
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ml, i64 104
  %i.nl = getelementptr inbounds nuw i8, ptr %i.ml, i64 64 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.ml, i64 280 ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.ml, i64 232
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIiEEvN5folly5RangeIPKT_EE.exit.i, %.lr.ph26.i
  %.05024.i = phi ptr [ %i.ng, %.lr.ph26.i ], [ %i.on, %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIiEEvN5folly5RangeIPKT_EE.exit.i ] ; 3 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.05024.i, i64 4 ; 2 uses
  %i.np = load i32, ptr %i.no, align 4, !tbaa !88 ; 3 uses
  %i.nq = load i32, ptr %i.nj, align 4, !tbaa !90
  %i.nr = icmp sgt i32 %i.nq, 0
  br i1 %i.nr, label %bb.ar, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i60

bb.ar:                                            ; preds = %bb.aq
  %i.ns = sext i32 %i.np to i64
  tail call void @_ZN8facebook5velox16ByteOutputStream10appendBoolEbl(ptr noundef nonnull align 8 dereferenceable(64) %i.nk, i1 noundef zeroext false, i64 noundef %i.ns)
  %.pre44.i = load i32, ptr %i.no, align 4, !tbaa !88
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i60

_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i60: ; preds = %bb.ar, %bb.aq
  %i.nt = phi i32 [ %i.np, %bb.aq ], [ %.pre44.i, %bb.ar ]
  %i.nu = load i32, ptr %i.nl, align 8, !tbaa !113
  %i.nv = add nsw i32 %i.nu, %i.np
  store i32 %i.nv, ptr %i.nl, align 8, !tbaa !113
  %i.nw = load i32, ptr %.05024.i, align 4, !tbaa !114
  %i.nx = sext i32 %i.nw to i64
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %i.nx ; 2 uses
  %i.nz = sext i32 %i.nt to i64
  %i.oa = load ptr, ptr %i.nm, align 8, !tbaa !115 ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 16
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !116 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.nz, 2              ; 4 uses
  %i.od = add i64 %i.oc, %.idx.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oa, i64 8
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !117
  %i.og = icmp ugt i64 %i.od, %i.of
  br i1 %i.og, label %bb.as, label %bb.at

bb.as:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i60
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.nn, i64 %.idx.i, ptr %i.ny)
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIiEEvN5folly5RangeIPKT_EE.exit.i

bb.at:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i60
  %i.oh = load ptr, ptr %i.oa, align 8, !tbaa !118
  %i.oi = getelementptr inbounds i8, ptr %i.oh, i64 %i.oc
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oi, ptr align 4 %i.ny, i64 %.idx.i, i1 false)
  %i.oj = load ptr, ptr %i.nm, align 8, !tbaa !115
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 16 ; 2 uses
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !116
  %i.om = add i64 %i.ol, %.idx.i
  store i64 %i.om, ptr %i.ok, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIiEEvN5folly5RangeIPKT_EE.exit.i

_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIiEEvN5folly5RangeIPKT_EE.exit.i: ; preds = %bb.at, %bb.as
  %i.on = getelementptr inbounds nuw i8, ptr %.05024.i, i64 8 ; 2 uses
  %.not.i61 = icmp eq ptr %i.on, %i.ni
  br i1 %.not.i61, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.aq

._crit_edge20.i:                                  ; preds = %._crit_edge.i12
  %.not58.i = icmp eq i32 %.154.lcssa.i, -1
  br i1 %.not58.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.cd

bb.au:                                            ; preds = %._crit_edge.i12, %.lr.ph19.i
  %i.oo = phi ptr [ %i.mv, %.lr.ph19.i ], [ %i.ow, %._crit_edge.i12 ] ; 2 uses
  %i.op = phi ptr [ %i.mu, %.lr.ph19.i ], [ %i.ox, %._crit_edge.i12 ]
  %indvars.iv.i11 = phi i64 [ 0, %.lr.ph19.i ], [ %indvars.iv.next.i13, %._crit_edge.i12 ] ; 2 uses
  %.05217.i = phi i32 [ -1, %.lr.ph19.i ], [ %.1.lcssa.i, %._crit_edge.i12 ] ; 2 uses
  %.05316.i = phi i32 [ -1, %.lr.ph19.i ], [ %.154.lcssa.i, %._crit_edge.i12 ] ; 2 uses
  %i.oq = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %indvars.iv.i11 ; 2 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !114 ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 4
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !88 ; 2 uses
  %i.ou = add nsw i32 %i.ot, %i.or
  %i.ov = icmp sgt i32 %i.ot, 0
  br i1 %i.ov, label %.lr.ph.i14, label %._crit_edge.i12

._crit_edge.loopexit.i17:                         ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i16
  %.pre42.i = load ptr, ptr %i.mt, align 8, !tbaa !84
  %.pre43.i = load ptr, ptr %i.mi, align 8, !tbaa !87
  br label %._crit_edge.i12

._crit_edge.i12:                                  ; preds = %._crit_edge.loopexit.i17, %bb.au
  %i.ow = phi ptr [ %i.oo, %bb.au ], [ %.pre43.i, %._crit_edge.loopexit.i17 ] ; 2 uses
  %i.ox = phi ptr [ %i.op, %bb.au ], [ %.pre42.i, %._crit_edge.loopexit.i17 ] ; 2 uses
  %.154.lcssa.i = phi i32 [ %.05316.i, %bb.au ], [ %.255.i, %._crit_edge.loopexit.i17 ] ; 4 uses
  %.1.lcssa.i = phi i32 [ %.05217.i, %bb.au ], [ %.2.i, %._crit_edge.loopexit.i17 ] ; 2 uses
  %indvars.iv.next.i13 = add nuw nsw i64 %indvars.iv.i11, 1 ; 2 uses
  %i.oy = ptrtoint ptr %i.ox to i64
  %i.oz = ptrtoint ptr %i.ow to i64
  %i.pa = sub i64 %i.oy, %i.oz
  %i.pb = ashr exact i64 %i.pa, 3
  %i.pc = icmp ugt i64 %i.pb, %indvars.iv.next.i13
  br i1 %i.pc, label %bb.au, label %._crit_edge20.i, !llvm.loop !650

.lr.ph.i14:                                       ; preds = %bb.au, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i16
  %.014.i = phi i32 [ %i.zg, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i16 ], [ %i.or, %bb.au ] ; 10 uses
  %.113.i = phi i32 [ %.2.i, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i16 ], [ %.05217.i, %bb.au ] ; 4 uses
  %.15412.i = phi i32 [ %.255.i, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i16 ], [ %.05316.i, %bb.au ] ; 7 uses
  %i.pd = load ptr, ptr %i.mr, align 8, !tbaa !83 ; 2 uses
  %.not.i.i15 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i15, label %.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i

.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i: ; preds = %.lr.ph.i14
  %.pre35.i = load i32, ptr %i.mx, align 4, !tbaa !90
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i: ; preds = %.lr.ph.i14
  %i.pe = zext i32 %.014.i to i64                 ; 2 uses
  %i.pf = lshr i64 %i.pe, 6
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.pd, i64 %i.pf
  %i.ph = load i64, ptr %i.pg, align 8, !tbaa !121
  %i.pi = and i64 %i.pe, 63
  %i.pj = shl nuw i64 1, %i.pi
  %i.pk = and i64 %i.ph, %i.pj
  %.not.i.i.i = icmp eq i64 %i.pk, 0
  %.pre36.i = load i32, ptr %i.mx, align 4        ; 2 uses
  br i1 %.not.i.i.i, label %bb.av, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i

bb.av:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i
  %i.pl = load i32, ptr %i.mw, align 8, !tbaa !113 ; 3 uses
  %.not.i59.i = icmp ne i32 %i.pl, 0
  %i.pm = icmp eq i32 %.pre36.i, 0
  %or.cond.i.i19 = select i1 %.not.i59.i, i1 %i.pm, i1 false
  br i1 %or.cond.i.i19, label %bb.aw, label %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i

._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i: ; preds = %bb.av
  %.pre.i20 = load ptr, ptr %i.mz, align 8, !tbaa !115 ; 2 uses
  %.phi.trans.insert.i21 = getelementptr inbounds nuw i8, ptr %.pre.i20, i64 16
  %.pre29.i = load i64, ptr %.phi.trans.insert.i21, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i

bb.aw:                                            ; preds = %bb.av
  %i.pn = sext i32 %i.pl to i64                   ; 3 uses
  %i.po = icmp eq i32 %i.pl, 1
  br i1 %i.po, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.pp = load ptr, ptr %i.mz, align 8, !tbaa !115 ; 3 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !117
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  %i.pt = load i64, ptr %i.ps, align 8, !tbaa !116 ; 3 uses
  %i.pu = icmp sgt i64 %i.pr, %i.pt
  br i1 %i.pu, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.pv = load ptr, ptr %i.pp, align 8, !tbaa !118
  %i.pw = lshr i64 %i.pt, 3
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pw ; 2 uses
  %i.py = load i8, ptr %i.px, align 1, !tbaa !34
  %i.pz = and i64 %i.pt, 7
  %i.qa = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.pz
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !34
  %i.qc = and i8 %i.qb, %i.py
  store i8 %i.qc, ptr %i.px, align 1, !tbaa !34
  %i.qd = load ptr, ptr %i.mz, align 8, !tbaa !115 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 16 ; 2 uses
  %i.qf = load i64, ptr %i.qe, align 8, !tbaa !116
  %i.qg = add nsw i64 %i.qf, 1                    ; 2 uses
  store i64 %i.qg, ptr %i.qe, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %i.qh = add nsw i64 %i.pn, 7
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bg, %bb.az
  %.014.i64.i40 = phi i64 [ 0, %bb.az ], [ %i.sf, %bb.bg ] ; 2 uses
  %i.qi = sub nsw i64 %i.pn, %.014.i64.i40
  %i.qj = load ptr, ptr %i.mz, align 8, !tbaa !115 ; 4 uses
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  %i.ql = load i64, ptr %i.qk, align 8, !tbaa !117
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qj, i64 16 ; 3 uses
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !116 ; 3 uses
  %i.qo = sub nsw i64 %i.ql, %i.qn
  %.sroa.speculated.i65.i41 = tail call i64 @llvm.smin.i64(i64 %i.qo, i64 %i.qi) ; 3 uses
  %i.qp = load ptr, ptr %i.qj, align 8, !tbaa !118 ; 3 uses
  %i.qq = trunc i64 %i.qn to i32                  ; 6 uses
  %i.qr = add nsw i64 %.sroa.speculated.i65.i41, %i.qn ; 3 uses
  %i.qs = trunc i64 %i.qr to i32                  ; 4 uses
  %.not.i.i.i66.i42 = icmp slt i32 %i.qq, %i.qs
  br i1 %.not.i.i.i66.i42, label %bb.bb, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i43

bb.bb:                                            ; preds = %bb.ba
  %i.qt = add i32 %i.qq, 63                       ; 2 uses
  %i.qu = srem i32 %i.qt, 64
  %i.qv = sub nsw i32 %i.qt, %i.qu                ; 6 uses
  %i.qw = and i32 %i.qs, -64                      ; 4 uses
  %i.qx = icmp slt i32 %i.qw, %i.qv
  br i1 %i.qx, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.qy = and i64 %i.qr, 63
  %notmask.i.i.i.i79.i58 = shl nsw i64 -1, %i.qy
  %i.qz = sub nsw i32 %i.qv, %i.qq                ; 2 uses
  %i.ra = zext nneg i32 %i.qz to i64
  %notmask.i.i.i.i.i80.i59 = shl nsw i64 -1, %i.ra
  %i.rb = xor i64 %notmask.i.i.i.i.i80.i59, -1
  %i.rc = sub nsw i32 64, %i.qz
  %i.rd = zext nneg i32 %i.rc to i64
  %i.re = shl i64 %i.rb, %i.rd
  %.not7.i = xor i64 %i.re, -1
  %i.rf = or i64 %notmask.i.i.i.i79.i58, %.not7.i
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i55

bb.bd:                                            ; preds = %bb.bb
  %.not32.i.i.i69.i45 = icmp eq i32 %i.qv, %i.qq
  br i1 %.not32.i.i.i69.i45, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i47, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.rg = sdiv i32 %i.qq, 64
  %i.rh = sub nsw i32 %i.qv, %i.qq                ; 2 uses
  %i.ri = zext nneg i32 %i.rh to i64
  %notmask.i.i35.i.i.i70.i46 = shl nsw i64 -1, %i.ri
  %i.rj = xor i64 %notmask.i.i35.i.i.i70.i46, -1
  %i.rk = sub nsw i32 64, %i.rh
  %i.rl = zext nneg i32 %i.rk to i64
  %i.rm = shl i64 %i.rj, %i.rl
  %i.rn = xor i64 %i.rm, -1
  %i.ro = sext i32 %i.rg to i64
  %i.rp = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %i.ro ; 2 uses
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !121
  %i.rr = and i64 %i.rq, %i.rn
  store i64 %i.rr, ptr %i.rp, align 8, !tbaa !121
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i47

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i47: ; preds = %bb.be, %bb.bd
  %i.rs = add nsw i32 %i.qv, 64                   ; 2 uses
  %.not3347.i.i.i72.i48 = icmp sgt i32 %i.rs, %i.qw
  br i1 %.not3347.i.i.i72.i48, label %._crit_edge.i.i.i76.i52, label %.lr.ph.i.i.i73.i49

._crit_edge.i.i.i76.i52:                          ; preds = %.lr.ph.i.i.i73.i49, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i47
  %.not34.i.i.i77.i53 = icmp eq i32 %i.qw, %i.qs
  br i1 %.not34.i.i.i77.i53, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i43, label %bb.bf

.lr.ph.i.i.i73.i49:                               ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i47, %.lr.ph.i.i.i73.i49
  %i.rt = phi i32 [ %i.rx, %.lr.ph.i.i.i73.i49 ], [ %i.rs, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i47 ] ; 2 uses
  %.048.i.i.i74.i50 = phi i32 [ %i.rt, %.lr.ph.i.i.i73.i49 ], [ %i.qv, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i47 ]
  %i.ru = sdiv i32 %.048.i.i.i74.i50, 64
  %i.rv = sext i32 %i.ru to i64
  %i.rw = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %i.rv
  store i64 0, ptr %i.rw, align 8, !tbaa !121
  %i.rx = add nsw i32 %i.rt, 64                   ; 2 uses
  %.not33.i.i.i75.i51 = icmp sgt i32 %i.rx, %i.qw
  br i1 %.not33.i.i.i75.i51, label %._crit_edge.i.i.i76.i52, label %.lr.ph.i.i.i73.i49, !llvm.loop !122

bb.bf:                                            ; preds = %._crit_edge.i.i.i76.i52
  %i.ry = and i64 %i.qr, 63
  %notmask.i37.i.i.i78.i54 = shl nsw i64 -1, %i.ry
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i55

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i55: ; preds = %bb.bf, %bb.bc
  %notmask.i37.i.i.i78.sink.i56 = phi i64 [ %notmask.i37.i.i.i78.i54, %bb.bf ], [ %i.rf, %bb.bc ]
  %.sink.i57 = ashr i32 %i.qs, 6
  %i.rz = sext i32 %.sink.i57 to i64
  %i.sa = getelementptr inbounds [8 x i8], ptr %i.qp, i64 %i.rz ; 2 uses
  %i.sb = load i64, ptr %i.sa, align 8, !tbaa !121
  %i.sc = and i64 %i.sb, %notmask.i37.i.i.i78.sink.i56
  store i64 %i.sc, ptr %i.sa, align 8, !tbaa !121
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i43

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i43: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i55, %._crit_edge.i.i.i76.i52, %bb.ba
  %i.sd = load i64, ptr %i.qm, align 8, !tbaa !116
  %i.se = add nsw i64 %i.sd, %.sroa.speculated.i65.i41 ; 2 uses
  store i64 %i.se, ptr %i.qm, align 8, !tbaa !116
  %i.sf = add nsw i64 %.sroa.speculated.i65.i41, %.014.i64.i40 ; 3 uses
  %.not.i68.i44 = icmp eq i64 %i.sf, %i.pn
  br i1 %.not.i68.i44, label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i, label %bb.bg

bb.bg:                                            ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i43
  %i.sg = sub i64 %i.qh, %i.sf
  %i.sh = lshr i64 %i.sg, 3
  tail call void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64) %i.my, i64 noundef %i.sh)
  br label %bb.ba, !llvm.loop !123

_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i43, %bb.ay, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i
  %i.si = phi i64 [ %.pre29.i, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i ], [ %i.qg, %bb.ay ], [ %i.se, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i43 ] ; 4 uses
  %i.sj = phi ptr [ %.pre.i20, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i ], [ %i.qd, %bb.ay ], [ %i.qj, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i43 ] ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load i64, ptr %i.sk, align 8, !tbaa !117 ; 2 uses
  %i.sm = icmp sgt i64 %i.sl, %i.si
  br i1 %i.sm, label %bb.bh, label %.preheader10.i

bb.bh:                                            ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i
  %i.sn = load ptr, ptr %i.sj, align 8, !tbaa !118
  %i.so = lshr i64 %i.si, 3
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sn, i64 %i.so ; 2 uses
  %i.sq = load i8, ptr %i.sp, align 1, !tbaa !34
  %i.sr = trunc i64 %i.si to i8
  %i.ss = and i8 %i.sr, 7
  %i.st = shl nuw i8 1, %i.ss
  %i.su = or i8 %i.sq, %i.st
  store i8 %i.su, ptr %i.sp, align 1, !tbaa !34
  %i.sv = load ptr, ptr %i.mz, align 8, !tbaa !115
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 16 ; 2 uses
  %i.sx = load i64, ptr %i.sw, align 8, !tbaa !116
  %i.sy = add nsw i64 %i.sx, 1
  store i64 %i.sy, ptr %i.sw, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i26

.preheader10.i:                                   ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i, %bb.bn
  %i.sz = phi i64 [ %.pre34.i, %bb.bn ], [ %i.si, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i ] ; 3 uses
  %i.ta = phi i64 [ %.pre32.i, %bb.bn ], [ %i.sl, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i ]
  %i.tb = phi ptr [ %.pre30.i, %bb.bn ], [ %i.sj, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i ] ; 2 uses
  %.014.i.i22 = phi i64 [ %i.uw, %bb.bn ], [ 0, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i ] ; 2 uses
  %i.tc = sub nsw i64 1, %.014.i.i22
  %i.td = getelementptr inbounds nuw i8, ptr %i.tb, i64 16 ; 2 uses
  %i.te = sub nsw i64 %i.ta, %i.sz
  %.sroa.speculated.i.i23 = tail call i64 @llvm.smin.i64(i64 %i.te, i64 %i.tc) ; 3 uses
  %i.tf = load ptr, ptr %i.tb, align 8, !tbaa !118 ; 3 uses
  %i.tg = trunc i64 %i.sz to i32                  ; 6 uses
  %i.th = add nsw i64 %.sroa.speculated.i.i23, %i.sz ; 3 uses
  %i.ti = trunc i64 %i.th to i32                  ; 4 uses
  %.not.i.i.i.i24 = icmp slt i32 %i.tg, %i.ti
  br i1 %.not.i.i.i.i24, label %bb.bi, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i25

end_hunk_2
begin_hunk_3_@"_ZZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEvENKUlvE_clEv":bb.a
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i16

_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i16: ; preds = %bb.cc, %bb.cb, %bb.bz, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i, %bb.bq, %bb.bp, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i26
  %.255.i = phi i32 [ %.15412.i, %bb.bz ], [ %.15412.i, %bb.bq ], [ %.014.i, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i ], [ %.15412.i, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i26 ], [ %.15412.i, %bb.bp ], [ %.014.i, %bb.cb ], [ %.014.i, %bb.cc ] ; 2 uses
  %.2.i = phi i32 [ %.014.i, %bb.bz ], [ %.113.i, %bb.bq ], [ %.014.i, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i ], [ %.113.i, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i26 ], [ %.113.i, %bb.bp ], [ %.014.i, %bb.cb ], [ %.014.i, %bb.cc ] ; 2 uses
  %i.zg = add nsw i32 %.014.i, 1                  ; 2 uses
  %i.zh = icmp slt i32 %i.zg, %i.ou
  br i1 %i.zh, label %.lr.ph.i14, label %._crit_edge.loopexit.i17, !llvm.loop !651

bb.cd:                                            ; preds = %._crit_edge20.i
  %i.zi = sext i32 %.154.lcssa.i to i64
  %i.zj = getelementptr inbounds [4 x i8], ptr %i.mq, i64 %i.zi ; 2 uses
  %reass.sub1072 = sub i32 %.1.lcssa.i, %.154.lcssa.i
  %i.zk = add i32 %reass.sub1072, 1
  %i.zl = sext i32 %i.zk to i64
  %i.zm = load ptr, ptr %i.ne, align 8, !tbaa !115 ; 3 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 16
  %i.zo = load i64, ptr %i.zn, align 8, !tbaa !116 ; 2 uses
  %.idx6.i = shl nuw nsw i64 %i.zl, 2             ; 4 uses
  %i.zp = add i64 %i.zo, %.idx6.i
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.zr = load i64, ptr %i.zq, align 8, !tbaa !117
  %i.zs = icmp ugt i64 %i.zp, %i.zr
  br i1 %i.zs, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.nf, i64 %.idx6.i, ptr %i.zj)
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit

bb.cf:                                            ; preds = %bb.cd
  %i.zt = load ptr, ptr %i.zm, align 8, !tbaa !118
  %i.zu = getelementptr inbounds i8, ptr %i.zt, i64 %i.zo
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.zu, ptr align 4 %i.zj, i64 %.idx6.i, i1 false)
  %i.zv = load ptr, ptr %i.ne, align 8, !tbaa !115
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 16 ; 2 uses
  %i.zx = load i64, ptr %i.zw, align 8, !tbaa !116
  %i.zy = add i64 %i.zx, %.idx6.i
  store i64 %i.zy, ptr %i.zw, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit

bb.cg:                                            ; preds = %bb.a
  %i.zz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !641, !nonnull !9, !align !640 ; 5 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !642, !nonnull !9, !align !640
  %i.aad = load ptr, ptr %i.aac, align 8, !tbaa !52 ; 15 uses
  %i.aae = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.aaf = icmp eq ptr %i.aae, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIaEE, i64 16)
  %i.aag = select i1 %i.aaf, ptr %i.d, ptr null
  %i.aah = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !302 ; 3 uses
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.aag, i64 40 ; 2 uses
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !83
  %.not5.i62 = icmp eq ptr %i.aak, null
  br i1 %.not5.i62, label %bb.ch, label %.preheader9.i

.preheader9.i:                                    ; preds = %bb.cg
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8 ; 2 uses
  %i.aam = load ptr, ptr %i.aal, align 8, !tbaa !84 ; 2 uses
  %i.aan = load ptr, ptr %i.aaa, align 8, !tbaa !87 ; 2 uses
  %.not25.i = icmp eq ptr %i.aam, %i.aan
  br i1 %.not25.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph17.i

.lr.ph17.i:                                       ; preds = %.preheader9.i
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aad, i64 64 ; 3 uses
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aad, i64 68 ; 4 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aad, i64 104 ; 3 uses
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aad, i64 152 ; 9 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aad, i64 76
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aad, i64 72 ; 2 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.aad, i64 216 ; 2 uses
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aad, i64 168
  %i.aaw = getelementptr inbounds nuw i8, ptr %i.aad, i64 280 ; 4 uses
  %i.aax = getelementptr inbounds nuw i8, ptr %i.aad, i64 232 ; 2 uses
  br label %bb.cm

bb.ch:                                            ; preds = %bb.cg
  %i.aay = load ptr, ptr %i.aaa, align 8, !tbaa !87 ; 2 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aaa, i64 8
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !84 ; 2 uses
  %.not21.i = icmp eq ptr %i.aay, %i.aba
  br i1 %.not21.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph24.i

.lr.ph24.i:                                       ; preds = %bb.ch
  %i.abb = getelementptr inbounds nuw i8, ptr %i.aad, i64 68
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aad, i64 104
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aad, i64 64 ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aad, i64 280 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.aad, i64 232
  br label %bb.ci

bb.ci:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIaEEvN5folly5RangeIPKT_EE.exit.i, %.lr.ph24.i
  %.05022.i = phi ptr [ %i.aay, %.lr.ph24.i ], [ %i.acf, %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIaEEvN5folly5RangeIPKT_EE.exit.i ] ; 3 uses
  %i.abg = getelementptr inbounds nuw i8, ptr %.05022.i, i64 4 ; 2 uses
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !88 ; 3 uses
  %i.abi = load i32, ptr %i.abb, align 4, !tbaa !90
  %i.abj = icmp sgt i32 %i.abi, 0
  br i1 %i.abj, label %bb.cj, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i156

bb.cj:                                            ; preds = %bb.ci
  %i.abk = sext i32 %i.abh to i64
  tail call void @_ZN8facebook5velox16ByteOutputStream10appendBoolEbl(ptr noundef nonnull align 8 dereferenceable(64) %i.abc, i1 noundef zeroext false, i64 noundef %i.abk)
  %.pre42.i158 = load i32, ptr %i.abg, align 4, !tbaa !88
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i156

_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i156: ; preds = %bb.cj, %bb.ci
  %i.abl = phi i32 [ %i.abh, %bb.ci ], [ %.pre42.i158, %bb.cj ]
  %i.abm = load i32, ptr %i.abd, align 8, !tbaa !113
  %i.abn = add nsw i32 %i.abm, %i.abh
  store i32 %i.abn, ptr %i.abd, align 8, !tbaa !113
  %i.abo = load i32, ptr %.05022.i, align 4, !tbaa !114
  %i.abp = sext i32 %i.abo to i64
  %i.abq = getelementptr inbounds i8, ptr %i.aai, i64 %i.abp ; 2 uses
  %i.abr = sext i32 %i.abl to i64                 ; 4 uses
  %i.abs = load ptr, ptr %i.abe, align 8, !tbaa !115 ; 3 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  %i.abu = load i64, ptr %i.abt, align 8, !tbaa !116 ; 2 uses
  %i.abv = add i64 %i.abu, %i.abr
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  %i.abx = load i64, ptr %i.abw, align 8, !tbaa !117
  %i.aby = icmp ugt i64 %i.abv, %i.abx
  br i1 %i.aby, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i156
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.abf, i64 %i.abr, ptr %i.abq)
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIaEEvN5folly5RangeIPKT_EE.exit.i

bb.cl:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i156
  %i.abz = load ptr, ptr %i.abs, align 8, !tbaa !118
  %i.aca = getelementptr inbounds i8, ptr %i.abz, i64 %i.abu
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aca, ptr align 1 %i.abq, i64 %i.abr, i1 false)
  %i.acb = load ptr, ptr %i.abe, align 8, !tbaa !115
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 16 ; 2 uses
  %i.acd = load i64, ptr %i.acc, align 8, !tbaa !116
  %i.ace = add i64 %i.acd, %i.abr
  store i64 %i.ace, ptr %i.acc, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIaEEvN5folly5RangeIPKT_EE.exit.i

_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIaEEvN5folly5RangeIPKT_EE.exit.i: ; preds = %bb.cl, %bb.ck
  %i.acf = getelementptr inbounds nuw i8, ptr %.05022.i, i64 8 ; 2 uses
  %.not.i157 = icmp eq ptr %i.acf, %i.aba
  br i1 %.not.i157, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.ci

._crit_edge18.i:                                  ; preds = %._crit_edge.i64
  %.not58.i68 = icmp eq i32 %.154.lcssa.i65, -1
  br i1 %.not58.i68, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.dv

bb.cm:                                            ; preds = %._crit_edge.i64, %.lr.ph17.i
  %i.acg = phi ptr [ %i.aan, %.lr.ph17.i ], [ %i.aco, %._crit_edge.i64 ] ; 2 uses
  %i.ach = phi ptr [ %i.aam, %.lr.ph17.i ], [ %i.acp, %._crit_edge.i64 ]
  %indvars.iv.i63 = phi i64 [ 0, %.lr.ph17.i ], [ %indvars.iv.next.i67, %._crit_edge.i64 ] ; 2 uses
  %.05215.i = phi i32 [ -1, %.lr.ph17.i ], [ %.1.lcssa.i66, %._crit_edge.i64 ] ; 2 uses
  %.05314.i = phi i32 [ -1, %.lr.ph17.i ], [ %.154.lcssa.i65, %._crit_edge.i64 ] ; 2 uses
  %i.aci = getelementptr inbounds nuw [8 x i8], ptr %i.acg, i64 %indvars.iv.i63 ; 2 uses
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !114 ; 2 uses
  %i.ack = getelementptr inbounds nuw i8, ptr %i.aci, i64 4
  %i.acl = load i32, ptr %i.ack, align 4, !tbaa !88 ; 2 uses
  %i.acm = add nsw i32 %i.acl, %i.acj
  %i.acn = icmp sgt i32 %i.acl, 0
  br i1 %i.acn, label %.lr.ph.i70, label %._crit_edge.i64

._crit_edge.loopexit.i80:                         ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i77
  %.pre40.i = load ptr, ptr %i.aal, align 8, !tbaa !84
  %.pre41.i81 = load ptr, ptr %i.aaa, align 8, !tbaa !87
  br label %._crit_edge.i64

._crit_edge.i64:                                  ; preds = %._crit_edge.loopexit.i80, %bb.cm
  %i.aco = phi ptr [ %i.acg, %bb.cm ], [ %.pre41.i81, %._crit_edge.loopexit.i80 ] ; 2 uses
  %i.acp = phi ptr [ %i.ach, %bb.cm ], [ %.pre40.i, %._crit_edge.loopexit.i80 ] ; 2 uses
  %.154.lcssa.i65 = phi i32 [ %.05314.i, %bb.cm ], [ %.255.i78, %._crit_edge.loopexit.i80 ] ; 4 uses
  %.1.lcssa.i66 = phi i32 [ %.05215.i, %bb.cm ], [ %.2.i79, %._crit_edge.loopexit.i80 ] ; 2 uses
  %indvars.iv.next.i67 = add nuw nsw i64 %indvars.iv.i63, 1 ; 2 uses
  %i.acq = ptrtoint ptr %i.acp to i64
  %i.acr = ptrtoint ptr %i.aco to i64
  %i.acs = sub i64 %i.acq, %i.acr
  %i.act = ashr exact i64 %i.acs, 3
  %i.acu = icmp ugt i64 %i.act, %indvars.iv.next.i67
  br i1 %i.acu, label %bb.cm, label %._crit_edge18.i, !llvm.loop !652

.lr.ph.i70:                                       ; preds = %bb.cm, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i77
  %.012.i = phi i32 [ %i.amy, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i77 ], [ %i.acj, %bb.cm ] ; 10 uses
  %.111.i = phi i32 [ %.2.i79, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i77 ], [ %.05215.i, %bb.cm ] ; 4 uses
  %.15410.i = phi i32 [ %.255.i78, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i77 ], [ %.05314.i, %bb.cm ] ; 7 uses
  %i.acv = load ptr, ptr %i.aaj, align 8, !tbaa !83 ; 2 uses
  %.not.i.i71 = icmp eq ptr %i.acv, null
  br i1 %.not.i.i71, label %.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i155, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i72

.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i155: ; preds = %.lr.ph.i70
  %.pre33.i = load i32, ptr %i.aap, align 4, !tbaa !90
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i75

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i72: ; preds = %.lr.ph.i70
  %i.acw = zext i32 %.012.i to i64                ; 2 uses
  %i.acx = lshr i64 %i.acw, 6
  %i.acy = getelementptr inbounds nuw [8 x i8], ptr %i.acv, i64 %i.acx
  %i.acz = load i64, ptr %i.acy, align 8, !tbaa !121
  %i.ada = and i64 %i.acw, 63
  %i.adb = shl nuw i64 1, %i.ada
  %i.adc = and i64 %i.acz, %i.adb
  %.not.i.i.i73 = icmp eq i64 %i.adc, 0
  %.pre34.i74 = load i32, ptr %i.aap, align 4     ; 2 uses
  br i1 %.not.i.i.i73, label %bb.cn, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i75

bb.cn:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i72
  %i.add = load i32, ptr %i.aao, align 8, !tbaa !113 ; 3 uses
  %.not.i59.i107 = icmp ne i32 %i.add, 0
  %i.ade = icmp eq i32 %.pre34.i74, 0
  %or.cond.i.i108 = select i1 %.not.i59.i107, i1 %i.ade, i1 false
  br i1 %or.cond.i.i108, label %bb.co, label %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i109

._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i109: ; preds = %bb.cn
  %.pre.i110 = load ptr, ptr %i.aar, align 8, !tbaa !115 ; 2 uses
  %.phi.trans.insert.i111 = getelementptr inbounds nuw i8, ptr %.pre.i110, i64 16
  %.pre27.i = load i64, ptr %.phi.trans.insert.i111, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i112

bb.co:                                            ; preds = %bb.cn
  %i.adf = sext i32 %i.add to i64                 ; 3 uses
  %i.adg = icmp eq i32 %i.add, 1
  br i1 %i.adg, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.adh = load ptr, ptr %i.aar, align 8, !tbaa !115 ; 3 uses
  %i.adi = getelementptr inbounds nuw i8, ptr %i.adh, i64 8
  %i.adj = load i64, ptr %i.adi, align 8, !tbaa !117
  %i.adk = getelementptr inbounds nuw i8, ptr %i.adh, i64 16
  %i.adl = load i64, ptr %i.adk, align 8, !tbaa !116 ; 3 uses
  %i.adm = icmp sgt i64 %i.adj, %i.adl
  br i1 %i.adm, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.adn = load ptr, ptr %i.adh, align 8, !tbaa !118
  %i.ado = lshr i64 %i.adl, 3
  %i.adp = getelementptr inbounds nuw i8, ptr %i.adn, i64 %i.ado ; 2 uses
  %i.adq = load i8, ptr %i.adp, align 1, !tbaa !34
  %i.adr = and i64 %i.adl, 7
  %i.ads = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.adr
  %i.adt = load i8, ptr %i.ads, align 1, !tbaa !34
  %i.adu = and i8 %i.adt, %i.adq
  store i8 %i.adu, ptr %i.adp, align 1, !tbaa !34
  %i.adv = load ptr, ptr %i.aar, align 8, !tbaa !115 ; 2 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 16 ; 2 uses
  %i.adx = load i64, ptr %i.adw, align 8, !tbaa !116
  %i.ady = add nsw i64 %i.adx, 1                  ; 2 uses
  store i64 %i.ady, ptr %i.adw, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i112

bb.cr:                                            ; preds = %bb.cp, %bb.co
  %i.adz = add nsw i64 %i.adf, 7
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cy, %bb.cr
  %.014.i64.i135 = phi i64 [ 0, %bb.cr ], [ %i.afx, %bb.cy ] ; 2 uses
  %i.aea = sub nsw i64 %i.adf, %.014.i64.i135
  %i.aeb = load ptr, ptr %i.aar, align 8, !tbaa !115 ; 4 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 8
  %i.aed = load i64, ptr %i.aec, align 8, !tbaa !117
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aeb, i64 16 ; 3 uses
  %i.aef = load i64, ptr %i.aee, align 8, !tbaa !116 ; 3 uses
  %i.aeg = sub nsw i64 %i.aed, %i.aef
  %.sroa.speculated.i65.i136 = tail call i64 @llvm.smin.i64(i64 %i.aeg, i64 %i.aea) ; 3 uses
  %i.aeh = load ptr, ptr %i.aeb, align 8, !tbaa !118 ; 3 uses
  %i.aei = trunc i64 %i.aef to i32                ; 6 uses
  %i.aej = add nsw i64 %.sroa.speculated.i65.i136, %i.aef ; 3 uses
  %i.aek = trunc i64 %i.aej to i32                ; 4 uses
  %.not.i.i.i66.i137 = icmp slt i32 %i.aei, %i.aek
  br i1 %.not.i.i.i66.i137, label %bb.ct, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i138

bb.ct:                                            ; preds = %bb.cs
  %i.ael = add i32 %i.aei, 63                     ; 2 uses
  %i.aem = srem i32 %i.ael, 64
  %i.aen = sub nsw i32 %i.ael, %i.aem             ; 6 uses
  %i.aeo = and i32 %i.aek, -64                    ; 4 uses
  %i.aep = icmp slt i32 %i.aeo, %i.aen
  br i1 %i.aep, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.aeq = and i64 %i.aej, 63
  %notmask.i.i.i.i79.i153 = shl nsw i64 -1, %i.aeq
  %i.aer = sub nsw i32 %i.aen, %i.aei             ; 2 uses
  %i.aes = zext nneg i32 %i.aer to i64
  %notmask.i.i.i.i.i80.i154 = shl nsw i64 -1, %i.aes
  %i.aet = xor i64 %notmask.i.i.i.i.i80.i154, -1
  %i.aeu = sub nsw i32 64, %i.aer
  %i.aev = zext nneg i32 %i.aeu to i64
  %i.aew = shl i64 %i.aet, %i.aev
  %.not6.i = xor i64 %i.aew, -1
  %i.aex = or i64 %notmask.i.i.i.i79.i153, %.not6.i
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i150

bb.cv:                                            ; preds = %bb.ct
  %.not32.i.i.i69.i140 = icmp eq i32 %i.aen, %i.aei
  br i1 %.not32.i.i.i69.i140, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i142, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.aey = sdiv i32 %i.aei, 64
  %i.aez = sub nsw i32 %i.aen, %i.aei             ; 2 uses
  %i.afa = zext nneg i32 %i.aez to i64
  %notmask.i.i35.i.i.i70.i141 = shl nsw i64 -1, %i.afa
  %i.afb = xor i64 %notmask.i.i35.i.i.i70.i141, -1
  %i.afc = sub nsw i32 64, %i.aez
  %i.afd = zext nneg i32 %i.afc to i64
  %i.afe = shl i64 %i.afb, %i.afd
  %i.aff = xor i64 %i.afe, -1
  %i.afg = sext i32 %i.aey to i64
  %i.afh = getelementptr inbounds [8 x i8], ptr %i.aeh, i64 %i.afg ; 2 uses
  %i.afi = load i64, ptr %i.afh, align 8, !tbaa !121
  %i.afj = and i64 %i.afi, %i.aff
  store i64 %i.afj, ptr %i.afh, align 8, !tbaa !121
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i142

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i142: ; preds = %bb.cw, %bb.cv
  %i.afk = add nsw i32 %i.aen, 64                 ; 2 uses
  %.not3347.i.i.i72.i143 = icmp sgt i32 %i.afk, %i.aeo
  br i1 %.not3347.i.i.i72.i143, label %._crit_edge.i.i.i76.i147, label %.lr.ph.i.i.i73.i144

._crit_edge.i.i.i76.i147:                         ; preds = %.lr.ph.i.i.i73.i144, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i142
  %.not34.i.i.i77.i148 = icmp eq i32 %i.aeo, %i.aek
  br i1 %.not34.i.i.i77.i148, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i138, label %bb.cx

.lr.ph.i.i.i73.i144:                              ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i142, %.lr.ph.i.i.i73.i144
  %i.afl = phi i32 [ %i.afp, %.lr.ph.i.i.i73.i144 ], [ %i.afk, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i142 ] ; 2 uses
  %.048.i.i.i74.i145 = phi i32 [ %i.afl, %.lr.ph.i.i.i73.i144 ], [ %i.aen, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i142 ]
  %i.afm = sdiv i32 %.048.i.i.i74.i145, 64
  %i.afn = sext i32 %i.afm to i64
  %i.afo = getelementptr inbounds [8 x i8], ptr %i.aeh, i64 %i.afn
  store i64 0, ptr %i.afo, align 8, !tbaa !121
  %i.afp = add nsw i32 %i.afl, 64                 ; 2 uses
  %.not33.i.i.i75.i146 = icmp sgt i32 %i.afp, %i.aeo
  br i1 %.not33.i.i.i75.i146, label %._crit_edge.i.i.i76.i147, label %.lr.ph.i.i.i73.i144, !llvm.loop !122

bb.cx:                                            ; preds = %._crit_edge.i.i.i76.i147
  %i.afq = and i64 %i.aej, 63
  %notmask.i37.i.i.i78.i149 = shl nsw i64 -1, %i.afq
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i150

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i150: ; preds = %bb.cx, %bb.cu
  %notmask.i37.i.i.i78.sink.i151 = phi i64 [ %notmask.i37.i.i.i78.i149, %bb.cx ], [ %i.aex, %bb.cu ]
  %.sink.i152 = ashr i32 %i.aek, 6
  %i.afr = sext i32 %.sink.i152 to i64
  %i.afs = getelementptr inbounds [8 x i8], ptr %i.aeh, i64 %i.afr ; 2 uses
  %i.aft = load i64, ptr %i.afs, align 8, !tbaa !121
  %i.afu = and i64 %i.aft, %notmask.i37.i.i.i78.sink.i151
  store i64 %i.afu, ptr %i.afs, align 8, !tbaa !121
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i138

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i138: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i150, %._crit_edge.i.i.i76.i147, %bb.cs
  %i.afv = load i64, ptr %i.aee, align 8, !tbaa !116
  %i.afw = add nsw i64 %i.afv, %.sroa.speculated.i65.i136 ; 2 uses
  store i64 %i.afw, ptr %i.aee, align 8, !tbaa !116
  %i.afx = add nsw i64 %.sroa.speculated.i65.i136, %.014.i64.i135 ; 3 uses
  %.not.i68.i139 = icmp eq i64 %i.afx, %i.adf
  br i1 %.not.i68.i139, label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i112, label %bb.cy

bb.cy:                                            ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i138
  %i.afy = sub i64 %i.adz, %i.afx
  %i.afz = lshr i64 %i.afy, 3
  tail call void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64) %i.aaq, i64 noundef %i.afz)
  br label %bb.cs, !llvm.loop !123

_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i112: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i138, %bb.cq, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i109
  %i.aga = phi i64 [ %.pre27.i, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i109 ], [ %i.ady, %bb.cq ], [ %i.afw, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i138 ] ; 4 uses
  %i.agb = phi ptr [ %.pre.i110, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i109 ], [ %i.adv, %bb.cq ], [ %i.aeb, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i138 ] ; 3 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 8
  %i.agd = load i64, ptr %i.agc, align 8, !tbaa !117 ; 2 uses
  %i.age = icmp sgt i64 %i.agd, %i.aga
  br i1 %i.age, label %bb.cz, label %.preheader8.i

bb.cz:                                            ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i112
  %i.agf = load ptr, ptr %i.agb, align 8, !tbaa !118
  %i.agg = lshr i64 %i.aga, 3
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agf, i64 %i.agg ; 2 uses
  %i.agi = load i8, ptr %i.agh, align 1, !tbaa !34
  %i.agj = trunc i64 %i.aga to i8
  %i.agk = and i8 %i.agj, 7
  %i.agl = shl nuw i8 1, %i.agk
  %i.agm = or i8 %i.agi, %i.agl
  store i8 %i.agm, ptr %i.agh, align 1, !tbaa !34
  %i.agn = load ptr, ptr %i.aar, align 8, !tbaa !115
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agn, i64 16 ; 2 uses
  %i.agp = load i64, ptr %i.ago, align 8, !tbaa !116
  %i.agq = add nsw i64 %i.agp, 1
  store i64 %i.agq, ptr %i.ago, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i121

.preheader8.i:                                    ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i112, %bb.df
  %i.agr = phi i64 [ %.pre32.i120, %bb.df ], [ %i.aga, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i112 ] ; 3 uses
  %i.ags = phi i64 [ %.pre30.i118, %bb.df ], [ %i.agd, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i112 ]
  %i.agt = phi ptr [ %.pre28.i, %bb.df ], [ %i.agb, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i112 ] ; 2 uses
  %.014.i.i113 = phi i64 [ %i.aio, %bb.df ], [ 0, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i112 ] ; 2 uses
  %i.agu = sub nsw i64 1, %.014.i.i113
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agt, i64 16 ; 2 uses
  %i.agw = sub nsw i64 %i.ags, %i.agr
  %.sroa.speculated.i.i114 = tail call i64 @llvm.smin.i64(i64 %i.agw, i64 %i.agu) ; 3 uses
  %i.agx = load ptr, ptr %i.agt, align 8, !tbaa !118 ; 3 uses
  %i.agy = trunc i64 %i.agr to i32                ; 6 uses
  %i.agz = add nsw i64 %.sroa.speculated.i.i114, %i.agr ; 3 uses
  %i.aha = trunc i64 %i.agz to i32                ; 4 uses
  %.not.i.i.i.i115 = icmp slt i32 %i.agy, %i.aha
  br i1 %.not.i.i.i.i115, label %bb.da, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i116

end_hunk_3
begin_hunk_4_@"_ZZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEvENKUlvE_clEv":bb.a
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i77

_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i77: ; preds = %bb.du, %bb.dt, %bb.dr, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i76, %bb.di, %bb.dh, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i121
  %.255.i78 = phi i32 [ %.15410.i, %bb.dr ], [ %.15410.i, %bb.di ], [ %.012.i, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i76 ], [ %.15410.i, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i121 ], [ %.15410.i, %bb.dh ], [ %.012.i, %bb.dt ], [ %.012.i, %bb.du ] ; 2 uses
  %.2.i79 = phi i32 [ %.012.i, %bb.dr ], [ %.111.i, %bb.di ], [ %.012.i, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i76 ], [ %.111.i, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i121 ], [ %.111.i, %bb.dh ], [ %.012.i, %bb.dt ], [ %.012.i, %bb.du ] ; 2 uses
  %i.amy = add nsw i32 %.012.i, 1                 ; 2 uses
  %i.amz = icmp slt i32 %i.amy, %i.acm
  br i1 %i.amz, label %.lr.ph.i70, label %._crit_edge.loopexit.i80, !llvm.loop !653

bb.dv:                                            ; preds = %._crit_edge18.i
  %i.ana = sext i32 %.154.lcssa.i65 to i64
  %i.anb = getelementptr inbounds i8, ptr %i.aai, i64 %i.ana ; 2 uses
  %reass.sub1071 = sub i32 %.1.lcssa.i66, %.154.lcssa.i65
  %i.anc = add i32 %reass.sub1071, 1
  %i.and = sext i32 %i.anc to i64                 ; 4 uses
  %i.ane = load ptr, ptr %i.aaw, align 8, !tbaa !115 ; 3 uses
  %i.anf = getelementptr inbounds nuw i8, ptr %i.ane, i64 16
  %i.ang = load i64, ptr %i.anf, align 8, !tbaa !116 ; 2 uses
  %i.anh = add i64 %i.ang, %i.and
  %i.ani = getelementptr inbounds nuw i8, ptr %i.ane, i64 8
  %i.anj = load i64, ptr %i.ani, align 8, !tbaa !117
  %i.ank = icmp ugt i64 %i.anh, %i.anj
  br i1 %i.ank, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.aax, i64 %i.and, ptr %i.anb)
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit

bb.dx:                                            ; preds = %bb.dv
  %i.anl = load ptr, ptr %i.ane, align 8, !tbaa !118
  %i.anm = getelementptr inbounds i8, ptr %i.anl, i64 %i.ang
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.anm, ptr align 1 %i.anb, i64 %i.and, i1 false)
  %i.ann = load ptr, ptr %i.aaw, align 8, !tbaa !115
  %i.ano = getelementptr inbounds nuw i8, ptr %i.ann, i64 16 ; 2 uses
  %i.anp = load i64, ptr %i.ano, align 8, !tbaa !116
  %i.anq = add i64 %i.anp, %i.and
  store i64 %i.anq, ptr %i.ano, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit

bb.dy:                                            ; preds = %bb.a
  %i.anr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ans = load ptr, ptr %i.anr, align 8, !tbaa !641, !nonnull !9, !align !640 ; 5 uses
  %i.ant = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.anu = load ptr, ptr %i.ant, align 8, !tbaa !642, !nonnull !9, !align !640
  %i.anv = load ptr, ptr %i.anu, align 8, !tbaa !52 ; 15 uses
  %i.anw = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.anx = icmp eq ptr %i.anw, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIsEE, i64 16)
  %i.any = select i1 %i.anx, ptr %i.d, ptr null
  %i.anz = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.aoa = load ptr, ptr %i.anz, align 8, !tbaa !654 ; 3 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.any, i64 40 ; 2 uses
  %i.aoc = load ptr, ptr %i.aob, align 8, !tbaa !83
  %.not5.i159 = icmp eq ptr %i.aoc, null
  br i1 %.not5.i159, label %bb.dz, label %.preheader11.i160

.preheader11.i160:                                ; preds = %bb.dy
  %i.aod = getelementptr inbounds nuw i8, ptr %i.ans, i64 8 ; 2 uses
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !84 ; 2 uses
  %i.aof = load ptr, ptr %i.ans, align 8, !tbaa !87 ; 2 uses
  %.not27.i161 = icmp eq ptr %i.aoe, %i.aof
  br i1 %.not27.i161, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph19.i162

.lr.ph19.i162:                                    ; preds = %.preheader11.i160
  %i.aog = getelementptr inbounds nuw i8, ptr %i.anv, i64 64 ; 3 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.anv, i64 68 ; 4 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.anv, i64 104 ; 3 uses
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.anv, i64 152 ; 9 uses
  %i.aok = getelementptr inbounds nuw i8, ptr %i.anv, i64 76
  %i.aol = getelementptr inbounds nuw i8, ptr %i.anv, i64 72 ; 2 uses
  %i.aom = getelementptr inbounds nuw i8, ptr %i.anv, i64 216 ; 2 uses
  %i.aon = getelementptr inbounds nuw i8, ptr %i.anv, i64 168
  %i.aoo = getelementptr inbounds nuw i8, ptr %i.anv, i64 280 ; 4 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.anv, i64 232 ; 2 uses
  br label %bb.ee

bb.dz:                                            ; preds = %bb.dy
  %i.aoq = load ptr, ptr %i.ans, align 8, !tbaa !87 ; 2 uses
  %i.aor = getelementptr inbounds nuw i8, ptr %i.ans, i64 8
  %i.aos = load ptr, ptr %i.aor, align 8, !tbaa !84 ; 2 uses
  %.not23.i275 = icmp eq ptr %i.aoq, %i.aos
  br i1 %.not23.i275, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph26.i276

.lr.ph26.i276:                                    ; preds = %bb.dz
  %i.aot = getelementptr inbounds nuw i8, ptr %i.anv, i64 68
  %i.aou = getelementptr inbounds nuw i8, ptr %i.anv, i64 104
  %i.aov = getelementptr inbounds nuw i8, ptr %i.anv, i64 64 ; 2 uses
  %i.aow = getelementptr inbounds nuw i8, ptr %i.anv, i64 280 ; 2 uses
  %i.aox = getelementptr inbounds nuw i8, ptr %i.anv, i64 232
  br label %bb.ea

bb.ea:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIsEEvN5folly5RangeIPKT_EE.exit.i, %.lr.ph26.i276
  %.05024.i277 = phi ptr [ %i.aoq, %.lr.ph26.i276 ], [ %i.apx, %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIsEEvN5folly5RangeIPKT_EE.exit.i ] ; 3 uses
  %i.aoy = getelementptr inbounds nuw i8, ptr %.05024.i277, i64 4 ; 2 uses
  %i.aoz = load i32, ptr %i.aoy, align 4, !tbaa !88 ; 3 uses
  %i.apa = load i32, ptr %i.aot, align 4, !tbaa !90
  %i.apb = icmp sgt i32 %i.apa, 0
  br i1 %i.apb, label %bb.eb, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i278

bb.eb:                                            ; preds = %bb.ea
  %i.apc = sext i32 %i.aoz to i64
  tail call void @_ZN8facebook5velox16ByteOutputStream10appendBoolEbl(ptr noundef nonnull align 8 dereferenceable(64) %i.aou, i1 noundef zeroext false, i64 noundef %i.apc)
  %.pre44.i281 = load i32, ptr %i.aoy, align 4, !tbaa !88
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i278

_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i278: ; preds = %bb.eb, %bb.ea
  %i.apd = phi i32 [ %i.aoz, %bb.ea ], [ %.pre44.i281, %bb.eb ]
  %i.ape = load i32, ptr %i.aov, align 8, !tbaa !113
  %i.apf = add nsw i32 %i.ape, %i.aoz
  store i32 %i.apf, ptr %i.aov, align 8, !tbaa !113
  %i.apg = load i32, ptr %.05024.i277, align 4, !tbaa !114
  %i.aph = sext i32 %i.apg to i64
  %i.api = getelementptr inbounds [2 x i8], ptr %i.aoa, i64 %i.aph ; 2 uses
  %i.apj = sext i32 %i.apd to i64
  %i.apk = load ptr, ptr %i.aow, align 8, !tbaa !115 ; 3 uses
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 16
  %i.apm = load i64, ptr %i.apl, align 8, !tbaa !116 ; 2 uses
  %.idx.i279 = shl nuw nsw i64 %i.apj, 1          ; 4 uses
  %i.apn = add i64 %i.apm, %.idx.i279
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apk, i64 8
  %i.app = load i64, ptr %i.apo, align 8, !tbaa !117
  %i.apq = icmp ugt i64 %i.apn, %i.app
  br i1 %i.apq, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i278
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.aox, i64 %.idx.i279, ptr %i.api)
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIsEEvN5folly5RangeIPKT_EE.exit.i

bb.ed:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i278
  %i.apr = load ptr, ptr %i.apk, align 8, !tbaa !118
  %i.aps = getelementptr inbounds i8, ptr %i.apr, i64 %i.apm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aps, ptr align 2 %i.api, i64 %.idx.i279, i1 false)
  %i.apt = load ptr, ptr %i.aow, align 8, !tbaa !115
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 16 ; 2 uses
  %i.apv = load i64, ptr %i.apu, align 8, !tbaa !116
  %i.apw = add i64 %i.apv, %.idx.i279
  store i64 %i.apw, ptr %i.apu, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIsEEvN5folly5RangeIPKT_EE.exit.i

_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIsEEvN5folly5RangeIPKT_EE.exit.i: ; preds = %bb.ed, %bb.ec
  %i.apx = getelementptr inbounds nuw i8, ptr %.05024.i277, i64 8 ; 2 uses
  %.not.i280 = icmp eq ptr %i.apx, %i.aos
  br i1 %.not.i280, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.ea

._crit_edge20.i170:                               ; preds = %._crit_edge.i166
  %.not58.i171 = icmp eq i32 %.154.lcssa.i167, -1
  br i1 %.not58.i171, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.fn

bb.ee:                                            ; preds = %._crit_edge.i166, %.lr.ph19.i162
  %i.apy = phi ptr [ %i.aof, %.lr.ph19.i162 ], [ %i.aqg, %._crit_edge.i166 ] ; 2 uses
  %i.apz = phi ptr [ %i.aoe, %.lr.ph19.i162 ], [ %i.aqh, %._crit_edge.i166 ]
  %indvars.iv.i163 = phi i64 [ 0, %.lr.ph19.i162 ], [ %indvars.iv.next.i169, %._crit_edge.i166 ] ; 2 uses
  %.05217.i164 = phi i32 [ -1, %.lr.ph19.i162 ], [ %.1.lcssa.i168, %._crit_edge.i166 ] ; 2 uses
  %.05316.i165 = phi i32 [ -1, %.lr.ph19.i162 ], [ %.154.lcssa.i167, %._crit_edge.i166 ] ; 2 uses
  %i.aqa = getelementptr inbounds nuw [8 x i8], ptr %i.apy, i64 %indvars.iv.i163 ; 2 uses
  %i.aqb = load i32, ptr %i.aqa, align 4, !tbaa !114 ; 2 uses
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aqa, i64 4
  %i.aqd = load i32, ptr %i.aqc, align 4, !tbaa !88 ; 2 uses
  %i.aqe = add nsw i32 %i.aqd, %i.aqb
  %i.aqf = icmp sgt i32 %i.aqd, 0
  br i1 %i.aqf, label %.lr.ph.i174, label %._crit_edge.i166

._crit_edge.loopexit.i188:                        ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i185
  %.pre42.i189 = load ptr, ptr %i.aod, align 8, !tbaa !84
  %.pre43.i190 = load ptr, ptr %i.ans, align 8, !tbaa !87
  br label %._crit_edge.i166

._crit_edge.i166:                                 ; preds = %._crit_edge.loopexit.i188, %bb.ee
  %i.aqg = phi ptr [ %i.apy, %bb.ee ], [ %.pre43.i190, %._crit_edge.loopexit.i188 ] ; 2 uses
  %i.aqh = phi ptr [ %i.apz, %bb.ee ], [ %.pre42.i189, %._crit_edge.loopexit.i188 ] ; 2 uses
  %.154.lcssa.i167 = phi i32 [ %.05316.i165, %bb.ee ], [ %.255.i186, %._crit_edge.loopexit.i188 ] ; 4 uses
  %.1.lcssa.i168 = phi i32 [ %.05217.i164, %bb.ee ], [ %.2.i187, %._crit_edge.loopexit.i188 ] ; 2 uses
  %indvars.iv.next.i169 = add nuw nsw i64 %indvars.iv.i163, 1 ; 2 uses
  %i.aqi = ptrtoint ptr %i.aqh to i64
  %i.aqj = ptrtoint ptr %i.aqg to i64
  %i.aqk = sub i64 %i.aqi, %i.aqj
  %i.aql = ashr exact i64 %i.aqk, 3
  %i.aqm = icmp ugt i64 %i.aql, %indvars.iv.next.i169
  br i1 %i.aqm, label %bb.ee, label %._crit_edge20.i170, !llvm.loop !657

.lr.ph.i174:                                      ; preds = %bb.ee, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i185
  %.014.i175 = phi i32 [ %i.baq, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i185 ], [ %i.aqb, %bb.ee ] ; 10 uses
  %.113.i176 = phi i32 [ %.2.i187, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i185 ], [ %.05217.i164, %bb.ee ] ; 4 uses
  %.15412.i177 = phi i32 [ %.255.i186, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i185 ], [ %.05316.i165, %bb.ee ] ; 7 uses
  %i.aqn = load ptr, ptr %i.aob, align 8, !tbaa !83 ; 2 uses
  %.not.i.i178 = icmp eq ptr %i.aqn, null
  br i1 %.not.i.i178, label %.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i273, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i179

.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i273: ; preds = %.lr.ph.i174
  %.pre35.i274 = load i32, ptr %i.aoh, align 4, !tbaa !90
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i182

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i179: ; preds = %.lr.ph.i174
  %i.aqo = zext i32 %.014.i175 to i64             ; 2 uses
  %i.aqp = lshr i64 %i.aqo, 6
  %i.aqq = getelementptr inbounds nuw [8 x i8], ptr %i.aqn, i64 %i.aqp
  %i.aqr = load i64, ptr %i.aqq, align 8, !tbaa !121
  %i.aqs = and i64 %i.aqo, 63
  %i.aqt = shl nuw i64 1, %i.aqs
  %i.aqu = and i64 %i.aqr, %i.aqt
  %.not.i.i.i180 = icmp eq i64 %i.aqu, 0
  %.pre36.i181 = load i32, ptr %i.aoh, align 4    ; 2 uses
  br i1 %.not.i.i.i180, label %bb.ef, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i182

bb.ef:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i179
  %i.aqv = load i32, ptr %i.aog, align 8, !tbaa !113 ; 3 uses
  %.not.i59.i218 = icmp ne i32 %i.aqv, 0
  %i.aqw = icmp eq i32 %.pre36.i181, 0
  %or.cond.i.i219 = select i1 %.not.i59.i218, i1 %i.aqw, i1 false
  br i1 %or.cond.i.i219, label %bb.eg, label %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i220

._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i220: ; preds = %bb.ef
  %.pre.i221 = load ptr, ptr %i.aoj, align 8, !tbaa !115 ; 2 uses
  %.phi.trans.insert.i222 = getelementptr inbounds nuw i8, ptr %.pre.i221, i64 16
  %.pre29.i223 = load i64, ptr %.phi.trans.insert.i222, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i224

bb.eg:                                            ; preds = %bb.ef
  %i.aqx = sext i32 %i.aqv to i64                 ; 3 uses
  %i.aqy = icmp eq i32 %i.aqv, 1
  br i1 %i.aqy, label %bb.eh, label %bb.ej

bb.eh:                                            ; preds = %bb.eg
  %i.aqz = load ptr, ptr %i.aoj, align 8, !tbaa !115 ; 3 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 8
  %i.arb = load i64, ptr %i.ara, align 8, !tbaa !117
  %i.arc = getelementptr inbounds nuw i8, ptr %i.aqz, i64 16
  %i.ard = load i64, ptr %i.arc, align 8, !tbaa !116 ; 3 uses
  %i.are = icmp sgt i64 %i.arb, %i.ard
  br i1 %i.are, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.arf = load ptr, ptr %i.aqz, align 8, !tbaa !118
  %i.arg = lshr i64 %i.ard, 3
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arf, i64 %i.arg ; 2 uses
  %i.ari = load i8, ptr %i.arh, align 1, !tbaa !34
  %i.arj = and i64 %i.ard, 7
  %i.ark = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.arj
  %i.arl = load i8, ptr %i.ark, align 1, !tbaa !34
  %i.arm = and i8 %i.arl, %i.ari
  store i8 %i.arm, ptr %i.arh, align 1, !tbaa !34
  %i.arn = load ptr, ptr %i.aoj, align 8, !tbaa !115 ; 2 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 16 ; 2 uses
  %i.arp = load i64, ptr %i.aro, align 8, !tbaa !116
  %i.arq = add nsw i64 %i.arp, 1                  ; 2 uses
  store i64 %i.arq, ptr %i.aro, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i224

bb.ej:                                            ; preds = %bb.eh, %bb.eg
  %i.arr = add nsw i64 %i.aqx, 7
  br label %bb.ek

bb.ek:                                            ; preds = %bb.eq, %bb.ej
  %.014.i64.i252 = phi i64 [ 0, %bb.ej ], [ %i.atp, %bb.eq ] ; 2 uses
  %i.ars = sub nsw i64 %i.aqx, %.014.i64.i252
  %i.art = load ptr, ptr %i.aoj, align 8, !tbaa !115 ; 4 uses
  %i.aru = getelementptr inbounds nuw i8, ptr %i.art, i64 8
  %i.arv = load i64, ptr %i.aru, align 8, !tbaa !117
  %i.arw = getelementptr inbounds nuw i8, ptr %i.art, i64 16 ; 3 uses
  %i.arx = load i64, ptr %i.arw, align 8, !tbaa !116 ; 3 uses
  %i.ary = sub nsw i64 %i.arv, %i.arx
  %.sroa.speculated.i65.i253 = tail call i64 @llvm.smin.i64(i64 %i.ary, i64 %i.ars) ; 3 uses
  %i.arz = load ptr, ptr %i.art, align 8, !tbaa !118 ; 3 uses
  %i.asa = trunc i64 %i.arx to i32                ; 6 uses
  %i.asb = add nsw i64 %.sroa.speculated.i65.i253, %i.arx ; 3 uses
  %i.asc = trunc i64 %i.asb to i32                ; 4 uses
  %.not.i.i.i66.i254 = icmp slt i32 %i.asa, %i.asc
  br i1 %.not.i.i.i66.i254, label %bb.el, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i255

bb.el:                                            ; preds = %bb.ek
  %i.asd = add i32 %i.asa, 63                     ; 2 uses
  %i.ase = srem i32 %i.asd, 64
  %i.asf = sub nsw i32 %i.asd, %i.ase             ; 6 uses
  %i.asg = and i32 %i.asc, -64                    ; 4 uses
  %i.ash = icmp slt i32 %i.asg, %i.asf
  br i1 %i.ash, label %bb.em, label %bb.en

bb.em:                                            ; preds = %bb.el
  %i.asi = and i64 %i.asb, 63
  %notmask.i.i.i.i79.i270 = shl nsw i64 -1, %i.asi
  %i.asj = sub nsw i32 %i.asf, %i.asa             ; 2 uses
  %i.ask = zext nneg i32 %i.asj to i64
  %notmask.i.i.i.i.i80.i271 = shl nsw i64 -1, %i.ask
  %i.asl = xor i64 %notmask.i.i.i.i.i80.i271, -1
  %i.asm = sub nsw i32 64, %i.asj
  %i.asn = zext nneg i32 %i.asm to i64
  %i.aso = shl i64 %i.asl, %i.asn
  %.not7.i272 = xor i64 %i.aso, -1
  %i.asp = or i64 %notmask.i.i.i.i79.i270, %.not7.i272
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i267

bb.en:                                            ; preds = %bb.el
  %.not32.i.i.i69.i257 = icmp eq i32 %i.asf, %i.asa
  br i1 %.not32.i.i.i69.i257, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i259, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.asq = sdiv i32 %i.asa, 64
  %i.asr = sub nsw i32 %i.asf, %i.asa             ; 2 uses
  %i.ass = zext nneg i32 %i.asr to i64
  %notmask.i.i35.i.i.i70.i258 = shl nsw i64 -1, %i.ass
  %i.ast = xor i64 %notmask.i.i35.i.i.i70.i258, -1
  %i.asu = sub nsw i32 64, %i.asr
  %i.asv = zext nneg i32 %i.asu to i64
  %i.asw = shl i64 %i.ast, %i.asv
  %i.asx = xor i64 %i.asw, -1
  %i.asy = sext i32 %i.asq to i64
  %i.asz = getelementptr inbounds [8 x i8], ptr %i.arz, i64 %i.asy ; 2 uses
  %i.ata = load i64, ptr %i.asz, align 8, !tbaa !121
  %i.atb = and i64 %i.ata, %i.asx
  store i64 %i.atb, ptr %i.asz, align 8, !tbaa !121
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i259

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i259: ; preds = %bb.eo, %bb.en
  %i.atc = add nsw i32 %i.asf, 64                 ; 2 uses
  %.not3347.i.i.i72.i260 = icmp sgt i32 %i.atc, %i.asg
  br i1 %.not3347.i.i.i72.i260, label %._crit_edge.i.i.i76.i264, label %.lr.ph.i.i.i73.i261

._crit_edge.i.i.i76.i264:                         ; preds = %.lr.ph.i.i.i73.i261, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i259
  %.not34.i.i.i77.i265 = icmp eq i32 %i.asg, %i.asc
  br i1 %.not34.i.i.i77.i265, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i255, label %bb.ep

.lr.ph.i.i.i73.i261:                              ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i259, %.lr.ph.i.i.i73.i261
  %i.atd = phi i32 [ %i.ath, %.lr.ph.i.i.i73.i261 ], [ %i.atc, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i259 ] ; 2 uses
  %.048.i.i.i74.i262 = phi i32 [ %i.atd, %.lr.ph.i.i.i73.i261 ], [ %i.asf, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i259 ]
  %i.ate = sdiv i32 %.048.i.i.i74.i262, 64
  %i.atf = sext i32 %i.ate to i64
  %i.atg = getelementptr inbounds [8 x i8], ptr %i.arz, i64 %i.atf
  store i64 0, ptr %i.atg, align 8, !tbaa !121
  %i.ath = add nsw i32 %i.atd, 64                 ; 2 uses
  %.not33.i.i.i75.i263 = icmp sgt i32 %i.ath, %i.asg
  br i1 %.not33.i.i.i75.i263, label %._crit_edge.i.i.i76.i264, label %.lr.ph.i.i.i73.i261, !llvm.loop !122

bb.ep:                                            ; preds = %._crit_edge.i.i.i76.i264
  %i.ati = and i64 %i.asb, 63
  %notmask.i37.i.i.i78.i266 = shl nsw i64 -1, %i.ati
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i267

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i267: ; preds = %bb.ep, %bb.em
  %notmask.i37.i.i.i78.sink.i268 = phi i64 [ %notmask.i37.i.i.i78.i266, %bb.ep ], [ %i.asp, %bb.em ]
  %.sink.i269 = ashr i32 %i.asc, 6
  %i.atj = sext i32 %.sink.i269 to i64
  %i.atk = getelementptr inbounds [8 x i8], ptr %i.arz, i64 %i.atj ; 2 uses
  %i.atl = load i64, ptr %i.atk, align 8, !tbaa !121
  %i.atm = and i64 %i.atl, %notmask.i37.i.i.i78.sink.i268
  store i64 %i.atm, ptr %i.atk, align 8, !tbaa !121
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i255

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i255: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i267, %._crit_edge.i.i.i76.i264, %bb.ek
  %i.atn = load i64, ptr %i.arw, align 8, !tbaa !116
  %i.ato = add nsw i64 %i.atn, %.sroa.speculated.i65.i253 ; 2 uses
  store i64 %i.ato, ptr %i.arw, align 8, !tbaa !116
  %i.atp = add nsw i64 %.sroa.speculated.i65.i253, %.014.i64.i252 ; 3 uses
  %.not.i68.i256 = icmp eq i64 %i.atp, %i.aqx
  br i1 %.not.i68.i256, label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i224, label %bb.eq

bb.eq:                                            ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i255
  %i.atq = sub i64 %i.arr, %i.atp
  %i.atr = lshr i64 %i.atq, 3
  tail call void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64) %i.aoi, i64 noundef %i.atr)
  br label %bb.ek, !llvm.loop !123

_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i224: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i255, %bb.ei, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i220
  %i.ats = phi i64 [ %.pre29.i223, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i220 ], [ %i.arq, %bb.ei ], [ %i.ato, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i255 ] ; 4 uses
  %i.att = phi ptr [ %.pre.i221, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i220 ], [ %i.arn, %bb.ei ], [ %i.art, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i255 ] ; 3 uses
  %i.atu = getelementptr inbounds nuw i8, ptr %i.att, i64 8
  %i.atv = load i64, ptr %i.atu, align 8, !tbaa !117 ; 2 uses
  %i.atw = icmp sgt i64 %i.atv, %i.ats
  br i1 %i.atw, label %bb.er, label %.preheader10.i225

bb.er:                                            ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i224
  %i.atx = load ptr, ptr %i.att, align 8, !tbaa !118
  %i.aty = lshr i64 %i.ats, 3
  %i.atz = getelementptr inbounds nuw i8, ptr %i.atx, i64 %i.aty ; 2 uses
  %i.aua = load i8, ptr %i.atz, align 1, !tbaa !34
  %i.aub = trunc i64 %i.ats to i8
  %i.auc = and i8 %i.aub, 7
  %i.aud = shl nuw i8 1, %i.auc
  %i.aue = or i8 %i.aua, %i.aud
  store i8 %i.aue, ptr %i.atz, align 1, !tbaa !34
  %i.auf = load ptr, ptr %i.aoj, align 8, !tbaa !115
  %i.aug = getelementptr inbounds nuw i8, ptr %i.auf, i64 16 ; 2 uses
  %i.auh = load i64, ptr %i.aug, align 8, !tbaa !116
  %i.aui = add nsw i64 %i.auh, 1
  store i64 %i.aui, ptr %i.aug, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i236

.preheader10.i225:                                ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i224, %bb.ex
  %i.auj = phi i64 [ %.pre34.i235, %bb.ex ], [ %i.ats, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i224 ] ; 3 uses
  %i.auk = phi i64 [ %.pre32.i233, %bb.ex ], [ %i.atv, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i224 ]
  %i.aul = phi ptr [ %.pre30.i231, %bb.ex ], [ %i.att, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i224 ] ; 2 uses
  %.014.i.i226 = phi i64 [ %i.awg, %bb.ex ], [ 0, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i224 ] ; 2 uses
  %i.aum = sub nsw i64 1, %.014.i.i226
  %i.aun = getelementptr inbounds nuw i8, ptr %i.aul, i64 16 ; 2 uses
  %i.auo = sub nsw i64 %i.auk, %i.auj
  %.sroa.speculated.i.i227 = tail call i64 @llvm.smin.i64(i64 %i.auo, i64 %i.aum) ; 3 uses
  %i.aup = load ptr, ptr %i.aul, align 8, !tbaa !118 ; 3 uses
  %i.auq = trunc i64 %i.auj to i32                ; 6 uses
  %i.aur = add nsw i64 %.sroa.speculated.i.i227, %i.auj ; 3 uses
  %i.aus = trunc i64 %i.aur to i32                ; 4 uses
  %.not.i.i.i.i228 = icmp slt i32 %i.auq, %i.aus
  br i1 %.not.i.i.i.i228, label %bb.es, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i229

end_hunk_4
begin_hunk_5_@"_ZZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEvENKUlvE_clEv":bb.a

_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i185: ; preds = %bb.fm, %bb.fl, %bb.fj, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i183, %bb.fa, %bb.ez, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i236
  %.255.i186 = phi i32 [ %.15412.i177, %bb.fj ], [ %.15412.i177, %bb.fa ], [ %.014.i175, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i183 ], [ %.15412.i177, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i236 ], [ %.15412.i177, %bb.ez ], [ %.014.i175, %bb.fl ], [ %.014.i175, %bb.fm ] ; 2 uses
  %.2.i187 = phi i32 [ %.014.i175, %bb.fj ], [ %.113.i176, %bb.fa ], [ %.014.i175, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i183 ], [ %.113.i176, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i236 ], [ %.113.i176, %bb.ez ], [ %.014.i175, %bb.fl ], [ %.014.i175, %bb.fm ] ; 2 uses
  %i.baq = add nsw i32 %.014.i175, 1              ; 2 uses
  %i.bar = icmp slt i32 %i.baq, %i.aqe
  br i1 %i.bar, label %.lr.ph.i174, label %._crit_edge.loopexit.i188, !llvm.loop !658

bb.fn:                                            ; preds = %._crit_edge20.i170
  %i.bas = sext i32 %.154.lcssa.i167 to i64
  %i.bat = getelementptr inbounds [2 x i8], ptr %i.aoa, i64 %i.bas ; 2 uses
  %reass.sub1070 = sub i32 %.1.lcssa.i168, %.154.lcssa.i167
  %i.bau = add i32 %reass.sub1070, 1
  %i.bav = sext i32 %i.bau to i64
  %i.baw = load ptr, ptr %i.aoo, align 8, !tbaa !115 ; 3 uses
  %i.bax = getelementptr inbounds nuw i8, ptr %i.baw, i64 16
  %i.bay = load i64, ptr %i.bax, align 8, !tbaa !116 ; 2 uses
  %.idx6.i173 = shl nuw nsw i64 %i.bav, 1         ; 4 uses
  %i.baz = add i64 %i.bay, %.idx6.i173
  %i.bba = getelementptr inbounds nuw i8, ptr %i.baw, i64 8
  %i.bbb = load i64, ptr %i.bba, align 8, !tbaa !117
  %i.bbc = icmp ugt i64 %i.baz, %i.bbb
  br i1 %i.bbc, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.aop, i64 %.idx6.i173, ptr %i.bat)
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit

bb.fp:                                            ; preds = %bb.fn
  %i.bbd = load ptr, ptr %i.baw, align 8, !tbaa !118
  %i.bbe = getelementptr inbounds i8, ptr %i.bbd, i64 %i.bay
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bbe, ptr align 2 %i.bat, i64 %.idx6.i173, i1 false)
  %i.bbf = load ptr, ptr %i.aoo, align 8, !tbaa !115
  %i.bbg = getelementptr inbounds nuw i8, ptr %i.bbf, i64 16 ; 2 uses
  %i.bbh = load i64, ptr %i.bbg, align 8, !tbaa !116
  %i.bbi = add i64 %i.bbh, %.idx6.i173
  store i64 %i.bbi, ptr %i.bbg, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit

bb.fq:                                            ; preds = %bb.a
  %i.bbj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bbk = load ptr, ptr %i.bbj, align 8, !tbaa !641, !nonnull !9, !align !640 ; 5 uses
  %i.bbl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bbm = load ptr, ptr %i.bbl, align 8, !tbaa !642, !nonnull !9, !align !640
  %i.bbn = load ptr, ptr %i.bbm, align 8, !tbaa !52 ; 15 uses
  %i.bbo = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.bbp = icmp eq ptr %i.bbo, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIlEE, i64 16)
  %i.bbq = select i1 %i.bbp, ptr %i.d, ptr null
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.bbs = load ptr, ptr %i.bbr, align 8, !tbaa !659 ; 3 uses
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbq, i64 40 ; 2 uses
  %i.bbu = load ptr, ptr %i.bbt, align 8, !tbaa !83
  %.not5.i282 = icmp eq ptr %i.bbu, null
  br i1 %.not5.i282, label %bb.fr, label %.preheader11.i283

.preheader11.i283:                                ; preds = %bb.fq
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbk, i64 8 ; 2 uses
  %i.bbw = load ptr, ptr %i.bbv, align 8, !tbaa !84 ; 2 uses
  %i.bbx = load ptr, ptr %i.bbk, align 8, !tbaa !87 ; 2 uses
  %.not27.i284 = icmp eq ptr %i.bbw, %i.bbx
  br i1 %.not27.i284, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph19.i285

.lr.ph19.i285:                                    ; preds = %.preheader11.i283
  %i.bby = getelementptr inbounds nuw i8, ptr %i.bbn, i64 64 ; 3 uses
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bbn, i64 68 ; 4 uses
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbn, i64 104 ; 3 uses
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bbn, i64 152 ; 9 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %i.bbn, i64 76
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bbn, i64 72 ; 2 uses
  %i.bce = getelementptr inbounds nuw i8, ptr %i.bbn, i64 216 ; 2 uses
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bbn, i64 168
  %i.bcg = getelementptr inbounds nuw i8, ptr %i.bbn, i64 280 ; 4 uses
  %i.bch = getelementptr inbounds nuw i8, ptr %i.bbn, i64 232 ; 2 uses
  br label %bb.fw

bb.fr:                                            ; preds = %bb.fq
  %i.bci = load ptr, ptr %i.bbk, align 8, !tbaa !87 ; 2 uses
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bbk, i64 8
  %i.bck = load ptr, ptr %i.bcj, align 8, !tbaa !84 ; 2 uses
  %.not23.i398 = icmp eq ptr %i.bci, %i.bck
  br i1 %.not23.i398, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph26.i399

.lr.ph26.i399:                                    ; preds = %bb.fr
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bbn, i64 68
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bbn, i64 104
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bbn, i64 64 ; 2 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bbn, i64 280 ; 2 uses
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bbn, i64 232
  br label %bb.fs

bb.fs:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIlEEvN5folly5RangeIPKT_EE.exit.i, %.lr.ph26.i399
  %.05024.i400 = phi ptr [ %i.bci, %.lr.ph26.i399 ], [ %i.bdp, %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIlEEvN5folly5RangeIPKT_EE.exit.i ] ; 3 uses
  %i.bcq = getelementptr inbounds nuw i8, ptr %.05024.i400, i64 4 ; 2 uses
  %i.bcr = load i32, ptr %i.bcq, align 4, !tbaa !88 ; 3 uses
  %i.bcs = load i32, ptr %i.bcl, align 4, !tbaa !90
  %i.bct = icmp sgt i32 %i.bcs, 0
  br i1 %i.bct, label %bb.ft, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i401

bb.ft:                                            ; preds = %bb.fs
  %i.bcu = sext i32 %i.bcr to i64
  tail call void @_ZN8facebook5velox16ByteOutputStream10appendBoolEbl(ptr noundef nonnull align 8 dereferenceable(64) %i.bcm, i1 noundef zeroext false, i64 noundef %i.bcu)
  %.pre44.i404 = load i32, ptr %i.bcq, align 4, !tbaa !88
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i401

_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i401: ; preds = %bb.ft, %bb.fs
  %i.bcv = phi i32 [ %i.bcr, %bb.fs ], [ %.pre44.i404, %bb.ft ]
  %i.bcw = load i32, ptr %i.bcn, align 8, !tbaa !113
  %i.bcx = add nsw i32 %i.bcw, %i.bcr
  store i32 %i.bcx, ptr %i.bcn, align 8, !tbaa !113
  %i.bcy = load i32, ptr %.05024.i400, align 4, !tbaa !114
  %i.bcz = sext i32 %i.bcy to i64
  %i.bda = getelementptr inbounds [8 x i8], ptr %i.bbs, i64 %i.bcz ; 2 uses
  %i.bdb = sext i32 %i.bcv to i64
  %i.bdc = load ptr, ptr %i.bco, align 8, !tbaa !115 ; 3 uses
  %i.bdd = getelementptr inbounds nuw i8, ptr %i.bdc, i64 16
  %i.bde = load i64, ptr %i.bdd, align 8, !tbaa !116 ; 2 uses
  %.idx.i402 = shl nuw nsw i64 %i.bdb, 3          ; 4 uses
  %i.bdf = add i64 %i.bde, %.idx.i402
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bdc, i64 8
  %i.bdh = load i64, ptr %i.bdg, align 8, !tbaa !117
  %i.bdi = icmp ugt i64 %i.bdf, %i.bdh
  br i1 %i.bdi, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i401
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bcp, i64 %.idx.i402, ptr %i.bda)
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIlEEvN5folly5RangeIPKT_EE.exit.i

bb.fv:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i401
  %i.bdj = load ptr, ptr %i.bdc, align 8, !tbaa !118
  %i.bdk = getelementptr inbounds i8, ptr %i.bdj, i64 %i.bde
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bdk, ptr align 8 %i.bda, i64 %.idx.i402, i1 false)
  %i.bdl = load ptr, ptr %i.bco, align 8, !tbaa !115
  %i.bdm = getelementptr inbounds nuw i8, ptr %i.bdl, i64 16 ; 2 uses
  %i.bdn = load i64, ptr %i.bdm, align 8, !tbaa !116
  %i.bdo = add i64 %i.bdn, %.idx.i402
  store i64 %i.bdo, ptr %i.bdm, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIlEEvN5folly5RangeIPKT_EE.exit.i

_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIlEEvN5folly5RangeIPKT_EE.exit.i: ; preds = %bb.fv, %bb.fu
  %i.bdp = getelementptr inbounds nuw i8, ptr %.05024.i400, i64 8 ; 2 uses
  %.not.i403 = icmp eq ptr %i.bdp, %i.bck
  br i1 %.not.i403, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.fs

._crit_edge20.i293:                               ; preds = %._crit_edge.i289
  %.not58.i294 = icmp eq i32 %.154.lcssa.i290, -1
  br i1 %.not58.i294, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.hf

bb.fw:                                            ; preds = %._crit_edge.i289, %.lr.ph19.i285
  %i.bdq = phi ptr [ %i.bbx, %.lr.ph19.i285 ], [ %i.bdy, %._crit_edge.i289 ] ; 2 uses
  %i.bdr = phi ptr [ %i.bbw, %.lr.ph19.i285 ], [ %i.bdz, %._crit_edge.i289 ]
  %indvars.iv.i286 = phi i64 [ 0, %.lr.ph19.i285 ], [ %indvars.iv.next.i292, %._crit_edge.i289 ] ; 2 uses
  %.05217.i287 = phi i32 [ -1, %.lr.ph19.i285 ], [ %.1.lcssa.i291, %._crit_edge.i289 ] ; 2 uses
  %.05316.i288 = phi i32 [ -1, %.lr.ph19.i285 ], [ %.154.lcssa.i290, %._crit_edge.i289 ] ; 2 uses
  %i.bds = getelementptr inbounds nuw [8 x i8], ptr %i.bdq, i64 %indvars.iv.i286 ; 2 uses
  %i.bdt = load i32, ptr %i.bds, align 4, !tbaa !114 ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bds, i64 4
  %i.bdv = load i32, ptr %i.bdu, align 4, !tbaa !88 ; 2 uses
  %i.bdw = add nsw i32 %i.bdv, %i.bdt
  %i.bdx = icmp sgt i32 %i.bdv, 0
  br i1 %i.bdx, label %.lr.ph.i297, label %._crit_edge.i289

._crit_edge.loopexit.i311:                        ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i308
  %.pre42.i312 = load ptr, ptr %i.bbv, align 8, !tbaa !84
  %.pre43.i313 = load ptr, ptr %i.bbk, align 8, !tbaa !87
  br label %._crit_edge.i289

._crit_edge.i289:                                 ; preds = %._crit_edge.loopexit.i311, %bb.fw
  %i.bdy = phi ptr [ %i.bdq, %bb.fw ], [ %.pre43.i313, %._crit_edge.loopexit.i311 ] ; 2 uses
  %i.bdz = phi ptr [ %i.bdr, %bb.fw ], [ %.pre42.i312, %._crit_edge.loopexit.i311 ] ; 2 uses
  %.154.lcssa.i290 = phi i32 [ %.05316.i288, %bb.fw ], [ %.255.i309, %._crit_edge.loopexit.i311 ] ; 4 uses
  %.1.lcssa.i291 = phi i32 [ %.05217.i287, %bb.fw ], [ %.2.i310, %._crit_edge.loopexit.i311 ] ; 2 uses
  %indvars.iv.next.i292 = add nuw nsw i64 %indvars.iv.i286, 1 ; 2 uses
  %i.bea = ptrtoint ptr %i.bdz to i64
  %i.beb = ptrtoint ptr %i.bdy to i64
  %i.bec = sub i64 %i.bea, %i.beb
  %i.bed = ashr exact i64 %i.bec, 3
  %i.bee = icmp ugt i64 %i.bed, %indvars.iv.next.i292
  br i1 %i.bee, label %bb.fw, label %._crit_edge20.i293, !llvm.loop !661

.lr.ph.i297:                                      ; preds = %bb.fw, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i308
  %.014.i298 = phi i32 [ %i.boi, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i308 ], [ %i.bdt, %bb.fw ] ; 10 uses
  %.113.i299 = phi i32 [ %.2.i310, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i308 ], [ %.05217.i287, %bb.fw ] ; 4 uses
  %.15412.i300 = phi i32 [ %.255.i309, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i308 ], [ %.05316.i288, %bb.fw ] ; 7 uses
  %i.bef = load ptr, ptr %i.bbt, align 8, !tbaa !83 ; 2 uses
  %.not.i.i301 = icmp eq ptr %i.bef, null
  br i1 %.not.i.i301, label %.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i396, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i302

.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i396: ; preds = %.lr.ph.i297
  %.pre35.i397 = load i32, ptr %i.bbz, align 4, !tbaa !90
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i305

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i302: ; preds = %.lr.ph.i297
  %i.beg = zext i32 %.014.i298 to i64             ; 2 uses
  %i.beh = lshr i64 %i.beg, 6
  %i.bei = getelementptr inbounds nuw [8 x i8], ptr %i.bef, i64 %i.beh
  %i.bej = load i64, ptr %i.bei, align 8, !tbaa !121
  %i.bek = and i64 %i.beg, 63
  %i.bel = shl nuw i64 1, %i.bek
  %i.bem = and i64 %i.bej, %i.bel
  %.not.i.i.i303 = icmp eq i64 %i.bem, 0
  %.pre36.i304 = load i32, ptr %i.bbz, align 4    ; 2 uses
  br i1 %.not.i.i.i303, label %bb.fx, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i305

bb.fx:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i302
  %i.ben = load i32, ptr %i.bby, align 8, !tbaa !113 ; 3 uses
  %.not.i59.i341 = icmp ne i32 %i.ben, 0
  %i.beo = icmp eq i32 %.pre36.i304, 0
  %or.cond.i.i342 = select i1 %.not.i59.i341, i1 %i.beo, i1 false
  br i1 %or.cond.i.i342, label %bb.fy, label %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i343

._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i343: ; preds = %bb.fx
  %.pre.i344 = load ptr, ptr %i.bcb, align 8, !tbaa !115 ; 2 uses
  %.phi.trans.insert.i345 = getelementptr inbounds nuw i8, ptr %.pre.i344, i64 16
  %.pre29.i346 = load i64, ptr %.phi.trans.insert.i345, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i347

bb.fy:                                            ; preds = %bb.fx
  %i.bep = sext i32 %i.ben to i64                 ; 3 uses
  %i.beq = icmp eq i32 %i.ben, 1
  br i1 %i.beq, label %bb.fz, label %bb.gb

bb.fz:                                            ; preds = %bb.fy
  %i.ber = load ptr, ptr %i.bcb, align 8, !tbaa !115 ; 3 uses
  %i.bes = getelementptr inbounds nuw i8, ptr %i.ber, i64 8
  %i.bet = load i64, ptr %i.bes, align 8, !tbaa !117
  %i.beu = getelementptr inbounds nuw i8, ptr %i.ber, i64 16
  %i.bev = load i64, ptr %i.beu, align 8, !tbaa !116 ; 3 uses
  %i.bew = icmp sgt i64 %i.bet, %i.bev
  br i1 %i.bew, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.bex = load ptr, ptr %i.ber, align 8, !tbaa !118
  %i.bey = lshr i64 %i.bev, 3
  %i.bez = getelementptr inbounds nuw i8, ptr %i.bex, i64 %i.bey ; 2 uses
  %i.bfa = load i8, ptr %i.bez, align 1, !tbaa !34
  %i.bfb = and i64 %i.bev, 7
  %i.bfc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bfb
  %i.bfd = load i8, ptr %i.bfc, align 1, !tbaa !34
  %i.bfe = and i8 %i.bfd, %i.bfa
  store i8 %i.bfe, ptr %i.bez, align 1, !tbaa !34
  %i.bff = load ptr, ptr %i.bcb, align 8, !tbaa !115 ; 2 uses
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.bff, i64 16 ; 2 uses
  %i.bfh = load i64, ptr %i.bfg, align 8, !tbaa !116
  %i.bfi = add nsw i64 %i.bfh, 1                  ; 2 uses
  store i64 %i.bfi, ptr %i.bfg, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i347

bb.gb:                                            ; preds = %bb.fz, %bb.fy
  %i.bfj = add nsw i64 %i.bep, 7
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gi, %bb.gb
  %.014.i64.i375 = phi i64 [ 0, %bb.gb ], [ %i.bhh, %bb.gi ] ; 2 uses
  %i.bfk = sub nsw i64 %i.bep, %.014.i64.i375
  %i.bfl = load ptr, ptr %i.bcb, align 8, !tbaa !115 ; 4 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfl, i64 8
  %i.bfn = load i64, ptr %i.bfm, align 8, !tbaa !117
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.bfl, i64 16 ; 3 uses
  %i.bfp = load i64, ptr %i.bfo, align 8, !tbaa !116 ; 3 uses
  %i.bfq = sub nsw i64 %i.bfn, %i.bfp
  %.sroa.speculated.i65.i376 = tail call i64 @llvm.smin.i64(i64 %i.bfq, i64 %i.bfk) ; 3 uses
  %i.bfr = load ptr, ptr %i.bfl, align 8, !tbaa !118 ; 3 uses
  %i.bfs = trunc i64 %i.bfp to i32                ; 6 uses
  %i.bft = add nsw i64 %.sroa.speculated.i65.i376, %i.bfp ; 3 uses
  %i.bfu = trunc i64 %i.bft to i32                ; 4 uses
  %.not.i.i.i66.i377 = icmp slt i32 %i.bfs, %i.bfu
  br i1 %.not.i.i.i66.i377, label %bb.gd, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i378

bb.gd:                                            ; preds = %bb.gc
  %i.bfv = add i32 %i.bfs, 63                     ; 2 uses
  %i.bfw = srem i32 %i.bfv, 64
  %i.bfx = sub nsw i32 %i.bfv, %i.bfw             ; 6 uses
  %i.bfy = and i32 %i.bfu, -64                    ; 4 uses
  %i.bfz = icmp slt i32 %i.bfy, %i.bfx
  br i1 %i.bfz, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.bga = and i64 %i.bft, 63
  %notmask.i.i.i.i79.i393 = shl nsw i64 -1, %i.bga
  %i.bgb = sub nsw i32 %i.bfx, %i.bfs             ; 2 uses
  %i.bgc = zext nneg i32 %i.bgb to i64
  %notmask.i.i.i.i.i80.i394 = shl nsw i64 -1, %i.bgc
  %i.bgd = xor i64 %notmask.i.i.i.i.i80.i394, -1
  %i.bge = sub nsw i32 64, %i.bgb
  %i.bgf = zext nneg i32 %i.bge to i64
  %i.bgg = shl i64 %i.bgd, %i.bgf
  %.not7.i395 = xor i64 %i.bgg, -1
  %i.bgh = or i64 %notmask.i.i.i.i79.i393, %.not7.i395
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i390

bb.gf:                                            ; preds = %bb.gd
  %.not32.i.i.i69.i380 = icmp eq i32 %i.bfx, %i.bfs
  br i1 %.not32.i.i.i69.i380, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i382, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.bgi = sdiv i32 %i.bfs, 64
  %i.bgj = sub nsw i32 %i.bfx, %i.bfs             ; 2 uses
  %i.bgk = zext nneg i32 %i.bgj to i64
  %notmask.i.i35.i.i.i70.i381 = shl nsw i64 -1, %i.bgk
  %i.bgl = xor i64 %notmask.i.i35.i.i.i70.i381, -1
  %i.bgm = sub nsw i32 64, %i.bgj
  %i.bgn = zext nneg i32 %i.bgm to i64
  %i.bgo = shl i64 %i.bgl, %i.bgn
  %i.bgp = xor i64 %i.bgo, -1
  %i.bgq = sext i32 %i.bgi to i64
  %i.bgr = getelementptr inbounds [8 x i8], ptr %i.bfr, i64 %i.bgq ; 2 uses
  %i.bgs = load i64, ptr %i.bgr, align 8, !tbaa !121
  %i.bgt = and i64 %i.bgs, %i.bgp
  store i64 %i.bgt, ptr %i.bgr, align 8, !tbaa !121
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i382

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i382: ; preds = %bb.gg, %bb.gf
  %i.bgu = add nsw i32 %i.bfx, 64                 ; 2 uses
  %.not3347.i.i.i72.i383 = icmp sgt i32 %i.bgu, %i.bfy
  br i1 %.not3347.i.i.i72.i383, label %._crit_edge.i.i.i76.i387, label %.lr.ph.i.i.i73.i384

._crit_edge.i.i.i76.i387:                         ; preds = %.lr.ph.i.i.i73.i384, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i382
  %.not34.i.i.i77.i388 = icmp eq i32 %i.bfy, %i.bfu
  br i1 %.not34.i.i.i77.i388, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i378, label %bb.gh

.lr.ph.i.i.i73.i384:                              ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i382, %.lr.ph.i.i.i73.i384
  %i.bgv = phi i32 [ %i.bgz, %.lr.ph.i.i.i73.i384 ], [ %i.bgu, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i382 ] ; 2 uses
  %.048.i.i.i74.i385 = phi i32 [ %i.bgv, %.lr.ph.i.i.i73.i384 ], [ %i.bfx, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i382 ]
  %i.bgw = sdiv i32 %.048.i.i.i74.i385, 64
  %i.bgx = sext i32 %i.bgw to i64
  %i.bgy = getelementptr inbounds [8 x i8], ptr %i.bfr, i64 %i.bgx
  store i64 0, ptr %i.bgy, align 8, !tbaa !121
  %i.bgz = add nsw i32 %i.bgv, 64                 ; 2 uses
  %.not33.i.i.i75.i386 = icmp sgt i32 %i.bgz, %i.bfy
  br i1 %.not33.i.i.i75.i386, label %._crit_edge.i.i.i76.i387, label %.lr.ph.i.i.i73.i384, !llvm.loop !122

bb.gh:                                            ; preds = %._crit_edge.i.i.i76.i387
  %i.bha = and i64 %i.bft, 63
  %notmask.i37.i.i.i78.i389 = shl nsw i64 -1, %i.bha
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i390

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i390: ; preds = %bb.gh, %bb.ge
  %notmask.i37.i.i.i78.sink.i391 = phi i64 [ %notmask.i37.i.i.i78.i389, %bb.gh ], [ %i.bgh, %bb.ge ]
  %.sink.i392 = ashr i32 %i.bfu, 6
  %i.bhb = sext i32 %.sink.i392 to i64
  %i.bhc = getelementptr inbounds [8 x i8], ptr %i.bfr, i64 %i.bhb ; 2 uses
  %i.bhd = load i64, ptr %i.bhc, align 8, !tbaa !121
  %i.bhe = and i64 %i.bhd, %notmask.i37.i.i.i78.sink.i391
  store i64 %i.bhe, ptr %i.bhc, align 8, !tbaa !121
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i378

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i378: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i390, %._crit_edge.i.i.i76.i387, %bb.gc
  %i.bhf = load i64, ptr %i.bfo, align 8, !tbaa !116
  %i.bhg = add nsw i64 %i.bhf, %.sroa.speculated.i65.i376 ; 2 uses
  store i64 %i.bhg, ptr %i.bfo, align 8, !tbaa !116
  %i.bhh = add nsw i64 %.sroa.speculated.i65.i376, %.014.i64.i375 ; 3 uses
  %.not.i68.i379 = icmp eq i64 %i.bhh, %i.bep
  br i1 %.not.i68.i379, label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i347, label %bb.gi

bb.gi:                                            ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i378
  %i.bhi = sub i64 %i.bfj, %i.bhh
  %i.bhj = lshr i64 %i.bhi, 3
  tail call void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64) %i.bca, i64 noundef %i.bhj)
  br label %bb.gc, !llvm.loop !123

_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i347: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i378, %bb.ga, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i343
  %i.bhk = phi i64 [ %.pre29.i346, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i343 ], [ %i.bfi, %bb.ga ], [ %i.bhg, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i378 ] ; 4 uses
  %i.bhl = phi ptr [ %.pre.i344, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i343 ], [ %i.bff, %bb.ga ], [ %i.bfl, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i378 ] ; 3 uses
  %i.bhm = getelementptr inbounds nuw i8, ptr %i.bhl, i64 8
  %i.bhn = load i64, ptr %i.bhm, align 8, !tbaa !117 ; 2 uses
  %i.bho = icmp sgt i64 %i.bhn, %i.bhk
  br i1 %i.bho, label %bb.gj, label %.preheader10.i348

bb.gj:                                            ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i347
  %i.bhp = load ptr, ptr %i.bhl, align 8, !tbaa !118
  %i.bhq = lshr i64 %i.bhk, 3
  %i.bhr = getelementptr inbounds nuw i8, ptr %i.bhp, i64 %i.bhq ; 2 uses
  %i.bhs = load i8, ptr %i.bhr, align 1, !tbaa !34
  %i.bht = trunc i64 %i.bhk to i8
  %i.bhu = and i8 %i.bht, 7
  %i.bhv = shl nuw i8 1, %i.bhu
  %i.bhw = or i8 %i.bhs, %i.bhv
  store i8 %i.bhw, ptr %i.bhr, align 1, !tbaa !34
  %i.bhx = load ptr, ptr %i.bcb, align 8, !tbaa !115
  %i.bhy = getelementptr inbounds nuw i8, ptr %i.bhx, i64 16 ; 2 uses
  %i.bhz = load i64, ptr %i.bhy, align 8, !tbaa !116
  %i.bia = add nsw i64 %i.bhz, 1
  store i64 %i.bia, ptr %i.bhy, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i359

.preheader10.i348:                                ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i347, %bb.gp
  %i.bib = phi i64 [ %.pre34.i358, %bb.gp ], [ %i.bhk, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i347 ] ; 3 uses
  %i.bic = phi i64 [ %.pre32.i356, %bb.gp ], [ %i.bhn, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i347 ]
  %i.bid = phi ptr [ %.pre30.i354, %bb.gp ], [ %i.bhl, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i347 ] ; 2 uses
  %.014.i.i349 = phi i64 [ %i.bjy, %bb.gp ], [ 0, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i347 ] ; 2 uses
  %i.bie = sub nsw i64 1, %.014.i.i349
  %i.bif = getelementptr inbounds nuw i8, ptr %i.bid, i64 16 ; 2 uses
  %i.big = sub nsw i64 %i.bic, %i.bib
  %.sroa.speculated.i.i350 = tail call i64 @llvm.smin.i64(i64 %i.big, i64 %i.bie) ; 3 uses
  %i.bih = load ptr, ptr %i.bid, align 8, !tbaa !118 ; 3 uses
  %i.bii = trunc i64 %i.bib to i32                ; 6 uses
  %i.bij = add nsw i64 %.sroa.speculated.i.i350, %i.bib ; 3 uses
  %i.bik = trunc i64 %i.bij to i32                ; 4 uses
  %.not.i.i.i.i351 = icmp slt i32 %i.bii, %i.bik
  br i1 %.not.i.i.i.i351, label %bb.gk, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i352

end_hunk_5
begin_hunk_6_@"_ZZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEvENKUlvE_clEv":bb.a
  %i.bnr = sext i32 %.15412.i300 to i64
  %i.bns = getelementptr inbounds [8 x i8], ptr %i.bbs, i64 %i.bnr ; 2 uses
  %i.bnt = sub nsw i32 %i.bnp, %.15412.i300
  %i.bnu = sext i32 %i.bnt to i64
  %i.bnv = load ptr, ptr %i.bcg, align 8, !tbaa !115 ; 3 uses
  %i.bnw = getelementptr inbounds nuw i8, ptr %i.bnv, i64 16
  %i.bnx = load i64, ptr %i.bnw, align 8, !tbaa !116 ; 2 uses
  %.idx9.i307 = shl nuw nsw i64 %i.bnu, 3         ; 4 uses
  %i.bny = add i64 %i.bnx, %.idx9.i307
  %i.bnz = getelementptr inbounds nuw i8, ptr %i.bnv, i64 8
  %i.boa = load i64, ptr %i.bnz, align 8, !tbaa !117
  %i.bob = icmp ugt i64 %i.bny, %i.boa
  br i1 %i.bob, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bch, i64 %.idx9.i307, ptr %i.bns)
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i308

bb.he:                                            ; preds = %bb.hc
  %i.boc = load ptr, ptr %i.bnv, align 8, !tbaa !118
  %i.bod = getelementptr inbounds i8, ptr %i.boc, i64 %i.bnx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bod, ptr align 8 %i.bns, i64 %.idx9.i307, i1 false)
  %i.boe = load ptr, ptr %i.bcg, align 8, !tbaa !115
  %i.bof = getelementptr inbounds nuw i8, ptr %i.boe, i64 16 ; 2 uses
  %i.bog = load i64, ptr %i.bof, align 8, !tbaa !116
  %i.boh = add i64 %i.bog, %.idx9.i307
  store i64 %i.boh, ptr %i.bof, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i308

_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i308: ; preds = %bb.he, %bb.hd, %bb.hb, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i306, %bb.gs, %bb.gr, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i359
  %.255.i309 = phi i32 [ %.15412.i300, %bb.hb ], [ %.15412.i300, %bb.gs ], [ %.014.i298, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i306 ], [ %.15412.i300, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i359 ], [ %.15412.i300, %bb.gr ], [ %.014.i298, %bb.hd ], [ %.014.i298, %bb.he ] ; 2 uses
  %.2.i310 = phi i32 [ %.014.i298, %bb.hb ], [ %.113.i299, %bb.gs ], [ %.014.i298, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i306 ], [ %.113.i299, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i359 ], [ %.113.i299, %bb.gr ], [ %.014.i298, %bb.hd ], [ %.014.i298, %bb.he ] ; 2 uses
  %i.boi = add nsw i32 %.014.i298, 1              ; 2 uses
  %i.boj = icmp slt i32 %i.boi, %i.bdw
  br i1 %i.boj, label %.lr.ph.i297, label %._crit_edge.loopexit.i311, !llvm.loop !662

bb.hf:                                            ; preds = %._crit_edge20.i293
  %i.bok = sext i32 %.154.lcssa.i290 to i64
  %i.bol = getelementptr inbounds [8 x i8], ptr %i.bbs, i64 %i.bok ; 2 uses
  %reass.sub1069 = sub i32 %.1.lcssa.i291, %.154.lcssa.i290
  %i.bom = add i32 %reass.sub1069, 1
  %i.bon = sext i32 %i.bom to i64
  %i.boo = load ptr, ptr %i.bcg, align 8, !tbaa !115 ; 3 uses
  %i.bop = getelementptr inbounds nuw i8, ptr %i.boo, i64 16
  %i.boq = load i64, ptr %i.bop, align 8, !tbaa !116 ; 2 uses
  %.idx6.i296 = shl nuw nsw i64 %i.bon, 3         ; 4 uses
  %i.bor = add i64 %i.boq, %.idx6.i296
  %i.bos = getelementptr inbounds nuw i8, ptr %i.boo, i64 8
  %i.bot = load i64, ptr %i.bos, align 8, !tbaa !117
  %i.bou = icmp ugt i64 %i.bor, %i.bot
  br i1 %i.bou, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.bch, i64 %.idx6.i296, ptr %i.bol)
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit

bb.hh:                                            ; preds = %bb.hf
  %i.bov = load ptr, ptr %i.boo, align 8, !tbaa !118
  %i.bow = getelementptr inbounds i8, ptr %i.bov, i64 %i.boq
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bow, ptr align 8 %i.bol, i64 %.idx6.i296, i1 false)
  %i.box = load ptr, ptr %i.bcg, align 8, !tbaa !115
  %i.boy = getelementptr inbounds nuw i8, ptr %i.box, i64 16 ; 2 uses
  %i.boz = load i64, ptr %i.boy, align 8, !tbaa !116
  %i.bpa = add i64 %i.boz, %.idx6.i296
  store i64 %i.bpa, ptr %i.boy, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit

bb.hi:                                            ; preds = %bb.a
  %i.bpb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bpc = load ptr, ptr %i.bpb, align 8, !tbaa !641, !nonnull !9, !align !640 ; 5 uses
  %i.bpd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bpe = load ptr, ptr %i.bpd, align 8, !tbaa !642, !nonnull !9, !align !640
  %i.bpf = load ptr, ptr %i.bpe, align 8, !tbaa !52 ; 14 uses
  %i.bpg = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.bph = icmp eq ptr %i.bpg, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorInEE, i64 16)
  %i.bpi = select i1 %i.bph, ptr %i.d, ptr null
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.bpk = load ptr, ptr %i.bpj, align 8, !tbaa !293 ; 3 uses
  %i.bpl = getelementptr inbounds nuw i8, ptr %i.bpi, i64 40 ; 2 uses
  %i.bpm = load ptr, ptr %i.bpl, align 8, !tbaa !83
  %.not5.i405 = icmp eq ptr %i.bpm, null
  br i1 %.not5.i405, label %bb.hj, label %.preheader9.i406

.preheader9.i406:                                 ; preds = %bb.hi
  %i.bpn = getelementptr inbounds nuw i8, ptr %i.bpc, i64 8 ; 2 uses
  %i.bpo = load ptr, ptr %i.bpn, align 8, !tbaa !84 ; 2 uses
  %i.bpp = load ptr, ptr %i.bpc, align 8, !tbaa !87 ; 2 uses
  %.not25.i407 = icmp eq ptr %i.bpo, %i.bpp
  br i1 %.not25.i407, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph17.i408

.lr.ph17.i408:                                    ; preds = %.preheader9.i406
  %i.bpq = getelementptr inbounds nuw i8, ptr %i.bpf, i64 64 ; 3 uses
  %i.bpr = getelementptr inbounds nuw i8, ptr %i.bpf, i64 68 ; 4 uses
  %i.bps = getelementptr inbounds nuw i8, ptr %i.bpf, i64 104 ; 3 uses
  %i.bpt = getelementptr inbounds nuw i8, ptr %i.bpf, i64 152 ; 9 uses
  %i.bpu = getelementptr inbounds nuw i8, ptr %i.bpf, i64 76
  %i.bpv = getelementptr inbounds nuw i8, ptr %i.bpf, i64 72 ; 2 uses
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.bpf, i64 216 ; 2 uses
  %i.bpx = getelementptr inbounds nuw i8, ptr %i.bpf, i64 168
  br label %bb.hm

bb.hj:                                            ; preds = %bb.hi
  %i.bpy = load ptr, ptr %i.bpc, align 8, !tbaa !87 ; 2 uses
  %i.bpz = getelementptr inbounds nuw i8, ptr %i.bpc, i64 8
  %i.bqa = load ptr, ptr %i.bpz, align 8, !tbaa !84 ; 2 uses
  %.not21.i478 = icmp eq ptr %i.bpy, %i.bqa
  br i1 %.not21.i478, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph24.i479

.lr.ph24.i479:                                    ; preds = %bb.hj
  %i.bqb = getelementptr inbounds nuw i8, ptr %i.bpf, i64 68
  %i.bqc = getelementptr inbounds nuw i8, ptr %i.bpf, i64 104
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bpf, i64 64 ; 2 uses
  br label %bb.hk

bb.hk:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i481, %.lr.ph24.i479
  %.05022.i480 = phi ptr [ %i.bpy, %.lr.ph24.i479 ], [ %i.bqr, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i481 ] ; 3 uses
  %i.bqe = getelementptr inbounds nuw i8, ptr %.05022.i480, i64 4 ; 2 uses
  %i.bqf = load i32, ptr %i.bqe, align 4, !tbaa !88 ; 3 uses
  %i.bqg = load i32, ptr %i.bqb, align 4, !tbaa !90
  %i.bqh = icmp sgt i32 %i.bqg, 0
  br i1 %i.bqh, label %bb.hl, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i481

bb.hl:                                            ; preds = %bb.hk
  %i.bqi = sext i32 %i.bqf to i64
  tail call void @_ZN8facebook5velox16ByteOutputStream10appendBoolEbl(ptr noundef nonnull align 8 dereferenceable(64) %i.bqc, i1 noundef zeroext false, i64 noundef %i.bqi)
  %.pre42.i483 = load i32, ptr %i.bqe, align 4, !tbaa !88
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i481

_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i481: ; preds = %bb.hl, %bb.hk
  %i.bqj = phi i32 [ %i.bqf, %bb.hk ], [ %.pre42.i483, %bb.hl ]
  %i.bqk = load i32, ptr %i.bqd, align 8, !tbaa !113
  %i.bql = add nsw i32 %i.bqk, %i.bqf
  store i32 %i.bql, ptr %i.bqd, align 8, !tbaa !113
  %i.bqm = load i32, ptr %.05022.i480, align 4, !tbaa !114
  %i.bqn = sext i32 %i.bqm to i64
  %i.bqo = getelementptr inbounds [16 x i8], ptr %i.bpk, i64 %i.bqn ; 2 uses
  %i.bqp = sext i32 %i.bqj to i64
  %i.bqq = getelementptr inbounds nuw [16 x i8], ptr %i.bqo, i64 %i.bqp
  tail call void @_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendInEEvN5folly5RangeIPKT_EE(ptr noundef nonnull align 8 dereferenceable(330) %i.bpf, ptr %i.bqo, ptr %i.bqq)
  %i.bqr = getelementptr inbounds nuw i8, ptr %.05022.i480, i64 8 ; 2 uses
  %.not.i482 = icmp eq ptr %i.bqr, %i.bqa
  br i1 %.not.i482, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.hk

._crit_edge18.i416:                               ; preds = %._crit_edge.i412
  %.not58.i417 = icmp eq i32 %.154.lcssa.i413, -1
  br i1 %.not58.i417, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.it

bb.hm:                                            ; preds = %._crit_edge.i412, %.lr.ph17.i408
  %i.bqs = phi ptr [ %i.bpp, %.lr.ph17.i408 ], [ %i.bra, %._crit_edge.i412 ] ; 2 uses
  %i.bqt = phi ptr [ %i.bpo, %.lr.ph17.i408 ], [ %i.brb, %._crit_edge.i412 ]
  %indvars.iv.i409 = phi i64 [ 0, %.lr.ph17.i408 ], [ %indvars.iv.next.i415, %._crit_edge.i412 ] ; 2 uses
  %.05215.i410 = phi i32 [ -1, %.lr.ph17.i408 ], [ %.1.lcssa.i414, %._crit_edge.i412 ] ; 2 uses
  %.05314.i411 = phi i32 [ -1, %.lr.ph17.i408 ], [ %.154.lcssa.i413, %._crit_edge.i412 ] ; 2 uses
  %i.bqu = getelementptr inbounds nuw [8 x i8], ptr %i.bqs, i64 %indvars.iv.i409 ; 2 uses
  %i.bqv = load i32, ptr %i.bqu, align 4, !tbaa !114 ; 2 uses
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqu, i64 4
  %i.bqx = load i32, ptr %i.bqw, align 4, !tbaa !88 ; 2 uses
  %i.bqy = add nsw i32 %i.bqx, %i.bqv
  %i.bqz = icmp sgt i32 %i.bqx, 0
  br i1 %i.bqz, label %.lr.ph.i419, label %._crit_edge.i412

._crit_edge.loopexit.i432:                        ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i429
  %.pre40.i433 = load ptr, ptr %i.bpn, align 8, !tbaa !84
  %.pre41.i434 = load ptr, ptr %i.bpc, align 8, !tbaa !87
  br label %._crit_edge.i412

._crit_edge.i412:                                 ; preds = %._crit_edge.loopexit.i432, %bb.hm
  %i.bra = phi ptr [ %i.bqs, %bb.hm ], [ %.pre41.i434, %._crit_edge.loopexit.i432 ] ; 2 uses
  %i.brb = phi ptr [ %i.bqt, %bb.hm ], [ %.pre40.i433, %._crit_edge.loopexit.i432 ] ; 2 uses
  %.154.lcssa.i413 = phi i32 [ %.05314.i411, %bb.hm ], [ %.255.i430, %._crit_edge.loopexit.i432 ] ; 4 uses
  %.1.lcssa.i414 = phi i32 [ %.05215.i410, %bb.hm ], [ %.2.i431, %._crit_edge.loopexit.i432 ] ; 2 uses
  %indvars.iv.next.i415 = add nuw nsw i64 %indvars.iv.i409, 1 ; 2 uses
  %i.brc = ptrtoint ptr %i.brb to i64
  %i.brd = ptrtoint ptr %i.bra to i64
  %i.bre = sub i64 %i.brc, %i.brd
  %i.brf = ashr exact i64 %i.bre, 3
  %i.brg = icmp ugt i64 %i.brf, %indvars.iv.next.i415
  br i1 %i.brg, label %bb.hm, label %._crit_edge18.i416, !llvm.loop !663

.lr.ph.i419:                                      ; preds = %bb.hm, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i429
  %.012.i420 = phi i32 [ %i.cay, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i429 ], [ %i.bqv, %bb.hm ] ; 8 uses
  %.111.i421 = phi i32 [ %.2.i431, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i429 ], [ %.05215.i410, %bb.hm ] ; 4 uses
  %.15410.i422 = phi i32 [ %.255.i430, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i429 ], [ %.05314.i411, %bb.hm ] ; 7 uses
  %i.brh = load ptr, ptr %i.bpl, align 8, !tbaa !83 ; 2 uses
  %.not.i.i423 = icmp eq ptr %i.brh, null
  br i1 %.not.i.i423, label %.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i476, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i424

.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i476: ; preds = %.lr.ph.i419
  %.pre33.i477 = load i32, ptr %i.bpr, align 4, !tbaa !90
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i427

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i424: ; preds = %.lr.ph.i419
  %i.bri = zext i32 %.012.i420 to i64             ; 2 uses
  %i.brj = lshr i64 %i.bri, 6
  %i.brk = getelementptr inbounds nuw [8 x i8], ptr %i.brh, i64 %i.brj
  %i.brl = load i64, ptr %i.brk, align 8, !tbaa !121
  %i.brm = and i64 %i.bri, 63
  %i.brn = shl nuw i64 1, %i.brm
  %i.bro = and i64 %i.brl, %i.brn
  %.not.i.i.i425 = icmp eq i64 %i.bro, 0
  %.pre34.i426 = load i32, ptr %i.bpr, align 4    ; 2 uses
  br i1 %.not.i.i.i425, label %bb.hn, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i427

bb.hn:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i424
  %i.brp = load i32, ptr %i.bpq, align 8, !tbaa !113 ; 3 uses
  %.not.i59.i443 = icmp ne i32 %i.brp, 0
  %i.brq = icmp eq i32 %.pre34.i426, 0
  %or.cond.i.i444 = select i1 %.not.i59.i443, i1 %i.brq, i1 false
  br i1 %or.cond.i.i444, label %bb.ho, label %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79_crit_edge.i

._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79_crit_edge.i: ; preds = %bb.hn
  %.pre.i445 = load ptr, ptr %i.bpt, align 8, !tbaa !115 ; 2 uses
  %.phi.trans.insert.i446 = getelementptr inbounds nuw i8, ptr %.pre.i445, i64 16
  %.pre27.i447 = load i64, ptr %.phi.trans.insert.i446, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i

bb.ho:                                            ; preds = %bb.hn
  %i.brr = sext i32 %i.brp to i64                 ; 3 uses
  %i.brs = icmp eq i32 %i.brp, 1
  br i1 %i.brs, label %bb.hp, label %bb.hr

bb.hp:                                            ; preds = %bb.ho
  %i.brt = load ptr, ptr %i.bpt, align 8, !tbaa !115 ; 3 uses
  %i.bru = getelementptr inbounds nuw i8, ptr %i.brt, i64 8
  %i.brv = load i64, ptr %i.bru, align 8, !tbaa !117
  %i.brw = getelementptr inbounds nuw i8, ptr %i.brt, i64 16
  %i.brx = load i64, ptr %i.brw, align 8, !tbaa !116 ; 3 uses
  %i.bry = icmp sgt i64 %i.brv, %i.brx
  br i1 %i.bry, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.brz = load ptr, ptr %i.brt, align 8, !tbaa !118
  %i.bsa = lshr i64 %i.brx, 3
  %i.bsb = getelementptr inbounds nuw i8, ptr %i.brz, i64 %i.bsa ; 2 uses
  %i.bsc = load i8, ptr %i.bsb, align 1, !tbaa !34
  %i.bsd = and i64 %i.brx, 7
  %i.bse = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.bsd
  %i.bsf = load i8, ptr %i.bse, align 1, !tbaa !34
  %i.bsg = and i8 %i.bsf, %i.bsc
  store i8 %i.bsg, ptr %i.bsb, align 1, !tbaa !34
  %i.bsh = load ptr, ptr %i.bpt, align 8, !tbaa !115 ; 2 uses
  %i.bsi = getelementptr inbounds nuw i8, ptr %i.bsh, i64 16 ; 2 uses
  %i.bsj = load i64, ptr %i.bsi, align 8, !tbaa !116
  %i.bsk = add nsw i64 %i.bsj, 1                  ; 2 uses
  store i64 %i.bsk, ptr %i.bsi, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i

bb.hr:                                            ; preds = %bb.hp, %bb.ho
  %i.bsl = add nsw i64 %i.brr, 7
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hy, %bb.hr
  %.014.i62.i = phi i64 [ 0, %bb.hr ], [ %i.buj, %bb.hy ] ; 2 uses
  %i.bsm = sub nsw i64 %i.brr, %.014.i62.i
  %i.bsn = load ptr, ptr %i.bpt, align 8, !tbaa !115 ; 4 uses
  %i.bso = getelementptr inbounds nuw i8, ptr %i.bsn, i64 8
  %i.bsp = load i64, ptr %i.bso, align 8, !tbaa !117
  %i.bsq = getelementptr inbounds nuw i8, ptr %i.bsn, i64 16 ; 3 uses
  %i.bsr = load i64, ptr %i.bsq, align 8, !tbaa !116 ; 3 uses
  %i.bss = sub nsw i64 %i.bsp, %i.bsr
  %.sroa.speculated.i63.i = tail call i64 @llvm.smin.i64(i64 %i.bss, i64 %i.bsm) ; 3 uses
  %i.bst = load ptr, ptr %i.bsn, align 8, !tbaa !118 ; 3 uses
  %i.bsu = trunc i64 %i.bsr to i32                ; 6 uses
  %i.bsv = add nsw i64 %.sroa.speculated.i63.i, %i.bsr ; 3 uses
  %i.bsw = trunc i64 %i.bsv to i32                ; 4 uses
  %.not.i.i.i64.i = icmp slt i32 %i.bsu, %i.bsw
  br i1 %.not.i.i.i64.i, label %bb.ht, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.i

bb.ht:                                            ; preds = %bb.hs
  %i.bsx = add i32 %i.bsu, 63                     ; 2 uses
  %i.bsy = srem i32 %i.bsx, 64
  %i.bsz = sub nsw i32 %i.bsx, %i.bsy             ; 6 uses
  %i.bta = and i32 %i.bsw, -64                    ; 4 uses
  %i.btb = icmp slt i32 %i.bta, %i.bsz
  br i1 %i.btb, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.btc = and i64 %i.bsv, 63
  %notmask.i.i.i.i77.i = shl nsw i64 -1, %i.btc
  %i.btd = sub nsw i32 %i.bsz, %i.bsu             ; 2 uses
  %i.bte = zext nneg i32 %i.btd to i64
  %notmask.i.i.i.i.i78.i = shl nsw i64 -1, %i.bte
  %i.btf = xor i64 %notmask.i.i.i.i.i78.i, -1
  %i.btg = sub nsw i32 64, %i.btd
  %i.bth = zext nneg i32 %i.btg to i64
  %i.bti = shl i64 %i.btf, %i.bth
  %.not6.i475 = xor i64 %i.bti, -1
  %i.btj = or i64 %notmask.i.i.i.i77.i, %.not6.i475
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.sink.split.i

bb.hv:                                            ; preds = %bb.ht
  %.not32.i.i.i67.i = icmp eq i32 %i.bsz, %i.bsu
  br i1 %.not32.i.i.i67.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i69.i, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.btk = sdiv i32 %i.bsu, 64
  %i.btl = sub nsw i32 %i.bsz, %i.bsu             ; 2 uses
  %i.btm = zext nneg i32 %i.btl to i64
  %notmask.i.i35.i.i.i68.i = shl nsw i64 -1, %i.btm
  %i.btn = xor i64 %notmask.i.i35.i.i.i68.i, -1
  %i.bto = sub nsw i32 64, %i.btl
  %i.btp = zext nneg i32 %i.bto to i64
  %i.btq = shl i64 %i.btn, %i.btp
  %i.btr = xor i64 %i.btq, -1
  %i.bts = sext i32 %i.btk to i64
  %i.btt = getelementptr inbounds [8 x i8], ptr %i.bst, i64 %i.bts ; 2 uses
  %i.btu = load i64, ptr %i.btt, align 8, !tbaa !121
  %i.btv = and i64 %i.btu, %i.btr
  store i64 %i.btv, ptr %i.btt, align 8, !tbaa !121
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i69.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i69.i: ; preds = %bb.hw, %bb.hv
  %i.btw = add nsw i32 %i.bsz, 64                 ; 2 uses
  %.not3347.i.i.i70.i = icmp sgt i32 %i.btw, %i.bta
  br i1 %.not3347.i.i.i70.i, label %._crit_edge.i.i.i74.i, label %.lr.ph.i.i.i71.i

._crit_edge.i.i.i74.i:                            ; preds = %.lr.ph.i.i.i71.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i69.i
  %.not34.i.i.i75.i = icmp eq i32 %i.bta, %i.bsw
  br i1 %.not34.i.i.i75.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.i, label %bb.hx

.lr.ph.i.i.i71.i:                                 ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i69.i, %.lr.ph.i.i.i71.i
  %i.btx = phi i32 [ %i.bub, %.lr.ph.i.i.i71.i ], [ %i.btw, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i69.i ] ; 2 uses
  %.048.i.i.i72.i = phi i32 [ %i.btx, %.lr.ph.i.i.i71.i ], [ %i.bsz, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i69.i ]
  %i.bty = sdiv i32 %.048.i.i.i72.i, 64
  %i.btz = sext i32 %i.bty to i64
  %i.bua = getelementptr inbounds [8 x i8], ptr %i.bst, i64 %i.btz
  store i64 0, ptr %i.bua, align 8, !tbaa !121
  %i.bub = add nsw i32 %i.btx, 64                 ; 2 uses
  %.not33.i.i.i73.i = icmp sgt i32 %i.bub, %i.bta
  br i1 %.not33.i.i.i73.i, label %._crit_edge.i.i.i74.i, label %.lr.ph.i.i.i71.i, !llvm.loop !122

bb.hx:                                            ; preds = %._crit_edge.i.i.i74.i
  %i.buc = and i64 %i.bsv, 63
  %notmask.i37.i.i.i76.i = shl nsw i64 -1, %i.buc
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.sink.split.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.sink.split.i: ; preds = %bb.hx, %bb.hu
  %notmask.i37.i.i.i76.sink.i = phi i64 [ %notmask.i37.i.i.i76.i, %bb.hx ], [ %i.btj, %bb.hu ]
  %.sink.i474 = ashr i32 %i.bsw, 6
  %i.bud = sext i32 %.sink.i474 to i64
  %i.bue = getelementptr inbounds [8 x i8], ptr %i.bst, i64 %i.bud ; 2 uses
  %i.buf = load i64, ptr %i.bue, align 8, !tbaa !121
  %i.bug = and i64 %i.buf, %notmask.i37.i.i.i76.sink.i
  store i64 %i.bug, ptr %i.bue, align 8, !tbaa !121
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.sink.split.i, %._crit_edge.i.i.i74.i, %bb.hs
  %i.buh = load i64, ptr %i.bsq, align 8, !tbaa !116
  %i.bui = add nsw i64 %i.buh, %.sroa.speculated.i63.i ; 2 uses
  store i64 %i.bui, ptr %i.bsq, align 8, !tbaa !116
  %i.buj = add nsw i64 %.sroa.speculated.i63.i, %.014.i62.i ; 3 uses
  %.not.i66.i = icmp eq i64 %i.buj, %i.brr
  br i1 %.not.i66.i, label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i, label %bb.hy

bb.hy:                                            ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.i
  %i.buk = sub i64 %i.bsl, %i.buj
  %i.bul = lshr i64 %i.buk, 3
  tail call void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64) %i.bps, i64 noundef %i.bul)
  br label %bb.hs, !llvm.loop !123

_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.i, %bb.hq, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79_crit_edge.i
  %i.bum = phi i64 [ %.pre27.i447, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79_crit_edge.i ], [ %i.bsk, %bb.hq ], [ %i.bui, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.i ] ; 4 uses
  %i.bun = phi ptr [ %.pre.i445, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79_crit_edge.i ], [ %i.bsh, %bb.hq ], [ %i.bsn, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.i ] ; 3 uses
  %i.buo = getelementptr inbounds nuw i8, ptr %i.bun, i64 8
  %i.bup = load i64, ptr %i.buo, align 8, !tbaa !117 ; 2 uses
  %i.buq = icmp sgt i64 %i.bup, %i.bum
  br i1 %i.buq, label %bb.hz, label %.preheader8.i448

bb.hz:                                            ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i
  %i.bur = load ptr, ptr %i.bun, align 8, !tbaa !118
  %i.bus = lshr i64 %i.bum, 3
  %i.but = getelementptr inbounds nuw i8, ptr %i.bur, i64 %i.bus ; 2 uses
  %i.buu = load i8, ptr %i.but, align 1, !tbaa !34
  %i.buv = trunc i64 %i.bum to i8
  %i.buw = and i8 %i.buv, 7
  %i.bux = shl nuw i8 1, %i.buw
  %i.buy = or i8 %i.buu, %i.bux
  store i8 %i.buy, ptr %i.but, align 1, !tbaa !34
  %i.buz = load ptr, ptr %i.bpt, align 8, !tbaa !115
  %i.bva = getelementptr inbounds nuw i8, ptr %i.buz, i64 16 ; 2 uses
  %i.bvb = load i64, ptr %i.bva, align 8, !tbaa !116
  %i.bvc = add nsw i64 %i.bvb, 1
  store i64 %i.bvc, ptr %i.bva, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i458

.preheader8.i448:                                 ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i, %bb.if
  %i.bvd = phi i64 [ %.pre32.i457, %bb.if ], [ %i.bum, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i ] ; 3 uses
  %i.bve = phi i64 [ %.pre30.i455, %bb.if ], [ %i.bup, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i ]
  %i.bvf = phi ptr [ %.pre28.i453, %bb.if ], [ %i.bun, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i ] ; 2 uses
  %.014.i.i449 = phi i64 [ %i.bxa, %bb.if ], [ 0, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i ] ; 2 uses
  %i.bvg = sub nsw i64 1, %.014.i.i449
  %i.bvh = getelementptr inbounds nuw i8, ptr %i.bvf, i64 16 ; 2 uses
  %i.bvi = sub nsw i64 %i.bve, %i.bvd
  %.sroa.speculated.i.i450 = tail call i64 @llvm.smin.i64(i64 %i.bvi, i64 %i.bvg) ; 3 uses
  %i.bvj = load ptr, ptr %i.bvf, align 8, !tbaa !118 ; 3 uses
  %i.bvk = trunc i64 %i.bvd to i32                ; 6 uses
  %i.bvl = add nsw i64 %.sroa.speculated.i.i450, %i.bvd ; 3 uses
  %i.bvm = trunc i64 %i.bvl to i32                ; 4 uses
  %.not.i.i.i.i451 = icmp slt i32 %i.bvk, %i.bvm
  br i1 %.not.i.i.i.i451, label %bb.ia, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i452

end_hunk_6
begin_hunk_7_@"_ZZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEvENKUlvE_clEv":bb.a

_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i428: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i83.i, %bb.ik, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i427
  %i.cao = load i32, ptr %i.bpq, align 8, !tbaa !113
  %i.cap = add nsw i32 %i.cao, 1
  store i32 %i.cap, ptr %i.bpq, align 8, !tbaa !113
  %i.caq = icmp eq i32 %.15410.i422, -1
  br i1 %i.caq, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i429, label %bb.ir

bb.ir:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i428
  %i.car = add nsw i32 %.111.i421, 1              ; 2 uses
  %i.cas = icmp eq i32 %.012.i420, %i.car
  br i1 %i.cas, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i429, label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.cat = sext i32 %.15410.i422 to i64
  %i.cau = getelementptr inbounds [16 x i8], ptr %i.bpk, i64 %i.cat ; 2 uses
  %i.cav = sub nsw i32 %i.car, %.15410.i422
  %i.caw = sext i32 %i.cav to i64
  %i.cax = getelementptr inbounds nuw [16 x i8], ptr %i.cau, i64 %i.caw
  tail call void @_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendInEEvN5folly5RangeIPKT_EE(ptr noundef nonnull align 8 dereferenceable(330) %i.bpf, ptr %i.cau, ptr %i.cax)
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i429

_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i429: ; preds = %bb.is, %bb.ir, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i428, %bb.ii, %bb.ih, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i458
  %.255.i430 = phi i32 [ %.15410.i422, %bb.ir ], [ %.012.i420, %bb.is ], [ %.012.i420, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i428 ], [ %.15410.i422, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i458 ], [ %.15410.i422, %bb.ih ], [ %.15410.i422, %bb.ii ] ; 2 uses
  %.2.i431 = phi i32 [ %.012.i420, %bb.ir ], [ %.012.i420, %bb.is ], [ %.012.i420, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i428 ], [ %.111.i421, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i458 ], [ %.111.i421, %bb.ih ], [ %.111.i421, %bb.ii ] ; 2 uses
  %i.cay = add nsw i32 %.012.i420, 1              ; 2 uses
  %i.caz = icmp slt i32 %i.cay, %i.bqy
  br i1 %i.caz, label %.lr.ph.i419, label %._crit_edge.loopexit.i432, !llvm.loop !664

bb.it:                                            ; preds = %._crit_edge18.i416
  %i.cba = sext i32 %.154.lcssa.i413 to i64
  %i.cbb = getelementptr inbounds [16 x i8], ptr %i.bpk, i64 %i.cba ; 2 uses
  %reass.sub1068 = sub i32 %.1.lcssa.i414, %.154.lcssa.i413
  %i.cbc = add i32 %reass.sub1068, 1
  %i.cbd = sext i32 %i.cbc to i64
  %i.cbe = getelementptr inbounds nuw [16 x i8], ptr %i.cbb, i64 %i.cbd
  tail call void @_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendInEEvN5folly5RangeIPKT_EE(ptr noundef nonnull align 8 dereferenceable(330) %i.bpf, ptr %i.cbb, ptr %i.cbe)
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit

bb.iu:                                            ; preds = %bb.a
  %i.cbf = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cbg = load ptr, ptr %i.cbf, align 8, !tbaa !641, !nonnull !9, !align !640 ; 5 uses
  %i.cbh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cbi = load ptr, ptr %i.cbh, align 8, !tbaa !642, !nonnull !9, !align !640
  %i.cbj = load ptr, ptr %i.cbi, align 8, !tbaa !52 ; 15 uses
  %i.cbk = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.cbl = icmp eq ptr %i.cbk, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIfEE, i64 16)
  %i.cbm = select i1 %i.cbl, ptr %i.d, ptr null
  %i.cbn = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.cbo = load ptr, ptr %i.cbn, align 8, !tbaa !665 ; 3 uses
  %i.cbp = getelementptr inbounds nuw i8, ptr %i.cbm, i64 40 ; 2 uses
  %i.cbq = load ptr, ptr %i.cbp, align 8, !tbaa !83
  %.not5.i484 = icmp eq ptr %i.cbq, null
  br i1 %.not5.i484, label %bb.iv, label %.preheader11.i485

.preheader11.i485:                                ; preds = %bb.iu
  %i.cbr = getelementptr inbounds nuw i8, ptr %i.cbg, i64 8 ; 2 uses
  %i.cbs = load ptr, ptr %i.cbr, align 8, !tbaa !84 ; 2 uses
  %i.cbt = load ptr, ptr %i.cbg, align 8, !tbaa !87 ; 2 uses
  %.not27.i486 = icmp eq ptr %i.cbs, %i.cbt
  br i1 %.not27.i486, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph19.i487

.lr.ph19.i487:                                    ; preds = %.preheader11.i485
  %i.cbu = getelementptr inbounds nuw i8, ptr %i.cbj, i64 64 ; 3 uses
  %i.cbv = getelementptr inbounds nuw i8, ptr %i.cbj, i64 68 ; 4 uses
  %i.cbw = getelementptr inbounds nuw i8, ptr %i.cbj, i64 104 ; 3 uses
  %i.cbx = getelementptr inbounds nuw i8, ptr %i.cbj, i64 152 ; 9 uses
  %i.cby = getelementptr inbounds nuw i8, ptr %i.cbj, i64 76
  %i.cbz = getelementptr inbounds nuw i8, ptr %i.cbj, i64 72 ; 2 uses
  %i.cca = getelementptr inbounds nuw i8, ptr %i.cbj, i64 216 ; 2 uses
  %i.ccb = getelementptr inbounds nuw i8, ptr %i.cbj, i64 168
  %i.ccc = getelementptr inbounds nuw i8, ptr %i.cbj, i64 280 ; 4 uses
  %i.ccd = getelementptr inbounds nuw i8, ptr %i.cbj, i64 232 ; 2 uses
  br label %bb.ja

bb.iv:                                            ; preds = %bb.iu
  %i.cce = load ptr, ptr %i.cbg, align 8, !tbaa !87 ; 2 uses
  %i.ccf = getelementptr inbounds nuw i8, ptr %i.cbg, i64 8
  %i.ccg = load ptr, ptr %i.ccf, align 8, !tbaa !84 ; 2 uses
  %.not23.i600 = icmp eq ptr %i.cce, %i.ccg
  br i1 %.not23.i600, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph26.i601

.lr.ph26.i601:                                    ; preds = %bb.iv
  %i.cch = getelementptr inbounds nuw i8, ptr %i.cbj, i64 68
  %i.cci = getelementptr inbounds nuw i8, ptr %i.cbj, i64 104
  %i.ccj = getelementptr inbounds nuw i8, ptr %i.cbj, i64 64 ; 2 uses
  %i.cck = getelementptr inbounds nuw i8, ptr %i.cbj, i64 280 ; 2 uses
  %i.ccl = getelementptr inbounds nuw i8, ptr %i.cbj, i64 232
  br label %bb.iw

bb.iw:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIfEEvN5folly5RangeIPKT_EE.exit.i, %.lr.ph26.i601
  %.05024.i602 = phi ptr [ %i.cce, %.lr.ph26.i601 ], [ %i.cdl, %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIfEEvN5folly5RangeIPKT_EE.exit.i ] ; 3 uses
  %i.ccm = getelementptr inbounds nuw i8, ptr %.05024.i602, i64 4 ; 2 uses
  %i.ccn = load i32, ptr %i.ccm, align 4, !tbaa !88 ; 3 uses
  %i.cco = load i32, ptr %i.cch, align 4, !tbaa !90
  %i.ccp = icmp sgt i32 %i.cco, 0
  br i1 %i.ccp, label %bb.ix, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i603

bb.ix:                                            ; preds = %bb.iw
  %i.ccq = sext i32 %i.ccn to i64
  tail call void @_ZN8facebook5velox16ByteOutputStream10appendBoolEbl(ptr noundef nonnull align 8 dereferenceable(64) %i.cci, i1 noundef zeroext false, i64 noundef %i.ccq)
  %.pre44.i606 = load i32, ptr %i.ccm, align 4, !tbaa !88
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i603

_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i603: ; preds = %bb.ix, %bb.iw
  %i.ccr = phi i32 [ %i.ccn, %bb.iw ], [ %.pre44.i606, %bb.ix ]
  %i.ccs = load i32, ptr %i.ccj, align 8, !tbaa !113
  %i.cct = add nsw i32 %i.ccs, %i.ccn
  store i32 %i.cct, ptr %i.ccj, align 8, !tbaa !113
  %i.ccu = load i32, ptr %.05024.i602, align 4, !tbaa !114
  %i.ccv = sext i32 %i.ccu to i64
  %i.ccw = getelementptr inbounds [4 x i8], ptr %i.cbo, i64 %i.ccv ; 2 uses
  %i.ccx = sext i32 %i.ccr to i64
  %i.ccy = load ptr, ptr %i.cck, align 8, !tbaa !115 ; 3 uses
  %i.ccz = getelementptr inbounds nuw i8, ptr %i.ccy, i64 16
  %i.cda = load i64, ptr %i.ccz, align 8, !tbaa !116 ; 2 uses
  %.idx.i604 = shl nuw nsw i64 %i.ccx, 2          ; 4 uses
  %i.cdb = add i64 %i.cda, %.idx.i604
  %i.cdc = getelementptr inbounds nuw i8, ptr %i.ccy, i64 8
  %i.cdd = load i64, ptr %i.cdc, align 8, !tbaa !117
  %i.cde = icmp ugt i64 %i.cdb, %i.cdd
  br i1 %i.cde, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i603
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.ccl, i64 %.idx.i604, ptr %i.ccw)
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIfEEvN5folly5RangeIPKT_EE.exit.i

bb.iz:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i603
  %i.cdf = load ptr, ptr %i.ccy, align 8, !tbaa !118
  %i.cdg = getelementptr inbounds i8, ptr %i.cdf, i64 %i.cda
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cdg, ptr align 4 %i.ccw, i64 %.idx.i604, i1 false)
  %i.cdh = load ptr, ptr %i.cck, align 8, !tbaa !115
  %i.cdi = getelementptr inbounds nuw i8, ptr %i.cdh, i64 16 ; 2 uses
  %i.cdj = load i64, ptr %i.cdi, align 8, !tbaa !116
  %i.cdk = add i64 %i.cdj, %.idx.i604
  store i64 %i.cdk, ptr %i.cdi, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIfEEvN5folly5RangeIPKT_EE.exit.i

_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIfEEvN5folly5RangeIPKT_EE.exit.i: ; preds = %bb.iz, %bb.iy
  %i.cdl = getelementptr inbounds nuw i8, ptr %.05024.i602, i64 8 ; 2 uses
  %.not.i605 = icmp eq ptr %i.cdl, %i.ccg
  br i1 %.not.i605, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.iw

._crit_edge20.i495:                               ; preds = %._crit_edge.i491
  %.not58.i496 = icmp eq i32 %.154.lcssa.i492, -1
  br i1 %.not58.i496, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.kj

bb.ja:                                            ; preds = %._crit_edge.i491, %.lr.ph19.i487
  %i.cdm = phi ptr [ %i.cbt, %.lr.ph19.i487 ], [ %i.cdu, %._crit_edge.i491 ] ; 2 uses
  %i.cdn = phi ptr [ %i.cbs, %.lr.ph19.i487 ], [ %i.cdv, %._crit_edge.i491 ]
  %indvars.iv.i488 = phi i64 [ 0, %.lr.ph19.i487 ], [ %indvars.iv.next.i494, %._crit_edge.i491 ] ; 2 uses
  %.05217.i489 = phi i32 [ -1, %.lr.ph19.i487 ], [ %.1.lcssa.i493, %._crit_edge.i491 ] ; 2 uses
  %.05316.i490 = phi i32 [ -1, %.lr.ph19.i487 ], [ %.154.lcssa.i492, %._crit_edge.i491 ] ; 2 uses
  %i.cdo = getelementptr inbounds nuw [8 x i8], ptr %i.cdm, i64 %indvars.iv.i488 ; 2 uses
  %i.cdp = load i32, ptr %i.cdo, align 4, !tbaa !114 ; 2 uses
  %i.cdq = getelementptr inbounds nuw i8, ptr %i.cdo, i64 4
  %i.cdr = load i32, ptr %i.cdq, align 4, !tbaa !88 ; 2 uses
  %i.cds = add nsw i32 %i.cdr, %i.cdp
  %i.cdt = icmp sgt i32 %i.cdr, 0
  br i1 %i.cdt, label %.lr.ph.i499, label %._crit_edge.i491

._crit_edge.loopexit.i513:                        ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i510
  %.pre42.i514 = load ptr, ptr %i.cbr, align 8, !tbaa !84
  %.pre43.i515 = load ptr, ptr %i.cbg, align 8, !tbaa !87
  br label %._crit_edge.i491

._crit_edge.i491:                                 ; preds = %._crit_edge.loopexit.i513, %bb.ja
  %i.cdu = phi ptr [ %i.cdm, %bb.ja ], [ %.pre43.i515, %._crit_edge.loopexit.i513 ] ; 2 uses
  %i.cdv = phi ptr [ %i.cdn, %bb.ja ], [ %.pre42.i514, %._crit_edge.loopexit.i513 ] ; 2 uses
  %.154.lcssa.i492 = phi i32 [ %.05316.i490, %bb.ja ], [ %.255.i511, %._crit_edge.loopexit.i513 ] ; 4 uses
  %.1.lcssa.i493 = phi i32 [ %.05217.i489, %bb.ja ], [ %.2.i512, %._crit_edge.loopexit.i513 ] ; 2 uses
  %indvars.iv.next.i494 = add nuw nsw i64 %indvars.iv.i488, 1 ; 2 uses
  %i.cdw = ptrtoint ptr %i.cdv to i64
  %i.cdx = ptrtoint ptr %i.cdu to i64
  %i.cdy = sub i64 %i.cdw, %i.cdx
  %i.cdz = ashr exact i64 %i.cdy, 3
  %i.cea = icmp ugt i64 %i.cdz, %indvars.iv.next.i494
  br i1 %i.cea, label %bb.ja, label %._crit_edge20.i495, !llvm.loop !668

.lr.ph.i499:                                      ; preds = %bb.ja, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i510
  %.014.i500 = phi i32 [ %i.coe, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i510 ], [ %i.cdp, %bb.ja ] ; 10 uses
  %.113.i501 = phi i32 [ %.2.i512, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i510 ], [ %.05217.i489, %bb.ja ] ; 4 uses
  %.15412.i502 = phi i32 [ %.255.i511, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i510 ], [ %.05316.i490, %bb.ja ] ; 7 uses
  %i.ceb = load ptr, ptr %i.cbp, align 8, !tbaa !83 ; 2 uses
  %.not.i.i503 = icmp eq ptr %i.ceb, null
  br i1 %.not.i.i503, label %.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i598, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i504

.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i598: ; preds = %.lr.ph.i499
  %.pre35.i599 = load i32, ptr %i.cbv, align 4, !tbaa !90
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i507

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i504: ; preds = %.lr.ph.i499
  %i.cec = zext i32 %.014.i500 to i64             ; 2 uses
  %i.ced = lshr i64 %i.cec, 6
  %i.cee = getelementptr inbounds nuw [8 x i8], ptr %i.ceb, i64 %i.ced
  %i.cef = load i64, ptr %i.cee, align 8, !tbaa !121
  %i.ceg = and i64 %i.cec, 63
  %i.ceh = shl nuw i64 1, %i.ceg
  %i.cei = and i64 %i.cef, %i.ceh
  %.not.i.i.i505 = icmp eq i64 %i.cei, 0
  %.pre36.i506 = load i32, ptr %i.cbv, align 4    ; 2 uses
  br i1 %.not.i.i.i505, label %bb.jb, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i507

bb.jb:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i504
  %i.cej = load i32, ptr %i.cbu, align 8, !tbaa !113 ; 3 uses
  %.not.i59.i543 = icmp ne i32 %i.cej, 0
  %i.cek = icmp eq i32 %.pre36.i506, 0
  %or.cond.i.i544 = select i1 %.not.i59.i543, i1 %i.cek, i1 false
  br i1 %or.cond.i.i544, label %bb.jc, label %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i545

._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i545: ; preds = %bb.jb
  %.pre.i546 = load ptr, ptr %i.cbx, align 8, !tbaa !115 ; 2 uses
  %.phi.trans.insert.i547 = getelementptr inbounds nuw i8, ptr %.pre.i546, i64 16
  %.pre29.i548 = load i64, ptr %.phi.trans.insert.i547, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i549

bb.jc:                                            ; preds = %bb.jb
  %i.cel = sext i32 %i.cej to i64                 ; 3 uses
  %i.cem = icmp eq i32 %i.cej, 1
  br i1 %i.cem, label %bb.jd, label %bb.jf

bb.jd:                                            ; preds = %bb.jc
  %i.cen = load ptr, ptr %i.cbx, align 8, !tbaa !115 ; 3 uses
  %i.ceo = getelementptr inbounds nuw i8, ptr %i.cen, i64 8
  %i.cep = load i64, ptr %i.ceo, align 8, !tbaa !117
  %i.ceq = getelementptr inbounds nuw i8, ptr %i.cen, i64 16
  %i.cer = load i64, ptr %i.ceq, align 8, !tbaa !116 ; 3 uses
  %i.ces = icmp sgt i64 %i.cep, %i.cer
  br i1 %i.ces, label %bb.je, label %bb.jf

bb.je:                                            ; preds = %bb.jd
  %i.cet = load ptr, ptr %i.cen, align 8, !tbaa !118
  %i.ceu = lshr i64 %i.cer, 3
  %i.cev = getelementptr inbounds nuw i8, ptr %i.cet, i64 %i.ceu ; 2 uses
  %i.cew = load i8, ptr %i.cev, align 1, !tbaa !34
  %i.cex = and i64 %i.cer, 7
  %i.cey = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cex
  %i.cez = load i8, ptr %i.cey, align 1, !tbaa !34
  %i.cfa = and i8 %i.cez, %i.cew
  store i8 %i.cfa, ptr %i.cev, align 1, !tbaa !34
  %i.cfb = load ptr, ptr %i.cbx, align 8, !tbaa !115 ; 2 uses
  %i.cfc = getelementptr inbounds nuw i8, ptr %i.cfb, i64 16 ; 2 uses
  %i.cfd = load i64, ptr %i.cfc, align 8, !tbaa !116
  %i.cfe = add nsw i64 %i.cfd, 1                  ; 2 uses
  store i64 %i.cfe, ptr %i.cfc, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i549

bb.jf:                                            ; preds = %bb.jd, %bb.jc
  %i.cff = add nsw i64 %i.cel, 7
  br label %bb.jg

bb.jg:                                            ; preds = %bb.jm, %bb.jf
  %.014.i64.i577 = phi i64 [ 0, %bb.jf ], [ %i.chd, %bb.jm ] ; 2 uses
  %i.cfg = sub nsw i64 %i.cel, %.014.i64.i577
  %i.cfh = load ptr, ptr %i.cbx, align 8, !tbaa !115 ; 4 uses
  %i.cfi = getelementptr inbounds nuw i8, ptr %i.cfh, i64 8
  %i.cfj = load i64, ptr %i.cfi, align 8, !tbaa !117
  %i.cfk = getelementptr inbounds nuw i8, ptr %i.cfh, i64 16 ; 3 uses
  %i.cfl = load i64, ptr %i.cfk, align 8, !tbaa !116 ; 3 uses
  %i.cfm = sub nsw i64 %i.cfj, %i.cfl
  %.sroa.speculated.i65.i578 = tail call i64 @llvm.smin.i64(i64 %i.cfm, i64 %i.cfg) ; 3 uses
  %i.cfn = load ptr, ptr %i.cfh, align 8, !tbaa !118 ; 3 uses
  %i.cfo = trunc i64 %i.cfl to i32                ; 6 uses
  %i.cfp = add nsw i64 %.sroa.speculated.i65.i578, %i.cfl ; 3 uses
  %i.cfq = trunc i64 %i.cfp to i32                ; 4 uses
  %.not.i.i.i66.i579 = icmp slt i32 %i.cfo, %i.cfq
  br i1 %.not.i.i.i66.i579, label %bb.jh, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i580

bb.jh:                                            ; preds = %bb.jg
  %i.cfr = add i32 %i.cfo, 63                     ; 2 uses
  %i.cfs = srem i32 %i.cfr, 64
  %i.cft = sub nsw i32 %i.cfr, %i.cfs             ; 6 uses
  %i.cfu = and i32 %i.cfq, -64                    ; 4 uses
  %i.cfv = icmp slt i32 %i.cfu, %i.cft
  br i1 %i.cfv, label %bb.ji, label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  %i.cfw = and i64 %i.cfp, 63
  %notmask.i.i.i.i79.i595 = shl nsw i64 -1, %i.cfw
  %i.cfx = sub nsw i32 %i.cft, %i.cfo             ; 2 uses
  %i.cfy = zext nneg i32 %i.cfx to i64
  %notmask.i.i.i.i.i80.i596 = shl nsw i64 -1, %i.cfy
  %i.cfz = xor i64 %notmask.i.i.i.i.i80.i596, -1
  %i.cga = sub nsw i32 64, %i.cfx
  %i.cgb = zext nneg i32 %i.cga to i64
  %i.cgc = shl i64 %i.cfz, %i.cgb
  %.not7.i597 = xor i64 %i.cgc, -1
  %i.cgd = or i64 %notmask.i.i.i.i79.i595, %.not7.i597
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i592

bb.jj:                                            ; preds = %bb.jh
  %.not32.i.i.i69.i582 = icmp eq i32 %i.cft, %i.cfo
  br i1 %.not32.i.i.i69.i582, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i584, label %bb.jk

bb.jk:                                            ; preds = %bb.jj
  %i.cge = sdiv i32 %i.cfo, 64
  %i.cgf = sub nsw i32 %i.cft, %i.cfo             ; 2 uses
  %i.cgg = zext nneg i32 %i.cgf to i64
  %notmask.i.i35.i.i.i70.i583 = shl nsw i64 -1, %i.cgg
  %i.cgh = xor i64 %notmask.i.i35.i.i.i70.i583, -1
  %i.cgi = sub nsw i32 64, %i.cgf
  %i.cgj = zext nneg i32 %i.cgi to i64
  %i.cgk = shl i64 %i.cgh, %i.cgj
  %i.cgl = xor i64 %i.cgk, -1
  %i.cgm = sext i32 %i.cge to i64
  %i.cgn = getelementptr inbounds [8 x i8], ptr %i.cfn, i64 %i.cgm ; 2 uses
  %i.cgo = load i64, ptr %i.cgn, align 8, !tbaa !121
  %i.cgp = and i64 %i.cgo, %i.cgl
  store i64 %i.cgp, ptr %i.cgn, align 8, !tbaa !121
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i584

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i584: ; preds = %bb.jk, %bb.jj
  %i.cgq = add nsw i32 %i.cft, 64                 ; 2 uses
  %.not3347.i.i.i72.i585 = icmp sgt i32 %i.cgq, %i.cfu
  br i1 %.not3347.i.i.i72.i585, label %._crit_edge.i.i.i76.i589, label %.lr.ph.i.i.i73.i586

._crit_edge.i.i.i76.i589:                         ; preds = %.lr.ph.i.i.i73.i586, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i584
  %.not34.i.i.i77.i590 = icmp eq i32 %i.cfu, %i.cfq
  br i1 %.not34.i.i.i77.i590, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i580, label %bb.jl

.lr.ph.i.i.i73.i586:                              ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i584, %.lr.ph.i.i.i73.i586
  %i.cgr = phi i32 [ %i.cgv, %.lr.ph.i.i.i73.i586 ], [ %i.cgq, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i584 ] ; 2 uses
  %.048.i.i.i74.i587 = phi i32 [ %i.cgr, %.lr.ph.i.i.i73.i586 ], [ %i.cft, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i584 ]
  %i.cgs = sdiv i32 %.048.i.i.i74.i587, 64
  %i.cgt = sext i32 %i.cgs to i64
  %i.cgu = getelementptr inbounds [8 x i8], ptr %i.cfn, i64 %i.cgt
  store i64 0, ptr %i.cgu, align 8, !tbaa !121
  %i.cgv = add nsw i32 %i.cgr, 64                 ; 2 uses
  %.not33.i.i.i75.i588 = icmp sgt i32 %i.cgv, %i.cfu
  br i1 %.not33.i.i.i75.i588, label %._crit_edge.i.i.i76.i589, label %.lr.ph.i.i.i73.i586, !llvm.loop !122

bb.jl:                                            ; preds = %._crit_edge.i.i.i76.i589
  %i.cgw = and i64 %i.cfp, 63
  %notmask.i37.i.i.i78.i591 = shl nsw i64 -1, %i.cgw
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i592

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i592: ; preds = %bb.jl, %bb.ji
  %notmask.i37.i.i.i78.sink.i593 = phi i64 [ %notmask.i37.i.i.i78.i591, %bb.jl ], [ %i.cgd, %bb.ji ]
  %.sink.i594 = ashr i32 %i.cfq, 6
  %i.cgx = sext i32 %.sink.i594 to i64
  %i.cgy = getelementptr inbounds [8 x i8], ptr %i.cfn, i64 %i.cgx ; 2 uses
  %i.cgz = load i64, ptr %i.cgy, align 8, !tbaa !121
  %i.cha = and i64 %i.cgz, %notmask.i37.i.i.i78.sink.i593
  store i64 %i.cha, ptr %i.cgy, align 8, !tbaa !121
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i580

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i580: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i592, %._crit_edge.i.i.i76.i589, %bb.jg
  %i.chb = load i64, ptr %i.cfk, align 8, !tbaa !116
  %i.chc = add nsw i64 %i.chb, %.sroa.speculated.i65.i578 ; 2 uses
  store i64 %i.chc, ptr %i.cfk, align 8, !tbaa !116
  %i.chd = add nsw i64 %.sroa.speculated.i65.i578, %.014.i64.i577 ; 3 uses
  %.not.i68.i581 = icmp eq i64 %i.chd, %i.cel
  br i1 %.not.i68.i581, label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i549, label %bb.jm

bb.jm:                                            ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i580
  %i.che = sub i64 %i.cff, %i.chd
  %i.chf = lshr i64 %i.che, 3
  tail call void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64) %i.cbw, i64 noundef %i.chf)
  br label %bb.jg, !llvm.loop !123

_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i549: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i580, %bb.je, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i545
  %i.chg = phi i64 [ %.pre29.i548, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i545 ], [ %i.cfe, %bb.je ], [ %i.chc, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i580 ] ; 4 uses
  %i.chh = phi ptr [ %.pre.i546, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i545 ], [ %i.cfb, %bb.je ], [ %i.cfh, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i580 ] ; 3 uses
  %i.chi = getelementptr inbounds nuw i8, ptr %i.chh, i64 8
  %i.chj = load i64, ptr %i.chi, align 8, !tbaa !117 ; 2 uses
  %i.chk = icmp sgt i64 %i.chj, %i.chg
  br i1 %i.chk, label %bb.jn, label %.preheader10.i550

bb.jn:                                            ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i549
  %i.chl = load ptr, ptr %i.chh, align 8, !tbaa !118
  %i.chm = lshr i64 %i.chg, 3
  %i.chn = getelementptr inbounds nuw i8, ptr %i.chl, i64 %i.chm ; 2 uses
  %i.cho = load i8, ptr %i.chn, align 1, !tbaa !34
  %i.chp = trunc i64 %i.chg to i8
  %i.chq = and i8 %i.chp, 7
  %i.chr = shl nuw i8 1, %i.chq
  %i.chs = or i8 %i.cho, %i.chr
  store i8 %i.chs, ptr %i.chn, align 1, !tbaa !34
  %i.cht = load ptr, ptr %i.cbx, align 8, !tbaa !115
  %i.chu = getelementptr inbounds nuw i8, ptr %i.cht, i64 16 ; 2 uses
  %i.chv = load i64, ptr %i.chu, align 8, !tbaa !116
  %i.chw = add nsw i64 %i.chv, 1
  store i64 %i.chw, ptr %i.chu, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i561

.preheader10.i550:                                ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i549, %bb.jt
  %i.chx = phi i64 [ %.pre34.i560, %bb.jt ], [ %i.chg, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i549 ] ; 3 uses
  %i.chy = phi i64 [ %.pre32.i558, %bb.jt ], [ %i.chj, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i549 ]
  %i.chz = phi ptr [ %.pre30.i556, %bb.jt ], [ %i.chh, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i549 ] ; 2 uses
  %.014.i.i551 = phi i64 [ %i.cju, %bb.jt ], [ 0, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i549 ] ; 2 uses
  %i.cia = sub nsw i64 1, %.014.i.i551
  %i.cib = getelementptr inbounds nuw i8, ptr %i.chz, i64 16 ; 2 uses
  %i.cic = sub nsw i64 %i.chy, %i.chx
  %.sroa.speculated.i.i552 = tail call i64 @llvm.smin.i64(i64 %i.cic, i64 %i.cia) ; 3 uses
  %i.cid = load ptr, ptr %i.chz, align 8, !tbaa !118 ; 3 uses
  %i.cie = trunc i64 %i.chx to i32                ; 6 uses
  %i.cif = add nsw i64 %.sroa.speculated.i.i552, %i.chx ; 3 uses
  %i.cig = trunc i64 %i.cif to i32                ; 4 uses
  %.not.i.i.i.i553 = icmp slt i32 %i.cie, %i.cig
  br i1 %.not.i.i.i.i553, label %bb.jo, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i554

end_hunk_7
begin_hunk_8_@"_ZZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEvENKUlvE_clEv":bb.a

_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i510: ; preds = %bb.ki, %bb.kh, %bb.kf, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i508, %bb.jw, %bb.jv, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i561
  %.255.i511 = phi i32 [ %.15412.i502, %bb.kf ], [ %.15412.i502, %bb.jw ], [ %.014.i500, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i508 ], [ %.15412.i502, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i561 ], [ %.15412.i502, %bb.jv ], [ %.014.i500, %bb.kh ], [ %.014.i500, %bb.ki ] ; 2 uses
  %.2.i512 = phi i32 [ %.014.i500, %bb.kf ], [ %.113.i501, %bb.jw ], [ %.014.i500, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit60.i508 ], [ %.113.i501, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i561 ], [ %.113.i501, %bb.jv ], [ %.014.i500, %bb.kh ], [ %.014.i500, %bb.ki ] ; 2 uses
  %i.coe = add nsw i32 %.014.i500, 1              ; 2 uses
  %i.cof = icmp slt i32 %i.coe, %i.cds
  br i1 %i.cof, label %.lr.ph.i499, label %._crit_edge.loopexit.i513, !llvm.loop !669

bb.kj:                                            ; preds = %._crit_edge20.i495
  %i.cog = sext i32 %.154.lcssa.i492 to i64
  %i.coh = getelementptr inbounds [4 x i8], ptr %i.cbo, i64 %i.cog ; 2 uses
  %reass.sub1067 = sub i32 %.1.lcssa.i493, %.154.lcssa.i492
  %i.coi = add i32 %reass.sub1067, 1
  %i.coj = sext i32 %i.coi to i64
  %i.cok = load ptr, ptr %i.ccc, align 8, !tbaa !115 ; 3 uses
  %i.col = getelementptr inbounds nuw i8, ptr %i.cok, i64 16
  %i.com = load i64, ptr %i.col, align 8, !tbaa !116 ; 2 uses
  %.idx6.i498 = shl nuw nsw i64 %i.coj, 2         ; 4 uses
  %i.con = add i64 %i.com, %.idx6.i498
  %i.coo = getelementptr inbounds nuw i8, ptr %i.cok, i64 8
  %i.cop = load i64, ptr %i.coo, align 8, !tbaa !117
  %i.coq = icmp ugt i64 %i.con, %i.cop
  br i1 %i.coq, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.ccd, i64 %.idx6.i498, ptr %i.coh)
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit

bb.kl:                                            ; preds = %bb.kj
  %i.cor = load ptr, ptr %i.cok, align 8, !tbaa !118
  %i.cos = getelementptr inbounds i8, ptr %i.cor, i64 %i.com
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cos, ptr align 4 %i.coh, i64 %.idx6.i498, i1 false)
  %i.cot = load ptr, ptr %i.ccc, align 8, !tbaa !115
  %i.cou = getelementptr inbounds nuw i8, ptr %i.cot, i64 16 ; 2 uses
  %i.cov = load i64, ptr %i.cou, align 8, !tbaa !116
  %i.cow = add i64 %i.cov, %.idx6.i498
  store i64 %i.cow, ptr %i.cou, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit

bb.km:                                            ; preds = %bb.a
  %i.cox = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.coy = load ptr, ptr %i.cox, align 8, !tbaa !641, !nonnull !9, !align !640 ; 5 uses
  %i.coz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cpa = load ptr, ptr %i.coz, align 8, !tbaa !642, !nonnull !9, !align !640
  %i.cpb = load ptr, ptr %i.cpa, align 8, !tbaa !52 ; 15 uses
  %i.cpc = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.cpd = icmp eq ptr %i.cpc, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorIdEE, i64 16)
  %i.cpe = select i1 %i.cpd, ptr %i.d, ptr null
  %i.cpf = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.cpg = load ptr, ptr %i.cpf, align 8, !tbaa !670 ; 3 uses
  %i.cph = getelementptr inbounds nuw i8, ptr %i.cpe, i64 40 ; 2 uses
  %i.cpi = load ptr, ptr %i.cph, align 8, !tbaa !83
  %.not5.i607 = icmp eq ptr %i.cpi, null
  br i1 %.not5.i607, label %bb.kn, label %.preheader11.i608

.preheader11.i608:                                ; preds = %bb.km
  %i.cpj = getelementptr inbounds nuw i8, ptr %i.coy, i64 8 ; 2 uses
  %i.cpk = load ptr, ptr %i.cpj, align 8, !tbaa !84 ; 2 uses
  %i.cpl = load ptr, ptr %i.coy, align 8, !tbaa !87 ; 2 uses
  %.not27.i609 = icmp eq ptr %i.cpk, %i.cpl
  br i1 %.not27.i609, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph19.i610

.lr.ph19.i610:                                    ; preds = %.preheader11.i608
  %i.cpm = getelementptr inbounds nuw i8, ptr %i.cpb, i64 64 ; 3 uses
  %i.cpn = getelementptr inbounds nuw i8, ptr %i.cpb, i64 68 ; 4 uses
  %i.cpo = getelementptr inbounds nuw i8, ptr %i.cpb, i64 104 ; 3 uses
  %i.cpp = getelementptr inbounds nuw i8, ptr %i.cpb, i64 152 ; 9 uses
  %i.cpq = getelementptr inbounds nuw i8, ptr %i.cpb, i64 76
  %i.cpr = getelementptr inbounds nuw i8, ptr %i.cpb, i64 72 ; 2 uses
  %i.cps = getelementptr inbounds nuw i8, ptr %i.cpb, i64 216 ; 2 uses
  %i.cpt = getelementptr inbounds nuw i8, ptr %i.cpb, i64 168
  %i.cpu = getelementptr inbounds nuw i8, ptr %i.cpb, i64 280 ; 4 uses
  %i.cpv = getelementptr inbounds nuw i8, ptr %i.cpb, i64 232 ; 2 uses
  br label %bb.ks

bb.kn:                                            ; preds = %bb.km
  %i.cpw = load ptr, ptr %i.coy, align 8, !tbaa !87 ; 2 uses
  %i.cpx = getelementptr inbounds nuw i8, ptr %i.coy, i64 8
  %i.cpy = load ptr, ptr %i.cpx, align 8, !tbaa !84 ; 2 uses
  %.not23.i723 = icmp eq ptr %i.cpw, %i.cpy
  br i1 %.not23.i723, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph26.i724

.lr.ph26.i724:                                    ; preds = %bb.kn
  %i.cpz = getelementptr inbounds nuw i8, ptr %i.cpb, i64 68
  %i.cqa = getelementptr inbounds nuw i8, ptr %i.cpb, i64 104
  %i.cqb = getelementptr inbounds nuw i8, ptr %i.cpb, i64 64 ; 2 uses
  %i.cqc = getelementptr inbounds nuw i8, ptr %i.cpb, i64 280 ; 2 uses
  %i.cqd = getelementptr inbounds nuw i8, ptr %i.cpb, i64 232
  br label %bb.ko

bb.ko:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIdEEvN5folly5RangeIPKT_EE.exit.i, %.lr.ph26.i724
  %.05024.i725 = phi ptr [ %i.cpw, %.lr.ph26.i724 ], [ %i.crd, %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIdEEvN5folly5RangeIPKT_EE.exit.i ] ; 3 uses
  %i.cqe = getelementptr inbounds nuw i8, ptr %.05024.i725, i64 4 ; 2 uses
  %i.cqf = load i32, ptr %i.cqe, align 4, !tbaa !88 ; 3 uses
  %i.cqg = load i32, ptr %i.cpz, align 4, !tbaa !90
  %i.cqh = icmp sgt i32 %i.cqg, 0
  br i1 %i.cqh, label %bb.kp, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i726

bb.kp:                                            ; preds = %bb.ko
  %i.cqi = sext i32 %i.cqf to i64
  tail call void @_ZN8facebook5velox16ByteOutputStream10appendBoolEbl(ptr noundef nonnull align 8 dereferenceable(64) %i.cqa, i1 noundef zeroext false, i64 noundef %i.cqi)
  %.pre44.i729 = load i32, ptr %i.cqe, align 4, !tbaa !88
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i726

_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i726: ; preds = %bb.kp, %bb.ko
  %i.cqj = phi i32 [ %i.cqf, %bb.ko ], [ %.pre44.i729, %bb.kp ]
  %i.cqk = load i32, ptr %i.cqb, align 8, !tbaa !113
  %i.cql = add nsw i32 %i.cqk, %i.cqf
  store i32 %i.cql, ptr %i.cqb, align 8, !tbaa !113
  %i.cqm = load i32, ptr %.05024.i725, align 4, !tbaa !114
  %i.cqn = sext i32 %i.cqm to i64
  %i.cqo = getelementptr inbounds [8 x i8], ptr %i.cpg, i64 %i.cqn ; 2 uses
  %i.cqp = sext i32 %i.cqj to i64
  %i.cqq = load ptr, ptr %i.cqc, align 8, !tbaa !115 ; 3 uses
  %i.cqr = getelementptr inbounds nuw i8, ptr %i.cqq, i64 16
  %i.cqs = load i64, ptr %i.cqr, align 8, !tbaa !116 ; 2 uses
  %.idx.i727 = shl nuw nsw i64 %i.cqp, 3          ; 4 uses
  %i.cqt = add i64 %i.cqs, %.idx.i727
  %i.cqu = getelementptr inbounds nuw i8, ptr %i.cqq, i64 8
  %i.cqv = load i64, ptr %i.cqu, align 8, !tbaa !117
  %i.cqw = icmp ugt i64 %i.cqt, %i.cqv
  br i1 %i.cqw, label %bb.kq, label %bb.kr

bb.kq:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i726
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.cqd, i64 %.idx.i727, ptr %i.cqo)
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIdEEvN5folly5RangeIPKT_EE.exit.i

bb.kr:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i726
  %i.cqx = load ptr, ptr %i.cqq, align 8, !tbaa !118
  %i.cqy = getelementptr inbounds i8, ptr %i.cqx, i64 %i.cqs
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cqy, ptr align 8 %i.cqo, i64 %.idx.i727, i1 false)
  %i.cqz = load ptr, ptr %i.cqc, align 8, !tbaa !115
  %i.cra = getelementptr inbounds nuw i8, ptr %i.cqz, i64 16 ; 2 uses
  %i.crb = load i64, ptr %i.cra, align 8, !tbaa !116
  %i.crc = add i64 %i.crb, %.idx.i727
  store i64 %i.crc, ptr %i.cra, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIdEEvN5folly5RangeIPKT_EE.exit.i

_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendIdEEvN5folly5RangeIPKT_EE.exit.i: ; preds = %bb.kr, %bb.kq
  %i.crd = getelementptr inbounds nuw i8, ptr %.05024.i725, i64 8 ; 2 uses
  %.not.i728 = icmp eq ptr %i.crd, %i.cpy
  br i1 %.not.i728, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.ko

._crit_edge20.i618:                               ; preds = %._crit_edge.i614
  %.not58.i619 = icmp eq i32 %.154.lcssa.i615, -1
  br i1 %.not58.i619, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.mb

bb.ks:                                            ; preds = %._crit_edge.i614, %.lr.ph19.i610
  %i.cre = phi ptr [ %i.cpl, %.lr.ph19.i610 ], [ %i.crm, %._crit_edge.i614 ] ; 2 uses
  %i.crf = phi ptr [ %i.cpk, %.lr.ph19.i610 ], [ %i.crn, %._crit_edge.i614 ]
  %indvars.iv.i611 = phi i64 [ 0, %.lr.ph19.i610 ], [ %indvars.iv.next.i617, %._crit_edge.i614 ] ; 2 uses
  %.05217.i612 = phi i32 [ -1, %.lr.ph19.i610 ], [ %.1.lcssa.i616, %._crit_edge.i614 ] ; 2 uses
  %.05316.i613 = phi i32 [ -1, %.lr.ph19.i610 ], [ %.154.lcssa.i615, %._crit_edge.i614 ] ; 2 uses
  %i.crg = getelementptr inbounds nuw [8 x i8], ptr %i.cre, i64 %indvars.iv.i611 ; 2 uses
  %i.crh = load i32, ptr %i.crg, align 4, !tbaa !114 ; 2 uses
  %i.cri = getelementptr inbounds nuw i8, ptr %i.crg, i64 4
  %i.crj = load i32, ptr %i.cri, align 4, !tbaa !88 ; 2 uses
  %i.crk = add nsw i32 %i.crj, %i.crh
  %i.crl = icmp sgt i32 %i.crj, 0
  br i1 %i.crl, label %.lr.ph.i622, label %._crit_edge.i614

._crit_edge.loopexit.i636:                        ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i633
  %.pre42.i637 = load ptr, ptr %i.cpj, align 8, !tbaa !84
  %.pre43.i638 = load ptr, ptr %i.coy, align 8, !tbaa !87
  br label %._crit_edge.i614

._crit_edge.i614:                                 ; preds = %._crit_edge.loopexit.i636, %bb.ks
  %i.crm = phi ptr [ %i.cre, %bb.ks ], [ %.pre43.i638, %._crit_edge.loopexit.i636 ] ; 2 uses
  %i.crn = phi ptr [ %i.crf, %bb.ks ], [ %.pre42.i637, %._crit_edge.loopexit.i636 ] ; 2 uses
  %.154.lcssa.i615 = phi i32 [ %.05316.i613, %bb.ks ], [ %.255.i634, %._crit_edge.loopexit.i636 ] ; 4 uses
  %.1.lcssa.i616 = phi i32 [ %.05217.i612, %bb.ks ], [ %.2.i635, %._crit_edge.loopexit.i636 ] ; 2 uses
  %indvars.iv.next.i617 = add nuw nsw i64 %indvars.iv.i611, 1 ; 2 uses
  %i.cro = ptrtoint ptr %i.crn to i64
  %i.crp = ptrtoint ptr %i.crm to i64
  %i.crq = sub i64 %i.cro, %i.crp
  %i.crr = ashr exact i64 %i.crq, 3
  %i.crs = icmp ugt i64 %i.crr, %indvars.iv.next.i617
  br i1 %i.crs, label %bb.ks, label %._crit_edge20.i618, !llvm.loop !673

.lr.ph.i622:                                      ; preds = %bb.ks, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i633
  %.014.i623 = phi i32 [ %i.dbw, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i633 ], [ %i.crh, %bb.ks ] ; 10 uses
  %.113.i624 = phi i32 [ %.2.i635, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i633 ], [ %.05217.i612, %bb.ks ] ; 4 uses
  %.15412.i625 = phi i32 [ %.255.i634, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i633 ], [ %.05316.i613, %bb.ks ] ; 7 uses
  %i.crt = load ptr, ptr %i.cph, align 8, !tbaa !83 ; 2 uses
  %.not.i.i626 = icmp eq ptr %i.crt, null
  br i1 %.not.i.i626, label %.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i721, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i627

.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i721: ; preds = %.lr.ph.i622
  %.pre35.i722 = load i32, ptr %i.cpn, align 4, !tbaa !90
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i630

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i627: ; preds = %.lr.ph.i622
  %i.cru = zext i32 %.014.i623 to i64             ; 2 uses
  %i.crv = lshr i64 %i.cru, 6
  %i.crw = getelementptr inbounds nuw [8 x i8], ptr %i.crt, i64 %i.crv
  %i.crx = load i64, ptr %i.crw, align 8, !tbaa !121
  %i.cry = and i64 %i.cru, 63
  %i.crz = shl nuw i64 1, %i.cry
  %i.csa = and i64 %i.crx, %i.crz
  %.not.i.i.i628 = icmp eq i64 %i.csa, 0
  %.pre36.i629 = load i32, ptr %i.cpn, align 4    ; 2 uses
  br i1 %.not.i.i.i628, label %bb.kt, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i630

bb.kt:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i627
  %i.csb = load i32, ptr %i.cpm, align 8, !tbaa !113 ; 3 uses
  %.not.i59.i666 = icmp ne i32 %i.csb, 0
  %i.csc = icmp eq i32 %.pre36.i629, 0
  %or.cond.i.i667 = select i1 %.not.i59.i666, i1 %i.csc, i1 false
  br i1 %or.cond.i.i667, label %bb.ku, label %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i668

._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i668: ; preds = %bb.kt
  %.pre.i669 = load ptr, ptr %i.cpp, align 8, !tbaa !115 ; 2 uses
  %.phi.trans.insert.i670 = getelementptr inbounds nuw i8, ptr %.pre.i669, i64 16
  %.pre29.i671 = load i64, ptr %.phi.trans.insert.i670, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i672

bb.ku:                                            ; preds = %bb.kt
  %i.csd = sext i32 %i.csb to i64                 ; 3 uses
  %i.cse = icmp eq i32 %i.csb, 1
  br i1 %i.cse, label %bb.kv, label %bb.kx

bb.kv:                                            ; preds = %bb.ku
  %i.csf = load ptr, ptr %i.cpp, align 8, !tbaa !115 ; 3 uses
  %i.csg = getelementptr inbounds nuw i8, ptr %i.csf, i64 8
  %i.csh = load i64, ptr %i.csg, align 8, !tbaa !117
  %i.csi = getelementptr inbounds nuw i8, ptr %i.csf, i64 16
  %i.csj = load i64, ptr %i.csi, align 8, !tbaa !116 ; 3 uses
  %i.csk = icmp sgt i64 %i.csh, %i.csj
  br i1 %i.csk, label %bb.kw, label %bb.kx

bb.kw:                                            ; preds = %bb.kv
  %i.csl = load ptr, ptr %i.csf, align 8, !tbaa !118
  %i.csm = lshr i64 %i.csj, 3
  %i.csn = getelementptr inbounds nuw i8, ptr %i.csl, i64 %i.csm ; 2 uses
  %i.cso = load i8, ptr %i.csn, align 1, !tbaa !34
  %i.csp = and i64 %i.csj, 7
  %i.csq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.csp
  %i.csr = load i8, ptr %i.csq, align 1, !tbaa !34
  %i.css = and i8 %i.csr, %i.cso
  store i8 %i.css, ptr %i.csn, align 1, !tbaa !34
  %i.cst = load ptr, ptr %i.cpp, align 8, !tbaa !115 ; 2 uses
  %i.csu = getelementptr inbounds nuw i8, ptr %i.cst, i64 16 ; 2 uses
  %i.csv = load i64, ptr %i.csu, align 8, !tbaa !116
  %i.csw = add nsw i64 %i.csv, 1                  ; 2 uses
  store i64 %i.csw, ptr %i.csu, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i672

bb.kx:                                            ; preds = %bb.kv, %bb.ku
  %i.csx = add nsw i64 %i.csd, 7
  br label %bb.ky

bb.ky:                                            ; preds = %bb.le, %bb.kx
  %.014.i64.i700 = phi i64 [ 0, %bb.kx ], [ %i.cuv, %bb.le ] ; 2 uses
  %i.csy = sub nsw i64 %i.csd, %.014.i64.i700
  %i.csz = load ptr, ptr %i.cpp, align 8, !tbaa !115 ; 4 uses
  %i.cta = getelementptr inbounds nuw i8, ptr %i.csz, i64 8
  %i.ctb = load i64, ptr %i.cta, align 8, !tbaa !117
  %i.ctc = getelementptr inbounds nuw i8, ptr %i.csz, i64 16 ; 3 uses
  %i.ctd = load i64, ptr %i.ctc, align 8, !tbaa !116 ; 3 uses
  %i.cte = sub nsw i64 %i.ctb, %i.ctd
  %.sroa.speculated.i65.i701 = tail call i64 @llvm.smin.i64(i64 %i.cte, i64 %i.csy) ; 3 uses
  %i.ctf = load ptr, ptr %i.csz, align 8, !tbaa !118 ; 3 uses
  %i.ctg = trunc i64 %i.ctd to i32                ; 6 uses
  %i.cth = add nsw i64 %.sroa.speculated.i65.i701, %i.ctd ; 3 uses
  %i.cti = trunc i64 %i.cth to i32                ; 4 uses
  %.not.i.i.i66.i702 = icmp slt i32 %i.ctg, %i.cti
  br i1 %.not.i.i.i66.i702, label %bb.kz, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i703

bb.kz:                                            ; preds = %bb.ky
  %i.ctj = add i32 %i.ctg, 63                     ; 2 uses
  %i.ctk = srem i32 %i.ctj, 64
  %i.ctl = sub nsw i32 %i.ctj, %i.ctk             ; 6 uses
  %i.ctm = and i32 %i.cti, -64                    ; 4 uses
  %i.ctn = icmp slt i32 %i.ctm, %i.ctl
  br i1 %i.ctn, label %bb.la, label %bb.lb

bb.la:                                            ; preds = %bb.kz
  %i.cto = and i64 %i.cth, 63
  %notmask.i.i.i.i79.i718 = shl nsw i64 -1, %i.cto
  %i.ctp = sub nsw i32 %i.ctl, %i.ctg             ; 2 uses
  %i.ctq = zext nneg i32 %i.ctp to i64
  %notmask.i.i.i.i.i80.i719 = shl nsw i64 -1, %i.ctq
  %i.ctr = xor i64 %notmask.i.i.i.i.i80.i719, -1
  %i.cts = sub nsw i32 64, %i.ctp
  %i.ctt = zext nneg i32 %i.cts to i64
  %i.ctu = shl i64 %i.ctr, %i.ctt
  %.not7.i720 = xor i64 %i.ctu, -1
  %i.ctv = or i64 %notmask.i.i.i.i79.i718, %.not7.i720
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i715

bb.lb:                                            ; preds = %bb.kz
  %.not32.i.i.i69.i705 = icmp eq i32 %i.ctl, %i.ctg
  br i1 %.not32.i.i.i69.i705, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i707, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.ctw = sdiv i32 %i.ctg, 64
  %i.ctx = sub nsw i32 %i.ctl, %i.ctg             ; 2 uses
  %i.cty = zext nneg i32 %i.ctx to i64
  %notmask.i.i35.i.i.i70.i706 = shl nsw i64 -1, %i.cty
  %i.ctz = xor i64 %notmask.i.i35.i.i.i70.i706, -1
  %i.cua = sub nsw i32 64, %i.ctx
  %i.cub = zext nneg i32 %i.cua to i64
  %i.cuc = shl i64 %i.ctz, %i.cub
  %i.cud = xor i64 %i.cuc, -1
  %i.cue = sext i32 %i.ctw to i64
  %i.cuf = getelementptr inbounds [8 x i8], ptr %i.ctf, i64 %i.cue ; 2 uses
  %i.cug = load i64, ptr %i.cuf, align 8, !tbaa !121
  %i.cuh = and i64 %i.cug, %i.cud
  store i64 %i.cuh, ptr %i.cuf, align 8, !tbaa !121
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i707

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i707: ; preds = %bb.lc, %bb.lb
  %i.cui = add nsw i32 %i.ctl, 64                 ; 2 uses
  %.not3347.i.i.i72.i708 = icmp sgt i32 %i.cui, %i.ctm
  br i1 %.not3347.i.i.i72.i708, label %._crit_edge.i.i.i76.i712, label %.lr.ph.i.i.i73.i709

._crit_edge.i.i.i76.i712:                         ; preds = %.lr.ph.i.i.i73.i709, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i707
  %.not34.i.i.i77.i713 = icmp eq i32 %i.ctm, %i.cti
  br i1 %.not34.i.i.i77.i713, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i703, label %bb.ld

.lr.ph.i.i.i73.i709:                              ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i707, %.lr.ph.i.i.i73.i709
  %i.cuj = phi i32 [ %i.cun, %.lr.ph.i.i.i73.i709 ], [ %i.cui, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i707 ] ; 2 uses
  %.048.i.i.i74.i710 = phi i32 [ %i.cuj, %.lr.ph.i.i.i73.i709 ], [ %i.ctl, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i71.i707 ]
  %i.cuk = sdiv i32 %.048.i.i.i74.i710, 64
  %i.cul = sext i32 %i.cuk to i64
  %i.cum = getelementptr inbounds [8 x i8], ptr %i.ctf, i64 %i.cul
  store i64 0, ptr %i.cum, align 8, !tbaa !121
  %i.cun = add nsw i32 %i.cuj, 64                 ; 2 uses
  %.not33.i.i.i75.i711 = icmp sgt i32 %i.cun, %i.ctm
  br i1 %.not33.i.i.i75.i711, label %._crit_edge.i.i.i76.i712, label %.lr.ph.i.i.i73.i709, !llvm.loop !122

bb.ld:                                            ; preds = %._crit_edge.i.i.i76.i712
  %i.cuo = and i64 %i.cth, 63
  %notmask.i37.i.i.i78.i714 = shl nsw i64 -1, %i.cuo
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i715

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i715: ; preds = %bb.ld, %bb.la
  %notmask.i37.i.i.i78.sink.i716 = phi i64 [ %notmask.i37.i.i.i78.i714, %bb.ld ], [ %i.ctv, %bb.la ]
  %.sink.i717 = ashr i32 %i.cti, 6
  %i.cup = sext i32 %.sink.i717 to i64
  %i.cuq = getelementptr inbounds [8 x i8], ptr %i.ctf, i64 %i.cup ; 2 uses
  %i.cur = load i64, ptr %i.cuq, align 8, !tbaa !121
  %i.cus = and i64 %i.cur, %notmask.i37.i.i.i78.sink.i716
  store i64 %i.cus, ptr %i.cuq, align 8, !tbaa !121
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i703

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i703: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.sink.split.i715, %._crit_edge.i.i.i76.i712, %bb.ky
  %i.cut = load i64, ptr %i.ctc, align 8, !tbaa !116
  %i.cuu = add nsw i64 %i.cut, %.sroa.speculated.i65.i701 ; 2 uses
  store i64 %i.cuu, ptr %i.ctc, align 8, !tbaa !116
  %i.cuv = add nsw i64 %.sroa.speculated.i65.i701, %.014.i64.i700 ; 3 uses
  %.not.i68.i704 = icmp eq i64 %i.cuv, %i.csd
  br i1 %.not.i68.i704, label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i672, label %bb.le

bb.le:                                            ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i703
  %i.cuw = sub i64 %i.csx, %i.cuv
  %i.cux = lshr i64 %i.cuw, 3
  tail call void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64) %i.cpo, i64 noundef %i.cux)
  br label %bb.ky, !llvm.loop !123

_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i672: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i703, %bb.kw, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i668
  %i.cuy = phi i64 [ %.pre29.i671, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i668 ], [ %i.csw, %bb.kw ], [ %i.cuu, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i703 ] ; 4 uses
  %i.cuz = phi ptr [ %.pre.i669, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81_crit_edge.i668 ], [ %i.cst, %bb.kw ], [ %i.csz, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i67.i703 ] ; 3 uses
  %i.cva = getelementptr inbounds nuw i8, ptr %i.cuz, i64 8
  %i.cvb = load i64, ptr %i.cva, align 8, !tbaa !117 ; 2 uses
  %i.cvc = icmp sgt i64 %i.cvb, %i.cuy
  br i1 %i.cvc, label %bb.lf, label %.preheader10.i673

bb.lf:                                            ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i672
  %i.cvd = load ptr, ptr %i.cuz, align 8, !tbaa !118
  %i.cve = lshr i64 %i.cuy, 3
  %i.cvf = getelementptr inbounds nuw i8, ptr %i.cvd, i64 %i.cve ; 2 uses
  %i.cvg = load i8, ptr %i.cvf, align 1, !tbaa !34
  %i.cvh = trunc i64 %i.cuy to i8
  %i.cvi = and i8 %i.cvh, 7
  %i.cvj = shl nuw i8 1, %i.cvi
  %i.cvk = or i8 %i.cvg, %i.cvj
  store i8 %i.cvk, ptr %i.cvf, align 1, !tbaa !34
  %i.cvl = load ptr, ptr %i.cpp, align 8, !tbaa !115
  %i.cvm = getelementptr inbounds nuw i8, ptr %i.cvl, i64 16 ; 2 uses
  %i.cvn = load i64, ptr %i.cvm, align 8, !tbaa !116
  %i.cvo = add nsw i64 %i.cvn, 1
  store i64 %i.cvo, ptr %i.cvm, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i684

.preheader10.i673:                                ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i672, %bb.ll
  %i.cvp = phi i64 [ %.pre34.i683, %bb.ll ], [ %i.cuy, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i672 ] ; 3 uses
  %i.cvq = phi i64 [ %.pre32.i681, %bb.ll ], [ %i.cvb, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i672 ]
  %i.cvr = phi ptr [ %.pre30.i679, %bb.ll ], [ %i.cuz, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i672 ] ; 2 uses
  %.014.i.i674 = phi i64 [ %i.cxm, %bb.ll ], [ 0, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit81.i672 ] ; 2 uses
  %i.cvs = sub nsw i64 1, %.014.i.i674
  %i.cvt = getelementptr inbounds nuw i8, ptr %i.cvr, i64 16 ; 2 uses
  %i.cvu = sub nsw i64 %i.cvq, %i.cvp
  %.sroa.speculated.i.i675 = tail call i64 @llvm.smin.i64(i64 %i.cvu, i64 %i.cvs) ; 3 uses
  %i.cvv = load ptr, ptr %i.cvr, align 8, !tbaa !118 ; 3 uses
  %i.cvw = trunc i64 %i.cvp to i32                ; 6 uses
  %i.cvx = add nsw i64 %.sroa.speculated.i.i675, %i.cvp ; 3 uses
  %i.cvy = trunc i64 %i.cvx to i32                ; 4 uses
  %.not.i.i.i.i676 = icmp slt i32 %i.cvw, %i.cvy
  br i1 %.not.i.i.i.i676, label %bb.lg, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i677

end_hunk_8
begin_hunk_9_@"_ZZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEvENKUlvE_clEv":bb.a
  %i.dcd = getelementptr inbounds nuw i8, ptr %i.dcc, i64 16
  %i.dce = load i64, ptr %i.dcd, align 8, !tbaa !116 ; 2 uses
  %.idx6.i621 = shl nuw nsw i64 %i.dcb, 3         ; 4 uses
  %i.dcf = add i64 %i.dce, %.idx6.i621
  %i.dcg = getelementptr inbounds nuw i8, ptr %i.dcc, i64 8
  %i.dch = load i64, ptr %i.dcg, align 8, !tbaa !117
  %i.dci = icmp ugt i64 %i.dcf, %i.dch
  br i1 %i.dci, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.cpv, i64 %.idx6.i621, ptr %i.dbz)
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit

bb.md:                                            ; preds = %bb.mb
  %i.dcj = load ptr, ptr %i.dcc, align 8, !tbaa !118
  %i.dck = getelementptr inbounds i8, ptr %i.dcj, i64 %i.dce
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dck, ptr align 8 %i.dbz, i64 %.idx6.i621, i1 false)
  %i.dcl = load ptr, ptr %i.cpu, align 8, !tbaa !115
  %i.dcm = getelementptr inbounds nuw i8, ptr %i.dcl, i64 16 ; 2 uses
  %i.dcn = load i64, ptr %i.dcm, align 8, !tbaa !116
  %i.dco = add i64 %i.dcn, %.idx6.i621
  store i64 %i.dco, ptr %i.dcm, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit

bb.me:                                            ; preds = %bb.a
  %i.dcp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dcq = load ptr, ptr %i.dcp, align 8, !tbaa !641, !nonnull !9, !align !640 ; 5 uses
  %i.dcr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dcs = load ptr, ptr %i.dcr, align 8, !tbaa !642, !nonnull !9, !align !640
  %i.dct = load ptr, ptr %i.dcs, align 8, !tbaa !52 ; 16 uses
  %i.dcu = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.dcv = icmp eq ptr %i.dcu, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorINS0_10StringViewEEE, i64 16)
  %i.dcw = select i1 %i.dcv, ptr %i.d, ptr null
  %i.dcx = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.dcy = load ptr, ptr %i.dcx, align 8, !tbaa !675 ; 2 uses
  %i.dcz = getelementptr inbounds nuw i8, ptr %i.dcw, i64 40 ; 2 uses
  %i.dda = load ptr, ptr %i.dcz, align 8, !tbaa !83
  %.not1.i = icmp eq ptr %i.dda, null
  br i1 %.not1.i, label %bb.mf, label %.preheader5.i

.preheader5.i:                                    ; preds = %bb.me
  %i.ddb = getelementptr inbounds nuw i8, ptr %i.dcq, i64 8 ; 2 uses
  %i.ddc = load ptr, ptr %i.ddb, align 8, !tbaa !84 ; 2 uses
  %i.ddd = load ptr, ptr %i.dcq, align 8, !tbaa !87 ; 2 uses
  %.not15.i = icmp eq ptr %i.ddc, %i.ddd
  br i1 %.not15.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph10.i

.lr.ph10.i:                                       ; preds = %.preheader5.i
  %i.dde = getelementptr inbounds nuw i8, ptr %i.dct, i64 64 ; 3 uses
  %i.ddf = getelementptr inbounds nuw i8, ptr %i.dct, i64 68 ; 4 uses
  %i.ddg = getelementptr inbounds nuw i8, ptr %i.dct, i64 104 ; 3 uses
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.dct, i64 152 ; 9 uses
  %i.ddi = getelementptr inbounds nuw i8, ptr %i.dct, i64 76
  %i.ddj = getelementptr inbounds nuw i8, ptr %i.dct, i64 72 ; 5 uses
  %i.ddk = getelementptr inbounds nuw i8, ptr %i.dct, i64 216 ; 4 uses
  %i.ddl = getelementptr inbounds nuw i8, ptr %i.dct, i64 168 ; 2 uses
  %i.ddm = getelementptr inbounds nuw i8, ptr %i.dct, i64 232
  br label %bb.mk

bb.mf:                                            ; preds = %bb.me
  %i.ddn = load ptr, ptr %i.dcq, align 8, !tbaa !87 ; 2 uses
  %i.ddo = getelementptr inbounds nuw i8, ptr %i.dcq, i64 8
  %i.ddp = load ptr, ptr %i.ddo, align 8, !tbaa !84 ; 2 uses
  %.not11.i = icmp eq ptr %i.ddn, %i.ddp
  br i1 %.not11.i, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph14.i

.lr.ph14.i:                                       ; preds = %bb.mf
  %i.ddq = getelementptr inbounds nuw i8, ptr %i.dct, i64 68
  %i.ddr = getelementptr inbounds nuw i8, ptr %i.dct, i64 104
  %i.dds = getelementptr inbounds nuw i8, ptr %i.dct, i64 64 ; 2 uses
  %i.ddt = getelementptr inbounds nuw i8, ptr %i.dct, i64 72 ; 3 uses
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.dct, i64 216 ; 2 uses
  %i.ddv = getelementptr inbounds nuw i8, ptr %i.dct, i64 168
  %i.ddw = getelementptr inbounds nuw i8, ptr %i.dct, i64 232
  br label %bb.mg

bb.mg:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendINS0_10StringViewEEEvN5folly5RangeIPKT_EE.exit.i, %.lr.ph14.i
  %.03512.i = phi ptr [ %i.ddn, %.lr.ph14.i ], [ %i.dfb, %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendINS0_10StringViewEEEvN5folly5RangeIPKT_EE.exit.i ] ; 3 uses
  %i.ddx = getelementptr inbounds nuw i8, ptr %.03512.i, i64 4 ; 2 uses
  %i.ddy = load i32, ptr %i.ddx, align 4, !tbaa !88 ; 3 uses
  %i.ddz = load i32, ptr %i.ddq, align 4, !tbaa !90
  %i.dea = icmp sgt i32 %i.ddz, 0
  br i1 %i.dea, label %bb.mh, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i770

bb.mh:                                            ; preds = %bb.mg
  %i.deb = sext i32 %i.ddy to i64
  tail call void @_ZN8facebook5velox16ByteOutputStream10appendBoolEbl(ptr noundef nonnull align 8 dereferenceable(64) %i.ddr, i1 noundef zeroext false, i64 noundef %i.deb)
  %.pre36.i774 = load i32, ptr %i.ddx, align 4, !tbaa !88
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i770

_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i770: ; preds = %bb.mh, %bb.mg
  %i.dec = phi i32 [ %i.ddy, %bb.mg ], [ %.pre36.i774, %bb.mh ] ; 2 uses
  %i.ded = load i32, ptr %i.dds, align 8, !tbaa !113
  %i.dee = add nsw i32 %i.ded, %i.ddy
  store i32 %i.dee, ptr %i.dds, align 8, !tbaa !113
  %i.def = load i32, ptr %.03512.i, align 4, !tbaa !114
  %i.deg = sext i32 %i.def to i64
  %i.deh = getelementptr inbounds [16 x i8], ptr %i.dcy, i64 %i.deg ; 2 uses
  %i.dei = sext i32 %i.dec to i64
  %.idx.i771 = shl nuw nsw i64 %i.dei, 4
  %i.dej = getelementptr inbounds nuw i8, ptr %i.deh, i64 %.idx.i771
  %.not9.i.i = icmp eq i32 %i.dec, 0
  br i1 %.not9.i.i, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendINS0_10StringViewEEEvN5folly5RangeIPKT_EE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i770, %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i.i
  %.010.i.i = phi ptr [ %i.dfa, %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i.i ], [ %i.deh, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i770 ] ; 4 uses
  %i.dek = load i32, ptr %.010.i.i, align 8, !tbaa !156
  %i.del = load i32, ptr %i.ddt, align 8, !tbaa !125
  %i.dem = add nsw i32 %i.del, %i.dek             ; 2 uses
  store i32 %i.dem, ptr %i.ddt, align 8, !tbaa !125
  %i.den = load ptr, ptr %i.ddu, align 8, !tbaa !115 ; 3 uses
  %i.deo = getelementptr inbounds nuw i8, ptr %i.den, i64 16
  %i.dep = load i64, ptr %i.deo, align 8, !tbaa !116 ; 2 uses
  %i.deq = add i64 %i.dep, 4
  %i.der = getelementptr inbounds nuw i8, ptr %i.den, i64 8
  %i.des = load i64, ptr %i.der, align 8, !tbaa !117
  %i.det = icmp ugt i64 %i.deq, %i.des
  br i1 %i.det, label %bb.mi, label %bb.mj

bb.mi:                                            ; preds = %.lr.ph.i.i
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.ddv, i64 4, ptr nonnull align 4 dereferenceable(4) %i.ddt)
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i.i

bb.mj:                                            ; preds = %.lr.ph.i.i
  %i.deu = load ptr, ptr %i.den, align 8, !tbaa !118
  %i.dev = getelementptr inbounds i8, ptr %i.deu, i64 %i.dep
  store i32 %i.dem, ptr %i.dev, align 1
  %i.dew = load ptr, ptr %i.ddu, align 8, !tbaa !115
  %i.dex = getelementptr inbounds nuw i8, ptr %i.dew, i64 16 ; 2 uses
  %i.dey = load i64, ptr %i.dex, align 8, !tbaa !116
  %i.dez = add i64 %i.dey, 4
  store i64 %i.dez, ptr %i.dex, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i.i

_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i.i: ; preds = %bb.mj, %bb.mi
  %.sroa.0.0.copyload.i.i = load i64, ptr %.010.i.i, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 8
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !34
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewENS0_10StringViewE(ptr noundef nonnull align 8 dereferenceable(64) %i.ddw, i64 %.sroa.0.0.copyload.i.i, ptr %.sroa.2.0.copyload.i.i)
  %i.dfa = getelementptr inbounds nuw i8, ptr %.010.i.i, i64 16 ; 2 uses
  %.not.i.i772 = icmp eq ptr %i.dfa, %i.dej
  br i1 %.not.i.i772, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendINS0_10StringViewEEEvN5folly5RangeIPKT_EE.exit.i, label %.lr.ph.i.i

_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendINS0_10StringViewEEEvN5folly5RangeIPKT_EE.exit.i: ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i.i, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i770
  %i.dfb = getelementptr inbounds nuw i8, ptr %.03512.i, i64 8 ; 2 uses
  %.not.i773 = icmp eq ptr %i.dfb, %i.ddp
  br i1 %.not.i773, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.mg

bb.mk:                                            ; preds = %._crit_edge.i730, %.lr.ph10.i
  %i.dfc = phi ptr [ %i.ddd, %.lr.ph10.i ], [ %i.dfm, %._crit_edge.i730 ] ; 2 uses
  %i.dfd = phi ptr [ %i.ddc, %.lr.ph10.i ], [ %i.dfn, %._crit_edge.i730 ]
  %indvars.iv18.i = phi i64 [ 0, %.lr.ph10.i ], [ %indvars.iv.next19.i, %._crit_edge.i730 ] ; 2 uses
  %i.dfe = getelementptr inbounds nuw [8 x i8], ptr %i.dfc, i64 %indvars.iv18.i ; 2 uses
  %i.dff = getelementptr inbounds nuw i8, ptr %i.dfe, i64 4
  %i.dfg = load i32, ptr %i.dff, align 4, !tbaa !88 ; 2 uses
  %i.dfh = icmp sgt i32 %i.dfg, 0
  br i1 %i.dfh, label %.lr.ph.preheader.i, label %._crit_edge.i730

.lr.ph.preheader.i:                               ; preds = %bb.mk
  %i.dfi = load i32, ptr %i.dfe, align 4, !tbaa !114 ; 2 uses
  %i.dfj = add nsw i32 %i.dfi, %i.dfg
  %i.dfk = sext i32 %i.dfi to i64
  %i.dfl = sext i32 %i.dfj to i64
  br label %.lr.ph.i731

._crit_edge.loopexit.i739:                        ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i737
  %.pre34.i740 = load ptr, ptr %i.ddb, align 8, !tbaa !84
  %.pre35.i741 = load ptr, ptr %i.dcq, align 8, !tbaa !87
  br label %._crit_edge.i730

._crit_edge.i730:                                 ; preds = %._crit_edge.loopexit.i739, %bb.mk
  %i.dfm = phi ptr [ %.pre35.i741, %._crit_edge.loopexit.i739 ], [ %i.dfc, %bb.mk ] ; 2 uses
  %i.dfn = phi ptr [ %.pre34.i740, %._crit_edge.loopexit.i739 ], [ %i.dfd, %bb.mk ] ; 2 uses
  %indvars.iv.next19.i = add nuw nsw i64 %indvars.iv18.i, 1 ; 2 uses
  %i.dfo = ptrtoint ptr %i.dfn to i64
  %i.dfp = ptrtoint ptr %i.dfm to i64
  %i.dfq = sub i64 %i.dfo, %i.dfp
  %i.dfr = ashr exact i64 %i.dfq, 3
  %i.dfs = icmp ugt i64 %i.dfr, %indvars.iv.next19.i
  br i1 %i.dfs, label %bb.mk, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, !llvm.loop !694

.lr.ph.i731:                                      ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i737, %.lr.ph.preheader.i
  %indvars.iv.i732 = phi i64 [ %i.dfk, %.lr.ph.preheader.i ], [ %indvars.iv.next.i738, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i737 ] ; 4 uses
  %i.dft = load ptr, ptr %i.dcz, align 8, !tbaa !83 ; 2 uses
  %.not.i38.i = icmp eq ptr %i.dft, null
  br i1 %.not.i38.i, label %.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i768, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i733

.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i768: ; preds = %.lr.ph.i731
  %.pre27.i769 = load i32, ptr %i.ddf, align 4, !tbaa !90
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i736

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i733: ; preds = %.lr.ph.i731
  %i.dfu = lshr i64 %indvars.iv.i732, 6
  %i.dfv = and i64 %i.dfu, 67108863
  %i.dfw = getelementptr inbounds nuw [8 x i8], ptr %i.dft, i64 %i.dfv
  %i.dfx = load i64, ptr %i.dfw, align 8, !tbaa !121
  %i.dfy = and i64 %indvars.iv.i732, 63
  %i.dfz = shl nuw i64 1, %i.dfy
  %i.dga = and i64 %i.dfx, %i.dfz
  %.not.i.i.i734 = icmp eq i64 %i.dga, 0
  %.pre28.i735 = load i32, ptr %i.ddf, align 4    ; 2 uses
  br i1 %.not.i.i.i734, label %bb.ml, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i736

bb.ml:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i733
  %i.dgb = load i32, ptr %i.dde, align 8, !tbaa !113 ; 3 uses
  %.not.i39.i = icmp ne i32 %i.dgb, 0
  %i.dgc = icmp eq i32 %.pre28.i735, 0
  %or.cond.i.i746 = select i1 %.not.i39.i, i1 %i.dgc, i1 false
  br i1 %or.cond.i.i746, label %bb.mm, label %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60_crit_edge.i

._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60_crit_edge.i: ; preds = %bb.ml
  %.pre.i747 = load ptr, ptr %i.ddh, align 8, !tbaa !115 ; 2 uses
  %.phi.trans.insert.i748 = getelementptr inbounds nuw i8, ptr %.pre.i747, i64 16
  %.pre21.i = load i64, ptr %.phi.trans.insert.i748, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i

bb.mm:                                            ; preds = %bb.ml
  %i.dgd = sext i32 %i.dgb to i64                 ; 3 uses
  %i.dge = icmp eq i32 %i.dgb, 1
  br i1 %i.dge, label %bb.mn, label %bb.mp

bb.mn:                                            ; preds = %bb.mm
  %i.dgf = load ptr, ptr %i.ddh, align 8, !tbaa !115 ; 3 uses
  %i.dgg = getelementptr inbounds nuw i8, ptr %i.dgf, i64 8
  %i.dgh = load i64, ptr %i.dgg, align 8, !tbaa !117
  %i.dgi = getelementptr inbounds nuw i8, ptr %i.dgf, i64 16
  %i.dgj = load i64, ptr %i.dgi, align 8, !tbaa !116 ; 3 uses
  %i.dgk = icmp sgt i64 %i.dgh, %i.dgj
  br i1 %i.dgk, label %bb.mo, label %bb.mp

bb.mo:                                            ; preds = %bb.mn
  %i.dgl = load ptr, ptr %i.dgf, align 8, !tbaa !118
  %i.dgm = lshr i64 %i.dgj, 3
  %i.dgn = getelementptr inbounds nuw i8, ptr %i.dgl, i64 %i.dgm ; 2 uses
  %i.dgo = load i8, ptr %i.dgn, align 1, !tbaa !34
  %i.dgp = and i64 %i.dgj, 7
  %i.dgq = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dgp
  %i.dgr = load i8, ptr %i.dgq, align 1, !tbaa !34
  %i.dgs = and i8 %i.dgr, %i.dgo
  store i8 %i.dgs, ptr %i.dgn, align 1, !tbaa !34
  %i.dgt = load ptr, ptr %i.ddh, align 8, !tbaa !115 ; 2 uses
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.dgt, i64 16 ; 2 uses
  %i.dgv = load i64, ptr %i.dgu, align 8, !tbaa !116
  %i.dgw = add nsw i64 %i.dgv, 1                  ; 2 uses
  store i64 %i.dgw, ptr %i.dgu, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i

bb.mp:                                            ; preds = %bb.mn, %bb.mm
  %i.dgx = add nsw i64 %i.dgd, 7
  br label %bb.mq

bb.mq:                                            ; preds = %bb.mw, %bb.mp
  %.014.i43.i = phi i64 [ 0, %bb.mp ], [ %i.div, %bb.mw ] ; 2 uses
  %i.dgy = sub nsw i64 %i.dgd, %.014.i43.i
  %i.dgz = load ptr, ptr %i.ddh, align 8, !tbaa !115 ; 4 uses
  %i.dha = getelementptr inbounds nuw i8, ptr %i.dgz, i64 8
  %i.dhb = load i64, ptr %i.dha, align 8, !tbaa !117
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.dgz, i64 16 ; 3 uses
  %i.dhd = load i64, ptr %i.dhc, align 8, !tbaa !116 ; 3 uses
  %i.dhe = sub nsw i64 %i.dhb, %i.dhd
  %.sroa.speculated.i44.i = tail call i64 @llvm.smin.i64(i64 %i.dhe, i64 %i.dgy) ; 3 uses
  %i.dhf = load ptr, ptr %i.dgz, align 8, !tbaa !118 ; 3 uses
  %i.dhg = trunc i64 %i.dhd to i32                ; 6 uses
  %i.dhh = add nsw i64 %.sroa.speculated.i44.i, %i.dhd ; 3 uses
  %i.dhi = trunc i64 %i.dhh to i32                ; 4 uses
  %.not.i.i.i45.i = icmp slt i32 %i.dhg, %i.dhi
  br i1 %.not.i.i.i45.i, label %bb.mr, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.i

bb.mr:                                            ; preds = %bb.mq
  %i.dhj = add i32 %i.dhg, 63                     ; 2 uses
  %i.dhk = srem i32 %i.dhj, 64
  %i.dhl = sub nsw i32 %i.dhj, %i.dhk             ; 6 uses
  %i.dhm = and i32 %i.dhi, -64                    ; 4 uses
  %i.dhn = icmp slt i32 %i.dhm, %i.dhl
  br i1 %i.dhn, label %bb.ms, label %bb.mt

bb.ms:                                            ; preds = %bb.mr
  %i.dho = and i64 %i.dhh, 63
  %notmask.i.i.i.i58.i = shl nsw i64 -1, %i.dho
  %i.dhp = sub nsw i32 %i.dhl, %i.dhg             ; 2 uses
  %i.dhq = zext nneg i32 %i.dhp to i64
  %notmask.i.i.i.i.i59.i = shl nsw i64 -1, %i.dhq
  %i.dhr = xor i64 %notmask.i.i.i.i.i59.i, -1
  %i.dhs = sub nsw i32 64, %i.dhp
  %i.dht = zext nneg i32 %i.dhs to i64
  %i.dhu = shl i64 %i.dhr, %i.dht
  %.not2.i = xor i64 %i.dhu, -1
  %i.dhv = or i64 %notmask.i.i.i.i58.i, %.not2.i
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.sink.split.i

bb.mt:                                            ; preds = %bb.mr
  %.not32.i.i.i48.i = icmp eq i32 %i.dhl, %i.dhg
  br i1 %.not32.i.i.i48.i, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i50.i, label %bb.mu

bb.mu:                                            ; preds = %bb.mt
  %i.dhw = sdiv i32 %i.dhg, 64
  %i.dhx = sub nsw i32 %i.dhl, %i.dhg             ; 2 uses
  %i.dhy = zext nneg i32 %i.dhx to i64
  %notmask.i.i35.i.i.i49.i = shl nsw i64 -1, %i.dhy
  %i.dhz = xor i64 %notmask.i.i35.i.i.i49.i, -1
  %i.dia = sub nsw i32 64, %i.dhx
  %i.dib = zext nneg i32 %i.dia to i64
  %i.dic = shl i64 %i.dhz, %i.dib
  %i.did = xor i64 %i.dic, -1
  %i.die = sext i32 %i.dhw to i64
  %i.dif = getelementptr inbounds [8 x i8], ptr %i.dhf, i64 %i.die ; 2 uses
  %i.dig = load i64, ptr %i.dif, align 8, !tbaa !121
  %i.dih = and i64 %i.dig, %i.did
  store i64 %i.dih, ptr %i.dif, align 8, !tbaa !121
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i50.i

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i50.i: ; preds = %bb.mu, %bb.mt
  %i.dii = add nsw i32 %i.dhl, 64                 ; 2 uses
  %.not3347.i.i.i51.i = icmp sgt i32 %i.dii, %i.dhm
  br i1 %.not3347.i.i.i51.i, label %._crit_edge.i.i.i55.i, label %.lr.ph.i.i.i52.i

._crit_edge.i.i.i55.i:                            ; preds = %.lr.ph.i.i.i52.i, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i50.i
  %.not34.i.i.i56.i = icmp eq i32 %i.dhm, %i.dhi
  br i1 %.not34.i.i.i56.i, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.i, label %bb.mv

.lr.ph.i.i.i52.i:                                 ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i50.i, %.lr.ph.i.i.i52.i
  %i.dij = phi i32 [ %i.din, %.lr.ph.i.i.i52.i ], [ %i.dii, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i50.i ] ; 2 uses
  %.048.i.i.i53.i = phi i32 [ %i.dij, %.lr.ph.i.i.i52.i ], [ %i.dhl, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i50.i ]
  %i.dik = sdiv i32 %.048.i.i.i53.i, 64
  %i.dil = sext i32 %i.dik to i64
  %i.dim = getelementptr inbounds [8 x i8], ptr %i.dhf, i64 %i.dil
  store i64 0, ptr %i.dim, align 8, !tbaa !121
  %i.din = add nsw i32 %i.dij, 64                 ; 2 uses
  %.not33.i.i.i54.i = icmp sgt i32 %i.din, %i.dhm
  br i1 %.not33.i.i.i54.i, label %._crit_edge.i.i.i55.i, label %.lr.ph.i.i.i52.i, !llvm.loop !122

bb.mv:                                            ; preds = %._crit_edge.i.i.i55.i
  %i.dio = and i64 %i.dhh, 63
  %notmask.i37.i.i.i57.i = shl nsw i64 -1, %i.dio
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.sink.split.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.sink.split.i: ; preds = %bb.mv, %bb.ms
  %notmask.i37.i.i.i57.sink.i = phi i64 [ %notmask.i37.i.i.i57.i, %bb.mv ], [ %i.dhv, %bb.ms ]
  %.sink.i767 = ashr i32 %i.dhi, 6
  %i.dip = sext i32 %.sink.i767 to i64
  %i.diq = getelementptr inbounds [8 x i8], ptr %i.dhf, i64 %i.dip ; 2 uses
  %i.dir = load i64, ptr %i.diq, align 8, !tbaa !121
  %i.dis = and i64 %i.dir, %notmask.i37.i.i.i57.sink.i
  store i64 %i.dis, ptr %i.diq, align 8, !tbaa !121
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.i

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.sink.split.i, %._crit_edge.i.i.i55.i, %bb.mq
  %i.dit = load i64, ptr %i.dhc, align 8, !tbaa !116
  %i.diu = add nsw i64 %i.dit, %.sroa.speculated.i44.i ; 2 uses
  store i64 %i.diu, ptr %i.dhc, align 8, !tbaa !116
  %i.div = add nsw i64 %.sroa.speculated.i44.i, %.014.i43.i ; 3 uses
  %.not.i47.i = icmp eq i64 %i.div, %i.dgd
  br i1 %.not.i47.i, label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i, label %bb.mw

bb.mw:                                            ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.i
  %i.diw = sub i64 %i.dgx, %i.div
  %i.dix = lshr i64 %i.diw, 3
  tail call void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64) %i.ddg, i64 noundef %i.dix)
  br label %bb.mq, !llvm.loop !123

_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.i, %bb.mo, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60_crit_edge.i
  %i.diy = phi i64 [ %.pre21.i, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60_crit_edge.i ], [ %i.dgw, %bb.mo ], [ %i.diu, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.i ] ; 4 uses
  %i.diz = phi ptr [ %.pre.i747, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60_crit_edge.i ], [ %i.dgt, %bb.mo ], [ %i.dgz, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.i ] ; 3 uses
  %i.dja = getelementptr inbounds nuw i8, ptr %i.diz, i64 8
  %i.djb = load i64, ptr %i.dja, align 8, !tbaa !117 ; 2 uses
  %i.djc = icmp sgt i64 %i.djb, %i.diy
  br i1 %i.djc, label %bb.mx, label %.preheader4.i

bb.mx:                                            ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i
  %i.djd = load ptr, ptr %i.diz, align 8, !tbaa !118
  %i.dje = lshr i64 %i.diy, 3
  %i.djf = getelementptr inbounds nuw i8, ptr %i.djd, i64 %i.dje ; 2 uses
  %i.djg = load i8, ptr %i.djf, align 1, !tbaa !34
  %i.djh = trunc i64 %i.diy to i8
  %i.dji = and i8 %i.djh, 7
  %i.djj = shl nuw i8 1, %i.dji
  %i.djk = or i8 %i.djg, %i.djj
  store i8 %i.djk, ptr %i.djf, align 1, !tbaa !34
  %i.djl = load ptr, ptr %i.ddh, align 8, !tbaa !115
  %i.djm = getelementptr inbounds nuw i8, ptr %i.djl, i64 16 ; 2 uses
  %i.djn = load i64, ptr %i.djm, align 8, !tbaa !116
  %i.djo = add nsw i64 %i.djn, 1
  store i64 %i.djo, ptr %i.djm, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i753

.preheader4.i:                                    ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i, %bb.nd
  %i.djp = phi i64 [ %.pre26.i, %bb.nd ], [ %i.diy, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i ] ; 3 uses
  %i.djq = phi i64 [ %.pre24.i, %bb.nd ], [ %i.djb, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i ]
  %i.djr = phi ptr [ %.pre22.i, %bb.nd ], [ %i.diz, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i ] ; 2 uses
  %.014.i.i749 = phi i64 [ %i.dlm, %bb.nd ], [ 0, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i ] ; 2 uses
  %i.djs = sub nsw i64 1, %.014.i.i749
  %i.djt = getelementptr inbounds nuw i8, ptr %i.djr, i64 16 ; 2 uses
  %i.dju = sub nsw i64 %i.djq, %i.djp
  %.sroa.speculated.i.i750 = tail call i64 @llvm.smin.i64(i64 %i.dju, i64 %i.djs) ; 3 uses
  %i.djv = load ptr, ptr %i.djr, align 8, !tbaa !118 ; 3 uses
  %i.djw = trunc i64 %i.djp to i32                ; 6 uses
  %i.djx = add nsw i64 %.sroa.speculated.i.i750, %i.djp ; 3 uses
  %i.djy = trunc i64 %i.djx to i32                ; 4 uses
  %.not.i.i.i.i751 = icmp slt i32 %i.djw, %i.djy
  br i1 %.not.i.i.i.i751, label %bb.my, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i752

end_hunk_9
begin_hunk_10_@"_ZZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEvENKUlvE_clEv":bb.a

bb.nq:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit41.i
  %i.dpn = load ptr, ptr %i.dpg, align 8, !tbaa !118
  %i.dpo = getelementptr inbounds i8, ptr %i.dpn, i64 %i.dpi
  store i32 %i.dpf, ptr %i.dpo, align 1
  %i.dpp = load ptr, ptr %i.ddk, align 8, !tbaa !115
  %i.dpq = getelementptr inbounds nuw i8, ptr %i.dpp, i64 16 ; 2 uses
  %i.dpr = load i64, ptr %i.dpq, align 8, !tbaa !116
  %i.dps = add i64 %i.dpr, 4
  store i64 %i.dps, ptr %i.dpq, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream9appendOneINS0_10StringViewEEEvRKT_.exit.i

_ZN8facebook5velox10serializer6presto6detail12VectorStream9appendOneINS0_10StringViewEEEvRKT_.exit.i: ; preds = %bb.nq, %bb.np
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dpc, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.dpc, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !34
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewENS0_10StringViewE(ptr noundef nonnull align 8 dereferenceable(64) %i.ddm, i64 %.sroa.0.0.copyload.i.i.i, ptr %.sroa.2.0.copyload.i.i.i)
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i737

_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i737: ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream9appendOneINS0_10StringViewEEEvRKT_.exit.i, %bb.ng, %bb.nf, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i753
  %indvars.iv.next.i738 = add nsw i64 %indvars.iv.i732, 1 ; 2 uses
  %i.dpt = icmp slt i64 %indvars.iv.next.i738, %i.dfl
  br i1 %i.dpt, label %.lr.ph.i731, label %._crit_edge.loopexit.i739, !llvm.loop !695

bb.nr:                                            ; preds = %bb.a
  %i.dpu = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dpv = load ptr, ptr %i.dpu, align 8, !tbaa !641, !nonnull !9, !align !640 ; 5 uses
  %i.dpw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dpx = load ptr, ptr %i.dpw, align 8, !tbaa !642, !nonnull !9, !align !640
  %i.dpy = load ptr, ptr %i.dpx, align 8, !tbaa !52 ; 16 uses
  %i.dpz = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.dqa = icmp eq ptr %i.dpz, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorINS0_10StringViewEEE, i64 16)
  %i.dqb = select i1 %i.dqa, ptr %i.d, ptr null
  %i.dqc = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.dqd = load ptr, ptr %i.dqc, align 8, !tbaa !675 ; 2 uses
  %i.dqe = getelementptr inbounds nuw i8, ptr %i.dqb, i64 40 ; 2 uses
  %i.dqf = load ptr, ptr %i.dqe, align 8, !tbaa !83
  %.not1.i775 = icmp eq ptr %i.dqf, null
  br i1 %.not1.i775, label %bb.ns, label %.preheader5.i776

.preheader5.i776:                                 ; preds = %bb.nr
  %i.dqg = getelementptr inbounds nuw i8, ptr %i.dpv, i64 8 ; 2 uses
  %i.dqh = load ptr, ptr %i.dqg, align 8, !tbaa !84 ; 2 uses
  %i.dqi = load ptr, ptr %i.dpv, align 8, !tbaa !87 ; 2 uses
  %.not15.i777 = icmp eq ptr %i.dqh, %i.dqi
  br i1 %.not15.i777, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph10.i778

.lr.ph10.i778:                                    ; preds = %.preheader5.i776
  %i.dqj = getelementptr inbounds nuw i8, ptr %i.dpy, i64 64 ; 3 uses
  %i.dqk = getelementptr inbounds nuw i8, ptr %i.dpy, i64 68 ; 4 uses
  %i.dql = getelementptr inbounds nuw i8, ptr %i.dpy, i64 104 ; 3 uses
  %i.dqm = getelementptr inbounds nuw i8, ptr %i.dpy, i64 152 ; 9 uses
  %i.dqn = getelementptr inbounds nuw i8, ptr %i.dpy, i64 76
  %i.dqo = getelementptr inbounds nuw i8, ptr %i.dpy, i64 72 ; 5 uses
  %i.dqp = getelementptr inbounds nuw i8, ptr %i.dpy, i64 216 ; 4 uses
  %i.dqq = getelementptr inbounds nuw i8, ptr %i.dpy, i64 168 ; 2 uses
  %i.dqr = getelementptr inbounds nuw i8, ptr %i.dpy, i64 232
  br label %bb.nx

bb.ns:                                            ; preds = %bb.nr
  %i.dqs = load ptr, ptr %i.dpv, align 8, !tbaa !87 ; 2 uses
  %i.dqt = getelementptr inbounds nuw i8, ptr %i.dpv, i64 8
  %i.dqu = load ptr, ptr %i.dqt, align 8, !tbaa !84 ; 2 uses
  %.not11.i884 = icmp eq ptr %i.dqs, %i.dqu
  br i1 %.not11.i884, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph14.i885

.lr.ph14.i885:                                    ; preds = %bb.ns
  %i.dqv = getelementptr inbounds nuw i8, ptr %i.dpy, i64 68
  %i.dqw = getelementptr inbounds nuw i8, ptr %i.dpy, i64 104
  %i.dqx = getelementptr inbounds nuw i8, ptr %i.dpy, i64 64 ; 2 uses
  %i.dqy = getelementptr inbounds nuw i8, ptr %i.dpy, i64 72 ; 3 uses
  %i.dqz = getelementptr inbounds nuw i8, ptr %i.dpy, i64 216 ; 2 uses
  %i.dra = getelementptr inbounds nuw i8, ptr %i.dpy, i64 168
  %i.drb = getelementptr inbounds nuw i8, ptr %i.dpy, i64 232
  br label %bb.nt

bb.nt:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendINS0_10StringViewEEEvN5folly5RangeIPKT_EE.exit.i897, %.lr.ph14.i885
  %.03512.i886 = phi ptr [ %i.dqs, %.lr.ph14.i885 ], [ %i.dsg, %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendINS0_10StringViewEEEvN5folly5RangeIPKT_EE.exit.i897 ] ; 3 uses
  %i.drc = getelementptr inbounds nuw i8, ptr %.03512.i886, i64 4 ; 2 uses
  %i.drd = load i32, ptr %i.drc, align 4, !tbaa !88 ; 3 uses
  %i.dre = load i32, ptr %i.dqv, align 4, !tbaa !90
  %i.drf = icmp sgt i32 %i.dre, 0
  br i1 %i.drf, label %bb.nu, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i887

bb.nu:                                            ; preds = %bb.nt
  %i.drg = sext i32 %i.drd to i64
  tail call void @_ZN8facebook5velox16ByteOutputStream10appendBoolEbl(ptr noundef nonnull align 8 dereferenceable(64) %i.dqw, i1 noundef zeroext false, i64 noundef %i.drg)
  %.pre36.i899 = load i32, ptr %i.drc, align 4, !tbaa !88
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i887

_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i887: ; preds = %bb.nu, %bb.nt
  %i.drh = phi i32 [ %i.drd, %bb.nt ], [ %.pre36.i899, %bb.nu ] ; 2 uses
  %i.dri = load i32, ptr %i.dqx, align 8, !tbaa !113
  %i.drj = add nsw i32 %i.dri, %i.drd
  store i32 %i.drj, ptr %i.dqx, align 8, !tbaa !113
  %i.drk = load i32, ptr %.03512.i886, align 4, !tbaa !114
  %i.drl = sext i32 %i.drk to i64
  %i.drm = getelementptr inbounds [16 x i8], ptr %i.dqd, i64 %i.drl ; 2 uses
  %i.drn = sext i32 %i.drh to i64
  %.idx.i888 = shl nuw nsw i64 %i.drn, 4
  %i.dro = getelementptr inbounds nuw i8, ptr %i.drm, i64 %.idx.i888
  %.not9.i.i889 = icmp eq i32 %i.drh, 0
  br i1 %.not9.i.i889, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendINS0_10StringViewEEEvN5folly5RangeIPKT_EE.exit.i897, label %.lr.ph.i.i890

.lr.ph.i.i890:                                    ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i887, %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i.i892
  %.010.i.i891 = phi ptr [ %i.dsf, %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i.i892 ], [ %i.drm, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i887 ] ; 4 uses
  %i.drp = load i32, ptr %.010.i.i891, align 8, !tbaa !156
  %i.drq = load i32, ptr %i.dqy, align 8, !tbaa !125
  %i.drr = add nsw i32 %i.drq, %i.drp             ; 2 uses
  store i32 %i.drr, ptr %i.dqy, align 8, !tbaa !125
  %i.drs = load ptr, ptr %i.dqz, align 8, !tbaa !115 ; 3 uses
  %i.drt = getelementptr inbounds nuw i8, ptr %i.drs, i64 16
  %i.dru = load i64, ptr %i.drt, align 8, !tbaa !116 ; 2 uses
  %i.drv = add i64 %i.dru, 4
  %i.drw = getelementptr inbounds nuw i8, ptr %i.drs, i64 8
  %i.drx = load i64, ptr %i.drw, align 8, !tbaa !117
  %i.dry = icmp ugt i64 %i.drv, %i.drx
  br i1 %i.dry, label %bb.nv, label %bb.nw

bb.nv:                                            ; preds = %.lr.ph.i.i890
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.dra, i64 4, ptr nonnull align 4 dereferenceable(4) %i.dqy)
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i.i892

bb.nw:                                            ; preds = %.lr.ph.i.i890
  %i.drz = load ptr, ptr %i.drs, align 8, !tbaa !118
  %i.dsa = getelementptr inbounds i8, ptr %i.drz, i64 %i.dru
  store i32 %i.drr, ptr %i.dsa, align 1
  %i.dsb = load ptr, ptr %i.dqz, align 8, !tbaa !115
  %i.dsc = getelementptr inbounds nuw i8, ptr %i.dsb, i64 16 ; 2 uses
  %i.dsd = load i64, ptr %i.dsc, align 8, !tbaa !116
  %i.dse = add i64 %i.dsd, 4
  store i64 %i.dse, ptr %i.dsc, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i.i892

_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i.i892: ; preds = %bb.nw, %bb.nv
  %.sroa.0.0.copyload.i.i893 = load i64, ptr %.010.i.i891, align 8
  %.sroa.2.0..sroa_idx.i.i894 = getelementptr inbounds nuw i8, ptr %.010.i.i891, i64 8
  %.sroa.2.0.copyload.i.i895 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i894, align 8, !tbaa !34
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewENS0_10StringViewE(ptr noundef nonnull align 8 dereferenceable(64) %i.drb, i64 %.sroa.0.0.copyload.i.i893, ptr %.sroa.2.0.copyload.i.i895)
  %i.dsf = getelementptr inbounds nuw i8, ptr %.010.i.i891, i64 16 ; 2 uses
  %.not.i.i896 = icmp eq ptr %i.dsf, %i.dro
  br i1 %.not.i.i896, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendINS0_10StringViewEEEvN5folly5RangeIPKT_EE.exit.i897, label %.lr.ph.i.i890

_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendINS0_10StringViewEEEvN5folly5RangeIPKT_EE.exit.i897: ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream12appendLengthEi.exit.i.i892, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i887
  %i.dsg = getelementptr inbounds nuw i8, ptr %.03512.i886, i64 8 ; 2 uses
  %.not.i898 = icmp eq ptr %i.dsg, %i.dqu
  br i1 %.not.i898, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.nt

bb.nx:                                            ; preds = %._crit_edge.i780, %.lr.ph10.i778
  %i.dsh = phi ptr [ %i.dqi, %.lr.ph10.i778 ], [ %i.dsr, %._crit_edge.i780 ] ; 2 uses
  %i.dsi = phi ptr [ %i.dqh, %.lr.ph10.i778 ], [ %i.dss, %._crit_edge.i780 ]
  %indvars.iv18.i779 = phi i64 [ 0, %.lr.ph10.i778 ], [ %indvars.iv.next19.i781, %._crit_edge.i780 ] ; 2 uses
  %i.dsj = getelementptr inbounds nuw [8 x i8], ptr %i.dsh, i64 %indvars.iv18.i779 ; 2 uses
  %i.dsk = getelementptr inbounds nuw i8, ptr %i.dsj, i64 4
  %i.dsl = load i32, ptr %i.dsk, align 4, !tbaa !88 ; 2 uses
  %i.dsm = icmp sgt i32 %i.dsl, 0
  br i1 %i.dsm, label %.lr.ph.preheader.i782, label %._crit_edge.i780

.lr.ph.preheader.i782:                            ; preds = %bb.nx
  %i.dsn = load i32, ptr %i.dsj, align 4, !tbaa !114 ; 2 uses
  %i.dso = add nsw i32 %i.dsn, %i.dsl
  %i.dsp = sext i32 %i.dsn to i64
  %i.dsq = sext i32 %i.dso to i64
  br label %.lr.ph.i783

._crit_edge.loopexit.i797:                        ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i795
  %.pre34.i798 = load ptr, ptr %i.dqg, align 8, !tbaa !84
  %.pre35.i799 = load ptr, ptr %i.dpv, align 8, !tbaa !87
  br label %._crit_edge.i780

._crit_edge.i780:                                 ; preds = %._crit_edge.loopexit.i797, %bb.nx
  %i.dsr = phi ptr [ %.pre35.i799, %._crit_edge.loopexit.i797 ], [ %i.dsh, %bb.nx ] ; 2 uses
  %i.dss = phi ptr [ %.pre34.i798, %._crit_edge.loopexit.i797 ], [ %i.dsi, %bb.nx ] ; 2 uses
  %indvars.iv.next19.i781 = add nuw nsw i64 %indvars.iv18.i779, 1 ; 2 uses
  %i.dst = ptrtoint ptr %i.dss to i64
  %i.dsu = ptrtoint ptr %i.dsr to i64
  %i.dsv = sub i64 %i.dst, %i.dsu
  %i.dsw = ashr exact i64 %i.dsv, 3
  %i.dsx = icmp ugt i64 %i.dsw, %indvars.iv.next19.i781
  br i1 %i.dsx, label %bb.nx, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, !llvm.loop !696

.lr.ph.i783:                                      ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i795, %.lr.ph.preheader.i782
  %indvars.iv.i784 = phi i64 [ %i.dsp, %.lr.ph.preheader.i782 ], [ %indvars.iv.next.i796, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i795 ] ; 4 uses
  %i.dsy = load ptr, ptr %i.dqe, align 8, !tbaa !83 ; 2 uses
  %.not.i38.i785 = icmp eq ptr %i.dsy, null
  br i1 %.not.i38.i785, label %.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i882, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i786

.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i882: ; preds = %.lr.ph.i783
  %.pre27.i883 = load i32, ptr %i.dqk, align 4, !tbaa !90
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i789

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i786: ; preds = %.lr.ph.i783
  %i.dsz = lshr i64 %indvars.iv.i784, 6
  %i.dta = and i64 %i.dsz, 67108863
  %i.dtb = getelementptr inbounds nuw [8 x i8], ptr %i.dsy, i64 %i.dta
  %i.dtc = load i64, ptr %i.dtb, align 8, !tbaa !121
  %i.dtd = and i64 %indvars.iv.i784, 63
  %i.dte = shl nuw i64 1, %i.dtd
  %i.dtf = and i64 %i.dtc, %i.dte
  %.not.i.i.i787 = icmp eq i64 %i.dtf, 0
  %.pre28.i788 = load i32, ptr %i.dqk, align 4    ; 2 uses
  br i1 %.not.i.i.i787, label %bb.ny, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i789

bb.ny:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i786
  %i.dtg = load i32, ptr %i.dqj, align 8, !tbaa !113 ; 3 uses
  %.not.i39.i827 = icmp ne i32 %i.dtg, 0
  %i.dth = icmp eq i32 %.pre28.i788, 0
  %or.cond.i.i828 = select i1 %.not.i39.i827, i1 %i.dth, i1 false
  br i1 %or.cond.i.i828, label %bb.nz, label %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60_crit_edge.i829

._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60_crit_edge.i829: ; preds = %bb.ny
  %.pre.i830 = load ptr, ptr %i.dqm, align 8, !tbaa !115 ; 2 uses
  %.phi.trans.insert.i831 = getelementptr inbounds nuw i8, ptr %.pre.i830, i64 16
  %.pre21.i832 = load i64, ptr %.phi.trans.insert.i831, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i833

bb.nz:                                            ; preds = %bb.ny
  %i.dti = sext i32 %i.dtg to i64                 ; 3 uses
  %i.dtj = icmp eq i32 %i.dtg, 1
  br i1 %i.dtj, label %bb.oa, label %bb.oc

bb.oa:                                            ; preds = %bb.nz
  %i.dtk = load ptr, ptr %i.dqm, align 8, !tbaa !115 ; 3 uses
  %i.dtl = getelementptr inbounds nuw i8, ptr %i.dtk, i64 8
  %i.dtm = load i64, ptr %i.dtl, align 8, !tbaa !117
  %i.dtn = getelementptr inbounds nuw i8, ptr %i.dtk, i64 16
  %i.dto = load i64, ptr %i.dtn, align 8, !tbaa !116 ; 3 uses
  %i.dtp = icmp sgt i64 %i.dtm, %i.dto
  br i1 %i.dtp, label %bb.ob, label %bb.oc

bb.ob:                                            ; preds = %bb.oa
  %i.dtq = load ptr, ptr %i.dtk, align 8, !tbaa !118
  %i.dtr = lshr i64 %i.dto, 3
  %i.dts = getelementptr inbounds nuw i8, ptr %i.dtq, i64 %i.dtr ; 2 uses
  %i.dtt = load i8, ptr %i.dts, align 1, !tbaa !34
  %i.dtu = and i64 %i.dto, 7
  %i.dtv = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.dtu
  %i.dtw = load i8, ptr %i.dtv, align 1, !tbaa !34
  %i.dtx = and i8 %i.dtw, %i.dtt
  store i8 %i.dtx, ptr %i.dts, align 1, !tbaa !34
  %i.dty = load ptr, ptr %i.dqm, align 8, !tbaa !115 ; 2 uses
  %i.dtz = getelementptr inbounds nuw i8, ptr %i.dty, i64 16 ; 2 uses
  %i.dua = load i64, ptr %i.dtz, align 8, !tbaa !116
  %i.dub = add nsw i64 %i.dua, 1                  ; 2 uses
  store i64 %i.dub, ptr %i.dtz, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i833

bb.oc:                                            ; preds = %bb.oa, %bb.nz
  %i.duc = add nsw i64 %i.dti, 7
  br label %bb.od

bb.od:                                            ; preds = %bb.oj, %bb.oc
  %.014.i43.i861 = phi i64 [ 0, %bb.oc ], [ %i.dwa, %bb.oj ] ; 2 uses
  %i.dud = sub nsw i64 %i.dti, %.014.i43.i861
  %i.due = load ptr, ptr %i.dqm, align 8, !tbaa !115 ; 4 uses
  %i.duf = getelementptr inbounds nuw i8, ptr %i.due, i64 8
  %i.dug = load i64, ptr %i.duf, align 8, !tbaa !117
  %i.duh = getelementptr inbounds nuw i8, ptr %i.due, i64 16 ; 3 uses
  %i.dui = load i64, ptr %i.duh, align 8, !tbaa !116 ; 3 uses
  %i.duj = sub nsw i64 %i.dug, %i.dui
  %.sroa.speculated.i44.i862 = tail call i64 @llvm.smin.i64(i64 %i.duj, i64 %i.dud) ; 3 uses
  %i.duk = load ptr, ptr %i.due, align 8, !tbaa !118 ; 3 uses
  %i.dul = trunc i64 %i.dui to i32                ; 6 uses
  %i.dum = add nsw i64 %.sroa.speculated.i44.i862, %i.dui ; 3 uses
  %i.dun = trunc i64 %i.dum to i32                ; 4 uses
  %.not.i.i.i45.i863 = icmp slt i32 %i.dul, %i.dun
  br i1 %.not.i.i.i45.i863, label %bb.oe, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.i864

bb.oe:                                            ; preds = %bb.od
  %i.duo = add i32 %i.dul, 63                     ; 2 uses
  %i.dup = srem i32 %i.duo, 64
  %i.duq = sub nsw i32 %i.duo, %i.dup             ; 6 uses
  %i.dur = and i32 %i.dun, -64                    ; 4 uses
  %i.dus = icmp slt i32 %i.dur, %i.duq
  br i1 %i.dus, label %bb.of, label %bb.og

bb.of:                                            ; preds = %bb.oe
  %i.dut = and i64 %i.dum, 63
  %notmask.i.i.i.i58.i879 = shl nsw i64 -1, %i.dut
  %i.duu = sub nsw i32 %i.duq, %i.dul             ; 2 uses
  %i.duv = zext nneg i32 %i.duu to i64
  %notmask.i.i.i.i.i59.i880 = shl nsw i64 -1, %i.duv
  %i.duw = xor i64 %notmask.i.i.i.i.i59.i880, -1
  %i.dux = sub nsw i32 64, %i.duu
  %i.duy = zext nneg i32 %i.dux to i64
  %i.duz = shl i64 %i.duw, %i.duy
  %.not2.i881 = xor i64 %i.duz, -1
  %i.dva = or i64 %notmask.i.i.i.i58.i879, %.not2.i881
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.sink.split.i876

bb.og:                                            ; preds = %bb.oe
  %.not32.i.i.i48.i866 = icmp eq i32 %i.duq, %i.dul
  br i1 %.not32.i.i.i48.i866, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i50.i868, label %bb.oh

bb.oh:                                            ; preds = %bb.og
  %i.dvb = sdiv i32 %i.dul, 64
  %i.dvc = sub nsw i32 %i.duq, %i.dul             ; 2 uses
  %i.dvd = zext nneg i32 %i.dvc to i64
  %notmask.i.i35.i.i.i49.i867 = shl nsw i64 -1, %i.dvd
  %i.dve = xor i64 %notmask.i.i35.i.i.i49.i867, -1
  %i.dvf = sub nsw i32 64, %i.dvc
  %i.dvg = zext nneg i32 %i.dvf to i64
  %i.dvh = shl i64 %i.dve, %i.dvg
  %i.dvi = xor i64 %i.dvh, -1
  %i.dvj = sext i32 %i.dvb to i64
  %i.dvk = getelementptr inbounds [8 x i8], ptr %i.duk, i64 %i.dvj ; 2 uses
  %i.dvl = load i64, ptr %i.dvk, align 8, !tbaa !121
  %i.dvm = and i64 %i.dvl, %i.dvi
  store i64 %i.dvm, ptr %i.dvk, align 8, !tbaa !121
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i50.i868

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i50.i868: ; preds = %bb.oh, %bb.og
  %i.dvn = add nsw i32 %i.duq, 64                 ; 2 uses
  %.not3347.i.i.i51.i869 = icmp sgt i32 %i.dvn, %i.dur
  br i1 %.not3347.i.i.i51.i869, label %._crit_edge.i.i.i55.i873, label %.lr.ph.i.i.i52.i870

._crit_edge.i.i.i55.i873:                         ; preds = %.lr.ph.i.i.i52.i870, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i50.i868
  %.not34.i.i.i56.i874 = icmp eq i32 %i.dur, %i.dun
  br i1 %.not34.i.i.i56.i874, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.i864, label %bb.oi

.lr.ph.i.i.i52.i870:                              ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i50.i868, %.lr.ph.i.i.i52.i870
  %i.dvo = phi i32 [ %i.dvs, %.lr.ph.i.i.i52.i870 ], [ %i.dvn, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i50.i868 ] ; 2 uses
  %.048.i.i.i53.i871 = phi i32 [ %i.dvo, %.lr.ph.i.i.i52.i870 ], [ %i.duq, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i50.i868 ]
  %i.dvp = sdiv i32 %.048.i.i.i53.i871, 64
  %i.dvq = sext i32 %i.dvp to i64
  %i.dvr = getelementptr inbounds [8 x i8], ptr %i.duk, i64 %i.dvq
  store i64 0, ptr %i.dvr, align 8, !tbaa !121
  %i.dvs = add nsw i32 %i.dvo, 64                 ; 2 uses
  %.not33.i.i.i54.i872 = icmp sgt i32 %i.dvs, %i.dur
  br i1 %.not33.i.i.i54.i872, label %._crit_edge.i.i.i55.i873, label %.lr.ph.i.i.i52.i870, !llvm.loop !122

bb.oi:                                            ; preds = %._crit_edge.i.i.i55.i873
  %i.dvt = and i64 %i.dum, 63
  %notmask.i37.i.i.i57.i875 = shl nsw i64 -1, %i.dvt
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.sink.split.i876

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.sink.split.i876: ; preds = %bb.oi, %bb.of
  %notmask.i37.i.i.i57.sink.i877 = phi i64 [ %notmask.i37.i.i.i57.i875, %bb.oi ], [ %i.dva, %bb.of ]
  %.sink.i878 = ashr i32 %i.dun, 6
  %i.dvu = sext i32 %.sink.i878 to i64
  %i.dvv = getelementptr inbounds [8 x i8], ptr %i.duk, i64 %i.dvu ; 2 uses
  %i.dvw = load i64, ptr %i.dvv, align 8, !tbaa !121
  %i.dvx = and i64 %i.dvw, %notmask.i37.i.i.i57.sink.i877
  store i64 %i.dvx, ptr %i.dvv, align 8, !tbaa !121
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.i864

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.i864: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.sink.split.i876, %._crit_edge.i.i.i55.i873, %bb.od
  %i.dvy = load i64, ptr %i.duh, align 8, !tbaa !116
  %i.dvz = add nsw i64 %i.dvy, %.sroa.speculated.i44.i862 ; 2 uses
  store i64 %i.dvz, ptr %i.duh, align 8, !tbaa !116
  %i.dwa = add nsw i64 %.sroa.speculated.i44.i862, %.014.i43.i861 ; 3 uses
  %.not.i47.i865 = icmp eq i64 %i.dwa, %i.dti
  br i1 %.not.i47.i865, label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i833, label %bb.oj

bb.oj:                                            ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.i864
  %i.dwb = sub i64 %i.duc, %i.dwa
  %i.dwc = lshr i64 %i.dwb, 3
  tail call void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64) %i.dql, i64 noundef %i.dwc)
  br label %bb.od, !llvm.loop !123

_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i833: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.i864, %bb.ob, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60_crit_edge.i829
  %i.dwd = phi i64 [ %.pre21.i832, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60_crit_edge.i829 ], [ %i.dub, %bb.ob ], [ %i.dvz, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.i864 ] ; 4 uses
  %i.dwe = phi ptr [ %.pre.i830, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60_crit_edge.i829 ], [ %i.dty, %bb.ob ], [ %i.due, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i46.i864 ] ; 3 uses
  %i.dwf = getelementptr inbounds nuw i8, ptr %i.dwe, i64 8
  %i.dwg = load i64, ptr %i.dwf, align 8, !tbaa !117 ; 2 uses
  %i.dwh = icmp sgt i64 %i.dwg, %i.dwd
  br i1 %i.dwh, label %bb.ok, label %.preheader4.i834

bb.ok:                                            ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i833
  %i.dwi = load ptr, ptr %i.dwe, align 8, !tbaa !118
  %i.dwj = lshr i64 %i.dwd, 3
  %i.dwk = getelementptr inbounds nuw i8, ptr %i.dwi, i64 %i.dwj ; 2 uses
  %i.dwl = load i8, ptr %i.dwk, align 1, !tbaa !34
  %i.dwm = trunc i64 %i.dwd to i8
  %i.dwn = and i8 %i.dwm, 7
  %i.dwo = shl nuw i8 1, %i.dwn
  %i.dwp = or i8 %i.dwl, %i.dwo
  store i8 %i.dwp, ptr %i.dwk, align 1, !tbaa !34
  %i.dwq = load ptr, ptr %i.dqm, align 8, !tbaa !115
  %i.dwr = getelementptr inbounds nuw i8, ptr %i.dwq, i64 16 ; 2 uses
  %i.dws = load i64, ptr %i.dwr, align 8, !tbaa !116
  %i.dwt = add nsw i64 %i.dws, 1
  store i64 %i.dwt, ptr %i.dwr, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i845

.preheader4.i834:                                 ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i833, %bb.oq
  %i.dwu = phi i64 [ %.pre26.i844, %bb.oq ], [ %i.dwd, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i833 ] ; 3 uses
  %i.dwv = phi i64 [ %.pre24.i842, %bb.oq ], [ %i.dwg, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i833 ]
  %i.dww = phi ptr [ %.pre22.i840, %bb.oq ], [ %i.dwe, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i833 ] ; 2 uses
  %.014.i.i835 = phi i64 [ %i.dyr, %bb.oq ], [ 0, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit60.i833 ] ; 2 uses
  %i.dwx = sub nsw i64 1, %.014.i.i835
  %i.dwy = getelementptr inbounds nuw i8, ptr %i.dww, i64 16 ; 2 uses
  %i.dwz = sub nsw i64 %i.dwv, %i.dwu
  %.sroa.speculated.i.i836 = tail call i64 @llvm.smin.i64(i64 %i.dwz, i64 %i.dwx) ; 3 uses
  %i.dxa = load ptr, ptr %i.dww, align 8, !tbaa !118 ; 3 uses
  %i.dxb = trunc i64 %i.dwu to i32                ; 6 uses
  %i.dxc = add nsw i64 %.sroa.speculated.i.i836, %i.dwu ; 3 uses
  %i.dxd = trunc i64 %i.dxc to i32                ; 4 uses
  %.not.i.i.i.i837 = icmp slt i32 %i.dxb, %i.dxd
  br i1 %.not.i.i.i.i837, label %bb.ol, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i838

end_hunk_10
begin_hunk_11_@"_ZZZN8facebook5velox10serializer6presto6detail15serializeColumnERKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamERNS0_7ScratchEENK3$_0clEvENKUlvE_clEv":bb.a
  store i64 %i.ebz, ptr %i.ebx, align 8, !tbaa !121
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i64.i804

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i64.i804: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i64.sink.split.i821, %._crit_edge.i.i.i73.i818, %.preheader.i800
  %i.eca = load i64, ptr %i.eak, align 8, !tbaa !116
  %i.ecb = add nsw i64 %i.eca, %.sroa.speculated.i62.i802
  store i64 %i.ecb, ptr %i.eak, align 8, !tbaa !116
  %i.ecc = add nsw i64 %.sroa.speculated.i62.i802, %.014.i61.i801 ; 3 uses
  %.not.i65.i805 = icmp eq i64 %i.ecc, 1
  br i1 %.not.i65.i805, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit41.i790, label %bb.pb

bb.pb:                                            ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i64.i804
  %i.ecd = sub i64 8, %i.ecc
  %i.ece = lshr i64 %i.ecd, 3
  tail call void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64) %i.dql, i64 noundef %i.ece)
  %.pre29.i806 = load ptr, ptr %i.dqm, align 8, !tbaa !115 ; 3 uses
  %.phi.trans.insert30.i807 = getelementptr inbounds nuw i8, ptr %.pre29.i806, i64 8
  %.pre31.i808 = load i64, ptr %.phi.trans.insert30.i807, align 8, !tbaa !117
  %.phi.trans.insert32.i809 = getelementptr inbounds nuw i8, ptr %.pre29.i806, i64 16
  %.pre33.i810 = load i64, ptr %.phi.trans.insert32.i809, align 8, !tbaa !116
  br label %.preheader.i800, !llvm.loop !123

_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit41.i790: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i64.i804, %bb.ov, %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i789
  %i.ecf = load i32, ptr %i.dqj, align 8, !tbaa !113
  %i.ecg = add nsw i32 %i.ecf, 1
  store i32 %i.ecg, ptr %i.dqj, align 8, !tbaa !113
  %i.ech = getelementptr inbounds [16 x i8], ptr %i.dqd, i64 %indvars.iv.i784 ; 3 uses
  %i.eci = load i32, ptr %i.ech, align 8, !tbaa !156
  %i.ecj = load i32, ptr %i.dqo, align 8, !tbaa !125
  %i.eck = add nsw i32 %i.ecj, %i.eci             ; 2 uses
  store i32 %i.eck, ptr %i.dqo, align 8, !tbaa !125
  %i.ecl = load ptr, ptr %i.dqp, align 8, !tbaa !115 ; 3 uses
  %i.ecm = getelementptr inbounds nuw i8, ptr %i.ecl, i64 16
  %i.ecn = load i64, ptr %i.ecm, align 8, !tbaa !116 ; 2 uses
  %i.eco = add i64 %i.ecn, 4
  %i.ecp = getelementptr inbounds nuw i8, ptr %i.ecl, i64 8
  %i.ecq = load i64, ptr %i.ecp, align 8, !tbaa !117
  %i.ecr = icmp ugt i64 %i.eco, %i.ecq
  br i1 %i.ecr, label %bb.pc, label %bb.pd

bb.pc:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit41.i790
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(64) %i.dqq, i64 4, ptr nonnull align 4 dereferenceable(4) %i.dqo)
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream9appendOneINS0_10StringViewEEEvRKT_.exit.i791

bb.pd:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit41.i790
  %i.ecs = load ptr, ptr %i.ecl, align 8, !tbaa !118
  %i.ect = getelementptr inbounds i8, ptr %i.ecs, i64 %i.ecn
  store i32 %i.eck, ptr %i.ect, align 1
  %i.ecu = load ptr, ptr %i.dqp, align 8, !tbaa !115
  %i.ecv = getelementptr inbounds nuw i8, ptr %i.ecu, i64 16 ; 2 uses
  %i.ecw = load i64, ptr %i.ecv, align 8, !tbaa !116
  %i.ecx = add i64 %i.ecw, 4
  store i64 %i.ecx, ptr %i.ecv, align 8, !tbaa !116
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream9appendOneINS0_10StringViewEEEvRKT_.exit.i791

_ZN8facebook5velox10serializer6presto6detail12VectorStream9appendOneINS0_10StringViewEEEvRKT_.exit.i791: ; preds = %bb.pd, %bb.pc
  %.sroa.0.0.copyload.i.i.i792 = load i64, ptr %i.ech, align 8
  %.sroa.2.0..sroa_idx.i.i.i793 = getelementptr inbounds nuw i8, ptr %i.ech, i64 8
  %.sroa.2.0.copyload.i.i.i794 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i793, align 8, !tbaa !34
  tail call void @_ZN8facebook5velox16ByteOutputStream16appendStringViewENS0_10StringViewE(ptr noundef nonnull align 8 dereferenceable(64) %i.dqr, i64 %.sroa.0.0.copyload.i.i.i792, ptr %.sroa.2.0.copyload.i.i.i794)
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i795

_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i795: ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream9appendOneINS0_10StringViewEEEvRKT_.exit.i791, %bb.ot, %bb.os, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i845
  %indvars.iv.next.i796 = add nsw i64 %indvars.iv.i784, 1 ; 2 uses
  %i.ecy = icmp slt i64 %indvars.iv.next.i796, %i.dsq
  br i1 %i.ecy, label %.lr.ph.i783, label %._crit_edge.loopexit.i797, !llvm.loop !697

bb.pe:                                            ; preds = %bb.a
  %i.ecz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eda = load ptr, ptr %i.ecz, align 8, !tbaa !641, !nonnull !9, !align !640 ; 5 uses
  %i.edb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.edc = load ptr, ptr %i.edb, align 8, !tbaa !642, !nonnull !9, !align !640
  %i.edd = load ptr, ptr %i.edc, align 8, !tbaa !52 ; 14 uses
  %i.ede = load ptr, ptr %i.d, align 8, !tbaa !55
  %i.edf = icmp eq ptr %i.ede, getelementptr inbounds nuw inrange(-16, 400) (i8, ptr @_ZTVN8facebook5velox10FlatVectorINS0_9TimestampEEE, i64 16)
  %i.edg = select i1 %i.edf, ptr %i.d, ptr null
  %i.edh = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.edi = load ptr, ptr %i.edh, align 8, !tbaa !698 ; 3 uses
  %i.edj = getelementptr inbounds nuw i8, ptr %i.edg, i64 40 ; 2 uses
  %i.edk = load ptr, ptr %i.edj, align 8, !tbaa !83
  %.not5.i900 = icmp eq ptr %i.edk, null
  br i1 %.not5.i900, label %bb.pf, label %.preheader9.i901

.preheader9.i901:                                 ; preds = %bb.pe
  %i.edl = getelementptr inbounds nuw i8, ptr %i.eda, i64 8 ; 2 uses
  %i.edm = load ptr, ptr %i.edl, align 8, !tbaa !84 ; 2 uses
  %i.edn = load ptr, ptr %i.eda, align 8, !tbaa !87 ; 2 uses
  %.not25.i902 = icmp eq ptr %i.edm, %i.edn
  br i1 %.not25.i902, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph17.i903

.lr.ph17.i903:                                    ; preds = %.preheader9.i901
  %i.edo = getelementptr inbounds nuw i8, ptr %i.edd, i64 64 ; 3 uses
  %i.edp = getelementptr inbounds nuw i8, ptr %i.edd, i64 68 ; 4 uses
  %i.edq = getelementptr inbounds nuw i8, ptr %i.edd, i64 104 ; 3 uses
  %i.edr = getelementptr inbounds nuw i8, ptr %i.edd, i64 152 ; 9 uses
  %i.eds = getelementptr inbounds nuw i8, ptr %i.edd, i64 76
  %i.edt = getelementptr inbounds nuw i8, ptr %i.edd, i64 72 ; 2 uses
  %i.edu = getelementptr inbounds nuw i8, ptr %i.edd, i64 216 ; 2 uses
  %i.edv = getelementptr inbounds nuw i8, ptr %i.edd, i64 168
  br label %bb.pi

bb.pf:                                            ; preds = %bb.pe
  %i.edw = load ptr, ptr %i.eda, align 8, !tbaa !87 ; 2 uses
  %i.edx = getelementptr inbounds nuw i8, ptr %i.eda, i64 8
  %i.edy = load ptr, ptr %i.edx, align 8, !tbaa !84 ; 2 uses
  %.not21.i1014 = icmp eq ptr %i.edw, %i.edy
  br i1 %.not21.i1014, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %.lr.ph24.i1015

.lr.ph24.i1015:                                   ; preds = %bb.pf
  %i.edz = getelementptr inbounds nuw i8, ptr %i.edd, i64 68
  %i.eea = getelementptr inbounds nuw i8, ptr %i.edd, i64 104
  %i.eeb = getelementptr inbounds nuw i8, ptr %i.edd, i64 64 ; 2 uses
  br label %bb.pg

bb.pg:                                            ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i1017, %.lr.ph24.i1015
  %.05022.i1016 = phi ptr [ %i.edw, %.lr.ph24.i1015 ], [ %i.eep, %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i1017 ] ; 3 uses
  %i.eec = getelementptr inbounds nuw i8, ptr %.05022.i1016, i64 4 ; 2 uses
  %i.eed = load i32, ptr %i.eec, align 4, !tbaa !88 ; 3 uses
  %i.eee = load i32, ptr %i.edz, align 4, !tbaa !90
  %i.eef = icmp sgt i32 %i.eee, 0
  br i1 %i.eef, label %bb.ph, label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i1017

bb.ph:                                            ; preds = %bb.pg
  %i.eeg = sext i32 %i.eed to i64
  tail call void @_ZN8facebook5velox16ByteOutputStream10appendBoolEbl(ptr noundef nonnull align 8 dereferenceable(64) %i.eea, i1 noundef zeroext false, i64 noundef %i.eeg)
  %.pre42.i1019 = load i32, ptr %i.eec, align 4, !tbaa !88
  br label %_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i1017

_ZN8facebook5velox10serializer6presto6detail12VectorStream13appendNonNullEi.exit.i1017: ; preds = %bb.ph, %bb.pg
  %i.eeh = phi i32 [ %i.eed, %bb.pg ], [ %.pre42.i1019, %bb.ph ]
  %i.eei = load i32, ptr %i.eeb, align 8, !tbaa !113
  %i.eej = add nsw i32 %i.eei, %i.eed
  store i32 %i.eej, ptr %i.eeb, align 8, !tbaa !113
  %i.eek = load i32, ptr %.05022.i1016, align 4, !tbaa !114
  %i.eel = sext i32 %i.eek to i64
  %i.eem = getelementptr inbounds [16 x i8], ptr %i.edi, i64 %i.eel ; 2 uses
  %i.een = sext i32 %i.eeh to i64
  %i.eeo = getelementptr inbounds nuw [16 x i8], ptr %i.eem, i64 %i.een
  tail call void @_ZN8facebook5velox10serializer6presto6detail12VectorStream6appendINS0_9TimestampEEEvN5folly5RangeIPKT_EE(ptr noundef nonnull align 8 dereferenceable(330) %i.edd, ptr %i.eem, ptr %i.eeo)
  %i.eep = getelementptr inbounds nuw i8, ptr %.05022.i1016, i64 8 ; 2 uses
  %.not.i1018 = icmp eq ptr %i.eep, %i.edy
  br i1 %.not.i1018, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.pg

._crit_edge18.i911:                               ; preds = %._crit_edge.i907
  %.not58.i912 = icmp eq i32 %.154.lcssa.i908, -1
  br i1 %.not58.i912, label %_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_125serializeFlatVectorRangesILNS0_8TypeKindE0EEEvRKSt10shared_ptrINS0_10BaseVectorEERKN5folly5RangeIPKNS0_10IndexRangeEEEPNS3_12VectorStreamE.exit, label %bb.qp

bb.pi:                                            ; preds = %._crit_edge.i907, %.lr.ph17.i903
  %i.eeq = phi ptr [ %i.edn, %.lr.ph17.i903 ], [ %i.eey, %._crit_edge.i907 ] ; 2 uses
  %i.eer = phi ptr [ %i.edm, %.lr.ph17.i903 ], [ %i.eez, %._crit_edge.i907 ]
  %indvars.iv.i904 = phi i64 [ 0, %.lr.ph17.i903 ], [ %indvars.iv.next.i910, %._crit_edge.i907 ] ; 2 uses
  %.05215.i905 = phi i32 [ -1, %.lr.ph17.i903 ], [ %.1.lcssa.i909, %._crit_edge.i907 ] ; 2 uses
  %.05314.i906 = phi i32 [ -1, %.lr.ph17.i903 ], [ %.154.lcssa.i908, %._crit_edge.i907 ] ; 2 uses
  %i.ees = getelementptr inbounds nuw [8 x i8], ptr %i.eeq, i64 %indvars.iv.i904 ; 2 uses
  %i.eet = load i32, ptr %i.ees, align 4, !tbaa !114 ; 2 uses
  %i.eeu = getelementptr inbounds nuw i8, ptr %i.ees, i64 4
  %i.eev = load i32, ptr %i.eeu, align 4, !tbaa !88 ; 2 uses
  %i.eew = add nsw i32 %i.eev, %i.eet
  %i.eex = icmp sgt i32 %i.eev, 0
  br i1 %i.eex, label %.lr.ph.i914, label %._crit_edge.i907

._crit_edge.loopexit.i927:                        ; preds = %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i924
  %.pre40.i928 = load ptr, ptr %i.edl, align 8, !tbaa !84
  %.pre41.i929 = load ptr, ptr %i.eda, align 8, !tbaa !87
  br label %._crit_edge.i907

._crit_edge.i907:                                 ; preds = %._crit_edge.loopexit.i927, %bb.pi
  %i.eey = phi ptr [ %i.eeq, %bb.pi ], [ %.pre41.i929, %._crit_edge.loopexit.i927 ] ; 2 uses
  %i.eez = phi ptr [ %i.eer, %bb.pi ], [ %.pre40.i928, %._crit_edge.loopexit.i927 ] ; 2 uses
  %.154.lcssa.i908 = phi i32 [ %.05314.i906, %bb.pi ], [ %.255.i925, %._crit_edge.loopexit.i927 ] ; 4 uses
  %.1.lcssa.i909 = phi i32 [ %.05215.i905, %bb.pi ], [ %.2.i926, %._crit_edge.loopexit.i927 ] ; 2 uses
  %indvars.iv.next.i910 = add nuw nsw i64 %indvars.iv.i904, 1 ; 2 uses
  %i.efa = ptrtoint ptr %i.eez to i64
  %i.efb = ptrtoint ptr %i.eey to i64
  %i.efc = sub i64 %i.efa, %i.efb
  %i.efd = ashr exact i64 %i.efc, 3
  %i.efe = icmp ugt i64 %i.efd, %indvars.iv.next.i910
  br i1 %i.efe, label %bb.pi, label %._crit_edge18.i911, !llvm.loop !707

.lr.ph.i914:                                      ; preds = %bb.pi, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i924
  %.012.i915 = phi i32 [ %i.eow, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i924 ], [ %i.eet, %bb.pi ] ; 8 uses
  %.111.i916 = phi i32 [ %.2.i926, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i924 ], [ %.05215.i905, %bb.pi ] ; 4 uses
  %.15410.i917 = phi i32 [ %.255.i925, %_ZN8facebook5velox10serializer6presto6detail12VectorStream10appendNullEv.exit.i924 ], [ %.05314.i906, %bb.pi ] ; 7 uses
  %i.eff = load ptr, ptr %i.edj, align 8, !tbaa !83 ; 2 uses
  %.not.i.i918 = icmp eq ptr %i.eff, null
  br i1 %.not.i.i918, label %.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i1012, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i919

.lr.ph._ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread_crit_edge.i1012: ; preds = %.lr.ph.i914
  %.pre33.i1013 = load i32, ptr %i.edp, align 4, !tbaa !90
  br label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i922

_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i919: ; preds = %.lr.ph.i914
  %i.efg = zext i32 %.012.i915 to i64             ; 2 uses
  %i.efh = lshr i64 %i.efg, 6
  %i.efi = getelementptr inbounds nuw [8 x i8], ptr %i.eff, i64 %i.efh
  %i.efj = load i64, ptr %i.efi, align 8, !tbaa !121
  %i.efk = and i64 %i.efg, 63
  %i.efl = shl nuw i64 1, %i.efk
  %i.efm = and i64 %i.efj, %i.efl
  %.not.i.i.i920 = icmp eq i64 %i.efm, 0
  %.pre34.i921 = load i32, ptr %i.edp, align 4    ; 2 uses
  br i1 %.not.i.i.i920, label %bb.pj, label %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.thread.i922

bb.pj:                                            ; preds = %_ZNK8facebook5velox10BaseVector8isNullAtEi.exit.i919
  %i.efn = load i32, ptr %i.edo, align 8, !tbaa !113 ; 3 uses
  %.not.i59.i957 = icmp ne i32 %i.efn, 0
  %i.efo = icmp eq i32 %.pre34.i921, 0
  %or.cond.i.i958 = select i1 %.not.i59.i957, i1 %i.efo, i1 false
  br i1 %or.cond.i.i958, label %bb.pk, label %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79_crit_edge.i959

._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79_crit_edge.i959: ; preds = %bb.pj
  %.pre.i960 = load ptr, ptr %i.edr, align 8, !tbaa !115 ; 2 uses
  %.phi.trans.insert.i961 = getelementptr inbounds nuw i8, ptr %.pre.i960, i64 16
  %.pre27.i962 = load i64, ptr %.phi.trans.insert.i961, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i963

bb.pk:                                            ; preds = %bb.pj
  %i.efp = sext i32 %i.efn to i64                 ; 3 uses
  %i.efq = icmp eq i32 %i.efn, 1
  br i1 %i.efq, label %bb.pl, label %bb.pn

bb.pl:                                            ; preds = %bb.pk
  %i.efr = load ptr, ptr %i.edr, align 8, !tbaa !115 ; 3 uses
  %i.efs = getelementptr inbounds nuw i8, ptr %i.efr, i64 8
  %i.eft = load i64, ptr %i.efs, align 8, !tbaa !117
  %i.efu = getelementptr inbounds nuw i8, ptr %i.efr, i64 16
  %i.efv = load i64, ptr %i.efu, align 8, !tbaa !116 ; 3 uses
  %i.efw = icmp sgt i64 %i.eft, %i.efv
  br i1 %i.efw, label %bb.pm, label %bb.pn

bb.pm:                                            ; preds = %bb.pl
  %i.efx = load ptr, ptr %i.efr, align 8, !tbaa !118
  %i.efy = lshr i64 %i.efv, 3
  %i.efz = getelementptr inbounds nuw i8, ptr %i.efx, i64 %i.efy ; 2 uses
  %i.ega = load i8, ptr %i.efz, align 1, !tbaa !34
  %i.egb = and i64 %i.efv, 7
  %i.egc = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.egb
  %i.egd = load i8, ptr %i.egc, align 1, !tbaa !34
  %i.ege = and i8 %i.egd, %i.ega
  store i8 %i.ege, ptr %i.efz, align 1, !tbaa !34
  %i.egf = load ptr, ptr %i.edr, align 8, !tbaa !115 ; 2 uses
  %i.egg = getelementptr inbounds nuw i8, ptr %i.egf, i64 16 ; 2 uses
  %i.egh = load i64, ptr %i.egg, align 8, !tbaa !116
  %i.egi = add nsw i64 %i.egh, 1                  ; 2 uses
  store i64 %i.egi, ptr %i.egg, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i963

bb.pn:                                            ; preds = %bb.pl, %bb.pk
  %i.egj = add nsw i64 %i.efp, 7
  br label %bb.po

bb.po:                                            ; preds = %bb.pu, %bb.pn
  %.014.i62.i991 = phi i64 [ 0, %bb.pn ], [ %i.eih, %bb.pu ] ; 2 uses
  %i.egk = sub nsw i64 %i.efp, %.014.i62.i991
  %i.egl = load ptr, ptr %i.edr, align 8, !tbaa !115 ; 4 uses
  %i.egm = getelementptr inbounds nuw i8, ptr %i.egl, i64 8
  %i.egn = load i64, ptr %i.egm, align 8, !tbaa !117
  %i.ego = getelementptr inbounds nuw i8, ptr %i.egl, i64 16 ; 3 uses
  %i.egp = load i64, ptr %i.ego, align 8, !tbaa !116 ; 3 uses
  %i.egq = sub nsw i64 %i.egn, %i.egp
  %.sroa.speculated.i63.i992 = tail call i64 @llvm.smin.i64(i64 %i.egq, i64 %i.egk) ; 3 uses
  %i.egr = load ptr, ptr %i.egl, align 8, !tbaa !118 ; 3 uses
  %i.egs = trunc i64 %i.egp to i32                ; 6 uses
  %i.egt = add nsw i64 %.sroa.speculated.i63.i992, %i.egp ; 3 uses
  %i.egu = trunc i64 %i.egt to i32                ; 4 uses
  %.not.i.i.i64.i993 = icmp slt i32 %i.egs, %i.egu
  br i1 %.not.i.i.i64.i993, label %bb.pp, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.i994

bb.pp:                                            ; preds = %bb.po
  %i.egv = add i32 %i.egs, 63                     ; 2 uses
  %i.egw = srem i32 %i.egv, 64
  %i.egx = sub nsw i32 %i.egv, %i.egw             ; 6 uses
  %i.egy = and i32 %i.egu, -64                    ; 4 uses
  %i.egz = icmp slt i32 %i.egy, %i.egx
  br i1 %i.egz, label %bb.pq, label %bb.pr

bb.pq:                                            ; preds = %bb.pp
  %i.eha = and i64 %i.egt, 63
  %notmask.i.i.i.i77.i1009 = shl nsw i64 -1, %i.eha
  %i.ehb = sub nsw i32 %i.egx, %i.egs             ; 2 uses
  %i.ehc = zext nneg i32 %i.ehb to i64
  %notmask.i.i.i.i.i78.i1010 = shl nsw i64 -1, %i.ehc
  %i.ehd = xor i64 %notmask.i.i.i.i.i78.i1010, -1
  %i.ehe = sub nsw i32 64, %i.ehb
  %i.ehf = zext nneg i32 %i.ehe to i64
  %i.ehg = shl i64 %i.ehd, %i.ehf
  %.not6.i1011 = xor i64 %i.ehg, -1
  %i.ehh = or i64 %notmask.i.i.i.i77.i1009, %.not6.i1011
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.sink.split.i1006

bb.pr:                                            ; preds = %bb.pp
  %.not32.i.i.i67.i996 = icmp eq i32 %i.egx, %i.egs
  br i1 %.not32.i.i.i67.i996, label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i69.i998, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.ehi = sdiv i32 %i.egs, 64
  %i.ehj = sub nsw i32 %i.egx, %i.egs             ; 2 uses
  %i.ehk = zext nneg i32 %i.ehj to i64
  %notmask.i.i35.i.i.i68.i997 = shl nsw i64 -1, %i.ehk
  %i.ehl = xor i64 %notmask.i.i35.i.i.i68.i997, -1
  %i.ehm = sub nsw i32 64, %i.ehj
  %i.ehn = zext nneg i32 %i.ehm to i64
  %i.eho = shl i64 %i.ehl, %i.ehn
  %i.ehp = xor i64 %i.eho, -1
  %i.ehq = sext i32 %i.ehi to i64
  %i.ehr = getelementptr inbounds [8 x i8], ptr %i.egr, i64 %i.ehq ; 2 uses
  %i.ehs = load i64, ptr %i.ehr, align 8, !tbaa !121
  %i.eht = and i64 %i.ehs, %i.ehp
  store i64 %i.eht, ptr %i.ehr, align 8, !tbaa !121
  br label %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i69.i998

_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i69.i998: ; preds = %bb.ps, %bb.pr
  %i.ehu = add nsw i32 %i.egx, 64                 ; 2 uses
  %.not3347.i.i.i70.i999 = icmp sgt i32 %i.ehu, %i.egy
  br i1 %.not3347.i.i.i70.i999, label %._crit_edge.i.i.i74.i1003, label %.lr.ph.i.i.i71.i1000

._crit_edge.i.i.i74.i1003:                        ; preds = %.lr.ph.i.i.i71.i1000, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i69.i998
  %.not34.i.i.i75.i1004 = icmp eq i32 %i.egy, %i.egu
  br i1 %.not34.i.i.i75.i1004, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.i994, label %bb.pt

.lr.ph.i.i.i71.i1000:                             ; preds = %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i69.i998, %.lr.ph.i.i.i71.i1000
  %i.ehv = phi i32 [ %i.ehz, %.lr.ph.i.i.i71.i1000 ], [ %i.ehu, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i69.i998 ] ; 2 uses
  %.048.i.i.i72.i1001 = phi i32 [ %i.ehv, %.lr.ph.i.i.i71.i1000 ], [ %i.egx, %_ZZN8facebook5velox4bits8fillBitsEPmiibENKUlimE_clEim.exit36.i.i.i69.i998 ]
  %i.ehw = sdiv i32 %.048.i.i.i72.i1001, 64
  %i.ehx = sext i32 %i.ehw to i64
  %i.ehy = getelementptr inbounds [8 x i8], ptr %i.egr, i64 %i.ehx
  store i64 0, ptr %i.ehy, align 8, !tbaa !121
  %i.ehz = add nsw i32 %i.ehv, 64                 ; 2 uses
  %.not33.i.i.i73.i1002 = icmp sgt i32 %i.ehz, %i.egy
  br i1 %.not33.i.i.i73.i1002, label %._crit_edge.i.i.i74.i1003, label %.lr.ph.i.i.i71.i1000, !llvm.loop !122

bb.pt:                                            ; preds = %._crit_edge.i.i.i74.i1003
  %i.eia = and i64 %i.egt, 63
  %notmask.i37.i.i.i76.i1005 = shl nsw i64 -1, %i.eia
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.sink.split.i1006

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.sink.split.i1006: ; preds = %bb.pt, %bb.pq
  %notmask.i37.i.i.i76.sink.i1007 = phi i64 [ %notmask.i37.i.i.i76.i1005, %bb.pt ], [ %i.ehh, %bb.pq ]
  %.sink.i1008 = ashr i32 %i.egu, 6
  %i.eib = sext i32 %.sink.i1008 to i64
  %i.eic = getelementptr inbounds [8 x i8], ptr %i.egr, i64 %i.eib ; 2 uses
  %i.eid = load i64, ptr %i.eic, align 8, !tbaa !121
  %i.eie = and i64 %i.eid, %notmask.i37.i.i.i76.sink.i1007
  store i64 %i.eie, ptr %i.eic, align 8, !tbaa !121
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.i994

_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.i994: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.sink.split.i1006, %._crit_edge.i.i.i74.i1003, %bb.po
  %i.eif = load i64, ptr %i.ego, align 8, !tbaa !116
  %i.eig = add nsw i64 %i.eif, %.sroa.speculated.i63.i992 ; 2 uses
  store i64 %i.eig, ptr %i.ego, align 8, !tbaa !116
  %i.eih = add nsw i64 %.sroa.speculated.i63.i992, %.014.i62.i991 ; 3 uses
  %.not.i66.i995 = icmp eq i64 %i.eih, %i.efp
  br i1 %.not.i66.i995, label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i963, label %bb.pu

bb.pu:                                            ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.i994
  %i.eii = sub i64 %i.egj, %i.eih
  %i.eij = lshr i64 %i.eii, 3
  tail call void @_ZN8facebook5velox16ByteOutputStream6extendEl(ptr noundef nonnull align 8 dereferenceable(64) %i.edq, i64 noundef %i.eij)
  br label %bb.po, !llvm.loop !123

_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i963: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.i994, %bb.pm, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79_crit_edge.i959
  %i.eik = phi i64 [ %.pre27.i962, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79_crit_edge.i959 ], [ %i.egi, %bb.pm ], [ %i.eig, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.i994 ] ; 4 uses
  %i.eil = phi ptr [ %.pre.i960, %._ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79_crit_edge.i959 ], [ %i.egf, %bb.pm ], [ %i.egl, %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i65.i994 ] ; 3 uses
  %i.eim = getelementptr inbounds nuw i8, ptr %i.eil, i64 8
  %i.ein = load i64, ptr %i.eim, align 8, !tbaa !117 ; 2 uses
  %i.eio = icmp sgt i64 %i.ein, %i.eik
  br i1 %i.eio, label %bb.pv, label %.preheader8.i964

bb.pv:                                            ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i963
  %i.eip = load ptr, ptr %i.eil, align 8, !tbaa !118
  %i.eiq = lshr i64 %i.eik, 3
  %i.eir = getelementptr inbounds nuw i8, ptr %i.eip, i64 %i.eiq ; 2 uses
  %i.eis = load i8, ptr %i.eir, align 1, !tbaa !34
  %i.eit = trunc i64 %i.eik to i8
  %i.eiu = and i8 %i.eit, 7
  %i.eiv = shl nuw i8 1, %i.eiu
  %i.eiw = or i8 %i.eis, %i.eiv
  store i8 %i.eiw, ptr %i.eir, align 1, !tbaa !34
  %i.eix = load ptr, ptr %i.edr, align 8, !tbaa !115
  %i.eiy = getelementptr inbounds nuw i8, ptr %i.eix, i64 16 ; 2 uses
  %i.eiz = load i64, ptr %i.eiy, align 8, !tbaa !116
  %i.eja = add nsw i64 %i.eiz, 1
  store i64 %i.eja, ptr %i.eiy, align 8, !tbaa !116
  br label %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit.i975

.preheader8.i964:                                 ; preds = %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i963, %bb.qb
  %i.ejb = phi i64 [ %.pre32.i974, %bb.qb ], [ %i.eik, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i963 ] ; 3 uses
  %i.ejc = phi i64 [ %.pre30.i972, %bb.qb ], [ %i.ein, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i963 ]
  %i.ejd = phi ptr [ %.pre28.i970, %bb.qb ], [ %i.eil, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i963 ] ; 2 uses
  %.014.i.i965 = phi i64 [ %i.eky, %bb.qb ], [ 0, %_ZN8facebook5velox16ByteOutputStream10appendBoolEbl.exit79.i963 ] ; 2 uses
  %i.eje = sub nsw i64 1, %.014.i.i965
  %i.ejf = getelementptr inbounds nuw i8, ptr %i.ejd, i64 16 ; 2 uses
  %i.ejg = sub nsw i64 %i.ejc, %i.ejb
  %.sroa.speculated.i.i966 = tail call i64 @llvm.smin.i64(i64 %i.ejg, i64 %i.eje) ; 3 uses
  %i.ejh = load ptr, ptr %i.ejd, align 8, !tbaa !118 ; 3 uses
  %i.eji = trunc i64 %i.ejb to i32                ; 6 uses
  %i.ejj = add nsw i64 %.sroa.speculated.i.i966, %i.ejb ; 3 uses
  %i.ejk = trunc i64 %i.ejj to i32                ; 4 uses
  %.not.i.i.i.i967 = icmp slt i32 %i.eji, %i.ejk
  br i1 %.not.i.i.i.i967, label %bb.pw, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit.i.i968

end_hunk_11
