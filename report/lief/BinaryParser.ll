Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/BinaryParser?download=true
inline.NumInlined: 15251
inline.NumDeleted: 5384
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_:bb.a
  br i1 %i.fc, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i

.lr.ph.i37.i.i:                                   ; preds = %bb.w, %.lr.ph.i37.i.i
  %.020.i38.i.i = phi i32 [ %i.fd, %.lr.ph.i37.i.i ], [ 1, %bb.w ]
  %.01819.i39.i.i = phi i32 [ %i.fl, %.lr.ph.i37.i.i ], [ %.130.i.i, %bb.w ] ; 3 uses
  %i.fd = add i32 %.020.i38.i.i, -2               ; 3 uses
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fe
  %i.fg = urem i32 %.01819.i39.i.i, 100
  %i.fh = shl nuw nsw i32 %i.fg, 1
  %i.fi = zext nneg i32 %i.fh to i64
  %i.fj = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fi
  %i.fk = load i16, ptr %i.fj, align 2
  store i16 %i.fk, ptr %i.ff, align 1
  %i.fl = udiv i32 %.01819.i39.i.i, 100           ; 2 uses
  %i.fm = icmp ugt i32 %.01819.i39.i.i, 9999
  br i1 %i.fm, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i, !llvm.loop !11

._crit_edge.i33.i.i:                              ; preds = %.lr.ph.i37.i.i, %bb.w
  %.018.lcssa.i34.i.i = phi i32 [ %.130.i.i, %bb.w ], [ %i.fl, %.lr.ph.i37.i.i ] ; 3 uses
  %.0.lcssa.i35.i.i = phi i32 [ 1, %bb.w ], [ %i.fd, %.lr.ph.i37.i.i ] ; 2 uses
  %i.fn = icmp samesign ugt i32 %.018.lcssa.i34.i.i, 9
  br i1 %i.fn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %._crit_edge.i33.i.i
  %i.fo = add i32 %.0.lcssa.i35.i.i, -2
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fp
  %i.fr = shl nuw nsw i32 %.018.lcssa.i34.i.i, 1
  %i.fs = zext nneg i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fs
  %i.fu = load i16, ptr %i.ft, align 2
  store i16 %i.fu, ptr %i.fq, align 1
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.y:                                             ; preds = %._crit_edge.i33.i.i
  %i.fv = trunc nuw nsw i32 %.018.lcssa.i34.i.i to i8
  %i.fw = or disjoint i8 %i.fv, 48
  %i.fx = add i32 %.0.lcssa.i35.i.i, -1
  %i.fy = zext i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fb, i64 %i.fy
  store i8 %i.fw, ptr %i.fz, align 1, !tbaa !253
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit: ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i.i, %bb.x, %bb.y
  %.027.i.i = phi ptr [ %i.ee, %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i.i ], [ %i.eh, %bb.x ], [ %i.eh, %bb.y ]
  %i.ga = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i, ptr nonnull %0) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 3 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !429 ; 2 uses
  %i.gd = add i64 %i.gc, 1                        ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !427
  %i.gg = icmp ugt i64 %i.gd, %i.gf
  br i1 %i.gg, label %bb.z, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

bb.z:                                             ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !440
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(32) %i.ga, i64 noundef %i.gd) #26, !inline_history !15
  %.pre.i.i72 = load i64, ptr %i.gb, align 8, !tbaa !429 ; 2 uses
  %.pre2.i.i73 = add i64 %.pre.i.i72, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

_ZN3fmt3v1214basic_appenderIcEaSEc.exit74:        ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit, %bb.z
  %.pre-phi.i.i71 = phi i64 [ %i.gd, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre2.i.i73, %bb.z ]
  %i.gj = phi i64 [ %i.gc, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre.i.i72, %bb.z ]
  %i.gk = load ptr, ptr %i.ga, align 8, !tbaa !428
  store i64 %.pre-phi.i.i71, ptr %i.gb, align 8, !tbaa !429
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gj
  store i8 101, ptr %i.gl, align 1, !tbaa !253
  %i.gm = call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.aa, ptr nonnull %i.ga)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74, %bb.c
  %.sroa.057.2 = phi ptr [ %i.af, %bb.c ], [ %i.gm, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74 ], [ %0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.057.3 = phi ptr [ %i.k, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.057.2, %bb.aa ]
  ret ptr %.sroa.057.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN3fmt3v126detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %0) local_unnamed_addr #1 comdat {
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
  %i.q = load i64, ptr %i.p, align 8, !tbaa !118  ; 5 uses
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
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !118 ; 4 uses
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

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %8 = alloca %class.anon.830, align 8            ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %10 = alloca %class.anon.831, align 8           ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.832, align 8           ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !119
  store i8 %3, ptr %i.b, align 1, !tbaa !253
  store i32 %5, ptr %i.c, align 4, !tbaa !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !499  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !119
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !444
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !119
  %i.u = load i32, ptr %4, align 4, !tbaa !442    ; 4 uses
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
  store i32 0, ptr %i.e, align 4, !tbaa !119
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %i.c, ptr %8, align 8, !tbaa !198
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !501
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !477
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !503
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_:bb.a
  %i.dr = add i32 %.0.lcssa.i.i.i, -2
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ds
  %i.du = shl nuw nsw i64 %.018.lcssa.i.i.i, 1
  %i.dv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.du
  %i.dw = load i16, ptr %i.dv, align 2
  store i16 %i.dw, ptr %i.dt, align 1
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.dx = trunc nuw nsw i64 %.018.lcssa.i.i.i to i8
  %i.dy = or disjoint i8 %i.dx, 48
  %i.dz = add i32 %.0.lcssa.i.i.i, -1
  %i.ea = zext i32 %i.dz to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ea
  store i8 %i.dy, ptr %i.eb, align 1, !tbaa !253
  br label %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i

_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i: ; preds = %bb.t, %bb.s
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.u:                                             ; preds = %bb.q
  %i.ed = sext i32 %i.aa to i64
  %i.ee = getelementptr i8, ptr %i.a, i64 %i.ed
  %i.ef = getelementptr i8, ptr %i.ee, i64 1      ; 4 uses
  %i.eg = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.eh = icmp sgt i32 %i.aa, 2
  br i1 %i.eh, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.u
  %i.ei = lshr i32 %i.eg, 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.u
  %.029.lcssa.i.i = phi i64 [ %i.n, %bb.u ], [ %i.ep, %.lr.ph.i.i ] ; 3 uses
  %.028.lcssa.i.i = phi ptr [ %i.ef, %bb.u ], [ %i.ek, %.lr.ph.i.i ] ; 2 uses
  %i.ej = and i32 %i.eg, 1
  %.not32.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not32.i.i, label %bb.w, label %bb.v

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %.046.i.i = phi i32 [ %i.eq, %.lr.ph.i.i ], [ %i.ei, %.lr.ph.preheader.i.i ] ; 2 uses
  %.02845.i.i = phi ptr [ %i.ek, %.lr.ph.i.i ], [ %i.ef, %.lr.ph.preheader.i.i ]
  %.02944.i.i = phi i64 [ %i.ep, %.lr.ph.i.i ], [ %i.n, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.ek = getelementptr inbounds i8, ptr %.02845.i.i, i64 -2 ; 3 uses
  %i.el = urem i64 %.02944.i.i, 100
  %i.em = shl nuw nsw i64 %i.el, 1
  %i.en = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2
  store i16 %i.eo, ptr %i.ek, align 1
  %i.ep = udiv i64 %.02944.i.i, 100               ; 2 uses
  %i.eq = add nsw i32 %.046.i.i, -1
  %i.er = icmp samesign ugt i32 %.046.i.i, 1
  br i1 %i.er, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !29

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.es = urem i64 %.029.lcssa.i.i, 10
  %i.et = trunc nuw nsw i64 %i.es to i8
  %i.eu = or disjoint i8 %i.et, 48
  %i.ev = getelementptr inbounds i8, ptr %.028.lcssa.i.i, i64 -1 ; 2 uses
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !253
  %i.ew = udiv i64 %.029.lcssa.i.i, 10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i
  %.130.i.i = phi i64 [ %i.ew, %bb.v ], [ %.029.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %i.ev, %bb.v ], [ %.028.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %.1.i.i, i64 -1
  store i8 46, ptr %i.ex, align 1, !tbaa !253
  %i.ey = getelementptr inbounds i8, ptr %.1.i.i, i64 -2 ; 3 uses
  %i.ez = icmp ugt i64 %.130.i.i, 99
  br i1 %i.ez, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i

.lr.ph.i37.i.i:                                   ; preds = %bb.w, %.lr.ph.i37.i.i
  %.020.i38.i.i = phi i32 [ %i.fa, %.lr.ph.i37.i.i ], [ 1, %bb.w ]
  %.01819.i39.i.i = phi i64 [ %i.fh, %.lr.ph.i37.i.i ], [ %.130.i.i, %bb.w ] ; 3 uses
  %i.fa = add i32 %.020.i38.i.i, -2               ; 3 uses
  %i.fb = zext i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fb
  %i.fd = urem i64 %.01819.i39.i.i, 100
  %i.fe = shl nuw nsw i64 %i.fd, 1
  %i.ff = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2
  store i16 %i.fg, ptr %i.fc, align 1
  %i.fh = udiv i64 %.01819.i39.i.i, 100           ; 2 uses
  %i.fi = icmp ugt i64 %.01819.i39.i.i, 9999
  br i1 %i.fi, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i, !llvm.loop !12

._crit_edge.i33.i.i:                              ; preds = %.lr.ph.i37.i.i, %bb.w
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
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

bb.y:                                             ; preds = %._crit_edge.i33.i.i
  %i.fq = trunc nuw nsw i64 %.018.lcssa.i34.i.i to i8
  %i.fr = or disjoint i8 %i.fq, 48
  %i.fs = add i32 %.0.lcssa.i35.i.i, -1
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.ft
  store i8 %i.fr, ptr %i.fu, align 1, !tbaa !253
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit: ; preds = %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i, %bb.x, %bb.y
  %.027.i.i = phi ptr [ %i.ec, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i ], [ %i.ef, %bb.x ], [ %i.ef, %bb.y ]
  %i.fv = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i, ptr nonnull %0) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !429 ; 2 uses
  %i.fy = add i64 %i.fx, 1                        ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !427
  %i.gb = icmp ugt i64 %i.fy, %i.ga
  br i1 %i.gb, label %bb.z, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

bb.z:                                             ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !440
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i64 noundef %i.fy) #26, !inline_history !15
  %.pre.i.i72 = load i64, ptr %i.fw, align 8, !tbaa !429 ; 2 uses
  %.pre2.i.i73 = add i64 %.pre.i.i72, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

