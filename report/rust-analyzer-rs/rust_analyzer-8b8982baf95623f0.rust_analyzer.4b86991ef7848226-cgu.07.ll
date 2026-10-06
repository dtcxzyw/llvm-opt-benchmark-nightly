Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.07?download=true
inline.NumInlined: 3983
inline.NumDeleted: 1469
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RNvMs2_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_4Node2go:bb.a
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %i.k = icmp eq i64 %i.h, %i.j
  %i.l = icmp ugt i64 %i.h, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load i32, ptr %i.m, align 8, !range !48  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i32, ptr %i.o, align 8, !range !48
  %i.q = icmp samesign ugt i32 %i.n, %i.p
  %.sroa.04.0 = select i1 %i.k, i1 %i.q, i1 %i.l
  %i.r = load i64, ptr %2, align 8
  %i.s = icmp ult i64 %1, %i.r
  %or.cond = select i1 %.sroa.04.0, i1 %i.s, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.h, ptr %i.f, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.n, ptr %i.t, align 8
  %i.u = shl i64 %1, 1                            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.v = icmp ugt i64 %i.u, 65535
  br i1 %i.v, label %bb.e, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = trunc nuw i64 %i.u to i16
  store ptr @180, ptr %i.d, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.410.0..sroa_idx, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr null, ptr %i.y, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i16 %i.x, ptr %.sroa.415.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.f, ptr %i.z, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXs4_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_2msNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.420.0..sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.w, ptr %i.aa, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs6u1mgJOKDyY_13rust_analyzer, ptr %.sroa.424.0..sroa_idx, align 8
  %i.ab = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @182, ptr noundef nonnull @181, ptr noundef nonnull %i.d)
          to label %bb.g unwind label %.loopexit.split-lp ; 0 uses

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @186, ptr noundef nonnull inttoptr (i64 65 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @188) #45
          to label %bb.s unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp:                               ; preds = %bb.e, %bb.d, %bb.h, %bb.l, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #43
          to label %common.resume unwind label %bb.t

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 2 uses
  %i.ae = icmp sgt i64 %i.ad, -1
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %i.ad, 0
  br i1 %i.af, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.439.0..sroa_idx, align 8
  %i.ag = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @182, ptr noundef nonnull @183, ptr noundef nonnull %i.c)
          to label %bb.j unwind label %.loopexit.split-lp ; 0 uses

bb.i:                                             ; preds = %bb.j, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !noundef !4
  %i.aj = icmp ugt i32 %i.ai, 1
  br i1 %i.aj, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.ah, ptr %i.b, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs8_NtNtNtCshzWfHUSfYae_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.455.0..sroa_idx, align 8
  %i.ak = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @182, ptr noundef nonnull @184, ptr noundef nonnull %i.b)
          to label %bb.m unwind label %.loopexit.split-lp ; 0 uses

