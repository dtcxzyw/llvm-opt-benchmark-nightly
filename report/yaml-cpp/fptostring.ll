Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yaml-cpp/original/fptostring?download=true
inline.NumInlined: 309
inline.NumDeleted: 181
begin_hunk_0_@_ZN4YAML10FpToStringB5cxx11Eem:bb.a
  %i.ad = icmp eq ptr %i.ac, %i.o
  br i1 %i.ad, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.ac) #12
  br label %.body

bb.g:                                             ; preds = %_ZNSolsEe.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit unwind label %bb.f

_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit: ; preds = %bb.g, %bb.e
  %i.af = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.af, ptr %3, align 8, !tbaa !13
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8
  %i.ah = getelementptr i8, ptr %i.af, i64 -24
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = getelementptr inbounds i8, ptr %3, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !13
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8
  store ptr %i.ak, ptr %i.l, align 8, !tbaa !13
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.al, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit
  call void @_ZdlPv(ptr noundef %i.an) #12
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.al, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aq) #11
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 2 uses
  store ptr %i.ar, ptr %3, align 8, !tbaa !13
  %i.as = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
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
  %spec.select183 = select i1 %i.ai, i64 2, i64 0
  %spec.select184 = select i1 %i.ai, i32 %i.ah, i32 %i.ae ; 2 uses
  %i.aj = mul i32 %spec.select184, 42949673       ; 2 uses
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.aj, i32 30) ; 2 uses
  %i.al = icmp ult i32 %i.ak, 42949673            ; 2 uses
  %i.am = select i1 %i.al, i32 %i.ak, i32 %spec.select184 ; 2 uses
  %i.an = mul i32 %i.am, 1288490189               ; 2 uses
  %i.ao = tail call i32 @llvm.fshl.i32(i32 %i.an, i32 %i.an, i32 31) ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 429496730           ; 2 uses
  %i.aq = select i1 %i.ap, i32 %i.ao, i32 %i.am
  %i.ar = zext i1 %i.al to i64
  %i.as = or disjoint i64 %spec.select183, %i.ar
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
  %2 = zext i64 %i.cc to i128
  %3 = zext i64 %i.bq to i128
  %4 = mul nuw i128 %2, %3
  %5 = lshr i128 %4, 64
  %6 = trunc nuw i128 %5 to i64                   ; 2 uses
  %i.cd = lshr i64 %6, 32                         ; 2 uses
  %.sroa.033.0.extract.trunc = trunc nuw i64 %i.cd to i32
  %i.ce = mul nuw nsw i64 %i.cd, 1374389535
  %i.cf = lshr i64 %i.ce, 37
  %i.cg = trunc nuw nsw i64 %i.cf to i32          ; 6 uses
  %.neg = mul i32 %i.cg, -100
  %i.ch = add i32 %.neg, %.sroa.033.0.extract.trunc ; 5 uses
  %i.ci = icmp ult i32 %i.ch, %i.by
  br i1 %i.ci, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.cj = and i64 %6, 4294967295
  %i.ck = icmp ne i64 %i.cj, 0
  %i.cl = trunc i32 %0 to i1
  %i.cm = xor i1 %i.cl, true
  %i.cn = or i1 %i.ck, %i.cm
  %i.co = zext i1 %i.cn to i32
  %i.cp = or i32 %i.ch, %i.co
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.h, label %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit127

bb.h:                                             ; preds = %bb.g
  %i.cr = add nsw i32 %i.cg, -1
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.cs = icmp ugt i32 %i.ch, %i.by
  br i1 %i.cs, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ct = add i32 %.0, -1
  %i.cu = zext i32 %i.ct to i64
  %i.cv = mul i64 %i.bq, %i.cu                    ; 2 uses
  %i.cw = sub nsw i32 64, %i.bu
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = lshr i64 %i.cv, %i.cx
  %i.cz = trunc i64 %i.cy to i32
  %.sroa.0.0.insert.ext.i137 = and i32 %i.cz, 1
  %i.da = sub nsw i32 32, %i.bu
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = shl i64 4294967295, %i.db
  %i.dd = and i64 %i.dc, %i.cv
  %i.de = icmp eq i64 %i.dd, 0
  %i.df = and i32 %0, 1
  %.not188.not = icmp eq i32 %i.df, 0
  %narrow = select i1 %.not188.not, i1 %i.de, i1 false
  %i.dg = zext i1 %narrow to i32
  %i.dh = or i32 %.sroa.0.0.insert.ext.i137, %i.dg
  %.not111 = icmp eq i32 %i.dh, 0
  br i1 %.not111, label %bb.k, label %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit127