_ZN3fmt3v1214basic_appenderIcEaSEc.exit74:        ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit, %bb.z
  %.pre-phi.i.i71 = phi i64 [ %i.fy, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre2.i.i73, %bb.z ]
  %i.ge = phi i64 [ %i.fx, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre.i.i72, %bb.z ]
  %i.gf = load ptr, ptr %i.fv, align 8, !tbaa !428
  store i64 %.pre-phi.i.i71, ptr %i.fw, align 8, !tbaa !429
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ge
  store i8 101, ptr %i.gg, align 1, !tbaa !253
  %i.gh = call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.ac, ptr nonnull %i.fv)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74, %bb.c
  %.sroa.057.2 = phi ptr [ %i.ah, %bb.c ], [ %i.gh, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74 ], [ %0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.057.3 = phi ptr [ %i.l, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.057.2, %bb.aa ]
  ret ptr %.sroa.057.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = bitcast double %0 to i64                 ; 2 uses
  %i.b = and i64 %i.a, 4503599627370495           ; 4 uses
  %i.c = lshr i64 %i.a, 52
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = and i32 %i.d, 2047                       ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i32 %i.e, -1075                  ; 5 uses
  %i.g = icmp eq i64 %i.b, 0
  br i1 %i.g, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.h = mul nsw i32 %i.f, 631305
  %i.i = add nsw i32 %i.h, -261663
  %i.j = ashr i32 %i.i, 21                        ; 6 uses
  %i.k = sub nsw i32 0, %i.j                      ; 2 uses
  %i.l = mul nsw i32 %i.j, -1741647
  %i.m = ashr i32 %i.l, 19                        ; 2 uses
  %i.n = add nsw i32 %i.m, %i.f                   ; 2 uses
  %i.o = trunc nsw i32 %i.j to i16
  %.lhs.trunc152 = sub nsw i16 292, %i.o
  %i.p = udiv i16 %.lhs.trunc152, 27              ; 2 uses
  %narrow = mul nuw nsw i16 %i.p, 27
  %i.q = zext nneg i16 %narrow to i32
  %i.r = add nsw i32 %i.q, -292                   ; 3 uses
  %i.s = zext nneg i16 %i.p to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.s ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !118 ; 2 uses
  %i.u = icmp eq i32 %i.r, %i.k
  br i1 %i.u, label %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.037.0.copyload.i = load i64, ptr %i.t, align 16, !tbaa !118
  %i.v = sub nsw i32 %i.k, %i.r                   ; 2 uses
  %i.w = mul nsw i32 %i.r, 1741647
  %i.x = ashr i32 %i.w, 19
  %i.y = add nsw i32 %i.v, %i.x
  %i.z = sub nsw i32 %i.m, %i.y                   ; 2 uses
  %i.aa = sext i32 %i.v to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !118
  %i.ad = zext i64 %.sroa.5.0.copyload.i to i128
  %i.ae = zext i64 %i.ac to i128                  ; 2 uses
  %i.af = mul nuw i128 %i.ae, %i.ad               ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = trunc nuw i128 %i.ag to i64
  %i.ai = trunc i128 %i.af to i64
  %1 = zext i64 %.sroa.037.0.copyload.i to i128
  %2 = mul nuw i128 %i.ae, %1
  %3 = lshr i128 %2, 64
  %4 = trunc nuw i128 %3 to i64
  %i.aj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ai, i64 %4) ; 2 uses
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  %i.al = extractvalue { i64, i1 } %i.aj, 0
  %i.am = zext i1 %i.ak to i64
  %i.an = add nuw i64 %i.am, %i.ah
  %i.ao = sub nsw i32 64, %i.z
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = shl i64 %i.an, %i.ap
  %i.ar = zext nneg i32 %i.z to i64
  %i.as = lshr i64 %i.al, %i.ar
  %i.at = or i64 %i.aq, %i.as
  br label %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit

_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.i = phi i64 [ %i.at, %bb.d ], [ %.sroa.5.0.copyload.i, %bb.c ] ; 5 uses
  %i.au = lshr i64 %.sroa.3.0.i, 54
  %i.av = sub nuw i64 %.sroa.3.0.i, %i.au
  %i.aw = sub nsw i32 11, %i.n
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = lshr i64 %i.av, %i.ax
  %i.az = lshr i64 %.sroa.3.0.i, 53
  %i.ba = add i64 %i.az, %.sroa.3.0.i
  %i.bb = lshr i64 %i.ba, %i.ax                   ; 2 uses
  %i.bc = and i32 %i.f, -2
  %i.bd = icmp ne i32 %i.bc, 2
  %i.be = zext i1 %i.bd to i64
  %spec.select.i = add i64 %i.ay, %i.be           ; 2 uses
  %i.bf = udiv i64 %i.bb, 10                      ; 3 uses
  %i.bg = mul nuw i64 %i.bf, 10
  %.not.i = icmp ult i64 %i.bg, %spec.select.i
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit
  %i.bh = add nsw i32 %i.j, 1
  %i.bi = urem i64 %i.bf, 100000000
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.f, label %.preheader173

bb.f:                                             ; preds = %bb.e
  %i.bk = udiv i64 %i.bb, 1000000000
  %i.bl = trunc i64 %i.bk to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0126 = phi i32 [ %i.bl, %bb.f ], [ %i.bn, %bb.g ] ; 3 uses
  %.012.i.i = phi i32 [ 8, %bb.f ], [ %i.bp, %bb.g ] ; 2 uses
  %i.bm = mul i32 %.0126, -1030792151             ; 2 uses
  %i.bn = tail call i32 @llvm.fshl.i32(i32 %i.bm, i32 %i.bm, i32 30) ; 2 uses
  %i.bo = icmp ugt i32 %i.bn, 42949672
  %i.bp = add nuw nsw i32 %.012.i.i, 2
  br i1 %i.bo, label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i, label %bb.g

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i: ; preds = %bb.g
  %i.bq = mul i32 %.0126, -858993459              ; 2 uses
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 31) ; 2 uses
  %.not.i.i = icmp ult i32 %i.br, 429496730       ; 2 uses
  %spec.select = select i1 %.not.i.i, i32 %i.br, i32 %.0126
  %i.bs = zext i1 %.not.i.i to i32
  %spec.select154 = or disjoint i32 %.012.i.i, %i.bs
  %i.bt = zext i32 %spec.select to i64
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit

.preheader173:                                    ; preds = %bb.e, %.preheader173
  %.sroa.0108.1 = phi i64 [ %i.bv, %.preheader173 ], [ %i.bf, %bb.e ] ; 5 uses
  %.0.i = phi i32 [ %i.bx, %.preheader173 ], [ 0, %bb.e ] ; 2 uses
  %i.bu = mul i64 %.sroa.0108.1, -8116567392432202711
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %.sroa.0108.1, i64 %i.bu, i64 62) ; 2 uses
  %i.bw = icmp ugt i64 %i.bv, 184467440737095516
  %i.bx = add nuw nsw i32 %.0.i, 2
  br i1 %i.bw, label %bb.h, label %.preheader173

