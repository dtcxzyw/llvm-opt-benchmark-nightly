Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/imagebufalgo_demosaic?download=true
inline.NumInlined: 17707
inline.NumDeleted: 3921
loop-unroll.NumCompletelyUnrolled: 167
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 218
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
  br i1 %i.fm, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i, !llvm.loop !3

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
  store i8 %i.fw, ptr %i.fz, align 1, !tbaa !78
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit: ; preds = %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i.i, %bb.x, %bb.y
  %.027.i.i = phi ptr [ %i.ee, %_ZN3fmt3v126detail17do_format_decimalIcjEEPT_S4_T0_i.exit.i.i ], [ %i.eh, %bb.x ], [ %i.eh, %bb.y ]
  %i.ga = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i, ptr nonnull %0) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 8 ; 3 uses
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !216 ; 2 uses
  %i.gd = add i64 %i.gc, 1                        ; 3 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !215
  %i.gg = icmp ugt i64 %i.gd, %i.gf
  br i1 %i.gg, label %bb.z, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

bb.z:                                             ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ga, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !208
  call void %i.gi(ptr noundef nonnull align 8 dereferenceable(32) %i.ga, i64 noundef %i.gd), !inline_history !7
  %.pre.i.i72 = load i64, ptr %i.gb, align 8, !tbaa !216 ; 2 uses
  %.pre2.i.i73 = add i64 %.pre.i.i72, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

_ZN3fmt3v1214basic_appenderIcEaSEc.exit74:        ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit, %bb.z
  %.pre-phi.i.i71 = phi i64 [ %i.gd, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre2.i.i73, %bb.z ]
  %i.gj = phi i64 [ %i.gc, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEjcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre.i.i72, %bb.z ]
  %i.gk = load ptr, ptr %i.ga, align 8, !tbaa !214
  store i64 %.pre-phi.i.i71, ptr %i.gb, align 8, !tbaa !216
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gj
  store i8 101, ptr %i.gl, align 1, !tbaa !78
  %i.gm = call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.aa, ptr nonnull %i.ga)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74, %bb.c
  %.sroa.057.2 = phi ptr [ %i.af, %bb.c ], [ %i.gm, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74 ], [ %0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.057.3 = phi ptr [ %i.k, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.057.2, %bb.aa ]
  ret ptr %.sroa.057.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i64 @_ZN3fmt3v126detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
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
  %i.q = load i64, ptr %i.p, align 8, !tbaa !200  ; 5 uses
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
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !200 ; 4 uses
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
  %1 = tail call noundef i64 @llvm.umulh.i64(i64 %i.bs, i64 %i.bg) ; 2 uses
  %i.bt = lshr i64 %1, 32                         ; 2 uses
  %i.bu = and i64 %1, 4294967295
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
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %8 = alloca %class.anon.46, align 8             ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %10 = alloca %class.anon.47, align 8            ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.48, align 8            ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !67
  store i8 %3, ptr %i.b, align 1, !tbaa !78
  store i32 %5, ptr %i.c, align 4, !tbaa !288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !290  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !67
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !232
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !67
  %i.u = load i32, ptr %4, align 4, !tbaa !230    ; 4 uses
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
  store i32 0, ptr %i.e, align 4, !tbaa !67
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %i.c, ptr %8, align 8, !tbaa !115
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !292
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !268
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !294
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
  store i8 %i.dy, ptr %i.eb, align 1, !tbaa !78
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
  br i1 %i.er, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !23

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.es = urem i64 %.029.lcssa.i.i, 10
  %i.et = trunc nuw nsw i64 %i.es to i8
  %i.eu = or disjoint i8 %i.et, 48
  %i.ev = getelementptr inbounds i8, ptr %.028.lcssa.i.i, i64 -1 ; 2 uses
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !78
  %i.ew = udiv i64 %.029.lcssa.i.i, 10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i
  %.130.i.i = phi i64 [ %i.ew, %bb.v ], [ %.029.lcssa.i.i, %._crit_edge.i.i ] ; 3 uses
  %.1.i.i = phi ptr [ %i.ev, %bb.v ], [ %.028.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.ex = getelementptr inbounds i8, ptr %.1.i.i, i64 -1
  store i8 46, ptr %i.ex, align 1, !tbaa !78
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
  br i1 %i.fi, label %.lr.ph.i37.i.i, label %._crit_edge.i33.i.i, !llvm.loop !4

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
  store i8 %i.fr, ptr %i.fu, align 1, !tbaa !78
  br label %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit

_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit: ; preds = %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i, %bb.x, %bb.y
  %.027.i.i = phi ptr [ %i.ec, %_ZN3fmt3v126detail17do_format_decimalIcmEEPT_S4_T0_i.exit.i.i ], [ %i.ef, %bb.x ], [ %i.ef, %bb.y ]
  %i.fv = call ptr @_ZN3fmt3v126detail13copy_noinlineIcPcNS0_14basic_appenderIcEEEET1_T0_S7_S6_(ptr noundef nonnull %i.a, ptr noundef %.027.i.i, ptr nonnull %0) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8 ; 3 uses
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !216 ; 2 uses
  %i.fy = add i64 %i.fx, 1                        ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !215
  %i.gb = icmp ugt i64 %i.fy, %i.ga
  br i1 %i.gb, label %bb.z, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

bb.z:                                             ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !208
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(32) %i.fv, i64 noundef %i.fy), !inline_history !7
  %.pre.i.i72 = load i64, ptr %i.fw, align 8, !tbaa !216 ; 2 uses
  %.pre2.i.i73 = add i64 %.pre.i.i72, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74

_ZN3fmt3v1214basic_appenderIcEaSEc.exit74:        ; preds = %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit, %bb.z
  %.pre-phi.i.i71 = phi i64 [ %i.fy, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre2.i.i73, %bb.z ]
  %i.ge = phi i64 [ %i.fx, %_ZN3fmt3v126detail17write_significandINS0_14basic_appenderIcEEmcTnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_iiT1_.exit ], [ %.pre.i.i72, %bb.z ]
  %i.gf = load ptr, ptr %i.fv, align 8, !tbaa !214
  store i64 %.pre-phi.i.i71, ptr %i.fw, align 8, !tbaa !216
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %i.ge
  store i8 101, ptr %i.gg, align 1, !tbaa !78
  %i.gh = call ptr @_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_(i32 noundef %i.ac, ptr nonnull %i.fv)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74, %bb.c
  %.sroa.057.2 = phi ptr [ %i.ah, %bb.c ], [ %i.gh, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit74 ], [ %0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.057.3 = phi ptr [ %i.l, %_ZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %.sroa.057.2, %bb.aa ]
  ret ptr %.sroa.057.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i32 } @_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %0) local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
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
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !200 ; 2 uses
  %i.u = icmp eq i32 %i.r, %i.k
  br i1 %i.u, label %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.037.0.copyload.i = load i64, ptr %i.t, align 16, !tbaa !200
  %i.v = sub nsw i32 %i.k, %i.r                   ; 2 uses
  %i.w = mul nsw i32 %i.r, 1741647
  %i.x = ashr i32 %i.w, 19
  %i.y = add nsw i32 %i.v, %i.x
  %i.z = sub nsw i32 %i.m, %i.y                   ; 2 uses
  %i.aa = sext i32 %i.v to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !200 ; 2 uses
  %i.ad = zext i64 %.sroa.5.0.copyload.i to i128
  %i.ae = zext i64 %i.ac to i128
  %i.af = mul nuw i128 %i.ae, %i.ad               ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = trunc nuw i128 %i.ag to i64
  %i.ai = trunc i128 %i.af to i64
  %1 = tail call i64 @llvm.umulh.i64(i64 %i.ac, i64 %.sroa.037.0.copyload.i)
  %i.aj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ai, i64 %1) ; 2 uses
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
  %.sroa.037.0.copyload.i68 = load i64, ptr %i.cv, align 16, !tbaa !200 ; 2 uses
  %.sroa.5.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  %.sroa.5.0.copyload.i70 = load i64, ptr %.sroa.5.0..sroa_idx.i69, align 8, !tbaa !200 ; 2 uses
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
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !200
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
  %.sroa.041.0.i71 = phi i64 [ %.sroa.037.0.copyload.i68, %._ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75_crit_edge ], [ %i.eg, %bb.o ] ; 3 uses
  %.sroa.3.0.i72 = phi i64 [ %.sroa.5.0.copyload.i70, %._ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75_crit_edge ], [ %i.ed, %bb.o ] ; 4 uses
  %i.eh = add nsw i32 %.pre-phi175, %.041         ; 4 uses
  %i.ei = sub nsw i32 63, %i.eh
  %i.ej = zext nneg i32 %i.ei to i64
  %i.ek = lshr i64 %.sroa.3.0.i72, %i.ej
  %i.el = trunc i64 %i.ek to i32                  ; 3 uses
  %i.em = shl nuw nsw i64 %.042, 1                ; 4 uses
  %i.en = or disjoint i64 %i.em, 1
  %i.eo = zext nneg i32 %i.eh to i64              ; 3 uses
  %i.ep = shl i64 %i.en, %i.eo                    ; 2 uses
  %i.eq = zext i64 %i.ep to i128
  %i.er = zext i64 %.sroa.3.0.i72 to i128
  %i.es = mul nuw i128 %i.er, %i.eq               ; 2 uses
  %i.et = lshr i128 %i.es, 64
  %i.eu = trunc nuw i128 %i.et to i64
  %i.ev = trunc i128 %i.es to i64
  %2 = tail call noundef i64 @llvm.umulh.i64(i64 %i.ep, i64 %.sroa.041.0.i71)
  %i.ew = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ev, i64 %2) ; 2 uses
  %i.ex = extractvalue { i64, i1 } %i.ew, 1
  %i.ey = extractvalue { i64, i1 } %i.ew, 0
  %i.ez = zext i1 %i.ex to i64
  %i.fa = add nuw i64 %i.ez, %i.eu                ; 2 uses
  %i.fb = icmp ne i64 %i.ey, 0
  %3 = tail call noundef i64 @llvm.umulh.i64(i64 %i.fa, i64 2361183241434822607) ; 2 uses
  %4 = lshr i64 %3, 7                             ; 6 uses
  %.neg = mul i64 %4, 4294966296
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
  %i.fh = add nsw i64 %4, -1
  br label %bb.y

