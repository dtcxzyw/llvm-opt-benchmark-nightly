Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/fptostring?download=true
inline.NumInlined: 309
inline.NumDeleted: 181
begin_hunk_0_@_ZN4YAML10FpToStringB5cxx11Eem:bb.a
  %i.at = getelementptr i8, ptr %i.ar, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %3, i64 %i.au
  store ptr %i.as, ptr %i.av, align 8, !tbaa !13
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.aw, align 8, !tbaa !28
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(264) dereferenceable(264) %i.ax) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #2 align 2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5imbueERKSt6locale(ptr dead_on_unwind writable sret(%"class.std::locale") align 8, ptr noundef nonnull align 8 dereferenceable(264), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6locale7classicEv() local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f32(float, i32 immarg) #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, i8 } @_ZN4YAML3jkj9dragonbox6detail4implINS1_21ieee754_binary_traitsINS1_16ieee754_binary32EjiEEE15compute_nearestINS1_6policy4sign13return_sign_tENS9_13trailing_zero8remove_tENS9_26decimal_to_binary_rounding17nearest_to_even_tENS9_26binary_to_decimal_rounding9to_even_tENS9_5cache6full_tENS9_23preferred_integer_types7match_tEEENS1_10decimal_fpIjNT4_21decimal_exponent_typeIS6_XcviclL_ZNS7_3minEiiEngL_ZNS7_5max_kEEL_ZNS7_5min_kEEEEXcviclL_ZNS7_3maxEiiEL_ZNS7_5max_kEEplplngL_ZNS7_5min_kEEL_ZNS7_5kappaEELi1EEEEEXsrT_15return_has_signEXsrT0_21report_trailing_zerosEEENS1_23signed_significand_bitsIS6_EEi(i32 %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = shl i32 %0, 1                            ; 3 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %1, -150                     ; 4 uses
  %i.c = icmp eq i32 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = sext i32 %i.b to i64
  %i.e = mul nsw i64 %i.d, 19728
  %i.f = add nsw i64 %i.e, 281474976702400
  %i.g = lshr i64 %i.f, 16                        ; 3 uses
  %.neg187 = mul i64 %i.g, -4294967296
  %i.h = ashr exact i64 %.neg187, 32              ; 2 uses
  %i.i = mul nsw i64 %i.h, 1701
  %i.j = lshr i64 %i.i, 9
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.b, %i.k                       ; 2 uses
  %i.m = getelementptr [8 x i8], ptr @_ZN4YAML3jkj9dragonbox12cache_holderINS1_16ieee754_binary32EvE5cacheE, i64 %i.h
  %i.n = getelementptr i8, ptr %i.m, i64 248
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32   ; 5 uses
  %i.p = lshr i64 %i.o, 25
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = sub nsw i32 40, %i.l
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = lshr i64 %i.q, %i.s
  %i.u = trunc i64 %i.t to i32
  %i.v = lshr i64 %i.o, 24
  %i.w = add i64 %i.v, %i.o
  %i.x = lshr i64 %i.w, %i.s
  %i.y = and i32 %i.b, -2
  %i.z = icmp ne i32 %i.y, 2
  %i.aa = zext i1 %i.z to i32
  %spec.select = add i32 %i.u, %i.aa              ; 2 uses
  %i.ab = and i64 %i.x, 4294967295
  %i.ac = mul nuw nsw i64 %i.ab, 429496730
  %i.ad = lshr i64 %i.ac, 32
  %i.ae = trunc nuw nsw i64 %i.ad to i32          ; 3 uses
  %i.af = mul nuw i32 %i.ae, 10
  %.not117 = icmp ult i32 %i.af, %spec.select
  br i1 %.not117, label %bb.d, label %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit

