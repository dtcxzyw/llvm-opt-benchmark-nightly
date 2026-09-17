Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/Image?download=true
inline.NumInlined: 33261
inline.NumDeleted: 8209
loop-unroll.NumCompletelyUnrolled: 79
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 133
begin_hunk_0_@_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEfTnNSt3__19enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_SA_S7_:bb.a
  %i.cv = shl nuw nsw i64 %i.cu, 1
  %i.cw = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2
  store i16 %i.cx, ptr %.2, align 1
  br label %bb.s

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit
  %.pre = add i64 %.pre-phi19.i, %i.an            ; 2 uses
  %i.cy = icmp ugt i64 %.pre, %i.ax
  br i1 %i.cy, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread
  %.pre-phi97 = phi i64 [ %.pre, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread ], [ %.pre15.i, %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !399
  tail call void %i.da(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.pre-phi97), !inline_history !75
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.thread.thread
  br i1 %i.b, label %bb.o, label %bb.q

bb.o:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.db = load i64, ptr %i.ao, align 8, !tbaa !409 ; 2 uses
  %i.dc = add i64 %i.db, 1                        ; 3 uses
  %i.dd = load i64, ptr %i.ar, align 8, !tbaa !401
  %i.de = icmp ugt i64 %i.dc, %i.dd
  br i1 %i.de, label %bb.p, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.p:                                             ; preds = %bb.o
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !399
  tail call void %i.dg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dc), !inline_history !69
  %.pre.i.i = load i64, ptr %i.ao, align 8, !tbaa !409 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.o, %bb.p
  %.pre-phi.i.i = phi i64 [ %i.dc, %bb.o ], [ %.pre2.i.i, %bb.p ]
  %i.dh = phi i64 [ %i.db, %bb.o ], [ %.pre.i.i, %bb.p ]
  %i.di = load ptr, ptr %0, align 8, !tbaa !400
  store i64 %.pre-phi.i.i, ptr %i.ao, align 8, !tbaa !409
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dh
  store i8 45, ptr %i.dj, align 1, !tbaa !126
  br label %bb.q

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.dk = select i1 %.not, i8 46, i8 0
  %i.dl = tail call ptr @_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt3__19enable_ifIXntsr3std10is_pointerINS5_9remove_cvINS5_16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES9_S9_T0_iiT1_(ptr nonnull %0, i32 noundef %i.l, i32 noundef %i.v, i32 noundef 1, i8 noundef signext %i.dk) ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8 ; 3 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !409 ; 2 uses
  %i.do = add i64 %i.dn, 1                        ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !401
  %i.dr = icmp ugt i64 %i.do, %i.dq
  br i1 %i.dr, label %bb.r, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

bb.r:                                             ; preds = %bb.q
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dl, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !399
  tail call void %i.dt(ptr noundef nonnull align 8 dereferenceable(32) %i.dl, i64 noundef %i.do), !inline_history !69
  %.pre.i.i72 = load i64, ptr %i.dm, align 8, !tbaa !409 ; 2 uses
  %.pre2.i.i73 = add i64 %.pre.i.i72, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

_ZN3fmt3v1214basic_appenderIcEaSEc.exit74:        ; preds = %bb.q, %bb.r
  %.pre-phi.i.i71 = phi i64 [ %i.do, %bb.q ], [ %.pre2.i.i73, %bb.r ]
  %i.du = phi i64 [ %i.dn, %bb.q ], [ %.pre.i.i72, %bb.r ]
  %i.dv = load ptr, ptr %i.dl, align 8, !tbaa !400
  store i64 %.pre-phi.i.i71, ptr %i.dm, align 8, !tbaa !409
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.du
  store i8 101, ptr %i.dw, align 1, !tbaa !126
  %i.dx = tail call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.z, ptr nonnull %i.dl)
  br label %bb.s

