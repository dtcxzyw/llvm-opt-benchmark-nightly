Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jiff-rs/original/jiff_core-5d71b84bdd1187e4.jiff_core.7e71bb9fe3ac45e3-cgu.5?download=true
inline.NumInlined: 119
inline.NumDeleted: 24
begin_hunk_0_@_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser20parse_posix_datetime:bb.a
  %i.jb = call { i1, i8 } @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultaNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11MinuteErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i1 zeroext %i.iz, i8 %i.ja) #14 ; 2 uses
  %i.jc = extractvalue { i1, i8 } %i.jb, 0
  %i.jd = extractvalue { i1, i8 } %i.jb, 1        ; 3 uses
  br i1 %i.jc, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.je = call i64 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix19TransitionCivilTimeNtBM_9TimeErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_11MinuteErrorEE13from_residualBQ_(i8 %i.jd, ptr nonnull align 8 @47) #14 ; 4 uses
  %.sroa.585.0.extract.shift.i = lshr i64 %i.je, 32
  br label %_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser16parse_posix_time.exit

bb.bl:                                            ; preds = %bb.bj
  %i.jf = load ptr, ptr %0, align 8
  %i.jg = load i64, ptr %i.k, align 8
  %i.jh = call i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.i) #14
  %i.ji = call ptr @_RINvMNtCs3oUPovFnLWP_4core5sliceSh3getjECsaR3IayqLkK5_9jiff_core(ptr %i.jf, i64 %i.jg, i64 %i.jh) #14
  %i.jj = call { i1, i8 } @_RNvMs1_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRhE6copiedCsaR3IayqLkK5_9jiff_core(ptr %i.ji) ; 2 uses
  %i.jk = extractvalue { i1, i8 } %i.jj, 0
  %i.jl = extractvalue { i1, i8 } %i.jj, 1
  %i.jm = zext i1 %i.jk to i8
  store i8 %i.jm, ptr %i.d, align 1
  %i.jn = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.jl, ptr %i.jn, align 1
  %i.jo = call zeroext i1 @_RNvXsf_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionhENtNtB7_3cmp9PartialEq2eqCsaR3IayqLkK5_9jiff_core(ptr nonnull %i.d, ptr nonnull @43) #14
  br i1 %i.jo, label %bb.bm, label %bb.bh

bb.bm:                                            ; preds = %bb.bl
  %i.jp = call i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.i) #14
  %i.jq = load i64, ptr %i.k, align 8
  %i.jr = icmp eq i64 %i.jp, %i.jq
  br i1 %i.jr, label %_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser16parse_posix_time.exit, label %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit98.i

_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit98.i: ; preds = %bb.bm
  %i.js = call i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.i) #14
  %i.jt = call { i64, i64 } @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_addCsaR3IayqLkK5_9jiff_core(i64 %i.js, i64 1) #14 ; 2 uses
  %i.ju = extractvalue { i64, i64 } %i.jt, 0
  %i.jv = extractvalue { i64, i64 } %i.jt, 1
  %i.jw = call i64 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6expectCsaR3IayqLkK5_9jiff_core(i64 %i.ju, i64 %i.jv, ptr nonnull @84, i64 25, ptr nonnull align 8 @85) #14
  call void @_RNvMs7_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3setCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.i, i64 %i.jw) #14
  %i.jx = call i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.i) #14
  %i.jy = load i64, ptr %i.k, align 8
  %.not101.i = icmp eq i64 %i.jx, %i.jy
  br i1 %.not101.i, label %_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser16parse_posix_time.exit, label %bb.bn

bb.bn:                                            ; preds = %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit98.i
  %i.jz = call fastcc { i1, i8 } @_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser12parse_second(ptr nonnull align 8 %0) ; 2 uses
  %i.ka = extractvalue { i1, i8 } %i.jz, 0
  %i.kb = extractvalue { i1, i8 } %i.jz, 1
  %i.kc = call { i1, i8 } @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultaNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11SecondErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i1 zeroext %i.ka, i8 %i.kb) #14 ; 2 uses
  %i.kd = extractvalue { i1, i8 } %i.kc, 0
  %i.ke = extractvalue { i1, i8 } %i.kc, 1        ; 2 uses
  br i1 %i.kd, label %bb.bo, label %bb.bh

bb.bo:                                            ; preds = %bb.bn
  %i.kf = call i64 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix19TransitionCivilTimeNtBM_9TimeErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_11SecondErrorEE13from_residualBQ_(i8 %i.ke, ptr nonnull align 8 @46) #14 ; 4 uses
  %.sroa.580.0.extract.shift.i = lshr i64 %i.kf, 32
  br label %_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser16parse_posix_time.exit

bb.bp:                                            ; preds = %bb.bh
  call void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displaylECsaR3IayqLkK5_9jiff_core(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 4 %i.c) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  %i.kg = call { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj27_Kj1_ECsaR3IayqLkK5_9jiff_core(ptr nonnull @44, ptr nonnull align 8 %i.b) #14 ; 2 uses
  %i.kh = extractvalue { ptr, ptr } %i.kg, 0
  %i.ki = extractvalue { ptr, ptr } %i.kg, 1
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr %i.kh, ptr %i.ki, ptr nonnull align 8 @45) #15
  unreachable

bb.bq:                                            ; preds = %bb.bh
  %i.kj = zext i32 %i.im to i64
  br label %_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser16parse_posix_time.exit

