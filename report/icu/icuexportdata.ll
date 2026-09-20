Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/icuexportdata?download=true
inline.NumInlined: 823
inline.NumDeleted: 326
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@uset_removeAll_78
declare void @uset_removeAll_78(ptr noundef, ptr noundef) local_unnamed_addr #2

declare signext i8 @uset_equals_78(ptr noundef, ptr noundef) local_unnamed_addr #2

declare signext i8 @uset_isEmpty_78(ptr noundef) local_unnamed_addr #2

declare void @uset_close_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z21computeDecompositionsPKcPK4USetRSt6vectorItSaItEERS4_IjSaIjEEPS1_SB_RS4_I17PendingDescriptorSaISC_EERiSG_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %8) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.icu_78::IcuToolErrorCode", align 8 ; 27 uses
  %10 = alloca %"class.icu_78::internal::LocalOpenPointer", align 8 ; 13 uses
  %i.a = alloca [20 x i32], align 16              ; 18 uses
  %i.b = alloca [2 x i32], align 4                ; 8 uses
  %11 = alloca %"class.icu_78::UnicodeString", align 8 ; 15 uses
  %12 = alloca %"class.icu_78::UnicodeString", align 8 ; 15 uses
  %13 = alloca %"class.icu_78::UnicodeString", align 8 ; 9 uses
  %14 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %15 = alloca %"class.icu_78::UnicodeString", align 8 ; 13 uses
  %16 = alloca %"class.icu_78::UnicodeString", align 8 ; 11 uses
  %17 = alloca %class.PendingDescriptor, align 4  ; 11 uses
  %18 = alloca %"class.icu_78::internal::LocalOpenPointer.0", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 35 uses
  store i32 0, ptr %i.c, align 8, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_7816IcuToolErrorCodeE, i64 16), ptr %9, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr @.str.56, ptr %i.d, align 8, !tbaa !24
  %i.e = invoke noundef ptr @_ZN6icu_7811Normalizer214getNFDInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.b unwind label %bb.f       ; 10 uses

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef ptr @_ZN6icu_7811Normalizer214getNFCInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.c unwind label %bb.g       ; 2 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.g = invoke ptr @umutablecptrie_open_78(i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.c)
          to label %bb.d unwind label %.thread771

bb.d:                                             ; preds = %bb.c
  store ptr %i.g, ptr %10, align 8, !tbaa !32
  %i.h = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.57) #30
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.j = invoke noundef ptr @_ZN6icu_7811Normalizer215getNFKDInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.k unwind label %.thread777

bb.f:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit532

bb.g:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit532

.thread771:                                       ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit532

.thread777:                                       ; preds = %bb.e, %bb.i, %bb.j
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit532

bb.h:                                             ; preds = %bb.d
  %i.o = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.52) #30
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = invoke noundef ptr @_ZN6icu_7811Normalizer211getInstanceEPKcS2_19UNormalization2ModeR10UErrorCode(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.k unwind label %.thread777

bb.j:                                             ; preds = %bb.h
  %i.r = invoke noundef ptr @_Z17prepareOutputFilePKc(ptr noundef nonnull @.str.59)
          to label %bb.k unwind label %.thread777

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.e
  %.0286 = phi ptr [ %i.q, %bb.i ], [ %i.j, %bb.e ], [ %i.e, %bb.j ] ; 3 uses
  %.0258 = phi ptr [ null, %bb.i ], [ null, %bb.e ], [ %i.r, %bb.j ] ; 5 uses
  %.old71.not = phi i1 [ false, %bb.i ], [ true, %bb.e ], [ true, %bb.j ] ; 2 uses
  %i.s = phi i1 [ true, %bb.i ], [ false, %bb.e ], [ false, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  %.not301 = icmp eq ptr %.0286, %i.e             ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 12 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 12
  %i.z = getelementptr inbounds nuw i8, ptr %14, i64 10
  %i.aa = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %12, i64 12 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %12, i64 10 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %15, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 10
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 36 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 27 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %16, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %17, i64 9
  %i.ar = getelementptr inbounds nuw i8, ptr %17, i64 10
  %i.as = getelementptr inbounds nuw i8, ptr %17, i64 12
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 16
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !49
  %i.aw = load ptr, ptr %2, align 8, !tbaa !51
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !101
  %i.bd = load ptr, ptr %3, align 8, !tbaa !102
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 2
  %i.bi = add nsw i64 %i.bh, %i.ba
  %i.bj = icmp ugt i64 %i.bi, 4095
  br i1 %i.bj, label %bb.gd, label %bb.gf

bb.m:                                             ; preds = %bb.k, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit
  %.02561026 = phi i32 [ 1114111, %bb.k ], [ %i.uq, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit ] ; 44 uses
  %.sroa.21.01025 = phi ptr [ null, %bb.k ], [ %.sroa.21.6, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit ] ; 44 uses
  %.sroa.13.01024 = phi ptr [ null, %bb.k ], [ %.sroa.13.4, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit ] ; 19 uses
  %.sroa.0736.01023 = phi ptr [ null, %bb.k ], [ %.sroa.0736.6, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit ] ; 46 uses
  %i.bk = add nsw i32 %.02561026, -44032
  %or.cond = icmp ult i32 %i.bk, 11172
  %i.bl = and i32 %.02561026, 2147481600
  %or.cond4 = icmp eq i32 %i.bl, 55296
  %or.cond349 = or i1 %or.cond, %or.cond4
  br i1 %or.cond349, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = icmp eq i32 %.02561026, 65533
  br i1 %i.bm, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  %i.bn = load ptr, ptr %i.ai, align 8, !tbaa !98 ; 11 uses
  %i.bo = load ptr, ptr %i.aj, align 8, !tbaa !103
  %.not.i.i = icmp eq ptr %i.bn, %i.bo
  br i1 %.not.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 65533, ptr %i.bn, align 4, !tbaa !95
  %.sroa.6715.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  store i32 -1073741824, ptr %.sroa.6715.0..sroa_idx, align 4, !tbaa !95
  %.sroa.7718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store i8 0, ptr %.sroa.7718.0..sroa_idx, align 4, !tbaa !62
  %.sroa.8721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 9
  store i8 0, ptr %.sroa.8721.0..sroa_idx, align 1, !tbaa !62
  %.sroa.9724.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 10
  store i8 0, ptr %.sroa.9724.0..sroa_idx, align 2, !tbaa !62
  %.sroa.10730.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  store i32 0, ptr %.sroa.10730.0..sroa_idx, align 4, !tbaa !95
  %.sroa.11733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  store i32 0, ptr %.sroa.11733.0..sroa_idx, align 4, !tbaa !95
  %i.bp = load ptr, ptr %i.ai, align 8, !tbaa !98
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 20
  store ptr %i.bq, ptr %i.ai, align 8, !tbaa !98
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit

bb.q:                                             ; preds = %bb.o
  %i.br = load ptr, ptr %6, align 8, !tbaa !99    ; 5 uses
  %i.bs = ptrtoint ptr %i.bn to i64
  %i.bt = ptrtoint ptr %i.br to i64               ; 2 uses
  %i.bu = sub i64 %i.bs, %i.bt                    ; 3 uses
  %i.bv = icmp eq i64 %i.bu, 9223372036854775800
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc unwind label %.loopexit.split-lp831

.noexc:                                           ; preds = %bb.r
  unreachable

_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.q
  %i.bw = sdiv exact i64 %i.bu, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bw, i64 1)
  %19 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bw ; 2 uses
  %i.bx = icmp ult i64 %19, %i.bw
  %i.by = call i64 @llvm.umin.i64(i64 %19, i64 461168601842738790)
  %i.bz = select i1 %i.bx, i64 461168601842738790, i64 %i.by ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ca = mul nuw nsw i64 %i.bz, 20
  %i.cb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #28
          to label %.noexc359 unwind label %.loopexit830 ; 5 uses

.noexc359:                                        ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bu ; 7 uses
  store i32 65533, ptr %i.cc, align 4, !tbaa !95
  %.sroa.6715.0..sroa_idx716 = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  store i32 -1073741824, ptr %.sroa.6715.0..sroa_idx716, align 4, !tbaa !95
  %.sroa.7718.0..sroa_idx719 = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store i8 0, ptr %.sroa.7718.0..sroa_idx719, align 4, !tbaa !62
  %.sroa.8721.0..sroa_idx722 = getelementptr inbounds nuw i8, ptr %i.cc, i64 9
  store i8 0, ptr %.sroa.8721.0..sroa_idx722, align 1, !tbaa !62
  %.sroa.9724.0..sroa_idx725 = getelementptr inbounds nuw i8, ptr %i.cc, i64 10
  store i8 0, ptr %.sroa.9724.0..sroa_idx725, align 2, !tbaa !62
  %.sroa.10730.0..sroa_idx731 = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  store i32 0, ptr %.sroa.10730.0..sroa_idx731, align 4, !tbaa !95
  %.sroa.11733.0..sroa_idx734 = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i32 0, ptr %.sroa.11733.0..sroa_idx734, align 4, !tbaa !95
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.br, %i.bn
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc359, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i.i ], [ %i.cb, %.noexc359 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i ], [ %i.br, %.noexc359 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !104, !alias.scope !169
  %i.cd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 20 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cd, %i.bn
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc359
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.cb, %.noexc359 ], [ %i.ce, %.lr.ph.i.i.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 20
  %.not.i23.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  %i.cg = load ptr, ptr %i.aj, align 8, !tbaa !103
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = sub i64 %i.ch, %i.bt
  call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.ci) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.s, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i
  store ptr %i.cb, ptr %6, align 8, !tbaa !99
  store ptr %i.cf, ptr %i.ai, align 8, !tbaa !98
  %i.cj = getelementptr inbounds nuw [20 x i8], ptr %i.cb, i64 %i.bz
  store ptr %i.cj, ptr %i.aj, align 8, !tbaa !103
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit

.loopexit830:                                     ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit832 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.loopexit.split-lp831:                            ; preds = %bb.r
  %lpad.loopexit.split-lp833 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.t:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %11, align 8, !tbaa !20
  store i16 2, ptr %i.t, align 8, !tbaa !62
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %12, align 8, !tbaa !20
  store i16 2, ptr %i.u, align 8, !tbaa !62
  %i.ck = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString6appendEi(ptr noundef nonnull align 8 dereferenceable(64) %11, i32 noundef %.02561026)
          to label %bb.u unwind label %bb.y       ; 0 uses

bb.u:                                             ; preds = %bb.t
  br i1 %.not301, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %13, align 8, !tbaa !20
  store i16 2, ptr %i.v, align 8, !tbaa !62
  %i.cl = load ptr, ptr %.0286, align 8, !tbaa !20
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %.0286, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.w unwind label %bb.z       ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.cp = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.cr(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %13, ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.x unwind label %bb.z       ; 0 uses

bb.x:                                             ; preds = %bb.w
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.ab

bb.y:                                             ; preds = %bb.aa, %bb.t
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.gc

bb.z:                                             ; preds = %bb.w, %bb.v
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.gc

bb.aa:                                            ; preds = %bb.u
  %i.cv = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.ab unwind label %bb.y      ; 0 uses

bb.ab:                                            ; preds = %bb.x, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %14, align 8, !tbaa !20
  store i16 2, ptr %i.w, align 8, !tbaa !62
  %i.cz = load ptr, ptr %i.f, align 8, !tbaa !20
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.ac unwind label %bb.aj     ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.dd = load i16, ptr %i.t, align 8, !tbaa !62  ; 3 uses
  %i.de = and i16 %i.dd, 1
  %.not.i = icmp eq i16 %i.de, 0
  br i1 %.not.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.df = load i16, ptr %i.w, align 8, !tbaa !62
  %i.dg = trunc i16 %i.df to i1
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dh = icmp slt i16 %i.dd, 0
  %i.di = ashr i16 %i.dd, 5
  %i.dj = sext i16 %i.di to i32
  %i.dk = load i32, ptr %i.x, align 4
  %i.dl = select i1 %i.dh, i32 %i.dk, i32 %i.dj   ; 2 uses
  %i.dm = load i16, ptr %i.w, align 8, !tbaa !62  ; 4 uses
  %i.dn = icmp slt i16 %i.dm, 0
  %i.do = ashr i16 %i.dm, 5
  %i.dp = sext i16 %i.do to i32
  %i.dq = load i32, ptr %i.y, align 4
  %i.dr = select i1 %i.dn, i32 %i.dq, i32 %i.dp
  %i.ds = and i16 %i.dm, 1
  %.not9.i = icmp eq i16 %i.ds, 0
  %i.dt = icmp eq i32 %i.dl, %i.dr
  %or.cond.i = and i1 %.not9.i, %i.dt
  br i1 %or.cond.i, label %bb.af, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

bb.af:                                            ; preds = %bb.ae
  %i.du = and i16 %i.dm, 2
  %.not.i.i.i = icmp eq i16 %i.du, 0
  %i.dv = load ptr, ptr %i.aa, align 8
  %i.dw = select i1 %.not.i.i.i, ptr %i.dv, ptr %i.z
  %i.dx = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef %i.dw, i32 noundef %i.dl)
          to label %.noexc360 unwind label %bb.ak

.noexc360:                                        ; preds = %bb.af
  %i.dy = icmp ne i8 %i.dx, 0
  br label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit

_ZNK6icu_7813UnicodeStringeqERKS0_.exit:          ; preds = %.noexc360, %bb.ae, %bb.ad
  %.0.i = phi i1 [ %i.dg, %bb.ad ], [ %i.dy, %.noexc360 ], [ false, %bb.ae ] ; 3 uses
  %i.dz = invoke noundef i32 @_ZNK6icu_7813UnicodeString7toUTF32EPiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef nonnull %i.a, i32 noundef 20, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.ag unwind label %bb.al     ; 15 uses

bb.ag:                                            ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %.not304 = icmp eq i32 %i.dz, 0                 ; 2 uses
  br i1 %.not304, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ea = icmp ne i32 %i.dz, 1
  %i.eb = load i32, ptr %i.a, align 16
  %i.ec = icmp ne i32 %i.eb, 65533
  %or.cond7.not = select i1 %i.ea, i1 true, i1 %i.ec
  %or.cond72 = or i1 %i.s, %or.cond7.not
  br i1 %or.cond72, label %bb.am, label %.invoke

bb.ai:                                            ; preds = %bb.ag
  br i1 %.old71.not, label %.invoke, label %.thread

bb.aj:                                            ; preds = %bb.ab
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.ak:                                            ; preds = %bb.af
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.al:                                            ; preds = %.invoke, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb
end_hunk_0
begin_hunk_1_@_Z21computeDecompositionsPKcPK4USetRSt6vectorItSaItEERS4_IjSaIjEEPS1_SB_RS4_I17PendingDescriptorSaISC_EERiSG_:bb.a
  %i.ey = select i1 %i.eu, i32 %i.ex, i32 %i.ew
  %i.ez = and i16 %i.et, 1
  %.not9.i.i = icmp eq i16 %i.ez, 0
  %i.fa = icmp eq i32 %i.es, %i.ey
  %or.cond.i.i = and i1 %.not9.i.i, %i.fa
  br i1 %or.cond.i.i, label %bb.ar, label %.thread751

bb.ar:                                            ; preds = %bb.aq
  %i.fb = and i16 %i.et, 2
  %.not.i.i.i.i362 = icmp eq i16 %i.fb, 0
  %i.fc = load ptr, ptr %i.ad, align 8
  %i.fd = select i1 %.not.i.i.i.i362, ptr %i.fc, ptr %i.ac
  %i.fe = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef %i.fd, i32 noundef %i.es)
          to label %bb.as unwind label %bb.aw

bb.as:                                            ; preds = %bb.ar
  %.not1373 = icmp eq i8 %i.fe, 0
  br i1 %.not1373, label %.thread751, label %bb.bb

.thread751:                                       ; preds = %.split1231, %bb.aq, %bb.as
  %i.ff = and i32 %.02561026, 2147483646
  %or.cond11 = icmp eq i32 %i.ff, 832
  br i1 %or.cond11, label %bb.bb, label %switch.early.test

switch.early.test:                                ; preds = %.thread751
  switch i32 %.02561026, label %bb.at [
    i32 3969, label %bb.bb
    i32 3957, label %bb.bb
    i32 3955, label %bb.bb
    i32 836, label %bb.bb
    i32 835, label %bb.bb
  ]

bb.at:                                            ; preds = %switch.early.test
  %i.fg = icmp eq i32 %.02561026, 65438
  %i.fh = load i32, ptr %i.a, align 16            ; 2 uses
  %i.fi = icmp eq i32 %i.fh, 12441
  %or.cond24 = select i1 %i.fg, i1 %i.fi, i1 false
  br i1 %or.cond24, label %bb.bb, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fj = icmp eq i32 %.02561026, 65439
  %i.fk = icmp eq i32 %i.fh, 12442
  %or.cond27 = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %or.cond27, label %bb.bb, label %bb.ax

bb.av:                                            ; preds = %.thread
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.aw:                                            ; preds = %bb.bw, %bb.ar, %bb.eo, %bb.em, %bb.ea, %bb.dr, %bb.ba, %bb.ay, %bb.ax, %bb.ao
  %.sroa.0736.1 = phi ptr [ %.sroa.0736.4, %bb.dr ], [ %.sroa.0736.4, %bb.ea ], [ %.sroa.0736.4, %bb.eo ], [ %.sroa.0736.4, %bb.em ], [ %.sroa.0736.01023, %bb.bw ], [ %.sroa.0736.01023, %bb.ba ], [ %.sroa.0736.01023, %bb.ay ], [ %.sroa.0736.01023, %bb.ax ], [ %.sroa.0736.01023, %bb.ar ], [ %.sroa.0736.01023, %bb.ao ]
  %.sroa.21.1 = phi ptr [ %.sroa.21.4, %bb.dr ], [ %.sroa.21.4, %bb.ea ], [ %.sroa.21.4, %bb.eo ], [ %.sroa.21.4, %bb.em ], [ %.sroa.21.01025, %bb.bw ], [ %.sroa.21.01025, %bb.ba ], [ %.sroa.21.01025, %bb.ay ], [ %.sroa.21.01025, %bb.ax ], [ %.sroa.21.01025, %bb.ar ], [ %.sroa.21.01025, %bb.ao ]
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.ax:                                            ; preds = %bb.au
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 828, ptr noundef nonnull %0)
          to label %bb.bb unwind label %bb.aw

bb.ay:                                            ; preds = %bb.an
  %i.fn = load i32, ptr %i.a, align 16, !tbaa !95
  %i.fo = invoke signext i8 @uset_contains_78(ptr noundef %1, i32 noundef %i.fn)
          to label %bb.az unwind label %bb.aw

bb.az:                                            ; preds = %bb.ay
  %.not308 = icmp eq i8 %i.fo, 0
  br i1 %.not308, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i32 %.02561026, ptr %8, align 4, !tbaa !95
  invoke void @uset_add_78(ptr noundef %5, i32 noundef %.02561026)
          to label %bb.bb unwind label %bb.aw

bb.bb:                                            ; preds = %.split1231, %bb.at, %bb.au, %.thread751, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.az, %bb.ba, %bb.as, %bb.ax
  %.0253 = phi i1 [ false, %bb.az ], [ false, %bb.ax ], [ false, %bb.as ], [ false, %bb.ba ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ true, %.thread751 ], [ true, %bb.au ], [ true, %bb.at ], [ false, %.split1231 ]
  %.0252.not = phi i1 [ true, %bb.az ], [ true, %bb.ax ], [ true, %bb.as ], [ false, %bb.ba ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ true, %switch.early.test ], [ true, %.thread751 ], [ true, %bb.au ], [ true, %bb.at ], [ true, %.split1231 ] ; 5 uses
  br i1 %.not301, label %bb.bh, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %15, align 8, !tbaa !20
  store i16 2, ptr %i.ae, align 8, !tbaa !62
  %i.fp = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load ptr, ptr %i.fq, align 8
  %i.fs = invoke noundef nonnull align 8 dereferenceable(64) ptr %i.fr(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.bd unwind label %bb.bg     ; 0 uses

bb.bd:                                            ; preds = %bb.bc
  %i.ft = load i16, ptr %i.u, align 8, !tbaa !62  ; 3 uses
  %i.fu = and i16 %i.ft, 1
  %.not.i364 = icmp eq i16 %i.fu, 0
  br i1 %.not.i364, label %bb.be, label %.split

.split:                                           ; preds = %bb.bd
  %i.fv = load i16, ptr %i.ae, align 8, !tbaa !62
  %i.fw = trunc i16 %i.fv to i1
  br i1 %i.fw, label %.critedge, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit370.thread

bb.be:                                            ; preds = %bb.bd
  %i.fx = icmp slt i16 %i.ft, 0
  %i.fy = ashr i16 %i.ft, 5
  %i.fz = sext i16 %i.fy to i32
  %i.ga = load i32, ptr %i.ab, align 4
  %i.gb = select i1 %i.fx, i32 %i.ga, i32 %i.fz   ; 2 uses
  %i.gc = load i16, ptr %i.ae, align 8, !tbaa !62 ; 4 uses
  %i.gd = icmp slt i16 %i.gc, 0
  %i.ge = ashr i16 %i.gc, 5
  %i.gf = sext i16 %i.ge to i32
  %i.gg = load i32, ptr %i.af, align 4
  %i.gh = select i1 %i.gd, i32 %i.gg, i32 %i.gf
  %i.gi = and i16 %i.gc, 1
  %.not9.i366 = icmp eq i16 %i.gi, 0
  %i.gj = icmp eq i32 %i.gb, %i.gh
  %or.cond.i367 = and i1 %.not9.i366, %i.gj
  br i1 %or.cond.i367, label %bb.bf, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit370.thread

bb.bf:                                            ; preds = %bb.be
  %i.gk = and i16 %i.gc, 2
  %.not.i.i.i368 = icmp eq i16 %i.gk, 0
  %i.gl = load ptr, ptr %i.ah, align 8
  %i.gm = select i1 %.not.i.i.i368, ptr %i.gl, ptr %i.ag
  %i.gn = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %12, ptr noundef %i.gm, i32 noundef %i.gb)
          to label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit370 unwind label %bb.bg