bb.s:                                             ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74, %bb.c
  %.sroa.057.2 = phi ptr [ %i.ae, %bb.c ], [ %i.dx, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74 ], [ %0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.057.3 = phi ptr [ %i.j, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.057.2, %bb.s ]
  ret ptr %.sroa.057.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local i64 @_ZN3fmt3v126detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = bitcast float %0 to i32                  ; 2 uses
  %i.b = and i32 %i.a, 8388607                    ; 4 uses
  %i.c = lshr i32 %i.a, 23
  %i.d = and i32 %i.c, 255                        ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.d, -150                   ; 5 uses
  %i.f = icmp eq i32 %i.b, 0
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = mul nsw i32 %i.e, 631305
  %i.h = add nsw i32 %i.g, -261663
  %i.i = ashr i32 %i.h, 21                        ; 5 uses
  %i.j = sub nsw i32 0, %i.i
  %i.k = mul nsw i32 %i.i, -1741647
  %i.l = ashr i32 %i.k, 19
  %i.m = add nsw i32 %i.l, %i.e                   ; 2 uses
  %i.n = sext i32 %i.j to i64
  %i.o = getelementptr [8 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 248
  %i.q = load i64, ptr %i.p, align 8, !tbaa !183  ; 5 uses
  %i.r = lshr i64 %i.q, 25
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = sub nsw i32 40, %i.m
  %i.u = zext nneg i32 %i.t to i64                ; 2 uses
  %i.v = lshr i64 %i.s, %i.u
  %i.w = trunc i64 %i.v to i32
  %i.x = lshr i64 %i.q, 24
  %i.y = add i64 %i.x, %i.q
  %i.z = lshr i64 %i.y, %i.u
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.e, -2
  %i.ac = icmp ne i32 %i.ab, 2
  %i.ad = zext i1 %i.ac to i32
  %spec.select.i = add i32 %i.w, %i.ad            ; 2 uses
  %i.ae = udiv i32 %i.aa, 10                      ; 2 uses
  %i.af = mul nuw i32 %i.ae, 10
  %.not.i = icmp ult i32 %i.af, %spec.select.i
  br i1 %.not.i, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c, %.preheader
  %.sroa.082.1 = phi i32 [ %i.ah, %.preheader ], [ %i.ae, %bb.c ] ; 3 uses
  %.012.i = phi i32 [ %i.aj, %.preheader ], [ 0, %bb.c ] ; 2 uses
  %i.ag = mul i32 %.sroa.082.1, -1030792151       ; 2 uses
  %i.ah = tail call i32 @llvm.fshl.i32(i32 %i.ag, i32 %i.ag, i32 30) ; 2 uses
  %i.ai = icmp ugt i32 %i.ah, 42949672
  %i.aj = add nuw nsw i32 %.012.i, 2
  br i1 %i.ai, label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit, label %.preheader

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit: ; preds = %.preheader
  %i.ak = mul i32 %.sroa.082.1, -858993459        ; 2 uses
  %i.al = tail call i32 @llvm.fshl.i32(i32 %i.ak, i32 %i.ak, i32 31) ; 2 uses
  %.not.i54 = icmp ult i32 %i.al, 429496730       ; 2 uses
  %spec.select = select i1 %.not.i54, i32 %i.al, i32 %.sroa.082.1
  %i.am = zext i1 %.not.i54 to i32
  %spec.select99 = add nsw i32 %i.i, 1
  %i.an = add i32 %spec.select99, %.012.i
  %i.ao = add i32 %i.an, %i.am
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

bb.d:                                             ; preds = %bb.c
  %i.ap = sub nsw i32 39, %i.m
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = lshr i64 %i.q, %i.aq
  %i.as = trunc i64 %i.ar to i32
  %i.at = add i32 %i.as, 1
  %i.au = lshr i32 %i.at, 1                       ; 3 uses
  %or.cond.i = icmp eq i32 %i.e, -35
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = and i32 %i.au, 2147483646
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

bb.f:                                             ; preds = %bb.d
  %i.aw = icmp ult i32 %i.au, %spec.select.i
  %i.ax = zext i1 %i.aw to i32
  %spec.select100 = add nuw i32 %i.au, %i.ax
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

bb.g:                                             ; preds = %bb.b
  %i.ay = or disjoint i32 %i.b, 8388608
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.az = icmp eq i32 %i.b, 0
  br i1 %i.az, label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.042 = phi i32 [ %i.ay, %bb.g ], [ %i.b, %bb.h ] ; 3 uses
  %.041 = phi i32 [ %i.e, %bb.g ], [ -149, %bb.h ] ; 2 uses
  %i.ba = mul nsw i32 %.041, 315653
  %i.bb = ashr i32 %i.ba, 20                      ; 5 uses
  %i.bc = sub nsw i32 1, %i.bb                    ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [8 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 248
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !183 ; 4 uses
  %i.bh = mul nsw i32 %i.bc, 1741647
  %i.bi = ashr i32 %i.bh, 19
  %i.bj = add nsw i32 %i.bi, %.041                ; 6 uses
  %i.bk = sub nsw i32 63, %i.bj
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = lshr i64 %i.bg, %i.bl
  %i.bn = trunc i64 %i.bm to i32                  ; 3 uses
  %i.bo = shl nuw nsw i32 %.042, 1                ; 3 uses
  %i.bp = or disjoint i32 %i.bo, 1
  %i.bq = shl i32 %i.bp, %i.bj
  %i.br = zext i32 %i.bq to i64
  %i.bs = shl nuw i64 %i.br, 32
  %1 = zext i64 %i.bs to i128
  %2 = zext i64 %i.bg to i128
  %3 = mul nuw i128 %1, %2
  %4 = lshr i128 %3, 64
  %5 = trunc nuw i128 %4 to i64                   ; 2 uses
  %i.bt = lshr i64 %5, 32                         ; 2 uses
  %i.bu = and i64 %5, 4294967295
  %i.bv = icmp ne i64 %i.bu, 0
  %.sroa.08.0.extract.trunc = trunc nuw i64 %i.bt to i32
  %i.bw = mul nuw nsw i64 %i.bt, 1374389535
  %i.bx = lshr i64 %i.bw, 37
  %i.by = trunc nuw nsw i64 %i.bx to i32          ; 5 uses
  %.neg = mul i32 %i.by, -100
  %i.bz = add i32 %.neg, %.sroa.08.0.extract.trunc ; 5 uses
  %i.ca = icmp ult i32 %i.bz, %i.bn
  br i1 %i.ca, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.cb = icmp eq i32 %i.bz, 0
  br i1 %i.cb, label %bb.k, label %.preheader112

bb.k:                                             ; preds = %bb.j
  %i.cc = and i32 %.042, 1
  %.not50104 = icmp eq i32 %i.cc, 0
  %.not50 = select i1 %i.bv, i1 true, i1 %.not50104
  br i1 %.not50, label %.preheader112, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cd = add nsw i32 %i.by, -1
  br label %bb.p

bb.m:                                             ; preds = %bb.i
  %i.ce = icmp ugt i32 %i.bz, %i.bn
  br i1 %i.ce, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cf = add nsw i32 %i.bo, -1
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = mul i64 %i.bg, %i.cg                    ; 2 uses
  %i.ci = sub nsw i32 64, %i.bj
  %i.cj = zext nneg i32 %i.ci to i64
  %i.ck = lshr i64 %i.ch, %i.cj
  %i.cl = trunc i64 %i.ck to i32
  %.sroa.0.0.insert.ext.i = and i32 %i.cl, 1
  %i.cm = sub nsw i32 32, %i.bj
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = shl i64 4294967295, %i.cn
  %i.cp = and i64 %i.co, %i.ch
  %i.cq = icmp eq i64 %i.cp, 0
  %i.cr = and i32 %.042, 1
  %i.cs = xor i32 %i.cr, 1
  %i.ct = select i1 %i.cq, i32 %i.cs, i32 0
  %i.cu = or i32 %i.ct, %.sroa.0.0.insert.ext.i
  %.not48 = icmp eq i32 %i.cu, 0
  br i1 %.not48, label %bb.p, label %.preheader112

.preheader112:                                    ; preds = %bb.n, %bb.j, %bb.k
  br label %bb.o

bb.o:                                             ; preds = %.preheader112, %bb.o
  %.sroa.0.4 = phi i32 [ %i.cw, %bb.o ], [ %i.by, %.preheader112 ] ; 3 uses
  %.012.i55 = phi i32 [ %i.cy, %bb.o ], [ 0, %.preheader112 ] ; 2 uses
  %i.cv = mul i32 %.sroa.0.4, -1030792151         ; 2 uses
  %i.cw = tail call i32 @llvm.fshl.i32(i32 %i.cv, i32 %i.cv, i32 30) ; 2 uses
  %i.cx = icmp ugt i32 %i.cw, 42949672
  %i.cy = add nuw nsw i32 %.012.i55, 2
  br i1 %i.cx, label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit60, label %bb.o

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit60: ; preds = %bb.o
  %i.cz = mul i32 %.sroa.0.4, -858993459          ; 2 uses
  %i.da = tail call i32 @llvm.fshl.i32(i32 %i.cz, i32 %i.cz, i32 31) ; 2 uses
  %.not.i58 = icmp ult i32 %i.da, 429496730       ; 2 uses
  %spec.select101 = select i1 %.not.i58, i32 %i.da, i32 %.sroa.0.4
  %i.db = zext i1 %.not.i58 to i32
  %spec.select102 = add nsw i32 %i.bb, 1
  %i.dc = add i32 %spec.select102, %.012.i55
  %i.dd = add i32 %i.dc, %i.db
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.sroa.0.0 = phi i32 [ %i.cd, %bb.l ], [ %i.by, %bb.m ], [ %i.by, %bb.n ]
  %.0 = phi i32 [ 100, %bb.l ], [ %i.bz, %bb.m ], [ %i.bz, %bb.n ]
  %i.de = mul nsw i32 %.sroa.0.0, 10
  %i.df = lshr i32 %i.bn, 1
  %i.dg = sub i32 %.0, %i.df                      ; 2 uses
  %i.dh = mul i32 %i.dg, 6554
  %i.di = add i32 %i.dh, 32770                    ; 3 uses
  %i.dj = and i32 %i.di, 65534
  %i.dk = icmp samesign ult i32 %i.dj, 6554
  %i.dl = lshr i32 %i.di, 16
  %i.dm = add nsw i32 %i.dl, %i.de                ; 3 uses
  br i1 %i.dk, label %bb.q, label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

bb.q:                                             ; preds = %bb.p
  %i.dn = zext nneg i32 %i.bo to i64
  %i.do = mul i64 %i.bg, %i.dn                    ; 2 uses
  %i.dp = sub nsw i32 64, %i.bj
  %i.dq = zext nneg i32 %i.dp to i64
  %i.dr = lshr i64 %i.do, %i.dq
  %i.ds = trunc i64 %i.dr to i32
  %i.dt = xor i32 %i.dg, %i.ds
  %i.du = and i32 %i.dt, 1
  %.not51 = icmp eq i32 %i.du, 0
  br i1 %.not51, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dv = add nsw i32 %i.dm, -1
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

bb.s:                                             ; preds = %bb.q
  %i.dw = sub nsw i32 32, %i.bj
  %i.dx = zext nneg i32 %i.dw to i64
  %i.dy = shl i64 4294967295, %i.dx
  %i.dz = and i64 %i.dy, %i.do
  %i.ea = icmp eq i64 %i.dz, 0
  %i.eb = and i32 %i.di, 65536
  %.not53105 = icmp ne i32 %i.eb, 0
  %.not53.not = and i1 %i.ea, %.not53105
  %i.ec = sext i1 %.not53.not to i32
  %spec.select103 = add nsw i32 %i.dm, %i.ec
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit: ; preds = %bb.e, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit, %bb.f, %bb.s, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit60, %bb.r, %bb.p, %bb.h
  %.sroa.18.1 = phi i32 [ %i.bb, %bb.s ], [ 0, %bb.h ], [ %i.dd, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit60 ], [ %i.bb, %bb.r ], [ %i.bb, %bb.p ], [ %i.i, %bb.e ], [ %i.ao, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit ], [ %i.i, %bb.f ]
  %.sroa.0.3 = phi i32 [ %spec.select103, %bb.s ], [ 0, %bb.h ], [ %spec.select101, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit60 ], [ %i.dv, %bb.r ], [ %i.dm, %bb.p ], [ %i.av, %bb.e ], [ %spec.select, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit ], [ %spec.select100, %bb.f ]
  %.sroa.18.0.insert.ext = zext i32 %.sroa.18.1 to i64
  %.sroa.18.0.insert.shift = shl nuw i64 %.sroa.18.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.3 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.18.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %8 = alloca %class.anon.870, align 8            ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %10 = alloca %class.anon.871, align 8           ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.872, align 8           ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !286
  store i8 %3, ptr %i.b, align 1, !tbaa !126
  store i32 %5, ptr %i.c, align 4, !tbaa !844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #44
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !846  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !286
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #44
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !804
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !286
  %i.u = load i32, ptr %4, align 4, !tbaa !802    ; 4 uses
  %i.v = and i32 %i.u, 8192
  %.not58 = icmp eq i32 %i.v, 0
  br i1 %.not58, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 3 uses
  %i.x = icmp sgt i32 %i.t, 0                     ; 2 uses
  %i.y = and i32 %i.u, 7
  %.not41 = icmp eq i32 %i.y, 2
  %or.cond53 = or i1 %i.x, %.not41
  br i1 %or.cond53, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store i32 0, ptr %i.e, align 4, !tbaa !286
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  store ptr %i.c, ptr %8, align 8, !tbaa !201
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !848
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !292
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !850
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt3__19enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_SA_S7_:bb.a
  %.018.lcssa.i34.i.i = phi i64 [ %.130.i.i, %bb.w ], [ %i.fh, %.lr.ph.i37.i.i ] ; 3 uses
  %.0.lcssa.i35.i.i = phi i32 [ 1, %bb.w ], [ %i.fa, %.lr.ph.i37.i.i ] ; 2 uses
  %i.fj = icmp samesign ugt i64 %.018.lcssa.i34.i.i, 9
  br i1 %i.fj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.i33.i.i
  %i.fk = add i32 %.0.lcssa.i35.i.i, -2
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fl
  %i.fn = shl nuw nsw i64 %.018.lcssa.i34.i.i, 1
  %i.fo = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 2
  store i16 %i.fp, ptr %i.fm, align 1
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt3__19enable_ifIXntsr3std10is_pointerINS5_9remove_cvINS5_16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES9_S9_T0_iiT1_.exit

bb.y:                                             ; preds = %._crit_edge.i33.i.i
  %i.fq = trunc nuw nsw i64 %.018.lcssa.i34.i.i to i8
  %i.fr = or disjoint i8 %i.fq, 48
  %i.fs = add i32 %.0.lcssa.i35.i.i, -1
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ft
  store i8 %i.fr, ptr %i.fu, align 1, !tbaa !126
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt3__19enable_ifIXntsr3std10is_pointerINS5_9remove_cvINS5_16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES9_S9_T0_iiT1_.exit

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt3__19enable_ifIXntsr3std10is_pointerINS5_9remove_cvINS5_16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES9_S9_T0_iiT1_.exit: ; preds = %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i, %bb.x, %bb.y
  %.027.i.i = phi ptr [ %i.ec, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i ], [ %i.ef, %bb.x ], [ %i.ef, %bb.y ]
  %i.fv = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i, ptr nonnull %0) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !409 ; 2 uses
  %i.fy = add i64 %i.fx, 1                        ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !401
  %i.gb = icmp ugt i64 %i.fy, %i.ga
  br i1 %i.gb, label %bb.z, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

bb.z:                                             ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt3__19enable_ifIXntsr3std10is_pointerINS5_9remove_cvINS5_16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES9_S9_T0_iiT1_.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !399
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i64 noundef %i.fy), !inline_history !69
  %.pre.i.i72 = load i64, ptr %i.fw, align 8, !tbaa !409 ; 2 uses
  %.pre2.i.i73 = add i64 %.pre.i.i72, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

_ZN3fmt3v1214basic_appenderIcEaSEc.exit74:        ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt3__19enable_ifIXntsr3std10is_pointerINS5_9remove_cvINS5_16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES9_S9_T0_iiT1_.exit, %bb.z
  %.pre-phi.i.i71 = phi i64 [ %i.fy, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt3__19enable_ifIXntsr3std10is_pointerINS5_9remove_cvINS5_16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES9_S9_T0_iiT1_.exit ], [ %.pre2.i.i73, %bb.z ]
  %i.ge = phi i64 [ %i.fx, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt3__19enable_ifIXntsr3std10is_pointerINS5_9remove_cvINS5_16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES9_S9_T0_iiT1_.exit ], [ %.pre.i.i72, %bb.z ]
  %i.gf = load ptr, ptr %i.fv, align 8, !tbaa !400
  store i64 %.pre-phi.i.i71, ptr %i.fw, align 8, !tbaa !409
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ge
  store i8 101, ptr %i.gg, align 1, !tbaa !126
  %i.gh = call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.ac, ptr nonnull %i.fv)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74, %bb.c
  %.sroa.057.2 = phi ptr [ %i.ah, %bb.c ], [ %i.gh, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74 ], [ %0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #44
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.057.3 = phi ptr [ %i.l, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.057.2, %bb.aa ]
  ret ptr %.sroa.057.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local { i64, i32 } @_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %0) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 2 uses
  %i.b = and i64 %i.a, 4503599627370495           ; 4 uses
  %i.c = lshr i64 %i.a, 52
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 2047                       ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.e, -1075                  ; 5 uses
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.h = mul nsw i32 %i.f, 631305
  %i.i = add nsw i32 %i.h, -261663
  %i.j = ashr i32 %i.i, 21                        ; 5 uses
  %i.k = sub nsw i32 0, %i.j
  %i.l = mul nsw i32 %i.j, -1741647
  %i.m = ashr i32 %i.l, 19
  %i.n = add nsw i32 %i.m, %i.f                   ; 2 uses
  %i.o = sext i32 %i.k to i64
  %i.p = getelementptr [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.o
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.p, i64 4680
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !183 ; 5 uses
  %i.q = lshr i64 %.sroa.2.0.copyload.i, 54
  %i.r = sub nuw i64 %.sroa.2.0.copyload.i, %i.q
  %i.s = sub nsw i32 11, %i.n
  %i.t = zext nneg i32 %i.s to i64                ; 2 uses
  %i.u = lshr i64 %i.r, %i.t
  %i.v = lshr i64 %.sroa.2.0.copyload.i, 53
  %i.w = add i64 %i.v, %.sroa.2.0.copyload.i
  %i.x = lshr i64 %i.w, %i.t                      ; 2 uses
  %i.y = and i32 %i.f, -2
  %i.z = icmp ne i32 %i.y, 2
  %i.aa = zext i1 %i.z to i64
  %spec.select.i = add i64 %i.u, %i.aa            ; 2 uses
  %i.ab = udiv i64 %i.x, 10                       ; 3 uses
  %i.ac = mul nuw i64 %i.ab, 10
  %.not.i = icmp ult i64 %i.ac, %spec.select.i
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = add nsw i32 %i.j, 1
  %i.ae = urem i64 %i.ab, 100000000
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.e, label %.preheader164

bb.e:                                             ; preds = %bb.d
  %i.ag = udiv i64 %i.x, 1000000000
  %i.ah = trunc i64 %i.ag to i32
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0126 = phi i32 [ %i.ah, %bb.e ], [ %i.aj, %bb.f ] ; 3 uses
  %.012.i.i = phi i32 [ 8, %bb.e ], [ %i.al, %bb.f ] ; 2 uses
  %i.ai = mul i32 %.0126, -1030792151             ; 2 uses
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 30) ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, 42949672
  %i.al = add nuw nsw i32 %.012.i.i, 2
  br i1 %i.ak, label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i, label %bb.f

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i: ; preds = %bb.f
  %i.am = mul i32 %.0126, -858993459              ; 2 uses
  %i.an = tail call i32 @llvm.fshl.i32(i32 %i.am, i32 %i.am, i32 31) ; 2 uses
  %.not.i.i = icmp ult i32 %i.an, 429496730       ; 2 uses
  %spec.select = select i1 %.not.i.i, i32 %i.an, i32 %.0126
  %i.ao = zext i1 %.not.i.i to i32
  %spec.select152 = or disjoint i32 %.012.i.i, %i.ao
  %i.ap = zext i32 %spec.select to i64
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit

.preheader164:                                    ; preds = %bb.d, %.preheader164
  %.sroa.0108.1 = phi i64 [ %i.ar, %.preheader164 ], [ %i.ab, %bb.d ] ; 5 uses
  %.0.i = phi i32 [ %i.at, %.preheader164 ], [ 0, %bb.d ] ; 2 uses
  %i.aq = mul i64 %.sroa.0108.1, -8116567392432202711
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %.sroa.0108.1, i64 %i.aq, i64 62) ; 2 uses
  %i.as = icmp ugt i64 %i.ar, 184467440737095516
  %i.at = add nuw nsw i32 %.0.i, 2
  br i1 %i.as, label %bb.g, label %.preheader164

bb.g:                                             ; preds = %.preheader164
  %i.au = mul i64 %.sroa.0108.1, -3689348814741910323
  %i.av = tail call i64 @llvm.fshl.i64(i64 %.sroa.0108.1, i64 %i.au, i64 63) ; 2 uses
  %.not.i53 = icmp ult i64 %i.av, 1844674407370955162 ; 2 uses
  %spec.select153 = select i1 %.not.i53, i64 %i.av, i64 %.sroa.0108.1
  %i.aw = zext i1 %.not.i53 to i32
  %spec.select154 = or disjoint i32 %.0.i, %i.aw
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit: ; preds = %bb.g, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i
  %.sroa.0108.3 = phi i64 [ %i.ap, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i ], [ %spec.select153, %bb.g ]
  %.018.i = phi i32 [ %spec.select152, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i ], [ %spec.select154, %bb.g ]
  %i.ax = add nsw i32 %i.ad, %.018.i
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.h:                                             ; preds = %bb.c
  %i.ay = sub nsw i32 10, %i.n
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 %.sroa.2.0.copyload.i, %i.az
  %i.bb = add i64 %i.ba, 1
  %i.bc = lshr i64 %i.bb, 1                       ; 3 uses
  %or.cond.i = icmp eq i32 %i.f, -77
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bd = and i64 %i.bc, 9223372036854775806
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.j:                                             ; preds = %bb.h
  %i.be = icmp ult i64 %i.bc, %spec.select.i
  %i.bf = zext i1 %i.be to i64
  %spec.select155 = add nuw i64 %i.bc, %i.bf
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.k:                                             ; preds = %bb.b
  %i.bg = or disjoint i64 %i.b, 4503599627370496
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.bh = icmp eq i64 %i.b, 0
  br i1 %i.bh, label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.042 = phi i64 [ %i.bg, %bb.k ], [ %i.b, %bb.l ] ; 2 uses
  %.041 = phi i32 [ %i.f, %bb.k ], [ -1074, %bb.l ] ; 2 uses
  %i.bi = trunc i64 %.042 to i32                  ; 2 uses
  %i.bj = mul nsw i32 %.041, 315653
  %i.bk = ashr i32 %i.bj, 20                      ; 5 uses
  %i.bl = sub nsw i32 2, %i.bk                    ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.bm ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 4672
  %.sroa.0.0.copyload.i68 = load i64, ptr %i.bo, align 16, !tbaa !183
  %.sroa.2.0..sroa_idx.i69 = getelementptr i8, ptr %i.bn, i64 4680
  %.sroa.2.0.copyload.i70 = load i64, ptr %.sroa.2.0..sroa_idx.i69, align 8, !tbaa !183 ; 4 uses
  %i.bp = mul nsw i32 %i.bl, 1741647
  %i.bq = ashr i32 %i.bp, 19
  %i.br = add nsw i32 %i.bq, %.041                ; 4 uses
  %i.bs = sub nsw i32 63, %i.br
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = lshr i64 %.sroa.2.0.copyload.i70, %i.bt
  %i.bv = trunc i64 %i.bu to i32                  ; 3 uses
  %i.bw = shl nuw nsw i64 %.042, 1                ; 4 uses
  %i.bx = or disjoint i64 %i.bw, 1
  %i.by = zext nneg i32 %i.br to i64              ; 3 uses
  %i.bz = shl i64 %i.bx, %i.by
  %i.ca = zext i64 %i.bz to i128                  ; 2 uses
  %i.cb = zext i64 %.sroa.2.0.copyload.i70 to i128
  %i.cc = mul nuw i128 %i.ca, %i.cb               ; 2 uses
  %i.cd = lshr i128 %i.cc, 64
  %i.ce = trunc nuw i128 %i.cd to i64
  %i.cf = trunc i128 %i.cc to i64
  %1 = zext i64 %.sroa.0.0.copyload.i68 to i128   ; 3 uses
  %2 = mul nuw i128 %i.ca, %1
  %3 = lshr i128 %2, 64
  %4 = trunc nuw i128 %3 to i64
  %i.cg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cf, i64 %4) ; 2 uses
  %i.ch = extractvalue { i64, i1 } %i.cg, 1
  %i.ci = extractvalue { i64, i1 } %i.cg, 0
  %i.cj = zext i1 %i.ch to i64
  %i.ck = add nuw i64 %i.cj, %i.ce                ; 2 uses
  %i.cl = icmp ne i64 %i.ci, 0
  %5 = zext i64 %i.ck to i128
  %6 = mul nuw nsw i128 %5, 2361183241434822607
  %sum.shift.i = lshr i128 %6, 71
  %7 = trunc nuw nsw i128 %sum.shift.i to i64     ; 7 uses
  %.neg = mul i64 %7, 4294966296
  %i.cm = add i64 %.neg, %i.ck
  %i.cn = trunc i64 %i.cm to i32                  ; 5 uses
  %i.co = icmp ugt i32 %i.bv, %i.cn
  br i1 %i.co, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.cp = icmp eq i32 %i.cn, 0
  br i1 %i.cp, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.cq = and i32 %i.bi, 1
  %.not49161 = icmp eq i32 %i.cq, 0
  %.not49 = select i1 %i.cl, i1 true, i1 %.not49161
  br i1 %.not49, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = add nsw i64 %7, -1
  br label %bb.w

bb.q:                                             ; preds = %bb.m
  %i.cs = icmp ult i32 %i.bv, %i.cn
  br i1 %i.cs, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = add nsw i64 %i.bw, -1                   ; 2 uses
  %i.cu = mul i64 %.sroa.2.0.copyload.i70, %i.ct
  %i.cv = zext nneg i64 %i.ct to i128
  %i.cw = mul nuw nsw i128 %1, %i.cv              ; 2 uses
  %i.cx = lshr i128 %i.cw, 64
  %i.cy = trunc nuw nsw i128 %i.cx to i64
  %i.cz = trunc i128 %i.cw to i64
  %i.da = add i64 %i.cu, %i.cy                    ; 2 uses
  %i.db = sub nsw i32 64, %i.br
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = lshr i64 %i.da, %i.dc
  %i.de = trunc i64 %i.dd to i32
  %.sroa.06.0.insert.ext.i = and i32 %i.de, 1
  %i.df = shl i64 %i.da, %i.by
  %i.dg = lshr i64 %i.cz, %i.dc
  %i.dh = or i64 %i.dg, %i.df
  %i.di = icmp eq i64 %i.dh, 0
  %i.dj = and i32 %i.bi, 1
  %i.dk = xor i32 %i.dj, 1
  %i.dl = select i1 %i.di, i32 %i.dk, i32 0
  %i.dm = or i32 %i.dl, %.sroa.06.0.insert.ext.i
  %.not48 = icmp eq i32 %i.dm, 0
  br i1 %.not48, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n, %bb.o
  %i.dn = add nsw i32 %i.bk, 1
  %i.do = urem i64 %7, 100000000
  %8 = udiv i64 %7, 100000000
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.t, label %.preheader