_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser16parse_posix_time.exit: ; preds = %bb.au, %bb.ax, %bb.bf, %bb.bi, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i72, %bb.bk, %bb.bm, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit98.i, %bb.bo, %bb.bq
  %.sroa.1330.0.i = phi i64 [ %.sroa.595.0.extract.shift.i, %bb.ax ], [ %.sroa.590.0.extract.shift.i, %bb.bf ], [ %.sroa.585.0.extract.shift.i, %bb.bk ], [ %.sroa.580.0.extract.shift.i, %bb.bo ], [ %i.kj, %bb.bq ], [ 0, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i72 ], [ %.sroa.5.0.extract.shift.i, %bb.au ], [ 0, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit98.i ], [ 0, %bb.bi ], [ 0, %bb.bm ]
  %.sroa.11.0.i = phi i64 [ %i.hk, %bb.ax ], [ %i.id, %bb.bf ], [ %i.je, %bb.bk ], [ %i.kf, %bb.bo ], [ 0, %bb.bq ], [ 0, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i72 ], [ %i.gx, %bb.au ], [ 0, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit98.i ], [ 0, %bb.bi ], [ 0, %bb.bm ]
  %.sroa.9.0.i = phi i64 [ %i.hk, %bb.ax ], [ %i.id, %bb.bf ], [ %i.je, %bb.bk ], [ %i.kf, %bb.bo ], [ 0, %bb.bq ], [ 512, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i72 ], [ %i.gx, %bb.au ], [ 768, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit98.i ], [ 512, %bb.bi ], [ 768, %bb.bm ]
  %.sroa.0.0.i69 = phi i64 [ %i.hk, %bb.ax ], [ %i.id, %bb.bf ], [ %i.je, %bb.bk ], [ %i.kf, %bb.bo ], [ 0, %bb.bq ], [ 1, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i72 ], [ %i.gx, %bb.au ], [ 1, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit98.i ], [ 1, %bb.bi ], [ 1, %bb.bm ]
  %.sroa.1330.0.insert.shift.i = shl nuw i64 %.sroa.1330.0.i, 32
  %i.kk = and i64 %.sroa.11.0.i, 4294901760
  %.sroa.11.0.insert.insert.i = or disjoint i64 %i.kk, %.sroa.1330.0.insert.shift.i
  %.sroa.9.0.insert.ext.i = and i64 %.sroa.9.0.i, 65280
  %.sroa.9.0.insert.insert.i = or disjoint i64 %.sroa.11.0.insert.insert.i, %.sroa.9.0.insert.ext.i
  %.sroa.0.0.insert.ext.i70 = and i64 %.sroa.0.0.i69, 255
  %.sroa.0.0.insert.insert.i71 = or disjoint i64 %.sroa.9.0.insert.insert.i, %.sroa.0.0.insert.ext.i70
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.kl = call i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix19TransitionCivilTimeNtBM_9TimeErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(i64 %.sroa.0.0.insert.insert.i71) #14 ; 4 uses
  %i.km = trunc i64 %i.kl to i1
  br i1 %i.km, label %bb.br, label %bb.bs

_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread: ; preds = %bb.ap, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit, %bb.bs, %bb.br, %bb.aq, %bb.an
  %.sroa.6.sroa.0.0 = phi i64 [ %.sroa.265.0.extract.shift, %bb.an ], [ %.sroa.235.0.extract.trunc, %bb.aq ], [ %.sroa.261.0.extract.shift, %bb.br ], [ %.sroa.247.0.extract.trunc, %bb.bs ], [ 1, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit ], [ 1, %bb.ap ]
  %.sroa.7.0 = phi i64 [ %.sroa.366.0.extract.shift, %bb.an ], [ 30923764531200, %bb.aq ], [ %.sroa.362.0.extract.shift, %bb.br ], [ %.sroa.5.0.extract.shift, %bb.bs ], [ 0, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit ], [ 0, %bb.ap ]
  %.sroa.0.0 = phi i64 [ %i.fp, %bb.an ], [ %.sroa.034.0.extract.trunc, %bb.aq ], [ %i.kn, %bb.br ], [ %.sroa.046.0.extract.trunc, %bb.bs ], [ 255, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit ], [ 255, %bb.ap ]
  %.sroa.6.0.insert.ext = shl nuw i64 %.sroa.6.sroa.0.0, 8
  %.sroa.6.0.insert.shift = and i64 %.sroa.6.0.insert.ext, 4294967040
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.shift, %.sroa.7.0
  %.sroa.0.0.insert.ext = and i64 %.sroa.0.0, 255
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert

bb.br:                                            ; preds = %_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser16parse_posix_time.exit
  %.sroa.358.0.extract.shift = lshr i64 %i.kl, 16
  %.sroa.358.0.extract.trunc = trunc i64 %.sroa.358.0.extract.shift to i8
  %.sroa.257.0.extract.shift = lshr i64 %i.kl, 8
  %.sroa.257.0.extract.trunc = trunc i64 %.sroa.257.0.extract.shift to i8
  %i.kn = call i64 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DayTimeNtBM_13DateTimeErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_9TimeErrorEE13from_residualBQ_(i8 %.sroa.257.0.extract.trunc, i8 %.sroa.358.0.extract.trunc, ptr nonnull align 8 @59) #14 ; 3 uses
  %.sroa.261.0.extract.shift = lshr i64 %i.kn, 8
  %.sroa.362.0.extract.shift = and i64 %i.kn, -4294967296
  br label %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread

bb.bs:                                            ; preds = %_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser16parse_posix_time.exit
  %.sroa.5.0.extract.shift = and i64 %i.kl, -4294967296
  %.sroa.046.0.extract.trunc = zext i32 %i.fm to i64
  %.sroa.247.0.extract.shift = lshr i32 %i.fm, 8
  %.sroa.247.0.extract.trunc = zext nneg i32 %.sroa.247.0.extract.shift to i64
  br label %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser21parse_posix_time_zone(ptr noalias nonnull align 8 %0, ptr align 8 %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %.sroa.030.i = alloca [40 x i8], align 8        ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 4                ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.015 = alloca [72 x i8], align 8          ; 3 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 3 uses
  %i.m = alloca [1 x i8], align 1                 ; 2 uses
  %i.n = alloca [48 x i8], align 8                ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 2 uses
  %i.p = alloca [24 x i8], align 8                ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 17 uses
  %i.t = tail call i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s) #14
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 13 uses
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser18parse_abbreviation(ptr noalias align 8 %i.o, ptr nonnull align 8 %1)
  call void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_ENtNtNtBN_2tz5posix17AbbreviationErrorE7map_errNtB1w_14ParseErrorKindNcNtB2e_15AbbreviationStd0EBN_(ptr nonnull sret([24 x i8]) align 8 %i.p, ptr nonnull align 8 %i.o) #14
  call void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_ENtNtNtBP_2tz5posix14ParseErrorKindENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.q, ptr nonnull align 8 %i.p) #14
  %i.x = load i8, ptr %i.q, align 8
  %i.y = icmp eq i8 %i.x, -1
  br i1 %i.y, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i32 5, ptr %i.z, align 1
  store i8 -1, ptr %0, align 8
  br label %bb.bj

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.sroa.03.0.copyload = load i32, ptr %i.aa, align 1
  call void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix8TimeZoneNtBM_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_14ParseErrorKindEE13from_residualBQ_(ptr nonnull sret([80 x i8]) align 8 %0, i32 %.sroa.03.0.copyload, ptr nonnull align 8 @67) #14
  br label %bb.bj

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.ab = invoke fastcc i64 @_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser18parse_posix_offset(ptr nonnull align 8 %1)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %.body, %bb.g
  %.pn34 = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %.pn, %.body ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_EEBG_(ptr nonnull align 8 %i.r) #17
          to label %bb.bl unwind label %bb.bk

