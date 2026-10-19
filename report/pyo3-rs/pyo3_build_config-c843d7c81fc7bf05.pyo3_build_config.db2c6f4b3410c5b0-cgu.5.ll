Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pyo3-rs/original/pyo3_build_config-c843d7c81fc7bf05.pyo3_build_config.db2c6f4b3410c5b0-cgu.5?download=true
inline.NumInlined: 37
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtCsG258MDvU3F_3std4path7PathBufNvYB1m_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config:bb.a
  %or.cond.not = icmp ult i64 %i.d, %i.c
  br i1 %or.cond.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %.not4 = icmp samesign eq i64 %2, %i.c
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %2
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.d

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsG258MDvU3F_3std4path7PathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsG258MDvU3F_3std4path7PathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit
  %.sroa.0.05 = phi ptr [ %i.f, %.lr.ph ], [ %i.r, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsG258MDvU3F_3std4path7PathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05, i64 -24 ; 5 uses
  %i.j = call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %3, ptr align 8 %.sroa.0.05, ptr nonnull align 8 %i.i) #22
  br i1 %i.j, label %bb.e, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsG258MDvU3F_3std4path7PathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, i64 24, i1 false)
  store ptr %i.b, ptr %i.a, align 8
  store ptr %.sroa.0.05, ptr %i.g, align 8
  store i64 1, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.05, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  store ptr %i.i, ptr %i.g, align 8
  %i.k = icmp eq ptr %i.i, %0
  br i1 %i.k, label %._crit_edge11, label %.lr.ph10

bb.f:                                             ; preds = %bb.h
  %i.l = load ptr, ptr %i.g, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store ptr %i.n, ptr %i.g, align 8
  %i.m = icmp eq ptr %i.n, %0
  br i1 %i.m, label %._crit_edge11, label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.e, %bb.f
  %.sroa.0.0.i8 = phi ptr [ %i.n, %bb.f ], [ %i.i, %bb.e ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.0.i8, i64 -24 ; 5 uses
  %i.o = invoke zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %3, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.n)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph10
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCsG258MDvU3F_3std4path7PathBufEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a) #23
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %.lr.ph10
  br i1 %i.o, label %bb.f, label %._crit_edge11

._crit_edge11:                                    ; preds = %bb.f, %bb.h, %bb.e
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCsG258MDvU3F_3std4path7PathBufEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a)
  br label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsG258MDvU3F_3std4path7PathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.j:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.p

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsG258MDvU3F_3std4path7PathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %bb.d, %._crit_edge11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.e
  br i1 %.not, label %._crit_edge, label %bb.d
}