bb.s:                                             ; preds = %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75
  %i.fi = icmp ult i32 %i.el, %i.fd
  br i1 %i.fi, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fj = add nsw i64 %i.em, -1                   ; 2 uses
  %i.fk = mul i64 %.sroa.3.0.i72, %i.fj
  %5 = zext nneg i64 %i.fj to i128
  %i.fl = zext i64 %.sroa.041.0.i71 to i128
  %i.fm = mul nuw nsw i128 %i.fl, %5              ; 2 uses
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
  %i.ge = urem i64 %4, 100000000
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %bb.v, label %.preheader

bb.v:                                             ; preds = %bb.u
  %6 = udiv i64 %3, 12800000000
  %i.gg = trunc nuw nsw i64 %6 to i32
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
  %.sroa.094.4 = phi i64 [ %i.gq, %.preheader ], [ %4, %bb.u ] ; 5 uses
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
  %.sroa.094.0 = phi i64 [ %i.fh, %bb.r ], [ %4, %bb.s ], [ %4, %bb.t ]
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
  %7 = zext i64 %.sroa.041.0.i71 to i128
  %i.hj = mul nuw nsw i128 %7, %i.hi              ; 2 uses
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

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %8 = alloca %class.anon.50, align 8             ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %10 = alloca %class.anon.51, align 8            ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.52, align 8            ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !67
  store i8 %3, ptr %i.b, align 1, !tbaa !78
  store i32 %5, ptr %i.c, align 4, !tbaa !288
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !300  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !67
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !232
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !67
  %i.u = load i32, ptr %4, align 4, !tbaa !230    ; 4 uses
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
  store i32 0, ptr %i.e, align 4, !tbaa !67
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #29
  store ptr %i.c, ptr %8, align 8, !tbaa !115
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !302
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !268
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !294
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %4, ptr %i.ae, align 8, !tbaa !259
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.b, ptr %i.af, align 8, !tbaa !82
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.e, ptr %i.ag, align 8, !tbaa !268
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !257
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %.0) ; 4 uses
  %i.al = lshr i32 %i.u, 3
  %i.am = and i32 %i.al, 7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @.str.47, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !78
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nsw i64 %i.ak, %i.as
  %i.au = lshr i32 %i.u, 15
  %i.av = and i32 %i.au, 7
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = mul nuw nsw i64 %i.ak, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !216
  %i.ba = add i64 %i.az, %.0
  %i.bb = add i64 %i.ba, %i.ax                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !215
  %i.be = icmp ugt i64 %i.bb, %i.bd
  br i1 %i.be, label %bb.g, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !208
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bb), !inline_history !987
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
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  br label %bb.w

bb.k:                                             ; preds = %bb.a
  %i.bk = icmp sgt i32 %i.k, 0
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  %i.bl = load i32, ptr %4, align 4, !tbaa !230
  %i.bm = and i32 %i.bl, 8192
  %.not57 = icmp eq i32 %i.bm, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = sub nsw i32 %i.bo, %2
  %i.bq = select i1 %.not57, i32 0, i32 %i.bp     ; 2 uses
  store i32 %i.bq, ptr %i.f, align 4, !tbaa !67
  %i.br = tail call noundef i32 @llvm.smax.i32(i32 %i.bq, i32 0)
  %i.bs = add nuw nsw i32 %i.br, 1
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = add nsw i64 %i.bt, %i.n                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #29
  store ptr %i.c, ptr %10, align 8, !tbaa !115
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %1, ptr %i.bv, align 8, !tbaa !302
  %i.bw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.a, ptr %i.bw, align 8, !tbaa !268
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE:bb.a
_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55: ; preds = %bb.n, %bb.o
  %.pre-phi.i52 = phi i64 [ %i.eg, %bb.n ], [ %.pre2.i54, %bb.o ]
  %i.ek = phi i64 [ %i.ef, %bb.n ], [ %.pre.i53, %bb.o ]
  %i.el = load ptr, ptr %3, align 8, !tbaa !214
  store i64 %.pre-phi.i52, ptr %i.aj, align 8, !tbaa !216
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store i8 48, ptr %i.em, align 1, !tbaa !78
  %i.en = add i32 %.293, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.en, %.sroa.6.8.extract.trunc
  br i1 %exitcond.not, label %._crit_edge, label %bb.n, !llvm.loop !1181