bb.g:                                             ; preds = %bb.bh, %bb.k, %bb.i, %bb.h, %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.ad = invoke i64 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBM_5posix11OffsetErrorE7map_errNtB1v_14ParseErrorKindNcNtB22_9OffsetStd0EBO_(i64 %i.ab)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.ae = invoke i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBO_5posix14ParseErrorKindENtNtNtB7_3ops9try_trait3Try6branchBQ_(i64 %i.ad)
          to label %bb.j unwind label %bb.g       ; 3 uses

bb.j:                                             ; preds = %bb.i
  %.sroa.325.0.extract.shift = lshr i64 %i.ae, 32
  %.sroa.325.0.extract.trunc = trunc nuw i64 %.sroa.325.0.extract.shift to i32 ; 3 uses
  %i.af = trunc i64 %i.ae to i1
  br i1 %i.af, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ag = trunc i64 %i.ae to i32
  %.sroa.027.0.insert.insert = call i32 @llvm.fshl.i32(i32 %.sroa.325.0.extract.trunc, i32 %i.ag, i32 24)
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix8TimeZoneNtBM_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_14ParseErrorKindEE13from_residualBQ_(ptr nonnull sret([80 x i8]) align 8 %0, i32 %.sroa.027.0.insert.insert, ptr nonnull align 8 @66)
          to label %bb.bi unwind label %bb.g

bb.l:                                             ; preds = %bb.j
  store i8 -1, ptr %i.n, align 8
  %i.ah = invoke i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s) #14
          to label %bb.n unwind label %bb.m

.body:                                            ; preds = %bb.w, %bb.m, %bb.bf
  %.pn = phi { ptr, i32 } [ %i.ei, %bb.bf ], [ %i.ai, %bb.m ], [ %i.bb, %bb.w ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DstEEB13_(ptr nonnull align 8 %i.n) #17
          to label %bb.f unwind label %bb.bk

bb.m:                                             ; preds = %.invoke, %bb.at, %bb.u, %.noexc41, %.noexc40, %bb.t, %bb.s, %bb.o, %bb.l, %bb.bd, %bb.bb, %bb.q
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.n:                                             ; preds = %bb.l
  %i.aj = load i64, ptr %i.u, align 8
  %i.ak = icmp eq i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = invoke i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s) #14
          to label %.noexc unwind label %bb.m     ; 3 uses

.noexc:                                           ; preds = %bb.o
  %i.am = load i64, ptr %i.u, align 8             ; 2 uses
  %i.an = icmp ult i64 %i.al, %i.am
  br i1 %i.an, label %bb.q, label %.invoke

bb.p:                                             ; preds = %bb.bg, %bb.ba, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.015, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %.sroa.015.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.015, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.015.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %i.n, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.015, i64 72, i1 false)
  %.sroa.316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %.sroa.325.0.extract.trunc, ptr %.sroa.316.0..sroa_idx, align 8
  br label %bb.bj

bb.q:                                             ; preds = %.noexc
  %i.ao = load ptr, ptr %1, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.al
  %i.aq = load i8, ptr %i.ap, align 1
  store i8 %i.aq, ptr %i.m, align 1
  %i.ar = invoke zeroext i1 @_RNvMs4_NtCs3oUPovFnLWP_4core3numh19is_ascii_alphabeticCsaR3IayqLkK5_9jiff_core(ptr nonnull %i.m)
          to label %bb.r unwind label %bb.m

bb.r:                                             ; preds = %bb.q
  br i1 %i.ar, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = invoke i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s) #14
          to label %.noexc37 unwind label %bb.m   ; 3 uses

.noexc37:                                         ; preds = %bb.s
  %i.at = load i64, ptr %i.u, align 8             ; 2 uses
  %i.au = icmp ult i64 %i.as, %i.at
  br i1 %i.au, label %bb.ba, label %.invoke

.invoke:                                          ; preds = %.noexc37, %.noexc
  %i.av = phi i64 [ %i.al, %.noexc ], [ %i.as, %.noexc37 ]
  %i.aw = phi i64 [ %i.am, %.noexc ], [ %i.at, %.noexc37 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.av, i64 %i.aw, ptr nonnull align 8 @86) #15
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %bb.ba, %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !44)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.030.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke fastcc void @_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser18parse_abbreviation(ptr noalias align 8 %i.f, ptr nonnull align 8 %1)
          to label %.noexc40 unwind label %bb.m

.noexc40:                                         ; preds = %bb.t
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_ENtNtNtBN_2tz5posix17AbbreviationErrorE7map_errNtB1w_14ParseErrorKindNcNtB2e_15AbbreviationDst0EBN_(ptr nonnull sret([24 x i8]) align 8 %i.g, ptr nonnull align 8 %i.f) #14
          to label %.noexc41 unwind label %bb.m

.noexc41:                                         ; preds = %.noexc40
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_ENtNtNtBP_2tz5posix14ParseErrorKindENtNtNtB7_3ops9try_trait3Try6branchBP_(ptr nonnull sret([24 x i8]) align 8 %i.h, ptr nonnull align 8 %i.g) #14
          to label %.noexc42 unwind label %bb.m