bb.h:                                             ; preds = %.preheader173
  %i.by = mul i64 %.sroa.0108.1, -3689348814741910323
  %i.bz = tail call i64 @llvm.fshl.i64(i64 %.sroa.0108.1, i64 %i.by, i64 63) ; 2 uses
  %.not.i53 = icmp ult i64 %i.bz, 1844674407370955162 ; 2 uses
  %spec.select155 = select i1 %.not.i53, i64 %i.bz, i64 %.sroa.0108.1
  %i.ca = zext i1 %.not.i53 to i32
  %spec.select156 = or disjoint i32 %.0.i, %i.ca
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit: ; preds = %bb.h, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i
  %.sroa.0108.3 = phi i64 [ %i.bt, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i ], [ %spec.select155, %bb.h ]
  %.018.i = phi i32 [ %spec.select154, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i ], [ %spec.select156, %bb.h ]
  %i.cb = add nsw i32 %i.bh, %.018.i
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.i:                                             ; preds = %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit
  %i.cc = sub nsw i32 10, %i.n
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = lshr i64 %.sroa.3.0.i, %i.cd
  %i.cf = add i64 %i.ce, 1
  %i.cg = lshr i64 %i.cf, 1                       ; 3 uses
  %or.cond.i = icmp eq i32 %i.f, -77
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ch = and i64 %i.cg, 9223372036854775806
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.k:                                             ; preds = %bb.i
  %i.ci = icmp ult i64 %i.cg, %spec.select.i
  %i.cj = zext i1 %i.ci to i64
  %spec.select157 = add nuw i64 %i.cg, %i.cj
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.l:                                             ; preds = %bb.b
  %i.ck = or disjoint i64 %i.b, 4503599627370496
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.cl = icmp eq i64 %i.b, 0
  br i1 %i.cl, label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.042 = phi i64 [ %i.ck, %bb.l ], [ %i.b, %bb.m ] ; 2 uses
  %.041 = phi i32 [ %i.f, %bb.l ], [ -1074, %bb.m ] ; 2 uses
  %i.cm = trunc i64 %.042 to i32                  ; 2 uses
  %i.cn = mul nsw i32 %.041, 315653
  %i.co = ashr i32 %i.cn, 20                      ; 6 uses
  %i.cp = sub nsw i32 2, %i.co                    ; 4 uses
  %i.cq = trunc nsw i32 %i.co to i16
  %.lhs.trunc = sub nsw i16 294, %i.cq
  %i.cr = udiv i16 %.lhs.trunc, 27                ; 2 uses
  %narrow163 = mul nuw nsw i16 %i.cr, 27
  %i.cs = zext nneg i16 %narrow163 to i32
  %i.ct = add nsw i32 %i.cs, -292                 ; 3 uses
  %i.cu = zext nneg i16 %i.cr to i64
  %i.cv = getelementptr inbounds nuw [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.cu ; 2 uses
  %.sroa.037.0.copyload.i68 = load i64, ptr %i.cv, align 16, !tbaa !118 ; 2 uses
  %.sroa.5.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.5.0.copyload.i70 = load i64, ptr %.sroa.5.0..sroa_idx.i69, align 8, !tbaa !118 ; 2 uses
  %i.cw = icmp eq i32 %i.cp, %i.ct
  br i1 %i.cw, label %._ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75_crit_edge, label %bb.o

._ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75_crit_edge: ; preds = %bb.n
  %.pre = mul nsw i32 %i.cp, 1741647
  %.pre174 = ashr i32 %.pre, 19
  br label %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75

bb.o:                                             ; preds = %bb.n
  %i.cx = sub nsw i32 %i.cp, %i.ct                ; 2 uses
  %i.cy = mul nsw i32 %i.cp, 1741647
  %i.cz = ashr i32 %i.cy, 19                      ; 2 uses
  %i.da = mul nsw i32 %i.ct, 1741647
  %i.db = ashr i32 %i.da, 19
  %i.dc = add nsw i32 %i.cx, %i.db
  %i.dd = sub nsw i32 %i.cz, %i.dc                ; 2 uses
  %i.de = sext i32 %i.cx to i64
  %i.df = getelementptr inbounds [8 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !118
  %i.dh = zext i64 %.sroa.5.0.copyload.i70 to i128
  %i.di = zext i64 %i.dg to i128                  ; 2 uses
  %i.dj = mul nuw i128 %i.di, %i.dh               ; 2 uses
  %i.dk = lshr i128 %i.dj, 64
  %i.dl = trunc nuw i128 %i.dk to i64
  %i.dm = trunc i128 %i.dj to i64
  %i.dn = zext i64 %.sroa.037.0.copyload.i68 to i128
  %i.do = mul nuw i128 %i.di, %i.dn               ; 2 uses
  %i.dp = lshr i128 %i.do, 64
  %i.dq = trunc nuw i128 %i.dp to i64
  %i.dr = trunc i128 %i.do to i64
  %i.ds = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dm, i64 %i.dq) ; 2 uses
  %i.dt = extractvalue { i64, i1 } %i.ds, 1
  %i.du = extractvalue { i64, i1 } %i.ds, 0       ; 2 uses
  %i.dv = zext i1 %i.dt to i64
  %i.dw = add nuw i64 %i.dv, %i.dl
  %i.dx = sub nsw i32 64, %i.dd
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = shl i64 %i.dw, %i.dy
  %i.ea = shl i64 %i.du, %i.dy
  %i.eb = zext i32 %i.dd to i64                   ; 2 uses
  %i.ec = lshr i64 %i.du, %i.eb
  %i.ed = or i64 %i.dz, %i.ec
  %i.ee = lshr i64 %i.dr, %i.eb
  %i.ef = or i64 %i.ea, %i.ee
  %i.eg = add i64 %i.ef, 1
  br label %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75

_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75: ; preds = %._ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75_crit_edge, %bb.o
  %.pre-phi175 = phi i32 [ %.pre174, %._ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75_crit_edge ], [ %i.cz, %bb.o ]
  %.sroa.041.0.i71 = phi i64 [ %.sroa.037.0.copyload.i68, %._ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75_crit_edge ], [ %i.eg, %bb.o ]
  %.sroa.3.0.i72 = phi i64 [ %.sroa.5.0.copyload.i70, %._ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75_crit_edge ], [ %i.ed, %bb.o ] ; 4 uses
  %i.eh = add nsw i32 %.pre-phi175, %.041         ; 4 uses
  %i.ei = sub nsw i32 63, %i.eh
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = lshr i64 %.sroa.3.0.i72, %i.ej
  %i.el = trunc i64 %i.ek to i32                  ; 3 uses
  %i.em = shl nuw nsw i64 %.042, 1                ; 4 uses
  %i.en = or disjoint i64 %i.em, 1
  %i.eo = zext nneg i32 %i.eh to i64              ; 3 uses
  %i.ep = shl i64 %i.en, %i.eo
  %i.eq = zext i64 %i.ep to i128                  ; 2 uses
  %i.er = zext i64 %.sroa.3.0.i72 to i128
  %i.es = mul nuw i128 %i.er, %i.eq               ; 2 uses
  %i.et = lshr i128 %i.es, 64
  %i.eu = trunc nuw i128 %i.et to i64
  %i.ev = trunc i128 %i.es to i64
  %5 = zext i64 %.sroa.041.0.i71 to i128          ; 3 uses
  %6 = mul nuw i128 %5, %i.eq
  %7 = lshr i128 %6, 64
  %8 = trunc nuw i128 %7 to i64
  %i.ew = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ev, i64 %8) ; 2 uses
  %i.ex = extractvalue { i64, i1 } %i.ew, 1
  %i.ey = extractvalue { i64, i1 } %i.ew, 0
  %i.ez = zext i1 %i.ex to i64
  %i.fa = add nuw i64 %i.ez, %i.eu                ; 2 uses
  %i.fb = icmp ne i64 %i.ey, 0
  %9 = zext i64 %i.fa to i128
  %10 = mul nuw nsw i128 %9, 2361183241434822607
  %sum.shift.i = lshr i128 %10, 71
  %11 = trunc nuw nsw i128 %sum.shift.i to i64    ; 7 uses
  %.neg = mul i64 %11, 4294966296
  %i.fc = add i64 %.neg, %i.fa
  %i.fd = trunc i64 %i.fc to i32                  ; 5 uses
  %i.fe = icmp ugt i32 %i.el, %i.fd
  br i1 %i.fe, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75
  %i.ff = icmp eq i32 %i.fd, 0
  br i1 %i.ff, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.fg = and i32 %i.cm, 1
  %.not49164 = icmp eq i32 %i.fg, 0
  %.not49 = select i1 %i.fb, i1 true, i1 %.not49164
  br i1 %.not49, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fh = add nsw i64 %11, -1
  br label %bb.y

bb.s:                                             ; preds = %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75
  %i.fi = icmp ult i32 %i.el, %i.fd
  br i1 %i.fi, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fj = add nsw i64 %i.em, -1                   ; 2 uses
  %i.fk = mul i64 %.sroa.3.0.i72, %i.fj
  %i.fl = zext nneg i64 %i.fj to i128
  %i.fm = mul nuw nsw i128 %5, %i.fl              ; 2 uses
  %i.fn = lshr i128 %i.fm, 64
  %i.fo = trunc nuw nsw i128 %i.fn to i64
  %i.fp = trunc i128 %i.fm to i64
  %i.fq = add i64 %i.fk, %i.fo                    ; 2 uses
  %i.fr = sub nsw i32 64, %i.eh
  %i.fs = zext i32 %i.fr to i64                   ; 2 uses
  %i.ft = lshr i64 %i.fq, %i.fs
  %i.fu = trunc i64 %i.ft to i32
  %.sroa.06.0.insert.ext.i = and i32 %i.fu, 1
  %i.fv = shl i64 %i.fq, %i.eo
  %i.fw = lshr i64 %i.fp, %i.fs
  %i.fx = or i64 %i.fv, %i.fw
  %i.fy = icmp eq i64 %i.fx, 0
  %i.fz = and i32 %i.cm, 1
  %i.ga = xor i32 %i.fz, 1
  %i.gb = select i1 %i.fy, i32 %i.ga, i32 0
  %i.gc = or i32 %i.gb, %.sroa.06.0.insert.ext.i
  %.not48 = icmp eq i32 %i.gc, 0
  br i1 %.not48, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p, %bb.q
  %i.gd = add nsw i32 %i.co, 1
  %i.ge = urem i64 %11, 100000000
  %12 = udiv i64 %11, 100000000
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %bb.v, label %.preheader

bb.v:                                             ; preds = %bb.u
  %i.gg = trunc nuw nsw i64 %12 to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.0125 = phi i32 [ %i.gg, %bb.v ], [ %i.gi, %bb.w ] ; 3 uses
  %.012.i.i59 = phi i32 [ 8, %bb.v ], [ %i.gk, %bb.w ] ; 2 uses
  %i.gh = mul i32 %.0125, -1030792151             ; 2 uses
  %i.gi = tail call i32 @llvm.fshl.i32(i32 %i.gh, i32 %i.gh, i32 30) ; 2 uses
  %i.gj = icmp ugt i32 %i.gi, 42949672
  %i.gk = add nuw nsw i32 %.012.i.i59, 2
  br i1 %i.gj, label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i63, label %bb.w

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i63: ; preds = %bb.w
  %i.gl = mul i32 %.0125, -858993459              ; 2 uses
  %i.gm = tail call i32 @llvm.fshl.i32(i32 %i.gl, i32 %i.gl, i32 31) ; 2 uses
  %.not.i.i62 = icmp ult i32 %i.gm, 429496730     ; 2 uses
  %spec.select158 = select i1 %.not.i.i62, i32 %i.gm, i32 %.0125
  %i.gn = zext i1 %.not.i.i62 to i32
  %spec.select159 = or disjoint i32 %.012.i.i59, %i.gn
  %i.go = zext nneg i32 %spec.select158 to i64
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65

