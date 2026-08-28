Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.09?download=true
inline.NumInlined: 2082
inline.NumDeleted: 649
loop-unroll.NumCompletelyUnrolled: 33
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job8statuses:bb.a

bb.i:                                             ; preds = %bb.j, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs8frGy5WneL6_4fish3env3var8StatusesEBH_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.j:                                             ; preds = %.outer._crit_edge.thread
  %i.z = add nuw nsw i64 %i.x, 1
  store i64 %i.z, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.ab = load i8, ptr %i.aa, align 2, !range !92, !noundef !13
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = icmp eq i32 %.sroa.05.0.ph.lcssa78137, 0
  %. = zext i1 %i.ad to i32
  %.sroa.05.1 = select i1 %i.ac, i32 %., i32 %.sroa.05.0.ph.lcssa78137
  store i64 %i.x, ptr %i.w, align 8
  store i32 %.sroa.05.1, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  br label %bb.i

bb.k:                                             ; preds = %.lr.ph213
  %i.ae = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noundef !13 ; 2 uses
  %i.af = icmp ult i64 %.sroa.7.079212, %i.ae
  br i1 %i.af, label %bb.w, label %.invoke

bb.l:                                             ; preds = %.lr.ph213
  %i.ag = trunc i32 %i.t to i8
  %i.ah = and i8 %i.ag, 127
  %i.ai = add nuw i8 %i.ah, 1
  %i.aj = icmp sgt i8 %i.ai, 1                    ; 2 uses
  %i.ak = and i32 %i.t, 127                       ; 5 uses
  br i1 %i.aj, label %bb.q, label %.thread

bb.m:                                             ; preds = %bb.q
  store i32 %i.bc, ptr %i.e, align 4
  %i.al = trunc nuw nsw i32 %i.ak to i8
  %i.am = add nuw i8 %i.al, 1
  %i.an = icmp sgt i8 %i.am, 1
  br i1 %i.an, label %.thread40, label %bb.o

.thread:                                          ; preds = %bb.l
  %i.ao = trunc nuw nsw i32 %i.ak to i8
  %i.ap = add nuw i8 %i.ao, 1
  %i.aq = icmp sgt i8 %i.ap, 1
  br i1 %i.aq, label %.thread39.invoke, label %bb.o

.thread39.invoke:                                 ; preds = %bb.v, %bb.p, %bb.s, %.thread
  %i.ar = phi ptr [ @304, %bb.s ], [ @304, %.thread ], [ @308, %bb.p ], [ @308, %bb.v ]
  %i.as = phi ptr [ inttoptr (i64 57 to ptr), %bb.s ], [ inttoptr (i64 57 to ptr), %.thread ], [ inttoptr (i64 49 to ptr), %bb.p ], [ inttoptr (i64 49 to ptr), %bb.v ]
  %i.at = phi ptr [ @305, %bb.s ], [ @305, %.thread ], [ @309, %bb.p ], [ @309, %bb.v ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.at) #38
          to label %.thread39.cont unwind label %.loopexit.split-lp

.thread39.cont:                                   ; preds = %.thread39.invoke
  unreachable

bb.n:                                             ; preds = %bb.o
  %i.au = lshr i32 %i.t, 8
  %i.av = and i32 %i.au, 255
  br label %bb.r

bb.o:                                             ; preds = %.thread, %bb.m
  %i.aw = icmp eq i32 %i.ak, 0
  br i1 %i.aw, label %bb.n, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = and i32 %i.t, 255
  %i.ay = icmp eq i32 %i.ax, 127
  br i1 %i.ay, label %_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus11stop_signal.exit.i, label %.thread39.invoke, !prof !419

_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus11stop_signal.exit.i: ; preds = %bb.p
  %i.az = lshr i32 %i.t, 8
  %i.ba = and i32 %i.az, 255
  %i.bb = add nuw nsw i32 %i.ba, 128
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.bc = invoke noundef i32 @_RNvMs0_NtCs8frGy5WneL6_4fish6signalNtB5_9RawSignal3new(i32 noundef %i.ak)
          to label %bb.m unwind label %.loopexit

bb.r:                                             ; preds = %bb.n, %_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus11stop_signal.exit.i
  %.sroa.0.1.i = phi i32 [ %i.av, %bb.n ], [ %i.bb, %_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus11stop_signal.exit.i ] ; 3 uses
  %i.bd = and i32 %i.t, 127                       ; 3 uses
  %i.be = trunc nuw nsw i32 %i.bd to i8
  %i.bf = add nuw i8 %i.be, 1
  %i.bg = icmp sgt i8 %i.bf, 1
  br i1 %i.bg, label %bb.s, label %bb.u

.thread40:                                        ; preds = %bb.m
  %i.bh = or disjoint i32 %i.ak, 128              ; 2 uses
  br label %_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus12status_value.exit25

bb.s:                                             ; preds = %bb.r
  br i1 %i.aj, label %._RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus11signal_code.exit.i22_crit_edge, label %.thread39.invoke, !prof !2287

._RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus11signal_code.exit.i22_crit_edge: ; preds = %bb.s
  %.pre = or disjoint i32 %i.bd, 128
  br label %_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus12status_value.exit25

bb.t:                                             ; preds = %bb.u
  %i.bi = lshr i32 %i.t, 8
  %i.bj = and i32 %i.bi, 255
  br label %_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus12status_value.exit25

bb.u:                                             ; preds = %bb.r
  %i.bk = icmp eq i32 %i.bd, 0
  br i1 %i.bk, label %bb.t, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bl = and i32 %i.t, 255
  %i.bm = icmp eq i32 %i.bl, 127
  br i1 %i.bm, label %_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus11stop_signal.exit.i21, label %.thread39.invoke, !prof !419

_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus11stop_signal.exit.i21: ; preds = %bb.v
  %i.bn = lshr i32 %i.t, 8
  %i.bo = and i32 %i.bn, 255
  %i.bp = add nuw nsw i32 %i.bo, 128
  br label %_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus12status_value.exit25

_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus12status_value.exit25: ; preds = %._RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus11signal_code.exit.i22_crit_edge, %.thread40, %_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus11stop_signal.exit.i21, %bb.t
  %.sroa.0.1.i42 = phi i32 [ %.sroa.0.1.i, %bb.t ], [ %.sroa.0.1.i, %_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus11stop_signal.exit.i21 ], [ %.sroa.0.1.i, %._RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus11signal_code.exit.i22_crit_edge ], [ %i.bh, %.thread40 ] ; 2 uses
  %.sroa.0.1.i20 = phi i32 [ %i.bj, %bb.t ], [ %i.bp, %_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus11stop_signal.exit.i21 ], [ %.pre, %._RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus11signal_code.exit.i22_crit_edge ], [ %i.bh, %.thread40 ]
  %i.bq = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noundef !13 ; 2 uses
  %i.br = icmp ult i64 %.sroa.7.079212, %i.bq
  br i1 %i.br, label %.outer, label %.invoke

.outer:                                           ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus12status_value.exit25
  %i.bs = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !nonnull !13, !noundef !13
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %.sroa.7.079212
  store i32 %.sroa.0.1.i20, ptr %i.bt, align 4
  %i.bu = icmp eq ptr %i.o, %i.k
  br i1 %i.bu, label %.outer._crit_edge.thread, label %.lr.ph

.invoke:                                          ; preds = %_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus12status_value.exit25, %bb.k
  %i.bv = phi i64 [ %i.ae, %bb.k ], [ %i.bq, %_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus12status_value.exit25 ]
  %i.bw = phi ptr [ @292, %bb.k ], [ @291, %_RNvMs_NtCs8frGy5WneL6_4fish4procNtB4_10ProcStatus12status_value.exit25 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.079212, i64 noundef %i.bv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bw) #40
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.w:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !nonnull !13, !noundef !13
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.sroa.7.079212
  store i32 %.sroa.05.0.ph86, ptr %i.by, align 4
  %i.bz = icmp eq ptr %i.o, %i.k
  br i1 %i.bz, label %.outer._crit_edge, label %bb.e

bb.x:                                             ; preds = %bb.c
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job9flags_mut(ptr noundef nonnull align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !13
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c, !prof !419

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.d, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %i.a, 1
  ret { ptr, ptr } %i.f

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @293) #38
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMs7_NtCs8frGy5WneL6_4fish9job_groupNtB5_8JobGroup23create_with_job_control(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0 = alloca [168 x i8], align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %i.c = invoke fastcc noundef i32 @_RNvMs6_NtCs8frGy5WneL6_4fish9job_groupNtB5_5JobId7acquire()
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.0.24..sroa_idx5 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.24..sroa_idx5, i8 0, i64 16, i1 false), !alias.scope !2353, !noalias !2356
  %i.d = zext i1 %1 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.f, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.0, i64 168, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i32 %i.c, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  store i32 0, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i8 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 201
  store i8 %i.d, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 202
  store i8 0, ptr %.sroa.10.0..sroa_idx, align 2
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !2358
  %i.g = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 209) 208, i64 noundef range(i64 1, 9) 8) #39, !noalias !2358 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEE3newB14_.exit, !prof !1092

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #40
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.a) #35
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.k, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEE3newB14_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.g, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret ptr %i.g

bb.f:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #35
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs7_NtCs8frGy5WneL6_4fish9job_groupNtB5_8JobGroup3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([192 x i8]) align 8 captures(none) dereferenceable(192) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  br i1 %3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %.invoke, label %bb.d, !prof !420

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.invoke, label %bb.d, !prof !420

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.c = zext i1 %3 to i8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store i8 %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 185
  %i.e = zext i1 %4 to i8
  store i8 %i.e, ptr %i.d, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 186
  store i8 0, ptr %i.f, align 2
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 3, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i32 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 180
  store i32 0, ptr %i.i, align 4
  ret void

bb.e:                                             ; preds = %.invoke
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #35
          to label %bb.g unwind label %bb.f

.invoke:                                          ; preds = %bb.b, %bb.c
  %i.k = phi ptr [ @296, %bb.c ], [ @294, %bb.b ]
  %i.l = phi ptr [ @297, %bb.c ], [ @295, %bb.b ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull %i.k, ptr noundef nonnull inttoptr (i64 83 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l) #40
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.j
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvMs7_NtCs8frGy5WneL6_4fish9job_groupNtB5_8JobGroup6create(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i1 noundef zeroext %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [208 x i8], align 8               ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0 = alloca [168 x i8], align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  br i1 %1, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = invoke fastcc noundef i32 @_RNvMs6_NtCs8frGy5WneL6_4fish9job_groupNtB5_5JobId7acquire()
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ 0, %bb.a ], [ %i.c, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.0.24..sroa_idx6 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.24..sroa_idx6, i8 0, i64 16, i1 false), !alias.scope !2361, !noalias !2364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.e, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.0, i64 168, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i64 3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i32 %.sroa.0.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %.sroa.7.0..sroa_idx, i8 0, i64 7, i1 false)
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !2366
  %i.f = tail call noundef align 8 dereferenceable_or_null(208) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 209) 208, i64 noundef range(i64 1, 9) 8) #39, !noalias !2366 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEE3newB14_.exit, !prof !1092

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 208) #40
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEEB1i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(208) %i.a) #35
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.j, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs1xwejQucwHj_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtCs8frGy5WneL6_4fish9job_group8JobGroupEE3newB14_.exit: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull align 8 dereferenceable(208) %i.a, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret ptr %i.f