_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit: ; preds = %bb.c
  %i.ag = mul i32 %i.ae, 184254097                ; 2 uses
  %i.ah = tail call i32 @llvm.fshl.i32(i32 %i.ag, i32 %i.ag, i32 28) ; 2 uses
  %i.ai = icmp ult i32 %i.ah, 429497              ; 2 uses
  %spec.select183.a = select i1 %i.ai, i64 2, i64 0
  %spec.select184.a = select i1 %i.ai, i32 %i.ah, i32 %i.ae ; 2 uses
  %i.aj = mul i32 %spec.select184.a, 42949673     ; 2 uses
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.aj, i32 30) ; 2 uses
  %i.al = icmp ult i32 %i.ak, 42949673            ; 2 uses
  %i.am = select i1 %i.al, i32 %i.ak, i32 %spec.select184.a ; 2 uses
  %i.an = mul i32 %i.am, 1288490189               ; 2 uses
  %i.ao = tail call i32 @llvm.fshl.i32(i32 %i.an, i32 %i.an, i32 31) ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 429496730           ; 2 uses
  %i.aq = select i1 %i.ap, i32 %i.ao, i32 %i.am
  %i.ar = zext i1 %i.al to i64
  %i.as = or disjoint i64 %spec.select183.a, %i.ar
  %i.at = shl nuw nsw i64 %i.as, 1
  %i.au = zext i1 %i.ap to i64
  %i.av = add nuw nsw i64 %i.g, 1
  %i.aw = add nuw nsw i64 %i.av, %i.at
  %i.ax = add nuw nsw i64 %i.aw, %i.au
  %.sroa.2.0.insert.ext.i123 = shl i64 %i.ax, 32
  br label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.ay = sub nsw i32 39, %i.l
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 %i.o, %i.az
  %i.bb = trunc i64 %i.ba to i32
  %i.bc = add i32 %i.bb, 1
  %i.bd = lshr i32 %i.bc, 1                       ; 3 uses
  %i.be = trunc i32 %i.bd to i1
  %i.bf = icmp eq i32 %1, 115
  %or.cond3 = and i1 %i.bf, %i.be
  %i.bg = icmp ult i32 %i.bd, %spec.select
  %i.bh = zext i1 %i.bg to i32
  %.0100.v = select i1 %or.cond3, i32 -1, i32 %i.bh
  %.0100 = add i32 %.0100.v, %i.bd
  %.sroa.2.0.insert.ext.i128 = shl i64 %i.g, 32
  br label %bb.o

bb.e:                                             ; preds = %bb.b
  %i.bi = or i32 %i.a, 16777216
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.098 = phi i32 [ %i.b, %bb.e ], [ -149, %bb.a ] ; 2 uses
  %.0 = phi i32 [ %i.bi, %bb.e ], [ %i.a, %bb.a ] ; 3 uses
  %i.bj = sext i32 %.098 to i64
  %i.bk = mul nsw i64 %i.bj, 1233
  %i.bl = lshr i64 %i.bk, 12                      ; 2 uses
  %i.bm = shl i64 %i.bl, 32                       ; 4 uses
  %sext = sub i64 4294967296, %i.bm
  %i.bn = ashr exact i64 %sext, 32                ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr @_ZN4YAML3jkj9dragonbox12cache_holderINS1_16ieee754_binary32EvE5cacheE, i64 %i.bn
  %i.bp = getelementptr i8, ptr %i.bo, i64 248
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !32 ; 4 uses
  %i.br = mul nsw i64 %i.bn, 1701
  %i.bs = lshr i64 %i.br, 9
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = add i32 %.098, %i.bt                    ; 6 uses
  %i.bv = sub nsw i32 63, %i.bu
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = lshr i64 %i.bq, %i.bw
  %i.by = trunc i64 %i.bx to i32                  ; 3 uses
  %i.bz = or i32 %.0, 1
  %i.ca = shl i32 %i.bz, %i.bu
  %i.cb = zext i32 %i.ca to i64
  %i.cc = shl nuw i64 %i.cb, 32
  %i.cd = zext i64 %i.cc to i128
  %i.ce = zext i64 %i.bq to i128
  %i.cf = mul nuw i128 %i.cd, %i.ce
  %i.cg = lshr i128 %i.cf, 64
  %i.ch = trunc nuw i128 %i.cg to i64             ; 2 uses
  %i.ci = lshr i64 %i.ch, 32                      ; 2 uses
  %.sroa.033.0.extract.trunc = trunc nuw i64 %i.ci to i32
  %i.cj = mul nuw nsw i64 %i.ci, 1374389535
  %i.ck = lshr i64 %i.cj, 37
  %i.cl = trunc nuw nsw i64 %i.ck to i32          ; 6 uses
  %.neg = mul i32 %i.cl, -100
  %i.cm = add i32 %.neg, %.sroa.033.0.extract.trunc ; 5 uses
  %i.cn = icmp ult i32 %i.cm, %i.by
  br i1 %i.cn, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.co = and i64 %i.ch, 4294967295
  %i.cp = icmp ne i64 %i.co, 0
  %i.cq = trunc i32 %0 to i1
  %i.cr = xor i1 %i.cq, true
  %i.cs = or i1 %i.cp, %i.cr
  %i.ct = zext i1 %i.cs to i32
  %i.cu = or i32 %i.cm, %i.ct
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %bb.h, label %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit127

