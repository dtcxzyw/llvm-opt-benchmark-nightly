inline.NumInlined: 6274
inline.NumDeleted: 3003
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7analyze15deferred_scopes15deferred_scopes:bb.a
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding7BindingEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.sj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br label %bb.sl

bb.sl:                                            ; preds = %bb.jw, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCs7bpTdHNYxeX_20ruff_python_semantic7binding7BindingEECsEhZmuQNqkz_11ruff_linter.exit
  %.val56 = load ptr, ptr %i.dn, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.axk = getelementptr inbounds nuw i8, ptr %.val56, i64 152
  %i.axl = load i64, ptr %i.axk, align 8, !alias.scope !7777, !noundef !4
  %i.axm = and i64 %i.axl, 36028797018963968
  %.not180 = icmp eq i64 %i.axm, 0
  br i1 %.not180, label %bb.sn, label %bb.sm

bb.sm:                                            ; preds = %bb.sl
  invoke void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules8pyflakes5rules13unused_import13unused_import(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kg)
          to label %._crit_edge1714 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

._crit_edge1714:                                  ; preds = %bb.sm
  %.val55.pre = load ptr, ptr %i.dn, align 8
  br label %bb.sn

bb.sn:                                            ; preds = %._crit_edge1714, %bb.sl
  %.val55 = phi ptr [ %.val55.pre, %._crit_edge1714 ], [ %.val56, %bb.sl ] ; 4 uses
  %i.axn = getelementptr inbounds nuw i8, ptr %.val55, i64 176
  %i.axo = load i64, ptr %i.axn, align 8, !alias.scope !7780, !noundef !4
  %i.axp = and i64 %i.axo, 34359738368
  %.not181 = icmp eq i64 %i.axp, 0
  br i1 %.not181, label %bb.sr, label %bb.so

bb.so:                                            ; preds = %bb.sn
  %.sroa.01.0.copyload.i = load i8, ptr %i.jt, align 1
  %i.axq = trunc nuw i8 %.sroa.01.0.copyload.i to i1
  br i1 %i.axq, label %bb.sp, label %.thread164

bb.sp:                                            ; preds = %bb.so
  %.sroa.4.0.copyload.i = load i8, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.4.0.copyload.i.fr = freeze i8 %.sroa.4.0.copyload.i ; 2 uses
  %i.axr = icmp eq i8 %.sroa.4.0.copyload.i.fr, 3
  br i1 %i.axr, label %.split, label %bb.sq

.split:                                           ; preds = %bb.sp
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i140, align 1
  %i.axs = icmp ugt i8 %.sroa.5.0.copyload.i, 6
  br i1 %i.axs, label %.thread164, label %bb.sr

bb.sq:                                            ; preds = %bb.sp
  %i.axt = icmp ugt i8 %.sroa.4.0.copyload.i.fr, 2
  br i1 %i.axt, label %.thread164, label %bb.sr

.thread164:                                       ; preds = %bb.so, %.split, %bb.sq
  invoke void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules25unnecessary_future_import25unnecessary_future_import(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kg)
          to label %.thread164._crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.thread164._crit_edge:                            ; preds = %.thread164
  %.val54.pre = load ptr, ptr %i.dn, align 8
  br label %bb.sr

bb.sr:                                            ; preds = %.thread164._crit_edge, %bb.sn, %bb.sq, %.split
  %.val54 = phi ptr [ %.val54.pre, %.thread164._crit_edge ], [ %.val55, %bb.sn ], [ %.val55, %bb.sq ], [ %.val55, %.split ]
  %i.axu = getelementptr inbounds nuw i8, ptr %.val54, i64 160
  %i.axv = load i64, ptr %i.axu, align 8, !alias.scope !7783, !noundef !4
  %i.axw = and i64 %i.axv, 4503599627370496
  %.not182 = icmp eq i64 %i.axw, 0
  br i1 %.not182, label %bb.st, label %bb.ss

bb.ss:                                            ; preds = %bb.sr
  invoke void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules19import_private_name19import_private_name(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kg)
          to label %bb.st unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.st:                                            ; preds = %bb.ss, %bb.sr
  %i.axx = icmp eq i8 %i.afv, 2
  br i1 %i.axx, label %bb.sw, label %bb.sv

bb.su:                                            ; preds = %bb.sg, %.body
  %i.axy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.sv:                                            ; preds = %bb.ii, %bb.ih, %bb.hz, %bb.tg, %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled.exit144, %bb.is, %bb.st
  %i.axz = icmp eq ptr %i.ff, %i.ju
  br i1 %i.axz, label %._crit_edge, label %bb.j

bb.sw:                                            ; preds = %bb.st
  %.val53 = load ptr, ptr %i.dn, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.aya = getelementptr inbounds nuw i8, ptr %.val53, i64 168
  %i.ayb = load i64, ptr %i.aya, align 8, !alias.scope !7786, !noundef !4 ; 2 uses
  %i.ayc = and i64 %i.ayb, 2305843009213693952
  %.not183 = icmp eq i64 %i.ayc, 0
  br i1 %.not183, label %bb.sy, label %bb.sx