_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit127: ; preds = %bb.j, %bb.g
  %i.di = mul i32 %i.cg, 184254097                ; 2 uses
  %i.dj = tail call i32 @llvm.fshl.i32(i32 %i.di, i32 %i.di, i32 28) ; 2 uses
  %i.dk = icmp ult i32 %i.dj, 429497              ; 2 uses
  %spec.select185 = select i1 %i.dk, i64 2, i64 0
  %spec.select186 = select i1 %i.dk, i32 %i.dj, i32 %i.cg ; 2 uses
  %i.dl = mul i32 %spec.select186, 42949673       ; 2 uses
  %i.dm = tail call i32 @llvm.fshl.i32(i32 %i.dl, i32 %i.dl, i32 30) ; 2 uses
  %i.dn = icmp ult i32 %i.dm, 42949673            ; 2 uses
  %i.do = select i1 %i.dn, i32 %i.dm, i32 %spec.select186 ; 2 uses
  %i.dp = mul i32 %i.do, 1288490189               ; 2 uses
  %i.dq = tail call i32 @llvm.fshl.i32(i32 %i.dp, i32 %i.dp, i32 31) ; 2 uses
  %i.dr = icmp ult i32 %i.dq, 429496730           ; 2 uses
  %i.ds = select i1 %i.dr, i32 %i.dq, i32 %i.do
  %i.dt = zext i1 %i.dn to i64
  %i.du = or disjoint i64 %spec.select185, %i.dt
  %i.dv = shl nuw nsw i64 %i.du, 1
  %i.dw = zext i1 %i.dr to i64
  %i.dx = add nuw nsw i64 %i.bl, 1
  %i.dy = add nuw nsw i64 %i.dx, %i.dv
  %i.dz = add nuw nsw i64 %i.dy, %i.dw
  %.sroa.2.0.insert.ext.i = shl i64 %i.dz, 32
  br label %bb.o

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.0103 = phi i32 [ %i.cr, %bb.h ], [ %i.cg, %bb.i ], [ %i.cg, %bb.j ]
  %.0102 = phi i32 [ 100, %bb.h ], [ %i.ch, %bb.i ], [ %i.ch, %bb.j ]
  %i.ea = mul nsw i32 %.0103, 10
  %i.eb = lshr i32 %i.by, 1
  %i.ec = sub i32 %.0102, %i.eb                   ; 2 uses
  %i.ed = add i32 %i.ec, 5
  %i.ee = zext i32 %i.ed to i64
  %i.ef = mul nuw nsw i64 %i.ee, 6554             ; 2 uses
  %i.eg = and i64 %i.ef, 65534
  %i.eh = icmp samesign ult i64 %i.eg, 6554
  %i.ei = lshr i64 %i.ef, 16                      ; 2 uses
  %i.ej = trunc nuw nsw i64 %i.ei to i32
  %i.ek = add nsw i32 %i.ea, %i.ej                ; 3 uses
  br i1 %i.eh, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.el = zext i32 %.0 to i64
  %i.em = mul i64 %i.bq, %i.el                    ; 2 uses
  %i.en = sub nsw i32 64, %i.bu
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = lshr i64 %i.em, %i.eo
  %i.eq = trunc i64 %i.ep to i32
  %i.er = xor i32 %i.ec, %i.eq
  %i.es = and i32 %i.er, 1
  %.not113 = icmp eq i32 %i.es, 0
  br i1 %.not113, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.et = add nsw i32 %i.ek, -1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.eu = sub nsw i32 32, %i.bu
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = shl i64 4294967295, %i.ev
  %i.ex = and i64 %i.ew, %i.em
  %i.ey = icmp eq i64 %i.ex, 0
  %i.ez = trunc i64 %i.ei to i1
  %.not114.not = and i1 %i.ey, %i.ez
  %i.fa = sext i1 %.not114.not to i32
  %spec.select122 = add nsw i32 %i.ek, %i.fa
  br label %bb.o