.noexc42:                                         ; preds = %.noexc41
  %i.ax = load i8, ptr %i.h, align 8, !noalias !44
  %i.ay = icmp eq i8 %i.ax, -1
  br i1 %i.ay, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc42
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.sroa.0.0.copyload.i = load i32, ptr %i.az, align 1, !noalias !44
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DstNtBM_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_14ParseErrorKindEE13from_residualBQ_(ptr nonnull sret([48 x i8]) align 8 %i.j, i32 %.sroa.0.0.copyload.i, ptr nonnull align 8 @36) #14
          to label %bb.bb unwind label %bb.m

bb.v:                                             ; preds = %.noexc42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !44
  %i.ba = invoke i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s) #14
          to label %bb.x unwind label %bb.w, !noalias !44

bb.w:                                             ; preds = %.invoke99.i, %bb.av, %bb.au, %.invoke.i, %.noexc89.i, %.noexc88.i, %bb.ar, %.noexc86.i, %.noexc85.i, %.noexc84.i, %.noexc83.i, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i, %bb.aq, %.noexc80.i, %.noexc79.i, %.noexc78.i, %bb.ap, %.noexc75.i, %.noexc74.i, %bb.ao, %.noexc72.i, %.noexc71.i, %.noexc70.i, %.noexc69.i, %bb.an, %bb.am, %bb.aj, %bb.ag, %bb.af, %bb.ae, %.invoke98.i, %bb.ad, %bb.ab, %bb.aa, %bb.y, %bb.v
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_EEBG_(ptr nonnull align 8 %i.i) #17
          to label %.body unwind label %bb.az

bb.x:                                             ; preds = %bb.v
  %i.bc = load i64, ptr %i.u, align 8, !noalias !44
  %i.bd = icmp eq i64 %i.ba, %i.bc
  br i1 %i.bd, label %.sink.split.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.be = invoke i64 @_RNvMNtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB2_6Offset11checked_addB6_(i32 %.sroa.325.0.extract.trunc, i32 3600)
          to label %bb.z unwind label %bb.w, !noalias !44 ; 3 uses

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44
  %i.bf = trunc i64 %i.be to i1
  br i1 %i.bf, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.bg = lshr i64 %i.be, 16
  %i.bh = trunc i64 %i.bg to i32
  store i32 %i.bh, ptr %i.b, align 4, !noalias !44
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr nonnull @5, i64 43, ptr nonnull %i.b, ptr nonnull align 8 @4, ptr nonnull align 8 @33) #15
          to label %.noexc.i unwind label %bb.w, !noalias !44

.noexc.i:                                         ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %bb.z
  %.sroa.33.0.extract.shift.i.i = lshr i64 %i.be, 32
  %.sroa.33.0.extract.trunc.i.i = trunc nuw i64 %.sroa.33.0.extract.shift.i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44
  %i.bi = invoke i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s) #14
          to label %.noexc61.i unwind label %bb.w, !noalias !44 ; 3 uses

.noexc61.i:                                       ; preds = %bb.ab
  %i.bj = load i64, ptr %i.u, align 8, !noalias !44 ; 2 uses
  %i.bk = icmp ult i64 %i.bi, %i.bj
  br i1 %i.bk, label %bb.ac, label %.invoke98.i

bb.ac:                                            ; preds = %.noexc61.i
  %i.bl = load ptr, ptr %1, align 8, !noalias !44
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bi
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !44
  %.not.i = icmp eq i8 %i.bn, 44
  br i1 %.not.i, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ak, %bb.ac
  %.sroa.05.0.i = phi i32 [ %.sroa.342.0.extract.trunc.i, %bb.ak ], [ %.sroa.33.0.extract.trunc.i.i, %bb.ac ]
  %i.bo = invoke i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s) #14
          to label %.noexc63.i unwind label %bb.w, !noalias !44 ; 3 uses

.noexc63.i:                                       ; preds = %bb.ad
  %i.bp = load i64, ptr %i.u, align 8, !noalias !44 ; 2 uses
  %i.bq = icmp ult i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.al, label %.invoke98.i

.invoke98.i:                                      ; preds = %.noexc63.i, %.noexc61.i
  %i.br = phi i64 [ %i.bi, %.noexc61.i ], [ %i.bo, %.noexc63.i ]
  %i.bs = phi i64 [ %i.bj, %.noexc61.i ], [ %i.bp, %.noexc63.i ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 %i.br, i64 %i.bs, ptr nonnull align 8 @86) #15
          to label %.cont.i unwind label %bb.w, !noalias !44

.cont.i:                                          ; preds = %.invoke98.i
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.bt = invoke fastcc i64 @_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser18parse_posix_offset(ptr nonnull align 8 %1)
          to label %bb.af unwind label %bb.w, !noalias !44

bb.af:                                            ; preds = %bb.ae
  %i.bu = invoke i64 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBM_5posix11OffsetErrorE7map_errNtB1v_14ParseErrorKindNcNtB22_9OffsetDst0EBO_(i64 %i.bt)
          to label %bb.ag unwind label %bb.w, !noalias !44

bb.ag:                                            ; preds = %bb.af
  %i.bv = invoke i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBO_5posix14ParseErrorKindENtNtNtB7_3ops9try_trait3Try6branchBQ_(i64 %i.bu)
          to label %bb.ah unwind label %bb.w, !noalias !44 ; 3 uses

bb.ah:                                            ; preds = %bb.ag
  %.sroa.342.0.extract.shift.i = lshr i64 %i.bv, 32
  %.sroa.342.0.extract.trunc.i = trunc nuw i64 %.sroa.342.0.extract.shift.i to i32 ; 2 uses
  %i.bw = trunc i64 %i.bv to i1
  br i1 %i.bw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bx = trunc i64 %i.bv to i32
  %.sroa.053.0.insert.insert.i = call i32 @llvm.fshl.i32(i32 %.sroa.342.0.extract.trunc.i, i32 %i.bx, i32 24)
  br label %.invoke99.i

bb.aj:                                            ; preds = %bb.ah
  %i.by = invoke i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s) #14
          to label %bb.ak unwind label %bb.w, !noalias !44

bb.ak:                                            ; preds = %bb.aj
  %i.bz = load i64, ptr %i.u, align 8, !noalias !44
  %i.ca = icmp eq i64 %i.by, %i.bz
  br i1 %i.ca, label %.sink.split.i, label %bb.ad