._crit_edge:                                      ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit55, %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.eo = select i1 %.not88, i8 112, i8 80
  %i.ep = load i64, ptr %i.aj, align 8, !tbaa !216 ; 2 uses
  %i.eq = add i64 %i.ep, 1                        ; 3 uses
  %i.er = load i64, ptr %i.am, align 8, !tbaa !215
  %i.es = icmp ugt i64 %i.eq, %i.er
  br i1 %i.es, label %bb.p, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

bb.p:                                             ; preds = %._crit_edge
  %i.et = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !208
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.eq), !inline_history !24
  %.pre.i57 = load i64, ptr %i.aj, align 8, !tbaa !216 ; 2 uses
  %.pre2.i58 = add i64 %.pre.i57, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59: ; preds = %._crit_edge, %bb.p
  %.pre-phi.i56 = phi i64 [ %i.eq, %._crit_edge ], [ %.pre2.i58, %bb.p ]
  %i.ev = phi i64 [ %i.ep, %._crit_edge ], [ %.pre.i57, %bb.p ]
  %i.ew = load ptr, ptr %3, align 8, !tbaa !214
  store i64 %.pre-phi.i56, ptr %i.aj, align 8, !tbaa !216
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 %i.eo, ptr %i.ex, align 1, !tbaa !78
  %i.ey = icmp slt i32 %i.j, 0
  %i.ez = load i64, ptr %i.aj, align 8, !tbaa !216 ; 3 uses
  %i.fa = add i64 %i.ez, 1                        ; 5 uses
  %i.fb = load i64, ptr %i.am, align 8, !tbaa !215
  %i.fc = icmp ugt i64 %i.fa, %i.fb               ; 2 uses
  br i1 %i.ey, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fc, label %bb.r, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

bb.r:                                             ; preds = %bb.q
  %i.fd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !208
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fa), !inline_history !24
  %.pre.i61 = load i64, ptr %i.aj, align 8, !tbaa !216 ; 2 uses
  %.pre2.i62 = add i64 %.pre.i61, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63: ; preds = %bb.q, %bb.r
  %.pre-phi.i60 = phi i64 [ %i.fa, %bb.q ], [ %.pre2.i62, %bb.r ]
  %i.ff = phi i64 [ %i.ez, %bb.q ], [ %.pre.i61, %bb.r ]
  %i.fg = load ptr, ptr %3, align 8, !tbaa !214
  store i64 %.pre-phi.i60, ptr %i.aj, align 8, !tbaa !216
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ff
  store i8 45, ptr %i.fh, align 1, !tbaa !78
  %i.fi = sub nsw i32 0, %i.j
  br label %bb.u

bb.s:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit59
  br i1 %i.fc, label %bb.t, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

bb.t:                                             ; preds = %bb.s
  %i.fj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !208
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.fa), !inline_history !24
  %.pre.i65 = load i64, ptr %i.aj, align 8, !tbaa !216 ; 2 uses
  %.pre2.i66 = add i64 %.pre.i65, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67: ; preds = %bb.s, %bb.t
  %.pre-phi.i64 = phi i64 [ %i.fa, %bb.s ], [ %.pre2.i66, %bb.t ]
  %i.fl = phi i64 [ %i.ez, %bb.s ], [ %.pre.i65, %bb.t ]
  %i.fm = load ptr, ptr %3, align 8, !tbaa !214
  store i64 %.pre-phi.i64, ptr %i.aj, align 8, !tbaa !216
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  store i8 43, ptr %i.fn, align 1, !tbaa !78
  br label %bb.u

bb.u:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63
  %.0 = phi i32 [ %i.fi, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit63 ], [ %i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit67 ] ; 3 uses
  %i.fo = or i32 %.0, 1
  %i.fp = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fo, i1 true)
  %i.fq = xor i32 %i.fp, 31
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !200
  %i.fu = zext nneg i32 %.0 to i64
  %i.fv = add i64 %i.ft, %i.fu
  %i.fw = lshr i64 %i.fv, 32
  %i.fx = trunc nuw i64 %i.fw to i32
  %i.fy = call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr nonnull %3, i32 noundef %.0, i32 noundef %i.fx) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %5 = alloca %"struct.fmt::v12::detail::basic_fp", align 16 ; 3 uses
  %i.b = load i32, ptr %2, align 4, !tbaa !230
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
  %i.h = load i64, ptr %i.g, align 8, !tbaa !216  ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !215
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !208
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.i), !inline_history !24
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !216 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.i, %bb.c ], [ %.pre2.i, %bb.d ]
  %i.o = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %bb.d ]
  %i.p = load ptr, ptr %4, align 8, !tbaa !214
  store i64 %.pre-phi.i, ptr %i.g, align 8, !tbaa !216
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 48, ptr %i.q, align 1, !tbaa !78
  br label %bb.be

bb.e:                                             ; preds = %bb.b
  %i.r = zext nneg i32 %1 to i64                  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !215  ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %bb.f, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !208
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.r), !inline_history !26
  %.pre.i137 = load i64, ptr %i.s, align 8, !tbaa !215
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit:  ; preds = %bb.e, %bb.f
  %i.x = phi i64 [ %i.t, %bb.e ], [ %.pre.i137, %bb.f ]
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !216
  %i.aa = load ptr, ptr %4, align 8, !tbaa !214
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 48, i64 %i.r, i1 false)
  %i.ab = sub nsw i32 0, %1
  br label %bb.be

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
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
  %i.aw = shl i64 %.0109, %i.av                   ; 2 uses
  %i.ax = trunc nsw i32 %i.aq to i16
  %.lhs.trunc = sub nsw i16 294, %i.ax
  %i.ay = udiv i16 %.lhs.trunc, 27                ; 2 uses
  %narrow = mul nuw nsw i16 %i.ay, 27
  %i.az = zext nneg i16 %narrow to i32
  %i.ba = add nsw i32 %i.az, -292                 ; 3 uses
  %i.bb = zext nneg i16 %i.ay to i64
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.bb ; 2 uses
  %.sroa.037.0.copyload.i.i = load i64, ptr %i.bc, align 16, !tbaa !200 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !200 ; 2 uses
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
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !200
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
  %i.cm = zext i64 %i.aw to i128
  %i.cn = zext i64 %.sroa.3.0.i.i to i128
  %i.co = mul nuw i128 %i.cn, %i.cm               ; 2 uses
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64
  %i.cr = trunc i128 %i.co to i64
  %6 = tail call noundef i64 @llvm.umulh.i64(i64 %i.aw, i64 %.sroa.041.0.i.i)
  %i.cs = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cr, i64 %6) ; 2 uses
  %i.ct = extractvalue { i64, i1 } %i.cs, 1
  %i.cu = extractvalue { i64, i1 } %i.cs, 0       ; 2 uses
  %i.cv = zext i1 %i.ct to i64
  %i.cw = add nuw i64 %i.cv, %i.cq                ; 3 uses
  %i.cx = icmp ne i64 %i.cu, 0                    ; 4 uses
  %i.cy = icmp ugt i64 %i.cw, 999999999999999999  ; 2 uses
  %i.cz = mul nuw i64 %i.cw, 10
  %.0107 = select i1 %i.cy, i64 %i.cw, i64 %i.cz  ; 3 uses
  %.0106 = select i1 %i.cy, i32 19, i32 18        ; 4 uses
  br i1 %i.d, label %bb.l, label %bb.p