bb.t:                                             ; preds = %bb.s
  %i.dq = trunc nuw nsw i64 %8 to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.0125 = phi i32 [ %i.dq, %bb.t ], [ %i.ds, %bb.u ] ; 3 uses
  %.012.i.i59 = phi i32 [ 8, %bb.t ], [ %i.du, %bb.u ] ; 2 uses
  %i.dr = mul i32 %.0125, -1030792151             ; 2 uses
  %i.ds = tail call i32 @llvm.fshl.i32(i32 %i.dr, i32 %i.dr, i32 30) ; 2 uses
  %i.dt = icmp ugt i32 %i.ds, 42949672
  %i.du = add nuw nsw i32 %.012.i.i59, 2
  br i1 %i.dt, label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i63, label %bb.u

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i63: ; preds = %bb.u
  %i.dv = mul i32 %.0125, -858993459              ; 2 uses
  %i.dw = tail call i32 @llvm.fshl.i32(i32 %i.dv, i32 %i.dv, i32 31) ; 2 uses
  %.not.i.i62 = icmp ult i32 %i.dw, 429496730     ; 2 uses
  %spec.select156 = select i1 %.not.i.i62, i32 %i.dw, i32 %.0125
  %i.dx = zext i1 %.not.i.i62 to i32
  %spec.select157 = or disjoint i32 %.012.i.i59, %i.dx
  %i.dy = zext nneg i32 %spec.select156 to i64
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65

.preheader:                                       ; preds = %bb.s, %.preheader
  %.sroa.094.4 = phi i64 [ %i.ea, %.preheader ], [ %7, %bb.s ] ; 5 uses
  %.0.i54 = phi i32 [ %i.ec, %.preheader ], [ 0, %bb.s ] ; 2 uses
  %i.dz = mul i64 %.sroa.094.4, -8116567392432202711
  %i.ea = tail call i64 @llvm.fshl.i64(i64 %.sroa.094.4, i64 %i.dz, i64 62) ; 2 uses
  %i.eb = icmp ugt i64 %i.ea, 184467440737095516
  %i.ec = add nuw nsw i32 %.0.i54, 2
  br i1 %i.eb, label %bb.v, label %.preheader

bb.v:                                             ; preds = %.preheader
  %i.ed = mul i64 %.sroa.094.4, -3689348814741910323
  %i.ee = tail call i64 @llvm.fshl.i64(i64 %.sroa.094.4, i64 %i.ed, i64 63) ; 2 uses
  %.not.i57 = icmp ult i64 %i.ee, 1844674407370955162 ; 2 uses
  %spec.select158 = select i1 %.not.i57, i64 %i.ee, i64 %.sroa.094.4
  %i.ef = zext i1 %.not.i57 to i32
  %spec.select159 = or disjoint i32 %.0.i54, %i.ef
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65: ; preds = %bb.v, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i63
  %.sroa.094.6 = phi i64 [ %i.dy, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i63 ], [ %spec.select158, %bb.v ]
  %.018.i58 = phi i32 [ %spec.select157, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i63 ], [ %spec.select159, %bb.v ]
  %i.eg = add nsw i32 %i.dn, %.018.i58
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.w:                                             ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.094.0 = phi i64 [ %i.cr, %bb.p ], [ %7, %bb.q ], [ %7, %bb.r ]
  %.0 = phi i32 [ 1000, %bb.p ], [ %i.cn, %bb.q ], [ %i.cn, %bb.r ]
  %i.eh = mul nsw i64 %.sroa.094.0, 10
  %i.ei = lshr i32 %i.bv, 1
  %i.ej = sub i32 %.0, %i.ei                      ; 2 uses
  %i.ek = mul i32 %i.ej, 656
  %i.el = add i32 %i.ek, 32800                    ; 3 uses
  %i.em = and i32 %i.el, 65520
  %i.en = icmp samesign ult i32 %i.em, 656
  %i.eo = lshr i32 %i.el, 16
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = add nsw i64 %i.eh, %i.ep                ; 3 uses
  br i1 %i.en, label %bb.x, label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.x:                                             ; preds = %bb.w
  %i.er = mul i64 %.sroa.2.0.copyload.i70, %i.bw
  %i.es = zext nneg i64 %i.bw to i128
  %i.et = mul nuw nsw i128 %1, %i.es              ; 2 uses
  %i.eu = lshr i128 %i.et, 64
  %i.ev = trunc nuw nsw i128 %i.eu to i64
  %i.ew = add i64 %i.er, %i.ev                    ; 2 uses
  %i.ex = sub nsw i32 64, %i.br
  %i.ey = zext i32 %i.ex to i64                   ; 2 uses
  %i.ez = lshr i64 %i.ew, %i.ey
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = xor i32 %i.ej, %i.fa
  %i.fc = and i32 %i.fb, 1
  %.not50 = icmp eq i32 %i.fc, 0
  br i1 %.not50, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fd = add nsw i64 %i.eq, -1
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.z:                                             ; preds = %bb.x
  %i.fe = shl i64 %i.ew, %i.by
  %i.ff = trunc i128 %i.et to i64
  %i.fg = lshr i64 %i.ff, %i.ey
  %i.fh = or i64 %i.fg, %i.fe
  %i.fi = icmp eq i64 %i.fh, 0
  %i.fj = and i32 %i.el, 65536
  %.not52162 = icmp ne i32 %i.fj, 0
  %.not52.not = and i1 %i.fi, %.not52162
  %i.fk = sext i1 %.not52.not to i64
  %spec.select160 = add nsw i64 %i.eq, %i.fk
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit: ; preds = %bb.i, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit, %bb.j, %bb.z, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65, %bb.y, %bb.w, %bb.l
  %.sroa.21.1 = phi i32 [ %i.bk, %bb.z ], [ 0, %bb.l ], [ %i.eg, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65 ], [ %i.bk, %bb.y ], [ %i.bk, %bb.w ], [ %i.j, %bb.i ], [ %i.ax, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit ], [ %i.j, %bb.j ]
  %.sroa.094.3 = phi i64 [ %spec.select160, %bb.z ], [ 0, %bb.l ], [ %.sroa.094.6, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65 ], [ %i.fd, %bb.y ], [ %i.eq, %bb.w ], [ %i.bd, %bb.i ], [ %.sroa.0108.3, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit ], [ %spec.select155, %bb.j ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.094.3, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.21.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %8 = alloca %class.anon.874, align 8            ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %10 = alloca %class.anon.875, align 8           ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.876, align 8           ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !286
  store i8 %3, ptr %i.b, align 1, !tbaa !126
  store i32 %5, ptr %i.c, align 4, !tbaa !844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #44
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !853  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !286
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #44
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !804
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !286
  %i.u = load i32, ptr %4, align 4, !tbaa !802    ; 4 uses
  %i.v = and i32 %i.u, 8192
  %.not58 = icmp eq i32 %i.v, 0
  br i1 %.not58, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 3 uses
  %i.x = icmp sgt i32 %i.t, 0                     ; 2 uses
  %i.y = and i32 %i.u, 7
  %.not41 = icmp eq i32 %i.y, 2
  %or.cond53 = or i1 %i.x, %.not41
  br i1 %or.cond53, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store i32 0, ptr %i.e, align 4, !tbaa !286
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #44
  store ptr %i.c, ptr %8, align 8, !tbaa !201
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !855
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !292
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !850
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %4, ptr %i.ae, align 8, !tbaa !818
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.b, ptr %i.af, align 8, !tbaa !181
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.e, ptr %i.ag, align 8, !tbaa !292
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !816
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %.0) ; 4 uses
  %i.al = lshr i32 %i.u, 3
  %i.am = and i32 %i.al, 7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @.str.171, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !126
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nsw i64 %i.ak, %i.as
  %i.au = lshr i32 %i.u, 15
  %i.av = and i32 %i.au, 7
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.ak, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !409
  %i.ba = add i64 %i.az, %.0
  %i.bb = add i64 %i.ba, %i.ax                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !401
  %i.be = icmp ugt i64 %i.bb, %i.bd
  br i1 %i.be, label %bb.g, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !399
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb), !inline_history !3258
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i: ; preds = %bb.g, %bb.f
  %.not.i.i = icmp eq i64 %i.as, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %i.bh = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.as, ptr noundef nonnull align 4 dereferenceable(16) %4)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i
  %.sroa.09.0.i.i = phi ptr [ %i.bh, %bb.h ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i ]
  %i.bi = call ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 8 dereferenceable(56) %8, ptr %.sroa.09.0.i.i) ; 2 uses
  %.not31.i.i = icmp eq i64 %i.ak, %i.as
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_11write_fixedIcNS1_23fallback_digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E_EESC_SC_SJ_mOSD_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bj = call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %i.bi, i64 noundef %i.at, ptr noundef nonnull align 4 dereferenceable(16) %4)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_11write_fixedIcNS1_23fallback_digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E_EESC_SC_SJ_mOSD_.exit

