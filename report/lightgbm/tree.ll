Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/tree?download=true
inline.NumInlined: 6283
inline.NumDeleted: 1853
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 61
begin_hunk_0_@_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_11write_bytesIcLS3_1ES5_EET1_S7_NS0_17basic_string_viewIcEERKNS0_12format_specsEEUlS5_E_EES7_S7_SC_mmOT2_:bb.a
  %i.ce = add nuw i64 %.023.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ce, %spec.select.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !871

_ZZN3fmt3v116detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit: ; preds = %._crit_edge.i.i.i, %bb.d
  %.not31 = icmp eq i64 %i.d, %i.l
  br i1 %.not31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZZN3fmt3v116detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %i.cf = tail call ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.09.0, i64 noundef %i.m, ptr noundef nonnull align 8 dereferenceable(12) %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZZN3fmt3v116detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit
  %.sroa.09.1 = phi ptr [ %i.cf, %bb.g ], [ %.sroa.09.0, %_ZZN3fmt3v116detail11write_bytesIcLNS0_5alignE1ENS0_14basic_appenderIcEEEET1_S6_NS0_17basic_string_viewIcEERKNS0_12format_specsEENKUlS5_E_clES5_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEfTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %0, float noundef %1) local_unnamed_addr #1 comdat {
bb.a:
  %2 = alloca %class.anon.157, align 8            ; 5 uses
  %3 = alloca %"struct.fmt::v11::format_specs", align 8 ; 7 uses
  %4 = alloca %"struct.fmt::v11::format_specs", align 8 ; 4 uses
  %5 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp", align 8 ; 4 uses
  %i.a = bitcast float %1 to i32                  ; 2 uses
  %.lobit = lshr i32 %i.a, 31                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const._ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.specs, i64 24, i1 false)
  %i.b = tail call float @llvm.fabs.f32(float %1)
  %i.c = fcmp ueq float %i.b, +inf
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp uno float %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const._ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.specs, i64 24, i1 false)
  %i.e = load i64, ptr %3, align 8, !tbaa !294    ; 3 uses
  %i.f = and i64 %i.e, 229376
  %i.g = icmp eq i64 %i.f, 32768
  br i1 %i.g, label %bb.c, label %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !202
  %i.j = icmp eq i8 %i.i, 48
  br i1 %i.j, label %bb.d, label %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit

bb.d:                                             ; preds = %bb.c
  store i8 32, ptr %i.h, align 8, !tbaa !202
  %i.k = and i64 %i.e, 4294770687
  store i64 %i.k, ptr %3, align 8, !tbaa !294
  br label %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit

_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.l = and i64 %i.e, 4096
  %.not7.i = icmp eq i64 %i.l, 0                  ; 2 uses
  %.str.41..str.42.i = select i1 %.not7.i, ptr @.str.42, ptr @.str.41
  %.str.43..str.44.i = select i1 %.not7.i, ptr @.str.44, ptr @.str.43
  %i.m = select i1 %i.d, ptr %.str.41..str.42.i, ptr %.str.43..str.44.i
  %.not.not.i = icmp sgt i32 %i.a, -1
  %i.n = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i32 %.lobit, ptr %2, align 8, !tbaa !346
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.m, ptr %i.o, align 8, !tbaa !347
  %i.p = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 noundef %i.n, i64 noundef %i.n, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.q = tail call i64 @_ZN3fmt3v116detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %1) #12
  store i64 %i.q, ptr %5, align 8
  %i.r = call ptr @_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(20) %4, i32 noundef %.lobit, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.06.0 = phi ptr [ %i.p, %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %i.r, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret ptr %.sroa.06.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr i64 @_ZN3fmt3v116detail9dragonbox10to_decimalIfEENS2_10decimal_fpIT_EES5_(float noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
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
  %i.o = getelementptr [8 x i8], ptr @_ZZN3fmt3v116detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands.const, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 248
  %i.q = load i64, ptr %i.p, align 8, !tbaa !276  ; 5 uses
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
  br i1 %i.ai, label %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit, label %.preheader

_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit: ; preds = %.preheader
  %i.ak = mul i32 %.sroa.082.1, -858993459        ; 2 uses
  %i.al = tail call i32 @llvm.fshl.i32(i32 %i.ak, i32 %i.ak, i32 31) ; 2 uses
  %.not.i54 = icmp ult i32 %i.al, 429496730       ; 2 uses
  %spec.select = select i1 %.not.i54, i32 %i.al, i32 %.sroa.082.1
  %i.am = zext i1 %.not.i54 to i32
  %spec.select99 = add nsw i32 %i.i, 1
  %i.an = add i32 %spec.select99, %.012.i
  %i.ao = add i32 %i.an, %i.am
  br label %_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

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
  br label %_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

bb.f:                                             ; preds = %bb.d
  %i.aw = icmp ult i32 %i.au, %spec.select.i
  %i.ax = zext i1 %i.aw to i32
  %spec.select100 = add nuw i32 %i.au, %i.ax
  br label %_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

bb.g:                                             ; preds = %bb.b
  %i.ay = or disjoint i32 %i.b, 8388608
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.az = icmp eq i32 %i.b, 0
  br i1 %i.az, label %_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.042 = phi i32 [ %i.ay, %bb.g ], [ %i.b, %bb.h ] ; 3 uses
  %.041 = phi i32 [ %i.e, %bb.g ], [ -149, %bb.h ] ; 2 uses
  %i.ba = mul nsw i32 %.041, 315653
  %i.bb = ashr i32 %i.ba, 20                      ; 5 uses
  %i.bc = sub nsw i32 1, %i.bb                    ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr [8 x i8], ptr @_ZZN3fmt3v116detail9dragonbox14cache_accessorIfE16get_cached_powerEiE18pow10_significands.const, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 248
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !276 ; 4 uses
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
  br i1 %i.cx, label %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit60, label %bb.o

_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit60: ; preds = %bb.o
  %i.cz = mul i32 %.sroa.0.4, -858993459          ; 2 uses
  %i.da = tail call i32 @llvm.fshl.i32(i32 %i.cz, i32 %i.cz, i32 31) ; 2 uses
  %.not.i58 = icmp ult i32 %i.da, 429496730       ; 2 uses
  %spec.select101 = select i1 %.not.i58, i32 %i.da, i32 %.sroa.0.4
  %i.db = zext i1 %.not.i58 to i32
  %spec.select102 = add nsw i32 %i.bb, 1
  %i.dc = add i32 %spec.select102, %.012.i55
  %i.dd = add i32 %i.dc, %i.db
  br label %_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

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
  br i1 %i.dk, label %bb.q, label %_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

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
  br label %_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

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
  br label %_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit

_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIfEENS2_10decimal_fpIT_EEi.exit: ; preds = %bb.e, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit, %bb.f, %bb.s, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit60, %bb.r, %bb.p, %bb.h
  %.sroa.18.1 = phi i32 [ %i.bb, %bb.s ], [ 0, %bb.h ], [ %i.dd, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit60 ], [ %i.bb, %bb.r ], [ %i.bb, %bb.p ], [ %i.i, %bb.e ], [ %i.ao, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit ], [ %i.i, %bb.f ]
  %.sroa.0.3 = phi i32 [ %spec.select103, %bb.s ], [ 0, %bb.h ], [ %spec.select101, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit60 ], [ %i.dv, %bb.r ], [ %i.dm, %bb.p ], [ %i.av, %bb.e ], [ %spec.select, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit ], [ %spec.select100, %bb.f ]
  %.sroa.18.0.insert.ext = zext i32 %.sroa.18.1 to i64
  %.sroa.18.0.insert.shift = shl nuw i64 %.sroa.18.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %.sroa.0.3 to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.18.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !315
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i64, ptr %1, align 8, !tbaa !294    ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = and i64 %i.f, 7
  %i.h = getelementptr inbounds nuw i8, ptr @.str.39, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !202
  %i.j = sext i8 %i.i to i64
  %i.k = and i64 %i.j, 4294967295
  %i.l = lshr i64 %i.d, %i.k                      ; 4 uses
  %i.m = sub nsw i64 %i.d, %i.l
  %i.n = lshr i64 %i.e, 15
  %i.o = and i64 %i.n, 7
  %i.p = mul nuw nsw i64 %i.o, %i.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !270
  %i.s = add i64 %i.r, %2
  %i.t = add i64 %i.s, %i.p                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !271
  %i.w = icmp ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.b, label %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !272
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.t), !inline_history !15
  br label %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.z = tail call ptr @_ZN3fmt3v116detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.l, ptr noundef nonnull align 8 dereferenceable(12) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.z, %bb.c ], [ %0, %_ZN3fmt3v116detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 12 uses
  %i.aa = load i32, ptr %4, align 8, !tbaa !346   ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = shl nsw i32 %i.aa, 3
  %i.ac = lshr i32 539700480, %i.ab
  %i.ad = trunc i32 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 3 uses
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !270 ; 2 uses
  %i.ag = add i64 %i.af, 1                        ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !271
  %i.aj = icmp ugt i64 %i.ag, %i.ai
  br i1 %i.aj, label %bb.f, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

bb.f:                                             ; preds = %bb.e
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !272
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ag), !inline_history !872
  %.pre.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !270 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i:        ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %i.ag, %bb.e ], [ %.pre2.i.i.i, %bb.f ]
  %i.am = phi i64 [ %i.af, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.an = load ptr, ptr %.sroa.09.0, align 8, !tbaa !269
  store i64 %.pre-phi.i.i.i, ptr %i.ae, align 8, !tbaa !270
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.am
  store i8 %i.ad, ptr %i.ao, align 1, !tbaa !202
end_hunk_0
begin_hunk_1_@_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlS4_E2_clES4_:bb.a
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !916, !nonnull !116
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !202
  %i.ai = load i64, ptr %i.q, align 8, !tbaa !270 ; 2 uses
  %i.aj = add i64 %i.ai, 1                        ; 3 uses
  %i.ak = load i64, ptr %i.t, align 8, !tbaa !271
  %i.al = icmp ugt i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.g, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit13

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !272
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.aj), !inline_history !9
  %.pre.i.i11 = load i64, ptr %i.q, align 8, !tbaa !270 ; 2 uses
  %.pre2.i.i12 = add i64 %.pre.i.i11, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit13