bb.h:                                             ; preds = %bb.g
  %i.cw = add nsw i32 %i.cl, -1
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.cx = icmp ugt i32 %i.cm, %i.by
  br i1 %i.cx, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cy = add i32 %.0, -1
  %i.cz = zext i32 %i.cy to i64
  %i.da = mul i64 %i.bq, %i.cz                    ; 2 uses
  %i.db = sub nsw i32 64, %i.bu
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = lshr i64 %i.da, %i.dc
  %2 = trunc i64 %i.dd to i1
  %i.de = sub nsw i32 32, %i.bu
  %i.df = zext nneg i32 %i.de to i64
  %i.dg = shl i64 4294967295, %i.df
  %i.dh = and i64 %i.dg, %i.da
  %i.di = icmp eq i64 %i.dh, 0
  %i.dj = and i32 %0, 1
  %.not188.not = icmp eq i32 %i.dj, 0
  %narrow = select i1 %.not188.not, i1 %i.di, i1 false
  %.not111 = or i1 %narrow, %2
  br i1 %.not111, label %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit127, label %bb.k

_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit127: ; preds = %bb.j, %bb.g
  %i.dk = mul i32 %i.cl, 184254097                ; 2 uses
  %i.dl = tail call i32 @llvm.fshl.i32(i32 %i.dk, i32 %i.dk, i32 28) ; 2 uses
  %i.dm = icmp ult i32 %i.dl, 429497              ; 2 uses
  %spec.select185.a = select i1 %i.dm, i64 2, i64 0
  %spec.select186 = select i1 %i.dm, i32 %i.dl, i32 %i.cl ; 2 uses
  %i.dn = mul i32 %spec.select186, 42949673       ; 2 uses
  %i.do = tail call i32 @llvm.fshl.i32(i32 %i.dn, i32 %i.dn, i32 30) ; 2 uses
  %i.dp = icmp ult i32 %i.do, 42949673            ; 2 uses
  %i.dq = select i1 %i.dp, i32 %i.do, i32 %spec.select186 ; 2 uses
  %i.dr = mul i32 %i.dq, 1288490189               ; 2 uses
  %i.ds = tail call i32 @llvm.fshl.i32(i32 %i.dr, i32 %i.dr, i32 31) ; 2 uses
  %i.dt = icmp ult i32 %i.ds, 429496730           ; 2 uses
  %i.du = select i1 %i.dt, i32 %i.ds, i32 %i.dq
  %i.dv = zext i1 %i.dp to i64
  %i.dw = or disjoint i64 %spec.select185.a, %i.dv
  %i.dx = shl nuw nsw i64 %i.dw, 1
  %i.dy = zext i1 %i.dt to i64
  %i.dz = add nuw nsw i64 %i.bl, 1
  %i.ea = add nuw nsw i64 %i.dz, %i.dx
  %i.eb = add nuw nsw i64 %i.ea, %i.dy
  %.sroa.2.0.insert.ext.i = shl i64 %i.eb, 32
  br label %bb.o

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0103 = phi i32 [ %i.cw, %bb.h ], [ %i.cl, %bb.i ], [ %i.cl, %bb.j ]
  %.0102 = phi i32 [ 100, %bb.h ], [ %i.cm, %bb.i ], [ %i.cm, %bb.j ]
  %i.ec = mul nsw i32 %.0103, 10
  %i.ed = lshr i32 %i.by, 1
  %i.ee = sub i32 %.0102, %i.ed                   ; 2 uses
  %i.ef = add i32 %i.ee, 5
  %i.eg = zext i32 %i.ef to i64
  %i.eh = mul nuw nsw i64 %i.eg, 6554             ; 2 uses
  %i.ei = and i64 %i.eh, 65534
  %i.ej = icmp samesign ult i64 %i.ei, 6554
  %i.ek = lshr i64 %i.eh, 16                      ; 2 uses
  %i.el = trunc nuw nsw i64 %i.ek to i32
  %i.em = add nsw i32 %i.ec, %i.el                ; 3 uses
  br i1 %i.ej, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.en = zext i32 %.0 to i64
  %i.eo = mul i64 %i.bq, %i.en                    ; 2 uses
  %i.ep = sub nsw i32 64, %i.bu
  %i.eq = zext nneg i32 %i.ep to i64
  %i.er = lshr i64 %i.eo, %i.eq
  %i.es = trunc i64 %i.er to i32
  %i.et = xor i32 %i.ee, %i.es
  %.not113 = trunc i32 %i.et to i1
  br i1 %.not113, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eu = add nsw i32 %i.em, -1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ev = sub nsw i32 32, %i.bu
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = shl i64 4294967295, %i.ew
  %i.ey = and i64 %i.ex, %i.eo
  %i.ez = icmp eq i64 %i.ey, 0
  %i.fa = trunc i64 %i.ek to i1
  %.not114.not = and i1 %i.ez, %i.fa
  %i.fb = sext i1 %.not114.not to i32
  %spec.select122 = add nsw i32 %i.em, %i.fb
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit127, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit, %bb.d
  %.sink = phi i32 [ %i.du, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit127 ], [ %.0100, %bb.d ], [ %i.aq, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit ], [ %i.em, %bb.k ], [ %i.eu, %bb.m ], [ %spec.select122, %bb.n ]
  %.sroa.2.0.insert.ext.i.sink = phi i64 [ %.sroa.2.0.insert.ext.i, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit127 ], [ %.sroa.2.0.insert.ext.i128, %bb.d ], [ %.sroa.2.0.insert.ext.i123, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit ], [ %i.bm, %bb.k ], [ %i.bm, %bb.m ], [ %i.bm, %bb.n ]
  %.sroa.0.0.insert.ext.i = zext i32 %.sink to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.ext.i.sink, %.sroa.0.0.insert.ext.i
  %.pn.in = lshr i32 %0, 31
  %.pn = trunc nuw nsw i32 %.pn.in to i8
  %.fca.0.insert.i.i133.pn = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.insert.insert.i, 0
  %.pn118.pn = insertvalue { i64, i8 } %.fca.0.insert.i.i133.pn, i8 %.pn, 1
  ret { i64, i8 } %.pn118.pn
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr { i64, i64 } @_ZN4YAML3jkj9dragonbox6detail4implINS1_21ieee754_binary_traitsINS1_16ieee754_binary64EmiEEE15compute_nearestINS1_6policy4sign13return_sign_tENS9_13trailing_zero8remove_tENS9_26decimal_to_binary_rounding17nearest_to_even_tENS9_26binary_to_decimal_rounding9to_even_tENS9_5cache6full_tENS9_23preferred_integer_types7match_tEEENS1_10decimal_fpImNT4_21decimal_exponent_typeIS6_XcviclL_ZNS7_3minEiiEngL_ZNS7_5max_kEEL_ZNS7_5min_kEEEEXcviclL_ZNS7_3maxEiiEL_ZNS7_5max_kEEplplngL_ZNS7_5min_kEEL_ZNS7_5kappaEELi1EEEEEXsrT_15return_has_signEXsrT0_21report_trailing_zerosEEENS1_23signed_significand_bitsIS6_EEi(i64 %0, i32 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = shl i64 %0, 1                            ; 3 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = add nsw i32 %1, -1075                    ; 4 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = sext i32 %i.b to i64
  %i.e = mul nsw i64 %i.d, 631305
  %i.f = add nsw i64 %i.e, 9007199254479329
  %i.g = lshr i64 %i.f, 21                        ; 3 uses
  %.neg184 = mul i64 %i.g, -4294967296
  %i.h = ashr exact i64 %.neg184, 32              ; 2 uses
  %i.i = mul nsw i64 %i.h, 1741647
  %i.j = lshr i64 %i.i, 19
  %i.k = trunc i64 %i.j to i32
  %i.l = add i32 %i.b, %i.k                       ; 2 uses
  %i.m = getelementptr [16 x i8], ptr @_ZN4YAML3jkj9dragonbox12cache_holderINS1_16ieee754_binary64EvE5cacheE, i64 %i.h
  %i.n = getelementptr i8, ptr %i.m, i64 4672
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.n, align 8, !tbaa !32 ; 5 uses
  %i.o = lshr i64 %.sroa.0.0.copyload.i.i, 54
  %i.p = sub nuw i64 %.sroa.0.0.copyload.i.i, %i.o
  %i.q = sub nsw i32 11, %i.l
  %i.r = zext nneg i32 %i.q to i64                ; 2 uses
  %i.s = lshr i64 %i.p, %i.r
  %i.t = lshr i64 %.sroa.0.0.copyload.i.i, 53
  %i.u = add i64 %i.t, %.sroa.0.0.copyload.i.i
  %i.v = lshr i64 %i.u, %i.r
  %i.w = and i32 %i.b, -2
  %i.x = icmp ne i32 %i.w, 2
  %i.y = zext i1 %i.x to i64
  %spec.select = add i64 %i.s, %i.y               ; 2 uses
  %i.z = zext i64 %i.v to i128
  %i.aa = mul nuw nsw i128 %i.z, 1844674407370955162
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = trunc nuw nsw i128 %i.ab to i64         ; 3 uses
  %i.ad = mul nuw i64 %i.ac, 10
  %.not100 = icmp ult i64 %i.ad, %spec.select
  br i1 %.not100, label %bb.d, label %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit

_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit: ; preds = %bb.c
  %i.ae = mul i64 %i.ac, 28999941890838049        ; 2 uses
  %i.af = tail call i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 56) ; 2 uses
  %i.ag = icmp ult i64 %i.af, 184467440738        ; 2 uses
  %spec.select180.a = select i1 %i.ag, i64 2, i64 0
  %spec.select181.a = select i1 %i.ag, i64 %i.af, i64 %i.ac ; 2 uses
  %i.ah = mul i64 %spec.select181.a, 182622766329724561 ; 2 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 60) ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 1844674407370956    ; 2 uses
  %i.ak = select i1 %i.aj, i64 %i.ai, i64 %spec.select181.a ; 2 uses
  %i.al = mul i64 %i.ak, -8116567392432202711     ; 2 uses
  %i.am = tail call i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 62) ; 2 uses
  %i.an = icmp ult i64 %i.am, 184467440737095517  ; 2 uses
  %i.ao = select i1 %i.an, i64 2, i64 0
  %i.ap = select i1 %i.an, i64 %i.am, i64 %i.ak   ; 2 uses
  %i.aq = mul i64 %i.ap, -3689348814741910323     ; 2 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 63) ; 2 uses
  %i.as = icmp ult i64 %i.ar, 1844674407370955162 ; 2 uses
  %i.at = select i1 %i.as, i64 %i.ar, i64 %i.ap
  %i.au = zext i1 %i.aj to i64
  %i.av = or disjoint i64 %spec.select180.a, %i.au
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = zext i1 %i.as to i64
  %i.ay = add nuw nsw i64 %i.g, 1
  %i.az = add nuw nsw i64 %i.ay, %i.aw
  %i.ba = add nuw nsw i64 %i.az, %i.ao
  %i.bb = add nuw nsw i64 %i.ba, %i.ax
  %i.bc = lshr exact i64 %0, 31
  br label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.bd = sub nsw i32 10, %i.l
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = lshr i64 %.sroa.0.0.copyload.i.i, %i.be
  %i.bg = add i64 %i.bf, 1
  %i.bh = lshr i64 %i.bg, 1                       ; 3 uses
  %i.bi = trunc i64 %i.bh to i1
  %i.bj = icmp eq i32 %1, 998
  %or.cond3 = and i1 %i.bj, %i.bi
  %i.bk = icmp ult i64 %i.bh, %spec.select
  %i.bl = zext i1 %i.bk to i64
  %.086.v = select i1 %or.cond3, i64 -1, i64 %i.bl
  %.086 = add i64 %.086.v, %i.bh
  %i.bm = lshr exact i64 %0, 31
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.bn = or i64 %i.a, 9007199254740992
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.082 = phi i32 [ %i.b, %bb.e ], [ -1074, %bb.a ] ; 2 uses
  %.0 = phi i64 [ %i.bn, %bb.e ], [ %i.a, %bb.a ] ; 4 uses
  %i.bo = trunc i64 %0 to i8
  %i.bp = and i8 %i.bo, 1                         ; 2 uses
  %i.bq = sext i32 %.082 to i64
  %i.br = mul nsw i64 %i.bq, 315653
  %i.bs = lshr i64 %i.br, 20                      ; 3 uses
  %i.bt = shl i64 %i.bs, 32
  %sext = sub i64 8589934592, %i.bt
  %i.bu = ashr exact i64 %sext, 32                ; 2 uses
  %i.bv = getelementptr [16 x i8], ptr @_ZN4YAML3jkj9dragonbox12cache_holderINS1_16ieee754_binary64EvE5cacheE, i64 %i.bu ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 4672
  %.sroa.0.0.copyload.i.i118 = load i64, ptr %i.bw, align 8, !tbaa !32 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i119 = getelementptr i8, ptr %i.bv, i64 4680
  %.sroa.2.0.copyload.i.i120 = load i64, ptr %.sroa.2.0..sroa_idx.i.i119, align 8, !tbaa !32
  %i.bx = mul nsw i64 %i.bu, 1741647
  %i.by = lshr i64 %i.bx, 19
  %i.bz = trunc i64 %i.by to i32
  %i.ca = add i32 %.082, %i.bz                    ; 4 uses
  %i.cb = sub nsw i32 63, %i.ca
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = lshr i64 %.sroa.0.0.copyload.i.i118, %i.cc ; 3 uses
  %i.ce = or i64 %.0, 1
  %i.cf = zext nneg i32 %i.ca to i64              ; 3 uses
  %i.cg = shl i64 %i.ce, %i.cf
  %i.ch = zext i64 %i.cg to i128                  ; 2 uses
  %i.ci = zext i64 %.sroa.0.0.copyload.i.i118 to i128
  %i.cj = mul nuw i128 %i.ch, %i.ci               ; 2 uses
  %i.ck = lshr i128 %i.cj, 64
  %i.cl = trunc nuw i128 %i.ck to i64
  %i.cm = trunc i128 %i.cj to i64
  %i.cn = zext i64 %.sroa.2.0.copyload.i.i120 to i128 ; 3 uses
  %i.co = mul nuw i128 %i.ch, %i.cn
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64
  %i.cr = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.cm, i64 %i.cq) ; 2 uses
  %i.cs = extractvalue { i64, i1 } %i.cr, 1
  %i.ct = zext i1 %i.cs to i64
  %i.cu = add nuw i64 %i.ct, %i.cl                ; 2 uses
  %i.cv = zext i64 %i.cu to i128
  %i.cw = mul nuw nsw i128 %i.cv, 4722366482869645214
  %sum.shift.i = lshr i128 %i.cw, 72
  %i.cx = trunc nuw nsw i128 %sum.shift.i to i64  ; 6 uses
  %.neg = mul i64 %i.cx, -1000
  %i.cy = add i64 %.neg, %i.cu                    ; 5 uses
  %i.cz = icmp ult i64 %i.cy, %i.cd
  br i1 %i.cz, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.da = xor i8 %i.bp, 1
  %i.db = extractvalue { i64, i1 } %i.cr, 0
  %i.dc = icmp ne i64 %i.db, 0
  %i.dd = zext i1 %i.dc to i8
  %i.de = or i8 %i.da, %i.dd
  %i.df = zext nneg i8 %i.de to i64
  %i.dg = or i64 %i.cy, %i.df
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.h, label %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108