_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEEZNS1_11write_fixedIcNS1_23fallback_digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIdEEEET1_SC_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEEUlS5_E_EESC_SC_SJ_mOSD_.exit: ; preds = %bb.i, %bb.j
  %.sroa.09.1.i.i = phi ptr [ %i.bj, %bb.j ], [ %i.bi, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #44
  br label %bb.w

bb.k:                                             ; preds = %bb.a
  %i.bk = icmp sgt i32 %i.k, 0
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #44
  %i.bl = load i32, ptr %4, align 4, !tbaa !802
  %i.bm = and i32 %i.bl, 8192
  %.not57 = icmp eq i32 %i.bm, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = sub nsw i32 %i.bo, %2
  %i.bq = select i1 %.not57, i32 0, i32 %i.bp     ; 2 uses
  store i32 %i.bq, ptr %i.f, align 4, !tbaa !286
  %i.br = tail call noundef i32 @llvm.smax.i32(i32 %i.bq, i32 0)
  %i.bs = add nuw nsw i32 %i.br, 1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = add nsw i64 %i.bt, %i.n                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #44
  store ptr %i.c, ptr %10, align 8, !tbaa !201
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.bv, align 8, !tbaa !855
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.a, ptr %i.bw, align 8, !tbaa !292
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail15format_hexfloatIdTnNSt3__19enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS5_NS0_12format_specsERNS1_6bufferIcEE:bb.a
_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55: ; preds = %bb.n, %bb.o
  %.pre-phi.i52 = phi i64 [ %i.eg, %bb.n ], [ %.pre2.i54, %bb.o ]
  %i.ek = phi i64 [ %i.ef, %bb.n ], [ %.pre.i53, %bb.o ]
  %i.el = load ptr, ptr %3, align 8, !tbaa !400
  store i64 %.pre-phi.i52, ptr %i.aj, align 8, !tbaa !409
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store i8 48, ptr %i.em, align 1, !tbaa !126
  %i.en = add i32 %.293, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.en, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !3452

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55, %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.eo = select i1 %.not88, i8 112, i8 80
  %i.ep = load i64, ptr %i.aj, align 8, !tbaa !409 ; 2 uses
  %i.eq = add i64 %i.ep, 1                        ; 3 uses
  %i.er = load i64, ptr %i.am, align 8, !tbaa !401
  %i.es = icmp ugt i64 %i.eq, %i.er
  br i1 %i.es, label %bb.p, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

bb.p:                                             ; preds = %._crit_edge
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !399
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.eq), !inline_history !85
  %.pre.i57 = load i64, ptr %i.aj, align 8, !tbaa !409 ; 2 uses
  %.pre2.i58 = add i64 %.pre.i57, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59: ; preds = %._crit_edge, %bb.p
  %.pre-phi.i56 = phi i64 [ %i.eq, %._crit_edge ], [ %.pre2.i58, %bb.p ]
  %i.ev = phi i64 [ %i.ep, %._crit_edge ], [ %.pre.i57, %bb.p ]
  %i.ew = load ptr, ptr %3, align 8, !tbaa !400
  store i64 %.pre-phi.i56, ptr %i.aj, align 8, !tbaa !409
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 %i.eo, ptr %i.ex, align 1, !tbaa !126
  %i.ey = icmp slt i32 %i.j, 0
  %i.ez = load i64, ptr %i.aj, align 8, !tbaa !409 ; 3 uses
  %i.fa = add i64 %i.ez, 1                        ; 5 uses
  %i.fb = load i64, ptr %i.am, align 8, !tbaa !401
  %i.fc = icmp ugt i64 %i.fa, %i.fb               ; 2 uses
  br i1 %i.ey, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fc, label %bb.r, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

bb.r:                                             ; preds = %bb.q
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !399
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fa), !inline_history !85
  %.pre.i61 = load i64, ptr %i.aj, align 8, !tbaa !409 ; 2 uses
  %.pre2.i62 = add i64 %.pre.i61, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63: ; preds = %bb.q, %bb.r
  %.pre-phi.i60 = phi i64 [ %i.fa, %bb.q ], [ %.pre2.i62, %bb.r ]
  %i.ff = phi i64 [ %i.ez, %bb.q ], [ %.pre.i61, %bb.r ]
  %i.fg = load ptr, ptr %3, align 8, !tbaa !400
  store i64 %.pre-phi.i60, ptr %i.aj, align 8, !tbaa !409
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ff
  store i8 45, ptr %i.fh, align 1, !tbaa !126
  %i.fi = sub nsw i32 0, %i.j
  br label %bb.u

bb.s:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fc, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

bb.t:                                             ; preds = %bb.s
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !399
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fa), !inline_history !85
  %.pre.i65 = load i64, ptr %i.aj, align 8, !tbaa !409 ; 2 uses
  %.pre2.i66 = add i64 %.pre.i65, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67: ; preds = %bb.s, %bb.t
  %.pre-phi.i64 = phi i64 [ %i.fa, %bb.s ], [ %.pre2.i66, %bb.t ]
  %i.fl = phi i64 [ %i.ez, %bb.s ], [ %.pre.i65, %bb.t ]
  %i.fm = load ptr, ptr %3, align 8, !tbaa !400
  store i64 %.pre-phi.i64, ptr %i.aj, align 8, !tbaa !409
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  store i8 43, ptr %i.fn, align 1, !tbaa !126
  br label %bb.u

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63
  %.0 = phi i32 [ %i.fi, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63 ], [ %i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67 ] ; 3 uses
  %i.fo = or i32 %.0, 1
  %i.fp = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fo, i1 true)
  %i.fq = xor i32 %i.fp, 31
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !183
  %i.fu = zext nneg i32 %.0 to i64
  %i.fv = add i64 %i.ft, %i.fu
  %i.fw = lshr i64 %i.fv, 32
  %i.fx = trunc nuw i64 %i.fw to i32
  %i.fy = call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt3__19enable_ifIXntsr3std10is_pointerINS5_9remove_cvINS5_16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES9_S9_T0_i(ptr nonnull %3, i32 noundef %.0, i32 noundef %i.fx) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #44
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::basic_fp", align 16 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !802
  %i.c = and i32 %i.b, 7
  %i.d = icmp eq i32 %i.c, 2                      ; 5 uses
  %i.e = fcmp oeq double %0, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.f, %i.d
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !409  ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !401
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !399
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.i), !inline_history !85
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !409 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.i, %bb.c ], [ %.pre2.i, %bb.d ]
  %i.o = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %bb.d ]
  %i.p = load ptr, ptr %4, align 8, !tbaa !400
  store i64 %.pre-phi.i, ptr %i.g, align 8, !tbaa !409
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 48, ptr %i.q, align 1, !tbaa !126
  br label %bb.bd

bb.e:                                             ; preds = %bb.b
  %i.r = zext nneg i32 %1 to i64                  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !401  ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %bb.f, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !399
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.r), !inline_history !87
  %.pre.i137 = load i64, ptr %i.s, align 8, !tbaa !401
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit:  ; preds = %bb.e, %bb.f
  %i.x = phi i64 [ %i.t, %bb.e ], [ %.pre.i137, %bb.f ]
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !409
  %i.aa = load ptr, ptr %4, align 8, !tbaa !400
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 48, i64 %i.r, i1 false)
  %i.ab = sub nsw i32 0, %1
  br label %bb.bd

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #44
  %i.ac = bitcast double %0 to i64                ; 2 uses
  %i.ad = and i64 %i.ac, 4503599627370495         ; 5 uses
  %i.ae = and i64 %i.ac, 9218868437227405312      ; 3 uses
  %i.af = lshr exact i64 %i.ae, 52
  %i.ag = trunc nuw nsw i64 %i.af to i32          ; 2 uses
  %.not = icmp eq i64 %i.ae, 0                    ; 3 uses
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.ag, -1075
  %i.ai = shl nuw nsw i64 %i.ad, 1
  %i.aj = or disjoint i64 %i.ai, 9007199254740992
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ak = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ad, i1 true) ; 2 uses
  %i.al = trunc nuw nsw i64 %i.ak to i32
  %i.am = add nsw i64 %i.ak, -10
  %i.an = sub nuw nsw i32 -1063, %i.al
  %i.ao = shl i64 %i.ad, %i.am
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0109 = phi i64 [ %i.aj, %bb.h ], [ %i.ao, %bb.i ]
  %.0108 = phi i32 [ %i.ah, %bb.h ], [ %i.an, %bb.i ] ; 2 uses
  %i.ap = mul nsw i32 %.0108, 315653
  %i.aq = ashr i32 %i.ap, 20                      ; 2 uses
  %.neg125 = add nsw i32 %i.aq, -2                ; 3 uses
  %i.ar = sub nsw i32 2, %i.aq                    ; 2 uses
  %i.as = mul nsw i32 %i.ar, 1741647
  %i.at = ashr i32 %i.as, 19
  %i.au = add nsw i32 %i.at, %.0108
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %.0109, %i.av
  %i.ax = sext i32 %i.ar to i64
  %i.ay = getelementptr [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.ax ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 4672
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.az, align 16, !tbaa !183
  %.sroa.2.0..sroa_idx.i.i = getelementptr i8, ptr %i.ay, i64 4680
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !183
  %i.ba = zext i64 %i.aw to i128                  ; 2 uses
  %i.bb = zext i64 %.sroa.2.0.copyload.i.i to i128
  %i.bc = mul nuw i128 %i.ba, %i.bb               ; 2 uses
  %i.bd = lshr i128 %i.bc, 64
  %i.be = trunc nuw i128 %i.bd to i64
  %i.bf = trunc i128 %i.bc to i64
  %6 = zext i64 %.sroa.0.0.copyload.i.i to i128
  %7 = mul nuw i128 %i.ba, %6
  %8 = lshr i128 %7, 64
  %9 = trunc nuw i128 %8 to i64
  %i.bg = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.bf, i64 %9) ; 2 uses
  %i.bh = extractvalue { i64, i1 } %i.bg, 1
  %i.bi = extractvalue { i64, i1 } %i.bg, 0       ; 2 uses
  %i.bj = zext i1 %i.bh to i64
  %i.bk = add nuw i64 %i.bj, %i.be                ; 3 uses
  %i.bl = icmp ne i64 %i.bi, 0                    ; 4 uses
  %i.bm = icmp ugt i64 %i.bk, 999999999999999999  ; 2 uses
  %i.bn = mul nuw i64 %i.bk, 10
  %.0107 = select i1 %i.bm, i64 %i.bk, i64 %i.bn  ; 3 uses
  %.0106 = select i1 %i.bm, i32 19, i32 18        ; 4 uses
  br i1 %i.d, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.bo = add nsw i32 %.0106, %.neg125            ; 3 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  %i.bq = sub nuw nsw i32 2147483647, %i.bo
  %i.br = icmp sgt i32 %1, %i.bq
  %or.cond.i = select i1 %i.bp, i1 %i.br, i1 false
  br i1 %or.cond.i, label %bb.l, label %_ZN3fmt3v126detail16adjust_precisionERii.exit

bb.l:                                             ; preds = %bb.k
  %i.bs = tail call ptr @__cxa_allocate_exception(i64 16) #44 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull @.str.181)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bt = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bs) #44
  resume { ptr, i32 } %i.bt

_ZN3fmt3v126detail16adjust_precisionERii.exit:    ; preds = %bb.k
  %i.bu = add nsw i32 %i.bo, %1
  br label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail16adjust_precisionERii.exit, %bb.j
  %.0187 = phi i32 [ %i.bu, %_ZN3fmt3v126detail16adjust_precisionERii.exit ], [ %1, %bb.j ] ; 20 uses
  %.not131 = icmp sgt i32 %.0106, %.0187
  br i1 %.not131, label %bb.p, label %.thread219

bb.p:                                             ; preds = %bb.o
  %i.bv = icmp slt i32 %.0187, 1
  %i.bw = add nsw i32 %.0106, %.neg125            ; 2 uses
  br i1 %i.bv, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  store i32 %i.bw, ptr %i.a, align 4, !tbaa !286
  %i.bx = icmp slt i32 %.0187, 0
  br i1 %i.bx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.by, align 8, !tbaa !409
  br label %.thread