_ZN3fmt3v1114basic_appenderIcEaSEc.exit13:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i10 = phi i64 [ %i.aj, %bb.f ], [ %.pre2.i.i12, %bb.g ]
  %i.ao = phi i64 [ %i.ai, %bb.f ], [ %.pre.i.i11, %bb.g ]
  %i.ap = load ptr, ptr %1, align 8, !tbaa !269
  store i64 %.pre-phi.i.i10, ptr %i.q, align 8, !tbaa !270
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.ah, ptr %i.aq, align 1, !tbaa !202
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !917, !nonnull !116, !align !333
  %i.at = load i32, ptr %i.as, align 4, !tbaa !88 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !918, !nonnull !116
  %i.aw = icmp sgt i32 %i.at, 0
  br i1 %i.aw, label %.lr.ph.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit13
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.h

bb.h:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %.lr.ph.i
  %.04.i = phi i32 [ 0, %.lr.ph.i ], [ %i.bh, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i ]
  %i.ay = load i8, ptr %i.av, align 1, !tbaa !202
  %i.az = load i64, ptr %i.q, align 8, !tbaa !270 ; 2 uses
  %i.ba = add i64 %i.az, 1                        ; 3 uses
  %i.bb = load i64, ptr %i.t, align 8, !tbaa !271
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.i, label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

bb.i:                                             ; preds = %bb.h
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !272
  tail call void %i.bd(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ba), !inline_history !24
  %.pre.i.i.i = load i64, ptr %i.q, align 8, !tbaa !270 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i:        ; preds = %bb.i, %bb.h
  %.pre-phi.i.i.i = phi i64 [ %i.ba, %bb.h ], [ %.pre2.i.i.i, %bb.i ]
  %i.be = phi i64 [ %i.az, %bb.h ], [ %.pre.i.i.i, %bb.i ]
  %i.bf = load ptr, ptr %1, align 8, !tbaa !269
  store i64 %.pre-phi.i.i.i, ptr %i.q, align 8, !tbaa !270
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 %i.ay, ptr %i.bg, align 1, !tbaa !202
  %i.bh = add nuw nsw i32 %.04.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.bh, %i.at
  br i1 %exitcond.not.i, label %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit, label %bb.h, !llvm.loop !23

_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit.i, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit13
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !919, !nonnull !116, !align !333
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !88
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !920, !nonnull !116, !align !333
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !88
  %i.bo = tail call ptr @_ZN3fmt3v116detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES6_S6_T0_i(ptr nonnull %1, i32 noundef %i.bk, i32 noundef %i.bn)
  br label %bb.j

bb.j:                                             ; preds = %_ZN3fmt3v1114basic_appenderIcEaSEc.exit8, %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit
  %.sroa.03.0 = phi ptr [ %i.bo, %_ZN3fmt3v116detail6fill_nINS0_14basic_appenderIcEEicEET_S5_T0_RKT1_.exit ], [ %1, %_ZN3fmt3v1114basic_appenderIcEaSEc.exit8 ]
  ret ptr %.sroa.03.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_(ptr %0, double noundef %1) local_unnamed_addr #1 comdat {
bb.a:
  %2 = alloca %class.anon.157, align 8            ; 5 uses
  %3 = alloca %"struct.fmt::v11::format_specs", align 8 ; 7 uses
  %4 = alloca %"struct.fmt::v11::format_specs", align 8 ; 4 uses
  %5 = alloca %"struct.fmt::v11::detail::dragonbox::decimal_fp.164", align 8 ; 5 uses
  %i.a = bitcast double %1 to i64                 ; 3 uses
  %.lobit = lshr i64 %i.a, 63
  %i.b = trunc nuw nsw i64 %.lobit to i32         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const._ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.specs, i64 24, i1 false)
  %i.c = and i64 %i.a, 9218868437227405312
  %i.d = icmp eq i64 %i.c, 9218868437227405312
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp uno double %1, 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const._ZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEdTnNSt9enable_ifIXsr13is_fast_floatIT1_EE5valueEiE4typeELi0EEET0_S9_S6_.specs, i64 24, i1 false)
  %i.f = load i64, ptr %3, align 8, !tbaa !294    ; 3 uses
  %i.g = and i64 %i.f, 229376
  %i.h = icmp eq i64 %i.g, 32768
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !tbaa !202
  %i.k = icmp eq i8 %i.j, 48
  br i1 %i.k, label %bb.d, label %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit

bb.d:                                             ; preds = %bb.c
  store i8 32, ptr %i.i, align 8, !tbaa !202
  %i.l = and i64 %i.f, 4294770687
  store i64 %i.l, ptr %3, align 8, !tbaa !294
  br label %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit

_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.m = and i64 %i.f, 4096
  %.not7.i = icmp eq i64 %i.m, 0                  ; 2 uses
  %.str.41..str.42.i = select i1 %.not7.i, ptr @.str.42, ptr @.str.41
  %.str.43..str.44.i = select i1 %.not7.i, ptr @.str.44, ptr @.str.43
  %i.n = select i1 %i.e, ptr %.str.41..str.42.i, ptr %.str.43..str.44.i
  %.not.not.i = icmp sgt i64 %i.a, -1
  %i.o = select i1 %.not.not.i, i64 3, i64 4      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  store i32 %i.b, ptr %2, align 8, !tbaa !346
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.n, ptr %i.p, align 8, !tbaa !347
  %i.q = call ptr @_ZN3fmt3v116detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 noundef %i.o, i64 noundef %i.o, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.r = tail call { i64, i32 } @_ZN3fmt3v116detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %1) #12 ; 2 uses
  %i.s = extractvalue { i64, i32 } %i.r, 0
  store i64 %i.s, ptr %5, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = extractvalue { i64, i32 } %i.r, 1
  store i32 %i.u, ptr %i.t, align 8
  %i.v = call ptr @_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(20) %4, i32 noundef %i.b, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit
  %.sroa.06.0 = phi ptr [ %i.q, %_ZN3fmt3v116detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signE.exit ], [ %i.v, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret ptr %.sroa.06.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, i32 } @_ZN3fmt3v116detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_(double noundef %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
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
  %.lhs.trunc159 = sub nsw i16 292, %i.o
  %i.p = udiv i16 %.lhs.trunc159, 27              ; 2 uses
  %narrow = mul nuw nsw i16 %i.p, 27
  %i.q = zext nneg i16 %narrow to i32
  %i.r = add nsw i32 %i.q, -292                   ; 3 uses
  %i.s = zext nneg i16 %i.p to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr @_ZZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.s ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !276 ; 2 uses
  %i.u = icmp eq i32 %i.r, %i.k
  br i1 %i.u, label %_ZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.034.0.copyload.i = load i64, ptr %i.t, align 16, !tbaa !276
  %i.v = sub nsw i32 %i.k, %i.r                   ; 2 uses
  %i.w = mul nsw i32 %i.r, 1741647
  %i.x = ashr i32 %i.w, 19
  %i.y = add nsw i32 %i.v, %i.x
  %i.z = sub nsw i32 %i.m, %i.y                   ; 2 uses
  %i.aa = sext i32 %i.v to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr @_ZZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64.const, i64 %i.aa
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !276
  %i.ad = zext i64 %.sroa.5.0.copyload.i to i128
  %i.ae = zext i64 %i.ac to i128                  ; 2 uses
  %i.af = mul nuw i128 %i.ae, %i.ad               ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = trunc nuw i128 %i.ag to i64
  %i.ai = trunc i128 %i.af to i64
  %1 = zext i64 %.sroa.034.0.copyload.i to i128
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
  br label %_ZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit

_ZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.i = phi i64 [ %i.at, %bb.d ], [ %.sroa.5.0.copyload.i, %bb.c ] ; 5 uses
  %i.au = lshr i64 %.sroa.3.0.i, 54
  %i.av = sub nuw i64 %.sroa.3.0.i, %i.au
  %i.aw = sub nsw i32 11, %i.n
  %i.ax = zext nneg i32 %i.aw to i64              ; 2 uses
  %i.ay = lshr i64 %i.av, %i.ax
  %i.az = lshr i64 %.sroa.3.0.i, 53
  %i.ba = add i64 %i.az, %.sroa.3.0.i
  %i.bb = lshr i64 %i.ba, %i.ax
  %i.bc = and i32 %i.f, -2
  %i.bd = icmp ne i32 %i.bc, 2
  %i.be = zext i1 %i.bd to i64
  %spec.select.i = add i64 %i.ay, %i.be           ; 2 uses
  %i.bf = udiv i64 %i.bb, 10                      ; 3 uses
  %i.bg = mul nuw i64 %i.bf, 10
  %.not.i = icmp ult i64 %i.bg, %spec.select.i
  br i1 %.not.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit
  %i.bh = add nsw i32 %i.j, 1
  %i.bi = zext nneg i64 %i.bf to i128
  %i.bj = mul nuw nsw i128 %i.bi, 12379400392853802749 ; 3 uses
  %i.bk = trunc i128 %i.bj to i64
  %i.bl = and i128 %i.bj, 1237940020838636201189572608
  %i.bm = icmp eq i128 %i.bl, 0
  %i.bn = icmp ult i64 %i.bk, -6067343680855748867
  %or.cond = and i1 %i.bn, %i.bm
  br i1 %or.cond, label %bb.f, label %.preheader181

bb.f:                                             ; preds = %bb.e
  %i.bo = lshr i128 %i.bj, 90
  %i.bp = trunc i128 %i.bo to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.0132 = phi i32 [ %i.bp, %bb.f ], [ %i.br, %bb.g ] ; 3 uses
  %.012.i.i = phi i32 [ 8, %bb.f ], [ %i.bt, %bb.g ] ; 2 uses
  %i.bq = mul i32 %.0132, -1030792151             ; 2 uses
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 30) ; 2 uses
  %i.bs = icmp ugt i32 %i.br, 42949672
  %i.bt = add nuw nsw i32 %.012.i.i, 2
  br i1 %i.bs, label %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit.i, label %bb.g

_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit.i: ; preds = %bb.g
  %i.bu = mul i32 %.0132, -858993459              ; 2 uses
  %i.bv = tail call i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 31) ; 2 uses
  %.not.i.i = icmp ult i32 %i.bv, 429496730       ; 2 uses
  %spec.select = select i1 %.not.i.i, i32 %i.bv, i32 %.0132
  %i.bw = zext i1 %.not.i.i to i32
  %spec.select161 = or disjoint i32 %.012.i.i, %i.bw
  %i.bx = zext i32 %spec.select to i64
  br label %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERm.exit