bb.al:                                            ; preds = %.noexc63.i
  %i.cb = load ptr, ptr %1, align 8, !noalias !44
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bo
  %i.cd = load i8, ptr %i.cc, align 1, !noalias !44
  %.not59.i = icmp eq i8 %i.cd, 44
  br i1 %.not59.i, label %bb.am, label %.sink.split.i

bb.am:                                            ; preds = %bb.al
  %i.ce = invoke i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s) #14
          to label %.noexc68.i unwind label %bb.w, !noalias !44

.noexc68.i:                                       ; preds = %bb.am
  %i.cf = load i64, ptr %i.u, align 8, !noalias !44
  %i.cg = icmp eq i64 %i.ce, %i.cf
  br i1 %i.cg, label %.sink.split.i, label %bb.an

bb.an:                                            ; preds = %.noexc68.i
  %i.ch = invoke i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s) #14
          to label %.noexc69.i unwind label %bb.w, !noalias !44

.noexc69.i:                                       ; preds = %bb.an
  %i.ci = invoke { i64, i64 } @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_addCsaR3IayqLkK5_9jiff_core(i64 %i.ch, i64 1) #14
          to label %.noexc70.i unwind label %bb.w, !noalias !44 ; 2 uses

.noexc70.i:                                       ; preds = %.noexc69.i
  %i.cj = extractvalue { i64, i64 } %i.ci, 0
  %i.ck = extractvalue { i64, i64 } %i.ci, 1
  %i.cl = invoke i64 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6expectCsaR3IayqLkK5_9jiff_core(i64 %i.cj, i64 %i.ck, ptr nonnull @84, i64 25, ptr nonnull align 8 @85) #14
          to label %.noexc71.i unwind label %bb.w, !noalias !44

.noexc71.i:                                       ; preds = %.noexc70.i
  invoke void @_RNvMs7_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3setCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s, i64 %i.cl) #14
          to label %.noexc72.i unwind label %bb.w, !noalias !44

.noexc72.i:                                       ; preds = %.noexc71.i
  %i.cm = invoke i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s) #14
          to label %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i unwind label %bb.w, !noalias !44

_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i: ; preds = %.noexc72.i
  %i.cn = load i64, ptr %i.u, align 8, !noalias !44
  %.not93.i = icmp eq i64 %i.cm, %i.cn
  br i1 %.not93.i, label %.sink.split.i, label %bb.ao

bb.ao:                                            ; preds = %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !45)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44
  %i.co = invoke fastcc i64 @_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser20parse_posix_datetime(ptr nonnull align 8 %1)
          to label %.noexc74.i unwind label %bb.w, !noalias !44

.noexc74.i:                                       ; preds = %bb.ao
  %i.cp = invoke i64 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DayTimeNtBK_13DateTimeErrorE7map_errNtBK_9RuleErrorNcNtB1W_13DateTimeStart0EBO_(i64 %i.co) #14
          to label %.noexc75.i unwind label %bb.w, !noalias !44

.noexc75.i:                                       ; preds = %.noexc74.i
  %i.cq = invoke i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DayTimeNtBM_9RuleErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(i64 %i.cp) #14
          to label %.noexc76.i unwind label %bb.w, !noalias !44 ; 3 uses

.noexc76.i:                                       ; preds = %.noexc75.i
  %i.cr = and i64 %i.cq, 255
  %i.cs = icmp eq i64 %i.cr, 255
  br i1 %i.cs, label %.invoke.i, label %bb.ap

bb.ap:                                            ; preds = %.noexc76.i
  %i.ct = load ptr, ptr %1, align 8, !noalias !46
  %i.cu = load i64, ptr %i.u, align 8, !noalias !46
  %i.cv = invoke i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s) #14
          to label %.noexc78.i unwind label %bb.w, !noalias !44

.noexc78.i:                                       ; preds = %bb.ap
  %i.cw = invoke ptr @_RINvMNtCs3oUPovFnLWP_4core5sliceSh3getjECsaR3IayqLkK5_9jiff_core(ptr %i.ct, i64 %i.cu, i64 %i.cv) #14
          to label %.noexc79.i unwind label %bb.w, !noalias !44

.noexc79.i:                                       ; preds = %.noexc78.i
  %i.cx = invoke { i1, i8 } @_RNvMs1_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRhE6copiedCsaR3IayqLkK5_9jiff_core(ptr %i.cw)
          to label %.noexc80.i unwind label %bb.w, !noalias !44 ; 2 uses

.noexc80.i:                                       ; preds = %.noexc79.i
  %i.cy = extractvalue { i1, i8 } %i.cx, 0
  %i.cz = extractvalue { i1, i8 } %i.cx, 1
  %i.da = zext i1 %i.cy to i8
  store i8 %i.da, ptr %i.a, align 1, !noalias !46
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.cz, ptr %i.db, align 1, !noalias !46
  %i.dc = invoke zeroext i1 @_RNvYINtNtCs3oUPovFnLWP_4core6option6OptionhENtNtB7_3cmp9PartialEq2neCsaR3IayqLkK5_9jiff_core(ptr nonnull %i.a, ptr nonnull @19) #14
          to label %.noexc81.i unwind label %bb.w, !noalias !44

.noexc81.i:                                       ; preds = %.noexc80.i
  br i1 %i.dc, label %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread.i.i, label %bb.aq

bb.aq:                                            ; preds = %.noexc81.i
  %i.dd = invoke i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s) #14
          to label %.noexc82.i unwind label %bb.w, !noalias !44

.noexc82.i:                                       ; preds = %bb.aq
  %i.de = load i64, ptr %i.u, align 8, !noalias !46
  %i.df = icmp eq i64 %i.dd, %i.de
  br i1 %i.df, label %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread.i.i, label %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i

_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i: ; preds = %.noexc82.i
  %i.dg = invoke i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s) #14
          to label %.noexc83.i unwind label %bb.w, !noalias !44

.noexc83.i:                                       ; preds = %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i.i
  %i.dh = invoke { i64, i64 } @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_addCsaR3IayqLkK5_9jiff_core(i64 %i.dg, i64 1) #14
          to label %.noexc84.i unwind label %bb.w, !noalias !44 ; 2 uses