_ZNK6icu_7813UnicodeStringeqERKS0_.exit370:       ; preds = %bb.bf
  %.not782 = icmp eq i8 %i.gn, 0
  br i1 %.not782, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit370.thread, label %.critedge

bb.bg:                                            ; preds = %bb.bf, %bb.bc
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.gb

_ZNK6icu_7813UnicodeStringeqERKS0_.exit370.thread: ; preds = %bb.be, %.split, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit370
  store i32 %.02561026, ptr %7, align 4, !tbaa !95
  store i32 %.02561026, ptr %8, align 4, !tbaa !95
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %bb.bh

bb.bh:                                            ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit370.thread, %bb.bb
  br i1 %.not307, label %bb.bu, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  br i1 %.0253, label %bb.bj, label %bb.bp

bb.bj:                                            ; preds = %bb.bi
  %i.gp = invoke zeroext i8 @u_getCombiningClass_78(i32 noundef %.02561026)
          to label %bb.bk unwind label %.loopexit785

bb.bk:                                            ; preds = %bb.bj
  %i.gq = zext i8 %i.gp to i32
  %i.gr = or disjoint i32 %i.gq, -1073686272      ; 2 uses
  %i.gs = load ptr, ptr %i.ai, align 8, !tbaa !98 ; 11 uses
  %i.gt = load ptr, ptr %i.aj, align 8, !tbaa !103
  %.not.i.i371 = icmp eq ptr %i.gs, %i.gt
  br i1 %.not.i.i371, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store i32 %.02561026, ptr %i.gs, align 4, !tbaa !95
  %.sroa.6692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 4
  store i32 %i.gr, ptr %.sroa.6692.0..sroa_idx, align 4, !tbaa !95
  %.sroa.7695.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 8
  store i8 0, ptr %.sroa.7695.0..sroa_idx, align 4, !tbaa !62
  %.sroa.8698.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 9
  store i8 0, ptr %.sroa.8698.0..sroa_idx, align 1, !tbaa !62
  %.sroa.9701.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 10
  store i8 0, ptr %.sroa.9701.0..sroa_idx, align 2, !tbaa !62
  %.sroa.10707.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  store i32 0, ptr %.sroa.10707.0..sroa_idx, align 4, !tbaa !95
  %.sroa.11710.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store i32 0, ptr %.sroa.11710.0..sroa_idx, align 4, !tbaa !95
  %i.gu = load ptr, ptr %i.ai, align 8, !tbaa !98
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 20
  store ptr %i.gv, ptr %i.ai, align 8, !tbaa !98
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

bb.bm:                                            ; preds = %bb.bk
  %i.gw = load ptr, ptr %6, align 8, !tbaa !99    ; 5 uses
  %i.gx = ptrtoint ptr %i.gs to i64
  %i.gy = ptrtoint ptr %i.gw to i64               ; 2 uses
  %i.gz = sub i64 %i.gx, %i.gy                    ; 3 uses
  %i.ha = icmp eq i64 %i.gz, 9223372036854775800
  br i1 %i.ha, label %bb.bn, label %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i372

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc384 unwind label %.loopexit.split-lp786

.noexc384:                                        ; preds = %bb.bn
  unreachable

_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i372: ; preds = %bb.bm
  %i.hb = sdiv exact i64 %i.gz, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i373 = call i64 @llvm.umax.i64(i64 %i.hb, i64 1)
  %20 = add nsw i64 %.sroa.speculated.i.i.i.i373, %i.hb ; 2 uses
  %i.hc = icmp ult i64 %20, %i.hb
  %i.hd = call i64 @llvm.umin.i64(i64 %20, i64 461168601842738790)
  %i.he = select i1 %i.hc, i64 461168601842738790, i64 %i.hd ; 3 uses
  %.not.i.i.i.i374 = icmp ne i64 %i.he, 0
  call void @llvm.assume(i1 %.not.i.i.i.i374)
  %i.hf = mul nuw nsw i64 %i.he, 20
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #28
          to label %.noexc385 unwind label %.loopexit785 ; 5 uses

.noexc385:                                        ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i372
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.gz ; 7 uses
  store i32 %.02561026, ptr %i.hh, align 4, !tbaa !95
  %.sroa.6692.0..sroa_idx693 = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store i32 %i.gr, ptr %.sroa.6692.0..sroa_idx693, align 4, !tbaa !95
  %.sroa.7695.0..sroa_idx696 = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store i8 0, ptr %.sroa.7695.0..sroa_idx696, align 4, !tbaa !62
  %.sroa.8698.0..sroa_idx699 = getelementptr inbounds nuw i8, ptr %i.hh, i64 9
  store i8 0, ptr %.sroa.8698.0..sroa_idx699, align 1, !tbaa !62
  %.sroa.9701.0..sroa_idx702 = getelementptr inbounds nuw i8, ptr %i.hh, i64 10
  store i8 0, ptr %.sroa.9701.0..sroa_idx702, align 2, !tbaa !62
  %.sroa.10707.0..sroa_idx708 = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  store i32 0, ptr %.sroa.10707.0..sroa_idx708, align 4, !tbaa !95
  %.sroa.11710.0..sroa_idx711 = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store i32 0, ptr %.sroa.11710.0..sroa_idx711, align 4, !tbaa !95
  %.not10.i.i.i.i.i.i375 = icmp eq ptr %i.gw, %i.gs
  br i1 %.not10.i.i.i.i.i.i375, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i380, label %.lr.ph.i.i.i.i.i.i376

.lr.ph.i.i.i.i.i.i376:                            ; preds = %.noexc385, %.lr.ph.i.i.i.i.i.i376
  %.012.i.i.i.i.i.i377 = phi ptr [ %i.hj, %.lr.ph.i.i.i.i.i.i376 ], [ %i.hg, %.noexc385 ] ; 2 uses
  %.0911.i.i.i.i.i.i378 = phi ptr [ %i.hi, %.lr.ph.i.i.i.i.i.i376 ], [ %i.gw, %.noexc385 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i.i377, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i.i378, i64 20, i1 false), !tbaa.struct !104, !alias.scope !170
  %i.hi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i378, i64 20 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i377, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i379 = icmp eq ptr %i.hi, %i.gs
  br i1 %.not.i.i.i.i.i.i379, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i380, label %.lr.ph.i.i.i.i.i.i376, !llvm.loop !3

_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i380: ; preds = %.lr.ph.i.i.i.i.i.i376, %.noexc385
  %.0.lcssa.i.i.i.i.i.i381 = phi ptr [ %i.hg, %.noexc385 ], [ %i.hj, %.lr.ph.i.i.i.i.i.i376 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i381, i64 20
  %.not.i23.i.i.i382 = icmp eq ptr %i.gw, null
  br i1 %.not.i23.i.i.i382, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i383, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i380
  %i.hl = load ptr, ptr %i.aj, align 8, !tbaa !103
  %i.hm = ptrtoint ptr %i.hl to i64
  %i.hn = sub i64 %i.hm, %i.gy
  call void @_ZdlPvm(ptr noundef nonnull %i.gw, i64 noundef %i.hn) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i383

_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i383: ; preds = %bb.bo, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i380
  store ptr %i.hg, ptr %6, align 8, !tbaa !99
  store ptr %i.hk, ptr %i.ai, align 8, !tbaa !98
  %i.ho = getelementptr inbounds nuw [20 x i8], ptr %i.hg, i64 %i.he
  store ptr %i.ho, ptr %i.aj, align 8, !tbaa !103
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

.loopexit785:                                     ; preds = %bb.bj, %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i372
  %lpad.loopexit787 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp786:                            ; preds = %bb.bn
  %lpad.loopexit.split-lp788 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.bp:                                            ; preds = %bb.bi
  %i.hp = zext i8 %i.ej to i32
  %i.hq = or disjoint i32 %i.hp, -2147428352      ; 2 uses
  %i.hr = load ptr, ptr %i.ai, align 8, !tbaa !98 ; 11 uses
  %i.hs = load ptr, ptr %i.aj, align 8, !tbaa !103
  %.not.i.i387 = icmp eq ptr %i.hr, %i.hs
  br i1 %.not.i.i387, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i32 %.02561026, ptr %i.hr, align 4, !tbaa !95
  %.sroa.6669.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  store i32 %i.hq, ptr %.sroa.6669.0..sroa_idx, align 4, !tbaa !95
  %.sroa.7672.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  store i8 0, ptr %.sroa.7672.0..sroa_idx, align 4, !tbaa !62
  %.sroa.8675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 9
  store i8 0, ptr %.sroa.8675.0..sroa_idx, align 1, !tbaa !62
  %.sroa.9678.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 10
  store i8 0, ptr %.sroa.9678.0..sroa_idx, align 2, !tbaa !62
  %.sroa.10684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 12
  store i32 0, ptr %.sroa.10684.0..sroa_idx, align 4, !tbaa !95
  %.sroa.11687.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hr, i64 16
  store i32 0, ptr %.sroa.11687.0..sroa_idx, align 4, !tbaa !95
  %i.ht = load ptr, ptr %i.ai, align 8, !tbaa !98
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 20
  store ptr %i.hu, ptr %i.ai, align 8, !tbaa !98
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

bb.br:                                            ; preds = %bb.bp
  %i.hv = load ptr, ptr %6, align 8, !tbaa !99    ; 5 uses
  %i.hw = ptrtoint ptr %i.hr to i64
  %i.hx = ptrtoint ptr %i.hv to i64               ; 2 uses
  %i.hy = sub i64 %i.hw, %i.hx                    ; 3 uses
  %i.hz = icmp eq i64 %i.hy, 9223372036854775800
  br i1 %i.hz, label %bb.bs, label %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i388

bb.bs:                                            ; preds = %bb.br
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc400 unwind label %.loopexit.split-lp

.noexc400:                                        ; preds = %bb.bs
  unreachable

_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i388: ; preds = %bb.br
  %i.ia = sdiv exact i64 %i.hy, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i389 = call i64 @llvm.umax.i64(i64 %i.ia, i64 1)
  %21 = add nsw i64 %.sroa.speculated.i.i.i.i389, %i.ia ; 2 uses
  %i.ib = icmp ult i64 %21, %i.ia
  %i.ic = call i64 @llvm.umin.i64(i64 %21, i64 461168601842738790)
  %i.id = select i1 %i.ib, i64 461168601842738790, i64 %i.ic ; 3 uses
  %.not.i.i.i.i390 = icmp ne i64 %i.id, 0
  call void @llvm.assume(i1 %.not.i.i.i.i390)
  %i.ie = mul nuw nsw i64 %i.id, 20
  %i.if = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ie) #28
          to label %.noexc401 unwind label %.loopexit ; 5 uses

.noexc401:                                        ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i388
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.hy ; 7 uses
  store i32 %.02561026, ptr %i.ig, align 4, !tbaa !95
  %.sroa.6669.0..sroa_idx670 = getelementptr inbounds nuw i8, ptr %i.ig, i64 4
  store i32 %i.hq, ptr %.sroa.6669.0..sroa_idx670, align 4, !tbaa !95
  %.sroa.7672.0..sroa_idx673 = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  store i8 0, ptr %.sroa.7672.0..sroa_idx673, align 4, !tbaa !62
  %.sroa.8675.0..sroa_idx676 = getelementptr inbounds nuw i8, ptr %i.ig, i64 9
  store i8 0, ptr %.sroa.8675.0..sroa_idx676, align 1, !tbaa !62
  %.sroa.9678.0..sroa_idx679 = getelementptr inbounds nuw i8, ptr %i.ig, i64 10
  store i8 0, ptr %.sroa.9678.0..sroa_idx679, align 2, !tbaa !62
  %.sroa.10684.0..sroa_idx685 = getelementptr inbounds nuw i8, ptr %i.ig, i64 12
  store i32 0, ptr %.sroa.10684.0..sroa_idx685, align 4, !tbaa !95
  %.sroa.11687.0..sroa_idx688 = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store i32 0, ptr %.sroa.11687.0..sroa_idx688, align 4, !tbaa !95
  %.not10.i.i.i.i.i.i391 = icmp eq ptr %i.hv, %i.hr
  br i1 %.not10.i.i.i.i.i.i391, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i396, label %.lr.ph.i.i.i.i.i.i392

.lr.ph.i.i.i.i.i.i392:                            ; preds = %.noexc401, %.lr.ph.i.i.i.i.i.i392
  %.012.i.i.i.i.i.i393 = phi ptr [ %i.ii, %.lr.ph.i.i.i.i.i.i392 ], [ %i.if, %.noexc401 ] ; 2 uses
  %.0911.i.i.i.i.i.i394 = phi ptr [ %i.ih, %.lr.ph.i.i.i.i.i.i392 ], [ %i.hv, %.noexc401 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i.i393, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i.i394, i64 20, i1 false), !tbaa.struct !104, !alias.scope !171
  %i.ih = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i394, i64 20 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i393, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i395 = icmp eq ptr %i.ih, %i.hr
  br i1 %.not.i.i.i.i.i.i395, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i396, label %.lr.ph.i.i.i.i.i.i392, !llvm.loop !3

_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i396: ; preds = %.lr.ph.i.i.i.i.i.i392, %.noexc401
  %.0.lcssa.i.i.i.i.i.i397 = phi ptr [ %i.if, %.noexc401 ], [ %i.ii, %.lr.ph.i.i.i.i.i.i392 ]
  %i.ij = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i397, i64 20
  %.not.i23.i.i.i398 = icmp eq ptr %i.hv, null
  br i1 %.not.i23.i.i.i398, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i399, label %bb.bt

bb.bt:                                            ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i396
  %i.ik = load ptr, ptr %i.aj, align 8, !tbaa !103
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = sub i64 %i.il, %i.hx
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.im) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i399

_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i399: ; preds = %bb.bt, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i396
  store ptr %i.if, ptr %6, align 8, !tbaa !99
  store ptr %i.ij, ptr %i.ai, align 8, !tbaa !98
  %i.in = getelementptr inbounds nuw [20 x i8], ptr %i.if, i64 %i.id
  store ptr %i.in, ptr %i.aj, align 8, !tbaa !103
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

.loopexit:                                        ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i388
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp:                               ; preds = %bb.bs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.bu:                                            ; preds = %bb.bh
  %i.io = load i16, ptr %i.t, align 8, !tbaa !62  ; 3 uses
  %i.ip = and i16 %i.io, 1
  %.not.i403 = icmp eq i16 %i.ip, 0
  br i1 %.not.i403, label %bb.bv, label %.split755

.split755:                                        ; preds = %bb.bu
  %i.iq = load i16, ptr %i.u, align 8, !tbaa !62
  %i.ir = trunc i16 %i.iq to i1
  br i1 %i.ir, label %bb.bx, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit409.thread

bb.bv:                                            ; preds = %bb.bu
  %i.is = icmp slt i16 %i.io, 0
  %i.it = ashr i16 %i.io, 5
  %i.iu = sext i16 %i.it to i32
  %i.iv = load i32, ptr %i.x, align 4
  %i.iw = select i1 %i.is, i32 %i.iv, i32 %i.iu   ; 2 uses
  %i.ix = load i16, ptr %i.u, align 8, !tbaa !62  ; 4 uses
  %i.iy = icmp slt i16 %i.ix, 0
  %i.iz = ashr i16 %i.ix, 5
  %i.ja = sext i16 %i.iz to i32
  %i.jb = load i32, ptr %i.ab, align 4
  %i.jc = select i1 %i.iy, i32 %i.jb, i32 %i.ja
  %i.jd = and i16 %i.ix, 1
  %.not9.i405 = icmp eq i16 %i.jd, 0
  %i.je = icmp eq i32 %i.iw, %i.jc
  %or.cond.i406 = and i1 %.not9.i405, %i.je
  br i1 %or.cond.i406, label %bb.bw, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit409.thread

bb.bw:                                            ; preds = %bb.bv
  %i.jf = and i16 %i.ix, 2
  %.not.i.i.i407 = icmp eq i16 %i.jf, 0
  %i.jg = load ptr, ptr %i.ad, align 8
  %i.jh = select i1 %.not.i.i.i407, ptr %i.jg, ptr %i.ac
  %i.ji = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef %i.jh, i32 noundef %i.iw)
          to label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit409 unwind label %bb.aw

_ZNK6icu_7813UnicodeStringeqERKS0_.exit409:       ; preds = %bb.bw
  %.not783 = icmp eq i8 %i.ji, 0
  br i1 %.not783, label %_ZNK6icu_7813UnicodeStringeqERKS0_.exit409.thread, label %bb.bx

bb.bx:                                            ; preds = %.split755, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit409
  br i1 %.0252.not, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jj = load ptr, ptr %i.ai, align 8, !tbaa !98 ; 11 uses
  %i.jk = load ptr, ptr %i.aj, align 8, !tbaa !103
  %.not.i.i410 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not.i.i410, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  store i32 %.02561026, ptr %i.jj, align 4, !tbaa !95
  %.sroa.6646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 4
  store i32 -2147483648, ptr %.sroa.6646.0..sroa_idx, align 4, !tbaa !95
  %.sroa.7649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  store i8 0, ptr %.sroa.7649.0..sroa_idx, align 4, !tbaa !62
  %.sroa.8652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 9
  store i8 0, ptr %.sroa.8652.0..sroa_idx, align 1, !tbaa !62
  %.sroa.9655.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 10
  store i8 0, ptr %.sroa.9655.0..sroa_idx, align 2, !tbaa !62
  %.sroa.10661.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 12
  store i32 0, ptr %.sroa.10661.0..sroa_idx, align 4, !tbaa !95
  %.sroa.11664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store i32 0, ptr %.sroa.11664.0..sroa_idx, align 4, !tbaa !95
  %i.jl = load ptr, ptr %i.ai, align 8, !tbaa !98
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 20
  store ptr %i.jm, ptr %i.ai, align 8, !tbaa !98
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

bb.ca:                                            ; preds = %bb.by
  %i.jn = load ptr, ptr %6, align 8, !tbaa !99    ; 5 uses
  %i.jo = ptrtoint ptr %i.jj to i64
  %i.jp = ptrtoint ptr %i.jn to i64               ; 2 uses
  %i.jq = sub i64 %i.jo, %i.jp                    ; 3 uses
  %i.jr = icmp eq i64 %i.jq, 9223372036854775800
  br i1 %i.jr, label %bb.cb, label %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i411

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc423 unwind label %.loopexit.split-lp791

.noexc423:                                        ; preds = %bb.cb
  unreachable

_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i411: ; preds = %bb.ca
  %i.js = sdiv exact i64 %i.jq, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i412 = call i64 @llvm.umax.i64(i64 %i.js, i64 1)
  %22 = add nsw i64 %.sroa.speculated.i.i.i.i412, %i.js ; 2 uses
  %i.jt = icmp ult i64 %22, %i.js
  %i.ju = call i64 @llvm.umin.i64(i64 %22, i64 461168601842738790)
  %i.jv = select i1 %i.jt, i64 461168601842738790, i64 %i.ju ; 3 uses
  %.not.i.i.i.i413 = icmp ne i64 %i.jv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i413)
  %i.jw = mul nuw nsw i64 %i.jv, 20
  %i.jx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jw) #28
          to label %.noexc424 unwind label %.loopexit790 ; 5 uses