bb.l:                                             ; preds = %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit
  %i.da = add nsw i32 %.0106, %.neg125            ; 3 uses
  %i.db = icmp sgt i32 %i.da, 0
  %i.dc = sub nuw nsw i32 2147483647, %i.da
  %i.dd = icmp sgt i32 %1, %i.dc
  %or.cond.i = select i1 %i.db, i1 %i.dd, i1 false
  br i1 %or.cond.i, label %bb.m, label %_ZN3fmt3v126detail16adjust_precisionERii.exit

bb.m:                                             ; preds = %bb.l
  %i.de = tail call ptr @__cxa_allocate_exception(i64 16) #29 ; 3 uses
  invoke void @_ZN3fmt3v1212format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull @.str.59)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTIN3fmt3v1212format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.df = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.de) #29
  resume { ptr, i32 } %i.df

_ZN3fmt3v126detail16adjust_precisionERii.exit:    ; preds = %bb.l
  %i.dg = add nsw i32 %i.da, %1
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v126detail16adjust_precisionERii.exit, %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit
  %.0187 = phi i32 [ %i.dg, %_ZN3fmt3v126detail16adjust_precisionERii.exit ], [ %1, %_ZN3fmt3v126detail9dragonbox16get_cached_powerEi.exit ] ; 20 uses
  %.not131 = icmp sgt i32 %.0106, %.0187
  br i1 %.not131, label %bb.q, label %.thread219

bb.q:                                             ; preds = %bb.p
  %i.dh = icmp slt i32 %.0187, 1
  %i.di = add nsw i32 %.0106, %.neg125            ; 2 uses
  br i1 %i.dh, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  store i32 %i.di, ptr %i.a, align 4, !tbaa !67
  %i.dj = icmp slt i32 %.0187, 0
  br i1 %i.dj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.dk, align 8, !tbaa !216
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !215
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.u, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

bb.u:                                             ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !208
  tail call void %i.dp(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1), !inline_history !26
  %.pre.i140 = load i64, ptr %i.dl, align 8, !tbaa !215
  %i.dq = icmp ne i64 %.pre.i140, 0
  %i.dr = zext i1 %i.dq to i64
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141: ; preds = %bb.t, %bb.u
  %i.ds = phi i64 [ 1, %bb.t ], [ %i.dr, %bb.u ]
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !216
  %i.du = zext i1 %i.cx to i64
  %i.dv = or i64 %.0107, %i.du
  %i.dw = icmp ugt i64 %i.dv, 5000000000000000000
  %i.dx = load ptr, ptr %4, align 8, !tbaa !214   ; 2 uses
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 49, ptr %i.dx, align 1, !tbaa !78
  br label %.thread

bb.w:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit141
  store i8 48, ptr %i.dx, align 1, !tbaa !78
  br label %.thread

bb.x:                                             ; preds = %bb.q
  %i.dy = sub nsw i32 %i.di, %.0187               ; 2 uses
  store i32 %i.dy, ptr %i.a, align 4, !tbaa !67
  %7 = tail call noundef i64 @llvm.umulh.i64(i64 %.0107, i64 7922816251426433760)
  %8 = lshr i64 %7, 32                            ; 3 uses
  %.neg126 = mul i64 %8, -10000000000
  %i.dz = add i64 %.neg126, %.0107                ; 5 uses
  %i.ea = tail call i32 @llvm.umin.i32(i32 %.0187, i32 9) ; 3 uses
  %i.eb = load ptr, ptr %4, align 8, !tbaa !214   ; 6 uses
  %i.ec = and i32 %i.ea, 1
  %.not.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ed = mul nuw nsw i64 %8, 720575941
  %i.ee = lshr i64 %i.ed, 24
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %i.eg = lshr i64 %i.ef, 32                      ; 2 uses
  %i.eh = trunc nuw nsw i64 %i.eg to i8
  %i.ei = add nuw nsw i8 %i.eh, 48
  store i8 %i.ei, ptr %i.eb, align 1, !tbaa !78
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ej = mul nuw nsw i64 %8, 450359963
  %i.ek = lshr i64 %i.ej, 20
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %i.em = lshr i64 %i.el, 32                      ; 2 uses
  %i.en = shl nuw nsw i64 %i.em, 1
  %i.eo = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.en
  %i.ep = load i16, ptr %i.eo, align 2
  store i16 %i.ep, ptr %i.eb, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0208 = phi i64 [ %i.el, %bb.z ], [ %i.ef, %bb.y ] ; 2 uses
  %.0204.in = phi i64 [ %i.em, %bb.z ], [ %i.eg, %bb.y ]
  %.0.i = phi i32 [ 2, %bb.z ], [ 1, %bb.y ]      ; 2 uses
  %i.eq = icmp samesign ugt i32 %.0187, %.0.i
  br i1 %i.eq, label %.lr.ph.i, label %.thread269