bb.h:                                             ; preds = %bb.g
  %i.di = add nsw i64 %i.cx, -1
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.dj = icmp ugt i64 %i.cy, %i.cd
  br i1 %i.dj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dk = add i64 %.0, -1                         ; 2 uses
  %i.dl = mul i64 %.sroa.0.0.copyload.i.i118, %i.dk
  %i.dm = zext i64 %i.dk to i128
  %i.dn = mul nuw i128 %i.cn, %i.dm               ; 2 uses
  %i.do = lshr i128 %i.dn, 64
  %i.dp = trunc nuw i128 %i.do to i64
  %i.dq = trunc i128 %i.dn to i64
  %i.dr = add i64 %i.dl, %i.dp                    ; 2 uses
  %i.ds = sub nsw i32 64, %i.ca
  %i.dt = zext i32 %i.ds to i64                   ; 2 uses
  %i.du = lshr i64 %i.dr, %i.dt
  %2 = trunc i64 %i.du to i1
  %i.dv = shl i64 %i.dr, %i.cf
  %i.dw = lshr i64 %i.dq, %i.dt
  %i.dx = or i64 %i.dw, %i.dv
  %i.dy = icmp eq i64 %i.dx, 0
  %.not185.not = icmp eq i8 %i.bp, 0
  %narrow = select i1 %.not185.not, i1 %i.dy, i1 false
  %.not95 = or i1 %narrow, %2
  br i1 %.not95, label %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108, label %bb.k