bb.o:                                             ; preds = %bb.k, %bb.m, %bb.n, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit127, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit, %bb.d
  %.sink = phi i32 [ %i.ds, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit127 ], [ %.0100, %bb.d ], [ %i.aq, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary32EjiE21remove_trailing_zerosERjRi.exit ], [ %i.ek, %bb.k ], [ %i.et, %bb.m ], [ %spec.select122, %bb.n ]
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
  %2 = zext i64 %i.v to i128
  %3 = mul nuw nsw i128 %2, 1844674407370955162
  %4 = lshr i128 %3, 64
  %5 = trunc nuw nsw i128 %4 to i64               ; 3 uses
  %i.z = mul nuw i64 %5, 10
  %.not100 = icmp ult i64 %i.z, %spec.select
  br i1 %.not100, label %bb.d, label %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit

_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit: ; preds = %bb.c
  %i.aa = mul i64 %5, 28999941890838049           ; 2 uses
  %i.ab = tail call i64 @llvm.fshl.i64(i64 %i.aa, i64 %i.aa, i64 56) ; 2 uses
  %i.ac = icmp ult i64 %i.ab, 184467440738        ; 2 uses
  %spec.select180 = select i1 %i.ac, i64 2, i64 0
  %spec.select181 = select i1 %i.ac, i64 %i.ab, i64 %5 ; 2 uses
  %i.ad = mul i64 %spec.select181, 182622766329724561 ; 2 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 60) ; 2 uses
  %i.af = icmp ult i64 %i.ae, 1844674407370956    ; 2 uses
  %i.ag = select i1 %i.af, i64 %i.ae, i64 %spec.select181 ; 2 uses
  %i.ah = mul i64 %i.ag, -8116567392432202711     ; 2 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 62) ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 184467440737095517  ; 2 uses
  %i.ak = select i1 %i.aj, i64 2, i64 0
  %i.al = select i1 %i.aj, i64 %i.ai, i64 %i.ag   ; 2 uses
  %i.am = mul i64 %i.al, -3689348814741910323     ; 2 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 63) ; 2 uses
  %i.ao = icmp ult i64 %i.an, 1844674407370955162 ; 2 uses
  %i.ap = select i1 %i.ao, i64 %i.an, i64 %i.al
  %i.aq = zext i1 %i.af to i64
  %i.ar = or disjoint i64 %spec.select180, %i.aq
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = zext i1 %i.ao to i64
  %i.au = add nuw nsw i64 %i.g, 1
  %i.av = add nuw nsw i64 %i.au, %i.as
  %i.aw = add nuw nsw i64 %i.av, %i.ak
  %i.ax = add nuw nsw i64 %i.aw, %i.at
  %i.ay = lshr exact i64 %0, 31
  br label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.az = sub nsw i32 10, %i.l
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = lshr i64 %.sroa.0.0.copyload.i.i, %i.ba
  %i.bc = add i64 %i.bb, 1
  %i.bd = lshr i64 %i.bc, 1                       ; 3 uses
  %i.be = trunc i64 %i.bd to i1
  %i.bf = icmp eq i32 %1, 998
  %or.cond3 = and i1 %i.bf, %i.be
  %i.bg = icmp ult i64 %i.bd, %spec.select
  %i.bh = zext i1 %i.bg to i64
  %.086.v = select i1 %or.cond3, i64 -1, i64 %i.bh
  %.086 = add i64 %.086.v, %i.bd
  %i.bi = lshr exact i64 %0, 31
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.bj = or i64 %i.a, 9007199254740992
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.082 = phi i32 [ %i.b, %bb.e ], [ -1074, %bb.a ] ; 2 uses
  %.0 = phi i64 [ %i.bj, %bb.e ], [ %i.a, %bb.a ] ; 4 uses
  %i.bk = trunc i64 %0 to i8
  %i.bl = and i8 %i.bk, 1                         ; 2 uses
  %i.bm = sext i32 %.082 to i64
  %i.bn = mul nsw i64 %i.bm, 315653
  %i.bo = lshr i64 %i.bn, 20                      ; 3 uses
  %i.bp = shl i64 %i.bo, 32
  %sext = sub i64 8589934592, %i.bp
  %i.bq = ashr exact i64 %sext, 32                ; 2 uses
  %i.br = getelementptr [16 x i8], ptr @_ZN4YAML3jkj9dragonbox12cache_holderINS1_16ieee754_binary64EvE5cacheE, i64 %i.bq ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 4672
  %.sroa.0.0.copyload.i.i118 = load i64, ptr %i.bs, align 8, !tbaa !32 ; 4 uses
  %.sroa.2.0..sroa_idx.i.i119 = getelementptr i8, ptr %i.br, i64 4680
  %.sroa.2.0.copyload.i.i120 = load i64, ptr %.sroa.2.0..sroa_idx.i.i119, align 8, !tbaa !32
  %i.bt = mul nsw i64 %i.bq, 1741647
  %i.bu = lshr i64 %i.bt, 19
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = add i32 %.082, %i.bv                    ; 4 uses
  %i.bx = sub nsw i32 63, %i.bw
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = lshr i64 %.sroa.0.0.copyload.i.i118, %i.by ; 3 uses
  %i.ca = or i64 %.0, 1
  %i.cb = zext nneg i32 %i.bw to i64              ; 3 uses
  %i.cc = shl i64 %i.ca, %i.cb
  %i.cd = zext i64 %i.cc to i128                  ; 2 uses
  %i.ce = zext i64 %.sroa.0.0.copyload.i.i118 to i128
  %i.cf = mul nuw i128 %i.cd, %i.ce               ; 2 uses
  %i.cg = lshr i128 %i.cf, 64
  %i.ch = trunc nuw i128 %i.cg to i64
  %i.ci = trunc i128 %i.cf to i64
  %6 = zext i64 %.sroa.2.0.copyload.i.i120 to i128 ; 3 uses
  %7 = mul nuw i128 %i.cd, %6
  %8 = lshr i128 %7, 64
  %9 = trunc nuw i128 %8 to i64
  %i.cj = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ci, i64 %9) ; 2 uses
  %i.ck = extractvalue { i64, i1 } %i.cj, 1
  %i.cl = zext i1 %i.ck to i64
  %i.cm = add nuw i64 %i.cl, %i.ch                ; 2 uses
  %10 = zext i64 %i.cm to i128
  %11 = mul nuw nsw i128 %10, 4722366482869645214
  %sum.shift.i = lshr i128 %11, 72
  %12 = trunc nuw nsw i128 %sum.shift.i to i64    ; 6 uses
  %.neg = mul i64 %12, -1000
  %i.cn = add i64 %.neg, %i.cm                    ; 5 uses
  %i.co = icmp ult i64 %i.cn, %i.bz
  br i1 %i.co, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.cp = xor i8 %i.bl, 1
  %i.cq = extractvalue { i64, i1 } %i.cj, 0
  %i.cr = icmp ne i64 %i.cq, 0
  %i.cs = zext i1 %i.cr to i8
  %i.ct = or i8 %i.cp, %i.cs
  %i.cu = zext nneg i8 %i.ct to i64
  %i.cv = or i64 %i.cn, %i.cu
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %bb.h, label %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108

