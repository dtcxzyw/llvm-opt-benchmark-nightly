Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/complexity?download=true
inline.NumInlined: 527
inline.NumDeleted: 266
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN9benchmark13GetBigOStringB5cxx11ENS_4BigOE:bb.a
._crit_edge.i.i24:                                ; preds = %bb.a
  store i32 692988006, ptr %i.a, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i.i24, %._crit_edge.i.i20, %._crit_edge.i.i16, %._crit_edge.i.i12, %._crit_edge.i.i8, %._crit_edge.i.i4, %._crit_edge.i.i
  %.sink = phi i64 [ 4, %._crit_edge.i.i24 ], [ 3, %._crit_edge.i.i20 ], [ 4, %._crit_edge.i.i16 ], [ 3, %._crit_edge.i.i12 ], [ 3, %._crit_edge.i.i8 ], [ 3, %._crit_edge.i.i4 ], [ 1, %._crit_edge.i.i ]
  %.sink34 = phi i64 [ 20, %._crit_edge.i.i24 ], [ 19, %._crit_edge.i.i20 ], [ 20, %._crit_edge.i.i16 ], [ 19, %._crit_edge.i.i12 ], [ 19, %._crit_edge.i.i8 ], [ 19, %._crit_edge.i.i4 ], [ 17, %._crit_edge.i.i ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %i.b, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %.sink34
  store i8 0, ptr %i.c, align 1, !tbaa !12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN9benchmark11ComputeBigOERKSt6vectorINS_17BenchmarkReporter3RunESaIS2_EE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.3", align 8     ; 20 uses
  %3 = alloca %"class.std::vector.8", align 8     ; 19 uses
  %4 = alloca %"class.std::vector.8", align 8     ; 18 uses
  %5 = alloca %"struct.benchmark::LeastSq", align 8 ; 7 uses
  %6 = alloca %"struct.benchmark::LeastSq", align 8 ; 7 uses
  %7 = alloca %"struct.benchmark::LeastSq", align 8 ; 6 uses
  %8 = alloca %"struct.benchmark::BenchmarkName", align 8 ; 16 uses
  %9 = alloca %"struct.benchmark::BenchmarkReporter::Run", align 8 ; 63 uses
  %10 = alloca %"struct.benchmark::BenchmarkReporter::Run", align 8 ; 62 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !19     ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 592
  %i.h = icmp ult i64 %i.g, 2
  br i1 %i.h, label %bb.bb, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not223 = icmp eq ptr %i.c, %i.b
  br i1 %.not223, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70
  store ptr %i.bd, ptr %i.i, align 8
  store ptr %i.bb, ptr %i.j, align 8
  store ptr %i.bz, ptr %i.k, align 8
  store ptr %i.bx, ptr %i.l, align 8
  store ptr %i.ct, ptr %i.m, align 8
  store ptr %i.cr, ptr %i.n, align 8
  %.pre378 = load ptr, ptr %1, align 8, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.o = phi ptr [ %i.bd, %._crit_edge ], [ null, %bb.b ] ; 3 uses
  %i.p = phi ptr [ %.pre378, %._crit_edge ], [ %i.c, %bb.b ] ; 3 uses
  %i.q = phi ptr [ %i.cs, %._crit_edge ], [ null, %bb.b ] ; 11 uses
  %i.r = phi ptr [ %i.by, %._crit_edge ], [ null, %bb.b ] ; 3 uses
  %i.s = phi ptr [ %i.bc, %._crit_edge ], [ null, %bb.b ] ; 8 uses
  store ptr %i.s, ptr %2, align 8
  store ptr %i.r, ptr %3, align 8
  store ptr %i.q, ptr %4, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 460
  %i.u = load i32, ptr %i.t, align 4, !tbaa !20   ; 3 uses
  %i.v = icmp eq i32 %i.u, 8
  br i1 %i.v, label %bb.w, label %bb.x

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70
  %i.w = phi ptr [ null, %.lr.ph ], [ %i.cr, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 9 uses
  %i.x = phi ptr [ null, %.lr.ph ], [ %i.ct, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 9 uses
  %i.y = phi ptr [ null, %.lr.ph ], [ %i.bx, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.z = phi ptr [ null, %.lr.ph ], [ %i.bz, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.aa = phi ptr [ null, %.lr.ph ], [ %i.bb, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 5 uses
  %i.ab = phi ptr [ null, %.lr.ph ], [ %i.bd, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 5 uses
  %.sroa.0164.0224 = phi ptr [ %i.c, %.lr.ph ], [ %i.cu, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 5 uses
  %i.ac = phi ptr [ null, %.lr.ph ], [ %i.bc, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 7 uses
  %i.ad = phi ptr [ null, %.lr.ph ], [ %i.by, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 9 uses
  %i.ae = phi ptr [ null, %.lr.ph ], [ %i.cs, %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70 ] ; 17 uses
  %i.af = load atomic i8, ptr @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log acquire, align 8
  %i.ag = icmp eq i8 %i.af, 0
  br i1 %i.ag, label %bb.e, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, !prof !41

bb.e:                                             ; preds = %bb.d
  %i.ah = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #19
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr null, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !42
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN9benchmark8internal18GetNullLogInstanceEvE8null_log) #19
  br label %_ZN9benchmark8internal18GetNullLogInstanceEv.exit

_ZN9benchmark8internal18GetNullLogInstanceEv.exit: ; preds = %bb.f, %bb.e, %bb.d
  %i.ai = load ptr, ptr @_ZZN9benchmark8internal18GetNullLogInstanceEvE8null_log, align 8, !tbaa !42 ; 2 uses
  %.not.i55 = icmp eq ptr %i.ai, null
  br i1 %.not.i55, label %_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull @.str.7, i64 noundef 38)
          to label %_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit unwind label %.loopexit174 ; 0 uses

_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit: ; preds = %_ZN9benchmark8internal18GetNullLogInstanceEv.exit, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 472 ; 2 uses
  %.not.i56 = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i56, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !45
  store i64 %i.al, ptr %i.ab, align 8, !tbaa !45
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

bb.i:                                             ; preds = %_ZN9benchmark8internallsIA39_cEERNS0_7LogTypeES4_RKT_.exit
  %i.am = ptrtoint ptr %i.aa to i64
  %i.an = ptrtoint ptr %i.ac to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775800
  br i1 %i.ap, label %bb.j, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  store ptr %i.ab, ptr %i.i, align 8
  store ptr %i.aa, ptr %i.j, align 8
  store ptr %i.z, ptr %i.k, align 8
  store ptr %i.y, ptr %i.l, align 8
  store ptr %i.x, ptr %i.m, align 8
  store ptr %i.w, ptr %i.n, align 8
  store ptr %i.ac, ptr %2, align 8
  store ptr %i.ad, ptr %3, align 8
  store ptr %i.ae, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc57 unwind label %.loopexit.split-lp175

.noexc57:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.aq = ashr exact i64 %i.ao, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 1152921504606846975)
  %i.au = select i1 %i.as, i64 1152921504606846975, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #21
          to label %.noexc58 unwind label %.loopexit174 ; 4 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  %i.ay = load i64, ptr %i.ak, align 8, !tbaa !45
  store i64 %i.ay, ptr %i.ax, align 8, !tbaa !45
  %i.az = icmp sgt i64 %i.ao, 0
  br i1 %i.az, label %bb.k, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

bb.k:                                             ; preds = %.noexc58
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aw, ptr align 8 %i.ac, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i: ; preds = %bb.k, %.noexc58
  %.not.i17.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ao) #22
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.au
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit

_ZNSt6vectorIlSaIlEE9push_backERKl.exit:          ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i, %bb.h
  %i.bb = phi ptr [ %i.ba, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.aa, %bb.h ] ; 6 uses
  %.pn = phi ptr [ %i.ax, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.ab, %bb.h ]
  %i.bc = phi ptr [ %i.aw, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i ], [ %i.ac, %bb.h ] ; 6 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn, i64 8 ; 7 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 432
  %i.bf = load double, ptr %i.be, align 8, !tbaa !46
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 392 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !47
  %i.bi = sitofp i64 %i.bh to double              ; 2 uses
  %i.bj = fdiv double %i.bf, %i.bi                ; 2 uses
  %.not.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  store double %i.bj, ptr %i.z, align 8, !tbaa !48
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

bb.n:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit
  %i.bk = ptrtoint ptr %i.y to i64
  %i.bl = ptrtoint ptr %i.ad to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 6 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %bb.o, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  store ptr %i.bd, ptr %i.i, align 8
  store ptr %i.bb, ptr %i.j, align 8
  store ptr %i.z, ptr %i.k, align 8
  store ptr %i.y, ptr %i.l, align 8
  store ptr %i.x, ptr %i.m, align 8
  store ptr %i.w, ptr %i.n, align 8
  store ptr %i.bc, ptr %2, align 8
  store ptr %i.ad, ptr %3, align 8
  store ptr %i.ae, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc59 unwind label %.loopexit.split-lp180

.noexc59:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bo = ashr exact i64 %i.bm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 1152921504606846975)
  %i.bs = select i1 %i.bq, i64 1152921504606846975, i64 %i.br ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #21
          to label %.noexc60 unwind label %.loopexit179 ; 4 uses

.noexc60:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bv = getelementptr inbounds i8, ptr %i.bu, i64 %i.bm ; 2 uses
  store double %i.bj, ptr %i.bv, align 8, !tbaa !48
  %i.bw = icmp sgt i64 %i.bm, 0
  br i1 %i.bw, label %bb.p, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

bb.p:                                             ; preds = %.noexc60
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bu, ptr align 8 %i.ad, i64 %i.bm, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.p, %.noexc60
  %.not.i17.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.bm) #22
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  %.pre = load i64, ptr %i.bg, align 8, !tbaa !47
  %.pre385 = sitofp i64 %.pre to double
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit

_ZNSt6vectorIdSaIdEE9push_backEOd.exit:           ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i, %bb.m
  %.pre-phi = phi double [ %.pre385, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.bi, %bb.m ]
  %i.bx = phi ptr [ %11, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.y, %bb.m ] ; 4 uses
  %.pn275 = phi ptr [ %i.bv, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.z, %bb.m ]
  %i.by = phi ptr [ %i.bu, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i ], [ %i.ad, %bb.m ] ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.pn275, i64 8 ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 440
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !49
  %i.cc = fdiv double %i.cb, %.pre-phi            ; 2 uses
  %.not.i.i61 = icmp eq ptr %i.x, %i.w
  br i1 %.not.i.i61, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  store double %i.cc, ptr %i.x, align 8, !tbaa !48
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70

bb.s:                                             ; preds = %_ZNSt6vectorIdSaIdEE9push_backEOd.exit
  %i.cd = ptrtoint ptr %i.w to i64
  %i.ce = ptrtoint ptr %i.ae to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 6 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775800
  br i1 %i.cg, label %bb.t, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i62

bb.t:                                             ; preds = %bb.s
  store ptr %i.bd, ptr %i.i, align 8
  store ptr %i.bb, ptr %i.j, align 8
  store ptr %i.bz, ptr %i.k, align 8
  store ptr %i.bx, ptr %i.l, align 8
  store ptr %i.x, ptr %i.m, align 8
  store ptr %i.w, ptr %i.n, align 8
  store ptr %i.bc, ptr %2, align 8
  store ptr %i.by, ptr %3, align 8
  store ptr %i.ae, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #20
          to label %.noexc68 unwind label %.loopexit.split-lp185

.noexc68:                                         ; preds = %bb.t
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i62: ; preds = %bb.s
  %i.ch = ashr exact i64 %i.cf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i63 = tail call i64 @llvm.umax.i64(i64 %i.ch, i64 1)
  %i.ci = add nsw i64 %.sroa.speculated.i.i.i.i63, %i.ch ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.ch
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 1152921504606846975)
  %i.cl = select i1 %i.cj, i64 1152921504606846975, i64 %i.ck ; 3 uses
  %.not.i.i.i.i64 = icmp ne i64 %i.cl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i64)
  %i.cm = shl nuw nsw i64 %i.cl, 3
  %i.cn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cm) #21
          to label %.noexc69 unwind label %.loopexit184 ; 4 uses

.noexc69:                                         ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i62
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %i.cf ; 2 uses
  store double %i.cc, ptr %i.co, align 8, !tbaa !48
  %i.cp = icmp sgt i64 %i.cf, 0
  br i1 %i.cp, label %bb.u, label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65

bb.u:                                             ; preds = %.noexc69
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr align 8 %i.ae, i64 %i.cf, i1 false)
  br label %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65

