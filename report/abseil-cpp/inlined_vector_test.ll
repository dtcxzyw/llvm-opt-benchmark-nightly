Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/inlined_vector_test?download=true
inline.NumInlined: 27452
inline.NumDeleted: 7595
loop-unroll.NumCompletelyUnrolled: 93
loop-unroll.NumRuntimeUnrolled: 181
loop-unroll.NumUnrolled: 278
begin_hunk_0_@_ZN12_GLOBAL__N_118IntVec_Insert_TestD0Ev:bb.a
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 19 uses
  %i.j = alloca ptr, align 8                      ; 6 uses
  %14 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %15 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %16 = alloca %"class.testing::Message", align 8 ; 7 uses
  %17 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %18 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %19 = alloca %"class.testing::Message", align 8 ; 7 uses
  %20 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %21 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 19 uses
  %i.l = alloca ptr, align 8                      ; 6 uses
  %22 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %23 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %24 = alloca %"class.testing::Message", align 8 ; 7 uses
  %25 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %26 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.m = alloca ptr, align 8                      ; 5 uses
  %27 = alloca %"class.testing::Message", align 8 ; 7 uses
  %28 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %29 = alloca %"class.std::vector.231", align 8  ; 12 uses
  %30 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 19 uses
  %i.n = alloca ptr, align 8                      ; 6 uses
  %31 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %32 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %33 = alloca %"class.testing::Message", align 8 ; 7 uses
  %34 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %35 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.o = alloca ptr, align 8                      ; 5 uses
  %36 = alloca %"class.testing::Message", align 8 ; 7 uses
  %37 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %38 = alloca %"class.std::vector.231", align 8  ; 12 uses
  %39 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 17 uses
  %i.p = alloca ptr, align 8                      ; 6 uses
  %40 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %41 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %42 = alloca %"class.testing::Message", align 8 ; 7 uses
  %43 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %44 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.q = alloca ptr, align 8                      ; 5 uses
  %45 = alloca %"class.testing::Message", align 8 ; 7 uses
  %46 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %47 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 23 uses
  %i.r = alloca [3 x i32], align 4                ; 11 uses
  %48 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 32 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.s = alloca ptr, align 8                      ; 6 uses
  %50 = alloca %"class.std::istream_iterator", align 8 ; 6 uses
  %51 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %52 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %53 = alloca %"class.testing::Message", align 8 ; 7 uses
  %54 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %55 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.t = alloca ptr, align 8                      ; 5 uses
  %56 = alloca %"class.testing::Message", align 8 ; 7 uses
  %57 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %58 = alloca %"class.absl::lts_20260526::InlinedVector", align 8 ; 19 uses
  %i.u = alloca [2 x i32], align 8                ; 10 uses
  %i.v = alloca ptr, align 8                      ; 6 uses
  %i.w = alloca [2 x i32], align 8                ; 9 uses
  %59 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %60 = alloca %"class.testing::internal::PredicateFormatterFromMatcher.350", align 8 ; 11 uses
  %61 = alloca %"class.testing::Message", align 8 ; 7 uses
  %62 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %63 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.x = alloca ptr, align 8                      ; 5 uses
  %64 = alloca %"class.testing::Message", align 8 ; 7 uses
  %65 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 10 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %26, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %30, i64 16 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 10 uses
  %i.as = getelementptr inbounds nuw i8, ptr %32, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %31, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %38, i64 8 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %39, i64 16 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %39, i64 8 ; 8 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %47, i64 8 ; 18 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %49, i64 8 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %48, i64 120 ; 5 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %48, i64 336
  %i.bq = getelementptr inbounds nuw i8, ptr %48, i64 344
  %i.br = getelementptr inbounds nuw i8, ptr %48, i64 345
  %i.bs = getelementptr inbounds nuw i8, ptr %48, i64 352
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 8), align 8 ; 4 uses
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8 ; 3 uses
  %i.bv = getelementptr i8, ptr %i.bt, i64 -24    ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %48, i64 8 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %48, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %48, i64 72 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %48, i64 80 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %48, i64 88 ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %48, i64 104 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %48, i64 96
  %i.ce = getelementptr inbounds nuw i8, ptr %50, i64 12 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %50, i64 8 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %51, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %55, i64 8 ; 2 uses
  %i.cm = load ptr, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  %i.cn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_istringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.co = getelementptr i8, ptr %i.cm, i64 -24
  %i.cp = getelementptr inbounds nuw i8, ptr %58, i64 16 ; 6 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %58, i64 8 ; 10 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.cs = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.ct = getelementptr inbounds nuw i8, ptr %60, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %60, i64 16 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %59, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %scevgep9131 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %scevgep9136 = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %49, i64 30
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv9141 = phi i64 [ 1, %bb.a ], [ %indvars.iv.next9142, %bb.c ] ; 2 uses
  %.05594 = phi i64 [ 0, %bb.a ], [ %i.da, %bb.c ] ; 14 uses
  %.not.i = icmp eq i64 %.05594, 0                ; 6 uses
  br label %bb.d

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit852
  %i.da = add nuw nsw i64 %.05594, 1              ; 2 uses
  %indvars.iv.next9142 = add nuw nsw i64 %indvars.iv9141, 1
  %exitcond9143.not = icmp eq i64 %i.da, 20
  br i1 %exitcond9143.not, label %bb.b, label %.preheader, !llvm.loop !1594

bb.d:                                             ; preds = %.preheader, %_ZNSt6vectorIiSaIiEED2Ev.exit852
  %indvars.iv9137 = phi i64 [ 2, %.preheader ], [ %indvars.iv.next9138, %_ZNSt6vectorIiSaIiEED2Ev.exit852 ] ; 2 uses
  %indvars.iv = phi i64 [ 1, %.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEED2Ev.exit852 ] ; 2 uses
  %.0605593 = phi i64 [ 0, %.preheader ], [ %i.gi, %_ZNSt6vectorIiSaIiEED2Ev.exit852 ] ; 82 uses
  %66 = shl nuw nsw i64 %.0605593, 2
  %67 = add nuw i64 %66, 4
  %i.db = shl nuw nsw i64 %.0605593, 2
  %i.dc = add nuw i64 %i.db, 16
  %68 = shl i64 %.0605593, 2
  %i.dd = shl nuw nsw i64 %.0605593, 2
  %i.de = add nuw i64 %i.dd, 20
  %i.df = shl nuw nsw i64 %.0605593, 2
  %i.dg = add nuw i64 %i.df, 12
  %i.dh = shl nuw nsw i64 %.0605593, 2
  %i.di = add nuw i64 %i.dh, 12
  %i.dj = shl nuw nsw i64 %.0605593, 2
  %i.dk = add nuw i64 %i.dj, 8
  br i1 %.not.i, label %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread, label %.lr.ph.i

_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  store i64 0, ptr %13, align 8, !tbaa !210
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr null, i64 %.0605593 ; 2 uses
  %i.dm = ptrtoint ptr %i.dl to i64               ; 2 uses
  br label %bb.s

.lr.ph.i:                                         ; preds = %bb.d, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  %.sroa.21.2 = phi ptr [ %.sroa.21.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ null, %bb.d ] ; 3 uses
  %.sroa.01257.2 = phi ptr [ %.sroa.01257.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ null, %bb.d ] ; 6 uses
  %i.dn = phi ptr [ %i.eg, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ null, %bb.d ] ; 3 uses
  %i.do = phi ptr [ %.sroa.131263.0, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ null, %bb.d ] ; 3 uses
  %.06.i = phi i64 [ %i.eh, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i ], [ 0, %bb.d ] ; 2 uses
  %i.dp = trunc nuw nsw i64 %.06.i to i32         ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.do, %i.dn
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = ptrtoint ptr %.sroa.01257.2 to i64      ; 2 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 5 uses
  %i.dt = icmp eq i64 %i.ds, 9223372036854775804
  br i1 %i.dt, label %bb.g, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.314) #38
          to label %.noexc unwind label %.loopexit.split-lp1365.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.f
  %i.du = ashr exact i64 %i.ds, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.du, i64 1)
  %i.dv = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.du ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %i.du
  %i.dx = call i64 @llvm.umin.i64(i64 %i.dv, i64 2305843009213693951)
  %i.dy = select i1 %i.dw, i64 2305843009213693951, i64 %i.dx ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.dy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.dz = shl nuw nsw i64 %i.dy, 2
  %i.ea = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dz) #41
          to label %.noexc228 unwind label %.loopexit.split-lp1365.loopexit.split-lp ; 4 uses

.noexc228:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.ds ; 2 uses
  store i32 %i.dp, ptr %i.eb, align 4, !tbaa !211
  %i.ec = icmp sgt i64 %i.ds, 0
  br i1 %i.ec, label %bb.h, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