; Function Attrs: nonlazybind uwtable
define void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCsG258MDvU3F_3std4path7PathBufNvYB1s_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, i64 %1, ptr align 8 %2, i64 %3, ptr %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = icmp ult i64 %1, 2
  br i1 %i.e, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add i64 %1, 16
  %i.g = icmp ult i64 %3, %i.f
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = lshr i64 %1, 1                           ; 7 uses
  %i.i = icmp ugt i64 %1, 7
  br i1 %i.i, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %4, ptr nonnull align 8 %i.j, ptr align 8 %0) #22 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %4, ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.m) #22 ; 2 uses
  %i.o = zext i1 %i.k to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.o ; 3 uses
  %i.q = xor i1 %i.k, true
  %i.r = zext i1 %i.q to i64
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.r ; 4 uses
  %i.t = select i1 %i.n, i64 3, i64 2
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.t ; 4 uses
  %i.v = select i1 %i.n, i64 2, i64 3
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.v ; 3 uses
  %i.x = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %4, ptr nonnull align 8 %i.u, ptr align 8 %i.p) #22 ; 3 uses
  %i.y = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %4, ptr nonnull align 8 %i.w, ptr align 8 %i.s) #22 ; 3 uses
  %i.z = select i1 %i.x, ptr %i.u, ptr %i.p, !unpredictable !5
  %i.aa = select i1 %i.y, ptr %i.s, ptr %i.w, !unpredictable !5
  %i.ab = select i1 %i.y, ptr %i.u, ptr %i.s, !unpredictable !5
  %i.ac = select i1 %i.x, ptr %i.p, ptr %i.ab, !unpredictable !5 ; 3 uses
  %i.ad = select i1 %i.x, ptr %i.s, ptr %i.u, !unpredictable !5
  %i.ae = select i1 %i.y, ptr %i.w, ptr %i.ad, !unpredictable !5 ; 3 uses
  %i.af = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %4, ptr align 8 %i.ae, ptr align 8 %i.ac) #22 ; 2 uses
  %i.ag = select i1 %i.af, ptr %i.ae, ptr %i.ac, !unpredictable !5
  %i.ah = select i1 %i.af, ptr %i.ac, ptr %i.ae, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aj, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.h ; 8 uses
  %i.am = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.h ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ao = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %4, ptr nonnull align 8 %i.an, ptr align 8 %i.al) #22 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.ar = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %4, ptr nonnull align 8 %i.ap, ptr nonnull align 8 %i.aq) #22 ; 2 uses
  %i.as = zext i1 %i.ao to i64
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.as ; 3 uses
  %i.au = xor i1 %i.ao, true
  %i.av = zext i1 %i.au to i64
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.av ; 4 uses
  %i.ax = select i1 %i.ar, i64 3, i64 2
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.ax ; 4 uses
  %i.az = select i1 %i.ar, i64 2, i64 3
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %i.az ; 3 uses
  %i.bb = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %4, ptr nonnull align 8 %i.ay, ptr align 8 %i.at) #22 ; 3 uses
  %i.bc = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %4, ptr nonnull align 8 %i.ba, ptr align 8 %i.aw) #22 ; 3 uses
  %i.bd = select i1 %i.bb, ptr %i.ay, ptr %i.at, !unpredictable !5
  %i.be = select i1 %i.bc, ptr %i.aw, ptr %i.ba, !unpredictable !5
  %i.bf = select i1 %i.bc, ptr %i.ay, ptr %i.aw, !unpredictable !5
  %i.bg = select i1 %i.bb, ptr %i.at, ptr %i.bf, !unpredictable !5 ; 3 uses
  %i.bh = select i1 %i.bb, ptr %i.aw, ptr %i.ay, !unpredictable !5
  %i.bi = select i1 %i.bc, ptr %i.ba, ptr %i.bh, !unpredictable !5 ; 3 uses
  %i.bj = tail call zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %4, ptr align 8 %i.bi, ptr align 8 %i.bg) #22 ; 2 uses
  %i.bk = select i1 %i.bj, ptr %i.bi, ptr %i.bg, !unpredictable !5
  %i.bl = select i1 %i.bj, ptr %i.bg, ptr %i.bi, !unpredictable !5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i64 24, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.h
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.0.0 = phi i64 [ 4, %bb.e ], [ 1, %bb.f ] ; 2 uses
  store i64 0, ptr %i.d, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 2, ptr %.sroa.223.0..sroa_idx, align 8
  %.sroa.324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.324.0..sroa_idx, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %i.h, ptr %.sroa.425.0..sroa_idx, align 8
  %i.br = sub nuw i64 %1, %i.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.g
  %i.bu = invoke { i64, i64 } @_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitjEE4nextCsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.d, i64 2)
          to label %bb.h unwind label %.loopexit.split-lp ; 2 uses

.loopexit30:                                      ; preds = %.lr.ph, %._crit_edge
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit30, %.loopexit.split-lp, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.cq, %bb.q ], [ %lpad.loopexit, %.loopexit30 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.d) #23
          to label %bb.n unwind label %bb.m