.lr.ph.i:                                         ; preds = %bb.aa
  %i.er = zext nneg i32 %.0.i to i64              ; 4 uses
  %i.es = zext nneg i32 %i.ea to i64              ; 3 uses
  %i.et = and i64 %.0208, 4294967295
  %i.eu = mul nuw nsw i64 %i.et, 100              ; 3 uses
  %i.ev = lshr i64 %i.eu, 32                      ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.er
  %i.ex = shl nuw nsw i64 %i.ev, 1
  %i.ey = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 2
  store i16 %i.ez, ptr %i.ew, align 1
  %indvars.iv.next.i = add nuw nsw i64 %i.er, 2   ; 2 uses
  %i.fa = icmp samesign ult i64 %indvars.iv.next.i, %i.es
  br i1 %i.fa, label %bb.ab, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ab:                                            ; preds = %.lr.ph.i
  %i.fb = and i64 %i.eu, 4294967292
  %i.fc = mul nuw nsw i64 %i.fb, 100              ; 3 uses
  %i.fd = lshr i64 %i.fc, 32                      ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv.next.i
  %i.ff = shl nuw nsw i64 %i.fd, 1
  %i.fg = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2
  store i16 %i.fh, ptr %i.fe, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %i.er, 4 ; 2 uses
  %i.fi = icmp samesign ult i64 %indvars.iv.next.i.1, %i.es
  br i1 %i.fi, label %bb.ac, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fj = and i64 %i.fc, 4294967280
  %i.fk = mul nuw nsw i64 %i.fj, 100              ; 3 uses
  %i.fl = lshr i64 %i.fk, 32                      ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv.next.i.1
  %i.fn = shl nuw nsw i64 %i.fl, 1
  %i.fo = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 2
  store i16 %i.fp, ptr %i.fm, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.er, 6 ; 2 uses
  %i.fq = icmp samesign ult i64 %indvars.iv.next.i.2, %i.es
  br i1 %i.fq, label %bb.ad, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fr = and i64 %i.fk, 4294967232
  %i.fs = mul nuw nsw i64 %i.fr, 100              ; 2 uses
  %i.ft = lshr i64 %i.fs, 32                      ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv.next.i.2
  %i.fv = shl nuw nsw i64 %i.ft, 1
  %i.fw = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2
  store i16 %i.fx, ptr %i.fu, align 1
  br label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit: ; preds = %bb.ad, %bb.ac, %bb.ab, %.lr.ph.i
  %.lcssa290 = phi i64 [ %i.eu, %.lr.ph.i ], [ %i.fc, %bb.ab ], [ %i.fk, %bb.ac ], [ %i.fs, %bb.ad ]
  %.lcssa289 = phi i64 [ %i.ev, %.lr.ph.i ], [ %i.fd, %bb.ab ], [ %i.fl, %bb.ac ], [ %i.ft, %bb.ad ] ; 2 uses
  %i.fy = icmp samesign ult i32 %.0187, 10
  br i1 %i.fy, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %.not129 = icmp eq i32 %.0187, 9
  br i1 %.not129, label %bb.af, label %.thread269

.thread269:                                       ; preds = %bb.aa, %bb.ae
  %.2210266275 = phi i64 [ %.lcssa290, %bb.ae ], [ %.0208, %bb.aa ]
  %.1205268274.in = phi i64 [ %.lcssa289, %bb.ae ], [ %.0204.in, %bb.aa ]
  %i.fz = trunc i64 %.2210266275 to i32           ; 2 uses
  %i.ga = sub nuw nsw i32 8, %i.ea
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr @.str.78, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !1186
  %.not130 = icmp ugt i32 %i.gd, %i.fz
  br i1 %.not130, label %bb.ao, label %.critedge134

bb.af:                                            ; preds = %bb.ae
  %i.ge = icmp ugt i64 %i.dz, 5000000000
  br i1 %i.ge, label %.critedge134.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gf = icmp eq i64 %i.dz, 5000000000
  %i.gg = trunc i64 %.lcssa289 to i1
  %i.gh = or i1 %i.cx, %i.gg
  %or.cond223 = select i1 %i.gf, i1 %i.gh, i1 false
  br i1 %or.cond223, label %.critedge134.thread, label %.critedge136

bb.ah:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %9 = tail call noundef i64 @llvm.umulh.i64(i64 %i.dz, i64 1844674407370955162) ; 2 uses
  %i.gi = trunc i64 %9 to i32
  %i.gj = trunc i64 %i.dz to i32
  %.neg127 = mul i32 %i.gi, -10
  %i.gk = add i32 %.neg127, %i.gj                 ; 3 uses
  %i.gl = add nsw i32 %.0187, -9                  ; 3 uses
  %i.gm = load ptr, ptr %4, align 8, !tbaa !214
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 9 ; 3 uses
  %i.go = and i32 %i.gl, 1
  %.not.i142 = icmp eq i32 %i.go, 0
  %i.gp = and i64 %9, 4294967295                  ; 2 uses
  br i1 %.not.i142, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gq = mul nuw nsw i64 %i.gp, 720575941
  %i.gr = lshr i64 %i.gq, 24
  %i.gs = add nuw nsw i64 %i.gr, 1                ; 2 uses
  %i.gt = lshr i64 %i.gs, 32                      ; 2 uses
  %i.gu = trunc nuw nsw i64 %i.gt to i8
  %i.gv = add nuw nsw i8 %i.gu, 48
  store i8 %i.gv, ptr %i.gn, align 1, !tbaa !78
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.gw = mul nuw nsw i64 %i.gp, 450359963
  %i.gx = lshr i64 %i.gw, 20
  %i.gy = add nuw nsw i64 %i.gx, 1                ; 2 uses
  %i.gz = lshr i64 %i.gy, 32                      ; 2 uses
  %i.ha = shl nuw nsw i64 %i.gz, 1
  %i.hb = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ha
  %i.hc = load i16, ptr %i.hb, align 2
  store i16 %i.hc, ptr %i.gn, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.3211 = phi i64 [ %i.gy, %bb.aj ], [ %i.gs, %bb.ai ] ; 2 uses
  %.2206.in = phi i64 [ %i.gz, %bb.aj ], [ %i.gt, %bb.ai ]
  %.0.i143 = phi i32 [ 2, %bb.aj ], [ 1, %bb.ai ] ; 2 uses
  %i.hd = icmp samesign ult i32 %.0.i143, %i.gl
  br i1 %i.hd, label %.lr.ph.i144, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

.lr.ph.i144:                                      ; preds = %bb.ak
  %i.he = zext nneg i32 %.0.i143 to i64
  %i.hf = zext nneg i32 %i.gl to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i144
  %.4 = phi i64 [ %.3211, %.lr.ph.i144 ], [ %i.hh, %bb.al ]
  %indvars.iv.i145 = phi i64 [ %i.he, %.lr.ph.i144 ], [ %indvars.iv.next.i146, %bb.al ] ; 2 uses
  %i.hg = and i64 %.4, 4294967295
  %i.hh = mul nuw nsw i64 %i.hg, 100              ; 3 uses
  %i.hi = lshr i64 %i.hh, 32                      ; 3 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gn, i64 %indvars.iv.i145
  %i.hk = shl nuw nsw i64 %i.hi, 1
  %i.hl = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2
  store i16 %i.hm, ptr %i.hj, align 1
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 2 ; 2 uses
  %i.hn = icmp samesign ult i64 %indvars.iv.next.i146, %i.hf
  br i1 %i.hn, label %bb.al, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147, !llvm.loop !1182

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147: ; preds = %bb.al
  %i.ho = icmp samesign ult i32 %.0187, 18
  br i1 %i.ho, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, label %bb.am

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread: ; preds = %bb.ak, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %.3207215.in = phi i64 [ %i.hi, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.2206.in, %bb.ak ]
  %.5214 = phi i64 [ %i.hh, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.3211, %bb.ak ]
  %i.hp = trunc i64 %.5214 to i32                 ; 2 uses
  %i.hq = sub nuw nsw i32 17, %.0187
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr @.str.78, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !1186
  %.not128 = icmp ugt i32 %i.ht, %i.hp
  br i1 %.not128, label %.split217, label %.critedge134.thread