.noexc424:                                        ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i411
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 %i.jq ; 7 uses
  store i32 %.02561026, ptr %i.jy, align 4, !tbaa !95
  %.sroa.6646.0..sroa_idx647 = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  store i32 -2147483648, ptr %.sroa.6646.0..sroa_idx647, align 4, !tbaa !95
  %.sroa.7649.0..sroa_idx650 = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  store i8 0, ptr %.sroa.7649.0..sroa_idx650, align 4, !tbaa !62
  %.sroa.8652.0..sroa_idx653 = getelementptr inbounds nuw i8, ptr %i.jy, i64 9
  store i8 0, ptr %.sroa.8652.0..sroa_idx653, align 1, !tbaa !62
  %.sroa.9655.0..sroa_idx656 = getelementptr inbounds nuw i8, ptr %i.jy, i64 10
  store i8 0, ptr %.sroa.9655.0..sroa_idx656, align 2, !tbaa !62
  %.sroa.10661.0..sroa_idx662 = getelementptr inbounds nuw i8, ptr %i.jy, i64 12
  store i32 0, ptr %.sroa.10661.0..sroa_idx662, align 4, !tbaa !95
  %.sroa.11664.0..sroa_idx665 = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  store i32 0, ptr %.sroa.11664.0..sroa_idx665, align 4, !tbaa !95
  %.not10.i.i.i.i.i.i414 = icmp eq ptr %i.jn, %i.jj
  br i1 %.not10.i.i.i.i.i.i414, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i419, label %.lr.ph.i.i.i.i.i.i415

.lr.ph.i.i.i.i.i.i415:                            ; preds = %.noexc424, %.lr.ph.i.i.i.i.i.i415
  %.012.i.i.i.i.i.i416 = phi ptr [ %i.ka, %.lr.ph.i.i.i.i.i.i415 ], [ %i.jx, %.noexc424 ] ; 2 uses
  %.0911.i.i.i.i.i.i417 = phi ptr [ %i.jz, %.lr.ph.i.i.i.i.i.i415 ], [ %i.jn, %.noexc424 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i.i416, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i.i417, i64 20, i1 false), !tbaa.struct !104, !alias.scope !172
  %i.jz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i417, i64 20 ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i416, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i418 = icmp eq ptr %i.jz, %i.jj
  br i1 %.not.i.i.i.i.i.i418, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i419, label %.lr.ph.i.i.i.i.i.i415, !llvm.loop !3

_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i419: ; preds = %.lr.ph.i.i.i.i.i.i415, %.noexc424
  %.0.lcssa.i.i.i.i.i.i420 = phi ptr [ %i.jx, %.noexc424 ], [ %i.ka, %.lr.ph.i.i.i.i.i.i415 ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i420, i64 20
  %.not.i23.i.i.i421 = icmp eq ptr %i.jn, null
  br i1 %.not.i23.i.i.i421, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i422, label %bb.cc

bb.cc:                                            ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i419
  %i.kc = load ptr, ptr %i.aj, align 8, !tbaa !103
  %i.kd = ptrtoint ptr %i.kc to i64
  %i.ke = sub i64 %i.kd, %i.jp
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef %i.ke) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i422

_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i422: ; preds = %bb.cc, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i419
  store ptr %i.jx, ptr %6, align 8, !tbaa !99
  store ptr %i.kb, ptr %i.ai, align 8, !tbaa !98
  %i.kf = getelementptr inbounds nuw [20 x i8], ptr %i.jx, i64 %i.jv
  store ptr %i.kf, ptr %i.aj, align 8, !tbaa !103
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

.loopexit790:                                     ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i411
  %lpad.loopexit792 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp791:                            ; preds = %bb.cb
  %lpad.loopexit.split-lp793 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

_ZNK6icu_7813UnicodeStringeqERKS0_.exit409.thread: ; preds = %bb.bv, %.split755, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit409
  store i32 %.02561026, ptr %7, align 4, !tbaa !95
  %.not311 = icmp ne i32 %.02561026, 8491         ; 2 uses
  %or.cond350 = and i1 %.not301, %.not311
  br i1 %or.cond350, label %bb.cd, label %bb.dn

bb.cd:                                            ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit409.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %16, align 8, !tbaa !20
  store i16 2, ptr %i.ak, align 8, !tbaa !62
  %i.kg = load ptr, ptr %i.e, align 8, !tbaa !20
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 64
  %i.ki = load ptr, ptr %i.kh, align 8
  %i.kj = invoke noundef signext i8 %i.ki(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %.02561026, ptr noundef nonnull align 8 dereferenceable(64) %16)
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %bb.cd
  %.not312 = icmp eq i8 %i.kj, 0
  br i1 %.not312, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 872, ptr noundef nonnull %0)
          to label %bb.ch unwind label %bb.cg

bb.cg:                                            ; preds = %bb.ck, %bb.cf, %bb.cd
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.ch:                                            ; preds = %bb.cf, %bb.ce
  %i.kl = load i16, ptr %i.ak, align 8, !tbaa !62 ; 3 uses
  %i.km = and i16 %i.kl, 1
  %.not.i.i426 = icmp eq i16 %i.km, 0
  br i1 %.not.i.i426, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.kn = load i16, ptr %i.u, align 8, !tbaa !62
  %i.ko = trunc i16 %i.kn to i1
  br label %bb.cl

bb.cj:                                            ; preds = %bb.ch
  %i.kp = icmp slt i16 %i.kl, 0
  %i.kq = ashr i16 %i.kl, 5
  %i.kr = sext i16 %i.kq to i32
  %i.ks = load i32, ptr %i.al, align 4
  %i.kt = select i1 %i.kp, i32 %i.ks, i32 %i.kr   ; 2 uses
  %i.ku = load i16, ptr %i.u, align 8, !tbaa !62  ; 4 uses
  %i.kv = icmp slt i16 %i.ku, 0
  %i.kw = ashr i16 %i.ku, 5
  %i.kx = sext i16 %i.kw to i32
  %i.ky = load i32, ptr %i.ab, align 4
  %i.kz = select i1 %i.kv, i32 %i.ky, i32 %i.kx
  %i.la = and i16 %i.ku, 1
  %.not9.i.i428 = icmp eq i16 %i.la, 0
  %i.lb = icmp eq i32 %i.kt, %i.kz
  %or.cond.i.i429 = and i1 %.not9.i.i428, %i.lb
  br i1 %or.cond.i.i429, label %bb.ck, label %.thread756

bb.ck:                                            ; preds = %bb.cj
  %i.lc = and i16 %i.ku, 2
  %.not.i.i.i.i430 = icmp eq i16 %i.lc, 0
  %i.ld = load ptr, ptr %i.ad, align 8
  %i.le = select i1 %.not.i.i.i.i430, ptr %i.ld, ptr %i.ac
  %i.lf = invoke noundef signext i8 @_ZNK6icu_7813UnicodeString8doEqualsEPKDsi(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef %i.le, i32 noundef %i.kt)
          to label %.noexc431.a unwind label %bb.cg

.noexc431.a:                                      ; preds = %bb.ck
  %i.lg = icmp ne i8 %i.lf, 0
  br label %bb.cl

bb.cl:                                            ; preds = %.noexc431.a, %bb.ci
  %.0.i.i427 = phi i1 [ %i.ko, %bb.ci ], [ %i.lg, %.noexc431.a ]
  %i.lh = add nsw i32 %.02561026, -8188
  %or.cond29 = icmp ult i32 %i.lh, -139
  %or.cond351.not = select i1 %.0.i.i427, i1 %or.cond29, i1 false
  br i1 %or.cond351.not, label %bb.dl, label %.thread756

.thread756:                                       ; preds = %bb.cj, %bb.cl
  %i.li = invoke noundef i32 @_ZNK6icu_7813UnicodeString7toUTF32EPiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull %i.b, i32 noundef 2, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.cm unwind label %bb.co

bb.cm:                                            ; preds = %.thread756
  switch i32 %i.li, label %bb.cs [
    i32 0, label %bb.cn
    i32 1, label %bb.cp
  ]

bb.cn:                                            ; preds = %bb.cm
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 883, ptr noundef nonnull %0)
          to label %bb.cs unwind label %bb.co

bb.co:                                            ; preds = %bb.cu, %bb.cr, %bb.cq, %bb.cn, %.thread756
  %i.lj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.cp:                                            ; preds = %bb.cm
  %i.lk = icmp samesign ugt i32 %.02561026, 65534
  br i1 %i.lk, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 888, ptr noundef nonnull %0)
          to label %bb.cr unwind label %bb.co

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.ll = load ptr, ptr %10, align 8, !tbaa !32
  %i.lm = load i32, ptr %i.b, align 4, !tbaa !95
  invoke void @umutablecptrie_set_78(ptr noundef %i.ll, i32 noundef %.02561026, i32 noundef %i.lm, ptr noundef nonnull %i.c)
          to label %bb.dl unwind label %bb.co

bb.cs:                                            ; preds = %bb.cn, %bb.cm
  %i.ln = load i32, ptr %i.b, align 4, !tbaa !95  ; 5 uses
  %i.lo = icmp slt i32 %i.ln, 65536
  %i.lp = load i32, ptr %i.am, align 4            ; 3 uses
  %i.lq = icmp slt i32 %i.lp, 65536
  %or.cond32 = select i1 %i.lo, i1 %i.lq, i1 false
  br i1 %or.cond32, label %bb.ct, label %bb.cx

bb.ct:                                            ; preds = %bb.cs
  %i.lr = icmp ne i32 %i.ln, 0
  %i.ls = icmp ne i32 %i.lp, 0
  %or.cond35 = select i1 %i.lr, i1 %i.ls, i1 false
  br i1 %or.cond35, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 894, ptr noundef nonnull %0)
          to label %._crit_edge1156 unwind label %bb.co

._crit_edge1156:                                  ; preds = %bb.cu
  %.pre = load i32, ptr %i.am, align 4, !tbaa !95
  %.pre1157 = load i32, ptr %i.b, align 4, !tbaa !95
  br label %bb.cv

bb.cv:                                            ; preds = %._crit_edge1156, %bb.ct
  %i.lt = phi i32 [ %.pre1157, %._crit_edge1156 ], [ %i.ln, %bb.ct ]
  %i.lu = phi i32 [ %.pre, %._crit_edge1156 ], [ %i.lp, %bb.ct ]
  %i.lv = shl i32 %i.lu, 16
  %i.lw = or i32 %i.lv, %i.lt
  %i.lx = load ptr, ptr %10, align 8, !tbaa !32
  invoke void @umutablecptrie_set_78(ptr noundef %i.lx, i32 noundef %.02561026, i32 noundef %i.lw, ptr noundef nonnull %i.c)
          to label %bb.dl unwind label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.cx:                                            ; preds = %bb.cs
  %i.lz = ptrtoint ptr %.sroa.13.01024 to i64
  %i.ma = ptrtoint ptr %.sroa.0736.01023 to i64   ; 2 uses
  %i.mb = sub i64 %i.lz, %i.ma                    ; 5 uses
  %i.mc = ashr exact i64 %i.mb, 2                 ; 4 uses
  %i.md = trunc i64 %i.mc to i32
  %i.me = add i32 %i.md, 1                        ; 2 uses
  %.not.i.i433.a = icmp eq ptr %.sroa.13.01024, %.sroa.21.01025
  br i1 %.not.i.i433.a, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  store i32 %i.ln, ptr %.sroa.13.01024, align 4, !tbaa !95
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.cz:                                            ; preds = %bb.cx
  %i.mf = icmp eq i64 %i.mb, 9223372036854775804
  br i1 %i.mf, label %bb.da, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc436 unwind label %.loopexit.split-lp796

.noexc436:                                        ; preds = %bb.da
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cz
  %.sroa.speculated.i.i.i.i434 = call i64 @llvm.umax.i64(i64 %i.mc, i64 1)
  %23 = add nsw i64 %.sroa.speculated.i.i.i.i434, %i.mc ; 2 uses
  %i.mg = icmp ult i64 %23, %i.mc
  %i.mh = call i64 @llvm.umin.i64(i64 %23, i64 2305843009213693951)
  %i.mi = select i1 %i.mg, i64 2305843009213693951, i64 %i.mh ; 3 uses
  %.not.i.i.i.i435 = icmp ne i64 %i.mi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i435)
  %i.mj = shl nuw nsw i64 %i.mi, 2
  %i.mk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mj) #28
          to label %.noexc437 unwind label %.loopexit795 ; 4 uses

.noexc437:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ml = getelementptr inbounds i8, ptr %i.mk, i64 %i.mb ; 2 uses
  store i32 %i.ln, ptr %i.ml, align 4, !tbaa !95
  %i.mm = icmp sgt i64 %i.mb, 0
  br i1 %i.mm, label %bb.db, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.db:                                            ; preds = %.noexc437
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.mk, ptr align 4 %.sroa.0736.01023, i64 %i.mb, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.db, %.noexc437
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0736.01023, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.mn = ptrtoint ptr %.sroa.21.01025 to i64
  %i.mo = sub i64 %i.mn, %i.ma
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0736.01023, i64 noundef %i.mo) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.dc, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.mk, i64 %i.mi
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.cy
  %.sroa.0736.12 = phi ptr [ %i.mk, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.0736.01023, %bb.cy ] ; 7 uses
  %.pn784 = phi ptr [ %i.ml, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.13.01024, %bb.cy ] ; 2 uses
  %.sroa.21.12 = phi ptr [ %i.mp, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.21.01025, %bb.cy ] ; 5 uses
  %.sroa.13.5 = getelementptr inbounds nuw i8, ptr %.pn784, i64 4 ; 2 uses
  %i.mq = load i32, ptr %i.am, align 4, !tbaa !95 ; 2 uses
  %.not.i.i438 = icmp eq ptr %.sroa.13.5, %.sroa.21.12
  br i1 %.not.i.i438, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  store i32 %i.mq, ptr %.sroa.13.5, align 4, !tbaa !95
  %i.mr = getelementptr inbounds nuw i8, ptr %.pn784, i64 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit447

bb.de:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.ms = ptrtoint ptr %.sroa.21.12 to i64
  %i.mt = ptrtoint ptr %.sroa.0736.12 to i64
  %i.mu = sub i64 %i.ms, %i.mt                    ; 6 uses
  %i.mv = icmp eq i64 %i.mu, 9223372036854775804
  br i1 %i.mv, label %bb.df, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i439

bb.df:                                            ; preds = %bb.de
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc445 unwind label %.loopexit.split-lp801

.noexc445:                                        ; preds = %bb.df
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i439: ; preds = %bb.de
  %i.mw = ashr exact i64 %i.mu, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i440 = call i64 @llvm.umax.i64(i64 %i.mw, i64 1)
  %24 = add nsw i64 %.sroa.speculated.i.i.i.i440, %i.mw ; 2 uses
  %i.mx = icmp ult i64 %24, %i.mw
  %i.my = call i64 @llvm.umin.i64(i64 %24, i64 2305843009213693951)
  %i.mz = select i1 %i.mx, i64 2305843009213693951, i64 %i.my ; 3 uses
  %.not.i.i.i.i441 = icmp ne i64 %i.mz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i441)
  %i.na = shl nuw nsw i64 %i.mz, 2
  %i.nb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.na) #28
          to label %.noexc446 unwind label %.loopexit800 ; 4 uses

.noexc446:                                        ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i439
  %i.nc = getelementptr inbounds i8, ptr %i.nb, i64 %i.mu ; 2 uses
  store i32 %i.mq, ptr %i.nc, align 4, !tbaa !95
  %i.nd = icmp sgt i64 %i.mu, 0
  br i1 %i.nd, label %bb.dg, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i442

bb.dg:                                            ; preds = %.noexc446
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.nb, ptr align 4 %.sroa.0736.12, i64 %i.mu, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i442

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i442: ; preds = %bb.dg, %.noexc446
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 4
  %.not.i17.i.i.i443 = icmp eq ptr %.sroa.0736.12, null
  br i1 %.not.i17.i.i.i443, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i444, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i442
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0736.12, i64 noundef %i.mu) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i444

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i444: ; preds = %bb.dh, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i442
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %i.mz
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit447

_ZNSt6vectorIjSaIjEE9push_backEOj.exit447:        ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i444, %bb.dd
  %.sroa.0736.13 = phi ptr [ %i.nb, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i444 ], [ %.sroa.0736.12, %bb.dd ] ; 2 uses
  %.sroa.13.6 = phi ptr [ %i.ne, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i444 ], [ %i.mr, %bb.dd ]
  %.sroa.21.13 = phi ptr [ %i.nf, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i444 ], [ %.sroa.21.12, %bb.dd ] ; 2 uses
  %i.ng = icmp ugt i32 %i.me, 65535
  br i1 %i.ng, label %bb.di, label %bb.dk

bb.di:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit447
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 907, ptr noundef nonnull %0)
          to label %bb.dk unwind label %bb.dj

.loopexit795:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit797 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

.loopexit.split-lp796:                            ; preds = %bb.da
  %lpad.loopexit.split-lp798 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

.loopexit800:                                     ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i439
  %lpad.loopexit802 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

.loopexit.split-lp801:                            ; preds = %bb.df
  %lpad.loopexit.split-lp803 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dj:                                            ; preds = %bb.dk, %bb.di
  %i.nh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dm

bb.dk:                                            ; preds = %bb.di, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit447
  %i.ni = load ptr, ptr %10, align 8, !tbaa !32
  %i.nj = shl i32 %i.me, 16
  invoke void @umutablecptrie_set_78(ptr noundef %i.ni, i32 noundef %.02561026, i32 noundef %i.nj, ptr noundef nonnull %i.c)
          to label %bb.dl unwind label %bb.dj

bb.dl:                                            ; preds = %bb.cr, %bb.cv, %bb.dk, %bb.cl
  %.sroa.0736.2 = phi ptr [ %.sroa.0736.01023, %bb.cv ], [ %.sroa.0736.13, %bb.dk ], [ %.sroa.0736.01023, %bb.cr ], [ %.sroa.0736.01023, %bb.cl ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.01024, %bb.cv ], [ %.sroa.13.6, %bb.dk ], [ %.sroa.13.01024, %bb.cr ], [ %.sroa.13.01024, %bb.cl ]
  %.sroa.21.2 = phi ptr [ %.sroa.21.01025, %bb.cv ], [ %.sroa.21.13, %bb.dk ], [ %.sroa.21.01025, %bb.cr ], [ %.sroa.21.01025, %bb.cl ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.dn

bb.dm:                                            ; preds = %.loopexit800, %.loopexit.split-lp801, %.loopexit795, %.loopexit.split-lp796, %bb.co, %bb.cw, %bb.dj, %bb.cg
  %.sroa.0736.3 = phi ptr [ %.sroa.0736.01023, %bb.cw ], [ %.sroa.0736.01023, %bb.co ], [ %.sroa.0736.01023, %bb.cg ], [ %.sroa.0736.01023, %.loopexit.split-lp796 ], [ %.sroa.0736.13, %bb.dj ], [ %.sroa.0736.01023, %.loopexit795 ], [ %.sroa.0736.12, %.loopexit800 ], [ %.sroa.0736.12, %.loopexit.split-lp801 ]
  %.sroa.21.3 = phi ptr [ %.sroa.21.01025, %bb.cw ], [ %.sroa.21.01025, %bb.co ], [ %.sroa.21.01025, %bb.cg ], [ %.sroa.21.01025, %.loopexit.split-lp796 ], [ %.sroa.21.13, %bb.dj ], [ %.sroa.21.01025, %.loopexit795 ], [ %.sroa.21.12, %.loopexit800 ], [ %.sroa.21.12, %.loopexit.split-lp801 ]
  %.pn316.pn = phi { ptr, i32 } [ %i.ly, %bb.cw ], [ %i.lj, %bb.co ], [ %i.kk, %bb.cg ], [ %lpad.loopexit.split-lp798, %.loopexit.split-lp796 ], [ %i.nh, %bb.dj ], [ %lpad.loopexit797, %.loopexit795 ], [ %lpad.loopexit802, %.loopexit800 ], [ %lpad.loopexit.split-lp803, %.loopexit.split-lp801 ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %16) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.gb

bb.dn:                                            ; preds = %_ZNK6icu_7813UnicodeStringeqERKS0_.exit409.thread, %bb.dl
  %.sroa.0736.4 = phi ptr [ %.sroa.0736.2, %bb.dl ], [ %.sroa.0736.01023, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit409.thread ] ; 31 uses
  %.sroa.13.2 = phi ptr [ %.sroa.13.1, %bb.dl ], [ %.sroa.13.01024, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit409.thread ] ; 11 uses
  %.sroa.21.4 = phi ptr [ %.sroa.21.2, %bb.dl ], [ %.sroa.21.01025, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit409.thread ] ; 31 uses
  br i1 %.0.i, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i32 %.02561026, ptr %8, align 4, !tbaa !95
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  br i1 %.not304, label %bb.dq, label %bb.dx

bb.dq:                                            ; preds = %bb.dp
  br i1 %.old71.not, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 920, ptr noundef nonnull %0)
          to label %bb.ds unwind label %bb.aw

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.nk = load ptr, ptr %i.ai, align 8, !tbaa !98 ; 11 uses
  %i.nl = load ptr, ptr %i.aj, align 8, !tbaa !103
  %.not.i.i448 = icmp eq ptr %i.nk, %i.nl
  br i1 %.not.i.i448, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store i32 %.02561026, ptr %i.nk, align 4, !tbaa !95
  %.sroa.6620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  store i32 -1, ptr %.sroa.6620.0..sroa_idx, align 4, !tbaa !95
  %.sroa.7623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nk, i64 8
  store i8 0, ptr %.sroa.7623.0..sroa_idx, align 4, !tbaa !62
  %.sroa.8626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nk, i64 9
  store i8 0, ptr %.sroa.8626.0..sroa_idx, align 1, !tbaa !62
  %.sroa.9629.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nk, i64 10
  store i8 0, ptr %.sroa.9629.0..sroa_idx, align 2, !tbaa !62
  %.sroa.10635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nk, i64 12
  store i32 0, ptr %.sroa.10635.0..sroa_idx, align 4, !tbaa !95
  %.sroa.11638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  store i32 0, ptr %.sroa.11638.0..sroa_idx, align 4, !tbaa !95
  %i.nm = load ptr, ptr %i.ai, align 8, !tbaa !98
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 20
  store ptr %i.nn, ptr %i.ai, align 8, !tbaa !98
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