.preheader181:                                    ; preds = %bb.e, %.preheader181
  %.sroa.0111.1 = phi i64 [ %i.bz, %.preheader181 ], [ %i.bf, %bb.e ] ; 5 uses
  %.0.i = phi i32 [ %i.cb, %.preheader181 ], [ 0, %bb.e ] ; 2 uses
  %i.by = mul i64 %.sroa.0111.1, -8116567392432202711
  %i.bz = tail call i64 @llvm.fshl.i64(i64 %.sroa.0111.1, i64 %i.by, i64 62) ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, 184467440737095516
  %i.cb = add nuw nsw i32 %.0.i, 2
  br i1 %i.ca, label %bb.h, label %.preheader181

bb.h:                                             ; preds = %.preheader181
  %i.cc = mul i64 %.sroa.0111.1, -3689348814741910323
  %i.cd = tail call i64 @llvm.fshl.i64(i64 %.sroa.0111.1, i64 %i.cc, i64 63) ; 2 uses
  %.not.i53 = icmp ult i64 %i.cd, 1844674407370955162 ; 2 uses
  %spec.select162 = select i1 %.not.i53, i64 %i.cd, i64 %.sroa.0111.1
  %i.ce = zext i1 %.not.i53 to i32
  %spec.select163 = or disjoint i32 %.0.i, %i.ce
  br label %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERm.exit

_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERm.exit: ; preds = %bb.h, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit.i
  %.sroa.0111.3 = phi i64 [ %i.bx, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit.i ], [ %spec.select162, %bb.h ]
  %.017.i = phi i32 [ %spec.select161, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit.i ], [ %spec.select163, %bb.h ]
  %i.cf = add nsw i32 %i.bh, %.017.i
  br label %_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.i:                                             ; preds = %_ZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit
  %i.cg = sub nsw i32 10, %i.n
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = lshr i64 %.sroa.3.0.i, %i.ch
  %i.cj = add i64 %i.ci, 1
  %i.ck = lshr i64 %i.cj, 1                       ; 3 uses
  %or.cond.i = icmp eq i32 %i.f, -77
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cl = and i64 %i.ck, 9223372036854775806
  br label %_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.k:                                             ; preds = %bb.i
  %i.cm = icmp ult i64 %i.ck, %spec.select.i
  %i.cn = zext i1 %i.cm to i64
  %spec.select164 = add nuw i64 %i.ck, %i.cn
  br label %_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.l:                                             ; preds = %bb.b
  %i.co = or disjoint i64 %i.b, 4503599627370496
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.cp = icmp eq i64 %i.b, 0
  br i1 %i.cp, label %_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.042 = phi i64 [ %i.co, %bb.l ], [ %i.b, %bb.m ] ; 2 uses
  %.041 = phi i32 [ %i.f, %bb.l ], [ -1074, %bb.m ] ; 2 uses
  %i.cq = trunc i64 %.042 to i32                  ; 2 uses
  %i.cr = mul nsw i32 %.041, 315653
  %i.cs = ashr i32 %i.cr, 20                      ; 6 uses
  %i.ct = sub nsw i32 2, %i.cs                    ; 4 uses
  %i.cu = trunc nsw i32 %i.cs to i16
  %.lhs.trunc = sub nsw i16 294, %i.cu
  %i.cv = udiv i16 %.lhs.trunc, 27                ; 2 uses
  %narrow171 = mul nuw nsw i16 %i.cv, 27
  %i.cw = zext nneg i16 %narrow171 to i32
  %i.cx = add nsw i32 %i.cw, -292                 ; 3 uses
  %i.cy = zext nneg i16 %i.cv to i64
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr @_ZZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.cy ; 2 uses
  %.sroa.034.0.copyload.i70 = load i64, ptr %i.cz, align 16, !tbaa !276 ; 2 uses
  %.sroa.5.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.5.0.copyload.i72 = load i64, ptr %.sroa.5.0..sroa_idx.i71, align 8, !tbaa !276 ; 2 uses
  %i.da = icmp eq i32 %i.ct, %i.cx
  br i1 %i.da, label %._ZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit77_crit_edge, label %bb.o

._ZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit77_crit_edge: ; preds = %bb.n
  %.pre = mul nsw i32 %i.ct, 1741647
  %.pre182 = ashr i32 %.pre, 19
  br label %_ZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit77

bb.o:                                             ; preds = %bb.n
  %i.db = sub nsw i32 %i.ct, %i.cx                ; 2 uses
  %i.dc = mul nsw i32 %i.ct, 1741647
  %i.dd = ashr i32 %i.dc, 19                      ; 2 uses
  %i.de = mul nsw i32 %i.cx, 1741647
  %i.df = ashr i32 %i.de, 19
  %i.dg = add nsw i32 %i.db, %i.df
  %i.dh = sub nsw i32 %i.dd, %i.dg                ; 2 uses
  %i.di = sext i32 %i.db to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr @_ZZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64.const, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !276
  %i.dl = zext i64 %.sroa.5.0.copyload.i72 to i128
  %i.dm = zext i64 %i.dk to i128                  ; 2 uses
  %i.dn = mul nuw i128 %i.dm, %i.dl               ; 2 uses
  %i.do = lshr i128 %i.dn, 64
  %i.dp = trunc nuw i128 %i.do to i64
  %i.dq = trunc i128 %i.dn to i64
  %i.dr = zext i64 %.sroa.034.0.copyload.i70 to i128
  %i.ds = mul nuw i128 %i.dm, %i.dr               ; 2 uses
  %i.dt = lshr i128 %i.ds, 64
  %i.du = trunc nuw i128 %i.dt to i64
  %i.dv = trunc i128 %i.ds to i64
  %i.dw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dq, i64 %i.du) ; 2 uses
  %i.dx = extractvalue { i64, i1 } %i.dw, 1
  %i.dy = extractvalue { i64, i1 } %i.dw, 0       ; 2 uses
  %i.dz = zext i1 %i.dx to i64
  %i.ea = add nuw i64 %i.dz, %i.dp
  %i.eb = sub nsw i32 64, %i.dh
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = shl i64 %i.ea, %i.ec
  %i.ee = shl i64 %i.dy, %i.ec
  %i.ef = zext i32 %i.dh to i64                   ; 2 uses
  %i.eg = lshr i64 %i.dy, %i.ef
  %i.eh = or i64 %i.ed, %i.eg
  %i.ei = lshr i64 %i.dv, %i.ef
  %i.ej = or i64 %i.ee, %i.ei
  %i.ek = add i64 %i.ej, 1
  br label %_ZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit77

_ZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit77: ; preds = %._ZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit77_crit_edge, %bb.o
  %.pre-phi183 = phi i32 [ %.pre182, %._ZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit77_crit_edge ], [ %i.dd, %bb.o ]
  %.sroa.038.0.i73 = phi i64 [ %.sroa.034.0.copyload.i70, %._ZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit77_crit_edge ], [ %i.ek, %bb.o ]
  %.sroa.3.0.i74 = phi i64 [ %.sroa.5.0.copyload.i72, %._ZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit77_crit_edge ], [ %i.eh, %bb.o ] ; 4 uses
  %i.el = add nsw i32 %.pre-phi183, %.041         ; 4 uses
  %i.em = sub nsw i32 63, %i.el
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = lshr i64 %.sroa.3.0.i74, %i.en
  %i.ep = trunc i64 %i.eo to i32                  ; 3 uses
  %i.eq = shl nuw nsw i64 %.042, 1                ; 4 uses
  %i.er = or disjoint i64 %i.eq, 1
  %i.es = zext nneg i32 %i.el to i64              ; 3 uses
  %i.et = shl i64 %i.er, %i.es
  %i.eu = zext i64 %i.et to i128                  ; 2 uses
  %i.ev = zext i64 %.sroa.3.0.i74 to i128
  %i.ew = mul nuw i128 %i.ev, %i.eu               ; 2 uses
  %i.ex = lshr i128 %i.ew, 64
  %i.ey = trunc nuw i128 %i.ex to i64
  %i.ez = trunc i128 %i.ew to i64
  %5 = zext i64 %.sroa.038.0.i73 to i128          ; 3 uses
  %6 = mul nuw i128 %5, %i.eu
  %7 = lshr i128 %6, 64
  %8 = trunc nuw i128 %7 to i64
  %i.fa = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ez, i64 %8) ; 2 uses
  %i.fb = extractvalue { i64, i1 } %i.fa, 1
  %i.fc = extractvalue { i64, i1 } %i.fa, 0
  %i.fd = zext i1 %i.fb to i64
  %i.fe = add nuw i64 %i.fd, %i.ey                ; 2 uses
  %i.ff = icmp ne i64 %i.fc, 0
  %9 = zext i64 %i.fe to i128
  %10 = mul nuw nsw i128 %9, 2361183241434822607
  %sum.shift.i = lshr i128 %10, 71                ; 2 uses
  %11 = trunc nuw nsw i128 %sum.shift.i to i64    ; 5 uses
  %.neg = mul i64 %11, 4294966296
  %i.fg = add i64 %.neg, %i.fe
  %i.fh = trunc i64 %i.fg to i32                  ; 5 uses
  %i.fi = icmp ugt i32 %i.ep, %i.fh
  br i1 %i.fi, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit77
  %i.fj = icmp eq i32 %i.fh, 0
  br i1 %i.fj, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.fk = and i32 %i.cq, 1
  %.not49172 = icmp eq i32 %i.fk, 0
  %.not49 = select i1 %i.ff, i1 true, i1 %.not49172
  br i1 %.not49, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fl = add nsw i64 %11, -1
  br label %bb.y

bb.s:                                             ; preds = %_ZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit77
  %i.fm = icmp ult i32 %i.ep, %i.fh
  br i1 %i.fm, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fn = add nsw i64 %i.eq, -1                   ; 2 uses
  %i.fo = mul i64 %.sroa.3.0.i74, %i.fn
  %i.fp = zext nneg i64 %i.fn to i128
  %i.fq = mul nuw nsw i128 %5, %i.fp              ; 2 uses
  %i.fr = lshr i128 %i.fq, 64
  %i.fs = trunc nuw nsw i128 %i.fr to i64
  %i.ft = trunc i128 %i.fq to i64
  %i.fu = add i64 %i.fo, %i.fs                    ; 2 uses
  %i.fv = sub nsw i32 64, %i.el
  %i.fw = zext i32 %i.fv to i64                   ; 2 uses
  %i.fx = lshr i64 %i.fu, %i.fw
  %i.fy = trunc i64 %i.fx to i32
  %.sroa.06.0.insert.ext.i = and i32 %i.fy, 1
  %i.fz = shl i64 %i.fu, %i.es
  %i.ga = lshr i64 %i.ft, %i.fw
  %i.gb = or i64 %i.fz, %i.ga
  %i.gc = icmp eq i64 %i.gb, 0
  %i.gd = and i32 %i.cq, 1
  %i.ge = xor i32 %i.gd, 1
  %i.gf = select i1 %i.gc, i32 %i.ge, i32 0
  %i.gg = or i32 %i.gf, %.sroa.06.0.insert.ext.i
  %.not48 = icmp eq i32 %i.gg, 0
  br i1 %.not48, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p, %bb.q
  %i.gh = add nsw i32 %i.cs, 1
  %i.gi = mul nuw nsw i128 %sum.shift.i, 12379400392853802749 ; 3 uses
  %i.gj = trunc i128 %i.gi to i64
  %i.gk = and i128 %i.gi, 1237940020838636201189572608
  %i.gl = icmp eq i128 %i.gk, 0
  %i.gm = icmp ult i64 %i.gj, -6067343680855748867
  %or.cond165 = and i1 %i.gm, %i.gl
  br i1 %or.cond165, label %bb.v, label %.preheader