bb.s:                                             ; preds = %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !401
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !399
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1), !inline_history !87
  %.pre.i140 = load i64, ptr %i.bz, align 8, !tbaa !401
  %i.ce = icmp ne i64 %.pre.i140, 0
  %i.cf = zext i1 %i.ce to i64
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141: ; preds = %bb.s, %bb.t
  %i.cg = phi i64 [ 1, %bb.s ], [ %i.cf, %bb.t ]
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !409
  %i.ci = zext i1 %i.bl to i64
  %i.cj = or i64 %.0107, %i.ci
  %i.ck = icmp ugt i64 %i.cj, 5000000000000000000
  %i.cl = load ptr, ptr %4, align 8, !tbaa !400   ; 2 uses
  br i1 %i.ck, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 49, ptr %i.cl, align 1, !tbaa !126
  br label %.thread

bb.v:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 48, ptr %i.cl, align 1, !tbaa !126
  br label %.thread

bb.w:                                             ; preds = %bb.p
  %i.cm = sub nsw i32 %i.bw, %.0187               ; 2 uses
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !286
  %10 = zext i64 %.0107 to i128
  %11 = mul nuw nsw i128 %10, 7922816251426433760
  %sum.shift = lshr i128 %11, 96
  %12 = trunc nuw nsw i128 %sum.shift to i64      ; 3 uses
  %.neg126 = mul i64 %12, -10000000000
  %i.cn = add i64 %.neg126, %.0107                ; 5 uses
  %i.co = tail call i32 @llvm.umin.i32(i32 %.0187, i32 9) ; 3 uses
  %i.cp = load ptr, ptr %4, align 8, !tbaa !400   ; 6 uses
  %i.cq = and i32 %i.co, 1
  %.not.i = icmp eq i32 %i.cq, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cr = mul nuw nsw i64 %12, 720575941
  %i.cs = lshr i64 %i.cr, 24
  %i.ct = add nuw nsw i64 %i.cs, 1                ; 2 uses
  %i.cu = lshr i64 %i.ct, 32                      ; 2 uses
  %i.cv = trunc nuw nsw i64 %i.cu to i8
  %i.cw = add nuw nsw i8 %i.cv, 48
  store i8 %i.cw, ptr %i.cp, align 1, !tbaa !126
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.cx = mul nuw nsw i64 %12, 450359963
  %i.cy = lshr i64 %i.cx, 20
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %i.da = lshr i64 %i.cz, 32                      ; 2 uses
  %i.db = shl nuw nsw i64 %i.da, 1
  %i.dc = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2
  store i16 %i.dd, ptr %i.cp, align 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.0208 = phi i64 [ %i.cz, %bb.y ], [ %i.ct, %bb.x ] ; 2 uses
  %.0204.in = phi i64 [ %i.da, %bb.y ], [ %i.cu, %bb.x ]
  %.0.i = phi i32 [ 2, %bb.y ], [ 1, %bb.x ]      ; 2 uses
  %i.de = icmp samesign ugt i32 %.0187, %.0.i
  br i1 %i.de, label %.lr.ph.i, label %.thread265

.lr.ph.i:                                         ; preds = %bb.z
  %i.df = zext nneg i32 %.0.i to i64              ; 4 uses
  %i.dg = zext nneg i32 %i.co to i64              ; 3 uses
  %i.dh = and i64 %.0208, 4294967295
  %i.di = mul nuw nsw i64 %i.dh, 100              ; 3 uses
  %i.dj = lshr i64 %i.di, 32                      ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.df
  %i.dl = shl nuw nsw i64 %i.dj, 1
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dl
  %i.dn = load i16, ptr %i.dm, align 2
  store i16 %i.dn, ptr %i.dk, align 1
  %indvars.iv.next.i = add nuw nsw i64 %i.df, 2   ; 2 uses
  %i.do = icmp samesign ult i64 %indvars.iv.next.i, %i.dg
  br i1 %i.do, label %bb.aa, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.aa:                                            ; preds = %.lr.ph.i
  %i.dp = and i64 %i.di, 4294967292
  %i.dq = mul nuw nsw i64 %i.dp, 100              ; 3 uses
  %i.dr = lshr i64 %i.dq, 32                      ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv.next.i
  %i.dt = shl nuw nsw i64 %i.dr, 1
  %i.du = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2
  store i16 %i.dv, ptr %i.ds, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %i.df, 4 ; 2 uses
  %i.dw = icmp samesign ult i64 %indvars.iv.next.i.1, %i.dg
  br i1 %i.dw, label %bb.ab, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.dx = and i64 %i.dq, 4294967280
  %i.dy = mul nuw nsw i64 %i.dx, 100              ; 3 uses
  %i.dz = lshr i64 %i.dy, 32                      ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv.next.i.1
  %i.eb = shl nuw nsw i64 %i.dz, 1
  %i.ec = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2
  store i16 %i.ed, ptr %i.ea, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.df, 6 ; 2 uses
  %i.ee = icmp samesign ult i64 %indvars.iv.next.i.2, %i.dg
  br i1 %i.ee, label %bb.ac, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.ef = and i64 %i.dy, 4294967232
  %i.eg = mul nuw nsw i64 %i.ef, 100              ; 2 uses
  %i.eh = lshr i64 %i.eg, 32                      ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv.next.i.2
  %i.ej = shl nuw nsw i64 %i.eh, 1
  %i.ek = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2
  store i16 %i.el, ptr %i.ei, align 1
  br label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit: ; preds = %bb.ac, %bb.ab, %bb.aa, %.lr.ph.i
  %.lcssa286 = phi i64 [ %i.di, %.lr.ph.i ], [ %i.dq, %bb.aa ], [ %i.dy, %bb.ab ], [ %i.eg, %bb.ac ]
  %.lcssa285 = phi i64 [ %i.dj, %.lr.ph.i ], [ %i.dr, %bb.aa ], [ %i.dz, %bb.ab ], [ %i.eh, %bb.ac ] ; 2 uses
  %i.em = icmp samesign ult i32 %.0187, 10
  br i1 %i.em, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %.not129 = icmp eq i32 %.0187, 9
  br i1 %.not129, label %bb.ae, label %.thread265

.thread265:                                       ; preds = %bb.z, %bb.ad
  %.2210262271 = phi i64 [ %.lcssa286, %bb.ad ], [ %.0208, %bb.z ]
  %.1205264270.in = phi i64 [ %.lcssa285, %bb.ad ], [ %.0204.in, %bb.z ]
  %i.en = trunc i64 %.2210262271 to i32           ; 2 uses
  %i.eo = sub nuw nsw i32 8, %i.co
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr @.str.200, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3457
  %.not130 = icmp ugt i32 %i.er, %i.en
  br i1 %.not130, label %bb.an, label %.critedge134

bb.ae:                                            ; preds = %bb.ad
  %i.es = icmp ugt i64 %i.cn, 5000000000
  br i1 %i.es, label %.critedge134.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.et = icmp eq i64 %i.cn, 5000000000
  %i.eu = trunc i64 %.lcssa285 to i1
  %i.ev = or i1 %i.bl, %i.eu
  %or.cond223 = select i1 %i.et, i1 %i.ev, i1 false
  br i1 %or.cond223, label %.critedge134.thread, label %.critedge136

bb.ag:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %13 = zext i64 %i.cn to i128
  %14 = mul nuw nsw i128 %13, 1844674407370955162
  %15 = lshr i128 %14, 64                         ; 2 uses
  %i.ew = trunc i128 %15 to i32
  %i.ex = trunc i64 %i.cn to i32
  %.neg127 = mul i32 %i.ew, -10
  %i.ey = add i32 %.neg127, %i.ex                 ; 3 uses
  %i.ez = add nsw i32 %.0187, -9                  ; 3 uses
  %i.fa = load ptr, ptr %4, align 8, !tbaa !400
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 9 ; 3 uses
  %i.fc = and i32 %i.ez, 1
  %.not.i142 = icmp eq i32 %i.fc, 0
  %16 = trunc nuw nsw i128 %15 to i64
  %i.fd = and i64 %16, 4294967295                 ; 2 uses
  br i1 %.not.i142, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fe = mul nuw nsw i64 %i.fd, 720575941
  %i.ff = lshr i64 %i.fe, 24
  %i.fg = add nuw nsw i64 %i.ff, 1                ; 2 uses
  %i.fh = lshr i64 %i.fg, 32                      ; 2 uses
  %i.fi = trunc nuw nsw i64 %i.fh to i8
  %i.fj = add nuw nsw i8 %i.fi, 48
  store i8 %i.fj, ptr %i.fb, align 1, !tbaa !126
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.fk = mul nuw nsw i64 %i.fd, 450359963
  %i.fl = lshr i64 %i.fk, 20
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %i.fn = lshr i64 %i.fm, 32                      ; 2 uses
  %i.fo = shl nuw nsw i64 %i.fn, 1
  %i.fp = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2
  store i16 %i.fq, ptr %i.fb, align 1
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.3211 = phi i64 [ %i.fm, %bb.ai ], [ %i.fg, %bb.ah ] ; 2 uses
  %.2206.in = phi i64 [ %i.fn, %bb.ai ], [ %i.fh, %bb.ah ]
  %.0.i143 = phi i32 [ 2, %bb.ai ], [ 1, %bb.ah ] ; 2 uses
  %i.fr = icmp samesign ult i32 %.0.i143, %i.ez
  br i1 %i.fr, label %.lr.ph.i144, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

.lr.ph.i144:                                      ; preds = %bb.aj
  %i.fs = zext nneg i32 %.0.i143 to i64
  %i.ft = zext nneg i32 %i.ez to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i144
  %.4 = phi i64 [ %.3211, %.lr.ph.i144 ], [ %i.fv, %bb.ak ]
  %indvars.iv.i145 = phi i64 [ %i.fs, %.lr.ph.i144 ], [ %indvars.iv.next.i146, %bb.ak ] ; 2 uses
  %i.fu = and i64 %.4, 4294967295
  %i.fv = mul nuw nsw i64 %i.fu, 100              ; 3 uses
  %i.fw = lshr i64 %i.fv, 32                      ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fb, i64 %indvars.iv.i145
  %i.fy = shl nuw nsw i64 %i.fw, 1
  %i.fz = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fy
  %i.ga = load i16, ptr %i.fz, align 2
  store i16 %i.ga, ptr %i.fx, align 1
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 2 ; 2 uses
  %i.gb = icmp samesign ult i64 %indvars.iv.next.i146, %i.ft
  br i1 %i.gb, label %bb.ak, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147, !llvm.loop !3453

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147: ; preds = %bb.ak
  %i.gc = icmp samesign ult i32 %.0187, 18
  br i1 %i.gc, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, label %bb.al

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread: ; preds = %bb.aj, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %.3207215.in = phi i64 [ %i.fw, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.2206.in, %bb.aj ]
  %.5214 = phi i64 [ %i.fv, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.3211, %bb.aj ]
  %i.gd = trunc i64 %.5214 to i32                 ; 2 uses
  %i.ge = sub nuw nsw i32 17, %.0187
  %i.gf = zext nneg i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr @.str.200, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !3457
  %.not128 = icmp ugt i32 %i.gh, %i.gd
  br i1 %.not128, label %.split217, label %.critedge134.thread