.preheader:                                       ; preds = %bb.u, %.preheader
  %.sroa.094.4 = phi i64 [ %i.gq, %.preheader ], [ %11, %bb.u ] ; 5 uses
  %.0.i54 = phi i32 [ %i.gs, %.preheader ], [ 0, %bb.u ] ; 2 uses
  %i.gp = mul i64 %.sroa.094.4, -8116567392432202711
  %i.gq = tail call i64 @llvm.fshl.i64(i64 %.sroa.094.4, i64 %i.gp, i64 62) ; 2 uses
  %i.gr = icmp ugt i64 %i.gq, 184467440737095516
  %i.gs = add nuw nsw i32 %.0.i54, 2
  br i1 %i.gr, label %bb.x, label %.preheader

bb.x:                                             ; preds = %.preheader
  %i.gt = mul i64 %.sroa.094.4, -3689348814741910323
  %i.gu = tail call i64 @llvm.fshl.i64(i64 %.sroa.094.4, i64 %i.gt, i64 63) ; 2 uses
  %.not.i57 = icmp ult i64 %i.gu, 1844674407370955162 ; 2 uses
  %spec.select160 = select i1 %.not.i57, i64 %i.gu, i64 %.sroa.094.4
  %i.gv = zext i1 %.not.i57 to i32
  %spec.select161 = or disjoint i32 %.0.i54, %i.gv
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65: ; preds = %bb.x, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i63
  %.sroa.094.6 = phi i64 [ %i.go, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i63 ], [ %spec.select160, %bb.x ]
  %.018.i58 = phi i32 [ %spec.select159, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i63 ], [ %spec.select161, %bb.x ]
  %i.gw = add nsw i32 %i.gd, %.018.i58
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.y:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.094.0 = phi i64 [ %i.fh, %bb.r ], [ %11, %bb.s ], [ %11, %bb.t ]
  %.0 = phi i32 [ 1000, %bb.r ], [ %i.fd, %bb.s ], [ %i.fd, %bb.t ]
  %i.gx = mul nsw i64 %.sroa.094.0, 10
  %i.gy = lshr i32 %i.el, 1
  %i.gz = sub i32 %.0, %i.gy                      ; 2 uses
  %i.ha = mul i32 %i.gz, 656
  %i.hb = add i32 %i.ha, 32800                    ; 3 uses
  %i.hc = and i32 %i.hb, 65520
  %i.hd = icmp samesign ult i32 %i.hc, 656
  %i.he = lshr i32 %i.hb, 16
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = add nsw i64 %i.gx, %i.hf                ; 3 uses
  br i1 %i.hd, label %bb.z, label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.z:                                             ; preds = %bb.y
  %i.hh = mul i64 %.sroa.3.0.i72, %i.em
  %i.hi = zext nneg i64 %i.em to i128
  %i.hj = mul nuw nsw i128 %5, %i.hi              ; 2 uses
  %i.hk = lshr i128 %i.hj, 64
  %i.hl = trunc nuw nsw i128 %i.hk to i64
  %i.hm = add i64 %i.hh, %i.hl                    ; 2 uses
  %i.hn = sub nsw i32 64, %i.eh
  %i.ho = zext i32 %i.hn to i64                   ; 2 uses
  %i.hp = lshr i64 %i.hm, %i.ho
  %i.hq = trunc i64 %i.hp to i32
  %i.hr = xor i32 %i.gz, %i.hq
  %i.hs = and i32 %i.hr, 1
  %.not50 = icmp eq i32 %i.hs, 0
  br i1 %.not50, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ht = add nsw i64 %i.hg, -1
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.ab:                                            ; preds = %bb.z
  %i.hu = shl i64 %i.hm, %i.eo
  %i.hv = trunc i128 %i.hj to i64
  %i.hw = lshr i64 %i.hv, %i.ho
  %i.hx = or i64 %i.hu, %i.hw
  %i.hy = icmp eq i64 %i.hx, 0
  %i.hz = and i32 %i.hb, 65536
  %.not52165 = icmp ne i32 %i.hz, 0
  %.not52.not = and i1 %i.hy, %.not52165
  %i.ia = sext i1 %.not52.not to i64
  %spec.select162 = add nsw i64 %i.hg, %i.ia
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit: ; preds = %bb.j, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit, %bb.k, %bb.ab, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65, %bb.aa, %bb.y, %bb.m
  %.sroa.21.1 = phi i32 [ %i.co, %bb.ab ], [ 0, %bb.m ], [ %i.gw, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65 ], [ %i.co, %bb.aa ], [ %i.co, %bb.y ], [ %i.j, %bb.j ], [ %i.cb, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit ], [ %i.j, %bb.k ]
  %.sroa.094.3 = phi i64 [ %spec.select162, %bb.ab ], [ 0, %bb.m ], [ %.sroa.094.6, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65 ], [ %i.ht, %bb.aa ], [ %i.hg, %bb.y ], [ %i.ch, %bb.j ], [ %.sroa.0108.3, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit ], [ %spec.select157, %bb.k ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.094.3, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.21.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %8 = alloca %class.anon.834, align 8            ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %10 = alloca %class.anon.835, align 8           ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.836, align 8           ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !119
  store i8 %3, ptr %i.b, align 1, !tbaa !253
  store i32 %5, ptr %i.c, align 4, !tbaa !497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #26
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !508  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !119
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #26
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !444
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !119
  %i.u = load i32, ptr %4, align 4, !tbaa !442    ; 4 uses
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
  store i32 0, ptr %i.e, align 4, !tbaa !119
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr %i.c, ptr %8, align 8, !tbaa !198
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !510
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !477
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !503
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %4, ptr %i.ae, align 8, !tbaa !468
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.b, ptr %i.af, align 8, !tbaa !260
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.e, ptr %i.ag, align 8, !tbaa !477
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !466
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %.0) ; 4 uses
  %i.al = lshr i32 %i.u, 3
  %i.am = and i32 %i.al, 7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @.str.52, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !253
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nsw i64 %i.ak, %i.as
  %i.au = lshr i32 %i.u, 15
  %i.av = and i32 %i.au, 7
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.ak, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !429
  %i.ba = add i64 %i.az, %.0
  %i.bb = add i64 %i.ba, %i.ax                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !427
  %i.be = icmp ugt i64 %i.bb, %i.bd
  br i1 %i.be, label %bb.g, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !440
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb) #26, !inline_history !1199
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
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #26
  br label %bb.w

bb.k:                                             ; preds = %bb.a
  %i.bk = icmp sgt i32 %i.k, 0
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #26
  %i.bl = load i32, ptr %4, align 4, !tbaa !442
  %i.bm = and i32 %i.bl, 8192
  %.not57 = icmp eq i32 %i.bm, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = sub nsw i32 %i.bo, %2
  %i.bq = select i1 %.not57, i32 0, i32 %i.bp     ; 2 uses
  store i32 %i.bq, ptr %i.f, align 4, !tbaa !119
  %i.br = tail call noundef i32 @llvm.smax.i32(i32 %i.bq, i32 0)
  %i.bs = add nuw nsw i32 %i.br, 1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = add nsw i64 %i.bt, %i.n                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  store ptr %i.c, ptr %10, align 8, !tbaa !198
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.bv, align 8, !tbaa !510
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.a, ptr %i.bw, align 8, !tbaa !477
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE:bb.a
  %.pre-phi.i52 = phi i64 [ %i.eg, %bb.n ], [ %.pre2.i54, %bb.o ]
  %i.ek = phi i64 [ %i.ef, %bb.n ], [ %.pre.i53, %bb.o ]
  %i.el = load ptr, ptr %3, align 8, !tbaa !428
  store i64 %.pre-phi.i52, ptr %i.aj, align 8, !tbaa !429
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store i8 48, ptr %i.em, align 1, !tbaa !253
  %i.en = add i32 %.293, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.en, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !1386

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55, %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.eo = select i1 %.not88, i8 112, i8 80
  %i.ep = load i64, ptr %i.aj, align 8, !tbaa !429 ; 2 uses
  %i.eq = add i64 %i.ep, 1                        ; 3 uses
  %i.er = load i64, ptr %i.am, align 8, !tbaa !427
  %i.es = icmp ugt i64 %i.eq, %i.er
  br i1 %i.es, label %bb.p, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

bb.p:                                             ; preds = %._crit_edge
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !440
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.eq) #26, !inline_history !30
  %.pre.i57 = load i64, ptr %i.aj, align 8, !tbaa !429 ; 2 uses
  %.pre2.i58 = add i64 %.pre.i57, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59: ; preds = %._crit_edge, %bb.p
  %.pre-phi.i56 = phi i64 [ %i.eq, %._crit_edge ], [ %.pre2.i58, %bb.p ]
  %i.ev = phi i64 [ %i.ep, %._crit_edge ], [ %.pre.i57, %bb.p ]
  %i.ew = load ptr, ptr %3, align 8, !tbaa !428
  store i64 %.pre-phi.i56, ptr %i.aj, align 8, !tbaa !429
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 %i.eo, ptr %i.ex, align 1, !tbaa !253
  %i.ey = icmp slt i32 %i.j, 0
  %i.ez = load i64, ptr %i.aj, align 8, !tbaa !429 ; 3 uses
  %i.fa = add i64 %i.ez, 1                        ; 5 uses
  %i.fb = load i64, ptr %i.am, align 8, !tbaa !427
  %i.fc = icmp ugt i64 %i.fa, %i.fb               ; 2 uses
  br i1 %i.ey, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fc, label %bb.r, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

bb.r:                                             ; preds = %bb.q
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !440
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fa) #26, !inline_history !30
  %.pre.i61 = load i64, ptr %i.aj, align 8, !tbaa !429 ; 2 uses
  %.pre2.i62 = add i64 %.pre.i61, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63: ; preds = %bb.q, %bb.r
  %.pre-phi.i60 = phi i64 [ %i.fa, %bb.q ], [ %.pre2.i62, %bb.r ]
  %i.ff = phi i64 [ %i.ez, %bb.q ], [ %.pre.i61, %bb.r ]
  %i.fg = load ptr, ptr %3, align 8, !tbaa !428
  store i64 %.pre-phi.i60, ptr %i.aj, align 8, !tbaa !429
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ff
  store i8 45, ptr %i.fh, align 1, !tbaa !253
  %i.fi = sub nsw i32 0, %i.j
  br label %bb.u