bb.sx:                                            ; preds = %bb.sw
  invoke void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules11no_self_use11no_self_use(ptr noundef nonnull align 8 %0, i32 noundef %i.jv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kg)
          to label %._crit_edge1717 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

._crit_edge1717:                                  ; preds = %bb.sx
  %.val52.pre = load ptr, ptr %i.dn, align 8      ; 2 uses
  %.phi.trans.insert1719 = getelementptr inbounds nuw i8, ptr %.val52.pre, i64 168
  %.pre1720 = load i64, ptr %.phi.trans.insert1719, align 8, !alias.scope !7789
  br label %bb.sy

bb.sy:                                            ; preds = %._crit_edge1717, %bb.sw
  %i.ayd = phi i64 [ %.pre1720, %._crit_edge1717 ], [ %i.ayb, %bb.sw ] ; 2 uses
  %.val52 = phi ptr [ %.val52.pre, %._crit_edge1717 ], [ %.val53, %bb.sw ]
  %i.aye = and i64 %i.ayd, 549755813888
  %.not184 = icmp eq i64 %i.aye, 0
  br i1 %.not184, label %bb.ta, label %bb.sz

bb.sz:                                            ; preds = %bb.sy
  invoke void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules15too_many_locals15too_many_locals(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kg)
          to label %._crit_edge1721 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

._crit_edge1721:                                  ; preds = %bb.sz
  %.val51.pre = load ptr, ptr %i.dn, align 8      ; 2 uses
  %.phi.trans.insert1723 = getelementptr inbounds nuw i8, ptr %.val51.pre, i64 168
  %.pre1724 = load i64, ptr %.phi.trans.insert1723, align 8, !alias.scope !7792
  br label %bb.ta

bb.ta:                                            ; preds = %._crit_edge1721, %bb.sy
  %i.ayf = phi i64 [ %.pre1724, %._crit_edge1721 ], [ %i.ayd, %bb.sy ] ; 2 uses
  %.val51 = phi ptr [ %.val51.pre, %._crit_edge1721 ], [ %.val52, %bb.sy ]
  %i.ayg = and i64 %i.ayf, 524288
  %.not185 = icmp eq i64 %i.ayg, 0
  br i1 %.not185, label %bb.tc, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  invoke void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules21singledispatch_method21singledispatch_method(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kg)
          to label %._crit_edge1725 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

._crit_edge1725:                                  ; preds = %bb.tb
  %.val50.pre = load ptr, ptr %i.dn, align 8      ; 2 uses
  %.phi.trans.insert1727 = getelementptr inbounds nuw i8, ptr %.val50.pre, i64 168
  %.pre1728 = load i64, ptr %.phi.trans.insert1727, align 8, !alias.scope !7795
  br label %bb.tc

bb.tc:                                            ; preds = %._crit_edge1725, %bb.ta
  %i.ayh = phi i64 [ %.pre1728, %._crit_edge1725 ], [ %i.ayf, %bb.ta ]
  %.val50 = phi ptr [ %.val50.pre, %._crit_edge1725 ], [ %.val51, %bb.ta ]
  %i.ayi = and i64 %i.ayh, 1048576
  %.not186 = icmp eq i64 %i.ayi, 0
  br i1 %.not186, label %bb.te, label %bb.td

bb.td:                                            ; preds = %bb.tc
  invoke void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules29singledispatchmethod_function29singledispatchmethod_function(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kg)
          to label %._crit_edge1729 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

._crit_edge1729:                                  ; preds = %bb.td
  %.val49.pre = load ptr, ptr %i.dn, align 8
  br label %bb.te

bb.te:                                            ; preds = %._crit_edge1729, %bb.tc
  %.val49 = phi ptr [ %.val49.pre, %._crit_edge1729 ], [ %.val50, %bb.tc ] ; 2 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %.val49, i64 176
  %i.ayk = load i64, ptr %i.ayj, align 8, !alias.scope !7798, !noundef !4
  %i.ayl = and i64 %i.ayk, 64
  %.not187 = icmp eq i64 %i.ayl, 0
  br i1 %.not187, label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled.exit144, label %bb.tf

_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled.exit144: ; preds = %._RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled.exit144_crit_edge, %bb.te
  %.val = phi ptr [ %.val.pre, %._RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled.exit144_crit_edge ], [ %.val49, %bb.te ]
  %i.aym = getelementptr inbounds nuw i8, ptr %.val, i64 136
  %i.ayn = load i64, ptr %i.aym, align 8, !alias.scope !7801, !noalias !7804, !noundef !4
  %i.ayo = and i64 %i.ayn, 1610612736
  %.not1877 = icmp eq i64 %i.ayo, 0
  br i1 %.not1877, label %bb.sv, label %bb.tg