bb.h:                                             ; preds = %.noexc228
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ea, ptr align 4 %.sroa.01257.2, i64 %i.ds, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i: ; preds = %bb.h, %.noexc228
  %.not.i17.i.i.i.i = icmp eq ptr %.sroa.01257.2, null
  br i1 %.not.i17.i.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  %i.ed = ptrtoint ptr %.sroa.21.2 to i64
  %i.ee = sub i64 %i.ed, %i.dr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01257.2, i64 noundef %i.ee) #39
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %i.dy ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i:         ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i, %bb.e
  %.sroa.21.3 = phi ptr [ %i.ef, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.21.2, %bb.e ] ; 6 uses
  %.pn1308 = phi ptr [ %i.eb, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.do, %bb.e ] ; 6 uses
  %.sroa.01257.3 = phi ptr [ %i.ea, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %.sroa.01257.2, %bb.e ] ; 7 uses
  %i.eg = phi ptr [ %i.ef, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i ], [ %i.dn, %bb.e ]
  %.sroa.131263.0 = getelementptr inbounds nuw i8, ptr %.pn1308, i64 4 ; 6 uses
  %i.eh = add nuw nsw i64 %.06.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.eh, %.05594
  br i1 %exitcond.not.i, label %.lr.ph.i230, label %.lr.ph.i, !llvm.loop !1595

.lr.ph.i230:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  store i64 0, ptr %13, align 8, !tbaa !210
  br label %bb.j

bb.j:                                             ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i, %.lr.ph.i230
  %.05.i = phi i64 [ 0, %.lr.ph.i230 ], [ %i.eq, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #36
  %i.ei = trunc i64 %.05.i to i32                 ; 2 uses
  store i32 %i.ei, ptr %i.i, align 4, !tbaa !211
  %i.ej = load i64, ptr %13, align 8, !tbaa !197, !noalias !1741 ; 3 uses
  %i.ek = trunc i64 %i.ej to i1                   ; 2 uses
  %i.el = load i64, ptr %i.y, align 8, !noalias !1741
  %.sink.i.i.i.i.i = select i1 %i.ek, i64 %i.el, i64 8
  %.sink1.i.i.i.i.i = lshr i64 %i.ej, 1           ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sink1.i.i.i.i.i, %.sink.i.i.i.i.i
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.k, !prof !212

bb.k:                                             ; preds = %bb.j
  %i.em = load ptr, ptr %i.z, align 8, !noalias !1741
  %.sink2.i.i.i.i.i = select i1 %i.ek, ptr %i.em, ptr %i.z
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i.i.i.i.i, i64 %.sink1.i.i.i.i.i
  store i32 %i.ei, ptr %i.en, align 4, !tbaa !211
  %i.eo = add i64 %i.ej, 2
  store i64 %i.eo, ptr %13, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ep = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm8ESaIiEE15EmplaceBackSlowIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.i)
          to label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i unwind label %bb.at ; 0 uses

_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i: ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #36
  %i.eq = add nuw nsw i64 %.05.i, 1               ; 2 uses
  %exitcond.not.i231 = icmp eq i64 %i.eq, %.05594
  br i1 %exitcond.not.i231, label %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit, label %bb.j, !llvm.loop !4

_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01257.3, i64 %.0605593 ; 6 uses
  %i.es = ptrtoint ptr %i.er to i64               ; 2 uses
  %i.et = ptrtoint ptr %.sroa.01257.3 to i64
  %.idx = shl nuw nsw i64 %.0605593, 2            ; 3 uses
  %.not.i857 = icmp eq ptr %.sroa.131263.0, %.sroa.21.3
  br i1 %.not.i857, label %bb.s, label %bb.m

bb.m:                                             ; preds = %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit
  %i.eu = icmp eq ptr %i.er, %.sroa.131263.0
  br i1 %i.eu, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 9999, ptr %.sroa.131263.0, align 4, !tbaa !211
  %i.ev = getelementptr inbounds nuw i8, ptr %.pn1308, i64 8
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit

bb.o:                                             ; preds = %bb.m
  %i.ew = load i32, ptr %.pn1308, align 4, !tbaa !211
  store i32 %i.ew, ptr %.sroa.131263.0, align 4, !tbaa !211
  %i.ex = getelementptr inbounds nuw i8, ptr %.pn1308, i64 8
  %i.ey = ptrtoint ptr %.pn1308 to i64
  %i.ez = sub i64 %i.ey, %i.es                    ; 3 uses
  %i.fa = ashr exact i64 %i.ez, 2                 ; 2 uses
  %i.fb = icmp sgt i64 %i.fa, 1
  br i1 %i.fb, label %bb.p, label %bb.q, !prof !224

bb.p:                                             ; preds = %bb.o
  %i.fc = sub nsw i64 0, %i.fa
  %i.fd = getelementptr inbounds [4 x i8], ptr %.sroa.131263.0, i64 %i.fc
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fd, ptr align 4 %i.er, i64 %i.ez, i1 false)
  br label %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i

bb.q:                                             ; preds = %bb.o
  %i.fe = icmp eq i64 %i.ez, 4
  br i1 %i.fe, label %bb.r, label %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ff = load i32, ptr %i.er, align 4, !tbaa !211
  store i32 %i.ff, ptr %.pn1308, align 4, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i

_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i: ; preds = %bb.r, %bb.q, %bb.p
  store i32 9999, ptr %i.er, align 4, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit
  %i.fg = phi i64 [ %i.dm, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread ], [ %.idx, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit ] ; 3 uses
  %i.fh = phi i64 [ 0, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread ], [ %i.et, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit ]
  %i.fi = phi i64 [ %i.dm, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread ], [ %i.es, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit ]
  %i.fj = phi ptr [ %i.dl, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread ], [ %i.er, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit ]
  %.sroa.21.412751284 = phi ptr [ null, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread ], [ %.sroa.21.3, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit ] ; 2 uses
  %.sroa.01257.412771282 = phi ptr [ null, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit.thread ], [ %.sroa.01257.3, %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit ] ; 4 uses
  %i.fk = ptrtoint ptr %.sroa.21.412751284 to i64 ; 2 uses
  %i.fl = sub i64 %i.fk, %i.fh                    ; 3 uses
  %i.fm = icmp eq i64 %i.fl, 9223372036854775804
  br i1 %i.fm, label %bb.t, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.t:                                             ; preds = %bb.s
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.314) #38
          to label %.noexc860 unwind label %.loopexit.split-lp1370.loopexit.split-lp

.noexc860:                                        ; preds = %bb.t
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.s
  %i.fn = ashr exact i64 %i.fl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.fn, i64 1)
  %i.fo = add nsw i64 %.sroa.speculated.i.i.i, %i.fn ; 2 uses
  %i.fp = icmp ult i64 %i.fo, %i.fn
  %i.fq = call i64 @llvm.umin.i64(i64 %i.fo, i64 2305843009213693951)
  %i.fr = select i1 %i.fp, i64 2305843009213693951, i64 %i.fq ; 3 uses
  %.not.i.i.i859 = icmp ne i64 %i.fr, 0
  call void @llvm.assume(i1 %.not.i.i.i859)
  %i.fs = shl nuw nsw i64 %i.fr, 2
  %i.ft = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fs) #41
          to label %.noexc861 unwind label %.loopexit.split-lp1370.loopexit.split-lp ; 4 uses

.noexc861:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.fu = getelementptr inbounds i8, ptr %i.ft, i64 %i.fg ; 2 uses
  store i32 9999, ptr %i.fu, align 4, !tbaa !211
  %i.fv = icmp sgt i64 %i.fg, 0
  br i1 %i.fv, label %bb.u, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i

bb.u:                                             ; preds = %.noexc861
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ft, ptr align 4 %.sroa.01257.412771282, i64 %i.fg, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i: ; preds = %bb.u, %.noexc861
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 4 ; 2 uses
  %i.fx = sub i64 %i.fk, %i.fi                    ; 3 uses
  %i.fy = icmp sgt i64 %i.fx, 0
  br i1 %i.fy, label %bb.v, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.v:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.fw, ptr align 4 %i.fj, i64 %i.fx, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.v, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
  %.not.i17.i.i = icmp eq ptr %.sroa.01257.412771282, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01257.412771282, i64 noundef %i.fl) #39
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  %i.fz = getelementptr inbounds i8, ptr %i.fw, i64 %i.fx
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.ft, i64 %i.fr
  %.pre = shl nuw nsw i64 %.0605593, 2
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit

_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit: ; preds = %bb.n, %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %.idx1312.pre-phi = phi i64 [ %.idx, %bb.n ], [ %.idx, %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i ], [ %.pre, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 15 uses
  %.sroa.21.5 = phi ptr [ %.sroa.21.3, %bb.n ], [ %.sroa.21.3, %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i ], [ %i.ga, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.131263.2 = phi ptr [ %i.ev, %bb.n ], [ %i.ex, %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i ], [ %i.fz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 2 uses
  %.sroa.01257.5 = phi ptr [ %.sroa.01257.3, %bb.n ], [ %.sroa.01257.3, %_ZNSt6vectorIiSaIiEE13_M_insert_auxIiEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEOT_.exit.i ], [ %i.ft, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #36
  %i.gb = load i64, ptr %13, align 8, !tbaa !197  ; 2 uses
  %i.gc = trunc i64 %i.gb to i1                   ; 2 uses
  %i.gd = load ptr, ptr %i.z, align 8
  %i.ge = select i1 %i.gc, ptr %i.gd, ptr %i.z    ; 7 uses
  %i.gf = ptrtoaddr ptr %i.ge to i64
  %i.gg = getelementptr i8, ptr %i.ge, i64 %.idx1312.pre-phi ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #36
  store i32 9999, ptr %i.h, align 4, !tbaa !211
  %i.gh = load i64, ptr %i.y, align 8, !noalias !1742
  %.sink.i.i = select i1 %i.gc, i64 %i.gh, i64 8  ; 2 uses
  %.sink1.i.i = lshr i64 %i.gb, 1                 ; 11 uses
  %i.gi = add nuw nsw i64 %.0605593, 1            ; 5 uses
  %i.gj = add nuw i64 %.sink1.i.i, 1              ; 3 uses
  %.not1310 = icmp ult i64 %.sink1.i.i, %.sink.i.i
  br i1 %.not1310, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit
  %i.gk = shl nuw i64 %.sink.i.i, 1
  %.sroa.speculated.i.i = call noundef i64 @llvm.umax.i64(i64 %i.gk, i64 %i.gj) ; 4 uses
  %i.gl = icmp ugt i64 %.sroa.speculated.i.i, 2305843009213693951
  br i1 %i.gl, label %bb.y, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i, !prof !212

bb.y:                                             ; preds = %bb.x
  %i.gm = icmp ugt i64 %.sroa.speculated.i.i, 4611686018427387903
  br i1 %i.gm, label %.noexc.i865, label %.noexc44.i

.noexc.i865:                                      ; preds = %bb.y
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc866 unwind label %.loopexit.split-lp1375.loopexit.split-lp

.noexc866:                                        ; preds = %.noexc.i865
  unreachable

.noexc44.i:                                       ; preds = %bb.y
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc867 unwind label %.loopexit.split-lp1375.loopexit.split-lp

.noexc867:                                        ; preds = %.noexc44.i
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i: ; preds = %bb.x
  %i.gn = shl nuw nsw i64 %.sroa.speculated.i.i, 2
  %i.go = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gn) #41
          to label %.noexc868 unwind label %.loopexit.split-lp1375.loopexit.split-lp ; 10 uses

.noexc868:                                        ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i
  %i.gp = ptrtoaddr ptr %i.go to i64              ; 2 uses
  %i.gq = getelementptr i8, ptr %i.go, i64 %.idx1312.pre-phi ; 2 uses
  store i32 9999, ptr %i.gq, align 4, !tbaa !211
  %.not.i.i46.i = icmp eq i64 %.0605593, 0
  br i1 %.not.i.i46.i, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i, label %.lr.ph.i.i47.i.preheader

.lr.ph.i.i47.i.preheader:                         ; preds = %.noexc868
  %min.iters.check13998 = icmp samesign ult i64 %.0605593, 8
  %i.gr = sub i64 %i.gf, %i.gp
  %diff.check13996 = icmp ugt i64 %i.gr, -32
  %or.cond = select i1 %min.iters.check13998, i1 true, i1 %diff.check13996
  br i1 %or.cond, label %.lr.ph.i.i47.i.preheader14066, label %vector.ph13999

vector.ph13999:                                   ; preds = %.lr.ph.i.i47.i.preheader
  %n.vec14000 = and i64 %.0605593, 9223372036854775800 ; 4 uses
  %i.gs = shl i64 %n.vec14000, 2
  %i.gt = getelementptr i8, ptr %i.ge, i64 %i.gs  ; 2 uses
  br label %vector.body14001

vector.body14001:                                 ; preds = %vector.body14001, %vector.ph13999
  %index14002 = phi i64 [ 0, %vector.ph13999 ], [ %index.next14006, %vector.body14001 ] ; 3 uses
  %i.gu = shl i64 %index14002, 2
  %next.gep14003 = getelementptr i8, ptr %i.ge, i64 %i.gu ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %index14002 ; 2 uses
  %i.gw = getelementptr i8, ptr %next.gep14003, i64 16
  %wide.load14004 = load <4 x i32>, ptr %next.gep14003, align 4, !tbaa !211
  %wide.load14005 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !211
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  store <4 x i32> %wide.load14004, ptr %i.gv, align 4, !tbaa !211
  store <4 x i32> %wide.load14005, ptr %i.gx, align 4, !tbaa !211
  %index.next14006 = add nuw i64 %index14002, 8   ; 2 uses
  %i.gy = icmp eq i64 %index.next14006, %n.vec14000
  br i1 %i.gy, label %middle.block14007, label %vector.body14001, !llvm.loop !1600

middle.block14007:                                ; preds = %vector.body14001
  %cmp.n14008 = icmp eq i64 %.0605593, %n.vec14000
  br i1 %cmp.n14008, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i, label %.lr.ph.i.i47.i.preheader14066

.lr.ph.i.i47.i.preheader14066:                    ; preds = %.lr.ph.i.i47.i.preheader, %middle.block14007
  %.ph14067 = phi ptr [ %i.ge, %.lr.ph.i.i47.i.preheader ], [ %i.gt, %middle.block14007 ] ; 2 uses
  %.012.i.i49.i.ph = phi i64 [ 0, %.lr.ph.i.i47.i.preheader ], [ %n.vec14000, %middle.block14007 ] ; 3 uses
  %xtraiter = and i64 %.0605593, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i47.i.prol.loopexit, label %.lr.ph.i.i47.i.prol

.lr.ph.i.i47.i.prol:                              ; preds = %.lr.ph.i.i47.i.preheader14066, %.lr.ph.i.i47.i.prol
  %i.gz = phi ptr [ %i.hc, %.lr.ph.i.i47.i.prol ], [ %.ph14067, %.lr.ph.i.i47.i.preheader14066 ] ; 2 uses
  %.012.i.i49.i.prol = phi i64 [ %i.hd, %.lr.ph.i.i47.i.prol ], [ %.012.i.i49.i.ph, %.lr.ph.i.i47.i.preheader14066 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i47.i.prol ], [ 0, %.lr.ph.i.i47.i.preheader14066 ]
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.012.i.i49.i.prol
  %i.hb = load i32, ptr %i.gz, align 4, !tbaa !211
  store i32 %i.hb, ptr %i.ha, align 4, !tbaa !211
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 4 ; 3 uses
  %i.hd = add nuw nsw i64 %.012.i.i49.i.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i47.i.prol.loopexit, label %.lr.ph.i.i47.i.prol, !llvm.loop !1601

.lr.ph.i.i47.i.prol.loopexit:                     ; preds = %.lr.ph.i.i47.i.prol, %.lr.ph.i.i47.i.preheader14066
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i47.i.preheader14066 ], [ %i.hc, %.lr.ph.i.i47.i.prol ]
  %.unr = phi ptr [ %.ph14067, %.lr.ph.i.i47.i.preheader14066 ], [ %i.hc, %.lr.ph.i.i47.i.prol ]
  %.012.i.i49.i.unr = phi i64 [ %.012.i.i49.i.ph, %.lr.ph.i.i47.i.preheader14066 ], [ %i.hd, %.lr.ph.i.i47.i.prol ]
  %i.he = sub nsw i64 %.012.i.i49.i.ph, %.0605593
  %i.hf = icmp ugt i64 %i.he, -4
  br i1 %i.hf, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i, label %.lr.ph.i.i47.i

.lr.ph.i.i47.i:                                   ; preds = %.lr.ph.i.i47.i.prol.loopexit, %.lr.ph.i.i47.i
  %i.hg = phi ptr [ %i.hv, %.lr.ph.i.i47.i ], [ %.unr, %.lr.ph.i.i47.i.prol.loopexit ] ; 5 uses
  %.012.i.i49.i = phi i64 [ %i.hw, %.lr.ph.i.i47.i ], [ %.012.i.i49.i.unr, %.lr.ph.i.i47.i.prol.loopexit ] ; 5 uses
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.012.i.i49.i
  %i.hi = load i32, ptr %i.hg, align 4, !tbaa !211
  store i32 %i.hi, ptr %i.hh, align 4, !tbaa !211
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 4
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.012.i.i49.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hm = load i32, ptr %i.hj, align 4, !tbaa !211
  store i32 %i.hm, ptr %i.hl, align 4, !tbaa !211
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.012.i.i49.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 8
  %i.hq = load i32, ptr %i.hn, align 4, !tbaa !211
  store i32 %i.hq, ptr %i.hp, align 4, !tbaa !211
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hg, i64 12
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %.012.i.i49.i
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 12
  %i.hu = load i32, ptr %i.hr, align 4, !tbaa !211
  store i32 %i.hu, ptr %i.ht, align 4, !tbaa !211
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 2 uses
  %i.hw = add nuw nsw i64 %.012.i.i49.i, 4        ; 2 uses
  %exitcond.not.i.i50.i.3 = icmp eq i64 %i.hw, %.0605593
  br i1 %exitcond.not.i.i50.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i, label %.lr.ph.i.i47.i, !llvm.loop !1602

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i: ; preds = %.lr.ph.i.i47.i.prol.loopexit, %.lr.ph.i.i47.i, %middle.block14007, %.noexc868
  %.sroa.090.0.i = phi ptr [ %i.ge, %.noexc868 ], [ %i.gt, %middle.block14007 ], [ %.lcssa.unr, %.lr.ph.i.i47.i.prol.loopexit ], [ %i.hv, %.lr.ph.i.i47.i ] ; 5 uses
  %.sroa.090.0.i13979 = ptrtoaddr ptr %.sroa.090.0.i to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.gi ; 6 uses
  %i.hy = sub nsw i64 %.sink1.i.i, %.0605593      ; 4 uses
  %.not.i.i863 = icmp eq i64 %.sink1.i.i, %.0605593
  br i1 %.not.i.i863, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i.i864.preheader

.lr.ph.i.i864.preheader:                          ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i
  %min.iters.check13982 = icmp ult i64 %i.hy, 8
  br i1 %min.iters.check13982, label %.lr.ph.i.i864.preheader14064, label %vector.memcheck13978

vector.memcheck13978:                             ; preds = %.lr.ph.i.i864.preheader
  %i.hz = add i64 %67, %i.gp
  %i.ia = sub i64 %.sroa.090.0.i13979, %i.hz
  %diff.check13980 = icmp ugt i64 %i.ia, -32
  br i1 %diff.check13980, label %.lr.ph.i.i864.preheader14064, label %vector.ph13983

vector.ph13983:                                   ; preds = %vector.memcheck13978
  %n.vec13984 = and i64 %i.hy, -8                 ; 4 uses
  %i.ib = shl i64 %n.vec13984, 2
  %i.ic = getelementptr i8, ptr %.sroa.090.0.i, i64 %i.ib
  br label %vector.body13985

vector.body13985:                                 ; preds = %vector.body13985, %vector.ph13983
  %index13986 = phi i64 [ 0, %vector.ph13983 ], [ %index.next13990, %vector.body13985 ] ; 3 uses
  %i.id = shl i64 %index13986, 2
  %next.gep13987 = getelementptr i8, ptr %.sroa.090.0.i, i64 %i.id ; 2 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %index13986 ; 2 uses
  %i.if = getelementptr i8, ptr %next.gep13987, i64 16
  %wide.load13988 = load <4 x i32>, ptr %next.gep13987, align 4, !tbaa !211
  %wide.load13989 = load <4 x i32>, ptr %i.if, align 4, !tbaa !211
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store <4 x i32> %wide.load13988, ptr %i.ie, align 4, !tbaa !211
  store <4 x i32> %wide.load13989, ptr %i.ig, align 4, !tbaa !211
  %index.next13990 = add nuw i64 %index13986, 8   ; 2 uses
  %i.ih = icmp eq i64 %index.next13990, %n.vec13984
  br i1 %i.ih, label %middle.block13991, label %vector.body13985, !llvm.loop !1603

middle.block13991:                                ; preds = %vector.body13985
  %cmp.n13992 = icmp eq i64 %i.hy, %n.vec13984
  br i1 %cmp.n13992, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i.i864.preheader14064

.lr.ph.i.i864.preheader14064:                     ; preds = %vector.memcheck13978, %.lr.ph.i.i864.preheader, %middle.block13991
  %.ph14065 = phi ptr [ %.sroa.090.0.i, %vector.memcheck13978 ], [ %.sroa.090.0.i, %.lr.ph.i.i864.preheader ], [ %i.ic, %middle.block13991 ] ; 2 uses
  %.012.i.i.ph = phi i64 [ 0, %vector.memcheck13978 ], [ 0, %.lr.ph.i.i864.preheader ], [ %n.vec13984, %middle.block13991 ] ; 3 uses
  %i.ii = sub nsw i64 %.sink1.i.i, %.0605593
  %xtraiter16322 = and i64 %i.ii, 3               ; 2 uses
  %lcmp.mod16323.not = icmp eq i64 %xtraiter16322, 0
  br i1 %lcmp.mod16323.not, label %.lr.ph.i.i864.prol.loopexit, label %.lr.ph.i.i864.prol

.lr.ph.i.i864.prol:                               ; preds = %.lr.ph.i.i864.preheader14064, %.lr.ph.i.i864.prol
  %i.ij = phi ptr [ %i.im, %.lr.ph.i.i864.prol ], [ %.ph14065, %.lr.ph.i.i864.preheader14064 ] ; 2 uses
  %.012.i.i.prol = phi i64 [ %i.in, %.lr.ph.i.i864.prol ], [ %.012.i.i.ph, %.lr.ph.i.i864.preheader14064 ] ; 2 uses
  %prol.iter16324 = phi i64 [ %prol.iter16324.next, %.lr.ph.i.i864.prol ], [ 0, %.lr.ph.i.i864.preheader14064 ]
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.012.i.i.prol
  %i.il = load i32, ptr %i.ij, align 4, !tbaa !211
  store i32 %i.il, ptr %i.ik, align 4, !tbaa !211
  %i.im = getelementptr inbounds nuw i8, ptr %i.ij, i64 4 ; 2 uses
  %i.in = add nuw i64 %.012.i.i.prol, 1           ; 2 uses
  %prol.iter16324.next = add i64 %prol.iter16324, 1 ; 2 uses
  %prol.iter16324.cmp.not = icmp eq i64 %prol.iter16324.next, %xtraiter16322
  br i1 %prol.iter16324.cmp.not, label %.lr.ph.i.i864.prol.loopexit, label %.lr.ph.i.i864.prol, !llvm.loop !1604

.lr.ph.i.i864.prol.loopexit:                      ; preds = %.lr.ph.i.i864.prol, %.lr.ph.i.i864.preheader14064
  %.unr16325 = phi ptr [ %.ph14065, %.lr.ph.i.i864.preheader14064 ], [ %i.im, %.lr.ph.i.i864.prol ]
  %.012.i.i.unr = phi i64 [ %.012.i.i.ph, %.lr.ph.i.i864.preheader14064 ], [ %i.in, %.lr.ph.i.i864.prol ]
  %i.io = sub nsw i64 %.0605593, %.sink1.i.i
  %i.ip = add i64 %i.io, %.012.i.i.ph
  %i.iq = icmp ugt i64 %i.ip, -4
  br i1 %i.iq, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i.i864

.lr.ph.i.i864:                                    ; preds = %.lr.ph.i.i864.prol.loopexit, %.lr.ph.i.i864
  %i.ir = phi ptr [ %i.jg, %.lr.ph.i.i864 ], [ %.unr16325, %.lr.ph.i.i864.prol.loopexit ] ; 5 uses
  %.012.i.i = phi i64 [ %i.jh, %.lr.ph.i.i864 ], [ %.012.i.i.unr, %.lr.ph.i.i864.prol.loopexit ] ; 5 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.012.i.i
  %i.it = load i32, ptr %i.ir, align 4, !tbaa !211
  store i32 %i.it, ptr %i.is, align 4, !tbaa !211
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ir, i64 4
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.012.i.i
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.ix = load i32, ptr %i.iu, align 4, !tbaa !211
  store i32 %i.ix, ptr %i.iw, align 4, !tbaa !211
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.012.i.i
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load i32, ptr %i.iy, align 4, !tbaa !211
  store i32 %i.jb, ptr %i.ja, align 4, !tbaa !211
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ir, i64 12
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %.012.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 12
  %i.jf = load i32, ptr %i.jc, align 4, !tbaa !211
  store i32 %i.jf, ptr %i.je, align 4, !tbaa !211
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ir, i64 16
  %i.jh = add nuw i64 %.012.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.jh, %i.hy
  br i1 %exitcond.not.i.i.3, label %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i, label %.lr.ph.i.i864, !llvm.loop !1605

_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i: ; preds = %.lr.ph.i.i864.prol.loopexit, %.lr.ph.i.i864, %middle.block13991, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit52.i
  %i.ji = load i64, ptr %13, align 8, !tbaa !197
  %i.jj = trunc i64 %i.ji to i1
  br i1 %i.jj, label %bb.z, label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i

bb.z:                                             ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i
  %i.jk = load ptr, ptr %i.z, align 8, !tbaa !198
  %i.jl = load i64, ptr %i.y, align 8, !tbaa !198
  %i.jm = shl i64 %i.jl, 2
  call void @_ZdlPvm(ptr noundef %i.jk, i64 noundef %i.jm) #39
  br label %_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i

_ZN4absl12lts_2026052623inlined_vector_internal21AllocationTransactionISaIiEED2Ev.exit.i: ; preds = %bb.z, %_ZN4absl12lts_2026052623inlined_vector_internal17ConstructElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvRNS0_13type_identityIT_E4typeENSt16allocator_traitsISA_E7pointerERT0_NSF_9size_typeE.exit.i
  store ptr %i.go, ptr %i.z, align 8, !tbaa !198
  store i64 %.sroa.speculated.i.i, ptr %i.y, align 8, !tbaa !198
  %i.jn = shl nuw i64 %i.gj, 1
  %i.jo = or disjoint i64 %i.jn, 1
  br label %bb.af

bb.aa:                                            ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEOi.exit
  %.sroa.speculated.i = call i64 @llvm.umax.i64(i64 %i.gi, i64 %.sink1.i.i) ; 5 uses
  %i.jp = getelementptr [4 x i8], ptr %i.ge, i64 %.sroa.speculated.i ; 12 uses
  %i.jq = sub i64 %i.gj, %.sroa.speculated.i      ; 5 uses
  %i.jr = sub nuw nsw i64 %.sroa.speculated.i, %i.gi ; 4 uses
  %i.js = getelementptr [4 x i8], ptr %i.gg, i64 %i.jq
  %.not.i.i56.i = icmp eq i64 %.0605593, %.sink1.i.i ; 2 uses
  br i1 %.not.i.i56.i, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i, label %.lr.ph.i.i57.preheader.i

.lr.ph.i.i57.preheader.i:                         ; preds = %bb.aa
  %i.jt = getelementptr i8, ptr %i.jp, i64 -4
  %load_initial = load i32, ptr %i.jt, align 4    ; 9 uses
  %i.ju = sub nsw i64 %.sink1.i.i, %.sroa.speculated.i
  %xtraiter16326 = and i64 %i.jq, 7               ; 3 uses
  %i.jv = icmp ult i64 %i.ju, 7
  br i1 %i.jv, label %.lr.ph.i.i57.i.epil.preheader, label %.lr.ph.i.i57.preheader.i.new

.lr.ph.i.i57.preheader.i.new:                     ; preds = %.lr.ph.i.i57.preheader.i
  %unroll_iter = and i64 %i.jq, -8
  br label %.lr.ph.i.i57.i

.lr.ph.i.i57.i:                                   ; preds = %.lr.ph.i.i57.i, %.lr.ph.i.i57.preheader.i.new
  %.012.i.i59.i = phi i64 [ 0, %.lr.ph.i.i57.preheader.i.new ], [ %i.kl, %.lr.ph.i.i57.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i57.preheader.i.new ], [ %niter.next.7, %.lr.ph.i.i57.i ]
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.012.i.i59.i
  store i32 %load_initial, ptr %i.jw, align 4, !tbaa !211
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.012.i.i59.i
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  store i32 %load_initial, ptr %i.jy, align 4, !tbaa !211
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.012.i.i59.i
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  store i32 %load_initial, ptr %i.ka, align 4, !tbaa !211
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.012.i.i59.i
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  store i32 %load_initial, ptr %i.kc, align 4, !tbaa !211
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.012.i.i59.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store i32 %load_initial, ptr %i.ke, align 4, !tbaa !211
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.012.i.i59.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 20
  store i32 %load_initial, ptr %i.kg, align 4, !tbaa !211
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.012.i.i59.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  store i32 %load_initial, ptr %i.ki, align 4, !tbaa !211
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.012.i.i59.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 28
  store i32 %load_initial, ptr %i.kk, align 4, !tbaa !211
  %i.kl = add nuw i64 %.012.i.i59.i, 8            ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa, label %.lr.ph.i.i57.i, !llvm.loop !1606

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i57.i
  %lcmp.mod16327.not = icmp eq i64 %xtraiter16326, 0
  br i1 %lcmp.mod16327.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i, label %.lr.ph.i.i57.i.epil.preheader

.lr.ph.i.i57.i.epil.preheader:                    ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa, %.lr.ph.i.i57.preheader.i
  %.012.i.i59.i.epil.init = phi i64 [ 0, %.lr.ph.i.i57.preheader.i ], [ %i.kl, %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa ]
  %lcmp.mod16328 = icmp ne i64 %xtraiter16326, 0
  call void @llvm.assume(i1 %lcmp.mod16328)
  br label %.lr.ph.i.i57.i.epil

.lr.ph.i.i57.i.epil:                              ; preds = %.lr.ph.i.i57.i.epil, %.lr.ph.i.i57.i.epil.preheader
  %.012.i.i59.i.epil = phi i64 [ %i.kn, %.lr.ph.i.i57.i.epil ], [ %.012.i.i59.i.epil.init, %.lr.ph.i.i57.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i57.i.epil ], [ 0, %.lr.ph.i.i57.i.epil.preheader ]
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.012.i.i59.i.epil
  store i32 %load_initial, ptr %i.km, align 4, !tbaa !211
  %i.kn = add nuw i64 %.012.i.i59.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter16326
  br i1 %epil.iter.cmp.not, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i, label %.lr.ph.i.i57.i.epil, !llvm.loop !1607

_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i: ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i.loopexit.unr-lcssa, %.lr.ph.i.i57.i.epil, %bb.aa
  %i.ko = icmp samesign ugt i64 %i.jr, 1
  br i1 %i.ko, label %bb.ab, label %bb.ac, !prof !224

bb.ab:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i
  %.idx1311 = shl nuw nsw i64 %i.jr, 2
  %i.kp = sub nsw i64 0, %i.jr
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.kp
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.kq, ptr align 4 %i.gg, i64 %.idx1311, i1 false)
  br label %bb.ae

bb.ac:                                            ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit62.i
  %i.kr = icmp eq i64 %i.jr, 1
  br i1 %i.kr, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ks = getelementptr inbounds i8, ptr %i.jp, i64 -4
  %i.kt = load i32, ptr %i.gg, align 4, !tbaa !211
  store i32 %i.kt, ptr %i.ks, align 4, !tbaa !211
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  br i1 %.not.i.i56.i, label %_ZN4absl12lts_2026052623inlined_vector_internal14AssignElementsISaIiENS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvNSt16allocator_traitsIT_E7pointerERT0_NSB_9size_typeE.exit.i, label %.lr.ph.i64.i.preheader

.lr.ph.i64.i.preheader:                           ; preds = %bb.ae
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_118IntVec_Insert_Test8TestBodyEv:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #36
  %i.pb = load i64, ptr %13, align 8, !tbaa !197
  %i.pc = trunc i64 %i.pb to i1
  br i1 %i.pc, label %bb.ca, label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit

bb.ca:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit268
  %i.pd = load ptr, ptr %i.z, align 8, !tbaa !198
  %i.pe = load i64, ptr %i.y, align 8, !tbaa !198
  %i.pf = shl i64 %i.pe, 2
  call void @_ZdlPvm(ptr noundef %i.pd, i64 noundef %i.pf) #39
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit

_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit: ; preds = %_ZN7testing15AssertionResultD2Ev.exit268, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #36
  %.not.i.i.i269 = icmp eq ptr %.sroa.01257.5, null
  br i1 %.not.i.i.i269, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit
  %i.pg = ptrtoint ptr %.sroa.21.5 to i64
  %i.ph = sub i64 %i.pg, %i.lb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01257.5, i64 noundef %i.ph) #39
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEED2Ev.exit, %bb.cb
  br i1 %.not.i, label %_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit286.thread, label %.lr.ph.i271