.split217:                                        ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread
  %.3207215 = trunc nuw nsw i64 %.3207215.in to i32
  %i.hu = lshr i32 %i.hp, 31
  %i.hv = icmp ne i32 %i.gk, 0
  %i.hw = or i1 %i.hv, %i.cx
  %i.hx = zext i1 %i.hw to i32
  %i.hy = or i32 %i.hx, %.3207215
  %i.hz = and i32 %i.hu, %i.hy
  %i.ia = trunc nuw i32 %i.hz to i1
  br i1 %i.ia, label %.critedge134.thread, label %.critedge136

bb.am:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %i.ib = icmp ugt i32 %i.gk, 5
  br i1 %i.ib, label %.critedge134.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ic = icmp eq i32 %i.gk, 5
  %i.id = trunc i64 %i.hi to i1
  %i.ie = or i1 %i.cx, %i.id
  %or.cond225 = select i1 %i.ic, i1 %i.ie, i1 false
  br i1 %or.cond225, label %.critedge134.thread, label %.critedge136

bb.ao:                                            ; preds = %.thread269
  %.1205268274 = trunc nsw i64 %.1205268274.in to i32
  %i.if = lshr i32 %i.fz, 31
  %i.ig = or i64 %i.dz, %i.cu
  %i.ih = icmp ne i64 %i.ig, 0
  %i.ii = zext i1 %i.ih to i32
  %i.ij = or i32 %.1205268274, %i.ii
  %i.ik = and i32 %i.ij, %i.if
  %i.il = trunc nuw i32 %i.ik to i1
  br i1 %i.il, label %.critedge134, label %.critedge136

.critedge134.thread:                              ; preds = %bb.an, %bb.ag, %.split217, %bb.af, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, %bb.am
  %i.im = load ptr, ptr %4, align 8, !tbaa !214
  %i.in = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.io = getelementptr i8, ptr %i.im, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.io, i64 -1     ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !78
  %i.ir = add i8 %i.iq, 1
  store i8 %i.ir, ptr %i.ip, align 1, !tbaa !78
  br label %.lr.ph.preheader