bb.du:                                            ; preds = %bb.ds
  %i.no = load ptr, ptr %6, align 8, !tbaa !99    ; 5 uses
  %i.np = ptrtoint ptr %i.nk to i64
  %i.nq = ptrtoint ptr %i.no to i64               ; 2 uses
  %i.nr = sub i64 %i.np, %i.nq                    ; 3 uses
  %i.ns = icmp eq i64 %i.nr, 9223372036854775800
  br i1 %i.ns, label %bb.dv, label %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i449

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc461 unwind label %.loopexit.split-lp826

.noexc461:                                        ; preds = %bb.dv
  unreachable

_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i449: ; preds = %bb.du
  %i.nt = sdiv exact i64 %i.nr, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i450 = call i64 @llvm.umax.i64(i64 %i.nt, i64 1)
  %25 = add nsw i64 %.sroa.speculated.i.i.i.i450, %i.nt ; 2 uses
  %i.nu = icmp ult i64 %25, %i.nt
  %i.nv = call i64 @llvm.umin.i64(i64 %25, i64 461168601842738790)
  %i.nw = select i1 %i.nu, i64 461168601842738790, i64 %i.nv ; 3 uses
  %.not.i.i.i.i451 = icmp ne i64 %i.nw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i451)
  %i.nx = mul nuw nsw i64 %i.nw, 20
  %i.ny = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nx) #28
          to label %.noexc462 unwind label %.loopexit825 ; 5 uses

.noexc462:                                        ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i449
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 %i.nr ; 7 uses
  store i32 %.02561026, ptr %i.nz, align 4, !tbaa !95
  %.sroa.6620.0..sroa_idx621 = getelementptr inbounds nuw i8, ptr %i.nz, i64 4
  store i32 -1, ptr %.sroa.6620.0..sroa_idx621, align 4, !tbaa !95
  %.sroa.7623.0..sroa_idx624 = getelementptr inbounds nuw i8, ptr %i.nz, i64 8
  store i8 0, ptr %.sroa.7623.0..sroa_idx624, align 4, !tbaa !62
  %.sroa.8626.0..sroa_idx627 = getelementptr inbounds nuw i8, ptr %i.nz, i64 9
  store i8 0, ptr %.sroa.8626.0..sroa_idx627, align 1, !tbaa !62
  %.sroa.9629.0..sroa_idx630 = getelementptr inbounds nuw i8, ptr %i.nz, i64 10
  store i8 0, ptr %.sroa.9629.0..sroa_idx630, align 2, !tbaa !62
  %.sroa.10635.0..sroa_idx636 = getelementptr inbounds nuw i8, ptr %i.nz, i64 12
  store i32 0, ptr %.sroa.10635.0..sroa_idx636, align 4, !tbaa !95
  %.sroa.11638.0..sroa_idx639 = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  store i32 0, ptr %.sroa.11638.0..sroa_idx639, align 4, !tbaa !95
  %.not10.i.i.i.i.i.i452 = icmp eq ptr %i.no, %i.nk
  br i1 %.not10.i.i.i.i.i.i452, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i457, label %.lr.ph.i.i.i.i.i.i453

.lr.ph.i.i.i.i.i.i453:                            ; preds = %.noexc462, %.lr.ph.i.i.i.i.i.i453
  %.012.i.i.i.i.i.i454 = phi ptr [ %i.ob, %.lr.ph.i.i.i.i.i.i453 ], [ %i.ny, %.noexc462 ] ; 2 uses
  %.0911.i.i.i.i.i.i455 = phi ptr [ %i.oa, %.lr.ph.i.i.i.i.i.i453 ], [ %i.no, %.noexc462 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i.i454, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i.i455, i64 20, i1 false), !tbaa.struct !104, !alias.scope !173
  %i.oa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i455, i64 20 ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i454, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i456 = icmp eq ptr %i.oa, %i.nk
  br i1 %.not.i.i.i.i.i.i456, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i457, label %.lr.ph.i.i.i.i.i.i453, !llvm.loop !3

_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i457: ; preds = %.lr.ph.i.i.i.i.i.i453, %.noexc462
  %.0.lcssa.i.i.i.i.i.i458 = phi ptr [ %i.ny, %.noexc462 ], [ %i.ob, %.lr.ph.i.i.i.i.i.i453 ]
  %i.oc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i458, i64 20
  %.not.i23.i.i.i459 = icmp eq ptr %i.no, null
  br i1 %.not.i23.i.i.i459, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i460, label %bb.dw

bb.dw:                                            ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i457
  %i.od = load ptr, ptr %i.aj, align 8, !tbaa !103
  %i.oe = ptrtoint ptr %i.od to i64
  %i.of = sub i64 %i.oe, %i.nq
  call void @_ZdlPvm(ptr noundef nonnull %i.no, i64 noundef %i.of) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i460

_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i460: ; preds = %bb.dw, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i457
  store ptr %i.ny, ptr %6, align 8, !tbaa !99
  store ptr %i.oc, ptr %i.ai, align 8, !tbaa !98
  %i.og = getelementptr inbounds nuw [20 x i8], ptr %i.ny, i64 %i.nw
  store ptr %i.og, ptr %i.aj, align 8, !tbaa !103
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

.loopexit825:                                     ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i449
  %lpad.loopexit827 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp826:                            ; preds = %bb.dv
  %lpad.loopexit.split-lp828 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.dx:                                            ; preds = %bb.dp
  %i.oh = icmp eq i32 %i.dz, 1                    ; 3 uses
  %i.oi = load i32, ptr %i.a, align 16            ; 8 uses
  br i1 %i.oh, label %bb.dy, label %.thread760

bb.dy:                                            ; preds = %bb.dx
  %i.oj = add i32 %i.oi, -4449
  %or.cond38 = icmp ult i32 %i.oj, 21
  %i.ok = add i32 %i.oi, -4520
  %or.cond41 = icmp ult i32 %i.ok, 27
  %or.cond352 = or i1 %or.cond38, %or.cond41
  br i1 %or.cond352, label %bb.dz, label %bb.eg

bb.dz:                                            ; preds = %bb.dy
  br i1 %.not301, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 928, ptr noundef nonnull %0)
          to label %._crit_edge1162 unwind label %bb.aw

._crit_edge1162:                                  ; preds = %bb.ea
  %.pre1163 = load i32, ptr %i.a, align 16, !tbaa !95
  br label %bb.eb

bb.eb:                                            ; preds = %._crit_edge1162, %bb.dz
  %i.ol = phi i32 [ %.pre1163, %._crit_edge1162 ], [ %i.oi, %bb.dz ]
  %i.om = select i1 %.0252.not, i32 1073741824, i32 -1073741824
  %i.on = or i32 %i.om, %i.ol                     ; 2 uses
  %i.oo = load ptr, ptr %i.ai, align 8, !tbaa !98 ; 11 uses
  %i.op = load ptr, ptr %i.aj, align 8, !tbaa !103
  %.not.i.i464 = icmp eq ptr %i.oo, %i.op
  br i1 %.not.i.i464, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  store i32 %.02561026, ptr %i.oo, align 4, !tbaa !95
  %.sroa.6597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  store i32 %i.on, ptr %.sroa.6597.0..sroa_idx, align 4, !tbaa !95
  %.sroa.7600.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  store i8 0, ptr %.sroa.7600.0..sroa_idx, align 4, !tbaa !62
  %.sroa.8603.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oo, i64 9
  store i8 0, ptr %.sroa.8603.0..sroa_idx, align 1, !tbaa !62
  %.sroa.9606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oo, i64 10
  store i8 0, ptr %.sroa.9606.0..sroa_idx, align 2, !tbaa !62
  %.sroa.10612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oo, i64 12
  store i32 0, ptr %.sroa.10612.0..sroa_idx, align 4, !tbaa !95
  %.sroa.11615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  store i32 0, ptr %.sroa.11615.0..sroa_idx, align 4, !tbaa !95
  %i.oq = load ptr, ptr %i.ai, align 8, !tbaa !98
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 20
  store ptr %i.or, ptr %i.ai, align 8, !tbaa !98
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

bb.ed:                                            ; preds = %bb.eb
  %i.os = load ptr, ptr %6, align 8, !tbaa !99    ; 5 uses
  %i.ot = ptrtoint ptr %i.oo to i64
  %i.ou = ptrtoint ptr %i.os to i64               ; 2 uses
  %i.ov = sub i64 %i.ot, %i.ou                    ; 3 uses
  %i.ow = icmp eq i64 %i.ov, 9223372036854775800
  br i1 %i.ow, label %bb.ee, label %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i465

bb.ee:                                            ; preds = %bb.ed
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc477 unwind label %.loopexit.split-lp821

.noexc477:                                        ; preds = %bb.ee
  unreachable

_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i465: ; preds = %bb.ed
  %i.ox = sdiv exact i64 %i.ov, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i466 = call i64 @llvm.umax.i64(i64 %i.ox, i64 1)
  %26 = add nsw i64 %.sroa.speculated.i.i.i.i466, %i.ox ; 2 uses
  %i.oy = icmp ult i64 %26, %i.ox
  %i.oz = call i64 @llvm.umin.i64(i64 %26, i64 461168601842738790)
  %i.pa = select i1 %i.oy, i64 461168601842738790, i64 %i.oz ; 3 uses
  %.not.i.i.i.i467 = icmp ne i64 %i.pa, 0
  call void @llvm.assume(i1 %.not.i.i.i.i467)
  %i.pb = mul nuw nsw i64 %i.pa, 20
  %i.pc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pb) #28
          to label %.noexc478 unwind label %.loopexit820 ; 5 uses

.noexc478:                                        ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i465
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 %i.ov ; 7 uses
  store i32 %.02561026, ptr %i.pd, align 4, !tbaa !95
  %.sroa.6597.0..sroa_idx598 = getelementptr inbounds nuw i8, ptr %i.pd, i64 4
  store i32 %i.on, ptr %.sroa.6597.0..sroa_idx598, align 4, !tbaa !95
  %.sroa.7600.0..sroa_idx601 = getelementptr inbounds nuw i8, ptr %i.pd, i64 8
  store i8 0, ptr %.sroa.7600.0..sroa_idx601, align 4, !tbaa !62
  %.sroa.8603.0..sroa_idx604 = getelementptr inbounds nuw i8, ptr %i.pd, i64 9
  store i8 0, ptr %.sroa.8603.0..sroa_idx604, align 1, !tbaa !62
  %.sroa.9606.0..sroa_idx607 = getelementptr inbounds nuw i8, ptr %i.pd, i64 10
  store i8 0, ptr %.sroa.9606.0..sroa_idx607, align 2, !tbaa !62
  %.sroa.10612.0..sroa_idx613 = getelementptr inbounds nuw i8, ptr %i.pd, i64 12
  store i32 0, ptr %.sroa.10612.0..sroa_idx613, align 4, !tbaa !95
  %.sroa.11615.0..sroa_idx616 = getelementptr inbounds nuw i8, ptr %i.pd, i64 16
  store i32 0, ptr %.sroa.11615.0..sroa_idx616, align 4, !tbaa !95
  %.not10.i.i.i.i.i.i468 = icmp eq ptr %i.os, %i.oo
  br i1 %.not10.i.i.i.i.i.i468, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i473, label %.lr.ph.i.i.i.i.i.i469

.lr.ph.i.i.i.i.i.i469:                            ; preds = %.noexc478, %.lr.ph.i.i.i.i.i.i469
  %.012.i.i.i.i.i.i470 = phi ptr [ %i.pf, %.lr.ph.i.i.i.i.i.i469 ], [ %i.pc, %.noexc478 ] ; 2 uses
  %.0911.i.i.i.i.i.i471 = phi ptr [ %i.pe, %.lr.ph.i.i.i.i.i.i469 ], [ %i.os, %.noexc478 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i.i470, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i.i471, i64 20, i1 false), !tbaa.struct !104, !alias.scope !174
  %i.pe = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i471, i64 20 ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i470, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i472 = icmp eq ptr %i.pe, %i.oo
  br i1 %.not.i.i.i.i.i.i472, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i473, label %.lr.ph.i.i.i.i.i.i469, !llvm.loop !3

_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i473: ; preds = %.lr.ph.i.i.i.i.i.i469, %.noexc478
  %.0.lcssa.i.i.i.i.i.i474 = phi ptr [ %i.pc, %.noexc478 ], [ %i.pf, %.lr.ph.i.i.i.i.i.i469 ]
  %i.pg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i474, i64 20
  %.not.i23.i.i.i475 = icmp eq ptr %i.os, null
  br i1 %.not.i23.i.i.i475, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i476, label %bb.ef

bb.ef:                                            ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i473
  %i.ph = load ptr, ptr %i.aj, align 8, !tbaa !103
  %i.pi = ptrtoint ptr %i.ph to i64
  %i.pj = sub i64 %i.pi, %i.ou
  call void @_ZdlPvm(ptr noundef nonnull %i.os, i64 noundef %i.pj) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i476

_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i476: ; preds = %bb.ef, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i473
  store ptr %i.pc, ptr %6, align 8, !tbaa !99
  store ptr %i.pg, ptr %i.ai, align 8, !tbaa !98
  %i.pk = getelementptr inbounds nuw [20 x i8], ptr %i.pc, i64 %i.pa
  store ptr %i.pk, ptr %i.aj, align 8, !tbaa !103
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

.loopexit820:                                     ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i465
  %lpad.loopexit822 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp821:                            ; preds = %bb.ee
  %lpad.loopexit.split-lp823 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.eg:                                            ; preds = %bb.dy
  %i.pl = icmp slt i32 %i.oi, 65536
  %or.cond46 = and i1 %.0252.not, %i.pl
  br i1 %or.cond46, label %bb.eh, label %.thread760

bb.eh:                                            ; preds = %bb.eg
  %i.pm = or i32 %i.oi, 1073741824                ; 2 uses
  %i.pn = load ptr, ptr %i.ai, align 8, !tbaa !98 ; 11 uses
  %i.po = load ptr, ptr %i.aj, align 8, !tbaa !103
  %.not.i.i480 = icmp eq ptr %i.pn, %i.po
  br i1 %.not.i.i480, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  store i32 %.02561026, ptr %i.pn, align 4, !tbaa !95
  %.sroa.6574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  store i32 %i.pm, ptr %.sroa.6574.0..sroa_idx, align 4, !tbaa !95
  %.sroa.7577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pn, i64 8
  store i8 0, ptr %.sroa.7577.0..sroa_idx, align 4, !tbaa !62
  %.sroa.8580.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pn, i64 9
  store i8 0, ptr %.sroa.8580.0..sroa_idx, align 1, !tbaa !62
  %.sroa.9583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pn, i64 10
  store i8 0, ptr %.sroa.9583.0..sroa_idx, align 2, !tbaa !62
  %.sroa.10589.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pn, i64 12
  store i32 0, ptr %.sroa.10589.0..sroa_idx, align 4, !tbaa !95
  %.sroa.11592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  store i32 0, ptr %.sroa.11592.0..sroa_idx, align 4, !tbaa !95
  %i.pp = load ptr, ptr %i.ai, align 8, !tbaa !98
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 20
  store ptr %i.pq, ptr %i.ai, align 8, !tbaa !98
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

bb.ej:                                            ; preds = %bb.eh
  %i.pr = load ptr, ptr %6, align 8, !tbaa !99    ; 5 uses
  %i.ps = ptrtoint ptr %i.pn to i64
  %i.pt = ptrtoint ptr %i.pr to i64               ; 2 uses
  %i.pu = sub i64 %i.ps, %i.pt                    ; 3 uses
  %i.pv = icmp eq i64 %i.pu, 9223372036854775800
  br i1 %i.pv, label %bb.ek, label %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i481

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc493 unwind label %.loopexit.split-lp816

.noexc493:                                        ; preds = %bb.ek
  unreachable

_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i481: ; preds = %bb.ej
  %i.pw = sdiv exact i64 %i.pu, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i482 = call i64 @llvm.umax.i64(i64 %i.pw, i64 1)
  %27 = add nsw i64 %.sroa.speculated.i.i.i.i482, %i.pw ; 2 uses
  %i.px = icmp ult i64 %27, %i.pw
  %i.py = call i64 @llvm.umin.i64(i64 %27, i64 461168601842738790)
  %i.pz = select i1 %i.px, i64 461168601842738790, i64 %i.py ; 3 uses
  %.not.i.i.i.i483 = icmp ne i64 %i.pz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i483)
  %i.qa = mul nuw nsw i64 %i.pz, 20
  %i.qb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qa) #28
          to label %.noexc494 unwind label %.loopexit815 ; 5 uses

.noexc494:                                        ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i481
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 %i.pu ; 7 uses
  store i32 %.02561026, ptr %i.qc, align 4, !tbaa !95
  %.sroa.6574.0..sroa_idx575 = getelementptr inbounds nuw i8, ptr %i.qc, i64 4
  store i32 %i.pm, ptr %.sroa.6574.0..sroa_idx575, align 4, !tbaa !95
  %.sroa.7577.0..sroa_idx578 = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store i8 0, ptr %.sroa.7577.0..sroa_idx578, align 4, !tbaa !62
  %.sroa.8580.0..sroa_idx581 = getelementptr inbounds nuw i8, ptr %i.qc, i64 9
  store i8 0, ptr %.sroa.8580.0..sroa_idx581, align 1, !tbaa !62
  %.sroa.9583.0..sroa_idx584 = getelementptr inbounds nuw i8, ptr %i.qc, i64 10
  store i8 0, ptr %.sroa.9583.0..sroa_idx584, align 2, !tbaa !62
  %.sroa.10589.0..sroa_idx590 = getelementptr inbounds nuw i8, ptr %i.qc, i64 12
  store i32 0, ptr %.sroa.10589.0..sroa_idx590, align 4, !tbaa !95
  %.sroa.11592.0..sroa_idx593 = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  store i32 0, ptr %.sroa.11592.0..sroa_idx593, align 4, !tbaa !95
  %.not10.i.i.i.i.i.i484 = icmp eq ptr %i.pr, %i.pn
  br i1 %.not10.i.i.i.i.i.i484, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i489, label %.lr.ph.i.i.i.i.i.i485

.lr.ph.i.i.i.i.i.i485:                            ; preds = %.noexc494, %.lr.ph.i.i.i.i.i.i485
  %.012.i.i.i.i.i.i486 = phi ptr [ %i.qe, %.lr.ph.i.i.i.i.i.i485 ], [ %i.qb, %.noexc494 ] ; 2 uses
  %.0911.i.i.i.i.i.i487 = phi ptr [ %i.qd, %.lr.ph.i.i.i.i.i.i485 ], [ %i.pr, %.noexc494 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i.i486, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i.i487, i64 20, i1 false), !tbaa.struct !104, !alias.scope !175
  %i.qd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i487, i64 20 ; 2 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i486, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i488 = icmp eq ptr %i.qd, %i.pn
  br i1 %.not.i.i.i.i.i.i488, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i489, label %.lr.ph.i.i.i.i.i.i485, !llvm.loop !3

_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i489: ; preds = %.lr.ph.i.i.i.i.i.i485, %.noexc494
  %.0.lcssa.i.i.i.i.i.i490 = phi ptr [ %i.qb, %.noexc494 ], [ %i.qe, %.lr.ph.i.i.i.i.i.i485 ]
  %i.qf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i490, i64 20
  %.not.i23.i.i.i491 = icmp eq ptr %i.pr, null
  br i1 %.not.i23.i.i.i491, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i492, label %bb.el

bb.el:                                            ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i489
  %i.qg = load ptr, ptr %i.aj, align 8, !tbaa !103
  %i.qh = ptrtoint ptr %i.qg to i64
  %i.qi = sub i64 %i.qh, %i.pt
  call void @_ZdlPvm(ptr noundef nonnull %i.pr, i64 noundef %i.qi) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i492