_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit286.thread: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #36
  store i64 0, ptr %21, align 8, !tbaa !210
  br label %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit297

.lr.ph.i271:                                      ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i276
  %.sroa.01230.2 = phi ptr [ %.sroa.01230.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i276 ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 6 uses
  %.sroa.25.2 = phi ptr [ %.sroa.25.3, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i276 ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.pi = phi ptr [ %i.qb, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i276 ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %i.pj = phi ptr [ %.sroa.141238.0, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i276 ], [ null, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 3 uses
  %.06.i274 = phi i64 [ %i.qc, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i276 ], [ 0, %_ZNSt6vectorIiSaIiEED2Ev.exit ] ; 2 uses
  %i.pk = trunc nuw nsw i64 %.06.i274 to i32      ; 2 uses
  %.not.i.i.i275 = icmp eq ptr %i.pj, %i.pi
  br i1 %.not.i.i.i275, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %.lr.ph.i271
  store i32 %i.pk, ptr %i.pj, align 4, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i276

bb.cd:                                            ; preds = %.lr.ph.i271
  %i.pl = ptrtoint ptr %i.pi to i64
  %i.pm = ptrtoint ptr %.sroa.01230.2 to i64      ; 2 uses
  %i.pn = sub i64 %i.pl, %i.pm                    ; 5 uses
  %i.po = icmp eq i64 %i.pn, 9223372036854775804
  br i1 %i.po, label %bb.ce, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i278

bb.ce:                                            ; preds = %bb.cd
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.314) #38
          to label %.noexc284 unwind label %.loopexit.split-lp1360.loopexit.split-lp

.noexc284:                                        ; preds = %bb.ce
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i278: ; preds = %bb.cd
  %i.pp = ashr exact i64 %i.pn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i279 = call i64 @llvm.umax.i64(i64 %i.pp, i64 1)
  %i.pq = add nsw i64 %.sroa.speculated.i.i.i.i.i279, %i.pp ; 2 uses
  %i.pr = icmp ult i64 %i.pq, %i.pp
  %i.ps = call i64 @llvm.umin.i64(i64 %i.pq, i64 2305843009213693951)
  %i.pt = select i1 %i.pr, i64 2305843009213693951, i64 %i.ps ; 3 uses
  %.not.i.i.i.i.i280 = icmp ne i64 %i.pt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i280)
  %i.pu = shl nuw nsw i64 %i.pt, 2
  %i.pv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pu) #41
          to label %.noexc285 unwind label %.loopexit.split-lp1360.loopexit.split-lp ; 4 uses

.noexc285:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i278
  %i.pw = getelementptr inbounds i8, ptr %i.pv, i64 %i.pn ; 2 uses
  store i32 %i.pk, ptr %i.pw, align 4, !tbaa !211
  %i.px = icmp sgt i64 %i.pn, 0
  br i1 %i.px, label %bb.cf, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i281

bb.cf:                                            ; preds = %.noexc285
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.pv, ptr align 4 %.sroa.01230.2, i64 %i.pn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i281

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i281: ; preds = %bb.cf, %.noexc285
  %.not.i17.i.i.i.i282 = icmp eq ptr %.sroa.01230.2, null
  br i1 %.not.i17.i.i.i.i282, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i283, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i281
  %i.py = ptrtoint ptr %.sroa.25.2 to i64
  %i.pz = sub i64 %i.py, %i.pm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01230.2, i64 noundef %i.pz) #39
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i283

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i283: ; preds = %bb.cg, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i.i281
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.pv, i64 %i.pt ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i276

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i276:      ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i283, %bb.cc
  %.sroa.01230.3 = phi ptr [ %i.pv, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i283 ], [ %.sroa.01230.2, %bb.cc ] ; 3 uses
  %.pn1313 = phi ptr [ %i.pw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i283 ], [ %i.pj, %bb.cc ]
  %.sroa.25.3 = phi ptr [ %i.qa, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i283 ], [ %.sroa.25.2, %bb.cc ] ; 3 uses
  %i.qb = phi ptr [ %i.qa, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i283 ], [ %i.pi, %bb.cc ]
  %.sroa.141238.0 = getelementptr inbounds nuw i8, ptr %.pn1313, i64 4 ; 2 uses
  %i.qc = add nuw nsw i64 %.06.i274, 1            ; 2 uses
  %exitcond.not.i277 = icmp eq i64 %i.qc, %.05594
  br i1 %exitcond.not.i277, label %.lr.ph.i288, label %.lr.ph.i271, !llvm.loop !1595