bb.tf:                                            ; preds = %bb.te
  invoke void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules25bad_staticmethod_argument25bad_staticmethod_argument(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kg)
          to label %._RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled.exit144_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

._RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled.exit144_crit_edge: ; preds = %bb.tf
  %.val.pre = load ptr, ptr %i.dn, align 8
  br label %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled.exit144

bb.tg:                                            ; preds = %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled.exit144
  invoke void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules11pep8_naming5rules27invalid_first_argument_name27invalid_first_argument_name(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.kg)
          to label %bb.sv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast7analyze8bindings8bindings(ptr noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled.exit:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [40 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 7 uses
  %i.q = getelementptr i8, ptr %0, i64 1024       ; 18 uses
  %.val32 = load ptr, ptr %i.q, align 8, !nonnull !4, !align !10, !noundef !4 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val32, i64 184 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val32, i64 160
  %i.t = getelementptr inbounds nuw i8, ptr %.val32, i64 112
  %1 = getelementptr inbounds nuw i8, ptr %.val32, i64 104
  %2 = getelementptr inbounds nuw i8, ptr %.val32, i64 192
  %i.u = getelementptr inbounds nuw i8, ptr %.val32, i64 128
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !7808, !noalias !7811, !noundef !4
  %3 = load <2 x i64>, ptr %i.s, align 8, !alias.scope !7808, !noalias !7811 ; 2 uses
  %4 = load <2 x i64>, ptr %1, align 8, !alias.scope !7808, !noalias !7811 ; 2 uses
  %5 = load <2 x i64>, ptr %i.r, align 8, !alias.scope !7808, !noalias !7811 ; 2 uses
  %6 = shufflevector <2 x i64> %5, <2 x i64> %3, <7 x i32> <i32 0, i32 3, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <2 x i64> %3, <2 x i64> %4, <7 x i32> <i32 poison, i32 poison, i32 0, i32 3, i32 poison, i32 poison, i32 poison>
  %8 = shufflevector <7 x i64> %6, <7 x i64> %7, <7 x i32> <i32 0, i32 1, i32 9, i32 10, i32 poison, i32 poison, i32 poison>
  %9 = shufflevector <2 x i64> %4, <2 x i64> %5, <7 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 3, i32 poison>
  %10 = shufflevector <7 x i64> %8, <7 x i64> %9, <7 x i32> <i32 0, i32 1, i32 2, i32 3, i32 11, i32 12, i32 poison>
  %11 = insertelement <7 x i64> poison, i64 %i.v, i64 6
  %12 = shufflevector <7 x i64> %10, <7 x i64> %11, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 2, i32 13>
  %13 = and <8 x i64> %12, <i64 4611686018427387904, i64 192, i64 1125899906842624, i64 137438953472, i64 1125899906842624, i64 8, i64 2147483648, i64 549755813888> ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val32, i64 120
  %14 = load <2 x i64>, ptr %i.r, align 8, !alias.scope !7808, !noalias !7811
  %15 = load i64, ptr %2, align 8, !alias.scope !7808, !noalias !7811, !noundef !4
  %16 = load i64, ptr %i.r, align 8, !alias.scope !7808, !noalias !7811, !noundef !4
  %17 = load <2 x i64>, ptr %i.t, align 8, !alias.scope !7808, !noalias !7811
  %18 = load i64, ptr %i.w, align 8, !alias.scope !7808, !noalias !7811, !noundef !4
  %19 = shufflevector <2 x i64> %14, <2 x i64> %17, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  %20 = and <4 x i64> %19, <i64 536870912, i64 4294967296, i64 262144, i64 8589934592>
  %i.x = and i64 %16, 256
  %i.y = or i64 %18, %15
  %i.z = and i64 %i.y, 70368744177664
  %21 = shufflevector <8 x i64> %13, <8 x i64> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %rdx.op = or disjoint <4 x i64> %21, %20
  %22 = shufflevector <4 x i64> %rdx.op, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %23 = shufflevector <8 x i64> %22, <8 x i64> %13, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 12, i32 13, i32 14, i32 15>
  %24 = tail call i64 @llvm.vector.reduce.or.v8i64(<8 x i64> %23)
  %i.aa = or i64 %24, %i.x
  %i.ab = or i64 %i.aa, %i.z
  %.not121 = icmp eq i64 %i.ab, 0
  br i1 %.not121, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.af, 72
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx
  %i.ah = icmp eq i64 %i.af, 0
  br i1 %i.ah, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 1000      ; 4 uses
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.761.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.9.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.42.0..sroa_idx.i51 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.46.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1138
  br label %bb.b

.loopexit:                                        ; preds = %bb.cw, %bb.a, %_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker16any_rule_enabled.exit
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.cw
  %.sroa.0.091 = phi ptr [ %i.ad, %.lr.ph ], [ %i.ax, %bb.cw ] ; 28 uses
  %.sroa.7.090 = phi i64 [ 0, %.lr.ph ], [ %i.ay, %bb.cw ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.091, i64 72 ; 2 uses
  %i.ay = add nuw nsw i64 %.sroa.7.090, 1
  %i.az = call noundef i32 @_RNvMsj_NtCs7bpTdHNYxeX_20ruff_python_semantic7bindingNtB5_9BindingId10from_usize(i64 noundef %.sroa.7.090)
  %.val48 = load ptr, ptr %i.q, align 8, !nonnull !4, !align !10, !noundef !4 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.val48, i64 120
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !7815, !noundef !4
  %i.bc = and i64 %i.bb, 70368744177664
  %.not = icmp eq i64 %i.bc, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.f, %bb.d, %bb.b
  %.val47 = phi ptr [ %.val47.pre, %bb.f ], [ %.val48, %bb.d ], [ %.val48, %bb.b ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val47, i64 192
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !7818, !noundef !4
  %i.bf = and i64 %i.be, 70368744177664
  %.not69 = icmp eq i64 %i.bf, 0
  br i1 %.not69, label %bb.h, label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0.091, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !range !7241, !noundef !4
  %i.bi = icmp eq i32 %i.bh, 11
  br i1 %i.bi, label %bb.e, label %bb.c

bb.e:                                             ; preds = %bb.d
  %i.bj = call noundef align 8 ptr @_RNvMNtCs7bpTdHNYxeX_20ruff_python_semantic7bindingNtB2_7Binding9statement(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.0.091, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.ai) ; 2 uses
  %.not25 = icmp eq ptr %i.bj, null
  br i1 %.not25, label %bb.g, label %bb.f, !prof !65

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_return5rules8function18unnecessary_assign(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.bj)
  %.val47.pre = load ptr, ptr %i.q, align 8
  br label %bb.c

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @313) #39
  unreachable

bb.h:                                             ; preds = %bb.k, %bb.i, %bb.c
  %.val46 = phi ptr [ %.val46.pre, %bb.k ], [ %.val47, %bb.i ], [ %.val47, %bb.c ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val46, i64 160
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !7821, !noundef !4
  %i.bm = and i64 %i.bl, 2147483648
  %.not70 = icmp eq i64 %i.bm, 0
  br i1 %.not70, label %bb.m, label %bb.n

bb.i:                                             ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.091, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !range !7241, !noundef !4
  %i.bp = icmp eq i32 %i.bo, 11
  br i1 %i.bp, label %bb.j, label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.bq = call noundef align 8 ptr @_RNvMNtCs7bpTdHNYxeX_20ruff_python_semantic7bindingNtB2_7Binding9statement(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.0.091, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.ai) ; 2 uses
  %.not26 = icmp eq ptr %i.bq, null
  br i1 %.not26, label %bb.l, label %bb.k, !prof !65

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules31unnecessary_assign_before_yield31unnecessary_assign_before_yield(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 %i.bq)
  %.val46.pre = load ptr, ptr %i.q, align 8
  br label %bb.h

bb.l:                                             ; preds = %bb.j
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @314) #39
  unreachable

bb.m:                                             ; preds = %bb.au, %bb.n, %bb.o, %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECsEhZmuQNqkz_11ruff_linter.exit, %bb.h
  %.val45 = load ptr, ptr %i.q, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.val45, i64 168
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !7824, !noundef !4 ; 2 uses
  %i.bt = and i64 %i.bs, 128
  %.not71 = icmp eq i64 %i.bt, 0
  br i1 %.not71, label %bb.ax, label %bb.ay

bb.n:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.091, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !range !7241, !noundef !4
  %i.bw = icmp eq i32 %i.bv, 18
  br i1 %i.bw, label %bb.o, label %bb.m

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.091, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !noundef !4 ; 2 uses
  %i.bz = icmp ult i64 %i.by, 2305843009213693952
  call void @llvm.assume(i1 %i.bz)
  %i.ca = icmp eq i64 %i.by, 0
  br i1 %i.ca, label %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m

_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %.val46, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %.val50 = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.cd = load ptr, ptr %.val50, align 8, !nonnull !4, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %.val50, i64 8
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !4
  %i.cg = call { ptr, i64 } @_RNvMNtCs7bpTdHNYxeX_20ruff_python_semantic7bindingNtB2_7Binding4name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.0.091, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cd, i64 noundef %i.cf) ; 2 uses
  %i.ch = extractvalue { ptr, i64 } %i.cg, 0
  %i.ci = extractvalue { ptr, i64 } %i.cg, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i32 0, ptr %i.n, align 8
  store ptr %i.ch, ptr %.sroa.459.0..sroa_idx, align 8
  store i64 %i.ci, ptr %.sroa.560.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.761.0..sroa_idx, align 8
  store i64 %i.ci, ptr %.sroa.9.0..sroa_idx62, align 8
  store i8 1, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 1736
  %.val = load ptr, ptr %i.cj, align 8, !nonnull !4, !noundef !4
  %i.ck = getelementptr i8, ptr %i.cc, i64 1744
  %.val29 = load ptr, ptr %i.ck, align 8
  call fastcc void @_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex11search_half(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.m, ptr nonnull %.val, ptr %.val29, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.n)
  %i.cl = load i64, ptr %i.m, align 8, !range !63, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.not27 = icmp eq i64 %i.cl, 0
  br i1 %.not27, label %bb.p, label %bb.m

bb.p:                                             ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECsEhZmuQNqkz_11ruff_linter.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %.val49 = load ptr, ptr %i.aj, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.cm = load ptr, ptr %.val49, align 8, !nonnull !4, !noundef !4
  %i.cn = getelementptr inbounds nuw i8, ptr %.val49, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !noundef !4
  %i.cp = call { ptr, i64 } @_RNvMNtCs7bpTdHNYxeX_20ruff_python_semantic7bindingNtB2_7Binding4name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.0.091, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef %i.co) ; 2 uses
  %i.cq = extractvalue { ptr, i64 } %i.cp, 0
  %i.cr = extractvalue { ptr, i64 } %i.cp, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, i64 noundef %i.cr, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.cs = load i64, ptr %i.l, align 8, !range !63, !noundef !4
  %i.ct = trunc nuw i64 %i.cs to i1
  %i.cu = load i64, ptr %i.ak, align 8, !range !68, !noundef !4 ; 3 uses
  br i1 %i.ct, label %bb.q, label %bb.r, !prof !65

bb.q:                                             ; preds = %bb.p
  %i.cv = load i64, ptr %i.al, align 8
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cu, i64 %i.cv) #39
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.cw = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cx = icmp ule i64 %i.cr, %i.cu
  call void @llvm.assume(i1 %i.cx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %.not28 = icmp eq i64 %i.cr, 0
  br i1 %.not28, label %bb.s, label %bb.as

bb.s:                                             ; preds = %bb.as, %bb.r
  store i64 %i.cu, ptr %i.o, align 8
  store ptr %i.cw, ptr %.sroa.420.0..sroa_idx, align 8
  store i64 %i.cr, ptr %.sroa.521.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade8settingsNtB5_8SettingsNtNtCskRasR9DNdfH_10ruff_cache9cache_key8CacheKey9cache_key
declare void @_RNvXs2_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade8settingsNtB5_8SettingsNtNtCskRasR9DNdfH_10ruff_cache9cache_key8CacheKey9cache_key(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff8settingsNtB5_8SettingsNtNtCskRasR9DNdfH_10ruff_cache9cache_key8CacheKey9cache_key(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression7ElementENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef i64 @_RINvNvXsr_CsaSrGj5dYoxL_8thin_vecINtB8_7ThinVecpENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone19clone_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEB1P_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE13with_capacityCsEhZmuQNqkz_11ruff_linter(i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef i64 @_RINvNvXsr_CsaSrGj5dYoxL_8thin_vecINtB8_7ThinVecpENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone19clone_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEB1P_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultE13with_capacityCsEhZmuQNqkz_11ruff_linter(i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression6CompIfENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression11DictElementENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_13QualifiedNameNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_4NameNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs2i_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10IdentifierNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsT_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB5_18StringLiteralValueNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs9OSMwK5JXHk_12aho_corasick11ahocorasick11AcAutomatonEL_E9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #29

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic15DiagnosticInnerE9drop_slowBJ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #29

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsgHAIXRTqFF5_9pep440_rs7version12VersionInnerE9drop_slowBJ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #29

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex6RegexIE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #29

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBL_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #29

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcSNtNtB7_6string6StringE9drop_slowCs44bUZaa7qIB_5regex(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #29

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #29

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCsFAmsutybIp_4toml(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 -1, 1114112) i32 @_RNvNtCs7CqHJXwM7TD_21unicode_normalization9normalize7compose(i32 noundef range(i32 0, 1114112), i32 noundef range(i32 0, 1114112)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VeccE8truncateCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMNtNtCscdodAO9FK5_5alloc3vec13in_place_dropINtB2_11InPlaceDropNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression3ArgE3lenCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression16SubscriptElementENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsb2V9IiE8ECc_7seahash6streamNtB5_9SeaHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher11write_usize(ptr noalias noundef align 8 dereferenceable(56), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsf_NtCskLngH8kgpZI_15ruff_python_ast14python_versionNtB5_13PythonVersionNtNtCskRasR9DNdfH_10ruff_cache9cache_key8CacheKey9cache_key(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(2), ptr noalias noundef align 8 dereferenceable(56)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCs2AWtUsOyxgP_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvNtCs3kOHrDoa4ON_8bitflags6parser9to_writerNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27ambiguous_unicode_character9WordFlagsQNtNtCs4NRVxsYgnAr_4core3fmt9FormatterEBS_(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression22TemplatedStringContentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCs3kOHrDoa4ON_8bitflags6parser8from_strNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27ambiguous_unicode_character9WordFlagsEBR_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsarohYtwVpE2_13libcst_native5nodes10expression22FormattedStringContentENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpE16into_boxed_sliceCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE16into_boxed_sliceCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCs9OSMwK5JXHk_12aho_corasick4util6search9MatchKindNtB6_5Debug3fmtCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXslM_NtCsEhZmuQNqkz_11ruff_linter5codesNtB6_13FromNameErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtCsEhZmuQNqkz_11ruff_linter5codes13FromNameErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeB6_(ptr noalias noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs8bMtf1JxJvX_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs11tUcYE6FqM_14allocator_api26stable5alloc6global6GlobalECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtBJ_5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes8DictItemENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsa_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_6Binary3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsc_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_5Octal3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCs4NRVxsYgnAr_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path10components(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsi_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsb2V9IiE8ECc_7seahash6streamNtB5_9SeaHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher11write_isize(ptr noalias noundef align 8 dereferenceable(56), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs0_NtCsb2V9IiE8ECc_7seahash6streamNtB5_9SeaHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write(ptr noalias noundef align 8 dereferenceable(56), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB6_9DebugList7entriesRNtNtCscdodAO9FK5_5alloc6string6StringINtNtNtBa_5slice4iter4IterB14_EECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCs4NRVxsYgnAr_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCs4NRVxsYgnAr_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvXsr_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_17DiagnosticMessageINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare noundef ptr @_RINvNtCs9OSMwK5JXHk_12aho_corasick9automaton24try_find_overlapping_fwdRNtNtB4_3dfa3DFAEB4_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef align 8 dereferenceable(64)) unnamed_addr #29

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtCs9OSMwK5JXHk_12aho_corasick9automaton12try_find_fwdRNtNtB4_3dfa3DFAEB4_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvNtCsEhZmuQNqkz_11ruff_linter7message22create_lint_diagnosticNtNtCscdodAO9FK5_5alloc6string6StringB10_EB4_(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), i32 noundef, i32 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40), i32 noundef range(i32 0, 2), i32, ptr noundef nonnull, i32 noundef range(i32 0, 2), i32, i16 noundef range(i16 0, 968)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCs3kOHrDoa4ON_8bitflags4iterINtB5_9IterNamesNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27ambiguous_unicode_character9WordFlagsE3newBZ_(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvXse_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweEINtNtCs4NRVxsYgnAr_4core7convert5AsRefeE6as_refCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v8i64(<8 x i64>) #28

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree norecurse nosync nounwind nonlazybind memory(read, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #23 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #26 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9wFQrvczXsK_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #33 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #36 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #37 = { cold }
attributes #38 = { cold noreturn nounwind }
attributes #39 = { noreturn }
attributes #40 = { nounwind }
attributes #41 = { "function-inline-cost-multiplier"="2" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.97.1 (8bab26f4f 2026-07-14)"}
!3 = !{i64 -1, i64 -9223372036854775808}
!4 = !{}
!5 = !{!6}
!6 = distinct !{!6, !7, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules34suggested_to_move_to_provider_in_329check_names_moved_to_provider0Bb_: argument 1"}
!7 = distinct !{!7, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules34suggested_to_move_to_provider_in_329check_names_moved_to_provider0Bb_"}
!8 = !{!9}
!9 = distinct !{!9, !7, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules7airflow5rules34suggested_to_move_to_provider_in_329check_names_moved_to_provider0Bb_: argument 0"}
!10 = !{i64 8}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!13 = distinct !{!13, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!14 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!15 = !{i64 0, i64 3}
!16 = !{i64 0, i64 5}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_RNCINvMs2_NtCs7bpTdHNYxeX_20ruff_python_semantic10definitionNtB8_10Definition11is_propertyNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settings17DecoratorIteratorB1q_E0B1y_: argument 0"}
!19 = distinct !{!19, !"_RNCINvMs2_NtCs7bpTdHNYxeX_20ruff_python_semantic10definitionNtB8_10Definition11is_propertyNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10pydocstyle8settings17DecoratorIteratorB1q_E0B1y_"}
!20 = !{i64 -2, i64 -9223372036854775808}
!21 = !{!22, !24}
!22 = distinct !{!22, !23, !"_RINvMs_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex9find_iterReECsEhZmuQNqkz_11ruff_linter: argument 0"}
!23 = distinct !{!23, !"_RINvMs_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex9find_iterReECsEhZmuQNqkz_11ruff_linter"}
!24 = distinct !{!24, !23, !"_RINvMs_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex9find_iterReECsEhZmuQNqkz_11ruff_linter: argument 1"}
!25 = !{!26, !22, !24}
!26 = distinct !{!26, !27, !"_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCsEhZmuQNqkz_11ruff_linter: argument 0"}
!27 = distinct !{!27, !"_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCsEhZmuQNqkz_11ruff_linter"}
!28 = !{!22}
!29 = !{!30, !32}
!30 = distinct !{!30, !31, !"_RINvMs_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex13captures_iterReECsEhZmuQNqkz_11ruff_linter: argument 0"}
!31 = distinct !{!31, !"_RINvMs_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex13captures_iterReECsEhZmuQNqkz_11ruff_linter"}
!32 = distinct !{!32, !31, !"_RINvMs_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex13captures_iterReECsEhZmuQNqkz_11ruff_linter: argument 1"}
!33 = !{!34, !30, !32}
!34 = distinct !{!34, !35, !"_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCsEhZmuQNqkz_11ruff_linter: argument 0"}
!35 = distinct !{!35, !"_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCsEhZmuQNqkz_11ruff_linter"}
!36 = !{!30}
!37 = !{!32}
!38 = !{!39, !41}
!39 = distinct !{!39, !40, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjNtNtNtCs44bUZaa7qIB_5regex5regex6string8CapturesEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB25_8PeekableINtNtB27_9enumerate9EnumerateNtBQ_14CaptureMatchesEE4peek0ECsEhZmuQNqkz_11ruff_linter: argument 0"}
!40 = distinct !{!40, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjNtNtNtCs44bUZaa7qIB_5regex5regex6string8CapturesEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB25_8PeekableINtNtB27_9enumerate9EnumerateNtBQ_14CaptureMatchesEE4peek0ECsEhZmuQNqkz_11ruff_linter"}
!41 = distinct !{!41, !40, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjNtNtNtCs44bUZaa7qIB_5regex5regex6string8CapturesEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB25_8PeekableINtNtB27_9enumerate9EnumerateNtBQ_14CaptureMatchesEE4peek0ECsEhZmuQNqkz_11ruff_linter: argument 1"}
!42 = !{!41}
!43 = !{i64 -1, i64 3}
!44 = !{!24}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjNtNtNtCs44bUZaa7qIB_5regex5regex6string5MatchEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_9enumerate9EnumerateNtBQ_7MatchesEE4peek0ECsEhZmuQNqkz_11ruff_linter: argument 0"}
!47 = distinct !{!47, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjNtNtNtCs44bUZaa7qIB_5regex5regex6string5MatchEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_9enumerate9EnumerateNtBQ_7MatchesEE4peek0ECsEhZmuQNqkz_11ruff_linter"}
!48 = !{!46, !49}
!49 = distinct !{!49, !47, !"_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionIBw_TjNtNtNtCs44bUZaa7qIB_5regex5regex6string5MatchEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB22_8PeekableINtNtB24_9enumerate9EnumerateNtBQ_7MatchesEE4peek0ECsEhZmuQNqkz_11ruff_linter: argument 1"}
!50 = !{!49}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3u_10UnwindSafeNtB3b_4SyncEL_EEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!53 = distinct !{!53, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3u_10UnwindSafeNtB3b_4SyncEL_EEECsEhZmuQNqkz_11ruff_linter"}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9PoolGuardNtNtNtBK_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1E_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3C_10UnwindSafeNtB3j_4SyncEL_EEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!56 = distinct !{!56, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9PoolGuardNtNtNtBK_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1E_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3C_10UnwindSafeNtB3j_4SyncEL_EEECsEhZmuQNqkz_11ruff_linter"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_RNvXs5_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB1b_NtNtB2h_6marker4SendNtNtNtB2h_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB36_4SyncEL_EENtNtB2f_4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter: argument 0"}
!59 = distinct !{!59, !"_RNvXs5_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB1b_NtNtB2h_6marker4SendNtNtNtB2h_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB36_4SyncEL_EENtNtB2f_4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter"}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_RNvMs4_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB1b_NtNtB2h_6marker4SendNtNtNtB2h_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB36_4SyncEL_EE7put_impCsEhZmuQNqkz_11ruff_linter: argument 0"}
!62 = distinct !{!62, !"_RNvMs4_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB1b_NtNtB2h_6marker4SendNtNtNtB2h_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB36_4SyncEL_EE7put_impCsEhZmuQNqkz_11ruff_linter"}
!63 = !{i64 0, i64 2}
!64 = !{!61, !58, !55, !52}
!65 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!66 = !{i8 0, i8 2}
!67 = !{!58, !55, !52}
!68 = !{i64 0, i64 -9223372036854775807}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!71 = distinct !{!71, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3u_10UnwindSafeNtB3b_4SyncEL_EEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!74 = distinct !{!74, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3u_10UnwindSafeNtB3b_4SyncEL_EEECsEhZmuQNqkz_11ruff_linter"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9PoolGuardNtNtNtBK_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1E_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3C_10UnwindSafeNtB3j_4SyncEL_EEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!77 = distinct !{!77, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner9PoolGuardNtNtNtBK_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1E_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3C_10UnwindSafeNtB3j_4SyncEL_EEECsEhZmuQNqkz_11ruff_linter"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_RNvXs5_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB1b_NtNtB2h_6marker4SendNtNtNtB2h_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB36_4SyncEL_EENtNtB2f_4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter: argument 0"}
!80 = distinct !{!80, !"_RNvXs5_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB1b_NtNtB2h_6marker4SendNtNtNtB2h_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB36_4SyncEL_EENtNtB2f_4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter"}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_RNvMs4_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB1b_NtNtB2h_6marker4SendNtNtNtB2h_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB36_4SyncEL_EE7put_impCsEhZmuQNqkz_11ruff_linter: argument 0"}
!83 = distinct !{!83, !"_RNvMs4_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_9PoolGuardNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB1b_NtNtB2h_6marker4SendNtNtNtB2h_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB36_4SyncEL_EE7put_impCsEhZmuQNqkz_11ruff_linter"}
!84 = !{!82, !79, !76, !73}
!85 = !{!79, !76, !73}
!86 = !{!87}
!87 = distinct !{!87, !88, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter: argument 0"}
!88 = distinct !{!88, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter"}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter: argument 0"}
!91 = distinct !{!91, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter"}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!94 = distinct !{!94, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!95 = !{!96}
!96 = distinct !{!96, !97, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter: argument 0"}
!97 = distinct !{!97, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter"}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!100 = distinct !{!100, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB2_8Captures9get_group: argument 1"}
!103 = distinct !{!103, !"_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB2_8Captures9get_group"}
!104 = !{i32 0, i32 2}
!105 = !{!106}
!106 = distinct !{!106, !103, !"_RNvMNtNtCs98D8VPWzHuM_14regex_automata4util8capturesNtB2_8Captures9get_group: argument 0"}
!107 = !{!106, !102}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!110 = distinct !{!110, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!111 = !{!112}
!112 = distinct !{!112, !113, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter: argument 0"}
!113 = distinct !{!113, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter"}
!114 = !{!115}
!115 = distinct !{!115, !116, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!116 = distinct !{!116, !"_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get"}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter: argument 0"}
!119 = distinct !{!119, !"_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCsEhZmuQNqkz_11ruff_linter"}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules20any_eq_ne_annotation20any_eq_ne_annotations_0Bb_: argument 1"}
!122 = distinct !{!122, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules20any_eq_ne_annotation20any_eq_ne_annotations_0Bb_"}
!123 = !{!124, !121}
!124 = distinct !{!124, !122, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules10flake8_pyi5rules20any_eq_ne_annotation20any_eq_ne_annotations_0Bb_: argument 0"}
!125 = !{!124}
!126 = !{i32 0, i32 33}
!127 = !{!128, !124, !121}
!128 = distinct !{!128, !129, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEECsEhZmuQNqkz_11ruff_linter: argument 0"}
!129 = distinct !{!129, !"_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditEECsEhZmuQNqkz_11ruff_linter"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules9os_getcwd9os_getcwd0Bb_: argument 1"}
!132 = distinct !{!132, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules9os_getcwd9os_getcwd0Bb_"}
!133 = !{!134, !131}
!134 = distinct !{!134, !132, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules18flake8_use_pathlib5rules9os_getcwd9os_getcwd0Bb_: argument 0"}
!135 = !{!134}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_RNvMs1_NtCsEhZmuQNqkz_11ruff_linter8importerNtB5_13ImportRequest6import: argument 0"}
!138 = distinct !{!138, !"_RNvMs1_NtCsEhZmuQNqkz_11ruff_linter8importerNtB5_13ImportRequest6import"}
!139 = !{i64 4}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules15format_literals15format_literalss_0Bb_: argument 1"}
!142 = distinct !{!142, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules15format_literals15format_literalss_0Bb_"}
!143 = !{!144}
!144 = distinct !{!144, !142, !"_RNCNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules15format_literals15format_literalss_0Bb_: argument 0"}
!145 = !{!144, !141}
!146 = !{!147, !149, !144, !141}
!147 = distinct !{!147, !148, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules15format_literals13generate_call: argument 0"}
!148 = distinct !{!148, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules15format_literals13generate_call"}
!149 = distinct !{!149, !148, !"_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules15format_literals13generate_call: argument 1"}
!150 = !{!147, !144, !141}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get: argument 0"}
!153 = distinct !{!153, !"_RNvXs5_NtNtCs4NRVxsYgnAr_4core3str6traitsINtNtNtB9_3ops5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE3get"}
end_hunk_1