_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i492: ; preds = %bb.el, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i489
  store ptr %i.qb, ptr %6, align 8, !tbaa !99
  store ptr %i.qf, ptr %i.ai, align 8, !tbaa !98
  %i.qj = getelementptr inbounds nuw [20 x i8], ptr %i.qb, i64 %i.pz
  store ptr %i.qj, ptr %i.aj, align 8, !tbaa !103
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

.loopexit815:                                     ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i481
  %lpad.loopexit817 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp816:                            ; preds = %bb.ek
  %lpad.loopexit.split-lp818 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.thread760:                                       ; preds = %bb.dx, %bb.eg
  %i.qk = icmp eq i32 %i.dz, 2
  %i.ql = and i1 %.not311, %i.qk
  %or.cond50 = and i1 %i.ql, %.0252.not
  %i.qm = icmp slt i32 %i.oi, 32768
  %or.cond53 = select i1 %or.cond50, i1 %i.qm, i1 false
  %i.qn = load i32, ptr %i.an, align 4            ; 2 uses
  %i.qo = icmp slt i32 %i.qn, 32768
  %or.cond56 = select i1 %or.cond53, i1 %i.qo, i1 false
  %i.qp = icmp sgt i32 %i.oi, 31
  %or.cond59 = select i1 %or.cond56, i1 %i.qp, i1 false
  %i.qq = icmp sgt i32 %i.qn, 31
  %or.cond62 = select i1 %or.cond59, i1 %i.qq, i1 false
  br i1 %or.cond62, label %bb.em, label %bb.fb

bb.em:                                            ; preds = %.thread760
  %i.qr = invoke zeroext i8 @u_getCombiningClass_78(i32 noundef %i.oi)
          to label %bb.en unwind label %bb.aw

bb.en:                                            ; preds = %bb.em
  %.not = icmp eq i8 %i.qr, 0
  br i1 %.not, label %bb.eo, label %bb.fb

bb.eo:                                            ; preds = %bb.en
  %i.qs = load i32, ptr %i.an, align 4, !tbaa !95
  %i.qt = invoke zeroext i8 @u_getCombiningClass_78(i32 noundef %i.qs)
          to label %bb.ep unwind label %bb.aw

bb.ep:                                            ; preds = %bb.eo
  %.not323 = icmp eq i8 %i.qt, 0
  br i1 %.not323, label %bb.fb, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ep
  %i.qu = load i32, ptr %i.a, align 16, !tbaa !95 ; 2 uses
  %i.qv = icmp eq i32 %i.qu, 837
  br i1 %i.qv, label %bb.eu, label %bb.ev

bb.eq:                                            ; preds = %.thread763.1
  store i32 %.02561026, ptr %i.sg, align 4, !tbaa !95
  %.sroa.6551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sg, i64 4
  store i32 %i.sf, ptr %.sroa.6551.0..sroa_idx, align 4, !tbaa !95
  %.sroa.7554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  store i8 0, ptr %.sroa.7554.0..sroa_idx, align 4, !tbaa !62
  %.sroa.8557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sg, i64 9
  store i8 0, ptr %.sroa.8557.0..sroa_idx, align 1, !tbaa !62
  %.sroa.9560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sg, i64 10
  store i8 0, ptr %.sroa.9560.0..sroa_idx, align 2, !tbaa !62
  %.sroa.10566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sg, i64 12
  store i32 0, ptr %.sroa.10566.0..sroa_idx, align 4, !tbaa !95
  %.sroa.11569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sg, i64 16
  store i32 0, ptr %.sroa.11569.0..sroa_idx, align 4, !tbaa !95
  %i.qw = load ptr, ptr %i.ai, align 8, !tbaa !98
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 20
  store ptr %i.qx, ptr %i.ai, align 8, !tbaa !98
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

bb.er:                                            ; preds = %.thread763.1
  %i.qy = load ptr, ptr %6, align 8, !tbaa !99    ; 5 uses
  %i.qz = ptrtoint ptr %i.sg to i64
  %i.ra = ptrtoint ptr %i.qy to i64               ; 2 uses
  %i.rb = sub i64 %i.qz, %i.ra                    ; 3 uses
  %i.rc = icmp eq i64 %i.rb, 9223372036854775800
  br i1 %i.rc, label %bb.es, label %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i497

bb.es:                                            ; preds = %bb.er
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc509 unwind label %.loopexit.split-lp806

.noexc509:                                        ; preds = %bb.es
  unreachable

_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i497: ; preds = %bb.er
  %i.rd = sdiv exact i64 %i.rb, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i498 = call i64 @llvm.umax.i64(i64 %i.rd, i64 1)
  %28 = add nsw i64 %.sroa.speculated.i.i.i.i498, %i.rd ; 2 uses
  %i.re = icmp ult i64 %28, %i.rd
  %i.rf = call i64 @llvm.umin.i64(i64 %28, i64 461168601842738790)
  %i.rg = select i1 %i.re, i64 461168601842738790, i64 %i.rf ; 3 uses
  %.not.i.i.i.i499 = icmp ne i64 %i.rg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i499)
  %i.rh = mul nuw nsw i64 %i.rg, 20
  %i.ri = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rh) #28
          to label %.noexc510 unwind label %.loopexit805 ; 5 uses

.noexc510:                                        ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i497
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 %i.rb ; 7 uses
  store i32 %.02561026, ptr %i.rj, align 4, !tbaa !95
  %.sroa.6551.0..sroa_idx552 = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  store i32 %i.sf, ptr %.sroa.6551.0..sroa_idx552, align 4, !tbaa !95
  %.sroa.7554.0..sroa_idx555 = getelementptr inbounds nuw i8, ptr %i.rj, i64 8
  store i8 0, ptr %.sroa.7554.0..sroa_idx555, align 4, !tbaa !62
  %.sroa.8557.0..sroa_idx558 = getelementptr inbounds nuw i8, ptr %i.rj, i64 9
  store i8 0, ptr %.sroa.8557.0..sroa_idx558, align 1, !tbaa !62
  %.sroa.9560.0..sroa_idx561 = getelementptr inbounds nuw i8, ptr %i.rj, i64 10
  store i8 0, ptr %.sroa.9560.0..sroa_idx561, align 2, !tbaa !62
  %.sroa.10566.0..sroa_idx567 = getelementptr inbounds nuw i8, ptr %i.rj, i64 12
  store i32 0, ptr %.sroa.10566.0..sroa_idx567, align 4, !tbaa !95
  %.sroa.11569.0..sroa_idx570 = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  store i32 0, ptr %.sroa.11569.0..sroa_idx570, align 4, !tbaa !95
  %.not10.i.i.i.i.i.i500 = icmp eq ptr %i.qy, %i.sg
  br i1 %.not10.i.i.i.i.i.i500, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i505, label %.lr.ph.i.i.i.i.i.i501

.lr.ph.i.i.i.i.i.i501:                            ; preds = %.noexc510, %.lr.ph.i.i.i.i.i.i501
  %.012.i.i.i.i.i.i502 = phi ptr [ %i.rl, %.lr.ph.i.i.i.i.i.i501 ], [ %i.ri, %.noexc510 ] ; 2 uses
  %.0911.i.i.i.i.i.i503 = phi ptr [ %i.rk, %.lr.ph.i.i.i.i.i.i501 ], [ %i.qy, %.noexc510 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i.i502, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i.i503, i64 20, i1 false), !tbaa.struct !104, !alias.scope !176
  %i.rk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i503, i64 20 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i502, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i504 = icmp eq ptr %i.rk, %i.sg
  br i1 %.not.i.i.i.i.i.i504, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i505, label %.lr.ph.i.i.i.i.i.i501, !llvm.loop !3

_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i505: ; preds = %.lr.ph.i.i.i.i.i.i501, %.noexc510
  %.0.lcssa.i.i.i.i.i.i506 = phi ptr [ %i.ri, %.noexc510 ], [ %i.rl, %.lr.ph.i.i.i.i.i.i501 ]
  %i.rm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i506, i64 20
  %.not.i23.i.i.i507 = icmp eq ptr %i.qy, null
  br i1 %.not.i23.i.i.i507, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i508, label %bb.et

bb.et:                                            ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i505
  %i.rn = load ptr, ptr %i.aj, align 8, !tbaa !103
  %i.ro = ptrtoint ptr %i.rn to i64
  %i.rp = sub i64 %i.ro, %i.ra
  call void @_ZdlPvm(ptr noundef nonnull %i.qy, i64 noundef %i.rp) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i508

_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i508: ; preds = %bb.et, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i505
  store ptr %i.ri, ptr %6, align 8, !tbaa !99
  store ptr %i.rm, ptr %i.ai, align 8, !tbaa !98
  %i.rq = getelementptr inbounds nuw [20 x i8], ptr %i.ri, i64 %i.rg
  store ptr %i.rq, ptr %i.aj, align 8, !tbaa !103
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

bb.eu:                                            ; preds = %.preheader.preheader
  %i.rr = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.52) #30
  %i.rs = icmp eq i32 %i.rr, 0
  br i1 %i.rs, label %bb.ew, label %.thread763

bb.ev:                                            ; preds = %.preheader.preheader
  %i.rt = and i32 %i.qu, -2
  %switch = icmp eq i32 %i.rt, 65438
  br i1 %switch, label %bb.ew, label %.thread763

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 947, ptr noundef nonnull %0)
          to label %.thread763 unwind label %bb.ex

bb.ex:                                            ; preds = %bb.fa, %bb.ew
  %i.ru = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.thread763:                                       ; preds = %bb.eu, %bb.ev, %bb.ew
  %i.rv = load i32, ptr %i.an, align 4, !tbaa !95 ; 3 uses
  %i.rw = icmp eq i32 %i.rv, 837
  br i1 %i.rw, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %.thread763
  %i.rx = and i32 %i.rv, -2
  %switch.1 = icmp eq i32 %i.rx, 65438
  br i1 %switch.1, label %bb.fa, label %.thread763.1

bb.ez:                                            ; preds = %.thread763
  %i.ry = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.52) #30
  %i.rz = icmp eq i32 %i.ry, 0
  br i1 %i.rz, label %bb.fa, label %.thread763.1

bb.fa:                                            ; preds = %bb.ez, %bb.ey
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 947, ptr noundef nonnull %0)
          to label %..thread763.1_crit_edge unwind label %bb.ex

..thread763.1_crit_edge:                          ; preds = %bb.fa
  %.pre1158 = load i32, ptr %i.an, align 4, !tbaa !95
  br label %.thread763.1

.thread763.1:                                     ; preds = %..thread763.1_crit_edge, %bb.ez, %bb.ey
  %i.sa = phi i32 [ %.pre1158, %..thread763.1_crit_edge ], [ 837, %bb.ez ], [ %i.rv, %bb.ey ]
  %i.sb = load i32, ptr %i.a, align 16, !tbaa !95
  %i.sc = shl i32 %i.sa, 15
  %i.sd = select i1 %.0.i, i32 0, i32 1073741824
  %i.se = or i32 %i.sb, %i.sd
  %i.sf = or i32 %i.se, %i.sc                     ; 2 uses
  %i.sg = load ptr, ptr %i.ai, align 8, !tbaa !98 ; 11 uses
  %i.sh = load ptr, ptr %i.aj, align 8, !tbaa !103
  %.not.i.i496 = icmp eq ptr %i.sg, %i.sh
  br i1 %.not.i.i496, label %bb.er, label %bb.eq

.loopexit805:                                     ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i497
  %lpad.loopexit807 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp806:                            ; preds = %bb.es
  %lpad.loopexit.split-lp808 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.fb:                                            ; preds = %bb.ep, %bb.en, %.thread760
  %i.si = icmp sgt i32 %i.dz, 0
  br i1 %i.si, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.fb
  %wide.trip.count = zext nneg i32 %i.dz to i64
  %i.sj = load i32, ptr %i.a, align 16, !tbaa !95 ; 3 uses
  %i.sk = icmp eq i32 %i.sj, 837
  br i1 %i.sk, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %.lr.ph.preheader
  %i.sl = and i32 %i.sj, -2
  %switch358.peel = icmp eq i32 %i.sl, 65438
  br i1 %switch358.peel, label %bb.fe, label %thread-pre-split.peel

bb.fd:                                            ; preds = %.lr.ph.preheader
  %i.sm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.52) #30
  %i.sn = icmp eq i32 %i.sm, 0
  br i1 %i.sn, label %bb.fe, label %thread-pre-split.peel.thread

bb.fe:                                            ; preds = %bb.fd, %bb.fc
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 959, ptr noundef nonnull %0)
          to label %.thread-pre-split.peel_crit_edge unwind label %.loopexit.split-lp1151

.thread-pre-split.peel_crit_edge:                 ; preds = %bb.fe
  %.pr.peel.pre = load i32, ptr %i.a, align 16, !tbaa !95
  br label %thread-pre-split.peel

thread-pre-split.peel:                            ; preds = %.thread-pre-split.peel_crit_edge, %bb.fc
  %i.so = phi i32 [ %i.sj, %bb.fc ], [ %.pr.peel.pre, %.thread-pre-split.peel_crit_edge ] ; 2 uses
  %i.sp = icmp sgt i32 %i.so, 65535               ; 2 uses
  %i.sq = icmp eq i32 %i.so, 0
  br i1 %i.sq, label %bb.ff, label %thread-pre-split.peel.thread

bb.ff:                                            ; preds = %thread-pre-split.peel
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 967, ptr noundef nonnull %0)
          to label %thread-pre-split.peel.thread unwind label %.loopexit.split-lp1151

thread-pre-split.peel.thread:                     ; preds = %bb.fd, %thread-pre-split.peel, %bb.ff
  %spec.select353.peel1233.shrunk = phi i1 [ %i.sp, %thread-pre-split.peel ], [ %i.sp, %bb.ff ], [ false, %bb.fd ]
  %exitcond.peel.not = icmp eq i32 %i.dz, 1
  br i1 %exitcond.peel.not, label %.thread1244, label %.lr.ph.preheader1374

.lr.ph.preheader1374:                             ; preds = %thread-pre-split.peel.thread
  %spec.select353.peel1233 = zext i1 %spec.select353.peel1233.shrunk to i8
  br label %.lr.ph

._crit_edge.loopexit.loopexit:                    ; preds = %bb.fk
  %i.sr = xor i8 %spec.select354, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.loopexit, %bb.fb
  %.0249.lcssa = phi i8 [ 0, %bb.fb ], [ %i.tb, %._crit_edge.loopexit.loopexit ]
  %.0248.lcssa = phi i8 [ 1, %bb.fb ], [ %i.sr, %._crit_edge.loopexit.loopexit ] ; 3 uses
  %spec.select = select i1 %i.oh, i8 1, i8 %.0249.lcssa ; 3 uses
  %.not324 = icmp eq i8 %spec.select, 0
  br i1 %.not324, label %bb.fl, label %bb.fs

.lr.ph:                                           ; preds = %.lr.ph.preheader1374, %bb.fk
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.fk ], [ 1, %.lr.ph.preheader1374 ] ; 2 uses
  %.02481020 = phi i8 [ %spec.select354, %bb.fk ], [ 0, %.lr.ph.preheader1374 ]
  %.02491019 = phi i8 [ %i.tb, %bb.fk ], [ %spec.select353.peel1233, %.lr.ph.preheader1374 ] ; 2 uses
  %i.ss = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.st = load i32, ptr %i.ss, align 4, !tbaa !95 ; 3 uses
  %i.su = icmp eq i32 %i.st, 837
  br i1 %i.su, label %bb.fg, label %bb.fh

bb.fg:                                            ; preds = %.lr.ph
  %i.sv = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.52) #30
  %i.sw = icmp eq i32 %i.sv, 0
  br i1 %i.sw, label %bb.fi, label %.thread1243

bb.fh:                                            ; preds = %.lr.ph
  %i.sx = and i32 %i.st, -2
  %switch358 = icmp eq i32 %i.sx, 65438
  br i1 %switch358, label %bb.fi, label %thread-pre-split

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 959, ptr noundef nonnull %0)
          to label %.thread-pre-split_crit_edge unwind label %.loopexit1150

.thread-pre-split_crit_edge:                      ; preds = %bb.fi
  %.pr.pre = load i32, ptr %i.ss, align 4, !tbaa !95
  br label %thread-pre-split

.loopexit1150:                                    ; preds = %bb.fi, %bb.fj, %.thread1243
  %lpad.loopexit1154 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp1151:                           ; preds = %bb.fe, %bb.ff
  %lpad.loopexit.split-lp1155 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

thread-pre-split:                                 ; preds = %.thread-pre-split_crit_edge, %bb.fh
  %i.sy = phi i32 [ %i.st, %bb.fh ], [ %.pr.pre, %.thread-pre-split_crit_edge ]
  %.fr = freeze i32 %i.sy                         ; 2 uses
  %i.sz = icmp sgt i32 %.fr, 65535
  %spec.select1372 = select i1 %i.sz, i8 1, i8 %.02491019 ; 2 uses
  %i.ta = icmp eq i32 %.fr, 0
  br i1 %i.ta, label %bb.fj, label %.thread1243

bb.fj:                                            ; preds = %thread-pre-split
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 967, ptr noundef nonnull %0)
          to label %.thread1243 unwind label %.loopexit1150

.thread1243:                                      ; preds = %bb.fg, %thread-pre-split, %bb.fj
  %i.tb = phi i8 [ %spec.select1372, %thread-pre-split ], [ %spec.select1372, %bb.fj ], [ %.02491019, %bb.fg ] ; 2 uses
  %i.tc = load i32, ptr %i.ss, align 4, !tbaa !95
  %i.td = invoke zeroext i8 @u_getCombiningClass_78(i32 noundef %i.tc)
          to label %bb.fk unwind label %.loopexit1150

bb.fk:                                            ; preds = %.thread1243
  %.not331 = icmp eq i8 %i.td, 0
  %spec.select354 = select i1 %.not331, i8 1, i8 %.02481020 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit.loopexit, label %.lr.ph, !llvm.loop !164

bb.fl:                                            ; preds = %._crit_edge
  %i.te = icmp sgt i32 %i.dz, 9
  %or.cond66 = or i1 %i.te, %i.oh
  br i1 %or.cond66, label %bb.fm, label %bb.fu

bb.fm:                                            ; preds = %bb.fl
  %i.tf = icmp eq i32 %i.dz, 18
  %i.tg = icmp eq i32 %.02561026, 65018
  %or.cond68 = and i1 %i.tg, %i.tf
  br i1 %or.cond68, label %bb.fn, label %bb.fq

bb.fn:                                            ; preds = %bb.fm
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  store i32 65018, ptr %17, align 4, !tbaa !88
  store i32 1073741825, ptr %i.ao, align 4, !tbaa !89
  store i8 0, ptr %i.ap, align 4, !tbaa !90
  store i8 0, ptr %i.aq, align 1, !tbaa !91
  store i8 0, ptr %i.ar, align 2, !tbaa !92
  store i32 0, ptr %i.as, align 4, !tbaa !93
  store i32 0, ptr %i.at, align 4, !tbaa !94
  invoke void @_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 4 dereferenceable(20) %17)
          to label %bb.fo unwind label %bb.fp

bb.fo:                                            ; preds = %bb.fn
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

bb.fp:                                            ; preds = %bb.fn
  %i.th = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  br label %bb.gb

bb.fq:                                            ; preds = %bb.fm
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 992, ptr noundef nonnull %0)
          to label %bb.fu unwind label %bb.fr

bb.fr:                                            ; preds = %bb.ft, %bb.fq
  %i.ti = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

bb.fs:                                            ; preds = %._crit_edge
  %i.tj = icmp slt i32 %i.dz, 9
  br i1 %i.tj, label %.thread1244, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  store i32 5, ptr %i.c, align 8, !tbaa !17
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 1000, ptr noundef nonnull %0)
          to label %.thread1244 unwind label %bb.fr

bb.fu:                                            ; preds = %bb.fl, %bb.fq
  %i.tk = sext i32 %i.dz to i64
  %i.tl = invoke noundef i64 @_Z12findOrAppendItEmRSt6vectorIT_SaIS1_EEPKim(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.a, i64 noundef %i.tk)
          to label %bb.fw unwind label %bb.fv

bb.fv:                                            ; preds = %.thread1244, %bb.fu
  %i.tm = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.thread1244:                                      ; preds = %thread-pre-split.peel.thread, %bb.ft, %bb.fs
  %.0248.lcssa12391248 = phi i8 [ %.0248.lcssa, %bb.fs ], [ %.0248.lcssa, %bb.ft ], [ 1, %thread-pre-split.peel.thread ]
  %spec.select12411247 = phi i8 [ %spec.select, %bb.fs ], [ %spec.select, %bb.ft ], [ 1, %thread-pre-split.peel.thread ]
  %i.tn = sext i32 %i.dz to i64
  %i.to = invoke noundef i64 @_Z12findOrAppendIjEmRSt6vectorIT_SaIS1_EEPKim(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %i.a, i64 noundef %i.tn)
          to label %bb.fw unwind label %bb.fv