bb.g:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #35
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvMs8_NtCs8frGy5WneL6_4fish2ioNtB5_12IoBufferfill11create_opts(i64 noundef %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 14 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 17 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = icmp sgt i32 %1, -1
  br i1 %i.m, label %bb.c, label %bb.b, !prof !419

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @298, ptr noundef nonnull inttoptr (i64 35 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @299) #38
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.n = tail call i64 @_RNvNtCs8frGy5WneL6_4fish3fds20make_autoclose_pipes() ; 2 uses
  %.sroa.017.0.extract.trunc = trunc i64 %i.n to i32 ; 6 uses
  %.sroa.418.0.extract.shift = lshr i64 %i.n, 32
  %.sroa.418.0.extract.trunc = trunc nuw i64 %.sroa.418.0.extract.shift to i32 ; 4 uses
  %i.o = icmp eq i32 %.sroa.017.0.extract.trunc, -1
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.p = tail call noundef nonnull ptr @_RNvXs6_NtCse7JGOylGlDZ_3nix5errnoNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorINtNtBB_7convert4FromNtNtB5_6consts5ErrnoE4from(i32 noundef %.sroa.418.0.extract.trunc)
  br label %bb.ac

bb.e:                                             ; preds = %bb.c
  %i.q = invoke noundef ptr @_RNvNtCs8frGy5WneL6_4fish3fds19make_fd_nonblocking(i32 noundef %.sroa.017.0.extract.trunc)
          to label %bb.g unwind label %bb.f       ; 4 uses

bb.f:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.g:                                             ; preds = %bb.e
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.h, label %bb.ah

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 0, ptr %i.t, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  store i8 0, ptr %.sroa.46.0..sroa_idx.i, align 4
  %.sroa.57.sroa.3.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %.sroa.57.sroa.3.0..sroa.57.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.57.sroa.4.0..sroa.57.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.57.sroa.5.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 0, ptr %.sroa.57.sroa.5.0..sroa.57.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.57.sroa.6.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %0, ptr %.sroa.57.sroa.6.0..sroa.57.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.57.sroa.7.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 0, ptr %.sroa.57.sroa.7.0..sroa.57.0..sroa_idx.sroa_idx.i, align 8
  %.sroa.57.sroa.8.0..sroa.57.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i8 0, ptr %.sroa.57.sroa.8.0..sroa.57.0..sroa_idx.sroa_idx.i, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39, !noalias !2369
  %i.u = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 209) 72, i64 noundef range(i64 1, 9) 8) #39, !noalias !2369 ; 7 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.i, label %bb.l, !prof !1092

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #40
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtCs8frGy5WneL6_4fish2io15SeparatedBufferEEEB27_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #35
          to label %bb.ba unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.l:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.u, ptr %i.h, align 8
  %i.y = atomicrmw add ptr %i.u, i64 1 monotonic, align 8
  %i.z = icmp slt i64 %i.y, 0
  br i1 %i.z, label %bb.w, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.u, ptr %i.c, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #39
  %i.aa = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 209) 8, i64 noundef range(i64 1, 9) 8) #39 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.n, label %bb.r, !prof !1092

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #40
          to label %.noexc.i29 unwind label %bb.o

.noexc.i29:                                       ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !2372
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.p, label %bb.v

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexNtNtCs8frGy5WneL6_4fish2io15SeparatedBufferEE9drop_slowB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #37
          to label %bb.v unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.r:                                             ; preds = %bb.m
  store ptr %i.u, ptr %i.aa, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs8frGy5WneL6_4fish2io10FD_MONITOR, i64 24) acquire, align 8
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %_RNvNtCs8frGy5WneL6_4fish2io10fd_monitor.exit.i, label %bb.s, !prof !419

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs8frGy5WneL6_4fish2io10FD_MONITOR, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  invoke void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs8frGy5WneL6_4fish2io10FD_MONITOR, i64 24), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
          to label %.noexc7.i unwind label %bb.t

end_hunk_0
begin_hunk_1_@_RNvNtNtCs8frGy5WneL6_4fish3env12config_paths17compute_fish_path:bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.d:                                             ; preds = %bb.b
  br i1 %i.m, label %bb.f, label %bb.e, !prof !419

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @517, i64 noundef 36, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @518) #40
          to label %bb.g unwind label %.body

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsaL1QbXo9JQH_3std2fs8metadataRNtNtB4_4path4PathECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.l)
          to label %bb.h unwind label %.body

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = load i64, ptr %i.c, align 8, !range !573, !noundef !13
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val17 = load ptr, ptr %i.p, align 8           ; 4 uses
  %.not.i19 = icmp eq i64 %i.o, 2
  br i1 %.not.i19, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  %i.q = ptrtoint ptr %.val17 to i64              ; 2 uses
  %i.r = and i64 %i.q, 3
  switch i64 %i.r, label %default.unreachable [
    i64 2, label %bb.l
    i64 3, label %bb.j
    i64 0, label %bb.l
    i64 1, label %bb.k
  ], !prof !395

default.unreachable:                              ; preds = %bb.z, %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.s = icmp ult ptr %.val17, inttoptr (i64 188978561024 to ptr)
  %i.t = and i64 %i.q, 1095216660480
  %i.u = icmp ne i64 %i.t, 1095216660480
  call void @llvm.assume(i1 %i.s)
  call void @llvm.assume(i1 %i.u)
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.v = getelementptr i8, ptr %.val17, i64 -1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.w, align 8, !alias.scope !3466
  store i8 3, ptr %i.b, align 8, !alias.scope !3466
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %bb.l unwind label %.body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.v

bb.l:                                             ; preds = %bb.i, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = load ptr, ptr %i.i, align 8, !nonnull !13, !noundef !13
  %i.y = load i64, ptr %i.k, align 8, !noundef !13
  %i.z = invoke { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.y)
          to label %bb.m unwind label %.body      ; 2 uses

bb.m:                                             ; preds = %bb.l
  %i.aa = extractvalue { ptr, i64 } %i.z, 0       ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.z, 1
  %i.ac = load ptr, ptr %i.i, align 8, !nonnull !13, !noundef !13
  %i.ad = load i64, ptr %i.k, align 8, !noundef !13
  %i.ae = invoke { ptr, i64 } @_RNvMs16_NtCsaL1QbXo9JQH_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad)
          to label %bb.n unwind label %.body      ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.af = extractvalue { ptr, i64 } %i.ae, 0      ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.ae, 1
  %.not13 = icmp eq ptr %i.aa, null
  %.not14 = icmp eq ptr %i.af, null
  %or.cond = select i1 %.not13, i1 true, i1 %.not14
  br i1 %or.cond, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = invoke { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core5sliceSh12strip_suffixAhja_ECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab, ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(10) @519)
          to label %bb.p unwind label %.body      ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0      ; 2 uses
  %.not15 = icmp eq ptr %i.ai, null
  br i1 %.not15, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = extractvalue { ptr, i64 } %i.ah, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvMs16_NtCsaL1QbXo9JQH_3std4pathNtB7_4Path4joinRNtNtNtB9_3ffi6os_str5OsStrECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef %i.aj)
          to label %bb.r unwind label %.body

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit.i unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body23 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit unwind label %bb.u

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body23

.body23:                                          ; preds = %bb.s, %bb.u
  %eh.lpad-body24 = phi { ptr, i32 } [ %i.am, %bb.u ], [ %i.ak, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  br label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.v

bb.v:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit, %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaL1QbXo9JQH_3std4path7PathBufECs8frGy5WneL6_4fish.exit, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.w

bb.w:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit32, %bb.v
  ret void

bb.x:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.y:                                             ; preds = %bb.c
  resume { ptr, i32 } %.pn

bb.z:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !3469)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val.i29 = load ptr, ptr %i.ao, align 8, !alias.scope !3469, !nonnull !13, !noundef !13 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3469
  %i.ap = ptrtoint ptr %.val.i29 to i64           ; 2 uses
  %i.aq = and i64 %i.ap, 3
  switch i64 %i.aq, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit32
    i64 3, label %bb.aa
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit32
    i64 1, label %bb.ab
  ], !prof !395

bb.aa:                                            ; preds = %bb.z
  %i.ar = icmp ult ptr %.val.i29, inttoptr (i64 188978561024 to ptr)
  %i.as = and i64 %i.ap, 1095216660480
  %i.at = icmp ne i64 %i.as, 1095216660480
  call void @llvm.assume(i1 %i.ar)
  call void @llvm.assume(i1 %i.at)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit32

bb.ab:                                            ; preds = %bb.z
  %i.au = getelementptr i8, ptr %.val.i29, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.au, ptr %i.av, align 8, !alias.scope !3472, !noalias !3469
  store i8 3, ptr %i.a, align 8, !alias.scope !3472, !noalias !3469
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av), !noalias !3469
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit32

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit32: ; preds = %bb.z, %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 -1, ptr %0, align 8
  br label %bb.w
}

; Function Attrs: nonlazybind uwtable
define range(i64 0, 8589934594) i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins4echo4echo(ptr noalias nofree noundef align 8 dereferenceable(432) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 3 uses
  %i.b = alloca [4 x i8], align 4                 ; 3 uses
  %i.c = alloca [56 x i8], align 8                ; 11 uses
  %i.d = alloca [1 x i8], align 1                 ; 8 uses
  %i.e = alloca [4 x i8], align 4                 ; 3 uses
  %i.f = alloca [4 x i8], align 4                 ; 3 uses
  %i.g = alloca [136 x i8], align 8               ; 27 uses
  %i.h = alloca [24 x i8], align 8                ; 26 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3475)
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4echo13parse_options.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %2, align 8, !alias.scope !3475, !noalias !3478, !nonnull !13, !align !887, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !3475, !noalias !3478, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3482
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %2, ptr %i.l, align 8, !noalias !3482
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %3, ptr %i.m, align 8, !noalias !3482
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store ptr null, ptr %i.n, align 8, !noalias !3482
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @520, ptr %i.o, align 8, !noalias !3482
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 5, ptr %i.p, align 8, !noalias !3482
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !noalias !3482
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 0, ptr %i.r, align 8, !noalias !3482
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr inttoptr (i64 4 to ptr), ptr %i.s, align 8, !noalias !3482
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i64 0, ptr %i.t, align 8, !noalias !3482
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 104 ; 5 uses
  store i64 0, ptr %i.u, align 8, !noalias !3482
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i32 63, ptr %i.v, align 8, !noalias !3482
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 134
  store i8 1, ptr %i.w, align 2, !noalias !3482
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 132
  store i8 0, ptr %i.y, align 4, !noalias !3482
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 133
  store i8 0, ptr %i.z, align 1, !noalias !3482
  store i64 0, ptr %i.g, align 8, !noalias !3482
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false), !noalias !3482
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !3482
  %.sroa.525.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %.sroa.525.0..sroa_idx.i, align 8, !noalias !3482
  br label %.outer

.outer:                                           ; preds = %bb.p, %bb.b
  %.sroa.018.0.i.ph = phi i64 [ 0, %bb.b ], [ %i.ao, %bb.p ] ; 2 uses
  %.sroa.7.0.i.ph = phi i8 [ 0, %bb.b ], [ %.sroa.7.1.i, %bb.p ] ; 2 uses
  %.sroa.5.0.i.ph = phi i8 [ 1, %bb.b ], [ %.sroa.5.1.i, %bb.p ] ; 2 uses
  %.sroa.01.0.i.ph = phi i8 [ 1, %bb.b ], [ %.sroa.01.1.i, %bb.p ] ; 2 uses
  %i.aa = icmp ugt i64 %.sroa.018.0.i.ph, -3
  %i.ab = add nuw i64 %.sroa.018.0.i.ph, 2
  br label %bb.c

bb.c:                                             ; preds = %.outer, %bb.p
  %.sroa.7.0.i = phi i8 [ %.sroa.7.1.i, %bb.p ], [ %.sroa.7.0.i.ph, %.outer ] ; 3 uses
  %.sroa.5.0.i = phi i8 [ %.sroa.5.1.i, %bb.p ], [ %.sroa.5.0.i.ph, %.outer ] ; 4 uses
  %.sroa.01.0.i = phi i8 [ %.sroa.01.1.i, %bb.p ], [ %.sroa.01.0.i.ph, %.outer ] ; 4 uses
  %i.ac = invoke noundef i32 @_RNvMCshMbxjpSxucW_12fish_wgetoptNtB2_9WGetopter8next_opt(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.g)
          to label %bb.e unwind label %.loopexit.i, !noalias !3478

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i:                             ; preds = %bb.u, %bb.t, %.invoke146.i, %bb.q, %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(136) %i.g) #35
          to label %common.resume unwind label %bb.z, !noalias !3483

bb.e:                                             ; preds = %bb.c
  switch i32 %i.ac, label %.invoke.i [
    i32 -1, label %bb.f
    i32 110, label %bb.o
    i32 101, label %bb.i
    i32 115, label %bb.j
    i32 69, label %bb.k
    i32 58, label %bb.l
    i32 59, label %bb.m
    i32 63, label %bb.n
  ], !prof !3484