_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108: ; preds = %bb.j, %bb.g
  %i.dz = mul i64 %i.cx, 28999941890838049        ; 2 uses
  %i.ea = tail call i64 @llvm.fshl.i64(i64 %i.dz, i64 %i.dz, i64 56) ; 2 uses
  %i.eb = icmp ult i64 %i.ea, 184467440738        ; 2 uses
  %spec.select182.a = select i1 %i.eb, i64 2, i64 0
  %spec.select183 = select i1 %i.eb, i64 %i.ea, i64 %i.cx ; 2 uses
  %i.ec = mul i64 %spec.select183, 182622766329724561 ; 2 uses
  %i.ed = tail call i64 @llvm.fshl.i64(i64 %i.ec, i64 %i.ec, i64 60) ; 2 uses
  %i.ee = icmp ult i64 %i.ed, 1844674407370956    ; 2 uses
  %i.ef = select i1 %i.ee, i64 %i.ed, i64 %spec.select183 ; 2 uses
  %i.eg = mul i64 %i.ef, -8116567392432202711     ; 2 uses
  %i.eh = tail call i64 @llvm.fshl.i64(i64 %i.eg, i64 %i.eg, i64 62) ; 2 uses
  %i.ei = icmp ult i64 %i.eh, 184467440737095517  ; 2 uses
  %i.ej = select i1 %i.ei, i64 2, i64 0
  %i.ek = select i1 %i.ei, i64 %i.eh, i64 %i.ef   ; 2 uses
  %i.el = mul i64 %i.ek, -3689348814741910323     ; 2 uses
  %i.em = tail call i64 @llvm.fshl.i64(i64 %i.el, i64 %i.el, i64 63) ; 2 uses
  %i.en = icmp ult i64 %i.em, 1844674407370955162 ; 2 uses
  %i.eo = select i1 %i.en, i64 %i.em, i64 %i.ek
  %i.ep = zext i1 %i.ee to i64
  %i.eq = or disjoint i64 %spec.select182.a, %i.ep
  %i.er = shl nuw nsw i64 %i.eq, 2
  %i.es = zext i1 %i.en to i64
  %i.et = add nuw nsw i64 %i.bs, 1
  %i.eu = add nuw nsw i64 %i.et, %i.er
  %i.ev = add nuw nsw i64 %i.eu, %i.ej
  %i.ew = add nuw nsw i64 %i.ev, %i.es
  %i.ex = lshr i64 %0, 31
  %.sroa.4.8.insert.shift.i.i129 = and i64 %i.ex, 4294967296
  br label %bb.p

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.084 = phi i64 [ %i.di, %bb.h ], [ %i.cx, %bb.i ], [ %i.cx, %bb.j ]
  %.083 = phi i64 [ 1000, %bb.h ], [ %i.cy, %bb.i ], [ %i.cy, %bb.j ]
  %i.ey = mul nsw i64 %.084, 10
  %i.ez = lshr i64 %i.cd, 1
  %i.fa = sub i64 %.083, %i.ez                    ; 2 uses
  %i.fb = mul i64 %i.fa, 656
  %i.fc = add i64 %i.fb, 32800                    ; 2 uses
  %i.fd = and i64 %i.fc, 65520
  %i.fe = icmp samesign ult i64 %i.fd, 656
  %i.ff = lshr i64 %i.fc, 16                      ; 2 uses
  %i.fg = add nsw i64 %i.ff, %i.ey                ; 3 uses
  br i1 %i.fe, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.fh = mul i64 %.sroa.0.0.copyload.i.i118, %.0
  %i.fi = zext i64 %.0 to i128
  %i.fj = mul nuw i128 %i.cn, %i.fi               ; 2 uses
  %i.fk = lshr i128 %i.fj, 64
  %i.fl = trunc nuw i128 %i.fk to i64
  %i.fm = add i64 %i.fh, %i.fl                    ; 2 uses
  %i.fn = sub nsw i32 64, %i.ca
  %i.fo = zext i32 %i.fn to i64                   ; 2 uses
  %i.fp = lshr i64 %i.fm, %i.fo
  %i.fq = xor i64 %i.fa, %i.fp
  %.not96 = trunc i64 %i.fq to i1
  br i1 %.not96, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fr = add nsw i64 %i.fg, -1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.fs = shl i64 %i.fm, %i.cf
  %i.ft = trunc i128 %i.fj to i64
  %i.fu = lshr i64 %i.ft, %i.fo
  %i.fv = or i64 %i.fu, %i.fs
  %i.fw = icmp eq i64 %i.fv, 0
  %i.fx = trunc i64 %i.ff to i1
  %.not97.not = and i1 %i.fw, %i.fx
  %i.fy = sext i1 %.not97.not to i64
  %spec.select105 = add nsw i64 %i.fg, %i.fy
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %.2 = phi i64 [ %i.fg, %bb.k ], [ %i.fr, %bb.m ], [ %spec.select105, %bb.n ]
  %i.fz = lshr i64 %0, 31
  %.sroa.4.8.insert.shift.i.i142 = and i64 %i.fz, 4294967296
  br label %bb.p