bb.v:                                             ; preds = %bb.u
  %i.gn = lshr i128 %i.gi, 90
  %i.go = trunc nuw nsw i128 %i.gn to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.0133 = phi i32 [ %i.go, %bb.v ], [ %i.gq, %bb.w ] ; 3 uses
  %.012.i.i59 = phi i32 [ 8, %bb.v ], [ %i.gs, %bb.w ] ; 2 uses
  %i.gp = mul i32 %.0133, -1030792151             ; 2 uses
  %i.gq = tail call i32 @llvm.fshl.i32(i32 %i.gp, i32 %i.gp, i32 30) ; 2 uses
  %i.gr = icmp ugt i32 %i.gq, 42949672
  %i.gs = add nuw nsw i32 %.012.i.i59, 2
  br i1 %i.gr, label %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit.i63, label %bb.w

_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit.i63: ; preds = %bb.w
  %i.gt = mul i32 %.0133, -858993459              ; 2 uses
  %i.gu = tail call i32 @llvm.fshl.i32(i32 %i.gt, i32 %i.gt, i32 31) ; 2 uses
  %.not.i.i62 = icmp ult i32 %i.gu, 429496730     ; 2 uses
  %spec.select166 = select i1 %.not.i.i62, i32 %i.gu, i32 %.0133
  %i.gv = zext i1 %.not.i.i62 to i32
  %spec.select167 = or disjoint i32 %.012.i.i59, %i.gv
  %i.gw = zext nneg i32 %spec.select166 to i64
  br label %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERm.exit65

.preheader:                                       ; preds = %bb.u, %.preheader
  %.sroa.098.4 = phi i64 [ %i.gy, %.preheader ], [ %11, %bb.u ] ; 5 uses
  %.0.i54 = phi i32 [ %i.ha, %.preheader ], [ 0, %bb.u ] ; 2 uses
  %i.gx = mul i64 %.sroa.098.4, -8116567392432202711
  %i.gy = tail call i64 @llvm.fshl.i64(i64 %.sroa.098.4, i64 %i.gx, i64 62) ; 2 uses
  %i.gz = icmp ugt i64 %i.gy, 184467440737095516
  %i.ha = add nuw nsw i32 %.0.i54, 2
  br i1 %i.gz, label %bb.x, label %.preheader

bb.x:                                             ; preds = %.preheader
  %i.hb = mul i64 %.sroa.098.4, -3689348814741910323
  %i.hc = tail call i64 @llvm.fshl.i64(i64 %.sroa.098.4, i64 %i.hb, i64 63) ; 2 uses
  %.not.i57 = icmp ult i64 %i.hc, 1844674407370955162 ; 2 uses
  %spec.select168 = select i1 %.not.i57, i64 %i.hc, i64 %.sroa.098.4
  %i.hd = zext i1 %.not.i57 to i32
  %spec.select169 = or disjoint i32 %.0.i54, %i.hd
  br label %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERm.exit65

_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERm.exit65: ; preds = %bb.x, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit.i63
  %.sroa.098.6 = phi i64 [ %i.gw, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit.i63 ], [ %spec.select168, %bb.x ]
  %.017.i58 = phi i32 [ %spec.select167, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERji.exit.i63 ], [ %spec.select169, %bb.x ]
  %i.he = add nsw i32 %i.gh, %.017.i58
  br label %_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.y:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.098.0 = phi i64 [ %i.fl, %bb.r ], [ %11, %bb.s ], [ %11, %bb.t ]
  %.0 = phi i32 [ 1000, %bb.r ], [ %i.fh, %bb.s ], [ %i.fh, %bb.t ]
  %i.hf = mul nsw i64 %.sroa.098.0, 10
  %i.hg = lshr i32 %i.ep, 1
  %i.hh = sub i32 %.0, %i.hg                      ; 2 uses
  %i.hi = mul i32 %i.hh, 656
  %i.hj = add i32 %i.hi, 32800                    ; 3 uses
  %i.hk = and i32 %i.hj, 65520
  %i.hl = icmp samesign ult i32 %i.hk, 656
  %i.hm = lshr i32 %i.hj, 16
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = add nsw i64 %i.hf, %i.hn                ; 3 uses
  br i1 %i.hl, label %bb.z, label %_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.z:                                             ; preds = %bb.y
  %i.hp = mul i64 %.sroa.3.0.i74, %i.eq
  %i.hq = zext nneg i64 %i.eq to i128
  %i.hr = mul nuw nsw i128 %5, %i.hq              ; 2 uses
  %i.hs = lshr i128 %i.hr, 64
  %i.ht = trunc nuw nsw i128 %i.hs to i64
  %i.hu = add i64 %i.hp, %i.ht                    ; 2 uses
  %i.hv = sub nsw i32 64, %i.el
  %i.hw = zext i32 %i.hv to i64                   ; 2 uses
  %i.hx = lshr i64 %i.hu, %i.hw
  %i.hy = trunc i64 %i.hx to i32
  %i.hz = xor i32 %i.hh, %i.hy
  %i.ia = and i32 %i.hz, 1
  %.not50 = icmp eq i32 %i.ia, 0
  br i1 %.not50, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ib = add nsw i64 %i.ho, -1
  br label %_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.ab:                                            ; preds = %bb.z
  %i.ic = shl i64 %i.hu, %i.es
  %i.id = trunc i128 %i.hr to i64
  %i.ie = lshr i64 %i.id, %i.hw
  %i.if = or i64 %i.ic, %i.ie
  %i.ig = icmp eq i64 %i.if, 0
  %i.ih = and i32 %i.hj, 65536
  %.not52173 = icmp ne i32 %i.ih, 0
  %.not52.not = and i1 %i.ig, %.not52173
  %i.ii = sext i1 %.not52.not to i64
  %spec.select170 = add nsw i64 %i.ho, %i.ii
  br label %_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

_ZN3fmt3v116detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit: ; preds = %bb.j, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERm.exit, %bb.k, %bb.ab, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERm.exit65, %bb.aa, %bb.y, %bb.m
  %.sroa.20.1 = phi i32 [ %i.cs, %bb.ab ], [ 0, %bb.m ], [ %i.he, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERm.exit65 ], [ %i.cs, %bb.aa ], [ %i.cs, %bb.y ], [ %i.j, %bb.j ], [ %i.cf, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERm.exit ], [ %i.j, %bb.k ]
  %.sroa.098.3 = phi i64 [ %spec.select170, %bb.ab ], [ 0, %bb.m ], [ %.sroa.098.6, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERm.exit65 ], [ %i.ib, %bb.aa ], [ %i.ho, %bb.y ], [ %i.cl, %bb.j ], [ %.sroa.0111.3, %_ZN3fmt3v116detail9dragonbox21remove_trailing_zerosERm.exit ], [ %spec.select164, %bb.k ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.098.3, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.20.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #20

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(20) %2, i32 noundef %3, ptr %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::locale", align 8       ; 8 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %i.e = alloca i8, align 1                       ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %6 = alloca %"class.fmt::v11::detail::digit_grouping", align 8 ; 13 uses
  %7 = alloca %class.anon.169, align 8            ; 13 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.fmt::v11::detail::digit_grouping", align 8 ; 13 uses
  %9 = alloca %class.anon.170, align 8            ; 12 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i8, align 1                       ; 6 uses
  %10 = alloca %class.anon.171, align 8           ; 10 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.k = load i64, ptr %1, align 8, !tbaa !926    ; 3 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.l = or i64 %i.k, 1
  %i.m = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.l, i1 true)
  %i.n = xor i64 %i.m, 63
  %i.o = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail15do_count_digitsEmE9bsr2log10.const, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !202   ; 2 uses
  %i.q = zext i8 %i.p to i32
  %i.r = zext i8 %i.p to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEmE20zero_or_powers_of_10.const, i64 %i.r
  %i.t = load i64, ptr %i.s, align 8, !tbaa !276
  %i.u = icmp ult i64 %i.k, %i.t
  %.neg.i.i.i = sext i1 %i.u to i32
  %i.v = add nsw i32 %.neg.i.i.i, %i.q            ; 3 uses
  store i32 %i.v, ptr %i.c, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i8 48, ptr %i.d, align 1, !tbaa !202
  %.not = icmp ne i32 %3, 0
  %i.w = zext i1 %.not to i32
  %i.x = add nsw i32 %i.v, %i.w
  %i.y = zext i32 %i.x to i64                     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.z = load i64, ptr %2, align 8, !tbaa !294    ; 2 uses
  %i.aa = and i64 %i.z, 16384
  %.not162 = icmp eq i64 %i.aa, 0
  br i1 %.not162, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %.not.i.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %4) #12
  br label %_ZNK3fmt3v116detail10locale_ref3getISt6localeEET_v.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #12
  br label %_ZNK3fmt3v116detail10locale_ref3getISt6localeEET_v.exit.i.i

_ZNK3fmt3v116detail10locale_ref3getISt6localeEET_v.exit.i.i: ; preds = %bb.d, %bb.c
  %i.ab = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #12
  %i.ac = load ptr, ptr %5, align 8, !tbaa !304
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !308
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !310 ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.not.i.i.i, label %bb.e, label %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i

bb.e:                                             ; preds = %_ZNK3fmt3v116detail10locale_ref3getISt6localeEET_v.exit.i.i
  invoke void @_ZSt16__throw_bad_castv() #42
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.e
  unreachable