bb.f:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %i.u, align 8, !noalias !3482, !noundef !13
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish.exit.i unwind label %bb.g, !noalias !3478

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.g)
          to label %common.resume unwind label %bb.h, !noalias !3478

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !noalias !3478
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.bw, %bb.d, %bb.g, %bb.w
  %common.resume.op = phi { ptr, i32 } [ %i.hg, %bb.bw ], [ %lpad.phi.i, %bb.d ], [ %i.aw, %bb.w ], [ %i.ae, %bb.g ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.f
  %.sroa.0.1.insert.ext = zext nneg i8 %.sroa.5.0.i to i64
  %.sroa.0.1.insert.shift = shl nuw nsw i64 %.sroa.0.1.insert.ext, 8
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.01.0.i to i64
  %.sroa.0.1.insert.insert = or disjoint i64 %.sroa.0.1.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.0.2.insert.ext = zext nneg i8 %.sroa.7.0.i to i64
  %.sroa.0.2.insert.shift = shl nuw nsw i64 %.sroa.0.2.insert.ext, 16
  %.sroa.0.2.insert.insert = or disjoint i64 %.sroa.0.1.insert.insert, %.sroa.0.2.insert.shift
  br label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4echo13parse_options.exit

.invoke.i:                                        ; preds = %bb.e, %bb.m
  %i.ag = phi ptr [ @524, %bb.m ], [ @527, %bb.e ]
  %i.ah = phi ptr [ inttoptr (i64 127 to ptr), %bb.m ], [ inttoptr (i64 65 to ptr), %bb.e ]
  %i.ai = phi ptr [ @525, %bb.m ], [ @528, %bb.e ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai) #40
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !3478

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.i:                                             ; preds = %bb.e
  br label %bb.o

bb.j:                                             ; preds = %bb.e
  br label %bb.o

bb.k:                                             ; preds = %bb.e
  br label %bb.o

bb.l:                                             ; preds = %bb.e
  %i.aj = load i64, ptr %i.u, align 8, !noalias !3482, !noundef !13 ; 2 uses
  %i.ak = add i64 %i.aj, -1                       ; 3 uses
  %i.al = icmp eq i64 %i.aj, 0
  br i1 %i.al, label %.invoke146.i, label %bb.s

bb.m:                                             ; preds = %bb.e
  br label %.invoke.i

bb.n:                                             ; preds = %bb.e
  %i.am = load i64, ptr %i.u, align 8, !noalias !3482, !noundef !13 ; 2 uses
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.invoke146.i, label %bb.y

bb.o:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.e
  %.sroa.7.1.i = phi i8 [ 0, %bb.k ], [ 1, %bb.i ], [ %.sroa.7.0.i, %bb.j ], [ %.sroa.7.0.i, %bb.e ] ; 2 uses
  %.sroa.5.1.i = phi i8 [ %.sroa.5.0.i, %bb.k ], [ %.sroa.5.0.i, %bb.i ], [ 0, %bb.j ], [ %.sroa.5.0.i, %bb.e ] ; 2 uses
  %.sroa.01.1.i = phi i8 [ %.sroa.01.0.i, %bb.k ], [ %.sroa.01.0.i, %bb.i ], [ %.sroa.01.0.i, %bb.j ], [ 0, %bb.e ] ; 2 uses
  br i1 %i.aa, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = load i64, ptr %i.u, align 8, !noalias !3482, !noundef !13 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, %i.ab
  br i1 %i.ap, label %.outer, label %bb.c

bb.q:                                             ; preds = %bb.o
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @521) #40
          to label %bb.r unwind label %.loopexit.split-lp.i, !noalias !3478

bb.r:                                             ; preds = %bb.u, %bb.q
  unreachable

bb.s:                                             ; preds = %bb.l
  %i.aq = icmp ult i64 %i.ak, %3
  br i1 %i.aq, label %bb.t, label %bb.u

.invoke146.i:                                     ; preds = %bb.n, %bb.l
  %i.ar = phi ptr [ @522, %bb.l ], [ @526, %bb.n ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_sub_overflow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar) #40
          to label %.cont147.i unwind label %.loopexit.split-lp.i, !noalias !3478

.cont147.i:                                       ; preds = %.invoke146.i
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.ak ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !3475, !noalias !3478, !nonnull !13, !align !887, !noundef !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !3475, !noalias !3478, !noundef !13
  invoke void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc24builtin_missing_argument(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.i, i64 noundef %i.k, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) null, i64 undef, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.at, i64 noundef %i.av, i1 noundef zeroext true)
          to label %bb.v unwind label %.loopexit.split-lp.i, !noalias !3483

bb.u:                                             ; preds = %bb.s
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ak, i64 noundef range(i64 0, 576460752303423488) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @523) #40
          to label %bb.r unwind label %.loopexit.split-lp.i, !noalias !3478

bb.v:                                             ; preds = %bb.t, %bb.y
  %.sroa.15.0 = phi i64 [ %i.ay, %bb.y ], [ undef, %bb.t ]
  %.sroa.0.0 = phi i64 [ %.sroa.016.0.insert.insert.i, %bb.y ], [ 8589934594, %bb.t ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.g)
          to label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4echo13parse_options.exit unwind label %bb.w, !noalias !3483

bb.w:                                             ; preds = %bb.v
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.g)
          to label %common.resume unwind label %bb.x, !noalias !3483

bb.x:                                             ; preds = %bb.w
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !noalias !3483
  unreachable

bb.y:                                             ; preds = %bb.n
  %i.ay = add i64 %i.am, -1
  %.sroa.517.0.insert.ext.i = zext nneg i8 %.sroa.7.0.i.ph to i64
  %.sroa.517.0.insert.shift.i = shl nuw nsw i64 %.sroa.517.0.insert.ext.i, 16
  %.sroa.3.0.insert.ext.i = zext nneg i8 %.sroa.5.0.i.ph to i64
  %.sroa.3.0.insert.shift.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i, 8
  %.sroa.3.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.shift.i, %.sroa.517.0.insert.shift.i
  %.sroa.016.0.insert.ext.i = zext nneg i8 %.sroa.01.0.i.ph to i64
  %.sroa.016.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.insert.i, %.sroa.016.0.insert.ext.i
  br label %bb.v

bb.z:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !noalias !3483
  unreachable

_RNvNtNtCs8frGy5WneL6_4fish8builtins4echo13parse_options.exit: ; preds = %bb.v, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish.exit.i
  %.sroa.15.1 = phi i64 [ %i.ad, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish.exit.i ], [ %.sroa.15.0, %bb.v ] ; 4 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.2.insert.insert, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCshMbxjpSxucW_12fish_wgetopt9WGetopterECs8frGy5WneL6_4fish.exit.i ], [ %.sroa.0.0, %bb.v ]
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(136) %i.g), !noalias !3483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3482
  %.sroa.0.1.fr = freeze i64 %.sroa.0.1           ; 5 uses
  %4 = and i64 %.sroa.0.1.fr, 255
  %i.ba = icmp eq i64 %4, 2
  br i1 %i.ba, label %_RNvNtNtCs8frGy5WneL6_4fish8builtins4echo13parse_options.exit.thread, label %bb.aa

_RNvNtNtCs8frGy5WneL6_4fish8builtins4echo13parse_options.exit.thread: ; preds = %bb.a, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4echo13parse_options.exit
  %.sroa.0.190 = phi i64 [ %.sroa.0.1.fr, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4echo13parse_options.exit ], [ 8589934594, %bb.a ]
  %.sroa.0.4.extract.shift = and i64 %.sroa.0.190, -4294967296
  %5 = or disjoint i64 %.sroa.0.4.extract.shift, 1
  br label %bb.by

bb.aa:                                            ; preds = %_RNvNtNtCs8frGy5WneL6_4fish8builtins4echo13parse_options.exit
  %6 = trunc i64 %.sroa.0.1.fr to i1
  %7 = and i64 %.sroa.0.1.fr, 256
  %8 = icmp ne i64 %7, 0                          ; 2 uses
  %9 = and i64 %.sroa.0.1.fr, 65536
  %.not = icmp eq i64 %9, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 8 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 9 uses
  store i64 0, ptr %.sroa.526.0..sroa_idx, align 8
  %i.bb = icmp ugt i64 %.sroa.15.1, %3
  br i1 %i.bb, label %bb.bo, label %bb.ab, !prof !420

bb.ab:                                            ; preds = %bb.aa
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.15.1 ; 3 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %3 ; 3 uses
  %i.be = icmp samesign eq i64 %.sroa.15.1, %3
  br i1 %i.be, label %.thread, label %.lr.ph185

.lr.ph185:                                        ; preds = %bb.ab
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %.sroa.2.sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %.sroa.2.sroa.2.sroa.2.sroa.3.0..sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %.sroa.2.sroa.2.sroa.2.sroa.5.0..sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 5 uses
  br i1 %.not, label %.lr.ph185.split, label %.lr.ph185.split.us.preheader

.lr.ph185.split.us.preheader:                     ; preds = %.lr.ph185, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.us
  %i.bf = phi i64 [ %i.eq, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.us ], [ 0, %.lr.ph185 ] ; 4 uses
  %.sroa.073.0183.us = phi ptr [ %i.bg, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.us ], [ %i.bc, %.lr.ph185 ] ; 3 uses
  %.sroa.8.0182.us = phi i64 [ %i.bh, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.us ], [ 0, %.lr.ph185 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.073.0183.us, i64 16 ; 2 uses
  %i.bh = add nuw nsw i64 %.sroa.8.0182.us, 1
  %i.bi = icmp ne i64 %.sroa.8.0182.us, 0
  %or.cond2.us = and i1 %8, %i.bi
  br i1 %or.cond2.us, label %bb.ac, label %.split.us189

bb.ac:                                            ; preds = %.lr.ph185.split.us.preheader
  %i.bj = load i64, ptr %i.h, align 8, !range !14, !alias.scope !3485, !noundef !13
  %i.bk = icmp eq i64 %i.bf, %i.bj
  br i1 %i.bk, label %bb.ad, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit40.us

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #37
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit40.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit40.us: ; preds = %bb.ad, %bb.ac
  %i.bl = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !alias.scope !3485, !nonnull !13, !noundef !13
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bf
  store i32 32, ptr %i.bm, align 4
  %i.bn = add i64 %i.bf, 1                        ; 2 uses
  store i64 %i.bn, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !3485
  br label %.split.us189

.split.us189:                                     ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit40.us, %.lr.ph185.split.us.preheader
  %i.bo = phi i64 [ %i.bn, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit40.us ], [ %i.bf, %.lr.ph185.split.us.preheader ]
  %i.bp = load ptr, ptr %.sroa.073.0183.us, align 8, !nonnull !13, !align !887, !noundef !13 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.073.0183.us, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !noundef !13
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.br ; 4 uses
  br label %bb.ae

bb.ae:                                            ; preds = %.split.us189, %.backedge.us
  %i.bt = phi i64 [ %i.bo, %.split.us189 ], [ %storemerge, %.backedge.us ] ; 9 uses
  %.sroa.16.0.us = phi i32 [ -2, %.split.us189 ], [ %.sroa.16.0.be.us, %.backedge.us ] ; 2 uses
  %.sroa.074.0.us = phi ptr [ %i.bp, %.split.us189 ], [ %.sroa.074.0.be.us, %.backedge.us ] ; 4 uses
  switch i32 %.sroa.16.0.us, label %bb.ah [
    i32 -2, label %bb.af
    i32 -1, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.us
  ]

bb.af:                                            ; preds = %bb.ae
  %i.bu = icmp eq ptr %.sroa.074.0.us, %i.bs
  br i1 %i.bu, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.us, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bv = load i32, ptr %.sroa.074.0.us, align 4, !noalias !3488, !noundef !13 ; 4 uses
  %i.bw = xor i32 %i.bv, 55296
  %i.bx = add i32 %i.bw, -1114112
  %i.by = icmp ult i32 %i.bx, -1112064
  br i1 %i.by, label %.split.i, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread99.us186

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread99.us186: ; preds = %bb.ag
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.074.0.us, i64 4
  %i.ca = icmp samesign ult i32 %i.bv, 1114112
  call void @llvm.assume(i1 %i.ca)
  br label %bb.ah

bb.ah:                                            ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread99.us186, %bb.ae
  %.sroa.014.0104.us = phi i32 [ %i.bv, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread99.us186 ], [ %.sroa.16.0.us, %bb.ae ] ; 4 uses
  %.sroa.074.1103.us = phi ptr [ %i.bz, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread99.us186 ], [ %.sroa.074.0.us, %bb.ae ] ; 6 uses
  %i.cb = icmp eq i32 %.sroa.014.0104.us, 92
  br i1 %i.cb, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cc = icmp ult i32 %.sroa.014.0104.us, 1114112
  call void @llvm.assume(i1 %i.cc)
  %i.cd = load i64, ptr %i.h, align 8, !range !14, !alias.scope !3491, !noundef !13
  %i.ce = icmp eq i64 %i.bt, %i.cd
  br i1 %i.ce, label %bb.aj, label %.backedge.us

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #37
          to label %.backedge.us unwind label %.loopexit.split-lp.loopexit.split.split.us

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.074.1103.us) ]
  %i.cf = icmp eq ptr %.sroa.074.1103.us, %i.bs
  br i1 %i.cf, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.074.1103.us, i64 4 ; 13 uses
  %i.ch = load i32, ptr %.sroa.074.1103.us, align 4, !noalias !3494, !noundef !13 ; 9 uses
  %i.ci = xor i32 %i.ch, 55296
  %i.cj = add i32 %i.ci, -1114112
  %i.ck = icmp ult i32 %i.cj, -1112064
  br i1 %i.ck, label %.split.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us: ; preds = %bb.al
  %i.cl = icmp ult i32 %i.ch, 1114112
  call void @llvm.assume(i1 %i.cl)
  switch i32 %i.ch, label %bb.au [
    i32 99, label %thread-pre-split
    i32 97, label %._crit_edge.us
    i32 98, label %bb.at
    i32 101, label %bb.as
    i32 102, label %bb.ar
    i32 110, label %bb.aq
    i32 114, label %bb.ap
    i32 116, label %bb.ao
    i32 118, label %bb.an
    i32 92, label %bb.am
  ]