bb.p:                                             ; preds = %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108, %bb.o, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit, %bb.d
  %.sink = phi i64 [ %i.ew, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108 ], [ %i.bs, %bb.o ], [ %i.bb, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit ], [ %i.g, %bb.d ]
  %.sroa.4.8.insert.shift.i.i129.sink = phi i64 [ %.sroa.4.8.insert.shift.i.i129, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108 ], [ %.sroa.4.8.insert.shift.i.i142, %bb.o ], [ %i.bc, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit ], [ %i.bm, %bb.d ]
  %.086.pn = phi i64 [ %i.eo, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108 ], [ %.2, %bb.o ], [ %i.at, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit ], [ %.086, %bb.d ]
  %.sroa.22.8.insert.ext.i.i130 = and i64 %.sink, 4294967295
  %.sroa.22.8.insert.insert.i.i131 = or disjoint i64 %.sroa.22.8.insert.ext.i.i130, %.sroa.4.8.insert.shift.i.i129.sink
  %.fca.0.insert.i.i113.pn = insertvalue { i64, i64 } poison, i64 %.086.pn, 0
  %.pn101.pn = insertvalue { i64, i64 } %.fca.0.insert.i.i113.pn, i64 %.sroa.22.8.insert.insert.i.i131, 1
  ret { i64, i64 } %.pn101.pn
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIeEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), x86_fp80 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !11}
!1 = !{i32 1, !"long-double-type", !"x86_fp80"}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!6, !6, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"vtable pointer", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !15, i64 0}
!17 = !{!16, !15, i64 0}
!18 = !{!"long", !6, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !16, i64 0, !18, i64 8, !6, i64 16}
!20 = !{!19, !18, i64 8}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !14, i64 0}
!22 = !{!"_ZTSSt6locale", !21, i64 0}
!23 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !22, i64 56}
!24 = !{!23, !15, i64 40}
!25 = !{!23, !15, i64 32}
!26 = !{!19, !15, i64 0}
!27 = !{!"_ZTSSi", !18, i64 8}
!28 = !{!27, !18, i64 8}
!29 = !{!"llvm.loop.isvectorized", i32 1}
!30 = !{!"llvm.loop.unroll.runtime.disable"}
!31 = !{!"branch_weights", i32 8, i32 24}
!32 = !{!18, !18, i64 0}
!33 = distinct !{!33, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!34 = distinct !{!34, !33, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!35 = distinct !{!35, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!36 = distinct !{!36, !35, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11, !29, !30}
!39 = distinct !{!39, !11, !29, !30}
!40 = distinct !{!40, !11, !29}
!41 = !{!34}
!42 = !{!36}
!43 = !{!36, !34}
!44 = distinct !{!44, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!45 = distinct !{!45, !44, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!46 = distinct !{!46, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!47 = distinct !{!47, !46, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11, !29, !30}
!50 = distinct !{!50, !11, !29, !30}
!51 = distinct !{!51, !11, !29}
!52 = !{!45}
!53 = !{!47}
!54 = !{!47, !45}
!55 = distinct !{!55, i1 false, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!56 = distinct !{!56, !55, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!57 = distinct !{!57, i1 false, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!58 = distinct !{!58, !57, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!59 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!60 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!61 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !14, i64 0}
!62 = !{!"_ZTSNSt8ios_base6_WordsE", !14, i64 0, !18, i64 8}
!63 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !14, i64 0}
!64 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !59, i64 24, !60, i64 28, !60, i64 32, !61, i64 40, !62, i64 48, !6, i64 64, !7, i64 192, !63, i64 200, !22, i64 208}
!65 = !{!64, !18, i64 8}
!66 = !{!56}
!67 = !{!58}
!68 = !{!58, !56}
end_hunk_0