bb.h:                                             ; preds = %bb.g
  %i.cx = add nsw i64 %12, -1
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.cy = icmp ugt i64 %i.cn, %i.bz
  br i1 %i.cy, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cz = add i64 %.0, -1                         ; 2 uses
  %i.da = mul i64 %.sroa.0.0.copyload.i.i118, %i.cz
  %i.db = zext i64 %i.cz to i128
  %i.dc = mul nuw i128 %6, %i.db                  ; 2 uses
  %i.dd = lshr i128 %i.dc, 64
  %i.de = trunc nuw i128 %i.dd to i64
  %i.df = trunc i128 %i.dc to i64
  %i.dg = add i64 %i.da, %i.de                    ; 2 uses
  %i.dh = sub nsw i32 64, %i.bw
  %i.di = zext i32 %i.dh to i64                   ; 2 uses
  %i.dj = lshr i64 %i.dg, %i.di
  %i.dk = trunc i64 %i.dj to i32
  %.sroa.04.0.insert.ext.i = and i32 %i.dk, 1
  %i.dl = shl i64 %i.dg, %i.cb
  %i.dm = lshr i64 %i.df, %i.di
  %i.dn = or i64 %i.dm, %i.dl
  %i.do = icmp eq i64 %i.dn, 0
  %.not185.not = icmp eq i8 %i.bl, 0
  %narrow = select i1 %.not185.not, i1 %i.do, i1 false
  %i.dp = zext i1 %narrow to i32
  %i.dq = or i32 %.sroa.04.0.insert.ext.i, %i.dp
  %.not95 = icmp eq i32 %i.dq, 0
  br i1 %.not95, label %bb.k, label %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108