bb.s:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fc, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

bb.t:                                             ; preds = %bb.s
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !440
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fa) #26, !inline_history !30
  %.pre.i65 = load i64, ptr %i.aj, align 8, !tbaa !429 ; 2 uses
  %.pre2.i66 = add i64 %.pre.i65, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67: ; preds = %bb.s, %bb.t
  %.pre-phi.i64 = phi i64 [ %i.fa, %bb.s ], [ %.pre2.i66, %bb.t ]
  %i.fl = phi i64 [ %i.ez, %bb.s ], [ %.pre.i65, %bb.t ]
  %i.fm = load ptr, ptr %3, align 8, !tbaa !428
  store i64 %.pre-phi.i64, ptr %i.aj, align 8, !tbaa !429
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  store i8 43, ptr %i.fn, align 1, !tbaa !253
  br label %bb.u

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63
  %.0 = phi i32 [ %i.fi, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63 ], [ %i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67 ] ; 3 uses
  %i.fo = or i32 %.0, 1
  %i.fp = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fo, i1 true)
  %i.fq = xor i32 %i.fp, 31
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !118
  %i.fu = zext nneg i32 %.0 to i64
  %i.fv = add i64 %i.ft, %i.fu
  %i.fw = lshr i64 %i.fv, 32
  %i.fx = trunc nuw i64 %i.fw to i32
  %i.fy = call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %3, i32 noundef %.0, i32 noundef %i.fx) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 comdat {
bb.a:
  %5 = alloca %"class.fmt::v12::format_error", align 8 ; 3 uses
  %i.a = alloca i32, align 4                      ; 10 uses
  %6 = alloca %"struct.fmt::v12::detail::basic_fp", align 16 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !442
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
  %i.h = load i64, ptr %i.g, align 8, !tbaa !429  ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !427
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !440
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.i) #26, !inline_history !30
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !429 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.i, %bb.c ], [ %.pre2.i, %bb.d ]
  %i.o = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %bb.d ]
  %i.p = load ptr, ptr %4, align 8, !tbaa !428
  store i64 %.pre-phi.i, ptr %i.g, align 8, !tbaa !429
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 48, ptr %i.q, align 1, !tbaa !253
  br label %bb.bc

bb.e:                                             ; preds = %bb.b
  %i.r = zext nneg i32 %1 to i64                  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !427  ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %bb.f, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !440
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.r) #26, !inline_history !32
  %.pre.i137 = load i64, ptr %i.s, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit:  ; preds = %bb.e, %bb.f
  %i.x = phi i64 [ %i.t, %bb.e ], [ %.pre.i137, %bb.f ]
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !429
  %i.aa = load ptr, ptr %4, align 8, !tbaa !428
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 48, i64 %i.r, i1 false)
  %i.ab = sub nsw i32 0, %1
  br label %bb.bc

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
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
  %i.aq = ashr i32 %i.ap, 20                      ; 4 uses
  %.neg125 = add nsw i32 %i.aq, -2                ; 2 uses
  %i.ar = sub nsw i32 2, %i.aq                    ; 3 uses
  %i.as = mul nsw i32 %i.ar, 1741647
  %i.at = ashr i32 %i.as, 19                      ; 2 uses
  %i.au = add nsw i32 %i.at, %.0108
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = shl i64 %.0109, %i.av
  %i.ax = trunc nsw i32 %i.aq to i16
  %.lhs.trunc = sub nsw i16 294, %i.ax
  %i.ay = udiv i16 %.lhs.trunc, 27                ; 2 uses
  %narrow = mul nuw nsw i16 %i.ay, 27
  %i.az = zext nneg i16 %narrow to i32
  %i.ba = add nsw i32 %i.az, -292                 ; 3 uses
  %i.bb = zext nneg i16 %i.ay to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.bb ; 2 uses
  %.sroa.037.0.copyload.i.i = load i64, ptr %i.bc, align 16, !tbaa !118 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !118 ; 2 uses
  %i.bd = icmp eq i32 %i.ar, %i.ba
  br i1 %i.bd, label %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = sub nsw i32 %i.ar, %i.ba                ; 2 uses
  %i.bf = mul nsw i32 %i.ba, 1741647
  %i.bg = ashr i32 %i.bf, 19
  %i.bh = add nsw i32 %i.be, %i.bg
  %i.bi = sub nsw i32 %i.at, %i.bh                ; 2 uses
  %i.bj = sext i32 %i.be to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !118
  %i.bm = zext i64 %.sroa.5.0.copyload.i.i to i128
  %i.bn = zext i64 %i.bl to i128                  ; 2 uses
  %i.bo = mul nuw i128 %i.bn, %i.bm               ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = trunc nuw i128 %i.bp to i64
  %i.br = trunc i128 %i.bo to i64
  %i.bs = zext i64 %.sroa.037.0.copyload.i.i to i128
  %i.bt = mul nuw i128 %i.bn, %i.bs               ; 2 uses
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = trunc nuw i128 %i.bu to i64
  %i.bw = trunc i128 %i.bt to i64
  %i.bx = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.br, i64 %i.bv) ; 2 uses
  %i.by = extractvalue { i64, i1 } %i.bx, 1
  %i.bz = extractvalue { i64, i1 } %i.bx, 0       ; 2 uses
  %i.ca = zext i1 %i.by to i64
  %i.cb = add nuw i64 %i.ca, %i.bq
  %i.cc = sub nsw i32 64, %i.bi
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = shl i64 %i.cb, %i.cd
  %i.cf = shl i64 %i.bz, %i.cd
  %i.cg = zext i32 %i.bi to i64                   ; 2 uses
  %i.ch = lshr i64 %i.bz, %i.cg
  %i.ci = or i64 %i.ce, %i.ch
  %i.cj = lshr i64 %i.bw, %i.cg
  %i.ck = or i64 %i.cf, %i.cj
  %i.cl = add i64 %i.ck, 1
  br label %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit

_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit: ; preds = %bb.j, %bb.k
  %.sroa.041.0.i.i = phi i64 [ %i.cl, %bb.k ], [ %.sroa.037.0.copyload.i.i, %bb.j ]
  %.sroa.3.0.i.i = phi i64 [ %i.ci, %bb.k ], [ %.sroa.5.0.copyload.i.i, %bb.j ]
  %i.cm = zext i64 %i.aw to i128                  ; 2 uses
  %i.cn = zext i64 %.sroa.3.0.i.i to i128
  %i.co = mul nuw i128 %i.cn, %i.cm               ; 2 uses
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64
  %i.cr = trunc i128 %i.co to i64
  %7 = zext i64 %.sroa.041.0.i.i to i128
  %8 = mul nuw i128 %7, %i.cm
  %9 = lshr i128 %8, 64
  %10 = trunc nuw i128 %9 to i64
  %i.cs = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cr, i64 %10) ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 1
  %i.cu = extractvalue { i64, i1 } %i.cs, 0       ; 2 uses
  %i.cv = zext i1 %i.ct to i64
  %i.cw = add nuw i64 %i.cv, %i.cq                ; 3 uses
  %i.cx = icmp ne i64 %i.cu, 0                    ; 4 uses
  %i.cy = icmp ugt i64 %i.cw, 999999999999999999  ; 2 uses
  %i.cz = mul nuw i64 %i.cw, 10
  %.0107 = select i1 %i.cy, i64 %i.cw, i64 %i.cz  ; 3 uses
  %.0106 = select i1 %i.cy, i32 19, i32 18        ; 4 uses
  br i1 %i.d, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit
  %i.da = add nsw i32 %.0106, %.neg125            ; 3 uses
  %i.db = icmp sgt i32 %i.da, 0
  %i.dc = sub nuw nsw i32 2147483647, %i.da
  %i.dd = icmp sgt i32 %1, %i.dc
  %or.cond.i = select i1 %i.db, i1 %i.dd, i1 false
  br i1 %or.cond.i, label %bb.m, label %_ZN3fmt3v126detail16adjust_precisionERii.exit

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.64)
  %i.de = call noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.40, i32 noundef 2659, ptr noundef %i.de) #32
  unreachable

_ZN3fmt3v126detail16adjust_precisionERii.exit:    ; preds = %bb.l
  %i.df = add nsw i32 %i.da, %1
  br label %bb.n

bb.n:                                             ; preds = %_ZN3fmt3v126detail16adjust_precisionERii.exit, %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit
  %.0187 = phi i32 [ %i.df, %_ZN3fmt3v126detail16adjust_precisionERii.exit ], [ %1, %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit ] ; 20 uses
  %.not131 = icmp sgt i32 %.0106, %.0187
  br i1 %.not131, label %bb.o, label %.thread219

bb.o:                                             ; preds = %bb.n
  %i.dg = icmp slt i32 %.0187, 1
  %i.dh = add nsw i32 %.0106, %.neg125            ; 2 uses
  br i1 %i.dg, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  store i32 %i.dh, ptr %i.a, align 4, !tbaa !119
  %i.di = icmp slt i32 %.0187, 0
  br i1 %i.di, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.dj, align 8, !tbaa !429
  br label %.thread

bb.r:                                             ; preds = %bb.p
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !427
  %i.dm = icmp eq i64 %i.dl, 0
  br i1 %i.dm, label %bb.s, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