bb.h:                                             ; preds = %.loopexit
  %i.bv = extractvalue { i64, i64 } %i.bu, 0
  %i.bw = trunc nuw i64 %i.bv to i1
  br i1 %i.bw, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bx = extractvalue { i64, i64 } %i.bu, 1      ; 3 uses
  %i.by = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bx
  %i.bz = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.bx ; 2 uses
  %i.ca = icmp eq i64 %i.bx, 0
  %.sroa.05.0 = select i1 %i.ca, i64 %i.h, i64 %i.br ; 2 uses
  %i.cb = icmp ult i64 %.sroa.0.0, %.sroa.05.0
  br i1 %i.cb, label %.lr.ph, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsG258MDvU3F_3std4path7PathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit, %bb.i
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterjKj2_EECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.d)
  store ptr %2, ptr %i.c, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %0, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %1, ptr %i.cd, align 8
  invoke void @_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort19bidirectional_mergeNtNtCsG258MDvU3F_3std4path7PathBufNvYB1g_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %2, i64 %1, ptr %0, ptr %4)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCsG258MDvU3F_3std4path7PathBufEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.c) #23
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.a
  ret void

bb.m:                                             ; preds = %bb.k, %.body
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.n:                                             ; preds = %bb.k, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ce, %bb.k ]
  resume { ptr, i32 } %.pn

.lr.ph:                                           ; preds = %bb.i, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsG258MDvU3F_3std4path7PathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit
  %.sroa.06.031 = phi i64 [ %i.cg, %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsG258MDvU3F_3std4path7PathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit ], [ %.sroa.0.0, %bb.i ] ; 4 uses
  %i.cg = add i64 %.sroa.06.031, 1                ; 2 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.by, i64 %.sroa.06.031
  %.idx = mul nuw nsw i64 %.sroa.06.031, 24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.ch, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -24 ; 4 uses
  %i.ck = invoke zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %4, ptr nonnull align 8 %i.ci, ptr nonnull align 8 %i.cj) #22
          to label %.noexc unwind label %.loopexit30

.noexc:                                           ; preds = %.lr.ph
  br i1 %i.ck, label %bb.o, label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsG258MDvU3F_3std4path7PathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit

bb.o:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 24, i1 false)
  store ptr %i.b, ptr %i.a, align 8
  store ptr %i.ci, ptr %i.bs, align 8
  store i64 1, ptr %i.bt, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false)
  store ptr %i.cj, ptr %i.bs, align 8
  %i.cl = icmp eq i64 %.sroa.06.031, 1
  br i1 %i.cl, label %._crit_edge, label %.lr.ph34

bb.p:                                             ; preds = %bb.r
  %i.cm = load ptr, ptr %i.bs, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, ptr noundef nonnull align 8 dereferenceable(24) %i.co, i64 24, i1 false)
  store ptr %i.co, ptr %i.bs, align 8
  %i.cn = icmp eq ptr %i.co, %i.bz
  br i1 %i.cn, label %._crit_edge, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.o, %bb.p
  %.sroa.0.0.i33 = phi ptr [ %i.co, %bb.p ], [ %i.cj, %bb.o ]
  %i.co = getelementptr inbounds i8, ptr %.sroa.0.0.i33, i64 -24 ; 5 uses
  %i.cp = invoke zeroext i1 @_RNvYNvYNtNtCsG258MDvU3F_3std4path7PathBufNtNtCskKLDkoKarTP_4core3cmp10PartialOrd2ltINtNtNtBH_3ops8function5FnMutTRB5_B1N_EE8call_mutCsiOEEQt9hBE2_17pyo3_build_config(ptr %4, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.co)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %.lr.ph34
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCsG258MDvU3F_3std4path7PathBufEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a) #23
          to label %.body unwind label %bb.s

bb.r:                                             ; preds = %.lr.ph34
  br i1 %i.cp, label %bb.p, label %._crit_edge

._crit_edge:                                      ; preds = %bb.p, %bb.r, %bb.o
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtNtB4_5slice4sort6shared9smallsort10CopyOnDropNtNtCsG258MDvU3F_3std4path7PathBufEECsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.a)
          to label %_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsG258MDvU3F_3std4path7PathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit unwind label %.loopexit30