_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108: ; preds = %bb.j, %bb.g
  %i.dr = mul i64 %12, 28999941890838049          ; 2 uses
  %i.ds = tail call i64 @llvm.fshl.i64(i64 %i.dr, i64 %i.dr, i64 56) ; 2 uses
  %i.dt = icmp ult i64 %i.ds, 184467440738        ; 2 uses
  %spec.select182 = select i1 %i.dt, i64 2, i64 0
  %spec.select183 = select i1 %i.dt, i64 %i.ds, i64 %12 ; 2 uses
  %i.du = mul i64 %spec.select183, 182622766329724561 ; 2 uses
  %i.dv = tail call i64 @llvm.fshl.i64(i64 %i.du, i64 %i.du, i64 60) ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 1844674407370956    ; 2 uses
  %i.dx = select i1 %i.dw, i64 %i.dv, i64 %spec.select183 ; 2 uses
  %i.dy = mul i64 %i.dx, -8116567392432202711     ; 2 uses
  %i.dz = tail call i64 @llvm.fshl.i64(i64 %i.dy, i64 %i.dy, i64 62) ; 2 uses
  %i.ea = icmp ult i64 %i.dz, 184467440737095517  ; 2 uses
  %i.eb = select i1 %i.ea, i64 2, i64 0
  %i.ec = select i1 %i.ea, i64 %i.dz, i64 %i.dx   ; 2 uses
  %i.ed = mul i64 %i.ec, -3689348814741910323     ; 2 uses
  %i.ee = tail call i64 @llvm.fshl.i64(i64 %i.ed, i64 %i.ed, i64 63) ; 2 uses
  %i.ef = icmp ult i64 %i.ee, 1844674407370955162 ; 2 uses
  %i.eg = select i1 %i.ef, i64 %i.ee, i64 %i.ec
  %i.eh = zext i1 %i.dw to i64
  %i.ei = or disjoint i64 %spec.select182, %i.eh
  %i.ej = shl nuw nsw i64 %i.ei, 2
  %i.ek = zext i1 %i.ef to i64
  %i.el = add nuw nsw i64 %i.bo, 1
  %i.em = add nuw nsw i64 %i.el, %i.ej
  %i.en = add nuw nsw i64 %i.em, %i.eb
  %i.eo = add nuw nsw i64 %i.en, %i.ek
  %i.ep = lshr i64 %0, 31
  %.sroa.4.8.insert.shift.i.i129 = and i64 %i.ep, 4294967296
  br label %bb.p

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.084 = phi i64 [ %i.cx, %bb.h ], [ %12, %bb.i ], [ %12, %bb.j ]
  %.083 = phi i64 [ 1000, %bb.h ], [ %i.cn, %bb.i ], [ %i.cn, %bb.j ]
  %i.eq = mul nsw i64 %.084, 10
  %i.er = lshr i64 %i.bz, 1
  %i.es = sub i64 %.083, %i.er                    ; 2 uses
  %i.et = mul i64 %i.es, 656
  %i.eu = add i64 %i.et, 32800                    ; 2 uses
  %i.ev = and i64 %i.eu, 65520
  %i.ew = icmp samesign ult i64 %i.ev, 656
  %i.ex = lshr i64 %i.eu, 16                      ; 2 uses
  %i.ey = add nsw i64 %i.ex, %i.eq                ; 3 uses
  br i1 %i.ew, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ez = mul i64 %.sroa.0.0.copyload.i.i118, %.0
  %i.fa = zext i64 %.0 to i128
  %i.fb = mul nuw i128 %6, %i.fa                  ; 2 uses
  %i.fc = lshr i128 %i.fb, 64
  %i.fd = trunc nuw i128 %i.fc to i64
  %i.fe = add i64 %i.ez, %i.fd                    ; 2 uses
  %i.ff = sub nsw i32 64, %i.bw
  %i.fg = zext i32 %i.ff to i64                   ; 2 uses
  %i.fh = lshr i64 %i.fe, %i.fg
  %i.fi = xor i64 %i.es, %i.fh
  %i.fj = and i64 %i.fi, 1
  %.not96 = icmp eq i64 %i.fj, 0
  br i1 %.not96, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fk = add nsw i64 %i.ey, -1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.fl = shl i64 %i.fe, %i.cb
  %i.fm = trunc i128 %i.fb to i64
  %i.fn = lshr i64 %i.fm, %i.fg
  %i.fo = or i64 %i.fn, %i.fl
  %i.fp = icmp eq i64 %i.fo, 0
  %i.fq = trunc i64 %i.ex to i1
  %.not97.not = and i1 %i.fp, %i.fq
  %i.fr = sext i1 %.not97.not to i64
  %spec.select105 = add nsw i64 %i.ey, %i.fr
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.k
  %.2 = phi i64 [ %i.ey, %bb.k ], [ %i.fk, %bb.m ], [ %spec.select105, %bb.n ]
  %i.fs = lshr i64 %0, 31
  %.sroa.4.8.insert.shift.i.i142 = and i64 %i.fs, 4294967296
  br label %bb.p