bb.s:                                             ; preds = %bb.r
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !440
  tail call void %i.do(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1) #26, !inline_history !32
  %.pre.i140 = load i64, ptr %i.dk, align 8, !tbaa !427
  %i.dp = icmp ne i64 %.pre.i140, 0
  %i.dq = zext i1 %i.dp to i64
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141: ; preds = %bb.r, %bb.s
  %i.dr = phi i64 [ 1, %bb.r ], [ %i.dq, %bb.s ]
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !429
  %i.dt = zext i1 %i.cx to i64
  %i.du = or i64 %.0107, %i.dt
  %i.dv = icmp ugt i64 %i.du, 5000000000000000000
  %i.dw = load ptr, ptr %4, align 8, !tbaa !428   ; 2 uses
  br i1 %i.dv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 49, ptr %i.dw, align 1, !tbaa !253
  br label %.thread

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 48, ptr %i.dw, align 1, !tbaa !253
  br label %.thread

bb.v:                                             ; preds = %bb.o
  %i.dx = sub nsw i32 %i.dh, %.0187               ; 2 uses
  store i32 %i.dx, ptr %i.a, align 4, !tbaa !119
  %11 = zext i64 %.0107 to i128
  %12 = mul nuw nsw i128 %11, 7922816251426433760
  %sum.shift = lshr i128 %12, 96
  %13 = trunc nuw nsw i128 %sum.shift to i64      ; 3 uses
  %.neg126 = mul i64 %13, -10000000000
  %i.dy = add i64 %.neg126, %.0107                ; 5 uses
  %i.dz = tail call i32 @llvm.umin.i32(i32 %.0187, i32 9) ; 3 uses
  %i.ea = load ptr, ptr %4, align 8, !tbaa !428   ; 6 uses
  %i.eb = and i32 %i.dz, 1
  %.not.i = icmp eq i32 %i.eb, 0
  br i1 %.not.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ec = mul nuw nsw i64 %13, 720575941
  %i.ed = lshr i64 %i.ec, 24
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %i.ef = lshr i64 %i.ee, 32                      ; 2 uses
  %i.eg = trunc nuw nsw i64 %i.ef to i8
  %i.eh = add nuw nsw i8 %i.eg, 48
  store i8 %i.eh, ptr %i.ea, align 1, !tbaa !253
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ei = mul nuw nsw i64 %13, 450359963
  %i.ej = lshr i64 %i.ei, 20
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %i.el = lshr i64 %i.ek, 32                      ; 2 uses
  %i.em = shl nuw nsw i64 %i.el, 1
  %i.en = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.em
  %i.eo = load i16, ptr %i.en, align 2
  store i16 %i.eo, ptr %i.ea, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0208 = phi i64 [ %i.ek, %bb.x ], [ %i.ee, %bb.w ] ; 2 uses
  %.0204.in = phi i64 [ %i.el, %bb.x ], [ %i.ef, %bb.w ]
  %.0.i = phi i32 [ 2, %bb.x ], [ 1, %bb.w ]      ; 2 uses
  %i.ep = icmp samesign ugt i32 %.0187, %.0.i
  br i1 %i.ep, label %.lr.ph.i, label %.thread269

.lr.ph.i:                                         ; preds = %bb.y
  %i.eq = zext nneg i32 %.0.i to i64              ; 4 uses
  %i.er = zext nneg i32 %i.dz to i64              ; 3 uses
  %i.es = and i64 %.0208, 4294967295
  %i.et = mul nuw nsw i64 %i.es, 100              ; 3 uses
  %i.eu = lshr i64 %i.et, 32                      ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.eq
  %i.ew = shl nuw nsw i64 %i.eu, 1
  %i.ex = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ew
  %i.ey = load i16, ptr %i.ex, align 2
  store i16 %i.ey, ptr %i.ev, align 1
  %indvars.iv.next.i = add nuw nsw i64 %i.eq, 2   ; 2 uses
  %i.ez = icmp samesign ult i64 %indvars.iv.next.i, %i.er
  br i1 %i.ez, label %bb.z, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.z:                                             ; preds = %.lr.ph.i
  %i.fa = and i64 %i.et, 4294967292
  %i.fb = mul nuw nsw i64 %i.fa, 100              ; 3 uses
  %i.fc = lshr i64 %i.fb, 32                      ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv.next.i
  %i.fe = shl nuw nsw i64 %i.fc, 1
  %i.ff = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fe
  %i.fg = load i16, ptr %i.ff, align 2
  store i16 %i.fg, ptr %i.fd, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %i.eq, 4 ; 2 uses
  %i.fh = icmp samesign ult i64 %indvars.iv.next.i.1, %i.er
  br i1 %i.fh, label %bb.aa, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.aa:                                            ; preds = %bb.z
  %i.fi = and i64 %i.fb, 4294967280
  %i.fj = mul nuw nsw i64 %i.fi, 100              ; 3 uses
  %i.fk = lshr i64 %i.fj, 32                      ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv.next.i.1
  %i.fm = shl nuw nsw i64 %i.fk, 1
  %i.fn = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fm
  %i.fo = load i16, ptr %i.fn, align 2
  store i16 %i.fo, ptr %i.fl, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.eq, 6 ; 2 uses
  %i.fp = icmp samesign ult i64 %indvars.iv.next.i.2, %i.er
  br i1 %i.fp, label %bb.ab, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.fq = and i64 %i.fj, 4294967232
  %i.fr = mul nuw nsw i64 %i.fq, 100              ; 2 uses
  %i.fs = lshr i64 %i.fr, 32                      ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ea, i64 %indvars.iv.next.i.2
  %i.fu = shl nuw nsw i64 %i.fs, 1
  %i.fv = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 2
  store i16 %i.fw, ptr %i.ft, align 1
  br label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit: ; preds = %bb.ab, %bb.aa, %bb.z, %.lr.ph.i
  %.lcssa290 = phi i64 [ %i.et, %.lr.ph.i ], [ %i.fb, %bb.z ], [ %i.fj, %bb.aa ], [ %i.fr, %bb.ab ]
  %.lcssa289 = phi i64 [ %i.eu, %.lr.ph.i ], [ %i.fc, %bb.z ], [ %i.fk, %bb.aa ], [ %i.fs, %bb.ab ] ; 2 uses
  %i.fx = icmp samesign ult i32 %.0187, 10
  br i1 %i.fx, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %.not129 = icmp eq i32 %.0187, 9
  br i1 %.not129, label %bb.ad, label %.thread269

.thread269:                                       ; preds = %bb.y, %bb.ac
  %.2210266275 = phi i64 [ %.lcssa290, %bb.ac ], [ %.0208, %bb.y ]
  %.1205268274.in = phi i64 [ %.lcssa289, %bb.ac ], [ %.0204.in, %bb.y ]
  %i.fy = trunc i64 %.2210266275 to i32           ; 2 uses
  %i.fz = sub nuw nsw i32 8, %i.dz
  %i.ga = zext nneg i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr @.str.84, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !1391
  %.not130 = icmp ugt i32 %i.gc, %i.fy
  br i1 %.not130, label %bb.am, label %.critedge134

bb.ad:                                            ; preds = %bb.ac
  %i.gd = icmp ugt i64 %i.dy, 5000000000
  br i1 %i.gd, label %.critedge134.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ge = icmp eq i64 %i.dy, 5000000000
  %i.gf = trunc i64 %.lcssa289 to i1
  %i.gg = or i1 %i.cx, %i.gf
  %or.cond223 = select i1 %i.ge, i1 %i.gg, i1 false
  br i1 %or.cond223, label %.critedge134.thread, label %.critedge136

bb.af:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %14 = zext i64 %i.dy to i128
  %15 = mul nuw nsw i128 %14, 1844674407370955162
  %16 = lshr i128 %15, 64                         ; 2 uses
  %i.gh = trunc i128 %16 to i32
  %i.gi = trunc i64 %i.dy to i32
  %.neg127 = mul i32 %i.gh, -10
  %i.gj = add i32 %.neg127, %i.gi                 ; 3 uses
  %i.gk = add nsw i32 %.0187, -9                  ; 3 uses
  %i.gl = load ptr, ptr %4, align 8, !tbaa !428
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 9 ; 3 uses
  %i.gn = and i32 %i.gk, 1
  %.not.i142 = icmp eq i32 %i.gn, 0
  %17 = trunc nuw nsw i128 %16 to i64
  %i.go = and i64 %17, 4294967295                 ; 2 uses
  br i1 %.not.i142, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gp = mul nuw nsw i64 %i.go, 720575941
  %i.gq = lshr i64 %i.gp, 24
  %i.gr = add nuw nsw i64 %i.gq, 1                ; 2 uses
  %i.gs = lshr i64 %i.gr, 32                      ; 2 uses
  %i.gt = trunc nuw nsw i64 %i.gs to i8
  %i.gu = add nuw nsw i8 %i.gt, 48
  store i8 %i.gu, ptr %i.gm, align 1, !tbaa !253
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.gv = mul nuw nsw i64 %i.go, 450359963
  %i.gw = lshr i64 %i.gv, 20
  %i.gx = add nuw nsw i64 %i.gw, 1                ; 2 uses
  %i.gy = lshr i64 %i.gx, 32                      ; 2 uses
  %i.gz = shl nuw nsw i64 %i.gy, 1
  %i.ha = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.gz
  %i.hb = load i16, ptr %i.ha, align 2
  store i16 %i.hb, ptr %i.gm, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.3211 = phi i64 [ %i.gx, %bb.ah ], [ %i.gr, %bb.ag ] ; 2 uses
  %.2206.in = phi i64 [ %i.gy, %bb.ah ], [ %i.gs, %bb.ag ]
  %.0.i143 = phi i32 [ 2, %bb.ah ], [ 1, %bb.ag ] ; 2 uses
  %i.hc = icmp samesign ult i32 %.0.i143, %i.gk
  br i1 %i.hc, label %.lr.ph.i144, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