bb.fw:                                            ; preds = %.thread1244, %bb.fu
  %spec.select1240 = phi i8 [ 0, %bb.fu ], [ %spec.select12411247, %.thread1244 ] ; 2 uses
  %.0248.lcssa1238 = phi i8 [ %.0248.lcssa, %bb.fu ], [ %.0248.lcssa12391248, %.thread1244 ] ; 2 uses
  %.0 = phi i64 [ %i.tl, %bb.fu ], [ %i.to, %.thread1244 ]
  %i.tp = select i1 %.0252.not, i32 0, i32 -2147483648
  %i.tq = select i1 %.0.i, i32 0, i32 1073741824
  %i.tr = or disjoint i32 %i.tp, %i.tq            ; 2 uses
  %i.ts = trunc i64 %.0 to i32                    ; 2 uses
  %i.tt = load ptr, ptr %i.ai, align 8, !tbaa !98 ; 11 uses
  %i.tu = load ptr, ptr %i.aj, align 8, !tbaa !103
  %.not.i.i512 = icmp eq ptr %i.tt, %i.tu
  br i1 %.not.i.i512, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  store i32 %.02561026, ptr %i.tt, align 4, !tbaa !95
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 4
  store i32 %i.tr, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !95
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 8
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !62
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 9
  store i8 %spec.select1240, ptr %.sroa.8.0..sroa_idx, align 1, !tbaa !62
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 10
  store i8 %.0248.lcssa1238, ptr %.sroa.9.0..sroa_idx, align 2, !tbaa !62
  %.sroa.10544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 12
  store i32 %i.dz, ptr %.sroa.10544.0..sroa_idx, align 4, !tbaa !95
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.tt, i64 16
  store i32 %i.ts, ptr %.sroa.11.0..sroa_idx, align 4, !tbaa !95
  %i.tv = load ptr, ptr %i.ai, align 8, !tbaa !98
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 20
  store ptr %i.tw, ptr %i.ai, align 8, !tbaa !98
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

bb.fy:                                            ; preds = %bb.fw
  %i.tx = load ptr, ptr %6, align 8, !tbaa !99    ; 5 uses
  %i.ty = ptrtoint ptr %i.tt to i64
  %i.tz = ptrtoint ptr %i.tx to i64               ; 2 uses
  %i.ua = sub i64 %i.ty, %i.tz                    ; 3 uses
  %i.ub = icmp eq i64 %i.ua, 9223372036854775800
  br i1 %i.ub, label %bb.fz, label %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i513

bb.fz:                                            ; preds = %bb.fy
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc525 unwind label %.loopexit.split-lp811

.noexc525:                                        ; preds = %bb.fz
  unreachable

_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i513: ; preds = %bb.fy
  %i.uc = sdiv exact i64 %i.ua, 20                ; 3 uses
  %.sroa.speculated.i.i.i.i514 = call i64 @llvm.umax.i64(i64 %i.uc, i64 1)
  %29 = add nsw i64 %.sroa.speculated.i.i.i.i514, %i.uc ; 2 uses
  %i.ud = icmp ult i64 %29, %i.uc
  %i.ue = call i64 @llvm.umin.i64(i64 %29, i64 461168601842738790)
  %i.uf = select i1 %i.ud, i64 461168601842738790, i64 %i.ue ; 3 uses
  %.not.i.i.i.i515 = icmp ne i64 %i.uf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i515)
  %i.ug = mul nuw nsw i64 %i.uf, 20
  %i.uh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ug) #28
          to label %.noexc526 unwind label %.loopexit810 ; 5 uses

.noexc526:                                        ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i513
  %i.ui = getelementptr inbounds nuw i8, ptr %i.uh, i64 %i.ua ; 7 uses
  store i32 %.02561026, ptr %i.ui, align 4, !tbaa !95
  %.sroa.6.0..sroa_idx534 = getelementptr inbounds nuw i8, ptr %i.ui, i64 4
  store i32 %i.tr, ptr %.sroa.6.0..sroa_idx534, align 4, !tbaa !95
  %.sroa.7.0..sroa_idx536 = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  store i8 1, ptr %.sroa.7.0..sroa_idx536, align 4, !tbaa !62
  %.sroa.8.0..sroa_idx538 = getelementptr inbounds nuw i8, ptr %i.ui, i64 9
  store i8 %spec.select1240, ptr %.sroa.8.0..sroa_idx538, align 1, !tbaa !62
  %.sroa.9.0..sroa_idx540 = getelementptr inbounds nuw i8, ptr %i.ui, i64 10
  store i8 %.0248.lcssa1238, ptr %.sroa.9.0..sroa_idx540, align 2, !tbaa !62
  %.sroa.10544.0..sroa_idx545 = getelementptr inbounds nuw i8, ptr %i.ui, i64 12
  store i32 %i.dz, ptr %.sroa.10544.0..sroa_idx545, align 4, !tbaa !95
  %.sroa.11.0..sroa_idx547 = getelementptr inbounds nuw i8, ptr %i.ui, i64 16
  store i32 %i.ts, ptr %.sroa.11.0..sroa_idx547, align 4, !tbaa !95
  %.not10.i.i.i.i.i.i516 = icmp eq ptr %i.tx, %i.tt
  br i1 %.not10.i.i.i.i.i.i516, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i521, label %.lr.ph.i.i.i.i.i.i517

.lr.ph.i.i.i.i.i.i517:                            ; preds = %.noexc526, %.lr.ph.i.i.i.i.i.i517
  %.012.i.i.i.i.i.i518 = phi ptr [ %i.uk, %.lr.ph.i.i.i.i.i.i517 ], [ %i.uh, %.noexc526 ] ; 2 uses
  %.0911.i.i.i.i.i.i519 = phi ptr [ %i.uj, %.lr.ph.i.i.i.i.i.i517 ], [ %i.tx, %.noexc526 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i.i518, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i.i519, i64 20, i1 false), !tbaa.struct !104, !alias.scope !177
  %i.uj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i519, i64 20 ; 2 uses
  %i.uk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i518, i64 20 ; 2 uses
  %.not.i.i.i.i.i.i520 = icmp eq ptr %i.uj, %i.tt
  br i1 %.not.i.i.i.i.i.i520, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i521, label %.lr.ph.i.i.i.i.i.i517, !llvm.loop !3

_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i521: ; preds = %.lr.ph.i.i.i.i.i.i517, %.noexc526
  %.0.lcssa.i.i.i.i.i.i522 = phi ptr [ %i.uh, %.noexc526 ], [ %i.uk, %.lr.ph.i.i.i.i.i.i517 ]
  %i.ul = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i522, i64 20
  %.not.i23.i.i.i523 = icmp eq ptr %i.tx, null
  br i1 %.not.i23.i.i.i523, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i524, label %bb.ga

bb.ga:                                            ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i521
  %i.um = load ptr, ptr %i.aj, align 8, !tbaa !103
  %i.un = ptrtoint ptr %i.um to i64
  %i.uo = sub i64 %i.un, %i.tz
  call void @_ZdlPvm(ptr noundef nonnull %i.tx, i64 noundef %i.uo) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i524

_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i524: ; preds = %bb.ga, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i.i521
  store ptr %i.uh, ptr %6, align 8, !tbaa !99
  store ptr %i.ul, ptr %i.ai, align 8, !tbaa !98
  %i.up = getelementptr inbounds nuw [20 x i8], ptr %i.uh, i64 %i.uf
  store ptr %i.up, ptr %i.aj, align 8, !tbaa !103
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

.loopexit810:                                     ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i513
  %lpad.loopexit812 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.loopexit.split-lp811:                            ; preds = %bb.fz
  %lpad.loopexit.split-lp813 = landingpad { ptr, i32 }
          cleanup
  br label %bb.gb

.critedge:                                        ; preds = %.split, %_ZNK6icu_7813UnicodeStringeqERKS0_.exit370
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386

_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386: ; preds = %bb.fx, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i524, %bb.eq, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i508, %bb.ei, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i492, %bb.ec, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i476, %bb.dt, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i460, %bb.bz, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i422, %bb.bq, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i399, %bb.bl, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i383, %bb.fo, %bb.bx, %.critedge
  %.sroa.0736.5 = phi ptr [ %.sroa.0736.01023, %bb.bx ], [ %.sroa.0736.01023, %bb.bq ], [ %.sroa.0736.01023, %bb.bz ], [ %.sroa.0736.4, %bb.dt ], [ %.sroa.0736.4, %bb.ec ], [ %.sroa.0736.4, %bb.fo ], [ %.sroa.0736.4, %bb.eq ], [ %.sroa.0736.4, %bb.ei ], [ %.sroa.0736.01023, %.critedge ], [ %.sroa.0736.01023, %bb.bl ], [ %.sroa.0736.01023, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i383 ], [ %.sroa.0736.01023, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i399 ], [ %.sroa.0736.01023, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i422 ], [ %.sroa.0736.4, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i460 ], [ %.sroa.0736.4, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i476 ], [ %.sroa.0736.4, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i492 ], [ %.sroa.0736.4, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i508 ], [ %.sroa.0736.4, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i524 ], [ %.sroa.0736.4, %bb.fx ]
  %.sroa.13.3 = phi ptr [ %.sroa.13.01024, %bb.bx ], [ %.sroa.13.01024, %bb.bq ], [ %.sroa.13.01024, %bb.bz ], [ %.sroa.13.2, %bb.dt ], [ %.sroa.13.2, %bb.ec ], [ %.sroa.13.2, %bb.fo ], [ %.sroa.13.2, %bb.eq ], [ %.sroa.13.2, %bb.ei ], [ %.sroa.13.01024, %.critedge ], [ %.sroa.13.01024, %bb.bl ], [ %.sroa.13.01024, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i383 ], [ %.sroa.13.01024, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i399 ], [ %.sroa.13.01024, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i422 ], [ %.sroa.13.2, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i460 ], [ %.sroa.13.2, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i476 ], [ %.sroa.13.2, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i492 ], [ %.sroa.13.2, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i508 ], [ %.sroa.13.2, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i524 ], [ %.sroa.13.2, %bb.fx ]
  %.sroa.21.5 = phi ptr [ %.sroa.21.01025, %bb.bx ], [ %.sroa.21.01025, %bb.bq ], [ %.sroa.21.01025, %bb.bz ], [ %.sroa.21.4, %bb.dt ], [ %.sroa.21.4, %bb.ec ], [ %.sroa.21.4, %bb.fo ], [ %.sroa.21.4, %bb.eq ], [ %.sroa.21.4, %bb.ei ], [ %.sroa.21.01025, %.critedge ], [ %.sroa.21.01025, %bb.bl ], [ %.sroa.21.01025, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i383 ], [ %.sroa.21.01025, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i399 ], [ %.sroa.21.01025, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i422 ], [ %.sroa.21.4, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i460 ], [ %.sroa.21.4, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i476 ], [ %.sroa.21.4, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i492 ], [ %.sroa.21.4, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i508 ], [ %.sroa.21.4, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i524 ], [ %.sroa.21.4, %bb.fx ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit: ; preds = %bb.p, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386, %bb.m
  %.sroa.0736.6 = phi ptr [ %.sroa.0736.01023, %bb.m ], [ %.sroa.0736.5, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386 ], [ %.sroa.0736.01023, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.0736.01023, %bb.p ] ; 8 uses
  %.sroa.13.4 = phi ptr [ %.sroa.13.01024, %bb.m ], [ %.sroa.13.3, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386 ], [ %.sroa.13.01024, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.13.01024, %bb.p ] ; 2 uses
  %.sroa.21.6 = phi ptr [ %.sroa.21.01025, %bb.m ], [ %.sroa.21.5, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_.exit386 ], [ %.sroa.21.01025, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ], [ %.sroa.21.01025, %bb.p ] ; 4 uses
  %i.uq = add nsw i32 %.02561026, -1
  %.not1230 = icmp eq i32 %.02561026, 0
  br i1 %.not1230, label %bb.l, label %bb.m, !llvm.loop !168

bb.gb:                                            ; preds = %.loopexit1150, %.loopexit.split-lp1151, %.loopexit810, %.loopexit.split-lp811, %.loopexit805, %.loopexit.split-lp806, %.loopexit815, %.loopexit.split-lp816, %.loopexit820, %.loopexit.split-lp821, %.loopexit825, %.loopexit.split-lp826, %.loopexit790, %.loopexit.split-lp791, %.loopexit, %.loopexit.split-lp, %.loopexit785, %.loopexit.split-lp786, %bb.ak, %bb.av, %bb.fp, %bb.fr, %bb.fv, %bb.ex, %bb.dm, %bb.bg, %bb.aw, %bb.al, %bb.aj
  %.sroa.0736.7 = phi ptr [ %.sroa.0736.01023, %.loopexit.split-lp ], [ %.sroa.0736.01023, %.loopexit.split-lp791 ], [ %.sroa.0736.1, %bb.aw ], [ %.sroa.0736.4, %.loopexit.split-lp826 ], [ %.sroa.0736.4, %.loopexit.split-lp821 ], [ %.sroa.0736.4, %.loopexit.split-lp811 ], [ %.sroa.0736.4, %bb.fp ], [ %.sroa.0736.4, %.loopexit.split-lp806 ], [ %.sroa.0736.4, %bb.fv ], [ %.sroa.0736.4, %bb.fr ], [ %.sroa.0736.4, %bb.ex ], [ %.sroa.0736.4, %.loopexit.split-lp816 ], [ %.sroa.0736.3, %bb.dm ], [ %.sroa.0736.01023, %bb.aj ], [ %.sroa.0736.01023, %.loopexit.split-lp786 ], [ %.sroa.0736.01023, %bb.bg ], [ %.sroa.0736.01023, %bb.av ], [ %.sroa.0736.01023, %bb.al ], [ %.sroa.0736.01023, %bb.ak ], [ %.sroa.0736.01023, %.loopexit785 ], [ %.sroa.0736.01023, %.loopexit ], [ %.sroa.0736.01023, %.loopexit790 ], [ %.sroa.0736.4, %.loopexit825 ], [ %.sroa.0736.4, %.loopexit820 ], [ %.sroa.0736.4, %.loopexit815 ], [ %.sroa.0736.4, %.loopexit805 ], [ %.sroa.0736.4, %.loopexit810 ], [ %.sroa.0736.4, %.loopexit.split-lp1151 ], [ %.sroa.0736.4, %.loopexit1150 ]
  %.sroa.21.7 = phi ptr [ %.sroa.21.01025, %.loopexit.split-lp ], [ %.sroa.21.01025, %.loopexit.split-lp791 ], [ %.sroa.21.1, %bb.aw ], [ %.sroa.21.4, %.loopexit.split-lp826 ], [ %.sroa.21.4, %.loopexit.split-lp821 ], [ %.sroa.21.4, %.loopexit.split-lp811 ], [ %.sroa.21.4, %bb.fp ], [ %.sroa.21.4, %.loopexit.split-lp806 ], [ %.sroa.21.4, %bb.fv ], [ %.sroa.21.4, %bb.fr ], [ %.sroa.21.4, %bb.ex ], [ %.sroa.21.4, %.loopexit.split-lp816 ], [ %.sroa.21.3, %bb.dm ], [ %.sroa.21.01025, %bb.aj ], [ %.sroa.21.01025, %.loopexit.split-lp786 ], [ %.sroa.21.01025, %bb.bg ], [ %.sroa.21.01025, %bb.av ], [ %.sroa.21.01025, %bb.al ], [ %.sroa.21.01025, %bb.ak ], [ %.sroa.21.01025, %.loopexit785 ], [ %.sroa.21.01025, %.loopexit ], [ %.sroa.21.01025, %.loopexit790 ], [ %.sroa.21.4, %.loopexit825 ], [ %.sroa.21.4, %.loopexit820 ], [ %.sroa.21.4, %.loopexit815 ], [ %.sroa.21.4, %.loopexit805 ], [ %.sroa.21.4, %.loopexit810 ], [ %.sroa.21.4, %.loopexit.split-lp1151 ], [ %.sroa.21.4, %.loopexit1150 ]
  %.pn332.pn.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit.split-lp793, %.loopexit.split-lp791 ], [ %i.fm, %bb.aw ], [ %lpad.loopexit.split-lp828, %.loopexit.split-lp826 ], [ %lpad.loopexit.split-lp823, %.loopexit.split-lp821 ], [ %lpad.loopexit.split-lp813, %.loopexit.split-lp811 ], [ %i.th, %bb.fp ], [ %lpad.loopexit.split-lp808, %.loopexit.split-lp806 ], [ %i.tm, %bb.fv ], [ %i.ti, %bb.fr ], [ %i.ru, %bb.ex ], [ %lpad.loopexit.split-lp818, %.loopexit.split-lp816 ], [ %.pn316.pn, %bb.dm ], [ %i.ed, %bb.aj ], [ %lpad.loopexit.split-lp788, %.loopexit.split-lp786 ], [ %i.go, %bb.bg ], [ %i.fl, %bb.av ], [ %i.ef, %bb.al ], [ %i.ee, %bb.ak ], [ %lpad.loopexit787, %.loopexit785 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit792, %.loopexit790 ], [ %lpad.loopexit827, %.loopexit825 ], [ %lpad.loopexit822, %.loopexit820 ], [ %lpad.loopexit817, %.loopexit815 ], [ %lpad.loopexit807, %.loopexit805 ], [ %lpad.loopexit812, %.loopexit810 ], [ %lpad.loopexit.split-lp1155, %.loopexit.split-lp1151 ], [ %lpad.loopexit1154, %.loopexit1150 ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %bb.gc

bb.gc:                                            ; preds = %bb.gb, %bb.z, %bb.y
  %.sroa.0736.8 = phi ptr [ %.sroa.0736.7, %bb.gb ], [ %.sroa.0736.01023, %bb.y ], [ %.sroa.0736.01023, %bb.z ]
  %.sroa.21.8 = phi ptr [ %.sroa.21.7, %bb.gb ], [ %.sroa.21.01025, %bb.y ], [ %.sroa.21.01025, %bb.z ]
  %.pn332.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn332.pn.pn.pn.pn, %bb.gb ], [ %i.ct, %bb.y ], [ %i.cu, %bb.z ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %12) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.gv

bb.gd:                                            ; preds = %bb.l
  store i32 5, ptr %i.c, align 8, !tbaa !17
  br label %bb.gf

bb.ge:                                            ; preds = %bb.gq, %bb.gg
  %i.ur = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

bb.gf:                                            ; preds = %bb.gd, %bb.l
  %.not299 = icmp eq ptr %.0258, null
  br i1 %.not299, label %bb.gq, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.us = ptrtoint ptr %.sroa.13.4 to i64
  %i.ut = ptrtoint ptr %.sroa.0736.6 to i64
  %i.uu = sub i64 %i.us, %i.ut
  %i.uv = lshr exact i64 %i.uu, 2
  %i.uw = trunc i64 %i.uv to i32
  invoke void @usrc_writeArray(ptr noundef nonnull %.0258, ptr noundef nonnull @.str.49, ptr noundef %.sroa.0736.6, i32 noundef 32, i32 noundef %i.uw, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47)
          to label %bb.gh unwind label %bb.ge

bb.gh:                                            ; preds = %bb.gg
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  %i.ux = load ptr, ptr %10, align 8, !tbaa !32
  %i.uy = load i32, ptr @trieType, align 4, !tbaa !34
  %i.uz = invoke ptr @umutablecptrie_buildImmutable_78(ptr noundef %i.ux, i32 noundef %i.uy, i32 noundef 1, ptr noundef nonnull %i.c)
          to label %bb.gi unwind label %bb.gn     ; 4 uses

bb.gi:                                            ; preds = %bb.gh
  store ptr %i.uz, ptr %18, align 8, !tbaa !37
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 1026, ptr noundef nonnull %0)
          to label %bb.gj unwind label %bb.go

bb.gj:                                            ; preds = %bb.gi
  %fwrite = call i64 @fwrite(ptr nonnull @.str.54, i64 7, i64 1, ptr nonnull %.0258) ; 0 uses
  invoke void @usrc_writeUCPTrie(ptr noundef nonnull %.0258, ptr noundef nonnull @.str.55, ptr noundef %i.uz, i32 noundef 1)
          to label %bb.gk unwind label %bb.go

bb.gk:                                            ; preds = %bb.gj
  %i.va = call i32 @fclose(ptr noundef nonnull %.0258) ; 0 uses
  %.not.i528 = icmp eq ptr %i.uz, null
  br i1 %.not.i528, label %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit, label %bb.gl

bb.gl:                                            ; preds = %bb.gk
  invoke void @ucptrie_close_78(ptr noundef nonnull %i.uz)
          to label %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit unwind label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.vb = landingpad { ptr, i32 }
          catch ptr null
  %i.vc = extractvalue { ptr, i32 } %i.vb, 0
  call void @__clang_call_terminate(ptr %i.vc) #24
  unreachable

_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit: ; preds = %bb.gk, %bb.gl
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.gq