.noexc84.i:                                       ; preds = %.noexc83.i
  %i.di = extractvalue { i64, i64 } %i.dh, 0
  %i.dj = extractvalue { i64, i64 } %i.dh, 1
  %i.dk = invoke i64 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6expectCsaR3IayqLkK5_9jiff_core(i64 %i.di, i64 %i.dj, ptr nonnull @84, i64 25, ptr nonnull align 8 @85) #14
          to label %.noexc85.i unwind label %bb.w, !noalias !44

.noexc85.i:                                       ; preds = %.noexc84.i
  invoke void @_RNvMs7_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3setCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s, i64 %i.dk) #14
          to label %.noexc86.i unwind label %bb.w, !noalias !44

.noexc86.i:                                       ; preds = %.noexc85.i
  %i.dl = invoke i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr nonnull align 8 %i.s) #14
          to label %.noexc87.i unwind label %bb.w, !noalias !44

.noexc87.i:                                       ; preds = %.noexc86.i
  %i.dm = load i64, ptr %i.u, align 8, !noalias !46
  %.not.i.i = icmp eq i64 %i.dl, %i.dm
  br i1 %.not.i.i, label %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread.i.i, label %bb.ar

_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread.i.i: ; preds = %.noexc87.i, %.noexc82.i, %.noexc81.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 2, ptr %i.dn, align 1, !alias.scope !45, !noalias !44
  store i8 -1, ptr %i.c, align 8, !alias.scope !45, !noalias !44
  br label %bb.au

bb.ar:                                            ; preds = %.noexc87.i
  %i.do = invoke fastcc i64 @_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser20parse_posix_datetime(ptr nonnull align 8 %1)
          to label %.noexc88.i unwind label %bb.w, !noalias !44

.noexc88.i:                                       ; preds = %bb.ar
  %i.dp = invoke i64 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DayTimeNtBK_13DateTimeErrorE7map_errNtBK_9RuleErrorNcNtB1W_11DateTimeEnd0EBO_(i64 %i.do) #14
          to label %.noexc89.i unwind label %bb.w, !noalias !44

.noexc89.i:                                       ; preds = %.noexc88.i
  %i.dq = invoke i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix7DayTimeNtBM_9RuleErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(i64 %i.dp) #14
          to label %.noexc90.i unwind label %bb.w, !noalias !44 ; 3 uses

.noexc90.i:                                       ; preds = %.noexc89.i
  %i.dr = and i64 %i.dq, 255
  %i.ds = icmp eq i64 %i.dr, 255
  br i1 %i.ds, label %.invoke.i, label %bb.as

.invoke.i:                                        ; preds = %.noexc90.i, %.noexc76.i
  %.sink.i = phi i64 [ %i.cq, %.noexc76.i ], [ %i.dq, %.noexc90.i ]
  %i.dt = phi ptr [ @21, %.noexc76.i ], [ @20, %.noexc90.i ]
  %.sroa.238.0.extract.shift.i.i = lshr i64 %.sink.i, 8
  %.sroa.238.0.extract.trunc.i.i = trunc i64 %.sroa.238.0.extract.shift.i.i to i32
  invoke void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix4RuleNtBM_9RuleErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1s_EE13from_residualBQ_(ptr nonnull sret([16 x i8]) align 4 %i.c, i32 %.sroa.238.0.extract.trunc.i.i, ptr nonnull align 8 %i.dt) #14
          to label %bb.au unwind label %bb.w, !noalias !44

bb.as:                                            ; preds = %.noexc90.i
  store i64 %i.cq, ptr %i.c, align 8, !alias.scope !45, !noalias !44
  %.sroa.432.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.dq, ptr %.sroa.432.0..sroa_idx.i.i, align 8, !alias.scope !45, !noalias !44
  br label %bb.au

.sink.split.i:                                    ; preds = %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i, %.noexc68.i, %bb.al, %bb.ak, %bb.x
  %.sink100.i = phi i32 [ 8, %bb.ak ], [ 6, %bb.al ], [ 7, %bb.x ], [ 9, %.noexc68.i ], [ 9, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i32 %.sink100.i, ptr %i.du, align 1, !alias.scope !44
  store i8 -1, ptr %i.j, align 8, !alias.scope !44
  br label %bb.at

bb.at:                                            ; preds = %.invoke99.i, %.sink.split.i
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_EEBG_(ptr nonnull align 8 %i.i)
          to label %bb.bb unwind label %bb.m

bb.au:                                            ; preds = %bb.as, %.invoke.i, %_RNvMs6_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser4bump.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44
  invoke void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix4RuleNtBK_9RuleErrorE7map_errNtBK_14ParseErrorKindNcNtB1O_4Rule0EBO_(ptr nonnull sret([16 x i8]) align 4 %i.d, ptr nonnull align 4 %i.c)
          to label %bb.av unwind label %bb.w, !noalias !44

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix4RuleNtBM_14ParseErrorKindENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr nonnull sret([16 x i8]) align 4 %i.e, ptr nonnull align 4 %i.d)
          to label %bb.aw unwind label %bb.w, !noalias !44

bb.aw:                                            ; preds = %bb.av
  %i.dv = load i8, ptr %i.e, align 4, !noalias !44
  %i.dw = icmp eq i8 %i.dv, -1
  br i1 %i.dw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.dx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