_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i: ; preds = %_ZNK3fmt3v116detail10locale_ref3getISt6localeEET_v.exit.i.i
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !54
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef signext i8 %i.aj(ptr noundef nonnull align 8 dereferenceable(24) %i.ag)
          to label %_ZN3fmt3v116detail13decimal_pointIcEET_NS1_10locale_refE.exit unwind label %bb.f, !inline_history !22

common.resume:                                    ; preds = %bb.bk, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.al, %bb.f ], [ %.pn83.pn, %bb.bk ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i, %bb.e
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %common.resume

_ZN3fmt3v116detail13decimal_pointIcEET_NS1_10locale_refE.exit: ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit.i.i
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %.pre = load i32, ptr %i.c, align 4, !tbaa !88
  %.sroa.0148.0.copyload.pre = load i64, ptr %2, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_ZN3fmt3v116detail13decimal_pointIcEET_NS1_10locale_refE.exit
  %.sroa.0148.0.copyload = phi i64 [ %.sroa.0148.0.copyload.pre, %_ZN3fmt3v116detail13decimal_pointIcEET_NS1_10locale_refE.exit ], [ %i.z, %bb.a ]
  %i.am = phi i32 [ %.pre, %_ZN3fmt3v116detail13decimal_pointIcEET_NS1_10locale_refE.exit ], [ %i.v, %bb.a ] ; 7 uses
  %i.an = phi i8 [ %i.ak, %_ZN3fmt3v116detail13decimal_pointIcEET_NS1_10locale_refE.exit ], [ 46, %bb.a ] ; 3 uses
  store i8 %i.an, ptr %i.e, align 1, !tbaa !202
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !358 ; 3 uses
  %i.aq = add nsw i32 %i.am, %i.ap                ; 11 uses
  %i.ar = add nsw i32 %i.aq, -1                   ; 3 uses
  %.sroa.0148.0.copyload.fr = freeze i64 %.sroa.0148.0.copyload ; 12 uses
  %.sroa.5150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5150.0.copyload = load i32, ptr %.sroa.5150.0..sroa_idx, align 8 ; 9 uses
  %i.as = trunc i64 %.sroa.0148.0.copyload.fr to i8
  %i.at = and i8 %i.as, 7                         ; 2 uses
  switch i8 %i.at, label %bb.h [
    i8 1, label %_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlvE_clEv.exit.thread
    i8 2, label %_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlvE_clEv.exit.thread154
  ]

bb.h:                                             ; preds = %bb.g
  %i.au = icmp slt i32 %i.aq, -3
  br i1 %i.au, label %_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlvE_clEv.exit.thread, label %_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlvE_clEv.exit

_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlvE_clEv.exit: ; preds = %bb.h
  %i.av = icmp sgt i32 %.sroa.5150.0.copyload, 0
  %spec.select.i = select i1 %i.av, i32 %.sroa.5150.0.copyload, i32 16
  %.not163.not = icmp sgt i32 %i.aq, %spec.select.i
  br i1 %.not163.not, label %_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlvE_clEv.exit.thread, label %_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlvE_clEv.exit.thread154

_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlvE_clEv.exit.thread: ; preds = %bb.h, %bb.g, %_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlvE_clEv.exit
  %i.aw = and i64 %.sroa.0148.0.copyload.fr, 8192
  %.not168 = icmp eq i64 %i.aw, 0
  br i1 %.not168, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlvE_clEv.exit.thread
  %i.ax = sub nsw i32 %.sroa.5150.0.copyload, %i.am
  %spec.store.select = call i32 @llvm.smax.i32(i32 %i.ax, i32 0) ; 2 uses
  %i.ay = zext nneg i32 %spec.store.select to i64
  %i.az = add nuw nsw i64 %i.ay, %i.y
  br label %bb.l

bb.j:                                             ; preds = %_ZZN3fmt3v116detail14do_write_floatIcNS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEENS1_14digit_groupingIcEEEET0_SA_RKT1_RKNS0_12format_specsENS0_4signENS1_10locale_refEENKUlvE_clEv.exit.thread
  %i.ba = icmp eq i32 %i.am, 1
  br i1 %i.ba, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 0, ptr %i.e, align 1, !tbaa !202
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.bb = phi i8 [ %i.an, %bb.i ], [ 0, %bb.k ], [ %i.an, %bb.j ] ; 3 uses
  %.070 = phi i32 [ %spec.store.select, %bb.i ], [ 0, %bb.k ], [ 0, %bb.j ] ; 4 uses
  %.0 = phi i64 [ %i.az, %bb.i ], [ %i.y, %bb.k ], [ %i.y, %bb.j ]
  %i.bc = sub nsw i32 1, %i.aq
  %i.bd = icmp slt i32 %i.aq, 1
  %i.be = select i1 %i.bd, i32 %i.bc, i32 %i.ar   ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN3fmt3v116detail15format_hexfloatIdTnNSt9enable_ifIXntsr16is_double_doubleIT_EE5valueEiE4typeELi0EEEvS4_NS0_12format_specsERNS1_6bufferIcEE:bb.a
_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit56: ; preds = %bb.m, %bb.n
  %.pre-phi.i53 = phi i64 [ %i.eg, %bb.m ], [ %.pre2.i55, %bb.n ]
  %i.ek = phi i64 [ %i.ef, %bb.m ], [ %.pre.i54, %bb.n ]
  %i.el = load ptr, ptr %2, align 8, !tbaa !269
  store i64 %.pre-phi.i53, ptr %i.aj, align 8, !tbaa !270
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.ek
  store i8 48, ptr %i.em, align 1, !tbaa !202
  %i.en = add i32 %.290, 1                        ; 2 uses
  %exitcond.not = icmp eq i32 %i.en, %i.l
  br i1 %exitcond.not, label %._crit_edge, label %bb.m, !llvm.loop !1147

._crit_edge:                                      ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit56, %_ZN3fmt3v116detail6bufferIcE6appendIcEEvPKT_S7_.exit
  %i.eo = select i1 %.not85, i8 112, i8 80
  %i.ep = load i64, ptr %i.aj, align 8, !tbaa !270 ; 2 uses
  %i.eq = add i64 %i.ep, 1                        ; 3 uses
  %i.er = load i64, ptr %i.am, align 8, !tbaa !271
  %i.es = icmp ugt i64 %i.eq, %i.er
  br i1 %i.es, label %bb.o, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit61

bb.o:                                             ; preds = %._crit_edge
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !272
  call void %i.eu(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.eq), !inline_history !26
  %.pre.i59 = load i64, ptr %i.aj, align 8, !tbaa !270 ; 2 uses
  %.pre2.i60 = add i64 %.pre.i59, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit61

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit61: ; preds = %._crit_edge, %bb.o
  %.pre-phi.i58 = phi i64 [ %i.eq, %._crit_edge ], [ %.pre2.i60, %bb.o ]
  %i.ev = phi i64 [ %i.ep, %._crit_edge ], [ %.pre.i59, %bb.o ]
  %i.ew = load ptr, ptr %2, align 8, !tbaa !269
  store i64 %.pre-phi.i58, ptr %i.aj, align 8, !tbaa !270
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ev
  store i8 %i.eo, ptr %i.ex, align 1, !tbaa !202
  %i.ey = icmp slt i32 %i.j, 0
  %i.ez = load i64, ptr %i.aj, align 8, !tbaa !270 ; 3 uses
  %i.fa = add i64 %i.ez, 1                        ; 5 uses
  %i.fb = load i64, ptr %i.am, align 8, !tbaa !271
  %i.fc = icmp ugt i64 %i.fa, %i.fb               ; 2 uses
  br i1 %i.ey, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit61
  br i1 %i.fc, label %bb.q, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit66

bb.q:                                             ; preds = %bb.p
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !272
  call void %i.fe(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.fa), !inline_history !26
  %.pre.i64 = load i64, ptr %i.aj, align 8, !tbaa !270 ; 2 uses
  %.pre2.i65 = add i64 %.pre.i64, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit66

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit66: ; preds = %bb.p, %bb.q
  %.pre-phi.i63 = phi i64 [ %i.fa, %bb.p ], [ %.pre2.i65, %bb.q ]
  %i.ff = phi i64 [ %i.ez, %bb.p ], [ %.pre.i64, %bb.q ]
  %i.fg = load ptr, ptr %2, align 8, !tbaa !269
  store i64 %.pre-phi.i63, ptr %i.aj, align 8, !tbaa !270
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 %i.ff
  store i8 45, ptr %i.fh, align 1, !tbaa !202
  %i.fi = sub nsw i32 0, %i.j
  br label %bb.t

bb.r:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit61
  br i1 %i.fc, label %bb.s, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit71

bb.s:                                             ; preds = %bb.r
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !272
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.fa), !inline_history !26
  %.pre.i69 = load i64, ptr %i.aj, align 8, !tbaa !270 ; 2 uses
  %.pre2.i70 = add i64 %.pre.i69, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit71

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit71: ; preds = %bb.r, %bb.s
  %.pre-phi.i68 = phi i64 [ %i.fa, %bb.r ], [ %.pre2.i70, %bb.s ]
  %i.fl = phi i64 [ %i.ez, %bb.r ], [ %.pre.i69, %bb.s ]
  %i.fm = load ptr, ptr %2, align 8, !tbaa !269
  store i64 %.pre-phi.i68, ptr %i.aj, align 8, !tbaa !270
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  store i8 43, ptr %i.fn, align 1, !tbaa !202
  br label %bb.t

bb.t:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit71, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit66
  %.0 = phi i32 [ %i.fi, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit66 ], [ %i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit71 ] ; 3 uses
  %i.fo = or i32 %.0, 1
  %i.fp = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fo, i1 true)
  %i.fq = xor i32 %i.fp, 31
  %i.fr = zext nneg i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v116detail15do_count_digitsEjE5table.const, i64 %i.fr
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !276
  %i.fu = zext nneg i32 %.0 to i64
  %i.fv = add i64 %i.ft, %i.fu
  %i.fw = lshr i64 %i.fv, 32
  %i.fx = trunc nuw i64 %i.fw to i32
  %i.fy = call ptr @_ZN3fmt3v116detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXsr23is_back_insert_iteratorIT1_EE5valueEiE4typeELi0EEES6_S6_T0_i(ptr nonnull %2, i32 noundef %.0, i32 noundef %i.fx) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i32 @_ZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE(double noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(20) %2, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 10 uses
  %5 = alloca %"struct.fmt::v11::detail::basic_fp", align 16 ; 3 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !294
  %i.c = and i64 %i.b, 7
  %i.d = icmp eq i64 %i.c, 2                      ; 5 uses
  %i.e = fcmp oeq double %0, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.f, %i.d
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !270  ; 2 uses
  %i.i = add i64 %i.h, 1                          ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !271
  %i.l = icmp ugt i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !272
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.i), !inline_history !26
  %.pre.i = load i64, ptr %i.g, align 8, !tbaa !270 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.c, %bb.d
  %.pre-phi.i = phi i64 [ %i.i, %bb.c ], [ %.pre2.i, %bb.d ]
  %i.o = phi i64 [ %i.h, %bb.c ], [ %.pre.i, %bb.d ]
  %i.p = load ptr, ptr %4, align 8, !tbaa !269
  store i64 %.pre-phi.i, ptr %i.g, align 8, !tbaa !270
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o
  store i8 48, ptr %i.q, align 1, !tbaa !202
  br label %bb.be