bb.am:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us
  br label %._crit_edge.us

bb.an:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us
  br label %._crit_edge.us

bb.ao:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us
  br label %._crit_edge.us

bb.ap:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us
  br label %._crit_edge.us

bb.aq:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us
  br label %._crit_edge.us

bb.ar:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us
  br label %._crit_edge.us

bb.as:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us
  br label %._crit_edge.us

bb.at:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us
  br label %._crit_edge.us

bb.au:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3502
  %i.cm = and i32 %i.ch, 2097144
  %i.cn = icmp eq i32 %i.cm, 48
  br i1 %i.cn, label %bb.ax, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.co = icmp eq i32 %i.ch, 120
  br i1 %i.co, label %bb.aw, label %bb.bj

bb.aw:                                            ; preds = %bb.av
  store i8 16, ptr %i.d, align 1, !noalias !3502
  br label %.lr.ph.i.us

bb.ax:                                            ; preds = %bb.au
  store i8 8, ptr %i.d, align 1, !noalias !3502
  %i.cp = icmp eq i32 %i.ch, 48
  %..i.us = select i1 %i.cp, i64 4, i64 3
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.ax, %bb.aw
  %.sroa.0.054.i.us = phi i64 [ 0, %bb.ax ], [ 1, %bb.aw ] ; 2 uses
  %.sroa.04.053.i.us = phi i64 [ %..i.us, %bb.ax ], [ 2, %bb.aw ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3502
  store ptr %i.d, ptr %i.c, align 8, !noalias !3502
  store i64 %.sroa.0.054.i.us, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !noalias !3502
  store ptr %i.cg, ptr %.sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !3502
  store ptr %i.bs, ptr %.sroa.2.sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !3502
  store i32 -2, ptr %.sroa.2.sroa.2.sroa.2.sroa.3.0..sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !3502
  store i32 %i.ch, ptr %.sroa.2.sroa.2.sroa.2.sroa.5.0..sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !3502
  br label %bb.ay

bb.ay:                                            ; preds = %bb.bh, %.lr.ph.i.us
  %.val.i76.i.us = phi ptr [ %i.d, %.lr.ph.i.us ], [ %.val.i.i.us, %bb.bh ]
  %i.cq = phi i64 [ %.sroa.04.053.i.us, %.lr.ph.i.us ], [ %i.dx, %bb.bh ]
  %.sroa.05.064.i.us = phi i64 [ %.sroa.0.054.i.us, %.lr.ph.i.us ], [ %i.dt, %bb.bh ] ; 4 uses
  %.sroa.016.063.i.us = phi i8 [ 0, %.lr.ph.i.us ], [ %i.dw, %bb.bh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3506)
  call void @llvm.experimental.noalias.scope.decl(metadata !3509)
  %i.cr = add i64 %i.cq, -1
  store i64 %i.cr, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !3512, !noalias !3502
  call void @llvm.experimental.noalias.scope.decl(metadata !3513)
  %i.cs = load i64, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3516, !noalias !3502, !noundef !13 ; 3 uses
  %.not.i.i.i21.i.us = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i21.i.us, label %bb.bb, label %bb.az, !prof !419

bb.az:                                            ; preds = %bb.ay
  store i64 0, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !3516, !noalias !3502
  %i.ct = load i32, ptr %.sroa.2.sroa.2.sroa.2.sroa.5.0..sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !range !3517, !alias.scope !3518, !noalias !3502, !noundef !13
  store i32 -2, ptr %.sroa.2.sroa.2.sroa.2.sroa.5.0..sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !3518, !noalias !3502
  switch i32 %i.ct, label %bb.ba [
    i32 -2, label %.sink.split.i.i.i.i.i.us
    i32 -1, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.thread.i.us
  ]

bb.ba:                                            ; preds = %bb.az
  %i.cu = add i64 %i.cs, -1
  br label %.sink.split.i.i.i.i.i.us

.sink.split.i.i.i.i.i.us:                         ; preds = %bb.ba, %bb.az
  %.sink.i.i.i.i.i.us = phi i64 [ %i.cu, %bb.ba ], [ %i.cs, %bb.az ]
  %i.cv = invoke fastcc noundef i32 @_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters8peekableINtB4_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32ENtNtNtB8_6traits8iterator8Iterator3nthCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.i, i64 noundef %.sink.i.i.i.i.i.us) #41
          to label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_8peekable8PeekableIB1g_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.us unwind label %.loopexit.split.us

bb.bb:                                            ; preds = %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !3521)
  %i.cw = load i32, ptr %.sroa.2.sroa.2.sroa.2.sroa.5.0..sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !range !3517, !alias.scope !3524, !noalias !3502, !noundef !13 ; 2 uses
  store i32 -2, ptr %.sroa.2.sroa.2.sroa.2.sroa.5.0..sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !3524, !noalias !3502
  %.not.i.i.i.i.i.us = icmp eq i32 %i.cw, -2
  br i1 %.not.i.i.i.i.i.us, label %bb.bc, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_8peekable8PeekableIB1g_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.us

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !3525)
  %i.cx = load i32, ptr %.sroa.2.sroa.2.sroa.2.sroa.3.0..sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !range !3517, !alias.scope !3528, !noalias !3502, !noundef !13 ; 2 uses
  store i32 -2, ptr %.sroa.2.sroa.2.sroa.2.sroa.3.0..sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !3528, !noalias !3502
  %.not.i.i.i.i.i.i.us = icmp eq i32 %i.cx, -2
  br i1 %.not.i.i.i.i.i.i.us, label %bb.bd, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_8peekable8PeekableIB1g_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.us

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_8peekable8PeekableIB1g_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.us: ; preds = %bb.bc, %bb.bb, %.sink.split.i.i.i.i.i.us
  %.sroa.0.0.i.i.i50.us = phi i32 [ %i.cw, %bb.bb ], [ %i.cx, %bb.bc ], [ %i.cv, %.sink.split.i.i.i.i.i.us ] ; 2 uses
  %.not.i23.i.us = icmp eq i32 %.sroa.0.0.i.i.i50.us, -1
  br i1 %.not.i23.i.us, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.thread.i.us, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_8peekable8PeekableIB1g_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i._crit_edge.i.us

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_8peekable8PeekableIB1g_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i._crit_edge.i.us: ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_8peekable8PeekableIB1g_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.us
  %.val.i.pre.i.us = load ptr, ptr %i.c, align 8, !alias.scope !3506, !noalias !3502
  br label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !3529)
  %i.cy = load ptr, ptr %.sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !3532, !noalias !3502, !nonnull !13, !noundef !13 ; 3 uses
  %i.cz = load ptr, ptr %.sroa.2.sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !3532, !noalias !3502, !nonnull !13, !noundef !13
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.thread.i.us, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store ptr %i.db, ptr %.sroa.2.sroa.2.sroa.2.0..sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !alias.scope !3532, !noalias !3502
  %i.dc = load i32, ptr %i.cy, align 4, !noalias !3533, !noundef !13 ; 4 uses
  %i.dd = xor i32 %i.dc, 55296
  %i.de = add i32 %i.dd, -1114112
  %i.df = icmp ult i32 %i.de, -1112064
  br i1 %i.df, label %.split.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_8peekable8PeekableIB1g_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread6.i.i.us

_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_8peekable8PeekableIB1g_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread6.i.i.us: ; preds = %bb.be
  %i.dg = icmp ult i32 %i.dc, 1114112
  call void @llvm.assume(i1 %i.dg)
  br label %bb.bf

bb.bf:                                            ; preds = %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_8peekable8PeekableIB1g_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread6.i.i.us, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_8peekable8PeekableIB1g_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i._crit_edge.i.us
  %.val.i.i.us = phi ptr [ %.val.i76.i.us, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_8peekable8PeekableIB1g_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread6.i.i.us ], [ %.val.i.pre.i.us, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_8peekable8PeekableIB1g_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i._crit_edge.i.us ] ; 2 uses
  %.sroa.0.0.i9.i.i.us = phi i32 [ %i.dc, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_8peekable8PeekableIB1g_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.thread6.i.i.us ], [ %.sroa.0.0.i.i.i50.us, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_8peekable8PeekableIB1g_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i._crit_edge.i.us ] ; 3 uses
  %i.dh = load i8, ptr %.val.i.i.us, align 1, !noalias !3502, !noundef !13 ; 3 uses
  %i.di = add i8 %i.dh, -2
  %or.cond.i.i.i.i.us = icmp ult i8 %i.di, 35
  br i1 %or.cond.i.i.i.i.us, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.i.us, label %.split201.us, !prof !2595

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.i.us: ; preds = %bb.bf
  %i.dj = zext nneg i8 %i.dh to i32
  %i.dk = icmp samesign ugt i32 %.sroa.0.0.i9.i.i.us, 57
  %i.dl = icmp samesign ugt i8 %i.dh, 10
  %or.cond1.i.i.i.i.us = and i1 %i.dk, %i.dl
  %i.dm = add nsw i32 %.sroa.0.0.i9.i.i.us, -65
  %i.dn = and i32 %i.dm, -33
  %i.do = add nuw nsw i32 %i.dn, 10
  %i.dp = add nsw i32 %.sroa.0.0.i9.i.i.us, -48
  %.sroa.02.0.i.i.i.i.us = select i1 %or.cond1.i.i.i.i.us, i32 %i.do, i32 %i.dp ; 2 uses
  %i.dq = icmp ult i32 %.sroa.02.0.i.i.i.i.us, %i.dj
  br i1 %i.dq, label %bb.bg, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.thread.i.us

bb.bg:                                            ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.i.us
  %i.dr = icmp eq i64 %.sroa.05.064.i.us, -1
  br i1 %i.dr, label %.split203.us, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ds = trunc nuw nsw i32 %.sroa.02.0.i.i.i.i.us to i8
  %i.dt = add nuw i64 %.sroa.05.064.i.us, 1       ; 2 uses
  %i.du = load i8, ptr %i.d, align 1, !noalias !3502, !noundef !13
  %i.dv = mul i8 %i.du, %.sroa.016.063.i.us
  %i.dw = add i8 %i.dv, %i.ds                     ; 2 uses
  %i.dx = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !3534, !noalias !3502, !noundef !13 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.thread.thread.i.us, label %bb.ay

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.thread.thread.i.us: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3502
  br label %bb.bi

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.thread.i.us: ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.i.us, %bb.bd, %_RNvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters4takeINtB4_4TakeINtNtB6_4skip4SkipINtNtB6_8peekable8PeekableIB1g_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENtNtNtB8_6traits8iterator8Iterator4nextCs8frGy5WneL6_4fish.exit.i.i.us, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3502
  %.not20.i.us = icmp eq i64 %.sroa.05.064.i.us, 0
  br i1 %.not20.i.us, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.thread.i.us, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.thread.thread.i.us
  %.sroa.7.0.us = phi i8 [ %i.dw, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.thread.thread.i.us ], [ %.sroa.016.063.i.us, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.thread.i.us ]
  %.sroa.5.0.us = phi i64 [ %i.dt, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.thread.thread.i.us ], [ %.sroa.05.064.i.us, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.thread.i.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3502
  %i.dz = invoke noundef i32 @_RNvCskr4qsHYS30i_15fish_widestring19encode_byte_to_char(i8 noundef %.sroa.7.0.us)
          to label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us.peel unwind label %.loopexit.split-lp.loopexit.split.split.us ; 2 uses

bb.bj:                                            ; preds = %bb.av, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9map_whileINtB5_8MapWhileINtNtB7_4take4TakeINtNtB7_4skip4SkipINtNtB7_8peekable8PeekableIB1I_NtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32EEEENCINvNtNtCs8frGy5WneL6_4fish8builtins4echo22parse_numeric_sequenceB27_E0ENtNtNtB9_6traits8iterator8Iterator4nextB3j_.exit.thread.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3502
  br label %._crit_edge.us

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us.peel: ; preds = %bb.bi
  %exitcond.peel.not = icmp eq i64 %.sroa.5.0.us, 1
  br i1 %exitcond.peel.not, label %._crit_edge.us, label %.lr.ph.us.peel.next

.lr.ph.us.peel.next:                              ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us.peel, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us
  %.sroa.029.0177.us = phi i64 [ %i.ea, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us ], [ 1, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us.peel ]
  %.sroa.074.2176.us = phi ptr [ %.sroa.074.3.us, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us ], [ %i.cg, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us.peel ] ; 5 uses
  %i.ea = add nuw i64 %.sroa.029.0177.us, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.074.2176.us) ]
  %i.eb = icmp eq ptr %.sroa.074.2176.us, %i.bs
  br i1 %i.eb, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us, label %bb.bk