_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65: ; preds = %bb.u, %.noexc69
  %.not.i17.i.i.i66 = icmp eq ptr %i.ae, null
  br i1 %.not.i17.i.i.i66, label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.cf) #22
  br label %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67

_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67: ; preds = %bb.v, %_ZNSt6vectorIdSaIdEE11_S_relocateEPdS2_S2_RS0_.exit16.i.i.i65
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cl
  br label %_ZNSt6vectorIdSaIdEE9push_backEOd.exit70

_ZNSt6vectorIdSaIdEE9push_backEOd.exit70:         ; preds = %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67, %bb.r
  %i.cr = phi ptr [ %i.cq, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67 ], [ %i.w, %bb.r ] ; 2 uses
  %.pn276 = phi ptr [ %i.co, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67 ], [ %i.x, %bb.r ]
  %i.cs = phi ptr [ %i.cn, %_ZNSt6vectorIdSaIdEE17_M_realloc_insertIJdEEEvN9__gnu_cxx17__normal_iteratorIPdS1_EEDpOT_.exit.i.i67 ], [ %i.ae, %bb.r ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.pn276, i64 8 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0164.0224, i64 592 ; 2 uses
  %.not = icmp eq ptr %i.cu, %i.b
  br i1 %.not, label %._crit_edge, label %bb.d

.loopexit174:                                     ; preds = %bb.g, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit176 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ab, ptr %i.i, align 8
  store ptr %i.aa, ptr %i.j, align 8
  store ptr %i.z, ptr %i.k, align 8
  store ptr %i.y, ptr %i.l, align 8
  store ptr %i.x, ptr %i.m, align 8
  store ptr %i.w, ptr %i.n, align 8
  store ptr %i.ac, ptr %2, align 8
  store ptr %i.ad, ptr %3, align 8
  store ptr %i.ae, ptr %4, align 8
  br label %bb.ax

.loopexit.split-lp175:                            ; preds = %bb.j
  %lpad.loopexit.split-lp177 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit179:                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit181 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bd, ptr %i.i, align 8
  store ptr %i.bb, ptr %i.j, align 8
  store ptr %i.z, ptr %i.k, align 8
  store ptr %i.y, ptr %i.l, align 8
  store ptr %i.x, ptr %i.m, align 8
  store ptr %i.w, ptr %i.n, align 8
  store ptr %i.bc, ptr %2, align 8
  store ptr %i.ad, ptr %3, align 8
  store ptr %i.ae, ptr %4, align 8
  br label %bb.ax

.loopexit.split-lp180:                            ; preds = %bb.o
  %lpad.loopexit.split-lp182 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

.loopexit184:                                     ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit.i.i.i62
  %lpad.loopexit186 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.bd, ptr %i.i, align 8
  store ptr %i.bb, ptr %i.j, align 8
  store ptr %i.bz, ptr %i.k, align 8
  store ptr %i.bx, ptr %i.l, align 8
  store ptr %i.x, ptr %i.m, align 8
  store ptr %i.w, ptr %i.n, align 8
  store ptr %i.bc, ptr %2, align 8
  store ptr %i.by, ptr %3, align 8
  store ptr %i.ae, ptr %4, align 8
  br label %bb.ax

.loopexit.split-lp185:                            ; preds = %bb.t
  %lpad.loopexit.split-lp187 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.w:                                             ; preds = %bb.c
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 464
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !50 ; 3 uses
  %.not.i71 = icmp eq ptr %i.o, %i.s              ; 2 uses
  br i1 %.not.i71, label %.loopexit173, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.w
  %i.cx = ptrtoint ptr %i.o to i64
  %i.cy = ptrtoint ptr %i.s to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3                 ; 3 uses
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.noexc72
  %i.db = extractelement <2 x double> %i.do, i64 0
  %i.dc = extractelement <2 x double> %i.do, i64 1
  %i.dd = fdiv double %i.dc, %i.db                ; 2 uses
  br label %.lr.ph47.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.noexc72
  %.03240.i = phi double [ %i.dk, %.noexc72 ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.03638.i = phi i64 [ %i.dp, %.noexc72 ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.de = phi <2 x double> [ %i.do, %.noexc72 ], [ zeroinitializer, %.lr.ph.i.preheader ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.03638.i
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !45, !noalias !51
  %i.dh = invoke noundef double %i.cw(i64 noundef %i.dg)
          to label %.noexc72 unwind label %.loopexit.split-lp169, !inline_history !54

.noexc72:                                         ; preds = %.lr.ph.i
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.03638.i
  %i.dj = load double, ptr %i.di, align 8, !tbaa !48, !noalias !51 ; 2 uses
  %i.dk = fadd double %.03240.i, %i.dj            ; 2 uses
  %i.dl = insertelement <2 x double> poison, double %i.dh, i64 0 ; 2 uses
  %i.dm = insertelement <2 x double> %i.dl, double %i.dj, i64 1
  %i.dn = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.do = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dm, <2 x double> %i.dn, <2 x double> %i.de) ; 3 uses
  %i.dp = add nuw i64 %.03638.i, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dp, %i.da
  br i1 %exitcond.not, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !55

.lr.ph47.i:                                       ; preds = %._crit_edge.i, %.noexc73
  %.03345.i = phi i64 [ %i.dz, %.noexc73 ], [ 0, %._crit_edge.i ] ; 3 uses
  %.03444.i = phi double [ %i.dy, %.noexc73 ], [ 0.000000e+00, %._crit_edge.i ]
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %.03345.i
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !45, !noalias !51
  %i.ds = invoke noundef double %i.cw(i64 noundef %i.dr)
          to label %.noexc73 unwind label %.thread, !inline_history !54

.noexc73:                                         ; preds = %.lr.ph47.i
  %i.dt = fmul double %i.dd, %i.ds
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.03345.i
  %i.dv = load double, ptr %i.du, align 8, !tbaa !48, !noalias !51
  %i.dw = fsub double %i.dv, %i.dt
  %i.dx = tail call noundef double @pow(double noundef %i.dw, double noundef 2.000000e+00) #19, !noalias !51
  %i.dy = fadd double %.03444.i, %i.dx            ; 2 uses
  %i.dz = add nuw i64 %.03345.i, 1                ; 2 uses
  %exitcond374.not = icmp eq i64 %i.dz, %i.da
  br i1 %exitcond374.not, label %.loopexit173.loopexit, label %.lr.ph47.i, !llvm.loop !57

.loopexit173.loopexit:                            ; preds = %.noexc73
  %.pre379 = load ptr, ptr %1, align 8, !tbaa !19
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre379, i64 464
end_hunk_0