.lr.ph.i144:                                      ; preds = %bb.ai
  %i.hd = zext nneg i32 %.0.i143 to i64
  %i.he = zext nneg i32 %i.gk to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i144
  %.4 = phi i64 [ %.3211, %.lr.ph.i144 ], [ %i.hg, %bb.aj ]
  %indvars.iv.i145 = phi i64 [ %i.hd, %.lr.ph.i144 ], [ %indvars.iv.next.i146, %bb.aj ] ; 2 uses
  %i.hf = and i64 %.4, 4294967295
  %i.hg = mul nuw nsw i64 %i.hf, 100              ; 3 uses
  %i.hh = lshr i64 %i.hg, 32                      ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv.i145
  %i.hj = shl nuw nsw i64 %i.hh, 1
  %i.hk = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.hj
  %i.hl = load i16, ptr %i.hk, align 2
  store i16 %i.hl, ptr %i.hi, align 1
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 2 ; 2 uses
  %i.hm = icmp samesign ult i64 %indvars.iv.next.i146, %i.he
  br i1 %i.hm, label %bb.aj, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147, !llvm.loop !1387

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147: ; preds = %bb.aj
  %i.hn = icmp samesign ult i32 %.0187, 18
  br i1 %i.hn, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, label %bb.ak

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread: ; preds = %bb.ai, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %.3207215.in = phi i64 [ %i.hh, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.2206.in, %bb.ai ]
  %.5214 = phi i64 [ %i.hg, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.3211, %bb.ai ]
  %i.ho = trunc i64 %.5214 to i32                 ; 2 uses
  %i.hp = sub nuw nsw i32 17, %.0187
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr @.str.84, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !1391
  %.not128 = icmp ugt i32 %i.hs, %i.ho
  br i1 %.not128, label %.split217, label %.critedge134.thread

.split217:                                        ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread
  %.3207215 = trunc nuw nsw i64 %.3207215.in to i32
  %i.ht = lshr i32 %i.ho, 31
  %i.hu = icmp ne i32 %i.gj, 0
  %i.hv = or i1 %i.hu, %i.cx
  %i.hw = zext i1 %i.hv to i32
  %i.hx = or i32 %i.hw, %.3207215
  %i.hy = and i32 %i.ht, %i.hx
  %i.hz = trunc nuw i32 %i.hy to i1
  br i1 %i.hz, label %.critedge134.thread, label %.critedge136

bb.ak:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %i.ia = icmp ugt i32 %i.gj, 5
  br i1 %i.ia, label %.critedge134.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ib = icmp eq i32 %i.gj, 5
  %i.ic = trunc i64 %i.hh to i1
  %i.id = or i1 %i.cx, %i.ic
  %or.cond225 = select i1 %i.ib, i1 %i.id, i1 false
  br i1 %or.cond225, label %.critedge134.thread, label %.critedge136

bb.am:                                            ; preds = %.thread269
  %.1205268274 = trunc nsw i64 %.1205268274.in to i32
  %i.ie = lshr i32 %i.fy, 31
  %i.if = or i64 %i.dy, %i.cu
  %i.ig = icmp ne i64 %i.if, 0
  %i.ih = zext i1 %i.ig to i32
  %i.ii = or i32 %.1205268274, %i.ih
  %i.ij = and i32 %i.ii, %i.ie
  %i.ik = trunc nuw i32 %i.ij to i1
  br i1 %i.ik, label %.critedge134, label %.critedge136

.critedge134.thread:                              ; preds = %bb.al, %bb.ae, %.split217, %bb.ad, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, %bb.ak
  %i.il = load ptr, ptr %4, align 8, !tbaa !428
  %i.im = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.in = getelementptr i8, ptr %i.il, i64 %i.im
  %i.io = getelementptr i8, ptr %i.in, i64 -1     ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !253
  %i.iq = add i8 %i.ip, 1
  store i8 %i.iq, ptr %i.io, align 1, !tbaa !253
  br label %.lr.ph.preheader

.critedge134:                                     ; preds = %.thread269, %bb.am
  %i.ir = load ptr, ptr %4, align 8, !tbaa !428
  %i.is = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.it = getelementptr i8, ptr %i.ir, i64 %i.is
  %i.iu = getelementptr i8, ptr %i.it, i64 -1     ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !253
  %i.iw = add i8 %i.iv, 1
  store i8 %i.iw, ptr %i.iu, align 1, !tbaa !253
  %.not242 = icmp eq i32 %.0187, 1
  br i1 %.not242, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge134.thread, %.critedge134
  %i.ix = phi i64 [ %i.im, %.critedge134.thread ], [ %i.is, %.critedge134 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.an
  %indvars.iv = phi i64 [ %i.ix, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.an ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.iy = load ptr, ptr %4, align 8, !tbaa !428
  %i.iz = and i64 %indvars.iv.next, 4294967295
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.iz ; 2 uses
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !253
  %i.jc = icmp sgt i8 %i.jb, 57
  br i1 %i.jc, label %bb.an, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.an, %.critedge134
  %i.jd = phi i64 [ 1, %.critedge134 ], [ %i.ix, %bb.an ], [ %i.ix, %.lr.ph ]
  %i.je = load ptr, ptr %4, align 8, !tbaa !428   ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !253
  %i.jg = icmp sgt i8 %i.jf, 57
  br i1 %i.jg, label %bb.ao, label %.critedge136

bb.an:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.ja, align 1, !tbaa !253
  %i.jh = load ptr, ptr %4, align 8, !tbaa !428
  %i.ji = getelementptr i8, ptr %i.jh, i64 %indvars.iv
  %i.jj = getelementptr i8, ptr %i.ji, i64 -2     ; 2 uses
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !253
  %i.jl = add i8 %i.jk, 1
  store i8 %i.jl, ptr %i.jj, align 1, !tbaa !253
  %i.jm = trunc nuw i64 %indvars.iv to i32
  %i.jn = icmp sgt i32 %i.jm, 2
  br i1 %i.jn, label %.lr.ph, label %.critedge, !llvm.loop !1388

bb.ao:                                            ; preds = %.critedge
  store i8 49, ptr %i.je, align 1, !tbaa !253
  br i1 %i.d, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.jo = add nuw nsw i32 %.0187, 1
  %i.jp = load ptr, ptr %4, align 8, !tbaa !428
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.jd
  store i8 48, ptr %i.jq, align 1, !tbaa !253
  br label %.critedge136

bb.aq:                                            ; preds = %bb.ao
  %i.jr = add nsw i32 %i.dx, 1
  store i32 %i.jr, ptr %i.a, align 4, !tbaa !119
  br label %.critedge136

.critedge136:                                     ; preds = %.split217, %bb.al, %bb.ae, %.critedge, %bb.aq, %bb.ap, %bb.am
  %.1188 = phi i32 [ %i.jo, %bb.ap ], [ %.0187, %bb.aq ], [ %.0187, %.critedge ], [ %.0187, %bb.am ], [ 9, %bb.ae ], [ 18, %bb.al ], [ %.0187, %.split217 ]
  %i.js = zext nneg i32 %.1188 to i64             ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !427 ; 2 uses
  %i.jv = icmp ult i64 %i.ju, %i.js
  br i1 %i.jv, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.critedge136
  %i.jw = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !440
  tail call void %i.jx(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.js) #26, !inline_history !32
  %.pre.i148 = load i64, ptr %i.jt, align 8, !tbaa !427
  br label %bb.as

.thread219:                                       ; preds = %bb.n
  %i.jy = add nsw i32 %i.aq, -3
  %i.jz = add nsw i32 %i.jy, %.0106
  store i32 %i.jz, ptr %i.a, align 4, !tbaa !119
  br i1 %3, label %bb.at, label %bb.au

bb.as:                                            ; preds = %bb.ar, %.critedge136
  %i.ka = phi i64 [ %i.ju, %.critedge136 ], [ %.pre.i148, %bb.ar ]
  %i.kb = tail call noundef i64 @llvm.umin.i64(i64 %i.js, i64 %i.ka)
  %i.kc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.kb, ptr %i.kc, align 8, !tbaa !429
  br label %.thread

bb.at:                                            ; preds = %.thread219
  %i.kd = fptrunc double %0 to float
  %i.ke = bitcast float %i.kd to i32              ; 2 uses
  %i.kf = and i32 %i.ke, 8388607                  ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN6spdlog6logger4log_IJRKjS3_RKmEEEvNS_10source_locENS_5level10level_enumEN3fmt3v1217basic_string_viewIcEEDpOT_:bb.a
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %11, align 16, !tbaa !253 ; 2 uses
  %i.v = trunc i128 %.sroa.0.0.copyload.sink66.i to i32 ; 4 uses
  %i.w = or i32 %i.v, 1
  %i.x = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.w, i1 true)
  %i.y = xor i32 %i.x, 31
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !118
  %i.ac = trunc i128 %.sroa.0.0.copyload.sink66.i to i64
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = add i64 %i.ad, %i.ab                    ; 2 uses
  %i.af = lshr i64 %i.ae, 32
  %i.ag = trunc nuw i64 %i.af to i32              ; 2 uses
  %i.ah = ashr i64 %i.ae, 32                      ; 3 uses
  %i.ai = icmp ugt i64 %i.ah, 250
  br i1 %i.ai, label %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i: ; preds = %bb.d
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 375) ; 2 uses
  %i.aj = call noalias ptr @malloc(i64 noundef %spec.select.i) #31 ; 3 uses
  %.not.i.i30 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i30, label %bb.e, label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i

bb.e:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %8, align 8, !tbaa !117
  %i.ak = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.40, i32 noundef 752, ptr noundef %i.ak) #32
  unreachable

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i: ; preds = %_ZN3fmt3v126detail6bufferIcE11try_reserveEm.exit.i.i.i
  store ptr %i.aj, ptr %10, align 8, !tbaa !428
  store i64 %spec.select.i, ptr %i.h, align 8, !tbaa !427
  br label %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread

_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread: ; preds = %bb.d, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i
  %i.al = phi ptr [ %i.aj, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i ], [ %i.k, %bb.d ] ; 3 uses
  store i64 %i.ah, ptr %i.j, align 8, !tbaa !429
  %i.am = icmp ugt i32 %i.v, 99
  br i1 %i.am, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i14