.split217:                                        ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread
  %.3207215 = trunc nuw nsw i64 %.3207215.in to i32
  %i.gi = lshr i32 %i.gd, 31
  %i.gj = icmp ne i32 %i.ey, 0
  %i.gk = or i1 %i.gj, %i.bl
  %i.gl = zext i1 %i.gk to i32
  %i.gm = or i32 %i.gl, %.3207215
  %i.gn = and i32 %i.gi, %i.gm
  %i.go = trunc nuw i32 %i.gn to i1
  br i1 %i.go, label %.critedge134.thread, label %.critedge136

bb.al:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %i.gp = icmp ugt i32 %i.ey, 5
  br i1 %i.gp, label %.critedge134.thread, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gq = icmp eq i32 %i.ey, 5
  %i.gr = trunc i64 %i.fw to i1
  %i.gs = or i1 %i.bl, %i.gr
  %or.cond225 = select i1 %i.gq, i1 %i.gs, i1 false
  br i1 %or.cond225, label %.critedge134.thread, label %.critedge136

bb.an:                                            ; preds = %.thread265
  %.1205264270 = trunc nsw i64 %.1205264270.in to i32
  %i.gt = lshr i32 %i.en, 31
  %i.gu = or i64 %i.cn, %i.bi
  %i.gv = icmp ne i64 %i.gu, 0
  %i.gw = zext i1 %i.gv to i32
  %i.gx = or i32 %.1205264270, %i.gw
  %i.gy = and i32 %i.gx, %i.gt
  %i.gz = trunc nuw i32 %i.gy to i1
  br i1 %i.gz, label %.critedge134, label %.critedge136

.critedge134.thread:                              ; preds = %bb.am, %bb.af, %.split217, %bb.ae, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, %bb.al
  %i.ha = load ptr, ptr %4, align 8, !tbaa !400
  %i.hb = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.hc = getelementptr i8, ptr %i.ha, i64 %i.hb
  %i.hd = getelementptr i8, ptr %i.hc, i64 -1     ; 2 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !126
  %i.hf = add i8 %i.he, 1
  store i8 %i.hf, ptr %i.hd, align 1, !tbaa !126
  br label %.lr.ph.preheader

.critedge134:                                     ; preds = %.thread265, %bb.an
  %i.hg = load ptr, ptr %4, align 8, !tbaa !400
  %i.hh = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hg, i64 %i.hh
  %i.hj = getelementptr i8, ptr %i.hi, i64 -1     ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !126
  %i.hl = add i8 %i.hk, 1
  store i8 %i.hl, ptr %i.hj, align 1, !tbaa !126
  %.not240 = icmp eq i32 %.0187, 1
  br i1 %.not240, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge134.thread, %.critedge134
  %i.hm = phi i64 [ %i.hb, %.critedge134.thread ], [ %i.hh, %.critedge134 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ao
  %indvars.iv = phi i64 [ %i.hm, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ao ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.hn = load ptr, ptr %4, align 8, !tbaa !400
  %i.ho = and i64 %indvars.iv.next, 4294967295
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ho ; 2 uses
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !126
  %i.hr = icmp sgt i8 %i.hq, 57
  br i1 %i.hr, label %bb.ao, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.ao, %.critedge134
  %i.hs = phi i64 [ 1, %.critedge134 ], [ %i.hm, %bb.ao ], [ %i.hm, %.lr.ph ]
  %i.ht = load ptr, ptr %4, align 8, !tbaa !400   ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !126
  %i.hv = icmp sgt i8 %i.hu, 57
  br i1 %i.hv, label %bb.ap, label %.critedge136

bb.ao:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.hp, align 1, !tbaa !126
  %i.hw = load ptr, ptr %4, align 8, !tbaa !400
  %i.hx = getelementptr i8, ptr %i.hw, i64 %indvars.iv
  %i.hy = getelementptr i8, ptr %i.hx, i64 -2     ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !126
  %i.ia = add i8 %i.hz, 1
  store i8 %i.ia, ptr %i.hy, align 1, !tbaa !126
  %i.ib = trunc nuw i64 %indvars.iv to i32
  %i.ic = icmp sgt i32 %i.ib, 2
  br i1 %i.ic, label %.lr.ph, label %.critedge, !llvm.loop !3454

bb.ap:                                            ; preds = %.critedge
  store i8 49, ptr %i.ht, align 1, !tbaa !126
  br i1 %i.d, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.id = add nuw nsw i32 %.0187, 1
  %i.ie = load ptr, ptr %4, align 8, !tbaa !400
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 %i.hs
  store i8 48, ptr %i.if, align 1, !tbaa !126
  br label %.critedge136

bb.ar:                                            ; preds = %bb.ap
  %i.ig = add nsw i32 %i.cm, 1
  store i32 %i.ig, ptr %i.a, align 4, !tbaa !286
  br label %.critedge136

.critedge136:                                     ; preds = %.split217, %bb.am, %bb.af, %.critedge, %bb.ar, %bb.aq, %bb.an
  %.1188 = phi i32 [ %i.id, %bb.aq ], [ %.0187, %bb.ar ], [ %.0187, %.critedge ], [ %.0187, %bb.an ], [ 9, %bb.af ], [ 18, %bb.am ], [ %.0187, %.split217 ]
  %i.ih = zext nneg i32 %.1188 to i64             ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !401 ; 2 uses
  %i.ik = icmp ult i64 %i.ij, %i.ih
  br i1 %i.ik, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.critedge136
  %i.il = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !399
  tail call void %i.im(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ih), !inline_history !87
  %.pre.i148 = load i64, ptr %i.ii, align 8, !tbaa !401
  br label %bb.at

.thread219:                                       ; preds = %bb.o
  %i.in = add nsw i32 %.0106, %.neg125
  %i.io = add nsw i32 %i.in, -1
  store i32 %i.io, ptr %i.a, align 4, !tbaa !286
  br i1 %3, label %bb.au, label %bb.av

bb.at:                                            ; preds = %bb.as, %.critedge136
  %i.ip = phi i64 [ %i.ij, %.critedge136 ], [ %.pre.i148, %bb.as ]
  %i.iq = tail call noundef i64 @llvm.umin.i64(i64 %i.ih, i64 %i.ip)
  %i.ir = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !409
  br label %.thread

bb.au:                                            ; preds = %.thread219
  %i.is = fptrunc double %0 to float
  %i.it = bitcast float %i.is to i32              ; 2 uses
  %i.iu = and i32 %i.it, 8388607                  ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNSt3__113__assoc_stateINS_8expectedINS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS6_EEEENS4_14ImageLoadErrorEEEE4moveEv:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #44
  store ptr null, ptr %3, align 8, !tbaa !382
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !382
  %.not = icmp eq ptr %i.d, null
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #44
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.c) #44
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %4) #47
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #44
  br label %bb.k

bb.g:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.i = load i8, ptr %i.h, align 8, !tbaa !1550, !range !174, !noundef !175 ; 2 uses
  %i.j = trunc nuw i8 %i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !12875)
  call void @llvm.experimental.noalias.scope.decl(metadata !12876)
  call void @llvm.experimental.noalias.scope.decl(metadata !12877)
  call void @llvm.experimental.noalias.scope.decl(metadata !12878)
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !698, !noalias !12879
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !700, !noalias !12879
  store <2 x ptr> %i.n, ptr %i.k, align 8, !tbaa !700, !alias.scope !12879
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.g, i8 0, i64 24, i1 false), !noalias !12879
  br label %_ZNSt3__18expectedINS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS5_EEEENS3_14ImageLoadErrorEEC2B8ne180100EOSA_Qaaaa23is_move_constructible_vIT_E23is_move_constructible_vIT0_Entaa33is_trivially_move_constructible_vISC_E33is_trivially_move_constructible_vISD_E.exit

bb.i:                                             ; preds = %bb.g
  call void @_ZNSt13runtime_errorC2ERKS_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.g) #44
  br label %_ZNSt3__18expectedINS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS5_EEEENS3_14ImageLoadErrorEEC2B8ne180100EOSA_Qaaaa23is_move_constructible_vIT_E23is_move_constructible_vIT0_Entaa33is_trivially_move_constructible_vISC_E33is_trivially_move_constructible_vISD_E.exit

_ZNSt3__18expectedINS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS5_EEEENS3_14ImageLoadErrorEEC2B8ne180100EOSA_Qaaaa23is_move_constructible_vIT_E23is_move_constructible_vIT0_Entaa33is_trivially_move_constructible_vISC_E33is_trivially_move_constructible_vISD_E.exit: ; preds = %bb.h, %bb.i
  %.sink.i.i.i.i.i.i.i.i.i = phi ptr [ %i.l, %bb.h ], [ getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), %bb.i ]
  store ptr %.sink.i.i.i.i.i.i.i.i.i, ptr %0, align 8, !alias.scope !12879
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.i, ptr %i.o, align 8, !tbaa !693
  %i.p = load i8, ptr %i.b, align 8, !tbaa !1377, !range !174, !noundef !175
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.j, label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit

bb.j:                                             ; preds = %_ZNSt3__18expectedINS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS5_EEEENS3_14ImageLoadErrorEEC2B8ne180100EOSA_Qaaaa23is_move_constructible_vIT_E23is_move_constructible_vIT0_Entaa33is_trivially_move_constructible_vISC_E33is_trivially_move_constructible_vISD_E.exit
  %i.r = load ptr, ptr %2, align 8, !tbaa !1376
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.r) #44
  br label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit: ; preds = %_ZNSt3__18expectedINS_6vectorINS_10shared_ptrIN3tev5ImageEEENS_9allocatorIS5_EEEENS3_14ImageLoadErrorEEC2B8ne180100EOSA_Qaaaa23is_move_constructible_vIT_E23is_move_constructible_vIT0_Entaa33is_trivially_move_constructible_vISC_E33is_trivially_move_constructible_vISD_E.exit, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  ret void

bb.k:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.f, %bb.f ], [ %i.e, %bb.e ]
  %i.s = load i8, ptr %i.b, align 8, !tbaa !1377, !range !174, !noundef !175
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.l, label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit4

bb.l:                                             ; preds = %bb.k
  %i.u = load ptr, ptr %2, align 8, !tbaa !1376
  call void @_ZNSt3__15mutex6unlockEv(ptr noundef nonnull align 8 dereferenceable(40) %i.u) #44
  br label %_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit4