bb.p:                                             ; preds = %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108, %bb.o, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit, %bb.d
  %.sink = phi i64 [ %i.eo, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108 ], [ %i.bo, %bb.o ], [ %i.ax, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit ], [ %i.g, %bb.d ]
  %.sroa.4.8.insert.shift.i.i129.sink = phi i64 [ %.sroa.4.8.insert.shift.i.i129, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108 ], [ %.sroa.4.8.insert.shift.i.i142, %bb.o ], [ %i.ay, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit ], [ %i.bi, %bb.d ]
  %.086.pn = phi i64 [ %i.eg, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit108 ], [ %.2, %bb.o ], [ %i.ap, %_ZN4YAML3jkj9dragonbox28remove_trailing_zeros_traitsINS1_6policy13trailing_zero8remove_tENS1_16ieee754_binary64EmiE21remove_trailing_zerosERmRi.exit ], [ %.086, %bb.d ]
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
!33 = distinct !{!33, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!34 = distinct !{!34, !33, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!35 = distinct !{!35, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!36 = distinct !{!36, !35, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11, !29, !30}
!39 = distinct !{!39, !11, !29, !30}
!40 = distinct !{!40, !11, !29}
!41 = !{!34}
!42 = !{!36}
!43 = !{!36, !34}
!44 = distinct !{!44, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!45 = distinct !{!45, !44, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!46 = distinct !{!46, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!47 = distinct !{!47, !46, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11, !29, !30}
!50 = distinct !{!50, !11, !29, !30}
!51 = distinct !{!51, !11, !29}
!52 = !{!45}
!53 = !{!47}
!54 = !{!47, !45}
!55 = distinct !{!55, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!56 = distinct !{!56, !55, !"_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!57 = distinct !{!57, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
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