.critedge134:                                     ; preds = %.thread269, %bb.ao
  %i.is = load ptr, ptr %4, align 8, !tbaa !214
  %i.it = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.iu = getelementptr i8, ptr %i.is, i64 %i.it
  %i.iv = getelementptr i8, ptr %i.iu, i64 -1     ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !78
  %i.ix = add i8 %i.iw, 1
  store i8 %i.ix, ptr %i.iv, align 1, !tbaa !78
  %.not242 = icmp eq i32 %.0187, 1
  br i1 %.not242, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge134.thread, %.critedge134
  %i.iy = phi i64 [ %i.in, %.critedge134.thread ], [ %i.it, %.critedge134 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ap
  %indvars.iv = phi i64 [ %i.iy, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ap ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.iz = load ptr, ptr %4, align 8, !tbaa !214
  %i.ja = and i64 %indvars.iv.next, 4294967295
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ja ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !78
  %i.jd = icmp sgt i8 %i.jc, 57
  br i1 %i.jd, label %bb.ap, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.ap, %.critedge134
  %i.je = phi i64 [ 1, %.critedge134 ], [ %i.iy, %bb.ap ], [ %i.iy, %.lr.ph ]
  %i.jf = load ptr, ptr %4, align 8, !tbaa !214   ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !78
  %i.jh = icmp sgt i8 %i.jg, 57
  br i1 %i.jh, label %bb.aq, label %.critedge136

bb.ap:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.jb, align 1, !tbaa !78
  %i.ji = load ptr, ptr %4, align 8, !tbaa !214
  %i.jj = getelementptr i8, ptr %i.ji, i64 %indvars.iv
  %i.jk = getelementptr i8, ptr %i.jj, i64 -2     ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !78
  %i.jm = add i8 %i.jl, 1
  store i8 %i.jm, ptr %i.jk, align 1, !tbaa !78
  %i.jn = trunc nuw i64 %indvars.iv to i32
  %i.jo = icmp sgt i32 %i.jn, 2
  br i1 %i.jo, label %.lr.ph, label %.critedge, !llvm.loop !1183

bb.aq:                                            ; preds = %.critedge
  store i8 49, ptr %i.jf, align 1, !tbaa !78
  br i1 %i.d, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jp = add nuw nsw i32 %.0187, 1
  %i.jq = load ptr, ptr %4, align 8, !tbaa !214
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.je
  store i8 48, ptr %i.jr, align 1, !tbaa !78
  br label %.critedge136

bb.as:                                            ; preds = %bb.aq
  %i.js = add nsw i32 %i.dy, 1
  store i32 %i.js, ptr %i.a, align 4, !tbaa !67
  br label %.critedge136

.critedge136:                                     ; preds = %.split217, %bb.an, %bb.ag, %.critedge, %bb.as, %bb.ar, %bb.ao
  %.1188 = phi i32 [ %i.jp, %bb.ar ], [ %.0187, %bb.as ], [ %.0187, %.critedge ], [ %.0187, %bb.ao ], [ 9, %bb.ag ], [ 18, %bb.an ], [ %.0187, %.split217 ]
  %i.jt = zext nneg i32 %.1188 to i64             ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !215 ; 2 uses
  %i.jw = icmp ult i64 %i.jv, %i.jt
  br i1 %i.jw, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.critedge136
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !208
  tail call void %i.jy(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.jt), !inline_history !26
  %.pre.i148 = load i64, ptr %i.ju, align 8, !tbaa !215
  br label %bb.au

.thread219:                                       ; preds = %bb.p
  %i.jz = add nsw i32 %i.aq, -3
  %i.ka = add nsw i32 %i.jz, %.0106
  store i32 %i.ka, ptr %i.a, align 4, !tbaa !67
  br i1 %3, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.at, %.critedge136
  %i.kb = phi i64 [ %i.jv, %.critedge136 ], [ %.pre.i148, %bb.at ]
  %i.kc = tail call noundef i64 @llvm.umin.i64(i64 %i.jt, i64 %i.kb)
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.kc, ptr %i.kd, align 8, !tbaa !216
  br label %.thread

bb.av:                                            ; preds = %.thread219
  %i.ke = fptrunc double %0 to float
  %i.kf = bitcast float %i.ke to i32              ; 2 uses
  %i.kg = and i32 %i.kf, 8388607                  ; 2 uses
end_hunk_2
begin_hunk_3_@_ZZN11OpenImageIO4v3_112ImageBufAlgo6mosaicINS1_17XTransDemosaicingIffLi3EEEhhEEvRNS0_8ImageBufERKS5_iiRA4_KfiENKUlNS0_3ROIEE_clESC_:bb.a
  %i.et = phi i32 [ %i.en, %bb.p ], [ %i.ep, %bb.q ], [ %.pre.i, %._crit_edge.i ]
  %i.eu = phi i32 [ %i.el, %bb.p ], [ %i.el, %bb.q ], [ %i.di, %._crit_edge.i ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %2, i32 noundef %i.eu, i32 noundef %i.et, i32 noundef %i.es)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEi.exit unwind label %bb.ae

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEi.exit: ; preds = %bb.s, %bb.l, %bb.k, %bb.m, %bb.n, %.noexc26, %bb.r
  %i.ev = load i32, ptr %i.aj, align 4, !tbaa !388
  %i.ew = add nsw i32 %i.ev, 1                    ; 7 uses
  store i32 %i.ew, ptr %i.aj, align 4, !tbaa !388
  %i.ex = load i32, ptr %i.ak, align 8, !tbaa !389
  %i.ey = icmp slt i32 %i.ew, %i.ex
  br i1 %i.ey, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEi.exit
  %i.ez = load i8, ptr %i.as, align 1, !tbaa !391, !range !194, !noundef !195
  %i.fa = trunc nuw i8 %i.ez to i1
  br i1 %i.fa, label %bb.u, label %._crit_edge.i30

._crit_edge.i30:                                  ; preds = %bb.t
  %.pre.i32 = load i32, ptr %i.am, align 8, !tbaa !390
  %.pre46 = load i32, ptr %i.ap, align 4, !tbaa !397
  br label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.fb = load i8, ptr %i.at, align 1, !tbaa !392, !range !194, !noundef !195
  %i.fc = trunc nuw i8 %i.fb to i1
  br i1 %i.fc, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.fd = load i64, ptr %i.av, align 8, !tbaa !393
  %i.fe = load ptr, ptr %i.n, align 8, !tbaa !380
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 %i.fd
  store ptr %i.ff, ptr %i.n, align 8, !tbaa !380
  %i.fg = load i32, ptr %i.aw, align 8, !tbaa !394
  %.not.i.i35 = icmp slt i32 %i.ew, %i.fg
  br i1 %.not.i.i35, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEi.exit23, label %bb.w, !prof !112

bb.w:                                             ; preds = %bb.v
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase24pos_xincr_local_past_endEv(ptr noundef nonnull align 8 dereferenceable(126) %3)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEi.exit23 unwind label %bb.ae

bb.x:                                             ; preds = %bb.u
  %i.fh = load i8, ptr %i.au, align 2, !tbaa !395, !range !194, !noundef !195
  %i.fi = trunc nuw i8 %i.fh to i1
  br i1 %i.fi, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEi.exit23, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fj = load i64, ptr %i.av, align 8, !tbaa !393
  %i.fk = load ptr, ptr %i.n, align 8, !tbaa !380
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %i.fj
  store ptr %i.fl, ptr %i.n, align 8, !tbaa !380
  %i.fm = load i32, ptr %i.aw, align 8, !tbaa !394
  %i.fn = icmp slt i32 %i.ew, %i.fm               ; 3 uses
  %i.fo = load i32, ptr %i.ax, align 4
  %i.fp = icmp sge i32 %i.ew, %i.fo
  %not..i.i33 = xor i1 %i.fn, true
  %or.cond.i.i34 = select i1 %not..i.i33, i1 true, i1 %i.fp, !prof !396
  %i.fq = load ptr, ptr %i.ay, align 8
  %i.fr = icmp eq ptr %i.fq, null
  %i.fs = select i1 %or.cond.i.i34, i1 true, i1 %i.fr, !prof !396
  br i1 %i.fs, label %bb.z, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEi.exit23, !prof !171

bb.z:                                             ; preds = %bb.y
  %i.ft = load ptr, ptr %3, align 8, !tbaa !379
  %i.fu = load i32, ptr %i.am, align 8, !tbaa !390
  %i.fv = load i32, ptr %i.ap, align 4, !tbaa !397
  %i.fw = load i32, ptr %i.bd, align 8, !tbaa !398
  %i.fx = invoke noundef ptr @_ZNK11OpenImageIO4v3_18ImageBuf6retileEiiiRPNS0_14ImageCacheTileERiS5_S5_S5_RbbNS1_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %i.ft, i32 noundef %i.ew, i32 noundef %i.fu, i32 noundef %i.fv, ptr noundef nonnull align 8 dereferenceable(8) %i.ay, ptr noundef nonnull align 4 dereferenceable(4) %i.az, ptr noundef nonnull align 4 dereferenceable(4) %i.ba, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, ptr noundef nonnull align 4 dereferenceable(4) %i.ax, ptr noundef nonnull align 1 dereferenceable(1) %i.bc, i1 noundef zeroext %i.fn, i32 noundef %i.fw)
          to label %.noexc37 unwind label %bb.ae

.noexc37:                                         ; preds = %bb.z
  %i.fy = zext i1 %i.fn to i8
  store ptr %i.fx, ptr %i.n, align 8, !tbaa !380
  store i8 %i.fy, ptr %i.as, align 1, !tbaa !391
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEi.exit23

bb.aa:                                            ; preds = %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEi.exit
  %i.fz = load i32, ptr %i.al, align 4, !tbaa !399 ; 3 uses
  store i32 %i.fz, ptr %i.aj, align 4, !tbaa !388
  %i.ga = load i32, ptr %i.am, align 8, !tbaa !390
  %i.gb = add nsw i32 %i.ga, 1                    ; 3 uses
  store i32 %i.gb, ptr %i.am, align 8, !tbaa !390
  %i.gc = load i32, ptr %i.an, align 8, !tbaa !400
  %.not.i28 = icmp slt i32 %i.gb, %i.gc
  %.pre47 = load i32, ptr %i.ap, align 4, !tbaa !397 ; 2 uses
  br i1 %.not.i28, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gd = load i32, ptr %i.ao, align 4, !tbaa !401 ; 2 uses
  store i32 %i.gd, ptr %i.am, align 8, !tbaa !390
  %i.ge = add nsw i32 %.pre47, 1                  ; 3 uses
  store i32 %i.ge, ptr %i.ap, align 4, !tbaa !397
  %i.gf = load i32, ptr %i.aq, align 8, !tbaa !402
  %.not1.i29 = icmp slt i32 %i.ge, %i.gf
  br i1 %.not1.i29, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %i.ar, align 8, !tbaa !403
  br label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEi.exit23

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge.i30
  %i.gg = phi i32 [ %.pre47, %bb.aa ], [ %i.ge, %bb.ab ], [ %.pre46, %._crit_edge.i30 ]
  %i.gh = phi i32 [ %i.gb, %bb.aa ], [ %i.gd, %bb.ab ], [ %.pre.i32, %._crit_edge.i30 ]
  %i.gi = phi i32 [ %i.fz, %bb.aa ], [ %i.fz, %bb.ab ], [ %i.ew, %._crit_edge.i30 ]
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %3, i32 noundef %i.gi, i32 noundef %i.gh, i32 noundef %i.gg)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEi.exit23 unwind label %bb.ae

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEi.exit23: ; preds = %bb.ad, %bb.w, %bb.v, %bb.x, %bb.y, %.noexc37, %bb.ac
  %i.gj = add nsw i32 %.01440, 1                  ; 2 uses
  %i.gk = load i32, ptr %i.i, align 4, !tbaa !404 ; 2 uses
  %i.gl = icmp slt i32 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !2143