_ZNSt3__111unique_lockINS_5mutexEED2B8ne180100Ev.exit4: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #44
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEC1EPKcj(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %i.a, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 8), align 8 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !193
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 16), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %0, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8, !tbaa !193
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !756
  %i.i = load ptr, ptr %0, align 8, !tbaa !193
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k ; 3 uses
  invoke void @_ZNSt3__18ios_base4initEPv(ptr noundef nonnull align 8 dereferenceable(148) %i.l, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  store ptr null, ptr %i.m, align 8, !tbaa !536
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  store i32 -1, ptr %i.n, align 8, !tbaa !537
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 24), ptr %0, align 8, !tbaa !193
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 64), ptr %i.a, align 8, !tbaa !193
  invoke void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEEC1Ev(ptr noundef nonnull align 8 dereferenceable(163) %i.b)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = or i32 %2, 8
  %i.p = invoke noundef ptr @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEE4openEPKcj(ptr noundef nonnull align 8 dereferenceable(163) %i.b, ptr noundef %1, i32 noundef %i.o)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.e, label %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej.exit

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %0, align 8, !tbaa !193
  %i.s = getelementptr i8, ptr %i.r, i64 -24
  %i.t = load i64, ptr %i.s, align 8
  %i.u = getelementptr inbounds i8, ptr %0, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load i32, ptr %i.v, align 8, !tbaa !684
  %i.x = or i32 %i.w, 4
  invoke void @_ZNSt3__18ios_base5clearEj(ptr noundef nonnull align 8 dereferenceable(148) %i.u, i32 noundef %i.x)
          to label %_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__113basic_filebufIcNS_11char_traitsIcEEED1Ev(ptr noundef nonnull align 8 dead_on_return(163) dereferenceable(163) %i.b) #44
  br label %bb.i

_ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB8ne180100Ej.exit: ; preds = %bb.e, %bb.d
  ret void

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.aa, %bb.h ], [ %i.z, %bb.g ]
  tail call void @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZTTNSt3__114basic_ifstreamIcNS_11char_traitsIcEEEE, i64 8)) #44
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.i ], [ %i.y, %bb.f ]
  tail call void @_ZNSt3__19basic_iosIcNS_11char_traitsIcEEED2Ev(ptr noundef nonnull align 8 dead_on_return(148) dereferenceable(148) %i.a) #44
  resume { ptr, i32 } %.pn.pn
}

declare noundef nonnull align 8 dereferenceable(100) ptr @_ZNSt3__115basic_stringbufIcNS_11char_traitsIcEENS_9allocatorIcEEEaSEOS5_(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(100)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNSt3__18ios_base4swapERS0_(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(136)) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #40

; Function Attrs: mustprogress uwtable
define internal void @_ZN3tev8awaitAllITkNS_14range_of_tasksERNSt3__16vectorINS_4TaskIvEENS1_9allocatorIS4_EEEEQsr3stdE7same_asINS1_11conditionalIXsr21__is_primary_templateINS1_15iterator_traitsIu14__remove_cvrefIDTclL_ZNS1_6ranges5__cpo5beginEEclsr3stdE7declvalIRT_EEEEEEEEE5valueENS1_26indirectly_readable_traitsISG_EESH_E4type10value_typeES4_EEES4_OSD_.resume(ptr noundef nonnull align 8 dereferenceable(104) %0) #4 personality ptr @__gxx_personality_v0 {
resume.0:
  %.reload.addr138 = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %.reload.addr139 = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %.reload.addr140 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %.reload.addr142 = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.sroa.041.064.reload.addr136 = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %.reload.addr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %index.addr143 = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  br label %bb.e

.lr.ph:                                           ; preds = %bb.j
  store ptr %i.at, ptr %.sroa.041.064.reload.addr136, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !199
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load atomic i32, ptr %i.c acquire, align 4
  %i.e = icmp slt i32 %i.d, 2
  br i1 %i.e, label %bb.a, label %AfterCoroSave

bb.a:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !199
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = atomicrmw add ptr %i.g, i32 -1 acq_rel, align 4
  %i.i = icmp slt i32 %i.h, 1
  br i1 %i.i, label %bb.b, label %.thread.sink.split

bb.b:                                             ; preds = %bb.a
  %i.j = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc.i.i unwind label %.from..loopexit.split-lp.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !240  ; 7 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !247
  %i.m = and i32 %i.l, 8
  %.not.i.i.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i.i.i, label %bb.c, label %.thread.sink.split

bb.c:                                             ; preds = %.noexc.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !248  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !249  ; 2 uses
  %.not12.i.i.i.i.i = icmp eq ptr %i.o, %i.q
  br i1 %.not12.i.i.i.i.i, label %.thread.sink.split, label %.from..lr.ph.i.i.i.i.i

.from..lr.ph.i.i.i.i.i:                           ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 33
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  br label %.from..noexc2.i.i

.from..noexc2.i.i:                                ; preds = %.noexc2.i.i, %.from..lr.ph.i.i.i.i.i
  %.sroa.09.013.i.i.i.i.i = phi ptr [ %i.o, %.from..lr.ph.i.i.i.i.i ], [ %i.ag, %.noexc2.i.i ] ; 2 uses
  %i.v = load ptr, ptr %.sroa.09.013.i.i.i.i.i, align 8, !tbaa !252 ; 2 uses
  %i.w = load i8, ptr %i.r, align 8               ; 2 uses
  %i.x = trunc i8 %i.w to i1                      ; 2 uses
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = select i1 %i.x, ptr %i.y, ptr %i.t
  %i.aa = load i64, ptr %i.u, align 8
  %i.ab = lshr i8 %i.w, 1
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = select i1 %i.x, i64 %i.aa, i64 %i.ac
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !193
  %i.af = load ptr, ptr %i.ae, align 8
  invoke void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.v, ptr %i.z, i64 %i.ad, i32 noundef 8, ptr nonnull @.str.125, i64 36)
          to label %.noexc2.i.i unwind label %.from..loopexit.i.i, !inline_history !4

.noexc2.i.i:                                      ; preds = %.from..noexc2.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.q
  br i1 %.not.i.i.i.i.i, label %.thread.sink.split, label %.from..noexc2.i.i

.from..loopexit.i.i:                              ; preds = %.from..noexc2.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

.from..loopexit.split-lp.i.i:                     ; preds = %bb.b
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.d

bb.d:                                             ; preds = %.from..loopexit.split-lp.i.i, %.from..loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.from..loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.from..loopexit.split-lp.i.i ]
  %i.ah = extractvalue { ptr, i32 } %lpad.phi.i.i, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #49
  unreachable

AfterCoroSave:                                    ; preds = %.lr.ph
  store i8 0, ptr %index.addr143, align 8
  %.sroa.041.064.reload = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !275
  %i.ai = tail call noundef zeroext i1 @_ZN3tev4TaskIvE13await_suspendENSt3__116coroutine_handleIvEE(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.041.064.reload, ptr nonnull %0) #44
  br i1 %i.ai, label %CoroEnd, label %bb.e

bb.e:                                             ; preds = %resume.0, %AfterCoroSave
  %.sroa.041.064.reload137 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !275 ; 2 uses
  %.pr = load ptr, ptr %.sroa.041.064.reload137, align 8, !tbaa !254 ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.pr, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void %i.ak(ptr nonnull %.pr)
          to label %.thread.sink.split unwind label %bb.g, !inline_history !5

.thread.sink.split:                               ; preds = %.noexc2.i.i, %bb.f, %bb.c, %.noexc.i.i, %bb.a
  %.sroa.041.064.reload131 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !275 ; 2 uses
  store ptr null, ptr %.sroa.041.064.reload131, align 8, !tbaa !254
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.e
  %.sroa.041.064.reload135 = phi ptr [ %.sroa.041.064.reload131, %.thread.sink.split ], [ %.sroa.041.064.reload137, %bb.e ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload135, i64 8
  invoke void @_ZNSt3__16futureIvE3getEv(ptr noundef nonnull align 8 dereferenceable(8) %i.al)
          to label %bb.j unwind label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %i.am = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.an = extractvalue { ptr, i32 } %i.am, 0      ; 2 uses
  %i.ao = extractvalue { ptr, i32 } %i.am, 1
  %i.ap = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #44
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.h, label %.loopexit52

bb.h:                                             ; preds = %bb.g
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %i.an) #44 ; 0 uses
  tail call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::exception_ptr") align 8 %.reload.addr139) #44
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3__16vectorISt13exception_ptrNS_9allocatorIS1_EEE12emplace_backIJS1_EEERS1_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr138, ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr139)
          to label %bb.i unwind label %bb.k       ; 0 uses

bb.i:                                             ; preds = %bb.h
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #44
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %.from.104

bb.j:                                             ; preds = %bb.i, %.thread
  %.sroa.041.064.reload133 = load ptr, ptr %.sroa.041.064.reload.addr136, align 8, !tbaa !275 ; 2 uses
  %.reload = load ptr, ptr %.reload.addr, align 8, !tbaa !275
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.041.064.reload133, i64 32 ; 2 uses
  %.not51.not = icmp eq ptr %i.at, %.reload
  br i1 %.not51.not, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.h
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  tail call void @_ZNSt13exception_ptrD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.reload.addr139) #44
  invoke void @__cxa_end_catch()
          to label %.loopexit52.from.110 unwind label %bb.ac

.from.104:                                        ; preds = %bb.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit52.from.110

.loopexit52.from.110:                             ; preds = %.from.104, %bb.k
  %.pn = phi { ptr, i32 } [ %i.av, %.from.104 ], [ %i.au, %bb.k ]
  %.011 = extractvalue { ptr, i32 } %.pn, 0
  br label %.loopexit52

._crit_edge:                                      ; preds = %bb.j
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !280
  %.pre70 = load ptr, ptr %.reload.addr138, align 8, !tbaa !281 ; 2 uses
  %i.aw = ptrtoint ptr %.pre to i64
  %i.ax = ptrtoint ptr %.pre70 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 2 uses
  %i.az = icmp eq i64 %i.ay, 8
  br i1 %i.az, label %bb.l, label %bb.n

bb.l:                                             ; preds = %._crit_edge
  tail call void @_ZNSt13exception_ptrC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %.reload.addr140, ptr noundef nonnull align 8 dereferenceable(8) %.pre70) #44
  invoke void @_ZSt17rethrow_exceptionSt13exception_ptr(ptr nofree noundef nonnull align 8 dereferenceable(8) %.reload.addr140) #47
          to label %bb.m unwind label %.loopexit52.from.115

end_hunk_3