.lr.ph.i288:                                      ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i276
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #36
  store i64 0, ptr %21, align 8, !tbaa !210
  br label %bb.ch

bb.ch:                                            ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i294, %.lr.ph.i288
  %.05.i289 = phi i64 [ 0, %.lr.ph.i288 ], [ %i.ql, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i294 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #36
  %i.qd = trunc i64 %.05.i289 to i32              ; 2 uses
  store i32 %i.qd, ptr %i.g, align 4, !tbaa !211
  %i.qe = load i64, ptr %21, align 8, !tbaa !197, !noalias !1747 ; 3 uses
  %i.qf = trunc i64 %i.qe to i1                   ; 2 uses
  %i.qg = load i64, ptr %i.ag, align 8, !noalias !1747
  %.sink.i.i.i.i.i290 = select i1 %i.qf, i64 %i.qg, i64 8
  %.sink1.i.i.i.i.i291 = lshr i64 %i.qe, 1        ; 2 uses
  %.not.i.i.i.i292 = icmp eq i64 %.sink1.i.i.i.i.i291, %.sink.i.i.i.i.i290
  br i1 %.not.i.i.i.i292, label %bb.cj, label %bb.ci, !prof !212

bb.ci:                                            ; preds = %bb.ch
  %i.qh = load ptr, ptr %i.ah, align 8, !noalias !1747
  %.sink2.i.i.i.i.i293 = select i1 %i.qf, ptr %i.qh, ptr %i.ah
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %.sink2.i.i.i.i.i293, i64 %.sink1.i.i.i.i.i291
  store i32 %i.qd, ptr %i.qi, align 4, !tbaa !211
  %i.qj = add i64 %i.qe, 2
  store i64 %i.qj, ptr %21, align 8, !tbaa !197
  br label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i294

bb.cj:                                            ; preds = %bb.ch
  %i.qk = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZN4absl12lts_2026052623inlined_vector_internal7StorageIiLm8ESaIiEE15EmplaceBackSlowIJiEEERiDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 4 dereferenceable(4) %i.g)
          to label %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i294 unwind label %bb.ee ; 0 uses