bb.e:                                             ; preds = %bb.b
  %i.r = zext nneg i32 %1 to i64                  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !271  ; 2 uses
  %i.u = icmp ult i64 %i.t, %i.r
  br i1 %i.u, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !272
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.r), !inline_history !28
  %.pre.i137 = load i64, ptr %i.s, align 8, !tbaa !271
  br label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit

_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit:  ; preds = %bb.e, %bb.f
  %i.x = phi i64 [ %i.t, %bb.e ], [ %.pre.i137, %bb.f ]
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %i.r, i64 %i.x)
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !270
  %i.aa = load ptr, ptr %4, align 8, !tbaa !269
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 48, i64 %i.r, i1 false)
  %i.ab = sub nsw i32 0, %1
  br label %bb.be

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
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
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr @_ZZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.bb ; 2 uses
  %.sroa.034.0.copyload.i.i = load i64, ptr %i.bc, align 16, !tbaa !276 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !276 ; 2 uses
  %i.bd = icmp eq i32 %i.ar, %i.ba
  br i1 %i.bd, label %_ZN3fmt3v116detail9dragonbox16get_cached_powerEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = sub nsw i32 %i.ar, %i.ba                ; 2 uses
  %i.bf = mul nsw i32 %i.ba, 1741647
  %i.bg = ashr i32 %i.bf, 19
  %i.bh = add nsw i32 %i.be, %i.bg
  %i.bi = sub nsw i32 %i.at, %i.bh                ; 2 uses
  %i.bj = sext i32 %i.be to i64
  %i.bk = getelementptr inbounds [8 x i8], ptr @_ZZN3fmt3v116detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64.const, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !276
  %i.bm = zext i64 %.sroa.5.0.copyload.i.i to i128
  %i.bn = zext i64 %i.bl to i128                  ; 2 uses
  %i.bo = mul nuw i128 %i.bn, %i.bm               ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = trunc nuw i128 %i.bp to i64
  %i.br = trunc i128 %i.bo to i64
  %i.bs = zext i64 %.sroa.034.0.copyload.i.i to i128
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
  br label %_ZN3fmt3v116detail9dragonbox16get_cached_powerEi.exit

_ZN3fmt3v116detail9dragonbox16get_cached_powerEi.exit: ; preds = %bb.j, %bb.k
  %.sroa.038.0.i.i = phi i64 [ %i.cl, %bb.k ], [ %.sroa.034.0.copyload.i.i, %bb.j ]
  %.sroa.3.0.i.i = phi i64 [ %i.ci, %bb.k ], [ %.sroa.5.0.copyload.i.i, %bb.j ]
  %i.cm = zext i64 %i.aw to i128                  ; 2 uses
  %i.cn = zext i64 %.sroa.3.0.i.i to i128
  %i.co = mul nuw i128 %i.cn, %i.cm               ; 2 uses
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64
  %i.cr = trunc i128 %i.co to i64
  %6 = zext i64 %.sroa.038.0.i.i to i128
  %7 = mul nuw i128 %6, %i.cm
  %8 = lshr i128 %7, 64
  %9 = trunc nuw i128 %8 to i64
  %i.cs = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cr, i64 %9) ; 2 uses
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

bb.l:                                             ; preds = %_ZN3fmt3v116detail9dragonbox16get_cached_powerEi.exit
  %i.da = add nsw i32 %.0106, %.neg125            ; 3 uses
  %i.db = icmp sgt i32 %i.da, 0
  %i.dc = sub nuw nsw i32 2147483647, %i.da
  %i.dd = icmp sgt i32 %1, %i.dc
  %or.cond.i = select i1 %i.db, i1 %i.dd, i1 false
  br i1 %or.cond.i, label %bb.m, label %_ZN3fmt3v116detail16adjust_precisionERii.exit

bb.m:                                             ; preds = %bb.l
  %i.de = tail call ptr @__cxa_allocate_exception(i64 16) #12 ; 3 uses
  invoke void @_ZN3fmt3v1112format_errorCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.de, ptr noundef nonnull @.str.50)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTIN3fmt3v1112format_errorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #42
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.df = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.de) #12
  resume { ptr, i32 } %i.df

_ZN3fmt3v116detail16adjust_precisionERii.exit:    ; preds = %bb.l
  %i.dg = add nsw i32 %i.da, %1
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v116detail16adjust_precisionERii.exit, %_ZN3fmt3v116detail9dragonbox16get_cached_powerEi.exit
  %.0187 = phi i32 [ %i.dg, %_ZN3fmt3v116detail16adjust_precisionERii.exit ], [ %1, %_ZN3fmt3v116detail9dragonbox16get_cached_powerEi.exit ] ; 20 uses
  %.not131 = icmp sgt i32 %.0106, %.0187
  br i1 %.not131, label %bb.q, label %.thread219

bb.q:                                             ; preds = %bb.p
  %i.dh = icmp slt i32 %.0187, 1
  %i.di = add nsw i32 %.0106, %.neg125            ; 2 uses
  br i1 %i.dh, label %bb.r, label %bb.x

bb.r:                                             ; preds = %bb.q
  store i32 %i.di, ptr %i.a, align 4, !tbaa !88
  %i.dj = icmp slt i32 %.0187, 0
  br i1 %i.dj, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.dk, align 8, !tbaa !270
  br label %.thread

bb.t:                                             ; preds = %bb.r
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !271
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.u, label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit141

bb.u:                                             ; preds = %bb.t
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !272
  tail call void %i.dp(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1), !inline_history !28
  %.pre.i140 = load i64, ptr %i.dl, align 8, !tbaa !271
  %i.dq = icmp ne i64 %.pre.i140, 0
  %i.dr = zext i1 %i.dq to i64
  br label %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit141

_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit141: ; preds = %bb.t, %bb.u
  %i.ds = phi i64 [ 1, %bb.t ], [ %i.dr, %bb.u ]
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !270
  %i.du = zext i1 %i.cx to i64
  %i.dv = or i64 %.0107, %i.du
  %i.dw = icmp ugt i64 %i.dv, 5000000000000000000
  %i.dx = load ptr, ptr %4, align 8, !tbaa !269   ; 2 uses
  br i1 %i.dw, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit141
  store i8 49, ptr %i.dx, align 1, !tbaa !202
  br label %.thread

bb.w:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE10try_resizeEm.exit141
  store i8 48, ptr %i.dx, align 1, !tbaa !202
  br label %.thread

bb.x:                                             ; preds = %bb.q
  %i.dy = sub nsw i32 %i.di, %.0187               ; 2 uses
  store i32 %i.dy, ptr %i.a, align 4, !tbaa !88
  %10 = zext i64 %.0107 to i128
  %11 = mul nuw nsw i128 %10, 7922816251426433760
  %sum.shift = lshr i128 %11, 96
  %12 = trunc nuw nsw i128 %sum.shift to i64      ; 3 uses
  %.neg126 = mul i64 %12, -10000000000
  %i.dz = add i64 %.neg126, %.0107                ; 5 uses
  %i.ea = tail call i32 @llvm.umin.i32(i32 %.0187, i32 9) ; 3 uses
  %i.eb = load ptr, ptr %4, align 8, !tbaa !269   ; 6 uses
  %i.ec = and i32 %i.ea, 1
  %.not.i = icmp eq i32 %i.ec, 0
  br i1 %.not.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ed = mul nuw nsw i64 %12, 720575941
  %i.ee = lshr i64 %i.ed, 24
  %i.ef = add nuw nsw i64 %i.ee, 1                ; 2 uses
  %i.eg = lshr i64 %i.ef, 32                      ; 2 uses
  %i.eh = trunc nuw nsw i64 %i.eg to i8
  %i.ei = add nuw nsw i8 %i.eh, 48
  store i8 %i.ei, ptr %i.eb, align 1, !tbaa !202
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.ej = mul nuw nsw i64 %12, 450359963
  %i.ek = lshr i64 %i.ej, 20
  %i.el = add nuw nsw i64 %i.ek, 1                ; 2 uses
  %i.em = lshr i64 %i.el, 32                      ; 2 uses
  %i.en = shl nuw nsw i64 %i.em, 1
  %i.eo = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.en
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
  %i.ey = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ex
  %i.ez = load i16, ptr %i.ey, align 2
  store i16 %i.ez, ptr %i.ew, align 1
  %indvars.iv.next.i = add nuw nsw i64 %i.er, 2   ; 2 uses
  %i.fa = icmp samesign ult i64 %indvars.iv.next.i, %i.es
  br i1 %i.fa, label %bb.ab, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ab:                                            ; preds = %.lr.ph.i
  %i.fb = and i64 %i.eu, 4294967292
  %i.fc = mul nuw nsw i64 %i.fb, 100              ; 3 uses
  %i.fd = lshr i64 %i.fc, 32                      ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv.next.i
  %i.ff = shl nuw nsw i64 %i.fd, 1
  %i.fg = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ff
  %i.fh = load i16, ptr %i.fg, align 2
  store i16 %i.fh, ptr %i.fe, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %i.er, 4 ; 2 uses
  %i.fi = icmp samesign ult i64 %indvars.iv.next.i.1, %i.es
  br i1 %i.fi, label %bb.ac, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.fj = and i64 %i.fc, 4294967280
  %i.fk = mul nuw nsw i64 %i.fj, 100              ; 3 uses
  %i.fl = lshr i64 %i.fk, 32                      ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv.next.i.1
  %i.fn = shl nuw nsw i64 %i.fl, 1
  %i.fo = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.fn
  %i.fp = load i16, ptr %i.fo, align 2
  store i16 %i.fp, ptr %i.fm, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.er, 6 ; 2 uses
  %i.fq = icmp samesign ult i64 %indvars.iv.next.i.2, %i.es
  br i1 %i.fq, label %bb.ad, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fr = and i64 %i.fk, 4294967232
  %i.fs = mul nuw nsw i64 %i.fr, 100              ; 2 uses
  %i.ft = lshr i64 %i.fs, 32                      ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.eb, i64 %indvars.iv.next.i.2
  %i.fv = shl nuw nsw i64 %i.ft, 1
  %i.fw = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2
  store i16 %i.fx, ptr %i.fu, align 1
  br label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit: ; preds = %bb.ad, %bb.ac, %bb.ab, %.lr.ph.i
  %.lcssa290 = phi i64 [ %i.eu, %.lr.ph.i ], [ %i.fc, %bb.ab ], [ %i.fk, %bb.ac ], [ %i.fs, %bb.ad ]
  %.lcssa289 = phi i64 [ %i.ev, %.lr.ph.i ], [ %i.fd, %bb.ab ], [ %i.fl, %bb.ac ], [ %i.ft, %bb.ad ] ; 2 uses
  %i.fy = icmp samesign ult i32 %.0187, 10
  br i1 %i.fy, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %.not129 = icmp eq i32 %.0187, 9
  br i1 %.not129, label %bb.af, label %.thread269