bb.gn:                                            ; preds = %bb.gh
  %i.vd = landingpad { ptr, i32 }
          cleanup
  br label %bb.gp

bb.go:                                            ; preds = %bb.gj, %bb.gi
  %i.ve = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #25
  br label %bb.gp

bb.gp:                                            ; preds = %bb.go, %bb.gn
  %.pn = phi { ptr, i32 } [ %i.ve, %bb.go ], [ %i.vd, %bb.gn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.gv

bb.gq:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI7UCPTrieXadL_Z16ucptrie_close_78EEED2Ev.exit, %bb.gf
  invoke void @_Z11handleErrorRN6icu_789ErrorCodeEiPKc(ptr noundef nonnull align 8 dereferenceable(12) %9, i32 noundef 1033, ptr noundef nonnull %0)
          to label %bb.gr unwind label %bb.ge

bb.gr:                                            ; preds = %bb.gq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  %i.vf = load ptr, ptr %10, align 8, !tbaa !32   ; 2 uses
  %.not.i529 = icmp eq ptr %i.vf, null
  br i1 %.not.i529, label %_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev.exit, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  invoke void @umutablecptrie_close_78(ptr noundef nonnull %i.vf)
          to label %_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev.exit unwind label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.vg = landingpad { ptr, i32 }
          catch ptr null
  %i.vh = extractvalue { ptr, i32 } %i.vg, 0
  call void @__clang_call_terminate(ptr %i.vh) #24
  unreachable

_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev.exit: ; preds = %bb.gr, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %.not.i.i.i530 = icmp eq ptr %.sroa.0736.6, null
  br i1 %.not.i.i.i530, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.gu

bb.gu:                                            ; preds = %_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev.exit
  %i.vi = ptrtoint ptr %.sroa.21.6 to i64
  %i.vj = ptrtoint ptr %.sroa.0736.6 to i64
  %i.vk = sub i64 %i.vi, %i.vj
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0736.6, i64 noundef %i.vk) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev.exit, %bb.gu
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret void

bb.gv:                                            ; preds = %.loopexit830, %.loopexit.split-lp831, %bb.ge, %bb.gp, %bb.gc
  %.sroa.0736.9 = phi ptr [ %.sroa.0736.6, %bb.gp ], [ %.sroa.0736.8, %bb.gc ], [ %.sroa.0736.6, %bb.ge ], [ %.sroa.0736.01023, %.loopexit830 ], [ %.sroa.0736.01023, %.loopexit.split-lp831 ] ; 3 uses
  %.sroa.21.9 = phi ptr [ %.sroa.21.6, %bb.gp ], [ %.sroa.21.8, %bb.gc ], [ %.sroa.21.6, %bb.ge ], [ %.sroa.21.01025, %.loopexit830 ], [ %.sroa.21.01025, %.loopexit.split-lp831 ]
  %.pn342.pn = phi { ptr, i32 } [ %.pn, %bb.gp ], [ %.pn332.pn.pn.pn.pn.pn.pn, %bb.gc ], [ %i.ur, %bb.ge ], [ %lpad.loopexit832, %.loopexit830 ], [ %lpad.loopexit.split-lp833, %.loopexit.split-lp831 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @_ZN6icu_788internal16LocalOpenPointerI14UMutableCPTrieXadL_Z23umutablecptrie_close_78EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %.not.i.i.i531 = icmp eq ptr %.sroa.0736.9, null
  br i1 %.not.i.i.i531, label %_ZNSt6vectorIjSaIjEED2Ev.exit532, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.vl = ptrtoint ptr %.sroa.21.9 to i64
  %i.vm = ptrtoint ptr %.sroa.0736.9 to i64
  %i.vn = sub i64 %i.vl, %i.vm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0736.9, i64 noundef %i.vn) #26
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit532

_ZNSt6vectorIjSaIjEED2Ev.exit532:                 ; preds = %bb.gw, %bb.gv, %.thread771, %.thread777, %bb.g, %bb.f
  %.pn342.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.l, %bb.g ], [ %i.m, %.thread771 ], [ %.pn342.pn, %bb.gv ], [ %.pn342.pn, %bb.gw ], [ %i.n, %.thread777 ]
  call void @_ZN6icu_7816IcuToolErrorCodeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  resume { ptr, i32 } %.pn342.pn.pn.pn.pn.pn
}

declare noundef ptr @_ZN6icu_7811Normalizer214getNFDInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef ptr @_ZN6icu_7811Normalizer215getNFKDInstanceER10UErrorCode(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef ptr @_ZN6icu_7811Normalizer211getInstanceEPKcS2_19UNormalization2ModeR10UErrorCode(ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorI17PendingDescriptorSaIS0_EE9push_backEOS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(20) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !98   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !103
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !104
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !98
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store ptr %i.f, ptr %i.a, align 8, !tbaa !98
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !99     ; 5 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
  unreachable

_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = sdiv exact i64 %i.j, 20                  ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i.i.i, %i.l  ; 2 uses
  %i.m = icmp ult i64 %2, %i.l
  %i.n = tail call i64 @llvm.umin.i64(i64 %2, i64 461168601842738790)
  %i.o = select i1 %i.m, i64 461168601842738790, i64 %i.n ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.p = mul nuw nsw i64 %i.o, 20
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #28 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.r, ptr noundef nonnull align 4 dereferenceable(20) %1, i64 20, i1 false), !tbaa.struct !104
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i.i ], [ %i.q, %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %i.g, %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.0911.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !104, !alias.scope !181
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 20 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 20 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.s, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !3

_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.q, %_ZNKSt6vectorI17PendingDescriptorSaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.t, %.lr.ph.i.i.i.i.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 20
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.x) #26
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.q, ptr %0, align 8, !tbaa !99
  store ptr %i.u, ptr %i.a, align 8, !tbaa !98
  %i.y = getelementptr inbounds nuw [20 x i8], ptr %i.q, i64 %i.o
  store ptr %i.y, ptr %i.c, align 8, !tbaa !103
  br label %_ZNSt6vectorI17PendingDescriptorSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

_ZNSt6vectorI17PendingDescriptorSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorI17PendingDescriptorSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z12findOrAppendItEmRSt6vectorIT_SaIS1_EEPKim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !51     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 1                   ; 3 uses
  %.not45 = icmp ugt i64 %2, %i.g
  br i1 %.not45, label %.lr.ph, label %.preheader36.lr.ph

.preheader36.lr.ph:                               ; preds = %bb.a
  %.not2942 = icmp eq i64 %2, 0
  br i1 %.not2942, label %.loopexit, label %.preheader36

.preheader36:                                     ; preds = %.preheader36.lr.ph, %bb.d
  %.02546 = phi i64 [ %i.p, %bb.d ], [ 0, %.preheader36.lr.ph ] ; 3 uses
  %i.h = getelementptr [2 x i8], ptr %i.c, i64 %.02546
  br label %bb.c

.lr.ph:                                           ; preds = %bb.d, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !50
  br label %bb.e

bb.b:                                             ; preds = %bb.c
  %i.j = add nuw i64 %.02343, 1                   ; 2 uses
  %.not29 = icmp eq i64 %i.j, %2
  br i1 %.not29, label %.loopexit, label %bb.c, !llvm.loop !182

bb.c:                                             ; preds = %.preheader36, %bb.b
  %.02343 = phi i64 [ 0, %.preheader36 ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = getelementptr [2 x i8], ptr %i.h, i64 %.02343
  %i.l = load i16, ptr %i.k, align 2, !tbaa !47
  %i.m = zext i16 %i.l to i32
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02343
  %i.o = load i32, ptr %i.n, align 4, !tbaa !95
  %.not28 = icmp eq i32 %i.o, %i.m
  br i1 %.not28, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = add i64 %.02546, 1                       ; 2 uses
  %i.q = add i64 %i.p, %2
  %.not = icmp ugt i64 %i.q, %i.g
  br i1 %.not, label %.lr.ph, label %.preheader36, !llvm.loop !183

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %i.r = phi ptr [ %i.c, %.lr.ph ], [ %i.aq, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 5 uses
  %i.s = phi ptr [ %.pre, %.lr.ph ], [ %i.ar, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 3 uses
  %i.t = phi ptr [ %i.b, %.lr.ph ], [ %i.as, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 3 uses
  %.048 = phi i64 [ 0, %.lr.ph ], [ %i.at, %_ZNSt6vectorItSaItEE9push_backEOt.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.048
  %i.v = load i32, ptr %i.u, align 4, !tbaa !95
  %i.w = trunc i32 %i.v to i16                    ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.s
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i16 %i.w, ptr %i.t, align 2, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 2 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !49
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

bb.g:                                             ; preds = %bb.e
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.aa = sub i64 %i.y, %i.z                      ; 5 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775806
  br i1 %i.ab, label %bb.h, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.ac = ashr exact i64 %i.aa, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add i64 %.sroa.speculated.i.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 4611686018427387903)
  %i.ag = select i1 %i.ae, i64 4611686018427387903, i64 %i.af ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #28 ; 5 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store i16 %i.w, ptr %i.aj, align 2, !tbaa !47
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.i, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ai, ptr align 2 %i.r, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !50
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = sub i64 %i.an, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ao) #26
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ai, ptr %0, align 8, !tbaa !51
  store ptr %i.al, ptr %i.a, align 8, !tbaa !49
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ag ; 2 uses
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !50
  br label %_ZNSt6vectorItSaItEE9push_backEOt.exit

_ZNSt6vectorItSaItEE9push_backEOt.exit:           ; preds = %bb.f, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i
  %i.aq = phi ptr [ %i.r, %bb.f ], [ %i.ai, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ]
  %i.ar = phi ptr [ %i.s, %bb.f ], [ %i.ap, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ]
  %i.as = phi ptr [ %i.x, %bb.f ], [ %i.al, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i.i ]
  %i.at = add nuw i64 %.048, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %2
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !184

.loopexit:                                        ; preds = %bb.b, %_ZNSt6vectorItSaItEE9push_backEOt.exit, %.preheader36.lr.ph
  %.3 = phi i64 [ %i.g, %_ZNSt6vectorItSaItEE9push_backEOt.exit ], [ 0, %.preheader36.lr.ph ], [ %.02546, %bb.b ]
  ret i64 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_Z12findOrAppendIjEmRSt6vectorIT_SaIS1_EEPKim(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !101  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !102    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 2                   ; 3 uses
  %.not45 = icmp ugt i64 %2, %i.g
  br i1 %.not45, label %.lr.ph, label %.preheader36.lr.ph

.preheader36.lr.ph:                               ; preds = %bb.a
  %.not2942 = icmp eq i64 %2, 0
  br i1 %.not2942, label %.loopexit, label %.preheader36

.preheader36:                                     ; preds = %.preheader36.lr.ph, %bb.d
  %.02546 = phi i64 [ %i.o, %bb.d ], [ 0, %.preheader36.lr.ph ] ; 3 uses
  %i.h = getelementptr [4 x i8], ptr %i.c, i64 %.02546
  br label %bb.c

.lr.ph:                                           ; preds = %bb.d, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !105
  br label %bb.e

bb.b:                                             ; preds = %bb.c
  %i.j = add nuw i64 %.02343, 1                   ; 2 uses
  %.not29 = icmp eq i64 %i.j, %2
  br i1 %.not29, label %.loopexit, label %bb.c, !llvm.loop !185

bb.c:                                             ; preds = %.preheader36, %bb.b
  %.02343 = phi i64 [ 0, %.preheader36 ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = getelementptr [4 x i8], ptr %i.h, i64 %.02343
  %i.l = load i32, ptr %i.k, align 4, !tbaa !95
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.02343
  %i.n = load i32, ptr %i.m, align 4, !tbaa !95
  %.not28 = icmp eq i32 %i.l, %i.n
  br i1 %.not28, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = add i64 %.02546, 1                       ; 2 uses
  %i.p = add i64 %i.o, %2
  %.not = icmp ugt i64 %i.p, %i.g
  br i1 %.not, label %.lr.ph, label %.preheader36, !llvm.loop !186

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.q = phi ptr [ %i.c, %.lr.ph ], [ %i.an, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 5 uses
  %i.r = phi ptr [ %.pre, %.lr.ph ], [ %i.ao, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %i.s = phi ptr [ %i.b, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 3 uses
  %.048 = phi i64 [ 0, %.lr.ph ], [ %i.aq, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.048
  %i.u = load i32, ptr %i.t, align 4, !tbaa !95   ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.u, ptr %i.s, align 4, !tbaa !95
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4 ; 2 uses
  store ptr %i.v, ptr %i.a, align 8, !tbaa !101
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.g:                                             ; preds = %bb.e
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = ptrtoint ptr %i.q to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775804
  br i1 %i.z, label %bb.h, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.aa = ashr exact i64 %i.y, 2                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ab = icmp ult i64 %3, %i.aa
  %i.ac = tail call i64 @llvm.umin.i64(i64 %3, i64 2305843009213693951)
  %i.ad = select i1 %i.ab, i64 2305843009213693951, i64 %i.ac ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 2
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #28 ; 5 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.y ; 2 uses
  store i32 %i.u, ptr %i.ag, align 4, !tbaa !95
  %i.ah = icmp sgt i64 %i.y, 0
  br i1 %i.ah, label %bb.i, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.af, ptr align 4 %i.q, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.al) #26
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.af, ptr %0, align 8, !tbaa !102
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !101
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ad ; 2 uses
  store ptr %i.am, ptr %i.i, align 8, !tbaa !105
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  %i.an = phi ptr [ %i.q, %bb.f ], [ %i.af, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.ao = phi ptr [ %i.r, %bb.f ], [ %i.am, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.ap = phi ptr [ %i.v, %bb.f ], [ %i.ai, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ]
  %i.aq = add nuw i64 %.048, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %2
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !187

.loopexit:                                        ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %.preheader36.lr.ph
  %.3 = phi i64 [ %i.g, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ 0, %.preheader36.lr.ph ], [ %.02546, %bb.b ]
  ret i64 %.3
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z9printHelpP8_IO_FILEPKc(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.60, ptr noundef %1) #25 ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i32 0, 6) i32 @_Z12exportUpropsiPPc(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = alloca [20 x i8], align 16               ; 6 uses
  %i.c = icmp sgt i32 %0, 1
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit, %bb.a
  %.sroa.0186.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.0186.5, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.13.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.13.4, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.22.0.lcssa = phi ptr [ null, %bb.a ], [ %.sroa.22.5, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.d = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 274), align 2, !tbaa !107
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %.loopexit220, label %.preheader

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %.sroa.22.0267 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.22.5, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit ] ; 5 uses
  %.sroa.13.0266 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.13.4, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit ] ; 3 uses
  %.sroa.0186.0265 = phi ptr [ null, %.lr.ph.preheader ], [ %.sroa.0186.5, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit ] ; 7 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %.not.i = icmp eq ptr %.sroa.13.0266, %.sroa.22.0267
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !63
  store ptr %i.f, ptr %.sroa.13.0266, align 8, !tbaa !63
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.g = ptrtoint ptr %.sroa.22.0267 to i64
  %i.h = ptrtoint ptr %.sroa.0186.0265 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 6 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775800
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc unwind label %.loopexit.split-lp227

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %2 = add nsw i64 %.sroa.speculated.i.i.i, %i.k  ; 2 uses
  %i.l = icmp ult i64 %2, %i.k
  %i.m = tail call i64 @llvm.umin.i64(i64 %2, i64 1152921504606846975)
  %i.n = select i1 %i.l, i64 1152921504606846975, i64 %i.m ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.n, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #28
          to label %.noexc101 unwind label %.loopexit226 ; 4 uses

.noexc101:                                        ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 %i.i ; 2 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !63
  store ptr %i.r, ptr %i.q, align 8, !tbaa !63
  %i.s = icmp sgt i64 %i.i, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.e:                                             ; preds = %.noexc101
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.p, ptr align 8 %.sroa.0186.0265, i64 %i.i, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.e, %.noexc101
  %.not.i17.i.i = icmp eq ptr %.sroa.0186.0265, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0186.0265, i64 noundef %i.i) #26
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit:    ; preds = %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.b
  %.sroa.0186.5 = phi ptr [ %i.p, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0186.0265, %bb.b ] ; 2 uses
  %.pn214 = phi ptr [ %i.q, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.13.0266, %bb.b ]
  %.sroa.22.5 = phi ptr [ %i.t, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.22.0267, %bb.b ] ; 2 uses
  %.sroa.13.4 = getelementptr inbounds nuw i8, ptr %.pn214, i64 8 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !188

.loopexit226:                                     ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i
  %lpad.loopexit228 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp227:                            ; preds = %bb.d
  %lpad.loopexit.split-lp229 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.preheader:                                       ; preds = %._crit_edge, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117
  %spec.store.select3274 = phi i32 [ %spec.store.select3, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117 ], [ 0, %._crit_edge ] ; 4 uses
  %.sroa.22.1273 = phi ptr [ %.sroa.22.2, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117 ], [ %.sroa.22.0.lcssa, %._crit_edge ] ; 6 uses
  %.sroa.13.1272 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117 ], [ %.sroa.13.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.0186.1271 = phi ptr [ %.sroa.0186.2, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117 ], [ %.sroa.0186.0.lcssa, %._crit_edge ] ; 8 uses
  %i.u = invoke ptr @u_getPropertyName_78(i32 noundef %spec.store.select3274, i32 noundef 0)
          to label %bb.g unwind label %.loopexit221 ; 2 uses

bb.g:                                             ; preds = %.preheader
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %_ZNSolsEPFRSoS_E.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.w = invoke ptr @u_getPropertyName_78(i32 noundef %spec.store.select3274, i32 noundef 1)
          to label %bb.i unwind label %.loopexit221 ; 6 uses

bb.i:                                             ; preds = %bb.h
  %i.x = icmp ne ptr %i.w, null
  %i.y = load i8, ptr @VERBOSE, align 1
  %i.z = icmp ne i8 %i.y, 0
  %or.cond = select i1 %i.x, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.j, label %_ZNSolsEPFRSoS_E.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.61, i64 noundef 37)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %.loopexit221 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.j
  %i.ab = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #25
  %i.ac = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.w, i64 noundef %i.ab)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106 unwind label %.loopexit221 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.ad = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !20
  %i.ae = getelementptr i8, ptr %i.ad, i64 -24
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 240
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !81 ; 6 uses
  %.not.i.i.i137 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i137, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

.invoke:                                          ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106, %bb.s
  invoke void @_ZSt16__throw_bad_castv() #27
          to label %.cont unwind label %.loopexit.split-lp222

.cont:                                            ; preds = %.invoke
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit106
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !86
  %.not.i1.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i1.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 67
  %i.am = load i8, ptr %i.al, align 1, !tbaa !62
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i

bb.l:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.ai)
          to label %.noexc139.a unwind label %.loopexit221

.noexc139.a:                                      ; preds = %bb.l
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef signext i8 %i.ap(ptr noundef nonnull align 8 dereferenceable(570) %i.ai, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i unwind label %.loopexit221, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i: ; preds = %.noexc139.a, %bb.k
  %.0.i.i.i = phi i8 [ %i.am, %bb.k ], [ %i.aq, %.noexc139.a ]
  %i.ar = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i8 noundef signext %.0.i.i.i)
          to label %.noexc141 unwind label %.loopexit221

.noexc141:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i
  %i.as = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
          to label %_ZNSolsEPFRSoS_E.exit.thread unwind label %.loopexit221 ; 0 uses

.loopexit221:                                     ; preds = %.preheader, %bb.h, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119, %bb.j, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit, %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i109, %bb.r, %bb.l, %.noexc139.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i, %.noexc141, %bb.u, %.noexc149.a, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i146, %.noexc151
  %lpad.loopexit223 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.loopexit.split-lp222:                            ; preds = %.invoke, %bb.o
  %lpad.loopexit.split-lp224 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

_ZNSolsEPFRSoS_E.exit:                            ; preds = %bb.i
  %.not86 = icmp eq ptr %i.w, null
  br i1 %.not86, label %bb.r, label %_ZNSolsEPFRSoS_E.exit.thread

_ZNSolsEPFRSoS_E.exit.thread:                     ; preds = %.noexc141, %bb.g, %_ZNSolsEPFRSoS_E.exit
  %.0202205 = phi ptr [ %i.w, %_ZNSolsEPFRSoS_E.exit ], [ %i.w, %.noexc141 ], [ %i.u, %bb.g ] ; 2 uses
  %.not.i108 = icmp eq ptr %.sroa.13.1272, %.sroa.22.1273
  br i1 %.not.i108, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSolsEPFRSoS_E.exit.thread
  store ptr %.0202205, ptr %.sroa.13.1272, align 8, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.13.1272, i64 8
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117

bb.n:                                             ; preds = %_ZNSolsEPFRSoS_E.exit.thread
  %i.au = ptrtoint ptr %.sroa.22.1273 to i64
  %i.av = ptrtoint ptr %.sroa.0186.1271 to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 6 uses
  %i.ax = icmp eq i64 %i.aw, 9223372036854775800
  br i1 %i.ax, label %bb.o, label %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i109

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
          to label %.noexc115.a unwind label %.loopexit.split-lp222

.noexc115.a:                                      ; preds = %bb.o
  unreachable

_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i109: ; preds = %bb.n
  %i.ay = ashr exact i64 %i.aw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i110 = tail call i64 @llvm.umax.i64(i64 %i.ay, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i.i.i110, %i.ay ; 2 uses
  %i.az = icmp ult i64 %3, %i.ay
  %i.ba = tail call i64 @llvm.umin.i64(i64 %3, i64 1152921504606846975)
  %i.bb = select i1 %i.az, i64 1152921504606846975, i64 %i.ba ; 3 uses
  %.not.i.i.i111 = icmp ne i64 %i.bb, 0
  tail call void @llvm.assume(i1 %.not.i.i.i111)
  %i.bc = shl nuw nsw i64 %i.bb, 3
  %i.bd = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bc) #28
          to label %.noexc116 unwind label %.loopexit221 ; 4 uses

.noexc116:                                        ; preds = %_ZNKSt6vectorIPKcSaIS1_EE12_M_check_lenEmS1_.exit.i.i109
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 %i.aw ; 2 uses
  store ptr %.0202205, ptr %i.be, align 8, !tbaa !63
  %i.bf = icmp sgt i64 %i.aw, 0
  br i1 %i.bf, label %bb.p, label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i112

bb.p:                                             ; preds = %.noexc116
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bd, ptr align 8 %.sroa.0186.1271, i64 %i.aw, i1 false)
  br label %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i112

_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i112: ; preds = %bb.p, %.noexc116
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.not.i17.i.i113 = icmp eq ptr %.sroa.0186.1271, null
  br i1 %.not.i17.i.i113, label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i114, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i112
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0186.1271, i64 noundef %i.aw) #26
  br label %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i114

_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i114: ; preds = %bb.q, %_ZNSt6vectorIPKcSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i112
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bb
  br label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117

bb.r:                                             ; preds = %_ZNSolsEPFRSoS_E.exit
  %i.bi = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.62, i64 noundef 34)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119 unwind label %.loopexit221 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119: ; preds = %bb.r
  %i.bj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, i32 noundef %spec.store.select3274)
          to label %bb.s unwind label %.loopexit221 ; 3 uses

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit119
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !20
  %i.bl = getelementptr i8, ptr %i.bk, i64 -24
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 240
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !81 ; 6 uses
  %.not.i.i.i143 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i143, label %.invoke, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i144

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i144: ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !86
  %.not.i1.i.i145 = icmp eq i8 %i.br, 0
  br i1 %.not.i1.i.i145, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i144
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 67
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !62
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i146

bb.u:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i144
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bp)
          to label %.noexc149.a unwind label %.loopexit221