_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i294: ; preds = %bb.cj, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  %i.ql = add nuw nsw i64 %.05.i289, 1            ; 2 uses
  %exitcond.not.i295 = icmp eq i64 %i.ql, %.05594
  br i1 %exitcond.not.i295, label %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit297, label %bb.ch, !llvm.loop !4

_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit297: ; preds = %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i294, %_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit286.thread
  %.sroa.25.41290 = phi ptr [ null, %_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit286.thread ], [ %.sroa.25.3, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i294 ] ; 6 uses
  %.sroa.141238.11289 = phi ptr [ null, %_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit286.thread ], [ %.sroa.141238.0, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i294 ] ; 13 uses
  %.sroa.01230.41288 = phi ptr [ null, %_ZN12_GLOBAL__N_14FillISt6vectorIiSaIiEEEEvPT_mi.exit286.thread ], [ %.sroa.01230.3, %_ZN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEE9push_backEOi.exit.i294 ] ; 11 uses
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.01230.41288, i64 %.0605593 ; 13 uses
  %i.qn = ptrtoint ptr %i.qm to i64               ; 3 uses
  %i.qo = ptrtoint ptr %.sroa.01230.41288 to i64  ; 4 uses
  %i.qp = ptrtoint ptr %.sroa.25.41290 to i64     ; 2 uses
  %i.qq = ptrtoint ptr %.sroa.141238.11289 to i64 ; 6 uses
  %i.qr = sub i64 %i.qp, %i.qq
  %.not65.i = icmp ult i64 %i.qr, 17
  br i1 %.not65.i, label %bb.ct, label %bb.ck

bb.ck:                                            ; preds = %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit297
  %i.qs = sub i64 %i.qq, %i.qn                    ; 7 uses
  %i.qt = icmp ugt i64 %i.qs, 20
  br i1 %i.qt, label %bb.cl, label %bb.cp

bb.cl:                                            ; preds = %bb.ck
  %i.qu = getelementptr inbounds i8, ptr %.sroa.141238.11289, i64 -20 ; 2 uses
  %i.qv = ptrtoint ptr %i.qu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.141238.11289, ptr noundef nonnull align 4 dereferenceable(20) %i.qu, i64 20, i1 false)
  %i.qw = getelementptr inbounds nuw i8, ptr %.sroa.141238.11289, i64 20
  %i.qx = sub i64 %i.qv, %i.qn                    ; 3 uses
  %i.qy = ashr exact i64 %i.qx, 2                 ; 2 uses
  %i.qz = icmp sgt i64 %i.qy, 1
  br i1 %i.qz, label %bb.cm, label %bb.cn, !prof !224

bb.cm:                                            ; preds = %bb.cl
  %i.ra = sub nsw i64 0, %i.qy
  %i.rb = getelementptr inbounds [4 x i8], ptr %.sroa.141238.11289, i64 %i.ra
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.rb, ptr align 4 %i.qm, i64 %i.qx, i1 false)
  br label %.lr.ph.i.i.i.i

bb.cn:                                            ; preds = %bb.cl
  %i.rc = icmp eq i64 %i.qx, 4
  br i1 %i.rc, label %bb.co, label %.lr.ph.i.i.i.i

bb.co:                                            ; preds = %bb.cn
  %i.rd = getelementptr inbounds i8, ptr %.sroa.141238.11289, i64 -4
  %i.re = load i32, ptr %i.qm, align 4, !tbaa !211
  store i32 %i.re, ptr %i.rd, align 4, !tbaa !211
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.co, %bb.cn, %bb.cm
  store <4 x i32> splat (i32 9999), ptr %i.qm, align 4, !tbaa !211
  %.06.i.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  store i32 9999, ptr %.06.i.i.i.i.ptr.4, align 4, !tbaa !211
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEmRS4_.exit