bb.ae:                                            ; preds = %bb.ad, %bb.z, %bb.w, %bb.s, %bb.o, %bb.l
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.g, %.lr.ph
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.gm, %bb.ae ], [ %i.gn, %bb.af ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %3) #29
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ag ], [ %i.bp, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_imagebufalgo_demosaic.cpp() #26 section ".text.startup" personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr @.str, ptr %4, align 8, !tbaa !72
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.a, align 8, !tbaa !73
  %i.b = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %4)
  store ptr %i.b, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_110pattern_usE, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.c = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_110pattern_usE) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store ptr @.str.2, ptr %3, align 8, !tbaa !72
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 9, ptr %i.d, align 8, !tbaa !73
  %i.e = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %3)
  store ptr %i.e, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_112algorithm_usE, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.f = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_112algorithm_usE) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @.str.4, ptr %2, align 8, !tbaa !72
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 6, ptr %i.g, align 8, !tbaa !73
  %i.h = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %2)
  store ptr %i.h, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_19layout_usE, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.i = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_19layout_usE) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store ptr @.str.6, ptr %1, align 8, !tbaa !72
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 18, ptr %i.j, align 8, !tbaa !73
  %i.k = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %1)
  store ptr %i.k, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_121white_balance_mode_usE, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.l = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_121white_balance_mode_usE) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0)
  store ptr @.str.8, ptr %0, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 13, ptr %i.m, align 8, !tbaa !73
  %i.n = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %0)
  store ptr %i.n, ptr @_ZN11OpenImageIO4v3_112_GLOBAL__N_116white_balance_usE, align 8, !tbaa !84
  call void @llvm.lifetime.end.p0(ptr nonnull %0)
  %i.o = call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN11OpenImageIO4v3_112_GLOBAL__N_116white_balance_usE) ; 0 uses
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umulh.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #29 = { nounwind }
attributes #30 = { builtin nounwind }
attributes #31 = { cold nounwind }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { noreturn nounwind }
attributes #34 = { noreturn }
attributes #35 = { nounwind willreturn memory(read) }
attributes #36 = { nounwind willreturn memory(none) }
attributes #37 = { nounwind allocsize(0) }

!llvm.module.flags = !{!61, !62}
!llvm.ident = !{!63}
!llvm.errno.tbaa = !{!67}

!0 = distinct !{!0, !156}
!1 = distinct !{!1, !156}
!2 = distinct !{null, null}
!3 = distinct !{!3, !156}
!4 = distinct !{!4, !156}
!5 = distinct !{!5, !156}
!6 = distinct !{null, null}
!7 = distinct !{null, null, null}
!8 = distinct !{null, null}
!9 = distinct !{!9, !156}
!10 = distinct !{!10, !156}
!11 = distinct !{!11, !156}
!12 = distinct !{!12, !156}
!13 = distinct !{null, null}
!14 = distinct !{null, null}
!15 = distinct !{!15, !156}
!16 = distinct !{null}
!17 = distinct !{null}
!18 = distinct !{!18, !156}
!19 = distinct !{!19, !156}
!20 = distinct !{!20, !156}
!21 = distinct !{!21, !156}
!22 = distinct !{null, null, null, null}
!23 = distinct !{!23, !156}
!24 = distinct !{null, null}
!25 = distinct !{null}
!26 = distinct !{null, null}
!27 = distinct !{!27, !156}
!28 = distinct !{!28, !156}
!29 = distinct !{!29, !156}
!30 = distinct !{null}
!31 = distinct !{null, null, null, null}
!32 = distinct !{null, null, null}
!33 = distinct !{null}
!34 = distinct !{!34, !156}
!35 = distinct !{!35, !156}
!36 = distinct !{null, null, null, null}
!37 = distinct !{null, null, null, null, null}
!38 = distinct !{!38, !156}
!39 = distinct !{!39, !156}
!40 = distinct !{!40, !156}
!41 = distinct !{!41, !156}
!42 = distinct !{!42, !156}
!43 = distinct !{!43, !156}
!44 = distinct !{!44, !156}
!45 = distinct !{!45, !156}
!46 = distinct !{!46, !156}
!47 = distinct !{!47, !156}
!48 = distinct !{!48, !156}
!49 = distinct !{!49, !156}
!50 = distinct !{!50, !156}
!51 = distinct !{!51, !156}
!52 = distinct !{!52, !156}
!53 = distinct !{!53, !156}
!54 = distinct !{!54, !156}
!55 = distinct !{!55, !156}
!56 = distinct !{!56, !156}
!57 = distinct !{!57, !156}
!58 = distinct !{!58, !156}
!59 = distinct !{!59, !156}
!60 = distinct !{!60, !156}
!61 = !{i32 8, !"PIC Level", i32 2}
!62 = !{i32 7, !"uwtable", i32 2}
!63 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!64 = !{!"Simple C++ TBAA"}
!65 = !{!"omnipotent char", !64, i64 0}
!66 = !{!"int", !65, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!"any pointer", !65, i64 0}
!69 = !{!"p1 omnipotent char", !68, i64 0}
!70 = !{!"long", !65, i64 0}
!71 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !69, i64 0, !70, i64 8}
!72 = !{!71, !69, i64 0}
!73 = !{!71, !70, i64 8}
!74 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !69, i64 0}
!75 = !{!74, !69, i64 0}
!76 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !74, i64 0, !70, i64 8, !65, i64 16}
!77 = !{!76, !70, i64 8}
!78 = !{!65, !65, i64 0}
!79 = !{i64 0, i64 4, !67, i64 4, i64 4, !67, i64 8, i64 4, !67, i64 12, i64 4, !67, i64 16, i64 4, !67, i64 20, i64 4, !67, i64 24, i64 4, !67, i64 28, i64 4, !67}
!80 = !{!"_ZTSN11OpenImageIO4v3_13ROIE", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12, !66, i64 16, !66, i64 20, !66, i64 24, !66, i64 28}
!81 = !{!80, !66, i64 0}
!82 = !{!69, !69, i64 0}
!83 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !69, i64 0}
!84 = !{!83, !69, i64 0}
!85 = !{!76, !69, i64 0}
!86 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !65, i64 0, !65, i64 1, !65, i64 2, !65, i64 3, !66, i64 4}
!87 = !{!"bool", !65, i64 0}
!88 = !{!"_ZTSN11OpenImageIO4v3_110ParamValueE", !83, i64 0, !86, i64 8, !65, i64 16, !66, i64 32, !65, i64 36, !87, i64 37, !87, i64 38}
!89 = !{!88, !66, i64 32}
!90 = !{!80, !66, i64 24}
!91 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !68, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !92, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !93, i64 0}
!95 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !94, i64 0}
!96 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !68, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !97, i64 0}
!99 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !98, i64 0}
!100 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !99, i64 0}
!101 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !68, i64 0}
!102 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !101, i64 0, !101, i64 8, !101, i64 16}
!103 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !102, i64 0}
end_hunk_3