.noexc149.a:                                      ; preds = %bb.u
  %i.bu = load ptr, ptr %i.bp, align 8, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = invoke noundef signext i8 %i.bw(ptr noundef nonnull align 8 dereferenceable(570) %i.bp, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i146 unwind label %.loopexit221, !inline_history !2

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i146: ; preds = %.noexc149.a, %bb.t
  %.0.i.i.i147 = phi i8 [ %i.bt, %bb.t ], [ %i.bx, %.noexc149.a ]
  %i.by = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bj, i8 noundef signext %.0.i.i.i147)
          to label %.noexc151 unwind label %.loopexit221

.noexc151:                                        ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i146
  %i.bz = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.by)
          to label %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117 unwind label %.loopexit221 ; 0 uses

_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117: ; preds = %.noexc151, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i114, %bb.m
  %.sroa.0186.2 = phi ptr [ %.sroa.0186.1271, %bb.m ], [ %i.bd, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i114 ], [ %.sroa.0186.1271, %.noexc151 ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %i.at, %bb.m ], [ %i.bg, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i114 ], [ %.sroa.13.1272, %.noexc151 ] ; 2 uses
  %.sroa.22.2 = phi ptr [ %.sroa.22.1273, %bb.m ], [ %i.bh, %_ZNSt6vectorIPKcSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i114 ], [ %.sroa.22.1273, %.noexc151 ] ; 2 uses
  %i.ca = add nsw i32 %spec.store.select3274, 1   ; 2 uses
  %i.cb = icmp eq i32 %i.ca, 76
  %spec.store.select14 = select i1 %i.cb, i32 4096, i32 %i.ca ; 2 uses
  %i.cc = icmp eq i32 %spec.store.select14, 4123
  %spec.store.select = select i1 %i.cc, i32 8192, i32 %spec.store.select14 ; 2 uses
  %i.cd = icmp eq i32 %spec.store.select, 8193
  %spec.store.select15 = select i1 %i.cd, i32 16385, i32 %spec.store.select ; 2 uses
  %i.ce = icmp eq i32 %spec.store.select15, 16386
  %spec.store.select3 = select i1 %i.ce, i32 28672, i32 %spec.store.select15 ; 2 uses
  %i.cf = icmp eq i32 %spec.store.select3, 28673
  br i1 %i.cf, label %.loopexit220, label %.preheader, !llvm.loop !189

.loopexit220:                                     ; preds = %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117, %._crit_edge
  %.sroa.0186.3 = phi ptr [ %.sroa.0186.0.lcssa, %._crit_edge ], [ %.sroa.0186.2, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117 ] ; 11 uses
  %.sroa.13.3 = phi ptr [ %.sroa.13.0.lcssa, %._crit_edge ], [ %.sroa.13.2, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117 ] ; 3 uses
  %.sroa.22.3 = phi ptr [ %.sroa.22.0.lcssa, %._crit_edge ], [ %.sroa.22.2, %_ZNSt6vectorIPKcSaIS1_EE9push_backERKS1_.exit117 ] ; 6 uses
  %i.cg = icmp ne ptr %.sroa.0186.3, %.sroa.13.3
  %i.ch = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 34), align 2
  %i.ci = icmp eq i8 %i.ch, 0
  %or.cond6 = select i1 %i.cg, i1 %i.ci, i1 false
  %i.cj = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 74), align 2
  %i.ck = icmp eq i8 %i.cj, 0
  %or.cond8 = select i1 %or.cond6, i1 %i.ck, i1 false
  %i.cl = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 114), align 2
  %i.cm = icmp ne i8 %i.cl, 0
  %or.cond10 = select i1 %or.cond8, i1 %i.cm, i1 false
  br i1 %or.cond10, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.loopexit220
  %i.cn = icmp slt i32 %0, 0
  %i.co = load ptr, ptr @stderr, align 8
  %i.cp = load ptr, ptr @stdout, align 8
  %i.cq = select i1 %i.cn, ptr %i.co, ptr %i.cp
  %i.cr = load ptr, ptr %1, align 8, !tbaa !63
  %i.cs = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cq, ptr noundef nonnull @.str.63, ptr noundef %i.cr) #25 ; 0 uses
  %.lobit = lshr i32 %0, 31
  br label %.thread

bb.w:                                             ; preds = %.loopexit220
  %i.ct = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 88), align 8, !tbaa !108
  %i.cu = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ct, ptr noundef nonnull dereferenceable(7) @.str.64) #30
  %.not87 = icmp eq i32 %i.cu, 0
  br i1 %.not87, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cv = load ptr, ptr @stderr, align 8, !tbaa !110
  %fwrite98 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 43, i64 1, ptr %i.cv) #31 ; 0 uses
  br label %.thread

bb.y:                                             ; preds = %bb.w
  %i.cw = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 154), align 2, !tbaa !107
  %.not88 = icmp eq i8 %i.cw, 0
  br i1 %.not88, label %.lr.ph279.preheader, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZL7options, i64 128), align 16, !tbaa !108 ; 2 uses
  %i.cy = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cx, ptr noundef nonnull dereferenceable(5) @.str.66) #30
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %.lr.ph279.preheader.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.da = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.cx, ptr noundef nonnull dereferenceable(6) @.str.67) #30
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %.lr.ph279.preheader.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load ptr, ptr @stderr, align 8, !tbaa !110
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.68, i64 55, i64 1, ptr %i.dc) #31 ; 0 uses
  br label %.thread

.lr.ph279.preheader.sink.split:                   ; preds = %bb.aa, %bb.z
  %.sink = phi i32 [ 0, %bb.z ], [ 1, %bb.aa ]
  store i32 %.sink, ptr @trieType, align 4, !tbaa !34
  br label %.lr.ph279.preheader

.lr.ph279.preheader:                              ; preds = %.lr.ph279.preheader.sink.split, %bb.y
  br label %.lr.ph279

.lr.ph279:                                        ; preds = %.lr.ph279.preheader, %bb.bc
  %.sroa.0180.0277 = phi ptr [ %i.ff, %bb.bc ], [ %.sroa.0186.3, %.lr.ph279.preheader ] ; 2 uses
  %i.dd = load ptr, ptr %.sroa.0180.0277, align 8, !tbaa !63 ; 5 uses
  %i.de = invoke i32 @u_getPropertyEnum_78(ptr noundef %i.dd)
          to label %bb.ac unwind label %.loopexit ; 7 uses

bb.ac:                                            ; preds = %.lr.ph279
  %i.df = icmp eq i32 %i.de, -1
  br i1 %i.df, label %bb.ad, label %bb.aj

bb.ad:                                            ; preds = %bb.ac
  %i.dg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.69, i64 noundef 31)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123: ; preds = %bb.ad
  %.not.i124 = icmp eq ptr %i.dd, null
  br i1 %.not.i124, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123
  %i.dh = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !20
  %i.di = getelementptr i8, ptr %i.dh, i64 -24
  %i.dj = load i64, ptr %i.di, align 8
  %i.dk = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.dj ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 32
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !73
  %i.dn = or i32 %i.dm, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.dk, i32 noundef %i.dn)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127 unwind label %.loopexit.split-lp

bb.af:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit123
  %i.do = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dd) #25
  %i.dp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull %i.dd, i64 noundef %i.do)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127 unwind label %.loopexit.split-lp ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit127: ; preds = %bb.ae, %bb.af
  %i.dq = load ptr, ptr @_ZSt4cerr, align 8, !tbaa !20
  %i.dr = getelementptr i8, ptr %i.dq, i64 -24
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds i8, ptr @_ZSt4cerr, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 240
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !81 ; 6 uses
  %.not.i.i.i154 = icmp eq ptr %i.dv, null
end_hunk_1
begin_hunk_2_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_:bb.a
  %i.au = load i16, ptr %i.ar, align 2, !tbaa !47
  %i.av = load i16, ptr %i.at, align 2, !tbaa !47
  %i.aw = icmp ult i16 %i.au, %i.av
  %spec.select.i = select i1 %i.aw, i64 %i.as, i64 %i.aq ; 4 uses
  %i.ax = getelementptr inbounds [2 x i8], ptr %0, i64 %spec.select.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !47
  %i.az = getelementptr inbounds [2 x i8], ptr %0, i64 %.035.i
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !47
  %i.ba = icmp slt i64 %spec.select.i, %i.i
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !4

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.split
  %.0.lcssa.i = phi i64 [ %.08, %.split ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.bb = icmp eq i64 %.0.lcssa.i, %i.l
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge.i
  %i.bc = load i16, ptr %i.n, align 2, !tbaa !47
  store i16 %i.bc, ptr %i.o, align 2, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.08
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0920.i.i
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !47 ; 2 uses
  %i.bg = icmp ult i16 %i.bf, %i.an
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.019.i.i
  store i16 %i.bf, ptr %i.bh, align 2, !tbaa !47
  %i.bi = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !5

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i16 %i.an, ptr %i.bj, align 2, !tbaa !47
  %.not = icmp eq i64 %.08, 0
  %i.bk = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !203

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPtSt6vectorItSaItEEEEltNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #17

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local ptr @_ZNSt6vectorItSaItEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKtS1_EEOt(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !45     ; 9 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.d = sub i64 %i.b, %i.c                       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !49   ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i16, ptr %2, align 2, !tbaa !47
  store i16 %i.j, ptr %i.f, align 2, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store ptr %i.k, ptr %i.e, align 8, !tbaa !49
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -2 ; 3 uses
  %i.n = load i16, ptr %i.m, align 2, !tbaa !47
  store i16 %i.n, ptr %i.f, align 2, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store ptr %i.o, ptr %i.e, align 8, !tbaa !49
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.b                       ; 3 uses
  %i.r = ashr exact i64 %i.q, 1                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 1
  br i1 %i.s, label %bb.e, label %bb.f, !prof !58

bb.e:                                             ; preds = %bb.d
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [2 x i8], ptr %i.f, i64 %i.t
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.u, ptr align 2 %i.l, i64 %i.q, i1 false)
  %.pre.pre = load ptr, ptr %0, align 8, !tbaa !51
  br label %_ZNSt6vectorItSaItEE13_M_insert_auxItEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.v = icmp eq i64 %i.q, 2
  br i1 %i.v, label %bb.g, label %_ZNSt6vectorItSaItEE13_M_insert_auxItEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEOT_.exit

bb.g:                                             ; preds = %bb.f
  %i.w = load i16, ptr %i.l, align 2, !tbaa !47
  store i16 %i.w, ptr %i.m, align 2, !tbaa !47
  br label %_ZNSt6vectorItSaItEE13_M_insert_auxItEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEOT_.exit

_ZNSt6vectorItSaItEE13_M_insert_auxItEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEOT_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.pre = phi ptr [ %.pre.pre, %bb.e ], [ %i.a, %bb.f ], [ %i.a, %bb.g ]
  %i.x = load i16, ptr %2, align 2, !tbaa !47
  store i16 %i.x, ptr %i.l, align 2, !tbaa !47
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.z = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.aa = sub i64 %i.z, %i.c                      ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775806
  br i1 %i.ab, label %bb.i, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.h
  %i.ac = ashr exact i64 %i.aa, 1                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add i64 %.sroa.speculated.i.i, %i.ac    ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 4611686018427387903)
  %i.ag = select i1 %i.ae, i64 4611686018427387903, i64 %i.af ; 3 uses
  %.not.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 1
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #28 ; 5 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.d ; 2 uses
  %i.ak = load i16, ptr %2, align 2, !tbaa !47
  store i16 %i.ak, ptr %i.aj, align 2, !tbaa !47
  %i.al = icmp sgt i64 %i.d, 0
  br i1 %i.al, label %bb.j, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

bb.j:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.ai, ptr align 2 %i.a, i64 %i.d, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i: ; preds = %bb.j, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 2 ; 2 uses
  %i.an = sub i64 %i.z, %i.b                      ; 3 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %bb.k, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i

bb.k:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.am, ptr align 2 %i.y, i64 %i.an, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i: ; preds = %bb.k, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit.i
  %.not.i17.i = icmp eq ptr %i.a, null
  br i1 %.not.i17.i, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i
  %i.ap = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = sub i64 %i.aq, %i.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef %i.ar) #26
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit

_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit: ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i, %bb.l
  %i.as = getelementptr inbounds i8, ptr %i.am, i64 %i.an
  store ptr %i.ai, ptr %0, align 8, !tbaa !51
  store ptr %i.as, ptr %i.e, align 8, !tbaa !49
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.at, ptr %i.g, align 8, !tbaa !50
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %_ZNSt6vectorItSaItEE13_M_insert_auxItEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEOT_.exit, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit
  %i.au = phi ptr [ %i.a, %bb.c ], [ %.pre, %_ZNSt6vectorItSaItEE13_M_insert_auxItEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEOT_.exit ], [ %i.ai, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit ]
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %i.d
  ret ptr %i.av
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIS_ItSaItEESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !55     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.108) #27
  unreachable

_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i, %i.h      ; 2 uses
  %i.i = icmp ult i64 %3, %i.h
  %i.j = tail call i64 @llvm.umin.i64(i64 %3, i64 384307168202282325)
  %i.k = select i1 %i.i, i64 384307168202282325, i64 %i.j ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.e
  %.not.i = icmp ne i64 %i.k, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.n = mul nuw nsw i64 %i.k, 24                 ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #28 ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49   ; 2 uses
  %i.s = load ptr, ptr %2, align 8, !tbaa !51     ; 3 uses
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64                 ; 2 uses
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i.i.i, label %.noexc26, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit
  %i.w = icmp ugt i64 %i.v, 9223372036854775806
  br i1 %i.w, label %.noexc.i.i, label %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i, !prof !57

.noexc.i.i:                                       ; preds = %bb.c
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #27
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.c
  %i.x = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #28
          to label %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge unwind label %bb.j

_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge: ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i
  %.pre = load ptr, ptr %2, align 8, !tbaa !45    ; 2 uses
  %.pre43 = load ptr, ptr %i.q, align 8, !tbaa !45
  %.pre44 = ptrtoint ptr %.pre43 to i64
  %.pre45 = ptrtoint ptr %.pre to i64
  br label %.noexc26

.noexc26:                                         ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge, %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit
  %.pre-phi46 = phi i64 [ %.pre45, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.u, %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit ]
  %.pre-phi = phi i64 [ %.pre44, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.t, %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit ]
  %i.y = phi ptr [ %.pre, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ %i.s, %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %i.z = phi ptr [ %i.x, %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i..noexc26_crit_edge ], [ null, %_ZNKSt6vectorIS_ItSaItEESaIS1_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  store ptr %i.z, ptr %i.p, align 8, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !49
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !50
  %i.ad = sub i64 %.pre-phi, %.pre-phi46          ; 4 uses
  %i.ae = icmp sgt i64 %i.ad, 2
  br i1 %i.ae, label %bb.d, label %bb.e, !prof !58

bb.d:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.z, ptr align 2 %i.y, i64 %i.ad, i1 false)
  br label %bb.g

bb.e:                                             ; preds = %.noexc26
  %i.af = icmp eq i64 %i.ad, 2
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = load i16, ptr %i.y, align 2, !tbaa !47
  store i16 %i.ag, ptr %i.z, align 2, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.ah = getelementptr inbounds i8, ptr %i.z, i64 %i.ad
  store ptr %i.ah, ptr %i.aa, align 8, !tbaa !49
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i ], [ %i.o, %bb.g ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %i.c, %bb.g ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.ai = load <2 x ptr>, ptr %.0911.i.i.i, align 8, !tbaa !45, !alias.scope !212, !noalias !211
  store <2 x ptr> %i.ai, ptr %.012.i.i.i, align 8, !tbaa !45, !alias.scope !211, !noalias !212
  %i.aj = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50, !alias.scope !212, !noalias !211
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !50, !alias.scope !211, !noalias !212
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i, i8 0, i64 24, i1 false), !alias.scope !212, !noalias !211
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !207

_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %bb.g
  %.0.lcssa.i.i.i = phi ptr [ %i.o, %bb.g ], [ %i.an, %.lr.ph.i.i.i ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i27 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i27, label %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28

.lr.ph.i.i.i28:                                   ; preds = %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i28
  %.012.i.i.i29 = phi ptr [ %i.au, %.lr.ph.i.i.i28 ], [ %i.ao, %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  %.0911.i.i.i30 = phi ptr [ %i.at, %.lr.ph.i.i.i28 ], [ %1, %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !214)
  %i.ap = load <2 x ptr>, ptr %.0911.i.i.i30, align 8, !tbaa !45, !alias.scope !214, !noalias !213
  store <2 x ptr> %i.ap, ptr %.012.i.i.i29, align 8, !tbaa !45, !alias.scope !213, !noalias !214
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !50, !alias.scope !214, !noalias !213
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !50, !alias.scope !213, !noalias !214
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i30, i8 0, i64 24, i1 false), !alias.scope !214, !noalias !213
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i30, i64 24 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i29, i64 24 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.at, %i.b
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, label %.lr.ph.i.i.i28, !llvm.loop !207

_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33: ; preds = %.lr.ph.i.i.i28, %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i32 = phi ptr [ %i.ao, %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.au, %.lr.ph.i.i.i28 ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i34 = icmp eq ptr %i.c, null
  br i1 %.not.i34, label %_ZNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !56
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.ax, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ay) #26
  br label %_ZNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseISt6vectorItSaItEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIS_ItSaItEESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33, %bb.h
  store ptr %i.o, ptr %0, align 8, !tbaa !55
  store ptr %.0.lcssa.i.i.i32, ptr %i.a, align 8, !tbaa !54
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %i.k
  store ptr %i.az, ptr %i.av, align 8, !tbaa !56
  ret void

bb.i:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

bb.j:                                             ; preds = %_ZNSt15__new_allocatorItE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  %i.bd = tail call ptr @__cxa_begin_catch(ptr %i.bc) #25 ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.n) #26
  invoke void @__cxa_rethrow() #27
          to label %bb.m unwind label %bb.i

bb.k:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.ba

bb.l:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          catch ptr null
  %i.bf = extractvalue { ptr, i32 } %i.be, 0
  tail call void @__clang_call_terminate(ptr %i.bf) #24
  unreachable

bb.m:                                             ; preds = %bb.j
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_2