bb.bk:                                            ; preds = %.lr.ph.us.peel.next
  %i.ec = load i32, ptr %.sroa.074.2176.us, align 4, !noalias !3537, !noundef !13 ; 3 uses
  %i.ed = xor i32 %i.ec, 55296
  %i.ee = add i32 %i.ed, -1114112
  %i.ef = icmp ult i32 %i.ee, -1112064
  br i1 %i.ef, label %.split.i60, label %.split7.i58.us

.split7.i58.us:                                   ; preds = %bb.bk
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.074.2176.us, i64 4
  %i.eh = icmp ult i32 %i.ec, 1114112
  call void @llvm.assume(i1 %i.eh)
  br label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us: ; preds = %.split7.i58.us, %.lr.ph.us.peel.next
  %.sroa.074.3.us = phi ptr [ %i.eg, %.split7.i58.us ], [ %.sroa.074.2176.us, %.lr.ph.us.peel.next ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.ea, %.sroa.5.0.us
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.us.peel.next, !llvm.loop !3540

._crit_edge.us:                                   ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us, %bb.am, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us.peel, %bb.bj
  %.sroa.017.0.us313 = phi i32 [ 92, %bb.bj ], [ %i.dz, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us.peel ], [ 11, %bb.an ], [ 7, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us ], [ 92, %bb.am ], [ 8, %bb.at ], [ 27, %bb.as ], [ 12, %bb.ar ], [ 10, %bb.aq ], [ 13, %bb.ap ], [ 9, %bb.ao ], [ %i.dz, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us ] ; 2 uses
  %.sroa.16.1.lcssa.us = phi i32 [ %i.ch, %bb.bj ], [ -2, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us.peel ], [ -2, %bb.an ], [ -2, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us ], [ -2, %bb.am ], [ -2, %bb.at ], [ -2, %bb.as ], [ -2, %bb.ar ], [ -2, %bb.aq ], [ -2, %bb.ap ], [ -2, %bb.ao ], [ -2, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us ] ; 2 uses
  %.sroa.074.2.lcssa.us = phi ptr [ %i.cg, %bb.bj ], [ %i.cg, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us.peel ], [ %i.cg, %bb.an ], [ %i.cg, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us ], [ %i.cg, %bb.am ], [ %i.cg, %bb.at ], [ %i.cg, %bb.as ], [ %i.cg, %bb.ar ], [ %i.cg, %bb.aq ], [ %i.cg, %bb.ap ], [ %i.cg, %bb.ao ], [ %.sroa.074.3.us, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit62.us ] ; 2 uses
  %i.ei = load i64, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !3541, !noundef !13 ; 3 uses
  %i.ej = load i64, ptr %i.h, align 8, !range !14, !alias.scope !3541, !noundef !13
  %i.ek = icmp eq i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.bl, label %.backedge.us

bb.bl:                                            ; preds = %._crit_edge.us
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #37
          to label %.backedge.us unwind label %.loopexit.split-lp.loopexit.split.split.us

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us: ; preds = %bb.ak
  %i.el = load i64, ptr %i.h, align 8, !range !14, !alias.scope !3544, !noundef !13
  %i.em = icmp eq i64 %i.bt, %i.el
  br i1 %i.em, label %bb.bm, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit48.us

bb.bm:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #37
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit48.us unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit48.us: ; preds = %bb.bm, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.thread.us
  %i.en = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !alias.scope !3544, !nonnull !13, !noundef !13
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.en, i64 %i.bt
  store i32 92, ptr %i.eo, align 4
  %i.ep = add i64 %i.bt, 1                        ; 2 uses
  store i64 %i.ep, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !3544
  br label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.us

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.us: ; preds = %bb.ae, %bb.af, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit48.us
  %i.eq = phi i64 [ %i.ep, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit48.us ], [ %i.bt, %bb.af ], [ %i.bt, %bb.ae ] ; 2 uses
  %i.er = icmp eq ptr %i.bg, %i.bd
  br i1 %i.er, label %.thread, label %.lr.ph185.split.us.preheader

.backedge.us:                                     ; preds = %._crit_edge.us, %bb.bl, %bb.ai, %bb.aj
  %.sink403 = phi i64 [ %i.bt, %bb.ai ], [ %i.bt, %bb.aj ], [ %i.ei, %bb.bl ], [ %i.ei, %._crit_edge.us ] ; 2 uses
  %.sroa.017.0.us313.sink = phi i32 [ %.sroa.014.0104.us, %bb.ai ], [ %.sroa.014.0104.us, %bb.aj ], [ %.sroa.017.0.us313, %bb.bl ], [ %.sroa.017.0.us313, %._crit_edge.us ]
  %.sroa.16.0.be.us = phi i32 [ -2, %bb.ai ], [ -2, %bb.aj ], [ %.sroa.16.1.lcssa.us, %bb.bl ], [ %.sroa.16.1.lcssa.us, %._crit_edge.us ]
  %.sroa.074.0.be.us = phi ptr [ %.sroa.074.1103.us, %bb.ai ], [ %.sroa.074.1103.us, %bb.aj ], [ %.sroa.074.2.lcssa.us, %bb.bl ], [ %.sroa.074.2.lcssa.us, %._crit_edge.us ]
  %i.es = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !nonnull !13, !noundef !13
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %.sink403
  store i32 %.sroa.017.0.us313.sink, ptr %i.et, align 4
  %storemerge = add i64 %.sink403, 1              ; 2 uses
  store i64 %storemerge, ptr %.sroa.526.0..sroa_idx, align 8
  br label %bb.ae

.loopexit.split-lp.loopexit.split-lp.loopexit.split.us: ; preds = %bb.bm, %bb.ad
  %lpad.loopexit114.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split.split.us:       ; preds = %bb.bl, %bb.bi, %bb.aj
  %lpad.loopexit111.us195 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split.us:                               ; preds = %.sink.split.i.i.i.i.i.us
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.lr.ph185.split:                                  ; preds = %.lr.ph185
  br i1 %8, label %.lr.ph185.split.split.preheader, label %.split.us.us

.split.us.us:                                     ; preds = %.lr.ph185.split, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us.us
  %i.eu = phi i64 [ %i.fo, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us.us ], [ 0, %.lr.ph185.split ] ; 2 uses
  %.sroa.073.0183.us205 = phi ptr [ %i.ev, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us.us ], [ %i.bc, %.lr.ph185.split ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.073.0183.us205, i64 16 ; 2 uses
  %i.ew = load ptr, ptr %.sroa.073.0183.us205, align 8, !nonnull !13, !align !887, !noundef !13 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.073.0183.us205, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !noundef !13 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ey, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 %.idx
  %i.fa = icmp eq i64 %i.ey, 0
  br i1 %i.fa, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us.us, label %.lr.ph181.us

.lr.ph181.us:                                     ; preds = %.split.us.us, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit44.us.us
  %i.fb = phi i64 [ %i.fm, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit44.us.us ], [ %i.eu, %.split.us.us ] ; 3 uses
  %.sroa.074.0.us180.us = phi ptr [ %i.fg, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit44.us.us ], [ %i.ew, %.split.us.us ] ; 2 uses
  %i.fc = load i32, ptr %.sroa.074.0.us180.us, align 4, !noalias !3488, !noundef !13 ; 4 uses
  %i.fd = xor i32 %i.fc, 55296
  %i.fe = add i32 %i.fd, -1114112
  %i.ff = icmp ult i32 %i.fe, -1112064
  br i1 %i.ff, label %.split.i, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread99.us.us

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread99.us.us: ; preds = %.lr.ph181.us
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.074.0.us180.us, i64 4 ; 2 uses
  %i.fh = icmp ult i32 %i.fc, 1114112
  call void @llvm.assume(i1 %i.fh)
  %i.fi = load i64, ptr %i.h, align 8, !range !14, !alias.scope !3491, !noundef !13
  %i.fj = icmp eq i64 %i.fb, %i.fi
  br i1 %i.fj, label %bb.bn, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit44.us.us

bb.bn:                                            ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread99.us.us
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #37
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit44.us.us unwind label %.loopexit.split-lp.loopexit.split.us.split.us

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit44.us.us: ; preds = %bb.bn, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread99.us.us
  %i.fk = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !alias.scope !3491, !nonnull !13, !noundef !13
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fb
  store i32 %i.fc, ptr %i.fl, align 4
  %i.fm = add i64 %i.fb, 1                        ; 3 uses
  store i64 %i.fm, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !3491
  %i.fn = icmp eq ptr %i.fg, %i.ez
  br i1 %i.fn, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us.us, label %.lr.ph181.us

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us.us: ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit44.us.us, %.split.us.us
  %i.fo = phi i64 [ %i.eu, %.split.us.us ], [ %i.fm, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit44.us.us ] ; 2 uses
  %i.fp = icmp eq ptr %i.ev, %i.bd
  br i1 %i.fp, label %.thread, label %.split.us.us

.loopexit.split-lp.loopexit.split.us.split.us:    ; preds = %bb.bn
  %lpad.loopexit111.us.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bo:                                            ; preds = %bb.aa
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.15.1, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @529) #40
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split: ; preds = %bb.bt
  %lpad.loopexit114 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.split.i.invoke, %bb.bo, %bb.bu, %bb.bq, %.split201.us, %.split203.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split.us.split, %.loopexit.split-lp.loopexit.split.us.split.us, %.loopexit.split-lp.loopexit.split.split.us, %.loopexit.split-lp.loopexit.split-lp.loopexit.split, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split.us
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.us, %.loopexit.split.us ], [ %lpad.loopexit114.us, %.loopexit.split-lp.loopexit.split-lp.loopexit.split.us ], [ %lpad.loopexit111.us195, %.loopexit.split-lp.loopexit.split.split.us ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit114, %.loopexit.split-lp.loopexit.split-lp.loopexit.split ], [ %lpad.loopexit111.us, %.loopexit.split-lp.loopexit.split.us.split ], [ %lpad.loopexit111.us.us, %.loopexit.split-lp.loopexit.split.us.split.us ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #35
          to label %common.resume unwind label %bb.ca

.lr.ph185.split.split.preheader:                  ; preds = %.lr.ph185.split, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us
  %i.fq = phi i64 [ %i.gv, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us ], [ 0, %.lr.ph185.split ] ; 4 uses
  %.sroa.073.0183 = phi ptr [ %i.fr, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us ], [ %i.bc, %.lr.ph185.split ] ; 3 uses
  %.sroa.8.0182 = phi i64 [ %i.fs, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us ], [ 0, %.lr.ph185.split ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.073.0183, i64 16 ; 2 uses
  %i.fs = add nuw nsw i64 %.sroa.8.0182, 1
  %.not212 = icmp eq i64 %.sroa.8.0182, 0
  br i1 %.not212, label %.split.us, label %bb.bs

.thread:                                          ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.us, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us.us, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us, %bb.ab
  %i.ft = phi i64 [ %i.fo, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us.us ], [ %i.gv, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us ], [ 0, %bb.ab ], [ %i.eq, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.us ] ; 4 uses
  br i1 %6, label %bb.bp, label %thread-pre-split

thread-pre-split:                                 ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us, %.thread, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit
  %i.fu = phi i64 [ %i.gb, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit ], [ %i.ft, %.thread ], [ %i.bt, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionIBw_cEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB1h_8PeekableNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32E4peek0ECs8frGy5WneL6_4fish.exit.us ] ; 2 uses
  %i.fv = icmp ult i64 %i.fu, 2305843009213693952
  call void @llvm.assume(i1 %i.fv)
  %i.fw = icmp eq i64 %i.fu, 0
  br i1 %i.fw, label %bb.bv, label %bb.bu

bb.bp:                                            ; preds = %.thread
  %i.fx = load i64, ptr %i.h, align 8, !range !14, !alias.scope !3547, !noundef !13
  %i.fy = icmp eq i64 %i.ft, %i.fx
  br i1 %i.fy, label %bb.bq, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #37
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit: ; preds = %bb.bq, %bb.bp
  %i.fz = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !alias.scope !3547, !nonnull !13, !noundef !13
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.ft
  store i32 10, ptr %i.ga, align 4
  %i.gb = add i64 %i.ft, 1                        ; 2 uses
  store i64 %i.gb, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !3547
  br label %thread-pre-split

.split.us:                                        ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit40, %.lr.ph185.split.split.preheader
  %i.gc = phi i64 [ %i.hb, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit40 ], [ %i.fq, %.lr.ph185.split.split.preheader ] ; 2 uses
  %i.gd = load ptr, ptr %.sroa.073.0183, align 8, !nonnull !13, !align !887, !noundef !13 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.073.0183, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !noundef !13 ; 2 uses
  %.idx213 = shl nuw nsw i64 %i.gf, 2
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.idx213
  %i.gh = icmp eq i64 %i.gf, 0
  br i1 %i.gh, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us, label %.lr.ph181

.lr.ph181:                                        ; preds = %.split.us, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit44.us
  %i.gi = phi i64 [ %i.gt, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit44.us ], [ %i.gc, %.split.us ] ; 3 uses
  %.sroa.074.0.us180 = phi ptr [ %i.gn, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit44.us ], [ %i.gd, %.split.us ] ; 2 uses
  %i.gj = load i32, ptr %.sroa.074.0.us180, align 4, !noalias !3488, !noundef !13 ; 4 uses
  %i.gk = xor i32 %i.gj, 55296
  %i.gl = add i32 %i.gk, -1114112
  %i.gm = icmp ult i32 %i.gl, -1112064
  br i1 %i.gm, label %.split.i, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread99.us

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread99.us: ; preds = %.lr.ph181
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.074.0.us180, i64 4 ; 2 uses
  %i.go = icmp ult i32 %i.gj, 1114112
  call void @llvm.assume(i1 %i.go)
  %i.gp = load i64, ptr %i.h, align 8, !range !14, !alias.scope !3491, !noundef !13
  %i.gq = icmp eq i64 %i.gi, %i.gp
  br i1 %i.gq, label %bb.br, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit44.us

bb.br:                                            ; preds = %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread99.us
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #37
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit44.us unwind label %.loopexit.split-lp.loopexit.split.us.split

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit44.us: ; preds = %bb.br, %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread99.us
  %i.gr = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !alias.scope !3491, !nonnull !13, !noundef !13
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.gi
  store i32 %i.gj, ptr %i.gs, align 4
  %i.gt = add i64 %i.gi, 1                        ; 3 uses
  store i64 %i.gt, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !3491
  %i.gu = icmp eq ptr %i.gn, %i.gg
  br i1 %i.gu, label %_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us, label %.lr.ph181

_RNvXs5_NtNtCslLGyqsphxMB_10widestring6utfstr4iterNtB5_10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next.exit.thread.loopexit.split.us: ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit44.us, %.split.us
  %i.gv = phi i64 [ %i.gc, %.split.us ], [ %i.gt, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit44.us ] ; 2 uses
  %i.gw = icmp eq ptr %i.fr, %i.bd
  br i1 %i.gw, label %.thread, label %.lr.ph185.split.split.preheader

.loopexit.split-lp.loopexit.split.us.split:       ; preds = %bb.br
  %lpad.loopexit111.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.bs:                                            ; preds = %.lr.ph185.split.split.preheader
  %i.gx = load i64, ptr %i.h, align 8, !range !14, !alias.scope !3485, !noundef !13
  %i.gy = icmp eq i64 %i.fq, %i.gx
  br i1 %i.gy, label %bb.bt, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit40

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs4iCdMoxqDDc_12aho_corasick(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #37
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit40 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmE8push_mutCs8frGy5WneL6_4fish.exit40: ; preds = %bb.bt, %bb.bs
  %i.gz = load ptr, ptr %.sroa.425.0..sroa_idx, align 8, !alias.scope !3485, !nonnull !13, !noundef !13
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %i.fq
  store i32 32, ptr %i.ha, align 4
  %i.hb = add i64 %i.fq, 1                        ; 2 uses
  store i64 %i.hb, ptr %.sroa.526.0..sroa_idx, align 8, !alias.scope !3485
  br label %.split.us

.split.i:                                         ; preds = %bb.ag, %.lr.ph181.us, %.lr.ph181
  %.us-phi = phi i32 [ %i.gj, %.lr.ph181 ], [ %i.fc, %.lr.ph181.us ], [ %i.bv, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3550
  store i32 %.us-phi, ptr %i.f, align 4, !noalias !3550
  br label %.split.i.invoke

.split.i.invoke:                                  ; preds = %.split.i60, %.split.i.i.i.i.i.i.i, %.split.i.i.i, %.split.i
  %i.hc = phi ptr [ %i.f, %.split.i ], [ %i.e, %.split.i.i.i ], [ %i.b, %.split.i.i.i.i.i.i.i ], [ %i.a, %.split.i60 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 43, ptr noundef nonnull %i.hc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @797) #38
          to label %.split.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split.i.cont:                                    ; preds = %.split.i.invoke
  unreachable

.split.i.i.i:                                     ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3553
  store i32 %i.ch, ptr %i.e, align 4, !noalias !3553
  br label %.split.i.invoke

bb.bu:                                            ; preds = %thread-pre-split
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.he = load ptr, ptr %i.hd, align 8, !nonnull !13, !align !418, !noundef !13
  %i.hf = invoke noundef zeroext i1 @_RINvMsc_NtCs8frGy5WneL6_4fish2ioNtB6_12OutputStream6appendRNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.he, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h)
          to label %bb.bv unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.bv:                                            ; preds = %bb.bu, %thread-pre-split
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit: ; preds = %bb.bv
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.by

bb.by:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4echo13parse_options.exit.thread
  %.sroa.0.0.insert.insert = phi i64 [ %5, %_RNvNtNtCs8frGy5WneL6_4fish8builtins4echo13parse_options.exit.thread ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit ]
  ret i64 %.sroa.0.0.insert.insert

.split.i.i.i.i.i.i.i:                             ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3556
  store i32 %i.dc, ptr %i.b, align 4, !noalias !3556
  br label %.split.i.invoke

.split201.us:                                     ; preds = %bb.bf
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @114, ptr noundef nonnull inttoptr (i64 143 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #38
          to label %.noexc54.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc54.a:                                       ; preds = %.split201.us
  unreachable

.split203.us:                                     ; preds = %bb.bg
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #38
          to label %.noexc55 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc55:                                         ; preds = %.split203.us
  unreachable

.split.i60:                                       ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3559
  store i32 %i.ec, ptr %i.a, align 4, !noalias !3559
  br label %.split.i.invoke

bb.bz:                                            ; preds = %bb.bo
  unreachable

bb.ca:                                            ; preds = %.loopexit.split-lp
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins4jobs18builtin_jobs_print(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i8 noundef range(i8 0, 5) %1, i1 noundef zeroext %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [1 x i8], align 1                 ; 3 uses
  %i.j = alloca [1 x i8], align 1                 ; 3 uses
  %i.k = alloca [1 x i8], align 1                 ; 3 uses
  %i.l = alloca [1 x i8], align 1                 ; 3 uses
  %i.m = alloca [1 x i8], align 1                 ; 3 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 8 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 11 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 8 uses
  %i.w = alloca [24 x i8], align 8                ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 11 uses
  %i.y = alloca [32 x i8], align 8                ; 8 uses
  %i.z = alloca [16 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [24 x i8], align 8               ; 11 uses
  %i.ad = alloca [24 x i8], align 8               ; 9 uses
  %i.ae = alloca [24 x i8], align 8               ; 11 uses
  %i.af = alloca [24 x i8], align 8               ; 11 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 5 uses
  %i.ai = alloca [64 x i8], align 8               ; 11 uses
  %i.aj = alloca [16 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 11 uses
  %i.al = alloca [24 x i8], align 8               ; 11 uses
  %i.am = alloca [24 x i8], align 8               ; 11 uses
  %i.an = alloca [24 x i8], align 8               ; 11 uses
  %i.ao = alloca [24 x i8], align 8               ; 11 uses
  %i.ap = alloca [24 x i8], align 8               ; 48 uses
  %i.aq = alloca [24 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !noundef !13 ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %bb.b, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job5group.exit.i, !prof !420

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @284) #38
  unreachable

_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job5group.exit.i: ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 184
  %i.au = load atomic i32, ptr %i.at acquire, align 4
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.c, label %bb.h

bb.c:                                             ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job5group.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 188
  %i.ax = load i32, ptr %i.aw, align 4, !range !1026, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3562
  store i64 0, ptr %i.h, align 8, !noalias !3562
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3562
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3562
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 1610612768, ptr %i.ay, align 8, !noalias !3562
  store ptr %i.h, ptr %i.g, align 8, !noalias !3562
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @99, ptr %i.az, align 8, !noalias !3562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3565
  store i32 %i.ax, ptr %i.f, align 4, !noalias !3565
  %i.ba = invoke noundef zeroext i1 @_RNvXs9_NtNtNtCs3oUPovFnLWP_4core3fmt3num3implNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.e unwind label %bb.d, !noalias !3562

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #35
          to label %common.resume unwind label %bb.g, !noalias !3562

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3565
  br i1 %i.ba, label %bb.f, label %_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtCs8frGy5WneL6_4fish4proc3PidNtB5_12SpecToString14spec_to_stringBC_.exit, !prof !420

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @812, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @87, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @814) #38
          to label %.noexc.i unwind label %bb.d, !noalias !3562

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !noalias !3562
  unreachable

common.resume:                                    ; preds = %.body, %bb.gd, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.rk, %bb.gd ], [ %i.bb, %bb.d ], [ %.pn59, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtCs8frGy5WneL6_4fish4proc3PidNtB5_12SpecToString14spec_to_stringBC_.exit: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3562
  br label %bb.k

bb.h:                                             ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job5group.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, i64 noundef 1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.bd = load i64, ptr %i.n, align 8, !range !527, !noundef !13
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !528, !noundef !13 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  br i1 %i.be, label %bb.i, label %bb.j, !prof !420

bb.i:                                             ; preds = %bb.h
  %i.bi = load i64, ptr %i.bh, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.bg, i64 %i.bi) #40
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.bh, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.bk = icmp ne i64 %i.bg, 0
  tail call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i8 45, ptr %i.bj, align 1
  store i64 %i.bg, ptr %i.aq, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %i.bj, ptr %.sroa.427.0..sroa_idx, align 8
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 1, ptr %.sroa.628.0..sroa_idx, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvXsC_NtCs1xwejQucwHj_5alloc6stringNtNtCs8frGy5WneL6_4fish4proc3PidNtB5_12SpecToString14spec_to_stringBC_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store i64 0, ptr %i.ap, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 24 uses
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.533.0..sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 60 uses
  store i64 0, ptr %.sroa.640.0..sroa_idx, align 8
  switch i8 %1, label %default.unreachable432 [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
    i8 3, label %bb.o
    i8 4, label %bb.p
  ]

default.unreachable432:                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  br i1 %2, label %bb.t, label %bb.s

end_hunk_1
begin_hunk_2_@_RNvNtNtCs8frGy5WneL6_4fish8builtins6disown6disown:bb.a
  %i.g = alloca [72 x i8], align 8                ; 12 uses
  %i.h = alloca [8 x i8], align 8                 ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 10 uses
  %i.j = alloca [8 x i8], align 4                 ; 15 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs0_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_15HelpOnlyCmdOpts5parse(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load i8, ptr %i.l, align 8, !range !367, !noundef !13 ; 2 uses
  %i.n = icmp eq i8 %i.m, 2
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load i32, ptr %i.k, align 8, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.aw

bb.c:                                             ; preds = %bb.a
  %i.p = load i64, ptr %i.k, align 8, !noundef !13 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = trunc nuw i8 %i.m to i1
  %i.r = load ptr, ptr %2, align 8, !nonnull !13, !align !887, !noundef !13 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noundef !13 ; 5 uses
  br i1 %i.q, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @575) #38
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.u = icmp eq i64 %i.p, %3
  br i1 %i.u, label %bb.ab, label %bb.h

bb.g:                                             ; preds = %bb.d
  tail call void @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc18builtin_print_help(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.r, i64 noundef %i.t)
  br label %bb.aw

bb.h:                                             ; preds = %bb.f
  store i8 0, ptr %i.j, align 4
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %.sroa.413.0..sroa_idx, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.v = icmp ugt i64 %i.p, %3
  br i1 %i.v, label %bb.j, label %bb.i, !prof !420

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.p
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %3
  store ptr %i.w, ptr %i.e, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %1, ptr %i.z, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.r, ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.t, ptr %.sroa.517.0..sroa_idx, align 8
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.j, ptr %.sroa.618.0..sroa_idx, align 8
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %0, ptr %.sroa.719.0..sroa_idx, align 8
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecINtNtB6_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map9FilterMapINtNtNtB2q_5slice4iter4IterRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrENCNvNtNtB1j_8builtins6disown6disown0EE9from_iterB1j_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.sroa.024.0.copyload = load i8, ptr %i.j, align 4
  %i.aa = trunc nuw i8 %.sroa.024.0.copyload to i1
  br i1 %i.aa, label %bb.k, label %bb.n

bb.j:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %i.p, i64 noundef %3, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @576) #38
  unreachable

bb.k:                                             ; preds = %bb.i
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.627.0.copyload = load i32, ptr %.sroa.627.0..sroa_idx, align 4
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEEB1q_.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

common.resume:                                    ; preds = %bb.aa, %.body, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit, %bb.ao, %bb.ap, %bb.ay, %bb.ax, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.df, %bb.ap ], [ %.pn42, %.body ], [ %lpad.thr_comm, %bb.aa ], [ %.pn42, %bb.ax ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit ], [ %i.df, %bb.ao ], [ %.pn42, %bb.ay ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEEB1q_.exit: ; preds = %bb.k
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB14_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.aw

bb.n:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !13 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3869
  store ptr %i.a, ptr %i.b, align 8, !noalias !3869
  %i.ah = icmp samesign ult i64 %i.ag, 2
  br i1 %i.ah, label %bb.r, label %bb.o, !prof !419

bb.o:                                             ; preds = %bb.n
  %i.ai = icmp samesign ult i64 %i.ag, 21
  br i1 %i.ai, label %bb.q, label %bb.p, !prof !419

bb.p:                                             ; preds = %bb.o
  invoke void @_RINvNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable7ipnsortINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobENCINvMB6_SBT_20sort_unstable_by_keyNtNtB1s_9job_group10MaybeJobIdNCNvNtNtB1s_8builtins6disown6disowns_0E0EB1s_(ptr noalias nofree noundef nonnull align 8 %i.ae, i64 noundef range(i64 0, 1152921504606846976) %i.ag, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #37
          to label %bb.r unwind label %bb.aa

bb.q:                                             ; preds = %bb.o
  invoke void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobENCINvMB8_SB1m_20sort_unstable_by_keyNtNtB1V_9job_group10MaybeJobIdNCNvNtNtB1V_8builtins6disown6disowns_0E0EB1V_(ptr noalias nofree noundef nonnull align 8 %i.ae, i64 noundef range(i64 0, 1152921504606846976) %i.ag, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.r unwind label %bb.aa

bb.r:                                             ; preds = %bb.n, %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3869
  invoke void @_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE8dedup_byNCINvB2_12dedup_by_keyNCNvNtNtBX_8builtins6disown6disowns0_0NtNtBX_9job_group10MaybeJobIdE0EBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE12dedup_by_keyNCNvNtNtBX_8builtins6disown6disowns0_0NtNtBX_9job_group10MaybeJobIdEBX_.exit unwind label %bb.aa

_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE12dedup_by_keyNCNvNtNtBX_8builtins6disown6disowns0_0NtNtBX_9job_group10MaybeJobIdEBX_.exit: ; preds = %bb.r
  %i.aj = load ptr, ptr %i.ad, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.ak = load i64, ptr %i.f, align 8, !range !14, !noundef !13
  %i.al = load i64, ptr %i.af, align 8, !noundef !13 ; 3 uses
  %i.am = icmp ult i64 %i.al, 1152921504606846976
  call void @llvm.assume(i1 %i.am)
  %.idx = shl nuw nsw i64 %i.al, 3
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.aj, ptr %i.d, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr %i.aj, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.ak, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  store ptr %i.an, ptr %.sroa.631.0..sroa_idx, align 8
  %i.ao = icmp eq i64 %i.al, 0
  br i1 %i.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEEB1H_.exit50, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE12dedup_by_keyNCNvNtNtBX_8builtins6disown6disowns0_0NtNtBX_9job_group10MaybeJobIdEBX_.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.t

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit: ; preds = %bb.v, %bb.w, %bb.s
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.s ], [ %i.ba, %bb.w ], [ %i.ba, %bb.v ]
  invoke void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %common.resume unwind label %bb.z

bb.s:                                             ; preds = %bb.y
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit

bb.t:                                             ; preds = %.lr.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit53
  %i.ar = phi ptr [ %i.aj, %.lr.ph ], [ %i.bk, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit53 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3872)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %i.as, ptr %.sroa.429.0..sroa_idx, align 8, !alias.scope !3872
  %i.at = load ptr, ptr %i.ar, align 8, !noalias !3872, !nonnull !13, !noundef !13 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.at, ptr %i.c, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.val45 = load ptr, ptr %i.ap, align 8
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins6disown10disown_job(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.r, i64 noundef %i.t, ptr %.val45, ptr noundef nonnull align 8 %i.au)
          to label %bb.x unwind label %bb.v

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEEB1H_.exit50: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit53, %_RINvMs_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEE12dedup_by_keyNCNvNtNtBX_8builtins6disown6disowns0_0NtNtBX_9job_group10MaybeJobIdEBX_.exit
  call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.sroa.0.0.copyload.pre = load i8, ptr %i.j, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.as, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEEB1H_.exit50
  %.sroa.0.0.copyload = phi i8 [ %.sroa.0.0.copyload99, %bb.as ], [ %.sroa.0.0.copyload.pre, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEEB1H_.exit50 ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %.sroa.6.0.copyload = load i16, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.62.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %.sroa.62.0.copyload = load i32, ptr %.sroa.62.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.av = zext i16 %.sroa.6.0.copyload to i64
  %i.aw = shl nuw nsw i64 %i.av, 16
  %i.ax = zext i8 %.sroa.5.0.copyload to i64
  %i.ay = shl nuw nsw i64 %i.ax, 8
  %i.az = zext i8 %.sroa.0.0.copyload to i64
  br label %bb.aw

bb.v:                                             ; preds = %bb.t
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3875)
  call void @llvm.experimental.noalias.scope.decl(metadata !3878)
  %i.bb = load ptr, ptr %i.c, align 8, !alias.scope !3881, !nonnull !13, !noundef !13 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !3881, !noundef !13
  %i.bd = add i64 %i.bc, -1                       ; 2 uses
  store i64 %i.bd, ptr %i.bb, align 8, !noalias !3881
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.w, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit unwind label %bb.z

bb.x:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !3882)
  call void @llvm.experimental.noalias.scope.decl(metadata !3885)
  %i.bf = load ptr, ptr %i.c, align 8, !alias.scope !3888, !nonnull !13, !noundef !13 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !3888, !noundef !13
  %i.bh = add i64 %i.bg, -1                       ; 2 uses
  store i64 %i.bh, ptr %i.bf, align 8, !noalias !3888
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %bb.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit53

bb.y:                                             ; preds = %bb.x
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit53 unwind label %bb.s

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit53: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bj = load ptr, ptr %.sroa.631.0..sroa_idx, align 8, !alias.scope !3889, !nonnull !13, !noundef !13
  %i.bk = load ptr, ptr %.sroa.429.0..sroa_idx, align 8, !alias.scope !3889, !nonnull !13, !noundef !13 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.bj
  br i1 %i.bl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtBI_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEEB1H_.exit50, label %bb.t

bb.z:                                             ; preds = %bb.ay, %bb.ap, %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit, %bb.aa
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36
  unreachable

bb.aa:                                            ; preds = %bb.r, %bb.q, %bb.p
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEEB1q_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #35
          to label %common.resume unwind label %bb.z

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.au, %bb.am
  %.sroa.035.0 = phi i1 [ true, %bb.am ], [ true, %bb.au ], [ %.sroa.035.1.ph, %.loopexit.split-lp ], [ true, %.loopexit ]
  %.pn42 = phi { ptr, i32 } [ %i.da, %bb.am ], [ %i.ds, %bb.au ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ] ; 3 uses
  %i.bn = load ptr, ptr %i.i, align 8, !noundef !13 ; 3 uses
  %i.bo = icmp ne ptr %i.bn, null
  %or.cond = and i1 %.sroa.035.0, %i.bo
  br i1 %or.cond, label %bb.ax, label %common.resume

.loopexit:                                        ; preds = %bb.ag
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %._crit_edge.thread, %bb.ac, %bb.ah, %bb.ar
  %.sroa.035.1.ph = phi i1 [ true, %._crit_edge.thread ], [ true, %bb.ah ], [ true, %bb.ac ], [ false, %bb.ar ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr null, ptr %i.i, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !noundef !13 ; 2 uses
  %.idx92 = shl nuw nsw i64 %i.bs, 3
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx92
  %i.bu = icmp eq i64 %i.bs, 0
  br i1 %i.bu, label %._crit_edge.thread, label %.lr.ph91

.lr.ph91:                                         ; preds = %bb.ab, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.thread
  %.sroa.05.090 = phi ptr [ %i.bv, %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.thread ], [ %i.bq, %bb.ab ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.05.090, i64 8 ; 2 uses
  %i.bw = load ptr, ptr %.sroa.05.090, align 8, !nonnull !13, !noundef !13 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.by = load i64, ptr %i.bx, align 8, !noundef !13
  %i.bz = icmp ult i64 %i.by, 9223372036854775807
  br i1 %i.bz, label %bb.ad, label %bb.ac, !prof !419

bb.ac:                                            ; preds = %.lr.ph91
  invoke void @_RNvNtCs3oUPovFnLWP_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @283) #38
          to label %.noexc54 unwind label %.loopexit.split-lp

.noexc54:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %.lr.ph91
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.cb = load i8, ptr %i.ca, align 8, !range !92, !noundef !13
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %bb.ae, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.thread

bb.ae:                                            ; preds = %bb.ad
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !13 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.ah, label %.lr.ph120, !prof !420

.lr.ph120:                                        ; preds = %bb.ae
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %.idx121 = mul nuw nsw i64 %i.ce, 224
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx121
  br label %bb.ag

bb.af:                                            ; preds = %.noexc55
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cl, i64 224 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.ci
  br i1 %i.ck, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph120, %bb.af
  %i.cl = phi ptr [ %i.ch, %.lr.ph120 ], [ %i.cj, %bb.af ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 215
  %i.cn = invoke noundef zeroext i1 @_RNvMNtCs8frGy5WneL6_4fish13global_safetyNtB2_17RelaxedAtomicBool4load(ptr noundef nonnull %i.cm)
          to label %.noexc55 unwind label %.loopexit

.noexc55:                                         ; preds = %bb.ag
  br i1 %i.cn, label %bb.af, label %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit

bb.ah:                                            ; preds = %bb.ae
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @279, i64 noundef 46, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @280) #38
          to label %.noexc56 unwind label %.loopexit.split-lp

.noexc56:                                         ; preds = %bb.ah
  unreachable

_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.thread: ; preds = %bb.af, %bb.ad
  %i.co = icmp eq ptr %i.bv, %i.bt
  br i1 %i.co, label %._crit_edge, label %.lr.ph91

_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit: ; preds = %.noexc55
  %i.cp = load ptr, ptr %.sroa.05.090, align 8, !nonnull !13, !noundef !13 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !noundef !13 ; 2 uses
  %i.cr = icmp ne i64 %i.cq, 0
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = add i64 %i.cq, 1                        ; 2 uses
  store i64 %i.cs, ptr %i.cp, align 8
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %bb.ai, label %bb.aj, !prof !420

bb.ai:                                            ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit
  tail call void @llvm.trap()
  unreachable

bb.aj:                                            ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit
  %i.cu = load ptr, ptr %.sroa.05.090, align 8, !nonnull !13, !noundef !13 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3891)
  %i.cv = load ptr, ptr %i.i, align 8, !alias.scope !3891, !noundef !13 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %.thread84, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cx = load i64, ptr %i.cv, align 8, !noalias !3894, !noundef !13
  %i.cy = add i64 %i.cx, -1                       ; 2 uses
  store i64 %i.cy, ptr %i.cv, align 8, !noalias !3894
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %bb.al, label %.thread84

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #37
          to label %.thread84 unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.da = landingpad { ptr, i32 }
          cleanup
  store ptr %i.cu, ptr %i.i, align 8
  br label %.body

.thread84:                                        ; preds = %bb.al, %bb.aj, %bb.ak
  store ptr %i.cu, ptr %i.i, align 8
  br label %bb.an

._crit_edge:                                      ; preds = %_RNvMs7_NtCs8frGy5WneL6_4fish4procNtB5_3Job12is_completed.exit.thread
  %.pr.pre = load ptr, ptr %i.i, align 8          ; 2 uses
  %.not41 = icmp eq ptr %.pr.pre, null
  br i1 %.not41, label %._crit_edge.thread, label %bb.an

bb.an:                                            ; preds = %.thread84, %._crit_edge
  %i.db = phi ptr [ %i.cu, %.thread84 ], [ %.pr.pre, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.db, ptr %i.h, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val = load ptr, ptr %i.dd, align 8
  invoke fastcc void @_RNvNtNtCs8frGy5WneL6_4fish8builtins6disown10disown_job(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %i.r, i64 noundef %i.t, ptr %.val, ptr noundef nonnull align 8 %i.dc)
          to label %bb.aq unwind label %bb.ao

._crit_edge.thread:                               ; preds = %bb.ab, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.de = invoke { ptr, i64 } @_RNvMNtNtCs8frGy5WneL6_4fish12localization7gettextNtB2_17LocalizableString8localize(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @578)
          to label %bb.at unwind label %.loopexit.split-lp ; 2 uses

bb.ao:                                            ; preds = %bb.an
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3899)
  call void @llvm.experimental.noalias.scope.decl(metadata !3902)
  %i.dg = load ptr, ptr %i.h, align 8, !alias.scope !3905, !nonnull !13, !noundef !13 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !3905, !noundef !13
  %i.di = add i64 %i.dh, -1                       ; 2 uses
  store i64 %i.di, ptr %i.dg, align 8, !noalias !3905
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.ap, label %common.resume

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #37
          to label %common.resume unwind label %bb.z

bb.aq:                                            ; preds = %bb.an
  store i8 0, ptr %i.j, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !3906)
  call void @llvm.experimental.noalias.scope.decl(metadata !3909)
  %i.dk = load ptr, ptr %i.h, align 8, !alias.scope !3912, !nonnull !13, !noundef !13 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !3912, !noundef !13
  %i.dm = add i64 %i.dl, -1                       ; 2 uses
  store i64 %i.dm, ptr %i.dk, align 8, !noalias !3912
  %i.dn = icmp eq i64 %i.dm, 0
  br i1 %i.dn, label %bb.ar, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit61

bb.ar:                                            ; preds = %bb.aq
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #37
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit61 unwind label %.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit61: ; preds = %bb.aq, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.as

bb.as:                                            ; preds = %_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit61
  %.sroa.0.0.copyload99 = phi i8 [ 1, %_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish.exit ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEB1a_.exit61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.u

bb.at:                                            ; preds = %._crit_edge.thread
  %i.do = extractvalue { ptr, i64 } %i.de, 0
  %i.dp = extractvalue { ptr, i64 } %i.de, 1
  store i64 -1, ptr %i.g, align 8, !alias.scope !3913, !noalias !3917
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.do, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !3913, !noalias !3917
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.dp, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !3913, !noalias !3917
  %.sroa.4.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx65, align 8, !alias.scope !3913, !noalias !3917
  %.sroa.6.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.t, ptr %.sroa.6.0..sroa_idx66, align 8, !alias.scope !3913, !noalias !3917
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !3913, !noalias !3917
  %.sroa.868.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr null, ptr %.sroa.868.0..sroa_idx, align 8, !alias.scope !3913, !noalias !3917
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8, !alias.scope !3913, !noalias !3917
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3919)
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !alias.scope !3919, !noalias !3922, !nonnull !13, !align !418, !noundef !13
  invoke void @_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error8write_to(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dr)
          to label %_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish.exit unwind label %bb.au, !noalias !3919

bb.au:                                            ; preds = %bb.at
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared5error5ErrorEBJ_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.g) #35
          to label %.body unwind label %bb.av, !noalias !3919

bb.av:                                            ; preds = %bb.au
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #36, !noalias !3919
  unreachable

_RNvMNtNtNtCs8frGy5WneL6_4fish8builtins6shared5errorNtB2_5Error6finish.exit: ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 1, ptr %.sroa.411.0..sroa_idx, align 4
  br label %bb.as

bb.aw:                                            ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEEB1q_.exit, %bb.g, %bb.u
  %.sroa.62.0 = phi i32 [ %i.o, %bb.b ], [ undef, %bb.g ], [ %.sroa.62.0.copyload, %bb.u ], [ %.sroa.627.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEEB1q_.exit ]
  %.sroa.6.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.g ], [ %i.aw, %bb.u ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEEB1q_.exit ]
  %.sroa.5.0 = phi i64 [ 0, %bb.b ], [ 0, %bb.g ], [ %i.ay, %bb.u ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEEB1q_.exit ]
  %.sroa.0.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.g ], [ %i.az, %bb.u ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtBG_2rc2RcNtNtCs8frGy5WneL6_4fish4proc3JobEEEB1q_.exit ]
  %.sroa.62.0.insert.ext = zext i32 %.sroa.62.0 to i64
  %.sroa.62.0.insert.shift = shl nuw i64 %.sroa.62.0.insert.ext, 32
  %.sroa.6.0.insert.insert = or i64 %.sroa.62.0.insert.shift, %.sroa.6.0
  %.sroa.5.0.insert.insert = or i64 %.sroa.6.0.insert.insert, %.sroa.5.0
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %.sroa.0.0
  ret i64 %.sroa.0.0.insert.insert