.thread269:                                       ; preds = %bb.aa, %bb.ae
  %.2210266275 = phi i64 [ %.lcssa290, %bb.ae ], [ %.0208, %bb.aa ]
  %.1205268274.in = phi i64 [ %.lcssa289, %bb.ae ], [ %.0204.in, %bb.aa ]
  %i.fz = trunc i64 %.2210266275 to i32           ; 2 uses
  %i.ga = sub nuw nsw i32 8, %i.ea
  %i.gb = zext nneg i32 %i.ga to i64
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr @.str.69, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !1152
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

bb.ah:                                            ; preds = %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %13 = zext i64 %i.dz to i128
  %14 = mul nuw nsw i128 %13, 1844674407370955162
  %15 = lshr i128 %14, 64                         ; 2 uses
  %i.gi = trunc i128 %15 to i32
  %i.gj = trunc i64 %i.dz to i32
  %.neg127 = mul i32 %i.gi, -10
  %i.gk = add i32 %.neg127, %i.gj                 ; 3 uses
  %i.gl = add nsw i32 %.0187, -9                  ; 3 uses
  %i.gm = load ptr, ptr %4, align 8, !tbaa !269
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 9 ; 3 uses
  %i.go = and i32 %i.gl, 1
  %.not.i142 = icmp eq i32 %i.go, 0
  %16 = trunc nuw nsw i128 %15 to i64
  %i.gp = and i64 %16, 4294967295                 ; 2 uses
  br i1 %.not.i142, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gq = mul nuw nsw i64 %i.gp, 720575941
  %i.gr = lshr i64 %i.gq, 24
  %i.gs = add nuw nsw i64 %i.gr, 1                ; 2 uses
  %i.gt = lshr i64 %i.gs, 32                      ; 2 uses
  %i.gu = trunc nuw nsw i64 %i.gt to i8
  %i.gv = add nuw nsw i8 %i.gu, 48
  store i8 %i.gv, ptr %i.gn, align 1, !tbaa !202
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.gw = mul nuw nsw i64 %i.gp, 450359963
  %i.gx = lshr i64 %i.gw, 20
  %i.gy = add nuw nsw i64 %i.gx, 1                ; 2 uses
  %i.gz = lshr i64 %i.gy, 32                      ; 2 uses
  %i.ha = shl nuw nsw i64 %i.gz, 1
  %i.hb = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.ha
  %i.hc = load i16, ptr %i.hb, align 2
  store i16 %i.hc, ptr %i.gn, align 1
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.3211 = phi i64 [ %i.gy, %bb.aj ], [ %i.gs, %bb.ai ] ; 2 uses
  %.2206.in = phi i64 [ %i.gz, %bb.aj ], [ %i.gt, %bb.ai ]
  %.0.i143 = phi i32 [ 2, %bb.aj ], [ 1, %bb.ai ] ; 2 uses
  %i.hd = icmp samesign ult i32 %.0.i143, %i.gl
  br i1 %i.hd, label %.lr.ph.i144, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

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
  %i.hl = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v116detail7digits2EmE4data, i64 %i.hk
  %i.hm = load i16, ptr %i.hl, align 2
  store i16 %i.hm, ptr %i.hj, align 1
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 2 ; 2 uses
  %i.hn = icmp samesign ult i64 %indvars.iv.next.i146, %i.hf
  br i1 %i.hn, label %bb.al, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147, !llvm.loop !1148

_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147: ; preds = %bb.al
  %i.ho = icmp samesign ult i32 %.0187, 18
  br i1 %i.ho, label %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, label %bb.am

_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread: ; preds = %bb.ak, %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %.3207215.in = phi i64 [ %i.hi, %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.2206.in, %bb.ak ]
  %.5214 = phi i64 [ %i.hh, %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.3211, %bb.ak ]
  %i.hp = trunc i64 %.5214 to i32                 ; 2 uses
  %i.hq = sub nuw nsw i32 17, %.0187
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr @.str.69, i64 %i.hr
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !1152
  %.not128 = icmp ugt i32 %i.ht, %i.hp
  br i1 %.not128, label %.split217, label %.critedge134.thread

.split217:                                        ; preds = %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread
  %.3207215 = trunc nuw nsw i64 %.3207215.in to i32
  %i.hu = lshr i32 %i.hp, 31
  %i.hv = icmp ne i32 %i.gk, 0
  %i.hw = or i1 %i.hv, %i.cx
  %i.hx = zext i1 %i.hw to i32
  %i.hy = or i32 %i.hx, %.3207215
  %i.hz = and i32 %i.hu, %i.hy
  %i.ia = trunc nuw i32 %i.hz to i1
  br i1 %i.ia, label %.critedge134.thread, label %.critedge136

bb.am:                                            ; preds = %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
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

.critedge134.thread:                              ; preds = %bb.an, %bb.ag, %.split217, %bb.af, %_ZZN3fmt3v116detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, %bb.am
  %i.im = load ptr, ptr %4, align 8, !tbaa !269
  %i.in = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.io = getelementptr i8, ptr %i.im, i64 %i.in
  %i.ip = getelementptr i8, ptr %i.io, i64 -1     ; 2 uses
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !202
  %i.ir = add i8 %i.iq, 1
  store i8 %i.ir, ptr %i.ip, align 1, !tbaa !202
  br label %.lr.ph.preheader