.lr.ph.i.i.i:                                     ; preds = %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread, %.lr.ph.i.i.i
  %.020.i.i.i = phi i32 [ %i.an, %.lr.ph.i.i.i ], [ %i.ag, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ]
  %.01819.i.i.i = phi i32 [ %i.av, %.lr.ph.i.i.i ], [ %i.v, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ] ; 3 uses
  %i.an = add i32 %.020.i.i.i, -2                 ; 3 uses
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ao
  %i.aq = urem i32 %.01819.i.i.i, 100
  %i.ar = shl nuw nsw i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2
  store i16 %i.au, ptr %i.ap, align 1
  %i.av = udiv i32 %.01819.i.i.i, 100             ; 2 uses
  %i.aw = icmp ugt i32 %.01819.i.i.i, 9999
  br i1 %i.aw, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i14, !llvm.loop !11

._crit_edge.i.i.i14:                              ; preds = %.lr.ph.i.i.i, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread
  %.018.lcssa.i.i.i = phi i32 [ %i.v, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ], [ %i.av, %.lr.ph.i.i.i ] ; 3 uses
  %.0.lcssa.i.i.i = phi i32 [ %i.ag, %_ZN3fmt3v126detail10to_pointerIcEEPT_NS0_14basic_appenderIS3_EEm.exit.i.i.thread ], [ %i.an, %.lr.ph.i.i.i ] ; 2 uses
  %i.ax = icmp samesign ugt i32 %.018.lcssa.i.i.i, 9
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i14
  %i.ay = add i32 %.0.lcssa.i.i.i, -2
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.az
  %i.bb = shl nuw nsw i32 %.018.lcssa.i.i.i, 1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2
  store i16 %i.be, ptr %i.ba, align 1
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i14
  %i.bf = trunc nuw nsw i32 %.018.lcssa.i.i.i to i8
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = add i32 %.0.lcssa.i.i.i, -1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.bi
  store i8 %i.bg, ptr %i.bj, align 1, !tbaa !253
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

bb.h:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  store ptr %3, ptr %9, align 8, !tbaa !260
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %4, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !118
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !434
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %10, ptr %i.bl, align 8, !tbaa !431
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 1058, ptr %i.bm, align 8, !tbaa !577
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %9, i64 40
  store ptr %11, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !253
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 48
  store ptr null, ptr %i.bn, align 8, !tbaa !198
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %3, i64 %4, ptr noundef nonnull align 8 dereferenceable(56) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %bb.g, %bb.f, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #26
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !252
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !343
  %i.bs = load ptr, ptr %10, align 8, !tbaa !428
  %i.bt = load i64, ptr %i.j, align 8, !tbaa !429
  %i.bu = call i64 @_ZNSt6chrono3_V212system_clock3nowEv() #26
  store ptr %i.bp, ptr %12, align 8, !tbaa !260
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.br, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !118
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 16
  store i32 %2, ptr %i.bv, align 8, !tbaa !583
  %i.bw = getelementptr inbounds nuw i8, ptr %12, i64 24
  store i64 %i.bu, ptr %i.bw, align 8, !tbaa !118
  %i.bx = load i8, ptr @_ZGVZN6spdlog7details2os9thread_idEvE3tid, align 8
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.i, label %._crit_edge.i.i.i, !prof !584

._crit_edge.i.i.i:                                ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %.pre.i.i.i = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN6spdlog7details2os9thread_idEvE3tid)
  %.pre.i.i = load i64, ptr %.pre.i.i.i, align 8, !tbaa !118
  br label %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit

bb.i:                                             ; preds = %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %i.bz = call noundef i64 (i64, ...) @syscall(i64 noundef 186) #26 ; 2 uses
  %i.ca = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZZN6spdlog7details2os9thread_idEvE3tid)
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !118
  %i.cb = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN6spdlog7details2os9thread_idEvE3tid) ; 0 uses
  store i8 1, ptr @_ZGVZN6spdlog7details2os9thread_idEvE3tid, align 8
  br label %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit

_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit: ; preds = %._crit_edge.i.i.i, %bb.i
  %i.cc = phi i64 [ %.pre.i.i, %._crit_edge.i.i.i ], [ %i.bz, %bb.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 32
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !585
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %12, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, i8 0, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.cg = getelementptr inbounds nuw i8, ptr %12, i64 80
  store ptr %i.bs, ptr %i.cg, align 8, !tbaa !260
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 88
  store i64 %i.bt, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !118
  br i1 %i.c, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit
  %i.ch = load ptr, ptr %0, align 8, !tbaa !117
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  call void %i.cj(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(96) %12) #26, !inline_history !46
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN6spdlog7details7log_msgC2ENS_10source_locEN3fmt3v1217basic_string_viewIcEENS_5level10level_enumES6_.exit
  br i1 %i.g, label %bb.l, label %_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit

bb.l:                                             ; preds = %bb.k
  call void @_ZN6spdlog7details10backtracer9push_backERKNS0_7log_msgE(ptr noundef nonnull align 8 dereferenceable(104) %i.d, ptr noundef nonnull align 8 dereferenceable(96) %12)
  br label %_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit

_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #26
  %i.ck = load ptr, ptr %10, align 8, !tbaa !428  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ck, %i.k
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit
  call void @free(ptr noundef %i.ck) #26
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit: ; preds = %_ZN6spdlog6logger7log_it_ERKNS_7details7log_msgEbb.exit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEED2Ev.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #17

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #21

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nofree nounwind }
attributes #23 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { nounwind }
attributes #27 = { builtin nounwind allocsize(0) }
attributes #28 = { noreturn nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { nounwind allocsize(0) }
attributes #32 = { noreturn }
attributes #33 = { cold nounwind }

!llvm.module.flags = !{!101, !102}
!llvm.ident = !{!103}
!llvm.errno.tbaa = !{!108}

!0 = distinct !{!0, !194}
!1 = distinct !{null, null}
!2 = distinct !{null, null, null, null}
!3 = distinct !{null, null, null, null, null}
!4 = distinct !{null}
!5 = distinct !{null, null}
!6 = distinct !{null, null}
!7 = distinct !{!7, !194}
!8 = distinct !{!8, !194}
!9 = distinct !{null, null, null, null, null, null, null, null}
!10 = distinct !{null, null}
!11 = distinct !{!11, !194}
!12 = distinct !{!12, !194}
!13 = distinct !{!13, !194}
!14 = distinct !{null, null}
!15 = distinct !{null, null, null}
!16 = distinct !{null, null}
!17 = distinct !{!17, !194}
!18 = distinct !{!18, !194}
!19 = distinct !{!19, !194}
!20 = distinct !{!20, !194}
!21 = distinct !{null, null}
!22 = distinct !{null, null}
!23 = distinct !{!23, !194}
!24 = distinct !{!24, !194}
!25 = distinct !{!25, !194}
!26 = distinct !{!26, !194}
!27 = distinct !{!27, !194}
!28 = distinct !{null, null, null, null}
!29 = distinct !{!29, !194}
!30 = distinct !{null, null}
!31 = distinct !{null}
!32 = distinct !{null, null}
!33 = distinct !{null, null, null}
!34 = distinct !{null, null, null, null, null}
!35 = distinct !{!35, !194}
!36 = distinct !{null, null, null, null}
!37 = distinct !{!37, !194}
!38 = distinct !{!38, !194}
!39 = distinct !{null, null, null}
!40 = distinct !{null, null, null, null}
!41 = distinct !{null, null, null}
!42 = distinct !{!42, !194}
!43 = distinct !{!43, !194}
!44 = distinct !{null, null, null, null}
!45 = distinct !{null, null, null, null, null}
!46 = distinct !{null}
!47 = distinct !{null, null}
!48 = distinct !{null, null}
!49 = distinct !{null, null}
!50 = distinct !{null, null}
!51 = distinct !{null, null}
!52 = distinct !{null, null}
!53 = distinct !{null, null}
!54 = distinct !{null, null}
!55 = distinct !{null, null}
!56 = distinct !{null, null}
!57 = distinct !{null, null}
!58 = distinct !{null, null}
!59 = distinct !{null, null}
!60 = distinct !{null, null}
!61 = distinct !{null, null}
!62 = distinct !{null, null}
!63 = distinct !{null, null}
!64 = distinct !{null, null}
!65 = distinct !{null, null}
!66 = distinct !{null, null}
!67 = distinct !{null, null}
!68 = distinct !{null, null}
!69 = distinct !{null, null, null, null, null}
!70 = distinct !{null, null}
!71 = distinct !{null, null}
!72 = distinct !{null, null}
!73 = distinct !{!73, !194}
!74 = distinct !{null, null}
!75 = distinct !{null, null}
!76 = distinct !{null, null}
!77 = distinct !{null}
!78 = distinct !{!78, !194}
!79 = distinct !{!79, !194}
!80 = distinct !{!80, !194}
!81 = distinct !{null, null}
!82 = distinct !{!82, !194}
!83 = distinct !{null, null}
!84 = distinct !{null, null}
!85 = distinct !{null, null}
!86 = distinct !{null, null}
!87 = distinct !{null, null}
!88 = distinct !{null, null}
!89 = distinct !{null, null}
!90 = distinct !{null, null}
!91 = distinct !{!91, !194}
!92 = distinct !{null, null}
!93 = distinct !{null, null}
!94 = distinct !{null, null}
!95 = distinct !{null, null}
!96 = distinct !{null, null}
!97 = distinct !{null, null}
!98 = distinct !{null, null}
!99 = distinct !{null, null}
!100 = distinct !{!100, !194}
!101 = !{i32 8, !"PIC Level", i32 2}
!102 = !{i32 7, !"uwtable", i32 2}
!103 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!104 = !{!"Simple C++ TBAA"}
!105 = !{!"omnipotent char", !104, i64 0}
!106 = !{!"int", !105, i64 0}
!107 = !{!"__libc_errno", !106, i64 0}
!108 = !{!107, !106, i64 0}
!109 = !{!"short", !105, i64 0}
!110 = !{!"long", !105, i64 0}
end_hunk_3