bb.ax:                                            ; preds = %.body
  %i.du = load i64, ptr %i.bn, align 8, !noalias !3924, !noundef !13
  %i.dv = add i64 %i.du, -1                       ; 2 uses
  store i64 %i.dv, ptr %i.bn, align 8, !noalias !3924
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.ay, label %common.resume

bb.ay:                                            ; preds = %bb.ax
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcNtNtCs8frGy5WneL6_4fish4proc3JobE9drop_slowBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #37
          to label %common.resume unwind label %bb.z
}

; Function Attrs: nonlazybind uwtable
define i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins8continue8continue(ptr noalias nofree noundef align 8 dereferenceable(432) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @_RNvNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc22builtin_break_continue(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3)
  ret i64 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 0, -2147483648) i32 @_RNvNtNtCs8frGy5WneL6_4fish9fork_exec8postfork12execute_fork() unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @fork() #39        ; 2 uses
  %i.b = icmp sgt i32 %i.a, -1
  br i1 %i.b, label %bb.d, label %bb.c

bb.b:                                             ; preds = %bb.l, %bb.j, %bb.h, %bb.f, %bb.c
  %.sroa.01.1 = phi i32 [ %i.d, %bb.c ], [ %i.p, %bb.j ], [ %i.h, %bb.f ], [ %i.t, %bb.l ], [ %i.l, %bb.h ] ; 2 uses
  %cond = icmp eq i32 %.sroa.01.1, 12
  %i.c = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories5error, i64 40) monotonic, align 8
  %.not = icmp eq i8 %i.c, 0                      ; 2 uses
  br i1 %cond, label %bb.n, label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i32 @_RNvCshLzK7otsFCg_5errno5errno() ; 2 uses
  %i.e = icmp eq i32 %i.d, 11
  br i1 %i.e, label %bb.e, label %bb.b