bb.l:                                             ; preds = %bb.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.471.0..sroa_idx, align 8
  invoke void @_RNvNtNtCscAsMj0W7j8b_3std2io5stdio7__eprint(ptr noundef nonnull @185, ptr noundef nonnull %i.a)
          to label %bb.n unwind label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ao, 88
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %.idx
  %i.aq = icmp eq i64 %i.ao, 0
  br i1 %i.aq, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.ar = add nuw i64 %1, 1
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %bb.r
  %.sroa.0.076 = phi ptr [ %i.am, %.lr.ph ], [ %i.au, %bb.r ] ; 2 uses
  invoke fastcc void @_RNvMs2_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_4Node2go(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %.sroa.0.076, i64 noundef %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.r unwind label %.loopexit

._crit_edge:                                      ; preds = %bb.r, %bb.n
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.p ], [ %lpad.phi, %bb.f ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %._crit_edge
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.b

bb.r:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.076, i64 88 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ap
  br i1 %i.av, label %._crit_edge, label %bb.o

bb.s:                                             ; preds = %bb.e
  unreachable

bb.t:                                             ; preds = %bb.f
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_4Node5print(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  tail call fastcc void @_RNvMs2_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_4Node2go(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_4Node9aggregate(ptr noalias nofree noundef align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [88 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [88 x i8], align 8                ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !4 ; 8 uses
  %i.i = icmp ult i64 %i.h, 104811045873349726
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4345
  store ptr %i.a, ptr %i.b, align 8, !noalias !4346
  %i.m = icmp eq i64 %i.h, 1
  br i1 %i.m, label %_RINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4Node11sort_by_keyReNCNvMs2_By_Bw_9aggregate0EBC_.exit, label %bb.c, !prof !20

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i64 %i.h, 21
  br i1 %i.n, label %bb.e, label %bb.d, !prof !20

bb.d:                                             ; preds = %bb.c
  call void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6stable14driftsort_mainNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSBZ_11sort_by_keyReNCNvMs2_B11_BZ_9aggregate0E0INtNtB1Z_3vec3VecBZ_EEB15_(ptr noalias nofree noundef nonnull align 8 %i.l, i64 noundef range(i64 1, 104811045873349726) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #46
  br label %.lr.ph

bb.e:                                             ; preds = %bb.c
  call void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeNCINvMNtCsbSS6DM8SDEO_5alloc5sliceSB1m_11sort_by_keyReNCNvMs2_B1o_B1m_9aggregate0E0EB1s_(ptr noalias nofree noundef nonnull align 8 %i.l, i64 noundef range(i64 1, 104811045873349726) %i.h, i64 noundef 1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %.lr.ph

_RINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4Node11sort_by_keyReNCNvMs2_By_Bw_9aggregate0EBC_.exit: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4345
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4345
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  br label %bb.f

._crit_edge.loopexit:                             ; preds = %bb.o
  %i.x = add nuw i64 %.sroa.0.1, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %_RINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4Node11sort_by_keyReNCNvMs2_By_Bw_9aggregate0EBC_.exit, %._crit_edge.loopexit
  %.sroa.0.0.lcssa = phi i64 [ 1, %_RINvMNtCsbSS6DM8SDEO_5alloc5sliceSNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4Node11sort_by_keyReNCNvMs2_By_Bw_9aggregate0EBC_.exit ], [ %i.x, %._crit_edge.loopexit ]
  call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeE8truncateBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %.sroa.0.0.lcssa)
  %i.y = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.z = load i64, ptr %i.g, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.z, 88
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx
  %i.ab = icmp eq i64 %i.z, 0
  br i1 %i.ab, label %.loopexit, label %.lr.ph95

bb.f:                                             ; preds = %.lr.ph, %bb.o
  %1 = phi i64 [ %i.h, %.lr.ph ], [ %2, %bb.o ]   ; 4 uses
  %i.ac = phi ptr [ %i.l, %.lr.ph ], [ %i.aw, %bb.o ] ; 4 uses
  %.sroa.0.092 = phi i64 [ 0, %.lr.ph ], [ %.sroa.0.1, %bb.o ] ; 9 uses
  %.sroa.012.091 = phi i64 [ 1, %.lr.ph ], [ %i.ad, %bb.o ] ; 5 uses
  %i.ad = add nuw nsw i64 %.sroa.012.091, 1       ; 2 uses
  %i.ae = icmp ult i64 %.sroa.0.092, %1
  br i1 %i.ae, label %bb.g, label %bb.h

.lr.ph95:                                         ; preds = %._crit_edge, %.lr.ph95
  %.sroa.09.093 = phi ptr [ %i.af, %.lr.ph95 ], [ %i.y, %._crit_edge ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.09.093, i64 88 ; 2 uses
  call void @_RNvMs2_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_4Node9aggregate(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %.sroa.09.093)
  %i.ag = icmp eq ptr %i.af, %i.aa
  br i1 %i.ag, label %.loopexit, label %.lr.ph95

.loopexit:                                        ; preds = %.lr.ph95, %._crit_edge, %bb.a
  ret void

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp ult i64 %.sroa.012.091, %1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.092, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189) #48
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw [88 x i8], ptr %i.ac, i64 %.sroa.0.092 ; 2 uses
  %i.aj = getelementptr inbounds nuw [88 x i8], ptr %i.ac, i64 %.sroa.012.091 ; 11 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.al = load i64, ptr %i.ak, align 8, !noundef !4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !4
  %i.ao = icmp eq i64 %i.al, %i.an
  br i1 %i.ao, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.g
  call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.012.091, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190) #48
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 64 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !4, !noundef !4
  %bcmp = call i32 @bcmp(ptr nonnull %i.as, ptr nonnull %i.aq, i64 %i.al)
  %i.at = icmp eq i32 %bcmp, 0
  br i1 %i.at, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k
  %.not.not = icmp ult i64 %.sroa.0.092, %.sroa.012.091
  br i1 %.not.not, label %bb.n, label %bb.m, !prof !20

bb.m:                                             ; preds = %bb.l
  call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @191, i64 noundef 26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #48
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.au = add nuw nsw i64 %.sroa.0.092, 1         ; 2 uses
  %i.av = getelementptr inbounds nuw [88 x i8], ptr %i.ac, i64 %i.au ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.c, ptr noundef nonnull align 8 dereferenceable(88) %i.av, i64 88, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.av, ptr noundef nonnull align 8 dereferenceable(88) %i.aj, i64 88, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aj, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre = load i64, ptr %i.g, align 8
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit, %bb.n
  %2 = phi i64 [ %i.ax, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit ], [ %.pre, %bb.n ]
  %i.aw = phi ptr [ %i.az, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit ], [ %i.ac, %bb.n ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.092, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit ], [ %i.au, %bb.n ] ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.h
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.f

bb.p:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.aj, i64 88, i1 false)
  store i64 0, ptr %i.aj, align 8
  %.sroa.014.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.014.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.014.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.014.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.014.sroa.0.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.014.sroa.5.0..sroa_idx, align 8
  %.sroa.014.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.014.sroa.6.0..sroa_idx, i8 0, i64 20, i1 false)
  store ptr inttoptr (i64 1 to ptr), ptr %i.ap, align 8
  store i64 0, ptr %i.am, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 8
  %i.ax = load i64, ptr %i.g, align 8, !noundef !4 ; 3 uses
  %i.ay = icmp ult i64 %.sroa.0.092, %i.ax
  br i1 %i.ay, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.az = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = getelementptr inbounds nuw [88 x i8], ptr %i.az, i64 %.sroa.0.092 ; 4 uses
  %i.bb = load i64, ptr %i.o, align 8, !noundef !4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 48 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !4 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 56 ; 2 uses
  %i.bf = add i64 %i.bd, %i.bb                    ; 4 uses
  %i.bg = icmp ult i64 %i.bf, %i.bd
  br i1 %i.bg, label %bb.x, label %bb.r, !prof !8

bb.r:                                             ; preds = %bb.q
  %i.bh = load i32, ptr %i.be, align 8, !range !48, !noundef !4
  %i.bi = load i32, ptr %i.p, align 8, !range !48, !noundef !4
  %i.bj = add nuw nsw i32 %i.bi, %i.bh            ; 3 uses
  %i.bk = icmp samesign ugt i32 %i.bj, 999999999
  br i1 %i.bk, label %bb.s, label %bb.y

bb.s:                                             ; preds = %bb.r
  %i.bl = icmp eq i64 %i.bf, -1
  br i1 %i.bl, label %bb.x, label %bb.t, !prof !8

bb.t:                                             ; preds = %bb.s
  %i.bm = add nuw i64 %i.bf, 1
  %i.bn = add nsw i32 %i.bj, -1000000000
  br label %bb.y

bb.u:                                             ; preds = %bb.p
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.092, i64 noundef %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @193) #45
          to label %bb.w unwind label %.loopexit.split-lp

.loopexit46:                                      ; preds = %bb.y
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.u, %bb.x
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp, %.loopexit46
  %.sroa.011.0 = phi i1 [ false, %.loopexit46 ], [ true, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit46 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e) #43
          to label %bb.ad unwind label %bb.ac

bb.w:                                             ; preds = %bb.x, %bb.u
  unreachable

bb.x:                                             ; preds = %bb.s, %bb.q
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @195) #45
          to label %bb.w unwind label %.loopexit.split-lp

bb.y:                                             ; preds = %bb.r, %bb.t
  %.sroa.4.0.i = phi i32 [ %i.bn, %bb.t ], [ %i.bj, %bb.r ]
  %.sroa.0.0.i = phi i64 [ %i.bm, %bb.t ], [ %i.bf, %bb.r ]
  store i64 %.sroa.0.0.i, ptr %i.bc, align 8
  store i32 %.sroa.4.0.i, ptr %i.be, align 8
  %i.bo = load i32, ptr %i.q, align 8, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 80 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !noundef !4
  %i.br = add i32 %i.bq, %i.bo
  store i32 %i.br, ptr %i.bp, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bt = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.bu = load i64, ptr %i.r, align 8, !range !19, !noundef !4
  %i.bv = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bw = icmp ult i64 %i.bv, 104811045873349726
  call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [88 x i8], ptr %i.bt, i64 %i.bv
  store ptr %i.bt, ptr %i.d, align 8
  store i64 %i.bu, ptr %i.u, align 8
  store ptr %i.bt, ptr %i.v, align 8
  store ptr %i.bx, ptr %i.w, align 8
  invoke void @_RNvXs0_NtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB7_3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendB10_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.z unwind label %.loopexit46

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

common.resume:                                    ; preds = %bb.ad, %bb.ae, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %i.by, %bb.aa ], [ %lpad.phi, %bb.ae ], [ %lpad.phi, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.z
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.o

bb.ac:                                            ; preds = %bb.ae, %bb.v
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #44
  unreachable

bb.ad:                                            ; preds = %bb.v
  br i1 %.sroa.011.0, label %bb.ae, label %common.resume

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.r) #43
          to label %common.resume unwind label %bb.ac
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCsbSS6DM8SDEO_5alloc3vec6spliceINtNtB7_5drain5DrainNtNtB9_6string6StringE9move_tailCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !range !19, !noundef !4
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = add i64 %i.d, %1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.d
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.k
  %i.p = mul nuw nsw i64 %i.f, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr nonnull align 8 %i.n, i64 %i.p, i1 false)
  store i64 %i.k, ptr %i.c, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.g, i64 noundef %1, i64 noundef 8, i64 noundef 24)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtCsbSS6DM8SDEO_5alloc3vec6spliceINtNtB7_5drain5DrainhE9move_tailCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.g = add i64 %i.f, %i.d                       ; 2 uses
  %i.h = load i64, ptr %i.b, align 8, !range !19, !noundef !4
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ugt i64 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.k = add i64 %i.d, %1                         ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %i.n, i64 %i.f, i1 false)
  store i64 %i.k, ptr %i.c, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef %i.g, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs3_NtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprofNtB5_11WriteFilter9from_spec(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 14 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [1 x i8], align 1                 ; 3 uses
  %i.d = alloca [1 x i8], align 1                 ; 3 uses
  %.sroa.330 = alloca [24 x i8], align 8          ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.e = phi i64 [ %2, %bb.a ], [ %i.i, %bb.c ]
  %i.f = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr7memrchr(i8 noundef 62, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %i.e), !noalias !4374 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %.loopexit153

end_hunk_0