bb.s:                                             ; preds = %bb.q
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtNtNtNtCskKLDkoKarTP_4core5slice4sort6shared9smallsort11insert_tailNtNtCsG258MDvU3F_3std4path7PathBufNvYB18_NtNtBa_3cmp10PartialOrd2ltECsiOEEQt9hBE2_17pyo3_build_config.exit: ; preds = %._crit_edge, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %exitcond.not = icmp eq i64 %i.cg, %.sroa.05.0
  br i1 %exitcond.not, label %.loopexit.backedge, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs7_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB6_7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB22_8adapters3map3MapINtNtB3f_6filter6FilterINtNtB3f_3zip3ZipINtNtNtB24_5slice4iter4IterB13_EINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEENCINvMsj_B15_NtB15_10BuildFlags16from_interpreterNtNtBc_4path7PathBufE0ENCB5G_s_0EEB17_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = invoke { i64, i64 } @_RNvXs3_NtNtCsG258MDvU3F_3std4hash6randomNtB5_11RandomStateNtNtCskKLDkoKarTP_4core7default7Default7defaultCsiOEEQt9hBE2_17pyo3_build_config()
          to label %bb.b unwind label %bb.g       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false)
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.d, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.e, ptr %.sroa.34.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  invoke void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2z_8adapters3map3MapINtNtB3B_6filter6FilterINtNtB3B_3zip3ZipINtNtNtB2B_5slice4iter4IterBO_EINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEENCINvMsj_BQ_NtBQ_10BuildFlags16from_interpreterNtNtB1L_4path7PathBufE0ENCB61_s_0EEBS_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagEEB1z_(ptr nonnull align 8 %i.b) #23
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  ret void

bb.e:                                             ; preds = %bb.g, %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.g
  %.pn10 = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %.pn10