bb.d:                                             ; preds = %bb.k, %bb.i, %bb.g, %bb.e, %bb.a
  %.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.f, %bb.e ], [ %i.j, %bb.g ], [ %i.n, %bb.i ], [ %i.r, %bb.k ]
  ret i32 %.lcssa

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions5sleep(i64 noundef 0, i32 noundef 1000000)
  %i.f = tail call noundef i32 @fork() #39        ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call noundef i32 @_RNvCshLzK7otsFCg_5errno5errno() ; 2 uses
  %i.i = icmp eq i32 %i.h, 11
  br i1 %i.i, label %bb.g, label %bb.b

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions5sleep(i64 noundef 0, i32 noundef 1000000)
  %i.j = tail call noundef i32 @fork() #39        ; 2 uses
  %i.k = icmp sgt i32 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call noundef i32 @_RNvCshLzK7otsFCg_5errno5errno() ; 2 uses
  %i.m = icmp eq i32 %i.l, 11
  br i1 %i.m, label %bb.i, label %bb.b

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions5sleep(i64 noundef 0, i32 noundef 1000000)
  %i.n = tail call noundef i32 @fork() #39        ; 2 uses
  %i.o = icmp sgt i32 %i.n, -1
  br i1 %i.o, label %bb.d, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = tail call noundef i32 @_RNvCshLzK7otsFCg_5errno5errno() ; 2 uses
  %i.q = icmp eq i32 %i.p, 11
  br i1 %i.q, label %bb.k, label %bb.b

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions5sleep(i64 noundef 0, i32 noundef 1000000)
  %i.r = tail call noundef i32 @fork() #39        ; 2 uses
  %i.s = icmp sgt i32 %i.r, -1
  br i1 %i.s, label %bb.d, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = tail call noundef i32 @_RNvCshLzK7otsFCg_5errno5errno() ; 2 uses
  %i.u = icmp eq i32 %i.t, 11
  br i1 %i.u, label %.thread, label %bb.b