bb.cp:                                            ; preds = %bb.ck
  %i.rf = icmp eq i64 %i.qs, 20
  br i1 %i.rf, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i.thread, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.idx.i.i.i.i.i.i = sub nuw nsw i64 20, %i.qs
  %i.rg = getelementptr inbounds nuw i8, ptr %.sroa.141238.11289, i64 %.idx.i.i.i.i.i.i ; 5 uses
  %i.rh = add i64 %i.dc, %i.qo
  %i.ri = sub i64 %i.rh, %i.qq                    ; 2 uses
  %i.rj = lshr i64 %i.ri, 2
  %i.rk = add nuw nsw i64 %i.rj, 1                ; 2 uses
  %min.iters.check13968 = icmp ult i64 %i.ri, 28
  br i1 %min.iters.check13968, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %vector.ph13969

vector.ph13969:                                   ; preds = %bb.cq
  %n.vec13970 = and i64 %i.rk, 9223372036854775800 ; 3 uses
  %i.rl = shl i64 %n.vec13970, 2
  %i.rm = getelementptr i8, ptr %.sroa.141238.11289, i64 %i.rl
  br label %vector.body13971

vector.body13971:                                 ; preds = %vector.body13971, %vector.ph13969
  %index13972 = phi i64 [ 0, %vector.ph13969 ], [ %index.next13974, %vector.body13971 ] ; 2 uses
  %i.rn = shl i64 %index13972, 2
  %next.gep13973 = getelementptr i8, ptr %.sroa.141238.11289, i64 %i.rn ; 2 uses
  %i.ro = getelementptr i8, ptr %next.gep13973, i64 16
  store <4 x i32> splat (i32 9999), ptr %next.gep13973, align 4, !tbaa !211
  store <4 x i32> splat (i32 9999), ptr %i.ro, align 4, !tbaa !211
  %index.next13974 = add nuw i64 %index13972, 8   ; 2 uses
  %i.rp = icmp eq i64 %index.next13974, %n.vec13970
  br i1 %i.rp, label %middle.block13975, label %vector.body13971, !llvm.loop !1622

middle.block13975:                                ; preds = %vector.body13971
  %cmp.n13976 = icmp eq i64 %i.rk, %n.vec13970
  br i1 %cmp.n13976, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.cq, %middle.block13975
  %.06.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.141238.11289, %bb.cq ], [ %i.rm, %middle.block13975 ]
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i = phi ptr [ %i.rq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 9999, ptr %.06.i.i.i.i.i.i.i.i, align 4, !tbaa !211
  %i.rq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.rq, %i.rg
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1623

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %middle.block13975
  %i.rr = icmp samesign ugt i64 %i.qs, 4
  br i1 %i.rr, label %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i.thread, label %bb.cr, !prof !1748

_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i.thread: ; preds = %bb.cp, %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i
  %.0.i.i.i.i.i.i9426 = phi ptr [ %i.rg, %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i ], [ %.sroa.141238.11289, %bb.cp ] ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i.i9426, ptr align 4 %i.qm, i64 %i.qs, i1 false)
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69.i

bb.cr:                                            ; preds = %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i
  %i.rs = icmp eq i64 %i.qs, 4
  br i1 %i.rs, label %bb.cs, label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69.i

bb.cs:                                            ; preds = %bb.cr
  %i.rt = load i32, ptr %i.qm, align 4, !tbaa !211
  store i32 %i.rt, ptr %i.rg, align 4, !tbaa !211
  br label %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69.i

_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69.i: ; preds = %bb.cs, %bb.cr, %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i.thread
  %.0.i.i.i.i.i.i9427 = phi ptr [ %i.rg, %bb.cs ], [ %i.rg, %bb.cr ], [ %.0.i.i.i.i.i.i9426, %_ZSt24__uninitialized_fill_n_aIPimiiET_S1_T0_RKT1_RSaIT2_E.exit.i.thread ]
  %i.ru = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i9427, i64 %i.qs ; 3 uses
  %.not5.i.i.i70.i = icmp eq ptr %i.qm, %.sroa.141238.11289
  br i1 %.not5.i.i.i70.i, label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEmRS4_.exit, label %.lr.ph.i.i.i71.i.preheader

.lr.ph.i.i.i71.i.preheader:                       ; preds = %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69.i
  %i.rv = add i64 %i.qq, -4
  %i.rw = add i64 %68, %i.qo
  %i.rx = sub i64 %i.rv, %i.rw                    ; 2 uses
  %i.ry = lshr i64 %i.rx, 2
  %i.rz = add nuw nsw i64 %i.ry, 1                ; 2 uses
  %min.iters.check13957 = icmp ult i64 %i.rx, 28
  br i1 %min.iters.check13957, label %.lr.ph.i.i.i71.i.preheader14060, label %vector.ph13958

vector.ph13958:                                   ; preds = %.lr.ph.i.i.i71.i.preheader
  %n.vec13959 = and i64 %i.rz, 9223372036854775800 ; 3 uses
  %i.sa = shl i64 %n.vec13959, 2
  %i.sb = getelementptr i8, ptr %i.qm, i64 %i.sa
  br label %vector.body13960

vector.body13960:                                 ; preds = %vector.body13960, %vector.ph13958
  %index13961 = phi i64 [ 0, %vector.ph13958 ], [ %index.next13963, %vector.body13960 ] ; 2 uses
  %i.sc = shl i64 %index13961, 2
  %next.gep13962 = getelementptr i8, ptr %i.qm, i64 %i.sc ; 2 uses
  %i.sd = getelementptr i8, ptr %next.gep13962, i64 16
  store <4 x i32> splat (i32 9999), ptr %next.gep13962, align 4, !tbaa !211
  store <4 x i32> splat (i32 9999), ptr %i.sd, align 4, !tbaa !211
  %index.next13963 = add nuw i64 %index13961, 8   ; 2 uses
  %i.se = icmp eq i64 %index.next13963, %n.vec13959
  br i1 %i.se, label %middle.block13964, label %vector.body13960, !llvm.loop !1624

middle.block13964:                                ; preds = %vector.body13960
  %cmp.n13965 = icmp eq i64 %i.rz, %n.vec13959
  br i1 %cmp.n13965, label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEmRS4_.exit, label %.lr.ph.i.i.i71.i.preheader14060

.lr.ph.i.i.i71.i.preheader14060:                  ; preds = %.lr.ph.i.i.i71.i.preheader, %middle.block13964
  %.06.i.i.i72.i.ph = phi ptr [ %i.qm, %.lr.ph.i.i.i71.i.preheader ], [ %i.sb, %middle.block13964 ]
  br label %.lr.ph.i.i.i71.i

.lr.ph.i.i.i71.i:                                 ; preds = %.lr.ph.i.i.i71.i.preheader14060, %.lr.ph.i.i.i71.i
  %.06.i.i.i72.i = phi ptr [ %i.sf, %.lr.ph.i.i.i71.i ], [ %.06.i.i.i72.i.ph, %.lr.ph.i.i.i71.i.preheader14060 ] ; 2 uses
  store i32 9999, ptr %.06.i.i.i72.i, align 4, !tbaa !211
  %i.sf = getelementptr inbounds nuw i8, ptr %.06.i.i.i72.i, i64 4 ; 2 uses
  %.not.i.i.i73.i = icmp eq ptr %i.sf, %.sroa.141238.11289
  br i1 %.not.i.i.i73.i, label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEmRS4_.exit, label %.lr.ph.i.i.i71.i, !llvm.loop !1625

bb.ct:                                            ; preds = %_ZN12_GLOBAL__N_14FillIN4absl12lts_2026052613InlinedVectorIiLm8ESaIiEEEEEvPT_mi.exit297
  %i.sg = sub i64 %i.qq, %i.qo
  %i.sh = ashr exact i64 %i.sg, 2                 ; 4 uses
  %i.si = add nsw i64 %i.sh, -2305843009213693947
  %i.sj = icmp ult i64 %i.si, 5
  br i1 %i.sj, label %bb.cu, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i

bb.cu:                                            ; preds = %bb.ct
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.330) #38
          to label %.noexc877 unwind label %.loopexit.split-lp1395.loopexit.split-lp

.noexc877:                                        ; preds = %bb.cu
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.ct
  %.sroa.speculated.i.i875 = call i64 @llvm.umax.i64(i64 %i.sh, i64 5)
  %i.sk = add nsw i64 %.sroa.speculated.i.i875, %i.sh ; 2 uses
  %i.sl = icmp ult i64 %i.sk, %i.sh
  %i.sm = call i64 @llvm.umin.i64(i64 %i.sk, i64 2305843009213693951)
  %i.sn = select i1 %i.sl, i64 2305843009213693951, i64 %i.sm ; 3 uses
  %.not.i.i876 = icmp ne i64 %i.sn, 0
  call void @llvm.assume(i1 %.not.i.i876)
  %i.so = shl nuw nsw i64 %i.sn, 2
  %i.sp = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.so) #41
          to label %.noexc878 unwind label %.loopexit.split-lp1395.loopexit.split-lp ; 5 uses