bb.g:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtBG_6filter6FilterINtNtBG_3zip3ZipINtNtNtB4_5slice4iter4IterNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterReEENCINvMsj_B2d_NtB2d_10BuildFlags16from_interpreterNtNtCsG258MDvU3F_3std4path7PathBufE0ENCB3X_s_0EEB2f_(ptr align 8 %1) #23
          to label %bb.f unwind label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXs7_NtNtNtCsG258MDvU3F_3std11collections4hash3setINtB6_7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB22_8adapters6cloned6ClonedINtNtB3f_6filter6FilterINtNtNtB24_5slice4iter4IterB13_ENCNvMsj_B15_NtB15_10BuildFlags18from_sysconfigdata0EEEB17_(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = tail call { i64, i64 } @_RNvXs3_NtNtCsG258MDvU3F_3std4hash6randomNtB5_11RandomStateNtNtCskKLDkoKarTP_4core7default7Default7defaultCsiOEEQt9hBE2_17pyo3_build_config() #22 ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) @18, i64 32, i1 false)
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.d, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.e, ptr %.sroa.34.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  invoke void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2z_8adapters6cloned6ClonedINtNtB3B_6filter6FilterINtNtNtB2B_5slice4iter4IterBO_ENCNvMsj_BQ_NtBQ_10BuildFlags18from_sysconfigdata0EEEBS_(ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_9BuildFlagEEB1z_(ptr nonnull align 8 %i.b) #23
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define i8 @_RINvYNtNtCsG258MDvU3F_3std4path10ComponentsNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNvNtNtBJ_8iterator8Iterator12try_for_each4callNtB5_9ComponentINtNtNtBN_3ops12control_flow11ControlFlowIB37_uNtNtBN_3cmp8OrderingEENCINvNvB2b_12iter_compare7compareINtNtNtBL_8adapters3rev3RevB3_EB2R_uNCINvNvB29_5eq_by7compareB2R_B2R_NCINvYB4K_B29_2eqB4K_E0E0E0E0B36_ECsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, ptr align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 2 uses
  %i.b = alloca [56 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  call void @_RNvXsj_NtCsG258MDvU3F_3std4pathNtB5_10ComponentsNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr nonnull sret([56 x i8]) align 8 %i.b, ptr align 8 %0)
  %i.d = load i8, ptr %i.b, align 8
  %.not = icmp eq i8 %i.d, -1
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.e = call i8 @_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callNtNtCsG258MDvU3F_3std4path9ComponentINtNtNtBe_3ops12control_flow11ControlFlowIB1V_uNtNtBe_3cmp8OrderingEENCINvNvB8_12iter_compare7compareINtNtNtBc_8adapters3rev3RevNtB1m_10ComponentsEB1k_uNCINvNvB6_5eq_by7compareB1k_B1k_NCINvYB3x_B6_2eqB3x_E0E0E0E0CsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.c, ptr nonnull align 8 %i.a) #22
  %i.f = call i8 @_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowIBI_uNtNtB6_3cmp8OrderingEENtNtB4_9try_trait3Try6branchCsiOEEQt9hBE2_17pyo3_build_config(i8 %i.e) #22 ; 2 uses
  %.not4 = icmp eq i8 %i.f, 2
  br i1 %.not4, label %bb.b, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = call i8 @_RNvXNtNtCskKLDkoKarTP_4core3ops12control_flowINtB2_11ControlFlowIBI_uNtNtB6_3cmp8OrderingEENtNtB4_9try_trait3Try11from_outputCsiOEEQt9hBE2_17pyo3_build_config() #22
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = call i8 @_RNvXs_NtNtCskKLDkoKarTP_4core3ops12control_flowINtB4_11ControlFlowIBK_uNtNtB8_3cmp8OrderingEEINtNtB6_9try_trait12FromResidualIBK_B12_zEE13from_residualCsiOEEQt9hBE2_17pyo3_build_config(i8 %i.f) #22
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.0.0 = phi i8 [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i8 %.sroa.0.0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden zeroext i1 @_RNCINvCsiOEEQt9hBE2_17pyo3_build_config31__add_extension_module_link_argsNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutE0B4_(i32 %0) unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i32 %0, 95
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockINtNtCskKLDkoKarTP_4core6option6OptionmEE5force0E0CsiOEEQt9hBE2_17pyo3_build_config(ptr nofree readonly align 8 captures(none) %0, ptr align 4 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockINtNtCskKLDkoKarTP_4core6option6OptionmEE5force0CsiOEEQt9hBE2_17pyo3_build_config(ptr nonnull align 8 %i.b, ptr align 4 %1) #22
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr nonnull align 8 @19) #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNCINvMs0_NtNtCsG258MDvU3F_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB19_8LazyLockNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_17InterpreterConfigE5force0E0B1I_(ptr nofree readonly align 8 captures(none) %0, ptr align 4 %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNCNvMNtNtCsG258MDvU3F_3std4sync9lazy_lockINtB4_8LazyLockNtNtCsiOEEQt9hBE2_17pyo3_build_config5impl_17InterpreterConfigE5force0BX_(ptr nonnull align 8 %i.b, ptr align 4 %1) #22
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr nonnull align 8 @19) #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i64, i64 } @_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, i64 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %1, ptr %i.a, align 8
  %i.b = call zeroext i1 @_RNCNvNtNtCskKLDkoKarTP_4core3str7pattern13simd_contains0CsiOEEQt9hBE2_17pyo3_build_config(ptr align 8 %0, ptr nonnull align 8 %i.a) #22 ; 2 uses
  %i.c = load i64, ptr %i.a, align 8
  %.sroa.3.0 = select i1 %i.b, i64 %i.c, i64 undef
  %.sroa.0.0 = zext i1 %i.b to i64
  %i.d = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.e = insertvalue { i64, i64 } %i.d, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { i32, i32 } @_RNCNvNvCsiOEEQt9hBE2_17pyo3_build_config19rustc_minor_version19RUSTC_MINOR_VERSION0B5_(ptr nofree readnone captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [72 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [200 x i8], align 8               ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 2 uses
  %i.g = alloca [56 x i8], align 8                ; 2 uses
end_hunk_0