bb.m:                                             ; preds = %bb.b
  br i1 %.not, label %bb.p, label %bb.r

.thread:                                          ; preds = %bb.l
  %i.v = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories5error, i64 40) monotonic, align 8
  %.not7 = icmp eq i8 %i.v, 0
  br i1 %.not7, label %bb.p, label %bb.o

bb.n:                                             ; preds = %bb.b
  br i1 %.not, label %bb.p, label %bb.q

bb.o:                                             ; preds = %.thread
  %i.w = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4 ; 4 uses
  tail call void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeReEB6_(i32 noundef %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @579, i64 noundef 5)
  tail call void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeReEB6_(i32 noundef %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @580, i64 noundef 2)
  tail call void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeReEB6_(i32 noundef %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @581, i64 noundef 55)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.q, %bb.r
  %.sink = phi i32 [ %i.y, %bb.r ], [ %i.x, %bb.q ], [ %i.w, %bb.o ]
  tail call void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeReEB6_(i32 noundef %.sink, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 1)
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.m, %bb.n, %.thread
  tail call void @_RNvCs5UXtnEuoeIl_11fish_common24exit_without_destructors(i32 noundef 1) #40
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.x = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4 ; 4 uses
  tail call void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeReEB6_(i32 noundef %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @579, i64 noundef 5)
  tail call void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeReEB6_(i32 noundef %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @580, i64 noundef 2)
  tail call void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeReEB6_(i32 noundef %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @582, i64 noundef 20)
  br label %.sink.split

bb.r:                                             ; preds = %bb.m
  %i.y = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4 ; 5 uses
  tail call void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeReEB6_(i32 noundef %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @579, i64 noundef 5)
  tail call void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeReEB6_(i32 noundef %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @580, i64 noundef 2)
  tail call void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeReEB6_(i32 noundef %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @583, i64 noundef 26)
  tail call void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safelEB6_(i32 noundef %i.y, i32 noundef %.sroa.01.1)
  br label %.sink.split
}

; Function Attrs: nonlazybind uwtable
define noundef range(i32 5, 4) i32 @_RNvNtNtCs8frGy5WneL6_4fish9fork_exec8postfork15execute_setpgid(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 8 uses
  %i.b = tail call noundef i32 @setpgid(i32 noundef %0, i32 noundef %1) #39
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  br i1 %2, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.e
  %.sroa.03.05.us = phi i32 [ %i.h, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = tail call noundef i32 @_RNvCshLzK7otsFCg_5errno5errno() ; 4 uses
  store i32 %i.d, ptr %i.a, align 4
  %i.e = icmp eq i32 %i.d, 4
  br i1 %i.e, label %.split.us, label %bb.b, !prof !420

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.f = icmp eq i32 %i.d, 1
  %i.g = icmp samesign ult i32 %.sroa.03.05.us, 100
  %or.cond.us = select i1 %i.f, i1 %i.g, i1 false
  br i1 %or.cond.us, label %bb.c, label %.split7.us

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw nsw i32 %.sroa.03.05.us, 1
  %i.i = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs8frGy5WneL6_4fish4flog10categories11proc_pgroup, i64 40) monotonic, align 8
  %.not.us = icmp eq i8 %i.i, 0
  br i1 %.not.us, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load atomic i32, ptr @_RNvNtCs8frGy5WneL6_4fish4flog7FLOG_FD monotonic, align 4 ; 4 uses
  tail call void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeReEB6_(i32 noundef %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @587, i64 noundef 11)
  tail call void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeReEB6_(i32 noundef %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @580, i64 noundef 2)
  tail call void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeReEB6_(i32 noundef %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @588, i64 noundef 35)
  tail call void @_RINvNtNtCs8frGy5WneL6_4fish9fork_exec9flog_safe20flog_impl_async_safeReEB6_(i32 noundef %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = tail call noundef i32 @setpgid(i32 noundef %0, i32 noundef %1) #39
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.loopexit, label %.lr.ph.split.us

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %.sroa.03.05 = phi i32 [ %i.p, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = tail call noundef i32 @_RNvCshLzK7otsFCg_5errno5errno() ; 4 uses
  store i32 %i.m, ptr %i.a, align 4
  switch i32 %i.m, label %bb.f [
    i32 4, label %.split.us
    i32 13, label %.split7.us
  ], !prof !3929

.loopexit:                                        ; preds = %bb.e, %bb.h, %bb.a, %.split7.us
  %.sroa.0.0 = phi i32 [ %.us-phi, %.split7.us ], [ 0, %bb.h ], [ 0, %bb.a ], [ 0, %bb.e ]
  ret i32 %.sroa.0.0

.split.us:                                        ; preds = %.lr.ph.split.us, %.lr.ph.split
  call void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedllECsaL1QbXo9JQH_3std(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) @584, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @586) #38
  unreachable

bb.f:                                             ; preds = %.lr.ph.split
  %i.n = icmp eq i32 %i.m, 1
  %i.o = icmp samesign ult i32 %.sroa.03.05, 100
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.g, label %.split7.us
end_hunk_2