.noexc878:                                        ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 %.idx1312.pre-phi ; 4 uses
  store <4 x i32> splat (i32 9999), ptr %i.sq, align 4, !tbaa !211
  %.06.i.i.i.i.i.i.i77.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  store i32 9999, ptr %.06.i.i.i.i.i.i.i77.i.ptr.4, align 4, !tbaa !211
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 20 ; 3 uses
  %i.ss = icmp samesign ugt i64 %.0605593, 1
  br i1 %i.ss, label %bb.cv, label %bb.cw, !prof !224

bb.cv:                                            ; preds = %.noexc878
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.sp, ptr align 4 %.sroa.01230.41288, i64 %.idx1312.pre-phi, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit.i

bb.cw:                                            ; preds = %.noexc878
  %i.st = icmp eq i64 %.0605593, 1
  br i1 %i.st, label %bb.cx, label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit.i

bb.cx:                                            ; preds = %bb.cw
  %i.su = load i32, ptr %.sroa.01230.41288, align 4, !tbaa !211
  store i32 %i.su, ptr %i.sp, align 4, !tbaa !211
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit.i

_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit.i: ; preds = %bb.cx, %bb.cw, %bb.cv
  %i.sv = sub i64 %i.qq, %i.qn                    ; 4 uses
  %i.sw = icmp sgt i64 %i.sv, 4
  br i1 %i.sw, label %bb.cy, label %bb.cz, !prof !224

bb.cy:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.sr, ptr align 4 %i.qm, i64 %i.sv, i1 false)
  br label %bb.da

bb.cz:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit.i
  %i.sx = icmp eq i64 %i.sv, 4
  br i1 %i.sx, label %.thread, label %bb.da

.thread:                                          ; preds = %bb.cz
  %i.sy = load i32, ptr %i.qm, align 4, !tbaa !211
  store i32 %i.sy, ptr %i.sr, align 4, !tbaa !211
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sq, i64 24
  br label %bb.db

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %i.ta = getelementptr inbounds i8, ptr %i.sr, i64 %i.sv ; 2 uses
  %.not.i82.i = icmp eq ptr %.sroa.01230.41288, null
  br i1 %.not.i82.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i, label %bb.db

bb.db:                                            ; preds = %.thread, %bb.da
  %i.tb = phi ptr [ %i.sz, %.thread ], [ %i.ta, %bb.da ]
  %i.tc = sub i64 %i.qp, %i.qo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.01230.41288, i64 noundef %i.tc) #39
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i: ; preds = %bb.db, %bb.da
  %i.td = phi ptr [ %i.tb, %bb.db ], [ %i.ta, %bb.da ]
  %i.te = getelementptr inbounds nuw [4 x i8], ptr %i.sp, i64 %i.sn
  br label %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEmRS4_.exit

_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEmRS4_.exit: ; preds = %.lr.ph.i.i.i71.i, %middle.block13964, %.lr.ph.i.i.i.i, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69.i, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i
  %.sroa.01230.5 = phi ptr [ %i.sp, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %.sroa.01230.41288, %.lr.ph.i.i.i.i ], [ %.sroa.01230.41288, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69.i ], [ %.sroa.01230.41288, %middle.block13964 ], [ %.sroa.01230.41288, %.lr.ph.i.i.i71.i ] ; 7 uses
  %.sroa.141238.2 = phi ptr [ %i.td, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %i.qw, %.lr.ph.i.i.i.i ], [ %i.ru, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69.i ], [ %i.ru, %middle.block13964 ], [ %i.ru, %.lr.ph.i.i.i71.i ] ; 2 uses
  %.sroa.25.5 = phi ptr [ %i.te, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i ], [ %.sroa.25.41290, %.lr.ph.i.i.i.i ], [ %.sroa.25.41290, %_ZSt22__uninitialized_move_aIPiS0_SaIiEET0_T_S3_S2_RT1_.exit69.i ], [ %.sroa.25.41290, %middle.block13964 ], [ %.sroa.25.41290, %.lr.ph.i.i.i71.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #36
  %i.tf = load i64, ptr %21, align 8, !tbaa !197  ; 2 uses
  %i.tg = trunc i64 %i.tf to i1                   ; 2 uses
  %i.th = load ptr, ptr %i.ah, align 8
  %i.ti = select i1 %i.tg, ptr %i.th, ptr %i.ah   ; 7 uses
  %i.tj = ptrtoaddr ptr %i.ti to i64
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ti, i64 %.idx1312.pre-phi ; 6 uses
  %i.tl = load i64, ptr %i.ag, align 8, !noalias !1749
  %.sink.i.i880 = select i1 %i.tg, i64 %i.tl, i64 8 ; 2 uses
  %.sink1.i.i881 = lshr i64 %i.tf, 1              ; 8 uses
  %i.tm = add nuw nsw i64 %.0605593, 5            ; 3 uses
  %i.tn = add nuw i64 %.sink1.i.i881, 5           ; 4 uses
  %i.to = icmp ugt i64 %i.tn, %.sink.i.i880
  br i1 %i.to, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EEmRS4_.exit
  %i.tp = shl i64 %.sink.i.i880, 1
  %.sroa.speculated.i.i890 = call noundef i64 @llvm.umax.i64(i64 %i.tp, i64 %i.tn) ; 4 uses
  %i.tq = icmp ugt i64 %.sroa.speculated.i.i890, 2305843009213693951
  br i1 %i.tq, label %bb.dd, label %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i891, !prof !212

bb.dd:                                            ; preds = %bb.dc
  %i.tr = icmp ugt i64 %.sroa.speculated.i.i890, 4611686018427387903
  br i1 %i.tr, label %.noexc.i902, label %.noexc44.i901

.noexc.i902:                                      ; preds = %bb.dd
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #38
          to label %.noexc903 unwind label %.loopexit.split-lp1400.loopexit.split-lp

.noexc903:                                        ; preds = %.noexc.i902
  unreachable

.noexc44.i901:                                    ; preds = %bb.dd
  invoke void @_ZSt17__throw_bad_allocv() #38
          to label %.noexc904 unwind label %.loopexit.split-lp1400.loopexit.split-lp

.noexc904:                                        ; preds = %.noexc44.i901
  unreachable

_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i891: ; preds = %bb.dc
  %i.ts = shl nuw nsw i64 %.sroa.speculated.i.i890, 2
  %i.tt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ts) #41
          to label %.noexc905 unwind label %.loopexit.split-lp1400.loopexit.split-lp ; 10 uses

.noexc905:                                        ; preds = %_ZN4absl12lts_2026052623inlined_vector_internal13MallocAdapterISaIiELb0EE8AllocateERS3_m.exit.i.i891
  %i.tu = ptrtoaddr ptr %i.tt to i64              ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tt, i64 %.idx1312.pre-phi ; 3 uses
  store <4 x i32> splat (i32 9999), ptr %i.tv, align 4, !tbaa !211
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  store i32 9999, ptr %i.tw, align 4, !tbaa !211
  %.not.i.i46.i893 = icmp eq i64 %.0605593, 0
  br i1 %.not.i.i46.i893, label %_ZN4absl12lts_2026052623inlined_vector_internal23ConstructionTransactionISaIiEE9ConstructINS1_20IteratorValueAdapterIS3_St13move_iteratorIPiEEEEEvS8_RT_m.exit.i, label %.lr.ph.i.i47.i894.preheader

.lr.ph.i.i47.i894.preheader:                      ; preds = %.noexc905
  %min.iters.check13923 = icmp samesign ult i64 %.0605593, 8
  %i.tx = sub i64 %i.tj, %i.tu
  %diff.check13921 = icmp ugt i64 %i.tx, -32
  %or.cond14015 = select i1 %min.iters.check13923, i1 true, i1 %diff.check13921
  br i1 %or.cond14015, label %.lr.ph.i.i47.i894.preheader14056, label %vector.ph13924

vector.ph13924:                                   ; preds = %.lr.ph.i.i47.i894.preheader
  %n.vec13925 = and i64 %.0605593, 9223372036854775800 ; 4 uses
  %i.ty = shl i64 %n.vec13925, 2
  %i.tz = getelementptr i8, ptr %i.ti, i64 %i.ty  ; 2 uses
  br label %vector.body13926

vector.body13926:                                 ; preds = %vector.body13926, %vector.ph13924
  %index13927 = phi i64 [ 0, %vector.ph13924 ], [ %index.next13931, %vector.body13926 ] ; 3 uses
  %i.ua = shl i64 %index13927, 2
  %next.gep13928 = getelementptr i8, ptr %i.ti, i64 %i.ua ; 2 uses
  %i.ub = getelementptr inbounds nuw [4 x i8], ptr %i.tt, i64 %index13927 ; 2 uses
  %i.uc = getelementptr i8, ptr %next.gep13928, i64 16
  %wide.load13929 = load <4 x i32>, ptr %next.gep13928, align 4, !tbaa !211
  %wide.load13930 = load <4 x i32>, ptr %i.uc, align 4, !tbaa !211
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ub, i64 16
end_hunk_1