end_hunk_0
begin_hunk_1_@_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultsNtNtNtB5_3num5error15TryFromIntErrorE7map_errNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix13HourIanaErrorNCNvMs5_B1u_NtB1u_6Parser21parse_hour_ianav3plus0EB1y_
declare i32 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultsNtNtNtB5_3num5error15TryFromIntErrorE7map_errNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix13HourIanaErrorNCNvMs5_B1u_NtB1u_6Parser21parse_hour_ianav3plus0EB1y_(i32) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i32 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultsNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix13HourIanaErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBR_(i8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_ENtNtNtBN_2tz5posix17AbbreviationErrorE7map_errNtB1w_14ParseErrorKindNcNtB2e_15AbbreviationStd0EBN_(ptr sret([24 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz6offset6OffsetNtNtBM_5posix11OffsetErrorE7map_errNtB1v_14ParseErrorKindNcNtB22_9OffsetStd0EBO_(i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvMs4_NtCs3oUPovFnLWP_4core3numh19is_ascii_alphabeticCsaR3IayqLkK5_9jiff_core(ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DstNtBM_10ParseErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DstEEB13_(ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix8TimeZoneNtBM_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1w_EE13from_residualBQ_(ptr sret([80 x i8]) align 8, i32, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix8TimeZoneNtBM_10ParseErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtBM_14ParseErrorKindEE13from_residualBQ_(ptr sret([80 x i8]) align 8, i32, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { i1, i8 } @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultNtNtNtCsaR3IayqLkK5_9jiff_core5civil7weekday7WeekdayNtNtNtBQ_2tz5posix12WeekdayErrorENtNtNtB7_3ops9try_trait3Try6branchBQ_(i1 zeroext, i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i24 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTaaNtNtNtCsaR3IayqLkK5_9jiff_core5civil7weekday7WeekdayENtNtNtBT_2tz5posix19WeekdayOfMonthErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtB1G_12WeekdayErrorEE13from_residualBT_(i8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i24 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTaaNtNtNtCsaR3IayqLkK5_9jiff_core5civil7weekday7WeekdayENtNtNtBT_2tz5posix19WeekdayOfMonthErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtB1G_16WeekOfMonthErrorEE13from_residualBT_(i8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i24 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTaaNtNtNtCsaR3IayqLkK5_9jiff_core5civil7weekday7WeekdayENtNtNtBT_2tz5posix19WeekdayOfMonthErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zNtB1G_10MonthErrorEE13from_residualBT_(i8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i32 @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB8_3ops5range9RangeFromlENtB2_12IntoIterator9into_iterCsaR3IayqLkK5_9jiff_core(i32) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_RNvXs8_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range9RangeFromlENtNtNtB7_6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core(ptr align 4) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvMs4_NtCs3oUPovFnLWP_4core3numh21is_ascii_alphanumericCsaR3IayqLkK5_9jiff_core(ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultReNtNtNtB5_3str5error9Utf8ErrorE7map_errNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix23QuotedAbbreviationErrorNCNvMs5_B1o_NtB1o_6Parser25parse_quoted_abbreviation0EB1s_(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultReNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix23QuotedAbbreviationErrorENtNtNtB7_3ops9try_trait3Try6branchBS_(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i64 @_RNvMNtCs3oUPovFnLWP_4core3stre3lenCsaR3IayqLkK5_9jiff_core(ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMs2_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_8SmallStrKj6_E3newB7_(ptr sret([24 x i8]) align 8, ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_EE5ok_orNtNtNtBN_2tz5posix23QuotedAbbreviationErrorEBN_(ptr sret([24 x i8]) align 8, ptr align 8, i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_ENtNtNtBP_2tz5posix23QuotedAbbreviationErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1w_EE13from_residualBP_(ptr sret([24 x i8]) align 8, i8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultReNtNtNtB5_3str5error9Utf8ErrorE7map_errNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix25UnquotedAbbreviationErrorNCNvMs5_B1o_NtB1o_6Parser27parse_unquoted_abbreviation0EB1s_(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultReNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix25UnquotedAbbreviationErrorENtNtNtB7_3ops9try_trait3Try6branchBS_(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_EE5ok_orNtNtNtBN_2tz5posix25UnquotedAbbreviationErrorEBN_(ptr sret([24 x i8]) align 8, ptr align 8, i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultINtNtCsaR3IayqLkK5_9jiff_core4util8SmallStrKj6_ENtNtNtBP_2tz5posix25UnquotedAbbreviationErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zB1w_EE13from_residualBP_(ptr sret([24 x i8]) align 8, i8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11NumberErrorE7map_errNtBL_17JulianNoLeapErrorNcNtB1I_5Parse0EBP_(i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17JulianNoLeapErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i32 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultsNtNtNtB5_3num5error15TryFromIntErrorE7map_errNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17JulianNoLeapErrorNCNvMs5_B1u_NtB1u_6Parser30parse_posix_julian_day_no_leap0EB1y_(i32) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i32 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultsNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix17JulianNoLeapErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBR_(i8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, i64 } @_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB8_3ops5range5RangejENtB2_12IntoIterator9into_iterCsaR3IayqLkK5_9jiff_core(i64, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { i64, i64 } @_RNvXs4_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range5RangejENtNtNtB7_6traits8iterator8Iterator4nextCsaR3IayqLkK5_9jiff_core(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvMs4_NtCs3oUPovFnLWP_4core3numh14is_ascii_digitCsaR3IayqLkK5_9jiff_core(ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i32, i32 } @_RNvMs0_NtCs3oUPovFnLWP_4core3numl11checked_mulCsaR3IayqLkK5_9jiff_core(i32, i32) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionlE8and_thenlNCNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB12_6Parser31parse_number_with_upto_n_digits0EB16_(i32, i32, ptr align 4) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionlE5ok_orNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11NumberErrorEBW_(i32, i32, i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11NumberErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11NumberErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBR_(i8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix11NumberErrorE7map_errNtBL_15JulianLeapErrorNcNtB1I_5Parse0EBP_(i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultlNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix15JulianLeapErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i32 @_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultsNtNtNtB5_3num5error15TryFromIntErrorE7map_errNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix15JulianLeapErrorNCNvMs5_B1u_NtB1u_6Parser32parse_posix_julian_day_with_leap0EB1y_(i32) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i32 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultsNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix15JulianLeapErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualBR_(i8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i1, i8 } @_RNvMs4_NtCs3oUPovFnLWP_4core3numh11checked_subCsaR3IayqLkK5_9jiff_core(i8, i8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { i32, i32 } @_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionlE8and_thenlNCNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB12_6Parser34parse_number_with_exactly_n_digits0EB16_(i32, i32, ptr align 4) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultTNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix8TimeZonejENtBN_10ParseErrorENtNtNtB7_3ops9try_trait3Try6branchBR_(ptr sret([88 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh8is_emptyCsaR3IayqLkK5_9jiff_core(ptr, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare ptr @_RINvMNtCs3oUPovFnLWP_4core5sliceSh3getjECsaR3IayqLkK5_9jiff_core(ptr, i64, i64) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i1, i8 } @_RNvMs1_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionRhE6copiedCsaR3IayqLkK5_9jiff_core(ptr) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvMs8_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3getCsaR3IayqLkK5_9jiff_core(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs9_NtCs3oUPovFnLWP_4core3numj11checked_addCsaR3IayqLkK5_9jiff_core(i64, i64) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvMNtCs3oUPovFnLWP_4core6optionINtB2_6OptionjE6expectCsaR3IayqLkK5_9jiff_core(i64, i64, ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvMs7_NtCs3oUPovFnLWP_4core4cellINtB5_4CelljE3setCsaR3IayqLkK5_9jiff_core(ptr align 8, i64) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64, i64, ptr align 8) unnamed_addr #12

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, i64 } @_RNvXs5_NtNtCs3oUPovFnLWP_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsaR3IayqLkK5_9jiff_core(i64, ptr, i64, ptr align 8) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64, i64, i64, ptr align 8) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr align 8, ptr, i64) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXsp_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorENtNtNtB7_3ops9try_trait3Try6branchCsaR3IayqLkK5_9jiff_core(i1 zeroext) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare zeroext i1 @_RNvXsq_NtCs3oUPovFnLWP_4core6resultINtB5_6ResultuNtNtB7_3fmt5ErrorEINtNtNtB7_3ops9try_trait12FromResidualIBy_zBL_EE13from_residualCsaR3IayqLkK5_9jiff_core(ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare i64 @_RNvMs2_NtCsaR3IayqLkK5_9jiff_core4utilINtB5_8SmallStrKj1e_E18array_capacity_maxB7_() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr align 8, ptr align 8) unnamed_addr #0

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden i32 @_RNvXsc_NtNtCsaR3IayqLkK5_9jiff_core2tz6offsetNtB5_6OffsetNtNtCs3oUPovFnLWP_4core5clone5Clone5cloneB9_(ptr align 4) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsaR3IayqLkK5_9jiff_core2tz5posix3DstENtNtB7_5clone5Clone5cloneBQ_(ptr sret([48 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare void @_RINvMNtNtCs3oUPovFnLWP_4core3fmt2rtNtB3_8Argument11new_displayjECsaR3IayqLkK5_9jiff_core(ptr sret([16 x i8]) align 8, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj6a_Kj1_ECsaR3IayqLkK5_9jiff_core(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare hidden zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_fmtCsaR3IayqLkK5_9jiff_core(ptr align 8, ptr, ptr) unnamed_addr #1

; Function Attrs: inlinehint nonlazybind uwtable
declare { ptr, ptr } @_RINvMs2_NtCs3oUPovFnLWP_4core3fmtNtB6_9Arguments3newKj68_Kj1_ECsaR3IayqLkK5_9jiff_core(ptr, ptr align 8) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { inlinehint }
attributes #15 = { noinline noreturn }
attributes #16 = { noinline }
attributes #17 = { cold }
attributes #18 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = distinct !{!4, !"_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo7ordered"}
!5 = distinct !{!5, !4, !"_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo7ordered: argument 0"}
!6 = distinct !{!6, !"_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo7ordered"}
!7 = distinct !{!7, !6, !"_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo7ordered: argument 0"}
!8 = !{!5}
!9 = !{!7}
!10 = distinct !{!10, !"_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo7ordered"}
!11 = distinct !{!11, !10, !"_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo7ordered: argument 0"}
!12 = distinct !{!12, !"_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo7ordered"}
!13 = distinct !{!13, !12, !"_RNvMs4_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_7DstInfo7ordered: argument 0"}
!14 = !{!11}
!15 = !{!13}
!16 = distinct !{!16, !"_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone13dst_info_wall"}
!17 = distinct !{!17, !16, !"_RNvMs0_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_8TimeZone13dst_info_wall: argument 0"}
!18 = !{!17}
!19 = distinct !{!19, !"_RNCNvMs1_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_7DayTime11to_datetimes_0Bb_"}
!20 = distinct !{!20, !19, !"_RNCNvMs1_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_7DayTime11to_datetimes_0Bb_: argument 0"}
!21 = distinct !{!21, !"_RNCNvMs1_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_7DayTime11to_datetime0Bb_"}
!22 = distinct !{!22, !21, !"_RNCNvMs1_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_7DayTime11to_datetime0Bb_: argument 0"}
!23 = distinct !{!23, !"_RNCNvMs1_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_7DayTime11to_datetimes_0Bb_"}
!24 = distinct !{!24, !23, !"_RNCNvMs1_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_7DayTime11to_datetimes_0Bb_: argument 0"}
!25 = distinct !{!25, !"_RNCNvMs1_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_7DayTime11to_datetimes_0Bb_"}
!26 = distinct !{!26, !25, !"_RNCNvMs1_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_7DayTime11to_datetimes_0Bb_: argument 0"}
!27 = distinct !{!27, !"_RNCNvMs1_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_7DayTime11to_datetime0Bb_"}
!28 = distinct !{!28, !27, !"_RNCNvMs1_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB7_7DayTime11to_datetime0Bb_: argument 0"}
!29 = !{!20}
!30 = !{!22}
!31 = !{!24}
!32 = !{!26}
!33 = !{!28}
!34 = distinct !{!34, !"_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser27parse_unquoted_abbreviation"}
!35 = distinct !{!35, !34, !"_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser27parse_unquoted_abbreviation: argument 0"}
!36 = distinct !{!36, !"_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser25parse_quoted_abbreviation"}
!37 = distinct !{!37, !36, !"_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser25parse_quoted_abbreviation: argument 0"}
!38 = !{!35}
!39 = !{!37}
!40 = distinct !{!40, !"_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser15parse_posix_dst"}
!41 = distinct !{!41, !40, !"_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser15parse_posix_dst: argument 0"}
!42 = distinct !{!42, !"_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser10parse_rule"}
!43 = distinct !{!43, !42, !"_RNvMs5_NtNtCsaR3IayqLkK5_9jiff_core2tz5posixNtB5_6Parser10parse_rule: argument 0"}
!44 = !{!41}
!45 = !{!43}
!46 = !{!43, !41}
end_hunk_1