.critedge134:                                     ; preds = %.thread269, %bb.ao
  %i.is = load ptr, ptr %4, align 8, !tbaa !269
  %i.it = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.iu = getelementptr i8, ptr %i.is, i64 %i.it
  %i.iv = getelementptr i8, ptr %i.iu, i64 -1     ; 2 uses
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !202
  %i.ix = add i8 %i.iw, 1
  store i8 %i.ix, ptr %i.iv, align 1, !tbaa !202
  %.not242 = icmp eq i32 %.0187, 1
  br i1 %.not242, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge134.thread, %.critedge134
  %i.iy = phi i64 [ %i.in, %.critedge134.thread ], [ %i.it, %.critedge134 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ap
  %indvars.iv = phi i64 [ %i.iy, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.ap ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.iz = load ptr, ptr %4, align 8, !tbaa !269
  %i.ja = and i64 %indvars.iv.next, 4294967295
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.ja ; 2 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !202
  %i.jd = icmp sgt i8 %i.jc, 57
  br i1 %i.jd, label %bb.ap, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.ap, %.critedge134
  %i.je = phi i64 [ 1, %.critedge134 ], [ %i.iy, %bb.ap ], [ %i.iy, %.lr.ph ]
  %i.jf = load ptr, ptr %4, align 8, !tbaa !269   ; 2 uses
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !202
  %i.jh = icmp sgt i8 %i.jg, 57
  br i1 %i.jh, label %bb.aq, label %.critedge136

bb.ap:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.jb, align 1, !tbaa !202
  %i.ji = load ptr, ptr %4, align 8, !tbaa !269
  %i.jj = getelementptr i8, ptr %i.ji, i64 %indvars.iv
  %i.jk = getelementptr i8, ptr %i.jj, i64 -2     ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !202
  %i.jm = add i8 %i.jl, 1
  store i8 %i.jm, ptr %i.jk, align 1, !tbaa !202
  %i.jn = trunc nuw i64 %indvars.iv to i32
  %i.jo = icmp sgt i32 %i.jn, 2
  br i1 %i.jo, label %.lr.ph, label %.critedge, !llvm.loop !1149

bb.aq:                                            ; preds = %.critedge
  store i8 49, ptr %i.jf, align 1, !tbaa !202
  br i1 %i.d, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.jp = add nuw nsw i32 %.0187, 1
  %i.jq = load ptr, ptr %4, align 8, !tbaa !269
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.je
  store i8 48, ptr %i.jr, align 1, !tbaa !202
  br label %.critedge136

bb.as:                                            ; preds = %bb.aq
  %i.js = add nsw i32 %i.dy, 1
  store i32 %i.js, ptr %i.a, align 4, !tbaa !88
  br label %.critedge136

.critedge136:                                     ; preds = %.split217, %bb.an, %bb.ag, %.critedge, %bb.as, %bb.ar, %bb.ao
  %.1188 = phi i32 [ %i.jp, %bb.ar ], [ %.0187, %bb.as ], [ %.0187, %.critedge ], [ %.0187, %bb.ao ], [ 9, %bb.ag ], [ 18, %bb.an ], [ %.0187, %.split217 ]
  %i.jt = zext nneg i32 %.1188 to i64             ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.jv = load i64, ptr %i.ju, align 8, !tbaa !271 ; 2 uses
  %i.jw = icmp ult i64 %i.jv, %i.jt
  br i1 %i.jw, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.critedge136
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !272
  tail call void %i.jy(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.jt), !inline_history !28
  %.pre.i148 = load i64, ptr %i.ju, align 8, !tbaa !271
  br label %bb.au

.thread219:                                       ; preds = %bb.p
  %i.jz = add nsw i32 %i.aq, -3
  %i.ka = add nsw i32 %i.jz, %.0106
  store i32 %i.ka, ptr %i.a, align 4, !tbaa !88
  br i1 %3, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.at, %.critedge136
  %i.kb = phi i64 [ %i.jv, %.critedge136 ], [ %.pre.i148, %bb.at ]
  %i.kc = tail call noundef i64 @llvm.umin.i64(i64 %i.jt, i64 %i.kb)
  %i.kd = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.kc, ptr %i.kd, align 8, !tbaa !270
  br label %.thread

bb.av:                                            ; preds = %.thread219
  %i.ke = fptrunc double %0 to float
  %i.kf = bitcast float %i.ke to i32              ; 2 uses
  %i.kg = and i32 %i.kf, 8388607                  ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN8LightGBM4Tree7AddBiasEd.omp_outlined:bb.a
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa = phi i32 [ %i.bk, %._crit_edge ], [ %i.j, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !88
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN8LightGBM4Tree7AddBiasEd.omp_outlined.190(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3) #11 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !117  ; 2 uses
  %i.g = add nsw i32 %i.f, -2                     ; 3 uses
  %i.h = icmp sgt i32 %i.f, 1
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 0, ptr %i.a, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 %i.g, ptr %i.b, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store i32 1, ptr %i.c, align 4, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4, !tbaa !88
  %i.i = load i32, ptr %0, align 4, !tbaa !88     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 33, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1024)
  %.promoted = load i32, ptr %i.b, align 4, !tbaa !88
  %.promoted17 = load i32, ptr %i.a, align 4, !tbaa !88 ; 2 uses
  %i.j = call i32 @llvm.smin.i32(i32 %.promoted, i32 %i.g) ; 3 uses
  %.not18 = icmp sgt i32 %.promoted17, %i.j
  br i1 %.not18, label %bb.c, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 576
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68   ; 4 uses
  %i.m = load i32, ptr %i.c, align 4, !tbaa !88   ; 2 uses
  %i.n = sext i32 %.promoted17 to i64             ; 4 uses
  %i.o = sext i32 %i.m to i64                     ; 4 uses
  %i.p = shl nsw i64 %i.n, 3                      ; 2 uses
  %i.q = shl nsw i64 %i.o, 3
  %scevgep32 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = getelementptr i8, ptr %i.l, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %i.t = getelementptr i8, ptr %i.l, i64 %i.p
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ %i.n, %.preheader.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 7 uses
  %i.u = phi i32 [ %i.j, %.preheader.lr.ph ], [ %i.bb, %.loopexit ] ; 2 uses
  %i.v = mul i64 %indvar, %i.o
  %i.w = add i64 %i.v, %i.n
  %i.x = sext i32 %i.u to i64                     ; 3 uses
  %i.y = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %i.x)
  %reass.sub = sub i64 %i.y, %i.w
  %i.z = add i64 %reass.sub, 1                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.aa = mul i64 %indvar, %i.o
  %i.ab = add i64 %i.aa, %i.n
  %i.ac = mul i64 %i.q, %indvar                   ; 2 uses
  %scevgep30 = getelementptr i8, ptr %i.s, i64 %i.ac
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.ac
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv, i64 %i.x)
  %i.ad = sub i64 %smax, %i.ab
  %i.ae = shl i64 %i.ad, 3
  %scevgep31 = getelementptr i8, ptr %scevgep30, i64 %i.ae
  %bound0 = icmp ult ptr %scevgep, %scevgep32
  %bound1 = icmp ult ptr %3, %scevgep31
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -4                       ; 3 uses
  %i.af = add i64 %indvars.iv, %n.vec
  %i.ag = load double, ptr %3, align 8, !tbaa !118, !alias.scope !1420
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.ag, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.ai, align 8, !tbaa !118, !alias.scope !1421, !noalias !1420
  %wide.load33 = load <2 x double>, ptr %i.aj, align 8, !tbaa !118, !alias.scope !1421, !noalias !1420
  %i.ak = fadd <2 x double> %wide.load, %broadcast.splat ; 2 uses
  %i.al = fadd <2 x double> %wide.load33, %broadcast.splat ; 2 uses
  %i.am = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ak)
  %i.an = call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.al)
  %i.ao = fcmp ole <2 x double> %i.am, splat (double f0x38AA95A5C0000000)
  %i.ap = fcmp ole <2 x double> %i.an, splat (double f0x38AA95A5C0000000)
  %i.aq = select <2 x i1> %i.ao, <2 x double> zeroinitializer, <2 x double> %i.ak
  %i.ar = select <2 x i1> %i.ap, <2 x double> zeroinitializer, <2 x double> %i.al
  store <2 x double> %i.aq, ptr %i.ai, align 8, !tbaa !118, !alias.scope !1421, !noalias !1420
  store <2 x double> %i.ar, ptr %i.aj, align 8, !tbaa !118, !alias.scope !1421, !noalias !1420
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !1418

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv22.ph = phi i64 [ %indvars.iv, %vector.memcheck ], [ %indvars.iv, %.preheader ], [ %i.af, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %scalar.ph ], [ %indvars.iv22.ph, %scalar.ph.preheader ] ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv22 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !118
  %i.av = load double, ptr %3, align 8, !tbaa !118
  %i.aw = fadd double %i.au, %i.av                ; 2 uses
  %i.ax = call double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ole double %i.ax, f0x38AA95A5C0000000
  %i.az = select i1 %i.ay, double 0.000000e+00, double %i.aw
  store double %i.az, ptr %i.at, align 8, !tbaa !118
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, 1
  %.not15.not = icmp slt i64 %indvars.iv22, %i.x
  br i1 %.not15.not, label %scalar.ph, label %.loopexit, !llvm.loop !1419

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  %indvars.iv.next = add i64 %indvars.iv, %i.o    ; 2 uses
  %indvars = trunc i64 %indvars.iv.next to i32    ; 2 uses
  %i.ba = add nsw i32 %i.m, %i.u
  %i.bb = call i32 @llvm.smin.i32(i32 %i.ba, i32 %i.g) ; 3 uses
  %.not = icmp slt i32 %i.bb, %indvars
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %.loopexit
  store i32 %indvars, ptr %i.a, align 4, !tbaa !88
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa = phi i32 [ %i.bb, %._crit_edge ], [ %i.j, %bb.b ]
  store i32 %.lcssa, ptr %i.b, align 4, !tbaa !88
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #38 section ".text.startup" comdat($_ZN3fmt3v1112format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1112format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #39

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #40

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #20

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind memory(none) }
attributes #16 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn }
attributes #18 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #25 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold noreturn }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind }
attributes #33 = { inlinehint mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #40 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #41 = { builtin nounwind }
attributes #42 = { noreturn }
attributes #43 = { builtin allocsize(0) }
attributes #44 = { noreturn nounwind }
attributes #45 = { cold nounwind }
attributes #46 = { nounwind allocsize(0) }
attributes #47 = { nounwind willreturn memory(read) }
attributes #48 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!43, !44, !45, !46}
!llvm.ident = !{!47}
!llvm.errno.tbaa = !{!52}

!0 = distinct !{!0, !64}
!1 = distinct !{!1, !64}
!2 = distinct !{!2, !64}
!3 = distinct !{null}
!4 = distinct !{!4, !64}
!5 = distinct !{!5, !64}
!6 = distinct !{!6, !64}
!7 = distinct !{!7, !64}
!8 = distinct !{null, null}
!9 = distinct !{null, null, null}
!10 = distinct !{null, null, null}
!11 = distinct !{!11, !64}
!12 = distinct !{!12, !64}
!13 = distinct !{!13, !64}
!14 = distinct !{!14, !64}
!15 = distinct !{null, null}
!16 = distinct !{null, null, null}
!17 = distinct !{null}
!18 = distinct !{null}
!19 = distinct !{!19, !64}
!20 = distinct !{!20, !64}
!21 = distinct !{!21, !64}
!22 = distinct !{null}
!23 = distinct !{!23, !64}
!24 = distinct !{null, null, null, null}
!25 = distinct !{null}
!26 = distinct !{null, null}
!27 = distinct !{null, null}
!28 = distinct !{null, null}
!29 = distinct !{!29, !64}
!30 = distinct !{!30, !64}
!31 = distinct !{!31, !64}
!32 = distinct !{null, null, null, null}
!33 = distinct !{null, null, null, null}
!34 = distinct !{!34, !64}
!35 = distinct !{!35, !64}
!36 = distinct !{!36, !64}
!37 = distinct !{!37, !64}
!38 = distinct !{!38, !64}
!39 = distinct !{!39, !64}
!40 = distinct !{!40, !64}
!41 = distinct !{!41, !64}
!42 = distinct !{!42, !64}
!43 = !{i32 1, !"long-double-type", !"x86_fp80"}
!44 = !{i32 7, !"openmp", i32 51}
!45 = !{i32 8, !"PIC Level", i32 2}
!46 = !{i32 7, !"uwtable", i32 2}
!47 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"omnipotent char", !48, i64 0}
!50 = !{!"int", !49, i64 0}
!51 = !{!"__libc_errno", !50, i64 0}
!52 = !{!51, !50, i64 0}
!53 = !{!"vtable pointer", !48, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"any pointer", !49, i64 0}
!56 = !{!"p1 _ZTSSt6vectorIiSaIiEE", !55, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseISt6vectorIiSaIiEESaIS2_EE17_Vector_impl_dataE", !56, i64 0, !56, i64 8, !56, i64 16}
!58 = !{!57, !56, i64 0}
!59 = !{!57, !56, i64 8}
!60 = !{!"p1 int", !55, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!62 = !{!61, !60, i64 0}
!63 = !{!61, !60, i64 16}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!57, !56, i64 16}
!66 = !{!"p1 double", !55, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !66, i64 0, !66, i64 8, !66, i64 16}
!68 = !{!67, !66, i64 0}
!69 = !{!67, !66, i64 16}
!70 = !{!"p1 _ZTSSt6vectorIdSaIdEE", !55, i64 0}
!71 = !{!"_ZTSNSt12_Vector_baseISt6vectorIdSaIdEESaIS2_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!72 = !{!71, !70, i64 0}
!73 = !{!71, !70, i64 8}
!74 = !{!71, !70, i64 16}
!75 = !{!"p1 float", !55, i64 0}
!76 = !{!"_ZTSNSt12_Vector_baseIfSaIfEE17_Vector_impl_dataE", !75, i64 0, !75, i64 8, !75, i64 16}
!77 = !{!76, !75, i64 0}
!78 = !{!76, !75, i64 16}
!79 = !{!"p1 omnipotent char", !55, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!80, !79, i64 0}
!82 = !{!80, !79, i64 16}
!83 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!84 = !{!83, !60, i64 0}
!85 = !{!83, !60, i64 16}
!86 = !{!"p1 _ZTSN8LightGBM7DatasetE", !55, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!50, !50, i64 0}
!89 = !{!66, !66, i64 0}
!90 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !61, i64 0}
!91 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !90, i64 0}
!92 = !{!"_ZTSSt6vectorIiSaIiEE", !91, i64 0}
end_hunk_3
